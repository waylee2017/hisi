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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
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
	cmp	r2, #0	@ VdhId,
	movw	ip, #22527	@ tmp186,
	movt	ip, 7	@ tmp186,
	movle	r3, #0	@ tmp188,
	movgt	r3, #1	@ tmp188,
	cmp	r1, ip	@ Size, tmp186
	movgt	ip, r3	@, tmp189, tmp188
	orrle	ip, r3, #1	@,, tmp189, tmp188
	cmp	r0, #0	@ MemBaseAddr,
	orreq	ip, ip, #1	@,, tmp195, tmp189
	cmp	ip, #0	@ tmp195,
	bne	.L12	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1	@ Size, Size
	movw	r1, #1140	@ tmp197,
	ldr	r8, .L13	@ tmp320,
	mul	r4, r1, r2	@ tmp196, tmp197, VdhId
	mov	r7, r0	@ MemBaseAddr, MemBaseAddr
	mov	r9, r2	@ VdhId, VdhId
	add	r5, r8, r4	@ __p, tmp320, tmp196
	mov	r0, r5	@, __p
	bl	__memzero	@
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	str	r0, [r8, r4]	@, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r0, #0	@,
	movt	r0, 4116	@,
	bl	MEM_Phy2Vir	@
	add	r2, r7, #1020	@ D.34293, MemBaseAddr,
	add	r2, r2, #3	@ D.34293, D.34293,
	add	r3, r4, #24	@ D.34295, tmp196,
	bic	r2, r2, #1020	@ D.34293, D.34293,
	add	lr, r4, #588	@ D.34295, tmp196,
	bic	r2, r2, #3	@ D.34293, D.34293,
	add	r3, r8, r3	@ ivtmp.74, tmp320, D.34295
	add	lr, r8, lr	@ D.34297, tmp320, D.34295
	rsb	r1, r2, r7	@ D.34293, D.34293, MemBaseAddr
	mov	ip, r2	@ ivtmp.71, D.34293
	add	r1, r1, r6	@ D.34293, D.34293, Size
	mov	r4, #1024	@ tmp230,
	str	r2, [r5, #16]	@ D.34293, g_HwMem[VdhId_12(D)].HALMemBaseAddr
	str	r1, [r5, #20]	@ D.34293, g_HwMem[VdhId_12(D)].HALMemSize
	str	r4, [r5, #24]	@ tmp230, g_HwMem[VdhId_12(D)].VahbStride
	str	r0, [r5, #8]	@, g_HwMem[VdhId_12(D)].pBpdRegVirAddr
.L5:
	str	ip, [r3, #4]!	@ ivtmp.71, MEM[base: _75, offset: 0B]
	cmp	r3, lr	@ ivtmp.74, D.34297
	add	ip, ip, #1024	@ ivtmp.71, ivtmp.71,
	bne	.L5	@,
	movw	r3, #1140	@ tmp238,
	add	r2, r2, #144384	@ PhyAddr, D.34293,
	mla	r3, r3, r9, r8	@ tmp239, tmp238, VdhId, tmp320
	add	r1, r2, #331776	@ PhyAddr, PhyAddr,
	add	r1, r1, #3072	@ PhyAddr, PhyAddr,
	add	ip, r2, #299008	@ PhyAddr, PhyAddr,
	rsb	r1, r7, r1	@ D.34293, MemBaseAddr, PhyAddr
	add	r0, ip, #3072	@ PhyAddr, PhyAddr,
	cmp	r6, r1	@ Size, D.34293
	add	r4, r2, #38912	@ PhyAddr, PhyAddr,
	add	r1, r2, #83968	@ PhyAddr, PhyAddr,
	add	r6, r2, #5120	@ PhyAddr, PhyAddr,
	add	lr, r2, #129024	@ PhyAddr, PhyAddr,
	mov	r7, #141	@ tmp242,
	str	ip, [r3, #1112]	@ PhyAddr, g_HwMem[VdhId_12(D)].IntensityConvTabAddr
	add	ip, r2, #196608	@ PhyAddr, PhyAddr,
	str	r2, [r3, #1076]	@ PhyAddr, g_HwMem[VdhId_12(D)].H264MnAddr
	movw	r2, #799	@ tmp294,
	str	r0, [r3, #1120]	@ PhyAddr, g_HwMem[VdhId_12(D)].DnrMbInfoAddr
	str	r0, [r3, #1116]	@ PhyAddr, g_HwMem[VdhId_12(D)].VpTabAddr
	str	r7, [r3, #1052]	@ tmp242, g_HwMem[VdhId_12(D)].ValidMsgSlotNum
	str	r6, [r3, #1080]	@ PhyAddr, g_HwMem[VdhId_12(D)].SedTopAddr
	str	r4, [r3, #1084]	@ PhyAddr, g_HwMem[VdhId_12(D)].PmvTopAddr
	str	lr, [r3, #1096]	@ PhyAddr, g_HwMem[VdhId_12(D)].DblkTopAddr
	str	ip, [r3, #1100]	@ PhyAddr, g_HwMem[VdhId_12(D)].PpfdBufAddr
	str	r1, [r3, #1088]	@ PhyAddr, g_HwMem[VdhId_12(D)].RcnTopAddr
	str	r1, [r3, #1092]	@ PhyAddr, g_HwMem[VdhId_12(D)].ItransTopAddr
	str	r2, [r3, #1104]	@ tmp294, g_HwMem[VdhId_12(D)].PpfdBufLen
	blt	.L6	@,
	mov	r0, r5	@, __p
	bl	H264HAL_V200R004_InitHal	@
	adds	r0, r0, #0	@ D.34290,,
	movne	r0, #1	@ D.34290,
	rsb	r0, r0, #0	@ D.34291, D.34290
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L12:
	mvn	r0, #0	@ D.34291,
	bx	lr	@
.L6:
	mvn	r0, #0	@ D.34291,
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
	ldr	r3, [r3, #40]	@ D.34300, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.34300,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r4	@, VdhId
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.34300
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
	add	r0, r0, #15	@ D.34303, Width,
	add	r1, r1, #15	@ D.34303, Height,
	mov	r0, r0, asr #4	@ ImgWidthInMb, D.34303,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.34303,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r0, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	movle	r3, #64	@ ColMbSize,
	movgt	r3, #32	@ ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r3, #64	@ ColMbSize,
	mul	r0, r0, r3	@ D.34303, ImgWidthInMb, ColMbSize
	mul	r1, r1, r0	@ D.34303, ImgHeightInMb, D.34303
	add	r0, r1, #127	@ D.34303, D.34303,
	bic	r0, r0, #127	@, D.34303,
	bx	lr	@
.L31:
	.align	2
.L30:
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
	beq	.L35	@,
	sub	r0, r2, #32	@ D.34335, Width,
	movw	lr, #8160	@ tmp209,
	cmp	r0, lr	@ D.34335, tmp209
	bhi	.L35	@,
	clz	ip, r7	@ tmp215, pVdmMemArrange
	sub	r0, r3, #32	@ D.34335, Height,
	mov	ip, ip, lsr #5	@ tmp215, tmp215,
	cmp	r0, lr	@ D.34335, tmp209
	orrhi	ip, ip, #1	@,, tmp218, tmp215
	cmp	ip, #0	@ tmp218,
	bne	.L35	@,
	cmp	r6, #20	@ PmvNum,
	mov	fp, r1	@ MemSize, MemSize
	mov	r0, r7	@, pVdmMemArrange
	mov	r1, #416	@,
	mov	r5, r3	@ Height, Height
	mov	r4, r2	@ Width, Width
	movge	r6, #20	@ PmvNum,
	bl	__memzero	@
	add	r2, r4, #15	@ D.34338, Width,
	add	r3, r5, #15	@ D.34338, Height,
	ldr	r1, .L68	@ tmp228,
	mov	r5, r2, asr #4	@ ImgWidthInMb, D.34338,
	mov	r3, r3, asr #4	@ ImgHeightInMb, D.34338,
	cmp	r5, #45	@ ImgWidthInMb,
	cmple	r3, #36	@, ImgHeightInMb,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mov	r0, r5, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movle	ip, #64	@ ColMbSize,
	movgt	ip, #32	@ ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	mov	r4, r3, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	moveq	ip, #64	@ ColMbSize,
	mul	r5, r5, ip	@ D.34338, ImgWidthInMb, ColMbSize
	mul	r5, r3, r5	@ D.34338, ImgHeightInMb, D.34338
	add	r5, r5, #127	@ D.34338, D.34338,
	bic	r5, r5, #127	@ PmvSlotLen, D.34338,
	mul	r3, r6, r5	@ PmvPoolSize, PmvNum, PmvSlotLen
	cmp	r3, fp	@ PmvPoolSize, MemSize
	bge	.L35	@,
	ldr	r2, [sp, #56]	@ tmp323, UserDec
	add	r3, r0, #255	@ D.34338, ImgWidthInPixAln,
	str	r6, [r7, #404]	@ PmvNum, pVdmMemArrange_23(D)->ValidPMVNum
	cmp	r2, #1	@ tmp323,
	bic	r2, r3, #255	@ SlotWidth, D.34338,
	mov	r3, r5, asr #1	@ D.34338, PmvSlotLen,
	str	r3, [r7, #400]	@ D.34338, pVdmMemArrange_23(D)->HafPmvOffset
	mov	r3, r2, asl #4	@ D.34338, SlotWidth,
	str	r3, [r7]	@ D.34338, pVdmMemArrange_23(D)->VahbStride
	beq	.L65	@,
	adds	r3, r4, #31	@ D.34338, ImgHeightInPixAln,
	addmi	r3, r4, #62	@, D.34338, ImgHeightInPixAln,
	mov	r3, r3, asr #5	@ D.34338, D.34338,
	mul	r3, r2, r3	@ D.34338, SlotWidth, D.34338
	mov	r6, r3, asl #7	@ tmp251, D.34338,
	sub	r6, r6, r3, asl #5	@ D.34338, tmp251, D.34338,
	mov	r6, r6, asr #1	@ ImgSlotLen, D.34338,
.L39:
	cmp	r8, #0	@ ChanID,
	blt	.L45	@,
	mov	r0, r8	@, ChanID
	str	r2, [sp, #4]	@ SlotWidth, %sfp
	bl	VCTRL_GetChanWidth	@
	str	r0, [sp]	@ ChanWidth, %sfp
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanHeight	@
	ldr	ip, [sp]	@ ChanWidth, %sfp
	cmn	r0, #1	@ ChanHeight,
	cmnne	ip, #1	@, ChanWidth,
	mov	r3, r0	@ ChanHeight,
	beq	.L35	@,
	ldr	r2, [sp, #56]	@ tmp324, UserDec
	add	r0, ip, #15	@ D.34338, ChanWidth,
	bic	r0, r0, #15	@ ChanImgWidthInPixAln, D.34338,
	add	r3, r3, #15	@ D.34338, ChanHeight,
	cmp	r2, #1	@ tmp324,
	add	r0, r0, #255	@ D.34338, ChanImgWidthInPixAln,
	bic	r3, r3, #15	@ ChanImgHeightInPixAln, D.34338,
	bic	r0, r0, #255	@ ChanSlotWidth, D.34338,
	ldr	r2, [sp, #4]	@ SlotWidth, %sfp
	beq	.L66	@,
	adds	ip, r3, #31	@ D.34338, ChanImgHeightInPixAln,
	addmi	r3, r3, #62	@, D.34338, ChanImgHeightInPixAln,
	movpl	r3, ip	@, D.34338, D.34338
	mov	r3, r3, asr #5	@ D.34338, D.34338,
	mul	r0, r0, r3	@ D.34338, ChanSlotWidth, D.34338
	mov	r3, r0, asl #7	@ tmp288, D.34338,
	sub	r3, r3, r0, asl #5	@ D.34338, tmp288, D.34338,
	mov	r3, r3, asr #1	@ ChanSlotLen, D.34338,
.L44:
	cmp	r6, r3	@ ImgSlotLen, ChanSlotLen
	bgt	.L35	@,
.L45:
	adds	r3, r4, #31	@ D.34338, ImgHeightInPixAln,
	addmi	r3, r4, #62	@, D.34338, ImgHeightInPixAln,
	cmp	r9, #0	@ FrameNum,
	mov	r3, r3, asr #5	@ D.34338, D.34338,
	mul	r3, r2, r3	@ D.34338, SlotWidth, D.34338
	mov	r3, r3, asl #5	@ D.34338, D.34338,
	str	r3, [r7, #264]	@ D.34338, pVdmMemArrange_23(D)->ChromOffset
	beq	.L67	@,
	add	r3, r10, #1020	@ D.34338, MemAddr,
	cmp	r9, #64	@ FrameNum,
	add	r3, r3, #3	@ D.34338, D.34338,
	mov	r1, r6	@, ImgSlotLen
	bic	r4, r3, #1020	@ D.34338, D.34338,
	movge	r9, #64	@ D.34338,
	bic	r4, r4, #3	@ D.34338, D.34338,
	rsb	r10, r10, r4	@ Offset, MemAddr, D.34338
	rsb	r0, r10, fp	@, Offset, MemSize
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ D.34338,
	movlt	r1, r9	@ D.34338, D.34338
	movge	r1, r0	@ D.34338,
	cmp	r1, #0	@ D.34338,
	str	r1, [r7, #276]	@ D.34338, pVdmMemArrange_23(D)->ValidFrameNum
	beq	.L35	@,
	addgt	ip, r7, #4	@ ivtmp.106, pVdmMemArrange,
	movgt	r3, r4	@ ivtmp.103, D.34338
	movgt	r2, #0	@ i,
	ble	.L50	@,
.L49:
	add	r2, r2, #1	@ i, i,
	str	r3, [ip, #4]!	@ ivtmp.103, MEM[base: _135, offset: 0B]
	cmp	r2, r1	@ i, D.34338
	add	r3, r3, r6	@ ivtmp.103, ivtmp.103, ImgSlotLen
	bne	.L49	@,
.L50:
	cmp	r8, #0	@ ChanID,
	mla	r1, r1, r6, r10	@ Offset, D.34338, ImgSlotLen, Offset
	blt	.L48	@,
	ldr	r3, .L68+4	@ tmp304,
	ldr	lr, [r3, r8, asl #2]	@ D.34340, s_pstVfmwChan
	cmp	lr, #0	@ D.34340,
	beq	.L48	@,
	ldr	r4, [r7, #404]	@ D.34338, pVdmMemArrange_23(D)->ValidPMVNum
	add	lr, lr, #217088	@ tmp315, D.34340,
	ldr	r3, [lr, #416]	@ _101->stChanMem_pmv.Length, _101->stChanMem_pmv.Length
	mul	r2, r5, r4	@ D.34338, PmvSlotLen, D.34338
	cmp	r2, r3	@ D.34338, _101->stChanMem_pmv.Length
	bgt	.L35	@,
	cmp	r4, #0	@ D.34338,
	ble	.L48	@,
	mov	r2, #0	@ ivtmp.91,
	add	r0, r7, #276	@ ivtmp.93, pVdmMemArrange,
	mov	ip, r2	@ i, ivtmp.91
.L51:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [lr, #412]	@ _101->stChanMem_pmv.PhyAddr, _101->stChanMem_pmv.PhyAddr
	cmp	ip, r4	@ i, D.34338
	add	r3, r3, r2	@ D.34338, _101->stChanMem_pmv.PhyAddr, ivtmp.91
	add	r2, r2, r5	@ ivtmp.91, ivtmp.91, PmvSlotLen
	str	r3, [r0, #4]!	@ D.34338, MEM[base: _20, offset: 0B]
	bne	.L51	@,
.L48:
	mov	r3, #1024	@ tmp303,
	mov	r0, #0	@ D.34334,
	str	r1, [r7, #4]	@ Offset, pVdmMemArrange_23(D)->TotalMemUsed
	str	r6, [r7, #408]	@ ImgSlotLen, pVdmMemArrange_23(D)->ImgSlotLen
	str	r3, [r7, #412]	@ tmp303, pVdmMemArrange_23(D)->u32StrideByte
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L67:
	mvn	r0, #0	@ D.34334,
	str	r9, [r7, #276]	@ FrameNum, pVdmMemArrange_23(D)->ValidFrameNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L65:
	mul	r6, r4, r2	@ D.34338, ImgHeightInPixAln, SlotWidth
	add	r6, r6, r6, lsl #1	@ ImgSlotLen, D.34338, D.34338,
	b	.L39	@
.L35:
	mvn	r0, #0	@ D.34334,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L66:
	mul	r3, r3, r0	@ D.34338, ChanImgHeightInPixAln, ChanSlotWidth
	add	r3, r3, r3, lsl #1	@ ChanSlotLen, D.34338, D.34338,
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
	movw	r3, #1140	@ tmp137,
	ldr	lr, .L84	@ tmp155,
	mul	r3, r3, r4	@ tmp136, tmp137, VdhId
	ldr	r2, .L84+4	@ tmp140,
	ldr	r1, [r2]	@ D.34355, g_pstRegCrg
	ldr	r3, [lr, r3]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r5, [r3, #36]	@ tmp, *_12
	ldr	ip, [r1, #120]	@ u32TmpValue, _14->PERI_CRG30.u32
	orr	ip, ip, #64	@ u32TmpValue, u32TmpValue,
	str	ip, [r1, #120]	@ u32TmpValue, _14->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _14->PERI_CRG93.u32
	tst	r3, #4	@ u32TmpValue_93,
	movweq	r3, #9999	@ D.34351,
	beq	.L76	@,
	b	.L75	@
.L83:
	subs	r3, r3, #1	@ D.34351, D.34351,
	beq	.L75	@,
.L76:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _14->PERI_CRG93.u32
	tst	r2, #4	@ u32TmpValue_93,
	beq	.L83	@,
.L75:
	movw	r0, #1140	@ tmp148,
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
	ldr	r1, [r3]	@ D.34368, g_pstRegCrg
	ldr	r0, [r1, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r0, r0, #16	@ u32TmpValue, u32TmpValue,
	str	r0, [r1, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #1	@ u32TmpValue_93,
	movweq	r3, #9999	@ D.34367,
	beq	.L90	@,
	b	.L89	@
.L96:
	subs	r3, r3, #1	@ D.34367, D.34367,
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
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L110	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34373, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34373,
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
	mov	r3, r0	@ D.34373, p32
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
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L123	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34378, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34378,
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
	mov	r3, r0	@ D.34378, p32
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
	movw	r3, #1140	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp117, tmp118, VdhId
	ldr	r5, .L136	@ tmp116,
	ldr	r3, [r5, r4]	@ D.34383, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34383,
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
	mov	r3, r0	@ D.34383, p32
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
	movw	r6, #1140	@ tmp124,
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
	movw	r1, #1140	@ tmp135,
	mul	r5, r1, r5	@ tmp134, tmp135, VdhId
	ldr	r2, [r7, r5]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r0, [r2, r3]	@ D.34392, *_15
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
	mvn	r0, #0	@ D.34392,
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
	mov	r0, #0	@ D.34392,
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
	movw	r3, #1140	@ tmp124,
	ldr	r2, .L169	@ tmp122,
	mul	r0, r3, r0	@ tmp123, tmp124, VdhId
	ldr	r3, [r2, r0]	@ D.34406, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34406,
	ldrne	r0, [r3, #28]	@ Data32, *_7
	ubfxne	r0, r0, #17, #1	@ D.34405, Data32,,
	mvneq	r0, #0	@ D.34405,
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
	movw	r3, #1140	@ tmp121,
	ldr	r2, .L174	@ tmp119,
	mul	r0, r3, r0	@ tmp120, tmp121, VdhId
	ldr	r0, [r2, r0]	@ D.34413, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r0, #0	@ D.34413,
	bxeq	lr	@
	ldr	r0, [r0, #40]	@ Data32, *_7
	subs	r0, r0, #1	@ D.34412, Data32,
	movne	r0, #1	@ D.34412,
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
	movw	r4, #1140	@ tmp217,
	ldr	r3, .L198	@ tmp211,
	mul	r4, r4, r0	@ tmp216, tmp217, VdhId
	ldr	r8, .L198+4	@ tmp335,
	ldr	r7, [r3]	@ g_DSPState, g_DSPState
	mov	r6, r0	@ VdhId, VdhId
	sub	r7, r7, #1	@ D.34435, g_DSPState,
	clz	r7, r7	@ D.34435, D.34435
	ldr	r5, [r8, r4]	@ D.34436, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r7, r7, lsr #5	@ D.34435, D.34435,
	cmp	r5, #0	@ D.34436,
	beq	.L196	@,
.L179:
	mov	r2, #180	@ tmp226,
	ldr	r1, [r5, #12]	@ D.34437, *_23
	mul	r2, r2, r6	@ tmp225, tmp226, VdhId
	ldr	r4, .L198+8	@ tmp334,
	cmp	r7, #1	@ D.34435,
	add	r3, r4, r2	@ tmp227, tmp334, tmp225
	str	r1, [r4, r2]	@ D.34437, g_BackUp[VdhId_12(D)].BasicCfg1
	ldr	r2, [r5, #28]	@ D.34437, *_28
	str	r2, [r3, #4]	@ D.34437, g_BackUp[VdhId_12(D)].VdmState
	beq	.L197	@,
	add	r2, r5, #4096	@ D.34438, D.34437,
	movw	r1, #4116	@ tmp271,
	cmp	r7, #0	@ D.34435,
	ldr	r2, [r2]	@ D.34437, *_51
	str	r2, [r3, #16]	@ D.34437, g_BackUp[VdhId_12(D)].SedSta
	ldr	r2, [r5, r1]	@ D.34437, *_56
	str	r2, [r3, #20]	@ D.34437, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r2, [r5, #208]	@ D.34437, *_63
	str	r2, [r3, #8]	@ D.34437, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r2, [r5, #212]	@ D.34437, *_68
	str	r2, [r3, #12]	@ D.34437, g_BackUp[VdhId_12(D)].SwitchRounding
	bne	.L183	@,
	ldr	r2, [r5, #176]	@ D.34437, *_73
	str	r2, [r3, #24]	@ D.34437, g_BackUp[VdhId_12(D)].DecCyclePerPic
	ldr	r2, [r5, #180]	@ D.34437, *_78
	str	r2, [r3, #28]	@ D.34437, g_BackUp[VdhId_12(D)].RdBdwidthPerPic
	ldr	r2, [r5, #184]	@ D.34437, *_83
	str	r2, [r3, #32]	@ D.34437, g_BackUp[VdhId_12(D)].WrBdWidthPerPic
	ldr	r2, [r5, #188]	@ D.34437, *_88
	str	r2, [r3, #36]	@ D.34437, g_BackUp[VdhId_12(D)].RdReqPerPic
	ldr	r2, [r5, #192]	@ D.34437, *_93
	str	r2, [r3, #40]	@ D.34437, g_BackUp[VdhId_12(D)].WrReqPerPic
.L183:
	mov	ip, #180	@ tmp312,
	rsb	r2, r4, #32768	@ D.34441, tmp334,
	mul	ip, ip, r6	@ D.34442, tmp312, VdhId
	add	r2, r2, #208	@ D.34441, D.34441,
	add	r3, ip, #48	@ D.34442, D.34442,
	add	r1, ip, #176	@ D.34442, D.34442,
	rsb	ip, ip, r5	@ D.34441, D.34442, D.34437
	add	r3, r4, r3	@ ivtmp.157, tmp334, D.34442
	add	r1, r4, r1	@ D.34441, tmp334, D.34442
	add	ip, r2, ip	@ D.34441, D.34441, D.34441
.L185:
	ldr	r2, [ip, r3]	@ D.34437, *_142
	ldr	lr, .L198+8	@ tmp319,
	str	r2, [r3, #4]!	@ D.34437, MEM[base: _141, offset: 0B]
	cmp	r3, r1	@ ivtmp.157, D.34441
	bne	.L185	@,
	cmp	r7, #0	@ D.34435,
	moveq	r2, #180	@ tmp324,
	movweq	r3, #33152	@ tmp321,
	mlaeq	lr, r2, r6, lr	@ tmp325, tmp324, VdhId, tmp319
	ldreq	r2, [r5, r3]	@ D.34437, *_106
	movweq	r3, #33156	@ tmp327,
	movne	r7, #0	@ D.34435,
	mov	r0, r7	@, D.34435
	streq	r2, [lr, #48]	@ D.34437, g_BackUp[VdhId_12(D)].LumaSumLow
	ldreq	r3, [r5, r3]	@ D.34437, *_111
	streq	r3, [lr, #44]	@ D.34437, g_BackUp[VdhId_12(D)].LumaSumHigh
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L197:
	movw	r3, #1140	@ tmp234,
	ubfx	r5, r2, #0, #17	@ DecSliceNum, D.34437,,
	mla	r3, r3, r6, r8	@ tmp235, tmp234, VdhId, tmp335
	ldr	r0, [r3, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L180	@,
	sub	r3, r5, #1	@ D.34439, DecSliceNum,
	movw	r1, #1140	@ tmp254,
	cmp	r3, #127	@ D.34439,
	mov	r2, #180	@ tmp242,
	subls	r3, r5, #-1073741823	@ D.34439, DecSliceNum,
	movhi	r3, #0	@ D.34439,
	movhi	ip, #8	@ D.34442,
	movls	r3, r3, asl #4	@ D.34439, D.34439,
	mla	r2, r2, r6, r4	@ tmp243, tmp242, VdhId, tmp334
	ldr	lr, [r0, r3]	@ *_39, *_39
	addls	ip, r3, #8	@ D.34442, D.34439,
	mul	r3, r1, r6	@ tmp253, tmp254, VdhId
	str	lr, [r2, #16]	@ *_39, g_BackUp[VdhId_12(D)].SedSta
	ldr	r1, [r0, ip]	@ *_46, *_46
	ldr	r5, [r8, r3]	@ D.34437, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	str	r1, [r2, #20]	@ *_46, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r3, [r5, #208]	@ D.34437, *_121
	str	r3, [r2, #8]	@ D.34437, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r3, [r5, #212]	@ D.34437, *_126
	str	r3, [r2, #12]	@ D.34437, g_BackUp[VdhId_12(D)].SwitchRounding
	b	.L183	@
.L180:
	mvn	r7, #0	@ D.34435,
	mov	r0, r7	@, D.34435
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L196:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L180	@,
	mov	r5, r0	@ D.34436, p32
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
	mov	r0, r4	@ D.34448, tmp131
	ldmfd	sp!, {r4, pc}	@
.L202:
	mvn	r0, #0	@ D.34448,
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
	sub	r3, r2, #1	@ D.34459, dnmsg_size,
	cmp	r3, #255	@ D.34459,
	bhi	.L207	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.34457, tmp126
	ldmfd	sp!, {r4, pc}	@
.L207:
	mvn	r0, #0	@ D.34457,
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
	sub	r3, r3, #1	@ D.34483, pRepairParam_18(D)->ValidGroupNum,
	cmp	r3, #127	@ D.34483,
	bhi	.L229	@,
	ldr	lr, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	mov	r0, #0	@ tmp308,
	ldr	r3, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb,
	ldr	r4, [r7, #16]	@ D.34482, pRepairParam_18(D)->RefImageAddr
	mov	r1, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	mov	lr, lr, asl #4	@ pic_height, pRepairParam_18(D)->ImageHeight,
	adds	r2, lr, #31	@ D.34482, pic_height,
	mov	r3, r3, asl #4	@ pic_width, pRepairParam_18(D)->ImageWidth,
	addmi	r2, lr, #62	@, D.34482, pic_height,
	add	r3, r3, #255	@ D.34482, pic_width,
	bic	r3, r3, #255	@ SlotWidth, D.34482,
	str	r4, [r10]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17]
	mov	r2, r2, asr #5	@ D.34482, D.34482,
	ldr	lr, [r7, #16]	@ pRepairParam_18(D)->RefImageAddr, pRepairParam_18(D)->RefImageAddr
	mov	r4, r3, asl #4	@ Stride1D, SlotWidth,
	mul	r3, r3, r2	@ D.34482, SlotWidth, D.34482
	mov	r3, r3, asl #5	@ ChromaOffset, D.34482,
	add	r2, r3, lr	@ D.34482, ChromaOffset, pRepairParam_18(D)->RefImageAddr
	str	r2, [r10, #4]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 4B]
	ldr	r2, [r7, #4]	@ D.34482, pRepairParam_18(D)->ImageAddr
	str	r2, [r10, #8]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 8B]
	ldr	r2, [r7, #4]	@ pRepairParam_18(D)->ImageAddr, pRepairParam_18(D)->ImageAddr
	add	r3, r3, r2	@ D.34482, ChromaOffset, pRepairParam_18(D)->ImageAddr
	str	r3, [r10, #12]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 12B]
	str	r4, [r10, #16]	@ Stride1D, MEM[(volatile HI_S32 *)pMsgBase_17 + 16B]
	str	r0, [r10, #20]	@ tmp308, MEM[(volatile HI_S32 *)pMsgBase_17 + 20B]
	ldr	r2, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r3, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	sub	r2, r2, #1	@ tmp312, pRepairParam_18(D)->ImageWidth,
	sub	r3, r3, #1	@ tmp317, pRepairParam_18(D)->ImageHeight,
	bfi	ip, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, tmp312,,
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, tmp317,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	strh	r1, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #20]	@ D.34482, D32
	str	r3, [r10, #24]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 24B]
	ldr	r5, [r7, #568]	@ D.34482, pRepairParam_18(D)->FullRepair
	cmp	r5, r0	@ D.34482,
	bne	.L230	@,
	ldr	r0, [r7, #552]	@ D.34482, pRepairParam_18(D)->ValidGroupNum
	cmp	r0, #0	@ D.34482,
	ble	.L231	@,
	ldrsh	fp, [r7, #40]	@ pRepairParam_18(D)->MbGroup[0].StartMbn, pRepairParam_18(D)->MbGroup[0].StartMbn
	mov	r8, r5	@ front_EndMb, i
	ldrsh	r2, [r7, #42]	@ D.34482, pRepairParam_18(D)->MbGroup[0].EndMbn
	add	r3, fp, #7	@ tmp323, pRepairParam_18(D)->MbGroup[0].StartMbn,
	cmp	fp, #0	@ pRepairParam_18(D)->MbGroup[0].StartMbn,
	str	r5, [sp]	@ i, %sfp
	movlt	fp, r3	@ pRepairParam_18(D)->MbGroup[0].StartMbn, tmp323
	adds	r3, r2, #7	@ D.34482, D.34482,
	addmi	r3, r2, #14	@, D.34482, D.34482,
	bic	fp, fp, #7	@ start_Mb, pRepairParam_18(D)->MbGroup[0].StartMbn,
	bic	r3, r3, #7	@ cur_EndMb, D.34482,
.L214:
	cmp	r3, r8	@ cur_EndMb, front_EndMb
	movgt	r3, #0	@ tmp361,
	movle	r3, #1	@ tmp361,
	cmp	r5, #0	@ i,
	moveq	r3, #0	@ tmp361,
	cmp	r3, #0	@ tmp361,
	beq	.L217	@,
	ldr	r0, [r7, #552]	@ D.34482, pRepairParam_18(D)->ValidGroupNum
	mov	r2, r5	@ i, i
	add	r5, r5, #1	@ i, i,
	cmp	r0, r5	@ D.34482, i
	ble	.L237	@,
.L226:
	add	r3, r2, #2	@ D.34482, i,
	cmp	r3, #127	@ D.34482,
	bgt	.L237	@,
	add	r3, r7, r5, lsl #2	@ D.34491, pRepairParam, i,
	ldrsh	fp, [r3, #40]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B], MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B]
	ldrsh	r1, [r3, #42]	@ D.34482, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 42B]
	cmp	fp, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	add	r3, fp, #7	@ tmp337, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	movlt	fp, r3	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B], tmp337
	adds	r3, r1, #7	@ D.34482, D.34482,
	addmi	r3, r1, #14	@, D.34482, D.34482,
	cmp	r5, #0	@ i,
	bic	fp, fp, #7	@ start_Mb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_136 + 40B],
	bic	r3, r3, #7	@ cur_EndMb, D.34482,
	ble	.L214	@,
	add	r2, r7, r2, lsl #2	@ tmp348, pRepairParam, i,
	ldrsh	r2, [r2, #42]	@ D.34482, pRepairParam_18(D)->MbGroup[i_175].EndMbn
	adds	r8, r2, #7	@ D.34482, D.34482,
	addmi	r8, r2, #14	@, D.34482, D.34482,
	bic	r8, r8, #7	@ front_EndMb, D.34482,
	b	.L214	@
.L230:
	cmp	r5, #1	@ D.34482,
	str	r0, [sp]	@ tmp308, %sfp
	beq	.L225	@,
.L213:
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	sub	r3, r3, #1	@ tmp440, actual_repairTime,
	uxth	r3, r3	@ D.34485, tmp440
.L227:
	ldr	r2, [r7, #560]	@ pRepairParam_18(D)->Compress_en, pRepairParam_18(D)->Compress_en
	mov	ip, #0	@ tmp458,
	ldr	r1, [r7, #564]	@ pRepairParam_18(D)->Pic_type, pRepairParam_18(D)->Pic_type
	mov	r0, ip	@ D.34481, tmp458
	and	r2, r2, #1	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, pRepairParam_18(D)->Compress_en,
	str	ip, [sp, #20]	@ tmp458, D32
	and	r1, r1, #3	@ D.34494, pRepairParam_18(D)->Pic_type,
	strh	r3, [sp, #20]	@ movhi	@ D.34485, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].total_grp_num_minus1
	bfi	r2, r1, #4, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, D.34494,,
	mov	r3, r2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode
	bfi	r3, r1, #6, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, D.34494,,
	strb	r3, [sp, #22]	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode
	ldr	r3, [sp, #20]	@ D.34482, D32
	str	r3, [r10, #28]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 28B]
.L211:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L217:
	add	r1, r7, r5, lsl #2	@ ivtmp.177, pRepairParam, i,
	b	.L219	@
.L220:
	ldrsh	ip, [r1, #42]	@ D.34482, MEM[base: _206, offset: 42B]
	ldrsh	r3, [r1, #44]	@ MEM[base: _206, offset: 44B], MEM[base: _206, offset: 44B]
	adds	r2, ip, #7	@ D.34482, D.34482,
	add	lr, r3, #7	@ tmp393, MEM[base: _206, offset: 44B],
	addmi	r2, ip, #14	@, D.34482, D.34482,
	cmp	r3, #0	@ MEM[base: _206, offset: 44B],
	bic	r2, r2, #7	@ D.34482, D.34482,
	movlt	r3, lr	@ MEM[base: _206, offset: 44B], tmp393
	bic	r3, r3, #7	@ D.34482, MEM[base: _206, offset: 44B],
	cmp	r2, r3	@ D.34482, D.34482
	bgt	.L222	@,
	cmp	r5, #1	@ i,
	bmi	.L232	@,
	ldrsh	ip, [r1, #38]	@ D.34482, MEM[base: _206, offset: 38B]
	adds	r3, ip, #7	@ D.34482, D.34482,
	addmi	r3, ip, #14	@, D.34482, D.34482,
	bic	r3, r3, #7	@ D.34482, D.34482,
	cmp	r2, r3	@ D.34482, D.34482
	bgt	.L232	@,
.L222:
	add	r1, r1, #4	@ ivtmp.177, ivtmp.177,
	mov	r5, r4	@ i, i
.L219:
	add	r4, r5, #1	@ i, i,
	cmp	r4, #127	@ i,
	movle	r3, #1	@ tmp367,
	movgt	r3, #0	@ tmp367,
	cmp	r0, r4	@ D.34482, i
	movle	r3, #0	@ tmp367,
	cmp	r5, #0	@ i,
	andgt	r3, r3, #1	@ tmp374, tmp367,
	movle	r3, #0	@ tmp374,
	cmp	r3, #0	@ tmp374,
	bne	.L220	@,
	add	r3, r7, r5, lsl #2	@ tmp377, pRepairParam, i,
	ldrsh	r3, [r3, #42]	@ D.34482, pRepairParam_18(D)->MbGroup[i_222].EndMbn
	adds	r2, r3, #7	@ D.34482, D.34482,
	addmi	r2, r3, #14	@, D.34482, D.34482,
	bic	r9, r2, #7	@ end_Mb, D.34482,
.L221:
	ldr	r3, [r7, #24]	@ D.34482, pRepairParam_18(D)->ImageWidth
	ldr	r1, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	ldr	r2, [sp]	@ actual_repairTime, %sfp
	mul	r1, r1, r3	@ D.34482, pRepairParam_18(D)->ImageHeight, D.34482
	add	r6, r2, #1	@ actual_repairTime, actual_repairTime,
	cmp	r1, r9	@ D.34482, end_Mb
	suble	r9, r1, #1	@ end_Mb, D.34482,
	cmp	r6, #252	@ actual_repairTime,
	bgt	.L238	@,
	mov	r1, r3	@, D.34482
	mov	r0, fp	@, start_Mb
	str	r3, [sp, #12]	@ D.34482, %sfp
	bl	__aeabi_idivmod	@
	mov	r3, #0	@ tmp509,
	mov	r2, #0	@ tmp512,
	mov	lr, r3	@ movhi	@ tmp474, tmp509
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	mov	ip, r2, lsr #16	@ tmp476, tmp512,
	mov	r0, fp	@, start_Mb
	str	r6, [sp]	@ actual_repairTime, %sfp
	mov	r6, r2	@ movhi	@ tmp477, tmp513
	mov	r3, r3, asl #3	@ D.34489, actual_repairTime,
	str	r3, [sp, #4]	@ D.34489, %sfp
	ldr	r3, [sp, #12]	@ D.34482, %sfp
	mov	fp, ip	@ tmp479, tmp476
	str	ip, [sp, #8]	@ tmp476, %sfp
	bfi	lr, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,,,
	mov	r1, r3	@, D.34482
	strh	lr, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bl	__aeabi_idiv	@
	ldmib	sp, {r3, ip}	@,,
	add	r3, r3, #32	@ D.34489, D.34489,
	bfi	ip, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby,,,
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	ldr	r1, [sp, #20]	@ D.34482, D32
	mov	r0, r9	@, end_Mb
	str	r1, [r10, r3]	@ D.34482, MEM[(volatile HI_S32 *)_113]
	ldr	ip, [r7, #24]	@ D.34482, pRepairParam_18(D)->ImageWidth
	mov	r1, ip	@, D.34482
	str	ip, [sp, #8]	@ D.34482, %sfp
	bl	__aeabi_idivmod	@
	ldr	ip, [sp, #8]	@ D.34482, %sfp
	mov	r0, r9	@, end_Mb
	mov	r3, r6	@ movhi	@ tmp477, tmp477
	bfi	r3, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,,,
	mov	r1, ip	@, D.34482
	strh	r3, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ D.34489, %sfp
	mov	r2, r5	@ i, i
	mov	r5, r4	@ i, i
	add	r9, r3, #36	@ D.34489, D.34489,
	bfi	fp, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby,,,
	strh	fp, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r3, [sp, #20]	@ D.34482, D32
	str	r3, [r10, r9]	@ D.34482, MEM[(volatile HI_S32 *)_128]
	ldr	r0, [r7, #552]	@ D.34482, pRepairParam_18(D)->ValidGroupNum
	cmp	r0, r5	@ D.34482, i
	bgt	.L226	@,
.L237:
	ldr	r5, [r7, #568]	@ D.34482, pRepairParam_18(D)->FullRepair
	cmp	r5, #1	@ D.34482,
	bne	.L213	@,
.L225:
	mov	r1, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,
	mov	r3, #0	@ tmp442,
	mov	r2, r1	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, tmp442,,
	bfi	r2, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, tmp442,,
	strh	r1, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	strh	r2, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	mov	r1, #1	@ tmp441,
	ldr	r2, [sp, #20]	@ D.34482, D32
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,
	str	r1, [r7, #552]	@ tmp441, pRepairParam_18(D)->ValidGroupNum
	mov	r0, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	str	r2, [r10, #32]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 32B]
	ldr	r1, [r7, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r2, [r7, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	sub	r1, r1, #1	@ tmp450, pRepairParam_18(D)->ImageWidth,
	sub	r2, r2, #1	@ tmp455, pRepairParam_18(D)->ImageHeight,
	bfi	ip, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, tmp450,,
	bfi	r0, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, tmp455,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	strh	r0, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r2, [sp, #20]	@ D.34482, D32
	str	r2, [r10, #36]	@ D.34482, MEM[(volatile HI_S32 *)pMsgBase_17 + 36B]
	b	.L227	@
.L232:
	mov	r9, r2	@ end_Mb, D.34482
	b	.L221	@
.L238:
	mov	r3, #1	@ tmp406,
	str	r3, [r7, #568]	@ tmp406, pRepairParam_18(D)->FullRepair
	b	.L225	@
.L229:
	mvn	r0, #0	@ D.34481,
	b	.L211	@
.L231:
	str	r5, [sp]	@ D.34482, %sfp
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
	movw	r1, #1140	@ tmp166,
	ldr	r2, .L253	@ tmp164,
	mul	r3, r1, r5	@ tmp165, tmp166, VdhId
	ldr	ip, [r4, #36]	@ pHwMem_7(D)->MsgSlotAddr, pHwMem_7(D)->MsgSlotAddr
	mov	r4, #7	@ tmp175,
	movw	lr, #49667	@ tmp181,
	bic	ip, ip, #15	@ D.34503, pHwMem_7(D)->MsgSlotAddr,
	movt	lr, 8192	@ tmp181,
	movw	r1, #3075	@ tmp187,
	mov	r0, #0	@ D.34501,
	movt	r1, 48	@ tmp187,
	ldr	r5, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	ip, [r5, #16]	@ D.34503, *_19
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
	mvn	r0, #0	@ D.34501,
	bx	lr	@
.L252:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4]	@ p32, pHwMem_7(D)->pVdmRegVirAddr
	bne	.L243	@
.L244:
	mvn	r0, #0	@ D.34501,
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
	movw	r3, #1140	@ tmp163,
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
	ldr	r5, [r3]	@ D.34532, g_DSPState
	bl	__memzero	@
	ldr	r1, .L291+8	@ tmp242,
	mov	r3, #180	@ tmp175,
	ldr	r2, [r9, #24]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride
	mla	r3, r3, r4, r1	@ tmp176, tmp175, VdhId, tmp242
	str	r2, [r6, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].VahbStride, pDecReport_11(D)->ImgStride
	ldr	r3, [r3, #4]	@ D.34525, g_BackUp[VdhId_10(D)].VdmState
	mov	r3, r3, lsr #17	@ D.34525, D.34525,
	and	r2, r3, #3	@ D.34525, D.34525,
	cmp	r2, #1	@ D.34525,
	moveq	r3, #0	@ D.34525,
	beq	.L259	@,
	eor	r3, r3, #1	@ tmp182, D.34525,
	and	r3, r3, #1	@ tmp184, tmp182,
	cmp	r7, #3	@ VidStd,
	orrne	r3, r3, #1	@,, D.34525, tmp184
.L259:
	mov	r2, #180	@ tmp189,
	str	r3, [r6]	@ D.34525, pDecReport_11(D)->RetType
	mla	r2, r2, r4, r1	@ tmp190, tmp189, VdhId, tmp242
	cmp	r7, #0	@ VidStd,
	cmpne	r7, #15	@, VidStd,
	ldr	r3, [r2, #4]	@ g_BackUp[VdhId_10(D)].VdmState, g_BackUp[VdhId_10(D)].VdmState
	ubfx	r3, r3, #0, #17	@ D.34525, g_BackUp[VdhId_10(D)].VdmState,,
	str	r3, [r6, #8]	@ D.34525, pDecReport_11(D)->DecSliceNum
	beq	.L288	@,
.L260:
	cmp	r3, #128	@ D.34525,
	movhi	r3, #0	@ tmp222,
	strhi	r3, [r6, #8]	@ tmp222, pDecReport_11(D)->DecSliceNum
	movw	r3, #1140	@ tmp225,
	mla	r8, r3, r4, r8	@ tmp226, tmp225, VdhId, tmp241
	ldr	r0, [r8, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_10(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ pMsgBase,
	beq	.L258	@,
	ldr	r3, .L291+12	@ tmp233,
	ldr	r2, [r6, #8]	@ pDecReport_11(D)->DecSliceNum, pDecReport_11(D)->DecSliceNum
	add	r4, r3, r4, lsl #11	@ D.34529, tmp233, VdhId,
	mov	r2, r2, asl #2	@, pDecReport_11(D)->DecSliceNum,
	mov	r0, r4	@, D.34529
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	r5, [r6, #8]	@ D.34525, pDecReport_11(D)->DecSliceNum
	cmp	r5, #0	@ D.34525,
	movne	r2, r4	@ ivtmp.194, D.34529
	movne	r3, r6	@ ivtmp.197, pDecReport
	movne	ip, #0	@ i,
	beq	.L267	@,
.L266:
	ldr	lr, [r2, #4]	@ MEM[base: _72, offset: 4B], MEM[base: _72, offset: 4B]
	add	ip, ip, #1	@ i, i,
	cmp	ip, r5	@ i, D.34525
	add	r2, r2, #16	@ ivtmp.194, ivtmp.194,
	add	r3, r3, #4	@ ivtmp.197, ivtmp.197,
	strh	lr, [r3, #8]	@ movhi	@ MEM[base: _72, offset: 4B], MEM[base: _67, offset: 12B]
	ldr	lr, [r2, #-8]	@ MEM[base: _72, offset: 8B], MEM[base: _72, offset: 8B]
	strh	lr, [r3, #10]	@ movhi	@ MEM[base: _72, offset: 8B], MEM[base: _67, offset: 14B]
	bne	.L266	@,
.L267:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.34522
	beq	.L289	@,
	ldr	r2, [r6, #8]	@ pDecReport_11(D)->DecSliceNum, pDecReport_11(D)->DecSliceNum
	mov	r3, #0	@ i_cnt,
	mov	r2, r2, asl #2	@ D.34525, pDecReport_11(D)->DecSliceNum,
	sub	r2, r2, #3	@ D.34525, D.34525,
.L268:
	add	r3, r3, #4	@ i_cnt, i_cnt,
	cmp	r3, r2	@ i_cnt, D.34525
	bcc	.L268	@,
	mov	r0, #0	@ D.34522,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L288:
	cmp	r5, #1	@ D.34532,
	beq	.L290	@,
	ldr	r1, .L291+16	@ tmp212,
	ldrb	r1, [r1]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L260	@,
	ldrb	r2, [r2, #19]	@ zero_extendqisi2	@ D.34525, g_BackUp[VdhId_10(D)].SedSta
	and	r2, r2, #3	@ D.34525, D.34525,
	cmp	r2, #2	@ D.34525,
	bne	.L260	@,
.L262:
	mov	r3, #0	@ tmp209,
	mov	r2, #1	@ tmp207,
	strh	r3, [r6, #12]	@ movhi	@ tmp209, pDecReport_11(D)->SliceMbRange
	mov	r0, r3	@ D.34522, tmp209
	strh	r3, [r6, #14]	@ movhi	@ tmp209, pDecReport_11(D)->SliceMbRange
	str	r2, [r6, #8]	@ tmp207, pDecReport_11(D)->DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L289:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L290:
	ldr	r2, [r2, #16]	@ g_BackUp[VdhId_10(D)].SedSta, g_BackUp[VdhId_10(D)].SedSta
	ubfx	r2, r2, #21, #2	@ D.34525, g_BackUp[VdhId_10(D)].SedSta,,
	cmp	r2, #2	@ D.34525,
	bne	.L260	@,
	b	.L262	@
.L258:
	mvn	r0, #0	@ D.34522,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L287:
	mvn	r0, #0	@ D.34522,
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
	movw	r6, #1140	@ tmp125,
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
	ldr	r6, .L307+4	@ tmp133,
	movw	r3, #1144	@ tmp135,
	mla	r6, r3, r5, r6	@ tmp136, tmp135, VdhId, tmp133
	ldr	r3, [r6, #552]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum
	cmp	r3, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_4(D)][0].ValidGroupNum,
	ble	.L297	@,
	movw	r3, #1140	@ tmp140,
	mov	r0, r8	@, VidStd
	mla	r7, r3, r5, r7	@ pHwMem, tmp140, VdhId, tmp149
	mov	r3, r5	@, VdhId
	mov	r1, r7	@, pHwMem
	bl	VDMHAL_V200R004_CfgRpReg	@
	mov	r2, r5	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, r6	@, tmp136
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, r4	@ D.34535, RepairTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L298:
	cmp	r4, #1	@ RepairTime,
	movne	r0, #0	@ D.34535,
	mvneq	r0, #0	@ D.34535,
.L295:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L305:
	mvn	r0, #0	@ D.34535,
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
	mvn	r0, #0	@ D.34535,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #1140	@ tmp131,
	mul	r5, r5, r0	@ tmp130, tmp131, VdhId
	ldr	r4, .L315	@ tmp160,
	mov	r7, r0	@ VdhId, VdhId
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	ldr	r6, [r3, #8]	@ dat, *_6
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L315+4	@ tmp136,
	orr	r6, r6, #67108864	@ dat, dat,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@,
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, r5]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r6, [r3, #8]	@ dat, *_18
#APP
@ 1608 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	ldr	r3, .L315+8	@ tmp144,
	ldr	r3, [r3, #24]	@ D.34544, outer_cache.sync
	cmp	r3, #0	@ D.34544,
	beq	.L310	@,
	blx	r3	@ D.34544
.L310:
	movw	r3, #1140	@ tmp147,
	mov	r2, #0	@ tmp149,
	mul	r0, r3, r7	@ tmp146, tmp147, VdhId
	mov	r1, #1	@ tmp154,
	ldr	r3, [r4, r0]	@ D.34541, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r2, [r3]	@ tmp149, MEM[(volatile HI_S32 *)_22]
	ldr	r3, [r4, r0]	@ D.34541, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r1, [r3]	@ tmp154, MEM[(volatile HI_S32 *)_24]
	ldr	r3, [r4, r0]	@ D.34541, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r2, [r3]	@ tmp149, MEM[(volatile HI_S32 *)_26]
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L316:
	.align	2
.L315:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.word	outer_cache
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
	beq	.L326	@,
.L318:
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	ldr	r3, .L327	@ tmp120,
	ldr	r3, [r3, #24]	@ D.34551, outer_cache.sync
	cmp	r3, #0	@ D.34551,
	beq	.L320	@,
	blx	r3	@ D.34551
.L320:
	cmp	r4, #0	@ VdhId,
	ldmgtfd	sp!, {r4, pc}	@
	movw	r3, #1140	@ tmp123,
	ldr	r2, .L327+4	@ tmp121,
	mul	r4, r3, r4	@ tmp122, tmp123, VdhId
	mov	r3, #0	@ tmp125,
	mov	r0, #1	@ tmp130,
	ldr	r1, [r2, r4]	@ D.34550, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [r1]	@ tmp125, MEM[(volatile HI_S32 *)_10]
	ldr	r1, [r2, r4]	@ D.34550, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r0, [r1]	@ tmp130, MEM[(volatile HI_S32 *)_12]
	ldr	r2, [r2, r4]	@ D.34550, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [r2]	@ tmp125, MEM[(volatile HI_S32 *)_14]
	ldmfd	sp!, {r4, pc}	@
.L326:
	ldr	r3, .L327+8	@ tmp117,
	mov	r1, #3	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L318	@
.L328:
	.align	2
.L327:
	.word	outer_cache
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
	ldr	r1, .L330	@ tmp110,
	mov	r0, #11	@ tmp111,
	ldr	r3, .L330+4	@ tmp112,
	mov	r2, #4	@ tmp113,
	str	r0, [r1]	@ tmp111, g_VdmCharacter
	str	r2, [r3]	@ tmp113, g_eVdmVersion
	bx	lr	@
.L331:
	.align	2
.L330:
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
	beq	.L333	@,
	cmp	ip, #2	@ PicStructure,
	moveq	r7, #1	@ PicStructure,
	movne	r7, #2	@ PicStructure,
.L333:
	cmp	r0, #0	@ fpYuv,
	beq	.L332	@,
	mov	r8, r3	@ Height, Height
	mov	r3, #0	@ tmp309,
	str	r0, [sp, #16]	@ fpYuv, %sfp
	mov	r4, r2	@ Width, Width
	str	r3, [sp]	@ tmp309,
	mov	r5, r1	@ Yaddress, Yaddress
	mov	r2, #4194304	@,
	mov	r1, r3	@, tmp309
	ldr	r0, .L433	@,
	add	r3, sp, #48	@ tmp511,,
	bl	MEM_AllocMemBlock	@
	subs	r1, r0, #0	@ D.34674,
	beq	.L430	@,
.L332:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L430:
	str	r1, [sp]	@ D.34674,
	mov	r2, #4194304	@,
	add	r3, sp, #64	@ tmp512,,
	ldr	r0, .L433+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@ D.34674
	bne	.L336	@,
	add	r4, r4, #15	@ D.34673, Width,
	ldr	r3, [sp, #68]	@ ul, MemRecord_ul.VirAddr
	bic	r4, r4, #15	@ ImgWidthInPixAln, D.34673,
	ldr	r2, [sp, #52]	@ YUV, MemRecord_y.VirAddr
	add	r9, r4, #255	@ D.34674, ImgWidthInPixAln,
	add	r8, r8, #15	@ D.34673, Height,
	bic	r9, r9, #255	@ D.34674, D.34674,
	str	r3, [sp, #28]	@ ul, %sfp
	add	r3, r3, #2097152	@ vl, ul,
	str	r3, [sp, #32]	@ vl, %sfp
	mov	r3, r9, asl #4	@ Stride, D.34674,
	str	r2, [sp, #24]	@ YUV, %sfp
	bic	r8, r8, #15	@ ImgHeightInPixAln, D.34673,
	str	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r3	@ Stride, Stride
	cmp	r2, #0	@ Stride,
	add	r3, r3, #15	@ tmp321, Stride,
	movge	r3, r2	@ Stride, Stride
	adds	r6, r8, #31	@ D.34674, ImgHeightInPixAln,
	addmi	r6, r8, #62	@, D.34674, ImgHeightInPixAln,
	mov	r3, r3, asr #4	@ D.34674, Stride,
	cmp	r7, #0	@ PicStructure,
	cmpne	r7, #3	@, PicStructure,
	mov	r6, r6, asr #5	@ D.34674, D.34674,
	mla	r6, r6, r3, r5	@ Caddress, D.34674, D.34674, Yaddress
	bne	.L337	@,
	cmp	r8, #0	@ ImgHeightInPixAln,
	mov	r3, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r3, [sp, #36]	@ chrom_width, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #20]	@ chrom_height, %sfp
	beq	.L338	@,
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	r10, r0	@ i, D.34674
	str	r6, [sp, #40]	@ Caddress, %sfp
	mov	r9, r3	@ ivtmp.251, ivtmp.251
.L339:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L342	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.34673, i,
	and	r7, r10, #15	@ D.34673, i,
	mov	fp, r9	@ ivtmp.248, ivtmp.251
	mov	r6, #0	@ j,
	mul	r2, r3, r2	@ D.34673, Stride, D.34673
	add	r7, r2, r7, lsl #8	@ D.34675, D.34673, D.34673,
.L341:
	mov	r1, r6, lsr #8	@ D.34673, j,
	cmp	fp, #0	@ ivtmp.248,
	mov	r2, #256	@,
	mov	r0, fp	@, ivtmp.248
	add	r1, r7, r1, lsl #12	@ D.34675, D.34675, D.34673,
	add	fp, fp, r2	@ ivtmp.248, ivtmp.248,
	add	r6, r6, r2	@ j, j,
	add	r1, r5, r1	@ src, Yaddress, D.34675
	beq	.L340	@,
	bl	memcpy	@
.L340:
	cmp	r4, r6	@ ImgWidthInPixAln, j
	bhi	.L341	@,
.L342:
	add	r10, r10, #1	@ i, i,
	add	r9, r9, r4	@ ivtmp.251, ivtmp.251, ImgWidthInPixAln
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bne	.L339	@,
	ldr	r6, [sp, #40]	@ Caddress, %sfp
.L338:
	mul	r1, r4, r8	@, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	mov	r0, r8	@, YUV
	bl	klib_fwrite	@
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L343	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	r9, r3, asr #1	@ D.34673, Stride,
.L344:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L348	@,
	mov	r2, r7, lsr #3	@ D.34673, i,
	and	r5, r7, #7	@ D.34673, i,
	mov	r10, r8	@ ivtmp.240, ivtmp.243
	mov	fp, #0	@ j,
	mul	r2, r9, r2	@ D.34673, D.34673, D.34673
	add	r5, r2, r5, lsl #8	@ D.34675, D.34673, D.34673,
.L346:
	mov	r1, fp, lsr #8	@ D.34673, j,
	cmp	r10, #0	@ ivtmp.240,
	mov	r2, #256	@,
	mov	r0, r10	@, ivtmp.240
	add	r1, r5, r1, lsl #11	@ D.34675, D.34675, D.34673,
	add	r10, r10, r2	@ ivtmp.240, ivtmp.240,
	add	fp, fp, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.34675
	beq	.L345	@,
	bl	memcpy	@
.L345:
	cmp	r4, fp	@ ImgWidthInPixAln, j
	bhi	.L346	@,
.L348:
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.243, ivtmp.243, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L344	@,
	ldr	r3, [sp, #120]	@ tmp527, chroma_idc
	cmp	r3, #1	@ tmp527,
	beq	.L431	@,
.L350:
	ldr	r3, [sp, #120]	@ tmp529, chroma_idc
	cmp	r3, #0	@ tmp529,
	bne	.L351	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L351:
	ldr	r2, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r5, [sp, #16]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	r4, r3, r2	@ D.34674, chrom_width, chrom_height
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.34674
	bl	klib_fwrite	@
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.34674
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
	b	.L356	@
.L337:
	subs	r3, r7, #1	@ i, PicStructure,
	mov	r2, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r2, [sp, #36]	@ chrom_width, %sfp
	movne	r3, #1	@ i,
	cmp	r8, r3	@ ImgHeightInPixAln, i
	str	r3, [sp, #40]	@ i, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #20]	@ chrom_height, %sfp
	bls	.L358	@,
	ldr	r10, [sp, #40]	@ i, %sfp
	ldr	fp, [sp, #24]	@ YUV, %sfp
	str	r6, [sp, #44]	@ Caddress, %sfp
.L361:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L362	@,
	ldr	r1, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.34673, i,
	mov	r3, r10, lsr #1	@ D.34673, i,
	and	r7, r10, #15	@ D.34673, i,
	mov	r9, #0	@ j,
	mul	r2, r1, r2	@ D.34673, Stride, D.34673
	mla	r6, r4, r3, fp	@ ivtmp.288, ImgWidthInPixAln, D.34673, YUV
	add	r7, r2, r7, lsl #8	@ D.34675, D.34673, D.34673,
.L360:
	mov	r1, r9, lsr #8	@ D.34673, j,
	cmp	r6, #0	@ ivtmp.288,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.288
	add	r1, r7, r1, lsl #12	@ D.34675, D.34675, D.34673,
	add	r9, r9, r2	@ j, j,
	add	r1, r5, r1	@, Yaddress, D.34675
	add	r6, r6, r2	@ ivtmp.288, ivtmp.288,
	beq	.L359	@,
	bl	memcpy	@
.L359:
	cmp	r4, r9	@ ImgWidthInPixAln, j
	bhi	.L360	@,
.L362:
	add	r10, r10, #2	@ i, i,
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bhi	.L361	@,
	ldr	r6, [sp, #44]	@ Caddress, %sfp
.L358:
	mul	r1, r4, r8	@ D.34673, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #16]	@, %sfp
	mov	r0, r8	@, YUV
	mov	r1, r1, lsr #1	@, D.34673,
	bl	klib_fwrite	@
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L363	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	fp, r3, asr #1	@ D.34673, Stride,
.L364:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L368	@,
	mov	r2, r7, lsr #3	@ D.34673, i,
	and	r5, r7, #7	@ D.34673, i,
	mov	r9, r8	@ ivtmp.280, ivtmp.283
	mov	r10, #0	@ j,
	mul	r2, fp, r2	@ D.34673, D.34673, D.34673
	add	r5, r2, r5, lsl #8	@ D.34675, D.34673, D.34673,
.L366:
	mov	r1, r10, lsr #8	@ D.34673, j,
	cmp	r9, #0	@ ivtmp.280,
	mov	r2, #256	@,
	mov	r0, r9	@, ivtmp.280
	add	r1, r5, r1, lsl #11	@ D.34675, D.34675, D.34673,
	add	r9, r9, r2	@ ivtmp.280, ivtmp.280,
	add	r10, r10, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.34675
	beq	.L365	@,
	bl	memcpy	@
.L365:
	cmp	r4, r10	@ ImgWidthInPixAln, j
	bhi	.L366	@,
.L368:
	ldr	r3, [sp, #20]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.283, ivtmp.283, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L364	@,
	ldr	r3, [sp, #120]	@ tmp540, chroma_idc
	cmp	r3, #1	@ tmp540,
	beq	.L432	@,
.L370:
	ldr	r3, [sp, #120]	@ tmp543, chroma_idc
	cmp	r3, #0	@ tmp543,
	bne	.L371	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L371:
	ldr	r2, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r4, [sp, #16]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	fp, r3, r2	@ D.34674, chrom_width, chrom_height
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.34674
	bl	klib_fwrite	@
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.34674
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
.L356:
	ldr	r1, [sp, #68]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@ tmp546,,
	mov	r1, #16	@,
	bl	__memzero	@
.L336:
	ldr	r1, [sp, #52]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@ tmp547,,
	mov	r1, #16	@,
	bl	__memzero	@
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L432:
	ldr	r3, [sp, #40]	@ i, %sfp
	mov	ip, #0	@ i,
	ldr	r2, [sp, #24]	@ YUV, %sfp
	ldr	r6, [sp, #28]	@ ul, %sfp
	ldr	r5, [sp, #36]	@ chrom_width, %sfp
	mla	r0, r4, r3, r2	@ D.34675, ImgWidthInPixAln, i, YUV
	ldr	r7, [sp, #20]	@ chrom_height, %sfp
	mov	r4, r4, asl #1	@ D.34673, ImgWidthInPixAln,
	add	r0, r0, #1	@ ivtmp.276, D.34675,
.L372:
	cmp	r5, #0	@ chrom_width,
	beq	.L375	@,
	mov	r3, ip, lsr #1	@ D.34673, i,
	mov	r2, r0	@ ivtmp.265, ivtmp.276
	mul	r3, r5, r3	@ D.34673, chrom_width, D.34673
	sub	r1, r3, #-67108863	@ D.34675, D.34673,
	add	r8, r3, r5	@ D.34675, D.34673, chrom_width
	sub	r1, r1, #65011712	@ D.34675, D.34675,
	add	r8, r6, r8	@ D.34679, ul, D.34675
	add	r1, r6, r1	@ ivtmp.258, ul, D.34675
	add	r3, r6, r3	@ ivtmp.267, ul, D.34673
.L373:
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.34680, MEM[base: _284, offset: 4294967295B]
	strb	lr, [r1, #1]!	@ D.34680, MEM[base: _281, offset: 0B]
	ldrb	lr, [r2], #2	@ zero_extendqisi2	@ D.34680, MEM[base: _284, offset: 0B]
	strb	lr, [r3], #1	@ D.34680, MEM[base: _278, offset: 0B]
	cmp	r3, r8	@ ivtmp.267, D.34679
	bne	.L373	@,
.L375:
	add	ip, ip, #2	@ i, i,
	add	r0, r0, r4	@ ivtmp.276, ivtmp.276, D.34673
	cmp	r7, ip	@ chrom_height, i
	bhi	.L372	@,
	b	.L371	@
.L431:
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	lr, #0	@ i,
	ldr	r6, [sp, #36]	@ chrom_width, %sfp
	add	r5, r3, #1	@ ivtmp.235, YUV,
	ldr	r7, [sp, #20]	@ chrom_height, %sfp
	ldr	r3, [sp, #28]	@ ivtmp.234, %sfp
.L352:
	cmp	r6, #0	@ chrom_width,
	moveq	ip, r3	@ ivtmp.234, ivtmp.234
	beq	.L355	@,
	sub	r1, r3, #-67108863	@ ivtmp.215, ivtmp.234,
	add	ip, r3, r6	@ ivtmp.234, ivtmp.234, chrom_width
	sub	r1, r1, #65011712	@ ivtmp.215, ivtmp.215,
	mov	r2, r5	@ ivtmp.222, ivtmp.235
.L353:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ D.34680, MEM[base: _153, offset: 4294967295B]
	strb	r0, [r1, #1]!	@ D.34680, MEM[base: _154, offset: 0B]
	ldrb	r0, [r2], #2	@ zero_extendqisi2	@ D.34680, MEM[base: _153, offset: 0B]
	strb	r0, [r3], #1	@ D.34680, MEM[base: _156, offset: 0B]
	cmp	ip, r3	@ ivtmp.234, ivtmp.224
	bne	.L353	@,
.L355:
	add	lr, lr, #1	@ i, i,
	mov	r3, ip	@ ivtmp.234, ivtmp.234
	cmp	lr, r7	@ i, chrom_height
	add	r5, r5, r4	@ ivtmp.235, ivtmp.235, ImgWidthInPixAln
	bne	.L352	@,
	b	.L351	@
.L363:
	ldr	r3, [sp, #120]	@ tmp549, chroma_idc
	cmp	r3, #1	@ tmp549,
	bne	.L370	@,
	b	.L371	@
.L343:
	ldr	r3, [sp, #120]	@ tmp548, chroma_idc
	cmp	r3, #1	@ tmp548,
	bne	.L350	@,
	b	.L351	@
.L434:
	.align	2
.L433:
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
