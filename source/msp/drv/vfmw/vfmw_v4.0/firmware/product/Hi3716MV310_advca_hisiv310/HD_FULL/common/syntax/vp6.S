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
	.file	"vp6.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vp6)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.o
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
	.global	Vp6_Vfmw_DecodeBool
	.type	Vp6_Vfmw_DecodeBool, %function
Vp6_Vfmw_DecodeBool:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r1	@ pBr, pBr
	ldmib	r1, {r1, r5}	@ pBr,,
	mov	r7, r0	@ pBs, pBs
	ldr	r3, [r6, #12]	@ count, pBr_13(D)->count
	sub	r4, r1, #1	@ D.39048, range,
	mul	r2, r4, r2	@ D.39048, D.39048, probability
	mov	r4, r2, lsr #8	@ D.39048, D.39048,
	add	r4, r4, #1	@ range, D.39048,
	mov	r2, r4, asl #16	@ bigsplit, range,
	cmp	r5, r2	@ value, bigsplit
	rsbcs	r4, r4, r1	@ range, range, range
	rsbcs	r5, r2, r5	@ value, bigsplit, value
	movcs	r8, #1	@ bit,
	movcc	r8, #0	@ bit,
	cmp	r4, #127	@ range,
	bls	.L6	@,
	b	.L10	@
.L5:
	cmp	r4, #127	@ range,
	bhi	.L12	@,
.L6:
	subs	r3, r3, #1	@ count, count,
	mov	r4, r4, asl #1	@ range, range,
	mov	r5, r5, asl #1	@ value, value,
	bne	.L5	@,
	mov	r1, #8	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	cmp	r4, #127	@ range,
	mov	r3, #8	@ count,
	orr	r5, r5, r0	@ value, value,
	bls	.L6	@,
.L12:
	str	r3, [r6, #12]	@ count, pBr_13(D)->count
.L10:
	stmib	r6, {r4, r5}	@ pBr,,
	mov	r0, r8	@, bit
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool, .-Vp6_Vfmw_DecodeBool
	.align	2
	.global	Vp6_Vfmw_DecodeBool128
	.type	Vp6_Vfmw_DecodeBool128, %function
Vp6_Vfmw_DecodeBool128:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pBr, pBr
	ldr	r5, [r1, #4]	@ range, pBr_8(D)->range
	ldr	r2, [r1, #8]	@ value, pBr_8(D)->value
	add	r3, r5, #1	@ D.39052, range,
	ldr	r1, [r1, #12]	@ count, pBr_8(D)->count
	mov	r3, r3, lsr #1	@ split, D.39052,
	mov	r6, r3, asl #16	@ bigsplit, split,
	cmp	r2, r6	@ value, bigsplit
	rsbcs	r3, r3, r5	@ D.39052, split, range
	rsbcs	r2, r6, r2	@ D.39052, bigsplit, value
	movcs	r7, #1	@ bit,
	movcc	r5, r3, asl #1	@ range, split,
	movcs	r5, r3, asl r7	@ range, D.39052,
	movcs	r6, r2, asl r7	@ value, D.39052,
	movcc	r6, r2, asl #1	@ value, value,
	movcc	r7, #0	@ bit,
	subs	r1, r1, #1	@ count, count,
	bne	.L16	@,
	mov	r1, #8	@,
	bl	BsGet	@
	mov	r1, #8	@ count,
	orr	r6, r6, r0	@ value, value,
.L16:
	str	r1, [r4, #12]	@ count, pBr_8(D)->count
	mov	r0, r7	@, bit
	stmib	r4, {r5, r6}	@ pBr,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Vp6_Vfmw_DecodeBool128, .-Vp6_Vfmw_DecodeBool128
	.align	2
	.global	Vp6_Vfmw_BoolRead
	.type	Vp6_Vfmw_BoolRead, %function
Vp6_Vfmw_BoolRead:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r2, #1	@ i, nBits,
	bmi	.L21	@,
	mov	r7, r1	@ pBr, pBr
	mov	r6, r0	@ pBs, pBs
	mov	r5, #0	@ value,
.L20:
	mov	r1, r7	@, pBr
	mov	r0, r6	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r5, r5, r0, asl r4	@ value, value,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L20	@,
.L19:
	mov	r0, r5	@, value
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L21:
	mov	r5, #0	@ value,
	b	.L19	@
	.fnend
	.size	Vp6_Vfmw_BoolRead, .-Vp6_Vfmw_BoolRead
	.align	2
	.global	Vp6_Vfmw_StartDecode
	.type	Vp6_Vfmw_StartDecode, %function
Vp6_Vfmw_StartDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pBr, pBr
	mov	r2, #0	@ tmp114,
	mov	r3, #255	@ tmp115,
	stmia	r1, {r2, r3}	@ pBr,,
	mov	r3, #8	@ tmp116,
	mov	r1, #24	@,
	str	r3, [r4, #12]	@ tmp116, pBr_2(D)->count
	bl	BsGet	@
	str	r0, [r4, #8]	@, pBr_2(D)->value
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Vp6_Vfmw_StartDecode, .-Vp6_Vfmw_StartDecode
	.align	2
	.global	VP6_ArrangeVHBMem
	.type	VP6_ArrangeVHBMem, %function
VP6_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #12288	@ tmp214, pCtx,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r4, #212]	@ D.39071, MEM[(struct VP6_PictureHeader_S *)pCtx_12(D) + 12476B].pic_height_in_mb
	cmp	r3, #2	@ D.39071,
	bls	.L27	@,
	ldr	r2, [r4, #216]	@ D.39071, MEM[(struct VP6_PictureHeader_S *)pCtx_12(D) + 12476B].pic_width_in_mb
	movw	r1, #509	@ tmp166,
	sub	r0, r2, #3	@ D.39071, D.39071,
	cmp	r3, #512	@ D.39071,
	cmpls	r0, r1	@, D.39071, tmp166
	bhi	.L27	@,
	ldr	r1, [r5]	@ D.39072, pCtx_12(D)->pstExtraData
	ldr	r0, [r1, #608]	@ _16->stChanOption.s32ReRangeEn, _16->stChanOption.s32ReRangeEn
	cmp	r0, #0	@ _16->stChanOption.s32ReRangeEn,
	ldr	r0, [r1, #32]	@ _16->eCapLevel, _16->eCapLevel
	bne	.L30	@,
	cmp	r0, #25	@ _16->eCapLevel,
	beq	.L47	@,
.L31:
	mov	r6, #3	@ PmvNum,
	mov	r7, r2, asl #4	@ PicWidth, D.39071,
	mov	r8, r3, asl #4	@ PicHeight, D.39071,
	mov	r9, r6	@ DecFsNum, PmvNum
	mov	r10, #5	@ D.39075,
.L33:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp215,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.39072, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp188,
	ldr	r1, [r3, #20]	@ _52->s32DnrDispOutEnable, _52->s32DnrDispOutEnable
	str	r8, [sp, #36]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _52->eCapLevel, _52->eCapLevel
	str	r7, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	cmp	r3, #24	@ _52->eCapLevel,
	str	r8, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _52->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [sp, #32]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #6]	@ tmp188, FspInstCfg.s32RprEnable
	beq	.L36	@,
	uxtb	r6, r6	@ D.39070, PmvNum
	strb	r9, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #11]	@ D.39075, FspInstCfg.s32ExpectedDispFsNum
.L38:
	add	r1, sp, #4	@ tmp216,,
	ldr	r0, [r4, #712]	@, pCtx_12(D)->ChanID
	strb	r6, [sp, #12]	@ D.39070, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp194,
	strb	r3, [sp, #8]	@ tmp194, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.39073,
	bne	.L27	@,
	ldr	r1, [r5]	@ D.39072, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r4, #712]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _73->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _73->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ tmp208,
	streq	r0, [r4, #12]	@ tmp208, MEM[(struct VP6_CODECINFO *)pCtx_12(D) + 224B].Imgbuf_allocated
	beq	.L42	@,
.L27:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39069,
.L42:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L30:
	cmp	r0, #25	@ _16->eCapLevel,
	bne	.L31	@,
	ldr	r0, [r1, #568]	@ _16->stChanOption.s32MaxWidth, _16->stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.39071, D.39071,
	cmp	r2, r0	@ D.39071, _16->stChanOption.s32MaxWidth
	bhi	.L27	@,
	ldr	r0, [r1, #572]	@ _16->stChanOption.s32MaxHeight, _16->stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ D.39071, D.39071,
	cmp	r3, r0	@ D.39071, _16->stChanOption.s32MaxHeight
	bhi	.L27	@,
	ldr	r0, [r1, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	mov	r7, r2	@ PicWidth, D.39071
	mov	r8, r3	@ PicHeight, D.39071
	ldr	r9, [r1, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _16->stChanOption.s32SupportBFrame,
	beq	.L40	@,
.L46:
	add	r6, r9, #1	@ PmvNum, DecFsNum,
	cmp	r6, #17	@ PmvNum,
	movge	r6, #17	@ PmvNum,
.L35:
	ldrb	r10, [r1, #616]	@ zero_extendqisi2	@ D.39075, _16->stChanOption.s32DisplayFrameNum
	b	.L33	@
.L36:
	strb	r2, [sp, #9]	@ tmp188, FspInstCfg.s32ExpectedDecFsNum
	mov	r6, #1	@ D.39070,
	strb	r10, [sp, #11]	@ D.39075, FspInstCfg.s32ExpectedDispFsNum
	b	.L38	@
.L47:
	ldr	r7, [r1, #568]	@ PicWidth, _16->stChanOption.s32MaxWidth
	cmp	r7, r2, asl #4	@ PicWidth, D.39071,
	bcc	.L27	@,
	ldr	r8, [r1, #572]	@ PicHeight, _16->stChanOption.s32MaxHeight
	cmp	r8, r3, asl #4	@ PicHeight, D.39071,
	bcc	.L27	@,
	ldr	r0, [r4, #12]	@ D.39069, MEM[(struct VP6_CODECINFO *)pCtx_12(D) + 224B].Imgbuf_allocated
	cmp	r0, #1	@ D.39069,
	beq	.L42	@,
	ldr	r3, [r1, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _16->stChanOption.s32SupportBFrame,
	bne	.L46	@,
.L40:
	mov	r6, #1	@ PmvNum,
	b	.L35	@
	.fnend
	.size	VP6_ArrangeVHBMem, .-VP6_ArrangeVHBMem
	.align	2
	.global	VP6_GetImageBuffer
	.type	VP6_GetImageBuffer, %function
VP6_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #12288	@ tmp131, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.39085,
	str	r0, [r5, #24]	@ D.39085, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].CurFsID
	blt	.L56	@,
	mov	r1, r0	@, D.39085
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L57	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #408]	@ pLf_13->pstDecodeFs, pLf_13->pstDecodeFs
	cmp	r0, #0	@ pLf_13->pstDecodeFs,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r4, #412]	@ D.39086, pLf_13->pstDispOutFs
	cmp	r3, #0	@ D.39086,
	beq	.L53	@,
	ldr	r0, [r4, #416]	@ pLf_13->pstTfOutFs, pLf_13->pstTfOutFs
	cmp	r0, #0	@ pLf_13->pstTfOutFs,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r3, #20]	@ _17->Stride, _17->Stride
	str	r3, [r5, #40]	@ _17->Stride, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].DDR_Stride
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.39084,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L56:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	mov	r4, #0	@ tmp149,
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r4, [r5, #28]	@ tmp149, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	str	r4, [r5, #32]	@ tmp149, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #12608	@, pCtx,
	str	r4, [r5, #8]	@ tmp149, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].RefNum
	add	r1, r1, #40	@,,
	str	r0, [r5, #32]	@ D.39085, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	str	r0, [r5, #28]	@ D.39085, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r4	@ D.39084, tmp149
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L57:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.39084, pLf
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L53:
	mov	r0, r3	@ D.39084, D.39086
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6_GetImageBuffer, .-VP6_GetImageBuffer
	.align	2
	.global	VP6DEC_GetImageBuffer
	.type	VP6DEC_GetImageBuffer, %function
VP6DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #712]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39091,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #712]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L65	@,
	mov	r0, #0	@ D.39091,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L65:
	add	r1, r5, #12608	@, pCtx,
	ldr	r0, [r4, #712]	@, pCtx_4(D)->ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.39091,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6DEC_GetImageBuffer, .-VP6DEC_GetImageBuffer
	.align	2
	.global	VP6_BuildScanOrder
	.type	VP6_BuildScanOrder, %function
VP6_BuildScanOrder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r5, r0, #1088	@ ivtmp.117, pVp6CodecInfo,
	mov	r4, #1	@ ScanOrderIndex,
	mov	lr, #0	@ tmp208,
	strb	lr, [r0, #960]	@ tmp208, pVp6CodecInfo_16(D)->ModifiedScanOrder
.L67:
	mov	r2, r5	@ ivtmp.117, ivtmp.117
	mov	r3, #1	@ j,
.L69:
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2	@ D.39143, MEM[base: _12, offset: 0B]
	cmp	ip, lr	@ D.39143, i
	addeq	ip, r0, r4	@ tmp211, pVp6CodecInfo, ScanOrderIndex
	addeq	r4, r4, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r3, [ip, #960]	@ j, pVp6CodecInfo_16(D)->ModifiedScanOrder
	add	r3, r3, #1	@ j, j,
	cmp	r3, #64	@ j,
	bne	.L69	@,
	add	lr, lr, #1	@ i, i,
	cmp	lr, #16	@ i,
	bne	.L67	@,
	add	r5, r0, #1020	@ ivtmp.103, pVp6CodecInfo,
	add	r4, r0, #956	@ ivtmp.90, pVp6CodecInfo,
	add	r5, r5, #3	@ ivtmp.103, ivtmp.103,
	add	r4, r4, #3	@ ivtmp.90, ivtmp.90,
	mov	lr, #0	@ i,
.L70:
	mov	r3, #0	@ MaxOffset,
	mov	ip, r4	@ ivtmp.90, ivtmp.90
	mov	r2, r3	@ j, MaxOffset
.L71:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2	@ MaxOffset, MEM[base: _9, offset: 0B]
	add	r2, r2, #1	@ j, j,
	cmp	r3, r0	@ MaxOffset, MaxOffset
	movcc	r3, r0	@ MaxOffset, MaxOffset
	cmp	r2, lr	@ j, i
	bls	.L71	@,
	uxtb	r3, r3	@ D.39142, MaxOffset
	strb	r3, [r5, #1]!	@ D.39142, MEM[base: _51, offset: 0B]
	ldr	r2, [r1, #12]	@ pbi_34(D)->Vp3VersionNo, pbi_34(D)->Vp3VersionNo
	add	lr, lr, #1	@ i, i,
	cmp	r2, #6	@ pbi_34(D)->Vp3VersionNo,
	addhi	r3, r3, #1	@ tmp216, D.39142,
	strhib	r3, [r5]	@ tmp216, MEM[base: _51, offset: 0B]
	cmp	lr, #64	@ i,
	bne	.L70	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	VP6_BuildScanOrder, .-VP6_BuildScanOrder
	.global	__aeabi_idiv
	.global	__aeabi_uidiv
	.align	2
	.global	VP6_BuildModeTree
	.type	VP6_BuildModeTree, %function
VP6_BuildModeTree:
	.fnstart
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0	@ i,
	.pad #100
	sub	sp, sp, #100	@,,
	mov	r10, #100	@ tmp379,
	mov	r8, fp	@ i, i
	add	r2, r0, #404	@ ivtmp.165, ivtmp.174,
	add	r3, r0, #464	@ D.39194, ivtmp.174,
	str	r0, [sp, #40]	@ ivtmp.174, %sfp
	str	r0, [sp, #44]	@ ivtmp.174, %sfp
	str	r2, [sp, #52]	@ ivtmp.165, %sfp
	str	r3, [sp, #48]	@ D.39194, %sfp
.L79:
	ldr	r9, [sp, #52]	@ ivtmp.165, %sfp
	ldr	r3, [sp, #40]	@ ivtmp.174, %sfp
	ldr	fp, [sp, #44]	@ ivtmp.156, %sfp
	mov	r7, r9	@ ivtmp.165, ivtmp.165
	str	r3, [sp, #8]	@ ivtmp.174, %sfp
	str	r3, [sp, #4]	@ ivtmp.174, %sfp
.L85:
	mov	r4, #0	@ total,
	add	r1, sp, #56	@ ivtmp.138,,
	mov	r2, r4	@ j, total
	mov	r0, r7	@ ivtmp.140, ivtmp.165
.L82:
	cmp	r8, r2	@ i, j
	add	r2, r2, #1	@ j, j,
	addeq	ip, sp, #56	@ tmp445,,
	add	r1, r1, #4	@ ivtmp.138, ivtmp.138,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.39190, MEM[base: _247, offset: 0B]
	moveq	r3, #0	@ tmp401,
	streq	r3, [ip, r8, asl #2]	@ tmp401, MEM[symbol: Counts, index: _111, step: 4, offset: 0B]
	add	r0, r0, #1	@ ivtmp.140, ivtmp.140,
	ldreq	r3, [r1, #-4]	@ D.39192, MEM[base: _248, offset: 0B]
	smulbbne	r3, r3, r10	@ D.39192, D.39190, tmp379
	add	r4, r4, r3	@ total, total, D.39192
	strne	r3, [r1, #-4]	@ D.39192, MEM[base: _246, offset: 0B]
	cmp	r2, #10	@ j,
	bne	.L82	@,
	ldr	r2, [sp, #4]	@ ivtmp.149, %sfp
	add	r7, r7, #20	@ ivtmp.165, ivtmp.165,
	add	fp, fp, #90	@ ivtmp.156, ivtmp.156,
	add	r2, r2, #20	@ ivtmp.149, ivtmp.149,
	ldrb	r0, [r2, #394]	@ zero_extendqisi2	@ D.39190, MEM[base: _227, offset: 414B]
	ldrb	r3, [r2, #384]	@ zero_extendqisi2	@ D.39191, MEM[base: _227, offset: 404B]
	add	r1, r0, #1	@ D.39191, D.39190,
	str	r2, [sp, #4]	@ ivtmp.149, %sfp
	add	r1, r1, r3	@, D.39191, D.39191
	rsb	r0, r0, r0, lsl #8	@, D.39190, D.39190,
	bl	__aeabi_idiv	@
	add	r1, r4, #1	@, total,
	ldr	r2, [sp, #56]	@ D.39192, Counts
	ldr	r3, [sp, #68]	@ D.39192, Counts
	ldr	ip, [sp, #72]	@ Counts, Counts
	ldr	r6, [sp, #64]	@ Counts, Counts
	str	r2, [sp, #36]	@ D.39192, %sfp
	add	r6, r2, r6	@ D.39192, D.39192, Counts
	str	r3, [sp, #32]	@ D.39192, %sfp
	add	r2, r3, ip	@ D.39192, D.39192, Counts
	ldr	r3, [sp, #8]	@ ivtmp.153, %sfp
	add	r4, r2, r6	@ D.39192, D.39192, D.39192
	mvn	ip, r0	@ tmp260,
	str	r2, [sp, #16]	@ D.39192, %sfp
	add	r3, r3, #10	@ ivtmp.153, ivtmp.153,
	strb	ip, [r3, #-6]	@ tmp260, MEM[base: _225, offset: 4B]
	rsb	r0, r4, r4, lsl #8	@, D.39192, D.39192,
	str	r3, [sp, #8]	@ ivtmp.153, %sfp
	bl	__aeabi_uidiv	@
	add	r1, r4, #1	@, D.39192,
	add	ip, r0, #1	@ tmp273,,
	rsb	r0, r6, r6, lsl #8	@, D.39192, D.39192,
	strb	ip, [fp, #-46]	@ tmp273, MEM[base: _224, offset: 44B]
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #76]	@ D.39192, Counts
	add	r0, r0, #1	@ tmp284,,
	ldr	r3, [sp, #88]	@ D.39192, Counts
	ldr	r9, [sp, #60]	@ D.39192, Counts
	ldr	r5, [sp, #84]	@ Counts, Counts
	mov	lr, r1	@ D.39192, D.39192
	ldr	ip, [sp, #92]	@ Counts, Counts
	ldr	r4, [sp, #80]	@ Counts, Counts
	add	r5, r9, r5	@ D.39192, D.39192, Counts
	add	ip, r3, ip	@ D.39192, D.39192, Counts
	strb	r0, [fp, #-45]	@ tmp284, MEM[base: _224, offset: 45B]
	add	r4, lr, r4	@ D.39192, D.39192, Counts
	add	r1, ip, r5	@ D.39192, D.39192, D.39192
	add	ip, ip, #1	@ D.39192, D.39192,
	str	ip, [sp, #24]	@ D.39192, %sfp
	add	ip, r4, #1	@ D.39192, D.39192,
	rsb	r0, r5, r5, lsl #8	@, D.39192, D.39192,
	add	r1, r1, ip	@, D.39192, D.39192
	str	ip, [sp, #28]	@ D.39192, %sfp
	str	r3, [sp, #20]	@ D.39192, %sfp
	str	lr, [sp, #12]	@ D.39192, %sfp
	bl	__aeabi_uidiv	@
	add	r1, r6, #1	@, D.39192,
	ldr	r2, [sp, #36]	@ D.39192, %sfp
	add	lr, r0, #1	@ tmp299,,
	strb	lr, [fp, #-44]	@ tmp299, MEM[base: _224, offset: 46B]
	rsb	r0, r2, r2, lsl #8	@, D.39192, D.39192,
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #32]	@ D.39192, %sfp
	ldr	r2, [sp, #16]	@ D.39192, %sfp
	add	r1, r2, #1	@, D.39192,
	add	r2, r0, #1	@ tmp310,,
	rsb	r0, r3, r3, lsl #8	@, D.39192, D.39192,
	strb	r2, [fp, #-43]	@ tmp310, MEM[base: _224, offset: 47B]
	bl	__aeabi_uidiv	@
	add	r1, r5, #1	@, D.39192,
	add	r3, r0, #1	@ tmp321,,
	rsb	r0, r9, r9, lsl #8	@, D.39192, D.39192,
	strb	r3, [fp, #-42]	@ tmp321, MEM[base: _224, offset: 48B]
	bl	__aeabi_uidiv	@
	ldr	r5, [sp, #24]	@ D.39192, %sfp
	add	r3, r0, #1	@ tmp332,,
	rsb	r0, r4, r4, lsl #8	@, D.39192, D.39192,
	strb	r3, [fp, #-41]	@ tmp332, MEM[base: _224, offset: 49B]
	add	r1, r5, r4	@, D.39192, D.39192
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #28]	@ D.39192, %sfp
	add	r3, r0, #1	@ tmp343,,
	strb	r3, [fp, #-40]	@ tmp343, MEM[base: _224, offset: 50B]
	mov	r1, ip	@, D.39192
	ldr	ip, [sp, #12]	@ D.39192, %sfp
	rsb	r0, ip, ip, lsl #8	@, D.39192, D.39192,
	bl	__aeabi_uidiv	@
	mov	r1, r5	@, D.39192
	ldr	r2, [sp, #20]	@ D.39192, %sfp
	add	r3, r0, #1	@ tmp353,,
	strb	r3, [fp, #-39]	@ tmp353, MEM[base: _224, offset: 51B]
	rsb	r0, r2, r2, lsl #8	@, D.39192, D.39192,
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #48]	@ D.39194, %sfp
	add	r0, r0, #1	@ tmp363,,
	strb	r0, [fp, #-38]	@ tmp363, MEM[base: _224, offset: 52B]
	cmp	r7, r3	@ ivtmp.165, D.39194
	bne	.L85	@,
	ldr	r3, [sp, #40]	@ ivtmp.174, %sfp
	add	r8, r8, #1	@ i, i,
	cmp	r8, #10	@ i,
	add	r3, r3, #1	@ ivtmp.174, ivtmp.174,
	str	r3, [sp, #40]	@ ivtmp.174, %sfp
	ldr	r3, [sp, #44]	@ ivtmp.175, %sfp
	add	r3, r3, #9	@ ivtmp.175, ivtmp.175,
	str	r3, [sp, #44]	@ ivtmp.175, %sfp
	bne	.L79	@,
	add	sp, sp, #100	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	VP6_BuildModeTree, .-VP6_BuildModeTree
	.align	2
	.global	VP6_ConfigureContexts
	.type	VP6_ConfigureContexts, %function
VP6_ConfigureContexts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r8, r0, #1184	@ ivtmp.241, pVp6CodecInfo,
	add	r4, r0, #516	@ ivtmp.244, pVp6CodecInfo,
	add	r8, r8, #5	@ ivtmp.241, ivtmp.241,
	add	r4, r4, #2	@ ivtmp.244, ivtmp.244,
	add	r0, r0, #540	@ D.39274, pVp6CodecInfo,
.L89:
	ldr	r7, .L98	@ ivtmp.233,
	sub	r6, r8, #33	@ ivtmp.230, ivtmp.241,
	add	r5, r4, #6	@ D.39274, ivtmp.244,
	sub	r9, r4, #5	@ ivtmp.207, ivtmp.244,
.L94:
	sub	lr, r6, #5	@ ivtmp.218, ivtmp.230,
	mov	ip, r9	@ ivtmp.207, ivtmp.207
	mov	r1, r7	@ ivtmp.214, ivtmp.233
.L90:
	ldrb	r10, [ip, #1]!	@ zero_extendqisi2	@ D.39273, MEM[base: _81, offset: 0B]
	add	r1, r1, #24	@ ivtmp.214, ivtmp.214,
	ldr	r3, [r1, #-24]	@ MEM[base: _80, offset: 0B], MEM[base: _80, offset: 0B]
	ldr	r2, [r1, #-20]	@ MEM[base: _80, offset: 4B], MEM[base: _80, offset: 4B]
	mul	r3, r3, r10	@ D.39273, MEM[base: _80, offset: 0B], D.39273
	add	r3, r3, #128	@ D.39273, D.39273,
	add	r3, r2, r3, asr #8	@ Temp, MEM[base: _80, offset: 4B], D.39273,
	cmp	r3, #255	@ Temp,
	movge	r3, #255	@ Temp,
	cmp	r3, #1	@ Temp,
	movlt	r3, #1	@ Temp,
	cmp	ip, r4	@ ivtmp.207, ivtmp.244
	strb	r3, [lr, #1]!	@ Temp, MEM[base: _78, offset: 0B]
	bne	.L90	@,
	mov	r2, r6	@ ivtmp.194, ivtmp.230
	mov	r3, r4	@ ivtmp.186, ivtmp.244
.L91:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2	@ D.39272, MEM[base: _95, offset: 0B]
	cmp	r5, r3	@ D.39274, ivtmp.186
	strb	r1, [r2, #1]!	@ D.39272, MEM[base: _94, offset: 0B]
	bne	.L91	@,
	add	r6, r6, #11	@ ivtmp.230, ivtmp.230,
	add	r7, r7, #8	@ ivtmp.233, ivtmp.233,
	cmp	r8, r6	@ ivtmp.241, ivtmp.230
	bne	.L94	@,
	add	r4, r4, #11	@ ivtmp.244, ivtmp.244,
	add	r8, r8, #33	@ ivtmp.241, ivtmp.241,
	cmp	r4, r0	@ ivtmp.244, D.39274
	bne	.L89	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L99:
	.align	2
.L98:
	.word	.LANCHOR0
	.fnend
	.size	VP6_ConfigureContexts, .-VP6_ConfigureContexts
	.align	2
	.global	VP6_ConfigureEntropyDecoder
	.type	VP6_ConfigureEntropyDecoder, %function
VP6_ConfigureEntropyDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #60
	sub	sp, sp, #60	@,,
	mov	lr, r2	@ pbi, pbi
	mov	r4, r1	@ pBs, pBs
	str	r2, [sp, #36]	@ pbi, %sfp
	mov	r1, #128	@,
	ldr	r2, .L152	@ tmp405,
	add	r9, lr, #72	@ D.39417, pbi,
	str	r0, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r0, sp, #41	@ tmp404,,
	str	r3, [sp, #4]	@ FrameType, %sfp
	mov	r8, #0	@ ivtmp.376,
	ldr	ip, [r2]	@ __stack_chk_guard, __stack_chk_guard
	mov	r2, #11	@,
	str	ip, [sp, #52]	@ __stack_chk_guard, D.39420
	bl	memset	@
.L101:
	ldr	r3, .L152+4	@ tmp408,
	sub	r10, r8, #1	@ D.39409, ivtmp.376,
	add	r7, r8, #512	@ D.39409, ivtmp.376,
	ldr	fp, [sp, #4]	@ FrameType, %sfp
	add	r10, r3, r10	@ ivtmp.362, tmp408, D.39409
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r7, r7, #2	@ D.39409, D.39409,
	add	r6, sp, #41	@ tmp410,,
	add	r7, r3, r7	@ ivtmp.369, pVp6CodecInfo, D.39409
	str	r8, [sp, #12]	@ ivtmp.376, %sfp
.L105:
	ldrb	r2, [r10, #1]!	@ zero_extendqisi2	@, MEM[base: _23, offset: 0B]
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L102	@,
	mov	r8, #0	@ value,
	mov	r5, #6	@ i,
.L103:
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r5	@ value, value,,
	subs	r5, r5, #1	@ i, i,
	bcs	.L103	@,
	mov	r3, r8, asl #1	@ tmp227, value,
	ands	r3, r3, #255	@ D.39410, tmp227,
	moveq	r2, #1	@ tmp229,
	movne	r2, #0	@ tmp229,
	add	r3, r3, r2	@ tmp230, D.39410, tmp229
	uxtb	r3, r3	@ D.39410, tmp230
	strb	r3, [r6]	@ D.39410, MEM[base: _181, offset: 0B]
	strb	r3, [r7]	@ D.39410,* ivtmp.369
.L104:
	add	r6, r6, #1	@ ivtmp.366, ivtmp.366,
	add	r3, sp, #52	@ tmp407,,
	cmp	r6, r3	@ ivtmp.366, tmp407
	add	r7, r7, #1	@ ivtmp.369, ivtmp.369,
	bne	.L105	@,
	ldr	r8, [sp, #12]	@ ivtmp.376, %sfp
	add	r8, r8, #11	@ ivtmp.376, ivtmp.376,
	cmp	r8, #22	@ ivtmp.376,
	bne	.L101	@,
	ldr	r3, [sp, #4]	@ FrameType, %sfp
	cmp	r3, #0	@ FrameType,
	bne	.L107	@,
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	mov	r2, #28	@,
	ldr	r1, .L152+8	@,
	add	r0, r3, #536	@, pVp6CodecInfo,
	bl	memcpy	@
.L107:
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L111	@,
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	ldr	r5, .L152+12	@ ivtmp.342,
	add	r6, r3, #1088	@ ivtmp.349, pVp6CodecInfo,
	add	r6, r6, #1	@ ivtmp.349, ivtmp.349,
	add	r7, r5, #63	@ D.39416, ivtmp.342,
.L110:
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2	@, MEM[base: _121, offset: 0B]
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L108	@,
	mov	r10, #0	@ value,
	mov	r8, #3	@ i,
.L109:
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r10, r10, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L109	@,
	strb	r10, [r6]	@ value, MEM[base: _112, offset: 0B]
.L108:
	cmp	r5, r7	@ ivtmp.342, D.39416
	add	r6, r6, #1	@ ivtmp.349, ivtmp.349,
	bne	.L110	@,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP6_BuildScanOrder	@
.L111:
	mov	r8, #0	@ ivtmp.325,
.L115:
	ldr	r3, .L152+16	@ tmp414,
	sub	r7, r8, #1	@ D.39409, ivtmp.325,
	add	r10, r8, #536	@ D.39409, ivtmp.325,
	add	fp, r8, #13	@ D.39409, ivtmp.325,
	add	r7, r3, r7	@ ivtmp.313, tmp414, D.39409
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r10, r3, r10	@ ivtmp.317, pVp6CodecInfo, D.39409
	ldr	r3, .L152+16	@ tmp416,
	add	fp, r3, fp	@ D.39416, tmp416, D.39409
.L114:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _123, offset: 0B]
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L112	@,
	mov	r6, #0	@ value,
	mov	r5, #6	@ i,
.L113:
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r6, r6, r0, asl r5	@ value, value,,
	subs	r5, r5, #1	@ i, i,
	bcs	.L113	@,
	mov	r6, r6, asl #1	@ tmp253, value,
	ands	r6, r6, #255	@ D.39410, tmp253,
	moveq	r3, #1	@ tmp255,
	movne	r3, #0	@ tmp255,
	add	r3, r6, r3	@ tmp256, D.39410, tmp255
	strb	r3, [r10]	@ tmp256, MEM[base: _55, offset: 0B]
.L112:
	cmp	r7, fp	@ ivtmp.313, D.39416
	add	r10, r10, #1	@ ivtmp.317, ivtmp.317,
	bne	.L114	@,
	add	r8, r8, #14	@ ivtmp.325, ivtmp.325,
	cmp	r8, #28	@ ivtmp.325,
	bne	.L115	@,
	ldr	r10, [sp, #4]	@ FrameType, %sfp
	mov	r3, #0	@ ivtmp.301,
	str	r3, [sp, #32]	@ ivtmp.301, %sfp
.L124:
	ldr	r3, [sp, #32]	@ ivtmp.301, %sfp
	add	r2, r3, #396	@ D.39411, ivtmp.301,
	str	r2, [sp, #28]	@ D.39411, %sfp
	str	r3, [sp, #24]	@ ivtmp.301, %sfp
	str	r3, [sp, #20]	@ ivtmp.301, %sfp
.L126:
	ldr	r3, [sp, #20]	@ ivtmp.291, %sfp
	add	r2, r3, #66	@ D.39411, ivtmp.291,
	str	r2, [sp, #12]	@ D.39411, %sfp
	str	r3, [sp, #4]	@ ivtmp.291, %sfp
	ldr	r3, [sp, #24]	@ ivtmp.293, %sfp
	sub	r3, r3, #1	@ D.39409, ivtmp.293,
	str	r3, [sp, #16]	@ D.39409, %sfp
.L123:
	ldr	r3, [sp, #4]	@ ivtmp.277, %sfp
	add	r5, sp, #41	@ tmp427,,
	ldr	r2, [sp, #16]	@ D.39409, %sfp
	add	r6, r3, #564	@ D.39409, ivtmp.277,
	add	r7, r2, r3	@ D.39409, D.39409, ivtmp.277
	ldr	r3, .L152+20	@ tmp425,
	add	r7, r3, r7	@ ivtmp.263, tmp425, D.39409
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r6, r3, r6	@ ivtmp.270, pVp6CodecInfo, D.39409
.L120:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _193, offset: 0B]
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L117	@,
	mov	fp, #0	@ value,
	mov	r8, #6	@ i,
.L118:
	mov	r1, r9	@, D.39417
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L118	@,
	mov	fp, fp, asl #1	@ tmp268, value,
	ands	fp, fp, #255	@ D.39410, tmp268,
	moveq	r3, #1	@ tmp270,
	movne	r3, #0	@ tmp270,
	add	r3, fp, r3	@ tmp271, D.39410, tmp270
	uxtb	r3, r3	@ D.39410, tmp271
	strb	r3, [r5]	@ D.39410, MEM[base: _218, offset: 0B]
	strb	r3, [r6]	@ D.39410,* ivtmp.270
.L119:
	add	r5, r5, #1	@ ivtmp.267, ivtmp.267,
	add	r3, sp, #52	@ tmp417,,
	cmp	r5, r3	@ ivtmp.267, tmp417
	add	r6, r6, #1	@ ivtmp.270, ivtmp.270,
	bne	.L120	@,
	ldr	r3, [sp, #4]	@ ivtmp.277, %sfp
	ldr	r2, [sp, #12]	@ D.39411, %sfp
	add	r3, r3, #11	@ ivtmp.277, ivtmp.277,
	str	r3, [sp, #4]	@ ivtmp.277, %sfp
	cmp	r3, r2	@ ivtmp.277, D.39411
	bne	.L123	@,
	ldr	r2, [sp, #24]	@ ivtmp.293, %sfp
	ldr	r3, [sp, #20]	@ ivtmp.291, %sfp
	sub	r2, r2, #132	@ ivtmp.293, ivtmp.293,
	str	r2, [sp, #24]	@ ivtmp.293, %sfp
	ldr	r2, [sp, #28]	@ D.39411, %sfp
	add	r3, r3, #198	@ ivtmp.291, ivtmp.291,
	str	r3, [sp, #20]	@ ivtmp.291, %sfp
	cmp	r3, r2	@ ivtmp.291, D.39411
	bne	.L126	@,
	ldr	r3, [sp, #32]	@ ivtmp.301, %sfp
	add	r3, r3, #66	@ ivtmp.301, ivtmp.301,
	str	r3, [sp, #32]	@ ivtmp.301, %sfp
	cmp	r3, #198	@ ivtmp.301,
	bne	.L124	@,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP6_ConfigureContexts	@
	ldr	r3, .L152	@ tmp446,
	ldr	r2, [sp, #52]	@ D.39420, D.39420
	ldr	r3, [r3]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.39420, __stack_chk_guard
	bne	.L151	@,
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L117:
	cmp	r10, #0	@ FrameType,
	ldreqb	r3, [r5]	@ zero_extendqisi2	@ MEM[base: _93, offset: 0B], MEM[base: _93, offset: 0B]
	streqb	r3, [r6]	@ MEM[base: _93, offset: 0B],* ivtmp.270
	b	.L119	@
.L102:
	cmp	fp, #0	@ FrameType,
	ldreqb	r3, [r6]	@ zero_extendqisi2	@ MEM[base: _185, offset: 0B], MEM[base: _185, offset: 0B]
	streqb	r3, [r7]	@ MEM[base: _185, offset: 0B],* ivtmp.369
	b	.L104	@
.L151:
	bl	__stack_chk_fail	@
.L153:
	.align	2
.L152:
	.word	__stack_chk_guard
	.word	.LANCHOR0+120
	.word	.LANCHOR0+144
	.word	.LANCHOR0+596
	.word	.LANCHOR0+172
	.word	.LANCHOR0+200
	.fnend
	.size	VP6_ConfigureEntropyDecoder, .-VP6_ConfigureEntropyDecoder
	.align	2
	.global	VP6_decodeModeDiff
	.type	VP6_decodeModeDiff, %function
VP6_decodeModeDiff:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r1, #72	@ D.39435, pbi,
	mov	r2, #205	@,
	mov	r7, r0	@ pBs, pBs
	mov	r1, r5	@, D.39435
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.39436
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r2, #171	@,
	mov	r1, r5	@, D.39435
	mov	r6, r0, asl #1	@ tmp136,,
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r6, r6, #1	@ sign, tmp136,
	cmp	r0, #0	@,
	beq	.L165	@,
	mov	r2, #199	@,
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r8, #0	@ diff,
	movne	r4, #6	@ i,
	beq	.L166	@,
.L161:
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r4	@ diff, diff,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L161	@,
	mul	r0, r8, r6	@ D.39437, diff, sign
	mov	r0, r0, asl #2	@ D.39434, D.39437,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L166:
	mov	r2, #140	@,
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L158	@,
	mov	r0, r6, asl #4	@ tmp141, sign,
	sub	r0, r0, r6, asl #2	@ D.39434, tmp141, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L165:
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	mov	r2, #83	@,
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r0, r0, #3	@ D.39436,,
	mov	r0, r6, asl r0	@ D.39434, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L158:
	mov	r2, #125	@,
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L159	@,
	mov	r0, r6, asl #4	@ D.39434, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L159:
	mov	r1, r5	@, D.39435
	mov	r0, r7	@, pBs
	mov	r2, #104	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r0, r6, asl #4	@ tmp145, sign,
	addne	r0, r0, r6, lsl #2	@ D.39434, tmp145, sign,
	moveq	r0, r6, asl #5	@ tmp149, sign,
	subeq	r0, r0, r6, asl #3	@ D.39434, tmp149, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP6_decodeModeDiff, .-VP6_decodeModeDiff
	.align	2
	.global	VP6_DecodeModeProbs
	.type	VP6_DecodeModeProbs, %function
VP6_DecodeModeProbs:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r2, #72	@ D.39514, pbi,
	ldr	r10, .L187	@ tmp177,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r2	@ pbi, pbi
	mov	r5, r1	@ pBs, pBs
	mov	r9, r0	@ ivtmp.457, pVp6CodecInfo
	mov	r8, #0	@ ivtmp.456,
	str	r0, [sp, #4]	@ pVp6CodecInfo, %sfp
.L174:
	mov	r2, #174	@,
	mov	r1, r7	@, D.39514
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L168	@,
	mov	fp, #0	@ whichVector,
	mov	r4, #3	@ i,
.L169:
	mov	r1, r7	@, D.39514
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r4	@ whichVector, whichVector,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L169	@,
	mov	r3, r8, asl #4	@ D.39511, ivtmp.456,
	mov	r2, fp, asl #4	@ tmp157, whichVector,
	add	r2, r2, fp, lsl #2	@ tmp158, tmp157, whichVector,
	add	r0, r3, #20	@ D.39511, D.39511,
	add	r0, r2, r0	@ D.39511, tmp158, D.39511
	add	r3, r3, r2	@ D.39511, D.39511, tmp158
	add	r2, r9, #412	@ ivtmp.430, ivtmp.457,
	add	r3, r10, r3	@ ivtmp.427, tmp177, D.39511
	add	r0, r10, r0	@ D.39517, tmp177, D.39511
	add	r2, r2, #1	@ ivtmp.430, ivtmp.430,
.L170:
	ldrb	r1, [r3]	@ zero_extendqisi2	@ D.39512, MEM[base: _91, offset: 0B]
	add	r3, r3, #2	@ ivtmp.427, ivtmp.427,
	strb	r1, [r2, #1]!	@ D.39512, MEM[base: _92, offset: 0B]
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ D.39512, MEM[base: _91, offset: 1B]
	cmp	r3, r0	@ ivtmp.427, D.39517
	strb	r1, [r2, #-10]	@ D.39512, MEM[base: _92, offset: 4294967286B]
	bne	.L170	@,
.L168:
	mov	r2, #254	@,
	mov	r1, r7	@, D.39514
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L175	@,
	mov	fp, r9	@ ivtmp.400, ivtmp.457
	mov	r4, #0	@ i,
.L173:
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [fp, #414]	@ zero_extendqisi2	@ D.39513, MEM[base: _64, offset: 414B]
	adds	r0, r3, r0	@ diff, D.39513,
	movmi	r0, #0	@ D.39509,
	bmi	.L171	@,
	cmp	r0, #255	@ diff,
	movge	r0, #255	@ D.39513,
	uxtb	r0, r0	@ D.39509, D.39513
.L171:
	strb	r0, [fp, #414]	@ D.39509, MEM[base: _64, offset: 414B]
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [fp, #404]	@ zero_extendqisi2	@ D.39513, MEM[base: _64, offset: 404B]
	adds	r0, r3, r0	@ diff, D.39513,
	movmi	r0, #0	@ D.39509,
	bmi	.L172	@,
	cmp	r0, #255	@ diff,
	movge	r0, #255	@ D.39513,
	uxtb	r0, r0	@ D.39509, D.39513
.L172:
	add	r4, r4, #1	@ i, i,
	strb	r0, [fp, #404]	@ D.39509, MEM[base: _64, offset: 404B]
	cmp	r4, #10	@ i,
	add	fp, fp, #1	@ ivtmp.400, ivtmp.400,
	bne	.L173	@,
.L175:
	add	r8, r8, #20	@ ivtmp.456, ivtmp.456,
	add	r9, r9, #20	@ ivtmp.457, ivtmp.457,
	cmp	r8, #60	@ ivtmp.456,
	bne	.L174	@,
	mov	r1, r6	@, pbi
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	VP6_BuildModeTree	@
.L188:
	.align	2
.L187:
	.word	.LANCHOR0+660
	.fnend
	.size	VP6_DecodeModeProbs, .-VP6_DecodeModeProbs
	.align	2
	.global	VP6_ConfigureMvEntropyDecoder
	.type	VP6_ConfigureMvEntropyDecoder, %function
VP6_ConfigureMvEntropyDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r2, #72	@ D.39613, pbi,
	ldr	r9, .L227	@ tmp226,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pBs, pBs
	mov	r8, r0	@ ivtmp.546, pVp6CodecInfo
	mov	r7, #0	@ ivtmp.545,
	mov	r10, #1	@ tmp245,
	str	r0, [sp, #4]	@ pVp6CodecInfo, %sfp
.L197:
	ldrb	r2, [r9, r7]	@ zero_extendqisi2	@, MEM[symbol: VP6_MvUpdateProbs, index: ivtmp.545_160, offset: 0B]
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L193	@,
	mov	fp, #0	@ value,
	mov	r6, #6	@ i,
.L191:
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L191	@,
	mov	fp, fp, asl #1	@ tmp187, value,
	ands	fp, fp, #255	@ D.39609, tmp187,
	strneb	fp, [r8, #2]	@ D.39609, MEM[base: _1, offset: 2B]
	streqb	r10, [r8, #2]	@ tmp245, MEM[base: _24, offset: 2B]
.L193:
	add	r3, r9, r7	@ D.39611, tmp226, ivtmp.545
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, MEM[base: _33, offset: 1B]
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L196	@,
	mov	fp, #0	@ value,
	mov	r6, #6	@ i,
.L194:
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L194	@,
	mov	fp, fp, asl #1	@ tmp193, value,
	ands	fp, fp, #255	@ D.39609, tmp193,
	strneb	fp, [r8]	@ D.39609, MEM[base: _61, offset: 0B]
	streqb	r10, [r8]	@ tmp245, MEM[base: _75, offset: 0B]
.L196:
	add	r7, r7, #17	@ ivtmp.545, ivtmp.545,
	add	r8, r8, #1	@ ivtmp.546, ivtmp.546,
	cmp	r7, #34	@ ivtmp.545,
	bne	.L197	@,
	ldr	r3, [sp, #4]	@ pVp6CodecInfo, %sfp
	add	r8, r3, #488	@ ivtmp.522, pVp6CodecInfo,
	mov	r3, #0	@ ivtmp.526,
	add	r8, r8, #3	@ ivtmp.522, ivtmp.522,
	str	r3, [sp]	@ ivtmp.526, %sfp
.L198:
	ldr	r3, [sp]	@ ivtmp.526, %sfp
	sub	r6, r8, #7	@ ivtmp.515, ivtmp.522,
	add	r7, r3, #1	@ D.39614, ivtmp.526,
	add	r7, r9, r7	@ ivtmp.508, tmp226, D.39614
.L204:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _120, offset: 0B]
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L200	@,
	mov	fp, #0	@ value,
	mov	r10, #6	@ i,
.L201:
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r10	@ value, value,,
	subs	r10, r10, #1	@ i, i,
	bcs	.L201	@,
	mov	r2, fp, asl #1	@ tmp201, value,
	ands	r2, r2, #255	@ D.39609, tmp201,
	strneb	r2, [r6]	@ D.39609, MEM[base: _121, offset: 0B]
	moveq	r3, #1	@ tmp249,
	streqb	r3, [r6]	@ tmp249, MEM[base: _138, offset: 0B]
.L200:
	add	r6, r6, #1	@ ivtmp.515, ivtmp.515,
	cmp	r8, r6	@ ivtmp.522, ivtmp.515
	bne	.L204	@,
	ldr	r3, [sp]	@ ivtmp.526, %sfp
	add	r8, r8, #7	@ ivtmp.522, ivtmp.522,
	add	r3, r3, #17	@ ivtmp.526, ivtmp.526,
	str	r3, [sp]	@ ivtmp.526, %sfp
	cmp	r3, #34	@ ivtmp.526,
	bne	.L198	@,
	ldr	r3, [sp, #4]	@ pVp6CodecInfo, %sfp
	add	r8, r3, #504	@ ivtmp.488, pVp6CodecInfo,
	mov	r3, #0	@ ivtmp.492,
	add	r8, r8, #2	@ ivtmp.488, ivtmp.488,
	str	r3, [sp]	@ ivtmp.492, %sfp
.L205:
	ldr	r3, [sp]	@ ivtmp.492, %sfp
	sub	r6, r8, #8	@ ivtmp.481, ivtmp.488,
	add	r7, r3, #8	@ D.39614, ivtmp.492,
	add	r7, r9, r7	@ ivtmp.474, tmp226, D.39614
.L211:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _190, offset: 0B]
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L207	@,
	mov	fp, #0	@ value,
	mov	r10, #6	@ i,
.L208:
	mov	r1, r4	@, D.39613
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r10	@ value, value,,
	subs	r10, r10, #1	@ i, i,
	bcs	.L208	@,
	mov	r2, fp, asl #1	@ tmp213, value,
	ands	r2, r2, #255	@ D.39609, tmp213,
	strneb	r2, [r6]	@ D.39609, MEM[base: _148, offset: 0B]
	moveq	r3, #1	@ tmp256,
	streqb	r3, [r6]	@ tmp256, MEM[base: _182, offset: 0B]
.L207:
	add	r6, r6, #1	@ ivtmp.481, ivtmp.481,
	cmp	r8, r6	@ ivtmp.488, ivtmp.481
	bne	.L211	@,
	ldr	r3, [sp]	@ ivtmp.492, %sfp
	add	r8, r8, #8	@ ivtmp.488, ivtmp.488,
	add	r3, r3, #17	@ ivtmp.492, ivtmp.492,
	str	r3, [sp]	@ ivtmp.492, %sfp
	cmp	r3, #34	@ ivtmp.492,
	bne	.L205	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L228:
	.align	2
.L227:
	.word	.LANCHOR0+1620
	.fnend
	.size	VP6_ConfigureMvEntropyDecoder, .-VP6_ConfigureMvEntropyDecoder
	.align	2
	.global	VP6_BoolTreeToHuffCodes
	.type	VP6_BoolTreeToHuffCodes, %function
VP6_BoolTreeToHuffCodes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.39617, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.39617, *pBoolTreeProbs_3(D)
	str	lr, [sp, #-4]!	@,
	.save {lr}
	smulbb	r3, r2, r3	@ D.39618, D.39617, D.39617
	mov	r3, r3, lsr #8	@ D.39618, D.39618,
	str	r3, [r1, #44]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 44B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 1B]
	ldrb	r2, [r0]	@ zero_extendqisi2	@ D.39618, *pBoolTreeProbs_3(D)
	rsb	r3, r3, #255	@ D.39618, D.39618,
	mul	r3, r2, r3	@ D.39618, D.39618, D.39618
	mov	r3, r3, lsr #8	@ D.39618, D.39618,
	str	r3, [r1]	@ D.39618, *pHuffProbs_1(D)
	ldrb	ip, [r0]	@ zero_extendqisi2	@ D.39618, *pBoolTreeProbs_3(D)
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 2B]
	rsb	ip, ip, #255	@ Prob, D.39618,
	mul	r3, r3, ip	@ D.39618, D.39618, Prob
	mov	r3, r3, lsr #8	@ D.39618, D.39618,
	str	r3, [r1, #4]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 4B]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 2B]
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 3B]
	rsb	r3, r3, #255	@ D.39618, D.39618,
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 4B]
	mul	r3, ip, r3	@ D.39618, Prob, D.39618
	mov	r3, r3, lsr #8	@ Prob, D.39618,
	mul	r2, r2, r3	@ D.39618, D.39618, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.39618,
	mul	r2, lr, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #8]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 8B]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 4B]
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 5B]
	rsb	r2, r2, #255	@ D.39618, D.39618,
	mul	r2, r2, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ Prob1, D.39618,
	mul	ip, lr, r2	@ D.39618, D.39618, Prob1
	mov	ip, ip, lsr #8	@ D.39618, D.39618,
	str	ip, [r1, #12]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 12B]
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 5B]
	rsb	ip, ip, #255	@ D.39618, D.39618,
	mul	r2, ip, r2	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #16]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 16B]
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 3B]
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 6B]
	rsb	ip, ip, #255	@ D.39618, D.39618,
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 7B]
	mul	r3, ip, r3	@ D.39618, D.39618, Prob
	mov	r3, r3, lsr #8	@ Prob, D.39618,
	mul	r2, r2, r3	@ D.39618, D.39618, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.39618,
	mul	r2, lr, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #20]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 20B]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 7B]
	rsb	r2, r2, #255	@ D.39618, D.39618,
	mul	r2, r2, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #24]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 24B]
	ldrb	ip, [r0, #6]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 6B]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 8B]
	rsb	ip, ip, #255	@ D.39618, D.39618,
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 9B]
	mul	r3, ip, r3	@ D.39618, D.39618, Prob
	mov	r3, r3, lsr #8	@ Prob, D.39618,
	mul	r2, r2, r3	@ D.39618, D.39618, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.39618,
	mul	r2, lr, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #28]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 28B]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 9B]
	rsb	r2, r2, #255	@ D.39618, D.39618,
	mul	r2, r2, ip	@ D.39618, D.39618, Prob1
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #32]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 32B]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 8B]
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 10B]
	rsb	r2, r2, #255	@ D.39618, D.39618,
	mul	r3, r2, r3	@ D.39618, D.39618, Prob
	mov	r3, r3, lsr #8	@ Prob, D.39618,
	mul	r2, ip, r3	@ D.39618, D.39618, Prob
	mov	r2, r2, lsr #8	@ D.39618, D.39618,
	str	r2, [r1, #36]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 36B]
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ D.39618, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 10B]
	rsb	r2, r2, #255	@ D.39618, D.39618,
	mul	r3, r2, r3	@ D.39618, D.39618, Prob
	mov	r3, r3, lsr #8	@ D.39618, D.39618,
	str	r3, [r1, #40]	@ D.39618, MEM[(HI_U32 *)pHuffProbs_1(D) + 40B]
	ldr	pc, [sp], #4	@
	.fnend
	.size	VP6_BoolTreeToHuffCodes, .-VP6_BoolTreeToHuffCodes
	.align	2
	.global	VP6_ZerosBoolTreeToHuffCodes
	.type	VP6_ZerosBoolTreeToHuffCodes, %function
VP6_ZerosBoolTreeToHuffCodes:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ D.39622, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.39622, *pBoolTreeProbs_2(D)
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 2B]
	smulbb	r3, ip, r3	@ D.39623, D.39622, D.39622
	mov	r3, r3, lsr #8	@ Prob, D.39623,
	mul	r2, r2, r3	@ D.39623, D.39623, Prob
	mov	r2, r2, lsr #8	@ D.39623, D.39623,
	str	r2, [r1]	@ D.39623, *pHuffProbs_13(D)
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 2B]
	rsb	r2, r2, #255	@ D.39624, D.39624,
	mul	r3, r3, r2	@ D.39623, Prob, D.39624
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #4]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 4B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 1B]
	ldrb	ip, [r0]	@ zero_extendqisi2	@ D.39623, *pBoolTreeProbs_2(D)
	rsb	r3, r3, #255	@ D.39624, D.39624,
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 3B]
	mul	r3, ip, r3	@ D.39623, D.39623, D.39624
	mov	r2, r3, lsr #8	@ Prob, D.39623,
	mul	r3, lr, r2	@ D.39623, D.39623, Prob
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #8]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 8B]
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 3B]
	rsb	r3, r3, #255	@ D.39624, D.39624,
	mul	r3, r3, r2	@ D.39623, D.39624, Prob
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #12]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 12B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.39624, *pBoolTreeProbs_2(D)
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	rsb	r3, r3, #255	@ D.39624, D.39624,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 5B]
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 6B]
	mul	r3, r4, r3	@ D.39623, D.39623, D.39624
	mov	r3, r3, lsr #8	@ Prob, D.39623,
	mul	r3, ip, r3	@ D.39623, D.39623, Prob
	mov	r2, r3, lsr #8	@ Prob, D.39623,
	mul	r3, lr, r2	@ D.39623, D.39623, Prob
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #16]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 16B]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 6B]
	rsb	r3, r3, #255	@ D.39624, D.39624,
	mul	r3, r3, r2	@ D.39623, D.39624, Prob
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #20]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 20B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.39624, *pBoolTreeProbs_2(D)
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	rsb	r3, r3, #255	@ D.39624, D.39624,
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 5B]
	ldrb	ip, [r0, #7]	@ zero_extendqisi2	@ D.39623, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 7B]
	mul	r3, lr, r3	@ D.39623, D.39623, D.39624
	rsb	r2, r2, #255	@ D.39624, D.39624,
	mov	r3, r3, lsr #8	@ Prob, D.39623,
	mul	r3, r2, r3	@ D.39623, D.39624, Prob
	mov	r3, r3, lsr #8	@ Prob, D.39623,
	mul	r2, ip, r3	@ D.39623, D.39623, Prob
	mov	r2, r2, lsr #8	@ D.39623, D.39623,
	str	r2, [r1, #24]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 24B]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 7B]
	rsb	r2, r2, #255	@ D.39624, D.39624,
	mul	r3, r2, r3	@ D.39623, D.39624, Prob
	mov	r3, r3, lsr #8	@ D.39623, D.39623,
	str	r3, [r1, #28]	@ D.39623, MEM[(HI_U32 *)pHuffProbs_13(D) + 28B]
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ D.39624, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	ldrb	r2, [r0]	@ zero_extendqisi2	@ D.39624, *pBoolTreeProbs_2(D)
	rsb	r0, r3, #255	@ D.39624, D.39624,
	rsb	r3, r2, #255	@ D.39624, D.39624,
	mul	r3, r3, r0	@ D.39623, D.39624, D.39624
	mov	r3, r3, lsr #8	@ Prob, D.39623,
	str	r3, [r1, #32]	@ Prob, MEM[(HI_U32 *)pHuffProbs_13(D) + 32B]
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VP6_ZerosBoolTreeToHuffCodes, .-VP6_ZerosBoolTreeToHuffCodes
	.align	2
	.global	VP6_InsertSorted
	.type	VP6_InsertSorted, %function
VP6_InsertSorted:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r7, r1, asl #4	@ tmp130, node,
	ldr	r6, [r2]	@ prior, *pStartnode_5(D)
	cmn	r6, #1	@ prior,
	beq	.L234	@,
	mov	r3, r6, asl #4	@ tmp134, prior,
	sub	r7, r7, r1, asl #2	@ D.39629, tmp130, node,
	sub	r3, r3, r6, asl #2	@ D.39629, tmp134, prior,
	add	r7, r0, r7	@ D.39628, pSn, D.39629
	add	r3, r0, r3	@ D.39628, pSn, D.39629
	ldr	r5, [r7, #8]	@ D.39629, _29->freq
	ldr	ip, [r3, #8]	@ _32->freq, _32->freq
	cmp	r5, ip	@ D.39629, _32->freq
	bls	.L235	@,
	mov	r4, r6	@ prior, prior
	b	.L237	@
.L246:
	add	r3, r0, r3	@ D.39628, pSn, D.39629
	ldr	lr, [r3, #8]	@ _13->freq, _13->freq
	cmp	lr, r5	@ _13->freq, D.39629
	bcs	.L245	@,
	mov	r4, ip	@ prior, prior
.L237:
	ldr	ip, [r3, #4]	@ prior, _37->next
	cmn	ip, #1	@ prior,
	mov	r3, ip, asl #4	@ tmp139, prior,
	sub	r3, r3, ip, asl #2	@ D.39629, tmp139, prior,
	bne	.L246	@,
.L236:
	mov	r3, r4, asl #4	@ tmp144, prior,
	sub	r4, r3, r4, asl #2	@ tmp145, tmp144, prior,
	add	r0, r0, r4	@ tmp146, pSn, tmp145
	str	r1, [r0, #4]	@ node, _21->next
	str	ip, [r7, #4]	@ prior,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L245:
	cmp	r6, ip	@ prior, prior
	bne	.L236	@,
.L239:
	str	r1, [r2]	@ node, *pStartnode_5(D)
	str	ip, [r7, #4]	@ prior,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L234:
	sub	r7, r7, r1, asl #2	@ D.39629, tmp149, node,
	add	r7, r0, r7	@ D.39628, pSn, D.39629
.L235:
	mov	ip, r6	@ prior, prior
	b	.L239	@
	.fnend
	.size	VP6_InsertSorted, .-VP6_InsertSorted
	.align	2
	.global	VP6_BuildHuffTree
	.type	VP6_BuildHuffTree, %function
VP6_BuildHuffTree:
	.fnstart
	@ args = 0, pretend = 0, frame = 368
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r2, #0	@ values, values
	.pad #372
	sub	sp, sp, #372	@,,
	mov	r6, r0	@ pHn, pHn
	mov	r0, #0	@ tmp279,
	str	r0, [sp, #4]	@ tmp279, startnode
	beq	.L252	@,
	add	r5, sp, #8	@ tmp395,,
	sub	r1, r1, #4	@ ivtmp.580, pCounts,
	mov	r8, #1	@ tmp397,
	mvn	r7, #0	@ tmp399,
	mov	ip, r5	@ ivtmp.587, tmp395
.L251:
	mov	r2, r0, asl #4	@ tmp282, i,
	add	r3, sp, #368	@ tmp405,,
	sub	r2, r2, r0, asl #2	@ tmp283, tmp282, i,
	ldr	lr, [r1, #4]!	@ D.39669, MEM[base: _81, offset: 0B]
	add	r2, r3, r2	@ tmp284, tmp405, tmp283
	cmp	lr, #0	@ D.39669,
	ldrb	r3, [r2, #-360]	@ zero_extendqisi2	@ sn[i_66].value.selector, sn[i_66].value.selector
	moveq	lr, #1	@ D.39669,
	streq	r8, [r1]	@ tmp397, MEM[base: _81, offset: 0B]
	orr	r3, r3, #1	@ sn[i_66].value.value, sn[i_66].value.selector,
	bfi	r3, r0, #1, #4	@ sn[i_66].value.value, i,,
	add	r0, r0, #1	@ i, i,
	cmp	r0, r4	@ i, values
	bfc	r3, #5, #3	@ sn[i_66].value.unused,,
	strb	r3, [r2, #-360]	@ sn[i_66].value.unused, sn[i_66].value.unused
	stmib	ip, {r7, lr}	@ ivtmp.587,,
	add	ip, ip, #12	@ ivtmp.587, ivtmp.587,
	bne	.L251	@,
	cmp	r4, #1	@ values,
	bls	.L252	@,
	add	r8, sp, #4	@ tmp392,,
	mov	r7, #1	@ i,
.L253:
	mov	r1, r7	@, i
	mov	r2, r8	@, tmp392
	mov	r0, r5	@, tmp395
	add	r7, r7, #1	@ i, i,
	bl	VP6_InsertSorted	@
	cmp	r7, r4	@ i, values
	bne	.L253	@,
	ldr	r2, [sp, #4]	@ D.39664, startnode
.L249:
	mov	r3, r2, asl #2	@ tmp390, D.39664,
	mov	r2, r2, asl #4	@ tmp391, D.39664,
	add	r0, sp, #368	@ tmp406,,
	rsb	r1, r3, r2	@ tmp313, tmp390, tmp391
	add	r1, r0, r1	@ tmp314, tmp406, tmp313
	ldr	r0, [r1, #-356]	@ D.39669, sn[_65].next
	cmn	r0, #1	@ D.39669,
	beq	.L247	@,
	mov	r1, r4, asl #2	@ tmp393, values,
	mov	ip, r4, asl #4	@ tmp394, values,
	rsb	r10, r1, ip	@ D.39667, tmp393, tmp394
	add	r5, sp, #8	@ tmp395,,
	sub	r7, r4, #2	@ D.39669, values,
	add	r6, r6, r4, lsl #1	@ ivtmp.565, pHn, values,
	add	r10, r5, r10	@ ivtmp.571, tmp395, D.39667
	and	r7, r7, #15	@ ivtmp.567, D.39669,
	add	r8, sp, #4	@ tmp392,,
	mvn	r9, #0	@ tmp396,
.L255:
	add	lr, sp, #368	@ tmp407,,
	rsb	r1, r1, ip	@ tmp358, tmp393, tmp394
	add	r1, lr, r1	@ tmp359, tmp407, tmp358
	mov	ip, r0, asl #4	@ tmp327, D.39669,
	rsb	r3, r3, r2	@ tmp334, tmp390, tmp391
	sub	ip, ip, r0, asl #2	@ tmp328, tmp327, D.39669,
	ldrb	fp, [r1, #-360]	@ zero_extendqisi2	@, sn[values_68].value.selector
	add	r3, lr, r3	@ tmp335, tmp408, tmp334
	add	ip, lr, ip	@ tmp329, tmp409, tmp328
	mov	r2, r8	@, tmp392
	and	fp, fp, #254	@ sn[values_68].value.value, sn[values_68].value.selector,
	ldr	r0, [r3, #-352]	@ sn[_74].freq, sn[_74].freq
	ldrb	lr, [ip, #-360]	@ zero_extendqisi2	@ sn[_75].value, sn[_75].value
	bfi	fp, r7, #1, #4	@ sn[values_68].value.value, ivtmp.567,,
	ldrb	r3, [r3, #-360]	@ zero_extendqisi2	@ sn[_74].value, sn[_74].value
	sub	r7, r7, #1	@ tmp387, ivtmp.567,
	strb	fp, [r1, #-360]	@ sn[values_68].value.value, sn[values_68].value.value
	mov	r1, r4	@, values
	ldr	fp, [ip, #-352]	@ sn[_75].freq, sn[_75].freq
	add	r4, r4, #1	@ values, values,
	str	r9, [r10, #4]	@ tmp396, MEM[base: _78, offset: 4B]
	sub	r6, r6, #2	@ ivtmp.565, ivtmp.565,
	add	r0, fp, r0	@ sumfreq, sn[_75].freq, sn[_74].freq
	str	r0, [r10, #8]	@ sumfreq, MEM[base: _78, offset: 8B]
	ldr	ip, [ip, #-356]	@ sn[_75].next, sn[_75].next
	mov	r0, r5	@, tmp395
	strb	lr, [r6, #-1]	@ sn[_75].value, MEM[base: _2, offset: 4294967293B]
	add	r10, r10, #12	@ ivtmp.571, ivtmp.571,
	strb	r3, [r6, #-2]	@ sn[_74].value, MEM[base: _2, offset: 4294967292B]
	and	r7, r7, #15	@ ivtmp.567, tmp387,
	str	ip, [sp, #4]	@ sn[_75].next, startnode
	bl	VP6_InsertSorted	@
	mov	r1, r4, asl #2	@ tmp393, values,
	mov	ip, r4, asl #4	@ tmp394, values,
	ldr	r2, [sp, #4]	@ D.39664, startnode
	add	lr, sp, #368	@ tmp410,,
	mov	r3, r2, asl #2	@ tmp390, D.39664,
	mov	r2, r2, asl #4	@ tmp391, D.39664,
	rsb	r0, r3, r2	@ tmp384, tmp390, tmp391
	add	r0, lr, r0	@ tmp385, tmp410, tmp384
	ldr	r0, [r0, #-356]	@ D.39669, sn[_30].next
	cmn	r0, #1	@ D.39669,
	bne	.L255	@,
.L247:
	add	sp, sp, #372	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L252:
	mov	r2, #0	@ D.39664,
	b	.L249	@
	.fnend
	.size	VP6_BuildHuffTree, .-VP6_BuildHuffTree
	.align	2
	.global	VP6_BuildHuffLookupTable
	.type	VP6_BuildHuffLookupTable, %function
VP6_BuildHuffLookupTable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r5, #0	@ i,
.L265:
	mov	r2, #0	@ torp$value,
	mov	lr, r2	@ j, torp$value
.L264:
	rsb	r3, lr, #5	@ D.39695, j,
	add	r4, r0, r2, lsl #1	@ D.39691, pHuffTreeRoot, torp$value,
	mov	r3, r5, asr r3	@ D.39689, i,
	add	ip, lr, #1	@ j, j,
	tst	r3, #1	@ D.39689,
	mov	lr, ip	@ j, j
	ldrneb	r3, [r4, #1]	@ zero_extendqisi2	@ _18->rightunion.right, _18->rightunion.right
	ldreqb	r3, [r0, r2, asl #1]	@ zero_extendqisi2	@ _22->leftunion.left, _22->leftunion.left
	and	r4, r3, #1	@ torp$selector, _22->leftunion.left,
	ubfx	r2, r3, #1, #4	@ torp$value, _22->leftunion.left,,
	bfi	r3, r4, #0, #1	@ torp, torp$selector,,
	bfi	r3, r2, #1, #4	@ torp, torp$value,,
	eor	r3, r3, #1	@ tmp166, torp,
	cmp	ip, #5	@ j,
	movhi	r3, #0	@, tmp174
	andls	r3, r3, #1	@,, tmp174, tmp166
	cmp	r3, #0	@ tmp174,
	bne	.L264	@,
	ldrb	r3, [r1, r5]	@ zero_extendqisi2	@, _11->value
	bfi	r3, r2, #4, #4	@ _11->value, torp$value,,
	bfi	r3, ip, #1, #3	@ _11->length, j,,
	bfi	r3, r4, #0, #1	@ _11->flag, torp$selector,,
	strb	r3, [r1, r5]	@ _11->flag, _11->flag
	add	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L265	@,
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	VP6_BuildHuffLookupTable, .-VP6_BuildHuffLookupTable
	.align	2
	.global	VP6_BuildTreeTab
	.type	VP6_BuildTreeTab, %function
VP6_BuildTreeTab:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r6, r0, #9088	@ ivtmp.674, pVp6CodecInfo,
	add	r7, r0, #9920	@ D.39774, pVp6CodecInfo,
	add	r6, r6, #30	@ ivtmp.674, ivtmp.674,
	add	r7, r7, #62	@ D.39774, D.39774,
	mov	r1, #0	@ k,
.L270:
	sub	r5, r6, #432	@ ivtmp.665, ivtmp.674,
.L279:
	sub	r4, r5, #96	@ ivtmp.659, ivtmp.665,
.L277:
	ldrb	lr, [r4, #-2]	@ zero_extendqisi2	@ D.39773, MEM[base: _98, offset: 4294967294B]
	add	r3, r0, r1	@ tmp176, pVp6CodecInfo, k
	add	ip, r1, #1	@ k, k,
	mov	r2, r4	@ ivtmp.646, ivtmp.659
	add	ip, r0, ip	@ tmp178, pVp6CodecInfo, k
	add	r1, r1, #2	@ k, k,
	strb	lr, [r3, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	mov	r3, #0	@ n,
	ldrb	lr, [r4, #-1]	@ zero_extendqisi2	@ D.39773, MEM[base: _98, offset: 4294967295B]
	strb	lr, [ip, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	b	.L275	@
.L273:
	ldrb	lr, [r2]	@ zero_extendqisi2	@ D.39773, MEM[base: _23, offset: 0B]
	cmp	r3, #5	@ n,
	cmpne	r3, #11	@, n,
	addne	r1, r1, #2	@ k, k,
	addeq	r1, r1, #6	@ k, k,
	add	r2, r2, #2	@ ivtmp.646, ivtmp.646,
	strb	lr, [ip, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.39773, MEM[base: _23, offset: 1B]
	strb	lr, [ip, #1219]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
.L275:
	add	r3, r3, #1	@ n, n,
	add	ip, r0, r1	@ tmp165, pVp6CodecInfo, k
	cmp	r3, #12	@ n,
	bne	.L273	@,
	add	r4, r4, #24	@ ivtmp.659, ivtmp.659,
	cmp	r4, r5	@ ivtmp.659, ivtmp.665
	bne	.L277	@,
	add	r5, r4, #144	@ ivtmp.665, ivtmp.659,
	cmp	r6, r5	@ ivtmp.674, ivtmp.665
	bne	.L279	@,
	add	r6, r4, #576	@ ivtmp.674, ivtmp.659,
	cmp	r6, r7	@ ivtmp.674, D.39774
	bne	.L270	@,
	add	r4, r0, #9408	@ ivtmp.640, pVp6CodecInfo,
	add	r5, r0, #9472	@ D.39774, pVp6CodecInfo,
	add	r4, r4, #46	@ ivtmp.640, ivtmp.640,
	add	r5, r5, #30	@ D.39774, D.39774,
	mov	r1, #768	@ k,
.L278:
	ldrb	lr, [r4, #-2]	@ zero_extendqisi2	@ D.39773, MEM[base: _10, offset: 4294967294B]
	add	r3, r0, r1	@ tmp195, pVp6CodecInfo, k
	add	ip, r1, #1	@ k, k,
	mov	r2, r4	@ ivtmp.627, ivtmp.640
	add	ip, r0, ip	@ tmp197, pVp6CodecInfo, k
	add	r1, r1, #2	@ k, k,
	strb	lr, [r3, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	mov	r3, #0	@ j,
	ldrb	lr, [r4, #-1]	@ zero_extendqisi2	@ D.39773, MEM[base: _10, offset: 4294967295B]
	strb	lr, [ip, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	b	.L284	@
.L282:
	ldrb	lr, [r2]	@ zero_extendqisi2	@ D.39773, MEM[base: _78, offset: 0B]
	cmp	r3, #5	@ j,
	cmpne	r3, #11	@, j,
	addne	r1, r1, #2	@ k, k,
	addeq	r1, r1, #6	@ k, k,
	add	r2, r2, #2	@ ivtmp.627, ivtmp.627,
	strb	lr, [ip, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.39773, MEM[base: _78, offset: 1B]
	strb	lr, [ip, #1219]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
.L284:
	add	r3, r3, #1	@ j, j,
	add	ip, r0, r1	@ tmp182, pVp6CodecInfo, k
	cmp	r3, #12	@ j,
	bne	.L282	@,
	add	r4, r4, #24	@ ivtmp.640, ivtmp.640,
	cmp	r4, r5	@ ivtmp.640, D.39774
	bne	.L278	@,
	add	r4, r0, #8512	@ ivtmp.619, pVp6CodecInfo,
	add	r5, r0, #8576	@ D.39774, pVp6CodecInfo,
	add	r4, r4, #20	@ ivtmp.619, ivtmp.619,
	add	r5, r5, #12	@ D.39774, D.39774,
	mov	ip, #832	@ k,
.L283:
	mov	r1, r4	@ ivtmp.610, ivtmp.619
	mov	r3, #0	@ j,
.L289:
	ldrb	lr, [r1]	@ zero_extendqisi2	@ D.39773, MEM[base: _89, offset: 0B]
	add	r2, r0, ip	@ tmp199, pVp6CodecInfo, k
	cmp	r3, #5	@ j,
	cmpne	r3, #11	@, j,
	addeq	ip, ip, #6	@ k, k,
	strb	lr, [r2, #1218]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r1, #1]	@ zero_extendqisi2	@ D.39773, MEM[base: _89, offset: 1B]
	strb	lr, [r2, #1219]	@ D.39773, pVp6CodecInfo_34(D)->TreeTab
	beq	.L286	@,
	cmp	r3, #13	@ j,
	beq	.L295	@,
	add	ip, ip, #2	@ k, k,
.L286:
	add	r3, r3, #1	@ j, j,
	add	r1, r1, #2	@ ivtmp.610, ivtmp.610,
	cmp	r3, #14	@ j,
	bne	.L289	@,
.L288:
	add	r4, r4, #28	@ ivtmp.619, ivtmp.619,
	cmp	r4, r5	@ ivtmp.619, D.39774
	bne	.L283	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L295:
	add	ip, ip, #30	@ k, k,
	b	.L288	@
	.fnend
	.size	VP6_BuildTreeTab, .-VP6_BuildTreeTab
	.align	2
	.global	VP6_ConvertBoolToHuff
	.type	VP6_ConvertBoolToHuff, %function
VP6_ConvertBoolToHuff:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #6592	@ D.39832, pVp6CodecInfo,
	add	r6, r6, #4	@ D.39832, D.39832,
	add	r5, r0, #9408	@ D.39837, pVp6CodecInfo,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	add	r5, r5, #44	@ D.39837, D.39837,
	bl	vfmw_dprint_nothing	@
	add	r0, r7, #512	@, pVp6CodecInfo,
	mov	r1, r6	@, D.39832
	add	r0, r0, #2	@,,
	add	r4, r7, #6592	@ D.39832, pVp6CodecInfo,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r6	@, D.39832
	mov	r0, r5	@, D.39837
	bl	VP6_BuildHuffTree	@
	add	r1, r7, #9472	@, pVp6CodecInfo,
	mov	r0, r5	@, D.39837
	add	r4, r4, #52	@ D.39832, D.39832,
	add	r1, r1, #28	@,,
	add	r6, r7, #9472	@ D.39837, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r6, r6, #4	@ D.39837, D.39837,
	add	r0, r7, #524	@, pVp6CodecInfo,
	mov	r1, r4	@, D.39832
	add	r0, r0, #1	@,,
	add	r5, r7, #6656	@ D.39834, pVp6CodecInfo,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r4	@, D.39832
	mov	r0, r6	@, D.39837
	bl	VP6_BuildHuffTree	@
	add	r5, r5, #36	@ D.39834, D.39834,
	add	r1, r7, #9536	@, pVp6CodecInfo,
	add	r4, r7, #8512	@ D.39833, pVp6CodecInfo,
	mov	r0, r6	@, D.39837
	add	r4, r4, #20	@ D.39833, D.39833,
	add	r1, r1, #28	@,,
	bl	VP6_BuildHuffLookupTable	@
	mov	r1, r5	@, D.39834
	add	r0, r7, #536	@, pVp6CodecInfo,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r2, #9	@,
	mov	r1, r5	@, D.39834
	mov	r0, r4	@, D.39833
	bl	VP6_BuildHuffTree	@
	add	r5, r7, #6720	@ D.39834, pVp6CodecInfo,
	add	r1, r7, #11904	@, pVp6CodecInfo,
	mov	r0, r4	@, D.39833
	add	r5, r5, #28	@ D.39834, D.39834,
	add	r1, r1, #28	@,,
	add	r4, r7, #8512	@ D.39833, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r4, r4, #48	@ D.39833, D.39833,
	add	r0, r7, #548	@, pVp6CodecInfo,
	mov	r1, r5	@, D.39834
	add	r0, r0, #2	@,,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, r5	@, D.39834
	mov	r0, r4	@, D.39833
	mov	r2, #9	@,
	bl	VP6_BuildHuffTree	@
	add	r3, r7, #760	@ ivtmp.720, pVp6CodecInfo,
	mov	r0, r4	@, D.39833
	add	r1, r7, #11968	@, pVp6CodecInfo,
	mov	r4, r3	@ ivtmp.720, ivtmp.720
	add	r3, r7, #6784	@ ivtmp.724, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	mov	r5, r3	@ ivtmp.724, ivtmp.724
	add	r3, r7, #8576	@ ivtmp.727, pVp6CodecInfo,
	mov	r6, r3	@ ivtmp.727, ivtmp.727
	add	r3, r7, #9600	@ ivtmp.730, pVp6CodecInfo,
	mov	r8, r3	@ ivtmp.730, ivtmp.730
	add	r3, r7, #1152	@ D.39839, pVp6CodecInfo,
	mov	r9, r3	@ D.39839, D.39839
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r4, #2	@ ivtmp.720, ivtmp.720,
	str	r7, [sp, #20]	@ pVp6CodecInfo, %sfp
	str	r3, [sp]	@ ivtmp.720, %sfp
	add	r3, r5, #20	@ ivtmp.724, ivtmp.724,
	str	r3, [sp, #8]	@ ivtmp.724, %sfp
	add	r3, r6, #12	@ ivtmp.727, ivtmp.727,
	str	r3, [sp, #12]	@ ivtmp.727, %sfp
	add	r3, r8, #28	@ ivtmp.730, ivtmp.730,
	str	r3, [sp, #4]	@ ivtmp.730, %sfp
	add	r3, r9, #6	@ D.39839, D.39839,
	str	r3, [sp, #16]	@ D.39839, %sfp
.L297:
	ldr	r3, [sp]	@ ivtmp.720, %sfp
	ldr	r9, [sp, #4]	@ ivtmp.711, %sfp
	ldr	r8, [sp, #12]	@ ivtmp.708, %sfp
	sub	fp, r3, #198	@ ivtmp.702, ivtmp.720,
	ldr	r7, [sp, #8]	@ ivtmp.705, %sfp
.L301:
	add	r6, fp, #66	@ D.39839, ivtmp.702,
	mov	r5, r9	@ ivtmp.694, ivtmp.711
	mov	r4, r8	@ ivtmp.691, ivtmp.708
	mov	r10, r7	@ ivtmp.688, ivtmp.705
.L298:
	mov	r1, r10	@, ivtmp.688
	mov	r0, fp	@, ivtmp.702
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r10	@, ivtmp.688
	mov	r0, r4	@, ivtmp.691
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	add	fp, fp, #11	@ ivtmp.702, ivtmp.702,
	mov	r1, r5	@, ivtmp.694
	mov	r0, r4	@, ivtmp.691
	bl	VP6_BuildHuffLookupTable	@
	cmp	fp, r6	@ ivtmp.702, D.39839
	add	r10, r10, #48	@ ivtmp.688, ivtmp.688,
	add	r5, r5, #64	@ ivtmp.694, ivtmp.694,
	add	r4, r4, #24	@ ivtmp.691, ivtmp.691,
	bne	.L298	@,
	ldr	r3, [sp]	@ ivtmp.720, %sfp
	add	r7, r7, #288	@ ivtmp.705, ivtmp.705,
	add	r8, r8, #144	@ ivtmp.708, ivtmp.708,
	add	r9, r9, #384	@ ivtmp.711, ivtmp.711,
	cmp	r3, fp	@ ivtmp.720, ivtmp.702
	bne	.L301	@,
	ldr	r2, [sp, #8]	@ ivtmp.724, %sfp
	ldr	r3, [sp]	@ ivtmp.720, %sfp
	add	r2, r2, #864	@ ivtmp.724, ivtmp.724,
	str	r2, [sp, #8]	@ ivtmp.724, %sfp
	ldr	r2, [sp, #16]	@ D.39839, %sfp
	add	r3, r3, #198	@ ivtmp.720, ivtmp.720,
	str	r3, [sp]	@ ivtmp.720, %sfp
	cmp	r3, r2	@ ivtmp.720, D.39839
	ldr	r3, [sp, #12]	@ ivtmp.727, %sfp
	add	r3, r3, #432	@ ivtmp.727, ivtmp.727,
	str	r3, [sp, #12]	@ ivtmp.727, %sfp
	ldr	r3, [sp, #4]	@ ivtmp.730, %sfp
	add	r3, r3, #1152	@ ivtmp.730, ivtmp.730,
	str	r3, [sp, #4]	@ ivtmp.730, %sfp
	bne	.L297	@,
	ldr	r7, [sp, #20]	@ pVp6CodecInfo, %sfp
	mov	r0, r7	@, pVp6CodecInfo
	bl	VP6_BuildTreeTab	@
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	VP6_ConvertBoolToHuff, .-VP6_ConvertBoolToHuff
	.align	2
	.global	VP6_IntraFrmHeader
	.type	VP6_IntraFrmHeader, %function
VP6_IntraFrmHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1	@ pBs, pBs
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	bl	vfmw_dprint_nothing	@
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r7, r4, #8192	@ tmp343, pVp6CodecInfo,
	mov	r1, #2	@,
	uxtb	r3, r0	@ D.39908,
	mov	r0, r5	@, pBs
	str	r3, [r7, #4072]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	bl	BsGet	@
	ldr	r3, [r7, #4072]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	cmp	r3, #8	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo,
	uxtb	r0, r0	@ D.39908,
	str	r0, [r7, #4076]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile
	bhi	.L307	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.39908,
	cmp	r6, #0	@ D.39908,
	bne	.L307	@,
	ldrb	r3, [r7, #4062]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream,
	beq	.L308	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r8, r4, #12288	@ tmp342, pVp6CodecInfo,
	mov	r2, #255	@ tmp227,
	mov	r3, #8	@ tmp230,
	str	r6, [r8, #36]	@ D.39908, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].lowvalue
	mov	r1, #24	@,
	str	r2, [r8, #40]	@ tmp227, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].range
	str	r3, [r8, #48]	@ tmp230, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].count
	str	r0, [r8, #16]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Buff2Offset
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r8, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].value
.L309:
	add	r4, r4, #12288	@ D.39911, pVp6CodecInfo,
	mov	r10, #0	@ value,
	add	r4, r4, #36	@ D.39911, D.39911,
	mov	r6, #7	@ i,
.L310:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r10, r10, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L310	@,
	mov	r9, #0	@ value,
	mov	r6, #7	@ i,
	uxtb	r10, r10	@ D.39908, value
	str	r10, [r7, #4084]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb
.L311:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L311	@,
	ldr	r10, [r7, #4084]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb
	uxtb	r9, r9	@ D.39909, value
	mov	fp, #0	@ value,
	mov	r6, #7	@ i,
	str	r9, [r7, #4088]	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_width_in_mb
	mov	r9, r9, asl #1	@ D.39909, D.39909,
	mov	r10, r10, asl #1	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb,
	str	r10, [r7, #4092]	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VMacroblockCount
	str	r9, [r8]	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].HMacroblockCount
.L312:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L312	@,
	uxtb	r3, fp	@ D.39908, value
	mov	r6, #7	@ i,
	mov	fp, #0	@ value,
	mov	r3, r3, asl #1	@ D.39908, D.39908,
	str	r3, [r8, #4]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].OutputVMacroblockCount
.L313:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L313	@,
	uxtb	fp, fp	@ D.39908, value
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	mov	fp, fp, asl #1	@ D.39908, D.39908,
	str	fp, [r8, #8]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].OutputHMacroblockCount
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r4	@, D.39911
	mov	r6, r0	@ D.39909,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	ldr	r3, [r7, #3872]	@ pVp6CodecInfo_5(D)->VOldScaled, pVp6CodecInfo_5(D)->VOldScaled
	cmp	r10, r3	@ D.39909, pVp6CodecInfo_5(D)->VOldScaled
	orr	r0, r0, r6, asl #1	@ D.39909,, D.39909,
	strb	r0, [r7, #4063]	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].ScalingMode
	bne	.L314	@,
	ldr	r3, [r7, #3868]	@ pVp6CodecInfo_5(D)->HOldScaled, pVp6CodecInfo_5(D)->HOldScaled
	cmp	r9, r3	@ D.39909, pVp6CodecInfo_5(D)->HOldScaled
	beq	.L315	@,
.L314:
	bl	vfmw_dprint_nothing	@
.L315:
	ldr	r3, [r7, #4076]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile
	str	r9, [r7, #3868]	@ D.39909, pVp6CodecInfo_5(D)->HOldScaled
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile,
	str	r10, [r7, #3872]	@ D.39909, pVp6CodecInfo_5(D)->VOldScaled
	moveq	r2, #14	@ tmp331,
	streqb	r2, [r7, #4066]	@ tmp331, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	streq	r3, [r8, #20]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	bne	.L339	@,
.L324:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.39907,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L307:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39907,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L308:
	add	r8, r4, #12288	@ tmp342, pVp6CodecInfo,
	mov	ip, #255	@ tmp238,
	mov	r2, #8	@ tmp241,
	mov	r1, #24	@,
	str	r3, [r8, #36]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].lowvalue
	mov	r0, r5	@, pBs
	str	ip, [r8, #40]	@ tmp238, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].range
	str	r2, [r8, #48]	@ tmp241, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].count
	bl	BsGet	@
	str	r0, [r8, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].value
	b	.L309	@
.L339:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L317	@,
	mov	r9, #0	@ value,
	mov	r6, #4	@ i,
	mov	r3, #2	@ tmp298,
	str	r3, [r8, #20]	@ tmp298, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
.L318:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L318	@,
	ldr	r3, [r7, #4072]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	mov	r8, #0	@ value,
	mov	r6, #2	@ i,
	cmp	r3, #7	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo,
	movhi	r3, r8	@ D.39908,
	movls	r3, #5	@ D.39908,
	mov	r9, r9, asl r3	@ D.39908, value,
	strb	r9, [r7, #4064]	@ D.39908, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterVarThresh
.L320:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L320	@,
	strb	r8, [r7, #4065]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMvSizeThresh
.L321:
	ldr	r3, [r7, #4072]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	cmp	r3, #7	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo,
	bls	.L340	@,
	mov	r8, #0	@ value,
	mov	r6, #3	@ i,
.L323:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L323	@,
	strb	r8, [r7, #4066]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	b	.L324	@
.L340:
	mov	r3, #16	@ tmp327,
	strb	r3, [r7, #4066]	@ tmp327, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	b	.L324	@
.L317:
	mov	r1, r4	@, D.39911
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.39909
	streq	r0, [r8, #20]	@ D.39909, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	movne	r3, #1	@ tmp315,
	strne	r3, [r8, #20]	@ tmp315, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	b	.L321	@
	.fnend
	.size	VP6_IntraFrmHeader, .-VP6_IntraFrmHeader
	.align	2
	.global	VP6_InterFrmHeader
	.type	VP6_InterFrmHeader, %function
VP6_InterFrmHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #8192	@ tmp258, pVp6CodecInfo,
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	ldr	r3, [r4, #3928]	@ D.39930, pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo
	cmp	r3, #0	@ D.39930,
	beq	.L364	@,
	ldrb	r2, [r4, #4062]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream
	mov	r7, r1	@ pBs, pBs
	ldr	r1, [r4, #3932]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile
	cmp	r2, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream,
	str	r3, [r4, #4072]	@ D.39930, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].Vp3VersionNo
	str	r1, [r4, #4076]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].VpProfile
	bne	.L365	@,
	add	r6, r0, #12288	@ tmp259, pVp6CodecInfo,
	mov	ip, #255	@ tmp187,
	mov	r3, #8	@ tmp190,
	mov	r1, #24	@,
	str	r2, [r6, #36]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].lowvalue
	mov	r0, r7	@, pBs
	str	ip, [r6, #40]	@ tmp187, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].range
	str	r3, [r6, #48]	@ tmp190, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].count
	bl	BsGet	@
	str	r0, [r6, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].value
.L345:
	add	r5, r5, #12288	@ D.39933, pVp6CodecInfo,
	mov	r0, r7	@, pBs
	add	r5, r5, #36	@ D.39933, D.39933,
	mov	r1, r5	@, D.39933
	bl	Vp6_Vfmw_DecodeBool128	@
	str	r0, [r6, #24]	@ D.39930, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].RefreshGoldenFrame
	ldr	r3, [r4, #3932]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile
	str	r0, [r4, #3892]	@ D.39930, pVp6CodecInfo_6(D)->RefreshGoldenFrame
	cmp	r3, #0	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile,
	bne	.L366	@,
	mov	r2, #14	@ tmp250,
	mov	r0, #1	@ D.39929,
	strb	r2, [r4, #4066]	@ tmp250, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	str	r3, [r6, #20]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L365:
	mov	r1, #16	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	add	r6, r5, #12288	@ tmp259, pVp6CodecInfo,
	mov	r3, #0	@ tmp173,
	mov	r2, #255	@ tmp176,
	str	r3, [r6, #36]	@ tmp173, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].lowvalue
	mov	r1, #24	@,
	mov	r3, #8	@ tmp179,
	str	r2, [r6, #40]	@ tmp176, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].range
	str	r3, [r6, #48]	@ tmp179, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].count
	str	r0, [r6, #16]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].Buff2Offset
	mov	r0, r7	@, pBs
	bl	BsGet	@
	str	r0, [r6, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].value
	b	.L345	@
.L366:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.39930,
	mov	r8, r0	@ D.39930,
	str	r0, [r6, #28]	@ D.39930, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].UseLoopFilter
	bne	.L367	@,
.L347:
	ldr	r3, [r4, #3928]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo, pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo
	cmp	r3, #7	@ pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo,
	bhi	.L368	@,
	mov	r3, #16	@ tmp246,
	mov	r0, #1	@ D.39929,
	strb	r3, [r4, #4066]	@ tmp246, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L368:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	bne	.L369	@,
	mov	r0, #1	@ D.39929,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L367:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r0, r0, r8, asl #1	@ D.39930,, D.39930,
	str	r0, [r6, #28]	@ D.39930, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].UseLoopFilter
	b	.L347	@
.L369:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L349	@,
	mov	r9, #0	@ value,
	mov	r8, #4	@ i,
	mov	r3, #2	@ tmp221,
	str	r3, [r6, #20]	@ tmp221, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
.L350:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L350	@,
	mov	r8, #0	@ value,
	mov	r6, #2	@ i,
	strb	r9, [r4, #4064]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterVarThresh
.L351:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L351	@,
	strb	r8, [r4, #4065]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMvSizeThresh
.L352:
	mov	r8, #0	@ value,
	mov	r6, #3	@ i,
.L354:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L354	@,
	strb	r8, [r4, #4066]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	mov	r0, #1	@ D.39929,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L364:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #87	@ D.39929,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L349:
	mov	r1, r5	@, D.39933
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.39930
	streq	r0, [r6, #20]	@ D.39930, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	movne	r3, #1	@ tmp234,
	strne	r3, [r6, #20]	@ tmp234, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	b	.L352	@
	.fnend
	.size	VP6_InterFrmHeader, .-VP6_InterFrmHeader
	.align	2
	.global	VP6_GetPictureHeader
	.type	VP6_GetPictureHeader, %function
VP6_GetPictureHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pBs,
	cmpne	r0, #0	@, pVp6CodecInfo,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	beq	.L377	@,
	mov	r6, r1	@ pBs, pBs
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	add	r4, r7, #8192	@ tmp207, pVp6CodecInfo,
	bl	BsGet	@
	mov	r1, #6	@,
	uxtb	r3, r0	@ D.39943,
	mov	r0, r6	@, pBs
	str	r3, [r4, #4080]	@ D.39943, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType
	strb	r3, [r4, #3888]	@ D.39943, pVp6CodecInfo_3(D)->FrameType
	bl	BsGet	@
	ldr	r1, .L380	@ tmp152,
	add	r2, r7, #12224	@ tmp161, pVp6CodecInfo,
	mov	ip, r0	@ D.39943,
	uxtb	r3, r0	@ D.39943, D.39943
	ldr	r0, .L380+4	@ tmp166,
	add	r1, r1, r3	@ tmp153, tmp152, D.39943
	mov	r3, r3, asl #1	@ tmp167, D.39943,
	strb	ip, [r4, #4060]	@ D.39943, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask
	add	r8, r0, #128	@ tmp181,,
	ldrb	r5, [r1, #1656]	@ zero_extendqisi2	@ tmp154, VP6_LoopFilterLimitValues
	ldrh	lr, [r0, r3]	@ tmp170, DcQuantTab
	mov	r1, #1	@,
	ldrh	r3, [r8, r3]	@ tmp185, AcQuantTab
	mov	r0, r6	@, pBs
	strb	r5, [r4, #4061]	@ tmp154, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FLimit
	strh	lr, [r2, #36]	@ movhi	@ tmp170, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DcQuant
	strh	r3, [r2, #38]	@ movhi	@ tmp185, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].AcQuant
	bl	BsGet	@
	ldr	r3, [r4, #4080]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType
	mov	r1, r6	@, pBs
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType,
	strb	r0, [r4, #4062]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].MultiStream
	mov	r0, r7	@, pVp6CodecInfo
	beq	.L378	@,
	bl	VP6_InterFrmHeader	@
	mov	r5, r0	@ ret,
	cmp	r5, #1	@ ret,
	beq	.L379	@,
.L375:
	mov	r0, r5	@ D.39941, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L378:
	bl	VP6_IntraFrmHeader	@
	mov	r5, r0	@ ret,
	cmp	r5, #1	@ ret,
	bne	.L375	@,
.L379:
	add	r1, r7, #12288	@, pVp6CodecInfo,
	mov	r0, r6	@, pBs
	add	r1, r1, #36	@,,
	add	r7, r7, #12288	@ tmp198, pVp6CodecInfo,
	bl	Vp6_Vfmw_DecodeBool128	@
	str	r0, [r7, #32]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].UseHuffman
	ldrb	r3, [r4, #4060]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask
	str	r3, [r7, #12]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].LastFrameQIndex
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.39941, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L377:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39941,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L381:
	.align	2
.L380:
	.word	.LANCHOR0
	.word	.LANCHOR0+1720
	.fnend
	.size	VP6_GetPictureHeader, .-VP6_GetPictureHeader
	.align	2
	.global	VP6DEC_Init
	.type	VP6DEC_Init, %function
VP6DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #12288	@ tmp122, pCtx,
	mov	r6, r1	@ pstExtraData, pstExtraData
	movw	r1, #13008	@,
	ldr	r7, [r4, #704]	@ D.39951, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r5, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, #704]	@ D.39951, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r5]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r0, r5	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.39953,
	str	r0, [r4, #712]	@ D.39953, pCtx_4(D)->ChanID
	beq	.L386	@,
	add	r0, r5, #224	@, pCtx,
	movw	r1, #12396	@,
	bl	__memzero	@
	mov	r2, #1024	@ tmp132,
	mov	r3, #0	@ tmp135,
	str	r2, [r4, #40]	@ tmp132, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].DDR_Stride
	str	r3, [r4, #12]	@ tmp135, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].Imgbuf_allocated
	mov	r6, #1	@ tmp142,
	ldr	r3, [r5]	@ pCtx_4(D)->pstExtraData, pCtx_4(D)->pstExtraData
	ldr	r3, [r3, #8]	@ _20->s32DecMode, _20->s32DecMode
	str	r6, [r4, #716]	@ tmp142, pCtx_4(D)->DSDNeedClearQue
	str	r3, [r4, #4]	@ _20->s32DecMode, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].UsedDecMode
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.39950, tmp142
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L386:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.39950,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	VP6DEC_Init, .-VP6DEC_Init
	.align	2
	.global	VP6_DecodeDecide
	.type	VP6_DecodeDecide, %function
VP6_DecodeDecide:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp213, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r4, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].Imgbuf_allocated,
	beq	.L398	@,
	ldr	r3, [r4, #4]	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].UsedDecMode, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].UsedDecMode
	sub	r3, r3, #2	@ D.39962, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].UsedDecMode,
	cmp	r3, #1	@ D.39962,
	ldr	r3, [r0]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.39964,
	bls	.L419	@,
.L391:
	str	r3, [r4, #4]	@ D.39962, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].UsedDecMode
	cmp	r3, #4	@ D.39962,
	ldrls	pc, [pc, r3, asl #2]	@ D.39962
	b	.L397	@
.L399:
	.word	.L395
	.word	.L395
	.word	.L392
	.word	.L394
	.word	.L395
.L395:
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType,
	beq	.L393	@,
	ldr	r3, [r4, #8]	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].RefNum, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].RefNum
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].RefNum,
	bne	.L393	@,
.L397:
	bl	vfmw_dprint_nothing	@
.L394:
	mov	r0, #0	@ D.39961,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L398:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39961,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L419:
	cmp	r3, #4	@ D.39964,
	cmpne	r3, #1	@, D.39964,
	bhi	.L391	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].GoldenFsID
	mov	r6, #0	@ tmp173,
	ldr	r0, [r4, #712]	@, pCtx_6(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_6(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #28]	@ tmp173, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].GoldenFsID
	str	r6, [r4, #32]	@ tmp173, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_6(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r6, [r4, #8]	@ tmp173, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].RefNum
	str	r0, [r4, #32]	@ D.39964, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FwdFsID
	str	r0, [r4, #28]	@ D.39964, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].GoldenFsID
	ldr	r3, [r5]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.39962, _61->s32DecMode
	b	.L391	@
.L392:
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType,
	bne	.L397	@,
.L393:
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pFwdImg
	beq	.L398	@,
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_6(D) + 224B].FrameType,
	beq	.L402	@,
	ldr	r3, [r5]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r2, [r0, #180]	@ pFwdImg_46->error_level, pFwdImg_46->error_level
	ldr	r3, [r3]	@ _50->s32RefErrThr, _50->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_46->error_level, _50->s32RefErrThr
	bhi	.L398	@,
.L402:
	mov	r0, #1	@ D.39961,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6_DecodeDecide, .-VP6_DecodeDecide
	.align	2
	.global	VP6_Set_DecParam
	.type	VP6_Set_DecParam, %function
VP6_Set_DecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #12288	@ tmp494, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r7, r0, #8	@ __p, pCtx,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType
	ldr	r8, [r0, #208]	@ pVp6StreamParam, pCtx_8(D)->pVp6StreamParam
	cmp	r3, #3	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType,
	beq	.L447	@,
	mov	r1, #200	@,
	mov	r0, r7	@, __p
	bl	__memzero	@
	ldr	r3, [r5, #208]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FrameType, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FrameType
	mov	r2, #0	@ tmp308,
	strb	r2, [r4, #9]	@ tmp308, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].IsNvopCopy
	str	r3, [r4, #68]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FrameType, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].FrameType
	ldrb	r3, [r5, #188]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DctQMask, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DctQMask
	str	r3, [r4, #72]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DctQMask, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].DctQMask
	ldrb	r3, [r5, #190]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream
	str	r3, [r4, #76]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].MultiStream
	ldr	r3, [r5, #256]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseHuffman, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseHuffman
	str	r3, [r4, #80]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseHuffman, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].UseHuffman
	ldr	r3, [r5, #244]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMode, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMode
	str	r3, [r4, #92]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMode, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PredictionFilterMode
	ldrb	r3, [r5, #192]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterVarThresh, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterVarThresh
	str	r3, [r4, #96]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterVarThresh, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PredictionFilterVarThresh
	ldrb	r3, [r5, #193]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMvSizeThresh, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMvSizeThresh
	str	r3, [r4, #100]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterMvSizeThresh, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PredictionFilterMvSizeThresh
	ldrb	r3, [r5, #194]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterAlpha, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterAlpha
	str	r3, [r4, #104]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].PredictionFilterAlpha, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PredictionFilterAlpha
	ldr	r3, [r5, #252]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseLoopFilter, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseLoopFilter
	str	r3, [r4, #116]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].UseLoopFilter, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].UseLoopFilter
	ldrb	r3, [r5, #189]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FLimit, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FLimit
	strb	r3, [r4, #8]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FLimit, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].FLimit
	ldrh	r3, [r5, #196]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DcQuant, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DcQuant
	str	r3, [r4, #84]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].DcQuant, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].DcQuant
	ldrh	r3, [r5, #198]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].AcQuant, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].AcQuant
	str	r3, [r4, #88]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].AcQuant, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].AcQuant
	ldr	r3, [r5, #204]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile
	str	r3, [r4, #112]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].VpProfile
	ldr	r3, [r5, #200]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Vp3VersionNo
	str	r3, [r4, #108]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Vp3VersionNo, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].Vp3VersionNo
	ldr	r3, [r5, #216]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_width_in_mb, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_width_in_mb
	strh	r3, [r4, #60]	@ movhi	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_width_in_mb, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PicWidthInMb
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_height_in_mb, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_height_in_mb
	strh	r3, [r4, #62]	@ movhi	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].pic_height_in_mb, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].PicHeightInMb
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].GoldenFsID
	mov	r9, r0	@ pFwd,
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r9, #0	@, pFwd,
	moveq	r3, #1	@ tmp378,
	movne	r3, #0	@ tmp378,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp384, tmp378
	cmp	r3, #0	@ tmp384,
	bne	.L424	@,
	ldr	r3, [r6, #408]	@ D.39975, pCur_101->pstDecodeFs
	cmp	r3, #0	@ D.39975,
	beq	.L424	@,
	ldr	r3, [r3, #12]	@ _113->PhyAddr, _113->PhyAddr
	str	r3, [r4, #180]	@ _113->PhyAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_curr_recon_addr
	ldr	r3, [r6, #420]	@ pCur_101->PmvAddr, pCur_101->PmvAddr
	str	r3, [r4, #192]	@ pCur_101->PmvAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].CurPmvAddr
	ldr	r3, [r0, #408]	@ D.39975, pGolden_109->pstDecodeFs
	cmp	r3, #0	@ D.39975,
	ldreq	r3, [r6, #408]	@ pCur_101->pstDecodeFs, pCur_101->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.39971,
	str	r3, [r4, #184]	@ D.39971, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_golden_ref_addr
	ldr	r3, [r9, #408]	@ D.39975, pFwd_105->pstDecodeFs
	add	r9, r4, #12608	@ pBs, pCtx,
	add	r9, r9, #12	@ pBs, pBs,
	cmp	r3, #0	@ D.39975,
	mov	r0, r9	@, pBs
	ldreq	r3, [r6, #408]	@ pCur_101->pstDecodeFs, pCur_101->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.39971,
	str	r3, [r4, #188]	@ D.39971, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_last_ref_addr
	ldr	r3, [r5, #40]	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].DDR_Stride, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].DDR_Stride
	str	r3, [r4, #196]	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].DDR_Stride, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].VahbStride
	ldr	r3, [r6, #408]	@ pCur_101->pstDecodeFs, pCur_101->pstDecodeFs
	ldr	r3, [r3, #32]	@ _137->ChromOffset, _137->ChromOffset
	str	r3, [r4, #200]	@ _137->ChromOffset, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].uv_offset
	ldr	r3, [r5, #268]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.value, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.value
	str	r3, [r4, #168]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.value, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].value
	ldr	r3, [r5, #264]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.range, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.range
	str	r3, [r4, #172]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.range, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].range
	ldr	r3, [r5, #272]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.count, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.count
	str	r3, [r4, #176]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].br.count, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].count
	ldr	r6, [r8]	@ D.39978, pVp6StreamParam_11->VirAddr
	bl	BsPos	@
	mov	r3, r0	@ D.39973,
	add	r0, r0, #7	@ tmp406, D.39973,
	cmp	r3, #0	@ D.39973,
	movlt	r3, r0	@ D.39973, tmp406
	add	r6, r6, r3, asr #3	@ BaseAddrUnAligned, D.39978, D.39973,
	mov	r0, r6	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	bic	r3, r0, #15	@ D.39976,,
	mov	r0, r6	@, BaseAddrUnAligned
	sub	r3, r3, #16	@ D.39976, D.39976,
	str	r3, [r4, #64]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr
	bl	MEM_Vir2Phy	@
	ldrb	r6, [r5, #190]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream
	cmp	r6, #0	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream,
	and	r0, r0, #15	@ ResideBytes,,
	mov	r0, r0, asl #3	@ D.39976, ResideBytes,
	bne	.L433	@,
	ldr	r3, [r5, #204]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile,
	bne	.L434	@,
.L433:
	mov	r3, #16	@ tmp416,
	str	r0, [r4, #124]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_0
	str	r3, [r4, #128]	@ tmp416, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_0
	mov	r0, r9	@, pBs
	ldr	r9, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	bl	BsPos	@
	mov	r6, #0	@ tmp422,
	str	r6, [r4, #140]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_1
	str	r6, [r4, #136]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_1
	mov	r9, r9, asl #3	@ D.39976, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset,
	str	r6, [r4, #132]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_1
	rsb	r0, r0, r9	@ D.39976,, D.39976
	str	r0, [r4, #120]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_0
	ldr	r3, [r8]	@ pVp6StreamParam_11->VirAddr, pVp6StreamParam_11->VirAddr
	ldr	r10, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	add	r10, r3, r10	@ BaseAddrUnAligned, pVp6StreamParam_11->VirAddr, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	mov	r0, r10	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	mov	r9, r0	@ D.39973,
	mov	r0, r10	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	and	r9, r9, #15	@ ResideBytes, D.39973,
	ldr	r3, [r4, #64]	@ MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr
	mov	r9, r9, asl #3	@ D.39976, ResideBytes,
	str	r9, [r4, #148]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_0
	bic	r0, r0, #15	@ D.39976,,
	rsb	r0, r3, r0	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr, D.39976
	str	r0, [r4, #152]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_0
	ldr	r3, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	ldr	r2, [r8, #8]	@ pVp6StreamParam_11->Length, pVp6StreamParam_11->Length
	str	r6, [r4, #164]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_1
	mov	r3, r3, asl #3	@ D.39976, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset,
	str	r6, [r4, #160]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_1
	rsb	r3, r3, r2, lsl #3	@ D.39976, D.39976, pVp6StreamParam_11->Length,
	str	r6, [r4, #156]	@ tmp422, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_1
	str	r3, [r4, #144]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_0
.L435:
	ldr	r10, [r4]	@ D.39988, pCtx_8(D)->pstExtraData
	add	r9, r4, #4992	@ D.39982, pCtx,
	add	r3, r4, #5120	@ D.39980, pCtx,
	add	fp, r4, #4416	@ D.39981, pCtx,
	add	r8, r4, #4288	@ D.39983, pCtx,
	add	r6, r4, #3296	@ D.39984, pCtx,
	add	r5, r4, #3360	@ D.39985, pCtx,
	add	lr, r4, #3232	@ D.39984, pCtx,
	add	ip, r4, #2528	@ D.39986, pCtx,
	add	r0, r4, #2464	@ D.39984, pCtx,
	add	r1, r4, #3168	@ D.39984, pCtx,
	add	r2, r4, #6656	@ D.39982, pCtx,
	add	r3, r3, #34	@ D.39980, D.39980,
	add	fp, fp, #2	@ D.39981, D.39981,
	str	r3, [r4, #52]	@ D.39980, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblAcHuffLUT
	add	r8, r8, #34	@ D.39983, D.39983,
	str	fp, [r4, #40]	@ D.39981, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblACProbs
	mov	r3, r9	@ D.39987, D.39982
	str	r8, [r4, #36]	@ D.39983, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblDcNodeContexts
	add	r9, r9, #34	@ D.39982, D.39982,
	add	r6, r6, #2	@ D.39984, D.39984,
	str	r9, [r4, #48]	@ D.39982, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblDcHuffLUT
	str	r6, [r4, #28]	@ D.39984, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblEobOffsetTable
	add	r5, r5, #2	@ D.39985, D.39985,
	add	lr, lr, #2	@ D.39984, D.39984,
	str	r5, [r4, #32]	@ D.39985, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblHuffTree
	str	lr, [r4, #24]	@ D.39984, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblModifiedScanOrder
	add	ip, ip, #2	@ D.39986, D.39986,
	add	r0, r0, #2	@ D.39984, D.39984,
	str	ip, [r4, #16]	@ D.39986, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbMode
	str	r0, [r4, #12]	@ D.39984, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbModeSame
	add	r1, r1, #2	@ D.39984, D.39984,
	add	r2, r2, #34	@ D.39982, D.39982,
	str	r1, [r4, #20]	@ D.39984, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbMv
	str	r2, [r4, #56]	@ D.39982, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblZeroHuffLUT
	add	r3, r3, #2	@ D.39987, D.39987,
	str	r3, [r4, #44]	@ D.39987, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblZeroProbs
	mov	r0, #1	@ D.39970,
	ldr	r3, [r10, #512]	@ D.39973, _247->s32Compress_en
	str	r7, [r4, #4]	@ __p, pCtx_8(D)->pVp6DecParam
	str	r3, [r4, #204]	@ D.39973, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].Compress_en
	ldr	r3, [r10, #512]	@ D.39973, _247->s32Compress_en
	str	r3, [r4, #204]	@ D.39973, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].Compress_en
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L447:
	str	r3, [r0, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].FrameType
	mov	r3, #1	@ tmp270,
	strb	r3, [r0, #9]	@ tmp270, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].IsNvopCopy
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r5, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].GoldenFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r5, #712]	@, pCtx_8(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	moveq	r3, #1	@ tmp294,
	movne	r3, #0	@ tmp294,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp300, tmp294
	cmp	r3, #0	@ tmp300,
	bne	.L424	@,
	ldr	r3, [r6, #408]	@ D.39975, pCur_19->pstDecodeFs
	cmp	r3, #0	@ D.39975,
	bne	.L448	@,
.L424:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39970,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L448:
	ldr	r3, [r3, #12]	@ _31->PhyAddr, _31->PhyAddr
	str	r3, [r4, #180]	@ _31->PhyAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_curr_recon_addr
	ldr	r3, [r6, #420]	@ pCur_19->PmvAddr, pCur_19->PmvAddr
	str	r3, [r4, #192]	@ pCur_19->PmvAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].CurPmvAddr
	ldr	r3, [r0, #408]	@ D.39975, pGolden_27->pstDecodeFs
	mov	r0, #1	@ D.39970,
	cmp	r3, #0	@ D.39975,
	ldreq	r3, [r6, #408]	@ pCur_19->pstDecodeFs, pCur_19->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.39971,
	str	r3, [r4, #184]	@ D.39971, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_golden_ref_addr
	ldr	r3, [r8, #408]	@ D.39975, pFwd_23->pstDecodeFs
	cmp	r3, #0	@ D.39975,
	ldreq	r3, [r6, #408]	@ pCur_19->pstDecodeFs, pCur_19->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.39971,
	str	r7, [r4, #4]	@ __p, pCtx_8(D)->pVp6DecParam
	str	r3, [r4, #188]	@ D.39971, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_last_ref_addr
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L434:
	str	r0, [r4, #124]	@ D.39976, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_0
	mov	r3, #16	@ tmp444,
	mov	r0, r9	@, pBs
	str	r3, [r4, #128]	@ tmp444, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_0
	ldr	r5, [r8, #8]	@ pVp6StreamParam_11->Length, pVp6StreamParam_11->Length
	bl	BsPos	@
	str	r6, [r4, #140]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_1
	str	r6, [r4, #136]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_1
	mov	r5, r5, asl #3	@ D.39973, pVp6StreamParam_11->Length,
	str	r6, [r4, #132]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_1
	str	r6, [r4, #152]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_0
	str	r6, [r4, #148]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_0
	str	r6, [r4, #144]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_0
	str	r6, [r4, #164]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_1
	str	r6, [r4, #160]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_1
	str	r6, [r4, #156]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_1
	rsb	r0, r0, r5	@ D.39973,, D.39973
	str	r0, [r4, #120]	@ D.39973, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_0
	b	.L435	@
	.fnend
	.size	VP6_Set_DecParam, .-VP6_Set_DecParam
	.align	2
	.global	VP6_CfgTable
	.type	VP6_CfgTable, %function
VP6_CfgTable:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L471	@ tmp498,
	mov	r2, #10	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	ldr	ip, [r3]	@ __stack_chk_guard, __stack_chk_guard
	.pad #28
	sub	sp, sp, #28	@,,
	add	r0, r0, #2240	@, pVp6CodecInfo,
	mov	r7, r1	@ pPictureHeader, pPictureHeader
	add	r0, r0, #2	@,,
	add	r1, r4, #4	@, pVp6CodecInfo,
	mov	r3, #0	@ tmp219,
	str	ip, [sp, #20]	@ __stack_chk_guard, D.40095
	str	r3, [sp, #4]	@ tmp219, _ptr_msg_bank
	add	r5, r4, #2304	@ ivtmp.882, pVp6CodecInfo,
	str	r3, [sp, #8]	@ tmp219, _ptr_msg_bank
	add	fp, r4, #2944	@ tmp472, pVp6CodecInfo,
	str	r3, [sp, #12]	@ tmp219, _ptr_msg_bank
	add	r5, r5, #2	@ ivtmp.882, ivtmp.882,
	str	r3, [sp, #16]	@ tmp219, _ptr_msg_bank
	bl	memcpy	@
	add	r0, r4, #2256	@, pVp6CodecInfo,
	add	r1, r4, #14	@, pVp6CodecInfo,
	mov	r2, #10	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r0, r4, #2272	@, pVp6CodecInfo,
	add	r0, r0, #2	@,,
	add	r1, r4, #24	@, pVp6CodecInfo,
	mov	r2, #10	@,
	add	fp, fp, #2	@ tmp472, tmp472,
	bl	memcpy	@
	add	r10, r4, #44	@ ivtmp.885, pVp6CodecInfo,
.L450:
	add	r9, r5, #160	@ D.40084, ivtmp.882,
	mov	r6, r10	@ ivtmp.874, ivtmp.885
.L451:
	mov	r1, r6	@, ivtmp.874
	mov	r0, r5	@, ivtmp.882
	mov	r2, #9	@,
	add	r5, r5, #16	@ ivtmp.882, ivtmp.882,
	bl	memcpy	@
	cmp	r9, r5	@ D.40084, ivtmp.882
	add	r6, r6, #9	@ ivtmp.874, ivtmp.874,
	bne	.L451	@,
	cmp	r9, fp	@ D.40084, tmp472
	add	r10, r10, #90	@ ivtmp.885, ivtmp.885,
	mov	r5, r9	@ ivtmp.882, D.40084
	bne	.L450	@,
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp499,,
	bl	__memzero	@
	ldrb	fp, [r4]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	r10, [r4, #2]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->IsMvShortProb, pVp6CodecInfo_30(D)->IsMvShortProb
	mov	r0, r9	@, D.40084
	ldrb	lr, [r4, #486]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r2, #16	@,
	ldrb	ip, [r4, #487]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r5, #0	@ tmp293,
	ldrb	r3, [r4, #488]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r9, [r4, #484]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r8, [r4, #485]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	fp, [sp, #4]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	add	r1, sp, #4	@ tmp500,,
	ldrb	fp, [r4, #489]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	r10, [sp, #5]	@ pVp6CodecInfo_30(D)->IsMvShortProb, _ptr_msg_bank
	ldrb	r10, [r4, #490]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	lr, [sp, #8]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #9]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #10]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r9, [sp, #6]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r8, [sp, #7]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	fp, [sp, #11]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r10, [sp, #12]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	bl	memcpy	@
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp501,,
	bl	__memzero	@
	ldrb	ip, [r4]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	r3, [r4, #498]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r0, r4, #2960	@, pVp6CodecInfo,
	ldrb	lr, [r4, #503]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	mov	r2, #16	@,
	ldrb	fp, [r4, #499]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r0, r0, #2	@,,
	ldrb	r10, [r4, #500]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r9, [r4, #501]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r8, [r4, #502]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	ip, [sp, #4]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	add	r1, sp, #4	@ tmp502,,
	ldrb	ip, [r4, #504]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	r3, [sp, #5]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	ldrb	r3, [r4, #505]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	lr, [sp, #10]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	ip, [sp, #11]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r3, [sp, #12]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #6]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r10, [sp, #7]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r9, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r8, [sp, #9]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r5, [sp, #13]	@ tmp293, _ptr_msg_bank
	strb	r5, [sp, #14]	@ tmp293, _ptr_msg_bank
	bl	memcpy	@
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp503,,
	bl	__memzero	@
	ldrb	ip, [r4, #1]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->IsMvShortProb, pVp6CodecInfo_30(D)->IsMvShortProb
	add	r0, r4, #2976	@, pVp6CodecInfo,
	ldrb	lr, [r4, #495]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r2, #16	@,
	ldrb	fp, [r4, #491]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	add	r0, r0, #2	@,,
	ldrb	r10, [r4, #492]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r9, [r4, #493]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r8, [r4, #494]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	ip, [sp, #4]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	add	r1, sp, #4	@ tmp504,,
	ldrb	ip, [r4, #496]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	r3, [sp, #5]	@ pVp6CodecInfo_30(D)->IsMvShortProb, _ptr_msg_bank
	ldrb	r3, [r4, #497]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	lr, [sp, #10]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #11]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #12]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	fp, [sp, #6]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r10, [sp, #7]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r9, [sp, #8]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r8, [sp, #9]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	bl	memcpy	@
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp505,,
	bl	__memzero	@
	ldrb	r3, [r4, #511]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	add	r0, r4, #2992	@, pVp6CodecInfo,
	ldrb	r10, [r4, #506]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r0, r0, #2	@,,
	ldrb	r9, [r4, #507]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	mov	r2, #16	@,
	ldrb	r8, [r4, #508]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	lr, [r4, #509]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	ip, [r4, #510]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r6, [r4, #512]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	r5, [sp, #13]	@ tmp293, _ptr_msg_bank
	add	r1, sp, #4	@ tmp506,,
	strb	r5, [sp, #14]	@ tmp293, _ptr_msg_bank
	ldrb	r5, [r4, #513]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	r3, [sp, #10]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #4]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	strb	r10, [sp, #5]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r9, [sp, #6]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r8, [sp, #7]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	lr, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	ip, [sp, #9]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r6, [sp, #11]	@ tmp508, _ptr_msg_bank
	strb	r5, [sp, #12]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	bl	memcpy	@
	ldr	r3, [r7, #68]	@ pPictureHeader_134(D)->UseHuffman, pPictureHeader_134(D)->UseHuffman
	cmp	r3, #0	@ pPictureHeader_134(D)->UseHuffman,
	bne	.L453	@,
	add	r0, r4, #4096	@, pVp6CodecInfo,
	mov	r2, #11	@,
	add	r1, r4, #1152	@, pVp6CodecInfo,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r1, r4, #1152	@, pVp6CodecInfo,
	add	r0, r4, #4096	@, pVp6CodecInfo,
	add	r1, r1, #11	@,,
	mov	r2, #11	@,
	add	r0, r0, #18	@,,
	bl	memcpy	@
	add	r1, r4, #1168	@, pVp6CodecInfo,
	add	r0, r4, #4096	@, pVp6CodecInfo,
	add	r1, r1, #6	@,,
	mov	r2, #11	@,
	add	r0, r0, #34	@,,
	bl	memcpy	@
	add	r1, r4, #1184	@, pVp6CodecInfo,
	add	r0, r4, #4096	@, pVp6CodecInfo,
	add	r1, r1, #1	@,,
	mov	r2, #11	@,
	add	r0, r0, #50	@,,
	bl	memcpy	@
	add	r1, r4, #1184	@, pVp6CodecInfo,
	add	r0, r4, #4160	@, pVp6CodecInfo,
	add	r1, r1, #12	@,,
	mov	r2, #11	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r1, r4, #1200	@, pVp6CodecInfo,
	add	r0, r4, #4160	@, pVp6CodecInfo,
	add	r1, r1, #7	@,,
	mov	r2, #11	@,
	add	r0, r0, #18	@,,
	bl	memcpy	@
	add	r0, r4, #4736	@, pVp6CodecInfo,
	mov	r2, #14	@,
	add	r1, r4, #536	@, pVp6CodecInfo,
	add	r0, r0, #34	@,,
	add	r9, r4, #4480	@ ivtmp.859, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #548	@, pVp6CodecInfo,
	add	r0, r4, #4736	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	add	r0, r0, #50	@,,
	mov	r2, #14	@,
	bl	memcpy	@
	add	fp, r4, #5056	@ D.40084, pVp6CodecInfo,
	add	r9, r9, #2	@ ivtmp.859, ivtmp.859,
	add	fp, fp, #2	@ D.40084, D.40084,
	add	r10, r4, #564	@ ivtmp.863, pVp6CodecInfo,
.L454:
	sub	r5, r9, #288	@ ivtmp.847, ivtmp.859,
	mov	r8, r10	@ ivtmp.850, ivtmp.863
.L463:
	add	r7, r5, #48	@ D.40084, ivtmp.847,
	mov	r6, r8	@ ivtmp.839, ivtmp.850
.L461:
	mov	r1, r6	@, ivtmp.839
	mov	r0, r5	@, ivtmp.847
	mov	r2, #11	@,
	add	r5, r5, #16	@ ivtmp.847, ivtmp.847,
	bl	memcpy	@
	cmp	r7, r5	@ D.40084, ivtmp.847
	add	r6, r6, #66	@ ivtmp.839, ivtmp.839,
	bne	.L461	@,
	cmp	r7, r9	@ D.40084, ivtmp.859
	add	r8, r8, #11	@ ivtmp.850, ivtmp.850,
	mov	r5, r7	@ ivtmp.847, D.40084
	bne	.L463	@,
	add	r9, r9, #288	@ ivtmp.859, ivtmp.859,
	add	r10, r10, #198	@ ivtmp.863, ivtmp.863,
	cmp	r9, fp	@ ivtmp.859, D.40084
	bne	.L454	@,
.L460:
	add	r0, r4, #3008	@, pVp6CodecInfo,
	mov	r2, #64	@,
	add	r1, r4, #960	@, pVp6CodecInfo,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r0, r4, #3072	@, pVp6CodecInfo,
	mov	r2, #64	@,
	add	r0, r0, #2	@,,
	add	r1, r4, #1024	@, pVp6CodecInfo,
	bl	memcpy	@
	ldr	r3, .L471	@ tmp509,
	mov	r0, #0	@,
	ldr	r2, [sp, #20]	@ D.40095, D.40095
	ldr	r3, [r3]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.40095, __stack_chk_guard
	bne	.L470	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L453:
	add	r1, r4, #9472	@, pVp6CodecInfo,
	add	r0, r4, #4800	@, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	mov	r2, #128	@,
	add	r0, r0, #2	@,,
	add	r9, r4, #5696	@ ivtmp.824, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #11904	@, pVp6CodecInfo,
	add	r0, r4, #6464	@, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	add	r0, r0, #2	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	add	r10, r4, #9600	@ ivtmp.828, pVp6CodecInfo,
	add	fp, r4, #7232	@ D.40084, pVp6CodecInfo,
	add	r9, r9, #2	@ ivtmp.824, ivtmp.824,
	add	r10, r10, #28	@ ivtmp.828, ivtmp.828,
	add	fp, fp, #2	@ D.40084, D.40084,
.L455:
	sub	r5, r9, #768	@ ivtmp.802, ivtmp.824,
	mov	r8, r10	@ ivtmp.815, ivtmp.828
.L459:
	add	r7, r5, #256	@ D.40084, ivtmp.802,
	mov	r6, r8	@ ivtmp.805, ivtmp.815
.L456:
	mov	r2, #64	@,
	mov	r1, r6	@, ivtmp.805
	mov	r0, r5	@, ivtmp.802
	add	r5, r5, r2	@ ivtmp.802, ivtmp.802,
	bl	memcpy	@
	cmp	r5, r7	@ ivtmp.802, D.40084
	add	r6, r6, #64	@ ivtmp.805, ivtmp.805,
	bne	.L456	@,
	cmp	r9, r5	@ ivtmp.824, ivtmp.802
	add	r8, r8, #384	@ ivtmp.815, ivtmp.815,
	bne	.L459	@,
	add	r9, r9, #768	@ ivtmp.824, ivtmp.824,
	add	r10, r10, #1152	@ ivtmp.828, ivtmp.828,
	cmp	r9, fp	@ ivtmp.824, D.40084
	bne	.L455	@,
	add	r1, r4, #1216	@, pVp6CodecInfo,
	add	r0, r4, #3136	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	mov	r2, #960	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	b	.L460	@
.L470:
	bl	__stack_chk_fail	@
.L472:
	.align	2
.L471:
	.word	__stack_chk_guard
	.fnend
	.size	VP6_CfgTable, .-VP6_CfgTable
	.align	2
	.global	VP6_BuildTables
	.type	VP6_BuildTables, %function
VP6_BuildTables:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	ldr	r3, [r1, #20]	@ pPictureHeader_4(D)->FrameType, pPictureHeader_4(D)->FrameType
	mov	r6, r2	@ pBs, pBs
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	cmp	r3, #0	@ pPictureHeader_4(D)->FrameType,
	beq	.L474	@,
	mov	r2, r1	@, pPictureHeader
	mov	r1, r6	@, pBs
	bl	VP6_DecodeModeProbs	@
	mov	r2, r4	@, pPictureHeader
	mov	r1, r6	@, pBs
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConfigureMvEntropyDecoder	@
.L475:
	ldr	r3, [r4, #20]	@, pPictureHeader_4(D)->FrameType
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r3, [r4, #68]	@ pPictureHeader_4(D)->UseHuffman, pPictureHeader_4(D)->UseHuffman
	cmp	r3, #0	@ pPictureHeader_4(D)->UseHuffman,
	beq	.L476	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConvertBoolToHuff	@
.L476:
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_CfgTable	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L474:
	mov	r2, #80	@,
	ldr	r1, .L481	@,
	add	r0, r0, #404	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #2	@,
	ldr	r1, .L481+4	@,
	add	r0, r5, r2	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #14	@,
	ldr	r1, .L481+8	@,
	add	r0, r5, #484	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #2	@,
	ldr	r1, .L481+12	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	memcpy	@
	add	r0, r5, #496	@, pVp6CodecInfo,
	mov	r2, #16	@,
	ldr	r1, .L481+16	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	mov	r2, #64	@,
	ldr	r1, .L481+20	@,
	add	r0, r5, #1088	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_BuildScanOrder	@
	b	.L475	@
.L482:
	.align	2
.L481:
	.word	.LANCHOR0+1976
	.word	.LANCHOR0+2056
	.word	.LANCHOR0+2060
	.word	.LANCHOR0+2076
	.word	.LANCHOR0+2080
	.word	.LANCHOR0+2096
	.fnend
	.size	VP6_BuildTables, .-VP6_BuildTables
	.align	2
	.global	IsFrameSizeChanged
	.type	IsFrameSizeChanged, %function
IsFrameSizeChanged:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8192	@ tmp119, pVp6CodecInfo,
	ldr	r2, [r0, #3940]	@ pVp6CodecInfo_3(D)->OldHeaderInfo.pic_height_in_mb, pVp6CodecInfo_3(D)->OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r0, #4084]	@ pVp6CodecInfo_3(D)->NewHeaderInfo.pic_height_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ pVp6CodecInfo_3(D)->OldHeaderInfo.pic_height_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_height_in_mb
	beq	.L486	@,
	mov	r0, #1	@ D.40188,
	bx	lr	@
.L486:
	ldr	r3, [r0, #3944]	@ pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb
	ldr	r0, [r0, #4088]	@ pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb
	subs	r0, r3, r0	@ D.40188, pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb
	movne	r0, #1	@ D.40188,
	bx	lr	@
	.fnend
	.size	IsFrameSizeChanged, .-IsFrameSizeChanged
	.align	2
	.global	VP6DEC_Decode
	.type	VP6DEC_Decode, %function
VP6DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r1]	@ D.40198, pPacket_14(D)->StreamPack[0].VirAddr
	.pad #16
	sub	sp, sp, #16	@,,
	str	r3, [r0, #212]	@ D.40198, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].VirAddr
	ldr	r2, [r1, #8]	@ pPacket_14(D)->StreamPack[0].PhyAddr, pPacket_14(D)->StreamPack[0].PhyAddr
	str	r2, [r0, #216]	@ pPacket_14(D)->StreamPack[0].PhyAddr, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].PhyAddr
	ldr	r2, [r1, #12]	@ D.40199, pPacket_14(D)->StreamPack[0].LenInByte
	cmp	r2, #0	@ D.40199,
	str	r2, [r0, #220]	@ D.40199, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].Length
	bne	.L488	@,
	add	r5, r0, #12288	@ tmp388, pCtx,
	mov	r3, #3	@ tmp210,
	strb	r3, [r5, #16]	@ tmp210, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType
.L489:
	mov	r0, r4	@, pCtx
	bl	VP6_DecodeDecide	@
	cmp	r0, #1	@,
	beq	.L519	@,
.L492:
	bl	vfmw_dprint_nothing	@
	mov	r6, #0	@ D.40197,
.L491:
	mov	r0, r6	@, D.40197
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L488:
	cmp	r2, #2	@ D.40199,
	ble	.L492	@,
	add	r5, r0, #12608	@ pBs, pCtx,
	add	r6, r0, #224	@ pVp6CodecInfo, pCtx,
	add	r5, r5, #12	@ pBs, pBs,
	mov	r1, r3	@, D.40198
	mov	r0, r5	@, pBs
	bl	BsInit	@
	add	r3, r4, #212	@ pVp6StreamParam, pCtx,
	mov	r1, r5	@, pBs
	mov	r0, r6	@, pVp6CodecInfo
	str	r3, [r4, #208]	@ pVp6StreamParam, pCtx_9(D)->pVp6StreamParam
	bl	VP6_GetPictureHeader	@
	cmp	r0, #1	@,
	bne	.L492	@,
	add	r1, r4, #12416	@, pCtx,
	mov	r2, r5	@, pBs
	mov	r0, r6	@, pVp6CodecInfo
	add	r1, r1, #60	@,,
	bl	VP6_BuildTables	@
	cmp	r0, #1	@,
	bne	.L492	@,
	add	r5, r4, #12288	@ tmp388, pCtx,
	ldr	r3, [r5, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated,
	beq	.L495	@,
	ldr	r2, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	bne	.L495	@,
	ldr	r2, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	ldr	r3, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	cmp	r2, r3	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	bne	.L495	@,
	ldr	r3, [r4]	@ D.40202, pCtx_9(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _34->s32DSDWaitFlag, _34->s32DSDWaitFlag
	cmp	r2, #1	@ _34->s32DSDWaitFlag,
	bne	.L489	@,
	b	.L494	@
.L519:
	mov	r0, r4	@, pCtx
	bl	VP6_GetImageBuffer	@
	cmp	r0, #1	@ D.40200,
	bne	.L492	@,
	mov	r2, r0	@, D.40200
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	beq	.L492	@,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	mov	r1, #0	@ tmp354,
	mvn	r6, #0	@ tmp355,
	mvn	r7, #0	@,
	ldrd	r2, [r3, #56]	@ D.40207, pCtx_9(D)->pstExtraData,
	strd	r2, [r0, #8]	@ D.40207, pImage,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.40207, pCtx_9(D)->pstExtraData,
	strd	r2, [r0, #16]	@ D.40207, pImage,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.40207, pCtx_9(D)->pstExtraData,
	strd	r2, [r0, #24]	@ D.40207, pImage,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.40200, _143->DispEnableFlag
	str	r3, [r0, #68]	@ D.40200, pImage_132->DispEnableFlag
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.40200, _146->DispFrameDistance
	str	r3, [r0, #72]	@ D.40200, pImage_132->DispFrameDistance
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.40200, _149->DistanceBeforeFirstFrame
	str	r3, [r0, #76]	@ D.40200, pImage_132->DistanceBeforeFirstFrame
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.40200, _152->GopNum
	str	r1, [r0, #128]	@ tmp354, pImage_132->is_fld_save
	str	r3, [r0, #80]	@ D.40200, pImage_132->GopNum
	ldr	r3, [r4]	@ D.40202, pCtx_9(D)->pstExtraData
	strd	r6, [r3, #56]	@ tmp355, D.40202,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, pCtx
	bl	VP6_Set_DecParam	@
	cmp	r0, #1	@ D.40197,
	mov	r6, r0	@ D.40197,
	bne	.L492	@,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType,
	beq	.L520	@,
	ldr	r8, [r5, #56]	@ TmpVp3VersionNo, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.Vp3VersionNo
	add	r1, r4, #12416	@, pCtx,
	ldr	r7, [r5, #60]	@ TmpVpProfile, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.VpProfile
	add	r0, r4, #12288	@, pCtx,
	add	r1, r1, #60	@,,
	add	r0, r0, #44	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	str	r8, [r5, #56]	@ TmpVp3VersionNo, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.Vp3VersionNo
	str	r7, [r5, #60]	@ TmpVpProfile, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.VpProfile
.L511:
	bl	vfmw_dprint_nothing	@
	b	.L491	@
.L495:
	ldr	r3, [r4]	@ D.40202, pCtx_9(D)->pstExtraData
.L494:
	ldr	r6, [r3, #692]	@ _182->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _182->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ _182->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L521	@,
.L497:
	ldr	r3, .L524	@ tmp267,
	ldr	r3, [r3]	@ D.40203, g_event_report
	cmp	r3, #0	@ D.40203,
	beq	.L504	@,
	ldr	r0, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	add	r2, sp, #8	@,,
	ldr	r6, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	mov	r1, #2	@,
	ldr	lr, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	ip, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	strh	r0, [sp, #14]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, para
	strh	r6, [sp, #8]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, para
	strh	lr, [sp, #10]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, para
	strh	ip, [sp, #12]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, para
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	blx	r3	@ D.40203
.L504:
	mov	r2, #1	@,
	ldr	r1, [r5, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	mov	r7, #0	@ tmp298,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	add	r6, r4, #12608	@ D.40205, pCtx,
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	add	r6, r6, #40	@ D.40205, D.40205,
	bl	FSP_ClearLogicFs	@
	str	r7, [r5, #28]	@ tmp298, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	str	r7, [r5, #32]	@ tmp298, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r7, [r5, #8]	@ tmp298, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].RefNum
	mov	r1, r6	@, D.40205
	str	r0, [r5, #32]	@ D.40199, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	str	r0, [r5, #28]	@ D.40199, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	cmp	r3, #512	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb,
	bhi	.L492	@,
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	cmp	r3, #512	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb,
	bhi	.L492	@,
	ldr	r3, [r4]	@ D.40202, pCtx_9(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r2, r7	@ _103->stChanOption.s32ReRangeEn,
	bne	.L505	@,
	ldr	r3, [r3, #32]	@ _103->eCapLevel, _103->eCapLevel
	cmp	r3, #25	@ _103->eCapLevel,
	beq	.L522	@,
.L505:
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L507	@,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L509	@,
	ldr	r3, [r5, #716]	@ pCtx_9(D)->DSDNeedClearQue, pCtx_9(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_9(D)->DSDNeedClearQue,
	beq	.L509	@,
.L507:
	mov	r0, r4	@, pCtx
	bl	VP6_ArrangeVHBMem	@
	cmp	r0, #1	@,
	beq	.L489	@,
	b	.L492	@
.L521:
	mov	r3, sp	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@,,
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	mov	ip, #0	@ tmp234,
	str	ip, [sp]	@ tmp234, NewNum
	str	ip, [sp, #4]	@ tmp234, ReadNum
	str	ip, [sp, #8]	@ tmp234, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4]	@ D.40202, pCtx_9(D)->pstExtraData
	ldr	r1, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	ldr	r2, [r3, #720]	@ _45->s32DSDThrWidth, _45->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _45->s32DSDThrWidth, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb,
	bcc	.L498	@,
	ldr	r1, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	r2, [r3, #724]	@ _45->s32DSDThrHeight, _45->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _45->s32DSDThrHeight, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb,
	bcc	.L498	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.40199, ReadNum, NewNum
	cmp	r2, #0	@ D.40199,
	strgt	r6, [r3, #728]	@ _182->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _45->s32DSDWaitFlag
	strle	r6, [r5, #716]	@ _182->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_9(D)->DSDNeedClearQue
	ble	.L501	@,
.L500:
	mov	r6, #0	@ D.40197,
	b	.L491	@
.L520:
	add	r1, r4, #12416	@, pCtx,
	add	r0, r4, #12288	@, pCtx,
	add	r1, r1, #60	@,,
	mov	r2, #144	@,
	add	r0, r0, #44	@,,
	bl	memcpy	@
	b	.L511	@
.L522:
	ldr	r3, [r5, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated
	cmp	r3, r7	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated,
	bne	.L507	@,
.L509:
	mov	r0, r6	@, D.40205
	bl	ResetVoQueue	@
	b	.L507	@
.L498:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L523	@,
.L502:
	mov	r2, #1	@ tmp262,
	str	r2, [r3, #728]	@ tmp262, _45->s32DSDWaitFlag
	b	.L500	@
.L523:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L502	@,
	mov	r2, #0	@ tmp265,
	str	r2, [r5, #716]	@ tmp265, pCtx_9(D)->DSDNeedClearQue
.L501:
	mov	r2, #0	@ tmp266,
	str	r2, [r3, #728]	@ tmp266, _45->s32DSDWaitFlag
	b	.L497	@
.L525:
	.align	2
.L524:
	.word	g_event_report
	.fnend
	.size	VP6DEC_Decode, .-VP6DEC_Decode
	.align	2
	.global	VP6_SetImgFormat
	.type	VP6_SetImgFormat, %function
VP6_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #12288	@ tmp145, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FrameType
	mov	r2, #0	@ tmp158,
	mov	r1, r2	@, tmp158
	strb	r2, [r4, #288]	@ tmp158, pImg_9->ImageDnr.pic_structure
	and	r3, r3, #3	@ D.40220, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FrameType,
	mov	ip, #10	@ tmp157,
	orr	r2, r3, #7168	@ D.40220, D.40220,
	str	r3, [r4, #132]	@ D.40220, pImg_9->top_fld_type
	orr	r2, r2, #32	@ D.40220, D.40220,
	str	r3, [r4, #136]	@ D.40220, pImg_9->bottom_fld_type
	str	ip, [r4, #300]	@ tmp157, pImg_9->ImageDnr.video_standard
	mov	r3, #8	@ tmp162,
	mov	ip, #1	@ tmp160,
	str	r2, [r4, #140]	@ D.40220, pImg_9->format
	str	r3, [r4, #304]	@ tmp162, pImg_9->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp162, pImg_9->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp162, pImg_9->ImageDnr.QP_U
	strb	ip, [r4, #295]	@ tmp160, pImg_9->ImageDnr.use_pic_qp_en
	strb	ip, [r4, #293]	@ tmp160, pImg_9->ImageDnr.chroma_format_idc
	bl	SetAspectRatio	@
	ldr	r2, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb
	mov	r2, r2, asl #4	@ D.40220, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb,
	str	r2, [r4, #144]	@ D.40220, pImg_9->image_width
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb
	mov	r3, r3, asl #4	@ D.40220, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb,
	str	r3, [r4, #148]	@ D.40220, pImg_9->image_height
	ldr	r1, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r1, [r1, #32]	@ _30->eCapLevel, _30->eCapLevel
	cmp	r1, #25	@ _30->eCapLevel,
	beq	.L533	@,
.L528:
	str	r2, [r4, #152]	@ D.40220, pImg_9->disp_width
	mov	r2, r2, lsr #1	@ D.40220, D.40220,
	str	r3, [r4, #156]	@ D.40220, pImg_9->disp_height
	mov	r3, r3, lsr #1	@ D.40220, D.40220,
	str	r2, [r4, #160]	@ D.40220, pImg_9->disp_center_x
	str	r3, [r4, #164]	@ D.40220, pImg_9->disp_center_y
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L533:
	ldr	r2, [r4, #172]	@ D.40220, pImg_9->image_stride
	mov	r3, r3, lsr #4	@ D.40220, D.40220,
	ldr	r0, [r4, #104]	@ D.40220, pImg_9->luma_phy_addr
	ldr	r1, [r4, #32]	@ D.40223, pImg_9->luma_vir_addr
	mov	lr, r2, asl #4	@ D.40220, D.40220,
	add	ip, r2, r0	@ D.40219, D.40220, D.40220
	str	r0, [r4, #88]	@ D.40220, pImg_9->top_luma_phy_addr
	mul	r3, r3, lr	@ D.40220, D.40220, D.40220
	str	r0, [r4, #120]	@ D.40220, pImg_9->luma_2d_phy_addr
	str	r1, [r4, #48]	@ D.40223, pImg_9->luma_2d_vir_addr
	str	ip, [r4, #96]	@ D.40219, pImg_9->btm_luma_phy_addr
	add	r0, r3, r0	@ D.40220, D.40220, D.40220
	add	r3, r1, r3	@ D.40223, D.40223, D.40220
	add	r2, r2, r0	@ D.40219, D.40220, D.40220
	str	r3, [r4, #36]	@ D.40223, pImg_9->chrom_vir_addr
	str	r2, [r4, #100]	@ D.40219, pImg_9->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.40220, pImg_9->chrom_phy_addr
	str	r0, [r4, #92]	@ D.40220, pImg_9->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ pImg_9->top_chrom_phy_addr, pImg_9->top_chrom_phy_addr
	ldr	r2, [r4, #144]	@ D.40220, pImg_9->image_width
	ldr	r3, [r4, #148]	@ D.40220, pImg_9->image_height
	str	r1, [r4, #124]	@ pImg_9->top_chrom_phy_addr, pImg_9->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_9->chrom_2d_vir_addr
	b	.L528	@
	.fnend
	.size	VP6_SetImgFormat, .-VP6_SetImgFormat
	.align	2
	.global	VP6DEC_VDMPostProc
	.type	VP6DEC_VDMPostProc, %function
VP6DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #12288	@ tmp304, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r1	@ ErrRatio, ErrRatio
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, pCtx
	mov	r0, #10	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L542	@,
	cmp	r6, #0	@ ErrRatio,
	blt	.L537	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.40229,
	str	r6, [r0, #180]	@ D.40229, pCurImg_15->error_level
	ldr	r3, [r5]	@ pCtx_10(D)->pstExtraData, pCtx_10(D)->pstExtraData
	ldr	r3, [r3]	@ _21->s32RefErrThr, _21->s32RefErrThr
	cmp	r6, r3	@ D.40229, _21->s32RefErrThr
	bhi	.L567	@,
.L538:
	mov	r0, r5	@, pCtx
	bl	VP6_SetImgFormat	@
	ldr	r3, [r4, #4]	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].UsedDecMode, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].UsedDecMode
	mov	r2, #1	@ tmp199,
	str	r2, [r4, #8]	@ tmp199, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].RefNum
	cmp	r3, #2	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].UsedDecMode,
	beq	.L568	@,
.L539:
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	str	r1, [r4, #36]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].ToQueFsID
.L540:
	cmn	r1, #1	@ D.40228,
	beq	.L541	@,
	mov	r2, #1	@,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #36]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].ToQueFsID
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L542	@,
	add	r3, r5, #12608	@, pCtx,
	ldr	r0, [r4, #712]	@ pCtx_10(D)->ChanID, pCtx_10(D)->ChanID
	mov	r2, r5	@, pCtx
	str	r6, [sp]	@ pToQueImg,
	add	r3, r3, #40	@,,
	mov	r1, #10	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	bne	.L569	@,
.L541:
	ldr	r3, [r4, #32]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	ldr	r2, [r4, #28]	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	cmp	r3, r2	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	beq	.L543	@,
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	cmp	r3, r1	@ D.40228, D.40228
	beq	.L544	@,
	mov	r1, r3	@, D.40228
	mov	r2, #0	@,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
.L544:
	str	r1, [r4, #32]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType,
	bne	.L570	@,
	ldr	r3, [r4, #28]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	cmp	r3, r1	@ D.40228, D.40228
	beq	.L547	@,
.L571:
	mov	r1, r3	@, D.40228
	mov	r2, #0	@,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
.L547:
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	mov	r2, #1	@,
	str	r1, [r4, #28]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	bl	FSP_SetRef	@
	mov	r0, #1	@ D.40227,
.L564:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L570:
	ldr	r3, [r4, #20]	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].RefreshGoldenFrame, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].RefreshGoldenFrame
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].RefreshGoldenFrame,
	moveq	r0, #1	@ D.40227,
	beq	.L564	@,
	ldr	r3, [r4, #28]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	cmp	r3, r1	@ D.40228, D.40228
	bne	.L571	@,
	b	.L547	@
.L537:
	mov	r3, #0	@ tmp303,
	str	r3, [r0, #180]	@ tmp303, pCurImg_15->error_level
	b	.L538	@
.L568:
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FrameType,
	beq	.L539	@,
	mvn	r3, #0	@ tmp208,
	ldr	r1, [r4, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	mov	r2, #0	@,
	str	r3, [r4, #36]	@ tmp208, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].ToQueFsID
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #36]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].ToQueFsID
	b	.L540	@
.L569:
	ldr	r1, [r6, #192]	@, pToQueImg_55->p_usrdat
	mov	r7, #0	@ tmp239,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp239, pToQueImg_55->p_usrdat
	ldr	r1, [r6, #196]	@, pToQueImg_55->p_usrdat
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #196]	@ tmp239, pToQueImg_55->p_usrdat
	mov	r2, r7	@, tmp239
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	ldr	r1, [r4, #36]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].ToQueFsID
	bl	FSP_SetDisplay	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40227, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L543:
	mov	r1, r3	@, D.40228
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_GetRef	@
	subs	r2, r0, #0	@ D.40228,
	bne	.L566	@,
	ldr	r3, [r4, #32]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	cmp	r3, r1	@ D.40228, D.40228
	beq	.L544	@,
	mov	r1, r3	@, D.40228
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_SetRef	@
.L566:
	ldr	r1, [r4, #24]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].CurFsID
	b	.L544	@
.L567:
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	mov	r5, #0	@ tmp183,
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #28]	@ tmp183, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	str	r5, [r4, #32]	@ tmp183, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_10(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r4, #8]	@ tmp183, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].RefNum
	mov	r3, r0	@ D.40228,
	mvn	r0, #0	@ D.40227,
	str	r3, [r4, #32]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].FwdFsID
	str	r3, [r4, #28]	@ D.40228, MEM[(struct VP6_CODECINFO *)pCtx_10(D) + 224B].GoldenFsID
	b	.L564	@
.L542:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40227,
	b	.L564	@
	.fnend
	.size	VP6DEC_VDMPostProc, .-VP6DEC_VDMPostProc
	.align	2
	.global	VP6DEC_RecycleImage
	.type	VP6DEC_RecycleImage, %function
VP6DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #12288	@ tmp122, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L573	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp131,
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp131, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp131, pImg_10->p_usrdat
.L573:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VP6DEC_RecycleImage, .-VP6DEC_RecycleImage
	.align	2
	.global	VP6DEC_GetRemainImg
	.type	VP6DEC_GetRemainImg, %function
VP6DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	b	GetVoLastImageID	@
	.fnend
	.size	VP6DEC_GetRemainImg, .-VP6DEC_GetRemainImg
	.global	DefaultScanBands
	.global	ZrlUpdateProbs
	.global	ScanBandUpdateProbs
	.global	ZeroRunProbDefaults
	.global	VP6_AcUpdateProbs
	.global	VP6_DcUpdateProbs
	.global	DefaultSignProbs
	.global	DefaultIsShortProbs
	.global	DefaultMvLongProbs
	.global	DefaultMvShortProbs
	.global	VP6_MvUpdateProbs
	.global	VP6_BaselineXmittedProbs
	.global	VP6_ModeVq
	.global	VP6_DcNodeEqs
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	VP6_DcNodeEqs, %object
	.size	VP6_DcNodeEqs, 120
VP6_DcNodeEqs:
@ M:
	.word	122
@ C:
	.word	133
@ M:
	.word	133
@ C:
	.word	51
@ M:
	.word	142
@ C:
	.word	-16
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	0
@ C:
	.word	1
@ M:
	.word	78
@ C:
	.word	171
@ M:
	.word	169
@ C:
	.word	71
@ M:
	.word	221
@ C:
	.word	-30
@ M:
	.word	139
@ C:
	.word	117
@ M:
	.word	214
@ C:
	.word	44
@ M:
	.word	246
@ C:
	.word	-3
@ M:
	.word	168
@ C:
	.word	79
@ M:
	.word	210
@ C:
	.word	38
@ M:
	.word	203
@ C:
	.word	17
	.type	VP6_DcUpdateProbs, %object
	.size	VP6_DcUpdateProbs, 22
VP6_DcUpdateProbs:
	.byte	-110
	.byte	-1
	.byte	-75
	.byte	-49
	.byte	-24
	.byte	-13
	.byte	-18
	.byte	-5
	.byte	-12
	.byte	-6
	.byte	-7
	.byte	-77
	.byte	-1
	.byte	-42
	.byte	-16
	.byte	-6
	.byte	-1
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.space	2
	.type	ZeroRunProbDefaults, %object
	.size	ZeroRunProbDefaults, 28
ZeroRunProbDefaults:
	.byte	-58
	.byte	-59
	.byte	-60
	.byte	-110
	.byte	-58
	.byte	-52
	.byte	-87
	.byte	-114
	.byte	-126
	.byte	-120
	.byte	-107
	.byte	-107
	.byte	-65
	.byte	-7
	.byte	-121
	.byte	-55
	.byte	-75
	.byte	-102
	.byte	98
	.byte	117
	.byte	-124
	.byte	126
	.byte	-110
	.byte	-87
	.byte	-72
	.byte	-16
	.byte	-10
	.byte	-2
	.type	ZrlUpdateProbs, %object
	.size	ZrlUpdateProbs, 28
ZrlUpdateProbs:
	.byte	-37
	.byte	-10
	.byte	-18
	.byte	-7
	.byte	-24
	.byte	-17
	.byte	-7
	.byte	-1
	.byte	-8
	.byte	-3
	.byte	-17
	.byte	-12
	.byte	-15
	.byte	-8
	.byte	-58
	.byte	-24
	.byte	-5
	.byte	-3
	.byte	-37
	.byte	-15
	.byte	-3
	.byte	-1
	.byte	-8
	.byte	-7
	.byte	-12
	.byte	-18
	.byte	-5
	.byte	-1
	.type	VP6_AcUpdateProbs, %object
	.size	VP6_AcUpdateProbs, 396
VP6_AcUpdateProbs:
	.byte	-29
	.byte	-10
	.byte	-26
	.byte	-9
	.byte	-12
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-47
	.byte	-25
	.byte	-25
	.byte	-7
	.byte	-7
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-14
	.byte	-15
	.byte	-5
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-15
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-1
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-50
	.byte	-53
	.byte	-29
	.byte	-17
	.byte	-9
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-49
	.byte	-57
	.byte	-36
	.byte	-20
	.byte	-13
	.byte	-4
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-44
	.byte	-37
	.byte	-26
	.byte	-13
	.byte	-12
	.byte	-3
	.byte	-4
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-20
	.byte	-19
	.byte	-9
	.byte	-4
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-16
	.byte	-16
	.byte	-8
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-26
	.byte	-23
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-18
	.byte	-18
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-8
	.byte	-5
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-31
	.byte	-17
	.byte	-29
	.byte	-25
	.byte	-12
	.byte	-3
	.byte	-13
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-24
	.byte	-22
	.byte	-32
	.byte	-28
	.byte	-14
	.byte	-7
	.byte	-14
	.byte	-4
	.byte	-5
	.byte	-5
	.byte	-1
	.byte	-21
	.byte	-7
	.byte	-18
	.byte	-16
	.byte	-5
	.byte	-1
	.byte	-7
	.byte	-1
	.byte	-3
	.byte	-3
	.byte	-1
	.byte	-7
	.byte	-3
	.byte	-5
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-5
	.byte	-6
	.byte	-7
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-13
	.byte	-12
	.byte	-6
	.byte	-6
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-7
	.byte	-8
	.byte	-6
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	ScanBandUpdateProbs, %object
	.size	ScanBandUpdateProbs, 64
ScanBandUpdateProbs:
	.byte	-1
	.byte	-124
	.byte	-124
	.byte	-97
	.byte	-103
	.byte	-105
	.byte	-95
	.byte	-86
	.byte	-92
	.byte	-94
	.byte	-120
	.byte	110
	.byte	103
	.byte	114
	.byte	-127
	.byte	118
	.byte	124
	.byte	125
	.byte	-124
	.byte	-120
	.byte	114
	.byte	110
	.byte	-114
	.byte	-121
	.byte	-122
	.byte	123
	.byte	-113
	.byte	126
	.byte	-103
	.byte	-73
	.byte	-90
	.byte	-95
	.byte	-85
	.byte	-76
	.byte	-77
	.byte	-92
	.byte	-53
	.byte	-38
	.byte	-31
	.byte	-39
	.byte	-41
	.byte	-50
	.byte	-53
	.byte	-39
	.byte	-27
	.byte	-15
	.byte	-8
	.byte	-13
	.byte	-3
	.byte	-1
	.byte	-3
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.type	VP6_ModeVq, %object
	.size	VP6_ModeVq, 960
VP6_ModeVq:
	.byte	9
	.byte	15
	.byte	32
	.byte	25
	.byte	7
	.byte	19
	.byte	9
	.byte	21
	.byte	1
	.byte	12
	.byte	14
	.byte	12
	.byte	3
	.byte	18
	.byte	14
	.byte	23
	.byte	3
	.byte	10
	.byte	0
	.byte	4
	.byte	48
	.byte	39
	.byte	1
	.byte	2
	.byte	11
	.byte	27
	.byte	29
	.byte	44
	.byte	7
	.byte	27
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	21
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	10
	.byte	32
	.byte	43
	.byte	6
	.byte	23
	.byte	2
	.byte	3
	.byte	1
	.byte	19
	.byte	1
	.byte	6
	.byte	12
	.byte	21
	.byte	0
	.byte	7
	.byte	69
	.byte	83
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	10
	.byte	29
	.byte	3
	.byte	12
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	20
	.byte	1
	.byte	4
	.byte	18
	.byte	36
	.byte	43
	.byte	48
	.byte	13
	.byte	35
	.byte	0
	.byte	2
	.byte	0
	.byte	5
	.byte	3
	.byte	12
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	70
	.byte	44
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	37
	.byte	46
	.byte	8
	.byte	26
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	15
	.byte	0
	.byte	1
	.byte	8
	.byte	21
	.byte	74
	.byte	53
	.byte	22
	.byte	42
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	-115
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	11
	.byte	24
	.byte	1
	.byte	11
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	4
	.byte	10
	.byte	24
	.byte	45
	.byte	21
	.byte	37
	.byte	9
	.byte	29
	.byte	0
	.byte	3
	.byte	1
	.byte	7
	.byte	11
	.byte	25
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	46
	.byte	42
	.byte	0
	.byte	1
	.byte	2
	.byte	10
	.byte	54
	.byte	51
	.byte	10
	.byte	30
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	28
	.byte	32
	.byte	0
	.byte	0
	.byte	3
	.byte	10
	.byte	75
	.byte	51
	.byte	14
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	100
	.byte	46
	.byte	0
	.byte	1
	.byte	3
	.byte	9
	.byte	21
	.byte	37
	.byte	5
	.byte	20
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	27
	.byte	29
	.byte	0
	.byte	1
	.byte	9
	.byte	25
	.byte	53
	.byte	51
	.byte	12
	.byte	34
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	80
	.byte	38
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	69
	.byte	33
	.byte	5
	.byte	16
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	16
	.byte	20
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.byte	104
	.byte	49
	.byte	15
	.byte	33
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-62
	.byte	16
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	9
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.byte	22
	.byte	1
	.byte	0
	.byte	1
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	98
	.byte	25
	.byte	4
	.byte	10
	.byte	123
	.byte	37
	.byte	6
	.byte	4
	.byte	1
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	5
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	1
	.byte	12
	.byte	10
	.byte	0
	.byte	2
	.byte	26
	.byte	14
	.byte	14
	.byte	12
	.byte	0
	.byte	24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	55
	.byte	17
	.byte	1
	.byte	9
	.byte	0
	.byte	36
	.byte	5
	.byte	7
	.byte	1
	.byte	3
	.byte	-47
	.byte	5
	.byte	0
	.byte	0
	.byte	0
	.byte	27
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	5
	.byte	4
	.byte	5
	.byte	0
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	2
	.byte	4
	.byte	1
	.byte	4
	.byte	2
	.byte	2
	.byte	0
	.byte	1
	.byte	-81
	.byte	5
	.byte	0
	.byte	1
	.byte	0
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	83
	.byte	5
	.byte	2
	.byte	3
	.byte	0
	.byte	102
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-23
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	34
	.byte	16
	.byte	112
	.byte	21
	.byte	1
	.byte	28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	6
	.byte	8
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	2
	.byte	5
	.byte	0
	.byte	2
	.byte	-97
	.byte	35
	.byte	2
	.byte	2
	.byte	0
	.byte	25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	5
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	75
	.byte	39
	.byte	5
	.byte	7
	.byte	2
	.byte	48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	11
	.byte	2
	.byte	16
	.byte	1
	.byte	4
	.byte	7
	.byte	10
	.byte	0
	.byte	2
	.byte	-44
	.byte	21
	.byte	0
	.byte	1
	.byte	0
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	-69
	.byte	22
	.byte	1
	.byte	1
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	6
	.byte	0
	.byte	4
	.byte	0
	.byte	1
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	-123
	.byte	6
	.byte	1
	.byte	2
	.byte	1
	.byte	70
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-5
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	3
	.byte	0
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	11
	.byte	4
	.byte	1
	.byte	4
	.byte	0
	.byte	2
	.byte	3
	.byte	2
	.byte	0
	.byte	4
	.byte	49
	.byte	46
	.byte	3
	.byte	4
	.byte	7
	.byte	31
	.byte	42
	.byte	41
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	1
	.byte	4
	.byte	2
	.byte	4
	.byte	0
	.byte	1
	.byte	26
	.byte	25
	.byte	1
	.byte	1
	.byte	2
	.byte	10
	.byte	67
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	14
	.byte	0
	.byte	2
	.byte	31
	.byte	26
	.byte	1
	.byte	6
	.byte	103
	.byte	46
	.byte	1
	.byte	2
	.byte	2
	.byte	10
	.byte	33
	.byte	42
	.byte	0
	.byte	0
	.byte	1
	.byte	4
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	1
	.byte	3
	.byte	0
	.byte	0
	.byte	14
	.byte	31
	.byte	9
	.byte	13
	.byte	14
	.byte	54
	.byte	22
	.byte	29
	.byte	0
	.byte	0
	.byte	2
	.byte	6
	.byte	4
	.byte	18
	.byte	6
	.byte	13
	.byte	1
	.byte	5
	.byte	0
	.byte	1
	.byte	85
	.byte	39
	.byte	0
	.byte	0
	.byte	1
	.byte	9
	.byte	69
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	0
	.byte	31
	.byte	28
	.byte	0
	.byte	0
	.byte	3
	.byte	14
	.byte	-126
	.byte	34
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	3
	.byte	3
	.byte	0
	.byte	1
	.byte	-85
	.byte	25
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	25
	.byte	21
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	17
	.byte	21
	.byte	68
	.byte	29
	.byte	6
	.byte	15
	.byte	13
	.byte	22
	.byte	0
	.byte	0
	.byte	6
	.byte	12
	.byte	3
	.byte	14
	.byte	4
	.byte	10
	.byte	1
	.byte	7
	.byte	0
	.byte	3
	.byte	51
	.byte	39
	.byte	0
	.byte	1
	.byte	2
	.byte	12
	.byte	91
	.byte	44
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	3
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	1
	.byte	81
	.byte	25
	.byte	0
	.byte	0
	.byte	2
	.byte	9
	.byte	106
	.byte	26
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-116
	.byte	37
	.byte	0
	.byte	1
	.byte	1
	.byte	8
	.byte	24
	.byte	33
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	14
	.byte	23
	.byte	1
	.byte	3
	.byte	11
	.byte	53
	.byte	90
	.byte	31
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	5
	.byte	2
	.byte	6
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	123
	.byte	29
	.byte	0
	.byte	0
	.byte	1
	.byte	7
	.byte	57
	.byte	30
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	13
	.byte	14
	.byte	0
	.byte	0
	.byte	4
	.byte	20
	.byte	-81
	.byte	20
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	-54
	.byte	23
	.byte	0
	.byte	0
	.byte	1
	.byte	3
	.byte	2
	.byte	9
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	VP6_MvUpdateProbs, %object
	.size	VP6_MvUpdateProbs, 34
VP6_MvUpdateProbs:
	.byte	-19
	.byte	-10
	.byte	-3
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-6
	.byte	-6
	.byte	-4
	.byte	-25
	.byte	-13
	.byte	-11
	.byte	-3
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-2
	.byte	-5
	.byte	-5
	.byte	-2
	.space	2
	.type	VP6_LoopFilterLimitValues, %object
	.size	VP6_LoopFilterLimitValues, 64
VP6_LoopFilterLimitValues:
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.type	DcQuantTab, %object
	.size	DcQuantTab, 128
DcQuantTab:
	.short	188
	.short	188
	.short	188
	.short	188
	.short	180
	.short	172
	.short	172
	.short	172
	.short	172
	.short	172
	.short	168
	.short	164
	.short	164
	.short	160
	.short	160
	.short	160
	.short	160
	.short	140
	.short	140
	.short	140
	.short	140
	.short	132
	.short	132
	.short	132
	.short	132
	.short	128
	.short	128
	.short	128
	.short	108
	.short	108
	.short	104
	.short	104
	.short	100
	.short	100
	.short	96
	.short	96
	.short	92
	.short	92
	.short	76
	.short	76
	.short	76
	.short	76
	.short	72
	.short	72
	.short	68
	.short	64
	.short	64
	.short	64
	.short	64
	.short	64
	.short	60
	.short	44
	.short	44
	.short	44
	.short	40
	.short	40
	.short	36
	.short	32
	.short	28
	.short	20
	.short	12
	.short	12
	.short	8
	.short	8
	.type	AcQuantTab, %object
	.size	AcQuantTab, 128
AcQuantTab:
	.short	376
	.short	368
	.short	360
	.short	352
	.short	344
	.short	328
	.short	312
	.short	296
	.short	280
	.short	264
	.short	248
	.short	232
	.short	216
	.short	212
	.short	208
	.short	204
	.short	200
	.short	196
	.short	192
	.short	188
	.short	184
	.short	180
	.short	176
	.short	172
	.short	168
	.short	160
	.short	156
	.short	148
	.short	144
	.short	140
	.short	136
	.short	132
	.short	128
	.short	124
	.short	120
	.short	116
	.short	112
	.short	108
	.short	104
	.short	100
	.short	96
	.short	92
	.short	88
	.short	84
	.short	80
	.short	76
	.short	72
	.short	68
	.short	64
	.short	60
	.short	56
	.short	52
	.short	48
	.short	44
	.short	40
	.short	36
	.short	32
	.short	28
	.short	24
	.short	20
	.short	16
	.short	12
	.short	8
	.short	4
	.type	VP6_BaselineXmittedProbs, %object
	.size	VP6_BaselineXmittedProbs, 80
VP6_BaselineXmittedProbs:
	.byte	42
	.byte	2
	.byte	7
	.byte	42
	.byte	22
	.byte	3
	.byte	2
	.byte	5
	.byte	1
	.byte	0
	.byte	69
	.byte	1
	.byte	1
	.byte	44
	.byte	6
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	8
	.byte	1
	.byte	8
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	-27
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	35
	.byte	1
	.byte	6
	.byte	34
	.byte	0
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	122
	.byte	1
	.byte	1
	.byte	46
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	64
	.byte	0
	.byte	64
	.byte	64
	.byte	64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.type	DefaultIsShortProbs, %object
	.size	DefaultIsShortProbs, 2
DefaultIsShortProbs:
	.byte	-94
	.byte	-92
	.space	2
	.type	DefaultMvShortProbs, %object
	.size	DefaultMvShortProbs, 14
DefaultMvShortProbs:
	.byte	-31
	.byte	-110
	.byte	-84
	.byte	-109
	.byte	-42
	.byte	39
	.byte	-100
	.byte	-52
	.byte	-86
	.byte	119
	.byte	-21
	.byte	-116
	.byte	-26
	.byte	-28
	.space	2
	.type	DefaultSignProbs, %object
	.size	DefaultSignProbs, 2
DefaultSignProbs:
	.byte	-128
	.byte	-128
	.space	2
	.type	DefaultMvLongProbs, %object
	.size	DefaultMvLongProbs, 16
DefaultMvLongProbs:
	.byte	-9
	.byte	-46
	.byte	-121
	.byte	68
	.byte	-118
	.byte	-36
	.byte	-17
	.byte	-10
	.byte	-12
	.byte	-72
	.byte	-55
	.byte	44
	.byte	-83
	.byte	-35
	.byte	-17
	.byte	-3
	.type	DefaultScanBands, %object
	.size	DefaultScanBands, 64
DefaultScanBands:
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
