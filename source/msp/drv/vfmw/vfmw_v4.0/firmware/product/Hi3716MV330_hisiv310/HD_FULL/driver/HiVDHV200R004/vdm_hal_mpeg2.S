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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_VP6_SUPPORT -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4
@ -D CFG_MAX_CHAN_NUM=4 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg2)
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
	add	r3, r5, r1, lsl #5	@ D.29417, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	r4, #0	@ i,
	str	r3, [sp, #8]	@ D.29417, %sfp
	mov	fp, r10	@ SliceNum, SliceNum
	mov	r3, r1, asl #7	@ D.29426, AddSlice0Flag,
	str	r3, [sp, #4]	@ D.29426, %sfp
	b	.L14	@
.L6:
	add	r4, r4, #1	@ i, i,
	cmp	fp, r4	@ SliceNum, i
	ble	.L18	@,
.L14:
	mov	r2, #44	@ tmp367,
	cmp	r4, #0	@ i,
	mul	r2, r2, r4	@ D.29417, tmp367, i
	movgt	r1, #1	@ tmp369,
	movle	r1, #0	@ tmp369,
	add	r5, r8, r2	@ tmp446, SliceInfo, D.29417
	ldr	r10, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	ldr	r0, [r5, #-12]	@ _113->slice_start_mbn, _113->slice_start_mbn
	cmp	r10, r0	@ _110->slice_start_mbn, _113->slice_start_mbn
	movhi	r10, #0	@, tmp377
	andls	r10, r1, #1	@,, tmp377, tmp369
	cmp	r10, #0	@ tmp377,
	bne	.L6	@,
	ldr	r9, [r8, r2]	@ D.29417, _110->BsPhyAddr
	mov	r0, r10	@ tmp383, tmp377
	ldr	r2, [r5, #16]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	and	lr, r9, #15	@ D.29417, D.29417,
	ldr	r6, [r5, #8]	@ _110->BsLenInBit, _110->BsLenInBit
	ldr	r3, [sp, #4]	@ D.29426, %sfp
	add	r2, r2, lr, lsl #3	@ D.29417, _110->BsBitOffset, D.29417,
	bfi	r0, r6, #0, #24	@ tmp383, _110->BsLenInBit,,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29417,,
	str	r0, [sp, #20]	@ tmp383,
	strb	r1, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	add	r6, r3, r4, lsl #5	@ D.29426, D.29426, i,
	ldr	r2, [sp, #20]	@ D.29417, D32
	mov	r0, #4	@,
	ldr	r1, .L24	@,
	add	r4, r4, #1	@ j, i,
	str	r2, [r7, r6]	@ D.29417, MEM[(volatile HI_S32 *)_136]
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	bic	ip, r9, #15	@ bit_stream_address_0, D.29417,
	mov	lr, r10	@ tmp392, tmp377
	rsb	ip, r3, ip	@ D.29417, StreamBaseAddr, bit_stream_address_0
	add	r2, r6, #4	@ D.29426, D.29426,
	bfi	lr, ip, #0, #24	@ tmp392, D.29417,,
	ldr	r1, .L24+4	@,
	str	lr, [r7, r2]	@ tmp392, MEM[(volatile HI_S32 *)_147]
	mov	r0, #4	@,
	mov	r2, lr	@, tmp392
	str	lr, [sp, #20]	@ tmp392,
	bl	dprint_vfmw	@
	ldr	r9, [r5, #4]	@ D.29417, _110->BsPhyAddr
	ldr	r2, [r5, #20]	@ _110->BsBitOffset, _110->BsBitOffset
	mov	r0, r10	@ tmp400, tmp377
	and	lr, r9, #15	@ D.29417, D.29417,
	ldr	r3, [r5, #12]	@ tmp495, _110->BsLenInBit
	mov	r1, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	add	r2, r2, lr, lsl #3	@ D.29417, _110->BsBitOffset, D.29417,
	bfi	r0, r3, #0, #24	@ tmp400, tmp495,,
	bfi	r1, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29417,,
	str	r0, [sp, #20]	@ tmp400,
	strb	r1, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	add	lr, r6, #8	@ D.29426, D.29426,
	ldr	r2, [sp, #20]	@ D.29417, D32
	mov	r0, #4	@,
	ldr	r1, .L24+8	@,
	str	r2, [r7, lr]	@ D.29417, MEM[(volatile HI_S32 *)_169]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #4]	@ _110->BsPhyAddr, _110->BsPhyAddr
	ldr	r1, .L24+12	@,
	mov	r0, #4	@,
	cmp	r2, #0	@ _110->BsPhyAddr,
	bicne	ip, r9, #15	@ bit_stream_address_1, D.29417,
	streq	r2, [sp, #20]	@ _110->BsPhyAddr,
	ldrne	r3, [sp]	@ StreamBaseAddr, %sfp
	rsbne	ip, r3, ip	@ D.29417, StreamBaseAddr, bit_stream_address_1
	bfine	r10, ip, #0, #24	@ tmp410, D.29417,,
	strne	r10, [sp, #20]	@ tmp410,
	ldr	r2, [sp, #20]	@ D.29417, D32
	add	ip, r6, #12	@ D.29426, D.29426,
	mov	r10, #0	@ tmp414,
	str	r2, [r7, ip]	@ D.29417, MEM[(volatile HI_S32 *)_182]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #40]	@ _110->quantiser_scale_code, _110->quantiser_scale_code
	ldr	r1, [r5, #36]	@ _110->intra_slice, _110->intra_slice
	add	ip, r6, #16	@ D.29426, D.29426,
	and	r2, r2, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->quantiser_scale_code,
	str	r10, [sp, #20]	@ tmp414, D32
	bfi	r2, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _110->intra_slice,,
	strb	r2, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r2, [sp, #20]	@ D.29417, D32
	mov	r0, #4	@,
	ldr	r1, .L24+16	@,
	str	r2, [r7, ip]	@ D.29417, MEM[(volatile HI_S32 *)_197]
	bl	dprint_vfmw	@
	ldr	r1, [r5, #32]	@ _110->slice_start_mbn, _110->slice_start_mbn
	add	r2, r6, #20	@ D.29426, D.29426,
	mov	r0, #4	@,
	bfi	r10, r1, #0, #20	@ tmp425, _110->slice_start_mbn,,
	ldr	r1, .L24+20	@,
	str	r10, [r7, r2]	@ tmp425, MEM[(volatile HI_S32 *)_207]
	mov	r2, r10	@, tmp425
	str	r10, [sp, #20]	@ tmp425,
	bl	dprint_vfmw	@
	cmp	fp, r4	@ SliceNum, j
	ble	.L9	@,
	ldr	r1, [r5, #32]	@ D.29417, _110->slice_start_mbn
	ldr	r2, [r5, #76]	@ _267->slice_start_mbn, _267->slice_start_mbn
	cmp	r1, r2	@ D.29417, _267->slice_start_mbn
	bcs	.L10	@,
	b	.L9	@
.L11:
	ldr	r3, [r5, #76]	@ MEM[base: _283, offset: 76B], MEM[base: _283, offset: 76B]
	cmp	r3, r1	@ MEM[base: _283, offset: 76B], D.29417
	bhi	.L9	@,
.L10:
	add	r4, r4, #1	@ j, j,
	add	r5, r5, #44	@ ivtmp.46, ivtmp.46,
	cmp	fp, r4	@ SliceNum, j
	bgt	.L11	@,
.L9:
	cmp	r4, fp	@ j, SliceNum
	beq	.L23	@,
	mov	r2, #44	@ tmp436,
	ldr	r3, [sp, #8]	@ D.29417, %sfp
	mla	r2, r2, r4, r8	@ tmp437, tmp436, j, SliceInfo
	add	r10, r3, r4, lsl #5	@ D.29417, D.29417, j,
	mov	r5, r10	@ next_slice_para_addr, D.29417
	ldr	r2, [r2, #32]	@ _227->slice_start_mbn, _227->slice_start_mbn
	sub	r2, r2, #1	@ slice_end_mbn, _227->slice_start_mbn,
.L13:
	add	r0, r6, #24	@ D.29426, D.29426,
	mov	ip, #0	@ tmp441,
	bfi	ip, r2, #0, #20	@ tmp441, slice_end_mbn,,
	add	r6, r6, #28	@ D.29426, D.29426,
	str	ip, [r7, r0]	@ tmp441, MEM[(volatile HI_S32 *)_243]
	sub	r4, r4, #1	@ i, j,
	mov	r2, ip	@, tmp441
	ldr	r1, .L24+24	@,
	mov	r0, #4	@,
	str	ip, [sp, #20]	@ tmp441,
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.29417
	ldr	r1, .L24+28	@,
	str	r5, [r7, r6]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_252]
	mov	r0, #4	@,
	str	r10, [sp, #20]	@ D.29417, MEM[(struct MP2SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
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
	mov	r10, #0	@ D.29417,
	mov	r5, r10	@ next_slice_para_addr, D.29417
	ldrh	r1, [r3, #152]	@ D.29418, pMp2DecParam_14(D)->PicWidthInMb
	ldrh	r2, [r3, #148]	@ D.29418, pMp2DecParam_14(D)->PicHeightInMb
	mul	r2, r2, r1	@ D.29418, D.29418, D.29418
	sub	r2, r2, #1	@ slice_end_mbn, D.29418,
	b	.L13	@
.L22:
	ldr	r6, [lr, #252]	@ D.29417, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r9, lr	@ pMp2DecParam, pMp2DecParam
	ldr	r2, [lr, #268]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	r1, #1	@ tmp325,
	and	lr, r6, #15	@ D.29417, D.29417,
	str	r1, [sp, #20]	@ tmp325,
	mov	ip, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldr	r1, .L24	@,
	add	r2, r2, lr, lsl #3	@ D.29417, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.29417,
	mov	r0, #4	@,
	bfi	ip, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29417,,
	strb	ip, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #20]	@ D.29417, D32
	str	r2, [r7]	@ D.29417, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D)]
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ StreamBaseAddr, %sfp
	bic	r1, r6, #15	@ bit_stream_address_0, D.29417,
	mov	ip, r4	@ tmp332, tmp317
	rsb	r1, r3, r1	@ D.29417, StreamBaseAddr, bit_stream_address_0
	mov	r0, #4	@,
	bfi	ip, r1, #0, #24	@ tmp332, D.29417,,
	ldr	r1, .L24+4	@,
	str	ip, [r7, #4]	@ tmp332, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 4B]
	mov	r2, ip	@, tmp332
	str	ip, [sp, #20]	@ tmp332,
	bl	dprint_vfmw	@
	ldr	r6, [r9, #256]	@ D.29417, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	ldr	r2, [r9, #272]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	ip, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	lr, r6, #15	@ D.29417, D.29417,
	str	r4, [sp, #20]	@ tmp317,
	ldr	r1, .L24+8	@,
	mov	r0, #4	@,
	add	r2, r2, lr, lsl #3	@ D.29417, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.29417,
	bfi	ip, r2, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29417,,
	strb	ip, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #20]	@ D.29417, D32
	str	r2, [r7, #8]	@ D.29417, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 8B]
	bl	dprint_vfmw	@
	ldr	r2, [r9, #256]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r3, r9	@ pMp2DecParam, pMp2DecParam
	ldr	r1, .L24+12	@,
	cmp	r2, r4	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	mov	r0, #4	@,
	bicne	r2, r6, #15	@ bit_stream_address_1, D.29417,
	streq	r2, [sp, #20]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	ldrne	r3, [sp]	@ StreamBaseAddr, %sfp
	rsbne	r2, r3, r2	@ D.29417, StreamBaseAddr, bit_stream_address_1
	bfine	r4, r2, #0, #24	@ tmp346, D.29417,,
	strne	r4, [sp, #20]	@ tmp346,
	ldr	r2, [sp, #20]	@ D.29417, D32
	mov	r4, #0	@ tmp349,
	str	r2, [r7, #12]	@ D.29417, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 12B]
	bl	dprint_vfmw	@
	ldr	r6, [sp, #12]	@ pMp2DecParam, %sfp
	str	r4, [sp, #20]	@ tmp349, D32
	mov	r0, #4	@,
	ldr	r2, [r6, #292]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code
	ldr	r1, [r6, #288]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice
	and	r2, r2, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code,
	bfi	r2, r1, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice,,
	strb	r2, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r2, [sp, #20]	@ D.29417, D32
	ldr	r1, .L24+16	@,
	str	r2, [r7, #16]	@ D.29417, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 16B]
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
	sub	ip, ip, #1	@ D.29417, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	mov	r0, #4	@,
	bfi	r2, ip, #0, #20	@ tmp363, D.29417,,
	str	r2, [r7, #24]	@ tmp363, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 24B]
	str	r2, [sp, #20]	@ tmp363,
	bl	dprint_vfmw	@
	add	r2, r5, #32	@ D.29417, SlcDnMsgPhyAddr,
	mov	r1, #1	@ AddSlice0Flag,
	str	r2, [r7, #28]	@ D.29417, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 28B]
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
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.29442, pMp2DecParam_8(D)->PictureStructure
	.pad #92
	sub	sp, sp, #92	@,,
	ldrh	ip, [r0, #152]	@ D.29444, pMp2DecParam_8(D)->PicWidthInMb
	mov	r1, #0	@ tmp138,
	cmp	r2, r3	@ D.29442,
	str	r3, [sp, #20]	@ tmp144, DnrCfg.video_standard
	strb	r1, [sp, #4]	@ tmp138, DnrCfg.dc_en
	ldreqh	r3, [r0, #150]	@ D.29444, pMp2DecParam_8(D)->FrameHeightInMb
	strb	r2, [sp, #7]	@ D.29442, DnrCfg.pic_structure
	str	ip, [sp, #28]	@ D.29444, DnrCfg.pic_width_in_mb
	strb	r1, [sp, #5]	@ tmp138, DnrCfg.db_en
	strb	r1, [sp, #6]	@ tmp138, DnrCfg.dr_en
	streq	r3, [sp, #32]	@ D.29444, DnrCfg.pic_height_in_mb
	beq	.L28	@,
	sub	r2, r2, #1	@ tmp147, D.29442,
	cmp	r2, #1	@ tmp147,
	ldrh	r2, [r0, #150]	@ D.29444, pMp2DecParam_8(D)->FrameHeightInMb
	add	r2, r2, #1	@ tmp152, D.29444,
	bichi	r2, r2, #1	@ D.29444, tmp158,
	movls	r2, r2, asr #1	@ D.29444, tmp152,
	sub	r3, r2, #1	@ D.29444, D.29444,
	str	r3, [sp, #32]	@ D.29444, DnrCfg.pic_height_in_mb
.L28:
	ldr	r2, .L33	@ tmp178,
	add	r1, r0, #45056	@ tmp167, pMp2DecParam,
	mul	r3, r3, ip	@ D.29444, D.29444, D.29444
	ldr	r7, [r1, #256]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, pMp2DecParam_8(D)->DnrMbInfoStAddr
	ldr	r4, [r2, #8]	@ D.29446, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	mov	r6, #0	@ tmp171,
	ldr	lr, [r0, #228]	@ pMp2DecParam_8(D)->VahbStride, pMp2DecParam_8(D)->VahbStride
	mov	r2, #8	@ tmp175,
	ldr	ip, [r0, #200]	@ pMp2DecParam_8(D)->CurPicPhyAddr, pMp2DecParam_8(D)->CurPicPhyAddr
	cmp	r4, r6	@ D.29446,
	ldr	r1, [r0, #224]	@ pMp2DecParam_8(D)->DispFramePhyAddr, pMp2DecParam_8(D)->DispFramePhyAddr
	mov	r5, #1	@ tmp173,
	str	r3, [sp, #24]	@ D.29444, DnrCfg.mbtodec
	bic	ip, ip, #15	@ D.29444, pMp2DecParam_8(D)->CurPicPhyAddr,
	mov	r3, lr, lsr #6	@ D.29445, pMp2DecParam_8(D)->VahbStride,
	str	r7, [sp, #76]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	str	r3, [sp, #64]	@ D.29445, DnrCfg.ddr_stride
	bic	r3, r1, #15	@ D.29444, pMp2DecParam_8(D)->DispFramePhyAddr,
	str	ip, [sp, #36]	@ D.29444, DnrCfg.dnr_ystaddr_1d
	str	r3, [sp, #40]	@ D.29444, DnrCfg.dnr_ystaddr_2d
	strb	r6, [sp, #14]	@ tmp171, DnrCfg.use_pic_qp_en
	strb	r5, [sp, #8]	@ tmp173, DnrCfg.chroma_format_idc
	str	r2, [sp, #52]	@ tmp175, DnrCfg.QP_Y
	str	r2, [sp, #60]	@ tmp175, DnrCfg.QP_V
	str	r2, [sp, #56]	@ tmp175, DnrCfg.QP_U
	beq	.L30	@,
	add	r0, sp, #4	@,,
	blx	r4	@ D.29446
	add	sp, sp, #92	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L30:
	mov	r0, r4	@, D.29446
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
	ldrh	r6, [r2, #152]	@ D.29450, pMp2DecParam_6(D)->PicWidthInMb
	mov	lr, #1	@ tmp216,
	ldrh	r3, [r2, #148]	@ D.29450, pMp2DecParam_6(D)->PicHeightInMb
	mov	ip, #0	@ tmp229,
	ldr	r4, [r0, #8]	@ D.29451, pRegInf_4(D)->basic_cfg0
	mul	r3, r3, r6	@ D.29450, D.29450, D.29450
	ldr	r6, [r4]	@ tmp194,* D.29451
	sub	r3, r3, #1	@ D.29450, D.29450,
	bfi	r6, r3, #0, #20	@ tmp194, D.29450,,
	str	r6, [r4]	@ tmp194,* D.29451
	ldr	r4, [r0, #8]	@ D.29451, pRegInf_4(D)->basic_cfg0
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _16->load_qmatrix_flag, _16->load_qmatrix_flag
	orr	r3, r3, #64	@ tmp197, _16->load_qmatrix_flag,
	strb	r3, [r4, #3]	@ tmp197, _16->load_qmatrix_flag
	ldr	r3, [r0, #8]	@ D.29451, pRegInf_4(D)->basic_cfg0
	ldrb	r4, [r3, #3]	@ zero_extendqisi2	@, _18->repair_en
	bfc	r4, #7, #1	@ _18->repair_en,,
	strb	r4, [r3, #3]	@ _18->repair_en, _18->repair_en
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3]	@ zero_extendqisi2	@, _20->video_standard
	bfi	r4, r5, #0, #4	@ _20->video_standard, tmp203,,
	strb	r4, [r3]	@ _20->video_standard, _20->video_standard
	ldr	r4, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldr	r3, [r2, #228]	@ pMp2DecParam_6(D)->VahbStride, pMp2DecParam_6(D)->VahbStride
	ldrh	r5, [r4]	@, _22->ddr_stride
	mov	r3, r3, lsr #6	@ D.29453, pMp2DecParam_6(D)->VahbStride,
	bfi	r5, r3, #4, #10	@ _22->ddr_stride, D.29453,,
	strh	r5, [r4]	@ movhi	@ _22->ddr_stride, _22->ddr_stride
	ldr	r4, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ _28->fst_slc_grp, _28->fst_slc_grp
	orr	r3, r3, #64	@ tmp210, _28->fst_slc_grp,
	strb	r3, [r4, #1]	@ tmp210, _28->fst_slc_grp
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@, _30->mv_output_en
	bfc	r4, #7, #1	@ _30->mv_output_en,,
	strb	r4, [r3, #1]	@ _30->mv_output_en, _30->mv_output_en
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrh	r4, [r3, #2]	@, _32->max_slcgrp_num
	bfi	r4, lr, #0, #12	@ _32->max_slcgrp_num, tmp216,,
	strh	r4, [r3, #2]	@ movhi	@ _32->max_slcgrp_num, _32->max_slcgrp_num
	ldr	lr, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [lr, #3]	@ zero_extendqisi2	@ _34->dblk_1d_en, _34->dblk_1d_en
	orr	r3, r3, #32	@ tmp219, _34->dblk_1d_en,
	strb	r3, [lr, #3]	@ tmp219, _34->dblk_1d_en
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _36->ppfd_en
	bfc	lr, #7, #1	@ _36->ppfd_en,,
	strb	lr, [r3, #3]	@ _36->ppfd_en, _36->ppfd_en
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _38->line_num_output_en
	bfc	lr, #4, #1	@ _38->line_num_output_en,,
	strb	lr, [r3, #3]	@ _38->line_num_output_en, _38->line_num_output_en
	ldr	r3, [r0, #12]	@ D.29455, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _40->compress_en
	bfc	lr, #6, #1	@ _40->compress_en,,
	strb	lr, [r3, #3]	@ _40->compress_en, _40->compress_en
	ldr	r3, [r0, #64]	@ D.29457, pRegInf_4(D)->FfAptEn
	ldrb	lr, [r3]	@ zero_extendqisi2	@, _42->ff_apt_en
	bfc	lr, #0, #1	@ _42->ff_apt_en,,
	strb	lr, [r3]	@ _42->ff_apt_en, _42->ff_apt_en
	ldr	r3, [r0, #60]	@ D.29458, pRegInf_4(D)->RefPicType
	str	ip, [r3]	@ tmp229, MEM[(HI_U32 *)_44]
	ldr	r3, [r0, #60]	@ D.29458, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #208]	@ pMp2DecParam_6(D)->FwdRefIsFldSave, pMp2DecParam_6(D)->FwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _46->ref_pic_type_0
	bfi	ip, lr, #0, #2	@ _46->ref_pic_type_0, pMp2DecParam_6(D)->FwdRefIsFldSave,,
	strb	ip, [r3]	@ _46->ref_pic_type_0, _46->ref_pic_type_0
	ldr	r3, [r0, #60]	@ D.29458, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #204]	@ pMp2DecParam_6(D)->BwdRefIsFldSave, pMp2DecParam_6(D)->BwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _51->ref_pic_type_1
	bfi	ip, lr, #2, #2	@ _51->ref_pic_type_1, pMp2DecParam_6(D)->BwdRefIsFldSave,,
	strb	ip, [r3]	@ _51->ref_pic_type_1, _51->ref_pic_type_1
	ldr	ip, [r0, #16]	@ D.29461, pRegInf_4(D)->avm_addr
	ldr	r3, [r1, #44]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29453, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.29453, _56->av_msg_addr
	ldr	ip, [r0, #20]	@ D.29462, pRegInf_4(D)->vam_addr
	ldr	r3, [r1, #28]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29453, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.29453, _62->va_msg_addr
	ldr	ip, [r0, #28]	@ D.29463, pRegInf_4(D)->ystaddr_1d
	ldr	r3, [r2, #200]	@ pMp2DecParam_6(D)->CurPicPhyAddr, pMp2DecParam_6(D)->CurPicPhyAddr
	bic	r3, r3, #255	@ D.29453, pMp2DecParam_6(D)->CurPicPhyAddr,
	str	r3, [ip]	@ D.29453, _67->ystaddr_1d
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ pMp2DecParam_6(D)->PictureStructure, pMp2DecParam_6(D)->PictureStructure
	ldrh	r4, [r2, #148]	@ D.29450, pMp2DecParam_6(D)->PicHeightInMb
	sub	ip, ip, #1	@ tmp245, pMp2DecParam_6(D)->PictureStructure,
	ldr	lr, [r0, #32]	@ D.29464, pRegInf_4(D)->ystride_1d
	cmp	ip, #1	@ tmp245,
	ldrh	ip, [r2, #152]	@ pMp2DecParam_6(D)->PicWidthInMb, pMp2DecParam_6(D)->PicWidthInMb
	movls	r3, #2	@ D.29450,
	movhi	r3, #1	@ D.29450,
	mul	r3, r3, r4	@ D.29450, D.29450, D.29450
	str	ip, [lr]	@ pMp2DecParam_6(D)->PicWidthInMb, _77->ystride_1d
	ldr	lr, [r0, #36]	@ D.29465, pRegInf_4(D)->uvoffset_1d
	ldrh	ip, [r2, #152]	@ D.29453, pMp2DecParam_6(D)->PicWidthInMb
	mul	r3, ip, r3	@ D.29453, D.29453, D.29450
	mov	r3, r3, asl #8	@ D.29453, D.29453,
	str	r3, [lr]	@ D.29453, _81->uvoffset_1d
	ldr	r1, [r1, #1120]	@ pHwMem_57(D)->DnrMbInfoAddr, pHwMem_57(D)->DnrMbInfoAddr
	ldr	r3, [r0, #56]	@ D.29466, pRegInf_4(D)->DnrMbInfoStAddr
	str	r1, [r3]	@ pHwMem_57(D)->DnrMbInfoAddr, _87->dnr_mbinfo_staddr
	ldr	r3, [r2, #176]	@ pMp2DecParam_6(D)->StreamLength, pMp2DecParam_6(D)->StreamLength
	cmp	r3, #0	@ pMp2DecParam_6(D)->StreamLength,
	ldreq	ip, [r2, #164]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldrne	ip, [r2, #168]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldreq	r1, [r0, #24]	@ D.29467, pRegInf_4(D)->stream_base_addr
	ldreq	r3, [r2, #156]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	ldrne	r1, [r0, #24]	@ D.29467, pRegInf_4(D)->stream_base_addr
	mov	r0, #0	@,
	ldrne	r3, [r2, #160]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	add	r3, r3, ip, lsr #3	@ BytePos, pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamBitOffset,
	bic	r3, r3, #15	@ D.29453, BytePos,
	str	r3, [r1]	@ D.29453,* D.29467
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2HAL_V200R004_MakeReg, .-MP2HAL_V200R004_MakeReg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #1	@ VdhId,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pMp2DecParam, pMp2DecParam
	mov	r0, #0	@ tmp266,
	str	r0, [sp, #20]	@ tmp266, D32
	bhi	.L66	@,
	ldr	r0, [r1]	@ MEM[(HI_S32 * *)pHwMem_18(D)], MEM[(HI_S32 * *)pHwMem_18(D)]
	cmp	r0, #0	@ MEM[(HI_S32 * *)pHwMem_18(D)],
	beq	.L67	@,
.L45:
	movw	r6, #1144	@ tmp394,
	ldr	r5, .L68	@ tmp476,
	mul	r6, r6, r2	@ tmp393, tmp394, VdhId
	mvn	r0, #0	@ tmp397,
	mov	lr, #0	@ tmp426,
	mov	r8, #3	@ tmp429,
	add	r7, r4, #45056	@ tmp452, pMp2DecParam,
	ldr	ip, [r5, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r0, [ip, #32]	@ tmp397, *_24
	ldrh	fp, [r4, #152]	@ D.29493, pMp2DecParam_27(D)->PicWidthInMb
	ldrh	r10, [r4, #148]	@ D.29493, pMp2DecParam_27(D)->PicHeightInMb
	ldr	ip, [sp, #20]	@ tmp402,
	ldr	r9, [r5, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	mul	r10, r10, fp	@ D.29493, D.29493, D.29493
	add	r10, r10, r0	@ D.29493, D.29493,
	bfi	ip, r10, #0, #20	@ tmp402, D.29493,,
	str	ip, [sp, #20]	@ tmp402,
	ubfx	r10, ip, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp402,,
	mov	ip, ip, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp402,
	orr	r10, r10, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	and	ip, ip, #62	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r10, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en,,
	orr	ip, ip, #65	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	strb	r10, [sp, #22]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	bfc	ip, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en,,
	strb	ip, [sp, #23]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	ip, [sp, #20]	@ D.29493, D32
	str	lr, [sp, #20]	@ tmp426, D32
	ldrh	r10, [sp, #22]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	str	ip, [r9, #8]	@ D.29493, *_46
	bfi	r10, r8, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp429,,
	ldr	r9, [r4, #228]	@ pMp2DecParam_27(D)->VahbStride, pMp2DecParam_27(D)->VahbStride
	ubfx	ip, r10, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strb	r8, [sp, #20]	@ tmp429, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	orr	ip, ip, #32	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	ldrh	r8, [sp, #20]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	and	ip, ip, #127	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en,
	mov	r9, r9, lsr #6	@ D.29495, pMp2DecParam_27(D)->VahbStride,
	bfi	ip, lr, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, tmp426,,
	bfi	r8, r9, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.29495,,
	strh	r10, [sp, #22]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	uxtb	r9, ip	@ tmp454, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	strb	ip, [sp, #23]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	ubfx	ip, r8, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	ldr	r10, [r7, #260]	@ pMp2DecParam_27(D)->Compress_en, pMp2DecParam_27(D)->Compress_en
	orr	ip, ip, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strh	r8, [sp, #20]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	ip, lr, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, tmp426,,
	bfi	r9, r10, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pMp2DecParam_27(D)->Compress_en,,
	strb	ip, [sp, #21]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	strb	r9, [sp, #23]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en
	ldr	ip, [r5, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r8, [sp, #20]	@ D.29493, D32
	str	lr, [sp, #20]	@ tmp426, D32
	str	r8, [ip, #12]	@ D.29493, *_69
	ldr	r8, [r5, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	ip, [r1, #44]	@ pHwMem_18(D)->MsgSlotAddr, pHwMem_18(D)->MsgSlotAddr
	bic	ip, ip, #15	@ D.29493, pHwMem_18(D)->MsgSlotAddr,
	str	ip, [r8, #16]	@ D.29493, *_80
	ldr	ip, [r5, r6]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r1, [r1, #28]	@ pHwMem_18(D)->MsgSlotAddr, pHwMem_18(D)->MsgSlotAddr
	bic	r1, r1, #15	@ D.29493, pHwMem_18(D)->MsgSlotAddr,
	str	r1, [ip, #20]	@ D.29493, *_90
	ldr	r6, [r7, #252]	@ D.29495, pMp2DecParam_27(D)->SlcNum
	cmp	r6, lr	@ D.29495,
	beq	.L54	@,
	mov	r1, r4	@ ivtmp.58, pMp2DecParam
.L55:
	ldr	ip, [r1, #252]	@ D.29495, MEM[base: _249, offset: 252B]
	cmp	ip, #0	@ D.29495,
	beq	.L49	@,
	ldr	r7, [r1, #260]	@ MEM[base: _249, offset: 260B], MEM[base: _249, offset: 260B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29495,
	cmp	r7, #0	@ MEM[base: _249, offset: 260B],
	ble	.L49	@,
	cmp	r0, ip	@ stream_base_addr, tmp_base_addr
	movcs	r0, ip	@ stream_base_addr, tmp_base_addr
.L49:
	ldr	ip, [r1, #256]	@ D.29495, MEM[base: _249, offset: 256B]
	cmp	ip, #0	@ D.29495,
	beq	.L47	@,
	ldr	r7, [r1, #264]	@ MEM[base: _249, offset: 264B], MEM[base: _249, offset: 264B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29495,
	cmp	r7, #0	@ MEM[base: _249, offset: 264B],
	ble	.L47	@,
	cmp	r0, ip	@ stream_base_addr, tmp_base_addr
	movcs	r0, ip	@ stream_base_addr, tmp_base_addr
.L47:
	add	lr, lr, #1	@ i, i,
	add	r1, r1, #44	@ ivtmp.58, ivtmp.58,
	cmp	lr, r6	@ i, D.29495
	bne	.L55	@,
	cmn	r0, #1	@ stream_base_addr,
	beq	.L54	@,
	movw	r1, #1144	@ tmp280,
	str	r0, [r3]	@ stream_base_addr, *StreamBaseAddr_102(D)
	mul	r3, r1, r2	@ tmp279, tmp280, VdhId
	movw	r1, #3075	@ tmp288,
	movt	r1, 48	@ tmp288,
	movw	ip, #43691	@ tmp344,
	movt	ip, 43690	@ tmp344,
	mov	r6, #0	@ tmp364,
	ldr	lr, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r0, [lr, #24]	@ stream_base_addr, *_110
	mov	lr, #0	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en,
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	bfi	lr, r6, #0, #1	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, tmp364,,
	str	r1, [r0, #60]	@ tmp288, *_118
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #64]	@ tmp288, *_123
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #68]	@ tmp288, *_128
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #72]	@ tmp288, *_133
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #76]	@ tmp288, *_138
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #80]	@ tmp288, *_143
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r0, #84]	@ tmp288, *_148
	ldr	r0, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r1, [r4, #200]	@ pMp2DecParam_27(D)->CurPicPhyAddr, pMp2DecParam_27(D)->CurPicPhyAddr
	bic	r1, r1, #15	@ D.29493, pMp2DecParam_27(D)->CurPicPhyAddr,
	str	r1, [r0, #96]	@ D.29493, *_158
	ldr	r1, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r0, [r4, #228]	@ D.29493, pMp2DecParam_27(D)->VahbStride
	str	r0, [r1, #100]	@ D.29493, *_168
	ldr	r1, [r4, #232]	@ D.29493, pMp2DecParam_27(D)->uv_offset
	ldr	r3, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r3, #104]	@ D.29493, *_177
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pMp2DecParam_27(D)->PictureStructure, pMp2DecParam_27(D)->PictureStructure
	umull	r0, r1, r3, ip	@ tmp343, pMp2DecParam_27(D)->PictureStructure, tmp344
	mov	r1, r1, lsr #1	@ tmp341,,
	add	r1, r1, r1, lsl #1	@ tmp347, tmp341, tmp341,
	rsb	r3, r1, r3	@ tmp348, tmp347, pMp2DecParam_27(D)->PictureStructure
	uxtb	r3, r3	@ tmp349, tmp348
	cmp	r3, #2	@ tmp349,
	ldreqh	r1, [r4, #148]	@ D.29493, pMp2DecParam_27(D)->PicHeightInMb
	ldreqh	r0, [r4, #152]	@ D.29493, pMp2DecParam_27(D)->PicWidthInMb
	ldreq	r3, [r4, #236]	@ pMp2DecParam_27(D)->DnrMbinfoStaddr, pMp2DecParam_27(D)->DnrMbinfoStaddr
	ldrne	r3, [r4, #236]	@ pMp2DecParam_27(D)->DnrMbinfoStaddr, pMp2DecParam_27(D)->DnrMbinfoStaddr
	muleq	r1, r1, r0	@ D.29493, D.29493, D.29493
	addeq	r3, r3, #127	@ D.29495, pMp2DecParam_27(D)->DnrMbinfoStaddr,
	mov	r0, #3	@,
	addeq	r3, r3, r1, lsl #3	@ D.29495, D.29495, D.29493,
	ldr	r1, .L68+4	@,
	biceq	r3, r3, #127	@ D.29495, D.29495,
	str	r3, [sp, #20]	@ pMp2DecParam_27(D)->DnrMbinfoStaddr, MEM[(struct DNR_V200_MBINFO_STADDR *)&D32].dnr_mbinfo_staddr
	movw	r3, #1144	@ tmp361,
	ldr	r7, [sp, #20]	@ D.29493, D32
	mul	r3, r3, r2	@ tmp360, tmp361, VdhId
	str	r6, [sp, #20]	@ tmp364, D32
	mov	r2, r6	@, tmp364
	ldr	ip, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r7, [ip, #144]	@ D.29493, *_199
	ldr	ip, [r4, #208]	@ pMp2DecParam_27(D)->FwdRefIsFldSave, pMp2DecParam_27(D)->FwdRefIsFldSave
	ldr	r7, [r4, #204]	@ pMp2DecParam_27(D)->BwdRefIsFldSave, pMp2DecParam_27(D)->BwdRefIsFldSave
	and	ip, ip, r0	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_27(D)->FwdRefIsFldSave,
	ldr	r4, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	bfi	ip, r7, #2, #2	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_27(D)->BwdRefIsFldSave,,
	strb	ip, [sp, #20]	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1
	ldr	ip, [sp, #20]	@ D.29493, D32
	str	r6, [sp, #20]	@ tmp364, D32
	strb	lr, [sp, #20]	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en
	str	ip, [r4, #148]	@ D.29493, *_214
	ldr	lr, [sp, #20]	@ D.29493, D32
	ldr	ip, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	lr, [ip, #152]	@ D.29493, *_222
	ldr	r3, [r5, r3]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r6, [r3, #108]	@ tmp364, *_229
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.29492, tmp364
.L64:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L66:
	ldr	r1, .L68+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29492,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L67:
	movt	r0, 4115	@,
	stmib	sp, {r1, r2, r3}	@,,,
	bl	MEM_Phy2Vir	@
	subs	ip, r0, #0	@ p32,
	beq	.L46	@,
	ldr	r1, [sp, #4]	@ pHwMem, %sfp
	ldr	r2, [sp, #8]	@ VdhId, %sfp
	ldr	r3, [sp, #12]	@ StreamBaseAddr, %sfp
	str	ip, [r1]	@ p32, MEM[(HI_S32 * *)pHwMem_18(D)]
	b	.L45	@
.L46:
	ldr	r1, .L68+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29492,
	b	.L64	@
.L54:
	mvn	r2, #0	@,
	ldr	r1, .L68+16	@,
	mov	r0, #0	@,
	str	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	mov	r2, #0	@ tmp277,
	mvn	r0, #0	@ D.29492,
	str	r2, [r3]	@ tmp277, *StreamBaseAddr_102(D)
	b	.L64	@
.L69:
	.align	2
.L68:
	.word	g_HwMem
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
	beq	.L96	@,
	ldrh	r2, [r4, #152]	@ D.29537, pMp2DecParam_18(D)->PicWidthInMb
	cmp	r2, #512	@ D.29537,
	bhi	.L97	@,
	ldrh	r1, [r4, #148]	@ D.29537, pMp2DecParam_18(D)->PicHeightInMb
	cmp	r1, #512	@ D.29537,
	bhi	.L98	@,
	ldrh	r3, [sp, #38]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	sub	r1, r1, #1	@ tmp463, D.29537,
	ldr	r0, [r4, #180]	@ pMp2DecParam_18(D)->Mpeg1Flag, pMp2DecParam_18(D)->Mpeg1Flag
	sub	r2, r2, #1	@ tmp460, D.29537,
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	mov	r7, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	mov	lr, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	mov	ip, r9	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	mov	r0, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	mov	r1, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	str	r3, [r5]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16]
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #4]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 4B]
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #8]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 8B]
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #12]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 12B]
	ldr	r3, [r4, #192]	@ pMp2DecParam_18(D)->BwdRefPhyAddr, pMp2DecParam_18(D)->BwdRefPhyAddr
	bic	r3, r3, #15	@ D.29536, pMp2DecParam_18(D)->BwdRefPhyAddr,
	str	r3, [r5, #16]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 16B]
	ldr	r3, [r4, #196]	@ pMp2DecParam_18(D)->FwdRefPhyAddr, pMp2DecParam_18(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.29536, pMp2DecParam_18(D)->FwdRefPhyAddr,
	str	r3, [r5, #20]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 20B]
	ldr	r3, [r4, #224]	@ pMp2DecParam_18(D)->DispFramePhyAddr, pMp2DecParam_18(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.29536, pMp2DecParam_18(D)->DispFramePhyAddr,
	str	r3, [r5, #24]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 24B]
	ldr	r3, [r4, #240]	@ pMp2DecParam_18(D)->PmvColmbPhyAddr, pMp2DecParam_18(D)->PmvColmbPhyAddr
	bic	r3, r3, #15	@ D.29539, pMp2DecParam_18(D)->PmvColmbPhyAddr,
	str	r3, [r5, #28]	@ D.29539, MEM[(volatile HI_S32 *)pMsgBase_16 + 28B]
	ldr	r0, [r4, #156]	@, pMp2DecParam_18(D)->StreamPhyAddr
	str	r3, [sp, #36]	@ D.29539, MEM[(struct MP2DNMSG_V200R004_D7 *)&D32].current_pmv_addr
	bl	MEM_Phy2Vir	@
	mov	r7, r0	@ D.29545,
	ldr	r0, [r4, #160]	@, pMp2DecParam_18(D)->StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	cmp	r1, #0	@ pMp2DecParam_18(D)->StreamLength,
	mov	r9, r0	@ D.29545,
	beq	.L99	@,
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r1, #0	@ tmp657,
	ldr	r8, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, r1	@ tmp660, tmp657
	ldr	ip, [r4, #160]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r7, r1	@ D.29545,
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	add	r8, ip, r8, lsr #3	@ BytePos1, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	add	r3, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	bic	lr, r8, #15	@ stream_base_addr, BytePos1,
	bic	ip, r3, #15	@ D.29539, BytePos0,
	and	r2, r3, #15	@ tmp663, BytePos0,
	rsb	r3, lr, ip	@ D.29539, stream_base_addr, D.29539
	bfi	r1, r3, #0, #24	@ tmp657, D.29539,,
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #36]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L78	@,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L102	@,
	add	ip, r7, r3, lsr #3	@ rp, D.29545, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ D.29536, *rp_248
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_248 + 7B], MEM[(HI_U8 *)rp_248 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_248 + 1B]
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
	ldr	r1, .L102+4	@,
	mov	r3, r3, lsr #3	@ D.29539, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp691
	sub	r3, r3, #8	@ D.29548, D.29539,
	add	r3, r3, r2, asr #3	@ D.29548, D.29548, pMp2DecParam_18(D)->StreamLength,
	add	ip, r7, r3	@ rp, D.29545, D.29548
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ D.29536, *rp_273
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_273 + 7B], MEM[(HI_U8 *)rp_273 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_273 + 1B]
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
	ldr	r1, .L102+8	@,
	add	r2, r2, r3	@, pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamPhyAddr
	bl	dprint_vfmw	@
.L78:
	mov	r3, #0	@ tmp707,
	and	r8, r8, #15	@ tmp714, BytePos1,
	mov	r2, r3	@ tmp708, tmp707
	bfi	r2, r3, #0, #24	@ tmp708, tmp707,,
	str	r2, [r5, #40]	@ tmp708, MEM[(volatile HI_S32 *)pMsgBase_16 + 40B]
	cmp	r9, r3	@ D.29545,
	ldr	r1, [r4, #176]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	ldr	r2, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	add	r1, r1, #24	@ D.29536, pMp2DecParam_18(D)->StreamLength,
	bfi	r3, r1, #0, #24	@ tmp712, D.29536,,
	str	r3, [sp, #36]	@ tmp712,
	and	r3, r2, #7	@ tmp719, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [sp, #39]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	add	r3, r3, r8, lsl #3	@ tmp722, tmp719, tmp714,
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp722,,
	strb	r2, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #44]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	beq	.L77	@,
	ldr	r3, [r4, #168]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L102+12	@,
	add	ip, r9, r3, lsr #3	@ rp, D.29545, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r9, r3, lsr #3]	@ zero_extendqisi2	@ D.29536, *rp_321
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_321 + 7B], MEM[(HI_U8 *)rp_321 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_321 + 1B]
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
	ldr	r1, .L102+16	@,
	mov	r3, r3, lsr #3	@ D.29539, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp742
	sub	r3, r3, #8	@ D.29548, D.29539,
	add	r3, r3, r2, asr #3	@ D.29548, D.29548, pMp2DecParam_18(D)->StreamLength,
	add	ip, r9, r3	@ rp, D.29545, D.29548
	ldrb	r2, [r9, r3]	@ zero_extendqisi2	@ D.29536, *rp_346
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_346 + 7B], MEM[(HI_U8 *)rp_346 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_346 + 1B]
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
.L77:
	add	r2, r5, #64	@ ivtmp.86, pMsgBase,
	add	r7, r4, #64	@ D.29550, pMp2DecParam,
	mov	r3, r4	@ ivtmp.82, pMp2DecParam
.L79:
	ldrb	r1, [r3, #17]	@ zero_extendqisi2	@ MEM[base: _438, offset: 17B], MEM[base: _438, offset: 17B]
	add	r3, r3, #2	@ ivtmp.82, ivtmp.82,
	ldrb	lr, [r3, #78]	@ zero_extendqisi2	@ MEM[base: _438, offset: 80B], MEM[base: _438, offset: 80B]
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ MEM[base: _438, offset: 81B], MEM[base: _438, offset: 81B]
	ldrb	r0, [r3, #14]	@ zero_extendqisi2	@ MEM[base: _438, offset: 16B], MEM[base: _438, offset: 16B]
	cmp	r3, r7	@ ivtmp.82, D.29550
	strb	lr, [sp, #36]	@ MEM[base: _438, offset: 80B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_even
	strb	ip, [sp, #38]	@ MEM[base: _438, offset: 81B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_odd
	strb	r0, [sp, #37]	@ MEM[base: _438, offset: 16B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_even
	strb	r1, [sp, #39]	@ MEM[base: _438, offset: 17B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #36]	@ D.29536, D32
	str	r1, [r2], #4	@ D.29536, MEM[(volatile HI_S32 *)_378]
	bne	.L79	@,
	ldr	r3, [r6, #1084]	@ pHwMem_13(D)->PmvTopAddr, pHwMem_13(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.29539, pHwMem_13(D)->PmvTopAddr,
	str	r3, [r5, #192]	@ D.29539, MEM[(volatile HI_S32 *)pMsgBase_16 + 192B]
	ldr	r7, [r6, #44]	@ pHwMem_13(D)->MsgSlotAddr, pHwMem_13(D)->MsgSlotAddr
	str	r3, [sp, #36]	@ D.29539, MEM[(struct MP2DNMSG_V200R004_D48 *)&D32].pmv_top_addr
	bic	r7, r7, #15	@ D.29539, pHwMem_13(D)->MsgSlotAddr,
	add	r7, r7, #256	@ SlcDnMsgPhyAddr, D.29539,
	mov	r0, r7	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L100	@,
	ldr	r3, [sp, #28]	@, %sfp
	mov	r0, r4	@, pMp2DecParam
	str	r7, [r5, #252]	@ SlcDnMsgPhyAddr, MEM[(volatile HI_S32 *)pMsgBase_16 + 252B]
	mov	r2, r7	@, SlcDnMsgPhyAddr
	str	r7, [sp, #36]	@ SlcDnMsgPhyAddr, MEM[(struct MP2DNMSG_V200R004_D63 *)&D32].first_slc_dnmsg_addr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	ldr	r3, .L102+20	@ tmp768,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r0, r3, #16	@ D.29539, g_PrintEnable,
	bne	.L101	@,
.L94:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L99:
	ldr	r2, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, r1	@ tmp599, pMp2DecParam_18(D)->StreamLength
	ldr	r3, [r4, #156]	@ pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamPhyAddr
	cmp	r7, #0	@ D.29545,
	str	r1, [r5, #32]	@ pMp2DecParam_18(D)->StreamLength, MEM[(volatile HI_S32 *)pMsgBase_16 + 32B]
	ldr	r1, [r4, #172]	@ pMp2DecParam_18(D)->StreamLength, pMp2DecParam_18(D)->StreamLength
	add	r2, r3, r2, lsr #3	@ BytePos0, pMp2DecParam_18(D)->StreamPhyAddr, pMp2DecParam_18(D)->StreamBitOffset,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	and	r2, r2, #15	@ tmp601, BytePos0,
	add	r1, r1, #24	@ D.29536, pMp2DecParam_18(D)->StreamLength,
	bfi	r0, r1, #0, #24	@ tmp599, D.29536,,
	and	r3, r3, #7	@ tmp606, pMp2DecParam_18(D)->StreamBitOffset,
	str	r0, [sp, #36]	@ tmp599,
	add	r3, r3, r2, lsl #3	@ tmp609, tmp606, tmp601,
	ldrb	r1, [sp, #39]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	bfi	r1, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp609,,
	strb	r1, [sp, #39]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #36]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 36B]
	beq	.L76	@,
	ldr	r3, [r4, #164]	@ pMp2DecParam_18(D)->StreamBitOffset, pMp2DecParam_18(D)->StreamBitOffset
	mov	r0, #8	@,
	ldr	r1, .L102+24	@,
	add	ip, r7, r3, lsr #3	@ rp, D.29545, pMp2DecParam_18(D)->StreamBitOffset,
	ldrb	r2, [r7, r3, lsr #3]	@ zero_extendqisi2	@ D.29536, *rp_158
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_158 + 7B], MEM[(HI_U8 *)rp_158 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_158 + 1B]
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
	ldr	r1, .L102+28	@,
	mov	r3, r3, lsr #3	@ D.29539, pMp2DecParam_18(D)->StreamBitOffset,
	movlt	r2, ip	@ pMp2DecParam_18(D)->StreamLength, tmp629
	sub	r3, r3, #8	@ D.29548, D.29539,
	add	r3, r3, r2, asr #3	@ D.29548, D.29548, pMp2DecParam_18(D)->StreamLength,
	add	ip, r7, r3	@ rp, D.29545, D.29548
	ldrb	r2, [r7, r3]	@ zero_extendqisi2	@ D.29536, *rp_183
	ldrb	lr, [ip, #7]	@ zero_extendqisi2	@ MEM[(HI_U8 *)rp_183 + 7B], MEM[(HI_U8 *)rp_183 + 7B]
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.29536, MEM[(HI_U8 *)rp_183 + 1B]
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
.L76:
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
	ldr	r3, [sp, #36]	@ D.29536, D32
	str	r3, [r5, #44]	@ D.29536, MEM[(volatile HI_S32 *)pMsgBase_16 + 44B]
	b	.L77	@
.L101:
	ldr	ip, .L102+32	@ tmp771,
	mov	r0, #4	@,
	ldr	r3, [r6, #44]	@, pHwMem_13(D)->MsgSlotAddr
	mov	r4, #0	@ i_cnt,
	ldr	r1, .L102+36	@,
	mov	r6, r5	@ ivtmp.70, pMsgBase
	ldr	r2, [ip]	@ num, num
	add	r2, r2, #1	@ D.29539, num,
	str	r2, [ip]	@ D.29539, num
	bl	dprint_vfmw	@
.L81:
	ldr	ip, [r6, #12]	@ MEM[base: _114, offset: 12B], MEM[base: _114, offset: 12B]
	mov	r2, r4	@, i_cnt
	ldr	r3, [r5, r4, asl #2]	@ MEM[base: pMsgBase_16, index: i_cnt_434, step: 4, offset: 0B], MEM[base: pMsgBase_16, index: i_cnt_434, step: 4, offset: 0B]
	mov	r0, #4	@,
	ldr	r1, .L102+40	@,
	add	r4, r4, r0	@ i_cnt, i_cnt,
	str	ip, [sp, #8]	@ MEM[base: _114, offset: 12B],
	add	r6, r6, #16	@ ivtmp.70, ivtmp.70,
	ldr	ip, [r6, #-8]	@ MEM[base: _114, offset: 8B], MEM[base: _114, offset: 8B]
	str	ip, [sp, #4]	@ MEM[base: _114, offset: 8B],
	ldr	ip, [r6, #-12]	@ MEM[base: _114, offset: 4B], MEM[base: _114, offset: 4B]
	str	ip, [sp]	@ MEM[base: _114, offset: 4B],
	bl	dprint_vfmw	@
	cmp	r4, #64	@ i_cnt,
	bne	.L81	@,
	ldr	r1, .L102+44	@,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.29535,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L98:
	mov	r0, #0	@,
	ldr	r3, .L102+48	@,
	mov	r2, #592	@,
	ldr	r1, .L102+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29535,
	b	.L94	@
.L97:
	mov	r0, #0	@,
	ldr	r3, .L102+56	@,
	movw	r2, #591	@,
	ldr	r1, .L102+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29535,
	b	.L94	@
.L100:
	ldr	r3, .L102+60	@,
	movw	r2, #739	@,
	ldr	r1, .L102+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29535,
	b	.L94	@
.L96:
	ldr	r3, .L102+60	@,
	movw	r2, #589	@,
	ldr	r1, .L102+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29535,
	b	.L94	@
.L103:
	.align	2
.L102:
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
	movw	r5, #1144	@ tmp119,
	mul	r5, r5, r1	@ tmp118, tmp119, VdhId
	ldr	r6, .L118	@ tmp120,
	cmp	r1, #1	@ VdhId,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r1	@ VdhId, VdhId
	add	r8, r5, r6	@ pHwMem, tmp118, tmp120
	bhi	.L114	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L115	@,
	ldr	r3, [r5, r6]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r7, r0	@ pMp2DecParam, pMp2DecParam
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L116	@,
.L109:
	add	r3, sp, #4	@,,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.29568,
	bne	.L117	@,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r7	@, pMp2DecParam
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
.L107:
	mov	r0, r5	@, D.29568
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L116:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L110	@,
	str	r3, [r5, r6]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	b	.L109	@
.L115:
	mov	r2, #69	@,
	ldr	r1, .L118+4	@,
	mov	r0, #0	@,
	mvn	r5, #0	@ D.29568,
	bl	dprint_vfmw	@
	b	.L107	@
.L117:
	ldr	r1, .L118+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.29568,
	b	.L107	@
.L114:
	ldr	r1, .L118+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r5, #0	@ D.29568,
	b	.L107	@
.L110:
	ldr	r1, .L118+16	@,
	mvn	r5, #0	@ D.29568,
	bl	dprint_vfmw	@
	b	.L107	@
.L119:
	.align	2
.L118:
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
	.type	num.28753, %object
	.size	num.28753, 4
num.28753:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
