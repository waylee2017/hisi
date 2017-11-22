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
	.file	"vdm_hal_real8.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_real8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_real8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_real8.o
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
	.global	RV8HAL_V200R004_WriteReg
	.type	RV8HAL_V200R004_WriteReg, %function
RV8HAL_V200R004_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r1	@ pRv8DecParam, pRv8DecParam
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pHwMem, pHwMem
	ldr	r1, .L11	@,
	mov	r0, #2	@,
	mov	r9, r2	@ VdhId, VdhId
	bl	dprint_vfmw	@
	ldr	r1, [r5, #8]	@ pRv8DecParam_7(D)->PicHeightInMb, pRv8DecParam_7(D)->PicHeightInMb
	movw	r6, #1140	@ tmp269,
	ldr	r2, [r5, #4]	@ pRv8DecParam_7(D)->PicWidthInMb, pRv8DecParam_7(D)->PicWidthInMb
	mov	r7, #0	@ tmp247,
	mul	r6, r6, r9	@ tmp268, tmp269, VdhId
	mov	r3, r7	@ tmp252, tmp247
	mul	r2, r2, r1	@ D.29221, pRv8DecParam_7(D)->PicWidthInMb, pRv8DecParam_7(D)->PicHeightInMb
	ldr	r4, .L11+4	@ tmp439,
	mov	ip, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en,
	bfi	ip, r7, #1, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, tmp247,,
	ldr	r1, .L11+8	@,
	mov	r0, #3	@,
	sub	r2, r2, #1	@ D.29221, D.29221,
	ldr	lr, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp252, D.29221,,
	str	r3, [sp, #4]	@ tmp252,
	strb	ip, [sp, #7]	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en, MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].vop_type_detect_en
	mov	r3, r3, lsr #16	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp252,
	bfi	r3, r7, #7, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, tmp247,,
	strb	r3, [sp, #6]	@ MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en, MEM[(struct RV8_V200R004_BASIC_CFG0 *)&D32].ac_last_detect_en
	ldr	r2, [sp, #4]	@ D.29221, D32
	str	r2, [lr, #8]	@ D.29221, *_24
	bl	dprint_vfmw	@
	str	r7, [sp, #4]	@ tmp247, D32
	ldrh	r3, [sp, #6]	@, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	mov	r2, #8	@ tmp276,
	ldr	lr, [r5, #64]	@ pRv8DecParam_7(D)->DDRStride, pRv8DecParam_7(D)->DDRStride
	add	ip, r5, #8192	@ tmp297, pRv8DecParam,
	bfi	r3, r7, #0, #12	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, tmp247,,
	strb	r2, [sp, #4]	@ tmp276, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].video_standard
	ldrh	r1, [sp, #4]	@, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	mov	r0, #3	@,
	mov	r2, r3, lsr r2	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].dnr_on_line, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num,
	mov	lr, lr, lsr #6	@ D.29221, pRv8DecParam_7(D)->DDRStride,
	bfi	r1, lr, #4, #10	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ddr_stride, D.29221,,
	and	r2, r2, #239	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].dnr_on_line,
	ldr	lr, [r5, #40]	@ pRv8DecParam_7(D)->FstSlcGrp, pRv8DecParam_7(D)->FstSlcGrp
	orr	r2, r2, #32	@ tmp294, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].max_slcgrp_num
	mov	r3, r1, lsr #8	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ddr_stride,
	strb	r2, [sp, #7]	@ tmp294, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].dblk_1d_en
	bfi	r3, lr, #6, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp, pRv8DecParam_7(D)->FstSlcGrp,,
	ldr	ip, [ip, #3156]	@ pRv8DecParam_7(D)->Compress_en, pRv8DecParam_7(D)->Compress_en
	uxtb	r2, r2	@ tmp299, tmp294
	mvn	r3, r3, asl #25	@ tmp286, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].fst_slc_grp,
	strh	r1, [sp, #4]	@ movhi	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ddr_stride, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ddr_stride
	bfi	r2, ip, #6, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].compress_en, pRv8DecParam_7(D)->Compress_en,,
	mvn	r3, r3, lsr #25	@ tmp286, tmp286,
	strb	r3, [sp, #5]	@ tmp286, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].mv_output_en
	mov	r3, r2	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].compress_en
	bfi	r3, r7, #7, #1	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ppfd_en, tmp247,,
	strb	r3, [sp, #7]	@ MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ppfd_en, MEM[(struct RV8_V200R004_BASIC_CFG1 *)&D32].ppfd_en
	ldr	ip, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r3, [sp, #4]	@ D.29221, D32
	ldr	r1, .L11+12	@,
	str	r3, [ip, #12]	@ D.29221, *_52
	mov	r2, r3	@, D.29221
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r8, #44]	@ pHwMem_58(D)->MsgSlotAddr, pHwMem_58(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L11+16	@,
	bic	r2, r2, #15	@ D.29221, pHwMem_58(D)->MsgSlotAddr,
	str	r2, [r3, #16]	@ D.29221, *_66
	bl	dprint_vfmw	@
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r8, #28]	@ pHwMem_58(D)->MsgSlotAddr, pHwMem_58(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L11+20	@,
	bic	r2, r2, #15	@ D.29221, pHwMem_58(D)->MsgSlotAddr,
	str	r2, [r3, #20]	@ D.29221, *_78
	bl	dprint_vfmw	@
	ldr	r3, [r5, #44]	@ D.29224, pRv8DecParam_7(D)->StreamBaseAddr
	ldr	r2, [r4, r6]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, .L11+24	@,
	str	r3, [sp, #4]	@ D.29224, MEM[(struct RV8_V200R004_STREAM_BASE_ADDR *)&D32].stream_base_addr
	str	r3, [r2, #24]	@ D.29224, *_89
	mov	r2, r3	@, D.29224
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@ pRv8DecParam_7(D)->PicWidthInMb, pRv8DecParam_7(D)->PicWidthInMb
	cmp	r3, #120	@ pRv8DecParam_7(D)->PicWidthInMb,
	strhi	r7, [sp, #4]	@ tmp247, D32
	movls	r3, #65536	@ tmp331,
	strls	r3, [sp, #4]	@ tmp331, D32
	cmp	r9, #0	@ VdhId,
	beq	.L10	@,
	ble	.L6	@,
	mov	r2, #205	@,
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
	ldr	r3, .L11+32	@ tmp334,
	ldr	r1, [sp, #4]	@ D32, D32
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r1	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L6:
	movw	r2, #1140	@ tmp340,
	movw	r3, #3075	@ tmp343,
	mul	r9, r2, r9	@ tmp339, tmp340, VdhId
	movt	r3, 48	@ tmp343,
	mov	r2, r3	@, tmp343
	ldr	r1, .L11+36	@,
	mov	r0, #3	@,
	mov	r7, #0	@ tmp410,
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #60]	@ tmp343, *_109
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #64]	@ tmp343, *_114
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #68]	@ tmp343, *_119
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #72]	@ tmp343, *_124
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #76]	@ tmp343, *_129
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #80]	@ tmp343, *_134
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	str	r3, [ip, #84]	@ tmp343, *_139
	bl	dprint_vfmw	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #56]	@ pRv8DecParam_7(D)->CurPicPhyAddr, pRv8DecParam_7(D)->CurPicPhyAddr
	mov	r0, #3	@,
	ldr	r1, .L11+40	@,
	bic	r2, r2, #15	@ D.29221, pRv8DecParam_7(D)->CurPicPhyAddr,
	str	r2, [r3, #96]	@ D.29221, *_148
	bl	dprint_vfmw	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r2, [r5, #64]	@ D.29221, pRv8DecParam_7(D)->DDRStride
	mov	r0, #3	@,
	ldr	r6, [r5, #8]	@ height_in_mb, pRv8DecParam_7(D)->PicHeightInMb
	ldr	r1, .L11+44	@,
	str	r2, [r3, #100]	@ D.29221, *_158
	add	r6, r6, #1	@ D.29221, height_in_mb,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #64]	@ pRv8DecParam_7(D)->DDRStride, pRv8DecParam_7(D)->DDRStride
	mov	r6, r6, lsr #1	@ D.29221, D.29221,
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r1, .L11+48	@,
	mov	r0, #3	@,
	mov	r2, r2, asl #1	@ D.29221, pRv8DecParam_7(D)->DDRStride,
	mul	r2, r6, r2	@ D.29221, D.29221, D.29221
	str	r2, [r3, #104]	@ D.29221, *_171
	bl	dprint_vfmw	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	ldr	r1, .L11+52	@,
	mov	r0, #3	@,
	str	r7, [r3, #108]	@ tmp410, *_179
	ldr	r3, [r8, #1120]	@ D.29224, pHwMem_58(D)->DnrMbInfoAddr
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r2, r3	@, D.29224
	str	r3, [ip, #144]	@ D.29224, *_187
	bl	dprint_vfmw	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r2, r7	@, tmp410
	ldr	r1, .L11+56	@,
	mov	r0, #3	@,
	str	r7, [sp, #4]	@ tmp410, D32
	str	r7, [r3, #148]	@ tmp410, *_194
	bl	dprint_vfmw	@
	ldrb	r3, [sp, #4]	@ zero_extendqisi2	@, MEM[(struct RV8_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	ip, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	bfi	r3, r7, #0, #1	@ MEM[(struct RV8_V200R004_FF_APT_EN *)&D32].ff_apt_en, tmp410,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_FF_APT_EN *)&D32].ff_apt_en, MEM[(struct RV8_V200R004_FF_APT_EN *)&D32].ff_apt_en
	ldr	r2, [sp, #4]	@ D.29221, D32
	ldr	r1, .L11+60	@,
	str	r2, [ip, #152]	@ D.29221, *_201
	bl	dprint_vfmw	@
	ldr	r3, [r4, r9]	@ g_HwMem[VdhId_20(D)].pVdmRegVirAddr, g_HwMem[VdhId_20(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp438,
	str	r2, [r3, #32]	@ tmp438, *_209
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
	.size	RV8HAL_V200R004_WriteReg, .-RV8HAL_V200R004_WriteReg
	.align	2
	.global	RV8HAL_V200R004_WritePicMsg
	.type	RV8HAL_V200R004_WritePicMsg, %function
RV8HAL_V200R004_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r6, r0	@ pHwMem, pHwMem
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pRv8DecParam, pRv8DecParam
	mov	r0, #2	@,
	ldr	r1, .L17	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #44]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	bic	r0, r0, #15	@, pHwMem_4(D)->MsgSlotAddr,
	bl	MEM_Phy2Vir	@
	subs	r4, r0, #0	@ p32,
	beq	.L16	@,
	ldrb	r2, [r5, #12]	@ zero_extendqisi2	@ pRv8DecParam_11(D)->PicCodingType, pRv8DecParam_11(D)->PicCodingType
	mov	r7, #0	@ tmp189,
	mov	r3, #0	@ MEM[(struct RV8_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type,
	str	r7, [sp, #4]	@ tmp189, D32
	bfi	r3, r2, #0, #2	@ MEM[(struct RV8_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, pRv8DecParam_11(D)->PicCodingType,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type, MEM[(struct RV8_V200R004_PICDNMSG_D0 *)&D32].pic_coding_type
	ldr	r2, [sp, #4]	@ D.29249, D32
	mov	r0, #4	@,
	ldr	r1, .L17+4	@,
	str	r2, [r4]	@ D.29249, MEM[(volatile HI_S32 *)p32_8]
	bl	dprint_vfmw	@
	ldmib	r5, {r2, r3}	@ pRv8DecParam,,
	mov	r0, #0	@ movhi	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r3, r3, #1	@ tmp206, pRv8DecParam_11(D)->PicHeightInMb,
	sub	r2, r2, #1	@ tmp201, pRv8DecParam_11(D)->PicWidthInMb,
	mov	r1, r0	@ movhi	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	bfi	r0, r2, #0, #9	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, tmp201,,
	bfi	r1, r3, #0, #9	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, tmp206,,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_width_in_mb
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct RV8_V200R004_PICDNMSG_D1 *)&D32].pic_height_in_mb
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29249, D32
	ldr	r1, .L17+8	@,
	str	r2, [r4, #4]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 4B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #16]	@ pRv8DecParam_11(D)->Ratio0, pRv8DecParam_11(D)->Ratio0
	ldr	r3, [r5, #20]	@ pRv8DecParam_11(D)->Ratio1, pRv8DecParam_11(D)->Ratio1
	mov	r0, #4	@,
	ldr	r1, .L17+12	@,
	strh	r2, [sp, #4]	@ movhi	@ pRv8DecParam_11(D)->Ratio0, MEM[(struct RV8_V200R004_PICDNMSG_D2 *)&D32].Ratio0
	strh	r3, [sp, #6]	@ movhi	@ pRv8DecParam_11(D)->Ratio1, MEM[(struct RV8_V200R004_PICDNMSG_D2 *)&D32].Ratio1
	ldr	r2, [sp, #4]	@ D.29249, D32
	str	r2, [r4, #8]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 8B]
	bl	dprint_vfmw	@
	str	r7, [sp, #4]	@ tmp189, D32
	mov	r3, #0	@ MEM[(struct RV8_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength,
	bfi	r3, r7, #1, #3	@ MEM[(struct RV8_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength, tmp189,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength, MEM[(struct RV8_V200R004_PICDNMSG_D3 *)&D32].rv_deblocking_strength
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29249, D32
	ldr	r1, .L17+16	@,
	str	r2, [r4, #12]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 12B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #24]	@ pRv8DecParam_11(D)->PQUANT, pRv8DecParam_11(D)->PQUANT
	str	r7, [sp, #4]	@ tmp189, D32
	mov	r3, #0	@ MEM[(struct RV8_V200R004_PICDNMSG_D4 *)&D32].currpicqp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV8_V200R004_PICDNMSG_D4 *)&D32].currpicqp, pRv8DecParam_11(D)->PQUANT,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_PICDNMSG_D4 *)&D32].currpicqp, MEM[(struct RV8_V200R004_PICDNMSG_D4 *)&D32].currpicqp
	ldr	r2, [sp, #4]	@ D.29249, D32
	mov	r0, #4	@,
	ldr	r1, .L17+20	@,
	str	r2, [r4, #16]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 16B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #28]	@ pRv8DecParam_11(D)->PrevPicQP, pRv8DecParam_11(D)->PrevPicQP
	str	r7, [sp, #4]	@ tmp189, D32
	mov	r3, #0	@ MEM[(struct RV8_V200R004_PICDNMSG_D5 *)&D32].prevpicqp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV8_V200R004_PICDNMSG_D5 *)&D32].prevpicqp, pRv8DecParam_11(D)->PrevPicQP,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_PICDNMSG_D5 *)&D32].prevpicqp, MEM[(struct RV8_V200R004_PICDNMSG_D5 *)&D32].prevpicqp
	ldr	r2, [sp, #4]	@ D.29249, D32
	mov	r0, #4	@,
	ldr	r1, .L17+24	@,
	str	r2, [r4, #20]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 20B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #32]	@ pRv8DecParam_11(D)->PrevPicMb0QP, pRv8DecParam_11(D)->PrevPicMb0QP
	str	r7, [sp, #4]	@ tmp189, D32
	mov	r3, #0	@ MEM[(struct RV8_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp,
	bfi	r3, r2, #0, #5	@ MEM[(struct RV8_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp, pRv8DecParam_11(D)->PrevPicMb0QP,,
	strb	r3, [sp, #4]	@ MEM[(struct RV8_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp, MEM[(struct RV8_V200R004_PICDNMSG_D6 *)&D32].prevpicmb0qp
	ldr	r2, [sp, #4]	@ D.29249, D32
	mov	r0, #4	@,
	ldr	r1, .L17+28	@,
	str	r2, [r4, #24]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 24B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #60]	@ pRv8DecParam_11(D)->DispFramePhyAddr, pRv8DecParam_11(D)->DispFramePhyAddr
	ldr	r1, .L17+32	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pRv8DecParam_11(D)->DispFramePhyAddr,
	str	r2, [r4, #64]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 64B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #52]	@ pRv8DecParam_11(D)->FwdRefPhyAddr, pRv8DecParam_11(D)->FwdRefPhyAddr
	ldr	r1, .L17+36	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pRv8DecParam_11(D)->FwdRefPhyAddr,
	str	r2, [r4, #68]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 68B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #48]	@ pRv8DecParam_11(D)->BwdRefPhyAddr, pRv8DecParam_11(D)->BwdRefPhyAddr
	ldr	r1, .L17+40	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pRv8DecParam_11(D)->BwdRefPhyAddr,
	str	r2, [r4, #72]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 72B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #76]	@ D.29249, pRv8DecParam_11(D)->CurrPmvPhyAddr
	ldr	r1, .L17+44	@,
	mov	r0, #4	@,
	str	r2, [r4, #76]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 76B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #80]	@ D.29249, pRv8DecParam_11(D)->ColPmvPhyAddr
	ldr	r1, .L17+48	@,
	mov	r0, #4	@,
	str	r2, [r4, #80]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 80B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1080]	@ pHwMem_4(D)->SedTopAddr, pHwMem_4(D)->SedTopAddr
	ldr	r1, .L17+52	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pHwMem_4(D)->SedTopAddr,
	str	r2, [r4, #84]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 84B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1084]	@ pHwMem_4(D)->PmvTopAddr, pHwMem_4(D)->PmvTopAddr
	ldr	r1, .L17+56	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pHwMem_4(D)->PmvTopAddr,
	str	r2, [r4, #88]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 88B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1088]	@ pHwMem_4(D)->RcnTopAddr, pHwMem_4(D)->RcnTopAddr
	ldr	r1, .L17+60	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pHwMem_4(D)->RcnTopAddr,
	str	r2, [r4, #92]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 92B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #1096]	@ D.29246, pHwMem_4(D)->DblkTopAddr
	ldr	r1, .L17+64	@,
	mov	r0, #4	@,
	str	r2, [r4, #96]	@ D.29246, MEM[(volatile HI_S32 *)p32_8 + 96B]
	bl	dprint_vfmw	@
	ldr	r2, [r6, #44]	@ pHwMem_4(D)->MsgSlotAddr, pHwMem_4(D)->MsgSlotAddr
	ldr	r1, .L17+68	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29249, pHwMem_4(D)->MsgSlotAddr,
	add	r2, r2, #256	@ D.29249, D.29249,
	str	r2, [r4, #252]	@ D.29249, MEM[(volatile HI_S32 *)p32_8 + 252B]
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	dprint_vfmw	@
.L16:
	ldr	r3, .L17+72	@,
	movw	r2, #301	@,
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
	.size	RV8HAL_V200R004_WritePicMsg, .-RV8HAL_V200R004_WritePicMsg
	.align	2
	.global	RV8HAL_V200R004_WriteSliceMsg
	.type	RV8HAL_V200R004_WriteSliceMsg, %function
RV8HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	.pad #20
	sub	sp, sp, #20	@,,
	mov	fp, r1	@ pRv8DecParam, pRv8DecParam
	mov	r0, #2	@,
	ldr	r1, .L40	@,
	bl	dprint_vfmw	@
	ldr	r4, [r4, #44]	@ pHwMem_15(D)->MsgSlotAddr, pHwMem_15(D)->MsgSlotAddr
	add	r9, fp, #84	@ pSliceParam, pRv8DecParam,
	bic	r4, r4, #15	@ D.29284, pHwMem_15(D)->MsgSlotAddr,
	add	r5, r4, #256	@ MsgBlockPhy, D.29284,
	mov	r0, r5	@, MsgBlockPhy
	bl	MEM_Phy2Vir	@
	subs	r7, r0, #0	@ pMsgBase,
	beq	.L37	@,
	ldr	r10, [fp, #120]	@ pRv8DecParam_13(D)->SliceParam[0].first_mb_in_slice, pRv8DecParam_13(D)->SliceParam[0].first_mb_in_slice
	cmp	r10, #0	@ pRv8DecParam_13(D)->SliceParam[0].first_mb_in_slice,
	bne	.L38	@,
.L21:
	ldr	r3, [fp, #36]	@ pRv8DecParam_13(D)->TotalSliceNum, pRv8DecParam_13(D)->TotalSliceNum
	cmp	r3, #0	@ pRv8DecParam_13(D)->TotalSliceNum,
	beq	.L19	@,
	mov	r4, #0	@ i,
	add	r3, r5, r10, lsl #6	@ D.29284, MsgBlockPhy, AddSlice0Flag,
	str	r3, [sp, #4]	@ D.29284, %sfp
	mov	r3, r10, asl #8	@ D.29293, AddSlice0Flag,
	str	r3, [sp]	@ D.29293, %sfp
.L31:
	cmp	r4, #0	@ i,
	beq	.L34	@,
	mov	r5, #44	@ tmp328,
	mla	r5, r5, r4, r9	@ D.29292, tmp328, i, pSliceParam
	ldr	r2, [r5, #36]	@ _96->first_mb_in_slice, _96->first_mb_in_slice
	ldr	r3, [r5, #-8]	@ _99->first_mb_in_slice, _99->first_mb_in_slice
	cmp	r2, r3	@ _96->first_mb_in_slice, _99->first_mb_in_slice
	ble	.L25	@,
.L24:
	ldr	r1, [r5, #16]	@ _238->StreamLength, _238->StreamLength
	mov	r8, #0	@ tmp332,
	ldr	r2, [r5, #8]	@ _238->StreamBitOffset, _238->StreamBitOffset
	mov	r3, r8	@ tmp334, tmp332
	bfi	r3, r1, #0, #24	@ tmp334, _238->StreamLength,,
	str	r3, [sp, #12]	@ tmp334,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	mov	r0, #4	@,
	ldr	r1, [sp]	@ D.29293, %sfp
	bfi	r3, r2, #0, #7	@ MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, _238->StreamBitOffset,,
	strb	r3, [sp, #15]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #12]	@ D.29284, D32
	add	r6, r1, r4, lsl #8	@ D.29293, D.29293, i,
	ldr	r1, .L40+4	@,
	add	r4, r4, #1	@ j, i,
	str	r2, [r7, r6]	@ D.29284, MEM[(volatile HI_S32 *)_116]
	bl	dprint_vfmw	@
	ldr	r1, [r5]	@ _238->StreamPhyAddr, _238->StreamPhyAddr
	add	r3, r6, #4	@ D.29293, D.29293,
	mov	r2, r8	@ tmp343, tmp332
	mov	r0, #4	@,
	bfi	r2, r1, #0, #24	@ tmp343, _238->StreamPhyAddr,,
	ldr	r1, .L40+8	@,
	str	r2, [sp, #12]	@ tmp343,
	str	r2, [r7, r3]	@ tmp343, MEM[(volatile HI_S32 *)_126]
	bl	dprint_vfmw	@
	ldr	r1, [r5, #20]	@ _238->StreamLength, _238->StreamLength
	ldr	r2, [r5, #12]	@ _238->StreamBitOffset, _238->StreamBitOffset
	mov	r3, r8	@ tmp349, tmp332
	bfi	r3, r1, #0, #24	@ tmp349, _238->StreamLength,,
	str	r3, [sp, #12]	@ tmp349,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	add	ip, r6, #8	@ D.29293, D.29293,
	ldr	r1, .L40+12	@,
	mov	r0, #4	@,
	bfi	r3, r2, #0, #7	@ MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, _238->StreamBitOffset,,
	strb	r3, [sp, #15]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #12]	@ D.29284, D32
	str	r2, [r7, ip]	@ D.29284, MEM[(volatile HI_S32 *)_141]
	bl	dprint_vfmw	@
	ldr	r1, [r5, #4]	@ _238->StreamPhyAddr, _238->StreamPhyAddr
	add	r3, r6, #12	@ D.29293, D.29293,
	mov	r2, r8	@ tmp358, tmp332
	mov	r0, #4	@,
	bfi	r2, r1, #0, #24	@ tmp358, _238->StreamPhyAddr,,
	ldr	r1, .L40+16	@,
	str	r2, [sp, #12]	@ tmp358,
	str	r2, [r7, r3]	@ tmp358, MEM[(volatile HI_S32 *)_151]
	bl	dprint_vfmw	@
	ldr	r3, [r5, #24]	@ _238->dblk_filter_passthrough, _238->dblk_filter_passthrough
	ldr	r1, [r5, #28]	@ _238->osvquant, _238->osvquant
	add	ip, r6, #16	@ D.29293, D.29293,
	ldr	r2, [r5, #32]	@ _238->sliceqp, _238->sliceqp
	and	r3, r3, #1	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].osvquant, _238->dblk_filter_passthrough,
	bfi	r3, r1, #1, #2	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].osvquant, _238->osvquant,,
	str	r8, [sp, #12]	@ tmp332, D32
	bfi	r3, r2, #3, #5	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, _238->sliceqp,,
	strb	r3, [sp, #14]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp
	ldr	r2, [sp, #12]	@ D.29284, D32
	mov	r0, #4	@,
	ldr	r1, .L40+20	@,
	str	r2, [r7, ip]	@ D.29284, MEM[(volatile HI_S32 *)_170]
	bl	dprint_vfmw	@
	ldr	r2, [fp, #36]	@ D.29284, pRv8DecParam_13(D)->TotalSliceNum
	ldr	r1, [r5, #36]	@ D.29283, _238->first_mb_in_slice
	cmp	r4, r2	@ j, D.29284
	str	r8, [sp, #12]	@ tmp332, D32
	strh	r1, [sp, #12]	@ movhi	@ D.29283, MEM[(struct RV8_V200R004_SLCDNMSG_D5 *)&D32].slice_start_mbn
	bcs	.L26	@,
	mov	r3, #44	@ tmp375,
	mul	r3, r3, r4	@ D.29284, tmp375, j
	add	r0, r9, r3	@ tmp376, pSliceParam, D.29284
	ldr	r0, [r0, #36]	@ _228->first_mb_in_slice, _228->first_mb_in_slice
	cmp	r1, r0	@ D.29283, _228->first_mb_in_slice
	blt	.L26	@,
	sub	r3, r3, #44	@ D.29293, D.29284,
	add	r3, r9, r3	@ ivtmp.34, pSliceParam, D.29293
	b	.L27	@
.L28:
	ldr	r0, [r3, #80]	@ MEM[base: _180, offset: 80B], MEM[base: _180, offset: 80B]
	cmp	r1, r0	@ D.29283, MEM[base: _180, offset: 80B]
	blt	.L26	@,
.L27:
	add	r4, r4, #1	@ j, j,
	add	r3, r3, #44	@ ivtmp.34, ivtmp.34,
	cmp	r4, r2	@ j, D.29284
	bcc	.L28	@,
.L26:
	cmp	r2, r4	@ D.29284, j
	beq	.L39	@,
	mov	r2, #44	@ tmp385,
	ldr	r3, [sp, #4]	@ D.29284, %sfp
	mla	r2, r2, r4, r9	@ tmp386, tmp385, j, pSliceParam
	add	r10, r3, r4, lsl #8	@ D.29284, D.29284, j,
	mov	r8, r10	@ next_slice_para_addr, D.29284
	ldr	r2, [r2, #36]	@ _193->first_mb_in_slice, _193->first_mb_in_slice
	sub	r2, r2, #1	@ D.29283, _193->first_mb_in_slice,
	str	r2, [fp, #124]	@ D.29283, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].last_mb_in_slice
.L30:
	ldr	r2, [r5, #40]	@ _238->last_mb_in_slice, _238->last_mb_in_slice
	add	ip, r6, #20	@ D.29293, D.29293,
	add	r6, r6, #252	@ D.29293, D.29293,
	ldr	r1, .L40+24	@,
	mov	r0, #4	@,
	sub	r4, r4, #1	@ i, j,
	strh	r2, [sp, #14]	@ movhi	@ _238->last_mb_in_slice, MEM[(struct RV8_V200R004_SLCDNMSG_D5 *)&D32].slice_end_mbn
	ldr	r2, [sp, #12]	@ D.29284, D32
	str	r2, [r7, ip]	@ D.29284, MEM[(volatile HI_S32 *)_207]
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.29284
	ldr	r1, .L40+28	@,
	mov	r0, #4	@,
	str	r8, [r7, r6]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_216]
	str	r10, [sp, #12]	@ D.29284, MEM[(struct RV8_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
.L25:
	ldr	r3, [fp, #36]	@ pRv8DecParam_13(D)->TotalSliceNum, pRv8DecParam_13(D)->TotalSliceNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ pRv8DecParam_13(D)->TotalSliceNum, i
	bhi	.L31	@,
.L19:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L34:
	mov	r5, r9	@ D.29292, pSliceParam
	b	.L24	@
.L39:
	ldr	r1, [fp, #8]	@ pRv8DecParam_13(D)->PicHeightInMb, pRv8DecParam_13(D)->PicHeightInMb
	mov	r10, #0	@ D.29284,
	ldr	r2, [fp, #4]	@ pRv8DecParam_13(D)->PicWidthInMb, pRv8DecParam_13(D)->PicWidthInMb
	mov	r8, r10	@ next_slice_para_addr, D.29284
	mul	r2, r2, r1	@ D.29284, pRv8DecParam_13(D)->PicWidthInMb, pRv8DecParam_13(D)->PicHeightInMb
	sub	r2, r2, #1	@ D.29284, D.29284,
	str	r2, [fp, #124]	@ D.29284, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].last_mb_in_slice
	b	.L30	@
.L38:
	mov	r6, #0	@ tmp285,
	ldr	r2, [fp, #92]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset
	mov	r3, r6	@ tmp286, tmp285
	bfi	r3, r6, #0, #24	@ tmp286, tmp285,,
	str	r3, [sp, #12]	@ tmp286,
	mov	r0, #4	@,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	add	r4, r4, #512	@ D.29284, D.29284,
	ldr	r1, .L40+4	@,
	mov	r10, #1	@ AddSlice0Flag,
	bfi	r3, r2, #0, #7	@ MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset,,
	strb	r3, [sp, #15]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0, MEM[(struct RV8_V200R004_SLCDNMSG_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #12]	@ D.29284, D32
	str	r2, [r7]	@ D.29284, MEM[(volatile HI_S32 *)pMsgBase_22]
	bl	dprint_vfmw	@
	ldr	r2, [fp, #84]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr
	mov	r3, r6	@ tmp293, tmp285
	ldr	r1, .L40+8	@,
	bfi	r3, r2, #0, #24	@ tmp293, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr,,
	mov	r0, #4	@,
	str	r3, [sp, #12]	@ tmp293,
	mov	r2, r3	@, tmp293
	str	r3, [r7, #4]	@ tmp293, MEM[(volatile HI_S32 *)pMsgBase_22 + 4B]
	bl	dprint_vfmw	@
	mov	r3, r6	@ tmp297, tmp285
	bfi	r3, r6, #0, #24	@ tmp297, tmp285,,
	str	r3, [sp, #12]	@ tmp297,
	ldr	r2, [fp, #96]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset
	mov	r0, #4	@,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	ldr	r1, .L40+12	@,
	bfi	r3, r2, #0, #7	@ MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamBitOffset,,
	strb	r3, [sp, #15]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1, MEM[(struct RV8_V200R004_SLCDNMSG_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #12]	@ D.29284, D32
	str	r2, [r7, #8]	@ D.29284, MEM[(volatile HI_S32 *)pMsgBase_22 + 8B]
	bl	dprint_vfmw	@
	ldr	r2, [fp, #88]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr
	mov	r3, r6	@ tmp304, tmp285
	ldr	r1, .L40+16	@,
	bfi	r3, r2, #0, #24	@ tmp304, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].StreamPhyAddr,,
	mov	r0, #4	@,
	str	r3, [sp, #12]	@ tmp304,
	mov	r2, r3	@, tmp304
	str	r3, [r7, #12]	@ tmp304, MEM[(volatile HI_S32 *)pMsgBase_22 + 12B]
	bl	dprint_vfmw	@
	ldr	r3, [fp, #108]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].dblk_filter_passthrough, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].dblk_filter_passthrough
	ldr	r1, [fp, #112]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].osvquant, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].osvquant
	mov	r0, #4	@,
	ldr	r2, [fp, #116]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].sliceqp, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].sliceqp
	and	r3, r3, #1	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].osvquant, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].dblk_filter_passthrough,
	bfi	r3, r1, #1, #2	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].osvquant, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].osvquant,,
	str	r6, [sp, #12]	@ tmp285, D32
	bfi	r3, r2, #3, #5	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].sliceqp,,
	strb	r3, [sp, #14]	@ MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp, MEM[(struct RV8_V200R004_SLCDNMSG_D4 *)&D32].sliceqp
	ldr	r2, [sp, #12]	@ D.29284, D32
	ldr	r1, .L40+20	@,
	str	r2, [r7, #16]	@ D.29284, MEM[(volatile HI_S32 *)pMsgBase_22 + 16B]
	bl	dprint_vfmw	@
	ldr	r3, [fp, #120]	@ MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].first_mb_in_slice, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].first_mb_in_slice
	strh	r6, [sp, #12]	@ movhi	@ tmp285, MEM[(struct RV8_V200R004_SLCDNMSG_D5 *)&D32].slice_start_mbn
	mov	r0, #4	@,
	sub	r3, r3, #1	@ tmp323, MEM[(struct RV8_SLC_PARAM_S *)pRv8DecParam_13(D) + 84B].first_mb_in_slice,
	strh	r3, [sp, #14]	@ movhi	@ tmp323, MEM[(struct RV8_V200R004_SLCDNMSG_D5 *)&D32].slice_end_mbn
	ldr	r2, [sp, #12]	@ D.29284, D32
	ldr	r1, .L40+24	@,
	str	r2, [r7, #20]	@ D.29284, MEM[(volatile HI_S32 *)pMsgBase_22 + 20B]
	bl	dprint_vfmw	@
	ldr	r1, .L40+28	@,
	mov	r0, #4	@,
	str	r4, [r7, #252]	@ D.29284, MEM[(volatile HI_S32 *)pMsgBase_22 + 252B]
	mov	r2, r4	@, D.29284
	str	r4, [sp, #12]	@ D.29284, MEM[(struct RV8_V200R004_SLCDNMSG_D63 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	b	.L21	@
.L37:
	ldr	r3, .L40+32	@,
	movw	r2, #521	@,
	ldr	r1, .L40+36	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L41:
	.align	2
.L40:
	.word	.LC34
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC33
	.word	.LC15
	.word	.LC16
	.fnend
	.size	RV8HAL_V200R004_WriteSliceMsg, .-RV8HAL_V200R004_WriteSliceMsg
	.align	2
	.global	RV8HAL_V200R004_StartDec
	.type	RV8HAL_V200R004_StartDec, %function
RV8HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #1140	@ tmp118,
	mul	r4, r4, r1	@ tmp117, tmp118, VdhId
	ldr	r7, .L54	@ tmp119,
	cmp	r1, #1	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r5, r4, r7	@ pHwMem, tmp117, tmp119
	bhi	.L51	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L52	@,
	ldr	r3, [r4, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r6, r0	@ pRv8DecParam, pRv8DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L53	@,
.L47:
	mov	r2, r1	@, VdhId
	mov	r0, r5	@, pHwMem
	mov	r1, r6	@, pRv8DecParam
	bl	RV8HAL_V200R004_WriteReg	@
	mov	r1, r6	@, pRv8DecParam
	mov	r0, r5	@, pHwMem
	bl	RV8HAL_V200R004_WritePicMsg	@
	mov	r1, r6	@, pRv8DecParam
	mov	r0, r5	@, pHwMem
	bl	RV8HAL_V200R004_WriteSliceMsg	@
	ldr	r1, .L54+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.29300,
.L45:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L53:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ VdhId, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L48	@,
	str	r3, [r4, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	ldr	r1, [sp, #4]	@ VdhId, %sfp
	b	.L47	@
.L52:
	mov	r2, #74	@,
	ldr	r1, .L54+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29300,
	b	.L45	@
.L51:
	ldr	r1, .L54+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29300,
	b	.L45	@
.L48:
	ldr	r1, .L54+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29300,
	b	.L45	@
.L55:
	.align	2
.L54:
	.word	g_HwMem
	.word	.LC37
	.word	.LC6
	.word	.LC35
	.word	.LC36
	.fnend
	.size	RV8HAL_V200R004_StartDec, .-RV8HAL_V200R004_StartDec
	.align	2
	.global	RV8HAL_V200R004_StartVDH
	.type	RV8HAL_V200R004_StartVDH, %function
RV8HAL_V200R004_StartVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L57	@,
	mov	r0, #2	@,
	b	dprint_vfmw	@
.L58:
	.align	2
.L57:
	.word	.LC37
	.fnend
	.size	RV8HAL_V200R004_StartVDH, .-RV8HAL_V200R004_StartVDH
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"configuring VDM registers...\012\000"
	.space	2
.LC1:
	.ascii	"BASIC_V200R004_CFG0=0x%x\012\000"
	.space	2
.LC2:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC3:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC4:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC5:
	.ascii	"STREAM_V200R004_BASE_ADDR=0x%x\012\000"
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
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D16 = 0x%x\012\000"
.LC25:
	.ascii	"D17 = 0x%x\012\000"
.LC26:
	.ascii	"D18 = 0x%x\012\000"
.LC27:
	.ascii	"D19 = 0x%x\012\000"
.LC28:
	.ascii	"D20 = 0x%x\012\000"
.LC29:
	.ascii	"D21 = 0x%x\012\000"
.LC30:
	.ascii	"D22 = 0x%x\012\000"
.LC31:
	.ascii	"D23 = 0x%x\012\000"
.LC32:
	.ascii	"D024 = 0x%x\012\000"
	.space	3
.LC33:
	.ascii	"D63 = 0x%x\012\000"
.LC34:
	.ascii	"configuring Slice Msg...\012\000"
	.space	2
.LC35:
	.ascii	"VdhId is wrong! RV8HAL_V200R003_StartDec\012\000"
	.space	2
.LC36:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC37:
	.ascii	"start VDM...\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
