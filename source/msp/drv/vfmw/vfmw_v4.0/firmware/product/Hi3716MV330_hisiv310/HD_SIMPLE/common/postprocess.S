	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"postprocess.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(postprocess)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -funit-at-a-time
@ -funwind-tables -fverbose-asm -fzero-initialized-in-bss -marm -mglibc
@ -mlittle-endian -mlra -mpic-data-is-text-relative -msched-prolog
@ -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_CopyYuv
	.type	PostPro_CopyYuv, %function
PostPro_CopyYuv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L7	@ tmp133,
	movw	ip, #1144	@ tmp135,
	add	r3, r0, #12288	@ tmp139, pMp4DecParam,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mla	ip, ip, r1, r2	@ tmp136, tmp135, VdhId, tmp133
	ldr	lr, [r3, #2300]	@ D.28263, pMp4DecParam_5(D)->DispFramePhyAddr
	ldr	r9, [r3, #2312]	@ pMp4DecParam_5(D)->VahbStride, pMp4DecParam_5(D)->VahbStride
	mov	r2, #0	@ tmp185,
	ldr	r8, [r3, #2372]	@ pMp4DecParam_5(D)->Compress_en, pMp4DecParam_5(D)->Compress_en
	ldr	r4, .L7+4	@ tmp227,
	add	r7, ip, #32	@ tmp178, tmp136,
	add	r6, ip, #560	@ tmp211, tmp136,
	str	r9, [ip, #12]	@ pMp4DecParam_5(D)->VahbStride, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].VahbStride
	str	lr, [ip, #4]	@ D.28263, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	lr, [ip, #8]	@ D.28263, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #216]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, pMp4DecParam_5(D)->FwdRefPicPhyAddr
	ldr	r5, [r4, #84]	@ D.28267, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	mov	r4, #1	@ tmp179,
	str	r3, [ip, #16]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	cmp	r5, r2	@ D.28267,
	ldr	r3, [r0, #224]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, pMp4DecParam_5(D)->CurPmvPhyAddr
	str	r3, [ip, #20]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	lr, [r0, #164]	@ D.28264, pMp4DecParam_5(D)->PicWidthInMb
	str	lr, [ip, #24]	@ D.28264, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #166]	@ D.28264, pMp4DecParam_5(D)->PicHeightInMb
	str	r8, [ip, #560]	@ pMp4DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	str	r2, [ip, #36]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	smulbb	lr, r3, lr	@ tmp205, D.28264, D.28264
	str	r3, [ip, #28]	@ D.28264, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	strh	r2, [ip, #40]	@ movhi	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r2, [ip, #564]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	sub	lr, lr, #1	@ tmp206, tmp205,
	str	r4, [ip, #32]	@ tmp179, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	strh	lr, [ip, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	str	r4, [ip, #552]	@ tmp179, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	str	r4, [ip, #568]	@ tmp179, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	beq	.L4	@,
	mov	r3, r1	@ VdhId, VdhId
	mov	r1, r0	@, pMp4DecParam
	mov	r0, #2	@,
	blx	r5	@ D.28267
	adds	r0, r0, #0	@ D.28261,,
	movne	r0, #1	@ D.28261,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L4:
	mov	r0, r4	@ D.28261, tmp179
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L8:
	.align	2
.L7:
	.word	g_RepairParam
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, [r1, #8]	@ D.28279, pDecReport_15(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28279, D.28279,
	cmp	r3, #127	@ D.28279,
	bhi	.L30	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.28279, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.28279,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.28279,
	uxth	r8, r5	@ D.28281, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.28281, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28281, pDecReport_15(D)->SliceMbRange
	bne	.L31	@,
.L12:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.26, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.28280, total_mbn, tmp6
	b	.L21	@
.L35:
	cmp	r2, lr	@ D.28281, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.28281, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L13	@,
	cmp	r2, r7	@ D.28281, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.28280, old_slice_end_mbn,
	cmp	r4, r2	@ D.28280, D.28281
	beq	.L17	@,
	add	r6, r6, r6, lsr #31	@ tmp262, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp263, D.28281,
	cmp	r6, r10	@ tmp262, tmp263
	bge	.L17	@,
	ldr	r4, [r0, #552]	@ D.28280, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.28280,
	bgt	.L32	@,
	sub	r7, r7, #100	@ tmp261, old_slice_end_mbn,
	sxth	fp, r6	@ D.28280, tmp262
	cmp	r7, fp	@ tmp261, D.28280
	add	fp, r0, r4, lsl #2	@ D.28285, pRepairParam, D.28280,
	add	r4, r4, #1	@ D.28280, D.28280,
	strh	r6, [fp, #40]	@ movhi	@ tmp262, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp263, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	str	r4, [r0, #552]	@ D.28280, pRepairParam_19(D)->ValidGroupNum
.L17:
	ldr	r4, [r1, #8]	@ D.28288, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.28279, D.28288,
	cmp	r6, ip	@ D.28279, i
	beq	.L33	@,
.L23:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.28288
	mov	r6, r2	@ old_slice_end_mbn, D.28281
	add	r3, r3, #4	@ ivtmp.26, ivtmp.26,
	bhi	.L34	@,
.L21:
	ldrh	r2, [r3, #12]	@ D.28281, MEM[base: _111, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _111, offset: 14B]
	cmp	r2, r5	@ D.28281, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L35	@,
.L13:
	ldr	r4, [r1, #8]	@ D.28288, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.26, ivtmp.26,
	cmp	ip, r4	@ i, D.28288
	bls	.L21	@,
.L34:
	mov	r3, #0	@ D.28278,
.L28:
	mov	r0, r3	@, D.28278
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L33:
	add	r6, r1, ip, lsl #2	@ tmp253, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28281, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.28281, D.28280
	bge	.L23	@,
	ldr	r3, [r0, #552]	@ D.28280, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.28280,
	bgt	.L36	@,
	add	r1, r0, r3, lsl #2	@ D.28285, pRepairParam, D.28280,
	add	r2, r3, #1	@ D.28280, D.28280,
	sub	r8, r8, #1	@ tmp258, D.28281,
	mov	r3, #0	@ D.28278,
	strh	r8, [r1, #42]	@ movhi	@ tmp258, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28281, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 40B]
	str	r2, [r0, #552]	@ D.28280, pRepairParam_19(D)->ValidGroupNum
	b	.L28	@
.L31:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.28280, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.28280, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.28280, D.28280
	subge	r2, r8, #1	@ tmp221, D.28281,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L12	@
.L30:
	ldr	r1, .L37	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28278,
	mov	r0, r3	@, D.28278
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L32:
	mov	r2, #1012	@,
	ldr	r1, .L37+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28278,
	b	.L28	@
.L36:
	movw	r2, #1043	@,
	ldr	r1, .L37+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28278,
	b	.L28	@
.L38:
	.align	2
.L37:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28300, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28300,
	bhi	.L53	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28300, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.35, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28300,
	add	r9, r5, r6	@ D.28301, total_mbn,
	uxth	r8, r5	@ D.28302, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28302, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28302, pDecReport_13(D)->SliceMbRange
	b	.L48	@
.L57:
	cmp	ip, r6	@ D.28302, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28301, old_slice_end_mbn,
	cmp	r6, ip	@ D.28301, D.28302
	beq	.L44	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28302,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L44	@,
	ldr	r2, [r0, #552]	@ D.28301, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28301,
	bgt	.L54	@,
	add	r10, r0, r2, lsl #2	@ D.28306, pRepairParam, D.28301,
	add	r2, r2, #1	@ D.28301, D.28301,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28301, pRepairParam_17(D)->ValidGroupNum
.L44:
	ldr	r2, [r1, #8]	@ D.28309, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28300, D.28309,
	cmp	r6, lr	@ D.28300, i
	beq	.L55	@,
.L50:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28309
	mov	r7, ip	@ old_slice_end_mbn, D.28302
	add	r3, r3, #4	@ ivtmp.35, ivtmp.35,
	bhi	.L56	@,
.L48:
	ldrh	ip, [r3, #12]	@ D.28302, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28302, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28302, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L57	@,
	ldr	r2, [r1, #8]	@ D.28309, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.35, ivtmp.35,
	cmp	lr, r2	@ i, D.28309
	bls	.L48	@,
.L56:
	mov	r3, #0	@ D.28299,
.L41:
	mov	r0, r3	@, D.28299
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L55:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28302, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28302, D.28301
	bge	.L50	@,
	ldr	r3, [r0, #552]	@ D.28301, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28301,
	bgt	.L58	@,
	add	r1, r0, r3, lsl #2	@ D.28306, pRepairParam, D.28301,
	add	r2, r3, #1	@ D.28301, D.28301,
	sub	r8, r8, #1	@ tmp206, D.28302,
	mov	r3, #0	@ D.28299,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28302, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28301, pRepairParam_17(D)->ValidGroupNum
	b	.L41	@
.L53:
	ldr	r1, .L59	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28299,
	mov	r0, r3	@, D.28299
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L54:
	movw	r2, #1107	@,
	ldr	r1, .L59+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28299,
	b	.L41	@
.L58:
	movw	r2, #1127	@,
	ldr	r1, .L59+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28299,
	b	.L41	@
.L60:
	.align	2
.L59:
	.word	.LC2
	.word	.LC1
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28320, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28320,
	bhi	.L75	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28320, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.43, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28320,
	add	r9, r5, r6	@ D.28321, total_mbn,
	uxth	r8, r5	@ D.28322, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28322, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28322, pDecReport_13(D)->SliceMbRange
	b	.L70	@
.L79:
	cmp	ip, r6	@ D.28322, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28321, old_slice_end_mbn,
	cmp	r6, ip	@ D.28321, D.28322
	beq	.L66	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28322,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L66	@,
	ldr	r2, [r0, #552]	@ D.28321, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28321,
	bgt	.L76	@,
	add	r10, r0, r2, lsl #2	@ D.28326, pRepairParam, D.28321,
	add	r2, r2, #1	@ D.28321, D.28321,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28321, pRepairParam_17(D)->ValidGroupNum
.L66:
	ldr	r2, [r1, #8]	@ D.28329, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28320, D.28329,
	cmp	r6, lr	@ D.28320, i
	beq	.L77	@,
.L72:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28329
	mov	r7, ip	@ old_slice_end_mbn, D.28322
	add	r3, r3, #4	@ ivtmp.43, ivtmp.43,
	bhi	.L78	@,
.L70:
	ldrh	ip, [r3, #12]	@ D.28322, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28322, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28322, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L79	@,
	ldr	r2, [r1, #8]	@ D.28329, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.43, ivtmp.43,
	cmp	lr, r2	@ i, D.28329
	bls	.L70	@,
.L78:
	mov	r3, #0	@ D.28319,
.L63:
	mov	r0, r3	@, D.28319
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L77:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28322, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28322, D.28321
	bge	.L72	@,
	ldr	r3, [r0, #552]	@ D.28321, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28321,
	bgt	.L80	@,
	add	r1, r0, r3, lsl #2	@ D.28326, pRepairParam, D.28321,
	add	r2, r3, #1	@ D.28321, D.28321,
	sub	r8, r8, #1	@ tmp206, D.28322,
	mov	r3, #0	@ D.28319,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28322, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28321, pRepairParam_17(D)->ValidGroupNum
	b	.L63	@
.L75:
	ldr	r1, .L81	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28319,
	mov	r0, r3	@, D.28319
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L76:
	movw	r2, #1192	@,
	ldr	r1, .L81+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28319,
	b	.L63	@
.L80:
	movw	r2, #1212	@,
	ldr	r1, .L81+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28319,
	b	.L63	@
.L82:
	.align	2
.L81:
	.word	.LC2
	.word	.LC1
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28339, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28339,
	bhi	.L97	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28339, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.51, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28339,
	add	r9, r5, r6	@ D.28340, total_mbn,
	uxth	r8, r5	@ D.28341, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28341, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28341, pDecReport_13(D)->SliceMbRange
	b	.L92	@
.L101:
	cmp	ip, r6	@ D.28341, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28340, old_slice_end_mbn,
	cmp	r6, ip	@ D.28340, D.28341
	beq	.L88	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28341,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L88	@,
	ldr	r2, [r0, #552]	@ D.28340, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28340,
	bgt	.L98	@,
	add	r10, r0, r2, lsl #2	@ D.28345, pRepairParam, D.28340,
	add	r2, r2, #1	@ D.28340, D.28340,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28340, pRepairParam_17(D)->ValidGroupNum
.L88:
	ldr	r2, [r1, #8]	@ D.28348, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28339, D.28348,
	cmp	r6, lr	@ D.28339, i
	beq	.L99	@,
.L94:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28348
	mov	r7, ip	@ old_slice_end_mbn, D.28341
	add	r3, r3, #4	@ ivtmp.51, ivtmp.51,
	bhi	.L100	@,
.L92:
	ldrh	ip, [r3, #12]	@ D.28341, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28341, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28341, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L101	@,
	ldr	r2, [r1, #8]	@ D.28348, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.51, ivtmp.51,
	cmp	lr, r2	@ i, D.28348
	bls	.L92	@,
.L100:
	mov	r3, #0	@ D.28338,
.L85:
	mov	r0, r3	@, D.28338
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L99:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28341, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28341, D.28340
	bge	.L94	@,
	ldr	r3, [r0, #552]	@ D.28340, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28340,
	bgt	.L102	@,
	add	r1, r0, r3, lsl #2	@ D.28345, pRepairParam, D.28340,
	add	r2, r3, #1	@ D.28340, D.28340,
	sub	r8, r8, #1	@ tmp206, D.28341,
	mov	r3, #0	@ D.28338,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28341, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28340, pRepairParam_17(D)->ValidGroupNum
	b	.L85	@
.L97:
	ldr	r1, .L103	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28338,
	mov	r0, r3	@, D.28338
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L98:
	movw	r2, #1276	@,
	ldr	r1, .L103+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28338,
	b	.L85	@
.L102:
	mov	r2, #1296	@,
	ldr	r1, .L103+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28338,
	b	.L85	@
.L104:
	.align	2
.L103:
	.word	.LC2
	.word	.LC1
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r2, [r1, #8]	@ D.28359, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28359, D.28359,
	cmp	r3, #127	@ D.28359,
	bhi	.L117	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28359, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28359,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.59, pDecReport
	add	r5, r4, r7	@ D.28360, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28360, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28361, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28361, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28361, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28360, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28360, %sfp
	b	.L112	@
.L120:
	cmp	r2, r7	@ D.28361, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28360, old_slice_end_mbn,
	cmp	r2, r7	@ D.28361, D.28360
	ble	.L110	@,
	ldr	r7, [r8, #552]	@ D.28360, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.28363, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28363, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28363, D.28361
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28365, pRepairParam, D.28360,
	add	r7, r7, #1	@ D.28360, D.28360,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.28360, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L110	@,
	ldr	r5, [sp, #8]	@ D.28360, %sfp
	cmp	r2, r5	@ D.28361, D.28360
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L110:
	ldr	r5, [r1, #8]	@ D.28367, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28359, D.28367,
	cmp	r6, ip	@ D.28359, i
	beq	.L118	@,
.L114:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28367
	mov	r6, r2	@ old_slice_end_mbn, D.28361
	add	r3, r3, #4	@ ivtmp.59, ivtmp.59,
	bhi	.L119	@,
.L112:
	ldrh	r2, [r3, #12]	@ D.28361, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.28361, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28361, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L120	@,
	ldr	r5, [r1, #8]	@ D.28367, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.59, ivtmp.59,
	cmp	ip, r5	@ i, D.28367
	bls	.L112	@,
.L119:
	mov	r3, #0	@ D.28358,
.L107:
	mov	r0, r3	@, D.28358
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L118:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28360, %sfp
	ldrh	r6, [r6, #14]	@ D.28361, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28361, D.28360
	bge	.L114	@,
	ldr	r2, [r0, #552]	@ D.28360, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28361,
	mov	r3, #0	@ D.28358,
	add	r1, r2, #1	@ D.28360, D.28360,
	add	r2, r0, r2, lsl #2	@ D.28365, pRepairParam, D.28360,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28361, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.28360, pRepairParam_23(D)->ValidGroupNum
	b	.L107	@
.L117:
	ldr	r1, .L121	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28358,
	mov	r0, r3	@, D.28358
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L122:
	.align	2
.L121:
	.word	.LC0
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r2, [r1, #8]	@ D.28379, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28379, D.28379,
	cmp	r3, #3	@ D.28379,
	bhi	.L135	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28379, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28379,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.67, pDecReport
	add	r5, r4, r7	@ D.28380, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28380, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28381, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28381, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28381, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28380, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28380, %sfp
	b	.L130	@
.L138:
	cmp	r2, r7	@ D.28381, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28380, old_slice_end_mbn,
	cmp	r2, r7	@ D.28381, D.28380
	ble	.L128	@,
	ldr	r7, [r8, #552]	@ D.28380, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.28383, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28383, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28383, D.28381
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28385, pRepairParam, D.28380,
	add	r7, r7, #1	@ D.28380, D.28380,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.28380, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L128	@,
	ldr	r5, [sp, #8]	@ D.28380, %sfp
	cmp	r2, r5	@ D.28381, D.28380
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L128:
	ldr	r5, [r1, #8]	@ D.28387, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28379, D.28387,
	cmp	r6, ip	@ D.28379, i
	beq	.L136	@,
.L132:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28387
	mov	r6, r2	@ old_slice_end_mbn, D.28381
	add	r3, r3, #4	@ ivtmp.67, ivtmp.67,
	bhi	.L137	@,
.L130:
	ldrh	r2, [r3, #12]	@ D.28381, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.28381, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28381, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L138	@,
	ldr	r5, [r1, #8]	@ D.28387, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.67, ivtmp.67,
	cmp	ip, r5	@ i, D.28387
	bls	.L130	@,
.L137:
	mov	r3, #0	@ D.28378,
.L125:
	mov	r0, r3	@, D.28378
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L136:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28380, %sfp
	ldrh	r6, [r6, #14]	@ D.28381, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28381, D.28380
	bge	.L132	@,
	ldr	r2, [r0, #552]	@ D.28380, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28381,
	mov	r3, #0	@ D.28378,
	add	r1, r2, #1	@ D.28380, D.28380,
	add	r2, r0, r2, lsl #2	@ D.28385, pRepairParam, D.28380,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28381, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.28380, pRepairParam_23(D)->ValidGroupNum
	b	.L125	@
.L135:
	ldr	r1, .L139	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28378,
	mov	r0, r3	@, D.28378
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L140:
	.align	2
.L139:
	.word	.LC0
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r8, [r0, #8]	@ n, pDecReport_11(D)->DecSliceNum
	cmp	r8, #1	@ n,
	bls	.L154	@,
	mov	r7, #1	@ i,
.L146:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.28407, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.75, pDecReport
	b	.L147	@
.L145:
	ldrh	r1, [r3, #12]	@ D.28405, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.28405, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.28405, D.28405
	bls	.L144	@,
	ldrh	r6, [r3, #14]	@ D.28405, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.28405, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.28405, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.28405, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L144:
	add	r3, r3, #4	@ ivtmp.75, ivtmp.75,
.L147:
	cmp	r2, lr	@ j, D.28407
	add	r2, r2, #1	@ j, j,
	bne	.L145	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L146	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L154:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1	@ pDecReport, pDecReport
	ldr	r6, [r1, #8]	@ D.28442, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.28442, D.28442,
	cmp	r1, #127	@ D.28442,
	bhi	.L193	@,
	ldr	r7, [r0, #24]	@ D.28443, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.28443
	uxtheq	r7, r5	@ D.28438, total_mbn
	bne	.L194	@,
.L159:
	mov	lr, #0	@ tmp423,
	str	lr, [r10, #552]	@ tmp423, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp423, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.28442, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.28443, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.91, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp426, pDecReport, D.28442,
	strh	r7, [r0, #14]	@ movhi	@ D.28438, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.28438, pDecReport_26(D)->SliceMbRange
	b	.L176	@
.L198:
	cmp	r1, r6	@ D.28438, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.28443, old_slice_end_mbn,
	cmp	r1, r3	@ D.28438, D.28443
	ble	.L171	@,
	ldr	r3, [r10, #552]	@ D.28443, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.28443,
	bgt	.L195	@,
	add	r8, r8, r8, lsr #31	@ tmp449, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.28450, pRepairParam, D.28443,
	sub	r6, r6, #100	@ tmp477, old_slice_end_mbn,
	add	r3, r3, #1	@ D.28443, D.28443,
	sxth	r4, r8	@ D.28443, tmp449
	strh	r8, [ip, #40]	@ movhi	@ tmp449, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	cmp	r6, r4	@ tmp477, D.28443
	sub	r4, r1, #1	@ tmp450, D.28438,
	strgth	r6, [ip, #40]	@ movhi	@ tmp477, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp450, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 42B]
	str	r3, [r10, #552]	@ D.28443, pRepairParam_30(D)->ValidGroupNum
.L171:
	ldr	r3, [fp, #8]	@ D.28444, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.28442, D.28444,
	cmp	ip, lr	@ D.28442, i
	beq	.L196	@,
.L183:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.28444, i
	mov	r8, r1	@ old_slice_end_mbn, D.28438
	add	r2, r2, #4	@ ivtmp.91, ivtmp.91,
	bcc	.L197	@,
.L176:
	ldrh	r1, [r2, #12]	@ D.28438, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.28438, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp435,
	movle	r3, #0	@ tmp435,
	cmp	r1, r0	@ D.28438, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp441, tmp435
	cmp	r3, #0	@ tmp441,
	beq	.L198	@,
	ldr	r3, [fp, #8]	@ D.28444, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.91, ivtmp.91,
	cmp	r3, lr	@ D.28444, i
	bcs	.L176	@,
.L197:
	mov	r0, #0	@ D.28440,
.L186:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L196:
	add	ip, fp, lr, lsl #2	@ tmp457, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.28438, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.28438, D.28443
	bge	.L183	@,
	ldr	r3, [r10, #552]	@ D.28443, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.28443,
	bgt	.L199	@,
	add	r2, r10, r3, lsl #2	@ D.28450, pRepairParam, D.28443,
	sub	r7, r7, #1	@ tmp462, D.28438,
	add	r3, r3, #1	@ D.28443, D.28443,
	mov	r0, #0	@ D.28440,
	strh	r7, [r2, #42]	@ movhi	@ tmp462, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28438, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 40B]
	str	r3, [r10, #552]	@ D.28443, pRepairParam_30(D)->ValidGroupNum
	b	.L186	@
.L194:
	cmp	r6, #0	@ D.28442,
	mov	r7, r7, asl #1	@ D.28443, D.28443,
	beq	.L162	@,
	add	r3, sp, #24	@ tmp534,,
	mov	r6, r6, asl #2	@ D.28436, D.28442,
	add	r4, fp, r6	@ D.28436, pDecReport, D.28436
	mov	r2, fp	@ ivtmp.109, pDecReport
	mov	r1, r3	@ ivtmp.110, tmp534
	str	r3, [sp, #4]	@ tmp534, %sfp
.L161:
	ldrh	r0, [r2, #12]	@ MEM[base: _47, offset: 12B], MEM[base: _47, offset: 12B]
	add	r2, r2, #4	@ ivtmp.109, ivtmp.109,
	ldrh	r3, [r2, #10]	@ MEM[base: _47, offset: 14B], MEM[base: _47, offset: 14B]
	cmp	r2, r4	@ ivtmp.109, D.28436
	add	r1, r1, #4	@ ivtmp.110, ivtmp.110,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _47, offset: 12B], MEM[base: _23, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _47, offset: 14B], MEM[base: _23, offset: 2B]
	bne	.L161	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.28443,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp288, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.28438, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.28438, SliceMbRange_Tmp
	uxth	r8, r8	@ D.28439, tmp288
	strh	r8, [sp, #24]	@ movhi	@ D.28439, SliceMbRange_Tmp
	beq	.L181	@,
	sub	r3, r7, #2	@ D.28442, D.28443,
	sub	r6, r6, #4	@ D.28445, D.28436,
	add	r2, sp, #24	@ tmp533,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.28436, tmp533, D.28445
	mov	r5, r3	@ D.28442, D.28442
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.28436, %sfp
	uxth	r2, r7	@ D.28438, D.28443
	str	r2, [sp, #16]	@ D.28438, %sfp
.L177:
	mov	r1, r7	@, D.28443
	mov	r0, r8	@, D.28439
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.28438
	mov	r4, r1	@ tmp307,
	cmp	r4, #1	@ tmp307,
	mov	r1, r7	@, D.28443
	bls	.L163	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.28442, tmp312
	bls	.L164	@,
	str	r1, [sp, #12]	@ tmp312, %sfp
	mov	r0, r8	@, D.28439
	mov	r1, r7	@, D.28443
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp307,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.28443
	mov	r8, r0	@ tmp316,
	mov	r0, r9	@, D.28438
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp312, %sfp
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp312,
	cmp	r0, r8	@ tmp319, tmp316
	mov	r3, r0	@ tmp319,
	beq	.L165	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.28437, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp321, tmp316, tmp515
	uxth	r1, r1	@ D.28438, tmp321
	add	r4, r1, r4	@ tmp323, D.28438, mbsurplus0
	uxth	ip, r4	@ D.28438, tmp323
	strh	ip, [lr, #12]	@ movhi	@ D.28438, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp330, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp332, D.28438, tmp330
	strh	r1, [lr, #14]	@ movhi	@ tmp332, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp339, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.28438, mbsurplus1
	smulbb	r3, r3, r1	@ tmp337, tmp319, tmp516
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp335, D.28438, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp335, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 16B]
	uxth	r3, r3	@ D.28438, tmp337
	add	r0, r2, r3	@ tmp341, D.28438, D.28438
	strh	r0, [r9, #14]	@ movhi	@ tmp341, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp346, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp344, D.28438, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.28438, tmp344
	strh	r3, [lr, #20]	@ movhi	@ D.28438, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 20B]
	add	r2, r3, r2	@ tmp348, D.28438, D.28438
	strh	r2, [r1, #14]	@ movhi	@ tmp348, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
.L167:
	ldr	r3, [sp, #4]	@ ivtmp.102, %sfp
	ldr	r2, [sp, #8]	@ D.28436, %sfp
	cmp	r3, r2	@ ivtmp.102, D.28436
	beq	.L200	@,
	ldr	r3, [sp, #4]	@ ivtmp.102, %sfp
	add	r3, r3, #4	@ ivtmp.102, ivtmp.102,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp467, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp467, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.28438, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.28438, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.102, %sfp
	b	.L177	@
.L164:
	mov	r1, r7	@, D.28443
	mov	r0, r8	@, D.28439
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.28437, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp373,, D.28443
	uxth	r0, r0	@ D.28438, tmp373
	add	r4, r0, r4, lsr #1	@ tmp376, D.28438, tmp307,
	uxth	r4, r4	@ D.28438, tmp376
	strh	r4, [r2, #12]	@ movhi	@ D.28438, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp383, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp385, D.28438, tmp383
	strh	r0, [r2, #14]	@ movhi	@ tmp385, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp390, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp388, D.28438, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp388, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.28438, pDecReport_26(D)->SliceMbRange
	bls	.L167	@,
.L191:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp471,
	str	r1, [fp, #8]	@ tmp471, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.28438, total_mbn
	sub	r2, r7, #1	@ tmp474, D.28438,
	strh	r2, [fp, #14]	@ movhi	@ tmp474, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp473,
	strh	r2, [fp, #12]	@ movhi	@ tmp473, pDecReport_26(D)->SliceMbRange
.L179:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L159	@
.L163:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.28442, tmp396
	bls	.L168	@,
	add	r4, fp, r6, lsl #2	@ D.28437, pDecReport, j,
	str	r1, [sp, #12]	@ tmp396, %sfp
	mov	r0, r9	@, D.28438
	mov	r1, r7	@, D.28443
	strh	r8, [r4, #12]	@ movhi	@ D.28439, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ tmp396, %sfp
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	ubfx	r1, r3, #1, #16	@ D.28438, tmp396,,
	smulbb	r0, r0, r7	@ tmp404,, D.28443
	uxth	r0, r0	@ D.28438, tmp404
	add	r3, r1, r0	@ tmp409, D.28438, D.28438
	strh	r3, [r4, #14]	@ movhi	@ tmp409, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp414, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp412, D.28438, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.28438, tmp412
	strh	r3, [r4, #16]	@ movhi	@ D.28438, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp416, D.28438, D.28438
	strh	r3, [ip, #14]	@ movhi	@ tmp416, pDecReport_26(D)->SliceMbRange
	bls	.L167	@,
	b	.L191	@
.L168:
	add	r2, fp, r6, lsl #2	@ tmp419, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.28439, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.28438, pDecReport_26(D)->SliceMbRange
	bls	.L167	@,
	b	.L191	@
.L165:
	smulbb	r3, r0, r7	@ tmp350, tmp319, D.28443
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.28437, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.28438, tmp350
	add	r4, r3, r4	@ tmp352, D.28438, mbsurplus0
	add	r2, r3, r2	@ tmp355, D.28438, mbsurplus1
	uxth	r4, r4	@ D.28438, tmp352
	uxth	r2, r2	@ D.28438, tmp355
	strh	r4, [lr, #12]	@ movhi	@ D.28438, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.28438, pDecReport_26(D)->SliceMbRange
	bhi	.L191	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp363, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp361, D.28438, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp361, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp367, D.28438, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp367, pDecReport_26(D)->SliceMbRange
	bls	.L167	@,
	b	.L191	@
.L181:
	mov	r6, r7	@ j, D.28443
.L162:
	uxth	r7, r5	@ D.28438, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L179	@
.L193:
	mov	r2, r6	@, D.28442
	ldr	r1, .L201	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.28440,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L200:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L162	@
.L195:
	mov	r2, #904	@,
	ldr	r1, .L201+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.28440,
	b	.L186	@
.L199:
	movw	r2, #933	@,
	ldr	r1, .L201+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.28440,
	b	.L186	@
.L202:
	.align	2
.L201:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #2	@ VidStd,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp259,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_18(D)->VidStd
	str	r3, [r1, #552]	@ tmp259, pRepairParam_18(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp259, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_18(D) + 572B].ValidGroupNum
	beq	.L205	@,
	cmp	r0, #3	@ VidStd,
	beq	.L206	@,
	cmp	r0, r3	@ VidStd,
	beq	.L260	@,
	mov	r0, r3	@, tmp259
	ldr	r2, .L263	@,
	mov	r3, #648	@,
	ldr	r1, .L263+4	@,
	bl	dprint_vfmw	@
.L226:
	ldr	r2, [r4, #552]	@ pRepairParam_18(D)->ValidGroupNum, pRepairParam_18(D)->ValidGroupNum
	mov	r8, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r6, [r4, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_18(D)->ValidGroupNum,
	mul	r6, r6, r3	@ total_mbs, pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageWidth
	ble	.L230	@,
	mov	r5, r4	@ ivtmp.125, pRepairParam
	mov	r9, r8	@ i, err_mbs
.L231:
	ldrsh	r3, [r5, #40]	@, MEM[base: _177, offset: 40B]
	mov	r0, #22	@,
	ldrsh	r2, [r5, #42]	@, MEM[base: _177, offset: 42B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, .L263+8	@,
	add	r5, r5, #4	@ ivtmp.125, ivtmp.125,
	bl	dprint_vfmw	@
	ldrsh	r3, [r5, #38]	@ D.28488, MEM[base: _177, offset: 42B]
	ldrsh	r2, [r5, #36]	@ D.28488, MEM[base: _177, offset: 40B]
	ldr	r1, [r4, #552]	@ pRepairParam_18(D)->ValidGroupNum, pRepairParam_18(D)->ValidGroupNum
	rsb	r3, r2, r3	@ D.28488, D.28488, D.28488
	cmp	r1, r9	@ pRepairParam_18(D)->ValidGroupNum, i
	add	r3, r3, #1	@ D.28488, D.28488,
	add	r8, r8, r3	@ err_mbs, err_mbs, D.28488
	bgt	.L231	@,
.L230:
	ldr	r1, [r4, #1124]	@ D.28488, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_18(D) + 572B].ValidGroupNum
	cmp	r1, #0	@ D.28488,
	ble	.L232	@,
	add	r0, r4, #612	@ ivtmp.117, pRepairParam,
	mov	r3, #0	@ i,
	add	r0, r0, #2	@ ivtmp.117, ivtmp.117,
.L233:
	ldrsh	ip, [r0]	@ D.28488, MEM[base: _186, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r2, [r0, #-2]	@ D.28488, MEM[base: _186, offset: 4294967294B]
	cmp	r3, r1	@ i, D.28488
	add	r0, r0, #4	@ ivtmp.117, ivtmp.117,
	rsb	ip, r2, ip	@ D.28488, D.28488, D.28488
	add	ip, ip, #1	@ D.28488, D.28488,
	add	r8, r8, ip	@ err_mbs, err_mbs, D.28488
	bne	.L233	@,
.L232:
	cmp	r6, #0	@ total_mbs,
	moveq	r4, r6	@ err_ratio, total_mbs
	beq	.L234	@,
	mov	r0, #100	@ tmp345,
	mov	r1, r6	@, total_mbs
	mul	r0, r0, r8	@, tmp345, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio
.L234:
	mov	r3, r8	@, err_mbs
	mov	r2, r6	@, total_mbs
	mov	r0, #0	@ tmp349,
	ldr	r1, .L263+12	@,
	str	r0, [r7, #8]	@ tmp349, pDecReport_65(D)->DecSliceNum
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L260:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp263, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp265, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp265, pRepairParam_18(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr, pRepairParam_18(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, _31->declist[0][0].img_idc
	add	r3, r2, r1, lsl #2	@ tmp269, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp271, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	str	r3, [r4, #16]	@ tmp271, pRepairParam_18(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp272, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp274, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].PmvPhyAddr
	str	r3, [r4, #20]	@ tmp274, pRepairParam_18(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb
	str	r3, [r4, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb, pRepairParam_18(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb
	str	r3, [r4, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb, pRepairParam_18(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	clz	r3, r3	@ D.28493, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.28493, D.28493,
	str	r3, [r4, #32]	@ D.28493, pRepairParam_18(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc
	clz	r3, r3	@ D.28493, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.28493, D.28493,
	str	r3, [r4, #36]	@ D.28493, pRepairParam_18(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.28490, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ApcSize
	cmp	ip, #0	@ D.28490,
	beq	.L208	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId
	cmp	r3, r1	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId, ref_img_idc
	addne	r3, r2, #1312	@ ivtmp.141, pDecParam,
	addne	r3, r3, #8	@ ivtmp.141, ivtmp.141,
	bne	.L211	@,
	b	.L209	@
.L212:
	ldr	r2, [r3, #4]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r2, r1	@ MEM[base: _3, offset: 0B], ref_img_idc
	beq	.L209	@,
.L211:
	add	r0, r0, #1	@ i, i,
	cmp	r0, ip	@ i, D.28490
	bne	.L212	@,
.L208:
	ldr	r2, [r5, #32]	@ D.28490, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag
	cmp	r2, #0	@ D.28490,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	clzne	r2, r2	@ D.28490, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.28490, D.28490,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag,
	streq	r3, [r7, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag, pDecReport_65(D)->DecSliceNum
	bne	.L261	@,
.L215:
	ldr	r0, [r4, #4]	@ D.28488, pRepairParam_18(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_18(D)->RefImageAddr, pRepairParam_18(D)->RefImageAddr
	cmp	r0, r3	@ D.28488, pRepairParam_18(D)->RefImageAddr
	beq	.L262	@,
.L216:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.28492, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	cmp	r3, #0	@ D.28492,
	beq	.L225	@,
	cmp	r3, #1	@ D.28492,
	beq	.L258	@,
	cmp	r3, #2	@ D.28492,
	beq	.L258	@,
	cmp	r3, #3	@ D.28492,
	bne	.L222	@,
.L225:
	mov	r3, #0	@ tmp295,
	str	r3, [r4, #564]	@ tmp295, pRepairParam_18(D)->Pic_type
.L222:
	ldr	r3, [r5, #1384]	@ D.28488, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].Compress_en
	str	r3, [r4, #560]	@ D.28488, pRepairParam_18(D)->Compress_en
	b	.L226	@
.L206:
	ldr	r2, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr
	str	r2, [r1, #4]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, pRepairParam_18(D)->ImageAddr
	ldr	r2, [r5, #224]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr
	str	r2, [r1, #8]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, pRepairParam_18(D)->Image2DAddr
	ldr	r2, [r5, #196]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr
	str	r2, [r1, #16]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr, pRepairParam_18(D)->RefImageAddr
	ldr	r2, [r5, #240]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr
	str	r2, [r1, #20]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr, pRepairParam_18(D)->CurrPmvAddr
	ldrh	r2, [r5, #152]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb
	str	r2, [r1, #24]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, pRepairParam_18(D)->ImageWidth
	ldrh	r2, [r5, #148]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb
	str	r2, [r1, #28]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, pRepairParam_18(D)->ImageHeight
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure
	str	r3, [r1, #36]	@ tmp259, pRepairParam_18(D)->ImageCSP
	sub	r2, r2, #3	@ D.28493, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure,
	clz	r2, r2	@ D.28493, D.28493
	mov	r2, r2, lsr #5	@ D.28493, D.28493,
	str	r2, [r1, #32]	@ D.28493, pRepairParam_18(D)->IsFrame
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ D.28492, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure
	cmp	r2, #1	@ D.28492,
	beq	.L259	@,
	cmp	r2, #2	@ D.28492,
	beq	.L259	@,
	cmp	r2, #3	@ D.28492,
	streq	r3, [r1, #564]	@ tmp259, pRepairParam_18(D)->Pic_type
.L228:
	add	r5, r5, #45056	@ tmp312, pDecParam,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.28488, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].Compress_en
	str	r3, [r4, #560]	@ D.28488, pRepairParam_18(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L226	@
.L205:
	ldr	lr, [r2, #212]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr
	add	r2, r2, #12288	@ tmp315, pDecParam,
	mov	ip, #1	@ tmp321,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	lr, [r4, #4]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, pRepairParam_18(D)->ImageAddr
	ldr	lr, [r2, #2300]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr
	str	lr, [r4, #8]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, pRepairParam_18(D)->Image2DAddr
	ldr	lr, [r5, #216]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPicPhyAddr
	str	lr, [r4, #16]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPicPhyAddr, pRepairParam_18(D)->RefImageAddr
	ldr	lr, [r5, #224]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPmvPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPmvPhyAddr
	str	lr, [r4, #20]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].CurPmvPhyAddr, pRepairParam_18(D)->CurrPmvAddr
	ldrh	lr, [r5, #164]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb
	str	lr, [r4, #24]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, pRepairParam_18(D)->ImageWidth
	ldrh	lr, [r5, #166]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb
	str	r3, [r4, #36]	@ tmp259, pRepairParam_18(D)->ImageCSP
	str	r3, [r4, #564]	@ tmp259, pRepairParam_18(D)->Pic_type
	str	lr, [r4, #28]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, pRepairParam_18(D)->ImageHeight
	str	ip, [r4, #32]	@ tmp321, pRepairParam_18(D)->IsFrame
	ldr	r3, [r2, #2372]	@ D.28488, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_23(D)].Compress_en
	str	r3, [r4, #560]	@ D.28488, pRepairParam_18(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L226	@
.L261:
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L215	@
.L259:
	str	r2, [r4, #564]	@ D.28492, pRepairParam_18(D)->Pic_type
	b	.L228	@
.L262:
	ldr	ip, [r5, #820]	@ D.28490, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgSlotNum
	cmp	ip, #0	@ D.28490,
	beq	.L216	@,
	ldr	r2, [r5, #308]	@ D.28490, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	cmp	r0, r2	@ D.28488, D.28490
	addeq	r1, r5, #308	@ ivtmp.130, pDecParam,
	moveq	r3, #0	@ i,
	beq	.L219	@,
	b	.L217	@
.L220:
	ldr	r2, [r1, #4]!	@ D.28490, MEM[base: _16, offset: 0B]
	cmp	r2, r0	@ D.28490, D.28488
	bne	.L217	@,
.L219:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.28490
	bne	.L220	@,
	b	.L216	@
.L209:
	add	r0, r0, #312	@ tmp286, i,
	add	r0, r0, #2	@ tmp286, tmp286,
	ldr	r3, [r5, r0, asl #2]	@ tmp287, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicType
	str	r3, [r4, #556]	@ tmp287, pRepairParam_18(D)->rpr_ref_pic_type
	b	.L208	@
.L258:
	str	r3, [r4, #564]	@ D.28492, pRepairParam_18(D)->Pic_type
	b	.L222	@
.L217:
	str	r2, [r4, #16]	@ D.28490, pRepairParam_18(D)->RefImageAddr
	b	.L216	@
.L264:
	.align	2
.L263:
	.word	.LANCHOR0
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, r2, asl #9	@ tmp123, VdhId,
	ldr	r6, .L269	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L269+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L269+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.28503, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.28503,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L266	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.28503
.L267:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	ldr	r1, .L269+12	@,
	mov	r4, r0	@ err_ratio,
	mov	r2, r0	@, err_ratio
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L266:
	mov	r0, r6	@, D.28503
	mov	r2, #54	@,
	ldr	r1, .L269+16	@,
	bl	dprint_vfmw	@
	b	.L267	@
.L270:
	.align	2
.L269:
	.word	g_vdm_hal_fun_ptr
	.word	g_RepairParam
	.word	g_DecReport
	.word	.LC7
	.word	.LC6
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	ip, r2, asl #9	@ tmp120, VdhId,
	ldr	r5, .L273	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L273+4	@ tmp141,
	mov	lr, r2	@ VdhId, VdhId
	add	r4, r5, ip	@ tmp122, tmp117, tmp121
	movw	r8, #1144	@ tmp139,
	mov	r7, #1	@ tmp123,
	mov	r6, #0	@ tmp131,
	mov	r2, r1	@, pDecParam
	str	r7, [r5, ip]	@ tmp123, MEM[(struct VDMHAL_DEC_REPORT_S *)&g_DecReport][VdhId_1(D)].RetType
	mla	r1, r8, lr, r3	@, tmp139, VdhId, tmp141
	str	r6, [r4, #8]	@ tmp131, MEM[(struct VDMHAL_DEC_REPORT_S *)&g_DecReport][VdhId_1(D)].DecSliceNum
	mov	r3, r4	@, tmp122
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	PostPro_GetRepairParam	@
.L274:
	.align	2
.L273:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.27437, %object
	.size	__func__.27437, 23
__func__.27437:
	.ascii	"PostPro_GetRepairParam\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"DecSliceNum(=%d) out of range!\012\000"
.LC1:
	.ascii	"line:%d! pRepairParam->ValidGroupNum > (MAX_UP_MSG_"
	.ascii	"SLICE_NUM - 1)\012\000"
	.space	1
.LC2:
	.ascii	"DecSliceNum out of range!\012\000"
	.space	1
.LC3:
	.ascii	"%s %d VidStd Err!\012\000"
	.space	1
.LC4:
	.ascii	"pRepairParam[0].MbGroup[i].EndMbn=%d,pRepairParam[0"
	.ascii	"].MbGroup[i].StartMbn=%d\012\000"
	.space	3
.LC5:
	.ascii	"total_mbs=%d,err_mbs=%d\012\000"
	.space	3
.LC6:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC7:
	.ascii	"err_ratio=%d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
