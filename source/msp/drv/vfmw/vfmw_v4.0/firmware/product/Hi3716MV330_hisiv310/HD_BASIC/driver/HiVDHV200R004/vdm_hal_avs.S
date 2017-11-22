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
	.file	"vdm_hal_avs.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.o
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
	.global	AVSHAL_V200R004_StartDec_CheckParam
	.type	AVSHAL_V200R004_StartDec_CheckParam, %function
AVSHAL_V200R004_StartDec_CheckParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ VdhId, VdhId
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bgt	.L8	@,
	ldrh	r3, [r1, #48]	@ pAvsDecParam_6(D)->PicWidthInMb, pAvsDecParam_6(D)->PicWidthInMb
	cmp	r3, #512	@ pAvsDecParam_6(D)->PicWidthInMb,
	bhi	.L9	@,
	ldrh	r3, [r1, #50]	@ pAvsDecParam_6(D)->PicHeightInMb, pAvsDecParam_6(D)->PicHeightInMb
	cmp	r3, #512	@ pAvsDecParam_6(D)->PicHeightInMb,
	movls	r0, #0	@ D.31909,
	bhi	.L10	@,
.L3:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L8:
	mov	r0, #0	@ tmp118,
	ldr	r2, .L11	@,
	str	r0, [sp]	@ tmp118,
	ldr	r1, .L11+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31909,
	b	.L3	@
.L9:
	ldr	r3, .L11+8	@,
	mov	r2, #84	@,
	ldr	r1, .L11+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31909,
	b	.L3	@
.L10:
	ldr	r3, .L11+8	@,
	mov	r2, #85	@,
	ldr	r1, .L11+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31909,
	b	.L3	@
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	AVSHAL_V200R004_StartDec_CheckParam, .-AVSHAL_V200R004_StartDec_CheckParam
	.align	2
	.global	AVSHAL_V200R004_StartDec_GetRegAddr
	.type	AVSHAL_V200R004_StartDec_GetRegAddr, %function
AVSHAL_V200R004_StartDec_GetRegAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L16	@,
	cmp	r0, #1	@ VdhId,
	bne	.L23	@,
.L16:
	mov	r3, #0	@ tmp117,
	ldr	r6, .L26	@ tmp119,
	movt	r3, 4115	@ tmp117,
	str	r3, [r1]	@ tmp117, *vdm_reg_phy_addr_8(D)
	movw	r3, #1144	@ tmp121,
	mul	r5, r3, r0	@ tmp120, tmp121, VdhId
	mov	r0, #0	@,
	ldr	r4, [r6, r5]	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	cmp	r4, #0	@ g_HwMem[VdhId_5(D)].pVdmRegVirAddr,
	beq	.L25	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L23:
	ldr	r1, .L26+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31920,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L25:
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L19	@,
	str	r3, [r6, r5]	@ p32, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	mov	r0, r4	@ D.31920, g_HwMem[VdhId_5(D)].pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L19:
	ldr	r1, .L26+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31920,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L27:
	.align	2
.L26:
	.word	g_HwMem
	.word	.LC3
	.word	.LC4
	.fnend
	.size	AVSHAL_V200R004_StartDec_GetRegAddr, .-AVSHAL_V200R004_StartDec_GetRegAddr
	.align	2
	.global	AVSHAL_V200R004_StartDec_GetStrmAddr
	.type	AVSHAL_V200R004_StartDec_GetStrmAddr, %function
AVSHAL_V200R004_StartDec_GetStrmAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	lr, r0, #12288	@ tmp170, pAvsDecParam,
	mvn	r2, #0	@ tmp157,
	str	r2, [r1]	@ tmp157, *stream_base_addr_9(D)
	ldr	r3, [lr, #2136]	@ pAvsDecParam_11(D)->SlcNum, pAvsDecParam_11(D)->SlcNum
	cmp	r3, #0	@ pAvsDecParam_11(D)->SlcNum,
	movgt	ip, #0	@ i,
	ble	.L36	@,
.L31:
	ldr	r3, [r0, #88]	@ D.31937, MEM[base: _2, offset: 88B]
	cmp	r3, #0	@ D.31937,
	beq	.L34	@,
	ldr	r4, [r0, #96]	@ MEM[base: _2, offset: 96B], MEM[base: _2, offset: 96B]
	bic	r3, r3, #15	@ tmp_base_addr, D.31937,
	cmp	r4, #0	@ MEM[base: _2, offset: 96B],
	ble	.L34	@,
	cmp	r2, r3	@ D.31939, tmp_base_addr
	movcs	r2, r3	@ D.31939, tmp_base_addr
	str	r2, [r1]	@ D.31939, *stream_base_addr_9(D)
.L34:
	ldr	r3, [r0, #92]	@ D.31937, MEM[base: _2, offset: 92B]
	cmp	r3, #0	@ D.31937,
	beq	.L32	@,
	ldr	r4, [r0, #100]	@ MEM[base: _2, offset: 100B], MEM[base: _2, offset: 100B]
	bic	r3, r3, #15	@ tmp_base_addr, D.31937,
	cmp	r4, #0	@ MEM[base: _2, offset: 100B],
	ble	.L32	@,
	cmp	r2, r3	@ D.31939, tmp_base_addr
	movcs	r2, r3	@ D.31939, tmp_base_addr
	str	r2, [r1]	@ D.31939, *stream_base_addr_9(D)
.L32:
	ldr	r3, [lr, #2136]	@ pAvsDecParam_11(D)->SlcNum, pAvsDecParam_11(D)->SlcNum
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #28	@ ivtmp.38, ivtmp.38,
	cmp	r3, ip	@ pAvsDecParam_11(D)->SlcNum, i
	bgt	.L31	@,
	cmn	r2, #1	@ D.31939,
	beq	.L36	@,
	mov	r0, #0	@ D.31936,
	ldmfd	sp!, {r4, pc}	@
.L36:
	mvn	r2, #0	@,
	ldr	r1, .L44	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31936,
	ldmfd	sp!, {r4, pc}	@
.L45:
	.align	2
.L44:
	.word	.LC5
	.fnend
	.size	AVSHAL_V200R004_StartDec_GetStrmAddr, .-AVSHAL_V200R004_StartDec_GetStrmAddr
	.align	2
	.global	AVSHAL_V200R004_WirteSlicMsg_MV330_Process
	.type	AVSHAL_V200R004_WirteSlicMsg_MV330_Process, %function
AVSHAL_V200R004_WirteSlicMsg_MV330_Process:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ D.31946, *bit_offset_0_2(D)
	cmp	r3, #7	@ D.31946,
	subhi	r3, r3, #8	@ D.31946, D.31946,
	ldrls	r3, [r2]	@ *bit_stream_addr_0_4(D), *bit_stream_addr_0_4(D)
	subls	r3, r3, #4	@ D.31946, *bit_stream_addr_0_4(D),
	strls	r3, [r2]	@ D.31946, *bit_stream_addr_0_4(D)
	ldrls	r3, [r0]	@ *bit_offset_0_2(D), *bit_offset_0_2(D)
	addls	r3, r3, #120	@ D.31946, *bit_offset_0_2(D),
	str	r3, [r0]	@ D.31946, *bit_offset_0_2(D)
	ldr	r3, [r1]	@ *bit_len_0_7(D), *bit_len_0_7(D)
	add	r3, r3, #8	@ D.31946, *bit_len_0_7(D),
	str	r3, [r1]	@ D.31946, *bit_len_0_7(D)
	bx	lr	@
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg_MV330_Process, .-AVSHAL_V200R004_WirteSlicMsg_MV330_Process
	.align	2
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L78	@ tmp273,
	movw	r3, #1144	@ tmp275,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	mla	r3, r3, r2, ip	@ tmp276, tmp275, VdhId, tmp273
	mov	r8, r0	@ pAvsDecParam, pAvsDecParam
	str	r0, [sp, #8]	@ pAvsDecParam, %sfp
	add	r10, r0, #88	@ SliceInfo, pAvsDecParam,
	mov	r7, r2	@ VdhId, VdhId
	mov	r4, #0	@ tmp270,
	str	r1, [sp]	@ stream_base_addr, %sfp
	str	r4, [sp, #28]	@ tmp270, bit_offset_0
	ldr	r5, [r3, #44]	@ D.31958, g_HwMem[VdhId_34(D)].MsgSlotAddr
	str	r4, [sp, #32]	@ tmp270, bit_len_0
	add	r3, r5, #320	@ MsgBlockPhy, D.31958,
	str	r4, [sp, #36]	@ tmp270, bit_stream_addr_0
	mov	r0, r5	@, D.31958
	str	r3, [sp, #12]	@ MsgBlockPhy, %sfp
	bl	MEM_Phy2Vir	@
	mov	r1, r7, asl #5	@ tmp282, VdhId,
	ldr	r3, .L78+4	@ tmp279,
	add	r2, r1, r7, lsl #3	@ tmp283, tmp282, VdhId,
	ldr	r1, .L78+8	@ tmp278,
	add	r2, r3, r2	@ tmp284, tmp279, tmp283
	ldr	r3, [r8, #104]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn
	ldr	r2, [r2, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_34(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_34(D)].ChanId
	cmp	r3, r4	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn,
	ldr	r2, [r1, r2, asl #2]	@ D.31959, s_pstVfmwChan
	ldr	r1, [r2, #188]	@ _40->stChanMem_scd.VirAddr, _40->stChanMem_scd.VirAddr
	ldr	r2, [r2, #192]	@ _40->stChanMem_scd.PhyAddr, _40->stChanMem_scd.PhyAddr
	rsb	r2, r2, r1	@ phytovir, _40->stChanMem_scd.PhyAddr, _40->stChanMem_scd.VirAddr
	str	r2, [sp, #4]	@ phytovir, %sfp
	mov	r6, r0	@ pMsgBase,
	add	r7, r0, #320	@ pMsgBase, pMsgBase,
	bne	.L72	@,
.L50:
	ldr	r2, [sp, #8]	@ pAvsDecParam, %sfp
	add	fp, r2, #12288	@ tmp412, pAvsDecParam,
	ldr	r2, [fp, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	cmp	r2, #0	@ pAvsDecParam_32(D)->SlcNum,
	ble	.L49	@,
	mov	r3, r3, asl #8	@ D.31958, AddSlice0Flag,
	str	r3, [sp, #16]	@ D.31958, %sfp
	mov	r3, #0	@ k,
	mov	r8, r3	@ j, k
	mov	r5, r3	@ i, k
	b	.L64	@
.L74:
	mov	r9, r5, asl #2	@ tmp413, i,
	mov	r2, r5, asl #5	@ tmp414, i,
	rsb	r0, r9, r2	@ D.31957, tmp413, tmp414
	cmp	r5, #0	@ i,
	add	r4, r10, r0	@ tmp415, SliceInfo, D.31957
	movgt	r1, #1	@ tmp318,
	movle	r1, #0	@ tmp318,
	ldr	r6, [r4, #16]	@ _83->slice_start_mbn, _83->slice_start_mbn
	ldr	lr, [r4, #-12]	@ _86->slice_start_mbn, _86->slice_start_mbn
	cmp	r6, lr	@ _83->slice_start_mbn, _86->slice_start_mbn
	movhi	r6, #0	@, tmp326
	andls	r6, r1, #1	@,, tmp326, tmp318
	cmp	r6, #0	@ tmp326,
	beq	.L73	@,
	ldr	r2, [fp, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ pAvsDecParam_32(D)->SlcNum, i
	ble	.L49	@,
.L64:
	cmp	r8, #512	@ j,
	blt	.L74	@,
	sub	r5, r3, #1	@ i, k,
.L77:
	ldr	r2, [fp, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	add	r5, r5, #1	@ i, i,
	cmp	r2, r5	@ pAvsDecParam_32(D)->SlcNum, i
	bgt	.L64	@,
.L49:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L73:
	ldr	r1, [sp, #4]	@ phytovir, %sfp
	ldr	r3, [r10, r0]	@ D.31957, _83->stream_phy_addr
	add	lr, r1, r3	@ D.31957, phytovir, D.31957
	ldr	r1, [lr, #3]	@ *_92, *_92
	bic	r1, r1, #-16777216	@ u32start_data, *_92,
	cmp	r1, #131072	@ u32start_data,
	beq	.L75	@,
	ldr	r1, [sp]	@ stream_base_addr, %sfp
	add	r3, r3, #4	@ D.31957, D.31957,
	rsb	r3, r1, r3	@ D.31957, stream_base_addr, D.31957
	and	r1, r3, #15	@ D.31957, D.31957,
	bic	r3, r3, #15	@ D.31957, D.31957,
	str	r3, [sp, #36]	@ D.31957, bit_stream_addr_0
	mov	r3, r1, asl #3	@ D.31957, D.31957,
	str	r3, [sp, #28]	@ D.31957, bit_offset_0
.L55:
	ldmib	r4, {r1, r3}	@ tmp415,,
	cmp	r1, #0	@ D.31957,
	sub	r3, r3, #4	@ D.31958, _83->stream_lenInByte,
	moveq	r9, r1	@ D.31968, D.31957
	mov	r3, r3, asl #3	@ D.31957, D.31958,
	moveq	r6, r9	@ D.31968, D.31968
	str	r3, [sp, #32]	@ D.31957, bit_len_0
	beq	.L56	@,
	ldr	r0, [sp, #8]	@ pAvsDecParam, %sfp
	rsb	r2, r9, r2	@ tmp366, tmp413, tmp414
	add	r2, r0, r2	@ tmp367, pAvsDecParam, tmp366
	ldr	r2, [r2, #100]	@ pAvsDecParam_32(D)->SlcStr[i_245].stream_lenInByte, pAvsDecParam_32(D)->SlcStr[i_245].stream_lenInByte
	cmp	r2, #0	@ pAvsDecParam_32(D)->SlcStr[i_245].stream_lenInByte,
	ble	.L68	@,
	ldr	r2, [sp]	@ stream_base_addr, %sfp
	cmp	r3, #0	@ D.31957,
	rsb	ip, r2, r1	@ D.31957, stream_base_addr, D.31957
	ldr	r1, [r4, #12]	@ _83->stream_lenInByte, _83->stream_lenInByte
	and	r6, ip, #15	@ D.31957, D.31957,
	bicne	r9, ip, #-16777216	@ D.31968, D.31957,
	moveq	r9, r3	@ D.31968, D.31957
	bicne	r9, r9, #15	@ D.31968, D.31968,
	mov	r2, r6, asl #3	@ bit_offset_1, D.31957,
	mov	r1, r1, asl #3	@ bit_len_1, _83->stream_lenInByte,
	bicne	r6, r1, #-33554432	@ D.31957, bit_len_1,
	moveq	r6, r9	@ D.31968, D.31968
	orrne	r6, r6, r2, asl #25	@ D.31968, D.31957, bit_offset_1,
	bic	r0, ip, #15	@ bit_stream_addr_1, D.31957,
	streq	r2, [sp, #28]	@ bit_offset_1, bit_offset_0
	streq	r0, [sp, #36]	@ bit_stream_addr_1, bit_stream_addr_0
	streq	r1, [sp, #32]	@ bit_len_1, bit_len_0
.L56:
	add	r2, sp, #36	@,,
	add	r1, sp, #32	@,,
	add	r0, sp, #28	@,,
	bl	AVSHAL_V200R004_WirteSlicMsg_MV330_Process	@
	ldr	r1, [sp, #28]	@ bit_offset_0, bit_offset_0
	ldr	r3, [sp, #32]	@ bit_len_0, bit_len_0
	mov	r2, r5, asl #8	@ D.31962, i,
	add	r0, r2, #8	@ D.31962, D.31962,
	add	lr, r2, #4	@ D.31962, D.31962,
	bic	r3, r3, #-33554432	@ D.31957, bit_len_0,
	orr	r3, r3, r1, asl #25	@ D32, D.31957, bit_offset_0,
	str	r3, [r7, r5, asl #8]	@ D32, *_163
	ldr	ip, [sp, #36]	@ tmp457, bit_stream_addr_0
	add	r1, r2, #12	@ D.31962, D.31962,
	add	r3, r5, #1	@ k, i,
	bic	r5, ip, #-16777216	@ D32, tmp457,
	str	r5, [r7, lr]	@ D32, MEM[(volatile HI_S32 *)_169]
	str	r6, [r7, r0]	@ D.31968, MEM[(volatile HI_S32 *)_177]
	str	r9, [r7, r1]	@ D.31968, MEM[(volatile HI_S32 *)_182]
	ldr	r0, [fp, #2136]	@ D.31958, pAvsDecParam_32(D)->SlcNum
	ldr	r1, [r4, #16]	@ D.31957, _83->slice_start_mbn
	cmp	r3, r0	@ k, D.31958
	bge	.L59	@,
	ldr	ip, [r4, #44]	@ _243->slice_start_mbn, _243->slice_start_mbn
	cmp	r1, ip	@ D.31957, _243->slice_start_mbn
	bcs	.L60	@,
	b	.L59	@
.L61:
	ldr	ip, [r4, #44]	@ MEM[base: _12, offset: 44B], MEM[base: _12, offset: 44B]
	cmp	ip, r1	@ MEM[base: _12, offset: 44B], D.31957
	bhi	.L59	@,
.L60:
	add	r3, r3, #1	@ k, k,
	add	r4, r4, #28	@ ivtmp.53, ivtmp.53,
	cmp	r3, r0	@ k, D.31958
	blt	.L61	@,
.L59:
	cmp	r0, r3	@ D.31958, k
	beq	.L76	@,
	mov	ip, r3, asl #5	@ tmp398, k,
	ldr	r0, [sp, #12]	@ MsgBlockPhy, %sfp
	sub	ip, ip, r3, asl #2	@ tmp399, tmp398, k,
	ldr	lr, [sp, #16]	@ D.31958, %sfp
	add	ip, r10, ip	@ tmp400, SliceInfo, tmp399
	add	r0, r0, r3, lsl #8	@ D.31958, MsgBlockPhy, k,
	add	r0, r0, lr	@ D.31958, D.31958, D.31958
	ldr	ip, [ip, #16]	@ _202->slice_start_mbn, _202->slice_start_mbn
	sub	ip, ip, #1	@ slice_end_mbn, _202->slice_start_mbn,
.L63:
	add	lr, r2, #16	@ D.31962, D.31962,
	add	r2, r2, #252	@ D.31962, D.31962,
	uxth	r1, r1	@ D.31957, D.31957
	add	r8, r8, #1	@ j, j,
	orr	r1, r1, ip, asl #16	@ D32, D.31957, slice_end_mbn,
	sub	r5, r3, #1	@ i, k,
	str	r1, [r7, lr]	@ D32, MEM[(volatile HI_S32 *)_217]
	str	r0, [r7, r2]	@ D.31958, MEM[(volatile HI_S32 *)_221]
	b	.L77	@
.L75:
	strb	r6, [lr, #2]	@ tmp326, *_96
	mov	lr, #64	@ tmp333,
	ldr	r3, [r10, r0]	@ _83->stream_phy_addr, _83->stream_phy_addr
	mov	r1, #1	@,
	str	r2, [sp, #20]	@ tmp414, %sfp
	ldr	r2, [sp, #4]	@ phytovir, %sfp
	add	r3, r2, r3	@ tmp332, phytovir, _83->stream_phy_addr
	strb	lr, [r3, #4]	@ tmp333, *_101
	ldr	r3, [r10, r0]	@ _83->stream_phy_addr, _83->stream_phy_addr
	add	r3, r2, r3	@ tmp336, phytovir, _83->stream_phy_addr
	ldr	r2, .L78+12	@ tmp449,
	strb	lr, [r3, #5]	@ tmp333, *_106
	ldr	r3, [r10, r0]	@ _83->stream_phy_addr, _83->stream_phy_addr
	ldr	r0, [r2]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r2, [sp]	@ stream_base_addr, %sfp
	add	r3, r3, #2	@ D.31957, _83->stream_phy_addr,
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	rsb	r3, r2, r3	@ D.31957, stream_base_addr, D.31957
	and	lr, r3, #15	@ D.31957, D.31957,
	bic	r3, r3, #15	@ D.31957, D.31957,
	str	r3, [sp, #36]	@ D.31957, bit_stream_addr_0
	mov	lr, lr, asl #3	@ D.31957, D.31957,
	str	lr, [sp, #28]	@ D.31957, bit_offset_0
	bl	MEM_WritePhyWord	@
	ldr	r3, .L78+12	@ tmp451,
	mov	r1, #1	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #1792	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, .L78+12	@ tmp452,
	mov	r1, r6	@, tmp326
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, .L78+12	@ tmp453,
	mov	r1, r6	@, tmp326
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r2, [sp, #20]	@ tmp414, %sfp
	b	.L55	@
.L76:
	ldr	ip, [sp, #8]	@ pAvsDecParam, %sfp
	mov	r0, #0	@ D.31958,
	ldrh	lr, [ip, #48]	@ D.31958, pAvsDecParam_32(D)->PicWidthInMb
	ldrh	ip, [ip, #50]	@ D.31958, pAvsDecParam_32(D)->PicHeightInMb
	mul	ip, ip, lr	@ D.31958, D.31958, D.31958
	sub	ip, ip, #1	@ slice_end_mbn, D.31958,
	b	.L63	@
.L68:
	mov	r9, #0	@ D.31968,
	mov	r6, r9	@ D.31968, D.31968
	b	.L56	@
.L72:
	ldr	r8, [sp, #8]	@ pAvsDecParam, %sfp
	add	r2, sp, #36	@,,
	ldr	ip, [sp]	@ stream_base_addr, %sfp
	add	r1, sp, #32	@,,
	add	r0, sp, #28	@,,
	str	r4, [sp, #32]	@ tmp270, bit_len_0
	ldr	r3, [r8, #88]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr
	add	r5, r5, #576	@ D32, D.31958,
	add	r3, r3, #4	@ D.31957, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr,
	rsb	r3, ip, r3	@ D.31957, stream_base_addr, D.31957
	and	lr, r3, #15	@ D.31957, D.31957,
	bic	r3, r3, #15	@ D.31957, D.31957,
	str	r3, [sp, #36]	@ D.31957, bit_stream_addr_0
	mov	lr, lr, asl #3	@ D.31957, D.31957,
	str	lr, [sp, #28]	@ D.31957, bit_offset_0
	bl	AVSHAL_V200R004_WirteSlicMsg_MV330_Process	@
	ldr	r2, [sp, #32]	@ bit_len_0, bit_len_0
	ldr	r0, [sp, #28]	@ bit_offset_0, bit_offset_0
	mov	r3, #1	@ AddSlice0Flag,
	ldr	r1, [sp, #36]	@ bit_stream_addr_0, bit_stream_addr_0
	bic	r2, r2, #-33554432	@ D.31957, bit_len_0,
	orr	r2, r2, r0, asl #25	@ D32, D.31957, bit_offset_0,
	bic	r1, r1, #-16777216	@ D32, bit_stream_addr_0,
	str	r2, [r6, #320]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_38 + 320B]
	str	r1, [r6, #324]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_38 + 324B]
	str	r4, [r6, #328]	@ tmp270, MEM[(volatile HI_S32 *)pMsgBase_38 + 328B]
	str	r4, [r6, #332]	@ tmp270, MEM[(volatile HI_S32 *)pMsgBase_38 + 332B]
	ldr	r2, [r8, #104]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn
	sub	r2, r2, #1	@ slice_end_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn,
	mov	r2, r2, asl #16	@ D32, slice_end_mbn,
	str	r2, [r6, #336]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_38 + 336B]
	str	r5, [r6, #572]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_38 + 572B]
	b	.L50	@
.L79:
	.align	2
.L78:
	.word	g_HwMem
	.word	g_VdmDrvParam
	.word	s_pstVfmwChan
	.word	s_RegPhyBaseAddr
	.fnend
	.size	AVSHAL_V200R004_WirteSlicMsg, .-AVSHAL_V200R004_WirteSlicMsg
	.align	2
	.global	AVSHAL_V200R004_StartDec
	.type	AVSHAL_V200R004_StartDec, %function
AVSHAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pAvsDecParam, pAvsDecParam
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, r1	@, VdhId
	mov	r8, r1	@ VdhId, VdhId
	mov	r1, r4	@, pAvsDecParam
	bl	AVSHAL_V200R004_StartDec_CheckParam	@
	cmp	r0, #0	@,
	bne	.L83	@,
	add	r1, sp, #12	@,,
	mov	r0, r8	@, VdhId
	bl	AVSHAL_V200R004_StartDec_GetRegAddr	@
	cmp	r0, #0	@,
	bne	.L83	@,
	add	r1, sp, #8	@,,
	mov	r0, r4	@, pAvsDecParam
	bl	AVSHAL_V200R004_StartDec_GetStrmAddr	@
	subs	r5, r0, #0	@ D.32006,
	bne	.L83	@,
	ldrh	r1, [r4, #48]	@ D.32007, pAvsDecParam_12(D)->PicWidthInMb
	movw	r6, #1144	@ tmp418,
	ldrh	r2, [r4, #50]	@ D.32007, pAvsDecParam_12(D)->PicHeightInMb
	mov	r3, r5	@ tmp397, D.32006
	mul	r6, r6, r8	@ tmp417, tmp418, VdhId
	ldr	r9, .L93	@ tmp955,
	mul	r2, r2, r1	@ D.32007, D.32007, D.32007
	mov	r0, #3	@,
	ldr	r1, .L93+4	@,
	add	r7, r4, #12288	@ tmp954, pAvsDecParam,
	add	r10, r9, r6	@ tmp419, tmp955, tmp417
	sub	r2, r2, #1	@ D.32007, D.32007,
	ldr	lr, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	bfi	r3, r2, #0, #20	@ tmp397, D.32007,,
	str	r3, [sp, #4]	@ tmp397,
	ubfx	r2, r3, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp397,,
	mov	r3, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp397,
	orr	r2, r2, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	orr	r3, r3, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfi	r2, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, D.32006,,
	bfi	r3, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, D.32006,,
	strb	r2, [sp, #6]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	uxtb	r3, r3	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	orr	r3, r3, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	bfi	r3, r5, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, D.32006,,
	strb	r3, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	r2, [sp, #4]	@ D.32007, D32
	str	r2, [lr, #8]	@ D.32007, *_38
	bl	dprint_vfmw	@
	mov	r3, #805306368	@ tmp422,
	str	r3, [sp, #4]	@ tmp422, D32
	mov	r1, #1	@ tmp440,
	ldrh	r3, [sp, #6]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	mov	r2, #6	@ tmp425,
	ldr	lr, [r7, #2556]	@ pAvsDecParam_12(D)->VahbStride, pAvsDecParam_12(D)->VahbStride
	mov	r0, #3	@,
	bfi	r3, r1, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp440,,
	strh	r3, [sp, #6]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	strb	r2, [sp, #4]	@ tmp425, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	mov	r3, r3, lsr #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,
	ldrh	r2, [sp, #4]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r3, r5, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, D.32006,,
	mov	lr, lr, lsr #6	@ D.32009, pAvsDecParam_12(D)->VahbStride,
	ldr	r1, [r7, #2580]	@ pAvsDecParam_12(D)->Compress_en, pAvsDecParam_12(D)->Compress_en
	bfi	r2, lr, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.32009,,
	uxtb	r3, r3	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	ubfx	lr, r2, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	orr	r3, r3, #32	@ tmp445, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	orr	lr, lr, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	lr, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, D.32006,,
	uxtb	r3, r3	@ tmp450, tmp445
	strb	lr, [sp, #5]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	bfi	r3, r1, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pAvsDecParam_12(D)->Compress_en,,
	ldr	r1, .L93+8	@,
	bfi	r3, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, D.32006,,
	strb	r3, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	ldr	r3, [sp, #4]	@ D.32007, D32
	ldr	lr, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mov	r2, r3	@, D.32007
	str	r3, [lr, #12]	@ D.32007, *_62
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [r10, #44]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L93+12	@,
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r2, [r3, #16]	@ D.32007, *_74
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [r10, #28]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L93+16	@,
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r2, [r3, #20]	@ D.32007, *_85
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [sp, #8]	@ D.32007, stream_base_addr
	mov	r0, #3	@,
	ldr	r1, .L93+20	@,
	str	r2, [r3, #24]	@ D.32007, *_94
	bl	dprint_vfmw	@
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp495,
	ldr	r1, .L93+24	@,
	movt	r3, 48	@ tmp495,
	mov	r0, #3	@,
	str	r3, [r2, #60]	@ tmp495, *_103
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp495, *_108
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp495, *_113
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp495, *_118
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp495, *_123
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp495, *_128
	ldr	r2, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp495, *_133
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [r7, #2152]	@ pAvsDecParam_12(D)->CurPicAddr, pAvsDecParam_12(D)->CurPicAddr
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->CurPicAddr,
	str	r2, [r3, #96]	@ D.32007, *_142
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [r7, #2556]	@ D.32007, pAvsDecParam_12(D)->VahbStride
	mov	r0, #3	@,
	ldr	r1, .L93+28	@,
	str	r2, [r3, #100]	@ D.32007, *_151
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r2, [r7, #2560]	@ D.32007, pAvsDecParam_12(D)->uv_offset
	mov	r0, #3	@,
	ldr	r1, .L93+32	@,
	str	r2, [r3, #104]	@ D.32007, *_160
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r1, .L93+36	@,
	mov	r0, #3	@,
	str	r5, [r3, #108]	@ D.32006, *_167
	ldr	lr, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r3, [r10, #1120]	@ D.32007, g_HwMem[VdhId_11(D)].DnrMbInfoAddr
	str	r3, [lr, #144]	@ D.32007, *_174
	mov	r2, r3	@, D.32007
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mov	r2, r5	@, D.32006
	ldr	r1, .L93+40	@,
	mov	r0, #3	@,
	str	r5, [sp, #4]	@ D.32006, D32
	str	r5, [r3, #148]	@ D.32006, *_181
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mov	r2, r5	@, D.32006
	ldr	r1, .L93+44	@,
	mov	r0, #3	@,
	str	r5, [r3, #152]	@ D.32006, *_187
	bl	dprint_vfmw	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp1023,
	str	r2, [r3, #32]	@ tmp1023, *_193
	ldr	r0, [r10, #44]	@, g_HwMem[VdhId_11(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ p32,
	beq	.L92	@,
	ldrh	r3, [r4, #50]	@ pAvsDecParam_12(D)->PicHeightInMb, pAvsDecParam_12(D)->PicHeightInMb
	mov	r0, #4	@,
	ldrh	r1, [sp, #6]	@, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb
	sub	r3, r3, #1	@ tmp610, pAvsDecParam_12(D)->PicHeightInMb,
	ldrh	ip, [r4, #48]	@ pAvsDecParam_12(D)->PicWidthInMb, pAvsDecParam_12(D)->PicWidthInMb
	bfi	r1, r3, #0, #9	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb, tmp610,,
	ldrb	lr, [r4, #31]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ChromaFormat, pAvsDecParam_12(D)->ChromaFormat
	ldrh	r2, [sp, #4]	@, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb
	sub	ip, ip, #1	@ tmp605, pAvsDecParam_12(D)->PicWidthInMb,
	mov	r3, r1, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].chroma_format, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb,
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb
	bfi	r2, ip, #0, #9	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb, tmp605,,
	bfi	r3, lr, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].chroma_format, pAvsDecParam_12(D)->ChromaFormat,,
	ldrb	lr, [r4, #30]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->SamplePrecision, pAvsDecParam_12(D)->SamplePrecision
	mov	r1, r2, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb,
	strh	r2, [sp, #4]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb
	bfi	r3, lr, #3, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].sample_precision, pAvsDecParam_12(D)->SamplePrecision,,
	bfi	r1, r5, #1, #7	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, D.32006,,
	bfi	r3, r5, #5, #3	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1, D.32006,,
	strb	r1, [sp, #5]	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0
	strb	r3, [sp, #7]	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1
	ldr	r2, [sp, #4]	@ D.32007, D32
	ldr	r1, .L93+48	@,
	str	r2, [r6]	@ D.32007, MEM[(volatile HI_S32 *)p32_197]
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #16]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ProgrsvFrame, pAvsDecParam_12(D)->ProgrsvFrame
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicStruct, pAvsDecParam_12(D)->PicStruct
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].progressive_frame, D.32006
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicRefFlag, pAvsDecParam_12(D)->PicRefFlag
	bfi	r3, r2, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].progressive_frame, pAvsDecParam_12(D)->ProgrsvFrame,,
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicCodingType, pAvsDecParam_12(D)->PicCodingType
	bfi	r3, ip, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].picture_structure, pAvsDecParam_12(D)->PicStruct,,
	ldrb	lr, [r4, #15]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->TopFieldFirst, pAvsDecParam_12(D)->TopFieldFirst
	mov	r1, r5, lsr #16	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_ref_flag, D.32006,
	ldrb	ip, [r4, #9]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->NoFwdRefFlag, pAvsDecParam_12(D)->NoFwdRefFlag
	bfi	r1, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_ref_flag, pAvsDecParam_12(D)->PicRefFlag,,
	ldrb	fp, [r4, #12]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicQuant, pAvsDecParam_12(D)->PicQuant
	bfi	r3, r2, #3, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_coding_type, pAvsDecParam_12(D)->PicCodingType,,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->RepeatFirstField, pAvsDecParam_12(D)->RepeatFirstField
	bfi	r3, lr, #5, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].top_field_first, pAvsDecParam_12(D)->TopFieldFirst,,
	mov	r2, r5, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_qp, D.32006,
	ldrb	lr, [r4, #11]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->SkipModeFlag, pAvsDecParam_12(D)->SkipModeFlag
	str	r5, [sp, #4]	@ D.32006, D32
	bfi	r1, ip, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag, pAvsDecParam_12(D)->NoFwdRefFlag,,
	bfi	r3, r0, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].repeat_first_field, pAvsDecParam_12(D)->RepeatFirstField,,
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FixQPFlag, pAvsDecParam_12(D)->FixQPFlag
	ldrb	r0, [r4, #22]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->AdvPredModeDisable, pAvsDecParam_12(D)->AdvPredModeDisable
	bfi	r2, fp, #0, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_qp, pAvsDecParam_12(D)->PicQuant,,
	strb	r1, [sp, #6]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag
	bfi	r2, lr, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].skip_mode_flag, pAvsDecParam_12(D)->SkipModeFlag,,
	ldrh	r1, [sp, #6]	@, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv
	bfi	r3, ip, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp, pAvsDecParam_12(D)->FixQPFlag,,
	bfi	r2, r0, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable, pAvsDecParam_12(D)->AdvPredModeDisable,,
	strb	r3, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp
	bfi	r1, r5, #2, #14	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv, D.32006,,
	strb	r2, [sp, #5]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable
	strh	r1, [sp, #6]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv
	mov	r0, #4	@,
	ldr	r2, [sp, #4]	@ D.32007, D32
	ldr	r1, .L93+52	@,
	str	r2, [r6, #4]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 4B]
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->LoopFiltDisable, pAvsDecParam_12(D)->LoopFiltDisable
	ldrb	r2, [r4, #19]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->LoopFiltParamFlag, pAvsDecParam_12(D)->LoopFiltParamFlag
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_disable, D.32006
	bfi	r3, r1, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_disable, pAvsDecParam_12(D)->LoopFiltDisable,,
	ldrb	r1, [r4, #18]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->AlphaOffset, pAvsDecParam_12(D)->AlphaOffset
	bfi	r3, r2, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_para_flag, pAvsDecParam_12(D)->LoopFiltParamFlag,,
	str	r5, [sp, #4]	@ D.32006, D32
	ldrb	r2, [r4, #17]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BetaOffset, pAvsDecParam_12(D)->BetaOffset
	bfi	r3, r1, #2, #5	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset, pAvsDecParam_12(D)->AlphaOffset,,
	strb	r3, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset, MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset
	mov	r0, #4	@,
	ldrh	r3, [sp, #4]	@,
	ldr	r1, .L93+56	@,
	bfi	r3, r2, #7, #5	@ tmp737, pAvsDecParam_12(D)->BetaOffset,,
	strh	r3, [sp, #4]	@ movhi	@ tmp737,
	ldr	r2, [sp, #4]	@ D.32007, D32
	str	r2, [r6, #8]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 8B]
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #25]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdTopFieldFirst0, pAvsDecParam_12(D)->FwdTopFieldFirst0
	ldrb	r1, [r4, #26]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdPicStruct0, pAvsDecParam_12(D)->FwdPicStruct0
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_0, D.32006
	ldrb	ip, [r4, #27]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdTopFieldFirst1, pAvsDecParam_12(D)->FwdTopFieldFirst1
	bfi	r3, r2, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_0, pAvsDecParam_12(D)->FwdTopFieldFirst0,,
	bfi	r3, r1, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_picture_structure_0, pAvsDecParam_12(D)->FwdPicStruct0,,
	ldrb	r2, [r4, #28]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdPicStruct1, pAvsDecParam_12(D)->FwdPicStruct1
	bfi	r3, ip, #3, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_1, pAvsDecParam_12(D)->FwdTopFieldFirst1,,
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BwdTopFieldFirst, pAvsDecParam_12(D)->BwdTopFieldFirst
	bfi	r3, r2, #4, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_picture_structure_1, pAvsDecParam_12(D)->FwdPicStruct1,,
	str	r5, [sp, #4]	@ D.32006, D32
	ldrb	r2, [r4, #24]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BwdPicStruct, pAvsDecParam_12(D)->BwdPicStruct
	bfi	r3, r1, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first, pAvsDecParam_12(D)->BwdTopFieldFirst,,
	strb	r3, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first
	mov	r0, #4	@,
	ldrh	r3, [sp, #4]	@,
	ldr	r1, .L93+60	@,
	bfi	r3, r2, #7, #2	@ tmp781, pAvsDecParam_12(D)->BwdPicStruct,,
	strh	r3, [sp, #4]	@ movhi	@ tmp781,
	ldr	r2, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv
	bfi	r2, r5, #9, #23	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, D.32006,,
	str	r2, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv
	str	r2, [r6, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(volatile HI_S32 *)p32_197 + 12B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2140]	@ pAvsDecParam_12(D)->BwdRefPicAddr, pAvsDecParam_12(D)->BwdRefPicAddr
	ldr	r1, .L93+64	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->BwdRefPicAddr,
	str	r2, [r6, #16]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 16B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2144]	@ pAvsDecParam_12(D)->FwdRefPic0Addr, pAvsDecParam_12(D)->FwdRefPic0Addr
	ldr	r1, .L93+68	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->FwdRefPic0Addr,
	str	r2, [r6, #20]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 20B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2148]	@ pAvsDecParam_12(D)->FwdRefPic1Addr, pAvsDecParam_12(D)->FwdRefPic1Addr
	ldr	r1, .L93+72	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->FwdRefPic1Addr,
	str	r2, [r6, #24]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 24B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2164]	@ pAvsDecParam_12(D)->rcn_address, pAvsDecParam_12(D)->rcn_address
	ldr	r1, .L93+76	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->rcn_address,
	str	r2, [r6, #28]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 28B]
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #29]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ColPicType, pAvsDecParam_12(D)->ColPicType
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ColPicStruct, pAvsDecParam_12(D)->ColPicStruct
	mov	r2, r5, lsr #24	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, D.32006,
	str	r5, [sp, #4]	@ D.32006, D32
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, D.32006
	bfi	r2, r0, #0, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, pAvsDecParam_12(D)->ColPicStruct,,
	bfi	r3, r1, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, pAvsDecParam_12(D)->ColPicType,,
	strb	r2, [sp, #7]	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct
	mov	r0, #4	@,
	strb	r3, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type
	ldr	r2, [sp, #4]	@ D.32007, D32
	ldr	r1, .L93+80	@,
	str	r2, [r6, #32]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 32B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #64]	@ pAvsDecParam_12(D)->StreamPhyAddr, pAvsDecParam_12(D)->StreamPhyAddr
	mov	r3, r5	@ tmp822, D.32006
	ldr	r1, .L93+84	@,
	bfi	r3, r2, #0, #24	@ tmp822, pAvsDecParam_12(D)->StreamPhyAddr,,
	mov	r0, #4	@,
	str	r3, [sp, #4]	@ tmp822,
	mov	r2, r3	@, tmp822
	str	r3, [r6, #36]	@ tmp822, MEM[(volatile HI_S32 *)p32_197 + 36B]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #80]	@ pAvsDecParam_12(D)->StreamLength, pAvsDecParam_12(D)->StreamLength
	ldr	r2, [r4, #72]	@ pAvsDecParam_12(D)->StreamBitOffset, pAvsDecParam_12(D)->StreamBitOffset
	mov	r3, r5	@ tmp827, D.32006
	bfi	r3, r1, #0, #24	@ tmp827, pAvsDecParam_12(D)->StreamLength,,
	str	r3, [sp, #4]	@ tmp827,
	ldrb	r3, [sp, #7]	@ zero_extendqisi2	@, MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0
	mov	r0, #4	@,
	ldr	r1, .L93+88	@,
	bfi	r3, r2, #0, #7	@ MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0, pAvsDecParam_12(D)->StreamBitOffset,,
	strb	r3, [sp, #7]	@ MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0, MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0
	ldr	r2, [sp, #4]	@ D.32007, D32
	str	r2, [r6, #40]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 40B]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #68]	@ pAvsDecParam_12(D)->StreamPhyAddr, pAvsDecParam_12(D)->StreamPhyAddr
	mov	r3, r5	@ tmp835, D.32006
	ldr	r1, .L93+92	@,
	bfi	r3, r2, #0, #24	@ tmp835, pAvsDecParam_12(D)->StreamPhyAddr,,
	mov	r0, #4	@,
	str	r3, [sp, #4]	@ tmp835,
	mov	r2, r3	@, tmp835
	str	r3, [r6, #44]	@ tmp835, MEM[(volatile HI_S32 *)p32_197 + 44B]
	bl	dprint_vfmw	@
	ldrb	r0, [r4, #32]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag
	ldrb	r1, [r4, #34]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_delta_u, pAvsDecParam_12(D)->chroma_quant_param_delta_u
	mov	r3, r5, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_u, D.32006,
	ldrb	ip, [r4, #33]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_disable, pAvsDecParam_12(D)->chroma_quant_param_disable
	mov	r2, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].weighting_quant_flag, D.32006
	bfi	r2, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag,,
	ldrb	r0, [r4, #36]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->aec_enable, pAvsDecParam_12(D)->aec_enable
	bfi	r3, r1, #0, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_u, pAvsDecParam_12(D)->chroma_quant_param_delta_u,,
	ldrb	lr, [r4, #35]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_delta_v, pAvsDecParam_12(D)->chroma_quant_param_delta_v
	bfi	r2, ip, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_disable, pAvsDecParam_12(D)->chroma_quant_param_disable,,
	bfi	r3, r0, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].aec_enable, pAvsDecParam_12(D)->aec_enable,,
	ldrb	ip, [r4, #37]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->p_filed_enhanced_flag, pAvsDecParam_12(D)->p_filed_enhanced_flag
	mov	r1, r5, lsr #16	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, D.32006,
	ldrb	r0, [r4, #38]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->b_filed_enhanced_flag, pAvsDecParam_12(D)->b_filed_enhanced_flag
	bfi	r2, lr, #2, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v, pAvsDecParam_12(D)->chroma_quant_param_delta_v,,
	bfi	r3, ip, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag, pAvsDecParam_12(D)->p_filed_enhanced_flag,,
	str	r5, [sp, #4]	@ D.32006, D32
	bfi	r1, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, pAvsDecParam_12(D)->b_filed_enhanced_flag,,
	strb	r3, [sp, #5]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag
	strb	r1, [sp, #6]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag
	mov	r0, #4	@,
	strb	r2, [sp, #4]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v
	ldr	r2, [sp, #4]	@ D.32007, D32
	ldr	r1, .L93+96	@,
	str	r2, [r6, #48]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 48B]
	bl	dprint_vfmw	@
	ldr	r2, [r10, #1084]	@ g_HwMem[VdhId_11(D)].PmvTopAddr, g_HwMem[VdhId_11(D)].PmvTopAddr
	ldr	r1, .L93+100	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].PmvTopAddr,
	str	r2, [r6, #52]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 52B]
	bl	dprint_vfmw	@
	ldr	r2, [r10, #1088]	@ g_HwMem[VdhId_11(D)].RcnTopAddr, g_HwMem[VdhId_11(D)].RcnTopAddr
	ldr	r1, .L93+104	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].RcnTopAddr,
	str	r2, [r6, #56]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 56B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2160]	@ pAvsDecParam_12(D)->ColPmvAddr, pAvsDecParam_12(D)->ColPmvAddr
	ldr	r1, .L93+108	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->ColPmvAddr,
	str	r2, [r6, #64]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 64B]
	bl	dprint_vfmw	@
	add	r3, r4, #14400	@ ivtmp.80, pAvsDecParam,
	add	r2, r4, #14528	@ D.32020, pAvsDecParam,
	add	r3, r3, #56	@ ivtmp.80, ivtmp.80,
	add	r2, r2, #56	@ D.32020, D.32020,
	add	ip, r6, #68	@ ivtmp.88, p32,
.L85:
	ldr	lr, [r3, #4]!	@ D.32007, MEM[base: _323, offset: 0B]
	cmp	r3, r2	@ ivtmp.80, D.32020
	str	lr, [ip], #4	@ D.32007, MEM[(volatile HI_S32 *)p32_418]
	bne	.L85	@,
	ldr	r2, [r7, #2156]	@ pAvsDecParam_12(D)->CurPmvAddr, pAvsDecParam_12(D)->CurPmvAddr
	mov	r0, #4	@,
	ldr	r1, .L93+112	@,
	bic	r2, r2, #15	@ D.32007, pAvsDecParam_12(D)->CurPmvAddr,
	str	r2, [r6, #196]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 196B]
	bl	dprint_vfmw	@
	movw	r3, #1144	@ tmp916,
	mla	r9, r3, r8, r9	@ tmp917, tmp916, VdhId, tmp955
	ldr	r1, .L93+116	@,
	mov	r0, #4	@,
	ldr	r2, [r9, #1096]	@ g_HwMem[VdhId_11(D)].DblkTopAddr, g_HwMem[VdhId_11(D)].DblkTopAddr
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].DblkTopAddr,
	str	r2, [r6, #200]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 200B]
	bl	dprint_vfmw	@
	ldr	r2, [r9, #1080]	@ g_HwMem[VdhId_11(D)].SedTopAddr, g_HwMem[VdhId_11(D)].SedTopAddr
	ldr	r1, .L93+120	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ D.32007, g_HwMem[VdhId_11(D)].SedTopAddr,
	str	r2, [r6, #228]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 228B]
	bl	dprint_vfmw	@
	ldr	r2, [r9, #44]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	ldr	r1, .L93+124	@,
	mov	r0, #4	@,
	add	r2, r2, #320	@ D.32007, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r2, [r6, #252]	@ D.32007, MEM[(volatile HI_S32 *)p32_197 + 252B]
	str	r2, [sp, #4]	@ D.32007, D32
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag
	cmp	r3, #1	@ pAvsDecParam_12(D)->weighting_quant_flag,
	beq	.L86	@,
.L88:
	mov	r2, r8	@, VdhId
	mov	r0, r4	@, pAvsDecParam
	ldr	r1, [sp, #8]	@, stream_base_addr
	bl	AVSHAL_V200R004_WirteSlicMsg	@
.L82:
	mov	r0, r5	@, D.32006
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L83:
	mvn	r5, #0	@ D.32006,
	mov	r0, r5	@, D.32006
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L86:
	add	r3, r4, #14528	@ ivtmp.66, pAvsDecParam,
	add	ip, r6, #256	@ p32, p32,
	add	r3, r3, #60	@ ivtmp.66, ivtmp.66,
	add	r6, r6, #320	@ D.32011, p32,
.L87:
	ldrb	r0, [r3, #8]	@ zero_extendqisi2	@ D.32009, MEM[base: _400, offset: 8B]
	add	r3, r3, #16	@ ivtmp.66, ivtmp.66,
	ldrb	r2, [r3, #-12]	@ zero_extendqisi2	@ D.32009, MEM[base: _400, offset: 4B]
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.32009, MEM[base: _400, offset: 0B]
	ldrb	lr, [r3, #-4]	@ zero_extendqisi2	@ D.32009, MEM[base: _400, offset: 12B]
	mov	r0, r0, asl #16	@ D.32009, D.32009,
	orr	r2, r0, r2, asl #8	@ D.32009, D.32009, D.32009,
	orr	r2, r2, r1	@ D.32009, D.32009, D.32009
	orr	r2, r2, lr, asl #24	@ D.32007, D.32009, D.32009,
	str	r2, [ip], #4	@ D.32007, MEM[(volatile HI_S32 *)p32_490]
	cmp	ip, r6	@ p32, D.32011
	bne	.L87	@,
	b	.L88	@
.L92:
	ldr	r3, .L93+128	@,
	mov	r2, #300	@,
	ldr	r1, .L93+132	@,
	mvn	r5, #0	@ D.32006,
	bl	dprint_vfmw	@
	b	.L82	@
.L94:
	.align	2
.L93:
	.word	g_HwMem
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
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
	.word	.LC17
	.word	.LC2
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.31399, %object
	.size	__func__.31399, 36
__func__.31399:
	.ascii	"AVSHAL_V200R004_StartDec_CheckParam\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s: VdhId(%d) > %d\012\000"
.LC1:
	.ascii	"picture width out of range\000"
	.space	1
.LC2:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC3:
	.ascii	"VdhId is wrong! AVSHAL_V200R003_StartDec\012\000"
	.space	2
.LC4:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC5:
	.ascii	"stream_base_addr = %#x\012\000"
.LC6:
	.ascii	"BASIC_V200R004_CFG0 = 0x%x\012\000"
.LC7:
	.ascii	"BASIC_V200R004_CFG1 = 0x%x\012\000"
.LC8:
	.ascii	"AVM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC9:
	.ascii	"VAM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC10:
	.ascii	"STREAM_V200R004_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC11:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC12:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC13:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC14:
	.ascii	"VREG_V200R004_DNR_MBINFO_STADDR = 0x%x\012\000"
.LC15:
	.ascii	"VREG_V200R003_REF_PIC_TYPE = 0x%x\012\000"
	.space	1
.LC16:
	.ascii	"VREG_V200R004_FF_APT_EN = 0x%x\012\000"
.LC17:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC18:
	.ascii	"D0 = 0x%x\012\000"
	.space	1
.LC19:
	.ascii	"D1 = 0x%x\012\000"
	.space	1
.LC20:
	.ascii	"D2 = 0x%x\012\000"
	.space	1
.LC21:
	.ascii	"D3 = 0x%x\012\000"
	.space	1
.LC22:
	.ascii	"D4 = 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D5 = 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D6 = 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D7 = 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D8 = 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D9 = 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D10 = 0x%x\012\000"
.LC29:
	.ascii	"D11 = 0x%x\012\000"
.LC30:
	.ascii	"D12 = 0x%x\012\000"
.LC31:
	.ascii	"D13 = 0x%x\012\000"
.LC32:
	.ascii	"D14 = 0x%x\012\000"
.LC33:
	.ascii	"D16 = 0x%x\012\000"
.LC34:
	.ascii	"D49 = 0x%x\012\000"
.LC35:
	.ascii	"D50 = 0x%x\012\000"
.LC36:
	.ascii	"D51 = 0x%x\012\000"
.LC37:
	.ascii	"D63 = 0x%x\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
