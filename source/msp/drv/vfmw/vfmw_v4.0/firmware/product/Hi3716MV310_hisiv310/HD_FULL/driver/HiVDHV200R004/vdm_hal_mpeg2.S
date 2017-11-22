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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg2.o
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
	.global	MP2HAL_V200R004_WriteSliceMsg
	.type	MP2HAL_V200R004_WriteSliceMsg, %function
MP2HAL_V200R004_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	lr, r0	@ pMp2DecParam, pMp2DecParam
	add	ip, r0, #45056	@ tmp319, pMp2DecParam,
	str	r0, [sp, #12]	@ pMp2DecParam, %sfp
	mov	r7, r1	@ SlcDnMsgVirAddr, SlcDnMsgVirAddr
	ldr	r0, [r0, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	mov	r5, r2	@ SlcDnMsgPhyAddr, SlcDnMsgPhyAddr
	str	r3, [sp]	@ StreamBaseAddr, %sfp
	add	r8, lr, #252	@ SliceInfo, pMp2DecParam,
	cmp	r0, #0	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	ldr	r10, [ip, #252]	@ SliceNum, pMp2DecParam_14(D)->SlcNum
	mov	r4, #0	@ tmp317,
	moveq	r1, r0	@ AddSlice0Flag, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	bne	.L22	@,
.L2:
	cmp	r10, #0	@ SliceNum,
	ble	.L18	@,
	add	r3, r5, r1, lsl #5	@ D.29566, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	r4, #0	@ i,
	str	r3, [sp, #8]	@ D.29566, %sfp
	mov	fp, r10	@ SliceNum, SliceNum
	mov	r3, r1, asl #7	@ D.29575, AddSlice0Flag,
	str	r3, [sp, #4]	@ D.29575, %sfp
	b	.L14	@
.L6:
	add	r4, r4, #1	@ i, i,
	cmp	fp, r4	@ SliceNum, i
	ble	.L18	@,
.L14:
	mov	r2, #44	@ tmp367,
	cmp	r4, #0	@ i,
	mul	r2, r2, r4	@ D.29566, tmp367, i
	movgt	r1, #1	@ tmp369,
	movle	r1, #0	@ tmp369,
	add	r5, r8, r2	@ tmp446, SliceInfo, D.29566
	ldr	r10, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	ldr	r0, [r5, #-12]	@ _113->slice_start_mbn, _113->slice_start_mbn
	cmp	r10, r0	@ _110->slice_start_mbn, _113->slice_start_mbn
	movhi	r10, #0	@, tmp377
	andls	r10, r1, #1	@,, tmp377, tmp369
	cmp	r10, #0	@ tmp377,
	bne	.L6	@,
	ldr	r9, [r8, r2]	@ D.29566, _110->BsPhyAddr
	mov	r0, r10	@ tmp383, tmp377
	ldr	r2, [r5, #16]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	and	lr, r9, #15	@ D.29566, D.29566,
	ldr	r6, [r5, #8]	@ _110->BsLenInBit, _110->BsLenInBit
	ldr	r3, [sp, #4]	@ D.29575, %sfp
	add	r2, r2, lr, lsl #3	@ D.29566, _110->BsBitOffset, D.29566,
	bfi	r0, r6, #0, #24	@ tmp383, _110->BsLenInBit,,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29566,,
	str	r0, [sp, #20]	@ tmp383,
	strb	r1, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	add	r6, r3, r4, lsl #5	@ D.29575, D.29575, i,
	ldr	r2, [sp, #20]	@ D.29566, D32
	mov	r0, #4	@,
	ldr	r1, .L24	@,
	add	r4, r4, #1	@ j, i,
	str	r2, [r7, r6]	@ D.29566, MEM[(volatile HI_S32 *)_136]
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	bic	ip, r9, #15	@ bit_stream_address_0, D.29566,
	mov	lr, r10	@ tmp392, tmp377
	rsb	ip, r3, ip	@ D.29566, StreamBaseAddr, bit_stream_address_0
	add	r2, r6, #4	@ D.29575, D.29575,
	bfi	lr, ip, #0, #24	@ tmp392, D.29566,,
	ldr	r1, .L24+4	@,
	str	lr, [r7, r2]	@ tmp392, MEM[(volatile HI_S32 *)_147]
	mov	r0, #4	@,
	mov	r2, lr	@, tmp392
	str	lr, [sp, #20]	@ tmp392,
	bl	dprint_vfmw	@
	ldr	r9, [r5, #4]	@ D.29566, _110->BsPhyAddr
	ldr	r2, [r5, #20]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	r0, r10	@ tmp400, tmp377
	and	lr, r9, #15	@ D.29566, D.29566,
	ldr	r3, [r5, #12]	@ tmp495, _110->BsLenInBit
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	add	r2, r2, lr, lsl #3	@ D.29566, _110->BsBitOffset, D.29566,
	bfi	r0, r3, #0, #24	@ tmp400, tmp495,,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29566,,
	str	r0, [sp, #20]	@ tmp400,
	strb	r1, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	add	lr, r6, #8	@ D.29575, D.29575,
	ldr	r2, [sp, #20]	@ D.29566, D32
	mov	r0, #4	@,
	ldr	r1, .L24+8	@,
	str	r2, [r7, lr]	@ D.29566, MEM[(volatile HI_S32 *)_169]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@ _110->BsPhyAddr, _110->BsPhyAddr
	ldr	r1, .L24+12	@,
	mov	r0, #4	@,
	cmp	r2, #0	@ _110->BsPhyAddr,
	bicne	ip, r9, #15	@ bit_stream_address_1, D.29566,
	streq	r2, [sp, #20]	@ _110->BsPhyAddr,
	ldrne	r3, [sp]	@ StreamBaseAddr, %sfp
	rsbne	ip, r3, ip	@ D.29566, StreamBaseAddr, bit_stream_address_1
	bfine	r10, ip, #0, #24	@ tmp410, D.29566,,
	strne	r10, [sp, #20]	@ tmp410,
	ldr	r2, [sp, #20]	@ D.29566, D32
	add	ip, r6, #12	@ D.29575, D.29575,
	mov	r10, #0	@ tmp414,
	str	r2, [r7, ip]	@ D.29566, MEM[(volatile HI_S32 *)_182]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #40]	@ _110->quantiser_scale_code, _110->quantiser_scale_code
	ldr	r1, [r5, #36]	@ _110->intra_slice, _110->intra_slice
	add	ip, r6, #16	@ D.29575, D.29575,
	and	r2, r2, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->quantiser_scale_code,
	str	r10, [sp, #20]	@ tmp414, D32
	bfi	r2, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->intra_slice,,
	strb	r2, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r2, [sp, #20]	@ D.29566, D32
	mov	r0, #4	@,
	ldr	r1, .L24+16	@,
	str	r2, [r7, ip]	@ D.29566, MEM[(volatile HI_S32 *)_197]
	bl	dprint_vfmw	@
	ldr	r1, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	add	r2, r6, #20	@ D.29575, D.29575,
	mov	r0, #4	@,
	bfi	r10, r1, #0, #20	@ tmp425, _110->slice_start_mbn,,
	ldr	r1, .L24+20	@,
	str	r10, [r7, r2]	@ tmp425, MEM[(volatile HI_S32 *)_207]
	mov	r2, r10	@, tmp425
	str	r10, [sp, #20]	@ tmp425,
	bl	dprint_vfmw	@
	cmp	fp, r4	@ SliceNum, j
	ble	.L9	@,
	ldr	r1, [r5, #32]	@ D.29566, _110->slice_start_mbn
	ldr	r2, [r5, #76]	@ _267->slice_start_mbn, _267->slice_start_mbn
	cmp	r1, r2	@ D.29566, _267->slice_start_mbn
	bcs	.L10	@,
	b	.L9	@
.L11:
	ldr	r3, [r5, #76]	@ MEM[base: _283, offset: 76B], MEM[base: _283, offset: 76B]
	cmp	r3, r1	@ MEM[base: _283, offset: 76B], D.29566
	bhi	.L9	@,
.L10:
	add	r4, r4, #1	@ j, j,
	add	r5, r5, #44	@ ivtmp.47, ivtmp.47,
	cmp	fp, r4	@ SliceNum, j
	bgt	.L11	@,
.L9:
	cmp	r4, fp	@ j, SliceNum
	beq	.L23	@,
	mov	r2, #44	@ tmp436,
	ldr	r3, [sp, #8]	@ D.29566, %sfp
	mla	r2, r2, r4, r8	@ tmp437, tmp436, j, SliceInfo
	add	r10, r3, r4, lsl #5	@ D.29566, D.29566, j,
	mov	r5, r10	@ next_slice_para_addr, D.29566
	ldr	r2, [r2, #32]	@ _227->slice_start_mbn, _227->slice_start_mbn
	sub	r2, r2, #1	@ slice_end_mbn, _227->slice_start_mbn,
.L13:
	add	r0, r6, #24	@ D.29575, D.29575,
	mov	ip, #0	@ tmp441,
	bfi	ip, r2, #0, #20	@ tmp441, slice_end_mbn,,
	add	r6, r6, #28	@ D.29575, D.29575,
	str	ip, [r7, r0]	@ tmp441, MEM[(volatile HI_S32 *)_243]
	sub	r4, r4, #1	@ i, j,
	mov	r2, ip	@, tmp441
	ldr	r1, .L24+24	@,
	mov	r0, #4	@,
	str	ip, [sp, #20]	@ tmp441,
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.29566
	ldr	r1, .L24+28	@,
	str	r5, [r7, r6]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_252]
	mov	r0, #4	@,
	str	r10, [sp, #20]	@ D.29566, MEM[(struct MP2SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	cmp	fp, r4	@ SliceNum, i
	bgt	.L14	@,
.L18:
	mov	r0, #0	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L23:
	ldr	r3, [sp, #12]	@ pMp2DecParam, %sfp
	mov	r10, #0	@ D.29566,
	mov	r5, r10	@ next_slice_para_addr, D.29566
	ldrh	r1, [r3, #152]	@ D.29567, pMp2DecParam_14(D)->PicWidthInMb
	ldrh	r2, [r3, #148]	@ D.29567, pMp2DecParam_14(D)->PicHeightInMb
	mul	r2, r2, r1	@ D.29567, D.29567, D.29567
	sub	r2, r2, #1	@ slice_end_mbn, D.29567,
	b	.L13	@
.L22:
	ldr	r6, [lr, #252]	@ D.29566, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r9, lr	@ pMp2DecParam, pMp2DecParam
	ldr	r2, [lr, #268]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	r1, #1	@ tmp325,
	and	lr, r6, #15	@ D.29566, D.29566,
	str	r1, [sp, #20]	@ tmp325,
	mov	ip, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldr	r1, .L24	@,
	add	r2, r2, lr, lsl #3	@ D.29566, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.29566,
	mov	r0, #4	@,
	bfi	ip, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29566,,
	strb	ip, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #20]	@ D.29566, D32
	str	r2, [r7]	@ D.29566, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D)]
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	bic	r1, r6, #15	@ bit_stream_address_0, D.29566,
	mov	ip, r4	@ tmp332, tmp317
	rsb	r1, r3, r1	@ D.29566, StreamBaseAddr, bit_stream_address_0
	mov	r0, #4	@,
	bfi	ip, r1, #0, #24	@ tmp332, D.29566,,
	ldr	r1, .L24+4	@,
	str	ip, [r7, #4]	@ tmp332, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 4B]
	mov	r2, ip	@, tmp332
	str	ip, [sp, #20]	@ tmp332,
	bl	dprint_vfmw	@
	ldr	r6, [r9, #256]	@ D.29566, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	ldr	r2, [r9, #272]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	ip, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	lr, r6, #15	@ D.29566, D.29566,
	str	r4, [sp, #20]	@ tmp317,
	ldr	r1, .L24+8	@,
	mov	r0, #4	@,
	add	r2, r2, lr, lsl #3	@ D.29566, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.29566,
	bfi	ip, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29566,,
	strb	ip, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #20]	@ D.29566, D32
	str	r2, [r7, #8]	@ D.29566, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 8B]
	bl	dprint_vfmw	@
	ldr	r2, [r9, #256]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r3, r9	@ pMp2DecParam, pMp2DecParam
	ldr	r1, .L24+12	@,
	cmp	r2, r4	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	mov	r0, #4	@,
	bicne	r2, r6, #15	@ bit_stream_address_1, D.29566,
	streq	r2, [sp, #20]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	ldrne	r3, [sp]	@ StreamBaseAddr, %sfp
	rsbne	r2, r3, r2	@ D.29566, StreamBaseAddr, bit_stream_address_1
	bfine	r4, r2, #0, #24	@ tmp346, D.29566,,
	strne	r4, [sp, #20]	@ tmp346,
	ldr	r2, [sp, #20]	@ D.29566, D32
	mov	r4, #0	@ tmp349,
	str	r2, [r7, #12]	@ D.29566, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 12B]
	bl	dprint_vfmw	@
	ldr	r6, [sp, #12]	@ pMp2DecParam, %sfp
	str	r4, [sp, #20]	@ tmp349, D32
	mov	r0, #4	@,
	ldr	r2, [r6, #292]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code
	ldr	r1, [r6, #288]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice
	and	r2, r2, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code,
	bfi	r2, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice,,
	strb	r2, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r2, [sp, #20]	@ D.29566, D32
	ldr	r1, .L24+16	@,
	str	r2, [r7, #16]	@ D.29566, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 16B]
	bl	dprint_vfmw	@
	mov	ip, r4	@ tmp358, tmp349
	bfi	ip, r4, #0, #20	@ tmp358, tmp349,,
	ldr	r1, .L24+20	@,
	str	ip, [r7, #20]	@ tmp358, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 20B]
	mov	r0, #4	@,
	mov	r2, ip	@, tmp358
	str	ip, [sp, #20]	@ tmp358,
	bl	dprint_vfmw	@
	ldr	ip, [r6, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	ldr	r1, .L24+24	@,
	mov	r2, r4	@ tmp363, tmp349
	sub	ip, ip, #1	@ D.29566, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	mov	r0, #4	@,
	bfi	r2, ip, #0, #20	@ tmp363, D.29566,,
	str	r2, [r7, #24]	@ tmp363, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 24B]
	str	r2, [sp, #20]	@ tmp363,
	bl	dprint_vfmw	@
	add	r2, r5, #32	@ D.29566, SlcDnMsgPhyAddr,
	mov	r1, #1	@ AddSlice0Flag,
	str	r2, [r7, #28]	@ D.29566, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 28B]
	b	.L2	@
.L25:
	.align	2
.L24:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
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
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.29591, pMp2DecParam_8(D)->PictureStructure
	.pad #92
	sub	sp, sp, #92	@,,
	ldrh	ip, [r0, #152]	@ D.29593, pMp2DecParam_8(D)->PicWidthInMb
	mov	r1, #0	@ tmp138,
	cmp	r2, r3	@ D.29591,
	str	r3, [sp, #20]	@ tmp144, DnrCfg.video_standard
	strb	r1, [sp, #4]	@ tmp138, DnrCfg.dc_en
	ldreqh	r3, [r0, #150]	@ D.29593, pMp2DecParam_8(D)->FrameHeightInMb
	strb	r2, [sp, #7]	@ D.29591, DnrCfg.pic_structure
	str	ip, [sp, #28]	@ D.29593, DnrCfg.pic_width_in_mb
	strb	r1, [sp, #5]	@ tmp138, DnrCfg.db_en
	strb	r1, [sp, #6]	@ tmp138, DnrCfg.dr_en
	streq	r3, [sp, #32]	@ D.29593, DnrCfg.pic_height_in_mb
	beq	.L28	@,
	sub	r2, r2, #1	@ tmp147, D.29591,
	cmp	r2, #1	@ tmp147,
	ldrh	r2, [r0, #150]	@ D.29593, pMp2DecParam_8(D)->FrameHeightInMb
	add	r2, r2, #1	@ tmp152, D.29593,
	bichi	r2, r2, #1	@ D.29593, tmp158,
	movls	r2, r2, asr #1	@ D.29593, tmp152,
	sub	r3, r2, #1	@ D.29593, D.29593,
	str	r3, [sp, #32]	@ D.29593, DnrCfg.pic_height_in_mb
.L28:
	ldr	r2, .L33	@ tmp178,
	add	r1, r0, #45056	@ tmp167, pMp2DecParam,
	mul	r3, r3, ip	@ D.29593, D.29593, D.29593
	ldr	r7, [r1, #256]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, pMp2DecParam_8(D)->DnrMbInfoStAddr
	ldr	r4, [r2, #8]	@ D.29595, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	mov	r6, #0	@ tmp171,
	ldr	lr, [r0, #228]	@ pMp2DecParam_8(D)->VahbStride, pMp2DecParam_8(D)->VahbStride
	mov	r2, #8	@ tmp175,
	ldr	ip, [r0, #200]	@ pMp2DecParam_8(D)->CurPicPhyAddr, pMp2DecParam_8(D)->CurPicPhyAddr
	cmp	r4, r6	@ D.29595,
	ldr	r1, [r0, #224]	@ pMp2DecParam_8(D)->DispFramePhyAddr, pMp2DecParam_8(D)->DispFramePhyAddr
	mov	r5, #1	@ tmp173,
	str	r3, [sp, #24]	@ D.29593, DnrCfg.mbtodec
	bic	ip, ip, #15	@ D.29593, pMp2DecParam_8(D)->CurPicPhyAddr,
	mov	r3, lr, lsr #6	@ D.29594, pMp2DecParam_8(D)->VahbStride,
	str	r7, [sp, #76]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	str	r3, [sp, #64]	@ D.29594, DnrCfg.ddr_stride
	bic	r3, r1, #15	@ D.29593, pMp2DecParam_8(D)->DispFramePhyAddr,
	str	ip, [sp, #36]	@ D.29593, DnrCfg.dnr_ystaddr_1d
	str	r3, [sp, #40]	@ D.29593, DnrCfg.dnr_ystaddr_2d
	strb	r6, [sp, #14]	@ tmp171, DnrCfg.use_pic_qp_en
	strb	r5, [sp, #8]	@ tmp173, DnrCfg.chroma_format_idc
	str	r2, [sp, #52]	@ tmp175, DnrCfg.QP_Y
	str	r2, [sp, #60]	@ tmp175, DnrCfg.QP_V
	str	r2, [sp, #56]	@ tmp175, DnrCfg.QP_U
	beq	.L30	@,
	add	r0, sp, #4	@,,
	blx	r4	@ D.29595
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L30:
	mov	r0, r4	@, D.29595
	movw	r2, #315	@,
	ldr	r1, .L33+4	@,
	bl	dprint_vfmw	@
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L34:
	.align	2
.L33:
	.word	g_dnr_hal_fun_ptr
	.word	.LC8
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
	ldrh	r6, [r2, #152]	@ D.29599, pMp2DecParam_6(D)->PicWidthInMb
	mov	lr, #1	@ tmp216,
	ldrh	r3, [r2, #148]	@ D.29599, pMp2DecParam_6(D)->PicHeightInMb
	mov	ip, #0	@ tmp229,
	ldr	r4, [r0, #8]	@ D.29600, pRegInf_4(D)->basic_cfg0
	mul	r3, r3, r6	@ D.29599, D.29599, D.29599
	ldr	r6, [r4]	@ tmp194,* D.29600
	sub	r3, r3, #1	@ D.29599, D.29599,
	bfi	r6, r3, #0, #20	@ tmp194, D.29599,,
	str	r6, [r4]	@ tmp194,* D.29600
	ldr	r4, [r0, #8]	@ D.29600, pRegInf_4(D)->basic_cfg0
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _16->load_qmatrix_flag, _16->load_qmatrix_flag
	orr	r3, r3, #64	@ tmp197, _16->load_qmatrix_flag,
	strb	r3, [r4, #3]	@ tmp197, _16->load_qmatrix_flag
	ldr	r3, [r0, #8]	@ D.29600, pRegInf_4(D)->basic_cfg0
	ldrb	r4, [r3, #3]	@ zero_extendqisi2	@, _18->repair_en
	bfc	r4, #7, #1	@ _18->repair_en,,
	strb	r4, [r3, #3]	@ _18->repair_en, _18->repair_en
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3]	@ zero_extendqisi2	@, _20->video_standard
	bfi	r4, r5, #0, #4	@ _20->video_standard, tmp203,,
	strb	r4, [r3]	@ _20->video_standard, _20->video_standard
	ldr	r4, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldr	r3, [r2, #228]	@ pMp2DecParam_6(D)->VahbStride, pMp2DecParam_6(D)->VahbStride
	ldrh	r5, [r4]	@, _22->ddr_stride
	mov	r3, r3, lsr #6	@ D.29602, pMp2DecParam_6(D)->VahbStride,
	bfi	r5, r3, #4, #10	@ _22->ddr_stride, D.29602,,
	strh	r5, [r4]	@ movhi	@ _22->ddr_stride, _22->ddr_stride
	ldr	r4, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ _28->fst_slc_grp, _28->fst_slc_grp
	orr	r3, r3, #64	@ tmp210, _28->fst_slc_grp,
	strb	r3, [r4, #1]	@ tmp210, _28->fst_slc_grp
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@, _30->mv_output_en
	bfc	r4, #7, #1	@ _30->mv_output_en,,
	strb	r4, [r3, #1]	@ _30->mv_output_en, _30->mv_output_en
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrh	r4, [r3, #2]	@, _32->max_slcgrp_num
	bfi	r4, lr, #0, #12	@ _32->max_slcgrp_num, tmp216,,
	strh	r4, [r3, #2]	@ movhi	@ _32->max_slcgrp_num, _32->max_slcgrp_num
	ldr	lr, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [lr, #3]	@ zero_extendqisi2	@ _34->dblk_1d_en, _34->dblk_1d_en
	orr	r3, r3, #32	@ tmp219, _34->dblk_1d_en,
	strb	r3, [lr, #3]	@ tmp219, _34->dblk_1d_en
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _36->ppfd_en
	bfc	lr, #7, #1	@ _36->ppfd_en,,
	strb	lr, [r3, #3]	@ _36->ppfd_en, _36->ppfd_en
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _38->line_num_output_en
	bfc	lr, #4, #1	@ _38->line_num_output_en,,
	strb	lr, [r3, #3]	@ _38->line_num_output_en, _38->line_num_output_en
	ldr	r3, [r0, #12]	@ D.29604, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _40->compress_en
	bfc	lr, #6, #1	@ _40->compress_en,,
	strb	lr, [r3, #3]	@ _40->compress_en, _40->compress_en
	ldr	r3, [r0, #64]	@ D.29606, pRegInf_4(D)->FfAptEn
	ldrb	lr, [r3]	@ zero_extendqisi2	@, _42->ff_apt_en
	bfc	lr, #0, #1	@ _42->ff_apt_en,,
	strb	lr, [r3]	@ _42->ff_apt_en, _42->ff_apt_en
	ldr	r3, [r0, #60]	@ D.29607, pRegInf_4(D)->RefPicType
	str	ip, [r3]	@ tmp229, MEM[(HI_U32 *)_44]
	ldr	r3, [r0, #60]	@ D.29607, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #208]	@ pMp2DecParam_6(D)->FwdRefIsFldSave, pMp2DecParam_6(D)->FwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _46->ref_pic_type_0
	bfi	ip, lr, #0, #2	@ _46->ref_pic_type_0, pMp2DecParam_6(D)->FwdRefIsFldSave,,
	strb	ip, [r3]	@ _46->ref_pic_type_0, _46->ref_pic_type_0
	ldr	r3, [r0, #60]	@ D.29607, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #204]	@ pMp2DecParam_6(D)->BwdRefIsFldSave, pMp2DecParam_6(D)->BwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _51->ref_pic_type_1
	bfi	ip, lr, #2, #2	@ _51->ref_pic_type_1, pMp2DecParam_6(D)->BwdRefIsFldSave,,
	strb	ip, [r3]	@ _51->ref_pic_type_1, _51->ref_pic_type_1
	ldr	ip, [r0, #16]	@ D.29610, pRegInf_4(D)->avm_addr
	ldr	r3, [r1, #44]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29602, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.29602, _56->av_msg_addr
	ldr	ip, [r0, #20]	@ D.29611, pRegInf_4(D)->vam_addr
	ldr	r3, [r1, #28]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29602, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.29602, _62->va_msg_addr
	ldr	ip, [r0, #28]	@ D.29612, pRegInf_4(D)->ystaddr_1d
	ldr	r3, [r2, #200]	@ pMp2DecParam_6(D)->CurPicPhyAddr, pMp2DecParam_6(D)->CurPicPhyAddr
	bic	r3, r3, #255	@ D.29602, pMp2DecParam_6(D)->CurPicPhyAddr,
	str	r3, [ip]	@ D.29602, _67->ystaddr_1d
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ pMp2DecParam_6(D)->PictureStructure, pMp2DecParam_6(D)->PictureStructure
	ldrh	r4, [r2, #148]	@ D.29599, pMp2DecParam_6(D)->PicHeightInMb
	sub	ip, ip, #1	@ tmp245, pMp2DecParam_6(D)->PictureStructure,
	ldr	lr, [r0, #32]	@ D.29613, pRegInf_4(D)->ystride_1d
	cmp	ip, #1	@ tmp245,
	ldrh	ip, [r2, #152]	@ pMp2DecParam_6(D)->PicWidthInMb, pMp2DecParam_6(D)->PicWidthInMb
	movls	r3, #2	@ D.29599,
	movhi	r3, #1	@ D.29599,
	mul	r3, r3, r4	@ D.29599, D.29599, D.29599
	str	ip, [lr]	@ pMp2DecParam_6(D)->PicWidthInMb, _77->ystride_1d
	ldr	lr, [r0, #36]	@ D.29614, pRegInf_4(D)->uvoffset_1d
	ldrh	ip, [r2, #152]	@ D.29602, pMp2DecParam_6(D)->PicWidthInMb
	mul	r3, ip, r3	@ D.29602, D.29602, D.29599
	mov	r3, r3, asl #8	@ D.29602, D.29602,
	str	r3, [lr]	@ D.29602, _81->uvoffset_1d
	ldr	r1, [r1, #1120]	@ pHwMem_57(D)->DnrMbInfoAddr, pHwMem_57(D)->DnrMbInfoAddr
	ldr	r3, [r0, #56]	@ D.29615, pRegInf_4(D)->DnrMbInfoStAddr
	str	r1, [r3]	@ pHwMem_57(D)->DnrMbInfoAddr, _87->dnr_mbinfo_staddr
	ldr	r3, [r2, #176]	@ pMp2DecParam_6(D)->StreamLength, pMp2DecParam_6(D)->StreamLength
	cmp	r3, #0	@ pMp2DecParam_6(D)->StreamLength,
	ldreq	ip, [r2, #164]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldrne	ip, [r2, #168]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldreq	r1, [r0, #24]	@ D.29616, pRegInf_4(D)->stream_base_addr
	ldreq	r3, [r2, #156]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	ldrne	r1, [r0, #24]	@ D.29616, pRegInf_4(D)->stream_base_addr
	mov	r0, #0	@,
	ldrne	r3, [r2, #160]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	add	r3, r3, ip, lsr #3	@ BytePos, pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamBitOffset,
	bic	r3, r3, #15	@ D.29602, BytePos,
	str	r3, [r1]	@ D.29602,* D.29616
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
	mov	r5, r0	@ pMp2DecParam, pMp2DecParam
	mov	r6, r2	@ VdhId, VdhId
	mov	r0, #0	@ tmp283,
	str	r0, [sp, #12]	@ tmp283, D32
	bhi	.L70	@,
	ldr	r2, [r1]	@ MEM[(HI_S32 * *)pHwMem_19(D)], MEM[(HI_S32 * *)pHwMem_19(D)]
	cmp	r2, #0	@ MEM[(HI_S32 * *)pHwMem_19(D)],
	beq	.L71	@,
.L45:
	movw	ip, #1140	@ tmp425,
	ldr	r4, .L72	@ tmp507,
	mul	ip, ip, r6	@ tmp424, tmp425, VdhId
	mvn	r2, #0	@ tmp428,
	mov	lr, #0	@ tmp457,
	mov	r8, #3	@ tmp460,
	add	r7, r5, #45056	@ tmp483, pMp2DecParam,
	ldr	r0, [r4, ip]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r2, [r0, #32]	@ tmp428, *_25
	ldrh	fp, [r5, #152]	@ D.29642, pMp2DecParam_28(D)->PicWidthInMb
	ldrh	r10, [r5, #148]	@ D.29642, pMp2DecParam_28(D)->PicHeightInMb
	ldr	r0, [sp, #12]	@ tmp433,
	ldr	r9, [r4, ip]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	mul	r10, r10, fp	@ D.29642, D.29642, D.29642
	add	r10, r10, r2	@ D.29642, D.29642,
	bfi	r0, r10, #0, #20	@ tmp433, D.29642,,
	str	r0, [sp, #12]	@ tmp433,
	ubfx	r10, r0, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp433,,
	mov	r0, r0, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp433,
	orr	r10, r10, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	and	r0, r0, #62	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r10, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en,,
	orr	r0, r0, #65	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	strb	r10, [sp, #14]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	bfc	r0, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en,,
	strb	r0, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	r0, [sp, #12]	@ D.29642, D32
	str	lr, [sp, #12]	@ tmp457, D32
	ldrh	r10, [sp, #14]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	str	r0, [r9, #8]	@ D.29642, *_49
	bfi	r10, r8, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp460,,
	ldr	r9, [r5, #228]	@ pMp2DecParam_28(D)->VahbStride, pMp2DecParam_28(D)->VahbStride
	ubfx	r0, r10, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strb	r8, [sp, #12]	@ tmp460, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	orr	r0, r0, #32	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	ldrh	r8, [sp, #12]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	and	r0, r0, #127	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en,
	mov	r9, r9, lsr #6	@ D.29644, pMp2DecParam_28(D)->VahbStride,
	bfi	r0, lr, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, tmp457,,
	bfi	r8, r9, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.29644,,
	strh	r10, [sp, #14]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	uxtb	r9, r0	@ tmp485, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	strb	r0, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	ubfx	r0, r8, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	ldr	r10, [r7, #260]	@ pMp2DecParam_28(D)->Compress_en, pMp2DecParam_28(D)->Compress_en
	orr	r0, r0, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strh	r8, [sp, #12]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r0, lr, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, tmp457,,
	bfi	r9, r10, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pMp2DecParam_28(D)->Compress_en,,
	strb	r0, [sp, #13]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	strb	r9, [sp, #15]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en
	ldr	r0, [r4, ip]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	ldr	r8, [sp, #12]	@ D.29642, D32
	str	lr, [sp, #12]	@ tmp457, D32
	str	r8, [r0, #12]	@ D.29642, *_72
	ldr	r8, [r4, ip]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	ldr	r0, [r1, #44]	@ pHwMem_19(D)->MsgSlotAddr, pHwMem_19(D)->MsgSlotAddr
	bic	r0, r0, #15	@ D.29642, pHwMem_19(D)->MsgSlotAddr,
	str	r0, [r8, #16]	@ D.29642, *_83
	ldr	r0, [r4, ip]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ pHwMem_19(D)->MsgSlotAddr, pHwMem_19(D)->MsgSlotAddr
	bic	r1, r1, #15	@ D.29642, pHwMem_19(D)->MsgSlotAddr,
	str	r1, [r0, #20]	@ D.29642, *_93
	ldr	r0, [r7, #252]	@ D.29644, pMp2DecParam_28(D)->SlcNum
	cmp	r0, lr	@ D.29644,
	beq	.L56	@,
	mov	r1, r5	@ ivtmp.59, pMp2DecParam
.L57:
	ldr	ip, [r1, #252]	@ D.29644, MEM[base: _266, offset: 252B]
	cmp	ip, #0	@ D.29644,
	beq	.L49	@,
	ldr	r7, [r1, #260]	@ MEM[base: _266, offset: 260B], MEM[base: _266, offset: 260B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29644,
	cmp	r7, #0	@ MEM[base: _266, offset: 260B],
	ble	.L49	@,
	cmp	r2, ip	@ stream_base_addr, tmp_base_addr
	movcs	r2, ip	@ stream_base_addr, tmp_base_addr
.L49:
	ldr	ip, [r1, #256]	@ D.29644, MEM[base: _266, offset: 256B]
	cmp	ip, #0	@ D.29644,
	beq	.L47	@,
	ldr	r7, [r1, #264]	@ MEM[base: _266, offset: 264B], MEM[base: _266, offset: 264B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29644,
	cmp	r7, #0	@ MEM[base: _266, offset: 264B],
	ble	.L47	@,
	cmp	r2, ip	@ stream_base_addr, tmp_base_addr
	movcs	r2, ip	@ stream_base_addr, tmp_base_addr
.L47:
	add	lr, lr, #1	@ i, i,
	add	r1, r1, #44	@ ivtmp.59, ivtmp.59,
	cmp	lr, r0	@ i, D.29644
	bne	.L57	@,
	cmn	r2, #1	@ stream_base_addr,
	beq	.L56	@,
	movw	r7, #1140	@ tmp297,
	str	r2, [r3]	@ stream_base_addr, *StreamBaseAddr_105(D)
	mul	r7, r7, r6	@ tmp296, tmp297, VdhId
	ldr	r1, .L72+4	@ tmp301,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r2, [r3, #24]	@ stream_base_addr, *_113
	ldrh	r3, [r5, #152]	@ pMp2DecParam_28(D)->PicWidthInMb, pMp2DecParam_28(D)->PicWidthInMb
	ldr	r8, [r1]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	r3, #120	@ pMp2DecParam_28(D)->PicWidthInMb,
	add	r8, r8, #4	@ D.29642, s_RegPhyBaseAddr,
	movhi	r9, #0	@ D.29642,
	movls	r9, #65536	@ D.29642,
	bl	MEM_ReadPhyWord	@
	orr	r1, r0, r9	@,, D.29642
	mov	r0, r8	@, D.29642
	bl	MEM_WritePhyWord	@
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp310,
	movw	r0, #43691	@ tmp375,
	movt	r3, 48	@ tmp310,
	movt	r0, 43690	@ tmp375,
	str	r3, [r2, #60]	@ tmp310, *_127
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp310, *_132
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp310, *_137
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp310, *_142
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp310, *_147
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp310, *_152
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp310, *_157
	ldr	r2, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	ldr	r3, [r5, #200]	@ pMp2DecParam_28(D)->CurPicPhyAddr, pMp2DecParam_28(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D.29642, pMp2DecParam_28(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D.29642, *_167
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ pMp2DecParam_28(D)->PictureStructure, pMp2DecParam_28(D)->PictureStructure
	ldrh	ip, [r5, #148]	@ D.29642, pMp2DecParam_28(D)->PicHeightInMb
	sub	r2, r2, #1	@ tmp356, pMp2DecParam_28(D)->PictureStructure,
	ldr	r1, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	cmp	r2, #1	@ tmp356,
	ldr	r2, [r5, #228]	@ D.29642, pMp2DecParam_28(D)->VahbStride
	movls	r3, #2	@ D.29642,
	movhi	r3, #1	@ D.29642,
	mul	r3, r3, ip	@ D.29642, D.29642, D.29642
	str	r2, [r1, #100]	@ D.29642, *_181
	ldr	r2, [r5, #228]	@ pMp2DecParam_28(D)->VahbStride, pMp2DecParam_28(D)->VahbStride
	mov	ip, #0	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en,
	ldr	r1, [r4, r7]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	mov	r7, #0	@ tmp395,
	add	r3, r3, #1	@ D.29644, D.29642,
	bfi	ip, r7, #0, #1	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, tmp395,,
	mov	r2, r2, asl #1	@ D.29644, pMp2DecParam_28(D)->VahbStride,
	mov	r3, r3, lsr #1	@ D.29644, D.29644,
	mul	r3, r3, r2	@ D.29642, D.29644, D.29644
	str	r3, [r1, #104]	@ D.29642, *_194
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ pMp2DecParam_28(D)->PictureStructure, pMp2DecParam_28(D)->PictureStructure
	umull	r0, r1, r3, r0	@ tmp374, pMp2DecParam_28(D)->PictureStructure, tmp375
	mov	r0, #3	@,
	mov	r2, r1, lsr #1	@ tmp372,,
	add	r2, r2, r2, lsl #1	@ tmp378, tmp372, tmp372,
	rsb	r3, r2, r3	@ tmp379, tmp378, pMp2DecParam_28(D)->PictureStructure
	uxtb	r3, r3	@ tmp380, tmp379
	cmp	r3, #2	@ tmp380,
	ldreqh	r2, [r5, #148]	@ D.29642, pMp2DecParam_28(D)->PicHeightInMb
	ldreqh	r1, [r5, #152]	@ D.29642, pMp2DecParam_28(D)->PicWidthInMb
	ldreq	r3, [r5, #236]	@ pMp2DecParam_28(D)->DnrMbinfoStaddr, pMp2DecParam_28(D)->DnrMbinfoStaddr
	ldrne	r3, [r5, #236]	@ pMp2DecParam_28(D)->DnrMbinfoStaddr, pMp2DecParam_28(D)->DnrMbinfoStaddr
	muleq	r2, r2, r1	@ D.29642, D.29642, D.29642
	addeq	r3, r3, #127	@ D.29644, pMp2DecParam_28(D)->DnrMbinfoStaddr,
	ldr	r1, .L72+8	@,
	addeq	r3, r3, r2, lsl #3	@ D.29644, D.29644, D.29642,
	movw	r2, #1140	@ tmp392,
	mul	r6, r2, r6	@ tmp391, tmp392, VdhId
	biceq	r3, r3, #127	@ D.29644, D.29644,
	str	r3, [sp, #12]	@ pMp2DecParam_28(D)->DnrMbinfoStaddr, MEM[(struct DNR_V200_MBINFO_STADDR *)&D32].dnr_mbinfo_staddr
	mov	r2, r7	@, tmp395
	ldr	lr, [sp, #12]	@ D.29642, D32
	str	r7, [sp, #12]	@ tmp395, D32
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	lr, [r3, #144]	@ D.29642, *_216
	ldr	r3, [r5, #208]	@ pMp2DecParam_28(D)->FwdRefIsFldSave, pMp2DecParam_28(D)->FwdRefIsFldSave
	ldr	r5, [r5, #204]	@ pMp2DecParam_28(D)->BwdRefIsFldSave, pMp2DecParam_28(D)->BwdRefIsFldSave
	and	r3, r3, r0	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_28(D)->FwdRefIsFldSave,
	ldr	lr, [r4, r6]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	bfi	r3, r5, #2, #2	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_28(D)->BwdRefIsFldSave,,
	strb	r3, [sp, #12]	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1
	ldr	r3, [sp, #12]	@ D.29642, D32
	str	r7, [sp, #12]	@ tmp395, D32
	strb	ip, [sp, #12]	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en
	str	r3, [lr, #148]	@ D.29642, *_231
	ldr	ip, [sp, #12]	@ D.29642, D32
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	ip, [r3, #152]	@ D.29642, *_239
	ldr	r3, [r4, r6]	@ g_HwMem[VdhId_14(D)].pVdmRegVirAddr, g_HwMem[VdhId_14(D)].pVdmRegVirAddr
	str	r7, [r3, #108]	@ tmp395, *_246
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.29641, tmp395
.L68:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L70:
	ldr	r1, .L72+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29641,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L71:
	mov	r0, #0	@,
	stmia	sp, {r1, r3}	@,,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ p32,
	ldrne	r1, [sp]	@ pHwMem, %sfp
	ldrne	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	strne	r2, [r1]	@ p32, MEM[(HI_S32 * *)pHwMem_19(D)]
	bne	.L45	@
.L46:
	ldr	r1, .L72+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29641,
	b	.L68	@
.L56:
	mvn	r2, #0	@,
	ldr	r1, .L72+20	@,
	mov	r0, #0	@,
	str	r3, [sp]	@ StreamBaseAddr, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	mov	r2, #0	@ tmp294,
	mvn	r0, #0	@ D.29641,
	str	r2, [r3]	@ tmp294, *StreamBaseAddr_105(D)
	b	.L68	@
.L73:
	.align	2
.L72:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.word	.LC12
	.word	.LC9
	.word	.LC10
	.word	.LC11
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
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	ldr	r0, [r1, #44]	@, pHwMem_13(D)->MsgSlotAddr
	str	r3, [sp, #28]	@ StreamBaseAddr, %sfp
	mov	r6, r1	@ pHwMem, pHwMem
	mov	r3, #0	@ tmp836,
	str	r3, [sp, #36]	@ tmp836, D32
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L100	@,
	ldrh	r2, [r4, #152]	@ D.29686, pMp2DecParam_18(D)->PicWidthInMb
	cmp	r2, #512	@ D.29686,
	bhi	.L101	@,
	ldrh	r1, [r4, #148]	@ D.29686, pMp2DecParam_18(D)->PicHeightInMb
	cmp	r1, #512	@ D.29686,
	bhi	.L102	@,
	ldrh	r3, [sp, #38]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	sub	r1, r1, #1	@ tmp463, D.29686,
	ldr	r0, [r4, #180]	@ pMp2DecParam_18(D)->Mpeg1Flag, pMp2DecParam_18(D)->Mpeg1Flag
	sub	r2, r2, #1	@ tmp460, D.29686,
	bfi	r3, r1, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, tmp463,,
	ldrh	r1, [sp, #36]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strh	r3, [sp, #38]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	mov	r9, #0	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct,
	mov	r3, r3, lsr #8	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb,
	bfi	r1, r2, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, tmp460,,
	bfi	r3, r0, #1, #1	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, pMp2DecParam_18(D)->Mpeg1Flag,,
	strh	r1, [sp, #36]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strb	r3, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag
	mov	r8, r9	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	ldr	r3, [sp, #36]	@ D.29685, D32
	mov	r7, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	mov	lr, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	mov	ip, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	mov	r0, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	mov	r1, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	str	r3, [r5]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16]
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->PicCodingType, pMp2DecParam_18(D)->PicCodingType
	ldrb	r10, [r4, #2]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Mp1FwdmvFullPel, pMp2DecParam_18(D)->Mp1FwdmvFullPel
	and	r3, r3, #7	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_18(D)->PicCodingType,
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->PictureStructure, pMp2DecParam_18(D)->PictureStructure
	bfi	r3, r10, #3, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_18(D)->Mp1FwdmvFullPel,,
	ldrb	r10, [r4, #1]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Mp1BwdmvFullPel, pMp2DecParam_18(D)->Mp1BwdmvFullPel
	ldrb	fp, [r4, #4]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->SecondFieldFlag, pMp2DecParam_18(D)->SecondFieldFlag
	and	r2, r2, #3	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_18(D)->PictureStructure,
	bfi	r3, r10, #4, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, pMp2DecParam_18(D)->Mp1BwdmvFullPel,,
	strb	r3, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->FramePredFrameDct, pMp2DecParam_18(D)->FramePredFrameDct
	mov	r10, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, fp, #2, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_18(D)->SecondFieldFlag,,
	strb	r2, [sp, #37]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag
	bfi	r9, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, pMp2DecParam_18(D)->FramePredFrameDct,,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->ConcealmentMotionVectors, pMp2DecParam_18(D)->ConcealmentMotionVectors
	strb	r9, [sp, #36]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	mov	r2, r8	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	bfi	r8, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, pMp2DecParam_18(D)->ConcealmentMotionVectors,,
	strb	r8, [sp, #38]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #4]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 4B]
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	ldrb	r9, [r4, #6]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->TopFieldFirst, pMp2DecParam_18(D)->TopFieldFirst
	ldrb	r8, [r4, #15]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	and	r3, r3, #15	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_18(D)->Fcode,
	bfi	r3, r9, #7, #1	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_18(D)->TopFieldFirst,,
	strb	r3, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first
	bfi	r7, r8, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, pMp2DecParam_18(D)->Fcode,,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	ldrb	r8, [r4, #13]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->Fcode, pMp2DecParam_18(D)->Fcode
	bfi	lr, r3, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, pMp2DecParam_18(D)->Fcode,,
	strb	r7, [sp, #36]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	strb	lr, [sp, #37]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	bfi	ip, r8, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, pMp2DecParam_18(D)->Fcode,,
	strb	ip, [sp, #38]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #8]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 8B]
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->IntraDcPrecision, pMp2DecParam_18(D)->IntraDcPrecision
	bfi	r0, r3, #0, #2	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, pMp2DecParam_18(D)->IntraDcPrecision,,
	strb	r0, [sp, #36]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	ldrb	ip, [r4, #10]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->QuantType, pMp2DecParam_18(D)->QuantType
	ldrb	r0, [r4, #9]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->IntraVlcFormat, pMp2DecParam_18(D)->IntraVlcFormat
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ pMp2DecParam_18(D)->AlternateScan, pMp2DecParam_18(D)->AlternateScan
	bfi	r1, ip, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, pMp2DecParam_18(D)->QuantType,,
	bfi	r10, r0, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, pMp2DecParam_18(D)->IntraVlcFormat,,
	strb	r1, [sp, #37]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, pMp2DecParam_18(D)->AlternateScan,,
	strb	r10, [sp, #38]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	strb	r2, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #12]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 12B]
	ldr	r3, [r4, #192]	@ pMp2DecParam_18(D)->BwdRefPhyAddr, pMp2DecParam_18(D)->BwdRefPhyAddr
	bic	r3, r3, #15	@ D.29685, pMp2DecParam_18(D)->BwdRefPhyAddr,
	str	r3, [r5, #16]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 16B]
	ldr	r3, [r4, #196]	@ pMp2DecParam_18(D)->FwdRefPhyAddr, pMp2DecParam_18(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.29685, pMp2DecParam_18(D)->FwdRefPhyAddr,
	str	r3, [r5, #20]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 20B]
	ldr	r3, [r4, #224]	@ pMp2DecParam_18(D)->DispFramePhyAddr, pMp2DecParam_18(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.29685, pMp2DecParam_18(D)->DispFramePhyAddr,
	str	r3, [r5, #24]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 24B]
	ldr	r3, [r4, #240]	@ pMp2DecParam_18(D)->PmvColmbPhyAddr, pMp2DecParam_18(D)->PmvColmbPhyAddr
	bic	r3, r3, #15	@ D.29688, pMp2DecParam_18(D)->PmvColmbPhyAddr,
	str	r3, [r5, #28]	@ D.29688, MEM[(volatile HI_S32 *)pMsgBase_16 + 28B]
	ldr	r0, [r4, #156]	@, pMp2DecParam_18(D)->StreamPhyAddr
	str	r3, [sp, #36]	@ D.29688, MEM[(struct MP2DNMSG_V200R004_D7 *)&D32].current_pmv_addr
	bl	MEM_Phy2Vir	@
	mov	r7, r0	@ D.29694,
	ldr	r0, [r4, #160]	@, pMp2DecParam_18(D)->StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	cmp	r1, #0	@ pMp2DecParam_18(D)->StreamLength,
	mov	r9, r0	@ D.29694,
	beq	.L103	@,
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r1, #0	@ tmp657,
	ldr	r8, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, r1	@ tmp660, tmp657
	ldr	ip, [r4, #160]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r7, r1	@ D.29694,
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	add	r8, ip, r8, lsr #3	@ BytePos1, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	add	r3, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	bic	lr, r8, #15	@ stream_base_addr, BytePos1,
	bic	ip, r3, #15	@ D.29688, BytePos0,
	and	r2, r3, #15	@ tmp663, BytePos0,
	rsb	r3, lr, ip	@ D.29688, stream_base_addr, D.29688
	bfi	r1, r3, #0, #24	@ tmp657, D.29688,,
	str	r1, [r5, #32]	@ tmp657, MEM[(volatile HI_S32 *)pMsgBase_16 + 32B]
	ldr	r1, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	bfi	r0, r1, #0, #24	@ tmp660, pMp2DecParam_18(D)->StreamLength,,
	str	r0, [sp, #36]	@ tmp660,
	and	r3, r3, #7	@ tmp668, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r1, [sp, #39]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	add	r3, r3, r2, lsl #3	@ tmp671, tmp668, tmp663,
	bfi	r1, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp671,,
	strb	r1, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #36]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L82	@,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L106	@,
	add	ip, r7, r3, lsr #3	@ rp, D.29694, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ D.29685, *rp_248
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 7B], MEM[(HI_U8 *)rp_248 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_248 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_248 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 6B], MEM[(HI_U8 *)rp_248 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_248 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 5B], MEM[(HI_U8 *)rp_248 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_248 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 4B], MEM[(HI_U8 *)rp_248 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_248 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 3B], MEM[(HI_U8 *)rp_248 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_248 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 2B], MEM[(HI_U8 *)rp_248 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_248 + 2B],
	bl	dprint_vfmw	@
	ldr	r2, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #9	@,
	add	ip, r2, #7	@ tmp691, pMp2DecParam_18(D)->StreamLength,
	cmp	r2, #0	@ pMp2DecParam_18(D)->StreamLength,
	ldr	r1, .L106+4	@,
	mov	r3, r3, lsr #3	@ D.29688, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp691
	sub	r3, r3, #8	@ D.29697, D.29688,
	add	r3, r3, r2, asr #3	@ D.29697, D.29697, pMp2DecParam_18(D)->StreamLength,
	add	ip, r7, r3	@ rp, D.29694, D.29697
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ D.29685, *rp_273
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 7B], MEM[(HI_U8 *)rp_273 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_273 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_273 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 6B], MEM[(HI_U8 *)rp_273 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_273 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 5B], MEM[(HI_U8 *)rp_273 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_273 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 4B], MEM[(HI_U8 *)rp_273 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_273 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 3B], MEM[(HI_U8 *)rp_273 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_273 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 2B], MEM[(HI_U8 *)rp_273 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_273 + 2B],
	bl	dprint_vfmw	@
	ldr	r2, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	mov	r0, #22	@,
	ldr	r1, .L106+8	@,
	add	r2, r2, r3	@, pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamPhyAddr
	bl	dprint_vfmw	@
.L82:
	mov	r3, #0	@ tmp707,
	and	r8, r8, #15	@ tmp714, BytePos1,
	mov	r2, r3	@ tmp708, tmp707
	bfi	r2, r3, #0, #24	@ tmp708, tmp707,,
	str	r2, [r5, #40]	@ tmp708, MEM[(volatile HI_S32 *)pMsgBase_16 + 40B]
	cmp	r9, r3	@ D.29694,
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r2, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	add	r1, r1, #24	@ D.29685, pMp2DecParam_18(D)->StreamLength,
	bfi	r3, r1, #0, #24	@ tmp712, D.29685,,
	str	r3, [sp, #36]	@ tmp712,
	and	r3, r2, #7	@ tmp719, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [sp, #39]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	add	r3, r3, r8, lsl #3	@ tmp722, tmp719, tmp714,
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp722,,
	strb	r2, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #44]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	beq	.L81	@,
	ldr	r3, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L106+12	@,
	add	ip, r9, r3, lsr #3	@ rp, D.29694, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r9, r3, lsr #3]	@ zero_extendqisi2	@ D.29685, *rp_321
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 7B], MEM[(HI_U8 *)rp_321 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_321 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_321 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 6B], MEM[(HI_U8 *)rp_321 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_321 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 5B], MEM[(HI_U8 *)rp_321 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_321 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 4B], MEM[(HI_U8 *)rp_321 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_321 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 3B], MEM[(HI_U8 *)rp_321 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_321 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 2B], MEM[(HI_U8 *)rp_321 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_321 + 2B],
	bl	dprint_vfmw	@
	ldr	r2, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #9	@,
	add	ip, r2, #7	@ tmp742, pMp2DecParam_18(D)->StreamLength,
	cmp	r2, #0	@ pMp2DecParam_18(D)->StreamLength,
	ldr	r1, .L106+16	@,
	mov	r3, r3, lsr #3	@ D.29688, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp742
	sub	r3, r3, #8	@ D.29697, D.29688,
	add	r3, r3, r2, asr #3	@ D.29697, D.29697, pMp2DecParam_18(D)->StreamLength,
	add	ip, r9, r3	@ rp, D.29694, D.29697
	ldrb	r2, [r9, r3]	@ zero_extendqisi2	@ D.29685, *rp_346
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 7B], MEM[(HI_U8 *)rp_346 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_346 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_346 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 6B], MEM[(HI_U8 *)rp_346 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_346 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 5B], MEM[(HI_U8 *)rp_346 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_346 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 4B], MEM[(HI_U8 *)rp_346 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_346 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 3B], MEM[(HI_U8 *)rp_346 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_346 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 2B], MEM[(HI_U8 *)rp_346 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_346 + 2B],
	bl	dprint_vfmw	@
.L81:
	add	r2, r5, #64	@ ivtmp.87, pMsgBase,
	add	r7, r4, #64	@ D.29699, pMp2DecParam,
	mov	r3, r4	@ ivtmp.83, pMp2DecParam
.L83:
	ldrb	r1, [r3, #17]	@ zero_extendqisi2	@ MEM[base: _438, offset: 17B], MEM[base: _438, offset: 17B]
	add	r3, r3, #2	@ ivtmp.83, ivtmp.83,
	ldrb	lr, [r3, #78]	@ zero_extendqisi2	@ MEM[base: _438, offset: 80B], MEM[base: _438, offset: 80B]
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ MEM[base: _438, offset: 81B], MEM[base: _438, offset: 81B]
	ldrb	r0, [r3, #14]	@ zero_extendqisi2	@ MEM[base: _438, offset: 16B], MEM[base: _438, offset: 16B]
	cmp	r3, r7	@ ivtmp.83, D.29699
	strb	lr, [sp, #36]	@ MEM[base: _438, offset: 80B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_even
	strb	ip, [sp, #38]	@ MEM[base: _438, offset: 81B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_odd
	strb	r0, [sp, #37]	@ MEM[base: _438, offset: 16B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_even
	strb	r1, [sp, #39]	@ MEM[base: _438, offset: 17B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #36]	@ D.29685, D32
	str	r1, [r2], #4	@ D.29685, MEM[(volatile HI_S32 *)_378]
	bne	.L83	@,
	ldr	r3, [r6, #1084]	@ pHwMem_13(D)->PmvTopAddr, pHwMem_13(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.29688, pHwMem_13(D)->PmvTopAddr,
	str	r3, [r5, #192]	@ D.29688, MEM[(volatile HI_S32 *)pMsgBase_16 + 192B]
	ldr	r7, [r6, #44]	@ pHwMem_13(D)->MsgSlotAddr, pHwMem_13(D)->MsgSlotAddr
	str	r3, [sp, #36]	@ D.29688, MEM[(struct MP2DNMSG_V200R004_D48 *)&D32].pmv_top_addr
	bic	r7, r7, #15	@ D.29688, pHwMem_13(D)->MsgSlotAddr,
	add	r7, r7, #256	@ SlcDnMsgPhyAddr, D.29688,
	mov	r0, r7	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L104	@,
	ldr	r3, [sp, #28]	@, %sfp
	mov	r0, r4	@, pMp2DecParam
	str	r7, [r5, #252]	@ SlcDnMsgPhyAddr, MEM[(volatile HI_S32 *)pMsgBase_16 + 252B]
	mov	r2, r7	@, SlcDnMsgPhyAddr
	str	r7, [sp, #36]	@ SlcDnMsgPhyAddr, MEM[(struct MP2DNMSG_V200R004_D63 *)&D32].first_slc_dnmsg_addr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	ldr	r3, .L106+20	@ tmp768,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r0, r3, #16	@ D.29688, g_PrintEnable,
	bne	.L105	@,
.L98:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L103:
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, r1	@ tmp599, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r7, #0	@ D.29694,
	str	r1, [r5, #32]	@ pMp2DecParam_18(D)->StreamLength, MEM[(volatile HI_S32 *)pMsgBase_16 + 32B]
	ldr	r1, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	add	r2, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	and	r2, r2, #15	@ tmp601, BytePos0,
	add	r1, r1, #24	@ D.29685, pMp2DecParam_18(D)->StreamLength,
	bfi	r0, r1, #0, #24	@ tmp599, D.29685,,
	and	r3, r3, #7	@ tmp606, pMp2DecParam_18(D)->StreamBitOffset,
	str	r0, [sp, #36]	@ tmp599,
	add	r3, r3, r2, lsl #3	@ tmp609, tmp606, tmp601,
	ldrb	r1, [sp, #39]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	bfi	r1, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp609,,
	strb	r1, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #36]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L80	@,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L106+24	@,
	add	ip, r7, r3, lsr #3	@ rp, D.29694, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ D.29685, *rp_158
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 7B], MEM[(HI_U8 *)rp_158 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_158 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_158 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 6B], MEM[(HI_U8 *)rp_158 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_158 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 5B], MEM[(HI_U8 *)rp_158 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_158 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 4B], MEM[(HI_U8 *)rp_158 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_158 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 3B], MEM[(HI_U8 *)rp_158 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_158 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 2B], MEM[(HI_U8 *)rp_158 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_158 + 2B],
	bl	dprint_vfmw	@
	ldr	r2, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #9	@,
	add	ip, r2, #7	@ tmp629, pMp2DecParam_18(D)->StreamLength,
	cmp	r2, #0	@ pMp2DecParam_18(D)->StreamLength,
	ldr	r1, .L106+28	@,
	mov	r3, r3, lsr #3	@ D.29688, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp629
	sub	r3, r3, #8	@ D.29697, D.29688,
	add	r3, r3, r2, asr #3	@ D.29697, D.29697, pMp2DecParam_18(D)->StreamLength,
	add	ip, r7, r3	@ rp, D.29694, D.29697
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ D.29685, *rp_183
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 7B], MEM[(HI_U8 *)rp_183 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29685, MEM[(HI_U8 *)rp_183 + 1B]
	str	lr, [sp, #20]	@ MEM[(HI_U8 *)rp_183 + 7B],
	ldrb	lr, [ip, #6]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 6B], MEM[(HI_U8 *)rp_183 + 6B]
	str	lr, [sp, #16]	@ MEM[(HI_U8 *)rp_183 + 6B],
	ldrb	lr, [ip, #5]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 5B], MEM[(HI_U8 *)rp_183 + 5B]
	str	lr, [sp, #12]	@ MEM[(HI_U8 *)rp_183 + 5B],
	ldrb	lr, [ip, #4]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 4B], MEM[(HI_U8 *)rp_183 + 4B]
	str	lr, [sp, #8]	@ MEM[(HI_U8 *)rp_183 + 4B],
	ldrb	lr, [ip, #3]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 3B], MEM[(HI_U8 *)rp_183 + 3B]
	str	lr, [sp, #4]	@ MEM[(HI_U8 *)rp_183 + 3B],
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 2B], MEM[(HI_U8 *)rp_183 + 2B]
	str	ip, [sp]	@ MEM[(HI_U8 *)rp_183 + 2B],
	bl	dprint_vfmw	@
.L80:
	mov	r3, #0	@ tmp641,
	mov	r2, #0	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1,
	mov	r0, r3	@ tmp642, tmp641
	mov	r1, r3	@ tmp644, tmp641
	bfi	r0, r3, #0, #24	@ tmp642, tmp641,,
	bfi	r1, r3, #0, #24	@ tmp644, tmp641,,
	str	r0, [r5, #40]	@ tmp642, MEM[(volatile HI_S32 *)pMsgBase_16 + 40B]
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp641,,
	str	r1, [sp, #36]	@ tmp644,
	strb	r2, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #36]	@ D.29685, D32
	str	r3, [r5, #44]	@ D.29685, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	b	.L81	@
.L105:
	ldr	ip, .L106+32	@ tmp771,
	mov	r0, #4	@,
	ldr	r3, [r6, #44]	@, pHwMem_13(D)->MsgSlotAddr
	mov	r4, #0	@ i_cnt,
	ldr	r1, .L106+36	@,
	mov	r6, r5	@ ivtmp.71, pMsgBase
	ldr	r2, [ip]	@ num, num
	add	r2, r2, #1	@ D.29688, num,
	str	r2, [ip]	@ D.29688, num
	bl	dprint_vfmw	@
.L85:
	ldr	ip, [r6, #12]	@ MEM[base: _114, offset: 12B], MEM[base: _114, offset: 12B]
	mov	r2, r4	@, i_cnt
	ldr	r3, [r5, r4, asl #2]	@ MEM[base: pMsgBase_16, index: i_cnt_434, step: 4, offset: 0B], MEM[base: pMsgBase_16, index: i_cnt_434, step: 4, offset: 0B]
	mov	r0, #4	@,
	ldr	r1, .L106+40	@,
	add	r4, r4, r0	@ i_cnt, i_cnt,
	str	ip, [sp, #8]	@ MEM[base: _114, offset: 12B],
	add	r6, r6, #16	@ ivtmp.71, ivtmp.71,
	ldr	ip, [r6, #-8]	@ MEM[base: _114, offset: 8B], MEM[base: _114, offset: 8B]
	str	ip, [sp, #4]	@ MEM[base: _114, offset: 8B],
	ldr	ip, [r6, #-12]	@ MEM[base: _114, offset: 4B], MEM[base: _114, offset: 4B]
	str	ip, [sp]	@ MEM[base: _114, offset: 4B],
	bl	dprint_vfmw	@
	cmp	r4, #64	@ i_cnt,
	bne	.L85	@,
	ldr	r1, .L106+44	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.29684,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L102:
	mov	r0, #0	@,
	ldr	r3, .L106+48	@,
	mov	r2, #592	@,
	ldr	r1, .L106+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29684,
	b	.L98	@
.L101:
	mov	r0, #0	@,
	ldr	r3, .L106+56	@,
	movw	r2, #591	@,
	ldr	r1, .L106+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29684,
	b	.L98	@
.L104:
	ldr	r3, .L106+60	@,
	movw	r2, #739	@,
	ldr	r1, .L106+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29684,
	b	.L98	@
.L100:
	ldr	r3, .L106+60	@,
	movw	r2, #589	@,
	ldr	r1, .L106+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29684,
	b	.L98	@
.L107:
	.align	2
.L106:
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	g_PrintEnable
	.word	.LC17
	.word	.LC18
	.word	.LANCHOR0
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC16
	.word	.LC14
	.word	.LC15
	.word	.LC13
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
	ldr	r6, .L122	@ tmp120,
	cmp	r1, #1	@ VdhId,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r1	@ VdhId, VdhId
	add	r8, r5, r6	@ pHwMem, tmp118, tmp120
	bhi	.L118	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L119	@,
	ldr	r3, [r5, r6]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r7, r0	@ pMp2DecParam, pMp2DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L120	@,
.L113:
	add	r3, sp, #4	@,,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.29717,
	bne	.L121	@,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
.L111:
	mov	r0, r5	@, D.29717
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L120:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L114	@,
	str	r3, [r5, r6]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	b	.L113	@
.L119:
	mov	r2, #69	@,
	ldr	r1, .L122+4	@,
	mov	r0, #0	@,
	mvn	r5, #0	@ D.29717,
	bl	dprint_vfmw	@
	b	.L111	@
.L121:
	ldr	r1, .L122+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.29717,
	b	.L111	@
.L118:
	ldr	r1, .L122+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.29717,
	b	.L111	@
.L114:
	ldr	r1, .L122+16	@,
	mvn	r5, #0	@ D.29717,
	bl	dprint_vfmw	@
	b	.L111	@
.L123:
	.align	2
.L122:
	.word	g_HwMem
	.word	.LC28
	.word	.LC29
	.word	.LC27
	.word	.LC10
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC1:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC2:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC3:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC4:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC5:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC9:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_CfgReg\012\000"
.LC10:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC11:
	.ascii	"stream_base_addr = %#x\012\000"
.LC12:
	.ascii	"HEAD_INF_OFFSET = 0x%x\012\000"
.LC13:
	.ascii	"can not map down msg virtual address!\000"
	.space	2
.LC14:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC15:
	.ascii	"picture width out of range\000"
	.space	1
.LC16:
	.ascii	"picture height out of range\000"
.LC17:
	.ascii	"Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC18:
	.ascii	"Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02x 0"
	.ascii	"x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	1
.LC19:
	.ascii	"1p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC20:
	.ascii	"1p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC21:
	.ascii	"1p last phy addr = 0x%x\012\000"
	.space	3
.LC22:
	.ascii	"2p Stream Head (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC23:
	.ascii	"2p Stream Tail (8bytes): 0x%02x 0x%02x 0x%02x 0x%02"
	.ascii	"x 0x%02x 0x%02x 0x%02x 0x%02x\012\000"
	.space	2
.LC24:
	.ascii	"\012*****No.%2d Down Msg (phy addr: %#8x) *****\012"
	.ascii	"\000"
	.space	2
.LC25:
	.ascii	"\0120x%02x 0x%08x 0x%08x 0x%08x 0x%08x\012\000"
	.space	3
.LC26:
	.ascii	"\012***** Down Msg print finished *****\012\000"
	.space	2
.LC27:
	.ascii	"VdhId is wrong! MP2HAL_V200R003_StartDec\012\000"
	.space	2
.LC28:
	.ascii	"line: %d\012\000"
	.space	2
.LC29:
	.ascii	"MP2HAL_V200R003_CfgReg ERROR!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.28895, %object
	.size	num.28895, 4
num.28895:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
