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
	.file	"vdm_hal_divx3.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	mov	r6, r0	@ pHwMem, pHwMem
	mov	r7, r2	@ VdhId, VdhId
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #12]	@ pDivx3DecParam_7(D)->PicHeightInMb, pDivx3DecParam_7(D)->PicHeightInMb
	movw	r8, #1140	@ tmp262,
	ldr	r2, [r5, #8]	@ pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicWidthInMb
	mov	r9, #0	@ tmp242,
	mul	r8, r8, r7	@ tmp261, tmp262, VdhId
	mov	r3, r9	@ tmp247, tmp242
	mul	r2, r2, r1	@ D.33543, pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicHeightInMb
	ldr	r4, .L11	@ tmp417,
	mov	r1, #0	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en,
	bfi	r1, r9, #1, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, tmp242,,
	sub	r2, r2, #1	@ D.33543, D.33543,
	ldr	r0, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp247, D.33543,,
	str	r3, [sp, #4]	@ tmp247,
	mov	r3, r3, lsr #16	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp247,
	strb	r1, [sp, #7]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en
	bfi	r3, r9, #7, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp242,,
	strb	r3, [sp, #6]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en
	ldr	r3, [sp, #4]	@ D.33546, D32
	str	r3, [r0, #8]	@ D.33546, *_24
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #136]	@ pDivx3DecParam_7(D)->DDRStride, pDivx3DecParam_7(D)->DDRStride
	mov	r2, #5	@ tmp268,
	ldr	r0, [r5, #156]	@ pDivx3DecParam_7(D)->Compress_en, pDivx3DecParam_7(D)->Compress_en
	mov	r1, r1, lsr #6	@ D.33543, pDivx3DecParam_7(D)->DDRStride,
	str	r9, [sp, #4]	@ tmp242, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	strb	r2, [sp, #4]	@ tmp268, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].video_standard
	bfi	r3, r9, #0, #12	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, tmp242,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	ldrh	r2, [sp, #4]	@, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	mov	r3, r3, lsr #8	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dnr_on_line, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num,
	and	r3, r3, #239	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dnr_on_line,
	bfi	r2, r1, #4, #10	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride, D.33543,,
	orr	r3, r3, #32	@ tmp287, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	ubfx	r2, r2, #8, #8	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride,,
	uxtb	r3, r3	@ tmp290, tmp287
	orr	r2, r2, #192	@ tmp279, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp,
	bfi	r3, r0, #6, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].compress_en, pDivx3DecParam_7(D)->Compress_en,,
	strb	r2, [sp, #5]	@ tmp279, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].mv_output_en
	bfi	r3, r9, #7, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en, tmp242,,
	strb	r3, [sp, #7]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en
	ldr	r2, [sp, #4]	@ D.33546, D32
	ldr	r3, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r2, [r3, #12]	@ D.33546, *_49
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r6, #44]	@ pHwMem_55(D)->MsgSlotAddr, pHwMem_55(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33546, pHwMem_55(D)->MsgSlotAddr,
	str	r3, [r2, #16]	@ D.33546, *_63
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r6, #28]	@ pHwMem_55(D)->MsgSlotAddr, pHwMem_55(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33546, pHwMem_55(D)->MsgSlotAddr,
	str	r3, [r2, #20]	@ D.33546, *_75
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #96]	@ D.33546, pDivx3DecParam_7(D)->StreamBaseAddr
	ldr	r2, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #24]	@ D.33546, *_86
	str	r3, [sp, #4]	@ D.33546, MEM[(struct DIVX3_V200R004_STREAM_BASE_ADDR *)&D32].stream_base_addr
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #8]	@ pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicWidthInMb
	cmp	r3, #120	@ pDivx3DecParam_7(D)->PicWidthInMb,
	movls	r3, #65536	@ tmp318,
	strhi	r9, [sp, #4]	@ tmp242, D32
	strls	r3, [sp, #4]	@ tmp318, D32
	cmp	r7, #0	@ VdhId,
	beq	.L10	@,
	ble	.L6	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	vfmw_dprint_nothing	@
.L10:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L11+4	@ tmp321,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [sp, #4]	@ D32, D32
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L6:
	movw	r2, #1140	@ tmp326,
	movw	r3, #3075	@ tmp329,
	mul	r7, r2, r7	@ tmp325, tmp326, VdhId
	movt	r3, 48	@ tmp329,
	mov	r9, #0	@ tmp391,
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #60]	@ tmp329, *_106
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp329, *_111
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp329, *_116
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp329, *_121
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp329, *_126
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp329, *_131
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp329, *_136
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r5, #128]	@ pDivx3DecParam_7(D)->CurPicPhyAddr, pDivx3DecParam_7(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D.33546, pDivx3DecParam_7(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D.33546, *_145
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #136]	@ D.33546, pDivx3DecParam_7(D)->DDRStride
	ldr	r8, [r5, #12]	@ height_in_mb, pDivx3DecParam_7(D)->PicHeightInMb
	str	r2, [r3, #100]	@ D.33546, *_155
	add	r8, r8, #1	@ D.33543, height_in_mb,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #136]	@ pDivx3DecParam_7(D)->DDRStride, pDivx3DecParam_7(D)->DDRStride
	mov	r3, r8, lsr #1	@ D.33543, D.33543,
	ldr	r1, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r8, r2, asl #1	@ D.33543, pDivx3DecParam_7(D)->DDRStride,
	mul	r8, r3, r8	@ D.33546, D.33543, D.33543
	str	r8, [r1, #104]	@ D.33546, *_168
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r9, [r3, #108]	@ tmp391, *_176
	ldr	r2, [r6, #1120]	@ D.33546, pHwMem_55(D)->DnrMbInfoAddr
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r2, [r3, #144]	@ D.33546, *_184
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r9, [r3, #148]	@ tmp391, *_191
	str	r9, [sp, #4]	@ tmp391, D32
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en
	bfi	r3, r9, #0, #1	@ MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en, tmp391,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en, MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	r3, [sp, #4]	@ D.33546, D32
	str	r3, [r2, #152]	@ D.33546, *_198
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp416,
	str	r2, [r3, #32]	@ tmp416, *_206
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L12:
	.align	2
.L11:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	DIVX3HAL_V200R004_WriteReg, .-DIVX3HAL_V200R004_WriteReg
	.align	2
	.global	DIVX3HAL_V200R004_WritePicMsg
	.type	DIVX3HAL_V200R004_WritePicMsg, %function
DIVX3HAL_V200R004_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r1	@ pDivx3DecParam, pDivx3DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #44]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	bic	r0, r0, #15	@, pHwMem_4(D)->MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ p32,
	beq	.L16	@,
	ldr	r2, [r4, #4]	@ pDivx3DecParam_11(D)->prediction_type, pDivx3DecParam_11(D)->prediction_type
	mov	r7, #0	@ tmp204,
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type,
	str	r7, [sp, #4]	@ tmp204, D32
	bfi	r3, r2, #0, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, pDivx3DecParam_11(D)->prediction_type,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5]	@ D.33554, MEM[(volatile HI_S32 *)p32_8]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #8]	@ pDivx3DecParam_11(D)->PicWidthInMb, pDivx3DecParam_11(D)->PicWidthInMb
	ldr	r3, [r4, #12]	@ pDivx3DecParam_11(D)->PicHeightInMb, pDivx3DecParam_11(D)->PicHeightInMb
	mov	r0, #0	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r2, r2, #1	@ tmp211, pDivx3DecParam_11(D)->PicWidthInMb,
	mov	r1, r0	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	sub	r3, r3, #1	@ tmp216, pDivx3DecParam_11(D)->PicHeightInMb,
	bfi	r0, r2, #0, #9	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, tmp211,,
	bfi	r1, r3, #0, #9	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, tmp216,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5, #4]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #16]	@ pDivx3DecParam_11(D)->quantizer, pDivx3DecParam_11(D)->quantizer
	ldr	r1, [r4, #20]	@ pDivx3DecParam_11(D)->rounding_type, pDivx3DecParam_11(D)->rounding_type
	ldr	r2, [r4, #24]	@ pDivx3DecParam_11(D)->has_skips, pDivx3DecParam_11(D)->has_skips
	and	r3, r3, #31	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].rounding_type, pDivx3DecParam_11(D)->quantizer,
	bfi	r3, r1, #5, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].rounding_type, pDivx3DecParam_11(D)->rounding_type,,
	bfi	r3, r2, #6, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip, pDivx3DecParam_11(D)->has_skips,,
	str	r7, [sp, #4]	@ tmp204, D32
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip, MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5, #8]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #28]	@ pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT, pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT
	mov	r2, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV,
	ldr	r0, [r4, #36]	@ pDivx3DecParam_11(D)->alternative_I_DC_DCT, pDivx3DecParam_11(D)->alternative_I_DC_DCT
	and	r3, r3, #3	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT,
	ldr	ip, [r4, #40]	@ pDivx3DecParam_11(D)->alternative_P_AC_DCT, pDivx3DecParam_11(D)->alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT,,
	bfi	r3, r0, #4, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_DC_DCT, pDivx3DecParam_11(D)->alternative_I_DC_DCT,,
	ldr	r1, [r4, #44]	@ pDivx3DecParam_11(D)->alternative_P_DC_DCT, pDivx3DecParam_11(D)->alternative_P_DC_DCT
	ldr	r0, [r4, #48]	@ pDivx3DecParam_11(D)->alternative_MV, pDivx3DecParam_11(D)->alternative_MV
	bfi	r3, ip, #5, #2	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_AC_DCT, pDivx3DecParam_11(D)->alternative_P_AC_DCT,,
	bfi	r3, r1, #7, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT, pDivx3DecParam_11(D)->alternative_P_DC_DCT,,
	bfi	r2, r0, #0, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV, pDivx3DecParam_11(D)->alternative_MV,,
	str	r7, [sp, #4]	@ tmp204, D32
	strb	r2, [sp, #5]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV, MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT, MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5, #12]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #100]	@ D.33554, pDivx3DecParam_11(D)->StreamPhyAddr
	str	r3, [r5, #64]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 64B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #108]	@ pDivx3DecParam_11(D)->StreamBitOffset, pDivx3DecParam_11(D)->StreamBitOffset
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0,
	bfi	r3, r2, #0, #7	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0, pDivx3DecParam_11(D)->StreamBitOffset,,
	str	r7, [sp, #4]	@ tmp204, D32
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0, MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5, #68]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 68B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #116]	@ D.33554, pDivx3DecParam_11(D)->StreamLength
	str	r3, [r5, #72]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 72B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #104]	@ D.33554, pDivx3DecParam_11(D)->StreamPhyAddr
	str	r3, [r5, #76]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 76B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #112]	@ pDivx3DecParam_11(D)->StreamBitOffset, pDivx3DecParam_11(D)->StreamBitOffset
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1,
	bfi	r3, r2, #0, #7	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1, pDivx3DecParam_11(D)->StreamBitOffset,,
	str	r7, [sp, #4]	@ tmp204, D32
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1, MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1
	ldr	r3, [sp, #4]	@ D.33554, D32
	str	r3, [r5, #80]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 80B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #120]	@ D.33554, pDivx3DecParam_11(D)->StreamLength
	str	r3, [r5, #84]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 84B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #132]	@ pDivx3DecParam_11(D)->DispFramePhyAddr, pDivx3DecParam_11(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.33554, pDivx3DecParam_11(D)->DispFramePhyAddr,
	str	r3, [r5, #128]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 128B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #124]	@ pDivx3DecParam_11(D)->FwdRefPhyAddr, pDivx3DecParam_11(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.33554, pDivx3DecParam_11(D)->FwdRefPhyAddr,
	str	r3, [r5, #132]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 132B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1080]	@ pHwMem_4(D)->SedTopAddr, pHwMem_4(D)->SedTopAddr
	bic	r3, r3, #15	@ D.33554, pHwMem_4(D)->SedTopAddr,
	str	r3, [r5, #136]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 136B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1084]	@ pHwMem_4(D)->PmvTopAddr, pHwMem_4(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.33554, pHwMem_4(D)->PmvTopAddr,
	str	r3, [r5, #140]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 140B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1092]	@ pHwMem_4(D)->ItransTopAddr, pHwMem_4(D)->ItransTopAddr
	bic	r3, r3, #15	@ D.33554, pHwMem_4(D)->ItransTopAddr,
	str	r3, [r5, #144]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 144B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #148]	@ pDivx3DecParam_11(D)->CurrPmvPhyAddr, pDivx3DecParam_11(D)->CurrPmvPhyAddr
	bic	r3, r3, #15	@ D.33554, pDivx3DecParam_11(D)->CurrPmvPhyAddr,
	str	r3, [r5, #148]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 148B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #48]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33554, pHwMem_4(D)->MsgSlotAddr,
	str	r3, [r5, #252]	@ D.33554, MEM[(volatile HI_S32 *)p32_8 + 252B]
.L16:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r8, [r0, #48]	@ pHwMem_12(D)->MsgSlotAddr, pHwMem_12(D)->MsgSlotAddr
	mov	r9, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r8, r8, #15	@ MsgBlockPhy, pHwMem_12(D)->MsgSlotAddr,
	mov	r0, r8	@, MsgBlockPhy
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ p32,
	beq	.L35	@,
	ldr	r7, [r9, #56]	@ pDivx3DecParam_20(D)->slice_start_mbn, pDivx3DecParam_20(D)->slice_start_mbn
	cmp	r7, #0	@ pDivx3DecParam_20(D)->slice_start_mbn,
	bne	.L36	@,
.L19:
	ldr	r3, [r9, #52]	@ pDivx3DecParam_20(D)->TotalSliceNum, pDivx3DecParam_20(D)->TotalSliceNum
	cmp	r3, #0	@ pDivx3DecParam_20(D)->TotalSliceNum,
	beq	.L17	@,
	add	r3, r8, r7, lsl #6	@ D.33583, MsgBlockPhy, AddSlice0Flag,
	mov	r7, r7, asl #8	@ D.33581, AddSlice0Flag,
	mov	r5, #0	@ i,
	str	r3, [sp, #4]	@ D.33583, %sfp
.L30:
	cmp	r5, #0	@ i,
	ldreq	r2, [r9, #56]	@ D.33583, pDivx3DecParam_20(D)->slice_start_mbn
	beq	.L23	@,
	add	r3, r9, r5, lsl #2	@ D.33580, pDivx3DecParam, i,
	ldr	r2, [r3, #56]	@ D.33583, MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 56B]
	ldr	r3, [r3, #52]	@ MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B], MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B]
	cmp	r2, r3	@ D.33583, MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B]
	bls	.L24	@,
.L23:
	add	r10, r7, r5, lsl #8	@ D.33581, D.33581, i,
	mov	r3, #0	@ tmp220,
	bfi	r3, r2, #0, #20	@ tmp220, D.33583,,
	str	r3, [sp, #12]	@ tmp220,
	str	r3, [r6, r10]	@ tmp220, MEM[(volatile HI_S32 *)_55]
	add	r4, r5, #1	@ j, i,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r9, #52]	@ D.33583, pDivx3DecParam_20(D)->TotalSliceNum
	cmp	r4, r0	@ j, D.33583
	bcs	.L25	@,
	add	r3, r9, r5, lsl #2	@ D.33580, pDivx3DecParam, i,
	ldr	ip, [r3, #56]	@ D.33583, MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 56B]
	ldr	r3, [r3, #60]	@ MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B], MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B]
	cmp	ip, r3	@ D.33583, MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B]
	bcc	.L25	@,
	add	r3, r5, #15	@ D.33581, i,
	add	r3, r9, r3, lsl #2	@ ivtmp.33, pDivx3DecParam, D.33581,
	b	.L26	@
.L27:
	ldr	r2, [r3, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	cmp	r2, ip	@ MEM[base: _2, offset: 0B], D.33583
	bhi	.L25	@,
.L26:
	add	r4, r4, #1	@ j, j,
	cmp	r4, r0	@ j, D.33583
	bcc	.L27	@,
.L25:
	cmp	r0, r4	@ D.33583, j
	add	r0, r10, #4	@ D.33581, D.33581,
	addne	r3, r4, #14	@ tmp230, j,
	add	r10, r10, #252	@ D.33581, D.33581,
	ldreq	r1, [r9, #12]	@ pDivx3DecParam_20(D)->PicHeightInMb, pDivx3DecParam_20(D)->PicHeightInMb
	moveq	r8, #0	@ D.33583,
	ldreq	r3, [r9, #8]	@ pDivx3DecParam_20(D)->PicWidthInMb, pDivx3DecParam_20(D)->PicWidthInMb
	moveq	fp, r8	@ next_slice_para_addr, D.33583
	ldrne	r3, [r9, r3, asl #2]	@ tmp231, pDivx3DecParam_20(D)->slice_start_mbn
	sub	r5, r4, #1	@ i, j,
	ldrne	r2, [sp, #4]	@ D.33583, %sfp
	muleq	r3, r3, r1	@ D.33583, pDivx3DecParam_20(D)->PicWidthInMb, pDivx3DecParam_20(D)->PicHeightInMb
	addne	r8, r2, r4, lsl #8	@ D.33583, D.33583, j,
	mov	r1, #0	@ tmp234,
	movne	fp, r8	@ next_slice_para_addr, D.33583
	sub	r3, r3, #1	@ last_mb_in_slice, tmp231,
	bfi	r1, r3, #0, #20	@ tmp234, last_mb_in_slice,,
	str	r1, [sp, #12]	@ tmp234,
	str	r1, [r6, r0]	@ tmp234, MEM[(volatile HI_S32 *)_85]
	bl	vfmw_dprint_nothing	@
	str	fp, [r6, r10]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_94]
	str	r8, [sp, #12]	@ D.33583, MEM[(struct DIVX3_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
.L24:
	ldr	r3, [r9, #52]	@ pDivx3DecParam_20(D)->TotalSliceNum, pDivx3DecParam_20(D)->TotalSliceNum
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ pDivx3DecParam_20(D)->TotalSliceNum, i
	bhi	.L30	@,
.L17:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L36:
	mov	r4, #0	@ tmp209,
	mov	r7, #1	@ AddSlice0Flag,
	mov	r3, r4	@ tmp210, tmp209
	bfi	r3, r4, #0, #20	@ tmp210, tmp209,,
	str	r3, [sp, #12]	@ tmp210,
	str	r3, [r6]	@ tmp210, MEM[(volatile HI_S32 *)p32_18]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #56]	@ pDivx3DecParam_20(D)->slice_start_mbn, pDivx3DecParam_20(D)->slice_start_mbn
	sub	r3, r3, #1	@ D.33583, pDivx3DecParam_20(D)->slice_start_mbn,
	bfi	r4, r3, #0, #20	@ tmp214, D.33583,,
	str	r4, [sp, #12]	@ tmp214,
	str	r4, [r6, #4]	@ tmp214, MEM[(volatile HI_S32 *)p32_18 + 4B]
	bl	vfmw_dprint_nothing	@
	add	r3, r8, #256	@ D.33583, MsgBlockPhy,
	str	r3, [r6, #252]	@ D.33583, MEM[(volatile HI_S32 *)p32_18 + 252B]
	str	r3, [sp, #12]	@ D.33583, MEM[(struct DIVX3_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
	b	.L19	@
.L35:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	DIVX3HAL_V200R004_WriteSliceMsg, .-DIVX3HAL_V200R004_WriteSliceMsg
	.align	2
	.global	DIVX3HAL_V200R004_StartDec
	.type	DIVX3HAL_V200R004_StartDec, %function
DIVX3HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #1140	@ tmp118,
	mul	r4, r4, r1	@ tmp117, tmp118, VdhId
	ldr	r7, .L50	@ tmp119,
	cmp	r1, #1	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r5, r4, r7	@ pHwMem, tmp117, tmp119
	bhi	.L43	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L43	@,
	ldr	r3, [r4, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r6, r0	@ pDivx3DecParam, pDivx3DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L49	@,
.L42:
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r1, r6	@, pDivx3DecParam
	mov	r0, r5	@, pHwMem
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.33589,
.L40:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L49:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ VdhId, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	ldrne	r1, [sp, #4]	@ VdhId, %sfp
	bne	.L42	@
.L43:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33589,
	b	.L40	@
.L51:
	.align	2
.L50:
	.word	g_HwMem
	.fnend
	.size	DIVX3HAL_V200R004_StartDec, .-DIVX3HAL_V200R004_StartDec
	.align	2
	.global	DIVX3HAL_V200R004_StartVDH
	.type	DIVX3HAL_V200R004_StartVDH, %function
DIVX3HAL_V200R004_StartVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_dprint_nothing	@
	.fnend
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
