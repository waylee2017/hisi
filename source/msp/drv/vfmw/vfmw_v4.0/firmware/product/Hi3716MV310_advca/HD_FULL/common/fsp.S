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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(fsp)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.o
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
	.global	FindLeastTickPhyFs
	.type	FindLeastTickPhyFs, %function
FindLeastTickPhyFs:
	.fnstart
.LFB1945:
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
	mov	r2, r5	@ i, LeastFsID
	mvn	ip, #0	@ LeastTick.681,
	bne	.L6	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #52	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.681
	mov	ip, r3	@ LeastTick.681, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.681
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.681
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
	cmp	r3, ip	@ LeastTick, LeastTick.681
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.681
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
.LFB1955:
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
	ldr	r3, [r3, r0, asl #2]	@ D.39485, s_pFspInst
	cmp	r3, #0	@ D.39485,
	beq	.L21	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ pstLogicFs, tmp148, LogicFrameID, D.39485
	add	r0, r0, #96	@ pstLogicFs, pstLogicFs,
	bx	lr	@
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
	.fnstart
.LFB1956:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bls	.L29	@,
.L26:
	mov	r0, #0	@ D.39509,
	bx	lr	@
.L29:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39504, s_pFspInst
	cmp	r3, #0	@ D.39504,
	beq	.L26	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ D.39509, tmp148, LogicFrameID, D.39504
	add	r0, r0, #104	@ D.39509, D.39509,
	bx	lr	@
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
	.fnstart
.LFB1957:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bls	.L34	@,
.L31:
	mov	r0, #0	@ D.39528,
	bx	lr	@
.L34:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39523, s_pFspInst
	cmp	r3, #0	@ D.39523,
	beq	.L31	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.39523
	ldr	r0, [r1, #508]	@ D.39528, <variable>.pstDispOutFs
	bx	lr	@
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
	.fnstart
.LFB1958:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #3	@, InstID,
	bhi	.L36	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, r0, asl #2]	@ D.39542, s_pFspInst
	cmp	r3, #0	@ D.39542,
	beq	.L36	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.39542
	ldr	r0, [r1, #516]	@ D.39547, <variable>.PmvAddr
	bx	lr	@
.L36:
	mov	r0, #0	@ D.39547,
	bx	lr	@
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
.LFB1964:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp170,
	movt	r2, #:upper16:.LANCHOR0	@ tmp170,
	mov	r3, #63	@ i,
	ldr	r2, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	add	r1, r2, #27136	@ ivtmp.807, pstInst,
	add	r1, r1, #177	@ ivtmp.807, ivtmp.807,
	b	.L42	@
.L50:
	ldrb	ip, [r1, #-432]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #864	@ ivtmp.807, ivtmp.807,
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
.LFB1965:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L57	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.39733, s_pFspInst
	cmp	r3, #0	@ D.39733,
	beq	.L57	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@, D.39731,
	mvnne	r0, #0	@, D.39731,
	ldmfd	sp!, {r3, pc}	@
.L57:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39731,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
.LFB1963:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L71	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r6, [r3, r0, asl #2]	@ D.39675, s_pFspInst
	cmp	r6, #0	@ D.39675,
	beq	.L71	@,
	bl	vfmw_dprint_nothing	@
	mov	r5, #1	@ ivtmp.864,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ ivtmp.863,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L61	@
.L86:
	tst	r4, #7	@ ivtmp.863,
	beq	.L84	@,
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.864,
	bgt	.L85	@,
.L64:
	add	r4, r4, #1	@ ivtmp.863, ivtmp.863,
	add	r5, r5, #1	@ ivtmp.864, ivtmp.864,
.L61:
	cmp	r4, #0	@ ivtmp.863,
	bne	.L86	@,
	bl	vfmw_dprint_nothing	@
	b	.L64	@
.L84:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.864,
	ble	.L64	@,
.L85:
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i.866,
	ble	.L65	@,
.L81:
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, r4, #1	@ i.866, i.866,
	cmp	r1, r4	@ <variable>.s32DecFsNum, i.866
	ble	.L65	@,
.L67:
	tst	r4, #7	@ i.866,
	bne	.L81	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i.866, i.866,
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r4	@ <variable>.s32DecFsNum, i.866
	bgt	.L67	@,
.L65:
	bl	vfmw_dprint_nothing	@
	ldrsb	r2, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, #0	@ <variable>.s32DispFsNum,
	movgt	r4, #0	@ i.868,
	ble	.L68	@,
.L82:
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r4, r4, #1	@ i.868, i.868,
	cmp	ip, r4	@ <variable>.s32DispFsNum, i.868
	ble	.L68	@,
.L70:
	tst	r4, #7	@ i.868,
	bne	.L82	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i.868, i.868,
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	ip, r4	@ <variable>.s32DispFsNum, i.868
	bgt	.L70	@,
.L68:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r3, #0	@ <variable>.s32PmvNum,
	movgt	r4, #0	@ i,
	ble	.L71	@,
.L83:
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r6, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.s32PmvNum, i
	ble	.L71	@,
.L73:
	tst	r4, #15	@ i,
	bne	.L83	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i, i,
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r6, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r0, r4	@ <variable>.s32PmvNum, i
	bgt	.L73	@,
.L71:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
.LFB1962:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L99	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r3, r0, asl #2]	@ D.39642, s_pFspInst
	cmp	r3, #0	@ D.39642,
	movne	r0, #0	@ i,
	beq	.L99	@,
.L92:
	add	r2, r3, #432	@ tmp145, ivtmp.905,
	ldr	r3, [r3, #504]	@ D.39646, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.39646,
	beq	.L91	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L91:
	ldr	r3, [r2, #504]	@ D.39646, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.39646,
	mov	ip, r0	@ tmp144, i
	beq	.L95	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L95:
	add	r0, ip, #1	@ i, tmp144,
	add	r3, r2, #432	@ ivtmp.905, tmp145,
	cmp	r0, #64	@ i,
	bne	.L92	@,
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
.L99:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ i,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
.LFB1960:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L109	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L109	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L109	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r0, [r3, r0, asl #2]	@ D.39597, s_pFspInst
	cmp	r0, #0	@ D.39597,
	beq	.L109	@,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	ip, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	bxle	lr	@
	mov	r3, #0	@ ivtmp.934,
	mov	r1, r3	@ i, ivtmp.934
.L106:
	add	ip, r0, r3	@ tmp143, D.39597, ivtmp.934
	add	r1, r1, #1	@ i, i,
	add	ip, ip, #34560	@ tmp144, tmp143,
	ldr	ip, [ip, #0]	@ tmp145, <variable>.PmvAddr
	str	ip, [r2, r3]	@ tmp145,* ivtmp.934
	add	r3, r3, #4	@ ivtmp.934, ivtmp.934,
	ldrsb	ip, [r0, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	ip, r1	@ <variable>.s32PmvNum, i
	bgt	.L106	@,
	bx	lr	@
.L109:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
.LFB1959:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	bhi	.L119	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L119	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L119	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [ip, r0, asl #2]	@ tmp147, s_pFspInst
	cmp	r3, #0	@ tmp147,
	beq	.L119	@,
	mov	r3, #0	@ tmp148,
	str	r3, [r1, #0]	@ tmp148,* DecFsNum
	ldr	r4, [ip, r0, asl #2]	@ tmp150, s_pFspInst
	ldrsb	r4, [r4, #10]	@ D.39571, <variable>.s32DecFsNum
	cmp	r4, r3	@ D.39571,
	str	r4, [r1, #0]	@ D.39571,* DecFsNum
	ldr	r0, [ip, r0, asl #2]	@ temp.972, s_pFspInst
	ble	.L117	@,
	add	r0, r0, #27648	@ ivtmp.966, temp.972,
	add	r0, r0, #160	@ ivtmp.966, ivtmp.966,
.L116:
	ldr	ip, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, r3, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r3, r3, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp155,* DecFsNum
	cmp	ip, r3	@ tmp155, i
	bgt	.L116	@,
.L117:
	ldmfd	sp!, {r4}
	bx	lr
.L119:
	ldmfd	sp!, {r4}
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
	.fnstart
.LFB1953:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L126	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, r0, asl #2]	@ D.39439, s_pFspInst
	cmp	r3, #0	@ D.39439,
	beq	.L126	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L124	@,
	ldrsb	r1, [r3, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L124	@,
	mov	r1, #52	@ tmp143,
	mla	ip, r1, r2, r3	@ tmp144, tmp143, PhyFsID, D.39439
	add	r0, ip, #27648	@ tmp145, tmp144,
	add	r2, r0, #152	@ tmp145, tmp145,
	ldr	r0, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L126:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ eStoreType,
	ldmfd	sp!, {r3, pc}	@
.L124:
	mov	r0, #2	@ eStoreType,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
.LFB1952:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L134	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [ip, r0, asl #2]	@ D.39410, s_pFspInst
	cmp	ip, #0	@ D.39410,
	beq	.L134	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L131	@,
	ldrsb	r0, [ip, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L132	@,
	mov	r0, r1	@ Ret, ePhyFsType
	mov	r1, #52	@ tmp144,
	mla	r2, r1, r2, ip	@ tmp145, tmp144, PhyFsID, D.39410
	add	r1, r2, #27648	@ tmp146, tmp145,
	add	r2, r1, #152	@ tmp146, tmp146,
	str	r3, [r2, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L131:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L135	@,
.L132:
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, pc}	@
.L135:
	ldrsb	r0, [ip, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r0	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L132	@,
	mov	r1, #52	@ tmp150,
	mov	r0, #0	@ Ret,
	mla	r2, r1, r2, ip	@ tmp151, tmp150, PhyFsID, D.39410
	add	r2, r2, #30976	@ tmp152, tmp151,
	add	ip, r2, #152	@ tmp152, tmp152,
	str	r3, [ip, #4]	@ eStoreType, <variable>.eStoreType
	ldmfd	sp!, {r3, pc}	@
.L134:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
.LFB1951:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.39389, s_pFspInst
	cmp	r3, #0	@ D.39389,
	beq	.L140	@,
	mov	r2, #432	@ tmp141,
	mla	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.39389
	ldrsb	r0, [r1, #97]	@ D.39392, <variable>.s32DispState
	ldmfd	sp!, {r3, pc}	@
.L140:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39392,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
.LFB1949:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.39322, s_pFspInst
	cmp	r3, #0	@ D.39322,
	beq	.L145	@,
	mov	r2, #432	@ tmp141,
	mla	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.39322
	ldrsb	r0, [r1, #96]	@ D.39325, <variable>.s32IsRef
	ldmfd	sp!, {r3, pc}	@
.L145:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39325,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
.LFB1948:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	bhi	.L161	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L161	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r5, [r3, r0, asl #2]	@ D.39250, s_pFspInst
	cmp	r5, #0	@ D.39250,
	beq	.L161	@,
	mov	r7, #432	@ tmp148,
	uxtb	r8, r2	@ D.39257, IsRef
	mla	r7, r7, r1, r5	@ tmp149, tmp148, LogicFrameID, D.39250
	ldrsb	r1, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r8, [r7, #96]	@ D.39257, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r1, [r7, #504]	@ prephitmp.1081, <variable>.pstDecodeFs
	cmp	r1, #0	@ prephitmp.1081,
	beq	.L151	@,
	ldr	sl, [r1, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r7, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, ip	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L162	@,
.L151:
	mov	r3, #432	@ tmp187,
	mla	r3, r3, r4, r5	@ tmp188, tmp187, LogicFrameID, D.39250
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.39277, <variable>.PmvIdc
	cmp	r2, #19	@ D.39277,
	bhi	.L154	@,
	cmp	r6, #1	@ IsRef,
	beq	.L163	@,
	cmp	r6, #0	@ IsRef,
	bne	.L156	@,
	add	r1, r3, #496	@ tmp213, tmp188,
	ldr	ip, [r1, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	beq	.L164	@,
.L157:
	mov	r2, #432	@ tmp235,
	mla	r3, r2, r4, r5	@ tmp236, tmp235, LogicFrameID, D.39250
	ldr	r3, [r3, #508]	@ D.39298, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39298,
	beq	.L158	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L165	@,
.L159:
	mov	r2, #432	@ tmp248,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	mla	r2, r2, r4, r5	@ tmp249, tmp248, LogicFrameID, D.39250
	ldr	r1, [r2, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L166	@,
.L158:
	cmp	r6, #0	@ IsRef,
	moveq	r3, #432	@ tmp265,
	mlaeq	r4, r3, r4, r5	@ tmp266, tmp265, LogicFrameID, D.39250
	streq	r6, [r4, #504]	@ IsRef, <variable>.pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L161:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	vfmw_dprint_nothing	@
.L163:
	add	r3, r3, #496	@ tmp195, tmp188,
	ldr	r0, [r3, #4]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #1	@ <variable>.eLfsPmvState,
	beq	.L167	@,
.L156:
	mov	r3, #432	@ tmp243,
	mla	r0, r3, r4, r5	@ tmp244, tmp243, LogicFrameID, D.39250
	ldr	r3, [r0, #508]	@ D.39298, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39298,
	bne	.L159	@,
	b	.L158	@
.L154:
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ IsRef,
	beq	.L157	@,
	b	.L156	@
.L162:
	ldrsb	ip, [r1, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, r2	@ <variable>.IsDecRef, IsRef
	beq	.L152	@,
	ldr	ip, [r3, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L152	@,
	ldr	r3, [r3, #32]	@ D.39797, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.39275, <variable>.PhyAddr
	cmp	r3, #0	@ D.39797,
	beq	.L168	@,
	blx	r3	@ D.39797
	ldr	r1, [r7, #504]	@ prephitmp.1081, <variable>.pstDecodeFs
.L152:
	strb	r8, [r1, #0]	@ D.39257, <variable>.IsDecRef
	b	.L151	@
.L166:
	cmp	r6, #1	@ IsRef,
	bne	.L158	@,
	ldrsb	r0, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r0, #1	@ <variable>.DispState,
	moveq	r0, #2	@ tmp254,
	streqb	r0, [r3, #2]	@ tmp254, <variable>.DispState
	streqb	r0, [r2, #97]	@ tmp254, <variable>.s32DispState
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L165:
	mov	ip, #0	@ tmp239,
	strb	ip, [r3, #2]	@ tmp239, <variable>.DispState
	b	.L156	@
.L164:
	sxtab	r0, r5, r2	@ tmp217, D.39250, D.39277
	strb	r6, [r0, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, <variable>.PmvAddr
	str	r6, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
	b	.L157	@
.L167:
	sxtab	r1, r5, r2	@ tmp199, D.39250, D.39277
	mov	r2, #2	@ tmp208,
	strb	r6, [r1, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r2, [r3, #4]	@ tmp208, <variable>.eLfsPmvState
	b	.L156	@
.L168:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #504]	@ prephitmp.1081, <variable>.pstDecodeFs
	strb	r8, [r1, #0]	@ D.39257, <variable>.IsDecRef
	b	.L151	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
.LFB1947:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L176	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L176	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.39223, s_pFspInst
	cmp	r3, #0	@ D.39223,
	beq	.L176	@,
	mov	r2, #432	@ tmp141,
	mla	r2, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.39223
	ldr	r0, [r2, #500]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	r0, #2	@ <variable>.eLfsPmvState,
	bxne	lr	@
	ldrb	ip, [r2, #100]	@ zero_extendqisi2	@ D.39231, <variable>.PmvIdc
	mov	r2, #432	@ tmp159,
	cmp	ip, #19	@ D.39231,
	sxtabls	ip, r3, ip	@ tmp153, D.39223, D.39231
	addls	ip, ip, #8	@ tmp154, tmp153,
	movls	r0, #0	@ tmp155,
	strlsb	r0, [ip, #6]	@ tmp155, <variable>.IsPmvInUse
	mov	r0, #0	@ tmp162,
	mla	ip, r2, r1, r3	@ tmp160, tmp159, LogicFrameID, D.39223
	add	r1, ip, #496	@ tmp161, tmp160,
	str	r0, [r1, #4]	@ tmp162, <variable>.eLfsPmvState
	bx	lr	@
.L176:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ InstID,
	bhi	.L182	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r3, r0, asl #2]	@ D.37981, s_pFspInst
	cmp	r3, #0	@ D.37981,
	beq	.L182	@,
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	moveq	r2, #0	@ tmp137,
	streq	r2, [r3, #4]	@ tmp137, <variable>.eFspInstState
	bx	lr	@
.L182:
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #0]	@ temp.1168, s_pFspInst
	cmp	r3, #0	@ temp.1168,
	beq	.L184	@,
	ldr	r3, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r3, #0	@ <variable>.eFspInstState,
	bne	.L189	@,
.L184:
	ldr	r3, [r4, #4]	@ temp.1170, s_pFspInst
	cmp	r3, #0	@ temp.1170,
	beq	.L185	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #0	@ <variable>.eFspInstState,
	bne	.L190	@,
.L185:
	ldr	r3, [r4, #8]	@ temp.1172, s_pFspInst
	cmp	r3, #0	@ temp.1172,
	beq	.L186	@,
	ldr	r1, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r1, #0	@ <variable>.eFspInstState,
	bne	.L191	@,
.L186:
	ldr	r3, [r4, #12]	@ D.37903, s_pFspInst
	cmp	r3, #0	@ D.37903,
	ldmeqfd	sp!, {r4, pc}	@
.L192:
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #0	@ <variable>.eFspInstState,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, #3	@,
	ldmfd	sp!, {r4, lr}	@
	b	FSP_DisableInstance	@
.L191:
	mov	r0, #2	@,
	bl	FSP_DisableInstance	@
	ldr	r3, [r4, #12]	@ D.37903, s_pFspInst
	cmp	r3, #0	@ D.37903,
	bne	.L192	@,
	ldmfd	sp!, {r4, pc}	@
.L190:
	mov	r0, #1	@,
	bl	FSP_DisableInstance	@
	b	.L185	@
.L189:
	mov	r0, #0	@,
	bl	FSP_DisableInstance	@
	b	.L184	@
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_ConfigAttribute
	.type	FSP_ConfigAttribute, %function
FSP_ConfigAttribute:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L198	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ D.37919, s_pFspInst
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L198	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	mov	r0, #0	@ D.37917,
	strb	ip, [r3, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	ldmfd	sp!, {r3, pc}	@
.L198:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37917,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	FSP_ConfigAttribute, .-FSP_ConfigAttribute
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
.LFB1961:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	ip, [r2, r0, asl #2]	@ D.39614, s_pFspInst
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	cmp	ip, #0	@ D.39614,
	beq	.L202	@,
	ldrb	r5, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #27860	@ tmp139,
	mov	r0, r1	@ tmp152, pFspInstInfo
	add	r1, ip, #27648	@, D.39614,
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
.L202:
	ldmfd	sp!, {r4, r5}
	b	vfmw_dprint_nothing	@
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
.LFB1950:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	mov	sl, r2	@ IsWaitDisp, IsWaitDisp
	bhi	.L218	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L218	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp145,
	movt	r8, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r8, r0, asl #2]	@ tmp146, s_pFspInst
	cmp	r3, #0	@ tmp146,
	beq	.L218	@,
	add	r0, r8, #36	@, tmp145,
	rsbs	r7, r2, #1	@ D.39351, IsWaitDisp
	movcc	r7, #0	@ D.39351
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8, r4, asl #2]	@ pstInst, s_pFspInst
	mov	r0, #432	@ tmp154,
	mla	r3, r0, r5, r6	@ tmp155, tmp154, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp156, tmp155,
	ldrsb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r1, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L219	@,
	cmp	r7, #0	@ D.39351,
	moveq	r2, #3	@ iftmp.601,
	bne	.L208	@,
.L210:
	mov	lr, #432	@ tmp179,
	mla	r5, lr, r5, r6	@ tmp180, tmp179, LogicFrameID, pstInst
	add	r3, r5, #96	@ tmp181, tmp180,
	ldrsb	r1, [r3, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r2, [r3, #1]	@ iftmp.601, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.IsDummyFs,
	bne	.L215	@,
	add	r0, r5, #504	@ tmp193, tmp180,
	ldr	r2, [r0, #4]	@ temp.1246, <variable>.pstDispOutFs
	cmp	r2, #0	@ temp.1246,
	beq	.L215	@,
	ldr	ip, [r5, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r4, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r4, ip	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L220	@,
	cmp	r7, #0	@ D.39351,
	strneb	r1, [r3, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r1, #3	@ tmp231,
	strne	r1, [r0, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r1, [r3, #1]	@ tmp231, <variable>.s32DispState
	streqb	r1, [r2, #2]	@ tmp231, <variable>.DispState
.L215:
	ldr	r0, .L222	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L219:
	ldr	r1, [r3, #508]	@ D.39355, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.39355,
	beq	.L208	@,
	ldrsb	ip, [r2, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L208	@,
	ldr	r2, [r8, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L208	@,
	ldr	r3, [r8, #28]	@ D.39805, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r1, #12]	@ D.39364, <variable>.PhyAddr
	cmp	r3, #0	@ D.39805,
	beq	.L221	@,
	mov	r0, r4	@, InstID
	blx	r3	@ D.39805
.L208:
	mov	r2, #0	@ iftmp.601,
	b	.L210	@
.L218:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	vfmw_dprint_nothing	@
.L220:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L222	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L221:
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ iftmp.601,
	b	.L210	@
.L223:
	.align	2
.L222:
	.word	.LANCHOR0+36
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
	.fnstart
.LFB1954:
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
.LFB1944:
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
	beq	.L247	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L230	@,
	add	r2, r2, #27648	@ ivtmp.1297, pstInst,
	sub	r3, r4, #1	@ tmp157, TotalFsNum,
	and	ip, r3, #1	@ tmp159, tmp157,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #148]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L248	@,
.L237:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #52	@ ivtmp.1297, ivtmp.1297,
	ble	.L230	@,
	cmp	ip, #0	@ tmp159,
	beq	.L233	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L239	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L232	@,
.L239:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.1297, ivtmp.1297,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L230	@,
.L233:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #52	@ tmp161, ivtmp.1297,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L231	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L232	@,
.L231:
	ldrsb	r2, [r2, #52]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp160, i
	bne	.L242	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L232	@,
.L242:
	add	r3, r2, #1	@ i, tmp160,
	add	r2, r1, #52	@ ivtmp.1297, tmp161,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L233	@,
.L230:
	add	r1, sp, #16	@ tmp147,,
	mov	lr, #0	@ tmp144,
	add	r2, sp, #4	@,,
	add	r3, sp, #8	@,,
	str	lr, [r1, #-4]!	@ tmp144, RefNum
	str	lr, [sp, #8]	@ tmp144, NewNum
	str	lr, [sp, #4]	@ tmp144, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldmib	sp, {r0, r1, r2}	@ phole ldm
	add	ip, r2, r0	@ tmp150, RefNum, ReadNum
	add	r3, ip, #2	@ tmp153, tmp150,
	add	r0, r3, r1	@ tmp154, tmp153, NewNum
	cmp	r4, r0	@ TotalFsNum, tmp154
	bgt	.L249	@,
.L234:
	mov	r0, #0	@ D.38973,
.L229:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, pc}
.L248:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L237	@,
.L232:
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L234	@,
	b	.L230	@
.L249:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.38973,
	b	.L229	@
.L247:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38973,
	b	.L229	@
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
.LFB1943:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ InstID, InstID
	bhi	.L279	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp148,
	movt	r3, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r5, [r3, r0, asl #2]	@ D.38928, s_pFspInst
	cmp	r5, #0	@ D.38928,
	beq	.L279	@,
	ldr	r2, [r3, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L254	@,
	ldr	r6, [r3, #20]	@ D.39812, g_FspFrameIntf.IsFrameAvalible
	cmp	r6, #0	@ D.39812,
	beq	.L280	@,
	blx	r6	@ D.39812
	cmp	r0, #0	@,
	bne	.L256	@,
.L254:
	ldrb	r6, [r5, #10]	@ zero_extendqisi2	@ D.38937, <variable>.s32DecFsNum
	cmp	r6, #0	@ D.38937,
	beq	.L257	@,
	sxtb	r6, r6	@ D.38953, D.38937
	cmp	r6, #0	@ D.38953,
	ble	.L258	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	sub	r0, r6, #1	@ tmp159, D.38953,
	add	r5, r5, #27648	@ ivtmp.1330, D.38928,
	ldr	r2, [r3, r4, asl #2]	@ pretmp.1314, s_pstVfmwChan
	and	ip, r0, #1	@ tmp161, tmp159,
	add	r5, r5, #150	@ ivtmp.1330, ivtmp.1330,
	mov	r3, #0	@ i,
	add	r1, r2, #216064	@ ivtmp.1333, pretmp.1314,
	ldr	r0, [r2, #1580]	@ pretmp.1316, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1333, ivtmp.1333,
	cmp	r0, #1	@ pretmp.1316,
	beq	.L281	@,
.L265:
	ldrsb	r2, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L282	@,
.L266:
	mov	r3, #1	@ i,
	cmp	r3, r6	@ i, D.38953
	add	r5, r5, #52	@ ivtmp.1330, ivtmp.1330,
	add	r1, r1, #16	@ ivtmp.1333, ivtmp.1333,
	bge	.L258	@,
	cmp	ip, #0	@ tmp161,
	beq	.L262	@,
	cmp	r0, r3	@ pretmp.1316,
	beq	.L278	@,
.L268:
	ldrsb	ip, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L269	@,
	ldrsb	r2, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L261	@,
.L269:
	add	r3, r3, #1	@ i, i,
	add	r5, r5, #52	@ ivtmp.1330, ivtmp.1330,
	cmp	r3, r6	@ i, D.38953
	add	r1, r1, #16	@ ivtmp.1333, ivtmp.1333,
	blt	.L262	@,
.L258:
	mov	r0, r4	@, InstID
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.38926,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L256:
	mov	r0, #0	@ D.38926,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L282:
	ldrsb	r2, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L266	@,
.L261:
	cmp	r3, r6	@ i, D.38953
	bge	.L258	@,
.L257:
	mov	r0, #1	@ D.38926,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L285:
	ldr	r7, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r7, #0	@ <variable>.eFrameState,
	bne	.L260	@,
.L259:
	ldrsb	r7, [r5, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r7, #0	@ <variable>.IsDecRef,
	bne	.L260	@,
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #0	@ <variable>.DispState,
	beq	.L261	@,
.L260:
	add	r3, r3, #1	@ i, i,
	cmp	r0, #1	@ pretmp.1316,
	mov	r5, r3	@ tmp162, i
	beq	.L283	@,
.L272:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L273	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L261	@,
.L273:
	add	r3, r5, #1	@ i, tmp162,
	add	r1, ip, #16	@ ivtmp.1333, tmp164,
	cmp	r3, r6	@ i, D.38953
	add	r5, r2, #52	@ ivtmp.1330, tmp163,
	bge	.L258	@,
.L262:
	cmp	r0, #1	@ pretmp.1316,
	add	r2, r5, #52	@ tmp163, ivtmp.1330,
	add	ip, r1, #16	@ tmp164, ivtmp.1333,
	bne	.L259	@,
	b	.L285	@
.L283:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L272	@,
	b	.L273	@
.L280:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.38926, D.39812
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L281:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L265	@,
	b	.L266	@
.L278:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L268	@,
	b	.L269	@
.L279:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38926,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.type	FSP_DSDRePartitionFsMemory, %function
FSP_DSDRePartitionFsMemory:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #452
	sub	sp, sp, #452	@,,
	add	r6, sp, #32	@ tmp170,,
	mov	r5, r0	@ InstID, InstID
	mov	sl, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	mov	r0, r6	@, tmp170
	mov	r9, r2	@ MemSize, MemSize
	str	r3, [sp, #28]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #3	@ InstID,
	bhi	.L292	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	r4, [r3, r5, asl #2]	@ D.38152, s_pFspInst
	cmp	r4, #0	@ D.38152,
	beq	.L292	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp173,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp173,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.38155, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r0, #36]	@ D.38161, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrb	r7, [r4, #60]	@ zero_extendqisi2	@ D.38157, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ D.38161,
	beq	.L292	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, sl	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r9	@, MemSize
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp177,
	str	lr, [sp, #4]	@ tmp177,
	ldrsb	lr, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r5, [sp, #12]	@ InstID,
	str	r6, [sp, #16]	@ tmp170,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	mov	lr, #64	@ tmp181,
	str	lr, [sp, #20]	@ tmp181,
	blx	ip	@ D.38161
	cmp	r0, #0	@ Ret
	bne	.L292	@,
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r3, r7	@ D.38157, D.38157
	sxtb	r8, r8	@ D.38155, D.38155
	add	r2, r8, r3, asl #2	@, tmp187, D.38155, D.38157,
	strb	ip, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r2, r1	@ tmp187, MemArrange.ValidFrameNum
	bgt	.L292	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	beq	.L326	@,
	ldrb	r1, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r1, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L295:
	ldr	r7, [sp, #440]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	ip, r4, #27648	@ ivtmp.1449, D.38152,
	movw	r2, #34640	@ tmp204,
	mov	r0, #0	@ i,
	add	r3, ip, #160	@ ivtmp.1449, ivtmp.1449,
	ldrsb	r6, [r4, #10]	@ D.38190, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp403, tmp204
	add	ip, sp, #32	@ ivtmp.1515,,
	mov	r1, r0	@ tmp402, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L298	@
.L328:
	str	r0, [r2, #-8]	@ tmp408, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp408,
	ldr	r7, [ip, #8]	@ tmp446, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1515, tmp409,
	str	r7, [r3, #52]	@ tmp446, <variable>.PhyAddr
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
	strb	r1, [r2, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp402, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp402, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.1449, tmp410,
	beq	.L327	@,
.L298:
	cmp	r6, r0	@ D.38190, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp402, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp408, i,
	ldrgt	r2, [ip, #8]	@ tmp208, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp409, ivtmp.1515,
	ldrle	r2, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.38190, tmp408
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r7, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r7, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r2, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp402, <variable>.IsTfRef
	str	r2, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r2, r3, #52	@ tmp410, ivtmp.1449,
	strb	r1, [r3, #-10]	@ tmp402, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bgt	.L328	@,
	str	r1, [r2, #-8]	@ tmp402, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp408,
	ldr	r7, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1515, tmp409,
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
	strb	r1, [r2, #-12]	@ tmp402, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp402, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.1449, tmp410,
	strb	r1, [r2, #-10]	@ tmp402, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L298	@,
.L327:
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #448	@,,
	movw	fp, #34456	@ tmp241,
	mov	r3, #0	@ tmp242,
	mov	r2, #1	@ tmp239,
	str	r3, [r4, fp]	@ tmp242, <variable>.PhyFsID
	add	ip, r5, r1, asl #2	@, tmp248,, <variable>.s32DecFsNum,
	strb	r2, [r4, #12]	@ tmp239, <variable>.s32TfFsNum
	movw	r0, #34464	@ tmp243,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	fp, [ip, #-408]	@ tmp250, MemArrange.FrameAddr
	movw	r2, #34476	@ tmp253,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r4, r0]	@ tmp250, <variable>.PhyAddr
	movw	r0, #34480	@ tmp255,
	ldr	fp, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r2]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r2, #34472	@ tmp251,
	str	ip, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	fp, [r4, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	fp, #34484	@ tmp257,
	ldr	r0, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	r0, [r4, fp]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	r0, #34488	@ tmp259,
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	fp, #34454	@ tmp269,
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	r0, #34452	@ tmp263,
	ldr	ip, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, fp]	@ tmp242, <variable>.DispState
	movw	fp, #34492	@ tmp261,
	strb	r3, [r4, r0]	@ tmp242, <variable>.IsDecRef
	movw	r0, #34453	@ tmp266,
	str	ip, [r4, fp]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp242, <variable>.IsTfRef
	bne	.L299	@,
	mov	fp, r2	@ prephitmp.1460, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L301:
	add	r1, r4, #30976	@ tmp275, D.38152,
	mov	r2, #0	@ ivtmp.1414,
	add	r9, r1, #180	@ ivtmp.1426, tmp275,
	add	sl, r1, #152	@ ivtmp.1412, tmp275,
	add	r8, r1, #160	@ ivtmp.1418, tmp275,
	add	r7, r1, #168	@ ivtmp.1420, tmp275,
	add	r6, r1, #172	@ ivtmp.1422, tmp275,
	add	r5, r1, #176	@ ivtmp.1424, tmp275,
	mov	r3, r2	@ i.1505, ivtmp.1414
	mov	r1, r2	@ tmp400, ivtmp.1414
	b	.L300	@
.L330:
	str	r3, [sl, #0]	@ i.1505, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp291, i.1505, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp292, tmp291, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	r0, fp, r0, asl #2	@, tmp296,, tmp292,
	ldr	r0, [r0, #-408]	@ tmp298, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp298, <variable>.PhyAddr
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
	strb	r1, [ip, #150]	@ tmp400, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp400, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp400, <variable>.IsTfRef
.L303:
	add	r3, r3, #1	@ i.1505, i.1505,
	add	sl, sl, #52	@ ivtmp.1412, ivtmp.1412,
	cmp	r3, #64	@ i.1505,
	add	r2, r2, #52	@ ivtmp.1414, ivtmp.1414,
	add	r8, r8, #52	@ ivtmp.1418, ivtmp.1418,
	add	r7, r7, #52	@ ivtmp.1420, ivtmp.1420,
	add	r6, r6, #52	@ ivtmp.1422, ivtmp.1422,
	add	r5, r5, #52	@ ivtmp.1424, ivtmp.1424,
	add	r9, r9, #52	@ ivtmp.1426, ivtmp.1426,
	beq	.L329	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.1460, <variable>.s32DispFsNum
.L300:
	add	r0, r4, r2	@ D.40736, D.38152, ivtmp.1414
	cmp	fp, r3	@ prephitmp.1460, i.1505
	add	ip, r0, #30976	@ tmp304, D.40736,
	mov	r0, ip	@ tmp336, tmp304
	bgt	.L330	@,
	str	r1, [sl, #0]	@ tmp400, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp324, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	ip, fp, ip, asl #2	@, tmp328,, tmp324,
	ldr	ip, [ip, #-408]	@ tmp330, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp330, <variable>.PhyAddr
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
	strb	r1, [r0, #150]	@ tmp400, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp400, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp400, <variable>.IsTfRef
	b	.L303	@
.L326:
	ldrsb	r6, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r6, #0	@ <variable>.s8LowBufEnable,
	beq	.L294	@,
	ldr	r0, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	movw	fp, #34644	@ tmp197,
	strb	r0, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	ldr	r7, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r7, [r4, fp]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	b	.L295	@
.L329:
	ldr	r3, [sp, #436]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.1394, D.38152,
	mov	ip, #0	@ tmp399,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	movge	r3, #20	@ tmp353,
	uxtb	r5, r3	@ prephitmp.1360, tmp353
	strb	r5, [r4, #13]	@ prephitmp.1360, <variable>.s32PmvNum
	ldr	r0, [sp, #312]	@ tmp430, MemArrange.PMVAddr
	add	r5, sp, #32	@,,
	mov	r3, #1	@ i.1506,
	strb	ip, [r4, #14]	@ tmp399, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.1400, D.38152,
	str	r0, [r1, #0]	@ tmp430, <variable>.PmvAddr
	add	r0, r5, #4	@ ivtmp.1448,,
	add	r1, r1, #4	@ ivtmp.1394, ivtmp.1394,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1360, <variable>.s32PmvNum
	b	.L308	@
.L331:
	ldr	r5, [r0, #280]	@ tmp434, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp434, <variable>.PmvAddr
.L322:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1360, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.1506, tmp404,
	add	r0, r0, #4	@ ivtmp.1448, tmp405,
	add	r1, r1, #4	@ ivtmp.1394, tmp406,
	add	r2, r2, #1	@ ivtmp.1400, tmp407,
.L308:
	sxtb	r5, r5	@ prephitmp.1360, prephitmp.1360
	cmp	r5, r3	@ prephitmp.1360, i.1506
	add	r3, r3, #1	@ tmp404, i.1506,
	ldrgt	r5, [r0, #280]	@ tmp357, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp405, ivtmp.1448,
	ldrle	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp404,
	strb	ip, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp407, ivtmp.1400,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp406, ivtmp.1394,
	beq	.L307	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.1360, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.1360, tmp404
	bgt	.L331	@,
	ldr	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp399, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L322	@
.L307:
	movw	r1, #27808	@ tmp368,
	ldr	ip, [sp, #432]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp363,
	movw	r2, #27756	@ tmp367,
	movw	r1, #27748	@ tmp365,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp366,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r2, #27764	@ tmp370,
	str	r3, [r4, r1]	@ tmp366, <variable>.stDummyPhyFs.PhyFsID
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r0, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r2]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	ip, #27768	@ tmp372,
	str	r0, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #27772	@ tmp374,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	r2, #27776	@ tmp376,
	ldr	r1, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	movw	ip, #27780	@ tmp378,
	mov	r0, r3	@ D.38150, tmp366
	str	r1, [r4, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r2, #27744	@ tmp382,
	ldr	r1, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r4, ip]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	ip, #27745	@ tmp385,
	ldr	r1, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r2]	@ tmp366, <variable>.stDummyPhyFs.IsDecRef
	movw	r2, #27784	@ tmp380,
	strb	r3, [r4, ip]	@ tmp366, <variable>.stDummyPhyFs.IsTfRef
	movw	ip, #27746	@ tmp388,
	str	r1, [r4, r2]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r2, #34656	@ tmp391,
	strb	r3, [r4, ip]	@ tmp366, <variable>.stDummyPhyFs.DispState
	movw	r3, #34644	@ tmp393,
	ldr	r1, [sp, #444]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	r1, [r4, r2]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	ip, [r4, r3]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	ldr	r2, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r1, [sp, #28]	@, %sfp
	str	r2, [r1, #0]	@ MemArrange.TotalMemUsed,
.L288:
	add	sp, sp, #452	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L299:
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r3, [r4, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r0, ip, #1	@ tmp282, MemArrange.ValidFrameNum,
	rsb	fp, r1, r0	@ tmp281, <variable>.s32DecFsNum, tmp282
	cmp	fp, #25	@ tmp281,
	movlt	r2, fp	@ tmp414, tmp281
	movge	r2, #25	@ tmp414,
	uxtb	r0, r2	@ prephitmp.1460,
	strb	r0, [r4, #11]	@ tmp12, <variable>.s32DispFsNum
	sxtb	fp, r0	@ prephitmp.1460,
	cmp	r3, fp	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.1460
	ble	.L301	@,
.L292:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38150,
	b	.L288	@
.L294:
	ldr	r2, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r2, #40	@ MemArrange.ValidFrameNum,
	movge	r2, #40	@ tmp199,
	strb	r2, [r4, #10]	@ tmp199, <variable>.s32DecFsNum
	b	.L295	@
	.fnend
	.size	FSP_DSDRePartitionFsMemory, .-FSP_DSDRePartitionFsMemory
	.align	2
	.type	FSP_NoneDnrSwitchToDnrSpecialCase1, %function
FSP_NoneDnrSwitchToDnrSpecialCase1:
	.fnstart
.LFB1939:
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
	mov	r5, #0	@ tmp180,
	str	r5, [sp, #460]	@ tmp180, s32UsedMemSize
	bl	__memzero	@
	cmp	r4, #3	@ InstID,
	bhi	.L362	@,
	cmp	r7, #0	@ VoUsingFrameArray,
	beq	.L362	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp183,
	movt	r3, #:upper16:.LANCHOR0	@ tmp183,
	ldr	r6, [r3, r4, asl #2]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L362	@,
	movw	r0, #34648	@ tmp184,
	ldr	r2, [r7, #0]	@ D.38560, <variable>.FrameAddr
	ldr	sl, [r6, r0]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r3, #34644	@ tmp186,
	movw	lr, #34656	@ tmp187,
	ldr	r8, [r6, r3]	@ <variable>.TotalMemUsed, <variable>.TotalMemUsed
	ldr	ip, [r6, lr]	@ <variable>.StrideByte, <variable>.StrideByte
	cmp	sl, r2	@ s32VdhMemAddr, D.38560
	movw	r1, #34652	@ tmp185,
	rsblt	r5, sl, r2	@ s32FreeSize.1562, s32VdhMemAddr, D.38560
	ldr	r0, [r6, r1]	@, <variable>.MemSize
	add	r8, r8, ip	@ s32VdhTotalMemUse, <variable>.TotalMemUsed, <variable>.StrideByte
	cmp	r5, r8	@ s32FreeSize.1562, s32VdhTotalMemUse
	str	r0, [sp, #32]	@, %sfp
	movge	r2, #1	@,
	strge	r2, [sp, #36]	@, %sfp
	bge	.L352	@,
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r3, [sp, #32]	@, %sfp
	sub	r0, ip, #1	@ temp.1599,,
	add	ip, r3, sl	@ D.38568,, s32VdhMemAddr
	add	r3, r7, r0, asl #3	@, D.38572, VoUsingFrameArray, temp.1599,
	ldr	r1, [r7, r0, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r1, lr, r1	@ D.38575, <variable>.FrameSize, <variable>.FrameAddr
	cmp	ip, r1	@ D.38568, D.38575
	rsbgt	ip, r1, ip	@ s32FreeSize.1563, D.38575, D.38568
	movle	ip, #0	@ s32FreeSize.1563,
	cmp	ip, r8	@ s32FreeSize.1563, s32VdhTotalMemUse
	bge	.L342	@,
	cmp	r0, #0	@ temp.1599,
	ble	.L362	@,
	ldr	r5, [r7, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r7, #8	@ D.38586, VoUsingFrameArray,
	ldr	r1, [r7, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r2, r5	@ D.38593, D.38560, <variable>.FrameSize
	rsb	r2, r5, r1	@ tmp195, D.38593, <variable>.FrameAddr
	cmp	r8, r2	@ s32VdhTotalMemUse, tmp195
	movle	r2, r7	@ VoUsingFrameArray.1564, VoUsingFrameArray
	ble	.L345	@,
	tst	r0, #1	@ temp.1599,
	mov	ip, #0	@ i,
	bne	.L347	@,
	ldr	r5, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r2, r3	@ VoUsingFrameArray.1564, ivtmp.1555
	ldr	lr, [r3, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	ip, #1	@ i,
	ldr	r1, [r3, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r5, lr	@ D.38593, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r1, r5, r1	@ s32FreeSize.1569, D.38593, <variable>.FrameAddr
	cmp	r8, r1	@ s32VdhTotalMemUse, s32FreeSize.1569
	bgt	.L347	@,
.L345:
	movw	ip, #34648	@ tmp204,
	movw	r0, #34652	@ tmp205,
	str	r5, [r6, ip]	@ D.38593, <variable>.MemAddr
	str	r8, [r6, r0]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r1, [r2, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r1, r8	@ tmp207, <variable>.FrameSize, s32VdhTotalMemUse
	str	r3, [r2, #4]	@ tmp207, <variable>.FrameSize
	b	.L346	@
.L342:
	movw	ip, #34648	@ tmp197,
	movw	lr, #34652	@ tmp198,
	str	r1, [r6, ip]	@ D.38575, <variable>.MemAddr
	str	r8, [r6, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	r0, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r0, r8	@ tmp200, <variable>.FrameSize, s32VdhTotalMemUse
	str	r2, [r3, #4]	@ tmp200, <variable>.FrameSize
.L346:
	movw	r3, #34648	@ tmp265,
	movw	ip, #34652	@ tmp267,
	ldr	r1, [r6, r3]	@, <variable>.MemAddr
	mov	r0, r4	@, InstID
	ldr	r2, [r6, ip]	@, <variable>.MemSize
	add	r3, sp, #460	@,,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	beq	.L392	@,
	ldr	r3, [sp, #460]	@ s32UsedMemSize, s32UsedMemSize
	cmp	r8, r3	@ s32VdhTotalMemUse, s32UsedMemSize
	movge	r3, #0	@,
	strge	r3, [sp, #36]	@, %sfp
	blt	.L362	@,
.L352:
	ldrsb	lr, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, #0	@ <variable>.s32DecFsNum,
	movwle	r5, #:lower16:s_pstVfmwChan	@ tmp272,
	movtle	r5, #:upper16:s_pstVfmwChan	@ tmp272,
	ble	.L350	@,
	add	r9, r6, #27648	@ ivtmp.1550, pstInst,
	mov	r3, #0	@ i.1570,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp272,
	add	r0, r9, #160	@ ivtmp.1550, ivtmp.1550,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp272,
	mov	ip, r3	@ tmp275, i.1570
	movw	fp, #34640	@ tmp276,
.L353:
	ldr	lr, [r5, r4, asl #2]	@ tmp212, s_pstVfmwChan
	mov	r1, r3, asl #4	@ tmp214, i.1570,
	add	r2, r3, #13504	@ tmp227, i.1570,
	add	r3, r3, #1	@ i.1570, i.1570,
	add	r9, r1, lr	@ tmp215, tmp214, tmp212
	add	r2, r2, #23	@ tmp227, tmp227,
	add	lr, r9, #216064	@ tmp216, tmp215,
	add	r9, lr, #360	@ tmp216, tmp216,
	str	ip, [r9, #0]	@ tmp275, <variable>.eFrameState
	ldr	r9, [r5, r4, asl #2]	@ tmp219, s_pstVfmwChan
	ldr	lr, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, r1, r9	@ tmp222, tmp214, tmp219
	add	r1, r1, #216064	@ tmp223, tmp222,
	add	r1, r1, #360	@ tmp223, tmp223,
	str	lr, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [r6, fp]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	ldr	r1, [r5, r4, asl #2]	@ tmp226, s_pstVfmwChan
	str	lr, [r1, r2, asl #4]	@ <variable>.ImgSlotLen, <variable>.s32FrameSize
	ldr	lr, [r5, r4, asl #2]	@ tmp232, s_pstVfmwChan
	add	r2, lr, r2, asl #4	@, tmp237, tmp232, tmp227,
	str	ip, [r2, #4]	@ tmp275, <variable>.s32UsingCount
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r3	@ <variable>.s32DecFsNum, i.1570
	bgt	.L353	@,
.L350:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp242,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp242,
	ldr	r0, [r5, r4, asl #2]	@ temp.1575, s_pstVfmwChan
	ldr	ip, [r3, #36]	@ D.38618, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38618,
	ldr	r1, [r0, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r0, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r0, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L354	@,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	lr, #0	@ tmp245,
	mov	r1, #0	@ tmp243,
	str	lr, [sp, #12]	@ tmp245,
	str	r1, [sp, #8]	@ tmp243,
	add	r0, sp, #44	@ tmp247,,
	mov	lr, #64	@ tmp248,
	str	r0, [sp, #16]	@ tmp247,
	str	r1, [sp, #0]	@ tmp243,
	mov	r0, #1	@,
	str	lr, [sp, #20]	@ tmp248,
	mvn	r1, #-2147483648	@,
	blx	ip	@ D.38618
	cmp	r0, #0	@,
	bne	.L354	@,
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r5, r4, asl #2]	@ tmp250, s_pstVfmwChan
	ldr	r2, [sp, #36]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	ip, [r5, r4, asl #2]	@ temp.1577, s_pstVfmwChan
	ldr	r1, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	beq	.L393	@,
.L356:
	ldr	r2, [sp, #28]	@, %sfp
	ldr	lr, [sp, #32]	@, %sfp
	sub	r4, r2, #1	@ temp.1599,,
	add	sl, lr, sl	@ temp.1579,, s32VdhMemAddr
	add	r3, r7, r4, asl #3	@, temp.1583, VoUsingFrameArray, temp.1599,
	ldr	lr, [r7, r4, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r2, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r2, lr	@ temp.1586, <variable>.FrameSize, <variable>.FrameAddr
	cmp	sl, r3	@ temp.1579, temp.1586
	rsbgt	sl, r3, sl	@ s32FreeSize.1561, temp.1586, temp.1579
	movle	sl, #0	@ s32FreeSize.1561,
	cmp	sl, r1	@ s32FreeSize.1561, s32DnrSize
	strge	r3, [ip, #236]	@ temp.1586, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.38549,
	bge	.L334	@,
	cmp	r4, #0	@ temp.1599,
	ble	.L362	@,
	ldmia	r7, {r0, lr}	@ phole ldm
	ldr	r3, [r7, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r2, r0, lr	@ temp.1589, <variable>.FrameAddr, <variable>.FrameSize
	rsb	r0, r2, r3	@ tmp259, temp.1589, <variable>.FrameAddr
	cmp	r1, r0	@ s32DnrSize, tmp259
	ble	.L363	@,
	tst	r4, #1	@ temp.1599,
	mov	r0, #0	@ i.1594,
	bne	.L365	@,
	ldr	r2, [r7, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r0, #1	@ i.1594,
	ldr	r5, [r7, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r7, r7, #8	@ ivtmp.1545, ivtmp.1545,
	add	r2, r2, r3	@ temp.1589, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r2, r5	@ s32FreeSize.1591, temp.1589, <variable>.FrameAddr
	cmp	r1, lr	@ s32DnrSize, s32FreeSize.1591
	bgt	.L365	@,
	b	.L363	@
.L366:
	ldr	r6, [r7, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r2, [r7, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r5, [r7, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r7, r3, #8	@ ivtmp.1545, tmp280,
	add	r2, r6, r2	@ temp.1589, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r5, r2, r5	@ s32FreeSize.1591, temp.1589, <variable>.FrameAddr
	cmp	r1, r5	@ s32DnrSize, s32FreeSize.1591
	ble	.L363	@,
	add	r2, r3, #8
	ldmia	r2, {r2, r5, lr}	@ phole ldm
	add	r2, r5, r2	@ temp.1589, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r3, r2, lr	@ s32FreeSize.1591, temp.1589, <variable>.FrameAddr
	cmp	r1, r3	@ s32DnrSize, s32FreeSize.1591
	ble	.L363	@,
.L365:
	add	lr, r0, #1	@ tmp281, i.1594,
	add	r3, r7, #8	@ tmp280, ivtmp.1545,
	cmp	lr, r4	@ tmp281, temp.1599
	add	r0, lr, #1	@ i.1594, tmp281,
	blt	.L366	@,
.L362:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38549,
.L334:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L354:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r5, r4, asl #2]	@ tmp250, s_pstVfmwChan
	ldr	r2, [sp, #36]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	ip, [r5, r4, asl #2]	@ temp.1577, s_pstVfmwChan
	ldr	r1, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	bne	.L356	@,
.L393:
	ldr	lr, [r7, #0]	@ temp.1578, <variable>.FrameAddr
	add	r8, r8, sl	@ D.38625, s32VdhTotalMemUse, s32VdhMemAddr
	cmp	lr, r8	@ temp.1578, D.38625
	rsbgt	lr, r8, lr	@ s32FreeSize, D.38625, temp.1578
	movle	lr, #0	@ s32FreeSize,
	cmp	lr, r1	@ s32FreeSize, s32DnrSize
	strge	r8, [ip, #236]	@ D.38625, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.38549,
	blt	.L356	@,
	b	.L334	@
.L348:
	ldmia	r3, {r5, r9}	@ phole ldm
	ldr	lr, [r1, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r9, r5	@ D.38593, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r5, lr	@ s32FreeSize.1569, D.38593, <variable>.FrameAddr
	cmp	r8, lr	@ s32VdhTotalMemUse, s32FreeSize.1569
	ble	.L345	@,
	ldr	lr, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r1	@ VoUsingFrameArray.1564, tmp285
	ldr	r5, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r1, #8	@ ivtmp.1555, VoUsingFrameArray.1564,
	ldr	r1, [r1, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r5, r5, lr	@ D.38593, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r1, r5, r1	@ s32FreeSize.1569, D.38593, <variable>.FrameAddr
	cmp	r8, r1	@ s32VdhTotalMemUse, s32FreeSize.1569
	ble	.L345	@,
.L347:
	add	r2, ip, #1	@ tmp286, i,
	mov	r1, r3	@ tmp285, ivtmp.1555
	cmp	r0, r2	@ temp.1599, tmp286
	add	ip, r2, #1	@ i, tmp286,
	mov	r2, r3	@ VoUsingFrameArray.1564, ivtmp.1555
	bgt	.L348	@,
	b	.L362	@
.L363:
	str	r2, [ip, #236]	@ temp.1589, <variable>.s32OffLineDnrMemAddr
	mov	r0, #0	@ D.38549,
	b	.L334	@
.L392:
	str	r0, [sp, #24]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #24]	@,
	b	.L334	@
	.fnend
	.size	FSP_NoneDnrSwitchToDnrSpecialCase1, .-FSP_NoneDnrSwitchToDnrSpecialCase1
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	sl, r0	@ InstID, InstID
	bhi	.L422	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp181,
	movt	r8, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r7, [r8, r0, asl #2]	@ D.38039, s_pFspInst
	cmp	r7, #0	@ D.38039,
	beq	.L422	@,
	add	r0, r7, #96	@, D.38039,
	mov	r1, #27648	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L398	@,
	add	r4, r7, #27648	@ ivtmp.1642, D.38039,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.1642, ivtmp.1642,
	mov	r9, r8	@ tmp184, tmp181
	mov	r6, r5	@ tmp185, i
	b	.L403	@
.L401:
	mov	r0, sl	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.39822
.L400:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L399	@,
	ldr	r3, [r8, #28]	@ D.39827, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ temp.1643, <variable>.PhyAddr
	cmp	r3, #0	@ D.39827,
	beq	.L423	@,
	mov	r0, sl	@, InstID
	blx	r3	@ D.39827
.L399:
	strb	r6, [r4, #-44]	@ tmp185, <variable>.IsDecRef
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp185, <variable>.DispState
	str	r6, [r4], #52	@ tmp185, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	ble	.L398	@,
.L403:
	ldr	r1, [r4, #-32]	@ D.38048, <variable>.PhyAddr
	cmp	r1, #0	@ D.38048,
	beq	.L399	@,
	ldr	r0, [r8, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L399	@,
	ldrsb	r2, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L400	@,
	ldr	r3, [r9, #32]	@ D.39822, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.39822,
	bne	.L401	@,
	bl	vfmw_dprint_nothing	@
	b	.L400	@
.L423:
	bl	vfmw_dprint_nothing	@
	strb	r6, [r4, #-44]	@ tmp185, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp185, <variable>.DispState
	add	r5, r5, #1	@ i, i,
	str	r6, [r4], #52	@ tmp185, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	bgt	.L403	@,
.L398:
	ldrsb	ip, [r7, #11]	@ D.38063, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.38063,
	ble	.L404	@,
	add	r4, r7, #30976	@ tmp170, D.38039,
	cmp	ip, #1	@ D.38063,
	add	lr, r4, #192	@ ivtmp.1634, tmp170,
	sub	r3, ip, #1	@ tmp191, D.38063,
	and	r5, r3, #1	@ tmp193, tmp191,
	mov	r0, #1	@ i.1645,
	mov	r3, #0	@ tmp183,
	add	r2, r4, #244	@ ivtmp.1634, tmp170,
	str	r3, [lr, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [lr, #-42]	@ tmp183, <variable>.DispState
	ble	.L404	@,
	cmp	r5, #0	@ tmp193,
	beq	.L405	@,
	mov	r0, #2	@ i.1645,
	cmp	ip, r0	@ D.38063, i.1645
	str	r3, [r2, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	add	r2, r4, #296	@ ivtmp.1634, tmp170,
	ble	.L404	@,
.L405:
	add	r0, r0, #2	@ i.1645, i.1645,
	mov	r1, r2	@ tmp195, ivtmp.1634
	cmp	ip, r0	@ D.38063, i.1645
	str	r3, [r1], #52	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	str	r3, [r2, #52]	@ tmp183, <variable>.u32Tick
	add	r2, r2, #104	@ ivtmp.1634, ivtmp.1634,
	strb	r3, [r1, #-42]	@ tmp183, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp183, <variable>.IsDecRef
	bgt	.L405	@,
.L404:
	ldrsb	ip, [r7, #13]	@ D.38065, <variable>.s32PmvNum
	cmp	ip, #0	@ D.38065,
	ble	.L406	@,
	cmp	ip, #1	@ D.38065,
	sub	r0, ip, #1	@ tmp186, D.38065,
	and	r1, r0, #1	@ tmp188, tmp186,
	mov	r2, #1	@ i.1646,
	mov	r0, #0	@ tmp182,
	add	r3, r7, r2	@ ivtmp.1627, D.38039,
	strb	r0, [r7, #14]	@ tmp182, <variable>.IsPmvInUse
	ble	.L406	@,
	cmp	r1, #0	@ tmp188,
	beq	.L407	@,
	mov	r2, #2	@ i.1646,
	cmp	ip, r2	@ D.38065, i.1646
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1627, ivtmp.1627,
	ble	.L406	@,
.L407:
	add	r2, r2, #2	@ i.1646, i.1646,
	add	lr, r3, #1	@ tmp189, ivtmp.1627,
	cmp	ip, r2	@ D.38065, i.1646
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1627, tmp189,
	bgt	.L407	@,
.L406:
	mov	r0, #0	@ tmp179,
	str	r0, [r7, #36]	@ tmp179, <variable>.u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L422:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38037,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L430	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r4, [r3, r0, asl #2]	@ D.37962, s_pFspInst
	cmp	r4, #0	@ D.37962,
	beq	.L430	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.37960,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r4	@, D.37962
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp139,
	mov	r0, r5	@ D.37960, <variable>.eFspInstState
	str	r1, [r4, #4]	@ tmp139, <variable>.eFspInstState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L430:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37960,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_ClearContext
	.type	FSP_ClearContext, %function
FSP_ClearContext:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ pFspInst, pFspInst
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L436	@,
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
	movne	ip, #0	@ D.37936,
	moveq	ip, #0	@ D.37936,
	stmeqia	sl!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldreq	r3, [r7, #0]	@ stTmpPreInfo, stTmpPreInfo
	streq	r3, [r6, #0]	@ stTmpPreInfo,
.L433:
	mov	r0, ip	@, D.37936
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L436:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.37936,
	b	.L433	@
	.fnend
	.size	FSP_ClearContext, .-FSP_ClearContext
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bhi	.L441	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L441	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, r0, asl #2]	@ D.38107, s_pFspInst
	cmp	r2, #0	@ D.38107,
	beq	.L441	@,
	ldr	r2, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L441	@,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp144,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp144,
	mov	r6, #0	@ tmp141,
	strb	r6, [r1, #0]	@ tmp141, <variable>.s32DispLoopEnable
	ldr	r1, [r5, r0, asl #2]	@ tmp145, s_pstVfmwChan
	ldr	r5, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r1, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L443	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L443:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	add	r5, r5, #60	@ tmp147, pstInst,
	mov	r6, #0	@ D.38101,
	mov	ip, r5	@ tmp153, tmp147
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	ldr	r0, [r4, #0]	@ tmp150,* pstFspInstCfg
	str	r0, [ip, #0]	@ tmp150, <variable>.stInstCfg
	mov	r0, r6	@, D.38101
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L441:
	mvn	r6, #0	@ D.38101,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, D.38101
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r7, r0	@ InstID, InstID
	bhi	.L467	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp154,
	movt	r6, #:upper16:.LANCHOR0	@ tmp154,
	ldr	sl, [r6, r0, asl #2]	@ D.38000, s_pFspInst
	cmp	sl, #0	@ D.38000,
	beq	.L467	@,
	add	r4, sl, #27648	@ ivtmp.1747, D.38000,
	mov	r5, #0	@ i,
	add	r4, r4, #160	@ ivtmp.1747, ivtmp.1747,
	mov	r8, r6	@ tmp155, tmp154
	b	.L454	@
.L452:
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.39837
.L451:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L450	@,
	ldr	r3, [r6, #28]	@ D.39842, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1752, <variable>.PhyAddr
	cmp	r3, #0	@ D.39842,
	beq	.L468	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.39842
.L450:
	ldr	r1, [r4, #52]	@ D.38004, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp157, i,
	add	r4, r4, #52	@ tmp158, ivtmp.1747,
	cmp	r1, #0	@ D.38004,
	beq	.L457	@,
	ldr	r2, [r6, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L457	@,
	ldrsb	ip, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L458	@,
	ldr	r3, [r8, #32]	@ D.39837, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.39837,
	beq	.L465	@,
	mov	r0, r7	@, InstID
	mov	r2, #0	@,
	blx	r3	@ D.39837
.L458:
	ldrsb	lr, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L457	@,
	ldr	r3, [r6, #28]	@ D.39842, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1752, <variable>.PhyAddr
	cmp	r3, #0	@ D.39842,
	beq	.L464	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.39842
.L457:
	add	r5, r5, #1	@ i, tmp157,
	add	r4, r4, #52	@ ivtmp.1747, tmp158,
	cmp	r5, #64	@ i,
	beq	.L469	@,
.L454:
	ldr	r1, [r4, #0]	@ D.38004, <variable>.PhyAddr
	cmp	r1, #0	@ D.38004,
	beq	.L450	@,
	ldr	r3, [r6, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L450	@,
	ldrsb	r0, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	beq	.L451	@,
	ldr	r3, [r8, #32]	@ D.39837, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.39837,
	bne	.L452	@,
	bl	vfmw_dprint_nothing	@
	b	.L451	@
.L469:
	mov	r0, sl	@, D.38000
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.37998,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L468:
	bl	vfmw_dprint_nothing	@
	b	.L450	@
.L465:
	bl	vfmw_dprint_nothing	@
	b	.L458	@
.L464:
	bl	vfmw_dprint_nothing	@
	b	.L457	@
.L467:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37998,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
	.fnstart
.LFB1923:
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
.LFB1946:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ InstID, InstID
	.pad #68
	sub	sp, sp, #68	@,,
	mov	r6, r1	@ NeedPhyFs, NeedPhyFs
	bhi	.L586	@,
	movw	sl, #:lower16:.LANCHOR0	@ tmp721,
	movt	sl, #:upper16:.LANCHOR0	@ tmp721,
	ldr	r3, [sl, r0, asl #2]	@ tmp207, s_pFspInst
	cmp	r3, #0	@ tmp207,
	beq	.L586	@,
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp718,
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp718,
	add	r0, sl, #36	@, tmp721,
	mov	r8, #0	@ i.1895,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r7, r5, asl #2]	@ pretmp.1793, s_pstVfmwChan
	ldr	r4, [sl, r5, asl #2]	@ pstInst, s_pFspInst
	add	r1, r2, #216064	@ ivtmp.1867, pretmp.1793,
	ldr	r0, [r2, #1580]	@ pretmp.1795, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1867, ivtmp.1867,
	mov	r3, r4	@ ivtmp.1912, pstInst
	b	.L480	@
.L476:
	ldrsb	lr, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L477	@,
	ldrsb	lr, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	lr, #0	@ <variable>.s32DispState,
	beq	.L575	@,
.L477:
	add	r8, r8, #1	@ i.1895, i.1895,
	cmp	r0, #1	@ pretmp.1795,
	mov	r3, r8	@ tmp750, i.1895
	beq	.L588	@,
.L553:
	ldrsb	lr, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L554	@,
	ldrsb	lr, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	lr, #0	@ <variable>.s32DispState,
	beq	.L575	@,
.L554:
	add	r8, r3, #1	@ i.1895, tmp750,
	add	r1, ip, #16	@ ivtmp.1867, tmp752,
	cmp	r8, #64	@ i.1895,
	add	r3, r2, #432	@ ivtmp.1912, tmp751,
	beq	.L478	@,
.L480:
	cmp	r0, #1	@ pretmp.1795,
	add	r2, r3, #432	@ tmp751, ivtmp.1912,
	add	ip, r1, #16	@ tmp752, ivtmp.1867,
	bne	.L476	@,
	ldr	lr, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #0	@ <variable>.eFrameState,
	beq	.L476	@,
	add	r8, r8, #1	@ i.1895, i.1895,
	cmp	r0, #1	@ pretmp.1795,
	mov	r3, r8	@ tmp750, i.1895
	bne	.L553	@,
.L588:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L553	@,
	add	r8, r3, #1	@ i.1895, tmp750,
	add	r1, ip, #16	@ ivtmp.1867, tmp752,
	cmp	r8, #64	@ i.1895,
	add	r3, r2, #432	@ ivtmp.1912, tmp751,
	bne	.L480	@,
.L478:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L600	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39046,
	b	.L474	@
.L575:
	mov	r1, #432	@ tmp218,
	mul	r3, r1, r8	@ tmp217, tmp218, i.1895
	add	ip, r3, #96	@ tmp231, tmp217,
	add	r3, r3, r4	@ tmp219, tmp217, pstInst
	add	r0, r4, ip	@ tmp232, pstInst, tmp231
	add	r1, r3, #96	@ tmp220, tmp219,
	cmp	r0, #0	@ tmp232,
	strb	r8, [r1, #3]	@ i.1895, <variable>.s32LogicFsID
	strb	lr, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L478	@,
	add	ip, r3, #504	@ tmp239, tmp219,
	add	r0, r3, #512	@ tmp251, tmp219,
	cmp	r6, #0	@ NeedPhyFs,
	str	lr, [r3, #504]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	lr, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	lr, [r3, #512]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	lr, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	bne	.L589	@,
	add	r6, r4, #27648	@ D.39073, pstInst,
	mov	r2, #34560	@ tmp285,
	add	lr, r6, #96	@ D.39073, D.39073,
	str	lr, [r3, #512]	@ D.39073, <variable>.pstTfOutFs
	str	lr, [ip, #4]	@ D.39073, <variable>.pstDispOutFs
	mov	sl, #1	@ tmp301,
	str	lr, [r3, #504]	@ D.39073, <variable>.pstDecodeFs
	ldr	fp, [r4, r2]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	fp, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r9, [r4, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	sl, [r1, #2]	@ tmp301, <variable>.IsDummyFs
	sub	r6, r9, #1	@ tmp294, <variable>.s32PmvNum,
	strb	r6, [r1, #4]	@ tmp294, <variable>.PmvIdc
.L484:
	mov	sl, #432	@ tmp470,
	mov	r2, #1	@ tmp473,
	mul	r8, sl, r8	@ tmp469, tmp470, i.1895
	mov	r1, #392	@,
	add	r6, r8, r4	@ tmp471, tmp469, pstInst
	add	r9, r8, #104	@ tmp531, tmp469,
	add	r3, r6, #504	@ tmp479, tmp471,
	add	r8, r6, #96	@ tmp472, tmp471,
	add	fp, r6, #152	@, tmp471,
	add	r0, r4, r9	@, pstInst, tmp531
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	ip, r6, #136	@ tmp578, tmp471,
	strb	r2, [r8, #1]	@ tmp473, <variable>.s32DispState
	add	r9, r6, #208	@ tmp566, tmp471,
	str	fp, [sp, #16]	@, %sfp
	add	fp, r6, #216	@, tmp471,
	str	fp, [sp, #12]	@, %sfp
	add	sl, r6, #224	@ tmp619, tmp471,
	strb	r2, [lr, #2]	@ tmp473, <variable>.DispState
	add	lr, r6, #144	@, tmp471,
	str	lr, [sp, #20]	@, %sfp
	str	r2, [r6, #500]	@ tmp473, <variable>.eLfsPmvState
	ldr	fp, [r6, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r2, [r4, #36]	@ D.39150, <variable>.u32InstTick
	str	r2, [r6, #496]	@ D.39150, <variable>.u32Tick
	str	r2, [fp, #44]	@ D.39150, <variable>.u32Tick
	ldr	lr, [r3, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	fp, [r6, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	str	fp, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r2, [r4, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	fp, r2, #1	@ tmp513, <variable>.u32InstTick,
	str	fp, [r4, #36]	@ tmp513, <variable>.u32InstTick
	ldr	lr, [r6, #512]	@ pstTfFs, <variable>.pstTfOutFs
	ldr	r4, [r3, #4]	@ pstDispFs, <variable>.pstDispOutFs
	ldr	fp, [r6, #504]	@ pstDecFs, <variable>.pstDecodeFs
	str	lr, [sp, #4]	@,
	str	ip, [sp, #8]	@,
	bl	__memzero	@
	ldrsb	ip, [r8, #3]	@ <variable>.s32LogicFsID, <variable>.s32LogicFsID
	str	ip, [r6, #280]	@ <variable>.s32LogicFsID, <variable>.stDispImg.image_id
	ldr	r2, [fp, #24]	@ <variable>.FsWidth, <variable>.FsWidth
	str	r2, [r6, #248]	@ <variable>.FsWidth, <variable>.stDispImg.image_width
	ldr	r3, [fp, #28]	@ <variable>.FsHeight, <variable>.FsHeight
	str	r3, [r6, #252]	@ <variable>.FsHeight, <variable>.stDispImg.image_height
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	str	r0, [r6, #276]	@ <variable>.Stride, <variable>.stDispImg.image_stride
	ldr	ip, [fp, #12]	@ D.39166, <variable>.PhyAddr
	str	ip, [r6, #208]	@ D.39166, <variable>.stDispImg.luma_phy_addr
	mov	r0, ip	@, D.39166
	ldr	r1, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r2, r1, ip	@ tmp573, <variable>.ChromOffset, D.39166
	str	r2, [r9, #4]	@ tmp573, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [sp, #8]	@,
	str	r0, [r3, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	ip, [r4, #12]	@ D.39179, <variable>.PhyAddr
	str	ip, [r6, #192]	@ D.39179, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, ip, r1	@ D.39182, D.39179, <variable>.ChromOffset
	str	r3, [r6, #196]	@ D.39182, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r0, ip	@ tmp607, <variable>.Stride, D.39179
	str	r2, [r6, #200]	@ tmp607, <variable>.stDispImg.btm_luma_phy_addr
	ldr	ip, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, r3, ip	@ tmp614, D.39182, <variable>.Stride
	str	r0, [r6, #204]	@ tmp614, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ temp.1899, <variable>.PhyAddr
	str	r2, [r6, #224]	@ temp.1899, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r2	@, temp.1899
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r1, r2	@ tmp626, <variable>.ChromOffset, temp.1899
	str	ip, [sl, #4]	@ tmp626, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [sp, #16]	@, %sfp
	str	r0, [r3, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [sp, #4]	@,
	ldr	ip, [r0, #12]	@ D.39197, <variable>.PhyAddr
	str	ip, [r6, #216]	@ D.39197, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, ip	@, D.39197
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r2, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r2, ip	@ tmp654, <variable>.ChromOffset, D.39197
	str	r3, [r1, #4]	@ tmp654, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r6, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r0, [r2, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	lr, [sp, #20]	@, %sfp
	add	r1, r6, #464	@ tmp675, tmp471,
	add	ip, r6, #472	@ tmp693, tmp471,
	mov	r3, #0	@ tmp682,
	movw	r2, #:lower16:217508	@ tmp708,
	movt	r2, #:upper16:217508	@ tmp708,
	str	r0, [lr, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, [fp, #48]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r3, [ip, #4]	@ tmp682, <variable>.stDispImg.u32Circumrotate
	str	r3, [r1, #4]	@ tmp682, <variable>.stDispImg.u32Is1D
	str	r0, [r6, #464]	@ <variable>.ImgSize, <variable>.stDispImg.ImgSize
	str	r3, [r6, #480]	@ tmp682, <variable>.stDispImg.u32IsLastFrame
	str	r3, [r6, #472]	@ tmp682, <variable>.stDispImg.is_processed_by_dnr
	ldr	ip, [r7, r5, asl #2]	@ tmp707, s_pstVfmwChan
	ldr	r0, .L600	@,
	ldr	r1, [ip, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	str	r1, [r6, #488]	@ <variable>.u32ChanTick, <variable>.stDispImg.u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r8, #3]	@ D.39046, <variable>.s32LogicFsID
.L474:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L589:
	ldrsb	r6, [r4, #10]	@ temp.1910, <variable>.s32DecFsNum
	cmp	r6, #0	@ temp.1910,
	movle	r6, lr	@ prephitmp.1798, <variable>.s32DispState
	ble	.L483	@,
	ldr	r2, [r7, r5, asl #2]	@ pretmp.1805, s_pstVfmwChan
	add	r0, r4, #27648	@ ivtmp.1852, pstInst,
	add	r3, r0, #150	@ ivtmp.1852, ivtmp.1852,
	sub	ip, r6, #1	@ tmp744, temp.1910,
	add	r1, r2, #216064	@ ivtmp.1855, pretmp.1805,
	and	ip, ip, #1	@ tmp746, tmp744,
	ldr	r0, [r2, #1580]	@ pretmp.1807, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1855, ivtmp.1855,
	cmp	r0, #1	@ pretmp.1807,
	beq	.L590	@,
.L543:
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L591	@,
.L544:
	mov	lr, #1	@ i.1896,
	cmp	lr, r6	@ i.1896, temp.1910
	add	r3, r3, #52	@ ivtmp.1852, ivtmp.1852,
	add	r1, r1, #16	@ ivtmp.1855, ivtmp.1855,
	bge	.L573	@,
	cmp	ip, #0	@ tmp746,
	beq	.L487	@,
	cmp	r0, lr	@ pretmp.1807,
	beq	.L574	@,
.L546:
	ldrsb	ip, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L547	@,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L572	@,
.L547:
	add	lr, lr, #1	@ i.1896, i.1896,
	add	r3, r3, #52	@ ivtmp.1852, ivtmp.1852,
	cmp	lr, r6	@ i.1896, temp.1910
	add	r1, r1, #16	@ ivtmp.1855, ivtmp.1855,
	blt	.L487	@,
.L573:
	mov	ip, #432	@ tmp321,
	mla	r3, ip, r8, r4	@ tmp322, tmp321, i.1895, pstInst
	ldr	r6, [r3, #504]	@ prephitmp.1798, <variable>.pstDecodeFs
.L483:
	cmp	r6, #0	@ prephitmp.1798,
	beq	.L592	@,
.L488:
	mov	ip, #432	@ tmp340,
	add	r3, r4, #34304	@ tmp343, pstInst,
	mla	r0, ip, r8, r4	@ tmp341, tmp340, i.1895, pstInst
	add	lr, r3, #148	@ tmp343, tmp343,
	str	lr, [r0, #512]	@ tmp343, <variable>.pstTfOutFs
	ldrsb	ip, [r4, #13]	@ temp.1877, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.1877,
	ble	.L497	@,
	ldrsb	r3, [r4, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.39110, temp.1877
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.1801, <variable>.IsPmvInUse
	beq	.L499	@,
	tst	ip, #1	@ temp.1877,
	mov	r2, r4	@ ivtmp.1866, pstInst
	mov	r3, #0	@ i.1878,
	bne	.L500	@,
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ D.39105, <variable>.IsPmvInUse
	mov	r3, #1	@ i.1878,
	add	r2, r4, r3	@ ivtmp.1866, pstInst,
	cmp	r1, #0	@ D.39105,
	bne	.L500	@,
.L569:
	uxtb	r1, r3	@ prephitmp.1801, i.1878
.L499:
	mov	r6, #432	@ tmp349,
	add	ip, r3, #8640	@ tmp358, i.1878,
	mla	r2, r6, r8, r4	@ tmp350, tmp349, i.1895, pstInst
	movw	r0, #34556	@ tmp365,
	strb	r1, [r2, #100]	@ prephitmp.1801, <variable>.PmvIdc
	ldr	lr, [r4, ip, asl #2]	@ tmp359, <variable>.PmvAddr
	str	lr, [r2, #516]	@ tmp359, <variable>.PmvAddr
	ldr	r1, [r4, r0]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r2, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r4, #13]	@ D.39110, <variable>.s32PmvNum
	cmp	lr, r3	@ D.39110, i.1878
	ble	.L501	@,
.L497:
	ldrsb	r0, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L505	@,
.L595:
	ldrsb	r9, [r4, #11]	@ D.39128, <variable>.s32DispFsNum
	cmp	r9, #0	@ D.39128,
	ble	.L584	@,
	add	ip, r4, #30976	@ tmp396, pstInst,
	cmn	ip, #148	@ tmp396,
	beq	.L508	@,
	movw	r1, #31124	@ tmp397,
	ldr	r6, [r4, r1]	@ tmp399,
	bic	lr, r6, #-16777216	@ tmp398, tmp399,
	cmp	lr, #0	@ tmp398,
	beq	.L508	@,
	tst	r9, #1	@ D.39128,
	add	r3, ip, #200	@ ivtmp.1825, tmp396,
	mov	r2, #0	@ i,
	mov	lr, #52	@ tmp722,
	bne	.L512	@,
	cmp	r3, #0	@ ivtmp.1825,
	mov	r2, #1	@ i,
	mov	r1, r2	@ i.1874, i
	beq	.L511	@,
	add	r0, lr, r4	@ tmp774, tmp722, pstInst
	add	r3, ip, #252	@ ivtmp.1825, tmp396,
	add	r6, r0, #30976	@ tmp775, tmp774,
	add	ip, r6, #144	@ tmp775, tmp775,
	ldr	r0, [ip, #4]	@ tmp776,
	bic	r6, r0, #-16777216	@ tmp777, tmp776,
	cmp	r6, #0	@ tmp777,
	bne	.L512	@,
.L511:
	mov	r3, #432	@ tmp425,
	mov	r2, #52	@ tmp419,
	mla	lr, r3, r8, r4	@ tmp426, tmp425, i.1895, pstInst
	mla	r1, r2, r1, r4	@ tmp422, tmp419, i.1874, pstInst
	add	r6, r1, #30976	@ prephitmp.1871, tmp422,
	add	r6, r6, #148	@ prephitmp.1871, prephitmp.1871,
	str	r6, [lr, #508]	@ prephitmp.1871, <variable>.pstDispOutFs
	b	.L507	@
.L599:
	ldr	r9, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r9, #0	@ <variable>.eFrameState,
	bne	.L486	@,
.L485:
	ldrsb	r9, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r9, #0	@ <variable>.IsDecRef,
	bne	.L486	@,
	ldrsb	r3, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L572	@,
.L486:
	add	lr, lr, #1	@ i.1896, i.1896,
	cmp	r0, #1	@ pretmp.1807,
	mov	r3, lr	@ tmp747, i.1896
	beq	.L593	@,
.L550:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L551	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L572	@,
.L551:
	add	lr, r3, #1	@ i.1896, tmp747,
	add	r1, ip, #16	@ ivtmp.1855, tmp749,
	cmp	lr, r6	@ i.1896, temp.1910
	add	r3, r2, #52	@ ivtmp.1852, tmp748,
	bge	.L573	@,
.L487:
	cmp	r0, #1	@ pretmp.1807,
	add	r2, r3, #52	@ tmp748, ivtmp.1852,
	add	ip, r1, #16	@ tmp749, ivtmp.1855,
	bne	.L485	@,
	b	.L599	@
.L502:
	ldrb	r6, [r2, #15]	@ zero_extendqisi2	@ D.39105, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.1866, tmp738,
	cmp	r6, #0	@ D.39105,
	beq	.L569	@,
	ldrb	r0, [r1, #15]	@ zero_extendqisi2	@ D.39105, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.1878, i.1878,
	cmp	r0, #0	@ D.39105,
	beq	.L569	@,
.L500:
	add	r3, r3, #1	@ i.1878, i.1878,
	add	r1, r2, #1	@ tmp738, ivtmp.1866,
	cmp	r3, ip	@ i.1878, temp.1877
	blt	.L502	@,
.L501:
	cmp	lr, #0	@ D.39110,
	ble	.L503	@,
	ldrsb	ip, [r4, #13]	@ temp.1881, <variable>.s32PmvNum
	mov	r2, #1	@ i.1882,
	mov	r0, #0	@ tmp723,
	strb	r0, [r4, #14]	@ tmp723, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.1881,
	sub	r3, ip, #1	@ tmp729, temp.1881,
	and	r1, r3, r2	@ tmp731, tmp729,
	add	r3, r4, r2	@ ivtmp.1885, pstInst,
	ble	.L503	@,
	cmp	r1, #0	@ tmp731,
	beq	.L504	@,
	mov	r2, #2	@ i.1882,
	cmp	ip, r2	@ temp.1881, i.1882
	strb	r0, [r3, #14]	@ tmp723, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1885, ivtmp.1885,
	ble	.L503	@,
.L504:
	add	r2, r2, #2	@ i.1882, i.1882,
	add	r1, r3, #1	@ tmp733, ivtmp.1885,
	cmp	ip, r2	@ temp.1881, i.1882
	strb	r0, [r3, #14]	@ tmp723, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp723, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1885, tmp733,
	bgt	.L504	@,
.L503:
	mov	r3, #432	@ tmp371,
	mov	r6, #34560	@ tmp381,
	mla	r0, r3, r8, r4	@ tmp372, tmp371, i.1895, pstInst
	mov	r1, #0	@ tmp374,
	movw	lr, #34556	@ tmp388,
	add	r2, r0, #96	@ tmp373, tmp372,
	strb	r1, [r2, #4]	@ tmp374, <variable>.PmvIdc
	ldr	ip, [r4, r6]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	ip, [r0, #516]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r2, [r4, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r2, [r0, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L595	@,
.L505:
	mov	r3, #432	@ tmp402,
	mla	r2, r3, r8, r4	@ tmp403, tmp402, i.1895, pstInst
	ldr	ip, [r2, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [r2, #508]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L510:
	ldr	lr, [sl, #16]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r6, #:lower16:.LANCHOR0	@ tmp448,
	movt	r6, #:upper16:.LANCHOR0	@ tmp448,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L484	@,
	ldr	r3, [r6, #24]	@ D.39859, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.39859,
	beq	.L596	@,
	mov	r0, r5	@, InstID
	add	r1, sp, #24	@,,
	blx	r3	@ D.39859
	cmp	r0, #0	@,
	bne	.L516	@,
	ldr	r2, [sp, #24]	@ D.39146, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.39146,
	beq	.L597	@,
	mov	r6, #432	@ tmp458,
	mla	sl, r6, r8, r4	@ tmp459, tmp458, i.1895, pstInst
	ldr	fp, [sl, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [fp, #12]	@ D.39146, <variable>.PhyAddr
	ldr	r9, [sp, #40]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r9, [sl, #516]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
	b	.L484	@
.L513:
	cmp	r3, #0	@ ivtmp.1825,
	add	r0, r0, #30976	@ tmp415, tmp414,
	mla	ip, lr, r2, r4	@ tmp780, tmp722, i, pstInst
	add	r3, r3, #104	@ ivtmp.1825, ivtmp.1825,
	add	r0, r0, #144	@ tmp415, tmp415,
	beq	.L511	@,
	ldr	r0, [r0, #4]	@ tmp417,
	add	ip, ip, #30976	@ tmp781, tmp780,
	add	ip, ip, #144	@ tmp781, tmp781,
	bic	r0, r0, #-16777216	@ tmp416, tmp417,
	cmp	r0, #0	@ tmp416,
	beq	.L511	@,
	cmp	r6, #0	@ tmp727,
	mov	r1, r2	@ i.1874, i
	beq	.L511	@,
	ldr	r6, [ip, #4]	@ tmp782,
	bic	ip, r6, #-16777216	@ tmp783, tmp782,
	cmp	ip, #0	@ tmp783,
	beq	.L511	@,
.L512:
	add	r1, r2, #1	@ tmp728, i,
	add	r6, r3, #52	@ tmp727, ivtmp.1825,
	cmp	r9, r1	@ D.39128, tmp728
	add	r2, r1, #1	@ i, i.1874,
	mla	r0, lr, r1, r4	@ tmp414, tmp722, i.1874, pstInst
	bgt	.L513	@,
.L584:
	mov	ip, #432	@ tmp430,
	mla	r0, ip, r8, r4	@ tmp431, tmp430, i.1895, pstInst
	ldr	r6, [r0, #508]	@ prephitmp.1871, <variable>.pstDispOutFs
.L507:
	cmp	r6, #0	@ prephitmp.1871,
	bne	.L510	@,
	bl	vfmw_dprint_nothing	@
	add	r1, sp, #64	@ tmp436,,
	mov	r0, r5	@, InstID
	add	r2, sp, #52	@,,
	str	r6, [r1, #-4]!	@ prephitmp.1871, RefNum
	add	r3, sp, #56	@,,
	str	r6, [sp, #56]	@ prephitmp.1871, NewNum
	str	r6, [sp, #52]	@ prephitmp.1871, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [sp, #52]	@ ReadNum, ReadNum
	ldr	r2, [sp, #60]	@ RefNum, RefNum
	ldr	r0, [sp, #56]	@ NewNum, NewNum
	add	ip, r2, r3	@ tmp439, RefNum, ReadNum
	ldrsb	r3, [r4, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, ip, #2	@ tmp442, tmp439,
	add	r2, r1, r0	@ tmp443, tmp442, NewNum
	cmp	r2, r3	@ tmp443, <variable>.s32DispFsNum
	bge	.L514	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstID
	bl	FSP_PrintContext	@
.L514:
	ldr	r0, .L600	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39046,
	b	.L474	@
.L593:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L550	@,
	b	.L551	@
.L591:
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L544	@,
.L572:
	mov	r0, #432	@ tmp316,
	mov	r2, #52	@ tmp310,
	mla	ip, r0, r8, r4	@ tmp317, tmp316, i.1895, pstInst
	mla	lr, r2, lr, r4	@ tmp313, tmp310, i.1896, pstInst
	add	r6, lr, #27648	@ prephitmp.1798, tmp313,
	add	r6, r6, #148	@ prephitmp.1798, prephitmp.1798,
	str	r6, [ip, #504]	@ prephitmp.1798, <variable>.pstDecodeFs
	b	.L483	@
.L596:
	bl	vfmw_dprint_nothing	@
.L516:
	ldr	r0, .L600	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39046,
	b	.L474	@
.L590:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L543	@,
	b	.L544	@
.L574:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L546	@,
	b	.L547	@
.L592:
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	ble	.L489	@,
.L490:
	bl	vfmw_dprint_nothing	@
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #1	@ i.1875, i.1875,
	cmp	r2, r6	@ <variable>.s32DecFsNum, i.1875
	bgt	.L490	@,
.L489:
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r4, #10]	@ D.39100, <variable>.s32DecFsNum
	add	r6, r4, #27648	@ pstPhyFs, pstInst,
	cmp	ip, #0	@ D.39100,
	add	r3, r6, #148	@ pstPhyFs, pstPhyFs,
	movle	lr, #0	@ prephitmp.1803,
	ble	.L492	@,
	tst	ip, #1	@ D.39100,
	mov	lr, #0	@ i.1905,
	mov	r0, lr	@ i.1904, i.1905
	mvn	r1, #0	@ LeastTick.1907,
	bne	.L496	@,
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	mov	r0, #1	@ i.1904,
	add	r3, r3, #52	@ pstPhyFs, pstPhyFs,
	cmn	r2, #1	@ LeastTick,
	movcs	r2, r1	@, LeastTick, LeastTick.1907
	mov	r1, r2	@ LeastTick.1907, LeastTick
	b	.L496	@
.L598:
	ldr	r1, [r6, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r1, r2	@ LeastTick, LeastTick
	movcs	r1, r2	@ LeastTick, LeastTick
	movcc	lr, r3	@ i.1905, tmp742
.L571:
	add	r0, r3, #1	@ i.1904, tmp742,
	add	r3, r6, #52	@ pstPhyFs, tmp743,
.L496:
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	add	r6, r3, #52	@ tmp743, pstPhyFs,
	add	r3, r0, #1	@ tmp742, i.1904,
	cmp	r2, r1	@ LeastTick, LeastTick.1907
	movcc	lr, r0	@ i.1905, i.1904
	movcs	r2, r1	@ LeastTick, LeastTick.1907
	cmp	ip, r3	@ D.39100, tmp742
	bgt	.L598	@,
.L492:
	mov	r2, #432	@ tmp329,
	mov	r6, #52	@ tmp333,
	mla	r0, r2, r8, r4	@ tmp330, tmp329, i.1895, pstInst
	mla	ip, r6, lr, r4	@ tmp336, tmp333, prephitmp.1803, pstInst
	add	r3, ip, #27648	@ tmp337, tmp336,
	add	lr, r3, #148	@ tmp337, tmp337,
	str	lr, [r0, #504]	@ tmp337, <variable>.pstDecodeFs
	b	.L488	@
.L597:
	add	r0, r6, #36	@, tmp448,
	bl	OSAL_SpinUnLockIRQ	@
.L586:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39046,
	b	.L474	@
.L508:
	mov	r1, #0	@ i.1874,
	b	.L511	@
.L601:
	.align	2
.L600:
	.word	.LANCHOR0+36
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.type	FSP_NoneDnrSwitchToDnrNormCase, %function
FSP_NoneDnrSwitchToDnrNormCase:
	.fnstart
.LFB1938:
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
	bhi	.L635	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp177,
	movt	r3, #:upper16:.LANCHOR0	@ tmp177,
	movw	lr, #34648	@ tmp178,
	movw	r8, #34652	@ tmp179,
	ldr	r9, [r3, r4, asl #2]	@ pstInst, s_pFspInst
	movw	r6, #34644	@ tmp180,
	movw	r1, #34656	@ tmp181,
	movw	r3, #34640	@ tmp182,
	ldr	ip, [r9, lr]	@, <variable>.MemAddr
	ldrsb	sl, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	str	ip, [sp, #24]	@, %sfp
	cmp	sl, #0	@ <variable>.s32DecFsNum,
	ldr	r7, [r9, r8]	@, <variable>.MemSize
	movwle	r5, #:lower16:s_pstVfmwChan	@ tmp320,
	movtle	r5, #:upper16:s_pstVfmwChan	@ tmp320,
	str	r7, [sp, #44]	@, %sfp
	ldr	r2, [r9, r6]	@, <variable>.TotalMemUsed
	str	r2, [sp, #36]	@, %sfp
	ldr	r0, [r9, r1]	@, <variable>.StrideByte
	str	r0, [sp, #32]	@, %sfp
	ldr	r6, [r9, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	ble	.L605	@,
	add	r5, r9, #27648	@ ivtmp.1962, pstInst,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp326,
	add	r8, r5, #160	@ ivtmp.1962, ivtmp.1962,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp326,
	mov	r7, #0	@ i,
	mov	fp, #1	@ tmp327,
	b	.L609	@
.L656:
	ldr	r2, [sl, r4, asl #2]	@ tmp187, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	ip, r1, r2	@ tmp190, tmp189, tmp187
	add	lr, ip, #216064	@ tmp191, tmp190,
	add	r2, lr, #360	@ tmp191, tmp191,
	str	r0, [r2, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	ip, [sl, r4, asl #2]	@ tmp194, s_pstVfmwChan
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1962, ivtmp.1962,
	add	lr, r1, ip	@ tmp197, tmp189, tmp194
	add	ip, lr, #216064	@ tmp198, tmp197,
	add	r1, ip, #360	@ tmp198, tmp198,
	str	r2, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, r4, asl #2]	@ tmp201, s_pstVfmwChan
	str	r6, [lr, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [sl, r4, asl #2]	@ tmp205, s_pstVfmwChan
	add	r1, ip, r3, asl #4	@, tmp210, tmp205, tmp202,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	ble	.L605	@,
.L609:
	ldr	r1, [r8, #0]	@, <variable>.PhyAddr
	mov	r2, r6	@, s32ImgSize
	mov	r0, r4	@, InstID
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp320,
	bl	DNR_FsIsInImgQue	@
	add	r2, r7, #13504	@ tmp202, i,
	mov	r1, r7, asl #4	@ tmp189, i,
	add	r3, r2, #23	@ tmp202, tmp202,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp320,
	mov	ip, r1	@ tmp216, tmp189
	mov	r2, r3	@ tmp229, tmp202
	cmp	r0, #0	@ s32UsingCount
	beq	.L656	@,
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp320,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp320,
	ble	.L635	@,
	ldr	r3, [sl, r4, asl #2]	@ tmp214, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	r1, r1, r3	@ tmp217, tmp216, tmp214
	add	lr, r1, #216064	@ tmp218, tmp217,
	add	r3, lr, #360	@ tmp218, tmp218,
	str	fp, [r3, #0]	@ tmp327, <variable>.eFrameState
	ldr	r1, [sl, r4, asl #2]	@ tmp221, s_pstVfmwChan
	ldr	r3, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1962, ivtmp.1962,
	add	lr, ip, r1	@ tmp224, tmp216, tmp221
	add	r1, lr, #216064	@ tmp225, tmp224,
	add	ip, r1, #360	@ tmp225, tmp225,
	str	r3, [ip, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, r4, asl #2]	@ tmp228, s_pstVfmwChan
	str	r6, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r3, [sl, r4, asl #2]	@ tmp232, s_pstVfmwChan
	add	r1, r3, r2, asl #4	@, tmp237, tmp232, tmp229,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	bgt	.L609	@,
.L605:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp241,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp241,
	ldr	r7, [r5, r4, asl #2]	@ temp.1973, s_pstVfmwChan
	ldr	ip, [r8, #36]	@ D.38459, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38459,
	ldr	r1, [r7, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r7, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r7, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L610	@,
	str	r1, [sp, #4]	@ s32DnrNum,
	mov	sl, #0	@ tmp242,
	mvn	r0, #0	@ tmp244,
	add	r1, sp, #48	@ tmp246,,
	str	r0, [sp, #12]	@ tmp244,
	mov	lr, #64	@ tmp247,
	str	r1, [sp, #16]	@ tmp246,
	mov	r0, #1	@,
	str	sl, [sp, #8]	@ tmp242,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp247,
	str	sl, [sp, #0]	@ tmp242,
	blx	ip	@ D.38459
	cmp	r0, #0	@,
	beq	.L611	@,
.L610:
	bl	vfmw_dprint_nothing	@
.L611:
	ldr	r7, [r5, r4, asl #2]	@ tmp249, s_pstVfmwChan
	ldr	ip, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	sl, [sp, #32]	@, %sfp
	ldr	r0, [sp, #36]	@, %sfp
	ldr	r8, [sp, #24]	@, %sfp
	str	ip, [r7, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	add	r3, r0, sl	@ tmp252,,
	ldr	sl, [sp, #28]	@, %sfp
	add	r3, r3, r8	@ D.38465, tmp252,
	ldr	r7, [r5, r4, asl #2]	@ temp.1975, s_pstVfmwChan
	ldr	r2, [sl, #0]	@ D.38464, <variable>.FrameAddr
	ldr	r8, [r7, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	cmp	r2, r3	@ D.38464, D.38465
	rsbgt	r2, r3, r2	@ s32FreeSize, D.38465, D.38464
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, s32DnrSize
	bge	.L655	@,
	ldr	fp, [sp, #40]	@, %sfp
	cmp	fp, #0	@,
	beq	.L615	@,
	ble	.L616	@,
	sub	r2, fp, #1	@ tmp253,,
	ldr	ip, [sp, #28]	@, %sfp
	add	r1, ip, r2, asl #3	@, D.38479,, tmp253,
	ldr	lr, [ip, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [r1, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r1, lr	@ prephitmp.1937, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r3, r2	@ D.38465, prephitmp.1937
	bgt	.L615	@,
.L617:
	ldr	fp, [sp, #44]	@, %sfp
	ldr	ip, [sp, #24]	@, %sfp
	add	r3, fp, ip	@ tmp262,,
	rsb	r1, r2, r3	@ tmp263, prephitmp.1937, tmp262
	cmp	r8, r1	@ s32DnrSize, tmp263
	strle	r2, [r7, #236]	@ prephitmp.1937, <variable>.s32OffLineDnrMemAddr
	movle	r0, #0	@ D.38439,
	ble	.L604	@,
.L618:
	cmp	r6, r8	@ s32ImgSize, s32DnrSize
	movge	r0, #1	@,
	strge	r0, [sp, #24]	@, %sfp
	blt	.L657	@,
.L620:
	ldrsb	r8, [r9, #10]	@ temp.1980, <variable>.s32DecFsNum
	cmp	r8, #0	@ temp.1980,
	ble	.L635	@,
	ldr	r1, [sp, #24]	@, %sfp
	cmp	r1, r8	@, temp.1980
	bgt	.L635	@,
	mov	r3, r1	@ s32DnrLockFrmNum.1977,
	mov	r2, #0	@ i.1983,
	cmp	r3, r2	@ s32DnrLockFrmNum.1977, i.1983
	mov	r1, r2	@ j.1987, i.1983
	mov	fp, r3	@ s32DnrLockFrmNum, s32DnrLockFrmNum.1977
	ble	.L658	@,
.L650:
	mov	ip, r2, asl #4	@ tmp319, i.1983,
	add	r0, ip, r7	@ tmp275, tmp319, temp.1975
	add	lr, r0, #216064	@ tmp276, tmp275,
	add	r0, lr, #360	@ tmp276, tmp276,
	ldr	r0, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	bne	.L625	@,
	mvn	lr, r2	@ tmp334, i.1983
	add	r0, lr, r3	@ tmp333, tmp334, s32DnrLockFrmNum.1977
	add	r1, ip, #216064	@ tmp279, tmp319,
	tst	r0, #1	@ tmp333,
	add	lr, r1, #360	@ tmp279, tmp279,
	mov	r1, r2	@ j.1979, i.1983
	add	r0, r7, lr	@ ivtmp.1959, temp.1975, tmp279
	beq	.L626	@,
	ldr	sl, [r0, #16]!	@ temp.1986, <variable>.eFrameState
	add	r1, r2, #1	@ j.1979, i.1983,
	cmp	sl, #0	@ temp.1986,
	beq	.L626	@,
	b	.L625	@
.L628:
	ldr	sl, [r0, #16]!	@ temp.1986, <variable>.eFrameState
	cmp	sl, #0	@ temp.1986,
	bne	.L625	@,
	ldr	sl, [r0, #16]!	@ temp.1986, <variable>.eFrameState
	add	r1, r1, #1	@ j.1979, j.1979,
	cmp	sl, #0	@ temp.1986,
	bne	.L625	@,
.L626:
	add	r1, r1, #1	@ j.1979, j.1979,
	cmp	r3, r1	@ s32DnrLockFrmNum.1977, j.1979
	bgt	.L628	@,
.L624:
	add	lr, ip, r7	@ tmp283, tmp319, temp.1975
	cmp	r3, r2	@ s32DnrLockFrmNum.1977, i.1983
	add	r1, lr, #216064	@ tmp284, tmp283,
	add	ip, r1, #360	@ tmp284, tmp284,
	ldr	r8, [ip, #4]	@ <variable>.s32FrameAddr, <variable>.s32FrameAddr
	str	r8, [r7, #236]	@ <variable>.s32FrameAddr, <variable>.s32OffLineDnrMemAddr
	ble	.L630	@,
	mov	r8, #52	@ tmp287,
	ldr	r7, [r5, r4, asl #2]	@ tmp292, s_pstVfmwChan
	mul	fp, r8, r2	@ tmp286, tmp287, i.1983
	mov	r8, r2, asl #4	@ tmp294, i.1983,
	add	lr, r8, r7	@ tmp295, tmp294, tmp292
	add	r1, r2, #13504	@ tmp306, i.1983,
	add	r0, lr, #216064	@ tmp296, tmp295,
	mvn	lr, r2	@ tmp329, i.1983
	add	ip, fp, #27648	@ tmp288, tmp286,
	add	r0, r0, #360	@ tmp296, tmp296,
	add	sl, ip, #144	@ tmp288, tmp288,
	mov	fp, #2	@,
	add	sl, r9, sl	@ tmp290, pstInst, tmp288
	add	ip, r1, #23	@ tmp306, tmp306,
	add	r1, r2, #1	@ j, i.1983,
	ldr	r7, [sl, #16]	@, <variable>.PhyAddr
	cmp	r3, r1	@ s32DnrLockFrmNum.1977, j
	str	r7, [sp, #32]	@, %sfp
	add	r7, lr, r3	@ tmp328, tmp329, s32DnrLockFrmNum.1977
	str	fp, [r0, #0]	@, <variable>.eFrameState
	and	fp, r7, #1	@ tmp330, tmp328,
	ldr	lr, [r5, r4, asl #2]	@ tmp299, s_pstVfmwChan
	add	r7, sl, #56	@ ivtmp.1953, tmp290,
	add	r0, r8, lr	@ tmp302, tmp294, tmp299
	ldr	lr, [sp, #32]	@, %sfp
	add	r8, r0, #216064	@ tmp303, tmp302,
	add	r0, r8, #360	@ tmp303, tmp303,
	str	lr, [r0, #4]	@, <variable>.s32FrameAddr
	ldr	r8, [r5, r4, asl #2]	@ tmp305, s_pstVfmwChan
	str	r6, [r8, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r8, #0	@,
	ldr	lr, [r5, r4, asl #2]	@ tmp309, s_pstVfmwChan
	add	r0, lr, ip, asl #4	@, tmp314, tmp309, tmp306,
	add	r0, r0, #4	@ tmp315, tmp314,
	str	r8, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L630	@,
	cmp	fp, #0	@ tmp330,
	beq	.L654	@,
	ldr	lr, [r5, r4, asl #2]	@ tmp381, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp383, j,
	ldr	fp, [r7, #12]	@ s32FrameStartAddr.1988, <variable>.PhyAddr
	add	ip, r1, #13504	@ tmp392, j,
	add	r0, r8, lr	@ tmp384, tmp383, tmp381
	add	ip, ip, #23	@ tmp392, tmp392,
	add	r7, r0, #216064	@ tmp385, tmp384,
	add	r1, r1, #1	@ j, j,
	add	lr, r7, #360	@ tmp385, tmp385,
	add	r7, sl, #108	@ ivtmp.1953, tmp290,
	mov	sl, #2	@,
	cmp	r3, r1	@ s32DnrLockFrmNum.1977, j
	str	sl, [lr, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, r4, asl #2]	@ tmp387, s_pstVfmwChan
	add	lr, r8, r0	@ tmp388, tmp383, tmp387
	add	r8, lr, #216064	@ tmp389, tmp388,
	add	r0, r8, #360	@ tmp389, tmp389,
	str	fp, [r0, #4]	@ s32FrameStartAddr.1988, <variable>.s32FrameAddr
	ldr	lr, [r5, r4, asl #2]	@ tmp390, s_pstVfmwChan
	str	r6, [lr, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	fp, [r5, r4, asl #2]	@ tmp393, s_pstVfmwChan
	add	r8, fp, ip, asl #4	@, tmp395, tmp393, tmp392,
	mov	fp, #0	@,
	add	r0, r8, #4	@ tmp396, tmp395,
	str	fp, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L630	@,
.L654:
	str	r2, [sp, #28]	@ i.1983, %sfp
	str	r9, [sp, #32]	@ pstInst, %sfp
.L631:
	ldr	r9, [r5, r4, asl #2]	@ tmp342, s_pstVfmwChan
	mov	sl, r1, asl #4	@ tmp344, j,
	add	r0, r1, #13504	@ tmp353, j,
	add	r1, r1, #1	@ tmp331, j,
	add	lr, sl, r9	@ tmp345, tmp344, tmp342
	add	fp, r1, #13504	@ tmp373, tmp331,
	add	r2, lr, #216064	@ tmp346, tmp345,
	ldr	r8, [r7, #12]	@ s32FrameStartAddr.1988, <variable>.PhyAddr
	add	ip, r2, #360	@ tmp346, tmp346,
	add	r2, fp, #23	@ tmp373, tmp373,
	mov	fp, #2	@,
	add	r0, r0, #23	@ tmp353, tmp353,
	str	fp, [ip, #0]	@, <variable>.eFrameState
	mov	lr, r1, asl #4	@ tmp364, tmp331,
	ldr	r9, [r5, r4, asl #2]	@ tmp348, s_pstVfmwChan
	add	r1, r1, #1	@ j, tmp331,
	cmp	r3, r1	@ s32DnrLockFrmNum.1977, j
	add	ip, sl, r9	@ tmp349, tmp344, tmp348
	add	r9, ip, #216064	@ tmp350, tmp349,
	add	ip, r9, #360	@ tmp350, tmp350,
	str	r8, [ip, #4]	@ s32FrameStartAddr.1988, <variable>.s32FrameAddr
	mov	ip, #0	@,
	ldr	r9, [r5, r4, asl #2]	@ tmp351, s_pstVfmwChan
	str	r6, [r9, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r8, [r5, r4, asl #2]	@ tmp354, s_pstVfmwChan
	add	r9, r8, r0, asl #4	@, tmp356, tmp354, tmp353,
	str	ip, [r9, #4]	@, <variable>.s32UsingCount
	ldr	r8, [r5, r4, asl #2]	@ tmp362, s_pstVfmwChan
	ldr	r9, [r7, #64]	@ s32FrameStartAddr.1988, <variable>.PhyAddr
	add	r7, r7, #104	@ ivtmp.1953, ivtmp.1953,
	add	r0, lr, r8	@ tmp365, tmp364, tmp362
	add	ip, r0, #216064	@ tmp366, tmp365,
	add	r8, ip, #360	@ tmp366, tmp366,
	str	fp, [r8, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, r4, asl #2]	@ tmp368, s_pstVfmwChan
	add	ip, lr, r0	@ tmp369, tmp364, tmp368
	add	r8, ip, #216064	@ tmp370, tmp369,
	add	lr, r8, #360	@ tmp370, tmp370,
	str	r9, [lr, #4]	@ s32FrameStartAddr.1988, <variable>.s32FrameAddr
	ldr	r0, [r5, r4, asl #2]	@ tmp371, s_pstVfmwChan
	str	r6, [r0, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r0, #0	@,
	ldr	ip, [r5, r4, asl #2]	@ tmp374, s_pstVfmwChan
	add	r9, ip, r2, asl #4	@, tmp376, tmp374, tmp373,
	str	r0, [r9, #4]	@, <variable>.s32UsingCount
	bgt	.L631	@,
	ldr	r2, [sp, #28]	@ i.1983, %sfp
	ldr	r9, [sp, #32]	@ pstInst, %sfp
.L630:
	ldrsb	r8, [r9, #10]	@ temp.1980, <variable>.s32DecFsNum
	cmp	r8, r2	@ temp.1980, i.1983
	ble	.L635	@,
	ldr	sl, [sp, #24]	@, %sfp
	add	r3, sl, r2	@ s32DnrLockFrmNum,, i.1983
.L632:
	cmp	r3, r8	@ s32DnrLockFrmNum, temp.1980
	movle	r0, #0	@ D.38439,
	ble	.L604	@,
.L635:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38439,
	b	.L604	@
.L615:
	ldr	r0, [sp, #44]	@, %sfp
	ldr	r1, [sp, #24]	@, %sfp
	add	r2, r0, r1	@ tmp257,,
	rsb	lr, r3, r2	@ tmp258, D.38465, tmp257
	cmp	r8, lr	@ s32DnrSize, tmp258
	bgt	.L618	@,
.L655:
	mov	r0, #0	@ D.38439,
	str	r3, [r7, #236]	@ D.38465, <variable>.s32OffLineDnrMemAddr
.L604:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L625:
	add	r2, r1, #1	@ i.1983, j.1987,
	cmp	r8, r2	@ temp.1980, i.1983
	ble	.L635	@,
	add	r3, r2, fp	@ s32DnrLockFrmNum.1977, i.1983, s32DnrLockFrmNum
	mov	r1, r2	@ j.1987, i.1983
	cmp	r8, r3	@ temp.1980, s32DnrLockFrmNum.1977
	blt	.L632	@,
	cmp	r3, r2	@ s32DnrLockFrmNum.1977, i.1983
	bgt	.L650	@,
.L658:
	mov	ip, r2, asl #4	@ tmp319, i.1983,
	b	.L624	@
.L657:
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
	b	.L620	@
.L616:
	ldr	sl, [sp, #40]	@, %sfp
	sub	lr, sl, #1	@ pretmp.1976,,
	ldr	sl, [sp, #28]	@, %sfp
	add	ip, sl, lr, asl #3	@, pretmp.1934,, pretmp.1976,
	ldr	r3, [sl, lr, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	fp, [ip, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, fp, r3	@ prephitmp.1937, <variable>.FrameSize, <variable>.FrameAddr
	b	.L617	@
	.fnend
	.size	FSP_NoneDnrSwitchToDnrNormCase, .-FSP_NoneDnrSwitchToDnrNormCase
	.align	2
	.type	FSP_NoneDnrSwitchToDnr, %function
FSP_NoneDnrSwitchToDnr:
	.fnstart
.LFB1940:
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #3	@ InstID,
	.pad #520
	sub	sp, sp, #520	@,,
	mov	r1, #0	@ tmp148,
	mov	r5, r0	@ InstID, InstID
	str	r1, [sp, #516]	@ tmp148, s32UsingNum
	bhi	.L673	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp149,
	movt	r3, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L673	@,
	movw	r2, #34644	@ tmp150,
	add	r4, sp, #4	@ tmp179,,
	ldr	r6, [r3, r2]	@ s32VdhTotalMemUse, <variable>.TotalMemUsed
	mov	ip, #-2147483648	@ tmp180,
	mov	r0, r1	@ tmp181, ivtmp.2028
.L663:
	add	lr, r1, #8	@ tmp182, ivtmp.2028,
	mov	r2, r4	@ tmp156, tmp179
	str	ip, [r2, r1]!	@ tmp180, <variable>.FrameAddr
	add	r1, lr, #8	@ ivtmp.2028, tmp182,
	cmp	r1, #512	@ ivtmp.2028,
	mov	r3, r4	@ tmp187, tmp179
	str	r0, [r2, #4]	@ tmp181, <variable>.FrameSize
	str	ip, [r3, lr]!	@ tmp180, <variable>.FrameAddr
	str	r0, [r3, #4]	@ tmp181, <variable>.FrameSize
	bne	.L663	@,
	mov	r0, r5	@, InstID
	mov	r1, r4	@, tmp179
	add	r2, sp, #516	@,,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L673	@,
	ldr	r0, [sp, #516]	@ s32UsingNum, s32UsingNum
	cmp	r0, #0	@ s32UsingNum,
	ble	.L665	@,
	ldr	r3, [sp, #8]	@ D.38670, <variable>.FrameSize
	cmp	r6, r3	@ s32VdhTotalMemUse, D.38670
	ble	.L666	@,
	mov	r6, r6, asl #1	@ tmp162, s32VdhTotalMemUse,
	movw	lr, #:lower16:1431655766	@ tmp165,
	movt	lr, #:upper16:1431655766	@ tmp165,
	smull	r1, ip, lr, r6	@, tmp164, tmp165, tmp162
	sub	r6, ip, r6, asr #31	@ tmp163, tmp164, tmp162,
	cmp	r3, r6	@ D.38670, tmp163
	blt	.L665	@,
.L666:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstID
	add	r1, sp, #4	@,,
	ldr	r2, [sp, #516]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L673	@,
.L668:
	mov	r0, #0	@ D.38656,
.L661:
	add	sp, sp, #520	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L665:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstID
	mov	r1, r4	@, tmp179
	ldr	r2, [sp, #516]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L668	@,
.L673:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38656,
	b	.L661	@
	.fnend
	.size	FSP_NoneDnrSwitchToDnr, .-FSP_NoneDnrSwitchToDnr
	.align	2
	.type	FSP_EnableDnr, %function
FSP_EnableDnr:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp171,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp171,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r8, r1	@ NeedPartition, NeedPartition
	ldr	r2, [r5, r0, asl #2]	@ D.38248, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ D.38249, <variable>.s32OffLineDnrMemAddr
	ldr	r7, [r2, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r2, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.38249
	str	ip, [sp, #24]	@ D.38249, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	str	r0, [sp, #28]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	ldr	r3, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #32]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L676	@,
	cmp	r8, #1	@ NeedPartition,
	beq	.L685	@,
	mov	r0, r4	@, InstID
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	bne	.L684	@,
.L678:
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
	bne	.L684	@,
.L680:
	ldr	r1, [r5, r4, asl #2]	@ temp.2063, s_pstVfmwChan
	movw	r5, #:lower16:217460	@ tmp162,
	movt	r5, #:upper16:217460	@ tmp162,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp161,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp161,
	ldr	r2, [r1, r5]	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r2, #1	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.38261,
	beq	.L686	@,
.L679:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L676:
	cmp	r8, #1	@ NeedPartition,
	bne	.L680	@,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L680	@,
.L684:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38261,
	b	.L679	@
.L685:
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L678	@,
	b	.L684	@
.L686:
	add	lr, r1, #217088	@, temp.2063,
	mov	r0, r4	@, InstID
	add	r1, lr, #360	@,,
	bl	DNR_ConfigChan	@
	subs	r3, r0, #0	@ D.38280,
	bne	.L684	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp167, s_pstVfmwChan
	mov	r0, r3	@ D.38261, D.38280
	str	r3, [r1, r5]	@ D.38280, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	b	.L679	@
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1942:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r5, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	str	r0, [sp, #28]	@ InstID, %sfp
	add	r0, sp, #48	@,,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #36]	@ UsedMemSize, %sfp
	bl	__memzero	@
	ldr	r0, [sp, #28]	@, %sfp
	cmp	r0, #3	@,
	bhi	.L700	@,
	ldr	r2, [sp, #28]	@, %sfp
	movw	r1, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LANCHOR0	@,
	str	r1, [sp, #32]	@, %sfp
	ldr	r4, [r1, r2, asl #2]	@ D.38772, s_pFspInst
	cmp	r4, #0	@ D.38772,
	beq	.L700	@,
	movw	ip, #34648	@ tmp203,
	movw	r3, #34652	@ tmp204,
	str	r5, [r4, ip]	@ MemPhyAddr, <variable>.MemAddr
	ldr	r0, [sp, #28]	@, %sfp
	str	r7, [r4, r3]	@ MemSize, <variable>.MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L771	@,
.L691:
	ldrsb	r0, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r0, #1	@ <variable>.stInstCfg.s32UserDec,
	beq	.L692	@,
.L700:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38770,
.L689:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L771:
	rsb	r2, r0, r0, asl #3	@, tmp213, eChanCapLevel, eChanCapLevel,
	movw	r3, #:lower16:CapItem	@ tmp210,
	add	r6, r2, #1	@ tmp214, tmp213,
	movt	r3, #:upper16:CapItem	@ tmp210,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [r3, r2, asl #2]	@ tmp223, CapItem
	ldr	lr, [r3, r6, asl #2]	@ tmp222, CapItem
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	r3, ip, lr	@ tmp221, tmp223, tmp222
	mul	lr, r2, r1	@ tmp207, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	lr, r3	@, tmp207, tmp221
	bgt	.L691	@,
.L692:
	ldr	r3, [r4, #92]	@ D.38797, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.38797,
	beq	.L763	@,
	ldr	r2, [r4, #88]	@ D.38799, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.38799,
	bne	.L696	@,
.L763:
	ldrb	r6, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2096, <variable>.stInstCfg.s32DispLoopEnable
.L695:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp232,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp232,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.38804, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r3, #36]	@ D.38809, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38809,
	beq	.L700	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r5	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r7	@, MemSize
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r5, #40	@ tmp236,
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	r7, #64	@ tmp240,
	str	r5, [sp, #4]	@ tmp236,
	add	lr, sp, #48	@ tmp239,,
	ldrsb	r5, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r7, [sp, #20]	@ tmp240,
	ldr	r7, [sp, #28]	@, %sfp
	str	lr, [sp, #16]	@ tmp239,
	str	r5, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	str	r7, [sp, #12]	@,
	blx	ip	@ D.38809
	cmp	r0, #0	@ Ret
	bne	.L700	@,
	ldr	r3, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r2, r6	@ prephitmp.2096, prephitmp.2096
	sxtb	r8, r8	@ D.38804, D.38804
	add	ip, r8, r2, asl #2	@, tmp246, D.38804, prephitmp.2096,
	strb	r3, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	ip, r1	@ tmp246, MemArrange.ValidFrameNum
	bgt	.L700	@,
	ldrsb	r6, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r6, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	bne	.L701	@,
	ldrsb	fp, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	fp, #0	@ <variable>.s8LowBufEnable,
	beq	.L702	@,
	ldr	r9, [sp, #28]	@, %sfp
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp254,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp254,
	ldr	r7, [r5, r9, asl #2]	@ tmp255, s_pstVfmwChan
	ldr	r0, [r7, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L703	@,
	ldrsb	r2, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r2, #4	@ tmp257, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	r3, r1	@ tmp257, MemArrange.ValidFrameNum
	movlt	ip, r3	@ tmp910, tmp257
	movge	ip, r1	@ tmp910, MemArrange.ValidFrameNum
	strb	ip, [r4, #10]	@ tmp910, <variable>.s32DecFsNum
	b	.L704	@
.L701:
	ldrb	r0, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r0, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L704:
	ldr	r7, [sp, #456]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	r5, r4, #27648	@ ivtmp.2206, D.38772,
	movw	r2, #34640	@ tmp268,
	mov	r0, #0	@ i,
	add	r3, r5, #160	@ ivtmp.2206, ivtmp.2206,
	ldrsb	r6, [r4, #10]	@ D.38842, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp902, tmp268
	add	ip, sp, #48	@ ivtmp.2205,,
	mov	r1, r0	@ tmp901, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L707	@
.L773:
	str	r0, [r2, #-8]	@ tmp907, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp907,
	ldr	r7, [ip, #8]	@ tmp946, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2205, tmp908,
	str	r7, [r3, #52]	@ tmp946, <variable>.PhyAddr
	ldr	r3, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	fp, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	fp, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r3, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	fp, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp901, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp901, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp901, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.2206, tmp909,
	beq	.L772	@,
.L707:
	cmp	r6, r0	@ D.38842, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp901, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp907, i,
	ldrgt	r2, [ip, #8]	@ tmp272, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp908, ivtmp.2205,
	ldrle	r2, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.38842, tmp907
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r2, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r2, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r7, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r7, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r2, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r2, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r7, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r7, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	fp, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp901, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp901, <variable>.IsTfRef
	str	fp, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp901, <variable>.DispState
	ldr	r2, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp909, ivtmp.2206,
	bgt	.L773	@,
	str	r1, [r2, #-8]	@ tmp901, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp907,
	ldr	r7, [sp, #56]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2205, tmp908,
	str	r7, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	fp, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r3, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r3, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	r3, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r3, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r3, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp901, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp901, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.2206, tmp909,
	strb	r1, [r2, #-10]	@ tmp901, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L707	@,
.L772:
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #464	@,,
	movw	r0, #34456	@ tmp305,
	mov	r3, #0	@ tmp306,
	mov	r2, #1	@ tmp303,
	str	r3, [r4, r0]	@ tmp306, <variable>.PhyFsID
	add	ip, r5, r1, asl #2	@, tmp312,, <variable>.s32DecFsNum,
	strb	r2, [r4, #12]	@ tmp303, <variable>.s32TfFsNum
	movw	fp, #34464	@ tmp307,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r0, [ip, #-408]	@ tmp314, MemArrange.FrameAddr
	movw	r2, #34476	@ tmp317,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r0, [r4, fp]	@ tmp314, <variable>.PhyAddr
	movw	fp, #34480	@ tmp319,
	ldr	r0, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r2]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r2, #34472	@ tmp315,
	str	ip, [r4, fp]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	r0, [r4, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	r0, #34484	@ tmp321,
	ldr	fp, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	fp, [r4, r0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	fp, #34488	@ tmp323,
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #34454	@ tmp333,
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	ip, #34452	@ tmp327,
	ldr	fp, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp306, <variable>.DispState
	movw	r0, #34492	@ tmp325,
	strb	r3, [r4, ip]	@ tmp306, <variable>.IsDecRef
	movw	ip, #34453	@ tmp330,
	str	fp, [r4, r0]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r4, ip]	@ tmp306, <variable>.IsTfRef
	bne	.L708	@,
	mov	fp, r2	@ prephitmp.2101, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L710:
	add	r1, r4, #30976	@ tmp339, D.38772,
	mov	r2, #0	@ ivtmp.2171,
	add	r9, r1, #180	@ ivtmp.2183, tmp339,
	add	sl, r1, #152	@ ivtmp.2169, tmp339,
	add	r8, r1, #160	@ ivtmp.2175, tmp339,
	add	r7, r1, #168	@ ivtmp.2177, tmp339,
	add	r6, r1, #172	@ ivtmp.2179, tmp339,
	add	r5, r1, #176	@ ivtmp.2181, tmp339,
	mov	r3, r2	@ i.2270, ivtmp.2171
	mov	r1, r2	@ tmp899, ivtmp.2171
	b	.L709	@
.L775:
	str	r3, [sl, #0]	@ i.2270, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp355, i.2270, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp356, tmp355, <variable>.s32DecFsNum
	add	fp, sp, #464	@,,
	add	r0, fp, r0, asl #2	@, tmp360,, tmp356,
	ldr	r0, [r0, #-408]	@ tmp362, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp362, <variable>.PhyAddr
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
	strb	r1, [ip, #150]	@ tmp899, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp899, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp899, <variable>.IsTfRef
.L712:
	add	r3, r3, #1	@ i.2270, i.2270,
	add	sl, sl, #52	@ ivtmp.2169, ivtmp.2169,
	cmp	r3, #64	@ i.2270,
	add	r2, r2, #52	@ ivtmp.2171, ivtmp.2171,
	add	r8, r8, #52	@ ivtmp.2175, ivtmp.2175,
	add	r7, r7, #52	@ ivtmp.2177, ivtmp.2177,
	add	r6, r6, #52	@ ivtmp.2179, ivtmp.2179,
	add	r5, r5, #52	@ ivtmp.2181, ivtmp.2181,
	add	r9, r9, #52	@ ivtmp.2183, ivtmp.2183,
	beq	.L774	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.2101, <variable>.s32DispFsNum
.L709:
	add	r0, r4, r2	@ D.41612, D.38772, ivtmp.2171
	cmp	fp, r3	@ prephitmp.2101, i.2270
	add	ip, r0, #30976	@ tmp368, D.41612,
	mov	r0, ip	@ tmp400, tmp368
	bgt	.L775	@,
	str	r1, [sl, #0]	@ tmp899, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp388, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #464	@,,
	add	ip, fp, ip, asl #2	@, tmp392,, tmp388,
	ldr	ip, [ip, #-408]	@ tmp394, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp394, <variable>.PhyAddr
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
	strb	r1, [r0, #150]	@ tmp899, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp899, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp899, <variable>.IsTfRef
	b	.L712	@
.L774:
	ldr	r3, [sp, #452]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.2151, D.38772,
	mov	r0, #0	@ tmp898,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	movge	r3, #20	@ tmp417,
	uxtb	r5, r3	@ prephitmp.2271, tmp417
	strb	r5, [r4, #13]	@ prephitmp.2271, <variable>.s32PmvNum
	ldr	ip, [sp, #328]	@ tmp930, MemArrange.PMVAddr
	add	r5, sp, #48	@,,
	mov	r3, #1	@ i.2272,
	strb	r0, [r4, #14]	@ tmp898, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.2157, D.38772,
	str	ip, [r1, #0]	@ tmp930, <variable>.PmvAddr
	add	ip, r5, #4	@ ivtmp.2340,,
	add	r1, r1, #4	@ ivtmp.2151, ivtmp.2151,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2271, <variable>.s32PmvNum
	b	.L717	@
.L776:
	ldr	r5, [ip, #280]	@ tmp934, MemArrange.PMVAddr
	strb	r0, [r2, #14]	@ tmp898, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp934, <variable>.PmvAddr
.L760:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2271, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2272, tmp903,
	add	ip, ip, #4	@ ivtmp.2340, tmp904,
	add	r1, r1, #4	@ ivtmp.2151, tmp905,
	add	r2, r2, #1	@ ivtmp.2157, tmp906,
.L717:
	sxtb	r5, r5	@ prephitmp.2271, prephitmp.2271
	cmp	r5, r3	@ prephitmp.2271, i.2272
	add	r3, r3, #1	@ tmp903, i.2272,
	ldrgt	r5, [ip, #280]	@ tmp421, MemArrange.PMVAddr
	add	ip, ip, #4	@ tmp904, ivtmp.2340,
	ldrle	r5, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp903,
	strb	r0, [r2, #14]	@ tmp898, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp906, ivtmp.2157,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp905, ivtmp.2151,
	beq	.L716	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.2271, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.2271, tmp903
	bgt	.L776	@,
	ldr	r5, [sp, #328]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	r0, [r2, #14]	@ tmp898, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L760	@
.L716:
	movw	ip, #27808	@ tmp432,
	ldr	r5, [sp, #448]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp427,
	movw	r2, #27756	@ tmp431,
	movw	r1, #27748	@ tmp429,
	str	r5, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp430,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r5, #27764	@ tmp434,
	str	r3, [r4, r1]	@ tmp430, <variable>.stDummyPhyFs.PhyFsID
	movw	r0, #27768	@ tmp436,
	ldr	ip, [sp, #48]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r5]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r5, #27772	@ tmp438,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	ip, #27776	@ tmp440,
	str	r2, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r5, [sp, #312]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r0, [r4, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r5, [r4, ip]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	cmp	r1, r0	@ prephitmp.2106, <variable>.stPreInfo.s32PreWidth
	ldr	ip, [sp, #316]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #27780	@ tmp442,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	r0, #27746	@ tmp452,
	ldr	ip, [sp, #320]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp430, <variable>.stDummyPhyFs.DispState
	movw	r0, #27744	@ tmp446,
	strb	r3, [r4, r0]	@ tmp430, <variable>.stDummyPhyFs.IsDecRef
	movw	r0, #27784	@ tmp444,
	str	ip, [r4, r0]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	ip, #27745	@ tmp449,
	strb	r3, [r4, ip]	@ tmp430, <variable>.stDummyPhyFs.IsTfRef
	movw	r3, #34656	@ tmp455,
	ldr	r0, [sp, #460]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	movw	ip, #34644	@ tmp457,
	str	r0, [r4, r3]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	r0, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r4, ip]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	beq	.L777	@,
.L718:
	ldr	r8, [sp, #28]	@, %sfp
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp886,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp886,
	ldr	r3, [r5, r8, asl #2]	@ tmp467, s_pstVfmwChan
	ldr	r8, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L778	@,
.L720:
	movw	r3, #27860	@ tmp873,
	ldrsb	r0, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #27808	@ tmp874,
	ldrsb	r5, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	r3, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #40]	@ prephitmp.2106, <variable>.stPreInfo.s32PreWidth
	rsb	r3, r3, ip	@ tmp877, <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #56]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	str	r2, [r4, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	str	r0, [r4, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r3, [r4, #52]	@ tmp877, <variable>.stPreInfo.s32PreDecSlotLen
.L719:
	ldr	r2, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.38770,
	ldr	r1, [sp, #36]	@, %sfp
	str	r2, [r1, #0]	@ MemArrange.TotalMemUsed,
	b	.L689	@
.L708:
	ldr	ip, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r3, [r4, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	fp, ip, #1	@ tmp346, MemArrange.ValidFrameNum,
	rsb	r0, r1, fp	@ tmp345, <variable>.s32DecFsNum, tmp346
	cmp	r0, #25	@ tmp345,
	movlt	r2, r0	@ tmp914, tmp345
	movge	r2, #25	@ tmp914,
	uxtb	fp, r2	@ prephitmp.2101,
	strb	fp, [r4, #11]	@ tmp12, <variable>.s32DispFsNum
	sxtb	fp, fp	@ prephitmp.2101,
	cmp	r3, fp	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.2101
	ble	.L710	@,
	b	.L700	@
.L696:
	ldrb	r6, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2096, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r6, #0	@ prephitmp.2096,
	beq	.L695	@,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r1	@ D.38797, <variable>.stInstCfg.s32DecFsHeight
	beq	.L779	@,
	mvn	r0, #0	@ D.38770,
	b	.L689	@
.L702:
	ldr	fp, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	fp, #40	@ MemArrange.ValidFrameNum,
	movge	fp, #40	@ tmp263,
	strb	fp, [r4, #10]	@ tmp263, <variable>.s32DecFsNum
	b	.L704	@
.L777:
	ldr	r0, [r4, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r2, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L718	@,
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r3, [r4, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L718	@,
	ldrsb	r0, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r4, #56]	@ <variable>.stPreInfo.s32PreExpectNum, <variable>.stPreInfo.s32PreExpectNum
	cmp	r0, ip	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	bne	.L718	@,
	b	.L719	@
.L778:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	sl, [sp, #28]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r3, [r5, sl, asl #2]	@ temp.2291, s_pstVfmwChan
	ldr	ip, [r0, sl, asl #2]	@ pstInst, s_pFspInst
	movw	sl, #:lower16:.LANCHOR0	@ tmp470,
	movt	sl, #:upper16:.LANCHOR0	@ tmp470,
	ldr	lr, [r3, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r6, [ip, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r1, [ip, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r3, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	cmp	r6, lr	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmple	r1, r2	@, <variable>.stInstCfg.s32DecFsWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movgt	r6, #0	@, tmp482
	movle	r6, #1	@, tmp482
	ble	.L780	@,
	ldr	r7, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r7, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L781	@,
	bl	vfmw_dprint_nothing	@
	ldr	fp, [sp, #28]	@, %sfp
	movw	r1, #34640	@ tmp795,
	ldr	r9, [sl, fp, asl #2]	@ pstInst, s_pFspInst
	ldrsb	ip, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	sl, [r9, r1]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	ip, #0	@ <variable>.s32DecFsNum,
	ble	.L734	@,
	add	fp, r9, #27648	@ ivtmp.2132, pstInst,
	str	r4, [sp, #32]	@ D.38772, %sfp
	add	r7, fp, #160	@ ivtmp.2132, ivtmp.2132,
	ldr	r4, [sp, #28]	@ InstID, %sfp
	mov	fp, r8	@ tmp897, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L742	@
.L782:
	ldr	lr, [r5, r4, asl #2]	@ tmp799, s_pstVfmwChan
	add	r3, ip, lr	@ tmp802, tmp801, tmp799
	add	r1, r3, #216064	@ tmp803, tmp802,
	add	lr, r1, #360	@ tmp803, tmp803,
	str	r0, [lr, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	r3, [r5, r4, asl #2]	@ tmp806, s_pstVfmwChan
	add	r1, ip, r3	@ tmp809, tmp801, tmp806
	add	lr, r1, #216064	@ tmp810, tmp809,
	add	r3, lr, #360	@ tmp810, tmp810,
	str	r8, [r3, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r1, [r5, r4, asl #2]	@ tmp812, s_pstVfmwChan
	str	sl, [r1, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r5, r4, asl #2]	@ tmp816, s_pstVfmwChan
	add	lr, ip, r2, asl #4	@, tmp821, tmp816, tmp813,
	str	r0, [lr, #4]	@ s32UsingCount, <variable>.s32UsingCount
.L740:
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #1	@ i, i,
	add	r7, r7, #52	@ ivtmp.2132, ivtmp.2132,
	cmp	r6, r0	@ i, <variable>.s32DecFsNum
	bge	.L765	@,
.L742:
	ldr	r8, [r7, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	mov	r2, sl	@, s32ImgSize
	mov	r0, r4	@, InstID
	mov	r1, r8	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	add	r3, r6, #13504	@ tmp813, i,
	mov	ip, r6, asl #4	@ tmp801, i,
	add	r2, r3, #23	@ tmp813, tmp813,
	mov	r1, ip	@ tmp827, tmp801
	mov	r3, r2	@ tmp839, tmp813
	cmp	r0, #0	@ s32UsingCount
	beq	.L782	@,
	ble	.L741	@,
	ldr	ip, [r5, r4, asl #2]	@ tmp825, s_pstVfmwChan
	add	lr, r1, ip	@ tmp828, tmp827, tmp825
	add	r2, lr, #216064	@ tmp829, tmp828,
	add	ip, r2, #360	@ tmp829, tmp829,
	str	fp, [ip, #0]	@ tmp897, <variable>.eFrameState
	ldr	lr, [r5, r4, asl #2]	@ tmp832, s_pstVfmwChan
	add	r2, r1, lr	@ tmp835, tmp827, tmp832
	add	ip, r2, #216064	@ tmp836, tmp835,
	add	lr, ip, #360	@ tmp836, tmp836,
	str	r8, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r1, [r5, r4, asl #2]	@ tmp838, s_pstVfmwChan
	str	sl, [r1, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, r4, asl #2]	@ tmp842, s_pstVfmwChan
	add	ip, r2, r3, asl #4	@, tmp847, tmp842, tmp839,
	str	r0, [ip, #4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L740	@
.L780:
	ldr	r3, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L783	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #28]	@, %sfp
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L767	@,
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, r8	@, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret.2309,
	mov	r6, r0	@ s32Ret.2309,
	beq	.L766	@,
	ldr	ip, [sp, #28]	@, %sfp
	movw	r2, #:lower16:s_DnrChan	@ tmp655,
	movw	r1, #:lower16:76696	@ tmp658,
	movt	r2, #:upper16:s_DnrChan	@ tmp655,
	movt	r1, #:upper16:76696	@ tmp658,
	movw	r3, #:lower16:76664	@ tmp663,
	ldr	r0, [r5, ip, asl #2]	@ tmp652, s_pstVfmwChan
	movt	r3, #:upper16:76664	@ tmp663,
	mla	r1, r1, ip, r2	@ tmp659, tmp658,, tmp655
	str	r8, [r0, #1604]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.s32DnrEnable
	ldr	r0, [r5, ip, asl #2]	@ temp.2334, s_pstVfmwChan
	add	lr, r1, #75776	@ tmp660, tmp659,
	add	r2, lr, #880	@ tmp660, tmp660,
	ldr	ip, [r0, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	ip, [r2, #4]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	lr, [r0, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	lr, [r1, r3]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret.2309,
	bne	.L700	@,
.L768:
	ldr	r1, [r4, #72]	@ prephitmp.2106, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	b	.L720	@
.L703:
	ldr	r6, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r6, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	b	.L704	@
.L765:
	ldr	r4, [sp, #32]	@ D.38772, %sfp
.L734:
	ldr	r0, [sp, #28]	@, %sfp
	mov	r1, #0	@,
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret.2332
	bne	.L767	@,
	ldr	lr, [sp, #28]	@, %sfp
	movw	r2, #:lower16:s_DnrChan	@ tmp856,
	movw	r1, #:lower16:76696	@ tmp859,
	movt	r2, #:upper16:s_DnrChan	@ tmp856,
	movt	r1, #:upper16:76696	@ tmp859,
	movw	r3, #:lower16:76664	@ tmp864,
	ldr	ip, [r5, lr, asl #2]	@ tmp853, s_pstVfmwChan
	movt	r3, #:upper16:76664	@ tmp864,
	mla	r1, r1, lr, r2	@ tmp860, tmp859,, tmp856
	str	r0, [ip, #1604]	@ s32Ret.2332, <variable>.stSynExtraData.s32DnrEnable
	ldr	r0, [r5, lr, asl #2]	@ D.41469, s_pstVfmwChan
.L769:
	ldr	ip, [r0, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	add	r2, r1, #75776	@ tmp861, tmp860,
	add	lr, r2, #880	@ tmp861, tmp861,
	str	ip, [lr, #4]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r5, [r0, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r5, [r1, r3]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L768	@
.L781:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #28]	@, %sfp
	movw	r3, #:lower16:s_DnrChan	@ tmp673,
	movw	r1, #:lower16:76696	@ tmp676,
	movt	r3, #:upper16:s_DnrChan	@ tmp673,
	movt	r1, #:upper16:76696	@ tmp676,
	ldr	r8, [sl, r0, asl #2]	@ pstInst, s_pFspInst
	movw	r2, #:lower16:76664	@ tmp680,
	mla	r1, r1, r0, r3	@ tmp677, tmp676,, tmp673
	movt	r2, #:upper16:76664	@ tmp680,
	ldrsb	ip, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	sl, #34640	@ tmp672,
	add	r0, r1, #75776	@ tmp678, tmp677,
	cmp	ip, #0	@ <variable>.s32DecFsNum,
	add	r3, r0, #880	@ tmp678, tmp678,
	ldr	ip, [r8, sl]	@ s32ImgSize, <variable>.ImgSlotLen
	ldr	sl, [r1, r2]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	r0, [r3, #4]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	sl, r0, sl	@ s32DnrEndAddr, s32DnrStartAddr, <variable>.s32OffLineDNRMemSize
	ble	.L734	@,
	add	r9, r8, #27648	@ ivtmp.2127, pstInst,
	mov	r3, r6	@ i, tmp482
	add	r1, r9, #160	@ ivtmp.2127, ivtmp.2127,
	str	r4, [sp, #32]	@ D.38772, %sfp
	ldr	lr, [sp, #28]	@ InstID, %sfp
	b	.L738	@
.L784:
	ldr	r9, [r5, lr, asl #2]	@ tmp696, s_pstVfmwChan
	add	r7, r6, r9	@ tmp699, tmp698, tmp696
	add	r9, r7, #216064	@ tmp700, tmp699,
	add	r7, r9, #360	@ tmp700, tmp700,
	mov	r9, #1	@,
	str	r9, [r7, #0]	@, <variable>.eFrameState
	ldr	r7, [r5, lr, asl #2]	@ tmp703, s_pstVfmwChan
	add	r6, r6, r7	@ tmp706, tmp698, tmp703
	add	r6, r6, #216064	@ tmp707, tmp706,
	add	r6, r6, #360	@ tmp707, tmp707,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, lr, asl #2]	@ tmp709, s_pstVfmwChan
	str	ip, [r2, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ temp.2314, s_pstVfmwChan
	add	r4, r2, r4, asl #4	@, tmp717, temp.2314, tmp710,
	ldr	r2, [r4, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, r2, r9	@ tmp726, <variable>.s32UsingCount,
	str	r2, [r4, #4]	@ tmp726, <variable>.s32UsingCount
.L736:
	ldrsb	r4, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2127, ivtmp.2127,
	cmp	r3, r4	@ i, <variable>.s32DecFsNum
	bge	.L765	@,
.L738:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r7, r3, #13504	@ tmp710, i,
	add	r4, r7, #23	@ tmp710, tmp710,
	mov	r6, r3, asl #4	@ tmp698, i,
	cmp	sl, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r9, #0	@, tmp694
	movgt	r9, #1	@, tmp694
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r2, ip	@ tmp727, s32FrameStartAddr, s32ImgSize
	movgt	r9, #0	@, tmp694,
	cmp	r9, #0	@ tmp694,
	bne	.L784	@,
	cmp	r0, r7	@ s32DnrStartAddr, tmp727
	movge	r7, #0	@, tmp734
	movlt	r7, #1	@, tmp734
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r4, r3, #13504	@ tmp750, i,
	mov	fp, r3, asl #4	@ tmp738, i,
	add	r6, r4, #23	@ tmp750, tmp750,
	movle	r7, #0	@, tmp734,
	cmp	r7, #0	@ tmp734,
	mov	r9, fp	@ tmp770, tmp738
	mov	r4, r6	@ tmp782, tmp750
	beq	.L737	@,
	ldr	r7, [r5, lr, asl #2]	@ tmp736, s_pstVfmwChan
	add	r4, fp, r7	@ tmp739, tmp738, tmp736
	add	r7, r4, #216064	@ tmp740, tmp739,
	add	r4, r7, #360	@ tmp740, tmp740,
	mov	r7, #1	@,
	str	r7, [r4, #0]	@, <variable>.eFrameState
	ldr	r4, [r5, lr, asl #2]	@ tmp743, s_pstVfmwChan
	add	r4, fp, r4	@ tmp746, tmp738, tmp743
	add	r4, r4, #216064	@ tmp747, tmp746,
	add	r4, r4, #360	@ tmp747, tmp747,
	str	r2, [r4, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r4, [r5, lr, asl #2]	@ tmp749, s_pstVfmwChan
	str	ip, [r4, r6, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ temp.2318, s_pstVfmwChan
	add	r6, r2, r6, asl #4	@, tmp757, temp.2318, tmp750,
	ldr	r4, [r6, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, r4, r7	@ tmp766, <variable>.s32UsingCount,
	str	r2, [r6, #4]	@ tmp766, <variable>.s32UsingCount
	b	.L736	@
.L737:
	ldr	r6, [r5, lr, asl #2]	@ tmp768, s_pstVfmwChan
	add	r6, fp, r6	@ tmp771, tmp770, tmp768
	add	r6, r6, #216064	@ tmp772, tmp771,
	add	r6, r6, #360	@ tmp772, tmp772,
	str	r7, [r6, #0]	@ tmp734, <variable>.eFrameState
	ldr	r6, [r5, lr, asl #2]	@ tmp775, s_pstVfmwChan
	add	r6, fp, r6	@ tmp778, tmp770, tmp775
	add	r6, r6, #216064	@ tmp779, tmp778,
	add	r6, r6, #360	@ tmp779, tmp779,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, lr, asl #2]	@ tmp781, s_pstVfmwChan
	str	ip, [r2, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, lr, asl #2]	@ tmp785, s_pstVfmwChan
	add	r4, r2, r4, asl #4	@, tmp790, tmp785, tmp782,
	str	r7, [r4, #4]	@ tmp734, <variable>.s32UsingCount
	b	.L736	@
.L783:
	bl	vfmw_dprint_nothing	@
	ldr	r9, [sp, #28]	@, %sfp
	movw	r7, #:lower16:s_DnrChan	@,
	movt	r7, #:upper16:s_DnrChan	@,
	str	r7, [sp, #40]	@, %sfp
	movw	r1, #:lower16:76696	@ tmp488,
	ldr	r7, [sp, #28]	@, %sfp
	movt	r1, #:upper16:76696	@ tmp488,
	ldr	fp, [r5, r9, asl #2]	@ tmp498, s_pstVfmwChan
	movw	r6, #:lower16:76664	@ tmp492,
	ldr	r9, [sp, #40]	@, %sfp
	movt	r6, #:upper16:76664	@ tmp492,
	ldr	sl, [sl, r7, asl #2]	@ pstInst, s_pFspInst
	mla	r0, r1, r7, r9	@ tmp489, tmp488,,
	movw	r1, #34640	@ tmp501,
	add	r3, r0, #75776	@ tmp490, tmp489,
	add	r8, r3, #880	@ tmp490, tmp490,
	ldr	r2, [r0, r6]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldr	r6, [r8, #4]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	add	r8, r2, r6	@ s32DnrEndAddr, s32DnrSize, s32DnrStartAddr
	str	r6, [fp, #236]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r5, r7, asl #2]	@ tmp500, s_pstVfmwChan
	str	r2, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldrsb	fp, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	lr, [sl, r1]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	fp, #0	@ <variable>.s32DecFsNum,
	ble	.L723	@,
	add	r2, sl, #27648	@ ivtmp.2122, pstInst,
	mov	r3, #0	@ i,
	add	r1, r2, #160	@ ivtmp.2122, ivtmp.2122,
	str	r4, [sp, #44]	@ D.38772, %sfp
	ldr	r0, [sp, #28]	@ InstID, %sfp
	b	.L728	@
.L786:
	ldr	fp, [r5, r0, asl #2]	@ tmp512, s_pstVfmwChan
	add	ip, r9, fp	@ tmp515, tmp514, tmp512
	add	fp, ip, #216064	@ tmp516, tmp515,
	add	ip, fp, #360	@ tmp516, tmp516,
	mov	fp, #2	@,
	str	fp, [ip, #0]	@, <variable>.eFrameState
	ldr	fp, [r5, r0, asl #2]	@ tmp519, s_pstVfmwChan
	add	ip, r9, fp	@ tmp522, tmp514, tmp519
	add	fp, ip, #216064	@ tmp523, tmp522,
	add	ip, fp, #360	@ tmp523, tmp523,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	mov	ip, #0	@,
	ldr	fp, [r5, r0, asl #2]	@ tmp525, s_pstVfmwChan
	str	lr, [fp, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, r0, asl #2]	@ tmp529, s_pstVfmwChan
	add	fp, r2, r4, asl #4	@, tmp534, tmp529, tmp526,
	str	ip, [fp, #4]	@, <variable>.s32UsingCount
.L725:
	ldrsb	ip, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2122, ivtmp.2122,
	cmp	r3, ip	@ i, <variable>.s32DecFsNum
	bge	.L785	@,
.L728:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r4, r3, #13504	@ tmp526, i,
	mov	r9, r3, asl #4	@ tmp514, i,
	add	r4, r4, #23	@ tmp526, tmp526,
	cmp	r8, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r7, #0	@, tmp510
	movgt	r7, #1	@, tmp510
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	ip, r2, lr	@ s32FrameEndAddr, s32FrameStartAddr, s32ImgSize
	movgt	r7, #0	@, tmp510,
	cmp	r7, #0	@ tmp510,
	bne	.L786	@,
	cmp	r8, ip	@ s32DnrEndAddr, s32FrameEndAddr
	movlt	r4, #0	@, tmp543
	movge	r4, #1	@, tmp543
	cmp	r6, ip	@ s32DnrStartAddr, s32FrameEndAddr
	add	r9, r3, #13504	@ tmp559, i,
	mov	fp, r3, asl #4	@ tmp547, i,
	movge	r4, #0	@, tmp543,
	cmp	r4, #0	@ tmp543,
	add	r9, r9, #23	@ tmp559, tmp559,
	beq	.L726	@,
	ldr	r4, [r5, r0, asl #2]	@ tmp545, s_pstVfmwChan
	add	ip, fp, r4	@ tmp548, tmp547, tmp545
	add	r4, ip, #216064	@ tmp549, tmp548,
	add	ip, r4, #360	@ tmp549, tmp549,
	mov	r4, #2	@,
	str	r4, [ip, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, r0, asl #2]	@ tmp552, s_pstVfmwChan
	add	r4, fp, ip	@ tmp555, tmp547, tmp552
	add	fp, r4, #216064	@ tmp556, tmp555,
	add	ip, fp, #360	@ tmp556, tmp556,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, r0, asl #2]	@ tmp558, s_pstVfmwChan
	str	lr, [r2, r9, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r4, [r5, r0, asl #2]	@ tmp562, s_pstVfmwChan
	add	r9, r4, r9, asl #4	@, tmp567, tmp562, tmp559,
	str	r7, [r9, #4]	@ tmp510, <variable>.s32UsingCount
	b	.L725	@
.L726:
	cmp	r8, ip	@ s32DnrEndAddr, s32FrameEndAddr
	movge	ip, #0	@, tmp576
	movlt	ip, #1	@, tmp576
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r3, #13504	@ tmp592, i,
	mov	fp, r3, asl #4	@ tmp580, i,
	add	r9, r7, #23	@ tmp592, tmp592,
	movle	ip, #0	@, tmp576,
	cmp	ip, #0	@ tmp576,
	str	fp, [sp, #32]	@ tmp9, %sfp
	mov	r7, r9	@ tmp618, tmp592
	beq	.L727	@,
	ldr	r7, [r5, r0, asl #2]	@ tmp578, s_pstVfmwChan
	add	ip, fp, r7	@ tmp581, tmp580, tmp578
	add	r7, ip, #216064	@ tmp582, tmp581,
	add	ip, r7, #360	@ tmp582, tmp582,
	mov	r7, #2	@,
	str	r7, [ip, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, r0, asl #2]	@ tmp585, s_pstVfmwChan
	add	ip, fp, ip	@ tmp588, tmp580, tmp585
	add	fp, ip, #216064	@ tmp589, tmp588,
	add	ip, fp, #360	@ tmp589, tmp589,
	str	r2, [ip, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	fp, [r5, r0, asl #2]	@ tmp591, s_pstVfmwChan
	str	lr, [fp, r9, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, r0, asl #2]	@ tmp595, s_pstVfmwChan
	add	r9, r2, r9, asl #4	@, tmp600, tmp595, tmp592,
	str	r4, [r9, #4]	@ tmp543, <variable>.s32UsingCount
	b	.L725	@
.L727:
	ldr	r4, [r5, r0, asl #2]	@ tmp604, s_pstVfmwChan
	ldr	r9, [sp, #32]	@, %sfp
	add	fp, r9, r4	@ tmp607,, tmp604
	add	r4, fp, #216064	@ tmp608, tmp607,
	add	fp, r4, #360	@ tmp608, tmp608,
	str	ip, [fp, #0]	@ tmp576, <variable>.eFrameState
	ldr	r4, [r5, r0, asl #2]	@ tmp611, s_pstVfmwChan
	add	fp, r9, r4	@ tmp614,, tmp611
	add	r4, fp, #216064	@ tmp615, tmp614,
	add	fp, r4, #360	@ tmp615, tmp615,
	str	r2, [fp, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, r0, asl #2]	@ tmp617, s_pstVfmwChan
	str	lr, [r2, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r4, [r5, r0, asl #2]	@ tmp621, s_pstVfmwChan
	add	r7, r4, r7, asl #4	@, tmp626, tmp621, tmp618,
	str	ip, [r7, #4]	@ tmp576, <variable>.s32UsingCount
	b	.L725	@
.L785:
	ldr	r4, [sp, #44]	@ D.38772, %sfp
.L723:
	ldr	fp, [sp, #28]	@, %sfp
	movw	r2, #:lower16:76696	@ tmp637,
	ldr	ip, [sp, #40]	@, %sfp
	movt	r2, #:upper16:76696	@ tmp637,
	mov	r0, #1	@ tmp632,
	movw	r3, #:lower16:76664	@ tmp642,
	ldr	lr, [r5, fp, asl #2]	@ tmp631, s_pstVfmwChan
	movt	r3, #:upper16:76664	@ tmp642,
	mla	r1, r2, fp, ip	@ tmp638, tmp637,,
	str	r0, [lr, #1604]	@ tmp632, <variable>.stSynExtraData.s32DnrEnable
	ldr	r0, [r5, fp, asl #2]	@ temp.2344, s_pstVfmwChan
	b	.L769	@
.L741:
	bl	vfmw_dprint_nothing	@
.L766:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L700	@
.L767:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L700	@
.L779:
	ldr	lr, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, lr	@ D.38799, <variable>.stInstCfg.s32DecFsWidth
	beq	.L695	@,
	mvn	r0, #0	@ D.38770,
	b	.L689	@
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r8, r0	@ InstID, InstID
	mov	r9, r1	@ pstVoQue, pstVoQue
	bhi	.L800	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L800	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	sl, [r3, r0, asl #2]	@ D.38084, s_pFspInst
	cmp	sl, #0	@ D.38084,
	movne	r5, sl	@ ivtmp.2378, D.38084
	movne	r4, #0	@ i,
	movne	fp, #432	@ tmp150,
	bne	.L793	@,
	b	.L800	@
.L792:
	mov	r0, r8	@, InstID
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	bl	FSP_SetRef	@
	mla	r2, fp, r7, sl	@ tmp159, tmp150, tmp151, D.38084
	mov	r0, r9	@, pstVoQue
	add	r1, r2, #104	@, tmp159,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L801	@,
	add	r4, r7, #1	@ i, tmp151,
	add	r5, r6, #432	@ ivtmp.2378, tmp152,
	cmp	r4, #64	@ i,
	beq	.L802	@,
.L793:
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	add	r6, r5, #432	@ tmp152, ivtmp.2378,
	bl	FSP_SetRef	@
	mla	r1, fp, r4, sl	@ tmp146, tmp150, i, D.38084
	mov	r0, r9	@, pstVoQue
	add	r7, r4, #1	@ tmp151, i,
	add	r1, r1, #104	@, tmp146,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L792	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r0, r8	@, InstID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L792	@
.L801:
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	add	r4, r7, #1	@ i, tmp151,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i,
	add	r5, r6, #432	@ ivtmp.2378, tmp152,
	bne	.L793	@,
.L802:
	mov	r0, #0	@ D.38080,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L800:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38080,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.global	s_pFspInst
	.global	s_FspVoQue
	.global	g_SpinLock_fsp
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
