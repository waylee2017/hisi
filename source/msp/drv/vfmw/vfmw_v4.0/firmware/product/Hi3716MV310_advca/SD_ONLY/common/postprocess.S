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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(postprocess)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldr	r8, [r0, #8]	@ n, <variable>.DecSliceNum
	mov	r6, r0	@ pDecReport, pDecReport
	cmp	r8, #1	@ n,
	movhi	r7, #1	@ i,
	bls	.L9	@,
.L5:
	rsb	r4, r7, r8	@ pretmp.552, i, n
	mov	r5, #0	@ flag,
	tst	r4, #1	@ pretmp.552,
	mov	r3, r6	@ ivtmp.567, pDecReport
	mov	r1, r5	@ j, flag
	beq	.L8	@,
	cmp	r4, #0	@ pretmp.552,
	bls	.L9	@,
	ldrh	r3, [r6, #12]	@ D.33432, <variable>.SliceMbRange
	mov	r1, #1	@ j,
	ldrh	r2, [r6, #16]	@ D.33434, <variable>.SliceMbRange
	cmp	r3, r2	@ D.33432, D.33434
	bls	.L11	@,
	ldrh	ip, [r6, #14]	@ D.33437, <variable>.SliceMbRange
	mov	r5, r1	@ flag, j
	strh	r2, [r6, #12]	@ movhi	@ D.33434, <variable>.SliceMbRange
	ldrh	r2, [r6, #18]	@, <variable>.SliceMbRange
	strh	r3, [r6, #16]	@ movhi	@ D.33432, <variable>.SliceMbRange
	strh	ip, [r6, #18]	@ movhi	@ D.33437, <variable>.SliceMbRange
	strh	r2, [r6, #14]	@ movhi	@, <variable>.SliceMbRange
.L11:
	add	r3, r6, #4	@ ivtmp.567, pDecReport,
.L8:
	cmp	r4, r1	@ pretmp.552, j
	add	r2, r3, #4	@ tmp194, ivtmp.567,
	add	r1, r1, #1	@ tmp195, j,
	bls	.L18	@,
.L7:
	ldrh	ip, [r3, #12]	@ D.33432, <variable>.SliceMbRange
	add	r1, r1, #1	@ j, tmp195,
	ldrh	r0, [r3, #16]	@ D.33434, <variable>.SliceMbRange
	cmp	ip, r0	@ D.33432, D.33434
	bls	.L6	@,
	ldrh	sl, [r3, #14]	@ D.33437, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	r0, [r3, #12]	@ movhi	@ D.33434, <variable>.SliceMbRange
	ldrh	r0, [r3, #18]	@, <variable>.SliceMbRange
	strh	ip, [r3, #16]	@ movhi	@ D.33432, <variable>.SliceMbRange
	strh	sl, [r3, #18]	@ movhi	@ D.33437, <variable>.SliceMbRange
	strh	r0, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
.L6:
	ldrh	r3, [r2, #12]	@ D.33432, <variable>.SliceMbRange
	ldrh	ip, [r2, #16]	@ D.33434, <variable>.SliceMbRange
	cmp	r3, ip	@ D.33432, D.33434
	bls	.L14	@,
	ldrh	r0, [r2, #14]	@ D.33437, <variable>.SliceMbRange
	mov	r5, #1	@ flag,
	strh	ip, [r2, #12]	@ movhi	@ D.33434, <variable>.SliceMbRange
	ldrh	ip, [r2, #18]	@, <variable>.SliceMbRange
	strh	r3, [r2, #16]	@ movhi	@ D.33432, <variable>.SliceMbRange
	strh	r0, [r2, #18]	@ movhi	@ D.33437, <variable>.SliceMbRange
	strh	ip, [r2, #14]	@ movhi	@, <variable>.SliceMbRange
.L14:
	cmp	r4, r1	@ pretmp.552, j
	add	r3, r2, #4	@ ivtmp.567, tmp194,
	add	r2, r3, #4	@ tmp194, ivtmp.567,
	add	r1, r1, #1	@ tmp195, j,
	bhi	.L7	@,
.L18:
	cmp	r5, #0	@ flag,
	beq	.L9	@,
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	bhi	.L5	@,
.L9:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #3	@ tmp155,
	bhi	.L36	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.601, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.601,
	mov	r3, r1	@ ivtmp.616, pDecReport
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
.L28:
	ldrh	r2, [r3, #12]	@ D.33371, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33371, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L24	@,
	cmp	r2, r0	@ D.33371, curr_slice_end_mbn
	bgt	.L24	@,
	cmp	r2, sl	@ D.33371, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.33371, tmp176
	ble	.L26	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.33388, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.33371,
	rsb	r7, r4, r7	@ tmp187, D.33388, tmp185
	rsb	r4, r4, r8	@ tmp196, D.33388, tmp194
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
	bne	.L35	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.33371,
	bge	.L34	@,
.L35:
	ldr	r7, [r1, #8]	@ prephitmp.601, <variable>.DecSliceNum
.L26:
	sub	r4, r7, #1	@ temp.622, prephitmp.601,
	cmp	r4, ip	@ temp.622, i
	beq	.L37	@,
.L27:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.33371
.L24:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.616, ivtmp.616,
	cmp	ip, r7	@ i, prephitmp.601
	bls	.L28	@,
	mov	r3, #0	@ D.33365,
.L21:
	mov	r0, r3	@, D.33365
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L37:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.33405, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.33405,
	bge	.L27	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.33365,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.33405, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L21	@
.L34:
	ldr	r7, [r1, #8]	@ prephitmp.601, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L26	@
.L36:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33365,
	b	.L21	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #28
	sub	sp, sp, #28	@,,
	sub	r3, r2, #1	@ tmp155, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp155,
	bhi	.L55	@,
	ldr	r4, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp157,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mov	ip, r7	@ i, tmp157
	str	r7, [r0, #568]	@ tmp157, <variable>.FullRepair
	mvn	sl, #0	@ old_slice_end_mbn,
	ldr	r7, [r1, #8]	@ prephitmp.646, <variable>.DecSliceNum
	add	r6, r0, #572	@, pRepairParam,
	mul	r5, r5, r4	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	str	r6, [sp, #20]	@, %sfp
	add	r4, r1, r7, asl #2	@, tmp162, pDecReport, prephitmp.646,
	mov	r3, r1	@ ivtmp.661, pDecReport
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
.L47:
	ldrh	r2, [r3, #12]	@ D.33300, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33300, total_mbn
	cmple	r0, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L43	@,
	cmp	r2, r0	@ D.33300, curr_slice_end_mbn
	bgt	.L43	@,
	cmp	r2, sl	@ D.33300, old_slice_end_mbn
	movlt	sl, r8	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, sl, #1	@ tmp176, old_slice_end_mbn,
	cmp	r2, sl	@ D.33300, tmp176
	ble	.L45	@,
	ldr	sl, [r6, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r8, r8, lsr #31	@, tmp185, old_slice_start_mbn, old_slice_start_mbn,
	uxth	r4, r9	@ D.33317, dectopfldmbs
	sub	r8, r2, #1	@ tmp194, D.33300,
	rsb	r7, r4, r7	@ tmp187, D.33317, tmp185
	rsb	r4, r4, r8	@ tmp196, D.33317, tmp194
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
	bne	.L54	@,
	ldr	r4, [sp, #16]	@, %sfp
	cmp	r2, r4	@ D.33300,
	bge	.L53	@,
.L54:
	ldr	r7, [r1, #8]	@ prephitmp.646, <variable>.DecSliceNum
.L45:
	sub	r4, r7, #1	@ temp.667, prephitmp.646,
	cmp	r4, ip	@ temp.667, i
	beq	.L56	@,
.L46:
	mov	sl, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r8, r2	@ old_slice_start_mbn, D.33300
.L43:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.661, ivtmp.661,
	cmp	ip, r7	@ i, prephitmp.646
	bls	.L47	@,
	mov	r3, #0	@ D.33294,
.L40:
	mov	r0, r3	@, D.33294
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L56:
	add	r4, r1, ip, asl #2	@, tmp202, pDecReport, i,
	ldrh	r8, [r4, #14]	@ D.33334, <variable>.SliceMbRange
	ldr	r4, [sp, #12]	@, %sfp
	cmp	r8, r4	@ D.33334,
	bge	.L46	@,
	ldr	ip, [fp, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	mov	r0, fp	@ pRepairParam, pRepairParam
	ldr	fp, [sp, #4]	@, %sfp
	mov	r3, #0	@ D.33294,
	add	r2, r0, ip, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	sub	r1, fp, #1	@ tmp215,,
	strh	r8, [r2, #40]	@ movhi	@ D.33334, <variable>.StartMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, ip, asl #2	@, tmp213, pRepairParam, <variable>.ValidGroupNum,
	strh	r1, [r2, #42]	@ movhi	@ tmp215, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp217, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp217, <variable>.ValidGroupNum
	b	.L40	@
.L53:
	ldr	r7, [r1, #8]	@ prephitmp.646, <variable>.DecSliceNum
	ldr	r6, [sp, #20]	@ pLocalRepairParam, %sfp
	ldr	r9, [sp, #8]	@ dectopfldmbs, %sfp
	b	.L45	@
.L55:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33294,
	b	.L40	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
.LFB1920:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L72	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.706, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.691, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.691,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33229, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L68	@
.L62:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.691
	bhi	.L73	@,
.L68:
	ldrh	r2, [r3, #12]	@ D.33232, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.706, ivtmp.706,
	cmp	r2, r5	@ D.33232, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L62	@,
	cmp	r2, r4	@ D.33232, curr_slice_end_mbn
	bgt	.L62	@,
	cmp	r2, r8	@ D.33232, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33232,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33232
	mov	r7, r2	@ old_slice_start_mbn, D.33232
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L64	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L64	@,
	ldr	r2, [r0, #552]	@ D.33250, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33250,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33250,
	bgt	.L72	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.691, <variable>.DecSliceNum
.L64:
	sub	r2, r6, #1	@ temp.711, prephitmp.691,
	cmp	r2, ip	@ temp.711, i
	bne	.L62	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33263, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33263,
	bge	.L62	@,
	ldr	r3, [r0, #552]	@ temp.712, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.712,
	bgt	.L72	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.712,
	sub	fp, fp, #1	@ tmp209, D.33229,
	mov	r3, #0	@ D.33226,
	strh	r2, [ip, #40]	@ movhi	@ D.33263, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L59	@
.L73:
	mov	r3, #0	@ D.33226,
.L59:
	mov	r0, r3	@, D.33226
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L72:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33226,
	b	.L59	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L89	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.752, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.737, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.737,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33163, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L85	@
.L79:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.737
	bhi	.L90	@,
.L85:
	ldrh	r2, [r3, #12]	@ D.33166, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.752, ivtmp.752,
	cmp	r2, r5	@ D.33166, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L79	@,
	cmp	r2, r4	@ D.33166, curr_slice_end_mbn
	bgt	.L79	@,
	cmp	r2, r8	@ D.33166, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33166,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33166
	mov	r7, r2	@ old_slice_start_mbn, D.33166
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L81	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L81	@,
	ldr	r2, [r0, #552]	@ D.33184, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33184,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33184,
	bgt	.L89	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.737, <variable>.DecSliceNum
.L81:
	sub	r2, r6, #1	@ temp.757, prephitmp.737,
	cmp	r2, ip	@ temp.757, i
	bne	.L79	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33197, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33197,
	bge	.L79	@,
	ldr	r3, [r0, #552]	@ temp.758, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.758,
	bgt	.L89	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.758,
	sub	fp, fp, #1	@ tmp209, D.33163,
	mov	r3, #0	@ D.33160,
	strh	r2, [ip, #40]	@ movhi	@ D.33197, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L76	@
.L90:
	mov	r3, #0	@ D.33160,
.L76:
	mov	r0, r3	@, D.33160
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L89:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33160,
	b	.L76	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	.pad #12
	sub	sp, sp, #12	@,,
	sub	r3, r2, #1	@ tmp152, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp152,
	bhi	.L106	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp154,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mvn	r8, #0	@ old_slice_end_mbn,
	str	r7, [r0, #552]	@ tmp154, <variable>.ValidGroupNum
	mov	ip, r7	@ i, tmp154
	str	r7, [r0, #568]	@ tmp154, <variable>.FullRepair
	mov	r3, r1	@ ivtmp.798, pDecReport
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.783, <variable>.DecSliceNum
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	add	r4, r1, r6, asl #2	@, tmp160, pDecReport, prephitmp.783,
	add	sl, r5, r8	@, total_mbn, tmp7
	str	sl, [sp, #4]	@, %sfp
	uxth	fp, r5	@ D.33097, total_mbn
	mov	r2, r4	@ tmp165, tmp160
	strh	fp, [r4, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	mov	sl, fp	@ movhi	@,
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L102	@
.L96:
	add	ip, ip, #1	@ i, i,
	cmp	ip, r6	@ i, prephitmp.783
	bhi	.L107	@,
.L102:
	ldrh	r2, [r3, #12]	@ D.33100, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.798, ivtmp.798,
	cmp	r2, r5	@ D.33100, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L96	@,
	cmp	r2, r4	@ D.33100, curr_slice_end_mbn
	bgt	.L96	@,
	cmp	r2, r8	@ D.33100, old_slice_end_mbn
	add	r9, r7, r7, lsr #31	@, tmp215, old_slice_start_mbn, old_slice_start_mbn,
	sub	sl, r2, #1	@ tmp214, D.33100,
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, r8, #1	@ tmp174, old_slice_end_mbn,
	cmp	r8, r2	@ tmp174, D.33100
	mov	r7, r2	@ old_slice_start_mbn, D.33100
	mov	r8, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	beq	.L98	@,
	cmp	r9, sl	@ tmp215, tmp214
	bge	.L98	@,
	ldr	r2, [r0, #552]	@ D.33118, <variable>.ValidGroupNum
	cmp	r2, #127	@ D.33118,
	add	r2, r0, r2, asl #2	@, tmp179, pRepairParam, D.33118,
	bgt	.L106	@,
	strh	r9, [r2, #40]	@ movhi	@ tmp215, <variable>.StartMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r2, asl #2	@, tmp190, pRepairParam, <variable>.ValidGroupNum,
	strh	sl, [r6, #42]	@ movhi	@ tmp214, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r2, #1	@ tmp194, <variable>.ValidGroupNum,
	str	r6, [r0, #552]	@ tmp194, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.783, <variable>.DecSliceNum
.L98:
	sub	r2, r6, #1	@ temp.803, prephitmp.783,
	cmp	r2, ip	@ temp.803, i
	bne	.L96	@,
	add	r4, r1, ip, asl #2	@, tmp197, pDecReport, i,
	ldrh	r2, [r4, #14]	@ D.33131, <variable>.SliceMbRange
	ldr	r4, [sp, #4]	@, %sfp
	cmp	r2, r4	@ D.33131,
	bge	.L96	@,
	ldr	r3, [r0, #552]	@ temp.804, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.804,
	bgt	.L106	@,
	add	ip, r0, r3, asl #2	@, tmp201, pRepairParam, temp.804,
	sub	fp, fp, #1	@ tmp209, D.33097,
	mov	r3, #0	@ D.33094,
	strh	r2, [ip, #40]	@ movhi	@ D.33131, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r0, r1, asl #2	@, tmp207, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	ip, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, ip, #1	@ tmp211, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp211, <variable>.ValidGroupNum
	b	.L93	@
.L107:
	mov	r3, #0	@ D.33094,
.L93:
	mov	r0, r3	@, D.33094
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L106:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33094,
	b	.L93	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r1, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	sub	r3, r2, #1	@ tmp154, <variable>.DecSliceNum,
	cmp	r3, #127	@ tmp154,
	bhi	.L125	@,
	ldr	r6, [r0, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mov	r7, #0	@ tmp156,
	ldr	r5, [r0, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	str	r7, [r0, #568]	@ tmp156, <variable>.FullRepair
	str	r7, [r0, #552]	@ tmp156, <variable>.ValidGroupNum
	mul	r5, r5, r6	@ total_mbn, <variable>.ImageWidth, <variable>.ImageHeight
	ldr	r6, [r1, #8]	@ prephitmp.837, <variable>.DecSliceNum
	cmp	r6, r7	@ prephitmp.837,
	add	r4, r1, r6, asl #2	@, tmp162, pDecReport, prephitmp.837,
	uxth	r9, r5	@ D.33014, total_mbn
	strh	r9, [r4, #14]	@ movhi	@ D.33014, <variable>.SliceMbRange
	strh	r9, [r4, #12]	@ movhi	@ D.33014, <variable>.SliceMbRange
	bne	.L126	@,
.L111:
	mvn	sl, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.854, pDecReport
	add	fp, r5, sl	@ tmp246, total_mbn,
	mov	ip, #0	@ i,
	mov	r7, sl	@ old_slice_start_mbn, old_slice_end_mbn
	b	.L121	@
.L119:
	mov	sl, r4	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, D.33025
.L114:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.854, ivtmp.854,
	cmp	ip, r6	@ i, prephitmp.837
	bhi	.L127	@,
.L121:
	ldrh	r2, [r3, #12]	@ D.33025, <variable>.SliceMbRange
	ldrh	r4, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r5	@ D.33025, total_mbn
	cmple	r4, r5	@, curr_slice_end_mbn, total_mbn
	bgt	.L114	@,
	cmp	r2, r4	@ D.33025, curr_slice_end_mbn
	movle	r8, #0	@, tmp190
	movgt	r8, #1	@, tmp190
	cmp	r2, r7	@ D.33025, old_slice_start_mbn
	orrlt	r8, r8, #1	@,, tmp193, tmp190
	cmp	r8, #0	@ tmp193,
	bne	.L114	@,
	cmp	r2, sl	@ D.33025, old_slice_end_mbn
	movlt	sl, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	r8, sl, #1	@ tmp194, old_slice_end_mbn,
	cmp	r8, r2	@ tmp194, D.33025
	beq	.L116	@,
	add	r7, r7, r7, lsr #31	@, tmp245, old_slice_start_mbn, old_slice_start_mbn,
	sub	r8, r2, #1	@ tmp242, D.33025,
	cmp	r7, r8	@ tmp245, tmp242
	bge	.L116	@,
	ldr	r6, [r0, #552]	@ D.33046, <variable>.ValidGroupNum
	cmp	r6, #127	@ D.33046,
	bgt	.L125	@,
	add	r6, r0, r6, asl #2	@, tmp199, pRepairParam, D.33046,
	sub	sl, sl, #100	@ tmp243, old_slice_end_mbn,
	strh	r7, [r6, #40]	@ movhi	@ tmp245, <variable>.StartMbn
	ldr	r7, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r6, r0, r7, asl #2	@, tmp210, pRepairParam, <variable>.ValidGroupNum,
	strh	r8, [r6, #42]	@ movhi	@ tmp242, <variable>.EndMbn
	ldr	r6, [r0, #552]	@ prephitmp.839, <variable>.ValidGroupNum
	add	r8, r6, #10	@ tmp214, prephitmp.839,
	mov	r7, r8, asl #2	@ tmp215, tmp214,
	ldrsh	r8, [r7, r0]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	sl, r8	@ tmp243, <variable>.StartMbn
	strgth	sl, [r7, r0]	@ movhi	@ tmp243, <variable>.StartMbn
	ldrgt	r6, [r0, #552]	@ prephitmp.839, <variable>.ValidGroupNum
	add	r7, r6, #1	@ tmp223, prephitmp.839,
	str	r7, [r0, #552]	@ tmp223, <variable>.ValidGroupNum
	ldr	r6, [r1, #8]	@ prephitmp.837, <variable>.DecSliceNum
.L116:
	sub	r7, r6, #1	@ temp.859, prephitmp.837,
	cmp	r7, ip	@ temp.859, i
	bne	.L119	@,
	add	r7, r1, ip, asl #2	@, tmp226, pDecReport, i,
	ldrh	r7, [r7, #14]	@ temp.860, <variable>.SliceMbRange
	cmp	r7, fp	@ temp.860, tmp246
	bge	.L119	@,
	ldr	r3, [r0, #552]	@ temp.862, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.862,
	bgt	.L125	@,
	add	r2, r0, r3, asl #2	@, tmp230, pRepairParam, temp.862,
	sub	r9, r9, #1	@ tmp238, D.33014,
	mov	r3, #0	@ D.33011,
	strh	r7, [r2, #40]	@ movhi	@ temp.860, <variable>.StartMbn
	ldr	r1, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	ip, r0, r1, asl #2	@, tmp236, pRepairParam, <variable>.ValidGroupNum,
	strh	r9, [ip, #42]	@ movhi	@ tmp238, <variable>.EndMbn
	ldr	r2, [r0, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r2, #1	@ tmp240, <variable>.ValidGroupNum,
	str	r1, [r0, #552]	@ tmp240, <variable>.ValidGroupNum
	b	.L110	@
.L127:
	mov	r3, #0	@ D.33011,
.L110:
	mov	r0, r3	@, D.33011
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L126:
	add	fp, r4, #6	@ tmp172, tmp171,
	sub	sl, r5, #10	@ tmp174, total_mbn,
	ldrh	ip, [fp, #4]	@ tmp173, <variable>.SliceMbRange
	cmp	ip, sl	@ tmp173, tmp174
	subge	sl, r9, #1	@ tmp179, D.33014,
	strgeh	sl, [fp, #4]	@ movhi	@ tmp179, <variable>.SliceMbRange
	b	.L111	@
.L125:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33011,
	mov	r0, r3	@, D.33011
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
.LFB1916:
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
	bhi	.L173	@,
	ldr	sl, [r4, #24]	@ D.32875, <variable>.ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r6, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	mul	r6, r6, sl	@ total_mbn, <variable>.ImageHeight, D.32875
	uxtheq	fp, r6	@ prephitmp.896, total_mbn
	bne	.L175	@,
.L132:
	mov	r1, #0	@ tmp391,
	str	r1, [r4, #552]	@ tmp391, <variable>.ValidGroupNum
	str	r1, [r4, #568]	@ tmp391, <variable>.FullRepair
	mvn	r8, #0	@ old_slice_end_mbn,
	ldr	ip, [r5, #8]	@ prephitmp.891, <variable>.DecSliceNum
	add	r9, r6, r8	@ tmp468, total_mbn,
	mov	r3, r5	@ ivtmp.916, pDecReport
	mov	r7, r8	@ old_slice_start_mbn, old_slice_end_mbn
	mov	sl, fp	@ movhi	@,
	add	r0, r5, ip, asl #2	@, tmp395, pDecReport, prephitmp.891,
	mov	r2, r0	@ tmp400, tmp395
	strh	fp, [r0, #14]	@ movhi	@ tmp10, <variable>.SliceMbRange
	strh	fp, [r2, #12]	@ movhi	@ tmp10, <variable>.SliceMbRange
	b	.L152	@
.L150:
	mov	r8, r0	@ old_slice_end_mbn, curr_slice_end_mbn
	mov	r7, r2	@ old_slice_start_mbn, temp.992
.L145:
	add	r1, r1, #1	@ i.941, i.941,
	add	r3, r3, #4	@ ivtmp.916, ivtmp.916,
	cmp	ip, r1	@ prephitmp.891, i.941
	bcc	.L176	@,
.L152:
	ldrh	r2, [r3, #12]	@ temp.992, <variable>.SliceMbRange
	ldrh	r0, [r3, #14]	@ curr_slice_end_mbn, <variable>.SliceMbRange
	cmp	r2, r6	@ temp.992, total_mbn
	cmple	r0, r6	@, curr_slice_end_mbn, total_mbn
	bgt	.L145	@,
	cmp	r2, r0	@ temp.992, curr_slice_end_mbn
	bgt	.L145	@,
	cmp	r2, r8	@ temp.992, old_slice_end_mbn
	movlt	r8, r7	@ old_slice_end_mbn, old_slice_start_mbn
	add	sl, r8, #1	@ tmp409, old_slice_end_mbn,
	cmp	r2, sl	@ temp.992, tmp409
	ble	.L147	@,
	ldr	sl, [r4, #552]	@ D.32961, <variable>.ValidGroupNum
	cmp	sl, #127	@ D.32961,
	bgt	.L173	@,
	add	sl, r4, sl, asl #2	@, tmp411, pRepairParam, D.32961,
	add	r7, r7, r7, lsr #31	@, tmp417, old_slice_start_mbn, old_slice_start_mbn,
	sub	ip, r2, #1	@ tmp424, temp.992,
	sub	r8, r8, #100	@ tmp467, old_slice_end_mbn,
	strh	r7, [sl, #40]	@ movhi	@ tmp417, <variable>.StartMbn
	ldr	sl, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r7, r4, sl, asl #2	@, tmp422, pRepairParam, <variable>.ValidGroupNum,
	strh	ip, [r7, #42]	@ movhi	@ tmp424, <variable>.EndMbn
	ldr	ip, [r4, #552]	@ prephitmp.893, <variable>.ValidGroupNum
	add	sl, ip, #10	@ tmp426, prephitmp.893,
	mov	r7, sl, asl #2	@ tmp427, tmp426,
	ldrsh	sl, [r7, r4]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r8, sl	@ tmp467, <variable>.StartMbn
	strgth	r8, [r7, r4]	@ movhi	@ tmp467, <variable>.StartMbn
	ldrgt	ip, [r4, #552]	@ prephitmp.893, <variable>.ValidGroupNum
	add	r7, ip, #1	@ tmp435, prephitmp.893,
	str	r7, [r4, #552]	@ tmp435, <variable>.ValidGroupNum
	ldr	ip, [r5, #8]	@ prephitmp.891, <variable>.DecSliceNum
.L147:
	sub	r7, ip, #1	@ temp.995, prephitmp.891,
	cmp	r7, r1	@ temp.995, i.941
	bne	.L150	@,
	add	r7, r5, r1, asl #2	@, tmp438, pDecReport, i.941,
	ldrh	r7, [r7, #14]	@ D.32982, <variable>.SliceMbRange
	cmp	r7, r9	@ D.32982, tmp468
	bge	.L150	@,
	ldr	r3, [r4, #552]	@ temp.996, <variable>.ValidGroupNum
	cmp	r3, #127	@ temp.996,
	bgt	.L173	@,
	add	r1, r4, r3, asl #2	@, tmp442, pRepairParam, temp.996,
	sub	fp, fp, #1	@ tmp450, prephitmp.896,
	mov	r0, #0	@ D.32874,
	strh	r7, [r1, #40]	@ movhi	@ D.32982, <variable>.StartMbn
	ldr	ip, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r2, r4, ip, asl #2	@, tmp448, pRepairParam, <variable>.ValidGroupNum,
	strh	fp, [r2, #42]	@ movhi	@, <variable>.EndMbn
	ldr	r3, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	r1, r3, #1	@ tmp452, <variable>.ValidGroupNum,
	str	r1, [r4, #552]	@ tmp452, <variable>.ValidGroupNum
	b	.L130	@
.L176:
	mov	r0, #0	@ D.32874,
.L130:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L175:
	ldrh	ip, [r5, #12]	@, <variable>.SliceMbRange
	add	r2, sp, #24	@ ivtmp.935,,
	ldr	r9, [sp, #8]	@, %sfp
	add	r3, r2, #4	@ ivtmp.935, ivtmp.935,
	mov	sl, sl, asl #1	@ DoubleImageWidth, D.32875,
	strh	ip, [r2, #0]	@ movhi	@, SliceMbRange_Tmp
	add	r0, r2, r9, asl #2	@, D.33907, ivtmp.935,,
	ldrh	lr, [r5, #14]	@, <variable>.SliceMbRange
	rsb	r8, r2, r0	@ tmp471, ivtmp.935, D.33907
	cmp	r3, r0	@ ivtmp.935, D.33907
	sub	r1, r8, #4	@ tmp472, tmp471,
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	ubfx	r1, r1, #2, #1	@ tmp473, tmp472,,
	add	r2, r5, #4	@ ivtmp.934, pDecReport,
	beq	.L163	@,
	cmp	r1, #0	@ tmp473,
	beq	.L133	@,
	ldrh	r1, [r2, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r2, #4	@ ivtmp.934, ivtmp.934,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r3, #4	@ ivtmp.935, ivtmp.935,
	cmp	r3, r0	@ ivtmp.935, D.33907
	beq	.L163	@,
.L133:
	ldrh	r8, [r2, #12]	@, <variable>.SliceMbRange
	add	fp, r2, #4	@ tmp474, ivtmp.934,
	strh	r8, [r3, #0]	@ movhi	@, SliceMbRange_Tmp
	ldrh	ip, [r2, #14]	@, <variable>.SliceMbRange
	add	r2, r3, #4	@ tmp475, ivtmp.935,
	strh	ip, [r3, #2]	@ movhi	@, SliceMbRange_Tmp
	ldrh	r1, [fp, #12]	@, <variable>.SliceMbRange
	strh	r1, [r3, #4]	@ movhi	@, SliceMbRange_Tmp
	add	r3, r2, #4	@ ivtmp.935, tmp475,
	ldrh	lr, [fp, #14]	@, <variable>.SliceMbRange
	cmp	r3, r0	@ ivtmp.935, D.33907
	strh	lr, [r2, #2]	@ movhi	@, SliceMbRange_Tmp
	add	r2, fp, #4	@ ivtmp.934, tmp474,
	bne	.L133	@,
.L163:
	add	r0, sp, #536	@,,
	movw	r2, #:lower16:-512	@ tmp204,
	movw	r3, #:lower16:-510	@ tmp208,
	movt	r2, #:upper16:-512	@ tmp204,
	movt	r3, #:upper16:-510	@ tmp208,
	cmp	sl, #0	@ DoubleImageWidth,
	ldrh	r1, [r0, r2]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movw	fp, #:lower16:65534	@ prephitmp.898,
	ldrh	r9, [r0, r3]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	movt	fp, #:upper16:65534	@ prephitmp.898,
	and	fp, r1, fp	@ prephitmp.898, SliceMbRange_Tmp, prephitmp.898
	moveq	r7, sl	@ j, DoubleImageWidth
	orr	r9, r9, #1	@ D.32886, SliceMbRange_Tmp,
	strh	fp, [r0, r2]	@ movhi	@ tmp14, SliceMbRange_Tmp
	strh	r9, [r0, r3]	@ movhi	@ D.32886, SliceMbRange_Tmp
	beq	.L135	@,
	mov	r0, #0	@ i,
	uxth	r7, sl	@, DoubleImageWidth
	sub	ip, sl, #2	@, DoubleImageWidth,
	str	r7, [sp, #16]	@, %sfp
	str	r6, [sp, #20]	@ total_mbn, %sfp
	add	r8, sp, #28	@ ivtmp.922,,
	str	ip, [sp, #12]	@, %sfp
	mov	r7, r0	@ j, i
	mov	r6, r0	@ i, i
	b	.L154	@
.L178:
	mov	r0, fp	@, prephitmp.898
	mov	r1, sl	@, DoubleImageWidth
	str	r3, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	mov	r1, sl	@, DoubleImageWidth
	mov	fp, r0	@ tmp228,
	mov	r0, r9	@, D.32886
	bl	__aeabi_uidiv	@
	ldmia	sp, {r3, r9}	@ phole ldm
	mov	r1, r9, lsr #1	@ mbsurplus0,,
	mov	r3, r3, lsr #1	@ mbsurplus1, tmp224,
	cmp	r0, fp	@ tmp231, tmp228
	beq	.L138	@,
	ldr	r2, [sp, #16]	@, %sfp
	add	r9, r5, r7, asl #2	@, tmp239, pDecReport, j,
	mov	ip, r9	@ tmp243, tmp239
	mul	fp, fp, r2	@ tmp233, tmp228,
	add	r2, r7, #1	@ j.943, j,
	cmp	r2, #127	@ j.943,
	uxth	fp, fp	@ D.32902,
	add	r1, fp, r1	@ tmp235, D.32902, mbsurplus0
	uxth	r1, r1	@ D.32904, tmp235
	strh	r1, [r9, #12]	@ movhi	@ D.32904, <variable>.SliceMbRange
	ldr	lr, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	r9, lr, #1	@ tmp247, <variable>.ImageWidth,
	add	lr, fp, r9	@ tmp249, D.32902, tmp247
	strh	lr, [ip, #14]	@ movhi	@ tmp249, <variable>.SliceMbRange
	bhi	.L169	@,
	ldr	ip, [sp, #16]	@, %sfp
	add	lr, r5, r7, asl #2	@, tmp253, pDecReport, j,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	fp, r5, r2, asl #2	@, tmp262, pDecReport, j.943,
	uxth	r3, r3	@ D.32913, mbsurplus1
	mul	r0, r0, ip	@ tmp259, tmp231,
	add	ip, r2, #1	@ j.946, j.943,
	cmp	ip, #128	@ j.946,
	add	r1, r1, r9	@ tmp257, D.32904, <variable>.ImageWidth
	strh	r1, [lr, #16]	@ movhi	@ tmp257, <variable>.SliceMbRange
	uxth	r0, r0	@ D.32912, tmp259
	add	r7, r3, r0	@ tmp264, D.32913, D.32912
	strh	r7, [fp, #14]	@ movhi	@ tmp264, <variable>.SliceMbRange
	beq	.L169	@,
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, ip, #1	@ j, j.946,
	mov	r2, lr	@ tmp271, tmp253
	cmp	r7, #128	@ j,
	add	r1, r0, r9	@ tmp267, D.32912, <variable>.ImageWidth
	add	lr, r5, ip, asl #2	@, tmp275, pDecReport, j.946,
	uxth	fp, r1	@ D.32917, tmp267
	strh	fp, [r2, #20]	@ movhi	@ D.32917, <variable>.SliceMbRange
	add	r3, fp, r3	@ tmp277, D.32917, D.32913
	strh	r3, [lr, #14]	@ movhi	@ tmp277, <variable>.SliceMbRange
	beq	.L169	@,
.L140:
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.922, ivtmp.922,
	cmp	fp, r6	@, i
	bls	.L177	@,
.L142:
	ldrh	fp, [r8, #-4]	@ tmp459, SliceMbRange_Tmp
	ldrh	r0, [r8, #-2]	@ tmp462, SliceMbRange_Tmp
	bic	fp, fp, #1	@ tmp460, tmp459,
	strh	fp, [r8, #-4]	@ movhi	@ tmp3, SliceMbRange_Tmp
	orr	r9, r0, #1	@ D.32886, tmp462,
	strh	r9, [r8, #-2]	@ movhi	@ D.32886, SliceMbRange_Tmp
.L154:
	mov	r0, fp	@, prephitmp.898
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	cmp	r1, #1	@,
	str	r1, [sp, #4]	@, %sfp
	bls	.L136	@,
	mov	r0, r9	@, D.32886
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	lr, [sp, #12]	@, %sfp
	cmp	lr, r1	@, tmp224
	mov	r3, r1	@ tmp224,
	bhi	.L178	@,
	mov	r0, fp	@, prephitmp.898
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidiv	@
	add	fp, r5, r7, asl #2	@, tmp322, pDecReport, j,
	add	r3, r7, #1	@ j.972, j,
	ldr	lr, [sp, #4]	@, %sfp
	cmp	r3, #127	@ j.972,
	mov	r2, fp	@ tmp326, tmp322
	mul	r7, sl, r0	@ tmp315, DoubleImageWidth,
	uxth	r0, r7	@ temp.965, tmp315
	add	ip, r0, lr, lsr #1	@, tmp318, temp.965,,
	uxth	ip, ip	@ temp.967, tmp318
	strh	ip, [fp, #12]	@ movhi	@ temp.967, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	sub	fp, r1, #1	@ tmp330, <variable>.ImageWidth,
	add	r7, r0, fp	@ tmp332, temp.965, tmp330
	strh	r7, [r2, #14]	@ movhi	@ tmp332, <variable>.SliceMbRange
	bhi	.L169	@,
	add	r7, r3, #1	@ j, j.972,
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r3, r5, r3, asl #2	@, tmp343, pDecReport, j.972,
	cmp	r7, #128	@ j,
	add	r0, ip, r1	@ tmp340, temp.967, <variable>.ImageWidth
	strh	r0, [r2, #16]	@ movhi	@ tmp340, <variable>.SliceMbRange
	strh	r9, [r3, #14]	@ movhi	@ D.32886, <variable>.SliceMbRange
	bne	.L140	@,
.L169:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
	mov	lr, #0	@ movhi	@,
	mov	r9, #1	@ tmp454,
	strh	lr, [r5, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r9, [r5, #8]	@ tmp454, <variable>.DecSliceNum
	uxth	fp, r6	@ prephitmp.896, total_mbn
	sub	r8, fp, #1	@ tmp457, prephitmp.896,
	strh	r8, [r5, #14]	@ movhi	@ tmp457, <variable>.SliceMbRange
.L153:
	mov	r0, r5	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L132	@
.L136:
	mov	r0, r9	@, D.32886
	mov	r1, sl	@, DoubleImageWidth
	bl	__aeabi_uidivmod	@
	ldr	ip, [sp, #12]	@, %sfp
	cmp	ip, r1	@, tmp349
	mov	r2, r1	@ tmp349,
	bls	.L141	@,
	add	lr, r5, r7, asl #2	@, tmp354, pDecReport, j,
	mov	r0, r9	@, D.32886
	mov	r1, sl	@, DoubleImageWidth
	strh	fp, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	str	r2, [sp, #0]	@,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #0]	@,
	add	r3, r7, #1	@ j.986, j,
	add	r1, r5, r7, asl #2	@, tmp366, pDecReport, j,
	cmp	r3, #127	@ j.986,
	ubfx	r2, r2, #1, #16	@ temp.984, tmp349,,
	mul	fp, sl, r0	@ tmp362, DoubleImageWidth,
	uxth	r0, fp	@ temp.983, tmp362
	add	r9, r2, r0	@ tmp368, temp.984, temp.983
	strh	r9, [r1, #14]	@ movhi	@ tmp368, <variable>.SliceMbRange
	bhi	.L169	@,
	ldr	ip, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r3, #1	@ j, j.986,
	cmp	r7, #128	@ j,
	add	r3, r5, r3, asl #2	@, tmp379, pDecReport, j.986,
	add	r9, r0, ip	@ tmp371, temp.983, <variable>.ImageWidth
	uxth	r0, r9	@ temp.989, tmp371
	strh	r0, [r1, #16]	@ movhi	@ temp.989, <variable>.SliceMbRange
	add	r1, r0, r2	@ tmp381, temp.989, temp.984
	strh	r1, [r3, #14]	@ movhi	@ tmp381, <variable>.SliceMbRange
	beq	.L169	@,
	ldr	fp, [sp, #8]	@, %sfp
	add	r6, r6, #1	@ i, i,
	add	r8, r8, #4	@ ivtmp.922, ivtmp.922,
	cmp	fp, r6	@, i
	bhi	.L142	@,
.L177:
	ldr	r6, [sp, #20]	@ total_mbn, %sfp
.L135:
	uxth	fp, r6	@ prephitmp.896, total_mbn
	str	r7, [r5, #8]	@ j, <variable>.DecSliceNum
	b	.L153	@
.L141:
	add	r2, r5, r7, asl #2	@, tmp385, pDecReport, j,
	add	r7, r7, #1	@ j, j,
	cmp	r7, #127	@ j,
	strh	fp, [r2, #12]	@ movhi	@, <variable>.SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.32886, <variable>.SliceMbRange
	bls	.L140	@,
	b	.L169	@
.L138:
	mul	fp, sl, r0	@ tmp280, DoubleImageWidth, tmp231
	add	r2, r7, #1	@ j.955, j,
	add	lr, r5, r7, asl #2	@, tmp286, pDecReport, j,
	cmp	r2, #127	@ j.955,
	mov	ip, lr	@ tmp292, tmp286
	uxth	r0, fp	@ temp.951, tmp280
	add	r3, r0, r3	@ tmp289, temp.951, mbsurplus1
	add	r7, r0, r1	@ tmp282, temp.951, mbsurplus0
	uxth	r3, r3	@ D.32923, tmp289
	uxth	r1, r7	@ temp.953, tmp282
	strh	r3, [lr, #14]	@ movhi	@ D.32923, <variable>.SliceMbRange
	strh	r1, [lr, #12]	@ movhi	@ temp.953, <variable>.SliceMbRange
	bhi	.L169	@,
	ldr	r0, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	r7, r2, #1	@ j, j.955,
	cmp	r7, #128	@ j,
	add	r2, r5, r2, asl #2	@, tmp304, pDecReport, j.955,
	add	lr, r1, r0	@ tmp301, temp.953, <variable>.ImageWidth
	strh	lr, [ip, #16]	@ movhi	@ tmp301, <variable>.SliceMbRange
	ldr	r1, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	add	ip, r3, r1	@ tmp308, D.32923, <variable>.ImageWidth
	strh	ip, [r2, #14]	@ movhi	@ tmp308, <variable>.SliceMbRange
	bne	.L140	@,
	b	.L169	@
.L173:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.32874,
	b	.L130	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VidStd,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp191,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1, #0]	@ VidStd, <variable>.VidStd
	str	r3, [r1, #552]	@ tmp191, <variable>.ValidGroupNum
	add	r6, r1, #572	@ D.32730, pRepairParam,
	str	r3, [r1, #1124]	@ tmp191, <variable>.ValidGroupNum
	bne	.L240	@,
	ldr	ip, [r2, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	add	r9, r2, ip, asl #2	@, tmp197, pDecParam, <variable>.CurrPicImgIdc,
	ldr	r3, [r9, #308]	@ tmp199, <variable>.ImgPhyAddr
	str	r3, [r1, #4]	@ tmp199, <variable>.ImageAddr
	ldr	r1, [r2, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	str	r1, [r4, #8]	@ <variable>.CurrPicImg2DAddr, <variable>.Image2DAddr
	ldr	lr, [r2, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	ldr	r1, [lr, #1640]	@ ref_img_idc, <variable>.img_idc
	add	ip, r2, r1, asl #2	@, tmp205, pDecParam, ref_img_idc,
	ldr	r9, [ip, #308]	@ tmp207, <variable>.ImgPhyAddr
	str	r9, [r4, #16]	@ tmp207, <variable>.RefImageAddr
	ldr	r3, [r2, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	add	lr, r3, #206	@ tmp208, <variable>.CurrPicPmvIdc,
	ldr	ip, [r2, lr, asl #2]	@ tmp210, <variable>.PmvPhyAddr
	str	ip, [r4, #20]	@ tmp210, <variable>.CurrPmvAddr
	ldr	r9, [r2, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	r9, [r4, #24]	@ <variable>.pic_width_in_mb, <variable>.ImageWidth
	ldr	r3, [r2, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	str	r3, [r4, #28]	@ <variable>.pic_height_in_mb, <variable>.ImageHeight
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	rsbs	ip, lr, #1	@ tmp214, <variable>.pic_structure
	movcc	ip, #0	@ tmp214
	str	ip, [r4, #32]	@ tmp214, <variable>.IsFrame
	ldrb	r9, [r2, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	rsbs	r3, r9, #1	@ tmp216, <variable>.chroma_format_idc
	movcc	r3, #0	@ tmp216
	str	r3, [r4, #36]	@ tmp216, <variable>.ImageCSP
	ldr	lr, [r2, #1116]	@ D.32758, <variable>.ApcSize
	cmp	lr, #0	@ D.32758,
	beq	.L183	@,
	ldr	r3, [r2, #1320]	@ <variable>.RefPicFsId, <variable>.RefPicFsId
	cmp	r3, r1	@ <variable>.RefPicFsId, ref_img_idc
	beq	.L185	@,
	tst	lr, #1	@ D.32758,
	mov	r3, r2	@ ivtmp.1057, pDecParam
	bne	.L186	@,
	ldr	r2, [r2, #1324]	@ D.32752, <variable>.RefPicFsId
	mov	r0, #1	@ i,
	add	r3, r5, #4	@ ivtmp.1057, pDecParam,
	cmp	r2, r1	@ D.32752, ref_img_idc
	bne	.L186	@,
.L185:
	add	r1, r0, #312	@ tmp218, i,
	add	r0, r1, #2	@ tmp218, tmp218,
	ldr	lr, [r5, r0, asl #2]	@ tmp220, <variable>.RefPicType
	str	lr, [r4, #556]	@ tmp220, <variable>.rpr_ref_pic_type
.L183:
	ldr	ip, [r5, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	ip, #0	@ <variable>.mb_adaptive_frame_field_flag,
	moveq	r2, ip	@ prephitmp.1022, <variable>.mb_adaptive_frame_field_flag
	bne	.L241	@,
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	bne	.L242	@,
.L191:
	ldr	r2, [r4, #4]	@ D.32769, <variable>.ImageAddr
	ldr	r9, [r4, #16]	@ <variable>.RefImageAddr, <variable>.RefImageAddr
	cmp	r2, r9	@ D.32769, <variable>.RefImageAddr
	beq	.L243	@,
.L192:
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.1060, <variable>.pic_structure
	cmp	r3, #0	@ temp.1060,
	beq	.L238	@,
	cmp	r3, #1	@ temp.1060,
	beq	.L238	@,
	cmp	r3, #2	@ temp.1060,
	beq	.L238	@,
	cmp	r3, #3	@ temp.1060,
	bne	.L198	@,
	mov	r3, #0	@ tmp231,
.L238:
	str	r3, [r4, #564]	@ tmp231, <variable>.Pic_type
.L198:
	ldr	lr, [r5, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	str	lr, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	b	.L201	@
.L240:
	cmp	r0, #3	@ VidStd,
	beq	.L244	@,
	bl	vfmw_dprint_nothing	@
.L201:
	ldr	r2, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	ldr	lr, [r4, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	ldr	r9, [r4, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	cmp	r2, #0	@ <variable>.ValidGroupNum,
	movle	r5, #0	@ err_mbs,
	mul	r9, r9, lr	@ total_mbs, <variable>.ImageWidth, <variable>.ImageHeight
	ble	.L206	@,
	mov	r5, #0	@ err_mbs,
	mov	r8, r4	@ ivtmp.1046, pRepairParam
	mov	sl, r5	@ i.1062, err_mbs
.L207:
	bl	vfmw_dprint_nothing	@
	ldrsh	r2, [r8, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldr	r1, [r4, #552]	@ <variable>.ValidGroupNum, <variable>.ValidGroupNum
	add	sl, sl, #1	@ i.1062, i.1062,
	ldrsh	ip, [r8, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r3, r2, #1	@ tmp251, <variable>.EndMbn,
	cmp	r1, sl	@ <variable>.ValidGroupNum, i.1062
	add	r8, r8, #4	@ ivtmp.1046, ivtmp.1046,
	rsb	r0, ip, r3	@ tmp253, <variable>.StartMbn, tmp251
	add	r5, r5, r0	@ err_mbs, err_mbs, tmp253
	bgt	.L207	@,
.L206:
	ldr	lr, [r4, #1124]	@ D.32829, <variable>.ValidGroupNum
	cmp	lr, #0	@ D.32829,
	ble	.L208	@,
	ldrsh	ip, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #1	@ i.1064,
	ldrsh	r1, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1064, D.32829
	add	r0, ip, r2	@ tmp256, <variable>.EndMbn,
	sub	r3, lr, #1	@ tmp267, D.32829,
	rsb	ip, r1, r0	@ tmp258, <variable>.StartMbn, tmp256
	and	r3, r3, r2	@ tmp269, tmp267,
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp258
	add	r6, r6, #4	@ ivtmp.1040, D.32730,
	beq	.L208	@,
	cmp	r3, #0	@ tmp269,
	beq	.L209	@,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r2, #2	@ i.1064,
	ldrsh	ip, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	cmp	r2, lr	@ i.1064, D.32829
	add	r1, r0, #1	@ tmp299, <variable>.EndMbn,
	add	r6, r6, #4	@ ivtmp.1040, ivtmp.1040,
	rsb	r3, ip, r1	@ tmp301, <variable>.StartMbn, tmp299
	add	r5, r5, r3	@ err_mbs, err_mbs, tmp301
	beq	.L208	@,
.L209:
	add	r3, r6, #4	@ tmp271, ivtmp.1040,
	ldrsh	r0, [r6, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r4, [r6, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	add	r2, r2, #2	@ i.1064, i.1064,
	ldrsh	r6, [r3, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	add	r1, r0, #1	@ tmp288, <variable>.EndMbn,
	ldrsh	r0, [r3, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	rsb	ip, r4, r1	@ tmp290, <variable>.StartMbn, tmp288
	cmp	r2, lr	@ i.1064, D.32829
	add	r1, r6, #1	@ tmp295, <variable>.EndMbn,
	rsb	r6, r0, r1	@ tmp297, <variable>.StartMbn, tmp295
	add	r5, r5, ip	@ err_mbs, err_mbs, tmp290
	add	r5, r5, r6	@ err_mbs, err_mbs, tmp297
	add	r6, r3, #4	@ ivtmp.1040, tmp271,
	bne	.L209	@,
.L208:
	cmp	r9, #0	@ total_mbs,
	beq	.L211	@,
	mov	r1, r9	@, total_mbs
	mov	r9, #100	@ tmp260,
	mul	r0, r9, r5	@, tmp260, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio.1065,
	bic	r9, r0, r0, asr #31	@ err_ratio, err_ratio.1065
.L211:
	mov	lr, #0	@ tmp264,
	str	lr, [r7, #8]	@ tmp264, <variable>.DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r9	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L187:
	ldr	r9, [r3, #1324]	@ D.32752, <variable>.RefPicFsId
	add	r3, r2, #4	@ ivtmp.1057, tmp280,
	cmp	r9, r1	@ D.32752, ref_img_idc
	beq	.L185	@,
	ldr	r2, [r2, #1324]	@ D.32752, <variable>.RefPicFsId
	add	r0, r0, #1	@ i, i,
	cmp	r2, r1	@ D.32752, ref_img_idc
	beq	.L185	@,
.L186:
	add	r0, r0, #1	@ i, i,
	add	r2, r3, #4	@ tmp280, ivtmp.1057,
	cmp	lr, r0	@ D.32758, i
	bhi	.L187	@,
	b	.L183	@
.L244:
	ldr	r1, [r2, #200]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	str	r1, [r4, #4]	@ <variable>.CurPicPhyAddr, <variable>.ImageAddr
	ldr	r0, [r2, #224]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	str	r0, [r4, #8]	@ <variable>.DispFramePhyAddr, <variable>.Image2DAddr
	ldr	lr, [r2, #196]	@ <variable>.FwdRefPhyAddr, <variable>.FwdRefPhyAddr
	str	lr, [r4, #16]	@ <variable>.FwdRefPhyAddr, <variable>.RefImageAddr
	ldr	r9, [r2, #240]	@ <variable>.PmvColmbPhyAddr, <variable>.PmvColmbPhyAddr
	str	r9, [r4, #20]	@ <variable>.PmvColmbPhyAddr, <variable>.CurrPmvAddr
	ldrh	r2, [r2, #152]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	str	r2, [r4, #24]	@ <variable>.PicWidthInMb, <variable>.ImageWidth
	ldrh	ip, [r5, #148]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	str	ip, [r4, #28]	@ <variable>.PicHeightInMb, <variable>.ImageHeight
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.PictureStructure, <variable>.PictureStructure
	str	r3, [r4, #36]	@ tmp191, <variable>.ImageCSP
	cmp	r1, #3	@ <variable>.PictureStructure,
	movne	r0, #0	@, tmp240
	moveq	r0, #1	@, tmp240
	str	r0, [r4, #32]	@ tmp240, <variable>.IsFrame
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ temp.1061, <variable>.PictureStructure
	cmp	r2, #1	@ temp.1061,
	beq	.L239	@,
	cmp	r2, #2	@ temp.1061,
	beq	.L239	@,
	cmp	r2, #3	@ temp.1061,
	streq	r3, [r4, #564]	@ tmp191, <variable>.Pic_type
.L203:
	movw	ip, #45316	@ tmp245,
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	r1, r7	@, pDecReport
	str	r3, [r4, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L201	@
.L241:
	ldrb	r2, [r5, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	ldrsb	r3, [r5, #2]	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	rsbs	r2, r2, #1	@ prephitmp.1022, <variable>.pic_structure
	movcc	r2, #0	@ prephitmp.1022
	cmp	r3, #0	@ <variable>.NewPicFlag,
	streq	r3, [r7, #8]	@ <variable>.NewPicFlag, <variable>.DecSliceNum
	beq	.L191	@,
.L242:
	mov	r0, r4	@, pRepairParam
	mov	r1, r7	@, pDecReport
	bl	PostPro_GetH264MbGroup	@
	b	.L191	@
.L239:
	str	r2, [r4, #564]	@ temp.1061, <variable>.Pic_type
	b	.L203	@
.L243:
	ldr	lr, [r5, #820]	@ D.32778, <variable>.ImgSlotNum
	cmp	lr, #0	@ D.32778,
	beq	.L192	@,
	ldr	r3, [r5, #308]	@ D.32774, <variable>.ImgPhyAddr
	cmp	r2, r3	@ D.32769, D.32774
	bne	.L193	@,
	tst	lr, #1	@ D.32778,
	mov	r1, r5	@ ivtmp.1052, pDecParam
	mov	ip, #0	@ i.1059,
	bne	.L195	@,
	ldr	r3, [r5, #312]	@ D.32774, <variable>.ImgPhyAddr
	mov	ip, #1	@ i.1059,
	add	r1, r5, #4	@ ivtmp.1052, pDecParam,
	cmp	r3, r2	@ D.32774, D.32769
	beq	.L195	@,
	b	.L193	@
.L232:
	ldr	r3, [r0, #312]	@ D.32774, <variable>.ImgPhyAddr
	cmp	r3, r2	@ D.32774, D.32769
	bne	.L193	@,
.L195:
	add	r3, ip, #1	@ tmp276, i.1059,
	add	r0, r1, #4	@ tmp275, ivtmp.1052,
	cmp	lr, r3	@ D.32778, tmp276
	add	ip, r3, #1	@ i.1059, tmp276,
	bls	.L192	@,
	ldr	r3, [r1, #312]	@ D.32774, <variable>.ImgPhyAddr
	add	r1, r0, #4	@ ivtmp.1052, tmp275,
	cmp	r3, r2	@ D.32774, D.32769
	beq	.L232	@,
.L193:
	str	r3, [r4, #16]	@ D.32774, <variable>.RefImageAddr
	b	.L192	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
.LFB1924:
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
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	add	r6, r2, r2, asl #5	@, tmp143, VdhId.498, VdhId.498,
	movw	ip, #:lower16:g_DecReport	@ tmp145,
	movt	ip, #:upper16:g_DecReport	@ tmp145,
	ldr	r3, [r3, #88]	@ D.32689, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r5, r2	@ VdhId.498, VdhId
	mov	r7, r1	@ pDecParam, pDecParam
	add	r6, ip, r6, asl #4	@, pDecReport, tmp145, tmp143,
	cmp	r3, #0	@ D.32689,
	mov	r4, r0	@ VidStd, VidStd
	beq	.L248	@,
	mov	r1, r6	@, pDecReport
	blx	r3	@ D.32689
.L249:
	movw	r0, #:lower16:g_RepairParam	@ tmp150,
	movt	r0, #:upper16:g_RepairParam	@ tmp150,
	movw	r1, #1144	@ tmp148,
	mov	r2, r7	@, pDecParam
	mla	r1, r1, r5, r0	@, tmp148, VdhId.498, tmp150
	mov	r3, r6	@, pDecReport
	mov	r0, r4	@, VidStd
	bl	PostPro_GetRepairParam	@
	mov	r4, r0	@ err_ratio,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L248:
	bl	vfmw_dprint_nothing	@
	b	.L249	@
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
