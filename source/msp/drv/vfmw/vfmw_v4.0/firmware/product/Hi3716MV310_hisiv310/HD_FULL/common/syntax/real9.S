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
	.file	"real9.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(real9)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.o
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
	.global	Real9_CB_GetBits
	.type	Real9_CB_GetBits, %function
Real9_CB_GetBits:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pBs, pBs
	mov	r6, r1	@ nBits, nBits
	bl	BsShow	@
	mov	r1, r6	@, nBits
	mov	r4, r0	@ D.34054,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34054
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_GetBits, .-Real9_CB_GetBits
	.align	2
	.global	Real9_CB_Get1Bit
	.type	Real9_CB_Get1Bit, %function
Real9_CB_Get1Bit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #1	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r4, r0	@ D.34057,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34057
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real9_CB_Get1Bit, .-Real9_CB_Get1Bit
	.align	2
	.global	Real9_CB_GetVLCBits
	.type	Real9_CB_GetVLCBits, %function
Real9_CB_GetVLCBits:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, #0	@ length,
	ldr	r7, .L11	@ tmp133,
	mov	r6, r0	@ pBs, pBs
	mov	r8, r1	@ pInfo, pInfo
	mov	r5, r4	@ info, length
.L6:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	ldrb	r3, [r7, r0]	@ zero_extendqisi2	@ D.34061, gs_VLCDecodeTable
	mov	r0, r6	@, pBs
	and	r2, r3, #15	@ D.34062, D.34061,
	mov	r1, r3, lsr #4	@ thisChunksLength, D.34061,
	mov	r3, r3, lsr #5	@ D.34062, D.34061,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@ info, D.34062, info,
	bl	BsSkip	@
	tst	r4, #1	@ length,
	beq	.L6	@,
	str	r5, [r8]	@ info, *pInfo_21(D)
	mov	r0, r4	@, length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.fnend
	.size	Real9_CB_GetVLCBits, .-Real9_CB_GetVLCBits
	.align	2
	.global	Real9_GetImageBuffer
	.type	Real9_GetImageBuffer, %function
Real9_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #36864	@ tmp133, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	add	r7, r0, #8192	@ tmp136, pCtx,
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.34066,
	str	r0, [r4, #2048]	@ D.34066, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	blt	.L21	@,
	mov	r1, r0	@, D.34066
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L22	@,
	ldr	r2, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	mov	r0, #18	@,
	ldr	r1, .L23	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.34068, pLf_30->pstDecodeFs
	cmp	r2, #0	@ D.34068,
	beq	.L19	@,
	ldr	r3, [r5, #412]	@ D.34068, pLf_30->pstDispOutFs
	cmp	r3, #0	@ D.34068,
	beq	.L19	@,
	ldr	r1, [r5, #416]	@ D.34068, pLf_30->pstTfOutFs
	cmp	r1, #0	@ D.34068,
	beq	.L19	@,
	ldr	ip, [r1, #12]	@ _36->PhyAddr, _36->PhyAddr
	mov	r0, #18	@,
	ldr	r3, [r3, #12]	@ _35->PhyAddr, _35->PhyAddr
	ldr	r2, [r2, #12]	@ _34->PhyAddr, _34->PhyAddr
	ldr	r1, .L23+4	@,
	str	ip, [sp]	@ _36->PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34065,
.L15:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L19:
	mov	r0, #1	@ D.34065,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L21:
	ldr	r1, .L23+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	mov	r5, #0	@ tmp160,
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2040]	@ tmp160, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	str	r5, [r4, #2044]	@ tmp160, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #38912	@, pCtx,
	add	r1, r1, #40	@,,
	str	r0, [r4, #2044]	@ D.34066, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	str	r0, [r4, #2040]	@ D.34066, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	strb	r5, [r7, #3181]	@ tmp160, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].RefNum
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.34065, tmp160
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L22:
	movw	r2, #554	@,
	ldr	r1, .L23+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34065, pLf
	b	.L15	@
.L24:
	.align	2
.L23:
	.word	.LC5
	.word	.LC6
	.word	.LC3
	.word	.LC4
	.fnend
	.size	Real9_GetImageBuffer, .-Real9_GetImageBuffer
	.align	2
	.global	Real9_ArrangeVHBMem
	.type	Real9_ArrangeVHBMem, %function
Real9_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #24]	@ D.34078, pPictureHeader_14(D)->pic_width_in_mb
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r3, [r2, #20]	@ D.34078, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r1, #1	@ D.34078,
	bls	.L27	@,
	cmp	r3, #1	@ D.34078,
	bls	.L27	@,
	ldr	r1, [r4]	@ D.34079, pCtx_12(D)->pstExtraData
	ldr	r3, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r3, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r3, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L30	@,
	cmp	r3, #25	@ _17->eCapLevel,
	beq	.L53	@,
.L31:
	ldr	r7, [r2, #16]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pixel
	mov	r8, #5	@ D.34083,
	ldr	r6, [r2, #12]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pixel
	mov	r5, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L36:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp203,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.34079, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp175,
	str	r7, [sp, #24]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #28]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #32]	@ _57->eCapLevel, _57->eCapLevel
	ldr	r3, [r3, #20]	@ _57->s32DnrDispOutEnable, _57->s32DnrDispOutEnable
	cmp	r1, #24	@ _57->eCapLevel,
	strb	r2, [sp, #14]	@ tmp175, FspInstCfg.s32RprEnable
	strb	r3, [sp, #12]	@ _57->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L42	@,
	uxtb	r3, r5	@ D.34077, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [sp, #19]	@ D.34083, FspInstCfg.s32ExpectedDispFsNum
.L44:
	add	r6, r4, #36864	@ tmp185, pCtx,
	add	r1, sp, #12	@ tmp204,,
	strb	r3, [sp, #20]	@ D.34077, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp181,
	ldr	r0, [r6, #2440]	@, pCtx_12(D)->ChanID
	strb	r5, [sp, #16]	@ tmp181, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.34080,
	beq	.L54	@,
.L51:
	mov	r0, #0	@ D.34075,
.L49:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L30:
	cmp	r3, #25	@ _17->eCapLevel,
	bne	.L31	@,
	ldr	r7, [r2, #16]	@ D.34078, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r0, [r1, #568]	@ D.34080, _17->stChanOption.s32MaxWidth
	cmp	r7, r0	@ D.34078, D.34080
	bhi	.L55	@,
	ldr	r3, [r2, #12]	@ D.34078, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	ip, [r1, #572]	@ D.34076, _17->stChanOption.s32MaxHeight
	cmp	r3, ip	@ D.34078, D.34076
	bhi	.L39	@,
	ldr	r2, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r6, r3	@ PicHeight, D.34078
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L52	@,
.L47:
	mov	r5, #1	@ PmvNum,
.L41:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ D.34083, _17->stChanOption.s32DisplayFrameNum
	b	.L36	@
.L27:
	mov	r2, r1	@, D.34078
	mov	r0, #0	@,
	ldr	r1, .L58	@,
	bl	dprint_vfmw	@
	b	.L51	@
.L54:
	ldr	r1, [r4]	@ D.34079, pCtx_12(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r6, #2440]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _76->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _76->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	bne	.L56	@,
	add	r4, r4, #8192	@ tmp195, pCtx,
	mov	r3, #1	@ tmp196,
	mov	r0, r3	@ D.34075, tmp196
	strb	r3, [r4, #3184]	@ tmp196, MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L53:
	ldr	r0, [r2, #16]	@ D.34078, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r7, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	cmp	r0, r7	@ D.34078, PicWidth
	bhi	.L57	@,
	ldr	r3, [r2, #12]	@ D.34078, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r6, [r1, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.34078, PicHeight
	bhi	.L33	@,
	add	r3, r4, #8192	@ tmp164, pCtx,
	ldrb	r0, [r3, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated,
	beq	.L49	@,
	ldr	r3, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _17->stChanOption.s32SupportBFrame,
	beq	.L47	@,
.L52:
	add	r3, r9, #1	@ PmvNum, DecFsNum,
	cmp	r3, #17	@ PmvNum,
	movlt	r5, r3	@ PmvNum, PmvNum
	movge	r5, #17	@ PmvNum,
	b	.L41	@
.L42:
	strb	r2, [sp, #17]	@ tmp175, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.34077,
	strb	r8, [sp, #19]	@ D.34083, FspInstCfg.s32ExpectedDispFsNum
	b	.L44	@
.L55:
	ldr	ip, [r1, #572]	@ D.34076, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ D.34078, pPictureHeader_14(D)->pic_height_in_pixel
.L39:
	stmia	sp, {r0, ip}	@,,
	mov	r2, r7	@, D.34078
	ldr	r1, .L58+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34075,
	b	.L49	@
.L57:
	ldr	r6, [r1, #572]	@ D.34076, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #12]	@ D.34078, pPictureHeader_14(D)->pic_height_in_pixel
.L33:
	mov	r2, r0	@, D.34078
	str	r6, [sp, #4]	@ D.34076,
	str	r7, [sp]	@ PicWidth,
	mov	r0, #0	@,
	ldr	r1, .L58+4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34075,
	b	.L49	@
.L56:
	ldr	r1, .L58+8	@,
	mov	r0, r7	@, D.34080
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.34075, D.34080
	b	.L49	@
.L59:
	.align	2
.L58:
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.fnend
	.size	Real9_ArrangeVHBMem, .-Real9_ArrangeVHBMem
	.align	2
	.global	Real9_CB_GetCPFMT
	.type	Real9_CB_GetCPFMT, %function
Real9_CB_GetCPFMT:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #4	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #4	@,
	mov	r4, r0	@ D.34101,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r4, [r6]	@ D.34101, pPictureHeader_6(D)->pixel_aspect_ratio
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r4, r0	@ D.34101,
	add	r4, r4, #1	@ D.34100, D.34101,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r4, r4, asl #2	@ D.34100, D.34100,
	mov	r0, r5	@, pBs
	str	r4, [r6, #16]	@ D.34100, pPictureHeader_6(D)->pic_width_in_pixel
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.34100,
	mov	r4, r0	@ D.34100,
	beq	.L64	@,
	mov	r0, #0	@ D.34098,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L64:
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r7, r0	@ D.34101,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r7, r7, asl #2	@ D.34100, D.34101,
	mov	r0, r4	@ D.34098, D.34100
	str	r7, [r6, #12]	@ D.34100, pPictureHeader_6(D)->pic_height_in_pixel
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_CB_GetCPFMT, .-Real9_CB_GetCPFMT
	.align	2
	.global	Real9_CB_SetDimensions
	.type	Real9_CB_SetDimensions, %function
Real9_CB_SetDimensions:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]	@ D.34104, pPictureHeader_3(D)->pic_width_in_pixel
	ldr	r2, [r0, #12]	@ D.34104, pPictureHeader_3(D)->pic_height_in_pixel
	cmp	r3, #128	@ D.34104,
	beq	.L82	@,
	cmp	r3, #176	@ D.34104,
	beq	.L83	@,
	cmp	r3, #352	@ D.34104,
	beq	.L84	@,
	cmp	r3, #704	@ D.34104,
	beq	.L85	@,
	cmp	r3, #1408	@ D.34104,
	beq	.L86	@,
.L67:
	add	r3, r3, #15	@ D.34104, D.34104,
	add	r2, r2, #15	@ D.34104, D.34104,
	mov	r3, r3, lsr #4	@ D.34104, D.34104,
	mov	r2, r2, lsr #4	@ D.34104, D.34104,
	str	r3, [r0, #76]	@ D.34104, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	mul	r3, r3, r2	@ D.34104, D.34104, D.34104
	str	r2, [r0, #72]	@ D.34104, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
	sub	r3, r3, #1	@ D.34105, D.34104,
	cmp	r3, #47	@ D.34105,
	movls	r2, #0	@ i,
	bls	.L68	@,
	cmp	r3, #98	@ D.34105,
	bls	.L77	@,
	cmp	r3, #396	@ D.34105,
	bcc	.L78	@,
	cmp	r3, #1584	@ D.34105,
	bcc	.L79	@,
	cmp	r3, #6336	@ D.34105,
	movcs	r2, #5	@ i,
	bcc	.L81	@,
.L68:
	ldr	r3, .L87	@ tmp134,
	add	r3, r3, r2, lsl #2	@ tmp135, tmp134, i,
	ldr	r3, [r3, #256]	@ tmp137, MBA_FieldWidth
	str	r3, [r0, #80]	@ tmp137, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_mbaSize
	bx	lr	@
.L86:
	cmp	r2, #1152	@ D.34104,
	bne	.L67	@,
	mov	r2, #88	@ tmp129,
	mov	r3, #72	@ tmp130,
	str	r2, [r0, #76]	@ tmp129, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp130, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L81:
	mov	r2, #4	@ i,
	b	.L68	@
.L82:
	cmp	r2, #96	@ D.34104,
	bne	.L67	@,
	mov	r2, #8	@ tmp121,
	mov	r3, #6	@ tmp122,
	str	r2, [r0, #76]	@ tmp121, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	mov	r2, #0	@ i,
	str	r3, [r0, #72]	@ tmp122, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
	b	.L68	@
.L83:
	cmp	r2, #144	@ D.34104,
	bne	.L67	@,
	mov	r2, #11	@ tmp123,
	mov	r3, #9	@ tmp124,
	str	r2, [r0, #76]	@ tmp123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L77:
	mov	r2, #1	@ i,
	b	.L68	@
.L84:
	cmp	r2, #288	@ D.34104,
	bne	.L67	@,
	mov	r2, #22	@ tmp125,
	mov	r3, #18	@ tmp126,
	str	r2, [r0, #76]	@ tmp125, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp126, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L78:
	mov	r2, #2	@ i,
	b	.L68	@
.L85:
	cmp	r2, #576	@ D.34104,
	bne	.L67	@,
	mov	r2, #44	@ tmp127,
	mov	r3, #36	@ tmp128,
	str	r2, [r0, #76]	@ tmp127, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp128, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L79:
	mov	r2, #3	@ i,
	b	.L68	@
.L88:
	.align	2
.L87:
	.word	.LANCHOR0
	.fnend
	.size	Real9_CB_SetDimensions, .-Real9_CB_SetDimensions
	.align	2
	.global	Real9_CB_GetPicSize
	.type	Real9_CB_GetPicSize, %function
Real9_CB_GetPicSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L106	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1	@ pRv9ParsePicParam, pRv9ParsePicParam
	mov	r4, r0	@ pBs, pBs
	mov	r8, r2	@ width, width
	mov	r7, r3	@ height, height
	.pad #84
	sub	sp, sp, #84	@,,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp137,,,,
	add	r6, sp, #16	@ tmp136,,
	add	lr, sp, #48	@ tmp139,,
	add	r5, ip, #16	@ tmp140, tmp137,
	add	fp, ip, #48	@ tmp143, tmp137,
	stmia	r6!, {r0, r1, r2, r3}	@ tmp136,,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp137,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp136,,,,
	ldmia	r5!, {r0, r1, r2, r3}	@ tmp140,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp139,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp140,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp139,,,,
	ldmia	fp, {r0, r1, r2, r3}	@ tmp143,,,,
	ldr	ip, [r10, #20]	@ pRv9ParsePicParam_15(D)->ptype, pRv9ParsePicParam_15(D)->ptype
	sub	ip, ip, #2	@ D.34109, pRv9ParsePicParam_15(D)->ptype,
	cmp	ip, #1	@ D.34109,
	stmia	sp, {r0, r1, r2, r3}	@ tmp142,,,,
	bls	.L104	@,
.L90:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r5, r0	@ D.34110,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r3, sp, #80	@ tmp157,,
	add	r5, r3, r5, lsl #2	@ tmp146, tmp157, D.34110,
	ldr	r6, [r5, #-64]	@ w, code_width
	cmp	r6, #0	@ w,
	beq	.L93	@,
.L92:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r9, r0	@ D.34110,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r3, sp, #80	@ tmp158,,
	add	r3, r3, r9, lsl #2	@ tmp149, tmp158, D.34110,
	ldr	r5, [r3, #-32]	@ h, code_height1
	cmp	r5, #0	@ h,
	beq	.L105	@,
.L94:
	str	r6, [r8]	@ w, *width_22(D)
	str	r5, [r7]	@ h, *height_25(D)
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L93:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r5, r0	@ D.34110,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	cmp	r5, #255	@ D.34110,
	add	r6, r6, r5, lsl #2	@ w, w, D.34110,
	beq	.L93	@,
	b	.L92	@
.L104:
	mov	r0, r4	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L90	@,
	ldr	r3, [r10, #52]	@ D.34109, pRv9ParsePicParam_15(D)->pwidth_prev
	str	r3, [r8]	@ D.34109, *width_22(D)
	ldr	r3, [r10, #56]	@ D.34109, pRv9ParsePicParam_15(D)->pheight_prev
	str	r3, [r7]	@ D.34109, *height_25(D)
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L105:
	mov	r0, r4	@, pBs
	mov	r9, r9, asl #1	@ code, D.34110,
	bl	Real9_CB_Get1Bit	@
	add	r2, sp, #80	@ tmp159,,
	orr	r0, r0, r9	@ code,, code
	and	r3, r0, #3	@ code, code,
	add	r3, r2, r3, lsl #2	@ tmp152, tmp159, code,
	ldr	r5, [r3, #-80]	@ h, code_height2
	cmp	r5, #0	@ h,
	bne	.L94	@,
.L95:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r9, r0	@ D.34110,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	cmp	r9, #255	@ D.34110,
	add	r5, r5, r9, lsl #2	@ h, h, D.34110,
	beq	.L95	@,
	b	.L94	@
.L107:
	.align	2
.L106:
	.word	.LANCHOR0+280
	.fnend
	.size	Real9_CB_GetPicSize, .-Real9_CB_GetPicSize
	.align	2
	.global	Real9_CB_FindNextSliceStartCode
	.type	Real9_CB_FindNextSliceStartCode, %function
Real9_CB_FindNextSliceStartCode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp122, D.34118,
	cmp	r0, #0	@ D.34118,
	movlt	r0, r6	@ D.34118, tmp122
	mov	r6, r0, asr #3	@ tmp123, D.34118,
	sub	r6, r6, #2	@ RemainByte, tmp123,
	cmp	r6, #0	@ RemainByte,
	movwgt	r7, #7184	@ tmp128,
	movgt	r4, #0	@ i,
	movtgt	r7, 29	@ tmp128,
	bgt	.L111	@,
	b	.L112	@
.L116:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L112	@,
.L111:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, r7	@, tmp128
	mov	r0, r5	@, pBs
	bne	.L116	@,
	mov	r0, #1	@ D.34116,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L112:
	mov	r0, #0	@ D.34116,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real9_CB_FindNextSliceStartCode, .-Real9_CB_FindNextSliceStartCode
	.align	2
	.global	Real9_CB_GetSliceHeader
	.type	Real9_CB_GetSliceHeader, %function
Real9_CB_GetSliceHeader:
	.fnstart
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ bFirstSlice, bFirstSlice
	mov	r7, r2	@ iSliceMBA, iSliceMBA
	ldr	r4, [sp, #44]	@ pPictureHeader, pPictureHeader
	mov	r9, r3	@ iSliceGFID, iSliceGFID
	mov	r8, r0	@ pBs, pBs
	ldr	r6, [r4, #4]	@ pPictureHeader_11(D)->Fid, pPictureHeader_11(D)->Fid
	cmp	r6, #1	@ pPictureHeader_11(D)->Fid,
	beq	.L154	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L155	@,
	mov	r2, #0	@ tmp195,
	str	r2, [r7]	@ tmp195, *iSliceMBA_64(D)
	ldr	r2, [sp, #40]	@ tmp204, iSQUANT
	mov	r0, #1	@ D.34122,
	mvn	r3, #0	@ tmp196,
	str	r3, [r2]	@ tmp196, *iSQUANT_68(D)
.L142:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L154:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L119	@,
	ldr	r3, [r4, #88]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	cmn	r3, #1	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba,
	beq	.L156	@,
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L132	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #84]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	cmp	r3, r6	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, D.34124
	beq	.L122	@,
.L132:
	mov	r0, #0	@ D.34122,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L155:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L132	@,
	ldr	r5, [r4, #80]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	mov	r0, r8	@, pBs
	mov	r1, r5	@, D.34124
	bl	BsShow	@
	mov	r1, r5	@, D.34124
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r7]	@ D.34124, *iSliceMBA_64(D)
	ldr	r3, [r4, #80]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	cmp	r3, #11	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize,
	bls	.L137	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L132	@,
.L137:
	mov	r1, #5	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r5, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [sp, #40]	@ tmp203, iSQUANT
	cmp	r5, #31	@ D.34124,
	str	r5, [r3]	@ D.34124, *iSQUANT_68(D)
	bgt	.L132	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r5, [r4, #52]	@ D.34124, pPictureHeader_11(D)->OSVQUANT
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.34123,
	mov	r4, r0	@ D.34123,
	bne	.L132	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r5, [r9]	@ D.34124, *iSliceGFID_70(D)
	mov	r0, r4	@ D.34122, D.34123
	b	.L142	@
.L156:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L132	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r5, r6	@ bFirstSlice, pPictureHeader_11(D)->Fid
	mov	r1, #2	@,
	mov	r10, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r10, [r4, #84]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
.L122:
	mov	r1, #5	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	uxtb	r0, r6	@ D.34126, D.34124
	cmp	r0, #31	@ D.34126,
	strb	r0, [r4, #66]	@ D.34126, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	bhi	.L132	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L132	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	subs	r10, r0, #0	@ D.34123,
	bne	.L132	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r4, #52]	@ D.34124, pPictureHeader_11(D)->OSVQUANT
	mov	r1, #1	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	adds	r6, r6, #0	@ tmp174, D.34124,
	mov	r1, #13	@,
	mov	r0, r8	@, pBs
	movne	r6, #1	@ tmp174,
	cmp	r5, #0	@ bFirstSlice,
	strb	r6, [r4, #65]	@ tmp174, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough
	add	r5, r4, #64	@ pRv9ParsePicParam, pPictureHeader,
	beq	.L125	@,
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #84]	@ D.34125, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	str	r6, [r4, #92]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, #1	@ D.34125,
	bls	.L127	@,
	cmp	r3, #2	@ D.34125,
	ldreq	r2, [r4, #108]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	ldreq	r3, [r4, #112]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	streq	r2, [r4, #116]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth_prev
	streq	r3, [r4, #120]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight_prev
.L143:
	mov	r1, r5	@, pRv9ParsePicParam
	add	r3, sp, #4	@,,
	mov	r2, sp	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [sp]	@ D.34123, width
	ldr	r3, [sp, #4]	@ D.34123, height
	movw	r1, #8144	@ tmp185,
	sub	r0, r2, #48	@ D.34123, D.34123,
	cmp	r0, r1	@ D.34123, tmp185
	str	r2, [r4, #108]	@ D.34123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	str	r2, [r4, #16]	@ D.34123, pPictureHeader_11(D)->pic_width_in_pixel
	str	r3, [r4, #112]	@ D.34123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	str	r3, [r4, #12]	@ D.34123, pPictureHeader_11(D)->pic_height_in_pixel
	bhi	.L132	@,
	sub	r3, r3, #48	@ D.34123, D.34123,
	cmp	r3, r1	@ D.34123, tmp185
	bhi	.L132	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
.L133:
	ldr	r5, [r4, #80]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	mov	r0, r8	@, pBs
	mov	r1, r5	@, D.34124
	bl	BsShow	@
	mov	r1, r5	@, D.34124
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r4, #88]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
.L119:
	ldr	r2, [r4, #88]	@ D.34124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	mov	r3, #0	@ tmp193,
	ldr	r1, [sp, #40]	@ tmp202, iSQUANT
	mov	r0, #1	@ D.34122,
	str	r2, [r7]	@ D.34124, *iSliceMBA_64(D)
	ldrb	r2, [r4, #66]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	str	r2, [r1]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, *iSQUANT_68(D)
	str	r3, [r9]	@ tmp193, *iSliceGFID_70(D)
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L125:
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r6, r0	@ D.34124,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #92]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, r6	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, D.34124
	bne	.L132	@,
	add	r3, sp, #4	@,,
	mov	r2, sp	@,
	mov	r1, r5	@, pRv9ParsePicParam
	mov	r0, r8	@, pBs
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [r4, #108]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	ldr	r3, [sp]	@ width, width
	cmp	r2, r3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, width
	bne	.L132	@,
	ldr	r2, [r4, #112]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	ldr	r3, [sp, #4]	@ height, height
	cmp	r2, r3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, height
	bne	.L132	@,
	b	.L133	@
.L127:
	str	r10, [r4, #116]	@ D.34123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth_prev
	str	r10, [r4, #120]	@ D.34123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight_prev
	b	.L143	@
	.fnend
	.size	Real9_CB_GetSliceHeader, .-Real9_CB_GetSliceHeader
	.align	2
	.global	Real9_CB_GetPictureHeader
	.type	Real9_CB_GetPictureHeader, %function
Real9_CB_GetPictureHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	ldr	r3, [r1, #4]	@ pPictureHeader_11(D)->Fid, pPictureHeader_11(D)->Fid
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	r3, #1	@ pPictureHeader_11(D)->Fid,
	beq	.L182	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, #128	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #16	@,
	mov	r6, r0	@ D.34134,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #21845	@ tmp179,
	cmp	r6, r3	@ D.34134, tmp179
	bne	.L177	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #16	@,
	mov	r7, r0	@ D.34134,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r7, r6	@ D.34134, D.34134
	bne	.L177	@,
	mov	r0, r5	@, pBs
	add	r1, sp, #20	@ tmp210,,
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L177	@,
	ldr	r3, [sp, #20]	@ D.34133, info
	ands	r2, r3, #1	@ D.34133, D.34133,
	bne	.L177	@,
	tst	r3, #2	@ D.34133,
	mov	r0, r5	@, pBs
	strne	r2, [r4, #16]	@ D.34133, pPictureHeader_11(D)->pic_width_in_pixel
	moveq	r1, #176	@ tmp184,
	moveq	r2, #144	@ tmp185,
	streq	r1, [r4, #16]	@ tmp184, pPictureHeader_11(D)->pic_width_in_pixel
	add	r1, sp, #20	@ tmp211,,
	str	r2, [r4, #12]	@ D.34133, pPictureHeader_11(D)->pic_height_in_pixel
	ubfx	r2, r3, #2, #5	@ D.34133, D.34133,,
	ubfx	r3, r3, #7, #8	@ D.34133, D.34133,,
	str	r2, [r4, #48]	@ D.34133, pPictureHeader_11(D)->PQUANT
	str	r3, [r4, #36]	@ D.34133, pPictureHeader_11(D)->TR
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #1	@ length,
	streq	r0, [r4, #8]	@ length, pPictureHeader_11(D)->PicCodType
	beq	.L171	@,
	cmp	r0, #3	@ length,
	beq	.L183	@,
	cmp	r0, #5	@ length,
	bne	.L177	@,
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L177	@,
	mov	r3, #2	@ tmp197,
	str	r3, [r4, #8]	@ tmp197, pPictureHeader_11(D)->PicCodType
.L171:
	ldr	r3, [r4, #16]	@ D.34133, pPictureHeader_11(D)->pic_width_in_pixel
	cmp	r3, #0	@ D.34133,
	beq	.L184	@,
.L173:
	sub	r3, r3, #48	@ D.34133, D.34133,
	movw	r2, #8144	@ tmp199,
	cmp	r3, r2	@ D.34133, tmp199
	bhi	.L177	@,
	ldr	r3, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.34133, pPictureHeader_11(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.34133, tmp199
	bhi	.L177	@,
	mov	r0, r4	@, pPictureHeader
	mov	r6, #1	@ Status,
	bl	Real9_CB_SetDimensions	@
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r7, r0	@ D.34134,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	str	r7, [r4, #52]	@ D.34134, pPictureHeader_11(D)->OSVQUANT
.L159:
	ldr	r3, [r4, #16]	@ pPictureHeader_11(D)->pic_width_in_pixel, pPictureHeader_11(D)->pic_width_in_pixel
	mov	r0, r6	@ D.34132, Status
	ldr	r2, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	add	r3, r3, #15	@ D.34133, pPictureHeader_11(D)->pic_width_in_pixel,
	add	r2, r2, #15	@ D.34133, pPictureHeader_11(D)->pic_height_in_pixel,
	mov	r3, r3, lsr #4	@ D.34133, D.34133,
	str	r3, [r4, #24]	@ D.34133, pPictureHeader_11(D)->pic_width_in_mb
	mov	r2, r2, lsr #4	@ D.34133, D.34133,
	str	r2, [r4, #20]	@ D.34133, pPictureHeader_11(D)->pic_height_in_mb
	mul	r3, r3, r2	@ D.34133, D.34133, D.34133
	str	r3, [r4, #28]	@ D.34133, pPictureHeader_11(D)->total_mbs
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L183:
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #1	@ info,
	moveq	r3, #0	@ tmp195,
	streq	r3, [r4, #8]	@ tmp195, pPictureHeader_11(D)->PicCodType
	beq	.L171	@,
.L177:
	mvn	r0, #1	@ D.34132,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L182:
	str	r1, [sp, #4]	@ pPictureHeader,
	mvn	r2, #0	@ tmp157,
	add	r3, sp, #20	@ tmp160,,
	str	r2, [r1, #88]	@ tmp157, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	str	r3, [sp]	@ tmp160,
	add	r2, sp, #16	@,,
	add	r3, sp, #12	@,,
	mov	r1, #0	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r6, #1	@ Status,
	bne	.L159	@,
	ldr	r3, [r4, #84]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	cmp	r3, #3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	b	.L175	@
.L162:
	.word	.L161
	.word	.L163
	.word	.L164
	.word	.L165
.L184:
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pBs
	bl	Real9_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L177	@,
	ldr	r3, [r4, #16]	@ D.34133, pPictureHeader_11(D)->pic_width_in_pixel
	b	.L173	@
.L165:
	mov	r6, #1	@ Status,
	mov	r3, #2	@ tmp167,
	str	r3, [r4, #8]	@ tmp167, pPictureHeader_11(D)->PicCodType
.L160:
	ldr	r3, [r4, #16]	@ pPictureHeader_11(D)->pic_width_in_pixel, pPictureHeader_11(D)->pic_width_in_pixel
	movw	r2, #8144	@ tmp175,
	ldrb	lr, [r4, #65]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough
	sub	r3, r3, #48	@ D.34133, pPictureHeader_11(D)->pic_width_in_pixel,
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	ldr	r0, [r4, #92]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, r2	@ D.34133, tmp175
	ldr	r1, [r4, #96]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb
	ldr	r3, [r4, #100]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq
	str	lr, [r4, #44]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough, pPictureHeader_11(D)->Deblocking_Filter_Passthrough
	str	ip, [r4, #48]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, pPictureHeader_11(D)->PQUANT
	str	r0, [r4, #36]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, pPictureHeader_11(D)->TR
	str	r1, [r4, #56]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb, pPictureHeader_11(D)->TRB
	str	r3, [r4, #60]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq, pPictureHeader_11(D)->DBQUANT
	bhi	.L177	@,
	ldr	r3, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.34133, pPictureHeader_11(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.34133, tmp175
	bhi	.L177	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
	b	.L159	@
.L164:
	mov	r0, #1	@ tmp166,
	str	r0, [r4, #8]	@ tmp166, pPictureHeader_11(D)->PicCodType
	mov	r6, r0	@ Status, tmp166
	b	.L160	@
.L163:
	mov	r3, #0	@ tmp164,
	mov	r6, #1	@ Status,
	str	r3, [r4, #8]	@ tmp164, pPictureHeader_11(D)->PicCodType
	str	r3, [r4, #68]	@ tmp164, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_isForcedKey
	b	.L160	@
.L161:
	mov	r0, #1	@ tmp163,
	mov	r3, #0	@ tmp162,
	str	r0, [r4, #68]	@ tmp163, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_isForcedKey
	mov	r6, r0	@ Status, tmp163
	str	r3, [r4, #8]	@ tmp162, pPictureHeader_11(D)->PicCodType
	b	.L160	@
.L175:
	mvn	r6, #1	@ Status,
	b	.L160	@
	.fnend
	.size	Real9_CB_GetPictureHeader, .-Real9_CB_GetPictureHeader
	.align	2
	.global	Real9_SetImgFormat
	.type	Real9_SetImgFormat, %function
Real9_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #36864	@ tmp143, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_3(D) + 11360B].CurFsID
	ldr	r0, [r5, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #704]	@ MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].PicCodType, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].PicCodType
	mov	r1, #0	@ tmp153,
	str	r1, [r4, #128]	@ tmp153, pImg_8->is_fld_save
	and	r3, r3, #3	@ D.34141, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].PicCodType,
	str	r3, [r4, #132]	@ D.34141, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.34141, D.34141,
	str	r3, [r4, #136]	@ D.34141, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.34141, D.34141,
	str	r2, [r4, #140]	@ D.34141, pImg_8->format
	ldr	r3, [r5, #712]	@ D.34141, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].pic_width_in_pixel
	str	r3, [r4, #144]	@ D.34141, pImg_8->image_width
	ldr	r3, [r5, #708]	@ D.34141, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].pic_height_in_pixel
	str	r3, [r4, #148]	@ D.34141, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _21->eCapLevel, _21->eCapLevel
	cmp	r3, #25	@ _21->eCapLevel,
	beq	.L192	@,
.L187:
	mov	r2, #9	@ tmp169,
	mov	r3, #0	@ tmp170,
	str	r2, [r4, #300]	@ tmp169, pImg_8->ImageDnr.video_standard
	mov	r2, #1	@ tmp172,
	strb	r3, [r4, #288]	@ tmp170, pImg_8->ImageDnr.pic_structure
	mov	r3, #8	@ tmp174,
	strb	r2, [r4, #295]	@ tmp172, pImg_8->ImageDnr.use_pic_qp_en
	strb	r2, [r4, #293]	@ tmp172, pImg_8->ImageDnr.chroma_format_idc
	str	r3, [r4, #304]	@ tmp174, pImg_8->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp174, pImg_8->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp174, pImg_8->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L192:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.34141, pImg_8->image_stride
	add	r3, r3, #15	@ D.34141, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.34141, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.34144, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.34141, D.34141,
	mov	r3, r1, asl #4	@ D.34141, D.34141,
	add	lr, r1, r0	@ D.34140, D.34141, D.34141
	str	r0, [r4, #88]	@ D.34141, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.34141, D.34141, D.34141
	str	r0, [r4, #120]	@ D.34141, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.34140, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.34144, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.34141, D.34141, D.34141
	add	r3, ip, r3	@ D.34144, D.34144, D.34141
	add	r1, r1, r0	@ D.34140, D.34141, D.34141
	str	r3, [r4, #36]	@ D.34144, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.34141, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.34141, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.34140, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L187	@
	.fnend
	.size	Real9_SetImgFormat, .-Real9_SetImgFormat
	.align	2
	.type	Real9_FlushFrameToVo, %function
Real9_FlushFrameToVo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #36864	@ tmp124, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L195	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L199	@,
.L194:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L199:
	mov	r0, r5	@, pCtx
	bl	Real9_SetImgFormat	@
	mov	r2, #1	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@ pCtx_3(D)->ChanID, pCtx_3(D)->ChanID
	add	r3, r3, #40	@,,
	str	r7, [sp]	@ pImg,
	mov	r2, r5	@, pCtx
	mov	r1, #9	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L194	@,
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ ret,
	b	.L194	@
.L195:
	mvn	r0, #0	@ ret,
	b	.L194	@
	.fnend
	.size	Real9_FlushFrameToVo, .-Real9_FlushFrameToVo
	.align	2
	.global	RV9_RecordVFMWState
	.type	RV9_RecordVFMWState, %function
RV9_RecordVFMWState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	RV9_RecordVFMWState, .-RV9_RecordVFMWState
	.align	2
	.global	Real9_WriteSliceMsg
	.type	Real9_WriteSliceMsg, %function
Real9_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #44	@ tmp131,
	add	r2, r0, #36864	@ tmp135, pCtx,
	mla	r3, r3, r1, r0	@ tmp132, tmp131, HoldSliceNum, pCtx
	ldr	ip, [r2, #852]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_0, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_0
	add	r1, r1, #1	@ D.34162, HoldSliceNum,
	str	ip, [r3, #88]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamPhyAddr
	ldr	ip, [r2, #844]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_0, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_0
	str	ip, [r3, #96]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamBitOffset
	ldr	ip, [r2, #848]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_0, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_0
	str	ip, [r3, #104]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamLength
	ldr	ip, [r2, #864]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_1, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_1
	str	ip, [r3, #92]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_stream_addr_1, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamPhyAddr
	ldr	ip, [r2, #856]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_1, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_1
	str	ip, [r3, #100]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_offset_1, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamBitOffset
	ldr	ip, [r2, #860]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_1, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_1
	str	ip, [r3, #108]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].bit_len_1, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamLength
	ldr	ip, [r2, #832]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].dblk_filter_passthrough, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].dblk_filter_passthrough
	str	ip, [r3, #112]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].dblk_filter_passthrough, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].dblk_filter_passthrough
	ldr	ip, [r2, #828]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].osvquant, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].osvquant
	str	ip, [r3, #116]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].osvquant, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].osvquant
	ldr	ip, [r2, #824]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].SliceQP, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].SliceQP
	str	ip, [r3, #120]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].SliceQP, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].sliceqp
	ldr	r2, [r2, #836]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].first_mb_in_slice, MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].first_mb_in_slice
	str	r2, [r3, #124]	@ MEM[(struct RV9_SliceHeader *)pCtx_1(D) + 37688B].first_mb_in_slice, MEM[(struct RV9_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].first_mb_in_slice
	str	r1, [r0, #40]	@ D.34162, MEM[(struct RV9_DEC_PARAM_S *)pCtx_1(D) + 8B].TotalSliceNum
	bx	lr	@
	.fnend
	.size	Real9_WriteSliceMsg, .-Real9_WriteSliceMsg
	.align	2
	.global	Real9_WritePicMsg
	.type	Real9_WritePicMsg, %function
Real9_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #36864	@ tmp123, pCtx,
	ldr	r2, [r3, #704]	@ D.34165, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].PicCodType
	cmp	r2, #2	@ D.34165,
	strb	r2, [r0, #9]	@ D.34165, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicCodingType
	ldr	r2, [r3, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb
	str	r2, [r0, #12]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicWidthInMb
	ldr	r2, [r3, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb
	str	r2, [r0, #16]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicHeightInMb
	ldr	r2, [r3, #1964]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0
	str	r2, [r0, #20]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio0
	ldr	r2, [r3, #1968]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1
	str	r2, [r0, #24]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio1
	ldr	r2, [r3, #744]	@ D.34167, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].PQUANT
	str	r2, [r0, #28]	@ D.34167, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PQUANT
	ldr	r1, [r3, #868]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	str	r1, [r0, #32]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicQP
	ldr	r1, [r3, #872]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP
	str	r1, [r0, #36]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicMb0QP
	strne	r2, [r3, #868]	@ D.34167, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	bx	lr	@
	.fnend
	.size	Real9_WritePicMsg, .-Real9_WritePicMsg
	.align	2
	.global	Real9_WriteReg
	.type	Real9_WriteReg, %function
Real9_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #44]	@ fst_slc_grp, MEM[(struct RV9_DEC_PARAM_S *)pCtx_1(D) + 8B].FstSlcGrp
	bx	lr	@
	.fnend
	.size	Real9_WriteReg, .-Real9_WriteReg
	.align	2
	.global	Real9_ModifySliceMsg
	.type	Real9_ModifySliceMsg, %function
Real9_ModifySliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #124]	@ MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice
	ldr	r3, [r0, #12]	@ D.34222, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].PicWidthInMb
	cmp	r2, #0	@ MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice,
	ldr	ip, [r0, #16]	@ D.34222, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].PicHeightInMb
	bne	.L238	@,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mul	ip, r3, ip	@ D.34222, D.34222, D.34222
	ldr	lr, [r0, #40]	@ D.34222, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	cmp	lr, #2	@ D.34222,
	sub	ip, ip, #1	@ TotalMbnMinus1, D.34222,
	bls	.L211	@,
	ldr	r3, [r0, #168]	@ D.34223, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[1].first_mb_in_slice
	sub	r4, lr, #1	@ D.34222, D.34222,
	cmp	r3, #0	@ D.34223,
	cmpgt	ip, r3	@, TotalMbnMinus1, D.34223
	ble	.L212	@,
	mov	r2, r0	@ ivtmp.150, pCtx
	mov	r3, #1	@ i,
	b	.L213	@
.L214:
	ldr	r1, [r2, #212]	@ D.34223, MEM[base: _177, offset: 212B]
	add	r2, r2, #44	@ ivtmp.150, ivtmp.150,
	cmp	ip, r1	@ TotalMbnMinus1, D.34223
	cmpgt	r1, #0	@, D.34223,
	ble	.L212	@,
.L213:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.34222
	bne	.L214	@,
.L211:
	cmp	lr, #1	@ D.34222,
	bls	.L215	@,
	sub	r5, lr, #1	@ D.34222, D.34222,
	mov	r3, r0	@ ivtmp.143, pCtx
	mov	r2, #0	@ i,
	b	.L216	@
.L217:
	ldr	r4, [r3, #124]	@ D.34223, MEM[base: _13, offset: 124B]
	add	r3, r3, #44	@ ivtmp.143, ivtmp.143,
	add	r2, r2, #1	@ i, i,
	ldr	r1, [r3, #124]	@ MEM[base: _11, offset: 124B], MEM[base: _11, offset: 124B]
	cmp	r4, r1	@ D.34223, MEM[base: _11, offset: 124B]
	bge	.L212	@,
.L216:
	cmp	r2, r5	@ i, D.34222
	bne	.L217	@,
	mov	r3, #44	@ tmp268,
	mla	r2, r3, r2, r0	@ tmp269, tmp268, i, pCtx
	ldr	r3, [r2, #124]	@ D.34223, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[_175].first_mb_in_slice
	cmp	ip, r3	@ TotalMbnMinus1, D.34223
	cmpge	r3, #0	@, D.34223,
	ble	.L212	@,
.L215:
	cmp	lr, #0	@ D.34222,
	beq	.L218	@,
	sub	r7, lr, #1	@ D.34222, D.34222,
	mov	r6, r0	@ ivtmp.126, pCtx
	mov	r4, r0	@ ivtmp.136, pCtx
	mov	r5, #0	@ i,
	b	.L221	@
.L240:
	cmp	r5, lr	@ i, D.34222
	beq	.L239	@,
.L221:
	cmp	r5, r7	@ i, D.34222
	streq	ip, [r4, #128]	@ TotalMbnMinus1, MEM[base: _104, offset: 128B]
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #44	@ ivtmp.136, ivtmp.136,
	ldrne	r3, [r4, #124]	@ MEM[base: _103, offset: 168B], MEM[base: _103, offset: 168B]
	moveq	r1, ip	@ D.34223, TotalMbnMinus1
	subne	r1, r3, #1	@ D.34223, MEM[base: _103, offset: 168B],
	ldr	r3, [r4, #80]	@ D.34223, MEM[base: _113, offset: 124B]
	strne	r1, [r4, #84]	@ D.34223, MEM[base: _103, offset: 128B]
	mov	r2, r3, lsr #31	@ tmp282, D.34223,
	cmp	ip, r3	@ TotalMbnMinus1, D.34223
	orrlt	r2, r2, #1	@,, tmp284, tmp282
	cmp	r3, r1	@ D.34223, D.34223
	movle	r3, r2	@, tmp288, tmp284
	orrgt	r3, r2, #1	@,, tmp288, tmp284
	orr	r3, r3, r1, lsr #31	@ tmp293, tmp288, D.34223,
	cmp	ip, r1	@ TotalMbnMinus1, D.34223
	orrlt	r3, r3, #1	@,, tmp299, tmp293
	cmp	r3, #0	@ tmp299,
	beq	.L240	@,
.L212:
	mov	r0, #0	@ D.34224,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L238:
	mov	r0, #0	@ D.34224,
	bx	lr	@
.L239:
	ldr	r2, [r0, #88]	@ stream_base_addr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	mov	r1, r2	@ D.34227, stream_base_addr
	b	.L224	@
.L241:
	ldr	r1, [r6, #88]	@ D.34227, MEM[base: _129, offset: 88B]
.L224:
	cmp	r2, r1	@ stream_base_addr, D.34227
	ldr	ip, [r6, #92]	@ stream_base_addr, MEM[base: _130, offset: 92B]
	add	r3, r3, #1	@ i, i,
	movcs	r2, r1	@ stream_base_addr, D.34227
	cmp	ip, r2	@ stream_base_addr, stream_base_addr
	bcs	.L222	@,
	ldr	r1, [r6, #108]	@ MEM[base: _130, offset: 108B], MEM[base: _130, offset: 108B]
	cmp	r1, #0	@ MEM[base: _130, offset: 108B],
	movne	r2, ip	@ stream_base_addr, stream_base_addr
.L222:
	cmp	r3, lr	@ i, D.34222
	add	r6, r6, #44	@ ivtmp.126, ivtmp.126,
	bne	.L241	@,
	bic	r2, r2, #15	@ D.34224, stream_base_addr,
	ldr	lr, [r0, #40]	@ D.34222, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	str	r2, [r0, #48]	@ D.34224, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
	mov	r3, r0	@ ivtmp.110, pCtx
	mov	ip, #0	@ i,
	b	.L228	@
.L242:
	ldr	r4, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	rsb	r2, r2, r1	@ D.34222, D.34224, MEM[base: _43, offset: 88B]
	and	r1, r4, #7	@ D.34222, MEM[base: _43, offset: 96B],
	add	r2, r2, r4, lsr #3	@ BytePos0, D.34222, MEM[base: _43, offset: 96B],
	and	r4, r2, #15	@ D.34222, BytePos0,
	bic	r2, r2, #15	@ D.34222, BytePos0,
	str	r2, [r3, #88]	@ D.34222, MEM[base: _43, offset: 88B]
	add	r2, r1, r4, lsl #3	@ D.34222, D.34222, D.34222,
	str	r2, [r3, #96]	@ D.34222, MEM[base: _43, offset: 96B]
.L226:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #44	@ ivtmp.110, ivtmp.110,
	cmp	lr, ip	@ D.34222, i
	bls	.L227	@,
	ldr	r2, [r0, #48]	@ D.34224, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L228:
	ldr	r1, [r3, #92]	@ MEM[base: _43, offset: 92B], MEM[base: _43, offset: 92B]
	cmp	r1, #0	@ MEM[base: _43, offset: 92B],
	rsb	r4, r2, r1	@ D.34222, D.34224, MEM[base: _43, offset: 92B]
	ldr	r1, [r3, #88]	@ MEM[base: _43, offset: 88B], MEM[base: _43, offset: 88B]
	beq	.L242	@,
	ldr	r5, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	rsb	r2, r2, r1	@ D.34222, D.34224, MEM[base: _43, offset: 88B]
	ldr	r7, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	and	r6, r5, #7	@ D.34222, MEM[base: _43, offset: 96B],
	add	r2, r2, r5, lsr #3	@ BytePos0, D.34222, MEM[base: _43, offset: 96B],
	and	r5, r7, #7	@ D.34222, MEM[base: _43, offset: 100B],
	add	r1, r4, r7, lsr #3	@ BytePos1, D.34222, MEM[base: _43, offset: 100B],
	and	r4, r2, #15	@ D.34222, BytePos0,
	and	r7, r1, #15	@ D.34222, BytePos1,
	bic	r2, r2, #15	@ D.34222, BytePos0,
	add	r4, r6, r4, lsl #3	@ D.34222, D.34222, D.34222,
	str	r2, [r3, #88]	@ D.34222, MEM[base: _43, offset: 88B]
	bic	r1, r1, #15	@ D.34222, BytePos1,
	add	r2, r5, r7, lsl #3	@ D.34222, D.34222, D.34222,
	str	r4, [r3, #96]	@ D.34222, MEM[base: _43, offset: 96B]
	str	r2, [r3, #100]	@ D.34222, MEM[base: _43, offset: 100B]
	str	r1, [r3, #92]	@ D.34222, MEM[base: _43, offset: 92B]
	b	.L226	@
.L218:
	ldr	r3, [r0, #88]	@ MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	bic	r3, r3, #15	@ D.34223, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr,
	str	r3, [r0, #48]	@ D.34223, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L227:
	mov	r0, #1	@ D.34224,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	Real9_ModifySliceMsg, .-Real9_ModifySliceMsg
	.align	2
	.global	REAL9DEC_Init
	.type	REAL9DEC_Init, %function
REAL9DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #39312	@,
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r4, r5, #36864	@ tmp123, pCtx,
	add	r0, r5, #38912	@, pCtx,
	mov	r6, #0	@ tmp136,
	add	r0, r0, #40	@,,
	bl	ResetVoQueue	@
	str	r7, [r5]	@ pstExtraData, pCtx_3(D)->pstExtraData
	mov	r3, #15	@ tmp124,
	str	r3, [r4, #868]	@ tmp124, MEM[(struct RV9_CODECINF *)pCtx_3(D) + 11360B].PrevPicQP
	str	r3, [r4, #872]	@ tmp124, MEM[(struct RV9_CODECINF *)pCtx_3(D) + 11360B].PrevPicMb0QP
	add	r3, r5, #8192	@ tmp121, pCtx,
	ldr	r1, [r7, #8]	@ pstExtraData_8(D)->s32DecMode, pstExtraData_8(D)->s32DecMode
	mov	r0, r5	@, pCtx
	strb	r6, [r3, #3184]	@ tmp136, MEM[(struct RV9_CODECINF *)pCtx_3(D) + 11360B].Imgbuf_allocated
	mov	r5, #1	@ tmp140,
	mov	r2, #8192	@ tmp143,
	strb	r1, [r3, #3180]	@ pstExtraData_8(D)->s32DecMode, MEM[(struct RV9_CODECINF *)pCtx_3(D) + 11360B].UsedDecMode
	str	r2, [r4, #728]	@ tmp143, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].m_uTRWrap
	str	r5, [r4, #700]	@ tmp140, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].Fid
	strb	r5, [r4, #696]	@ tmp140, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].pixel_aspect_ratio
	bl	VCTRL_GetChanIDByCtx	@
	str	r5, [r4, #2444]	@ tmp140, pCtx_3(D)->DSDNeedClearQue
	cmn	r0, #1	@ D.34232,
	str	r0, [r4, #2440]	@ D.34232, pCtx_3(D)->ChanID
	mov	r0, r6	@, tmp136
	beq	.L247	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L247:
	ldr	r1, .L248	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34230,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L249:
	.align	2
.L248:
	.word	.LC10
	.fnend
	.size	REAL9DEC_Init, .-REAL9DEC_Init
	.global	__aeabi_idiv
	.align	2
	.global	REAL9DEC_Decode
	.type	REAL9DEC_Decode, %function
REAL9DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #36864	@ tmp1314, pCtx,
	.pad #204
	sub	sp, sp, #204	@,,
	mov	r8, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #128	@,
	mov	r1, #0	@,
	add	r0, sp, #72	@ tmp1356,,
	add	r3, r8, #8	@ __p, pCtx,
	str	r3, [sp, #20]	@ __p, %sfp
	bl	memset	@
	ldr	r2, [r4, #804]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pwidth
	ldr	r3, [r4, #808]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pheight
	cmp	r5, #0	@ pPacket,
	mov	r0, #1	@ tmp504,
	mov	r1, #8192	@ tmp507,
	str	r2, [r4, #812]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pwidth_prev
	str	r2, [sp, #188]	@ D.34282, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r2, [sp, #180]	@ D.34282, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r3, [r4, #816]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pheight_prev
	str	r3, [sp, #192]	@ D.34282, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	str	r3, [sp, #184]	@ D.34282, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r0, [r4, #700]	@ tmp504, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Fid
	str	r0, [sp, #76]	@ tmp504, TmpPictureHeader.Fid
	str	r1, [r4, #728]	@ tmp507, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	str	r1, [sp, #104]	@ tmp507, TmpPictureHeader.m_uTRWrap
	beq	.L391	@,
	movw	r1, #11348	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	__memzero	@
	mov	r6, #0	@ tmp520,
	str	r6, [r4, #1904]	@ tmp520, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsOffset
	add	r7, r8, #8192	@ tmp1309, pCtx,
	ldr	r3, [r5, #12]	@ pPacket_54(D)->StreamPack[0].LenInByte, pPacket_54(D)->StreamPack[0].LenInByte
	str	r3, [r4, #1924]	@ pPacket_54(D)->StreamPack[0].LenInByte, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PacketTail
	ldr	r3, [r5, #8]	@ pPacket_54(D)->StreamPack[0].PhyAddr, pPacket_54(D)->StreamPack[0].PhyAddr
	str	r3, [r4, #1908]	@ pPacket_54(D)->StreamPack[0].PhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	ldr	r3, [r5]	@ D.34284, pPacket_54(D)->StreamPack[0].VirAddr
	str	r3, [r7, #3168]	@ D.34284, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	ldr	r2, [r5, #12]	@ D.34282, pPacket_54(D)->StreamPack[0].LenInByte
	str	r2, [r4, #1912]	@ D.34282, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[0].IsLastSeg, pPacket_54(D)->StreamPack[0].IsLastSeg
	strb	r3, [r7, #3172]	@ pPacket_54(D)->StreamPack[0].IsLastSeg, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[0].IsLastSeg, pPacket_54(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_54(D)->StreamPack[0].IsLastSeg,
	beq	.L253	@,
	ldr	r3, [r5, #88]	@ pPacket_54(D)->StreamPack[1].PhyAddr, pPacket_54(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1916]	@ pPacket_54(D)->StreamPack[1].PhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr1
	ldr	r3, [r5, #80]	@ D.34284, pPacket_54(D)->StreamPack[1].VirAddr
	str	r3, [r7, #3176]	@ D.34284, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr1
	ldr	r3, [r5, #92]	@ pPacket_54(D)->StreamPack[1].LenInByte, pPacket_54(D)->StreamPack[1].LenInByte
	str	r3, [r4, #1920]	@ pPacket_54(D)->StreamPack[1].LenInByte, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[1].IsLastSeg, pPacket_54(D)->StreamPack[1].IsLastSeg
	strb	r3, [r7, #3173]	@ pPacket_54(D)->StreamPack[1].IsLastSeg, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[1].IsLastSeg, pPacket_54(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_54(D)->StreamPack[1].IsLastSeg,
	bne	.L392	@,
.L254:
	movw	r3, #65525	@ tmp585,
	sub	r1, r2, #10	@ D.34287, D.34282,
	movt	r3, 47	@ tmp585,
	cmp	r1, r3	@ D.34287, tmp585
	bhi	.L387	@,
	ldr	r1, [r7, #3168]	@ D.34284, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	cmp	r1, #0	@ D.34284,
	beq	.L387	@,
	add	r5, r8, #38912	@ pBs, pCtx,
	add	r5, r5, #8	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.34283,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r6, #255	@ D.34283,
	add	r0, r6, #1	@ D.34283, D.34283,
	str	r0, [r4, #876]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	bhi	.L387	@,
	cmp	r0, #0	@ D.34283,
	beq	.L257	@,
	add	r9, r8, #37632	@ ivtmp.189, pCtx,
	movw	r10, #65535	@ tmp1323,
	add	r9, r9, #108	@ ivtmp.189, ivtmp.189,
	movt	r10, 47	@ tmp1323,
	mov	r6, #0	@ i,
	b	.L258	@
.L393:
	ldr	r0, [r4, #876]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	cmp	r0, r6	@ D.34283, i
	bls	.L257	@,
.L258:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r6, r6, #1	@ i, i,
	bl	BsShow	@
	mov	r1, #32	@,
	mov	fp, r0	@ D.34283,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r3, fp	@ D.34282, D.34283
	cmp	r3, r10	@ D.34282, tmp1323
	str	r3, [r9, #4]!	@ D.34282, MEM[base: _659, offset: 0B]
	ble	.L393	@,
.L387:
	mov	r6, #0	@ D.34279,
.L375:
	mov	r0, r6	@, D.34279
	add	sp, sp, #204	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L392:
	ldr	r1, [r5, #16]	@, pPacket_54(D)->StreamPack[0].StreamID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r5, #96]	@, pPacket_54(D)->StreamPack[1].StreamID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r6	@, D.34279
	add	sp, sp, #204	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L253:
	str	r6, [r4, #1916]	@ tmp520, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr1
	str	r6, [r7, #3176]	@ tmp520, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr1
	str	r6, [r4, #1920]	@ tmp520, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength1
	strb	r6, [r7, #3173]	@ tmp520, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg1
	b	.L254	@
.L391:
	ldr	r2, [r4, #1940]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FrmCnt
	mov	r6, r5	@ D.34279, pPacket
	ldr	r1, .L412	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.34279
	add	sp, sp, #204	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L257:
	add	r3, r8, #37632	@ ivtmp.171, pCtx,
	sub	lr, r0, #1	@ D.34282, D.34283,
	add	r3, r3, #112	@ ivtmp.171, ivtmp.171,
	mov	r2, #0	@ i,
	b	.L259	@
.L260:
	ldr	ip, [r3, #4]!	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 0B]
	ldr	r1, [r3, #-4]	@ MEM[base: _641, offset: 4294967292B], MEM[base: _641, offset: 4294967292B]
	cmp	ip, r1	@ MEM[base: _641, offset: 0B], MEM[base: _641, offset: 4294967292B]
	ble	.L387	@,
.L259:
	cmp	r2, lr	@ i, D.34282
	add	r2, r2, #1	@ i, i,
	bne	.L260	@,
	mov	r0, r0, asl #3	@ D.34283, D.34283,
	ldr	r10, [r4, #880]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	add	r2, r0, #1	@ PrevHeaderBytes, D.34283,
	movw	r3, #65534	@ tmp611,
	add	r1, r2, r10	@ D.34287, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	cmp	r2, #3145728	@ PrevHeaderBytes,
	sub	fp, r1, #1	@ D.34287, D.34287,
	str	r2, [sp, #24]	@ PrevHeaderBytes, %sfp
	movt	r3, 47	@ tmp611,
	movlt	r2, #0	@ tmp613,
	movge	r2, #1	@ tmp613,
	cmp	fp, r3	@ D.34287, tmp611
	movls	fp, r2	@, tmp617, tmp613
	orrhi	fp, r2, #1	@,, tmp617, tmp613
	cmp	fp, #0	@ tmp617,
	str	r1, [sp, #28]	@ D.34287, %sfp
	bne	.L387	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	mov	r3, r1	@ D.34287, D.34287
	rsb	r2, r1, r2	@ D.34283, D.34287, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34283,
	ble	.L387	@,
	ldr	r1, [r7, #3168]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, r3	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, D.34287
	bl	BsInit	@
	add	r1, sp, #72	@ tmp1361,,
	mov	r0, r5	@, pBs
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@ D.34279,
	mov	r6, r0	@ D.34279,
	bne	.L394	@,
	ldrb	r3, [r7, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated,
	beq	.L262	@,
	ldr	r2, [sp, #96]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	beq	.L395	@,
.L262:
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	fp, [r3, #692]	@ _149->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _149->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ _149->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L396	@,
.L264:
	ldr	r3, .L412+4	@ tmp693,
	ldr	r3, [r3]	@ D.34293, g_event_report
	cmp	r3, #0	@ D.34293,
	beq	.L273	@,
	ldr	r0, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	add	r2, sp, #64	@,,
	ldr	lr, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	mov	r1, #2	@,
	ldr	ip, [sp, #96]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	r0, [sp, #64]	@ movhi	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, para
	ldr	r0, [sp, #92]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	strh	lr, [sp, #66]	@ movhi	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, para
	strh	ip, [sp, #68]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	strh	r0, [sp, #70]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	blx	r3	@ D.34293
.L273:
	mov	r2, #1	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	add	fp, r8, #38912	@ D.34295, pCtx,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	r3, #0	@ tmp726,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	add	fp, fp, #40	@ D.34295, D.34295,
	str	r3, [sp, #32]	@ tmp726, %sfp
	bl	FSP_ClearLogicFs	@
	ldr	r3, [sp, #32]	@ tmp726, %sfp
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	str	r3, [r4, #2040]	@ tmp726, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	str	r3, [r4, #2044]	@ tmp726, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	bl	FSP_GetNullLogicFs	@
	ldr	r3, [sp, #32]	@ tmp726, %sfp
	mov	r1, fp	@, D.34295
	str	r0, [r4, #2044]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	str	r0, [r4, #2040]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	strb	r3, [r7, #3181]	@ tmp726, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #96]	@ D.34282, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #92]	@ D.34282, TmpPictureHeader.pic_height_in_mb
	cmp	r2, #512	@ D.34282,
	bhi	.L275	@,
	cmp	r3, #512	@ D.34282,
	bhi	.L275	@,
	ldr	r3, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _227->stChanOption.s32ReRangeEn, _227->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _227->stChanOption.s32ReRangeEn,
	bne	.L277	@,
	ldr	r3, [r3, #32]	@ _227->eCapLevel, _227->eCapLevel
	cmp	r3, #25	@ _227->eCapLevel,
	beq	.L397	@,
.L277:
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L279	@,
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _235->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _235->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _235->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L281	@,
	ldr	r3, [r4, #2444]	@ pCtx_38(D)->DSDNeedClearQue, pCtx_38(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_38(D)->DSDNeedClearQue,
	beq	.L281	@,
.L279:
	ldr	r3, [sp, #92]	@, TmpPictureHeader.pic_height_in_mb
	mov	r0, #1	@,
	ldr	r2, [sp, #96]	@, TmpPictureHeader.pic_width_in_mb
	ldr	r1, .L412+8	@,
	bl	dprint_vfmw	@
	add	r2, sp, #72	@ tmp1362,,
	mov	r1, r8	@, pCtx
	mov	r0, #6	@,
	bl	Real9_ArrangeVHBMem	@
	subs	r3, r0, #0	@ D.34282,
	beq	.L398	@,
.L263:
	add	r3, r8, #37376	@ pPictureHeader, pCtx,
	add	r1, sp, #72	@ tmp1364,,
	add	r3, r3, #184	@ pPictureHeader, pPictureHeader,
	mov	r2, #128	@,
	str	r3, [sp, #36]	@ pPictureHeader, %sfp
	mov	r0, r3	@, pPictureHeader
	bl	memcpy	@
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	mov	r0, r8	@, pCtx
	ldr	r3, [r3, #8]	@ _248->s32DecMode, _248->s32DecMode
	strb	r3, [r7, #3180]	@ _248->s32DecMode, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].UsedDecMode
	bl	Real9_GetImageBuffer	@
	subs	r3, r0, #0	@ D.34282,
	beq	.L399	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L283	@,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	mov	r0, #29	@,
	ldr	r1, .L412+12	@,
	ldrd	r10, [r2, #56]	@ tmp1367, pCtx_38(D)->pstExtraData,
	strd	r10, [r3, #8]	@ tmp1367, pImg,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldrd	r10, [r2, #72]	@ tmp1368, pCtx_38(D)->pstExtraData,
	strd	r10, [r3, #16]	@ tmp1368, pImg,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldrd	r10, [r2, #88]	@ tmp1369, pCtx_38(D)->pstExtraData,
	strd	r10, [r3, #24]	@ tmp1369, pImg,
	mvn	r10, #0	@ tmp1370,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	mvn	fp, #0	@,
	ldr	r2, [r2, #104]	@ D.34282, _272->DispEnableFlag
	str	r2, [r3, #68]	@ D.34282, pImg_259->DispEnableFlag
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #108]	@ D.34282, _275->DispFrameDistance
	str	r2, [r3, #72]	@ D.34282, pImg_259->DispFrameDistance
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #112]	@ D.34282, _278->DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ D.34282, pImg_259->DistanceBeforeFirstFrame
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #128]	@ D.34282, _281->GopNum
	str	r2, [r3, #80]	@ D.34282, pImg_259->GopNum
	ldr	r2, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	strd	r10, [r2, #56]	@ tmp1370, D.34292,
	ldrd	r10, [r3, #16]	@ pImg_259->Usertag, pImg,
	ldrd	r2, [r3, #8]	@ pImg_259->PTS, pImg,
	strd	r10, [sp]	@ pImg_259->Usertag,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #704]	@ D.34288, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	cmp	r3, #2	@ D.34288,
	beq	.L400	@,
	cmp	r3, #1	@ D.34288,
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	beq	.L401	@,
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	movne	r3, #2	@ D.34280,
	moveq	r3, #1	@ D.34280,
.L287:
	strb	r3, [r7, #3181]	@ D.34280, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	ldr	r2, [r4, #2040]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r3, [r4, #2044]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	cmp	r2, r3	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	beq	.L288	@,
	ldr	r1, .L412+16	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetRef	@
.L288:
	ldr	r3, [r4, #2044]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	str	r3, [r4, #2040]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	str	r1, [r4, #2044]	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r1, .L412+20	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L289:
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	fp, r0	@ pCur,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	mov	r9, r0	@ pFwd,
	str	r0, [sp, #40]	@ pFwd, %sfp
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	fp, #0	@ pCur,
	cmpne	r9, #0	@, pFwd,
	mov	r3, r9	@ pFwd, pFwd
	moveq	r3, #1	@ tmp910,
	movne	r3, #0	@ tmp910,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp916, tmp910
	str	r0, [sp, #32]	@, %sfp
	cmp	r3, #0	@ tmp916,
	bne	.L402	@,
	ldr	r3, [fp, #408]	@ D.34298, pCur_317->pstDecodeFs
	cmp	r3, #0	@ D.34298,
	beq	.L291	@,
	ldr	r2, [fp, #416]	@ pCur_317->pstTfOutFs, pCur_317->pstTfOutFs
	cmp	r2, #0	@ pCur_317->pstTfOutFs,
	beq	.L291	@,
	ldr	r2, [fp, #412]	@ pCur_317->pstDispOutFs, pCur_317->pstDispOutFs
	cmp	r2, #0	@ pCur_317->pstDispOutFs,
	beq	.L291	@,
	ldr	r2, [sp, #32]	@ pBwd, %sfp
	mov	r0, #13	@,
	ldr	r1, .L412+24	@,
	ldr	r2, [r2, #408]	@ D.34298, pBwd_325->pstDecodeFs
	cmp	r2, #0	@ D.34298,
	ldrne	lr, [r2, #12]	@ D.34281, _332->PhyAddr
	ldreq	lr, [r3, #12]	@ D.34281, _329->PhyAddr
	ldr	r3, [sp, #40]	@ pFwd, %sfp
	str	lr, [r8, #52]	@ D.34281, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].BwdRefPhyAddr
	ldr	r3, [r3, #408]	@ D.34298, pFwd_321->pstDecodeFs
	cmp	r3, #0	@ D.34298,
	ldreq	r3, [fp, #408]	@ pCur_317->pstDecodeFs, pCur_317->pstDecodeFs
	ldr	ip, [r3, #12]	@ D.34281,
	str	ip, [r8, #56]	@ D.34281, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].FwdRefPhyAddr
	ldr	r3, [fp, #408]	@ pCur_317->pstDecodeFs, pCur_317->pstDecodeFs
	ldr	r2, [r3, #12]	@ D.34282, _345->PhyAddr
	str	r2, [r8, #60]	@ D.34282, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].CurPicPhyAddr
	ldr	r3, [fp, #420]	@ D.34282, pCur_317->PmvAddr
	str	r3, [r8, #80]	@ D.34282, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].CurrPmvPhyAddr
	mov	r10, r3	@ D.34282, D.34282
	ldr	r3, [sp, #32]	@ pBwd, %sfp
	ldr	r9, [r3, #420]	@ D.34282, pBwd_325->PmvAddr
	str	r9, [r8, #84]	@ D.34282, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].ColPmvPhyAddr
	ldr	r3, [fp, #412]	@ pCur_317->pstDispOutFs, pCur_317->pstDispOutFs
	ldr	r3, [r3, #12]	@ D.34282, _355->PhyAddr
	str	r10, [sp, #8]	@ D.34282,
	str	r9, [sp, #12]	@ D.34282,
	str	r3, [r8, #64]	@ D.34282, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].DispFramePhyAddr
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	ldr	r3, [fp, #412]	@ pCur_317->pstDispOutFs, pCur_317->pstDispOutFs
	ldr	r3, [r3, #20]	@ _360->Stride, _360->Stride
	str	r3, [r8, #68]	@ _360->Stride, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].DDRStride
	ldr	r3, [fp, #412]	@ pCur_317->pstDispOutFs, pCur_317->pstDispOutFs
	ldr	r3, [r3, #20]	@ _364->Stride, _364->Stride
	str	r3, [r4, #2012]	@ _364->Stride, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].ddr_stride
	ldr	r3, [fp, #412]	@ pCur_317->pstDispOutFs, pCur_317->pstDispOutFs
	ldr	r3, [r3, #32]	@ _368->ChromOffset, _368->ChromOffset
	str	r3, [r8, #72]	@ _368->ChromOffset, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].uv_offset
	ldr	r3, [r4, #704]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	cmp	r3, #2	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType,
	beq	.L403	@,
.L297:
	ldr	r3, [r4, #732]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR
	mov	r0, r5	@, pBs
	str	r3, [fp, #428]	@ D.34282, pCur_317->TR
	ldr	r3, [r4, #704]	@ D.34288, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	ldr	r2, [r4, #744]	@ QP, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PQUANT
	cmp	r3, #2	@ D.34288,
	strb	r3, [r8, #9]	@ D.34288, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PicCodingType
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	str	r2, [sp, #32]	@ QP, %sfp
	str	r3, [r8, #12]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PicWidthInMb
	ldr	r3, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	str	r3, [r8, #16]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PicHeightInMb
	ldr	r3, [r4, #1964]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio0, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio0
	str	r3, [r8, #20]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio0, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].Ratio0
	ldr	r3, [r4, #1968]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio1, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio1
	str	r2, [r8, #28]	@ QP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PQUANT
	str	r3, [r8, #24]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio1, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].Ratio1
	ldr	r3, [r4, #868]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicQP, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicQP
	str	r3, [r8, #32]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicQP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PrevPicQP
	ldr	r3, [r4, #872]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicMb0QP
	str	r3, [r8, #36]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PrevPicMb0QP
	strne	r2, [r4, #868]	@ QP, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PrevPicQP
	bl	BsPos	@
	ldr	r1, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	cmp	r1, #1	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	ldreq	fp, [r4, #880]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	ldrne	fp, [r4, #880]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	mov	r3, r0, asr #31	@ tmp1020, D.34283,
	mov	r2, r3, lsr #29	@ tmp1021, tmp1020,
	add	r3, r0, r2	@ tmp1022, D.34283, tmp1021
	moveq	r0, r5	@, pBs
	and	r3, r3, #7	@ tmp1023, tmp1022,
	movne	r0, r5	@, pBs
	rsb	r3, r2, r3	@ D.34283, tmp1021, tmp1023
	ldreq	r2, [sp, #24]	@ PrevHeaderBytes, %sfp
	str	r3, [r4, #844]	@ D.34283, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	ldreq	r3, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	ldrne	r3, [r4, #884]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	rsbeq	r3, r2, r3	@ D.34283, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	fp, fp, r3	@ D.34283, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	bl	BsPos	@
	ldr	r3, [r4, #1908]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	ldr	r2, [sp, #28]	@ D.34287, %sfp
	mov	fp, fp, asl #3	@ D.34283, D.34283,
	add	r10, r2, r3	@ D.34282, D.34287, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	rsb	r0, r0, fp	@ D.34283,, D.34283
	str	r0, [r4, #848]	@ D.34283, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #748]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].OSVQUANT
	ldr	ip, [r4, #740]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Deblocking_Filter_Passthrough
	mov	r1, #1	@ tmp1102,
	ldr	lr, [sp, #32]	@ QP, %sfp
	str	r2, [r4, #828]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].osvquant
	str	ip, [r4, #832]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].dblk_filter_passthrough
	str	lr, [r4, #824]	@ QP, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].SliceQP
	add	r3, r0, #7	@ tmp1066, D.34283,
	cmp	r0, #0	@ D.34283,
	movlt	r0, r3	@ D.34283, tmp1066
	mov	r3, #0	@ tmp1072,
	add	r0, r10, r0, asr #3	@ D.34282, D.34282, D.34283,
	str	r3, [r4, #856]	@ tmp1072, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_1
	str	r0, [r4, #852]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_0
	str	r3, [r4, #860]	@ tmp1072, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_1
	str	r3, [r4, #864]	@ tmp1072, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_1
	str	r3, [r4, #836]	@ tmp1072, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].first_mb_in_slice
	str	r0, [r8, #88]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamPhyAddr
	ldr	r0, [r4, #844]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	str	r0, [r8, #96]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamBitOffset
	ldr	r0, [r4, #848]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	str	ip, [r8, #112]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].dblk_filter_passthrough
	str	r3, [r8, #92]	@ tmp1072, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamPhyAddr
	str	r0, [r8, #104]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamLength
	str	r3, [r8, #100]	@ tmp1072, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamBitOffset
	str	r3, [r8, #108]	@ tmp1072, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamLength
	str	r2, [r8, #116]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].osvquant
	str	r3, [r8, #124]	@ tmp1072, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].first_mb_in_slice
	str	lr, [r8, #120]	@ QP, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].sliceqp
	str	r1, [r8, #40]	@ tmp1102, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].TotalSliceNum
	ldr	r2, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	cmp	r2, r1	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	bls	.L322	@,
	ldr	fp, [r4, #884]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	movw	r0, #65535	@ tmp1114,
	ldr	r2, [sp, #24]	@ PrevHeaderBytes, %sfp
	movt	r0, 47	@ tmp1114,
	add	fp, r2, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	cmp	fp, r0	@ PrevOffsetBytes, tmp1114
	bgt	.L388	@,
	cmp	fp, #0	@ PrevOffsetBytes,
	ble	.L388	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.34283, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34283,
	ble	.L388	@,
	add	ip, r8, #37632	@ ivtmp.159, pCtx,
	mov	r10, r1	@ i, tmp1102
	add	r1, ip, #116	@ ivtmp.159, ivtmp.159,
	str	r6, [sp, #48]	@ D.34279, %sfp
	str	r3, [sp, #44]	@ tmp1072, %sfp
	str	r0, [sp, #40]	@ tmp1114, %sfp
	mov	r9, r1	@ ivtmp.159, ivtmp.159
	str	r10, [sp, #28]	@ i, %sfp
	ldr	r6, [sp, #24]	@ PrevHeaderBytes, %sfp
	b	.L313	@
.L314:
	ldr	r3, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	add	r10, r10, #1	@ i, i,
	cmp	r3, r10	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, i
	bls	.L404	@,
	ldr	fp, [r9, #4]!	@ MEM[base: _121, offset: 0B], MEM[base: _121, offset: 0B]
	ldr	r3, [sp, #40]	@ tmp1321, %sfp
	add	fp, r6, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[base: _121, offset: 0B]
	cmp	fp, r3	@ PrevOffsetBytes, tmp1321
	bgt	.L388	@,
	cmp	fp, #0	@ PrevOffsetBytes,
	ble	.L388	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.34283, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34283,
	ble	.L388	@,
.L313:
	ldr	r1, [r7, #3168]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, fp	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, PrevOffsetBytes
	bl	BsInit	@
	ldr	r3, [sp, #36]	@ pPictureHeader, %sfp
	add	r2, sp, #56	@ tmp1396,,
	mov	r1, #0	@,
	mov	r0, r5	@, pBs
	str	r3, [sp, #4]	@ pPictureHeader,
	add	r3, sp, #64	@ tmp1394,,
	str	r3, [sp]	@ tmp1394,
	add	r3, sp, #60	@ tmp1395,,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L314	@,
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	ldr	r2, [sp, #56]	@ mbn, iSliceMBA
	cmp	r3, #0	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb,
	str	r2, [sp, #24]	@ mbn, %sfp
	beq	.L405	@,
	ldr	r3, [sp, #64]	@ D.34283, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r2, [sp, #32]	@ QP, %sfp
	cmp	r3, #0	@ D.34283,
	movge	r2, r3	@ QP, D.34283
	str	r2, [sp, #32]	@ QP, %sfp
	bl	BsPos	@
	ldr	r2, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	sub	lr, r2, #1	@ D.34282, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	cmp	lr, r10	@ D.34282, i
	mov	r3, r0, asr #31	@ tmp1158, D.34283,
	mov	r1, r3, lsr #29	@ tmp1159, tmp1158,
	add	r3, r0, r1	@ tmp1160, D.34283, tmp1159
	and	r3, r3, #7	@ tmp1161, tmp1160,
	rsb	r3, r1, r3	@ D.34283, tmp1159, tmp1161
	str	r3, [r4, #844]	@ D.34283, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	beq	.L406	@,
	cmp	r10, #254	@ i,
	bhi	.L407	@,
	ldr	r3, [r9, #4]	@ MEM[base: _108, offset: 4B], MEM[base: _108, offset: 4B]
	mov	r0, r5	@, pBs
	ldr	r2, [r9]	@ MEM[base: _108, offset: 0B], MEM[base: _108, offset: 0B]
.L386:
	rsb	r3, r2, r3	@ D.34283, MEM[base: _108, offset: 0B], MEM[base: _108, offset: 4B]
	mov	r3, r3, asl #3	@ D.34283, D.34283,
	str	r3, [sp, #52]	@ D.34283, %sfp
	bl	BsPos	@
	ldr	r3, [sp, #52]	@ D.34283, %sfp
	rsb	r0, r0, r3	@ D.34283,, D.34283
	ldr	r3, [r4, #1908]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	str	r0, [r4, #848]	@ D.34283, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	mov	r0, r5	@, pBs
	add	fp, fp, r3	@ D.34282, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	bl	BsPos	@
	ldr	r3, [sp, #28]	@ HoldSliceNum, %sfp
	mov	r1, #44	@ tmp1400,
	ldr	lr, [r4, #740]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Deblocking_Filter_Passthrough
	ldr	ip, [sp, #44]	@ tmp1319, %sfp
	mla	r3, r1, r3, r8	@ tmp1226, tmp1400, HoldSliceNum, pCtx
	ldr	r1, [r4, #748]	@ D.34282, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].OSVQUANT
	str	ip, [r4, #856]	@ tmp1319, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_1
	str	ip, [r4, #860]	@ tmp1319, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_1
	str	ip, [r4, #864]	@ tmp1319, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_1
	str	r1, [r4, #828]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].osvquant
	str	lr, [r4, #832]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].dblk_filter_passthrough
	add	r2, r0, #7	@ tmp1199, D.34283,
	cmp	r0, #0	@ D.34283,
	movlt	r0, r2	@ D.34283, tmp1199
	ldr	r2, [sp, #28]	@ HoldSliceNum, %sfp
	add	fp, fp, r0, asr #3	@ D.34282, D.34282, D.34283,
	ldr	r0, [sp, #32]	@ QP, %sfp
	str	fp, [r4, #852]	@ D.34282, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_0
	add	r2, r2, #1	@ D.34283, HoldSliceNum,
	cmp	r2, #131	@ HoldSliceNum,
	str	r2, [sp, #28]	@ D.34283, %sfp
	str	r0, [r4, #824]	@ QP, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].SliceQP
	ldr	r0, [sp, #24]	@ mbn, %sfp
	str	r0, [r4, #836]	@ mbn, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].first_mb_in_slice
	str	fp, [r3, #88]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamPhyAddr
	ldr	r0, [r4, #844]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	str	r0, [r3, #96]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamBitOffset
	ldr	r0, [r4, #848]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	str	ip, [r3, #92]	@ tmp1319, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamPhyAddr
	str	ip, [r3, #100]	@ tmp1319, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamBitOffset
	str	r0, [r3, #104]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamLength
	ldr	r0, [sp, #32]	@ QP, %sfp
	str	ip, [r3, #108]	@ tmp1319, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].StreamLength
	str	lr, [r3, #112]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].dblk_filter_passthrough
	str	r0, [r3, #120]	@ QP, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].sliceqp
	ldr	r0, [sp, #24]	@ mbn, %sfp
	str	r1, [r3, #116]	@ D.34282, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].osvquant
	str	r0, [r3, #124]	@ mbn, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_510].first_mb_in_slice
	str	r2, [r8, #40]	@ D.34283, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].TotalSliceNum
	bls	.L314	@,
	mov	r0, r8	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L388	@,
	ldr	r3, [sp, #20]	@ __p, %sfp
	str	r3, [r8, #4]	@ __p, pCtx_38(D)->pRv9DecParam
	b	.L314	@
.L394:
	ldr	r1, .L412+28	@,
	mov	r0, #1	@,
	mov	r6, fp	@ D.34279, tmp617
	bl	dprint_vfmw	@
	b	.L375	@
.L275:
	ldr	r1, .L412+32	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	b	.L387	@
.L396:
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	r0, r8	@, pCtx
	mov	r3, #0	@ tmp644,
	str	r3, [sp, #56]	@ tmp644, NewNum
	str	r3, [sp, #60]	@ tmp644, ReadNum
	str	r3, [sp, #64]	@ tmp644, RefNum
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L387	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	mov	r0, r8	@, pCtx
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L387	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	add	r3, sp, #56	@,,
	add	r2, sp, #60	@,,
	add	r1, sp, #64	@,,
	cmp	r0, #0	@ pImage
	strne	fp, [r0, #376]	@ _149->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_163->u32IsLastFrame
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	ldr	r1, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _169->s32DSDThrWidth, _169->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _169->s32DSDThrWidth, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb,
	bcc	.L267	@,
	ldr	r1, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _169->s32DSDThrHeight, _169->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _169->s32DSDThrHeight, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb,
	bcc	.L267	@,
	ldr	r2, [sp, #60]	@ ReadNum, ReadNum
	ldr	r1, [sp, #56]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.34283, ReadNum, NewNum
	cmp	r2, #0	@ D.34283,
	mov	r2, #1	@ tmp682,
	ble	.L382	@,
.L383:
	str	r2, [r3, #728]	@ tmp688, _169->s32DSDWaitFlag
	b	.L387	@
.L397:
	ldrb	r3, [r7, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated,
	bne	.L279	@,
.L281:
	mov	r0, fp	@, D.34295
	bl	ResetVoQueue	@
	b	.L279	@
.L395:
	ldr	r2, [sp, #92]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r3, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	bne	.L262	@,
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _147->s32DSDWaitFlag, _147->s32DSDWaitFlag
	cmp	r3, #1	@ _147->s32DSDWaitFlag,
	bne	.L263	@,
	b	.L262	@
.L399:
	ldr	r2, [r4, #1940]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FrmCnt
	mov	r6, r3	@ D.34279, D.34282
	ldr	r1, .L412+36	@,
	bl	dprint_vfmw	@
	b	.L375	@
.L398:
	ldr	r1, .L412+40	@,
	mov	r0, #1	@,
	mov	r6, r3	@ D.34279, D.34282
	bl	dprint_vfmw	@
	b	.L375	@
.L400:
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	bhi	.L289	@,
.L388:
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, #0	@ D.34279,
	bl	FSP_ClearLogicFs	@
	b	.L375	@
.L267:
	ldr	r2, [sp, #56]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L408	@,
.L271:
	mov	r2, #1	@ tmp688,
	b	.L383	@
.L406:
	add	r2, r2, #6592	@ tmp1177, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	ldr	r3, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	add	r2, r2, #3	@ tmp1177, tmp1177,
	mov	r0, r5	@, pBs
	rsb	r3, r6, r3	@ D.34283, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	add	r2, r7, r2, lsl #2	@ tmp1178, tmp1309, tmp1177,
	ldr	r2, [r2, #3168]	@ tmp1181, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	b	.L386	@
.L402:
	movw	r3, #2044	@,
	ldr	r2, .L412+44	@,
	ldr	r1, .L412+48	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r6, #0	@ D.34279,
	b	.L375	@
.L401:
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	movne	r3, #2	@ D.34280,
	bne	.L287	@,
	b	.L387	@
.L404:
	ldr	r6, [sp, #48]	@ D.34279, %sfp
.L322:
	ldr	r5, [r8, #4]	@ D.34300, pCtx_38(D)->pRv9DecParam
	mov	r10, #1	@ tmp1108,
	str	r10, [r8, #44]	@ tmp1108, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].FstSlcGrp
	cmp	r5, #0	@ D.34300,
	beq	.L409	@,
	ldr	r3, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	ldr	r2, [r3, #708]	@ D.34283, _648->stDisParams.s32Mode
	cmp	r2, #1	@ D.34283,
	beq	.L326	@,
.L324:
	cmp	r2, #2	@ D.34283,
	beq	.L410	@,
.L325:
	ldr	r3, [r3, #512]	@ D.34283, _671->s32Compress_en
	str	r3, [r7, #3160]	@ D.34283, pCtx_38(D)->Rv9DecParam.Compress_en
	b	.L375	@
.L403:
	ldr	r3, [sp, #40]	@ pFwd, %sfp
	ldr	r1, [sp, #32]	@ pBwd, %sfp
	ldr	r2, [r4, #732]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR
	ldr	r3, [r3, #428]	@ D.34283, pFwd_321->TR
	ldr	r1, [r1, #428]	@ pBwd_325->TR, pBwd_325->TR
	subs	r2, r2, r3	@ trb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR, D.34283
	rsb	r3, r3, r1	@ trd, D.34283, pBwd_325->TR
	ldrmi	r1, [r4, #728]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	addmi	r2, r2, r1	@ trb, trb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	cmp	r3, #0	@ trd,
	ldrlt	r1, [r4, #728]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	addlt	r3, r3, r1	@ trd, trd, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	ble	.L328	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r3, [sp, #40]	@ trd, %sfp
	str	r2, [sp, #32]	@ trb, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #40]	@ trd, %sfp
	ldr	r2, [sp, #32]	@ trb, %sfp
	mov	r1, r3	@, trd
	str	r3, [sp, #32]	@ trd, %sfp
	str	r2, [sp, #40]	@ trb, %sfp
	str	r0, [sp, #44]	@ Ratio1, %sfp
	rsb	r0, r2, r3	@ D.34283, trb, trd
	mov	r0, r0, asl #14	@, D.34283,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #32]	@ trd, %sfp
	ldr	r2, [sp, #40]	@ trb, %sfp
	ldr	ip, [sp, #44]	@ Ratio1, %sfp
.L301:
	str	r2, [r4, #1956]	@ trb, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].trb
	str	r3, [r4, #1960]	@ trd, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].trd
	str	ip, [r4, #1964]	@ Ratio1, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio0
	str	r0, [r4, #1968]	@ Ratio1, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio1
	b	.L297	@
.L291:
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, #0	@ D.34279,
	bl	FSP_ClearLogicFs	@
	ldr	r1, .L412+52	@,
	mov	r0, r6	@, D.34279
	bl	dprint_vfmw	@
	b	.L375	@
.L283:
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r3	@ D.34279, pImg
	bl	FSP_ClearLogicFs	@
	b	.L375	@
.L410:
	ldr	r2, [r3, #712]	@ _670->stDisParams.s32DisNums, _670->stDisParams.s32DisNums
	cmp	r2, #0	@ _670->stDisParams.s32DisNums,
	ble	.L325	@,
	ldr	r2, [r8, #4]	@ D.34300, pCtx_38(D)->pRv9DecParam
	cmp	r2, #0	@ D.34300,
	beq	.L325	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ _547->PicCodingType, _547->PicCodingType
	cmp	r2, #2	@ _547->PicCodingType,
	bne	.L325	@,
	mov	r2, #0	@ tmp1299,
	str	r2, [r8, #4]	@ tmp1299, pCtx_38(D)->pRv9DecParam
	ldr	r1, [r4, #2048]	@, pCtx_38(D)->CodecInfo.CurFsID
	mov	r6, r2	@ D.34279,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r2, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	mov	r1, r8	@, pCtx
	mov	r0, #9	@,
	ldr	r3, [r2, #712]	@ _553->stDisParams.s32DisNums, _553->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.34283, _553->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.34283, _553->stDisParams.s32DisNums
	bl	ReleasePacket	@
	b	.L375	@
.L328:
	mov	r0, #0	@ Ratio1,
	mov	ip, r0	@ Ratio1, Ratio1
	b	.L301	@
.L409:
	mov	r0, r8	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L411	@,
	ldr	r2, [sp, #20]	@ __p, %sfp
	ldr	r3, [r8]	@ D.34292, pCtx_38(D)->pstExtraData
	str	r2, [r8, #4]	@ __p, pCtx_38(D)->pRv9DecParam
	ldr	r2, [r3, #708]	@ D.34283, _537->stDisParams.s32Mode
	cmp	r2, #1	@ D.34283,
	bne	.L324	@,
	ldr	r2, [sp, #20]	@ __p, %sfp
	cmp	r2, #0	@ __p,
	beq	.L325	@,
	mov	r5, r2	@ D.34300, __p
.L326:
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ _673->PicCodingType, _673->PicCodingType
	cmp	r2, #2	@ _673->PicCodingType,
	bne	.L325	@,
	mov	r2, #0	@ tmp1292,
	str	r2, [r8, #4]	@ tmp1292, pCtx_38(D)->pRv9DecParam
	ldr	r1, [r4, #2048]	@, pCtx_38(D)->CodecInfo.CurFsID
	mov	r6, r2	@ D.34279,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r8	@, pCtx
	mov	r0, #9	@,
	bl	ReleasePacket	@
	b	.L375	@
.L407:
	movw	r2, #2200	@,
	ldr	r1, .L412+56	@,
	mov	r0, #22	@,
	mov	r6, #0	@ D.34279,
	bl	dprint_vfmw	@
	b	.L375	@
.L405:
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r3	@ D.34279, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	bl	FSP_ClearLogicFs	@
	b	.L375	@
.L408:
	ldr	r2, [sp, #60]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L271	@,
	mov	r2, #0	@ tmp691,
.L382:
	str	r2, [r4, #2444]	@ tmp691, pCtx_38(D)->DSDNeedClearQue
	mov	r2, #0	@ tmp692,
	str	r2, [r3, #728]	@ tmp692, _169->s32DSDWaitFlag
	b	.L264	@
.L411:
	mov	r2, r10	@, tmp1108
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r5	@ D.34279, D.34300
	bl	FSP_ClearLogicFs	@
	b	.L375	@
.L413:
	.align	2
.L412:
	.word	.LC11
	.word	g_event_report
	.word	.LC14
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC22
	.word	.LC12
	.word	.LC13
	.word	.LC16
	.word	.LC15
	.word	.LANCHOR0+360
	.word	.LC20
	.word	.LC21
	.word	.LC23
	.fnend
	.size	REAL9DEC_Decode, .-REAL9DEC_Decode
	.align	2
	.global	REAL9DEC_RecycleImage
	.type	REAL9DEC_RecycleImage, %function
REAL9DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #36864	@ tmp117, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #2440]	@, pCtx_1(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #2440]	@, pCtx_1(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL9DEC_RecycleImage, .-REAL9DEC_RecycleImage
	.align	2
	.global	REAL9DEC_GetRemainImg
	.type	REAL9DEC_GetRemainImg, %function
REAL9DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r0]	@ pCtx_5(D)->pstExtraData, pCtx_5(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _7->s32DecOrderOutput, _7->s32DecOrderOutput
	cmp	r3, #1	@ _7->s32DecOrderOutput,
	addeq	r5, r0, #38912	@ D.34328, pCtx,
	addeq	r5, r5, #40	@ D.34328, D.34328,
	beq	.L421	@,
	add	r6, r0, #36864	@ tmp137, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L432	@,
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L430	@,
.L432:
	add	r5, r4, #38912	@ D.34328, pCtx,
	add	r5, r5, #40	@ D.34328, D.34328,
.L421:
	mov	r0, r5	@, D.34328
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L430:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ D.34328, pCtx,
	bl	Real9_SetImgFormat	@
	add	r5, r5, #40	@ D.34328, D.34328,
	mov	r3, #1	@ tmp150,
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	mov	r2, r3	@, tmp150
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2440]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	str	r7, [sp]	@ pImg,
	mov	r3, r5	@, D.34328
	mov	r1, #9	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L418	@,
	mov	r2, #0	@,
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L421	@
.L418:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L421	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L421	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L421	@,
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	REAL9DEC_GetRemainImg, .-REAL9DEC_GetRemainImg
	.align	2
	.global	REAL9DEC_VDMPostProc
	.type	REAL9DEC_VDMPostProc, %function
REAL9DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L463	@,
	add	r4, r5, #36864	@ tmp237, pCtx,
	mov	r8, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r0, #22	@,
	mov	r2, r6	@, ErrRatio
	add	r7, r5, #8192	@ tmp238, pCtx,
	bl	dprint_vfmw	@
	mov	r1, r5	@, pCtx
	mov	r0, #9	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L434	@,
	ldr	r3, [r4, #704]	@ D.34336, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ D.34336,
	andne	r8, r8, #31	@ D.34338, Mb0QpInCurrPic,
	strb	r3, [r7, #3182]	@ D.34336, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].LastDecPicCodingType
	strne	r8, [r4, #872]	@ D.34338, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PrevPicMb0QP
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.34334,
	blt	.L436	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.34334,
.L436:
	str	r6, [r0, #180]	@ D.34334, pCurImg_16->error_level
	mov	r0, #22	@,
	ldr	r1, .L463+4	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pCtx
	bl	Real9_SetImgFormat	@
	ldrb	r3, [r7, #3180]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode,
	beq	.L439	@,
	ldr	r3, [r5]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _33->s32DecOrderOutput, _33->s32DecOrderOutput
	cmp	r3, #1	@ _33->s32DecOrderOutput,
	beq	.L439	@,
	ldr	r3, [r4, #704]	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType,
	beq	.L439	@,
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum,
	ldrhi	r1, [r4, #2040]	@ D.34335, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FwdFsID
	mvnls	r1, #0	@ D.34335,
	cmn	r1, #1	@ D.34335,
	str	r1, [r4, #2052]	@ D.34335, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	beq	.L441	@,
.L462:
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r6, [r4, #2052]	@ D.34335, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	mov	r1, r6	@, D.34335
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_GetRef	@
	mov	r2, r6	@, D.34335
	ldr	r1, .L463+8	@,
	mov	r3, r0	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	add	r3, r3, #40	@,,
	str	r7, [sp]	@ pToQueImg,
	mov	r2, r5	@, pCtx
	mov	r1, #9	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L461	@,
.L441:
	ldr	r3, [r4, #1940]	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
	mov	r0, #1	@ D.34334,
	add	r3, r3, r0	@ D.34338, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt,
	str	r3, [r4, #1940]	@ D.34338, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
.L434:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L439:
	ldr	r1, [r4, #2048]	@ D.34335, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	cmn	r1, #1	@ D.34335,
	str	r1, [r4, #2052]	@ D.34335, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bne	.L462	@,
	b	.L441	@
.L461:
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.34334,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L464:
	.align	2
.L463:
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.fnend
	.size	REAL9DEC_VDMPostProc, .-REAL9DEC_VDMPostProc
	.align	2
	.global	REAL9DEC_GetImageBuffer
	.type	REAL9DEC_GetImageBuffer, %function
REAL9DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #36864	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.34346,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L472	@,
	mov	r0, #0	@ D.34346,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L472:
	add	r1, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.34346,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL9DEC_GetImageBuffer, .-REAL9DEC_GetImageBuffer
	.align	2
	.global	REAL9DEC_Support
	.type	REAL9DEC_Support, %function
REAL9DEC_Support:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp111,
	str	r3, [r0]	@ tmp111, *flag_2(D)
	bx	lr	@
	.fnend
	.size	REAL9DEC_Support, .-REAL9DEC_Support
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	gs_VLCDecodeTable, %object
	.size	gs_VLCDecodeTable, 256
gs_VLCDecodeTable:
	.byte	-128
	.byte	-127
	.byte	112
	.byte	112
	.byte	-126
	.byte	-125
	.byte	113
	.byte	113
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	80
	.byte	-124
	.byte	-123
	.byte	114
	.byte	114
	.byte	-122
	.byte	-121
	.byte	115
	.byte	115
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	81
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	48
	.byte	-120
	.byte	-119
	.byte	116
	.byte	116
	.byte	-118
	.byte	-117
	.byte	117
	.byte	117
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	82
	.byte	-116
	.byte	-115
	.byte	118
	.byte	118
	.byte	-114
	.byte	-113
	.byte	119
	.byte	119
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	83
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.type	MBA_FieldWidth, %object
	.size	MBA_FieldWidth, 24
MBA_FieldWidth:
	.word	6
	.word	7
	.word	9
	.word	11
	.word	13
	.word	14
.LC0:
	.word	160
	.word	176
	.word	240
	.word	320
	.word	352
	.word	640
	.word	704
	.word	0
.LC1:
	.word	120
	.word	132
	.word	144
	.word	240
	.word	288
	.word	480
	.word	0
	.word	0
.LC2:
	.word	180
	.word	360
	.word	576
	.word	0
	.type	__func__.32817, %object
	.size	__func__.32817, 16
__func__.32817:
	.ascii	"REAL9DEC_Decode\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC4:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC5:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC6:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC7:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC8:
	.ascii	"real9 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC9:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC10:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC11:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC12:
	.ascii	"Real9_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC13:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC14:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC15:
	.ascii	"Real9_ArrangeVHBMem err\012\000"
	.space	3
.LC16:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC17:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC18:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC19:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC20:
	.ascii	"CurFsID abnormal!,%s %d (NULL == pCur) || (NULL == "
	.ascii	"pFwd) || (NULL == pBwd)!!\012\000"
	.space	2
.LC21:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC22:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC23:
	.ascii	"line:%d! i > (RV9_MAX_SLC_PARAM_NUM - 2)\012\000"
	.space	2
.LC24:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC25:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC26:
	.ascii	"insert buf %d ref %d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
