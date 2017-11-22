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
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_vp8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp8.o
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
	.global	VP8HAL_V200R004_CfgReg
	.type	VP8HAL_V200R004_CfgReg, %function
VP8HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r2, #1	@ VdhId,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r0	@ pVp8DecParam, pVp8DecParam
	mov	r0, #0	@ tmp199,
	str	r0, [sp, #12]	@ tmp199, D32
	bhi	.L11	@,
	cmp	r2, #0	@ VdhId,
	bgt	.L12	@,
	ldr	r3, [r1]	@ pHwMem_10(D)->pVdmRegVirAddr, pHwMem_10(D)->pVdmRegVirAddr
	mov	r7, r1	@ pHwMem, pHwMem
	cmp	r3, #0	@ pHwMem_10(D)->pVdmRegVirAddr,
	beq	.L13	@,
.L6:
	ldr	ip, [r6, #2788]	@ pVp8DecParam_16(D)->pic_height_in_mb, pVp8DecParam_16(D)->pic_height_in_mb
	movw	r4, #1144	@ tmp217,
	ldr	r1, [r6, #2784]	@ pVp8DecParam_16(D)->pic_width_in_mb, pVp8DecParam_16(D)->pic_width_in_mb
	mov	r0, #3	@,
	mul	r4, r4, r2	@ tmp216, tmp217, VdhId
	ldr	r3, [sp, #12]	@ tmp210,
	mul	r2, r1, ip	@ D.28897, pVp8DecParam_16(D)->pic_width_in_mb, pVp8DecParam_16(D)->pic_height_in_mb
	ldr	r5, .L14	@ tmp215,
	ldr	r1, .L14+4	@,
	sub	r2, r2, #1	@ D.28897, D.28897,
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp210, D.28897,,
	str	r3, [sp, #12]	@ tmp210,
	mov	r3, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp210,
	and	r3, r3, #191	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r3, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en,,
	strb	r3, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	ldr	r2, [sp, #12]	@ D.28899, D32
	str	r2, [ip, #8]	@ D.28899, *_28
	bl	dprint_vfmw	@
	mov	r3, #536870912	@ tmp221,
	str	r3, [sp, #12]	@ tmp221, D32
	mov	r3, #12	@ tmp224,
	ldrh	r2, [sp, #14]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	mov	r0, #3	@,
	strb	r3, [sp, #12]	@ tmp224, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfc	r2, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	ldr	r1, [r6, #2792]	@ pVp8DecParam_16(D)->ddr_stride, pVp8DecParam_16(D)->ddr_stride
	ubfx	r3, r2, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strh	r2, [sp, #14]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	orr	r3, r3, #32	@ tmp241, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	strb	r3, [sp, #15]	@ tmp241, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en
	mov	r1, r1, lsr #6	@ D.28897, pVp8DecParam_16(D)->ddr_stride,
	ldr	ip, [r6, #3140]	@ pVp8DecParam_16(D)->Compress_en, pVp8DecParam_16(D)->Compress_en
	uxtb	r2, r3	@ tmp244, tmp241
	ldrh	r3, [sp, #12]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r2, ip, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pVp8DecParam_16(D)->Compress_en,,
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	bfi	r3, r1, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.28897,,
	strh	r3, [sp, #12]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	ubfx	r3, r3, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	bfc	r2, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en,,
	orr	r3, r3, #192	@ tmp235, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strb	r2, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	strb	r3, [sp, #13]	@ tmp235, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	ldr	r2, [sp, #12]	@ D.28899, D32
	ldr	r1, .L14+8	@,
	str	r2, [ip, #12]	@ D.28899, *_57
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r7, #44]	@ pHwMem_10(D)->MsgSlotAddr, pHwMem_10(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L14+12	@,
	bic	r2, r2, #15	@ D.28899, pHwMem_10(D)->MsgSlotAddr,
	str	r2, [r3, #16]	@ D.28899, *_69
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r7, #28]	@ pHwMem_10(D)->MsgSlotAddr, pHwMem_10(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L14+16	@,
	bic	r2, r2, #15	@ D.28899, pHwMem_10(D)->MsgSlotAddr,
	str	r2, [r3, #20]	@ D.28899, *_80
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r6, #2812]	@ D.28899, pVp8DecParam_16(D)->stream_base_addr
	mov	r0, #3	@,
	ldr	r1, .L14+20	@,
	str	r2, [r3, #24]	@ D.28899, *_89
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r7, #1100]	@ pHwMem_10(D)->PpfdBufAddr, pHwMem_10(D)->PpfdBufAddr
	mov	r0, #3	@,
	ldr	r1, .L14+24	@,
	bic	r2, r2, #15	@ D.28899, pHwMem_10(D)->PpfdBufAddr,
	str	r2, [r3, #128]	@ D.28899, *_98
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r3, [r7, #1104]	@ D.28899, pHwMem_10(D)->PpfdBufLen
	mov	r0, #3	@,
	ldr	r1, .L14+28	@,
	str	r3, [ip, #132]	@ D.28899, *_106
	mov	r2, r3	@, D.28899
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r6, #3116]	@ pVp8DecParam_16(D)->image_curr_rcn_addr, pVp8DecParam_16(D)->image_curr_rcn_addr
	mov	r0, #3	@,
	ldr	r1, .L14+32	@,
	bic	r2, r2, #15	@ D.28899, pVp8DecParam_16(D)->image_curr_rcn_addr,
	str	r2, [r3, #96]	@ D.28899, *_119
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	ldr	r2, [r6, #2792]	@ D.28899, pVp8DecParam_16(D)->ddr_stride
	mov	r0, #3	@,
	ldr	r1, .L14+36	@,
	str	r2, [r3, #100]	@ D.28899, *_128
	bl	dprint_vfmw	@
	ldr	r3, [r6, #3144]	@ D.28899, pVp8DecParam_16(D)->uv_offset
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, .L14+40	@,
	mov	r2, r3	@, D.28899
	str	r3, [ip, #104]	@ D.28899, *_137
	bl	dprint_vfmw	@
	ldr	r1, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	mov	r3, #0	@ tmp311,
	mvn	r2, #0	@ tmp317,
	mov	r0, r3	@ D.28895, tmp311
	str	r3, [r1, #108]	@ tmp311, *_144
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_7(D)].pVdmRegVirAddr, g_HwMem[VdhId_7(D)].pVdmRegVirAddr
	str	r2, [r3, #32]	@ tmp317, *_149
.L4:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L13:
	mov	r0, #0	@,
	str	r2, [sp, #4]	@ VdhId, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L7	@,
	str	r3, [r7]	@ p32, pHwMem_10(D)->pVdmRegVirAddr
	ldr	r2, [sp, #4]	@ VdhId, %sfp
	b	.L6	@
.L12:
	mov	r2, #69	@,
	ldr	r1, .L14+44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28895,
	b	.L4	@
.L11:
	ldr	r1, .L14+48	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28895,
	b	.L4	@
.L7:
	ldr	r1, .L14+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28895,
	b	.L4	@
.L15:
	.align	2
.L14:
	.word	g_HwMem
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC1
	.word	.LC0
	.word	.LC2
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
	subs	r9, r0, #0	@ p32,
	beq	.L25	@,
	ldr	r3, [r4, #2796]	@ pVp8DecParam_15(D)->frame_type, pVp8DecParam_15(D)->frame_type
	mov	r5, #0	@ tmp370,
	ldr	r2, [r4, #2800]	@ pVp8DecParam_15(D)->last_frame_type, pVp8DecParam_15(D)->last_frame_type
	mov	r0, #4	@,
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, pVp8DecParam_15(D)->frame_type,
	str	r5, [sp, #4]	@ tmp370, D32
	bfi	r3, r2, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, pVp8DecParam_15(D)->last_frame_type,,
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type, MEM[(struct VP8_V200R004_PICDNMSG_D0 *)&D32].last_frame_type
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27	@,
	str	r2, [r9]	@ D.28979, MEM[(volatile HI_S32 *)p32_12]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2808]	@ pVp8DecParam_15(D)->full_pixel, pVp8DecParam_15(D)->full_pixel
	ldr	r3, [r4, #2804]	@ pVp8DecParam_15(D)->use_bilinear_mc_filter, pVp8DecParam_15(D)->use_bilinear_mc_filter
	mov	r0, #4	@,
	ldr	r1, .L27+4	@,
	rsb	r2, r3, r2, lsl #1	@ D.28980, pVp8DecParam_15(D)->use_bilinear_mc_filter, pVp8DecParam_15(D)->full_pixel,
	add	r2, r2, #1	@ D.28979, D.28980,
	str	r2, [r9, #4]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 4B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2784]	@ pVp8DecParam_15(D)->pic_width_in_mb, pVp8DecParam_15(D)->pic_width_in_mb
	ldr	r3, [r4, #2788]	@ pVp8DecParam_15(D)->pic_height_in_mb, pVp8DecParam_15(D)->pic_height_in_mb
	mov	r0, #0	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb,
	sub	r2, r2, #1	@ tmp386, pVp8DecParam_15(D)->pic_width_in_mb,
	mov	r1, r0	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb
	sub	r3, r3, #1	@ tmp391, pVp8DecParam_15(D)->pic_height_in_mb,
	bfi	r0, r2, #0, #9	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb, tmp386,,
	bfi	r1, r3, #0, #9	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, tmp391,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb, MEM[(struct VP8_V200R004_PICDNMSG_D2 *)&D32].pic_height_in_mb
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+8	@,
	str	r2, [r9, #8]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 8B]
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #2752]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->prob_skip_false, pVp8DecParam_15(D)->prob_skip_false
	ldrb	r3, [r4, #2753]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mb_no_coeff_skip, pVp8DecParam_15(D)->mb_no_coeff_skip
	mov	r0, #4	@,
	ldrb	r1, [r4, #2754]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->multi_token_partition, pVp8DecParam_15(D)->multi_token_partition
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, pVp8DecParam_15(D)->mb_no_coeff_skip,
	str	r5, [sp, #4]	@ tmp370, D32
	bfi	r3, r1, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, pVp8DecParam_15(D)->multi_token_partition,,
	strb	r2, [sp, #4]	@ pVp8DecParam_15(D)->prob_skip_false, MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].prob_skip_false
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition, MEM[(struct VP8_V200R004_PICDNMSG_D3 *)&D32].multi_token_partition
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+12	@,
	str	r2, [r9, #12]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 12B]
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2755]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->segmentation_enable, pVp8DecParam_15(D)->segmentation_enable
	ldrb	r2, [r4, #2756]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->update_mb_segmentation_map, pVp8DecParam_15(D)->update_mb_segmentation_map
	mov	r0, #4	@,
	ldrb	r1, [r4, #2757]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mb_segmentation_abs_delta, pVp8DecParam_15(D)->mb_segmentation_abs_delta
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].update_mb_segmentation_map, pVp8DecParam_15(D)->segmentation_enable,
	bfi	r3, r2, #1, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].update_mb_segmentation_map, pVp8DecParam_15(D)->update_mb_segmentation_map,,
	ldrb	r2, [r4, #2758]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->mode_ref_lf_delta_enabled, pVp8DecParam_15(D)->mode_ref_lf_delta_enabled
	bfi	r3, r1, #2, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mb_segmentation_abs_delta, pVp8DecParam_15(D)->mb_segmentation_abs_delta,,
	str	r5, [sp, #4]	@ tmp370, D32
	bfi	r3, r2, #3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled, pVp8DecParam_15(D)->mode_ref_lf_delta_enabled,,
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled, MEM[(struct VP8_V200R004_PICDNMSG_D4 *)&D32].mode_ref_lf_delta_enabled
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+16	@,
	str	r2, [r9, #16]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 16B]
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2760]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->filter_type, pVp8DecParam_15(D)->filter_type
	ldrb	r2, [r4, #2761]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->last_filter_type, pVp8DecParam_15(D)->last_filter_type
	mov	r0, #4	@,
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, pVp8DecParam_15(D)->filter_type,
	str	r5, [sp, #4]	@ tmp370, D32
	bfi	r3, r2, #1, #2	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, pVp8DecParam_15(D)->last_filter_type,,
	ldrb	r2, [r4, #2762]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->filter_level, pVp8DecParam_15(D)->filter_level
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type, MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_filter_type
	ldrh	r3, [sp, #4]	@,
	ldrb	ip, [r4, #2763]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->sharpness_level, pVp8DecParam_15(D)->sharpness_level
	bfi	r3, r2, #3, #6	@ tmp460, pVp8DecParam_15(D)->filter_level,,
	ldrb	r2, [r4, #2764]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->last_sharpness_level, pVp8DecParam_15(D)->last_sharpness_level
	strh	r3, [sp, #4]	@ movhi	@ tmp460,
	mov	r3, r3, lsr #8	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].cur_sharpness_level, tmp460,
	ldr	r1, .L27+20	@,
	bfi	r3, ip, #1, #3	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].cur_sharpness_level, pVp8DecParam_15(D)->sharpness_level,,
	bfi	r3, r2, #4, #3	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level, pVp8DecParam_15(D)->last_sharpness_level,,
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level, MEM[(struct VP8_V200R004_PICDNMSG_D5 *)&D32].last_sharpness_level
	ldr	r2, [sp, #4]	@ D.28979, D32
	str	r2, [r9, #20]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 20B]
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #2765]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y1dc_sign, pVp8DecParam_15(D)->y1dc_sign
	ldrb	r1, [r4, #2766]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_absdelta_q
	mov	r0, #4	@,
	ldrb	r2, [r4, #2767]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2dc_sign, pVp8DecParam_15(D)->y2dc_sign
	and	r3, r3, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_sign,
	bfi	r3, r1, #1, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y1dc_absdelta_q, pVp8DecParam_15(D)->y1dc_absdelta_q,,
	str	r5, [sp, #4]	@ tmp370, D32
	ldrb	ip, [r4, #2768]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2dc_absdelta_q, pVp8DecParam_15(D)->y2dc_absdelta_q
	bfi	r3, r2, #5, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign, pVp8DecParam_15(D)->y2dc_sign,,
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2dc_sign
	ldrh	r1, [sp, #4]	@,
	ldrb	lr, [r4, #2769]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2ac_sign, pVp8DecParam_15(D)->y2ac_sign
	bfi	r1, ip, #6, #4	@ tmp504, pVp8DecParam_15(D)->y2dc_absdelta_q,,
	ldrb	r2, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_absdelta_q
	ldrb	ip, [r4, #2772]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvdc_absdelta_q, pVp8DecParam_15(D)->uvdc_absdelta_q
	mov	r3, r1, lsr #8	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_sign, tmp504,
	bfi	r2, ip, #0, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_absdelta_q, pVp8DecParam_15(D)->uvdc_absdelta_q,,
	bfi	r3, lr, #2, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_sign, pVp8DecParam_15(D)->y2ac_sign,,
	ldrb	ip, [r4, #2773]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvac_sign, pVp8DecParam_15(D)->uvac_sign
	ldrb	lr, [r4, #2770]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->y2ac_absdelta_q, pVp8DecParam_15(D)->y2ac_absdelta_q
	bfi	r2, ip, #4, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign, pVp8DecParam_15(D)->uvac_sign,,
	ldrb	ip, [r4, #2771]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvdc_sign, pVp8DecParam_15(D)->uvdc_sign
	strb	r2, [sp, #6]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvac_sign
	bfi	r3, lr, #3, #4	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].y2ac_absdelta_q, pVp8DecParam_15(D)->y2ac_absdelta_q,,
	ldrh	r2, [sp, #6]	@,
	bfi	r3, ip, #7, #1	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign, pVp8DecParam_15(D)->uvdc_sign,,
	ldrb	lr, [r4, #2774]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->uvac_absdelta_q, pVp8DecParam_15(D)->uvac_absdelta_q
	strh	r1, [sp, #4]	@ movhi	@ tmp504,
	bfi	r2, lr, #5, #4	@ tmp546, pVp8DecParam_15(D)->uvac_absdelta_q,,
	strb	r3, [sp, #5]	@ MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign, MEM[(struct VP8_V200R004_PICDNMSG_D6 *)&D32].uvdc_sign
	strh	r2, [sp, #6]	@ movhi	@ tmp546,
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+24	@,
	str	r2, [r9, #24]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 24B]
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #2759]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->base_qindex, pVp8DecParam_15(D)->base_qindex
	str	r5, [sp, #4]	@ tmp370, D32
	mov	r3, #0	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex,
	bfi	r3, r2, #0, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex, pVp8DecParam_15(D)->base_qindex,,
	strb	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex, MEM[(struct VP8_V200R004_PICDNMSG_D7 *)&D32].base_qindex
	ldr	r2, [sp, #4]	@ D.28979, D32
	mov	r0, #4	@,
	ldr	r1, .L27+28	@,
	str	r2, [r9, #28]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 28B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2780]	@ D.28979, pVp8DecParam_15(D)->value
	ldr	r1, .L27+32	@,
	mov	r0, #4	@,
	str	r2, [r9, #32]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 32B]
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #2778]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->range, pVp8DecParam_15(D)->range
	ldrb	r1, [r4, #2779]	@ zero_extendqisi2	@ pVp8DecParam_15(D)->count, pVp8DecParam_15(D)->count
	mov	r3, #0	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count,
	str	r5, [sp, #4]	@ tmp370, D32
	mov	r0, #4	@,
	bfi	r3, r1, #0, #6	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count, pVp8DecParam_15(D)->count,,
	strb	r2, [sp, #4]	@ pVp8DecParam_15(D)->range, MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].range
	strb	r3, [sp, #6]	@ MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count, MEM[(struct VP8_V200R004_PICDNMSG_D9 *)&D32].count
	mov	r5, #0	@ tmp576,
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+36	@,
	str	r2, [r9, #36]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 36B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2820]	@ D.28980, pVp8DecParam_15(D)->bit_offset_0
	ldrb	r3, [r4, #2779]	@ zero_extendqisi2	@ D.28980, pVp8DecParam_15(D)->count
	ldr	r0, [r4, #2816]	@ pVp8DecParam_15(D)->bit_len_0, pVp8DecParam_15(D)->bit_len_0
	cmp	r3, r2	@ D.28980, D.28980
	ldr	r1, .L27+40	@,
	addhi	r2, r2, #128	@ D.28980, D.28980,
	add	r0, r3, r0	@ D16_bit_len_0, D.28980, pVp8DecParam_15(D)->bit_len_0
	rsbls	r2, r3, r2	@ D16_bit_offset_0, D.28980, D.28980
	rsbhi	r2, r3, r2	@ D16_bit_offset_0, D.28980, D.28980
	mov	r3, r5	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, tmp576
	bfi	r3, r0, #0, #25	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, D16_bit_len_0,,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_len_0,
	ldrhi	r7, [r4, #2824]	@ pVp8DecParam_15(D)->bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0
	ldrls	r7, [r4, #2824]	@ D17_bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, D16_bit_offset_0,,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0, MEM[(struct VP8_V200R004_PICDNMSG_D16 *)&D32].bit_offset_0
	subhi	r7, r7, #16	@ D17_bit_byte_offset_0, pVp8DecParam_15(D)->bit_byte_offset_0,
	ldr	r2, [sp, #4]	@ D.28979, D32
	str	r2, [r9, #64]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 64B]
	bl	dprint_vfmw	@
	ldr	r1, .L27+44	@,
	mov	r2, r5	@ tmp582, tmp576
	mov	r0, #4	@,
	bfi	r2, r7, #0, #24	@ tmp582, D17_bit_byte_offset_0,,
	str	r2, [sp, #4]	@ tmp582,
	str	r2, [r9, #68]	@ tmp582, MEM[(volatile HI_S32 *)p32_12 + 68B]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2828]	@ pVp8DecParam_15(D)->bit_len_1, pVp8DecParam_15(D)->bit_len_1
	mov	r3, r5	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, tmp576
	ldr	r2, [r4, #2832]	@ pVp8DecParam_15(D)->bit_offset_1, pVp8DecParam_15(D)->bit_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, pVp8DecParam_15(D)->bit_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1
	ldr	r1, .L27+48	@,
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, pVp8DecParam_15(D)->bit_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1, MEM[(struct VP8_V200R004_PICDNMSG_D18 *)&D32].bit_offset_1
	ldr	r2, [sp, #4]	@ D.28979, D32
	str	r2, [r9, #72]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 72B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2836]	@ pVp8DecParam_15(D)->bit_byte_offset_1, pVp8DecParam_15(D)->bit_byte_offset_1
	mov	r3, r5	@ tmp594, tmp576
	ldr	r1, .L27+52	@,
	bfi	r3, r2, #0, #24	@ tmp594, pVp8DecParam_15(D)->bit_byte_offset_1,,
	mov	r0, #4	@,
	str	r3, [sp, #4]	@ tmp594,
	mov	r2, r3	@, tmp594
	str	r3, [r9, #76]	@ tmp594, MEM[(volatile HI_S32 *)p32_12 + 76B]
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3036]	@ pVp8DecParam_15(D)->segment_feature_dat0, pVp8DecParam_15(D)->segment_feature_dat0
	ldr	r1, [r4, #3040]	@ pVp8DecParam_15(D)->segment_feature_dat0, pVp8DecParam_15(D)->segment_feature_dat0
	mov	r0, #4	@,
	ldr	r2, [r4, #3044]	@ pVp8DecParam_15(D)->segment_feature_dat0, pVp8DecParam_15(D)->segment_feature_dat0
	ldr	r3, [r4, #3048]	@ pVp8DecParam_15(D)->segment_feature_dat0, pVp8DecParam_15(D)->segment_feature_dat0
	strb	ip, [sp, #4]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat00
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat01
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat03
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->segment_feature_dat0, MEM[(struct VP8_V200R004_PICDNMSG_D20 *)&D32].segment_feature_dat02
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+56	@,
	str	r2, [r9, #80]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 80B]
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3052]	@ pVp8DecParam_15(D)->segment_feature_dat1, pVp8DecParam_15(D)->segment_feature_dat1
	ldr	r1, [r4, #3056]	@ pVp8DecParam_15(D)->segment_feature_dat1, pVp8DecParam_15(D)->segment_feature_dat1
	mov	r0, #4	@,
	ldr	r2, [r4, #3060]	@ pVp8DecParam_15(D)->segment_feature_dat1, pVp8DecParam_15(D)->segment_feature_dat1
	ldr	r3, [r4, #3064]	@ pVp8DecParam_15(D)->segment_feature_dat1, pVp8DecParam_15(D)->segment_feature_dat1
	strb	ip, [sp, #4]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat10
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat11
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat13
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->segment_feature_dat1, MEM[(struct VP8_V200R004_PICDNMSG_D21 *)&D32].segment_feature_dat12
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+60	@,
	str	r2, [r9, #84]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 84B]
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3068]	@ pVp8DecParam_15(D)->ref_lf_delta, pVp8DecParam_15(D)->ref_lf_delta
	ldr	r1, [r4, #3072]	@ pVp8DecParam_15(D)->ref_lf_delta, pVp8DecParam_15(D)->ref_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3076]	@ pVp8DecParam_15(D)->ref_lf_delta, pVp8DecParam_15(D)->ref_lf_delta
	ldr	r3, [r4, #3080]	@ pVp8DecParam_15(D)->ref_lf_delta, pVp8DecParam_15(D)->ref_lf_delta
	strb	ip, [sp, #4]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta0
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta1
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta3
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->ref_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D22 *)&D32].ref_lf_delta2
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+64	@,
	str	r2, [r9, #88]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 88B]
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3084]	@ pVp8DecParam_15(D)->mode_lf_delta, pVp8DecParam_15(D)->mode_lf_delta
	ldr	r1, [r4, #3088]	@ pVp8DecParam_15(D)->mode_lf_delta, pVp8DecParam_15(D)->mode_lf_delta
	mov	r0, #4	@,
	ldr	r2, [r4, #3092]	@ pVp8DecParam_15(D)->mode_lf_delta, pVp8DecParam_15(D)->mode_lf_delta
	ldr	r3, [r4, #3096]	@ pVp8DecParam_15(D)->mode_lf_delta, pVp8DecParam_15(D)->mode_lf_delta
	strb	ip, [sp, #4]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta0
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta1
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta3
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->mode_lf_delta, MEM[(struct VP8_V200R004_PICDNMSG_D23 *)&D32].mode_lf_delta2
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+68	@,
	str	r2, [r9, #92]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 92B]
	bl	dprint_vfmw	@
	ldr	ip, [r4, #3100]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, pVp8DecParam_15(D)->ref_frame_sign_bias
	ldr	r3, [r4, #3112]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, pVp8DecParam_15(D)->ref_frame_sign_bias
	mov	r0, #4	@,
	ldr	r1, [r4, #3104]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, pVp8DecParam_15(D)->ref_frame_sign_bias
	ldr	r2, [r4, #3108]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, pVp8DecParam_15(D)->ref_frame_sign_bias
	strb	ip, [sp, #4]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_0
	strb	r3, [sp, #7]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_3
	strb	r1, [sp, #5]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_1
	strb	r2, [sp, #6]	@ pVp8DecParam_15(D)->ref_frame_sign_bias, MEM[(struct VP8_V200R004_PICDNMSG_D24 *)&D32].ref_frame_sign_bias_2
	ldr	r2, [sp, #4]	@ D.28979, D32
	ldr	r1, .L27+72	@,
	str	r2, [r9, #96]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 96B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3136]	@ D.28979, pVp8DecParam_15(D)->SegIdAddr
	ldr	r1, .L27+76	@,
	mov	r0, #4	@,
	str	r2, [r9, #100]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 100B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3116]	@ D.28979, pVp8DecParam_15(D)->image_curr_rcn_addr
	ldr	r1, .L27+80	@,
	mov	r0, #4	@,
	str	r2, [r9, #128]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 128B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3120]	@ D.28979, pVp8DecParam_15(D)->image_alt_ref_addr
	ldr	r1, .L27+84	@,
	mov	r0, #4	@,
	str	r2, [r9, #132]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 132B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3124]	@ D.28979, pVp8DecParam_15(D)->image_gld_ref_addr
	ldr	r1, .L27+88	@,
	mov	r0, #4	@,
	str	r2, [r9, #136]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 136B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #3128]	@ D.28979, pVp8DecParam_15(D)->image_last_ref_addr
	ldr	r1, .L27+92	@,
	mov	r0, #4	@,
	str	r2, [r9, #140]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 140B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ pHwMem_9(D)->SedTopAddr, pHwMem_9(D)->SedTopAddr
	ldr	r1, .L27+96	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.28979, pHwMem_9(D)->SedTopAddr,
	str	r2, [r9, #144]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 144B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ pHwMem_9(D)->PmvTopAddr, pHwMem_9(D)->PmvTopAddr
	ldr	r1, .L27+100	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.28979, pHwMem_9(D)->PmvTopAddr,
	str	r2, [r9, #148]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 148B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1088]	@ pHwMem_9(D)->RcnTopAddr, pHwMem_9(D)->RcnTopAddr
	ldr	r1, .L27+104	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.28979, pHwMem_9(D)->RcnTopAddr,
	str	r2, [r9, #152]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 152B]
	bl	dprint_vfmw	@
	ldr	r7, [r6, #1116]	@ pHwMem_9(D)->VpTabAddr, pHwMem_9(D)->VpTabAddr
	ldr	r1, .L27+108	@,
	mov	r0, #4	@,
	bic	r7, r7, #15	@ D.28980, pHwMem_9(D)->VpTabAddr,
	str	r7, [r9, #156]	@ D.28980, MEM[(volatile HI_S32 *)p32_12 + 156B]
	str	r7, [sp, #4]	@ D.28980, MEM[(struct VP8_V200R004_PICDNMSG_D39 *)&D32].tab_addr
	mov	r2, r7	@, D.28980
	bl	dprint_vfmw	@
	mov	r0, r7	@, D.28980
	bl	MEM_Phy2Vir	@
	cmp	r0, r5	@,
	beq	.L26	@,
	mov	r1, r4	@, pVp8DecParam
	mov	r2, #2752	@,
	bl	memcpy	@
	ldr	r2, [r6, #1096]	@ pHwMem_9(D)->DblkTopAddr, pHwMem_9(D)->DblkTopAddr
	ldr	r1, .L27+112	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.28979, pHwMem_9(D)->DblkTopAddr,
	str	r2, [r9, #160]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 160B]
	bl	dprint_vfmw	@
	mov	r0, r9	@, p32
	bl	MEM_Vir2Phy	@
	mov	r6, r4	@ ivtmp.30, pVp8DecParam
	ldr	r1, .L27+116	@,
	add	r4, r4, #2832	@ ivtmp.25, pVp8DecParam,
	add	r8, r6, #2864	@ ivtmp.34, ivtmp.30,
	add	r7, r9, #252	@ p32, p32,
	add	r4, r4, #8	@ ivtmp.25, ivtmp.25,
	add	r8, r8, #8	@ ivtmp.34, ivtmp.34,
	add	r2, r0, #256	@ D.28979,,
	mov	r0, #4	@,
	str	r2, [r9, #252]	@ D.28979, MEM[(volatile HI_S32 *)p32_12 + 252B]
	bl	dprint_vfmw	@
.L22:
	ldr	r1, [r4, #4]!	@ MEM[base: _315, offset: 0B], MEM[base: _315, offset: 0B]
	mov	r3, #0	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	ldr	ip, [r8, #4]!	@ MEM[base: _318, offset: 0B], MEM[base: _318, offset: 0B]
	add	r2, r5, #64	@, ivtmp.27,
	bfi	r3, r1, #0, #25	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[base: _315, offset: 0B],,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len
	ldr	r1, .L27+120	@,
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	add	r9, r7, #16	@ p32, p32,
	bfi	r3, ip, #1, #7	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[base: _318, offset: 0B],,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset
	ldr	r3, [sp, #4]	@ D.28979, D32
	str	r3, [r7, #4]	@ D.28979, MEM[(volatile HI_S32 *)p32_406 + 4B]
	bl	dprint_vfmw	@
	ldr	r1, [r6, #2908]	@ MEM[base: _329, offset: 2908B], MEM[base: _329, offset: 2908B]
	add	r2, r5, #65	@, ivtmp.27,
	mov	r3, #0	@ tmp681,
	mov	r0, #4	@,
	bfi	r3, r1, #0, #24	@ tmp681, MEM[base: _329, offset: 2908B],,
	ldr	r1, .L27+120	@,
	str	r3, [sp, #4]	@ tmp681,
	str	r3, [r7, #8]	@ tmp681, MEM[(volatile HI_S32 *)p32_406 + 8B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #2940]	@ MEM[base: _329, offset: 2940B], MEM[base: _329, offset: 2940B]
	mov	r3, #0	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	ldr	ip, [r6, #2972]	@ MEM[base: _329, offset: 2972B], MEM[base: _329, offset: 2972B]
	bfi	r3, r2, #0, #25	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[base: _329, offset: 2940B],,
	str	r3, [sp, #4]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len
	add	r2, r5, #66	@, ivtmp.27,
	ldr	r1, .L27+120	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_len,
	mov	r0, #4	@,
	bfi	r3, ip, #1, #7	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[base: _329, offset: 2972B],,
	strb	r3, [sp, #7]	@ MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset, MEM[(struct VP8_V200R004_BITSTREAM_LEN_OFFSET *)&D32].bitn_offset
	ldr	r3, [sp, #4]	@ D.28979, D32
	str	r3, [r7, #12]	@ D.28979, MEM[(volatile HI_S32 *)p32_406 + 12B]
	bl	dprint_vfmw	@
	ldr	r1, [r6, #3004]	@ MEM[base: _329, offset: 3004B], MEM[base: _329, offset: 3004B]
	add	r2, r5, #67	@, ivtmp.27,
	mov	r0, #4	@,
	mov	r3, #0	@ tmp696,
	add	r5, r5, #4	@ ivtmp.27, ivtmp.27,
	bfi	r3, r1, #0, #24	@ tmp696, MEM[base: _329, offset: 3004B],,
	ldr	r1, .L27+120	@,
	str	r3, [sp, #4]	@ tmp696,
	add	r6, r6, r0	@ ivtmp.30, ivtmp.30,
	str	r3, [r7, #16]	@ tmp696, MEM[(volatile HI_S32 *)p32_406 + 16B]
	mov	r7, r9	@ p32, p32
	bl	dprint_vfmw	@
	cmp	r5, #32	@ ivtmp.27,
	bne	.L22	@,
	mov	r0, #0	@ D.28978,
.L18:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L25:
	ldr	r3, .L27+124	@,
	movw	r2, #291	@,
	ldr	r1, .L27+128	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28978,
	b	.L18	@
.L26:
	movw	r2, #543	@,
	ldr	r1, .L27+132	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28978,
	b	.L18	@
.L28:
	.align	2
.L27:
	.word	.LC15
	.word	.LC16
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
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC13
	.word	.LC14
	.word	.LC1
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
	movw	r5, #1144	@ tmp120,
	mul	r5, r5, r1	@ tmp119, tmp120, VdhId
	ldr	r7, .L45	@ tmp121,
	cmp	r1, #1	@ VdhId,
	mov	r4, r1	@ VdhId, VdhId
	add	r8, r5, r7	@ pHwMem, tmp119, tmp121
	bhi	.L40	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L41	@,
	ldr	r3, [r0, #2784]	@ pVp8DecParam_9(D)->pic_width_in_mb, pVp8DecParam_9(D)->pic_width_in_mb
	mov	r6, r0	@ pVp8DecParam, pVp8DecParam
	cmp	r3, #512	@ pVp8DecParam_9(D)->pic_width_in_mb,
	bhi	.L42	@,
	ldr	r3, [r0, #2788]	@ pVp8DecParam_9(D)->pic_height_in_mb, pVp8DecParam_9(D)->pic_height_in_mb
	cmp	r3, #512	@ pVp8DecParam_9(D)->pic_height_in_mb,
	bhi	.L43	@,
	ldr	r3, [r5, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L44	@,
.L36:
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pVp8DecParam
	bl	VP8HAL_V200R004_CfgReg	@
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pVp8DecParam
	bl	VP8HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L44:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L37	@,
	str	r3, [r5, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	b	.L36	@
.L41:
	mov	r2, #251	@,
	ldr	r1, .L45+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L40:
	ldr	r1, .L45+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L42:
	ldr	r3, .L45+12	@,
	mov	r2, #256	@,
	ldr	r1, .L45+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L43:
	ldr	r3, .L45+12	@,
	movw	r2, #257	@,
	ldr	r1, .L45+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L37:
	ldr	r1, .L45+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29035,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L46:
	.align	2
.L45:
	.word	g_HwMem
	.word	.LC1
	.word	.LC46
	.word	.LC47
	.word	.LC14
	.word	.LC2
	.fnend
	.size	VP8HAL_V200R004_StartDec, .-VP8HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC1:
	.ascii	"line: %d\012\000"
	.space	2
.LC2:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC3:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC4:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC5:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC6:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC7:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC8:
	.ascii	"PPFD_BUF_ADDR = 0x%x\012\000"
	.space	2
.LC9:
	.ascii	"PPFD_BUF_LEN = 0x%x\012\000"
	.space	3
.LC10:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC11:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC12:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC13:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC14:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC15:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC17:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D16 = 0x%x\012\000"
.LC26:
	.ascii	"D17 = 0x%x\012\000"
.LC27:
	.ascii	"D18 = 0x%x\012\000"
.LC28:
	.ascii	"D19 = 0x%x\012\000"
.LC29:
	.ascii	"D20 = 0x%x\012\000"
.LC30:
	.ascii	"D21 = 0x%x\012\000"
.LC31:
	.ascii	"D22 = 0x%x\012\000"
.LC32:
	.ascii	"D23 = 0x%x\012\000"
.LC33:
	.ascii	"D24 = 0x%x\012\000"
.LC34:
	.ascii	"D25 = 0x%x\012\000"
.LC35:
	.ascii	"D32 = 0x%x\012\000"
.LC36:
	.ascii	"D33 = 0x%x\012\000"
.LC37:
	.ascii	"D34 = 0x%x\012\000"
.LC38:
	.ascii	"D35 = 0x%x\012\000"
.LC39:
	.ascii	"D36 = 0x%x\012\000"
.LC40:
	.ascii	"D37 = 0x%x\012\000"
.LC41:
	.ascii	"D38 = 0x%x\012\000"
.LC42:
	.ascii	"D39 = 0x%x\012\000"
.LC43:
	.ascii	"D40 = 0x%x\012\000"
.LC44:
	.ascii	"D63 = 0x%x\012\000"
.LC45:
	.ascii	"D%d = 0x%x\012\000"
.LC46:
	.ascii	"VdhId is wrong! VP8HAL_V200R003_StartDec\012\000"
	.space	2
.LC47:
	.ascii	"picture width out of range\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
