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
	.file	"postprocess.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp185, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp185,
	bhi	.L4	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp187,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r7, [r0, #568]	@ tmp187, <variable>.FullRepair
	str	r7, [r0, #552]	@ tmp187, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.501, <variable>.DecSliceNum
	cmp	r6, r7	@ prephitmp.501,
	add	r4, r1, r6, asl #2	@, tmp193, pDecReport, prephitmp.501,
	uxth	r9, r5	@ D.30113, total_mbn
	strh	r9, [r4, #14]	@ movhi	@ D.30113, <variable>.SliceMbRange
	strh	r9, [r4, #12]	@ movhi	@ D.30113, <variable>.SliceMbRange
	bne	.L18	@,
.L5:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.518, pDecReport
	add	fp, r5, sl	@ tmp277, total_mbn,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	b	.L14	@
.L12:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.30124
.L8:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.518, ivtmp.518,
	cmp	ip, r6	@ i, prephitmp.501
	bhi	.L19	@,
.L14:
	ldrh	r2, [r3, #12]	@ D.30124, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.30124, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L8	@,
	cmp	r2, r4	@ D.30124, curr_slice_end_mbn
	movle	r8, #0	@, tmp221
	movgt	r8, #1	@, tmp221
	cmp	r2, r7	@ D.30124, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp224, tmp221
	cmp	r8, #0	@ tmp224,
	bne	.L8	@,
	cmp	r2, sl	@ D.30124, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp225, old_slice_end_mbn,
	cmp	r8, r2	@ tmp225, D.30124
	beq	.L10	@,
	add	r7, r7, r7, lsr #31	@, tmp274, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp275, D.30124,
	cmp	r7, r8	@ tmp274, tmp275
	bge	.L10	@,
	ldr	r6, [r0, #552]	@ D.30145, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.30145,
	bgt	.L4	@,
	add	r6, r0, r6, asl #2	@, tmp230, pRepairParam, D.30145,
	sub	sl, sl, #100	@ tmp276, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp274, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp241, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp275, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.503, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp245, prephitmp.503,
	mov	r7, r8, asl #2	@ tmp246, tmp245,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp276, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp276, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.503, <variable>.ValidGroupNum
	add	r7, r6, #1	@ tmp254, prephitmp.503,
	str	r7, [r0, #552]	@ tmp254, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.501, <variable>.DecSliceNum
.L10:
	sub	r7, r6, #1	@ temp.524, prephitmp.501,
	cmp	r7, ip	@ temp.524, i
	bne	.L12	@,
	add	r7, r1, ip, asl #2	@, tmp257, pDecReport, i,
	ldrh	r7, [r7, #14]	@ temp.525, <variable>.SliceMbRange
	cmp	r7, fp	@ temp.525, tmp277
	bge	.L12	@,
	ldr	r3, [r0, #552]	@ temp.527, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.527,
	bgt	.L4	@,
	add	r2, r0, r3, asl #2	@, tmp261, pRepairParam, temp.527,
	sub	r9, r9, #1	@ tmp269, D.30113,
	mov	r3, #0	@ D.30110,
	strh	r7, [r2, #40]	@ movhi	@ temp.525, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp267, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp269, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp271, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp271, <variable>.ValidGroupNum
	b	.L13	@
.L19:
	mov	r3, #0	@ D.30110,
.L13:
	mov	r0, r3	@, D.30110
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L18:
	add	fp, r4, #6	@ tmp203, tmp202,
	sub	sl, r5, #10	@ tmp205, total_mbn,
	ldrh	ip, [fp, #4]	@ tmp204, <variable>.SliceMbRange
	cmp	ip, sl	@ tmp204, tmp205
	subge	sl, r9, #1	@ tmp210, D.30113,
	strgeh	sl, [fp, #4]	@ movhi	@ tmp210, <variable>.SliceMbRange
	b	.L5	@
.L4:
	mov	r3, #1	@ D.30110,
	b	.L13	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #8
	sub	sp, sp, #8	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L21	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.567, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.552, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.552,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30196, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L29	@
.L24:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.552
	bhi	.L32	@,
.L29:
	ldrh	r2, [r3, #12]	@ D.30199, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.567, ivtmp.567,
	cmp	r2, r5	@ D.30199, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L24	@,
	cmp	r2, r4	@ D.30199, curr_slice_end_mbn
	bgt	.L24	@,
	cmp	r2, r8	@ D.30199, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp215, D.30199,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.30199
	mov	r7, r2	@ old_slice_start_mbn, D.30199
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L26	@,
	cmp	r9, sl	@ tmp214, tmp215
	bge	.L26	@,
	ldr	r2, [r0, #552]	@ D.30217, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30217,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.30217,
	bgt	.L21	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.552, <variable>.DecSliceNum
.L26:
	sub	r2, r6, #1	@ temp.572, prephitmp.552,
	cmp	r2, ip	@ temp.572, i
	bne	.L24	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30230, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30230,
	bge	.L24	@,
	ldr	r3, [r0, #552]	@ temp.573, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.573,
	bgt	.L21	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.573,
	sub	fp, fp, #1	@ tmp209, D.30196,
	mov	r3, #0	@ D.30193,
	strh	r2, [ip, #40]	@ movhi	@ D.30230, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L28	@
.L32:
	mov	r3, #0	@ D.30193,
.L28:
	mov	r0, r3	@, D.30193
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L21:
	mov	r3, #1	@ D.30193,
	b	.L28	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #8
	sub	sp, sp, #8	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L34	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.613, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.598, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.598,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30262, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L42	@
.L37:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.598
	bhi	.L45	@,
.L42:
	ldrh	r2, [r3, #12]	@ D.30265, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.613, ivtmp.613,
	cmp	r2, r5	@ D.30265, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L37	@,
	cmp	r2, r4	@ D.30265, curr_slice_end_mbn
	bgt	.L37	@,
	cmp	r2, r8	@ D.30265, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp215, D.30265,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.30265
	mov	r7, r2	@ old_slice_start_mbn, D.30265
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L39	@,
	cmp	r9, sl	@ tmp214, tmp215
	bge	.L39	@,
	ldr	r2, [r0, #552]	@ D.30283, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30283,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.30283,
	bgt	.L34	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.598, <variable>.DecSliceNum
.L39:
	sub	r2, r6, #1	@ temp.618, prephitmp.598,
	cmp	r2, ip	@ temp.618, i
	bne	.L37	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30296, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30296,
	bge	.L37	@,
	ldr	r3, [r0, #552]	@ temp.619, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.619,
	bgt	.L34	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.619,
	sub	fp, fp, #1	@ tmp209, D.30262,
	mov	r3, #0	@ D.30259,
	strh	r2, [ip, #40]	@ movhi	@ D.30296, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L41	@
.L45:
	mov	r3, #0	@ D.30259,
.L41:
	mov	r0, r3	@, D.30259
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L34:
	mov	r3, #1	@ D.30259,
	b	.L41	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #8
	sub	sp, sp, #8	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L47	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.659, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.644, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.644,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.30328, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L55	@
.L50:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.644
	bhi	.L58	@,
.L55:
	ldrh	r2, [r3, #12]	@ D.30331, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.659, ivtmp.659,
	cmp	r2, r5	@ D.30331, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L50	@,
	cmp	r2, r4	@ D.30331, curr_slice_end_mbn
	bgt	.L50	@,
	cmp	r2, r8	@ D.30331, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp214, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp215, D.30331,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.30331
	mov	r7, r2	@ old_slice_start_mbn, D.30331
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L52	@,
	cmp	r9, sl	@ tmp214, tmp215
	bge	.L52	@,
	ldr	r2, [r0, #552]	@ D.30349, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.30349,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.30349,
	bgt	.L47	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp214, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.644, <variable>.DecSliceNum
.L52:
	sub	r2, r6, #1	@ temp.664, prephitmp.644,
	cmp	r2, ip	@ temp.664, i
	bne	.L50	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.30362, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.30362,
	bge	.L50	@,
	ldr	r3, [r0, #552]	@ temp.665, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.665,
	bgt	.L47	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.665,
	sub	fp, fp, #1	@ tmp209, D.30328,
	mov	r3, #0	@ D.30325,
	strh	r2, [ip, #40]	@ movhi	@ D.30362, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L54	@
.L58:
	mov	r3, #0	@ D.30325,
.L54:
	mov	r0, r3	@, D.30325
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L47:
	mov	r3, #1	@ D.30325,
	b	.L54	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r3, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #24
	sub	sp, sp, #24	@,,
	sub	r3, r3, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp155,
	movhi	r3, #1	@ D.30393,
	bhi	.L61	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.690, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.690,
	mov	r3, r1	@ ivtmp.705, pDecReport
	mov	r6, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	r8, r5, sl	@, total_mbn,
	str	r8, [sp, #12]	@, %sfp
	mov	r8, sl	@ old_slice_start_mbn, old_slice_end_mbn
	mov	fp, r5, asr #1	@, total_mbn,
	str	fp, [sp, #8]	@, %sfp
	uxth	fp, r5	@, total_mbn
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [sp, #8]	@, %sfp
	add	fp, fp, sl	@,, tmp8
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #4]	@, %sfp
	strh	fp, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	fp, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	fp, r0	@ pRepairParam, pRepairParam
.L68:
	ldrh	r2, [r3, #12]	@ D.30399, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.30399, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L64	@,
	cmp	r2, r0	@ D.30399, curr_slice_end_mbn
	bgt	.L64	@,
	cmp	r2, sl	@ D.30399, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.30399, tmp176
	ble	.L66	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.30416, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.30399,
	rsb	r7, r4, r7	@ tmp187, D.30416, tmp185
	rsb	r4, r4, r8	@ tmp196, D.30416, tmp194
	add	sl, r6, sl, asl #2	@, tmp179, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp187, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp192, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp196, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp198, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp198, <variable>.ValidGroupNum
	bne	.L75	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.30399,
	bge	.L74	@,
.L75:
	ldr	r7, [r1, #8]	@ prephitmp.690, <variable>.DecSliceNum
.L66:
	sub	r4, r7, #1	@ temp.711, prephitmp.690,
	cmp	r4, ip	@ temp.711, i
	beq	.L76	@,
.L67:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.30399
.L64:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.705, ivtmp.705,
	cmp	ip, r7	@ i, prephitmp.690
	bls	.L68	@,
	mov	r3, #0	@ D.30393,
.L61:
	mov	r0, r3	@, D.30393
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L76:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.30433, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.30433,
	bge	.L67	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.30393,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.30433, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L61	@
.L74:
	ldr	r7, [r1, #8]	@ prephitmp.690, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L66	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr	r3, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #24
	sub	sp, sp, #24	@,,
	sub	r3, r3, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #3	@ tmp155,
	movhi	r3, #1	@ D.30464,
	bhi	.L79	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.735, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.735,
	mov	r3, r1	@ ivtmp.750, pDecReport
	mov	r6, r0	@ pLocalRepairParam, pRepairParam
	mov	r9, ip	@ dectopfldmbs, i
	add	r8, r5, sl	@, total_mbn,
	str	r8, [sp, #12]	@, %sfp
	mov	r8, sl	@ old_slice_start_mbn, old_slice_end_mbn
	mov	fp, r5, asr #1	@, total_mbn,
	str	fp, [sp, #8]	@, %sfp
	uxth	fp, r5	@, total_mbn
	str	fp, [sp, #4]	@, %sfp
	ldr	fp, [sp, #8]	@, %sfp
	add	fp, fp, sl	@,, tmp8
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #4]	@, %sfp
	strh	fp, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	strh	fp, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	mov	fp, r0	@ pRepairParam, pRepairParam
.L86:
	ldrh	r2, [r3, #12]	@ D.30470, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.30470, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L82	@,
	cmp	r2, r0	@ D.30470, curr_slice_end_mbn
	bgt	.L82	@,
	cmp	r2, sl	@ D.30470, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.30470, tmp176
	ble	.L84	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.30487, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.30470,
	rsb	r7, r4, r7	@ tmp187, D.30487, tmp185
	rsb	r4, r4, r8	@ tmp196, D.30487, tmp194
	add	sl, r6, sl, asl #2	@, tmp179, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r7, [sl, #40]	@ movhi	@ tmp187, <variable>.StartMbn
	ldr	r7, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r8, r6, r7, asl #2	@, tmp192, pLocalRepairParam, <variable>.ValidGroupNum,
	strh	r4, [r8, #42]	@ movhi	@ tmp196, <variable>.EndMbn
	ldr	r7, [r6, #32]	@ <variable>.IsFrame, <variable>.IsFrame
	ldr	r4, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	cmp	r7, #0	@ <variable>.IsFrame,
	add	r8, r4, #1	@ tmp198, <variable>.ValidGroupNum,
	str	r8, [r6, #552]	@ tmp198, <variable>.ValidGroupNum
	bne	.L93	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.30470,
	bge	.L92	@,
.L93:
	ldr	r7, [r1, #8]	@ prephitmp.735, <variable>.DecSliceNum
.L84:
	sub	r4, r7, #1	@ temp.756, prephitmp.735,
	cmp	r4, ip	@ temp.756, i
	beq	.L94	@,
.L85:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.30470
.L82:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.750, ivtmp.750,
	cmp	ip, r7	@ i, prephitmp.735
	bls	.L86	@,
	mov	r3, #0	@ D.30464,
.L79:
	mov	r0, r3	@, D.30464
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L94:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.30504, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.30504,
	bge	.L85	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.30464,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.30504, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L79	@
.L92:
	ldr	r7, [r1, #8]	@ prephitmp.735, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L84	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldr	r8, [r0, #8]	@ n, <variable>.DecSliceNum
	mov	r6, r0	@ pDecReport, pDecReport
	cmp	r8, #1	@ n,
	movhi	r7, #1	@ i,
	bls	.L101	@,
.L97:
	rsb	r4, r7, r8	@ pretmp.772, i, n
	mov	r5, #0	@ flag,
	tst	r4, #1	@ pretmp.772,
	mov	r3, r6	@ ivtmp.787, pDecReport
	mov	r1, r5	@ j, flag
	beq	.L100	@,
	cmp	r4, #0	@ pretmp.772,
	bls	.L101	@,
	ldrh	r3, [r6, #12]	@ D.30531, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r6, #16]	@ D.30533, <variable>.SliceMbRange
	cmp	r3, r2	@ D.30531, D.30533
	bls	.L103	@,
	ldrh	ip, [r6, #14]	@ D.30536, <variable>.SliceMbRange
	mov	r5, r1	@ flag, j
	strh	r2, [r6, #12]	@ movhi	@ D.30533, <variable>.SliceMbRange
	ldrh	r2, [r6, #18]	@, <variable>.SliceMbRange
	strh	r3, [r6, #16]	@ movhi	@ D.30531, <variable>.SliceMbRange
	strh	ip, [r6, #18]	@ movhi	@ D.30536, <variable>.SliceMbRange
	strh	r2, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
.L103:
	add	r3, r6, #4	@ ivtmp.787, pDecReport,
.L100:
	cmp	r4, r1	@ pretmp.772, j
	add	r2, r3, #4	@ tmp163, ivtmp.787,
	add	r1, r1, #1	@ tmp164, j,
	bls	.L109	@,
.L99:
	ldrh	ip, [r3, #12]	@ D.30531, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp164,
	ldrh	r0, [r3, #16]	@ D.30533, <variable>.SliceMbRange
	cmp	ip, r0	@ D.30531, D.30533
	bls	.L98	@,
	ldrh	sl, [r3, #14]	@ D.30536, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	r0, [r3, #12]	@ movhi	@ D.30533, <variable>.SliceMbRange
	ldrh	r0, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.30531, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.30536, <variable>.SliceMbRange
	strh	r0, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L98:
	ldrh	r3, [r2, #12]	@ D.30531, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.30533, <variable>.SliceMbRange
	cmp	r3, ip	@ D.30531, D.30533
	bls	.L106	@,
	ldrh	r0, [r2, #14]	@ D.30536, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.30533, <variable>.SliceMbRange
	ldrh	ip, [r2, #18]	@, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.30531, <variable>.SliceMbRange
	strh	r0, [r2, #18]	@ movhi	@ D.30536, <variable>.SliceMbRange
	strh	ip, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
.L106:
	cmp	r4, r1	@ pretmp.772, j
	add	r3, r2, #4	@ ivtmp.787, tmp163,
	add	r2, r3, #4	@ tmp163, ivtmp.787,
	add	r1, r1, #1	@ tmp164, j,
	bhi	.L99	@,
.L109:
	cmp	r5, #0	@ flag,
	beq	.L101	@,
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	bhi	.L97	@,
.L101:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ pRepairParam, pRepairParam
	ldr	r0, [r1, #8]	@, <variable>.DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	mov	r5, r1	@ pDecReport, pDecReport
	sub	r3, r0, #1	@ tmp194,,
	cmp	r3, #127	@ tmp194,
	str	r0, [sp, #8]	@, %sfp
	bhi	.L111	@,
	ldr	sl, [r4, #24]	@ D.29974, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.29974
	uxtheq	fp, r6	@ prephitmp.829, total_mbn
	bne	.L152	@,
.L113:
	mov	r1, #0	@ tmp391,
	str	r1, [r4, #552]	@ tmp391, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp391, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.824, <variable>.DecSliceNum
	add	r9, r6, r8	@ tmp468, total_mbn,
	mov	r3, r5	@ ivtmp.849, pDecReport
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	sl, fp	@ movhi	@,
	add	r0, r5, ip, asl #2	@, tmp395, pDecReport, prephitmp.824,
	mov	r2, r0	@ tmp400, tmp395
	strh	fp, [r0, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L132	@
.L130:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.925
.L126:
	add	r1, r1, #1	@ i.874, i.874,
	add	r3, r3, #4	@ ivtmp.849, ivtmp.849,
	cmp	ip, r1	@ prephitmp.824, i.874
	bcc	.L153	@,
.L132:
	ldrh	r2, [r3, #12]	@ temp.925, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.925, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L126	@,
	cmp	r2, r0	@ temp.925, curr_slice_end_mbn
	bgt	.L126	@,
	cmp	r2, r8	@ temp.925, old_slice_end_mbn
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp409, old_slice_end_mbn,
	cmp	r2, sl	@ temp.925, tmp409
	ble	.L128	@,
	ldr	sl, [r4, #552]	@ D.30060, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.30060,
	bgt	.L111	@,
	add	sl, r4, sl, asl #2	@, tmp411, pRepairParam, D.30060,
	add	r7, r7, r7, lsr #31	@, tmp417, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp424, temp.925,
	sub	r8, r8, #100	@ tmp465, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp417, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp422, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp424, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.826, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp426, prephitmp.826,
	mov	r7, sl, asl #2	@ tmp427, tmp426,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp465, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp465, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.826, <variable>.ValidGroupNum
	add	r7, ip, #1	@ tmp435, prephitmp.826,
	str	r7, [r4, #552]	@ tmp435, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.824, <variable>.DecSliceNum
.L128:
	sub	r7, ip, #1	@ temp.928, prephitmp.824,
	cmp	r7, r1	@ temp.928, i.874
	bne	.L130	@,
	add	r7, r5, r1, asl #2	@, tmp438, pDecReport, i.874,
	ldrh	r7, [r7, #14]	@ D.30081, <variable>.SliceMbRange
	cmp	r7, r9	@ D.30081, tmp468
	bge	.L130	@,
	ldr	r3, [r4, #552]	@ temp.929, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.929,
	bgt	.L111	@,
	add	r1, r4, r3, asl #2	@, tmp442, pRepairParam, temp.929,
	sub	fp, fp, #1	@ tmp450, prephitmp.829,
	mov	r0, #0	@ D.29973,
	strh	r7, [r1, #40]	@ movhi	@ D.30081, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp448, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp452, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp452, <variable>.ValidGroupNum
	b	.L131	@
.L152:
	ldrh	ip, [r5, #12]	@, <variable>.SliceMbRange
	add	r2, sp, #24	@ ivtmp.868,,
	ldr	r9, [sp, #8]	@, %sfp
	add	r3, r2, #4	@ ivtmp.868, ivtmp.868,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.29974,
	strh	ip, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.31006, ivtmp.868,,
	ldrh	lr, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp471, ivtmp.868, D.31006
	cmp	r3, r0	@ ivtmp.868, D.31006
	sub	r1, r8, #4	@ tmp472, tmp471,
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp473, tmp472,,
	add	r2, r5, #4	@ ivtmp.867, pDecReport,
	beq	.L143	@,
	cmp	r1, #0	@ tmp473,
	beq	.L114	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.867, ivtmp.867,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.868, ivtmp.868,
	cmp	r3, r0	@ ivtmp.868, D.31006
	beq	.L143	@,
.L114:
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	add	fp, r2, #4	@ tmp474, ivtmp.867,
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp475, ivtmp.868,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r1, [fp, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.868, tmp475,
	ldrh	lr, [fp, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.868, D.31006
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, fp, #4	@ ivtmp.867, tmp474,
	bne	.L114	@,
.L143:
	add	r0, sp, #536	@,,
	movw	r2, #:lower16:-512	@ tmp204,
	movw	r3, #:lower16:-510	@ tmp208,
	movt	r2, #:upper16:-512	@ tmp204,
	movt	r3, #:upper16:-510	@ tmp208,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r1, [r0, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	fp, #:lower16:65534	@ prephitmp.831,
	ldrh	r9, [r0, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	fp, #:upper16:65534	@ prephitmp.831,
	and	fp, r1, fp	@ prephitmp.831, SliceMbRange_Tmp, prephitmp.831
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r9, #1	@ D.29985, SliceMbRange_Tmp,
	strh	fp, [r0, r2]	@ movhi	@ tmp14, SliceMbRange_Tmp
	strh	r9, [r0, r3]	@ movhi	@ D.29985, SliceMbRange_Tmp
	beq	.L116	@,
	mov	r0, #0	@ i,
	uxth	r7, sl	@, DoubleImageWidth
	sub	ip, sl, #2	@, DoubleImageWidth,
	str	r7, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ total_mbn, %sfp
	add	r8, sp, #28	@ ivtmp.855,,
	str	ip, [sp, #12]	@, %sfp
	mov	r7, r0	@ j, i
	mov	r6, r0	@ i, i
	b	.L134	@
.L155:
	mov	r0, fp	@, prephitmp.831
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	fp, r0	@ tmp228,
	mov	r0, r9	@, D.29985
	bl	__aeabi_uidiv	@
	ldmia	sp, {r3, r9}	@ phole ldm
	mov	r1, r9, lsr #1	@ mbsurplus0,,
	mov	r3, r3, lsr #1	@ mbsurplus1, tmp224,
	cmp	r0, fp	@ tmp231, tmp228
	beq	.L119	@,
	ldr	r2, [sp, #16]	@, %sfp
	add	r9, r5, r7, asl #2	@, tmp239, pDecReport, j,
	mov	ip, r9	@ tmp243, tmp239
	mul	fp, fp, r2	@ tmp233, tmp228,
	add	r2, r7, #1	@ j.876, j,
	cmp	r2, #127	@ j.876,
	uxth	fp, fp	@ D.30001,
	add	r1, fp, r1	@ tmp235, D.30001, mbsurplus0
	uxth	r1, r1	@ D.30003, tmp235
	strh	r1, [r9, #12]	@ movhi	@ D.30003, <variable>.SliceMbRange
	ldr	lr, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, lr, #1	@ tmp247, <variable>.ImageWidth,
	add	lr, fp, r9	@ tmp249, D.30001, tmp247
	strh	lr, [ip, #14]	@ movhi	@ tmp249, <variable>.SliceMbRange
	bhi	.L149	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r5, r7, asl #2	@, tmp253, pDecReport, j,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	fp, r5, r2, asl #2	@, tmp262, pDecReport, j.876,
	uxth	r3, r3	@ D.30012, mbsurplus1
	mul	r0, r0, ip	@ tmp259, tmp231,
	add	ip, r2, #1	@ j.879, j.876,
	cmp	ip, #128	@ j.879,
	add	r1, r1, r9	@ tmp257, D.30003, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp257, <variable>.SliceMbRange
	uxth	r0, r0	@ D.30011, tmp259
	add	r7, r3, r0	@ tmp264, D.30012, D.30011
	strh	r7, [fp, #14]	@ movhi	@ tmp264, <variable>.SliceMbRange
	beq	.L149	@,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.879,
	mov	r2, lr	@ tmp271, tmp253
	cmp	r7, #128	@ j,
	add	r1, r0, r9	@ tmp267, D.30011, <variable>.ImageWidth
	add	lr, r5, ip, asl #2	@, tmp275, pDecReport, j.879,
	uxth	fp, r1	@ D.30016, tmp267
	strh	fp, [r2, #20]	@ movhi	@ D.30016, <variable>.SliceMbRange
	add	r3, fp, r3	@ tmp277, D.30016, D.30012
	strh	r3, [lr, #14]	@ movhi	@ tmp277, <variable>.SliceMbRange
	beq	.L149	@,
.L121:
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.855, ivtmp.855,
	cmp	fp, r6	@, i
	bls	.L154	@,
	ldrh	fp, [r8, #-4]	@ tmp459, SliceMbRange_Tmp
	ldrh	r0, [r8, #-2]	@ tmp462, SliceMbRange_Tmp
	bic	fp, fp, #1	@ tmp460, tmp459,
	strh	fp, [r8, #-4]	@ movhi	@ tmp3, SliceMbRange_Tmp
	orr	r9, r0, #1	@ D.29985, tmp462,
	strh	r9, [r8, #-2]	@ movhi	@ D.29985, SliceMbRange_Tmp
.L134:
	mov	r0, fp	@, prephitmp.831
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [sp, #4]	@, %sfp
	bls	.L117	@,
	mov	r0, r9	@, D.29985
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r1	@, tmp224
	mov	r3, r1	@ tmp224,
	bhi	.L155	@,
	mov	r0, fp	@, prephitmp.831
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	fp, r5, r7, asl #2	@, tmp322, pDecReport, j,
	add	r3, r7, #1	@ j.905, j,
	ldr	lr, [sp, #4]	@, %sfp
	cmp	r3, #127	@ j.905,
	mov	r2, fp	@ tmp326, tmp322
	mul	r7, sl, r0	@ tmp315, DoubleImageWidth,
	uxth	r0, r7	@ temp.898, tmp315
	add	ip, r0, lr, lsr #1	@, tmp318, temp.898,,
	uxth	ip, ip	@ temp.900, tmp318
	strh	ip, [fp, #12]	@ movhi	@ temp.900, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	fp, r1, #1	@ tmp330, <variable>.ImageWidth,
	add	r7, r0, fp	@ tmp332, temp.898, tmp330
	strh	r7, [r2, #14]	@ movhi	@ tmp332, <variable>.SliceMbRange
	bhi	.L149	@,
	add	r7, r3, #1	@ j, j.905,
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp343, pDecReport, j.905,
	cmp	r7, #128	@ j,
	add	r0, ip, r1	@ tmp340, temp.900, <variable>.ImageWidth
	strh	r0, [r2, #16]	@ movhi	@ tmp340, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.29985, <variable>.SliceMbRange
	bne	.L121	@,
.L149:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
	mov	lr, #0	@ movhi	@,
	mov	r9, #1	@ tmp454,
	strh	lr, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r5, #8]	@ tmp454, <variable>.DecSliceNum
	uxth	fp, r6	@ prephitmp.829, total_mbn
	sub	r8, fp, #1	@ tmp457, prephitmp.829,
	strh	r8, [r5, #14]	@ movhi	@ tmp457, <variable>.SliceMbRange
.L133:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L113	@
.L117:
	mov	r0, r9	@, D.29985
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [sp, #12]	@, %sfp
	cmp	ip, r1	@, tmp349
	mov	r2, r1	@ tmp349,
	bls	.L122	@,
	add	lr, r5, r7, asl #2	@, tmp354, pDecReport, j,
	mov	r0, r9	@, D.29985
	mov	r1, sl	@, DoubleImageWidth
	strh	fp, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #0]	@,
	add	r3, r7, #1	@ j.919, j,
	add	r1, r5, r7, asl #2	@, tmp366, pDecReport, j,
	cmp	r3, #127	@ j.919,
	ubfx	r2, r2, #1, #16	@ temp.917, tmp349,,
	mul	fp, sl, r0	@ tmp362, DoubleImageWidth,
	uxth	r0, fp	@ temp.916, tmp362
	add	r9, r2, r0	@ tmp368, temp.917, temp.916
	strh	r9, [r1, #14]	@ movhi	@ tmp368, <variable>.SliceMbRange
	bhi	.L149	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.919,
	cmp	r7, #128	@ j,
	add	r3, r5, r3, asl #2	@, tmp379, pDecReport, j.919,
	add	r9, r0, ip	@ tmp371, temp.916, <variable>.ImageWidth
	uxth	r0, r9	@ temp.922, tmp371
	strh	r0, [r1, #16]	@ movhi	@ temp.922, <variable>.SliceMbRange
	add	r1, r0, r2	@ tmp381, temp.922, temp.917
	strh	r1, [r3, #14]	@ movhi	@ tmp381, <variable>.SliceMbRange
	bne	.L121	@,
	b	.L149	@
.L153:
	mov	r0, #0	@ D.29973,
.L131:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L122:
	add	r2, r5, r7, asl #2	@, tmp385, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	fp, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.29985, <variable>.SliceMbRange
	bls	.L121	@,
	b	.L149	@
.L111:
	mov	r0, #1	@ D.29973,
	b	.L131	@
.L119:
	mul	fp, sl, r0	@ tmp280, DoubleImageWidth, tmp231
	add	r2, r7, #1	@ j.888, j,
	add	lr, r5, r7, asl #2	@, tmp286, pDecReport, j,
	cmp	r2, #127	@ j.888,
	mov	ip, lr	@ tmp292, tmp286
	uxth	r0, fp	@ temp.884, tmp280
	add	r3, r0, r3	@ tmp289, temp.884, mbsurplus1
	add	r7, r0, r1	@ tmp282, temp.884, mbsurplus0
	uxth	r3, r3	@ D.30022, tmp289
	uxth	r1, r7	@ temp.886, tmp282
	strh	r3, [lr, #14]	@ movhi	@ D.30022, <variable>.SliceMbRange
	strh	r1, [lr, #12]	@ movhi	@ temp.886, <variable>.SliceMbRange
	bhi	.L149	@,
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.888,
	cmp	r7, #128	@ j,
	add	r2, r5, r2, asl #2	@, tmp304, pDecReport, j.888,
	add	lr, r1, r0	@ tmp301, temp.886, <variable>.ImageWidth
	strh	lr, [ip, #16]	@ movhi	@ tmp301, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	ip, r3, r1	@ tmp308, D.30022, <variable>.ImageWidth
	strh	ip, [r2, #14]	@ movhi	@ tmp308, <variable>.SliceMbRange
	bne	.L121	@,
	b	.L149	@
.L154:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
.L116:
	uxth	fp, r6	@ prephitmp.829, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L133	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VidStd,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp192,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #552]	@ tmp192, <variable>.ValidGroupNum
	add	r6, r1, #572	@ D.29829, pRepairParam,
	str	r3, [r1, #1124]	@ tmp192, <variable>.ValidGroupNum
	bne	.L221	@,
	ldr	ip, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r8, r2, ip, asl #2	@, tmp198, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r3, [r8, #308]	@ tmp200, <variable>.ImgPhyAddr
	str	r3, [r1, #4]	@ tmp200, <variable>.ImageAddr
	ldr	r1, [r2, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r4, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	ip, [r2, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [ip, #1640]	@ ref_img_idc, <variable>.img_idc
	add	r8, r2, r1, asl #2	@, tmp206, pDecParam, ref_img_idc,
	ldr	r3, [r8, #308]	@ tmp208, <variable>.ImgPhyAddr
	str	r3, [r4, #16]	@ tmp208, <variable>.RefImageAddr
	ldr	ip, [r2, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	r8, ip, #206	@ tmp209, <variable>.CurrPicPmvIdc,
	ldr	r3, [r2, r8, asl #2]	@ tmp211, <variable>.PmvPhyAddr
	str	r3, [r4, #20]	@ tmp211, <variable>.CurrPmvAddr
	ldr	ip, [r2, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	ip, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	r8, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	r8, [r4, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	ip, r3, #1	@ tmp215, <variable>.pic_structure
	movcc	ip, #0	@ tmp215
	str	ip, [r4, #32]	@ tmp215, <variable>.IsFrame
	ldrb	r8, [r2, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r3, r8, #1	@ tmp217, <variable>.chroma_format_idc
	movcc	r3, #0	@ tmp217
	str	r3, [r4, #36]	@ tmp217, <variable>.ImageCSP
	ldr	r8, [r2, #1116]	@ D.29857, <variable>.ApcSize
	cmp	r8, #0	@ D.29857,
	beq	.L161	@,
	ldr	r3, [r2, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, ref_img_idc
	beq	.L163	@,
	tst	r8, #1	@ D.29857,
	mov	r3, r2	@ ivtmp.995, pDecParam
	bne	.L164	@,
	ldr	r2, [r2, #1324]	@ D.29851, <variable>.RefPicFsId
	mov	r0, #1	@ i,
	add	r3, r5, #4	@ ivtmp.995, pDecParam,
	cmp	r2, r1	@ D.29851, ref_img_idc
	bne	.L164	@,
.L163:
	add	r0, r0, #312	@ tmp219, i,
	add	r0, r0, #2	@ tmp219, tmp219,
	ldr	r1, [r5, r0, asl #2]	@ tmp221, <variable>.RefPicType
	str	r1, [r4, #556]	@ tmp221, <variable>.rpr_ref_pic_type
.L161:
	ldr	r8, [r5, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r8, #0	@ <variable>.mb_adaptive_frame_field_flag,
	moveq	r2, r8	@ prephitmp.960, <variable>.mb_adaptive_frame_field_flag
	bne	.L222	@,
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L223	@,
.L169:
	ldr	r2, [r4, #4]	@ D.29868, <variable>.ImageAddr
	ldr	ip, [r4, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, ip	@ D.29868, <variable>.RefImageAddr
	beq	.L224	@,
.L170:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.998, <variable>.pic_structure
	cmp	r3, #0	@ temp.998,
	beq	.L219	@,
	cmp	r3, #1	@ temp.998,
	beq	.L219	@,
	cmp	r3, #2	@ temp.998,
	beq	.L219	@,
	cmp	r3, #3	@ temp.998,
	bne	.L176	@,
	mov	r3, #0	@ tmp232,
.L219:
	str	r3, [r4, #564]	@ tmp232, <variable>.Pic_type
.L176:
	ldr	r1, [r5, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	r5, [r4, #1124]	@ prephitmp.959, <variable>.ValidGroupNum
	str	r1, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
.L160:
	ldr	r8, [r4, #552]	@ D.29921, <variable>.ValidGroupNum
	ldr	r3, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r2, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r8, #0	@ D.29921,
	mul	r1, r2, r3	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	movle	r3, #0	@ err_mbs,
	ble	.L183	@,
	ldrsh	r0, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	ip, #1	@ i.999,
	ldrsh	r3, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	ip, r8	@ i.999, D.29921
	add	r0, r0, ip	@ tmp251, <variable>.EndMbn,
	sub	r2, r8, #1	@ tmp271, D.29921,
	rsb	r3, r3, r0	@ err_mbs, <variable>.StartMbn, tmp251
	and	r2, r2, ip	@ tmp273, tmp271,
	add	r4, r4, #4	@ ivtmp.984, pRepairParam,
	beq	.L183	@,
	cmp	r2, #0	@ tmp273,
	beq	.L184	@,
	ldrsh	r0, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	ip, #2	@ i.999,
	ldrsh	r2, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	ip, r8	@ i.999, D.29921
	add	r0, r0, #1	@ tmp321, <variable>.EndMbn,
	add	r4, r4, #4	@ ivtmp.984, ivtmp.984,
	rsb	r2, r2, r0	@ tmp323, <variable>.StartMbn, tmp321
	add	r3, r3, r2	@ err_mbs, err_mbs, tmp323
	beq	.L183	@,
.L184:
	add	r2, r4, #4	@ tmp275, ivtmp.984,
	ldrsh	sl, [r4, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r9, [r4, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	ip, ip, #2	@ i.999, i.999,
	ldrsh	r0, [r2, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	sl, sl, #1	@ tmp293, <variable>.EndMbn,
	ldrsh	r4, [r2, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	sl, r9, sl	@ tmp295, <variable>.StartMbn, tmp293
	add	r0, r0, #1	@ tmp300, <variable>.EndMbn,
	cmp	ip, r8	@ i.999, D.29921
	rsb	r0, r4, r0	@ tmp302, <variable>.StartMbn, tmp300
	add	r3, r3, sl	@ err_mbs, err_mbs, tmp295
	add	r3, r3, r0	@ err_mbs, err_mbs, tmp302
	add	r4, r2, #4	@ ivtmp.984, tmp275,
	bne	.L184	@,
.L183:
	cmp	r5, #0	@ prephitmp.959,
	ble	.L185	@,
	ldrsh	r4, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	ip, #1	@ i.1001,
	ldrsh	r0, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	ip, r5	@ i.1001, prephitmp.959
	add	r4, r4, ip	@ tmp255, <variable>.EndMbn,
	sub	r2, r5, #1	@ tmp266, prephitmp.959,
	rsb	r0, r0, r4	@ tmp257, <variable>.StartMbn, tmp255
	and	r2, r2, ip	@ tmp268, tmp266,
	add	r3, r3, r0	@ err_mbs, err_mbs, tmp257
	add	r6, r6, #4	@ ivtmp.978, D.29829,
	beq	.L185	@,
	cmp	r2, #0	@ tmp268,
	beq	.L186	@,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	ip, #2	@ i.1001,
	ldrsh	r2, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	ip, r5	@ i.1001, prephitmp.959
	add	r0, r0, #1	@ tmp317, <variable>.EndMbn,
	add	r6, r6, #4	@ ivtmp.978, ivtmp.978,
	rsb	r2, r2, r0	@ tmp319, <variable>.StartMbn, tmp317
	add	r3, r3, r2	@ err_mbs, err_mbs, tmp319
	beq	.L185	@,
.L186:
	add	r2, r6, #4	@ tmp270, ivtmp.978,
	ldrsh	r4, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r8, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	ip, ip, #2	@ i.1001, i.1001,
	ldrsh	r0, [r2, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r6, r4, #1	@ tmp306, <variable>.EndMbn,
	ldrsh	r4, [r2, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	r6, r8, r6	@ tmp308, <variable>.StartMbn, tmp306
	add	r0, r0, #1	@ tmp313, <variable>.EndMbn,
	cmp	ip, r5	@ i.1001, prephitmp.959
	add	r3, r3, r6	@ err_mbs, err_mbs, tmp308
	rsb	r0, r4, r0	@ tmp315, <variable>.StartMbn, tmp313
	add	r3, r3, r0	@ err_mbs, err_mbs, tmp315
	add	r6, r2, #4	@ ivtmp.978, tmp270,
	bne	.L186	@,
.L185:
	cmp	r1, #0	@ total_mbs,
	moveq	r0, r1	@ err_ratio, total_mbs
	beq	.L188	@,
	mov	ip, #100	@ tmp259,
	mul	r0, ip, r3	@, tmp259, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1002,
	bic	r0, r0, r0, asr #31	@ err_ratio, err_ratio.1002
.L188:
	mov	r1, #0	@ tmp263,
	str	r1, [r7, #8]	@ tmp263, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L221:
	cmp	r0, #3	@ VidStd,
	movne	r5, r3	@ prephitmp.959, tmp192
	bne	.L160	@,
	ldr	r0, [r5, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	str	r0, [r1, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	lr, [r5, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	lr, [r1, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	r1, [r5, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	r1, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	ip, [r5, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	ip, [r4, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r5, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	r8, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	r8, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r3, [r4, #36]	@ tmp192, <variable>.ImageCSP
	cmp	r0, #3	@ <variable>.PictureStructure,
	movne	lr, #0	@, tmp241
	moveq	lr, #1	@, tmp241
	str	lr, [r4, #32]	@ tmp241, <variable>.IsFrame
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ temp.1000, <variable>.PictureStructure
	cmp	r2, #1	@ temp.1000,
	beq	.L220	@,
	cmp	r2, #2	@ temp.1000,
	beq	.L220	@,
	cmp	r2, #3	@ temp.1000,
	streq	r3, [r4, #564]	@ tmp192, <variable>.Pic_type
.L180:
	movw	r8, #45316	@ tmp246,
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, r8]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	ldr	r5, [r4, #1124]	@ prephitmp.959, <variable>.ValidGroupNum
	b	.L160	@
.L165:
	ldr	ip, [r3, #1324]	@ D.29851, <variable>.RefPicFsId
	add	r3, r2, #4	@ ivtmp.995, tmp284,
	cmp	ip, r1	@ D.29851, ref_img_idc
	beq	.L163	@,
	ldr	r2, [r2, #1324]	@ D.29851, <variable>.RefPicFsId
	add	r0, r0, #1	@ i, i,
	cmp	r2, r1	@ D.29851, ref_img_idc
	beq	.L163	@,
.L164:
	add	r0, r0, #1	@ i, i,
	add	r2, r3, #4	@ tmp284, ivtmp.995,
	cmp	r8, r0	@ D.29857, i
	bhi	.L165	@,
	b	.L161	@
.L222:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	r2, r2, #1	@ prephitmp.960, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.960
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	beq	.L169	@,
.L223:
	mov	r0, r4	@, pRepairParam
	mov	r1, r7	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L169	@
.L220:
	str	r2, [r4, #564]	@ temp.1000, <variable>.Pic_type
	b	.L180	@
.L224:
	ldr	r8, [r5, #820]	@ D.29877, <variable>.ImgSlotNum
	cmp	r8, #0	@ D.29877,
	beq	.L170	@,
	ldr	r3, [r5, #308]	@ D.29873, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.29868, D.29873
	bne	.L171	@,
	tst	r8, #1	@ D.29877,
	mov	r1, r5	@ ivtmp.990, pDecParam
	mov	ip, #0	@ i.997,
	bne	.L173	@,
	ldr	r3, [r5, #312]	@ D.29873, <variable>.ImgPhyAddr
	mov	ip, #1	@ i.997,
	add	r1, r5, #4	@ ivtmp.990, pDecParam,
	cmp	r3, r2	@ D.29873, D.29868
	beq	.L173	@,
	b	.L171	@
.L213:
	ldr	r3, [r0, #312]	@ D.29873, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.29873, D.29868
	bne	.L171	@,
.L173:
	add	r3, ip, #1	@ tmp279, i.997,
	add	r0, r1, #4	@ tmp280, ivtmp.990,
	cmp	r8, r3	@ D.29877, tmp279
	add	ip, r3, #1	@ i.997, tmp279,
	bls	.L170	@,
	ldr	r3, [r1, #312]	@ D.29873, <variable>.ImgPhyAddr
	add	r1, r0, #4	@ ivtmp.990, tmp280,
	cmp	r3, r2	@ D.29873, D.29868
	beq	.L213	@,
.L171:
	str	r3, [r4, #16]	@ D.29873, <variable>.RefImageAddr
	b	.L170	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	ip, [ip, #88]	@ D.29788, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	add	r5, r2, r2, asl #5	@, tmp143, VdhId.431, VdhId.431,
	movw	r3, #:lower16:g_DecReport	@ tmp145,
	cmp	ip, #0	@ D.29788,
	movt	r3, #:upper16:g_DecReport	@ tmp145,
	mov	r4, r2	@ VdhId.431, VdhId
	mov	r6, r1	@ pDecParam, pDecParam
	add	r5, r3, r5, asl #4	@, pDecReport, tmp145, tmp143,
	mov	r7, r0	@ VidStd, VidStd
	beq	.L226	@,
	mov	r1, r5	@, pDecReport
	blx	ip	@ D.29788
.L226:
	movw	r2, #:lower16:g_RepairParam	@ tmp150,
	movt	r2, #:upper16:g_RepairParam	@ tmp150,
	movw	r1, #1144	@ tmp148,
	mov	r0, r7	@, VidStd
	mla	r1, r1, r4, r2	@, tmp148, VdhId.431, tmp150
	mov	r3, r5	@, pDecReport
	mov	r2, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	PostPro_GetRepairParam	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	add	r5, r2, r2, asl #5	@, tmp142, VdhId, VdhId,
	movw	ip, #:lower16:g_DecReport	@ tmp144,
	movt	ip, #:upper16:g_DecReport	@ tmp144,
	add	r4, ip, r5, asl #4	@, pDecReport, tmp144, tmp142,
	movw	r3, #:lower16:g_RepairParam	@ tmp150,
	movt	r3, #:upper16:g_RepairParam	@ tmp150,
	mov	r6, r2	@ VdhId, VdhId
	mov	r2, r1	@ pDecParam, pDecParam
	movw	r1, #1144	@ tmp148,
	mla	r1, r1, r6, r3	@, tmp148, VdhId, tmp150
	mov	r6, #1	@ tmp145,
	mov	r3, r4	@, pDecReport
	str	r6, [ip, r5, asl #4]	@ tmp145, <variable>.RetType
	mov	ip, #0	@ tmp146,
	str	ip, [r4, #8]	@ tmp146, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6}
	b	PostPro_GetRepairParam	@
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
