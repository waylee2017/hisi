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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_divx3)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_divx3.o
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
	.global	DIVX3HAL_V200R004_WriteReg
	.type	DIVX3HAL_V200R004_WriteReg, %function
DIVX3HAL_V200R004_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1	@ pDivx3DecParam, pDivx3DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pHwMem, pHwMem
	ldr	r1, .L11	@,
	mov	r0, #2	@,
	mov	r7, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	r1, [r5, #12]	@ pDivx3DecParam_7(D)->PicHeightInMb, pDivx3DecParam_7(D)->PicHeightInMb
	movw	r8, #1140	@ tmp264,
	ldr	r2, [r5, #8]	@ pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicWidthInMb
	mov	r9, #0	@ tmp244,
	mul	r8, r8, r7	@ tmp263, tmp264, VdhId
	mov	r3, r9	@ tmp249, tmp244
	mul	r2, r2, r1	@ D.29185, pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicHeightInMb
	ldr	r4, .L11+4	@ tmp433,
	mov	ip, #0	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en,
	bfi	ip, r9, #1, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, tmp244,,
	ldr	r1, .L11+8	@,
	mov	r0, #3	@,
	sub	r2, r2, #1	@ D.29185, D.29185,
	ldr	lr, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp249, D.29185,,
	str	r3, [sp, #4]	@ tmp249,
	strb	ip, [sp, #7]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en
	mov	r3, r3, lsr #16	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp249,
	bfi	r3, r9, #7, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp244,,
	strb	r3, [sp, #6]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, MEM[(struct DIVX3_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en
	ldr	r2, [sp, #4]	@ D.29185, D32
	str	r2, [lr, #8]	@ D.29185, *_24
	bl	dprint_vfmw	@
	str	r9, [sp, #4]	@ tmp244, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	mov	r2, #5	@ tmp271,
	ldr	r1, [r5, #136]	@ pDivx3DecParam_7(D)->DDRStride, pDivx3DecParam_7(D)->DDRStride
	mov	r0, #3	@,
	bfi	r3, r9, #0, #12	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, tmp244,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	strb	r2, [sp, #4]	@ tmp271, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].video_standard
	mov	r3, r3, lsr #8	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dnr_on_line, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num,
	ldrh	r2, [sp, #4]	@, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	and	r3, r3, #239	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dnr_on_line,
	ldr	ip, [r5, #156]	@ pDivx3DecParam_7(D)->Compress_en, pDivx3DecParam_7(D)->Compress_en
	orr	r3, r3, #32	@ tmp290, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en,
	mov	r1, r1, lsr #6	@ D.29185, pDivx3DecParam_7(D)->DDRStride,
	bfi	r2, r1, #4, #10	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride, D.29185,,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	uxtb	r3, r3	@ tmp293, tmp290
	ubfx	r2, r2, #8, #8	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ddr_stride,,
	bfi	r3, ip, #6, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].compress_en, pDivx3DecParam_7(D)->Compress_en,,
	orr	r2, r2, #192	@ tmp282, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp,
	bfi	r3, r9, #7, #1	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en, tmp244,,
	strb	r2, [sp, #5]	@ tmp282, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].mv_output_en
	strb	r3, [sp, #7]	@ MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct DIVX3_V200R004_BASIC_CFG1 *)&D32].ppfd_en
	ldr	ip, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [sp, #4]	@ D.29185, D32
	ldr	r1, .L11+12	@,
	str	r3, [ip, #12]	@ D.29185, *_49
	mov	r2, r3	@, D.29185
	bl	dprint_vfmw	@
	ldr	r3, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r6, #44]	@ pHwMem_55(D)->MsgSlotAddr, pHwMem_55(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L11+16	@,
	bic	r2, r2, #15	@ D.29185, pHwMem_55(D)->MsgSlotAddr,
	str	r2, [r3, #16]	@ D.29185, *_63
	bl	dprint_vfmw	@
	ldr	r3, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r6, #28]	@ pHwMem_55(D)->MsgSlotAddr, pHwMem_55(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L11+20	@,
	bic	r2, r2, #15	@ D.29185, pHwMem_55(D)->MsgSlotAddr,
	str	r2, [r3, #20]	@ D.29185, *_75
	bl	dprint_vfmw	@
	ldr	r3, [r5, #96]	@ D.29188, pDivx3DecParam_7(D)->StreamBaseAddr
	ldr	r2, [r4, r8]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, .L11+24	@,
	str	r3, [sp, #4]	@ D.29188, MEM[(struct DIVX3_V200R004_STREAM_BASE_ADDR *)&D32].stream_base_addr
	str	r3, [r2, #24]	@ D.29188, *_86
	mov	r2, r3	@, D.29188
	bl	dprint_vfmw	@
	ldr	r3, [r5, #8]	@ pDivx3DecParam_7(D)->PicWidthInMb, pDivx3DecParam_7(D)->PicWidthInMb
	cmp	r3, #120	@ pDivx3DecParam_7(D)->PicWidthInMb,
	strhi	r9, [sp, #4]	@ tmp244, D32
	movls	r3, #65536	@ tmp325,
	strls	r3, [sp, #4]	@ tmp325, D32
	cmp	r7, #0	@ VdhId,
	beq	.L10	@,
	ble	.L6	@,
	mov	r2, #194	@,
	ldr	r1, .L11+28	@,
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	dprint_vfmw	@
.L10:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L11+32	@ tmp328,
	ldr	r1, [sp, #4]	@ D32, D32
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L6:
	movw	r2, #1140	@ tmp334,
	movw	r3, #3075	@ tmp337,
	mul	r7, r2, r7	@ tmp333, tmp334, VdhId
	movt	r3, 48	@ tmp337,
	mov	r2, r3	@, tmp337
	ldr	r1, .L11+36	@,
	mov	r0, #3	@,
	mov	r9, #0	@ tmp404,
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #60]	@ tmp337, *_106
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #64]	@ tmp337, *_111
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #68]	@ tmp337, *_116
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #72]	@ tmp337, *_121
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #76]	@ tmp337, *_126
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #80]	@ tmp337, *_131
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #84]	@ tmp337, *_136
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #128]	@ pDivx3DecParam_7(D)->CurPicPhyAddr, pDivx3DecParam_7(D)->CurPicPhyAddr
	mov	r0, #3	@,
	ldr	r1, .L11+40	@,
	bic	r2, r2, #15	@ D.29185, pDivx3DecParam_7(D)->CurPicPhyAddr,
	str	r2, [r3, #96]	@ D.29185, *_145
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #136]	@ D.29185, pDivx3DecParam_7(D)->DDRStride
	mov	r0, #3	@,
	ldr	r8, [r5, #12]	@ height_in_mb, pDivx3DecParam_7(D)->PicHeightInMb
	ldr	r1, .L11+44	@,
	str	r2, [r3, #100]	@ D.29185, *_155
	add	r8, r8, #1	@ D.29185, height_in_mb,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #136]	@ pDivx3DecParam_7(D)->DDRStride, pDivx3DecParam_7(D)->DDRStride
	mov	r8, r8, lsr #1	@ D.29185, D.29185,
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r1, .L11+48	@,
	mov	r0, #3	@,
	mov	r2, r2, asl #1	@ D.29185, pDivx3DecParam_7(D)->DDRStride,
	mul	r2, r8, r2	@ D.29185, D.29185, D.29185
	str	r2, [r3, #104]	@ D.29185, *_168
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r1, .L11+52	@,
	mov	r0, #3	@,
	str	r9, [r3, #108]	@ tmp404, *_176
	ldr	r3, [r6, #1120]	@ D.29188, pHwMem_55(D)->DnrMbInfoAddr
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r2, r3	@, D.29188
	str	r3, [ip, #144]	@ D.29188, *_184
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r2, r9	@, tmp404
	ldr	r1, .L11+56	@,
	mov	r0, #3	@,
	str	r9, [sp, #4]	@ tmp404, D32
	str	r9, [r3, #148]	@ tmp404, *_191
	bl	dprint_vfmw	@
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	ip, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	bfi	r3, r9, #0, #1	@ MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en, tmp404,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en, MEM[(struct DIVX3_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	r2, [sp, #4]	@ D.29185, D32
	ldr	r1, .L11+60	@,
	str	r2, [ip, #152]	@ D.29185, *_198
	bl	dprint_vfmw	@
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp432,
	str	r2, [r3, #32]	@ tmp432, *_206
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L12:
	.align	2
.L11:
	.word	.LC0
	.word	g_HwMem
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	s_RegPhyBaseAddr
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
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
	mov	r0, #2	@,
	ldr	r1, .L17	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	bic	r0, r0, #15	@, pHwMem_4(D)->MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ p32,
	beq	.L16	@,
	ldr	r2, [r4, #4]	@ pDivx3DecParam_11(D)->prediction_type, pDivx3DecParam_11(D)->prediction_type
	mov	r7, #0	@ tmp209,
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type,
	str	r7, [sp, #4]	@ tmp209, D32
	bfi	r3, r2, #0, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, pDivx3DecParam_11(D)->prediction_type,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, MEM[(struct DIVX3_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type
	ldr	r2, [sp, #4]	@ D.29211, D32
	mov	r0, #4	@,
	ldr	r1, .L17+4	@,
	str	r2, [r5]	@ D.29211, MEM[(volatile HI_S32 *)p32_8]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@ pDivx3DecParam_11(D)->PicWidthInMb, pDivx3DecParam_11(D)->PicWidthInMb
	ldr	r3, [r4, #12]	@ pDivx3DecParam_11(D)->PicHeightInMb, pDivx3DecParam_11(D)->PicHeightInMb
	mov	r0, #0	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r2, r2, #1	@ tmp217, pDivx3DecParam_11(D)->PicWidthInMb,
	mov	r1, r0	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	sub	r3, r3, #1	@ tmp222, pDivx3DecParam_11(D)->PicHeightInMb,
	bfi	r0, r2, #0, #9	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, tmp217,,
	bfi	r1, r3, #0, #9	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, tmp222,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct DIVX3_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29211, D32
	ldr	r1, .L17+8	@,
	str	r2, [r5, #4]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 4B]
	bl	dprint_vfmw	@
	ldr	r3, [r4, #16]	@ pDivx3DecParam_11(D)->quantizer, pDivx3DecParam_11(D)->quantizer
	ldr	r1, [r4, #20]	@ pDivx3DecParam_11(D)->rounding_type, pDivx3DecParam_11(D)->rounding_type
	mov	r0, #4	@,
	ldr	r2, [r4, #24]	@ pDivx3DecParam_11(D)->has_skips, pDivx3DecParam_11(D)->has_skips
	and	r3, r3, #31	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].rounding_type, pDivx3DecParam_11(D)->quantizer,
	bfi	r3, r1, #5, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].rounding_type, pDivx3DecParam_11(D)->rounding_type,,
	str	r7, [sp, #4]	@ tmp209, D32
	bfi	r3, r2, #6, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip, pDivx3DecParam_11(D)->has_skips,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip, MEM[(struct DIVX3_V200R004_PICDNMSG_D2 *)&D32].has_skip
	ldr	r2, [sp, #4]	@ D.29211, D32
	ldr	r1, .L17+12	@,
	str	r2, [r5, #8]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 8B]
	bl	dprint_vfmw	@
	ldr	r3, [r4, #28]	@ pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT, pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT
	ldr	r1, [r4, #32]	@ pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT
	mov	r2, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV,
	ldr	ip, [r4, #36]	@ pDivx3DecParam_11(D)->alternative_I_DC_DCT, pDivx3DecParam_11(D)->alternative_I_DC_DCT
	and	r3, r3, #3	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_chrom_DCT,
	ldr	lr, [r4, #40]	@ pDivx3DecParam_11(D)->alternative_P_AC_DCT, pDivx3DecParam_11(D)->alternative_P_AC_DCT
	bfi	r3, r1, #2, #2	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_AC_lum_DCT, pDivx3DecParam_11(D)->alternative_I_AC_lum_DCT,,
	bfi	r3, ip, #4, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_I_DC_DCT, pDivx3DecParam_11(D)->alternative_I_DC_DCT,,
	ldr	r1, [r4, #44]	@ pDivx3DecParam_11(D)->alternative_P_DC_DCT, pDivx3DecParam_11(D)->alternative_P_DC_DCT
	ldr	ip, [r4, #48]	@ pDivx3DecParam_11(D)->alternative_MV, pDivx3DecParam_11(D)->alternative_MV
	bfi	r3, lr, #5, #2	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_AC_DCT, pDivx3DecParam_11(D)->alternative_P_AC_DCT,,
	str	r7, [sp, #4]	@ tmp209, D32
	bfi	r3, r1, #7, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT, pDivx3DecParam_11(D)->alternative_P_DC_DCT,,
	bfi	r2, ip, #0, #1	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV, pDivx3DecParam_11(D)->alternative_MV,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT, MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_P_DC_DCT
	strb	r2, [sp, #5]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV, MEM[(struct DIVX3_V200R004_PICDNMSG_D3 *)&D32].alternative_MV
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29211, D32
	ldr	r1, .L17+16	@,
	str	r2, [r5, #12]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 12B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #100]	@ D.29211, pDivx3DecParam_11(D)->StreamPhyAddr
	ldr	r1, .L17+20	@,
	mov	r0, #4	@,
	str	r2, [r5, #64]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 64B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #108]	@ pDivx3DecParam_11(D)->StreamBitOffset, pDivx3DecParam_11(D)->StreamBitOffset
	str	r7, [sp, #4]	@ tmp209, D32
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0,
	bfi	r3, r2, #0, #7	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0, pDivx3DecParam_11(D)->StreamBitOffset,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0, MEM[(struct DIVX3_V200R004_PICDNMSG_D17 *)&D32].bit_offset_0
	ldr	r2, [sp, #4]	@ D.29211, D32
	mov	r0, #4	@,
	ldr	r1, .L17+24	@,
	str	r2, [r5, #68]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 68B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #116]	@ D.29210, pDivx3DecParam_11(D)->StreamLength
	ldr	r1, .L17+28	@,
	mov	r0, #4	@,
	str	r2, [r5, #72]	@ D.29210, MEM[(volatile HI_S32 *)p32_8 + 72B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #104]	@ D.29211, pDivx3DecParam_11(D)->StreamPhyAddr
	ldr	r1, .L17+32	@,
	mov	r0, #4	@,
	str	r2, [r5, #76]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 76B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #112]	@ pDivx3DecParam_11(D)->StreamBitOffset, pDivx3DecParam_11(D)->StreamBitOffset
	str	r7, [sp, #4]	@ tmp209, D32
	mov	r3, #0	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1,
	bfi	r3, r2, #0, #7	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1, pDivx3DecParam_11(D)->StreamBitOffset,,
	strb	r3, [sp, #4]	@ MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1, MEM[(struct DIVX3_V200R004_PICDNMSG_D20 *)&D32].bit_offset_1
	ldr	r2, [sp, #4]	@ D.29211, D32
	mov	r0, #4	@,
	ldr	r1, .L17+36	@,
	str	r2, [r5, #80]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 80B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #120]	@ D.29210, pDivx3DecParam_11(D)->StreamLength
	ldr	r1, .L17+40	@,
	mov	r0, #4	@,
	str	r2, [r5, #84]	@ D.29210, MEM[(volatile HI_S32 *)p32_8 + 84B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ pDivx3DecParam_11(D)->DispFramePhyAddr, pDivx3DecParam_11(D)->DispFramePhyAddr
	ldr	r1, .L17+44	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pDivx3DecParam_11(D)->DispFramePhyAddr,
	str	r2, [r5, #128]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 128B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #124]	@ pDivx3DecParam_11(D)->FwdRefPhyAddr, pDivx3DecParam_11(D)->FwdRefPhyAddr
	ldr	r1, .L17+48	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pDivx3DecParam_11(D)->FwdRefPhyAddr,
	str	r2, [r5, #132]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 132B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ pHwMem_4(D)->SedTopAddr, pHwMem_4(D)->SedTopAddr
	ldr	r1, .L17+52	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pHwMem_4(D)->SedTopAddr,
	str	r2, [r5, #136]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 136B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ pHwMem_4(D)->PmvTopAddr, pHwMem_4(D)->PmvTopAddr
	ldr	r1, .L17+56	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pHwMem_4(D)->PmvTopAddr,
	str	r2, [r5, #140]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 140B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1092]	@ pHwMem_4(D)->ItransTopAddr, pHwMem_4(D)->ItransTopAddr
	ldr	r1, .L17+60	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pHwMem_4(D)->ItransTopAddr,
	str	r2, [r5, #144]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 144B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #148]	@ pDivx3DecParam_11(D)->CurrPmvPhyAddr, pDivx3DecParam_11(D)->CurrPmvPhyAddr
	ldr	r1, .L17+64	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pDivx3DecParam_11(D)->CurrPmvPhyAddr,
	str	r2, [r5, #148]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 148B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #48]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	ldr	r1, .L17+68	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29211, pHwMem_4(D)->MsgSlotAddr,
	str	r2, [r5, #252]	@ D.29211, MEM[(volatile HI_S32 *)p32_8 + 252B]
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	dprint_vfmw	@
.L16:
	ldr	r3, .L17+72	@,
	movw	r2, #290	@,
	ldr	r1, .L17+76	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	dprint_vfmw	@
.L18:
	.align	2
.L17:
	.word	.LC14
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC15
	.word	.LC16
	.fnend
	.size	DIVX3HAL_V200R004_WritePicMsg, .-DIVX3HAL_V200R004_WritePicMsg
	.align	2
	.global	DIVX3HAL_V200R004_WriteSliceMsg
	.type	DIVX3HAL_V200R004_WriteSliceMsg, %function
DIVX3HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r8, [r0, #48]	@ pHwMem_12(D)->MsgSlotAddr, pHwMem_12(D)->MsgSlotAddr
	mov	r9, r1	@ pDivx3DecParam, pDivx3DecParam
	bic	r8, r8, #15	@ MsgBlockPhy, pHwMem_12(D)->MsgSlotAddr,
	mov	r0, r8	@, MsgBlockPhy
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ p32,
	beq	.L37	@,
	ldr	r7, [r9, #56]	@ pDivx3DecParam_20(D)->slice_start_mbn, pDivx3DecParam_20(D)->slice_start_mbn
	cmp	r7, #0	@ pDivx3DecParam_20(D)->slice_start_mbn,
	bne	.L38	@,
.L21:
	ldr	r3, [r9, #52]	@ pDivx3DecParam_20(D)->TotalSliceNum, pDivx3DecParam_20(D)->TotalSliceNum
	cmp	r3, #0	@ pDivx3DecParam_20(D)->TotalSliceNum,
	beq	.L19	@,
	add	r8, r8, r7, lsl #6	@ D.29259, MsgBlockPhy, AddSlice0Flag,
	mov	r7, r7, asl #8	@ D.29257, AddSlice0Flag,
	mov	r5, #0	@ i,
.L32:
	cmp	r5, #0	@ i,
	ldreq	r3, [r9, #56]	@ D.29259, pDivx3DecParam_20(D)->slice_start_mbn
	beq	.L25	@,
	add	r2, r9, r5, lsl #2	@ D.29256, pDivx3DecParam, i,
	ldr	r3, [r2, #56]	@ D.29259, MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 56B]
	ldr	r2, [r2, #52]	@ MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B], MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B]
	cmp	r3, r2	@ D.29259, MEM[(struct DIVX3_DEC_PARAM_S *)_113 + 52B]
	bls	.L26	@,
.L25:
	add	r10, r7, r5, lsl #8	@ D.29257, D.29257, i,
	ldr	r1, .L39	@,
	mov	r2, #0	@ tmp225,
	mov	r0, #4	@,
	bfi	r2, r3, #0, #20	@ tmp225, D.29259,,
	str	r2, [sp, #4]	@ tmp225,
	str	r2, [r6, r10]	@ tmp225, MEM[(volatile HI_S32 *)_55]
	add	r4, r5, #1	@ j, i,
	bl	dprint_vfmw	@
	ldr	r1, [r9, #52]	@ D.29259, pDivx3DecParam_20(D)->TotalSliceNum
	cmp	r4, r1	@ j, D.29259
	bcs	.L27	@,
	add	r3, r9, r5, lsl #2	@ D.29256, pDivx3DecParam, i,
	ldr	r0, [r3, #56]	@ D.29259, MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 56B]
	ldr	r3, [r3, #60]	@ MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B], MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B]
	cmp	r0, r3	@ D.29259, MEM[(struct DIVX3_DEC_PARAM_S *)_117 + 60B]
	bcc	.L27	@,
	add	r3, r5, #15	@ D.29257, i,
	add	r3, r9, r3, lsl #2	@ ivtmp.33, pDivx3DecParam, D.29257,
	b	.L28	@
.L29:
	ldr	r2, [r3, #4]!	@ MEM[base: _2, offset: 0B], MEM[base: _2, offset: 0B]
	cmp	r2, r0	@ MEM[base: _2, offset: 0B], D.29259
	bhi	.L27	@,
.L28:
	add	r4, r4, #1	@ j, j,
	cmp	r4, r1	@ j, D.29259
	bcc	.L29	@,
.L27:
	cmp	r1, r4	@ D.29259, j
	add	ip, r10, #4	@ D.29257, D.29257,
	addne	r3, r4, #14	@ tmp236, j,
	addne	fp, r8, r4, lsl #8	@ D.29259, D.29259, j,
	ldreq	r2, [r9, #12]	@ pDivx3DecParam_20(D)->PicHeightInMb, pDivx3DecParam_20(D)->PicHeightInMb
	add	r10, r10, #252	@ D.29257, D.29257,
	ldreq	r3, [r9, #8]	@ pDivx3DecParam_20(D)->PicWidthInMb, pDivx3DecParam_20(D)->PicWidthInMb
	moveq	fp, #0	@ D.29259,
	ldrne	r3, [r9, r3, asl #2]	@ tmp237, pDivx3DecParam_20(D)->slice_start_mbn
	mov	r0, #4	@,
	ldr	r1, .L39+4	@,
	moveq	r5, fp	@ next_slice_para_addr, D.29259
	muleq	r3, r3, r2	@ D.29259, pDivx3DecParam_20(D)->PicWidthInMb, pDivx3DecParam_20(D)->PicHeightInMb
	mov	r2, #0	@ tmp240,
	movne	r5, fp	@ next_slice_para_addr, D.29259
	sub	r3, r3, #1	@ last_mb_in_slice, tmp237,
	bfi	r2, r3, #0, #20	@ tmp240, last_mb_in_slice,,
	str	r2, [sp, #4]	@ tmp240,
	str	r2, [r6, ip]	@ tmp240, MEM[(volatile HI_S32 *)_85]
	bl	dprint_vfmw	@
	str	r5, [r6, r10]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_94]
	mov	r2, fp	@, D.29259
	ldr	r1, .L39+8	@,
	mov	r0, #4	@,
	str	fp, [sp, #4]	@ D.29259, MEM[(struct DIVX3_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	sub	r5, r4, #1	@ i, j,
.L26:
	ldr	r3, [r9, #52]	@ pDivx3DecParam_20(D)->TotalSliceNum, pDivx3DecParam_20(D)->TotalSliceNum
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ pDivx3DecParam_20(D)->TotalSliceNum, i
	bhi	.L32	@,
.L19:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L38:
	mov	r4, #0	@ tmp211,
	ldr	r1, .L39	@,
	mov	r3, r4	@ tmp212, tmp211
	bfi	r3, r4, #0, #20	@ tmp212, tmp211,,
	mov	r0, #4	@,
	str	r3, [sp, #4]	@ tmp212,
	mov	r2, r3	@, tmp212
	str	r3, [r6]	@ tmp212, MEM[(volatile HI_S32 *)p32_18]
	bl	dprint_vfmw	@
	ldr	r3, [r9, #56]	@ pDivx3DecParam_20(D)->slice_start_mbn, pDivx3DecParam_20(D)->slice_start_mbn
	ldr	r1, .L39+4	@,
	mov	r2, r4	@ tmp217, tmp211
	sub	r3, r3, #1	@ D.29259, pDivx3DecParam_20(D)->slice_start_mbn,
	mov	r0, #4	@,
	bfi	r2, r3, #0, #20	@ tmp217, D.29259,,
	str	r2, [sp, #4]	@ tmp217,
	str	r2, [r6, #4]	@ tmp217, MEM[(volatile HI_S32 *)p32_18 + 4B]
	mov	r7, #1	@ AddSlice0Flag,
	bl	dprint_vfmw	@
	add	r3, r8, #256	@ D.29259, MsgBlockPhy,
	ldr	r1, .L39+8	@,
	mov	r0, #4	@,
	str	r3, [r6, #252]	@ D.29259, MEM[(volatile HI_S32 *)p32_18 + 252B]
	mov	r2, r3	@, D.29259
	str	r3, [sp, #4]	@ D.29259, MEM[(struct DIVX3_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	b	.L21	@
.L37:
	ldr	r3, .L39+12	@,
	mov	r2, #484	@,
	ldr	r1, .L39+16	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L40:
	.align	2
.L39:
	.word	.LC17
	.word	.LC18
	.word	.LC33
	.word	.LC15
	.word	.LC16
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
	ldr	r7, .L53	@ tmp119,
	cmp	r1, #1	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r5, r4, r7	@ pHwMem, tmp117, tmp119
	bhi	.L50	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L51	@,
	ldr	r3, [r4, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r6, r0	@ pDivx3DecParam, pDivx3DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L52	@,
.L46:
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pDivx3DecParam
	bl	DIVX3HAL_V200R004_WriteReg	@
	mov	r1, r6	@, pDivx3DecParam
	mov	r0, r5	@, pHwMem
	bl	DIVX3HAL_V200R004_WritePicMsg	@
	mov	r1, r6	@, pDivx3DecParam
	mov	r0, r5	@, pHwMem
	bl	DIVX3HAL_V200R004_WriteSliceMsg	@
	ldr	r1, .L53+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.29264,
.L44:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L52:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ VdhId, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L47	@,
	str	r3, [r4, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	ldr	r1, [sp, #4]	@ VdhId, %sfp
	b	.L46	@
.L51:
	mov	r2, #65	@,
	ldr	r1, .L53+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29264,
	b	.L44	@
.L50:
	ldr	r1, .L53+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29264,
	b	.L44	@
.L47:
	ldr	r1, .L53+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29264,
	b	.L44	@
.L54:
	.align	2
.L53:
	.word	g_HwMem
	.word	.LC36
	.word	.LC6
	.word	.LC34
	.word	.LC35
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
	ldr	r1, .L56	@,
	mov	r0, #2	@,
	b	dprint_vfmw	@
.L57:
	.align	2
.L56:
	.word	.LC36
	.fnend
	.size	DIVX3HAL_V200R004_StartVDH, .-DIVX3HAL_V200R004_StartVDH
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC1:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC2:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC3:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC4:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC5:
	.ascii	"STREAM_V200R003_BASE_ADDR=0x%x\012\000"
.LC6:
	.ascii	"line: %d\012\000"
	.space	2
.LC7:
	.ascii	"TIME_OUT = 0x%x\012\000"
	.space	3
.LC8:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC9:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC10:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC11:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC12:
	.ascii	"REF_V200R004_PIC_TYPE=0x%x\012\000"
.LC13:
	.ascii	"FF_V200R004_APT_EN=0x%x\012\000"
	.space	3
.LC14:
	.ascii	"configuring Pic Msg...\012\000"
.LC15:
	.ascii	"can not map dn msg virtual address!\012\000"
	.space	3
.LC16:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC17:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D16 = 0x%x\012\000"
.LC22:
	.ascii	"D17 = 0x%x\012\000"
.LC23:
	.ascii	"D18 = 0x%x\012\000"
.LC24:
	.ascii	"D19 = 0x%x\012\000"
.LC25:
	.ascii	"D20 = 0x%x\012\000"
.LC26:
	.ascii	"D21 = 0x%x\012\000"
.LC27:
	.ascii	"D32 = 0x%x\012\000"
.LC28:
	.ascii	"D33 = 0x%x\012\000"
.LC29:
	.ascii	"D34 = 0x%x\012\000"
.LC30:
	.ascii	"D35 = 0x%x\012\000"
.LC31:
	.ascii	"D36 = 0x%x\012\000"
.LC32:
	.ascii	"D37 = 0x%x\012\000"
.LC33:
	.ascii	"D63 = 0x%x\012\000"
.LC34:
	.ascii	"VdhId is wrong! DIVX3HAL_V200R004_StartDec\012\000"
.LC35:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC36:
	.ascii	"start VDM...\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
