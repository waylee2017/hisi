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
	.file	"vdm_hal_vc1.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_vc1)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_vc1.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_vc1.o
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
	.global	VC1HAL_V200R004_CfgSliceMsg
	.type	VC1HAL_V200R004_CfgSliceMsg, %function
VC1HAL_V200R004_CfgSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r3, [r1, #48]	@ SlcDnMsgPhyAddr, pHwMem_3(D)->MsgSlotAddr
	mov	r9, r0	@ pVc1DecParam, pVc1DecParam
	mov	r0, r3	@, SlcDnMsgPhyAddr
	str	r3, [sp, #4]	@ SlcDnMsgPhyAddr, %sfp
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ pMsgBase,
	beq	.L59	@,
	ldrb	r3, [r9, #4]	@ zero_extendqisi2	@ pVc1DecParam_9(D)->profile, pVc1DecParam_9(D)->profile
	cmp	r3, #2	@ pVc1DecParam_9(D)->profile,
	beq	.L60	@,
	ldr	r4, [r9, #96]	@ D.34029, pVc1DecParam_9(D)->SlcStr[0].Phy_addr
	add	fp, r9, #77824	@ tmp365, pVc1DecParam,
	add	r3, r9, #84	@ SliceInfo, pVc1DecParam,
	str	r3, [sp]	@ SliceInfo, %sfp
	bic	r10, r4, #15	@ D.34029, D.34029,
	str	r10, [fp, #172]	@ D.34029, pVc1DecParam_9(D)->stream_base_addr
	ldrb	ip, [r9, #70]	@ zero_extendqisi2	@ D.34020, pVc1DecParam_9(D)->SlcNum
	cmp	ip, #0	@ D.34020,
	ble	.L1	@,
	mov	r5, #0	@ pre_end,
	add	r7, r9, #144	@ ivtmp.82, pVc1DecParam,
	mov	r8, r5	@ i, pre_end
	cmp	r8, #0	@ i,
	mov	lr, r6	@ ivtmp.92, pMsgBase
	mov	r1, r5	@ pre, pre_end
	bne	.L24	@,
.L61:
	cmp	ip, #1	@ D.34020,
	ldr	r5, [r9, #108]	@ pre_end, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 84B].SlcEndMbn
	beq	.L43	@,
	ble	.L26	@,
	ldr	r3, [r9, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn
	cmp	r5, r3	@ pre_end, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn
	blt	.L26	@,
	ldr	r3, [sp]	@ ivtmp.70, %sfp
	mov	r1, #1	@ pre,
	b	.L27	@
.L29:
	ldr	r2, [r3, #72]	@ MEM[base: _367, offset: 72B], MEM[base: _367, offset: 72B]
	cmp	r5, r2	@ pre_end, MEM[base: _367, offset: 72B]
	blt	.L37	@,
.L27:
	add	r1, r1, #1	@ pre, pre,
	add	r3, r3, #48	@ ivtmp.70, ivtmp.70,
	cmp	r1, ip	@ pre, D.34020
	bne	.L29	@,
.L57:
	mov	r3, #0	@ D.34019,
.L30:
	mov	r2, #0	@ slice_start_mbn,
.L25:
	ldr	r6, [r7, #-44]	@ MEM[base: _311, offset: 4294967252B], MEM[base: _311, offset: 4294967252B]
	rsb	r4, r10, r4	@ bit_steam_addr_0, D.34029, D.34029
	ldr	ip, [r7, #-40]	@ MEM[base: _311, offset: 4294967256B], MEM[base: _311, offset: 4294967256B]
	mov	r0, #0	@ tmp476,
	add	r6, r6, r4, lsl #3	@ bit_offset_0, MEM[base: _311, offset: 4294967252B], bit_steam_addr_0,
	add	r2, r2, r5, lsl #16	@ D.34019, slice_start_mbn, pre_end,
	bic	r4, r4, #15	@ D.34019, bit_steam_addr_0,
	add	r8, r8, #1	@ i, i,
	add	ip, ip, r6, lsl #25	@ D.34019, MEM[base: _311, offset: 4294967256B], bit_offset_0,
	str	ip, [lr]	@ D.34019, *_176
	str	r4, [lr, #4]	@ D.34019, MEM[(volatile HI_S32 *)_308]
	add	r7, r7, #48	@ ivtmp.82, ivtmp.82,
	str	r0, [lr, #8]	@ tmp476, MEM[(volatile HI_S32 *)_306]
	add	lr, lr, #256	@ ivtmp.92, ivtmp.92,
	str	r0, [lr, #-244]	@ tmp475, MEM[(volatile HI_S32 *)_304]
	str	r2, [lr, #-240]	@ D.34019, MEM[(volatile HI_S32 *)_302]
	str	r3, [lr, #-4]	@ D.34019, MEM[(volatile HI_S32 *)_300]
	ldrb	ip, [r9, #70]	@ zero_extendqisi2	@ D.34020, pVc1DecParam_9(D)->SlcNum
	cmp	ip, r8	@ D.34020, i
	ble	.L1	@,
	cmp	r8, #0	@ i,
	ldr	r4, [r7, #-48]	@ D.34029, MEM[base: _312, offset: 4294967248B]
	ldr	r10, [fp, #172]	@ D.34029, pVc1DecParam_9(D)->stream_base_addr
	beq	.L61	@,
.L24:
	ldr	r6, [sp]	@ SliceInfo, %sfp
	mov	r3, r1, asl #6	@ tmp348, pre,
	add	r2, r1, #1	@ pre, pre,
	sub	r3, r3, r1, asl #4	@ tmp349, tmp348, pre,
	add	r3, r6, r3	@ D.34025, SliceInfo, tmp349
	cmp	r2, ip	@ pre, D.34020
	ldr	r6, [r3, #24]	@ D.34019, _145->SlcEndMbn
	bge	.L31	@,
	ldr	r0, [r3, #72]	@ tmp468, _262->SlcEndMbn
	cmp	r6, r0	@ D.34019, tmp468
	blt	.L31	@,
	mov	r0, r1	@ pre, pre
	b	.L32	@
.L33:
	ldr	r1, [r3, #72]	@ tmp469, MEM[base: _317, offset: 72B]
	cmp	r6, r1	@ D.34019, tmp469
	blt	.L54	@,
.L32:
	add	r2, r2, #1	@ pre, pre,
	add	r3, r3, #48	@ ivtmp.77, ivtmp.77,
	cmp	r2, ip	@ pre, D.34020
	blt	.L33	@,
.L54:
	mov	r1, r0	@ pre, pre
.L31:
	cmp	ip, r2	@ D.34020, pre
	ldrne	r3, [sp, #4]	@ SlcDnMsgPhyAddr, %sfp
	movne	r1, r2	@ pre, pre
	moveq	r3, #0	@ D.34019,
	addne	r3, r3, r2, lsl #8	@ D.34019, SlcDnMsgPhyAddr, pre,
	add	r2, r5, #1	@ slice_start_mbn, pre_end,
	mov	r5, r6	@ pre_end, D.34019
	b	.L25	@
.L26:
	cmp	ip, #1	@ D.34020,
	beq	.L44	@,
	mov	r1, #1	@ pre,
.L37:
	ldr	r3, [sp, #4]	@ SlcDnMsgPhyAddr, %sfp
	add	r3, r3, r1, lsl #8	@ D.34019, SlcDnMsgPhyAddr, pre,
	b	.L30	@
.L43:
	mov	r3, r8	@ D.34019, i
	mov	r2, r8	@ slice_start_mbn, i
	b	.L25	@
.L60:
	ldr	r1, [r9, #96]	@ D.34029, pVc1DecParam_9(D)->SlcStr[0].Phy_addr
	add	fp, r9, #77824	@ tmp365, pVc1DecParam,
	add	r3, r9, #84	@ SliceInfo, pVc1DecParam,
	str	r3, [sp, #20]	@ SliceInfo, %sfp
	str	r1, [fp, #172]	@ D.34029, pVc1DecParam_9(D)->stream_base_addr
	ldrb	ip, [r9, #70]	@ zero_extendqisi2	@ D.34019, pVc1DecParam_9(D)->SlcNum
	cmp	ip, #0	@ D.34019,
	ble	.L4	@,
	mov	r3, r9	@ ivtmp.62, pVc1DecParam
	mov	r2, #0	@ i,
.L7:
	ldr	r0, [r3, #88]	@ MEM[base: _109, offset: 88B], MEM[base: _109, offset: 88B]
	cmp	r0, #0	@ MEM[base: _109, offset: 88B],
	beq	.L5	@,
	ldr	r0, [r3, #112]	@ D.34022, MEM[base: _109, offset: 112B]
	cmp	r0, r1	@ D.34022, D.34029
	strcc	r0, [fp, #172]	@ D.34022, pVc1DecParam_9(D)->stream_base_addr
	movcc	r1, r0	@ D.34029, D.34022
	bcc	.L6	@,
.L5:
	ldr	r0, [r3, #96]	@ D.34022, MEM[base: _109, offset: 96B]
	cmp	r0, r1	@ D.34022, D.34029
	strcc	r0, [fp, #172]	@ D.34022, pVc1DecParam_9(D)->stream_base_addr
	movcc	r1, r0	@ D.34029, D.34022
.L6:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #48	@ ivtmp.62, ivtmp.62,
	cmp	r2, ip	@ i, D.34019
	bne	.L7	@,
.L4:
	bic	r1, r1, #15	@ D.34022, D.34029,
	str	r1, [fp, #172]	@ D.34022, pVc1DecParam_9(D)->stream_base_addr
	bl	vfmw_dprint_nothing	@
	ldrb	r8, [r9, #70]	@ zero_extendqisi2	@ D.34020, pVc1DecParam_9(D)->SlcNum
	cmp	r8, #0	@ D.34020,
	ble	.L1	@,
	mov	r10, #0	@ pre_end,
	str	fp, [sp, #16]	@ tmp365, %sfp
	mov	r4, r10	@ pre, pre_end
	mov	r7, r9	@ ivtmp.44, pVc1DecParam
	mov	r0, r9	@ pVc1DecParam, pVc1DecParam
	mov	fp, r10	@ i, i
.L22:
	ldr	r3, [sp, #16]	@ tmp365, %sfp
	ldr	r1, [r7, #96]	@ MEM[base: _96, offset: 96B], MEM[base: _96, offset: 96B]
	ldr	lr, [r7, #100]	@ MEM[base: _96, offset: 100B], MEM[base: _96, offset: 100B]
	ldr	r5, [r3, #172]	@ D.34022, pVc1DecParam_9(D)->stream_base_addr
	ldr	r3, [r7, #88]	@ MEM[base: _96, offset: 88B], MEM[base: _96, offset: 88B]
	rsb	r1, r5, r1	@ bit_steam_addr_0, D.34022, MEM[base: _96, offset: 96B]
	ldr	ip, [r7, #104]	@ bit_len_0, MEM[base: _96, offset: 104B]
	cmp	r3, #0	@ MEM[base: _96, offset: 88B],
	and	r2, r1, #15	@ _tmp, bit_steam_addr_0,
	bic	r1, r1, #15	@ D32, bit_steam_addr_0,
	str	r1, [sp, #8]	@ D32, %sfp
	ldrne	r3, [r7, #112]	@ MEM[base: _96, offset: 112B], MEM[base: _96, offset: 112B]
	moveq	r5, r3	@ D.34019, MEM[base: _96, offset: 88B]
	ldrne	r9, [r7, #116]	@ MEM[base: _96, offset: 116B], MEM[base: _96, offset: 116B]
	moveq	r9, r5	@ D.34019, D.34019
	rsbne	r5, r5, r3	@ D32, D.34022, MEM[base: _96, offset: 112B]
	ldrne	r3, [r7, #120]	@ MEM[base: _96, offset: 120B], MEM[base: _96, offset: 120B]
	add	lr, lr, r2, lsl #3	@ bit_offset_0, MEM[base: _96, offset: 100B], _tmp,
	addne	r9, r9, r5, lsl #3	@ bit_offset_1, MEM[base: _96, offset: 116B], D32,
	addne	r9, r3, r9, lsl #25	@ D.34019, MEM[base: _96, offset: 120B], bit_offset_1,
	cmp	fp, #0	@ i,
	bne	.L11	@,
	cmp	r8, #1	@ D.34020,
	ldr	r10, [r0, #108]	@ pre_end, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 84B].SlcEndMbn
	beq	.L39	@,
	ble	.L13	@,
	ldr	r3, [r0, #156]	@ MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn
	cmp	r10, r3	@ pre_end, MEM[(struct VC1_SLCSTREAM_S *)pVc1DecParam_9(D) + 132B].SlcEndMbn
	blt	.L56	@,
	ldr	r3, [sp, #20]	@ ivtmp.31, %sfp
	mov	r4, #1	@ pre,
	b	.L15	@
.L16:
	ldr	r2, [r3, #72]	@ MEM[base: _197, offset: 72B], MEM[base: _197, offset: 72B]
	cmp	r10, r2	@ pre_end, MEM[base: _197, offset: 72B]
	blt	.L62	@,
.L15:
	add	r4, r4, #1	@ pre, pre,
	add	r3, r3, #48	@ ivtmp.31, ivtmp.31,
	cmp	r4, r8	@ pre, D.34020
	bne	.L16	@,
	mov	r3, #0	@ D.34019,
.L17:
	mov	r8, #0	@ slice_start_mbn,
.L12:
	add	ip, ip, lr, lsl #25	@ D.34019, bit_len_0, bit_offset_0,
	str	ip, [r6]	@ D.34019, *_89
	str	r0, [sp, #12]	@ pVc1DecParam, %sfp
	add	r8, r8, r10, lsl #16	@ D.34019, slice_start_mbn, pre_end,
	str	r3, [sp]	@ D.34019, %sfp
	bl	vfmw_dprint_nothing	@
	add	fp, fp, #1	@ i, i,
	add	r7, r7, #48	@ ivtmp.44, ivtmp.44,
	add	r6, r6, #256	@ ivtmp.48, ivtmp.48,
	ldr	r3, [sp, #8]	@ D32, %sfp
	str	r3, [r6, #-252]	@ D32, MEM[(volatile HI_S32 *)_195]
	bl	vfmw_dprint_nothing	@
	str	r9, [r6, #-248]	@ D.34019, MEM[(volatile HI_S32 *)_22]
	bl	vfmw_dprint_nothing	@
	str	r5, [r6, #-244]	@ D.34019, MEM[(volatile HI_S32 *)_18]
	bl	vfmw_dprint_nothing	@
	str	r8, [r6, #-240]	@ D.34019, MEM[(volatile HI_S32 *)_379]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp]	@ D.34019, %sfp
	str	r3, [r6, #-4]	@ D.34019, MEM[(volatile HI_S32 *)_95]
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #12]	@ pVc1DecParam, %sfp
	ldrb	r8, [r0, #70]	@ zero_extendqisi2	@ D.34020, pVc1DecParam_9(D)->SlcNum
	cmp	r8, fp	@ D.34020, i
	bgt	.L22	@,
.L1:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L11:
	ldr	r1, [sp, #20]	@ SliceInfo, %sfp
	mov	r3, r4, asl #6	@ tmp333, pre,
	add	r2, r4, #1	@ pre, pre,
	sub	r3, r3, r4, asl #4	@ tmp334, tmp333, pre,
	add	r3, r1, r3	@ D.34025, SliceInfo, tmp334
	cmp	r2, r8	@ pre, D.34020
	str	r2, [sp]	@ pre, %sfp
	ldr	r1, [r3, #24]	@ D.34019, _69->SlcEndMbn
	bge	.L18	@,
	ldr	r2, [r3, #72]	@ tmp461, _242->SlcEndMbn
	cmp	r1, r2	@ D.34019, tmp461
	blt	.L18	@,
	ldr	r2, [sp]	@ pre, %sfp
	str	r0, [sp, #12]	@ pVc1DecParam, %sfp
	b	.L19	@
.L20:
	ldr	r0, [r3, #72]	@ tmp462, MEM[base: _384, offset: 72B]
	cmp	r1, r0	@ D.34019, tmp462
	blt	.L52	@,
.L19:
	add	r2, r2, #1	@ pre, pre,
	add	r3, r3, #48	@ ivtmp.39, ivtmp.39,
	cmp	r2, r8	@ pre, D.34020
	blt	.L20	@,
.L52:
	ldr	r0, [sp, #12]	@ pVc1DecParam, %sfp
	str	r2, [sp]	@ pre, %sfp
.L18:
	ldr	r2, [sp]	@ pre, %sfp
	cmp	r8, r2	@ D.34020, pre
	add	r8, r10, #1	@ slice_start_mbn, pre_end,
	mov	r10, r1	@ pre_end, D.34019
	ldrne	r3, [sp, #4]	@ SlcDnMsgPhyAddr, %sfp
	movne	r4, r2	@ pre, pre
	moveq	r3, #0	@ D.34019,
	addne	r3, r3, r2, lsl #8	@ D.34019, SlcDnMsgPhyAddr, pre,
	b	.L12	@
.L62:
	mov	r3, r4, asl #8	@ D.34022, pre,
.L36:
	ldr	r2, [sp, #4]	@ SlcDnMsgPhyAddr, %sfp
	add	r3, r3, r2	@ D.34019, D.34022, SlcDnMsgPhyAddr
	b	.L17	@
.L39:
	mov	r3, fp	@ D.34019, i
	mov	r8, fp	@ slice_start_mbn, i
	b	.L12	@
.L13:
	moveq	r4, r8	@ pre, D.34020
	moveq	r3, fp	@ D.34019, i
	beq	.L17	@,
.L56:
	mov	r3, #256	@ D.34022,
	mov	r4, #1	@ pre,
	b	.L36	@
.L59:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
.L44:
	mov	r1, ip	@ pre, D.34020
	b	.L57	@
	.fnend
	.size	VC1HAL_V200R004_CfgSliceMsg, .-VC1HAL_V200R004_CfgSliceMsg
	.align	2
	.global	VC1HAL_V200R004_CfgReg
	.type	VC1HAL_V200R004_CfgReg, %function
VC1HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #1140	@ tmp218,
	mul	r3, r3, r2	@ tmp217, tmp218, VdhId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r2	@ VdhId, VdhId
	ldr	r4, .L74	@ tmp346,
	add	r5, r0, #77824	@ tmp345, pVc1DecParam,
	mvn	r8, #0	@ tmp221,
	mov	r6, r0	@ pVc1DecParam, pVc1DecParam
	ldr	r2, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r8, [r2, #32]	@ tmp221, *_10
	ldr	r2, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	ip, [r5, #164]	@ pVc1DecParam_12(D)->basic_cfg0, pVc1DecParam_12(D)->basic_cfg0
	ubfx	ip, ip, #0, #20	@ D.34037, pVc1DecParam_12(D)->basic_cfg0,,
	orr	ip, ip, #1090519040	@ D.34035, D.34037,
	str	ip, [r2, #8]	@ D.34035, *_19
	ldr	r2, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r0, [r5, #168]	@ D.34035, pVc1DecParam_12(D)->basic_cfg1
	str	r0, [r2, #12]	@ D.34035, *_25
	ldr	r2, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r0, [r1, #44]	@ D.34035, pHwMem_33(D)->MsgSlotAddr
	str	r0, [r2, #16]	@ D.34035, *_32
	ldr	r2, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ D.34035, pHwMem_33(D)->MsgSlotAddr
	str	r1, [r2, #20]	@ D.34035, *_39
	ldr	r3, [r4, r3]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r5, #172]	@ D.34035, pVc1DecParam_12(D)->stream_base_addr
	str	r2, [r3, #24]	@ D.34035, *_45
	ldrh	r3, [r6, #78]	@ pVc1DecParam_12(D)->mbwidth, pVc1DecParam_12(D)->mbwidth
	cmp	r3, #120	@ pVc1DecParam_12(D)->mbwidth,
	movhi	r9, #0	@ D32,
	movls	r9, #65536	@ D32,
	cmp	r7, #0	@ VdhId,
	beq	.L72	@,
	bgt	.L73	@,
.L67:
	movw	r2, #1140	@ tmp262,
	movw	r3, #3075	@ tmp265,
	mul	r2, r2, r7	@ tmp261, tmp262, VdhId
	movt	r3, 48	@ tmp265,
	mov	ip, #0	@ tmp343,
	mov	r0, ip	@ D.34033, tmp343
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #60]	@ tmp265, *_62
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #64]	@ tmp265, *_67
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #68]	@ tmp265, *_72
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #72]	@ tmp265, *_77
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #76]	@ tmp265, *_82
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #80]	@ tmp265, *_87
	ldr	r1, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r1, #84]	@ tmp265, *_92
	ldr	r3, [r5, #176]	@ D.34037, pVc1DecParam_12(D)->VahbStride
	ldr	lr, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r7, [r5, #216]	@ D.34035, pVc1DecParam_12(D)->ystaddr_1d
	str	r3, [r5, #220]	@ D.34037, pVc1DecParam_12(D)->ystride_1d
	mov	r3, r3, lsr #4	@ D.34037, D.34037,
	ldrh	r6, [r6, #76]	@ D.34035, pVc1DecParam_12(D)->DispPicHeight
	mov	r1, r3, asl #5	@ D.34037, D.34037,
	adds	r3, r6, #31	@ D.34035, D.34035,
	addmi	r3, r6, #62	@, D.34035, D.34035,
	mov	r3, r3, asr #5	@ D.34035, D.34035,
	mul	r3, r3, r1	@ D.34037, D.34035, D.34037
	str	r3, [r5, #224]	@ D.34037, pVc1DecParam_12(D)->uvoffset_1d
	str	r7, [lr, #96]	@ D.34035, *_108
	ldr	r1, [r5, #220]	@ D.34035, pVc1DecParam_12(D)->ystride_1d
	ldr	r3, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r1, [r3, #100]	@ D.34035, *_115
	ldr	r3, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r1, [r5, #224]	@ D.34035, pVc1DecParam_12(D)->uvoffset_1d
	str	r1, [r3, #104]	@ D.34035, *_122
	ldr	r3, [r4, r2]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	ip, [r3, #108]	@ tmp343, *_129
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L72:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L74+4	@ tmp257,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	orr	r1, r0, r9	@,, D32
	add	r0, r3, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L67	@
.L73:
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.34033, tmp221
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L75:
	.align	2
.L74:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	VC1HAL_V200R004_CfgReg, .-VC1HAL_V200R004_CfgReg
	.align	2
	.global	VC1HAL_V200R004_CfgDnMsg
	.type	VC1HAL_V200R004_CfgDnMsg, %function
VC1HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r0, [r1, #44]	@, pHwMem_4(D)->MsgSlotAddr
	mov	r6, r1	@ pHwMem, pHwMem
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ pMsgBase,
	beq	.L79	@,
	ldrb	r1, [r4, #4]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->profile, pVc1DecParam_10(D)->profile
	mov	r2, #0	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.profile,
	ldrb	r0, [r4, #3]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->ptype, pVc1DecParam_10(D)->ptype
	mov	r5, #0	@ tmp318,
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fcm, pVc1DecParam_10(D)->fcm
	bfi	r2, r1, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.profile, pVc1DecParam_10(D)->profile,,
	str	r5, [sp, #28]	@ tmp318, D32
	bfi	r2, r0, #0, #2	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.ptype, pVc1DecParam_10(D)->ptype,,
	mov	r1, #0	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.fcm,
	strb	r2, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.ptype, MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.ptype
	bfi	r1, ip, #6, #2	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.fcm, pVc1DecParam_10(D)->fcm,,
	strb	r1, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.fcm, MEM[(union VC1DNMSG_V200R004_D0 *)&D32].bits.fcm
	ldr	r1, [sp, #28]	@ D.34042, D32
	mov	r2, #0	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.curparity,
	str	r5, [sp, #28]	@ tmp318, D32
	mov	r0, r2	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.condover, MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.curparity
	mov	r9, r2	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.altpquant, MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.condover
	mov	r7, r2	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pqindex, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.halfqp
	str	r1, [r3]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7]
	mov	lr, r2	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pquant, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pqindex
	ldrh	fp, [r4, #80]	@ pVc1DecParam_10(D)->mbheight, pVc1DecParam_10(D)->mbheight
	mov	r1, r2	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dqbilevel, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pquant
	ldrh	r10, [r4, #78]	@ pVc1DecParam_10(D)->mbwidth, pVc1DecParam_10(D)->mbwidth
	mov	r8, r2	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.halfqp, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.altpquant
	strb	r2, [sp, #8]	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.colishalfpel, %sfp
	mov	ip, r2	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.quantmode, MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dqbilevel
	strb	fp, [sp, #30]	@ pVc1DecParam_10(D)->mbheight, MEM[(union VC1DNMSG_V200R004_D1 *)&D32].bits.mbheight
	mov	fp, r2	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.reffiled, MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.quantmode
	strb	r10, [sp, #28]	@ pVc1DecParam_10(D)->mbwidth, MEM[(union VC1DNMSG_V200R004_D1 *)&D32].bits.mbwidth
	ldr	r10, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r10, [sp, #4]	@ D.34042, %sfp
	ldr	r10, [sp, #4]	@ D.34042, %sfp
	strb	r0, [sp, #4]	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.ttfrm, %sfp
	str	r10, [r3, #4]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 4B]
	ldrb	r10, [r4, #8]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->curparity, pVc1DecParam_10(D)->curparity
	bfi	r2, r10, #2, #1	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.curparity, pVc1DecParam_10(D)->curparity,,
	ldrb	r10, [r4, #6]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->loopfilter, pVc1DecParam_10(D)->loopfilter
	bfi	r2, r10, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.loopfilter, pVc1DecParam_10(D)->loopfilter,,
	ldrb	r10, [r4, #9]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->numref, pVc1DecParam_10(D)->numref
	bfi	r2, r10, #3, #1	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.numref, pVc1DecParam_10(D)->numref,,
	ldrb	r10, [r4, #7]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->issecondfld, pVc1DecParam_10(D)->issecondfld
	bfi	r2, r10, #1, #1	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.issecondfld, pVc1DecParam_10(D)->issecondfld,,
	ldrb	r10, [r4, #10]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fwd_fcm, pVc1DecParam_10(D)->fwd_fcm
	bfi	r2, r10, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.fwd_fcm, pVc1DecParam_10(D)->fwd_fcm,,
	ldrb	r10, [r4, #11]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->bwd_fcm, pVc1DecParam_10(D)->bwd_fcm
	bfi	r2, r10, #6, #2	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.bwd_fcm, pVc1DecParam_10(D)->bwd_fcm,,
	strb	r2, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.bwd_fcm, MEM[(union VC1DNMSG_V200R004_D2 *)&D32].bits.bwd_fcm
	ldr	r2, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r2, [r3, #8]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 8B]
	ldrb	r2, [r4, #15]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->condover, pVc1DecParam_10(D)->condover
	bfi	r0, r2, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.condover, pVc1DecParam_10(D)->condover,,
	ldrb	r2, [r4, #13]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fastuvmc, pVc1DecParam_10(D)->fastuvmc
	bfi	r0, r2, #1, #1	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.fastuvmc, pVc1DecParam_10(D)->fastuvmc,,
	ldrb	r2, [r4, #14]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->overlap, pVc1DecParam_10(D)->overlap
	bfi	r0, r2, #2, #1	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.overlap, pVc1DecParam_10(D)->overlap,,
	ldrb	r2, [r4, #12]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->rndctrl, pVc1DecParam_10(D)->rndctrl
	strb	r9, [sp, #16]	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.acpredmodeisskipraw, %sfp
	bfi	r0, r2, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.rndctrl, pVc1DecParam_10(D)->rndctrl,,
	strb	r0, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.rndctrl, MEM[(union VC1DNMSG_V200R004_D3 *)&D32].bits.rndctrl
	ldr	r2, [sp, #28]	@ D.34042, D32
	str	r2, [r3, #12]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 12B]
	ldrb	r2, [r4, #19]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->halfqp, pVc1DecParam_10(D)->halfqp
	ldrb	r0, [r4, #18]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->altpquant, pVc1DecParam_10(D)->altpquant
	bfi	r8, r2, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.halfqp, pVc1DecParam_10(D)->halfqp,,
	ldrb	r2, [r4, #17]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->pqindex, pVc1DecParam_10(D)->pqindex
	bfi	r9, r0, #0, #5	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.altpquant, pVc1DecParam_10(D)->altpquant,,
	strb	r9, [sp, #30]	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.altpquant, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.altpquant
	mov	r9, r7	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.bfraction, MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.ttfrm
	bfi	r7, r2, #0, #5	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pqindex, pVc1DecParam_10(D)->pqindex,,
	ldrb	r2, [r4, #16]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->pquant, pVc1DecParam_10(D)->pquant
	strb	r7, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pqindex, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pqindex
	mov	r7, r1	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.mvtab, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.cbptab
	strb	r8, [sp, #31]	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.halfqp, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.halfqp
	mov	r8, lr	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.cbptab, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.bfraction
	bfi	lr, r2, #0, #5	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pquant, pVc1DecParam_10(D)->pquant,,
	strb	lr, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pquant, MEM[(union VC1DNMSG_V200R004_D4 *)&D32].bits.pquant
	ldr	r0, [sp, #28]	@ D.34042, D32
	add	r2, r4, #12288	@ tmp701, pVc1DecParam,
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #16]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 16B]
	ldrb	r0, [r4, #24]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->dqbilevel, pVc1DecParam_10(D)->dqbilevel
	ldrb	lr, [r4, #23]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->dqprofile, pVc1DecParam_10(D)->dqprofile
	bfi	r1, r0, #4, #1	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dqbilevel, pVc1DecParam_10(D)->dqbilevel,,
	ldrb	r0, [r4, #20]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->buniform, pVc1DecParam_10(D)->buniform
	ldrb	r10, [r4, #25]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->dquantfrm, pVc1DecParam_10(D)->dquantfrm
	bfi	r1, lr, #0, #2	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dqprofile, pVc1DecParam_10(D)->dqprofile,,
	ldrb	lr, [r4, #22]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->dquant, pVc1DecParam_10(D)->dquant
	and	r0, r0, #1	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dquant, pVc1DecParam_10(D)->buniform,
	bfi	r1, r10, #6, #1	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dquantfrm, pVc1DecParam_10(D)->dquantfrm,,
	strb	r1, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dquantfrm, MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dquantfrm
	bfi	r0, lr, #2, #2	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.dquant, pVc1DecParam_10(D)->dquant,,
	ldrb	r1, [r4, #26]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->quantmode, pVc1DecParam_10(D)->quantmode
	ldrb	lr, [r4, #21]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->usealtqp, pVc1DecParam_10(D)->usealtqp
	bfi	ip, r1, #0, #4	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.quantmode, pVc1DecParam_10(D)->quantmode,,
	strb	ip, [sp, #30]	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.quantmode, MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.quantmode
	bfi	r0, lr, #1, #1	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.usealtqp, pVc1DecParam_10(D)->usealtqp,,
	strb	r0, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.usealtqp, MEM[(union VC1DNMSG_V200R004_D5 *)&D32].bits.usealtqp
	ldr	r1, [sp, #28]	@ D.34042, D32
	mov	ip, fp	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapyflag, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.mvtab
	str	r5, [sp, #28]	@ tmp318, D32
	mov	lr, r9	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.CodecVersion, MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM
	str	r1, [r3, #20]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 20B]
	ldrb	r1, [r4, #27]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mvmode, pVc1DecParam_10(D)->mvmode
	ldrb	r0, [r4, #28]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mvmode2, pVc1DecParam_10(D)->mvmode2
	and	r1, r1, #7	@ MEM[(union VC1DNMSG_V200R004_D6 *)&D32].bits.mvmode2, pVc1DecParam_10(D)->mvmode,
	bfi	r1, r0, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D6 *)&D32].bits.mvmode2, pVc1DecParam_10(D)->mvmode2,,
	strb	r1, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D6 *)&D32].bits.mvmode2, MEM[(union VC1DNMSG_V200R004_D6 *)&D32].bits.mvmode2
	ldr	r0, [sp, #28]	@ D.34042, D32
	mov	r1, fp	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM, MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapyflag
	str	r5, [sp, #28]	@ tmp318, D32
	ldr	r10, [sp, #8]	@ tmp888, %sfp
	str	r0, [r3, #24]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 24B]
	ldrb	r0, [r4, #34]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->reffiled, pVc1DecParam_10(D)->reffiled
	bfi	fp, r0, #6, #1	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.reffiled, pVc1DecParam_10(D)->reffiled,,
	ldrb	r0, [r4, #33]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->dmvrange, pVc1DecParam_10(D)->dmvrange
	bfi	fp, r0, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.dmvrange, pVc1DecParam_10(D)->dmvrange,,
	ldrb	r0, [r4, #30]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->colishalfpel, pVc1DecParam_10(D)->colishalfpel
	strb	fp, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.dmvrange, MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.dmvrange
	bfi	r10, r0, #1, #1	@ tmp888, pVc1DecParam_10(D)->colishalfpel,,
	ldrb	r0, [r4, #29]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->curishalfpel, pVc1DecParam_10(D)->curishalfpel
	bfi	r10, r0, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.curishalfpel, pVc1DecParam_10(D)->curishalfpel,,
	ldrb	r0, [r4, #31]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mvrange, pVc1DecParam_10(D)->mvrange
	bfi	r10, r0, #2, #2	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.mvrange, pVc1DecParam_10(D)->mvrange,,
	strb	r10, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.mvrange, MEM[(union VC1DNMSG_V200R004_D7 *)&D32].bits.mvrange
	ldrb	r10, [r4, #32]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->refdist, pVc1DecParam_10(D)->refdist
	ldrh	r0, [sp, #28]	@,
	bfi	r0, r10, #4, #5	@ tmp551, pVc1DecParam_10(D)->refdist,,
	strh	r0, [sp, #28]	@ movhi	@ tmp551,
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #28]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 28B]
	ldrb	r0, [r4, #35]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->transdctab, pVc1DecParam_10(D)->transdctab
	ldrb	r10, [r4, #36]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->vstransform, pVc1DecParam_10(D)->vstransform
	and	r0, r0, #1	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.vstransform, pVc1DecParam_10(D)->transdctab,
	ldrb	fp, [r4, #39]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->transacfrm2, pVc1DecParam_10(D)->transacfrm2
	bfi	r0, r10, #1, #1	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.vstransform, pVc1DecParam_10(D)->vstransform,,
	ldrb	r10, [r4, #37]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->ttmbf, pVc1DecParam_10(D)->ttmbf
	bfi	r0, r10, #2, #1	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.ttmbf, pVc1DecParam_10(D)->ttmbf,,
	ldrb	r10, [r4, #38]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->transacfrm, pVc1DecParam_10(D)->transacfrm
	bfi	r0, r10, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.transacfrm, pVc1DecParam_10(D)->transacfrm,,
	ldrb	r10, [r4, #40]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->ttfrm, pVc1DecParam_10(D)->ttfrm
	bfi	r0, fp, #6, #2	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.transacfrm2, pVc1DecParam_10(D)->transacfrm2,,
	ldr	fp, [sp, #4]	@ tmp889, %sfp
	strb	r0, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.transacfrm2, MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.transacfrm2
	bfi	fp, r10, #0, #2	@ tmp889, pVc1DecParam_10(D)->ttfrm,,
	strb	fp, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.ttfrm, MEM[(union VC1DNMSG_V200R004_D8 *)&D32].bits.ttfrm
	ldr	r0, [sp, #28]	@ D.34042, D32
	ldr	fp, [sp, #16]	@ tmp891, %sfp
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #32]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 32B]
	ldrb	r0, [r4, #46]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->acpredmodeisskipraw, pVc1DecParam_10(D)->acpredmodeisskipraw
	ldrb	r10, [r4, #42]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->directmbmodeisskipraw, pVc1DecParam_10(D)->directmbmodeisskipraw
	bfi	fp, r0, #5, #1	@ tmp891, pVc1DecParam_10(D)->acpredmodeisskipraw,,
	ldrb	r0, [r4, #44]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fieldtxmodeisskipraw, pVc1DecParam_10(D)->fieldtxmodeisskipraw
	bfi	fp, r10, #1, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.directmbmodeisskipraw, pVc1DecParam_10(D)->directmbmodeisskipraw,,
	ldrb	r10, [r4, #41]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->forwardmbmodeisskipraw, pVc1DecParam_10(D)->forwardmbmodeisskipraw
	bfi	fp, r0, #3, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.fieldtxmodeisskipraw, pVc1DecParam_10(D)->fieldtxmodeisskipraw,,
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mvtypembmodeisskipraw, pVc1DecParam_10(D)->mvtypembmodeisskipraw
	bfi	fp, r10, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.forwardmbmodeisskipraw, pVc1DecParam_10(D)->forwardmbmodeisskipraw,,
	ldrb	r10, [r4, #47]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->overflagsmodeisskipraw, pVc1DecParam_10(D)->overflagsmodeisskipraw
	bfi	fp, r0, #2, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.mvtypembmodeisskipraw, pVc1DecParam_10(D)->mvtypembmodeisskipraw,,
	ldrb	r0, [r4, #45]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->skipmbmodeisskipraw, pVc1DecParam_10(D)->skipmbmodeisskipraw
	bfi	fp, r10, #6, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.overflagsmodeisskipraw, pVc1DecParam_10(D)->overflagsmodeisskipraw,,
	bfi	fp, r0, #4, #1	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.skipmbmodeisskipraw, pVc1DecParam_10(D)->skipmbmodeisskipraw,,
	strb	fp, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.skipmbmodeisskipraw, MEM[(union VC1DNMSG_V200R004_D9 *)&D32].bits.skipmbmodeisskipraw
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #36]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 36B]
	ldrb	r0, [r4, #50]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->bfraction, pVc1DecParam_10(D)->bfraction
	bfi	r9, r0, #0, #7	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.bfraction, pVc1DecParam_10(D)->bfraction,,
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mvtab, pVc1DecParam_10(D)->mvtab
	strb	r9, [sp, #30]	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.bfraction, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.bfraction
	ldrb	r9, [r4, #49]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->cbptab, pVc1DecParam_10(D)->cbptab
	bfi	r7, r0, #0, #3	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.mvtab, pVc1DecParam_10(D)->mvtab,,
	strb	r7, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.mvtab, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.mvtab
	bfi	r8, r9, #0, #3	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.cbptab, pVc1DecParam_10(D)->cbptab,,
	strb	r8, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.cbptab, MEM[(union VC1DNMSG_V200R004_D10 *)&D32].bits.cbptab
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #40]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 40B]
	ldrb	r7, [r4, #53]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fourmvbptab, pVc1DecParam_10(D)->fourmvbptab
	ldrb	r0, [r4, #51]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->mbmodetab, pVc1DecParam_10(D)->mbmodetab
	ldrb	r9, [r4, #54]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->fourmvswtich, pVc1DecParam_10(D)->fourmvswtich
	and	r7, r7, #3	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.fourmvswtich, pVc1DecParam_10(D)->fourmvbptab,
	ldrb	r8, [r4, #52]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->twomvbptab, pVc1DecParam_10(D)->twomvbptab
	and	r0, r0, #7	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.twomvbptab, pVc1DecParam_10(D)->mbmodetab,
	bfi	r7, r9, #4, #1	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.fourmvswtich, pVc1DecParam_10(D)->fourmvswtich,,
	strb	r7, [sp, #29]	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.fourmvswtich, MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.fourmvswtich
	bfi	r0, r8, #4, #2	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.twomvbptab, pVc1DecParam_10(D)->twomvbptab,,
	strb	r0, [sp, #28]	@ MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.twomvbptab, MEM[(union VC1DNMSG_V200R004_D11 *)&D32].bits.twomvbptab
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r0, [r3, #44]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 44B]
	ldr	r0, [r2, #84]	@ D.34042, pVc1DecParam_10(D)->ScaleFactor
	str	r0, [r3, #48]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 48B]
	ldr	r0, [r2, #88]	@ D.34042, pVc1DecParam_10(D)->FRFD
	str	r0, [r3, #52]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 52B]
	ldr	r0, [r2, #92]	@ D.34042, pVc1DecParam_10(D)->BRFD
	str	r0, [r3, #56]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 56B]
	ldrb	r7, [r4, #55]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->rangemapyflag, pVc1DecParam_10(D)->rangemapyflag
	ldrb	r0, [r4, #57]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->rangemapuvflag, pVc1DecParam_10(D)->rangemapuvflag
	ldrh	r9, [r4, #72]	@ pVc1DecParam_10(D)->totalslicenum, pVc1DecParam_10(D)->totalslicenum
	bfi	ip, r7, #4, #1	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapyflag, pVc1DecParam_10(D)->rangemapyflag,,
	ldrb	r8, [r4, #56]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->rangemapy, pVc1DecParam_10(D)->rangemapy
	and	r0, r0, #1	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapuv, pVc1DecParam_10(D)->rangemapuvflag,
	ldrb	r7, [r4, #58]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->rangemapuv, pVc1DecParam_10(D)->rangemapuv
	bfi	ip, r8, #5, #3	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapy, pVc1DecParam_10(D)->rangemapy,,
	strh	r9, [sp, #28]	@ movhi	@ pVc1DecParam_10(D)->totalslicenum, MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.totalslicenum
	strb	ip, [sp, #30]	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapy, MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapy
	bfi	r0, r7, #1, #3	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapuv, pVc1DecParam_10(D)->rangemapuv,,
	strb	r0, [sp, #31]	@ MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapuv, MEM[(union VC1DNMSG_V200R004_D15 *)&D32].bits.rangemapuv
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r0, [r3, #60]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 60B]
	ldr	r0, [r2, #96]	@ D.34042, pVc1DecParam_10(D)->CurFrmImgLuma2dPhyAddr
	str	r0, [r3, #64]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 64B]
	ldr	r0, [r2, #100]	@ D.34042, pVc1DecParam_10(D)->FwdRefAddr
	str	r0, [r3, #68]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 68B]
	ldr	r0, [r2, #104]	@ D.34042, pVc1DecParam_10(D)->BwdRefAddr
	str	r0, [r3, #72]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 72B]
	ldr	r0, [r2, #108]	@ D.34042, pVc1DecParam_10(D)->CurrColmbAddr
	str	r0, [r3, #76]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 76B]
	ldr	r0, [r2, #112]	@ D.34042, pVc1DecParam_10(D)->BwdColmbAddr
	str	r0, [r3, #80]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 80B]
	ldr	r0, [r6, #1080]	@ D.34042, pHwMem_4(D)->SedTopAddr
	str	r0, [r3, #84]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 84B]
	ldr	r0, [r6, #1084]	@ D.34042, pHwMem_4(D)->PmvTopAddr
	str	r0, [r3, #88]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 88B]
	ldr	r0, [r6, #1092]	@ D.34042, pHwMem_4(D)->ItransTopAddr
	str	r0, [r3, #92]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 92B]
	ldr	r0, [r6, #1096]	@ D.34042, pHwMem_4(D)->DblkTopAddr
	str	r0, [r3, #96]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 96B]
	ldr	r0, [r6, #1112]	@ D.34042, pHwMem_4(D)->IntensityConvTabAddr
	str	r0, [r3, #104]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 104B]
	ldrh	ip, [r4, #74]	@ pVc1DecParam_10(D)->DispPicWidth, pVc1DecParam_10(D)->DispPicWidth
	ldrh	r0, [r4, #76]	@ pVc1DecParam_10(D)->DispPicHeight, pVc1DecParam_10(D)->DispPicHeight
	strh	ip, [sp, #28]	@ movhi	@ pVc1DecParam_10(D)->DispPicWidth, MEM[(union VC1DNMSG_V200R004_D27 *)&D32].bits.DispPicWidth
	strh	r0, [sp, #30]	@ movhi	@ pVc1DecParam_10(D)->DispPicHeight, MEM[(union VC1DNMSG_V200R004_D27 *)&D32].bits.DispPicHeight
	ldr	r0, [sp, #28]	@ D.34042, D32
	str	r5, [sp, #28]	@ tmp318, D32
	str	r0, [r3, #108]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 108B]
	ldrb	r0, [r4, #59]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->RANGEREDFRM, pVc1DecParam_10(D)->RANGEREDFRM
	ldrb	ip, [r4, #63]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->CodecVersion, pVc1DecParam_10(D)->CodecVersion
	bfi	r1, r0, #4, #1	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM, pVc1DecParam_10(D)->RANGEREDFRM,,
	ldrb	r0, [r4, #60]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->RANGEREDFRM0, pVc1DecParam_10(D)->RANGEREDFRM0
	bfi	lr, ip, #1, #3	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.CodecVersion, pVc1DecParam_10(D)->CodecVersion,,
	strb	lr, [sp, #31]	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.CodecVersion, MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.CodecVersion
	bfi	r1, r0, #5, #1	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM0, pVc1DecParam_10(D)->RANGEREDFRM0,,
	ldrb	lr, [r4, #61]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->RANGEREDFRM1, pVc1DecParam_10(D)->RANGEREDFRM1
	ldrb	ip, [r4, #62]	@ zero_extendqisi2	@ pVc1DecParam_10(D)->PostCresent, pVc1DecParam_10(D)->PostCresent
	ldrb	r0, [sp, #31]	@ zero_extendqisi2	@, MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.PostCresent
	bfi	r1, lr, #6, #1	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM1, pVc1DecParam_10(D)->RANGEREDFRM1,,
	strb	r1, [sp, #30]	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM1, MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.RANGEREDFRM1
	bfi	r0, ip, #0, #1	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.PostCresent, pVc1DecParam_10(D)->PostCresent,,
	strb	r0, [sp, #31]	@ MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.PostCresent, MEM[(union VC1DNMSG_V200R004_D28 *)&D32].bits.PostCresent
	ldr	r1, [sp, #28]	@ D.34042, D32
	str	r1, [r3, #112]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 112B]
	ldr	r1, [r2, #116]	@ D.34042, pVc1DecParam_10(D)->BPD_STRIDE
	str	r1, [r3, #116]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 116B]
	ldr	r1, [r2, #120]	@ D.34042, pVc1DecParam_10(D)->MVTYPEMB_ADDR
	str	r1, [r3, #120]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 120B]
	ldr	r1, [r2, #124]	@ D.34042, pVc1DecParam_10(D)->SKIPMB_ADDR
	str	r1, [r3, #124]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 124B]
	ldr	r1, [r2, #128]	@ D.34042, pVc1DecParam_10(D)->DIRECTMB_ADDR
	str	r1, [r3, #128]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 128B]
	ldr	r1, [r2, #132]	@ D.34042, pVc1DecParam_10(D)->ACPRED_ADDR
	str	r1, [r3, #132]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 132B]
	ldr	r1, [r2, #136]	@ D.34042, pVc1DecParam_10(D)->OVERFLAGS_ADDR
	str	r1, [r3, #136]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 136B]
	ldr	r1, [r2, #140]	@ D.34042, pVc1DecParam_10(D)->FIELDTX_ADDR
	str	r1, [r3, #140]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 140B]
	ldr	r2, [r2, #144]	@ D.34042, pVc1DecParam_10(D)->FORWARDMB_ADDR
	str	r2, [r3, #144]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 144B]
	ldr	r2, [r6, #48]	@ D.34042, pHwMem_4(D)->MsgSlotAddr
	str	r2, [r3, #252]	@ D.34042, MEM[(volatile HI_S32 *)pMsgBase_7 + 252B]
	ldr	r0, [r6, #1112]	@, pHwMem_4(D)->IntensityConvTabAddr
	str	r2, [sp, #28]	@ D.34042, MEM[(union VC1DNMSG_V200R004_D63 *)&D32].bits.SliceInfoPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, r5	@,
	beq	.L79	@,
	ldr	r1, [r4, #64]	@, pVc1DecParam_10(D)->pIntensityConvertTab
	mov	r2, #3072	@,
	bl	memcpy	@
	mov	r0, r5	@ D.34041, tmp318
.L78:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L79:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34041,
	b	.L78	@
	.fnend
	.size	VC1HAL_V200R004_CfgDnMsg, .-VC1HAL_V200R004_CfgDnMsg
	.align	2
	.global	VC1HAL_V200R004_StartDec
	.type	VC1HAL_V200R004_StartDec, %function
VC1HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #1140	@ tmp122,
	mul	r5, r5, r1	@ tmp121, tmp122, VdhId
	ldr	r8, .L100	@ tmp123,
	cmp	r1, #1	@ VdhId,
	mov	r7, r1	@ VdhId, VdhId
	add	r6, r5, r8	@ pHwMem, tmp121, tmp123
	bhi	.L89	@,
	cmp	r0, #0	@ pVc1DecParam,
	mov	r4, r0	@ pVc1DecParam, pVc1DecParam
	beq	.L89	@,
	ldrh	r3, [r0, #78]	@ pVc1DecParam_8(D)->mbwidth, pVc1DecParam_8(D)->mbwidth
	cmp	r3, #512	@ pVc1DecParam_8(D)->mbwidth,
	bhi	.L89	@,
	ldrh	r3, [r0, #80]	@ pVc1DecParam_8(D)->mbheight, pVc1DecParam_8(D)->mbheight
	cmp	r3, #512	@ pVc1DecParam_8(D)->mbheight,
	bhi	.L89	@,
	ldr	r0, [r6, #44]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L89	@,
	ldr	r3, [r5, r8]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L99	@,
.L90:
	mov	r1, r6	@, pHwMem
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R004_CfgSliceMsg	@
	mov	r2, r7	@, VdhId
	mov	r1, r6	@, pHwMem
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R004_CfgReg	@
	mov	r1, r6	@, pHwMem
	mov	r0, r4	@, pVc1DecParam
	bl	VC1HAL_V200R004_CfgDnMsg	@
	mov	r0, #0	@ D.34059,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L99:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r5, r8]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	bne	.L90	@
.L89:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34059,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L101:
	.align	2
.L100:
	.word	g_HwMem
	.fnend
	.size	VC1HAL_V200R004_StartDec, .-VC1HAL_V200R004_StartDec
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
