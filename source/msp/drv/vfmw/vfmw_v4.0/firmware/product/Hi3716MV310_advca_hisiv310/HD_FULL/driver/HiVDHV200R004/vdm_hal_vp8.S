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
	.file	"vdm_hal_vp8.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_vp8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.o
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
	.global	VP8HAL_V200R004_CfgReg
	.type	VP8HAL_V200R004_CfgReg, %function
VP8HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r2, #1	@ VdhId,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp209,
	mov	r7, r2	@ VdhId, VdhId
	str	r3, [sp, #4]	@ tmp209, D32
	bhi	.L7	@,
	cmp	r2, #0	@ VdhId,
	bgt	.L7	@,
	ldr	r3, [r1]	@ pHwMem_11(D)->pVdmRegVirAddr, pHwMem_11(D)->pVdmRegVirAddr
	mov	r5, r0	@ pVp8DecParam, pVp8DecParam
	mov	r8, r1	@ pHwMem, pHwMem
	cmp	r3, #0	@ pHwMem_11(D)->pVdmRegVirAddr,
	beq	.L18	@,
.L6:
	ldr	r1, [r5, #2788]	@ pVp8DecParam_17(D)->pic_height_in_mb, pVp8DecParam_17(D)->pic_height_in_mb
	movw	r6, #1140	@ tmp224,
	ldr	r2, [r5, #2784]	@ pVp8DecParam_17(D)->pic_width_in_mb, pVp8DecParam_17(D)->pic_width_in_mb
	ldr	r3, [sp, #4]	@ tmp217,
	mul	r6, r6, r7	@ tmp223, tmp224, VdhId
	ldr	r4, .L20	@ tmp331,
	mul	r2, r2, r1	@ D.33404, pVp8DecParam_17(D)->pic_width_in_mb, pVp8DecParam_17(D)->pic_height_in_mb
	sub	r2, r2, #1	@ D.33404, D.33404,
	ldr	r1, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp217, D.33404,,
	str	r3, [sp, #4]	@ tmp217,
	mov	r3, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp217,
	and	r3, r3, #191	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r3, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en,,
	strb	r3, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	ldr	r3, [sp, #4]	@ D.33406, D32
	str	r3, [r1, #8]	@ D.33406, *_29
	bl	vfmw_dprint_nothing	@
	mov	r3, #536870912	@ tmp227,
	ldr	r2, [r5, #2792]	@ pVp8DecParam_17(D)->ddr_stride, pVp8DecParam_17(D)->ddr_stride
	mov	r1, #12	@ tmp230,
	ldr	r0, [r5, #3140]	@ pVp8DecParam_17(D)->Compress_en, pVp8DecParam_17(D)->Compress_en
	mov	r2, r2, lsr #6	@ D.33404, pVp8DecParam_17(D)->ddr_stride,
	str	r3, [sp, #4]	@ tmp227, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	strb	r1, [sp, #4]	@ tmp230, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfc	r3, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	ubfx	r3, r3, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	ldrh	r1, [sp, #4]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	orr	r3, r3, #32	@ tmp247, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	bfi	r1, r2, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.33404,,
	strh	r1, [sp, #4]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	uxtb	r3, r3	@ tmp250, tmp247
	ubfx	r2, r1, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	bfi	r3, r0, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pVp8DecParam_17(D)->Compress_en,,
	orr	r2, r2, #192	@ tmp241, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strb	r2, [sp, #5]	@ tmp241, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	mvn	r3, r3, asl #25	@ tmp254, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en,
	ldr	r0, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	mvn	r3, r3, lsr #25	@ tmp254, tmp254,
	strb	r3, [sp, #7]	@ tmp254, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	ldr	r3, [sp, #4]	@ D.33406, D32
	str	r3, [r0, #12]	@ D.33406, *_58
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	ldr	r3, [r8, #44]	@ pHwMem_11(D)->MsgSlotAddr, pHwMem_11(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33406, pHwMem_11(D)->MsgSlotAddr,
	str	r3, [r2, #16]	@ D.33406, *_70
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	ldr	r3, [r8, #28]	@ pHwMem_11(D)->MsgSlotAddr, pHwMem_11(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33406, pHwMem_11(D)->MsgSlotAddr,
	str	r3, [r2, #20]	@ D.33406, *_81
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	ldr	r2, [r5, #2812]	@ D.33406, pVp8DecParam_17(D)->stream_base_addr
	str	r2, [r3, #24]	@ D.33406, *_90
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	ldr	r3, [r8, #1100]	@ pHwMem_11(D)->PpfdBufAddr, pHwMem_11(D)->PpfdBufAddr
	bic	r3, r3, #15	@ D.33406, pHwMem_11(D)->PpfdBufAddr,
	str	r3, [r2, #128]	@ D.33406, *_99
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r8, #1104]	@ D.33406, pHwMem_11(D)->PpfdBufLen
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	str	r3, [r2, #132]	@ D.33406, *_107
	str	r3, [sp, #4]	@ D.33406, D32
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2784]	@ pVp8DecParam_17(D)->pic_width_in_mb, pVp8DecParam_17(D)->pic_width_in_mb
	cmp	r3, #120	@ pVp8DecParam_17(D)->pic_width_in_mb,
	movhi	r3, #0	@ tmp290,
	movls	r3, #65536	@ tmp291,
	cmp	r7, #0	@ VdhId,
	str	r3, [sp, #4]	@ tmp291, D32
	beq	.L19	@,
.L10:
	movw	r6, #1140	@ tmp300,
	ldr	r3, [r5, #3116]	@ pVp8DecParam_17(D)->image_curr_rcn_addr, pVp8DecParam_17(D)->image_curr_rcn_addr
	mul	r6, r6, r7	@ tmp299, tmp300, VdhId
	bic	r3, r3, #15	@ D.33406, pVp8DecParam_17(D)->image_curr_rcn_addr,
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	str	r3, [r2, #96]	@ D.33406, *_127
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	ldr	r7, [r5, #2792]	@ ystride, pVp8DecParam_17(D)->ddr_stride
	str	r7, [r3, #100]	@ ystride, *_136
	mov	r7, r7, asl #1	@ D.33404, ystride,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2788]	@ pVp8DecParam_17(D)->pic_height_in_mb, pVp8DecParam_17(D)->pic_height_in_mb
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	add	r3, r3, #1	@ D.33404, pVp8DecParam_17(D)->pic_height_in_mb,
	mov	r3, r3, lsr #1	@ D.33404, D.33404,
	mul	r3, r3, r7	@ D.33406, D.33404, D.33404
	str	r3, [r2, #104]	@ D.33406, *_149
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	mov	r3, #0	@ tmp323,
	mvn	r2, #0	@ tmp329,
	mov	r0, r3	@ D.33402, tmp323
	str	r3, [r1, #108]	@ tmp323, *_156
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_8(D)].pVdmRegVirAddr, g_HwMem[VdhId_8(D)].pVdmRegVirAddr
	str	r2, [r3, #32]	@ tmp329, *_161
.L4:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L19:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L20+4	@ tmp295,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [sp, #4]	@ D32, D32
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L10	@
.L18:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r8]	@ p32, pHwMem_11(D)->pVdmRegVirAddr
	bne	.L6	@
.L7:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33402,
	b	.L4	@
.L21:
	.align	2
.L20:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	VP8HAL_V200R004_CfgReg, .-VP8HAL_V200R004_CfgReg
	.align	2
	.global	VP8HAL_V200R004_CfgDnMsg
	.type	VP8HAL_V200R004_CfgDnMsg, %function
VP8HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pVp8DecParam, pVp8DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r1, #44]	@, pHwMem_9(D)->MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ p32,
	beq	.L27	@,
	ldr	r3, [r4, #2796]	@ pVp8DecParam_15(D)->frame_type, pVp8DecParam_15(D)->frame_type
	mov	r5, #0	@ tmp360,
	ldr	r2, [r4, #2800]	@ pVp8DecParam_15(D)->last_frame_type, pVp8DecParam_15(D)->last_frame_type
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, pVp8DecParam_15(D)->frame_type,
	str	r5, [sp, #4]	@ tmp360, D32
	bfi	r3, r2, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, pVp8DecParam_15(D)->last_frame_type,,
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8]	@ D.33468, MEM[(volatile HI_S32 *)p32_12]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2808]	@ pVp8DecParam_15(D)->full_pixel, pVp8DecParam_15(D)->full_pixel
	ldr	r3, [r4, #2804]	@ pVp8DecParam_15(D)->use_bilinear_mc_filter, pVp8DecParam_15(D)->use_bilinear_mc_filter
	rsb	r3, r3, r2, lsl #1	@ D.33469, pVp8DecParam_15(D)->use_bilinear_mc_filter, pVp8DecParam_15(D)->full_pixel,
	add	r3, r3, #1	@ D.33468, D.33469,
	str	r3, [r8, #4]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2784]	@ pVp8DecParam_15(D)->pic_width_in_mb, pVp8DecParam_15(D)->pic_width_in_mb
	ldr	r3, [r4, #2788]	@ pVp8DecParam_15(D)->pic_height_in_mb, pVp8DecParam_15(D)->pic_height_in_mb
	mov	r0, #0	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb,
	sub	r2, r2, #1	@ tmp374, pVp8DecParam_15(D)->pic_width_in_mb,
	mov	r1, r0	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb
	sub	r3, r3, #1	@ tmp379, pVp8DecParam_15(D)->pic_height_in_mb,
	bfi	r0, r2, #0, #9	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb, tmp374,,
	bfi	r1, r3, #0, #9	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, tmp379,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #8]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 8B]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2752]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->prob_skip_false, pVp8DecParam_15(D)->prob_skip_false
	ldrb	r3, [r4, #2753]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mb_no_coeff_skip, pVp8DecParam_15(D)->mb_no_coeff_skip
	ldrb	r1, [r4, #2754]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->multi_token_partition, pVp8DecParam_15(D)->multi_token_partition
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, pVp8DecParam_15(D)->mb_no_coeff_skip,
	bfi	r3, r1, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, pVp8DecParam_15(D)->multi_token_partition,,
	str	r5, [sp, #4]	@ tmp360, D32
	strb	r2, [sp, #4]	@ pVp8DecParam_15(D)->prob_skip_false, MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].prob_skip_false
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #12]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 12B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #2755]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->segmentation_enable, pVp8DecParam_15(D)->segmentation_enable
	ldrb	r2, [r4, #2756]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->update_mb_segmentation_map, pVp8DecParam_15(D)->update_mb_segmentation_map
	ldrb	r1, [r4, #2757]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mb_segmentation_abs_delta, pVp8DecParam_15(D)->mb_segmentation_abs_delta
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].update_mb_segmentation_map, pVp8DecParam_15(D)->segmentation_enable,
	bfi	r3, r2, #1, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].update_mb_segmentation_map, pVp8DecParam_15(D)->update_mb_segmentation_map,,
	ldrb	r2, [r4, #2758]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mode_ref_lf_delta_enabled, pVp8DecParam_15(D)->mode_ref_lf_delta_enabled
	bfi	r3, r1, #2, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mb_segmentation_abs_delta, pVp8DecParam_15(D)->mb_segmentation_abs_delta,,
	bfi	r3, r2, #3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled, pVp8DecParam_15(D)->mode_ref_lf_delta_enabled,,
	str	r5, [sp, #4]	@ tmp360, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled, MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #16]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 16B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #2760]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->filter_type, pVp8DecParam_15(D)->filter_type
	ldrb	r2, [r4, #2761]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->last_filter_type, pVp8DecParam_15(D)->last_filter_type
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, pVp8DecParam_15(D)->filter_type,
	ldrb	r1, [r4, #2763]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->sharpness_level, pVp8DecParam_15(D)->sharpness_level
	bfi	r3, r2, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, pVp8DecParam_15(D)->last_filter_type,,
	ldrb	r2, [r4, #2762]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->filter_level, pVp8DecParam_15(D)->filter_level
	str	r5, [sp, #4]	@ tmp360, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type
	ldrh	r3, [sp, #4]	@,
	bfi	r3, r2, #3, #6	@ tmp445, pVp8DecParam_15(D)->filter_level,,
	ldrb	r2, [r4, #2764]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->last_sharpness_level, pVp8DecParam_15(D)->last_sharpness_level
	strh	r3, [sp, #4]	@ movhi	@ tmp445,
	mov	r3, r3, lsr #8	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].cur_sharpness_level, tmp445,
	bfi	r3, r1, #1, #3	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].cur_sharpness_level, pVp8DecParam_15(D)->sharpness_level,,
	bfi	r3, r2, #4, #3	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level, pVp8DecParam_15(D)->last_sharpness_level,,
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level, MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #20]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 20B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #2765]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y1dc_sign, pVp8DecParam_15(D)->y1dc_sign
	ldrb	r1, [r4, #2766]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_absdelta_q
	ldrb	r2, [r4, #2767]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2dc_sign, pVp8DecParam_15(D)->y2dc_sign
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_sign,
	bfi	r3, r1, #1, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_absdelta_q,,
	ldrb	r0, [r4, #2768]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2dc_absdelta_q, pVp8DecParam_15(D)->y2dc_absdelta_q
	bfi	r3, r2, #5, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign, pVp8DecParam_15(D)->y2dc_sign,,
	ldrb	ip, [r4, #2769]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2ac_sign, pVp8DecParam_15(D)->y2ac_sign
	str	r5, [sp, #4]	@ tmp360, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign
	ldrh	r1, [sp, #4]	@,
	ldrb	r2, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_absdelta_q
	bfi	r1, r0, #6, #4	@ tmp488, pVp8DecParam_15(D)->y2dc_absdelta_q,,
	ldrb	r0, [r4, #2772]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvdc_absdelta_q, pVp8DecParam_15(D)->uvdc_absdelta_q
	mov	r3, r1, lsr #8	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_sign, tmp488,
	bfi	r2, r0, #0, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_absdelta_q, pVp8DecParam_15(D)->uvdc_absdelta_q,,
	bfi	r3, ip, #2, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_sign, pVp8DecParam_15(D)->y2ac_sign,,
	ldrb	r0, [r4, #2773]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvac_sign, pVp8DecParam_15(D)->uvac_sign
	ldrb	ip, [r4, #2770]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2ac_absdelta_q, pVp8DecParam_15(D)->y2ac_absdelta_q
	bfi	r2, r0, #4, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign, pVp8DecParam_15(D)->uvac_sign,,
	ldrb	r0, [r4, #2771]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvdc_sign, pVp8DecParam_15(D)->uvdc_sign
	strb	r2, [sp, #6]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign
	bfi	r3, ip, #3, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_absdelta_q, pVp8DecParam_15(D)->y2ac_absdelta_q,,
	ldrh	r2, [sp, #6]	@,
	bfi	r3, r0, #7, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign, pVp8DecParam_15(D)->uvdc_sign,,
	ldrb	ip, [r4, #2774]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvac_absdelta_q, pVp8DecParam_15(D)->uvac_absdelta_q
	strh	r1, [sp, #4]	@ movhi	@ tmp488,
	bfi	r2, ip, #5, #4	@ tmp530, pVp8DecParam_15(D)->uvac_absdelta_q,,
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign
	strh	r2, [sp, #6]	@ movhi	@ tmp530,
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #24]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 24B]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2759]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->base_qindex, pVp8DecParam_15(D)->base_qindex
	mov	r3, #0	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex,
	bfi	r3, r2, #0, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex, pVp8DecParam_15(D)->base_qindex,,
	str	r5, [sp, #4]	@ tmp360, D32
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex, MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #28]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 28B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2780]	@ D.33468, pVp8DecParam_15(D)->value
	str	r3, [r8, #32]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 32B]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #2778]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->range, pVp8DecParam_15(D)->range
	ldrb	r1, [r4, #2779]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->count, pVp8DecParam_15(D)->count
	mov	r3, #0	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count,
	bfi	r3, r1, #0, #6	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count, pVp8DecParam_15(D)->count,,
	str	r5, [sp, #4]	@ tmp360, D32
	mov	r5, #0	@ tmp556,
	strb	r2, [sp, #4]	@ pVp8DecParam_15(D)->range, MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].range
	strb	r3, [sp, #6]	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count, MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #36]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 36B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2820]	@ D.33469, pVp8DecParam_15(D)->bit_offset_0
	ldrb	r3, [r4, #2779]	@ zero_extendqisi2	@ D.33469, pVp8DecParam_15(D)->count
	ldr	r1, [r4, #2816]	@ pVp8DecParam_15(D)->bit_len_0, pVp8DecParam_15(D)->bit_len_0
	cmp	r3, r2	@ D.33469, D.33469
	addhi	r2, r2, #128	@ D.33469, D.33469,
	add	r1, r3, r1	@ D16_bit_len_0, D.33469, pVp8DecParam_15(D)->bit_len_0
	rsbls	r2, r3, r2	@ D16_bit_offset_0, D.33469, D.33469
	rsbhi	r2, r3, r2	@ D16_bit_offset_0, D.33469, D.33469
	mov	r3, r5	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, tmp556
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, D16_bit_len_0,,
	ldrhi	r7, [r4, #2824]	@ pVp8DecParam_15(D)->bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0
	ldrls	r7, [r4, #2824]	@ D17_bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0
	subhi	r7, r7, #16	@ D17_bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, D16_bit_offset_0,,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #64]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 64B]
	bl	vfmw_dprint_nothing	@
	mov	r3, r5	@ tmp561, tmp556
	bfi	r3, r7, #0, #24	@ tmp561, D17_bit_byte_offset_0,,
	str	r3, [sp, #4]	@ tmp561,
	str	r3, [r8, #68]	@ tmp561, MEM[(volatile HI_S32 *)p32_12 + 68B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2828]	@ pVp8DecParam_15(D)->bit_len_1, pVp8DecParam_15(D)->bit_len_1
	mov	r3, r5	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, tmp556
	ldr	r2, [r4, #2832]	@ pVp8DecParam_15(D)->bit_offset_1, pVp8DecParam_15(D)->bit_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, pVp8DecParam_15(D)->bit_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, pVp8DecParam_15(D)->bit_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #72]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 72B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2836]	@ pVp8DecParam_15(D)->bit_byte_offset_1, pVp8DecParam_15(D)->bit_byte_offset_1
	bfi	r5, r3, #0, #24	@ tmp571, pVp8DecParam_15(D)->bit_byte_offset_1,,
	str	r5, [sp, #4]	@ tmp571,
	str	r5, [r8, #76]	@ tmp571, MEM[(volatile HI_S32 *)p32_12 + 76B]
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #3040	@,,
	ldr	r0, [r4, #3036]	@ pVp8DecParam_15(D)->segment_feature_dat0, pVp8DecParam_15(D)->segment_feature_dat0
	ldmia	r1, {r1, r2, r3}	@,,,
	strb	r0, [sp, #4]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat00
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat01
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat02
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat03
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #80]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 80B]
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #3056	@,,
	ldr	r0, [r4, #3052]	@ pVp8DecParam_15(D)->segment_feature_dat1, pVp8DecParam_15(D)->segment_feature_dat1
	ldmia	r1, {r1, r2, r3}	@,,,
	strb	r0, [sp, #4]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat10
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat11
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat12
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat13
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #84]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 84B]
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #3072	@,,
	ldr	r0, [r4, #3068]	@ pVp8DecParam_15(D)->ref_lf_delta, pVp8DecParam_15(D)->ref_lf_delta
	ldmia	r1, {r1, r2, r3}	@,,,
	strb	r0, [sp, #4]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta0
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta1
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta2
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta3
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #88]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 88B]
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #3088	@,,
	ldr	r0, [r4, #3084]	@ pVp8DecParam_15(D)->mode_lf_delta, pVp8DecParam_15(D)->mode_lf_delta
	ldmia	r1, {r1, r2, r3}	@,,,
	strb	r0, [sp, #4]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta0
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta1
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta2
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta3
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #92]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 92B]
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #3104	@,,
	ldr	r0, [r4, #3100]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, pVp8DecParam_15(D)->ref_frame_sign_bias
	ldmia	r1, {r1, r2, r3}	@,,,
	strb	r0, [sp, #4]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_0
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_1
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_2
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_3
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r8, #96]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 96B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3136]	@ D.33468, pVp8DecParam_15(D)->SegIdAddr
	str	r3, [r8, #100]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 100B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3116]	@ D.33468, pVp8DecParam_15(D)->image_curr_rcn_addr
	str	r3, [r8, #128]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 128B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3120]	@ D.33468, pVp8DecParam_15(D)->image_alt_ref_addr
	str	r3, [r8, #132]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 132B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3124]	@ D.33468, pVp8DecParam_15(D)->image_gld_ref_addr
	str	r3, [r8, #136]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 136B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3128]	@ D.33468, pVp8DecParam_15(D)->image_last_ref_addr
	str	r3, [r8, #140]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 140B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1080]	@ pHwMem_9(D)->SedTopAddr, pHwMem_9(D)->SedTopAddr
	bic	r3, r3, #15	@ D.33468, pHwMem_9(D)->SedTopAddr,
	str	r3, [r8, #144]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 144B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1084]	@ pHwMem_9(D)->PmvTopAddr, pHwMem_9(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.33468, pHwMem_9(D)->PmvTopAddr,
	str	r3, [r8, #148]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 148B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #1088]	@ pHwMem_9(D)->RcnTopAddr, pHwMem_9(D)->RcnTopAddr
	bic	r3, r3, #15	@ D.33468, pHwMem_9(D)->RcnTopAddr,
	str	r3, [r8, #152]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 152B]
	bl	vfmw_dprint_nothing	@
	ldr	r5, [r6, #1116]	@ pHwMem_9(D)->VpTabAddr, pHwMem_9(D)->VpTabAddr
	bic	r5, r5, #15	@ D.33469, pHwMem_9(D)->VpTabAddr,
	str	r5, [r8, #156]	@ D.33469, MEM[(volatile HI_S32 *)p32_12 + 156B]
	str	r5, [sp, #4]	@ D.33469, MEM[(struct VP8_V200R004_PICDNMSG_D39 *)&D32].tab_addr
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.33469
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L27	@,
	mov	r1, r4	@, pVp8DecParam
	mov	r2, #2752	@,
	bl	memcpy	@
	ldr	r3, [r6, #1096]	@ pHwMem_9(D)->DblkTopAddr, pHwMem_9(D)->DblkTopAddr
	mov	r6, r4	@ ivtmp.31, pVp8DecParam
	add	r4, r4, #2832	@ ivtmp.26, pVp8DecParam,
	bic	r3, r3, #15	@ D.33468, pHwMem_9(D)->DblkTopAddr,
	str	r3, [r8, #160]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 160B]
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@, p32
	bl	MEM_Vir2Phy	@
	add	r9, r6, #2864	@ ivtmp.35, ivtmp.31,
	add	r4, r4, #8	@ ivtmp.26, ivtmp.26,
	add	r9, r9, #8	@ ivtmp.35, ivtmp.35,
	add	r5, r8, #252	@ p32, p32,
	add	r7, r8, #380	@ D.33483, p32,
	add	r0, r0, #256	@ D.33468,,
	str	r0, [r8, #252]	@ D.33468, MEM[(volatile HI_S32 *)p32_12 + 252B]
	bl	vfmw_dprint_nothing	@
.L28:
	ldr	r1, [r4, #4]!	@ MEM[base: _308, offset: 0B], MEM[base: _308, offset: 0B]
	mov	r3, #0	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	ldr	r2, [r9, #4]!	@ MEM[base: _311, offset: 0B], MEM[base: _311, offset: 0B]
	add	r8, r5, #16	@ p32, p32,
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[base: _308, offset: 0B],,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len
	add	r6, r6, #4	@ ivtmp.31, ivtmp.31,
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[base: _311, offset: 0B],,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r5, #4]	@ D.33468, MEM[(volatile HI_S32 *)p32_401 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #2904]	@ MEM[base: _315, offset: 2908B], MEM[base: _315, offset: 2908B]
	mov	r3, #0	@ tmp638,
	bfi	r3, r2, #0, #24	@ tmp638, MEM[base: _315, offset: 2908B],,
	str	r3, [sp, #4]	@ tmp638,
	str	r3, [r5, #8]	@ tmp638, MEM[(volatile HI_S32 *)p32_401 + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, #2936]	@ MEM[base: _315, offset: 2940B], MEM[base: _315, offset: 2940B]
	mov	r3, #0	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	ldr	r2, [r6, #2968]	@ MEM[base: _315, offset: 2972B], MEM[base: _315, offset: 2972B]
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[base: _315, offset: 2940B],,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[base: _315, offset: 2972B],,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset
	ldr	r3, [sp, #4]	@ D.33468, D32
	str	r3, [r5, #12]	@ D.33468, MEM[(volatile HI_S32 *)p32_401 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #3000]	@ MEM[base: _315, offset: 3004B], MEM[base: _315, offset: 3004B]
	mov	r3, #0	@ tmp649,
	bfi	r3, r2, #0, #24	@ tmp649, MEM[base: _315, offset: 3004B],,
	str	r3, [sp, #4]	@ tmp649,
	str	r3, [r5, #16]	@ tmp649, MEM[(volatile HI_S32 *)p32_401 + 16B]
	mov	r5, r8	@ p32, p32
	bl	vfmw_dprint_nothing	@
	cmp	r7, r8	@ D.33483, p32
	bne	.L28	@,
	mov	r0, #0	@ D.33467,
.L24:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L27:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33467,
	b	.L24	@
	.fnend
	.size	VP8HAL_V200R004_CfgDnMsg, .-VP8HAL_V200R004_CfgDnMsg
	.align	2
	.global	VP8HAL_V200R004_StartDec
	.type	VP8HAL_V200R004_StartDec, %function
VP8HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #1140	@ tmp120,
	mul	r5, r5, r1	@ tmp119, tmp120, VdhId
	ldr	r7, .L47	@ tmp121,
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	add	r8, r5, r7	@ pHwMem, tmp119, tmp121
	bhi	.L39	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L39	@,
	ldr	r3, [r0, #2784]	@ pVp8DecParam_9(D)->pic_width_in_mb, pVp8DecParam_9(D)->pic_width_in_mb
	mov	r6, r0	@ pVp8DecParam, pVp8DecParam
	cmp	r3, #512	@ pVp8DecParam_9(D)->pic_width_in_mb,
	bhi	.L39	@,
	ldr	r3, [r0, #2788]	@ pVp8DecParam_9(D)->pic_height_in_mb, pVp8DecParam_9(D)->pic_height_in_mb
	cmp	r3, #512	@ pVp8DecParam_9(D)->pic_height_in_mb,
	bhi	.L39	@,
	ldr	r3, [r5, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L46	@,
.L40:
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pVp8DecParam
	bl	VP8HAL_V200R004_CfgReg	@
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pVp8DecParam
	bl	VP8HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.33491,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L46:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r5, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	bne	.L40	@
.L39:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33491,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L48:
	.align	2
.L47:
	.word	g_HwMem
	.fnend
	.size	VP8HAL_V200R004_StartDec, .-VP8HAL_V200R004_StartDec
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
