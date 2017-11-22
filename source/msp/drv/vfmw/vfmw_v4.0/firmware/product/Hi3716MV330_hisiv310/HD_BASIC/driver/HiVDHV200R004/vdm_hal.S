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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
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
	movw	r3, #47103	@ tmp187,
	movt	r3, 6	@ tmp187,
	cmp	r0, #0	@ MemBaseAddr,
	cmpne	r1, r3	@, Size, tmp187
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movle	r3, #1	@ tmp190,
	mov	r7, r1	@ Size, Size
	movgt	r3, #0	@ tmp190,
	ble	.L11	@,
	cmp	r2, #0	@ VdhId,
	mov	r8, r2	@ VdhId, VdhId
	bgt	.L12	@,
	movw	r1, #1144	@ tmp195,
	ldr	r6, .L13	@ tmp313,
	mul	r4, r1, r2	@ tmp194, tmp195, VdhId
	mov	r9, r0	@ MemBaseAddr, MemBaseAddr
	add	r5, r6, r4	@ __p, tmp313, tmp194
	mov	r0, r5	@, __p
	bl	__memzero	@
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, .L13+4	@,
	mov	r3, r0	@ D.34866,
	mov	r2, r0	@, D.34866
	str	r3, [r6, r4]	@ D.34866, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #53248	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	ldr	r1, .L13+8	@,
	mov	r3, r0	@ D.34866,
	mov	r2, r0	@, D.34866
	str	r3, [r5, #8]	@ D.34866, g_HwMem[VdhId_13(D)].pBpdRegVirAddr
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	add	r3, r9, #1020	@ D.34867, MemBaseAddr,
	add	r3, r3, #3	@ D.34867, D.34867,
	add	ip, r4, #24	@ D.34869, tmp194,
	bic	r3, r3, #1020	@ D.34867, D.34867,
	add	r4, r4, #588	@ D.34869, tmp194,
	bic	r3, r3, #3	@ D.34867, D.34867,
	add	ip, r6, ip	@ ivtmp.75, tmp313, D.34869
	add	r4, r6, r4	@ D.34871, tmp313, D.34869
	rsb	r2, r3, r9	@ D.34867, D.34867, MemBaseAddr
	mov	lr, r3	@ ivtmp.72, D.34867
	add	r2, r2, r7	@ D.34867, D.34867, Size
	mov	r1, #1024	@ tmp230,
	str	r3, [r5, #16]	@ D.34867, g_HwMem[VdhId_13(D)].HALMemBaseAddr
	str	r2, [r5, #20]	@ D.34867, g_HwMem[VdhId_13(D)].HALMemSize
	str	r1, [r5, #24]	@ tmp230, g_HwMem[VdhId_13(D)].VahbStride
.L6:
	str	lr, [ip, #4]!	@ ivtmp.72, MEM[base: _78, offset: 0B]
	cmp	ip, r4	@ ivtmp.75, D.34871
	add	lr, lr, #1024	@ ivtmp.72, ivtmp.72,
	bne	.L6	@,
	movw	r2, #1144	@ tmp238,
	add	r3, r3, #144384	@ PhyAddr, D.34867,
	mla	r6, r2, r8, r6	@ tmp239, tmp238, VdhId, tmp313
	add	r2, r3, #290816	@ PhyAddr, PhyAddr,
	add	r2, r2, #3072	@ PhyAddr, PhyAddr,
	add	r1, r3, #5120	@ PhyAddr, PhyAddr,
	rsb	r2, r9, r2	@ D.34867, MemBaseAddr, PhyAddr
	add	r4, r3, #38912	@ PhyAddr, PhyAddr,
	cmp	r7, r2	@ Size, D.34867
	add	lr, r3, #129024	@ PhyAddr, PhyAddr,
	add	ip, r3, #196608	@ PhyAddr, PhyAddr,
	add	r0, r3, #261120	@ PhyAddr, PhyAddr,
	mov	r8, #141	@ tmp242,
	str	r1, [r6, #1080]	@ PhyAddr, g_HwMem[VdhId_13(D)].SedTopAddr
	str	r3, [r6, #1076]	@ PhyAddr, g_HwMem[VdhId_13(D)].H264MnAddr
	add	r1, r3, #83968	@ PhyAddr, PhyAddr,
	str	r8, [r6, #1052]	@ tmp242, g_HwMem[VdhId_13(D)].ValidMsgSlotNum
	add	r3, r3, #199680	@ PhyAddr, PhyAddr,
	str	r4, [r6, #1084]	@ PhyAddr, g_HwMem[VdhId_13(D)].PmvTopAddr
	str	lr, [r6, #1096]	@ PhyAddr, g_HwMem[VdhId_13(D)].DblkTopAddr
	str	ip, [r6, #1112]	@ PhyAddr, g_HwMem[VdhId_13(D)].IntensityConvTabAddr
	str	r0, [r6, #1116]	@ PhyAddr, g_HwMem[VdhId_13(D)].VpTabAddr
	str	r1, [r6, #1088]	@ PhyAddr, g_HwMem[VdhId_13(D)].RcnTopAddr
	str	r1, [r6, #1092]	@ PhyAddr, g_HwMem[VdhId_13(D)].ItransTopAddr
	str	r3, [r6, #1120]	@ PhyAddr, g_HwMem[VdhId_13(D)].DnrMbInfoAddr
	str	r3, [r6, #1124]	@ PhyAddr, g_HwMem[VdhId_13(D)].DnrTopAddr
	blt	.L7	@,
	ldr	r1, .L13+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, __p
	bl	H264HAL_V200R004_InitHal	@
	adds	r0, r0, #0	@ D.34864,,
	movne	r0, #1	@ D.34864,
	rsb	r0, r0, #0	@ D.34865, D.34864
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L12:
	mov	r0, r3	@, tmp190
	mov	r2, #118	@,
	ldr	r1, .L13+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34865,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L7:
	mov	r3, r7	@, Size
	ldr	r1, .L13+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34865,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L11:
	ldr	r3, .L13+24	@,
	mov	r2, #114	@,
	ldr	r1, .L13+28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34865,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L14:
	.align	2
.L13:
	.word	g_HwMem
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC2
	.word	.LC6
	.word	.LC0
	.word	.LC1
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
	ldr	r3, .L19	@ tmp114,
	ldr	r3, [r3, #40]	@ D.34881, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.34881,
	beq	.L17	@,
	mov	r0, r4	@, VdhId
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.34881
.L17:
	mov	r0, r3	@, D.34881
	mov	r2, #228	@,
	ldr	r1, .L19+4	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L20:
	.align	2
.L19:
	.word	g_vdm_hal_fun_ptr
	.word	.LC7
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
	ldr	r3, .L25	@ tmp135,
	add	r0, r0, #15	@ D.34885, Width,
	add	r1, r1, #15	@ D.34885, Height,
	mov	r0, r0, asr #4	@ ImgWidthInMb, D.34885,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.34885,
	ldrb	r2, [r3]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r0, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	movle	r3, #64	@ ColMbSize,
	movgt	r3, #32	@ ColMbSize,
	cmp	r2, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r3, #64	@ ColMbSize,
	mul	r0, r0, r3	@ D.34885, ImgWidthInMb, ColMbSize
	mul	r1, r1, r0	@ D.34885, ImgHeightInMb, D.34885
	add	r0, r1, #127	@ D.34885, D.34885,
	bic	r0, r0, #127	@, D.34885,
	bx	lr	@
.L26:
	.align	2
.L25:
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
	mov	r5, r3	@ Height, Height
	ldr	r8, [sp, #60]	@ ChanID, ChanID
	ldr	r3, [sp, #48]	@ PmvNum, PmvNum
	ldr	r7, [sp, #64]	@ pVdmMemArrange, pVdmMemArrange
	beq	.L63	@,
	sub	r0, r2, #32	@ D.34917, Width,
	mov	fp, r1	@ MemSize, MemSize
	movw	r1, #8160	@ tmp211,
	cmp	r0, r1	@ D.34917, tmp211
	mov	r4, r2	@ Width, Width
	bhi	.L30	@,
	sub	r0, r5, #32	@ D.34917, Height,
	cmp	r0, r1	@ D.34917, tmp211
	bhi	.L30	@,
	cmp	r7, #0	@ pVdmMemArrange,
	beq	.L64	@,
	cmp	r3, #20	@ PmvNum,
	mov	r1, #416	@,
	mov	r0, r7	@, pVdmMemArrange
	movlt	r6, r3	@ PmvNum, PmvNum
	movge	r6, #20	@ PmvNum,
	bl	__memzero	@
	add	r1, r5, #15	@ D.34915, Height,
	add	r2, r4, #15	@ D.34915, Width,
	ldr	r0, .L70	@ tmp227,
	mov	r1, r1, asr #4	@ ImgHeightInMb, D.34915,
	mov	r9, r2, asr #4	@ ImgWidthInMb, D.34915,
	cmp	r9, #45	@ ImgWidthInMb,
	cmple	r1, #36	@, ImgHeightInMb,
	ldrb	lr, [r0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	mov	r4, r1, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	mov	r0, r9, asl #4	@ ImgWidthInPixAln, ImgWidthInMb,
	movle	r5, #64	@ ColMbSize,
	movgt	r5, #32	@ ColMbSize,
	cmp	lr, #1	@ g_not_direct_8x8_inference_flag,
	moveq	r5, #64	@ ColMbSize,
	mul	r5, r9, r5	@ D.34915, ImgWidthInMb, ColMbSize
	mul	r5, r1, r5	@ D.34915, ImgHeightInMb, D.34915
	add	r5, r5, #127	@ D.34915, D.34915,
	bic	r5, r5, #127	@ PmvSlotLen, D.34915,
	mul	r1, r6, r5	@ PmvPoolSize, PmvNum, PmvSlotLen
	cmp	r1, fp	@ PmvPoolSize, MemSize
	bge	.L65	@,
	ldr	r3, [sp, #68]	@ tmp330, align_length
	str	r6, [r7, #404]	@ PmvNum, pVdmMemArrange_24(D)->ValidPMVNum
	sub	r1, r3, #1	@ D.34922, tmp330,
	mov	r3, r5, asr #1	@ D.34915, PmvSlotLen,
	add	r0, r1, r0	@, D.34922, ImgWidthInPixAln
	str	r3, [r7, #400]	@ D.34915, pVdmMemArrange_24(D)->HafPmvOffset
	ldr	r1, [sp, #68]	@, align_length
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #56]	@ tmp331, UserDec
	cmp	r3, #1	@ tmp331,
	ldr	r3, [sp, #68]	@ tmp332, align_length
	mul	r0, r3, r0	@ SlotWidth, tmp332,
	str	r0, [r7]	@ SlotWidth, pVdmMemArrange_24(D)->VahbStride
	beq	.L66	@,
	adds	r6, r4, #31	@ D.34915, ImgHeightInPixAln,
	addmi	r6, r4, #62	@, D.34915, ImgHeightInPixAln,
	mov	r6, r6, asr #5	@ D.34915, D.34915,
	mul	r6, r0, r6	@ D.34915, SlotWidth, D.34915
	mov	r0, r6, asl #7	@ tmp256, D.34915,
	sub	r6, r0, r6, asl #5	@ D.34915, tmp256, D.34915,
	mov	r6, r6, asr #1	@ ImgSlotLen, D.34915,
.L37:
	cmp	r8, #0	@ ChanID,
	blt	.L38	@,
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanWidth	@
	str	r0, [sp, #4]	@ ChanWidth, %sfp
	mov	r0, r8	@, ChanID
	bl	VCTRL_GetChanHeight	@
	ldr	r1, [sp, #4]	@ ChanWidth, %sfp
	cmn	r0, #1	@ ChanHeight,
	cmnne	r1, #1	@, ChanWidth,
	beq	.L67	@,
	ldr	r3, [sp, #56]	@ tmp333, UserDec
	add	r1, r1, #15	@ D.34915, ChanWidth,
	bic	r1, r1, #15	@ ChanImgWidthInPixAln, D.34915,
	cmp	r3, #1	@ tmp333,
	add	r1, r1, #255	@ D.34915, ChanImgWidthInPixAln,
	add	r3, r0, #15	@ D.34915, ChanHeight,
	bic	r1, r1, #255	@ ChanSlotWidth, D.34915,
	bic	r3, r3, #15	@ ChanImgHeightInPixAln, D.34915,
	beq	.L68	@,
	adds	r0, r3, #31	@ D.34915, ChanImgHeightInPixAln,
	addmi	r3, r3, #62	@, D.34915, ChanImgHeightInPixAln,
	movpl	r3, r0	@, D.34915, D.34915
	mov	r3, r3, asr #5	@ D.34915, D.34915,
	mul	r1, r1, r3	@ D.34915, ChanSlotWidth, D.34915
	mov	r3, r1, asl #7	@ tmp287, D.34915,
	sub	r3, r3, r1, asl #5	@ D.34915, tmp287, D.34915,
	mov	r3, r3, asr #1	@ ChanSlotLen, D.34915,
.L41:
	cmp	r6, r3	@ ImgSlotLen, ChanSlotLen
	bgt	.L69	@,
.L38:
	adds	r3, r4, #31	@ D.34915, ImgHeightInPixAln,
	mov	r2, r9, asl #9	@ D.34915, ImgWidthInMb,
	addmi	r3, r4, #62	@, D.34915, ImgHeightInPixAln,
	ldr	r1, [sp, #52]	@ tmp334, FrameNum
	mov	r3, r3, asr #5	@ D.34915, D.34915,
	cmp	r1, #0	@ tmp334,
	mul	r2, r3, r2	@ D.34915, D.34915, D.34915
	str	r2, [r7, #264]	@ D.34915, pVdmMemArrange_24(D)->ChromOffset
	beq	.L42	@,
	add	r3, r10, #1020	@ D.34915, MemAddr,
	cmp	r1, #64	@ tmp335,
	add	r3, r3, #3	@ D.34915, D.34915,
	mov	r2, r1	@ tmp335, tmp334
	bic	r4, r3, #1020	@ D.34915, D.34915,
	mov	r1, r6	@, ImgSlotLen
	bic	r4, r4, #3	@ D.34915, D.34915,
	movlt	r9, r2	@ D.34915, tmp336
	rsb	r10, r10, r4	@ Offset, MemAddr, D.34915
	movge	r9, #64	@ D.34915,
	rsb	r0, r10, fp	@, Offset, MemSize
	bl	__aeabi_idiv	@
	cmp	r9, r0	@ D.34915,
	movlt	r1, r9	@ D.34915, D.34915
	movge	r1, r0	@ D.34915,
	cmp	r1, #0	@ D.34915,
	str	r1, [r7, #276]	@ D.34915, pVdmMemArrange_24(D)->ValidFrameNum
	beq	.L43	@,
	addgt	ip, r7, #4	@ ivtmp.107, pVdmMemArrange,
	movgt	r3, r4	@ ivtmp.104, D.34915
	movgt	r2, #0	@ i,
	ble	.L48	@,
.L47:
	add	r2, r2, #1	@ i, i,
	str	r3, [ip, #4]!	@ ivtmp.104, MEM[base: _144, offset: 0B]
	cmp	r2, r1	@ i, D.34915
	add	r3, r3, r6	@ ivtmp.104, ivtmp.104, ImgSlotLen
	bne	.L47	@,
.L48:
	cmp	r8, #0	@ ChanID,
	mla	r1, r1, r6, r10	@ Offset, D.34915, ImgSlotLen, Offset
	blt	.L46	@,
	ldr	r3, .L70+4	@ tmp314,
	ldr	lr, [r3, r8, asl #2]	@ D.34923, s_pstVfmwChan
	cmp	lr, #0	@ D.34923,
	beq	.L46	@,
	ldr	r4, [r7, #404]	@ D.34915, pVdmMemArrange_24(D)->ValidPMVNum
	add	lr, lr, #208896	@ tmp327, D.34923,
	ldr	r3, [lr, #2928]	@ _111->stChanMem_pmv.Length, _111->stChanMem_pmv.Length
	mul	r2, r5, r4	@ D.34915, PmvSlotLen, D.34915
	cmp	r2, r3	@ D.34915, _111->stChanMem_pmv.Length
	bgt	.L49	@,
	cmp	r4, #0	@ D.34915,
	addgt	r0, r7, #276	@ ivtmp.94, pVdmMemArrange,
	movgt	r2, #0	@ ivtmp.92,
	movgt	ip, r2	@ i, ivtmp.92
	ble	.L46	@,
.L51:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [lr, #2924]	@ _111->stChanMem_pmv.PhyAddr, _111->stChanMem_pmv.PhyAddr
	cmp	ip, r4	@ i, D.34915
	add	r3, r3, r2	@ D.34915, _111->stChanMem_pmv.PhyAddr, ivtmp.92
	add	r2, r2, r5	@ ivtmp.92, ivtmp.92, PmvSlotLen
	str	r3, [r0, #4]!	@ D.34915, MEM[base: _21, offset: 0B]
	bne	.L51	@,
.L46:
	mov	r0, #0	@ D.34916,
	mov	r3, #1024	@ tmp313,
	str	r1, [r7, #4]	@ Offset, pVdmMemArrange_24(D)->TotalMemUsed
	str	r6, [r7, #408]	@ ImgSlotLen, pVdmMemArrange_24(D)->ImgSlotLen
	str	r3, [r7, #412]	@ tmp313, pVdmMemArrange_24(D)->u32StrideByte
.L61:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L42:
	ldr	r3, [sp, #52]	@ tmp337, FrameNum
	str	r3, [r7, #276]	@ tmp337, pVdmMemArrange_24(D)->ValidFrameNum
.L43:
	ldr	r3, .L70+8	@,
	movw	r2, #390	@,
	ldr	r1, .L70+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L66:
	mul	r6, r4, r0	@ D.34915, ImgHeightInPixAln, SlotWidth
	add	r6, r6, r6, lsl #1	@ ImgSlotLen, D.34915, D.34915,
	b	.L37	@
.L68:
	mul	r3, r3, r1	@ D.34915, ChanImgHeightInPixAln, ChanSlotWidth
	add	r3, r3, r3, lsl #1	@ ChanSlotLen, D.34915, D.34915,
	b	.L41	@
.L30:
	ldr	r3, .L70+16	@,
	movw	r2, #283	@,
	ldr	r1, .L70+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L69:
	ldr	r3, .L70+20	@,
	movw	r2, #378	@,
	ldr	r1, .L70+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L63:
	ldr	r3, .L70+24	@,
	movw	r2, #282	@,
	ldr	r1, .L70+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L65:
	ldr	r3, .L70+28	@,
	movw	r2, #307	@,
	ldr	r1, .L70+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L49:
	ldr	r3, .L70+32	@,
	movw	r2, #414	@,
	ldr	r1, .L70+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L67:
	ldr	r1, .L70+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L64:
	mov	r0, r7	@, pVdmMemArrange
	ldr	r3, .L70+40	@,
	mov	r2, #284	@,
	ldr	r1, .L70+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34916,
	b	.L61	@
.L71:
	.align	2
.L70:
	.word	g_not_direct_8x8_inference_flag
	.word	s_pstVfmwChan
	.word	.LC14
	.word	.LC1
	.word	.LC9
	.word	.LC13
	.word	.LC8
	.word	.LC11
	.word	.LC15
	.word	.LC12
	.word	.LC10
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
	ble	.L73	@,
	movw	r2, #445	@,
	ldr	r1, .L83	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L73:
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ VdhId, VdhId
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ pVdmRegVirAddr,
	beq	.L81	@,
	movw	r1, #1144	@ tmp139,
	ldr	r5, .L83+4	@ tmp161,
	mul	r1, r1, r6	@ tmp138, tmp139, VdhId
	ldr	r8, .L83+8	@ tmp162,
	ldr	ip, [r8]	@ D.34942, g_pstRegCrg
	ldr	r3, [r5, r1]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r7, [r3, #36]	@ tmp, *_15
	ldr	r4, [ip, #120]	@ u32TmpValue, _17->PERI_CRG30.u32
	orr	r4, r4, #64	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _17->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _17->PERI_CRG93.u32
	tst	r3, #4	@ u32TmpValue_93,
	bne	.L75	@,
	mov	r3, #1	@ i,
	movw	lr, #10000	@ tmp163,
	b	.L77	@
.L82:
	add	r3, r3, #1	@ i, i,
	cmp	r3, lr	@ i, tmp163
	beq	.L78	@,
.L77:
	ldr	r1, [ip, #372]	@ u32TmpValue_93, _17->PERI_CRG93.u32
	tst	r1, #4	@ u32TmpValue_93,
	beq	.L82	@,
	movw	r2, #10000	@ tmp153,
	cmp	r3, r2	@ i, tmp153
	beq	.L78	@,
.L75:
	movw	r1, #1144	@ tmp158,
	bfc	r4, #6, #1	@ u32TmpValue,,
	mul	r3, r1, r6	@ tmp157, tmp158, VdhId
	str	r4, [ip, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	ldr	r3, [r5, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r7, [r3, #36]	@ tmp, *_36
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L78:
	mov	r2, r6	@, VdhId
	ldr	r1, .L83+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8]	@ D.34942, g_pstRegCrg
	b	.L75	@
.L81:
	ldr	r1, .L83+16	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L84:
	.align	2
.L83:
	.word	.LC2
	.word	g_HwMem
	.word	g_pstRegCrg
	.word	.LC17
	.word	.LC16
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
	subs	r2, r0, #0	@ pVdmRegVirAddr,
	beq	.L93	@,
	ldr	r5, .L95	@ tmp140,
	ldr	r1, [r5]	@ D.34959, g_pstRegCrg
	ldr	r4, [r1, #120]	@ u32TmpValue, _10->PERI_CRG30.u32
	orr	r4, r4, #16	@ u32TmpValue, u32TmpValue,
	str	r4, [r1, #120]	@ u32TmpValue, _10->PERI_CRG30.u32
	ldr	r3, [r1, #372]	@ u32TmpValue_93, _10->PERI_CRG93.u32
	tst	r3, #1	@ u32TmpValue_93,
	bne	.L87	@,
	mov	r3, #1	@ i,
	movw	r0, #10000	@ tmp141,
	b	.L89	@
.L94:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp141
	beq	.L90	@,
.L89:
	ldr	r2, [r1, #372]	@ u32TmpValue_93, _10->PERI_CRG93.u32
	tst	r2, #1	@ u32TmpValue_93,
	beq	.L94	@,
	movw	r2, #8999	@ tmp137,
	cmp	r3, r2	@ i, tmp137
	bgt	.L90	@,
.L87:
	bfc	r4, #4, #1	@ u32TmpValue,,
	str	r4, [r1, #120]	@ u32TmpValue, _2->PERI_CRG30.u32
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L90:
	ldr	r1, .L95+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5]	@ D.34959, g_pstRegCrg
	b	.L87	@
.L93:
	ldr	r1, .L95+8	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L96:
	.align	2
.L95:
	.word	g_pstRegCrg
	.word	.LC18
	.word	.LC16
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
	movw	r3, #1144	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp118, tmp119, VdhId
	ldr	r5, .L104	@ tmp117,
	ldr	r3, [r5, r4]	@ D.34965, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34965,
	beq	.L103	@,
.L99:
	mvn	r2, #0	@ tmp127,
	str	r2, [r3, #32]	@ tmp127, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L102:
	movw	r2, #645	@,
	ldr	r1, .L104+4	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L103:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L99	@
.L100:
	ldr	r1, .L104+8	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L105:
	.align	2
.L104:
	.word	g_HwMem
	.word	.LC2
	.word	.LC19
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
	bgt	.L111	@,
	movw	r3, #1144	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp118, tmp119, VdhId
	ldr	r5, .L113	@ tmp117,
	ldr	r3, [r5, r4]	@ D.34971, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34971,
	beq	.L112	@,
.L108:
	mvn	r2, #0	@ tmp127,
	str	r2, [r3, #36]	@ tmp127, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L111:
	movw	r2, #711	@,
	ldr	r1, .L113+4	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L112:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L108	@
.L109:
	ldr	r1, .L113+8	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L114:
	.align	2
.L113:
	.word	g_HwMem
	.word	.LC2
	.word	.LC19
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
	bgt	.L120	@,
	movw	r3, #1144	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mul	r4, r3, r0	@ tmp118, tmp119, VdhId
	ldr	r5, .L122	@ tmp117,
	ldr	r3, [r5, r4]	@ D.34976, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	cmp	r3, #0	@ D.34976,
	beq	.L121	@,
.L117:
	mvn	r2, #1	@ tmp127,
	str	r2, [r3, #36]	@ tmp127, *_14
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L120:
	movw	r2, #758	@,
	ldr	r1, .L122+4	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L121:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	strne	r3, [r5, r4]	@ p32, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	bne	.L117	@
.L118:
	ldr	r1, .L122+8	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L123:
	.align	2
.L122:
	.word	g_HwMem
	.word	.LC2
	.word	.LC19
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
	subs	r5, r1, #0	@ VdhId, VdhId
	bgt	.L137	@,
	movw	r4, #1144	@ tmp126,
	ldr	r6, .L139	@ tmp145,
	mul	r4, r4, r5	@ tmp125, tmp126, VdhId
	mov	r7, r0	@ reg_id, reg_id
	ldr	r3, [r6, r4]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	cmp	r3, #0	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr,
	beq	.L138	@,
.L127:
	sub	r2, r7, #1	@ tmp136, reg_id,
	cmp	r2, #3	@ tmp136,
	ldrls	pc, [pc, r2, asl #2]	@ tmp136
	b	.L129	@
.L131:
	.word	.L130
	.word	.L132
	.word	.L135
	.word	.L134
.L135:
	mov	r3, #36	@ reg_type,
.L133:
	movw	r2, #1144	@ tmp141,
	mul	r1, r2, r5	@ tmp140, tmp141, VdhId
	ldr	r2, [r6, r1]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldr	r0, [r2, r3]	@ D.34983, *_18
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L132:
	mov	r3, #32	@ reg_type,
	b	.L133	@
.L134:
	mov	r3, #40	@ reg_type,
	b	.L133	@
.L130:
	mov	r3, #28	@ reg_type,
	b	.L133	@
.L129:
	mov	r3, r7	@, reg_id
	ldr	r2, .L139+4	@,
	ldr	r1, .L139+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34983,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L138:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ p32,
	beq	.L128	@,
	str	r8, [r6, r4]	@ p32, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	b	.L127	@
.L137:
	mov	r3, r5	@, VdhId
	ldr	r2, .L139+4	@,
	ldr	r1, .L139+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34983,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L128:
	ldr	r2, .L139+4	@,
	ldr	r1, .L139+16	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.34983, p32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L140:
	.align	2
.L139:
	.word	g_HwMem
	.word	.LANCHOR0
	.word	.LC22
	.word	.LC20
	.word	.LC21
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
	beq	.L153	@,
	cmp	r2, #0	@ VdhId,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r2	@ VdhId, VdhId
	mov	r4, r0	@ VidStd, VidStd
	mov	r6, r1	@ pDecParam, pDecParam
	bgt	.L154	@,
	ldr	r7, .L155	@ tmp123,
	sub	r1, r0, #6	@, VidStd,
	clz	r1, r1	@,
	ldr	r0, [r7]	@, s_RegPhyBaseAddr
	mov	r1, r1, lsr #5	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	cmp	r4, #6	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L142	@
.L145:
	.word	.L144
	.word	.L142
	.word	.L146
	.word	.L147
	.word	.L142
	.word	.L142
	.word	.L148
.L154:
	mov	r2, #876	@,
	ldr	r1, .L155+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L142:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L148:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	AVSHAL_V200R004_StartDec	@
.L144:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
.L146:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP4HAL_V200R004_StartDec	@
.L147:
	mov	r1, r5	@, VdhId
	mov	r0, r6	@, pDecParam
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
.L153:
	mvn	r0, #0	@,
	bx	lr	@
.L156:
	.align	2
.L155:
	.word	s_RegPhyBaseAddr
	.word	.LC2
	.fnend
	.size	VDMHAL_V200R004_PrepareDec, .-VDMHAL_V200R004_PrepareDec
	.align	2
	.global	VDMHAL_V200R004_IsVdmReady
	.type	VDMHAL_V200R004_IsVdmReady, %function
VDMHAL_V200R004_IsVdmReady:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #1144	@ tmp124,
	ldr	r2, .L163	@ tmp122,
	mul	r0, r3, r0	@ tmp123, tmp124, VdhId
	ldr	r0, [r2, r0]	@ D.35000, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	cmp	r0, #0	@ D.35000,
	beq	.L162	@,
	ldr	r0, [r0, #28]	@ Data32, *_9
	ubfx	r0, r0, #17, #1	@ D.34999, Data32,,
	bx	lr	@
.L162:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #976	@,
	ldr	r3, .L163+4	@,
	ldr	r1, .L163+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34999,
	ldmfd	sp!, {r4, pc}	@
.L164:
	.align	2
.L163:
	.word	g_HwMem
	.word	.LC23
	.word	.LC1
	.fnend
	.size	VDMHAL_V200R004_IsVdmReady, .-VDMHAL_V200R004_IsVdmReady
	.align	2
	.global	VDMHAL_V200R004_IsVdmRun
	.type	VDMHAL_V200R004_IsVdmRun, %function
VDMHAL_V200R004_IsVdmRun:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #1144	@ tmp121,
	ldr	r2, .L170	@ tmp119,
	mul	r0, r3, r0	@ tmp120, tmp121, VdhId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r2, r0]	@ D.35008, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	cmp	r4, #0	@ D.35008,
	beq	.L169	@,
	ldr	r0, [r4, #40]	@ Data32, *_9
	subs	r0, r0, #1	@ D.35007, Data32,
	movne	r0, #1	@ D.35007,
	ldmfd	sp!, {r4, pc}	@
.L169:
	ldr	r1, .L170+4	@,
	mov	r0, r4	@, D.35008
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.35007, D.35008
	ldmfd	sp!, {r4, pc}	@
.L171:
	.align	2
.L170:
	.word	g_HwMem
	.word	.LC24
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
	bgt	.L173	@,
	movw	r4, #1144	@ tmp217,
	ldr	r3, .L192	@ tmp211,
	mul	r4, r4, r7	@ tmp216, tmp217, VdhId
	ldr	r8, .L192+4	@ tmp339,
	ldr	r5, [r3]	@ g_DSPState, g_DSPState
	sub	r5, r5, #1	@ D.35031, g_DSPState,
	clz	r5, r5	@ D.35031, D.35031
	ldr	r6, [r8, r4]	@ D.35032, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	mov	r5, r5, lsr #5	@ D.35031, D.35031,
	cmp	r6, #0	@ D.35032,
	beq	.L189	@,
.L175:
	mov	r2, #180	@ tmp228,
	ldr	r1, [r6, #12]	@ D.35033, *_25
	mul	r2, r2, r7	@ tmp227, tmp228, VdhId
	ldr	r4, .L192+8	@ tmp338,
	cmp	r5, #1	@ D.35031,
	add	r3, r4, r2	@ tmp229, tmp338, tmp227
	str	r1, [r4, r2]	@ D.35033, g_BackUp[VdhId_12(D)].BasicCfg1
	ldr	r2, [r6, #28]	@ D.35033, *_30
	str	r2, [r3, #4]	@ D.35033, g_BackUp[VdhId_12(D)].VdmState
	beq	.L190	@,
	add	r2, r6, #4096	@ D.35034, D.35033,
	movw	r1, #4116	@ tmp275,
	cmp	r5, #0	@ D.35031,
	ldr	r2, [r2]	@ D.35033, *_54
	str	r2, [r3, #16]	@ D.35033, g_BackUp[VdhId_12(D)].SedSta
	ldr	r2, [r6, r1]	@ D.35033, *_59
	str	r2, [r3, #20]	@ D.35033, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r2, [r6, #208]	@ D.35033, *_66
	str	r2, [r3, #8]	@ D.35033, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r2, [r6, #212]	@ D.35033, *_71
	str	r2, [r3, #12]	@ D.35033, g_BackUp[VdhId_12(D)].SwitchRounding
	bne	.L181	@,
	ldr	r2, [r6, #176]	@ D.35033, *_76
	str	r2, [r3, #24]	@ D.35033, g_BackUp[VdhId_12(D)].DecCyclePerPic
	ldr	r2, [r6, #180]	@ D.35033, *_81
	str	r2, [r3, #28]	@ D.35033, g_BackUp[VdhId_12(D)].RdBdwidthPerPic
	ldr	r2, [r6, #184]	@ D.35033, *_86
	str	r2, [r3, #32]	@ D.35033, g_BackUp[VdhId_12(D)].WrBdWidthPerPic
	ldr	r2, [r6, #188]	@ D.35033, *_91
	str	r2, [r3, #36]	@ D.35033, g_BackUp[VdhId_12(D)].RdReqPerPic
	ldr	r2, [r6, #192]	@ D.35033, *_96
	str	r2, [r3, #40]	@ D.35033, g_BackUp[VdhId_12(D)].WrReqPerPic
.L181:
	mov	ip, #180	@ tmp316,
	rsb	r2, r4, #32768	@ D.35037, tmp338,
	mul	ip, ip, r7	@ D.35038, tmp316, VdhId
	add	r2, r2, #208	@ D.35037, D.35037,
	add	r3, ip, #48	@ D.35038, D.35038,
	add	r1, ip, #176	@ D.35038, D.35038,
	rsb	ip, ip, r6	@ D.35037, D.35038, D.35033
	add	r3, r4, r3	@ ivtmp.158, tmp338, D.35038
	add	r1, r4, r1	@ D.35037, tmp338, D.35038
	add	ip, r2, ip	@ D.35037, D.35037, D.35037
.L183:
	ldr	r2, [ip, r3]	@ D.35033, *_146
	ldr	lr, .L192+8	@ tmp323,
	str	r2, [r3, #4]!	@ D.35033, MEM[base: _145, offset: 0B]
	cmp	r3, r1	@ ivtmp.158, D.35037
	bne	.L183	@,
	cmp	r5, #0	@ D.35031,
	moveq	r2, #180	@ tmp328,
	movweq	r3, #33152	@ tmp325,
	mlaeq	lr, r2, r7, lr	@ tmp329, tmp328, VdhId, tmp323
	ldreq	r2, [r6, r3]	@ D.35033, *_109
	movweq	r3, #33156	@ tmp331,
	movne	r5, #0	@ D.35031,
	streq	r2, [lr, #48]	@ D.35033, g_BackUp[VdhId_12(D)].LumaSumLow
	ldreq	r3, [r6, r3]	@ D.35033, *_114
	streq	r3, [lr, #44]	@ D.35033, g_BackUp[VdhId_12(D)].LumaSumHigh
.L176:
	mov	r0, r5	@, D.35031
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L190:
	movw	r3, #1144	@ tmp236,
	ubfx	r6, r2, #0, #17	@ DecSliceNum, D.35033,,
	mla	r3, r3, r7, r8	@ tmp237, tmp236, VdhId, tmp339
	ldr	r0, [r3, #28]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	ip, r0, #0	@ pMsgBase,
	beq	.L191	@,
	sub	r3, r6, #1	@ D.35035, DecSliceNum,
	movw	r1, #1144	@ tmp258,
	cmp	r3, #127	@ D.35035,
	mov	r2, #180	@ tmp246,
	subls	r3, r6, #-1073741823	@ D.35035, DecSliceNum,
	movhi	r3, #0	@ D.35035,
	movhi	r0, #8	@ D.35038,
	movls	r3, r3, asl #4	@ D.35035, D.35035,
	mla	r2, r2, r7, r4	@ tmp247, tmp246, VdhId, tmp338
	ldr	lr, [ip, r3]	@ *_42, *_42
	addls	r0, r3, #8	@ D.35038, D.35035,
	mul	r3, r1, r7	@ tmp257, tmp258, VdhId
	str	lr, [r2, #16]	@ *_42, g_BackUp[VdhId_12(D)].SedSta
	ldr	r1, [ip, r0]	@ *_49, *_49
	ldr	r6, [r8, r3]	@ D.35033, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	str	r1, [r2, #20]	@ *_49, g_BackUp[VdhId_12(D)].SedEnd0
	ldr	r3, [r6, #208]	@ D.35033, *_124
	str	r3, [r2, #8]	@ D.35033, g_BackUp[VdhId_12(D)].Mb0QpInCurrPic
	ldr	r3, [r6, #212]	@ D.35033, *_129
	str	r3, [r2, #12]	@ D.35033, g_BackUp[VdhId_12(D)].SwitchRounding
	b	.L181	@
.L189:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ p32,
	beq	.L177	@,
	str	r6, [r8, r4]	@ p32, g_HwMem[VdhId_12(D)].pVdmRegVirAddr
	b	.L175	@
.L173:
	mov	r2, #1020	@,
	ldr	r1, .L192+12	@,
	mov	r0, #0	@,
	mvn	r5, #0	@ D.35031,
	bl	dprint_vfmw	@
	b	.L176	@
.L177:
	ldr	r1, .L192+16	@,
	mvn	r5, #0	@ D.35031,
	bl	dprint_vfmw	@
	b	.L176	@
.L191:
	ldr	r3, .L192+20	@,
	movw	r2, #1060	@,
	ldr	r1, .L192+24	@,
	mvn	r5, #0	@ D.35031,
	bl	dprint_vfmw	@
	b	.L176	@
.L193:
	.align	2
.L192:
	.word	g_DSPState
	.word	g_HwMem
	.word	g_BackUp
	.word	.LC2
	.word	.LC19
	.word	.LC25
	.word	.LC1
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
	bne	.L198	@,
	mov	r2, r2, asl #2	@, upmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.35049, tmp131
	ldmfd	sp!, {r4, pc}	@
.L198:
	ldr	r1, .L199	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35049,
	ldmfd	sp!, {r4, pc}	@
.L200:
	.align	2
.L199:
	.word	.LC26
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
	beq	.L202	@,
	sub	r3, r2, #1	@ D.35061, dnmsg_size,
	cmp	r3, #255	@ D.35061,
	bhi	.L202	@,
	mov	r2, r2, asl #2	@, dnmsg_size,
	bl	memcpy	@
	mov	r0, r4	@ D.35059, tmp126
	ldmfd	sp!, {r4, pc}	@
.L202:
	ldr	r1, .L206	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35059,
	ldmfd	sp!, {r4, pc}	@
.L207:
	.align	2
.L206:
	.word	.LC27
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
	beq	.L237	@,
	ldr	r2, [r7, #552]	@ D.35085, pRepairParam_19(D)->ValidGroupNum
	sub	r3, r2, #1	@ D.35086, D.35085,
	cmp	r3, #127	@ D.35086,
	bhi	.L238	@,
	ldr	r3, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	lr, #0	@ tmp313,
	ldr	r0, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	mov	r4, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb,
	ldr	r5, [r7, #16]	@ D.35085, pRepairParam_19(D)->RefImageAddr
	mov	ip, r4	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	mov	r3, r3, asl #4	@ pic_width, pRepairParam_19(D)->ImageWidth,
	adds	r2, r3, #15	@ D.35085, pic_width,
	mov	r0, r0, asl #4	@ pic_height, pRepairParam_19(D)->ImageHeight,
	addmi	r2, r3, #30	@, D.35085, pic_width,
	adds	r1, r0, #31	@ D.35085, pic_height,
	addmi	r1, r0, #62	@, D.35085, pic_height,
	str	r5, [r10]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17]
	ldr	r0, [r7, #16]	@ pRepairParam_19(D)->RefImageAddr, pRepairParam_19(D)->RefImageAddr
	bic	r2, r2, #15	@ Stride1D, D.35085,
	mov	r1, r1, asr #5	@ D.35085, D.35085,
	mul	r3, r3, r1	@ D.35085, pic_width, D.35085
	mov	r3, r3, asl #5	@ ChromaOffset, D.35085,
	add	r1, r3, r0	@ D.35085, ChromaOffset, pRepairParam_19(D)->RefImageAddr
	str	r1, [r10, #4]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 4B]
	ldr	r1, [r7, #4]	@ D.35085, pRepairParam_19(D)->ImageAddr
	str	r1, [r10, #8]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 8B]
	ldr	r1, [r7, #4]	@ pRepairParam_19(D)->ImageAddr, pRepairParam_19(D)->ImageAddr
	add	r3, r3, r1	@ D.35085, ChromaOffset, pRepairParam_19(D)->ImageAddr
	str	r3, [r10, #12]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 12B]
	str	r2, [r10, #16]	@ Stride1D, MEM[(volatile HI_S32 *)pMsgBase_17 + 16B]
	str	lr, [r10, #20]	@ tmp313, MEM[(volatile HI_S32 *)pMsgBase_17 + 20B]
	ldr	r2, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	sub	r2, r2, #1	@ tmp317, pRepairParam_19(D)->ImageWidth,
	sub	r3, r3, #1	@ tmp322, pRepairParam_19(D)->ImageHeight,
	bfi	r4, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, tmp317,,
	bfi	ip, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, tmp322,,
	strh	r4, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_width_in_mb
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb, MEM[(struct VDMRPMSG_V200R004_D6 *)&D32].pic_height_in_mb
	ldr	r3, [sp, #20]	@ D.35085, D32
	str	r3, [r10, #24]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 24B]
	ldr	r5, [r7, #568]	@ D.35085, pRepairParam_19(D)->FullRepair
	cmp	r5, lr	@ D.35085,
	bne	.L229	@,
	ldr	r0, [r7, #552]	@ D.35085, pRepairParam_19(D)->ValidGroupNum
	cmp	r0, lr	@ D.35085,
	ble	.L230	@,
	ldrsh	fp, [r7, #40]	@ pRepairParam_19(D)->MbGroup[0].StartMbn, pRepairParam_19(D)->MbGroup[0].StartMbn
	mov	r8, r5	@ front_EndMb, i
	ldrsh	r2, [r7, #42]	@ D.35085, pRepairParam_19(D)->MbGroup[0].EndMbn
	add	r3, fp, #7	@ tmp328, pRepairParam_19(D)->MbGroup[0].StartMbn,
	cmp	fp, lr	@ pRepairParam_19(D)->MbGroup[0].StartMbn,
	str	r5, [sp]	@ i, %sfp
	movlt	fp, r3	@ pRepairParam_19(D)->MbGroup[0].StartMbn, tmp328
	adds	r3, r2, #7	@ D.35085, D.35085,
	addmi	r3, r2, #14	@, D.35085, D.35085,
	bic	fp, fp, #7	@ start_Mb, pRepairParam_19(D)->MbGroup[0].StartMbn,
	bic	r3, r3, #7	@ cur_EndMb, D.35085,
.L215:
	cmp	r3, r8	@ cur_EndMb, front_EndMb
	movgt	r3, #0	@ tmp366,
	movle	r3, #1	@ tmp366,
	cmp	r5, #0	@ i,
	moveq	r3, #0	@ tmp366,
	cmp	r3, #0	@ tmp366,
	beq	.L218	@,
	ldr	r0, [r7, #552]	@ D.35085, pRepairParam_19(D)->ValidGroupNum
	mov	r2, r5	@ i, i
	add	r5, r5, #1	@ i, i,
	cmp	r0, r5	@ D.35085, i
	ble	.L236	@,
.L227:
	add	r3, r2, #2	@ D.35085, i,
	cmp	r3, #127	@ D.35085,
	bgt	.L236	@,
	add	r3, r7, r5, lsl #2	@ D.35094, pRepairParam, i,
	ldrsh	fp, [r3, #40]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B], MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B]
	ldrsh	r1, [r3, #42]	@ D.35085, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 42B]
	cmp	fp, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	add	r3, fp, #7	@ tmp342, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	movlt	fp, r3	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B], tmp342
	adds	r3, r1, #7	@ D.35085, D.35085,
	addmi	r3, r1, #14	@, D.35085, D.35085,
	cmp	r5, #0	@ i,
	bic	fp, fp, #7	@ start_Mb, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_138 + 40B],
	bic	r3, r3, #7	@ cur_EndMb, D.35085,
	ble	.L215	@,
	add	r2, r7, r2, lsl #2	@ tmp353, pRepairParam, i,
	ldrsh	r2, [r2, #42]	@ D.35085, pRepairParam_19(D)->MbGroup[i_177].EndMbn
	adds	r8, r2, #7	@ D.35085, D.35085,
	addmi	r8, r2, #14	@, D.35085, D.35085,
	bic	r8, r8, #7	@ front_EndMb, D.35085,
	b	.L215	@
.L229:
	cmp	r5, #1	@ D.35085,
	str	lr, [sp]	@ tmp313, %sfp
	beq	.L226	@,
.L214:
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	sub	r3, r3, #1	@ tmp445, actual_repairTime,
	uxth	r3, r3	@ D.35088, tmp445
.L228:
	ldr	r2, [r7, #560]	@ pRepairParam_19(D)->Compress_en, pRepairParam_19(D)->Compress_en
	mov	ip, #0	@ tmp463,
	ldr	r1, [r7, #564]	@ pRepairParam_19(D)->Pic_type, pRepairParam_19(D)->Pic_type
	mov	r0, ip	@ D.35084, tmp463
	and	r2, r2, #1	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, pRepairParam_19(D)->Compress_en,
	str	ip, [sp, #20]	@ tmp463, D32
	and	r1, r1, #3	@ D.35097, pRepairParam_19(D)->Pic_type,
	strh	r3, [sp, #20]	@ movhi	@ D.35088, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].total_grp_num_minus1
	bfi	r2, r1, #4, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode, D.35097,,
	mov	r3, r2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].dst_store_mode
	bfi	r3, r1, #6, #2	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, D.35097,,
	strb	r3, [sp, #22]	@ MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode, MEM[(struct VDMRPMSG_V200R004_D7 *)&D32].src_load_mode
	ldr	r3, [sp, #20]	@ D.35085, D32
	str	r3, [r10, #28]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 28B]
.L211:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L218:
	add	r1, r7, r5, lsl #2	@ ivtmp.178, pRepairParam, i,
	b	.L220	@
.L221:
	ldrsh	ip, [r1, #42]	@ D.35085, MEM[base: _208, offset: 42B]
	ldrsh	r3, [r1, #44]	@ MEM[base: _208, offset: 44B], MEM[base: _208, offset: 44B]
	adds	r2, ip, #7	@ D.35085, D.35085,
	add	lr, r3, #7	@ tmp398, MEM[base: _208, offset: 44B],
	addmi	r2, ip, #14	@, D.35085, D.35085,
	cmp	r3, #0	@ MEM[base: _208, offset: 44B],
	bic	r2, r2, #7	@ D.35085, D.35085,
	movlt	r3, lr	@ MEM[base: _208, offset: 44B], tmp398
	bic	r3, r3, #7	@ D.35085, MEM[base: _208, offset: 44B],
	cmp	r2, r3	@ D.35085, D.35085
	bgt	.L223	@,
	cmp	r5, #1	@ i,
	bmi	.L231	@,
	ldrsh	ip, [r1, #38]	@ D.35085, MEM[base: _208, offset: 38B]
	adds	r3, ip, #7	@ D.35085, D.35085,
	addmi	r3, ip, #14	@, D.35085, D.35085,
	bic	r3, r3, #7	@ D.35085, D.35085,
	cmp	r2, r3	@ D.35085, D.35085
	bgt	.L231	@,
.L223:
	add	r1, r1, #4	@ ivtmp.178, ivtmp.178,
	mov	r5, r4	@ i, i
.L220:
	add	r4, r5, #1	@ i, i,
	cmp	r4, #127	@ i,
	movle	r3, #1	@ tmp372,
	movgt	r3, #0	@ tmp372,
	cmp	r0, r4	@ D.35085, i
	movle	r3, #0	@ tmp372,
	cmp	r5, #0	@ i,
	andgt	r3, r3, #1	@ tmp379, tmp372,
	movle	r3, #0	@ tmp379,
	cmp	r3, #0	@ tmp379,
	bne	.L221	@,
	add	r3, r7, r5, lsl #2	@ tmp382, pRepairParam, i,
	ldrsh	r3, [r3, #42]	@ D.35085, pRepairParam_19(D)->MbGroup[i_224].EndMbn
	adds	r2, r3, #7	@ D.35085, D.35085,
	addmi	r2, r3, #14	@, D.35085, D.35085,
	bic	r9, r2, #7	@ end_Mb, D.35085,
.L222:
	ldr	r3, [r7, #24]	@ D.35085, pRepairParam_19(D)->ImageWidth
	ldr	r1, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	ldr	r2, [sp]	@ actual_repairTime, %sfp
	mul	r1, r1, r3	@ D.35085, pRepairParam_19(D)->ImageHeight, D.35085
	add	r6, r2, #1	@ actual_repairTime, actual_repairTime,
	cmp	r1, r9	@ D.35085, end_Mb
	suble	r9, r1, #1	@ end_Mb, D.35085,
	cmp	r6, #252	@ actual_repairTime,
	bgt	.L239	@,
	mov	r1, r3	@, D.35085
	mov	r0, fp	@, start_Mb
	str	r3, [sp, #12]	@ D.35085, %sfp
	bl	__aeabi_idivmod	@
	mov	r3, #0	@ tmp514,
	mov	r2, #0	@ tmp517,
	mov	lr, r3	@ movhi	@ tmp479, tmp514
	ldr	r3, [sp]	@ actual_repairTime, %sfp
	mov	ip, r2, lsr #16	@ tmp481, tmp517,
	mov	r0, fp	@, start_Mb
	str	r6, [sp]	@ actual_repairTime, %sfp
	mov	r6, r2	@ movhi	@ tmp482, tmp518
	mov	r3, r3, asl #3	@ D.35092, actual_repairTime,
	str	r3, [sp, #4]	@ D.35092, %sfp
	ldr	r3, [sp, #12]	@ D.35085, %sfp
	mov	fp, ip	@ tmp484, tmp481
	str	ip, [sp, #8]	@ tmp481, %sfp
	bfi	lr, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,,,
	mov	r1, r3	@, D.35085
	strh	lr, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bl	__aeabi_idiv	@
	ldmib	sp, {r3, ip}	@,,
	add	r3, r3, #32	@ D.35092, D.35092,
	bfi	ip, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby,,,
	strh	ip, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	ldr	r1, [sp, #20]	@ D.35085, D32
	mov	r0, r9	@, end_Mb
	str	r1, [r10, r3]	@ D.35085, MEM[(volatile HI_S32 *)_115]
	ldr	ip, [r7, #24]	@ D.35085, pRepairParam_19(D)->ImageWidth
	mov	r1, ip	@, D.35085
	str	ip, [sp, #8]	@ D.35085, %sfp
	bl	__aeabi_idivmod	@
	ldr	ip, [sp, #8]	@ D.35085, %sfp
	mov	r0, r9	@, end_Mb
	mov	r3, r6	@ movhi	@ tmp482, tmp482
	bfi	r3, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,,,
	mov	r1, ip	@, D.35085
	strh	r3, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #4]	@ D.35092, %sfp
	mov	r2, r5	@ i, i
	mov	r5, r4	@ i, i
	add	r9, r3, #36	@ D.35092, D.35092,
	bfi	fp, r0, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby,,,
	strh	fp, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r3, [sp, #20]	@ D.35085, D32
	str	r3, [r10, r9]	@ D.35085, MEM[(volatile HI_S32 *)_130]
	ldr	r0, [r7, #552]	@ D.35085, pRepairParam_19(D)->ValidGroupNum
	cmp	r0, r5	@ D.35085, i
	bgt	.L227	@,
.L236:
	ldr	r5, [r7, #568]	@ D.35085, pRepairParam_19(D)->FullRepair
	cmp	r5, #1	@ D.35085,
	bne	.L214	@,
.L226:
	mov	r1, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx,
	mov	r3, #0	@ tmp447,
	mov	r2, r1	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	bfi	r1, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, tmp447,,
	bfi	r2, r3, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, tmp447,,
	strh	r1, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mbx
	strh	r2, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby, MEM[(struct VDMRPMSG_V200R004_D8 *)&D32].start_mby
	mov	r1, #1	@ tmp446,
	ldr	r2, [sp, #20]	@ D.35085, D32
	mov	ip, #0	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx,
	str	r1, [r7, #552]	@ tmp446, pRepairParam_19(D)->ValidGroupNum
	mov	r0, ip	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	str	r2, [r10, #32]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 32B]
	ldr	r1, [r7, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	ldr	r2, [r7, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	sub	r1, r1, #1	@ tmp455, pRepairParam_19(D)->ImageWidth,
	sub	r2, r2, #1	@ tmp460, pRepairParam_19(D)->ImageHeight,
	bfi	ip, r1, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, tmp455,,
	bfi	r0, r2, #0, #9	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, tmp460,,
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mbx
	strh	r0, [sp, #22]	@ movhi	@ MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby, MEM[(struct VDMRPMSG_V200R004_D9 *)&D32].end_mby
	ldr	r2, [sp, #20]	@ D.35085, D32
	str	r2, [r10, #36]	@ D.35085, MEM[(volatile HI_S32 *)pMsgBase_17 + 36B]
	b	.L228	@
.L231:
	mov	r9, r2	@ end_Mb, D.35085
	b	.L222	@
.L239:
	mov	r3, #1	@ tmp411,
	str	r3, [r7, #568]	@ tmp411, pRepairParam_19(D)->FullRepair
	b	.L226	@
.L230:
	str	r5, [sp]	@ D.35085, %sfp
	b	.L214	@
.L238:
	ldr	r1, .L240	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35084,
	b	.L211	@
.L237:
	ldr	r3, .L240+4	@,
	movw	r2, #1186	@,
	ldr	r1, .L240+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35084,
	b	.L211	@
.L241:
	.align	2
.L240:
	.word	.LC29
	.word	.LC28
	.word	.LC1
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
	bgt	.L249	@,
	ldr	r3, [r1]	@ pHwMem_8(D)->pVdmRegVirAddr, pHwMem_8(D)->pVdmRegVirAddr
	cmp	r3, #0	@ pHwMem_8(D)->pVdmRegVirAddr,
	beq	.L250	@,
.L246:
	movw	r3, #1144	@ tmp168,
	ldr	r2, .L251	@ tmp166,
	mul	r3, r3, r4	@ tmp167, tmp168, VdhId
	ldr	ip, [r1, #36]	@ pHwMem_8(D)->MsgSlotAddr, pHwMem_8(D)->MsgSlotAddr
	mov	r4, #7	@ tmp177,
	movw	lr, #49667	@ tmp183,
	bic	ip, ip, #15	@ D.35108, pHwMem_8(D)->MsgSlotAddr,
	movt	lr, 8192	@ tmp183,
	movw	r1, #3075	@ tmp189,
	mov	r0, #0	@ D.35106,
	movt	r1, 48	@ tmp189,
	ldr	r5, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	ip, [r5, #16]	@ D.35108, *_21
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r4, [ip, #36]	@ tmp177, *_27
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	lr, [ip, #12]	@ tmp183, *_33
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #60]	@ tmp189, *_39
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #64]	@ tmp189, *_44
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #68]	@ tmp189, *_49
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #72]	@ tmp189, *_54
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #76]	@ tmp189, *_59
	ldr	ip, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [ip, #80]	@ tmp189, *_64
	ldr	r3, [r2, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [r3, #84]	@ tmp189, *_69
.L245:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L250:
	mov	r0, #0	@,
	str	r1, [sp, #4]	@ pHwMem, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L247	@,
	ldr	r1, [sp, #4]	@ pHwMem, %sfp
	str	r3, [r1]	@ p32, pHwMem_8(D)->pVdmRegVirAddr
	b	.L246	@
.L249:
	movw	r2, #1338	@,
	ldr	r1, .L251+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35106,
	b	.L245	@
.L247:
	ldr	r1, .L251+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35106,
	b	.L245	@
.L252:
	.align	2
.L251:
	.word	g_HwMem
	.word	.LC2
	.word	.LC19
	.fnend
	.size	VDMHAL_V200R004_CfgRpReg, .-VDMHAL_V200R004_CfgRpReg
	.align	2
	.global	VDMHAL_V200R004_MakeDecReport
	.type	VDMHAL_V200R004_MakeDecReport, %function
VDMHAL_V200R004_MakeDecReport:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	subs	r6, r1, #0	@ pDecReport, pDecReport
	.pad #20
	sub	sp, sp, #20	@,,
	beq	.L280	@,
	movw	r3, #1144	@ tmp176,
	ldr	r8, .L285	@ tmp269,
	mul	r3, r3, r2	@ tmp175, tmp176, VdhId
	mov	r7, r0	@ VidStd, VidStd
	mov	r4, r2	@ VdhId, VdhId
	add	r9, r8, r3	@ tmp177, tmp269, tmp175
	ldr	r0, [r8, r3]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr
	cmp	r0, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].pVdmRegVirAddr,
	beq	.L256	@,
	ldr	r3, .L285+4	@ tmp179,
	mov	r1, #528	@,
	mov	r0, r6	@, pDecReport
	ldr	r5, [r3]	@ D.35142, g_DSPState
	bl	__memzero	@
	ldr	r1, .L285+8	@ tmp270,
	mov	r3, #180	@ tmp188,
	ldr	r2, [r9, #24]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride
	mla	r3, r3, r4, r1	@ tmp189, tmp188, VdhId, tmp270
	str	r2, [r6, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].VahbStride, pDecReport_13(D)->ImgStride
	ldr	r3, [r3, #4]	@ D.35133, g_BackUp[VdhId_12(D)].VdmState
	mov	r3, r3, lsr #17	@ D.35133, D.35133,
	and	r2, r3, #3	@ D.35133, D.35133,
	cmp	r2, #1	@ D.35133,
	moveq	r3, #0	@ D.35133,
	beq	.L258	@,
	eor	r3, r3, #1	@ tmp197, D.35133,
	and	r3, r3, #1	@ tmp199, tmp197,
	cmp	r7, #3	@ VidStd,
	orrne	r3, r3, #1	@,, D.35133, tmp199
.L258:
	mov	r2, #180	@ tmp204,
	str	r3, [r6]	@ D.35133, pDecReport_13(D)->RetType
	mla	r2, r2, r4, r1	@ tmp205, tmp204, VdhId, tmp270
	cmp	r7, #0	@ VidStd,
	cmpne	r7, #15	@, VidStd,
	ldr	r3, [r2, #4]	@ g_BackUp[VdhId_12(D)].VdmState, g_BackUp[VdhId_12(D)].VdmState
	ubfx	r3, r3, #0, #17	@ D.35133, g_BackUp[VdhId_12(D)].VdmState,,
	str	r3, [r6, #8]	@ D.35133, pDecReport_13(D)->DecSliceNum
	beq	.L281	@,
.L259:
	cmp	r3, #128	@ D.35133,
	movhi	r3, #0	@ tmp237,
	strhi	r3, [r6, #8]	@ tmp237, pDecReport_13(D)->DecSliceNum
	movw	r3, #1144	@ tmp240,
	mla	r8, r3, r4, r8	@ tmp241, tmp240, VdhId, tmp269
	ldr	r7, [r8, #28]	@ D.35135, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_12(D)].MsgSlotAddr
	mov	r0, r7	@, D.35135
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ pMsgBase,
	beq	.L282	@,
	ldr	r8, .L285+12	@ tmp271,
	mov	r5, r4, asl #11	@ D.35131, VdhId,
	ldr	r2, [r6, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	add	r4, r8, r5	@ D.35139, tmp271, D.35131
	mov	r2, r2, asl #2	@, pDecReport_13(D)->DecSliceNum,
	mov	r0, r4	@, D.35139
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	r1, [r6, #8]	@ D.35133, pDecReport_13(D)->DecSliceNum
	cmp	r1, #0	@ D.35133,
	movne	r3, r4	@ ivtmp.200, D.35139
	movne	ip, r6	@ ivtmp.203, pDecReport
	movne	lr, #0	@ i,
	beq	.L267	@,
.L266:
	ldr	r2, [r3, #4]	@ MEM[base: _109, offset: 4B], MEM[base: _109, offset: 4B]
	add	lr, lr, #1	@ i, i,
	cmp	lr, r1	@ i, D.35133
	add	r3, r3, #16	@ ivtmp.200, ivtmp.200,
	add	ip, ip, #4	@ ivtmp.203, ivtmp.203,
	strh	r2, [ip, #8]	@ movhi	@ MEM[base: _109, offset: 4B], MEM[base: _102, offset: 12B]
	ldr	r2, [r3, #-8]	@ MEM[base: _109, offset: 8B], MEM[base: _109, offset: 8B]
	strh	r2, [ip, #10]	@ movhi	@ MEM[base: _109, offset: 8B], MEM[base: _102, offset: 14B]
	bne	.L266	@,
.L267:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.35132
	bne	.L283	@,
.L255:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L281:
	cmp	r5, #1	@ D.35142,
	beq	.L284	@,
	ldr	r1, .L285+16	@ tmp227,
	ldrb	r1, [r1]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	bne	.L259	@,
	ldrb	r2, [r2, #19]	@ zero_extendqisi2	@ D.35133, g_BackUp[VdhId_12(D)].SedSta
	and	r2, r2, #3	@ D.35133, D.35133,
	cmp	r2, #2	@ D.35133,
	bne	.L259	@,
.L261:
	mov	r3, #0	@ tmp224,
	mov	r2, #1	@ tmp222,
	strh	r3, [r6, #12]	@ movhi	@ tmp224, pDecReport_13(D)->SliceMbRange
	mov	r0, r3	@ D.35132, tmp224
	strh	r3, [r6, #14]	@ movhi	@ tmp224, pDecReport_13(D)->SliceMbRange
	str	r2, [r6, #8]	@ tmp222, pDecReport_13(D)->DecSliceNum
	b	.L255	@
.L283:
	ldr	r2, [r6, #8]	@, pDecReport_13(D)->DecSliceNum
	mov	r0, #6	@,
	ldr	r1, .L285+20	@,
	add	r4, r8, r5	@ ivtmp.191, tmp271, D.35131
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.35135
	ldr	r1, .L285+24	@,
	mov	r0, #6	@,
	bl	dprint_vfmw	@
	mov	r5, #0	@ i_cnt,
.L268:
	ldr	r1, [r4, #4]	@ MEM[base: _92, offset: 4B], MEM[base: _92, offset: 4B]
	mov	r2, r5	@, i_cnt
	ldr	lr, [r4, #12]	@ MEM[base: _92, offset: 12B], MEM[base: _92, offset: 12B]
	mov	r0, #6	@,
	ldr	ip, [r4, #8]	@ MEM[base: _92, offset: 8B], MEM[base: _92, offset: 8B]
	add	r5, r5, #4	@ i_cnt, i_cnt,
	ldr	r3, [r4]	@ MEM[base: _92, offset: 0B], MEM[base: _92, offset: 0B]
	add	r4, r4, #16	@ ivtmp.191, ivtmp.191,
	str	lr, [sp, #8]	@ MEM[base: _92, offset: 12B],
	stmia	sp, {r1, ip}	@,,
	ldr	r1, .L285+28	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	mov	r3, r3, asl #2	@ D.35133, pDecReport_13(D)->DecSliceNum,
	sub	r3, r3, #3	@ D.35133, D.35133,
	cmp	r3, r5	@ D.35133, i_cnt
	bhi	.L268	@,
	ldr	r1, .L285+32	@,
	mov	r0, #6	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35132,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L284:
	ldr	r2, [r2, #16]	@ g_BackUp[VdhId_12(D)].SedSta, g_BackUp[VdhId_12(D)].SedSta
	ubfx	r2, r2, #21, #2	@ D.35133, g_BackUp[VdhId_12(D)].SedSta,,
	cmp	r2, #2	@ D.35133,
	bne	.L259	@,
	b	.L261	@
.L282:
	ldr	r3, .L285+36	@,
	movw	r2, #1459	@,
	ldr	r1, .L285+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35132,
	b	.L255	@
.L256:
	ldr	r3, .L285+44	@,
	movw	r2, #1397	@,
	ldr	r1, .L285+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35132,
	b	.L255	@
.L280:
	mov	r0, r6	@, pDecReport
	ldr	r3, .L285+48	@,
	movw	r2, #1396	@,
	ldr	r1, .L285+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35132,
	b	.L255	@
.L286:
	.align	2
.L285:
	.word	g_HwMem
	.word	g_DSPState
	.word	g_BackUp
	.word	g_UpMsg
	.word	g_not_allow_H264FullPictureRepair_flag
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC25
	.word	.LC1
	.word	.LC23
	.word	.LC30
	.fnend
	.size	VDMHAL_V200R004_MakeDecReport, .-VDMHAL_V200R004_MakeDecReport
	.align	2
	.global	VDMHAL_V200R004_PrepareRepair
	.type	VDMHAL_V200R004_PrepareRepair, %function
VDMHAL_V200R004_PrepareRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	movw	r5, #1144	@ tmp127,
	mul	r5, r5, r3	@ tmp126, tmp127, VdhId
	ldr	r6, .L304	@ tmp128,
	cmp	r3, #0	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r3	@ VdhId, VdhId
	add	r7, r5, r6	@ pHwMem, tmp126, tmp128
	bgt	.L301	@,
	ldr	r3, [r5, r6]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_6(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_6(D)].pVdmRegVirAddr
	mov	r8, r0	@ VidStd, VidStd
	mov	r9, r1	@ pDecParam, pDecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_6(D)].pVdmRegVirAddr,
	beq	.L302	@,
.L290:
	cmp	r2, #0	@ RepairTime,
	bne	.L292	@,
	ldr	r5, .L304+4	@ tmp191,
	movw	r3, #1144	@ tmp143,
	mla	r3, r3, r4, r5	@ tmp144, tmp143, VdhId, tmp191
	ldr	r1, [r3, #552]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_6(D)][0].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_6(D)][0].ValidGroupNum
	cmp	r1, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_6(D)][0].ValidGroupNum,
	ble	.L293	@,
	cmp	r8, #6	@ VidStd,
	bne	.L294	@,
	ldrb	r1, [r9, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct
	cmp	r1, #1	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct,
	moveq	r2, r1	@ tmp192, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct
	str	r2, [r3, #1136]	@ tmp192, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_6(D)][1].Pic_type
.L294:
	mov	r2, r9	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, r8	@, VidStd
	bl	VDMHAL_V200R004_CfgRpReg	@
	movw	r0, #1144	@ tmp163,
	mov	r1, r7	@, pHwMem
	mov	r2, r4	@, VdhId
	mla	r0, r0, r4, r5	@, tmp163, tmp2, tmp191
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, #0	@ D.35150,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L292:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.35150,
	beq	.L303	@,
.L289:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L303:
	cmp	r8, #6	@ VidStd,
	bne	.L296	@,
	ldrb	r3, [r9, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct
	cmp	r3, #1	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_20(D)].PicStruct,
	bne	.L296	@,
	ldr	r5, .L304+4	@ tmp191,
	movw	r3, #1144	@ tmp170,
	mla	r3, r3, r4, r5	@ tmp171, tmp170, VdhId, tmp191
	ldr	r2, [r3, #1124]	@ g_RepairParam[VdhId_6(D)][1].ValidGroupNum, g_RepairParam[VdhId_6(D)][1].ValidGroupNum
	cmp	r2, #0	@ g_RepairParam[VdhId_6(D)][1].ValidGroupNum,
	ble	.L296	@,
	ldr	r2, .L304+8	@ tmp182,
	mov	r1, #2	@ tmp181,
	str	r1, [r3, #1136]	@ tmp181, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_6(D)][1].Pic_type
	ldr	r3, [r2, #40]	@ D.35154, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35154,
	beq	.L297	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35154
.L298:
	mov	r2, r9	@, pDecParam
	mov	r3, r4	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, #6	@,
	bl	VDMHAL_V200R004_CfgRpReg	@
	movw	r0, #1144	@ tmp185,
	mla	r0, r0, r4, r5	@ tmp186, tmp185, VdhId, tmp191
	mov	r1, r7	@, pHwMem
	mov	r2, r4	@, VdhId
	add	r0, r0, #572	@, tmp186,
	bl	VDMHAL_V200R004_CfgRpMsg	@
	mov	r0, #0	@ D.35150,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L302:
	mov	r0, #0	@,
	str	r2, [sp, #4]	@ RepairTime, %sfp
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L291	@,
	str	r3, [r5, r6]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [sp, #4]	@ RepairTime, %sfp
	b	.L290	@
.L301:
	movw	r2, #1507	@,
	ldr	r1, .L304+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35150,
	b	.L289	@
.L296:
	ldr	r1, .L304+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35150,
	b	.L289	@
.L297:
	mov	r0, r3	@, D.35154
	movw	r2, #1572	@,
	ldr	r1, .L304+20	@,
	bl	dprint_vfmw	@
	b	.L298	@
.L293:
	mov	r0, r2	@, RepairTime
	ldr	r1, .L304+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35150,
	b	.L289	@
.L291:
	ldr	r1, .L304+28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35150,
	b	.L289	@
.L305:
	.align	2
.L304:
	.word	g_HwMem
	.word	g_RepairParam
	.word	g_vdm_hal_fun_ptr
	.word	.LC2
	.word	.LC37
	.word	.LC7
	.word	.LC36
	.word	.LC35
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
	ldr	r5, .L308	@ tmp128,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r5, r4]	@ g_HwMem[VdhId_2(D)].pVdmRegVirAddr, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	ldr	r6, [r3, #8]	@ dat, *_6
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L308+4	@ tmp135,
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
	ldr	r2, [r5, r4]	@ D.35161, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	mov	r3, #0	@ tmp147,
	mov	r1, #1	@ tmp152,
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_21]
	ldr	r2, [r5, r4]	@ D.35161, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r1, [r2]	@ tmp152, MEM[(volatile HI_S32 *)_23]
	ldr	r2, [r5, r4]	@ D.35161, g_HwMem[VdhId_2(D)].pVdmRegVirAddr
	str	r3, [r2]	@ tmp147, MEM[(volatile HI_S32 *)_25]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L309:
	.align	2
.L308:
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
	bne	.L315	@,
	ldr	r3, .L318	@ tmp120,
	mov	r1, #3	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #12	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	bgt	.L317	@,
.L314:
	movw	r3, #1144	@ tmp127,
	ldr	r2, .L318+4	@ tmp125,
	mul	r0, r3, r4	@ tmp126, tmp127, VdhId
	movw	r3, #43690	@ tmp130,
	bfi	r3, r3, #16, #16	@ tmp130, tmp130,,
	mov	r1, #0	@ tmp135,
	mov	ip, #1	@ tmp140,
	ldr	lr, [r2, r0]	@ g_HwMem[VdhId_3(D)].pVdmRegVirAddr, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r3, [lr, #156]	@ tmp130, *_14
	ldr	r3, [r2, r0]	@ D.35167, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r1, [r3]	@ tmp135, MEM[(volatile HI_S32 *)_16]
	ldr	r3, [r2, r0]	@ D.35167, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	ip, [r3]	@ tmp140, MEM[(volatile HI_S32 *)_18]
	ldr	r3, [r2, r0]	@ D.35167, g_HwMem[VdhId_3(D)].pVdmRegVirAddr
	str	r1, [r3]	@ tmp135, MEM[(volatile HI_S32 *)_20]
	ldmfd	sp!, {r4, pc}	@
.L315:
	ldr	r1, .L318+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
#APP
@ 1672 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb
@ 0 "" 2
	cmp	r4, #0	@ VdhId,
	ble	.L314	@,
.L317:
	movw	r2, #1676	@,
	ldr	r1, .L318+12	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L319:
	.align	2
.L318:
	.word	s_RegPhyBaseAddr
	.word	g_HwMem
	.word	.LC38
	.word	.LC2
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
	ldr	r1, .L321	@ tmp110,
	mov	r0, #11	@ tmp111,
	ldr	r3, .L321+4	@ tmp112,
	mov	r2, #4	@ tmp113,
	str	r0, [r1]	@ tmp111, g_VdmCharacter
	str	r2, [r3]	@ tmp113, g_eVdmVersion
	bx	lr	@
.L322:
	.align	2
.L321:
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
	beq	.L324	@,
	cmp	ip, #2	@ PicStructure,
	moveq	r7, #1	@ PicStructure,
	movne	r7, #2	@ PicStructure,
.L324:
	cmp	r0, #0	@ fpYuv,
	beq	.L323	@,
	mov	r8, r3	@ Height, Height
	mov	r3, #0	@ tmp309,
	str	r0, [sp, #20]	@ fpYuv, %sfp
	mov	r4, r2	@ Width, Width
	str	r3, [sp]	@ tmp309,
	mov	r5, r1	@ Yaddress, Yaddress
	mov	r2, #4194304	@,
	mov	r1, r3	@, tmp309
	ldr	r0, .L426	@,
	add	r3, sp, #48	@ tmp513,,
	bl	MEM_AllocMemBlock	@
	subs	r1, r0, #0	@ D.35292,
	bne	.L422	@,
	str	r1, [sp]	@ D.35292,
	mov	r2, #4194304	@,
	add	r3, sp, #64	@ tmp514,,
	ldr	r0, .L426+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@ D.35292
	bne	.L423	@,
	add	r4, r4, #15	@ D.35291, Width,
	ldr	r3, [sp, #68]	@ ul, MemRecord_ul.VirAddr
	bic	r4, r4, #15	@ ImgWidthInPixAln, D.35291,
	ldr	r2, [sp, #52]	@ YUV, MemRecord_y.VirAddr
	add	r9, r4, #255	@ D.35292, ImgWidthInPixAln,
	add	r8, r8, #15	@ D.35291, Height,
	bic	r9, r9, #255	@ D.35292, D.35292,
	str	r3, [sp, #28]	@ ul, %sfp
	add	r3, r3, #2097152	@ vl, ul,
	str	r3, [sp, #32]	@ vl, %sfp
	mov	r3, r9, asl #4	@ Stride, D.35292,
	str	r2, [sp, #24]	@ YUV, %sfp
	bic	r8, r8, #15	@ ImgHeightInPixAln, D.35291,
	str	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r3	@ Stride, Stride
	cmp	r2, #0	@ Stride,
	add	r3, r3, #15	@ tmp323, Stride,
	movge	r3, r2	@ Stride, Stride
	adds	r6, r8, #31	@ D.35292, ImgHeightInPixAln,
	addmi	r6, r8, #62	@, D.35292, ImgHeightInPixAln,
	mov	r3, r3, asr #4	@ D.35292, Stride,
	cmp	r7, #0	@ PicStructure,
	cmpne	r7, #3	@, PicStructure,
	mov	r6, r6, asr #5	@ D.35292, D.35292,
	mla	r6, r6, r3, r5	@ Caddress, D.35292, D.35292, Yaddress
	bne	.L330	@,
	cmp	r8, #0	@ ImgHeightInPixAln,
	mov	r3, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r3, [sp, #36]	@ chrom_width, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #16]	@ chrom_height, %sfp
	beq	.L331	@,
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	r10, r0	@ i, D.35292
	str	r6, [sp, #40]	@ Caddress, %sfp
	mov	r9, r3	@ ivtmp.257, ivtmp.257
.L332:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L335	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.35291, i,
	and	r7, r10, #15	@ D.35291, i,
	mov	fp, r9	@ ivtmp.254, ivtmp.257
	mov	r6, #0	@ j,
	mul	r2, r3, r2	@ D.35291, Stride, D.35291
	add	r7, r2, r7, lsl #8	@ D.35293, D.35291, D.35291,
.L334:
	mov	r1, r6, lsr #8	@ D.35291, j,
	cmp	fp, #0	@ ivtmp.254,
	mov	r2, #256	@,
	mov	r0, fp	@, ivtmp.254
	add	r1, r7, r1, lsl #12	@ D.35293, D.35293, D.35291,
	add	fp, fp, r2	@ ivtmp.254, ivtmp.254,
	add	r6, r6, r2	@ j, j,
	add	r1, r5, r1	@ src, Yaddress, D.35293
	beq	.L333	@,
	bl	memcpy	@
.L333:
	cmp	r4, r6	@ ImgWidthInPixAln, j
	bhi	.L334	@,
.L335:
	add	r10, r10, #1	@ i, i,
	add	r9, r9, r4	@ ivtmp.257, ivtmp.257, ImgWidthInPixAln
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bne	.L332	@,
	ldr	r6, [sp, #40]	@ Caddress, %sfp
.L331:
	mul	r1, r4, r8	@, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mov	r0, r8	@, YUV
	bl	klib_fwrite	@
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L336	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	r9, r3, asr #1	@ D.35291, Stride,
.L337:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L341	@,
	mov	r2, r7, lsr #3	@ D.35291, i,
	and	r5, r7, #7	@ D.35291, i,
	mov	r10, r8	@ ivtmp.246, ivtmp.249
	mov	fp, #0	@ j,
	mul	r2, r9, r2	@ D.35291, D.35291, D.35291
	add	r5, r2, r5, lsl #8	@ D.35293, D.35291, D.35291,
.L339:
	mov	r1, fp, lsr #8	@ D.35291, j,
	cmp	r10, #0	@ ivtmp.246,
	mov	r2, #256	@,
	mov	r0, r10	@, ivtmp.246
	add	r1, r5, r1, lsl #11	@ D.35293, D.35293, D.35291,
	add	r10, r10, r2	@ ivtmp.246, ivtmp.246,
	add	fp, fp, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.35293
	beq	.L338	@,
	bl	memcpy	@
.L338:
	cmp	r4, fp	@ ImgWidthInPixAln, j
	bhi	.L339	@,
.L341:
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.249, ivtmp.249, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L337	@,
	ldr	r3, [sp, #120]	@ tmp529, chroma_idc
	cmp	r3, #1	@ tmp529,
	beq	.L424	@,
.L343:
	ldr	r3, [sp, #120]	@ tmp531, chroma_idc
	cmp	r3, #0	@ tmp531,
	bne	.L344	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L344:
	ldr	r2, [sp, #16]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r5, [sp, #20]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	r4, r3, r2	@ D.35292, chrom_width, chrom_height
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.35292
	bl	klib_fwrite	@
	mov	r2, r5	@, fpYuv
	mov	r1, r4	@, D.35292
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
.L349:
	ldr	r1, [sp, #68]	@, MemRecord_ul.VirAddr
	ldr	r0, [sp, #72]	@, MemRecord_ul.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #64	@ tmp548,,
	mov	r1, #16	@,
	bl	__memzero	@
.L329:
	ldr	r1, [sp, #52]	@, MemRecord_y.VirAddr
	ldr	r0, [sp, #56]	@, MemRecord_y.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #48	@ tmp549,,
	mov	r1, #16	@,
	bl	__memzero	@
.L323:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L422:
	ldr	r1, .L426+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L330:
	subs	r3, r7, #1	@ i, PicStructure,
	mov	r2, r4, lsr #1	@ chrom_width, ImgWidthInPixAln,
	str	r2, [sp, #36]	@ chrom_width, %sfp
	movne	r3, #1	@ i,
	cmp	r8, r3	@ ImgHeightInPixAln, i
	str	r3, [sp, #40]	@ i, %sfp
	mov	r3, r8, lsr #1	@ chrom_height, ImgHeightInPixAln,
	str	r3, [sp, #16]	@ chrom_height, %sfp
	bls	.L351	@,
	ldr	r10, [sp, #40]	@ i, %sfp
	ldr	fp, [sp, #24]	@ YUV, %sfp
	str	r6, [sp, #44]	@ Caddress, %sfp
.L354:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L355	@,
	ldr	r1, [sp, #12]	@ Stride, %sfp
	mov	r2, r10, lsr #4	@ D.35291, i,
	mov	r3, r10, lsr #1	@ D.35291, i,
	and	r7, r10, #15	@ D.35291, i,
	mov	r9, #0	@ j,
	mul	r2, r1, r2	@ D.35291, Stride, D.35291
	mla	r6, r4, r3, fp	@ ivtmp.294, ImgWidthInPixAln, D.35291, YUV
	add	r7, r2, r7, lsl #8	@ D.35293, D.35291, D.35291,
.L353:
	mov	r1, r9, lsr #8	@ D.35291, j,
	cmp	r6, #0	@ ivtmp.294,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.294
	add	r1, r7, r1, lsl #12	@ D.35293, D.35293, D.35291,
	add	r9, r9, r2	@ j, j,
	add	r1, r5, r1	@, Yaddress, D.35293
	add	r6, r6, r2	@ ivtmp.294, ivtmp.294,
	beq	.L352	@,
	bl	memcpy	@
.L352:
	cmp	r4, r9	@ ImgWidthInPixAln, j
	bhi	.L353	@,
.L355:
	add	r10, r10, #2	@ i, i,
	cmp	r8, r10	@ ImgHeightInPixAln, i
	bhi	.L354	@,
	ldr	r6, [sp, #44]	@ Caddress, %sfp
.L351:
	mul	r1, r4, r8	@ D.35291, ImgWidthInPixAln, ImgHeightInPixAln
	ldr	r8, [sp, #24]	@ YUV, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mov	r0, r8	@, YUV
	mov	r1, r1, lsr #1	@, D.35291,
	bl	klib_fwrite	@
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	cmp	r3, #0	@ chrom_height,
	beq	.L356	@,
	ldr	r3, [sp, #12]	@ Stride, %sfp
	mov	r7, #0	@ i,
	mov	fp, r3, asr #1	@ D.35291, Stride,
.L357:
	cmp	r4, #0	@ ImgWidthInPixAln,
	beq	.L361	@,
	mov	r2, r7, lsr #3	@ D.35291, i,
	and	r5, r7, #7	@ D.35291, i,
	mov	r9, r8	@ ivtmp.286, ivtmp.289
	mov	r10, #0	@ j,
	mul	r2, fp, r2	@ D.35291, D.35291, D.35291
	add	r5, r2, r5, lsl #8	@ D.35293, D.35291, D.35291,
.L359:
	mov	r1, r10, lsr #8	@ D.35291, j,
	cmp	r9, #0	@ ivtmp.286,
	mov	r2, #256	@,
	mov	r0, r9	@, ivtmp.286
	add	r1, r5, r1, lsl #11	@ D.35293, D.35293, D.35291,
	add	r9, r9, r2	@ ivtmp.286, ivtmp.286,
	add	r10, r10, r2	@ j, j,
	add	r1, r6, r1	@ src, Caddress, D.35293
	beq	.L358	@,
	bl	memcpy	@
.L358:
	cmp	r4, r10	@ ImgWidthInPixAln, j
	bhi	.L359	@,
.L361:
	ldr	r3, [sp, #16]	@ chrom_height, %sfp
	add	r7, r7, #1	@ i, i,
	add	r8, r8, r4	@ ivtmp.289, ivtmp.289, ImgWidthInPixAln
	cmp	r7, r3	@ i, chrom_height
	bne	.L357	@,
	ldr	r3, [sp, #120]	@ tmp542, chroma_idc
	cmp	r3, #1	@ tmp542,
	beq	.L425	@,
.L363:
	ldr	r3, [sp, #120]	@ tmp545, chroma_idc
	cmp	r3, #0	@ tmp545,
	bne	.L364	@,
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	memset	@
	mov	r2, #1048576	@,
	mov	r1, #128	@,
	ldr	r0, [sp, #28]	@, %sfp
	bl	memset	@
.L364:
	ldr	r2, [sp, #16]	@ chrom_height, %sfp
	ldr	r3, [sp, #36]	@ chrom_width, %sfp
	ldr	r4, [sp, #20]	@ fpYuv, %sfp
	ldr	r0, [sp, #28]	@, %sfp
	mul	fp, r3, r2	@ D.35292, chrom_width, chrom_height
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.35292
	bl	klib_fwrite	@
	mov	r2, r4	@, fpYuv
	mov	r1, fp	@, D.35292
	ldr	r0, [sp, #32]	@, %sfp
	bl	klib_fwrite	@
	b	.L349	@
.L423:
	ldr	r1, .L426+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L329	@
.L425:
	ldr	r3, [sp, #40]	@ i, %sfp
	mov	ip, #0	@ i,
	ldr	r2, [sp, #24]	@ YUV, %sfp
	ldr	r6, [sp, #28]	@ ul, %sfp
	ldr	r5, [sp, #36]	@ chrom_width, %sfp
	mla	r0, r4, r3, r2	@ D.35293, ImgWidthInPixAln, i, YUV
	ldr	r7, [sp, #16]	@ chrom_height, %sfp
	mov	r4, r4, asl #1	@ D.35291, ImgWidthInPixAln,
	add	r0, r0, #1	@ ivtmp.282, D.35293,
.L365:
	cmp	r5, #0	@ chrom_width,
	beq	.L368	@,
	mov	r3, ip, lsr #1	@ D.35291, i,
	mov	r2, r0	@ ivtmp.271, ivtmp.282
	mul	r3, r5, r3	@ D.35291, chrom_width, D.35291
	sub	r1, r3, #-67108863	@ D.35293, D.35291,
	add	r8, r3, r5	@ D.35293, D.35291, chrom_width
	sub	r1, r1, #65011712	@ D.35293, D.35293,
	add	r8, r6, r8	@ D.35297, ul, D.35293
	add	r1, r6, r1	@ ivtmp.264, ul, D.35293
	add	r3, r6, r3	@ ivtmp.273, ul, D.35291
.L366:
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.35298, MEM[base: _286, offset: 4294967295B]
	strb	lr, [r1, #1]!	@ D.35298, MEM[base: _283, offset: 0B]
	ldrb	lr, [r2], #2	@ zero_extendqisi2	@ D.35298, MEM[base: _286, offset: 0B]
	strb	lr, [r3], #1	@ D.35298, MEM[base: _280, offset: 0B]
	cmp	r3, r8	@ ivtmp.273, D.35297
	bne	.L366	@,
.L368:
	add	ip, ip, #2	@ i, i,
	add	r0, r0, r4	@ ivtmp.282, ivtmp.282, D.35291
	cmp	r7, ip	@ chrom_height, i
	bhi	.L365	@,
	b	.L364	@
.L424:
	ldr	r3, [sp, #24]	@ YUV, %sfp
	mov	lr, #0	@ i,
	ldr	r6, [sp, #36]	@ chrom_width, %sfp
	add	r5, r3, #1	@ ivtmp.241, YUV,
	ldr	r7, [sp, #16]	@ chrom_height, %sfp
	ldr	r3, [sp, #28]	@ ivtmp.240, %sfp
.L345:
	cmp	r6, #0	@ chrom_width,
	moveq	ip, r3	@ ivtmp.240, ivtmp.240
	beq	.L348	@,
	sub	r1, r3, #-67108863	@ ivtmp.221, ivtmp.240,
	add	ip, r3, r6	@ ivtmp.240, ivtmp.240, chrom_width
	sub	r1, r1, #65011712	@ ivtmp.221, ivtmp.221,
	mov	r2, r5	@ ivtmp.228, ivtmp.241
.L346:
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2	@ D.35298, MEM[base: _155, offset: 4294967295B]
	strb	r0, [r1, #1]!	@ D.35298, MEM[base: _156, offset: 0B]
	ldrb	r0, [r2], #2	@ zero_extendqisi2	@ D.35298, MEM[base: _155, offset: 0B]
	strb	r0, [r3], #1	@ D.35298, MEM[base: _158, offset: 0B]
	cmp	ip, r3	@ ivtmp.240, ivtmp.230
	bne	.L346	@,
.L348:
	add	lr, lr, #1	@ i, i,
	mov	r3, ip	@ ivtmp.240, ivtmp.240
	cmp	lr, r7	@ i, chrom_height
	add	r5, r5, r4	@ ivtmp.241, ivtmp.241, ImgWidthInPixAln
	bne	.L345	@,
	b	.L344	@
.L356:
	ldr	r3, [sp, #120]	@ tmp551, chroma_idc
	cmp	r3, #1	@ tmp551,
	bne	.L363	@,
	b	.L364	@
.L336:
	ldr	r3, [sp, #120]	@ tmp550, chroma_idc
	cmp	r3, #1	@ tmp550,
	bne	.L343	@,
	b	.L344	@
.L427:
	.align	2
.L426:
	.word	.LC39
	.word	.LC41
	.word	.LC40
	.fnend
	.size	VDMHAL_V200R004_WriteBigTitle1DYuv, .-VDMHAL_V200R004_WriteBigTitle1DYuv
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.33628, %object
	.size	__func__.33628, 25
__func__.33628:
	.ascii	"VDMHAL_V200R004_CheckReg\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_V200R004_OpenHAL: input error!\000"
	.space	2
.LC1:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"line: %d\012\000"
	.space	2
.LC3:
	.ascii	"g_VdmRegVirAddr, g_VdmResetVirAddr = %p\012\000"
	.space	3
.LC4:
	.ascii	"BPDRegVirAddr %p\012\000"
	.space	2
.LC5:
	.ascii	"mem is enough!\012\000"
.LC6:
	.ascii	"!!!!!! HAL memory not enouph! need %d, have %d\012\000"
.LC7:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC8:
	.ascii	"Mem addr is 0\000"
	.space	2
.LC9:
	.ascii	"image size out of range\000"
.LC10:
	.ascii	"'pVdmMemArrange' is NULL\000"
	.space	3
.LC11:
	.ascii	"MemSize not enough for pmv slot\000"
.LC12:
	.ascii	"VDMHAL_V200R003_ArrangeMem get ChanWidth/ChanHeight"
	.ascii	" failed!\012\000"
	.space	3
.LC13:
	.ascii	"ImgSlotLen > ChanSlotLen\000"
	.space	3
.LC14:
	.ascii	"cann't allocate img slot\000"
	.space	3
.LC15:
	.ascii	"cann't allocate PMV slot\000"
	.space	3
.LC16:
	.ascii	"VDMHAL_V200R004_ResetVdm: map vdm register fail, vi"
	.ascii	"r(reg) = (%p)\012\000"
	.space	2
.LC17:
	.ascii	"VDH: %d VDMHAL_V200R004_ResetVdm ERROR!!!\012\000"
	.space	1
.LC18:
	.ascii	"GLB Reset failed!\012\000"
	.space	1
.LC19:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC20:
	.ascii	"%s: VdhId(%d) Invalid!\012\000"
.LC21:
	.ascii	"%s: vdm register virtual address not mapped, reset "
	.ascii	"failed!\012\000"
.LC22:
	.ascii	"%s: unkown reg_id = %d\012\000"
.LC23:
	.ascii	"VDM register not mapped yet!\000"
	.space	3
.LC24:
	.ascii	"VDM register not mapped yet!\012\000"
	.space	2
.LC25:
	.ascii	"can NOT map vir addr for up-msg\000"
.LC26:
	.ascii	"ReadUpMsgSlot error!\012\000"
	.space	2
.LC27:
	.ascii	"WriteMsgSlot error!\012\000"
	.space	3
.LC28:
	.ascii	"can not map repair msg virtual address!\000"
.LC29:
	.ascii	"ValidGroupNum=%d out of range!\012\000"
.LC30:
	.ascii	"'pDecReport' is NULL\000"
	.space	3
.LC31:
	.ascii	"\012***** UpMsg DecSliceNum=%d\012\000"
	.space	3
.LC32:
	.ascii	"\012***** Up Msg (phy addr: %#8x) *****\012\000"
	.space	2
.LC33:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC34:
	.ascii	"\012***** Up Msg print finished *****\012\000"
.LC35:
	.ascii	"vdm register virtual address not mapped, VDMHAL_V20"
	.ascii	"0R003_PrepareRepair failed!\012\000"
.LC36:
	.ascii	"FIRST_REPAIR Parameter Error!\012\000"
	.space	1
.LC37:
	.ascii	"SECOND_REPAIR Parameter Error!\012\000"
.LC38:
	.ascii	"VdhId is wrong! VDMHAL_V200R004_StartHwDecode\012\000"
	.space	1
.LC39:
	.ascii	"BigTile1d_y\000"
.LC40:
	.ascii	"failed mem_allocMemBlock BigTile_yuv save!\012\000"
.LC41:
	.ascii	"BigTile1d_uv\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
