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
	.file	"vdm_hal.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.o
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
	.global	VDMHAL_V200R004_GetHalMemSize
	.type	VDMHAL_V200R004_GetHalMemSize, %function
VDMHAL_V200R004_GetHalMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #22528	@,
	movt	r0, 7	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_GetHalMemSize, .-VDMHAL_V200R004_GetHalMemSize
	.align	2
	.global	VDMHAL_V200R004_OpenHAL
	.type	VDMHAL_V200R004_OpenHAL, %function
VDMHAL_V200R004_OpenHAL:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #22527	@ tmp186,
	movt	r3, 7	@ tmp186,
	cmp	r0, #0	@ MemBaseAddr,
	cmpne	r1, r3	@, Size, tmp186
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r1	@ Size, Size
	ble	.L5	@,
	cmp	r2, #0	@ VdhId,
	mov	r8, r2	@ VdhId, VdhId
	bgt	.L5	@,
	movw	r1, #1140	@ tmp191,
	ldr	r6, .L10	@ tmp314,
	mul	r4, r1, r2	@ tmp190, tmp191, VdhId
	mov	r9, r0	@ MemBaseAddr, MemBaseAddr
	add	r5, r6, r4	@ __p, tmp314, tmp190
	mov	r0, r5	@, __p
	bl	__memzero	@
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r6, r4]	@, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	movt	r0, 4116	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #8]	@, g_HwMem[VdhId_13(D)].pBpdRegVirAddr
	bl	vfmw_dprint_nothing	@
	add	r2, r9, #1020	@ D.39047, MemBaseAddr,
	add	r2, r2, #3	@ D.39047, D.39047,
	add	r3, r4, #24	@ D.39049, tmp190,
	bic	r2, r2, #1020	@ D.39047, D.39047,
	add	lr, r4, #588	@ D.39049, tmp190,
	bic	r2, r2, #3	@ D.39047, D.39047,
	add	r3, r6, r3	@ ivtmp.73, tmp314, D.39049
	add	lr, r6, lr	@ D.39051, tmp314, D.39049
	rsb	r1, r2, r9	@ D.39047, D.39047, MemBaseAddr
	mov	ip, r2	@ ivtmp.70, D.39047
	add	r1, r1, r7	@ D.39047, D.39047, Size
	mov	r0, #1024	@ tmp224,
	str	r2, [r5, #16]	@ D.39047, g_HwMem[VdhId_13(D)].HALMemBaseAddr
	str	r1, [r5, #20]	@ D.39047, g_HwMem[VdhId_13(D)].HALMemSize
	str	r0, [r5, #24]	@ tmp224, g_HwMem[VdhId_13(D)].VahbStride
.L6:
	str	ip, [r3, #4]!	@ ivtmp.70, MEM[base: _77, offset: 0B]
	cmp	r3, lr	@ ivtmp.73, D.39051
	add	ip, ip, #1024	@ ivtmp.70, ivtmp.70,
	bne	.L6	@,
	movw	r1, #1140	@ tmp232,
	add	r3, r2, #144384	@ PhyAddr, D.39047,
	mla	r6, r1, r8, r6	@ tmp233, tmp232, VdhId, tmp314
	add	r2, r3, #331776	@ PhyAddr, PhyAddr,
	add	r2, r2, #3072	@ PhyAddr, PhyAddr,
	add	r0, r3, #299008	@ PhyAddr, PhyAddr,
	rsb	r2, r9, r2	@ D.39047, MemBaseAddr, PhyAddr
	add	r1, r0, #3072	@ PhyAddr, PhyAddr,
	cmp	r7, r2	@ Size, D.39047
	add	r4, r3, #5120	@ PhyAddr, PhyAddr,
	add	r2, r3, #83968	@ PhyAddr, PhyAddr,
	add	lr, r3, #38912	@ PhyAddr, PhyAddr,
	add	ip, r3, #129024	@ PhyAddr, PhyAddr,
	mov	r7, #141	@ tmp236,
	str	r0, [r6, #1112]	@ PhyAddr, g_HwMem[VdhId_13(D)].IntensityConvTabAddr
	add	r0, r3, #196608	@ PhyAddr, PhyAddr,
	str	r3, [r6, #1076]	@ PhyAddr, g_HwMem[VdhId_13(D)].H264MnAddr
	movw	r3, #799	@ tmp288,
	str	r1, [r6, #1120]	@ PhyAddr, g_HwMem[VdhId_13(D)].DnrMbInfoAddr
	str	r1, [r6, #1116]	@ PhyAddr, g_HwMem[VdhId_13(D)].VpTabAddr
	str	r7, [r6, #1052]	@ tmp236, g_HwMem[VdhId_13(D)].ValidMsgSlotNum
	str	r4, [r6, #1080]	@ PhyAddr, g_HwMem[VdhId_13(D)].SedTopAddr
	str	lr, [r6, #1084]	@ PhyAddr, g_HwMem[VdhId_13(D)].PmvTopAddr
	str	ip, [r6, #1096]	@ PhyAddr, g_HwMem[VdhId_13(D)].DblkTopAddr
	str	r0, [r6, #1100]	@ PhyAddr, g_HwMem[VdhId_13(D)].PpfdBufAddr
	str	r2, [r6, #1088]	@ PhyAddr, g_HwMem[VdhId_13(D)].RcnTopAddr
	str	r2, [r6, #1092]	@ PhyAddr, g_HwMem[VdhId_13(D)].ItransTopAddr
	str	r3, [r6, #1104]	@ tmp288, g_HwMem[VdhId_13(D)].PpfdBufLen
	blt	.L5	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, __p
	bl	H264HAL_V200R004_InitHal	@
	adds	r0, r0, #0	@ D.39044,,
	movne	r0, #1	@ D.39044,
	rsb	r0, r0, #0	@ D.39045, D.39044
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L5:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39045,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	.align	2
.L10:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_OpenHAL, .-VDMHAL_V200R004_OpenHAL
	.align	2
	.global	VDMHAL_V200R004_CloseHAL
	.type	VDMHAL_V200R004_CloseHAL, %function
VDMHAL_V200R004_CloseHAL:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, .L16	@ tmp114,
	ldr	r3, [r3, #40]	@ D.39054, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.39054,
	beq	.L14	@,
	mov	r0, r4	@, VdhId
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.39054
.L14:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L17:
	.align	2
.L16:
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VDMHAL_V200R004_CloseHAL, .-VDMHAL_V200R004_CloseHAL
	.align	2
	.global	VDMHAL_V200R400_GetPmvSize
	.type	VDMHAL_V200R400_GetPmvSize, %function
VDMHAL_V200R400_GetPmvSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L22	@ tmp135,
	add	r0, r0, #15	@ D.39057, Width,
	add	r1, r1, #15	@ D.39057, Height,
	mov	r0, r0, asr #4	@ ImgWidthInMb, D.39057,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.39057,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r0, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	movle	r3, #64	@ ColMbSize,
	movgt	r3, #32	@ ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r3, #64	@ ColMbSize,
	mul	r0, r0, r3	@ D.39057, ImgWidthInMb, ColMbSize
	mul	r1, r1, r0	@ D.39057, ImgHeightInMb, D.39057
	add	r0, r1, #127	@ D.39057, D.39057,
	bic	r0, r0, #127	@, D.39057,
	bx	lr	@
.L23:
	.align	2
.L22:
	.word	g_not_direct_8x8_inference_flag
	.fnend
	.size	VDMHAL_V200R400_GetPmvSize, .-VDMHAL_V200R400_GetPmvSize
	.global	__aeabi_idiv
	.align	2
	.global	VDMHAL_V200R004_ArrangeMem
	.type	VDMHAL_V200R004_ArrangeMem, %function
VDMHAL_V200R004_ArrangeMem:
	.fnstart
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r10, r0, #0	@ MemAddr, MemAddr
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r6, [sp, #48]	@ PmvNum, PmvNum
	ldr	r9, [sp, #52]	@ FrameNum, FrameNum
	ldr	r8, [sp, #60]	@ ChanID, ChanID
	ldr	r7, [sp, #64]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L28	@,
	mov	fp, r1	@ MemSize, MemSize
	sub	r1, r2, #32	@ D.39091, Width,
	mov	r5, r3	@ Height, Height
	movw	r3, #8160	@ tmp206,
	cmp	r1, r3	@ D.39091, tmp206
	mov	r4, r2	@ Width, Width
	bhi	.L28	@,
	sub	r1, r5, #32	@ D.39091, Height,
	cmp	r1, r3	@ D.39091, tmp206
	bhi	.L28	@,
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L28	@,
	cmp	r6, #20	@ PmvNum,
	mov	r1, #416	@,
	mov	r0, r7	@, pVdmMemArrange
	movge	r6, #20	@ PmvNum,
	bl	__memzero	@
	add	r3, r5, #15	@ D.39088, Height,
	ldr	r1, .L60	@ tmp218,
	add	r2, r4, #15	@ D.39088, Width,
	mov	r3, r3, asr #4	@ ImgHeightInMb, D.39088,
	mov	r2, r2, asr #4	@ ImgWidthInMb, D.39088,
	ldrb	ip, [r1]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r2, #45	@ ImgWidthInMb,
	cmple	r3, #36	@, ImgHeightInMb,
	mov	r1, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	mov	r0, r2, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movle	r5, #64	@ ColMbSize,
	movgt	r5, #32	@ ColMbSize,
	cmp	ip, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r5, #64	@ ColMbSize,
	mul	r5, r2, r5	@ D.39088, ImgWidthInMb, ColMbSize
	mul	r5, r3, r5	@ D.39088, ImgHeightInMb, D.39088
	add	r5, r5, #127	@ D.39088, D.39088,
	bic	r5, r5, #127	@ PmvSlotLen, D.39088,
	mul	r3, r6, r5	@ PmvPoolSize, PmvNum, PmvSlotLen
	cmp	r3, fp	@ PmvPoolSize, MemSize
	bge	.L28	@,
	ldr	r2, [sp, #56]	@ tmp308, UserDec
	add	r3, r0, #255	@ D.39088, ImgWidthInPixAln,
	bic	r4, r3, #255	@ SlotWidth, D.39088,
	str	r6, [r7, #404]	@ PmvNum, pVdmMemArrange_24(D)->ValidPMVNum
	cmp	r2, #1	@ tmp308,
	mov	r2, r5, asr #1	@ D.39088, PmvSlotLen,
	str	r2, [r7, #400]	@ D.39088, pVdmMemArrange_24(D)->HafPmvOffset
	mov	r2, r4, asl #4	@ D.39088, SlotWidth,
	str	r2, [r7]	@ D.39088, pVdmMemArrange_24(D)->VahbStride
	beq	.L58	@,
	adds	r2, r1, #31	@ D.39088, ImgHeightInPixAln,
	addmi	r2, r1, #62	@, D.39088, ImgHeightInPixAln,
	mov	r2, r2, asr #5	@ D.39088, D.39088,
	mul	r2, r4, r2	@ D.39088, SlotWidth, D.39088
	mov	r6, r2, asl #7	@ tmp241, D.39088,
	sub	r6, r6, r2, asl #5	@ D.39088, tmp241, D.39088,
	mov	r6, r6, asr #1	@ ImgSlotLen, D.39088,
.L33:
	cmp	r8, #0	@ ChanID,
	blt	.L34	@,
	mov	r0, r8	@, ChanID
	str	r1, [sp, #4]	@ ImgHeightInPixAln, %sfp
	bl	VCTRL_GetChanWidth	@
	str	r0, [sp]	@ ChanWidth, %sfp
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanHeight	@
	ldr	ip, [sp]	@ ChanWidth, %sfp
	mov	r2, r0	@ ChanHeight,
	cmn	r0, #1	@ ChanHeight,
	cmnne	ip, #1	@, ChanWidth,
	beq	.L28	@,
	ldr	r3, [sp, #56]	@ tmp309, UserDec
	add	r0, ip, #15	@ D.39088, ChanWidth,
	bic	r0, r0, #15	@ ChanImgWidthInPixAln, D.39088,
	add	r2, r2, #15	@ D.39088, ChanHeight,
	cmp	r3, #1	@ tmp309,
	add	r0, r0, #255	@ D.39088, ChanImgWidthInPixAln,
	bic	r2, r2, #15	@ ChanImgHeightInPixAln, D.39088,
	bic	r0, r0, #255	@ ChanSlotWidth, D.39088,
	ldr	r1, [sp, #4]	@ ImgHeightInPixAln, %sfp
	beq	.L59	@,
	adds	ip, r2, #31	@ D.39088, ChanImgHeightInPixAln,
	addmi	r2, r2, #62	@, D.39088, ChanImgHeightInPixAln,
	movpl	r2, ip	@, D.39088, D.39088
	mov	r2, r2, asr #5	@ D.39088, D.39088,
	mul	r0, r0, r2	@ D.39088, ChanSlotWidth, D.39088
	mov	r2, r0, asl #7	@ tmp271, D.39088,
	sub	r2, r2, r0, asl #5	@ D.39088, tmp271, D.39088,
	mov	r2, r2, asr #1	@ ChanSlotLen, D.39088,
.L36:
	cmp	r6, r2	@ ImgSlotLen, ChanSlotLen
	bgt	.L28	@,
.L34:
	adds	r2, r1, #31	@ D.39088, ImgHeightInPixAln,
	addmi	r2, r1, #62	@, D.39088, ImgHeightInPixAln,
	cmp	r9, #0	@ FrameNum,
	mov	r2, r2, asr #5	@ D.39088, D.39088,
	mul	r3, r4, r2	@ D.39088, SlotWidth, D.39088
	mov	r3, r3, asl #5	@ D.39088, D.39088,
	str	r3, [r7, #264]	@ D.39088, pVdmMemArrange_24(D)->ChromOffset
	beq	.L37	@,
	add	r3, r10, #1020	@ D.39088, MemAddr,
	cmp	r9, #64	@ FrameNum,
	add	r3, r3, #3	@ D.39088, D.39088,
	mov	r1, r6	@, ImgSlotLen
	bic	r4, r3, #1020	@ D.39088, D.39088,
	movge	r9, #64	@ D.39088,
	bic	r4, r4, #3	@ D.39088, D.39088,
	rsb	r10, r10, r4	@ Offset, MemAddr, D.39088
	rsb	r0, r10, fp	@, Offset, MemSize
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ D.39088,
	movlt	r1, r9	@ D.39088, D.39088
	movge	r1, r0	@ D.39088,
	cmp	r1, #0	@ D.39088,
	str	r1, [r7, #276]	@ D.39088, pVdmMemArrange_24(D)->ValidFrameNum
	beq	.L28	@,
	addgt	ip, r7, #4	@ ivtmp.105, pVdmMemArrange,
	movgt	r3, r4	@ ivtmp.102, D.39088
	movgt	r2, #0	@ i,
	ble	.L42	@,
.L41:
	add	r2, r2, #1	@ i, i,
	str	r3, [ip, #4]!	@ ivtmp.102, MEM[base: _137, offset: 0B]
	cmp	r2, r1	@ i, D.39088
	add	r3, r3, r6	@ ivtmp.102, ivtmp.102, ImgSlotLen
	bne	.L41	@,
.L42:
	cmp	r8, #0	@ ChanID,
	mla	r1, r1, r6, r10	@ Offset, D.39088, ImgSlotLen, Offset
	blt	.L40	@,
	ldr	r3, .L60+4	@ tmp294,
	ldr	lr, [r3, r8, asl #2]	@ D.39094, s_pstVfmwChan
	cmp	lr, #0	@ D.39094,
	beq	.L40	@,
	ldr	r4, [r7, #404]	@ D.39088, pVdmMemArrange_24(D)->ValidPMVNum
	add	lr, lr, #217088	@ tmp305, D.39094,
	ldr	r3, [lr, #416]	@ _107->stChanMem_pmv.Length, _107->stChanMem_pmv.Length
	mul	r2, r5, r4	@ D.39088, PmvSlotLen, D.39088
	cmp	r2, r3	@ D.39088, _107->stChanMem_pmv.Length
	bgt	.L28	@,
	cmp	r4, #0	@ D.39088,
	ble	.L40	@,
	mov	r2, #0	@ ivtmp.90,
	add	r0, r7, #276	@ ivtmp.92, pVdmMemArrange,
	mov	ip, r2	@ i, ivtmp.90
.L43:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [lr, #412]	@ _107->stChanMem_pmv.PhyAddr, _107->stChanMem_pmv.PhyAddr
	cmp	ip, r4	@ i, D.39088
	add	r3, r3, r2	@ D.39088, _107->stChanMem_pmv.PhyAddr, ivtmp.90
	add	r2, r2, r5	@ ivtmp.90, ivtmp.90, PmvSlotLen
	str	r3, [r0, #4]!	@ D.39088, MEM[base: _1, offset: 0B]
	bne	.L43	@,
.L40:
	mov	r3, #1024	@ tmp293,
	mov	r0, #0	@ D.39089,
	str	r1, [r7, #4]	@ Offset, pVdmMemArrange_24(D)->TotalMemUsed
	str	r6, [r7, #408]	@ ImgSlotLen, pVdmMemArrange_24(D)->ImgSlotLen
	str	r3, [r7, #412]	@ tmp293, pVdmMemArrange_24(D)->u32StrideByte
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L37:
	str	r9, [r7, #276]	@ FrameNum, pVdmMemArrange_24(D)->ValidFrameNum
.L28:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39089,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L58:
	mul	r6, r1, r4	@ D.39088, ImgHeightInPixAln, SlotWidth
	add	r6, r6, r6, lsl #1	@ ImgSlotLen, D.39088, D.39088,
	b	.L33	@
.L59:
	mul	r2, r2, r0	@ D.39088, ChanImgHeightInPixAln, ChanSlotWidth
	add	r2, r2, r2, lsl #1	@ ChanSlotLen, D.39088, D.39088,
	b	.L36	@
.L61:
	.align	2
.L60:
	.word	g_not_direct_8x8_inference_flag
	.word	s_pstVfmwChan
	.fnend
	.size	VDMHAL_V200R004_ArrangeMem, .-VDMHAL_V200R004_ArrangeMem
	.align	2
	.global	VDMHAL_V200R004_ResetVdm
	.type	VDMHAL_V200R004_ResetVdm, %function
VDMHAL_V200R004_ResetVdm:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	ble	.L76	@,
	b	vfmw_dprint_nothing	@
.L76:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ VdhId, VdhId
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L64	@,
	movw	r2, #1140	@ tmp137,
	ldr	r6, .L78	@ tmp158,
	mul	r2, r2, r5	@ tmp136, tmp137, VdhId
	ldr	r7, .L78+4	@ tmp159,
	ldr	r1, [r7]	@ D.39105, g_pstRegCrg
	ldr	r3, [r6, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r8, [r3, #36]	@ tmp, *_15
	ldr	r4, [r1, #120]	@ u32TmpValue, _17->PERI_CRG30.u32
	orr	r4, r4, #64	@ u32TmpValue, u32TmpValue,
	str	r4, [r1, #120]	@ u32TmpValue, _17->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _17->PERI_CRG93.u32
	tst	r3, #4	@ u32TmpValue_93,
	bne	.L65	@,
	mov	r3, #1	@ i,
	movw	ip, #10000	@ tmp160,
	b	.L67	@
.L77:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, tmp160
	beq	.L68	@,
.L67:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _17->PERI_CRG93.u32
	tst	r2, #4	@ u32TmpValue_93,
	beq	.L77	@,
	movw	r2, #10000	@ tmp151,
	cmp	r3, r2	@ i, tmp151
	beq	.L68	@,
.L65:
	movw	r2, #1140	@ tmp155,
	bfc	r4, #6, #1	@ u32TmpValue,,
	mul	r3, r2, r5	@ tmp154, tmp155, VdhId
	str	r4, [r1, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	ldr	r3, [r6, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r8, [r3, #36]	@ tmp, *_36
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L68:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7]	@ D.39105, g_pstRegCrg
	b	.L65	@
.L64:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L79:
	.align	2
.L78:
	.word	g_HwMem
	.word	g_pstRegCrg
	.fnend
	.size	VDMHAL_V200R004_ResetVdm, .-VDMHAL_V200R004_ResetVdm
	.align	2
	.global	VDMHAL_V200R004_GlbReset
	.type	VDMHAL_V200R004_GlbReset, %function
VDMHAL_V200R004_GlbReset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L88	@,
	ldr	r5, .L90	@ tmp138,
	ldr	r1, [r5]	@ D.39120, g_pstRegCrg
	ldr	r4, [r1, #120]	@ u32TmpValue, _10->PERI_CRG30.u32
	orr	r4, r4, #16	@ u32TmpValue, u32TmpValue,
	str	r4, [r1, #120]	@ u32TmpValue, _10->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _10->PERI_CRG93.u32
	tst	r3, #1	@ u32TmpValue_93,
	bne	.L82	@,
	mov	r3, #1	@ i,
	movw	r0, #10000	@ tmp139,
	b	.L84	@
.L89:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp139
	beq	.L85	@,
.L84:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _10->PERI_CRG93.u32
	tst	r2, #1	@ u32TmpValue_93,
	beq	.L89	@,
	movw	r2, #8999	@ tmp136,
	cmp	r3, r2	@ i, tmp136
	bgt	.L85	@,
.L82:
	bfc	r4, #4, #1	@ u32TmpValue,,
	str	r4, [r1, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L85:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5]	@ D.39120, g_pstRegCrg
	b	.L82	@
.L88:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L91:
	.align	2
.L90:
	.word	g_pstRegCrg
	.fnend
	.size	VDMHAL_V200R004_GlbReset, .-VDMHAL_V200R004_GlbReset
	.align	2
	.global	VDMHAL_V200R004_ClearIntState
	.type	VDMHAL_V200R004_ClearIntState, %function
VDMHAL_V200R004_ClearIntState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	bgt	.L102	@,
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L104	@ tmp116,
	ldr	r3, [r5, r4]	@ D.39125, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.39125,
	beq	.L103	@,
.L94:
	mvn	r2, #0	@ tmp125,
	str	r2, [r3, #32]	@ tmp125, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L102:
	b	vfmw_dprint_nothing	@
.L103:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	movne	r3, r0	@ D.39125, p32
	strne	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L94	@
.L95:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L105:
	.align	2
.L104:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_ClearIntState, .-VDMHAL_V200R004_ClearIntState
	.align	2
	.global	VDMHAL_V200R004_MaskInt
	.type	VDMHAL_V200R004_MaskInt, %function
VDMHAL_V200R004_MaskInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	bgt	.L116	@,
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L118	@ tmp116,
	ldr	r3, [r5, r4]	@ D.39130, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.39130,
	beq	.L117	@,
.L108:
	mvn	r2, #0	@ tmp125,
	str	r2, [r3, #36]	@ tmp125, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L116:
	b	vfmw_dprint_nothing	@
.L117:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	movne	r3, r0	@ D.39130, p32
	strne	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L108	@
.L109:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L119:
	.align	2
.L118:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_MaskInt, .-VDMHAL_V200R004_MaskInt
	.align	2
	.global	VDMHAL_V200R004_EnableInt
	.type	VDMHAL_V200R004_EnableInt, %function
VDMHAL_V200R004_EnableInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	bgt	.L130	@,
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L132	@ tmp116,
	ldr	r3, [r5, r4]	@ D.39135, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.39135,
	beq	.L131	@,
.L122:
	mvn	r2, #1	@ tmp125,
	str	r2, [r3, #36]	@ tmp125, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L130:
	b	vfmw_dprint_nothing	@
.L131:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	movne	r3, r0	@ D.39135, p32
	strne	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L122	@
.L123:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L133:
	.align	2
.L132:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_EnableInt, .-VDMHAL_V200R004_EnableInt
	.align	2
	.global	VDMHAL_V200R004_CheckReg
	.type	VDMHAL_V200R004_CheckReg, %function
VDMHAL_V200R004_CheckReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r7, r1, #0	@ VdhId, VdhId
	bgt	.L147	@,
	movw	r5, #1140	@ tmp124,
	ldr	r6, .L149	@ tmp139,
	mul	r5, r5, r7	@ tmp123, tmp124, VdhId
	mov	r4, r0	@ reg_id, reg_id
	ldr	r3, [r6, r5]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	cmp	r3, #0	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr,
	beq	.L148	@,
.L137:
	sub	r0, r4, #1	@ tmp132, reg_id,
	cmp	r0, #3	@ tmp132,
	ldrls	pc, [pc, r0, asl #2]	@ tmp132
	b	.L139	@
.L141:
	.word	.L140
	.word	.L142
	.word	.L145
	.word	.L144
.L145:
	mov	r2, #36	@ reg_type,
.L143:
	movw	r3, #1140	@ tmp135,
	mul	r1, r3, r7	@ tmp134, tmp135, VdhId
	ldr	r3, [r6, r1]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r0, [r3, r2]	@ D.39142, *_18
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L142:
	mov	r2, #32	@ reg_type,
	b	.L143	@
.L144:
	mov	r2, #40	@ reg_type,
	b	.L143	@
.L140:
	mov	r2, #28	@ reg_type,
	b	.L143	@
.L139:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39142,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L148:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ p32,
	beq	.L139	@,
	str	r8, [r6, r5]	@ p32, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	b	.L137	@
.L147:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39142,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L150:
	.align	2
.L149:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_CheckReg, .-VDMHAL_V200R004_CheckReg
	.align	2
	.global	VDMHAL_V200R004_PrepareDec
	.type	VDMHAL_V200R004_PrepareDec, %function
VDMHAL_V200R004_PrepareDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pDecParam
	beq	.L161	@,
	cmp	r2, #0	@ VdhId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r2	@ VdhId, VdhId
	mov	r4, r0	@ VidStd, VidStd
	mov	r6, r1	@ pDecParam, pDecParam
	bgt	.L162	@,
	ldr	r7, .L164	@ tmp122,
	sub	r1, r0, #6	@, VidStd,
	clz	r1, r1	@,
	ldr	r0, [r7]	@, s_RegPhyBaseAddr
	mov	r1, r1, lsr #5	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	cmp	r4, #2	@ VidStd,
	beq	.L154	@,
	cmp	r4, #3	@ VidStd,
	beq	.L155	@,
	cmp	r4, #0	@ VidStd,
	beq	.L163	@,
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L155:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
.L154:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP4HAL_V200R004_StartDec	@
.L163:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
.L162:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L161:
	mvn	r0, #0	@,
	bx	lr	@
.L165:
	.align	2
.L164:
	.word	s_RegPhyBaseAddr
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
	.align	2
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #1140	@ tmp124,
	ldr	r2, .L172	@ tmp122,
	mul	r0, r3, r0	@ tmp123, tmp124, VdhId
	ldr	r3, [r2, r0]	@ D.39156, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.39156,
	beq	.L171	@,
	ldr	r0, [r3, #28]	@ Data32, *_9
	ubfx	r0, r0, #17, #1	@ D.39155, Data32,,
	bx	lr	@
.L171:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39155,
	ldmfd	sp!, {r4, pc}	@
.L173:
	.align	2
.L172:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #1140	@ tmp121,
	ldr	r2, .L179	@ tmp119,
	mul	r0, r3, r0	@ tmp120, tmp121, VdhId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r2, r0]	@ D.39163, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	cmp	r4, #0	@ D.39163,
	beq	.L178	@,
	ldr	r0, [r4, #40]	@ Data32, *_9
	subs	r0, r0, #1	@ D.39162, Data32,
	movne	r0, #1	@ D.39162,
	ldmfd	sp!, {r4, pc}	@
.L178:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.39162, D.39163
	ldmfd	sp!, {r4, pc}	@
.L180:
	.align	2
.L179:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_IsVdmRun, .-VDMHAL_V200R004_IsVdmRun
	.align	2
	.global	VDMHAL_V200R004_UpdateHardwareInfo
	.type	VDMHAL_V200R004_UpdateHardwareInfo, %function
VDMHAL_V200R004_UpdateHardwareInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r7, r0, #0	@ VdhId, VdhId
	bgt	.L182	@,
	movw	r4, #1140	@ tmp217,
	ldr	r3, .L204	@ tmp211,
	mul	r4, r4, r7	@ tmp216, tmp217, VdhId
	ldr	r8, .L204+4	@ tmp335,
	ldr	r6, [r3]	@ g_DSPState, g_DSPState
	sub	r6, r6, #1	@ D.39185, g_DSPState,
	clz	r6, r6	@ D.39185, D.39185
	ldr	r5, [r8, r4]	@ D.39186, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r6, r6, lsr #5	@ D.39185, D.39185,
	cmp	r5, #0	@ D.39186,
	beq	.L202	@,
.L184:
	mov	r2, #180	@ tmp226,
	ldr	r1, [r5, #12]	@ D.39187, *_25
	mul	r2, r2, r7	@ tmp225, tmp226, VdhId
	ldr	r4, .L204+8	@ tmp334,
	cmp	r6, #1	@ D.39185,
	add	r3, r4, r2	@ tmp227, tmp334, tmp225
	str	r1, [r4, r2]	@ D.39187, g_BackUp[VdhId_12(D)].BasicCfg1
	ldr	r2, [r5, #28]	@ D.39187, *_30
	str	r2, [r3, #4]	@ D.39187, g_BackUp[VdhId_12(D)].VdmState
	beq	.L203	@,
	add	r2, r5, #4096	@ D.39188, D.39187,
	movw	r1, #4116	@ tmp271,
	cmp	r6, #0	@ D.39185,
	ldr	r2, [r2]	@ D.39187, *_54
	str	r2, [r3, #16]	@ D.39187, g_BackUp[VdhId_12(D)].SedSta
	ldr	r2, [r5, r1]	@ D.39187, *_59
	str	r2, [r3, #20]	@ D.39187, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r2, [r5, #208]	@ D.39187, *_66
	str	r2, [r3, #8]	@ D.39187, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r2, [r5, #212]	@ D.39187, *_71
	str	r2, [r3, #12]	@ D.39187, g_BackUp[VdhId_12(D)].SwitchRounding
	bne	.L188	@,
	ldr	r2, [r5, #176]	@ D.39187, *_76
	str	r2, [r3, #24]	@ D.39187, g_BackUp[VdhId_12(D)].DecCyclePerPic
	ldr	r2, [r5, #180]	@ D.39187, *_81
	str	r2, [r3, #28]	@ D.39187, g_BackUp[VdhId_12(D)].RdBdwidthPerPic
	ldr	r2, [r5, #184]	@ D.39187, *_86
	str	r2, [r3, #32]	@ D.39187, g_BackUp[VdhId_12(D)].WrBdWidthPerPic
	ldr	r2, [r5, #188]	@ D.39187, *_91
	str	r2, [r3, #36]	@ D.39187, g_BackUp[VdhId_12(D)].RdReqPerPic
	ldr	r2, [r5, #192]	@ D.39187, *_96
	str	r2, [r3, #40]	@ D.39187, g_BackUp[VdhId_12(D)].WrReqPerPic
.L188:
	mov	ip, #180	@ tmp312,
	rsb	r2, r4, #32768	@ D.39191, tmp334,
	mul	ip, ip, r7	@ D.39192, tmp312, VdhId
	add	r2, r2, #208	@ D.39191, D.39191,
	add	r3, ip, #48	@ D.39192, D.39192,
	add	r1, ip, #176	@ D.39192, D.39192,
	rsb	ip, ip, r5	@ D.39191, D.39192, D.39187
	add	r3, r4, r3	@ ivtmp.156, tmp334, D.39192
	add	r1, r4, r1	@ D.39191, tmp334, D.39192
	add	ip, r2, ip	@ D.39191, D.39191, D.39191
.L190:
	ldr	r2, [ip, r3]	@ D.39187, *_145
	ldr	lr, .L204+8	@ tmp319,
	str	r2, [r3, #4]!	@ D.39187, MEM[base: _144, offset: 0B]
	cmp	r3, r1	@ ivtmp.156, D.39191
	bne	.L190	@,
	cmp	r6, #0	@ D.39185,
	moveq	r2, #180	@ tmp324,
	movweq	r3, #33152	@ tmp321,
	mlaeq	lr, r2, r7, lr	@ tmp325, tmp324, VdhId, tmp319
	ldreq	r2, [r5, r3]	@ D.39187, *_109
	movweq	r3, #33156	@ tmp327,
	movne	r6, #0	@ D.39185,
	streq	r2, [lr, #48]	@ D.39187, g_BackUp[VdhId_12(D)].LumaSumLow
	ldreq	r3, [r5, r3]	@ D.39187, *_114
	streq	r3, [lr, #44]	@ D.39187, g_BackUp[VdhId_12(D)].LumaSumHigh
.L185:
	mov	r0, r6	@, D.39185
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L203:
	movw	r3, #1140	@ tmp234,
	ubfx	r5, r2, #0, #17	@ DecSliceNum, D.39187,,
	mla	r3, r3, r7, r8	@ tmp235, tmp234, VdhId, tmp335
	ldr	r0, [r3, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L182	@,
	sub	r3, r5, #1	@ D.39189, DecSliceNum,
	movw	r1, #1140	@ tmp254,
	cmp	r3, #127	@ D.39189,
	mov	r2, #180	@ tmp242,
	subls	r3, r5, #-1073741823	@ D.39189, DecSliceNum,
	movhi	r3, #0	@ D.39189,
	movhi	ip, #8	@ D.39192,
	movls	r3, r3, asl #4	@ D.39189, D.39189,
	mla	r2, r2, r7, r4	@ tmp243, tmp242, VdhId, tmp334
	ldr	lr, [r0, r3]	@ *_42, *_42
	addls	ip, r3, #8	@ D.39192, D.39189,
	mul	r3, r1, r7	@ tmp253, tmp254, VdhId
	str	lr, [r2, #16]	@ *_42, g_BackUp[VdhId_12(D)].SedSta
	ldr	r1, [r0, ip]	@ *_49, *_49
	ldr	r5, [r8, r3]	@ D.39187, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	str	r1, [r2, #20]	@ *_49, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r3, [r5, #208]	@ D.39187, *_124
	str	r3, [r2, #8]	@ D.39187, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r3, [r5, #212]	@ D.39187, *_129
	str	r3, [r2, #12]	@ D.39187, g_BackUp[VdhId_12(D)].SwitchRounding
	b	.L188	@
.L202:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	movne	r5, r0	@ D.39186, p32
	strne	r0, [r8, r4]	@ p32, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	bne	.L184	@
.L182:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ D.39185,
	b	.L185	@
.L205:
	.align	2
.L204:
	.word	g_DSPState
	.word	g_HwMem
	.word	g_BackUp
	.fnend
	.size	VDMHAL_V200R004_UpdateHardwareInfo, .-VDMHAL_V200R004_UpdateHardwareInfo
	.align	2
	.global	VDMHAL_V200R004_ReadMsgSlot
	.type	VDMHAL_V200R004_ReadMsgSlot, %function
VDMHAL_V200R004_ReadMsgSlot:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #512	@ upmsg_size,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movls	r4, #0	@ tmp124,
	movhi	r4, #1	@ tmp124,
	cmp	r1, #0	@ pSrc,
	orreq	r4, r4, #1	@,, tmp125, tmp124
	cmp	r0, #0	@ pDst,
	orreq	r4, r4, #1	@,, tmp131, tmp125
	cmp	r4, #0	@ tmp131,
	bne	.L210	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.39198, tmp131
	ldmfd	sp!, {r4, pc}	@
.L210:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39198,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_ReadMsgSlot, .-VDMHAL_V200R004_ReadMsgSlot
	.align	2
	.global	VDMHAL_V200R004_WriteMsgSlot
	.type	VDMHAL_V200R004_WriteMsgSlot, %function
VDMHAL_V200R004_WriteMsgSlot:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pSrc,
	cmpne	r0, #0	@, pDst,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r4, #1	@ tmp126,
	movne	r4, #0	@ tmp126,
	beq	.L212	@,
	sub	r3, r2, #1	@ D.39209, dnmsg_size,
	cmp	r3, #255	@ D.39209,
	bhi	.L212	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.39207, tmp126
	ldmfd	sp!, {r4, pc}	@
.L212:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39207,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMHAL_V200R004_WriteMsgSlot, .-VDMHAL_V200R004_WriteMsgSlot
	.align	2
	.global	VDMHAL_V200R004_MakeRpMsg
	.type	VDMHAL_V200R004_MakeRpMsg, %function
VDMHAL_V200R004_MakeRpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpMsg, .-VDMHAL_V200R004_MakeRpMsg
	.global	__aeabi_idivmod
	.align	2
	.global	VDMHAL_V200R004_CfgRpMsg
	.type	VDMHAL_V200R004_CfgRpMsg, %function
VDMHAL_V200R004_CfgRpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0	@ pRepairParam, pRepairParam
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r0, [r1, #36]	@, pHwMem_14(D)->MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r10, r0, #0	@ pMsgBase,
	beq	.L220	@,
	ldr	r3, [r7, #552]	@ pRepairParam_19(D)->ValidGroupNum, pRepairParam_19(D)->ValidGroupNum
	sub	r3, r3, #1	@ D.39233, pRepairParam_19(D)->ValidGroupNum,
	cmp	r3, #127	@ D.39233,
	bhi	.L220	@,
	ldr	lr, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	mov	r0, #0	@ tmp308,
	ldr	r3, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb,
	ldr	r4, [r7, #16]	@ D.39232, pRepairParam_19(D)->RefImageAddr
	mov	r1, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	mov	lr, lr, asl #4	@ pic_height, pRepairParam_19(D)->ImageHeight,
	adds	r2, lr, #31	@ D.39232, pic_height,
	mov	r3, r3, asl #4	@ pic_width, pRepairParam_19(D)->ImageWidth,
	addmi	r2, lr, #62	@, D.39232, pic_height,
	add	r3, r3, #255	@ D.39232, pic_width,
	bic	r3, r3, #255	@ SlotWidth, D.39232,
	str	r4, [r10]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17]
	mov	r2, r2, asr #5	@ D.39232, D.39232,
	ldr	lr, [r7, #16]	@ pRepairParam_19(D)->RefImageAddr, pRepairParam_19(D)->RefImageAddr
	mov	r4, r3, asl #4	@ Stride1D, SlotWidth,
	mul	r3, r3, r2	@ D.39232, SlotWidth, D.39232
	mov	r3, r3, asl #5	@ ChromaOffset, D.39232,
	add	r2, r3, lr	@ D.39232, ChromaOffset, pRepairParam_19(D)->RefImageAddr
	str	r2, [r10, #4]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 4B]
	ldr	r2, [r7, #4]	@ D.39232, pRepairParam_19(D)->ImageAddr
	str	r2, [r10, #8]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 8B]
	ldr	r2, [r7, #4]	@ pRepairParam_19(D)->ImageAddr, pRepairParam_19(D)->ImageAddr
	add	r3, r3, r2	@ D.39232, ChromaOffset, pRepairParam_19(D)->ImageAddr
	str	r3, [r10, #12]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 12B]
	str	r4, [r10, #16]	@ Stride1D, MEM[(volatile HI_S32 *)pMsgBase_17 + 16B]
	str	r0, [r10, #20]	@ tmp308, MEM[(volatile HI_S32 *)pMsgBase_17 + 20B]
	ldr	r2, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	sub	r2, r2, #1	@ tmp312, pRepairParam_19(D)->ImageWidth,
	sub	r3, r3, #1	@ tmp317, pRepairParam_19(D)->ImageHeight,
	bfi	ip, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, tmp312,,
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, tmp317,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	strh	r1, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #20]	@ D.39232, D32
	str	r3, [r10, #24]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 24B]
	ldr	r5, [r7, #568]	@ D.39232, pRepairParam_19(D)->FullRepair
	cmp	r5, r0	@ D.39232,
	bne	.L237	@,
	ldr	r0, [r7, #552]	@ D.39232, pRepairParam_19(D)->ValidGroupNum
	cmp	r0, #0	@ D.39232,
	ble	.L238	@,
	ldrsh	fp, [r7, #40]	@ pRepairParam_19(D)->MbGroup[0].StartMbn, pRepairParam_19(D)->MbGroup[0].StartMbn
	mov	r8, r5	@ front_EndMb, i
	ldrsh	r2, [r7, #42]	@ D.39232, pRepairParam_19(D)->MbGroup[0].EndMbn
	add	r3, fp, #7	@ tmp323, pRepairParam_19(D)->MbGroup[0].StartMbn,
	cmp	fp, #0	@ pRepairParam_19(D)->MbGroup[0].StartMbn,
	str	r5, [sp]	@ i, %sfp
	movlt	fp, r3	@ pRepairParam_19(D)->MbGroup[0].StartMbn, tmp323
	adds	r3, r2, #7	@ D.39232, D.39232,
	addmi	r3, r2, #14	@, D.39232, D.39232,
	bic	fp, fp, #7	@ start_Mb, pRepairParam_19(D)->MbGroup[0].StartMbn,
	bic	r3, r3, #7	@ cur_EndMb, D.39232,
.L223:
	cmp	r3, r8	@ cur_EndMb, front_EndMb
	movgt	r3, #0	@ tmp361,
	movle	r3, #1	@ tmp361,
	cmp	r5, #0	@ i,
	moveq	r3, #0	@ tmp361,
	cmp	r3, #0	@ tmp361,
	beq	.L226	@,
	ldr	r0, [r7, #552]	@ D.39232, pRepairParam_19(D)->ValidGroupNum
	mov	r2, r5	@ i, i
	add	r5, r5, #1	@ i, i,
	cmp	r0, r5	@ D.39232, i
	ble	.L244	@,
.L235:
	add	r3, r2, #2	@ D.39232, i,
	cmp	r3, #127	@ D.39232,
	bgt	.L244	@,
	add	r3, r7, r5, lsl #2	@ D.39241, pRepairParam, i,
	ldrsh	fp, [r3, #40]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B], MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B]
	ldrsh	r1, [r3, #42]	@ D.39232, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 42B]
	cmp	fp, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	add	r3, fp, #7	@ tmp337, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	movlt	fp, r3	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B], tmp337
	adds	r3, r1, #7	@ D.39232, D.39232,
	addmi	r3, r1, #14	@, D.39232, D.39232,
	cmp	r5, #0	@ i,
	bic	fp, fp, #7	@ start_Mb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	bic	r3, r3, #7	@ cur_EndMb, D.39232,
	ble	.L223	@,
	add	r2, r7, r2, lsl #2	@ tmp348, pRepairParam, i,
	ldrsh	r2, [r2, #42]	@ D.39232, pRepairParam_19(D)->MbGroup[i_177].EndMbn
	adds	r8, r2, #7	@ D.39232, D.39232,
	addmi	r8, r2, #14	@, D.39232, D.39232,
	bic	r8, r8, #7	@ front_EndMb, D.39232,
	b	.L223	@
.L237:
	cmp	r5, #1	@ D.39232,
	str	r0, [sp]	@ tmp308, %sfp
	beq	.L234	@,
.L222:
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	sub	r3, r3, #1	@ tmp440, actual_repairTime,
	uxth	r3, r3	@ D.39235, tmp440
.L236:
	ldr	r2, [r7, #560]	@ pRepairParam_19(D)->Compress_en, pRepairParam_19(D)->Compress_en
	mov	ip, #0	@ tmp458,
	ldr	r1, [r7, #564]	@ pRepairParam_19(D)->Pic_type, pRepairParam_19(D)->Pic_type
	mov	r0, ip	@ D.39231, tmp458
	and	r2, r2, #1	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, pRepairParam_19(D)->Compress_en,
	str	ip, [sp, #20]	@ tmp458, D32
	and	r1, r1, #3	@ D.39244, pRepairParam_19(D)->Pic_type,
	strh	r3, [sp, #20]	@ movhi	@ D.39235, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].total_grp_num_minus1
	bfi	r2, r1, #4, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, D.39244,,
	mov	r3, r2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode
	bfi	r3, r1, #6, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, D.39244,,
	strb	r3, [sp, #22]	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode
	ldr	r3, [sp, #20]	@ D.39232, D32
	str	r3, [r10, #28]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 28B]
.L219:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L226:
	add	r1, r7, r5, lsl #2	@ ivtmp.176, pRepairParam, i,
	b	.L228	@
.L229:
	ldrsh	ip, [r1, #42]	@ D.39232, MEM[base: _208, offset: 42B]
	ldrsh	r3, [r1, #44]	@ MEM[base: _208, offset: 44B], MEM[base: _208, offset: 44B]
	adds	r2, ip, #7	@ D.39232, D.39232,
	add	lr, r3, #7	@ tmp393, MEM[base: _208, offset: 44B],
	addmi	r2, ip, #14	@, D.39232, D.39232,
	cmp	r3, #0	@ MEM[base: _208, offset: 44B],
	bic	r2, r2, #7	@ D.39232, D.39232,
	movlt	r3, lr	@ MEM[base: _208, offset: 44B], tmp393
	bic	r3, r3, #7	@ D.39232, MEM[base: _208, offset: 44B],
	cmp	r2, r3	@ D.39232, D.39232
	bgt	.L231	@,
	cmp	r5, #1	@ i,
	bmi	.L239	@,
	ldrsh	ip, [r1, #38]	@ D.39232, MEM[base: _208, offset: 38B]
	adds	r3, ip, #7	@ D.39232, D.39232,
	addmi	r3, ip, #14	@, D.39232, D.39232,
	bic	r3, r3, #7	@ D.39232, D.39232,
	cmp	r2, r3	@ D.39232, D.39232
	bgt	.L239	@,
.L231:
	add	r1, r1, #4	@ ivtmp.176, ivtmp.176,
	mov	r5, r4	@ i, i
.L228:
	add	r4, r5, #1	@ i, i,
	cmp	r4, #127	@ i,
	movle	r3, #1	@ tmp367,
	movgt	r3, #0	@ tmp367,
	cmp	r0, r4	@ D.39232, i
	movle	r3, #0	@ tmp367,
	cmp	r5, #0	@ i,
	andgt	r3, r3, #1	@ tmp374, tmp367,
	movle	r3, #0	@ tmp374,
	cmp	r3, #0	@ tmp374,
	bne	.L229	@,
	add	r3, r7, r5, lsl #2	@ tmp377, pRepairParam, i,
	ldrsh	r3, [r3, #42]	@ D.39232, pRepairParam_19(D)->MbGroup[i_224].EndMbn
	adds	r2, r3, #7	@ D.39232, D.39232,
	addmi	r2, r3, #14	@, D.39232, D.39232,
	bic	r9, r2, #7	@ end_Mb, D.39232,
.L230:
	ldr	r3, [r7, #24]	@ D.39232, pRepairParam_19(D)->ImageWidth
	ldr	r1, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	ldr	r2, [sp]	@ actual_repairTime, %sfp
	mul	r1, r1, r3	@ D.39232, pRepairParam_19(D)->ImageHeight, D.39232
	add	r6, r2, #1	@ actual_repairTime, actual_repairTime,
	cmp	r1, r9	@ D.39232, end_Mb
	suble	r9, r1, #1	@ end_Mb, D.39232,
	cmp	r6, #252	@ actual_repairTime,
	bgt	.L245	@,
	mov	r1, r3	@, D.39232
	mov	r0, fp	@, start_Mb
	str	r3, [sp, #12]	@ D.39232, %sfp
	bl	__aeabi_idivmod	@
	mov	r3, #0	@ tmp509,
	mov	r2, #0	@ tmp512,
	mov	lr, r3	@ movhi	@ tmp474, tmp509
	mov	ip, r2, lsr #16	@ tmp476, tmp512,
	mov	r0, fp	@, start_Mb
	mov	fp, ip	@ tmp479, tmp476
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	bfi	lr, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,,,
	str	r6, [sp]	@ actual_repairTime, %sfp
	mov	r6, r2	@ movhi	@ tmp477, tmp513
	strh	lr, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	mov	r3, r3, asl #3	@ D.39239, actual_repairTime,
	str	r3, [sp, #4]	@ D.39239, %sfp
	ldr	r3, [sp, #12]	@ D.39232, %sfp
	str	ip, [sp, #8]	@ tmp476, %sfp
	mov	r1, r3	@, D.39232
	bl	__aeabi_idiv	@
	ldmib	sp, {r3, ip}	@,,
	bfi	ip, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby,,,
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	ldr	r1, [sp, #20]	@ D.39232, D32
	add	r3, r3, #32	@ D.39239, D.39239,
	mov	r0, r9	@, end_Mb
	str	r1, [r10, r3]	@ D.39232, MEM[(volatile HI_S32 *)_115]
	ldr	ip, [r7, #24]	@ D.39232, pRepairParam_19(D)->ImageWidth
	mov	r1, ip	@, D.39232
	str	ip, [sp, #8]	@ D.39232, %sfp
	bl	__aeabi_idivmod	@
	mov	r0, r9	@, end_Mb
	mov	r3, r6	@ movhi	@ tmp477, tmp477
	ldr	ip, [sp, #8]	@ D.39232, %sfp
	bfi	r3, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,,,
	strh	r3, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	mov	r1, ip	@, D.39232
	bl	__aeabi_idiv	@
	mov	r2, r5	@ i, i
	mov	r5, r4	@ i, i
	ldr	r3, [sp, #4]	@ D.39239, %sfp
	bfi	fp, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby,,,
	strh	fp, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	add	r9, r3, #36	@ D.39239, D.39239,
	ldr	r3, [sp, #20]	@ D.39232, D32
	str	r3, [r10, r9]	@ D.39232, MEM[(volatile HI_S32 *)_130]
	ldr	r0, [r7, #552]	@ D.39232, pRepairParam_19(D)->ValidGroupNum
	cmp	r0, r5	@ D.39232, i
	bgt	.L235	@,
.L244:
	ldr	r5, [r7, #568]	@ D.39232, pRepairParam_19(D)->FullRepair
	cmp	r5, #1	@ D.39232,
	bne	.L222	@,
.L234:
	mov	r1, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,
	mov	r3, #0	@ tmp442,
	mov	r2, r1	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, tmp442,,
	bfi	r2, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, tmp442,,
	strh	r1, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	strh	r2, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	mov	r1, #1	@ tmp441,
	ldr	r2, [sp, #20]	@ D.39232, D32
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,
	str	r1, [r7, #552]	@ tmp441, pRepairParam_19(D)->ValidGroupNum
	mov	r0, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	str	r2, [r10, #32]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 32B]
	ldr	r1, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	ldr	r2, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	sub	r1, r1, #1	@ tmp450, pRepairParam_19(D)->ImageWidth,
	sub	r2, r2, #1	@ tmp455, pRepairParam_19(D)->ImageHeight,
	bfi	ip, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, tmp450,,
	bfi	r0, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, tmp455,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	strh	r0, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r2, [sp, #20]	@ D.39232, D32
	str	r2, [r10, #36]	@ D.39232, MEM[(volatile HI_S32 *)pMsgBase_17 + 36B]
	b	.L236	@
.L239:
	mov	r9, r2	@ end_Mb, D.39232
	b	.L230	@
.L245:
	mov	r3, #1	@ tmp406,
	str	r3, [r7, #568]	@ tmp406, pRepairParam_19(D)->FullRepair
	b	.L234	@
.L220:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39231,
	b	.L219	@
.L238:
	str	r5, [sp]	@ D.39232, %sfp
	b	.L222	@
	.fnend
	.size	VDMHAL_V200R004_CfgRpMsg, .-VDMHAL_V200R004_CfgRpMsg
	.align	2
	.global	VDMHAL_V200R004_MakeRpReg
	.type	VDMHAL_V200R004_MakeRpReg, %function
VDMHAL_V200R004_MakeRpReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	VDMHAL_V200R004_MakeRpReg, .-VDMHAL_V200R004_MakeRpReg
	.align	2
	.global	VDMHAL_V200R004_CfgRpReg
	.type	VDMHAL_V200R004_CfgRpReg, %function
VDMHAL_V200R004_CfgRpReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	subs	r4, r3, #0	@ VdhId, VdhId
	.pad #12
	sub	sp, sp, #12	@,,
	bgt	.L251	@,
	ldr	r3, [r1]	@ pHwMem_8(D)->pVdmRegVirAddr, pHwMem_8(D)->pVdmRegVirAddr
	cmp	r3, #0	@ pHwMem_8(D)->pVdmRegVirAddr,
	beq	.L256	@,
.L250:
	movw	r3, #1140	@ tmp166,
	ldr	r2, .L257	@ tmp164,
	mul	r3, r3, r4	@ tmp165, tmp166, VdhId
	ldr	ip, [r1, #36]	@ pHwMem_8(D)->MsgSlotAddr, pHwMem_8(D)->MsgSlotAddr
	mov	r4, #7	@ tmp175,
	movw	lr, #49667	@ tmp181,
	bic	ip, ip, #15	@ D.39253, pHwMem_8(D)->MsgSlotAddr,
	movt	lr, 8192	@ tmp181,
	movw	r1, #3075	@ tmp187,
	mov	r0, #0	@ D.39251,
	movt	r1, 48	@ tmp187,
	ldr	r5, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	ip, [r5, #16]	@ D.39253, *_21
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r4, [ip, #36]	@ tmp175, *_27
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	lr, [ip, #12]	@ tmp181, *_33
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp187, *_39
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp187, *_44
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp187, *_49
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp187, *_54
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp187, *_59
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp187, *_64
	ldr	r3, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp187, *_69
.L249:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L256:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ pHwMem, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldrne	r1, [sp, #4]	@ pHwMem, %sfp
	strne	r0, [r1]	@ p32, pHwMem_8(D)->pVdmRegVirAddr
	bne	.L250	@
.L251:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39251,
	b	.L249	@
.L258:
	.align	2
.L257:
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_CfgRpReg, .-VDMHAL_V200R004_CfgRpReg
	.align	2
	.global	VDMHAL_V200R004_MakeDecReport
	.type	VDMHAL_V200R004_MakeDecReport, %function
VDMHAL_V200R004_MakeDecReport:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r1, #0	@ pDecReport, pDecReport
	beq	.L262	@,
	movw	r3, #1140	@ tmp163,
	ldr	r8, .L292	@ tmp242,
	mul	r3, r3, r2	@ tmp162, tmp163, VdhId
	mov	r4, r2	@ VdhId, VdhId
	add	r9, r8, r3	@ tmp164, tmp242, tmp162
	ldr	r3, [r8, r3]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr,
	beq	.L262	@,
	ldr	r3, .L292+4	@ tmp166,
	mov	r1, #528	@,
	mov	r7, r0	@ VidStd, VidStd
	mov	r0, r5	@, pDecReport
	ldr	r6, [r3]	@ D.39282, g_DSPState
	bl	__memzero	@
	ldr	r1, .L292+8	@ tmp243,
	mov	r3, #180	@ tmp175,
	ldr	r2, [r9, #24]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride
	mla	r3, r3, r4, r1	@ tmp176, tmp175, VdhId, tmp243
	str	r2, [r5, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride, pDecReport_13(D)->ImgStride
	ldr	r3, [r3, #4]	@ D.39275, g_BackUp[VdhId_12(D)].VdmState
	mov	r3, r3, lsr #17	@ D.39275, D.39275,
	and	r2, r3, #3	@ D.39275, D.39275,
	cmp	r2, #1	@ D.39275,
	moveq	r3, #0	@ D.39275,
	beq	.L263	@,
	eor	r3, r3, #1	@ tmp182, D.39275,
	and	r3, r3, #1	@ tmp184, tmp182,
	cmp	r7, #3	@ VidStd,
	orrne	r3, r3, #1	@,, D.39275, tmp184
.L263:
	mov	r2, #180	@ tmp189,
	str	r3, [r5]	@ D.39275, pDecReport_13(D)->RetType
	mla	r2, r2, r4, r1	@ tmp190, tmp189, VdhId, tmp243
	cmp	r7, #0	@ VidStd,
	cmpne	r7, #15	@, VidStd,
	ldr	r3, [r2, #4]	@ g_BackUp[VdhId_12(D)].VdmState, g_BackUp[VdhId_12(D)].VdmState
	ubfx	r3, r3, #0, #17	@ D.39275, g_BackUp[VdhId_12(D)].VdmState,,
	str	r3, [r5, #8]	@ D.39275, pDecReport_13(D)->DecSliceNum
	beq	.L290	@,
.L264:
	cmp	r3, #128	@ D.39275,
	movhi	r3, #0	@ tmp222,
	strhi	r3, [r5, #8]	@ tmp222, pDecReport_13(D)->DecSliceNum
	movw	r3, #1140	@ tmp225,
	mla	r8, r3, r4, r8	@ tmp226, tmp225, VdhId, tmp242
	ldr	r0, [r8, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ pMsgBase,
	beq	.L262	@,
	ldr	r3, .L292+12	@ tmp233,
	ldr	r2, [r5, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	add	r4, r3, r4, lsl #11	@ D.39279, tmp233, VdhId,
	mov	r2, r2, asl #2	@, pDecReport_13(D)->DecSliceNum,
	mov	r0, r4	@, D.39279
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	r0, [r5, #8]	@ D.39275, pDecReport_13(D)->DecSliceNum
	cmp	r0, #0	@ D.39275,
	movne	r2, r4	@ ivtmp.193, D.39279
	movne	r3, r5	@ ivtmp.196, pDecReport
	movne	ip, #0	@ i,
	beq	.L271	@,
.L270:
	ldr	r1, [r2, #4]	@ MEM[base: _48, offset: 4B], MEM[base: _48, offset: 4B]
	add	ip, ip, #1	@ i, i,
	cmp	ip, r0	@ i, D.39275
	add	r2, r2, #16	@ ivtmp.193, ivtmp.193,
	add	r3, r3, #4	@ ivtmp.196, ivtmp.196,
	strh	r1, [r3, #8]	@ movhi	@ MEM[base: _48, offset: 4B], MEM[base: _49, offset: 12B]
	ldr	lr, [r2, #-8]	@ MEM[base: _48, offset: 8B], MEM[base: _48, offset: 8B]
	strh	lr, [r3, #10]	@ movhi	@ MEM[base: _48, offset: 8B], MEM[base: _49, offset: 14B]
	bne	.L270	@,
.L271:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.39272
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ i_cnt,
	bl	vfmw_dprint_nothing	@
.L272:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	add	r4, r4, #4	@ i_cnt, i_cnt,
	mov	r3, r3, asl #2	@ D.39275, pDecReport_13(D)->DecSliceNum,
	sub	r3, r3, #3	@ D.39275, D.39275,
	cmp	r3, r4	@ D.39275, i_cnt
	bhi	.L272	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39272,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L290:
	cmp	r6, #1	@ D.39282,
	beq	.L291	@,
	ldr	r1, .L292+16	@ tmp212,
	ldrb	r1, [r1]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L264	@,
	ldrb	r2, [r2, #19]	@ zero_extendqisi2	@ D.39275, g_BackUp[VdhId_12(D)].SedSta
	and	r2, r2, #3	@ D.39275, D.39275,
	cmp	r2, #2	@ D.39275,
	bne	.L264	@,
.L266:
	mov	r3, #0	@ tmp209,
	mov	r2, #1	@ tmp207,
	strh	r3, [r5, #12]	@ movhi	@ tmp209, pDecReport_13(D)->SliceMbRange
	mov	r0, r3	@ D.39272, tmp209
	strh	r3, [r5, #14]	@ movhi	@ tmp209, pDecReport_13(D)->SliceMbRange
	str	r2, [r5, #8]	@ tmp207, pDecReport_13(D)->DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L291:
	ldr	r2, [r2, #16]	@ g_BackUp[VdhId_12(D)].SedSta, g_BackUp[VdhId_12(D)].SedSta
	ubfx	r2, r2, #21, #2	@ D.39275, g_BackUp[VdhId_12(D)].SedSta,,
	cmp	r2, #2	@ D.39275,
	bne	.L264	@,
	b	.L266	@
.L262:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39272,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L293:
	.align	2
.L292:
	.word	g_HwMem
	.word	g_DSPState
	.word	g_BackUp
	.word	g_UpMsg
	.word	g_not_allow_H264FullPictureRepair_flag
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareRepair
	.type	VDMHAL_V200R004_PrepareRepair, %function
VDMHAL_V200R004_PrepareRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r3, #0	@ VdhId, VdhId
	.pad #8
	sub	sp, sp, #8	@,,
	bgt	.L298	@,
	movw	r5, #1140	@ tmp123,
	ldr	r7, .L309	@ tmp145,
	mul	r5, r5, r6	@ tmp122, tmp123, VdhId
	mov	r8, r0	@ VidStd, VidStd
	mov	r4, r2	@ RepairTime, RepairTime
	ldr	r3, [r7, r5]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L307	@,
.L297:
	cmp	r4, #0	@ RepairTime,
	beq	.L308	@,
	cmp	r4, #1	@ RepairTime,
	beq	.L298	@,
	mov	r0, #0	@ D.39285,
.L296:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L308:
	ldr	r5, .L309+4	@ tmp131,
	movw	r3, #1144	@ tmp133,
	mla	r5, r3, r6, r5	@ tmp134, tmp133, VdhId, tmp131
	ldr	r3, [r5, #552]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum
	cmp	r3, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum,
	ble	.L298	@,
	movw	r3, #1140	@ tmp138,
	mov	r2, r1	@, pDecParam
	mla	r7, r3, r6, r7	@ pHwMem, tmp138, VdhId, tmp145
	mov	r0, r8	@, VidStd
	mov	r3, r6	@, VdhId
	mov	r1, r7	@, pHwMem
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r2, r6	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, r5	@, tmp134
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, r4	@ D.39285, RepairTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L307:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ pDecParam, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r7, r5]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	ldrne	r1, [sp, #4]	@ pDecParam, %sfp
	bne	.L297	@
.L298:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39285,
	b	.L296	@
.L310:
	.align	2
.L309:
	.word	g_HwMem
	.word	g_RepairParam
	.fnend
	.size	VDMHAL_V200R004_PrepareRepair, .-VDMHAL_V200R004_PrepareRepair
	.align	2
	.global	VDMHAL_V200R004_StartHwRepair
	.type	VDMHAL_V200R004_StartHwRepair, %function
VDMHAL_V200R004_StartHwRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #1140	@ tmp130,
	mul	r4, r4, r0	@ tmp129, tmp130, VdhId
	ldr	r5, .L313	@ tmp128,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	ldr	r6, [r3, #8]	@ dat, *_6
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L313+4	@ tmp135,
	orr	r6, r6, #67108864	@ dat, dat,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@,
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r6, [r3, #8]	@ dat, *_18
#APP
@ 1608 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	bl	arm_heavy_mb	@
	ldr	r2, [r5, r4]	@ D.39290, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	mov	r3, #0	@ tmp147,
	mov	r1, #1	@ tmp152,
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_22]
	ldr	r2, [r5, r4]	@ D.39290, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r1, [r2]	@ tmp152, MEM[(volatile HI_S32 *)_24]
	ldr	r2, [r5, r4]	@ D.39290, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_26]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L314:
	.align	2
.L313:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	VDMHAL_V200R004_StartHwRepair, .-VDMHAL_V200R004_StartHwRepair
	.align	2
	.global	VDMHAL_V200R004_StartHwDecode
	.type	VDMHAL_V200R004_StartHwDecode, %function
VDMHAL_V200R004_StartHwDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ VdhId, VdhId
	bne	.L320	@,
	ldr	r3, .L323	@ tmp116,
	mov	r1, #3	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	bl	arm_heavy_mb	@
	cmp	r4, #0	@ VdhId,
	bgt	.L322	@,
.L319:
	movw	r3, #1140	@ tmp121,
	ldr	r2, .L323+4	@ tmp119,
	mul	r0, r3, r4	@ tmp120, tmp121, VdhId
	mov	r3, #0	@ tmp123,
	mov	ip, #1	@ tmp128,
	ldr	r1, [r2, r0]	@ D.39296, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [r1]	@ tmp123, MEM[(volatile HI_S32 *)_12]
	ldr	r1, [r2, r0]	@ D.39296, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	ip, [r1]	@ tmp128, MEM[(volatile HI_S32 *)_14]
	ldr	r2, [r2, r0]	@ D.39296, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [r2]	@ tmp123, MEM[(volatile HI_S32 *)_16]
	ldmfd	sp!, {r4, pc}	@
.L320:
	bl	vfmw_dprint_nothing	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	bl	arm_heavy_mb	@
	cmp	r4, #0	@ VdhId,
	ble	.L319	@,
.L322:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L324:
	.align	2
.L323:
	.word	s_RegPhyBaseAddr
	.word	g_HwMem
	.fnend
	.size	VDMHAL_V200R004_StartHwDecode, .-VDMHAL_V200R004_StartHwDecode
	.align	2
	.global	VDMHAL_V200R004_GetCharacter
	.type	VDMHAL_V200R004_GetCharacter, %function
VDMHAL_V200R004_GetCharacter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L326	@ tmp110,
	mov	r0, #11	@ tmp111,
	ldr	r3, .L326+4	@ tmp112,
	mov	r2, #4	@ tmp113,
	str	r0, [r1]	@ tmp111, g_VdmCharacter
	str	r2, [r3]	@ tmp113, g_eVdmVersion
	bx	lr	@
.L327:
	.align	2
.L326:
	.word	g_VdmCharacter
	.word	g_eVdmVersion
	.fnend
	.size	VDMHAL_V200R004_GetCharacter, .-VDMHAL_V200R004_GetCharacter
	.align	2
	.global	VDMHAL_V200R004_WriteBigTitle1DYuv
	.type	VDMHAL_V200R004_WriteBigTitle1DYuv, %function
VDMHAL_V200R004_WriteBigTitle1DYuv:
	.fnstart
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ubfx	ip, r3, #29, #2	@ PicStructure, Height,,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	ip, #1	@ PicStructure,
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r7, #0	@ tmp297,
	str	r7, [sp, #48]	@ tmp297, MemRecord_y
	str	r7, [sp, #52]	@ tmp297, MemRecord_y
	str	r7, [sp, #56]	@ tmp297, MemRecord_y
	str	r7, [sp, #60]	@ tmp297, MemRecord_y
	str	r7, [sp, #64]	@ tmp297, MemRecord_ul
	str	r7, [sp, #68]	@ tmp297, MemRecord_ul
	str	r7, [sp, #72]	@ tmp297, MemRecord_ul
	str	r7, [sp, #76]	@ tmp297, MemRecord_ul
	beq	.L329	@,
	cmp	ip, #2	@ PicStructure,
	moveq	r7, #1	@ PicStructure,
	movne	r7, #2	@ PicStructure,
.L329:
	cmp	r0, #0	@ fpYuv,
	beq	.L328	@,
	mov	r8, r3	@ Height, Height
	mov	r3, #0	@ tmp309,
	str	r0, [sp, #20]	@ fpYuv, %sfp
	mov	r4, r2	@ Width, Width
	str	r3, [sp]	@ tmp309,
	mov	r5, r1	@ Yaddress, Yaddress
	mov	r2, #4194304	@,
	mov	r1, r3	@, tmp309
	ldr	r0, .L431	@,
	add	r3, sp, #48	@ tmp511,,
	bl	MEM_AllocMemBlock	@
	subs	r1, r0, #0	@ D.39419,
	bne	.L427	@,
	str	r1, [sp]	@ D.39419,
	mov	r2, #4194304	@,
	add	r3, sp, #64	@ tmp512,,
	ldr	r0, .L431+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@ D.39419
	bne	.L428	@,
	add	r4, r4, #15	@ D.39418, Width,
	ldr	r3, [sp, #68]	@ ul, MemRecord_ul.VirAddr
	bic	r4, r4, #15	@ ImgWidthInPixAln, D.39418,
	ldr	r2, [sp, #52]	@ YUV, MemRecord_y.VirAddr
	add	r9, r4, #255	@ D.39419, ImgWidthInPixAln,
	add	r8, r8, #15	@ D.39418, Height,
	bic	r9, r9, #255	@ D.39419, D.39419,
	str	r3, [sp, #28]	@ ul, %sfp
	add	r3, r3, #2097152	@ vl, ul,
	str	r3, [sp, #32]	@ vl, %sfp
	mov	r3, r9, asl #4	@ Stride, D.39419,
	str	r2, [sp, #24]	@ YUV, %sfp
	bic	r8, r8, #15	@ ImgHeightInPixAln, D.39418,
	str	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r3	@ Stride, Stride
	cmp	r2, #0	@ Stride,
	add	r3, r3, #15	@ tmp321, Stride,
	movge	r3, r2	@ Stride, Stride
	adds	r6, r8, #31	@ D.39419, ImgHeightInPixAln,
	addmi	r6, r8, #62	@, D.39419, ImgHeightInPixAln,
	mov	r3, r3, asr #4	@ D.39419, Stride,
	cmp	r7, #0	@ PicStructure,
	cmpne	r7, #3	@, PicStructure,
	mov	r6, r6, asr #5	@ D.39419, D.39419,
	mla	r6, r6, r3, r5	@ Caddress, D.39419, D.39419, Yaddress
	bne	.L335	@,
	cmp	r8, #0	@ ImgHeightInPixAln,
	mov	r3, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r3, [sp, #36]	@ chrom_width, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #16]	@ chrom_height, %sfp
	beq	.L336	@,
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	r10, r0	@ i, D.39419
	str	r6, [sp, #40]	@ Caddress, %sfp
	mov	r9, r3	@ ivtmp.250, ivtmp.250
.L337:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L340	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.39418, i,
	and	r7, r10, #15	@ D.39418, i,
	mov	fp, r9	@ ivtmp.247, ivtmp.250
	mov	r6, #0	@ j,
	mul	r2, r3, r2	@ D.39418, Stride, D.39418
	add	r7, r2, r7, lsl #8	@ D.39420, D.39418, D.39418,
.L339:
	mov	r1, r6, lsr #8	@ D.39418, j,
	cmp	fp, #0	@ ivtmp.247,
	mov	r2, #256	@,
	mov	r0, fp	@, ivtmp.247
	add	r1, r7, r1, lsl #12	@ D.39420, D.39420, D.39418,
	add	fp, fp, r2	@ ivtmp.247, ivtmp.247,
	add	r6, r6, r2	@ j, j,
	add	r1, r5, r1	@ src, Yaddress, D.39420
	beq	.L338	@,
	bl	memcpy	@
.L338:
	cmp	r4, r6	@ ImgWidthInPixAln, j
	bhi	.L339	@,
.L340:
	add	r10, r10, #1	@ i, i,
	add	r9, r9, r4	@ ivtmp.250, ivtmp.250, ImgWidthInPixAln
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bne	.L337	@,
	ldr	r6, [sp, #40]	@ Caddress, %sfp
.L336:
	mul	r1, r4, r8	@, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mov	r0, r8	@, YUV
	bl	klib_fwrite	@
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L341	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	r9, r3, asr #1	@ D.39418, Stride,
.L342:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L346	@,
	mov	r2, r7, lsr #3	@ D.39418, i,
	and	r5, r7, #7	@ D.39418, i,
	mov	r10, r8	@ ivtmp.239, ivtmp.242
	mov	fp, #0	@ j,
	mul	r2, r9, r2	@ D.39418, D.39418, D.39418
	add	r5, r2, r5, lsl #8	@ D.39420, D.39418, D.39418,
.L344:
	mov	r1, fp, lsr #8	@ D.39418, j,
	cmp	r10, #0	@ ivtmp.239,
	mov	r2, #256	@,
	mov	r0, r10	@, ivtmp.239
	add	r1, r5, r1, lsl #11	@ D.39420, D.39420, D.39418,
	add	r10, r10, r2	@ ivtmp.239, ivtmp.239,
	add	fp, fp, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.39420
	beq	.L343	@,
	bl	memcpy	@
.L343:
	cmp	r4, fp	@ ImgWidthInPixAln, j
	bhi	.L344	@,
.L346:
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.242, ivtmp.242, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L342	@,
	ldr	r3, [sp, #120]	@ tmp527, chroma_idc
	cmp	r3, #1	@ tmp527,
	beq	.L429	@,
.L348:
	ldr	r3, [sp, #120]	@ tmp529, chroma_idc
	cmp	r3, #0	@ tmp529,
	bne	.L349	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L349:
	ldr	r2, [sp, #16]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r5, [sp, #20]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	r4, r3, r2	@ D.39419, chrom_width, chrom_height
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.39419
	bl	klib_fwrite	@
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.39419
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
.L354:
	ldr	r1, [sp, #68]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, sp, #64	@ tmp546,,
	bl	__memzero	@
.L334:
	ldr	r1, [sp, #52]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, sp, #48	@ tmp547,,
	bl	__memzero	@
.L328:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L427:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L335:
	subs	r3, r7, #1	@ i, PicStructure,
	mov	r2, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r2, [sp, #36]	@ chrom_width, %sfp
	movne	r3, #1	@ i,
	cmp	r8, r3	@ ImgHeightInPixAln, i
	str	r3, [sp, #40]	@ i, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #16]	@ chrom_height, %sfp
	bls	.L356	@,
	ldr	r10, [sp, #40]	@ i, %sfp
	ldr	fp, [sp, #24]	@ YUV, %sfp
	str	r6, [sp, #44]	@ Caddress, %sfp
.L359:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L360	@,
	ldr	r1, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.39418, i,
	mov	r3, r10, lsr #1	@ D.39418, i,
	and	r7, r10, #15	@ D.39418, i,
	mov	r9, #0	@ j,
	mul	r2, r1, r2	@ D.39418, Stride, D.39418
	mla	r6, r4, r3, fp	@ ivtmp.287, ImgWidthInPixAln, D.39418, YUV
	add	r7, r2, r7, lsl #8	@ D.39420, D.39418, D.39418,
.L358:
	mov	r1, r9, lsr #8	@ D.39418, j,
	cmp	r6, #0	@ ivtmp.287,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.287
	add	r1, r7, r1, lsl #12	@ D.39420, D.39420, D.39418,
	add	r9, r9, r2	@ j, j,
	add	r1, r5, r1	@, Yaddress, D.39420
	add	r6, r6, r2	@ ivtmp.287, ivtmp.287,
	beq	.L357	@,
	bl	memcpy	@
.L357:
	cmp	r4, r9	@ ImgWidthInPixAln, j
	bhi	.L358	@,
.L360:
	add	r10, r10, #2	@ i, i,
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bhi	.L359	@,
	ldr	r6, [sp, #44]	@ Caddress, %sfp
.L356:
	mul	r1, r4, r8	@ D.39418, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mov	r0, r8	@, YUV
	mov	r1, r1, lsr #1	@, D.39418,
	bl	klib_fwrite	@
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L361	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	fp, r3, asr #1	@ D.39418, Stride,
.L362:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L366	@,
	mov	r2, r7, lsr #3	@ D.39418, i,
	and	r5, r7, #7	@ D.39418, i,
	mov	r9, r8	@ ivtmp.279, ivtmp.282
	mov	r10, #0	@ j,
	mul	r2, fp, r2	@ D.39418, D.39418, D.39418
	add	r5, r2, r5, lsl #8	@ D.39420, D.39418, D.39418,
.L364:
	mov	r1, r10, lsr #8	@ D.39418, j,
	cmp	r9, #0	@ ivtmp.279,
	mov	r2, #256	@,
	mov	r0, r9	@, ivtmp.279
	add	r1, r5, r1, lsl #11	@ D.39420, D.39420, D.39418,
	add	r9, r9, r2	@ ivtmp.279, ivtmp.279,
	add	r10, r10, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.39420
	beq	.L363	@,
	bl	memcpy	@
.L363:
	cmp	r4, r10	@ ImgWidthInPixAln, j
	bhi	.L364	@,
.L366:
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.282, ivtmp.282, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L362	@,
	ldr	r3, [sp, #120]	@ tmp540, chroma_idc
	cmp	r3, #1	@ tmp540,
	beq	.L430	@,
.L368:
	ldr	r3, [sp, #120]	@ tmp543, chroma_idc
	cmp	r3, #0	@ tmp543,
	bne	.L369	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L369:
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r2, [sp, #16]	@ chrom_height, %sfp
	ldr	r4, [sp, #20]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	fp, r3, r2	@ D.39419, chrom_width, chrom_height
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.39419
	bl	klib_fwrite	@
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.39419
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
	b	.L354	@
.L428:
	bl	vfmw_dprint_nothing	@
	b	.L334	@
.L430:
	ldr	r3, [sp, #40]	@ i, %sfp
	mov	ip, #0	@ i,
	ldr	r2, [sp, #24]	@ YUV, %sfp
	ldr	r6, [sp, #28]	@ ul, %sfp
	ldr	r5, [sp, #36]	@ chrom_width, %sfp
	mla	r0, r4, r3, r2	@ D.39420, ImgWidthInPixAln, i, YUV
	ldr	r7, [sp, #16]	@ chrom_height, %sfp
	mov	r4, r4, asl #1	@ D.39418, ImgWidthInPixAln,
	add	r0, r0, #1	@ ivtmp.275, D.39420,
.L370:
	cmp	r5, #0	@ chrom_width,
	beq	.L373	@,
	mov	r3, ip, lsr #1	@ D.39418, i,
	mov	r2, r0	@ ivtmp.264, ivtmp.275
	mul	r3, r5, r3	@ D.39418, chrom_width, D.39418
	sub	r1, r3, #-67108863	@ D.39420, D.39418,
	add	r8, r3, r5	@ D.39420, D.39418, chrom_width
	sub	r1, r1, #65011712	@ D.39420, D.39420,
	add	r8, r6, r8	@ D.39424, ul, D.39420
	add	r1, r6, r1	@ ivtmp.257, ul, D.39420
	add	r3, r6, r3	@ ivtmp.266, ul, D.39418
.L371:
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.39425, MEM[base: _286, offset: 4294967295B]
	strb	lr, [r1, #1]!	@ D.39425, MEM[base: _283, offset: 0B]
	ldrb	lr, [r2], #2	@ zero_extendqisi2	@ D.39425, MEM[base: _286, offset: 0B]
	strb	lr, [r3], #1	@ D.39425, MEM[base: _280, offset: 0B]
	cmp	r3, r8	@ ivtmp.266, D.39424
	bne	.L371	@,
.L373:
	add	ip, ip, #2	@ i, i,
	add	r0, r0, r4	@ ivtmp.275, ivtmp.275, D.39418
	cmp	r7, ip	@ chrom_height, i
	bhi	.L370	@,
	b	.L369	@
.L429:
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	lr, #0	@ i,
	ldr	r6, [sp, #36]	@ chrom_width, %sfp
	add	r5, r3, #1	@ ivtmp.234, YUV,
	ldr	r7, [sp, #16]	@ chrom_height, %sfp
	ldr	r3, [sp, #28]	@ ivtmp.233, %sfp
.L350:
	cmp	r6, #0	@ chrom_width,
	moveq	ip, r3	@ ivtmp.233, ivtmp.233
	beq	.L353	@,
	sub	r1, r3, #-67108863	@ ivtmp.214, ivtmp.233,
	add	ip, r3, r6	@ ivtmp.233, ivtmp.233, chrom_width
	sub	r1, r1, #65011712	@ ivtmp.214, ivtmp.214,
	mov	r2, r5	@ ivtmp.221, ivtmp.234
.L351:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ D.39425, MEM[base: _155, offset: 4294967295B]
	strb	r0, [r1, #1]!	@ D.39425, MEM[base: _156, offset: 0B]
	ldrb	r0, [r2], #2	@ zero_extendqisi2	@ D.39425, MEM[base: _155, offset: 0B]
	strb	r0, [r3], #1	@ D.39425, MEM[base: _158, offset: 0B]
	cmp	ip, r3	@ ivtmp.233, ivtmp.223
	bne	.L351	@,
.L353:
	add	lr, lr, #1	@ i, i,
	mov	r3, ip	@ ivtmp.233, ivtmp.233
	cmp	lr, r7	@ i, chrom_height
	add	r5, r5, r4	@ ivtmp.234, ivtmp.234, ImgWidthInPixAln
	bne	.L350	@,
	b	.L349	@
.L361:
	ldr	r3, [sp, #120]	@ tmp549, chroma_idc
	cmp	r3, #1	@ tmp549,
	bne	.L368	@,
	b	.L369	@
.L341:
	ldr	r3, [sp, #120]	@ tmp548, chroma_idc
	cmp	r3, #1	@ tmp548,
	bne	.L348	@,
	b	.L349	@
.L432:
	.align	2
.L431:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	VDMHAL_V200R004_WriteBigTitle1DYuv, .-VDMHAL_V200R004_WriteBigTitle1DYuv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BigTile1d_y\000"
.LC1:
	.ascii	"BigTile1d_uv\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
