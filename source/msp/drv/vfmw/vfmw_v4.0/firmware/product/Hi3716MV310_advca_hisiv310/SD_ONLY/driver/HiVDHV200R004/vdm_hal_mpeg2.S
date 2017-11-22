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
	.file	"vdm_hal_mpeg2.c"
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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.o
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
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mov	lr, r0	@ pMp2DecParam, pMp2DecParam
	add	ip, r0, #45056	@ tmp319, pMp2DecParam,
	str	r0, [sp, #20]	@ pMp2DecParam, %sfp
	mov	r8, r1	@ SlcDnMsgVirAddr, SlcDnMsgVirAddr
	ldr	r0, [r0, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	mov	r5, r2	@ SlcDnMsgPhyAddr, SlcDnMsgPhyAddr
	str	r3, [sp, #8]	@ StreamBaseAddr, %sfp
	add	r9, lr, #252	@ SliceInfo, pMp2DecParam,
	cmp	r0, #0	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	ldr	fp, [ip, #252]	@ SliceNum, pMp2DecParam_14(D)->SlcNum
	mov	r4, #0	@ tmp317,
	moveq	r1, r0	@ AddSlice0Flag, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	bne	.L22	@,
.L2:
	cmp	fp, #0	@ SliceNum,
	ble	.L18	@,
	add	r3, r5, r1, lsl #5	@ D.33297, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	r4, #0	@ i,
	str	r3, [sp, #16]	@ D.33297, %sfp
	mov	r10, #44	@ tmp432,
	mov	r3, r1, asl #7	@ D.33306, AddSlice0Flag,
	str	r3, [sp, #12]	@ D.33306, %sfp
	b	.L14	@
.L6:
	add	r4, r4, #1	@ i, i,
	cmp	fp, r4	@ SliceNum, i
	ble	.L18	@,
.L14:
	mul	r2, r10, r4	@ D.33297, tmp432, i
	cmp	r4, #0	@ i,
	movgt	r1, #1	@ tmp362,
	movle	r1, #0	@ tmp362,
	add	r5, r9, r2	@ tmp431, SliceInfo, D.33297
	ldr	r0, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	ldr	r3, [r5, #-12]	@ _113->slice_start_mbn, _113->slice_start_mbn
	cmp	r0, r3	@ _110->slice_start_mbn, _113->slice_start_mbn
	movhi	r7, #0	@, tmp370
	andls	r7, r1, #1	@,, tmp370, tmp362
	cmp	r7, #0	@ tmp370,
	bne	.L6	@,
	ldr	r2, [r9, r2]	@ D.33297, _110->BsPhyAddr
	mov	r0, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldr	r1, [r5, #16]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	ip, r7	@ tmp376, tmp370
	and	lr, r2, #15	@ D.33297, D.33297,
	ldr	r6, [r5, #8]	@ _110->BsLenInBit, _110->BsLenInBit
	ldr	r3, [sp, #12]	@ D.33306, %sfp
	add	r1, r1, lr, lsl #3	@ D.33297, _110->BsBitOffset, D.33297,
	bfi	ip, r6, #0, #24	@ tmp376, _110->BsLenInBit,,
	bfi	r0, r1, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.33297,,
	str	ip, [sp, #28]	@ tmp376,
	strb	r0, [sp, #31]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	add	r6, r3, r4, lsl #5	@ D.33306, D.33306, i,
	ldr	r1, [sp, #28]	@ D.33298, D32
	add	r4, r4, #1	@ j, i,
	str	r2, [sp, #4]	@ D.33297, %sfp
	str	r1, [r8, r6]	@ D.33298, MEM[(volatile HI_S32 *)_136]
	bl	vfmw_dprint_nothing	@
	add	r0, r6, #4	@ D.33306, D.33306,
	mov	r1, r7	@ tmp384, tmp370
	ldr	r2, [sp, #4]	@ D.33297, %sfp
	ldr	r3, [sp, #8]	@ StreamBaseAddr, %sfp
	bic	r2, r2, #15	@ bit_stream_address_0, D.33297,
	rsb	r2, r3, r2	@ D.33297, StreamBaseAddr, bit_stream_address_0
	bfi	r1, r2, #0, #24	@ tmp384, D.33297,,
	str	r1, [r8, r0]	@ tmp384, MEM[(volatile HI_S32 *)_147]
	str	r1, [sp, #28]	@ tmp384,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #4]	@ D.33297, _110->BsPhyAddr
	mov	r0, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	ldr	r1, [r5, #20]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	ip, r7	@ tmp391, tmp370
	and	lr, r2, #15	@ D.33297, D.33297,
	ldr	r3, [r5, #12]	@ tmp480, _110->BsLenInBit
	add	r1, r1, lr, lsl #3	@ D.33297, _110->BsBitOffset, D.33297,
	bfi	ip, r3, #0, #24	@ tmp391, tmp480,,
	bfi	r0, r1, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.33297,,
	add	r1, r6, #8	@ D.33306, D.33306,
	str	ip, [sp, #28]	@ tmp391,
	strb	r0, [sp, #31]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r0, [sp, #28]	@ D.33298, D32
	str	r2, [sp, #4]	@ D.33297, %sfp
	str	r0, [r8, r1]	@ D.33298, MEM[(volatile HI_S32 *)_169]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #4]	@ _110->BsPhyAddr, _110->BsPhyAddr
	cmp	r1, #0	@ _110->BsPhyAddr,
	movne	r3, r7	@ tmp400, tmp370
	moveq	r3, #0	@ tmp482,
	ldr	r2, [sp, #4]	@ D.33297, %sfp
	ldrne	r1, [sp, #8]	@ StreamBaseAddr, %sfp
	bicne	r2, r2, #15	@ bit_stream_address_1, D.33297,
	rsbne	r2, r1, r2	@ D.33297, StreamBaseAddr, bit_stream_address_1
	bfine	r3, r2, #0, #24	@ tmp400, D.33297,,
	str	r3, [sp, #28]	@ tmp482,
	ldr	r2, [sp, #28]	@ D.33298, D32
	add	r3, r6, #12	@ D.33306, D.33306,
	str	r2, [r8, r3]	@ D.33298, MEM[(volatile HI_S32 *)_182]
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #40]	@ _110->quantiser_scale_code, _110->quantiser_scale_code
	ldr	r1, [r5, #36]	@ _110->intra_slice, _110->intra_slice
	mov	r0, #0	@ tmp483,
	and	r3, r3, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->quantiser_scale_code,
	add	r2, r6, #16	@ D.33306, D.33306,
	bfi	r3, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->intra_slice,,
	str	r0, [sp, #28]	@ tmp483, D32
	strb	r3, [sp, #28]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r3, [sp, #28]	@ D.33298, D32
	str	r3, [r8, r2]	@ D.33298, MEM[(volatile HI_S32 *)_197]
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	add	r3, r6, #20	@ D.33306, D.33306,
	mov	r2, #0	@ tmp413,
	bfi	r2, r1, #0, #20	@ tmp413, _110->slice_start_mbn,,
	str	r2, [sp, #28]	@ tmp413,
	str	r2, [r8, r3]	@ tmp413, MEM[(volatile HI_S32 *)_207]
	bl	vfmw_dprint_nothing	@
	cmp	fp, r4	@ SliceNum, j
	ble	.L9	@,
	ldr	r2, [r5, #32]	@ D.33297, _110->slice_start_mbn
	ldr	r3, [r5, #76]	@ _267->slice_start_mbn, _267->slice_start_mbn
	cmp	r2, r3	@ D.33297, _267->slice_start_mbn
	bcs	.L10	@,
	b	.L9	@
.L11:
	ldr	r3, [r5, #76]	@ MEM[base: _283, offset: 76B], MEM[base: _283, offset: 76B]
	cmp	r3, r2	@ MEM[base: _283, offset: 76B], D.33297
	bhi	.L9	@,
.L10:
	add	r4, r4, #1	@ j, j,
	add	r5, r5, #44	@ ivtmp.46, ivtmp.46,
	cmp	fp, r4	@ SliceNum, j
	bgt	.L11	@,
.L9:
	cmp	r4, fp	@ j, SliceNum
	beq	.L23	@,
	mla	r2, r10, r4, r9	@ tmp424, tmp432, j, SliceInfo
	ldr	r3, [sp, #16]	@ D.33297, %sfp
	add	r7, r3, r4, lsl #5	@ D.33297, D.33297, j,
	mov	r5, r7	@ next_slice_para_addr, D.33297
	ldr	r2, [r2, #32]	@ _227->slice_start_mbn, _227->slice_start_mbn
	sub	r2, r2, #1	@ slice_end_mbn, _227->slice_start_mbn,
.L13:
	add	r0, r6, #24	@ D.33306, D.33306,
	mov	r1, #0	@ tmp428,
	bfi	r1, r2, #0, #20	@ tmp428, slice_end_mbn,,
	str	r1, [sp, #28]	@ tmp428,
	str	r1, [r8, r0]	@ tmp428, MEM[(volatile HI_S32 *)_243]
	add	r6, r6, #28	@ D.33306, D.33306,
	bl	vfmw_dprint_nothing	@
	sub	r4, r4, #1	@ i, j,
	str	r5, [r8, r6]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_252]
	add	r4, r4, #1	@ i, i,
	str	r7, [sp, #28]	@ D.33297, MEM[(struct MP2SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	vfmw_dprint_nothing	@
	cmp	fp, r4	@ SliceNum, i
	bgt	.L14	@,
.L18:
	mov	r0, #0	@,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L23:
	ldr	r3, [sp, #20]	@ pMp2DecParam, %sfp
	mov	r7, #0	@ D.33297,
	mov	r5, r7	@ next_slice_para_addr, D.33297
	ldrh	r1, [r3, #152]	@ D.33298, pMp2DecParam_14(D)->PicWidthInMb
	ldrh	r2, [r3, #148]	@ D.33298, pMp2DecParam_14(D)->PicHeightInMb
	mul	r2, r2, r1	@ D.33298, D.33298, D.33298
	sub	r2, r2, #1	@ slice_end_mbn, D.33298,
	b	.L13	@
.L22:
	ldr	r6, [lr, #252]	@ D.33297, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	ip, #1	@ tmp325,
	ldr	r2, [lr, #268]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	and	r0, r6, #15	@ D.33297, D.33297,
	str	ip, [sp, #28]	@ tmp325,
	mov	r7, lr	@ pMp2DecParam, pMp2DecParam
	add	r2, r2, r0, lsl #3	@ D.33297, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.33297,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.33297,,
	strb	r1, [sp, #31]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #28]	@ D.33298, D32
	str	r2, [r8]	@ D.33298, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D)]
	bl	vfmw_dprint_nothing	@
	bic	r2, r6, #15	@ bit_stream_address_0, D.33297,
	mov	r1, r4	@ tmp331, tmp317
	ldr	r3, [sp, #8]	@ StreamBaseAddr, %sfp
	rsb	r2, r3, r2	@ D.33297, StreamBaseAddr, bit_stream_address_0
	bfi	r1, r2, #0, #24	@ tmp331, D.33297,,
	str	r1, [r8, #4]	@ tmp331, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 4B]
	str	r1, [sp, #28]	@ tmp331,
	bl	vfmw_dprint_nothing	@
	ldr	r6, [r7, #256]	@ D.33297, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	ldr	r2, [r7, #272]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	and	r0, r6, #15	@ D.33297, D.33297,
	add	r2, r2, r0, lsl #3	@ D.33297, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.33297,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.33297,,
	str	r4, [sp, #28]	@ tmp317,
	strb	r1, [sp, #31]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #28]	@ D.33298, D32
	str	r2, [r8, #8]	@ D.33298, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 8B]
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r7, #256]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r3, r7	@ pMp2DecParam, pMp2DecParam
	cmp	r2, r4	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	bicne	r2, r6, #15	@ bit_stream_address_1, D.33297,
	ldrne	r3, [sp, #8]	@ StreamBaseAddr, %sfp
	streq	r2, [sp, #28]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	rsbne	r2, r3, r2	@ D.33297, StreamBaseAddr, bit_stream_address_1
	bfine	r4, r2, #0, #24	@ tmp343, D.33297,,
	strne	r4, [sp, #28]	@ tmp343,
	ldr	r2, [sp, #28]	@ D.33298, D32
	mov	r4, #0	@ tmp345,
	str	r2, [r8, #12]	@ D.33298, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 12B]
	bl	vfmw_dprint_nothing	@
	ldr	r6, [sp, #20]	@ pMp2DecParam, %sfp
	str	r4, [sp, #28]	@ tmp345, D32
	ldr	r2, [r6, #292]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code
	ldr	r1, [r6, #288]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice
	and	r2, r2, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code,
	bfi	r2, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice,,
	strb	r2, [sp, #28]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r2, [sp, #28]	@ D.33298, D32
	str	r2, [r8, #16]	@ D.33298, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 16B]
	bl	vfmw_dprint_nothing	@
	mov	r2, r4	@ tmp353, tmp345
	bfi	r2, r4, #0, #20	@ tmp353, tmp345,,
	str	r2, [r8, #20]	@ tmp353, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 20B]
	str	r2, [sp, #28]	@ tmp353,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	sub	r2, r2, #1	@ D.33297, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	bfi	r4, r2, #0, #20	@ tmp357, D.33297,,
	str	r4, [r8, #24]	@ tmp357, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 24B]
	str	r4, [sp, #28]	@ tmp357,
	bl	vfmw_dprint_nothing	@
	add	r2, r5, #32	@ D.33297, SlcDnMsgPhyAddr,
	mov	r1, #1	@ AddSlice0Flag,
	str	r2, [r8, #28]	@ D.33297, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 28B]
	b	.L2	@
	.fnend
	.size	MP2HAL_V200R004_WriteSliceMsg, .-MP2HAL_V200R004_WriteSliceMsg
	.align	2
	.global	MP2Hal_V200R004_OnlineDnr
	.type	MP2Hal_V200R004_OnlineDnr, %function
MP2Hal_V200R004_OnlineDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r3, #3	@ tmp144,
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.33314, pMp2DecParam_8(D)->PictureStructure
	.pad #92
	sub	sp, sp, #92	@,,
	ldrh	ip, [r0, #152]	@ D.33316, pMp2DecParam_8(D)->PicWidthInMb
	mov	r1, #0	@ tmp138,
	cmp	r2, r3	@ D.33314,
	str	r3, [sp, #20]	@ tmp144, DnrCfg.video_standard
	strb	r1, [sp, #4]	@ tmp138, DnrCfg.dc_en
	ldreqh	r3, [r0, #150]	@ D.33316, pMp2DecParam_8(D)->FrameHeightInMb
	strb	r2, [sp, #7]	@ D.33314, DnrCfg.pic_structure
	str	ip, [sp, #28]	@ D.33316, DnrCfg.pic_width_in_mb
	strb	r1, [sp, #5]	@ tmp138, DnrCfg.db_en
	strb	r1, [sp, #6]	@ tmp138, DnrCfg.dr_en
	streq	r3, [sp, #32]	@ D.33316, DnrCfg.pic_height_in_mb
	beq	.L26	@,
	sub	r2, r2, #1	@ tmp147, D.33314,
	cmp	r2, #1	@ tmp147,
	ldrh	r2, [r0, #150]	@ D.33316, pMp2DecParam_8(D)->FrameHeightInMb
	add	r2, r2, #1	@ tmp152, D.33316,
	bichi	r2, r2, #1	@ D.33316, tmp158,
	movls	r2, r2, asr #1	@ D.33316, tmp152,
	sub	r3, r2, #1	@ D.33316, D.33316,
	str	r3, [sp, #32]	@ D.33316, DnrCfg.pic_height_in_mb
.L26:
	ldr	r2, .L31	@ tmp178,
	add	r1, r0, #45056	@ tmp167, pMp2DecParam,
	mul	r3, r3, ip	@ D.33316, D.33316, D.33316
	ldr	r7, [r1, #256]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, pMp2DecParam_8(D)->DnrMbInfoStAddr
	ldr	r4, [r2, #8]	@ D.33318, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	mov	r6, #0	@ tmp171,
	ldr	lr, [r0, #228]	@ pMp2DecParam_8(D)->VahbStride, pMp2DecParam_8(D)->VahbStride
	mov	r2, #8	@ tmp175,
	ldr	r1, [r0, #224]	@ pMp2DecParam_8(D)->DispFramePhyAddr, pMp2DecParam_8(D)->DispFramePhyAddr
	cmp	r4, r6	@ D.33318,
	ldr	ip, [r0, #200]	@ pMp2DecParam_8(D)->CurPicPhyAddr, pMp2DecParam_8(D)->CurPicPhyAddr
	mov	r5, #1	@ tmp173,
	str	r3, [sp, #24]	@ D.33316, DnrCfg.mbtodec
	mov	r3, lr, lsr #6	@ D.33317, pMp2DecParam_8(D)->VahbStride,
	bic	r0, ip, #15	@ D.33316, pMp2DecParam_8(D)->CurPicPhyAddr,
	str	r3, [sp, #64]	@ D.33317, DnrCfg.ddr_stride
	str	r7, [sp, #76]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	bic	r3, r1, #15	@ D.33316, pMp2DecParam_8(D)->DispFramePhyAddr,
	str	r0, [sp, #36]	@ D.33316, DnrCfg.dnr_ystaddr_1d
	str	r3, [sp, #40]	@ D.33316, DnrCfg.dnr_ystaddr_2d
	strb	r6, [sp, #14]	@ tmp171, DnrCfg.use_pic_qp_en
	strb	r5, [sp, #8]	@ tmp173, DnrCfg.chroma_format_idc
	str	r2, [sp, #52]	@ tmp175, DnrCfg.QP_Y
	str	r2, [sp, #60]	@ tmp175, DnrCfg.QP_V
	str	r2, [sp, #56]	@ tmp175, DnrCfg.QP_U
	beq	.L28	@,
	add	r0, sp, #4	@,,
	blx	r4	@ D.33318
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L28:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L32:
	.align	2
.L31:
	.word	g_dnr_hal_fun_ptr
	.fnend
	.size	MP2Hal_V200R004_OnlineDnr, .-MP2Hal_V200R004_OnlineDnr
	.align	2
	.global	MP2HAL_V200R004_MakeReg
	.type	MP2HAL_V200R004_MakeReg, %function
MP2HAL_V200R004_MakeReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, #3	@ tmp203,
	ldrh	r6, [r2, #152]	@ D.33321, pMp2DecParam_6(D)->PicWidthInMb
	mov	lr, #1	@ tmp216,
	ldrh	r3, [r2, #148]	@ D.33321, pMp2DecParam_6(D)->PicHeightInMb
	mov	ip, #0	@ tmp229,
	ldr	r4, [r0, #8]	@ D.33322, pRegInf_4(D)->basic_cfg0
	mul	r3, r3, r6	@ D.33321, D.33321, D.33321
	ldr	r6, [r4]	@ tmp194,* D.33322
	sub	r3, r3, #1	@ D.33321, D.33321,
	bfi	r6, r3, #0, #20	@ tmp194, D.33321,,
	str	r6, [r4]	@ tmp194,* D.33322
	ldr	r4, [r0, #8]	@ D.33322, pRegInf_4(D)->basic_cfg0
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _16->load_qmatrix_flag, _16->load_qmatrix_flag
	orr	r3, r3, #64	@ tmp197, _16->load_qmatrix_flag,
	strb	r3, [r4, #3]	@ tmp197, _16->load_qmatrix_flag
	ldr	r3, [r0, #8]	@ D.33322, pRegInf_4(D)->basic_cfg0
	ldrb	r4, [r3, #3]	@ zero_extendqisi2	@, _18->repair_en
	bfc	r4, #7, #1	@ _18->repair_en,,
	strb	r4, [r3, #3]	@ _18->repair_en, _18->repair_en
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3]	@ zero_extendqisi2	@, _20->video_standard
	bfi	r4, r5, #0, #4	@ _20->video_standard, tmp203,,
	strb	r4, [r3]	@ _20->video_standard, _20->video_standard
	ldr	r4, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldr	r3, [r2, #228]	@ pMp2DecParam_6(D)->VahbStride, pMp2DecParam_6(D)->VahbStride
	ldrh	r5, [r4]	@, _22->ddr_stride
	mov	r3, r3, lsr #6	@ D.33324, pMp2DecParam_6(D)->VahbStride,
	bfi	r5, r3, #4, #10	@ _22->ddr_stride, D.33324,,
	strh	r5, [r4]	@ movhi	@ _22->ddr_stride, _22->ddr_stride
	ldr	r4, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ _28->fst_slc_grp, _28->fst_slc_grp
	orr	r3, r3, #64	@ tmp210, _28->fst_slc_grp,
	strb	r3, [r4, #1]	@ tmp210, _28->fst_slc_grp
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@, _30->mv_output_en
	bfc	r4, #7, #1	@ _30->mv_output_en,,
	strb	r4, [r3, #1]	@ _30->mv_output_en, _30->mv_output_en
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrh	r4, [r3, #2]	@, _32->max_slcgrp_num
	bfi	r4, lr, #0, #12	@ _32->max_slcgrp_num, tmp216,,
	strh	r4, [r3, #2]	@ movhi	@ _32->max_slcgrp_num, _32->max_slcgrp_num
	ldr	lr, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [lr, #3]	@ zero_extendqisi2	@ _34->dblk_1d_en, _34->dblk_1d_en
	orr	r3, r3, #32	@ tmp219, _34->dblk_1d_en,
	strb	r3, [lr, #3]	@ tmp219, _34->dblk_1d_en
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _36->ppfd_en
	bfc	lr, #7, #1	@ _36->ppfd_en,,
	strb	lr, [r3, #3]	@ _36->ppfd_en, _36->ppfd_en
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _38->line_num_output_en
	bfc	lr, #4, #1	@ _38->line_num_output_en,,
	strb	lr, [r3, #3]	@ _38->line_num_output_en, _38->line_num_output_en
	ldr	r3, [r0, #12]	@ D.33326, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _40->compress_en
	bfc	lr, #6, #1	@ _40->compress_en,,
	strb	lr, [r3, #3]	@ _40->compress_en, _40->compress_en
	ldr	r3, [r0, #64]	@ D.33328, pRegInf_4(D)->FfAptEn
	ldrb	lr, [r3]	@ zero_extendqisi2	@, _42->ff_apt_en
	bfc	lr, #0, #1	@ _42->ff_apt_en,,
	strb	lr, [r3]	@ _42->ff_apt_en, _42->ff_apt_en
	ldr	r3, [r0, #60]	@ D.33329, pRegInf_4(D)->RefPicType
	str	ip, [r3]	@ tmp229, MEM[(HI_U32 *)_44]
	ldr	r3, [r0, #60]	@ D.33329, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #208]	@ pMp2DecParam_6(D)->FwdRefIsFldSave, pMp2DecParam_6(D)->FwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _46->ref_pic_type_0
	bfi	ip, lr, #0, #2	@ _46->ref_pic_type_0, pMp2DecParam_6(D)->FwdRefIsFldSave,,
	strb	ip, [r3]	@ _46->ref_pic_type_0, _46->ref_pic_type_0
	ldr	r3, [r0, #60]	@ D.33329, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #204]	@ pMp2DecParam_6(D)->BwdRefIsFldSave, pMp2DecParam_6(D)->BwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _51->ref_pic_type_1
	bfi	ip, lr, #2, #2	@ _51->ref_pic_type_1, pMp2DecParam_6(D)->BwdRefIsFldSave,,
	strb	ip, [r3]	@ _51->ref_pic_type_1, _51->ref_pic_type_1
	ldr	ip, [r0, #16]	@ D.33332, pRegInf_4(D)->avm_addr
	ldr	r3, [r1, #44]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33324, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.33324, _56->av_msg_addr
	ldr	ip, [r0, #20]	@ D.33333, pRegInf_4(D)->vam_addr
	ldr	r3, [r1, #28]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.33324, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.33324, _62->va_msg_addr
	ldr	ip, [r0, #28]	@ D.33334, pRegInf_4(D)->ystaddr_1d
	ldr	r3, [r2, #200]	@ pMp2DecParam_6(D)->CurPicPhyAddr, pMp2DecParam_6(D)->CurPicPhyAddr
	bic	r3, r3, #255	@ D.33324, pMp2DecParam_6(D)->CurPicPhyAddr,
	str	r3, [ip]	@ D.33324, _67->ystaddr_1d
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ pMp2DecParam_6(D)->PictureStructure, pMp2DecParam_6(D)->PictureStructure
	ldrh	r4, [r2, #148]	@ D.33321, pMp2DecParam_6(D)->PicHeightInMb
	sub	ip, ip, #1	@ tmp245, pMp2DecParam_6(D)->PictureStructure,
	ldr	lr, [r0, #32]	@ D.33335, pRegInf_4(D)->ystride_1d
	cmp	ip, #1	@ tmp245,
	ldrh	ip, [r2, #152]	@ pMp2DecParam_6(D)->PicWidthInMb, pMp2DecParam_6(D)->PicWidthInMb
	movls	r3, #2	@ D.33321,
	movhi	r3, #1	@ D.33321,
	mul	r3, r3, r4	@ D.33321, D.33321, D.33321
	str	ip, [lr]	@ pMp2DecParam_6(D)->PicWidthInMb, _77->ystride_1d
	ldr	lr, [r0, #36]	@ D.33336, pRegInf_4(D)->uvoffset_1d
	ldrh	ip, [r2, #152]	@ D.33324, pMp2DecParam_6(D)->PicWidthInMb
	mul	r3, ip, r3	@ D.33324, D.33324, D.33321
	mov	r3, r3, asl #8	@ D.33324, D.33324,
	str	r3, [lr]	@ D.33324, _81->uvoffset_1d
	ldr	r1, [r1, #1120]	@ pHwMem_57(D)->DnrMbInfoAddr, pHwMem_57(D)->DnrMbInfoAddr
	ldr	r3, [r0, #56]	@ D.33337, pRegInf_4(D)->DnrMbInfoStAddr
	str	r1, [r3]	@ pHwMem_57(D)->DnrMbInfoAddr, _87->dnr_mbinfo_staddr
	ldr	r3, [r2, #176]	@ pMp2DecParam_6(D)->StreamLength, pMp2DecParam_6(D)->StreamLength
	cmp	r3, #0	@ pMp2DecParam_6(D)->StreamLength,
	ldreq	ip, [r2, #164]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldrne	ip, [r2, #168]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldreq	r1, [r0, #24]	@ D.33338, pRegInf_4(D)->stream_base_addr
	ldreq	r3, [r2, #156]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	ldrne	r1, [r0, #24]	@ D.33338, pRegInf_4(D)->stream_base_addr
	mov	r0, #0	@,
	ldrne	r3, [r2, #160]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	add	r3, r3, ip, lsr #3	@ BytePos, pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamBitOffset,
	bic	r3, r3, #15	@ D.33324, BytePos,
	str	r3, [r1]	@ D.33324,* D.33338
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2HAL_V200R004_MakeReg, .-MP2HAL_V200R004_MakeReg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #1	@ VdhId,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r2	@ VdhId, VdhId
	mov	r2, #0	@ tmp283,
	str	r2, [sp, #12]	@ tmp283, D32
	bhi	.L44	@,
	ldr	r2, [r1]	@ pHwMem_16(D)->pVdmRegVirAddr, pHwMem_16(D)->pVdmRegVirAddr
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	cmp	r2, #0	@ pHwMem_16(D)->pVdmRegVirAddr,
	beq	.L68	@,
.L43:
	movw	r0, #1140	@ tmp421,
	ldr	r7, .L69	@ tmp503,
	mul	r0, r0, r6	@ tmp420, tmp421, VdhId
	mvn	r4, #0	@ tmp424,
	mov	lr, #0	@ tmp453,
	mov	r8, #3	@ tmp456,
	add	ip, r5, #45056	@ tmp479, pMp2DecParam,
	ldr	r2, [r7, r0]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r4, [r2, #32]	@ tmp424, *_22
	ldrh	fp, [r5, #152]	@ D.33356, pMp2DecParam_25(D)->PicWidthInMb
	ldrh	r10, [r5, #148]	@ D.33356, pMp2DecParam_25(D)->PicHeightInMb
	ldr	r2, [sp, #12]	@ tmp429,
	ldr	r9, [r7, r0]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	mul	r10, r10, fp	@ D.33356, D.33356, D.33356
	add	r10, r10, r4	@ D.33356, D.33356,
	bfi	r2, r10, #0, #20	@ tmp429, D.33356,,
	str	r2, [sp, #12]	@ tmp429,
	ubfx	r10, r2, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp429,,
	mov	r2, r2, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp429,
	orr	r10, r10, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	and	r2, r2, #62	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r10, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en,,
	orr	r2, r2, #65	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	strb	r10, [sp, #14]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	bfc	r2, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en,,
	strb	r2, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	r2, [sp, #12]	@ D.33356, D32
	str	lr, [sp, #12]	@ tmp453, D32
	ldrh	r10, [sp, #14]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	str	r2, [r9, #8]	@ D.33356, *_46
	bfi	r10, r8, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp456,,
	ldr	r9, [r5, #228]	@ pMp2DecParam_25(D)->VahbStride, pMp2DecParam_25(D)->VahbStride
	ubfx	r2, r10, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strb	r8, [sp, #12]	@ tmp456, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	orr	r2, r2, #32	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	ldrh	r8, [sp, #12]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	and	r2, r2, #127	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en,
	mov	r9, r9, lsr #6	@ D.33360, pMp2DecParam_25(D)->VahbStride,
	bfi	r2, lr, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, tmp453,,
	bfi	r8, r9, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.33360,,
	strh	r10, [sp, #14]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	uxtb	r9, r2	@ tmp481, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	strb	r2, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	ubfx	r2, r8, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	ldr	r10, [ip, #260]	@ pMp2DecParam_25(D)->Compress_en, pMp2DecParam_25(D)->Compress_en
	orr	r2, r2, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strh	r8, [sp, #12]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r2, lr, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, tmp453,,
	bfi	r9, r10, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pMp2DecParam_25(D)->Compress_en,,
	strb	r2, [sp, #13]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	strb	r9, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en
	ldr	r2, [r7, r0]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r8, [sp, #12]	@ D.33356, D32
	str	lr, [sp, #12]	@ tmp453, D32
	str	r8, [r2, #12]	@ D.33356, *_69
	ldr	r8, [r7, r0]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r2, [r1, #44]	@ pHwMem_16(D)->MsgSlotAddr, pHwMem_16(D)->MsgSlotAddr
	bic	r2, r2, #15	@ D.33356, pHwMem_16(D)->MsgSlotAddr,
	str	r2, [r8, #16]	@ D.33356, *_80
	ldr	r0, [r7, r0]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r2, [r1, #28]	@ pHwMem_16(D)->MsgSlotAddr, pHwMem_16(D)->MsgSlotAddr
	bic	r2, r2, #15	@ D.33356, pHwMem_16(D)->MsgSlotAddr,
	str	r2, [r0, #20]	@ D.33356, *_90
	ldr	r2, [ip, #252]	@ D.33360, pMp2DecParam_25(D)->SlcNum
	cmp	r2, lr	@ D.33360,
	beq	.L54	@,
	mov	r1, r5	@ ivtmp.58, pMp2DecParam
.L55:
	ldr	ip, [r1, #252]	@ D.33360, MEM[base: _266, offset: 252B]
	cmp	ip, #0	@ D.33360,
	beq	.L47	@,
	ldr	r0, [r1, #260]	@ MEM[base: _266, offset: 260B], MEM[base: _266, offset: 260B]
	bic	ip, ip, #15	@ tmp_base_addr, D.33360,
	cmp	r0, #0	@ MEM[base: _266, offset: 260B],
	ble	.L47	@,
	cmp	r4, ip	@ stream_base_addr, tmp_base_addr
	movcs	r4, ip	@ stream_base_addr, tmp_base_addr
.L47:
	ldr	ip, [r1, #256]	@ D.33360, MEM[base: _266, offset: 256B]
	cmp	ip, #0	@ D.33360,
	beq	.L45	@,
	ldr	r0, [r1, #264]	@ MEM[base: _266, offset: 264B], MEM[base: _266, offset: 264B]
	bic	ip, ip, #15	@ tmp_base_addr, D.33360,
	cmp	r0, #0	@ MEM[base: _266, offset: 264B],
	ble	.L45	@,
	cmp	r4, ip	@ stream_base_addr, tmp_base_addr
	movcs	r4, ip	@ stream_base_addr, tmp_base_addr
.L45:
	add	lr, lr, #1	@ i, i,
	add	r1, r1, #44	@ ivtmp.58, ivtmp.58,
	cmp	lr, r2	@ i, D.33360
	bne	.L55	@,
	cmn	r4, #1	@ stream_base_addr,
	beq	.L54	@,
	movw	r8, #1140	@ tmp294,
	str	r4, [r3]	@ stream_base_addr, *StreamBaseAddr_102(D)
	mul	r8, r8, r6	@ tmp293, tmp294, VdhId
	ldr	r2, .L69+4	@ tmp298,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r4, [r3, #24]	@ stream_base_addr, *_110
	ldrh	r3, [r5, #152]	@ pMp2DecParam_25(D)->PicWidthInMb, pMp2DecParam_25(D)->PicWidthInMb
	ldr	r4, [r2]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	r3, #120	@ pMp2DecParam_25(D)->PicWidthInMb,
	add	r4, r4, #4	@ D.33356, s_RegPhyBaseAddr,
	movhi	r9, #0	@ D.33356,
	movls	r9, #65536	@ D.33356,
	bl	MEM_ReadPhyWord	@
	orr	r1, r0, r9	@,, D.33356
	mov	r0, r4	@, D.33356
	bl	MEM_WritePhyWord	@
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp307,
	movw	r0, #43691	@ tmp372,
	movt	r3, 48	@ tmp307,
	movt	r0, 43690	@ tmp372,
	str	r3, [r2, #60]	@ tmp307, *_124
	mov	r4, #0	@ tmp392,
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp307, *_129
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp307, *_134
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp307, *_139
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp307, *_144
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp307, *_149
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp307, *_154
	ldr	r2, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r3, [r5, #200]	@ pMp2DecParam_25(D)->CurPicPhyAddr, pMp2DecParam_25(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D.33356, pMp2DecParam_25(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D.33356, *_164
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ pMp2DecParam_25(D)->PictureStructure, pMp2DecParam_25(D)->PictureStructure
	ldrh	ip, [r5, #148]	@ D.33356, pMp2DecParam_25(D)->PicHeightInMb
	sub	r2, r2, #1	@ tmp353, pMp2DecParam_25(D)->PictureStructure,
	ldr	r1, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	cmp	r2, #1	@ tmp353,
	ldr	r2, [r5, #228]	@ D.33356, pMp2DecParam_25(D)->VahbStride
	movls	r3, #2	@ D.33356,
	movhi	r3, #1	@ D.33356,
	mul	r3, r3, ip	@ D.33356, D.33356, D.33356
	str	r2, [r1, #100]	@ D.33356, *_178
	ldr	r2, [r5, #228]	@ pMp2DecParam_25(D)->VahbStride, pMp2DecParam_25(D)->VahbStride
	ldr	r1, [r7, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	add	r3, r3, #1	@ D.33360, D.33356,
	mov	r2, r2, asl #1	@ D.33360, pMp2DecParam_25(D)->VahbStride,
	mov	r3, r3, lsr #1	@ D.33360, D.33360,
	mul	r3, r3, r2	@ D.33356, D.33360, D.33360
	str	r3, [r1, #104]	@ D.33356, *_191
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ pMp2DecParam_25(D)->PictureStructure, pMp2DecParam_25(D)->PictureStructure
	umull	r0, r1, r3, r0	@ tmp371, pMp2DecParam_25(D)->PictureStructure, tmp372
	mov	r2, r1, lsr #1	@ tmp369,,
	add	r2, r2, r2, lsl #1	@ tmp375, tmp369, tmp369,
	rsb	r3, r2, r3	@ tmp376, tmp375, pMp2DecParam_25(D)->PictureStructure
	uxtb	r3, r3	@ tmp377, tmp376
	cmp	r3, #2	@ tmp377,
	ldreqh	r2, [r5, #148]	@ D.33356, pMp2DecParam_25(D)->PicHeightInMb
	ldreqh	r1, [r5, #152]	@ D.33356, pMp2DecParam_25(D)->PicWidthInMb
	ldreq	r3, [r5, #236]	@ pMp2DecParam_25(D)->DnrMbinfoStaddr, pMp2DecParam_25(D)->DnrMbinfoStaddr
	ldrne	r3, [r5, #236]	@ pMp2DecParam_25(D)->DnrMbinfoStaddr, pMp2DecParam_25(D)->DnrMbinfoStaddr
	muleq	r2, r2, r1	@ D.33356, D.33356, D.33356
	addeq	r3, r3, #127	@ D.33360, pMp2DecParam_25(D)->DnrMbinfoStaddr,
	addeq	r3, r3, r2, lsl #3	@ D.33360, D.33360, D.33356,
	movw	r2, #1140	@ tmp389,
	mul	r6, r2, r6	@ tmp388, tmp389, VdhId
	biceq	r3, r3, #127	@ D.33360, D.33360,
	str	r3, [sp, #12]	@ pMp2DecParam_25(D)->DnrMbinfoStaddr, MEM[(struct DNR_V200_MBINFO_STADDR *)&D32].dnr_mbinfo_staddr
	mov	r2, #0	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en,
	ldr	r1, [sp, #12]	@ D.33356, D32
	bfi	r2, r4, #0, #1	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, tmp392,,
	str	r4, [sp, #12]	@ tmp392, D32
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r3, #144]	@ D.33356, *_213
	ldr	r3, [r5, #208]	@ pMp2DecParam_25(D)->FwdRefIsFldSave, pMp2DecParam_25(D)->FwdRefIsFldSave
	ldr	r0, [r5, #204]	@ pMp2DecParam_25(D)->BwdRefIsFldSave, pMp2DecParam_25(D)->BwdRefIsFldSave
	and	r3, r3, #3	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_25(D)->FwdRefIsFldSave,
	ldr	r1, [r7, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	bfi	r3, r0, #2, #2	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_25(D)->BwdRefIsFldSave,,
	strb	r3, [sp, #12]	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1
	ldr	r3, [sp, #12]	@ D.33356, D32
	str	r4, [sp, #12]	@ tmp392, D32
	strb	r2, [sp, #12]	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en
	str	r3, [r1, #148]	@ D.33356, *_228
	ldr	r2, [sp, #12]	@ D.33356, D32
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r2, [r3, #152]	@ D.33356, *_236
	ldr	r3, [r7, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r4, [r3, #108]	@ tmp392, *_243
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.33355, tmp392
.L66:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L44:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33355,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L68:
	mov	r0, #0	@,
	stmia	sp, {r1, r3}	@,,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L44	@,
	ldr	r1, [sp]	@ pHwMem, %sfp
	ldr	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	str	r0, [r1]	@ p32, pHwMem_16(D)->pVdmRegVirAddr
	b	.L43	@
.L54:
	str	r3, [sp]	@ StreamBaseAddr, %sfp
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@ tmp291,
	mvn	r0, #0	@ D.33355,
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	str	r2, [r3]	@ tmp291, *StreamBaseAddr_102(D)
	b	.L66	@
.L70:
	.align	2
.L69:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	MP2HAL_V200R004_CfgReg, .-MP2HAL_V200R004_CfgReg
	.align	2
	.global	MP2HAL_V200R004_CfgDnMsg
	.type	MP2HAL_V200R004_CfgDnMsg, %function
MP2HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, pHwMem_13(D)->MsgSlotAddr
	str	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	mov	r6, r1	@ pHwMem, pHwMem
	mov	r3, #0	@ tmp586,
	str	r3, [sp, #12]	@ tmp586, D32
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L74	@,
	ldrh	r2, [r4, #152]	@ D.33392, pMp2DecParam_18(D)->PicWidthInMb
	cmp	r2, #512	@ D.33392,
	bhi	.L74	@,
	ldrh	r1, [r4, #148]	@ D.33392, pMp2DecParam_18(D)->PicHeightInMb
	cmp	r1, #512	@ D.33392,
	bhi	.L74	@,
	ldrh	r3, [sp, #14]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	sub	r1, r1, #1	@ tmp317, D.33392,
	ldr	r0, [r4, #180]	@ pMp2DecParam_18(D)->Mpeg1Flag, pMp2DecParam_18(D)->Mpeg1Flag
	sub	r2, r2, #1	@ tmp314, D.33392,
	bfi	r3, r1, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, tmp317,,
	ldrh	r1, [sp, #12]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strh	r3, [sp, #14]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	mov	r9, #0	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct,
	mov	r3, r3, lsr #8	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb,
	bfi	r1, r2, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, tmp314,,
	bfi	r3, r0, #1, #1	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, pMp2DecParam_18(D)->Mpeg1Flag,,
	strh	r1, [sp, #12]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag
	mov	r8, r9	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	ldr	r3, [sp, #12]	@ D.33391, D32
	mov	r7, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	mov	lr, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	mov	ip, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	mov	r0, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	mov	r1, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	str	r3, [r5]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16]
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->PicCodingType, pMp2DecParam_18(D)->PicCodingType
	ldrb	r10, [r4, #2]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Mp1FwdmvFullPel, pMp2DecParam_18(D)->Mp1FwdmvFullPel
	and	r3, r3, #7	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_18(D)->PicCodingType,
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->PictureStructure, pMp2DecParam_18(D)->PictureStructure
	bfi	r3, r10, #3, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_18(D)->Mp1FwdmvFullPel,,
	ldrb	r10, [r4, #1]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Mp1BwdmvFullPel, pMp2DecParam_18(D)->Mp1BwdmvFullPel
	ldrb	fp, [r4, #4]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->SecondFieldFlag, pMp2DecParam_18(D)->SecondFieldFlag
	and	r2, r2, #3	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_18(D)->PictureStructure,
	bfi	r3, r10, #4, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, pMp2DecParam_18(D)->Mp1BwdmvFullPel,,
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->FramePredFrameDct, pMp2DecParam_18(D)->FramePredFrameDct
	mov	r10, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, fp, #2, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_18(D)->SecondFieldFlag,,
	strb	r2, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag
	bfi	r9, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, pMp2DecParam_18(D)->FramePredFrameDct,,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->ConcealmentMotionVectors, pMp2DecParam_18(D)->ConcealmentMotionVectors
	strb	r9, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	mov	r2, r8	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	bfi	r8, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, pMp2DecParam_18(D)->ConcealmentMotionVectors,,
	strb	r8, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #4]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 4B]
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	ldrb	r9, [r4, #6]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->TopFieldFirst, pMp2DecParam_18(D)->TopFieldFirst
	ldrb	r8, [r4, #15]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	and	r3, r3, #15	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_18(D)->Fcode,
	bfi	r3, r9, #7, #1	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_18(D)->TopFieldFirst,,
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first
	bfi	r7, r8, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, pMp2DecParam_18(D)->Fcode,,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	ldrb	r8, [r4, #13]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	bfi	lr, r3, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, pMp2DecParam_18(D)->Fcode,,
	strb	r7, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	strb	lr, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	bfi	ip, r8, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, pMp2DecParam_18(D)->Fcode,,
	strb	ip, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #8]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 8B]
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->IntraDcPrecision, pMp2DecParam_18(D)->IntraDcPrecision
	bfi	r0, r3, #0, #2	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, pMp2DecParam_18(D)->IntraDcPrecision,,
	strb	r0, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	ldrb	ip, [r4, #10]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->QuantType, pMp2DecParam_18(D)->QuantType
	ldrb	r0, [r4, #9]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->IntraVlcFormat, pMp2DecParam_18(D)->IntraVlcFormat
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->AlternateScan, pMp2DecParam_18(D)->AlternateScan
	bfi	r1, ip, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, pMp2DecParam_18(D)->QuantType,,
	bfi	r10, r0, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, pMp2DecParam_18(D)->IntraVlcFormat,,
	strb	r1, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, pMp2DecParam_18(D)->AlternateScan,,
	strb	r10, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	strb	r2, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #12]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 12B]
	ldr	r3, [r4, #192]	@ pMp2DecParam_18(D)->BwdRefPhyAddr, pMp2DecParam_18(D)->BwdRefPhyAddr
	bic	r3, r3, #15	@ D.33391, pMp2DecParam_18(D)->BwdRefPhyAddr,
	str	r3, [r5, #16]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 16B]
	ldr	r3, [r4, #196]	@ pMp2DecParam_18(D)->FwdRefPhyAddr, pMp2DecParam_18(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.33391, pMp2DecParam_18(D)->FwdRefPhyAddr,
	str	r3, [r5, #20]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 20B]
	ldr	r3, [r4, #224]	@ pMp2DecParam_18(D)->DispFramePhyAddr, pMp2DecParam_18(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.33391, pMp2DecParam_18(D)->DispFramePhyAddr,
	str	r3, [r5, #24]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 24B]
	ldr	r3, [r4, #240]	@ pMp2DecParam_18(D)->PmvColmbPhyAddr, pMp2DecParam_18(D)->PmvColmbPhyAddr
	bic	r3, r3, #15	@ D.33394, pMp2DecParam_18(D)->PmvColmbPhyAddr,
	str	r3, [r5, #28]	@ D.33394, MEM[(volatile HI_S32 *)pMsgBase_16 + 28B]
	ldr	r0, [r4, #156]	@, pMp2DecParam_18(D)->StreamPhyAddr
	str	r3, [sp, #12]	@ D.33394, MEM[(struct MP2DNMSG_V200R004_D7 *)&D32].current_pmv_addr
	bl	MEM_Phy2Vir	@
	mov	r9, r0	@ D.33402,
	ldr	r0, [r4, #160]	@, pMp2DecParam_18(D)->StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	cmp	r1, #0	@ pMp2DecParam_18(D)->StreamLength,
	mov	r8, r0	@ D.33402,
	beq	.L98	@,
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r1, #0	@ tmp482,
	ldr	r7, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	ip, r1	@ tmp485, tmp482
	ldr	r0, [r4, #160]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r9, r1	@ D.33402,
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	add	r7, r0, r7, lsr #3	@ BytePos1, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	add	r3, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	bic	lr, r7, #15	@ stream_base_addr, BytePos1,
	bic	r0, r3, #15	@ D.33394, BytePos0,
	and	r2, r3, #15	@ tmp488, BytePos0,
	rsb	r3, lr, r0	@ D.33394, stream_base_addr, D.33394
	bfi	r1, r3, #0, #24	@ tmp482, D.33394,,
	str	r1, [r5, #32]	@ tmp482, MEM[(volatile HI_S32 *)pMsgBase_16 + 32B]
	ldr	r1, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	bfi	ip, r1, #0, #24	@ tmp485, pMp2DecParam_18(D)->StreamLength,,
	str	ip, [sp, #12]	@ tmp485,
	and	r3, r3, #7	@ tmp493, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r1, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	add	r3, r3, r2, lsl #3	@ tmp496, tmp493, tmp488,
	bfi	r1, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp496,,
	strb	r1, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #36]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L78	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L78:
	mov	r3, #0	@ tmp499,
	and	r7, r7, #15	@ tmp506, BytePos1,
	mov	r2, r3	@ tmp500, tmp499
	bfi	r2, r3, #0, #24	@ tmp500, tmp499,,
	str	r2, [r5, #40]	@ tmp500, MEM[(volatile HI_S32 *)pMsgBase_16 + 40B]
	cmp	r8, r3	@ D.33402,
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r2, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	add	r1, r1, #24	@ D.33391, pMp2DecParam_18(D)->StreamLength,
	bfi	r3, r1, #0, #24	@ tmp504, D.33391,,
	str	r3, [sp, #12]	@ tmp504,
	and	r3, r2, #7	@ tmp511, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	add	r3, r3, r7, lsl #3	@ tmp514, tmp511, tmp506,
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp514,,
	strb	r2, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #44]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	beq	.L77	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L77:
	add	r2, r5, #64	@ ivtmp.81, pMsgBase,
	add	r7, r4, #64	@ D.33390, pMp2DecParam,
	mov	r3, r4	@ ivtmp.77, pMp2DecParam
.L79:
	ldrb	r1, [r3, #17]	@ zero_extendqisi2	@ MEM[base: _281, offset: 17B], MEM[base: _281, offset: 17B]
	add	r3, r3, #2	@ ivtmp.77, ivtmp.77,
	ldrb	lr, [r3, #78]	@ zero_extendqisi2	@ MEM[base: _281, offset: 80B], MEM[base: _281, offset: 80B]
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ MEM[base: _281, offset: 81B], MEM[base: _281, offset: 81B]
	ldrb	r0, [r3, #14]	@ zero_extendqisi2	@ MEM[base: _281, offset: 16B], MEM[base: _281, offset: 16B]
	cmp	r3, r7	@ ivtmp.77, D.33390
	strb	lr, [sp, #12]	@ MEM[base: _281, offset: 80B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_even
	strb	ip, [sp, #14]	@ MEM[base: _281, offset: 81B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_odd
	strb	r0, [sp, #13]	@ MEM[base: _281, offset: 16B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_even
	strb	r1, [sp, #15]	@ MEM[base: _281, offset: 17B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #12]	@ D.33391, D32
	str	r1, [r2], #4	@ D.33391, MEM[(volatile HI_S32 *)_245]
	bne	.L79	@,
	ldr	r3, [r6, #1084]	@ pHwMem_13(D)->PmvTopAddr, pHwMem_13(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.33394, pHwMem_13(D)->PmvTopAddr,
	str	r3, [r5, #192]	@ D.33394, MEM[(volatile HI_S32 *)pMsgBase_16 + 192B]
	ldr	r6, [r6, #44]	@ pHwMem_13(D)->MsgSlotAddr, pHwMem_13(D)->MsgSlotAddr
	str	r3, [sp, #12]	@ D.33394, MEM[(struct MP2DNMSG_V200R004_D48 *)&D32].pmv_top_addr
	bic	r6, r6, #15	@ D.33394, pHwMem_13(D)->MsgSlotAddr,
	add	r6, r6, #256	@ SlcDnMsgPhyAddr, D.33394,
	mov	r0, r6	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L74	@,
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, r4	@, pMp2DecParam
	str	r6, [r5, #252]	@ SlcDnMsgPhyAddr, MEM[(volatile HI_S32 *)pMsgBase_16 + 252B]
	mov	r2, r6	@, SlcDnMsgPhyAddr
	str	r6, [sp, #12]	@ SlcDnMsgPhyAddr, MEM[(struct MP2DNMSG_V200R004_D63 *)&D32].first_slc_dnmsg_addr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	ldr	r3, .L100	@ tmp529,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r0, r3, #16	@ D.33394, g_PrintEnable,
	bne	.L99	@,
.L96:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L98:
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, r1	@ tmp453, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r9, #0	@ D.33402,
	str	r1, [r5, #32]	@ pMp2DecParam_18(D)->StreamLength, MEM[(volatile HI_S32 *)pMsgBase_16 + 32B]
	ldr	r1, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	add	r2, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	and	r2, r2, #15	@ tmp455, BytePos0,
	add	r1, r1, #24	@ D.33391, pMp2DecParam_18(D)->StreamLength,
	bfi	r0, r1, #0, #24	@ tmp453, D.33391,,
	and	r3, r3, #7	@ tmp460, pMp2DecParam_18(D)->StreamBitOffset,
	str	r0, [sp, #12]	@ tmp453,
	add	r3, r3, r2, lsl #3	@ tmp463, tmp460, tmp455,
	ldrb	r1, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	bfi	r1, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp463,,
	strb	r1, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #36]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L76	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L76:
	mov	r3, #0	@ tmp466,
	mov	r2, #0	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1,
	mov	r0, r3	@ tmp467, tmp466
	mov	r1, r3	@ tmp469, tmp466
	bfi	r0, r3, #0, #24	@ tmp467, tmp466,,
	bfi	r1, r3, #0, #24	@ tmp469, tmp466,,
	str	r0, [r5, #40]	@ tmp467, MEM[(volatile HI_S32 *)pMsgBase_16 + 40B]
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp466,,
	str	r1, [sp, #12]	@ tmp469,
	strb	r2, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #12]	@ D.33391, D32
	str	r3, [r5, #44]	@ D.33391, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	b	.L77	@
.L99:
	ldr	r2, .L100+4	@ tmp532,
	mov	r4, #16	@ D.33400,
	ldr	r3, [r2]	@ num, num
	add	r3, r3, #1	@ D.33394, num,
	str	r3, [r2]	@ D.33394, num
	bl	vfmw_dprint_nothing	@
.L80:
	bl	vfmw_dprint_nothing	@
	subs	r4, r4, #1	@ D.33400, D.33400,
	bne	.L80	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.33389, D.33400
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L74:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33389,
	b	.L96	@
.L101:
	.align	2
.L100:
	.word	g_PrintEnable
	.word	.LANCHOR0
	.fnend
	.size	MP2HAL_V200R004_CfgDnMsg, .-MP2HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP2HAL_V200R004_StartDec
	.type	MP2HAL_V200R004_StartDec, %function
MP2HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #1140	@ tmp119,
	mul	r5, r5, r1	@ tmp118, tmp119, VdhId
	ldr	r6, .L115	@ tmp120,
	cmp	r1, #1	@ VdhId,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r1	@ VdhId, VdhId
	add	r8, r5, r6	@ pHwMem, tmp118, tmp120
	bhi	.L108	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L108	@,
	ldr	r3, [r5, r6]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r7, r0	@ pMp2DecParam, pMp2DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L114	@,
.L107:
	add	r3, sp, #4	@,,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.33408,
	bne	.L108	@,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
.L105:
	mov	r0, r5	@, D.33408
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L114:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r5, r6]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	bne	.L107	@
.L108:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.33408,
	b	.L105	@
.L116:
	.align	2
.L115:
	.word	g_HwMem
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.32722, %object
	.size	num.32722, 4
num.32722:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
