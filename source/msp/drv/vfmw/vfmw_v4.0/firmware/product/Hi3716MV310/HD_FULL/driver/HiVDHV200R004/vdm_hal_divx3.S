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
	.file	"vdm_hal_divx3.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_StartVDH
	.type	DIVX3HAL_V200R004_StartVDH, %function
DIVX3HAL_V200R004_StartVDH:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC0	@,
	b	dprint_vfmw	@
	.fnend
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r0, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r3, r2, #15	@, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L26	@,
	ldr	r0, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	cmp	r0, #0	@ <variable>.slice_start_mbn,
	streq	r0, [sp, #0]	@ <variable>.slice_start_mbn, %sfp
	bne	.L27	@,
.L7:
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L16	@,
	add	r9, sp, #12	@ tmp255,,
	mov	r5, #0	@ i,
.L15:
	cmp	r5, #0	@ i,
	moveq	r7, #14	@ tmp251,
	beq	.L8	@,
	add	r7, r5, #14	@ tmp251, i,
	add	r2, r5, #13	@ tmp214, i,
	ldr	r0, [r6, r7, asl #2]	@ tmp215, <variable>.slice_start_mbn
	ldr	r1, [r6, r2, asl #2]	@ tmp216, <variable>.slice_start_mbn
	cmp	r0, r1	@ tmp215, tmp216
	bls	.L9	@,
.L8:
	ldr	r3, [sp, #0]	@, %sfp
	mov	r4, #0	@ tmp220,
	ldr	fp, [r6, r7, asl #2]	@ tmp221, <variable>.slice_start_mbn
	mov	r0, #4	@,
	add	r8, r5, r3	@ D.31485, i,
	movw	r1, #:lower16:.LC3	@,
	bfi	r4, fp, #0, #20	@ tmp220, tmp221,,
	str	r4, [r9, #0]	@ tmp220,
	str	r4, [sl, r8, asl #8]	@ D32.551,* pMsgBase
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [sp, #12]	@, D32
	add	r4, r5, #1	@ j, i,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #52]	@ temp.563, <variable>.TotalSliceNum
	mov	fp, r8, asl #8	@ D.31486, D.31485,
	cmp	r4, r1	@ j, temp.563
	bcs	.L10	@,
	add	r5, r5, #15	@ tmp225, i,
	ldr	r2, [r6, r7, asl #2]	@ temp.564, <variable>.slice_start_mbn
	ldr	r3, [r6, r5, asl #2]	@ tmp226, <variable>.slice_start_mbn
	cmp	r2, r3	@ temp.564, tmp226
	bcc	.L10	@,
	mvn	lr, r4	@ tmp261, j
	add	r3, lr, r1	@ tmp260, tmp261, temp.563
	tst	r3, #1	@ tmp260,
	add	r7, r6, r7, asl #2	@, ivtmp.537, pDivx3DecParam, tmp251,
	beq	.L11	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.563
	bcs	.L10	@,
	ldr	r3, [r7, #8]	@ D.31519, <variable>.slice_start_mbn
	add	r7, r7, #4	@ ivtmp.537, ivtmp.537,
	cmp	r3, r2	@ D.31519, temp.564
	bls	.L11	@,
	b	.L10	@
.L12:
	ldr	ip, [r7, #8]	@ D.31519, <variable>.slice_start_mbn
	add	r7, r3, #4	@ ivtmp.537, tmp263,
	cmp	ip, r2	@ D.31519, temp.564
	bhi	.L10	@,
	ldr	r3, [r3, #8]	@ D.31519, <variable>.slice_start_mbn
	add	r4, r4, #1	@ j, j,
	cmp	r3, r2	@ D.31519, temp.564
	bhi	.L10	@,
.L11:
	add	r4, r4, #1	@ j, j,
	add	r3, r7, #4	@ tmp263, ivtmp.537,
	cmp	r4, r1	@ j, temp.563
	bcc	.L12	@,
.L10:
	cmp	r4, r1	@ j, temp.563
	mov	r8, r8, asl #6	@ tmp240, D.31485,
	addne	r3, r4, #14	@ tmp232, j,
	add	r8, r8, #1	@ tmp241, tmp240,
	ldreq	r2, [r6, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r1, #0	@ tmp239,
	ldreq	r3, [r6, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	add	fp, fp, #252	@ tmp247, D.31486,
	ldrne	r2, [sp, #0]	@, %sfp
	moveq	r7, #0	@ prephitmp.520,
	sub	r5, r4, #1	@ i, j,
	muleq	r2, r2, r3	@ tmp229, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	addne	r7, r2, r4, asl #2	@, tmp235,, j,
	ldrne	r2, [r6, r3, asl #2]	@ tmp233, <variable>.slice_start_mbn
	ldrne	r3, [sp, #4]	@, %sfp
	sub	r0, r2, #1	@ last_mb_in_slice, tmp233,
	bfi	r1, r0, #0, #20	@ tmp239, last_mb_in_slice,,
	str	r1, [r9, #0]	@ tmp239,
	str	r1, [sl, r8, asl #2]	@ D32.559,* pMsgBase
	mov	r0, #4	@,
	ldr	r2, [sp, #12]	@, D32
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	addne	r7, r3, r7, asl #6	@, prephitmp.520,, tmp235,
	bl	dprint_vfmw	@
	str	r7, [r9, #0]	@ prephitmp.520, <variable>.next_slice_para_addr
	str	r7, [sl, fp]	@ D32.568,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #52]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
.L9:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L15	@,
.L16:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	mov	r4, #0	@ tmp195,
	mov	r0, #4	@,
	mov	ip, r4	@ tmp197, tmp195
	bfi	ip, r4, #0, #20	@ tmp197, tmp195,,
	str	ip, [sp, #12]	@ tmp197,
	movw	r1, #:lower16:.LC3	@,
	str	ip, [sl, #0]	@ tmp197,* pMsgBase
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [sp, #12]	@, D32
	mov	lr, #1	@,
	str	lr, [sp, #0]	@, %sfp
	bl	dprint_vfmw	@
	ldr	r2, [r6, #56]	@ <variable>.slice_start_mbn, <variable>.slice_start_mbn
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	sub	r3, r2, #1	@ tmp202, <variable>.slice_start_mbn,
	bfi	r4, r3, #0, #20	@ tmp204, tmp202,,
	str	r4, [sp, #12]	@ tmp204,
	str	r4, [sl, #4]	@ tmp204,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [sp, #4]	@, %sfp
	mov	r0, #4	@,
	add	r1, ip, #256	@ tmp209,,
	str	r1, [sp, #12]	@ tmp209, <variable>.next_slice_para_addr
	str	r1, [sl, #252]	@ tmp209,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	b	.L7	@
.L26:
	movw	r1, #:lower16:.LC1	@,
	mov	r2, #484	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L16	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteSliceMsg, .-DIVX3HAL_V200R004_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R004_WritePicMsg
	.type	DIVX3HAL_V200R004_WritePicMsg, %function
DIVX3HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.31344,
	beq	.L32	@,
	ldr	r0, [r4, #4]	@ <variable>.prediction_type, <variable>.prediction_type
	mov	r8, #0	@ tmp191,
	mov	r7, r5	@ p32, D.31344
	mov	sl, r8	@ tmp194, tmp191
	bfi	sl, r0, #0, #1	@ tmp194, <variable>.prediction_type,,
	str	sl, [sp, #4]	@ tmp194,
	str	sl, [r7], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@, D32
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	sl, r7, r0	@ p32.602, p32,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldr	r2, [r4, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r0, #4	@,
	sub	ip, r1, #1	@ tmp200, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC4	@,
	sub	r2, r2, #1	@ tmp204, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC4	@,
	mov	r3, ip, asl #23	@ tmp205, tmp200,
	mov	ip, r3, lsr #23	@ tmp205, tmp205,
	bfi	ip, r2, #16, #9	@ tmp205, tmp204,,
	str	ip, [sp, #4]	@ tmp205,
	str	ip, [r5, #4]	@ tmp205,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ <variable>.quantizer, <variable>.quantizer
	ldr	r1, [r4, #20]	@ <variable>.rounding_type, <variable>.rounding_type
	mov	r0, #4	@,
	ldr	r2, [r4, #24]	@ <variable>.has_skips, <variable>.has_skips
	and	ip, r3, #31	@ tmp212, <variable>.quantizer,
	bfi	ip, r1, #5, #1	@ tmp212, <variable>.rounding_type,,
	movw	r1, #:lower16:.LC7	@,
	bfi	ip, r2, #6, #1	@ tmp214, <variable>.has_skips,,
	str	ip, [sp, #4]	@ tmp214,
	str	ip, [r7, #4]	@ tmp214,
	movt	r1, #:upper16:.LC7	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@ <variable>.alternative_I_AC_chrom_DCT, <variable>.alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ <variable>.alternative_I_AC_lum_DCT, <variable>.alternative_I_AC_lum_DCT
	mov	r0, #4	@,
	ldr	r2, [r4, #36]	@ <variable>.alternative_I_DC_DCT, <variable>.alternative_I_DC_DCT
	and	r3, r3, #3	@ tmp221, <variable>.alternative_I_AC_chrom_DCT,
	ldr	lr, [r4, #40]	@ <variable>.alternative_P_AC_DCT, <variable>.alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ tmp221, <variable>.alternative_I_AC_lum_DCT,,
	ldr	ip, [r4, #44]	@ <variable>.alternative_P_DC_DCT, <variable>.alternative_P_DC_DCT
	bfi	r3, r2, #4, #1	@ tmp223, <variable>.alternative_I_DC_DCT,,
	bfi	r3, lr, #5, #2	@ tmp225, <variable>.alternative_P_AC_DCT,,
	ldr	r2, [r4, #48]	@ <variable>.alternative_MV, <variable>.alternative_MV
	bfi	r3, ip, #7, #1	@ tmp227, <variable>.alternative_P_DC_DCT,,
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, r2, #8, #1	@ tmp229, <variable>.alternative_MV,,
	str	r3, [sp, #4]	@ tmp229,
	str	r3, [sl, #4]	@ tmp229,
	movt	r1, #:upper16:.LC8	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r3, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_0
	str	r3, [r5, #64]	@ <variable>.StreamPhyAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #108]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r8	@ tmp240, tmp191
	mov	r0, #4	@,
	bfi	ip, r1, #0, #7	@ tmp240, <variable>.StreamBitOffset,,
	str	ip, [sp, #4]	@ tmp240,
	str	ip, [r5, #68]	@ tmp240,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	str	r2, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_0
	str	r2, [r5, #72]	@ <variable>.StreamLength,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	str	r3, [sp, #4]	@ <variable>.StreamPhyAddr, <variable>.bit_stream_address_1
	str	r3, [r5, #76]	@ <variable>.StreamPhyAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #112]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	bfi	r8, r1, #0, #7	@ tmp256, <variable>.StreamBitOffset,,
	str	r8, [sp, #4]	@ tmp256,
	str	r8, [r5, #80]	@ tmp256,
	movw	r1, #:lower16:.LC13	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #120]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	str	ip, [sp, #4]	@ <variable>.StreamLength, <variable>.bit_len_1
	str	ip, [r5, #84]	@ <variable>.StreamLength,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp267, <variable>.DispFramePhyAddr,
	str	r3, [sp, #4]	@ tmp267, <variable>.curr_rcn_addr
	str	r3, [r5, #128]	@ tmp267,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #124]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	bic	r2, ip, #15	@ tmp273, <variable>.FwdRefPhyAddr,
	str	r2, [sp, #4]	@ tmp273, <variable>.fwd_ref_addr
	str	r2, [r5, #132]	@ tmp273,
	movt	r1, #:upper16:.LC16	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [sp, #4]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #136]	@ tmp279,
	movt	r1, #:upper16:.LC17	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [sp, #4]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #140]	@ tmp285,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1092]	@ <variable>.ItransTopAddr, <variable>.ItransTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r2, ip, #15	@ tmp291, <variable>.ItransTopAddr,
	str	r2, [sp, #4]	@ tmp291, <variable>.it_top_addr
	str	r2, [r5, #144]	@ tmp291,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #148]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	ip, r3, #15	@ tmp297, <variable>.CurrPmvPhyAddr,
	str	ip, [sp, #4]	@ tmp297, <variable>.pmv_colmb_addr
	str	ip, [r5, #148]	@ tmp297,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #4	@,
	bic	r3, r2, #15	@ tmp303, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
.L31:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L32:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #290	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L31	@
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC21	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC21	@,
	mov	sl, r2	@ VdhId, VdhId
	movw	r6, #1140	@ tmp195,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #12]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r4, #:lower16:g_HwMem	@ tmp372,
	ldr	r7, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r4, #:upper16:g_HwMem	@ tmp372,
	mul	r6, r6, sl	@ tmp194, tmp195, VdhId
	movw	r1, #:lower16:.LC22	@,
	mul	r3, r7, r0	@ tmp182, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	mov	r7, #0	@ tmp181,
	movt	r1, #:upper16:.LC22	@,
	mov	r0, #3	@,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	sub	ip, r3, #1	@ tmp185, tmp182,
	bic	r3, ip, #-16777216	@ tmp192, tmp185,
	bic	ip, r3, #15728640	@ tmp192, tmp192,
	bfi	ip, r7, #25, #1	@ tmp192, tmp181,,
	str	ip, [sp, #4]	@ tmp192,
	str	ip, [r2, #8]	@ tmp192,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r5, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	mov	r3, #5	@ tmp205,
	ldr	ip, [r5, #156]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	mov	lr, r1, lsr #6	@ tmp203, <variable>.DDRStride,
	movw	r1, #:lower16:.LC23	@,
	bfi	r3, lr, #4, #10	@ tmp205, tmp203,,
	movt	r1, #:upper16:.LC23	@,
	orr	lr, r3, #49152	@ tmp210, tmp205,
	bfi	lr, r7, #16, #12	@ tmp210, tmp181,,
	bic	r3, lr, #805306368	@ tmp211, tmp210,
	orr	lr, r3, #536870912	@ tmp215, tmp211,
	bfi	lr, ip, #30, #1	@ tmp215, <variable>.Compress_en,,
	bfi	lr, r7, #31, #1	@ tmp216, tmp181,,
	str	lr, [sp, #4]	@ tmp216,
	str	lr, [r2, #12]	@ tmp216,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bic	r3, ip, #15	@ tmp227, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp227, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp227,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, ip, #15	@ tmp238, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp238, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp238,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #96]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	str	ip, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	r7, [sp, #4]	@ tmp181, D32
	movls	r3, #65536	@ tmp258,
	strls	r3, [sp, #4]	@ tmp258, D32
	cmp	sl, #0	@ VdhId,
	bne	.L41	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	ip, #:lower16:s_RegPhyBaseAddr	@ tmp261,
	movt	ip, #:upper16:s_RegPhyBaseAddr	@ tmp261,
	ldr	r1, [sp, #4]	@ D32, D32
	ldr	r2, [ip, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@ D.31281,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L38:
	movw	r7, #1140	@ tmp268,
	movw	r3, #:lower16:3148803	@ tmp265,
	mul	r6, r7, sl	@ tmp267, tmp268, VdhId
	movt	r3, #:upper16:3148803	@ tmp265,
	str	r3, [sp, #4]	@ tmp265, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r7, #0	@ tmp330,
	ldr	sl, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sl, #60]	@ tmp265,
	ldr	lr, [sp, #4]	@ D32.734, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #64]	@ D32.734,
	ldr	sl, [sp, #4]	@ D32.738, D32
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [ip, #68]	@ D32.738,
	ldr	r2, [sp, #4]	@ D32.742, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.742,
	ldr	ip, [sp, #4]	@ D32.746, D32
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #76]	@ D32.746,
	ldr	r2, [sp, #4]	@ D32.750, D32
	ldr	sl, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #80]	@ D32.750,
	ldr	lr, [sp, #4]	@ D32.754, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #84]	@ D32.754,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #128]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bic	sl, ip, #15	@ D32.442, <variable>.CurPicPhyAddr,
	str	sl, [sp, #4]	@ D32.442, D32
	str	sl, [r2, #96]	@ D32.442,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #136]	@ D32.760, <variable>.DDRStride
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	sl, [r5, #12]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC30	@,
	str	r3, [sp, #4]	@ D32.760, D32
	movt	r1, #:upper16:.LC30	@,
	str	r3, [ip, #100]	@ D32.760,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #136]	@ <variable>.DDRStride, <variable>.DDRStride
	add	ip, sl, #1	@ tmp321, height_in_mb,
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC31	@,
	mov	sl, ip, lsr #1	@ tmp322, tmp321,
	mov	r2, r2, asl #1	@ tmp319, <variable>.DDRStride,
	movt	r1, #:upper16:.LC31	@,
	mul	sl, sl, r2	@ D32.444, tmp322, tmp319
	str	sl, [sp, #4]	@ D32.444, D32
	str	sl, [r3, #104]	@ D32.444,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC32	@,
	movt	r1, #:upper16:.LC32	@,
	str	r7, [ip, #108]	@ tmp330,
	ldr	r3, [r8, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	r3, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #4]	@ tmp330, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	r7, [ip, #148]	@ tmp330,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, r7	@ tmp358, tmp330
	bfi	r1, r7, #0, #1	@ tmp358, tmp330,,
	str	r1, [sp, #4]	@ tmp358,
	mov	r0, #3	@,
	str	r1, [r2, #152]	@ tmp358,
	movw	r1, #:lower16:.LC34	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r0, #0	@ tmp371,
	str	r0, [r3, #32]	@ tmp371,
.L40:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L41:
	ble	.L38	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r2, #194	@,
	movt	r1, #:upper16:.LC27	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L40	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteReg, .-DIVX3HAL_V200R004_WriteReg
	.align	2
	.global	DIVX3HAL_V200R004_StartDec
	.type	DIVX3HAL_V200R004_StartDec, %function
DIVX3HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pDivx3DecParam, pDivx3DecParam
	bls	.L50	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31207,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L50:
	beq	.L51	@,
	movw	r5, #:lower16:g_HwMem	@ tmp142,
	movt	r5, #:upper16:g_HwMem	@ tmp142,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L52	@,
.L47:
	mov	r2, #0	@,
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pDivx3DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.31207,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L52:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31214,
	strne	r1, [r5, #0]	@ D.31214, <variable>.pVdmRegVirAddr
	bne	.L47	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31207,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L51:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r2, #65	@,
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31207,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DIVX3HAL_V200R004_StartDec, .-DIVX3HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start VDM...\012\000"
	.space	2
.LC1:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC3:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D63 = 0x%x\012\000"
.LC6:
	.ascii	"configuring Pic Msg...\012\000"
.LC7:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D16 = 0x%x\012\000"
.LC10:
	.ascii	"D17 = 0x%x\012\000"
.LC11:
	.ascii	"D18 = 0x%x\012\000"
.LC12:
	.ascii	"D19 = 0x%x\012\000"
.LC13:
	.ascii	"D20 = 0x%x\012\000"
.LC14:
	.ascii	"D21 = 0x%x\012\000"
.LC15:
	.ascii	"D32 = 0x%x\012\000"
.LC16:
	.ascii	"D33 = 0x%x\012\000"
.LC17:
	.ascii	"D34 = 0x%x\012\000"
.LC18:
	.ascii	"D35 = 0x%x\012\000"
.LC19:
	.ascii	"D36 = 0x%x\012\000"
.LC20:
	.ascii	"D37 = 0x%x\012\000"
.LC21:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC22:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC23:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC24:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC25:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC26:
	.ascii	"STREAM_V200R003_BASE_ADDR=0x%x\012\000"
.LC27:
	.ascii	"line: %d\012\000"
	.space	2
.LC28:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC29:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC30:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC31:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC32:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC33:
	.ascii	"REF_V200R004_PIC_TYPE=0x%x\012\000"
.LC34:
	.ascii	"FF_V200R004_APT_EN=0x%x\012\000"
	.space	3
.LC35:
	.ascii	"VdhId is wrong! DIVX3HAL_V200R004_StartDec\012\000"
.LC36:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
