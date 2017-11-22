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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(fsp)
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
	mvn	ip, #0	@ LeastTick.648,
	mov	r2, r5	@ i, LeastFsID
	bne	.L6	@,
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	add	r0, r0, #52	@ pstPhyFs, pstPhyFs,
	mov	r2, #1	@ i,
	add	r4, r0, #52	@ tmp175, pstPhyFs,
	cmn	r3, #1	@ LeastTick,
	movcs	r3, ip	@, LeastTick, LeastTick.648
	mov	ip, r3	@ LeastTick.648, LeastTick
	ldr	r3, [r0, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r3, ip	@ LeastTick, LeastTick.648
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.648
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
	cmp	r3, ip	@ LeastTick, LeastTick.648
	movcc	r5, r2	@ LeastFsID, i
	add	r2, r2, #1	@ tmp174, i,
	movcs	r3, ip	@ LeastTick, LeastTick.648
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
	cmpls	r0, #0	@, InstID,
	beq	.L24	@,
.L21:
	mov	r0, #0	@ pstLogicFs,
	bx	lr	@
.L24:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.37038, s_pFspInst
	cmp	r3, #0	@ D.37038,
	beq	.L21	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ pstLogicFs, tmp148, LogicFrameID, D.37038
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
	cmpls	r0, #0	@, InstID,
	beq	.L29	@,
.L26:
	mov	r0, #0	@ D.37061,
	bx	lr	@
.L29:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.37056, s_pFspInst
	cmp	r3, #0	@ D.37056,
	beq	.L26	@,
	mov	r2, #432	@ tmp148,
	mla	r0, r2, r1, r3	@ D.37061, tmp148, LogicFrameID, D.37056
	add	r0, r0, #104	@ D.37061, D.37061,
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
	cmpls	r0, #0	@, InstID,
	beq	.L34	@,
.L31:
	mov	r0, #0	@ D.37079,
	bx	lr	@
.L34:
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.37074, s_pFspInst
	cmp	r3, #0	@ D.37074,
	beq	.L31	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.37074
	ldr	r0, [r1, #508]	@ D.37079, <variable>.pstDispOutFs
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
	cmpls	r0, #0	@, InstID,
	bne	.L36	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r3, [r3, #0]	@ D.37092, s_pFspInst
	cmp	r3, #0	@ D.37092,
	beq	.L36	@,
	mov	r2, #432	@ tmp149,
	mla	r1, r2, r1, r3	@ tmp150, tmp149, LogicFrameID, D.37092
	ldr	r0, [r1, #516]	@ D.37097, <variable>.PmvAddr
	bx	lr	@
.L36:
	mov	r0, #0	@ D.37097,
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
	add	r1, r2, #27136	@ ivtmp.774, pstInst,
	add	r1, r1, #177	@ ivtmp.774, ivtmp.774,
	b	.L42	@
.L50:
	ldrb	ip, [r1, #-432]	@ zero_extendqisi2	@ <variable>.s32DispState, <variable>.s32DispState
	sub	r3, r3, #1	@ i, i,
	sub	r1, r1, #864	@ ivtmp.774, ivtmp.774,
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L57	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.37278, s_pFspInst
	cmp	r3, #0	@ D.37278,
	beq	.L57	@,
	ldr	r0, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r0, #1	@ <variable>.eFspInstState,
	moveq	r0, #0	@, D.37276,
	mvnne	r0, #0	@, D.37276,
	ldmfd	sp!, {r3, pc}	@
.L57:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37276,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ InstID, InstID
	bne	.L71	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r6, [r3, #0]	@ D.37221, s_pFspInst
	cmp	r6, #0	@ D.37221,
	beq	.L71	@,
	bl	vfmw_dprint_nothing	@
	mov	r5, #1	@ ivtmp.831,
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
	bl	vfmw_dprint_nothing	@
	b	.L61	@
.L86:
	tst	r4, #7	@ ivtmp.830,
	beq	.L84	@,
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.831,
	bgt	.L85	@,
.L64:
	add	r4, r4, #1	@ ivtmp.830, ivtmp.830,
	add	r5, r5, #1	@ ivtmp.831, ivtmp.831,
.L61:
	cmp	r4, #0	@ ivtmp.830,
	bne	.L86	@,
	bl	vfmw_dprint_nothing	@
	b	.L64	@
.L84:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.831,
	ble	.L64	@,
.L85:
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	movgt	r4, #0	@ i.833,
	ble	.L65	@,
.L81:
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r4, r4, #1	@ i.833, i.833,
	cmp	r1, r4	@ <variable>.s32DecFsNum, i.833
	ble	.L65	@,
.L67:
	tst	r4, #7	@ i.833,
	bne	.L81	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i.833, i.833,
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r4	@ <variable>.s32DecFsNum, i.833
	bgt	.L67	@,
.L65:
	bl	vfmw_dprint_nothing	@
	ldrsb	r2, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, #0	@ <variable>.s32DispFsNum,
	movgt	r4, #0	@ i.835,
	ble	.L68	@,
.L82:
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r4, r4, #1	@ i.835, i.835,
	cmp	ip, r4	@ <variable>.s32DispFsNum, i.835
	ble	.L68	@,
.L70:
	tst	r4, #7	@ i.835,
	bne	.L82	@,
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i.835, i.835,
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r6, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	ip, r4	@ <variable>.s32DispFsNum, i.835
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L99	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r3, [r3, #0]	@ D.37189, s_pFspInst
	cmp	r3, #0	@ D.37189,
	beq	.L99	@,
.L92:
	add	r2, r3, #432	@ tmp145, ivtmp.872,
	ldr	r3, [r3, #504]	@ D.37193, <variable>.pstDecodeFs
	cmp	r3, #0	@ D.37193,
	beq	.L91	@,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	ip, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L91:
	ldr	r3, [r2, #504]	@ D.37193, <variable>.pstDecodeFs
	add	r0, r0, #1	@ i, i,
	cmp	r3, #0	@ D.37193,
	mov	ip, r0	@ tmp144, i
	beq	.L95	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, r1	@ <variable>.PhyAddr, PhyAddr
	ldmeqfd	sp!, {r3, pc}	@
.L95:
	add	r0, ip, #1	@ i, tmp144,
	add	r3, r2, #432	@ ivtmp.872, tmp145,
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
	cmp	r0, #0	@ InstID
	bne	.L109	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L109	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L109	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r3, #0]	@ D.37145, s_pFspInst
	cmp	ip, #0	@ D.37145,
	beq	.L109	@,
	ldrsb	r3, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	str	r3, [r1, #0]	@ <variable>.s32PmvNum,* PmvNum
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, #0	@ <variable>.s32PmvNum,
	bxle	lr	@
	mov	r3, r0	@ i, ivtmp.901
.L106:
	add	r1, ip, r0	@ tmp143, D.37145, ivtmp.901
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #34560	@ tmp144, tmp143,
	ldr	r1, [r1, #0]	@ tmp145, <variable>.PmvAddr
	str	r1, [r2, r0]	@ tmp145,* ivtmp.901
	add	r0, r0, #4	@ ivtmp.901, ivtmp.901,
	ldrsb	r1, [ip, #13]	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	cmp	r1, r3	@ <variable>.s32PmvNum, i
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
	cmp	r0, #0	@ InstID
	bne	.L119	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L119	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L119	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [r3, #0]	@ s_pFspInst, s_pFspInst
	cmp	ip, #0	@ s_pFspInst,
	beq	.L119	@,
	str	r0, [r1, #0]	@ InstID,* DecFsNum
	ldr	ip, [r3, #0]	@ s_pFspInst, s_pFspInst
	ldrsb	ip, [ip, #10]	@ D.37120, <variable>.s32DecFsNum
	cmp	ip, #0	@ D.37120,
	str	ip, [r1, #0]	@ D.37120,* DecFsNum
	ldr	r3, [r3, #0]	@ temp.939, s_pFspInst
	bxle	lr	@
	add	r3, r3, #27648	@ ivtmp.933, temp.939,
	add	r3, r3, #160	@ ivtmp.933, ivtmp.933,
.L116:
	ldr	ip, [r3], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r2, r0, asl #2]	@ <variable>.PhyAddr,* DecFsAddrTab
	add	r0, r0, #1	@ i, i,
	ldr	ip, [r1, #0]	@ tmp155,* DecFsNum
	cmp	ip, r0	@ tmp155, i
	bgt	.L116	@,
	bx	lr	@
.L119:
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L126	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.36994, s_pFspInst
	cmp	r3, #0	@ D.36994,
	beq	.L126	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L124	@,
	ldrsb	r1, [r3, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L124	@,
	mov	r1, #52	@ tmp143,
	mla	ip, r1, r2, r3	@ tmp144, tmp143, PhyFsID, D.36994
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L134	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [ip, #0]	@ D.36966, s_pFspInst
	cmp	ip, #0	@ D.36966,
	beq	.L134	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L131	@,
	ldrsb	r0, [ip, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r2	@ <variable>.s32DecFsNum, PhyFsID
	ble	.L132	@,
	mov	r0, r1	@ Ret, ePhyFsType
	mov	r1, #52	@ tmp144,
	mla	r2, r1, r2, ip	@ tmp145, tmp144, PhyFsID, D.36966
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
	ldrsb	r1, [ip, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	cmp	r2, r1	@ PhyFsID, <variable>.s32DispFsNum
	bge	.L132	@,
	mov	r1, #52	@ tmp150,
	mla	r2, r1, r2, ip	@ tmp151, tmp150, PhyFsID, D.36966
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
	ldr	r3, [r3, r0, asl #2]	@ D.36946, s_pFspInst
	cmp	r3, #0	@ D.36946,
	beq	.L140	@,
	mov	r2, #432	@ tmp141,
	mla	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.36946
	ldrsb	r0, [r1, #97]	@ D.36949, <variable>.s32DispState
	ldmfd	sp!, {r3, pc}	@
.L140:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36949,
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
	ldr	r3, [r3, r0, asl #2]	@ D.36880, s_pFspInst
	cmp	r3, #0	@ D.36880,
	beq	.L145	@,
	mov	r2, #432	@ tmp141,
	mla	r1, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.36880
	ldrsb	r0, [r1, #96]	@ D.36883, <variable>.s32IsRef
	ldmfd	sp!, {r3, pc}	@
.L145:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36883,
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	bne	.L161	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L161	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp145,
	movt	r3, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r5, [r3, #0]	@ D.36808, s_pFspInst
	cmp	r5, #0	@ D.36808,
	beq	.L161	@,
	mov	r7, #432	@ tmp148,
	uxtb	r8, r2	@ D.36815, IsRef
	mla	r7, r7, r1, r5	@ tmp149, tmp148, LogicFrameID, D.36808
	ldrsb	r1, [r7, #98]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r8, [r7, #96]	@ D.36815, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	ldr	r1, [r7, #504]	@ prephitmp.1048, <variable>.pstDecodeFs
	cmp	r1, #0	@ prephitmp.1048,
	beq	.L151	@,
	ldr	sl, [r1, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	ip, [r7, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	sl, ip	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L162	@,
.L151:
	mov	r3, #432	@ tmp187,
	mla	r3, r3, r4, r5	@ tmp188, tmp187, LogicFrameID, D.36808
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.36835, <variable>.PmvIdc
	cmp	r2, #19	@ D.36835,
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
	mla	r3, r2, r4, r5	@ tmp236, tmp235, LogicFrameID, D.36808
	ldr	r3, [r3, #508]	@ D.36856, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36856,
	beq	.L158	@,
	ldrsb	r1, [r3, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #1	@ <variable>.DispState,
	beq	.L165	@,
.L159:
	mov	r2, #432	@ tmp248,
	ldr	ip, [r3, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	mla	r2, r2, r4, r5	@ tmp249, tmp248, LogicFrameID, D.36808
	ldr	r1, [r2, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	ip, r1	@ <variable>.u32Tick, <variable>.u32Tick
	beq	.L166	@,
.L158:
	cmp	r6, #0	@ IsRef,
	moveq	r3, #432	@ tmp265,
	mlaeq	r4, r3, r4, r5	@ tmp266, tmp265, LogicFrameID, D.36808
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
	mla	r0, r3, r4, r5	@ tmp244, tmp243, LogicFrameID, D.36808
	ldr	r3, [r0, #508]	@ D.36856, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.36856,
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
	ldr	ip, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L152	@,
	ldr	r3, [r3, #20]	@ D.37342, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.36833, <variable>.PhyAddr
	cmp	r3, #0	@ D.37342,
	beq	.L168	@,
	blx	r3	@ D.37342
	ldr	r1, [r7, #504]	@ prephitmp.1048, <variable>.pstDecodeFs
.L152:
	strb	r8, [r1, #0]	@ D.36815, <variable>.IsDecRef
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
	sxtab	r0, r5, r2	@ tmp217, D.36808, D.36835
	strb	r6, [r0, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, <variable>.PmvAddr
	str	r6, [r1, #4]	@ IsRef, <variable>.eLfsPmvState
	b	.L157	@
.L167:
	sxtab	r1, r5, r2	@ tmp199, D.36808, D.36835
	mov	r2, #2	@ tmp208,
	strb	r6, [r1, #14]	@ IsRef, <variable>.IsPmvInUse
	str	r2, [r3, #4]	@ tmp208, <variable>.eLfsPmvState
	b	.L156	@
.L168:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #504]	@ prephitmp.1048, <variable>.pstDecodeFs
	strb	r8, [r1, #0]	@ D.36815, <variable>.IsDecRef
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
	cmp	r0, #0	@ InstID
	bne	.L176	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L176	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.36782, s_pFspInst
	cmp	r3, #0	@ D.36782,
	beq	.L176	@,
	mov	r2, #432	@ tmp141,
	mla	r2, r2, r1, r3	@ tmp142, tmp141, LogicFrameID, D.36782
	ldr	ip, [r2, #500]	@ <variable>.eLfsPmvState, <variable>.eLfsPmvState
	cmp	ip, #2	@ <variable>.eLfsPmvState,
	bxne	lr	@
	ldrb	ip, [r2, #100]	@ zero_extendqisi2	@ D.36790, <variable>.PmvIdc
	mov	r2, #432	@ tmp159,
	cmp	ip, #19	@ D.36790,
	sxtabls	ip, r3, ip	@ tmp153, D.36782, D.36790
	strlsb	r0, [ip, #14]	@ InstID, <variable>.IsPmvInUse
	mov	r0, #0	@ tmp162,
	mla	ip, r2, r1, r3	@ tmp160, tmp159, LogicFrameID, D.36782
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
	cmp	r0, #0	@ InstID
	bne	.L182	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r3, [r3, #0]	@ D.35556, s_pFspInst
	cmp	r3, #0	@ D.35556,
	beq	.L182	@,
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	streq	r0, [r3, #4]	@ InstID, <variable>.eFspInstState
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
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r3, [r3, #0]	@ D.35481, s_pFspInst
	cmp	r3, #0	@ D.35481,
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
.LFB1925:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L191	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #0]	@ D.35496, s_pFspInst
	ldr	r2, [r3, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L191	@,
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	strb	ip, [r3, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	ldmfd	sp!, {r3, pc}	@
.L191:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35494,
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
	ldr	ip, [r2, r0, asl #2]	@ D.37162, s_pFspInst
	mov	r3, r1	@ pFspInstInfo, pFspInstInfo
	cmp	ip, #0	@ D.37162,
	beq	.L195	@,
	ldrb	r5, [ip, #10]	@ zero_extendqisi2	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r4, #27860	@ tmp139,
	mov	r0, r1	@ tmp152, pFspInstInfo
	add	r1, ip, #27648	@, D.37162,
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
.L195:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r0, #0	@ InstID, InstID
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	mov	sl, r2	@ IsWaitDisp, IsWaitDisp
	bne	.L211	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L211	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp145,
	movt	r8, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r8, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L211	@,
	add	r0, r8, #24	@, tmp145,
	rsbs	r7, r2, #1	@ D.36908, IsWaitDisp
	movcc	r7, #0	@ D.36908
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8, #0]	@ pstInst, s_pFspInst
	mov	r0, #432	@ tmp154,
	mla	r3, r0, r4, r6	@ tmp155, tmp154, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp156, tmp155,
	ldrsb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	cmp	r1, #0	@ <variable>.IsDummyFs,
	cmpeq	sl, #0	@, IsWaitDisp,
	beq	.L212	@,
	cmp	r7, #0	@ D.36908,
	moveq	r2, #3	@ iftmp.580,
	bne	.L201	@,
.L203:
	mov	lr, #432	@ tmp179,
	mla	r4, lr, r4, r6	@ tmp180, tmp179, LogicFrameID, pstInst
	add	r3, r4, #96	@ tmp181, tmp180,
	ldrsb	r1, [r3, #2]	@ <variable>.IsDummyFs, <variable>.IsDummyFs
	strb	r2, [r3, #1]	@ iftmp.580, <variable>.s32DispState
	cmp	r1, #0	@ <variable>.IsDummyFs,
	bne	.L208	@,
	add	r0, r4, #504	@ tmp193, tmp180,
	ldr	r2, [r0, #4]	@ temp.1205, <variable>.pstDispOutFs
	cmp	r2, #0	@ temp.1205,
	beq	.L208	@,
	ldr	ip, [r4, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r4, [r2, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	cmp	r4, ip	@ <variable>.u32Tick, <variable>.u32Tick
	bne	.L213	@,
	cmp	r7, #0	@ D.36908,
	strneb	r1, [r3, #1]	@ <variable>.IsDummyFs, <variable>.s32DispState
	strneb	r1, [r2, #2]	@ <variable>.IsDummyFs, <variable>.DispState
	moveq	r1, #3	@ tmp231,
	strne	r1, [r0, #4]	@ <variable>.IsDummyFs, <variable>.pstDispOutFs
	streqb	r1, [r3, #1]	@ tmp231, <variable>.s32DispState
	streqb	r1, [r2, #2]	@ tmp231, <variable>.DispState
.L208:
	ldr	r0, .L215	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L212:
	ldr	r1, [r3, #508]	@ D.36912, <variable>.pstDispOutFs
	cmp	r1, #0	@ D.36912,
	beq	.L201	@,
	ldrsb	ip, [r2, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	ip, #0	@ <variable>.s32DispState,
	beq	.L201	@,
	ldr	r2, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L201	@,
	ldr	r3, [r8, #16]	@ D.37350, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r1, #12]	@ D.36921, <variable>.PhyAddr
	cmp	r3, #0	@ D.37350,
	beq	.L214	@,
	mov	r0, r5	@, InstID
	blx	r3	@ D.37350
.L201:
	mov	r2, #0	@ iftmp.580,
	b	.L203	@
.L211:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	vfmw_dprint_nothing	@
.L213:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L215	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L214:
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ iftmp.580,
	b	.L203	@
.L216:
	.align	2
.L215:
	.word	.LANCHOR0+24
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
	beq	.L240	@,
	ldrsb	r4, [r2, #10]	@ TotalFsNum, <variable>.s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L223	@,
	add	r2, r2, #27648	@ ivtmp.1256, pstInst,
	sub	r3, r4, #1	@ tmp157, TotalFsNum,
	and	ip, r3, #1	@ tmp159, tmp157,
	mov	r3, #0	@ i,
	ldrsb	r1, [r2, #148]!	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, r3	@ <variable>.IsDecRef,
	beq	.L241	@,
.L230:
	mov	r3, #1	@ i,
	cmp	r4, r3	@ TotalFsNum, i
	add	r2, r2, #52	@ ivtmp.1256, ivtmp.1256,
	ble	.L223	@,
	cmp	ip, #0	@ tmp159,
	beq	.L226	@,
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L232	@,
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L225	@,
.L232:
	add	r3, r3, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.1256, ivtmp.1256,
	cmp	r4, r3	@ TotalFsNum, i
	ble	.L223	@,
.L226:
	ldrsb	ip, [r2, #0]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r1, r2, #52	@ tmp161, ivtmp.1256,
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L224	@,
	ldrsb	ip, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L225	@,
.L224:
	ldrsb	r2, [r2, #52]	@ <variable>.IsDecRef, <variable>.IsDecRef
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.IsDecRef,
	mov	r2, r3	@ tmp160, i
	bne	.L235	@,
	ldrsb	ip, [r1, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #0	@ <variable>.DispState,
	beq	.L225	@,
.L235:
	add	r3, r2, #1	@ i, tmp160,
	add	r2, r1, #52	@ ivtmp.1256, tmp161,
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L226	@,
.L223:
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
	bgt	.L242	@,
.L227:
	mov	r0, #0	@ D.36534,
.L222:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, pc}
.L241:
	ldrsb	r1, [r2, #2]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	bne	.L230	@,
.L225:
	cmp	r4, r3	@ TotalFsNum, i
	bgt	.L227	@,
	b	.L223	@
.L242:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.36534,
	b	.L222	@
.L240:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36534,
	b	.L222	@
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L272	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp148,
	movt	r3, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r4, [r3, #0]	@ D.36489, s_pFspInst
	cmp	r4, #0	@ D.36489,
	beq	.L272	@,
	ldr	r2, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L247	@,
	ldr	r5, [r3, #8]	@ D.37357, g_FspFrameIntf.IsFrameAvalible
	cmp	r5, #0	@ D.37357,
	beq	.L273	@,
	blx	r5	@ D.37357
	cmp	r0, #0	@,
	bne	.L249	@,
.L247:
	ldrb	r5, [r4, #10]	@ zero_extendqisi2	@ D.36498, <variable>.s32DecFsNum
	cmp	r5, #0	@ D.36498,
	beq	.L250	@,
	sxtb	r5, r5	@ D.36514, D.36498
	cmp	r5, #0	@ D.36514,
	ble	.L251	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp152,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp152,
	sub	r0, r5, #1	@ tmp159, D.36514,
	add	r4, r4, #27648	@ ivtmp.1289, D.36489,
	ldr	r2, [r3, #0]	@ pretmp.1273, s_pstVfmwChan
	and	ip, r0, #1	@ tmp161, tmp159,
	add	r4, r4, #150	@ ivtmp.1289, ivtmp.1289,
	mov	r3, #0	@ i,
	add	r1, r2, #216064	@ ivtmp.1292, pretmp.1273,
	ldr	r0, [r2, #1580]	@ pretmp.1275, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1292, ivtmp.1292,
	cmp	r0, #1	@ pretmp.1275,
	beq	.L274	@,
.L258:
	ldrsb	r2, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L275	@,
.L259:
	mov	r3, #1	@ i,
	cmp	r3, r5	@ i, D.36514
	add	r4, r4, #52	@ ivtmp.1289, ivtmp.1289,
	add	r1, r1, #16	@ ivtmp.1292, ivtmp.1292,
	bge	.L251	@,
	cmp	ip, #0	@ tmp161,
	beq	.L255	@,
	cmp	r0, r3	@ pretmp.1275,
	beq	.L271	@,
.L261:
	ldrsb	ip, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L262	@,
	ldrsb	r2, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L254	@,
.L262:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #52	@ ivtmp.1289, ivtmp.1289,
	cmp	r3, r5	@ i, D.36514
	add	r1, r1, #16	@ ivtmp.1292, ivtmp.1292,
	blt	.L255	@,
.L251:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.36487,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L249:
	mov	r0, #0	@ D.36487,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L275:
	ldrsb	r2, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L259	@,
.L254:
	cmp	r3, r5	@ i, D.36514
	bge	.L251	@,
.L250:
	mov	r0, #1	@ D.36487,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L278:
	ldr	r6, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r6, #0	@ <variable>.eFrameState,
	bne	.L253	@,
.L252:
	ldrsb	r6, [r4, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r6, #0	@ <variable>.IsDecRef,
	bne	.L253	@,
	ldrsb	r4, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #0	@ <variable>.DispState,
	beq	.L254	@,
.L253:
	add	r3, r3, #1	@ i, i,
	cmp	r0, #1	@ pretmp.1275,
	mov	r4, r3	@ tmp162, i
	beq	.L276	@,
.L265:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L266	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L254	@,
.L266:
	add	r3, r4, #1	@ i, tmp162,
	add	r1, ip, #16	@ ivtmp.1292, tmp164,
	cmp	r3, r5	@ i, D.36514
	add	r4, r2, #52	@ ivtmp.1289, tmp163,
	bge	.L251	@,
.L255:
	cmp	r0, #1	@ pretmp.1275,
	add	r2, r4, #52	@ tmp163, ivtmp.1289,
	add	ip, r1, #16	@ tmp164, ivtmp.1292,
	bne	.L252	@,
	b	.L278	@
.L276:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L265	@,
	b	.L266	@
.L273:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.36487, D.37357
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L274:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L258	@,
	b	.L259	@
.L271:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L261	@,
	b	.L262	@
.L272:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36487,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	add	r5, sp, #32	@ tmp170,,
	mov	r6, r0	@ InstID, InstID
	mov	sl, r1	@ MemPhyAddr, MemPhyAddr
	mov	r1, #416	@,
	mov	r0, r5	@, tmp170
	mov	r9, r2	@ MemSize, MemSize
	str	r3, [sp, #28]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r6, #0	@ InstID,
	bne	.L285	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	r4, [r3, #0]	@ D.35722, s_pFspInst
	cmp	r4, #0	@ D.35722,
	beq	.L285	@,
	movw	r0, #:lower16:g_vdm_hal_fun_ptr	@ tmp173,
	movt	r0, #:upper16:g_vdm_hal_fun_ptr	@ tmp173,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.35725, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r0, #36]	@ D.35731, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldrb	r7, [r4, #60]	@ zero_extendqisi2	@ D.35727, <variable>.stInstCfg.s32DispLoopEnable
	cmp	ip, #0	@ D.35731,
	beq	.L285	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, sl	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r1, r9	@, MemSize
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #40	@ tmp177,
	str	lr, [sp, #4]	@ tmp177,
	ldrsb	lr, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	r6, [sp, #12]	@ InstID,
	str	r5, [sp, #16]	@ tmp170,
	str	lr, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	mov	lr, #64	@ tmp182,
	str	lr, [sp, #20]	@ tmp182,
	blx	ip	@ D.35731
	cmp	r0, #0	@ Ret
	bne	.L285	@,
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r3, r7	@ D.35727, D.35727
	sxtb	r8, r8	@ D.35725, D.35725
	add	r2, r8, r3, asl #2	@, tmp188, D.35725, D.35727,
	strb	ip, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r2, r1	@ tmp188, MemArrange.ValidFrameNum
	bgt	.L285	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	beq	.L319	@,
	ldrb	r1, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r1, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L288:
	ldr	r7, [sp, #440]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	add	ip, r4, #27648	@ ivtmp.1408, D.35722,
	movw	r2, #34640	@ tmp205,
	mov	r0, #0	@ i,
	add	r3, ip, #160	@ ivtmp.1408, ivtmp.1408,
	ldrsb	r6, [r4, #10]	@ D.35760, <variable>.s32DecFsNum
	mov	r5, r2	@ tmp404, tmp205
	add	ip, sp, #32	@ ivtmp.1474,,
	mov	r1, r0	@ tmp403, i
	str	r7, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L291	@
.L321:
	str	r0, [r2, #-8]	@ tmp409, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp409,
	ldr	r7, [ip, #8]	@ tmp447, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1474, tmp410,
	str	r7, [r3, #52]	@ tmp447, <variable>.PhyAddr
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
	strb	r1, [r2, #-12]	@ tmp403, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp403, <variable>.IsTfRef
	str	fp, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp403, <variable>.DispState
	ldr	r3, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r3, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r3, r2, #52	@ ivtmp.1408, tmp411,
	beq	.L320	@,
.L291:
	cmp	r6, r0	@ D.35760, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp403, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp409, i,
	ldrgt	r2, [ip, #8]	@ tmp209, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp410, ivtmp.1474,
	ldrle	r2, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.35760, tmp409
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
	strb	r1, [r3, #-12]	@ tmp403, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp403, <variable>.IsTfRef
	str	r2, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r2, r3, #52	@ tmp411, ivtmp.1408,
	strb	r1, [r3, #-10]	@ tmp403, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bgt	.L321	@,
	str	r1, [r2, #-8]	@ tmp403, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp409,
	ldr	r7, [sp, #40]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.1474, tmp410,
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
	strb	r1, [r2, #-12]	@ tmp403, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp403, <variable>.IsTfRef
	str	r3, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	add	r3, r2, #52	@ ivtmp.1408, tmp411,
	strb	r1, [r2, #-10]	@ tmp403, <variable>.DispState
	ldr	fp, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	fp, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L291	@,
.L320:
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, sp, #448	@,,
	movw	fp, #34456	@ tmp242,
	mov	r3, #0	@ tmp243,
	mov	r2, #1	@ tmp240,
	str	r3, [r4, fp]	@ tmp243, <variable>.PhyFsID
	add	ip, r5, r1, asl #2	@, tmp249,, <variable>.s32DecFsNum,
	strb	r2, [r4, #12]	@ tmp240, <variable>.s32TfFsNum
	movw	r0, #34464	@ tmp244,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	fp, [ip, #-408]	@ tmp251, MemArrange.FrameAddr
	movw	r2, #34476	@ tmp254,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	fp, [r4, r0]	@ tmp251, <variable>.PhyAddr
	movw	r0, #34480	@ tmp256,
	ldr	fp, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r5, [r4, r2]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	movw	r2, #34472	@ tmp252,
	str	ip, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	str	fp, [r4, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	fp, #34484	@ tmp258,
	ldr	r0, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	r0, [r4, fp]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	movw	r0, #34488	@ tmp260,
	ldr	ip, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	fp, #34454	@ tmp270,
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	r0, #34452	@ tmp264,
	ldr	ip, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, fp]	@ tmp243, <variable>.DispState
	movw	fp, #34492	@ tmp262,
	strb	r3, [r4, r0]	@ tmp243, <variable>.IsDecRef
	movw	r0, #34453	@ tmp267,
	str	ip, [r4, fp]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp243, <variable>.IsTfRef
	bne	.L292	@,
	mov	fp, r2	@ prephitmp.1419, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L294:
	add	r1, r4, #30976	@ tmp276, D.35722,
	mov	r2, #0	@ ivtmp.1373,
	add	r9, r1, #180	@ ivtmp.1385, tmp276,
	add	sl, r1, #152	@ ivtmp.1371, tmp276,
	add	r8, r1, #160	@ ivtmp.1377, tmp276,
	add	r7, r1, #168	@ ivtmp.1379, tmp276,
	add	r6, r1, #172	@ ivtmp.1381, tmp276,
	add	r5, r1, #176	@ ivtmp.1383, tmp276,
	mov	r3, r2	@ i.1464, ivtmp.1373
	mov	r1, r2	@ tmp401, ivtmp.1373
	b	.L293	@
.L323:
	str	r3, [sl, #0]	@ i.1464, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp292, i.1464, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp293, tmp292, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	r0, fp, r0, asl #2	@, tmp297,, tmp293,
	ldr	r0, [r0, #-408]	@ tmp299, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp299, <variable>.PhyAddr
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
	strb	r1, [ip, #150]	@ tmp401, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp401, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp401, <variable>.IsTfRef
.L296:
	add	r3, r3, #1	@ i.1464, i.1464,
	add	sl, sl, #52	@ ivtmp.1371, ivtmp.1371,
	cmp	r3, #64	@ i.1464,
	add	r2, r2, #52	@ ivtmp.1373, ivtmp.1373,
	add	r8, r8, #52	@ ivtmp.1377, ivtmp.1377,
	add	r7, r7, #52	@ ivtmp.1379, ivtmp.1379,
	add	r6, r6, #52	@ ivtmp.1381, ivtmp.1381,
	add	r5, r5, #52	@ ivtmp.1383, ivtmp.1383,
	add	r9, r9, #52	@ ivtmp.1385, ivtmp.1385,
	beq	.L322	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.1419, <variable>.s32DispFsNum
.L293:
	add	r0, r4, r2	@ D.38270, D.35722, ivtmp.1373
	cmp	fp, r3	@ prephitmp.1419, i.1464
	add	ip, r0, #30976	@ tmp305, D.38270,
	mov	r0, ip	@ tmp337, tmp305
	bgt	.L323	@,
	str	r1, [sl, #0]	@ tmp401, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp325, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #448	@,,
	add	ip, fp, ip, asl #2	@, tmp329,, tmp325,
	ldr	ip, [ip, #-408]	@ tmp331, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp331, <variable>.PhyAddr
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
	strb	r1, [r0, #150]	@ tmp401, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp401, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp401, <variable>.IsTfRef
	b	.L296	@
.L319:
	ldrsb	r6, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r6, #0	@ <variable>.s8LowBufEnable,
	beq	.L287	@,
	ldr	r0, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	movw	fp, #34644	@ tmp198,
	strb	r0, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	ldr	r7, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r7, [r4, fp]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	b	.L288	@
.L322:
	ldr	r3, [sp, #436]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.1353, D.35722,
	mov	ip, #0	@ tmp400,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	movge	r3, #20	@ tmp354,
	uxtb	r5, r3	@ prephitmp.1319, tmp354
	strb	r5, [r4, #13]	@ prephitmp.1319, <variable>.s32PmvNum
	ldr	r0, [sp, #312]	@ tmp431, MemArrange.PMVAddr
	add	r5, sp, #32	@,,
	mov	r3, #1	@ i.1465,
	strb	ip, [r4, #14]	@ tmp400, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.1359, D.35722,
	str	r0, [r1, #0]	@ tmp431, <variable>.PmvAddr
	add	r0, r5, #4	@ ivtmp.1407,,
	add	r1, r1, #4	@ ivtmp.1353, ivtmp.1353,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1319, <variable>.s32PmvNum
	b	.L301	@
.L324:
	ldr	r5, [r0, #280]	@ tmp435, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp400, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp435, <variable>.PmvAddr
.L315:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.1319, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.1465, tmp405,
	add	r0, r0, #4	@ ivtmp.1407, tmp406,
	add	r1, r1, #4	@ ivtmp.1353, tmp407,
	add	r2, r2, #1	@ ivtmp.1359, tmp408,
.L301:
	sxtb	r5, r5	@ prephitmp.1319, prephitmp.1319
	cmp	r5, r3	@ prephitmp.1319, i.1465
	add	r3, r3, #1	@ tmp405, i.1465,
	ldrgt	r5, [r0, #280]	@ tmp358, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp406, ivtmp.1407,
	ldrle	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp405,
	strb	ip, [r2, #14]	@ tmp400, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp408, ivtmp.1359,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp407, ivtmp.1353,
	beq	.L300	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.1319, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.1319, tmp405
	bgt	.L324	@,
	ldr	r5, [sp, #312]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp400, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L315	@
.L300:
	movw	r1, #27808	@ tmp369,
	ldr	ip, [sp, #432]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, r1]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp364,
	movw	r2, #27756	@ tmp368,
	movw	r1, #27748	@ tmp366,
	str	ip, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp367,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r2, #27764	@ tmp371,
	str	r3, [r4, r1]	@ tmp367, <variable>.stDummyPhyFs.PhyFsID
	ldr	ip, [sp, #32]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r0, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r2]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	ip, #27768	@ tmp373,
	str	r0, [r4, ip]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	r0, #27772	@ tmp375,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	movw	r2, #27776	@ tmp377,
	ldr	r1, [sp, #296]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	movw	ip, #27780	@ tmp379,
	mov	r0, r3	@ D.35720, tmp367
	str	r1, [r4, r2]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	movw	r2, #27744	@ tmp383,
	ldr	r1, [sp, #300]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r4, ip]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	ip, #27745	@ tmp386,
	ldr	r1, [sp, #304]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r2]	@ tmp367, <variable>.stDummyPhyFs.IsDecRef
	movw	r2, #27784	@ tmp381,
	strb	r3, [r4, ip]	@ tmp367, <variable>.stDummyPhyFs.IsTfRef
	movw	ip, #27746	@ tmp389,
	str	r1, [r4, r2]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	r2, #34656	@ tmp392,
	strb	r3, [r4, ip]	@ tmp367, <variable>.stDummyPhyFs.DispState
	movw	r3, #34644	@ tmp394,
	ldr	r1, [sp, #444]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	str	r1, [r4, r2]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	ip, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	ip, [r4, r3]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	ldr	r2, [sp, #36]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r1, [sp, #28]	@, %sfp
	str	r2, [r1, #0]	@ MemArrange.TotalMemUsed,
.L281:
	add	sp, sp, #452	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L292:
	ldr	ip, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r3, [r4, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r0, ip, #1	@ tmp283, MemArrange.ValidFrameNum,
	rsb	fp, r1, r0	@ tmp282, <variable>.s32DecFsNum, tmp283
	cmp	fp, #25	@ tmp282,
	movlt	r2, fp	@ tmp415, tmp282
	movge	r2, #25	@ tmp415,
	uxtb	r0, r2	@ prephitmp.1419,
	strb	r0, [r4, #11]	@ tmp12, <variable>.s32DispFsNum
	sxtb	fp, r0	@ prephitmp.1419,
	cmp	r3, fp	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.1419
	ble	.L294	@,
.L285:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35720,
	b	.L281	@
.L287:
	ldr	r2, [sp, #308]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r2, #40	@ MemArrange.ValidFrameNum,
	movge	r2, #40	@ tmp200,
	strb	r2, [r4, #10]	@ tmp200, <variable>.s32DecFsNum
	b	.L288	@
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
	mov	r6, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #44	@,,
	mov	r1, #416	@,
	mov	r3, #0	@ tmp180,
	mov	sl, r2	@ s32Num, s32Num
	str	r3, [sp, #460]	@ tmp180, s32UsedMemSize
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L355	@,
	cmp	r6, #0	@ VoUsingFrameArray,
	beq	.L355	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp183,
	movt	r0, #:upper16:.LANCHOR0	@ tmp183,
	ldr	r5, [r0, #0]	@ pstInst, s_pFspInst
	cmp	r5, #0	@ pstInst,
	beq	.L355	@,
	movw	r1, #34648	@ tmp184,
	ldr	r2, [r6, #0]	@ D.36125, <variable>.FrameAddr
	ldr	r8, [r5, r1]	@ s32VdhMemAddr, <variable>.MemAddr
	movw	r0, #34644	@ tmp186,
	movw	r3, #34656	@ tmp187,
	ldr	r7, [r5, r0]	@ <variable>.TotalMemUsed, <variable>.TotalMemUsed
	ldr	lr, [r5, r3]	@ <variable>.StrideByte, <variable>.StrideByte
	cmp	r8, r2	@ s32VdhMemAddr, D.36125
	movw	ip, #34652	@ tmp185,
	rsblt	r4, r8, r2	@ s32FreeSize.1520, s32VdhMemAddr, D.36125
	ldr	r1, [r5, ip]	@, <variable>.MemSize
	add	r7, r7, lr	@ s32VdhTotalMemUse, <variable>.TotalMemUsed, <variable>.StrideByte
	cmp	r4, r7	@ s32FreeSize.1520, s32VdhTotalMemUse
	str	r1, [sp, #32]	@, %sfp
	movge	r2, #1	@,
	strge	r2, [sp, #36]	@, %sfp
	bge	.L345	@,
	sub	ip, sl, #1	@ temp.1558, s32Num,
	ldr	r3, [sp, #32]	@, %sfp
	add	r0, r3, r8	@ D.36133,, s32VdhMemAddr
	add	r3, r6, ip, asl #3	@, D.36137, VoUsingFrameArray, temp.1558,
	ldr	r1, [r6, ip, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	lr, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r1, lr, r1	@ D.36140, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r0, r1	@ D.36133, D.36140
	rsbgt	r0, r1, r0	@ s32FreeSize.1521, D.36140, D.36133
	movle	r0, #0	@ s32FreeSize.1521,
	cmp	r0, r7	@ s32FreeSize.1521, s32VdhTotalMemUse
	bge	.L335	@,
	cmp	ip, #0	@ temp.1558,
	ble	.L355	@,
	ldr	r1, [r6, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r6, #8	@ D.36151, VoUsingFrameArray,
	ldr	r0, [r6, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r2, r1	@ D.36158, D.36125, <variable>.FrameSize
	rsb	r2, r1, r0	@ tmp195, D.36158, <variable>.FrameAddr
	cmp	r7, r2	@ s32VdhTotalMemUse, tmp195
	movle	r2, r6	@ VoUsingFrameArray.1523, VoUsingFrameArray
	ble	.L338	@,
	tst	ip, #1	@ temp.1558,
	mov	lr, #0	@ i,
	bne	.L340	@,
	ldr	r4, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r2, r3	@ VoUsingFrameArray.1523, ivtmp.1514
	ldr	r1, [r3, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	lr, #1	@ i,
	ldr	r0, [r3, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r4, r1	@ D.36158, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r0, r1, r0	@ s32FreeSize.1528, D.36158, <variable>.FrameAddr
	cmp	r7, r0	@ s32VdhTotalMemUse, s32FreeSize.1528
	bgt	.L340	@,
.L338:
	movw	r0, #34648	@ tmp204,
	movw	lr, #34652	@ tmp205,
	str	r1, [r5, r0]	@ D.36158, <variable>.MemAddr
	str	r7, [r5, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	ip, [r2, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, ip, r7	@ tmp207, <variable>.FrameSize, s32VdhTotalMemUse
	str	r3, [r2, #4]	@ tmp207, <variable>.FrameSize
	b	.L339	@
.L335:
	movw	r0, #34648	@ tmp197,
	movw	lr, #34652	@ tmp198,
	str	r1, [r5, r0]	@ D.36140, <variable>.MemAddr
	str	r7, [r5, lr]	@ s32VdhTotalMemUse, <variable>.MemSize
	ldr	ip, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, ip, r7	@ tmp200, <variable>.FrameSize, s32VdhTotalMemUse
	str	r2, [r3, #4]	@ tmp200, <variable>.FrameSize
.L339:
	movw	r3, #34648	@ tmp265,
	movw	ip, #34652	@ tmp267,
	ldr	r1, [r5, r3]	@, <variable>.MemAddr
	mov	r0, #0	@,
	ldr	r2, [r5, ip]	@, <variable>.MemSize
	add	r3, sp, #460	@,,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	beq	.L385	@,
	ldr	r3, [sp, #460]	@ s32UsedMemSize, s32UsedMemSize
	cmp	r7, r3	@ s32VdhTotalMemUse, s32UsedMemSize
	movge	r3, #0	@,
	strge	r3, [sp, #36]	@, %sfp
	blt	.L355	@,
.L345:
	ldrsb	r1, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp272,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp272,
	ble	.L343	@,
	add	r9, r5, #27648	@ ivtmp.1509, pstInst,
	mov	r3, #0	@ i.1529,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp272,
	add	r0, r9, #160	@ ivtmp.1509, ivtmp.1509,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp272,
	mov	ip, r3	@ tmp275, i.1529
	movw	fp, #34640	@ tmp276,
.L346:
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r3, asl #4	@ tmp214, i.1529,
	add	r2, r3, #13504	@ tmp227, i.1529,
	add	r3, r3, #1	@ i.1529, i.1529,
	add	r9, r1, lr	@ tmp215, tmp214, s_pstVfmwChan
	add	r2, r2, #23	@ tmp227, tmp227,
	add	lr, r9, #216064	@ tmp216, tmp215,
	add	r9, lr, #360	@ tmp216, tmp216,
	str	ip, [r9, #0]	@ tmp275, <variable>.eFrameState
	ldr	r9, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r0], #52	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r1, r1, r9	@ tmp222, tmp214, s_pstVfmwChan
	add	r1, r1, #216064	@ tmp223, tmp222,
	add	r1, r1, #360	@ tmp223, tmp223,
	str	lr, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, fp]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r1, r2, asl #4]	@ <variable>.ImgSlotLen, <variable>.s32FrameSize
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, r1, r2, asl #4	@, tmp237, s_pstVfmwChan, tmp227,
	str	ip, [r2, #4]	@ tmp275, <variable>.s32UsingCount
	ldrsb	lr, [r5, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	lr, r3	@ <variable>.s32DecFsNum, i.1529
	bgt	.L346	@,
.L343:
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp242,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp242,
	ldr	r0, [r4, #0]	@ temp.1534, s_pstVfmwChan
	ldr	ip, [r3, #36]	@ D.36183, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36183,
	ldr	r1, [r0, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r0, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r0, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L347	@,
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
	blx	ip	@ D.36183
	cmp	r0, #0	@,
	bne	.L347	@,
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #36]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	ip, [r4, #0]	@ temp.1536, s_pstVfmwChan
	ldr	r1, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	beq	.L386	@,
.L349:
	sub	sl, sl, #1	@ temp.1558, s32Num,
	ldr	lr, [sp, #32]	@, %sfp
	add	r3, r6, sl, asl #3	@, temp.1542, VoUsingFrameArray, temp.1558,
	add	r8, lr, r8	@ temp.1538,, s32VdhMemAddr
	ldr	lr, [r6, sl, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r2, [r3, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r2, lr	@ temp.1545, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r8, r3	@ temp.1538, temp.1545
	rsbgt	r8, r3, r8	@ s32FreeSize, temp.1545, temp.1538
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, r1	@ s32FreeSize, s32DnrSize
	strge	r3, [ip, #236]	@ temp.1545, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.36114,
	bge	.L327	@,
	cmp	sl, #0	@ temp.1558,
	ble	.L355	@,
	ldr	lr, [r6, #0]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldmib	r6, {r2, r3}	@ phole ldm
	add	r2, lr, r2	@ temp.1548, <variable>.FrameAddr, <variable>.FrameSize
	rsb	r0, r2, r3	@ tmp259, temp.1548, <variable>.FrameAddr
	cmp	r1, r0	@ s32DnrSize, tmp259
	ble	.L356	@,
	tst	sl, #1	@ temp.1558,
	mov	r0, #0	@ i.1553,
	bne	.L358	@,
	ldr	r2, [r6, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	mov	r0, #1	@ i.1553,
	ldr	r4, [r6, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r6, r6, #8	@ ivtmp.1504, ivtmp.1504,
	add	r2, r2, r3	@ temp.1548, <variable>.FrameSize, <variable>.FrameAddr
	rsb	lr, r2, r4	@ s32FreeSize.1550, temp.1548, <variable>.FrameAddr
	cmp	r1, lr	@ s32DnrSize, s32FreeSize.1550
	bgt	.L358	@,
	b	.L356	@
.L359:
	ldr	r5, [r6, #12]	@ <variable>.FrameSize, <variable>.FrameSize
	ldr	r2, [r6, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r4, [r6, #16]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r6, r3, #8	@ ivtmp.1504, tmp280,
	add	r2, r5, r2	@ temp.1548, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r2, r4	@ s32FreeSize.1550, temp.1548, <variable>.FrameAddr
	cmp	r1, r4	@ s32DnrSize, s32FreeSize.1550
	ble	.L356	@,
	add	r2, r3, #8
	ldmia	r2, {r2, r4, lr}	@ phole ldm
	add	r2, r4, r2	@ temp.1548, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r3, r2, lr	@ s32FreeSize.1550, temp.1548, <variable>.FrameAddr
	cmp	r1, r3	@ s32DnrSize, s32FreeSize.1550
	ble	.L356	@,
.L358:
	add	lr, r0, #1	@ tmp281, i.1553,
	add	r3, r6, #8	@ tmp280, ivtmp.1504,
	cmp	lr, sl	@ tmp281, temp.1558
	add	r0, lr, #1	@ i.1553, tmp281,
	blt	.L359	@,
.L355:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36114,
.L327:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L347:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sp, #48]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [sp, #36]	@, %sfp
	str	ip, [r3, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	cmp	r2, #1	@,
	ldr	ip, [r4, #0]	@ temp.1536, s_pstVfmwChan
	ldr	r1, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	bne	.L349	@,
.L386:
	ldr	lr, [r6, #0]	@ temp.1537, <variable>.FrameAddr
	add	r7, r7, r8	@ D.36190, s32VdhTotalMemUse, s32VdhMemAddr
	cmp	lr, r7	@ temp.1537, D.36190
	rsbgt	lr, r7, lr	@ s32FreeSize.1522, D.36190, temp.1537
	movle	lr, #0	@ s32FreeSize.1522,
	cmp	lr, r1	@ s32FreeSize.1522, s32DnrSize
	strge	r7, [ip, #236]	@ D.36190, <variable>.s32OffLineDnrMemAddr
	movge	r0, #0	@ D.36114,
	blt	.L349	@,
	b	.L327	@
.L341:
	ldmia	r3, {r1, r9}	@ phole ldm
	ldr	r4, [r0, #8]!	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r9, r1	@ D.36158, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r4, r1, r4	@ s32FreeSize.1528, D.36158, <variable>.FrameAddr
	cmp	r7, r4	@ s32VdhTotalMemUse, s32FreeSize.1528
	ble	.L338	@,
	ldr	r1, [r3, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	mov	r2, r0	@ VoUsingFrameArray.1523, tmp285
	ldr	r4, [r0, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r3, r0, #8	@ ivtmp.1514, VoUsingFrameArray.1523,
	ldr	r0, [r0, #8]	@ <variable>.FrameAddr, <variable>.FrameAddr
	add	r1, r4, r1	@ D.36158, <variable>.FrameSize, <variable>.FrameAddr
	rsb	r0, r1, r0	@ s32FreeSize.1528, D.36158, <variable>.FrameAddr
	cmp	r7, r0	@ s32VdhTotalMemUse, s32FreeSize.1528
	ble	.L338	@,
.L340:
	add	r2, lr, #1	@ tmp286, i,
	mov	r0, r3	@ tmp285, ivtmp.1514
	cmp	ip, r2	@ temp.1558, tmp286
	add	lr, r2, #1	@ i, tmp286,
	mov	r2, r3	@ VoUsingFrameArray.1523, ivtmp.1514
	bgt	.L341	@,
	b	.L355	@
.L356:
	str	r2, [ip, #236]	@ temp.1548, <variable>.s32OffLineDnrMemAddr
	mov	r0, #0	@ D.36114,
	b	.L327	@
.L385:
	str	r0, [sp, #28]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #28]	@,
	b	.L327	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L415	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp181,
	movt	r8, #:upper16:.LANCHOR0	@ tmp181,
	ldr	r7, [r8, #0]	@ D.35612, s_pFspInst
	cmp	r7, #0	@ D.35612,
	beq	.L415	@,
	add	r0, r7, #96	@, D.35612,
	mov	r1, #27648	@,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L391	@,
	add	r4, r7, #27648	@ ivtmp.1601, D.35612,
	mov	sl, r8	@ tmp184, tmp181
	add	r4, r4, #192	@ ivtmp.1601, ivtmp.1601,
	mov	r6, r5	@ tmp185, i
	b	.L396	@
.L394:
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.37367
.L393:
	ldrsb	r1, [r4, #-42]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L392	@,
	ldr	r3, [r8, #16]	@ D.37372, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ temp.1602, <variable>.PhyAddr
	cmp	r3, #0	@ D.37372,
	beq	.L416	@,
	mov	r0, #0	@,
	blx	r3	@ D.37372
.L392:
	strb	r6, [r4, #-44]	@ tmp185, <variable>.IsDecRef
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp185, <variable>.DispState
	str	r6, [r4], #52	@ tmp185, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	ble	.L391	@,
.L396:
	ldr	r1, [r4, #-32]	@ D.35621, <variable>.PhyAddr
	cmp	r1, #0	@ D.35621,
	beq	.L392	@,
	ldr	r0, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r0, #0	@ g_IsFrameIntfValid,
	beq	.L392	@,
	ldrsb	r2, [r4, #-44]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L393	@,
	ldr	r3, [sl, #20]	@ D.37367, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37367,
	bne	.L394	@,
	bl	vfmw_dprint_nothing	@
	b	.L393	@
.L416:
	bl	vfmw_dprint_nothing	@
	strb	r6, [r4, #-44]	@ tmp185, <variable>.IsDecRef
	strb	r6, [r4, #-42]	@ tmp185, <variable>.DispState
	add	r5, r5, #1	@ i, i,
	str	r6, [r4], #52	@ tmp185, <variable>.u32Tick
	ldrsb	ip, [r7, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	ip, r5	@ <variable>.s32DecFsNum, i
	bgt	.L396	@,
.L391:
	ldrsb	ip, [r7, #11]	@ D.35636, <variable>.s32DispFsNum
	cmp	ip, #0	@ D.35636,
	ble	.L397	@,
	add	r4, r7, #30976	@ tmp170, D.35612,
	cmp	ip, #1	@ D.35636,
	add	lr, r4, #192	@ ivtmp.1593, tmp170,
	sub	r3, ip, #1	@ tmp191, D.35636,
	and	r5, r3, #1	@ tmp193, tmp191,
	mov	r0, #1	@ i.1604,
	mov	r3, #0	@ tmp183,
	add	r2, r4, #244	@ ivtmp.1593, tmp170,
	str	r3, [lr, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [lr, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [lr, #-42]	@ tmp183, <variable>.DispState
	ble	.L397	@,
	cmp	r5, #0	@ tmp193,
	beq	.L398	@,
	mov	r0, #2	@ i.1604,
	cmp	ip, r0	@ D.35636, i.1604
	str	r3, [r2, #0]	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	add	r2, r4, #296	@ ivtmp.1593, tmp170,
	ble	.L397	@,
.L398:
	add	r0, r0, #2	@ i.1604, i.1604,
	mov	r1, r2	@ tmp195, ivtmp.1593
	cmp	ip, r0	@ D.35636, i.1604
	str	r3, [r1], #52	@ tmp183, <variable>.u32Tick
	strb	r3, [r2, #-44]	@ tmp183, <variable>.IsDecRef
	strb	r3, [r2, #-42]	@ tmp183, <variable>.DispState
	str	r3, [r2, #52]	@ tmp183, <variable>.u32Tick
	add	r2, r2, #104	@ ivtmp.1593, ivtmp.1593,
	strb	r3, [r1, #-42]	@ tmp183, <variable>.DispState
	strb	r3, [r1, #-44]	@ tmp183, <variable>.IsDecRef
	bgt	.L398	@,
.L397:
	ldrsb	ip, [r7, #13]	@ D.35638, <variable>.s32PmvNum
	cmp	ip, #0	@ D.35638,
	ble	.L399	@,
	cmp	ip, #1	@ D.35638,
	sub	r0, ip, #1	@ tmp186, D.35638,
	and	r1, r0, #1	@ tmp188, tmp186,
	mov	r2, #1	@ i.1605,
	mov	r0, #0	@ tmp182,
	add	r3, r7, r2	@ ivtmp.1586, D.35612,
	strb	r0, [r7, #14]	@ tmp182, <variable>.IsPmvInUse
	ble	.L399	@,
	cmp	r1, #0	@ tmp188,
	beq	.L400	@,
	mov	r2, #2	@ i.1605,
	cmp	ip, r2	@ D.35638, i.1605
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1586, ivtmp.1586,
	ble	.L399	@,
.L400:
	add	r2, r2, #2	@ i.1605, i.1605,
	add	lr, r3, #1	@ tmp189, ivtmp.1586,
	cmp	ip, r2	@ D.35638, i.1605
	strb	r0, [r3, #14]	@ tmp182, <variable>.IsPmvInUse
	strb	r0, [lr, #14]	@ tmp182, <variable>.IsPmvInUse
	add	r3, lr, #1	@ ivtmp.1586, tmp189,
	bgt	.L400	@,
.L399:
	mov	r0, #0	@ tmp179,
	str	r0, [r7, #36]	@ tmp179, <variable>.u32InstTick
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L415:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35610,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bne	.L423	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r4, [r3, #0]	@ D.35538, s_pFspInst
	cmp	r4, #0	@ D.35538,
	beq	.L423	@,
	ldr	r5, [r4, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r5, #0	@ <variable>.eFspInstState,
	mvnne	r0, #0	@ D.35536,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, r4	@, D.35538
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r1, #1	@ tmp139,
	mov	r0, r5	@ D.35536, <variable>.eFspInstState
	str	r1, [r4, #4]	@ tmp139, <variable>.eFspInstState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L423:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35536,
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
	beq	.L429	@,
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
	movne	ip, #0	@ D.35513,
	moveq	ip, #0	@ D.35513,
	stmeqia	sl!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldreq	r3, [r7, #0]	@ stTmpPreInfo, stTmpPreInfo
	streq	r3, [r6, #0]	@ stTmpPreInfo,
.L426:
	mov	r0, ip	@, D.35513
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L429:
	bl	vfmw_dprint_nothing	@
	mvn	ip, #0	@ D.35513,
	b	.L426	@
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	bne	.L434	@,
	cmp	r1, #0	@ pstFspInstCfg,
	beq	.L434	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r2, [r3, #0]	@ D.35678, s_pFspInst
	cmp	r2, #0	@ D.35678,
	beq	.L434	@,
	ldr	r2, [r2, #4]	@ <variable>.eFspInstState, <variable>.eFspInstState
	cmp	r2, #1	@ <variable>.eFspInstState,
	bne	.L434	@,
	movw	r1, #:lower16:s_pstVfmwChan	@ tmp144,
	movt	r1, #:upper16:s_pstVfmwChan	@ tmp144,
	strb	r0, [r4, #0]	@ InstID, <variable>.s32DispLoopEnable
	ldr	r0, [r1, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r5, [r3, #0]	@ pstInst, s_pFspInst
	ldr	r3, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L436	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L436:
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	add	r5, r5, #60	@ tmp147, pstInst,
	mov	r6, #0	@ D.35672,
	mov	ip, r5	@ tmp153, tmp147
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstFspInstCfg,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp153,,,,
	mov	r2, ip	@ tmp155, tmp153
	ldr	ip, [r4, #0]	@ tmp150,* pstFspInstCfg
	mov	r0, r6	@, D.35672
	str	ip, [r2, #0]	@ tmp150, <variable>.stInstCfg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L434:
	mvn	r6, #0	@ D.35672,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, D.35672
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L460	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp154,
	movt	r6, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r8, [r6, #0]	@ D.35574, s_pFspInst
	cmp	r8, #0	@ D.35574,
	addne	r4, r8, #27648	@ ivtmp.1706, D.35574,
	addne	r4, r4, #160	@ ivtmp.1706, ivtmp.1706,
	movne	r7, r6	@ tmp155, tmp154
	bne	.L447	@,
	b	.L460	@
.L445:
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.37382
.L444:
	ldrsb	r1, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L443	@,
	ldr	r3, [r6, #16]	@ D.37387, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1711, <variable>.PhyAddr
	cmp	r3, #0	@ D.37387,
	beq	.L461	@,
	mov	r0, #0	@,
	blx	r3	@ D.37387
.L443:
	ldr	r1, [r4, #52]	@ D.35578, <variable>.PhyAddr
	add	r5, r5, #1	@ tmp157, i,
	add	r4, r4, #52	@ tmp158, ivtmp.1706,
	cmp	r1, #0	@ D.35578,
	beq	.L450	@,
	ldr	r2, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L450	@,
	ldrsb	ip, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	beq	.L451	@,
	ldr	r3, [r7, #20]	@ D.37382, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37382,
	beq	.L458	@,
	mov	r0, #0	@,
	mov	r2, r0	@,
	blx	r3	@ D.37382
.L451:
	ldrsb	lr, [r4, #-10]	@ <variable>.DispState, <variable>.DispState
	cmp	lr, #0	@ <variable>.DispState,
	beq	.L450	@,
	ldr	r3, [r6, #16]	@ D.37387, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #0]	@ temp.1711, <variable>.PhyAddr
	cmp	r3, #0	@ D.37387,
	beq	.L457	@,
	mov	r0, #0	@,
	blx	r3	@ D.37387
.L450:
	add	r5, r5, #1	@ i, tmp157,
	add	r4, r4, #52	@ ivtmp.1706, tmp158,
	cmp	r5, #64	@ i,
	beq	.L462	@,
.L447:
	ldr	r1, [r4, #0]	@ D.35578, <variable>.PhyAddr
	cmp	r1, #0	@ D.35578,
	beq	.L443	@,
	ldr	r3, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L443	@,
	ldrsb	r0, [r4, #-12]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r0, #0	@ <variable>.IsDecRef,
	beq	.L444	@,
	ldr	r3, [r7, #20]	@ D.37382, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.37382,
	bne	.L445	@,
	bl	vfmw_dprint_nothing	@
	b	.L444	@
.L462:
	mov	r0, r8	@, D.35574
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.35572,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L461:
	bl	vfmw_dprint_nothing	@
	b	.L443	@
.L458:
	bl	vfmw_dprint_nothing	@
	b	.L451	@
.L457:
	bl	vfmw_dprint_nothing	@
	b	.L450	@
.L460:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35572,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
.LFB1946:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r7, r0, #0	@ InstID, InstID
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r5, r1	@ NeedPhyFs, NeedPhyFs
	bne	.L579	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp721,
	movt	r8, #:upper16:.LANCHOR0	@ tmp721,
	ldr	r3, [r8, #0]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L579	@,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp718,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp718,
	add	r0, r8, #24	@, tmp721,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r6, #0]	@ pretmp.1752, s_pstVfmwChan
	ldr	r4, [r8, #0]	@ pstInst, s_pFspInst
	add	r1, r2, #216064	@ ivtmp.1826, pretmp.1752,
	ldr	r0, [r2, #1580]	@ pretmp.1754, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1826, ivtmp.1826,
	mov	r3, r4	@ ivtmp.1871, pstInst
	b	.L473	@
.L469:
	ldrsb	lr, [r3, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L470	@,
	ldrsb	lr, [r3, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	lr, #0	@ <variable>.s32DispState,
	beq	.L568	@,
.L470:
	add	r7, r7, #1	@ i.1854, i.1854,
	cmp	r0, #1	@ pretmp.1754,
	mov	r3, r7	@ tmp750, i.1854
	beq	.L581	@,
.L546:
	ldrsb	lr, [r2, #96]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L547	@,
	ldrsb	lr, [r2, #97]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	lr, #0	@ <variable>.s32DispState,
	beq	.L568	@,
.L547:
	add	r7, r3, #1	@ i.1854, tmp750,
	add	r1, ip, #16	@ ivtmp.1826, tmp752,
	cmp	r7, #64	@ i.1854,
	add	r3, r2, #432	@ ivtmp.1871, tmp751,
	beq	.L471	@,
.L473:
	cmp	r0, #1	@ pretmp.1754,
	add	r2, r3, #432	@ tmp751, ivtmp.1871,
	add	ip, r1, #16	@ tmp752, ivtmp.1826,
	bne	.L469	@,
	ldr	lr, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #0	@ <variable>.eFrameState,
	beq	.L469	@,
	add	r7, r7, #1	@ i.1854, i.1854,
	cmp	r0, #1	@ pretmp.1754,
	mov	r3, r7	@ tmp750, i.1854
	bne	.L546	@,
.L581:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L546	@,
	add	r7, r3, #1	@ i.1854, tmp750,
	add	r1, ip, #16	@ ivtmp.1826, tmp752,
	cmp	r7, #64	@ i.1854,
	add	r3, r2, #432	@ ivtmp.1871, tmp751,
	bne	.L473	@,
.L471:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L593	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36606,
	b	.L467	@
.L568:
	mov	r1, #432	@ tmp218,
	mul	r3, r1, r7	@ tmp217, tmp218, i.1854
	add	ip, r3, #96	@ tmp231, tmp217,
	add	r3, r3, r4	@ tmp219, tmp217, pstInst
	add	r0, r4, ip	@ tmp232, pstInst, tmp231
	add	r1, r3, #96	@ tmp220, tmp219,
	cmp	r0, #0	@ tmp232,
	strb	r7, [r1, #3]	@ i.1854, <variable>.s32LogicFsID
	strb	lr, [r1, #2]	@ <variable>.s32DispState, <variable>.IsDummyFs
	beq	.L471	@,
	add	ip, r3, #504	@ tmp239, tmp219,
	add	r0, r3, #512	@ tmp251, tmp219,
	cmp	r5, #0	@ NeedPhyFs,
	str	lr, [r3, #504]	@ <variable>.s32DispState, <variable>.pstDecodeFs
	str	lr, [ip, #4]	@ <variable>.s32DispState, <variable>.pstDispOutFs
	str	lr, [r3, #512]	@ <variable>.s32DispState, <variable>.pstTfOutFs
	str	lr, [r0, #4]	@ <variable>.s32DispState, <variable>.PmvAddr
	bne	.L582	@,
	add	lr, r4, #27648	@ D.36633, pstInst,
	mov	fp, #34560	@ tmp285,
	add	r2, lr, #96	@ D.36633, D.36633,
	str	r2, [r3, #512]	@ D.36633, <variable>.pstTfOutFs
	str	r2, [ip, #4]	@ D.36633, <variable>.pstDispOutFs
	mov	r9, #1	@ tmp301,
	str	r2, [r3, #504]	@ D.36633, <variable>.pstDecodeFs
	ldr	sl, [r4, fp]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	sl, [r0, #4]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldrb	r8, [r4, #13]	@ zero_extendqisi2	@ <variable>.s32PmvNum, <variable>.s32PmvNum
	strb	r9, [r1, #2]	@ tmp301, <variable>.IsDummyFs
	sub	r5, r8, #1	@ tmp294, <variable>.s32PmvNum,
	strb	r5, [r1, #4]	@ tmp294, <variable>.PmvIdc
.L477:
	mov	r5, #432	@ tmp470,
	mov	ip, #1	@ tmp473,
	mul	r7, r5, r7	@ tmp469, tmp470, i.1854
	mov	r1, #392	@,
	add	r5, r7, r4	@ tmp471, tmp469, pstInst
	add	r9, r7, #104	@ tmp531, tmp469,
	add	fp, r5, #504	@ tmp479, tmp471,
	add	r7, r5, #96	@ tmp472, tmp471,
	add	r8, r5, #152	@, tmp471,
	add	lr, r5, #144	@, tmp471,
	ldr	r3, [fp, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	add	r0, r4, r9	@, pstInst, tmp531
	strb	ip, [r7, #1]	@ tmp473, <variable>.s32DispState
	add	r2, r5, #136	@ tmp578, tmp471,
	str	r8, [sp, #8]	@, %sfp
	add	r9, r5, #208	@ tmp566, tmp471,
	strb	ip, [r3, #2]	@ tmp473, <variable>.DispState
	add	sl, r5, #224	@ tmp619, tmp471,
	str	lr, [sp, #12]	@, %sfp
	add	r8, r5, #216	@ tmp647, tmp471,
	str	ip, [r5, #500]	@ tmp473, <variable>.eLfsPmvState
	ldr	ip, [r5, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r3, [r4, #36]	@ D.36710, <variable>.u32InstTick
	str	r3, [r5, #496]	@ D.36710, <variable>.u32Tick
	str	r3, [ip, #44]	@ D.36710, <variable>.u32Tick
	ldr	lr, [fp, #4]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	ip, [r5, #496]	@ <variable>.u32Tick, <variable>.u32Tick
	str	ip, [lr, #44]	@ <variable>.u32Tick, <variable>.u32Tick
	ldr	r3, [r4, #36]	@ <variable>.u32InstTick, <variable>.u32InstTick
	add	ip, r3, #1	@ tmp513, <variable>.u32InstTick,
	str	ip, [r4, #36]	@ tmp513, <variable>.u32InstTick
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
	ldr	r3, [fp, #12]	@ D.36726, <variable>.PhyAddr
	str	r3, [r5, #208]	@ D.36726, <variable>.stDispImg.luma_phy_addr
	mov	r0, r3	@, D.36726
	ldr	r1, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r2, r1, r3	@ tmp573, <variable>.ChromOffset, D.36726
	str	r2, [r9, #4]	@ tmp573, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #136]	@, <variable>.stDispImg.luma_vir_addr
	ldr	r0, [r9, #4]	@, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #4]	@,
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_vir_addr
	ldr	r3, [r4, #12]	@ D.36739, <variable>.PhyAddr
	str	r3, [r5, #192]	@ D.36739, <variable>.stDispImg.top_luma_phy_addr
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	ip, r3, r1	@ D.36742, D.36739, <variable>.ChromOffset
	str	ip, [r5, #196]	@ D.36742, <variable>.stDispImg.top_chrom_phy_addr
	ldr	r0, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r2, r0, r3	@ tmp607, <variable>.Stride, D.36739
	str	r2, [r5, #200]	@ tmp607, <variable>.stDispImg.btm_luma_phy_addr
	ldr	r3, [r4, #20]	@ <variable>.Stride, <variable>.Stride
	add	r0, ip, r3	@ tmp614, D.36742, <variable>.Stride
	str	r0, [r5, #204]	@ tmp614, <variable>.stDispImg.btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ temp.1858, <variable>.PhyAddr
	str	r2, [r5, #224]	@ temp.1858, <variable>.stDispImg.luma_2d_phy_addr
	mov	r0, r2	@, temp.1858
	ldr	r1, [r4, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r1, r2	@ tmp626, <variable>.ChromOffset, temp.1858
	str	r3, [sl, #4]	@ tmp626, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #152]	@, <variable>.stDispImg.luma_2d_vir_addr
	ldr	r0, [sl, #4]	@, <variable>.stDispImg.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [sp, #8]	@, %sfp
	str	r0, [ip, #4]	@, <variable>.stDispImg.chrom_2d_vir_addr
	ldr	r0, [sp, #0]	@,
	ldr	r1, [r0, #12]	@ D.36757, <variable>.PhyAddr
	str	r1, [r5, #216]	@ D.36757, <variable>.stDispImg.luma_tf_phy_addr
	mov	r0, r1	@, D.36757
	ldr	r2, [fp, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	add	r3, r2, r1	@ tmp654, <variable>.ChromOffset, D.36757
	str	r3, [r8, #4]	@ tmp654, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #144]	@, <variable>.stDispImg.luma_tf_vir_addr
	ldr	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r8, [sp, #12]	@, %sfp
	add	r1, r5, #464	@ tmp675, tmp471,
	add	ip, r5, #472	@ tmp693, tmp471,
	mov	r3, #0	@ tmp682,
	movw	r2, #:lower16:217508	@ tmp708,
	movt	r2, #:upper16:217508	@ tmp708,
	str	r0, [r8, #4]	@, <variable>.stDispImg.chrom_tf_vir_addr
	ldr	r0, [fp, #48]	@ <variable>.ImgSize, <variable>.ImgSize
	str	r3, [ip, #4]	@ tmp682, <variable>.stDispImg.u32Circumrotate
	str	r3, [r1, #4]	@ tmp682, <variable>.stDispImg.u32Is1D
	str	r0, [r5, #464]	@ <variable>.ImgSize, <variable>.stDispImg.ImgSize
	str	r3, [r5, #480]	@ tmp682, <variable>.stDispImg.u32IsLastFrame
	str	r3, [r5, #472]	@ tmp682, <variable>.stDispImg.is_processed_by_dnr
	ldr	ip, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, .L593	@,
	ldr	r1, [ip, r2]	@ <variable>.u32ChanTick, <variable>.u32ChanTick
	str	r1, [r5, #488]	@ <variable>.u32ChanTick, <variable>.stDispImg.u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.36606, <variable>.s32LogicFsID
.L467:
	add	sp, sp, #60	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L582:
	ldrsb	r5, [r4, #10]	@ temp.1869, <variable>.s32DecFsNum
	cmp	r5, #0	@ temp.1869,
	movle	r5, lr	@ prephitmp.1757, <variable>.s32DispState
	ble	.L476	@,
	ldr	r2, [r6, #0]	@ pretmp.1764, s_pstVfmwChan
	add	r0, r4, #27648	@ ivtmp.1811, pstInst,
	add	r3, r0, #150	@ ivtmp.1811, ivtmp.1811,
	sub	ip, r5, #1	@ tmp744, temp.1869,
	add	r1, r2, #216064	@ ivtmp.1814, pretmp.1764,
	and	ip, ip, #1	@ tmp746, tmp744,
	ldr	r0, [r2, #1580]	@ pretmp.1766, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r1, r1, #360	@ ivtmp.1814, ivtmp.1814,
	cmp	r0, #1	@ pretmp.1766,
	beq	.L583	@,
.L536:
	ldrsb	r2, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r2, #0	@ <variable>.IsDecRef,
	beq	.L584	@,
.L537:
	mov	lr, #1	@ i.1855,
	cmp	lr, r5	@ i.1855, temp.1869
	add	r3, r3, #52	@ ivtmp.1811, ivtmp.1811,
	add	r1, r1, #16	@ ivtmp.1814, ivtmp.1814,
	bge	.L566	@,
	cmp	ip, #0	@ tmp746,
	beq	.L480	@,
	cmp	r0, lr	@ pretmp.1766,
	beq	.L567	@,
.L539:
	ldrsb	ip, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	ip, #0	@ <variable>.IsDecRef,
	bne	.L540	@,
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	beq	.L565	@,
.L540:
	add	lr, lr, #1	@ i.1855, i.1855,
	add	r3, r3, #52	@ ivtmp.1811, ivtmp.1811,
	cmp	lr, r5	@ i.1855, temp.1869
	add	r1, r1, #16	@ ivtmp.1814, ivtmp.1814,
	blt	.L480	@,
.L566:
	mov	ip, #432	@ tmp321,
	mla	r3, ip, r7, r4	@ tmp322, tmp321, i.1854, pstInst
	ldr	r5, [r3, #504]	@ prephitmp.1757, <variable>.pstDecodeFs
.L476:
	cmp	r5, #0	@ prephitmp.1757,
	beq	.L585	@,
.L481:
	mov	ip, #432	@ tmp340,
	add	r3, r4, #34304	@ tmp343, pstInst,
	mla	r0, ip, r7, r4	@ tmp341, tmp340, i.1854, pstInst
	add	lr, r3, #148	@ tmp343, tmp343,
	str	lr, [r0, #512]	@ tmp343, <variable>.pstTfOutFs
	ldrsb	ip, [r4, #13]	@ temp.1836, <variable>.s32PmvNum
	cmp	ip, #0	@ temp.1836,
	ble	.L490	@,
	ldrsb	r3, [r4, #14]	@ <variable>.IsPmvInUse, <variable>.IsPmvInUse
	mov	lr, ip	@ D.36670, temp.1836
	cmp	r3, #0	@ <variable>.IsPmvInUse,
	moveq	r1, r3	@ prephitmp.1760, <variable>.IsPmvInUse
	beq	.L492	@,
	tst	ip, #1	@ temp.1836,
	mov	r2, r4	@ ivtmp.1825, pstInst
	mov	r3, #0	@ i.1837,
	bne	.L493	@,
	ldrb	r1, [r4, #15]	@ zero_extendqisi2	@ D.36665, <variable>.IsPmvInUse
	mov	r3, #1	@ i.1837,
	add	r2, r4, r3	@ ivtmp.1825, pstInst,
	cmp	r1, #0	@ D.36665,
	bne	.L493	@,
.L562:
	uxtb	r1, r3	@ prephitmp.1760, i.1837
.L492:
	mov	r5, #432	@ tmp349,
	add	ip, r3, #8640	@ tmp358, i.1837,
	mla	r2, r5, r7, r4	@ tmp350, tmp349, i.1854, pstInst
	movw	r0, #34556	@ tmp365,
	strb	r1, [r2, #100]	@ prephitmp.1760, <variable>.PmvIdc
	ldr	lr, [r4, ip, asl #2]	@ tmp359, <variable>.PmvAddr
	str	lr, [r2, #516]	@ tmp359, <variable>.PmvAddr
	ldr	r1, [r4, r0]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r1, [r2, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	ldrsb	lr, [r4, #13]	@ D.36670, <variable>.s32PmvNum
	cmp	lr, r3	@ D.36670, i.1837
	ble	.L494	@,
.L490:
	ldrsb	r0, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	beq	.L498	@,
.L588:
	ldrsb	sl, [r4, #11]	@ D.36688, <variable>.s32DispFsNum
	cmp	sl, #0	@ D.36688,
	ble	.L577	@,
	add	ip, r4, #30976	@ tmp396, pstInst,
	cmn	ip, #148	@ tmp396,
	beq	.L501	@,
	movw	r1, #31124	@ tmp397,
	ldr	r5, [r4, r1]	@ tmp399,
	bic	lr, r5, #-16777216	@ tmp398, tmp399,
	cmp	lr, #0	@ tmp398,
	beq	.L501	@,
	tst	sl, #1	@ D.36688,
	add	r3, ip, #200	@ ivtmp.1784, tmp396,
	mov	r2, #0	@ i,
	mov	lr, #52	@ tmp722,
	bne	.L505	@,
	cmp	r3, #0	@ ivtmp.1784,
	mov	r2, #1	@ i,
	mov	r1, r2	@ i.1833, i
	beq	.L504	@,
	add	r5, lr, r4	@ tmp774, tmp722, pstInst
	add	r3, ip, #252	@ ivtmp.1784, tmp396,
	add	r0, r5, #30976	@ tmp775, tmp774,
	add	r5, r0, #144	@ tmp775, tmp775,
	ldr	ip, [r5, #4]	@ tmp776,
	bic	r0, ip, #-16777216	@ tmp777, tmp776,
	cmp	r0, #0	@ tmp777,
	bne	.L505	@,
.L504:
	mov	r3, #432	@ tmp425,
	mov	r2, #52	@ tmp419,
	mla	lr, r3, r7, r4	@ tmp426, tmp425, i.1854, pstInst
	mla	r1, r2, r1, r4	@ tmp422, tmp419, i.1833, pstInst
	add	r5, r1, #30976	@ prephitmp.1830, tmp422,
	add	r5, r5, #148	@ prephitmp.1830, prephitmp.1830,
	str	r5, [lr, #508]	@ prephitmp.1830, <variable>.pstDispOutFs
	b	.L500	@
.L592:
	ldr	sl, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	sl, #0	@ <variable>.eFrameState,
	bne	.L479	@,
.L478:
	ldrsb	sl, [r3, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	sl, #0	@ <variable>.IsDecRef,
	bne	.L479	@,
	ldrsb	r3, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r3, #0	@ <variable>.DispState,
	beq	.L565	@,
.L479:
	add	lr, lr, #1	@ i.1855, i.1855,
	cmp	r0, #1	@ pretmp.1766,
	mov	r3, lr	@ tmp747, i.1855
	beq	.L586	@,
.L543:
	ldrsb	r1, [r2, #-2]	@ <variable>.IsDecRef, <variable>.IsDecRef
	cmp	r1, #0	@ <variable>.IsDecRef,
	bne	.L544	@,
	ldrsb	r1, [r2, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r1, #0	@ <variable>.DispState,
	beq	.L565	@,
.L544:
	add	lr, r3, #1	@ i.1855, tmp747,
	add	r1, ip, #16	@ ivtmp.1814, tmp749,
	cmp	lr, r5	@ i.1855, temp.1869
	add	r3, r2, #52	@ ivtmp.1811, tmp748,
	bge	.L566	@,
.L480:
	cmp	r0, #1	@ pretmp.1766,
	add	r2, r3, #52	@ tmp748, ivtmp.1811,
	add	ip, r1, #16	@ tmp749, ivtmp.1814,
	bne	.L478	@,
	b	.L592	@
.L495:
	ldrb	r5, [r2, #15]	@ zero_extendqisi2	@ D.36665, <variable>.IsPmvInUse
	add	r2, r1, #1	@ ivtmp.1825, tmp738,
	cmp	r5, #0	@ D.36665,
	beq	.L562	@,
	ldrb	r5, [r1, #15]	@ zero_extendqisi2	@ D.36665, <variable>.IsPmvInUse
	add	r3, r3, #1	@ i.1837, i.1837,
	cmp	r5, #0	@ D.36665,
	beq	.L562	@,
.L493:
	add	r3, r3, #1	@ i.1837, i.1837,
	add	r1, r2, #1	@ tmp738, ivtmp.1825,
	cmp	r3, ip	@ i.1837, temp.1836
	blt	.L495	@,
.L494:
	cmp	lr, #0	@ D.36670,
	ble	.L496	@,
	ldrsb	ip, [r4, #13]	@ temp.1840, <variable>.s32PmvNum
	mov	r2, #1	@ i.1841,
	mov	r0, #0	@ tmp723,
	strb	r0, [r4, #14]	@ tmp723, <variable>.IsPmvInUse
	cmp	ip, r2	@ temp.1840,
	sub	r3, ip, #1	@ tmp729, temp.1840,
	and	r1, r3, r2	@ tmp731, tmp729,
	add	r3, r4, r2	@ ivtmp.1844, pstInst,
	ble	.L496	@,
	cmp	r1, #0	@ tmp731,
	beq	.L497	@,
	mov	r2, #2	@ i.1841,
	cmp	ip, r2	@ temp.1840, i.1841
	strb	r0, [r3, #14]	@ tmp723, <variable>.IsPmvInUse
	add	r3, r3, #1	@ ivtmp.1844, ivtmp.1844,
	ble	.L496	@,
.L497:
	add	r2, r2, #2	@ i.1841, i.1841,
	add	r1, r3, #1	@ tmp733, ivtmp.1844,
	cmp	ip, r2	@ temp.1840, i.1841
	strb	r0, [r3, #14]	@ tmp723, <variable>.IsPmvInUse
	strb	r0, [r1, #14]	@ tmp723, <variable>.IsPmvInUse
	add	r3, r1, #1	@ ivtmp.1844, tmp733,
	bgt	.L497	@,
.L496:
	mov	r3, #432	@ tmp371,
	mov	r5, #34560	@ tmp381,
	mla	r0, r3, r7, r4	@ tmp372, tmp371, i.1854, pstInst
	mov	r1, #0	@ tmp374,
	movw	lr, #34556	@ tmp388,
	add	r2, r0, #96	@ tmp373, tmp372,
	strb	r1, [r2, #4]	@ tmp374, <variable>.PmvIdc
	ldr	ip, [r4, r5]	@ <variable>.PmvAddr, <variable>.PmvAddr
	str	ip, [r0, #516]	@ <variable>.PmvAddr, <variable>.PmvAddr
	ldr	r2, [r4, lr]	@ <variable>.s32HalfPmvOffset, <variable>.s32HalfPmvOffset
	str	r2, [r0, #520]	@ <variable>.s32HalfPmvOffset, <variable>.HalfPmvOffset
	bl	vfmw_dprint_nothing	@
	ldrsb	r0, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r0, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	bne	.L588	@,
.L498:
	mov	r3, #432	@ tmp402,
	mla	r2, r3, r7, r4	@ tmp403, tmp402, i.1854, pstInst
	ldr	ip, [r2, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	ip, [r2, #508]	@ <variable>.pstDecodeFs, <variable>.pstDispOutFs
.L503:
	ldr	lr, [r8, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	movw	r5, #:lower16:.LANCHOR0	@ tmp448,
	movt	r5, #:upper16:.LANCHOR0	@ tmp448,
	cmp	lr, #0	@ g_IsFrameIntfValid,
	beq	.L477	@,
	ldr	r3, [r5, #12]	@ D.37404, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.37404,
	beq	.L589	@,
	mov	r0, #0	@,
	add	r1, sp, #16	@,,
	blx	r3	@ D.37404
	cmp	r0, #0	@,
	bne	.L509	@,
	ldr	r2, [sp, #16]	@ D.36706, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.36706,
	beq	.L590	@,
	mov	fp, #432	@ tmp458,
	mla	r9, fp, r7, r4	@ tmp459, tmp458, i.1854, pstInst
	ldr	sl, [r9, #504]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	str	r2, [sl, #12]	@ D.36706, <variable>.PhyAddr
	ldr	r8, [sp, #32]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r8, [r9, #516]	@ stInfo.stPmvInfo.PhyAddr, <variable>.PmvAddr
	b	.L477	@
.L506:
	cmp	r3, #0	@ ivtmp.1784,
	add	r0, r0, #30976	@ tmp415, tmp414,
	mla	ip, lr, r2, r4	@ tmp780, tmp722, i, pstInst
	add	r3, r3, #104	@ ivtmp.1784, ivtmp.1784,
	add	r0, r0, #144	@ tmp415, tmp415,
	beq	.L504	@,
	ldr	r0, [r0, #4]	@ tmp417,
	add	ip, ip, #30976	@ tmp781, tmp780,
	add	ip, ip, #144	@ tmp781, tmp781,
	bic	r0, r0, #-16777216	@ tmp416, tmp417,
	cmp	r0, #0	@ tmp416,
	beq	.L504	@,
	cmp	r5, #0	@ tmp727,
	mov	r1, r2	@ i.1833, i
	beq	.L504	@,
	ldr	r0, [ip, #4]	@ tmp782,
	bic	ip, r0, #-16777216	@ tmp783, tmp782,
	cmp	ip, #0	@ tmp783,
	beq	.L504	@,
.L505:
	add	r1, r2, #1	@ tmp728, i,
	add	r5, r3, #52	@ tmp727, ivtmp.1784,
	cmp	sl, r1	@ D.36688, tmp728
	add	r2, r1, #1	@ i, i.1833,
	mla	r0, lr, r1, r4	@ tmp414, tmp722, i.1833, pstInst
	bgt	.L506	@,
.L577:
	mov	ip, #432	@ tmp430,
	mla	r0, ip, r7, r4	@ tmp431, tmp430, i.1854, pstInst
	ldr	r5, [r0, #508]	@ prephitmp.1830, <variable>.pstDispOutFs
.L500:
	cmp	r5, #0	@ prephitmp.1830,
	bne	.L503	@,
	bl	vfmw_dprint_nothing	@
	add	r1, sp, #56	@ tmp436,,
	mov	r0, r5	@, prephitmp.1830
	add	r2, sp, #44	@,,
	str	r5, [r1, #-4]!	@ prephitmp.1830, RefNum
	add	r3, sp, #48	@,,
	str	r5, [sp, #48]	@ prephitmp.1830, NewNum
	str	r5, [sp, #44]	@ prephitmp.1830, ReadNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [sp, #44]	@ ReadNum, ReadNum
	ldr	r2, [sp, #52]	@ RefNum, RefNum
	ldr	r0, [sp, #48]	@ NewNum, NewNum
	add	ip, r2, r3	@ tmp439, RefNum, ReadNum
	ldrsb	r3, [r4, #11]	@ <variable>.s32DispFsNum, <variable>.s32DispFsNum
	add	r1, ip, #2	@ tmp442, tmp439,
	add	r2, r1, r0	@ tmp443, tmp442, NewNum
	cmp	r2, r3	@ tmp443, <variable>.s32DispFsNum
	bge	.L507	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, prephitmp.1830
	bl	FSP_PrintContext	@
.L507:
	ldr	r0, .L593	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.36606,
	b	.L467	@
.L586:
	ldr	r1, [r1, #16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r1, #0	@ <variable>.eFrameState,
	beq	.L543	@,
	b	.L544	@
.L584:
	ldrsb	r2, [r3, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r2, #0	@ <variable>.DispState,
	bne	.L537	@,
.L565:
	mov	r0, #432	@ tmp316,
	mov	r2, #52	@ tmp310,
	mla	ip, r0, r7, r4	@ tmp317, tmp316, i.1854, pstInst
	mla	lr, r2, lr, r4	@ tmp313, tmp310, i.1855, pstInst
	add	r5, lr, #27648	@ prephitmp.1757, tmp313,
	add	r5, r5, #148	@ prephitmp.1757, prephitmp.1757,
	str	r5, [ip, #504]	@ prephitmp.1757, <variable>.pstDecodeFs
	b	.L476	@
.L589:
	bl	vfmw_dprint_nothing	@
.L509:
	ldr	r0, .L593	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36606,
	b	.L467	@
.L583:
	ldr	r2, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r2, #0	@ <variable>.eFrameState,
	beq	.L536	@,
	b	.L537	@
.L567:
	ldr	ip, [r1, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #0	@ <variable>.eFrameState,
	beq	.L539	@,
	b	.L540	@
.L585:
	bl	vfmw_dprint_nothing	@
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r1, #0	@ <variable>.s32DecFsNum,
	ble	.L482	@,
.L483:
	bl	vfmw_dprint_nothing	@
	ldrsb	r2, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r5, r5, #1	@ i.1834, i.1834,
	cmp	r2, r5	@ <variable>.s32DecFsNum, i.1834
	bgt	.L483	@,
.L482:
	bl	vfmw_dprint_nothing	@
	ldrsb	ip, [r4, #10]	@ D.36660, <variable>.s32DecFsNum
	add	r5, r4, #27648	@ pstPhyFs, pstInst,
	cmp	ip, #0	@ D.36660,
	add	r3, r5, #148	@ pstPhyFs, pstPhyFs,
	movle	lr, #0	@ prephitmp.1762,
	ble	.L485	@,
	tst	ip, #1	@ D.36660,
	mov	lr, #0	@ i.1864,
	mov	r0, lr	@ i.1863, i.1864
	mvn	r1, #0	@ LeastTick.1866,
	bne	.L489	@,
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	mov	r0, #1	@ i.1863,
	add	r3, r3, #52	@ pstPhyFs, pstPhyFs,
	cmn	r2, #1	@ LeastTick,
	movcs	r2, r1	@, LeastTick, LeastTick.1866
	mov	r1, r2	@ LeastTick.1866, LeastTick
	b	.L489	@
.L591:
	ldr	r1, [r5, #44]	@ LeastTick, <variable>.u32Tick
	cmp	r1, r2	@ LeastTick, LeastTick
	movcs	r1, r2	@ LeastTick, LeastTick
	movcc	lr, r3	@ i.1864, tmp742
.L564:
	add	r0, r3, #1	@ i.1863, tmp742,
	add	r3, r5, #52	@ pstPhyFs, tmp743,
.L489:
	ldr	r2, [r3, #44]	@ LeastTick, <variable>.u32Tick
	add	r5, r3, #52	@ tmp743, pstPhyFs,
	add	r3, r0, #1	@ tmp742, i.1863,
	cmp	r2, r1	@ LeastTick, LeastTick.1866
	movcc	lr, r0	@ i.1864, i.1863
	movcs	r2, r1	@ LeastTick, LeastTick.1866
	cmp	ip, r3	@ D.36660, tmp742
	bgt	.L591	@,
.L485:
	mov	r2, #432	@ tmp329,
	mov	r5, #52	@ tmp333,
	mla	r0, r2, r7, r4	@ tmp330, tmp329, i.1854, pstInst
	mla	ip, r5, lr, r4	@ tmp336, tmp333, prephitmp.1762, pstInst
	add	r3, ip, #27648	@ tmp337, tmp336,
	add	lr, r3, #148	@ tmp337, tmp337,
	str	lr, [r0, #504]	@ tmp337, <variable>.pstDecodeFs
	b	.L481	@
.L590:
	add	r0, r5, #24	@, tmp448,
	bl	OSAL_SpinUnLockIRQ	@
.L579:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36606,
	b	.L467	@
.L501:
	mov	r1, #0	@ i.1833,
	b	.L504	@
.L594:
	.align	2
.L593:
	.word	.LANCHOR0+24
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
	mov	r7, r0	@ InstID, InstID
	add	r0, sp, #48	@,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r7, #0	@ InstID,
	bne	.L628	@,
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
	str	r8, [sp, #44]	@, %sfp
	cmp	lr, #0	@ <variable>.s32DecFsNum,
	ldr	r2, [r6, r5]	@, <variable>.TotalMemUsed
	movwle	r4, #:lower16:s_pstVfmwChan	@ tmp320,
	movtle	r4, #:upper16:s_pstVfmwChan	@ tmp320,
	str	r2, [sp, #36]	@, %sfp
	ldr	r0, [r6, r1]	@, <variable>.StrideByte
	str	r0, [sp, #32]	@, %sfp
	ldr	r5, [r6, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	ble	.L598	@,
	add	r4, r6, #27648	@ ivtmp.1921, pstInst,
	movw	sl, #:lower16:s_pstVfmwChan	@ tmp327,
	add	r8, r4, #160	@ ivtmp.1921, ivtmp.1921,
	movt	sl, #:upper16:s_pstVfmwChan	@ tmp327,
	mov	r9, #1	@ tmp328,
	b	.L602	@
.L649:
	ldr	r2, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	ip, r1, r2	@ tmp190, tmp189, s_pstVfmwChan
	add	lr, ip, #216064	@ tmp191, tmp190,
	add	r2, lr, #360	@ tmp191, tmp191,
	str	r0, [r2, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1921, ivtmp.1921,
	add	lr, r1, ip	@ tmp197, tmp189, s_pstVfmwChan
	add	ip, lr, #216064	@ tmp198, tmp197,
	add	r1, ip, #360	@ tmp198, tmp198,
	str	r2, [r1, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, r3, asl #4	@, tmp210, s_pstVfmwChan, tmp202,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	ble	.L598	@,
.L602:
	ldr	r1, [r8, #0]	@, <variable>.PhyAddr
	mov	r2, r5	@, s32ImgSize
	mov	r0, #0	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp320,
	bl	DNR_FsIsInImgQue	@
	add	r2, r7, #13504	@ tmp202, i,
	mov	r1, r7, asl #4	@ tmp189, i,
	add	r3, r2, #23	@ tmp202, tmp202,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp320,
	mov	ip, r1	@ tmp216, tmp189
	mov	r2, r3	@ tmp229, tmp202
	cmp	r0, #0	@ s32UsingCount
	beq	.L649	@,
	movw	r4, #:lower16:s_pstVfmwChan	@ tmp320,
	movt	r4, #:upper16:s_pstVfmwChan	@ tmp320,
	ble	.L628	@,
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r7, #1	@ i, i,
	add	r1, r1, r3	@ tmp217, tmp216, s_pstVfmwChan
	add	lr, r1, #216064	@ tmp218, tmp217,
	add	r3, lr, #360	@ tmp218, tmp218,
	str	r9, [r3, #0]	@ tmp328, <variable>.eFrameState
	ldr	r1, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r8, r8, #52	@ ivtmp.1921, ivtmp.1921,
	add	lr, ip, r1	@ tmp224, tmp216, s_pstVfmwChan
	add	r1, lr, #216064	@ tmp225, tmp224,
	add	ip, r1, #360	@ tmp225, tmp225,
	str	r3, [ip, #4]	@ <variable>.PhyAddr, <variable>.s32FrameAddr
	ldr	lr, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r3, [sl, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, r3, r2, asl #4	@, tmp237, s_pstVfmwChan, tmp229,
	str	r0, [r1, #4]	@ s32UsingCount, <variable>.s32UsingCount
	ldrsb	r0, [r6, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	cmp	r0, r7	@ <variable>.s32DecFsNum, i
	bgt	.L602	@,
.L598:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp241,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp241,
	ldr	r7, [r4, #0]	@ temp.1932, s_pstVfmwChan
	ldr	ip, [r8, #36]	@ D.36025, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36025,
	ldr	r1, [r7, #1588]	@ s32DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	ldr	r2, [r7, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r3, [r7, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	beq	.L603	@,
	mov	lr, #0	@ tmp242,
	str	r1, [sp, #4]	@ s32DnrNum,
	add	r0, sp, #48	@ tmp246,,
	mov	r1, #64	@ tmp247,
	str	r0, [sp, #16]	@ tmp246,
	mvn	r7, #0	@ tmp244,
	str	r1, [sp, #20]	@ tmp247,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp242,
	mvn	r1, #-2147483648	@,
	str	r7, [sp, #12]	@ tmp244,
	str	lr, [sp, #0]	@ tmp242,
	blx	ip	@ D.36025
	cmp	r0, #0	@,
	beq	.L604	@,
.L603:
	bl	vfmw_dprint_nothing	@
.L604:
	ldr	r1, [sp, #32]	@, %sfp
	ldr	lr, [sp, #36]	@, %sfp
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r3, lr, r1	@ tmp252,,
	ldr	r1, [sp, #52]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, fp	@ D.36031, tmp252, s32VdhMemAddr
	str	r1, [r8, #240]	@ MemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	ldr	ip, [sp, #28]	@, %sfp
	ldr	r7, [r4, #0]	@ temp.1934, s_pstVfmwChan
	ldr	r2, [ip, #0]	@ D.36030, <variable>.FrameAddr
	ldr	r8, [r7, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	cmp	r2, r3	@ D.36030, D.36031
	rsbgt	r2, r3, r2	@ s32FreeSize, D.36031, D.36030
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, s32DnrSize
	bge	.L648	@,
	ldr	r0, [sp, #40]	@, %sfp
	cmp	r0, #0	@,
	beq	.L608	@,
	ble	.L609	@,
	sub	r2, r0, #1	@ tmp253,,
	ldr	ip, [sp, #28]	@, %sfp
	add	lr, ip, r2, asl #3	@, D.36045,, tmp253,
	ldr	r0, [ip, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r1, [lr, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r1, r0	@ prephitmp.1896, <variable>.FrameSize, <variable>.FrameAddr
	cmp	r3, r2	@ D.36031, prephitmp.1896
	bgt	.L608	@,
.L610:
	ldr	r0, [sp, #44]	@, %sfp
	add	lr, r0, fp	@ tmp262,, s32VdhMemAddr
	rsb	r3, r2, lr	@ tmp263, prephitmp.1896, tmp262
	cmp	r8, r3	@ s32DnrSize, tmp263
	strle	r2, [r7, #236]	@ prephitmp.1896, <variable>.s32OffLineDnrMemAddr
	movle	r0, #0	@ D.36005,
	ble	.L597	@,
.L611:
	cmp	r5, r8	@ s32ImgSize, s32DnrSize
	movge	r1, #1	@,
	strge	r1, [sp, #28]	@, %sfp
	blt	.L650	@,
.L613:
	ldrsb	r8, [r6, #10]	@ temp.1939, <variable>.s32DecFsNum
	cmp	r8, #0	@ temp.1939,
	ble	.L628	@,
	ldr	r1, [sp, #28]	@, %sfp
	cmp	r1, r8	@, temp.1939
	bgt	.L628	@,
	mov	r3, r1	@ s32DnrLockFrmNum.1936,
	mov	r2, #0	@ i.1942,
	cmp	r3, r2	@ s32DnrLockFrmNum.1936, i.1942
	mov	r1, r2	@ j.1946, i.1942
	mov	sl, r3	@ s32DnrLockFrmNum, s32DnrLockFrmNum.1936
	ble	.L651	@,
.L643:
	mov	ip, r2, asl #4	@ tmp319, i.1942,
	add	r0, ip, r7	@ tmp275, tmp319, temp.1934
	add	lr, r0, #216064	@ tmp276, tmp275,
	add	r0, lr, #360	@ tmp276, tmp276,
	ldr	r0, [r0, #0]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, #0	@ <variable>.eFrameState,
	bne	.L618	@,
	mvn	lr, r2	@ tmp335, i.1942
	add	r0, lr, r3	@ tmp334, tmp335, s32DnrLockFrmNum.1936
	add	r1, ip, #216064	@ tmp279, tmp319,
	tst	r0, #1	@ tmp334,
	add	lr, r1, #360	@ tmp279, tmp279,
	mov	r1, r2	@ j.1938, i.1942
	add	r0, r7, lr	@ ivtmp.1918, temp.1934, tmp279
	beq	.L619	@,
	ldr	r9, [r0, #16]!	@ temp.1945, <variable>.eFrameState
	add	r1, r2, #1	@ j.1938, i.1942,
	cmp	r9, #0	@ temp.1945,
	beq	.L619	@,
	b	.L618	@
.L621:
	ldr	r9, [r0, #16]!	@ temp.1945, <variable>.eFrameState
	cmp	r9, #0	@ temp.1945,
	bne	.L618	@,
	ldr	r9, [r0, #16]!	@ temp.1945, <variable>.eFrameState
	add	r1, r1, #1	@ j.1938, j.1938,
	cmp	r9, #0	@ temp.1945,
	bne	.L618	@,
.L619:
	add	r1, r1, #1	@ j.1938, j.1938,
	cmp	r3, r1	@ s32DnrLockFrmNum.1936, j.1938
	bgt	.L621	@,
.L617:
	add	lr, ip, r7	@ tmp283, tmp319, temp.1934
	cmp	r3, r2	@ s32DnrLockFrmNum.1936, i.1942
	add	r1, lr, #216064	@ tmp284, tmp283,
	add	ip, r1, #360	@ tmp284, tmp284,
	ldr	r8, [ip, #4]	@ <variable>.s32FrameAddr, <variable>.s32FrameAddr
	str	r8, [r7, #236]	@ <variable>.s32FrameAddr, <variable>.s32OffLineDnrMemAddr
	ble	.L623	@,
	mov	sl, #52	@ tmp287,
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mul	lr, sl, r2	@ tmp286, tmp287, i.1942
	mov	sl, r2, asl #4	@ tmp294, i.1942,
	add	ip, sl, fp	@ tmp295, tmp294, s_pstVfmwChan
	mov	fp, #2	@ tmp323,
	add	r0, ip, #216064	@ tmp296, tmp295,
	mvn	r7, r2	@ tmp330, i.1942
	add	r8, lr, #27648	@ tmp288, tmp286,
	add	ip, r0, #360	@ tmp296, tmp296,
	add	r9, r8, #144	@ tmp288, tmp288,
	add	r7, r7, r3	@ tmp329, tmp330, s32DnrLockFrmNum.1936
	add	r8, r6, r9	@ tmp290, pstInst, tmp288
	add	r1, r2, #13504	@ tmp306, i.1942,
	and	r7, r7, #1	@, tmp329,
	add	lr, r1, #23	@ tmp306, tmp306,
	ldr	r9, [r8, #16]	@ s32FrameStartAddr.1947, <variable>.PhyAddr
	add	r1, r2, #1	@ j, i.1942,
	str	fp, [ip, #0]	@ tmp323, <variable>.eFrameState
	cmp	r3, r1	@ s32DnrLockFrmNum.1936, j
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r7, [sp, #32]	@, %sfp
	add	r7, r8, #56	@ ivtmp.1912, tmp290,
	add	ip, sl, ip	@ tmp302, tmp294, s_pstVfmwChan
	add	ip, ip, #216064	@ tmp303, tmp302,
	add	ip, ip, #360	@ tmp303, tmp303,
	str	r9, [ip, #4]	@ s32FrameStartAddr.1947, <variable>.s32FrameAddr
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [ip, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, ip, lr, asl #4	@, tmp314, s_pstVfmwChan, tmp306,
	mov	ip, #0	@,
	add	r0, r0, #4	@ tmp315, tmp314,
	str	ip, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L623	@,
	ldr	r9, [sp, #32]	@, %sfp
	cmp	r9, #0	@,
	beq	.L647	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	sl, r1, asl #4	@ tmp384, j,
	ldr	r9, [r7, #12]	@ s32FrameStartAddr.1947, <variable>.PhyAddr
	add	r0, r1, #13504	@ tmp393, j,
	add	lr, sl, ip	@ tmp385, tmp384, s_pstVfmwChan
	add	r0, r0, #23	@ tmp393, tmp393,
	add	r7, lr, #216064	@ tmp386, tmp385,
	add	r1, r1, #1	@ j, j,
	add	ip, r7, #360	@ tmp386, tmp386,
	add	r7, r8, #108	@ ivtmp.1912, tmp290,
	cmp	r3, r1	@ s32DnrLockFrmNum.1936, j
	str	fp, [ip, #0]	@ tmp323, <variable>.eFrameState
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, sl, lr	@ tmp389, tmp384, s_pstVfmwChan
	add	ip, r8, #216064	@ tmp390, tmp389,
	add	lr, ip, #360	@ tmp390, tmp390,
	str	r9, [lr, #4]	@ s32FrameStartAddr.1947, <variable>.s32FrameAddr
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r8, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r8, #0	@,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r0, asl #4	@, tmp396, s_pstVfmwChan, tmp393,
	add	r0, lr, #4	@ tmp397, tmp396,
	str	r8, [r0, #0]	@, <variable>.s32UsingCount
	ble	.L623	@,
.L647:
	mov	r9, r6	@ pstInst, pstInst
	str	r2, [sp, #32]	@ i.1942, %sfp
.L624:
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r8, r1, asl #4	@ tmp345, j,
	ldr	sl, [r7, #12]	@ s32FrameStartAddr.1947, <variable>.PhyAddr
	add	r0, r1, #13504	@ tmp354, j,
	add	r6, r8, ip	@ tmp346, tmp345, s_pstVfmwChan
	add	r0, r0, #23	@ tmp354, tmp354,
	add	lr, r6, #216064	@ tmp347, tmp346,
	add	r1, r1, #1	@ tmp332, j,
	add	ip, lr, #360	@ tmp347, tmp347,
	add	r2, r1, #13504	@ tmp374, tmp332,
	mov	lr, r1, asl #4	@ tmp365, tmp332,
	add	r2, r2, #23	@ tmp374, tmp374,
	str	fp, [ip, #0]	@ tmp323, <variable>.eFrameState
	add	r1, r1, #1	@ j, tmp332,
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, r1	@ s32DnrLockFrmNum.1936, j
	add	ip, r8, r6	@ tmp350, tmp345, s_pstVfmwChan
	add	r6, ip, #216064	@ tmp351, tmp350,
	add	ip, r6, #360	@ tmp351, tmp351,
	str	sl, [ip, #4]	@ s32FrameStartAddr.1947, <variable>.s32FrameAddr
	mov	ip, #0	@,
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r8, r0, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, r6, r0, asl #4	@, tmp357, s_pstVfmwChan, tmp354,
	str	ip, [r8, #4]	@, <variable>.s32UsingCount
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [r7, #64]	@ s32FrameStartAddr.1947, <variable>.PhyAddr
	add	r7, r7, #104	@ ivtmp.1912, ivtmp.1912,
	add	r0, lr, r6	@ tmp366, tmp365, s_pstVfmwChan
	add	r8, r0, #216064	@ tmp367, tmp366,
	add	r6, r8, #360	@ tmp367, tmp367,
	str	fp, [r6, #0]	@ tmp323, <variable>.eFrameState
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, lr, r0	@ tmp370, tmp365, s_pstVfmwChan
	add	r6, r8, #216064	@ tmp371, tmp370,
	add	lr, r6, #360	@ tmp371, tmp371,
	str	ip, [lr, #4]	@ s32FrameStartAddr.1947, <variable>.s32FrameAddr
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r0, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	mov	r0, #0	@,
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r8, r2, asl #4	@, tmp377, s_pstVfmwChan, tmp374,
	str	r0, [r6, #4]	@, <variable>.s32UsingCount
	bgt	.L624	@,
	ldr	r2, [sp, #32]	@ i.1942, %sfp
	mov	r6, r9	@ pstInst, pstInst
.L623:
	ldrsb	r8, [r6, #10]	@ temp.1939, <variable>.s32DecFsNum
	cmp	r8, r2	@ temp.1939, i.1942
	ble	.L628	@,
	ldr	r1, [sp, #28]	@, %sfp
	add	r3, r1, r2	@ s32DnrLockFrmNum,, i.1942
.L625:
	cmp	r3, r8	@ s32DnrLockFrmNum, temp.1939
	movle	r0, #0	@ D.36005,
	ble	.L597	@,
.L628:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36005,
	b	.L597	@
.L608:
	ldr	r0, [sp, #44]	@, %sfp
	add	r2, r0, fp	@ tmp257,, s32VdhMemAddr
	rsb	lr, r3, r2	@ tmp258, D.36031, tmp257
	cmp	r8, lr	@ s32DnrSize, tmp258
	bgt	.L611	@,
.L648:
	mov	r0, #0	@ D.36005,
	str	r3, [r7, #236]	@ D.36031, <variable>.s32OffLineDnrMemAddr
.L597:
	add	sp, sp, #468	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L618:
	add	r2, r1, #1	@ i.1942, j.1946,
	cmp	r8, r2	@ temp.1939, i.1942
	ble	.L628	@,
	add	r3, r2, sl	@ s32DnrLockFrmNum.1936, i.1942, s32DnrLockFrmNum
	mov	r1, r2	@ j.1946, i.1942
	cmp	r8, r3	@ temp.1939, s32DnrLockFrmNum.1936
	blt	.L625	@,
	cmp	r3, r2	@ s32DnrLockFrmNum.1936, i.1942
	bgt	.L643	@,
.L651:
	mov	ip, r2, asl #4	@ tmp319, i.1942,
	b	.L617	@
.L650:
	mov	r1, r5	@, s32ImgSize
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idiv	@
	mov	r1, r5	@, s32ImgSize
	str	r0, [sp, #28]	@, %sfp
	mov	r0, r8	@, s32DnrSize
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	ldrgt	r2, [sp, #28]	@, %sfp
	addgt	r2, r2, #1	@,,
	strgt	r2, [sp, #28]	@, %sfp
	b	.L613	@
.L609:
	ldr	r1, [sp, #40]	@, %sfp
	ldr	ip, [sp, #28]	@, %sfp
	sub	r2, r1, #1	@ pretmp.1935,,
	add	lr, ip, r2, asl #3	@, pretmp.1893,, pretmp.1935,
	ldr	r3, [ip, r2, asl #3]	@ <variable>.FrameAddr, <variable>.FrameAddr
	ldr	r0, [lr, #4]	@ <variable>.FrameSize, <variable>.FrameSize
	add	r2, r0, r3	@ prephitmp.1896, <variable>.FrameSize, <variable>.FrameAddr
	b	.L610	@
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
	subs	r1, r0, #0	@ InstID, InstID
	.pad #520
	sub	sp, sp, #520	@,,
	mov	r3, #0	@ tmp148,
	str	r3, [sp, #516]	@ tmp148, s32UsingNum
	bne	.L666	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp149,
	movt	r0, #:upper16:.LANCHOR0	@ tmp149,
	ldr	r3, [r0, #0]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L666	@,
	movw	r2, #34644	@ tmp150,
	add	r4, sp, #4	@ tmp179,,
	ldr	r6, [r3, r2]	@ s32VdhTotalMemUse, <variable>.TotalMemUsed
	mov	r0, #-2147483648	@ tmp180,
	mov	r5, r1	@ tmp181, ivtmp.1987
.L656:
	add	ip, r1, #8	@ tmp182, ivtmp.1987,
	mov	r3, r4	@ tmp156, tmp179
	str	r0, [r3, r1]!	@ tmp180, <variable>.FrameAddr
	add	r1, ip, #8	@ ivtmp.1987, tmp182,
	cmp	r1, #512	@ ivtmp.1987,
	mov	lr, r4	@ tmp187, tmp179
	str	r5, [r3, #4]	@ tmp181, <variable>.FrameSize
	str	r0, [lr, ip]!	@ tmp180, <variable>.FrameAddr
	str	r5, [lr, #4]	@ tmp181, <variable>.FrameSize
	bne	.L656	@,
	mov	r0, r5	@, tmp181
	mov	r1, r4	@, tmp179
	add	r2, sp, #516	@,,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L666	@,
	ldr	r1, [sp, #516]	@ s32UsingNum, s32UsingNum
	cmp	r1, #0	@ s32UsingNum,
	ble	.L658	@,
	ldr	r3, [sp, #8]	@ D.36234, <variable>.FrameSize
	cmp	r6, r3	@ s32VdhTotalMemUse, D.36234
	ble	.L659	@,
	mov	r6, r6, asl #1	@ tmp162, s32VdhTotalMemUse,
	movw	r2, #:lower16:1431655766	@ tmp165,
	movt	r2, #:upper16:1431655766	@ tmp165,
	smull	r1, r0, r2, r6	@, tmp164, tmp165, tmp162
	sub	r6, r0, r6, asr #31	@ tmp163, tmp164, tmp162,
	cmp	r3, r6	@ D.36234, tmp163
	blt	.L658	@,
.L659:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	add	r1, sp, #4	@,,
	ldr	r2, [sp, #516]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L666	@,
.L661:
	mov	r0, #0	@ D.36220,
.L654:
	add	sp, sp, #520	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L658:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, tmp181
	mov	r1, r4	@, tmp179
	ldr	r2, [sp, #516]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L661	@,
.L666:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36220,
	b	.L654	@
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
	ldr	r2, [r5, r0, asl #2]	@ D.35818, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ D.35819, <variable>.s32OffLineDnrMemAddr
	ldr	r7, [r2, #1608]	@ s32ThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r2, #1612]	@ s32ThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.35819
	str	ip, [sp, #24]	@ D.35819, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	str	r0, [sp, #28]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	ldr	r3, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #32]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L669	@,
	cmp	r8, #1	@ NeedPartition,
	beq	.L678	@,
	mov	r0, r4	@, InstID
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	bne	.L677	@,
.L671:
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
	bne	.L677	@,
.L673:
	ldr	r1, [r5, r4, asl #2]	@ temp.2022, s_pstVfmwChan
	movw	r5, #:lower16:217460	@ tmp162,
	movt	r5, #:upper16:217460	@ tmp162,
	movw	r6, #:lower16:s_pstVfmwChan	@ tmp161,
	movt	r6, #:upper16:s_pstVfmwChan	@ tmp161,
	ldr	r2, [r1, r5]	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r2, #1	@ <variable>.stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.35831,
	beq	.L679	@,
.L672:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L669:
	cmp	r8, #1	@ NeedPartition,
	bne	.L673	@,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L673	@,
.L677:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35831,
	b	.L672	@
.L678:
	mov	r0, r4	@, InstID
	add	r1, sp, #24	@,,
	mov	r2, r7	@, s32ThrWidth
	mov	r3, r6	@, s32ThrHeight
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L671	@,
	b	.L677	@
.L679:
	add	lr, r1, #217088	@, temp.2022,
	mov	r0, r4	@, InstID
	add	r1, lr, #360	@,,
	bl	DNR_ConfigChan	@
	subs	r3, r0, #0	@ D.35850,
	bne	.L677	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp167, s_pstVfmwChan
	mov	r0, r3	@ D.35831, D.35850
	str	r3, [r1, r5]	@ D.35850, <variable>.stDnrChanCfg.s32NeedConfigDnrChan
	b	.L672	@
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
.LFB1942:
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
	str	r3, [sp, #32]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	bne	.L693	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	str	r0, [sp, #28]	@, %sfp
	ldr	r4, [r0, #0]	@ D.36334, s_pFspInst
	cmp	r4, #0	@ D.36334,
	beq	.L693	@,
	movw	r1, #34648	@ tmp203,
	movw	r3, #34652	@ tmp204,
	str	r6, [r4, r1]	@ MemPhyAddr, <variable>.MemAddr
	mov	r0, r5	@, InstID
	str	r7, [r4, r3]	@ MemSize, <variable>.MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L762	@,
.L684:
	ldrsb	r0, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	cmp	r0, #1	@ <variable>.stInstCfg.s32UserDec,
	beq	.L685	@,
.L693:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36332,
.L682:
	add	sp, sp, #460	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L762:
	rsb	r2, r0, r0, asl #3	@, tmp213, eChanCapLevel, eChanCapLevel,
	movw	lr, #:lower16:CapItem	@ tmp210,
	add	r5, r2, #1	@ tmp214, tmp213,
	movt	lr, #:upper16:CapItem	@ tmp210,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	ip, [lr, r2, asl #2]	@ tmp223, CapItem
	ldr	r3, [lr, r5, asl #2]	@ tmp222, CapItem
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mul	lr, ip, r3	@ tmp221, tmp223, tmp222
	mul	r2, r2, r1	@ tmp207, <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsHeight
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, lr	@, tmp207, tmp221
	bgt	.L684	@,
.L685:
	ldr	r3, [r4, #92]	@ D.36359, <variable>.stInstCfg.s32DispFsHeight
	cmp	r3, #0	@ D.36359,
	beq	.L756	@,
	ldr	r2, [r4, #88]	@ D.36361, <variable>.stInstCfg.s32DispFsWidth
	cmp	r2, #0	@ D.36361,
	bne	.L689	@,
.L756:
	ldrb	r5, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2055, <variable>.stInstCfg.s32DispLoopEnable
.L688:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp232,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp232,
	ldrb	r8, [r4, #65]	@ zero_extendqisi2	@ D.36366, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [lr, #36]	@ D.36371, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36371,
	beq	.L693	@,
	ldrsb	lr, [r4, #68]	@ <variable>.stInstCfg.s32ExpectedPmvNum, <variable>.stInstCfg.s32ExpectedPmvNum
	mov	r0, r6	@, MemPhyAddr
	ldr	r2, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	mov	r6, #40	@ tmp236,
	ldr	r3, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	mov	r1, r7	@, MemSize
	str	lr, [sp, #0]	@ <variable>.stInstCfg.s32ExpectedPmvNum,
	mov	lr, #0	@ tmp238,
	str	r6, [sp, #4]	@ tmp236,
	ldrsb	r6, [r4, #64]	@ <variable>.stInstCfg.s32UserDec, <variable>.stInstCfg.s32UserDec
	str	lr, [sp, #12]	@ tmp238,
	add	lr, sp, #40	@ tmp240,,
	str	lr, [sp, #16]	@ tmp240,
	mov	lr, #64	@ tmp241,
	str	r6, [sp, #8]	@ <variable>.stInstCfg.s32UserDec,
	str	lr, [sp, #20]	@ tmp241,
	blx	ip	@ D.36371
	cmp	r0, #0	@ Ret
	bne	.L693	@,
	ldr	r3, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	sxtb	r2, r5	@ prephitmp.2055, prephitmp.2055
	sxtb	r8, r8	@ D.36366, D.36366
	add	ip, r8, r2, asl #2	@, tmp247, D.36366, prephitmp.2055,
	strb	r3, [r4, #9]	@ MemArrange.ValidFrameNum, <variable>.s8TotalValidFsNum
	ldr	r1, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	ip, r1	@ tmp247, MemArrange.ValidFrameNum
	bgt	.L693	@,
	ldrsb	r5, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	strb	r0, [r4, #12]	@ Ret, <variable>.s32TfFsNum
	cmp	r5, #0	@ <variable>.stInstCfg.s32DispLoopEnable,
	strb	r0, [r4, #11]	@ Ret, <variable>.s32DispFsNum
	bne	.L694	@,
	ldrsb	r7, [r4, #1]	@ <variable>.s8LowBufEnable, <variable>.s8LowBufEnable
	cmp	r7, #0	@ <variable>.s8LowBufEnable,
	beq	.L695	@,
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp255,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp255,
	ldr	fp, [r0, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r9, [fp, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r9, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L696	@,
	ldrsb	r3, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r1, r3, #4	@ tmp258, <variable>.stInstCfg.s32ExpectedDecFsNum,
	cmp	r1, ip	@ tmp258, MemArrange.ValidFrameNum
	movlt	r6, r1	@ tmp871, tmp258
	movge	r6, ip	@ tmp871, MemArrange.ValidFrameNum
	strb	r6, [r4, #10]	@ tmp871, <variable>.s32DecFsNum
	b	.L697	@
.L694:
	ldrb	r7, [r4, #65]	@ zero_extendqisi2	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	strb	r7, [r4, #10]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.s32DecFsNum
.L697:
	ldr	r9, [sp, #448]	@ MemArrange.ImgSlotLen, MemArrange.ImgSlotLen
	movw	r2, #34640	@ tmp269,
	add	fp, r4, #27648	@ ivtmp.2165, D.36334,
	mov	r0, #0	@ i,
	ldrsb	r6, [r4, #10]	@ D.36404, <variable>.s32DecFsNum
	add	r3, fp, #160	@ ivtmp.2165, ivtmp.2165,
	mov	r5, r2	@ tmp863, tmp269
	add	ip, sp, #40	@ ivtmp.2164,,
	mov	r1, r0	@ tmp862, i
	str	r9, [r4, r2]	@ MemArrange.ImgSlotLen, <variable>.ImgSlotLen
	b	.L700	@
.L764:
	str	r0, [r2, #-8]	@ tmp868, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp868,
	ldr	fp, [ip, #8]	@ tmp907, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2164, tmp869,
	str	fp, [r3, #52]	@ tmp907, <variable>.PhyAddr
	ldr	r3, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r9, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r7, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r7, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	add	r3, r2, #52	@ ivtmp.2165, tmp870,
	ldr	r9, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp862, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp862, <variable>.IsTfRef
	str	r9, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp862, <variable>.DispState
	ldr	r7, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r7, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	beq	.L763	@,
.L700:
	cmp	r6, r0	@ D.36404, i
	strgt	r0, [r3, #-8]	@ i, <variable>.PhyFsID
	strle	r1, [r3, #-8]	@ tmp862, <variable>.PhyFsID
	add	r0, r0, #1	@ tmp868, i,
	ldrgt	r2, [ip, #8]	@ tmp273, MemArrange.FrameAddr
	add	ip, ip, #4	@ tmp869, ivtmp.2164,
	ldrle	r2, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r6, r0	@ D.36404, tmp868
	str	r2, [r3, #0]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r9, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r9, [r3, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r7, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r7, [r3, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r2, [r3, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r3, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r9, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r9, [r3, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r7, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r3, #-12]	@ tmp862, <variable>.IsDecRef
	strb	r1, [r3, #-11]	@ tmp862, <variable>.IsTfRef
	str	r7, [r3, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r3, #-10]	@ tmp862, <variable>.DispState
	ldr	r2, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [r3, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	add	r2, r3, #52	@ tmp870, ivtmp.2165,
	bgt	.L764	@,
	str	r1, [r2, #-8]	@ tmp862, <variable>.PhyFsID
	add	r0, r0, #1	@ i, tmp868,
	ldr	fp, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r0, #64	@ i,
	add	ip, ip, #4	@ ivtmp.2164, tmp869,
	str	fp, [r3, #52]	@ MemArrange.FrameAddr, <variable>.PhyAddr
	ldr	r3, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	r3, [r2, #8]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r9, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	str	r9, [r2, #12]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	ldr	r7, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	r7, [r2, #16]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	ldr	fp, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	fp, [r2, #20]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	r3, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r3, [r2, #24]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	add	r3, r2, #52	@ ivtmp.2165, tmp870,
	ldr	r9, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r2, #-12]	@ tmp862, <variable>.IsDecRef
	strb	r1, [r2, #-11]	@ tmp862, <variable>.IsTfRef
	str	r9, [r2, #28]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r2, #-10]	@ tmp862, <variable>.DispState
	ldr	r7, [r4, r5]	@ <variable>.ImgSlotLen, <variable>.ImgSlotLen
	str	r7, [r2, #36]	@ <variable>.ImgSlotLen, <variable>.ImgSize
	bne	.L700	@,
.L763:
	ldrsb	r1, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r7, #34456	@ tmp306,
	mov	r3, #0	@ tmp307,
	str	r3, [r4, r7]	@ tmp307, <variable>.PhyFsID
	add	r7, sp, #456	@,,
	mov	r5, #1	@ tmp304,
	add	r9, r7, r1, asl #2	@, tmp313,, <variable>.s32DecFsNum,
	strb	r5, [r4, #12]	@ tmp304, <variable>.s32TfFsNum
	movw	r2, #34464	@ tmp308,
	ldr	ip, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	fp, [r9, #-408]	@ tmp315, MemArrange.FrameAddr
	movw	r0, #34476	@ tmp318,
	ldr	r5, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	movw	r9, #34480	@ tmp320,
	str	fp, [r4, r2]	@ tmp315, <variable>.PhyAddr
	movw	r2, #34472	@ tmp316,
	ldr	fp, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	ip, [r4, r9]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.FsHeight
	movw	r9, #34484	@ tmp322,
	str	r5, [r4, r0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.FsWidth
	str	fp, [r4, r2]	@ MemArrange.VahbStride, <variable>.Stride
	movw	fp, #34488	@ tmp324,
	ldr	r0, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldrsb	r2, [r4, #60]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.stInstCfg.s32DispLoopEnable
	str	r0, [r4, r9]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	cmp	r2, r3	@ <variable>.stInstCfg.s32DispLoopEnable,
	ldr	ip, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #34454	@ tmp334,
	movw	r9, #34452	@ tmp328,
	str	ip, [r4, fp]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	movw	fp, #34492	@ tmp326,
	ldr	ip, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp307, <variable>.DispState
	movw	r0, #34453	@ tmp331,
	strb	r3, [r4, r9]	@ tmp307, <variable>.IsDecRef
	str	ip, [r4, fp]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp307, <variable>.IsTfRef
	bne	.L701	@,
	mov	fp, r2	@ prephitmp.2060, <variable>.stInstCfg.s32DispLoopEnable
	strb	r2, [r4, #11]	@ <variable>.stInstCfg.s32DispLoopEnable, <variable>.s32DispFsNum
.L703:
	add	r1, r4, #30976	@ tmp340, D.36334,
	mov	r2, #0	@ ivtmp.2130,
	add	r9, r1, #180	@ ivtmp.2142, tmp340,
	add	sl, r1, #152	@ ivtmp.2128, tmp340,
	add	r8, r1, #160	@ ivtmp.2134, tmp340,
	add	r7, r1, #168	@ ivtmp.2136, tmp340,
	add	r6, r1, #172	@ ivtmp.2138, tmp340,
	add	r5, r1, #176	@ ivtmp.2140, tmp340,
	mov	r3, r2	@ i.2229, ivtmp.2130
	mov	r1, r2	@ tmp860, ivtmp.2130
	b	.L702	@
.L766:
	str	r3, [sl, #0]	@ i.2229, <variable>.PhyFsID
	ldrsb	r0, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	fp, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r0, r3, r0	@ tmp356, i.2229, <variable>.s32TfFsNum
	add	r0, r0, fp	@ tmp357, tmp356, <variable>.s32DecFsNum
	add	fp, sp, #456	@,,
	add	r0, fp, r0, asl #2	@, tmp361,, tmp357,
	ldr	r0, [r0, #-408]	@ tmp363, MemArrange.FrameAddr
	str	r0, [r8, #0]	@ tmp363, <variable>.PhyAddr
	ldr	fp, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	r0, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	r0, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	fp, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	r0, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r0, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [ip, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	r0, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [ip, #150]	@ tmp860, <variable>.DispState
	strb	r1, [ip, #148]	@ tmp860, <variable>.IsDecRef
	str	r0, [ip, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [ip, #149]	@ tmp860, <variable>.IsTfRef
.L705:
	add	r3, r3, #1	@ i.2229, i.2229,
	add	sl, sl, #52	@ ivtmp.2128, ivtmp.2128,
	cmp	r3, #64	@ i.2229,
	add	r2, r2, #52	@ ivtmp.2130, ivtmp.2130,
	add	r8, r8, #52	@ ivtmp.2134, ivtmp.2134,
	add	r7, r7, #52	@ ivtmp.2136, ivtmp.2136,
	add	r6, r6, #52	@ ivtmp.2138, ivtmp.2138,
	add	r5, r5, #52	@ ivtmp.2140, ivtmp.2140,
	add	r9, r9, #52	@ ivtmp.2142, ivtmp.2142,
	beq	.L765	@,
	ldrsb	fp, [r4, #11]	@ prephitmp.2060, <variable>.s32DispFsNum
.L702:
	add	ip, r4, r2	@ D.39142, D.36334, ivtmp.2130
	cmp	fp, r3	@ prephitmp.2060, i.2229
	add	ip, ip, #30976	@ tmp369, D.39142,
	mov	r0, ip	@ tmp401, tmp369
	bgt	.L766	@,
	str	r1, [sl, #0]	@ tmp860, <variable>.PhyFsID
	ldrsb	fp, [r4, #12]	@ <variable>.s32TfFsNum, <variable>.s32TfFsNum
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	ip, fp, ip	@ tmp389, <variable>.s32TfFsNum, <variable>.s32DecFsNum
	add	fp, sp, #456	@,,
	add	ip, fp, ip, asl #2	@, tmp393,, tmp389,
	ldr	ip, [ip, #-408]	@ tmp395, MemArrange.FrameAddr
	str	ip, [r8, #0]	@ tmp395, <variable>.PhyAddr
	ldr	fp, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	str	fp, [r7, #0]	@ MemArrange.VahbStride, <variable>.Stride
	ldr	ip, [r4, #88]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.stInstCfg.s32DispFsWidth
	str	ip, [r6, #0]	@ <variable>.stInstCfg.s32DispFsWidth, <variable>.FsWidth
	ldr	fp, [r4, #92]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.stInstCfg.s32DispFsHeight
	str	fp, [r5, #0]	@ <variable>.stInstCfg.s32DispFsHeight, <variable>.FsHeight
	ldr	ip, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	ip, [r9, #0]	@ MemArrange.ChromOffset, <variable>.ChromOffset
	ldr	fp, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	fp, [r0, #184]	@ MemArrange.LumaPixelOffset, <variable>.LumaPixelOffset
	ldr	ip, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r1, [r0, #150]	@ tmp860, <variable>.DispState
	strb	r1, [r0, #148]	@ tmp860, <variable>.IsDecRef
	str	ip, [r0, #188]	@ MemArrange.ChromaPixelOffset, <variable>.ChromaPixelOffset
	strb	r1, [r0, #149]	@ tmp860, <variable>.IsTfRef
	b	.L705	@
.L765:
	ldr	r3, [sp, #444]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	add	r1, r4, #34560	@ ivtmp.2110, D.36334,
	mov	ip, #0	@ tmp859,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	movge	r3, #20	@ tmp418,
	uxtb	r5, r3	@ prephitmp.2230, tmp418
	strb	r5, [r4, #13]	@ prephitmp.2230, <variable>.s32PmvNum
	ldr	fp, [sp, #320]	@ tmp891, MemArrange.PMVAddr
	mov	r3, #1	@ i.2231,
	strb	ip, [r4, #14]	@ tmp859, <variable>.IsPmvInUse
	add	r2, r4, r3	@ ivtmp.2116, D.36334,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2230, <variable>.s32PmvNum
	str	fp, [r1, #0]	@ tmp891, <variable>.PmvAddr
	add	fp, sp, #40	@,,
	add	r0, fp, #4	@ ivtmp.2299,,
	add	r1, r1, #4	@ ivtmp.2110, ivtmp.2110,
	b	.L710	@
.L767:
	ldr	r5, [r0, #280]	@ tmp895, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp859, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ tmp895, <variable>.PmvAddr
.L753:
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ prephitmp.2230, <variable>.s32PmvNum
	add	r3, r3, #1	@ i.2231, tmp864,
	add	r0, r0, #4	@ ivtmp.2299, tmp865,
	add	r1, r1, #4	@ ivtmp.2110, tmp866,
	add	r2, r2, #1	@ ivtmp.2116, tmp867,
.L710:
	sxtb	r5, r5	@ prephitmp.2230, prephitmp.2230
	cmp	r5, r3	@ prephitmp.2230, i.2231
	add	r3, r3, #1	@ tmp864, i.2231,
	ldrgt	r5, [r0, #280]	@ tmp422, MemArrange.PMVAddr
	add	r0, r0, #4	@ tmp865, ivtmp.2299,
	ldrle	r5, [sp, #320]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	cmp	r3, #20	@ tmp864,
	strb	ip, [r2, #14]	@ tmp859, <variable>.IsPmvInUse
	add	r2, r2, #1	@ tmp867, ivtmp.2116,
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	add	r1, r1, #4	@ tmp866, ivtmp.2110,
	beq	.L709	@,
	ldrsb	r5, [r4, #13]	@ prephitmp.2230, <variable>.s32PmvNum
	cmp	r5, r3	@ prephitmp.2230, tmp864
	bgt	.L767	@,
	ldr	r5, [sp, #320]	@ MemArrange.PMVAddr, MemArrange.PMVAddr
	strb	ip, [r2, #14]	@ tmp859, <variable>.IsPmvInUse
	str	r5, [r1, #0]	@ MemArrange.PMVAddr, <variable>.PmvAddr
	b	.L753	@
.L709:
	movw	ip, #27808	@ tmp433,
	ldr	r5, [sp, #440]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	ldr	r0, [r4, ip]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r3, #34556	@ tmp428,
	movw	r2, #27756	@ tmp432,
	movw	r1, #27748	@ tmp430,
	str	r5, [r4, r3]	@ MemArrange.HafPmvOffset, <variable>.s32HalfPmvOffset
	mov	r3, #0	@ tmp431,
	str	r0, [r4, r2]	@ <variable>.PhyAddr, <variable>.stDummyPhyFs.PhyAddr
	movw	r5, #27764	@ tmp435,
	str	r3, [r4, r1]	@ tmp431, <variable>.stDummyPhyFs.PhyFsID
	movw	r0, #27768	@ tmp437,
	ldr	ip, [sp, #40]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r1, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	str	ip, [r4, r5]	@ MemArrange.VahbStride, <variable>.stDummyPhyFs.Stride
	movw	r5, #27772	@ tmp439,
	str	r1, [r4, r0]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stDummyPhyFs.FsWidth
	movw	ip, #27776	@ tmp441,
	str	r2, [r4, r5]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stDummyPhyFs.FsHeight
	ldr	r5, [sp, #304]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r0, [r4, #40]	@ <variable>.stPreInfo.s32PreWidth, <variable>.stPreInfo.s32PreWidth
	str	r5, [r4, ip]	@ MemArrange.ChromOffset, <variable>.stDummyPhyFs.ChromOffset
	cmp	r1, r0	@ prephitmp.2065, <variable>.stPreInfo.s32PreWidth
	ldr	ip, [sp, #308]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	movw	r0, #27780	@ tmp443,
	str	ip, [r4, r0]	@ MemArrange.LumaPixelOffset, <variable>.stDummyPhyFs.LumaPixelOffset
	movw	r0, #27746	@ tmp453,
	ldr	ip, [sp, #312]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	strb	r3, [r4, r0]	@ tmp431, <variable>.stDummyPhyFs.DispState
	movw	r0, #27744	@ tmp447,
	strb	r3, [r4, r0]	@ tmp431, <variable>.stDummyPhyFs.IsDecRef
	movw	r0, #27784	@ tmp445,
	str	ip, [r4, r0]	@ MemArrange.ChromaPixelOffset, <variable>.stDummyPhyFs.ChromaPixelOffset
	movw	ip, #27745	@ tmp450,
	strb	r3, [r4, ip]	@ tmp431, <variable>.stDummyPhyFs.IsTfRef
	movw	r3, #34656	@ tmp456,
	ldr	r0, [sp, #452]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	movw	ip, #34644	@ tmp458,
	str	r0, [r4, r3]	@ MemArrange.u32StrideByte, <variable>.StrideByte
	ldr	r0, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	str	r0, [r4, ip]	@ MemArrange.TotalMemUsed, <variable>.TotalMemUsed
	beq	.L768	@,
.L711:
	movw	r5, #:lower16:s_pstVfmwChan	@ tmp849,
	movt	r5, #:upper16:s_pstVfmwChan	@ tmp849,
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r8, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L769	@,
.L713:
	movw	r3, #27860	@ tmp834,
	movw	r9, #27808	@ tmp835,
	ldrsb	r0, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldrsb	r5, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r4, r3]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r3, [r4, r9]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, #56]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	rsb	r9, r3, ip	@ tmp838, <variable>.PhyAddr, <variable>.PhyAddr
	str	r1, [r4, #40]	@ prephitmp.2065, <variable>.stPreInfo.s32PreWidth
	str	r2, [r4, #44]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	str	r0, [r4, #48]	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	str	r9, [r4, #52]	@ tmp838, <variable>.stPreInfo.s32PreDecSlotLen
.L712:
	ldr	r2, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	mov	r0, #0	@ D.36332,
	ldr	r9, [sp, #32]	@, %sfp
	str	r2, [r9, #0]	@ MemArrange.TotalMemUsed,
	b	.L682	@
.L701:
	ldr	r9, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r3, [r4, #67]	@ <variable>.stInstCfg.s32ExpectedDispFsNum, <variable>.stInstCfg.s32ExpectedDispFsNum
	sub	r2, r9, #1	@ tmp347, MemArrange.ValidFrameNum,
	rsb	fp, r1, r2	@ tmp346, <variable>.s32DecFsNum, tmp347
	cmp	fp, #25	@ tmp346,
	movlt	r0, fp	@ tmp875, tmp346
	movge	r0, #25	@ tmp875,
	uxtb	ip, r0	@ prephitmp.2060,
	strb	ip, [r4, #11]	@ tmp9, <variable>.s32DispFsNum
	sxtb	fp, ip	@ prephitmp.2060,
	mov	r9, ip	@,
	cmp	r3, fp	@ <variable>.stInstCfg.s32ExpectedDispFsNum, prephitmp.2060
	ble	.L703	@,
	b	.L693	@
.L689:
	ldrb	r5, [r4, #60]	@ zero_extendqisi2	@ prephitmp.2055, <variable>.stInstCfg.s32DispLoopEnable
	cmp	r5, #0	@ prephitmp.2055,
	beq	.L688	@,
	ldr	r1, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	cmp	r3, r1	@ D.36359, <variable>.stInstCfg.s32DecFsHeight
	beq	.L770	@,
	mvn	r0, #0	@ D.36332,
	b	.L682	@
.L695:
	ldr	r5, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r5, #40	@ MemArrange.ValidFrameNum,
	movge	r5, #40	@ tmp264,
	strb	r5, [r4, #10]	@ tmp264, <variable>.s32DecFsNum
	b	.L697	@
.L768:
	ldr	r0, [r4, #44]	@ <variable>.stPreInfo.s32PreHeight, <variable>.stPreInfo.s32PreHeight
	cmp	r2, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stPreInfo.s32PreHeight
	bne	.L711	@,
	ldrsb	ip, [r4, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	r3, [r4, #48]	@ <variable>.stPreInfo.s32PreDecNum, <variable>.stPreInfo.s32PreDecNum
	cmp	ip, r3	@ <variable>.s32DecFsNum, <variable>.stPreInfo.s32PreDecNum
	bne	.L711	@,
	ldrsb	r0, [r4, #65]	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stInstCfg.s32ExpectedDecFsNum
	ldr	ip, [r4, #56]	@ <variable>.stPreInfo.s32PreExpectNum, <variable>.stPreInfo.s32PreExpectNum
	cmp	r0, ip	@ <variable>.stInstCfg.s32ExpectedDecFsNum, <variable>.stPreInfo.s32PreExpectNum
	bne	.L711	@,
	b	.L712	@
.L769:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	sl, [sp, #28]	@, %sfp
	ldr	r3, [r5, #0]	@ D.39000, s_pstVfmwChan
	ldr	r0, [sl, #0]	@ pstInst, s_pFspInst
	movw	sl, #:lower16:.LANCHOR0	@ tmp471,
	ldr	r2, [r3, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movt	sl, #:upper16:.LANCHOR0	@ tmp471,
	ldr	r6, [r0, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	ldr	r1, [r0, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	ldr	r0, [r3, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmp	r6, r0	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stSynExtraData.s32DSDThrHeight
	cmple	r1, r2	@, <variable>.stInstCfg.s32DecFsWidth, <variable>.stSynExtraData.s32DSDThrWidth
	movgt	r6, #0	@, tmp483
	movle	r6, #1	@, tmp483
	ble	.L771	@,
	ldr	r7, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r7, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L772	@,
	bl	vfmw_dprint_nothing	@
	ldr	r9, [sl, #0]	@ pstInst, s_pFspInst
	movw	ip, #34640	@ tmp764,
	ldrsb	r3, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	sl, [r9, ip]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r3, #0	@ <variable>.s32DecFsNum,
	ble	.L727	@,
	add	fp, r9, #27648	@ ivtmp.2091, pstInst,
	add	r7, fp, #160	@ ivtmp.2091, ivtmp.2091,
	mov	fp, r8	@ tmp858, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r8, r4	@ D.36334, D.36334
	b	.L735	@
.L774:
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, ip, r3	@ tmp771, tmp770, s_pstVfmwChan
	add	r1, lr, #216064	@ tmp772, tmp771,
	add	r3, r1, #360	@ tmp772, tmp772,
	str	r0, [r3, #0]	@ s32UsingCount, <variable>.eFrameState
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, ip, lr	@ tmp778, tmp770, s_pstVfmwChan
	add	ip, r1, #216064	@ tmp779, tmp778,
	add	r3, ip, #360	@ tmp779, tmp779,
	str	r4, [r3, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [lr, r2, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r1, r2, asl #4	@, tmp790, s_pstVfmwChan, tmp782,
	str	r0, [r4, #4]	@ s32UsingCount, <variable>.s32UsingCount
.L733:
	ldrsb	r0, [r9, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r6, r6, #1	@ i, i,
	add	r7, r7, #52	@ ivtmp.2091, ivtmp.2091,
	cmp	r6, r0	@ i, <variable>.s32DecFsNum
	bge	.L773	@,
.L735:
	ldr	r4, [r7, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	mov	r2, sl	@, s32ImgSize
	mov	r0, #0	@,
	mov	r1, r4	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	add	r2, r6, #13504	@ tmp782, i,
	mov	ip, r6, asl #4	@ tmp770, i,
	add	r2, r2, #23	@ tmp782, tmp782,
	mov	r1, ip	@ tmp796, tmp770
	mov	r3, r2	@ tmp808, tmp782
	cmp	r0, #0	@ s32UsingCount
	beq	.L774	@,
	ble	.L734	@,
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, ip, lr	@ tmp797, tmp796, s_pstVfmwChan
	add	r2, ip, #216064	@ tmp798, tmp797,
	add	lr, r2, #360	@ tmp798, tmp798,
	str	fp, [lr, #0]	@ tmp858, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, r1, ip	@ tmp804, tmp796, s_pstVfmwChan
	add	lr, r2, #216064	@ tmp805, tmp804,
	add	r1, lr, #360	@ tmp805, tmp805,
	str	r4, [r1, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [ip, r3, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r2, r3, asl #4	@, tmp816, s_pstVfmwChan, tmp808,
	str	r0, [r4, #4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L733	@
.L771:
	ldr	lr, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L775	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L759	@,
	mov	r1, r8	@, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret.2267,
	mov	r6, r0	@ s32Ret.2267,
	beq	.L758	@,
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:s_DnrChan	@ tmp640,
	movw	r1, #:lower16:76660	@ tmp641,
	movt	r3, #:upper16:s_DnrChan	@ tmp640,
	movt	r1, #:upper16:76660	@ tmp641,
	movw	lr, #:lower16:76664	@ tmp644,
	str	r8, [ip, #1604]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.s32DnrEnable
	movt	lr, #:upper16:76664	@ tmp644,
	ldr	r0, [r5, #0]	@ temp.2292, s_pstVfmwChan
	ldr	r2, [r0, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	r2, [r3, r1]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r0, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [r3, lr]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret.2267,
	bne	.L693	@,
.L760:
	ldr	r1, [r4, #72]	@ prephitmp.2065, <variable>.stInstCfg.s32DecFsWidth
	ldr	r2, [r4, #76]	@ <variable>.stInstCfg.s32DecFsHeight, <variable>.stInstCfg.s32DecFsHeight
	b	.L713	@
.L696:
	ldr	r2, [sp, #316]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r2, [r4, #10]	@ MemArrange.ValidFrameNum, <variable>.s32DecFsNum
	b	.L697	@
.L773:
	mov	r4, r8	@ D.36334, D.36334
.L727:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret.2290
	bne	.L759	@,
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:s_DnrChan	@ tmp825,
	movw	r1, #:lower16:76660	@ tmp826,
	movt	r3, #:upper16:s_DnrChan	@ tmp825,
	movt	r1, #:upper16:76660	@ tmp826,
	movw	r9, #:lower16:76664	@ tmp829,
	str	r0, [lr, #1604]	@ s32Ret.2290, <variable>.stSynExtraData.s32DnrEnable
	movt	r9, #:upper16:76664	@ tmp829,
	ldr	r2, [r5, #0]	@ temp.2297, s_pstVfmwChan
	ldr	ip, [r2, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	ip, [r3, r1]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r5, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r5, [r3, r9]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L760	@
.L772:
	bl	vfmw_dprint_nothing	@
	ldr	r8, [sl, #0]	@ pstInst, s_pFspInst
	movw	ip, #:lower16:s_DnrChan	@ tmp650,
	movw	r2, #:lower16:76660	@ tmp651,
	movt	ip, #:upper16:s_DnrChan	@ tmp650,
	movt	r2, #:upper16:76660	@ tmp651,
	ldrsb	r0, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	movw	r1, #:lower16:76664	@ tmp653,
	movt	r1, #:upper16:76664	@ tmp653,
	movw	r3, #34640	@ tmp649,
	cmp	r0, #0	@ <variable>.s32DecFsNum,
	ldr	r0, [ip, r2]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	sl, [ip, r1]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	ldr	ip, [r8, r3]	@ s32ImgSize, <variable>.ImgSlotLen
	add	sl, r0, sl	@ s32DnrEndAddr, s32DnrStartAddr, <variable>.s32OffLineDNRMemSize
	ble	.L727	@,
	add	r9, r8, #27648	@ ivtmp.2086, pstInst,
	mov	r3, r6	@ i, tmp483
	add	r1, r9, #160	@ ivtmp.2086, ivtmp.2086,
	b	.L731	@
.L776:
	ldr	r9, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, r6, r9	@ tmp668, tmp667, s_pstVfmwChan
	add	r9, r7, #216064	@ tmp669, tmp668,
	add	r7, r9, #360	@ tmp669, tmp669,
	mov	r9, #1	@,
	str	r9, [r7, #0]	@, <variable>.eFrameState
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, r6, r7	@ tmp675, tmp667, s_pstVfmwChan
	add	r6, r6, #216064	@ tmp676, tmp675,
	add	r6, r6, #360	@ tmp676, tmp676,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ temp.2272, s_pstVfmwChan
	add	lr, r2, lr, asl #4	@, tmp686, temp.2272, tmp679,
	ldr	r2, [lr, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, r2, r9	@ tmp695, <variable>.s32UsingCount,
	str	r2, [lr, #4]	@ tmp695, <variable>.s32UsingCount
.L729:
	ldrsb	lr, [r8, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2086, ivtmp.2086,
	cmp	r3, lr	@ i, <variable>.s32DecFsNum
	bge	.L727	@,
.L731:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r7, r3, #13504	@ tmp679, i,
	add	lr, r7, #23	@ tmp679, tmp679,
	mov	r6, r3, asl #4	@ tmp667, i,
	cmp	sl, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r9, #0	@, tmp663
	movgt	r9, #1	@, tmp663
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r2, ip	@ tmp696, s32FrameStartAddr, s32ImgSize
	movgt	r9, #0	@, tmp663,
	cmp	r9, #0	@ tmp663,
	bne	.L776	@,
	cmp	r0, r7	@ s32DnrStartAddr, tmp696
	movge	r7, #0	@, tmp703
	movlt	r7, #1	@, tmp703
	cmp	r0, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	lr, r3, #13504	@ tmp719, i,
	mov	fp, r3, asl #4	@ tmp707, i,
	add	r6, lr, #23	@ tmp719, tmp719,
	movle	r7, #0	@, tmp703,
	cmp	r7, #0	@ tmp703,
	mov	r9, fp	@ tmp739, tmp707
	mov	lr, r6	@ tmp751, tmp719
	beq	.L730	@,
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, fp, r7	@ tmp708, tmp707, s_pstVfmwChan
	add	r7, lr, #216064	@ tmp709, tmp708,
	add	lr, r7, #360	@ tmp709, tmp709,
	mov	r7, #1	@,
	str	r7, [lr, #0]	@, <variable>.eFrameState
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, fp, lr	@ tmp715, tmp707, s_pstVfmwChan
	add	lr, lr, #216064	@ tmp716, tmp715,
	add	lr, lr, #360	@ tmp716, tmp716,
	str	r2, [lr, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	lr, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [lr, r6, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ temp.2276, s_pstVfmwChan
	add	r6, r2, r6, asl #4	@, tmp726, temp.2276, tmp719,
	ldr	lr, [r6, #4]	@ <variable>.s32UsingCount, <variable>.s32UsingCount
	add	r2, lr, r7	@ tmp735, <variable>.s32UsingCount,
	str	r2, [r6, #4]	@ tmp735, <variable>.s32UsingCount
	b	.L729	@
.L730:
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, fp, r6	@ tmp740, tmp739, s_pstVfmwChan
	add	r6, r6, #216064	@ tmp741, tmp740,
	add	r6, r6, #360	@ tmp741, tmp741,
	str	r7, [r6, #0]	@ tmp703, <variable>.eFrameState
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r6, fp, r6	@ tmp747, tmp739, s_pstVfmwChan
	add	r6, r6, #216064	@ tmp748, tmp747,
	add	r6, r6, #360	@ tmp748, tmp748,
	str	r2, [r6, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r2, lr, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r2, lr, asl #4	@, tmp759, s_pstVfmwChan, tmp751,
	str	r7, [lr, #4]	@ tmp703, <variable>.s32UsingCount
	b	.L729	@
.L775:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:s_DnrChan	@,
	movw	r2, #:lower16:76660	@ tmp487,
	movt	r0, #:upper16:s_DnrChan	@,
	movt	r2, #:upper16:76660	@ tmp487,
	str	r0, [sp, #28]	@, %sfp
	ldr	r8, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r1, #:lower16:76664	@ tmp489,
	ldr	r6, [r0, r2]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	movt	r1, #:upper16:76664	@ tmp489,
	ldr	sl, [sl, #0]	@ pstInst, s_pFspInst
	movw	r9, #34640	@ tmp494,
	ldr	r3, [r0, r1]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	str	r6, [r8, #236]	@ s32DnrStartAddr, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r8, r3, r6	@ s32DnrEndAddr, s32DnrSize, s32DnrStartAddr
	str	r3, [ip, #240]	@ s32DnrSize, <variable>.s32OffLineDNRMemSize
	ldrsb	r7, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	ldr	lr, [sl, r9]	@ s32ImgSize, <variable>.ImgSlotLen
	cmp	r7, #0	@ <variable>.s32DecFsNum,
	ble	.L716	@,
	add	r7, sl, #27648	@ ivtmp.2081, pstInst,
	mov	r3, #0	@ i,
	add	r1, r7, #160	@ ivtmp.2081, ivtmp.2081,
	str	r4, [sp, #36]	@ D.36334, %sfp
	b	.L721	@
.L778:
	ldr	r4, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, r7, r4	@ tmp508, tmp507, s_pstVfmwChan
	mov	r4, #2	@,
	add	r0, r9, #216064	@ tmp509, tmp508,
	add	r9, r0, #360	@ tmp509, tmp509,
	str	r4, [r9, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, r7, r0	@ tmp515, tmp507, s_pstVfmwChan
	add	r4, r9, #216064	@ tmp516, tmp515,
	mov	r9, #0	@,
	add	r7, r4, #360	@ tmp516, tmp516,
	str	r2, [r7, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r2, ip, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r0, ip, asl #4	@, tmp527, s_pstVfmwChan, tmp519,
	str	r9, [ip, #4]	@, <variable>.s32UsingCount
.L718:
	ldrsb	r0, [sl, #10]	@ <variable>.s32DecFsNum, <variable>.s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.2081, ivtmp.2081,
	cmp	r3, r0	@ i, <variable>.s32DecFsNum
	bge	.L777	@,
.L721:
	ldr	r2, [r1, #0]	@ s32FrameStartAddr, <variable>.PhyAddr
	add	r4, r3, #13504	@ tmp519, i,
	add	ip, r4, #23	@ tmp519, tmp519,
	mov	r7, r3, asl #4	@ tmp507, i,
	cmp	r8, r2	@ s32DnrEndAddr, s32FrameStartAddr
	movle	r4, #0	@, tmp503
	movgt	r4, #1	@, tmp503
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r0, r2, lr	@ s32FrameEndAddr, s32FrameStartAddr, s32ImgSize
	movgt	r4, #0	@, tmp503,
	cmp	r4, #0	@ tmp503,
	bne	.L778	@,
	cmp	r8, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movlt	ip, #0	@, tmp536
	movge	ip, #1	@, tmp536
	cmp	r6, r0	@ s32DnrStartAddr, s32FrameEndAddr
	add	fp, r3, #13504	@ tmp552, i,
	mov	r9, r3, asl #4	@ tmp540, i,
	movge	ip, #0	@, tmp536,
	cmp	ip, #0	@ tmp536,
	add	r7, fp, #23	@ tmp552, tmp552,
	beq	.L719	@,
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r9, r0	@ tmp541, tmp540, s_pstVfmwChan
	add	fp, ip, #216064	@ tmp542, tmp541,
	add	r0, fp, #360	@ tmp542, tmp542,
	mov	fp, #2	@,
	str	fp, [r0, #0]	@, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, r9, ip	@ tmp548, tmp540, s_pstVfmwChan
	add	ip, r0, #216064	@ tmp549, tmp548,
	add	r9, ip, #360	@ tmp549, tmp549,
	str	r2, [r9, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r0, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r2, r7, asl #4	@, tmp560, s_pstVfmwChan, tmp552,
	str	r4, [ip, #4]	@ tmp503, <variable>.s32UsingCount
	b	.L718	@
.L719:
	cmp	r8, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r0, #0	@, tmp569
	movlt	r0, #1	@, tmp569
	cmp	r6, r2	@ s32DnrStartAddr, s32FrameStartAddr
	add	r7, r3, #13504	@ tmp585, i,
	mov	fp, r3, asl #4	@ tmp573, i,
	add	r7, r7, #23	@ tmp585, tmp585,
	movle	r0, #0	@, tmp569,
	cmp	r0, #0	@ tmp569,
	mov	r4, r7	@ tmp611, tmp585
	beq	.L720	@,
	ldr	r4, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, fp, r4	@ tmp574, tmp573, s_pstVfmwChan
	mov	r4, #2	@,
	add	r0, r9, #216064	@ tmp575, tmp574,
	add	r9, r0, #360	@ tmp575, tmp575,
	str	r4, [r9, #0]	@, <variable>.eFrameState
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r9, fp, r0	@ tmp581, tmp573, s_pstVfmwChan
	add	r4, r9, #216064	@ tmp582, tmp581,
	add	r0, r4, #360	@ tmp582, tmp582,
	str	r2, [r0, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r9, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r9, r7, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r4, r2, r7, asl #4	@, tmp593, s_pstVfmwChan, tmp585,
	str	ip, [r4, #4]	@ tmp536, <variable>.s32UsingCount
	b	.L718	@
.L720:
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, fp, ip	@ tmp600, tmp599, s_pstVfmwChan
	add	ip, r7, #216064	@ tmp601, tmp600,
	add	r7, ip, #360	@ tmp601, tmp601,
	str	r0, [r7, #0]	@ tmp569, <variable>.eFrameState
	ldr	ip, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r7, fp, ip	@ tmp607, tmp599, s_pstVfmwChan
	add	ip, r7, #216064	@ tmp608, tmp607,
	add	r9, ip, #360	@ tmp608, tmp608,
	str	r2, [r9, #4]	@ s32FrameStartAddr, <variable>.s32FrameAddr
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	lr, [r2, r4, asl #4]	@ s32ImgSize, <variable>.s32FrameSize
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, r7, r4, asl #4	@, tmp619, s_pstVfmwChan, tmp611,
	str	r0, [ip, #4]	@ tmp569, <variable>.s32UsingCount
	b	.L718	@
.L777:
	ldr	r4, [sp, #36]	@ D.36334, %sfp
.L716:
	ldr	r7, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r9, #1	@ tmp625,
	movw	r2, #:lower16:76660	@ tmp628,
	movt	r2, #:upper16:76660	@ tmp628,
	movw	lr, #:lower16:76664	@ tmp631,
	movt	lr, #:upper16:76664	@ tmp631,
	str	r9, [r7, #1604]	@ tmp625, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r5, #0]	@ temp.2303, s_pstVfmwChan
	ldr	r7, [sp, #28]	@, %sfp
	ldr	r1, [r3, #236]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	str	r1, [r7, r2]	@ <variable>.s32OffLineDnrMemAddr, <variable>.s32OffLineDnrMemAddr
	ldr	r5, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r5, [r7, lr]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L760	@
.L734:
	bl	vfmw_dprint_nothing	@
.L758:
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L693	@
.L759:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_DSDLock	@,
	movt	r0, #:upper16:g_DSDLock	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L693	@
.L770:
	ldr	r3, [r4, #72]	@ <variable>.stInstCfg.s32DecFsWidth, <variable>.stInstCfg.s32DecFsWidth
	cmp	r2, r3	@ D.36361, <variable>.stInstCfg.s32DecFsWidth
	beq	.L688	@,
	mvn	r0, #0	@ D.36332,
	b	.L682	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r4, r0, #0	@ InstID, InstID
	mov	sl, r1	@ pstVoQue, pstVoQue
	bne	.L792	@,
	cmp	r1, #0	@ pstVoQue,
	beq	.L792	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r8, [r3, #0]	@ D.35656, s_pFspInst
	cmp	r8, #0	@ D.35656,
	movne	r5, r8	@ ivtmp.2337, D.35656
	movne	r9, #432	@ tmp150,
	bne	.L785	@,
	b	.L792	@
.L784:
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetRef	@
	mla	r2, r9, r7, r8	@ tmp159, tmp150, tmp151, D.35656
	mov	r0, sl	@, pstVoQue
	add	r1, r2, #104	@, tmp159,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L793	@,
	add	r4, r7, #1	@ i, tmp151,
	add	r5, r6, #432	@ ivtmp.2337, tmp152,
	cmp	r4, #64	@ i,
	beq	.L794	@,
.L785:
	mov	r0, #0	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	add	r6, r5, #432	@ tmp152, ivtmp.2337,
	bl	FSP_SetRef	@
	mla	r1, r9, r4, r8	@ tmp146, tmp150, i, D.35656
	mov	r0, sl	@, pstVoQue
	add	r7, r4, #1	@ tmp151, i,
	add	r1, r1, #104	@, tmp146,
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L784	@,
	mov	r0, #0	@,
	ldr	r1, [r5, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	bl	FSP_SetDisplay	@
	b	.L784	@
.L793:
	mov	r0, #0	@,
	ldr	r1, [r6, #280]	@, <variable>.stDispImg.image_id
	mov	r2, r0	@,
	add	r4, r7, #1	@ i, tmp151,
	bl	FSP_SetDisplay	@
	cmp	r4, #64	@ i,
	add	r5, r6, #432	@ ivtmp.2337, tmp152,
	bne	.L785	@,
.L794:
	mov	r0, #0	@ D.35652,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L792:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35652,
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
