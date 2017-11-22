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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
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
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r3, #0]	@ D.32496, s_pFspInst
	cmp	r3, #0	@ D.32496,
	bxeq	lr	@
	ldr	r2, [r3, #4]	@ D.32499, <variable>.eFspInstState
	cmp	r2, #0	@ D.32499,
	bxeq	lr	@
	cmp	r2, #1	@ D.32499,
	moveq	r2, #0	@ tmp136,
	streq	r2, [r3, #4]	@ tmp136, <variable>.eFspInstState
	bx	lr	@
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	beq	.L9	@,
.L6:
	mvn	r0, #0	@ D.32509,
	bx	lr	@
.L9:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.32511, s_pFspInst
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L6	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	strb	ip, [r3, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	bx	lr	@
	.fnend
	.size	FSP_ConfigAttribute, .-FSP_ConfigAttribute
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bxne	lr	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r3, #0]	@ D.32571, s_pFspInst
	cmp	r3, #0	@ D.32571,
	bxeq	lr	@
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	streq	r0, [r3, #4]	@ InstID, <variable>.eFspInstState
	bx	lr	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
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
	ble	.L17	@,
	tst	r1, #1	@ PhyNum,
	mov	r5, #0	@ LeastFsID,
	mvn	ip, #0	@ LeastTick.651,
	mov	r2, r5	@ i, LeastFsID
	bne	.L18	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #52	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.651
	mov	ip, r3	@ LeastTick.651, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.651
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.651
	cmp	r2, r1	@ tmp174, PhyNum
	beq	.L17	@,
.L30:
	ldr	ip, [r4, #44]	@ LeastTick, <variable>.u32Tick
	cmp	ip, r3	@ LeastTick, LeastTick
	movcs	ip, r3	@ LeastTick, LeastTick
	movcc	r5, r2	@ LeastFsID, tmp174
.L29:
	add	r2, r2, #1	@ i, tmp174,
	add	r0, r4, #52	@ pstPhyFs, tmp175,
.L18:
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmp	r3, ip	@ LeastTick, LeastTick.651
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.651
	cmp	r2, r1	@ tmp174, PhyNum
	bne	.L30	@,
.L17:
	mov	r0, r5	@, LeastFsID
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bxne	lr	@
	cmp	r1, #63	@ LogicFrameID,
	bxhi	lr	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.33806, s_pFspInst
	cmp	r3, #0	@ D.33806,
	bxeq	lr	@
	mov	r2, #432	@ tmp141,
	mla	r2, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.33806
	ldr	ip, [r2, #500]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	bxne	lr	@
	ldrb	r2, [r2, #100]	@ zero_extendqisi2	@ D.33814, <variable>.PmvIdc
	mov	ip, #432	@ tmp159,
	cmp	r2, #19	@ D.33814,
	sxtabls	r2, r3, r2	@ tmp153, D.33806, D.33814
	mla	r3, ip, r1, r3	@ tmp160, tmp159, LogicFrameID, D.33806
	strlsb	r0, [r2, #14]	@ InstID, <variable>.IsPmvInUse
	mov	r0, #0	@ tmp162,
	add	r1, r3, #496	@ tmp161, tmp160,
	str	r0, [r1, #4]	@ tmp162, <variable>.eLfsPmvState
	bx	lr	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r5, r2	@ IsRef, IsRef
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r1, #63	@ LogicFrameID,
	ldmhifd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r6, [r3, #0]	@ D.33832, s_pFspInst
	cmp	r6, #0	@ D.33832,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	mov	r7, #432	@ tmp148,
	uxtb	r8, r2	@ D.33839, IsRef
	mla	r7, r7, r1, r6	@ tmp149, tmp148, LogicFrameID, D.33832
	ldrsb	r1, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r8, [r7, #96]	@ D.33839, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	ldr	ip, [r7, #504]	@ prephitmp.691, <variable>.pstDecodeFs
	cmp	ip, #0	@ prephitmp.691,
	beq	.L37	@,
	ldr	sl, [ip, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r1, [r7, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L46	@,
.L37:
	mov	r3, #432	@ tmp182,
	mla	r3, r3, r4, r6	@ tmp183, tmp182, LogicFrameID, D.33832
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.33859, <variable>.PmvIdc
	cmp	r2, #19	@ D.33859,
	bhi	.L39	@,
	cmp	r5, #1	@ IsRef,
	beq	.L47	@,
	cmp	r5, #0	@ IsRef,
	bne	.L41	@,
	add	r1, r3, #496	@ tmp208, tmp183,
	ldr	r0, [r1, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #2	@ <variable>.eLfsPmvState,
	sxtabeq	r2, r6, r2	@ tmp212, D.33832, D.33859
	streqb	r5, [r2, #14]	@ IsRef, <variable>.IsPmvInUse
	streq	r5, [r3, #516]	@ IsRef, <variable>.PmvAddr
	streq	r5, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
.L42:
	mov	r3, #432	@ tmp230,
	mla	r1, r3, r4, r6	@ tmp231, tmp230, LogicFrameID, D.33832
	ldr	r3, [r1, #508]	@ D.33880, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.33880,
	beq	.L43	@,
	ldrsb	ip, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #1	@ <variable>.DispState,
	bne	.L44	@,
	mov	r0, #0	@ tmp234,
	strb	r0, [r3, #2]	@ tmp234, <variable>.DispState
.L41:
	mov	r1, #432	@ tmp238,
	mla	r2, r1, r4, r6	@ tmp239, tmp238, LogicFrameID, D.33832
	ldr	r3, [r2, #508]	@ D.33880, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.33880,
	beq	.L43	@,
.L44:
	mov	r2, #432	@ tmp243,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	mla	r2, r2, r4, r6	@ tmp244, tmp243, LogicFrameID, D.33832
	ldr	r0, [r2, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r0	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L48	@,
.L43:
	cmp	r5, #0	@ IsRef,
	moveq	r3, #432	@ tmp260,
	mlaeq	r4, r3, r4, r6	@ tmp261, tmp260, LogicFrameID, D.33832
	streq	r5, [r4, #504]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L39:
	cmp	r5, #0	@ IsRef,
	beq	.L42	@,
	b	.L41	@
.L46:
	ldrsb	r1, [ip, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r2	@ <variable>.IsDecRef, IsRef
	beq	.L38	@,
	ldr	r1, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r1, #0	@ g_IsFrameIntfValid,
	beq	.L38	@,
	ldr	r3, [r3, #20]	@ D.34370, g_FspFrameIntf.SetFrameRef
	ldr	r1, [ip, #12]	@ D.33857, <variable>.PhyAddr
	cmp	r3, #0	@ D.34370,
	beq	.L38	@,
	blx	r3	@ D.34370
	ldr	ip, [r7, #504]	@ prephitmp.691, <variable>.pstDecodeFs
.L38:
	strb	r8, [ip, #0]	@ D.33839, <variable>.IsDecRef
	b	.L37	@
.L48:
	cmp	r5, #1	@ IsRef,
	bne	.L43	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	moveq	r1, #2	@ tmp249,
	streqb	r1, [r3, #2]	@ tmp249, <variable>.DispState
	streqb	r1, [r2, #97]	@ tmp249, <variable>.s32DispState
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L47:
	add	r3, r3, #496	@ tmp190, tmp183,
	ldr	r0, [r3, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #1	@ <variable>.eLfsPmvState,
	sxtabeq	ip, r6, r2	@ tmp194, D.33832, D.33859
	moveq	r2, #2	@ tmp203,
	streqb	r5, [ip, #14]	@ IsRef, <variable>.IsPmvInUse
	streq	r2, [r3, #4]	@ tmp203, <variable>.eLfsPmvState
	b	.L41	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [ip, r0, asl #2]	@ D.33904, s_pFspInst
	cmp	r3, #0	@ D.33904,
	movne	r2, #432	@ tmp141,
	mvneq	r0, #0	@ D.33907,
	mlane	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.33904
	ldrnesb	r0, [r1, #96]	@ D.33907, <variable>.s32IsRef
	bx	lr	@
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [ip, r0, asl #2]	@ D.33970, s_pFspInst
	cmp	r3, #0	@ D.33970,
	movne	r2, #432	@ tmp141,
	mvneq	r0, #0	@ D.33973,
	mlane	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.33970
	ldrnesb	r0, [r1, #97]	@ D.33973, <variable>.s32DispState
	bx	lr	@
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	beq	.L63	@,
.L58:
	mvn	r0, #0	@ Ret,
	bx	lr	@
.L63:
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [ip, #0]	@ D.33990, s_pFspInst
	cmp	ip, #0	@ D.33990,
	beq	.L58	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L59	@,
	ldrsb	r0, [ip, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L60	@,
	mov	r0, r1	@ Ret, ePhyFsType
	mov	r1, #52	@ tmp144,
	mla	r2, r1, r2, ip	@ tmp145, tmp144, PhyFsID, D.33990
	add	r1, r2, #27648	@ tmp146, tmp145,
	add	r2, r1, #152	@ tmp146, tmp146,
	str	r3, [r2, #4]	@ eStoreType, <variable>.eStoreType
	bx	lr	@
.L60:
	mvn	r0, #0	@ Ret,
	bx	lr	@
.L59:
	cmp	r1, #1	@ ePhyFsType,
	bne	.L60	@,
	ldrsb	r1, [ip, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r1	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L60	@,
	mov	r1, #52	@ tmp150,
	mla	r2, r1, r2, ip	@ tmp151, tmp150, PhyFsID, D.33990
	add	r2, r2, #30976	@ tmp152, tmp151,
	add	ip, r2, #152	@ tmp152, tmp152,
	str	r3, [ip, #4]	@ eStoreType, <variable>.eStoreType
	bx	lr	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L65	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.34018, s_pFspInst
	cmp	r3, #0	@ D.34018,
	beq	.L65	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L66	@,
	ldrsb	r1, [r3, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L66	@,
	mov	r1, #52	@ tmp143,
	mla	ip, r1, r2, r3	@ tmp144, tmp143, PhyFsID, D.34018
	add	r0, ip, #27648	@ tmp145, tmp144,
	add	r2, r0, #152	@ tmp145, tmp145,
	ldr	r0, [r2, #4]	@ eStoreType, <variable>.eStoreType
	bx	lr	@
.L66:
	mov	r0, #2	@ eStoreType,
	bx	lr	@
.L65:
	mvn	r0, #0	@ eStoreType,
	bx	lr	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
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
	beq	.L73	@,
.L70:
	mov	r0, #0	@ pstLogicFs,
	bx	lr	@
.L73:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34062, s_pFspInst
	cmp	r3, #0	@ D.34062,
	beq	.L70	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ pstLogicFs, tmp148, LogicFrameID, D.34062
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
	beq	.L78	@,
.L75:
	mov	r0, #0	@ D.34085,
	bx	lr	@
.L78:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34080, s_pFspInst
	cmp	r3, #0	@ D.34080,
	beq	.L75	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ D.34085, tmp148, LogicFrameID, D.34080
	add	r0, r0, #104	@ D.34085, D.34085,
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
	beq	.L83	@,
.L80:
	mov	r0, #0	@ D.34103,
	bx	lr	@
.L83:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34098, s_pFspInst
	cmp	r3, #0	@ D.34098,
	beq	.L80	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.34098
	ldr	r0, [r1, #508]	@ D.34103, <variable>.pstDispOutFs
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
	bne	.L85	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.34116, s_pFspInst
	cmp	r3, #0	@ D.34116,
	beq	.L85	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.34116
	ldr	r0, [r1, #516]	@ D.34121, <variable>.PmvAddr
	bx	lr	@
.L85:
	mov	r0, #0	@ D.34121,
	bx	lr	@
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bxne	lr	@
	cmp	r2, #0	@ DecFsAddrTab,
	bxeq	lr	@
	cmp	r1, #0	@ DecFsNum,
	bxeq	lr	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp147,
	movt	r3, #:upper16:.LANCHOR0	@ tmp147,
	ldr	ip, [r3, #0]	@ s_pFspInst, s_pFspInst
	cmp	ip, #0	@ s_pFspInst,
	bxeq	lr	@
	str	r0, [r1, #0]	@ InstID,* DecFsNum
	ldr	ip, [r3, #0]	@ s_pFspInst, s_pFspInst
	ldrsb	ip, [ip, #10]	@ D.34144, <variable>.s32DecFsNum
	cmp	ip, #0	@ D.34144,
	str	ip, [r1, #0]	@ D.34144,* DecFsNum
	ldr	r3, [r3, #0]	@ temp.924, s_pFspInst
	bxle	lr	@
	add	r3, r3, #27648	@ ivtmp.918, temp.924,
	add	r3, r3, #160	@ ivtmp.918, ivtmp.918,
.L90:
	ldr	ip, [r3], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, r0, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r0, r0, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp156,* DecFsNum
	cmp	ip, r0	@ tmp156, i
	bgt	.L90	@,
	bx	lr	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bxne	lr	@
	cmp	r2, #0	@ PmvAddrTab,
	bxeq	lr	@
	cmp	r1, #0	@ PmvNum,
	bxeq	lr	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	ip, [r3, #0]	@ D.34169, s_pFspInst
	cmp	ip, #0	@ D.34169,
	bxeq	lr	@
	ldrsb	r3, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r3, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	bxle	lr	@
	mov	r3, r0	@ i, ivtmp.953
.L95:
	add	r1, ip, r0	@ tmp142, D.34169, ivtmp.953
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #34560	@ tmp143, tmp142,
	ldr	r1, [r1, #0]	@ tmp144, <variable>.PmvAddr
	str	r1, [r2, r0]	@ tmp144,* ivtmp.953
	add	r0, r0, #4	@ ivtmp.953, ivtmp.953,
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, r3	@ <variable>.s32PmvNum, i
	bgt	.L95	@,
	bx	lr	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	beq	.L108	@,
.L99:
	mvn	r0, #0	@ i,
	bx	lr	@
.L108:
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r3, #0]	@ D.34213, s_pFspInst
	cmp	r3, #0	@ D.34213,
	beq	.L99	@,
.L102:
	add	r2, r3, #432	@ tmp149, ivtmp.989,
	ldr	r3, [r3, #504]	@ D.34217, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.34217,
	beq	.L100	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	bxeq	lr	@
.L100:
	ldr	r3, [r2, #504]	@ D.34217, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.34217,
	mov	ip, r0	@ tmp148, i
	beq	.L105	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	bxeq	lr	@
.L105:
	add	r0, ip, #1	@ i, tmp148,
	add	r3, r2, #432	@ ivtmp.989, tmp149,
	cmp	r0, #64	@ i,
	bne	.L102	@,
	b	.L99	@
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp166,
	movt	r2, #:upper16:.LANCHOR0	@ tmp166,
	mov	r3, #63	@ i,
	ldr	r2, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	add	r1, r2, #27136	@ ivtmp.1047, pstInst,
	add	r1, r1, #177	@ ivtmp.1047, ivtmp.1047,
	b	.L114	@
.L122:
	ldrb	ip, [r1, #-432]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #864	@ ivtmp.1047, ivtmp.1047,
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L113	@,
	subs	r3, r3, #1	@ i, i,
	bcc	.L121	@,
.L114:
	ldrsb	r0, [r1, #0]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r0, #0	@ <variable>.s32DispState,
	bne	.L122	@,
.L113:
	mov	ip, #432	@ tmp172,
	mov	r0, r3	@, ret_id
	mla	r2, ip, r3, r2	@ tmp173, tmp172, ret_id, pstInst
	mov	r3, #0	@ tmp175,
	add	r1, r2, #504	@ tmp174, tmp173,
	str	r3, [r2, #504]	@ tmp175, <variable>.pstDecodeFs
	str	r3, [r1, #4]	@ tmp175, <variable>.pstDispOutFs
	bx	lr	@
.L121:
	mov	r3, #0	@ ret_id,
	b	.L113	@
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	beq	.L127	@,
.L124:
	mvn	r0, #0	@ D.34300,
	bx	lr	@
.L127:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.34302, s_pFspInst
	cmp	r3, #0	@ D.34302,
	beq	.L124	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #1	@ <variable>.eFspInstState,
	bxeq	lr	@
	b	.L124	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
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
	ldr	ip, [r2, r0, asl #2]	@ D.34186, s_pFspInst
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	cmp	ip, #0	@ D.34186,
	beq	.L130	@,
	ldrb	r5, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #27860	@ tmp139,
	mov	r0, r1	@ tmp152, pFspInstInfo
	add	r1, ip, #27648	@, D.34186,
	mov	r2, #3328	@,
	add	r1, r1, #148	@,,
	strb	r5, [r3, #1]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r5, [ip, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r4, #27808	@ tmp140,
	ldr	r4, [ip, r4]	@ <variable>.PhyAddr, <variable>.PhyAddr
	rsb	r4, r4, r5	@ tmp143, <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [r3, #3336]	@ tmp143, <variable>.s32DecFsSize
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
.L130:
	ldmfd	sp!, {r4, r5}
	bx	lr
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
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	cmp	r1, #63	@ LogicFrameID,
	ldmhifd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r8, #:lower16:.LANCHOR0	@ tmp145,
	movt	r8, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r8, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r0, r8, #24	@, tmp145,
	rsbs	r7, r2, #1	@ D.33932, IsWaitDisp
	movcc	r7, #0	@ D.33932
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8, #0]	@ pstInst, s_pFspInst
	mov	r0, #432	@ tmp154,
	mla	r3, r0, r4, r6	@ tmp155, tmp154, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp156, tmp155,
	ldrsb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r1, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L142	@,
	cmp	r7, #0	@ D.33932,
	moveq	r2, #3	@ iftmp.514,
	bne	.L134	@,
.L135:
	mov	lr, #432	@ tmp179,
	mla	r4, lr, r4, r6	@ tmp180, tmp179, LogicFrameID, pstInst
	add	r3, r4, #96	@ tmp181, tmp180,
	ldrsb	r1, [r3, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r2, [r3, #1]	@ iftmp.514, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.IsDummyFs,
	bne	.L140	@,
	add	r0, r4, #504	@ tmp193, tmp180,
	ldr	r2, [r0, #4]	@ temp.1122, <variable>.pstDispOutFs
	cmp	r2, #0	@ temp.1122,
	beq	.L140	@,
	ldr	ip, [r4, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r4, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r4, ip	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L140	@,
	cmp	r7, #0	@ D.33932,
	strneb	r1, [r3, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r1, #3	@ tmp231,
	strne	r1, [r0, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r1, [r3, #1]	@ tmp231, <variable>.s32DispState
	streqb	r1, [r2, #2]	@ tmp231, <variable>.DispState
.L140:
	ldr	r0, .L143	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L142:
	ldr	r1, [r3, #508]	@ D.33936, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.33936,
	beq	.L134	@,
	ldrsb	ip, [r2, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L134	@,
	ldr	r2, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L134	@,
	ldr	r3, [r8, #16]	@ D.34378, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r1, #12]	@ D.33945, <variable>.PhyAddr
	cmp	r3, #0	@ D.34378,
	beq	.L134	@,
	mov	r0, r5	@, InstID
	blx	r3	@ D.34378
.L134:
	mov	r2, #0	@ iftmp.514,
	b	.L135	@
.L144:
	.align	2
.L143:
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
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	.pad #16
	sub	sp, sp, #16	@,,
	cmp	r2, #0	@ pstInst,
	mvneq	r0, #0	@ D.33558,
	beq	.L150	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L151	@,
	add	r2, r2, #27648	@ ivtmp.1173, pstInst,
	sub	r3, r4, #1	@ tmp159, TotalFsNum,
	and	ip, r3, #1	@ tmp161, tmp159,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #148]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L167	@,
.L157:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #52	@ ivtmp.1173, ivtmp.1173,
	ble	.L151	@,
	cmp	ip, #0	@ tmp161,
	beq	.L154	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L159	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L153	@,
.L159:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.1173, ivtmp.1173,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L151	@,
.L154:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #52	@ tmp163, ivtmp.1173,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L152	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L153	@,
.L152:
	ldrsb	r2, [r2, #52]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp162, i
	bne	.L162	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L153	@,
.L162:
	add	r3, r2, #1	@ i, tmp162,
	add	r2, r1, #52	@ ivtmp.1173, tmp163,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L154	@,
.L151:
	add	r1, sp, #16	@ tmp147,,
	mov	lr, #0	@ tmp144,
	add	r2, sp, #4	@,,
	add	r3, sp, #8	@,,
	str	lr, [r1, #-4]!	@ tmp144, RefNum
	str	lr, [sp, #8]	@ tmp144, NewNum
	str	lr, [sp, #4]	@ tmp144, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r0, [sp, #4]	@ ReadNum, ReadNum
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	ldr	r3, [sp, #8]	@ NewNum, NewNum
	add	ip, r2, r0	@ tmp150, RefNum, ReadNum
	add	r1, ip, #2	@ tmp153, tmp150,
	add	r0, r1, r3	@ tmp154, tmp153, NewNum
	cmp	r4, r0	@ TotalFsNum, tmp154
	movle	r0, #0	@, D.33558
	movgt	r0, #1	@, D.33558
.L150:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, pc}
.L167:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L157	@,
.L153:
	cmp	r4, r3	@ TotalFsNum, i
	movgt	r0, #0	@ D.33558,
	bgt	.L150	@,
	b	.L151	@
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
	beq	.L195	@,
.L169:
	mvn	r0, #0	@ D.33510,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L195:
	movw	r3, #:lower16:.LANCHOR0	@ tmp148,
	movt	r3, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r4, [r3, #0]	@ D.33512, s_pFspInst
	cmp	r4, #0	@ D.33512,
	beq	.L169	@,
	ldr	r2, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L170	@,
	ldr	r3, [r3, #8]	@ D.34385, g_FspFrameIntf.IsFrameAvalible
	cmp	r3, #0	@ D.34385,
	beq	.L171	@,
	blx	r3	@ D.34385
	cmp	r0, #0	@,
	bne	.L171	@,
.L170:
	ldrb	r5, [r4, #10]	@ zero_extendqisi2	@ D.33521, <variable>.s32DecFsNum
	cmp	r5, #0	@ D.33521,
	beq	.L172	@,
	sxtb	r5, r5	@ D.33538, D.33521
	cmp	r5, #0	@ D.33538,
	ble	.L173	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	add	r4, r4, #27648	@ ivtmp.1206, D.33512,
	sub	ip, r5, #1	@ tmp159, D.33538,
	ldr	r2, [r3, #0]	@ pretmp.1190, s_pstVfmwChan
	add	r4, r4, #150	@ ivtmp.1206, ivtmp.1206,
	and	ip, ip, #1	@ tmp161, tmp159,
	mov	r3, #0	@ i,
	add	r1, r2, #209920	@ ivtmp.1209, pretmp.1190,
	ldr	r0, [r2, #1580]	@ pretmp.1192, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #824	@ ivtmp.1209, ivtmp.1209,
	cmp	r0, #1	@ pretmp.1192,
	beq	.L196	@,
.L181:
	ldrsb	r2, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L182	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #1	@ <variable>.DispState,
	bls	.L176	@,
.L182:
	mov	r3, #1	@ i,
	cmp	r3, r5	@ i, D.33538
	add	r4, r4, #52	@ ivtmp.1206, ivtmp.1206,
	add	r1, r1, #16	@ ivtmp.1209, ivtmp.1209,
	bge	.L173	@,
	cmp	ip, #0	@ tmp161,
	beq	.L177	@,
	cmp	r0, r3	@ pretmp.1192,
	beq	.L194	@,
.L184:
	ldrsb	ip, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L185	@,
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #1	@ <variable>.DispState,
	bls	.L176	@,
.L185:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #52	@ ivtmp.1206, ivtmp.1206,
	cmp	r3, r5	@ i, D.33538
	add	r1, r1, #16	@ ivtmp.1209, ivtmp.1209,
	blt	.L177	@,
	b	.L173	@
.L174:
	ldrsb	r6, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r6, #0	@ <variable>.IsDecRef,
	bne	.L175	@,
	ldrb	r4, [r4, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #1	@ <variable>.DispState,
	bls	.L176	@,
.L175:
	add	r3, r3, #1	@ i, i,
	cmp	r0, #1	@ pretmp.1192,
	mov	r4, r3	@ tmp162, i
	beq	.L197	@,
.L188:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L189	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	bls	.L176	@,
.L189:
	add	r3, r4, #1	@ i, tmp162,
	add	r1, ip, #16	@ ivtmp.1209, tmp164,
	cmp	r3, r5	@ i, D.33538
	add	r4, r2, #52	@ ivtmp.1206, tmp163,
	bge	.L173	@,
.L177:
	cmp	r0, #1	@ pretmp.1192,
	add	r2, r4, #52	@ tmp163, ivtmp.1206,
	add	ip, r1, #16	@ tmp164, ivtmp.1209,
	bne	.L174	@,
	ldr	r6, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	bne	.L175	@,
	b	.L174	@
.L172:
	mov	r0, #1	@ D.33510,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L197:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L188	@,
	b	.L189	@
.L176:
	cmp	r3, r5	@ i, D.33538
	blt	.L172	@,
.L173:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	bne	.L169	@,
.L171:
	mov	r0, #0	@ D.33510,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L196:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L181	@,
	b	.L182	@
.L194:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L184	@,
	b	.L185	@
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
	add	r4, sp, #32	@ tmp170,,
	mov	r5, r0	@ InstID, InstID
	mov	r6, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	mov	r0, r4	@, tmp170
	mov	sl, r2	@ MemSize, MemSize
	mov	r7, r3	@ UsedMemSize, UsedMemSize
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	beq	.L234	@,
.L199:
	mvn	r0, #0	@ D.32735,
.L216:
	add	sp, sp, #452	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L234:
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	r8, [r3, #0]	@ D.32737, s_pFspInst
	cmp	r8, #0	@ D.32737,
	beq	.L199	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp173,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp173,
	ldrb	fp, [r8, #65]	@ zero_extendqisi2	@ D.32740, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r0, #36]	@ D.32746, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrb	r9, [r8, #60]	@ zero_extendqisi2	@ D.32742, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ D.32746,
	beq	.L199	@,
	ldrsb	lr, [r8, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r6	@, MemPhyAddr
	ldr	r2, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, sl	@, MemSize
	ldr	r3, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp177,
	str	lr, [sp, #4]	@ tmp177,
	ldrsb	lr, [r8, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r5, [sp, #12]	@ InstID,
	str	r4, [sp, #16]	@ tmp170,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	mov	lr, #16	@ tmp182,
	str	lr, [sp, #20]	@ tmp182,
	blx	ip	@ D.32746
	cmp	r0, #0	@ Ret
	bne	.L199	@,
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r3, r9	@ D.32742, D.32742
	sxtb	fp, fp	@ D.32740,
	add	r2, fp, r3, asl #2	@, tmp188, D.32740, D.32742,
	strb	ip, [r8, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r2, r1	@ tmp188, MemArrange.ValidFrameNum
	bgt	.L199	@,
	ldrsb	r4, [r8, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r8, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r4, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r8, #11]	@ Ret, <variable>.s32DispFsNum
	ldrneb	r4, [r8, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strneb	r4, [r8, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
	bne	.L202	@,
	ldrsb	r5, [r8, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r5, #0	@ <variable>.s8LowBufEnable,
	beq	.L201	@,
	ldr	r2, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	movw	r0, #34644	@ tmp198,
	strb	r2, [r8, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	ldr	r6, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r6, [r8, r0]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
.L202:
	ldr	r6, [sp, #440]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	ip, r8, #27648	@ ivtmp.1325, D.32737,
	movw	r2, #34640	@ tmp205,
	mov	r0, #0	@ i,
	add	r3, ip, #160	@ ivtmp.1325, ivtmp.1325,
	ldrsb	r5, [r8, #10]	@ D.32775, <variable>.s32DecFsNum
	mov	r4, r2	@ tmp403, tmp205
	add	ip, sp, #32	@ ivtmp.1324,,
	mov	r1, r0	@ tmp402, i
	str	r6, [r8, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L205	@
.L236:
	str	r0, [r2, #-8]	@ tmp408, <variable>.PhyFsID
	ldr	r6, [ip, #8]	@ tmp446, MemArrange.FrameAddr
	str	r6, [r3, #52]	@ tmp446, <variable>.PhyAddr
	ldr	r3, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp402, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp402, <variable>.DispState
	ldr	r3, [r8, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
.L231:
	add	r0, r0, #1	@ i, tmp408,
	add	ip, ip, #4	@ ivtmp.1324, tmp409,
	cmp	r0, #64	@ i,
	add	r3, r2, #52	@ ivtmp.1325, tmp410,
	beq	.L235	@,
.L205:
	cmp	r5, r0	@ D.32775, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp402, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp408, i,
	ldrgt	r2, [ip, #8]	@ tmp208, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp409, ivtmp.1324,
	ldrle	r2, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r5, r0	@ D.32775, tmp408
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r2, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r2, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r6, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r6, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r2, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r6, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r6, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r2, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r2, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r6, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp402, <variable>.IsTfRef
	str	r6, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp402, <variable>.DispState
	ldr	r2, [r8, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp410, ivtmp.1325,
	bgt	.L236	@,
	str	r1, [r2, #-8]	@ tmp402, <variable>.PhyFsID
	ldr	r6, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r6, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r3, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp402, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp402, <variable>.DispState
	ldr	r3, [r8, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	b	.L231	@
.L235:
	ldrsb	r1, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, sp, #448	@,,
	movw	r0, #34456	@ tmp241,
	mov	r3, #0	@ tmp242,
	mov	r2, #1	@ tmp239,
	str	r3, [r8, r0]	@ tmp242, <variable>.PhyFsID
	add	ip, r4, r1, asl #2	@, tmp248,, <variable>.s32DecFsNum,
	strb	r2, [r8, #12]	@ tmp239, <variable>.s32TfFsNum
	ldr	r4, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movw	r2, #34464	@ tmp243,
	ldr	r0, [ip, #-408]	@ tmp250, MemArrange.FrameAddr
	ldr	ip, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r8, r2]	@ tmp250, <variable>.PhyAddr
	add	r2, r2, #12	@ tmp253, tmp253,
	ldr	r0, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r4, [r8, r2]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	add	r2, r2, #4	@ tmp255, tmp255,
	str	ip, [r8, r2]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	sub	r2, r2, #8	@ tmp251, tmp251,
	str	r0, [r8, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r0, #34484	@ tmp257,
	ldr	ip, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r8, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	ip, [r8, r0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	add	r0, r0, #4	@ tmp259, tmp259,
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r8, r0]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	sub	r0, r0, #34	@ tmp269, tmp269,
	ldr	ip, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r8, r0]	@ tmp242, <variable>.DispState
	sub	r0, r0, #2	@ tmp263, tmp263,
	strb	r3, [r8, r0]	@ tmp242, <variable>.IsDecRef
	add	r0, r0, #40	@ tmp261, tmp261,
	str	ip, [r8, r0]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	sub	r0, r0, #39	@ tmp266, tmp266,
	strb	r3, [r8, r0]	@ tmp242, <variable>.IsTfRef
	bne	.L206	@,
	mov	r0, r2	@ prephitmp.1236, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r8, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L208:
	add	r9, r8, #30976	@ ivtmp.1288, D.32737,
	mov	r2, #0	@ ivtmp.1290,
	str	r7, [sp, #28]	@ UsedMemSize, %sfp
	mov	r3, r2	@ i.1380, ivtmp.1290
	mov	r1, r9	@ ivtmp.1300, ivtmp.1298
	mov	sl, r9	@ ivtmp.1294, ivtmp.1288
	mov	r6, r9	@ ivtmp.1296, ivtmp.1294
	mov	r5, r9	@ ivtmp.1298, ivtmp.1296
	add	r4, r1, #176	@ ivtmp.1300, ivtmp.1300,
	add	fp, r1, #180	@ ivtmp.1302, ivtmp.1302,
	add	r9, r9, #152	@ ivtmp.1288, ivtmp.1288,
	add	sl, sl, #160	@ ivtmp.1294, ivtmp.1294,
	add	r6, r6, #168	@ ivtmp.1296, ivtmp.1296,
	add	r5, r5, #172	@ ivtmp.1298, ivtmp.1298,
	mov	r1, r2	@ tmp400, ivtmp.1290
	mov	r7, r0	@ prephitmp.1236, prephitmp.1236
	b	.L207	@
.L238:
	str	r3, [r9, #0]	@ i.1380, <variable>.PhyFsID
	ldrsb	r0, [r8, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r7, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp291, i.1380, <variable>.s32TfFsNum
	add	r0, r0, r7	@ tmp292, tmp291, <variable>.s32DecFsNum
	add	r7, sp, #448	@,,
	add	r0, r7, r0, asl #2	@, tmp296,, tmp292,
	ldr	r7, [r0, #-408]	@ tmp298, MemArrange.FrameAddr
	str	r7, [sl, #0]	@ tmp298, <variable>.PhyAddr
	ldr	r0, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r7, [r8, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r7, [r5, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r8, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [r4, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r7, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r7, [fp, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r7, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp400, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp400, <variable>.IsDecRef
	str	r7, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp400, <variable>.IsTfRef
.L210:
	add	r3, r3, #1	@ i.1380, i.1380,
	add	r9, r9, #52	@ ivtmp.1288, ivtmp.1288,
	cmp	r3, #64	@ i.1380,
	add	r2, r2, #52	@ ivtmp.1290, ivtmp.1290,
	add	sl, sl, #52	@ ivtmp.1294, ivtmp.1294,
	add	r6, r6, #52	@ ivtmp.1296, ivtmp.1296,
	add	r5, r5, #52	@ ivtmp.1298, ivtmp.1298,
	add	r4, r4, #52	@ ivtmp.1300, ivtmp.1300,
	add	fp, fp, #52	@ ivtmp.1302, ivtmp.1302,
	beq	.L237	@,
	ldrsb	r7, [r8, #11]	@ prephitmp.1236, <variable>.s32DispFsNum
.L207:
	add	ip, r8, r2	@ D.35283, D.32737, ivtmp.1290
	cmp	r7, r3	@ prephitmp.1236, i.1380
	add	ip, ip, #30976	@ tmp304, D.35283,
	mov	r0, ip	@ tmp336, tmp304
	bgt	.L238	@,
	str	r1, [r9, #0]	@ tmp400, <variable>.PhyFsID
	ldrsb	r7, [r8, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, r7, ip	@ tmp324, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	r7, sp, #448	@,,
	add	ip, r7, ip, asl #2	@, tmp328,, tmp324,
	ldr	ip, [ip, #-408]	@ tmp330, MemArrange.FrameAddr
	str	ip, [sl, #0]	@ tmp330, <variable>.PhyAddr
	ldr	r7, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r7, [r6, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r8, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r5, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r7, [r8, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r7, [r4, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [fp, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp400, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp400, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp400, <variable>.IsTfRef
	b	.L210	@
.L237:
	ldr	r2, [sp, #436]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r8, #34560	@ ivtmp.1270, D.32737,
	ldr	r7, [sp, #28]	@ UsedMemSize, %sfp
	mov	r3, #0	@ tmp399,
	cmp	r2, #20	@ MemArrange.ValidPMVNum,
	movge	r2, #20	@ tmp353,
	uxtb	r4, r2	@ prephitmp.1381, tmp353
	strb	r4, [r8, #13]	@ prephitmp.1381, <variable>.s32PmvNum
	ldr	r0, [sp, #312]	@ tmp430, MemArrange.PMVAddr
	add	r4, sp, #32	@,,
	add	ip, r4, #4	@ ivtmp.1391,,
	strb	r3, [r8, #14]	@ tmp399, <variable>.IsPmvInUse
	ldrb	r4, [r8, #13]	@ zero_extendqisi2	@ prephitmp.1381, <variable>.s32PmvNum
	str	r0, [r1, #0]	@ tmp430, <variable>.PmvAddr
	mov	r0, #1	@ i.1382,
	add	r1, r1, #4	@ ivtmp.1270, ivtmp.1270,
	add	r2, r8, r0	@ ivtmp.1276, D.32737,
	b	.L215	@
.L239:
	ldrsb	r4, [r8, #13]	@ prephitmp.1381, <variable>.s32PmvNum
	cmp	r4, r0	@ prephitmp.1381, tmp404
	ldrle	r4, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strleb	r3, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	strle	r4, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	ldrgt	r4, [ip, #280]	@ tmp434, MemArrange.PMVAddr
	strgtb	r3, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	strgt	r4, [r1, #0]	@ tmp434, <variable>.PmvAddr
.L230:
	ldrb	r4, [r8, #13]	@ zero_extendqisi2	@ prephitmp.1381, <variable>.s32PmvNum
	add	r0, r0, #1	@ i.1382, tmp404,
	add	ip, ip, #4	@ ivtmp.1391, tmp405,
	add	r1, r1, #4	@ ivtmp.1270, tmp406,
	add	r2, r2, #1	@ ivtmp.1276, tmp407,
.L215:
	sxtb	r4, r4	@ prephitmp.1381, prephitmp.1381
	cmp	r4, r0	@ prephitmp.1381, i.1382
	add	r0, r0, #1	@ tmp404, i.1382,
	ldrgt	r4, [ip, #280]	@ tmp357, MemArrange.PMVAddr
	add	ip, ip, #4	@ tmp405, ivtmp.1391,
	ldrle	r4, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r0, #20	@ tmp404,
	strb	r3, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp407, ivtmp.1276,
	str	r4, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp406, ivtmp.1270,
	bne	.L239	@,
	movw	r2, #27808	@ tmp368,
	ldr	ip, [sp, #432]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r1, [r8, r2]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r0, #27756	@ tmp367,
	sub	r2, r0, #8	@ tmp365, tmp365,
	movw	r3, #34556	@ tmp363,
	str	ip, [r8, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp366,
	str	r1, [r8, r0]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	str	r3, [r8, r2]	@ tmp366, <variable>.stDummyPhyFs.PhyFsID
	add	r2, r2, #16	@ tmp370, tmp370,
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r0, [r8, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r8, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r8, r2]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	add	ip, r2, #4	@ tmp372, tmp372,
	add	r2, ip, #4	@ tmp374, tmp374,
	str	r0, [r8, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	mov	r0, r3	@ D.32735, tmp366
	str	r1, [r8, r2]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	add	r2, r2, #4	@ tmp376, tmp376,
	ldr	ip, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r8, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	add	ip, r2, #4	@ tmp378, tmp378,
	ldr	r1, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	sub	r2, ip, #36	@ tmp382, tmp382,
	str	r1, [r8, ip]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	add	ip, r2, #1	@ tmp385, tmp385,
	ldr	r1, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r8, r2]	@ tmp366, <variable>.stDummyPhyFs.IsDecRef
	add	r2, ip, #39	@ tmp380, tmp380,
	strb	r3, [r8, ip]	@ tmp366, <variable>.stDummyPhyFs.IsTfRef
	sub	ip, r2, #38	@ tmp388, tmp388,
	str	r1, [r8, r2]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r1, #34656	@ tmp391,
	strb	r3, [r8, ip]	@ tmp366, <variable>.stDummyPhyFs.DispState
	sub	r3, r1, #12	@ tmp393, tmp393,
	ldr	r2, [sp, #444]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	r2, [r8, r1]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	ip, [r8, r3]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	ldr	r1, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r1, [r7, #0]	@ MemArrange.TotalMemUsed,* UsedMemSize
	b	.L216	@
.L206:
	ldr	r3, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	ip, [r8, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r0, r3, #1	@ tmp282, MemArrange.ValidFrameNum,
	rsb	r2, r1, r0	@ tmp281, <variable>.s32DecFsNum, tmp282
	cmp	r2, #25	@ tmp281,
	movge	r2, #25	@ tmp414,
	uxtb	r3, r2	@ prephitmp.1236, tmp414
	strb	r3, [r8, #11]	@ prephitmp.1236, <variable>.s32DispFsNum
	sxtb	r0, r3	@ prephitmp.1236, prephitmp.1236
	cmp	ip, r0	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.1236
	ble	.L208	@,
	b	.L199	@
.L201:
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r1, #40	@ MemArrange.ValidFrameNum,
	movge	r1, #40	@ tmp200,
	strb	r1, [r8, #10]	@ tmp200, <variable>.s32DecFsNum
	b	.L202	@
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
	mov	r5, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #44	@,,
	mov	r1, #416	@,
	mov	r3, #0	@ tmp180,
	mov	r6, r2	@ s32Num, s32Num
	str	r3, [sp, #460]	@ tmp180, s32UsedMemSize
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	beq	.L292	@,
.L241:
	mvn	r0, #0	@ D.33133,
.L261:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L292:
	cmp	r5, #0	@ VoUsingFrameArray,
	beq	.L241	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp183,
	movt	r0, #:upper16:.LANCHOR0	@ tmp183,
	ldr	r7, [r0, #0]	@ pstInst, s_pFspInst
	cmp	r7, #0	@ pstInst,
	beq	.L241	@,
	movw	fp, #34648	@ tmp184,
	ldr	r1, [r5, #0]	@ D.33144, <variable>.FrameAddr
	ldr	r3, [r7, fp]	@, <variable>.MemAddr
	movw	ip, #34656	@ tmp187,
	movw	lr, #34644	@ tmp186,
	str	r3, [sp, #28]	@, %sfp
	movw	r3, #34652	@ tmp185,
	ldr	r0, [r7, ip]	@ <variable>.StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #28]	@, %sfp
	ldr	fp, [r7, lr]	@ <variable>.TotalMemUsed, <variable>.TotalMemUsed
	cmp	ip, r1	@, D.33144
	ldr	lr, [r7, r3]	@, <variable>.MemSize
	add	fp, fp, r0	@ s32VdhTotalMemUse, <variable>.TotalMemUsed, <variable>.StrideByte
	movlt	r2, ip	@,
	rsblt	r4, r2, r1	@ s32FreeSize.1440,, D.33144
	cmp	r4, fp	@ s32FreeSize.1440, s32VdhTotalMemUse
	str	lr, [sp, #32]	@, %sfp
	movge	r2, #1	@,
	strge	r2, [sp, #36]	@, %sfp
	bge	.L255	@,
	sub	r2, r6, #1	@ temp.1472, s32Num,
	ldr	r4, [sp, #28]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	add	r3, r5, r2, asl #3	@, D.33156, VoUsingFrameArray, temp.1472,
	ldr	r0, [r5, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	ip, lr, r4	@ D.33152,,
	ldr	r4, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r0, r4, r0	@ D.33159, <variable>.FrameSize, <variable>.FrameAddr
	cmp	ip, r0	@ D.33152, D.33159
	rsbgt	ip, r0, ip	@ s32FreeSize, D.33159, D.33152
	movle	ip, #0	@ s32FreeSize,
	cmp	ip, fp	@ s32FreeSize, s32VdhTotalMemUse
	blt	.L293	@,
	movw	ip, #34648	@ tmp197,
	movw	lr, #34652	@ tmp198,
	str	r0, [r7, ip]	@ D.33159, <variable>.MemAddr
	str	fp, [r7, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r1, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r1, fp	@ tmp200, <variable>.FrameSize, s32VdhTotalMemUse
	str	r2, [r3, #4]	@ tmp200, <variable>.FrameSize
.L250:
	movw	r0, #34648	@ tmp264,
	movw	r3, #34652	@ tmp266,
	ldr	r1, [r7, r0]	@, <variable>.MemAddr
	mov	r0, #0	@,
	ldr	r2, [r7, r3]	@, <variable>.MemSize
	add	r3, sp, #460	@,,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@,
	beq	.L241	@,
	ldr	r0, [sp, #460]	@ s32UsedMemSize, s32UsedMemSize
	cmp	fp, r0	@ s32VdhTotalMemUse, s32UsedMemSize
	movge	r0, #0	@,
	strge	r0, [sp, #36]	@, %sfp
	blt	.L241	@,
.L255:
	ldrsb	r1, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp270,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp270,
	ble	.L254	@,
	add	r9, r7, #27648	@ ivtmp.1427, pstInst,
	mov	r3, #0	@ i.1451,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp270,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp270,
	add	r0, r9, #160	@ ivtmp.1427, ivtmp.1427,
	mov	ip, r3	@ tmp274, i.1451
	movw	r9, #34640	@ tmp275,
.L256:
	ldr	sl, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	lr, r3, asl #4	@ tmp214, i.1451,
	add	r2, r3, #13120	@ tmp227, i.1451,
	add	r3, r3, #1	@ i.1451, i.1451,
	add	r1, lr, sl	@ tmp215, tmp214, s_pstVfmwChan
	add	r2, r2, #52	@ tmp227, tmp227,
	add	r8, r1, #209920	@ tmp216, tmp215,
	add	sl, r8, #824	@ tmp216, tmp216,
	str	ip, [sl, #0]	@ tmp274, <variable>.eFrameState
	ldr	sl, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r8, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, lr, sl	@ tmp222, tmp214, s_pstVfmwChan
	add	lr, r1, #209920	@ tmp223, tmp222,
	add	r1, lr, #824	@ tmp223, tmp223,
	str	r8, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r8, [r7, r9]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r8, [lr, r2, asl #4]	@ <variable>.ImgSlotLen, <variable>.s32FrameSize
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r1, r2, asl #4	@, tmp237, s_pstVfmwChan, tmp227,
	str	ip, [lr, #4]	@ tmp274, <variable>.s32UsingCount
	ldrsb	r2, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r2, r3	@ <variable>.s32DecFsNum, i.1451
	bgt	.L256	@,
.L254:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp242,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp242,
	ldr	r1, [r4, #0]	@ prephitmp.1406, s_pstVfmwChan
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp241,
	ldr	ip, [r3, #36]	@ D.33200, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp241,
	cmp	ip, #0	@ D.33200,
	ldr	r2, [r1, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r1, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r0, [r1, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L257	@,
	mov	lr, #0	@ tmp243,
	str	r0, [sp, #4]	@ s32DnrNum,
	add	r1, sp, #44	@ tmp247,,
	mvn	r0, #0	@ tmp245,
	str	r1, [sp, #16]	@ tmp247,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #12]	@ tmp245,
	mov	r0, #64	@ tmp248,
	str	lr, [sp, #8]	@ tmp243,
	str	r0, [sp, #20]	@ tmp248,
	mov	r0, #1	@,
	str	lr, [sp, #0]	@ tmp243,
	blx	ip	@ D.33200
	ldr	r1, [r7, #0]	@ prephitmp.1406, s_pstVfmwChan
.L257:
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@, %sfp
	str	ip, [r1, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	r3, [r4, #0]	@ temp.1452, s_pstVfmwChan
	ldr	r1, [r3, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	beq	.L294	@,
.L258:
	sub	r6, r6, #1	@ temp.1472, s32Num,
	ldr	r2, [sp, #32]	@, %sfp
	ldr	ip, [sp, #28]	@, %sfp
	add	lr, r5, r6, asl #3	@, temp.1461, VoUsingFrameArray, temp.1472,
	add	r0, r2, ip	@ temp.1457,,
	ldr	r2, [r5, r6, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	ip, [lr, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, ip, r2	@ temp.1464, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r0, r2	@ temp.1457, temp.1464
	rsbgt	r0, r2, r0	@ s32FreeSize.1439, temp.1464, temp.1457
	movle	r0, #0	@ s32FreeSize.1439,
	cmp	r0, r1	@ s32FreeSize.1439, s32DnrSize
	blt	.L295	@,
.L265:
	str	r2, [r3, #236]	@ temp.1455, <variable>.s32OffLineDnrMemAddr
	mov	r0, #0	@ D.33133,
	b	.L261	@
.L294:
	ldr	r0, [sp, #28]	@, %sfp
	ldr	lr, [r5, #0]	@ temp.1453, <variable>.FrameAddr
	add	fp, fp, r0	@ D.33210, s32VdhTotalMemUse,
	cmp	lr, fp	@ temp.1453, D.33210
	rsbgt	lr, fp, lr	@ s32FreeSize.1438, D.33210, temp.1453
	movle	lr, #0	@ s32FreeSize.1438,
	cmp	lr, r1	@ s32FreeSize.1438, s32DnrSize
	strge	fp, [r3, #236]	@ D.33210, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.33133,
	blt	.L258	@,
	b	.L261	@
.L295:
	cmp	r6, #0	@ temp.1472,
	ble	.L241	@,
	ldr	ip, [r5, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r2, [r5, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r0, [r5, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r2, ip, r2	@ temp.1455, <variable>.FrameAddr, <variable>.FrameSize
	rsb	lr, r2, r0	@ tmp258, temp.1455, <variable>.FrameAddr
	cmp	r1, lr	@ s32DnrSize, tmp258
	ble	.L265	@,
	tst	r6, #1	@ temp.1472,
	mov	ip, #0	@ i.1465,
	bne	.L267	@,
	ldr	r2, [r5, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	ip, #1	@ i.1465,
	ldr	r4, [r5, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r5, #8	@ ivtmp.1422, ivtmp.1422,
	add	r2, r2, r0	@ temp.1455, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r2, r4	@ s32FreeSize.1471, temp.1455, <variable>.FrameAddr
	cmp	r1, lr	@ s32DnrSize, s32FreeSize.1471
	bgt	.L267	@,
	b	.L265	@
.L268:
	ldr	r7, [r5, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	lr, [r5, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r4, [r5, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r0, #8	@ ivtmp.1422, tmp279,
	add	r2, r7, lr	@ temp.1455, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r2, r4	@ s32FreeSize.1471, temp.1455, <variable>.FrameAddr
	cmp	r1, r4	@ s32DnrSize, s32FreeSize.1471
	ble	.L265	@,
	add	r2, r0, #8
	ldmia	r2, {r2, r4, lr}	@ phole ldm
	add	r2, r4, r2	@ temp.1455, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r0, r2, lr	@ s32FreeSize.1471, temp.1455, <variable>.FrameAddr
	cmp	r1, r0	@ s32DnrSize, s32FreeSize.1471
	ble	.L265	@,
.L267:
	add	r2, ip, #1	@ tmp280, i.1465,
	add	r0, r5, #8	@ tmp279, ivtmp.1422,
	cmp	r6, r2	@ temp.1472, tmp280
	add	ip, r2, #1	@ i.1465, tmp280,
	bgt	.L268	@,
	b	.L241	@
.L293:
	cmp	r2, #0	@ temp.1472,
	ble	.L241	@,
	ldr	r0, [r5, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r5, #8	@ D.33170, VoUsingFrameArray,
	ldr	ip, [r5, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r0, r1, r0	@ D.33177, D.33144, <variable>.FrameSize
	rsb	r1, r0, ip	@ tmp195, D.33177, <variable>.FrameAddr
	cmp	fp, r1	@ s32VdhTotalMemUse, tmp195
	movle	r1, r5	@ VoUsingFrameArray.1447, VoUsingFrameArray
	ble	.L249	@,
	tst	r2, #1	@ temp.1472,
	mov	r8, #0	@ i,
	bne	.L251	@,
	ldr	ip, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r1, r3	@ VoUsingFrameArray.1447, ivtmp.1432
	ldr	r0, [r3, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r8, #1	@ i,
	ldr	r4, [r3, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r0, ip, r0	@ D.33177, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r0, r4	@ s32FreeSize.1442, D.33177, <variable>.FrameAddr
	cmp	fp, r4	@ s32VdhTotalMemUse, s32FreeSize.1442
	bgt	.L251	@,
	b	.L249	@
.L252:
	ldmia	r3, {r0, sl}	@ phole ldm
	ldr	r4, [ip, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r0, sl, r0	@ D.33177, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r0, r4	@ s32FreeSize.1442, D.33177, <variable>.FrameAddr
	cmp	fp, r4	@ s32VdhTotalMemUse, s32FreeSize.1442
	ble	.L249	@,
	ldr	r0, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r1, ip	@ VoUsingFrameArray.1447, tmp285
	ldr	r4, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, ip, #8	@ ivtmp.1432, VoUsingFrameArray.1447,
	ldr	ip, [ip, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r0, r4, r0	@ D.33177, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r0, ip	@ s32FreeSize.1442, D.33177, <variable>.FrameAddr
	cmp	fp, lr	@ s32VdhTotalMemUse, s32FreeSize.1442
	ble	.L249	@,
.L251:
	add	r8, r8, #1	@ tmp284, i,
	mov	ip, r3	@ tmp285, ivtmp.1432
	cmp	r8, r2	@ tmp284, temp.1472
	mov	r1, r3	@ VoUsingFrameArray.1447, ivtmp.1432
	add	r8, r8, #1	@ i, tmp284,
	blt	.L252	@,
	b	.L241	@
.L249:
	movw	ip, #34648	@ tmp204,
	add	lr, ip, #4	@ tmp205, tmp205,
	str	r0, [r7, ip]	@ D.33177, <variable>.MemAddr
	str	fp, [r7, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r2, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r2, fp	@ tmp207, <variable>.FrameSize, s32VdhTotalMemUse
	str	r3, [r1, #4]	@ tmp207, <variable>.FrameSize
	b	.L250	@
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
	beq	.L321	@,
.L297:
	mvn	r0, #0	@ D.32625,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L321:
	movw	r8, #:lower16:.LANCHOR0	@ tmp181,
	movt	r8, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r7, [r8, #0]	@ D.32627, s_pFspInst
	cmp	r7, #0	@ D.32627,
	beq	.L297	@,
	add	r0, r7, #96	@, D.32627,
	mov	r1, #27648	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L298	@,
	add	r4, r7, #27648	@ ivtmp.1517, D.32627,
	mov	sl, r8	@ tmp184, tmp181
	add	r4, r4, #192	@ ivtmp.1517, ivtmp.1517,
	mov	r6, r5	@ tmp185, i
.L301:
	ldr	r1, [r4, #-32]	@ D.32636, <variable>.PhyAddr
	add	r5, r5, #1	@ i, i,
	cmp	r1, #0	@ D.32636,
	beq	.L299	@,
	ldr	r0, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L299	@,
	ldrsb	r2, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L300	@,
	ldr	r3, [sl, #20]	@ D.34395, g_FspFrameIntf.SetFrameRef
	mov	r0, #0	@,
	mov	r2, r0	@,
	cmp	r3, r0	@ D.34395,
	beq	.L300	@,
	blx	r3	@ D.34395
.L300:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L299	@,
	ldr	r3, [r8, #16]	@ D.34400, g_FspFrameIntf.ReleaseFrame
	mov	r0, #0	@,
	ldr	r1, [r4, #-32]	@ temp.1518, <variable>.PhyAddr
	cmp	r3, r0	@ D.34400,
	beq	.L299	@,
	blx	r3	@ D.34400
.L299:
	strb	r6, [r4, #-44]	@ tmp185, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp185, <variable>.DispState
	str	r6, [r4], #52	@ tmp185, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	bgt	.L301	@,
.L298:
	ldrsb	ip, [r7, #11]	@ D.32651, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.32651,
	ble	.L302	@,
	add	r4, r7, #30976	@ tmp170, D.32627,
	cmp	ip, #1	@ D.32651,
	add	lr, r4, #192	@ ivtmp.1509, tmp170,
	sub	r3, ip, #1	@ tmp191, D.32651,
	and	r5, r3, #1	@ tmp193, tmp191,
	mov	r0, #1	@ i.1520,
	mov	r3, #0	@ tmp183,
	add	r2, r4, #244	@ ivtmp.1509, tmp170,
	str	r3, [lr, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [lr, #-42]	@ tmp183, <variable>.DispState
	ble	.L302	@,
	cmp	r5, #0	@ tmp193,
	beq	.L303	@,
	mov	r0, #2	@ i.1520,
	cmp	ip, r0	@ D.32651, i.1520
	str	r3, [r2, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	add	r2, r4, #296	@ ivtmp.1509, tmp170,
	ble	.L302	@,
.L303:
	add	r0, r0, #2	@ i.1520, i.1520,
	mov	r1, r2	@ tmp195, ivtmp.1509
	cmp	ip, r0	@ D.32651, i.1520
	str	r3, [r1], #52	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	str	r3, [r2, #52]	@ tmp183, <variable>.u32Tick
	add	r2, r2, #104	@ ivtmp.1509, ivtmp.1509,
	strb	r3, [r1, #-42]	@ tmp183, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp183, <variable>.IsDecRef
	bgt	.L303	@,
.L302:
	ldrsb	ip, [r7, #13]	@ D.32653, <variable>.s32PmvNum
	cmp	ip, #0	@ D.32653,
	ble	.L304	@,
	cmp	ip, #1	@ D.32653,
	sub	r0, ip, #1	@ tmp186, D.32653,
	and	r1, r0, #1	@ tmp188, tmp186,
	mov	r2, #1	@ i.1521,
	mov	r0, #0	@ tmp182,
	add	r3, r7, r2	@ ivtmp.1502, D.32627,
	strb	r0, [r7, #14]	@ tmp182, <variable>.IsPmvInUse
	ble	.L304	@,
	cmp	r1, #0	@ tmp188,
	beq	.L305	@,
	mov	r2, #2	@ i.1521,
	cmp	ip, r2	@ D.32653, i.1521
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1502, ivtmp.1502,
	ble	.L304	@,
.L305:
	add	r2, r2, #2	@ i.1521, i.1521,
	add	lr, r3, #1	@ tmp190, ivtmp.1502,
	cmp	ip, r2	@ D.32653, i.1521
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1502, tmp190,
	bgt	.L305	@,
.L304:
	mov	r0, #0	@ tmp179,
	str	r0, [r7, #36]	@ tmp179, <variable>.u32InstTick
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
	beq	.L326	@,
.L323:
	mvn	r0, #0	@ D.32551,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L326:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r4, [r3, #0]	@ D.32553, s_pFspInst
	cmp	r4, #0	@ D.32553,
	beq	.L323	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	bne	.L323	@,
	mov	r0, r4	@, D.32553
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp139,
	mov	r0, r5	@ D.32551, <variable>.eFspInstState
	str	r1, [r4, #4]	@ tmp139, <variable>.eFspInstState
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
	mvneq	ip, #0	@ D.32528,
	beq	.L329	@,
	add	sl, r4, #40	@ tmp152, pFspInst,
	add	r8, sp, #4	@ tmp153,,
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ s8TmpInstID, <variable>.s32InstID
	mov	r6, sl	@ tmp140, tmp152
	mov	r7, r8	@ tmp139, tmp153
	ldmia	r6!, {r0, r1, r2, r3}	@ tmp140,,,,
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, <variable>.s8LowBufEnable
	ldr	r9, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	stmia	r7!, {r0, r1, r2, r3}	@ tmp139,,,,
	ldr	r2, [r6, #0]	@ <variable>.stPreInfo, <variable>.stPreInfo
	movw	r1, #34664	@,
	mov	r0, r4	@, pFspInst
	str	r2, [r7, #0]	@ <variable>.stPreInfo, stTmpPreInfo
	bl	__memzero	@
	sxtb	r2, r5	@ s8TmpInstID, s8TmpInstID
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp144,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp144,
	str	r9, [r4, #4]	@ eTmpFspInstState, <variable>.eFspInstState
	strb	fp, [r4, #1]	@, <variable>.s8LowBufEnable
	strb	r5, [r4, #0]	@ s8TmpInstID, <variable>.s32InstID
	ldr	r3, [r0, r2, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	ldmeqia	r8!, {r0, r1, r2, r3}	@ tmp149,,,,
	movne	ip, #0	@ D.32528,
	moveq	ip, #0	@ D.32528,
	stmeqia	sl!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldreq	r3, [r7, #0]	@ stTmpPreInfo, stTmpPreInfo
	streq	r3, [r6, #0]	@ stTmpPreInfo,
.L329:
	mov	r0, ip	@, D.32528
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	FSP_ClearContext, .-FSP_ClearContext
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L337	@,
.L333:
	mvn	ip, #0	@ D.32687,
.L335:
	mov	r0, ip	@, D.32687
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L337:
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L333	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, #0]	@ D.32693, s_pFspInst
	cmp	r2, #0	@ D.32693,
	beq	.L333	@,
	ldr	r2, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L333	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp144,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp144,
	strb	r0, [r1, #0]	@ InstID, <variable>.s32DispLoopEnable
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r6, [r3, #0]	@ pstInst, s_pFspInst
	ldr	r3, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L334	@,
	mov	r0, r6	@, pstInst
	str	r1, [sp, #4]	@,
	bl	FSP_ClearContext	@
	ldr	r1, [sp, #4]	@,
.L334:
	mov	r5, r1	@ pstFspInstCfg, pstFspInstCfg
	add	r6, r6, #60	@ tmp147, pstInst,
	ldmia	r5!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	mov	r4, r6	@ tmp153, tmp147
	mov	ip, #0	@ D.32687,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp153,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp153,,,,
	ldr	r1, [r5, #0]	@ tmp150,* pstFspInstCfg
	str	r1, [r4, #0]	@ tmp150, <variable>.stInstCfg
	b	.L335	@
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	beq	.L352	@,
.L339:
	mvn	r0, #0	@ D.32587,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L352:
	movw	r6, #:lower16:.LANCHOR0	@ tmp154,
	movt	r6, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r8, [r6, #0]	@ D.32589, s_pFspInst
	cmp	r8, #0	@ D.32589,
	beq	.L339	@,
	add	r4, r8, #27648	@ ivtmp.1622, D.32589,
	mov	r5, r0	@ i, InstID
	add	r4, r4, #160	@ ivtmp.1622, ivtmp.1622,
	mov	r7, r6	@ tmp155, tmp154
.L342:
	ldr	r1, [r4, #0]	@ D.32593, <variable>.PhyAddr
	cmp	r1, #0	@ D.32593,
	beq	.L340	@,
	ldr	r3, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L340	@,
	ldrsb	r0, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	beq	.L341	@,
	ldr	r3, [r7, #20]	@ D.34410, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.34410,
	beq	.L341	@,
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.34410
.L341:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L340	@,
	ldr	r3, [r6, #16]	@ D.34415, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1627, <variable>.PhyAddr
	cmp	r3, #0	@ D.34415,
	beq	.L340	@,
	mov	r0, #0	@,
	blx	r3	@ D.34415
.L340:
	ldr	r1, [r4, #52]	@ D.32593, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp157, i,
	add	r4, r4, #52	@ tmp158, ivtmp.1622,
	cmp	r1, #0	@ D.32593,
	beq	.L346	@,
	ldr	r2, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L346	@,
	ldrsb	ip, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L347	@,
	ldr	r3, [r7, #20]	@ D.34410, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.34410,
	beq	.L347	@,
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.34410
.L347:
	ldrsb	lr, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L346	@,
	ldr	r3, [r6, #16]	@ D.34415, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1627, <variable>.PhyAddr
	cmp	r3, #0	@ D.34415,
	beq	.L346	@,
	mov	r0, #0	@,
	blx	r3	@ D.34415
.L346:
	add	r5, r5, #1	@ i, tmp157,
	add	r4, r4, #52	@ ivtmp.1622, tmp158,
	cmp	r5, #64	@ i,
	bne	.L342	@,
	mov	r0, r8	@, D.32589
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.32587,
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
	subs	r7, r0, #0	@ InstID, InstID
	.pad #60
	sub	sp, sp, #60	@,,
	beq	.L463	@,
.L356:
	mvn	r0, #0	@ D.33630,
.L362:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L463:
	movw	r8, #:lower16:.LANCHOR0	@ tmp717,
	movt	r8, #:upper16:.LANCHOR0	@ tmp717,
	ldr	r3, [r8, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L356	@,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp718,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp718,
	add	r0, r8, #24	@, tmp717,
	str	r1, [sp, #4]	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [r6, #0]	@ pretmp.1668, s_pstVfmwChan
	ldr	r4, [r8, #0]	@ pstInst, s_pFspInst
	add	r0, r1, #209920	@ ivtmp.1740, pretmp.1668,
	ldr	ip, [r1, #1580]	@ pretmp.1670, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r0, r0, #824	@ ivtmp.1740, ivtmp.1740,
	mov	r3, r4	@ ivtmp.1757, pstInst
	ldr	r1, [sp, #4]	@,
	b	.L361	@
.L357:
	ldrsb	r5, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r5, #0	@ <variable>.s32IsRef,
	bne	.L358	@,
	ldrsb	r5, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r5, #0	@ <variable>.s32DispState,
	beq	.L453	@,
.L358:
	add	r7, r7, #1	@ i.1760, i.1760,
	cmp	ip, #1	@ pretmp.1670,
	mov	r3, r7	@ tmp747, i.1760
	beq	.L464	@,
.L431:
	ldrsb	r0, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r0, #0	@ <variable>.s32IsRef,
	bne	.L432	@,
	ldrsb	r5, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r5, #0	@ <variable>.s32DispState,
	beq	.L453	@,
.L432:
	add	r7, r3, #1	@ i.1760, tmp747,
	add	r0, lr, #16	@ ivtmp.1740, tmp749,
	cmp	r7, #64	@ i.1760,
	add	r3, r2, #432	@ ivtmp.1757, tmp748,
	beq	.L395	@,
.L361:
	cmp	ip, #1	@ pretmp.1670,
	add	r2, r3, #432	@ tmp748, ivtmp.1757,
	add	lr, r0, #16	@ tmp749, ivtmp.1740,
	bne	.L357	@,
	ldr	r5, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r5, #0	@ <variable>.eFrameState,
	bne	.L358	@,
	b	.L357	@
.L464:
	ldr	r0, [r0, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	beq	.L431	@,
	b	.L432	@
.L453:
	mov	r3, #432	@ tmp217,
	mul	lr, r3, r7	@ tmp216, tmp217, i.1760
	add	ip, lr, #96	@ tmp230, tmp216,
	add	r3, lr, r4	@ tmp218, tmp216, pstInst
	add	r2, r4, ip	@ tmp231, pstInst, tmp230
	add	r0, r3, #96	@ tmp219, tmp218,
	cmp	r2, #0	@ tmp231,
	strb	r7, [r0, #3]	@ i.1760, <variable>.s32LogicFsID
	strb	r5, [r0, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L395	@,
	cmp	r1, #0	@ NeedPhyFs,
	add	ip, r3, #504	@ tmp238, tmp218,
	add	r1, r3, #512	@ tmp250, tmp218,
	str	r5, [r3, #504]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	r5, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	r5, [r3, #512]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	r5, [r1, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	beq	.L363	@,
	ldrsb	lr, [r4, #10]	@ temp.1782, <variable>.s32DecFsNum
	cmp	lr, #0	@ temp.1782,
	ble	.L365	@,
	ldr	r2, [r6, #0]	@ pretmp.1680, s_pstVfmwChan
	add	r0, r4, #27648	@ ivtmp.1725, pstInst,
	add	r3, r0, #150	@ ivtmp.1725, ivtmp.1725,
	sub	ip, lr, #1	@ tmp741, temp.1782,
	add	r1, r2, #209920	@ ivtmp.1728, pretmp.1680,
	ldr	r0, [r2, #1580]	@ pretmp.1682, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #824	@ ivtmp.1728, ivtmp.1728,
	and	r2, ip, #1	@ tmp743, tmp741,
	cmp	r0, #1	@ pretmp.1682,
	beq	.L465	@,
.L421:
	ldrsb	ip, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L422	@,
	ldrsb	ip, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L450	@,
.L422:
	mov	r5, #1	@ i.1766,
	cmp	r5, lr	@ i.1766, temp.1782
	add	r3, r3, #52	@ ivtmp.1725, ivtmp.1725,
	add	r1, r1, #16	@ ivtmp.1728, ivtmp.1728,
	bge	.L451	@,
	cmp	r2, #0	@ tmp743,
	beq	.L369	@,
	cmp	r0, r5	@ pretmp.1682,
	beq	.L452	@,
.L424:
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	bne	.L425	@,
	ldrsb	ip, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L450	@,
.L425:
	add	r5, r5, #1	@ i.1766, i.1766,
	add	r3, r3, #52	@ ivtmp.1725, ivtmp.1725,
	cmp	r5, lr	@ i.1766, temp.1782
	add	r1, r1, #16	@ ivtmp.1728, ivtmp.1728,
	blt	.L369	@,
	b	.L451	@
.L367:
	ldrsb	sl, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	sl, #0	@ <variable>.IsDecRef,
	bne	.L368	@,
	ldrsb	r3, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L450	@,
.L368:
	add	r5, r5, #1	@ i.1766, i.1766,
	cmp	r0, #1	@ pretmp.1682,
	mov	r3, r5	@ tmp744, i.1766
	beq	.L466	@,
.L428:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L429	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L450	@,
.L429:
	add	r5, r3, #1	@ i.1766, tmp744,
	add	r1, ip, #16	@ ivtmp.1728, tmp746,
	cmp	r5, lr	@ i.1766, temp.1782
	add	r3, r2, #52	@ ivtmp.1725, tmp745,
	bge	.L451	@,
.L369:
	cmp	r0, #1	@ pretmp.1682,
	add	r2, r3, #52	@ tmp745, ivtmp.1725,
	add	ip, r1, #16	@ tmp746, ivtmp.1728,
	bne	.L367	@,
	ldr	sl, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	sl, #0	@ <variable>.eFrameState,
	bne	.L368	@,
	b	.L367	@
.L451:
	mov	lr, #432	@ tmp320,
	mla	r3, lr, r7, r4	@ tmp321, tmp320, i.1760, pstInst
	ldr	r5, [r3, #504]	@ prephitmp.1673, <variable>.pstDecodeFs
.L365:
	cmp	r5, #0	@ prephitmp.1673,
	beq	.L467	@,
.L370:
	mov	r3, #432	@ tmp337,
	add	r0, r4, #34304	@ tmp340, pstInst,
	mla	ip, r3, r7, r4	@ tmp338, tmp337, i.1760, pstInst
	add	r5, r0, #148	@ tmp340, tmp340,
	str	r5, [ip, #512]	@ tmp340, <variable>.pstTfOutFs
	ldrsb	ip, [r4, #13]	@ temp.1749, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.1749,
	ble	.L377	@,
	ldrsb	r3, [r4, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.33694, temp.1749
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.1676, <variable>.IsPmvInUse
	beq	.L379	@,
	tst	ip, #1	@ temp.1749,
	mov	r2, r4	@ ivtmp.1739, pstInst
	mov	r3, #0	@ i.1751,
	bne	.L380	@,
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ D.33689, <variable>.IsPmvInUse
	mov	r3, #1	@ i.1751,
	add	r2, r4, r3	@ ivtmp.1739, pstInst,
	cmp	r1, #0	@ D.33689,
	bne	.L380	@,
	b	.L447	@
.L382:
	ldrb	r5, [r2, #15]	@ zero_extendqisi2	@ D.33689, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.1739, tmp735,
	cmp	r5, #0	@ D.33689,
	beq	.L447	@,
	ldrb	r5, [r1, #15]	@ zero_extendqisi2	@ D.33689, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.1751, i.1751,
	cmp	r5, #0	@ D.33689,
	beq	.L447	@,
.L380:
	add	r3, r3, #1	@ i.1751, i.1751,
	add	r1, r2, #1	@ tmp735, ivtmp.1739,
	cmp	r3, ip	@ i.1751, temp.1749
	blt	.L382	@,
.L381:
	cmp	lr, #0	@ D.33694,
	ble	.L383	@,
	ldrsb	ip, [r4, #13]	@ temp.1754, <variable>.s32PmvNum
	mov	r2, #1	@ i.1744,
	mov	r0, #0	@ tmp720,
	strb	r0, [r4, #14]	@ tmp720, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.1754,
	sub	r3, ip, #1	@ tmp726, temp.1754,
	and	r1, r3, r2	@ tmp728, tmp726,
	add	r3, r4, r2	@ ivtmp.1750, pstInst,
	ble	.L383	@,
	cmp	r1, #0	@ tmp728,
	beq	.L384	@,
	mov	r2, #2	@ i.1744,
	cmp	ip, r2	@ temp.1754, i.1744
	strb	r0, [r3, #14]	@ tmp720, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1750, ivtmp.1750,
	ble	.L383	@,
.L384:
	add	r2, r2, #2	@ i.1744, i.1744,
	add	r1, r3, #1	@ tmp730, ivtmp.1750,
	cmp	ip, r2	@ temp.1754, i.1744
	strb	r0, [r3, #14]	@ tmp720, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp720, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1750, tmp730,
	bgt	.L384	@,
.L383:
	mov	r3, #432	@ tmp368,
	mov	r2, #34560	@ tmp378,
	mla	ip, r3, r7, r4	@ tmp369, tmp368, i.1760, pstInst
	mov	r1, #0	@ tmp371,
	movw	r5, #34556	@ tmp385,
	add	lr, ip, #96	@ tmp370, tmp369,
	strb	r1, [lr, #4]	@ tmp371, <variable>.PmvIdc
	ldr	r0, [r4, r2]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	r0, [ip, #516]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	lr, [r4, r5]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	lr, [ip, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
.L377:
	ldrsb	ip, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L385	@,
	ldrsb	sl, [r4, #11]	@ D.33712, <variable>.s32DispFsNum
	cmp	sl, #0	@ D.33712,
	ble	.L462	@,
	add	r0, r4, #30976	@ tmp393, pstInst,
	cmn	r0, #148	@ tmp393,
	beq	.L388	@,
	movw	r1, #31124	@ tmp394,
	ldr	r2, [r4, r1]	@ tmp396,
	bic	r5, r2, #-16777216	@ tmp395, tmp396,
	cmp	r5, #0	@ tmp395,
	beq	.L388	@,
	tst	sl, #1	@ D.33712,
	add	r3, r0, #200	@ ivtmp.1700, tmp393,
	mov	r2, #0	@ i,
	mov	lr, #52	@ tmp719,
	bne	.L392	@,
	cmp	r3, #0	@ ivtmp.1700,
	mov	r2, #1	@ i,
	mov	r1, r2	@ i.1747, i
	beq	.L391	@,
	add	ip, lr, r4	@ tmp771, tmp719, pstInst
	add	r3, r0, #252	@ ivtmp.1700, tmp393,
	add	r0, ip, #30976	@ tmp772, tmp771,
	add	r5, r0, #144	@ tmp772, tmp772,
	ldr	ip, [r5, #4]	@ tmp773,
	bic	r0, ip, #-16777216	@ tmp774, tmp773,
	cmp	r0, #0	@ tmp774,
	bne	.L392	@,
	b	.L391	@
.L393:
	cmp	r3, #0	@ ivtmp.1700,
	add	r0, r0, #30976	@ tmp412, tmp411,
	mla	ip, lr, r2, r4	@ tmp777, tmp719, i, pstInst
	add	r3, r3, #104	@ ivtmp.1700, ivtmp.1700,
	add	r0, r0, #144	@ tmp412, tmp412,
	beq	.L391	@,
	ldr	r0, [r0, #4]	@ tmp414,
	add	ip, ip, #30976	@ tmp778, tmp777,
	add	ip, ip, #144	@ tmp778, tmp778,
	bic	r0, r0, #-16777216	@ tmp413, tmp414,
	cmp	r0, #0	@ tmp413,
	beq	.L391	@,
	cmp	r5, #0	@ tmp724,
	mov	r1, r2	@ i.1747, i
	beq	.L391	@,
	ldr	r0, [ip, #4]	@ tmp779,
	bic	r5, r0, #-16777216	@ tmp780, tmp779,
	cmp	r5, #0	@ tmp780,
	beq	.L391	@,
.L392:
	add	r1, r2, #1	@ tmp725, i,
	add	r5, r3, #52	@ tmp724, ivtmp.1700,
	cmp	sl, r1	@ D.33712, tmp725
	add	r2, r1, #1	@ i, i.1747,
	mla	r0, lr, r1, r4	@ tmp411, tmp719, i.1747, pstInst
	bgt	.L393	@,
.L462:
	mov	ip, #432	@ tmp427,
	mla	r0, ip, r7, r4	@ tmp428, tmp427, i.1760, pstInst
	ldr	r5, [r0, #508]	@ prephitmp.1748, <variable>.pstDispOutFs
.L387:
	cmp	r5, #0	@ prephitmp.1748,
	beq	.L468	@,
.L390:
	ldr	lr, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r5, #:lower16:.LANCHOR0	@ tmp445,
	movt	r5, #:upper16:.LANCHOR0	@ tmp445,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L366	@,
	ldr	r3, [r5, #12]	@ D.34432, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.34432,
	beq	.L395	@,
	mov	r0, #0	@,
	add	r1, sp, #16	@,,
	blx	r3	@ D.34432
	cmp	r0, #0	@,
	bne	.L395	@,
	ldr	r2, [sp, #16]	@ D.33730, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.33730,
	beq	.L469	@,
	mov	fp, #432	@ tmp455,
	mla	r9, fp, r7, r4	@ tmp456, tmp455, i.1760, pstInst
	ldr	sl, [r9, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [sl, #12]	@ D.33730, <variable>.PhyAddr
	ldr	r8, [sp, #32]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r8, [r9, #516]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
.L366:
	mov	r5, #432	@ tmp467,
	mov	ip, #1	@ tmp470,
	mul	r7, r5, r7	@ tmp466, tmp467, i.1760
	mov	r1, #392	@,
	add	r5, r7, r4	@ tmp468, tmp466, pstInst
	add	r9, r7, #104	@ tmp528, tmp466,
	add	fp, r5, #504	@ tmp476, tmp468,
	add	r7, r5, #96	@ tmp469, tmp468,
	add	r8, r5, #152	@, tmp468,
	add	lr, r5, #144	@, tmp468,
	ldr	r3, [fp, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r4, r9	@, pstInst, tmp528
	strb	ip, [r7, #1]	@ tmp470, <variable>.s32DispState
	add	r2, r5, #136	@ tmp575, tmp468,
	str	r8, [sp, #8]	@, %sfp
	add	r9, r5, #208	@ tmp563, tmp468,
	strb	ip, [r3, #2]	@ tmp470, <variable>.DispState
	add	sl, r5, #224	@ tmp616, tmp468,
	str	lr, [sp, #12]	@, %sfp
	add	r8, r5, #216	@ tmp644, tmp468,
	str	ip, [r5, #500]	@ tmp470, <variable>.eLfsPmvState
	ldr	ip, [r5, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r4, #36]	@ D.33734, <variable>.u32InstTick
	str	r3, [r5, #496]	@ D.33734, <variable>.u32Tick
	str	r3, [ip, #44]	@ D.33734, <variable>.u32Tick
	ldr	lr, [fp, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r5, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	str	ip, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r4, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	ip, r3, #1	@ tmp510, <variable>.u32InstTick,
	str	ip, [r4, #36]	@ tmp510, <variable>.u32InstTick
	ldr	lr, [r5, #512]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [fp, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	fp, [r5, #504]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [sp, #0]	@,
	str	r2, [sp, #4]	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	r3, [r5, #280]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r2, [fp, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r2, [r5, #248]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	ip, [fp, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	ip, [r5, #252]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r5, #276]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	r3, [fp, #12]	@ D.33750, <variable>.PhyAddr
	str	r3, [r5, #208]	@ D.33750, <variable>.stDispImg.luma_phy_addr
	mov	r0, r3	@, D.33750
	ldr	r1, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r2, r1, r3	@ tmp570, <variable>.ChromOffset, D.33750
	str	r2, [r9, #4]	@ tmp570, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #4]	@,
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r3, [r4, #12]	@ D.33763, <variable>.PhyAddr
	str	r3, [r5, #192]	@ D.33763, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r3, r1	@ D.33766, D.33763, <variable>.ChromOffset
	str	ip, [r5, #196]	@ D.33766, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r0, r3	@ tmp604, <variable>.Stride, D.33763
	str	r2, [r5, #200]	@ tmp604, <variable>.stDispImg.btm_luma_phy_addr
	ldr	r3, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, ip, r3	@ tmp611, D.33766, <variable>.Stride
	str	r0, [r5, #204]	@ tmp611, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ temp.1769, <variable>.PhyAddr
	str	r2, [r5, #224]	@ temp.1769, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r2	@, temp.1769
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, r2	@ tmp623, <variable>.ChromOffset, temp.1769
	str	r3, [sl, #4]	@ tmp623, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #8]	@, %sfp
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [sp, #0]	@,
	ldr	r1, [r0, #12]	@ D.33781, <variable>.PhyAddr
	str	r1, [r5, #216]	@ D.33781, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r1	@, D.33781
	ldr	r2, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r2, r1	@ tmp651, <variable>.ChromOffset, D.33781
	str	r3, [r8, #4]	@ tmp651, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r8, [sp, #12]	@, %sfp
	add	r1, r5, #464	@ tmp672, tmp468,
	add	ip, r5, #472	@ tmp690, tmp468,
	mov	r3, #0	@ tmp679,
	movw	r2, #:lower16:211828	@ tmp705,
	movt	r2, #:upper16:211828	@ tmp705,
	str	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, [fp, #48]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r3, [ip, #4]	@ tmp679, <variable>.stDispImg.u32Circumrotate
	str	r3, [r1, #4]	@ tmp679, <variable>.stDispImg.u32Is1D
	str	r0, [r5, #464]	@ <variable>.ImgSize, <variable>.stDispImg.ImgSize
	str	r3, [r5, #480]	@ tmp679, <variable>.stDispImg.u32IsLastFrame
	str	r3, [r5, #472]	@ tmp679, <variable>.stDispImg.is_processed_by_dnr
	ldr	ip, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, .L471	@,
	ldr	r1, [ip, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	str	r1, [r5, #488]	@ <variable>.u32ChanTick, <variable>.stDispImg.u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.33630, <variable>.s32LogicFsID
	b	.L362	@
.L363:
	add	lr, r4, #27648	@ D.33657, pstInst,
	mov	fp, #34560	@ tmp284,
	add	r2, lr, #96	@ D.33657, D.33657,
	str	r2, [r3, #512]	@ D.33657, <variable>.pstTfOutFs
	str	r2, [ip, #4]	@ D.33657, <variable>.pstDispOutFs
	mov	r9, #1	@ tmp300,
	str	r2, [r3, #504]	@ D.33657, <variable>.pstDecodeFs
	ldr	sl, [r4, fp]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	sl, [r1, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r8, [r4, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r9, [r0, #2]	@ tmp300, <variable>.IsDummyFs
	sub	r5, r8, #1	@ tmp293, <variable>.s32PmvNum,
	strb	r5, [r0, #4]	@ tmp293, <variable>.PmvIdc
	b	.L366	@
.L466:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L428	@,
	b	.L429	@
.L385:
	mov	r3, #432	@ tmp399,
	mla	lr, r3, r7, r4	@ tmp400, tmp399, i.1760, pstInst
	ldr	r0, [lr, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r0, [lr, #508]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
	b	.L390	@
.L447:
	uxtb	r1, r3	@ prephitmp.1676, i.1751
.L379:
	mov	r2, #432	@ tmp346,
	add	r0, r3, #8640	@ tmp355, i.1751,
	mla	lr, r2, r7, r4	@ tmp347, tmp346, i.1760, pstInst
	movw	ip, #34556	@ tmp362,
	strb	r1, [lr, #100]	@ prephitmp.1676, <variable>.PmvIdc
	ldr	r5, [r4, r0, asl #2]	@ tmp356, <variable>.PmvAddr
	str	r5, [lr, #516]	@ tmp356, <variable>.PmvAddr
	ldr	r1, [r4, ip]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [lr, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r4, #13]	@ D.33694, <variable>.s32PmvNum
	cmp	lr, r3	@ D.33694, i.1751
	bgt	.L377	@,
	b	.L381	@
.L388:
	mov	r1, #0	@ i.1747,
.L391:
	mov	r3, #432	@ tmp422,
	mov	r2, #52	@ tmp416,
	mla	lr, r3, r7, r4	@ tmp423, tmp422, i.1760, pstInst
	mla	r1, r2, r1, r4	@ tmp419, tmp416, i.1747, pstInst
	add	r5, r1, #30976	@ prephitmp.1748, tmp419,
	add	r5, r5, #148	@ prephitmp.1748, prephitmp.1748,
	str	r5, [lr, #508]	@ prephitmp.1748, <variable>.pstDispOutFs
	b	.L387	@
.L450:
	mov	r0, #432	@ tmp315,
	mov	r2, #52	@ tmp309,
	mla	lr, r0, r7, r4	@ tmp316, tmp315, i.1760, pstInst
	mla	ip, r2, r5, r4	@ tmp312, tmp309, i.1766, pstInst
	add	r5, ip, #27648	@ prephitmp.1673, tmp312,
	add	r5, r5, #148	@ prephitmp.1673, prephitmp.1673,
	str	r5, [lr, #504]	@ prephitmp.1673, <variable>.pstDecodeFs
	b	.L365	@
.L467:
	ldrsb	ip, [r4, #10]	@ D.33680, <variable>.s32DecFsNum
	cmp	ip, #0	@ D.33680,
	ble	.L372	@,
	tst	ip, #1	@ D.33680,
	add	r2, r4, #27648	@ pstPhyFs, pstInst,
	mov	r1, r5	@ i.1774, i.1775
	add	r3, r2, #148	@ pstPhyFs, pstPhyFs,
	mvn	r0, #0	@ LeastTick.1780,
	bne	.L376	@,
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	mov	r1, #1	@ i.1774,
	add	r3, r3, #52	@ pstPhyFs, pstPhyFs,
	cmn	r2, #1	@ LeastTick,
	movcs	r2, r0	@, LeastTick, LeastTick.1780
	mov	r0, r2	@ LeastTick.1780, LeastTick
	b	.L376	@
.L470:
	ldr	r0, [lr, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r0, r2	@ LeastTick, LeastTick
	movcs	r0, r2	@ LeastTick, LeastTick
	movcc	r5, r3	@ i.1775, tmp739
.L449:
	add	r1, r3, #1	@ i.1774, tmp739,
	add	r3, lr, #52	@ pstPhyFs, tmp740,
.L376:
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	add	lr, r3, #52	@ tmp740, pstPhyFs,
	add	r3, r1, #1	@ tmp739, i.1774,
	cmp	r2, r0	@ LeastTick, LeastTick.1780
	movcc	r5, r1	@ i.1775, i.1774
	movcs	r2, r0	@ LeastTick, LeastTick.1780
	cmp	r3, ip	@ tmp739, D.33680
	blt	.L470	@,
.L372:
	mov	r2, #432	@ tmp326,
	mov	lr, #52	@ tmp330,
	mla	ip, r2, r7, r4	@ tmp327, tmp326, i.1760, pstInst
	mla	r3, lr, r5, r4	@ tmp333, tmp330, prephitmp.1678, pstInst
	add	r0, r3, #27648	@ tmp334, tmp333,
	add	r5, r0, #148	@ tmp334, tmp334,
	str	r5, [ip, #504]	@ tmp334, <variable>.pstDecodeFs
	b	.L370	@
.L465:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L421	@,
	b	.L422	@
.L452:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L424	@,
	b	.L425	@
.L468:
	add	r1, sp, #56	@ tmp433,,
	mov	r0, r5	@, prephitmp.1748
	add	r2, sp, #44	@,,
	add	r3, sp, #48	@,,
	str	r5, [r1, #-4]!	@ prephitmp.1748, RefNum
	str	r5, [sp, #48]	@ prephitmp.1748, NewNum
	str	r5, [sp, #44]	@ prephitmp.1748, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [sp, #44]	@ ReadNum, ReadNum
	ldr	r2, [sp, #52]	@ RefNum, RefNum
	ldr	r0, [sp, #48]	@ NewNum, NewNum
	add	ip, r2, r3	@ tmp436, RefNum, ReadNum
	ldrsb	r3, [r4, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, ip, #2	@ tmp439, tmp436,
	add	r2, r1, r0	@ tmp440, tmp439, NewNum
	cmp	r2, r3	@ tmp440, <variable>.s32DispFsNum
	bge	.L395	@,
	mov	r0, r5	@, prephitmp.1748
	bl	FSP_PrintContext	@
.L395:
	ldr	r0, .L471	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.33630,
	b	.L362	@
.L469:
	add	r0, r5, #24	@, tmp445,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.33630,
	b	.L362	@
.L472:
	.align	2
.L471:
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
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #460
	sub	sp, sp, #460	@,,
	mov	r7, r0	@ InstID, InstID
	mov	r9, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #40	@,,
	mov	r1, #416	@,
	str	r2, [sp, #24]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r7, #0	@ InstID,
	bne	.L474	@,
	movw	fp, #:lower16:.LANCHOR0	@ tmp177,
	movt	fp, #:upper16:.LANCHOR0	@ tmp177,
	movw	ip, #34652	@ tmp179,
	movw	r3, #34648	@ tmp178,
	ldr	r6, [fp, #0]	@ pstInst, s_pFspInst
	movw	r5, #34644	@ tmp180,
	movw	r1, #34656	@ tmp181,
	ldr	r8, [r6, ip]	@, <variable>.MemSize
	ldrsb	lr, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	fp, [r6, r3]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r3, #34640	@ tmp182,
	str	r8, [sp, #36]	@, %sfp
	cmp	lr, #0	@ <variable>.s32DecFsNum,
	ldr	r2, [r6, r5]	@, <variable>.TotalMemUsed
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp317,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp317,
	str	r2, [sp, #32]	@, %sfp
	ldr	r0, [r6, r1]	@, <variable>.StrideByte
	str	r0, [sp, #28]	@, %sfp
	ldr	r5, [r6, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	ble	.L475	@,
	add	r4, r6, #27648	@ ivtmp.1833, pstInst,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp326,
	add	r8, r4, #160	@ ivtmp.1833, ivtmp.1833,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp326,
.L478:
	ldr	r1, [r8, #0]	@, <variable>.PhyAddr
	mov	r2, r5	@, s32ImgSize
	mov	r0, #0	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp317,
	bl	DNR_FsIsInImgQue	@
	add	r1, r7, #13120	@ tmp202, i,
	mov	r2, r7, asl #4	@ tmp189, i,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp317,
	add	r3, r1, #52	@ tmp202, tmp202,
	cmp	r0, #0	@ s32UsingCount
	bne	.L476	@,
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r2, lr	@ tmp190, tmp189, s_pstVfmwChan
	add	r1, ip, #209920	@ tmp191, tmp190,
	add	lr, r1, #824	@ tmp191, tmp191,
	str	r0, [lr, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, r2, ip	@ tmp197, tmp189, s_pstVfmwChan
	add	ip, r1, #209920	@ tmp198, tmp197,
	add	r2, ip, #824	@ tmp198, tmp198,
	str	lr, [r2, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
.L521:
	ldr	r1, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	r8, r8, #52	@ ivtmp.1833, ivtmp.1833,
	str	r5, [r1, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r3, r2, r3, asl #4	@, tmp237, s_pstVfmwChan, tmp229,
	str	r0, [r3, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	bgt	.L478	@,
.L475:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp241,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp241,
	ldr	r1, [r4, #0]	@ prephitmp.1800, s_pstVfmwChan
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp240,
	ldr	ip, [r8, #36]	@ D.33041, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp240,
	cmp	ip, #0	@ D.33041,
	ldr	r2, [r1, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r1, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r0, [r1, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L479	@,
	mov	lr, #0	@ tmp242,
	str	r0, [sp, #4]	@ s32DnrNum,
	add	r1, sp, #40	@ tmp246,,
	mov	r0, #64	@ tmp247,
	str	r1, [sp, #16]	@ tmp246,
	mvn	r8, #0	@ tmp244,
	str	r0, [sp, #20]	@ tmp247,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp242,
	mov	r0, #1	@,
	str	r8, [sp, #12]	@ tmp244,
	str	lr, [sp, #0]	@ tmp242,
	blx	ip	@ D.33041
	ldr	r1, [r7, #0]	@ prephitmp.1800, s_pstVfmwChan
.L479:
	ldr	r7, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r2, [sp, #28]	@, %sfp
	str	r7, [r1, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	ldr	r7, [r4, #0]	@ temp.1844, s_pstVfmwChan
	add	r3, r0, r2	@ tmp251,,
	ldr	ip, [r9, #0]	@ D.33049, <variable>.FrameAddr
	add	r3, r3, fp	@ D.33050, tmp251, s32VdhMemAddr
	cmp	ip, r3	@ D.33049, D.33050
	ldr	r8, [r7, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	rsbgt	ip, r3, ip	@ s32FreeSize, D.33050, D.33049
	movle	ip, #0	@ s32FreeSize,
	cmp	ip, r8	@ s32FreeSize, s32DnrSize
	bge	.L523	@,
	ldr	ip, [sp, #24]	@, %sfp
	cmp	ip, #0	@,
	beq	.L484	@,
	ble	.L485	@,
	sub	r2, ip, #1	@ tmp252,,
	add	ip, r9, r2, asl #3	@, D.33064, VoUsingFrameArray, tmp252,
	ldr	lr, [r9, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r1, lr	@ prephitmp.1808, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r3, r2	@ D.33050, prephitmp.1808
	bgt	.L484	@,
.L486:
	ldr	r1, [sp, #36]	@, %sfp
	add	r3, r1, fp	@ tmp261,, s32VdhMemAddr
	rsb	lr, r2, r3	@ tmp262, prephitmp.1808, tmp261
	cmp	r8, lr	@ s32DnrSize, tmp262
	strle	r2, [r7, #236]	@ prephitmp.1808, <variable>.s32OffLineDnrMemAddr
	movle	r0, #0	@ D.33023,
	ble	.L483	@,
.L487:
	cmp	r5, r8	@ s32ImgSize, s32DnrSize
	movge	r0, #1	@,
	strge	r0, [sp, #24]	@, %sfp
	bge	.L489	@,
	mov	r1, r5	@, s32ImgSize
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idiv	@
	mov	r1, r5	@, s32ImgSize
	str	r0, [sp, #24]	@, %sfp
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	ldrgt	r1, [sp, #24]	@, %sfp
	addgt	r1, r1, #1	@,,
	strgt	r1, [sp, #24]	@, %sfp
.L489:
	ldrsb	r8, [r6, #10]	@ temp.1850, <variable>.s32DecFsNum
	cmp	r8, #0	@ temp.1850,
	ble	.L474	@,
	ldr	r1, [sp, #24]	@, %sfp
	cmp	r1, r8	@, temp.1850
	bgt	.L500	@,
	mov	r3, r1	@ s32DnrLockFrmNum.1846,
	mov	r2, #0	@ i.1853,
	mov	r1, r2	@ j.1858, i.1853
	mov	sl, r3	@ s32DnrLockFrmNum, s32DnrLockFrmNum.1846
.L501:
	cmp	r3, r2	@ s32DnrLockFrmNum.1846, i.1853
	ble	.L524	@,
	mov	ip, r2, asl #4	@ tmp319, i.1853,
	add	r0, ip, r7	@ tmp274, tmp319, temp.1844
	add	lr, r0, #209920	@ tmp275, tmp274,
	add	r0, lr, #824	@ tmp275, tmp275,
	ldr	r0, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	bne	.L493	@,
	mvn	lr, r2	@ tmp334, i.1853
	add	r0, lr, r3	@ tmp333, tmp334, s32DnrLockFrmNum.1846
	add	r1, ip, #209920	@ tmp278, tmp319,
	tst	r0, #1	@ tmp333,
	add	lr, r1, #824	@ tmp278, tmp278,
	mov	r1, r2	@ j.1848, i.1853
	add	r0, r7, lr	@ ivtmp.1830, temp.1844, tmp278
	beq	.L494	@,
	ldr	r9, [r0, #16]!	@ temp.1857, <variable>.eFrameState
	add	r1, r2, #1	@ j.1848, i.1853,
	cmp	r9, #0	@ temp.1857,
	beq	.L494	@,
	b	.L493	@
.L496:
	ldr	r9, [r0, #16]!	@ temp.1857, <variable>.eFrameState
	cmp	r9, #0	@ temp.1857,
	bne	.L493	@,
	ldr	r9, [r0, #16]!	@ temp.1857, <variable>.eFrameState
	add	r1, r1, #1	@ j.1848, j.1848,
	cmp	r9, #0	@ temp.1857,
	bne	.L493	@,
.L494:
	add	r1, r1, #1	@ j.1848, j.1848,
	cmp	r3, r1	@ s32DnrLockFrmNum.1846, j.1848
	bgt	.L496	@,
.L492:
	add	lr, ip, r7	@ tmp282, tmp319, temp.1844
	cmp	r3, r2	@ s32DnrLockFrmNum.1846, i.1853
	add	r1, lr, #209920	@ tmp283, tmp282,
	add	ip, r1, #824	@ tmp283, tmp283,
	ldr	r8, [ip, #4]	@ <variable>.s32FrameAddr, <variable>.s32FrameAddr
	str	r8, [r7, #236]	@ <variable>.s32FrameAddr, <variable>.s32OffLineDnrMemAddr
	ble	.L498	@,
	mov	lr, #52	@ tmp286,
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mul	r0, lr, r2	@ tmp285, tmp286, i.1853
	mov	lr, r2, asl #4	@ tmp293, i.1853,
	add	r7, lr, fp	@ tmp294, tmp293, s_pstVfmwChan
	mvn	r8, r2	@ tmp329, i.1853
	add	r1, r7, #209920	@ tmp295, tmp294,
	mov	fp, #2	@ tmp322,
	add	ip, r0, #27648	@ tmp287, tmp285,
	add	r7, r1, #824	@ tmp295, tmp295,
	add	r9, ip, #144	@ tmp287, tmp287,
	add	r0, r8, r3	@ tmp328, tmp329, s32DnrLockFrmNum.1846
	add	ip, r6, r9	@ tmp289, pstInst, tmp287
	add	sl, r2, #13120	@ tmp306, i.1853,
	add	sl, sl, #52	@ tmp305, tmp306,
	add	r1, r2, #1	@ j, i.1853,
	ldr	r9, [ip, #16]	@ s32FrameStartAddr.1859, <variable>.PhyAddr
	cmp	r3, r1	@ s32DnrLockFrmNum.1846, j
	str	fp, [r7, #0]	@ tmp322, <variable>.eFrameState
	and	r7, r0, #1	@, tmp328,
	ldr	r8, [r4, #0]	@, s_pstVfmwChan
	str	r7, [sp, #28]	@, %sfp
	add	r7, ip, #56	@ ivtmp.1824, tmp289,
	add	r0, lr, r8	@ tmp301, tmp293,
	add	lr, r0, #209920	@ tmp302, tmp301,
	add	r0, lr, #824	@ tmp302, tmp302,
	str	r9, [r0, #4]	@ s32FrameStartAddr.1859, <variable>.s32FrameAddr
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r8, sl, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r8, #0	@,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, lr, sl, asl #4	@, tmp313, s_pstVfmwChan, tmp305,
	add	r0, r0, #4	@ tmp314, tmp313,
	str	r8, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L498	@,
	ldr	r9, [sp, #28]	@, %sfp
	cmp	r9, #0	@,
	beq	.L520	@,
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp382, j,
	ldr	r9, [r7, #12]	@ s32FrameStartAddr.1859, <variable>.PhyAddr
	add	sl, r1, #13120	@ tmp390, j,
	add	lr, r8, r0	@ tmp383, tmp382, s_pstVfmwChan
	add	sl, sl, #52	@ tmp391, tmp390,
	add	r7, lr, #209920	@ tmp384, tmp383,
	add	r1, r1, #1	@ j, j,
	add	r0, r7, #824	@ tmp384, tmp384,
	add	r7, ip, #108	@ ivtmp.1824, tmp289,
	cmp	r3, r1	@ s32DnrLockFrmNum.1846, j
	str	fp, [r0, #0]	@ tmp322, <variable>.eFrameState
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r8, lr	@ tmp387, tmp382, s_pstVfmwChan
	add	ip, r0, #209920	@ tmp388, tmp387,
	add	r8, ip, #824	@ tmp388, tmp388,
	str	r9, [r8, #4]	@ s32FrameStartAddr.1859, <variable>.s32FrameAddr
	mov	r8, #0	@,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, sl, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r0, sl, asl #4	@, tmp394, s_pstVfmwChan, tmp391,
	add	r0, ip, #4	@ tmp395, tmp394,
	str	r8, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L498	@,
.L520:
	mov	r9, r6	@ pstInst, pstInst
	str	r2, [sp, #28]	@ i.1853, %sfp
.L499:
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp344, j,
	ldr	sl, [r7, #12]	@ s32FrameStartAddr.1859, <variable>.PhyAddr
	add	r0, r1, #13120	@ tmp353, j,
	add	ip, r8, lr	@ tmp345, tmp344, s_pstVfmwChan
	add	r0, r0, #52	@ tmp353, tmp353,
	add	r6, ip, #209920	@ tmp346, tmp345,
	add	r1, r1, #1	@ tmp331, j,
	add	lr, r6, #824	@ tmp346, tmp346,
	add	r2, r1, #13120	@ tmp373, tmp331,
	mov	r6, r1, asl #4	@ tmp364, tmp331,
	add	r2, r2, #52	@ tmp373, tmp373,
	str	fp, [lr, #0]	@ tmp322, <variable>.eFrameState
	add	r1, r1, #1	@ j, tmp331,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, r1	@ s32DnrLockFrmNum.1846, j
	add	lr, r8, ip	@ tmp349, tmp344, s_pstVfmwChan
	add	ip, lr, #209920	@ tmp350, tmp349,
	add	r8, ip, #824	@ tmp350, tmp350,
	str	sl, [r8, #4]	@ s32FrameStartAddr.1859, <variable>.s32FrameAddr
	mov	r8, #0	@,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r0, asl #4	@, tmp356, s_pstVfmwChan, tmp353,
	str	r8, [lr, #4]	@, <variable>.s32UsingCount
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r7, #64]	@ s32FrameStartAddr.1859, <variable>.PhyAddr
	add	r7, r7, #104	@ ivtmp.1824, ivtmp.1824,
	add	ip, r6, r0	@ tmp365, tmp364, s_pstVfmwChan
	add	r8, ip, #209920	@ tmp366, tmp365,
	add	r0, r8, #824	@ tmp366, tmp366,
	str	fp, [r0, #0]	@ tmp322, <variable>.eFrameState
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, r6, ip	@ tmp369, tmp364, s_pstVfmwChan
	add	r6, r8, #209920	@ tmp370, tmp369,
	add	r0, r6, #824	@ tmp370, tmp370,
	str	lr, [r0, #4]	@ s32FrameStartAddr.1859, <variable>.s32FrameAddr
	mov	r0, #0	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [ip, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r8, r2, asl #4	@, tmp376, s_pstVfmwChan, tmp373,
	str	r0, [r6, #4]	@, <variable>.s32UsingCount
	bgt	.L499	@,
	ldr	r2, [sp, #28]	@ i.1853, %sfp
	mov	r6, r9	@ pstInst, pstInst
.L498:
	ldrsb	r8, [r6, #10]	@ temp.1850, <variable>.s32DecFsNum
	cmp	r8, r2	@ temp.1850, i.1853
	ble	.L474	@,
	ldr	r3, [sp, #24]	@, %sfp
	add	r3, r3, r2	@,, i.1853
.L522:
	str	r3, [sp, #24]	@, %sfp
.L500:
	ldr	r7, [sp, #24]	@, %sfp
	cmp	r8, r7	@ temp.1850,
	movge	r0, #0	@ D.33023,
	bge	.L483	@,
.L474:
	mvn	r0, #0	@ D.33023,
	b	.L483	@
.L484:
	ldr	r0, [sp, #36]	@, %sfp
	add	fp, r0, fp	@ tmp256,, s32VdhMemAddr
	rsb	fp, r3, fp	@ tmp257, D.33050, tmp256
	cmp	r8, fp	@ s32DnrSize, tmp257
	bgt	.L487	@,
.L523:
	mov	r0, #0	@ D.33023,
	str	r3, [r7, #236]	@ D.33050, <variable>.s32OffLineDnrMemAddr
.L483:
	add	sp, sp, #460	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L476:
	add	r3, r7, #13120	@ tmp229, i,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp317,
	mov	r2, r7, asl #4	@ tmp216, i,
	add	r3, r3, #52	@ tmp229, tmp229,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp317,
	ble	.L474	@,
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r2, ip	@ tmp217, tmp216, s_pstVfmwChan
	mov	ip, #1	@,
	add	r1, lr, #209920	@ tmp218, tmp217,
	add	lr, r1, #824	@ tmp218, tmp218,
	str	ip, [lr, #0]	@, <variable>.eFrameState
	ldr	r1, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	lr, r2, r1	@ tmp224, tmp216, s_pstVfmwChan
	add	r1, lr, #209920	@ tmp225, tmp224,
	add	r2, r1, #824	@ tmp225, tmp225,
	str	ip, [r2, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	b	.L521	@
.L493:
	add	r2, r1, #1	@ i.1853, j.1858,
	cmp	r8, r2	@ temp.1850, i.1853
	ble	.L474	@,
	add	r3, r2, sl	@ s32DnrLockFrmNum.1846, i.1853, s32DnrLockFrmNum
	mov	r1, r2	@ j.1858, i.1853
	cmp	r8, r3	@ temp.1850, s32DnrLockFrmNum.1846
	bge	.L501	@,
	b	.L522	@
.L485:
	ldr	r2, [sp, #24]	@, %sfp
	sub	ip, r2, #1	@ pretmp.1803,,
	add	r1, r9, ip, asl #3	@, pretmp.1805, VoUsingFrameArray, pretmp.1803,
	ldr	r3, [r9, ip, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, lr, r3	@ prephitmp.1808, <variable>.FrameSize, <variable>.FrameAddr
	b	.L486	@
.L524:
	mov	ip, r2, asl #4	@ tmp319, i.1853,
	b	.L492	@
	.fnend
	.size	FSP_NoneDnrSwitchToDnrNormCase, .-FSP_NoneDnrSwitchToDnrNormCase
	.align	2
	.type	FSP_NoneDnrSwitchToDnr, %function
FSP_NoneDnrSwitchToDnr:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #524
	sub	sp, sp, #524	@,,
	beq	.L538	@,
.L526:
	mvn	r0, #0	@ D.33240,
.L532:
	add	sp, sp, #524	@,,
	ldmfd	sp!, {r4, r5, pc}
.L538:
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r3, [r3, #0]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L526	@,
	movw	r2, #34644	@ tmp151,
	str	r0, [sp, #516]	@ InstID, s32UsingNum
	ldr	r5, [r3, r2]	@ s32VdhTotalMemUse, <variable>.TotalMemUsed
	add	r4, sp, #4	@ tmp175,,
	mov	r1, r0	@ ivtmp.1897, InstID
	mov	ip, #-2147483648	@ tmp176,
.L527:
	add	lr, r1, #8	@ tmp178, ivtmp.1897,
	mov	r2, r4	@ tmp157, tmp175
	str	ip, [r2, r1]!	@ tmp176, <variable>.FrameAddr
	add	r1, lr, #8	@ ivtmp.1897, tmp178,
	cmp	r1, #512	@ ivtmp.1897,
	mov	r3, r4	@ tmp183, tmp175
	str	r0, [r2, #4]	@ tmp177, <variable>.FrameSize
	str	ip, [r3, lr]!	@ tmp176, <variable>.FrameAddr
	str	r0, [r3, #4]	@ tmp177, <variable>.FrameSize
	bne	.L527	@,
	mov	r1, r4	@, tmp175
	add	r2, sp, #516	@,,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L526	@,
	ldr	r2, [sp, #516]	@ s32UsingNum.475, s32UsingNum
	cmp	r2, #0	@ s32UsingNum.475,
	ble	.L528	@,
	ldr	r1, [sp, #8]	@ D.33254, <variable>.FrameSize
	cmp	r5, r1	@ s32VdhTotalMemUse, D.33254
	ble	.L529	@,
	mov	r5, r5, asl #1	@ tmp162, s32VdhTotalMemUse,
	movw	lr, #:lower16:1431655766	@ tmp165,
	movt	lr, #:upper16:1431655766	@ tmp165,
	smull	ip, r3, lr, r5	@, tmp164, tmp165, tmp162
	sub	r5, r3, r5, asr #31	@ tmp163, tmp164, tmp162,
	cmp	r1, r5	@ D.33254, tmp163
	blt	.L530	@,
.L529:
	mov	r0, #0	@,
	add	r1, sp, #4	@,,
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L526	@,
	mov	r0, #0	@ D.33240,
	b	.L532	@
.L530:
	mov	r1, r4	@, tmp175
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	bne	.L526	@,
	mov	r0, #0	@ D.33240,
	b	.L532	@
.L528:
	add	r1, sp, #4	@,,
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	bne	.L526	@,
	mov	r0, #0	@ D.33240,
	b	.L532	@
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
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp171,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp171,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r8, r1	@ PartitionFlag, PartitionFlag
	ldr	r2, [r5, r0, asl #2]	@ D.32833, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ D.32834, <variable>.s32OffLineDnrMemAddr
	ldr	r7, [r2, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r2, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.32834
	str	ip, [sp, #24]	@ D.32834, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	str	r0, [sp, #28]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	ldr	r3, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #32]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L540	@,
	cmp	r8, #1	@ PartitionFlag,
	beq	.L551	@,
	cmp	r8, #0	@ PartitionFlag,
	beq	.L552	@,
	mov	r0, r4	@, InstID
	bl	DNR_OpenChan	@
.L543:
	ldr	ip, [r5, r4, asl #2]	@ tmp155, s_pstVfmwChan
	add	r3, sp, #8	@ tmp159,,
	mov	r0, r4	@, InstID
	mov	lr, #0	@ tmp157,
	ldr	r1, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r7, [sp, #12]	@ s32ThrWidth, stDSDParam.s32ThrWidth
	str	r6, [sp, #16]	@ s32ThrHeight, stDSDParam.s32ThrHeight
	str	r1, [sp, #8]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, stDSDParam.s32DSDenable
	ldmia	r3, {r1, r2, r3}	@ tmp159,,,
	str	lr, [sp, #20]	@ tmp157, stDSDParam.s32MirrorEn
	str	lr, [sp, #0]	@ tmp157,
	bl	DNR_SetDSDParam	@
	mov	r0, r4	@, InstID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L542	@,
.L545:
	ldr	r1, [r5, r4, asl #2]	@ temp.1929, s_pstVfmwChan
	movw	r5, #:lower16:211780	@ tmp162,
	movt	r5, #:upper16:211780	@ tmp162,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp161,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp161,
	ldr	r2, [r1, r5]	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r2, #1	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.32846,
	beq	.L553	@,
.L547:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L552:
	mov	r0, r4	@, InstID
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L543	@,
.L542:
	mvn	r0, #0	@ D.32846,
	b	.L547	@
.L540:
	cmp	r8, #1	@ PartitionFlag,
	bne	.L545	@,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L545	@,
	mvn	r0, #0	@ D.32846,
	b	.L547	@
.L551:
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L543	@,
	mvn	r0, #0	@ D.32846,
	b	.L547	@
.L553:
	add	lr, r1, #210944	@, temp.1929,
	mov	r0, r4	@, InstID
	add	r1, lr, #824	@,,
	bl	DNR_ConfigChan	@
	subs	r3, r0, #0	@ D.32868,
	bne	.L542	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp167, s_pstVfmwChan
	mov	r0, r3	@ D.32846, D.32868
	str	r3, [r1, r5]	@ D.32868, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	b	.L547	@
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
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ MemPhyAddr, MemPhyAddr
	add	r0, sp, #48	@,,
	mov	r1, #416	@,
	mov	sl, r2	@ MemSize, MemSize
	mov	r6, r3	@ UsedMemSize, UsedMemSize
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	beq	.L627	@,
.L555:
	mvn	r0, #0	@ D.33355,
.L590:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L627:
	movw	r8, #:lower16:.LANCHOR0	@ tmp825,
	movt	r8, #:upper16:.LANCHOR0	@ tmp825,
	ldr	r7, [r8, #0]	@ D.33357, s_pFspInst
	cmp	r7, #0	@ D.33357,
	beq	.L555	@,
	movw	r0, #34648	@ tmp199,
	movw	r3, #34652	@ tmp200,
	str	r5, [r7, r0]	@ MemPhyAddr, <variable>.MemAddr
	mov	r0, r4	@, InstID
	str	sl, [r7, r3]	@ MemSize, <variable>.MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L556	@,
	rsb	r2, r0, r0, asl #3	@, tmp209, eChanCapLevel, eChanCapLevel,
	movw	lr, #:lower16:CapItem	@ tmp206,
	add	r4, r2, #1	@ tmp210, tmp209,
	movt	lr, #:upper16:CapItem	@ tmp206,
	ldr	r1, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [lr, r2, asl #2]	@ tmp219, CapItem
	ldr	r3, [lr, r4, asl #2]	@ tmp218, CapItem
	ldr	r2, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	lr, ip, r3	@ tmp217, tmp219, tmp218
	mul	r2, r2, r1	@ tmp203, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, lr	@, tmp203, tmp217
	bgt	.L556	@,
.L557:
	ldr	r3, [r7, #92]	@ D.33382, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.33382,
	beq	.L623	@,
	ldr	r2, [r7, #88]	@ D.33384, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.33384,
	beq	.L623	@,
	ldrb	r4, [r7, #60]	@ zero_extendqisi2	@ prephitmp.1951, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r4, #0	@ prephitmp.1951,
	beq	.L559	@,
	ldr	r1, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r1	@ D.33382, <variable>.stInstCfg.s32DecFsHeight
	bne	.L555	@,
	ldr	r3, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, r3	@ D.33384, <variable>.stInstCfg.s32DecFsWidth
	bne	.L555	@,
.L559:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp228,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp228,
	ldrb	r9, [r7, #65]	@ zero_extendqisi2	@ D.33389, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [lr, #36]	@ D.33394, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.33394,
	beq	.L555	@,
	ldrsb	lr, [r7, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r5	@, MemPhyAddr
	ldr	r2, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r5, #40	@ tmp232,
	ldr	r3, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r1, sl	@, MemSize
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #0	@ tmp234,
	str	r5, [sp, #4]	@ tmp232,
	ldrsb	r5, [r7, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	lr, [sp, #12]	@ tmp234,
	add	lr, sp, #48	@ tmp236,,
	str	lr, [sp, #16]	@ tmp236,
	mov	lr, #16	@ tmp237,
	str	r5, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	str	lr, [sp, #20]	@ tmp237,
	blx	ip	@ D.33394
	cmp	r0, #0	@ Ret
	bne	.L555	@,
	ldr	r3, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r2, r4	@ prephitmp.1951, prephitmp.1951
	sxtb	r9, r9	@ D.33389, D.33389
	add	ip, r9, r2, asl #2	@, tmp243, D.33389, prephitmp.1951,
	strb	r3, [r7, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	ip, r1	@ tmp243, MemArrange.ValidFrameNum
	bgt	.L555	@,
	ldrsb	r4, [r7, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r7, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r4, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r7, #11]	@ Ret, <variable>.s32DispFsNum
	ldrneb	r4, [r7, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strneb	r4, [r7, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
	bne	.L564	@,
	ldrsb	sl, [r7, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	sl, #0	@ <variable>.s8LowBufEnable,
	beq	.L562	@,
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp251,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp251,
	ldr	r5, [ip, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	ldreq	r0, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	streqb	r0, [r7, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	beq	.L564	@,
	ldrsb	r4, [r7, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r3, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r4, #4	@ tmp254, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	r2, r3	@ tmp254, MemArrange.ValidFrameNum
	movlt	r1, r2	@ tmp845, tmp254
	movge	r1, r3	@ tmp845, MemArrange.ValidFrameNum
	strb	r1, [r7, #10]	@ tmp845, <variable>.s32DecFsNum
.L564:
	ldr	sl, [sp, #456]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r0, r7, #27648	@ ivtmp.2061, D.33357,
	movw	r2, #34640	@ tmp265,
	add	r3, r0, #160	@ ivtmp.2061, ivtmp.2061,
	mov	r0, #0	@ i,
	ldrsb	r5, [r7, #10]	@ D.33427, <variable>.s32DecFsNum
	mov	r4, r2	@ tmp837, tmp265
	add	ip, sp, #48	@ ivtmp.2060,,
	mov	r1, r0	@ tmp836, i
	str	sl, [r7, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L567	@
.L629:
	str	r0, [r2, #-8]	@ tmp842, <variable>.PhyFsID
	ldr	sl, [ip, #8]	@ tmp881, MemArrange.FrameAddr
	str	sl, [r3, #52]	@ tmp881, <variable>.PhyAddr
	ldr	r3, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp836, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp836, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp836, <variable>.DispState
	ldr	r3, [r7, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
.L621:
	add	r0, r0, #1	@ i, tmp842,
	add	ip, ip, #4	@ ivtmp.2060, tmp843,
	cmp	r0, #64	@ i,
	add	r3, r2, #52	@ ivtmp.2061, tmp844,
	beq	.L628	@,
.L567:
	cmp	r5, r0	@ D.33427, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp836, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp842, i,
	ldrgt	r2, [ip, #8]	@ tmp268, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp843, ivtmp.2060,
	ldrle	r2, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r5, r0	@ D.33427, tmp842
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r2, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r2, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	sl, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	sl, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r2, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	sl, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	sl, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r2, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r2, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	sl, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp836, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp836, <variable>.IsTfRef
	str	sl, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp836, <variable>.DispState
	ldr	r2, [r7, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp844, ivtmp.2061,
	bgt	.L629	@,
	str	r1, [r2, #-8]	@ tmp836, <variable>.PhyFsID
	ldr	sl, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	str	sl, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r3, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp836, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp836, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp836, <variable>.DispState
	ldr	r3, [r7, r4]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	b	.L621	@
.L556:
	ldrsb	r0, [r7, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r0, #1	@ <variable>.stInstCfg.s32UserDec,
	bne	.L555	@,
	b	.L557	@
.L623:
	ldrb	r4, [r7, #60]	@ zero_extendqisi2	@ prephitmp.1951, <variable>.stInstCfg.s32DispLoopEnable
	b	.L559	@
.L628:
	ldrsb	r1, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, sp, #464	@,,
	movw	r0, #34456	@ tmp301,
	mov	r3, #0	@ tmp302,
	mov	r2, #1	@ tmp299,
	str	r3, [r7, r0]	@ tmp302, <variable>.PhyFsID
	add	ip, r4, r1, asl #2	@, tmp308,, <variable>.s32DecFsNum,
	strb	r2, [r7, #12]	@ tmp299, <variable>.s32TfFsNum
	ldr	r4, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movw	r2, #34464	@ tmp303,
	ldr	r0, [ip, #-408]	@ tmp310, MemArrange.FrameAddr
	ldr	ip, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r7, r2]	@ tmp310, <variable>.PhyAddr
	add	r2, r2, #12	@ tmp313, tmp313,
	ldr	r0, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r4, [r7, r2]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	add	r2, r2, #4	@ tmp315, tmp315,
	str	ip, [r7, r2]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	sub	r2, r2, #8	@ tmp311, tmp311,
	str	r0, [r7, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r0, #34484	@ tmp317,
	ldr	ip, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r7, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	ip, [r7, r0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	add	r0, r0, #4	@ tmp319, tmp319,
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r7, r0]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	sub	r0, r0, #34	@ tmp329, tmp329,
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r7, r0]	@ tmp302, <variable>.DispState
	sub	r0, r0, #2	@ tmp323, tmp323,
	strb	r3, [r7, r0]	@ tmp302, <variable>.IsDecRef
	add	r0, r0, #40	@ tmp321, tmp321,
	str	ip, [r7, r0]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	sub	ip, r0, #39	@ tmp326, tmp326,
	strb	r3, [r7, ip]	@ tmp302, <variable>.IsTfRef
	bne	.L568	@,
	mov	r0, r2	@ prephitmp.2138, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r7, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L570:
	add	r9, r7, #30976	@ ivtmp.2024, D.33357,
	mov	r2, #0	@ ivtmp.2026,
	str	r6, [sp, #36]	@ UsedMemSize, %sfp
	mov	r1, r2	@ tmp834, ivtmp.2026
	mov	r3, r9	@ ivtmp.2034, ivtmp.2032
	add	ip, r3, #180	@ ivtmp.2038, ivtmp.2038,
	mov	sl, r9	@ ivtmp.2030, ivtmp.2024
	mov	r5, r9	@ ivtmp.2032, ivtmp.2030
	add	r4, r3, #172	@ ivtmp.2034, ivtmp.2034,
	add	fp, r3, #176	@ ivtmp.2036, ivtmp.2036,
	str	r8, [sp, #40]	@ tmp825, %sfp
	add	r9, r9, #152	@ ivtmp.2024, ivtmp.2024,
	add	sl, sl, #160	@ ivtmp.2030, ivtmp.2030,
	add	r5, r5, #168	@ ivtmp.2032, ivtmp.2032,
	mov	r3, r2	@ i.2125, ivtmp.2026
	mov	r6, ip	@ ivtmp.2038, ivtmp.2038
	mov	r8, r0	@ prephitmp.2138, prephitmp.2138
	b	.L569	@
.L631:
	str	r3, [r9, #0]	@ i.2125, <variable>.PhyFsID
	ldrsb	r0, [r7, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	r8, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp351, i.2125, <variable>.s32TfFsNum
	add	r0, r0, r8	@ tmp352, tmp351, <variable>.s32DecFsNum
	add	r8, sp, #464	@,,
	add	r0, r8, r0, asl #2	@, tmp356,, tmp352,
	ldr	r8, [r0, #-408]	@ tmp358, MemArrange.FrameAddr
	str	r8, [sl, #0]	@ tmp358, <variable>.PhyAddr
	ldr	r0, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r0, [r5, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r8, [r7, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r8, [r4, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r0, [r7, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r0, [fp, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r8, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r8, [r6, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r0, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r0, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r8, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp834, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp834, <variable>.IsDecRef
	str	r8, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp834, <variable>.IsTfRef
.L572:
	add	r3, r3, #1	@ i.2125, i.2125,
	add	r9, r9, #52	@ ivtmp.2024, ivtmp.2024,
	cmp	r3, #64	@ i.2125,
	add	r2, r2, #52	@ ivtmp.2026, ivtmp.2026,
	add	sl, sl, #52	@ ivtmp.2030, ivtmp.2030,
	add	r5, r5, #52	@ ivtmp.2032, ivtmp.2032,
	add	r4, r4, #52	@ ivtmp.2034, ivtmp.2034,
	add	fp, fp, #52	@ ivtmp.2036, ivtmp.2036,
	add	r6, r6, #52	@ ivtmp.2038, ivtmp.2038,
	beq	.L630	@,
	ldrsb	r8, [r7, #11]	@ prephitmp.2138, <variable>.s32DispFsNum
.L569:
	add	r0, r7, r2	@ D.36134, D.33357, ivtmp.2026
	cmp	r8, r3	@ prephitmp.2138, i.2125
	add	ip, r0, #30976	@ tmp364, D.36134,
	mov	r0, ip	@ tmp396, tmp364
	bgt	.L631	@,
	str	r1, [r9, #0]	@ tmp834, <variable>.PhyFsID
	ldrsb	r8, [r7, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, r8, ip	@ tmp384, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	r8, sp, #464	@,,
	add	ip, r8, ip, asl #2	@, tmp388,, tmp384,
	ldr	ip, [ip, #-408]	@ tmp390, MemArrange.FrameAddr
	str	ip, [sl, #0]	@ tmp390, <variable>.PhyAddr
	ldr	r8, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r8, [r5, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r7, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r4, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	r8, [r7, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	r8, [fp, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r6, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r8, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r8, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp834, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp834, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp834, <variable>.IsTfRef
	b	.L572	@
.L630:
	ldr	r2, [sp, #452]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r7, #34560	@ ivtmp.2006, D.33357,
	ldr	r6, [sp, #36]	@ UsedMemSize, %sfp
	mov	ip, #0	@ tmp833,
	cmp	r2, #20	@ MemArrange.ValidPMVNum,
	movge	r2, #20	@ tmp413,
	ldr	r8, [sp, #40]	@ tmp825, %sfp
	uxtb	r4, r2	@ prephitmp.1956, tmp413
	strb	r4, [r7, #13]	@ prephitmp.1956, <variable>.s32PmvNum
	ldr	r3, [sp, #328]	@ tmp865, MemArrange.PMVAddr
	add	r4, sp, #48	@,,
	add	r0, r4, #4	@ ivtmp.2191,,
	strb	ip, [r7, #14]	@ tmp833, <variable>.IsPmvInUse
	ldrb	r4, [r7, #13]	@ zero_extendqisi2	@ prephitmp.1956, <variable>.s32PmvNum
	str	r3, [r1, #0]	@ tmp865, <variable>.PmvAddr
	mov	r3, #1	@ i.2126,
	add	r1, r1, #4	@ ivtmp.2006, ivtmp.2006,
	add	r2, r7, r3	@ ivtmp.2012, D.33357,
	b	.L577	@
.L632:
	ldr	r4, [r0, #280]	@ tmp869, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp833, <variable>.IsPmvInUse
	str	r4, [r1, #0]	@ tmp869, <variable>.PmvAddr
.L620:
	ldrb	r4, [r7, #13]	@ zero_extendqisi2	@ prephitmp.1956, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2126, tmp838,
	add	r0, r0, #4	@ ivtmp.2191, tmp839,
	add	r1, r1, #4	@ ivtmp.2006, tmp840,
	add	r2, r2, #1	@ ivtmp.2012, tmp841,
.L577:
	sxtb	r4, r4	@ prephitmp.1956, prephitmp.1956
	cmp	r4, r3	@ prephitmp.1956, i.2126
	add	r3, r3, #1	@ tmp838, i.2126,
	ldrgt	r4, [r0, #280]	@ tmp417, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp839, ivtmp.2191,
	ldrle	r4, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp838,
	strb	ip, [r2, #14]	@ tmp833, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp841, ivtmp.2012,
	str	r4, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp840, ivtmp.2006,
	beq	.L576	@,
	ldrsb	r4, [r7, #13]	@ prephitmp.1956, <variable>.s32PmvNum
	cmp	r4, r3	@ prephitmp.1956, tmp838
	bgt	.L632	@,
	ldr	r4, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp833, <variable>.IsPmvInUse
	str	r4, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L620	@
.L576:
	movw	ip, #27808	@ tmp428,
	ldr	r1, [sp, #448]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r2, [r7, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r0, #27756	@ tmp427,
	sub	r3, r0, #8	@ tmp425, tmp425,
	movw	r4, #34556	@ tmp423,
	str	r1, [r7, r4]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r1, #0	@ tmp426,
	str	r2, [r7, r0]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r4, #27764	@ tmp430,
	str	r1, [r7, r3]	@ tmp426, <variable>.stDummyPhyFs.PhyFsID
	add	r0, r4, #4	@ tmp432, tmp432,
	ldr	ip, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r2, [r7, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r3, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r7, r4]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	add	r4, r0, #4	@ tmp434, tmp434,
	str	r2, [r7, r0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	ip, #27776	@ tmp436,
	str	r3, [r7, r4]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r4, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r0, [r7, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r4, [r7, ip]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	cmp	r2, r0	@ prephitmp.1961, <variable>.stPreInfo.s32PreWidth
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #27780	@ tmp438,
	str	ip, [r7, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	sub	r0, r0, #34	@ tmp448, tmp448,
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r7, r0]	@ tmp426, <variable>.stDummyPhyFs.DispState
	sub	r0, r0, #2	@ tmp442, tmp442,
	strb	r1, [r7, r0]	@ tmp426, <variable>.stDummyPhyFs.IsDecRef
	add	r0, r0, #40	@ tmp440, tmp440,
	str	ip, [r7, r0]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	sub	ip, r0, #39	@ tmp445, tmp445,
	strb	r1, [r7, ip]	@ tmp426, <variable>.stDummyPhyFs.IsTfRef
	movw	ip, #34656	@ tmp451,
	ldr	r0, [sp, #460]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	sub	r1, ip, #12	@ tmp453, tmp453,
	str	r0, [r7, ip]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	r0, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r7, r1]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	beq	.L633	@,
.L578:
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp821,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp821,
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r9, [r1, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L634	@,
.L580:
	movw	r1, #27860	@ tmp811,
	ldrsb	r0, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	ip, [r7, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r1, r1, #52	@ tmp812, tmp812,
	ldrsb	r4, [r7, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r1, [r7, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r2, [r7, #40]	@ prephitmp.1961, <variable>.stPreInfo.s32PreWidth
	rsb	r1, r1, ip	@ tmp815, <variable>.PhyAddr, <variable>.PhyAddr
	str	r4, [r7, #56]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	str	r3, [r7, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	str	r0, [r7, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r1, [r7, #52]	@ tmp815, <variable>.stPreInfo.s32PreDecSlotLen
.L579:
	ldr	r2, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.33355,
	str	r2, [r6, #0]	@ MemArrange.TotalMemUsed,* UsedMemSize
	b	.L590	@
.L562:
	ldr	sl, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	sl, #40	@ MemArrange.ValidFrameNum,
	movge	sl, #40	@ tmp260,
	strb	sl, [r7, #10]	@ tmp260, <variable>.s32DecFsNum
	b	.L564	@
.L633:
	ldr	r0, [r7, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r3, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L578	@,
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r1, [r7, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	ip, r1	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L578	@,
	ldrsb	r0, [r7, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r7, #56]	@ <variable>.stPreInfo.s32PreExpectNum, <variable>.stPreInfo.s32PreExpectNum
	cmp	r0, ip	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	bne	.L578	@,
	b	.L579	@
.L568:
	ldr	ip, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r7, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r3, ip, #1	@ tmp342, MemArrange.ValidFrameNum,
	rsb	r0, r1, r3	@ tmp341, <variable>.s32DecFsNum, tmp342
	cmp	r0, #25	@ tmp341,
	movge	r0, #25	@ tmp849,
	uxtb	ip, r0	@ prephitmp.2138, tmp849
	strb	ip, [r7, #11]	@ prephitmp.2138, <variable>.s32DispFsNum
	sxtb	r0, ip	@ prephitmp.2138, prephitmp.2138
	cmp	r2, r0	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.2138
	ble	.L570	@,
	b	.L555	@
.L634:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r8, #0]	@ pstInst, s_pFspInst
	ldr	r2, [r4, #0]	@ D.36003, s_pstVfmwChan
	ldr	ip, [r5, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r3, [r2, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r0, [r5, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r2, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	cmp	ip, r3	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmple	r0, r1	@, <variable>.stInstCfg.s32DecFsWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movgt	r3, #0	@, tmp478
	movle	r3, #1	@, tmp478
	bgt	.L581	@,
	ldr	lr, [r2, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	bne	.L582	@,
	movw	r8, #:lower16:s_DnrChan	@ tmp823,
	movw	ip, #:lower16:76660	@ tmp481,
	movt	r8, #:upper16:s_DnrChan	@ tmp823,
	movt	ip, #:upper16:76660	@ tmp481,
	movw	r3, #:lower16:76664	@ tmp483,
	movt	r3, #:upper16:76664	@ tmp483,
	ldr	r0, [r8, ip]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	sl, r5, #27648	@ ivtmp.1977, pstInst,
	ldr	r1, [r8, r3]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	movw	fp, #34640	@ tmp486,
	mov	r3, #0	@ i,
	add	ip, sl, #160	@ ivtmp.1977, ivtmp.1977,
	str	r0, [r2, #236]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	sl, r1, r0	@ s32DnrEndAddr, s32DnrSize, s32DnrStartAddr
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r2, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldr	r1, [r5, fp]	@ s32ImgSize, <variable>.ImgSlotLen
	str	r5, [sp, #28]	@ pstInst, %sfp
.L583:
	ldr	r5, [sp, #28]	@, %sfp
	add	lr, r3, #13120	@ tmp510, i,
	mov	fp, r3, asl #4	@ tmp498, i,
	add	lr, lr, #52	@ tmp510, tmp510,
	ldrsb	r2, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, r2	@ i, <variable>.s32DecFsNum
	bge	.L635	@,
	ldr	r2, [ip, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	cmp	sl, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r5, #0	@,
	movgt	r5, #1	@,
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r9, r2, r1	@ s32FrameEndAddr, s32FrameStartAddr, s32ImgSize
	movgt	r5, #0	@,,
	cmp	r5, #0	@,
	str	r5, [sp, #36]	@, %sfp
	beq	.L584	@,
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, fp, r5	@ tmp499, tmp498, s_pstVfmwChan
	add	r5, r9, #209920	@ tmp500, tmp499,
	add	r9, r5, #824	@ tmp500, tmp500,
	mov	r5, #2	@,
	str	r5, [r9, #0]	@, <variable>.eFrameState
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r5, fp, r9	@ tmp506, tmp498, s_pstVfmwChan
	mov	fp, #0	@,
	add	r9, r5, #209920	@ tmp507, tmp506,
	add	r9, r9, #824	@ tmp507, tmp507,
	str	r2, [r9, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r5, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r2, lr, asl #4	@, tmp518, s_pstVfmwChan, tmp510,
	str	fp, [lr, #4]	@, <variable>.s32UsingCount
.L585:
	add	r3, r3, #1	@ i, i,
	add	ip, ip, #52	@ ivtmp.1977, ivtmp.1977,
	b	.L583	@
.L581:
	ldr	r9, [r2, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L636	@,
	movw	ip, #34640	@ tmp742,
	add	r1, r5, #27648	@ ivtmp.1987, pstInst,
	ldr	fp, [r5, ip]	@ s32ImgSize, <variable>.ImgSlotLen
	add	sl, r1, #160	@ ivtmp.1987, ivtmp.1987,
	mov	r9, r7	@ D.33357, D.33357
	mov	r8, r3	@ i, tmp478
	mov	r7, r6	@ UsedMemSize, UsedMemSize
.L599:
	ldrsb	r3, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	mov	r2, fp	@, s32ImgSize
	mov	r0, #0	@,
	cmp	r8, r3	@ i, <variable>.s32DecFsNum
	bge	.L637	@,
	ldr	r6, [sl, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	mov	r1, r6	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	add	r3, r8, #13120	@ tmp759, i,
	mov	ip, r8, asl #4	@ tmp747, i,
	add	r2, r3, #52	@ tmp759, tmp759,
	mov	r1, ip	@ tmp773, tmp747
	mov	r3, r2	@ tmp785, tmp759
	cmp	r0, #0	@ s32UsingCount
	bne	.L600	@,
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, r3	@ tmp748, tmp747, s_pstVfmwChan
	add	lr, r1, #209920	@ tmp749, tmp748,
	add	r3, lr, #824	@ tmp749, tmp749,
	str	r0, [r3, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r1	@ tmp755, tmp747, s_pstVfmwChan
	add	r3, lr, #209920	@ tmp756, tmp755,
	add	ip, r3, #824	@ tmp756, tmp756,
	str	r6, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	fp, [r1, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, lr, r2, asl #4	@, tmp767, s_pstVfmwChan, tmp759,
	str	r0, [r6, #4]	@ s32UsingCount, <variable>.s32UsingCount
.L601:
	add	r8, r8, #1	@ i, i,
	add	sl, sl, #52	@ ivtmp.1987, ivtmp.1987,
	b	.L599	@
.L584:
	cmp	sl, r9	@ s32DnrEndAddr, s32FrameEndAddr
	movlt	r5, #0	@,
	movge	r5, #1	@,
	cmp	r0, r9	@ s32DnrStartAddr, s32FrameEndAddr
	add	lr, r3, #13120	@ tmp543, i,
	mov	fp, r3, asl #4	@ tmp531, i,
	movge	r5, #0	@,,
	cmp	r5, #0	@,
	add	lr, lr, #52	@ tmp543, tmp543,
	str	r5, [sp, #40]	@, %sfp
	beq	.L586	@,
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, fp, r5	@ tmp532, tmp531, s_pstVfmwChan
	add	r5, r9, #209920	@ tmp533, tmp532,
	add	r9, r5, #824	@ tmp533, tmp533,
	mov	r5, #2	@,
	str	r5, [r9, #0]	@, <variable>.eFrameState
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r5, fp, r9	@ tmp539, tmp531, s_pstVfmwChan
	add	r9, r5, #209920	@ tmp540, tmp539,
	add	r9, r9, #824	@ tmp540, tmp540,
	str	r2, [r9, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [fp, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	fp, [sp, #36]	@, %sfp
	add	r5, r2, lr, asl #4	@, tmp551, s_pstVfmwChan, tmp543,
	str	fp, [r5, #4]	@, <variable>.s32UsingCount
	b	.L585	@
.L600:
	ble	.L626	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r1, ip	@ tmp774, tmp773, s_pstVfmwChan
	mov	ip, #1	@,
	add	r2, lr, #209920	@ tmp775, tmp774,
	add	lr, r2, #824	@ tmp775, tmp775,
	str	ip, [lr, #0]	@, <variable>.eFrameState
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, r1, ip	@ tmp781, tmp773, s_pstVfmwChan
	add	r1, r2, #209920	@ tmp782, tmp781,
	add	lr, r1, #824	@ tmp782, tmp782,
	str	r6, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	fp, [ip, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r2, r3, asl #4	@, tmp793, s_pstVfmwChan, tmp785,
	str	r0, [r6, #4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L601	@
.L586:
	mov	fp, r3, asl #4	@, i,
	cmp	sl, r9	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r9, #0	@, tmp560
	movlt	r9, #1	@, tmp560
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	lr, r3, #13120	@ tmp576, i,
	str	fp, [sp, #36]	@, %sfp
	mov	r5, fp	@,
	str	fp, [sp, #44]	@ tmp5, %sfp
	movle	r9, #0	@, tmp560,
	add	fp, lr, #52	@ tmp576, tmp576,
	cmp	r9, #0	@ tmp560,
	mov	lr, fp	@ tmp602, tmp576
	beq	.L587	@,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r5, lr	@ tmp565,, s_pstVfmwChan
	add	r5, lr, #209920	@ tmp566, tmp565,
	add	lr, r5, #824	@ tmp566, tmp566,
	mov	r5, #2	@,
	str	r5, [lr, #0]	@, <variable>.eFrameState
	ldr	r5, [sp, #36]	@, %sfp
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r5, lr	@ tmp572,, s_pstVfmwChan
	add	r5, lr, #209920	@ tmp573, tmp572,
	add	lr, r5, #824	@ tmp573, tmp573,
	str	r2, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r5, fp, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #40]	@, %sfp
	add	r5, lr, fp, asl #4	@, tmp584, s_pstVfmwChan, tmp576,
	str	r2, [r5, #4]	@, <variable>.s32UsingCount
	b	.L585	@
.L626:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.33355,
	b	.L590	@
.L587:
	ldr	r5, [sp, #44]	@, %sfp
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, r5, fp	@ tmp591,, s_pstVfmwChan
	add	fp, fp, #209920	@ tmp592, tmp591,
	add	fp, fp, #824	@ tmp592, tmp592,
	str	r9, [fp, #0]	@ tmp560, <variable>.eFrameState
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, r5, fp	@ tmp598,, s_pstVfmwChan
	add	r5, fp, #209920	@ tmp599, tmp598,
	add	fp, r5, #824	@ tmp599, tmp599,
	str	r2, [fp, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r5, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r5, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, r2, lr, asl #4	@, tmp610, s_pstVfmwChan, tmp602,
	str	r9, [fp, #4]	@ tmp560, <variable>.s32UsingCount
	b	.L585	@
.L637:
	mov	r6, r7	@ UsedMemSize, UsedMemSize
	mov	r7, r9	@ D.33357, D.33357
.L598:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret.2185
	bne	.L626	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:s_DnrChan	@ tmp802,
	movw	r1, #:lower16:76660	@ tmp803,
	movt	r3, #:upper16:s_DnrChan	@ tmp802,
	movt	r1, #:upper16:76660	@ tmp803,
	movw	r2, #:lower16:76664	@ tmp806,
	str	r0, [ip, #1604]	@ s32Ret.2185, <variable>.stSynExtraData.s32DnrEnable
	movt	r2, #:upper16:76664	@ tmp806,
	ldr	ip, [r4, #0]	@ temp.2190, s_pstVfmwChan
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	ldr	lr, [ip, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	lr, [r3, r1]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r4, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r4, [r3, r2]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	OSAL_SpinUnLockIRQ	@
.L625:
	ldr	r2, [r7, #72]	@ prephitmp.1961, <variable>.stInstCfg.s32DecFsWidth
	ldr	r3, [r7, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	b	.L580	@
.L636:
	movw	r9, #:lower16:s_DnrChan	@ tmp630,
	movw	r0, #:lower16:76660	@ tmp631,
	movt	r9, #:upper16:s_DnrChan	@ tmp630,
	movt	r0, #:upper16:76660	@ tmp631,
	movw	r2, #:lower16:76664	@ tmp633,
	movt	r2, #:upper16:76664	@ tmp633,
	add	r1, r5, #27648	@ ivtmp.1982, pstInst,
	ldr	r0, [r9, r0]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	lr, [r9, r2]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	r1, r1, #160	@ ivtmp.1982, ivtmp.1982,
	movw	ip, #34640	@ tmp629,
	ldr	ip, [r5, ip]	@ s32ImgSize, <variable>.ImgSlotLen
	add	r2, r0, lr	@, s32DnrStartAddr, <variable>.s32OffLineDNRMemSize
	str	r2, [sp, #36]	@, %sfp
.L593:
	ldrsb	r2, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	lr, r3, #13120	@ tmp658, i,
	mov	r9, r3, asl #4	@ tmp646, i,
	add	lr, lr, #52	@ tmp658, tmp658,
	cmp	r3, r2	@ i, <variable>.s32DecFsNum
	bge	.L598	@,
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	ldr	fp, [sp, #36]	@, %sfp
	add	sl, r2, ip	@ tmp675, s32FrameStartAddr, s32ImgSize
	cmp	fp, r2	@, s32FrameStartAddr
	movle	r8, #0	@, tmp642
	movgt	r8, #1	@, tmp642
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r8, #0	@, tmp642,
	cmp	r8, #0	@ tmp642,
	beq	.L594	@,
	ldr	sl, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, r9, sl	@ tmp647, tmp646, s_pstVfmwChan
	add	sl, r8, #209920	@ tmp648, tmp647,
	add	r8, sl, #824	@ tmp648, tmp648,
	mov	sl, #1	@,
	str	sl, [r8, #0]	@, <variable>.eFrameState
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, r9, r8	@ tmp654, tmp646, s_pstVfmwChan
	add	r8, r8, #209920	@ tmp655, tmp654,
	add	r8, r8, #824	@ tmp655, tmp655,
	str	r2, [r8, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r9, [r4, #0]	@ temp.2167, s_pstVfmwChan
	add	lr, r9, lr, asl #4	@, tmp665, temp.2167, tmp658,
	ldr	r2, [lr, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r9, r2, sl	@ tmp674, <variable>.s32UsingCount,
	str	r9, [lr, #4]	@ tmp674, <variable>.s32UsingCount
.L595:
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.1982, ivtmp.1982,
	b	.L593	@
.L635:
	mov	r0, #0	@,
	mov	r1, #2	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	beq	.L618	@,
.L589:
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, #1	@ tmp619,
	movw	r2, #:lower16:76660	@ tmp622,
	movt	r2, #:upper16:76660	@ tmp622,
	movw	r3, #:lower16:76664	@ tmp625,
	movt	r3, #:upper16:76664	@ tmp625,
	str	r0, [ip, #1604]	@ tmp619, <variable>.stSynExtraData.s32DnrEnable
	movw	r0, #:lower16:g_DSDLock	@,
	ldr	r1, [r4, #0]	@ temp.2187, s_pstVfmwChan
	movt	r0, #:upper16:g_DSDLock	@,
	ldr	lr, [r1, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	lr, [r8, r2]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [r8, r3]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r5, #0	@ s32Ret,
	beq	.L625	@,
	b	.L555	@
.L582:
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L626	@,
	mov	r1, r9	@, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	movwne	r8, #:lower16:s_DnrChan	@ tmp823,
	movtne	r8, #:upper16:s_DnrChan	@ tmp823,
	bne	.L589	@,
.L618:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@ D.33355, s32Ret
	b	.L590	@
.L594:
	cmp	r0, sl	@ s32DnrStartAddr, tmp675
	movge	sl, #0	@, tmp682
	movlt	sl, #1	@, tmp682
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	lr, r3, #13120	@ tmp698, i,
	mov	fp, r3, asl #4	@ tmp686, i,
	add	r8, lr, #52	@ tmp698, tmp698,
	movle	sl, #0	@, tmp682,
	cmp	sl, #0	@ tmp682,
	mov	lr, r8	@ tmp730, tmp698
	beq	.L596	@,
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, fp, lr	@ tmp687, tmp686, s_pstVfmwChan
	add	sl, r9, #209920	@ tmp688, tmp687,
	add	lr, sl, #824	@ tmp688, tmp688,
	mov	sl, #1	@,
	str	sl, [lr, #0]	@, <variable>.eFrameState
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, fp, r9	@ tmp694, tmp686, s_pstVfmwChan
	add	r9, lr, #209920	@ tmp695, tmp694,
	add	lr, r9, #824	@ tmp695, tmp695,
	str	r2, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r9, r8, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	lr, [r4, #0]	@ temp.2171, s_pstVfmwChan
	add	r8, lr, r8, asl #4	@, tmp705, temp.2171, tmp698,
	ldr	r2, [r8, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r9, r2, sl	@ tmp714, <variable>.s32UsingCount,
	str	r9, [r8, #4]	@ tmp714, <variable>.s32UsingCount
	b	.L595	@
.L596:
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, fp, r8	@ tmp719, tmp718, s_pstVfmwChan
	add	r8, r8, #209920	@ tmp720, tmp719,
	add	r8, r8, #824	@ tmp720, tmp720,
	str	sl, [r8, #0]	@ tmp682, <variable>.eFrameState
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, fp, r8	@ tmp726, tmp718, s_pstVfmwChan
	add	r8, r8, #209920	@ tmp727, tmp726,
	add	r8, r8, #824	@ tmp727, tmp727,
	str	r2, [r8, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r9, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, r2, lr, asl #4	@, tmp738, s_pstVfmwChan, tmp730,
	str	sl, [r9, #4]	@ tmp682, <variable>.s32UsingCount
	b	.L595	@
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ pstVoQue, pstVoQue
	beq	.L649	@,
.L639:
	mvn	r0, #0	@ D.32667,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L649:
	cmp	r1, #0	@ pstVoQue,
	beq	.L639	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	sl, [r3, #0]	@ D.32671, s_pFspInst
	cmp	sl, #0	@ D.32671,
	beq	.L639	@,
	mov	r5, r0	@ i, InstID
	mov	r6, sl	@ ivtmp.2225, D.32671
	mov	r9, #432	@ tmp150,
	b	.L641	@
.L640:
	mov	r0, #0	@,
	ldr	r1, [r7, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetRef	@
	mla	r2, r9, r8, sl	@ tmp159, tmp150, tmp151, D.32671
	mov	r0, r4	@, pstVoQue
	add	r1, r2, #104	@, tmp159,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L650	@,
.L645:
	add	r5, r8, #1	@ i, tmp151,
	add	r6, r7, #432	@ ivtmp.2225, tmp152,
	cmp	r5, #64	@ i,
	beq	.L651	@,
.L641:
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	add	r7, r6, #432	@ tmp152, ivtmp.2225,
	bl	FSP_SetRef	@
	mla	r1, r9, r5, sl	@ tmp146, tmp150, i, D.32671
	mov	r0, r4	@, pstVoQue
	add	r8, r5, #1	@ tmp151, i,
	add	r1, r1, #104	@, tmp146,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L640	@,
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetDisplay	@
	b	.L640	@
.L650:
	mov	r0, #0	@,
	ldr	r1, [r7, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetDisplay	@
	b	.L645	@
.L651:
	mov	r0, #0	@ D.32667,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
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
