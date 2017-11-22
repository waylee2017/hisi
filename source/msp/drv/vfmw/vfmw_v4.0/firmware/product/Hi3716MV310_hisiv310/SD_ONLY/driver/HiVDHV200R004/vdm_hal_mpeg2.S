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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
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
	add	lr, r0, #45056	@ tmp319, pMp2DecParam,
	ldr	ip, [r0, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	mov	r9, r3	@ StreamBaseAddr, StreamBaseAddr
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	lr, [lr, #252]	@ SliceNum, pMp2DecParam_14(D)->SlcNum
	cmp	ip, #0	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	add	r8, r0, #252	@ SliceInfo, pMp2DecParam,
	mov	r4, #0	@ tmp317,
	moveq	r3, ip	@ AddSlice0Flag, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	beq	.L2	@,
	ldr	r3, [r0, #252]	@ D.28954, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	mov	r6, #1	@ tmp325,
	ldr	ip, [r0, #268]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	mov	r5, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	and	r7, r3, #15	@ D.28954, D.28954,
	str	r6, [sp, #20]	@ tmp325,
	bic	r3, r3, #15	@ bit_stream_address_0, D.28954,
	mov	r6, r4	@ tmp331, tmp317
	add	ip, ip, r7, lsl #3	@ D.28954, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.28954,
	rsb	r3, r9, r3	@ D.28954, StreamBaseAddr, bit_stream_address_0
	bfi	r5, ip, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.28954,,
	strb	r5, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	ip, [sp, #20]	@ D.28955, D32
	bfi	r6, r3, #0, #24	@ tmp331, D.28954,,
	str	r4, [sp, #20]	@ tmp317,
	mov	r5, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	str	ip, [r1]	@ D.28955, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D)]
	str	r6, [r1, #4]	@ tmp331, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 4B]
	ldr	r3, [r0, #256]	@ D.28954, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	ldr	ip, [r0, #272]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset
	and	r6, r3, #15	@ D.28954, D.28954,
	add	ip, ip, r6, lsl #3	@ D.28954, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsBitOffset, D.28954,
	bfi	r5, ip, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.28954,,
	strb	r5, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	ip, [sp, #20]	@ D.28955, D32
	add	r5, r2, #32	@ D.28954, SlcDnMsgPhyAddr,
	str	ip, [r1, #8]	@ D.28955, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 8B]
	ldr	ip, [r0, #256]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr
	cmp	ip, r4	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	bicne	ip, r3, #15	@ bit_stream_address_1, D.28954,
	streq	ip, [sp, #20]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].BsPhyAddr,
	movne	r3, r4	@ tmp343, tmp317
	movne	r4, r9	@ StreamBaseAddr, StreamBaseAddr
	rsbne	ip, r4, ip	@ D.28954, StreamBaseAddr, bit_stream_address_1
	bfine	r3, ip, #0, #24	@ tmp343, D.28954,,
	strne	r3, [sp, #20]	@ tmp343,
	ldr	ip, [sp, #20]	@ D.28955, D32
	mov	r3, #0	@ tmp345,
	str	r3, [sp, #20]	@ tmp345, D32
	mov	r6, r3	@ tmp353, tmp345
	bfi	r6, r3, #0, #20	@ tmp353, tmp345,,
	mov	r4, r3	@ tmp357, tmp345
	str	ip, [r1, #12]	@ D.28955, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 12B]
	mov	r3, #1	@ AddSlice0Flag,
	ldr	ip, [r0, #292]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code
	ldr	r7, [r0, #288]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice
	and	ip, ip, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].quantiser_scale_code,
	bfi	ip, r7, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].intra_slice,,
	strb	ip, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	ip, [sp, #20]	@ D.28955, D32
	str	ip, [r1, #16]	@ D.28955, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 16B]
	str	r6, [r1, #20]	@ tmp353, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 20B]
	ldr	ip, [r0, #284]	@ MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn
	sub	ip, ip, #1	@ D.28954, MEM[(struct MP2_SLCSTR_S *)pMp2DecParam_14(D) + 252B].slice_start_mbn,
	bfi	r4, ip, #0, #20	@ tmp357, D.28954,,
	str	r4, [r1, #24]	@ tmp357, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 24B]
	str	r5, [r1, #28]	@ D.28954, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_31(D) + 28B]
.L2:
	cmp	lr, #0	@ SliceNum,
	ble	.L18	@,
	add	r2, r2, r3, lsl #5	@ D.28954, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	fp, #44	@ tmp432,
	str	r2, [sp, #8]	@ D.28954, %sfp
	mov	r3, r3, asl #7	@ D.28963, AddSlice0Flag,
	mov	r2, #0	@ i,
	str	r3, [sp, #4]	@ D.28963, %sfp
	str	r0, [sp, #12]	@ pMp2DecParam, %sfp
	mov	r10, r9	@ StreamBaseAddr, StreamBaseAddr
	b	.L14	@
.L6:
	add	r2, r2, #1	@ i, i,
	cmp	lr, r2	@ SliceNum, i
	ble	.L18	@,
.L14:
	mul	ip, fp, r2	@ D.28954, tmp432, i
	cmp	r2, #0	@ i,
	movgt	r4, #1	@ tmp362,
	movle	r4, #0	@ tmp362,
	add	r3, r8, ip	@ tmp431, SliceInfo, D.28954
	ldr	r5, [r3, #32]	@ _103->slice_start_mbn, _103->slice_start_mbn
	ldr	r0, [r3, #-12]	@ _106->slice_start_mbn, _106->slice_start_mbn
	cmp	r5, r0	@ _103->slice_start_mbn, _106->slice_start_mbn
	movhi	r0, #0	@, tmp370
	andls	r0, r4, #1	@,, tmp370, tmp362
	cmp	r0, #0	@ tmp370,
	bne	.L6	@,
	ldr	r6, [r8, ip]	@ D.28954, _103->BsPhyAddr
	mov	r4, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldr	r7, [r3, #16]	@ _103->BsBitOffset, _103->BsBitOffset
	mov	r5, r0	@ tmp376, tmp370
	and	ip, r6, #15	@ D.28954, D.28954,
	ldr	r9, [r3, #8]	@ _103->BsLenInBit, _103->BsLenInBit
	bic	r6, r6, #15	@ bit_stream_address_0, D.28954,
	add	ip, r7, ip, lsl #3	@ D.28954, _103->BsBitOffset, D.28954,
	bfi	r5, r9, #0, #24	@ tmp376, _103->BsLenInBit,,
	bfi	r4, ip, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.28954,,
	ldr	ip, [sp, #4]	@ D.28963, %sfp
	str	r5, [sp, #20]	@ tmp376,
	rsb	r6, r10, r6	@ D.28954, StreamBaseAddr, bit_stream_address_0
	strb	r4, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP2SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	add	ip, ip, r2, lsl #5	@ D.28963, D.28963, i,
	ldr	r7, [sp, #20]	@ D.28955, D32
	add	r5, ip, #4	@ D.28963, D.28963,
	mov	r4, r0	@ tmp384, tmp370
	bfi	r4, r6, #0, #24	@ tmp384, D.28954,,
	mov	r6, #0	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	add	r2, r2, #1	@ j, i,
	str	r7, [r1, ip]	@ D.28955, MEM[(volatile HI_S32 *)_129]
	mov	r7, r0	@ tmp391, tmp370
	str	r4, [r1, r5]	@ tmp384, MEM[(volatile HI_S32 *)_139]
	ldr	r4, [r3, #4]	@ D.28954, _103->BsPhyAddr
	ldr	r5, [r3, #20]	@ _103->BsBitOffset, _103->BsBitOffset
	and	r9, r4, #15	@ D.28954, D.28954,
	add	r5, r5, r9, lsl #3	@ D.28954, _103->BsBitOffset, D.28954,
	ldr	r9, [r3, #12]	@ tmp471, _103->BsLenInBit
	bfi	r6, r5, #0, #7	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.28954,,
	add	r5, ip, #8	@ D.28963, D.28963,
	bfi	r7, r9, #0, #24	@ tmp391, tmp471,,
	str	r7, [sp, #20]	@ tmp391,
	strb	r6, [sp, #23]	@ MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP2SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r6, [sp, #20]	@ D.28955, D32
	str	r6, [r1, r5]	@ D.28955, MEM[(volatile HI_S32 *)_160]
	ldr	r5, [r3, #4]	@ _103->BsPhyAddr, _103->BsPhyAddr
	cmp	r5, #0	@ _103->BsPhyAddr,
	mov	r5, #0	@ tmp473,
	bicne	r4, r4, #15	@ bit_stream_address_1, D.28954,
	rsbne	r4, r10, r4	@ D.28954, StreamBaseAddr, bit_stream_address_1
	moveq	r0, #0	@ tmp472,
	bfine	r0, r4, #0, #24	@ tmp400, D.28954,,
	str	r0, [sp, #20]	@ tmp472,
	ldr	r4, [sp, #20]	@ D.28955, D32
	add	r0, ip, #12	@ D.28963, D.28963,
	str	r5, [sp, #20]	@ tmp473, D32
	add	r5, ip, #16	@ D.28963, D.28963,
	cmp	lr, r2	@ SliceNum, j
	str	r4, [r1, r0]	@ D.28955, MEM[(volatile HI_S32 *)_172]
	ldr	r0, [r3, #40]	@ _103->quantiser_scale_code, _103->quantiser_scale_code
	ldr	r4, [r3, #36]	@ _103->intra_slice, _103->intra_slice
	and	r0, r0, #63	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _103->quantiser_scale_code,
	bfi	r0, r4, #6, #1	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, _103->intra_slice,,
	strb	r0, [sp, #20]	@ MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice, MEM[(struct MP2SLCDNMSG_V200R004_D4 *)&D32].intra_slice
	ldr	r6, [sp, #20]	@ D.28955, D32
	add	r0, ip, #20	@ D.28963, D.28963,
	mov	r4, #0	@ tmp413,
	str	r6, [r1, r5]	@ D.28955, MEM[(volatile HI_S32 *)_186]
	ldr	r5, [r3, #32]	@ _103->slice_start_mbn, _103->slice_start_mbn
	bfi	r4, r5, #0, #20	@ tmp413, _103->slice_start_mbn,,
	str	r4, [sp, #20]	@ tmp413,
	str	r4, [r1, r0]	@ tmp413, MEM[(volatile HI_S32 *)_195]
	ble	.L9	@,
	ldr	r4, [r3, #32]	@ D.28954, _103->slice_start_mbn
	ldr	r0, [r3, #76]	@ _252->slice_start_mbn, _252->slice_start_mbn
	cmp	r4, r0	@ D.28954, _252->slice_start_mbn
	bcs	.L10	@,
	b	.L9	@
.L11:
	ldr	r0, [r3, #76]	@ MEM[base: _268, offset: 76B], MEM[base: _268, offset: 76B]
	cmp	r0, r4	@ MEM[base: _268, offset: 76B], D.28954
	bhi	.L9	@,
.L10:
	add	r2, r2, #1	@ j, j,
	add	r3, r3, #44	@ ivtmp.47, ivtmp.47,
	cmp	lr, r2	@ SliceNum, j
	bgt	.L11	@,
.L9:
	cmp	r2, lr	@ j, SliceNum
	mov	r5, #0	@ tmp428,
	ldreq	r3, [sp, #12]	@ pMp2DecParam, %sfp
	moveq	r0, #0	@ next_slice_para_addr,
	mlane	r3, fp, r2, r8	@ tmp424, tmp432, j, SliceInfo
	ldrne	r0, [sp, #8]	@ D.28954, %sfp
	ldreqh	r4, [r3, #152]	@ D.28955, pMp2DecParam_14(D)->PicWidthInMb
	ldreqh	r3, [r3, #148]	@ D.28955, pMp2DecParam_14(D)->PicHeightInMb
	addne	r0, r0, r2, lsl #5	@ next_slice_para_addr, D.28954, j,
	sub	r2, r2, #1	@ i, j,
	add	r2, r2, #1	@ i, i,
	muleq	r3, r3, r4	@ D.28955, D.28955, D.28955
	ldrne	r3, [r3, #32]	@ _214->slice_start_mbn, _214->slice_start_mbn
	add	r4, ip, #24	@ D.28963, D.28963,
	cmp	lr, r2	@ SliceNum, i
	add	ip, ip, #28	@ D.28963, D.28963,
	sub	r3, r3, #1	@ slice_end_mbn, _214->slice_start_mbn,
	bfi	r5, r3, #0, #20	@ tmp428, slice_end_mbn,,
	str	r5, [r1, r4]	@ tmp428, MEM[(volatile HI_S32 *)_230]
	str	r0, [r1, ip]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)_238]
	bgt	.L14	@,
.L18:
	mov	r0, #0	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
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
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.28971, pMp2DecParam_8(D)->PictureStructure
	.pad #92
	sub	sp, sp, #92	@,,
	ldrh	ip, [r0, #152]	@ D.28973, pMp2DecParam_8(D)->PicWidthInMb
	mov	r1, #0	@ tmp138,
	cmp	r2, r3	@ D.28971,
	str	r3, [sp, #20]	@ tmp144, DnrCfg.video_standard
	strb	r1, [sp, #4]	@ tmp138, DnrCfg.dc_en
	ldreqh	r3, [r0, #150]	@ D.28973, pMp2DecParam_8(D)->FrameHeightInMb
	strb	r2, [sp, #7]	@ D.28971, DnrCfg.pic_structure
	str	ip, [sp, #28]	@ D.28973, DnrCfg.pic_width_in_mb
	strb	r1, [sp, #5]	@ tmp138, DnrCfg.db_en
	strb	r1, [sp, #6]	@ tmp138, DnrCfg.dr_en
	streq	r3, [sp, #32]	@ D.28973, DnrCfg.pic_height_in_mb
	beq	.L24	@,
	sub	r2, r2, #1	@ tmp147, D.28971,
	cmp	r2, #1	@ tmp147,
	ldrh	r2, [r0, #150]	@ D.28973, pMp2DecParam_8(D)->FrameHeightInMb
	add	r2, r2, #1	@ tmp152, D.28973,
	bichi	r2, r2, #1	@ D.28973, tmp158,
	movls	r2, r2, asr #1	@ D.28973, tmp152,
	sub	r3, r2, #1	@ D.28973, D.28973,
	str	r3, [sp, #32]	@ D.28973, DnrCfg.pic_height_in_mb
.L24:
	ldr	r2, .L31	@ tmp178,
	add	r1, r0, #45056	@ tmp167, pMp2DecParam,
	mul	r3, r3, ip	@ D.28973, D.28973, D.28973
	ldr	r7, [r1, #256]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, pMp2DecParam_8(D)->DnrMbInfoStAddr
	ldr	r4, [r2, #8]	@ D.28975, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	mov	r6, #0	@ tmp171,
	ldr	lr, [r0, #228]	@ pMp2DecParam_8(D)->VahbStride, pMp2DecParam_8(D)->VahbStride
	mov	r2, #8	@ tmp175,
	ldr	r1, [r0, #224]	@ pMp2DecParam_8(D)->DispFramePhyAddr, pMp2DecParam_8(D)->DispFramePhyAddr
	cmp	r4, r6	@ D.28975,
	ldr	ip, [r0, #200]	@ pMp2DecParam_8(D)->CurPicPhyAddr, pMp2DecParam_8(D)->CurPicPhyAddr
	mov	r5, #1	@ tmp173,
	str	r3, [sp, #24]	@ D.28973, DnrCfg.mbtodec
	mov	r3, lr, lsr #6	@ D.28974, pMp2DecParam_8(D)->VahbStride,
	bic	r0, ip, #15	@ D.28973, pMp2DecParam_8(D)->CurPicPhyAddr,
	str	r3, [sp, #64]	@ D.28974, DnrCfg.ddr_stride
	str	r7, [sp, #76]	@ pMp2DecParam_8(D)->DnrMbInfoStAddr, DnrCfg.dnr_info_addr
	bic	r3, r1, #15	@ D.28973, pMp2DecParam_8(D)->DispFramePhyAddr,
	str	r0, [sp, #36]	@ D.28973, DnrCfg.dnr_ystaddr_1d
	str	r3, [sp, #40]	@ D.28973, DnrCfg.dnr_ystaddr_2d
	strb	r6, [sp, #14]	@ tmp171, DnrCfg.use_pic_qp_en
	strb	r5, [sp, #8]	@ tmp173, DnrCfg.chroma_format_idc
	str	r2, [sp, #52]	@ tmp175, DnrCfg.QP_Y
	str	r2, [sp, #60]	@ tmp175, DnrCfg.QP_V
	str	r2, [sp, #56]	@ tmp175, DnrCfg.QP_U
	beq	.L22	@,
	add	r0, sp, #4	@,,
	blx	r4	@ D.28975
.L22:
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
	ldrh	r6, [r2, #152]	@ D.28978, pMp2DecParam_6(D)->PicWidthInMb
	mov	lr, #1	@ tmp216,
	ldrh	r3, [r2, #148]	@ D.28978, pMp2DecParam_6(D)->PicHeightInMb
	mov	ip, #0	@ tmp229,
	ldr	r4, [r0, #8]	@ D.28979, pRegInf_4(D)->basic_cfg0
	mul	r3, r3, r6	@ D.28978, D.28978, D.28978
	ldr	r6, [r4]	@ tmp194,* D.28979
	sub	r3, r3, #1	@ D.28978, D.28978,
	bfi	r6, r3, #0, #20	@ tmp194, D.28978,,
	str	r6, [r4]	@ tmp194,* D.28979
	ldr	r4, [r0, #8]	@ D.28979, pRegInf_4(D)->basic_cfg0
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _16->load_qmatrix_flag, _16->load_qmatrix_flag
	orr	r3, r3, #64	@ tmp197, _16->load_qmatrix_flag,
	strb	r3, [r4, #3]	@ tmp197, _16->load_qmatrix_flag
	ldr	r3, [r0, #8]	@ D.28979, pRegInf_4(D)->basic_cfg0
	ldrb	r4, [r3, #3]	@ zero_extendqisi2	@, _18->repair_en
	bfc	r4, #7, #1	@ _18->repair_en,,
	strb	r4, [r3, #3]	@ _18->repair_en, _18->repair_en
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3]	@ zero_extendqisi2	@, _20->video_standard
	bfi	r4, r5, #0, #4	@ _20->video_standard, tmp203,,
	strb	r4, [r3]	@ _20->video_standard, _20->video_standard
	ldr	r4, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldr	r3, [r2, #228]	@ pMp2DecParam_6(D)->VahbStride, pMp2DecParam_6(D)->VahbStride
	ldrh	r5, [r4]	@, _22->ddr_stride
	mov	r3, r3, lsr #6	@ D.28981, pMp2DecParam_6(D)->VahbStride,
	bfi	r5, r3, #4, #10	@ _22->ddr_stride, D.28981,,
	strh	r5, [r4]	@ movhi	@ _22->ddr_stride, _22->ddr_stride
	ldr	r4, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ _28->fst_slc_grp, _28->fst_slc_grp
	orr	r3, r3, #64	@ tmp210, _28->fst_slc_grp,
	strb	r3, [r4, #1]	@ tmp210, _28->fst_slc_grp
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	r4, [r3, #1]	@ zero_extendqisi2	@, _30->mv_output_en
	bfc	r4, #7, #1	@ _30->mv_output_en,,
	strb	r4, [r3, #1]	@ _30->mv_output_en, _30->mv_output_en
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrh	r4, [r3, #2]	@, _32->max_slcgrp_num
	bfi	r4, lr, #0, #12	@ _32->max_slcgrp_num, tmp216,,
	strh	r4, [r3, #2]	@ movhi	@ _32->max_slcgrp_num, _32->max_slcgrp_num
	ldr	lr, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	r3, [lr, #3]	@ zero_extendqisi2	@ _34->dblk_1d_en, _34->dblk_1d_en
	orr	r3, r3, #32	@ tmp219, _34->dblk_1d_en,
	strb	r3, [lr, #3]	@ tmp219, _34->dblk_1d_en
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _36->ppfd_en
	bfc	lr, #7, #1	@ _36->ppfd_en,,
	strb	lr, [r3, #3]	@ _36->ppfd_en, _36->ppfd_en
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _38->line_num_output_en
	bfc	lr, #4, #1	@ _38->line_num_output_en,,
	strb	lr, [r3, #3]	@ _38->line_num_output_en, _38->line_num_output_en
	ldr	r3, [r0, #12]	@ D.28983, pRegInf_4(D)->basic_cfg1
	ldrb	lr, [r3, #3]	@ zero_extendqisi2	@, _40->compress_en
	bfc	lr, #6, #1	@ _40->compress_en,,
	strb	lr, [r3, #3]	@ _40->compress_en, _40->compress_en
	ldr	r3, [r0, #64]	@ D.28985, pRegInf_4(D)->FfAptEn
	ldrb	lr, [r3]	@ zero_extendqisi2	@, _42->ff_apt_en
	bfc	lr, #0, #1	@ _42->ff_apt_en,,
	strb	lr, [r3]	@ _42->ff_apt_en, _42->ff_apt_en
	ldr	r3, [r0, #60]	@ D.28986, pRegInf_4(D)->RefPicType
	str	ip, [r3]	@ tmp229, MEM[(HI_U32 *)_44]
	ldr	r3, [r0, #60]	@ D.28986, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #208]	@ pMp2DecParam_6(D)->FwdRefIsFldSave, pMp2DecParam_6(D)->FwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _46->ref_pic_type_0
	bfi	ip, lr, #0, #2	@ _46->ref_pic_type_0, pMp2DecParam_6(D)->FwdRefIsFldSave,,
	strb	ip, [r3]	@ _46->ref_pic_type_0, _46->ref_pic_type_0
	ldr	r3, [r0, #60]	@ D.28986, pRegInf_4(D)->RefPicType
	ldr	lr, [r2, #204]	@ pMp2DecParam_6(D)->BwdRefIsFldSave, pMp2DecParam_6(D)->BwdRefIsFldSave
	ldrb	ip, [r3]	@ zero_extendqisi2	@, _51->ref_pic_type_1
	bfi	ip, lr, #2, #2	@ _51->ref_pic_type_1, pMp2DecParam_6(D)->BwdRefIsFldSave,,
	strb	ip, [r3]	@ _51->ref_pic_type_1, _51->ref_pic_type_1
	ldr	ip, [r0, #16]	@ D.28989, pRegInf_4(D)->avm_addr
	ldr	r3, [r1, #44]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.28981, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.28981, _56->av_msg_addr
	ldr	ip, [r0, #20]	@ D.28990, pRegInf_4(D)->vam_addr
	ldr	r3, [r1, #28]	@ pHwMem_57(D)->MsgSlotAddr, pHwMem_57(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.28981, pHwMem_57(D)->MsgSlotAddr,
	str	r3, [ip]	@ D.28981, _62->va_msg_addr
	ldr	ip, [r0, #28]	@ D.28991, pRegInf_4(D)->ystaddr_1d
	ldr	r3, [r2, #200]	@ pMp2DecParam_6(D)->CurPicPhyAddr, pMp2DecParam_6(D)->CurPicPhyAddr
	bic	r3, r3, #255	@ D.28981, pMp2DecParam_6(D)->CurPicPhyAddr,
	str	r3, [ip]	@ D.28981, _67->ystaddr_1d
	ldrb	ip, [r2, #3]	@ zero_extendqisi2	@ pMp2DecParam_6(D)->PictureStructure, pMp2DecParam_6(D)->PictureStructure
	ldrh	r4, [r2, #148]	@ D.28978, pMp2DecParam_6(D)->PicHeightInMb
	sub	ip, ip, #1	@ tmp245, pMp2DecParam_6(D)->PictureStructure,
	ldr	lr, [r0, #32]	@ D.28992, pRegInf_4(D)->ystride_1d
	cmp	ip, #1	@ tmp245,
	ldrh	ip, [r2, #152]	@ pMp2DecParam_6(D)->PicWidthInMb, pMp2DecParam_6(D)->PicWidthInMb
	movls	r3, #2	@ D.28978,
	movhi	r3, #1	@ D.28978,
	mul	r3, r3, r4	@ D.28978, D.28978, D.28978
	str	ip, [lr]	@ pMp2DecParam_6(D)->PicWidthInMb, _77->ystride_1d
	ldr	lr, [r0, #36]	@ D.28993, pRegInf_4(D)->uvoffset_1d
	ldrh	ip, [r2, #152]	@ D.28981, pMp2DecParam_6(D)->PicWidthInMb
	mul	r3, ip, r3	@ D.28981, D.28981, D.28978
	mov	r3, r3, asl #8	@ D.28981, D.28981,
	str	r3, [lr]	@ D.28981, _81->uvoffset_1d
	ldr	r1, [r1, #1120]	@ pHwMem_57(D)->DnrMbInfoAddr, pHwMem_57(D)->DnrMbInfoAddr
	ldr	r3, [r0, #56]	@ D.28994, pRegInf_4(D)->DnrMbInfoStAddr
	str	r1, [r3]	@ pHwMem_57(D)->DnrMbInfoAddr, _87->dnr_mbinfo_staddr
	ldr	r3, [r2, #176]	@ pMp2DecParam_6(D)->StreamLength, pMp2DecParam_6(D)->StreamLength
	cmp	r3, #0	@ pMp2DecParam_6(D)->StreamLength,
	ldreq	ip, [r2, #164]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldrne	ip, [r2, #168]	@ pMp2DecParam_6(D)->StreamBitOffset, pMp2DecParam_6(D)->StreamBitOffset
	ldreq	r1, [r0, #24]	@ D.28995, pRegInf_4(D)->stream_base_addr
	ldreq	r3, [r2, #156]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	ldrne	r1, [r0, #24]	@ D.28995, pRegInf_4(D)->stream_base_addr
	mov	r0, #0	@,
	ldrne	r3, [r2, #160]	@ pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamPhyAddr
	add	r3, r3, ip, lsr #3	@ BytePos, pMp2DecParam_6(D)->StreamPhyAddr, pMp2DecParam_6(D)->StreamBitOffset,
	bic	r3, r3, #15	@ D.28981, BytePos,
	str	r3, [r1]	@ D.28981,* D.28995
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2HAL_V200R004_MakeReg, .-MP2HAL_V200R004_MakeReg
	.align	2
	.global	MP2HAL_V200R004_CfgReg
	.type	MP2HAL_V200R004_CfgReg, %function
MP2HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #1	@ VdhId,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	ip, #0	@ tmp283,
	str	ip, [sp, #4]	@ tmp283, D32
	bhi	.L55	@,
	mov	r8, r3	@ StreamBaseAddr, StreamBaseAddr
	ldr	r3, [r1]	@ MEM[(HI_S32 * *)pHwMem_15(D)], MEM[(HI_S32 * *)pHwMem_15(D)]
	mov	r9, r1	@ pHwMem, pHwMem
	mov	r6, r0	@ pMp2DecParam, pMp2DecParam
	cmp	r3, ip	@ MEM[(HI_S32 * *)pHwMem_15(D)],
	mov	r7, r2	@ VdhId, VdhId
	beq	.L67	@,
.L42:
	movw	r2, #1140	@ tmp421,
	ldr	r5, .L68	@ tmp503,
	mul	r2, r2, r7	@ tmp420, tmp421, VdhId
	mvn	r4, #0	@ tmp424,
	mov	lr, #0	@ tmp453,
	mov	r0, #3	@ tmp456,
	add	r1, r6, #45056	@ tmp479, pMp2DecParam,
	ldr	r3, [r5, r2]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r4, [r3, #32]	@ tmp424, *_19
	ldrh	fp, [r6, #152]	@ D.29012, pMp2DecParam_22(D)->PicWidthInMb
	ldrh	r10, [r6, #148]	@ D.29012, pMp2DecParam_22(D)->PicHeightInMb
	ldr	r3, [sp, #4]	@ tmp429,
	ldr	ip, [r5, r2]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	mul	r10, r10, fp	@ D.29012, D.29012, D.29012
	add	r10, r10, r4	@ D.29012, D.29012,
	bfi	r3, r10, #0, #20	@ tmp429, D.29012,,
	str	r3, [sp, #4]	@ tmp429,
	ubfx	r10, r3, #16, #8	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp429,,
	mov	r3, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp429,
	orr	r10, r10, #64	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	and	r3, r3, #62	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	bfc	r10, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en,,
	orr	r3, r3, #65	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	strb	r10, [sp, #6]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	bfc	r3, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en,,
	strb	r3, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	ldr	r3, [sp, #4]	@ D.29012, D32
	str	lr, [sp, #4]	@ tmp453, D32
	ldrh	r10, [sp, #6]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	str	r3, [ip, #8]	@ D.29012, *_42
	bfi	r10, r0, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp456,,
	ldr	ip, [r6, #228]	@ pMp2DecParam_22(D)->VahbStride, pMp2DecParam_22(D)->VahbStride
	ubfx	r3, r10, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,,
	strb	r0, [sp, #4]	@ tmp456, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	orr	r3, r3, #32	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	ldrh	r0, [sp, #4]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	and	r3, r3, #127	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en,
	mov	ip, ip, lsr #6	@ D.29016, pMp2DecParam_22(D)->VahbStride,
	bfi	r3, lr, #4, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, tmp453,,
	bfi	r0, ip, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.29016,,
	strh	r10, [sp, #6]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	uxtb	ip, r3	@ tmp481, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	strb	r3, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en
	ubfx	r3, r0, #8, #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,,
	ldr	r10, [r1, #260]	@ pMp2DecParam_22(D)->Compress_en, pMp2DecParam_22(D)->Compress_en
	orr	r3, r3, #64	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp,
	strh	r0, [sp, #4]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	bfi	r3, lr, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, tmp453,,
	bfi	ip, r10, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pMp2DecParam_22(D)->Compress_en,,
	strb	r3, [sp, #5]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	strb	ip, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en
	ldr	r3, [r5, r2]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r0, [sp, #4]	@ D.29012, D32
	str	lr, [sp, #4]	@ tmp453, D32
	str	r0, [r3, #12]	@ D.29012, *_65
	ldr	r0, [r5, r2]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r3, [r9, #44]	@ pHwMem_15(D)->MsgSlotAddr, pHwMem_15(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29012, pHwMem_15(D)->MsgSlotAddr,
	str	r3, [r0, #16]	@ D.29012, *_76
	ldr	r2, [r5, r2]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r3, [r9, #28]	@ pHwMem_15(D)->MsgSlotAddr, pHwMem_15(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.29012, pHwMem_15(D)->MsgSlotAddr,
	str	r3, [r2, #20]	@ D.29012, *_86
	ldr	r3, [r1, #252]	@ D.29016, pMp2DecParam_22(D)->SlcNum
	cmp	r3, lr	@ D.29016,
	beq	.L52	@,
	mov	r1, r6	@ ivtmp.59, pMp2DecParam
.L53:
	ldr	ip, [r1, #252]	@ D.29016, MEM[base: _261, offset: 252B]
	cmp	ip, #0	@ D.29016,
	beq	.L45	@,
	ldr	r2, [r1, #260]	@ MEM[base: _261, offset: 260B], MEM[base: _261, offset: 260B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29016,
	cmp	r2, #0	@ MEM[base: _261, offset: 260B],
	ble	.L45	@,
	cmp	r4, ip	@ stream_base_addr, tmp_base_addr
	movcs	r4, ip	@ stream_base_addr, tmp_base_addr
.L45:
	ldr	ip, [r1, #256]	@ D.29016, MEM[base: _261, offset: 256B]
	cmp	ip, #0	@ D.29016,
	beq	.L43	@,
	ldr	r2, [r1, #264]	@ MEM[base: _261, offset: 264B], MEM[base: _261, offset: 264B]
	bic	ip, ip, #15	@ tmp_base_addr, D.29016,
	cmp	r2, #0	@ MEM[base: _261, offset: 264B],
	ble	.L43	@,
	cmp	r4, ip	@ stream_base_addr, tmp_base_addr
	movcs	r4, ip	@ stream_base_addr, tmp_base_addr
.L43:
	add	lr, lr, #1	@ i, i,
	add	r1, r1, #44	@ ivtmp.59, ivtmp.59,
	cmp	lr, r3	@ i, D.29016
	bne	.L53	@,
	cmn	r4, #1	@ stream_base_addr,
	beq	.L52	@,
	movw	r3, #1140	@ tmp294,
	str	r4, [r8]	@ stream_base_addr, *StreamBaseAddr_97(D)
	mul	r8, r3, r7	@ tmp293, tmp294, VdhId
	ldr	r2, .L68+4	@ tmp298,
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	ldr	r3, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r4, [r3, #24]	@ stream_base_addr, *_105
	ldrh	r3, [r6, #152]	@ pMp2DecParam_22(D)->PicWidthInMb, pMp2DecParam_22(D)->PicWidthInMb
	ldr	r4, [r2]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	cmp	r3, #120	@ pMp2DecParam_22(D)->PicWidthInMb,
	add	r4, r4, #4	@ D.29012, s_RegPhyBaseAddr,
	movhi	r9, #0	@ D.29012,
	movls	r9, #65536	@ D.29012,
	bl	MEM_ReadPhyWord	@
	orr	r1, r0, r9	@,, D.29012
	mov	r0, r4	@, D.29012
	bl	MEM_WritePhyWord	@
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	movw	r3, #3075	@ tmp307,
	movw	r0, #43691	@ tmp372,
	movt	r3, 48	@ tmp307,
	movt	r0, 43690	@ tmp372,
	str	r3, [r2, #60]	@ tmp307, *_119
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp307, *_124
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp307, *_129
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp307, *_134
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp307, *_139
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp307, *_144
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp307, *_149
	ldr	r2, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	ldr	r3, [r6, #200]	@ pMp2DecParam_22(D)->CurPicPhyAddr, pMp2DecParam_22(D)->CurPicPhyAddr
	bic	r3, r3, #15	@ D.29012, pMp2DecParam_22(D)->CurPicPhyAddr,
	str	r3, [r2, #96]	@ D.29012, *_159
	ldrb	r2, [r6, #3]	@ zero_extendqisi2	@ pMp2DecParam_22(D)->PictureStructure, pMp2DecParam_22(D)->PictureStructure
	ldrh	ip, [r6, #148]	@ D.29012, pMp2DecParam_22(D)->PicHeightInMb
	sub	r2, r2, #1	@ tmp353, pMp2DecParam_22(D)->PictureStructure,
	ldr	r1, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	cmp	r2, #1	@ tmp353,
	ldr	r2, [r6, #228]	@ D.29012, pMp2DecParam_22(D)->VahbStride
	movls	r3, #2	@ D.29012,
	movhi	r3, #1	@ D.29012,
	mul	r3, r3, ip	@ D.29012, D.29012, D.29012
	str	r2, [r1, #100]	@ D.29012, *_174
	ldr	r2, [r6, #228]	@ pMp2DecParam_22(D)->VahbStride, pMp2DecParam_22(D)->VahbStride
	ldr	r1, [r5, r8]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	add	r3, r3, #1	@ D.29016, D.29012,
	mov	r2, r2, asl #1	@ D.29016, pMp2DecParam_22(D)->VahbStride,
	mov	r3, r3, lsr #1	@ D.29016, D.29016,
	mul	r3, r3, r2	@ D.29012, D.29016, D.29016
	str	r3, [r1, #104]	@ D.29012, *_187
	ldrb	r3, [r6, #3]	@ zero_extendqisi2	@ pMp2DecParam_22(D)->PictureStructure, pMp2DecParam_22(D)->PictureStructure
	umull	r0, r1, r3, r0	@ tmp371, pMp2DecParam_22(D)->PictureStructure, tmp372
	mov	r2, r1, lsr #1	@ tmp369,,
	add	r2, r2, r2, lsl #1	@ tmp375, tmp369, tmp369,
	rsb	r3, r2, r3	@ tmp376, tmp375, pMp2DecParam_22(D)->PictureStructure
	uxtb	r3, r3	@ tmp377, tmp376
	cmp	r3, #2	@ tmp377,
	ldreqh	r1, [r6, #152]	@ D.29012, pMp2DecParam_22(D)->PicWidthInMb
	ldreqh	r2, [r6, #148]	@ D.29012, pMp2DecParam_22(D)->PicHeightInMb
	ldreq	r3, [r6, #236]	@ pMp2DecParam_22(D)->DnrMbinfoStaddr, pMp2DecParam_22(D)->DnrMbinfoStaddr
	ldrne	r3, [r6, #236]	@ pMp2DecParam_22(D)->DnrMbinfoStaddr, pMp2DecParam_22(D)->DnrMbinfoStaddr
	muleq	r2, r2, r1	@ D.29012, D.29012, D.29012
	addeq	r3, r3, #127	@ D.29016, pMp2DecParam_22(D)->DnrMbinfoStaddr,
	mov	r1, #0	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en,
	addeq	r3, r3, r2, lsl #3	@ D.29016, D.29016, D.29012,
	biceq	r3, r3, #127	@ D.29016, D.29016,
	str	r3, [sp, #4]	@ pMp2DecParam_22(D)->DnrMbinfoStaddr, MEM[(struct DNR_V200_MBINFO_STADDR *)&D32].dnr_mbinfo_staddr
	movw	r3, #1140	@ tmp389,
	ldr	ip, [sp, #4]	@ D.29012, D32
	mul	r7, r3, r7	@ tmp388, tmp389, VdhId
	mov	r3, #0	@ tmp392,
	str	r3, [sp, #4]	@ tmp392, D32
	bfi	r1, r3, #0, #1	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, tmp392,,
	mov	r0, r3	@ D.29011, tmp392
	ldr	r2, [r5, r7]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	ip, [r2, #144]	@ D.29012, *_209
	ldr	r2, [r6, #208]	@ pMp2DecParam_22(D)->FwdRefIsFldSave, pMp2DecParam_22(D)->FwdRefIsFldSave
	ldr	lr, [r6, #204]	@ pMp2DecParam_22(D)->BwdRefIsFldSave, pMp2DecParam_22(D)->BwdRefIsFldSave
	and	r2, r2, #3	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_22(D)->FwdRefIsFldSave,
	ldr	ip, [r5, r7]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	bfi	r2, lr, #2, #2	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, pMp2DecParam_22(D)->BwdRefIsFldSave,,
	strb	r2, [sp, #4]	@ MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1, MEM[(struct REF_V200R004_PIC_TYPE *)&D32].ref_pic_type_1
	ldr	r2, [sp, #4]	@ D.29012, D32
	str	r3, [sp, #4]	@ tmp392, D32
	strb	r1, [sp, #4]	@ MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en, MEM[(struct FF_V200R004_APT_EN *)&D32].ff_apt_en
	str	r2, [ip, #148]	@ D.29012, *_224
	ldr	r1, [sp, #4]	@ D.29012, D32
	ldr	r2, [r5, r7]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r1, [r2, #152]	@ D.29012, *_232
	ldr	r2, [r5, r7]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	str	r3, [r2, #108]	@ tmp392, *_239
.L65:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L67:
	mov	r0, ip	@, tmp283
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r9]	@ p32, MEM[(HI_S32 * *)pHwMem_15(D)]
	bne	.L42	@,
.L55:
	mvn	r0, #0	@ D.29011,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L52:
	mov	r3, #0	@ tmp291,
	mvn	r0, #0	@ D.29011,
	str	r3, [r8]	@ tmp291, *StreamBaseAddr_97(D)
	b	.L65	@
.L69:
	.align	2
.L68:
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
	ldr	r0, [r1, #44]	@, pHwMem_9(D)->MsgSlotAddr
	str	r3, [sp, #4]	@ StreamBaseAddr, %sfp
	mov	r6, r1	@ pHwMem, pHwMem
	mov	r3, #0	@ tmp583,
	str	r3, [sp, #12]	@ tmp583, D32
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBase,
	beq	.L73	@,
	ldrh	r2, [r4, #152]	@ D.29042, pMp2DecParam_13(D)->PicWidthInMb
	cmp	r2, #512	@ D.29042,
	bhi	.L73	@,
	ldrh	r1, [r4, #148]	@ D.29042, pMp2DecParam_13(D)->PicHeightInMb
	cmp	r1, #512	@ D.29042,
	bhi	.L73	@,
	ldrh	r3, [sp, #14]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	sub	r1, r1, #1	@ tmp314, D.29042,
	ldr	r0, [r4, #180]	@ pMp2DecParam_13(D)->Mpeg1Flag, pMp2DecParam_13(D)->Mpeg1Flag
	sub	r2, r2, #1	@ tmp311, D.29042,
	bfi	r3, r1, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, tmp314,,
	ldrh	r1, [sp, #12]	@, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strh	r3, [sp, #14]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb
	mov	r10, #0	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct,
	mov	r3, r3, lsr #8	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_height_in_mb,
	bfi	r1, r2, #0, #9	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, tmp311,,
	bfi	r3, r0, #1, #1	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, pMp2DecParam_13(D)->Mpeg1Flag,,
	strh	r1, [sp, #12]	@ movhi	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].pic_width_in_mb
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag, MEM[(struct MP2DNMSG_V200R004_D0 *)&D32].mpeg1_flag
	mov	r9, r10	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	ldr	r3, [sp, #12]	@ D.29041, D32
	mov	r8, r10	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	mov	lr, r10	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	mov	ip, r10	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	mov	r0, r10	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	mov	r1, r10	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	str	r3, [r5]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12]
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->PicCodingType, pMp2DecParam_13(D)->PicCodingType
	ldrb	fp, [r4, #2]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Mp1FwdmvFullPel, pMp2DecParam_13(D)->Mp1FwdmvFullPel
	and	r3, r3, #7	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_13(D)->PicCodingType,
	ldrb	r2, [r4, #3]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->PictureStructure, pMp2DecParam_13(D)->PictureStructure
	bfi	r3, fp, #3, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_forward_vector, pMp2DecParam_13(D)->Mp1FwdmvFullPel,,
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Mp1BwdmvFullPel, pMp2DecParam_13(D)->Mp1BwdmvFullPel
	ldrb	r7, [r4, #4]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->SecondFieldFlag, pMp2DecParam_13(D)->SecondFieldFlag
	and	r2, r2, #3	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_13(D)->PictureStructure,
	bfi	r3, fp, #4, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, pMp2DecParam_13(D)->Mp1BwdmvFullPel,,
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].full_pel_backward_vector
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->FramePredFrameDct, pMp2DecParam_13(D)->FramePredFrameDct
	mov	fp, r10	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, r7, #2, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, pMp2DecParam_13(D)->SecondFieldFlag,,
	strb	r2, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].second_field_flag
	bfi	r10, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, pMp2DecParam_13(D)->FramePredFrameDct,,
	ldrb	r3, [r4, #7]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->ConcealmentMotionVectors, pMp2DecParam_13(D)->ConcealmentMotionVectors
	strb	r10, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].frame_pred_frame_dct
	mov	r2, r9	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	bfi	r9, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, pMp2DecParam_13(D)->ConcealmentMotionVectors,,
	strb	r9, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors, MEM[(struct MP2DNMSG_V200R004_D1 *)&D32].concealment_motion_vectors
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #4]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 4B]
	ldrb	r3, [r4, #12]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Fcode, pMp2DecParam_13(D)->Fcode
	ldrb	r9, [r4, #15]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Fcode, pMp2DecParam_13(D)->Fcode
	ldrb	r10, [r4, #6]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->TopFieldFirst, pMp2DecParam_13(D)->TopFieldFirst
	and	r3, r3, #15	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_13(D)->Fcode,
	bfi	r8, r9, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, pMp2DecParam_13(D)->Fcode,,
	strb	r8, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_11
	bfi	r3, r10, #7, #1	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, pMp2DecParam_13(D)->TopFieldFirst,,
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].top_field_first
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Fcode, pMp2DecParam_13(D)->Fcode
	ldrb	r9, [r4, #13]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->Fcode, pMp2DecParam_13(D)->Fcode
	bfi	lr, r3, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, pMp2DecParam_13(D)->Fcode,,
	strb	lr, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_10
	bfi	ip, r9, #0, #4	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, pMp2DecParam_13(D)->Fcode,,
	strb	ip, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01, MEM[(struct MP2DNMSG_V200R004_D2 *)&D32].fcode_01
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #8]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 8B]
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->IntraDcPrecision, pMp2DecParam_13(D)->IntraDcPrecision
	bfi	r0, r3, #0, #2	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, pMp2DecParam_13(D)->IntraDcPrecision,,
	strb	r0, [sp, #12]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_dc_precision
	ldrb	ip, [r4, #10]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->QuantType, pMp2DecParam_13(D)->QuantType
	ldrb	r0, [r4, #9]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->IntraVlcFormat, pMp2DecParam_13(D)->IntraVlcFormat
	ldrb	r3, [r4, #8]	@ zero_extendqisi2	@ pMp2DecParam_13(D)->AlternateScan, pMp2DecParam_13(D)->AlternateScan
	bfi	r1, ip, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, pMp2DecParam_13(D)->QuantType,,
	bfi	fp, r0, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, pMp2DecParam_13(D)->IntraVlcFormat,,
	strb	r1, [sp, #13]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].q_scale_type
	bfi	r2, r3, #0, #1	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, pMp2DecParam_13(D)->AlternateScan,,
	strb	fp, [sp, #14]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].intra_vlc_format
	strb	r2, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan, MEM[(struct MP2DNMSG_V200R004_D3 *)&D32].alternate_scan
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #12]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 12B]
	ldr	r3, [r4, #192]	@ pMp2DecParam_13(D)->BwdRefPhyAddr, pMp2DecParam_13(D)->BwdRefPhyAddr
	bic	r3, r3, #15	@ D.29041, pMp2DecParam_13(D)->BwdRefPhyAddr,
	str	r3, [r5, #16]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 16B]
	ldr	r3, [r4, #196]	@ pMp2DecParam_13(D)->FwdRefPhyAddr, pMp2DecParam_13(D)->FwdRefPhyAddr
	bic	r3, r3, #15	@ D.29041, pMp2DecParam_13(D)->FwdRefPhyAddr,
	str	r3, [r5, #20]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 20B]
	ldr	r3, [r4, #224]	@ pMp2DecParam_13(D)->DispFramePhyAddr, pMp2DecParam_13(D)->DispFramePhyAddr
	bic	r3, r3, #15	@ D.29041, pMp2DecParam_13(D)->DispFramePhyAddr,
	str	r3, [r5, #24]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 24B]
	ldr	r3, [r4, #240]	@ pMp2DecParam_13(D)->PmvColmbPhyAddr, pMp2DecParam_13(D)->PmvColmbPhyAddr
	bic	r3, r3, #15	@ D.29044, pMp2DecParam_13(D)->PmvColmbPhyAddr,
	str	r3, [r5, #28]	@ D.29044, MEM[(volatile HI_S32 *)pMsgBase_12 + 28B]
	ldr	r0, [r4, #156]	@, pMp2DecParam_13(D)->StreamPhyAddr
	str	r3, [sp, #12]	@ D.29044, MEM[(struct MP2DNMSG_V200R004_D7 *)&D32].current_pmv_addr
	bl	MEM_Phy2Vir	@
	ldr	r0, [r4, #160]	@, pMp2DecParam_13(D)->StreamPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #176]	@ pMp2DecParam_13(D)->StreamLength, pMp2DecParam_13(D)->StreamLength
	cmp	r3, #0	@ pMp2DecParam_13(D)->StreamLength,
	beq	.L84	@,
	ldr	r0, [r4, #168]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	mov	lr, #0	@ tmp479,
	ldr	r1, [r4, #164]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	mov	ip, lr	@ tmp501, tmp479
	ldr	r3, [r4, #160]	@ pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamPhyAddr
	mov	r8, lr	@ tmp482, tmp479
	ldr	r2, [r4, #156]	@ pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamPhyAddr
	add	r3, r3, r0, lsr #3	@ BytePos1, pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamBitOffset,
	add	r2, r2, r1, lsr #3	@ BytePos0, pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamBitOffset,
	bic	r9, r3, #15	@ stream_base_addr, BytePos1,
	bic	r1, r2, #15	@ D.29044, BytePos0,
	and	r0, r2, #15	@ tmp485, BytePos0,
	rsb	r2, r9, r1	@ D.29044, stream_base_addr, D.29044
	and	r1, r3, #15	@ tmp503, BytePos1,
	bfi	lr, r2, #0, #24	@ tmp479, D.29044,,
	str	lr, [r5, #32]	@ tmp479, MEM[(volatile HI_S32 *)pMsgBase_12 + 32B]
	ldr	r3, [r4, #172]	@ pMp2DecParam_13(D)->StreamLength, pMp2DecParam_13(D)->StreamLength
	ldr	r2, [r4, #164]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	bfi	r8, r3, #0, #24	@ tmp482, pMp2DecParam_13(D)->StreamLength,,
	str	r8, [sp, #12]	@ tmp482,
	and	r2, r2, #7	@ tmp490, pMp2DecParam_13(D)->StreamBitOffset,
	ldrb	r3, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	add	r2, r2, r0, lsl #3	@ tmp493, tmp490, tmp485,
	bfi	r3, r2, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp493,,
	strb	r3, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #36]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 36B]
	str	ip, [r5, #40]	@ tmp582, MEM[(volatile HI_S32 *)pMsgBase_12 + 40B]
	ldr	r2, [r4, #176]	@ pMp2DecParam_13(D)->StreamLength, pMp2DecParam_13(D)->StreamLength
	ldr	r3, [r4, #168]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	add	r2, r2, #24	@ D.29041, pMp2DecParam_13(D)->StreamLength,
	bfi	ip, r2, #0, #24	@ tmp501, D.29041,,
	and	r3, r3, #7	@ tmp508, pMp2DecParam_13(D)->StreamBitOffset,
	str	ip, [sp, #12]	@ tmp501,
	add	r3, r3, r1, lsl #3	@ tmp511, tmp508, tmp503,
	ldrb	r2, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	bfi	r2, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp511,,
	strb	r2, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #44]	@ D.29041,
.L75:
	add	r2, r5, #64	@ ivtmp.76, pMsgBase,
	add	r7, r4, #64	@ D.29054, pMp2DecParam,
	mov	r3, r4	@ ivtmp.72, pMp2DecParam
.L76:
	ldrb	r1, [r3, #17]	@ zero_extendqisi2	@ MEM[base: _4, offset: 17B], MEM[base: _4, offset: 17B]
	add	r3, r3, #2	@ ivtmp.72, ivtmp.72,
	ldrb	lr, [r3, #78]	@ zero_extendqisi2	@ MEM[base: _4, offset: 80B], MEM[base: _4, offset: 80B]
	ldrb	ip, [r3, #79]	@ zero_extendqisi2	@ MEM[base: _4, offset: 81B], MEM[base: _4, offset: 81B]
	ldrb	r0, [r3, #14]	@ zero_extendqisi2	@ MEM[base: _4, offset: 16B], MEM[base: _4, offset: 16B]
	cmp	r3, r7	@ ivtmp.72, D.29054
	strb	lr, [sp, #12]	@ MEM[base: _4, offset: 80B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_even
	strb	ip, [sp, #14]	@ MEM[base: _4, offset: 81B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].intra_quantiser_matrix_odd
	strb	r0, [sp, #13]	@ MEM[base: _4, offset: 16B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_even
	strb	r1, [sp, #15]	@ MEM[base: _4, offset: 17B], MEM[(struct MP2DNMSG_V200R004_D16_47 *)&D32].non_Intra_quantiser_matrix_odd
	ldr	r1, [sp, #12]	@ D.29041, D32
	str	r1, [r2], #4	@ D.29041, MEM[(volatile HI_S32 *)_229]
	bne	.L76	@,
	ldr	r3, [r6, #1084]	@ pHwMem_9(D)->PmvTopAddr, pHwMem_9(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.29044, pHwMem_9(D)->PmvTopAddr,
	str	r3, [r5, #192]	@ D.29044, MEM[(volatile HI_S32 *)pMsgBase_12 + 192B]
	ldr	r6, [r6, #44]	@ pHwMem_9(D)->MsgSlotAddr, pHwMem_9(D)->MsgSlotAddr
	str	r3, [sp, #12]	@ D.29044, MEM[(struct MP2DNMSG_V200R004_D48 *)&D32].pmv_top_addr
	bic	r6, r6, #15	@ D.29044, pHwMem_9(D)->MsgSlotAddr,
	add	r6, r6, #256	@ SlcDnMsgPhyAddr, D.29044,
	mov	r0, r6	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L73	@,
	ldr	r3, [sp, #4]	@, %sfp
	mov	r0, r4	@, pMp2DecParam
	str	r6, [r5, #252]	@ SlcDnMsgPhyAddr, MEM[(volatile HI_S32 *)pMsgBase_12 + 252B]
	mov	r2, r6	@, SlcDnMsgPhyAddr
	str	r6, [sp, #12]	@ SlcDnMsgPhyAddr, MEM[(struct MP2DNMSG_V200R004_D63 *)&D32].first_slc_dnmsg_addr
	bl	MP2HAL_V200R004_WriteSliceMsg	@
	ldr	r3, .L85	@ tmp526,
	ldr	r3, [r3]	@ g_PrintEnable, g_PrintEnable
	ands	r0, r3, #16	@ D.29044, g_PrintEnable,
	beq	.L82	@,
	ldr	r2, .L85+4	@ tmp529,
	mov	r0, #0	@ D.29039,
	ldr	r3, [r2]	@ num, num
	add	r3, r3, #1	@ D.29044, num,
	str	r3, [r2]	@ D.29044, num
.L82:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L84:
	ldr	r1, [r4, #164]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	mov	r0, r3	@ tmp450, pMp2DecParam_13(D)->StreamLength
	ldr	r2, [r4, #156]	@ pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamPhyAddr
	mov	lr, r3, lsr #24	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp450,
	str	r3, [r5, #32]	@ tmp450, MEM[(volatile HI_S32 *)pMsgBase_12 + 32B]
	bfi	lr, r3, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, tmp450,,
	ldr	ip, [r4, #172]	@ pMp2DecParam_13(D)->StreamLength, pMp2DecParam_13(D)->StreamLength
	add	r1, r2, r1, lsr #3	@ BytePos0, pMp2DecParam_13(D)->StreamPhyAddr, pMp2DecParam_13(D)->StreamBitOffset,
	ldr	r2, [r4, #164]	@ pMp2DecParam_13(D)->StreamBitOffset, pMp2DecParam_13(D)->StreamBitOffset
	and	r1, r1, #15	@ tmp452, BytePos0,
	add	ip, ip, #24	@ D.29041, pMp2DecParam_13(D)->StreamLength,
	bfi	r0, ip, #0, #24	@ tmp450, D.29041,,
	and	r2, r2, #7	@ tmp457, pMp2DecParam_13(D)->StreamBitOffset,
	str	r0, [sp, #12]	@ tmp450,
	add	r2, r2, r1, lsl #3	@ tmp460, tmp457, tmp452,
	ldrb	r0, [sp, #15]	@ zero_extendqisi2	@, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	bfi	r0, r2, #0, #7	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, tmp460,,
	strb	r0, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0, MEM[(struct MP2DNMSG_V200R004_D9 *)&D32].bit_offset_0
	ldr	r2, [sp, #12]	@ D.29041, D32
	str	r2, [r5, #36]	@ D.29041, MEM[(volatile HI_S32 *)pMsgBase_12 + 36B]
	str	r3, [r5, #40]	@ pMp2DecParam_13(D)->StreamLength, MEM[(volatile HI_S32 *)pMsgBase_12 + 40B]
	str	r3, [sp, #12]	@ pMp2DecParam_13(D)->StreamLength,
	strb	lr, [sp, #15]	@ MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1, MEM[(struct MP2DNMSG_V200R004_D11 *)&D32].bit_offset_1
	ldr	r3, [sp, #12]	@ D.29041, D32
	str	r3, [r5, #44]	@ D.29041,
	b	.L75	@
.L73:
	mvn	r0, #0	@ D.29039,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L86:
	.align	2
.L85:
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
	ldr	r7, .L99	@ tmp120,
	cmp	r1, #1	@ VdhId,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r8, r5, r7	@ pHwMem, tmp118, tmp120
	bhi	.L93	@,
	cmp	r1, #0	@ VdhId,
	bgt	.L93	@,
	ldr	r3, [r5, r7]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	mov	r6, r0	@ pMp2DecParam, pMp2DecParam
	mov	r4, r1	@ VdhId, VdhId
	cmp	r3, #0	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr,
	beq	.L98	@,
.L91:
	add	r3, sp, #4	@,,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pMp2DecParam
	bl	MP2HAL_V200R004_CfgReg	@
	subs	r5, r0, #0	@ D.29059,
	bne	.L93	@,
	mov	r2, r4	@, VdhId
	mov	r1, r8	@, pHwMem
	mov	r0, r6	@, pMp2DecParam
	ldr	r3, [sp, #4]	@, StreamBaseAddr
	bl	MP2HAL_V200R004_CfgDnMsg	@
	mov	r0, r5	@, D.29059
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L93:
	mvn	r5, #0	@ D.29059,
	mov	r0, r5	@, D.29059
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L98:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L93	@,
	str	r0, [r5, r7]	@ p32, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_4(D)].pVdmRegVirAddr
	b	.L91	@
.L100:
	.align	2
.L99:
	.word	g_HwMem
	.fnend
	.size	MP2HAL_V200R004_StartDec, .-MP2HAL_V200R004_StartDec
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	num.28364, %object
	.size	num.28364, 4
num.28364:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
