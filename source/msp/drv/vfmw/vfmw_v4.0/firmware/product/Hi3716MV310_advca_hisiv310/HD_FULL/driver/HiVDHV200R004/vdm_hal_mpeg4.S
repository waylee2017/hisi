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
	.file	"vdm_hal_mpeg4.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.o
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
	.global	MP4HAL_V200R004_Log2bin
	.type	MP4HAL_V200R004_Log2bin, %function
MP4HAL_V200R004_Log2bin:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ value
	bxeq	lr	@
	mov	r3, #0	@ n,
.L3:
	add	r3, r3, #1	@ tmp119, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp119
	bne	.L3	@,
	sxth	r0, r3	@ D.33740, n
	bx	lr	@
	.fnend
	.size	MP4HAL_V200R004_Log2bin, .-MP4HAL_V200R004_Log2bin
	.align	2
	.global	MP4HAL_V200R004_CfgReg
	.type	MP4HAL_V200R004_CfgReg, %function
MP4HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r6, r1, #0	@ VdhId, VdhId
	bgt	.L10	@,
	add	r4, r0, #12288	@ tmp442, pMp4DecParam,
	mov	r5, r0	@ pMp4DecParam, pMp4DecParam
	add	r3, r0, #236	@ D.33761, pMp4DecParam,
	ldr	r1, [r4, #2284]	@ D.33762, pMp4DecParam_9(D)->SlcNum
	cmp	r1, #0	@ D.33762,
	beq	.L10	@,
	mov	lr, #0	@ i,
	mvn	r8, #0	@ stream_base_addr,
.L11:
	ldr	ip, [r3, #16]	@ D.33762, MEM[base: _170, offset: 16B]
	cmp	ip, #0	@ D.33762,
	beq	.L14	@,
	ldr	r0, [r3, #8]	@ MEM[base: _170, offset: 8B], MEM[base: _170, offset: 8B]
	bic	ip, ip, #15	@ TmpBaseAddr, D.33762,
	cmp	r0, #0	@ MEM[base: _170, offset: 8B],
	beq	.L14	@,
	cmp	r8, ip	@ stream_base_addr, TmpBaseAddr
	movcs	r8, ip	@ stream_base_addr, TmpBaseAddr
.L14:
	ldr	ip, [r3, #20]	@ D.33762, MEM[base: _170, offset: 20B]
	cmp	ip, #0	@ D.33762,
	beq	.L12	@,
	ldr	r0, [r3, #12]	@ MEM[base: _170, offset: 12B], MEM[base: _170, offset: 12B]
	bic	ip, ip, #15	@ TmpBaseAddr, D.33762,
	cmp	r0, #0	@ MEM[base: _170, offset: 12B],
	beq	.L12	@,
	cmp	r8, ip	@ stream_base_addr, TmpBaseAddr
	movcs	r8, ip	@ stream_base_addr, TmpBaseAddr
.L12:
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #28	@ ivtmp.49, ivtmp.49,
	cmp	lr, r1	@ i, D.33762
	bne	.L11	@,
	cmn	r8, #1	@ stream_base_addr,
	beq	.L10	@,
	str	r8, [r2]	@ stream_base_addr, *pBaseAddr_14(D)
	movw	r9, #1140	@ tmp294,
	ldrh	r2, [r5, #164]	@ D.33764, pMp4DecParam_9(D)->PicWidthInMb
	ldrh	r3, [r5, #166]	@ D.33764, pMp4DecParam_9(D)->PicHeightInMb
	mul	r9, r9, r6	@ tmp293, tmp294, VdhId
	ldr	r7, .L40	@ tmp441,
	mul	r3, r3, r2	@ D.33764, D.33764, D.33764
	add	r10, r7, r9	@ tmp295, tmp441, tmp293
	ldr	r2, [r7, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	sub	r3, r3, #1	@ D.33764, D.33764,
	ubfx	r3, r3, #0, #20	@ D.33764, D.33764,,
	orr	r3, r3, #1107296256	@ D32, D.33764,
	orr	r3, r3, #4194304	@ D32, D32,
	str	r3, [r2, #8]	@ D32, *_27
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #2312]	@ pMp4DecParam_9(D)->VahbStride, pMp4DecParam_9(D)->VahbStride
	ldr	r3, [r4, #2372]	@ pMp4DecParam_9(D)->Compress_en, pMp4DecParam_9(D)->Compress_en
	ldr	r0, [r7, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	r2, r2, lsr #6	@ D.33762, pMp4DecParam_9(D)->VahbStride,
	and	r1, r3, #1	@ D.33764, pMp4DecParam_9(D)->Compress_en,
	mov	r2, r2, asl #4	@ D.33762, D.33762,
	orr	r3, r2, #536870914	@ D.33762, D.33762,
	orr	r3, r3, #114688	@ D.33762, D.33762,
	orr	r3, r3, r1, asl #30	@ D32, D.33762, D.33764,
	str	r3, [r0, #12]	@ D32, *_43
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r3, [r10, #44]	@ g_HwMem[VdhId_6(D)].MsgSlotAddr, g_HwMem[VdhId_6(D)].MsgSlotAddr
	bic	r3, r3, #15	@ D32, g_HwMem[VdhId_6(D)].MsgSlotAddr,
	str	r3, [r2, #16]	@ D32, *_51
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r3, [r10, #28]	@ g_HwMem[VdhId_6(D)].MsgSlotAddr, g_HwMem[VdhId_6(D)].MsgSlotAddr
	bic	r3, r3, #15	@ D32, g_HwMem[VdhId_6(D)].MsgSlotAddr,
	str	r3, [r2, #20]	@ D32, *_59
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r8, [r3, #24]	@ stream_base_addr, *_66
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r5, #164]	@ pMp4DecParam_9(D)->PicWidthInMb, pMp4DecParam_9(D)->PicWidthInMb
	cmp	r3, #120	@ pMp4DecParam_9(D)->PicWidthInMb,
	movhi	r8, #0	@ D32,
	movls	r8, #65536	@ D32,
	cmp	r6, #0	@ VdhId,
	beq	.L39	@,
.L17:
	movw	r2, #1140	@ tmp348,
	movw	r3, #3075	@ tmp351,
	mul	r6, r2, r6	@ tmp347, tmp348, VdhId
	movt	r3, 48	@ tmp351,
	mov	r8, #0	@ tmp417,
	add	r9, r7, r6	@ tmp349, tmp441, tmp347
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #60]	@ tmp351, *_82
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp351, *_87
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp351, *_92
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp351, *_97
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp351, *_102
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp351, *_107
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp351, *_112
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r3, [r5, #212]	@ pMp4DecParam_9(D)->CurPicPhyAddr, pMp4DecParam_9(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D32, pMp4DecParam_9(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D32, *_120
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r4, #2312]	@ D32, pMp4DecParam_9(D)->VahbStride
	ldrh	r5, [r5, #166]	@ height_in_mb, pMp4DecParam_9(D)->PicHeightInMb
	str	r2, [r3, #100]	@ D32, *_130
	add	r5, r5, #1	@ D.33762, height_in_mb,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2312]	@ pMp4DecParam_9(D)->VahbStride, pMp4DecParam_9(D)->VahbStride
	mov	r5, r5, lsr #1	@ D.33762, D.33762,
	ldr	r2, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	r3, r3, asl #1	@ D.33762, pMp4DecParam_9(D)->VahbStride,
	mul	r3, r5, r3	@ D32, D.33762, D.33762
	str	r3, [r2, #104]	@ D32, *_142
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r8, [r3, #108]	@ tmp417, *_148
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r8, [r3, #152]	@ tmp417, *_153
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r9, #1120]	@ D32, g_HwMem[VdhId_6(D)].DnrMbInfoAddr
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r2, [r3, #144]	@ D32, *_160
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp439,
	mov	r0, r8	@ D.33760, tmp417
	str	r2, [r3, #32]	@ tmp439, *_166
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L39:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L40+4	@ tmp343,
	cmp	r8, #0	@ D32,
	biceq	r1, r0, #65536	@ datTmp, D.33764,
	orrne	r1, r0, #65536	@ datTmp, D.33764,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L17	@
.L10:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33760,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L41:
	.align	2
.L40:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	MP4HAL_V200R004_CfgReg, .-MP4HAL_V200R004_CfgReg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V200R004_CfgDnMsg
	.type	MP4HAL_V200R004_CfgDnMsg, %function
MP4HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pMp4DecParam, pMp4DecParam
	ldrh	r2, [r0, #166]	@ HeightInMb, pMp4DecParam_12(D)->PicHeightInMb
	.pad #12
	sub	sp, sp, #12	@,,
	ldrh	r3, [r0, #164]	@ WidthInMb, pMp4DecParam_12(D)->PicWidthInMb
	mov	r8, r1	@ VdhId, VdhId
	mul	r3, r3, r2	@ MbCnt, WidthInMb, HeightInMb
	cmp	r3, #0	@ MbCnt,
	beq	.L66	@,
	mov	r4, #0	@ n,
.L44:
	add	r4, r4, #1	@ tmp456, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r4, r4	@ n, tmp456
	bne	.L44	@,
.L43:
	ldr	r9, .L84	@ tmp759,
	movw	r3, #1140	@ tmp459,
	mla	r3, r3, r8, r9	@ tmp460, tmp459, VdhId, tmp759
	ldr	r0, [r3, #44]	@, g_HwMem[VdhId_18(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ pReg,
	beq	.L76	@,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->IsShortHeader, pMp4DecParam_12(D)->IsShortHeader
	cmp	r3, #1	@ pMp4DecParam_12(D)->IsShortHeader,
	beq	.L77	@,
	mov	r7, #0	@ tmp488,
	str	r7, [r6]	@ tmp488, MEM[(volatile HI_S32 *)pReg_21]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->VopQuant, pMp4DecParam_12(D)->VopQuant
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ D.33830, pMp4DecParam_12(D)->PicQuantType
	and	r4, r4, #15	@ D.33830, n,
	and	r2, r2, #31	@ D.33830, pMp4DecParam_12(D)->VopQuant,
	mov	r3, r3, asl #31	@ D.33830, D.33830,
	orr	r3, r3, r2, asl #26	@ D.33832, D.33830, D.33830,
	str	r3, [r6, #4]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 4B]
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r5]	@ zero_extendqisi2	@ D.33833, pMp4DecParam_12(D)->PicCodingType
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->Interlaced, pMp4DecParam_12(D)->Interlaced
	cmp	r1, #2	@ D.33833,
	streqb	r7, [r5, #12]	@ tmp488, pMp4DecParam_12(D)->vop_rounding_type
	ldrb	ip, [r5, #14]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->top_field_first, pMp4DecParam_12(D)->top_field_first
	and	r3, r3, #1	@ D.33830, pMp4DecParam_12(D)->Interlaced,
	moveq	r2, r7	@ D.33830, tmp488
	add	r7, r5, #12288	@ tmp760, pMp4DecParam,
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->alternate_vertical_scan, pMp4DecParam_12(D)->alternate_vertical_scan
	and	ip, ip, #1	@ D.33830, pMp4DecParam_12(D)->top_field_first,
	ldr	r10, [r7, #2328]	@ pMp4DecParam_12(D)->sprite_enable, pMp4DecParam_12(D)->sprite_enable
	and	r1, r1, #3	@ D.33830, D.33833,
	ldr	fp, [r7, #2332]	@ pMp4DecParam_12(D)->sprite_warping_points, pMp4DecParam_12(D)->sprite_warping_points
	and	r0, r0, #1	@ D.33830, pMp4DecParam_12(D)->alternate_vertical_scan,
	ldr	lr, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	and	r10, r10, #3	@ D.33830, pMp4DecParam_12(D)->sprite_enable,
	ldrneb	r2, [r5, #12]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->vop_rounding_type, pMp4DecParam_12(D)->vop_rounding_type
	orr	r3, r3, r10, asl #26	@ D.33830, D.33830, D.33830,
	and	lr, lr, #3	@ D.33830, pMp4DecParam_12(D)->sprite_warping_accuracy,
	ldrb	r10, [r5, #10]	@ zero_extendqisi2	@ D.33830, pMp4DecParam_12(D)->resync_marker_disable
	orr	r3, r3, fp, asl #30	@ D.33830, D.33830, pMp4DecParam_12(D)->sprite_warping_points,
	ldrb	fp, [r5, #11]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->QuarterSample, pMp4DecParam_12(D)->QuarterSample
	orr	lr, r3, lr, asl #28	@ D.33830, D.33830, D.33830,
	orr	lr, lr, ip, asl #1	@ D.33830, D.33830, D.33830,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->intra_dc_vlc_thr, pMp4DecParam_12(D)->intra_dc_vlc_thr
	and	fp, fp, #1	@ D.33830, pMp4DecParam_12(D)->QuarterSample,
	orr	ip, lr, r0, asl #2	@ D.33830, D.33830, D.33830,
	mov	r0, r10, asl #7	@ D.33830, D.33830,
	ldrb	lr, [r5, #7]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FwdFcode, pMp4DecParam_12(D)->FwdFcode
	orr	ip, ip, fp, asl #4	@ D.33830, D.33830, D.33830,
	ldrb	r10, [r5, #8]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->BwdFcode, pMp4DecParam_12(D)->BwdFcode
	orr	ip, ip, r1, asl #5	@ D.33830, D.33830, D.33830,
	uxtb	r0, r0	@ D.33830, D.33830
	and	r1, r3, #7	@ D.33830, pMp4DecParam_12(D)->intra_dc_vlc_thr,
	orr	r0, ip, r0	@ D.33830, D.33830, D.33830
	and	lr, lr, #7	@ D.33830, pMp4DecParam_12(D)->FwdFcode,
	ldrb	ip, [r5, #6]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->BitsOfVopTimeIncr, pMp4DecParam_12(D)->BitsOfVopTimeIncr
	orr	r1, r0, r1, asl #8	@ D.33830, D.33830, D.33830,
	and	r3, r10, #7	@ D.33830, pMp4DecParam_12(D)->BwdFcode,
	orr	r1, r1, lr, asl #11	@ D.33830, D.33830, D.33830,
	and	r0, ip, #31	@ D.33830, pMp4DecParam_12(D)->BitsOfVopTimeIncr,
	orr	r3, r1, r3, asl #14	@ D.33830, D.33830, D.33830,
	orr	r3, r3, r0, asl #17	@ D.33830, D.33830, D.33830,
	orr	r4, r3, r4, asl #22	@ D.33830, D.33830, D.33830,
	andne	r2, r2, #1	@ D.33830, pMp4DecParam_12(D)->vop_rounding_type,
	movne	r2, r2, asl #3	@ D.33830, D.33830,
	orr	r4, r4, r2	@ D.33832, D.33830, D.33830
	str	r4, [r6, #8]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 8B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	cmp	r3, #2	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L78	@,
.L48:
	ldrh	r3, [r5, #164]	@ D.33832, pMp4DecParam_12(D)->PicWidthInMb
	ldrh	r2, [r5, #166]	@ D.33832, pMp4DecParam_12(D)->PicHeightInMb
	sub	r3, r3, #1	@ D.33832, D.33832,
	sub	r2, r2, #1	@ D.33832, D.33832,
	uxth	r3, r3	@ D.33830, D.33832
	orr	r3, r3, r2, asl #16	@ D.33832, D.33830, D.33832,
	str	r3, [r6, #16]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 16B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, #2320]	@ pMp4DecParam_12(D)->image_height, pMp4DecParam_12(D)->image_height
	ldr	r3, [r7, #2324]	@ pMp4DecParam_12(D)->image_width, pMp4DecParam_12(D)->image_width
	orr	r3, r3, r2, asl #16	@ D.33832, pMp4DecParam_12(D)->image_width, pMp4DecParam_12(D)->image_height,
	str	r3, [r6, #20]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 20B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	cmp	r3, #3	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L79	@,
.L51:
	mov	r4, #0	@ tmp660,
	str	r4, [r6, #32]	@ tmp660, MEM[(volatile HI_S32 *)pReg_21 + 32B]
	bl	vfmw_dprint_nothing	@
	str	r4, [r6, #36]	@ tmp660, MEM[(volatile HI_S32 *)pReg_21 + 36B]
	bl	vfmw_dprint_nothing	@
	str	r4, [r6, #40]	@ tmp660, MEM[(volatile HI_S32 *)pReg_21 + 40B]
	bl	vfmw_dprint_nothing	@
	str	r4, [r6, #44]	@ tmp660, MEM[(volatile HI_S32 *)pReg_21 + 44B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2300]	@ pMp4DecParam_12(D)->DispFramePhyAddr, pMp4DecParam_12(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.33832, pMp4DecParam_12(D)->DispFramePhyAddr,
	str	r3, [r6, #48]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 48B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #216]	@ pMp4DecParam_12(D)->FwdRefPicPhyAddr, pMp4DecParam_12(D)->FwdRefPicPhyAddr
	bic	r3, r3, #15	@ D.33832, pMp4DecParam_12(D)->FwdRefPicPhyAddr,
	str	r3, [r6, #52]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 52B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #220]	@ pMp4DecParam_12(D)->BwdRefPicPhyAddr, pMp4DecParam_12(D)->BwdRefPicPhyAddr
	bic	r3, r3, #15	@ D.33832, pMp4DecParam_12(D)->BwdRefPicPhyAddr,
	str	r3, [r6, #56]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 56B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #224]	@ pMp4DecParam_12(D)->CurPmvPhyAddr, pMp4DecParam_12(D)->CurPmvPhyAddr
	bic	r3, r3, #15	@ D.33832, pMp4DecParam_12(D)->CurPmvPhyAddr,
	str	r3, [r6, #60]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 60B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #228]	@ pMp4DecParam_12(D)->BwdPmvPhyAddr, pMp4DecParam_12(D)->BwdPmvPhyAddr
	bic	r3, r3, #15	@ D.33832, pMp4DecParam_12(D)->BwdPmvPhyAddr,
	str	r3, [r6, #64]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 64B]
	bl	vfmw_dprint_nothing	@
	movw	r3, #1140	@ tmp673,
	mla	r3, r3, r8, r9	@ tmp674, tmp673, VdhId, tmp759
	add	r10, r3, #1072	@ tmp676, tmp674,
	ldr	r3, [r3, #1080]	@ g_HwMem[VdhId_18(D)].SedTopAddr, g_HwMem[VdhId_18(D)].SedTopAddr
	bic	r3, r3, #15	@ D.33832, g_HwMem[VdhId_18(D)].SedTopAddr,
	str	r3, [r6, #68]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 68B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #12]	@ g_HwMem[VdhId_18(D)].PmvTopAddr, g_HwMem[VdhId_18(D)].PmvTopAddr
	bic	r3, r3, #15	@ D.33832, g_HwMem[VdhId_18(D)].PmvTopAddr,
	str	r3, [r6, #72]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 72B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	strb	r4, [r5, #157]	@ tmp660, pMp4DecParam_12(D)->FF_BUG_QPEL_FILED
	cmp	r3, #3	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L80	@,
.L57:
	ldrb	r3, [r5, #153]	@ zero_extendqisi2	@ D.33833, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	and	r0, r3, #1	@ D.33830, D.33833,
	strb	r3, [r5, #152]	@ D.33833, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	mov	r3, r0, asl #3	@ D.33830, D.33830,
.L59:
	ldrb	r1, [r5, #156]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2
	ldrb	r2, [r5, #155]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA
	and	r1, r1, #1	@ D.33830, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2,
	and	r2, r2, #1	@ D.33830, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA,
	orr	r2, r2, r1, asl #1	@ D.33830, D.33830, D.33830,
	orr	r3, r2, r3	@ D.33830, D.33830, D.33830
	orr	r3, r3, r0, asl #2	@ D.33832, D.33830, D.33830,
	str	r3, [r6, #76]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 76B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2340]	@ D.33832, pMp4DecParam_12(D)->dU
	str	r3, [r6, #80]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 80B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2344]	@ D.33832, pMp4DecParam_12(D)->dU
	str	r3, [r6, #84]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 84B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2348]	@ D.33832, pMp4DecParam_12(D)->dV
	str	r3, [r6, #88]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 88B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2352]	@ D.33832, pMp4DecParam_12(D)->dV
	str	r3, [r6, #92]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 92B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2356]	@ D.33832, pMp4DecParam_12(D)->Uo
	str	r3, [r6, #96]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 96B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2360]	@ D.33832, pMp4DecParam_12(D)->Vo
	str	r3, [r6, #100]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 100B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2364]	@ D.33832, pMp4DecParam_12(D)->Uco
	str	r3, [r6, #104]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 104B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2368]	@ D.33832, pMp4DecParam_12(D)->Vco
	str	r3, [r6, #108]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 108B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->IsShortHeader, pMp4DecParam_12(D)->IsShortHeader
	cmp	r3, #2	@ pMp4DecParam_12(D)->IsShortHeader,
	beq	.L81	@,
.L60:
	movw	r3, #1140	@ tmp754,
	mla	r8, r3, r8, r9	@ tmp755, tmp754, VdhId, tmp759
	ldr	r3, [r8, #44]	@ g_HwMem[VdhId_18(D)].MsgSlotAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr
	add	r3, r3, #256	@ D.33832, g_HwMem[VdhId_18(D)].MsgSlotAddr,
	str	r3, [r6, #252]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 252B]
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.33829,
.L46:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L77:
	mov	r3, #4	@ tmp464,
	str	r3, [r6]	@ tmp464, MEM[(volatile HI_S32 *)pReg_21]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r5, #4]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->GobMbNum, pMp4DecParam_12(D)->GobMbNum
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->VopQuant, pMp4DecParam_12(D)->VopQuant
	and	r4, r4, #15	@ D.33830, n,
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ D.33832, pMp4DecParam_12(D)->VopGobNum
	and	r2, r2, #127	@ D.33830, pMp4DecParam_12(D)->GobMbNum,
	and	r1, r1, #31	@ D.33830, pMp4DecParam_12(D)->VopQuant,
	add	r7, r5, #12288	@ tmp760, pMp4DecParam,
	mov	r2, r2, asl #5	@ D.33830, D.33830,
	sub	r3, r3, #1	@ D.33832, D.33832,
	orr	r2, r2, r1, asl #26	@ D.33830, D.33830, D.33830,
	and	r3, r3, #31	@ D.33830, D.33832,
	orr	r3, r2, r3	@ D.33832, D.33830, D.33830
	str	r3, [r6, #4]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 4B]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	and	r3, r3, #3	@ D.33830, pMp4DecParam_12(D)->PicCodingType,
	mov	r3, r3, asl #5	@ D.33830, D.33830,
	orr	r4, r3, r4, asl #22	@ D.33832, D.33830, D.33830,
	str	r4, [r6, #8]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 8B]
	bl	vfmw_dprint_nothing	@
	b	.L48	@
.L81:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicQuantType, pMp4DecParam_12(D)->PicQuantType
	cmp	r3, #0	@ pMp4DecParam_12(D)->PicQuantType,
	beq	.L60	@,
	add	fp, r5, #24	@ ivtmp.96, pMp4DecParam,
	add	r7, r6, #112	@ ivtmp.97, pReg,
	add	r3, r5, #32	@ D.33838, pMp4DecParam,
	str	r3, [sp, #4]	@ D.33838, %sfp
.L61:
	mov	r10, r7	@ ivtmp.88, ivtmp.97
	mov	r4, fp	@ ivtmp.83, ivtmp.96
	add	r3, fp, #16	@ D.33838, ivtmp.96,
	str	r3, [sp]	@ D.33838, %sfp
.L62:
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ D.33832, MEM[base: _327, offset: 32B]
	add	r4, r4, #8	@ ivtmp.83, ivtmp.83,
	ldrb	lr, [r4, #8]	@ zero_extendqisi2	@ D.33832, MEM[base: _327, offset: 16B]
	ldrb	r2, [r4, #-8]	@ zero_extendqisi2	@ D.33832, MEM[base: _327, offset: 0B]
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ D.33832, MEM[base: _327, offset: 48B]
	mov	r3, r3, asl #16	@ D.33832, D.33832,
	orr	r3, r3, lr, asl #8	@ D.33832, D.33832, D.33832,
	orr	r3, r3, r2	@ D.33832, D.33832, D.33832
	orr	r3, r3, ip, asl #24	@ D.33832, D.33832, D.33832,
	str	r3, [r10], #4	@ D.33832, MEM[(volatile HI_S32 *)pReg_389]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp]	@ D.33838, %sfp
	cmp	r3, r4	@ D.33838, ivtmp.83
	bne	.L62	@,
	ldr	r3, [sp, #4]	@ D.33838, %sfp
	add	fp, fp, #1	@ ivtmp.96, ivtmp.96,
	add	r7, r7, #8	@ ivtmp.97, ivtmp.97,
	cmp	fp, r3	@ ivtmp.96, D.33838
	bne	.L61	@,
	add	fp, r5, #88	@ ivtmp.73, pMp4DecParam,
	add	r7, r6, #176	@ ivtmp.74, pReg,
	add	r3, r5, #96	@ D.33838, pMp4DecParam,
	str	r3, [sp]	@ D.33838, %sfp
.L64:
	add	r10, fp, #16	@ D.33838, ivtmp.73,
	mov	r5, r7	@ ivtmp.65, ivtmp.74
	mov	r4, fp	@ ivtmp.60, ivtmp.73
.L65:
	ldrb	r0, [r4, #32]	@ zero_extendqisi2	@ D.33832, MEM[base: _304, offset: 32B]
	add	r4, r4, #8	@ ivtmp.60, ivtmp.60,
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ D.33832, MEM[base: _304, offset: 16B]
	ldrb	r2, [r4, #-8]	@ zero_extendqisi2	@ D.33832, MEM[base: _304, offset: 0B]
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ D.33832, MEM[base: _304, offset: 48B]
	mov	r0, r0, asl #16	@ D.33832, D.33832,
	orr	r3, r0, r3, asl #8	@ D.33832, D.33832, D.33832,
	orr	r3, r3, r2	@ D.33832, D.33832, D.33832
	orr	r3, r3, ip, asl #24	@ D.33832, D.33832, D.33832,
	str	r3, [r5], #4	@ D.33832, MEM[(volatile HI_S32 *)pReg_424]
	bl	vfmw_dprint_nothing	@
	cmp	r4, r10	@ ivtmp.60, D.33838
	bne	.L65	@,
	ldr	r3, [sp]	@ D.33838, %sfp
	add	fp, fp, #1	@ ivtmp.73, ivtmp.73,
	add	r7, r7, #8	@ ivtmp.74, ivtmp.74,
	cmp	fp, r3	@ ivtmp.73, D.33838
	bne	.L64	@,
	b	.L60	@
.L80:
	ldr	r2, [r7, #2332]	@ D.33830, pMp4DecParam_12(D)->sprite_warping_points
	cmp	r2, #1	@ D.33830,
	beq	.L82	@,
	bhi	.L57	@,
	ldrb	r3, [r5, #152]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	ldrb	r0, [r5, #153]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	and	r2, r3, #1	@ D.33830, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT,
	and	r0, r0, #1	@ D.33830, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND,
	mov	r3, r2, asl #3	@ D.33830, D.33830,
	b	.L59	@
.L79:
	ldr	r3, [r7, #2332]	@ pMp4DecParam_12(D)->sprite_warping_points, pMp4DecParam_12(D)->sprite_warping_points
	cmp	r3, #1	@ pMp4DecParam_12(D)->sprite_warping_points,
	bne	.L51	@,
	ldrb	r4, [r5, #154]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_DIVX500B413, pMp4DecParam_12(D)->FF_BUG_DIVX500B413
	cmp	r4, #1	@ pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	beq	.L83	@,
	ldr	r2, [r7, #2356]	@ pMp4DecParam_12(D)->Uo, pMp4DecParam_12(D)->Uo
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.33832, pMp4DecParam_12(D)->QuarterSample
	mov	r2, r2, asl r1	@ D.33832, pMp4DecParam_12(D)->Uo,
	ldr	r1, [r7, #2336]	@ D.33832, pMp4DecParam_12(D)->sprite_warping_accuracy
	cmp	r2, #0	@ D.33832,
	mov	r3, r3, asl r1	@ D.33832, pMp4DecParam_12(D)->sprite_warping_points,
	add	r3, r2, r3, asr #1	@ D.33832, D.33832, D.33832,
	suble	r3, r3, #1	@ D.33832, D.33832,
	mov	r3, r3, asr r1	@ Dat, D.33832,
	str	r3, [r6, #24]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 24B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2360]	@ pMp4DecParam_12(D)->Vo, pMp4DecParam_12(D)->Vo
	ldrb	r2, [r5, #11]	@ zero_extendqisi2	@ D.33832, pMp4DecParam_12(D)->QuarterSample
	ldr	r1, [r7, #2336]	@ D.33832, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r3, r3, asl r2	@ D.33832, pMp4DecParam_12(D)->Vo,
	mov	r2, #1	@ tmp650,
	mov	r2, r2, asl r1	@ D.33832, tmp650,
	cmp	r3, #0	@ D.33832,
	add	r3, r3, r2, asr #1	@ D.33832, D.33832, D.33832,
	suble	r3, r3, #1	@ D.33832, D.33832,
	mov	r3, r3, asr r1	@ Dat, D.33832,
	str	r3, [r6, #28]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 28B]
	bl	vfmw_dprint_nothing	@
	b	.L51	@
.L78:
	ldr	r3, [r5, #204]	@ pMp4DecParam_12(D)->Trb, pMp4DecParam_12(D)->Trb
	ldr	r2, [r5, #208]	@ pMp4DecParam_12(D)->Trd, pMp4DecParam_12(D)->Trd
	mov	r3, r3, asl #1	@ D.33830, pMp4DecParam_12(D)->Trb,
	uxth	r3, r3	@ D.33830, D.33830
	orr	r3, r3, r2, asl #17	@ D.33832, D.33830, pMp4DecParam_12(D)->Trd,
	str	r3, [r6, #12]	@ D.33832, MEM[(volatile HI_S32 *)pReg_21 + 12B]
	bl	vfmw_dprint_nothing	@
	b	.L48	@
.L66:
	mov	r4, r3	@ n, MbCnt
	b	.L43	@
.L82:
	ldrb	r0, [r5, #153]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	mov	r3, #8	@ D.33830,
	strb	r2, [r5, #152]	@ D.33830, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	and	r0, r0, #1	@ D.33830, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND,
	b	.L59	@
.L83:
	ldr	r3, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.33830, pMp4DecParam_12(D)->QuarterSample
	ldr	r0, [r7, #2356]	@, pMp4DecParam_12(D)->Uo
	rsb	r1, r1, r3	@ D.33830, D.33830, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r1, r4, asl r1	@, pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	str	r0, [r6, #24]	@ tmp613, MEM[(volatile HI_S32 *)pReg_21 + 24B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.33830, pMp4DecParam_12(D)->QuarterSample
	ldr	r0, [r7, #2360]	@, pMp4DecParam_12(D)->Vo
	rsb	r1, r1, r3	@ D.33830, D.33830, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r1, r4, asl r1	@, pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	str	r0, [r6, #28]	@ tmp625, MEM[(volatile HI_S32 *)pReg_21 + 28B]
	bl	vfmw_dprint_nothing	@
	b	.L51	@
.L76:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33829,
	b	.L46	@
.L85:
	.align	2
.L84:
	.word	g_HwMem
	.fnend
	.size	MP4HAL_V200R004_CfgDnMsg, .-MP4HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP4HAL_V200R004_WriteSlicMsg
	.type	MP4HAL_V200R004_WriteSlicMsg, %function
MP4HAL_V200R004_WriteSlicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L131	@ tmp304,
	movw	r3, #1140	@ tmp306,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mla	r1, r3, r1, ip	@ tmp307, tmp306, VdhId, tmp304
	add	lr, r0, #12288	@ tmp479, pMp4DecParam,
	str	r0, [sp, #20]	@ pMp4DecParam, %sfp
	add	r9, r0, #236	@ SliceInfo, pMp4DecParam,
	stmib	sp, {r2, lr}	@,,
	mov	r5, #0	@ tmp301,
	ldr	r8, [lr, #2284]	@ SliceNum, pMp4DecParam_13(D)->SlcNum
	str	r5, [sp, #28]	@ tmp301, D32
	ldr	r4, [r1, #44]	@ g_HwMem[VdhId_18(D)].MsgSlotAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr
	add	r4, r4, #256	@ SlcDnMsgPhyAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr,
	mov	r0, r4	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r7, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L127	@,
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	ldr	r3, [r3, #260]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num
	cmp	r3, #0	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num,
	bne	.L128	@,
.L89:
	cmp	r8, #0	@ SliceNum,
	ble	.L107	@,
	mov	fp, #0	@ i,
	add	r2, r4, r3, lsl #5	@ D.33878, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	r5, fp	@ i, i
	mov	r3, r3, asl #7	@ D.33887, AddSlice0Flag,
	str	r2, [sp, #16]	@ D.33878, %sfp
	str	r3, [sp, #12]	@ D.33887, %sfp
	b	.L106	@
.L92:
	add	r5, r5, #1	@ i, i,
	cmp	r8, r5	@ SliceNum, i
	ble	.L107	@,
.L106:
	mov	r6, r5, asl #5	@ tmp377, i,
	cmp	r5, #0	@ i,
	sub	r4, r6, r5, asl #2	@ D.33878, tmp377, i,
	add	r4, r9, r4	@ tmp478, SliceInfo, D.33878
	movgt	r2, #1	@ tmp380,
	movle	r2, #0	@ tmp380,
	ldr	r1, [r4, #24]	@ _118->mb_start_num, _118->mb_start_num
	ldr	r3, [r4, #-4]	@ _121->mb_start_num, _121->mb_start_num
	cmp	r1, r3	@ _118->mb_start_num, _121->mb_start_num
	movhi	r10, #0	@, tmp388
	andls	r10, r2, #1	@,, tmp388, tmp380
	cmp	r10, #0	@ tmp388,
	bne	.L92	@,
	ldr	fp, [r4, #16]	@ D.33878, _118->phy_address
	mov	r0, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ D.33878, _118->bit_offset
	add	r5, r5, #1	@ NextSliceId, i,
	and	r1, fp, #15	@ D.33878, D.33878,
	ldr	lr, [r4, #8]	@ _118->bit_len, _118->bit_len
	ldr	r3, [sp, #12]	@ D.33887, %sfp
	add	r1, ip, r1, lsl #3	@ D.33878, D.33878, D.33878,
	mov	ip, r10	@ tmp394, tmp388
	bfi	r0, r1, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.33878,,
	bfi	ip, lr, #0, #24	@ tmp394, _118->bit_len,,
	str	ip, [sp, #28]	@ tmp394,
	add	r6, r6, r3	@ D.33887, tmp377, D.33887
	strb	r0, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r1, [sp, #28]	@ D.33879, D32
	str	r1, [r7, r6]	@ D.33879, MEM[(volatile HI_S32 *)_142]
	bl	vfmw_dprint_nothing	@
	add	r1, r6, #4	@ D.33887, D.33887,
	bic	r2, fp, #15	@ bit_stream_address_0, D.33878,
	mov	r0, r10	@ tmp402, tmp388
	ldr	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	rsb	r2, r3, r2	@ D.33878, StreamBaseAddr, bit_stream_address_0
	bfi	r0, r2, #0, #24	@ tmp402, D.33878,,
	str	r0, [sp, #28]	@ tmp402,
	str	r0, [r7, r1]	@ tmp402, MEM[(volatile HI_S32 *)_152]
	bl	vfmw_dprint_nothing	@
	ldr	fp, [r4, #20]	@ D.33878, _118->phy_address
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ D.33878, _118->bit_offset
	mov	r0, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	ip, fp, #15	@ D.33878, D.33878,
	ldr	lr, [r4, #12]	@ _118->bit_len, _118->bit_len
	add	r2, r2, ip, lsl #3	@ D.33878, D.33878, D.33878,
	mov	ip, r10	@ tmp409, tmp388
	bfi	r0, r2, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.33878,,
	bfi	ip, lr, #0, #24	@ tmp409, _118->bit_len,,
	add	r2, r6, #8	@ D.33887, D.33887,
	str	ip, [sp, #28]	@ tmp409,
	strb	r0, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r0, [sp, #28]	@ D.33879, D32
	str	r0, [r7, r2]	@ D.33879, MEM[(volatile HI_S32 *)_172]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #20]	@ _118->phy_address, _118->phy_address
	cmp	r2, #0	@ _118->phy_address,
	bicne	r1, fp, #15	@ bit_stream_address_1, D.33878,
	moveq	r1, r2	@ D.33877, _118->phy_address
	ldrne	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	str	r10, [sp, #28]	@ tmp388, D32
	rsbne	r1, r3, r1	@ D.33877, StreamBaseAddr, bit_stream_address_1
	ldr	r2, [sp, #28]	@ tmp417,
	add	r3, r6, #12	@ D.33887, D.33887,
	bicne	r1, r1, #-16777216	@ D.33877, D.33877,
	bfi	r2, r1, #0, #24	@ tmp417, D.33877,,
	str	r2, [sp, #28]	@ tmp417,
	str	r2, [r7, r3]	@ tmp417, MEM[(volatile HI_S32 *)_183]
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ _118->vop_quant, _118->vop_quant
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ _118->vop_coding_type, _118->vop_coding_type
	mov	r0, #0	@ tmp556,
	and	r3, r3, #31	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, _118->vop_quant,
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ _118->vop_fcode_forward, _118->vop_fcode_forward
	bfi	r3, r1, #5, #2	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, _118->vop_coding_type,,
	add	r2, r6, #16	@ D.33887, D.33887,
	str	r0, [sp, #28]	@ tmp556, D32
	strb	r3, [sp, #28]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _118->intra_dc_vlc_thr, _118->intra_dc_vlc_thr
	ldrh	r1, [sp, #28]	@,
	ldrb	r0, [r4, #2]	@ zero_extendqisi2	@ _118->vop_fcode_backward, _118->vop_fcode_backward
	bfi	r1, r3, #7, #3	@ tmp436, _118->intra_dc_vlc_thr,,
	strh	r1, [sp, #28]	@ movhi	@ tmp436,
	mov	r3, r1, lsr #8	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, tmp436,
	bfi	r3, ip, #2, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, _118->vop_fcode_forward,,
	bfi	r3, r0, #5, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, _118->vop_fcode_backward,,
	strb	r3, [sp, #29]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward
	ldr	r3, [sp, #28]	@ D.33879, D32
	str	r3, [r7, r2]	@ D.33879, MEM[(volatile HI_S32 *)_205]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #24]	@ _118->mb_start_num, _118->mb_start_num
	add	r3, r6, #20	@ D.33887, D.33887,
	mov	r2, #0	@ tmp458,
	bfi	r2, r1, #0, #20	@ tmp458, _118->mb_start_num,,
	str	r2, [sp, #28]	@ tmp458,
	str	r2, [r7, r3]	@ tmp458, MEM[(volatile HI_S32 *)_215]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #8]	@ tmp479, %sfp
	ldr	r1, [r3, #2284]	@ SliceNum, pMp4DecParam_13(D)->SlcNum
	cmp	r1, r5	@ SliceNum, NextSliceId
	ble	.L94	@,
	ldr	ip, [r4, #24]	@ D.33878, _118->mb_start_num
	ldr	lr, [r4, #52]	@ D.33878, _293->mb_start_num
	cmp	lr, ip	@ D.33878, D.33878
	movls	r2, r4	@ ivtmp.119, tmp478
	movls	r3, r5	@ NextSliceId, NextSliceId
	bls	.L97	@,
	b	.L129	@
.L99:
	ldr	r0, [r2, #52]	@ D.33878, MEM[base: _224, offset: 52B]
	cmp	r0, ip	@ D.33878, D.33878
	bhi	.L95	@,
.L97:
	add	r3, r3, #1	@ NextSliceId, NextSliceId,
	add	r2, r2, #28	@ ivtmp.119, ivtmp.119,
	cmp	r1, r3	@ SliceNum, NextSliceId
	bgt	.L99	@,
	cmp	r1, r3	@ SliceNum, NextSliceId
	mov	r0, #0	@ slice_end_mbn,
	beq	.L130	@,
.L109:
	cmp	ip, lr	@ D.33878, D.33878
	bcs	.L102	@,
	b	.L100	@
.L104:
	ldr	r3, [r4, #52]	@ MEM[base: _221, offset: 52B], MEM[base: _221, offset: 52B]
	cmp	r3, ip	@ MEM[base: _221, offset: 52B], D.33878
	bhi	.L100	@,
.L102:
	add	r5, r5, #1	@ NextSliceId, NextSliceId,
	add	r4, r4, #28	@ ivtmp.112, ivtmp.112,
	cmp	r1, r5	@ SliceNum, NextSliceId
	bgt	.L104	@,
	ubfx	r0, r0, #0, #20	@ D.33885, slice_end_mbn,,
	mov	fp, #0	@ NextSlcParaAddr,
.L103:
	cmp	r1, r5	@ SliceNum, NextSliceId
	moveq	fp, #0	@ NextSlcParaAddr,
.L124:
	add	r1, r6, #24	@ D.33887, D.33887,
	mov	r3, #0	@ tmp467,
	bfi	r3, r0, #0, #20	@ tmp467, D.33885,,
	str	r3, [sp, #28]	@ tmp467,
	str	r3, [r7, r1]	@ tmp467, MEM[(volatile HI_S32 *)_230]
	add	r6, r6, #28	@ D.33887, D.33887,
	bl	vfmw_dprint_nothing	@
	sub	r5, r5, #1	@ i, NextSliceId,
	str	fp, [r7, r6]	@ NextSlcParaAddr, MEM[(volatile HI_S32 *)_238]
	add	r5, r5, #1	@ i, i,
	str	fp, [sp, #28]	@ D.33892, MEM[(struct MP4SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
	cmp	r8, r5	@ SliceNum, i
	bgt	.L106	@,
.L107:
	mov	r0, #0	@ D.33876,
.L120:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L100:
	ldr	r3, [sp, #16]	@ D.33878, %sfp
	ubfx	r0, r0, #0, #20	@ D.33885, slice_end_mbn,,
	add	fp, r3, r5, lsl #5	@ NextSlcParaAddr, D.33878, NextSliceId,
	b	.L103	@
.L129:
	mov	r0, lr	@ D.33878, D.33878
	mov	r3, r5	@ NextSliceId, NextSliceId
.L95:
	cmp	r1, r3	@ SliceNum, NextSliceId
	sub	r0, r0, #1	@ slice_end_mbn, D.33878,
	bne	.L109	@,
.L130:
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	ldr	ip, [r4, #24]	@ D.33878, _118->mb_start_num
	ldr	lr, [r4, #52]	@ D.33878, _343->mb_start_num
	ldrh	r2, [r3, #164]	@ D.33879, pMp4DecParam_13(D)->PicWidthInMb
	ldrh	r3, [r3, #166]	@ D.33879, pMp4DecParam_13(D)->PicHeightInMb
	mul	r0, r3, r2	@ D.33879, D.33879, D.33879
	sub	r0, r0, #1	@ slice_end_mbn, D.33879,
	b	.L109	@
.L128:
	ldr	r10, [sp, #20]	@ pMp4DecParam, %sfp
	ldr	r3, [sp, #28]	@ tmp314,
	ldr	r6, [r10, #252]	@ D.33878, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	bfi	r3, r5, #0, #24	@ tmp314, tmp301,,
	ldrb	r2, [r10, #242]	@ zero_extendqisi2	@ D.33878, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].bit_offset
	and	r1, r6, #15	@ D.33878, D.33878,
	str	r3, [sp, #28]	@ tmp314,
	mov	r3, r3, lsr #24	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, tmp314,
	add	r2, r2, r1, lsl #3	@ D.33878, D.33878, D.33878,
	bfi	r3, r2, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.33878,,
	strb	r3, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r3, [sp, #28]	@ D.33879, D32
	str	r3, [r7]	@ D.33879, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23]
	bl	vfmw_dprint_nothing	@
	bic	r3, r6, #15	@ bit_stream_address_0, D.33878,
	ldr	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	rsb	r3, r2, r3	@ D.33878, StreamBaseAddr, bit_stream_address_0
	mov	r2, r5	@ tmp320, tmp301
	bfi	r2, r3, #0, #24	@ tmp320, D.33878,,
	str	r2, [sp, #28]	@ tmp320,
	str	r2, [r7, #4]	@ tmp320, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 4B]
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r10, #256]	@ D.33878, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	ldrb	r3, [r10, #243]	@ zero_extendqisi2	@ D.33878, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].bit_offset
	mov	r2, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	r1, r6, #15	@ D.33878, D.33878,
	add	r3, r3, r1, lsl #3	@ D.33878, D.33878, D.33878,
	bfi	r2, r3, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.33878,,
	str	r5, [sp, #28]	@ tmp301,
	strb	r2, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r3, [sp, #28]	@ D.33879, D32
	str	r3, [r7, #8]	@ D.33879, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #256]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	cmp	r3, #0	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address,
	bicne	r3, r6, #15	@ bit_stream_address_1, D.33878,
	ldrne	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	str	r5, [sp, #28]	@ tmp301, D32
	mov	r5, #0	@ tmp332,
	rsbne	r3, r2, r3	@ D.33877, StreamBaseAddr, bit_stream_address_1
	ldr	r2, [sp, #28]	@ tmp331,
	bicne	r3, r3, #-16777216	@ D.33877, D.33877,
	bfi	r2, r3, #0, #24	@ tmp331, D.33877,,
	str	r2, [sp, #28]	@ tmp331,
	str	r2, [r7, #12]	@ tmp331, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r6, [sp, #20]	@ pMp4DecParam, %sfp
	str	r5, [sp, #28]	@ tmp332, D32
	ldrb	r3, [r6, #241]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant
	ldrb	r2, [r6, #240]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type
	and	r3, r3, #31	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant,
	ldrb	r1, [r6, #237]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward
	bfi	r3, r2, #5, #2	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type,,
	ldrb	r2, [r6, #239]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr
	strb	r3, [sp, #28]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type
	ldrh	r3, [sp, #28]	@,
	bfi	r3, r2, #7, #3	@ tmp349, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr,,
	ldrb	r2, [r6, #238]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward
	strh	r3, [sp, #28]	@ movhi	@ tmp349,
	mov	r3, r3, lsr #8	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, tmp349,
	bfi	r3, r1, #2, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward,,
	bfi	r3, r2, #5, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward,,
	strb	r3, [sp, #29]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward
	ldr	r3, [sp, #28]	@ D.33879, D32
	str	r3, [r7, #16]	@ D.33879, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 16B]
	bl	vfmw_dprint_nothing	@
	mov	r3, r5	@ tmp369, tmp332
	bfi	r3, r5, #0, #20	@ tmp369, tmp332,,
	str	r3, [sp, #28]	@ tmp369,
	str	r3, [r7, #20]	@ tmp369, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 20B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #260]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num
	sub	r3, r3, #1	@ D.33878, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num,
	bfi	r5, r3, #0, #20	@ tmp373, D.33878,,
	str	r5, [sp, #28]	@ tmp373,
	str	r5, [r7, #24]	@ tmp373, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 24B]
	bl	vfmw_dprint_nothing	@
	add	r3, r4, #32	@ next_slice_para_addr, SlcDnMsgPhyAddr,
	str	r3, [r7, #28]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 28B]
	str	r3, [sp, #28]	@ next_slice_para_addr, MEM[(struct MP4SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ AddSlice0Flag,
	b	.L89	@
.L94:
	movne	r0, #0	@ D.33885,
	movne	fp, r0	@ NextSlcParaAddr, D.33885
	bne	.L124	@,
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	mov	fp, #0	@ NextSlcParaAddr,
	ldrh	r0, [r3, #164]	@ D.33879, pMp4DecParam_13(D)->PicWidthInMb
	ldrh	r3, [r3, #166]	@ D.33879, pMp4DecParam_13(D)->PicHeightInMb
	mul	r0, r3, r0	@ D.33879, D.33879, D.33879
	sub	r0, r0, #1	@ D.33885, D.33879,
	ubfx	r0, r0, #0, #20	@ D.33885, D.33885,,
	b	.L103	@
.L127:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33876,
	b	.L120	@
.L132:
	.align	2
.L131:
	.word	g_HwMem
	.fnend
	.size	MP4HAL_V200R004_WriteSlicMsg, .-MP4HAL_V200R004_WriteSlicMsg
	.align	2
	.global	MP4HAL_V200R004_StartDec
	.type	MP4HAL_V200R004_StartDec, %function
MP4HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldrh	r3, [r0, #164]	@ pMp4DecParam_5(D)->PicWidthInMb, pMp4DecParam_5(D)->PicWidthInMb
	mov	r2, #0	@ tmp120,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	str	r2, [sp, #4]	@ tmp120, StreamBaseAddr
	cmp	r3, #512	@ pMp4DecParam_5(D)->PicWidthInMb,
	bhi	.L136	@,
	ldrh	r3, [r0, #166]	@ pMp4DecParam_5(D)->PicHeightInMb, pMp4DecParam_5(D)->PicHeightInMb
	cmp	r3, #512	@ pMp4DecParam_5(D)->PicHeightInMb,
	bhi	.L136	@,
	add	r2, sp, #4	@,,
	mov	r5, r1	@ VdhId, VdhId
	bl	MP4HAL_V200R004_CfgReg	@
	cmp	r0, #0	@,
	bne	.L136	@,
	mov	r1, r5	@, VdhId
	mov	r0, r4	@, pMp4DecParam
	bl	MP4HAL_V200R004_CfgDnMsg	@
	cmp	r0, #0	@,
	bne	.L136	@,
	mov	r1, r5	@, VdhId
	mov	r0, r4	@, pMp4DecParam
	ldr	r2, [sp, #4]	@, StreamBaseAddr
	bl	MP4HAL_V200R004_WriteSlicMsg	@
	cmp	r0, #0	@ ret
	bne	.L136	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L136:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33895,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	MP4HAL_V200R004_StartDec, .-MP4HAL_V200R004_StartDec
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
