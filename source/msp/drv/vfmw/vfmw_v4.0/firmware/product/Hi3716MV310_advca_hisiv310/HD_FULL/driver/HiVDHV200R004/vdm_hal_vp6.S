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
	.file	"vdm_hal_vp6.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.o
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
	.global	VP6HAL_V200R004_CfgReg
	.type	VP6HAL_V200R004_CfgReg, %function
VP6HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r1	@ pHwMem, pHwMem
	ldr	r3, [r1]	@ pHwMem_7(D)->pVdmRegVirAddr, pHwMem_7(D)->pVdmRegVirAddr
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pVp6DecParam, pVp6DecParam
	mov	r5, r2	@ VdhId, VdhId
	cmp	r3, #0	@ pHwMem_7(D)->pVdmRegVirAddr,
	beq	.L11	@,
.L2:
	ldrh	r2, [r6, #52]	@ D.33727, pVp6DecParam_14(D)->PicWidthInMb
	movw	r7, #1140	@ tmp265,
	ldrh	r3, [r6, #54]	@ D.33727, pVp6DecParam_14(D)->PicHeightInMb
	mov	r8, #0	@ tmp253,
	mul	r7, r7, r5	@ tmp264, tmp265, VdhId
	ldr	r4, .L13	@ tmp426,
	mul	r3, r3, r2	@ D.33727, D.33727, D.33727
	mov	r1, r8	@ tmp258, tmp253
	mov	r2, #0	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en,
	bfi	r2, r8, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, tmp253,,
	sub	r3, r3, #1	@ D.33727, D.33727,
	ldr	r0, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	bfi	r1, r3, #0, #20	@ tmp258, D.33727,,
	str	r1, [sp, #4]	@ tmp258,
	strb	r2, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	ldr	r3, [sp, #4]	@ D.33727, D32
	str	r3, [r0, #8]	@ D.33727, *_30
	bl	vfmw_dprint_nothing	@
	mov	r3, #536870912	@ tmp268,
	ldr	r2, [r6, #188]	@ pVp6DecParam_14(D)->VahbStride, pVp6DecParam_14(D)->VahbStride
	mov	r1, #10	@ tmp271,
	ldr	r0, [r6, #196]	@ pVp6DecParam_14(D)->Compress_en, pVp6DecParam_14(D)->Compress_en
	mov	r2, r2, lsr #6	@ D.33728, pVp6DecParam_14(D)->VahbStride,
	str	r3, [sp, #4]	@ tmp268, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	strb	r1, [sp, #4]	@ tmp271, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfi	r3, r8, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp253,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	ubfx	r3, r3, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	ldrh	r1, [sp, #4]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	orr	r3, r3, #32	@ tmp288, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	bfi	r1, r2, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.33728,,
	strh	r1, [sp, #4]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	uxtb	r3, r3	@ tmp291, tmp288
	ubfx	r2, r1, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	bfi	r3, r0, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pVp6DecParam_14(D)->Compress_en,,
	orr	r2, r2, #192	@ tmp282, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strb	r2, [sp, #5]	@ tmp282, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	mvn	r3, r3, asl #25	@ tmp295, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en,
	ldr	r0, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	mvn	r3, r3, lsr #25	@ tmp295, tmp295,
	strb	r3, [sp, #7]	@ tmp295, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	ldr	r3, [sp, #4]	@ D.33727, D32
	str	r3, [r0, #12]	@ D.33727, *_60
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r3, [r9, #44]	@ pHwMem_7(D)->MsgSlotAddr, pHwMem_7(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33727, pHwMem_7(D)->MsgSlotAddr,
	str	r3, [r2, #16]	@ D.33727, *_72
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r3, [r9, #28]	@ pHwMem_7(D)->MsgSlotAddr, pHwMem_7(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33727, pHwMem_7(D)->MsgSlotAddr,
	str	r3, [r2, #20]	@ D.33727, *_83
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r2, [r6, #56]	@ D.33727, pVp6DecParam_14(D)->StreamBaseAddr
	str	r2, [r3, #24]	@ D.33727, *_92
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r3, [r9, #1100]	@ pHwMem_7(D)->PpfdBufAddr, pHwMem_7(D)->PpfdBufAddr
	bic	r3, r3, #15	@ D.33727, pHwMem_7(D)->PpfdBufAddr,
	str	r3, [r2, #128]	@ D.33727, *_103
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r9, #1104]	@ pHwMem_7(D)->PpfdBufLen, pHwMem_7(D)->PpfdBufLen
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r8, [sp, #4]	@ tmp253, D32
	strh	r2, [sp, #4]	@ movhi	@ pHwMem_7(D)->PpfdBufLen, MEM[(struct PPFD_V200R004_BUF_LEN *)&D32].ppfd_buf_len
	ldr	r2, [sp, #4]	@ D.33727, D32
	str	r2, [r3, #132]	@ D.33727, *_113
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r6, #52]	@ pVp6DecParam_14(D)->PicWidthInMb, pVp6DecParam_14(D)->PicWidthInMb
	cmp	r3, #120	@ pVp6DecParam_14(D)->PicWidthInMb,
	movls	r3, #65536	@ tmp334,
	strhi	r8, [sp, #4]	@ tmp253, D32
	strls	r3, [sp, #4]	@ tmp334, D32
	cmp	r5, #0	@ VdhId,
	beq	.L12	@,
.L7:
	movw	r2, #1140	@ tmp343,
	movw	r3, #3075	@ tmp346,
	mul	r5, r2, r5	@ tmp342, tmp343, VdhId
	movt	r3, 48	@ tmp346,
	mov	r7, #0	@ tmp412,
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #60]	@ tmp346, *_131
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp346, *_136
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp346, *_141
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp346, *_146
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp346, *_151
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp346, *_156
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp346, *_161
	ldr	r2, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r3, [r6, #172]	@ pVp6DecParam_14(D)->image_curr_recon_addr, pVp6DecParam_14(D)->image_curr_recon_addr
	bic	r3, r3, #15	@ D.33727, pVp6DecParam_14(D)->image_curr_recon_addr,
	str	r3, [r2, #96]	@ D.33727, *_170
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	ldr	r2, [r6, #188]	@ D.33727, pVp6DecParam_14(D)->VahbStride
	str	r2, [r3, #100]	@ D.33727, *_179
	bl	vfmw_dprint_nothing	@
	ldrh	r2, [r6, #54]	@ D.33727, pVp6DecParam_14(D)->PicHeightInMb
	ldr	r3, [r6, #188]	@ pVp6DecParam_14(D)->VahbStride, pVp6DecParam_14(D)->VahbStride
	add	r2, r2, #1	@ tmp405, D.33727,
	ldr	r1, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	mov	r2, r2, asr #1	@ D.33727, tmp405,
	mov	r3, r3, asl #1	@ D.33728, pVp6DecParam_14(D)->VahbStride,
	mul	r3, r2, r3	@ D.33727, D.33727, D.33728
	str	r3, [r1, #104]	@ D.33727, *_195
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	mov	r2, #1	@ tmp418,
	str	r7, [r3, #108]	@ tmp412, *_202
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	str	r2, [r3, #152]	@ tmp418, *_208
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_26(D)].pVdmRegVirAddr, g_HwMem[VdhId_26(D)].pVdmRegVirAddr
	mov	r0, r7	@ D.33724, tmp412
	mvn	r2, #0	@ tmp424,
	str	r2, [r3, #32]	@ tmp424, *_214
.L4:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L12:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L13+4	@ tmp338,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [sp, #4]	@ D32, D32
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L7	@
.L11:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r9]	@ p32, pHwMem_7(D)->pVdmRegVirAddr
	bne	.L2	@
.L3:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33724,
	b	.L4	@
.L14:
	.align	2
.L13:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	VP6HAL_V200R004_CfgReg, .-VP6HAL_V200R004_CfgReg
	.align	2
	.global	VP6HAL_V200R004_CfgDnMsg
	.type	VP6HAL_V200R004_CfgDnMsg, %function
VP6HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pVp6DecParam, pVp6DecParam
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r1, #44]	@, pHwMem_8(D)->MsgSlotAddr
	mov	r7, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ p32,
	beq	.L21	@,
	ldr	r2, [r4, #60]	@ pVp6DecParam_14(D)->FrameType, pVp6DecParam_14(D)->FrameType
	mov	r6, #0	@ tmp283,
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type,
	str	r6, [sp, #4]	@ tmp283, D32
	bfi	r3, r2, #0, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type, pVp6DecParam_14(D)->FrameType,,
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type, MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5]	@ D.33737, MEM[(volatile HI_S32 *)p32_11]
	bl	vfmw_dprint_nothing	@
	ldrh	r0, [r4, #52]	@ pVp6DecParam_14(D)->PicWidthInMb, pVp6DecParam_14(D)->PicWidthInMb
	ldrh	r1, [r4, #54]	@ pVp6DecParam_14(D)->PicHeightInMb, pVp6DecParam_14(D)->PicHeightInMb
	mov	r2, #0	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r0, r0, #1	@ tmp290, pVp6DecParam_14(D)->PicWidthInMb,
	mov	r3, r2	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb
	sub	r1, r1, #1	@ tmp295, pVp6DecParam_14(D)->PicHeightInMb,
	bfi	r2, r0, #0, #9	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb, tmp290,,
	bfi	r3, r1, #0, #9	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, tmp295,,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb
	mov	r2, r2, lsr #8	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb
	mov	r3, r3, lsr #8	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb,
	bfi	r2, r6, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, tmp283,,
	bfi	r3, r6, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, tmp283,,
	strb	r2, [sp, #5]	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #4]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #100]	@ pVp6DecParam_14(D)->Vp3VersionNo, pVp6DecParam_14(D)->Vp3VersionNo
	ldr	r0, [r4, #104]	@ pVp6DecParam_14(D)->VpProfile, pVp6DecParam_14(D)->VpProfile
	ldr	r1, [r4, #108]	@ pVp6DecParam_14(D)->UseLoopFilter, pVp6DecParam_14(D)->UseLoopFilter
	and	r3, r3, #31	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].VpProfile, pVp6DecParam_14(D)->Vp3VersionNo,
	ldr	r2, [r4, #72]	@ pVp6DecParam_14(D)->UseHuffman, pVp6DecParam_14(D)->UseHuffman
	bfi	r3, r0, #5, #2	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].VpProfile, pVp6DecParam_14(D)->VpProfile,,
	ldr	r0, [r4, #68]	@ pVp6DecParam_14(D)->MultiStream, pVp6DecParam_14(D)->MultiStream
	mov	r1, r1, lsr #1	@ D.33738, pVp6DecParam_14(D)->UseLoopFilter,
	and	r2, r2, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, pVp6DecParam_14(D)->UseHuffman,
	bfi	r3, r0, #7, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream, pVp6DecParam_14(D)->MultiStream,,
	bfi	r2, r1, #1, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, D.33738,,
	str	r6, [sp, #4]	@ tmp283, D32
	strb	r2, [sp, #5]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream
	ldr	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved
	bfi	r3, r6, #10, #22	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, tmp283,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved
	str	r3, [r5, #8]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(volatile HI_S32 *)p32_11 + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #96]	@ pVp6DecParam_14(D)->PredictionFilterAlpha, pVp6DecParam_14(D)->PredictionFilterAlpha
	ldr	r2, [r4, #92]	@ pVp6DecParam_14(D)->PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterMvSizeThresh
	and	r3, r3, #31	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterAlpha,
	ldr	r1, [r4, #88]	@ pVp6DecParam_14(D)->PredictionFilterVarThresh, pVp6DecParam_14(D)->PredictionFilterVarThresh
	bfi	r3, r2, #5, #3	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterMvSizeThresh,,
	ldr	r2, [r4, #84]	@ pVp6DecParam_14(D)->PredictionFilterMode, pVp6DecParam_14(D)->PredictionFilterMode
	str	r6, [sp, #4]	@ tmp283, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh
	ldr	r3, [sp, #4]	@ tmp328,
	bfi	r3, r1, #8, #10	@ tmp328, pVp6DecParam_14(D)->PredictionFilterVarThresh,,
	str	r3, [sp, #4]	@ tmp328,
	ldrb	r3, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode
	bfi	r3, r2, #2, #2	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode, pVp6DecParam_14(D)->PredictionFilterMode,,
	strb	r3, [sp, #6]	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode
	ldrh	r3, [sp, #6]	@, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved
	bfi	r3, r6, #4, #12	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved, tmp283,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #12]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 12B]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pVp6DecParam_14(D)->FLimit, pVp6DecParam_14(D)->FLimit
	ldr	r1, [r4, #76]	@ pVp6DecParam_14(D)->DcQuant, pVp6DecParam_14(D)->DcQuant
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit,
	bfi	r3, r2, #0, #4	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit, pVp6DecParam_14(D)->FLimit,,
	ldr	r2, [r4, #80]	@ pVp6DecParam_14(D)->AcQuant, pVp6DecParam_14(D)->AcQuant
	str	r6, [sp, #4]	@ tmp283, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit, MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit
	ldrh	r3, [sp, #4]	@,
	bfi	r3, r1, #4, #8	@ tmp343, pVp6DecParam_14(D)->DcQuant,,
	strh	r3, [sp, #4]	@ movhi	@ tmp343,
	ldr	r3, [sp, #4]	@ tmp346,
	bfi	r3, r2, #12, #9	@ tmp346, pVp6DecParam_14(D)->AcQuant,,
	str	r3, [sp, #4]	@ tmp346,
	mov	r3, r3, lsr #16	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, tmp346,
	bfi	r3, r6, #5, #11	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, tmp283,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #16]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 16B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #160]	@ D.33737, pVp6DecParam_14(D)->value
	str	r3, [r5, #32]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 32B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #168]	@ pVp6DecParam_14(D)->count, pVp6DecParam_14(D)->count
	ldr	r2, [r4, #164]	@ pVp6DecParam_14(D)->range, pVp6DecParam_14(D)->range
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count,
	bfi	r3, r1, #0, #4	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count, pVp6DecParam_14(D)->count,,
	str	r6, [sp, #4]	@ tmp283, D32
	strb	r3, [sp, #6]	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count
	ldrh	r3, [sp, #6]	@, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1
	strb	r6, [sp, #5]	@ tmp283, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved0
	bfi	r3, r6, #4, #12	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1, tmp283,,
	strb	r2, [sp, #4]	@ pVp6DecParam_14(D)->range, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].range
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1
	mov	r6, #0	@ tmp363,
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #36]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 36B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #168]	@ pVp6DecParam_14(D)->count, pVp6DecParam_14(D)->count
	ldr	r1, [r4, #112]	@ pVp6DecParam_14(D)->bit0_len_0, pVp6DecParam_14(D)->bit0_len_0
	ldr	r0, [r4, #116]	@ D.33738, pVp6DecParam_14(D)->bit0_offset_0
	add	r3, r2, #8	@ Vp6_br_cnt, pVp6DecParam_14(D)->count,
	add	r1, r3, r1	@ D16_bit_len_0, Vp6_br_cnt, pVp6DecParam_14(D)->bit0_len_0
	mov	r2, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, tmp363
	cmp	r3, r0	@ Vp6_br_cnt, D.33738
	bfi	r2, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, D16_bit_len_0,,
	addhi	r0, r0, #128	@ D.33738, D.33738,
	rsbls	r3, r3, r0	@ D16_bit_offset_0, Vp6_br_cnt, D.33738
	rsbhi	r3, r3, r0	@ D16_bit_offset_0, Vp6_br_cnt, D.33738
	ldrhi	r8, [r4, #120]	@ pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	ldrls	r8, [r4, #120]	@ D17_bit_byte_offset_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	subhi	r8, r8, #16	@ D17_bit_byte_offset_0, pVp6DecParam_14(D)->bit0_stream_addr_0,
	str	r2, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0
	mov	r2, r2, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0,
	bfi	r2, r3, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, D16_bit_offset_0,,
	strb	r2, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #64]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 64B]
	bl	vfmw_dprint_nothing	@
	mov	r3, r6	@ tmp368, tmp363
	bfi	r3, r8, #0, #24	@ tmp368, D17_bit_byte_offset_0,,
	str	r3, [sp, #4]	@ tmp368,
	strb	r6, [sp, #7]	@ tmp363, MEM[(struct VP6_V200R004_DWNMSG_D17 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #68]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 68B]
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #120]	@ pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	ldr	r3, [r4, #56]	@ pVp6DecParam_14(D)->StreamBaseAddr, pVp6DecParam_14(D)->StreamBaseAddr
	add	r0, r0, r3	@, pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->StreamBaseAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r6	@,
	beq	.L37	@,
.L20:
	ldr	r1, [r4, #124]	@ pVp6DecParam_14(D)->bit0_len_1, pVp6DecParam_14(D)->bit0_len_1
	mov	r6, #0	@ tmp374,
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, tmp374
	ldr	r2, [r4, #128]	@ pVp6DecParam_14(D)->bit0_offset_1, pVp6DecParam_14(D)->bit0_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, pVp6DecParam_14(D)->bit0_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, pVp6DecParam_14(D)->bit0_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #72]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 72B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #132]	@ pVp6DecParam_14(D)->bit0_stream_addr_1, pVp6DecParam_14(D)->bit0_stream_addr_1
	mov	r3, r6	@ tmp383, tmp374
	bfi	r3, r2, #0, #24	@ tmp383, pVp6DecParam_14(D)->bit0_stream_addr_1,,
	str	r3, [sp, #4]	@ tmp383,
	strb	r6, [sp, #7]	@ tmp374, MEM[(struct VP6_V200R004_DWNMSG_D19 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #76]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 76B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #136]	@ pVp6DecParam_14(D)->bit1_len_0, pVp6DecParam_14(D)->bit1_len_0
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, tmp374
	ldr	r2, [r4, #140]	@ pVp6DecParam_14(D)->bit1_offset_0, pVp6DecParam_14(D)->bit1_offset_0
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, pVp6DecParam_14(D)->bit1_len_0,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, pVp6DecParam_14(D)->bit1_offset_0,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #80]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 80B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #144]	@ pVp6DecParam_14(D)->bit1_stream_addr_0, pVp6DecParam_14(D)->bit1_stream_addr_0
	mov	r3, r6	@ tmp396, tmp374
	bfi	r3, r2, #0, #24	@ tmp396, pVp6DecParam_14(D)->bit1_stream_addr_0,,
	str	r3, [sp, #4]	@ tmp396,
	strb	r6, [sp, #7]	@ tmp374, MEM[(struct VP6_V200R004_DWNMSG_D21 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #84]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 84B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #148]	@ pVp6DecParam_14(D)->bit1_len_1, pVp6DecParam_14(D)->bit1_len_1
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, tmp374
	ldr	r2, [r4, #152]	@ pVp6DecParam_14(D)->bit1_offset_1, pVp6DecParam_14(D)->bit1_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, pVp6DecParam_14(D)->bit1_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, pVp6DecParam_14(D)->bit1_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #88]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 88B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #156]	@ pVp6DecParam_14(D)->bit1_stream_addr_1, pVp6DecParam_14(D)->bit1_stream_addr_1
	mov	r3, r6	@ tmp409, tmp374
	bfi	r3, r2, #0, #24	@ tmp409, pVp6DecParam_14(D)->bit1_stream_addr_1,,
	str	r3, [sp, #4]	@ tmp409,
	strb	r6, [sp, #7]	@ tmp374, MEM[(struct VP6_V200R004_DWNMSG_D23 *)&D32].reserved
	ldr	r3, [sp, #4]	@ D.33737, D32
	str	r3, [r5, #92]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 92B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #172]	@ pVp6DecParam_14(D)->image_curr_recon_addr, pVp6DecParam_14(D)->image_curr_recon_addr
	bic	r3, r3, #15	@ D.33737, pVp6DecParam_14(D)->image_curr_recon_addr,
	str	r3, [r5, #128]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 128B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #176]	@ pVp6DecParam_14(D)->image_golden_ref_addr, pVp6DecParam_14(D)->image_golden_ref_addr
	bic	r3, r3, #15	@ D.33737, pVp6DecParam_14(D)->image_golden_ref_addr,
	str	r3, [r5, #136]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 136B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #180]	@ pVp6DecParam_14(D)->image_last_ref_addr, pVp6DecParam_14(D)->image_last_ref_addr
	bic	r3, r3, #15	@ D.33737, pVp6DecParam_14(D)->image_last_ref_addr,
	str	r3, [r5, #140]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 140B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #1080]	@ pHwMem_8(D)->SedTopAddr, pHwMem_8(D)->SedTopAddr
	bic	r3, r3, #15	@ D.33737, pHwMem_8(D)->SedTopAddr,
	str	r3, [r5, #144]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 144B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #1084]	@ pHwMem_8(D)->PmvTopAddr, pHwMem_8(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.33737, pHwMem_8(D)->PmvTopAddr,
	str	r3, [r5, #148]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 148B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #1088]	@ pHwMem_8(D)->RcnTopAddr, pHwMem_8(D)->RcnTopAddr
	bic	r3, r3, #15	@ D.33737, pHwMem_8(D)->RcnTopAddr,
	str	r3, [r5, #152]	@ D.33737, MEM[(volatile HI_S32 *)p32_11 + 152B]
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r7, #1116]	@ pHwMem_8(D)->VpTabAddr, pHwMem_8(D)->VpTabAddr
	bic	r6, r6, #15	@ D.33738, pHwMem_8(D)->VpTabAddr,
	str	r6, [r5, #156]	@ D.33738, MEM[(volatile HI_S32 *)p32_11 + 156B]
	str	r6, [sp, #4]	@ D.33738, MEM[(struct VP6_V200R004_DWNMSG_D39 *)&D32].tab_addr
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, D.33738
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ __p,
	ldr	r0, [r7, #1116]	@, pHwMem_8(D)->VpTabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	cmpne	r5, #0	@, __p,
	beq	.L21	@,
	mov	r1, #4096	@,
	mov	r0, r5	@, __p
	bl	__memzero	@
	mov	r2, #64	@,
	ldr	r1, [r4, #4]	@, pVp6DecParam_14(D)->TblProbModeSame
	mov	r0, r5	@, __p
	bl	memcpy	@
	mov	r2, #640	@,
	ldr	r1, [r4, #8]	@, pVp6DecParam_14(D)->TblProbMode
	add	r0, r5, #64	@, __p,
	bl	memcpy	@
	add	r0, r5, #704	@, __p,
	mov	r2, #64	@,
	ldr	r1, [r4, #12]	@, pVp6DecParam_14(D)->TblProbMv
	bl	memcpy	@
	ldr	r3, [r4, #72]	@ pVp6DecParam_14(D)->UseHuffman, pVp6DecParam_14(D)->UseHuffman
	mov	r0, r6	@, D.33738
	cmp	r3, #0	@ pVp6DecParam_14(D)->UseHuffman,
	beq	.L38	@,
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33753,
	adds	r0, r0, #768	@ TabBaseAddr, D.33753,
	beq	.L21	@,
	mov	r2, #1536	@,
	ldr	r1, [r4, #44]	@, pVp6DecParam_14(D)->TblAcHuffLUT
	bl	memcpy	@
	mov	r2, #128	@,
	ldr	r1, [r4, #40]	@, pVp6DecParam_14(D)->TblDcHuffLUT
	add	r0, r5, #2304	@, D.33753,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.33753,
	mov	r2, #128	@,
	ldr	r1, [r4, #48]	@, pVp6DecParam_14(D)->TblZeroHuffLUT
	bl	memcpy	@
.L23:
	mov	r0, r6	@, D.33738
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33753,
	adds	r0, r0, #2560	@ TabBaseAddr, D.33753,
	beq	.L21	@,
	mov	r2, #64	@,
	ldr	r1, [r4, #16]	@, pVp6DecParam_14(D)->TblModifiedScanOrder
	bl	memcpy	@
	mov	r2, #64	@,
	ldr	r1, [r4, #20]	@, pVp6DecParam_14(D)->TblEobOffsetTable
	add	r0, r5, #2624	@, D.33753,
	bl	memcpy	@
	mov	r2, #960	@,
	ldr	r1, [r4, #24]	@, pVp6DecParam_14(D)->TblHuffTree
	add	r0, r5, #2688	@, D.33753,
	bl	memcpy	@
	mov	r0, r6	@, D.33738
	bl	MEM_Phy2Vir	@
	adds	r0, r0, #2816	@ TabBaseAddr,,
	beq	.L21	@,
	ldr	r1, [r4, #24]	@, pVp6DecParam_14(D)->TblHuffTree
	mov	r2, #960	@,
	bl	memcpy	@
	mov	r0, #0	@ D.33736,
.L17:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L38:
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.33753,
	adds	r0, r0, #768	@ TabBaseAddr, D.33753,
	beq	.L21	@,
	ldr	r1, [r4, #28]	@, pVp6DecParam_14(D)->TblDcNodeContexts
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, pVp6DecParam_14(D)->TblZeroProbs
	mov	r2, #32	@,
	add	r0, r5, #864	@, D.33753,
	bl	memcpy	@
	add	r0, r5, #896	@, D.33753,
	mov	r2, #576	@,
	ldr	r1, [r4, #32]	@, pVp6DecParam_14(D)->TblACProbs
	bl	memcpy	@
	b	.L23	@
.L21:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33736,
	b	.L17	@
.L37:
	bl	vfmw_dprint_nothing	@
	b	.L20	@
	.fnend
	.size	VP6HAL_V200R004_CfgDnMsg, .-VP6HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP6HAL_V200R004_StartDec
	.type	VP6HAL_V200R004_StartDec, %function
VP6HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #1140	@ tmp122,
	ldrh	r3, [r0, #52]	@ pVp6DecParam_7(D)->PicWidthInMb, pVp6DecParam_7(D)->PicWidthInMb
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mul	r4, r4, r1	@ tmp121, tmp122, VdhId
	sub	r3, r3, #1	@ tmp127, pVp6DecParam_7(D)->PicWidthInMb,
	ldr	r7, .L49	@ tmp123,
	cmp	r3, #512	@ tmp127,
	mov	r6, r1	@ VdhId, VdhId
	add	r8, r4, r7	@ pHwMem, tmp121, tmp123
	bcs	.L42	@,
	ldrh	r3, [r0, #54]	@ pVp6DecParam_7(D)->PicHeightInMb, pVp6DecParam_7(D)->PicHeightInMb
	sub	r3, r3, #1	@ tmp131, pVp6DecParam_7(D)->PicHeightInMb,
	cmp	r3, #512	@ tmp131,
	bcs	.L42	@,
	ldr	r3, [r4, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L48	@,
.L43:
	mov	r2, r6	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgReg	@
	mov	r2, r6	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.33796,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L48:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	bne	.L43	@
.L42:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33796,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L50:
	.align	2
.L49:
	.word	g_HwMem
	.fnend
	.size	VP6HAL_V200R004_StartDec, .-VP6HAL_V200R004_StartDec
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
