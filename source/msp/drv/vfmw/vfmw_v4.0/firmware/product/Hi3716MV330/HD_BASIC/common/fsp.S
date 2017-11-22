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
	mvn	ip, #0	@ LeastTick.583,
	mov	r2, r5	@ i, LeastFsID
	bne	.L6	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #52	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.583
	mov	ip, r3	@ LeastTick.583, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.583
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.583
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
	cmp	r3, ip	@ LeastTick, LeastTick.583
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.583
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
	cmpls	r0, #0	@, InstID,
	beq	.L24	@,
.L21:
	mov	r0, #0	@ pstLogicFs,
	bx	lr	@
.L24:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34814, s_pFspInst
	cmp	r3, #0	@ D.34814,
	beq	.L21	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ pstLogicFs, tmp148, LogicFrameID, D.34814
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
	cmpls	r0, #0	@, InstID,
	beq	.L29	@,
.L26:
	mov	r0, #0	@ D.34837,
	bx	lr	@
.L29:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34832, s_pFspInst
	cmp	r3, #0	@ D.34832,
	beq	.L26	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ D.34837, tmp148, LogicFrameID, D.34832
	add	r0, r0, #104	@ D.34837, D.34837,
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
	cmpls	r0, #0	@, InstID,
	beq	.L34	@,
.L31:
	mov	r0, #0	@ D.34855,
	bx	lr	@
.L34:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34850, s_pFspInst
	cmp	r3, #0	@ D.34850,
	beq	.L31	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.34850
	ldr	r0, [r1, #508]	@ D.34855, <variable>.pstDispOutFs
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
	cmpls	r0, #0	@, InstID,
	bne	.L36	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34868, s_pFspInst
	cmp	r3, #0	@ D.34868,
	beq	.L36	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.34868
	ldr	r0, [r1, #516]	@ D.34873, <variable>.PmvAddr
	bx	lr	@
.L36:
	mov	r0, #0	@ D.34873,
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
	add	r1, r2, #27136	@ ivtmp.709, pstInst,
	add	r1, r1, #177	@ ivtmp.709, ivtmp.709,
	b	.L42	@
.L50:
	ldrb	ip, [r1, #-432]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #864	@ ivtmp.709, ivtmp.709,
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L57	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.35102, s_pFspInst
	cmp	r3, #0	@ D.35102,
	beq	.L58	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@, D.35100,
	mvnne	r0, #0	@, D.35100,
	ldmfd	sp!, {r3, pc}	@
.L57:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3293	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35100,
	ldmfd	sp!, {r3, pc}	@
.L58:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #3294	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35100,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	sl, r0, #0	@ InstID, InstID
	bne	.L83	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp151,
	movt	r3, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r5, [r3, #0]	@ D.35002, s_pFspInst
	cmp	r5, #0	@ D.35002,
	beq	.L84	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, <variable>.eFspInstState
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC5	@,
	mov	r4, sl	@ ivtmp.776, InstID
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #60]	@, <variable>.stInstCfg.s32DispLoopEnable
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC6	@,
	mov	r8, r5	@ ivtmp.780, D.35002
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #61]	@, <variable>.stInstCfg.s32TfEnable
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC7	@,
	mov	r6, r5	@ ivtmp.808, D.35002
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #62]	@, <variable>.stInstCfg.s32RprEnable
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC8	@,
	mov	r7, #1	@ ivtmp.777,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #72]	@, <variable>.stInstCfg.s32DecFsWidth
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #76]	@, <variable>.stInstCfg.s32DecFsHeight
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #88]	@, <variable>.stInstCfg.s32DispFsWidth
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #92]	@, <variable>.stInstCfg.s32DispFsHeight
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #65]	@, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #66]	@, <variable>.stInstCfg.s32ExpectedTfFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #67]	@, <variable>.stInstCfg.s32ExpectedDispFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #68]	@, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@, <variable>.s32DecFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #11]	@, <variable>.s32DispFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #12]	@, <variable>.s32TfFsNum
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@, InstID
	ldrsb	r3, [r5, #13]	@, <variable>.s32PmvNum
	movw	r1, #:lower16:.LC4	@,
	movw	r2, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC4	@,
	movt	r2, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r0, sl	@, InstID
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	b	.L62	@
.L87:
	ands	r0, r4, #7	@ tmp188, ivtmp.776,
	beq	.L85	@,
	ldrsb	r2, [r6, #96]	@, <variable>.s32IsRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #97]	@, <variable>.s32DispState
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bl	dprint_vfmw	@
	cmp	r7, #63	@ ivtmp.777,
	bgt	.L86	@,
.L65:
	add	r4, r4, #1	@ ivtmp.776, ivtmp.776,
	add	r7, r7, #1	@ ivtmp.777, ivtmp.777,
	add	r6, r6, #432	@ ivtmp.808, ivtmp.808,
.L62:
	cmp	r4, #0	@ ivtmp.776,
	movw	r1, #:lower16:.LC22	@,
	mov	r0, r4	@, ivtmp.776
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
	cmp	r7, #63	@ ivtmp.777,
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
	mla	lr, r6, r4, r5	@ tmp199, tmp242, i, D.35002
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
	movgt	r4, #0	@ i.799,
	movgt	r6, #52	@ tmp238,
	ble	.L70	@,
.L82:
	mla	lr, r6, r4, r5	@ tmp216, tmp238, i.799, D.35002
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r4, r4, #1	@ i.799, i.799,
	add	ip, lr, #30976	@ tmp217, tmp216,
	add	r2, ip, #144	@ tmp217, tmp217,
	ldrsb	r3, [r2, #6]	@, <variable>.DispState
	ldrsb	r2, [r2, #4]	@, <variable>.IsDecRef
	bl	dprint_vfmw	@
	ldrsb	r0, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r0, r4	@ <variable>.s32DispFsNum, i.799
	ble	.L70	@,
	ands	r0, r4, #7	@ tmp211, i.799,
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
	movgt	r4, #0	@ i.803,
	ble	.L74	@,
.L75:
	ldrsb	r2, [r8, #14]	@, <variable>.IsPmvInUse
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	add	r4, r4, #1	@ i.803, i.803,
	add	r8, r8, #1	@ ivtmp.780, ivtmp.780,
	cmp	r3, r4	@ <variable>.s32PmvNum, i.803
	ble	.L74	@,
	ands	r0, r4, #15	@ tmp228, i.803,
	bne	.L75	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	b	.L75	@
.L74:
	movw	r1, #:lower16:.LC28	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC28	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L83:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #3036	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L84:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #3037	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L100	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp142,
	movt	r2, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r2, [r2, #0]	@ D.34969, s_pFspInst
	cmp	r2, #0	@ D.34969,
	movne	r0, r3	@ i, InstID
	beq	.L101	@,
.L93:
	ldr	r3, [r2, #504]	@ D.34973, <variable>.pstDecodeFs
	add	ip, r2, #432	@ tmp148, ivtmp.842,
	cmp	r3, #0	@ D.34973,
	beq	.L92	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L92:
	ldr	r3, [ip, #504]	@ D.34973, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.34973,
	mov	r2, r0	@ tmp147, i
	beq	.L96	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L96:
	add	r0, r2, #1	@ i, tmp147,
	add	r2, ip, #432	@ ivtmp.842, tmp148,
	cmp	r0, #64	@ i,
	bne	.L93	@,
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
.L101:
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
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L111	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L112	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L113	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [ip, #0]	@ D.34923, s_pFspInst
	cmp	ip, #0	@ D.34923,
	beq	.L114	@,
	ldrsb	r0, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r0, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	bxle	lr	@
	mov	r1, r3	@ i, ivtmp.872
.L108:
	add	r0, ip, r3	@ tmp151, D.34923, ivtmp.872
	add	r1, r1, #1	@ i, i,
	add	r0, r0, #34560	@ tmp152, tmp151,
	ldr	r0, [r0, #0]	@ tmp153, <variable>.PmvAddr
	str	r0, [r2, r3]	@ tmp153,* ivtmp.872
	add	r3, r3, #4	@ ivtmp.872, ivtmp.872,
	ldrsb	r0, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r1	@ <variable>.s32PmvNum, i
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
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC29	@,
	movw	r2, #2964	@,
	b	dprint_vfmw	@
.L113:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC30	@,
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
	subs	r3, r0, #0	@ InstID, InstID
	str	r4, [sp, #-4]!	@,
	.save {r4}
	bne	.L124	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L125	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L126	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp154,
	movt	ip, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r4, [ip, #0]	@ s_pFspInst, s_pFspInst
	cmp	r4, #0	@ s_pFspInst,
	beq	.L127	@,
	str	r3, [r1, #0]	@ InstID,* DecFsNum
	ldr	r0, [ip, #0]	@ s_pFspInst, s_pFspInst
	ldrsb	r0, [r0, #10]	@ D.34897, <variable>.s32DecFsNum
	cmp	r0, #0	@ D.34897,
	str	r0, [r1, #0]	@ D.34897,* DecFsNum
	ldr	r0, [ip, #0]	@ temp.916, s_pFspInst
	ble	.L122	@,
	add	ip, r0, #27648	@ ivtmp.907, temp.916,
	add	r0, ip, #160	@ ivtmp.907, ivtmp.907,
.L121:
	ldr	ip, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp166,* DecFsNum
	cmp	ip, r3	@ tmp166, i
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
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC31	@,
	movw	r2, #2931	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
.L127:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2933	@,
	ldmfd	sp!, {r4}
	b	dprint_vfmw	@
.L126:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC32	@,
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L134	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r3, #0]	@ D.34770, s_pFspInst
	cmp	r3, #0	@ D.34770,
	beq	.L135	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L132	@,
	ldrsb	r1, [r3, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L132	@,
	mov	r1, #52	@ tmp147,
	mla	ip, r1, r2, r3	@ tmp148, tmp147, PhyFsID, D.34770
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
	subs	ip, r0, #0	@ InstID, InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L143	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r4, [r4, #0]	@ D.34741, s_pFspInst
	cmp	r4, #0	@ D.34741,
	beq	.L144	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L140	@,
	ldrsb	r0, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L141	@,
	mov	r0, r1	@ Ret, ePhyFsType
	mov	r1, #52	@ tmp148,
	mla	ip, r1, r2, r4	@ tmp149, tmp148, PhyFsID, D.34741
	add	r1, ip, #27648	@ tmp150, tmp149,
	add	r2, r1, #152	@ tmp150, tmp150,
	str	r3, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r4, pc}	@
.L140:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L145	@,
.L141:
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L145:
	ldrsb	r0, [r4, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L141	@,
	mov	r1, #52	@ tmp154,
	mov	r0, ip	@ Ret, InstID
	mla	r2, r1, r2, r4	@ tmp155, tmp154, PhyFsID, D.34741
	add	ip, r2, #30976	@ tmp156, tmp155,
	add	r2, ip, #152	@ tmp156, tmp156,
	str	r3, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r4, pc}	@
.L143:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2740	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L144:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2741	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
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
	ldr	r0, [r3, r0, asl #2]	@ D.34719, s_pFspInst
	cmp	r0, #0	@ D.34719,
	beq	.L150	@,
	mov	r2, #432	@ tmp143,
	mla	r1, r2, r1, r0	@ tmp144, tmp143, LogicFrameID, D.34719
	ldrsb	r0, [r1, #97]	@ D.34723, <variable>.s32DispState
	ldmfd	sp!, {r3, pc}	@
.L150:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2724	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34723,
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
	ldr	r0, [r3, r0, asl #2]	@ D.34650, s_pFspInst
	cmp	r0, #0	@ D.34650,
	beq	.L155	@,
	mov	r2, #432	@ tmp143,
	mla	r1, r2, r1, r0	@ tmp144, tmp143, LogicFrameID, D.34650
	ldrsb	r0, [r1, #96]	@ D.34654, <variable>.s32IsRef
	ldmfd	sp!, {r3, pc}	@
.L155:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2645	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34654,
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	bne	.L171	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L172	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r5, [r3, #0]	@ D.34575, s_pFspInst
	cmp	r5, #0	@ D.34575,
	beq	.L173	@,
	mov	r7, #432	@ tmp154,
	uxtb	r8, r2	@ D.34583, IsRef
	mla	r7, r7, r1, r5	@ tmp155, tmp154, LogicFrameID, D.34575
	ldrsb	r1, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r8, [r7, #96]	@ D.34583, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r1, [r7, #504]	@ prephitmp.1027, <variable>.pstDecodeFs
	cmp	r1, #0	@ prephitmp.1027,
	beq	.L161	@,
	ldr	sl, [r1, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r7, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, ip	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L174	@,
.L161:
	mov	r3, #432	@ tmp194,
	mla	r3, r3, r4, r5	@ tmp195, tmp194, LogicFrameID, D.34575
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.34603, <variable>.PmvIdc
	cmp	r2, #19	@ D.34603,
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
	mla	r3, r2, r4, r5	@ tmp245, tmp244, LogicFrameID, D.34575
	ldr	r3, [r3, #508]	@ D.34626, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.34626,
	beq	.L168	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L177	@,
.L169:
	mov	r2, #432	@ tmp257,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	mla	r2, r2, r4, r5	@ tmp258, tmp257, LogicFrameID, D.34575
	ldr	r1, [r2, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L178	@,
.L168:
	cmp	r6, #0	@ IsRef,
	moveq	r3, #432	@ tmp274,
	mlaeq	r4, r3, r4, r5	@ tmp275, tmp274, LogicFrameID, D.34575
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
	mla	r0, r3, r4, r5	@ tmp253, tmp252, LogicFrameID, D.34575
	ldr	r3, [r0, #508]	@ D.34626, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.34626,
	bne	.L169	@,
	b	.L168	@
.L172:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC33	@,
	movw	r2, #2531	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L164:
	sxtb	r2, r2	@, D.34603
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
	ldr	ip, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L162	@,
	ldr	r3, [r3, #20]	@ D.35167, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.34601, <variable>.PhyAddr
	cmp	r3, #0	@ D.35167,
	beq	.L180	@,
	blx	r3	@ D.35167
	ldr	r1, [r7, #504]	@ prephitmp.1027, <variable>.pstDecodeFs
.L162:
	strb	r8, [r1, #0]	@ D.34583, <variable>.IsDecRef
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
	sxtab	r0, r5, r2	@ tmp224, D.34575, D.34603
	strb	r6, [r0, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, <variable>.PmvAddr
	str	r6, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
	b	.L167	@
.L173:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2532	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L179:
	sxtab	r1, r5, r2	@ tmp206, D.34575, D.34603
	mov	r2, #2	@ tmp215,
	strb	r6, [r1, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r2, [r3, #4]	@ tmp215, <variable>.eLfsPmvState
	b	.L166	@
.L180:
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #504]	@ prephitmp.1027, <variable>.pstDecodeFs
	strb	r8, [r1, #0]	@ D.34583, <variable>.IsDecRef
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
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L188	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L189	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp142,
	movt	r2, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r2, [r2, #0]	@ D.34547, s_pFspInst
	cmp	r2, #0	@ D.34547,
	beq	.L190	@,
	mov	r0, #432	@ tmp147,
	mla	r0, r0, r1, r2	@ tmp148, tmp147, LogicFrameID, D.34547
	ldr	ip, [r0, #500]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	bxne	lr	@
	ldrb	ip, [r0, #100]	@ zero_extendqisi2	@ D.34555, <variable>.PmvIdc
	mov	r0, #432	@ tmp165,
	cmp	ip, #19	@ D.34555,
	sxtabls	ip, r2, ip	@ tmp159, D.34547, D.34555
	strlsb	r3, [ip, #14]	@ InstID, <variable>.IsPmvInUse
	mov	r3, #0	@ tmp168,
	mla	ip, r0, r1, r2	@ tmp166, tmp165, LogicFrameID, D.34547
	add	r1, ip, #496	@ tmp167, tmp166,
	str	r3, [r1, #4]	@ tmp168, <variable>.eLfsPmvState
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
	subs	r2, r0, #0	@ InstID, InstID
	bne	.L196	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.33241, s_pFspInst
	cmp	r3, #0	@ D.33241,
	beq	.L197	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	streq	r2, [r3, #4]	@ InstID, <variable>.eFspInstState
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
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r3, #0]	@ D.33162, s_pFspInst
	cmp	r3, #0	@ D.33162,
	bxeq	lr	@
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bxeq	lr	@
	mov	r0, #0	@,
	b	FSP_DisableInstance	@
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L206	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r2, #0]	@ D.33178, s_pFspInst
	ldr	ip, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	ip, #1	@ <variable>.eFspInstState,
	bne	.L207	@,
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	mov	r0, r3	@ D.33176, InstID
	strb	r1, [r2, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	ldmfd	sp!, {r3, pc}	@
.L207:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #234	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC36	@,
	movt	r3, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33176,
	ldmfd	sp!, {r3, pc}	@
.L206:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #233	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33176,
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
	ldr	ip, [r2, r0, asl #2]	@ D.34940, s_pFspInst
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	cmp	ip, #0	@ D.34940,
	beq	.L211	@,
	ldrb	r5, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #27860	@ tmp141,
	mov	r0, r1	@ tmp154, pFspInstInfo
	add	r1, ip, #27648	@, D.34940,
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
.L211:
	mov	r0, ip	@, D.34940
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r0, #0	@ InstID, InstID
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	sl, r2	@ IsWaitDisp, IsWaitDisp
	bne	.L226	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L227	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp151,
	movt	r8, #:upper16:.LANCHOR0	@ tmp151,
	ldr	r3, [r8, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L228	@,
	add	r0, r8, #24	@, tmp151,
	rsbs	r7, r2, #1	@ D.34680, IsWaitDisp
	movcc	r7, #0	@ D.34680
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8, #0]	@ pstInst, s_pFspInst
	mov	r0, #432	@ tmp162,
	mla	r3, r0, r4, r6	@ tmp163, tmp162, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp164, tmp163,
	ldrsb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r1, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L229	@,
	cmp	r7, #0	@ D.34680,
	moveq	r3, #3	@ iftmp.514,
	bne	.L217	@,
.L219:
	mov	lr, #432	@ tmp188,
	mla	r4, lr, r4, r6	@ tmp189, tmp188, LogicFrameID, pstInst
	add	r1, r4, #96	@ tmp190, tmp189,
	ldrsb	r0, [r1, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r3, [r1, #1]	@ iftmp.514, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.IsDummyFs,
	bne	.L224	@,
	add	r5, r4, #504	@ tmp202, tmp189,
	ldr	ip, [r5, #4]	@ temp.1193, <variable>.pstDispOutFs
	cmp	ip, #0	@ temp.1193,
	beq	.L224	@,
	ldr	r2, [r4, #496]	@ D.34703, <variable>.u32Tick
	ldr	r3, [ip, #44]	@ D.34702, <variable>.u32Tick
	cmp	r3, r2	@ D.34702, D.34703
	bne	.L230	@,
	cmp	r7, #0	@ D.34680,
	strneb	r0, [r1, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r0, [ip, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r3, #3	@ tmp239,
	strne	r0, [r5, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r3, [r1, #1]	@ tmp239, <variable>.s32DispState
	streqb	r3, [ip, #2]	@ tmp239, <variable>.DispState
.L224:
	ldr	r0, .L232	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L229:
	ldr	r1, [r3, #508]	@ D.34684, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.34684,
	beq	.L217	@,
	ldrsb	ip, [r2, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L217	@,
	ldr	r2, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L217	@,
	ldr	r3, [r8, #16]	@ D.35176, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r1, #12]	@ D.34693, <variable>.PhyAddr
	cmp	r3, #0	@ D.35176,
	beq	.L231	@,
	mov	r0, r5	@, InstID
	blx	r3	@ D.35176
.L217:
	mov	r3, #0	@ iftmp.514,
	b	.L219	@
.L226:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC1	@,
	mov	r0, #0	@,
	movw	r2, #2662	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L227:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC33	@,
	movw	r2, #2663	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L230:
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	ldr	r0, .L232	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L228:
	movw	r1, #:lower16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r3, #:upper16:.LC2	@,
	movw	r2, #2664	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L231:
	mov	r0, r3	@, D.35176
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ iftmp.514,
	b	.L219	@
.L233:
	.align	2
.L232:
	.word	.LANCHOR0+24
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
	cmpls	r0, #0	@, InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #0	@,
	mov	r2, r0	@,
	bl	FSP_SetRef	@
	ldr	ip, [r4, #0]	@ s_pFspInst, s_pFspInst
	mov	r2, #432	@ tmp150,
	mla	r1, r2, r5, ip	@ tmp151, tmp150, LogicFrameID, s_pFspInst
	ldrsb	r0, [r1, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #3	@ <variable>.s32DispState,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #0	@,
	mov	r1, r5	@, LogicFrameID
	mov	r2, r0	@,
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
	beq	.L257	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L240	@,
	add	r2, r2, #27648	@ ivtmp.1244, pstInst,
	sub	r3, r4, #1	@ tmp159, TotalFsNum,
	and	ip, r3, #1	@ tmp161, tmp159,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #148]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L258	@,
.L247:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #52	@ ivtmp.1244, ivtmp.1244,
	ble	.L240	@,
	cmp	ip, #0	@ tmp161,
	beq	.L243	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L249	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L242	@,
.L249:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.1244, ivtmp.1244,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L240	@,
.L243:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #52	@ tmp163, ivtmp.1244,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L241	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L242	@,
.L241:
	ldrsb	r2, [r2, #52]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp162, i
	bne	.L252	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L242	@,
.L252:
	add	r3, r2, #1	@ i, tmp162,
	add	r2, r1, #52	@ ivtmp.1244, tmp163,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L243	@,
.L240:
	add	r1, sp, #24	@ tmp151,,
	mov	r5, #0	@ tmp148,
	add	r2, sp, #12	@,,
	add	r3, sp, #16	@,,
	str	r5, [r1, #-4]!	@ tmp148, RefNum
	str	r5, [sp, #16]	@ tmp148, NewNum
	str	r5, [sp, #12]	@ tmp148, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #20]	@ RefNum.498, RefNum
	ldr	r3, [sp, #12]	@ ReadNum.497, ReadNum
	ldr	ip, [sp, #16]	@ NewNum.496, NewNum
	add	r0, r2, r3	@ tmp154, RefNum.498, ReadNum.497
	add	r1, r0, #2	@ tmp155, tmp154,
	add	r0, r1, ip	@ tmp156, tmp155, NewNum.496
	cmp	r4, r0	@ TotalFsNum, tmp156
	bgt	.L259	@,
.L244:
	mov	r0, #0	@ D.34284,
.L239:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L258:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L247	@,
.L242:
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L244	@,
	b	.L240	@
.L259:
	mov	r0, r5	@, tmp148
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	str	ip, [sp, #0]	@ NewNum.496,
	str	r4, [sp, #4]	@ TotalFsNum,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34284,
	b	.L239	@
.L257:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34284,
	b	.L239	@
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L289	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp150,
	movt	r3, #:upper16:.LANCHOR0	@ tmp150,
	ldr	r5, [r3, #0]	@ D.34237, s_pFspInst
	cmp	r5, #0	@ D.34237,
	beq	.L290	@,
	ldr	r2, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L264	@,
	ldr	r4, [r3, #8]	@ D.35184, g_FspFrameIntf.IsFrameAvalible
	cmp	r4, #0	@ D.35184,
	beq	.L291	@,
	blx	r4	@ D.35184
	cmp	r0, #0	@,
	bne	.L266	@,
.L264:
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ D.34246, <variable>.s32DecFsNum
	cmp	r6, #0	@ D.34246,
	beq	.L267	@,
	sxtb	r6, r6	@ D.34263, D.34246
	cmp	r6, #0	@ D.34263,
	ble	.L268	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp158,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp158,
	sub	r0, r6, #1	@ tmp165, D.34263,
	add	r5, r5, #27648	@ ivtmp.1277, D.34237,
	ldr	r2, [r3, #0]	@ pretmp.1261, s_pstVfmwChan
	and	ip, r0, #1	@ tmp167, tmp165,
	add	r5, r5, #150	@ ivtmp.1277, ivtmp.1277,
	mov	r3, #0	@ i,
	add	r1, r2, #209920	@ ivtmp.1280, pretmp.1261,
	ldr	r0, [r2, #1580]	@ pretmp.1263, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #824	@ ivtmp.1280, ivtmp.1280,
	cmp	r0, #1	@ pretmp.1263,
	beq	.L292	@,
.L275:
	ldrsb	r2, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L293	@,
.L276:
	mov	r3, #1	@ i,
	cmp	r3, r6	@ i, D.34263
	add	r5, r5, #52	@ ivtmp.1277, ivtmp.1277,
	add	r1, r1, #16	@ ivtmp.1280, ivtmp.1280,
	bge	.L268	@,
	cmp	ip, #0	@ tmp167,
	beq	.L272	@,
	cmp	r0, r3	@ pretmp.1263,
	beq	.L288	@,
.L278:
	ldrsb	ip, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L279	@,
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #1	@ <variable>.DispState,
	bls	.L271	@,
.L279:
	add	r3, r3, #1	@ i, i,
	add	r5, r5, #52	@ ivtmp.1277, ivtmp.1277,
	cmp	r3, r6	@ i, D.34263
	add	r1, r1, #16	@ ivtmp.1280, ivtmp.1280,
	blt	.L272	@,
.L268:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.34235,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L266:
	mov	r0, #0	@ D.34235,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L293:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #1	@ <variable>.DispState,
	bhi	.L276	@,
.L271:
	cmp	r3, r6	@ i, D.34263
	bge	.L268	@,
.L267:
	mov	r0, #1	@ D.34235,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L296:
	ldr	r4, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r4, #0	@ <variable>.eFrameState,
	bne	.L270	@,
.L269:
	ldrsb	r4, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r4, #0	@ <variable>.IsDecRef,
	bne	.L270	@,
	ldrb	r4, [r5, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #1	@ <variable>.DispState,
	bls	.L271	@,
.L270:
	add	r3, r3, #1	@ i, i,
	cmp	r0, #1	@ pretmp.1263,
	mov	r4, r3	@ tmp168, i
	beq	.L294	@,
.L282:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L283	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	bls	.L271	@,
.L283:
	add	r3, r4, #1	@ i, tmp168,
	add	r5, r2, #52	@ ivtmp.1277, tmp169,
	cmp	r3, r6	@ i, D.34263
	add	r1, ip, #16	@ ivtmp.1280, tmp170,
	bge	.L268	@,
.L272:
	cmp	r0, #1	@ pretmp.1263,
	add	r2, r5, #52	@ tmp169, ivtmp.1277,
	add	ip, r1, #16	@ tmp170, ivtmp.1280,
	bne	.L269	@,
	b	.L296	@
.L294:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L282	@,
	b	.L283	@
.L291:
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34235, D.35184
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L292:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L275	@,
	b	.L276	@
.L288:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L278	@,
	b	.L279	@
.L289:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1892	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34235,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L290:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1893	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34235,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	add	r5, sp, #32	@ tmp173,,
	mov	r6, r0	@ InstID, InstID
	mov	sl, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	mov	r0, r5	@, tmp173
	mov	r9, r2	@ MemSize, MemSize
	str	r3, [sp, #28]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r6, #0	@ InstID,
	bne	.L338	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp178,
	movt	r3, #:upper16:.LANCHOR0	@ tmp178,
	ldr	r4, [r3, #0]	@ D.33412, s_pFspInst
	cmp	r4, #0	@ D.33412,
	beq	.L339	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp181,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp181,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.33415, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r0, #36]	@ D.33421, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrb	r7, [r4, #60]	@ zero_extendqisi2	@ D.33417, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ D.33421,
	mvneq	r2, #0	@ Ret,
	beq	.L302	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, sl	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r9	@, MemSize
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp185,
	str	lr, [sp, #4]	@ tmp185,
	ldrsb	lr, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r6, [sp, #12]	@ InstID,
	str	r5, [sp, #16]	@ tmp173,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	mov	lr, #16	@ tmp190,
	str	lr, [sp, #20]	@ tmp190,
	blx	ip	@ D.33421
	subs	r2, r0, #0	@ Ret,
	bne	.L302	@,
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	ip, r7	@ D.33417, D.33417
	sxtb	r8, r8	@ D.33415, D.33415
	add	r3, r8, ip, asl #2	@, MinFsNum, D.33415, D.33417,
	strb	r1, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	ip, [sp, #308]	@ temp.1409, MemArrange.ValidFrameNum
	cmp	r3, ip	@ MinFsNum, temp.1409
	bgt	.L304	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r2, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	beq	.L340	@,
	ldrb	r0, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r0, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L307:
	ldr	r7, [sp, #440]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r1, r4, #27648	@ ivtmp.1397, D.33412,
	movw	r2, #34640	@ tmp212,
	mov	r0, #0	@ i,
	add	r3, r1, #160	@ ivtmp.1397, ivtmp.1397,
	ldrsb	r6, [r4, #10]	@ D.33451, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp416, tmp212
	add	ip, sp, #32	@ ivtmp.1396,,
	mov	r1, r0	@ tmp415, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L310	@
.L342:
	str	r0, [r2, #-8]	@ tmp421, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp421,
	ldr	r7, [ip, #8]	@ tmp459, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1396, tmp422,
	str	r7, [r3, #52]	@ tmp459, <variable>.PhyAddr
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
	strb	r1, [r2, #-12]	@ tmp415, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp415, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp415, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.1397, tmp423,
	beq	.L341	@,
.L310:
	cmp	r6, r0	@ D.33451, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp415, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp421, i,
	ldrgt	r2, [ip, #8]	@ tmp216, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp422, ivtmp.1396,
	ldrle	r2, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.33451, tmp421
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
	strb	r1, [r3, #-12]	@ tmp415, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp415, <variable>.IsTfRef
	str	fp, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp415, <variable>.DispState
	ldr	r2, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp423, ivtmp.1397,
	bgt	.L342	@,
	str	r1, [r2, #-8]	@ tmp415, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp421,
	ldr	r7, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1396, tmp422,
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
	strb	r1, [r2, #-12]	@ tmp415, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp415, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.1397, tmp423,
	strb	r1, [r2, #-10]	@ tmp415, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L310	@,
.L341:
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #448	@,,
	movw	r1, #34456	@ tmp249,
	mov	r0, #0	@ tmp250,
	mov	r3, #1	@ tmp247,
	str	r0, [r4, r1]	@ tmp250, <variable>.PhyFsID
	add	ip, r5, r2, asl #2	@, tmp256,, <variable>.s32DecFsNum,
	strb	r3, [r4, #12]	@ tmp247, <variable>.s32TfFsNum
	movw	fp, #34464	@ tmp251,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [ip, #-408]	@ tmp258, MemArrange.FrameAddr
	movw	r3, #34476	@ tmp261,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [r4, fp]	@ tmp258, <variable>.PhyAddr
	movw	fp, #34480	@ tmp263,
	ldr	r1, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r3]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r3, #34472	@ tmp259,
	str	ip, [r4, fp]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r1, [r4, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r1, #34484	@ tmp265,
	ldr	fp, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r3, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	fp, [r4, r1]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	fp, #34488	@ tmp267,
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r1, #34452	@ tmp271,
	cmp	r3, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #34453	@ tmp274,
	ldr	fp, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r0, [r4, r1]	@ tmp250, <variable>.IsDecRef
	movw	r1, #34492	@ tmp269,
	strb	r0, [r4, ip]	@ tmp250, <variable>.IsTfRef
	movw	ip, #34454	@ tmp277,
	str	fp, [r4, r1]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r0, [r4, ip]	@ tmp250, <variable>.DispState
	bne	.L311	@,
	mov	fp, r3	@ prephitmp.1308, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L313:
	add	r0, r4, #30976	@ tmp283, D.33412,
	mov	r2, #0	@ ivtmp.1362,
	add	r9, r0, #180	@ ivtmp.1374, tmp283,
	add	sl, r0, #152	@ ivtmp.1360, tmp283,
	add	r8, r0, #160	@ ivtmp.1366, tmp283,
	add	r7, r0, #168	@ ivtmp.1368, tmp283,
	add	r6, r0, #172	@ ivtmp.1370, tmp283,
	add	r5, r0, #176	@ ivtmp.1372, tmp283,
	mov	r3, r2	@ i.1456, ivtmp.1362
	mov	r1, r2	@ tmp413, ivtmp.1362
	b	.L312	@
.L344:
	str	r3, [sl, #0]	@ i.1456, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp303, i.1456, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp304, tmp303, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	r0, fp, r0, asl #2	@, tmp308,, tmp304,
	ldr	r0, [r0, #-408]	@ tmp310, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp310, <variable>.PhyAddr
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
	strb	r1, [ip, #150]	@ tmp413, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp413, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp413, <variable>.IsTfRef
.L315:
	add	r3, r3, #1	@ i.1456, i.1456,
	add	sl, sl, #52	@ ivtmp.1360, ivtmp.1360,
	cmp	r3, #64	@ i.1456,
	add	r2, r2, #52	@ ivtmp.1362, ivtmp.1362,
	add	r8, r8, #52	@ ivtmp.1366, ivtmp.1366,
	add	r7, r7, #52	@ ivtmp.1368, ivtmp.1368,
	add	r6, r6, #52	@ ivtmp.1370, ivtmp.1370,
	add	r5, r5, #52	@ ivtmp.1372, ivtmp.1372,
	add	r9, r9, #52	@ ivtmp.1374, ivtmp.1374,
	beq	.L343	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.1308, <variable>.s32DispFsNum
.L312:
	add	ip, r4, r2	@ D.36159, D.33412, ivtmp.1362
	cmp	fp, r3	@ prephitmp.1308, i.1456
	add	ip, ip, #30976	@ tmp316, D.36159,
	mov	r0, ip	@ tmp348, tmp316
	bgt	.L344	@,
	str	r1, [sl, #0]	@ tmp413, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp336, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	ip, fp, ip, asl #2	@, tmp340,, tmp336,
	ldr	ip, [ip, #-408]	@ tmp342, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp342, <variable>.PhyAddr
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
	strb	r1, [r0, #150]	@ tmp413, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp413, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp413, <variable>.IsTfRef
	b	.L315	@
.L340:
	ldrsb	r2, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r2, #0	@ <variable>.s8LowBufEnable,
	beq	.L306	@,
	ldr	fp, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	movw	r7, #34644	@ tmp205,
	strb	fp, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	ldr	r6, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r6, [r4, r7]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	b	.L307	@
.L343:
	ldr	r2, [sp, #436]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.1342, D.33412,
	mov	ip, #0	@ tmp412,
	mov	r3, #1	@ i.1458,
	cmp	r2, #20	@ MemArrange.ValidPMVNum,
	movge	r2, #20	@ tmp365,
	uxtb	r5, r2	@ prephitmp.1457, tmp365
	strb	r5, [r4, #13]	@ prephitmp.1457, <variable>.s32PmvNum
	ldr	r0, [sp, #312]	@ tmp443, MemArrange.PMVAddr
	add	r5, sp, #32	@,,
	strb	ip, [r4, #14]	@ tmp412, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.1348, D.33412,
	str	r0, [r1, #0]	@ tmp443, <variable>.PmvAddr
	add	r0, r5, #4	@ ivtmp.1467,,
	add	r1, r1, #4	@ ivtmp.1342, ivtmp.1342,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1457, <variable>.s32PmvNum
	b	.L320	@
.L345:
	ldr	r5, [r0, #280]	@ tmp447, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp412, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp447, <variable>.PmvAddr
.L334:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1457, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.1458, tmp417,
	add	r0, r0, #4	@ ivtmp.1467, tmp418,
	add	r1, r1, #4	@ ivtmp.1342, tmp419,
	add	r2, r2, #1	@ ivtmp.1348, tmp420,
.L320:
	sxtb	r5, r5	@ prephitmp.1457, prephitmp.1457
	cmp	r5, r3	@ prephitmp.1457, i.1458
	add	r3, r3, #1	@ tmp417, i.1458,
	ldrgt	r5, [r0, #280]	@ tmp369, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp418, ivtmp.1467,
	ldrle	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp417,
	strb	ip, [r2, #14]	@ tmp412, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp420, ivtmp.1348,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp419, ivtmp.1342,
	beq	.L319	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.1457, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.1457, tmp417
	bgt	.L345	@,
	ldr	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp412, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L334	@
.L319:
	movw	r1, #27808	@ tmp380,
	ldr	ip, [sp, #432]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp375,
	movw	r2, #27756	@ tmp379,
	movw	r1, #27748	@ tmp377,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp378,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r2, #27764	@ tmp382,
	str	r3, [r4, r1]	@ tmp378, <variable>.stDummyPhyFs.PhyFsID
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r0, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r2]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	ip, #27768	@ tmp384,
	str	r0, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #27772	@ tmp386,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	r2, #27776	@ tmp388,
	ldr	r1, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	movw	ip, #27780	@ tmp390,
	mov	r0, r3	@ D.33410, tmp378
	str	r1, [r4, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r2, #27744	@ tmp394,
	ldr	r1, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r4, ip]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	ip, #27745	@ tmp397,
	ldr	r1, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r2]	@ tmp378, <variable>.stDummyPhyFs.IsDecRef
	movw	r2, #27784	@ tmp392,
	strb	r3, [r4, ip]	@ tmp378, <variable>.stDummyPhyFs.IsTfRef
	movw	ip, #27746	@ tmp400,
	str	r1, [r4, r2]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r2, #34644	@ tmp405,
	strb	r3, [r4, ip]	@ tmp378, <variable>.stDummyPhyFs.DispState
	movw	r3, #34656	@ tmp403,
	ldr	r1, [sp, #444]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	r1, [r4, r3]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	ip, [r4, r2]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	ldr	r3, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r1, [sp, #28]	@, %sfp
	str	r3, [r1, #0]	@ MemArrange.TotalMemUsed,
.L299:
	add	sp, sp, #452	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L311:
	ldr	r3, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #67]	@ D.33474, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	fp, r3, #1	@ tmp290, MemArrange.ValidFrameNum,
	rsb	r1, r2, fp	@ tmp289, <variable>.s32DecFsNum, tmp290
	cmp	r1, #25	@ tmp289,
	movlt	r3, r1	@ tmp427, tmp289
	movge	r3, #25	@ tmp427,
	uxtb	fp, r3	@ prephitmp.1308,
	strb	fp, [r4, #11]	@ tmp2, <variable>.s32DispFsNum
	sxtb	fp, fp	@ prephitmp.1308,
	cmp	fp, ip	@ prephitmp.1308, D.33474
	bge	.L313	@,
	ldrsb	r3, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, fp	@, prephitmp.1308
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	ip, [sp, #0]	@ D.33474,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33410,
	b	.L299	@
.L306:
	ldr	r3, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ tmp207,
	strb	r3, [r4, #10]	@ tmp207, <variable>.s32DecFsNum
	b	.L307	@
.L304:
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ temp.1409,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33410,
	b	.L299	@
.L302:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33410,
	b	.L299	@
.L338:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #523	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33410,
	b	.L299	@
.L339:
	mov	r0, r4	@, D.33412
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #524	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33410,
	b	.L299	@
	.fnend
	.size	FSP_DSDRePartitionFsMemory, .-FSP_DSDRePartitionFsMemory
	.align	2
	.type	FSP_NoneDnrSwitchToDnrSpecialCase1, %function
FSP_NoneDnrSwitchToDnrSpecialCase1:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #460
	sub	sp, sp, #460	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #36	@,,
	mov	r1, #416	@,
	mov	r5, #0	@ tmp181,
	mov	sl, r2	@ s32Num, s32Num
	str	r5, [sp, #452]	@ tmp181, s32UsedMemSize
	bl	__memzero	@
	cmp	r4, r5	@ InstID,
	bne	.L407	@,
	cmp	r6, #0	@ VoUsingFrameArray,
	beq	.L408	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp190,
	movt	r3, #:upper16:.LANCHOR0	@ tmp190,
	ldr	r5, [r3, #0]	@ pstInst, s_pFspInst
	cmp	r5, #0	@ pstInst,
	beq	.L409	@,
	movw	r0, #34648	@ tmp194,
	ldr	r2, [r6, #0]	@ D.33840, <variable>.FrameAddr
	ldr	r8, [r5, r0]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r3, #34644	@ tmp196,
	movw	lr, #34656	@ tmp197,
	ldr	r7, [r5, r3]	@ <variable>.TotalMemUsed, <variable>.TotalMemUsed
	ldr	ip, [r5, lr]	@ <variable>.StrideByte, <variable>.StrideByte
	cmp	r8, r2	@ s32VdhMemAddr, D.33840
	movw	r1, #34652	@ tmp195,
	rsblt	r4, r8, r2	@ s32FreeSize.1513, s32VdhMemAddr, D.33840
	ldr	r0, [r5, r1]	@, <variable>.MemSize
	add	r7, r7, ip	@ s32VdhTotalMemUse, <variable>.TotalMemUsed, <variable>.StrideByte
	cmp	r4, r7	@ s32FreeSize.1513, s32VdhTotalMemUse
	str	r0, [sp, #24]	@, %sfp
	movge	r2, #1	@,
	strge	r2, [sp, #28]	@, %sfp
	bge	.L367	@,
	sub	lr, sl, #1	@ temp.1553, s32Num,
	ldr	r3, [sp, #24]	@, %sfp
	add	r0, r3, r8	@ D.33848,, s32VdhMemAddr
	add	r3, r6, lr, asl #3	@, D.33852, VoUsingFrameArray, temp.1553,
	ldr	r1, [r6, lr, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	ip, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r1, ip, r1	@ D.33855, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r0, r1	@ D.33848, D.33855
	rsbgt	r0, r1, r0	@ s32FreeSize.1514, D.33855, D.33848
	movle	r0, #0	@ s32FreeSize.1514,
	cmp	r0, r7	@ s32FreeSize.1514, s32VdhTotalMemUse
	bge	.L356	@,
	cmp	lr, #0	@ temp.1553,
	ble	.L357	@,
	ldr	r0, [r6, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r6, #8	@ D.33866, VoUsingFrameArray,
	ldr	r4, [r6, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r2, r0	@ D.33873, D.33840, <variable>.FrameSize
	rsb	r2, r1, r4	@ tmp205, D.33873, <variable>.FrameAddr
	cmp	r7, r2	@ s32VdhTotalMemUse, tmp205
	movle	r2, r6	@ VoUsingFrameArray.1517, VoUsingFrameArray
	ble	.L359	@,
	tst	lr, #1	@ temp.1553,
	mov	r4, #0	@ i,
	bne	.L361	@,
	ldr	ip, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r2, r3	@ VoUsingFrameArray.1517, ivtmp.1507
	ldr	r1, [r3, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r4, #1	@ i,
	ldr	r0, [r3, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, ip, r1	@ D.33873, <variable>.FrameSize, <variable>.FrameAddr
	rsb	ip, r1, r0	@ s32FreeSize.1522, D.33873, <variable>.FrameAddr
	cmp	r7, ip	@ s32VdhTotalMemUse, s32FreeSize.1522
	bgt	.L361	@,
.L359:
	movw	r9, #34648	@ tmp214,
	movw	r0, #34652	@ tmp215,
	str	r1, [r5, r9]	@ D.33873, <variable>.MemAddr
	str	r7, [r5, r0]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r4, [r2, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r4, r7	@ tmp217, <variable>.FrameSize, s32VdhTotalMemUse
	str	r3, [r2, #4]	@ tmp217, <variable>.FrameSize
	b	.L360	@
.L356:
	movw	ip, #34648	@ tmp207,
	movw	lr, #34652	@ tmp208,
	str	r1, [r5, ip]	@ D.33855, <variable>.MemAddr
	str	r7, [r5, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r9, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r9, r7	@ tmp210, <variable>.FrameSize, s32VdhTotalMemUse
	str	r2, [r3, #4]	@ tmp210, <variable>.FrameSize
.L360:
	movw	r0, #34648	@ tmp286,
	movw	r9, #34652	@ tmp288,
	ldr	r1, [r5, r0]	@, <variable>.MemAddr
	add	r3, sp, #452	@,,
	mov	r0, #0	@,
	ldr	r2, [r5, r9]	@, <variable>.MemSize
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	mov	r4, r0	@ s32Ret,
	beq	.L410	@,
	ldr	r3, [sp, #452]	@ s32UsedMemSize.468, s32UsedMemSize
	cmp	r7, r3	@ s32VdhTotalMemUse, s32UsedMemSize.468
	movge	r3, #0	@,
	strge	r3, [sp, #28]	@, %sfp
	blt	.L411	@,
.L367:
	ldrsb	r2, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, #0	@ <variable>.s32DecFsNum,
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp294,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp294,
	ble	.L365	@,
	add	fp, r5, #27648	@ ivtmp.1502, pstInst,
	mov	r3, #0	@ i.1529,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp294,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp294,
	add	r0, fp, #160	@ ivtmp.1502, ivtmp.1502,
	mov	ip, r3	@ tmp298, i.1529
	movw	fp, #34640	@ tmp299,
.L368:
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r3, asl #4	@ tmp231, i.1529,
	add	r2, r3, #13120	@ tmp244, i.1529,
	add	r3, r3, #1	@ i.1529, i.1529,
	add	r9, r1, lr	@ tmp232, tmp231, s_pstVfmwChan
	add	r2, r2, #52	@ tmp244, tmp244,
	add	lr, r9, #209920	@ tmp233, tmp232,
	add	r9, lr, #824	@ tmp233, tmp233,
	str	ip, [r9, #0]	@ tmp298, <variable>.eFrameState
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, r1, r9	@ tmp239, tmp231, s_pstVfmwChan
	add	r1, r1, #209920	@ tmp240, tmp239,
	add	r1, r1, #824	@ tmp240, tmp240,
	str	lr, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, fp]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, r2, asl #4]	@ <variable>.ImgSlotLen, <variable>.s32FrameSize
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, lr, r2, asl #4	@, tmp254, s_pstVfmwChan, tmp244,
	str	ip, [r2, #4]	@ tmp298, <variable>.s32UsingCount
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r3	@ <variable>.s32DecFsNum, i.1529
	bgt	.L368	@,
.L365:
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp259,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp259,
	ldr	r3, [r4, #0]	@ temp.1530, s_pstVfmwChan
	ldr	ip, [r0, #36]	@ D.33900, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.33900,
	ldr	r1, [r3, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r3, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r3, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L369	@,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	lr, #0	@ tmp262,
	mov	r1, #0	@ tmp260,
	str	lr, [sp, #12]	@ tmp262,
	str	r1, [sp, #8]	@ tmp260,
	add	r0, sp, #36	@ tmp264,,
	mov	lr, #64	@ tmp265,
	str	r0, [sp, #16]	@ tmp264,
	str	r1, [sp, #0]	@ tmp260,
	mov	r0, #1	@,
	str	lr, [sp, #20]	@ tmp265,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.33900
	cmp	r0, #0	@,
	bne	.L369	@,
	ldr	ip, [sp, #40]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #28]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	r1, [r4, #0]	@ temp.1532, s_pstVfmwChan
	ldr	ip, [r1, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	beq	.L412	@,
.L371:
	sub	r0, sl, #1	@ temp.1553, s32Num,
	ldr	lr, [sp, #24]	@, %sfp
	add	r3, r6, r0, asl #3	@, temp.1538, VoUsingFrameArray, temp.1553,
	add	r8, lr, r8	@ temp.1534,, s32VdhMemAddr
	ldr	lr, [r6, r0, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r2, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r2, lr	@ temp.1541, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r8, r3	@ temp.1534, temp.1541
	rsbgt	r8, r3, r8	@ s32FreeSize, temp.1541, temp.1534
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, ip	@ s32FreeSize, s32DnrSize
	strge	r3, [r1, #236]	@ temp.1541, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.33828,
	bge	.L348	@,
	cmp	r0, #0	@ temp.1553,
	ble	.L377	@,
	ldr	r4, [r6, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldmib	r6, {r2, r3}	@ phole ldm
	add	r2, r4, r2	@ temp.1545, <variable>.FrameAddr, <variable>.FrameSize
	rsb	r4, r2, r3	@ tmp278, temp.1545, <variable>.FrameAddr
	cmp	ip, r4	@ s32DnrSize, tmp278
	ble	.L378	@,
	tst	r0, #1	@ temp.1553,
	mov	r5, #0	@ i.1542,
	bne	.L380	@,
	ldr	lr, [r6, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r5, #1	@ i.1542,
	ldr	r4, [r6, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r6, r6, #8	@ ivtmp.1497, ivtmp.1497,
	add	r2, lr, r3	@ temp.1545, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r3, r2, r4	@ s32FreeSize.1547, temp.1545, <variable>.FrameAddr
	cmp	ip, r3	@ s32DnrSize, s32FreeSize.1547
	bgt	.L380	@,
	b	.L378	@
.L381:
	add	r2, r6, #8
	ldmia	r2, {r2, r7, lr}	@ phole ldm
	add	r6, r3, #8	@ ivtmp.1497, tmp304,
	add	r2, r7, r2	@ temp.1545, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r2, lr	@ s32FreeSize.1547, temp.1545, <variable>.FrameAddr
	cmp	ip, r4	@ s32DnrSize, s32FreeSize.1547
	ble	.L378	@,
	add	r2, r3, #8
	ldmia	r2, {r2, r4, lr}	@ phole ldm
	add	r2, r4, r2	@ temp.1545, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r3, r2, lr	@ s32FreeSize.1547, temp.1545, <variable>.FrameAddr
	cmp	ip, r3	@ s32DnrSize, s32FreeSize.1547
	ble	.L378	@,
.L380:
	add	r4, r5, #1	@ tmp303, i.1542,
	add	r3, r6, #8	@ tmp304, ivtmp.1497,
	cmp	r4, r0	@ tmp303, temp.1553
	add	r5, r4, #1	@ i.1542, tmp303,
	blt	.L381	@,
.L382:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC50	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC50	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1299	@,
	stmia	sp, {r4, sl, ip}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
.L348:
	add	sp, sp, #460	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L369:
	movw	r1, #:lower16:.LC48	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC48	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #40]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #28]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	r1, [r4, #0]	@ temp.1532, s_pstVfmwChan
	ldr	ip, [r1, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	bne	.L371	@,
.L412:
	ldr	lr, [r6, #0]	@ temp.1533, <variable>.FrameAddr
	add	r7, r7, r8	@ D.33908, s32VdhTotalMemUse, s32VdhMemAddr
	cmp	lr, r7	@ temp.1533, D.33908
	rsbgt	lr, r7, lr	@ s32FreeSize.1515, D.33908, temp.1533
	movle	lr, #0	@ s32FreeSize.1515,
	cmp	lr, ip	@ s32FreeSize.1515, s32DnrSize
	strge	r7, [r1, #236]	@ D.33908, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.33828,
	blt	.L371	@,
	b	.L348	@
.L362:
	ldmia	r3, {r1, r9}	@ phole ldm
	ldr	ip, [r0, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r9, r1	@ D.33873, <variable>.FrameSize, <variable>.FrameAddr
	rsb	ip, r1, ip	@ s32FreeSize.1522, D.33873, <variable>.FrameAddr
	cmp	r7, ip	@ s32VdhTotalMemUse, s32FreeSize.1522
	ble	.L359	@,
	ldr	r1, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r0	@ VoUsingFrameArray.1517, tmp309
	ldr	ip, [r0, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r0, #8	@ ivtmp.1507, VoUsingFrameArray.1517,
	ldr	r0, [r0, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, ip, r1	@ D.33873, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r0, r1, r0	@ s32FreeSize.1522, D.33873, <variable>.FrameAddr
	cmp	r7, r0	@ s32VdhTotalMemUse, s32FreeSize.1522
	ble	.L359	@,
.L361:
	add	ip, r4, #1	@ tmp308, i,
	mov	r0, r3	@ tmp309, ivtmp.1507
	cmp	lr, ip	@ temp.1553, tmp308
	add	r4, ip, #1	@ i, tmp308,
	mov	r2, r3	@ VoUsingFrameArray.1517, ivtmp.1507
	bgt	.L362	@,
.L363:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC49	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC49	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r3, #1216	@,
	str	ip, [sp, #0]	@ i,
	str	sl, [sp, #4]	@ s32Num,
	str	r7, [sp, #8]	@ s32VdhTotalMemUse,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
	b	.L348	@
.L378:
	str	r2, [r1, #236]	@ temp.1545, <variable>.s32OffLineDnrMemAddr
	mov	r0, #0	@ D.33828,
	b	.L348	@
.L377:
	mov	r4, #0	@ i.1542,
	b	.L382	@
.L411:
	str	r3, [sp, #0]	@ s32UsedMemSize.468,
	mov	r0, #31	@,
	str	r7, [sp, #4]	@ s32VdhTotalMemUse,
	movw	r1, #:lower16:.LC47	@,
	ldr	lr, [r5, r9]	@ <variable>.MemSize, <variable>.MemSize
	movt	r1, #:upper16:.LC47	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movw	r3, #1233	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	str	lr, [sp, #8]	@ <variable>.MemSize,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
	b	.L348	@
.L407:
	mov	r0, r5	@, tmp181
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1164	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
	b	.L348	@
.L357:
	mov	ip, #0	@ i,
	b	.L363	@
.L410:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC46	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1228	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33828, s32Ret
	b	.L348	@
.L409:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC46	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	movw	r3, #1170	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
	b	.L348	@
.L408:
	mov	r0, r6	@, VoUsingFrameArray
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1165	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC45	@,
	movt	r3, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33828,
	b	.L348	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L441	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp188,
	movt	r8, #:upper16:.LANCHOR0	@ tmp188,
	ldr	r7, [r8, #0]	@ D.33299, s_pFspInst
	cmp	r7, #0	@ D.33299,
	beq	.L442	@,
	add	r0, r7, #96	@, D.33299,
	mov	r1, #27648	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L417	@,
	add	r4, r7, #27648	@ ivtmp.1597, D.33299,
	mov	sl, r8	@ tmp191, tmp188
	add	r4, r4, #192	@ ivtmp.1597, ivtmp.1597,
	mov	r6, r5	@ tmp192, i
	b	.L422	@
.L420:
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.35195
.L419:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L418	@,
	ldr	r3, [r8, #16]	@ D.35201, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ temp.1599, <variable>.PhyAddr
	cmp	r3, #0	@ D.35201,
	beq	.L443	@,
	mov	r0, #0	@,
	blx	r3	@ D.35201
.L418:
	strb	r6, [r4, #-44]	@ tmp192, <variable>.IsDecRef
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp192, <variable>.DispState
	str	r6, [r4], #52	@ tmp192, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	ble	.L417	@,
.L422:
	ldr	r1, [r4, #-32]	@ D.33308, <variable>.PhyAddr
	cmp	r1, #0	@ D.33308,
	beq	.L418	@,
	ldr	r0, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L418	@,
	ldrsb	r2, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L419	@,
	ldr	r3, [sl, #20]	@ D.35195, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.35195,
	bne	.L420	@,
	mov	r0, r3	@, D.35195
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L419	@
.L443:
	mov	r0, r3	@, D.35201
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	strb	r6, [r4, #-44]	@ tmp192, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp192, <variable>.DispState
	str	r6, [r4], #52	@ tmp192, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	bgt	.L422	@,
.L417:
	ldrsb	ip, [r7, #11]	@ D.33323, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.33323,
	ble	.L423	@,
	add	r4, r7, #30976	@ tmp177, D.33299,
	cmp	ip, #1	@ D.33323,
	add	lr, r4, #192	@ ivtmp.1589, tmp177,
	sub	r3, ip, #1	@ tmp200, D.33323,
	and	r5, r3, #1	@ tmp202, tmp200,
	mov	r0, #1	@ i.1601,
	mov	r3, #0	@ tmp190,
	add	r2, r4, #244	@ ivtmp.1589, tmp177,
	str	r3, [lr, #0]	@ tmp190, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [lr, #-42]	@ tmp190, <variable>.DispState
	ble	.L423	@,
	cmp	r5, #0	@ tmp202,
	beq	.L424	@,
	mov	r0, #2	@ i.1601,
	cmp	ip, r0	@ D.33323, i.1601
	str	r3, [r2, #0]	@ tmp190, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp190, <variable>.DispState
	add	r2, r4, #296	@ ivtmp.1589, tmp177,
	ble	.L423	@,
.L424:
	add	r0, r0, #2	@ i.1601, i.1601,
	mov	r1, r2	@ tmp203, ivtmp.1589
	cmp	ip, r0	@ D.33323, i.1601
	str	r3, [r1], #52	@ tmp190, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp190, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp190, <variable>.DispState
	str	r3, [r2, #52]	@ tmp190, <variable>.u32Tick
	add	r2, r2, #104	@ ivtmp.1589, ivtmp.1589,
	strb	r3, [r1, #-42]	@ tmp190, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp190, <variable>.IsDecRef
	bgt	.L424	@,
.L423:
	ldrsb	ip, [r7, #13]	@ D.33325, <variable>.s32PmvNum
	cmp	ip, #0	@ D.33325,
	ble	.L425	@,
	cmp	ip, #1	@ D.33325,
	sub	r0, ip, #1	@ tmp195, D.33325,
	and	r1, r0, #1	@ tmp197, tmp195,
	mov	r2, #1	@ i.1602,
	mov	r0, #0	@ tmp189,
	add	r3, r7, r2	@ ivtmp.1582, D.33299,
	strb	r0, [r7, #14]	@ tmp189, <variable>.IsPmvInUse
	ble	.L425	@,
	cmp	r1, #0	@ tmp197,
	beq	.L426	@,
	mov	r2, #2	@ i.1602,
	cmp	ip, r2	@ D.33325, i.1602
	strb	r0, [r3, #14]	@ tmp189, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1582, ivtmp.1582,
	ble	.L425	@,
.L426:
	add	r2, r2, #2	@ i.1602, i.1602,
	add	lr, r3, #1	@ tmp199, ivtmp.1582,
	cmp	ip, r2	@ D.33325, i.1602
	strb	r0, [r3, #14]	@ tmp189, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp189, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1582, tmp199,
	bgt	.L426	@,
.L425:
	mov	r0, #0	@ tmp186,
	str	r0, [r7, #36]	@ tmp186, <variable>.u32InstTick
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L441:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #379	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33297,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L442:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #380	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33297,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bne	.L450	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r4, [r3, #0]	@ D.33222, s_pFspInst
	cmp	r4, #0	@ D.33222,
	beq	.L451	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.33220,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r4	@, D.33222
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp143,
	mov	r0, r5	@ D.33220, <variable>.eFspInstState
	str	r1, [r4, #4]	@ tmp143, <variable>.eFspInstState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L451:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33220,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L450:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #282	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33220,
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
	beq	.L457	@,
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
	movne	ip, #0	@ D.33196,
	moveq	ip, #0	@ D.33196,
	stmeqia	sl!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldreq	r3, [r7, #0]	@ stTmpPreInfo, stTmpPreInfo
	streq	r3, [r6, #0]	@ stTmpPreInfo,
.L454:
	mov	r0, ip	@, D.33196
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L457:
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #254	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC51	@,
	movt	r3, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.33196,
	b	.L454	@
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
	subs	r3, r0, #0	@ InstID, InstID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bne	.L466	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L467	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp143,
	movt	r2, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r1, [r2, #0]	@ D.33367, s_pFspInst
	cmp	r1, #0	@ D.33367,
	beq	.L462	@,
	ldr	r1, [r1, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	bne	.L462	@,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp150,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp150,
	strb	r3, [r4, #0]	@ InstID, <variable>.s32DispLoopEnable
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r5, [r2, #0]	@ pstInst, s_pFspInst
	ldr	r3, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L464	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L464:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	add	r5, r5, #60	@ tmp153, pstInst,
	mov	r6, #0	@ D.33361,
	mov	ip, r5	@ tmp154, tmp153
	stmia	ip!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp154,,,,
	ldr	r2, [r4, #0]	@ tmp156,* pstFspInstCfg
	str	r2, [ip, #0]	@ tmp156, <variable>.stInstCfg
.L460:
	mov	r0, r6	@, D.33361
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L462:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #488	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC53	@,
	movt	r3, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.33361,
	b	.L460	@
.L466:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #485	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ D.33361,
	b	.L460	@
.L467:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #486	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r3, #:upper16:.LC52	@,
	mvn	r6, #0	@ D.33361,
	bl	dprint_vfmw	@
	b	.L460	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L489	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp162,
	movt	r6, #:upper16:.LANCHOR0	@ tmp162,
	ldr	r8, [r6, #0]	@ D.33260, s_pFspInst
	cmp	r8, #0	@ D.33260,
	addne	r4, r8, #27648	@ ivtmp.1706, D.33260,
	addne	r4, r4, #160	@ ivtmp.1706, ivtmp.1706,
	movne	r7, r6	@ tmp163, tmp162
	bne	.L476	@,
	b	.L493	@
.L474:
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.35212
.L473:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L472	@,
	ldr	r3, [r6, #16]	@ D.35218, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1712, <variable>.PhyAddr
	cmp	r3, #0	@ D.35218,
	beq	.L491	@,
	mov	r0, #0	@,
	blx	r3	@ D.35218
.L472:
	ldr	r1, [r4, #52]	@ D.33264, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp167, i,
	add	r4, r4, #52	@ tmp168, ivtmp.1706,
	cmp	r1, #0	@ D.33264,
	beq	.L479	@,
	ldr	r2, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L479	@,
	ldrsb	ip, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L480	@,
	ldr	r3, [r7, #20]	@ D.35212, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.35212,
	beq	.L487	@,
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.35212
.L480:
	ldrsb	lr, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L479	@,
	ldr	r3, [r6, #16]	@ D.35218, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1712, <variable>.PhyAddr
	cmp	r3, #0	@ D.35218,
	beq	.L486	@,
	mov	r0, #0	@,
	blx	r3	@ D.35218
.L479:
	add	r5, r5, #1	@ i, tmp167,
	add	r4, r4, #52	@ ivtmp.1706, tmp168,
	cmp	r5, #64	@ i,
	beq	.L492	@,
.L476:
	ldr	r1, [r4, #0]	@ D.33264, <variable>.PhyAddr
	cmp	r1, #0	@ D.33264,
	beq	.L472	@,
	ldr	r3, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L472	@,
	ldrsb	r0, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	beq	.L473	@,
	ldr	r3, [r7, #20]	@ D.35212, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.35212,
	bne	.L474	@,
	mov	r0, r3	@, D.35212
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L473	@
.L492:
	mov	r0, r8	@, D.33260
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.33258,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L491:
	mov	r0, r3	@, D.35218
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L472	@
.L487:
	mov	r0, r3	@, D.35212
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	b	.L480	@
.L486:
	mov	r0, r3	@, D.35218
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	b	.L479	@
.L489:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #325	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33258,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L493:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #326	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33258,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	mov	r1, #4	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	add	r0, r4, #32	@, tmp133,
	mov	r1, #8	@,
	bl	__memzero	@
	mvn	r2, #0	@ movhi	@,
	mov	r3, #0	@ tmp140,
	add	r0, r4, #8	@, tmp133,
	mov	r1, #16	@,
	strh	r2, [r4, #34]	@ movhi	@, <variable>.history
	str	r3, [r4, #4]	@ tmp140, g_IsFrameIntfValid
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
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ InstID, InstID
	.pad #68
	sub	sp, sp, #68	@,,
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bne	.L612	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp742,
	movt	r7, #:upper16:.LANCHOR0	@ tmp742,
	ldr	r3, [r7, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L613	@,
	movw	r8, #:lower16:s_pstVfmwChan	@ tmp745,
	movt	r8, #:upper16:s_pstVfmwChan	@ tmp745,
	add	r0, r7, #24	@, tmp742,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r8, #0]	@ pretmp.1754, s_pstVfmwChan
	ldr	r5, [r7, #0]	@ pstInst, s_pFspInst
	add	r1, r2, #209920	@ ivtmp.1834, pretmp.1754,
	ldr	r0, [r2, #1580]	@ pretmp.1756, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #824	@ ivtmp.1834, ivtmp.1834,
	mov	r3, r5	@ ivtmp.1887, pstInst
	b	.L504	@
.L500:
	ldrsb	lr, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L501	@,
	ldrsb	sl, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	sl, #0	@ <variable>.s32DispState,
	beq	.L601	@,
.L501:
	add	r4, r4, #1	@ i.1870, i.1870,
	cmp	r0, #1	@ pretmp.1756,
	mov	r3, r4	@ tmp777, i.1870
	beq	.L614	@,
.L578:
	ldrsb	lr, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L579	@,
	ldrsb	sl, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	sl, #0	@ <variable>.s32DispState,
	beq	.L601	@,
.L579:
	add	r4, r3, #1	@ i.1870, tmp777,
	add	r1, ip, #16	@ ivtmp.1834, tmp779,
	cmp	r4, #64	@ i.1870,
	add	r3, r2, #432	@ ivtmp.1887, tmp778,
	beq	.L502	@,
.L504:
	cmp	r0, #1	@ pretmp.1756,
	add	r2, r3, #432	@ tmp778, ivtmp.1887,
	add	ip, r1, #16	@ tmp779, ivtmp.1834,
	bne	.L500	@,
	ldr	lr, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #0	@ <variable>.eFrameState,
	beq	.L500	@,
	add	r4, r4, #1	@ i.1870, i.1870,
	cmp	r0, #1	@ pretmp.1756,
	mov	r3, r4	@ tmp777, i.1870
	bne	.L578	@,
.L614:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L578	@,
	add	r4, r3, #1	@ i.1870, tmp777,
	add	r1, ip, #16	@ ivtmp.1834, tmp779,
	cmp	r4, #64	@ i.1870,
	add	r3, r2, #432	@ ivtmp.1887, tmp778,
	bne	.L504	@,
.L502:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	ldr	r0, .L626	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L601:
	mov	r1, #432	@ tmp226,
	mul	r3, r1, r4	@ tmp225, tmp226, i.1870
	add	ip, r3, #96	@ tmp239, tmp225,
	add	r3, r3, r5	@ tmp227, tmp225, pstInst
	add	r0, r5, ip	@ tmp240, pstInst, tmp239
	add	r1, r3, #96	@ tmp228, tmp227,
	cmp	r0, #0	@ tmp240,
	strb	r4, [r1, #3]	@ i.1870, <variable>.s32LogicFsID
	strb	sl, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L502	@,
	add	ip, r3, #504	@ tmp248, tmp227,
	add	r0, r3, #512	@ tmp260, tmp227,
	cmp	r6, #0	@ NeedPhyFs,
	str	sl, [r3, #504]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	sl, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	sl, [r3, #512]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	sl, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	bne	.L615	@,
	add	lr, r5, #27648	@ D.34386, pstInst,
	mov	fp, #34560	@ tmp294,
	add	r2, lr, #96	@ D.34386, D.34386,
	str	r2, [r3, #512]	@ D.34386, <variable>.pstTfOutFs
	str	r2, [ip, #4]	@ D.34386, <variable>.pstDispOutFs
	mov	r9, #1	@ tmp310,
	str	r2, [r3, #504]	@ D.34386, <variable>.pstDecodeFs
	ldr	sl, [r5, fp]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	sl, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r7, [r5, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r9, [r1, #2]	@ tmp310, <variable>.IsDummyFs
	sub	r6, r7, #1	@ tmp303, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp303, <variable>.PmvIdc
.L508:
	mov	r6, #432	@ tmp493,
	mov	r3, #1	@ tmp496,
	mul	r7, r6, r4	@ tmp492, tmp493, i.1870
	mov	r1, #392	@,
	add	r6, r7, r5	@ tmp494, tmp492, pstInst
	add	fp, r7, #104	@ tmp554, tmp492,
	add	ip, r6, #504	@ tmp502, tmp494,
	add	r7, r6, #96	@ tmp495, tmp494,
	add	sl, r6, #152	@, tmp494,
	add	r0, r5, fp	@, pstInst, tmp554
	ldr	lr, [ip, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r2, r6, #136	@ tmp601, tmp494,
	strb	r3, [r7, #1]	@ tmp496, <variable>.s32DispState
	add	fp, r6, #208	@ tmp589, tmp494,
	str	sl, [sp, #16]	@, %sfp
	add	r9, r6, #224	@ tmp642, tmp494,
	strb	r3, [lr, #2]	@ tmp496, <variable>.DispState
	add	lr, r6, #144	@, tmp494,
	str	lr, [sp, #20]	@, %sfp
	add	sl, r6, #216	@ tmp670, tmp494,
	str	r3, [r6, #500]	@ tmp496, <variable>.eLfsPmvState
	ldr	r4, [r6, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r5, #36]	@ D.34474, <variable>.u32InstTick
	str	r3, [r6, #496]	@ D.34474, <variable>.u32Tick
	str	r3, [r4, #44]	@ D.34474, <variable>.u32Tick
	ldr	lr, [ip, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r4, [r6, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	str	r4, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r5, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	r4, r3, #1	@ tmp536, <variable>.u32InstTick,
	str	r4, [r5, #36]	@ tmp536, <variable>.u32InstTick
	ldr	lr, [r6, #512]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [ip, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	r5, [r6, #504]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [sp, #8]	@,
	str	r2, [sp, #12]	@,
	bl	__memzero	@
	ldrsb	r2, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r2, [r6, #280]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r3, [r5, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r3, [r6, #248]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	ip, [r5, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	ip, [r6, #252]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #276]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	r2, [r5, #12]	@ D.34490, <variable>.PhyAddr
	str	r2, [r6, #208]	@ D.34490, <variable>.stDispImg.luma_phy_addr
	mov	r0, r2	@, D.34490
	ldr	r1, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, r2	@ tmp596, <variable>.ChromOffset, D.34490
	str	r3, [fp, #4]	@ tmp596, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [fp, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #12]	@,
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.34503, <variable>.PhyAddr
	str	r2, [r6, #192]	@ D.34503, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r1, r2, r1	@ D.34506, D.34503, <variable>.ChromOffset
	str	r1, [r6, #196]	@ D.34506, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r3, r0, r2	@ tmp630, <variable>.Stride, D.34503
	str	r3, [r6, #200]	@ tmp630, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, r1, ip	@ tmp637, D.34506, <variable>.Stride
	str	r0, [r6, #204]	@ tmp637, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r3, [r4, #12]	@ temp.1874, <variable>.PhyAddr
	str	r3, [r6, #224]	@ temp.1874, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r3	@, temp.1874
	ldr	r2, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r2, r3	@ tmp649, <variable>.ChromOffset, temp.1874
	str	ip, [r9, #4]	@ tmp649, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [sp, #16]	@, %sfp
	str	r0, [r1, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [sp, #8]	@,
	ldr	r3, [r0, #12]	@ D.34521, <variable>.PhyAddr
	str	r3, [r6, #216]	@ D.34521, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r3	@, D.34521
	ldr	r2, [r5, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r4, r2, r3	@ tmp677, <variable>.ChromOffset, D.34521
	str	r4, [sl, #4]	@ tmp677, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r4, [sp, #20]	@, %sfp
	add	r1, r6, #464	@ tmp698, tmp494,
	add	ip, r6, #472	@ tmp716, tmp494,
	mov	r3, #0	@ tmp705,
	movw	r2, #:lower16:211828	@ tmp731,
	movt	r2, #:upper16:211828	@ tmp731,
	str	r0, [r4, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, [r5, #48]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r3, [ip, #4]	@ tmp705, <variable>.stDispImg.u32Circumrotate
	str	r3, [r1, #4]	@ tmp705, <variable>.stDispImg.u32Is1D
	str	r0, [r6, #464]	@ <variable>.ImgSize, <variable>.stDispImg.ImgSize
	str	r3, [r6, #480]	@ tmp705, <variable>.stDispImg.u32IsLastFrame
	str	r3, [r6, #472]	@ tmp705, <variable>.stDispImg.is_processed_by_dnr
	ldr	ip, [r8, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, .L626	@,
	ldr	r1, [ip, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	str	r1, [r6, #488]	@ <variable>.u32ChanTick, <variable>.stDispImg.u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.34358, <variable>.s32LogicFsID
.L498:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L615:
	ldrsb	lr, [r5, #10]	@ temp.1885, <variable>.s32DecFsNum
	cmp	lr, #0	@ temp.1885,
	ble	.L507	@,
	ldr	r6, [r8, #0]	@ pretmp.1768, s_pstVfmwChan
	add	r0, r5, #27648	@ ivtmp.1819, pstInst,
	add	r3, r0, #150	@ ivtmp.1819, ivtmp.1819,
	sub	ip, lr, #1	@ tmp771, temp.1885,
	add	r1, r6, #209920	@ ivtmp.1822, pretmp.1768,
	and	ip, ip, #1	@ tmp773, tmp771,
	ldr	r0, [r6, #1580]	@ pretmp.1770, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #824	@ ivtmp.1822, ivtmp.1822,
	cmp	r0, #1	@ pretmp.1770,
	beq	.L616	@,
.L568:
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L617	@,
.L569:
	mov	sl, #1	@ i.1871,
	cmp	sl, lr	@ i.1871, temp.1885
	add	r3, r3, #52	@ ivtmp.1819, ivtmp.1819,
	add	r1, r1, #16	@ ivtmp.1822, ivtmp.1822,
	bge	.L599	@,
	cmp	ip, #0	@ tmp773,
	beq	.L511	@,
	cmp	r0, sl	@ pretmp.1770,
	beq	.L600	@,
.L571:
	ldrsb	ip, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L572	@,
	ldrsb	r6, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r6, #0	@ <variable>.DispState,
	beq	.L598	@,
.L572:
	add	sl, sl, #1	@ i.1871, i.1871,
	add	r3, r3, #52	@ ivtmp.1819, ivtmp.1819,
	cmp	sl, lr	@ i.1871, temp.1885
	add	r1, r1, #16	@ ivtmp.1822, ivtmp.1822,
	blt	.L511	@,
.L599:
	mov	r3, #432	@ tmp330,
	mla	r6, r3, r4, r5	@ tmp331, tmp330, i.1870, pstInst
	ldr	sl, [r6, #504]	@ prephitmp.1839, <variable>.pstDecodeFs
.L507:
	cmp	sl, #0	@ prephitmp.1839,
	beq	.L618	@,
.L512:
	mov	r6, #432	@ tmp354,
	add	r0, r5, #34304	@ tmp357, pstInst,
	mla	r2, r6, r4, r5	@ tmp355, tmp354, i.1870, pstInst
	add	lr, r0, #148	@ tmp357, tmp357,
	str	lr, [r2, #512]	@ tmp357, <variable>.pstTfOutFs
	ldrsb	ip, [r5, #13]	@ temp.1847, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.1847,
	ble	.L521	@,
	ldrsb	r3, [r5, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.34428, temp.1847
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.1762, <variable>.IsPmvInUse
	beq	.L523	@,
	tst	ip, #1	@ temp.1847,
	mov	r2, r5	@ ivtmp.1833, pstInst
	mov	r3, #0	@ i.1848,
	bne	.L524	@,
	ldrb	r1, [r5, #15]	@ zero_extendqisi2	@ D.34423, <variable>.IsPmvInUse
	mov	r3, #1	@ i.1848,
	add	r2, r5, r3	@ ivtmp.1833, pstInst,
	cmp	r1, #0	@ D.34423,
	bne	.L524	@,
.L595:
	uxtb	r1, r3	@ prephitmp.1762, i.1848
.L523:
	mov	r2, #432	@ tmp363,
	add	r0, r3, #8640	@ tmp372, i.1848,
	mla	ip, r2, r4, r5	@ tmp364, tmp363, i.1870, pstInst
	movw	lr, #34556	@ tmp379,
	strb	r1, [ip, #100]	@ prephitmp.1762, <variable>.PmvIdc
	ldr	r6, [r5, r0, asl #2]	@ tmp373, <variable>.PmvAddr
	str	r6, [ip, #516]	@ tmp373, <variable>.PmvAddr
	ldr	r1, [r5, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [ip, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r5, #13]	@ D.34428, <variable>.s32PmvNum
	cmp	lr, r3	@ D.34428, i.1848
	ble	.L525	@,
.L521:
	ldrsb	r3, [r5, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L529	@,
.L621:
	ldrsb	sl, [r5, #11]	@ D.34447, <variable>.s32DispFsNum
	cmp	sl, #0	@ D.34447,
	ble	.L610	@,
	add	ip, r5, #30976	@ tmp411, pstInst,
	cmn	ip, #148	@ tmp411,
	beq	.L532	@,
	movw	r6, #31124	@ tmp412,
	ldr	lr, [r5, r6]	@ tmp414,
	bic	r1, lr, #-16777216	@ tmp413, tmp414,
	cmp	r1, #0	@ tmp413,
	beq	.L532	@,
	tst	sl, #1	@ D.34447,
	add	r3, ip, #200	@ ivtmp.1788, tmp411,
	mov	r2, #0	@ i,
	mov	lr, #52	@ tmp747,
	bne	.L536	@,
	cmp	r3, #0	@ ivtmp.1788,
	mov	r2, #1	@ i,
	mov	r1, r2	@ i.1842, i
	beq	.L535	@,
	add	r6, lr, r5	@ tmp802, tmp747, pstInst
	add	r3, ip, #252	@ ivtmp.1788, tmp411,
	add	r0, r6, #30976	@ tmp803, tmp802,
	add	r6, r0, #144	@ tmp803, tmp803,
	ldr	ip, [r6, #4]	@ tmp804,
	bic	r0, ip, #-16777216	@ tmp805, tmp804,
	cmp	r0, #0	@ tmp805,
	bne	.L536	@,
.L535:
	mov	r2, #432	@ tmp440,
	mov	r6, #52	@ tmp434,
	mla	r3, r2, r4, r5	@ tmp441, tmp440, i.1870, pstInst
	mla	r1, r6, r1, r5	@ tmp437, tmp434, i.1842, pstInst
	add	lr, r1, #30976	@ prephitmp.1759, tmp437,
	add	r6, lr, #148	@ prephitmp.1759, prephitmp.1759,
	str	r6, [r3, #508]	@ prephitmp.1759, <variable>.pstDispOutFs
	b	.L531	@
.L625:
	ldr	r6, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	bne	.L510	@,
.L509:
	ldrsb	r6, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r6, #0	@ <variable>.IsDecRef,
	bne	.L510	@,
	ldrsb	r3, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L598	@,
.L510:
	add	sl, sl, #1	@ i.1871, i.1871,
	cmp	r0, #1	@ pretmp.1770,
	mov	r3, sl	@ tmp774, i.1871
	beq	.L619	@,
.L575:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L576	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L598	@,
.L576:
	add	sl, r3, #1	@ i.1871, tmp774,
	add	r1, ip, #16	@ ivtmp.1822, tmp776,
	cmp	sl, lr	@ i.1871, temp.1885
	add	r3, r2, #52	@ ivtmp.1819, tmp775,
	bge	.L599	@,
.L511:
	cmp	r0, #1	@ pretmp.1770,
	add	r2, r3, #52	@ tmp775, ivtmp.1819,
	add	ip, r1, #16	@ tmp776, ivtmp.1822,
	bne	.L509	@,
	b	.L625	@
.L526:
	ldrb	r0, [r2, #15]	@ zero_extendqisi2	@ D.34423, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.1833, tmp765,
	cmp	r0, #0	@ D.34423,
	beq	.L595	@,
	ldrb	r6, [r1, #15]	@ zero_extendqisi2	@ D.34423, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.1848, i.1848,
	cmp	r6, #0	@ D.34423,
	beq	.L595	@,
.L524:
	add	r3, r3, #1	@ i.1848, i.1848,
	add	r1, r2, #1	@ tmp765, ivtmp.1833,
	cmp	r3, ip	@ i.1848, temp.1847
	blt	.L526	@,
.L525:
	cmp	lr, #0	@ D.34428,
	ble	.L527	@,
	ldrsb	ip, [r5, #13]	@ temp.1851, <variable>.s32PmvNum
	mov	r2, #1	@ i.1852,
	mov	r0, #0	@ tmp748,
	strb	r0, [r5, #14]	@ tmp748, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.1851,
	sub	r3, ip, #1	@ tmp756, temp.1851,
	and	r1, r3, r2	@ tmp758, tmp756,
	add	r3, r5, r2	@ ivtmp.1855, pstInst,
	ble	.L527	@,
	cmp	r1, #0	@ tmp758,
	beq	.L528	@,
	mov	r2, #2	@ i.1852,
	cmp	ip, r2	@ temp.1851, i.1852
	strb	r0, [r3, #14]	@ tmp748, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1855, ivtmp.1855,
	ble	.L527	@,
.L528:
	add	r2, r2, #2	@ i.1852, i.1852,
	add	r1, r3, #1	@ tmp759, ivtmp.1855,
	cmp	ip, r2	@ temp.1851, i.1852
	strb	r0, [r3, #14]	@ tmp748, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp748, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1855, tmp759,
	bgt	.L528	@,
.L527:
	mov	r0, #432	@ tmp385,
	mov	ip, #34560	@ tmp395,
	mla	lr, r0, r4, r5	@ tmp386, tmp385, i.1870, pstInst
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
	bne	.L621	@,
.L529:
	mov	r0, #432	@ tmp417,
	mla	r2, r0, r4, r5	@ tmp418, tmp417, i.1870, pstInst
	ldr	ip, [r2, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [r2, #508]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L534:
	ldr	lr, [r7, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r6, #:lower16:.LANCHOR0	@ tmp468,
	movt	r6, #:upper16:.LANCHOR0	@ tmp468,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L508	@,
	ldr	r3, [r6, #12]	@ D.35236, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.35236,
	beq	.L622	@,
	mov	r0, #0	@,
	add	r1, sp, #24	@,,
	blx	r3	@ D.35236
	cmp	r0, #0	@,
	bne	.L540	@,
	ldr	r7, [sp, #24]	@ D.34469, stInfo.stFrameInfo.PhyAddr
	cmp	r7, #0	@ D.34469,
	beq	.L623	@,
	mov	r9, #432	@ tmp481,
	mla	fp, r9, r4, r5	@ tmp482, tmp481, i.1870, pstInst
	ldr	sl, [fp, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r7, [sl, #12]	@ D.34469, <variable>.PhyAddr
	ldr	r7, [sp, #40]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r7, [fp, #516]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
	b	.L508	@
.L537:
	cmp	r3, #0	@ ivtmp.1788,
	add	r0, r0, #30976	@ tmp430, tmp429,
	mla	ip, lr, r2, r5	@ tmp808, tmp747, i, pstInst
	add	r3, r3, #104	@ ivtmp.1788, ivtmp.1788,
	add	r0, r0, #144	@ tmp430, tmp430,
	beq	.L535	@,
	ldr	r0, [r0, #4]	@ tmp432,
	add	ip, ip, #30976	@ tmp809, tmp808,
	add	ip, ip, #144	@ tmp809, tmp809,
	bic	r0, r0, #-16777216	@ tmp431, tmp432,
	cmp	r0, #0	@ tmp431,
	beq	.L535	@,
	cmp	r6, #0	@ tmp754,
	mov	r1, r2	@ i.1842, i
	beq	.L535	@,
	ldr	r0, [ip, #4]	@ tmp810,
	bic	ip, r0, #-16777216	@ tmp811, tmp810,
	cmp	ip, #0	@ tmp811,
	beq	.L535	@,
.L536:
	add	r1, r2, #1	@ tmp755, i,
	add	r6, r3, #52	@ tmp754, ivtmp.1788,
	cmp	sl, r1	@ D.34447, tmp755
	add	r2, r1, #1	@ i, i.1842,
	mla	r0, lr, r1, r5	@ tmp429, tmp747, i.1842, pstInst
	bgt	.L537	@,
.L610:
	mov	ip, #432	@ tmp445,
	mla	r0, ip, r4, r5	@ tmp446, tmp445, i.1870, pstInst
	ldr	r6, [r0, #508]	@ prephitmp.1759, <variable>.pstDispOutFs
.L531:
	cmp	r6, #0	@ prephitmp.1759,
	bne	.L534	@,
	mov	r0, r6	@, prephitmp.1759
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	dprint_vfmw	@
	add	r1, sp, #64	@ tmp452,,
	mov	r0, r6	@, prephitmp.1759
	add	r2, sp, #52	@,,
	str	r6, [r1, #-4]!	@ prephitmp.1759, RefNum
	add	r3, sp, #56	@,,
	str	r6, [sp, #56]	@ prephitmp.1759, NewNum
	str	r6, [sp, #52]	@ prephitmp.1759, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [sp, #52]	@ ReadNum, ReadNum
	ldr	r2, [sp, #60]	@ RefNum, RefNum
	ldr	r0, [sp, #56]	@ NewNum, NewNum
	add	ip, r2, r3	@ tmp455, RefNum, ReadNum
	ldrsb	r3, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, ip, #2	@ tmp458, tmp455,
	add	r2, r1, r0	@ tmp459, tmp458, NewNum
	cmp	r2, r3	@ tmp459, <variable>.s32DispFsNum
	bge	.L538	@,
	mov	r0, r6	@, prephitmp.1759
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #56]	@ NewNum, NewNum
	mov	r0, r6	@, prephitmp.1759
	movw	r1, #:lower16:.LC59	@,
	ldr	r2, [sp, #60]	@, RefNum
	movt	r1, #:upper16:.LC59	@,
	str	r3, [sp, #0]	@ NewNum,
	ldrsb	ip, [r5, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	ldr	r3, [sp, #52]	@, ReadNum
	str	ip, [sp, #4]	@ <variable>.s32DispFsNum,
	bl	dprint_vfmw	@
	mov	r0, r6	@, prephitmp.1759
	bl	FSP_PrintContext	@
.L538:
	ldr	r0, .L626	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L619:
	ldr	r6, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	beq	.L575	@,
	b	.L576	@
.L617:
	ldrsb	r6, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r6, #0	@ <variable>.DispState,
	bne	.L569	@,
.L598:
	mov	r0, #432	@ tmp325,
	mov	r2, #52	@ tmp319,
	mla	lr, r0, r4, r5	@ tmp326, tmp325, i.1870, pstInst
	mla	ip, r2, sl, r5	@ tmp322, tmp319, i.1871, pstInst
	add	sl, ip, #27648	@ prephitmp.1839, tmp322,
	add	sl, sl, #148	@ prephitmp.1839, prephitmp.1839,
	str	sl, [lr, #504]	@ prephitmp.1839, <variable>.pstDecodeFs
	b	.L507	@
.L616:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L568	@,
	b	.L569	@
.L622:
	movw	r1, #:lower16:.LC34	@,
	mov	r0, r3	@, D.35236
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
.L540:
	ldr	r0, .L626	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L600:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L571	@,
	b	.L572	@
.L618:
	mov	r0, sl	@, prephitmp.1839
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	addle	r9, r5, #27648	@ pstPhyFs, pstInst,
	addle	r9, r9, #148	@ pstPhyFs, pstPhyFs,
	ble	.L513	@,
	add	r9, r5, #27648	@ pstPhyFs, pstInst,
	add	r9, r9, #148	@ pstPhyFs, pstPhyFs,
	mov	r6, r9	@ ivtmp.1813, pstPhyFs
.L514:
	ldrsb	r2, [r6, #0]	@, <variable>.IsDecRef
	mov	r0, #0	@,
	ldrsb	r3, [r6, #2]	@, <variable>.DispState
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	sl, sl, #1	@ i.1845, i.1845,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #52	@ ivtmp.1813, ivtmp.1813,
	cmp	ip, sl	@ <variable>.s32DecFsNum, i.1845
	bgt	.L514	@,
.L513:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	ldrsb	ip, [r5, #10]	@ D.34418, <variable>.s32DecFsNum
	mov	r2, r9	@ pstPhyFs, pstPhyFs
	cmp	ip, #0	@ D.34418,
	movle	lr, #0	@ prephitmp.1764,
	ble	.L516	@,
	tst	ip, #1	@ D.34418,
	mov	lr, #0	@ i.1880,
	mov	r0, lr	@ i.1879, i.1880
	mvn	r1, #0	@ LeastTick.1882,
	bne	.L520	@,
	ldr	r3, [r9, #44]	@ LeastTick, <variable>.u32Tick
	add	r2, r9, #52	@ pstPhyFs, pstPhyFs,
	mov	r0, #1	@ i.1879,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, r1	@, LeastTick, LeastTick.1882
	mov	r1, r3	@ LeastTick.1882, LeastTick
	b	.L520	@
.L624:
	ldr	r1, [r6, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r1, r3	@ LeastTick, LeastTick
	movcs	r1, r3	@ LeastTick, LeastTick
	movcc	lr, r2	@ i.1880, tmp769
.L597:
	add	r0, r2, #1	@ i.1879, tmp769,
	add	r2, r6, #52	@ pstPhyFs, tmp770,
.L520:
	ldr	r3, [r2, #44]	@ LeastTick, <variable>.u32Tick
	add	r6, r2, #52	@ tmp770, pstPhyFs,
	add	r2, r0, #1	@ tmp769, i.1879,
	cmp	r3, r1	@ LeastTick, LeastTick.1882
	movcc	lr, r0	@ i.1880, i.1879
	movcs	r3, r1	@ LeastTick, LeastTick.1882
	cmp	ip, r2	@ D.34418, tmp769
	bgt	.L624	@,
.L516:
	mov	ip, #432	@ tmp343,
	mov	r3, #52	@ tmp347,
	mla	r2, ip, r4, r5	@ tmp344, tmp343, i.1870, pstInst
	mla	r6, r3, lr, r5	@ tmp350, tmp347, prephitmp.1764, pstInst
	add	r0, r6, #27648	@ tmp351, tmp350,
	add	lr, r0, #148	@ tmp351, tmp351,
	str	lr, [r2, #504]	@ tmp351, <variable>.pstDecodeFs
	b	.L512	@
.L612:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2209	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L532:
	mov	r1, #0	@ i.1842,
	b	.L535	@
.L613:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #2210	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L623:
	add	r0, r6, #24	@, tmp468,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r7	@, D.34469
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34358,
	b	.L498	@
.L627:
	.align	2
.L626:
	.word	.LANCHOR0+24
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
	mov	r7, r0	@ InstID, InstID
	add	r0, sp, #48	@,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r7, #0	@ InstID,
	bne	.L683	@,
	movw	fp, #:lower16:.LANCHOR0	@ tmp180,
	movt	fp, #:upper16:.LANCHOR0	@ tmp180,
	movw	ip, #34652	@ tmp182,
	movw	r3, #34648	@ tmp181,
	ldr	r6, [fp, #0]	@ pstInst, s_pFspInst
	movw	r5, #34644	@ tmp183,
	movw	r1, #34656	@ tmp184,
	ldr	r8, [r6, ip]	@, <variable>.MemSize
	ldrsb	lr, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	fp, [r6, r3]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r3, #34640	@ tmp185,
	str	r8, [sp, #44]	@, %sfp
	cmp	lr, #0	@ <variable>.s32DecFsNum,
	ldr	r2, [r6, r5]	@, <variable>.TotalMemUsed
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp336,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp336,
	str	r2, [sp, #36]	@, %sfp
	ldr	r0, [r6, r1]	@, <variable>.StrideByte
	str	r0, [sp, #32]	@, %sfp
	ldr	r5, [r6, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	ble	.L631	@,
	add	r4, r6, #27648	@ ivtmp.1937, pstInst,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp342,
	add	r8, r4, #160	@ ivtmp.1937, ivtmp.1937,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp342,
	mov	r9, #1	@ tmp343,
	b	.L635	@
.L684:
	ldr	r2, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	ip, r1, r2	@ tmp193, tmp192, s_pstVfmwChan
	add	lr, ip, #209920	@ tmp194, tmp193,
	add	r2, lr, #824	@ tmp194, tmp194,
	str	r0, [r2, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1937, ivtmp.1937,
	add	lr, r1, ip	@ tmp200, tmp192, s_pstVfmwChan
	add	ip, lr, #209920	@ tmp201, tmp200,
	add	r1, ip, #824	@ tmp201, tmp201,
	str	r2, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, r3, asl #4	@, tmp213, s_pstVfmwChan, tmp205,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	ble	.L631	@,
.L635:
	ldr	r1, [r8, #0]	@, <variable>.PhyAddr
	mov	r2, r5	@, s32ImgSize
	mov	r0, #0	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp336,
	bl	DNR_FsIsInImgQue	@
	add	r2, r7, #13120	@ tmp205, i,
	mov	r1, r7, asl #4	@ tmp192, i,
	add	r3, r2, #52	@ tmp205, tmp205,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp336,
	mov	ip, r1	@ tmp219, tmp192
	mov	r2, r3	@ tmp232, tmp205
	cmp	r0, #0	@ s32UsingCount
	beq	.L684	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp336,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp336,
	ble	.L634	@,
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	r1, r1, r3	@ tmp220, tmp219, s_pstVfmwChan
	add	lr, r1, #209920	@ tmp221, tmp220,
	add	r3, lr, #824	@ tmp221, tmp221,
	str	r9, [r3, #0]	@ tmp343, <variable>.eFrameState
	ldr	r1, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1937, ivtmp.1937,
	add	lr, ip, r1	@ tmp227, tmp219, s_pstVfmwChan
	add	r1, lr, #209920	@ tmp228, tmp227,
	add	ip, r1, #824	@ tmp228, tmp228,
	str	r3, [ip, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, r3, r2, asl #4	@, tmp240, s_pstVfmwChan, tmp232,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	bgt	.L635	@,
.L631:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp245,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp245,
	ldr	r7, [r4, #0]	@ temp.1949, s_pstVfmwChan
	ldr	ip, [r8, #36]	@ D.33734, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.33734,
	ldr	r1, [r7, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r7, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r7, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L636	@,
	mov	lr, #0	@ tmp246,
	str	r1, [sp, #4]	@ s32DnrNum,
	add	r0, sp, #48	@ tmp250,,
	mov	r1, #64	@ tmp251,
	str	r0, [sp, #16]	@ tmp250,
	mvn	r7, #0	@ tmp248,
	str	r1, [sp, #20]	@ tmp251,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp246,
	mvn	r1, #-2147483648	@,
	str	r7, [sp, #12]	@ tmp248,
	str	lr, [sp, #0]	@ tmp246,
	blx	ip	@ D.33734
	cmp	r0, #0	@,
	beq	.L637	@,
.L636:
	movw	r1, #:lower16:.LC63	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC63	@,
	ldr	r2, .L687	@,
	bl	dprint_vfmw	@
.L637:
	ldr	r8, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r1, [sp, #32]	@, %sfp
	str	r8, [lr, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	ldr	ip, [sp, #28]	@, %sfp
	add	r3, r0, r1	@ tmp259,,
	ldr	r7, [r4, #0]	@ temp.1951, s_pstVfmwChan
	add	r3, r3, fp	@ D.33741, tmp259, s32VdhMemAddr
	ldr	r2, [ip, #0]	@ D.33740, <variable>.FrameAddr
	ldr	r8, [r7, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	cmp	r2, r3	@ D.33740, D.33741
	rsbgt	r2, r3, r2	@ s32FreeSize, D.33741, D.33740
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, s32DnrSize
	bge	.L682	@,
	ldr	r0, [sp, #40]	@, %sfp
	cmp	r0, #0	@,
	beq	.L641	@,
	ble	.L642	@,
	ldr	ip, [sp, #28]	@, %sfp
	sub	r1, r0, #1	@ tmp260,,
	add	lr, ip, r1, asl #3	@, D.33755,, tmp260,
	ldr	r2, [ip, r1, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	ip, [lr, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, ip, r2	@ prephitmp.1912, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r3, r2	@ D.33741, prephitmp.1912
	bgt	.L641	@,
.L643:
	ldr	lr, [sp, #44]	@, %sfp
	add	r1, lr, fp	@ tmp269,, s32VdhMemAddr
	rsb	r3, r2, r1	@ tmp270, prephitmp.1912, tmp269
	cmp	r8, r3	@ s32DnrSize, tmp270
	strle	r2, [r7, #236]	@ prephitmp.1912, <variable>.s32OffLineDnrMemAddr
	movle	r0, #0	@ D.33713,
	ble	.L630	@,
.L644:
	cmp	r5, r8	@ s32ImgSize, s32DnrSize
	movge	r0, #1	@,
	strge	r0, [sp, #28]	@, %sfp
	blt	.L685	@,
.L646:
	ldrsb	ip, [r6, #10]	@ temp.1957, <variable>.s32DecFsNum
	cmp	ip, #0	@ temp.1957,
	ble	.L648	@,
	ldr	r1, [sp, #28]	@, %sfp
	cmp	r1, ip	@, temp.1957
	bgt	.L658	@,
	mov	r3, r1	@ s32DnrLockFrmNum.1940,
	mov	r2, #0	@ i.1953,
	cmp	r3, r2	@ s32DnrLockFrmNum.1940, i.1953
	mov	r1, r2	@ j.1963, i.1953
	mov	sl, r3	@ s32DnrLockFrmNum, s32DnrLockFrmNum.1940
	ble	.L686	@,
.L676:
	mov	r8, r2, asl #4	@ tmp333, i.1953,
	add	r0, r8, r7	@ tmp282, tmp333, temp.1951
	add	lr, r0, #209920	@ tmp283, tmp282,
	add	r0, lr, #824	@ tmp283, tmp283,
	ldr	r0, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	bne	.L651	@,
	mvn	lr, r2	@ tmp350, i.1953
	add	r0, lr, r3	@ tmp349, tmp350, s32DnrLockFrmNum.1940
	add	r1, r8, #209920	@ tmp286, tmp333,
	tst	r0, #1	@ tmp349,
	add	lr, r1, #824	@ tmp286, tmp286,
	mov	r1, r2	@ j.1955, i.1953
	add	r0, r7, lr	@ ivtmp.1934, temp.1951, tmp286
	beq	.L652	@,
	ldr	r9, [r0, #16]!	@ temp.1962, <variable>.eFrameState
	add	r1, r2, #1	@ j.1955, i.1953,
	cmp	r9, #0	@ temp.1962,
	beq	.L652	@,
	b	.L651	@
.L654:
	ldr	r9, [r0, #16]!	@ temp.1962, <variable>.eFrameState
	cmp	r9, #0	@ temp.1962,
	bne	.L651	@,
	ldr	r9, [r0, #16]!	@ temp.1962, <variable>.eFrameState
	add	r1, r1, #1	@ j.1955, j.1955,
	cmp	r9, #0	@ temp.1962,
	bne	.L651	@,
.L652:
	add	r1, r1, #1	@ j.1955, j.1955,
	cmp	r3, r1	@ s32DnrLockFrmNum.1940, j.1955
	bgt	.L654	@,
.L650:
	add	lr, r8, r7	@ tmp290, tmp333, temp.1951
	cmp	r3, r2	@ s32DnrLockFrmNum.1940, i.1953
	add	r0, lr, #209920	@ tmp291, tmp290,
	add	r1, r0, #824	@ tmp291, tmp291,
	ldr	ip, [r1, #4]	@ <variable>.s32FrameAddr, <variable>.s32FrameAddr
	str	ip, [r7, #236]	@ <variable>.s32FrameAddr, <variable>.s32OffLineDnrMemAddr
	ble	.L656	@,
	mov	sl, #52	@ tmp294,
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mul	lr, sl, r2	@ tmp293, tmp294, i.1953
	mov	sl, r2, asl #4	@ tmp301, i.1953,
	add	ip, sl, fp	@ tmp302, tmp301, s_pstVfmwChan
	mvn	r7, r2	@ tmp345, i.1953
	add	r0, ip, #209920	@ tmp303, tmp302,
	mov	fp, #2	@ tmp338,
	add	r8, lr, #27648	@ tmp295, tmp293,
	add	ip, r0, #824	@ tmp303, tmp303,
	add	r9, r8, #144	@ tmp295, tmp295,
	add	lr, r7, r3	@ tmp344, tmp345, s32DnrLockFrmNum.1940
	add	r8, r6, r9	@ tmp297, pstInst, tmp295
	and	r7, lr, #1	@, tmp344,
	add	r1, r2, #13120	@ tmp313, i.1953,
	ldr	r9, [r8, #16]	@ s32FrameStartAddr.1964, <variable>.PhyAddr
	add	r0, r1, #52	@ tmp313, tmp313,
	str	fp, [ip, #0]	@ tmp338, <variable>.eFrameState
	add	r1, r2, #1	@ j, i.1953,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, r1	@ s32DnrLockFrmNum.1940, j
	str	r7, [sp, #32]	@, %sfp
	add	r7, r8, #56	@ ivtmp.1928, tmp297,
	add	ip, sl, lr	@ tmp309, tmp301, s_pstVfmwChan
	add	lr, ip, #209920	@ tmp310, tmp309,
	add	ip, lr, #824	@ tmp310, tmp310,
	str	r9, [ip, #4]	@ s32FrameStartAddr.1964, <variable>.s32FrameAddr
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r0, asl #4	@, tmp321, s_pstVfmwChan, tmp313,
	mov	ip, #0	@,
	add	r0, lr, #4	@ tmp322, tmp321,
	str	ip, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L656	@,
	ldr	r9, [sp, #32]	@, %sfp
	cmp	r9, #0	@,
	beq	.L681	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	sl, r1, asl #4	@ tmp398, j,
	ldr	r9, [r7, #12]	@ s32FrameStartAddr.1964, <variable>.PhyAddr
	add	r0, r1, #13120	@ tmp407, j,
	add	lr, sl, ip	@ tmp399, tmp398, s_pstVfmwChan
	add	r0, r0, #52	@ tmp407, tmp407,
	add	r7, lr, #209920	@ tmp400, tmp399,
	add	r1, r1, #1	@ j, j,
	add	ip, r7, #824	@ tmp400, tmp400,
	cmp	r3, r1	@ s32DnrLockFrmNum.1940, j
	add	r7, r8, #108	@ ivtmp.1928, tmp297,
	str	fp, [ip, #0]	@ tmp338, <variable>.eFrameState
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, sl, lr	@ tmp403, tmp398, s_pstVfmwChan
	add	lr, ip, #209920	@ tmp404, tmp403,
	add	ip, lr, #824	@ tmp404, tmp404,
	str	r9, [ip, #4]	@ s32FrameStartAddr.1964, <variable>.s32FrameAddr
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r0, asl #4	@, tmp410, s_pstVfmwChan, tmp407,
	mov	ip, #0	@,
	add	r0, lr, #4	@ tmp411, tmp410,
	str	ip, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L656	@,
.L681:
	mov	r9, r6	@ pstInst, pstInst
	str	r2, [sp, #32]	@ i.1953, %sfp
.L657:
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp360, j,
	ldr	sl, [r7, #12]	@ s32FrameStartAddr.1964, <variable>.PhyAddr
	add	r0, r1, #13120	@ tmp369, j,
	add	r6, r8, ip	@ tmp361, tmp360, s_pstVfmwChan
	add	r0, r0, #52	@ tmp369, tmp369,
	add	lr, r6, #209920	@ tmp362, tmp361,
	add	r1, r1, #1	@ tmp347, j,
	add	ip, lr, #824	@ tmp362, tmp362,
	add	r2, r1, #13120	@ tmp389, tmp347,
	mov	r6, r1, asl #4	@ tmp380, tmp347,
	add	lr, r2, #52	@ tmp389, tmp389,
	str	fp, [ip, #0]	@ tmp338, <variable>.eFrameState
	add	r1, r1, #1	@ j, tmp347,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, r1	@ s32DnrLockFrmNum.1940, j
	add	ip, r8, ip	@ tmp365, tmp360, s_pstVfmwChan
	add	ip, ip, #209920	@ tmp366, tmp365,
	add	ip, ip, #824	@ tmp366, tmp366,
	str	sl, [ip, #4]	@ s32FrameStartAddr.1964, <variable>.s32FrameAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [ip, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, ip, r0, asl #4	@, tmp372, s_pstVfmwChan, tmp369,
	mov	ip, #0	@,
	str	ip, [r0, #4]	@, <variable>.s32UsingCount
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [r7, #64]	@ s32FrameStartAddr.1964, <variable>.PhyAddr
	add	r7, r7, #104	@ ivtmp.1928, ivtmp.1928,
	add	r0, r6, r0	@ tmp381, tmp380, s_pstVfmwChan
	add	r0, r0, #209920	@ tmp382, tmp381,
	add	r0, r0, #824	@ tmp382, tmp382,
	str	fp, [r0, #0]	@ tmp338, <variable>.eFrameState
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r6, r0	@ tmp385, tmp380, s_pstVfmwChan
	add	r0, r0, #209920	@ tmp386, tmp385,
	add	r6, r0, #824	@ tmp386, tmp386,
	str	ip, [r6, #4]	@ s32FrameStartAddr.1964, <variable>.s32FrameAddr
	mov	r6, #0	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [ip, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, r0, lr, asl #4	@, tmp392, s_pstVfmwChan, tmp389,
	str	r6, [r2, #4]	@, <variable>.s32UsingCount
	bgt	.L657	@,
	ldr	r2, [sp, #32]	@ i.1953, %sfp
	mov	r6, r9	@ pstInst, pstInst
.L656:
	ldrsb	ip, [r6, #10]	@ temp.1957, <variable>.s32DecFsNum
	cmp	ip, r2	@ temp.1957, i.1953
	ble	.L648	@,
	ldr	r0, [sp, #28]	@, %sfp
	add	r3, r2, r0	@ s32DnrLockFrmNum.1940, i.1953,
.L649:
	cmp	r3, ip	@ s32DnrLockFrmNum.1940, temp.1957
	movle	r0, #0	@ D.33713,
	ble	.L630	@,
	ldr	lr, [sp, #28]	@, %sfp
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC65	@,
	ldr	r2, .L687	@,
	movt	r1, #:upper16:.LC65	@,
	movw	r3, #1134	@,
	stmia	sp, {ip, lr}	@ phole stm
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33713,
	b	.L630	@
.L641:
	ldr	r0, [sp, #44]	@, %sfp
	add	lr, r0, fp	@ tmp264,, s32VdhMemAddr
	rsb	r2, r3, lr	@ tmp265, D.33741, tmp264
	cmp	r8, r2	@ s32DnrSize, tmp265
	bgt	.L644	@,
.L682:
	mov	r0, #0	@ D.33713,
	str	r3, [r7, #236]	@ D.33741, <variable>.s32OffLineDnrMemAddr
.L630:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L634:
	mov	r2, r0	@, s32UsingCount
	movw	r1, #:lower16:.LC62	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC62	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33713,
	b	.L630	@
.L651:
	add	r2, r1, #1	@ i.1953, j.1963,
	cmp	ip, r2	@ temp.1957, i.1953
	ble	.L648	@,
	add	r3, r2, sl	@ s32DnrLockFrmNum.1940, i.1953, s32DnrLockFrmNum
	mov	r1, r2	@ j.1963, i.1953
	cmp	ip, r3	@ temp.1957, s32DnrLockFrmNum.1940
	blt	.L649	@,
	cmp	r3, r2	@ s32DnrLockFrmNum.1940, i.1953
	bgt	.L676	@,
.L686:
	mov	r8, r2, asl #4	@ tmp333, i.1953,
	b	.L650	@
.L685:
	mov	r1, r5	@, s32ImgSize
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idiv	@
	mov	r1, r5	@, s32ImgSize
	str	r0, [sp, #28]	@, %sfp
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	ldrgt	r1, [sp, #28]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [sp, #28]	@, %sfp
	b	.L646	@
.L642:
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r2, [sp, #28]	@, %sfp
	sub	lr, ip, #1	@ pretmp.1961,,
	add	r1, r2, lr, asl #3	@, pretmp.1909,, pretmp.1961,
	ldr	ip, [r2, lr, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r3, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, ip, r3	@ prephitmp.1912, <variable>.FrameAddr, <variable>.FrameSize
	b	.L643	@
.L683:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #991	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33713,
	b	.L630	@
.L658:
	ldr	r3, [sp, #28]	@ s32DnrLockFrmNum.1940, %sfp
	b	.L649	@
.L648:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC64	@,
	ldr	r2, .L687	@,
	movt	r1, #:upper16:.LC64	@,
	movw	r3, #1129	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33713,
	b	.L630	@
.L688:
	.align	2
.L687:
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
	subs	r1, r0, #0	@ InstID, InstID
	.pad #528
	sub	sp, sp, #528	@,,
	mov	r0, #0	@ tmp149,
	str	r0, [sp, #524]	@ tmp149, s32UsingNum
	bne	.L702	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r3, [r3, #0]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L703	@,
	movw	r2, #34644	@ tmp158,
	add	r4, sp, #12	@ tmp204,,
	ldr	r6, [r3, r2]	@ s32VdhTotalMemUse, <variable>.TotalMemUsed
	mov	r0, #-2147483648	@ tmp205,
	mov	r5, r1	@ tmp206, ivtmp.2003
.L693:
	add	ip, r1, #8	@ tmp207, ivtmp.2003,
	mov	r3, r4	@ tmp164, tmp204
	str	r0, [r3, r1]!	@ tmp205, <variable>.FrameAddr
	add	r1, ip, #8	@ ivtmp.2003, tmp207,
	cmp	r1, #512	@ ivtmp.2003,
	mov	lr, r4	@ tmp212, tmp204
	str	r5, [r3, #4]	@ tmp206, <variable>.FrameSize
	str	r0, [lr, ip]!	@ tmp205, <variable>.FrameAddr
	str	r5, [lr, #4]	@ tmp206, <variable>.FrameSize
	bne	.L693	@,
	mov	r0, r5	@, tmp206
	mov	r1, r4	@, tmp204
	add	r2, sp, #524	@,,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L704	@,
	ldr	ip, [sp, #524]	@ s32UsingNum.475, s32UsingNum
	cmp	ip, #0	@ s32UsingNum.475,
	ble	.L695	@,
	ldr	r2, [sp, #16]	@ D.33956, <variable>.FrameSize
	cmp	r6, r2	@ s32VdhTotalMemUse, D.33956
	ble	.L696	@,
	mov	lr, r6, asl #1	@ tmp173, s32VdhTotalMemUse,
	movw	r1, #:lower16:1431655766	@ tmp176,
	movt	r1, #:upper16:1431655766	@ tmp176,
	smull	r0, r3, r1, lr	@, tmp175, tmp176, tmp173
	sub	r1, r3, lr, asr #31	@ tmp174, tmp175, tmp173,
	cmp	r2, r1	@ D.33956, tmp174
	blt	.L697	@,
.L696:
	mov	r3, r6	@, s32VdhTotalMemUse
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	str	ip, [sp, #0]	@ s32UsingNum.475,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	add	r1, sp, #12	@,,
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L705	@,
.L698:
	mov	r0, #0	@ D.33941,
.L691:
	add	sp, sp, #528	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L697:
	mov	r3, r6	@, s32VdhTotalMemUse
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	str	ip, [sp, #0]	@ s32UsingNum.475,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp206
	mov	r1, r4	@, tmp204
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L698	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L706	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1364	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L695:
	mov	r2, ip	@, s32UsingNum.475
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp206
	mov	r1, r4	@, tmp204
	ldr	r2, [sp, #524]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L698	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L706	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r3, #1376	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L705:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L706	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1353	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L704:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L706	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1338	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L702:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1315	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L703:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L706	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1321	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33941,
	b	.L691	@
.L707:
	.align	2
.L706:
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
	ldr	r2, [r5, r0, asl #2]	@ D.33513, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ D.33514, <variable>.s32OffLineDnrMemAddr
	ldr	r7, [r2, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r2, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.33514
	str	ip, [sp, #24]	@ D.33514, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	str	r0, [sp, #28]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	ldr	r3, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #32]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L709	@,
	cmp	r8, #1	@ PartitionFlag,
	beq	.L718	@,
	cmp	r8, #0	@ PartitionFlag,
	beq	.L719	@,
	mov	r0, r4	@, InstID
	bl	DNR_OpenChan	@
.L711:
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
	bne	.L720	@,
.L714:
	ldr	r1, [r5, r4, asl #2]	@ temp.2042, s_pstVfmwChan
	movw	r5, #:lower16:211780	@ tmp174,
	movt	r5, #:upper16:211780	@ tmp174,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp173,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp173,
	ldr	r2, [r1, r5]	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r2, #1	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.33527,
	beq	.L721	@,
.L712:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L719:
	mov	r0, r4	@, InstID
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L711	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC70	@,
	ldr	r2, .L723	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33527,
	b	.L712	@
.L709:
	cmp	r8, #1	@ PartitionFlag,
	bne	.L714	@,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L714	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC72	@,
	ldr	r2, .L723	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33527,
	b	.L712	@
.L721:
	add	lr, r1, #210944	@, temp.2042,
	mov	r0, r4	@, InstID
	add	r1, lr, #824	@,,
	bl	DNR_ConfigChan	@
	subs	r3, r0, #0	@ D.33552,
	bne	.L722	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp182, s_pstVfmwChan
	mov	r0, r3	@ D.33527, D.33552
	str	r3, [r1, r5]	@ D.33552, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	b	.L712	@
.L718:
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L711	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC69	@,
	ldr	r2, .L723	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33527,
	b	.L712	@
.L720:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC71	@,
	ldr	r2, .L723	@,
	movt	r1, #:upper16:.LC71	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33527,
	b	.L712	@
.L722:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC73	@,
	ldr	r2, .L723	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33527,
	b	.L712	@
.L724:
	.align	2
.L723:
	.word	.LANCHOR1+92
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #460
	sub	sp, sp, #460	@,,
	mov	r5, r0	@ InstID, InstID
	mov	r6, r1	@ MemPhyAddr, MemPhyAddr
	add	r0, sp, #40	@,,
	mov	r1, #416	@,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #28]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	bne	.L811	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #24]	@, %sfp
	ldr	r4, [r0, #0]	@ D.34074, s_pFspInst
	cmp	r4, #0	@ D.34074,
	beq	.L812	@,
	movw	r1, #34648	@ tmp211,
	movw	r3, #34652	@ tmp212,
	str	r6, [r4, r1]	@ MemPhyAddr, <variable>.MemAddr
	mov	r0, r5	@, InstID
	str	r7, [r4, r3]	@ MemSize, <variable>.MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L729	@,
	rsb	r2, r0, r0, asl #3	@, tmp221, eChanCapLevel, eChanCapLevel,
	movw	lr, #:lower16:CapItem	@ tmp218,
	add	r5, r2, #1	@ tmp222, tmp221,
	movt	lr, #:upper16:CapItem	@ tmp218,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [lr, r2, asl #2]	@ tmp231, CapItem
	ldr	r3, [lr, r5, asl #2]	@ tmp230, CapItem
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	lr, ip, r3	@ tmp229, tmp231, tmp230
	mul	r2, r2, r1	@ tmp215, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, lr	@, tmp215, tmp229
	bgt	.L729	@,
.L730:
	ldr	r3, [r4, #92]	@ D.34101, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.34101,
	beq	.L805	@,
	ldr	r2, [r4, #88]	@ D.34103, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.34103,
	bne	.L734	@,
.L805:
	ldrb	r5, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2078, <variable>.stInstCfg.s32DispLoopEnable
.L733:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp257,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp257,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.34108, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r3, #36]	@ D.34113, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34113,
	mvneq	r2, #0	@ Ret,
	beq	.L737	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r6	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r6, #40	@ tmp261,
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r1, r7	@, MemSize
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #0	@ tmp263,
	str	r6, [sp, #4]	@ tmp261,
	ldrsb	r6, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	lr, [sp, #12]	@ tmp263,
	add	lr, sp, #40	@ tmp265,,
	str	lr, [sp, #16]	@ tmp265,
	mov	lr, #16	@ tmp266,
	str	r6, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	str	lr, [sp, #20]	@ tmp266,
	blx	ip	@ D.34113
	subs	r2, r0, #0	@ Ret,
	bne	.L737	@,
	ldr	ip, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r1, r5	@ prephitmp.2078, prephitmp.2078
	sxtb	r8, r8	@ D.34108, D.34108
	add	r3, r8, r1, asl #2	@, MinFsNum, D.34108, prephitmp.2078,
	strb	ip, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	ip, [sp, #316]	@ temp.2209, MemArrange.ValidFrameNum
	cmp	r3, ip	@ MinFsNum, temp.2209
	bgt	.L739	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r2, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	bne	.L740	@,
	ldrsb	r7, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r7, #0	@ <variable>.s8LowBufEnable,
	beq	.L741	@,
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp279,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp279,
	ldr	r2, [r0, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	fp, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L742	@,
	ldrsb	r1, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r6, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	ip, r1, #4	@ tmp282, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	ip, r6	@ tmp282, MemArrange.ValidFrameNum
	movlt	r3, ip	@ tmp915, tmp282
	movge	r3, r6	@ tmp915, MemArrange.ValidFrameNum
	strb	r3, [r4, #10]	@ tmp915, <variable>.s32DecFsNum
	b	.L743	@
.L729:
	ldrsb	r1, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r1, #1	@ <variable>.stInstCfg.s32UserDec,
	beq	.L730	@,
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L813	@,
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
	mvn	r0, #0	@ D.34072,
.L727:
	add	sp, sp, #460	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L813:
	mov	r2, r0	@, eChanCapLevel
	movw	r1, #:lower16:.LC74	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L740:
	ldrb	fp, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	fp, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L743:
	ldr	r7, [sp, #448]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r2, r4, #27648	@ ivtmp.2188, D.34074,
	add	r3, r2, #160	@ ivtmp.2188, ivtmp.2188,
	mov	r0, #0	@ i,
	movw	r2, #34640	@ tmp293,
	ldrsb	r6, [r4, #10]	@ D.34147, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp907, tmp293
	add	ip, sp, #40	@ ivtmp.2187,,
	mov	r1, r0	@ tmp906, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L746	@
.L815:
	str	r0, [r2, #-8]	@ tmp912, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp912,
	ldr	r7, [ip, #8]	@ tmp952, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2187, tmp913,
	str	r7, [r3, #52]	@ tmp952, <variable>.PhyAddr
	ldr	r3, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	fp, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	fp, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	fp, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp906, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp906, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp906, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.2188, tmp914,
	beq	.L814	@,
.L746:
	cmp	r6, r0	@ D.34147, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp906, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp912, i,
	ldrgt	r2, [ip, #8]	@ tmp297, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp913, ivtmp.2187,
	ldrle	r2, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.34147, tmp912
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r2, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r7, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r7, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r2, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r2, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	add	r2, r3, #52	@ tmp914, ivtmp.2188,
	ldr	r7, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp906, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp906, <variable>.IsTfRef
	str	r7, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp906, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bgt	.L815	@,
	str	r1, [r2, #-8]	@ tmp906, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp912,
	ldr	r7, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2187, tmp913,
	str	r7, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp906, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp906, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.2188, tmp914,
	strb	r1, [r2, #-10]	@ tmp906, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L746	@,
.L814:
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #456	@,,
	movw	r1, #34456	@ tmp330,
	mov	r0, #0	@ tmp331,
	mov	r3, #1	@ tmp328,
	str	r0, [r4, r1]	@ tmp331, <variable>.PhyFsID
	add	ip, r5, r2, asl #2	@, tmp337,, <variable>.s32DecFsNum,
	strb	r3, [r4, #12]	@ tmp328, <variable>.s32TfFsNum
	movw	fp, #34464	@ tmp332,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [ip, #-408]	@ tmp339, MemArrange.FrameAddr
	movw	r3, #34476	@ tmp342,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r1, [r4, fp]	@ tmp339, <variable>.PhyAddr
	movw	fp, #34480	@ tmp344,
	ldr	r1, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r3]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r3, #34472	@ tmp340,
	str	ip, [r4, fp]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r1, [r4, r3]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r1, #34484	@ tmp346,
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r3, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	fp, [r4, r1]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	fp, #34488	@ tmp348,
	ldr	ip, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r1, #34452	@ tmp352,
	cmp	r3, r0	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #34453	@ tmp355,
	ldr	fp, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r0, [r4, r1]	@ tmp331, <variable>.IsDecRef
	movw	r1, #34492	@ tmp350,
	strb	r0, [r4, ip]	@ tmp331, <variable>.IsTfRef
	movw	ip, #34454	@ tmp358,
	str	fp, [r4, r1]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r0, [r4, ip]	@ tmp331, <variable>.DispState
	bne	.L747	@,
	mov	fp, r3	@ prephitmp.2083, <variable>.stInstCfg.s32DispLoopEnable
	strb	r3, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L749:
	add	r0, r4, #30976	@ tmp364, D.34074,
	mov	r2, #0	@ ivtmp.2153,
	add	r9, r0, #180	@ ivtmp.2165, tmp364,
	add	sl, r0, #152	@ ivtmp.2151, tmp364,
	add	r8, r0, #160	@ ivtmp.2157, tmp364,
	add	r7, r0, #168	@ ivtmp.2159, tmp364,
	add	r6, r0, #172	@ ivtmp.2161, tmp364,
	add	r5, r0, #176	@ ivtmp.2163, tmp364,
	mov	r3, r2	@ i.2260, ivtmp.2153
	mov	r1, r2	@ tmp904, ivtmp.2153
	b	.L748	@
.L817:
	str	r3, [sl, #0]	@ i.2260, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp384, i.2260, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp385, tmp384, <variable>.s32DecFsNum
	add	fp, sp, #456	@,,
	add	r0, fp, r0, asl #2	@, tmp389,, tmp385,
	ldr	r0, [r0, #-408]	@ tmp391, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp391, <variable>.PhyAddr
	ldr	r0, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r0, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r0, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r0, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp904, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp904, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp904, <variable>.IsTfRef
.L751:
	add	r3, r3, #1	@ i.2260, i.2260,
	add	sl, sl, #52	@ ivtmp.2151, ivtmp.2151,
	cmp	r3, #64	@ i.2260,
	add	r2, r2, #52	@ ivtmp.2153, ivtmp.2153,
	add	r8, r8, #52	@ ivtmp.2157, ivtmp.2157,
	add	r7, r7, #52	@ ivtmp.2159, ivtmp.2159,
	add	r6, r6, #52	@ ivtmp.2161, ivtmp.2161,
	add	r5, r5, #52	@ ivtmp.2163, ivtmp.2163,
	add	r9, r9, #52	@ ivtmp.2165, ivtmp.2165,
	beq	.L816	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.2083, <variable>.s32DispFsNum
.L748:
	add	ip, r4, r2	@ D.37078, D.34074, ivtmp.2153
	cmp	fp, r3	@ prephitmp.2083, i.2260
	add	ip, ip, #30976	@ tmp397, D.37078,
	mov	r0, ip	@ tmp429, tmp397
	bgt	.L817	@,
	str	r1, [sl, #0]	@ tmp904, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp417, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #456	@,,
	add	ip, fp, ip, asl #2	@, tmp421,, tmp417,
	ldr	ip, [ip, #-408]	@ tmp423, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp423, <variable>.PhyAddr
	ldr	ip, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	ip, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	ip, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	ip, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	ip, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	ip, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp904, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp904, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp904, <variable>.IsTfRef
	b	.L751	@
.L816:
	ldr	r7, [sp, #444]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.2133, D.34074,
	mov	ip, #0	@ tmp903,
	mov	r3, #1	@ i.2262,
	cmp	r7, #20	@ MemArrange.ValidPMVNum,
	movge	r7, #20	@ tmp446,
	add	r2, r4, r3	@ ivtmp.2139, D.34074,
	uxtb	r9, r7	@ prephitmp.2261, tmp446
	strb	r9, [r4, #13]	@ prephitmp.2261, <variable>.s32PmvNum
	ldr	r9, [sp, #320]	@ tmp936, MemArrange.PMVAddr
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2261, <variable>.s32PmvNum
	strb	ip, [r4, #14]	@ tmp903, <variable>.IsPmvInUse
	str	r9, [r1, #0]	@ tmp936, <variable>.PmvAddr
	add	r9, sp, #40	@,,
	add	r0, r9, #4	@ ivtmp.2331,,
	add	r1, r1, #4	@ ivtmp.2133, ivtmp.2133,
	b	.L756	@
.L818:
	ldr	r7, [r0, #280]	@ tmp940, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp903, <variable>.IsPmvInUse
	str	r7, [r1, #0]	@ tmp940, <variable>.PmvAddr
.L802:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2261, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2262, tmp908,
	add	r0, r0, #4	@ ivtmp.2331, tmp909,
	add	r1, r1, #4	@ ivtmp.2133, tmp910,
	add	r2, r2, #1	@ ivtmp.2139, tmp911,
.L756:
	sxtb	r5, r5	@ prephitmp.2261, prephitmp.2261
	cmp	r5, r3	@ prephitmp.2261, i.2262
	add	r3, r3, #1	@ tmp908, i.2262,
	ldrgt	r5, [r0, #280]	@ tmp450, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp909, ivtmp.2331,
	ldrle	r5, [sp, #320]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp908,
	strb	ip, [r2, #14]	@ tmp903, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp911, ivtmp.2139,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp910, ivtmp.2133,
	beq	.L755	@,
	ldrsb	r7, [r4, #13]	@ prephitmp.2261, <variable>.s32PmvNum
	cmp	r7, r3	@ prephitmp.2261, tmp908
	bgt	.L818	@,
	ldr	r5, [sp, #320]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp903, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L802	@
.L755:
	movw	r7, #27808	@ tmp461,
	ldr	ip, [sp, #440]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r4, r7]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp456,
	movw	r5, #27756	@ tmp460,
	movw	r2, #27748	@ tmp458,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp459,
	str	r1, [r4, r5]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r7, #27764	@ tmp463,
	str	r3, [r4, r2]	@ tmp459, <variable>.stDummyPhyFs.PhyFsID
	movw	ip, #27768	@ tmp465,
	ldr	r0, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	movw	r5, #27772	@ tmp467,
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r4, r7]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r0, #27776	@ tmp469,
	str	r1, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	str	r2, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r5, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r7, [r4, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r5, [r4, r0]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r0, #27780	@ tmp471,
	ldr	ip, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	cmp	r1, r7	@ prephitmp.2088, <variable>.stPreInfo.s32PreWidth
	movw	r7, #27746	@ tmp481,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	r0, #27744	@ tmp475,
	ldr	ip, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r7]	@ tmp459, <variable>.stDummyPhyFs.DispState
	movw	r7, #27784	@ tmp473,
	strb	r3, [r4, r0]	@ tmp459, <variable>.stDummyPhyFs.IsDecRef
	movw	r0, #27745	@ tmp478,
	str	ip, [r4, r7]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r7, #34656	@ tmp484,
	strb	r3, [r4, r0]	@ tmp459, <variable>.stDummyPhyFs.IsTfRef
	movw	r3, #34644	@ tmp486,
	ldr	ip, [sp, #452]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	ip, [r4, r7]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	r0, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r4, r3]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	beq	.L819	@,
.L757:
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp891,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp891,
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r6, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L820	@,
.L759:
	movw	r3, #27860	@ tmp876,
	movw	r7, #27808	@ tmp877,
	ldrsb	r0, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldrsb	r5, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r4, r7]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #56]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	rsb	r7, r3, ip	@ tmp880, <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #40]	@ prephitmp.2088, <variable>.stPreInfo.s32PreWidth
	str	r2, [r4, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	str	r0, [r4, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r7, [r4, #52]	@ tmp880, <variable>.stPreInfo.s32PreDecSlotLen
.L758:
	ldr	r1, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.34072,
	ldr	r7, [sp, #28]	@, %sfp
	str	r1, [r7, #0]	@ MemArrange.TotalMemUsed,
	b	.L727	@
.L747:
	ldr	r3, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r4, #67]	@ D.34170, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	fp, r3, #1	@ tmp371, MemArrange.ValidFrameNum,
	rsb	r1, r2, fp	@ tmp370, <variable>.s32DecFsNum, tmp371
	cmp	r1, #25	@ tmp370,
	movlt	r3, r1	@ tmp919, tmp370
	movge	r3, #25	@ tmp919,
	uxtb	fp, r3	@ prephitmp.2083,
	strb	fp, [r4, #11]	@ tmp2, <variable>.s32DispFsNum
	sxtb	fp, fp	@ prephitmp.2083,
	cmp	fp, ip	@ prephitmp.2083, D.34170
	bge	.L749	@,
	ldrsb	r3, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	mov	r2, fp	@, prephitmp.2083
	movw	r1, #:lower16:.LC42	@,
	movt	r1, #:upper16:.LC42	@,
	str	ip, [sp, #0]	@ D.34170,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L734:
	ldrb	r5, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2078, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r5, #0	@ prephitmp.2078,
	beq	.L733	@,
	ldr	r0, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r0	@ D.34101, <variable>.stInstCfg.s32DecFsHeight
	beq	.L821	@,
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L741:
	ldr	r7, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r7, #40	@ MemArrange.ValidFrameNum,
	movge	r7, #40	@ tmp288,
	strb	r7, [r4, #10]	@ tmp288, <variable>.s32DecFsNum
	b	.L743	@
.L819:
	ldr	r0, [r4, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r2, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L757	@,
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r3, [r4, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L757	@,
	ldrsb	r7, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r0, [r4, #56]	@ <variable>.stPreInfo.s32PreExpectNum, <variable>.stPreInfo.s32PreExpectNum
	cmp	r7, r0	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	bne	.L757	@,
	b	.L758	@
.L820:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r1, [r5, #0]	@ D.36932, s_pstVfmwChan
	movw	r7, #:lower16:.LANCHOR0	@ tmp499,
	movt	r7, #:upper16:.LANCHOR0	@ tmp499,
	ldr	ip, [r2, #0]	@, s_pFspInst
	str	ip, [sp, #32]	@, %sfp
	ldr	fp, [r1, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r2, [ip, #72]	@ s32CurWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r3, [ip, #76]	@ s32CurHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r0, [r1, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	cmp	r3, fp	@ s32CurHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmple	r2, r0	@, s32CurWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movgt	fp, #0	@, tmp509
	movle	fp, #1	@, tmp509
	bgt	.L760	@,
	ldr	lr, [r1, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L822	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L823	@,
	mov	r1, r6	@, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	beq	.L808	@,
	movw	r7, #:lower16:s_DnrChan	@,
	movt	r7, #:upper16:s_DnrChan	@,
	str	r7, [sp, #24]	@, %sfp
.L768:
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #1	@ tmp661,
	str	r1, [r3, #1604]	@ tmp661, <variable>.stSynExtraData.s32DnrEnable
.L771:
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r5, #:lower16:76660	@ tmp852,
	ldr	fp, [sp, #24]	@, %sfp
	movt	r5, #:upper16:76660	@ tmp852,
	movw	r3, #:lower16:76664	@ tmp857,
	movt	r3, #:upper16:76664	@ tmp857,
	ldr	r2, [ip, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	str	r2, [fp, r5]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	movw	r5, #34652	@ tmp865,
	ldr	lr, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	lr, [fp, r3]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r2, [sp, #32]	@, %sfp
	ldr	lr, [ip, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r3, [r2, r5]	@ <variable>.MemSize, <variable>.MemSize
	movw	r2, #34648	@ tmp863,
	ldr	r5, [sp, #32]	@, %sfp
	ldr	r2, [r5, r2]	@ <variable>.MemAddr, <variable>.MemAddr
	str	lr, [sp, #0]	@ <variable>.s32OffLineDnrMemAddr,
	ldr	lr, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	lr, [sp, #4]	@ <variable>.s32OffLineDNRMemSize,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret,
	bne	.L769	@,
	ldr	r1, [r4, #72]	@ prephitmp.2088, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	b	.L759	@
.L760:
	ldr	r9, [r1, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L824	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC80	@,
	movt	r1, #:upper16:.LC80	@,
	bl	dprint_vfmw	@
	ldr	r9, [r7, #0]	@ pstInst, s_pFspInst
	movw	ip, #34640	@ tmp781,
	ldrsb	r3, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	sl, [r9, ip]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L773	@,
	add	r8, r9, #27648	@ ivtmp.2114, pstInst,
	mov	r7, fp	@ i, tmp509
	add	r8, r8, #160	@ ivtmp.2114, ivtmp.2114,
	mov	fp, r6	@ tmp902, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r6, r4	@ D.34074, D.34074
	b	.L781	@
.L826:
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r3	@ tmp788, tmp787, s_pstVfmwChan
	add	r1, lr, #209920	@ tmp789, tmp788,
	add	r3, r1, #824	@ tmp789, tmp789,
	str	r0, [r3, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, lr	@ tmp795, tmp787, s_pstVfmwChan
	add	ip, r1, #209920	@ tmp796, tmp795,
	add	r3, ip, #824	@ tmp796, tmp796,
	str	r4, [r3, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r1, r2, asl #4	@, tmp807, s_pstVfmwChan, tmp799,
	str	r0, [r4, #4]	@ s32UsingCount, <variable>.s32UsingCount
.L779:
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #52	@ ivtmp.2114, ivtmp.2114,
	cmp	r7, r0	@ i, <variable>.s32DecFsNum
	bge	.L825	@,
.L781:
	ldr	r4, [r8, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	mov	r2, sl	@, s32ImgSize
	mov	r0, #0	@,
	mov	r1, r4	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	add	r2, r7, #13120	@ tmp799, i,
	mov	ip, r7, asl #4	@ tmp787, i,
	add	r2, r2, #52	@ tmp799, tmp799,
	mov	r1, ip	@ tmp813, tmp787
	mov	r3, r2	@ tmp825, tmp799
	cmp	r0, #0	@ s32UsingCount
	beq	.L826	@,
	ble	.L780	@,
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, ip, lr	@ tmp814, tmp813, s_pstVfmwChan
	add	r2, ip, #209920	@ tmp815, tmp814,
	add	lr, r2, #824	@ tmp815, tmp815,
	str	fp, [lr, #0]	@ tmp902, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, r1, ip	@ tmp821, tmp813, s_pstVfmwChan
	add	lr, r2, #209920	@ tmp822, tmp821,
	add	r1, lr, #824	@ tmp822, tmp822,
	str	r4, [r1, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [ip, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r2, r3, asl #4	@, tmp833, s_pstVfmwChan, tmp825,
	str	r0, [r4, #4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L779	@
.L742:
	ldr	r5, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r5, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	b	.L743	@
.L825:
	mov	r4, r6	@ D.34074, D.34074
.L773:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	FSP_EnableDnr	@
	subs	r6, r0, #0	@ s32Ret,
	bne	.L827	@,
	ldr	fp, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r9, #:lower16:s_DnrChan	@,
	movt	r9, #:upper16:s_DnrChan	@,
	str	r9, [sp, #24]	@, %sfp
	str	r6, [fp, #1604]	@ s32Ret, <variable>.stSynExtraData.s32DnrEnable
	b	.L771	@
.L811:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1545	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L824:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	movw	r6, #34640	@ tmp665,
	bl	dprint_vfmw	@
	ldr	r8, [r7, #0]	@ pstInst, s_pFspInst
	movw	ip, #:lower16:s_DnrChan	@ tmp933,
	movw	r2, #:lower16:76660	@ tmp667,
	movt	ip, #:upper16:s_DnrChan	@ tmp933,
	movt	r2, #:upper16:76660	@ tmp667,
	ldrsb	r0, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r1, #:lower16:76664	@ tmp669,
	movt	r1, #:upper16:76664	@ tmp669,
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ldr	r0, [ip, r2]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	sl, [ip, r1]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	ip, [r8, r6]	@ s32ImgSize, <variable>.ImgSlotLen
	add	sl, r0, sl	@ s32DnrEndAddr, s32DnrStartAddr, <variable>.s32OffLineDNRMemSize
	ble	.L773	@,
	add	r9, r8, #27648	@ ivtmp.2109, pstInst,
	mov	r3, fp	@ i, tmp509
	add	r1, r9, #160	@ ivtmp.2109, ivtmp.2109,
	b	.L777	@
.L828:
	ldr	r9, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r6, r9	@ tmp684, tmp683, s_pstVfmwChan
	add	r9, r7, #209920	@ tmp685, tmp684,
	add	r7, r9, #824	@ tmp685, tmp685,
	mov	r9, #1	@,
	str	r9, [r7, #0]	@, <variable>.eFrameState
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r6, r7	@ tmp691, tmp683, s_pstVfmwChan
	add	r6, r6, #209920	@ tmp692, tmp691,
	add	r6, r6, #824	@ tmp692, tmp692,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r6, [r5, #0]	@ temp.2303, s_pstVfmwChan
	add	lr, r6, lr, asl #4	@, tmp702, temp.2303, tmp695,
	ldr	r2, [lr, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r6, r2, r9	@ tmp711, <variable>.s32UsingCount,
	str	r6, [lr, #4]	@ tmp711, <variable>.s32UsingCount
.L775:
	ldrsb	lr, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2109, ivtmp.2109,
	cmp	r3, lr	@ i, <variable>.s32DecFsNum
	bge	.L773	@,
.L777:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r7, r3, #13120	@ tmp695, i,
	add	lr, r7, #52	@ tmp695, tmp695,
	mov	r6, r3, asl #4	@ tmp683, i,
	cmp	sl, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r9, #0	@, tmp679
	movgt	r9, #1	@, tmp679
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r2, ip	@ tmp712, s32FrameStartAddr, s32ImgSize
	movgt	r9, #0	@, tmp679,
	cmp	r9, #0	@ tmp679,
	bne	.L828	@,
	cmp	r0, r7	@ s32DnrStartAddr, tmp712
	movge	r7, #0	@, tmp719
	movlt	r7, #1	@, tmp719
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	lr, r3, #13120	@ tmp735, i,
	mov	fp, r3, asl #4	@ tmp723, i,
	add	r6, lr, #52	@ tmp735, tmp735,
	movle	r7, #0	@, tmp719,
	cmp	r7, #0	@ tmp719,
	mov	r9, fp	@ tmp755, tmp723
	mov	lr, r6	@ tmp767, tmp735
	beq	.L776	@,
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, fp, r7	@ tmp724, tmp723, s_pstVfmwChan
	add	r7, lr, #209920	@ tmp725, tmp724,
	add	lr, r7, #824	@ tmp725, tmp725,
	mov	r7, #1	@,
	str	r7, [lr, #0]	@, <variable>.eFrameState
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, fp, lr	@ tmp731, tmp723, s_pstVfmwChan
	add	lr, lr, #209920	@ tmp732, tmp731,
	add	lr, lr, #824	@ tmp732, tmp732,
	str	r2, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [lr, r6, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ temp.2307, s_pstVfmwChan
	add	r6, r2, r6, asl #4	@, tmp742, temp.2307, tmp735,
	ldr	lr, [r6, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, lr, r7	@ tmp751, <variable>.s32UsingCount,
	str	r2, [r6, #4]	@ tmp751, <variable>.s32UsingCount
	b	.L775	@
.L776:
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, fp, r6	@ tmp756, tmp755, s_pstVfmwChan
	add	r6, r6, #209920	@ tmp757, tmp756,
	add	r6, r6, #824	@ tmp757, tmp757,
	str	r7, [r6, #0]	@ tmp719, <variable>.eFrameState
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, fp, r6	@ tmp763, tmp755, s_pstVfmwChan
	add	r6, r6, #209920	@ tmp764, tmp763,
	add	r6, r6, #824	@ tmp764, tmp764,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r6, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r2, lr, asl #4	@, tmp775, s_pstVfmwChan, tmp767,
	str	r7, [r6, #4]	@ tmp719, <variable>.s32UsingCount
	b	.L775	@
.L737:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L739:
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	str	ip, [sp, #0]	@ temp.2209,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L822:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	movw	r6, #:lower16:s_DnrChan	@,
	str	r6, [sp, #24]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp, #24]	@, %sfp
	movw	sl, #:lower16:76660	@ tmp514,
	movt	sl, #:upper16:76660	@ tmp514,
	ldr	r8, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r3, #:upper16:s_DnrChan	@,
	str	r3, [sp, #24]	@, %sfp
	movw	r1, #:lower16:76664	@ tmp516,
	movt	r1, #:upper16:76664	@ tmp516,
	ldr	r6, [r3, sl]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r3, r1]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	movw	r3, #34640	@ tmp521,
	ldr	sl, [r7, #0]	@ pstInst, s_pFspInst
	str	r6, [r8, #236]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	r8, ip, r6	@ s32DnrEndAddr, s32DnrSize, s32DnrStartAddr
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r0, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldrsb	r1, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	lr, [sl, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	ble	.L762	@,
	add	r7, sl, #27648	@ ivtmp.2104, pstInst,
	mov	r3, #0	@ i,
	add	r1, r7, #160	@ ivtmp.2104, ivtmp.2104,
	str	r4, [sp, #36]	@ D.34074, %sfp
	b	.L767	@
.L830:
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r7, r0	@ tmp535, tmp534, s_pstVfmwChan
	add	r0, r4, #209920	@ tmp536, tmp535,
	mov	r4, #2	@,
	add	r0, r0, #824	@ tmp536, tmp536,
	str	r4, [r0, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r7, r0	@ tmp542, tmp534, s_pstVfmwChan
	add	r0, r4, #209920	@ tmp543, tmp542,
	add	r4, r0, #824	@ tmp543, tmp543,
	str	r2, [r4, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r7, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r7, #0	@,
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r2, ip, asl #4	@, tmp554, s_pstVfmwChan, tmp546,
	str	r7, [r0, #4]	@, <variable>.s32UsingCount
.L764:
	ldrsb	r4, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2104, ivtmp.2104,
	cmp	r3, r4	@ i, <variable>.s32DecFsNum
	bge	.L829	@,
.L767:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r4, r3, #13120	@ tmp546, i,
	add	ip, r4, #52	@ tmp546, tmp546,
	mov	r7, r3, asl #4	@ tmp534, i,
	cmp	r8, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r4, #0	@, tmp530
	movgt	r4, #1	@, tmp530
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r0, r2, lr	@ s32FrameEndAddr, s32FrameStartAddr, s32ImgSize
	movgt	r4, #0	@, tmp530,
	cmp	r4, #0	@ tmp530,
	bne	.L830	@,
	cmp	r8, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movlt	ip, #0	@, tmp563
	movge	ip, #1	@, tmp563
	cmp	r6, r0	@ s32DnrStartAddr, s32FrameEndAddr
	add	fp, r3, #13120	@ tmp579, i,
	mov	r9, r3, asl #4	@ tmp567, i,
	movge	ip, #0	@, tmp563,
	cmp	ip, #0	@ tmp563,
	add	r7, fp, #52	@ tmp579, tmp579,
	beq	.L765	@,
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r9, r0	@ tmp568, tmp567, s_pstVfmwChan
	add	fp, ip, #209920	@ tmp569, tmp568,
	add	r0, fp, #824	@ tmp569, tmp569,
	mov	fp, #2	@,
	str	fp, [r0, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r9, ip	@ tmp575, tmp567, s_pstVfmwChan
	add	ip, r0, #209920	@ tmp576, tmp575,
	add	r0, ip, #824	@ tmp576, tmp576,
	str	r2, [r0, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r2, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, ip, r7, asl #4	@, tmp587, s_pstVfmwChan, tmp579,
	str	r4, [r7, #4]	@ tmp530, <variable>.s32UsingCount
	b	.L764	@
.L765:
	cmp	r8, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r0, #0	@, tmp596
	movlt	r0, #1	@, tmp596
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	mov	fp, r3, asl #4	@ tmp600, i,
	add	r7, r3, #13120	@ tmp612, i,
	movle	r0, #0	@, tmp596,
	cmp	r0, #0	@ tmp596,
	mov	r9, fp	@ tmp626, tmp600
	add	r7, r7, #52	@ tmp612, tmp612,
	beq	.L766	@,
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, fp, r0	@ tmp601, tmp600, s_pstVfmwChan
	add	r0, r4, #209920	@ tmp602, tmp601,
	mov	r4, #2	@,
	add	r0, r0, #824	@ tmp602, tmp602,
	str	r4, [r0, #0]	@, <variable>.eFrameState
	ldr	r4, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, fp, r4	@ tmp608, tmp600, s_pstVfmwChan
	add	r4, r0, #209920	@ tmp609, tmp608,
	add	r0, r4, #824	@ tmp609, tmp609,
	str	r2, [r0, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r2, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r4, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r4, r7, asl #4	@, tmp620, s_pstVfmwChan, tmp612,
	str	ip, [r7, #4]	@ tmp563, <variable>.s32UsingCount
	b	.L764	@
.L766:
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, fp, ip	@ tmp627, tmp626, s_pstVfmwChan
	add	ip, ip, #209920	@ tmp628, tmp627,
	add	ip, ip, #824	@ tmp628, tmp628,
	str	r0, [ip, #0]	@ tmp596, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, fp, ip	@ tmp634, tmp626, s_pstVfmwChan
	add	ip, ip, #209920	@ tmp635, tmp634,
	add	ip, ip, #824	@ tmp635, tmp635,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [ip, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r2, r7, asl #4	@, tmp646, s_pstVfmwChan, tmp638,
	str	r0, [ip, #4]	@ tmp596, <variable>.s32UsingCount
	b	.L764	@
.L829:
	ldr	r4, [sp, #36]	@ D.34074, %sfp
.L762:
	mov	r0, #0	@,
	mov	r1, #2	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	bne	.L768	@,
.L808:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
.L769:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC46	@,
	ldr	r2, .L831	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r3, #1797	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L812:
	mov	r0, r4	@, D.34074
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #1546	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L780:
	ldr	r2, .L831+4	@,
	movw	r3, #1484	@,
.L809:
	movw	r1, #:lower16:.LC78	@,
	mov	r0, #31	@,
	movt	r1, #:upper16:.LC78	@,
	mov	ip, #0	@ tmp846,
	str	ip, [sp, #0]	@ tmp846,
	bl	dprint_vfmw	@
	b	.L808	@
.L821:
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, lr	@ D.34103, <variable>.stInstCfg.s32DecFsWidth
	beq	.L733	@,
	mvn	r0, #0	@ D.34072,
	b	.L727	@
.L827:
	ldr	r2, .L831+4	@,
	movw	r3, #1494	@,
	b	.L809	@
.L823:
	ldr	r2, .L831+4	@,
	movw	r3, #1445	@,
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	mov	lr, #0	@ tmp656,
	str	lr, [sp, #0]	@ tmp656,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L769	@
.L832:
	.align	2
.L831:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r4, r0, #0	@ InstID, InstID
	mov	sl, r1	@ pstVoQue, pstVoQue
	bne	.L846	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L847	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r8, [r3, #0]	@ D.33344, s_pFspInst
	cmp	r8, #0	@ D.33344,
	movne	r5, r8	@ ivtmp.2366, D.33344
	movne	r9, #432	@ tmp158,
	bne	.L839	@,
	b	.L851	@
.L838:
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetRef	@
	mla	r2, r9, r7, r8	@ tmp167, tmp158, tmp159, D.33344
	mov	r0, sl	@, pstVoQue
	add	r1, r2, #104	@, tmp167,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L849	@,
	add	r4, r7, #1	@ i, tmp159,
	add	r5, r6, #432	@ ivtmp.2366, tmp160,
	cmp	r4, #64	@ i,
	beq	.L850	@,
.L839:
	mov	r0, #0	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	add	r6, r5, #432	@ tmp160, ivtmp.2366,
	bl	FSP_SetRef	@
	mla	r1, r9, r4, r8	@ tmp154, tmp158, i, D.33344
	mov	r0, sl	@, pstVoQue
	add	r7, r4, #1	@ tmp159, i,
	add	r1, r1, #104	@, tmp154,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L838	@,
	mov	r0, #0	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetDisplay	@
	b	.L838	@
.L849:
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	add	r4, r7, #1	@ i, tmp159,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i,
	add	r5, r6, #432	@ ivtmp.2366, tmp160,
	bne	.L839	@,
.L850:
	mov	r0, #0	@ D.33340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L846:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #456	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L851:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #458	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L847:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #457	@,
	movt	r1, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LC82	@,
	movt	r3, #:upper16:.LC82	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33340,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.33810, %object
	.size	__func__.33810, 35
__func__.33810:
	.ascii	"FSP_NoneDnrSwitchToDnrSpecialCase1\000"
	.space	1
	.type	__func__.33695, %object
	.size	__func__.33695, 31
__func__.33695:
	.ascii	"FSP_NoneDnrSwitchToDnrNormCase\000"
	.space	1
	.type	__func__.33934, %object
	.size	__func__.33934, 23
__func__.33934:
	.ascii	"FSP_NoneDnrSwitchToDnr\000"
	.space	1
	.type	__func__.33511, %object
	.size	__func__.33511, 14
__func__.33511:
	.ascii	"FSP_EnableDnr\000"
	.space	2
	.type	__func__.33983, %object
	.size	__func__.33983, 24
__func__.33983:
	.ascii	"FSP_ConfigDSDFrameArray\000"
	.type	__func__.34063, %object
	.size	__func__.34063, 22
__func__.34063:
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
	.size	s_pFspInst, 4
s_pFspInst:
	.space	4
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
	.size	s_FspVoQue, 8
s_FspVoQue:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
