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
	.file	"vdm_hal_real9.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real9)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real9.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.o
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
	.global	RV9HAL_V200R004_StartVDH
	.type	RV9HAL_V200R004_StartVDH, %function
RV9HAL_V200R004_StartVDH:
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
	.size	RV9HAL_V200R004_StartVDH, .-RV9HAL_V200R004_StartVDH
	.align	2
	.global	RV9HAL_V200R004_WriteSliceMsg
	.type	RV9HAL_V200R004_WriteSliceMsg, %function
RV9HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r8, r1	@ pRv9DecParam, pRv9DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r1, #15	@ tmp216, <variable>.MsgSlotAddr,
	add	r3, r0, #256	@, tmp216,
	str	r3, [sp, #20]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ pMsgBase,
	beq	.L26	@,
	ldr	r2, [r8, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r2, #0	@ <variable>.first_mb_in_slice,
	streq	r2, [sp, #16]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L27	@,
.L7:
	ldr	r3, [r8, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L16	@,
	mov	r5, #0	@ i,
	add	r6, sp, #28	@ tmp424,,
	mov	r9, r5	@ tmp423, i
	mov	ip, #44	@ tmp425,
.L15:
	cmp	r5, #0	@ i,
	beq	.L8	@,
	sub	r0, r5, #1	@ tmp273, i,
	mla	r1, ip, r5, r8	@ tmp271, tmp425, i, pRv9DecParam
	mla	r2, ip, r0, r8	@ tmp277, tmp425, tmp273, pRv9DecParam
	ldr	r0, [r1, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r2, [r2, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r0, r2	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ble	.L9	@,
.L8:
	mul	fp, ip, r5	@, tmp425, i
	ldr	r7, [sp, #16]	@, %sfp
	str	r9, [sp, #28]	@ tmp423, D32
	mov	r3, #0	@ tmp287,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	str	fp, [sp, #12]	@, %sfp
	add	fp, r5, r7	@ D.31544, i,
	ldr	lr, [sp, #12]	@, %sfp
	mov	r4, fp, asl #8	@, D.31544,
	str	r4, [sp, #8]	@, %sfp
	add	r7, lr, r8	@ tmp285,, pRv9DecParam
	add	r4, r5, #1	@ j, i,
	ldr	r2, [r7, #96]	@ <variable>.StreamLength, <variable>.StreamLength
	bfi	r3, r2, #0, #24	@ tmp287, <variable>.StreamLength,,
	str	r3, [r6, #0]	@ tmp287,
	ldr	lr, [r7, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, lr, #24, #7	@ tmp295, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp295,
	str	r3, [sl, fp, asl #8]	@ D32.566,* pMsgBase
	ldr	r2, [sp, #28]	@, D32
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	mov	r2, fp, asl #6	@ tmp307, D.31544,
	str	r9, [sp, #28]	@ tmp423, D32
	add	ip, r2, #1	@ tmp308, tmp307,
	ldr	r0, [r7, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, #0	@ tmp305,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r0, #0, #24	@ tmp305, <variable>.StreamPhyAddr,,
	str	r3, [r6, #0]	@ tmp305,
	str	r3, [sl, ip, asl #2]	@ D32.574,* pMsgBase
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [sp, #28]	@, D32
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	str	r9, [sp, #28]	@ tmp423, D32
	ldr	r1, [r7, #100]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r2, fp, asl #5	@ tmp327, D.31544,
	add	ip, r2, #1	@ tmp328, tmp327,
	mov	r3, #0	@ tmp318,
	bfi	r3, r1, #0, #24	@ tmp318, <variable>.StreamLength,,
	str	r3, [r6, #0]	@ tmp318,
	ldr	lr, [r7, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bfi	r3, lr, #24, #7	@ tmp326, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp326,
	str	r3, [sl, ip, asl #3]	@ D32.582,* pMsgBase
	mov	fp, fp, asl #4	@ tmp366, D.31544,
	ldr	r2, [sp, #28]	@, D32
	add	fp, fp, #1	@ tmp367, tmp366,
	bl	dprint_vfmw	@
	ldr	lr, [sp, #8]	@, %sfp
	str	r9, [sp, #28]	@ tmp423, D32
	mov	r2, #0	@ tmp339,
	ldr	r1, [r7, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	ip, lr, #12	@ tmp341,,
	mov	r0, #4	@,
	bfi	r2, r1, #0, #24	@ tmp339, <variable>.StreamPhyAddr,,
	str	r2, [r6, #0]	@ tmp339,
	str	r2, [sl, ip]	@ D32.589,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	str	r9, [sp, #28]	@ tmp423, D32
	ldr	r3, [r7, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	mov	r0, #4	@,
	ldr	ip, [r6, #0]	@ tmp351,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bfi	ip, r3, #16, #1	@ tmp351, <variable>.dblk_filter_passthrough,,
	str	ip, [r6, #0]	@ tmp351,
	ldr	r2, [r7, #108]	@ <variable>.osvquant, <variable>.osvquant
	bfi	ip, r2, #17, #2	@ tmp358, <variable>.osvquant,,
	str	ip, [r6, #0]	@ tmp358,
	ldr	r3, [r7, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	bfi	ip, r3, #19, #5	@ tmp365, <variable>.sliceqp,,
	str	ip, [r6, #0]	@ tmp365,
	str	ip, [sl, fp, asl #4]	@ D32.603,* pMsgBase
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r8, #32]	@ temp.611, <variable>.TotalSliceNum
	str	r9, [sp, #28]	@ tmp423, D32
	ldrh	r0, [r7, #116]	@, <variable>.first_mb_in_slice
	cmp	r4, r1	@ j, temp.611
	strh	r0, [r6, #0]	@ movhi	@, <variable>.slice_start_mbn
	ldr	ip, [sp, #4]	@,
	bcs	.L10	@,
	mla	r3, ip, r4, r8	@ tmp386, tmp425, j, pRv9DecParam
	ldr	r2, [r7, #116]	@ temp.617, <variable>.first_mb_in_slice
	ldr	r3, [r3, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r3, r2	@ <variable>.first_mb_in_slice, temp.617
	bgt	.L10	@,
	mvn	lr, r4	@ tmp433, j
	add	r3, lr, r1	@ tmp432, tmp433, temp.611
	ldr	lr, [sp, #12]	@, %sfp
	tst	r3, #1	@ tmp432,
	add	r3, lr, #80	@ tmp391,,
	add	r3, r8, r3	@ ivtmp.539, pRv9DecParam, tmp391
	beq	.L11	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.611
	bcs	.L10	@,
	ldr	r0, [r3, #124]	@ D.31571, <variable>.first_mb_in_slice
	add	r3, r3, #44	@ ivtmp.539, ivtmp.539,
	cmp	r0, r2	@ D.31571, temp.617
	ble	.L11	@,
	b	.L10	@
.L12:
	ldr	lr, [r3, #124]	@ D.31571, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.539, ivtmp.539,
	cmp	lr, r2	@ D.31571, temp.617
	bgt	.L10	@,
	ldr	r0, [r0, #124]	@ D.31571, <variable>.first_mb_in_slice
	add	r4, r4, #1	@ j, j,
	cmp	r0, r2	@ D.31571, temp.617
	bgt	.L10	@,
.L11:
	add	r4, r4, #1	@ j, j,
	add	r0, r3, #44	@ tmp435, ivtmp.539,
	cmp	r4, r1	@ j, temp.611
	bcc	.L12	@,
.L10:
	cmp	r4, r1	@ j, temp.611
	ldreq	r3, [r8, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r7, #0	@ prephitmp.522,
	ldreq	r2, [r8, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mlane	r3, ip, r4, r8	@ tmp399, tmp425, j, pRv9DecParam
	ldrne	r0, [sp, #16]	@, %sfp
	muleq	r3, r2, r3	@ tmp392, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r1, [sp, #20]	@, %sfp
	mla	r2, ip, r5, r8	@ tmp409, tmp425, i, pRv9DecParam
	addne	r7, r0, r4, asl #2	@, tmp404,, j,
	ldrne	r3, [r3, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	addne	r7, r1, r7, asl #6	@, prephitmp.522,, tmp404,
	movw	r1, #:lower16:.LC9	@,
	sub	r0, r3, #1	@ tmp402, <variable>.first_mb_in_slice,
	str	r0, [r8, #120]	@ tmp402, <variable>.last_mb_in_slice
	ldr	r5, [sp, #8]	@, %sfp
	movt	r1, #:upper16:.LC9	@,
	ldrh	lr, [r2, #120]	@, <variable>.last_mb_in_slice
	mov	r0, #4	@,
	add	r3, r5, #20	@ tmp412,,
	sub	r5, r4, #1	@ i, j,
	strh	lr, [r6, #2]	@ movhi	@, <variable>.slice_end_mbn
	ldr	r2, [sp, #28]	@ D32.613, D32
	str	r2, [sl, r3]	@ D32.613,
	ldr	r2, [sp, #28]	@, D32
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	str	r7, [r6, #0]	@ prephitmp.522, <variable>.next_slice_para_addr
	add	r1, ip, #252	@ tmp417,,
	str	r7, [sl, r1]	@ D32.619,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #32]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	ldr	ip, [sp, #4]	@,
.L9:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L15	@,
.L16:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	ldr	lr, [r8, #88]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r4, #0	@ tmp224,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	bfi	r4, lr, #24, #7	@ tmp224, <variable>.StreamBitOffset,,
	str	r4, [sp, #28]	@ tmp224,
	str	r4, [sl, #0]	@ tmp224,* pMsgBase
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [sp, #28]	@, D32
	mov	r4, #0	@ tmp221,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #80]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp229, tmp221
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp229, <variable>.StreamPhyAddr,,
	str	r1, [sp, #28]	@ tmp229,
	str	r1, [sl, #4]	@ tmp229,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r4	@ tmp236, tmp221
	mov	r0, #4	@,
	bfi	ip, r3, #24, #7	@ tmp236, <variable>.StreamBitOffset,,
	str	ip, [sp, #28]	@ tmp236,
	str	ip, [sl, #8]	@ tmp236,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp241, tmp221
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp241, <variable>.StreamPhyAddr,,
	str	r1, [sp, #28]	@ tmp241,
	str	r1, [sl, #12]	@ tmp241,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #104]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	ip, [r8, #108]	@ <variable>.osvquant, <variable>.osvquant
	mov	lr, #1	@,
	ldr	r2, [r8, #112]	@ <variable>.sliceqp, <variable>.sliceqp
	mov	r0, #4	@,
	mov	r3, r3, asl #16	@ tmp247, <variable>.dblk_filter_passthrough,
	str	lr, [sp, #16]	@, %sfp
	and	r3, r3, #65536	@ tmp249, tmp247,
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, ip, #17, #2	@ tmp249, <variable>.osvquant,,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #19, #5	@ tmp251, <variable>.sliceqp,,
	str	r3, [sp, #28]	@ tmp251,
	str	r3, [sl, #16]	@ tmp251,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #116]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r4, [sp, #28]	@ movhi	@ tmp221, <variable>.slice_start_mbn
	mov	r0, #4	@,
	sub	r1, ip, #1	@ tmp259, <variable>.first_mb_in_slice,
	strh	r1, [sp, #30]	@ movhi	@ tmp259, <variable>.slice_end_mbn
	ldr	r2, [sp, #28]	@ D32.555, D32
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r2, [sl, #20]	@ D32.555,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sp, #20]	@, %sfp
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	add	ip, r3, #256	@ tmp264,,
	str	ip, [sp, #28]	@ tmp264, <variable>.next_slice_para_addr
	str	ip, [sl, #252]	@ tmp264,
	movt	r1, #:upper16:.LC10	@,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	b	.L7	@
.L26:
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #528	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L16	@
	.fnend
	.size	RV9HAL_V200R004_WriteSliceMsg, .-RV9HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV9HAL_V200R004_WritePicMsg
	.type	RV9HAL_V200R004_WritePicMsg, %function
RV9HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r1	@ pRv9DecParam, pRv9DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L34	@,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp192,
	mov	r8, r5	@ p32, pMsgBase
	mov	sl, r7	@ tmp194, tmp192
	bfi	sl, r0, #0, #2	@ tmp194, <variable>.PicCodingType,,
	str	sl, [sp, #12]	@ tmp194,
	str	sl, [r8], #4	@ tmp194,
	mov	r0, #4	@,
	ldr	r2, [sp, #12]	@, D32
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	sl, r8, r0	@ p32.652, p32,
	bl	dprint_vfmw	@
	ldmib	r4, {r1, fp}	@ phole ldm
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp203, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC5	@,
	sub	ip, fp, #1	@ tmp207, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC5	@,
	mov	r2, r9, asl #23	@ tmp208, tmp203,
	add	r9, sl, r0	@ p32.657, p32.652,
	add	fp, r9, r0	@ p32.662, p32.657,
	add	r3, sp, #12	@ tmp193,,
	mov	r2, r2, lsr #23	@ tmp208, tmp208,
	add	lr, fp, r0	@, p32.662,
	bfi	r2, ip, #16, #9	@ tmp208, tmp207,,
	str	lr, [sp, #4]	@, %sfp
	str	r2, [sp, #12]	@ tmp208,
	str	r2, [r5, #4]	@ tmp208,
	ldr	r2, [sp, #12]	@, D32
	str	r3, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldrh	ip, [r4, #12]	@, <variable>.Ratio0
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	strh	ip, [sp, #12]	@ movhi	@, <variable>.Ratio0
	ldrh	r3, [r4, #16]	@, <variable>.Ratio1
	strh	r3, [sp, #14]	@ movhi	@, <variable>.Ratio1
	ldr	lr, [sp, #12]	@ D32.655, D32
	str	lr, [r8, #4]	@ D32.655,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ tmp218, tmp192
	bfi	r0, r7, #1, #3	@ tmp218, tmp192,,
	str	r0, [sp, #12]	@ tmp218,
	str	r0, [sl, #4]	@ tmp218,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #20]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r2, r7	@ tmp224, tmp192
	mov	r0, #4	@,
	bfi	r2, r1, #0, #5	@ tmp224, <variable>.PQUANT,,
	str	r2, [sp, #12]	@ tmp224,
	str	r2, [r9, #4]	@ tmp224,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #24]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	r3, r7	@ tmp230, tmp192
	mov	r0, #4	@,
	bfi	r3, ip, #0, #5	@ tmp230, <variable>.PrevPicQP,,
	str	r3, [sp, #12]	@ tmp230,
	str	r3, [fp, #4]	@ tmp230,
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #0]	@,
	str	r7, [sp, #12]	@ tmp192, D32
	mov	r0, #4	@,
	ldr	ip, [r4, #28]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	movw	r1, #:lower16:.LC12	@,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@,
	movt	r1, #:upper16:.LC12	@,
	bfi	r2, ip, #0, #5	@ tmp244, <variable>.PrevPicMb0QP,,
	strb	r2, [r3, #0]	@ tmp244,
	ldr	r3, [sp, #12]	@ D32.677, D32
	ldr	r2, [sp, #4]	@, %sfp
	str	r3, [r2, #4]	@ D32.677,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #56]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	bic	r2, ip, #15	@ tmp251, <variable>.DispFramePhyAddr,
	str	r2, [sp, #12]	@ tmp251, <variable>.curr_rcn_addr
	str	r2, [r5, #64]	@ tmp251,
	movt	r1, #:upper16:.LC13	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #48]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	bic	ip, r3, #15	@ tmp257, <variable>.FwdRefPhyAddr,
	str	ip, [sp, #12]	@ tmp257, <variable>.fwd_ref_addr
	str	ip, [r5, #68]	@ tmp257,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp263, <variable>.BwdRefPhyAddr,
	str	r3, [sp, #12]	@ tmp263, <variable>.bwd_ref_addr
	str	r3, [r5, #72]	@ tmp263,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #72]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	ip, [sp, #12]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	ip, [r5, #76]	@ <variable>.CurrPmvPhyAddr,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #76]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	r2, [sp, #12]	@ <variable>.ColPmvPhyAddr, <variable>.bwd_colmb_addr
	str	r2, [r5, #80]	@ <variable>.ColPmvPhyAddr,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC18	@,
	bic	ip, r3, #15	@ tmp279, <variable>.SedTopAddr,
	str	ip, [sp, #12]	@ tmp279, <variable>.sed_top_addr
	str	ip, [r5, #84]	@ tmp279,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, r2, #15	@ tmp285, <variable>.PmvTopAddr,
	str	r3, [sp, #12]	@ tmp285, <variable>.pmv_top_addr
	str	r3, [r5, #88]	@ tmp285,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	r2, ip, #15	@ tmp291, <variable>.RcnTopAddr,
	str	r2, [sp, #12]	@ tmp291, <variable>.rcn_top_addr
	str	r2, [r5, #92]	@ tmp291,
	movt	r1, #:upper16:.LC20	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	r3, [sp, #12]	@ <variable>.DblkTopAddr, <variable>.dblk_top_addr
	str	r3, [r5, #96]	@ <variable>.DblkTopAddr,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	bic	r2, ip, #15	@ tmp301, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:.LC10	@,
	add	r3, r2, #256	@ tmp303, tmp301,
	str	r3, [sp, #12]	@ tmp303, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp303,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
.L33:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L34:
	movw	r1, #:lower16:.LC2	@,
	mov	r2, #296	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L33	@
	.fnend
	.size	RV9HAL_V200R004_WritePicMsg, .-RV9HAL_V200R004_WritePicMsg
	.align	2
	.global	RV9HAL_V200R004_WriteReg
	.type	RV9HAL_V200R004_WriteReg, %function
RV9HAL_V200R004_WriteReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r1	@ pRv9DecParam, pRv9DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pHwMem, pHwMem
	movw	r1, #:lower16:.LC22	@,
	mov	r0, #2	@,
	movt	r1, #:upper16:.LC22	@,
	mov	sl, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldmib	r5, {r1, r7}	@ phole ldm
	movw	r6, #1140	@ tmp196,
	mul	r6, r6, sl	@ tmp195, tmp196, VdhId
	movw	r4, #:lower16:g_HwMem	@ tmp374,
	mul	r3, r1, r7	@ tmp182, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movt	r4, #:upper16:g_HwMem	@ tmp374,
	mov	r7, #0	@ tmp181,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	sub	ip, r3, #1	@ tmp185, tmp182,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r3, ip, #-16777216	@ tmp190, tmp185,
	bic	ip, r3, #15728640	@ tmp190, tmp190,
	orr	r3, ip, #16777216	@ tmp193, tmp190,
	bfi	r3, r7, #25, #1	@ tmp193, tmp181,,
	str	r3, [sp, #4]	@ tmp193,
	str	r3, [r2, #8]	@ tmp193,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r5, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	lr, [r5, #36]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r3, #9	@ tmp206,
	movw	r0, #11344	@ tmp215,
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r1, ip, lsr #6	@ tmp204, <variable>.DDRStride,
	ldr	ip, [r5, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	bfi	r3, r1, #4, #10	@ tmp206, tmp204,,
	mov	r0, #3	@,
	bfi	r3, lr, #14, #1	@ tmp208, <variable>.FstSlcGrp,,
	movw	r1, #:lower16:.LC24	@,
	orr	lr, r3, #32768	@ tmp211, tmp208,
	movt	r1, #:upper16:.LC24	@,
	bfi	lr, r7, #16, #12	@ tmp211, tmp181,,
	bic	r3, lr, #805306368	@ tmp212, tmp211,
	orr	lr, r3, #536870912	@ tmp217, tmp212,
	bfi	lr, ip, #30, #1	@ tmp217, <variable>.Compress_en,,
	bfi	lr, r7, #31, #1	@ tmp218, tmp181,,
	str	lr, [sp, #4]	@ tmp218,
	str	lr, [r2, #12]	@ tmp218,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	bic	r3, ip, #15	@ tmp229, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp229, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp229,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bic	r3, ip, #15	@ tmp240, <variable>.MsgSlotAddr,
	str	r3, [sp, #4]	@ tmp240, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp240,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #40]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC27	@,
	str	ip, [sp, #4]	@ <variable>.StreamBaseAddr, <variable>.stream_base_addr
	str	ip, [r2, #24]	@ <variable>.StreamBaseAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r3, #120	@ <variable>.PicWidthInMb,
	strhi	r7, [sp, #4]	@ tmp181, D32
	movls	r3, #65536	@ tmp260,
	strls	r3, [sp, #4]	@ tmp260, D32
	cmp	sl, #0	@ VdhId,
	bne	.L43	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr	@ tmp263,
	movt	r3, #:upper16:s_RegPhyBaseAddr	@ tmp263,
	ldr	ip, [sp, #4]	@ D32, D32
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, ip	@ D.31278,, D32
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L40:
	movw	r7, #1140	@ tmp270,
	movw	r3, #:lower16:3148803	@ tmp267,
	mul	r6, r7, sl	@ tmp269, tmp270, VdhId
	movt	r3, #:upper16:3148803	@ tmp267,
	str	r3, [sp, #4]	@ tmp267, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r7, #0	@ tmp332,
	ldr	sl, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sl, #60]	@ tmp267,
	ldr	lr, [sp, #4]	@ D32.787, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #64]	@ D32.787,
	ldr	sl, [sp, #4]	@ D32.791, D32
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [ip, #68]	@ D32.791,
	ldr	r2, [sp, #4]	@ D32.795, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.795,
	ldr	ip, [sp, #4]	@ D32.799, D32
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #76]	@ D32.799,
	ldr	r2, [sp, #4]	@ D32.803, D32
	ldr	sl, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #80]	@ D32.803,
	ldr	lr, [sp, #4]	@ D32.807, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #84]	@ D32.807,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #52]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bic	sl, ip, #15	@ D32.442, <variable>.CurPicPhyAddr,
	str	sl, [sp, #4]	@ D32.442, D32
	str	sl, [r2, #96]	@ D32.442,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #60]	@ D32.813, <variable>.DDRStride
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	sl, [r5, #8]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC31	@,
	str	r3, [sp, #4]	@ D32.813, D32
	movt	r1, #:upper16:.LC31	@,
	str	r3, [ip, #100]	@ D32.813,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #60]	@ <variable>.DDRStride, <variable>.DDRStride
	add	r3, sl, #1	@ tmp323, height_in_mb,
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC32	@,
	mov	sl, r3, lsr #1	@ tmp324, tmp323,
	mov	r2, r2, asl #1	@ tmp321, <variable>.DDRStride,
	movt	r1, #:upper16:.LC32	@,
	mul	sl, sl, r2	@ D32.444, tmp324, tmp321
	str	sl, [sp, #4]	@ D32.444, D32
	str	sl, [ip, #104]	@ D32.444,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	r7, [r3, #108]	@ tmp332,
	ldr	ip, [r8, #1120]	@ <variable>.DnrMbInfoAddr, <variable>.DnrMbInfoAddr
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #4]	@ <variable>.DnrMbInfoAddr, <variable>.dnr_mbinfo_staddr
	str	ip, [r2, #144]	@ <variable>.DnrMbInfoAddr,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #4]	@ tmp332, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	str	r7, [r3, #148]	@ tmp332,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	ip, r7	@ tmp360, tmp332
	bfi	ip, r7, #0, #1	@ tmp360, tmp332,,
	str	ip, [sp, #4]	@ tmp360,
	mov	r0, #3	@,
	str	ip, [r2, #152]	@ tmp360,
	movw	r1, #:lower16:.LC35	@,
	ldr	r2, [sp, #4]	@, D32
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	ldr	r1, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r0, #0	@ tmp373,
	str	r0, [r1, #32]	@ tmp373,
.L42:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L43:
	ble	.L40	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #201	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L42	@
	.fnend
	.size	RV9HAL_V200R004_WriteReg, .-RV9HAL_V200R004_WriteReg
	.align	2
	.global	RV9HAL_V200R004_StartDec
	.type	RV9HAL_V200R004_StartDec, %function
RV9HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pRv9DecParam, pRv9DecParam
	bls	.L52	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L52:
	beq	.L53	@,
	movw	r5, #:lower16:g_HwMem	@ tmp142,
	movt	r5, #:upper16:g_HwMem	@ tmp142,
	ldr	r3, [r5, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L54	@,
.L49:
	mov	r2, #0	@,
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pRv9DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV9HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pRv9DecParam
	bl	RV9HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L54:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31208,
	strne	r1, [r5, #0]	@ D.31208, <variable>.pVdmRegVirAddr
	bne	.L49	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L53:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #73	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	RV9HAL_V200R004_StartDec, .-RV9HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"start VDM...\012\000"
	.space	2
.LC1:
	.ascii	"configuring Slice Msg...\012\000"
	.space	2
.LC2:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC3:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC4:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC6:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC8:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"D63 = 0x%x\012\000"
.LC11:
	.ascii	"configuring Pic Msg...\012\000"
.LC12:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"D16 = 0x%x\012\000"
.LC14:
	.ascii	"D17 = 0x%x\012\000"
.LC15:
	.ascii	"D18 = 0x%x\012\000"
.LC16:
	.ascii	"D19 = 0x%x\012\000"
.LC17:
	.ascii	"D20 = 0x%x\012\000"
.LC18:
	.ascii	"D21 = 0x%x\012\000"
.LC19:
	.ascii	"D22 = 0x%x\012\000"
.LC20:
	.ascii	"D23 = 0x%x\012\000"
.LC21:
	.ascii	"D024 = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC23:
	.ascii	"BASIC_V200R004_CFG0 = 0x%x\012\000"
.LC24:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"AVM_V200R003_ADDR=0x%x\012\000"
.LC26:
	.ascii	"VAM_V200R003_ADDR=0x%x\012\000"
.LC27:
	.ascii	"STREAM_V200R004_BASE_ADDR=0x%x\012\000"
.LC28:
	.ascii	"line: %d\012\000"
	.space	2
.LC29:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC30:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC31:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC32:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC33:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC34:
	.ascii	"REF_V200R003_PIC_TYPE=0x%x\012\000"
.LC35:
	.ascii	"FF_V200R003_APT_EN=0x%x\012\000"
	.space	3
.LC36:
	.ascii	"VdhId is wrong! RV9HAL_V200R004_StartDec\012\000"
	.space	2
.LC37:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
