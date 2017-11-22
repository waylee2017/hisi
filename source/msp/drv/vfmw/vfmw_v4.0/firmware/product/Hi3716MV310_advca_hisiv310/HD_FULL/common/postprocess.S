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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(postprocess)
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
	ldr	lr, [r3, #2300]	@ D.33345, pMp4DecParam_5(D)->DispFramePhyAddr
	ldr	r9, [r3, #2312]	@ pMp4DecParam_5(D)->VahbStride, pMp4DecParam_5(D)->VahbStride
	mov	r2, #0	@ tmp185,
	ldr	r8, [r3, #2372]	@ pMp4DecParam_5(D)->Compress_en, pMp4DecParam_5(D)->Compress_en
	ldr	r4, .L7+4	@ tmp227,
	add	r7, ip, #32	@ tmp178, tmp136,
	add	r6, ip, #560	@ tmp211, tmp136,
	str	r9, [ip, #12]	@ pMp4DecParam_5(D)->VahbStride, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].VahbStride
	str	lr, [ip, #4]	@ D.33345, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	lr, [ip, #8]	@ D.33345, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #216]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, pMp4DecParam_5(D)->FwdRefPicPhyAddr
	ldr	r5, [r4, #84]	@ D.33349, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	mov	r4, #1	@ tmp179,
	str	r3, [ip, #16]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	cmp	r5, r2	@ D.33349,
	ldr	r3, [r0, #224]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, pMp4DecParam_5(D)->CurPmvPhyAddr
	str	r3, [ip, #20]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	lr, [r0, #164]	@ D.33346, pMp4DecParam_5(D)->PicWidthInMb
	str	lr, [ip, #24]	@ D.33346, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #166]	@ D.33346, pMp4DecParam_5(D)->PicHeightInMb
	str	r8, [ip, #560]	@ pMp4DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	str	r2, [ip, #36]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	smulbb	lr, r3, lr	@ tmp205, D.33346, D.33346
	str	r3, [ip, #28]	@ D.33346, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
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
	blx	r5	@ D.33349
	adds	r0, r0, #0	@ D.33343,,
	movne	r0, #1	@ D.33343,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L4:
	mov	r0, r4	@ D.33343, tmp179
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L8:
	.align	2
.L7:
	.word	g_RepairParam
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	PostPro_CopyYuv, .-PostPro_CopyYuv
	.align	2
	.global	PostPro_CopyYuv_Vc1
	.type	PostPro_CopyYuv_Vc1, %function
PostPro_CopyYuv_Vc1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L13	@ tmp143,
	add	r3, r0, #12288	@ tmp156, pVc1DecParam,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r4, #1144	@ tmp145,
	mla	r4, r4, r1, r2	@ tmp146, tmp145, VdhId, tmp143
	add	r9, r0, #77824	@ tmp148, pVc1DecParam,
	mov	r6, r0	@ pVc1DecParam, pVc1DecParam
	mov	r8, r1	@ VdhId, VdhId
	ldr	ip, [r9, #216]	@ pVc1DecParam_5(D)->ystaddr_1d, pVc1DecParam_5(D)->ystaddr_1d
	mov	r5, #1	@ tmp203,
	ldr	r0, [r3, #96]	@ pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr, pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr
	mov	r7, #0	@ tmp209,
	ldr	r1, [r3, #100]	@ pVc1DecParam_5(D)->FwdRefAddr, pVc1DecParam_5(D)->FwdRefAddr
	add	r10, r4, #24	@ tmp178, tmp146,
	ldr	r3, [r3, #108]	@ pVc1DecParam_5(D)->CurrColmbAddr, pVc1DecParam_5(D)->CurrColmbAddr
	str	ip, [r4, #4]	@ pVc1DecParam_5(D)->ystaddr_1d, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	r0, [r4, #8]	@ pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	str	r1, [r4, #16]	@ pVc1DecParam_5(D)->FwdRefAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	str	r3, [r4, #20]	@ pVc1DecParam_5(D)->CurrColmbAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	r3, [r6, #78]	@ D.33355, pVc1DecParam_5(D)->mbwidth
	add	r3, r3, r5	@ D.33355, D.33355,
	str	r3, [r4, #24]	@ D.33355, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r6, #76]	@ D.33355, pVc1DecParam_5(D)->DispPicHeight
	str	r7, [r4, #36]	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	adds	ip, r3, #15	@ D.33355, D.33355,
	str	r5, [r4, #32]	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	addmi	ip, r3, #30	@, D.33355, D.33355,
	mov	ip, ip, asr #4	@ D.33355, D.33355,
	add	ip, ip, r5	@ D.33355, D.33355,
	add	ip, ip, ip, lsr #31	@ tmp195, D.33355, D.33355,
	bic	ip, ip, #1	@ D.33355, tmp195,
	str	ip, [r4, #28]	@ D.33355, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r3, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	lr, .L13+4	@ tmp269,
	ldr	r0, [r9, #272]	@ pVc1DecParam_5(D)->Compress_en, pVc1DecParam_5(D)->Compress_en
	smulbb	ip, ip, r3	@ tmp241, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	r9, [lr, #84]	@ D.33359, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r0, [r4, #560]	@ pVc1DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	cmp	r9, r7	@ D.33359,
	str	r5, [r4, #552]	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	sub	ip, ip, #1	@ tmp242, tmp241,
	strh	r7, [r4, #40]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r5, [r4, #568]	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	strh	ip, [r4, #42]	@ movhi	@ tmp242, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	str	r7, [r4, #556]	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].rpr_ref_pic_type
	str	r7, [r4, #564]	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	beq	.L11	@,
	mov	r3, r8	@, VdhId
	mov	r2, r7	@, tmp209
	mov	r1, r6	@, pVc1DecParam
	mov	r0, r5	@, tmp203
	blx	r9	@ D.33359
	subs	r0, r0, r7	@ D.33353,,
	movne	r0, #1	@ D.33353,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	mov	r0, r5	@ D.33353, tmp203
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L14:
	.align	2
.L13:
	.word	g_RepairParam
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	PostPro_CopyYuv_Vc1, .-PostPro_CopyYuv_Vc1
	.align	2
	.global	PostPro_CopyYuv_Vp6
	.type	PostPro_CopyYuv_Vp6, %function
PostPro_CopyYuv_Vp6:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L19	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r4, #1144	@ tmp139,
	mla	r4, r4, r1, r2	@ tmp140, tmp139, VdhId, tmp137
	ldr	r3, [r0, #172]	@ pVp6DecParam_5(D)->image_curr_recon_addr, pVp6DecParam_5(D)->image_curr_recon_addr
	mov	r7, #0	@ tmp183,
	mov	r6, #1	@ tmp177,
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r9, r1	@ VdhId, VdhId
	add	r8, r4, #24	@ tmp164, tmp140,
	str	r3, [r4, #4]	@ pVp6DecParam_5(D)->image_curr_recon_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	ldr	r3, [r0, #172]	@ pVp6DecParam_5(D)->image_curr_recon_addr, pVp6DecParam_5(D)->image_curr_recon_addr
	str	r3, [r4, #8]	@ pVp6DecParam_5(D)->image_curr_recon_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #180]	@ pVp6DecParam_5(D)->image_last_ref_addr, pVp6DecParam_5(D)->image_last_ref_addr
	str	r3, [r4, #16]	@ pVp6DecParam_5(D)->image_last_ref_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	ldr	r3, [r0, #184]	@ pVp6DecParam_5(D)->CurPmvAddr, pVp6DecParam_5(D)->CurPmvAddr
	str	r3, [r4, #20]	@ pVp6DecParam_5(D)->CurPmvAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	r3, [r0, #52]	@ pVp6DecParam_5(D)->PicWidthInMb, pVp6DecParam_5(D)->PicWidthInMb
	str	r3, [r4, #24]	@ pVp6DecParam_5(D)->PicWidthInMb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #54]	@ pVp6DecParam_5(D)->PicHeightInMb, pVp6DecParam_5(D)->PicHeightInMb
	str	r7, [r4, #36]	@ tmp183, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	str	r6, [r4, #32]	@ tmp177, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	str	r3, [r4, #28]	@ pVp6DecParam_5(D)->PicHeightInMb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r0, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	r1, .L19+4	@ tmp240,
	str	r6, [r4, #552]	@ tmp177, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	smulbb	r0, ip, r0	@ tmp215, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, [r1, #84]	@ D.33369, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r7, [r4, #40]	@ movhi	@ tmp183, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r7, [r4, #556]	@ tmp183, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].rpr_ref_pic_type
	cmp	ip, r7	@ D.33369,
	sub	r0, r0, #1	@ tmp216, tmp215,
	strh	r0, [r4, #42]	@ movhi	@ tmp216, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	ldr	r3, [r5, #196]	@ D.33365, pVp6DecParam_5(D)->Compress_en
	str	r6, [r4, #568]	@ tmp177, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	str	r7, [r4, #564]	@ tmp183, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	str	r3, [r4, #560]	@ D.33365, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	beq	.L17	@,
	mov	r3, r9	@, VdhId
	mov	r2, r7	@, tmp183
	mov	r1, r5	@, pVp6DecParam
	mov	r0, #10	@,
	blx	ip	@ D.33369
	subs	r0, r0, r7	@ D.33363,,
	movne	r0, #1	@ D.33363,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L17:
	mov	r0, r6	@ D.33363, tmp177
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L20:
	.align	2
.L19:
	.word	g_RepairParam
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	PostPro_CopyYuv_Vp6, .-PostPro_CopyYuv_Vp6
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
	sub	r3, r3, #1	@ D.33381, pDecReport_15(D)->DecSliceNum,
	cmp	r3, #127	@ D.33381,
	bhi	.L30	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.33381, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.33381,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.33381,
	uxth	r8, r5	@ D.33383, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.33383, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.33383, pDecReport_15(D)->SliceMbRange
	bne	.L41	@,
.L24:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.32, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.33382, total_mbn, tmp6
	b	.L32	@
.L44:
	cmp	r2, lr	@ D.33383, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.33383, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L25	@,
	cmp	r2, r7	@ D.33383, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.33382, old_slice_end_mbn,
	cmp	r4, r2	@ D.33382, D.33383
	beq	.L29	@,
	add	r6, r6, r6, lsr #31	@ tmp259, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp260, D.33383,
	cmp	r6, r10	@ tmp259, tmp260
	bge	.L29	@,
	ldr	r4, [r0, #552]	@ D.33382, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.33382,
	bgt	.L30	@,
	sub	r7, r7, #100	@ tmp261, old_slice_end_mbn,
	sxth	fp, r6	@ D.33382, tmp259
	cmp	r7, fp	@ tmp261, D.33382
	add	fp, r0, r4, lsl #2	@ D.33387, pRepairParam, D.33382,
	add	r4, r4, #1	@ D.33382, D.33382,
	strh	r6, [fp, #40]	@ movhi	@ tmp259, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp260, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	str	r4, [r0, #552]	@ D.33382, pRepairParam_19(D)->ValidGroupNum
.L29:
	ldr	r4, [r1, #8]	@ D.33390, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.33381, D.33390,
	cmp	r6, ip	@ D.33381, i
	beq	.L42	@,
.L34:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.33390
	mov	r6, r2	@ old_slice_end_mbn, D.33383
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	bhi	.L43	@,
.L32:
	ldrh	r2, [r3, #12]	@ D.33383, MEM[base: _110, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _110, offset: 14B]
	cmp	r2, r5	@ D.33383, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L44	@,
.L25:
	ldr	r4, [r1, #8]	@ D.33390, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	cmp	ip, r4	@ i, D.33390
	bls	.L32	@,
.L43:
	mov	r3, #0	@ D.33380,
.L39:
	mov	r0, r3	@, D.33380
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L42:
	add	r6, r1, ip, lsl #2	@ tmp252, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.33383, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.33383, D.33382
	bge	.L34	@,
	ldr	r3, [r0, #552]	@ D.33382, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.33382,
	bgt	.L30	@,
	add	r1, r0, r3, lsl #2	@ D.33387, pRepairParam, D.33382,
	add	r2, r3, #1	@ D.33382, D.33382,
	sub	r8, r8, #1	@ tmp256, D.33383,
	mov	r3, #0	@ D.33380,
	strh	r8, [r1, #42]	@ movhi	@ tmp256, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.33383, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 40B]
	str	r2, [r0, #552]	@ D.33382, pRepairParam_19(D)->ValidGroupNum
	b	.L39	@
.L41:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.33382, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.33382, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.33382, D.33382
	subge	r2, r8, #1	@ tmp221, D.33383,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L24	@
.L30:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33380,
	mov	r0, r3	@, D.33380
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
	sub	r3, r3, #1	@ D.33400, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.33400,
	bhi	.L51	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.33400, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.41, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.33400,
	add	r9, r5, r6	@ D.33401, total_mbn,
	uxth	r8, r5	@ D.33402, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.33402, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.33402, pDecReport_13(D)->SliceMbRange
	b	.L53	@
.L60:
	cmp	ip, r6	@ D.33402, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.33401, old_slice_end_mbn,
	cmp	r6, ip	@ D.33401, D.33402
	beq	.L50	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.33402,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L50	@,
	ldr	r2, [r0, #552]	@ D.33401, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.33401,
	bgt	.L51	@,
	add	r10, r0, r2, lsl #2	@ D.33406, pRepairParam, D.33401,
	add	r2, r2, #1	@ D.33401, D.33401,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.33401, pRepairParam_17(D)->ValidGroupNum
.L50:
	ldr	r2, [r1, #8]	@ D.33409, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.33400, D.33409,
	cmp	r6, lr	@ D.33400, i
	beq	.L58	@,
.L55:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.33409
	mov	r7, ip	@ old_slice_end_mbn, D.33402
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	bhi	.L59	@,
.L53:
	ldrh	ip, [r3, #12]	@ D.33402, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.33402, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.33402, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L60	@,
	ldr	r2, [r1, #8]	@ D.33409, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	cmp	lr, r2	@ i, D.33409
	bls	.L53	@,
.L59:
	mov	r3, #0	@ D.33399,
.L47:
	mov	r0, r3	@, D.33399
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L58:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.33402, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.33402, D.33401
	bge	.L55	@,
	ldr	r3, [r0, #552]	@ D.33401, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.33401,
	bgt	.L51	@,
	add	r1, r0, r3, lsl #2	@ D.33406, pRepairParam, D.33401,
	add	r2, r3, #1	@ D.33401, D.33401,
	sub	r8, r8, #1	@ tmp203, D.33402,
	mov	r3, #0	@ D.33399,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.33402, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.33401, pRepairParam_17(D)->ValidGroupNum
	b	.L47	@
.L51:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33399,
	mov	r0, r3	@, D.33399
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
	sub	r3, r3, #1	@ D.33419, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.33419,
	bhi	.L67	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.33419, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.49, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.33419,
	add	r9, r5, r6	@ D.33420, total_mbn,
	uxth	r8, r5	@ D.33421, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.33421, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.33421, pDecReport_13(D)->SliceMbRange
	b	.L69	@
.L76:
	cmp	ip, r6	@ D.33421, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.33420, old_slice_end_mbn,
	cmp	r6, ip	@ D.33420, D.33421
	beq	.L66	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.33421,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L66	@,
	ldr	r2, [r0, #552]	@ D.33420, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.33420,
	bgt	.L67	@,
	add	r10, r0, r2, lsl #2	@ D.33425, pRepairParam, D.33420,
	add	r2, r2, #1	@ D.33420, D.33420,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.33420, pRepairParam_17(D)->ValidGroupNum
.L66:
	ldr	r2, [r1, #8]	@ D.33428, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.33419, D.33428,
	cmp	r6, lr	@ D.33419, i
	beq	.L74	@,
.L71:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.33428
	mov	r7, ip	@ old_slice_end_mbn, D.33421
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	bhi	.L75	@,
.L69:
	ldrh	ip, [r3, #12]	@ D.33421, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.33421, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.33421, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L76	@,
	ldr	r2, [r1, #8]	@ D.33428, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	cmp	lr, r2	@ i, D.33428
	bls	.L69	@,
.L75:
	mov	r3, #0	@ D.33418,
.L63:
	mov	r0, r3	@, D.33418
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L74:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.33421, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.33421, D.33420
	bge	.L71	@,
	ldr	r3, [r0, #552]	@ D.33420, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.33420,
	bgt	.L67	@,
	add	r1, r0, r3, lsl #2	@ D.33425, pRepairParam, D.33420,
	add	r2, r3, #1	@ D.33420, D.33420,
	sub	r8, r8, #1	@ tmp203, D.33421,
	mov	r3, #0	@ D.33418,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.33421, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.33420, pRepairParam_17(D)->ValidGroupNum
	b	.L63	@
.L67:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33418,
	mov	r0, r3	@, D.33418
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
	sub	r3, r3, #1	@ D.33438, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.33438,
	bhi	.L83	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.33438, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.57, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.33438,
	add	r9, r5, r6	@ D.33439, total_mbn,
	uxth	r8, r5	@ D.33440, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.33440, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.33440, pDecReport_13(D)->SliceMbRange
	b	.L85	@
.L92:
	cmp	ip, r6	@ D.33440, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.33439, old_slice_end_mbn,
	cmp	r6, ip	@ D.33439, D.33440
	beq	.L82	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.33440,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L82	@,
	ldr	r2, [r0, #552]	@ D.33439, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.33439,
	bgt	.L83	@,
	add	r10, r0, r2, lsl #2	@ D.33444, pRepairParam, D.33439,
	add	r2, r2, #1	@ D.33439, D.33439,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.33439, pRepairParam_17(D)->ValidGroupNum
.L82:
	ldr	r2, [r1, #8]	@ D.33447, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.33438, D.33447,
	cmp	r6, lr	@ D.33438, i
	beq	.L90	@,
.L87:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.33447
	mov	r7, ip	@ old_slice_end_mbn, D.33440
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	bhi	.L91	@,
.L85:
	ldrh	ip, [r3, #12]	@ D.33440, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.33440, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.33440, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L92	@,
	ldr	r2, [r1, #8]	@ D.33447, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	cmp	lr, r2	@ i, D.33447
	bls	.L85	@,
.L91:
	mov	r3, #0	@ D.33437,
.L79:
	mov	r0, r3	@, D.33437
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L90:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.33440, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.33440, D.33439
	bge	.L87	@,
	ldr	r3, [r0, #552]	@ D.33439, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.33439,
	bgt	.L83	@,
	add	r1, r0, r3, lsl #2	@ D.33444, pRepairParam, D.33439,
	add	r2, r3, #1	@ D.33439, D.33439,
	sub	r8, r8, #1	@ tmp203, D.33440,
	mov	r3, #0	@ D.33437,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.33440, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.33439, pRepairParam_17(D)->ValidGroupNum
	b	.L79	@
.L83:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33437,
	mov	r0, r3	@, D.33437
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
	sub	r3, r3, #1	@ D.33458, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #127	@ D.33458,
	bhi	.L105	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.33458, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.33458,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.65, pDecReport
	add	r5, r4, r7	@ D.33459, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.33459, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.33460, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.33460, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.33460, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.33459, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.33459, %sfp
	b	.L100	@
.L108:
	cmp	r2, r7	@ D.33460, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.33459, old_slice_end_mbn,
	cmp	r2, r7	@ D.33460, D.33459
	ble	.L98	@,
	ldr	r7, [r8, #552]	@ D.33459, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.33462, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.33462, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.33462, D.33460
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.33464, pRepairParam, D.33459,
	add	r7, r7, #1	@ D.33459, D.33459,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.33459, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L98	@,
	ldr	r5, [sp, #8]	@ D.33459, %sfp
	cmp	r2, r5	@ D.33460, D.33459
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L98:
	ldr	r5, [r1, #8]	@ D.33466, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.33458, D.33466,
	cmp	r6, ip	@ D.33458, i
	beq	.L106	@,
.L102:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.33466
	mov	r6, r2	@ old_slice_end_mbn, D.33460
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	bhi	.L107	@,
.L100:
	ldrh	r2, [r3, #12]	@ D.33460, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.33460, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.33460, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L108	@,
	ldr	r5, [r1, #8]	@ D.33466, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	cmp	ip, r5	@ i, D.33466
	bls	.L100	@,
.L107:
	mov	r3, #0	@ D.33457,
.L95:
	mov	r0, r3	@, D.33457
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L106:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.33459, %sfp
	ldrh	r6, [r6, #14]	@ D.33460, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.33460, D.33459
	bge	.L102	@,
	ldr	r2, [r0, #552]	@ D.33459, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.33460,
	mov	r3, #0	@ D.33457,
	add	r1, r2, #1	@ D.33459, D.33459,
	add	r2, r0, r2, lsl #2	@ D.33464, pRepairParam, D.33459,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.33460, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.33459, pRepairParam_23(D)->ValidGroupNum
	b	.L95	@
.L105:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33457,
	mov	r0, r3	@, D.33457
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
	sub	r3, r3, #1	@ D.33478, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #3	@ D.33478,
	bhi	.L121	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.33478, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.33478,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.73, pDecReport
	add	r5, r4, r7	@ D.33479, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.33479, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.33480, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.33480, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.33480, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.33479, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.33479, %sfp
	b	.L116	@
.L124:
	cmp	r2, r7	@ D.33480, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.33479, old_slice_end_mbn,
	cmp	r2, r7	@ D.33480, D.33479
	ble	.L114	@,
	ldr	r7, [r8, #552]	@ D.33479, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.33482, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.33482, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.33482, D.33480
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.33484, pRepairParam, D.33479,
	add	r7, r7, #1	@ D.33479, D.33479,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.33479, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L114	@,
	ldr	r5, [sp, #8]	@ D.33479, %sfp
	cmp	r2, r5	@ D.33480, D.33479
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L114:
	ldr	r5, [r1, #8]	@ D.33486, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.33478, D.33486,
	cmp	r6, ip	@ D.33478, i
	beq	.L122	@,
.L118:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.33486
	mov	r6, r2	@ old_slice_end_mbn, D.33480
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	bhi	.L123	@,
.L116:
	ldrh	r2, [r3, #12]	@ D.33480, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.33480, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.33480, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L124	@,
	ldr	r5, [r1, #8]	@ D.33486, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	cmp	ip, r5	@ i, D.33486
	bls	.L116	@,
.L123:
	mov	r3, #0	@ D.33477,
.L111:
	mov	r0, r3	@, D.33477
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L122:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.33479, %sfp
	ldrh	r6, [r6, #14]	@ D.33480, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.33480, D.33479
	bge	.L118	@,
	ldr	r2, [r0, #552]	@ D.33479, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.33480,
	mov	r3, #0	@ D.33477,
	add	r1, r2, #1	@ D.33479, D.33479,
	add	r2, r0, r2, lsl #2	@ D.33484, pRepairParam, D.33479,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.33480, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.33479, pRepairParam_23(D)->ValidGroupNum
	b	.L111	@
.L121:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.33477,
	mov	r0, r3	@, D.33477
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
	bls	.L138	@,
	mov	r7, #1	@ i,
.L130:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.33506, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.81, pDecReport
	b	.L131	@
.L129:
	ldrh	r1, [r3, #12]	@ D.33504, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.33504, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.33504, D.33504
	bls	.L128	@,
	ldrh	r6, [r3, #14]	@ D.33504, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.33504, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.33504, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.33504, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L128:
	add	r3, r3, #4	@ ivtmp.81, ivtmp.81,
.L131:
	cmp	r2, lr	@ j, D.33506
	add	r2, r2, #1	@ j, j,
	bne	.L129	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L130	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L138:
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
	ldr	r6, [r1, #8]	@ D.33541, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.33541, D.33541,
	cmp	r1, #127	@ D.33541,
	bhi	.L156	@,
	ldr	r7, [r0, #24]	@ D.33542, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.33542
	uxtheq	r7, r5	@ D.33537, total_mbn
	bne	.L176	@,
.L143:
	mov	lr, #0	@ tmp422,
	str	lr, [r10, #552]	@ tmp422, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp422, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.33541, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.33542, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.97, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp425, pDecReport, D.33541,
	strh	r7, [r0, #14]	@ movhi	@ D.33537, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.33537, pDecReport_26(D)->SliceMbRange
	b	.L159	@
.L179:
	cmp	r1, r6	@ D.33537, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.33542, old_slice_end_mbn,
	cmp	r1, r3	@ D.33537, D.33542
	ble	.L155	@,
	ldr	r3, [r10, #552]	@ D.33542, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.33542,
	bgt	.L156	@,
	add	r8, r8, r8, lsr #31	@ tmp447, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.33549, pRepairParam, D.33542,
	sub	r6, r6, #100	@ tmp472, old_slice_end_mbn,
	add	r3, r3, #1	@ D.33542, D.33542,
	sxth	r4, r8	@ D.33542, tmp447
	strh	r8, [ip, #40]	@ movhi	@ tmp447, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	cmp	r6, r4	@ tmp472, D.33542
	sub	r4, r1, #1	@ tmp448, D.33537,
	strgth	r6, [ip, #40]	@ movhi	@ tmp472, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp448, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 42B]
	str	r3, [r10, #552]	@ D.33542, pRepairParam_30(D)->ValidGroupNum
.L155:
	ldr	r3, [fp, #8]	@ D.33544, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.33541, D.33544,
	cmp	ip, lr	@ D.33541, i
	beq	.L177	@,
.L166:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.33544, i
	mov	r8, r1	@ old_slice_end_mbn, D.33537
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	bcc	.L178	@,
.L159:
	ldrh	r1, [r2, #12]	@ D.33537, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.33537, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp434,
	movle	r3, #0	@ tmp434,
	cmp	r1, r0	@ D.33537, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp440, tmp434
	cmp	r3, #0	@ tmp440,
	beq	.L179	@,
	ldr	r3, [fp, #8]	@ D.33544, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	cmp	r3, lr	@ D.33544, i
	bcs	.L159	@,
.L178:
	mov	r0, #0	@ D.33539,
.L169:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L177:
	add	ip, fp, lr, lsl #2	@ tmp455, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.33537, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.33537, D.33542
	bge	.L166	@,
	ldr	r3, [r10, #552]	@ D.33542, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.33542,
	bgt	.L156	@,
	add	r2, r10, r3, lsl #2	@ D.33549, pRepairParam, D.33542,
	sub	r7, r7, #1	@ tmp459, D.33537,
	add	r3, r3, #1	@ D.33542, D.33542,
	mov	r0, #0	@ D.33539,
	strh	r7, [r2, #42]	@ movhi	@ tmp459, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.33537, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 40B]
	str	r3, [r10, #552]	@ D.33542, pRepairParam_30(D)->ValidGroupNum
	b	.L169	@
.L176:
	cmp	r6, #0	@ D.33541,
	mov	r7, r7, asl #1	@ D.33542, D.33542,
	beq	.L146	@,
	add	r3, sp, #24	@ tmp531,,
	mov	r6, r6, asl #2	@ D.33536, D.33541,
	add	r4, fp, r6	@ D.33536, pDecReport, D.33536
	mov	r2, fp	@ ivtmp.115, pDecReport
	mov	r1, r3	@ ivtmp.116, tmp531
	str	r3, [sp, #4]	@ tmp531, %sfp
.L145:
	ldrh	r0, [r2, #12]	@ MEM[base: _23, offset: 12B], MEM[base: _23, offset: 12B]
	add	r2, r2, #4	@ ivtmp.115, ivtmp.115,
	ldrh	r3, [r2, #10]	@ MEM[base: _23, offset: 14B], MEM[base: _23, offset: 14B]
	cmp	r2, r4	@ ivtmp.115, D.33536
	add	r1, r1, #4	@ ivtmp.116, ivtmp.116,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _23, offset: 12B], MEM[base: _16, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _23, offset: 14B], MEM[base: _16, offset: 2B]
	bne	.L145	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.33542,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp287, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.33537, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.33537, SliceMbRange_Tmp
	uxth	r8, r8	@ D.33538, tmp287
	strh	r8, [sp, #24]	@ movhi	@ D.33538, SliceMbRange_Tmp
	beq	.L164	@,
	sub	r3, r7, #2	@ D.33541, D.33542,
	sub	r6, r6, #4	@ D.33543, D.33536,
	add	r2, sp, #24	@ tmp530,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.33536, tmp530, D.33543
	mov	r5, r3	@ D.33541, D.33541
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.33536, %sfp
	uxth	r2, r7	@ D.33537, D.33542
	str	r2, [sp, #16]	@ D.33537, %sfp
.L160:
	mov	r1, r7	@, D.33542
	mov	r0, r8	@, D.33538
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.33537
	mov	r4, r1	@ tmp306,
	cmp	r4, #1	@ tmp306,
	mov	r1, r7	@, D.33542
	bls	.L147	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.33541, tmp311
	bls	.L148	@,
	str	r1, [sp, #12]	@ tmp311, %sfp
	mov	r0, r8	@, D.33538
	mov	r1, r7	@, D.33542
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp306,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.33542
	mov	r8, r0	@ tmp315,
	mov	r0, r9	@, D.33537
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp311, %sfp
	cmp	r0, r8	@ tmp318, tmp315
	mov	r3, r0	@ tmp318,
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp311,
	beq	.L149	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.33535, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp320, tmp315, tmp512
	uxth	r1, r1	@ D.33537, tmp320
	add	r4, r1, r4	@ tmp322, D.33537, mbsurplus0
	uxth	ip, r4	@ D.33537, tmp322
	strh	ip, [lr, #12]	@ movhi	@ D.33537, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp329, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp331, D.33537, tmp329
	strh	r1, [lr, #14]	@ movhi	@ tmp331, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp338, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.33537, mbsurplus1
	smulbb	r3, r3, r1	@ tmp336, tmp318, tmp513
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp334, D.33537, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp334, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 16B]
	uxth	r3, r3	@ D.33537, tmp336
	add	r0, r2, r3	@ tmp340, D.33537, D.33537
	strh	r0, [r9, #14]	@ movhi	@ tmp340, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp345, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp343, D.33537, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.33537, tmp343
	strh	r3, [lr, #20]	@ movhi	@ D.33537, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 20B]
	add	r2, r3, r2	@ tmp347, D.33537, D.33537
	strh	r2, [r1, #14]	@ movhi	@ tmp347, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
.L151:
	ldr	r3, [sp, #4]	@ ivtmp.116, %sfp
	ldr	r2, [sp, #8]	@ D.33536, %sfp
	cmp	r3, r2	@ ivtmp.116, D.33536
	beq	.L180	@,
	ldr	r3, [sp, #4]	@ ivtmp.116, %sfp
	add	r3, r3, #4	@ ivtmp.116, ivtmp.116,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp464, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp464, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.33537, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.33537, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.116, %sfp
	b	.L160	@
.L148:
	mov	r1, r7	@, D.33542
	mov	r0, r8	@, D.33538
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.33535, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp372,, D.33542
	uxth	r0, r0	@ D.33537, tmp372
	add	r4, r0, r4, lsr #1	@ tmp375, D.33537, tmp306,
	uxth	r4, r4	@ D.33537, tmp375
	strh	r4, [r2, #12]	@ movhi	@ D.33537, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp382, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp384, D.33537, tmp382
	strh	r0, [r2, #14]	@ movhi	@ tmp384, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp389, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp387, D.33537, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp387, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.33537, pDecReport_26(D)->SliceMbRange
	bls	.L151	@,
.L174:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp468,
	str	r1, [fp, #8]	@ tmp468, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.33537, total_mbn
	sub	r2, r7, #1	@ tmp471, D.33537,
	strh	r2, [fp, #14]	@ movhi	@ tmp471, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp470,
	strh	r2, [fp, #12]	@ movhi	@ tmp470, pDecReport_26(D)->SliceMbRange
.L162:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L143	@
.L147:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.33541, tmp395
	bls	.L152	@,
	add	r4, fp, r6, lsl #2	@ D.33535, pDecReport, j,
	str	r1, [sp, #12]	@ tmp395, %sfp
	mov	r0, r9	@, D.33537
	mov	r1, r7	@, D.33542
	strh	r8, [r4, #12]	@ movhi	@ D.33538, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	smulbb	r0, r0, r7	@ tmp403,, D.33542
	ldr	r3, [sp, #12]	@ tmp395, %sfp
	ubfx	r1, r3, #1, #16	@ D.33537, tmp395,,
	uxth	r0, r0	@ D.33537, tmp403
	add	r3, r1, r0	@ tmp408, D.33537, D.33537
	strh	r3, [r4, #14]	@ movhi	@ tmp408, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp413, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp411, D.33537, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.33537, tmp411
	strh	r3, [r4, #16]	@ movhi	@ D.33537, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp415, D.33537, D.33537
	strh	r3, [ip, #14]	@ movhi	@ tmp415, pDecReport_26(D)->SliceMbRange
	bls	.L151	@,
	b	.L174	@
.L152:
	add	r2, fp, r6, lsl #2	@ tmp418, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.33538, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.33537, pDecReport_26(D)->SliceMbRange
	bls	.L151	@,
	b	.L174	@
.L149:
	smulbb	r3, r0, r7	@ tmp349, tmp318, D.33542
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.33535, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.33537, tmp349
	add	r4, r3, r4	@ tmp351, D.33537, mbsurplus0
	add	r2, r3, r2	@ tmp354, D.33537, mbsurplus1
	uxth	r4, r4	@ D.33537, tmp351
	uxth	r2, r2	@ D.33537, tmp354
	strh	r4, [lr, #12]	@ movhi	@ D.33537, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.33537, pDecReport_26(D)->SliceMbRange
	bhi	.L174	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp362, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp360, D.33537, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp360, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp366, D.33537, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp366, pDecReport_26(D)->SliceMbRange
	bls	.L151	@,
	b	.L174	@
.L156:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.33539,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L164:
	mov	r6, r7	@ j, D.33542
.L146:
	uxth	r7, r5	@ D.33537, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L162	@
.L180:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L146	@
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
	mov	r3, #0	@ tmp366,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_20(D)->VidStd
	str	r3, [r1, #552]	@ tmp366, pRepairParam_20(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp366, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L182	@
.L184:
	.word	.L183
	.word	.L185
	.word	.L186
	.word	.L187
	.word	.L182
	.word	.L188
	.word	.L189
	.word	.L182
	.word	.L190
	.word	.L191
	.word	.L192
	.word	.L192
	.word	.L192
	.word	.L193
.L193:
	ldr	r2, [r2, #3116]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr
	mov	r3, #0	@ tmp542,
	mov	ip, #1	@ tmp541,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r2, [r4, #4]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, pRepairParam_20(D)->ImageAddr
	ldr	r2, [r5, #3116]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr
	str	r2, [r4, #8]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, pRepairParam_20(D)->Image2DAddr
	ldr	r2, [r5, #3128]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr
	str	r2, [r4, #16]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr, pRepairParam_20(D)->RefImageAddr
	ldr	r2, [r5, #3132]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvAddr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvAddr
	str	r2, [r4, #20]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	r2, [r5, #2784]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb
	str	r2, [r4, #24]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, pRepairParam_20(D)->ImageWidth
	ldr	r2, [r5, #2788]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb
	str	ip, [r4, #32]	@ tmp541, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp542, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp542, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #3140]	@ D.33589, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetVp8MbGroup	@
.L212:
	ldr	r2, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	mov	r7, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_20(D)->ImageWidth, pRepairParam_20(D)->ImageWidth
	ldr	r5, [r4, #28]	@ pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_20(D)->ValidGroupNum,
	mul	r5, r5, r3	@ total_mbs, pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageWidth
	ble	.L221	@,
	mov	r8, r4	@ ivtmp.131, pRepairParam
	mov	r9, r7	@ i, err_mbs
.L222:
	bl	vfmw_dprint_nothing	@
	ldrsh	r3, [r8, #42]	@ D.33589, MEM[base: _401, offset: 42B]
	ldrsh	r2, [r8, #40]	@ D.33589, MEM[base: _401, offset: 40B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	add	r8, r8, #4	@ ivtmp.131, ivtmp.131,
	rsb	r2, r2, r3	@ D.33589, D.33589, D.33589
	cmp	r1, r9	@ pRepairParam_20(D)->ValidGroupNum, i
	add	r2, r2, #1	@ D.33589, D.33589,
	add	r7, r7, r2	@ err_mbs, err_mbs, D.33589
	bgt	.L222	@,
.L221:
	ldr	r0, [r4, #1124]	@ D.33589, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
	cmp	r0, #0	@ D.33589,
	ble	.L223	@,
	add	r2, r4, #612	@ ivtmp.123, pRepairParam,
	mov	r3, #0	@ i,
	add	r2, r2, #2	@ ivtmp.123, ivtmp.123,
.L224:
	ldrsh	ip, [r2]	@ D.33589, MEM[base: _406, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r1, [r2, #-2]	@ D.33589, MEM[base: _406, offset: 4294967294B]
	cmp	r3, r0	@ i, D.33589
	add	r2, r2, #4	@ ivtmp.123, ivtmp.123,
	rsb	ip, r1, ip	@ D.33589, D.33589, D.33589
	add	ip, ip, #1	@ D.33589, D.33589,
	add	r7, r7, ip	@ err_mbs, err_mbs, D.33589
	bne	.L224	@,
.L223:
	cmp	r5, #0	@ total_mbs,
	beq	.L225	@,
	mov	r0, #100	@ tmp558,
	mov	r1, r5	@, total_mbs
	mul	r0, r0, r7	@, tmp558, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r5, r0, r0, asr #31	@ err_ratio, err_ratio
.L225:
	mov	r3, #0	@ tmp562,
	str	r3, [r6, #8]	@ tmp562, pDecReport_67(D)->DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L183:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp370, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp372, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp372, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice
	ldr	r0, [r3, #1640]	@ ref_img_idc, _33->declist[0][0].img_idc
	add	r3, r2, r0, lsl #2	@ tmp376, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp378, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #16]	@ tmp378, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp379, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp381, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].PmvPhyAddr
	str	r3, [r1, #20]	@ tmp381, pRepairParam_20(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb
	str	r3, [r1, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, pRepairParam_20(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb
	str	r3, [r1, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clz	r3, r3	@ D.33587, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.33587, D.33587,
	str	r3, [r1, #32]	@ D.33587, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	clz	r3, r3	@ D.33587, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.33587, D.33587,
	str	r3, [r1, #36]	@ D.33587, pRepairParam_20(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.33588, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ApcSize
	cmp	ip, #0	@ D.33588,
	beq	.L194	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId
	cmp	r3, r0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, ref_img_idc
	addne	r2, r2, #1312	@ ivtmp.147, pDecParam,
	movne	r3, #0	@ i,
	addne	r2, r2, #8	@ ivtmp.147, ivtmp.147,
	bne	.L197	@,
	b	.L251	@
.L198:
	ldr	r1, [r2, #4]!	@ MEM[base: _371, offset: 0B], MEM[base: _371, offset: 0B]
	cmp	r1, r0	@ MEM[base: _371, offset: 0B], ref_img_idc
	beq	.L195	@,
.L197:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.33588
	bne	.L198	@,
.L194:
	ldr	r2, [r5, #32]	@ D.33588, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag
	cmp	r2, #0	@ D.33588,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clzne	r2, r2	@ D.33588, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.33588, D.33588,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag,
	streq	r3, [r6, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, pDecReport_67(D)->DecSliceNum
	bne	.L252	@,
.L201:
	ldr	r0, [r4, #4]	@ D.33589, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_20(D)->RefImageAddr, pRepairParam_20(D)->RefImageAddr
	cmp	r0, r3	@ D.33589, pRepairParam_20(D)->RefImageAddr
	beq	.L253	@,
.L202:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.33586, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	cmp	r3, #0	@ D.33586,
	beq	.L211	@,
	cmp	r3, #1	@ D.33586,
	beq	.L248	@,
	cmp	r3, #2	@ D.33586,
	beq	.L248	@,
	cmp	r3, #3	@ D.33586,
	bne	.L208	@,
.L211:
	mov	r3, #0	@ tmp402,
	str	r3, [r4, #564]	@ tmp402, pRepairParam_20(D)->Pic_type
.L208:
	ldr	r3, [r5, #1384]	@ D.33589, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	b	.L212	@
.L185:
	add	r7, r2, #77824	@ tmp564, pDecParam,
	add	r3, r2, #12288	@ tmp495, pDecParam,
	mov	r8, #0	@ tmp513,
	mov	r1, r6	@, pDecReport
	ldr	r2, [r7, #216]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d
	mov	r0, r4	@, pRepairParam
	str	r2, [r4, #4]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d, pRepairParam_20(D)->ImageAddr
	ldr	r2, [r3, #96]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr
	str	r2, [r4, #8]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r2, [r3, #100]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr
	str	r2, [r4, #16]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r3, #108]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr
	str	r3, [r4, #20]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r3, [r5, #78]	@ D.33589, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbwidth
	add	r3, r3, #1	@ D.33589, D.33589,
	str	r3, [r4, #24]	@ D.33589, pRepairParam_20(D)->ImageWidth
	ldrh	r3, [r5, #80]	@ D.33589, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbheight
	add	r3, r3, #1	@ D.33589, D.33589,
	str	r3, [r4, #28]	@ D.33589, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	str	r8, [r4, #36]	@ tmp513, pRepairParam_20(D)->ImageCSP
	tst	r3, #253	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	moveq	r3, #1	@ D.33587,
	movne	r3, r8	@ D.33587,
	str	r3, [r4, #32]	@ D.33587, pRepairParam_20(D)->IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	r2, [r4, #32]	@ pRepairParam_20(D)->IsFrame, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #68]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type
	cmp	r2, #1	@ pRepairParam_20(D)->IsFrame,
	streq	r8, [r4, #564]	@ tmp513, pRepairParam_20(D)->Pic_type
	and	r3, r3, #3	@ tmp517, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type,
	str	r3, [r4, #556]	@ tmp517, pRepairParam_20(D)->rpr_ref_pic_type
	beq	.L219	@,
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	cmp	r3, #3	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	beq	.L254	@,
.L219:
	ldr	r3, [r7, #272]	@ D.33589, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	b	.L212	@
.L189:
	add	r2, r2, #12288	@ tmp565, pDecParam,
	mov	lr, #0	@ tmp445,
	ldr	r3, [r2, #2152]	@ D.33588, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPicAddr
	str	r3, [r1, #4]	@ D.33588, pRepairParam_20(D)->ImageAddr
	ldr	r1, [r2, #2164]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address
	str	r1, [r4, #8]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, pRepairParam_20(D)->Image2DAddr
	ldr	r10, [r2, #2144]	@ D.33589, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPic0Addr
	str	r10, [r4, #16]	@ D.33589, pRepairParam_20(D)->RefImageAddr
	ldr	r7, [r2, #2156]	@ D.33588, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr
	str	r7, [r4, #20]	@ D.33588, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r8, [r5, #48]	@ D.33589, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r8, [r4, #24]	@ D.33589, pRepairParam_20(D)->ImageWidth
	ldrh	r0, [r5, #50]	@ D.33589, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	r0, [r4, #28]	@ D.33589, pRepairParam_20(D)->ImageHeight
	mov	r9, r0, lsr #1	@ D.33589, D.33589,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	str	lr, [r4, #36]	@ tmp445, pRepairParam_20(D)->ImageCSP
	sub	r1, r1, #3	@ D.33587, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct,
	clz	r1, r1	@ D.33587, D.33587
	mov	r1, r1, lsr #5	@ D.33587, D.33587,
	str	r1, [r4, #32]	@ D.33587, pRepairParam_20(D)->IsFrame
	ldr	ip, [r6, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r10, [r4, #588]	@ D.33589, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].RefImageAddr
	add	ip, ip, r3	@ D.33588, pDecReport_67(D)->ImgStride, D.33588
	str	ip, [r4, #576]	@ D.33588, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageAddr
	ldr	r3, [r6, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r1, [r4, #604]	@ D.33587, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].IsFrame
	str	r0, [r4, #600]	@ D.33589, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageHeight
	add	r3, r3, r3, lsl #3	@ D.33588, pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride,
	str	r8, [r4, #596]	@ D.33589, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageWidth
	str	lr, [r4, #608]	@ tmp445, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageCSP
	mla	r3, r9, r3, r7	@ D.33588, D.33589, D.33588, D.33588
	str	r3, [r4, #592]	@ D.33588, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.33586, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	cmp	r3, #3	@ D.33586,
	streq	lr, [r4, #564]	@ tmp445, pRepairParam_20(D)->Pic_type
	beq	.L217	@,
	cmp	r3, #1	@ D.33586,
	streq	r3, [r4, #564]	@ D.33586, pRepairParam_20(D)->Pic_type
.L217:
	ldr	r3, [r2, #2580]	@ D.33589, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L212	@
.L187:
	ldr	r3, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r2, #0	@ tmp414,
	str	r3, [r1, #4]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r5, #224]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr
	str	r3, [r1, #8]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r3, [r5, #196]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	r3, [r1, #16]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r5, #240]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PmvColmbPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PmvColmbPhyAddr
	str	r3, [r1, #20]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PmvColmbPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r3, [r5, #152]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r3, [r1, #24]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldrh	r3, [r5, #148]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	r3, [r1, #28]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure
	str	r2, [r1, #36]	@ tmp414, pRepairParam_20(D)->ImageCSP
	sub	r3, r3, #3	@ D.33587, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure,
	clz	r3, r3	@ D.33587, D.33587
	mov	r3, r3, lsr #5	@ D.33587, D.33587,
	str	r3, [r1, #32]	@ D.33587, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ D.33586, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure
	cmp	r3, #1	@ D.33586,
	beq	.L249	@,
	cmp	r3, #2	@ D.33586,
	beq	.L249	@,
	cmp	r3, #3	@ D.33586,
	streq	r2, [r1, #564]	@ tmp414, pRepairParam_20(D)->Pic_type
.L214:
	add	r5, r5, #45056	@ tmp419, pDecParam,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.33589, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L212	@
.L188:
	ldr	r2, [r2, #128]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r3, #0	@ tmp489,
	mov	ip, #1	@ tmp488,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r2, [r4, #4]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	r2, [r5, #124]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	r2, [r4, #16]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	r2, [r5, #148]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	r2, [r4, #20]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	r2, [r5, #8]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r2, [r4, #24]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	r2, [r5, #12]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	ip, [r4, #32]	@ tmp488, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp489, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp489, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #156]	@ D.33589, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L212	@
.L186:
	ldr	ip, [r2, #212]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r3, r2, #12288	@ tmp422, pDecParam,
	mov	lr, #1	@ tmp428,
	mov	r2, #0	@ tmp429,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	ip, [r3, #2300]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr
	str	ip, [r4, #8]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].DispFramePhyAddr, pRepairParam_20(D)->Image2DAddr
	ldr	ip, [r5, #216]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPicPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPicPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	ip, [r5, #224]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPmvPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldrh	ip, [r5, #164]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldrh	ip, [r5, #166]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp428, pRepairParam_20(D)->IsFrame
	str	r2, [r4, #36]	@ tmp429, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r2, [r4, #564]	@ tmp429, pRepairParam_20(D)->Pic_type
	ldr	r3, [r3, #2372]	@ D.33589, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L212	@
.L191:
	ldr	ip, [r2, #52]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r2, r2, #8192	@ tmp482, pDecParam,
	mov	r3, #0	@ tmp479,
	mov	lr, #1	@ tmp478,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	ip, [r5, #48]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	ip, [r5, #72]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	ip, [r5, #4]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	ip, [r5, #8]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp478, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp479, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp479, pRepairParam_20(D)->Pic_type
	ldr	r3, [r2, #3152]	@ D.33589, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L212	@
.L192:
	ldr	r3, [r2, #172]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr
	mov	r7, #0	@ tmp532,
	mov	r2, #1	@ tmp531,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r3, [r4, #4]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r5, #172]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr
	str	r3, [r4, #8]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, pRepairParam_20(D)->Image2DAddr
	ldr	r3, [r5, #180]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr
	str	r3, [r4, #16]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_last_ref_addr, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r5, #184]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr
	str	r3, [r4, #20]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r3, [r5, #52]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r3, [r4, #24]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldrh	r3, [r5, #54]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	r2, [r4, #32]	@ tmp531, pRepairParam_20(D)->IsFrame
	str	r7, [r4, #36]	@ tmp532, pRepairParam_20(D)->ImageCSP
	str	r3, [r4, #28]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r7, [r4, #556]	@ tmp532, pRepairParam_20(D)->rpr_ref_pic_type
	str	r7, [r4, #564]	@ tmp532, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #196]	@ D.33589, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	b	.L212	@
.L190:
	ldr	ip, [r2, #56]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r2, r2, #8192	@ tmp472, pDecParam,
	mov	r3, #0	@ tmp469,
	mov	lr, #1	@ tmp468,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	ip, [r5, #52]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	ip, [r5, #76]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	ip, [r5, #4]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	ip, [r5, #8]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp468, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp469, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp469, pRepairParam_20(D)->Pic_type
	ldr	r3, [r2, #3156]	@ D.33589, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.33589, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L212	@
.L182:
	bl	vfmw_dprint_nothing	@
	b	.L212	@
.L249:
	str	r3, [r4, #564]	@ D.33586, pRepairParam_20(D)->Pic_type
	b	.L214	@
.L254:
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.33586, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].curparity
	cmp	r3, #0	@ D.33586,
	moveq	r3, #1	@ tmp521,
	streq	r3, [r4, #564]	@ tmp521, pRepairParam_20(D)->Pic_type
	beq	.L219	@,
	cmp	r3, #1	@ D.33586,
	moveq	r3, #2	@ tmp522,
	streq	r3, [r4, #564]	@ tmp522, pRepairParam_20(D)->Pic_type
	b	.L219	@
.L251:
	mov	r3, #0	@ i,
.L195:
	add	r3, r3, #312	@ tmp393, i,
	add	r3, r3, #2	@ tmp393, tmp393,
	ldr	r3, [r5, r3, asl #2]	@ tmp394, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicType
	str	r3, [r4, #556]	@ tmp394, pRepairParam_20(D)->rpr_ref_pic_type
	b	.L194	@
.L252:
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L201	@
.L253:
	ldr	ip, [r5, #820]	@ D.33588, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgSlotNum
	cmp	ip, #0	@ D.33588,
	beq	.L202	@,
	ldr	r2, [r5, #308]	@ D.33588, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	cmp	r0, r2	@ D.33589, D.33588
	addeq	r1, r5, #308	@ ivtmp.136, pDecParam,
	moveq	r3, #0	@ i,
	bne	.L203	@,
.L205:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.33588
	beq	.L202	@,
	ldr	r2, [r1, #4]!	@ D.33588, MEM[base: _378, offset: 0B]
	cmp	r2, r0	@ D.33588, D.33589
	beq	.L205	@,
.L203:
	str	r2, [r4, #16]	@ D.33588, pRepairParam_20(D)->RefImageAddr
	b	.L202	@
.L248:
	str	r3, [r4, #564]	@ D.33586, pRepairParam_20(D)->Pic_type
	b	.L208	@
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
	ldr	r6, .L259	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L259+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L259+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.33599, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.33599,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L256	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.33599
.L257:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	mov	r4, r0	@ err_ratio,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L256:
	bl	vfmw_dprint_nothing	@
	b	.L257	@
.L260:
	.align	2
.L259:
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
	ldr	r5, .L263	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L263+4	@ tmp141,
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
.L264:
	.align	2
.L263:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
