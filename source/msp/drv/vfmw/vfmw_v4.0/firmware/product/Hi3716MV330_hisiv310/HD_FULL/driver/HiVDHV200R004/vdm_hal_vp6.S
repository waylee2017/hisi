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
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_vp6)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vp6.o
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
	.global	VP6HAL_V200R004_CfgReg
	.type	VP6HAL_V200R004_CfgReg, %function
VP6HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r1	@ pHwMem, pHwMem
	ldr	r3, [r1]	@ pHwMem_6(D)->pVdmRegVirAddr, pHwMem_6(D)->pVdmRegVirAddr
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ pVp6DecParam, pVp6DecParam
	cmp	r3, #0	@ pHwMem_6(D)->pVdmRegVirAddr,
	beq	.L7	@,
.L2:
	ldrh	r1, [r7, #52]	@ D.29214, pVp6DecParam_13(D)->PicWidthInMb
	movw	r4, #1144	@ tmp253,
	ldrh	r3, [r7, #54]	@ D.29214, pVp6DecParam_13(D)->PicHeightInMb
	mov	r6, #0	@ tmp241,
	mul	r4, r4, r2	@ tmp252, tmp253, VdhId
	ldr	r5, .L8	@ tmp251,
	mul	r3, r3, r1	@ D.29214, D.29214, D.29214
	mov	ip, r6	@ tmp246, tmp241
	mov	r2, #0	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en,
	bfi	r2, r6, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, tmp241,,
	ldr	r1, .L8+4	@,
	mov	r0, #3	@,
	sub	r3, r3, #1	@ D.29214, D.29214,
	ldr	lr, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	bfi	ip, r3, #0, #20	@ tmp246, D.29214,,
	str	ip, [sp, #12]	@ tmp246,
	strb	r2, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	ldr	r2, [sp, #12]	@ D.29214, D32
	str	r2, [lr, #8]	@ D.29214, *_29
	bl	dprint_vfmw	@
	mov	r3, #536870912	@ tmp257,
	str	r3, [sp, #12]	@ tmp257, D32
	mov	r3, #10	@ tmp260,
	ldrh	r2, [sp, #14]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	mov	r0, #3	@,
	strb	r3, [sp, #12]	@ tmp260, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfi	r2, r6, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp241,,
	ldr	r1, [r7, #188]	@ pVp6DecParam_13(D)->VahbStride, pVp6DecParam_13(D)->VahbStride
	ubfx	r3, r2, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strh	r2, [sp, #14]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	orr	r3, r3, #32	@ tmp277, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	strb	r3, [sp, #15]	@ tmp277, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en
	mov	r1, r1, lsr #6	@ D.29215, pVp6DecParam_13(D)->VahbStride,
	ldr	ip, [r7, #196]	@ pVp6DecParam_13(D)->Compress_en, pVp6DecParam_13(D)->Compress_en
	uxtb	r2, r3	@ tmp280, tmp277
	ldrh	r3, [sp, #12]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r2, ip, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pVp6DecParam_13(D)->Compress_en,,
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	bfi	r3, r1, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.29215,,
	strh	r3, [sp, #12]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	ubfx	r3, r3, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	bfi	r2, r6, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, tmp241,,
	orr	r3, r3, #192	@ tmp271, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strb	r2, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	strb	r3, [sp, #13]	@ tmp271, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	ldr	r2, [sp, #12]	@ D.29214, D32
	ldr	r1, .L8+8	@,
	str	r2, [ip, #12]	@ D.29214, *_59
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r8, #44]	@ pHwMem_6(D)->MsgSlotAddr, pHwMem_6(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L8+12	@,
	bic	r2, r2, #15	@ D.29214, pHwMem_6(D)->MsgSlotAddr,
	str	r2, [r3, #16]	@ D.29214, *_71
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r8, #28]	@ pHwMem_6(D)->MsgSlotAddr, pHwMem_6(D)->MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L8+16	@,
	bic	r2, r2, #15	@ D.29214, pHwMem_6(D)->MsgSlotAddr,
	str	r2, [r3, #20]	@ D.29214, *_82
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r7, #56]	@ D.29214, pVp6DecParam_13(D)->StreamBaseAddr
	mov	r0, #3	@,
	ldr	r1, .L8+20	@,
	str	r2, [r3, #24]	@ D.29214, *_91
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r8, #1100]	@ pHwMem_6(D)->PpfdBufAddr, pHwMem_6(D)->PpfdBufAddr
	mov	r0, #3	@,
	ldr	r1, .L8+24	@,
	bic	r2, r2, #15	@ D.29214, pHwMem_6(D)->PpfdBufAddr,
	str	r2, [r3, #128]	@ D.29214, *_102
	bl	dprint_vfmw	@
	ldr	r2, [r8, #1104]	@ pHwMem_6(D)->PpfdBufLen, pHwMem_6(D)->PpfdBufLen
	str	r6, [sp, #12]	@ tmp241, D32
	mov	r0, #3	@,
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	strh	r2, [sp, #12]	@ movhi	@ pHwMem_6(D)->PpfdBufLen, MEM[(struct PPFD_V200R004_BUF_LEN *)&D32].ppfd_buf_len
	ldr	r2, [sp, #12]	@ D.29214, D32
	ldr	r1, .L8+28	@,
	str	r2, [r3, #132]	@ D.29214, *_112
	bl	dprint_vfmw	@
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp330,
	ldr	r1, .L8+32	@,
	movt	r3, 48	@ tmp330,
	mov	r0, #3	@,
	str	r3, [r2, #60]	@ tmp330, *_123
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp330, *_128
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp330, *_133
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp330, *_138
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp330, *_143
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp330, *_148
	ldr	r2, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp330, *_153
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r7, #172]	@ pVp6DecParam_13(D)->image_curr_recon_addr, pVp6DecParam_13(D)->image_curr_recon_addr
	bic	r2, r2, #15	@ D.29214, pVp6DecParam_13(D)->image_curr_recon_addr,
	str	r2, [r3, #96]	@ D.29214, *_162
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	ldr	r2, [r7, #188]	@ D.29214, pVp6DecParam_13(D)->VahbStride
	mov	r0, #3	@,
	ldr	r1, .L8+36	@,
	str	r2, [r3, #100]	@ D.29214, *_171
	bl	dprint_vfmw	@
	ldr	r3, [r7, #192]	@ D.29214, pVp6DecParam_13(D)->uv_offset
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, .L8+40	@,
	mov	r2, r3	@, D.29214
	str	r3, [ip, #104]	@ D.29214, *_180
	bl	dprint_vfmw	@
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	mov	r3, #1	@ tmp397,
	ldr	r1, .L8+44	@,
	mov	r2, r3	@, tmp397
	mov	r0, #3	@,
	str	r6, [ip, #108]	@ tmp241, *_187
	ldr	ip, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	str	r3, [ip, #152]	@ tmp397, *_193
	bl	dprint_vfmw	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_25(D)].pVdmRegVirAddr, g_HwMem[VdhId_25(D)].pVdmRegVirAddr
	mov	r0, r6	@ D.29211, tmp241
	mvn	r2, #0	@ tmp404,
	str	r2, [r3, #32]	@ tmp404, *_199
.L4:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L7:
	mov	r0, #0	@,
	str	r2, [sp, #4]	@ VdhId, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r8]	@ p32, pHwMem_6(D)->pVdmRegVirAddr
	ldrne	r2, [sp, #4]	@ VdhId, %sfp
	bne	.L2	@
.L3:
	ldr	r1, .L8+48	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29211,
	b	.L4	@
.L9:
	.align	2
.L8:
	.word	g_HwMem
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC0
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
	mov	r8, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ p32,
	beq	.L24	@,
	ldr	r2, [r4, #60]	@ pVp6DecParam_14(D)->FrameType, pVp6DecParam_14(D)->FrameType
	mov	r6, #0	@ tmp285,
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type,
	str	r6, [sp, #4]	@ tmp285, D32
	bfi	r3, r2, #0, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type, pVp6DecParam_14(D)->FrameType,,
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type, MEM[(struct VP6_V200R004_DWNMSG_D0 *)&D32].pic_coding_type
	ldr	r2, [sp, #4]	@ D.29237, D32
	mov	r0, #4	@,
	ldr	r1, .L32	@,
	str	r2, [r5]	@ D.29237, MEM[(volatile HI_S32 *)p32_11]
	bl	dprint_vfmw	@
	ldrh	r0, [r4, #52]	@ pVp6DecParam_14(D)->PicWidthInMb, pVp6DecParam_14(D)->PicWidthInMb
	ldrh	r1, [r4, #54]	@ pVp6DecParam_14(D)->PicHeightInMb, pVp6DecParam_14(D)->PicHeightInMb
	mov	r2, #0	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb,
	sub	r0, r0, #1	@ tmp293, pVp6DecParam_14(D)->PicWidthInMb,
	mov	r3, r2	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb
	sub	r1, r1, #1	@ tmp298, pVp6DecParam_14(D)->PicHeightInMb,
	bfi	r2, r0, #0, #9	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb, tmp293,,
	bfi	r3, r1, #0, #9	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, tmp298,,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb
	mov	r2, r2, lsr #8	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_width_in_mb,
	mov	r3, r3, lsr #8	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].pic_height_in_mb,
	bfi	r2, r6, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, tmp285,,
	bfi	r3, r6, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, tmp285,,
	strb	r2, [sp, #5]	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved0
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D1 *)&D32].reserved1
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29237, D32
	ldr	r1, .L32+4	@,
	str	r2, [r5, #4]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 4B]
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ pVp6DecParam_14(D)->Vp3VersionNo, pVp6DecParam_14(D)->Vp3VersionNo
	ldr	ip, [r4, #104]	@ pVp6DecParam_14(D)->VpProfile, pVp6DecParam_14(D)->VpProfile
	mov	r0, #4	@,
	ldr	r1, [r4, #108]	@ pVp6DecParam_14(D)->UseLoopFilter, pVp6DecParam_14(D)->UseLoopFilter
	and	r3, r3, #31	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].VpProfile, pVp6DecParam_14(D)->Vp3VersionNo,
	ldr	r2, [r4, #72]	@ pVp6DecParam_14(D)->UseHuffman, pVp6DecParam_14(D)->UseHuffman
	bfi	r3, ip, #5, #2	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].VpProfile, pVp6DecParam_14(D)->VpProfile,,
	ldr	ip, [r4, #68]	@ pVp6DecParam_14(D)->MultiStream, pVp6DecParam_14(D)->MultiStream
	mov	r1, r1, lsr #1	@ D.29238, pVp6DecParam_14(D)->UseLoopFilter,
	and	r2, r2, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, pVp6DecParam_14(D)->UseHuffman,
	bfi	r3, ip, #7, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream, pVp6DecParam_14(D)->MultiStream,,
	str	r6, [sp, #4]	@ tmp285, D32
	bfi	r2, r1, #1, #1	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, D.29238,,
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].MultiStream
	strb	r2, [sp, #5]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].UseLoopFilter
	ldr	r2, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved
	ldr	r1, .L32+8	@,
	bfi	r2, r6, #10, #22	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, tmp285,,
	str	r2, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved
	str	r2, [r5, #8]	@ MEM[(struct VP6_V200R004_DWNMSG_D2 *)&D32].reserved, MEM[(volatile HI_S32 *)p32_11 + 8B]
	bl	dprint_vfmw	@
	ldr	r3, [r4, #96]	@ pVp6DecParam_14(D)->PredictionFilterAlpha, pVp6DecParam_14(D)->PredictionFilterAlpha
	ldr	r2, [r4, #92]	@ pVp6DecParam_14(D)->PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterMvSizeThresh
	mov	r0, #4	@,
	and	r3, r3, #31	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterAlpha,
	str	r6, [sp, #4]	@ tmp285, D32
	bfi	r3, r2, #5, #3	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, pVp6DecParam_14(D)->PredictionFilterMvSizeThresh,,
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMvSizeThresh
	ldr	r3, [sp, #4]	@ tmp333,
	ldr	r1, [r4, #88]	@ pVp6DecParam_14(D)->PredictionFilterVarThresh, pVp6DecParam_14(D)->PredictionFilterVarThresh
	ldr	r2, [r4, #84]	@ pVp6DecParam_14(D)->PredictionFilterMode, pVp6DecParam_14(D)->PredictionFilterMode
	bfi	r3, r1, #8, #10	@ tmp333, pVp6DecParam_14(D)->PredictionFilterVarThresh,,
	str	r3, [sp, #4]	@ tmp333,
	ldrb	r3, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode
	ldr	r1, .L32+12	@,
	bfi	r3, r2, #2, #2	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode, pVp6DecParam_14(D)->PredictionFilterMode,,
	strb	r3, [sp, #6]	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].PredictionFilterMode
	ldrh	r3, [sp, #6]	@, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved
	bfi	r3, r6, #4, #12	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved, tmp285,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D3 *)&D32].reserved
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #12]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 12B]
	bl	dprint_vfmw	@
	ldrb	r2, [r4]	@ zero_extendqisi2	@ pVp6DecParam_14(D)->FLimit, pVp6DecParam_14(D)->FLimit
	str	r6, [sp, #4]	@ tmp285, D32
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit,
	ldr	r1, [r4, #76]	@ pVp6DecParam_14(D)->DcQuant, pVp6DecParam_14(D)->DcQuant
	bfi	r3, r2, #0, #4	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit, pVp6DecParam_14(D)->FLimit,,
	strb	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit, MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].FLimit
	mov	r0, #4	@,
	ldrh	r3, [sp, #4]	@,
	ldr	r2, [r4, #80]	@ pVp6DecParam_14(D)->AcQuant, pVp6DecParam_14(D)->AcQuant
	bfi	r3, r1, #4, #8	@ tmp349, pVp6DecParam_14(D)->DcQuant,,
	strh	r3, [sp, #4]	@ movhi	@ tmp349,
	ldr	r3, [sp, #4]	@ tmp352,
	ldr	r1, .L32+16	@,
	bfi	r3, r2, #12, #9	@ tmp352, pVp6DecParam_14(D)->AcQuant,,
	str	r3, [sp, #4]	@ tmp352,
	mov	r3, r3, lsr #16	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, tmp352,
	bfi	r3, r6, #5, #11	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, tmp285,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved, MEM[(struct VP6_V200R004_DWNMSG_D4 *)&D32].reserved
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #16]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 16B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #160]	@ D.29237, pVp6DecParam_14(D)->value
	ldr	r1, .L32+20	@,
	mov	r0, #4	@,
	str	r2, [r5, #32]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 32B]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #168]	@ pVp6DecParam_14(D)->count, pVp6DecParam_14(D)->count
	ldr	r2, [r4, #164]	@ pVp6DecParam_14(D)->range, pVp6DecParam_14(D)->range
	mov	r3, #0	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count,
	str	r6, [sp, #4]	@ tmp285, D32
	bfi	r3, r1, #0, #4	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count, pVp6DecParam_14(D)->count,,
	strb	r3, [sp, #6]	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].count
	mov	r0, #4	@,
	ldrh	r3, [sp, #6]	@, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1
	strb	r6, [sp, #5]	@ tmp285, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved0
	bfi	r3, r6, #4, #12	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1, tmp285,,
	strb	r2, [sp, #4]	@ pVp6DecParam_14(D)->range, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].range
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1, MEM[(struct VP6_V200R004_DWNMSG_D9 *)&D32].reserved1
	mov	r6, #0	@ tmp372,
	ldr	r2, [sp, #4]	@ D.29237, D32
	ldr	r1, .L32+24	@,
	str	r2, [r5, #36]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 36B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #168]	@ pVp6DecParam_14(D)->count, pVp6DecParam_14(D)->count
	ldr	r0, [r4, #112]	@ pVp6DecParam_14(D)->bit0_len_0, pVp6DecParam_14(D)->bit0_len_0
	ldr	r1, [r4, #116]	@ D.29238, pVp6DecParam_14(D)->bit0_offset_0
	add	r3, r2, #8	@ Vp6_br_cnt, pVp6DecParam_14(D)->count,
	add	r0, r3, r0	@ D16_bit_len_0, Vp6_br_cnt, pVp6DecParam_14(D)->bit0_len_0
	mov	r2, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, tmp372
	cmp	r3, r1	@ Vp6_br_cnt, D.29238
	bfi	r2, r0, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, D16_bit_len_0,,
	addhi	r1, r1, #128	@ D.29238, D.29238,
	rsbls	r3, r3, r1	@ D16_bit_offset_0, Vp6_br_cnt, D.29238
	rsbhi	r3, r3, r1	@ D16_bit_offset_0, Vp6_br_cnt, D.29238
	str	r2, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0
	mov	r2, r2, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_len_0,
	ldrhi	r7, [r4, #120]	@ pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	ldrls	r7, [r4, #120]	@ D17_bit_byte_offset_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	bfi	r2, r3, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, D16_bit_offset_0,,
	strb	r2, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D16 *)&D32].bit0_offset_0
	subhi	r7, r7, #16	@ D17_bit_byte_offset_0, pVp6DecParam_14(D)->bit0_stream_addr_0,
	ldr	r2, [sp, #4]	@ D.29237, D32
	mov	r0, #4	@,
	ldr	r1, .L32+28	@,
	str	r2, [r5, #64]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 64B]
	bl	dprint_vfmw	@
	mov	r3, r6	@ tmp378, tmp372
	bfi	r3, r7, #0, #24	@ tmp378, D17_bit_byte_offset_0,,
	str	r3, [sp, #4]	@ tmp378,
	strb	r6, [sp, #7]	@ tmp372, MEM[(struct VP6_V200R004_DWNMSG_D17 *)&D32].reserved
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29237, D32
	ldr	r1, .L32+32	@,
	str	r2, [r5, #68]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 68B]
	bl	dprint_vfmw	@
	ldr	r0, [r4, #120]	@ pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->bit0_stream_addr_0
	ldr	r3, [r4, #56]	@ pVp6DecParam_14(D)->StreamBaseAddr, pVp6DecParam_14(D)->StreamBaseAddr
	add	r0, r0, r3	@, pVp6DecParam_14(D)->bit0_stream_addr_0, pVp6DecParam_14(D)->StreamBaseAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r6	@,
	beq	.L25	@,
.L15:
	ldr	r1, [r4, #124]	@ pVp6DecParam_14(D)->bit0_len_1, pVp6DecParam_14(D)->bit0_len_1
	mov	r6, #0	@ tmp386,
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, tmp386
	ldr	r2, [r4, #128]	@ pVp6DecParam_14(D)->bit0_offset_1, pVp6DecParam_14(D)->bit0_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, pVp6DecParam_14(D)->bit0_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1
	ldr	r1, .L32+36	@,
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, pVp6DecParam_14(D)->bit0_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D18 *)&D32].bit0_offset_1
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #72]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 72B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #132]	@ pVp6DecParam_14(D)->bit0_stream_addr_1, pVp6DecParam_14(D)->bit0_stream_addr_1
	mov	r3, r6	@ tmp396, tmp386
	ldr	r1, .L32+40	@,
	bfi	r3, r2, #0, #24	@ tmp396, pVp6DecParam_14(D)->bit0_stream_addr_1,,
	str	r3, [sp, #4]	@ tmp396,
	strb	r6, [sp, #7]	@ tmp386, MEM[(struct VP6_V200R004_DWNMSG_D19 *)&D32].reserved
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #76]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 76B]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #136]	@ pVp6DecParam_14(D)->bit1_len_0, pVp6DecParam_14(D)->bit1_len_0
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, tmp386
	ldr	r2, [r4, #140]	@ pVp6DecParam_14(D)->bit1_offset_0, pVp6DecParam_14(D)->bit1_offset_0
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, pVp6DecParam_14(D)->bit1_len_0,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0
	ldr	r1, .L32+44	@,
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_len_0,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, pVp6DecParam_14(D)->bit1_offset_0,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0, MEM[(struct VP6_V200R004_DWNMSG_D20 *)&D32].bit1_offset_0
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #80]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 80B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #144]	@ pVp6DecParam_14(D)->bit1_stream_addr_0, pVp6DecParam_14(D)->bit1_stream_addr_0
	mov	r3, r6	@ tmp411, tmp386
	ldr	r1, .L32+48	@,
	bfi	r3, r2, #0, #24	@ tmp411, pVp6DecParam_14(D)->bit1_stream_addr_0,,
	str	r3, [sp, #4]	@ tmp411,
	strb	r6, [sp, #7]	@ tmp386, MEM[(struct VP6_V200R004_DWNMSG_D21 *)&D32].reserved
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #84]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 84B]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #148]	@ pVp6DecParam_14(D)->bit1_len_1, pVp6DecParam_14(D)->bit1_len_1
	mov	r3, r6	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, tmp386
	ldr	r2, [r4, #152]	@ pVp6DecParam_14(D)->bit1_offset_1, pVp6DecParam_14(D)->bit1_offset_1
	bfi	r3, r1, #0, #25	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, pVp6DecParam_14(D)->bit1_len_1,,
	str	r3, [sp, #4]	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1
	ldr	r1, .L32+52	@,
	mov	r0, #4	@,
	mov	r3, r3, lsr #24	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_len_1,
	bfi	r3, r2, #1, #7	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, pVp6DecParam_14(D)->bit1_offset_1,,
	strb	r3, [sp, #7]	@ MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1, MEM[(struct VP6_V200R004_DWNMSG_D22 *)&D32].bit1_offset_1
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #88]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 88B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #156]	@ pVp6DecParam_14(D)->bit1_stream_addr_1, pVp6DecParam_14(D)->bit1_stream_addr_1
	mov	r3, r6	@ tmp426, tmp386
	ldr	r1, .L32+56	@,
	bfi	r3, r2, #0, #24	@ tmp426, pVp6DecParam_14(D)->bit1_stream_addr_1,,
	str	r3, [sp, #4]	@ tmp426,
	strb	r6, [sp, #7]	@ tmp386, MEM[(struct VP6_V200R004_DWNMSG_D23 *)&D32].reserved
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.29237, D32
	str	r2, [r5, #92]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 92B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #172]	@ pVp6DecParam_14(D)->image_curr_recon_addr, pVp6DecParam_14(D)->image_curr_recon_addr
	ldr	r1, .L32+60	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pVp6DecParam_14(D)->image_curr_recon_addr,
	str	r2, [r5, #128]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 128B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #176]	@ pVp6DecParam_14(D)->image_golden_ref_addr, pVp6DecParam_14(D)->image_golden_ref_addr
	ldr	r1, .L32+64	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pVp6DecParam_14(D)->image_golden_ref_addr,
	str	r2, [r5, #136]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 136B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #180]	@ pVp6DecParam_14(D)->image_last_ref_addr, pVp6DecParam_14(D)->image_last_ref_addr
	ldr	r1, .L32+68	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pVp6DecParam_14(D)->image_last_ref_addr,
	str	r2, [r5, #140]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 140B]
	bl	dprint_vfmw	@
	ldr	r2, [r8, #1080]	@ pHwMem_8(D)->SedTopAddr, pHwMem_8(D)->SedTopAddr
	ldr	r1, .L32+72	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pHwMem_8(D)->SedTopAddr,
	str	r2, [r5, #144]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 144B]
	bl	dprint_vfmw	@
	ldr	r2, [r8, #1084]	@ pHwMem_8(D)->PmvTopAddr, pHwMem_8(D)->PmvTopAddr
	ldr	r1, .L32+76	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pHwMem_8(D)->PmvTopAddr,
	str	r2, [r5, #148]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 148B]
	bl	dprint_vfmw	@
	ldr	r2, [r8, #1088]	@ pHwMem_8(D)->RcnTopAddr, pHwMem_8(D)->RcnTopAddr
	ldr	r1, .L32+80	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.29237, pHwMem_8(D)->RcnTopAddr,
	str	r2, [r5, #152]	@ D.29237, MEM[(volatile HI_S32 *)p32_11 + 152B]
	bl	dprint_vfmw	@
	ldr	r7, [r8, #1116]	@ pHwMem_8(D)->VpTabAddr, pHwMem_8(D)->VpTabAddr
	ldr	r1, .L32+84	@,
	mov	r0, #4	@,
	bic	r7, r7, #15	@ D.29238, pHwMem_8(D)->VpTabAddr,
	str	r7, [r5, #156]	@ D.29238, MEM[(volatile HI_S32 *)p32_11 + 156B]
	str	r7, [sp, #4]	@ D.29238, MEM[(struct VP6_V200R004_DWNMSG_D39 *)&D32].tab_addr
	mov	r2, r7	@, D.29238
	bl	dprint_vfmw	@
	mov	r0, r7	@, D.29238
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ __p,
	ldr	r0, [r8, #1116]	@, pHwMem_8(D)->VpTabAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r6	@,
	cmpne	r5, r6	@, __p,
	beq	.L26	@,
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
	mov	r0, r7	@, D.29238
	cmp	r3, #0	@ pVp6DecParam_14(D)->UseHuffman,
	beq	.L27	@,
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.29253,
	adds	r0, r0, #768	@ TabBaseAddr, D.29253,
	beq	.L28	@,
	mov	r2, #1536	@,
	ldr	r1, [r4, #44]	@, pVp6DecParam_14(D)->TblAcHuffLUT
	bl	memcpy	@
	mov	r2, #128	@,
	ldr	r1, [r4, #40]	@, pVp6DecParam_14(D)->TblDcHuffLUT
	add	r0, r5, #2304	@, D.29253,
	bl	memcpy	@
	add	r0, r5, #2432	@, D.29253,
	mov	r2, #128	@,
	ldr	r1, [r4, #48]	@, pVp6DecParam_14(D)->TblZeroHuffLUT
	bl	memcpy	@
.L19:
	mov	r0, r7	@, D.29238
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.29253,
	adds	r0, r0, #2560	@ TabBaseAddr, D.29253,
	beq	.L29	@,
	mov	r2, #64	@,
	ldr	r1, [r4, #16]	@, pVp6DecParam_14(D)->TblModifiedScanOrder
	bl	memcpy	@
	mov	r2, #64	@,
	ldr	r1, [r4, #20]	@, pVp6DecParam_14(D)->TblEobOffsetTable
	add	r0, r5, #2624	@, D.29253,
	bl	memcpy	@
	mov	r2, #960	@,
	ldr	r1, [r4, #24]	@, pVp6DecParam_14(D)->TblHuffTree
	add	r0, r5, #2688	@, D.29253,
	bl	memcpy	@
	mov	r0, r7	@, D.29238
	bl	MEM_Phy2Vir	@
	adds	r0, r0, #2816	@ TabBaseAddr,,
	beq	.L30	@,
	ldr	r1, [r4, #24]	@, pVp6DecParam_14(D)->TblHuffTree
	mov	r2, #960	@,
	bl	memcpy	@
	mov	r0, #0	@ D.29236,
.L12:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L27:
	bl	MEM_Phy2Vir	@
	mov	r5, r0	@ D.29253,
	adds	r0, r0, #768	@ TabBaseAddr, D.29253,
	beq	.L31	@,
	ldr	r1, [r4, #28]	@, pVp6DecParam_14(D)->TblDcNodeContexts
	mov	r2, #96	@,
	bl	memcpy	@
	ldr	r1, [r4, #36]	@, pVp6DecParam_14(D)->TblZeroProbs
	mov	r2, #32	@,
	add	r0, r5, #864	@, D.29253,
	bl	memcpy	@
	add	r0, r5, #896	@, D.29253,
	mov	r2, #576	@,
	ldr	r1, [r4, #32]	@, pVp6DecParam_14(D)->TblACProbs
	bl	memcpy	@
	b	.L19	@
.L25:
	movw	r2, #386	@,
	ldr	r1, .L32+88	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L15	@
.L26:
	mov	r0, r6	@, tmp386
	movw	r2, #497	@,
	ldr	r1, .L32+92	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L24:
	ldr	r3, .L32+96	@,
	movw	r2, #281	@,
	ldr	r1, .L32+100	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L30:
	movw	r2, #571	@,
	ldr	r1, .L32+104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L29:
	movw	r2, #555	@,
	ldr	r1, .L32+104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L28:
	movw	r2, #537	@,
	ldr	r1, .L32+104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L31:
	movw	r2, #517	@,
	ldr	r1, .L32+104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29236,
	b	.L12	@
.L33:
	.align	2
.L32:
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
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
	.word	.LC23
	.word	.LC37
	.word	.LC12
	.word	.LC13
	.word	.LC38
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
	movw	r4, #1144	@ tmp122,
	ldrh	r3, [r0, #52]	@ pVp6DecParam_7(D)->PicWidthInMb, pVp6DecParam_7(D)->PicWidthInMb
	mov	r5, r0	@ pVp6DecParam, pVp6DecParam
	mul	r4, r4, r1	@ tmp121, tmp122, VdhId
	sub	r3, r3, #1	@ tmp127, pVp6DecParam_7(D)->PicWidthInMb,
	ldr	r7, .L44	@ tmp123,
	cmp	r3, #512	@ tmp127,
	mov	r6, r1	@ VdhId, VdhId
	add	r8, r4, r7	@ pHwMem, tmp121, tmp123
	bcs	.L41	@,
	ldrh	r3, [r0, #54]	@ pVp6DecParam_7(D)->PicHeightInMb, pVp6DecParam_7(D)->PicHeightInMb
	sub	r3, r3, #1	@ tmp133, pVp6DecParam_7(D)->PicHeightInMb,
	cmp	r3, #512	@ tmp133,
	bcs	.L42	@,
	ldr	r3, [r4, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L43	@,
.L38:
	mov	r2, r6	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgReg	@
	mov	r2, r6	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r5	@, pVp6DecParam
	bl	VP6HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.29323,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L43:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L39	@,
	str	r3, [r4, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	b	.L38	@
.L41:
	ldr	r3, .L44+4	@,
	mov	r2, #54	@,
	ldr	r1, .L44+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29323,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L42:
	ldr	r3, .L44+12	@,
	mov	r2, #55	@,
	ldr	r1, .L44+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29323,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L39:
	ldr	r1, .L44+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29323,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L45:
	.align	2
.L44:
	.word	g_HwMem
	.word	.LC39
	.word	.LC13
	.word	.LC40
	.word	.LC0
	.fnend
	.size	VP6HAL_V200R004_StartDec, .-VP6HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC1:
	.ascii	"BASIC_CFG0 = 0x%x\012\000"
	.space	1
.LC2:
	.ascii	"BASIC_CFG1 = 0x%x\012\000"
	.space	1
.LC3:
	.ascii	"AVM_ADDR = 0x%x\012\000"
	.space	3
.LC4:
	.ascii	"VAM_ADDR = 0x%x\012\000"
	.space	3
.LC5:
	.ascii	"STREAM_BASE_ADDR = 0x%x\012\000"
	.space	3
.LC6:
	.ascii	"PPFD_V200R004_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC7:
	.ascii	"PPFD_V200R003_BUF_LEN = 0x%x\012\000"
	.space	2
.LC8:
	.ascii	"YSTADDR_1D = 0x%x\012\000"
	.space	1
.LC9:
	.ascii	"YSTRIDE_1D = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"UVOFFSET_1D = 0x%x\012\000"
.LC11:
	.ascii	"FF_APT_EN = 0x%x\012\000"
	.space	2
.LC12:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC13:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC14:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC15:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC17:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC18:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D16 = 0x%x\012\000"
.LC22:
	.ascii	"D17 = 0x%x\012\000"
.LC23:
	.ascii	"LINE:%d NULL == tmpAddr.\012\000"
	.space	2
.LC24:
	.ascii	"D18 = 0x%x\012\000"
.LC25:
	.ascii	"D19 = 0x%x\012\000"
.LC26:
	.ascii	"D20 = 0x%x\012\000"
.LC27:
	.ascii	"D21 = 0x%x\012\000"
.LC28:
	.ascii	"D22 = 0x%x\012\000"
.LC29:
	.ascii	"D23 = 0x%x\012\000"
.LC30:
	.ascii	"D32 = 0x%x\012\000"
.LC31:
	.ascii	"D34 = 0x%x\012\000"
.LC32:
	.ascii	"D35 = 0x%x\012\000"
.LC33:
	.ascii	"D36 = 0x%x\012\000"
.LC34:
	.ascii	"D37 = 0x%x\012\000"
.LC35:
	.ascii	"D38 = 0x%x\012\000"
.LC36:
	.ascii	"D39 = 0x%x\012\000"
.LC37:
	.ascii	"line: %d\012\000"
	.space	2
.LC38:
	.ascii	"line: %d  NULL == TabBaseAddr.\012\000"
.LC39:
	.ascii	"picture width out of range\000"
	.space	1
.LC40:
	.ascii	"picture height out of range\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
