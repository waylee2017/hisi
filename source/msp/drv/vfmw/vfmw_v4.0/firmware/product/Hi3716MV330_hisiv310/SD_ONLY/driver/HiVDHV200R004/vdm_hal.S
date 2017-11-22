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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.o
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
	.global	VDMHAL_V200R004_GetHalMemSize
	.type	VDMHAL_V200R004_GetHalMemSize, %function
VDMHAL_V200R004_GetHalMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #47104	@,
	movt	r0, 6	@,
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
	cmp	r2, #0	@ VdhId,
	movw	ip, #47103	@ tmp187,
	movt	ip, 6	@ tmp187,
	movle	r3, #0	@ tmp189,
	movgt	r3, #1	@ tmp189,
	cmp	r1, ip	@ Size, tmp187
	movgt	ip, r3	@, tmp190, tmp189
	orrle	ip, r3, #1	@,, tmp190, tmp189
	cmp	r0, #0	@ MemBaseAddr,
	orreq	ip, ip, #1	@,, tmp196, tmp190
	cmp	ip, #0	@ tmp196,
	bne	.L12	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1	@ Size, Size
	movw	r1, #1144	@ tmp198,
	ldr	r8, .L13	@ tmp313,
	mul	r4, r1, r2	@ tmp197, tmp198, VdhId
	mov	r7, r0	@ MemBaseAddr, MemBaseAddr
	mov	r9, r2	@ VdhId, VdhId
	add	r5, r8, r4	@ __p, tmp313, tmp197
	mov	r0, r5	@, __p
	bl	__memzero	@
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r8, r4]	@, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r0, #53248	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	add	r2, r7, #1020	@ D.33985, MemBaseAddr,
	add	r2, r2, #3	@ D.33985, D.33985,
	add	r3, r4, #24	@ D.33987, tmp197,
	bic	r2, r2, #1020	@ D.33985, D.33985,
	add	lr, r4, #588	@ D.33987, tmp197,
	bic	r2, r2, #3	@ D.33985, D.33985,
	add	r3, r8, r3	@ ivtmp.75, tmp313, D.33987
	add	lr, r8, lr	@ D.33989, tmp313, D.33987
	rsb	r1, r2, r7	@ D.33985, D.33985, MemBaseAddr
	mov	ip, r2	@ ivtmp.72, D.33985
	add	r1, r1, r6	@ D.33985, D.33985, Size
	mov	r4, #1024	@ tmp231,
	str	r2, [r5, #16]	@ D.33985, g_HwMem[VdhId_12(D)].HALMemBaseAddr
	str	r1, [r5, #20]	@ D.33985, g_HwMem[VdhId_12(D)].HALMemSize
	str	r4, [r5, #24]	@ tmp231, g_HwMem[VdhId_12(D)].VahbStride
	str	r0, [r5, #8]	@, g_HwMem[VdhId_12(D)].pBpdRegVirAddr
.L5:
	str	ip, [r3, #4]!	@ ivtmp.72, MEM[base: _75, offset: 0B]
	cmp	r3, lr	@ ivtmp.75, D.33989
	add	ip, ip, #1024	@ ivtmp.72, ivtmp.72,
	bne	.L5	@,
	movw	r3, #1144	@ tmp239,
	add	r2, r2, #144384	@ PhyAddr, D.33985,
	mla	r3, r3, r9, r8	@ tmp240, tmp239, VdhId, tmp313
	add	r1, r2, #290816	@ PhyAddr, PhyAddr,
	add	r1, r1, #3072	@ PhyAddr, PhyAddr,
	add	r0, r2, #5120	@ PhyAddr, PhyAddr,
	rsb	r1, r7, r1	@ D.33985, MemBaseAddr, PhyAddr
	add	r4, r2, #38912	@ PhyAddr, PhyAddr,
	cmp	r6, r1	@ Size, D.33985
	add	lr, r2, #129024	@ PhyAddr, PhyAddr,
	add	r1, r2, #83968	@ PhyAddr, PhyAddr,
	add	ip, r2, #196608	@ PhyAddr, PhyAddr,
	mov	r7, #141	@ tmp243,
	str	r0, [r3, #1080]	@ PhyAddr, g_HwMem[VdhId_12(D)].SedTopAddr
	str	r2, [r3, #1076]	@ PhyAddr, g_HwMem[VdhId_12(D)].H264MnAddr
	add	r0, r2, #261120	@ PhyAddr, PhyAddr,
	str	r7, [r3, #1052]	@ tmp243, g_HwMem[VdhId_12(D)].ValidMsgSlotNum
	add	r2, r2, #199680	@ PhyAddr, PhyAddr,
	str	r4, [r3, #1084]	@ PhyAddr, g_HwMem[VdhId_12(D)].PmvTopAddr
	str	lr, [r3, #1096]	@ PhyAddr, g_HwMem[VdhId_12(D)].DblkTopAddr
	str	ip, [r3, #1112]	@ PhyAddr, g_HwMem[VdhId_12(D)].IntensityConvTabAddr
	str	r0, [r3, #1116]	@ PhyAddr, g_HwMem[VdhId_12(D)].VpTabAddr
	str	r1, [r3, #1088]	@ PhyAddr, g_HwMem[VdhId_12(D)].RcnTopAddr
	str	r1, [r3, #1092]	@ PhyAddr, g_HwMem[VdhId_12(D)].ItransTopAddr
	str	r2, [r3, #1120]	@ PhyAddr, g_HwMem[VdhId_12(D)].DnrMbInfoAddr
	str	r2, [r3, #1124]	@ PhyAddr, g_HwMem[VdhId_12(D)].DnrTopAddr
	blt	.L6	@,
	mov	r0, r5	@, __p
	bl	H264HAL_V200R004_InitHal	@
	adds	r0, r0, #0	@ D.33982,,
	movne	r0, #1	@ D.33982,
	rsb	r0, r0, #0	@ D.33983, D.33982
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L12:
	mvn	r0, #0	@ D.33983,
	bx	lr	@
.L6:
	mvn	r0, #0	@ D.33983,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L14:
	.align	2
.L13:
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
	ldr	r3, .L24	@ tmp114,
	ldr	r3, [r3, #40]	@ D.33992, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33992,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r4	@, VdhId
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.33992
.L25:
	.align	2
.L24:
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
	ldr	r3, .L30	@ tmp135,
	add	r0, r0, #15	@ D.33995, Width,
	add	r1, r1, #15	@ D.33995, Height,
	mov	r0, r0, asr #4	@ ImgWidthInMb, D.33995,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.33995,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r0, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	movle	r3, #64	@ ColMbSize,
	movgt	r3, #32	@ ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r3, #64	@ ColMbSize,
	mul	r0, r0, r3	@ D.33995, ImgWidthInMb, ColMbSize
	mul	r1, r1, r0	@ D.33995, ImgHeightInMb, D.33995
	add	r0, r1, #127	@ D.33995, D.33995,
	bic	r0, r0, #127	@, D.33995,
	bx	lr	@
.L31:
	.align	2
.L30:
	.word	g_not_direct_8x8_inference_flag
	.fnend
	.size	VDMHAL_V200R400_GetPmvSize, .-VDMHAL_V200R400_GetPmvSize
	.global	__aeabi_uidiv
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
	ldr	ip, [sp, #48]	@ PmvNum, PmvNum
	ldr	r8, [sp, #60]	@ ChanID, ChanID
	ldr	r7, [sp, #64]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L35	@,
	sub	r0, r2, #32	@ D.34027, Width,
	movw	r5, #8160	@ tmp212,
	cmp	r0, r5	@ D.34027, tmp212
	bhi	.L35	@,
	clz	lr, r7	@ tmp218, pVdmMemArrange
	sub	r0, r3, #32	@ D.34027, Height,
	mov	lr, lr, lsr #5	@ tmp218, tmp218,
	cmp	r0, r5	@ D.34027, tmp212
	orrhi	lr, lr, #1	@,, tmp221, tmp218
	cmp	lr, #0	@ tmp221,
	bne	.L35	@,
	cmp	ip, #20	@ PmvNum,
	mov	fp, r1	@ MemSize, MemSize
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #416	@,
	mov	r5, r3	@ Height, Height
	mov	r4, r2	@ Width, Width
	movlt	r6, ip	@ PmvNum, PmvNum
	movge	r6, #20	@ PmvNum,
	bl	__memzero	@
	add	r1, r5, #15	@ D.34030, Height,
	add	r2, r4, #15	@ D.34030, Width,
	ldr	r3, .L68	@ tmp231,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.34030,
	mov	r4, r2, asr #4	@ ImgWidthInMb, D.34030,
	cmp	r4, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	ldrb	lr, [r3]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mov	r9, r1, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	mov	r0, r4, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movle	r5, #64	@ ColMbSize,
	movgt	r5, #32	@ ColMbSize,
	cmp	lr, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r5, #64	@ ColMbSize,
	mul	r5, r4, r5	@ D.34030, ImgWidthInMb, ColMbSize
	mul	r5, r1, r5	@ D.34030, ImgHeightInMb, D.34030
	add	r5, r5, #127	@ D.34030, D.34030,
	bic	r5, r5, #127	@ PmvSlotLen, D.34030,
	mul	r1, r6, r5	@ PmvPoolSize, PmvNum, PmvSlotLen
	cmp	r1, fp	@ PmvPoolSize, MemSize
	bge	.L35	@,
	ldr	r3, [sp, #68]	@ tmp330, align_length
	mov	ip, r5, asr #1	@ D.34030, PmvSlotLen,
	str	r6, [r7, #404]	@ PmvNum, pVdmMemArrange_23(D)->ValidPMVNum
	sub	r1, r3, #1	@ D.34032, tmp330,
	str	ip, [r7, #400]	@ D.34030, pVdmMemArrange_23(D)->HafPmvOffset
	add	r0, r1, r0	@, D.34032, ImgWidthInPixAln
	mov	r1, r3	@, tmp330
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #56]	@ tmp331, UserDec
	cmp	r3, #1	@ tmp331,
	ldr	r3, [sp, #68]	@ tmp332, align_length
	mul	r0, r3, r0	@ SlotWidth, tmp332,
	str	r0, [r7]	@ SlotWidth, pVdmMemArrange_23(D)->VahbStride
	beq	.L65	@,
	adds	r6, r9, #31	@ D.34030, ImgHeightInPixAln,
	addmi	r6, r9, #62	@, D.34030, ImgHeightInPixAln,
	mov	r6, r6, asr #5	@ D.34030, D.34030,
	mul	r6, r0, r6	@ D.34030, SlotWidth, D.34030
	mov	r0, r6, asl #7	@ tmp258, D.34030,
	sub	r6, r0, r6, asl #5	@ D.34030, tmp258, D.34030,
	mov	r6, r6, asr #1	@ ImgSlotLen, D.34030,
.L39:
	cmp	r8, #0	@ ChanID,
	blt	.L45	@,
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanWidth	@
	str	r0, [sp, #4]	@ ChanWidth, %sfp
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanHeight	@
	ldr	ip, [sp, #4]	@ ChanWidth, %sfp
	cmn	r0, #1	@ ChanHeight,
	cmnne	ip, #1	@, ChanWidth,
	mov	r1, r0	@ ChanHeight,
	beq	.L35	@,
	ldr	r3, [sp, #56]	@ tmp334, UserDec
	add	r0, ip, #15	@ D.34030, ChanWidth,
	bic	r0, r0, #15	@ ChanImgWidthInPixAln, D.34030,
	add	r1, r1, #15	@ D.34030, ChanHeight,
	cmp	r3, #1	@ tmp334,
	add	r0, r0, #255	@ D.34030, ChanImgWidthInPixAln,
	bic	r1, r1, #15	@ ChanImgHeightInPixAln, D.34030,
	bic	r0, r0, #255	@ ChanSlotWidth, D.34030,
	beq	.L66	@,
	adds	ip, r1, #31	@ D.34030, ChanImgHeightInPixAln,
	addmi	r1, r1, #62	@, D.34030, ChanImgHeightInPixAln,
	movpl	r1, ip	@, D.34030, D.34030
	mov	r1, r1, asr #5	@ D.34030, D.34030,
	mul	r0, r0, r1	@ D.34030, ChanSlotWidth, D.34030
	mov	r1, r0, asl #7	@ tmp295, D.34030,
	sub	r1, r1, r0, asl #5	@ D.34030, tmp295, D.34030,
	mov	r1, r1, asr #1	@ ChanSlotLen, D.34030,
.L44:
	cmp	r6, r1	@ ImgSlotLen, ChanSlotLen
	bgt	.L35	@,
.L45:
	adds	r1, r9, #31	@ D.34030, ImgHeightInPixAln,
	mov	r2, r4, asl #9	@ D.34030, ImgWidthInMb,
	addmi	r3, r9, #62	@, D.34030, ImgHeightInPixAln,
	movpl	r3, r1	@, D.34030, D.34030
	ldr	r1, [sp, #52]	@ tmp333, FrameNum
	mov	r3, r3, asr #5	@ D.34030, D.34030,
	cmp	r1, #0	@ tmp333,
	mul	r2, r3, r2	@ D.34030, D.34030, D.34030
	str	r2, [r7, #264]	@ D.34030, pVdmMemArrange_23(D)->ChromOffset
	beq	.L67	@,
	add	r3, r10, #1020	@ D.34030, MemAddr,
	ldr	r2, [sp, #52]	@ tmp335, FrameNum
	add	r3, r3, #3	@ D.34030, D.34030,
	mov	r1, r6	@, ImgSlotLen
	bic	r4, r3, #1020	@ D.34030, D.34030,
	cmp	r2, #64	@ tmp335,
	bic	r4, r4, #3	@ D.34030, D.34030,
	rsb	r10, r10, r4	@ Offset, MemAddr, D.34030
	movlt	r9, r2	@ D.34030, tmp336
	rsb	r0, r10, fp	@, Offset, MemSize
	movge	r9, #64	@ D.34030,
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ D.34030,
	movlt	r1, r9	@ D.34030, D.34030
	movge	r1, r0	@ D.34030,
	cmp	r1, #0	@ D.34030,
	str	r1, [r7, #276]	@ D.34030, pVdmMemArrange_23(D)->ValidFrameNum
	beq	.L35	@,
	addgt	ip, r7, #4	@ ivtmp.107, pVdmMemArrange,
	movgt	r3, r4	@ ivtmp.104, D.34030
	movgt	r2, #0	@ i,
	ble	.L50	@,
.L49:
	add	r2, r2, #1	@ i, i,
	str	r3, [ip, #4]!	@ ivtmp.104, MEM[base: _139, offset: 0B]
	cmp	r2, r1	@ i, D.34030
	add	r3, r3, r6	@ ivtmp.104, ivtmp.104, ImgSlotLen
	bne	.L49	@,
.L50:
	cmp	r8, #0	@ ChanID,
	mla	r1, r1, r6, r10	@ Offset, D.34030, ImgSlotLen, Offset
	blt	.L48	@,
	ldr	r3, .L68+4	@ tmp311,
	ldr	lr, [r3, r8, asl #2]	@ D.34033, s_pstVfmwChan
	cmp	lr, #0	@ D.34033,
	beq	.L48	@,
	ldr	r4, [r7, #404]	@ D.34030, pVdmMemArrange_23(D)->ValidPMVNum
	add	lr, lr, #208896	@ tmp322, D.34033,
	ldr	r3, [lr, #2928]	@ _105->stChanMem_pmv.Length, _105->stChanMem_pmv.Length
	mul	r2, r5, r4	@ D.34030, PmvSlotLen, D.34030
	cmp	r2, r3	@ D.34030, _105->stChanMem_pmv.Length
	bgt	.L35	@,
	cmp	r4, #0	@ D.34030,
	ble	.L48	@,
	mov	r2, #0	@ ivtmp.92,
	add	r0, r7, #276	@ ivtmp.94, pVdmMemArrange,
	mov	ip, r2	@ i, ivtmp.92
.L51:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [lr, #2924]	@ _105->stChanMem_pmv.PhyAddr, _105->stChanMem_pmv.PhyAddr
	cmp	ip, r4	@ i, D.34030
	add	r3, r3, r2	@ D.34030, _105->stChanMem_pmv.PhyAddr, ivtmp.92
	add	r2, r2, r5	@ ivtmp.92, ivtmp.92, PmvSlotLen
	str	r3, [r0, #4]!	@ D.34030, MEM[base: _20, offset: 0B]
	bne	.L51	@,
.L48:
	mov	r3, #1024	@ tmp310,
	mov	r0, #0	@ D.34026,
	str	r1, [r7, #4]	@ Offset, pVdmMemArrange_23(D)->TotalMemUsed
	str	r6, [r7, #408]	@ ImgSlotLen, pVdmMemArrange_23(D)->ImgSlotLen
	str	r3, [r7, #412]	@ tmp310, pVdmMemArrange_23(D)->u32StrideByte
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L67:
	ldr	r3, [sp, #52]	@ tmp337, FrameNum
	mvn	r0, #0	@ D.34026,
	str	r3, [r7, #276]	@ tmp337, pVdmMemArrange_23(D)->ValidFrameNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L65:
	mul	r6, r9, r0	@ D.34030, ImgHeightInPixAln, SlotWidth
	add	r6, r6, r6, lsl #1	@ ImgSlotLen, D.34030, D.34030,
	b	.L39	@
.L35:
	mvn	r0, #0	@ D.34026,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L66:
	mul	r1, r1, r0	@ D.34030, ChanImgHeightInPixAln, ChanSlotWidth
	add	r1, r1, r1, lsl #1	@ ChanSlotLen, D.34030, D.34030,
	b	.L44	@
.L69:
	.align	2
.L68:
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
	bxgt	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ VdhId, VdhId
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r3, #1144	@ tmp137,
	ldr	lr, .L84	@ tmp155,
	mul	r3, r3, r4	@ tmp136, tmp137, VdhId
	ldr	r2, .L84+4	@ tmp140,
	ldr	r1, [r2]	@ D.34048, g_pstRegCrg
	ldr	r3, [lr, r3]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r5, [r3, #36]	@ tmp, *_12
	ldr	ip, [r1, #120]	@ u32TmpValue, _14->PERI_CRG30.u32
	orr	ip, ip, #64	@ u32TmpValue, u32TmpValue,
	str	ip, [r1, #120]	@ u32TmpValue, _14->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _14->PERI_CRG93.u32
	tst	r3, #4	@ u32TmpValue_93,
	movweq	r3, #9999	@ D.34044,
	beq	.L76	@,
	b	.L75	@
.L83:
	subs	r3, r3, #1	@ D.34044, D.34044,
	beq	.L75	@,
.L76:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _14->PERI_CRG93.u32
	tst	r2, #4	@ u32TmpValue_93,
	beq	.L83	@,
.L75:
	movw	r0, #1144	@ tmp148,
	bfc	ip, #6, #1	@ u32TmpValue,,
	mul	r0, r0, r4	@ tmp147, tmp148, VdhId
	str	ip, [r1, #120]	@ u32TmpValue, _14->PERI_CRG30.u32
	ldr	r3, [lr, r0]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	str	r5, [r3, #36]	@ tmp, *_31
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L85:
	.align	2
.L84:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r3, .L97	@ tmp125,
	ldr	r1, [r3]	@ D.34061, g_pstRegCrg
	ldr	r0, [r1, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r0, r0, #16	@ u32TmpValue, u32TmpValue,
	str	r0, [r1, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #1	@ u32TmpValue_93,
	movweq	r3, #9999	@ D.34060,
	beq	.L90	@,
	b	.L89	@
.L96:
	subs	r3, r3, #1	@ D.34060, D.34060,
	beq	.L89	@,
.L90:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #1	@ u32TmpValue_93,
	beq	.L96	@,
.L89:
	bfc	r0, #4, #1	@ u32TmpValue,,
	str	r0, [r1, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldmfd	sp!, {r4, pc}	@
.L98:
	.align	2
.L97:
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
	bxgt	lr	@
	movw	r3, #1144	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L110	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34066, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34066,
	beq	.L109	@,
.L102:
	mvn	r2, #0	@ tmp125,
	str	r2, [r3, #32]	@ tmp125, *_12
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L109:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r3, r0	@ D.34066, p32
	str	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	b	.L102	@
.L111:
	.align	2
.L110:
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
	bxgt	lr	@
	movw	r3, #1144	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L123	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34071, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34071,
	beq	.L122	@,
.L115:
	mvn	r2, #0	@ tmp125,
	str	r2, [r3, #36]	@ tmp125, *_12
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L122:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r3, r0	@ D.34071, p32
	str	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	b	.L115	@
.L124:
	.align	2
.L123:
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
	bxgt	lr	@
	movw	r3, #1144	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L136	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34076, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34076,
	beq	.L135	@,
.L128:
	mvn	r2, #1	@ tmp125,
	str	r2, [r3, #36]	@ tmp125, *_12
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L135:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r3, r0	@ D.34076, p32
	str	r0, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	b	.L128	@
.L137:
	.align	2
.L136:
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
	cmp	r1, #0	@ VdhId
	bgt	.L146	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #1144	@ tmp124,
	mul	r6, r6, r1	@ tmp123, tmp124, VdhId
	ldr	r7, .L152	@ tmp139,
	mov	r4, r0	@ reg_id, reg_id
	mov	r5, r1	@ VdhId, VdhId
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	cmp	r3, #0	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr,
	beq	.L151	@,
.L140:
	sub	r0, r4, #1	@ tmp132, reg_id,
	cmp	r0, #3	@ tmp132,
	ldrls	pc, [pc, r0, asl #2]	@ tmp132
	b	.L148	@
.L142:
	.word	.L149
	.word	.L143
	.word	.L144
	.word	.L145
.L149:
	mov	r3, #28	@ reg_type,
.L141:
	movw	r1, #1144	@ tmp135,
	mul	r5, r1, r5	@ tmp134, tmp135, VdhId
	ldr	r2, [r7, r5]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r0, [r2, r3]	@ D.34085, *_15
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L145:
	mov	r3, #40	@ reg_type,
	b	.L141	@
.L143:
	mov	r3, #32	@ reg_type,
	b	.L141	@
.L144:
	mov	r3, #36	@ reg_type,
	b	.L141	@
.L146:
	mvn	r0, #0	@ D.34085,
	bx	lr	@
.L151:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	str	r0, [r7, r6]	@ p32, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	b	.L140	@
.L148:
	mov	r0, #0	@ D.34085,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L153:
	.align	2
.L152:
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
	cmp	r2, #0	@ VdhId,
	movle	r3, #0	@ tmp126,
	movgt	r3, #1	@ tmp126,
	cmp	r1, #0	@ pDecParam,
	orreq	r3, r3, #1	@,, tmp129, tmp126
	cmp	r3, #0	@ tmp129,
	bne	.L161	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pDecParam, pDecParam
	ldr	r7, .L164	@ tmp132,
	sub	r1, r0, #6	@, VidStd,
	clz	r1, r1	@,
	mov	r4, r0	@ VidStd, VidStd
	mov	r6, r2	@ VdhId, VdhId
	mov	r1, r1, lsr #5	@,,
	ldr	r0, [r7]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	cmp	r4, #0	@ VidStd,
	beq	.L156	@,
	cmp	r4, #3	@ VidStd,
	bne	.L163	@,
	mov	r1, r6	@, VdhId
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
.L163:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L156:
	mov	r1, r6	@, VdhId
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
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
	@ link register save eliminated.
	movw	r3, #1144	@ tmp124,
	ldr	r2, .L169	@ tmp122,
	mul	r0, r3, r0	@ tmp123, tmp124, VdhId
	ldr	r3, [r2, r0]	@ D.34099, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34099,
	ldrne	r0, [r3, #28]	@ Data32, *_7
	ubfxne	r0, r0, #17, #1	@ D.34098, Data32,,
	mvneq	r0, #0	@ D.34098,
	bx	lr	@
.L170:
	.align	2
.L169:
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
	@ link register save eliminated.
	movw	r3, #1144	@ tmp121,
	ldr	r2, .L174	@ tmp119,
	mul	r0, r3, r0	@ tmp120, tmp121, VdhId
	ldr	r0, [r2, r0]	@ D.34106, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r0, #0	@ D.34106,
	bxeq	lr	@
	ldr	r0, [r0, #40]	@ Data32, *_7
	subs	r0, r0, #1	@ D.34105, Data32,
	movne	r0, #1	@ D.34105,
	bx	lr	@
.L175:
	.align	2
.L174:
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
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bgt	.L180	@,
	movw	r4, #1144	@ tmp217,
	ldr	r3, .L198	@ tmp211,
	mul	r4, r4, r0	@ tmp216, tmp217, VdhId
	ldr	r8, .L198+4	@ tmp335,
	ldr	r7, [r3]	@ g_DSPState, g_DSPState
	mov	r6, r0	@ VdhId, VdhId
	sub	r7, r7, #1	@ D.34128, g_DSPState,
	clz	r7, r7	@ D.34128, D.34128
	ldr	r5, [r8, r4]	@ D.34129, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r7, r7, lsr #5	@ D.34128, D.34128,
	cmp	r5, #0	@ D.34129,
	beq	.L196	@,
.L179:
	mov	r2, #180	@ tmp226,
	ldr	r1, [r5, #12]	@ D.34130, *_23
	mul	r2, r2, r6	@ tmp225, tmp226, VdhId
	ldr	r4, .L198+8	@ tmp334,
	cmp	r7, #1	@ D.34128,
	add	r3, r4, r2	@ tmp227, tmp334, tmp225
	str	r1, [r4, r2]	@ D.34130, g_BackUp[VdhId_12(D)].BasicCfg1
	ldr	r2, [r5, #28]	@ D.34130, *_28
	str	r2, [r3, #4]	@ D.34130, g_BackUp[VdhId_12(D)].VdmState
	beq	.L197	@,
	add	r2, r5, #4096	@ D.34131, D.34130,
	movw	r1, #4116	@ tmp271,
	cmp	r7, #0	@ D.34128,
	ldr	r2, [r2]	@ D.34130, *_51
	str	r2, [r3, #16]	@ D.34130, g_BackUp[VdhId_12(D)].SedSta
	ldr	r2, [r5, r1]	@ D.34130, *_56
	str	r2, [r3, #20]	@ D.34130, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r2, [r5, #208]	@ D.34130, *_63
	str	r2, [r3, #8]	@ D.34130, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r2, [r5, #212]	@ D.34130, *_68
	str	r2, [r3, #12]	@ D.34130, g_BackUp[VdhId_12(D)].SwitchRounding
	bne	.L183	@,
	ldr	r2, [r5, #176]	@ D.34130, *_73
	str	r2, [r3, #24]	@ D.34130, g_BackUp[VdhId_12(D)].DecCyclePerPic
	ldr	r2, [r5, #180]	@ D.34130, *_78
	str	r2, [r3, #28]	@ D.34130, g_BackUp[VdhId_12(D)].RdBdwidthPerPic
	ldr	r2, [r5, #184]	@ D.34130, *_83
	str	r2, [r3, #32]	@ D.34130, g_BackUp[VdhId_12(D)].WrBdWidthPerPic
	ldr	r2, [r5, #188]	@ D.34130, *_88
	str	r2, [r3, #36]	@ D.34130, g_BackUp[VdhId_12(D)].RdReqPerPic
	ldr	r2, [r5, #192]	@ D.34130, *_93
	str	r2, [r3, #40]	@ D.34130, g_BackUp[VdhId_12(D)].WrReqPerPic
.L183:
	mov	ip, #180	@ tmp312,
	rsb	r2, r4, #32768	@ D.34134, tmp334,
	mul	ip, ip, r6	@ D.34135, tmp312, VdhId
	add	r2, r2, #208	@ D.34134, D.34134,
	add	r3, ip, #48	@ D.34135, D.34135,
	add	r1, ip, #176	@ D.34135, D.34135,
	rsb	ip, ip, r5	@ D.34134, D.34135, D.34130
	add	r3, r4, r3	@ ivtmp.158, tmp334, D.34135
	add	r1, r4, r1	@ D.34134, tmp334, D.34135
	add	ip, r2, ip	@ D.34134, D.34134, D.34134
.L185:
	ldr	r2, [ip, r3]	@ D.34130, *_142
	ldr	lr, .L198+8	@ tmp319,
	str	r2, [r3, #4]!	@ D.34130, MEM[base: _141, offset: 0B]
	cmp	r3, r1	@ ivtmp.158, D.34134
	bne	.L185	@,
	cmp	r7, #0	@ D.34128,
	moveq	r2, #180	@ tmp324,
	movweq	r3, #33152	@ tmp321,
	mlaeq	lr, r2, r6, lr	@ tmp325, tmp324, VdhId, tmp319
	ldreq	r2, [r5, r3]	@ D.34130, *_106
	movweq	r3, #33156	@ tmp327,
	movne	r7, #0	@ D.34128,
	mov	r0, r7	@, D.34128
	streq	r2, [lr, #48]	@ D.34130, g_BackUp[VdhId_12(D)].LumaSumLow
	ldreq	r3, [r5, r3]	@ D.34130, *_111
	streq	r3, [lr, #44]	@ D.34130, g_BackUp[VdhId_12(D)].LumaSumHigh
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L197:
	movw	r3, #1144	@ tmp234,
	ubfx	r5, r2, #0, #17	@ DecSliceNum, D.34130,,
	mla	r3, r3, r6, r8	@ tmp235, tmp234, VdhId, tmp335
	ldr	r0, [r3, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L180	@,
	sub	r3, r5, #1	@ D.34132, DecSliceNum,
	movw	r1, #1144	@ tmp254,
	cmp	r3, #127	@ D.34132,
	mov	r2, #180	@ tmp242,
	subls	r3, r5, #-1073741823	@ D.34132, DecSliceNum,
	movhi	r3, #0	@ D.34132,
	movhi	ip, #8	@ D.34135,
	movls	r3, r3, asl #4	@ D.34132, D.34132,
	mla	r2, r2, r6, r4	@ tmp243, tmp242, VdhId, tmp334
	ldr	lr, [r0, r3]	@ *_39, *_39
	addls	ip, r3, #8	@ D.34135, D.34132,
	mul	r3, r1, r6	@ tmp253, tmp254, VdhId
	str	lr, [r2, #16]	@ *_39, g_BackUp[VdhId_12(D)].SedSta
	ldr	r1, [r0, ip]	@ *_46, *_46
	ldr	r5, [r8, r3]	@ D.34130, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	str	r1, [r2, #20]	@ *_46, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r3, [r5, #208]	@ D.34130, *_121
	str	r3, [r2, #8]	@ D.34130, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r3, [r5, #212]	@ D.34130, *_126
	str	r3, [r2, #12]	@ D.34130, g_BackUp[VdhId_12(D)].SwitchRounding
	b	.L183	@
.L180:
	mvn	r7, #0	@ D.34128,
	mov	r0, r7	@, D.34128
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L196:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L180	@,
	mov	r5, r0	@ D.34129, p32
	str	r0, [r8, r4]	@ p32, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	b	.L179	@
.L199:
	.align	2
.L198:
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
	bne	.L202	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.34141, tmp131
	ldmfd	sp!, {r4, pc}	@
.L202:
	mvn	r0, #0	@ D.34141,
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
	beq	.L207	@,
	sub	r3, r2, #1	@ D.34152, dnmsg_size,
	cmp	r3, #255	@ D.34152,
	bhi	.L207	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.34150, tmp126
	ldmfd	sp!, {r4, pc}	@
.L207:
	mvn	r0, #0	@ D.34150,
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
	beq	.L229	@,
	ldr	r3, [r7, #552]	@ pRepairParam_18(D)->ValidGroupNum, pRepairParam_18(D)->ValidGroupNum
	sub	r3, r3, #1	@ D.34176, pRepairParam_18(D)->ValidGroupNum,
	cmp	r3, #127	@ D.34176,
	bhi	.L229	@,
	ldr	r3, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	mov	lr, #0	@ tmp311,
	ldr	r0, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	mov	r4, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb,
	ldr	r5, [r7, #16]	@ D.34175, pRepairParam_18(D)->RefImageAddr
	mov	ip, r4	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	mov	r3, r3, asl #4	@ pic_width, pRepairParam_18(D)->ImageWidth,
	adds	r2, r3, #15	@ D.34175, pic_width,
	mov	r0, r0, asl #4	@ pic_height, pRepairParam_18(D)->ImageHeight,
	addmi	r2, r3, #30	@, D.34175, pic_width,
	adds	r1, r0, #31	@ D.34175, pic_height,
	addmi	r1, r0, #62	@, D.34175, pic_height,
	str	r5, [r10]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17]
	ldr	r0, [r7, #16]	@ pRepairParam_18(D)->RefImageAddr, pRepairParam_18(D)->RefImageAddr
	bic	r2, r2, #15	@ Stride1D, D.34175,
	mov	r1, r1, asr #5	@ D.34175, D.34175,
	mul	r3, r3, r1	@ D.34175, pic_width, D.34175
	mov	r3, r3, asl #5	@ ChromaOffset, D.34175,
	add	r1, r3, r0	@ D.34175, ChromaOffset, pRepairParam_18(D)->RefImageAddr
	str	r1, [r10, #4]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 4B]
	ldr	r1, [r7, #4]	@ D.34175, pRepairParam_18(D)->ImageAddr
	str	r1, [r10, #8]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 8B]
	ldr	r1, [r7, #4]	@ pRepairParam_18(D)->ImageAddr, pRepairParam_18(D)->ImageAddr
	add	r3, r3, r1	@ D.34175, ChromaOffset, pRepairParam_18(D)->ImageAddr
	str	r3, [r10, #12]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 12B]
	str	r2, [r10, #16]	@ Stride1D, MEM[(volatile HI_S32 *)pMsgBase_17 + 16B]
	str	lr, [r10, #20]	@ tmp311, MEM[(volatile HI_S32 *)pMsgBase_17 + 20B]
	ldr	r2, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r3, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	sub	r2, r2, #1	@ tmp315, pRepairParam_18(D)->ImageWidth,
	sub	r3, r3, #1	@ tmp320, pRepairParam_18(D)->ImageHeight,
	bfi	r4, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, tmp315,,
	bfi	ip, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, tmp320,,
	strh	r4, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #20]	@ D.34175, D32
	str	r3, [r10, #24]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 24B]
	ldr	r5, [r7, #568]	@ D.34175, pRepairParam_18(D)->FullRepair
	cmp	r5, lr	@ D.34175,
	bne	.L230	@,
	ldr	r0, [r7, #552]	@ D.34175, pRepairParam_18(D)->ValidGroupNum
	cmp	r0, lr	@ D.34175,
	ble	.L231	@,
	ldrsh	fp, [r7, #40]	@ pRepairParam_18(D)->MbGroup[0].StartMbn, pRepairParam_18(D)->MbGroup[0].StartMbn
	mov	r8, r5	@ front_EndMb, i
	ldrsh	r2, [r7, #42]	@ D.34175, pRepairParam_18(D)->MbGroup[0].EndMbn
	add	r3, fp, #7	@ tmp326, pRepairParam_18(D)->MbGroup[0].StartMbn,
	cmp	fp, lr	@ pRepairParam_18(D)->MbGroup[0].StartMbn,
	str	r5, [sp]	@ i, %sfp
	movlt	fp, r3	@ pRepairParam_18(D)->MbGroup[0].StartMbn, tmp326
	adds	r3, r2, #7	@ D.34175, D.34175,
	addmi	r3, r2, #14	@, D.34175, D.34175,
	bic	fp, fp, #7	@ start_Mb, pRepairParam_18(D)->MbGroup[0].StartMbn,
	bic	r3, r3, #7	@ cur_EndMb, D.34175,
.L214:
	cmp	r3, r8	@ cur_EndMb, front_EndMb
	movgt	r3, #0	@ tmp364,
	movle	r3, #1	@ tmp364,
	cmp	r5, #0	@ i,
	moveq	r3, #0	@ tmp364,
	cmp	r3, #0	@ tmp364,
	beq	.L217	@,
	ldr	r0, [r7, #552]	@ D.34175, pRepairParam_18(D)->ValidGroupNum
	mov	r2, r5	@ i, i
	add	r5, r5, #1	@ i, i,
	cmp	r0, r5	@ D.34175, i
	ble	.L237	@,
.L226:
	add	r3, r2, #2	@ D.34175, i,
	cmp	r3, #127	@ D.34175,
	bgt	.L237	@,
	add	r3, r7, r5, lsl #2	@ D.34184, pRepairParam, i,
	ldrsh	fp, [r3, #40]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B], MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B]
	ldrsh	r1, [r3, #42]	@ D.34175, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 42B]
	cmp	fp, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	add	r3, fp, #7	@ tmp340, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	movlt	fp, r3	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B], tmp340
	adds	r3, r1, #7	@ D.34175, D.34175,
	addmi	r3, r1, #14	@, D.34175, D.34175,
	cmp	r5, #0	@ i,
	bic	fp, fp, #7	@ start_Mb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	bic	r3, r3, #7	@ cur_EndMb, D.34175,
	ble	.L214	@,
	add	r2, r7, r2, lsl #2	@ tmp351, pRepairParam, i,
	ldrsh	r2, [r2, #42]	@ D.34175, pRepairParam_18(D)->MbGroup[i_175].EndMbn
	adds	r8, r2, #7	@ D.34175, D.34175,
	addmi	r8, r2, #14	@, D.34175, D.34175,
	bic	r8, r8, #7	@ front_EndMb, D.34175,
	b	.L214	@
.L230:
	cmp	r5, #1	@ D.34175,
	str	lr, [sp]	@ tmp311, %sfp
	beq	.L225	@,
.L213:
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	sub	r3, r3, #1	@ tmp443, actual_repairTime,
	uxth	r3, r3	@ D.34178, tmp443
.L227:
	ldr	r2, [r7, #560]	@ pRepairParam_18(D)->Compress_en, pRepairParam_18(D)->Compress_en
	mov	ip, #0	@ tmp461,
	ldr	r1, [r7, #564]	@ pRepairParam_18(D)->Pic_type, pRepairParam_18(D)->Pic_type
	mov	r0, ip	@ D.34174, tmp461
	and	r2, r2, #1	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, pRepairParam_18(D)->Compress_en,
	str	ip, [sp, #20]	@ tmp461, D32
	and	r1, r1, #3	@ D.34187, pRepairParam_18(D)->Pic_type,
	strh	r3, [sp, #20]	@ movhi	@ D.34178, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].total_grp_num_minus1
	bfi	r2, r1, #4, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, D.34187,,
	mov	r3, r2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode
	bfi	r3, r1, #6, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, D.34187,,
	strb	r3, [sp, #22]	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode
	ldr	r3, [sp, #20]	@ D.34175, D32
	str	r3, [r10, #28]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 28B]
.L211:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L217:
	add	r1, r7, r5, lsl #2	@ ivtmp.178, pRepairParam, i,
	b	.L219	@
.L220:
	ldrsh	ip, [r1, #42]	@ D.34175, MEM[base: _206, offset: 42B]
	ldrsh	r3, [r1, #44]	@ MEM[base: _206, offset: 44B], MEM[base: _206, offset: 44B]
	adds	r2, ip, #7	@ D.34175, D.34175,
	add	lr, r3, #7	@ tmp396, MEM[base: _206, offset: 44B],
	addmi	r2, ip, #14	@, D.34175, D.34175,
	cmp	r3, #0	@ MEM[base: _206, offset: 44B],
	bic	r2, r2, #7	@ D.34175, D.34175,
	movlt	r3, lr	@ MEM[base: _206, offset: 44B], tmp396
	bic	r3, r3, #7	@ D.34175, MEM[base: _206, offset: 44B],
	cmp	r2, r3	@ D.34175, D.34175
	bgt	.L222	@,
	cmp	r5, #1	@ i,
	bmi	.L232	@,
	ldrsh	ip, [r1, #38]	@ D.34175, MEM[base: _206, offset: 38B]
	adds	r3, ip, #7	@ D.34175, D.34175,
	addmi	r3, ip, #14	@, D.34175, D.34175,
	bic	r3, r3, #7	@ D.34175, D.34175,
	cmp	r2, r3	@ D.34175, D.34175
	bgt	.L232	@,
.L222:
	add	r1, r1, #4	@ ivtmp.178, ivtmp.178,
	mov	r5, r4	@ i, i
.L219:
	add	r4, r5, #1	@ i, i,
	cmp	r4, #127	@ i,
	movle	r3, #1	@ tmp370,
	movgt	r3, #0	@ tmp370,
	cmp	r0, r4	@ D.34175, i
	movle	r3, #0	@ tmp370,
	cmp	r5, #0	@ i,
	andgt	r3, r3, #1	@ tmp377, tmp370,
	movle	r3, #0	@ tmp377,
	cmp	r3, #0	@ tmp377,
	bne	.L220	@,
	add	r3, r7, r5, lsl #2	@ tmp380, pRepairParam, i,
	ldrsh	r3, [r3, #42]	@ D.34175, pRepairParam_18(D)->MbGroup[i_222].EndMbn
	adds	r2, r3, #7	@ D.34175, D.34175,
	addmi	r2, r3, #14	@, D.34175, D.34175,
	bic	r9, r2, #7	@ end_Mb, D.34175,
.L221:
	ldr	r3, [r7, #24]	@ D.34175, pRepairParam_18(D)->ImageWidth
	ldr	r1, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	ldr	r2, [sp]	@ actual_repairTime, %sfp
	mul	r1, r1, r3	@ D.34175, pRepairParam_18(D)->ImageHeight, D.34175
	add	r6, r2, #1	@ actual_repairTime, actual_repairTime,
	cmp	r1, r9	@ D.34175, end_Mb
	suble	r9, r1, #1	@ end_Mb, D.34175,
	cmp	r6, #252	@ actual_repairTime,
	bgt	.L238	@,
	mov	r1, r3	@, D.34175
	mov	r0, fp	@, start_Mb
	str	r3, [sp, #12]	@ D.34175, %sfp
	bl	__aeabi_idivmod	@
	mov	r3, #0	@ tmp512,
	mov	r2, #0	@ tmp515,
	mov	lr, r3	@ movhi	@ tmp477, tmp512
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	mov	ip, r2, lsr #16	@ tmp479, tmp515,
	mov	r0, fp	@, start_Mb
	str	r6, [sp]	@ actual_repairTime, %sfp
	mov	r6, r2	@ movhi	@ tmp480, tmp516
	mov	r3, r3, asl #3	@ D.34182, actual_repairTime,
	str	r3, [sp, #4]	@ D.34182, %sfp
	ldr	r3, [sp, #12]	@ D.34175, %sfp
	mov	fp, ip	@ tmp482, tmp479
	str	ip, [sp, #8]	@ tmp479, %sfp
	bfi	lr, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,,,
	mov	r1, r3	@, D.34175
	strh	lr, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bl	__aeabi_idiv	@
	ldmib	sp, {r3, ip}	@,,
	add	r3, r3, #32	@ D.34182, D.34182,
	bfi	ip, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby,,,
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	ldr	r1, [sp, #20]	@ D.34175, D32
	mov	r0, r9	@, end_Mb
	str	r1, [r10, r3]	@ D.34175, MEM[(volatile HI_S32 *)_113]
	ldr	ip, [r7, #24]	@ D.34175, pRepairParam_18(D)->ImageWidth
	mov	r1, ip	@, D.34175
	str	ip, [sp, #8]	@ D.34175, %sfp
	bl	__aeabi_idivmod	@
	ldr	ip, [sp, #8]	@ D.34175, %sfp
	mov	r0, r9	@, end_Mb
	mov	r3, r6	@ movhi	@ tmp480, tmp480
	bfi	r3, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,,,
	mov	r1, ip	@, D.34175
	strh	r3, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ D.34182, %sfp
	mov	r2, r5	@ i, i
	mov	r5, r4	@ i, i
	add	r9, r3, #36	@ D.34182, D.34182,
	bfi	fp, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby,,,
	strh	fp, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r3, [sp, #20]	@ D.34175, D32
	str	r3, [r10, r9]	@ D.34175, MEM[(volatile HI_S32 *)_128]
	ldr	r0, [r7, #552]	@ D.34175, pRepairParam_18(D)->ValidGroupNum
	cmp	r0, r5	@ D.34175, i
	bgt	.L226	@,
.L237:
	ldr	r5, [r7, #568]	@ D.34175, pRepairParam_18(D)->FullRepair
	cmp	r5, #1	@ D.34175,
	bne	.L213	@,
.L225:
	mov	r1, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,
	mov	r3, #0	@ tmp445,
	mov	r2, r1	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, tmp445,,
	bfi	r2, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, tmp445,,
	strh	r1, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	strh	r2, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	mov	r1, #1	@ tmp444,
	ldr	r2, [sp, #20]	@ D.34175, D32
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,
	str	r1, [r7, #552]	@ tmp444, pRepairParam_18(D)->ValidGroupNum
	mov	r0, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	str	r2, [r10, #32]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 32B]
	ldr	r1, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r2, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	sub	r1, r1, #1	@ tmp453, pRepairParam_18(D)->ImageWidth,
	sub	r2, r2, #1	@ tmp458, pRepairParam_18(D)->ImageHeight,
	bfi	ip, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, tmp453,,
	bfi	r0, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, tmp458,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	strh	r0, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r2, [sp, #20]	@ D.34175, D32
	str	r2, [r10, #36]	@ D.34175, MEM[(volatile HI_S32 *)pMsgBase_17 + 36B]
	b	.L227	@
.L232:
	mov	r9, r2	@ end_Mb, D.34175
	b	.L221	@
.L238:
	mov	r3, #1	@ tmp409,
	str	r3, [r7, #568]	@ tmp409, pRepairParam_18(D)->FullRepair
	b	.L225	@
.L229:
	mvn	r0, #0	@ D.34174,
	b	.L211	@
.L231:
	str	r5, [sp]	@ D.34175, %sfp
	b	.L213	@
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0	@ VdhId
	bgt	.L251	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pHwMem, pHwMem
	ldr	r2, [r1]	@ pHwMem_7(D)->pVdmRegVirAddr, pHwMem_7(D)->pVdmRegVirAddr
	mov	r5, r3	@ VdhId, VdhId
	cmp	r2, #0	@ pHwMem_7(D)->pVdmRegVirAddr,
	beq	.L252	@,
.L243:
	movw	r1, #1144	@ tmp166,
	ldr	r2, .L253	@ tmp164,
	mul	r3, r1, r5	@ tmp165, tmp166, VdhId
	ldr	ip, [r4, #36]	@ pHwMem_7(D)->MsgSlotAddr, pHwMem_7(D)->MsgSlotAddr
	mov	r4, #7	@ tmp175,
	movw	lr, #49667	@ tmp181,
	bic	ip, ip, #15	@ D.34196, pHwMem_7(D)->MsgSlotAddr,
	movt	lr, 8192	@ tmp181,
	movw	r1, #3075	@ tmp187,
	mov	r0, #0	@ D.34194,
	movt	r1, 48	@ tmp187,
	ldr	r5, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	ip, [r5, #16]	@ D.34196, *_19
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r4, [ip, #36]	@ tmp175, *_25
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	lr, [ip, #12]	@ tmp181, *_31
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp187, *_37
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp187, *_42
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp187, *_47
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp187, *_52
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp187, *_57
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp187, *_62
	ldr	r3, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp187, *_67
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L251:
	mvn	r0, #0	@ D.34194,
	bx	lr	@
.L252:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4]	@ p32, pHwMem_7(D)->pVdmRegVirAddr
	bne	.L243	@
.L244:
	mvn	r0, #0	@ D.34194,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L254:
	.align	2
.L253:
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
	cmp	r1, #0	@ pDecReport
	beq	.L287	@,
	movw	r3, #1144	@ tmp163,
	mul	r3, r3, r2	@ tmp162, tmp163, VdhId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L291	@ tmp241,
	add	r9, r8, r3	@ tmp164, tmp241, tmp162
	ldr	r3, [r8, r3]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].pVdmRegVirAddr,
	beq	.L258	@,
	ldr	r3, .L291+4	@ tmp166,
	mov	r6, r1	@ pDecReport, pDecReport
	mov	r7, r0	@ VidStd, VidStd
	mov	r1, #528	@,
	mov	r0, r6	@, pDecReport
	mov	r4, r2	@ VdhId, VdhId
	ldr	r5, [r3]	@ D.34225, g_DSPState
	bl	__memzero	@
	ldr	r1, .L291+8	@ tmp242,
	mov	r3, #180	@ tmp175,
	ldr	r2, [r9, #24]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride
	mla	r3, r3, r4, r1	@ tmp176, tmp175, VdhId, tmp242
	str	r2, [r6, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride, pDecReport_11(D)->ImgStride
	ldr	r3, [r3, #4]	@ D.34218, g_BackUp[VdhId_10(D)].VdmState
	mov	r3, r3, lsr #17	@ D.34218, D.34218,
	and	r2, r3, #3	@ D.34218, D.34218,
	cmp	r2, #1	@ D.34218,
	moveq	r3, #0	@ D.34218,
	beq	.L259	@,
	eor	r3, r3, #1	@ tmp182, D.34218,
	and	r3, r3, #1	@ tmp184, tmp182,
	cmp	r7, #3	@ VidStd,
	orrne	r3, r3, #1	@,, D.34218, tmp184
.L259:
	mov	r2, #180	@ tmp189,
	str	r3, [r6]	@ D.34218, pDecReport_11(D)->RetType
	mla	r2, r2, r4, r1	@ tmp190, tmp189, VdhId, tmp242
	cmp	r7, #0	@ VidStd,
	cmpne	r7, #15	@, VidStd,
	ldr	r3, [r2, #4]	@ g_BackUp[VdhId_10(D)].VdmState, g_BackUp[VdhId_10(D)].VdmState
	ubfx	r3, r3, #0, #17	@ D.34218, g_BackUp[VdhId_10(D)].VdmState,,
	str	r3, [r6, #8]	@ D.34218, pDecReport_11(D)->DecSliceNum
	beq	.L288	@,
.L260:
	cmp	r3, #128	@ D.34218,
	movhi	r3, #0	@ tmp222,
	strhi	r3, [r6, #8]	@ tmp222, pDecReport_11(D)->DecSliceNum
	movw	r3, #1144	@ tmp225,
	mla	r8, r3, r4, r8	@ tmp226, tmp225, VdhId, tmp241
	ldr	r0, [r8, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ pMsgBase,
	beq	.L258	@,
	ldr	r3, .L291+12	@ tmp233,
	ldr	r2, [r6, #8]	@ pDecReport_11(D)->DecSliceNum, pDecReport_11(D)->DecSliceNum
	add	r4, r3, r4, lsl #11	@ D.34222, tmp233, VdhId,
	mov	r2, r2, asl #2	@, pDecReport_11(D)->DecSliceNum,
	mov	r0, r4	@, D.34222
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	r5, [r6, #8]	@ D.34218, pDecReport_11(D)->DecSliceNum
	cmp	r5, #0	@ D.34218,
	movne	r2, r4	@ ivtmp.195, D.34222
	movne	r3, r6	@ ivtmp.198, pDecReport
	movne	ip, #0	@ i,
	beq	.L267	@,
.L266:
	ldr	lr, [r2, #4]	@ MEM[base: _72, offset: 4B], MEM[base: _72, offset: 4B]
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.34218
	add	r2, r2, #16	@ ivtmp.195, ivtmp.195,
	add	r3, r3, #4	@ ivtmp.198, ivtmp.198,
	strh	lr, [r3, #8]	@ movhi	@ MEM[base: _72, offset: 4B], MEM[base: _67, offset: 12B]
	ldr	lr, [r2, #-8]	@ MEM[base: _72, offset: 8B], MEM[base: _72, offset: 8B]
	strh	lr, [r3, #10]	@ movhi	@ MEM[base: _72, offset: 8B], MEM[base: _67, offset: 14B]
	bne	.L266	@,
.L267:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.34215
	beq	.L289	@,
	ldr	r2, [r6, #8]	@ pDecReport_11(D)->DecSliceNum, pDecReport_11(D)->DecSliceNum
	mov	r3, #0	@ i_cnt,
	mov	r2, r2, asl #2	@ D.34218, pDecReport_11(D)->DecSliceNum,
	sub	r2, r2, #3	@ D.34218, D.34218,
.L268:
	add	r3, r3, #4	@ i_cnt, i_cnt,
	cmp	r3, r2	@ i_cnt, D.34218
	bcc	.L268	@,
	mov	r0, #0	@ D.34215,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L288:
	cmp	r5, #1	@ D.34225,
	beq	.L290	@,
	ldr	r1, .L291+16	@ tmp212,
	ldrb	r1, [r1]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L260	@,
	ldrb	r2, [r2, #19]	@ zero_extendqisi2	@ D.34218, g_BackUp[VdhId_10(D)].SedSta
	and	r2, r2, #3	@ D.34218, D.34218,
	cmp	r2, #2	@ D.34218,
	bne	.L260	@,
.L262:
	mov	r3, #0	@ tmp209,
	mov	r2, #1	@ tmp207,
	strh	r3, [r6, #12]	@ movhi	@ tmp209, pDecReport_11(D)->SliceMbRange
	mov	r0, r3	@ D.34215, tmp209
	strh	r3, [r6, #14]	@ movhi	@ tmp209, pDecReport_11(D)->SliceMbRange
	str	r2, [r6, #8]	@ tmp207, pDecReport_11(D)->DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L289:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L290:
	ldr	r2, [r2, #16]	@ g_BackUp[VdhId_10(D)].SedSta, g_BackUp[VdhId_10(D)].SedSta
	ubfx	r2, r2, #21, #2	@ D.34218, g_BackUp[VdhId_10(D)].SedSta,,
	cmp	r2, #2	@ D.34218,
	bne	.L260	@,
	b	.L262	@
.L258:
	mvn	r0, #0	@ D.34215,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L287:
	mvn	r0, #0	@ D.34215,
	bx	lr	@
.L292:
	.align	2
.L291:
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
	cmp	r3, #0	@ VdhId
	bgt	.L305	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #1144	@ tmp125,
	mul	r6, r6, r3	@ tmp124, tmp125, VdhId
	ldr	r7, .L307	@ tmp149,
	mov	r5, r3	@ VdhId, VdhId
	mov	r4, r2	@ RepairTime, RepairTime
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r2, r1	@ pDecParam, pDecParam
	mov	r8, r0	@ VidStd, VidStd
	ldr	r3, [r7, r6]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L306	@,
.L296:
	cmp	r4, #0	@ RepairTime,
	bne	.L298	@,
	movw	r3, #1144	@ tmp135,
	ldr	r6, .L307+4	@ tmp133,
	mul	r3, r3, r5	@ tmp134, tmp135, VdhId
	add	r6, r6, r3	@ tmp136, tmp133, tmp134
	ldr	r1, [r6, #552]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum
	cmp	r1, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum,
	ble	.L297	@,
	add	r7, r7, r3	@ pHwMem, tmp149, tmp134
	mov	r0, r8	@, VidStd
	mov	r3, r5	@, VdhId
	mov	r1, r7	@, pHwMem
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r2, r5	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, r6	@, tmp136
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, r4	@ D.34228, RepairTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L298:
	cmp	r4, #1	@ RepairTime,
	movne	r0, #0	@ D.34228,
	mvneq	r0, #0	@ D.34228,
.L295:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L305:
	mvn	r0, #0	@ D.34228,
	bx	lr	@
.L306:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ pDecParam, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r7, r6]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	ldrne	r2, [sp, #4]	@ pDecParam, %sfp
	bne	.L296	@
.L297:
	mvn	r0, #0	@ D.34228,
	b	.L295	@
.L308:
	.align	2
.L307:
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
	movw	r4, #1144	@ tmp130,
	mul	r4, r4, r0	@ tmp129, tmp130, VdhId
	ldr	r5, .L311	@ tmp128,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	ldr	r6, [r3, #8]	@ dat, *_6
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L311+4	@ tmp135,
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
	ldr	r2, [r5, r4]	@ D.34234, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	mov	r3, #0	@ tmp147,
	mov	r1, #1	@ tmp152,
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_21]
	ldr	r2, [r5, r4]	@ D.34234, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r1, [r2]	@ tmp152, MEM[(volatile HI_S32 *)_23]
	ldr	r2, [r5, r4]	@ D.34234, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_25]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L312:
	.align	2
.L311:
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
	beq	.L318	@,
.L314:
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ldmgtfd	sp!, {r4, pc}	@
	movw	r3, #1144	@ tmp125,
	ldr	r2, .L319	@ tmp123,
	mul	r0, r3, r4	@ tmp124, tmp125, VdhId
	movw	r3, #43690	@ tmp128,
	bfi	r3, r3, #16, #16	@ tmp128, tmp128,,
	mov	r1, #0	@ tmp133,
	mov	ip, #1	@ tmp138,
	ldr	lr, [r2, r0]	@ g_HwMem[VdhId_3(D)].pVdmRegVirAddr, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [lr, #156]	@ tmp128, *_12
	ldr	r3, [r2, r0]	@ D.34242, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r1, [r3]	@ tmp133, MEM[(volatile HI_S32 *)_14]
	ldr	r3, [r2, r0]	@ D.34242, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	ip, [r3]	@ tmp138, MEM[(volatile HI_S32 *)_16]
	ldr	r3, [r2, r0]	@ D.34242, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r1, [r3]	@ tmp133, MEM[(volatile HI_S32 *)_18]
	ldmfd	sp!, {r4, pc}	@
.L318:
	ldr	r3, .L319+4	@ tmp120,
	mov	r1, #3	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L314	@
.L320:
	.align	2
.L319:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
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
	ldr	r1, .L322	@ tmp110,
	mov	r0, #11	@ tmp111,
	ldr	r3, .L322+4	@ tmp112,
	mov	r2, #4	@ tmp113,
	str	r0, [r1]	@ tmp111, g_VdmCharacter
	str	r2, [r3]	@ tmp113, g_eVdmVersion
	bx	lr	@
.L323:
	.align	2
.L322:
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
	beq	.L325	@,
	cmp	ip, #2	@ PicStructure,
	moveq	r7, #1	@ PicStructure,
	movne	r7, #2	@ PicStructure,
.L325:
	cmp	r0, #0	@ fpYuv,
	beq	.L324	@,
	mov	r8, r3	@ Height, Height
	mov	r3, #0	@ tmp309,
	str	r0, [sp, #16]	@ fpYuv, %sfp
	mov	r4, r2	@ Width, Width
	str	r3, [sp]	@ tmp309,
	mov	r5, r1	@ Yaddress, Yaddress
	mov	r2, #4194304	@,
	mov	r1, r3	@, tmp309
	ldr	r0, .L425	@,
	add	r3, sp, #48	@ tmp511,,
	bl	MEM_AllocMemBlock	@
	subs	r1, r0, #0	@ D.34366,
	beq	.L422	@,
.L324:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L422:
	str	r1, [sp]	@ D.34366,
	mov	r2, #4194304	@,
	add	r3, sp, #64	@ tmp512,,
	ldr	r0, .L425+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@ D.34366
	bne	.L328	@,
	add	r4, r4, #15	@ D.34365, Width,
	ldr	r3, [sp, #68]	@ ul, MemRecord_ul.VirAddr
	bic	r4, r4, #15	@ ImgWidthInPixAln, D.34365,
	ldr	r2, [sp, #52]	@ YUV, MemRecord_y.VirAddr
	add	r9, r4, #255	@ D.34366, ImgWidthInPixAln,
	add	r8, r8, #15	@ D.34365, Height,
	bic	r9, r9, #255	@ D.34366, D.34366,
	str	r3, [sp, #28]	@ ul, %sfp
	add	r3, r3, #2097152	@ vl, ul,
	str	r3, [sp, #32]	@ vl, %sfp
	mov	r3, r9, asl #4	@ Stride, D.34366,
	str	r2, [sp, #24]	@ YUV, %sfp
	bic	r8, r8, #15	@ ImgHeightInPixAln, D.34365,
	str	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r3	@ Stride, Stride
	cmp	r2, #0	@ Stride,
	add	r3, r3, #15	@ tmp321, Stride,
	movge	r3, r2	@ Stride, Stride
	adds	r6, r8, #31	@ D.34366, ImgHeightInPixAln,
	addmi	r6, r8, #62	@, D.34366, ImgHeightInPixAln,
	mov	r3, r3, asr #4	@ D.34366, Stride,
	cmp	r7, #0	@ PicStructure,
	cmpne	r7, #3	@, PicStructure,
	mov	r6, r6, asr #5	@ D.34366, D.34366,
	mla	r6, r6, r3, r5	@ Caddress, D.34366, D.34366, Yaddress
	bne	.L329	@,
	cmp	r8, #0	@ ImgHeightInPixAln,
	mov	r3, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r3, [sp, #36]	@ chrom_width, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #20]	@ chrom_height, %sfp
	beq	.L330	@,
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	r10, r0	@ i, D.34366
	str	r6, [sp, #40]	@ Caddress, %sfp
	mov	r9, r3	@ ivtmp.252, ivtmp.252
.L331:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L334	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.34365, i,
	and	r7, r10, #15	@ D.34365, i,
	mov	fp, r9	@ ivtmp.249, ivtmp.252
	mov	r6, #0	@ j,
	mul	r2, r3, r2	@ D.34365, Stride, D.34365
	add	r7, r2, r7, lsl #8	@ D.34367, D.34365, D.34365,
.L333:
	mov	r1, r6, lsr #8	@ D.34365, j,
	cmp	fp, #0	@ ivtmp.249,
	mov	r2, #256	@,
	mov	r0, fp	@, ivtmp.249
	add	r1, r7, r1, lsl #12	@ D.34367, D.34367, D.34365,
	add	fp, fp, r2	@ ivtmp.249, ivtmp.249,
	add	r6, r6, r2	@ j, j,
	add	r1, r5, r1	@ src, Yaddress, D.34367
	beq	.L332	@,
	bl	memcpy	@
.L332:
	cmp	r4, r6	@ ImgWidthInPixAln, j
	bhi	.L333	@,
.L334:
	add	r10, r10, #1	@ i, i,
	add	r9, r9, r4	@ ivtmp.252, ivtmp.252, ImgWidthInPixAln
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bne	.L331	@,
	ldr	r6, [sp, #40]	@ Caddress, %sfp
.L330:
	mul	r1, r4, r8	@, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	mov	r0, r8	@, YUV
	bl	klib_fwrite	@
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L335	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	r9, r3, asr #1	@ D.34365, Stride,
.L336:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L340	@,
	mov	r2, r7, lsr #3	@ D.34365, i,
	and	r5, r7, #7	@ D.34365, i,
	mov	r10, r8	@ ivtmp.241, ivtmp.244
	mov	fp, #0	@ j,
	mul	r2, r9, r2	@ D.34365, D.34365, D.34365
	add	r5, r2, r5, lsl #8	@ D.34367, D.34365, D.34365,
.L338:
	mov	r1, fp, lsr #8	@ D.34365, j,
	cmp	r10, #0	@ ivtmp.241,
	mov	r2, #256	@,
	mov	r0, r10	@, ivtmp.241
	add	r1, r5, r1, lsl #11	@ D.34367, D.34367, D.34365,
	add	r10, r10, r2	@ ivtmp.241, ivtmp.241,
	add	fp, fp, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.34367
	beq	.L337	@,
	bl	memcpy	@
.L337:
	cmp	r4, fp	@ ImgWidthInPixAln, j
	bhi	.L338	@,
.L340:
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.244, ivtmp.244, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L336	@,
	ldr	r3, [sp, #120]	@ tmp527, chroma_idc
	cmp	r3, #1	@ tmp527,
	beq	.L423	@,
.L342:
	ldr	r3, [sp, #120]	@ tmp529, chroma_idc
	cmp	r3, #0	@ tmp529,
	bne	.L343	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L343:
	ldr	r2, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r5, [sp, #16]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	r4, r3, r2	@ D.34366, chrom_width, chrom_height
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.34366
	bl	klib_fwrite	@
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.34366
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
	b	.L348	@
.L329:
	subs	r3, r7, #1	@ i, PicStructure,
	mov	r2, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r2, [sp, #36]	@ chrom_width, %sfp
	movne	r3, #1	@ i,
	cmp	r8, r3	@ ImgHeightInPixAln, i
	str	r3, [sp, #40]	@ i, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #20]	@ chrom_height, %sfp
	bls	.L350	@,
	ldr	r10, [sp, #40]	@ i, %sfp
	ldr	fp, [sp, #24]	@ YUV, %sfp
	str	r6, [sp, #44]	@ Caddress, %sfp
.L353:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L354	@,
	ldr	r1, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.34365, i,
	mov	r3, r10, lsr #1	@ D.34365, i,
	and	r7, r10, #15	@ D.34365, i,
	mov	r9, #0	@ j,
	mul	r2, r1, r2	@ D.34365, Stride, D.34365
	mla	r6, r4, r3, fp	@ ivtmp.289, ImgWidthInPixAln, D.34365, YUV
	add	r7, r2, r7, lsl #8	@ D.34367, D.34365, D.34365,
.L352:
	mov	r1, r9, lsr #8	@ D.34365, j,
	cmp	r6, #0	@ ivtmp.289,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.289
	add	r1, r7, r1, lsl #12	@ D.34367, D.34367, D.34365,
	add	r9, r9, r2	@ j, j,
	add	r1, r5, r1	@, Yaddress, D.34367
	add	r6, r6, r2	@ ivtmp.289, ivtmp.289,
	beq	.L351	@,
	bl	memcpy	@
.L351:
	cmp	r4, r9	@ ImgWidthInPixAln, j
	bhi	.L352	@,
.L354:
	add	r10, r10, #2	@ i, i,
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bhi	.L353	@,
	ldr	r6, [sp, #44]	@ Caddress, %sfp
.L350:
	mul	r1, r4, r8	@ D.34365, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	mov	r0, r8	@, YUV
	mov	r1, r1, lsr #1	@, D.34365,
	bl	klib_fwrite	@
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L355	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	fp, r3, asr #1	@ D.34365, Stride,
.L356:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L360	@,
	mov	r2, r7, lsr #3	@ D.34365, i,
	and	r5, r7, #7	@ D.34365, i,
	mov	r9, r8	@ ivtmp.281, ivtmp.284
	mov	r10, #0	@ j,
	mul	r2, fp, r2	@ D.34365, D.34365, D.34365
	add	r5, r2, r5, lsl #8	@ D.34367, D.34365, D.34365,
.L358:
	mov	r1, r10, lsr #8	@ D.34365, j,
	cmp	r9, #0	@ ivtmp.281,
	mov	r2, #256	@,
	mov	r0, r9	@, ivtmp.281
	add	r1, r5, r1, lsl #11	@ D.34367, D.34367, D.34365,
	add	r9, r9, r2	@ ivtmp.281, ivtmp.281,
	add	r10, r10, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.34367
	beq	.L357	@,
	bl	memcpy	@
.L357:
	cmp	r4, r10	@ ImgWidthInPixAln, j
	bhi	.L358	@,
.L360:
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.284, ivtmp.284, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L356	@,
	ldr	r3, [sp, #120]	@ tmp540, chroma_idc
	cmp	r3, #1	@ tmp540,
	beq	.L424	@,
.L362:
	ldr	r3, [sp, #120]	@ tmp543, chroma_idc
	cmp	r3, #0	@ tmp543,
	bne	.L363	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L363:
	ldr	r2, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r4, [sp, #16]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	fp, r3, r2	@ D.34366, chrom_width, chrom_height
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.34366
	bl	klib_fwrite	@
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.34366
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
.L348:
	ldr	r1, [sp, #68]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@ tmp546,,
	mov	r1, #16	@,
	bl	__memzero	@
.L328:
	ldr	r1, [sp, #52]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@ tmp547,,
	mov	r1, #16	@,
	bl	__memzero	@
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L424:
	ldr	r3, [sp, #40]	@ i, %sfp
	mov	ip, #0	@ i,
	ldr	r2, [sp, #24]	@ YUV, %sfp
	ldr	r6, [sp, #28]	@ ul, %sfp
	ldr	r5, [sp, #36]	@ chrom_width, %sfp
	mla	r0, r4, r3, r2	@ D.34367, ImgWidthInPixAln, i, YUV
	ldr	r7, [sp, #20]	@ chrom_height, %sfp
	mov	r4, r4, asl #1	@ D.34365, ImgWidthInPixAln,
	add	r0, r0, #1	@ ivtmp.277, D.34367,
.L364:
	cmp	r5, #0	@ chrom_width,
	beq	.L367	@,
	mov	r3, ip, lsr #1	@ D.34365, i,
	mov	r2, r0	@ ivtmp.266, ivtmp.277
	mul	r3, r5, r3	@ D.34365, chrom_width, D.34365
	sub	r1, r3, #-67108863	@ D.34367, D.34365,
	add	r8, r3, r5	@ D.34367, D.34365, chrom_width
	sub	r1, r1, #65011712	@ D.34367, D.34367,
	add	r8, r6, r8	@ D.34371, ul, D.34367
	add	r1, r6, r1	@ ivtmp.259, ul, D.34367
	add	r3, r6, r3	@ ivtmp.268, ul, D.34365
.L365:
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.34372, MEM[base: _284, offset: 4294967295B]
	strb	lr, [r1, #1]!	@ D.34372, MEM[base: _281, offset: 0B]
	ldrb	lr, [r2], #2	@ zero_extendqisi2	@ D.34372, MEM[base: _284, offset: 0B]
	strb	lr, [r3], #1	@ D.34372, MEM[base: _278, offset: 0B]
	cmp	r3, r8	@ ivtmp.268, D.34371
	bne	.L365	@,
.L367:
	add	ip, ip, #2	@ i, i,
	add	r0, r0, r4	@ ivtmp.277, ivtmp.277, D.34365
	cmp	r7, ip	@ chrom_height, i
	bhi	.L364	@,
	b	.L363	@
.L423:
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	lr, #0	@ i,
	ldr	r6, [sp, #36]	@ chrom_width, %sfp
	add	r5, r3, #1	@ ivtmp.236, YUV,
	ldr	r7, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #28]	@ ivtmp.235, %sfp
.L344:
	cmp	r6, #0	@ chrom_width,
	moveq	ip, r3	@ ivtmp.235, ivtmp.235
	beq	.L347	@,
	sub	r1, r3, #-67108863	@ ivtmp.216, ivtmp.235,
	add	ip, r3, r6	@ ivtmp.235, ivtmp.235, chrom_width
	sub	r1, r1, #65011712	@ ivtmp.216, ivtmp.216,
	mov	r2, r5	@ ivtmp.223, ivtmp.236
.L345:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ D.34372, MEM[base: _153, offset: 4294967295B]
	strb	r0, [r1, #1]!	@ D.34372, MEM[base: _154, offset: 0B]
	ldrb	r0, [r2], #2	@ zero_extendqisi2	@ D.34372, MEM[base: _153, offset: 0B]
	strb	r0, [r3], #1	@ D.34372, MEM[base: _156, offset: 0B]
	cmp	ip, r3	@ ivtmp.235, ivtmp.225
	bne	.L345	@,
.L347:
	add	lr, lr, #1	@ i, i,
	mov	r3, ip	@ ivtmp.235, ivtmp.235
	cmp	lr, r7	@ i, chrom_height
	add	r5, r5, r4	@ ivtmp.236, ivtmp.236, ImgWidthInPixAln
	bne	.L344	@,
	b	.L343	@
.L355:
	ldr	r3, [sp, #120]	@ tmp549, chroma_idc
	cmp	r3, #1	@ tmp549,
	bne	.L362	@,
	b	.L363	@
.L335:
	ldr	r3, [sp, #120]	@ tmp548, chroma_idc
	cmp	r3, #1	@ tmp548,
	bne	.L342	@,
	b	.L343	@
.L426:
	.align	2
.L425:
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
