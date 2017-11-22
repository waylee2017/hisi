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
	.file	"vdm_hal_real8.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_real8)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real8.o
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
	.global	RV8HAL_V200R004_StartVDH
	.type	RV8HAL_V200R004_StartVDH, %function
RV8HAL_V200R004_StartVDH:
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
	.size	RV8HAL_V200R004_StartVDH, .-RV8HAL_V200R004_StartVDH
	.align	2
	.global	RV8HAL_V200R004_WriteSliceMsg
	.type	RV8HAL_V200R004_WriteSliceMsg, %function
RV8HAL_V200R004_WriteSliceMsg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r8, r1	@ pRv8DecParam, pRv8DecParam
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
	ldr	r2, [r8, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r2, #0	@ <variable>.first_mb_in_slice,
	streq	r2, [sp, #16]	@ <variable>.first_mb_in_slice, %sfp
	bne	.L27	@,
.L7:
	ldr	r3, [r8, #36]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	cmp	r3, #0	@ <variable>.TotalSliceNum,
	beq	.L16	@,
	mov	r5, #0	@ i,
	add	r6, sp, #28	@ tmp426,,
	mov	r9, r5	@ tmp425, i
	mov	ip, #44	@ tmp427,
.L15:
	cmp	r5, #0	@ i,
	beq	.L8	@,
	sub	r0, r5, #1	@ tmp274, i,
	mla	r1, ip, r5, r8	@ tmp272, tmp427, i, pRv8DecParam
	mla	r2, ip, r0, r8	@ tmp278, tmp427, tmp274, pRv8DecParam
	ldr	r0, [r1, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	r2, [r2, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r0, r2	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ble	.L9	@,
.L8:
	mul	fp, ip, r5	@, tmp427, i
	ldr	r7, [sp, #16]	@, %sfp
	str	r9, [sp, #28]	@ tmp425, D32
	mov	r3, #0	@ tmp288,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	str	fp, [sp, #12]	@, %sfp
	add	fp, r5, r7	@ D.31540, i,
	ldr	lr, [sp, #12]	@, %sfp
	mov	r4, fp, asl #8	@, D.31540,
	str	r4, [sp, #8]	@, %sfp
	add	r7, lr, r8	@ tmp286,, pRv8DecParam
	add	r4, r5, #1	@ j, i,
	ldr	r2, [r7, #100]	@ <variable>.StreamLength, <variable>.StreamLength
	bfi	r3, r2, #0, #24	@ tmp288, <variable>.StreamLength,,
	str	r3, [r6, #0]	@ tmp288,
	ldr	lr, [r7, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	bfi	r3, lr, #24, #7	@ tmp296, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp296,
	str	r3, [sl, fp, asl #8]	@ D32.566,* pMsgBase
	ldr	r2, [sp, #28]	@, D32
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	mov	r2, fp, asl #6	@ tmp308, D.31540,
	str	r9, [sp, #28]	@ tmp425, D32
	add	ip, r2, #1	@ tmp309, tmp308,
	ldr	r0, [r7, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r3, #0	@ tmp306,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r0, #0, #24	@ tmp306, <variable>.StreamPhyAddr,,
	str	r3, [r6, #0]	@ tmp306,
	str	r3, [sl, ip, asl #2]	@ D32.574,* pMsgBase
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [sp, #28]	@, D32
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	str	r9, [sp, #28]	@ tmp425, D32
	ldr	r1, [r7, #104]	@ <variable>.StreamLength, <variable>.StreamLength
	mov	r2, fp, asl #5	@ tmp328, D.31540,
	add	ip, r2, #1	@ tmp329, tmp328,
	mov	r3, #0	@ tmp319,
	bfi	r3, r1, #0, #24	@ tmp319, <variable>.StreamLength,,
	str	r3, [r6, #0]	@ tmp319,
	ldr	lr, [r7, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bfi	r3, lr, #24, #7	@ tmp327, <variable>.StreamBitOffset,,
	str	r3, [r6, #0]	@ tmp327,
	str	r3, [sl, ip, asl #3]	@ D32.582,* pMsgBase
	mov	fp, fp, asl #4	@ tmp367, D.31540,
	ldr	r2, [sp, #28]	@, D32
	add	fp, fp, #1	@ tmp368, tmp367,
	bl	dprint_vfmw	@
	ldr	lr, [sp, #8]	@, %sfp
	str	r9, [sp, #28]	@ tmp425, D32
	mov	r2, #0	@ tmp340,
	ldr	r1, [r7, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	add	ip, lr, #12	@ tmp342,,
	mov	r0, #4	@,
	bfi	r2, r1, #0, #24	@ tmp340, <variable>.StreamPhyAddr,,
	str	r2, [r6, #0]	@ tmp340,
	str	r2, [sl, ip]	@ D32.589,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	str	r9, [sp, #28]	@ tmp425, D32
	ldr	r3, [r7, #108]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	mov	r0, #4	@,
	ldr	ip, [r6, #0]	@ tmp352,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bfi	ip, r3, #16, #1	@ tmp352, <variable>.dblk_filter_passthrough,,
	str	ip, [r6, #0]	@ tmp352,
	ldr	r2, [r7, #112]	@ <variable>.osvquant, <variable>.osvquant
	bfi	ip, r2, #17, #2	@ tmp359, <variable>.osvquant,,
	str	ip, [r6, #0]	@ tmp359,
	ldr	r3, [r7, #116]	@ <variable>.sliceqp, <variable>.sliceqp
	bfi	ip, r3, #19, #5	@ tmp366, <variable>.sliceqp,,
	str	ip, [r6, #0]	@ tmp366,
	str	ip, [sl, fp, asl #4]	@ D32.603,* pMsgBase
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r8, #36]	@ temp.611, <variable>.TotalSliceNum
	str	r9, [sp, #28]	@ tmp425, D32
	ldrh	r0, [r7, #120]	@, <variable>.first_mb_in_slice
	cmp	r4, r1	@ j, temp.611
	strh	r0, [r6, #0]	@ movhi	@, <variable>.slice_start_mbn
	ldr	ip, [sp, #4]	@,
	bcs	.L10	@,
	mla	r3, ip, r4, r8	@ tmp387, tmp427, j, pRv8DecParam
	ldr	r2, [r7, #120]	@ temp.617, <variable>.first_mb_in_slice
	ldr	r3, [r3, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r3, r2	@ <variable>.first_mb_in_slice, temp.617
	bgt	.L10	@,
	mvn	r3, r4	@ tmp435, j
	add	r0, r3, r1	@ tmp434, tmp435, temp.611
	ldr	r3, [sp, #12]	@, %sfp
	tst	r0, #1	@ tmp434,
	add	r0, r3, #80	@ tmp392,,
	add	r0, r8, r0	@ tmp393, pRv8DecParam, tmp392
	add	r3, r0, #4	@ ivtmp.539, tmp393,
	beq	.L11	@,
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, temp.611
	bcs	.L10	@,
	ldr	lr, [r3, #124]	@ D.31567, <variable>.first_mb_in_slice
	add	r3, r0, #48	@ ivtmp.539, tmp393,
	cmp	lr, r2	@ D.31567, temp.617
	ble	.L11	@,
	b	.L10	@
.L12:
	ldr	lr, [r3, #124]	@ D.31567, <variable>.first_mb_in_slice
	add	r3, r3, #88	@ ivtmp.539, ivtmp.539,
	cmp	lr, r2	@ D.31567, temp.617
	bgt	.L10	@,
	ldr	r0, [r0, #124]	@ D.31567, <variable>.first_mb_in_slice
	add	r4, r4, #1	@ j, j,
	cmp	r0, r2	@ D.31567, temp.617
	bgt	.L10	@,
.L11:
	add	r4, r4, #1	@ j, j,
	add	r0, r3, #44	@ tmp437, ivtmp.539,
	cmp	r4, r1	@ j, temp.611
	bcc	.L12	@,
.L10:
	cmp	r4, r1	@ j, temp.611
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	ldreq	r3, [r8, #8]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	moveq	r7, #0	@ prephitmp.522,
	ldreq	r2, [r8, #4]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mlane	r3, ip, r4, r8	@ tmp401, tmp427, j, pRv8DecParam
	ldrne	lr, [sp, #16]	@, %sfp
	muleq	r3, r2, r3	@ tmp394, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	ldrne	r0, [sp, #20]	@, %sfp
	mla	r2, ip, r5, r8	@ tmp411, tmp427, i, pRv8DecParam
	addne	r7, lr, r4, asl #2	@, tmp406,, j,
	ldrne	r3, [r3, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	addne	r7, r0, r7, asl #6	@, prephitmp.522,, tmp406,
	sub	r0, r3, #1	@ tmp404, <variable>.first_mb_in_slice,
	str	r0, [r8, #124]	@ tmp404, <variable>.last_mb_in_slice
	ldr	r5, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	ldrh	r3, [r2, #124]	@, <variable>.last_mb_in_slice
	add	lr, r5, #20	@ tmp414,,
	sub	r5, r4, #1	@ i, j,
	strh	r3, [r6, #2]	@ movhi	@, <variable>.slice_end_mbn
	ldr	r2, [sp, #28]	@ D32.613, D32
	str	r2, [sl, lr]	@ D32.613,
	ldr	r2, [sp, #28]	@, D32
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	ip, [sp, #8]	@, %sfp
	mov	r0, #4	@,
	str	r7, [r6, #0]	@ prephitmp.522, <variable>.next_slice_para_addr
	add	r1, ip, #252	@ tmp419,,
	str	r7, [sl, r1]	@ D32.619,
	movw	r1, #:lower16:.LC10	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #36]	@ <variable>.TotalSliceNum, <variable>.TotalSliceNum
	ldr	ip, [sp, #4]	@,
.L9:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ <variable>.TotalSliceNum, i
	bhi	.L15	@,
.L16:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	ldr	lr, [r8, #92]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	r4, #0	@ tmp225,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	bfi	r4, lr, #24, #7	@ tmp225, <variable>.StreamBitOffset,,
	str	r4, [sp, #28]	@ tmp225,
	str	r4, [sl, #0]	@ tmp225,* pMsgBase
	movt	r1, #:upper16:.LC4	@,
	ldr	r2, [sp, #28]	@, D32
	mov	r4, #0	@ tmp222,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #84]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp230, tmp222
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp230, <variable>.StreamPhyAddr,,
	str	r1, [sp, #28]	@ tmp230,
	str	r1, [sl, #4]	@ tmp230,
	movw	r1, #:lower16:.LC5	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #96]	@ <variable>.StreamBitOffset, <variable>.StreamBitOffset
	mov	ip, r4	@ tmp237, tmp222
	mov	r0, #4	@,
	bfi	ip, r3, #24, #7	@ tmp237, <variable>.StreamBitOffset,,
	str	ip, [sp, #28]	@ tmp237,
	str	ip, [sl, #8]	@ tmp237,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r2, [r8, #88]	@ <variable>.StreamPhyAddr, <variable>.StreamPhyAddr
	mov	r1, r4	@ tmp242, tmp222
	mov	r0, #4	@,
	bfi	r1, r2, #0, #24	@ tmp242, <variable>.StreamPhyAddr,,
	str	r1, [sp, #28]	@ tmp242,
	str	r1, [sl, #12]	@ tmp242,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #28]	@, D32
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8, #108]	@ <variable>.dblk_filter_passthrough, <variable>.dblk_filter_passthrough
	ldr	ip, [r8, #112]	@ <variable>.osvquant, <variable>.osvquant
	mov	lr, #1	@,
	ldr	r2, [r8, #116]	@ <variable>.sliceqp, <variable>.sliceqp
	mov	r0, #4	@,
	mov	r3, r3, asl #16	@ tmp248, <variable>.dblk_filter_passthrough,
	str	lr, [sp, #16]	@, %sfp
	and	r3, r3, #65536	@ tmp250, tmp248,
	movw	r1, #:lower16:.LC8	@,
	bfi	r3, ip, #17, #2	@ tmp250, <variable>.osvquant,,
	movt	r1, #:upper16:.LC8	@,
	bfi	r3, r2, #19, #5	@ tmp252, <variable>.sliceqp,,
	str	r3, [sp, #28]	@ tmp252,
	str	r3, [sl, #16]	@ tmp252,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #120]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	strh	r4, [sp, #28]	@ movhi	@ tmp222, <variable>.slice_start_mbn
	mov	r0, #4	@,
	sub	r1, ip, #1	@ tmp260, <variable>.first_mb_in_slice,
	strh	r1, [sp, #30]	@ movhi	@ tmp260, <variable>.slice_end_mbn
	ldr	r2, [sp, #28]	@ D32.555, D32
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r2, [sl, #20]	@ D32.555,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sp, #20]	@, %sfp
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #4	@,
	add	ip, r3, #256	@ tmp265,,
	str	ip, [sp, #28]	@ tmp265, <variable>.next_slice_para_addr
	str	ip, [sl, #252]	@ tmp265,
	movt	r1, #:upper16:.LC10	@,
	ldr	r2, [sp, #28]	@, D32
	bl	dprint_vfmw	@
	b	.L7	@
.L26:
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #521	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L16	@
	.fnend
	.size	RV8HAL_V200R004_WriteSliceMsg, .-RV8HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV8HAL_V200R004_WritePicMsg
	.type	RV8HAL_V200R004_WritePicMsg, %function
RV8HAL_V200R004_WritePicMsg:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r1	@ pRv8DecParam, pRv8DecParam
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r0, r0, #15	@, <variable>.MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.31341,
	beq	.L32	@,
	ldrb	lr, [r4, #12]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	mov	r7, #0	@ tmp191,
	mov	r8, r5	@ p32, D.31341
	mov	sl, r7	@ tmp193, tmp191
	bfi	sl, lr, #0, #2	@ tmp193, <variable>.PicCodingType,,
	str	sl, [sp, #12]	@ tmp193,
	str	sl, [r8], #4	@ tmp193,
	mov	r0, #4	@,
	ldr	r2, [sp, #12]	@, D32
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	add	sl, r8, r0	@ p32.651, p32,
	bl	dprint_vfmw	@
	ldmib	r4, {r1, fp}	@ phole ldm
	mov	r0, #4	@,
	sub	r9, r1, #1	@ tmp202, <variable>.PicWidthInMb,
	movw	r1, #:lower16:.LC5	@,
	sub	r2, fp, #1	@ tmp206, <variable>.PicHeightInMb,
	movt	r1, #:upper16:.LC5	@,
	mov	ip, r9, asl #23	@ tmp207, tmp202,
	add	r9, sl, r0	@ p32.656, p32.651,
	add	fp, r9, r0	@ p32.661, p32.656,
	mov	r3, ip, lsr #23	@ tmp207, tmp207,
	add	ip, fp, r0	@ p32.666, p32.661,
	bfi	r3, r2, #16, #9	@ tmp207, tmp206,,
	str	r3, [sp, #12]	@ tmp207,
	str	r3, [r5, #4]	@ tmp207,
	ldr	r2, [sp, #12]	@, D32
	str	ip, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldrh	r1, [r4, #16]	@, <variable>.Ratio0
	mov	r0, #4	@,
	strh	r1, [sp, #12]	@ movhi	@, <variable>.Ratio0
	movw	r1, #:lower16:.LC6	@,
	ldrh	r2, [r4, #20]	@, <variable>.Ratio1
	movt	r1, #:upper16:.LC6	@,
	strh	r2, [sp, #14]	@ movhi	@, <variable>.Ratio1
	ldr	ip, [sp, #12]	@ D32.654, D32
	str	ip, [r8, #4]	@ D32.654,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	mov	r0, r7	@ tmp217, tmp191
	bfi	r0, r7, #1, #3	@ tmp217, tmp191,,
	str	r0, [sp, #12]	@ tmp217,
	str	r0, [sl, #4]	@ tmp217,
	movw	r1, #:lower16:.LC7	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC7	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #24]	@ <variable>.PQUANT, <variable>.PQUANT
	mov	r1, r7	@ tmp223, tmp191
	mov	r0, #4	@,
	bfi	r1, r3, #0, #5	@ tmp223, <variable>.PQUANT,,
	str	r1, [sp, #12]	@ tmp223,
	str	r1, [r9, #4]	@ tmp223,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #28]	@ <variable>.PrevPicQP, <variable>.PrevPicQP
	mov	ip, r7	@ tmp229, tmp191
	mov	r0, #4	@,
	bfi	ip, r2, #0, #5	@ tmp229, <variable>.PrevPicQP,,
	str	ip, [sp, #12]	@ tmp229,
	str	ip, [fp, #4]	@ tmp229,
	movw	r1, #:lower16:.LC9	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	ldr	r1, [sp, #4]	@,
	ldr	r3, [r4, #32]	@ <variable>.PrevPicMb0QP, <variable>.PrevPicMb0QP
	mov	r0, #4	@,
	bfi	r7, r3, #0, #5	@ tmp235, <variable>.PrevPicMb0QP,,
	str	r7, [sp, #12]	@ tmp235,
	str	r7, [r1, #4]	@ tmp235,
	movw	r1, #:lower16:.LC12	@,
	ldr	r2, [sp, #12]	@, D32
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #60]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC13	@,
	bic	r2, ip, #15	@ tmp241, <variable>.DispFramePhyAddr,
	str	r2, [sp, #12]	@ tmp241, <variable>.curr_rcn_addr
	str	r2, [r5, #64]	@ tmp241,
	movt	r1, #:upper16:.LC13	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #52]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC14	@,
	bic	ip, r3, #15	@ tmp247, <variable>.FwdRefPhyAddr,
	str	ip, [sp, #12]	@ tmp247, <variable>.fwd_ref_addr
	str	ip, [r5, #68]	@ tmp247,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #48]	@ <variable>.BwdRefPhyAddr, <variable>.BwdRefPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC15	@,
	bic	r3, r2, #15	@ tmp253, <variable>.BwdRefPhyAddr,
	str	r3, [sp, #12]	@ tmp253, <variable>.bwd_ref_addr
	str	r3, [r5, #72]	@ tmp253,
	movt	r1, #:upper16:.LC15	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #76]	@ <variable>.CurrPmvPhyAddr, <variable>.CurrPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	str	ip, [sp, #12]	@ <variable>.CurrPmvPhyAddr, <variable>.curr_colmb_addr
	str	ip, [r5, #76]	@ <variable>.CurrPmvPhyAddr,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #80]	@ <variable>.ColPmvPhyAddr, <variable>.ColPmvPhyAddr
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
	bic	ip, r3, #15	@ tmp269, <variable>.SedTopAddr,
	str	ip, [sp, #12]	@ tmp269, <variable>.sed_top_addr
	str	ip, [r5, #84]	@ tmp269,
	movt	r1, #:upper16:.LC18	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	bic	r3, r2, #15	@ tmp275, <variable>.PmvTopAddr,
	str	r3, [sp, #12]	@ tmp275, <variable>.pmv_top_addr
	str	r3, [r5, #88]	@ tmp275,
	movt	r1, #:upper16:.LC19	@,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r6, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	bic	r2, ip, #15	@ tmp281, <variable>.RcnTopAddr,
	str	r2, [sp, #12]	@ tmp281, <variable>.rcn_top_addr
	str	r2, [r5, #92]	@ tmp281,
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
	bic	r2, ip, #15	@ tmp291, <variable>.MsgSlotAddr,
	movt	r1, #:upper16:.LC10	@,
	add	r3, r2, #256	@ tmp293, tmp291,
	str	r3, [sp, #12]	@ tmp293, <variable>.next_slice_para_addr
	str	r3, [r5, #252]	@ tmp293,
	ldr	r2, [sp, #12]	@, D32
	bl	dprint_vfmw	@
.L31:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L32:
	movw	r1, #:lower16:.LC2	@,
	movw	r2, #301	@,
	movt	r1, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LC3	@,
	movt	r3, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	b	.L31	@
	.fnend
	.size	RV8HAL_V200R004_WritePicMsg, .-RV8HAL_V200R004_WritePicMsg
	.align	2
	.global	RV8HAL_V200R004_WriteReg
	.type	RV8HAL_V200R004_WriteReg, %function
RV8HAL_V200R004_WriteReg:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r1	@ pRv8DecParam, pRv8DecParam
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
	ldr	ip, [r5, #64]	@ <variable>.DDRStride, <variable>.DDRStride
	ldr	lr, [r5, #40]	@ <variable>.FstSlcGrp, <variable>.FstSlcGrp
	mov	r3, #8	@ tmp206,
	movw	r0, #11348	@ tmp215,
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
	ldr	ip, [r5, #44]	@ <variable>.StreamBaseAddr, <variable>.StreamBaseAddr
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
	bne	.L41	@,
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
.L38:
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
	ldr	lr, [sp, #4]	@ D32.784, D32
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r2, #64]	@ D32.784,
	ldr	sl, [sp, #4]	@ D32.788, D32
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	sl, [ip, #68]	@ D32.788,
	ldr	r2, [sp, #4]	@ D32.792, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.792,
	ldr	ip, [sp, #4]	@ D32.796, D32
	ldr	lr, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [lr, #76]	@ D32.796,
	ldr	r2, [sp, #4]	@ D32.800, D32
	ldr	sl, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [sl, #80]	@ D32.800,
	ldr	lr, [sp, #4]	@ D32.804, D32
	ldr	r3, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	lr, [r3, #84]	@ D32.804,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	ip, [r5, #56]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bic	sl, ip, #15	@ D32.442, <variable>.CurPicPhyAddr,
	str	sl, [sp, #4]	@ D32.442, D32
	str	sl, [r2, #96]	@ D32.442,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r5, #64]	@ D32.810, <variable>.DDRStride
	ldr	ip, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	sl, [r5, #8]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC31	@,
	str	r3, [sp, #4]	@ D32.810, D32
	movt	r1, #:upper16:.LC31	@,
	str	r3, [ip, #100]	@ D32.810,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #64]	@ <variable>.DDRStride, <variable>.DDRStride
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
.L40:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L41:
	ble	.L38	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #205	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L40	@
	.fnend
	.size	RV8HAL_V200R004_WriteReg, .-RV8HAL_V200R004_WriteReg
	.align	2
	.global	RV8HAL_V200R004_StartDec
	.type	RV8HAL_V200R004_StartDec, %function
RV8HAL_V200R004_StartDec:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pRv8DecParam, pRv8DecParam
	bls	.L50	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
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
	mov	r1, r4	@, pRv8DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV8HAL_V200R004_WriteReg	@
	mov	r1, r4	@, pRv8DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV8HAL_V200R004_WritePicMsg	@
	mov	r1, r4	@, pRv8DecParam
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	RV8HAL_V200R004_WriteSliceMsg	@
	mov	r0, r4	@, pRv8DecParam
	bl	RV8HAL_V200R004_StartVDH	@
	mov	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L52:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.31208,
	strne	r1, [r5, #0]	@ D.31208, <variable>.pVdmRegVirAddr
	bne	.L47	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L51:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC28	@,
	mov	r2, #74	@,
	movt	r1, #:upper16:.LC28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31201,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	RV8HAL_V200R004_StartDec, .-RV8HAL_V200R004_StartDec
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
	.ascii	"BASIC_V200R004_CFG0=0x%x\012\000"
	.space	2
.LC24:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC26:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
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
	.ascii	"REF_V200R004_PIC_TYPE=0x%x\012\000"
.LC35:
	.ascii	"FF_V200R004_APT_EN=0x%x\012\000"
	.space	3
.LC36:
	.ascii	"VdhId is wrong! RV8HAL_V200R003_StartDec\012\000"
	.space	2
.LC37:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
