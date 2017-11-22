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
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_avs)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_avs.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_avs.o
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
	.global	AVSHAL_V200R004_StartDec_CheckParam
	.type	AVSHAL_V200R004_StartDec_CheckParam, %function
AVSHAL_V200R004_StartDec_CheckParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bgt	.L4	@,
	ldrh	r3, [r1, #48]	@ pAvsDecParam_6(D)->PicWidthInMb, pAvsDecParam_6(D)->PicWidthInMb
	cmp	r3, #512	@ pAvsDecParam_6(D)->PicWidthInMb,
	bhi	.L4	@,
	ldrh	r3, [r1, #50]	@ pAvsDecParam_6(D)->PicHeightInMb, pAvsDecParam_6(D)->PicHeightInMb
	cmp	r3, #512	@ pAvsDecParam_6(D)->PicHeightInMb,
	bhi	.L4	@,
	mov	r0, #0	@ D.36305,
	ldmfd	sp!, {r4, pc}	@
.L4:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36305,
	ldmfd	sp!, {r4, pc}	@
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
	beq	.L10	@,
	cmp	r0, #1	@ VdhId,
	bne	.L13	@,
.L10:
	mov	r3, #0	@ tmp117,
	ldr	r6, .L18	@ tmp118,
	movt	r3, 4115	@ tmp117,
	str	r3, [r1]	@ tmp117, *vdm_reg_phy_addr_7(D)
	movw	r3, #1140	@ tmp120,
	mul	r5, r3, r0	@ tmp119, tmp120, VdhId
	mov	r0, #0	@,
	ldr	r4, [r6, r5]	@ g_HwMem[VdhId_4(D)].pVdmRegVirAddr, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	cmp	r4, #0	@ g_HwMem[VdhId_4(D)].pVdmRegVirAddr,
	beq	.L17	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L13:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36313,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L17:
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L13	@,
	str	r0, [r6, r5]	@ p32, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	mov	r0, r4	@ D.36313, g_HwMem[VdhId_4(D)].pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L19:
	.align	2
.L18:
	.word	g_HwMem
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
	add	lr, r0, #12288	@ tmp169, pAvsDecParam,
	mvn	r2, #0	@ tmp157,
	str	r2, [r1]	@ tmp157, *stream_base_addr_9(D)
	ldr	r3, [lr, #2136]	@ pAvsDecParam_11(D)->SlcNum, pAvsDecParam_11(D)->SlcNum
	cmp	r3, #0	@ pAvsDecParam_11(D)->SlcNum,
	movgt	ip, #0	@ i,
	ble	.L28	@,
.L23:
	ldr	r3, [r0, #88]	@ D.36328, MEM[base: _2, offset: 88B]
	cmp	r3, #0	@ D.36328,
	beq	.L26	@,
	ldr	r4, [r0, #96]	@ MEM[base: _2, offset: 96B], MEM[base: _2, offset: 96B]
	bic	r3, r3, #15	@ tmp_base_addr, D.36328,
	cmp	r4, #0	@ MEM[base: _2, offset: 96B],
	ble	.L26	@,
	cmp	r2, r3	@ D.36330, tmp_base_addr
	movcs	r2, r3	@ D.36330, tmp_base_addr
	str	r2, [r1]	@ D.36330, *stream_base_addr_9(D)
.L26:
	ldr	r3, [r0, #92]	@ D.36328, MEM[base: _2, offset: 92B]
	cmp	r3, #0	@ D.36328,
	beq	.L24	@,
	ldr	r4, [r0, #100]	@ MEM[base: _2, offset: 100B], MEM[base: _2, offset: 100B]
	bic	r3, r3, #15	@ tmp_base_addr, D.36328,
	cmp	r4, #0	@ MEM[base: _2, offset: 100B],
	ble	.L24	@,
	cmp	r2, r3	@ D.36330, tmp_base_addr
	movcs	r2, r3	@ D.36330, tmp_base_addr
	str	r2, [r1]	@ D.36330, *stream_base_addr_9(D)
.L24:
	ldr	r3, [lr, #2136]	@ pAvsDecParam_11(D)->SlcNum, pAvsDecParam_11(D)->SlcNum
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #28	@ ivtmp.30, ivtmp.30,
	cmp	r3, ip	@ pAvsDecParam_11(D)->SlcNum, i
	bgt	.L23	@,
	cmn	r2, #1	@ D.36330,
	beq	.L28	@,
	mov	r0, #0	@ D.36327,
	ldmfd	sp!, {r4, pc}	@
.L28:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36327,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AVSHAL_V200R004_StartDec_GetStrmAddr, .-AVSHAL_V200R004_StartDec_GetStrmAddr
	.align	2
	.global	AVSHAL_V200R004_WirteSlicMsg
	.type	AVSHAL_V200R004_WirteSlicMsg, %function
AVSHAL_V200R004_WirteSlicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r3, #1140	@ tmp261,
	ldr	lr, .L65	@ tmp259,
	mov	r5, r2	@ VdhId, VdhId
	.pad #36
	sub	sp, sp, #36	@,,
	add	ip, r0, #88	@ SliceInfo, pAvsDecParam,
	mov	r6, r0	@ pAvsDecParam, pAvsDecParam
	mla	r3, r3, r5, lr	@ tmp262, tmp261, VdhId, tmp259
	str	r0, [sp, #8]	@ pAvsDecParam, %sfp
	str	r1, [sp]	@ stream_base_addr, %sfp
	str	ip, [sp, #16]	@ SliceInfo, %sfp
	ldr	r4, [r3, #44]	@ D.36342, g_HwMem[VdhId_34(D)].MsgSlotAddr
	add	r3, r4, #320	@ MsgBlockPhy, D.36342,
	str	r3, [sp, #12]	@ MsgBlockPhy, %sfp
	mov	r0, r4	@, D.36342
	bl	MEM_Phy2Vir	@
	mov	r1, r5, asl #5	@ tmp268, VdhId,
	ldr	r3, .L65+4	@ tmp265,
	add	r2, r1, r5, lsl #3	@ tmp269, tmp268, VdhId,
	ldr	r1, .L65+8	@ tmp264,
	add	r2, r3, r2	@ tmp270, tmp265, tmp269
	ldr	r3, [r6, #104]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn
	ldr	r2, [r2, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_34(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_34(D)].ChanId
	cmp	r3, #0	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn,
	ldr	r2, [r1, r2, asl #2]	@ D.36343, s_pstVfmwChan
	ldr	r1, [r2, #188]	@ _41->stChanMem_scd.VirAddr, _41->stChanMem_scd.VirAddr
	ldr	r2, [r2, #192]	@ _41->stChanMem_scd.PhyAddr, _41->stChanMem_scd.PhyAddr
	rsb	r2, r2, r1	@ phytovir, _41->stChanMem_scd.PhyAddr, _41->stChanMem_scd.VirAddr
	add	fp, r0, #320	@ pMsgBase, pMsgBase,
	str	r2, [sp, #4]	@ phytovir, %sfp
	ldr	ip, [sp, #16]	@ SliceInfo, %sfp
	beq	.L37	@,
	ldr	r5, [sp, #8]	@ pAvsDecParam, %sfp
	mov	r1, #0	@ tmp282,
	ldr	lr, [sp]	@ stream_base_addr, %sfp
	mov	r3, #1	@ AddSlice0Flag,
	add	r4, r4, #576	@ D32, D.36342,
	ldr	r2, [r5, #88]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr
	add	r2, r2, #4	@ D.36341, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].stream_phy_addr,
	rsb	r2, lr, r2	@ D.36341, stream_base_addr, D.36341
	bic	lr, r2, #-16777216	@ D32, D.36341,
	bic	lr, lr, #15	@ D32, D32,
	mov	r2, r2, asl #28	@ D32, D.36341,
	str	r2, [r0, #320]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_39 + 320B]
	str	lr, [r0, #324]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_39 + 324B]
	str	r1, [r0, #328]	@ tmp282, MEM[(volatile HI_S32 *)pMsgBase_39 + 328B]
	str	r1, [r0, #332]	@ tmp282, MEM[(volatile HI_S32 *)pMsgBase_39 + 332B]
	ldr	r2, [r5, #104]	@ MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn
	sub	r2, r2, #1	@ slice_end_mbn, MEM[(struct AVS_SLCSTR_S *)pAvsDecParam_32(D) + 88B].slice_start_mbn,
	mov	r2, r2, asl #16	@ D32, slice_end_mbn,
	str	r2, [r0, #336]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_39 + 336B]
	str	r4, [r0, #572]	@ D32, MEM[(volatile HI_S32 *)pMsgBase_39 + 572B]
.L37:
	ldr	r2, [sp, #8]	@ pAvsDecParam, %sfp
	add	r2, r2, #12288	@ tmp382, pAvsDecParam,
	ldr	r1, [r2, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	cmp	r1, #0	@ pAvsDecParam_32(D)->SlcNum,
	ble	.L36	@,
	mov	r1, #0	@ k,
	mov	r3, r3, asl #8	@ D.36342, AddSlice0Flag,
	mov	r5, r1	@ i, k
	str	r3, [sp, #16]	@ D.36342, %sfp
	mov	r9, r1	@ j, j
	b	.L50	@
.L61:
	mov	r3, r5, asl #2	@ tmp379, i,
	mov	r8, r5, asl #5	@ tmp380, i,
	rsb	r0, r3, r8	@ D.36341, tmp379, tmp380
	cmp	r5, #0	@ i,
	add	r4, ip, r0	@ tmp381, SliceInfo, D.36341
	movgt	lr, #1	@ tmp295,
	movle	lr, #0	@ tmp295,
	ldr	r7, [r4, #16]	@ _74->slice_start_mbn, _74->slice_start_mbn
	ldr	r6, [r4, #-12]	@ _77->slice_start_mbn, _77->slice_start_mbn
	cmp	r7, r6	@ _74->slice_start_mbn, _77->slice_start_mbn
	movhi	r7, #0	@, tmp303
	andls	r7, lr, #1	@,, tmp303, tmp295
	cmp	r7, #0	@ tmp303,
	beq	.L60	@,
	ldr	r3, [r2, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ pAvsDecParam_32(D)->SlcNum, i
	ble	.L36	@,
.L50:
	cmp	r9, #512	@ j,
	blt	.L61	@,
	sub	r5, r1, #1	@ i, k,
.L64:
	ldr	r3, [r2, #2136]	@ pAvsDecParam_32(D)->SlcNum, pAvsDecParam_32(D)->SlcNum
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ pAvsDecParam_32(D)->SlcNum, i
	bgt	.L50	@,
.L36:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L60:
	ldr	r1, [sp, #4]	@ phytovir, %sfp
	ldr	r6, [ip, r0]	@ D.36341, _74->stream_phy_addr
	add	lr, r1, r6	@ D.36341, phytovir, D.36341
	ldr	r1, [lr, #3]	@ *_83, *_83
	bic	r1, r1, #-16777216	@ u32start_data, *_83,
	cmp	r1, #131072	@ u32start_data,
	beq	.L62	@,
	ldr	r1, [sp]	@ stream_base_addr, %sfp
	add	r6, r6, #4	@ D.36341, D.36341,
	rsb	r6, r1, r6	@ D.36341, stream_base_addr, D.36341
	and	r10, r6, #15	@ D.36341, D.36341,
	bic	r6, r6, #15	@ bit_stream_addr_1, D.36341,
	mov	r10, r10, asl #3	@ bit_offset_1, D.36341,
.L42:
	ldmib	r4, {r0, r1}	@ tmp381,,
	sub	r1, r1, #4	@ D.36342, _74->stream_lenInByte,
	cmp	r0, #0	@ D.36341,
	mov	r1, r1, asl #3	@ bit_len_1, D.36342,
	beq	.L59	@,
	ldr	lr, [sp, #8]	@ pAvsDecParam, %sfp
	rsb	r3, r3, r8	@ tmp339, tmp379, tmp380
	add	r3, lr, r3	@ tmp340, pAvsDecParam, tmp339
	ldr	r3, [r3, #100]	@ pAvsDecParam_32(D)->SlcStr[i_221].stream_lenInByte, pAvsDecParam_32(D)->SlcStr[i_221].stream_lenInByte
	cmp	r3, #0	@ pAvsDecParam_32(D)->SlcStr[i_221].stream_lenInByte,
	ble	.L54	@,
	ldr	r3, [sp]	@ stream_base_addr, %sfp
	cmp	r1, #0	@ bit_len_1,
	ldr	r8, [r4, #12]	@ _74->stream_lenInByte, _74->stream_lenInByte
	rsb	r0, r3, r0	@ D.36341, stream_base_addr, D.36341
	and	lr, r0, #15	@ D.36341, D.36341,
	bic	r7, r0, #15	@ bit_stream_addr_1, D.36341,
	mov	r3, lr, asl #3	@ bit_offset_1, D.36341,
	mov	lr, r8, asl #3	@ bit_len_1, _74->stream_lenInByte,
	beq	.L55	@,
	bic	lr, lr, #-33554432	@ D.36341, bit_len_1,
	bic	r0, r0, #-16777216	@ D.36352, D.36341,
	orr	lr, lr, r3, asl #25	@ D.36352, D.36341, bit_offset_1,
	bic	r0, r0, #15	@ D.36352, D.36352,
.L43:
	mov	r3, r5, asl #8	@ D.36346, i,
	bic	r1, r1, #-33554432	@ D.36341, bit_len_1,
	orr	r10, r1, r10, asl #25	@ D32, D.36341, bit_offset_1,
	add	r8, r3, #8	@ D.36346, D.36346,
	add	r1, r3, #4	@ D.36346, D.36346,
	add	r7, r3, #12	@ D.36346, D.36346,
	str	r10, [fp, r5, asl #8]	@ D32, *_143
	bic	r6, r6, #-16777216	@ D32, bit_stream_addr_1,
	str	r6, [fp, r1]	@ D32, MEM[(volatile HI_S32 *)_148]
	add	r1, r5, #1	@ k, i,
	str	lr, [fp, r8]	@ D.36352, MEM[(volatile HI_S32 *)_156]
	str	r0, [fp, r7]	@ D.36352, MEM[(volatile HI_S32 *)_161]
	ldr	lr, [r2, #2136]	@ D.36342, pAvsDecParam_32(D)->SlcNum
	ldr	r0, [r4, #16]	@ D.36341, _74->slice_start_mbn
	cmp	r1, lr	@ k, D.36342
	bge	.L45	@,
	ldr	r5, [r4, #44]	@ _219->slice_start_mbn, _219->slice_start_mbn
	cmp	r0, r5	@ D.36341, _219->slice_start_mbn
	bcs	.L46	@,
	b	.L45	@
.L47:
	ldr	r5, [r4, #44]	@ MEM[base: _17, offset: 44B], MEM[base: _17, offset: 44B]
	cmp	r5, r0	@ MEM[base: _17, offset: 44B], D.36341
	bhi	.L45	@,
.L46:
	add	r1, r1, #1	@ k, k,
	add	r4, r4, #28	@ ivtmp.43, ivtmp.43,
	cmp	r1, lr	@ k, D.36342
	blt	.L47	@,
.L45:
	cmp	lr, r1	@ D.36342, k
	beq	.L63	@,
	mov	r4, r1, asl #5	@ tmp365, k,
	ldr	lr, [sp, #12]	@ MsgBlockPhy, %sfp
	sub	r4, r4, r1, asl #2	@ tmp366, tmp365, k,
	ldr	r5, [sp, #16]	@ D.36342, %sfp
	add	r4, ip, r4	@ tmp367, SliceInfo, tmp366
	add	lr, lr, r1, lsl #8	@ D.36342, MsgBlockPhy, k,
	add	lr, lr, r5	@ D.36342, D.36342, D.36342
	ldr	r4, [r4, #16]	@ _181->slice_start_mbn, _181->slice_start_mbn
	sub	r4, r4, #1	@ slice_end_mbn, _181->slice_start_mbn,
.L49:
	add	r5, r3, #16	@ D.36346, D.36346,
	add	r3, r3, #252	@ D.36346, D.36346,
	uxth	r0, r0	@ D.36341, D.36341
	add	r9, r9, #1	@ j, j,
	orr	r0, r0, r4, asl #16	@ D32, D.36341, slice_end_mbn,
	str	r0, [fp, r5]	@ D32, MEM[(volatile HI_S32 *)_196]
	str	lr, [fp, r3]	@ D.36342, MEM[(volatile HI_S32 *)_200]
	sub	r5, r1, #1	@ i, k,
	b	.L64	@
.L55:
	mov	r0, #0	@ D.36352,
	mov	r6, r7	@ bit_stream_addr_1, bit_stream_addr_1
	mov	r1, lr	@ bit_len_1, bit_len_1
	mov	r10, r3	@ bit_offset_1, bit_offset_1
.L59:
	mov	lr, r0	@ D.36352, D.36352
	b	.L43	@
.L62:
	strb	r7, [lr, #2]	@ tmp303, *_87
	mov	r6, #64	@ tmp310,
	ldr	lr, [ip, r0]	@ _74->stream_phy_addr, _74->stream_phy_addr
	mov	r1, #1	@,
	str	r3, [sp, #24]	@ tmp379, %sfp
	ldr	r3, [sp, #4]	@ phytovir, %sfp
	str	r2, [sp, #28]	@ tmp382, %sfp
	add	lr, r3, lr	@ tmp309, phytovir, _74->stream_phy_addr
	str	ip, [sp, #20]	@ SliceInfo, %sfp
	strb	r6, [lr, #4]	@ tmp310, *_92
	ldr	lr, [ip, r0]	@ _74->stream_phy_addr, _74->stream_phy_addr
	add	lr, r3, lr	@ tmp313, phytovir, _74->stream_phy_addr
	ldr	r3, .L65+12	@ tmp416,
	strb	r6, [lr, #5]	@ tmp310, *_97
	ldr	r6, [ip, r0]	@ _74->stream_phy_addr, _74->stream_phy_addr
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r3, [sp]	@ stream_base_addr, %sfp
	add	r6, r6, #2	@ D.36341, _74->stream_phy_addr,
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	rsb	r6, r3, r6	@ D.36341, stream_base_addr, D.36341
	bl	MEM_WritePhyWord	@
	ldr	r3, .L65+12	@ tmp418,
	mov	r1, #1	@,
	and	r10, r6, #15	@ D.36341, D.36341,
	bic	r6, r6, #15	@ bit_stream_addr_1, D.36341,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r10, r10, asl #3	@ bit_offset_1, D.36341,
	add	r0, r0, #1792	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, .L65+12	@ tmp419,
	mov	r1, r7	@, tmp303
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2032	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, .L65+12	@ tmp420,
	mov	r1, r7	@, tmp303
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	ip, [sp, #20]	@ SliceInfo, %sfp
	ldr	r3, [sp, #24]	@ tmp379, %sfp
	ldr	r2, [sp, #28]	@ tmp382, %sfp
	b	.L42	@
.L63:
	ldr	r4, [sp, #8]	@ pAvsDecParam, %sfp
	mov	lr, #0	@ D.36342,
	ldrh	r5, [r4, #48]	@ D.36342, pAvsDecParam_32(D)->PicWidthInMb
	ldrh	r4, [r4, #50]	@ D.36342, pAvsDecParam_32(D)->PicHeightInMb
	mul	r4, r4, r5	@ D.36342, D.36342, D.36342
	sub	r4, r4, #1	@ slice_end_mbn, D.36342,
	b	.L49	@
.L54:
	mov	r0, #0	@ D.36352,
	mov	lr, r0	@ D.36352, D.36352
	b	.L43	@
.L66:
	.align	2
.L65:
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pAvsDecParam, pAvsDecParam
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r0, r1	@, VdhId
	mov	r8, r1	@ VdhId, VdhId
	mov	r1, r4	@, pAvsDecParam
	bl	AVSHAL_V200R004_StartDec_CheckParam	@
	cmp	r0, #0	@,
	bne	.L81	@,
	add	r1, sp, #20	@,,
	mov	r0, r8	@, VdhId
	bl	AVSHAL_V200R004_StartDec_GetRegAddr	@
	cmp	r0, #0	@,
	bne	.L81	@,
	add	r1, sp, #16	@,,
	mov	r0, r4	@, pAvsDecParam
	bl	AVSHAL_V200R004_StartDec_GetStrmAddr	@
	subs	r5, r0, #0	@ D.36392,
	bne	.L81	@,
	ldrh	r2, [r4, #50]	@ D.36393, pAvsDecParam_12(D)->PicHeightInMb
	movw	r6, #1140	@ tmp430,
	ldrh	r0, [r4, #48]	@ D.36393, pAvsDecParam_12(D)->PicWidthInMb
	mov	r3, r5	@ tmp409, D.36392
	mul	r6, r6, r8	@ tmp429, tmp430, VdhId
	ldr	r9, .L83	@ tmp943,
	mul	r0, r2, r0	@ D.36393, D.36393, D.36393
	add	r7, r4, #12288	@ tmp942, pAvsDecParam,
	add	r10, r9, r6	@ tmp431, tmp943, tmp429
	sub	r0, r0, #1	@ D.36393, D.36393,
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	bfi	r3, r0, #0, #20	@ tmp409, D.36393,,
	str	r3, [sp, #12]	@ tmp409,
	ubfx	r0, r3, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp409,,
	mov	r3, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp409,
	orr	r0, r0, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	orr	r3, r3, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfi	r0, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, D.36392,,
	bfi	r3, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en, D.36392,,
	strb	r0, [sp, #14]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	uxtb	r3, r3	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].repair_en
	orr	r3, r3, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	bfi	r3, r5, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, D.36392,,
	strb	r3, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r1, #8]	@ D.36393, *_38
	bl	vfmw_dprint_nothing	@
	mov	r3, #805306368	@ tmp433,
	mov	r0, #1	@ tmp451,
	ldr	lr, [r7, #2556]	@ pAvsDecParam_12(D)->VahbStride, pAvsDecParam_12(D)->VahbStride
	mov	r1, #6	@ tmp436,
	ldr	ip, [r7, #2580]	@ pAvsDecParam_12(D)->Compress_en, pAvsDecParam_12(D)->Compress_en
	mov	lr, lr, lsr #6	@ D.36396, pAvsDecParam_12(D)->VahbStride,
	str	r3, [sp, #12]	@ tmp433, D32
	ldrh	r3, [sp, #14]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	strb	r1, [sp, #12]	@ tmp436, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfi	r3, r0, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp451,,
	strh	r3, [sp, #14]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	ldrh	r1, [sp, #12]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	mov	r3, r3, lsr #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,
	ldr	r0, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	bfi	r3, r5, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, D.36392,,
	bfi	r1, lr, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.36396,,
	ubfx	lr, r1, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	strh	r1, [sp, #12]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	uxtb	r3, r3	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	orr	lr, lr, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	orr	r3, r3, #32	@ tmp456, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	bfi	lr, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, D.36392,,
	strb	lr, [sp, #13]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	uxtb	r3, r3	@ tmp461, tmp456
	bfi	r3, ip, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pAvsDecParam_12(D)->Compress_en,,
	bfi	r3, r5, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, D.36392,,
	strb	r3, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r0, #12]	@ D.36393, *_62
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r3, [r10, #44]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r3, [r1, #16]	@ D.36393, *_74
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r3, [r10, #28]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r3, [r1, #20]	@ D.36393, *_85
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r1, [sp, #16]	@ D.36393, stream_base_addr
	str	r1, [r3, #24]	@ D.36393, *_94
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L83+4	@ tmp498,
	ldrh	r1, [r4, #48]	@ pAvsDecParam_12(D)->PicWidthInMb, pAvsDecParam_12(D)->PicWidthInMb
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	cmp	r1, #120	@ pAvsDecParam_12(D)->PicWidthInMb,
	ldr	r3, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	movhi	r1, #0	@ D.36393,
	movls	r1, #65536	@ D.36393,
	add	r3, r3, #4	@ D.36393, s_RegPhyBaseAddr,
	str	r1, [sp]	@ D.36393, %sfp
	str	r3, [sp, #4]	@ D.36393, %sfp
	bl	MEM_ReadPhyWord	@
	ldr	r3, [sp, #4]	@ D.36393, %sfp
	ldr	r1, [sp]	@ D.36393, %sfp
	orr	r1, r0, r1	@,, D.36393
	mov	r0, r3	@, D.36393
	bl	MEM_WritePhyWord	@
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp507,
	movt	r3, 48	@ tmp507,
	str	r3, [r1, #60]	@ tmp507, *_109
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #64]	@ tmp507, *_114
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #68]	@ tmp507, *_119
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #72]	@ tmp507, *_124
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #76]	@ tmp507, *_129
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #80]	@ tmp507, *_134
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r3, [r1, #84]	@ tmp507, *_139
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r3, [r7, #2152]	@ pAvsDecParam_12(D)->CurPicAddr, pAvsDecParam_12(D)->CurPicAddr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->CurPicAddr,
	str	r3, [r1, #96]	@ D.36393, *_148
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	ldr	r0, [r7, #2556]	@ D.36393, pAvsDecParam_12(D)->VahbStride
	ldrh	r3, [r4, #50]	@ height_in_mb, pAvsDecParam_12(D)->PicHeightInMb
	str	r0, [r1, #100]	@ D.36393, *_159
	str	r3, [sp]	@ height_in_mb, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r7, #2556]	@ pAvsDecParam_12(D)->VahbStride, pAvsDecParam_12(D)->VahbStride
	ldr	r0, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mov	r1, r1, asl #1	@ D.36396, pAvsDecParam_12(D)->VahbStride,
	ldr	r3, [sp]	@ height_in_mb, %sfp
	add	r3, r3, #1	@ D.36396, height_in_mb,
	mov	r3, r3, lsr #1	@ D.36396, D.36396,
	mul	r3, r3, r1	@ D.36393, D.36396, D.36396
	str	r3, [r0, #104]	@ D.36393, *_172
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r5, [r3, #108]	@ D.36392, *_179
	ldr	r1, [r10, #1120]	@ D.36393, g_HwMem[VdhId_11(D)].DnrMbInfoAddr
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r1, [r3, #144]	@ D.36393, *_186
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r5, [r3, #148]	@ D.36392, *_193
	str	r5, [sp, #12]	@ D.36392, D32
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	str	r5, [r3, #152]	@ D.36392, *_199
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, r6]	@ g_HwMem[VdhId_11(D)].pVdmRegVirAddr, g_HwMem[VdhId_11(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp1011,
	str	r2, [r3, #32]	@ tmp1011, *_205
	ldr	r0, [r10, #44]	@, g_HwMem[VdhId_11(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ p32,
	beq	.L82	@,
	ldrh	r3, [r4, #50]	@ pAvsDecParam_12(D)->PicHeightInMb, pAvsDecParam_12(D)->PicHeightInMb
	ldrh	r0, [sp, #14]	@, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb
	ldrh	r2, [r4, #48]	@ pAvsDecParam_12(D)->PicWidthInMb, pAvsDecParam_12(D)->PicWidthInMb
	sub	r3, r3, #1	@ tmp618, pAvsDecParam_12(D)->PicHeightInMb,
	bfi	r0, r3, #0, #9	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb, tmp618,,
	ldrh	r1, [sp, #12]	@, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb
	ldrb	lr, [r4, #31]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ChromaFormat, pAvsDecParam_12(D)->ChromaFormat
	sub	r2, r2, #1	@ tmp613, pAvsDecParam_12(D)->PicWidthInMb,
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->SamplePrecision, pAvsDecParam_12(D)->SamplePrecision
	bfi	r1, r2, #0, #9	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb, tmp613,,
	mov	r3, r0, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].chroma_format, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb,
	strh	r0, [sp, #14]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_height_in_mb
	bfi	r3, lr, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].chroma_format, pAvsDecParam_12(D)->ChromaFormat,,
	mov	r2, r1, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb,
	bfi	r3, ip, #3, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].sample_precision, pAvsDecParam_12(D)->SamplePrecision,,
	strh	r1, [sp, #12]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].pic_width_in_mb
	bfi	r2, r5, #1, #7	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, D.36392,,
	bfi	r3, r5, #5, #3	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1, D.36392,,
	strb	r2, [sp, #13]	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv0
	strb	r3, [sp, #15]	@ MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1, MEM[(struct AVS_V200R004_DWNMSG_D0 *)&D32].rsv1
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6]	@ D.36393, MEM[(volatile HI_S32 *)p32_209]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #16]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ProgrsvFrame, pAvsDecParam_12(D)->ProgrsvFrame
	ldrb	ip, [r4, #8]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicStruct, pAvsDecParam_12(D)->PicStruct
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].progressive_frame, D.36392
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicRefFlag, pAvsDecParam_12(D)->PicRefFlag
	bfi	r3, r2, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].progressive_frame, pAvsDecParam_12(D)->ProgrsvFrame,,
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicCodingType, pAvsDecParam_12(D)->PicCodingType
	bfi	r3, ip, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].picture_structure, pAvsDecParam_12(D)->PicStruct,,
	mov	r1, r5, lsr #16	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_ref_flag, D.36392,
	ldrb	ip, [r4, #15]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->TopFieldFirst, pAvsDecParam_12(D)->TopFieldFirst
	ldrb	lr, [r4, #9]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->NoFwdRefFlag, pAvsDecParam_12(D)->NoFwdRefFlag
	bfi	r1, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_ref_flag, pAvsDecParam_12(D)->PicRefFlag,,
	ldrb	fp, [r4, #12]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->PicQuant, pAvsDecParam_12(D)->PicQuant
	bfi	r3, r2, #3, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_coding_type, pAvsDecParam_12(D)->PicCodingType,,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->RepeatFirstField, pAvsDecParam_12(D)->RepeatFirstField
	bfi	r3, ip, #5, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].top_field_first, pAvsDecParam_12(D)->TopFieldFirst,,
	mov	r2, r5, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_qp, D.36392,
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->SkipModeFlag, pAvsDecParam_12(D)->SkipModeFlag
	bfi	r1, lr, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag, pAvsDecParam_12(D)->NoFwdRefFlag,,
	bfi	r3, r0, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].repeat_first_field, pAvsDecParam_12(D)->RepeatFirstField,,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FixQPFlag, pAvsDecParam_12(D)->FixQPFlag
	bfi	r2, fp, #0, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].pic_qp, pAvsDecParam_12(D)->PicQuant,,
	ldrb	r0, [r4, #22]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->AdvPredModeDisable, pAvsDecParam_12(D)->AdvPredModeDisable
	bfi	r2, ip, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].skip_mode_flag, pAvsDecParam_12(D)->SkipModeFlag,,
	bfi	r3, lr, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp, pAvsDecParam_12(D)->FixQPFlag,,
	bfi	r2, r0, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable, pAvsDecParam_12(D)->AdvPredModeDisable,,
	str	r5, [sp, #12]	@ D.36392, D32
	strb	r1, [sp, #14]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].no_fwd_ref_flag
	ldrh	r1, [sp, #14]	@, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv
	strb	r2, [sp, #13]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].ad_pred_mode_disable
	bfi	r1, r5, #2, #14	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv, D.36392,,
	strb	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].fix_qp
	strh	r1, [sp, #14]	@ movhi	@ MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D1 *)&D32].rsv
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6, #4]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 4B]
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #20]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->LoopFiltDisable, pAvsDecParam_12(D)->LoopFiltDisable
	ldrb	r2, [r4, #19]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->LoopFiltParamFlag, pAvsDecParam_12(D)->LoopFiltParamFlag
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_disable, D.36392
	bfi	r3, r1, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_disable, pAvsDecParam_12(D)->LoopFiltDisable,,
	ldrb	r1, [r4, #18]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->AlphaOffset, pAvsDecParam_12(D)->AlphaOffset
	bfi	r3, r2, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].loop_flt_para_flag, pAvsDecParam_12(D)->LoopFiltParamFlag,,
	ldrb	r2, [r4, #17]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BetaOffset, pAvsDecParam_12(D)->BetaOffset
	bfi	r3, r1, #2, #5	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset, pAvsDecParam_12(D)->AlphaOffset,,
	str	r5, [sp, #12]	@ D.36392, D32
	strb	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset, MEM[(struct AVS_V200R004_DWNMSG_D2 *)&D32].alpha_c_offset
	ldrh	r3, [sp, #12]	@,
	bfi	r3, r2, #7, #5	@ tmp743, pAvsDecParam_12(D)->BetaOffset,,
	strh	r3, [sp, #12]	@ movhi	@ tmp743,
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6, #8]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 8B]
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #25]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdTopFieldFirst0, pAvsDecParam_12(D)->FwdTopFieldFirst0
	ldrb	r1, [r4, #26]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdPicStruct0, pAvsDecParam_12(D)->FwdPicStruct0
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_0, D.36392
	ldrb	r0, [r4, #27]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdTopFieldFirst1, pAvsDecParam_12(D)->FwdTopFieldFirst1
	bfi	r3, r2, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_0, pAvsDecParam_12(D)->FwdTopFieldFirst0,,
	bfi	r3, r1, #1, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_picture_structure_0, pAvsDecParam_12(D)->FwdPicStruct0,,
	ldrb	r2, [r4, #28]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->FwdPicStruct1, pAvsDecParam_12(D)->FwdPicStruct1
	ldrb	r1, [r4, #23]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BwdTopFieldFirst, pAvsDecParam_12(D)->BwdTopFieldFirst
	bfi	r3, r0, #3, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_top_field_first_1, pAvsDecParam_12(D)->FwdTopFieldFirst1,,
	bfi	r3, r2, #4, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].fwd_picture_structure_1, pAvsDecParam_12(D)->FwdPicStruct1,,
	ldrb	r2, [r4, #24]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->BwdPicStruct, pAvsDecParam_12(D)->BwdPicStruct
	bfi	r3, r1, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first, pAvsDecParam_12(D)->BwdTopFieldFirst,,
	str	r5, [sp, #12]	@ D.36392, D32
	strb	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].bwd_top_field_first
	ldrh	r3, [sp, #12]	@,
	bfi	r3, r2, #7, #2	@ tmp786, pAvsDecParam_12(D)->BwdPicStruct,,
	strh	r3, [sp, #12]	@ movhi	@ tmp786,
	ldr	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv
	bfi	r3, r5, #9, #23	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, D.36392,,
	str	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv
	str	r3, [r6, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D3 *)&D32].rsv, MEM[(volatile HI_S32 *)p32_209 + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2140]	@ pAvsDecParam_12(D)->BwdRefPicAddr, pAvsDecParam_12(D)->BwdRefPicAddr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->BwdRefPicAddr,
	str	r3, [r6, #16]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 16B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2144]	@ pAvsDecParam_12(D)->FwdRefPic0Addr, pAvsDecParam_12(D)->FwdRefPic0Addr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->FwdRefPic0Addr,
	str	r3, [r6, #20]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 20B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2148]	@ pAvsDecParam_12(D)->FwdRefPic1Addr, pAvsDecParam_12(D)->FwdRefPic1Addr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->FwdRefPic1Addr,
	str	r3, [r6, #24]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 24B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2164]	@ pAvsDecParam_12(D)->rcn_address, pAvsDecParam_12(D)->rcn_address
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->rcn_address,
	str	r3, [r6, #28]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 28B]
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #21]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ColPicStruct, pAvsDecParam_12(D)->ColPicStruct
	ldrb	r1, [r4, #29]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->ColPicType, pAvsDecParam_12(D)->ColPicType
	mov	r2, r5, lsr #24	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, D.36392,
	bfi	r2, r0, #0, #2	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, pAvsDecParam_12(D)->ColPicStruct,,
	mov	r3, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, D.36392
	bfi	r3, r1, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, pAvsDecParam_12(D)->ColPicType,,
	str	r5, [sp, #12]	@ D.36392, D32
	strb	r2, [sp, #15]	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct, MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_struct
	strb	r3, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type, MEM[(struct AVS_V200R004_DWNMSG_D8 *)&D32].col_pic_type
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6, #32]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 32B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #64]	@ pAvsDecParam_12(D)->StreamPhyAddr, pAvsDecParam_12(D)->StreamPhyAddr
	mov	r3, r5	@ tmp821, D.36392
	bfi	r3, r2, #0, #24	@ tmp821, pAvsDecParam_12(D)->StreamPhyAddr,,
	str	r3, [sp, #12]	@ tmp821,
	str	r3, [r6, #36]	@ tmp821, MEM[(volatile HI_S32 *)p32_209 + 36B]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #80]	@ pAvsDecParam_12(D)->StreamLength, pAvsDecParam_12(D)->StreamLength
	ldr	r2, [r4, #72]	@ pAvsDecParam_12(D)->StreamBitOffset, pAvsDecParam_12(D)->StreamBitOffset
	mov	r3, r5	@ tmp825, D.36392
	bfi	r3, r1, #0, #24	@ tmp825, pAvsDecParam_12(D)->StreamLength,,
	str	r3, [sp, #12]	@ tmp825,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0
	bfi	r3, r2, #0, #7	@ MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0, pAvsDecParam_12(D)->StreamBitOffset,,
	strb	r3, [sp, #15]	@ MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0, MEM[(struct AVS_V200R004_DWNMSG_D10 *)&D32].bit_offset_0
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6, #40]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 40B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #68]	@ pAvsDecParam_12(D)->StreamPhyAddr, pAvsDecParam_12(D)->StreamPhyAddr
	mov	r3, r5	@ tmp832, D.36392
	bfi	r3, r2, #0, #24	@ tmp832, pAvsDecParam_12(D)->StreamPhyAddr,,
	str	r3, [sp, #12]	@ tmp832,
	str	r3, [r6, #44]	@ tmp832, MEM[(volatile HI_S32 *)p32_209 + 44B]
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #32]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag
	ldrb	r1, [r4, #34]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_delta_u, pAvsDecParam_12(D)->chroma_quant_param_delta_u
	mov	r3, r5, lsr #8	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_u, D.36392,
	ldrb	ip, [r4, #33]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_disable, pAvsDecParam_12(D)->chroma_quant_param_disable
	mov	r2, r5	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].weighting_quant_flag, D.36392
	bfi	r2, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag,,
	ldrb	r0, [r4, #36]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->aec_enable, pAvsDecParam_12(D)->aec_enable
	bfi	r3, r1, #0, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_u, pAvsDecParam_12(D)->chroma_quant_param_delta_u,,
	ldrb	lr, [r4, #35]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->chroma_quant_param_delta_v, pAvsDecParam_12(D)->chroma_quant_param_delta_v
	bfi	r2, ip, #1, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_disable, pAvsDecParam_12(D)->chroma_quant_param_disable,,
	bfi	r3, r0, #6, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].aec_enable, pAvsDecParam_12(D)->aec_enable,,
	ldrb	ip, [r4, #37]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->p_filed_enhanced_flag, pAvsDecParam_12(D)->p_filed_enhanced_flag
	mov	r1, r5, lsr #16	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, D.36392,
	ldrb	r0, [r4, #38]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->b_filed_enhanced_flag, pAvsDecParam_12(D)->b_filed_enhanced_flag
	bfi	r2, lr, #2, #6	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v, pAvsDecParam_12(D)->chroma_quant_param_delta_v,,
	bfi	r3, ip, #7, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag, pAvsDecParam_12(D)->p_filed_enhanced_flag,,
	bfi	r1, r0, #0, #1	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, pAvsDecParam_12(D)->b_filed_enhanced_flag,,
	str	r5, [sp, #12]	@ D.36392, D32
	strb	r2, [sp, #12]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].chroma_quant_param_delta_v
	strb	r1, [sp, #14]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].b_filed_enhanced_flag
	strb	r3, [sp, #13]	@ MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag, MEM[(struct AVS_V200R004_DWNMSG_D12 *)&D32].p_filed_enhanced_flag
	ldr	r3, [sp, #12]	@ D.36393, D32
	str	r3, [r6, #48]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 48B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #1084]	@ g_HwMem[VdhId_11(D)].PmvTopAddr, g_HwMem[VdhId_11(D)].PmvTopAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].PmvTopAddr,
	str	r3, [r6, #52]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 52B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #1088]	@ g_HwMem[VdhId_11(D)].RcnTopAddr, g_HwMem[VdhId_11(D)].RcnTopAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].RcnTopAddr,
	str	r3, [r6, #56]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 56B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2160]	@ pAvsDecParam_12(D)->ColPmvAddr, pAvsDecParam_12(D)->ColPmvAddr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->ColPmvAddr,
	str	r3, [r6, #64]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 64B]
	bl	vfmw_dprint_nothing	@
	add	r3, r4, #14400	@ ivtmp.72, pAvsDecParam,
	add	r2, r4, #14528	@ D.36406, pAvsDecParam,
	add	r3, r3, #56	@ ivtmp.72, ivtmp.72,
	add	r2, r2, #56	@ D.36406, D.36406,
	add	ip, r6, #68	@ ivtmp.80, p32,
.L73:
	ldr	lr, [r3, #4]!	@ D.36393, MEM[base: _335, offset: 0B]
	cmp	r3, r2	@ ivtmp.72, D.36406
	str	lr, [ip], #4	@ D.36393, MEM[(volatile HI_S32 *)p32_430]
	bne	.L73	@,
	ldr	r3, [r7, #2156]	@ pAvsDecParam_12(D)->CurPmvAddr, pAvsDecParam_12(D)->CurPmvAddr
	bic	r3, r3, #15	@ D.36393, pAvsDecParam_12(D)->CurPmvAddr,
	str	r3, [r6, #196]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 196B]
	bl	vfmw_dprint_nothing	@
	movw	r3, #1140	@ tmp907,
	mla	r9, r3, r8, r9	@ tmp908, tmp907, VdhId, tmp943
	ldr	r3, [r9, #1096]	@ g_HwMem[VdhId_11(D)].DblkTopAddr, g_HwMem[VdhId_11(D)].DblkTopAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].DblkTopAddr,
	str	r3, [r6, #200]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 200B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #1080]	@ g_HwMem[VdhId_11(D)].SedTopAddr, g_HwMem[VdhId_11(D)].SedTopAddr
	bic	r3, r3, #15	@ D.36393, g_HwMem[VdhId_11(D)].SedTopAddr,
	str	r3, [r6, #228]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 228B]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #44]	@ g_HwMem[VdhId_11(D)].MsgSlotAddr, g_HwMem[VdhId_11(D)].MsgSlotAddr
	add	r3, r3, #320	@ D.36393, g_HwMem[VdhId_11(D)].MsgSlotAddr,
	str	r3, [r6, #252]	@ D.36393, MEM[(volatile HI_S32 *)p32_209 + 252B]
	str	r3, [sp, #12]	@ D.36393, D32
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ pAvsDecParam_12(D)->weighting_quant_flag, pAvsDecParam_12(D)->weighting_quant_flag
	cmp	r3, #1	@ pAvsDecParam_12(D)->weighting_quant_flag,
	beq	.L74	@,
.L76:
	mov	r0, r4	@, pAvsDecParam
	mov	r2, r8	@, VdhId
	ldr	r1, [sp, #16]	@, stream_base_addr
	bl	AVSHAL_V200R004_WirteSlicMsg	@
	mov	r0, r5	@, D.36392
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L82:
	bl	vfmw_dprint_nothing	@
.L81:
	mvn	r5, #0	@ D.36392,
	mov	r0, r5	@, D.36392
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L74:
	add	r3, r4, #14528	@ ivtmp.58, pAvsDecParam,
	add	ip, r6, #256	@ p32, p32,
	add	r3, r3, #60	@ ivtmp.58, ivtmp.58,
	add	r6, r6, #320	@ D.36394, p32,
.L75:
	ldrb	r0, [r3, #8]	@ zero_extendqisi2	@ D.36396, MEM[base: _415, offset: 8B]
	add	r3, r3, #16	@ ivtmp.58, ivtmp.58,
	ldrb	r2, [r3, #-12]	@ zero_extendqisi2	@ D.36396, MEM[base: _415, offset: 4B]
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.36396, MEM[base: _415, offset: 0B]
	ldrb	lr, [r3, #-4]	@ zero_extendqisi2	@ D.36396, MEM[base: _415, offset: 12B]
	mov	r0, r0, asl #16	@ D.36396, D.36396,
	orr	r2, r0, r2, asl #8	@ D.36396, D.36396, D.36396,
	orr	r2, r2, r1	@ D.36396, D.36396, D.36396
	orr	r2, r2, lr, asl #24	@ D.36393, D.36396, D.36396,
	str	r2, [ip], #4	@ D.36393, MEM[(volatile HI_S32 *)p32_502]
	cmp	ip, r6	@ p32, D.36394
	bne	.L75	@,
	b	.L76	@
.L84:
	.align	2
.L83:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	AVSHAL_V200R004_StartDec, .-AVSHAL_V200R004_StartDec
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
