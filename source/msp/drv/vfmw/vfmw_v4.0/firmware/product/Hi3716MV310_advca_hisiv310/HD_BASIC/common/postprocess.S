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
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(postprocess)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -fno-ipa-sra
@ -funwind-tables -fomit-frame-pointer -fno-var-tracking-assignments
@ -fno-strict-overflow -fconserve-stack -fno-pic -fstack-protector
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ --param allow-store-data-races=0 --param ssp-buffer-size=4
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference
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
@ -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mlra -mpic-data-is-text-relative
@ -msched-prolog -mvectorize-with-neon-quad -mword-relocations

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
	ldr	lr, [r3, #2300]	@ D.32802, pMp4DecParam_5(D)->DispFramePhyAddr
	ldr	r9, [r3, #2312]	@ pMp4DecParam_5(D)->VahbStride, pMp4DecParam_5(D)->VahbStride
	mov	r2, #0	@ tmp185,
	ldr	r8, [r3, #2372]	@ pMp4DecParam_5(D)->Compress_en, pMp4DecParam_5(D)->Compress_en
	ldr	r4, .L7+4	@ tmp227,
	add	r7, ip, #32	@ tmp178, tmp136,
	add	r6, ip, #560	@ tmp211, tmp136,
	str	r9, [ip, #12]	@ pMp4DecParam_5(D)->VahbStride, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].VahbStride
	str	lr, [ip, #4]	@ D.32802, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	lr, [ip, #8]	@ D.32802, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #216]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, pMp4DecParam_5(D)->FwdRefPicPhyAddr
	ldr	r5, [r4, #84]	@ D.32806, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	mov	r4, #1	@ tmp179,
	str	r3, [ip, #16]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	cmp	r5, r2	@ D.32806,
	ldr	r3, [r0, #224]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, pMp4DecParam_5(D)->CurPmvPhyAddr
	str	r3, [ip, #20]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	lr, [r0, #164]	@ D.32803, pMp4DecParam_5(D)->PicWidthInMb
	str	lr, [ip, #24]	@ D.32803, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #166]	@ D.32803, pMp4DecParam_5(D)->PicHeightInMb
	str	r8, [ip, #560]	@ pMp4DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	str	r2, [ip, #36]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	smulbb	lr, r3, lr	@ tmp205, D.32803, D.32803
	str	r3, [ip, #28]	@ D.32803, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
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
	blx	r5	@ D.32806
	adds	r0, r0, #0	@ D.32800,,
	movne	r0, #1	@ D.32800,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L4:
	mov	r0, r4	@ D.32800, tmp179
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
	ldr	r3, [r1, #8]	@ pDecReport_15(D)->DecSliceNum, pDecReport_15(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32818, pDecReport_15(D)->DecSliceNum,
	cmp	r3, #127	@ D.32818,
	bhi	.L18	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.32818, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.32818,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.32818,
	uxth	r8, r5	@ D.32820, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.32820, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32820, pDecReport_15(D)->SliceMbRange
	bne	.L29	@,
.L12:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.26, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.32819, total_mbn, tmp6
	b	.L20	@
.L32:
	cmp	r2, lr	@ D.32820, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.32820, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L13	@,
	cmp	r2, r7	@ D.32820, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.32819, old_slice_end_mbn,
	cmp	r4, r2	@ D.32819, D.32820
	beq	.L17	@,
	add	r6, r6, r6, lsr #31	@ tmp259, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp260, D.32820,
	cmp	r6, r10	@ tmp259, tmp260
	bge	.L17	@,
	ldr	r4, [r0, #552]	@ D.32819, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.32819,
	bgt	.L18	@,
	sub	r7, r7, #100	@ tmp261, old_slice_end_mbn,
	sxth	fp, r6	@ D.32819, tmp259
	cmp	r7, fp	@ tmp261, D.32819
	add	fp, r0, r4, lsl #2	@ D.32824, pRepairParam, D.32819,
	add	r4, r4, #1	@ D.32819, D.32819,
	strh	r6, [fp, #40]	@ movhi	@ tmp259, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp260, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	str	r4, [r0, #552]	@ D.32819, pRepairParam_19(D)->ValidGroupNum
.L17:
	ldr	r4, [r1, #8]	@ D.32827, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.32818, D.32827,
	cmp	r6, ip	@ D.32818, i
	beq	.L30	@,
.L22:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.32827
	mov	r6, r2	@ old_slice_end_mbn, D.32820
	add	r3, r3, #4	@ ivtmp.26, ivtmp.26,
	bhi	.L31	@,
.L20:
	ldrh	r2, [r3, #12]	@ D.32820, MEM[base: _110, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _110, offset: 14B]
	cmp	r2, r5	@ D.32820, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L32	@,
.L13:
	ldr	r4, [r1, #8]	@ D.32827, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.26, ivtmp.26,
	cmp	ip, r4	@ i, D.32827
	bls	.L20	@,
.L31:
	mov	r3, #0	@ D.32817,
.L27:
	mov	r0, r3	@, D.32817
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L30:
	add	r6, r1, ip, lsl #2	@ tmp252, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32820, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.32820, D.32819
	bge	.L22	@,
	ldr	r3, [r0, #552]	@ D.32819, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.32819,
	bgt	.L18	@,
	add	r1, r0, r3, lsl #2	@ D.32824, pRepairParam, D.32819,
	add	r2, r3, #1	@ D.32819, D.32819,
	sub	r8, r8, #1	@ tmp256, D.32820,
	mov	r3, #0	@ D.32817,
	strh	r8, [r1, #42]	@ movhi	@ tmp256, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32820, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 40B]
	str	r2, [r0, #552]	@ D.32819, pRepairParam_19(D)->ValidGroupNum
	b	.L27	@
.L29:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.32819, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.32819, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.32819, D.32819
	subge	r2, r8, #1	@ tmp221, D.32820,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L12	@
.L18:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32817,
	mov	r0, r3	@, D.32817
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	sub	r3, r3, #1	@ D.32837, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32837,
	bhi	.L39	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32837, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.35, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32837,
	add	r9, r5, r6	@ D.32838, total_mbn,
	uxth	r8, r5	@ D.32839, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32839, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32839, pDecReport_13(D)->SliceMbRange
	b	.L41	@
.L48:
	cmp	ip, r6	@ D.32839, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32838, old_slice_end_mbn,
	cmp	r6, ip	@ D.32838, D.32839
	beq	.L38	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32839,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L38	@,
	ldr	r2, [r0, #552]	@ D.32838, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32838,
	bgt	.L39	@,
	add	r10, r0, r2, lsl #2	@ D.32843, pRepairParam, D.32838,
	add	r2, r2, #1	@ D.32838, D.32838,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32838, pRepairParam_17(D)->ValidGroupNum
.L38:
	ldr	r2, [r1, #8]	@ D.32846, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32837, D.32846,
	cmp	r6, lr	@ D.32837, i
	beq	.L46	@,
.L43:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32846
	mov	r7, ip	@ old_slice_end_mbn, D.32839
	add	r3, r3, #4	@ ivtmp.35, ivtmp.35,
	bhi	.L47	@,
.L41:
	ldrh	ip, [r3, #12]	@ D.32839, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32839, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32839, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L48	@,
	ldr	r2, [r1, #8]	@ D.32846, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.35, ivtmp.35,
	cmp	lr, r2	@ i, D.32846
	bls	.L41	@,
.L47:
	mov	r3, #0	@ D.32836,
.L35:
	mov	r0, r3	@, D.32836
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L46:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32839, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32839, D.32838
	bge	.L43	@,
	ldr	r3, [r0, #552]	@ D.32838, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32838,
	bgt	.L39	@,
	add	r1, r0, r3, lsl #2	@ D.32843, pRepairParam, D.32838,
	add	r2, r3, #1	@ D.32838, D.32838,
	sub	r8, r8, #1	@ tmp203, D.32839,
	mov	r3, #0	@ D.32836,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32839, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32838, pRepairParam_17(D)->ValidGroupNum
	b	.L35	@
.L39:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32836,
	mov	r0, r3	@, D.32836
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	sub	r3, r3, #1	@ D.32856, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32856,
	bhi	.L55	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32856, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.43, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32856,
	add	r9, r5, r6	@ D.32857, total_mbn,
	uxth	r8, r5	@ D.32858, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32858, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32858, pDecReport_13(D)->SliceMbRange
	b	.L57	@
.L64:
	cmp	ip, r6	@ D.32858, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32857, old_slice_end_mbn,
	cmp	r6, ip	@ D.32857, D.32858
	beq	.L54	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32858,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L54	@,
	ldr	r2, [r0, #552]	@ D.32857, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32857,
	bgt	.L55	@,
	add	r10, r0, r2, lsl #2	@ D.32862, pRepairParam, D.32857,
	add	r2, r2, #1	@ D.32857, D.32857,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32857, pRepairParam_17(D)->ValidGroupNum
.L54:
	ldr	r2, [r1, #8]	@ D.32865, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32856, D.32865,
	cmp	r6, lr	@ D.32856, i
	beq	.L62	@,
.L59:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32865
	mov	r7, ip	@ old_slice_end_mbn, D.32858
	add	r3, r3, #4	@ ivtmp.43, ivtmp.43,
	bhi	.L63	@,
.L57:
	ldrh	ip, [r3, #12]	@ D.32858, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32858, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32858, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L64	@,
	ldr	r2, [r1, #8]	@ D.32865, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.43, ivtmp.43,
	cmp	lr, r2	@ i, D.32865
	bls	.L57	@,
.L63:
	mov	r3, #0	@ D.32855,
.L51:
	mov	r0, r3	@, D.32855
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L62:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32858, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32858, D.32857
	bge	.L59	@,
	ldr	r3, [r0, #552]	@ D.32857, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32857,
	bgt	.L55	@,
	add	r1, r0, r3, lsl #2	@ D.32862, pRepairParam, D.32857,
	add	r2, r3, #1	@ D.32857, D.32857,
	sub	r8, r8, #1	@ tmp203, D.32858,
	mov	r3, #0	@ D.32855,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32858, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32857, pRepairParam_17(D)->ValidGroupNum
	b	.L51	@
.L55:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32855,
	mov	r0, r3	@, D.32855
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	sub	r3, r3, #1	@ D.32875, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32875,
	bhi	.L71	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32875, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.51, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32875,
	add	r9, r5, r6	@ D.32876, total_mbn,
	uxth	r8, r5	@ D.32877, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32877, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32877, pDecReport_13(D)->SliceMbRange
	b	.L73	@
.L80:
	cmp	ip, r6	@ D.32877, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32876, old_slice_end_mbn,
	cmp	r6, ip	@ D.32876, D.32877
	beq	.L70	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32877,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L70	@,
	ldr	r2, [r0, #552]	@ D.32876, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32876,
	bgt	.L71	@,
	add	r10, r0, r2, lsl #2	@ D.32881, pRepairParam, D.32876,
	add	r2, r2, #1	@ D.32876, D.32876,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32876, pRepairParam_17(D)->ValidGroupNum
.L70:
	ldr	r2, [r1, #8]	@ D.32884, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32875, D.32884,
	cmp	r6, lr	@ D.32875, i
	beq	.L78	@,
.L75:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32884
	mov	r7, ip	@ old_slice_end_mbn, D.32877
	add	r3, r3, #4	@ ivtmp.51, ivtmp.51,
	bhi	.L79	@,
.L73:
	ldrh	ip, [r3, #12]	@ D.32877, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32877, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32877, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L80	@,
	ldr	r2, [r1, #8]	@ D.32884, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.51, ivtmp.51,
	cmp	lr, r2	@ i, D.32884
	bls	.L73	@,
.L79:
	mov	r3, #0	@ D.32874,
.L67:
	mov	r0, r3	@, D.32874
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L78:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32877, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32877, D.32876
	bge	.L75	@,
	ldr	r3, [r0, #552]	@ D.32876, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32876,
	bgt	.L71	@,
	add	r1, r0, r3, lsl #2	@ D.32881, pRepairParam, D.32876,
	add	r2, r3, #1	@ D.32876, D.32876,
	sub	r8, r8, #1	@ tmp203, D.32877,
	mov	r3, #0	@ D.32874,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32877, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32876, pRepairParam_17(D)->ValidGroupNum
	b	.L67	@
.L71:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32874,
	mov	r0, r3	@, D.32874
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32895, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #127	@ D.32895,
	bhi	.L93	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.32895, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.32895,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.59, pDecReport
	add	r5, r4, r7	@ D.32896, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.32896, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.32897, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.32897, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.32897, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.32896, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.32896, %sfp
	b	.L88	@
.L96:
	cmp	r2, r7	@ D.32897, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.32896, old_slice_end_mbn,
	cmp	r2, r7	@ D.32897, D.32896
	ble	.L86	@,
	ldr	r7, [r8, #552]	@ D.32896, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.32899, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.32899, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.32899, D.32897
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.32901, pRepairParam, D.32896,
	add	r7, r7, #1	@ D.32896, D.32896,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.32896, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L86	@,
	ldr	r5, [sp, #8]	@ D.32896, %sfp
	cmp	r2, r5	@ D.32897, D.32896
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L86:
	ldr	r5, [r1, #8]	@ D.32903, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.32895, D.32903,
	cmp	r6, ip	@ D.32895, i
	beq	.L94	@,
.L90:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.32903
	mov	r6, r2	@ old_slice_end_mbn, D.32897
	add	r3, r3, #4	@ ivtmp.59, ivtmp.59,
	bhi	.L95	@,
.L88:
	ldrh	r2, [r3, #12]	@ D.32897, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.32897, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.32897, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L96	@,
	ldr	r5, [r1, #8]	@ D.32903, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.59, ivtmp.59,
	cmp	ip, r5	@ i, D.32903
	bls	.L88	@,
.L95:
	mov	r3, #0	@ D.32894,
.L83:
	mov	r0, r3	@, D.32894
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L94:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.32896, %sfp
	ldrh	r6, [r6, #14]	@ D.32897, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.32897, D.32896
	bge	.L90	@,
	ldr	r2, [r0, #552]	@ D.32896, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.32897,
	mov	r3, #0	@ D.32894,
	add	r1, r2, #1	@ D.32896, D.32896,
	add	r2, r0, r2, lsl #2	@ D.32901, pRepairParam, D.32896,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32897, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.32896, pRepairParam_23(D)->ValidGroupNum
	b	.L83	@
.L93:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32894,
	mov	r0, r3	@, D.32894
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32915, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #3	@ D.32915,
	bhi	.L109	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.32915, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.32915,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.67, pDecReport
	add	r5, r4, r7	@ D.32916, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.32916, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.32917, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.32917, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.32917, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.32916, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.32916, %sfp
	b	.L104	@
.L112:
	cmp	r2, r7	@ D.32917, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.32916, old_slice_end_mbn,
	cmp	r2, r7	@ D.32917, D.32916
	ble	.L102	@,
	ldr	r7, [r8, #552]	@ D.32916, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.32919, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.32919, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.32919, D.32917
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.32921, pRepairParam, D.32916,
	add	r7, r7, #1	@ D.32916, D.32916,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.32916, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L102	@,
	ldr	r5, [sp, #8]	@ D.32916, %sfp
	cmp	r2, r5	@ D.32917, D.32916
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L102:
	ldr	r5, [r1, #8]	@ D.32923, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.32915, D.32923,
	cmp	r6, ip	@ D.32915, i
	beq	.L110	@,
.L106:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.32923
	mov	r6, r2	@ old_slice_end_mbn, D.32917
	add	r3, r3, #4	@ ivtmp.67, ivtmp.67,
	bhi	.L111	@,
.L104:
	ldrh	r2, [r3, #12]	@ D.32917, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.32917, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.32917, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L112	@,
	ldr	r5, [r1, #8]	@ D.32923, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.67, ivtmp.67,
	cmp	ip, r5	@ i, D.32923
	bls	.L104	@,
.L111:
	mov	r3, #0	@ D.32914,
.L99:
	mov	r0, r3	@, D.32914
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L110:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.32916, %sfp
	ldrh	r6, [r6, #14]	@ D.32917, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.32917, D.32916
	bge	.L106	@,
	ldr	r2, [r0, #552]	@ D.32916, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.32917,
	mov	r3, #0	@ D.32914,
	add	r1, r2, #1	@ D.32916, D.32916,
	add	r2, r0, r2, lsl #2	@ D.32921, pRepairParam, D.32916,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32917, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.32916, pRepairParam_23(D)->ValidGroupNum
	b	.L99	@
.L109:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32914,
	mov	r0, r3	@, D.32914
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	bls	.L126	@,
	mov	r7, #1	@ i,
.L118:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.32943, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.75, pDecReport
	b	.L119	@
.L117:
	ldrh	r1, [r3, #12]	@ D.32941, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.32941, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.32941, D.32941
	bls	.L116	@,
	ldrh	r6, [r3, #14]	@ D.32941, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.32941, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.32941, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.32941, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L116:
	add	r3, r3, #4	@ ivtmp.75, ivtmp.75,
.L119:
	cmp	r2, lr	@ j, D.32943
	add	r2, r2, #1	@ j, j,
	bne	.L117	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L126:
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
	ldr	r6, [r1, #8]	@ D.32978, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.32978, D.32978,
	cmp	r1, #127	@ D.32978,
	bhi	.L144	@,
	ldr	r7, [r0, #24]	@ D.32979, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.32979
	uxtheq	r7, r5	@ D.32974, total_mbn
	bne	.L164	@,
.L131:
	mov	lr, #0	@ tmp422,
	str	lr, [r10, #552]	@ tmp422, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp422, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.32978, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.32979, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.91, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp425, pDecReport, D.32978,
	strh	r7, [r0, #14]	@ movhi	@ D.32974, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.32974, pDecReport_26(D)->SliceMbRange
	b	.L147	@
.L167:
	cmp	r1, r6	@ D.32974, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.32979, old_slice_end_mbn,
	cmp	r1, r3	@ D.32974, D.32979
	ble	.L143	@,
	ldr	r3, [r10, #552]	@ D.32979, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.32979,
	bgt	.L144	@,
	add	r8, r8, r8, lsr #31	@ tmp447, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.32986, pRepairParam, D.32979,
	sub	r6, r6, #100	@ tmp472, old_slice_end_mbn,
	add	r3, r3, #1	@ D.32979, D.32979,
	sxth	r4, r8	@ D.32979, tmp447
	strh	r8, [ip, #40]	@ movhi	@ tmp447, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	cmp	r6, r4	@ tmp472, D.32979
	sub	r4, r1, #1	@ tmp448, D.32974,
	strgth	r6, [ip, #40]	@ movhi	@ tmp472, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp448, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 42B]
	str	r3, [r10, #552]	@ D.32979, pRepairParam_30(D)->ValidGroupNum
.L143:
	ldr	r3, [fp, #8]	@ D.32981, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.32978, D.32981,
	cmp	ip, lr	@ D.32978, i
	beq	.L165	@,
.L154:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.32981, i
	mov	r8, r1	@ old_slice_end_mbn, D.32974
	add	r2, r2, #4	@ ivtmp.91, ivtmp.91,
	bcc	.L166	@,
.L147:
	ldrh	r1, [r2, #12]	@ D.32974, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.32974, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp434,
	movle	r3, #0	@ tmp434,
	cmp	r1, r0	@ D.32974, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp440, tmp434
	cmp	r3, #0	@ tmp440,
	beq	.L167	@,
	ldr	r3, [fp, #8]	@ D.32981, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.91, ivtmp.91,
	cmp	r3, lr	@ D.32981, i
	bcs	.L147	@,
.L166:
	mov	r0, #0	@ D.32976,
.L157:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L165:
	add	ip, fp, lr, lsl #2	@ tmp455, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.32974, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.32974, D.32979
	bge	.L154	@,
	ldr	r3, [r10, #552]	@ D.32979, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.32979,
	bgt	.L144	@,
	add	r2, r10, r3, lsl #2	@ D.32986, pRepairParam, D.32979,
	sub	r7, r7, #1	@ tmp459, D.32974,
	add	r3, r3, #1	@ D.32979, D.32979,
	mov	r0, #0	@ D.32976,
	strh	r7, [r2, #42]	@ movhi	@ tmp459, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32974, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 40B]
	str	r3, [r10, #552]	@ D.32979, pRepairParam_30(D)->ValidGroupNum
	b	.L157	@
.L164:
	cmp	r6, #0	@ D.32978,
	mov	r7, r7, asl #1	@ D.32979, D.32979,
	beq	.L134	@,
	add	r3, sp, #24	@ tmp531,,
	mov	r6, r6, asl #2	@ D.32973, D.32978,
	add	r4, fp, r6	@ D.32973, pDecReport, D.32973
	mov	r2, fp	@ ivtmp.109, pDecReport
	mov	r1, r3	@ ivtmp.110, tmp531
	str	r3, [sp, #4]	@ tmp531, %sfp
.L133:
	ldrh	r0, [r2, #12]	@ MEM[base: _23, offset: 12B], MEM[base: _23, offset: 12B]
	add	r2, r2, #4	@ ivtmp.109, ivtmp.109,
	ldrh	r3, [r2, #10]	@ MEM[base: _23, offset: 14B], MEM[base: _23, offset: 14B]
	cmp	r2, r4	@ ivtmp.109, D.32973
	add	r1, r1, #4	@ ivtmp.110, ivtmp.110,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _23, offset: 12B], MEM[base: _16, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _23, offset: 14B], MEM[base: _16, offset: 2B]
	bne	.L133	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.32979,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp287, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.32974, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.32974, SliceMbRange_Tmp
	uxth	r8, r8	@ D.32975, tmp287
	strh	r8, [sp, #24]	@ movhi	@ D.32975, SliceMbRange_Tmp
	beq	.L152	@,
	sub	r3, r7, #2	@ D.32978, D.32979,
	sub	r6, r6, #4	@ D.32980, D.32973,
	add	r2, sp, #24	@ tmp530,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.32973, tmp530, D.32980
	mov	r5, r3	@ D.32978, D.32978
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.32973, %sfp
	uxth	r2, r7	@ D.32974, D.32979
	str	r2, [sp, #16]	@ D.32974, %sfp
.L148:
	mov	r1, r7	@, D.32979
	mov	r0, r8	@, D.32975
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.32974
	mov	r4, r1	@ tmp306,
	cmp	r4, #1	@ tmp306,
	mov	r1, r7	@, D.32979
	bls	.L135	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.32978, tmp311
	bls	.L136	@,
	str	r1, [sp, #12]	@ tmp311, %sfp
	mov	r0, r8	@, D.32975
	mov	r1, r7	@, D.32979
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp306,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.32979
	mov	r8, r0	@ tmp315,
	mov	r0, r9	@, D.32974
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp311, %sfp
	cmp	r0, r8	@ tmp318, tmp315
	mov	r3, r0	@ tmp318,
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp311,
	beq	.L137	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.32972, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp320, tmp315, tmp512
	uxth	r1, r1	@ D.32974, tmp320
	add	r4, r1, r4	@ tmp322, D.32974, mbsurplus0
	uxth	ip, r4	@ D.32974, tmp322
	strh	ip, [lr, #12]	@ movhi	@ D.32974, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp329, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp331, D.32974, tmp329
	strh	r1, [lr, #14]	@ movhi	@ tmp331, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp338, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.32974, mbsurplus1
	smulbb	r3, r3, r1	@ tmp336, tmp318, tmp513
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp334, D.32974, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp334, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 16B]
	uxth	r3, r3	@ D.32974, tmp336
	add	r0, r2, r3	@ tmp340, D.32974, D.32974
	strh	r0, [r9, #14]	@ movhi	@ tmp340, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp345, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp343, D.32974, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.32974, tmp343
	strh	r3, [lr, #20]	@ movhi	@ D.32974, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 20B]
	add	r2, r3, r2	@ tmp347, D.32974, D.32974
	strh	r2, [r1, #14]	@ movhi	@ tmp347, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
.L139:
	ldr	r3, [sp, #4]	@ ivtmp.110, %sfp
	ldr	r2, [sp, #8]	@ D.32973, %sfp
	cmp	r3, r2	@ ivtmp.110, D.32973
	beq	.L168	@,
	ldr	r3, [sp, #4]	@ ivtmp.110, %sfp
	add	r3, r3, #4	@ ivtmp.110, ivtmp.110,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp464, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp464, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.32974, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.32974, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.110, %sfp
	b	.L148	@
.L136:
	mov	r1, r7	@, D.32979
	mov	r0, r8	@, D.32975
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.32972, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp372,, D.32979
	uxth	r0, r0	@ D.32974, tmp372
	add	r4, r0, r4, lsr #1	@ tmp375, D.32974, tmp306,
	uxth	r4, r4	@ D.32974, tmp375
	strh	r4, [r2, #12]	@ movhi	@ D.32974, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp382, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp384, D.32974, tmp382
	strh	r0, [r2, #14]	@ movhi	@ tmp384, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp389, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp387, D.32974, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp387, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.32974, pDecReport_26(D)->SliceMbRange
	bls	.L139	@,
.L162:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp468,
	str	r1, [fp, #8]	@ tmp468, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.32974, total_mbn
	sub	r2, r7, #1	@ tmp471, D.32974,
	strh	r2, [fp, #14]	@ movhi	@ tmp471, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp470,
	strh	r2, [fp, #12]	@ movhi	@ tmp470, pDecReport_26(D)->SliceMbRange
.L150:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L131	@
.L135:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.32978, tmp395
	bls	.L140	@,
	add	r4, fp, r6, lsl #2	@ D.32972, pDecReport, j,
	str	r1, [sp, #12]	@ tmp395, %sfp
	mov	r0, r9	@, D.32974
	mov	r1, r7	@, D.32979
	strh	r8, [r4, #12]	@ movhi	@ D.32975, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	smulbb	r0, r0, r7	@ tmp403,, D.32979
	ldr	r3, [sp, #12]	@ tmp395, %sfp
	ubfx	r1, r3, #1, #16	@ D.32974, tmp395,,
	uxth	r0, r0	@ D.32974, tmp403
	add	r3, r1, r0	@ tmp408, D.32974, D.32974
	strh	r3, [r4, #14]	@ movhi	@ tmp408, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp413, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp411, D.32974, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.32974, tmp411
	strh	r3, [r4, #16]	@ movhi	@ D.32974, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp415, D.32974, D.32974
	strh	r3, [ip, #14]	@ movhi	@ tmp415, pDecReport_26(D)->SliceMbRange
	bls	.L139	@,
	b	.L162	@
.L140:
	add	r2, fp, r6, lsl #2	@ tmp418, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.32975, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.32974, pDecReport_26(D)->SliceMbRange
	bls	.L139	@,
	b	.L162	@
.L137:
	smulbb	r3, r0, r7	@ tmp349, tmp318, D.32979
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.32972, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.32974, tmp349
	add	r4, r3, r4	@ tmp351, D.32974, mbsurplus0
	add	r2, r3, r2	@ tmp354, D.32974, mbsurplus1
	uxth	r4, r4	@ D.32974, tmp351
	uxth	r2, r2	@ D.32974, tmp354
	strh	r4, [lr, #12]	@ movhi	@ D.32974, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.32974, pDecReport_26(D)->SliceMbRange
	bhi	.L162	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp362, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp360, D.32974, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp360, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp366, D.32974, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp366, pDecReport_26(D)->SliceMbRange
	bls	.L139	@,
	b	.L162	@
.L144:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.32976,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L152:
	mov	r6, r7	@ j, D.32979
.L134:
	uxth	r7, r5	@ D.32974, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L150	@
.L168:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L134	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp282,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_19(D)->VidStd
	str	r3, [r1, #552]	@ tmp282, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp282, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ValidGroupNum
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L170	@
.L172:
	.word	.L171
	.word	.L170
	.word	.L173
	.word	.L174
	.word	.L170
	.word	.L170
	.word	.L175
.L175:
	add	r2, r2, #12288	@ tmp399, pDecParam,
	mov	lr, #0	@ tmp361,
	ldr	r3, [r2, #2152]	@ D.33025, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].CurPicAddr
	str	r3, [r1, #4]	@ D.33025, pRepairParam_19(D)->ImageAddr
	ldr	r1, [r2, #2164]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].rcn_address, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].rcn_address
	str	r1, [r4, #8]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].rcn_address, pRepairParam_19(D)->Image2DAddr
	ldr	r10, [r2, #2144]	@ D.33024, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPic0Addr
	str	r10, [r4, #16]	@ D.33024, pRepairParam_19(D)->RefImageAddr
	ldr	r7, [r2, #2156]	@ D.33025, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].CurPmvAddr
	str	r7, [r4, #20]	@ D.33025, pRepairParam_19(D)->CurrPmvAddr
	ldrh	r8, [r5, #48]	@ D.33024, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb
	str	r8, [r4, #24]	@ D.33024, pRepairParam_19(D)->ImageWidth
	ldrh	r0, [r5, #50]	@ D.33024, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb
	str	r0, [r4, #28]	@ D.33024, pRepairParam_19(D)->ImageHeight
	mov	r9, r0, lsr #1	@ D.33024, D.33024,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicStruct
	str	lr, [r4, #36]	@ tmp361, pRepairParam_19(D)->ImageCSP
	sub	r1, r1, #3	@ D.33029, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicStruct,
	clz	r1, r1	@ D.33029, D.33029
	mov	r1, r1, lsr #5	@ D.33029, D.33029,
	str	r1, [r4, #32]	@ D.33029, pRepairParam_19(D)->IsFrame
	ldr	ip, [r6, #4]	@ pDecReport_66(D)->ImgStride, pDecReport_66(D)->ImgStride
	str	r10, [r4, #588]	@ D.33024, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].RefImageAddr
	add	ip, ip, r3	@ D.33025, pDecReport_66(D)->ImgStride, D.33025
	str	ip, [r4, #576]	@ D.33025, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ImageAddr
	ldr	r3, [r6, #4]	@ pDecReport_66(D)->ImgStride, pDecReport_66(D)->ImgStride
	str	r1, [r4, #604]	@ D.33029, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].IsFrame
	str	r0, [r4, #600]	@ D.33024, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ImageHeight
	add	r3, r3, r3, lsl #3	@ D.33025, pDecReport_66(D)->ImgStride, pDecReport_66(D)->ImgStride,
	str	r8, [r4, #596]	@ D.33024, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ImageWidth
	str	lr, [r4, #608]	@ tmp361, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ImageCSP
	mla	r3, r9, r3, r7	@ D.33025, D.33024, D.33025, D.33025
	str	r3, [r4, #592]	@ D.33025, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.33028, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].PicStruct
	cmp	r3, #3	@ D.33028,
	streq	lr, [r4, #564]	@ tmp361, pRepairParam_19(D)->Pic_type
	beq	.L199	@,
	cmp	r3, #1	@ D.33028,
	streq	r3, [r4, #564]	@ D.33028, pRepairParam_19(D)->Pic_type
.L199:
	ldr	r3, [r2, #2580]	@ D.33024, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_24(D)].Compress_en
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r3, [r4, #560]	@ D.33024, pRepairParam_19(D)->Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L194	@
.L174:
	ldr	r3, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr
	mov	r2, #0	@ tmp330,
	str	r3, [r1, #4]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr, pRepairParam_19(D)->ImageAddr
	ldr	r3, [r5, #224]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr
	str	r3, [r1, #8]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr, pRepairParam_19(D)->Image2DAddr
	ldr	r3, [r5, #196]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPhyAddr
	str	r3, [r1, #16]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPhyAddr, pRepairParam_19(D)->RefImageAddr
	ldr	r3, [r5, #240]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PmvColmbPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PmvColmbPhyAddr
	str	r3, [r1, #20]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PmvColmbPhyAddr, pRepairParam_19(D)->CurrPmvAddr
	ldrh	r3, [r5, #152]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb
	str	r3, [r1, #24]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb, pRepairParam_19(D)->ImageWidth
	ldrh	r3, [r5, #148]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb
	str	r3, [r1, #28]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb, pRepairParam_19(D)->ImageHeight
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PictureStructure, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PictureStructure
	str	r2, [r1, #36]	@ tmp330, pRepairParam_19(D)->ImageCSP
	sub	r3, r3, #3	@ D.33029, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PictureStructure,
	clz	r3, r3	@ D.33029, D.33029
	mov	r3, r3, lsr #5	@ D.33029, D.33029,
	str	r3, [r1, #32]	@ D.33029, pRepairParam_19(D)->IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ D.33028, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].PictureStructure
	cmp	r3, #1	@ D.33028,
	beq	.L228	@,
	cmp	r3, #2	@ D.33028,
	beq	.L228	@,
	cmp	r3, #3	@ D.33028,
	streq	r2, [r1, #564]	@ tmp330, pRepairParam_19(D)->Pic_type
.L196:
	add	r5, r5, #45056	@ tmp335, pDecParam,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.33024, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_24(D)].Compress_en
	str	r3, [r4, #560]	@ D.33024, pRepairParam_19(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L194	@
.L171:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp286, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp288, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp288, pRepairParam_19(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicImg2DAddr, pRepairParam_19(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pFirstSlice
	ldr	r0, [r3, #1640]	@ ref_img_idc, _32->declist[0][0].img_idc
	add	r3, r2, r0, lsl #2	@ tmp292, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp294, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].ImgPhyAddr
	str	r3, [r1, #16]	@ tmp294, pRepairParam_19(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp295, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp297, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].PmvPhyAddr
	str	r3, [r1, #20]	@ tmp297, pRepairParam_19(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_width_in_mb
	str	r3, [r1, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_width_in_mb, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_height_in_mb
	str	r3, [r1, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_height_in_mb, pRepairParam_19(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure
	clz	r3, r3	@ D.33029, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.33029, D.33029,
	str	r3, [r1, #32]	@ D.33029, pRepairParam_19(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].chroma_format_idc
	clz	r3, r3	@ D.33029, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.33029, D.33029,
	str	r3, [r1, #36]	@ D.33029, pRepairParam_19(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.33025, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].ApcSize
	cmp	ip, #0	@ D.33025,
	beq	.L176	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].RefPicFsId
	cmp	r3, r0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].RefPicFsId, ref_img_idc
	addne	r2, r2, #1312	@ ivtmp.141, pDecParam,
	movne	r3, #0	@ i,
	addne	r2, r2, #8	@ ivtmp.141, ivtmp.141,
	bne	.L179	@,
	b	.L230	@
.L180:
	ldr	r1, [r2, #4]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r1, r0	@ MEM[base: _3, offset: 0B], ref_img_idc
	beq	.L177	@,
.L179:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.33025
	bne	.L180	@,
.L176:
	ldr	r2, [r5, #32]	@ D.33025, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].NewPicFlag
	cmp	r2, #0	@ D.33025,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure
	clzne	r2, r2	@ D.33025, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.33025, D.33025,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].NewPicFlag,
	streq	r3, [r6, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].NewPicFlag, pDecReport_66(D)->DecSliceNum
	bne	.L231	@,
.L183:
	ldr	r0, [r4, #4]	@ D.33024, pRepairParam_19(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_19(D)->RefImageAddr, pRepairParam_19(D)->RefImageAddr
	cmp	r0, r3	@ D.33024, pRepairParam_19(D)->RefImageAddr
	beq	.L232	@,
.L184:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.33028, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].pic_structure
	cmp	r3, #0	@ D.33028,
	beq	.L193	@,
	cmp	r3, #1	@ D.33028,
	beq	.L227	@,
	cmp	r3, #2	@ D.33028,
	beq	.L227	@,
	cmp	r3, #3	@ D.33028,
	bne	.L190	@,
.L193:
	mov	r3, #0	@ tmp318,
	str	r3, [r4, #564]	@ tmp318, pRepairParam_19(D)->Pic_type
.L190:
	ldr	r3, [r5, #1384]	@ D.33024, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].Compress_en
	str	r3, [r4, #560]	@ D.33024, pRepairParam_19(D)->Compress_en
	b	.L194	@
.L173:
	ldr	ip, [r2, #212]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr
	add	r3, r2, #12288	@ tmp338, pDecParam,
	mov	lr, #1	@ tmp344,
	mov	r2, #0	@ tmp345,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPicPhyAddr, pRepairParam_19(D)->ImageAddr
	ldr	ip, [r3, #2300]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr
	str	ip, [r4, #8]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].DispFramePhyAddr, pRepairParam_19(D)->Image2DAddr
	ldr	ip, [r5, #216]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPicPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].FwdRefPicPhyAddr, pRepairParam_19(D)->RefImageAddr
	ldr	ip, [r5, #224]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPmvPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].CurPmvPhyAddr, pRepairParam_19(D)->CurrPmvAddr
	ldrh	ip, [r5, #164]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicWidthInMb, pRepairParam_19(D)->ImageWidth
	ldrh	ip, [r5, #166]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp344, pRepairParam_19(D)->IsFrame
	str	r2, [r4, #36]	@ tmp345, pRepairParam_19(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].PicHeightInMb, pRepairParam_19(D)->ImageHeight
	str	r2, [r4, #564]	@ tmp345, pRepairParam_19(D)->Pic_type
	ldr	r3, [r3, #2372]	@ D.33024, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_24(D)].Compress_en
	str	r3, [r4, #560]	@ D.33024, pRepairParam_19(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
.L194:
	ldr	r2, [r4, #552]	@ pRepairParam_19(D)->ValidGroupNum, pRepairParam_19(D)->ValidGroupNum
	mov	r7, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	ldr	r5, [r4, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_19(D)->ValidGroupNum,
	mul	r5, r5, r3	@ total_mbs, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ble	.L200	@,
	mov	r8, r4	@ ivtmp.125, pRepairParam
	mov	r9, r7	@ i, err_mbs
.L201:
	bl	vfmw_dprint_nothing	@
	ldrsh	r3, [r8, #42]	@ D.33024, MEM[base: _217, offset: 42B]
	ldrsh	r2, [r8, #40]	@ D.33024, MEM[base: _217, offset: 40B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, [r4, #552]	@ pRepairParam_19(D)->ValidGroupNum, pRepairParam_19(D)->ValidGroupNum
	add	r8, r8, #4	@ ivtmp.125, ivtmp.125,
	rsb	r2, r2, r3	@ D.33024, D.33024, D.33024
	cmp	r1, r9	@ pRepairParam_19(D)->ValidGroupNum, i
	add	r2, r2, #1	@ D.33024, D.33024,
	add	r7, r7, r2	@ err_mbs, err_mbs, D.33024
	bgt	.L201	@,
.L200:
	ldr	r0, [r4, #1124]	@ D.33024, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_19(D) + 572B].ValidGroupNum
	cmp	r0, #0	@ D.33024,
	ble	.L202	@,
	add	r2, r4, #612	@ ivtmp.117, pRepairParam,
	mov	r3, #0	@ i,
	add	r2, r2, #2	@ ivtmp.117, ivtmp.117,
.L203:
	ldrsh	ip, [r2]	@ D.33024, MEM[base: _224, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r1, [r2, #-2]	@ D.33024, MEM[base: _224, offset: 4294967294B]
	cmp	r3, r0	@ i, D.33024
	add	r2, r2, #4	@ ivtmp.117, ivtmp.117,
	rsb	ip, r1, ip	@ D.33024, D.33024, D.33024
	add	ip, ip, #1	@ D.33024, D.33024,
	add	r7, r7, ip	@ err_mbs, err_mbs, D.33024
	bne	.L203	@,
.L202:
	cmp	r5, #0	@ total_mbs,
	beq	.L204	@,
	mov	r0, #100	@ tmp393,
	mov	r1, r5	@, total_mbs
	mul	r0, r0, r7	@, tmp393, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r5, r0, r0, asr #31	@ err_ratio, err_ratio
.L204:
	mov	r3, #0	@ tmp397,
	str	r3, [r6, #8]	@ tmp397, pDecReport_66(D)->DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L170:
	bl	vfmw_dprint_nothing	@
	b	.L194	@
.L231:
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L183	@
.L228:
	str	r3, [r4, #564]	@ D.33028, pRepairParam_19(D)->Pic_type
	b	.L196	@
.L232:
	ldr	ip, [r5, #820]	@ D.33025, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].ImgSlotNum
	cmp	ip, #0	@ D.33025,
	beq	.L184	@,
	ldr	r2, [r5, #308]	@ D.33025, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].ImgPhyAddr
	cmp	r0, r2	@ D.33024, D.33025
	addeq	r1, r5, #308	@ ivtmp.130, pDecParam,
	moveq	r3, #0	@ i,
	beq	.L187	@,
	b	.L185	@
.L188:
	ldr	r2, [r1, #4]!	@ D.33025, MEM[base: _56, offset: 0B]
	cmp	r2, r0	@ D.33025, D.33024
	bne	.L185	@,
.L187:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.33025
	bne	.L188	@,
	b	.L184	@
.L230:
	mov	r3, #0	@ i,
.L177:
	add	r3, r3, #312	@ tmp309, i,
	add	r3, r3, #2	@ tmp309, tmp309,
	ldr	r3, [r5, r3, asl #2]	@ tmp310, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_24(D)].RefPicType
	str	r3, [r4, #556]	@ tmp310, pRepairParam_19(D)->rpr_ref_pic_type
	b	.L176	@
.L227:
	str	r3, [r4, #564]	@ D.33028, pRepairParam_19(D)->Pic_type
	b	.L190	@
.L185:
	str	r2, [r4, #16]	@ D.33025, pRepairParam_19(D)->RefImageAddr
	b	.L184	@
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
	ldr	r6, .L237	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L237+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L237+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.33036, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.33036,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L234	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.33036
.L235:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	mov	r4, r0	@ err_ratio,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L234:
	bl	vfmw_dprint_nothing	@
	b	.L235	@
.L238:
	.align	2
.L237:
	.word	g_vdm_hal_fun_ptr
	.word	g_RepairParam
	.word	g_DecReport
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
	ldr	r5, .L241	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L241+4	@ tmp141,
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
.L242:
	.align	2
.L241:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
