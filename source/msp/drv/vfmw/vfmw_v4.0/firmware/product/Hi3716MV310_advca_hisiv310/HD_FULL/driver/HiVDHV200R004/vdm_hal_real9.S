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
	.file	"vdm_hal_real9.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_real9)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real9.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real9.o
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
	.global	RV9HAL_V200R004_WriteReg
	.type	RV9HAL_V200R004_WriteReg, %function
RV9HAL_V200R004_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pRv9DecParam, pRv9DecParam
	mov	r8, r0	@ pHwMem, pHwMem
	mov	r9, r2	@ VdhId, VdhId
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #8]	@ pRv9DecParam_7(D)->PicHeightInMb, pRv9DecParam_7(D)->PicHeightInMb
	movw	r6, #1140	@ tmp267,
	ldr	r2, [r5, #4]	@ pRv9DecParam_7(D)->PicWidthInMb, pRv9DecParam_7(D)->PicWidthInMb
	mov	r7, #0	@ tmp245,
	mul	r6, r6, r9	@ tmp266, tmp267, VdhId
	mov	r3, r7	@ tmp250, tmp245
	mul	r2, r2, r1	@ D.33583, pRv9DecParam_7(D)->PicWidthInMb, pRv9DecParam_7(D)->PicHeightInMb
	ldr	r4, .L11	@ tmp423,
	mov	r1, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en,
	bfi	r1, r7, #1, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, tmp245,,
	sub	r2, r2, #1	@ D.33583, D.33583,
	ldr	r0, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp250, D.33583,,
	str	r3, [sp, #4]	@ tmp250,
	mov	r3, r3, lsr #16	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp250,
	strb	r1, [sp, #7]	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en
	bfi	r3, r7, #7, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp245,,
	strb	r3, [sp, #6]	@ MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, MEM[(struct RV9_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en
	ldr	r3, [sp, #4]	@ D.33586, D32
	str	r3, [r0, #8]	@ D.33586, *_24
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5, #60]	@ pRv9DecParam_7(D)->DDRStride, pRv9DecParam_7(D)->DDRStride
	mov	r2, #9	@ tmp273,
	add	r0, r5, #8192	@ tmp294, pRv9DecParam,
	mov	ip, ip, lsr #6	@ D.33583, pRv9DecParam_7(D)->DDRStride,
	str	r7, [sp, #4]	@ tmp245, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	strb	r2, [sp, #4]	@ tmp273, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].video_standard
	bfi	r3, r7, #0, #12	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, tmp245,,
	ldrh	r1, [sp, #4]	@, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	mov	r2, r3, lsr #8	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].dnr_on_line, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num,
	bfi	r1, ip, #4, #10	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ddr_stride, D.33583,,
	and	r2, r2, #239	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].dnr_on_line,
	ldr	ip, [r5, #36]	@ pRv9DecParam_7(D)->FstSlcGrp, pRv9DecParam_7(D)->FstSlcGrp
	orr	r2, r2, #32	@ tmp291, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en,
	mov	r3, r1, lsr #8	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ddr_stride,
	strb	r2, [sp, #7]	@ tmp291, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en
	bfi	r3, ip, #6, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, pRv9DecParam_7(D)->FstSlcGrp,,
	ldr	r0, [r0, #3152]	@ pRv9DecParam_7(D)->Compress_en, pRv9DecParam_7(D)->Compress_en
	uxtb	r2, r2	@ tmp296, tmp291
	mvn	r3, r3, asl #25	@ tmp283, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp,
	strh	r1, [sp, #4]	@ movhi	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ddr_stride, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	bfi	r2, r0, #6, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].compress_en, pRv9DecParam_7(D)->Compress_en,,
	mvn	r3, r3, lsr #25	@ tmp283, tmp283,
	strb	r3, [sp, #5]	@ tmp283, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].mv_output_en
	mov	r3, r2	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].compress_en
	bfi	r3, r7, #7, #1	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ppfd_en, tmp245,,
	strb	r3, [sp, #7]	@ MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct RV9_V200R004_BASIC_CFG1 *)&D32].ppfd_en
	ldr	r2, [sp, #4]	@ D.33586, D32
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r2, [r3, #12]	@ D.33586, *_52
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r8, #44]	@ pHwMem_58(D)->MsgSlotAddr, pHwMem_58(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33586, pHwMem_58(D)->MsgSlotAddr,
	str	r3, [r2, #16]	@ D.33586, *_66
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r8, #28]	@ pHwMem_58(D)->MsgSlotAddr, pHwMem_58(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33586, pHwMem_58(D)->MsgSlotAddr,
	str	r3, [r2, #20]	@ D.33586, *_78
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #40]	@ D.33586, pRv9DecParam_7(D)->StreamBaseAddr
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #24]	@ D.33586, *_89
	str	r3, [sp, #4]	@ D.33586, MEM[(struct RV9_V200R004_STREAM_BASE_ADDR *)&D32].stream_base_addr
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #4]	@ pRv9DecParam_7(D)->PicWidthInMb, pRv9DecParam_7(D)->PicWidthInMb
	cmp	r3, #120	@ pRv9DecParam_7(D)->PicWidthInMb,
	movls	r3, #65536	@ tmp324,
	strhi	r7, [sp, #4]	@ tmp245, D32
	strls	r3, [sp, #4]	@ tmp324, D32
	cmp	r9, #0	@ VdhId,
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
	ldr	r3, .L11+4	@ tmp327,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [sp, #4]	@ D32, D32
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L6:
	movw	r2, #1140	@ tmp332,
	movw	r3, #3075	@ tmp335,
	mul	r9, r2, r9	@ tmp331, tmp332, VdhId
	movt	r3, 48	@ tmp335,
	mov	r7, #0	@ tmp397,
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #60]	@ tmp335, *_109
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp335, *_114
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp335, *_119
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp335, *_124
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp335, *_129
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp335, *_134
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp335, *_139
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [r5, #52]	@ pRv9DecParam_7(D)->CurPicPhyAddr, pRv9DecParam_7(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D.33586, pRv9DecParam_7(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D.33586, *_148
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #60]	@ D.33586, pRv9DecParam_7(D)->DDRStride
	ldr	r6, [r5, #8]	@ height_in_mb, pRv9DecParam_7(D)->PicHeightInMb
	str	r2, [r3, #100]	@ D.33586, *_158
	add	r6, r6, #1	@ D.33583, height_in_mb,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #60]	@ pRv9DecParam_7(D)->DDRStride, pRv9DecParam_7(D)->DDRStride
	mov	r3, r6, lsr #1	@ D.33583, D.33583,
	ldr	r1, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r6, r2, asl #1	@ D.33583, pRv9DecParam_7(D)->DDRStride,
	mul	r6, r3, r6	@ D.33586, D.33583, D.33583
	str	r6, [r1, #104]	@ D.33586, *_171
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r7, [r3, #108]	@ tmp397, *_179
	ldr	r2, [r8, #1120]	@ D.33586, pHwMem_58(D)->DnrMbInfoAddr
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r2, [r3, #144]	@ D.33586, *_187
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r7, [r3, #148]	@ tmp397, *_194
	str	r7, [sp, #4]	@ tmp397, D32
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, MEM[(struct RV9_V200R004_FF_APT_EN *)&D32].ff_apt_en
	bfi	r3, r7, #0, #1	@ MEM[(struct RV9_V200R004_FF_APT_EN *)&D32].ff_apt_en, tmp397,,
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_FF_APT_EN *)&D32].ff_apt_en, MEM[(struct RV9_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	r3, [sp, #4]	@ D.33586, D32
	str	r3, [r2, #152]	@ D.33586, *_201
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp422,
	str	r2, [r3, #32]	@ tmp422, *_209
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L12:
	.align	2
.L11:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	RV9HAL_V200R004_WriteReg, .-RV9HAL_V200R004_WriteReg
	.align	2
	.global	RV9HAL_V200R004_WritePicMsg
	.type	RV9HAL_V200R004_WritePicMsg, %function
RV9HAL_V200R004_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pRv9DecParam, pRv9DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #44]	@ pHwMem_5(D)->MsgSlotAddr, pHwMem_5(D)->MsgSlotAddr
	bic	r0, r0, #15	@, pHwMem_5(D)->MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ p32,
	beq	.L16	@,
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ pRv9DecParam_12(D)->PicCodingType, pRv9DecParam_12(D)->PicCodingType
	mov	r7, #0	@ tmp185,
	mov	r3, #0	@ MEM[(struct RV9_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type,
	str	r7, [sp, #4]	@ tmp185, D32
	bfi	r3, r2, #0, #2	@ MEM[(struct RV9_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, pRv9DecParam_12(D)->PicCodingType,,
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, MEM[(struct RV9_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4]	@ D.33594, MEM[(volatile HI_S32 *)p32_9]
	bl	vfmw_dprint_nothing	@
	ldmib	r5, {r2, r3}	@ pRv9DecParam,,
	mov	r0, #0	@ movhi	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r2, r2, #1	@ tmp196, pRv9DecParam_12(D)->PicWidthInMb,
	sub	r3, r3, #1	@ tmp201, pRv9DecParam_12(D)->PicHeightInMb,
	mov	r1, r0	@ movhi	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	bfi	r0, r2, #0, #9	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, tmp196,,
	bfi	r1, r3, #0, #9	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, tmp201,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct RV9_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #4]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #12]	@ pRv9DecParam_12(D)->Ratio0, pRv9DecParam_12(D)->Ratio0
	ldr	r3, [r5, #16]	@ pRv9DecParam_12(D)->Ratio1, pRv9DecParam_12(D)->Ratio1
	strh	r2, [sp, #4]	@ movhi	@ pRv9DecParam_12(D)->Ratio0, MEM[(struct RV9_V200R004_PICDNMSG_D2 *)&D32].Ratio0
	strh	r3, [sp, #6]	@ movhi	@ pRv9DecParam_12(D)->Ratio1, MEM[(struct RV9_V200R004_PICDNMSG_D2 *)&D32].Ratio1
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #8]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 8B]
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ MEM[(struct RV9_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength,
	bfi	r3, r7, #1, #3	@ MEM[(struct RV9_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength, tmp185,,
	str	r7, [sp, #4]	@ tmp185, D32
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength, MEM[(struct RV9_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #12]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #20]	@ pRv9DecParam_12(D)->PQUANT, pRv9DecParam_12(D)->PQUANT
	mov	r3, #0	@ MEM[(struct RV9_V200R004_PICDNMSG_D4 *)&D32].currpicqp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV9_V200R004_PICDNMSG_D4 *)&D32].currpicqp, pRv9DecParam_12(D)->PQUANT,,
	str	r7, [sp, #4]	@ tmp185, D32
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_PICDNMSG_D4 *)&D32].currpicqp, MEM[(struct RV9_V200R004_PICDNMSG_D4 *)&D32].currpicqp
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #16]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 16B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #24]	@ pRv9DecParam_12(D)->PrevPicQP, pRv9DecParam_12(D)->PrevPicQP
	mov	r3, #0	@ MEM[(struct RV9_V200R004_PICDNMSG_D5 *)&D32].prevpicqp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV9_V200R004_PICDNMSG_D5 *)&D32].prevpicqp, pRv9DecParam_12(D)->PrevPicQP,,
	str	r7, [sp, #4]	@ tmp185, D32
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_PICDNMSG_D5 *)&D32].prevpicqp, MEM[(struct RV9_V200R004_PICDNMSG_D5 *)&D32].prevpicqp
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #20]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 20B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #28]	@ pRv9DecParam_12(D)->PrevPicMb0QP, pRv9DecParam_12(D)->PrevPicMb0QP
	mov	r3, #0	@ MEM[(struct RV9_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV9_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp, pRv9DecParam_12(D)->PrevPicMb0QP,,
	str	r7, [sp, #4]	@ tmp185, D32
	strb	r3, [sp, #4]	@ MEM[(struct RV9_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp, MEM[(struct RV9_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp
	ldr	r3, [sp, #4]	@ D.33594, D32
	str	r3, [r4, #24]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 24B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #56]	@ pRv9DecParam_12(D)->DispFramePhyAddr, pRv9DecParam_12(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.33594, pRv9DecParam_12(D)->DispFramePhyAddr,
	str	r3, [r4, #64]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 64B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #48]	@ pRv9DecParam_12(D)->FwdRefPhyAddr, pRv9DecParam_12(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.33594, pRv9DecParam_12(D)->FwdRefPhyAddr,
	str	r3, [r4, #68]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 68B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #44]	@ pRv9DecParam_12(D)->BwdRefPhyAddr, pRv9DecParam_12(D)->BwdRefPhyAddr
	bic	r3, r3, #15	@ D.33594, pRv9DecParam_12(D)->BwdRefPhyAddr,
	str	r3, [r4, #72]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 72B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #72]	@ D.33594, pRv9DecParam_12(D)->CurrPmvPhyAddr
	str	r3, [r4, #76]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 76B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #76]	@ D.33594, pRv9DecParam_12(D)->ColPmvPhyAddr
	str	r3, [r4, #80]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 80B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1080]	@ pHwMem_5(D)->SedTopAddr, pHwMem_5(D)->SedTopAddr
	bic	r3, r3, #15	@ D.33594, pHwMem_5(D)->SedTopAddr,
	str	r3, [r4, #84]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 84B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1084]	@ pHwMem_5(D)->PmvTopAddr, pHwMem_5(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.33594, pHwMem_5(D)->PmvTopAddr,
	str	r3, [r4, #88]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 88B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1088]	@ pHwMem_5(D)->RcnTopAddr, pHwMem_5(D)->RcnTopAddr
	bic	r3, r3, #15	@ D.33594, pHwMem_5(D)->RcnTopAddr,
	str	r3, [r4, #92]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 92B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1096]	@ D.33594, pHwMem_5(D)->DblkTopAddr
	str	r3, [r4, #96]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 96B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #44]	@ pHwMem_5(D)->MsgSlotAddr, pHwMem_5(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33597, pHwMem_5(D)->MsgSlotAddr,
	add	r3, r3, #256	@ D.33594, D.33597,
	str	r3, [r4, #252]	@ D.33594, MEM[(volatile HI_S32 *)p32_9 + 252B]
.L16:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	RV9HAL_V200R004_WritePicMsg, .-RV9HAL_V200R004_WritePicMsg
	.align	2
	.global	RV9HAL_V200R004_WriteSliceMsg
	.type	RV9HAL_V200R004_WriteSliceMsg, %function
RV9HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r10, r1	@ pRv9DecParam, pRv9DecParam
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r4, #44]	@ pHwMem_15(D)->MsgSlotAddr, pHwMem_15(D)->MsgSlotAddr
	add	r6, r10, #80	@ pSliceParam, pRv9DecParam,
	bic	r4, r4, #15	@ D.33612, pHwMem_15(D)->MsgSlotAddr,
	add	fp, r4, #256	@ MsgBlockPhy, D.33612,
	mov	r0, fp	@, MsgBlockPhy
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L35	@,
	ldr	r3, [r10, #116]	@ pRv9DecParam_13(D)->SliceParam[0].first_mb_in_slice, pRv9DecParam_13(D)->SliceParam[0].first_mb_in_slice
	cmp	r3, #0	@ pRv9DecParam_13(D)->SliceParam[0].first_mb_in_slice,
	moveq	r2, r3	@ AddSlice0Flag, pRv9DecParam_13(D)->SliceParam[0].first_mb_in_slice
	bne	.L36	@,
.L19:
	ldr	r3, [r10, #32]	@ pRv9DecParam_13(D)->TotalSliceNum, pRv9DecParam_13(D)->TotalSliceNum
	cmp	r3, #0	@ pRv9DecParam_13(D)->TotalSliceNum,
	beq	.L17	@,
	add	r3, fp, r2, lsl #6	@ D.33612, MsgBlockPhy, AddSlice0Flag,
	mov	r7, #44	@ tmp380,
	mov	fp, #0	@ i,
	str	r3, [sp, #12]	@ D.33612, %sfp
	mov	r3, r2, asl #8	@ D.33621, AddSlice0Flag,
	str	r3, [sp, #8]	@ D.33621, %sfp
.L29:
	cmp	fp, #0	@ i,
	beq	.L32	@,
	mla	r8, r7, fp, r6	@ D.33620, tmp380, i, pSliceParam
	ldr	ip, [r8, #36]	@ _96->first_mb_in_slice, _96->first_mb_in_slice
	ldr	r2, [r8, #-8]	@ _99->first_mb_in_slice, _99->first_mb_in_slice
	cmp	ip, r2	@ _96->first_mb_in_slice, _99->first_mb_in_slice
	ble	.L23	@,
.L22:
	ldr	lr, [r8, #16]	@ _238->StreamLength, _238->StreamLength
	mov	r2, #0	@ tmp324,
	ldr	ip, [r8, #8]	@ _238->StreamBitOffset, _238->StreamBitOffset
	bfi	r2, lr, #0, #24	@ tmp324, _238->StreamLength,,
	str	r2, [sp, #20]	@ tmp324,
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@, MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	ldr	r3, [sp, #8]	@ D.33621, %sfp
	bfi	r2, ip, #0, #7	@ MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, _238->StreamBitOffset,,
	strb	r2, [sp, #23]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #20]	@ D.33611, D32
	add	r4, r3, fp, lsl #8	@ D.33621, D.33621, i,
	add	fp, fp, #1	@ j, i,
	str	r2, [r5, r4]	@ D.33611, MEM[(volatile HI_S32 *)_116]
	bl	vfmw_dprint_nothing	@
	ldr	lr, [r8]	@ _238->StreamPhyAddr, _238->StreamPhyAddr
	add	ip, r4, #4	@ D.33621, D.33621,
	mov	r2, #0	@ tmp332,
	bfi	r2, lr, #0, #24	@ tmp332, _238->StreamPhyAddr,,
	str	r2, [sp, #20]	@ tmp332,
	str	r2, [r5, ip]	@ tmp332, MEM[(volatile HI_S32 *)_126]
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r8, #20]	@ _238->StreamLength, _238->StreamLength
	ldr	lr, [r8, #12]	@ _238->StreamBitOffset, _238->StreamBitOffset
	mov	r2, #0	@ tmp337,
	bfi	r2, ip, #0, #24	@ tmp337, _238->StreamLength,,
	add	ip, r4, #8	@ D.33621, D.33621,
	str	r2, [sp, #20]	@ tmp337,
	ldrb	r2, [sp, #23]	@ zero_extendqisi2	@, MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	bfi	r2, lr, #0, #7	@ MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, _238->StreamBitOffset,,
	strb	r2, [sp, #23]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #20]	@ D.33611, D32
	str	r2, [r5, ip]	@ D.33611, MEM[(volatile HI_S32 *)_141]
	bl	vfmw_dprint_nothing	@
	ldr	lr, [r8, #4]	@ _238->StreamPhyAddr, _238->StreamPhyAddr
	add	ip, r4, #12	@ D.33621, D.33621,
	mov	r2, #0	@ tmp345,
	bfi	r2, lr, #0, #24	@ tmp345, _238->StreamPhyAddr,,
	str	r2, [sp, #20]	@ tmp345,
	str	r2, [r5, ip]	@ tmp345, MEM[(volatile HI_S32 *)_151]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r8, #24]	@ _238->dblk_filter_passthrough, _238->dblk_filter_passthrough
	ldr	r9, [r8, #28]	@ _238->osvquant, _238->osvquant
	mov	r3, #0	@ tmp395,
	ldr	lr, [r8, #32]	@ _238->sliceqp, _238->sliceqp
	and	r2, r2, #1	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].osvquant, _238->dblk_filter_passthrough,
	bfi	r2, r9, #1, #2	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].osvquant, _238->osvquant,,
	add	ip, r4, #16	@ D.33621, D.33621,
	bfi	r2, lr, #3, #5	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, _238->sliceqp,,
	str	r3, [sp, #20]	@ tmp395, D32
	strb	r2, [sp, #22]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp
	ldr	r2, [sp, #20]	@ D.33611, D32
	str	r2, [r5, ip]	@ D.33611, MEM[(volatile HI_S32 *)_170]
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r10, #32]	@ D.33612, pRv9DecParam_13(D)->TotalSliceNum
	ldr	lr, [r8, #36]	@ D.33611, _238->first_mb_in_slice
	mov	r3, #0	@ tmp396,
	cmp	fp, ip	@ j, D.33612
	str	r3, [sp, #20]	@ tmp396, D32
	strh	lr, [sp, #20]	@ movhi	@ D.33611, MEM[(struct RV9_V200R004_SLCDNMSG_D5 *)&D32].slice_start_mbn
	bcs	.L24	@,
	mul	r2, r7, fp	@ D.33612, tmp380, j
	add	r9, r6, r2	@ tmp361, pSliceParam, D.33612
	ldr	r9, [r9, #36]	@ _228->first_mb_in_slice, _228->first_mb_in_slice
	cmp	lr, r9	@ D.33611, _228->first_mb_in_slice
	blt	.L24	@,
	sub	r2, r2, #44	@ D.33621, D.33612,
	add	r2, r6, r2	@ ivtmp.34, pSliceParam, D.33621
	b	.L25	@
.L26:
	ldr	r9, [r2, #80]	@ MEM[base: _180, offset: 80B], MEM[base: _180, offset: 80B]
	cmp	lr, r9	@ D.33611, MEM[base: _180, offset: 80B]
	blt	.L24	@,
.L25:
	add	fp, fp, #1	@ j, j,
	add	r2, r2, #44	@ ivtmp.34, ivtmp.34,
	cmp	fp, ip	@ j, D.33612
	bcc	.L26	@,
.L24:
	cmp	ip, fp	@ D.33612, j
	add	r0, r4, #20	@ D.33621, D.33621,
	add	r4, r4, #252	@ D.33621, D.33621,
	mlane	ip, r7, fp, r6	@ tmp371, tmp380, j, pSliceParam
	ldreq	ip, [r10, #4]	@ pRv9DecParam_13(D)->PicWidthInMb, pRv9DecParam_13(D)->PicWidthInMb
	ldreq	lr, [r10, #8]	@ pRv9DecParam_13(D)->PicHeightInMb, pRv9DecParam_13(D)->PicHeightInMb
	moveq	r9, #0	@ D.33612,
	ldrne	r3, [sp, #12]	@ D.33612, %sfp
	streq	r9, [sp, #4]	@ D.33612, %sfp
	muleq	ip, ip, lr	@ D.33612, pRv9DecParam_13(D)->PicWidthInMb, pRv9DecParam_13(D)->PicHeightInMb
	ldrne	ip, [ip, #36]	@ _193->first_mb_in_slice, _193->first_mb_in_slice
	addne	r9, r3, fp, lsl #8	@ D.33612, D.33612, j,
	strne	r9, [sp, #4]	@ D.33612, %sfp
	sub	fp, fp, #1	@ i, j,
	sub	ip, ip, #1	@ D.33611, _193->first_mb_in_slice,
	str	ip, [r10, #120]	@ D.33611, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].last_mb_in_slice
	ldr	ip, [r8, #40]	@ _238->last_mb_in_slice, _238->last_mb_in_slice
	strh	ip, [sp, #22]	@ movhi	@ _238->last_mb_in_slice, MEM[(struct RV9_V200R004_SLCDNMSG_D5 *)&D32].slice_end_mbn
	ldr	ip, [sp, #20]	@ D.33611, D32
	str	ip, [r5, r0]	@ D.33611, MEM[(volatile HI_S32 *)_207]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #4]	@ next_slice_para_addr, %sfp
	str	r9, [sp, #20]	@ D.33612, MEM[(struct RV9_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	str	r3, [r5, r4]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_216]
	bl	vfmw_dprint_nothing	@
.L23:
	ldr	r2, [r10, #32]	@ pRv9DecParam_13(D)->TotalSliceNum, pRv9DecParam_13(D)->TotalSliceNum
	add	fp, fp, #1	@ i, i,
	cmp	r2, fp	@ pRv9DecParam_13(D)->TotalSliceNum, i
	bhi	.L29	@,
.L17:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L32:
	mov	r8, r6	@ D.33620, pSliceParam
	b	.L22	@
.L36:
	mov	r7, #0	@ tmp282,
	ldr	r2, [r10, #88]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset
	mov	r3, r7	@ tmp283, tmp282
	bfi	r3, r7, #0, #24	@ tmp283, tmp282,,
	str	r3, [sp, #20]	@ tmp283,
	add	r4, r4, #512	@ D.33612, D.33612,
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@, MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	bfi	r3, r2, #0, #7	@ MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset,,
	strb	r3, [sp, #23]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV9_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	ldr	r3, [sp, #20]	@ D.33611, D32
	str	r3, [r5]	@ D.33611, MEM[(volatile HI_S32 *)pMsgBase_22]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r10, #80]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr
	mov	r3, r7	@ tmp289, tmp282
	bfi	r3, r2, #0, #24	@ tmp289, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr,,
	str	r3, [sp, #20]	@ tmp289,
	str	r3, [r5, #4]	@ tmp289, MEM[(volatile HI_S32 *)pMsgBase_22 + 4B]
	bl	vfmw_dprint_nothing	@
	mov	r3, r7	@ tmp292, tmp282
	bfi	r3, r7, #0, #24	@ tmp292, tmp282,,
	str	r3, [sp, #20]	@ tmp292,
	ldr	r2, [r10, #92]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset
	ldrb	r3, [sp, #23]	@ zero_extendqisi2	@, MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	bfi	r3, r2, #0, #7	@ MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamBitOffset,,
	strb	r3, [sp, #23]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV9_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	ldr	r3, [sp, #20]	@ D.33611, D32
	str	r3, [r5, #8]	@ D.33611, MEM[(volatile HI_S32 *)pMsgBase_22 + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r10, #84]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr
	mov	r3, r7	@ tmp298, tmp282
	bfi	r3, r2, #0, #24	@ tmp298, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].StreamPhyAddr,,
	str	r3, [sp, #20]	@ tmp298,
	str	r3, [r5, #12]	@ tmp298, MEM[(volatile HI_S32 *)pMsgBase_22 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #104]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].dblk_filter_passthrough, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].dblk_filter_passthrough
	ldr	r0, [r10, #108]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].osvquant, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].osvquant
	ldr	r2, [r10, #112]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].sliceqp, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].sliceqp
	and	r3, r3, #1	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].osvquant, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].dblk_filter_passthrough,
	bfi	r3, r0, #1, #2	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].osvquant, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].osvquant,,
	bfi	r3, r2, #3, #5	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].sliceqp,,
	str	r7, [sp, #20]	@ tmp282, D32
	strb	r3, [sp, #22]	@ MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV9_V200R004_SLCDNMSG_D4 *)&D32].sliceqp
	ldr	r3, [sp, #20]	@ D.33611, D32
	str	r3, [r5, #16]	@ D.33611, MEM[(volatile HI_S32 *)pMsgBase_22 + 16B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #116]	@ MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].first_mb_in_slice, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].first_mb_in_slice
	sub	r3, r3, #1	@ tmp315, MEM[(struct RV9_SLC_PARAM_S *)pRv9DecParam_13(D) + 80B].first_mb_in_slice,
	strh	r7, [sp, #20]	@ movhi	@ tmp282, MEM[(struct RV9_V200R004_SLCDNMSG_D5 *)&D32].slice_start_mbn
	strh	r3, [sp, #22]	@ movhi	@ tmp315, MEM[(struct RV9_V200R004_SLCDNMSG_D5 *)&D32].slice_end_mbn
	ldr	r3, [sp, #20]	@ D.33611, D32
	str	r3, [r5, #20]	@ D.33611, MEM[(volatile HI_S32 *)pMsgBase_22 + 20B]
	bl	vfmw_dprint_nothing	@
	str	r4, [r5, #252]	@ D.33612, MEM[(volatile HI_S32 *)pMsgBase_22 + 252B]
	str	r4, [sp, #20]	@ D.33612, MEM[(struct RV9_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@ AddSlice0Flag,
	b	.L19	@
.L35:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	RV9HAL_V200R004_WriteSliceMsg, .-RV9HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV9HAL_V200R004_StartDec
	.type	RV9HAL_V200R004_StartDec, %function
RV9HAL_V200R004_StartDec:
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
	mov	r6, r0	@ pRv9DecParam, pRv9DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L49	@,
.L42:
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pRv9DecParam
	bl	RV9HAL_V200R004_WriteReg	@
	mov	r1, r6	@, pRv9DecParam
	mov	r0, r5	@, pHwMem
	bl	RV9HAL_V200R004_WritePicMsg	@
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pRv9DecParam
	bl	RV9HAL_V200R004_WriteSliceMsg	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.33627,
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
	mvn	r0, #0	@ D.33627,
	b	.L40	@
.L51:
	.align	2
.L50:
	.word	g_HwMem
	.fnend
	.size	RV9HAL_V200R004_StartDec, .-RV9HAL_V200R004_StartDec
	.align	2
	.global	RV9HAL_V200R004_StartVDH
	.type	RV9HAL_V200R004_StartVDH, %function
RV9HAL_V200R004_StartVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	vfmw_dprint_nothing	@
	.fnend
	.size	RV9HAL_V200R004_StartVDH, .-RV9HAL_V200R004_StartVDH
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
