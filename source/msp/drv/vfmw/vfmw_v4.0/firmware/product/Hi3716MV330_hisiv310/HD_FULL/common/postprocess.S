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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_VP6_SUPPORT -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4
@ -D CFG_MAX_CHAN_NUM=4 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(postprocess)
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
	ldr	lr, [r3, #2300]	@ D.28820, pMp4DecParam_5(D)->DispFramePhyAddr
	ldr	r9, [r3, #2312]	@ pMp4DecParam_5(D)->VahbStride, pMp4DecParam_5(D)->VahbStride
	mov	r2, #0	@ tmp185,
	ldr	r8, [r3, #2372]	@ pMp4DecParam_5(D)->Compress_en, pMp4DecParam_5(D)->Compress_en
	ldr	r4, .L7+4	@ tmp227,
	add	r7, ip, #32	@ tmp178, tmp136,
	add	r6, ip, #560	@ tmp211, tmp136,
	str	r9, [ip, #12]	@ pMp4DecParam_5(D)->VahbStride, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].VahbStride
	str	lr, [ip, #4]	@ D.28820, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	lr, [ip, #8]	@ D.28820, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #216]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, pMp4DecParam_5(D)->FwdRefPicPhyAddr
	ldr	r5, [r4, #84]	@ D.28824, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	mov	r4, #1	@ tmp179,
	str	r3, [ip, #16]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	cmp	r5, r2	@ D.28824,
	ldr	r3, [r0, #224]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, pMp4DecParam_5(D)->CurPmvPhyAddr
	str	r3, [ip, #20]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	lr, [r0, #164]	@ D.28821, pMp4DecParam_5(D)->PicWidthInMb
	str	lr, [ip, #24]	@ D.28821, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #166]	@ D.28821, pMp4DecParam_5(D)->PicHeightInMb
	str	r8, [ip, #560]	@ pMp4DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	str	r2, [ip, #36]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	smulbb	lr, r3, lr	@ tmp205, D.28821, D.28821
	str	r3, [ip, #28]	@ D.28821, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
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
	blx	r5	@ D.28824
	adds	r0, r0, #0	@ D.28818,,
	movne	r0, #1	@ D.28818,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L4:
	mov	r0, r4	@ D.28818, tmp179
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
	add	r8, r0, #77824	@ tmp148, pVc1DecParam,
	ldr	lr, [r3, #96]	@ pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr, pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr
	mov	r6, r0	@ pVc1DecParam, pVc1DecParam
	ldr	r2, [r3, #100]	@ pVc1DecParam_5(D)->FwdRefAddr, pVc1DecParam_5(D)->FwdRefAddr
	mov	r7, #0	@ tmp207,
	ldr	r5, [r8, #216]	@ pVc1DecParam_5(D)->ystaddr_1d, pVc1DecParam_5(D)->ystaddr_1d
	mov	r10, r1	@ VdhId, VdhId
	ldr	r3, [r3, #108]	@ pVc1DecParam_5(D)->CurrColmbAddr, pVc1DecParam_5(D)->CurrColmbAddr
	mov	r0, #22	@,
	str	lr, [r4, #8]	@ pVc1DecParam_5(D)->CurFrmImgLuma2dPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	add	r9, r4, #24	@ tmp179, tmp146,
	str	r5, [r4, #4]	@ pVc1DecParam_5(D)->ystaddr_1d, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	mov	r5, #1	@ tmp201,
	str	r2, [r4, #16]	@ pVc1DecParam_5(D)->FwdRefAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	str	r3, [r4, #20]	@ pVc1DecParam_5(D)->CurrColmbAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	r2, [r6, #78]	@ D.28830, pVc1DecParam_5(D)->mbwidth
	ldr	r1, .L13+4	@,
	add	r2, r2, r5	@ D.28830, D.28830,
	str	r2, [r4, #24]	@ D.28830, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r6, #76]	@ D.28830, pVc1DecParam_5(D)->DispPicHeight
	str	r7, [r4, #36]	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	adds	ip, r3, #15	@ D.28830, D.28830,
	str	r5, [r4, #32]	@ tmp201, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	addmi	ip, r3, #30	@, D.28830, D.28830,
	mov	ip, ip, asr #4	@ D.28830, D.28830,
	add	ip, ip, r5	@ D.28830, D.28830,
	add	ip, ip, ip, lsr #31	@ tmp189, D.28830, D.28830,
	bic	r3, ip, #1	@ D.28830, tmp189,
	str	r3, [r4, #28]	@ D.28830, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	dprint_vfmw	@
	ldr	lr, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r3, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, .L13+8	@ tmp268,
	ldr	r0, [r8, #272]	@ pVc1DecParam_5(D)->Compress_en, pVc1DecParam_5(D)->Compress_en
	smulbb	r3, lr, r3	@ tmp240, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, [ip, #84]	@ D.28834, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r0, [r4, #560]	@ pVc1DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	cmp	ip, r7	@ D.28834,
	str	r5, [r4, #552]	@ tmp201, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	sub	r3, r3, #1	@ tmp241, tmp240,
	strh	r7, [r4, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r5, [r4, #568]	@ tmp201, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	strh	r3, [r4, #42]	@ movhi	@ tmp241, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	str	r7, [r4, #556]	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].rpr_ref_pic_type
	str	r7, [r4, #564]	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	beq	.L11	@,
	mov	r3, r10	@, VdhId
	mov	r2, r7	@, tmp207
	mov	r1, r6	@, pVc1DecParam
	mov	r0, r5	@, tmp201
	blx	ip	@ D.28834
	subs	r0, r0, r7	@ D.28828,,
	movne	r0, #1	@ D.28828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	mov	r0, r5	@ D.28828, tmp201
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L14:
	.align	2
.L13:
	.word	g_RepairParam
	.word	.LC0
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
	ldr	r3, .L19	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r4, #1144	@ tmp139,
	mla	r4, r4, r1, r3	@ tmp140, tmp139, VdhId, tmp137
	ldr	r2, [r0, #172]	@ pVp6DecParam_5(D)->image_curr_recon_addr, pVp6DecParam_5(D)->image_curr_recon_addr
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mov	r7, #0	@ tmp181,
	mov	r6, #1	@ tmp175,
	mov	r9, r1	@ VdhId, VdhId
	mov	r0, #22	@,
	ldr	r1, .L19+4	@,
	add	r8, r4, #24	@ tmp164, tmp140,
	str	r2, [r4, #4]	@ pVp6DecParam_5(D)->image_curr_recon_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	ldr	r2, [r5, #172]	@ pVp6DecParam_5(D)->image_curr_recon_addr, pVp6DecParam_5(D)->image_curr_recon_addr
	str	r2, [r4, #8]	@ pVp6DecParam_5(D)->image_curr_recon_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r2, [r5, #180]	@ pVp6DecParam_5(D)->image_last_ref_addr, pVp6DecParam_5(D)->image_last_ref_addr
	str	r2, [r4, #16]	@ pVp6DecParam_5(D)->image_last_ref_addr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	ldr	r2, [r5, #184]	@ pVp6DecParam_5(D)->CurPmvAddr, pVp6DecParam_5(D)->CurPmvAddr
	str	r2, [r4, #20]	@ pVp6DecParam_5(D)->CurPmvAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	r2, [r5, #52]	@ D.28841, pVp6DecParam_5(D)->PicWidthInMb
	str	r2, [r4, #24]	@ D.28841, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	ip, [r5, #54]	@ D.28841, pVp6DecParam_5(D)->PicHeightInMb
	str	r7, [r4, #36]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	str	r6, [r4, #32]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	mov	r3, ip	@, D.28841
	str	ip, [r4, #28]	@ D.28841, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r0, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	r1, .L19+8	@ tmp239,
	str	r6, [r4, #552]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	smulbb	r0, ip, r0	@ tmp214, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, [r1, #84]	@ D.28845, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r7, [r4, #40]	@ movhi	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r7, [r4, #556]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].rpr_ref_pic_type
	cmp	ip, r7	@ D.28845,
	sub	r0, r0, #1	@ tmp215, tmp214,
	strh	r0, [r4, #42]	@ movhi	@ tmp215, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	ldr	r3, [r5, #196]	@ D.28841, pVp6DecParam_5(D)->Compress_en
	str	r6, [r4, #568]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	str	r7, [r4, #564]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	str	r3, [r4, #560]	@ D.28841, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	beq	.L17	@,
	mov	r3, r9	@, VdhId
	mov	r2, r7	@, tmp181
	mov	r1, r5	@, pVp6DecParam
	mov	r0, #10	@,
	blx	ip	@ D.28845
	subs	r0, r0, r7	@ D.28839,,
	movne	r0, #1	@ D.28839,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L17:
	mov	r0, r6	@ D.28839, tmp175
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L20:
	.align	2
.L19:
	.word	g_RepairParam
	.word	.LC0
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
	ldr	r2, [r1, #8]	@ D.28857, pDecReport_15(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28857, D.28857,
	cmp	r3, #127	@ D.28857,
	bhi	.L42	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.28857, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.28857,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.28857,
	uxth	r8, r5	@ D.28859, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.28859, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28859, pDecReport_15(D)->SliceMbRange
	bne	.L43	@,
.L24:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.32, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.28858, total_mbn, tmp6
	b	.L33	@
.L47:
	cmp	r2, lr	@ D.28859, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.28859, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L25	@,
	cmp	r2, r7	@ D.28859, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.28858, old_slice_end_mbn,
	cmp	r4, r2	@ D.28858, D.28859
	beq	.L29	@,
	add	r6, r6, r6, lsr #31	@ tmp262, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp263, D.28859,
	cmp	r6, r10	@ tmp262, tmp263
	bge	.L29	@,
	ldr	r4, [r0, #552]	@ D.28858, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.28858,
	bgt	.L44	@,
	sub	r7, r7, #100	@ tmp261, old_slice_end_mbn,
	sxth	fp, r6	@ D.28858, tmp262
	cmp	r7, fp	@ tmp261, D.28858
	add	fp, r0, r4, lsl #2	@ D.28863, pRepairParam, D.28858,
	add	r4, r4, #1	@ D.28858, D.28858,
	strh	r6, [fp, #40]	@ movhi	@ tmp262, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp263, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	str	r4, [r0, #552]	@ D.28858, pRepairParam_19(D)->ValidGroupNum
.L29:
	ldr	r4, [r1, #8]	@ D.28866, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.28857, D.28866,
	cmp	r6, ip	@ D.28857, i
	beq	.L45	@,
.L35:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.28866
	mov	r6, r2	@ old_slice_end_mbn, D.28859
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	bhi	.L46	@,
.L33:
	ldrh	r2, [r3, #12]	@ D.28859, MEM[base: _111, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _111, offset: 14B]
	cmp	r2, r5	@ D.28859, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L47	@,
.L25:
	ldr	r4, [r1, #8]	@ D.28866, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	cmp	ip, r4	@ i, D.28866
	bls	.L33	@,
.L46:
	mov	r3, #0	@ D.28856,
.L40:
	mov	r0, r3	@, D.28856
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L45:
	add	r6, r1, ip, lsl #2	@ tmp253, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28859, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.28859, D.28858
	bge	.L35	@,
	ldr	r3, [r0, #552]	@ D.28858, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.28858,
	bgt	.L48	@,
	add	r1, r0, r3, lsl #2	@ D.28863, pRepairParam, D.28858,
	add	r2, r3, #1	@ D.28858, D.28858,
	sub	r8, r8, #1	@ tmp258, D.28859,
	mov	r3, #0	@ D.28856,
	strh	r8, [r1, #42]	@ movhi	@ tmp258, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28859, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 40B]
	str	r2, [r0, #552]	@ D.28858, pRepairParam_19(D)->ValidGroupNum
	b	.L40	@
.L43:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.28858, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.28858, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.28858, D.28858
	subge	r2, r8, #1	@ tmp221, D.28859,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L24	@
.L42:
	ldr	r1, .L49	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28856,
	mov	r0, r3	@, D.28856
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L44:
	mov	r2, #1012	@,
	ldr	r1, .L49+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28856,
	b	.L40	@
.L48:
	movw	r2, #1043	@,
	ldr	r1, .L49+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28856,
	b	.L40	@
.L50:
	.align	2
.L49:
	.word	.LC1
	.word	.LC2
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
	sub	r3, r3, #1	@ D.28878, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28878,
	bhi	.L65	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28878, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.41, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28878,
	add	r9, r5, r6	@ D.28879, total_mbn,
	uxth	r8, r5	@ D.28880, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28880, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28880, pDecReport_13(D)->SliceMbRange
	b	.L60	@
.L69:
	cmp	ip, r6	@ D.28880, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28879, old_slice_end_mbn,
	cmp	r6, ip	@ D.28879, D.28880
	beq	.L56	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28880,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L56	@,
	ldr	r2, [r0, #552]	@ D.28879, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28879,
	bgt	.L66	@,
	add	r10, r0, r2, lsl #2	@ D.28884, pRepairParam, D.28879,
	add	r2, r2, #1	@ D.28879, D.28879,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28879, pRepairParam_17(D)->ValidGroupNum
.L56:
	ldr	r2, [r1, #8]	@ D.28887, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28878, D.28887,
	cmp	r6, lr	@ D.28878, i
	beq	.L67	@,
.L62:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28887
	mov	r7, ip	@ old_slice_end_mbn, D.28880
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	bhi	.L68	@,
.L60:
	ldrh	ip, [r3, #12]	@ D.28880, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28880, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28880, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L69	@,
	ldr	r2, [r1, #8]	@ D.28887, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	cmp	lr, r2	@ i, D.28887
	bls	.L60	@,
.L68:
	mov	r3, #0	@ D.28877,
.L53:
	mov	r0, r3	@, D.28877
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L67:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28880, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28880, D.28879
	bge	.L62	@,
	ldr	r3, [r0, #552]	@ D.28879, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28879,
	bgt	.L70	@,
	add	r1, r0, r3, lsl #2	@ D.28884, pRepairParam, D.28879,
	add	r2, r3, #1	@ D.28879, D.28879,
	sub	r8, r8, #1	@ tmp206, D.28880,
	mov	r3, #0	@ D.28877,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28880, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28879, pRepairParam_17(D)->ValidGroupNum
	b	.L53	@
.L65:
	ldr	r1, .L71	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28877,
	mov	r0, r3	@, D.28877
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L66:
	movw	r2, #1107	@,
	ldr	r1, .L71+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28877,
	b	.L53	@
.L70:
	movw	r2, #1127	@,
	ldr	r1, .L71+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28877,
	b	.L53	@
.L72:
	.align	2
.L71:
	.word	.LC3
	.word	.LC2
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
	sub	r3, r3, #1	@ D.28898, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28898,
	bhi	.L87	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28898, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.49, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28898,
	add	r9, r5, r6	@ D.28899, total_mbn,
	uxth	r8, r5	@ D.28900, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28900, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28900, pDecReport_13(D)->SliceMbRange
	b	.L82	@
.L91:
	cmp	ip, r6	@ D.28900, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28899, old_slice_end_mbn,
	cmp	r6, ip	@ D.28899, D.28900
	beq	.L78	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28900,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L78	@,
	ldr	r2, [r0, #552]	@ D.28899, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28899,
	bgt	.L88	@,
	add	r10, r0, r2, lsl #2	@ D.28904, pRepairParam, D.28899,
	add	r2, r2, #1	@ D.28899, D.28899,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28899, pRepairParam_17(D)->ValidGroupNum
.L78:
	ldr	r2, [r1, #8]	@ D.28907, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28898, D.28907,
	cmp	r6, lr	@ D.28898, i
	beq	.L89	@,
.L84:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28907
	mov	r7, ip	@ old_slice_end_mbn, D.28900
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	bhi	.L90	@,
.L82:
	ldrh	ip, [r3, #12]	@ D.28900, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28900, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28900, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L91	@,
	ldr	r2, [r1, #8]	@ D.28907, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	cmp	lr, r2	@ i, D.28907
	bls	.L82	@,
.L90:
	mov	r3, #0	@ D.28897,
.L75:
	mov	r0, r3	@, D.28897
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L89:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28900, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28900, D.28899
	bge	.L84	@,
	ldr	r3, [r0, #552]	@ D.28899, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28899,
	bgt	.L92	@,
	add	r1, r0, r3, lsl #2	@ D.28904, pRepairParam, D.28899,
	add	r2, r3, #1	@ D.28899, D.28899,
	sub	r8, r8, #1	@ tmp206, D.28900,
	mov	r3, #0	@ D.28897,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28900, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28899, pRepairParam_17(D)->ValidGroupNum
	b	.L75	@
.L87:
	ldr	r1, .L93	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28897,
	mov	r0, r3	@, D.28897
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L88:
	movw	r2, #1192	@,
	ldr	r1, .L93+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28897,
	b	.L75	@
.L92:
	movw	r2, #1212	@,
	ldr	r1, .L93+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28897,
	b	.L75	@
.L94:
	.align	2
.L93:
	.word	.LC3
	.word	.LC2
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
	sub	r3, r3, #1	@ D.28917, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28917,
	bhi	.L109	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp167,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp167, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp167
	str	r3, [r0, #568]	@ tmp167, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28917, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.57, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.28917,
	add	r9, r5, r6	@ D.28918, total_mbn,
	uxth	r8, r5	@ D.28919, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.28919, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28919, pDecReport_13(D)->SliceMbRange
	b	.L104	@
.L113:
	cmp	ip, r6	@ D.28919, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28918, old_slice_end_mbn,
	cmp	r6, ip	@ D.28918, D.28919
	beq	.L100	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.28919,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L100	@,
	ldr	r2, [r0, #552]	@ D.28918, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.28918,
	bgt	.L110	@,
	add	r10, r0, r2, lsl #2	@ D.28923, pRepairParam, D.28918,
	add	r2, r2, #1	@ D.28918, D.28918,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.28918, pRepairParam_17(D)->ValidGroupNum
.L100:
	ldr	r2, [r1, #8]	@ D.28926, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28917, D.28926,
	cmp	r6, lr	@ D.28917, i
	beq	.L111	@,
.L106:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28926
	mov	r7, ip	@ old_slice_end_mbn, D.28919
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	bhi	.L112	@,
.L104:
	ldrh	ip, [r3, #12]	@ D.28919, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.28919, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.28919, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L113	@,
	ldr	r2, [r1, #8]	@ D.28926, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	cmp	lr, r2	@ i, D.28926
	bls	.L104	@,
.L112:
	mov	r3, #0	@ D.28916,
.L97:
	mov	r0, r3	@, D.28916
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L111:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28919, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28919, D.28918
	bge	.L106	@,
	ldr	r3, [r0, #552]	@ D.28918, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.28918,
	bgt	.L114	@,
	add	r1, r0, r3, lsl #2	@ D.28923, pRepairParam, D.28918,
	add	r2, r3, #1	@ D.28918, D.28918,
	sub	r8, r8, #1	@ tmp206, D.28919,
	mov	r3, #0	@ D.28916,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28919, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.28918, pRepairParam_17(D)->ValidGroupNum
	b	.L97	@
.L109:
	ldr	r1, .L115	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28916,
	mov	r0, r3	@, D.28916
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L110:
	movw	r2, #1276	@,
	ldr	r1, .L115+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28916,
	b	.L97	@
.L114:
	mov	r2, #1296	@,
	ldr	r1, .L115+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28916,
	b	.L97	@
.L116:
	.align	2
.L115:
	.word	.LC3
	.word	.LC2
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
	ldr	r2, [r1, #8]	@ D.28937, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28937, D.28937,
	cmp	r3, #127	@ D.28937,
	bhi	.L129	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28937, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28937,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.65, pDecReport
	add	r5, r4, r7	@ D.28938, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28938, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28939, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28939, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28939, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28938, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28938, %sfp
	b	.L124	@
.L132:
	cmp	r2, r7	@ D.28939, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28938, old_slice_end_mbn,
	cmp	r2, r7	@ D.28939, D.28938
	ble	.L122	@,
	ldr	r7, [r8, #552]	@ D.28938, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.28941, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28941, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28941, D.28939
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28943, pRepairParam, D.28938,
	add	r7, r7, #1	@ D.28938, D.28938,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.28938, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L122	@,
	ldr	r5, [sp, #8]	@ D.28938, %sfp
	cmp	r2, r5	@ D.28939, D.28938
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L122:
	ldr	r5, [r1, #8]	@ D.28945, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28937, D.28945,
	cmp	r6, ip	@ D.28937, i
	beq	.L130	@,
.L126:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28945
	mov	r6, r2	@ old_slice_end_mbn, D.28939
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	bhi	.L131	@,
.L124:
	ldrh	r2, [r3, #12]	@ D.28939, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.28939, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28939, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L132	@,
	ldr	r5, [r1, #8]	@ D.28945, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	cmp	ip, r5	@ i, D.28945
	bls	.L124	@,
.L131:
	mov	r3, #0	@ D.28936,
.L119:
	mov	r0, r3	@, D.28936
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L130:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28938, %sfp
	ldrh	r6, [r6, #14]	@ D.28939, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28939, D.28938
	bge	.L126	@,
	ldr	r2, [r0, #552]	@ D.28938, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28939,
	mov	r3, #0	@ D.28936,
	add	r1, r2, #1	@ D.28938, D.28938,
	add	r2, r0, r2, lsl #2	@ D.28943, pRepairParam, D.28938,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28939, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.28938, pRepairParam_23(D)->ValidGroupNum
	b	.L119	@
.L129:
	ldr	r1, .L133	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28936,
	mov	r0, r3	@, D.28936
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L134:
	.align	2
.L133:
	.word	.LC1
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
	ldr	r2, [r1, #8]	@ D.28957, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.28957, D.28957,
	cmp	r3, #3	@ D.28957,
	bhi	.L147	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28957, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28957,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.73, pDecReport
	add	r5, r4, r7	@ D.28958, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28958, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28959, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28959, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28959, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28958, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28958, %sfp
	b	.L142	@
.L150:
	cmp	r2, r7	@ D.28959, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28958, old_slice_end_mbn,
	cmp	r2, r7	@ D.28959, D.28958
	ble	.L140	@,
	ldr	r7, [r8, #552]	@ D.28958, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.28961, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28961, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28961, D.28959
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28963, pRepairParam, D.28958,
	add	r7, r7, #1	@ D.28958, D.28958,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.28958, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L140	@,
	ldr	r5, [sp, #8]	@ D.28958, %sfp
	cmp	r2, r5	@ D.28959, D.28958
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L140:
	ldr	r5, [r1, #8]	@ D.28965, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28957, D.28965,
	cmp	r6, ip	@ D.28957, i
	beq	.L148	@,
.L144:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28965
	mov	r6, r2	@ old_slice_end_mbn, D.28959
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	bhi	.L149	@,
.L142:
	ldrh	r2, [r3, #12]	@ D.28959, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.28959, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28959, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L150	@,
	ldr	r5, [r1, #8]	@ D.28965, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	cmp	ip, r5	@ i, D.28965
	bls	.L142	@,
.L149:
	mov	r3, #0	@ D.28956,
.L137:
	mov	r0, r3	@, D.28956
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L148:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28958, %sfp
	ldrh	r6, [r6, #14]	@ D.28959, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28959, D.28958
	bge	.L144	@,
	ldr	r2, [r0, #552]	@ D.28958, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28959,
	mov	r3, #0	@ D.28956,
	add	r1, r2, #1	@ D.28958, D.28958,
	add	r2, r0, r2, lsl #2	@ D.28963, pRepairParam, D.28958,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28959, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.28958, pRepairParam_23(D)->ValidGroupNum
	b	.L137	@
.L147:
	ldr	r1, .L151	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.28956,
	mov	r0, r3	@, D.28956
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L152:
	.align	2
.L151:
	.word	.LC1
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
	bls	.L166	@,
	mov	r7, #1	@ i,
.L158:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.28985, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.81, pDecReport
	b	.L159	@
.L157:
	ldrh	r1, [r3, #12]	@ D.28983, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.28983, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.28983, D.28983
	bls	.L156	@,
	ldrh	r6, [r3, #14]	@ D.28983, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.28983, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.28983, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.28983, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L156:
	add	r3, r3, #4	@ ivtmp.81, ivtmp.81,
.L159:
	cmp	r2, lr	@ j, D.28985
	add	r2, r2, #1	@ j, j,
	bne	.L157	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L158	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L166:
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
	ldr	r6, [r1, #8]	@ D.29020, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.29020, D.29020,
	cmp	r1, #127	@ D.29020,
	bhi	.L205	@,
	ldr	r7, [r0, #24]	@ D.29021, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.29021
	uxtheq	r7, r5	@ D.29016, total_mbn
	bne	.L206	@,
.L171:
	mov	lr, #0	@ tmp423,
	str	lr, [r10, #552]	@ tmp423, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp423, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.29020, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.29021, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.97, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp426, pDecReport, D.29020,
	strh	r7, [r0, #14]	@ movhi	@ D.29016, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.29016, pDecReport_26(D)->SliceMbRange
	b	.L188	@
.L210:
	cmp	r1, r6	@ D.29016, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.29021, old_slice_end_mbn,
	cmp	r1, r3	@ D.29016, D.29021
	ble	.L183	@,
	ldr	r3, [r10, #552]	@ D.29021, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.29021,
	bgt	.L207	@,
	add	r8, r8, r8, lsr #31	@ tmp449, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.29028, pRepairParam, D.29021,
	sub	r6, r6, #100	@ tmp477, old_slice_end_mbn,
	add	r3, r3, #1	@ D.29021, D.29021,
	sxth	r4, r8	@ D.29021, tmp449
	strh	r8, [ip, #40]	@ movhi	@ tmp449, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	cmp	r6, r4	@ tmp477, D.29021
	sub	r4, r1, #1	@ tmp450, D.29016,
	strgth	r6, [ip, #40]	@ movhi	@ tmp477, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp450, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 42B]
	str	r3, [r10, #552]	@ D.29021, pRepairParam_30(D)->ValidGroupNum
.L183:
	ldr	r3, [fp, #8]	@ D.29022, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.29020, D.29022,
	cmp	ip, lr	@ D.29020, i
	beq	.L208	@,
.L195:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.29022, i
	mov	r8, r1	@ old_slice_end_mbn, D.29016
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	bcc	.L209	@,
.L188:
	ldrh	r1, [r2, #12]	@ D.29016, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.29016, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp435,
	movle	r3, #0	@ tmp435,
	cmp	r1, r0	@ D.29016, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp441, tmp435
	cmp	r3, #0	@ tmp441,
	beq	.L210	@,
	ldr	r3, [fp, #8]	@ D.29022, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	cmp	r3, lr	@ D.29022, i
	bcs	.L188	@,
.L209:
	mov	r0, #0	@ D.29018,
.L198:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L208:
	add	ip, fp, lr, lsl #2	@ tmp457, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.29016, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.29016, D.29021
	bge	.L195	@,
	ldr	r3, [r10, #552]	@ D.29021, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.29021,
	bgt	.L211	@,
	add	r2, r10, r3, lsl #2	@ D.29028, pRepairParam, D.29021,
	sub	r7, r7, #1	@ tmp462, D.29016,
	add	r3, r3, #1	@ D.29021, D.29021,
	mov	r0, #0	@ D.29018,
	strh	r7, [r2, #42]	@ movhi	@ tmp462, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.29016, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 40B]
	str	r3, [r10, #552]	@ D.29021, pRepairParam_30(D)->ValidGroupNum
	b	.L198	@
.L206:
	cmp	r6, #0	@ D.29020,
	mov	r7, r7, asl #1	@ D.29021, D.29021,
	beq	.L174	@,
	add	r3, sp, #24	@ tmp534,,
	mov	r6, r6, asl #2	@ D.29014, D.29020,
	add	r4, fp, r6	@ D.29014, pDecReport, D.29014
	mov	r2, fp	@ ivtmp.115, pDecReport
	mov	r1, r3	@ ivtmp.116, tmp534
	str	r3, [sp, #4]	@ tmp534, %sfp
.L173:
	ldrh	r0, [r2, #12]	@ MEM[base: _47, offset: 12B], MEM[base: _47, offset: 12B]
	add	r2, r2, #4	@ ivtmp.115, ivtmp.115,
	ldrh	r3, [r2, #10]	@ MEM[base: _47, offset: 14B], MEM[base: _47, offset: 14B]
	cmp	r2, r4	@ ivtmp.115, D.29014
	add	r1, r1, #4	@ ivtmp.116, ivtmp.116,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _47, offset: 12B], MEM[base: _23, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _47, offset: 14B], MEM[base: _23, offset: 2B]
	bne	.L173	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.29021,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp288, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.29016, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.29016, SliceMbRange_Tmp
	uxth	r8, r8	@ D.29017, tmp288
	strh	r8, [sp, #24]	@ movhi	@ D.29017, SliceMbRange_Tmp
	beq	.L193	@,
	sub	r3, r7, #2	@ D.29020, D.29021,
	sub	r6, r6, #4	@ D.29023, D.29014,
	add	r2, sp, #24	@ tmp533,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.29014, tmp533, D.29023
	mov	r5, r3	@ D.29020, D.29020
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.29014, %sfp
	uxth	r2, r7	@ D.29016, D.29021
	str	r2, [sp, #16]	@ D.29016, %sfp
.L189:
	mov	r1, r7	@, D.29021
	mov	r0, r8	@, D.29017
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.29016
	mov	r4, r1	@ tmp307,
	cmp	r4, #1	@ tmp307,
	mov	r1, r7	@, D.29021
	bls	.L175	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.29020, tmp312
	bls	.L176	@,
	str	r1, [sp, #12]	@ tmp312, %sfp
	mov	r0, r8	@, D.29017
	mov	r1, r7	@, D.29021
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp307,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.29021
	mov	r8, r0	@ tmp316,
	mov	r0, r9	@, D.29016
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp312, %sfp
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp312,
	cmp	r0, r8	@ tmp319, tmp316
	mov	r3, r0	@ tmp319,
	beq	.L177	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.29015, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp321, tmp316, tmp515
	uxth	r1, r1	@ D.29016, tmp321
	add	r4, r1, r4	@ tmp323, D.29016, mbsurplus0
	uxth	ip, r4	@ D.29016, tmp323
	strh	ip, [lr, #12]	@ movhi	@ D.29016, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp330, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp332, D.29016, tmp330
	strh	r1, [lr, #14]	@ movhi	@ tmp332, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp339, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.29016, mbsurplus1
	smulbb	r3, r3, r1	@ tmp337, tmp319, tmp516
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp335, D.29016, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp335, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 16B]
	uxth	r3, r3	@ D.29016, tmp337
	add	r0, r2, r3	@ tmp341, D.29016, D.29016
	strh	r0, [r9, #14]	@ movhi	@ tmp341, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp346, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp344, D.29016, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.29016, tmp344
	strh	r3, [lr, #20]	@ movhi	@ D.29016, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 20B]
	add	r2, r3, r2	@ tmp348, D.29016, D.29016
	strh	r2, [r1, #14]	@ movhi	@ tmp348, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
.L179:
	ldr	r3, [sp, #4]	@ ivtmp.108, %sfp
	ldr	r2, [sp, #8]	@ D.29014, %sfp
	cmp	r3, r2	@ ivtmp.108, D.29014
	beq	.L212	@,
	ldr	r3, [sp, #4]	@ ivtmp.108, %sfp
	add	r3, r3, #4	@ ivtmp.108, ivtmp.108,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp467, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp467, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.29016, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.29016, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.108, %sfp
	b	.L189	@
.L176:
	mov	r1, r7	@, D.29021
	mov	r0, r8	@, D.29017
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.29015, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp373,, D.29021
	uxth	r0, r0	@ D.29016, tmp373
	add	r4, r0, r4, lsr #1	@ tmp376, D.29016, tmp307,
	uxth	r4, r4	@ D.29016, tmp376
	strh	r4, [r2, #12]	@ movhi	@ D.29016, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp383, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp385, D.29016, tmp383
	strh	r0, [r2, #14]	@ movhi	@ tmp385, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp390, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp388, D.29016, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp388, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.29016, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
.L203:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp471,
	str	r1, [fp, #8]	@ tmp471, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.29016, total_mbn
	sub	r2, r7, #1	@ tmp474, D.29016,
	strh	r2, [fp, #14]	@ movhi	@ tmp474, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp473,
	strh	r2, [fp, #12]	@ movhi	@ tmp473, pDecReport_26(D)->SliceMbRange
.L191:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L171	@
.L175:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.29020, tmp396
	bls	.L180	@,
	add	r4, fp, r6, lsl #2	@ D.29015, pDecReport, j,
	str	r1, [sp, #12]	@ tmp396, %sfp
	mov	r0, r9	@, D.29016
	mov	r1, r7	@, D.29021
	strh	r8, [r4, #12]	@ movhi	@ D.29017, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ tmp396, %sfp
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	ubfx	r1, r3, #1, #16	@ D.29016, tmp396,,
	smulbb	r0, r0, r7	@ tmp404,, D.29021
	uxth	r0, r0	@ D.29016, tmp404
	add	r3, r1, r0	@ tmp409, D.29016, D.29016
	strh	r3, [r4, #14]	@ movhi	@ tmp409, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp414, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp412, D.29016, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.29016, tmp412
	strh	r3, [r4, #16]	@ movhi	@ D.29016, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp416, D.29016, D.29016
	strh	r3, [ip, #14]	@ movhi	@ tmp416, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L180:
	add	r2, fp, r6, lsl #2	@ tmp419, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.29017, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.29016, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L177:
	smulbb	r3, r0, r7	@ tmp350, tmp319, D.29021
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.29015, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.29016, tmp350
	add	r4, r3, r4	@ tmp352, D.29016, mbsurplus0
	add	r2, r3, r2	@ tmp355, D.29016, mbsurplus1
	uxth	r4, r4	@ D.29016, tmp352
	uxth	r2, r2	@ D.29016, tmp355
	strh	r4, [lr, #12]	@ movhi	@ D.29016, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.29016, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp363, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp361, D.29016, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp361, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp367, D.29016, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp367, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L193:
	mov	r6, r7	@ j, D.29021
.L174:
	uxth	r7, r5	@ D.29016, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L191	@
.L205:
	mov	r2, r6	@, D.29020
	ldr	r1, .L213	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.29018,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L212:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L174	@
.L207:
	mov	r2, #904	@,
	ldr	r1, .L213+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.29018,
	b	.L198	@
.L211:
	movw	r2, #933	@,
	ldr	r1, .L213+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.29018,
	b	.L198	@
.L214:
	.align	2
.L213:
	.word	.LC1
	.word	.LC2
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
	mov	r7, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp348,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_20(D)->VidStd
	str	r3, [r1, #552]	@ tmp348, pRepairParam_20(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp348, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L216	@
.L218:
	.word	.L217
	.word	.L219
	.word	.L220
	.word	.L221
	.word	.L216
	.word	.L222
	.word	.L223
	.word	.L216
	.word	.L216
	.word	.L216
	.word	.L224
	.word	.L224
	.word	.L224
	.word	.L225
.L225:
	ldr	r2, [r2, #3116]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr
	mov	r3, #0	@ tmp504,
	mov	ip, #1	@ tmp503,
	mov	r1, r7	@, pDecReport
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
	str	ip, [r4, #32]	@ tmp503, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp504, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp504, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #3140]	@ D.29068, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetVp8MbGroup	@
.L244:
	ldr	r2, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	mov	r8, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_20(D)->ImageWidth, pRepairParam_20(D)->ImageWidth
	ldr	r6, [r4, #28]	@ pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_20(D)->ValidGroupNum,
	mul	r6, r6, r3	@ total_mbs, pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageWidth
	ble	.L253	@,
	mov	r5, r4	@ ivtmp.131, pRepairParam
	mov	r9, r8	@ i, err_mbs
.L254:
	ldrsh	r3, [r5, #40]	@, MEM[base: _363, offset: 40B]
	mov	r0, #22	@,
	ldrsh	r2, [r5, #42]	@, MEM[base: _363, offset: 42B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, .L287	@,
	add	r5, r5, #4	@ ivtmp.131, ivtmp.131,
	bl	dprint_vfmw	@
	ldrsh	r3, [r5, #38]	@ D.29068, MEM[base: _363, offset: 42B]
	ldrsh	r2, [r5, #36]	@ D.29068, MEM[base: _363, offset: 40B]
	ldr	r1, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	rsb	r3, r2, r3	@ D.29068, D.29068, D.29068
	cmp	r1, r9	@ pRepairParam_20(D)->ValidGroupNum, i
	add	r3, r3, #1	@ D.29068, D.29068,
	add	r8, r8, r3	@ err_mbs, err_mbs, D.29068
	bgt	.L254	@,
.L253:
	ldr	r1, [r4, #1124]	@ D.29068, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
	cmp	r1, #0	@ D.29068,
	ble	.L255	@,
	add	r0, r4, #612	@ ivtmp.123, pRepairParam,
	mov	r3, #0	@ i,
	add	r0, r0, #2	@ ivtmp.123, ivtmp.123,
.L256:
	ldrsh	ip, [r0]	@ D.29068, MEM[base: _368, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r2, [r0, #-2]	@ D.29068, MEM[base: _368, offset: 4294967294B]
	cmp	r3, r1	@ i, D.29068
	add	r0, r0, #4	@ ivtmp.123, ivtmp.123,
	rsb	ip, r2, ip	@ D.29068, D.29068, D.29068
	add	ip, ip, #1	@ D.29068, D.29068,
	add	r8, r8, ip	@ err_mbs, err_mbs, D.29068
	bne	.L256	@,
.L255:
	cmp	r6, #0	@ total_mbs,
	moveq	r4, r6	@ err_ratio, total_mbs
	beq	.L257	@,
	mov	r0, #100	@ tmp525,
	mov	r1, r6	@, total_mbs
	mul	r0, r0, r8	@, tmp525, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio
.L257:
	mov	r3, r8	@, err_mbs
	mov	r2, r6	@, total_mbs
	mov	r0, #0	@ tmp529,
	ldr	r1, .L287+4	@,
	str	r0, [r7, #8]	@ tmp529, pDecReport_67(D)->DecSliceNum
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L217:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp352, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp354, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp354, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice
	ldr	r0, [r3, #1640]	@ ref_img_idc, _33->declist[0][0].img_idc
	add	r3, r2, r0, lsl #2	@ tmp358, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp360, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #16]	@ tmp360, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp361, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp363, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].PmvPhyAddr
	str	r3, [r1, #20]	@ tmp363, pRepairParam_20(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb
	str	r3, [r1, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, pRepairParam_20(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb
	str	r3, [r1, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clz	r3, r3	@ D.29066, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.29066, D.29066,
	str	r3, [r1, #32]	@ D.29066, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	clz	r3, r3	@ D.29066, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.29066, D.29066,
	str	r3, [r1, #36]	@ D.29066, pRepairParam_20(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.29067, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ApcSize
	cmp	ip, #0	@ D.29067,
	beq	.L226	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId
	cmp	r3, r0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, ref_img_idc
	addne	r2, r2, #1312	@ ivtmp.147, pDecParam,
	movne	r3, #0	@ i,
	addne	r2, r2, #8	@ ivtmp.147, ivtmp.147,
	bne	.L229	@,
	b	.L283	@
.L230:
	ldr	r1, [r2, #4]!	@ MEM[base: _316, offset: 0B], MEM[base: _316, offset: 0B]
	cmp	r1, r0	@ MEM[base: _316, offset: 0B], ref_img_idc
	beq	.L227	@,
.L229:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.29067
	bne	.L230	@,
.L226:
	ldr	r2, [r5, #32]	@ D.29067, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag
	cmp	r2, #0	@ D.29067,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clzne	r2, r2	@ D.29067, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.29067, D.29067,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag,
	streq	r3, [r7, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, pDecReport_67(D)->DecSliceNum
	bne	.L284	@,
.L233:
	ldr	r0, [r4, #4]	@ D.29068, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_20(D)->RefImageAddr, pRepairParam_20(D)->RefImageAddr
	cmp	r0, r3	@ D.29068, pRepairParam_20(D)->RefImageAddr
	beq	.L285	@,
.L234:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.29065, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	cmp	r3, #0	@ D.29065,
	beq	.L243	@,
	cmp	r3, #1	@ D.29065,
	beq	.L280	@,
	cmp	r3, #2	@ D.29065,
	beq	.L280	@,
	cmp	r3, #3	@ D.29065,
	bne	.L240	@,
.L243:
	mov	r3, #0	@ tmp384,
	str	r3, [r4, #564]	@ tmp384, pRepairParam_20(D)->Pic_type
.L240:
	ldr	r3, [r5, #1384]	@ D.29068, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	b	.L244	@
.L219:
	add	r6, r2, #77824	@ tmp533, pDecParam,
	add	r3, r2, #12288	@ tmp457, pDecParam,
	mov	r8, #0	@ tmp475,
	mov	r1, r7	@, pDecReport
	ldr	r2, [r6, #216]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d
	mov	r0, r4	@, pRepairParam
	str	r2, [r4, #4]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ystaddr_1d, pRepairParam_20(D)->ImageAddr
	ldr	r2, [r3, #96]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr
	str	r2, [r4, #8]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurFrmImgLuma2dPhyAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r2, [r3, #100]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr
	str	r2, [r4, #16]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].FwdRefAddr, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r3, #108]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr
	str	r3, [r4, #20]	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].CurrColmbAddr, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r3, [r5, #78]	@ D.29068, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbwidth
	add	r3, r3, #1	@ D.29068, D.29068,
	str	r3, [r4, #24]	@ D.29068, pRepairParam_20(D)->ImageWidth
	ldrh	r3, [r5, #80]	@ D.29068, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbheight
	add	r3, r3, #1	@ D.29068, D.29068,
	str	r3, [r4, #28]	@ D.29068, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	str	r8, [r4, #36]	@ tmp475, pRepairParam_20(D)->ImageCSP
	tst	r3, #253	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	moveq	r3, #1	@ D.29066,
	movne	r3, r8	@ D.29066,
	str	r3, [r4, #32]	@ D.29066, pRepairParam_20(D)->IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	r2, [r4, #32]	@ pRepairParam_20(D)->IsFrame, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #68]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type
	cmp	r2, #1	@ pRepairParam_20(D)->IsFrame,
	streq	r8, [r4, #564]	@ tmp475, pRepairParam_20(D)->Pic_type
	and	r3, r3, #3	@ tmp479, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type,
	str	r3, [r4, #556]	@ tmp479, pRepairParam_20(D)->rpr_ref_pic_type
	beq	.L251	@,
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	cmp	r3, #3	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	beq	.L286	@,
.L251:
	ldr	r3, [r6, #272]	@ D.29068, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	b	.L244	@
.L220:
	ldr	ip, [r2, #212]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r3, r2, #12288	@ tmp404, pDecParam,
	mov	lr, #1	@ tmp410,
	mov	r2, #0	@ tmp411,
	mov	r1, r7	@, pDecReport
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
	str	lr, [r4, #32]	@ tmp410, pRepairParam_20(D)->IsFrame
	str	r2, [r4, #36]	@ tmp411, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r2, [r4, #564]	@ tmp411, pRepairParam_20(D)->Pic_type
	ldr	r3, [r3, #2372]	@ D.29068, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L244	@
.L221:
	ldr	r3, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r2, #0	@ tmp396,
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
	str	r2, [r1, #36]	@ tmp396, pRepairParam_20(D)->ImageCSP
	sub	r3, r3, #3	@ D.29066, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure,
	clz	r3, r3	@ D.29066, D.29066
	mov	r3, r3, lsr #5	@ D.29066, D.29066,
	str	r3, [r1, #32]	@ D.29066, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ D.29065, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure
	cmp	r3, #1	@ D.29065,
	beq	.L281	@,
	cmp	r3, #2	@ D.29065,
	beq	.L281	@,
	cmp	r3, #3	@ D.29065,
	streq	r2, [r1, #564]	@ tmp396, pRepairParam_20(D)->Pic_type
.L246:
	add	r5, r5, #45056	@ tmp401, pDecParam,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.29068, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L244	@
.L222:
	ldr	r2, [r2, #128]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r3, #0	@ tmp451,
	mov	ip, #1	@ tmp450,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r2, [r4, #4]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	r2, [r5, #124]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	r2, [r4, #16]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	r2, [r5, #148]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	r2, [r4, #20]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	r2, [r5, #8]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r2, [r4, #24]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	r2, [r5, #12]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	ip, [r4, #32]	@ tmp450, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp451, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp451, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #156]	@ D.29068, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L244	@
.L223:
	add	r2, r2, #12288	@ tmp532, pDecParam,
	mov	lr, #0	@ tmp427,
	ldr	r3, [r2, #2152]	@ D.29067, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPicAddr
	str	r3, [r1, #4]	@ D.29067, pRepairParam_20(D)->ImageAddr
	ldr	r1, [r2, #2164]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address
	str	r1, [r4, #8]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, pRepairParam_20(D)->Image2DAddr
	ldr	r10, [r2, #2144]	@ D.29068, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPic0Addr
	str	r10, [r4, #16]	@ D.29068, pRepairParam_20(D)->RefImageAddr
	ldr	r6, [r2, #2156]	@ D.29067, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr
	str	r6, [r4, #20]	@ D.29067, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r8, [r5, #48]	@ D.29068, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r8, [r4, #24]	@ D.29068, pRepairParam_20(D)->ImageWidth
	ldrh	r0, [r5, #50]	@ D.29068, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	r0, [r4, #28]	@ D.29068, pRepairParam_20(D)->ImageHeight
	mov	r9, r0, lsr #1	@ D.29068, D.29068,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	str	lr, [r4, #36]	@ tmp427, pRepairParam_20(D)->ImageCSP
	sub	r1, r1, #3	@ D.29066, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct,
	clz	r1, r1	@ D.29066, D.29066
	mov	r1, r1, lsr #5	@ D.29066, D.29066,
	str	r1, [r4, #32]	@ D.29066, pRepairParam_20(D)->IsFrame
	ldr	ip, [r7, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r10, [r4, #588]	@ D.29068, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].RefImageAddr
	add	ip, ip, r3	@ D.29067, pDecReport_67(D)->ImgStride, D.29067
	str	ip, [r4, #576]	@ D.29067, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageAddr
	ldr	r3, [r7, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r1, [r4, #604]	@ D.29066, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].IsFrame
	str	r0, [r4, #600]	@ D.29068, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageHeight
	add	r3, r3, r3, lsl #3	@ D.29067, pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride,
	str	r8, [r4, #596]	@ D.29068, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageWidth
	str	lr, [r4, #608]	@ tmp427, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageCSP
	mla	r3, r9, r3, r6	@ D.29067, D.29068, D.29067, D.29067
	str	r3, [r4, #592]	@ D.29067, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.29065, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	cmp	r3, #3	@ D.29065,
	streq	lr, [r4, #564]	@ tmp427, pRepairParam_20(D)->Pic_type
	beq	.L249	@,
	cmp	r3, #1	@ D.29065,
	streq	r3, [r4, #564]	@ D.29065, pRepairParam_20(D)->Pic_type
.L249:
	ldr	r3, [r2, #2580]	@ D.29068, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L244	@
.L224:
	ldr	r3, [r2, #172]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr
	mov	r6, #0	@ tmp494,
	mov	r2, #1	@ tmp493,
	mov	r1, r7	@, pDecReport
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
	str	r2, [r4, #32]	@ tmp493, pRepairParam_20(D)->IsFrame
	str	r6, [r4, #36]	@ tmp494, pRepairParam_20(D)->ImageCSP
	str	r3, [r4, #28]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r6, [r4, #556]	@ tmp494, pRepairParam_20(D)->rpr_ref_pic_type
	str	r6, [r4, #564]	@ tmp494, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #196]	@ D.29068, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29068, pRepairParam_20(D)->Compress_en
	b	.L244	@
.L216:
	mov	r3, #648	@,
	ldr	r2, .L287+8	@,
	ldr	r1, .L287+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L244	@
.L283:
	mov	r3, #0	@ i,
.L227:
	add	r3, r3, #312	@ tmp375, i,
	add	r3, r3, #2	@ tmp375, tmp375,
	ldr	r3, [r5, r3, asl #2]	@ tmp376, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicType
	str	r3, [r4, #556]	@ tmp376, pRepairParam_20(D)->rpr_ref_pic_type
	b	.L226	@
.L281:
	str	r3, [r4, #564]	@ D.29065, pRepairParam_20(D)->Pic_type
	b	.L246	@
.L280:
	str	r3, [r4, #564]	@ D.29065, pRepairParam_20(D)->Pic_type
	b	.L240	@
.L284:
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L233	@
.L285:
	ldr	ip, [r5, #820]	@ D.29067, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgSlotNum
	cmp	ip, #0	@ D.29067,
	beq	.L234	@,
	ldr	r2, [r5, #308]	@ D.29067, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	cmp	r0, r2	@ D.29068, D.29067
	addeq	r1, r5, #308	@ ivtmp.136, pDecParam,
	moveq	r3, #0	@ i,
	bne	.L235	@,
.L237:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.29067
	beq	.L234	@,
	ldr	r2, [r1, #4]!	@ D.29067, MEM[base: _337, offset: 0B]
	cmp	r2, r0	@ D.29067, D.29068
	beq	.L237	@,
.L235:
	str	r2, [r4, #16]	@ D.29067, pRepairParam_20(D)->RefImageAddr
	b	.L234	@
.L286:
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.29065, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].curparity
	cmp	r3, #0	@ D.29065,
	moveq	r3, #1	@ tmp483,
	streq	r3, [r4, #564]	@ tmp483, pRepairParam_20(D)->Pic_type
	beq	.L251	@,
	cmp	r3, #1	@ D.29065,
	moveq	r3, #2	@ tmp484,
	streq	r3, [r4, #564]	@ tmp484, pRepairParam_20(D)->Pic_type
	b	.L251	@
.L288:
	.align	2
.L287:
	.word	.LC5
	.word	.LC6
	.word	.LANCHOR0
	.word	.LC4
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
	ldr	r6, .L293	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L293+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L293+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.29081, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.29081,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L290	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.29081
.L291:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	ldr	r1, .L293+12	@,
	mov	r4, r0	@ err_ratio,
	mov	r2, r0	@, err_ratio
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L290:
	mov	r0, r6	@, D.29081
	mov	r2, #54	@,
	ldr	r1, .L293+16	@,
	bl	dprint_vfmw	@
	b	.L291	@
.L294:
	.align	2
.L293:
	.word	g_vdm_hal_fun_ptr
	.word	g_RepairParam
	.word	g_DecReport
	.word	.LC8
	.word	.LC7
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
	ldr	r5, .L297	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L297+4	@ tmp141,
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
.L298:
	.align	2
.L297:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.27829, %object
	.size	__func__.27829, 23
__func__.27829:
	.ascii	"PostPro_GetRepairParam\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pRepairParam->ImageWidth=%d,pRepairParam->ImageHeig"
	.ascii	"ht=%d\012\000"
	.space	2
.LC1:
	.ascii	"DecSliceNum(=%d) out of range!\012\000"
.LC2:
	.ascii	"line:%d! pRepairParam->ValidGroupNum > (MAX_UP_MSG_"
	.ascii	"SLICE_NUM - 1)\012\000"
	.space	1
.LC3:
	.ascii	"DecSliceNum out of range!\012\000"
	.space	1
.LC4:
	.ascii	"%s %d VidStd Err!\012\000"
	.space	1
.LC5:
	.ascii	"pRepairParam[0].MbGroup[i].EndMbn=%d,pRepairParam[0"
	.ascii	"].MbGroup[i].StartMbn=%d\012\000"
	.space	3
.LC6:
	.ascii	"total_mbs=%d,err_mbs=%d\012\000"
	.space	3
.LC7:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC8:
	.ascii	"err_ratio=%d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
