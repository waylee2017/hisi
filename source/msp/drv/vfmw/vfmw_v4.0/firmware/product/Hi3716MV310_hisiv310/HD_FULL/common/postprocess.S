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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
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
	ldr	lr, [r3, #2300]	@ D.28988, pMp4DecParam_5(D)->DispFramePhyAddr
	ldr	r9, [r3, #2312]	@ pMp4DecParam_5(D)->VahbStride, pMp4DecParam_5(D)->VahbStride
	mov	r2, #0	@ tmp185,
	ldr	r8, [r3, #2372]	@ pMp4DecParam_5(D)->Compress_en, pMp4DecParam_5(D)->Compress_en
	ldr	r4, .L7+4	@ tmp227,
	add	r7, ip, #32	@ tmp178, tmp136,
	add	r6, ip, #560	@ tmp211, tmp136,
	str	r9, [ip, #12]	@ pMp4DecParam_5(D)->VahbStride, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].VahbStride
	str	lr, [ip, #4]	@ D.28988, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageAddr
	str	lr, [ip, #8]	@ D.28988, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Image2DAddr
	ldr	r3, [r0, #216]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, pMp4DecParam_5(D)->FwdRefPicPhyAddr
	ldr	r5, [r4, #84]	@ D.28992, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	mov	r4, #1	@ tmp179,
	str	r3, [ip, #16]	@ pMp4DecParam_5(D)->FwdRefPicPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].RefImageAddr
	cmp	r5, r2	@ D.28992,
	ldr	r3, [r0, #224]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, pMp4DecParam_5(D)->CurPmvPhyAddr
	str	r3, [ip, #20]	@ pMp4DecParam_5(D)->CurPmvPhyAddr, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].CurrPmvAddr
	ldrh	lr, [r0, #164]	@ D.28989, pMp4DecParam_5(D)->PicWidthInMb
	str	lr, [ip, #24]	@ D.28989, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r0, #166]	@ D.28989, pMp4DecParam_5(D)->PicHeightInMb
	str	r8, [ip, #560]	@ pMp4DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	str	r2, [ip, #36]	@ tmp185, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	smulbb	lr, r3, lr	@ tmp205, D.28989, D.28989
	str	r3, [ip, #28]	@ D.28989, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
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
	blx	r5	@ D.28992
	adds	r0, r0, #0	@ D.28986,,
	movne	r0, #1	@ D.28986,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L4:
	mov	r0, r4	@ D.28986, tmp179
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
	ldrh	r2, [r6, #78]	@ D.28998, pVc1DecParam_5(D)->mbwidth
	ldr	r1, .L13+4	@,
	add	r2, r2, r5	@ D.28998, D.28998,
	str	r2, [r4, #24]	@ D.28998, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	r3, [r6, #76]	@ D.28998, pVc1DecParam_5(D)->DispPicHeight
	str	r7, [r4, #36]	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	adds	ip, r3, #15	@ D.28998, D.28998,
	str	r5, [r4, #32]	@ tmp201, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	addmi	ip, r3, #30	@, D.28998, D.28998,
	mov	ip, ip, asr #4	@ D.28998, D.28998,
	add	ip, ip, r5	@ D.28998, D.28998,
	add	ip, ip, ip, lsr #31	@ tmp189, D.28998, D.28998,
	bic	r3, ip, #1	@ D.28998, tmp189,
	str	r3, [r4, #28]	@ D.28998, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	dprint_vfmw	@
	ldr	lr, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r3, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, .L13+8	@ tmp268,
	ldr	r0, [r8, #272]	@ pVc1DecParam_5(D)->Compress_en, pVc1DecParam_5(D)->Compress_en
	smulbb	r3, lr, r3	@ tmp240, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, [ip, #84]	@ D.29002, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	str	r0, [r4, #560]	@ pVc1DecParam_5(D)->Compress_en, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	cmp	ip, r7	@ D.29002,
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
	blx	ip	@ D.29002
	subs	r0, r0, r7	@ D.28996,,
	movne	r0, #1	@ D.28996,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	mov	r0, r5	@ D.28996, tmp201
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
	ldrh	r2, [r5, #52]	@ D.29009, pVp6DecParam_5(D)->PicWidthInMb
	str	r2, [r4, #24]	@ D.29009, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldrh	ip, [r5, #54]	@ D.29009, pVp6DecParam_5(D)->PicHeightInMb
	str	r7, [r4, #36]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageCSP
	str	r6, [r4, #32]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].IsFrame
	mov	r3, ip	@, D.29009
	str	ip, [r4, #28]	@ D.29009, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	bl	dprint_vfmw	@
	ldr	ip, [r4, #28]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight
	ldr	r0, [r4, #24]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	r1, .L19+8	@ tmp239,
	str	r6, [r4, #552]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ValidGroupNum
	smulbb	r0, ip, r0	@ tmp214, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageHeight, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].ImageWidth
	ldr	ip, [r1, #84]	@ D.29013, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	strh	r7, [r4, #40]	@ movhi	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].StartMbn
	str	r7, [r4, #556]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].rpr_ref_pic_type
	cmp	ip, r7	@ D.29013,
	sub	r0, r0, #1	@ tmp215, tmp214,
	strh	r0, [r4, #42]	@ movhi	@ tmp215, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].MbGroup[0].EndMbn
	ldr	r3, [r5, #196]	@ D.29009, pVp6DecParam_5(D)->Compress_en
	str	r6, [r4, #568]	@ tmp175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].FullRepair
	str	r7, [r4, #564]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Pic_type
	str	r3, [r4, #560]	@ D.29009, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_3(D)][0].Compress_en
	beq	.L17	@,
	mov	r3, r9	@, VdhId
	mov	r2, r7	@, tmp181
	mov	r1, r5	@, pVp6DecParam
	mov	r0, #10	@,
	blx	ip	@ D.29013
	subs	r0, r0, r7	@ D.29007,,
	movne	r0, #1	@ D.29007,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L17:
	mov	r0, r6	@ D.29007, tmp175
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
	ldr	r2, [r1, #8]	@ D.29025, pDecReport_15(D)->DecSliceNum
	sub	r3, r2, #1	@ D.29025, D.29025,
	cmp	r3, #127	@ D.29025,
	bhi	.L42	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.29025, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.29025,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.29025,
	uxth	r8, r5	@ D.29027, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.29027, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.29027, pDecReport_15(D)->SliceMbRange
	bne	.L43	@,
.L24:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.32, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.29026, total_mbn, tmp6
	b	.L33	@
.L47:
	cmp	r2, lr	@ D.29027, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.29027, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L25	@,
	cmp	r2, r7	@ D.29027, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.29026, old_slice_end_mbn,
	cmp	r4, r2	@ D.29026, D.29027
	beq	.L29	@,
	add	r6, r6, r6, lsr #31	@ tmp262, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp263, D.29027,
	cmp	r6, r10	@ tmp262, tmp263
	bge	.L29	@,
	ldr	r4, [r0, #552]	@ D.29026, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.29026,
	bgt	.L44	@,
	sub	r7, r7, #100	@ tmp261, old_slice_end_mbn,
	sxth	fp, r6	@ D.29026, tmp262
	cmp	r7, fp	@ tmp261, D.29026
	add	fp, r0, r4, lsl #2	@ D.29031, pRepairParam, D.29026,
	add	r4, r4, #1	@ D.29026, D.29026,
	strh	r6, [fp, #40]	@ movhi	@ tmp262, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp263, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_101 + 40B]
	str	r4, [r0, #552]	@ D.29026, pRepairParam_19(D)->ValidGroupNum
.L29:
	ldr	r4, [r1, #8]	@ D.29034, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.29025, D.29034,
	cmp	r6, ip	@ D.29025, i
	beq	.L45	@,
.L35:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.29034
	mov	r6, r2	@ old_slice_end_mbn, D.29027
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	bhi	.L46	@,
.L33:
	ldrh	r2, [r3, #12]	@ D.29027, MEM[base: _111, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _111, offset: 14B]
	cmp	r2, r5	@ D.29027, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L47	@,
.L25:
	ldr	r4, [r1, #8]	@ D.29034, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	cmp	ip, r4	@ i, D.29034
	bls	.L33	@,
.L46:
	mov	r3, #0	@ D.29024,
.L40:
	mov	r0, r3	@, D.29024
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L45:
	add	r6, r1, ip, lsl #2	@ tmp253, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.29027, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.29027, D.29026
	bge	.L35	@,
	ldr	r3, [r0, #552]	@ D.29026, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.29026,
	bgt	.L48	@,
	add	r1, r0, r3, lsl #2	@ D.29031, pRepairParam, D.29026,
	add	r2, r3, #1	@ D.29026, D.29026,
	sub	r8, r8, #1	@ tmp258, D.29027,
	mov	r3, #0	@ D.29024,
	strh	r8, [r1, #42]	@ movhi	@ tmp258, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.29027, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_107 + 40B]
	str	r2, [r0, #552]	@ D.29026, pRepairParam_19(D)->ValidGroupNum
	b	.L40	@
.L43:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.29026, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.29026, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.29026, D.29026
	subge	r2, r8, #1	@ tmp221, D.29027,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L24	@
.L42:
	ldr	r1, .L49	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29024,
	mov	r0, r3	@, D.29024
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L44:
	mov	r2, #1012	@,
	ldr	r1, .L49+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29024,
	b	.L40	@
.L48:
	movw	r2, #1043	@,
	ldr	r1, .L49+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29024,
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
	sub	r3, r3, #1	@ D.29046, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.29046,
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
	ldr	r2, [r1, #8]	@ D.29046, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.41, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.29046,
	add	r9, r5, r6	@ D.29047, total_mbn,
	uxth	r8, r5	@ D.29048, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.29048, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.29048, pDecReport_13(D)->SliceMbRange
	b	.L60	@
.L69:
	cmp	ip, r6	@ D.29048, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.29047, old_slice_end_mbn,
	cmp	r6, ip	@ D.29047, D.29048
	beq	.L56	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.29048,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L56	@,
	ldr	r2, [r0, #552]	@ D.29047, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.29047,
	bgt	.L66	@,
	add	r10, r0, r2, lsl #2	@ D.29052, pRepairParam, D.29047,
	add	r2, r2, #1	@ D.29047, D.29047,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.29047, pRepairParam_17(D)->ValidGroupNum
.L56:
	ldr	r2, [r1, #8]	@ D.29055, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.29046, D.29055,
	cmp	r6, lr	@ D.29046, i
	beq	.L67	@,
.L62:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.29055
	mov	r7, ip	@ old_slice_end_mbn, D.29048
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	bhi	.L68	@,
.L60:
	ldrh	ip, [r3, #12]	@ D.29048, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.29048, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.29048, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L69	@,
	ldr	r2, [r1, #8]	@ D.29055, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.41, ivtmp.41,
	cmp	lr, r2	@ i, D.29055
	bls	.L60	@,
.L68:
	mov	r3, #0	@ D.29045,
.L53:
	mov	r0, r3	@, D.29045
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L67:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.29048, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.29048, D.29047
	bge	.L62	@,
	ldr	r3, [r0, #552]	@ D.29047, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.29047,
	bgt	.L70	@,
	add	r1, r0, r3, lsl #2	@ D.29052, pRepairParam, D.29047,
	add	r2, r3, #1	@ D.29047, D.29047,
	sub	r8, r8, #1	@ tmp206, D.29048,
	mov	r3, #0	@ D.29045,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.29048, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.29047, pRepairParam_17(D)->ValidGroupNum
	b	.L53	@
.L65:
	ldr	r1, .L71	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29045,
	mov	r0, r3	@, D.29045
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L66:
	movw	r2, #1107	@,
	ldr	r1, .L71+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29045,
	b	.L53	@
.L70:
	movw	r2, #1127	@,
	ldr	r1, .L71+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29045,
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
	sub	r3, r3, #1	@ D.29066, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.29066,
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
	ldr	r2, [r1, #8]	@ D.29066, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.49, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.29066,
	add	r9, r5, r6	@ D.29067, total_mbn,
	uxth	r8, r5	@ D.29068, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.29068, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.29068, pDecReport_13(D)->SliceMbRange
	b	.L82	@
.L91:
	cmp	ip, r6	@ D.29068, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.29067, old_slice_end_mbn,
	cmp	r6, ip	@ D.29067, D.29068
	beq	.L78	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.29068,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L78	@,
	ldr	r2, [r0, #552]	@ D.29067, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.29067,
	bgt	.L88	@,
	add	r10, r0, r2, lsl #2	@ D.29072, pRepairParam, D.29067,
	add	r2, r2, #1	@ D.29067, D.29067,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.29067, pRepairParam_17(D)->ValidGroupNum
.L78:
	ldr	r2, [r1, #8]	@ D.29075, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.29066, D.29075,
	cmp	r6, lr	@ D.29066, i
	beq	.L89	@,
.L84:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.29075
	mov	r7, ip	@ old_slice_end_mbn, D.29068
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	bhi	.L90	@,
.L82:
	ldrh	ip, [r3, #12]	@ D.29068, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.29068, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.29068, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L91	@,
	ldr	r2, [r1, #8]	@ D.29075, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.49, ivtmp.49,
	cmp	lr, r2	@ i, D.29075
	bls	.L82	@,
.L90:
	mov	r3, #0	@ D.29065,
.L75:
	mov	r0, r3	@, D.29065
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L89:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.29068, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.29068, D.29067
	bge	.L84	@,
	ldr	r3, [r0, #552]	@ D.29067, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.29067,
	bgt	.L92	@,
	add	r1, r0, r3, lsl #2	@ D.29072, pRepairParam, D.29067,
	add	r2, r3, #1	@ D.29067, D.29067,
	sub	r8, r8, #1	@ tmp206, D.29068,
	mov	r3, #0	@ D.29065,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.29068, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.29067, pRepairParam_17(D)->ValidGroupNum
	b	.L75	@
.L87:
	ldr	r1, .L93	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29065,
	mov	r0, r3	@, D.29065
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L88:
	movw	r2, #1192	@,
	ldr	r1, .L93+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29065,
	b	.L75	@
.L92:
	movw	r2, #1212	@,
	ldr	r1, .L93+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29065,
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
	sub	r3, r3, #1	@ D.29085, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.29085,
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
	ldr	r2, [r1, #8]	@ D.29085, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.57, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp172, pDecReport, D.29085,
	add	r9, r5, r6	@ D.29086, total_mbn,
	uxth	r8, r5	@ D.29087, total_mbn
	mov	r2, ip	@ tmp176, tmp172
	strh	r8, [ip, #14]	@ movhi	@ D.29087, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.29087, pDecReport_13(D)->SliceMbRange
	b	.L104	@
.L113:
	cmp	ip, r6	@ D.29087, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.29086, old_slice_end_mbn,
	cmp	r6, ip	@ D.29086, D.29087
	beq	.L100	@,
	add	r7, r7, r7, lsr #31	@ tmp210, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp209, D.29087,
	cmp	r7, r6	@ tmp210, tmp209
	bge	.L100	@,
	ldr	r2, [r0, #552]	@ D.29086, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.29086,
	bgt	.L110	@,
	add	r10, r0, r2, lsl #2	@ D.29091, pRepairParam, D.29086,
	add	r2, r2, #1	@ D.29086, D.29086,
	strh	r7, [r10, #40]	@ movhi	@ tmp210, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp209, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_73 + 42B]
	str	r2, [r0, #552]	@ D.29086, pRepairParam_17(D)->ValidGroupNum
.L100:
	ldr	r2, [r1, #8]	@ D.29094, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.29085, D.29094,
	cmp	r6, lr	@ D.29085, i
	beq	.L111	@,
.L106:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.29094
	mov	r7, ip	@ old_slice_end_mbn, D.29087
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	bhi	.L112	@,
.L104:
	ldrh	ip, [r3, #12]	@ D.29087, MEM[base: _87, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _87, offset: 14B]
	cmp	ip, r5	@ D.29087, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp181,
	movle	r2, #0	@ tmp181,
	cmp	ip, r4	@ D.29087, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp187, tmp181
	cmp	r2, #0	@ tmp187,
	beq	.L113	@,
	ldr	r2, [r1, #8]	@ D.29094, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.57, ivtmp.57,
	cmp	lr, r2	@ i, D.29094
	bls	.L104	@,
.L112:
	mov	r3, #0	@ D.29084,
.L97:
	mov	r0, r3	@, D.29084
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L111:
	add	r6, r1, lr, lsl #2	@ tmp201, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.29087, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.29087, D.29086
	bge	.L106	@,
	ldr	r3, [r0, #552]	@ D.29086, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.29086,
	bgt	.L114	@,
	add	r1, r0, r3, lsl #2	@ D.29091, pRepairParam, D.29086,
	add	r2, r3, #1	@ D.29086, D.29086,
	sub	r8, r8, #1	@ tmp206, D.29087,
	mov	r3, #0	@ D.29084,
	strh	r8, [r1, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.29087, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_83 + 40B]
	str	r2, [r0, #552]	@ D.29086, pRepairParam_17(D)->ValidGroupNum
	b	.L97	@
.L109:
	ldr	r1, .L115	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29084,
	mov	r0, r3	@, D.29084
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L110:
	movw	r2, #1276	@,
	ldr	r1, .L115+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29084,
	b	.L97	@
.L114:
	mov	r2, #1296	@,
	ldr	r1, .L115+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29084,
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
	ldr	r2, [r1, #8]	@ D.29105, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.29105, D.29105,
	cmp	r3, #127	@ D.29105,
	bhi	.L129	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.29105, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.29105,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.65, pDecReport
	add	r5, r4, r7	@ D.29106, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.29106, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.29107, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.29107, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.29107, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.29106, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.29106, %sfp
	b	.L124	@
.L132:
	cmp	r2, r7	@ D.29107, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.29106, old_slice_end_mbn,
	cmp	r2, r7	@ D.29107, D.29106
	ble	.L122	@,
	ldr	r7, [r8, #552]	@ D.29106, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.29109, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.29109, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.29109, D.29107
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.29111, pRepairParam, D.29106,
	add	r7, r7, #1	@ D.29106, D.29106,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.29106, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L122	@,
	ldr	r5, [sp, #8]	@ D.29106, %sfp
	cmp	r2, r5	@ D.29107, D.29106
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L122:
	ldr	r5, [r1, #8]	@ D.29113, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.29105, D.29113,
	cmp	r6, ip	@ D.29105, i
	beq	.L130	@,
.L126:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.29113
	mov	r6, r2	@ old_slice_end_mbn, D.29107
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	bhi	.L131	@,
.L124:
	ldrh	r2, [r3, #12]	@ D.29107, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.29107, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.29107, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L132	@,
	ldr	r5, [r1, #8]	@ D.29113, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.65, ivtmp.65,
	cmp	ip, r5	@ i, D.29113
	bls	.L124	@,
.L131:
	mov	r3, #0	@ D.29104,
.L119:
	mov	r0, r3	@, D.29104
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L130:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.29106, %sfp
	ldrh	r6, [r6, #14]	@ D.29107, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.29107, D.29106
	bge	.L126	@,
	ldr	r2, [r0, #552]	@ D.29106, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.29107,
	mov	r3, #0	@ D.29104,
	add	r1, r2, #1	@ D.29106, D.29106,
	add	r2, r0, r2, lsl #2	@ D.29111, pRepairParam, D.29106,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.29107, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.29106, pRepairParam_23(D)->ValidGroupNum
	b	.L119	@
.L129:
	ldr	r1, .L133	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29104,
	mov	r0, r3	@, D.29104
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
	ldr	r2, [r1, #8]	@ D.29125, pDecReport_19(D)->DecSliceNum
	sub	r3, r2, #1	@ D.29125, D.29125,
	cmp	r3, #3	@ D.29125,
	bhi	.L147	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.29125, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.29125,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.73, pDecReport
	add	r5, r4, r7	@ D.29126, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.29126, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.29127, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.29127, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.29127, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.29126, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.29126, %sfp
	b	.L142	@
.L150:
	cmp	r2, r7	@ D.29127, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.29126, old_slice_end_mbn,
	cmp	r2, r7	@ D.29127, D.29126
	ble	.L140	@,
	ldr	r7, [r8, #552]	@ D.29126, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.29129, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.29129, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.29129, D.29127
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.29131, pRepairParam, D.29126,
	add	r7, r7, #1	@ D.29126, D.29126,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.29126, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L140	@,
	ldr	r5, [sp, #8]	@ D.29126, %sfp
	cmp	r2, r5	@ D.29127, D.29126
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L140:
	ldr	r5, [r1, #8]	@ D.29133, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.29125, D.29133,
	cmp	r6, ip	@ D.29125, i
	beq	.L148	@,
.L144:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.29133
	mov	r6, r2	@ old_slice_end_mbn, D.29127
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	bhi	.L149	@,
.L142:
	ldrh	r2, [r3, #12]	@ D.29127, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.29127, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.29127, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L150	@,
	ldr	r5, [r1, #8]	@ D.29133, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.73, ivtmp.73,
	cmp	ip, r5	@ i, D.29133
	bls	.L142	@,
.L149:
	mov	r3, #0	@ D.29124,
.L137:
	mov	r0, r3	@, D.29124
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L148:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.29126, %sfp
	ldrh	r6, [r6, #14]	@ D.29127, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.29127, D.29126
	bge	.L144	@,
	ldr	r2, [r0, #552]	@ D.29126, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.29127,
	mov	r3, #0	@ D.29124,
	add	r1, r2, #1	@ D.29126, D.29126,
	add	r2, r0, r2, lsl #2	@ D.29131, pRepairParam, D.29126,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.29127, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.29126, pRepairParam_23(D)->ValidGroupNum
	b	.L137	@
.L147:
	ldr	r1, .L151	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #1	@ D.29124,
	mov	r0, r3	@, D.29124
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
	rsb	lr, r7, r8	@ D.29153, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.81, pDecReport
	b	.L159	@
.L157:
	ldrh	r1, [r3, #12]	@ D.29151, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.29151, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.29151, D.29151
	bls	.L156	@,
	ldrh	r6, [r3, #14]	@ D.29151, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.29151, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.29151, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.29151, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L156:
	add	r3, r3, #4	@ ivtmp.81, ivtmp.81,
.L159:
	cmp	r2, lr	@ j, D.29153
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
	ldr	r6, [r1, #8]	@ D.29188, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.29188, D.29188,
	cmp	r1, #127	@ D.29188,
	bhi	.L205	@,
	ldr	r7, [r0, #24]	@ D.29189, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.29189
	uxtheq	r7, r5	@ D.29184, total_mbn
	bne	.L206	@,
.L171:
	mov	lr, #0	@ tmp423,
	str	lr, [r10, #552]	@ tmp423, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp423, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.29188, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.29189, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.97, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp426, pDecReport, D.29188,
	strh	r7, [r0, #14]	@ movhi	@ D.29184, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.29184, pDecReport_26(D)->SliceMbRange
	b	.L188	@
.L210:
	cmp	r1, r6	@ D.29184, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.29189, old_slice_end_mbn,
	cmp	r1, r3	@ D.29184, D.29189
	ble	.L183	@,
	ldr	r3, [r10, #552]	@ D.29189, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.29189,
	bgt	.L207	@,
	add	r8, r8, r8, lsr #31	@ tmp449, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.29196, pRepairParam, D.29189,
	sub	r6, r6, #100	@ tmp477, old_slice_end_mbn,
	add	r3, r3, #1	@ D.29189, D.29189,
	sxth	r4, r8	@ D.29189, tmp449
	strh	r8, [ip, #40]	@ movhi	@ tmp449, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	cmp	r6, r4	@ tmp477, D.29189
	sub	r4, r1, #1	@ tmp450, D.29184,
	strgth	r6, [ip, #40]	@ movhi	@ tmp477, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp450, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_280 + 42B]
	str	r3, [r10, #552]	@ D.29189, pRepairParam_30(D)->ValidGroupNum
.L183:
	ldr	r3, [fp, #8]	@ D.29190, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.29188, D.29190,
	cmp	ip, lr	@ D.29188, i
	beq	.L208	@,
.L195:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.29190, i
	mov	r8, r1	@ old_slice_end_mbn, D.29184
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	bcc	.L209	@,
.L188:
	ldrh	r1, [r2, #12]	@ D.29184, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.29184, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp435,
	movle	r3, #0	@ tmp435,
	cmp	r1, r0	@ D.29184, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp441, tmp435
	cmp	r3, #0	@ tmp441,
	beq	.L210	@,
	ldr	r3, [fp, #8]	@ D.29190, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.97, ivtmp.97,
	cmp	r3, lr	@ D.29190, i
	bcs	.L188	@,
.L209:
	mov	r0, #0	@ D.29186,
.L198:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L208:
	add	ip, fp, lr, lsl #2	@ tmp457, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.29184, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.29184, D.29189
	bge	.L195	@,
	ldr	r3, [r10, #552]	@ D.29189, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.29189,
	bgt	.L211	@,
	add	r2, r10, r3, lsl #2	@ D.29196, pRepairParam, D.29189,
	sub	r7, r7, #1	@ tmp462, D.29184,
	add	r3, r3, #1	@ D.29189, D.29189,
	mov	r0, #0	@ D.29186,
	strh	r7, [r2, #42]	@ movhi	@ tmp462, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.29184, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_274 + 40B]
	str	r3, [r10, #552]	@ D.29189, pRepairParam_30(D)->ValidGroupNum
	b	.L198	@
.L206:
	cmp	r6, #0	@ D.29188,
	mov	r7, r7, asl #1	@ D.29189, D.29189,
	beq	.L174	@,
	add	r3, sp, #24	@ tmp534,,
	mov	r6, r6, asl #2	@ D.29182, D.29188,
	add	r4, fp, r6	@ D.29182, pDecReport, D.29182
	mov	r2, fp	@ ivtmp.115, pDecReport
	mov	r1, r3	@ ivtmp.116, tmp534
	str	r3, [sp, #4]	@ tmp534, %sfp
.L173:
	ldrh	r0, [r2, #12]	@ MEM[base: _47, offset: 12B], MEM[base: _47, offset: 12B]
	add	r2, r2, #4	@ ivtmp.115, ivtmp.115,
	ldrh	r3, [r2, #10]	@ MEM[base: _47, offset: 14B], MEM[base: _47, offset: 14B]
	cmp	r2, r4	@ ivtmp.115, D.29182
	add	r1, r1, #4	@ ivtmp.116, ivtmp.116,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _47, offset: 12B], MEM[base: _23, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _47, offset: 14B], MEM[base: _23, offset: 2B]
	bne	.L173	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.29189,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp288, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.29184, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.29184, SliceMbRange_Tmp
	uxth	r8, r8	@ D.29185, tmp288
	strh	r8, [sp, #24]	@ movhi	@ D.29185, SliceMbRange_Tmp
	beq	.L193	@,
	sub	r3, r7, #2	@ D.29188, D.29189,
	sub	r6, r6, #4	@ D.29191, D.29182,
	add	r2, sp, #24	@ tmp533,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.29182, tmp533, D.29191
	mov	r5, r3	@ D.29188, D.29188
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.29182, %sfp
	uxth	r2, r7	@ D.29184, D.29189
	str	r2, [sp, #16]	@ D.29184, %sfp
.L189:
	mov	r1, r7	@, D.29189
	mov	r0, r8	@, D.29185
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.29184
	mov	r4, r1	@ tmp307,
	cmp	r4, #1	@ tmp307,
	mov	r1, r7	@, D.29189
	bls	.L175	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.29188, tmp312
	bls	.L176	@,
	str	r1, [sp, #12]	@ tmp312, %sfp
	mov	r0, r8	@, D.29185
	mov	r1, r7	@, D.29189
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp307,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.29189
	mov	r8, r0	@ tmp316,
	mov	r0, r9	@, D.29184
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp312, %sfp
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp312,
	cmp	r0, r8	@ tmp319, tmp316
	mov	r3, r0	@ tmp319,
	beq	.L177	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.29183, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp321, tmp316, tmp515
	uxth	r1, r1	@ D.29184, tmp321
	add	r4, r1, r4	@ tmp323, D.29184, mbsurplus0
	uxth	ip, r4	@ D.29184, tmp323
	strh	ip, [lr, #12]	@ movhi	@ D.29184, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp330, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp332, D.29184, tmp330
	strh	r1, [lr, #14]	@ movhi	@ tmp332, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp339, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.29184, mbsurplus1
	smulbb	r3, r3, r1	@ tmp337, tmp319, tmp516
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp335, D.29184, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp335, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 16B]
	uxth	r3, r3	@ D.29184, tmp337
	add	r0, r2, r3	@ tmp341, D.29184, D.29184
	strh	r0, [r9, #14]	@ movhi	@ tmp341, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp346, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp344, D.29184, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.29184, tmp344
	strh	r3, [lr, #20]	@ movhi	@ D.29184, MEM[(struct VDMHAL_DEC_REPORT_S *)_267 + 20B]
	add	r2, r3, r2	@ tmp348, D.29184, D.29184
	strh	r2, [r1, #14]	@ movhi	@ tmp348, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
.L179:
	ldr	r3, [sp, #4]	@ ivtmp.108, %sfp
	ldr	r2, [sp, #8]	@ D.29182, %sfp
	cmp	r3, r2	@ ivtmp.108, D.29182
	beq	.L212	@,
	ldr	r3, [sp, #4]	@ ivtmp.108, %sfp
	add	r3, r3, #4	@ ivtmp.108, ivtmp.108,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp467, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp467, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.29184, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.29184, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.108, %sfp
	b	.L189	@
.L176:
	mov	r1, r7	@, D.29189
	mov	r0, r8	@, D.29185
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.29183, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp373,, D.29189
	uxth	r0, r0	@ D.29184, tmp373
	add	r4, r0, r4, lsr #1	@ tmp376, D.29184, tmp307,
	uxth	r4, r4	@ D.29184, tmp376
	strh	r4, [r2, #12]	@ movhi	@ D.29184, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp383, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp385, D.29184, tmp383
	strh	r0, [r2, #14]	@ movhi	@ tmp385, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp390, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp388, D.29184, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp388, MEM[(struct VDMHAL_DEC_REPORT_S *)_259 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.29184, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
.L203:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp471,
	str	r1, [fp, #8]	@ tmp471, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.29184, total_mbn
	sub	r2, r7, #1	@ tmp474, D.29184,
	strh	r2, [fp, #14]	@ movhi	@ tmp474, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp473,
	strh	r2, [fp, #12]	@ movhi	@ tmp473, pDecReport_26(D)->SliceMbRange
.L191:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L171	@
.L175:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.29188, tmp396
	bls	.L180	@,
	add	r4, fp, r6, lsl #2	@ D.29183, pDecReport, j,
	str	r1, [sp, #12]	@ tmp396, %sfp
	mov	r0, r9	@, D.29184
	mov	r1, r7	@, D.29189
	strh	r8, [r4, #12]	@ movhi	@ D.29185, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ tmp396, %sfp
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	ubfx	r1, r3, #1, #16	@ D.29184, tmp396,,
	smulbb	r0, r0, r7	@ tmp404,, D.29189
	uxth	r0, r0	@ D.29184, tmp404
	add	r3, r1, r0	@ tmp409, D.29184, D.29184
	strh	r3, [r4, #14]	@ movhi	@ tmp409, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp414, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp412, D.29184, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.29184, tmp412
	strh	r3, [r4, #16]	@ movhi	@ D.29184, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp416, D.29184, D.29184
	strh	r3, [ip, #14]	@ movhi	@ tmp416, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L180:
	add	r2, fp, r6, lsl #2	@ tmp419, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.29185, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.29184, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L177:
	smulbb	r3, r0, r7	@ tmp350, tmp319, D.29189
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.29183, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.29184, tmp350
	add	r4, r3, r4	@ tmp352, D.29184, mbsurplus0
	add	r2, r3, r2	@ tmp355, D.29184, mbsurplus1
	uxth	r4, r4	@ D.29184, tmp352
	uxth	r2, r2	@ D.29184, tmp355
	strh	r4, [lr, #12]	@ movhi	@ D.29184, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.29184, pDecReport_26(D)->SliceMbRange
	bhi	.L203	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp363, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp361, D.29184, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp361, MEM[(struct VDMHAL_DEC_REPORT_S *)_263 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp367, D.29184, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp367, pDecReport_26(D)->SliceMbRange
	bls	.L179	@,
	b	.L203	@
.L193:
	mov	r6, r7	@ j, D.29189
.L174:
	uxth	r7, r5	@ D.29184, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L191	@
.L205:
	mov	r2, r6	@, D.29188
	ldr	r1, .L213	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.29186,
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
	mov	r0, #1	@ D.29186,
	b	.L198	@
.L211:
	movw	r2, #933	@,
	ldr	r1, .L213+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.29186,
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
	mov	r3, #0	@ tmp370,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_20(D)->VidStd
	str	r3, [r1, #552]	@ tmp370, pRepairParam_20(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp370, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
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
	.word	.L224
	.word	.L225
	.word	.L226
	.word	.L226
	.word	.L226
	.word	.L227
.L227:
	ldr	r2, [r2, #3116]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].image_curr_rcn_addr
	mov	r3, #0	@ tmp546,
	mov	ip, #1	@ tmp545,
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
	str	ip, [r4, #32]	@ tmp545, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp546, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp546, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #3140]	@ D.29236, MEM[(struct VP8_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetVp8MbGroup	@
.L246:
	ldr	r2, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	mov	r8, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_20(D)->ImageWidth, pRepairParam_20(D)->ImageWidth
	ldr	r6, [r4, #28]	@ pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_20(D)->ValidGroupNum,
	mul	r6, r6, r3	@ total_mbs, pRepairParam_20(D)->ImageHeight, pRepairParam_20(D)->ImageWidth
	ble	.L255	@,
	mov	r5, r4	@ ivtmp.131, pRepairParam
	mov	r9, r8	@ i, err_mbs
.L256:
	ldrsh	r3, [r5, #40]	@, MEM[base: _409, offset: 40B]
	mov	r0, #22	@,
	ldrsh	r2, [r5, #42]	@, MEM[base: _409, offset: 42B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, .L289	@,
	add	r5, r5, #4	@ ivtmp.131, ivtmp.131,
	bl	dprint_vfmw	@
	ldrsh	r3, [r5, #38]	@ D.29236, MEM[base: _409, offset: 42B]
	ldrsh	r2, [r5, #36]	@ D.29236, MEM[base: _409, offset: 40B]
	ldr	r1, [r4, #552]	@ pRepairParam_20(D)->ValidGroupNum, pRepairParam_20(D)->ValidGroupNum
	rsb	r3, r2, r3	@ D.29236, D.29236, D.29236
	cmp	r1, r9	@ pRepairParam_20(D)->ValidGroupNum, i
	add	r3, r3, #1	@ D.29236, D.29236,
	add	r8, r8, r3	@ err_mbs, err_mbs, D.29236
	bgt	.L256	@,
.L255:
	ldr	r1, [r4, #1124]	@ D.29236, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ValidGroupNum
	cmp	r1, #0	@ D.29236,
	ble	.L257	@,
	add	r0, r4, #612	@ ivtmp.123, pRepairParam,
	mov	r3, #0	@ i,
	add	r0, r0, #2	@ ivtmp.123, ivtmp.123,
.L258:
	ldrsh	ip, [r0]	@ D.29236, MEM[base: _414, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r2, [r0, #-2]	@ D.29236, MEM[base: _414, offset: 4294967294B]
	cmp	r3, r1	@ i, D.29236
	add	r0, r0, #4	@ ivtmp.123, ivtmp.123,
	rsb	ip, r2, ip	@ D.29236, D.29236, D.29236
	add	ip, ip, #1	@ D.29236, D.29236,
	add	r8, r8, ip	@ err_mbs, err_mbs, D.29236
	bne	.L258	@,
.L257:
	cmp	r6, #0	@ total_mbs,
	moveq	r4, r6	@ err_ratio, total_mbs
	beq	.L259	@,
	mov	r0, #100	@ tmp567,
	mov	r1, r6	@, total_mbs
	mul	r0, r0, r8	@, tmp567, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r4, r0, r0, asr #31	@ err_ratio, err_ratio
.L259:
	mov	r3, r8	@, err_mbs
	mov	r2, r6	@, total_mbs
	mov	r0, #0	@ tmp571,
	ldr	r1, .L289+4	@,
	str	r0, [r7, #8]	@ tmp571, pDecReport_67(D)->DecSliceNum
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L217:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp374, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp376, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp376, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicImg2DAddr, pRepairParam_20(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pFirstSlice
	ldr	r0, [r3, #1640]	@ ref_img_idc, _33->declist[0][0].img_idc
	add	r3, r2, r0, lsl #2	@ tmp380, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp382, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	str	r3, [r1, #16]	@ tmp382, pRepairParam_20(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp383, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp385, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].PmvPhyAddr
	str	r3, [r1, #20]	@ tmp385, pRepairParam_20(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb
	str	r3, [r1, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_width_in_mb, pRepairParam_20(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb
	str	r3, [r1, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_height_in_mb, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clz	r3, r3	@ D.29234, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.29234, D.29234,
	str	r3, [r1, #32]	@ D.29234, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	clz	r3, r3	@ D.29234, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.29234, D.29234,
	str	r3, [r1, #36]	@ D.29234, pRepairParam_20(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.29235, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ApcSize
	cmp	ip, #0	@ D.29235,
	beq	.L228	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId
	cmp	r3, r0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicFsId, ref_img_idc
	addne	r2, r2, #1312	@ ivtmp.147, pDecParam,
	movne	r3, #0	@ i,
	addne	r2, r2, #8	@ ivtmp.147, ivtmp.147,
	bne	.L231	@,
	b	.L285	@
.L232:
	ldr	r1, [r2, #4]!	@ MEM[base: _378, offset: 0B], MEM[base: _378, offset: 0B]
	cmp	r1, r0	@ MEM[base: _378, offset: 0B], ref_img_idc
	beq	.L229	@,
.L231:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.29235
	bne	.L232	@,
.L228:
	ldr	r2, [r5, #32]	@ D.29235, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag
	cmp	r2, #0	@ D.29235,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	clzne	r2, r2	@ D.29235, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.29235, D.29235,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag,
	streq	r3, [r7, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].NewPicFlag, pDecReport_67(D)->DecSliceNum
	bne	.L286	@,
.L235:
	ldr	r0, [r4, #4]	@ D.29236, pRepairParam_20(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_20(D)->RefImageAddr, pRepairParam_20(D)->RefImageAddr
	cmp	r0, r3	@ D.29236, pRepairParam_20(D)->RefImageAddr
	beq	.L287	@,
.L236:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.29233, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].pic_structure
	cmp	r3, #0	@ D.29233,
	beq	.L245	@,
	cmp	r3, #1	@ D.29233,
	beq	.L282	@,
	cmp	r3, #2	@ D.29233,
	beq	.L282	@,
	cmp	r3, #3	@ D.29233,
	bne	.L242	@,
.L245:
	mov	r3, #0	@ tmp406,
	str	r3, [r4, #564]	@ tmp406, pRepairParam_20(D)->Pic_type
.L242:
	ldr	r3, [r5, #1384]	@ D.29236, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	b	.L246	@
.L219:
	add	r6, r2, #77824	@ tmp575, pDecParam,
	add	r3, r2, #12288	@ tmp499, pDecParam,
	mov	r8, #0	@ tmp517,
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
	ldrh	r3, [r5, #78]	@ D.29236, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbwidth
	add	r3, r3, #1	@ D.29236, D.29236,
	str	r3, [r4, #24]	@ D.29236, pRepairParam_20(D)->ImageWidth
	ldrh	r3, [r5, #80]	@ D.29236, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].mbheight
	add	r3, r3, #1	@ D.29236, D.29236,
	str	r3, [r4, #28]	@ D.29236, pRepairParam_20(D)->ImageHeight
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	str	r8, [r4, #36]	@ tmp517, pRepairParam_20(D)->ImageCSP
	tst	r3, #253	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	moveq	r3, #1	@ D.29234,
	movne	r3, r8	@ D.29234,
	str	r3, [r4, #32]	@ D.29234, pRepairParam_20(D)->IsFrame
	bl	PostPro_GetVc1MbGroup	@
	ldr	r2, [r4, #32]	@ pRepairParam_20(D)->IsFrame, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #68]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type
	cmp	r2, #1	@ pRepairParam_20(D)->IsFrame,
	streq	r8, [r4, #564]	@ tmp517, pRepairParam_20(D)->Pic_type
	and	r3, r3, #3	@ tmp521, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].ref_pic_type,
	str	r3, [r4, #556]	@ tmp521, pRepairParam_20(D)->rpr_ref_pic_type
	beq	.L253	@,
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm
	cmp	r3, #3	@ MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].fcm,
	beq	.L288	@,
.L253:
	ldr	r3, [r6, #272]	@ D.29236, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	b	.L246	@
.L223:
	add	r2, r2, #12288	@ tmp574, pDecParam,
	mov	lr, #0	@ tmp449,
	ldr	r3, [r2, #2152]	@ D.29235, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPicAddr
	str	r3, [r1, #4]	@ D.29235, pRepairParam_20(D)->ImageAddr
	ldr	r1, [r2, #2164]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address
	str	r1, [r4, #8]	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].rcn_address, pRepairParam_20(D)->Image2DAddr
	ldr	r10, [r2, #2144]	@ D.29236, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPic0Addr
	str	r10, [r4, #16]	@ D.29236, pRepairParam_20(D)->RefImageAddr
	ldr	r6, [r2, #2156]	@ D.29235, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].CurPmvAddr
	str	r6, [r4, #20]	@ D.29235, pRepairParam_20(D)->CurrPmvAddr
	ldrh	r8, [r5, #48]	@ D.29236, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	r8, [r4, #24]	@ D.29236, pRepairParam_20(D)->ImageWidth
	ldrh	r0, [r5, #50]	@ D.29236, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	r0, [r4, #28]	@ D.29236, pRepairParam_20(D)->ImageHeight
	mov	r9, r0, lsr #1	@ D.29236, D.29236,
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	str	lr, [r4, #36]	@ tmp449, pRepairParam_20(D)->ImageCSP
	sub	r1, r1, #3	@ D.29234, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct,
	clz	r1, r1	@ D.29234, D.29234
	mov	r1, r1, lsr #5	@ D.29234, D.29234,
	str	r1, [r4, #32]	@ D.29234, pRepairParam_20(D)->IsFrame
	ldr	ip, [r7, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r10, [r4, #588]	@ D.29236, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].RefImageAddr
	add	ip, ip, r3	@ D.29235, pDecReport_67(D)->ImgStride, D.29235
	str	ip, [r4, #576]	@ D.29235, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageAddr
	ldr	r3, [r7, #4]	@ pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride
	str	r1, [r4, #604]	@ D.29234, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].IsFrame
	str	r0, [r4, #600]	@ D.29236, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageHeight
	add	r3, r3, r3, lsl #3	@ D.29235, pDecReport_67(D)->ImgStride, pDecReport_67(D)->ImgStride,
	str	r8, [r4, #596]	@ D.29236, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageWidth
	str	lr, [r4, #608]	@ tmp449, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].ImageCSP
	mla	r3, r9, r3, r6	@ D.29235, D.29236, D.29235, D.29235
	str	r3, [r4, #592]	@ D.29235, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_20(D) + 572B].CurrPmvAddr
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.29233, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].PicStruct
	cmp	r3, #3	@ D.29233,
	streq	lr, [r4, #564]	@ tmp449, pRepairParam_20(D)->Pic_type
	beq	.L251	@,
	cmp	r3, #1	@ D.29233,
	streq	r3, [r4, #564]	@ D.29233, pRepairParam_20(D)->Pic_type
.L251:
	ldr	r3, [r2, #2580]	@ D.29236, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetAvsMbGroup	@
	b	.L246	@
.L221:
	ldr	r3, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r2, #0	@ tmp418,
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
	str	r2, [r1, #36]	@ tmp418, pRepairParam_20(D)->ImageCSP
	sub	r3, r3, #3	@ D.29234, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure,
	clz	r3, r3	@ D.29234, D.29234
	mov	r3, r3, lsr #5	@ D.29234, D.29234,
	str	r3, [r1, #32]	@ D.29234, pRepairParam_20(D)->IsFrame
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ D.29233, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].PictureStructure
	cmp	r3, #1	@ D.29233,
	beq	.L283	@,
	cmp	r3, #2	@ D.29233,
	beq	.L283	@,
	cmp	r3, #3	@ D.29233,
	streq	r2, [r1, #564]	@ tmp418, pRepairParam_20(D)->Pic_type
.L248:
	add	r5, r5, #45056	@ tmp423, pDecParam,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.29236, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L246	@
.L222:
	ldr	r2, [r2, #128]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	mov	r3, #0	@ tmp493,
	mov	ip, #1	@ tmp492,
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
	str	ip, [r4, #32]	@ tmp492, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp493, pRepairParam_20(D)->ImageCSP
	str	r2, [r4, #28]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp493, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #156]	@ D.29236, MEM[(struct DIVX3_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetDivx3MbGroup	@
	b	.L246	@
.L220:
	ldr	ip, [r2, #212]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r3, r2, #12288	@ tmp426, pDecParam,
	mov	lr, #1	@ tmp432,
	mov	r2, #0	@ tmp433,
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
	str	lr, [r4, #32]	@ tmp432, pRepairParam_20(D)->IsFrame
	str	r2, [r4, #36]	@ tmp433, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r2, [r4, #564]	@ tmp433, pRepairParam_20(D)->Pic_type
	ldr	r3, [r3, #2372]	@ D.29236, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L246	@
.L225:
	ldr	ip, [r2, #52]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r2, r2, #8192	@ tmp486, pDecParam,
	mov	r3, #0	@ tmp483,
	mov	lr, #1	@ tmp482,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	ip, [r5, #48]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	ip, [r5, #72]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	ip, [r5, #4]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	ip, [r5, #8]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp482, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp483, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp483, pRepairParam_20(D)->Pic_type
	ldr	r3, [r2, #3152]	@ D.29236, MEM[(struct RV9_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L246	@
.L226:
	ldr	r3, [r2, #172]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].image_curr_recon_addr
	mov	r6, #0	@ tmp536,
	mov	r2, #1	@ tmp535,
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
	str	r2, [r4, #32]	@ tmp535, pRepairParam_20(D)->IsFrame
	str	r6, [r4, #36]	@ tmp536, pRepairParam_20(D)->ImageCSP
	str	r3, [r4, #28]	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	bl	PostPro_GetVp6MbGroup	@
	str	r6, [r4, #556]	@ tmp536, pRepairParam_20(D)->rpr_ref_pic_type
	str	r6, [r4, #564]	@ tmp536, pRepairParam_20(D)->Pic_type
	ldr	r3, [r5, #196]	@ D.29236, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	b	.L246	@
.L224:
	ldr	ip, [r2, #56]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr
	add	r2, r2, #8192	@ tmp476, pDecParam,
	mov	r3, #0	@ tmp473,
	mov	lr, #1	@ tmp472,
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	str	ip, [r4, #4]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurPicPhyAddr, pRepairParam_20(D)->ImageAddr
	ldr	ip, [r5, #52]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr
	str	ip, [r4, #16]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].FwdRefPhyAddr, pRepairParam_20(D)->RefImageAddr
	ldr	ip, [r5, #76]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr
	str	ip, [r4, #20]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].CurrPmvPhyAddr, pRepairParam_20(D)->CurrPmvAddr
	ldr	ip, [r5, #4]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb
	str	ip, [r4, #24]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicWidthInMb, pRepairParam_20(D)->ImageWidth
	ldr	ip, [r5, #8]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb
	str	lr, [r4, #32]	@ tmp472, pRepairParam_20(D)->IsFrame
	str	r3, [r4, #36]	@ tmp473, pRepairParam_20(D)->ImageCSP
	str	ip, [r4, #28]	@ MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].PicHeightInMb, pRepairParam_20(D)->ImageHeight
	str	r3, [r4, #564]	@ tmp473, pRepairParam_20(D)->Pic_type
	ldr	r3, [r2, #3156]	@ D.29236, MEM[(struct RV8_DEC_PARAM_S *)pDecParam_25(D)].Compress_en
	str	r3, [r4, #560]	@ D.29236, pRepairParam_20(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L246	@
.L216:
	mov	r3, #648	@,
	ldr	r2, .L289+8	@,
	ldr	r1, .L289+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L246	@
.L283:
	str	r3, [r4, #564]	@ D.29233, pRepairParam_20(D)->Pic_type
	b	.L248	@
.L288:
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.29233, MEM[(struct VC1_DEC_PARAM_S *)pDecParam_25(D)].curparity
	cmp	r3, #0	@ D.29233,
	moveq	r3, #1	@ tmp525,
	streq	r3, [r4, #564]	@ tmp525, pRepairParam_20(D)->Pic_type
	beq	.L253	@,
	cmp	r3, #1	@ D.29233,
	moveq	r3, #2	@ tmp526,
	streq	r3, [r4, #564]	@ tmp526, pRepairParam_20(D)->Pic_type
	b	.L253	@
.L285:
	mov	r3, #0	@ i,
.L229:
	add	r3, r3, #312	@ tmp397, i,
	add	r3, r3, #2	@ tmp397, tmp397,
	ldr	r3, [r5, r3, asl #2]	@ tmp398, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].RefPicType
	str	r3, [r4, #556]	@ tmp398, pRepairParam_20(D)->rpr_ref_pic_type
	b	.L228	@
.L286:
	mov	r1, r7	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L235	@
.L287:
	ldr	ip, [r5, #820]	@ D.29235, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgSlotNum
	cmp	ip, #0	@ D.29235,
	beq	.L236	@,
	ldr	r2, [r5, #308]	@ D.29235, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_25(D)].ImgPhyAddr
	cmp	r0, r2	@ D.29236, D.29235
	addeq	r1, r5, #308	@ ivtmp.136, pDecParam,
	moveq	r3, #0	@ i,
	bne	.L237	@,
.L239:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.29235
	beq	.L236	@,
	ldr	r2, [r1, #4]!	@ D.29235, MEM[base: _387, offset: 0B]
	cmp	r2, r0	@ D.29235, D.29236
	beq	.L239	@,
.L237:
	str	r2, [r4, #16]	@ D.29235, pRepairParam_20(D)->RefImageAddr
	b	.L236	@
.L282:
	str	r3, [r4, #564]	@ D.29233, pRepairParam_20(D)->Pic_type
	b	.L242	@
.L290:
	.align	2
.L289:
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
	ldr	r6, .L295	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L295+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L295+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.29249, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.29249,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L292	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.29249
.L293:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	ldr	r1, .L295+12	@,
	mov	r4, r0	@ err_ratio,
	mov	r2, r0	@, err_ratio
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L292:
	mov	r0, r6	@, D.29249
	mov	r2, #54	@,
	ldr	r1, .L295+16	@,
	bl	dprint_vfmw	@
	b	.L293	@
.L296:
	.align	2
.L295:
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
	ldr	r5, .L299	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L299+4	@ tmp141,
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
.L300:
	.align	2
.L299:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.27975, %object
	.size	__func__.27975, 23
__func__.27975:
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
