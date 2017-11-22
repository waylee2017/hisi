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
	.file	"vdm_hal_h264.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_h264)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_h264.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.o
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
	.global	Write_V200R004_CabacTab
	.type	Write_V200R004_CabacTab, %function
Write_V200R004_CabacTab:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L5	@,
	mov	r2, #5120	@,
	ldr	r1, .L6	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L5:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.fnend
	.size	Write_V200R004_CabacTab, .-Write_V200R004_CabacTab
	.align	2
	.global	H264HAL_V200R004_InitHal
	.type	H264HAL_V200R004_InitHal, %function
H264HAL_V200R004_InitHal:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r0, #1076]	@, pHwMem_2(D)->H264MnAddr
	bl	Write_V200R004_CabacTab	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_V200R004_InitHal, .-H264HAL_V200R004_InitHal
	.align	2
	.global	Get_V200R004_VirAddr
	.type	Get_V200R004_VirAddr, %function
Get_V200R004_VirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r1, r0, lsl #2	@, pbase_vir_addr, Dn,
	bx	lr	@
	.fnend
	.size	Get_V200R004_VirAddr, .-Get_V200R004_VirAddr
	.align	2
	.global	H264HAL_V200R004_CutSliceChain
	.type	H264HAL_V200R004_CutSliceChain, %function
H264HAL_V200R004_CutSliceChain:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ pSLOT_BASE,
	beq	.L15	@,
	mov	r0, #0	@ tmp114,
	str	r0, [r3, #252]	@ tmp114, MEM[(HI_U32 *)pSLOT_BASE_6 + 252B]
	ldmfd	sp!, {r4, pc}	@
.L15:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36466,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_V200R004_CutSliceChain, .-H264HAL_V200R004_CutSliceChain
	.align	2
	.global	Write_V200R004_Qmatrix
	.type	Write_V200R004_Qmatrix, %function
Write_V200R004_Qmatrix:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ size
	bxeq	lr	@
	sub	r0, r0, #4	@ ivtmp.79, qmatrix,
	sub	r3, r3, #4	@ ivtmp.85, vir_addr,
	mov	r2, #0	@ i,
.L18:
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r0, #4]!	@ D.36483, MEM[base: _23, offset: 0B]
	cmp	r2, r1	@ i, size
	str	ip, [r3, #4]!	@ D.36483, MEM[base: _24, offset: 0B]
	bne	.L18	@,
	bx	lr	@
	.fnend
	.size	Write_V200R004_Qmatrix, .-Write_V200R004_Qmatrix
	.align	2
	.global	H264HAL_SetSliceMsgStreamAddrInfo
	.type	H264HAL_SetSliceMsgStreamAddrInfo, %function
H264HAL_SetSliceMsgStreamAddrInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r1, #8]	@ pSlcPara_5(D)->valid_bitlen, pSlcPara_5(D)->valid_bitlen
	cmp	r3, #0	@ pSlcPara_5(D)->valid_bitlen,
	bne	.L22	@,
	str	r3, [r2]	@ pSlcPara_5(D)->valid_bitlen, MEM[(volatile HI_S32 *)pSLOT_20(D)]
	str	r3, [r2, #4]	@ pSlcPara_5(D)->valid_bitlen, MEM[(volatile HI_S32 *)pSLOT_20(D) + 4B]
	str	r3, [r2, #8]	@ pSlcPara_5(D)->valid_bitlen, MEM[(volatile HI_S32 *)pSLOT_20(D) + 8B]
	ldr	r3, [r1, #12]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B], MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B]
	cmp	r3, #0	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B],
	beq	.L24	@,
.L27:
	ldr	lr, [r1, #28]	@ D.36488, MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 28B]
	ldr	r3, [r1, #20]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 20B], MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 20B]
	ldr	ip, [r0, #916]	@ pParam_7(D)->stream_base_addr, pParam_7(D)->stream_base_addr
	bic	r0, lr, #15	@ stream_start_addr, D.36488,
	add	r3, r3, lr, lsl #3	@ D.36488, MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 20B], D.36488,
	and	r3, r3, #127	@ D.36489, D.36488,
	str	r3, [r2, #16]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D) + 16B]
	ldr	r1, [r1, #12]	@ D.36489, MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B]
	bic	r3, ip, #15	@ stream_base_addr, pParam_7(D)->stream_base_addr,
	rsb	r3, r3, r0	@ D.36489, stream_base_addr, stream_start_addr
	str	r1, [r2, #20]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D) + 20B]
	str	r3, [r2, #12]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D) + 12B]
	ldmfd	sp!, {r4, pc}	@
.L22:
	ldr	r4, [r1, #24]	@ D.36488, pSlcPara_5(D)->bytespos
	ldr	r3, [r1, #16]	@ pSlcPara_5(D)->bitsoffset, pSlcPara_5(D)->bitsoffset
	ldr	lr, [r0, #916]	@ pParam_7(D)->stream_base_addr, pParam_7(D)->stream_base_addr
	bic	ip, r4, #15	@ stream_start_addr, D.36488,
	add	r3, r3, r4, lsl #3	@ D.36488, pSlcPara_5(D)->bitsoffset, D.36488,
	and	r3, r3, #127	@ D.36489, D.36488,
	str	r3, [r2, #4]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D) + 4B]
	ldr	r4, [r1, #8]	@ D.36489, pSlcPara_5(D)->valid_bitlen
	bic	r3, lr, #15	@ stream_base_addr, pParam_7(D)->stream_base_addr,
	rsb	r3, r3, ip	@ D.36489, stream_base_addr, stream_start_addr
	str	r4, [r2, #8]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D) + 8B]
	str	r3, [r2]	@ D.36489, MEM[(volatile HI_S32 *)pSLOT_20(D)]
	ldr	r3, [r1, #12]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B], MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B]
	cmp	r3, #0	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B],
	bne	.L27	@,
.L24:
	str	r3, [r2, #12]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B], MEM[(volatile HI_S32 *)pSLOT_20(D) + 12B]
	str	r3, [r2, #16]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B], MEM[(volatile HI_S32 *)pSLOT_20(D) + 16B]
	str	r3, [r2, #20]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)pSlcPara_5(D) + 12B], MEM[(volatile HI_S32 *)pSLOT_20(D) + 20B]
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_SetSliceMsgStreamAddrInfo, .-H264HAL_SetSliceMsgStreamAddrInfo
	.align	2
	.global	H264HAL_SetSliceMsgMvAddrInfo
	.type	H264HAL_SetSliceMsgMvAddrInfo, %function
H264HAL_SetSliceMsgMvAddrInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	ip, [r1]	@ zero_extendqisi2	@ D.36493, pSlcPara_4(D)->slice_type
	ldr	r3, .L44	@ tmp137,
	ldr	r3, [r3, ip, asl #2]	@ tmp139, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp139,
	movne	r1, #0	@ D.36493,
	movne	r3, r1	@ D.36493, D.36493
	beq	.L42	@,
.L41:
	str	r3, [r2, #32]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 32B]
	str	r1, [r2, #36]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 36B]
	bx	lr	@
.L42:
	ldrb	r3, [r0]	@ zero_extendqisi2	@ pParam_8(D)->pic_structure, pParam_8(D)->pic_structure
	cmp	r3, #0	@ pParam_8(D)->pic_structure,
	beq	.L43	@,
	ldr	r3, [r1, #2776]	@ *pSlcPara_4(D), *pSlcPara_4(D)
	bic	r3, r3, #-16777216	@ D.36494, *pSlcPara_4(D),
	bic	r3, r3, #255	@ D.36494, D.36494,
	cmp	r3, #768	@ D.36494,
	beq	.L32	@,
	ldrb	r3, [r1, #2776]	@ zero_extendqisi2	@ pSlcPara_4(D)->declist[1][0].list_structure, pSlcPara_4(D)->declist[1][0].list_structure
	cmp	r3, #1	@ pSlcPara_4(D)->declist[1][0].list_structure,
	beq	.L32	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r1, #2788]	@ pSlcPara_4(D)->declist[1][0].pmv_address_idc, pSlcPara_4(D)->declist[1][0].pmv_address_idc
	mov	r1, #0	@ D.36493,
	ldr	lr, [r0, #908]	@ pParam_8(D)->half_pmvblk_offset, pParam_8(D)->half_pmvblk_offset
	add	ip, ip, #206	@ tmp153, pSlcPara_4(D)->declist[1][0].pmv_address_idc,
	ldr	r3, [r0, ip, asl #2]	@ tmp156, pParam_8(D)->PmvPhyAddr
	add	r3, r3, lr	@ D.36494, tmp156, pParam_8(D)->half_pmvblk_offset
	bic	r3, r3, #15	@ D.36493, D.36494,
	str	r3, [r2, #32]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 32B]
	str	r1, [r2, #36]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 36B]
	ldr	pc, [sp], #4	@
.L43:
	ldrb	r3, [r1, #2778]	@ zero_extendqisi2	@ pSlcPara_4(D)->declist[1][0].frame_structure, pSlcPara_4(D)->declist[1][0].frame_structure
	cmp	r3, #3	@ pSlcPara_4(D)->declist[1][0].frame_structure,
	beq	.L31	@,
.L32:
	ldr	r3, [r1, #2788]	@ pSlcPara_4(D)->declist[1][0].pmv_address_idc, pSlcPara_4(D)->declist[1][0].pmv_address_idc
	mov	r1, #0	@ D.36493,
	add	r3, r3, #206	@ tmp142, pSlcPara_4(D)->declist[1][0].pmv_address_idc,
	ldr	r3, [r0, r3, asl #2]	@ tmp144, pParam_8(D)->PmvPhyAddr
	bic	r3, r3, #15	@ D.36493, tmp144,
	str	r3, [r2, #32]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 32B]
	str	r1, [r2, #36]	@ D.36493, MEM[(volatile HI_S32 *)pSLOT_34(D) + 36B]
	bx	lr	@
.L31:
	ldr	r3, [r1, #2788]	@ pSlcPara_4(D)->declist[1][0].pmv_address_idc, pSlcPara_4(D)->declist[1][0].pmv_address_idc
	ldr	r1, [r0, #908]	@ pParam_8(D)->half_pmvblk_offset, pParam_8(D)->half_pmvblk_offset
	add	r3, r3, #206	@ tmp145, pSlcPara_4(D)->declist[1][0].pmv_address_idc,
	ldr	r3, [r0, r3, asl #2]	@ D.36494, pParam_8(D)->PmvPhyAddr
	add	r1, r3, r1	@ D.36494, D.36494, pParam_8(D)->half_pmvblk_offset
	bic	r3, r3, #15	@ D.36493, D.36494,
	bic	r1, r1, #15	@ D.36493, D.36494,
	b	.L41	@
.L45:
	.align	2
.L44:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_SetSliceMsgMvAddrInfo, .-H264HAL_SetSliceMsgMvAddrInfo
	.global	__aeabi_idiv
	.align	2
	.global	H264HAL_SetSliceMsgEndMbInSlice
	.type	H264HAL_SetSliceMsgEndMbInSlice, %function
H264HAL_SetSliceMsgEndMbInSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, [r1, #4056]	@ pSlcPara_6(D)->pNextSlice, pSlcPara_6(D)->pNextSlice
	cmp	ip, #0	@ pSlcPara_6(D)->pNextSlice,
	beq	.L47	@,
	mov	r1, #0	@ D.36497,
	str	r3, [r2, #176]	@ tmp, MEM[(volatile HI_S32 *)pSLOT_21(D) + 176B]
	mov	r0, r1	@, D.36497
	bx	lr	@
.L47:
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r0, #920]	@ D.36500, pParam_10(D)->mbtodec
	ldrb	r1, [r1, #1]	@ zero_extendqisi2	@ D.36497, pSlcPara_6(D)->MbaffFrameFlag
	cmp	r0, #262144	@ D.36500,
	str	r2, [sp, #4]	@ pSLOT, %sfp
	addgt	r1, r1, #1	@, D.36497,
	addle	r1, r1, #1	@, D.36497,
	movwgt	r0, #65535	@,
	suble	r0, r0, #1	@, D.36500,
	movtgt	r0, 3	@,
	bl	__aeabi_idiv	@
	mov	r1, #0	@ D.36497,
	ldr	r2, [sp, #4]	@ pSLOT, %sfp
	str	r0, [r2, #176]	@ tmp, MEM[(volatile HI_S32 *)pSLOT_21(D) + 176B]
	mov	r0, r1	@, D.36497
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
	.fnend
	.size	H264HAL_SetSliceMsgEndMbInSlice, .-H264HAL_SetSliceMsgEndMbInSlice
	.align	2
	.global	H264HAL_WriteSliceMsgRefPicField
	.type	H264HAL_WriteSliceMsgRefPicField, %function
H264HAL_WriteSliceMsgRefPicField:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r1, r3, lsl #2	@ D.36521, pSlcPara, list,
	add	r8, r3, #3	@ D.36517, list,
	mov	r7, r3, asl #3	@ D.36517, list,
	ldr	ip, [r6, #52]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)_154 + 52B], MEM[(struct H264_DEC_SLICE_PARAM_S *)_154 + 52B]
	add	r7, r7, #20	@ Dn_0, D.36517,
	mov	r8, r8, asl #2	@ Dn_num, D.36517,
	cmp	ip, #0	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)_154 + 52B],
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	mov	ip, r3, asl #10	@ tmp255, list,
	ldr	r9, .L93	@ tmp335,
	add	r3, ip, r3, lsl #7	@ D.36522, tmp255, list,
	mov	ip, #0	@ i,
	add	r1, r1, r3	@ ivtmp.102, pSlcPara, D.36522
	mov	r4, ip	@ tmp1, i
	mov	r5, ip	@ tmp, i
	b	.L75	@
.L58:
	cmp	r3, #2	@ D.36518,
	beq	.L66	@,
	and	r3, ip, #3	@ D.36517, i,
	and	lr, ip, #7	@ D.36517, i,
.L65:
	cmp	lr, #7	@ D.36517,
	streq	r5, [r2, r8, asl #2]	@ tmp, *_116
	addeq	r8, r8, #1	@ Dn_num, Dn_num,
	add	ip, ip, #1	@ i, i,
	moveq	r5, #0	@ tmp,
	cmp	r3, #3	@ D.36517,
	streq	r4, [r2, r7, asl #2]	@ tmp1, *_122
	addeq	r7, r7, #1	@ Dn_0, Dn_0,
	ldr	r3, [r6, #52]	@ D.36517, MEM[(struct H264_DEC_SLICE_PARAM_S *)_154 + 52B]
	moveq	r4, #0	@ tmp1,
	add	r1, r1, #36	@ ivtmp.102, ivtmp.102,
	cmp	r3, ip	@ D.36517, i
	bls	.L92	@,
.L75:
	ldrb	r3, [r1, #1624]	@ zero_extendqisi2	@ D.36518, MEM[base: _147, offset: 1624B]
	cmp	r3, #1	@ D.36518,
	bne	.L58	@,
	ldrb	r3, [r1, #1625]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1625B], MEM[base: _147, offset: 1625B]
	cmp	r3, #3	@ MEM[base: _147, offset: 1625B],
	beq	.L59	@,
	ldrb	fp, [r1, #1628]	@ zero_extendqisi2	@ D.36518, MEM[base: _147, offset: 1628B]
	and	lr, ip, #7	@ D.36517, i,
	ldr	r10, [r0, #32]	@ pParam_41(D)->mb_adaptive_frame_field_flag, pParam_41(D)->mb_adaptive_frame_field_flag
	ldrb	r3, [r1, #1629]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1629B], MEM[base: _147, offset: 1629B]
	add	r10, r10, fp, lsl #1	@ tmp262, pParam_41(D)->mb_adaptive_frame_field_flag, D.36518,
.L90:
	cmp	r3, #1	@ MEM[base: _147, offset: 1629B],
	add	r10, r9, r10, lsl #2	@ tmp279, tmp335, tmp277,
	moveq	r3, #8	@ D.36516,
	movne	r3, #0	@ D.36516,
	ldr	r10, [r10, #12]	@ tmp282, g_ListStructField
	cmp	fp, #1	@ MEM[base: _147, offset: 1628B],
	moveq	fp, #4	@ D.36516,
	movne	fp, #0	@ D.36516,
	orr	fp, fp, r3	@ D.36516, D.36516, D.36516
	and	r3, r10, #3	@ D.36517, tmp282,
	orr	r3, fp, r3	@ D.36517, D.36516, D.36517
	mov	r10, lr, asl #2	@ D.36517, D.36517,
	orr	r5, r5, r3, asl r10	@ tmp, tmp, D.36517,
	ldr	r10, [r1, #1644]	@ MEM[base: _147, offset: 1644B], MEM[base: _147, offset: 1644B]
	and	r3, ip, #3	@ D.36517, i,
	mov	r10, r10, asl #1	@ D.36517, MEM[base: _147, offset: 1644B],
	add	fp, r3, r3, lsl #2	@ D.36517, D.36517, D.36517,
	and	r10, r10, #31	@ D.36517, D.36517,
	orr	r4, r4, r10, asl fp	@ tmp1, tmp1, D.36517,
	b	.L65	@
.L66:
	ldrb	r3, [r1, #1625]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1625B], MEM[base: _147, offset: 1625B]
	cmp	r3, #3	@ MEM[base: _147, offset: 1625B],
	beq	.L67	@,
	ldrb	fp, [r1, #1630]	@ zero_extendqisi2	@ D.36518, MEM[base: _147, offset: 1630B]
	and	lr, ip, #7	@ D.36517, i,
	ldr	r10, [r0, #32]	@ pParam_41(D)->mb_adaptive_frame_field_flag, pParam_41(D)->mb_adaptive_frame_field_flag
	ldrb	r3, [r1, #1631]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1631B], MEM[base: _147, offset: 1631B]
	add	r10, r10, fp, lsl #1	@ tmp298, pParam_41(D)->mb_adaptive_frame_field_flag, D.36518,
.L91:
	cmp	r3, #1	@ MEM[base: _147, offset: 1631B],
	add	r10, r9, r10, lsl #2	@ tmp315, tmp335, tmp313,
	moveq	r3, #8	@ D.36516,
	movne	r3, #0	@ D.36516,
	ldr	r10, [r10, #12]	@ tmp318, g_ListStructField
	cmp	fp, #1	@ MEM[base: _147, offset: 1630B],
	moveq	fp, #4	@ D.36516,
	movne	fp, #0	@ D.36516,
	orr	fp, fp, r3	@ D.36516, D.36516, D.36516
	and	r3, r10, #3	@ D.36517, tmp318,
	orr	r3, fp, r3	@ D.36517, D.36516, D.36517
	mov	r10, lr, asl #2	@ D.36517, D.36517,
	orr	r5, r5, r3, asl r10	@ tmp, tmp, D.36517,
	ldr	r10, [r1, #1644]	@ MEM[base: _147, offset: 1644B], MEM[base: _147, offset: 1644B]
	and	r3, ip, #3	@ D.36517, i,
	mov	r10, r10, asl #1	@ D.36517, MEM[base: _147, offset: 1644B],
	add	fp, r3, r3, lsl #2	@ D.36517, D.36517, D.36517,
	and	r10, r10, #30	@ D.36517, D.36517,
	orr	r10, r10, #1	@ D.36517, D.36517,
	orr	r4, r4, r10, asl fp	@ tmp1, tmp1, D.36517,
	b	.L65	@
.L92:
	tst	r3, #7	@ D.36517,
	strne	r5, [r2, r8, asl #2]	@ tmp, *_130
	strne	r4, [r2, r7, asl #2]	@ tmp1, *_134
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L59:
	ldrb	fp, [r1, #1626]	@ zero_extendqisi2	@ D.36516, MEM[base: _147, offset: 1626B]
	and	lr, ip, #7	@ D.36517, i,
	ldr	r10, [r0, #32]	@ pParam_41(D)->mb_adaptive_frame_field_flag, pParam_41(D)->mb_adaptive_frame_field_flag
	ldrb	r3, [r1, #1629]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1629B], MEM[base: _147, offset: 1629B]
	add	r10, r10, fp, lsl #1	@ tmp277, pParam_41(D)->mb_adaptive_frame_field_flag, D.36516,
	ldrb	fp, [r1, #1628]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1628B], MEM[base: _147, offset: 1628B]
	b	.L90	@
.L67:
	ldrb	fp, [r1, #1626]	@ zero_extendqisi2	@ D.36516, MEM[base: _147, offset: 1626B]
	and	lr, ip, #7	@ D.36517, i,
	ldr	r10, [r0, #32]	@ pParam_41(D)->mb_adaptive_frame_field_flag, pParam_41(D)->mb_adaptive_frame_field_flag
	ldrb	r3, [r1, #1631]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1631B], MEM[base: _147, offset: 1631B]
	add	r10, r10, fp, lsl #1	@ tmp313, pParam_41(D)->mb_adaptive_frame_field_flag, D.36516,
	ldrb	fp, [r1, #1630]	@ zero_extendqisi2	@ MEM[base: _147, offset: 1630B], MEM[base: _147, offset: 1630B]
	b	.L91	@
.L94:
	.align	2
.L93:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_WriteSliceMsgRefPicField, .-H264HAL_WriteSliceMsgRefPicField
	.align	2
	.global	H264HAL_SetSliceMsgRefPicFrame
	.type	H264HAL_SetSliceMsgRefPicFrame, %function
H264HAL_SetSliceMsgRefPicFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r1, r3, lsl #2	@ D.36537, pSlcPara, list,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r10, r3, #3	@ D.36533, list,
	ldr	ip, [r8, #52]	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)_87 + 52B], MEM[(struct H264_DEC_SLICE_PARAM_S *)_87 + 52B]
	mov	r9, r3, asl #3	@ D.36533, list,
	str	r2, [sp, #4]	@ pSLOT, %sfp
	mov	r10, r10, asl #2	@ Dn_num, D.36533,
	cmp	ip, #0	@ MEM[(struct H264_DEC_SLICE_PARAM_S *)_87 + 52B],
	add	r9, r9, #20	@ Dn_0, D.36533,
	beq	.L95	@,
	mov	r2, r3, asl #10	@ tmp167, list,
	ldr	fp, .L109	@ tmp194,
	add	r3, r2, r3, lsl #7	@ D.36538, tmp167, list,
	mov	r5, #0	@ i,
	add	r1, r1, r3	@ ivtmp.116, pSlcPara, D.36538
	mov	r6, r5	@ tmp1, i
	mov	r7, r5	@ tmp, i
.L101:
	ldrb	ip, [r1, #1626]	@ zero_extendqisi2	@ D.36535, MEM[base: _91, offset: 1626B]
	and	r3, r5, #7	@ D.36533, i,
	ldr	r2, [r0, #32]	@ pParam_26(D)->mb_adaptive_frame_field_flag, pParam_26(D)->mb_adaptive_frame_field_flag
	and	lr, r5, #3	@ D.36533, i,
	add	r5, r5, #1	@ i, i,
	add	r1, r1, #36	@ ivtmp.116, ivtmp.116,
	add	ip, r2, ip, lsl #1	@ tmp173, pParam_26(D)->mb_adaptive_frame_field_flag, D.36535,
	ldrb	r2, [r1, #1591]	@ zero_extendqisi2	@ MEM[base: _91, offset: 1627B], MEM[base: _91, offset: 1627B]
	add	ip, fp, ip, lsl #2	@ tmp175, tmp194, tmp173,
	cmp	r2, #1	@ MEM[base: _91, offset: 1627B],
	ldr	r2, [r1, #1608]	@ MEM[base: _91, offset: 1644B], MEM[base: _91, offset: 1644B]
	ldr	ip, [ip, #44]	@ tmp178, g_ListStructFrame
	moveq	r4, #8	@ D.36532,
	movne	r4, #0	@ D.36532,
	cmp	r3, #7	@ D.36533,
	and	ip, ip, #3	@ D.36533, tmp178,
	mov	r3, r3, asl #2	@ D.36533, D.36533,
	orr	ip, r4, ip	@ D.36533, D.36532, D.36533
	mov	r2, r2, asl #1	@ D.36533, MEM[base: _91, offset: 1644B],
	and	r2, r2, #31	@ D.36533, D.36533,
	add	r4, lr, lr, lsl #2	@ D.36533, D.36533, D.36533,
	orr	r7, r7, ip, asl r3	@ tmp, tmp, D.36533,
	ldreq	r3, [sp, #4]	@ pSLOT, %sfp
	orr	r6, r6, r2, asl r4	@ tmp1, tmp1, D.36533,
	streq	r7, [r3, r10, asl #2]	@ tmp, *_46
	addeq	r10, r10, #1	@ Dn_num, Dn_num,
	moveq	r7, #0	@ tmp,
	cmp	lr, #3	@ D.36533,
	ldreq	r3, [sp, #4]	@ pSLOT, %sfp
	streq	r6, [r3, r9, asl #2]	@ tmp1, *_51
	addeq	r9, r9, #1	@ Dn_0, Dn_0,
	ldr	r3, [r8, #52]	@ D.36533, MEM[(struct H264_DEC_SLICE_PARAM_S *)_87 + 52B]
	moveq	r6, #0	@ tmp1,
	cmp	r3, r5	@ D.36533, i
	bhi	.L101	@,
	tst	r3, #7	@ D.36533,
	ldrne	r3, [sp, #4]	@ pSLOT, %sfp
	strne	r7, [r3, r10, asl #2]	@ tmp, *_59
	strne	r6, [r3, r9, asl #2]	@ tmp1, *_63
.L95:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L110:
	.align	2
.L109:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_SetSliceMsgRefPicFrame, .-H264HAL_SetSliceMsgRefPicFrame
	.align	2
	.global	H264HAL_SetSliceMsgRefPicInfo
	.type	H264HAL_SetSliceMsgRefPicInfo, %function
H264HAL_SetSliceMsgRefPicInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pParam, pParam
	ldrb	r3, [r0]	@ zero_extendqisi2	@ pParam_2(D)->pic_structure, pParam_2(D)->pic_structure
	mov	r5, r1	@ pSlcPara, pSlcPara
	mov	r6, r2	@ pSLOT, pSLOT
	cmp	r3, #0	@ pParam_2(D)->pic_structure,
	bne	.L112	@,
	bl	H264HAL_SetSliceMsgRefPicFrame	@
	ldr	r3, .L117	@ tmp121,
	ldrb	r2, [r5]	@ zero_extendqisi2	@ D.36546, pSlcPara_4(D)->slice_type
	ldr	r3, [r3, r2, asl #2]	@ tmp123, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp123,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pSLOT
	mov	r1, r5	@, pSlcPara
	mov	r0, r4	@, pParam
	mov	r3, #1	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264HAL_SetSliceMsgRefPicFrame	@
.L112:
	mov	r3, #0	@,
	bl	H264HAL_WriteSliceMsgRefPicField	@
	ldr	r3, .L117	@ tmp124,
	ldrb	r2, [r5]	@ zero_extendqisi2	@ D.36546, pSlcPara_4(D)->slice_type
	ldr	r3, [r3, r2, asl #2]	@ tmp126, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp126,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pSLOT
	mov	r1, r5	@, pSlcPara
	mov	r0, r4	@, pParam
	mov	r3, #1	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264HAL_WriteSliceMsgRefPicField	@
.L118:
	.align	2
.L117:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_SetSliceMsgRefPicInfo, .-H264HAL_SetSliceMsgRefPicInfo
	.align	2
	.global	H264HAL_SetSliceMsgAPCInfo
	.type	H264HAL_SetSliceMsgAPCInfo, %function
H264HAL_SetSliceMsgAPCInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r3, #0	@ i,
	ldr	lr, [r1, #3928]!	@ pSlcPara_9(D)->Apc2RefIdx, pSlcPara_9(D)->Apc2RefIdx
	mov	r5, #36	@ Dn_num,
	and	lr, lr, #31	@ tmp, pSlcPara_9(D)->Apc2RefIdx,
	b	.L120	@
.L122:
	ldr	ip, [r1, #4]!	@ MEM[base: _31, offset: 0B], MEM[base: _31, offset: 0B]
	cmp	r0, #3	@ D.36564,
	and	r0, ip, #31	@ D.36564, MEM[base: _31, offset: 0B],
	orr	lr, lr, r0, asl r4	@ tmp, tmp, D.36564,
	streq	lr, [r2, r5, asl #2]	@ tmp, *_19
	addeq	r5, r5, #1	@ Dn_num, Dn_num,
	moveq	lr, #0	@ tmp,
.L120:
	add	r3, r3, #1	@ i, i,
	and	r0, r3, #3	@ D.36564, i,
	cmp	r3, #32	@ i,
	add	r4, r0, r0, lsl #2	@ D.36564, D.36564, D.36564,
	bne	.L122	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	H264HAL_SetSliceMsgAPCInfo, .-H264HAL_SetSliceMsgAPCInfo
	.align	2
	.global	H264HAL_SetSliceMsgWPInfo
	.type	H264HAL_SetSliceMsgWPInfo, %function
H264HAL_SetSliceMsgWPInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r0, #284]	@ pParam_2(D)->weighted_pred_flag, pParam_2(D)->weighted_pred_flag
	cmp	r3, #0	@ pParam_2(D)->weighted_pred_flag,
	beq	.L125	@,
	ldr	r3, .L149	@ tmp309,
	mov	ip, r3	@ tmp309, tmp309
	str	r3, [sp, #4]	@ tmp309, %sfp
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.36697, pSlcPara_4(D)->slice_type
	ldr	r3, [ip, r3, asl #2]	@ tmp242, g_SliceTypeForPMV
	cmp	r3, #1	@ tmp242,
	beq	.L126	@,
.L125:
	ldr	r3, [r0, #288]	@ pParam_2(D)->weighted_bipred_idc, pParam_2(D)->weighted_bipred_idc
	cmp	r3, #1	@ pParam_2(D)->weighted_bipred_idc,
	beq	.L147	@,
.L124:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L147:
	ldr	r3, .L149	@ tmp309,
	mov	r0, r3	@ tmp309, tmp309
	str	r3, [sp, #4]	@ tmp309, %sfp
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.36697, pSlcPara_4(D)->slice_type
	ldr	r3, [r0, r3, asl #2]	@ tmp246, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp246,
	bne	.L124	@,
.L126:
	mov	ip, #0	@ ivtmp.202,
	add	fp, r1, #852	@ ivtmp.200, pSlcPara,
	add	r9, r1, #84	@ ivtmp.209, pSlcPara,
	add	r8, r1, #980	@ ivtmp.218, pSlcPara,
	add	r7, r1, #212	@ ivtmp.225, pSlcPara,
	mov	r6, ip	@ i, ivtmp.202
	mov	r10, r1	@ ivtmp.147, pSlcPara
	mov	lr, r1	@ ivtmp.205, pSlcPara
.L129:
	ldr	r0, [fp, #4]!	@ MEM[base: _169, offset: 0B], MEM[base: _169, offset: 0B]
	add	r4, ip, #256	@ D.36700, ivtmp.202,
	ldr	r5, [r9, #4]!	@ MEM[base: _168, offset: 0B], MEM[base: _168, offset: 0B]
	add	r6, r6, #1	@ i, i,
	ldr	r3, [r1, #80]	@ pSlcPara_4(D)->luma_log2_weight_denom, pSlcPara_4(D)->luma_log2_weight_denom
	add	lr, lr, #4	@ ivtmp.205, ivtmp.205,
	uxtb	r0, r0	@ D.36697, MEM[base: _169, offset: 0B]
	ubfx	r5, r5, #0, #9	@ D.36697, MEM[base: _168, offset: 0B],,
	and	r3, r3, #7	@ D.36695, pSlcPara_4(D)->luma_log2_weight_denom,
	mov	r0, r0, asl #12	@ D.36697, D.36697,
	orr	r0, r0, r5, asl #3	@ D.36697, D.36697, D.36697,
	orr	r3, r0, r3	@ D.36697, D.36697, D.36695
	str	r3, [r2, r4]	@ D.36697, MEM[(volatile HI_S32 *)_166]
	ldr	r3, [r8, #4]!	@ MEM[base: _175, offset: 0B], MEM[base: _175, offset: 0B]
	add	r4, ip, #512	@ D.36700, ivtmp.202,
	ldr	r5, [r7, #4]!	@ MEM[base: _176, offset: 0B], MEM[base: _176, offset: 0B]
	add	r0, ip, #768	@ D.36700, ivtmp.202,
	add	ip, ip, #4	@ ivtmp.202, ivtmp.202,
	uxtb	r3, r3	@ D.36697, MEM[base: _175, offset: 0B]
	ubfx	r5, r5, #0, #9	@ D.36697, MEM[base: _176, offset: 0B],,
	mov	r3, r3, asl #12	@ D.36697, D.36697,
	orr	r3, r3, r5, asl #3	@ D.36697, D.36697, D.36697,
	ldr	r5, [r1, #84]	@ tmp354, pSlcPara_4(D)->chroma_log2_weight_denom
	and	r5, r5, #7	@ D.36695, tmp354,
	orr	r3, r3, r5	@ D.36697, D.36697, D.36695
	str	r3, [r2, r4]	@ D.36697, MEM[(volatile HI_S32 *)_178]
	ldr	r3, [lr, #340]	@ MEM[base: _179, offset: 344B], MEM[base: _179, offset: 344B]
	ldrb	r4, [lr, #1108]	@ zero_extendqisi2	@ D.36697, MEM[base: _179, offset: 1112B]
	ubfx	r3, r3, #0, #9	@ D.36697, MEM[base: _179, offset: 344B],,
	orr	r3, r3, r4, asl #9	@ D.36697, D.36697, D.36697,
	str	r3, [r2, r0]	@ D.36697, MEM[(volatile HI_S32 *)_182]
	ldr	r3, [r1, #44]	@ pSlcPara_4(D)->num_ref_idx_l0_active_minus1, pSlcPara_4(D)->num_ref_idx_l0_active_minus1
	cmp	r6, r3	@ i, pSlcPara_4(D)->num_ref_idx_l0_active_minus1
	bls	.L129	@,
	ldrb	r3, [r1]	@ zero_extendqisi2	@ D.36697, pSlcPara_4(D)->slice_type
	ldr	r0, [sp, #4]	@ tmp309, %sfp
	ldr	r3, [r0, r3, asl #2]	@ tmp276, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp276,
	beq	.L148	@,
.L130:
	mov	r4, r1	@ pSlcPara, pSlcPara
	mov	r5, r2	@ pSLOT_BASE, pSLOT_BASE
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #44]	@ D.36695, pSlcPara_4(D)->num_ref_idx_l0_active_minus1
	mov	r3, #0	@ i,
.L132:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r2	@ i, D.36695
	bls	.L132	@,
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.36697, pSlcPara_4(D)->slice_type
	ldr	r2, [sp, #4]	@ tmp309, %sfp
	ldr	r3, [r2, r3, asl #2]	@ tmp279, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp279,
	bne	.L124	@,
	ldr	r2, [r4, #40]	@ D.36695, pSlcPara_4(D)->num_ref_idx_l1_active_minus1
	mov	r3, #0	@ i,
.L133:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r2	@ i, D.36695
	bls	.L133	@,
	add	r7, r4, #1232	@ ivtmp.142, pSlcPara,
	add	r6, r4, #1360	@ ivtmp.160, pSlcPara,
	mov	ip, #0	@ ivtmp.144,
	add	r7, r7, #4	@ ivtmp.142, ivtmp.142,
	add	r6, r6, #4	@ ivtmp.160, ivtmp.160,
	add	r9, r4, #468	@ ivtmp.151, pSlcPara,
	add	r8, r4, #596	@ ivtmp.167, pSlcPara,
	mov	r2, ip	@ i, ivtmp.144
.L134:
	ldr	r3, [r7, #4]!	@ MEM[base: _137, offset: 0B], MEM[base: _137, offset: 0B]
	add	lr, ip, #384	@ D.36700, ivtmp.144,
	ldr	r1, [r9, #4]!	@ MEM[base: _136, offset: 0B], MEM[base: _136, offset: 0B]
	add	fp, ip, #640	@ D.36700, ivtmp.144,
	ldr	r0, [r4, #80]	@ pSlcPara_4(D)->luma_log2_weight_denom, pSlcPara_4(D)->luma_log2_weight_denom
	add	r2, r2, #1	@ i, i,
	uxtb	r3, r3	@ D.36697, MEM[base: _137, offset: 0B]
	ubfx	r1, r1, #0, #9	@ D.36697, MEM[base: _136, offset: 0B],,
	and	r0, r0, #7	@ D.36695, pSlcPara_4(D)->luma_log2_weight_denom,
	add	r10, r10, #4	@ ivtmp.147, ivtmp.147,
	mov	r3, r3, asl #12	@ D.36697, D.36697,
	orr	r3, r3, r1, asl #3	@ D.36697, D.36697, D.36697,
	add	r1, ip, #896	@ D.36700, ivtmp.144,
	orr	r3, r3, r0	@ D.36697, D.36697, D.36695
	str	r3, [r5, lr]	@ D.36697, MEM[(volatile HI_S32 *)_133]
	ldr	r0, [r6, #4]!	@ MEM[base: _131, offset: 0B], MEM[base: _131, offset: 0B]
	add	ip, ip, #4	@ ivtmp.144, ivtmp.144,
	ldr	r3, [r8, #4]!	@ MEM[base: _129, offset: 0B], MEM[base: _129, offset: 0B]
	ldr	lr, [r4, #84]	@ pSlcPara_4(D)->chroma_log2_weight_denom, pSlcPara_4(D)->chroma_log2_weight_denom
	uxtb	r0, r0	@ D.36697, MEM[base: _131, offset: 0B]
	ubfx	r3, r3, #0, #9	@ D.36697, MEM[base: _129, offset: 0B],,
	and	lr, lr, #7	@ D.36695, pSlcPara_4(D)->chroma_log2_weight_denom,
	mov	r0, r0, asl #12	@ D.36697, D.36697,
	orr	r3, r0, r3, asl #3	@ D.36697, D.36697, D.36697,
	orr	r3, r3, lr	@ D.36697, D.36697, D.36695
	str	r3, [r5, fp]	@ D.36697, MEM[(volatile HI_S32 *)_126]
	ldr	r3, [r10, #724]	@ MEM[base: _125, offset: 728B], MEM[base: _125, offset: 728B]
	ldrb	r0, [r10, #1492]	@ zero_extendqisi2	@ D.36697, MEM[base: _125, offset: 1496B]
	ubfx	r3, r3, #0, #9	@ D.36697, MEM[base: _125, offset: 728B],,
	orr	r3, r3, r0, asl #9	@ D.36697, D.36697, D.36697,
	str	r3, [r5, r1]	@ D.36697, MEM[(volatile HI_S32 *)_115]
	ldr	r3, [r4, #40]	@ pSlcPara_4(D)->num_ref_idx_l1_active_minus1, pSlcPara_4(D)->num_ref_idx_l1_active_minus1
	cmp	r2, r3	@ i, pSlcPara_4(D)->num_ref_idx_l1_active_minus1
	bls	.L134	@,
	b	.L124	@
.L148:
	ldr	r0, [r1, #40]	@ D.36695, pSlcPara_4(D)->num_ref_idx_l1_active_minus1
	mov	r3, #0	@ i,
.L131:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, D.36695
	bls	.L131	@,
	b	.L130	@
.L150:
	.align	2
.L149:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_SetSliceMsgWPInfo, .-H264HAL_SetSliceMsgWPInfo
	.align	2
	.global	H264HAL_CheckParaValid
	.type	H264HAL_CheckParaValid, %function
H264HAL_CheckParaValid:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pParam
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L154	@,
	ldr	r3, [r0, #28]	@ pParam_3(D)->pic_width_in_mb, pParam_3(D)->pic_width_in_mb
	cmp	r3, #512	@ pParam_3(D)->pic_width_in_mb,
	bhi	.L154	@,
	ldr	r3, [r0, #20]	@ pParam_3(D)->pic_height_in_mb, pParam_3(D)->pic_height_in_mb
	cmp	r3, #512	@ pParam_3(D)->pic_height_in_mb,
	bhi	.L154	@,
	ldr	r3, [r0, #1124]	@ pParam_3(D)->pFirstSlice, pParam_3(D)->pFirstSlice
	cmp	r3, #0	@ pParam_3(D)->pFirstSlice,
	beq	.L154	@,
	mov	r0, #0	@ D.36704,
	ldmfd	sp!, {r4, pc}	@
.L154:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36704,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_CheckParaValid, .-H264HAL_CheckParaValid
	.align	2
	.global	H264HAL_GetVdmRegVirAddr
	.type	H264HAL_GetVdmRegVirAddr, %function
H264HAL_GetVdmRegVirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L167	@,
	ldr	r3, [r0]	@ pHwMem_6(D)->pVdmRegVirAddr, pHwMem_6(D)->pVdmRegVirAddr
	mov	r4, r0	@ pHwMem, pHwMem
	cmp	r3, #0	@ pHwMem_6(D)->pVdmRegVirAddr,
	beq	.L163	@,
.L164:
	mov	r0, #0	@ D.36713,
	ldmfd	sp!, {r4, pc}	@
.L163:
	mov	r0, #0	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.36715,
	str	r0, [r4]	@ D.36715, pHwMem_6(D)->pVdmRegVirAddr
	bne	.L164	@,
.L167:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36713,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_GetVdmRegVirAddr, .-H264HAL_GetVdmRegVirAddr
	.align	2
	.global	H264HAL_V200R004_CfgVdmReg
	.type	H264HAL_V200R004_CfgVdmReg, %function
H264HAL_V200R004_CfgVdmReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, #920]	@ D.36739, pParam_9(D)->mbtodec
	mov	r7, r2	@ VdhId, VdhId
	mov	r2, #0	@ tmp261,
	str	r2, [sp, #4]	@ tmp261, D32
	cmp	r3, #262144	@ D.36739,
	movw	r4, #1140	@ tmp281,
	suble	r2, r3, #1	@ D.36738, D.36739,
	ldr	r3, [sp, #4]	@ tmp262,
	movwgt	r2, #65535	@ D.36738,
	ubfxle	r2, r2, #0, #20	@ D.36738, D.36738,,
	movtgt	r2, 3	@ D.36738,
	bfi	r3, r2, #0, #20	@ tmp262, D.36738,,
	mul	r4, r4, r7	@ tmp280, tmp281, VdhId
	mov	r2, r3, lsr #24	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag, tmp262,
	str	r3, [sp, #4]	@ tmp262,
	and	r2, r2, #62	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].load_qmatrix_flag,
	mov	r3, r3, lsr #16	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en, tmp262,
	orr	r2, r2, #65	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].coef_idx_detect_en,
	and	r3, r3, #191	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].marker_bit_detect_en,
	bfc	r2, #1, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en,,
	bfc	r3, #7, #1	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en,,
	strb	r2, [sp, #7]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].vop_type_detect_en
	strb	r3, [sp, #6]	@ MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en, MEM[(struct BASIC_V200R004_CFG0 *)&D32].ac_last_detect_en
	mov	r5, r0	@ pParam, pParam
	ldr	r6, .L181	@ tmp455,
	mov	r9, r1	@ pHwMem, pHwMem
	ldr	r3, [sp, #4]	@ D.36739, D32
	mov	r8, #0	@ tmp284,
	str	r3, [r0, #1136]	@ D.36739, pParam_9(D)->basic_cfg0
	ldr	r2, [r6, r4]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #8]	@ D.36739, *_32
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@ tmp302,
	ldr	r2, [r5, #912]	@ pParam_9(D)->imgstride, pParam_9(D)->imgstride
	mov	r3, #0	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard,
	bfi	r3, r8, #0, #4	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard, tmp284,,
	mov	r2, r2, lsr #6	@ D.36740, pParam_9(D)->imgstride,
	str	r8, [sp, #4]	@ tmp284, D32
	ldrh	r0, [sp, #6]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	strb	r3, [sp, #4]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard, MEM[(struct BASIC_V200R004_CFG1 *)&D32].video_standard
	bfi	r0, r1, #0, #12	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, tmp302,,
	ldrh	r1, [sp, #4]	@, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	strh	r0, [sp, #6]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num
	mov	r3, r0, lsr #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].max_slcgrp_num,
	bfi	r1, r2, #4, #10	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, D.36740,,
	and	r3, r3, #239	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].line_num_output_en,
	strh	r1, [sp, #4]	@ movhi	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride
	orr	r3, r3, #32	@ tmp307, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en,
	strb	r3, [sp, #7]	@ tmp307, MEM[(struct BASIC_V200R004_CFG1 *)&D32].dblk_1d_en
	ldr	ip, [r5, #1384]	@ pParam_9(D)->Compress_en, pParam_9(D)->Compress_en
	mov	r2, r1, lsr #8	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ddr_stride,
	uxtb	r3, r3	@ tmp310, tmp307
	ldrb	r0, [r5, #2]	@ zero_extendqisi2	@ pParam_9(D)->NewPicFlag, pParam_9(D)->NewPicFlag
	bfi	r3, ip, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en, pParam_9(D)->Compress_en,,
	ldr	r1, [r6, r4]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	bfi	r2, r0, #6, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].fst_slc_grp, pParam_9(D)->NewPicFlag,,
	mvn	r3, r3, asl #25	@ tmp314, MEM[(struct BASIC_V200R004_CFG1 *)&D32].compress_en,
	bfi	r2, r8, #7, #1	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, tmp284,,
	mvn	r3, r3, lsr #25	@ tmp314, tmp314,
	strb	r2, [sp, #5]	@ MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en, MEM[(struct BASIC_V200R004_CFG1 *)&D32].mv_output_en
	strb	r3, [sp, #7]	@ tmp314, MEM[(struct BASIC_V200R004_CFG1 *)&D32].ppfd_en
	ldr	r3, [sp, #4]	@ D.36739, D32
	str	r3, [r5, #1140]	@ D.36739, pParam_9(D)->basic_cfg1
	str	r3, [r1, #12]	@ D.36739, *_64
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, r4]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	ldr	r3, [r9, #44]	@ pHwMem_68(D)->MsgSlotAddr, pHwMem_68(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.36740, pHwMem_68(D)->MsgSlotAddr,
	str	r3, [r5, #1144]	@ D.36740, pParam_9(D)->avm_addr
	str	r3, [r2, #16]	@ D.36740, *_77
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, r4]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	ldr	r3, [r9, #28]	@ pHwMem_68(D)->MsgSlotAddr, pHwMem_68(D)->MsgSlotAddr
	bic	r3, r3, #15	@ D.36740, pHwMem_68(D)->MsgSlotAddr,
	str	r3, [r5, #1148]	@ D.36740, pParam_9(D)->vam_addr
	str	r3, [r2, #20]	@ D.36740, *_89
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, r4]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	ldr	r3, [r5, #916]	@ pParam_9(D)->stream_base_addr, pParam_9(D)->stream_base_addr
	bic	r3, r3, #15	@ D.36740, pParam_9(D)->stream_base_addr,
	str	r3, [r5, #1152]	@ D.36740, pParam_9(D)->stream_base_addr_reg_tmp
	str	r3, [r2, #24]	@ D.36740, *_101
	str	r3, [sp, #4]	@ D.36740, MEM[(struct STREAM_V200R004_BASE_ADDR *)&D32].stream_base_addr
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #28]	@ pParam_9(D)->pic_width_in_mb, pParam_9(D)->pic_width_in_mb
	cmp	r3, #120	@ pParam_9(D)->pic_width_in_mb,
	movls	r3, #65536	@ tmp341,
	strhi	r8, [sp, #4]	@ tmp284, D32
	strls	r3, [sp, #4]	@ tmp341, D32
	cmp	r7, #0	@ VdhId,
	beq	.L180	@,
.L172:
	movw	r8, #1140	@ tmp356,
	movw	r3, #3075	@ tmp347,
	mul	r8, r8, r7	@ tmp355, tmp356, VdhId
	movt	r3, 48	@ tmp347,
	str	r3, [r5, #1160]	@ tmp347, pParam_9(D)->sed_to
	mov	r4, #0	@ tmp420,
	str	r3, [r5, #1164]	@ tmp347, pParam_9(D)->itrans_to
	str	r3, [r5, #1168]	@ tmp347, pParam_9(D)->pmv_to
	str	r3, [r5, #1172]	@ tmp347, pParam_9(D)->prc_to
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r5, #1176]	@ tmp347, pParam_9(D)->rcn_to
	str	r3, [r5, #1180]	@ tmp347, pParam_9(D)->dblk_to
	str	r3, [r5, #1184]	@ tmp347, pParam_9(D)->ppfd_to
	str	r3, [r2, #60]	@ tmp347, *_126
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp347, *_131
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp347, *_136
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp347, *_141
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp347, *_146
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp347, *_151
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp347, *_156
	ldr	r3, [r5, #292]	@ pParam_9(D)->CurrPicImgIdc, pParam_9(D)->CurrPicImgIdc
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	add	r3, r5, r3, lsl #2	@ tmp398, pParam, pParam_9(D)->CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp400, pParam_9(D)->ImgPhyAddr
	bic	r3, r3, #15	@ D.36740, tmp400,
	str	r3, [r5, #1188]	@ D.36740, pParam_9(D)->ystaddr_1d
	str	r3, [r2, #96]	@ D.36740, *_167
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #912]	@ D.36740, pParam_9(D)->imgstride
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	ldr	r10, [r5, #24]	@ height_in_mb, pParam_9(D)->frame_height_in_mb
	str	r3, [r5, #1192]	@ D.36740, pParam_9(D)->ystride_1d
	str	r3, [r2, #100]	@ D.36740, *_178
	add	r10, r10, #1	@ D.36740, height_in_mb,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #912]	@ pParam_9(D)->imgstride, pParam_9(D)->imgstride
	mov	r10, r10, lsr #1	@ D.36740, D.36740,
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	mov	r3, r3, asl #1	@ D.36740, pParam_9(D)->imgstride,
	mul	r3, r10, r3	@ D.36740, D.36740, D.36740
	str	r3, [r5, #1196]	@ D.36740, pParam_9(D)->uvoffset_1d
	str	r3, [r2, #104]	@ D.36740, *_192
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r4, [r5, #1200]	@ tmp420, pParam_9(D)->prcnum_1d_cnt
	str	r4, [r3, #108]	@ tmp420, *_200
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	ldr	r3, [r9, #1100]	@ pHwMem_68(D)->PpfdBufAddr, pHwMem_68(D)->PpfdBufAddr
	bic	r3, r3, #15	@ D.36740, pHwMem_68(D)->PpfdBufAddr,
	str	r3, [r5, #1212]	@ D.36740, pParam_9(D)->ppfd_buf_addr
	str	r3, [r2, #128]	@ D.36740, *_210
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #1104]	@ pHwMem_68(D)->PpfdBufLen, pHwMem_68(D)->PpfdBufLen
	ldr	r2, [r6, r8]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	r4, [sp, #4]	@ tmp420, D32
	strh	r3, [sp, #4]	@ movhi	@ pHwMem_68(D)->PpfdBufLen, MEM[(struct PPFD_V200R004_BUF_LEN *)&D32].ppfd_buf_len
	ldr	r3, [sp, #4]	@ D.36739, D32
	str	r3, [r5, #1216]	@ D.36739, pParam_9(D)->ppfd_buf_len
	str	r3, [r2, #132]	@ D.36739, *_223
	bl	vfmw_dprint_nothing	@
	add	r1, r5, #1248	@ ivtmp.261, pParam,
	add	r1, r1, #4	@ ivtmp.261, ivtmp.261,
	mov	r3, r4	@ ivtmp.269, tmp420
	mov	ip, r4	@ D.36737, ivtmp.269
.L176:
	ldr	r0, [r1, #4]!	@ MEM[base: _170, offset: 0B], MEM[base: _170, offset: 0B]
	and	r0, r0, #3	@ D.36740, MEM[base: _170, offset: 0B],
	orr	ip, ip, r0, asl r3	@ D.36737, D.36737, D.36740,
	add	r3, r3, #2	@ ivtmp.269, ivtmp.269,
	cmp	r3, #32	@ ivtmp.269,
	bne	.L176	@,
	movw	r2, #1140	@ tmp446,
	mul	r7, r2, r7	@ tmp445, tmp446, VdhId
	ldr	r3, [r6, r7]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	str	ip, [r3, #148]	@ D.36737, *_240
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, r7]	@ g_HwMem[VdhId_28(D)].pVdmRegVirAddr, g_HwMem[VdhId_28(D)].pVdmRegVirAddr
	mov	r2, #0	@ tmp454,
	str	r2, [r3, #152]	@ tmp454, *_248
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L180:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, [sp, #4]	@ D32, D32
	cmp	r3, #0	@ D32,
	ldr	r3, .L181+4	@ tmp344,
	biceq	r1, r0, #65536	@ datTmp, datTmp,
	orrne	r1, r0, #65536	@ datTmp, datTmp,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L172	@
.L182:
	.align	2
.L181:
	.word	g_HwMem
	.word	s_RegPhyBaseAddr
	.fnend
	.size	H264HAL_V200R004_CfgVdmReg, .-H264HAL_V200R004_CfgVdmReg
	.align	2
	.global	H264HAL_FindNextSlicePara
	.type	H264HAL_FindNextSlicePara, %function
H264HAL_FindNextSlicePara:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, r1	@ currIdx, SliceParaNum
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	lr, [r0, #48]	@ first_mb_in_slice, pSlicePara_6(D)->first_mb_in_slice
	str	r2, [r3]	@ currIdx, *nextIdx_8(D)
	ldmgefd	sp!, {r4, pc}	@
	ldr	r0, [r0, #4056]	@ pSlicePara, pSlicePara_6(D)->pNextSlice
	cmp	r0, #0	@ pSlicePara,
	beq	.L187	@,
	ldr	ip, [r0, #48]	@ pSlicePara_21->first_mb_in_slice, pSlicePara_21->first_mb_in_slice
	cmp	lr, ip	@ first_mb_in_slice, pSlicePara_21->first_mb_in_slice
	ldmccfd	sp!, {r4, pc}	@
	add	r2, r2, #1	@ ivtmp.273, currIdx,
	b	.L186	@
.L188:
	ldr	r0, [r0, #4056]	@ pSlicePara, pSlicePara_27->pNextSlice
	cmp	r0, #0	@ pSlicePara,
	beq	.L187	@,
	ldr	ip, [r0, #48]	@ pSlicePara_13->first_mb_in_slice, pSlicePara_13->first_mb_in_slice
	cmp	lr, ip	@ first_mb_in_slice, pSlicePara_13->first_mb_in_slice
	ldmccfd	sp!, {r4, pc}	@
.L186:
	cmp	r2, r1	@ ivtmp.273, SliceParaNum
	str	r2, [r3]	@ ivtmp.273, *nextIdx_8(D)
	add	r2, r2, #1	@ ivtmp.273, ivtmp.273,
	bne	.L188	@,
	ldmfd	sp!, {r4, pc}	@
.L187:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ pSlicePara,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_FindNextSlicePara, .-H264HAL_FindNextSlicePara
	.align	2
	.global	H264HAL_V200R004_SetPicMsg
	.type	H264HAL_V200R004_SetPicMsg, %function
H264HAL_V200R004_SetPicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pParam, pParam
	mov	r0, r2	@, PicMsgSlotPhy
	mov	r5, r1	@ pHwMem, pHwMem
	mov	r6, r3	@ FstSlcMsgSlotPhy, FstSlcMsgSlotPhy
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pSLOT
	beq	.L223	@,
	ldrb	r7, [r4]	@ zero_extendqisi2	@ D.36831, pParam_20(D)->pic_structure
	bic	r6, r6, #15	@ D.36831, FstSlcMsgSlotPhy,
	ldr	r3, [r4, #32]	@ pParam_20(D)->mb_adaptive_frame_field_flag, pParam_20(D)->mb_adaptive_frame_field_flag
	ldr	lr, [r4, #36]	@ pParam_20(D)->transform_8x8_mode_flag, pParam_20(D)->transform_8x8_mode_flag
	ldr	r8, [r4, #40]	@ pParam_20(D)->entropy_coding_mode_flag, pParam_20(D)->entropy_coding_mode_flag
	add	r3, r3, r7, lsl #1	@ tmp257, pParam_20(D)->mb_adaptive_frame_field_flag, D.36831,
	ldr	r7, .L224	@ tmp254,
	ldr	r1, [r4, #44]	@ pParam_20(D)->constrained_intra_pred_flag, pParam_20(D)->constrained_intra_pred_flag
	mov	lr, lr, asl #28	@ D.36827, pParam_20(D)->transform_8x8_mode_flag,
	ldr	ip, [r4, #28]	@ pParam_20(D)->pic_width_in_mb, pParam_20(D)->pic_width_in_mb
	add	r7, r7, r3, lsl #2	@ tmp259, tmp254, tmp257,
	ldr	r2, [r4, #20]	@ pParam_20(D)->pic_height_in_mb, pParam_20(D)->pic_height_in_mb
	orr	lr, lr, r8, asl #27	@ D.36827, D.36827, pParam_20(D)->entropy_coding_mode_flag,
	ldr	r3, [r4, #16]	@ D.36829, pParam_20(D)->nal_ref_idc
	orr	r1, lr, r1, asl #26	@ D.36827, D.36827, pParam_20(D)->constrained_intra_pred_flag,
	sub	ip, ip, #1	@ D.36827, pParam_20(D)->pic_width_in_mb,
	sub	r2, r2, #1	@ D.36827, pParam_20(D)->pic_height_in_mb,
	ldr	lr, [r7, #76]	@ tmp262, g_StructTrans
	cmp	r3, #0	@ D.36829,
	orr	r1, r1, ip	@ D.36827, D.36827, D.36827
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ pParam_20(D)->chroma_format_idc, pParam_20(D)->chroma_format_idc
	orr	r1, r1, r2, asl #16	@ D.36827, D.36827, D.36827,
	movne	r3, #-2147483648	@ D.36829,
	orr	r2, r1, lr, asl #14	@ D.36827, D.36827, tmp262,
	cmp	ip, #1	@ pParam_20(D)->chroma_format_idc,
	orr	r2, r2, r3	@ D.36827, D.36827, D.36829
	moveq	r3, #33554432	@ D.36829,
	movne	r3, #0	@ D.36829,
	orr	r2, r2, r3	@ D.36831, D.36827, D.36829
	str	r2, [r0]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18]
	ldr	r3, [r4, #296]	@ pParam_20(D)->CurrPicImg2DAddr, pParam_20(D)->CurrPicImg2DAddr
	bic	r3, r3, #15	@ D.36831, pParam_20(D)->CurrPicImg2DAddr,
	str	r3, [r0, #4]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 4B]
	ldr	r3, [r4, #48]	@ D.36831, pParam_20(D)->ThisPoc
	str	r3, [r0, #8]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 8B]
	ldr	r3, [r4, #32]	@ pParam_20(D)->mb_adaptive_frame_field_flag, pParam_20(D)->mb_adaptive_frame_field_flag
	cmp	r3, #0	@ pParam_20(D)->mb_adaptive_frame_field_flag,
	streq	r3, [r0, #12]	@ pParam_20(D)->mb_adaptive_frame_field_flag, MEM[(volatile HI_S32 *)pSLOT_18 + 12B]
	ldrne	r3, [r4, #52]	@ D.36831, pParam_20(D)->TopPoc
	strne	r3, [r0, #12]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 12B]
	ldrne	r3, [r4, #56]	@ D.36831, pParam_20(D)->BottomPoc
	str	r3, [r0, #16]	@ pParam_20(D)->mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ pHwMem_61(D)->SedTopAddr, pHwMem_61(D)->SedTopAddr
	bic	r3, r3, #15	@ D.36831, pHwMem_61(D)->SedTopAddr,
	str	r3, [r0, #20]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 20B]
	ldr	r3, [r5, #1084]	@ pHwMem_61(D)->PmvTopAddr, pHwMem_61(D)->PmvTopAddr
	bic	r3, r3, #15	@ D.36831, pHwMem_61(D)->PmvTopAddr,
	str	r3, [r0, #24]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 24B]
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pParam_20(D)->pic_structure, pParam_20(D)->pic_structure
	cmp	r3, #2	@ pParam_20(D)->pic_structure,
	ldreq	r2, [r4, #300]	@ pParam_20(D)->CurrPicPmvIdc, pParam_20(D)->CurrPicPmvIdc
	ldrne	r3, [r4, #300]	@ pParam_20(D)->CurrPicPmvIdc, pParam_20(D)->CurrPicPmvIdc
	addeq	r2, r2, #206	@ tmp275, pParam_20(D)->CurrPicPmvIdc,
	ldreq	r1, [r4, #908]	@ pParam_20(D)->half_pmvblk_offset, pParam_20(D)->half_pmvblk_offset
	addne	r3, r3, #206	@ tmp272, pParam_20(D)->CurrPicPmvIdc,
	ldreq	r3, [r4, r2, asl #2]	@ tmp278, pParam_20(D)->PmvPhyAddr
	ldrne	r3, [r4, r3, asl #2]	@ tmp274, pParam_20(D)->PmvPhyAddr
	addeq	r3, r3, r1	@ D.36827, tmp278, pParam_20(D)->half_pmvblk_offset
	bic	r3, r3, #15	@ tmp, D.36827,
	str	r3, [r0, #28]	@ tmp, MEM[(volatile HI_S32 *)pSLOT_18 + 28B]
	ldr	r3, [r5, #1088]	@ pHwMem_61(D)->RcnTopAddr, pHwMem_61(D)->RcnTopAddr
	bic	r3, r3, #15	@ D.36831, pHwMem_61(D)->RcnTopAddr,
	str	r3, [r0, #32]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 32B]
	str	r6, [r0, #36]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 36B]
	ldr	r3, [r4, #1116]	@ i, pParam_20(D)->ApcSize
	cmp	r3, #0	@ i,
	beq	.L202	@,
	add	ip, r4, #920	@ ivtmp.334, pParam,
	add	r1, r0, #40	@ ivtmp.342, pSLOT,
	mov	r2, #0	@ i,
.L203:
	ldr	r3, [ip, #4]!	@ MEM[base: _192, offset: 0B], MEM[base: _192, offset: 0B]
	add	r2, r2, #1	@ i, i,
	add	r3, r4, r3, lsl #2	@ tmp283, pParam, MEM[base: _192, offset: 0B],
	ldr	r3, [r3, #308]	@ tmp285, pParam_20(D)->ImgPhyAddr
	bic	r3, r3, #15	@ D.36831, tmp285,
	str	r3, [r1], #4	@ D.36831, MEM[(volatile HI_S32 *)_99]
	ldr	r3, [r4, #1116]	@ i, pParam_20(D)->ApcSize
	cmp	r3, r2	@ i, i
	bhi	.L203	@,
	cmp	r3, #15	@ i,
	bhi	.L207	@,
.L202:
	add	r1, r3, #10	@ D.36833, i,
	add	r1, r0, r1, lsl #2	@ ivtmp.328, pSLOT, D.36833,
.L206:
	ldr	r2, [r4, #924]	@ pParam_20(D)->Apc2Idc, pParam_20(D)->Apc2Idc
	add	r3, r3, #1	@ i, i,
	cmp	r3, #15	@ i,
	add	r2, r4, r2, lsl #2	@ tmp291, pParam, pParam_20(D)->Apc2Idc,
	ldr	r2, [r2, #308]	@ tmp293, pParam_20(D)->ImgPhyAddr
	bic	r2, r2, #15	@ D.36831, tmp293,
	str	r2, [r1], #4	@ D.36831, MEM[(volatile HI_S32 *)_109]
	bls	.L206	@,
.L207:
	ldr	r3, [r5, #1076]	@ pHwMem_61(D)->H264MnAddr, pHwMem_61(D)->H264MnAddr
	bic	r3, r3, #15	@ D.36831, pHwMem_61(D)->H264MnAddr,
	str	r3, [r0, #104]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 104B]
	ldr	r3, [r4, #1116]	@ i, pParam_20(D)->ApcSize
	cmp	r3, #0	@ i,
	beq	.L205	@,
	add	ip, r4, #1040	@ ivtmp.318, pParam,
	add	lr, r4, #984	@ ivtmp.306, pParam,
	add	ip, ip, #8	@ ivtmp.318, ivtmp.318,
	add	r2, r0, #108	@ ivtmp.314, pSLOT,
	mov	r1, #0	@ i,
.L208:
	ldr	r3, [lr, #4]!	@ D.36831, MEM[base: _204, offset: 0B]
	add	r1, r1, #1	@ i, i,
	add	r2, r2, #8	@ ivtmp.314, ivtmp.314,
	str	r3, [r2, #-8]	@ D.36831, MEM[(volatile HI_S32 *)_122]
	ldr	r3, [ip, #4]!	@ D.36831, MEM[base: _203, offset: 0B]
	str	r3, [r2, #-4]	@ D.36831, MEM[(volatile HI_S32 *)_201]
	ldr	r3, [r4, #1116]	@ i, pParam_20(D)->ApcSize
	cmp	r3, r1	@ i, i
	bhi	.L208	@,
	cmp	r3, #15	@ i,
	bhi	.L211	@,
.L205:
	add	r2, r0, r3, lsl #3	@ D.36833, pSLOT, i,
	mov	r1, #0	@ tmp301,
	add	r2, r2, #108	@ ivtmp.299, D.36833,
.L210:
	add	r3, r3, #1	@ i, i,
	str	r1, [r2]	@ tmp301, MEM[(volatile HI_S32 *)_135]
	cmp	r3, #15	@ i,
	str	r1, [r2, #4]	@ tmp301, MEM[(volatile HI_S32 *)_152]
	add	r2, r2, #8	@ ivtmp.299, ivtmp.299,
	bls	.L210	@,
.L211:
	ldr	r1, [r5, #1096]	@ pHwMem_61(D)->DblkTopAddr, pHwMem_61(D)->DblkTopAddr
	add	r2, r4, #56	@ ivtmp.283, pParam,
	add	r3, r0, #252	@ ivtmp.289, pSLOT,
	add	ip, r0, #476	@ D.36834, pSLOT,
	bic	r1, r1, #15	@ D.36831, pHwMem_61(D)->DblkTopAddr,
	str	r1, [r0, #236]	@ D.36831, MEM[(volatile HI_S32 *)pSLOT_18 + 236B]
.L209:
	ldr	r1, [r2, #4]!	@ D.36827, MEM[base: _216, offset: 0B]
	str	r1, [r3, #4]!	@ D.36827, MEM[base: _215, offset: 0B]
	cmp	r3, ip	@ ivtmp.289, D.36834
	bne	.L209	@,
	mov	r0, #0	@ D.36828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L223:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L225:
	.align	2
.L224:
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_V200R004_SetPicMsg, .-H264HAL_V200R004_SetPicMsg
	.align	2
	.global	H264HAL_V200R004_SetSliceMsg
	.type	H264HAL_V200R004_SetSliceMsg, %function
H264HAL_V200R004_SetSliceMsg:
	.fnstart
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ pParam, pParam
	mov	r0, r3	@, CurrMsgSlotPhy
	mov	r7, r2	@ pSlcPara, pSlcPara
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ pSLOT_BASE,
	beq	.L243	@,
	mov	r2, r8	@, pSLOT_BASE
	mov	r1, r7	@, pSlcPara
	mov	r0, r6	@, pParam
	bl	H264HAL_SetSliceMsgStreamAddrInfo	@
	ldr	r0, .L245	@ tmp225,
	ldr	r2, [r7, #48]	@ pSlcPara_9(D)->first_mb_in_slice, pSlcPara_9(D)->first_mb_in_slice
	ldr	r3, [r7, #32]	@ pSlcPara_9(D)->SliceQPy, pSlcPara_9(D)->SliceQPy
	ldr	r1, [r7, #36]	@ pSlcPara_9(D)->cabac_init_idc, pSlcPara_9(D)->cabac_init_idc
	ubfx	r2, r2, #0, #20	@ D.36853, pSlcPara_9(D)->first_mb_in_slice,,
	ldrb	r0, [r0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	and	r1, r1, #3	@ D.36853, pSlcPara_9(D)->cabac_init_idc,
	orr	r3, r2, r3, asl #26	@ D.36853, D.36853, pSlcPara_9(D)->SliceQPy,
	cmp	r0, #0	@ g_not_direct_8x8_inference_flag,
	orr	r3, r3, r1, asl #24	@ D.36854, D.36853, D.36853,
	str	r3, [r8, #24]	@ D.36854, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 24B]
	ldrb	r5, [r7, #3]	@ zero_extendqisi2	@ D.36855, pSlcPara_9(D)->direct_8x8_inference_flag
	bne	.L230	@,
	cmp	r5, #0	@ D.36855,
	beq	.L244	@,
.L230:
	ldr	lr, [r7, #56]	@ pSlcPara_9(D)->listXsize, pSlcPara_9(D)->listXsize
	mov	r2, r8	@, pSLOT_BASE
	ldr	ip, [r7, #52]	@ pSlcPara_9(D)->listXsize, pSlcPara_9(D)->listXsize
	mov	r1, r7	@, pSlcPara
	ldr	r10, [r7, #40]	@ pSlcPara_9(D)->num_ref_idx_l1_active_minus1, pSlcPara_9(D)->num_ref_idx_l1_active_minus1
	mov	r0, r6	@, pParam
	ldr	r9, [r7, #44]	@ pSlcPara_9(D)->num_ref_idx_l0_active_minus1, pSlcPara_9(D)->num_ref_idx_l0_active_minus1
	mov	lr, lr, asl #8	@ D.36853, pSlcPara_9(D)->listXsize,
	ldrb	fp, [r7]	@ zero_extendqisi2	@ D.36854, pSlcPara_9(D)->slice_type
	and	r10, r10, #31	@ D.36853, pSlcPara_9(D)->num_ref_idx_l1_active_minus1,
	ldr	r4, .L245+4	@ tmp291,
	orr	ip, lr, ip, asl #2	@ D.36853, D.36853, pSlcPara_9(D)->listXsize,
	and	r9, r9, #31	@ D.36853, pSlcPara_9(D)->num_ref_idx_l0_active_minus1,
	orr	ip, ip, r10, asl #21	@ D.36853, D.36853, D.36853,
	ldrb	r10, [r7, #2]	@ zero_extendqisi2	@ D.36854, pSlcPara_9(D)->direct_spatial_mv_pred_flag
	ldr	lr, [r4, fp, asl #2]	@ tmp247, g_SliceTypeForPMV
	orr	r3, ip, r9, asl #16	@ D.36853, D.36853, D.36853,
	orr	r3, r3, lr	@ D.36853, D.36853, tmp247
	orr	r3, r3, r10, asl #15	@ D.36853, D.36853, D.36854,
	orr	r3, r3, r5, asl #14	@ D.36854, D.36853, D.36855,
	str	r3, [r8, #28]	@ D.36854, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 28B]
	bl	H264HAL_SetSliceMsgMvAddrInfo	@
	ldr	r2, [r7, #60]	@ pSlcPara_9(D)->chroma_qp_index_offset, pSlcPara_9(D)->chroma_qp_index_offset
	ldrb	r3, [r7, #4]	@ zero_extendqisi2	@ D.36854, pSlcPara_9(D)->weight_flag
	and	r2, r2, #31	@ D.36854, pSlcPara_9(D)->chroma_qp_index_offset,
	ldr	r1, [r7, #64]	@ pSlcPara_9(D)->second_chroma_qp_index_offset, pSlcPara_9(D)->second_chroma_qp_index_offset
	mov	r2, r2, asl #5	@ D.36854, D.36854,
	and	r1, r1, #31	@ D.36854, pSlcPara_9(D)->second_chroma_qp_index_offset,
	orr	r3, r2, r3, asl #16	@ D.36854, D.36854, D.36854,
	orr	r3, r3, r1	@ D.36854, D.36854, D.36854
	str	r3, [r8, #40]	@ D.36854, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 40B]
	ldr	r2, [r7, #68]	@ pSlcPara_9(D)->slice_alpha_c0_offset_div2, pSlcPara_9(D)->slice_alpha_c0_offset_div2
	ldr	r3, [r7, #72]	@ pSlcPara_9(D)->slice_beta_offset_div2, pSlcPara_9(D)->slice_beta_offset_div2
	and	r2, r2, #15	@ D.36854, pSlcPara_9(D)->slice_alpha_c0_offset_div2,
	ldr	r1, [r7, #76]	@ pSlcPara_9(D)->disable_deblocking_filter_idc, pSlcPara_9(D)->disable_deblocking_filter_idc
	and	r3, r3, #15	@ D.36854, pSlcPara_9(D)->slice_beta_offset_div2,
	mov	r2, r2, asl #16	@ D.36854, D.36854,
	orr	r3, r2, r3, asl #8	@ D.36854, D.36854, D.36854,
	orr	r3, r3, r1	@ D.36854, D.36854, pSlcPara_9(D)->disable_deblocking_filter_idc
	str	r3, [r8, #44]	@ D.36854, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 44B]
	ldr	r3, [r7, #4056]	@ pSlcPara_9(D)->pNextSlice, pSlcPara_9(D)->pNextSlice
	cmp	r3, #0	@ pSlcPara_9(D)->pNextSlice,
	beq	.L231	@,
	ldr	r0, [sp, #52]	@ tmp, last_mb_in_slice
.L232:
	ldr	r3, [sp, #44]	@ tmp294, NextSlcMsgSlotPhy
	str	r0, [r8, #176]	@ tmp, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 176B]
	bic	r3, r3, #15	@ D.36854, tmp294,
	str	r3, [r8, #252]	@ D.36854, MEM[(volatile HI_S32 *)pSLOT_BASE_6 + 252B]
	ldrb	r3, [r7]	@ zero_extendqisi2	@ D.36854, pSlcPara_9(D)->slice_type
	ldr	r0, [r4, r3, asl #2]	@ tmp280, g_SliceTypeForPMV
	cmp	r0, #0	@ tmp280,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	mov	r1, r7	@, pSlcPara
	mov	r2, r8	@, pSLOT_BASE
	mov	r0, r6	@, pParam
	mov	r5, r7	@ ivtmp.352, pSlcPara
	bl	H264HAL_SetSliceMsgRefPicInfo	@
	ldr	r4, [r5, #3928]!	@ pSlcPara_9(D)->Apc2RefIdx, pSlcPara_9(D)->Apc2RefIdx
	mov	r3, #0	@ i,
	mov	r1, #36	@ Dn_num,
	and	r4, r4, #31	@ tmp, pSlcPara_9(D)->Apc2RefIdx,
	b	.L235	@
.L237:
	ldr	lr, [r5, #4]!	@ MEM[base: _135, offset: 0B], MEM[base: _135, offset: 0B]
	cmp	ip, #3	@ D.36853,
	and	ip, lr, #31	@ D.36853, MEM[base: _135, offset: 0B],
	orr	r4, r4, ip, asl r2	@ tmp, tmp, D.36853,
	streq	r4, [r8, r1, asl #2]	@ tmp, *_118
	addeq	r1, r1, #1	@ Dn_num, Dn_num,
	moveq	r4, #0	@ tmp,
.L235:
	add	r3, r3, #1	@ i, i,
	and	ip, r3, #3	@ D.36853, i,
	cmp	r3, #32	@ i,
	add	r2, ip, ip, lsl #2	@ D.36853, D.36853, D.36853,
	bne	.L237	@,
	mov	r0, r6	@, pParam
	mov	r2, r8	@, pSLOT_BASE
	mov	r1, r7	@, pSlcPara
	bl	H264HAL_SetSliceMsgWPInfo	@
	mov	r0, #0	@ D.36852,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L244:
	ldr	r1, [r6, #24]	@ pParam_8(D)->frame_height_in_mb, pParam_8(D)->frame_height_in_mb
	movw	r2, #1620	@ tmp230,
	ldr	r3, [r6, #28]	@ pParam_8(D)->pic_width_in_mb, pParam_8(D)->pic_width_in_mb
	mul	r3, r3, r1	@ D.36853, pParam_8(D)->pic_width_in_mb, pParam_8(D)->frame_height_in_mb
	cmp	r3, r2	@ D.36853, tmp230
	bls	.L230	@,
	mvn	r0, #0	@ D.36852,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L231:
	ldr	r0, [r6, #920]	@ D.36854, pParam_8(D)->mbtodec
	ldrb	r1, [r7, #1]	@ zero_extendqisi2	@ D.36854, pSlcPara_9(D)->MbaffFrameFlag
	cmp	r0, #262144	@ D.36854,
	addgt	r1, r1, #1	@, D.36854,
	addle	r1, r1, #1	@, D.36854,
	movwgt	r0, #65535	@,
	suble	r0, r0, #1	@, D.36854,
	movtgt	r0, 3	@,
	bl	__aeabi_idiv	@
	b	.L232	@
.L243:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36852,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L246:
	.align	2
.L245:
	.word	g_not_direct_8x8_inference_flag
	.word	.LANCHOR1
	.fnend
	.size	H264HAL_V200R004_SetSliceMsg, .-H264HAL_V200R004_SetSliceMsg
	.align	2
	.global	H264HAL_V200R004_StartDec
	.type	H264HAL_V200R004_StartDec, %function
H264HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #68
	sub	sp, sp, #68	@,,
	movw	r4, #1140	@ tmp175,
	mov	fp, r0	@ pParam, pParam
	mul	r4, r4, r1	@ tmp174, tmp175, VdhId
	str	r1, [sp, #52]	@ VdhId, %sfp
	bl	H264HAL_CheckParaValid	@
	ldr	r10, .L270	@ tmp281,
	add	r3, r10, r4	@ pHwMem, tmp281, tmp174
	cmn	r0, #1	@,
	str	r3, [sp, #48]	@ pHwMem, %sfp
	beq	.L267	@,
	ldr	r8, [sp, #52]	@ VdhId, %sfp
	ldr	r7, [sp, #48]	@ pHwMem, %sfp
	mov	r1, r8	@, VdhId
	mov	r0, r7	@, pHwMem
	bl	H264HAL_GetVdmRegVirAddr	@
	cmn	r0, #1	@,
	beq	.L267	@,
	ldr	r2, .L270+4	@ tmp177,
	add	r6, r7, #44	@ tmp191, pHwMem,
	add	r5, r7, #40	@ tmp197, pHwMem,
	ldr	r3, [r2]	@ StartCnt, StartCnt
	add	r3, r3, #1	@ D.36863, StartCnt,
	str	r3, [r2]	@ D.36863, StartCnt
	bl	vfmw_dprint_nothing	@
	mov	r2, r8	@, VdhId
	mov	r1, r7	@, pHwMem
	mov	r0, fp	@, pParam
	bl	H264HAL_V200R004_CfgVdmReg	@
	ldr	r3, [r4, r10]	@ g_HwMem[VdhId_13(D)].pVdmRegVirAddr, g_HwMem[VdhId_13(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp186,
	mov	r1, r7	@, pHwMem
	mov	r0, fp	@, pParam
	str	r2, [r3, #32]	@ tmp186, *_29
	ldr	r3, [r6, #4]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	ldr	r2, [r5, #4]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	bl	H264HAL_V200R004_SetPicMsg	@
	ldr	ip, [fp, #1124]	@ pSlicePara, pParam_16(D)->pFirstSlice
	ldr	r4, [ip, #48]	@ D.36866, pSlicePara_34->first_mb_in_slice
	cmp	r4, #0	@ D.36866,
	streq	r4, [sp, #40]	@ D.36866, %sfp
	bne	.L268	@,
.L251:
	ldr	r1, [sp, #52]	@ VdhId, %sfp
	movw	r3, #285	@ tmp282,
	mov	r2, #0	@ pre_first_mb_in_slice,
	mov	r7, ip	@ pSlicePara, pSlicePara
	mov	r6, r2	@ i, pre_first_mb_in_slice
	str	r2, [sp, #24]	@ pre_first_mb_in_slice, %sfp
	mul	r5, r3, r1	@ tmp283, tmp282, VdhId
	ldr	r1, [fp, #1120]	@ D.36862, pParam_16(D)->SliceParaNum
	ldr	r3, [sp, #40]	@ AddSlice0Flag, %sfp
	add	r3, r5, r3	@ tmp284, tmp283, AddSlice0Flag
	str	r3, [sp, #44]	@ tmp284, %sfp
	str	r5, [sp, #20]	@ tmp283, %sfp
.L253:
	ldr	r3, [sp, #40]	@ AddSlice0Flag, %sfp
	cmp	r6, r1	@ i, D.36862
	ldr	r2, [sp, #20]	@ tmp283, %sfp
	add	r9, r3, #5	@ D.36863, AddSlice0Flag,
	ldr	r3, [sp, #44]	@ tmp284, %sfp
	add	r8, r9, r6	@ D.36863, D.36863, i
	add	r3, r3, r6	@ tmp230, tmp284, i
	add	r2, r2, r8	@ tmp237, tmp283, D.36863
	add	r3, r10, r3, lsl #2	@ tmp232, tmp281, tmp230,
	bge	.L269	@,
	ldr	r3, [r3, #44]	@ prev_slcmsg_phy, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	cmp	r6, #0	@ i,
	ldr	ip, [r7, #48]	@ D.36866, pSlicePara_1->first_mb_in_slice
	add	r2, r10, r2, lsl #2	@ tmp239, tmp281, tmp237,
	movgt	r4, #1	@ tmp244,
	movle	r4, #0	@ tmp244,
	str	r3, [sp, #28]	@ prev_slcmsg_phy, %sfp
	ldr	r3, [sp, #24]	@ pre_first_mb_in_slice, %sfp
	ldr	r5, .L270	@ tmp226,
	cmp	ip, r3	@ D.36866, pre_first_mb_in_slice
	movhi	r4, #0	@, tmp247
	andls	r4, r4, #1	@,, tmp247, tmp244
	ldr	r3, [r2, #28]	@ cur_slcmsg_phy, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	cmp	r4, #0	@ tmp247,
	str	r3, [sp, #32]	@ cur_slcmsg_phy, %sfp
	bne	.L253	@,
	add	r3, sp, #60	@,,
	add	r2, r6, #1	@, i,
	mov	r0, r7	@, pSlicePara
	str	ip, [sp, #24]	@ D.36866, %sfp
	bl	H264HAL_FindNextSlicePara	@
	subs	r3, r0, #0	@ pSlicePara,
	ldr	ip, [sp, #24]	@ D.36866, %sfp
	str	r3, [sp, #36]	@ pSlicePara, %sfp
	beq	.L267	@,
	ldr	r2, [fp, #1120]	@ pParam_16(D)->SliceParaNum, pParam_16(D)->SliceParaNum
	ldr	r6, [sp, #60]	@ i, j
	ldr	r3, [sp, #20]	@ tmp283, %sfp
	cmp	r2, r6	@ pParam_16(D)->SliceParaNum, i
	cmpne	r8, #140	@, D.36863,
	ldr	r0, [sp, #28]	@ prev_slcmsg_phy, %sfp
	add	r3, r3, r6	@ tmp266, tmp283, i
	ldreq	r2, [fp, #20]	@ pParam_16(D)->pic_height_in_mb, pParam_16(D)->pic_height_in_mb
	add	r9, r3, r9	@ tmp267, tmp266, D.36863
	ldreq	r3, [fp, #28]	@ pParam_16(D)->pic_width_in_mb, pParam_16(D)->pic_width_in_mb
	moveq	r1, r4	@ next_slcmsg_phy, tmp247
	ldrne	r3, [sp, #36]	@ pSlicePara, %sfp
	add	r5, r5, r9, lsl #2	@ tmp269, tmp226, tmp267,
	streq	r4, [r7, #4056]	@ tmp247, pSlicePara_1->pNextSlice
	muleq	r3, r3, r2	@ D.36866, pParam_16(D)->pic_width_in_mb, pParam_16(D)->pic_height_in_mb
	ldrne	r1, [r5, #28]	@ next_slcmsg_phy, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	ldrne	r3, [r3, #48]	@ pSlicePara_77->first_mb_in_slice, pSlicePara_77->first_mb_in_slice
	mov	r2, r7	@, pSlicePara
	ldreq	r6, [fp, #1120]	@ i, pParam_16(D)->SliceParaNum
	sub	r3, r3, #1	@ last_mb_in_slice, pSlicePara_77->first_mb_in_slice,
	str	r1, [sp, #4]	@ next_slcmsg_phy,
	str	r3, [sp, #12]	@ last_mb_in_slice,
	str	r0, [sp]	@ prev_slcmsg_phy,
	mov	r0, fp	@, pParam
	ldr	r3, [sp, #32]	@, %sfp
	str	ip, [sp, #8]	@ D.36866,
	ldr	r1, [sp, #48]	@, %sfp
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	ldr	r7, [sp, #36]	@ pSlicePara, %sfp
	ldreq	r1, [fp, #1120]	@ D.36862, pParam_16(D)->SliceParaNum
	beq	.L253	@
.L257:
	bl	vfmw_dprint_nothing	@
.L267:
	mvn	r0, #0	@ D.36862,
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L269:
	cmp	r1, #0	@ D.36862,
	ble	.L257	@,
	ldr	r2, [sp, #52]	@ VdhId, %sfp
	movw	r3, #285	@ tmp273,
	ldr	r0, [sp, #40]	@ AddSlice0Flag, %sfp
	mla	r3, r3, r2, r0	@ tmp274, tmp273, VdhId, AddSlice0Flag
	add	r1, r3, r1	@ tmp275, tmp274, D.36862
	add	r1, r10, r1, lsl #2	@ tmp277, tmp281, tmp275,
	ldr	r0, [r1, #44]	@, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	bl	H264HAL_V200R004_CutSliceChain	@
	mov	r0, #0	@ D.36862,
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L268:
	ldr	r3, [ip, #8]	@ D.36866, pSlicePara_34->valid_bitlen
	mov	r1, #0	@ tmp199,
	ldr	r9, [ip, #24]	@ D.36866, pSlicePara_34->bytespos
	mov	r2, ip	@, pSlicePara
	str	r1, [ip, #48]	@ tmp199, pSlicePara_34->first_mb_in_slice
	mov	r7, #1	@ tmp200,
	str	r3, [sp, #20]	@ D.36866, %sfp
	sub	lr, r4, #1	@ D.36866, D.36866,
	ldr	r3, [ip, #12]	@ D.36866, pSlicePara_34->valid_bitlen
	str	r1, [ip, #24]	@ tmp199, pSlicePara_34->bytespos
	str	r1, [ip, #12]	@ tmp199, pSlicePara_34->valid_bitlen
	str	r3, [sp, #24]	@ D.36866, %sfp
	ldr	r3, [ip, #16]	@ D.36866, pSlicePara_34->bitsoffset
	str	r7, [ip, #8]	@ tmp200, pSlicePara_34->valid_bitlen
	str	r1, [ip, #16]	@ tmp199, pSlicePara_34->bitsoffset
	ldr	r8, [ip, #28]	@ D.36866, pSlicePara_34->bytespos
	str	r3, [sp, #28]	@ D.36866, %sfp
	str	r1, [ip, #28]	@ tmp199, pSlicePara_34->bytespos
	ldr	r3, [ip, #20]	@ D.36866, pSlicePara_34->bitsoffset
	str	ip, [sp, #36]	@ pSlicePara, %sfp
	str	r1, [ip, #20]	@ tmp199, pSlicePara_34->bitsoffset
	ldr	ip, [sp, #48]	@ pHwMem, %sfp
	ldr	r0, [r5, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	str	r3, [sp, #32]	@ D.36866, %sfp
	ldr	r5, [ip, #52]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	ldr	r3, [r6, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr, MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr
	str	r1, [sp, #8]	@ tmp199,
	mov	r1, ip	@, pHwMem
	str	r0, [sp]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr,
	mov	r0, fp	@, pParam
	str	r5, [sp, #4]	@ MEM[(struct VDMHAL_HWMEM_S *)&g_HwMem][VdhId_13(D)].MsgSlotAddr,
	str	lr, [sp, #12]	@ D.36866,
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	ldr	ip, [sp, #36]	@ pSlicePara, %sfp
	bne	.L257	@,
	ldr	r3, [sp, #20]	@ D.36866, %sfp
	str	r4, [ip, #48]	@ D.36866, pSlicePara_34->first_mb_in_slice
	str	r9, [ip, #24]	@ D.36866, pSlicePara_34->bytespos
	str	r3, [ip, #8]	@ D.36866, pSlicePara_34->valid_bitlen
	ldr	r3, [sp, #24]	@ D.36866, %sfp
	str	r8, [ip, #28]	@ D.36866, pSlicePara_34->bytespos
	str	r7, [sp, #40]	@ tmp200, %sfp
	str	r3, [ip, #12]	@ D.36866, pSlicePara_34->valid_bitlen
	ldr	r3, [sp, #28]	@ D.36866, %sfp
	str	r3, [ip, #16]	@ D.36866, pSlicePara_34->bitsoffset
	ldr	r3, [sp, #32]	@ D.36866, %sfp
	str	r3, [ip, #20]	@ D.36866, pSlicePara_34->bitsoffset
	ldr	ip, [fp, #1124]	@ pSlicePara, pParam_16(D)->pFirstSlice
	b	.L251	@
.L271:
	.align	2
.L270:
	.word	g_HwMem
	.word	.LANCHOR2
	.fnend
	.size	H264HAL_V200R004_StartDec, .-H264HAL_V200R004_StartDec
	.global	g_CabacMN
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	g_SliceTypeForPMV, %object
	.size	g_SliceTypeForPMV, 12
g_SliceTypeForPMV:
	.word	1
	.word	2
	.word	0
	.type	g_ListStructField, %object
	.size	g_ListStructField, 32
g_ListStructField:
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.type	g_ListStructFrame, %object
	.size	g_ListStructFrame, 32
g_ListStructFrame:
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	2
	.type	g_StructTrans, %object
	.size	g_StructTrans, 32
g_StructTrans:
	.word	0
	.word	3
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.data
	.align	2
.LANCHOR0 = . + 0
	.type	g_CabacMN, %object
	.size	g_CabacMN, 5120
g_CabacMN:
	.word	388044546
	.word	352326208
	.word	153820416
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	388044546
	.word	352326208
	.word	153820416
	.word	3013710
	.word	-44040151
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	203950899
	.word	238747648
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	219088691
	.word	38797353
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	421532977
	.word	355860480
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	119732056
	.word	-327221207
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	354489138
	.word	289210368
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	-276827290
	.word	5437770
	.word	-345250433
	.word	-511711105
	.word	-295705217
	.word	-344792449
	.word	0
	.word	0
	.word	-277089165
	.word	-260377229
	.word	-45614550
	.word	-80544458
	.word	-29491142
	.word	20971080
	.word	-11864229
	.word	0
	.word	-111282857
	.word	-45221049
	.word	-62915516
	.word	-195757762
	.word	-113178563
	.word	87621186
	.word	20971581
	.word	-28442624
	.word	402657033
	.word	135859474
	.word	252251411
	.word	170200082
	.word	102568993
	.word	253625389
	.word	20578366
	.word	121438208
	.word	-94504364
	.word	-129040318
	.word	-12124098
	.word	-29557189
	.word	-78906050
	.word	-63244478
	.word	-11599801
	.word	54788096
	.word	252053011
	.word	118492174
	.word	302845195
	.word	219090704
	.word	202837271
	.word	252972570
	.word	237769000
	.word	288292864
	.word	-197132732
	.word	-246090904
	.word	-79430885
	.word	-47710676
	.word	3076160
	.word	-129698226
	.word	-95553962
	.word	0
	.word	20055860
	.word	170065964
	.word	187040045
	.word	3015980
	.word	521208115
	.word	120724499
	.word	270601790
	.word	0
	.word	203819821
	.word	254217002
	.word	220991533
	.word	204016177
	.word	505549354
	.word	171381043
	.word	288227417
	.word	0
	.word	170719550
	.word	254021160
	.word	270208029
	.word	19665956
	.word	304088362
	.word	19925566
	.word	288229696
	.word	0
	.word	403772693
	.word	420880155
	.word	371004195
	.word	238160441
	.word	121634381
	.word	-61670050
	.word	155579501
	.word	0
	.word	-45680547
	.word	-161815937
	.word	-195235529
	.word	-163775938
	.word	-62786487
	.word	-129173168
	.word	-145166482
	.word	0
	.word	-210964124
	.word	-211422373
	.word	-195103144
	.word	-262867370
	.word	-111938729
	.word	-312606394
	.word	4782922
	.word	305856512
	.word	451745519
	.word	451878631
	.word	485237225
	.word	635773417
	.word	686040815
	.word	569714929
	.word	704259585
	.word	688979968
	.word	-194448031
	.word	-262080168
	.word	-128583339
	.word	-145362088
	.word	71499085
	.word	-45286836
	.word	171638604
	.word	-11337728
	.word	618472670
	.word	551953890
	.word	752886510
	.word	586230001
	.word	569975803
	.word	553657858
	.word	554506019
	.word	221904896
	.word	-11863455
	.word	-111416193
	.word	-178131884
	.word	-179307959
	.word	-62196906
	.word	-211749535
	.word	-311099392
	.word	0
	.word	-127471260
	.word	6225920
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	519707395
	.word	437649408
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-110890401
	.word	39780352
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	503126528
	.word	371064832
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-63374510
	.word	-112399747
	.word	-129041631
	.word	-63898059
	.word	-46206137
	.word	-162532266
	.word	-212143519
	.word	0
	.word	-62193080
	.word	-179569337
	.word	254735173
	.word	4063297
	.word	354808136
	.word	154734646
	.word	4066376
	.word	0
	.word	636494844
	.word	653797117
	.word	620963333
	.word	704652048
	.word	655756848
	.word	455415100
	.word	205783649
	.word	0
	.word	5045066
	.word	4650315
	.word	21233729
	.word	-230096066
	.word	71237444
	.word	-213185737
	.word	88083526
	.word	0
	.word	536421361
	.word	587014659
	.word	620700165
	.word	537600773
	.word	571221771
	.word	505225754
	.word	489100098
	.word	0
	.word	0
	.word	0
	.word	-45351145
	.word	19005739
	.word	3604023
	.word	3998016
	.word	4519772
	.word	0
	.word	-277287824
	.word	-294455979
	.word	-245566887
	.word	-431492783
	.word	-229638076
	.word	-230234056
	.word	-381360078
	.word	-179699712
	.word	401808115
	.word	686895602
	.word	738405638
	.word	740434230
	.word	324141056
	.word	0
	.word	0
	.word	0
	.word	-227871903
	.word	-245697446
	.word	-296159671
	.word	-145755562
	.word	-162924986
	.word	-163185854
	.word	-146736326
	.word	37421056
	.word	368449781
	.word	486022399
	.word	486743305
	.word	588520740
	.word	239271936
	.word	0
	.word	0
	.word	0
	.word	-444668830
	.word	-412751549
	.word	-464327586
	.word	-262935954
	.word	-346296730
	.word	-211950721
	.word	0
	.word	0
	.word	-111346855
	.word	-111086740
	.word	-95617492
	.word	2949172
	.word	-46072261
	.word	-62456757
	.word	-128782490
	.word	0
	.word	-27919794
	.word	-11798195
	.word	37094706
	.word	-45874894
	.word	103480401
	.word	20970566
	.word	4391481
	.word	-28573696
	.word	186384936
	.word	53215281
	.word	3015212
	.word	36896815
	.word	69665342
	.word	103678006
	.word	53871162
	.word	71237632
	.word	-211095446
	.word	-162010254
	.word	-294718878
	.word	-361829526
	.word	-295179413
	.word	-378739088
	.word	-161418145
	.word	-77922304
	.word	235604750
	.word	151720459
	.word	352917502
	.word	552673521
	.word	585836521
	.word	719268321
	.word	786704116
	.word	354222080
	.word	-47251647
	.word	-12978339
	.word	-145947880
	.word	2752560
	.word	3668539
	.word	-112724909
	.word	-178789769
	.word	0
	.word	186844224
	.word	20777763
	.word	303631384
	.word	220007716
	.word	-161613495
	.word	-28766930
	.word	154270052
	.word	0
	.word	104007225
	.word	120915508
	.word	104270637
	.word	237242421
	.word	-11401417
	.word	-45215954
	.word	371195732
	.word	0
	.word	-144840098
	.word	-78247613
	.word	-61802923
	.word	-12187844
	.word	154797373
	.word	204607282
	.word	305205558
	.word	0
	.word	770192851
	.word	820396501
	.word	736962550
	.word	503910938
	.word	337313849
	.word	-229442741
	.word	-312353411
	.word	0
	.word	-45418660
	.word	-128456322
	.word	20643101
	.word	-14417626
	.word	36436535
	.word	3801152
	.word	-45418918
	.word	0
	.word	154468917
	.word	87424573
	.word	3670072
	.word	-213910724
	.word	-12712903
	.word	-96140231
	.word	237438003
	.word	222560256
	.word	419897081
	.word	469965828
	.word	536879871
	.word	503717382
	.word	537468691
	.word	437983774
	.word	622074914
	.word	289800192
	.word	170460974
	.word	-13433039
	.word	137627945
	.word	103744055
	.word	220793388
	.word	103941429
	.word	221316159
	.word	104857600
	.word	452992000
	.word	536615686
	.word	570957322
	.word	404103443
	.word	371202591
	.word	355015212
	.word	388960321
	.word	239534080
	.word	87426620
	.word	104531525
	.word	4652061
	.word	85919530
	.word	20708922
	.word	-45548207
	.word	-178192384
	.word	0
	.word	54526269
	.word	155123712
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	21169467
	.word	155385856
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28967365
	.word	105250816
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	138151487
	.word	289472512
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-13631420
	.word	-62523304
	.word	3803141
	.word	168693266
	.word	219873832
	.word	3865926
	.word	-95422379
	.word	0
	.word	120721447
	.word	86770740
	.word	187759420
	.word	-12910533
	.word	371262764
	.word	237764430
	.word	3934533
	.word	0
	.word	270406176
	.word	304289309
	.word	404690726
	.word	304813097
	.word	188680507
	.word	155254622
	.word	-27658388
	.word	0
	.word	170658079
	.word	204145461
	.word	237111846
	.word	-46920408
	.word	287311660
	.word	119934258
	.word	171514411
	.word	0
	.word	353900308
	.word	437721888
	.word	471276568
	.word	388503584
	.word	471668522
	.word	322508341
	.word	373099350
	.word	0
	.word	0
	.word	0
	.word	-96274141
	.word	-114624467
	.word	-80677832
	.word	-96666818
	.word	-129828788
	.word	0
	.word	-61867705
	.word	-79300794
	.word	-129829308
	.word	-313920443
	.word	-263786173
	.word	-331420346
	.word	-264050111
	.word	-331415552
	.word	167647991
	.word	569845753
	.word	704523523
	.word	822684955
	.word	607846400
	.word	0
	.word	0
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	368255474
	.word	670641918
	.word	855784454
	.word	1024538402
	.word	708706304
	.word	0
	.word	0
	.word	0
	.word	-645927333
	.word	-278862255
	.word	-580720538
	.word	-379460233
	.word	-396104850
	.word	-295248769
	.word	0
	.word	0
	.word	5307225
	.word	-111215524
	.word	-378474169
	.word	-113442763
	.word	-79497907
	.word	-145688748
	.word	-162013569
	.word	0
	.word	-211291301
	.word	-145100196
	.word	-129174441
	.word	-378607511
	.word	-162599824
	.word	-278678913
	.word	-1166029185
	.word	-763428864
	.word	70060572
	.word	169812469
	.word	886379023
	.word	469771242
	.word	652681728
	.word	669917428
	.word	1721892864
	.word	955318272
	.word	-344004228
	.word	-328276354
	.word	-411242647
	.word	-444996235
	.word	-278469003
	.word	-445325446
	.word	-161484188
	.word	-127991808
	.word	335155962
	.word	234887924
	.word	535831015
	.word	568993252
	.word	669133538
	.word	802565596
	.word	836643311
	.word	537460736
	.word	2555969
	.word	-246096513
	.word	-345637593
	.word	-80348867
	.word	-179572403
	.word	-279189653
	.word	-412097414
	.word	0
	.word	-62719154
	.word	-62392248
	.word	37486391
	.word	-112788917
	.word	-128328073
	.word	-45408236
	.word	504812671
	.word	0
	.word	570170634
	.word	637219811
	.word	670512350
	.word	1170621377
	.word	754655239
	.word	937631745
	.word	6948
	.word	0
	.word	-277879694
	.word	-94765488
	.word	-61671595
	.word	-128843960
	.word	88080707
	.word	154665029
	.word	21301061
	.word	0
	.word	1169768385
	.word	1119899062
	.word	920204509
	.word	703996928
	.word	687808014
	.word	471471909
	.word	204933953
	.word	0
	.word	-28707736
	.word	-144973441
	.word	-179505620
	.word	-164301255
	.word	-147132344
	.word	-112853947
	.word	-78973098
	.word	0
	.word	3603261
	.word	3866428
	.word	-46270397
	.word	-413863350
	.word	-79624908
	.word	37290045
	.word	-146410170
	.word	305594368
	.word	568795874
	.word	618931940
	.word	652550894
	.word	602940146
	.word	553133562
	.word	587210250
	.word	470948377
	.word	489226240
	.word	-112854461
	.word	-263324096
	.word	37616195
	.word	-46136775
	.word	-46006974
	.word	4065587
	.word	-12386745
	.word	-28639232
	.word	635381724
	.word	685450978
	.word	786377442
	.word	686305763
	.word	653535478
	.word	654126843
	.word	521411870
	.word	422313984
	.word	53937976
	.word	121047101
	.word	37943074
	.word	18877215
	.word	87359031
	.word	-29163447
	.word	-128385024
	.word	0
	.word	-62455750
	.word	121438208
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4915784
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-12126392
	.word	238813184
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	204475185
	.word	439156736
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-46858172
	.word	-112527528
	.word	53741316
	.word	168300808
	.word	269681445
	.word	-12715191
	.word	-12125106
	.word	0
	.word	153686553
	.word	153093419
	.word	154075180
	.word	3342894
	.word	321322050
	.word	254151722
	.word	153223257
	.word	0
	.word	237179423
	.word	287511838
	.word	288166954
	.word	304945946
	.word	271976258
	.word	272108361
	.word	172226164
	.word	0
	.word	270860335
	.word	304286501
	.word	204016169
	.word	36703273
	.word	220790843
	.word	53613352
	.word	54661682
	.word	0
	.word	370546454
	.word	454369556
	.word	438050328
	.word	455217706
	.word	421990962
	.word	205919542
	.word	239536979
	.word	0
	.word	0
	.word	0
	.word	-79233000
	.word	-14352854
	.word	-30083271
	.word	-96469951
	.word	-62654126
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-44958388
	.word	-112657842
	.word	-196545980
	.word	-45680052
	.word	-79496386
	.word	3800125
	.word	-147062474
	.word	37355520
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-595595429
	.word	-228595884
	.word	-413731751
	.word	-279191169
	.word	-229839257
	.word	-212149377
	.word	0
	.word	0
	.word	189793612
	.word	39060814
	.word	-395056558
	.word	-146931659
	.word	3928661
	.word	-212208802
	.word	-178461825
	.word	0
	.word	-61410216
	.word	-78447288
	.word	-62654392
	.word	-262539451
	.word	-12909246
	.word	70908999
	.word	-28900806
	.word	-11927552
	.word	69664810
	.word	119671581
	.word	136250917
	.word	120193832
	.word	136383787
	.word	220464175
	.word	53936698
	.word	104595456
	.word	-360716417
	.word	-411507329
	.word	-311236235
	.word	-411638155
	.word	-395189130
	.word	-512173188
	.word	-161549978
	.word	-161284096
	.word	301142263
	.word	301210603
	.word	635578840
	.word	718745809
	.word	669003480
	.word	885862103
	.word	886647789
	.word	537591808
	.word	-97057731
	.word	-229385345
	.word	-345705927
	.word	-196872889
	.word	-162665643
	.word	-262608536
	.word	-245179521
	.word	0
	.word	-64159931
	.word	4127027
	.word	-63964630
	.word	-47580619
	.word	139261774
	.word	-179107532
	.word	4455258
	.word	0
	.word	137104172
	.word	237635376
	.word	70779956
	.word	220530993
	.word	322570800
	.word	204275781
	.word	337709119
	.word	0
	.word	-211104129
	.word	-77852359
	.word	-78187682
	.word	-195297715
	.word	4718409
	.word	71366993
	.word	88084281
	.word	0
	.word	1036597458
	.word	1053708733
	.word	770450430
	.word	470753793
	.word	654384657
	.word	338039341
	.word	255197263
	.word	0
	.word	-78645912
	.word	-178527617
	.word	-162334672
	.word	-130156478
	.word	-112790965
	.word	-162531501
	.word	-195236244
	.word	0
	.word	21229896
	.word	-78907312
	.word	-346821824
	.word	-216012992
	.word	-480376501
	.word	289405002
	.word	-81527269
	.word	224067584
	.word	602808807
	.word	486348810
	.word	452993778
	.word	886319080
	.word	319889177
	.word	605886497
	.word	571416084
	.word	373882880
	.word	21168196
	.word	-163380924
	.word	5046848
	.word	4520782
	.word	121046331
	.word	37817910
	.word	254543164
	.word	38141952
	.word	619718130
	.word	636428289
	.word	571415823
	.word	404300310
	.word	521151250
	.word	521937193
	.word	605821743
	.word	356384768
	.word	4324943
	.word	4783196
	.word	-61871547
	.word	-263455174
	.word	20640590
	.word	-145490863
	.word	-211615744
	.word	0
	.word	54655301
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	337777439
	.word	455868416
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28512682
	.word	205914112
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	304026394
	.word	605552640
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-96992444
	.word	-129502366
	.word	-212731354
	.word	-213976518
	.word	-29626295
	.word	-162729130
	.word	-145492393
	.word	0
	.word	-163445954
	.word	-45814703
	.word	1966343
	.word	-48764086
	.word	272820604
	.word	287649006
	.word	853469823
	.word	0
	.word	319819556
	.word	254022940
	.word	420814356
	.word	520887056
	.word	405405789
	.word	238554937
	.word	438757503
	.word	0
	.word	88142918
	.word	188155192
	.word	4522561
	.word	-95812298
	.word	121043532
	.word	-179110323
	.word	-28501718
	.word	0
	.word	404167440
	.word	404627229
	.word	371791402
	.word	272371508
	.word	238814030
	.word	-260369099
	.word	372775229
	.word	0
	.word	0
	.word	0
	.word	-146278107
	.word	-131271375
	.word	-164039621
	.word	-130025661
	.word	-96143793
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.bss
	.align	2
.LANCHOR2 = . + 0
	.type	StartCnt.35620, %object
	.size	StartCnt.35620, 4
StartCnt.35620:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
