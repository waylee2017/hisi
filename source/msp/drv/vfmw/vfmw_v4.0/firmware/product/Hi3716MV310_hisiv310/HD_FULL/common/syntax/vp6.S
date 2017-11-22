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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vp6)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.vp6.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/vp6.o
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
	sub	r4, r1, #1	@ D.34695, range,
	mul	r2, r4, r2	@ D.34695, D.34695, probability
	mov	r4, r2, lsr #8	@ D.34695, D.34695,
	add	r4, r4, #1	@ range, D.34695,
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
	add	r3, r5, #1	@ D.34699, range,
	ldr	r1, [r1, #12]	@ count, pBr_8(D)->count
	mov	r3, r3, lsr #1	@ split, D.34699,
	mov	r6, r3, asl #16	@ bigsplit, split,
	cmp	r2, r6	@ value, bigsplit
	rsbcs	r3, r3, r5	@ D.34699, split, range
	rsbcs	r2, r6, r2	@ D.34699, bigsplit, value
	movcs	r7, #1	@ bit,
	movcc	r5, r3, asl #1	@ range, split,
	movcs	r5, r3, asl r7	@ range, D.34699,
	movcs	r6, r2, asl r7	@ value, D.34699,
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
	add	r4, r0, #12288	@ tmp217, pCtx,
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r4, #212]	@ D.34718, MEM[(struct VP6_PictureHeader_S *)pCtx_12(D) + 12476B].pic_height_in_mb
	ldr	r2, [r4, #216]	@ D.34718, MEM[(struct VP6_PictureHeader_S *)pCtx_12(D) + 12476B].pic_width_in_mb
	cmp	r3, #2	@ D.34718,
	bls	.L28	@,
	sub	r0, r2, #3	@ D.34718, D.34718,
	movw	r1, #509	@ tmp169,
	cmp	r3, #512	@ D.34718,
	cmpls	r0, r1	@, D.34718, tmp169
	bhi	.L28	@,
	ldr	ip, [r6]	@ D.34719, pCtx_12(D)->pstExtraData
	ldr	r1, [ip, #608]	@ _16->stChanOption.s32ReRangeEn, _16->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _16->stChanOption.s32ReRangeEn,
	ldr	r1, [ip, #32]	@ _16->eCapLevel, _16->eCapLevel
	bne	.L31	@,
	cmp	r1, #25	@ _16->eCapLevel,
	beq	.L55	@,
.L32:
	mov	r5, #3	@ PmvNum,
	mov	r7, r2, asl #4	@ PicWidth, D.34718,
	mov	r8, r3, asl #4	@ PicHeight, D.34718,
	mov	r9, r5	@ DecFsNum, PmvNum
	mov	r10, #5	@ D.34722,
.L37:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp219,,
	bl	__memzero	@
	ldr	r3, [r6]	@ D.34719, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp190,
	str	r7, [sp, #24]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r8, [sp, #28]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #20]	@ _56->s32DnrDispOutEnable, _56->s32DnrDispOutEnable
	str	r8, [sp, #44]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _56->eCapLevel, _56->eCapLevel
	strb	r1, [sp, #12]	@ _56->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r3, #24	@ _56->eCapLevel,
	str	r7, [sp, #40]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #14]	@ tmp190, FspInstCfg.s32RprEnable
	beq	.L43	@,
	uxtb	r5, r5	@ D.34717, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #19]	@ D.34722, FspInstCfg.s32ExpectedDispFsNum
.L46:
	add	r1, sp, #12	@ tmp220,,
	ldr	r0, [r4, #712]	@, pCtx_12(D)->ChanID
	strb	r5, [sp, #20]	@ D.34717, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp196,
	strb	r5, [sp, #16]	@ tmp196, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.34720,
	bne	.L44	@,
	ldr	r1, [r6]	@ D.34719, pCtx_12(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r4, #712]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _77->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _77->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	moveq	r0, #1	@ tmp211,
	streq	r0, [r4, #12]	@ tmp211, MEM[(struct VP6_CODECINFO *)pCtx_12(D) + 224B].Imgbuf_allocated
	beq	.L50	@,
	ldr	r1, .L56	@,
	mov	r0, r7	@, D.34720
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.34716, D.34720
	b	.L50	@
.L28:
	ldr	r1, .L56+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34716,
.L50:
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L31:
	cmp	r1, #25	@ _16->eCapLevel,
	bne	.L32	@,
	ldr	r1, [ip, #568]	@ D.34720, _16->stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.34718, D.34718,
	ldr	r0, [ip, #572]	@ D.34720, _16->stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ D.34718, D.34718,
	cmp	r2, r1	@ D.34718, D.34720
	bhi	.L40	@,
	cmp	r3, r0	@ D.34718, D.34720
	bhi	.L40	@,
	ldr	r1, [ip, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	mov	r7, r2	@ PicWidth, D.34718
	mov	r8, r3	@ PicHeight, D.34718
	ldr	r9, [ip, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r1, #0	@ _16->stChanOption.s32SupportBFrame,
	beq	.L48	@,
.L54:
	add	r5, r9, #1	@ PmvNum, DecFsNum,
	cmp	r5, #17	@ PmvNum,
	movge	r5, #17	@ PmvNum,
.L42:
	ldrb	r10, [ip, #616]	@ zero_extendqisi2	@ D.34722, _16->stChanOption.s32DisplayFrameNum
	b	.L37	@
.L44:
	ldr	r1, .L56+8	@,
	mov	r0, r5	@, tmp196
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34716, tmp196
	b	.L50	@
.L43:
	strb	r2, [sp, #17]	@ tmp190, FspInstCfg.s32ExpectedDecFsNum
	mov	r5, #1	@ D.34717,
	strb	r10, [sp, #19]	@ D.34722, FspInstCfg.s32ExpectedDispFsNum
	b	.L46	@
.L55:
	ldr	r7, [ip, #568]	@ PicWidth, _16->stChanOption.s32MaxWidth
	mov	r2, r2, asl #4	@ D.34718, D.34718,
	ldr	r8, [ip, #572]	@ D.34724, _16->stChanOption.s32MaxHeight
	mov	r3, r3, asl #4	@ D.34718, D.34718,
	cmp	r2, r7	@ D.34718, PicWidth
	bhi	.L34	@,
	cmp	r3, r8	@ D.34718, PicHeight
	bhi	.L34	@,
	ldr	r0, [r4, #12]	@ D.34716, MEM[(struct VP6_CODECINFO *)pCtx_12(D) + 224B].Imgbuf_allocated
	cmp	r0, #1	@ D.34716,
	beq	.L50	@,
	ldr	r3, [ip, #596]	@ _16->stChanOption.s32SupportBFrame, _16->stChanOption.s32SupportBFrame
	ldr	r9, [ip, #588]	@ DecFsNum, _16->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _16->stChanOption.s32SupportBFrame,
	bne	.L54	@,
.L48:
	mov	r5, #1	@ PmvNum,
	b	.L42	@
.L40:
	str	r0, [sp, #4]	@ D.34720,
	mov	r0, #0	@,
	str	r1, [sp]	@ D.34720,
	ldr	r1, .L56+12	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34716,
	b	.L50	@
.L34:
	stmia	sp, {r7, r8}	@,,
	mov	r0, #0	@,
	ldr	r1, .L56+12	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34716,
	b	.L50	@
.L57:
	.align	2
.L56:
	.word	.LC2
	.word	.LC0
	.word	.LC3
	.word	.LC1
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
	add	r4, r0, #12288	@ tmp138, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.34732,
	str	r0, [r4, #24]	@ D.34732, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].CurFsID
	blt	.L66	@,
	mov	r1, r0	@, D.34732
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L67	@,
	ldr	r2, [r4, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].CurFsID
	mov	r0, #18	@,
	ldr	r1, .L68	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #408]	@ pLf_29->pstDecodeFs, pLf_29->pstDecodeFs
	cmp	r3, #0	@ pLf_29->pstDecodeFs,
	beq	.L64	@,
	ldr	r0, [r5, #412]	@ D.34734, pLf_29->pstDispOutFs
	cmp	r0, #0	@ D.34734,
	beq	.L60	@,
	ldr	r3, [r5, #416]	@ pLf_29->pstTfOutFs, pLf_29->pstTfOutFs
	cmp	r3, #0	@ pLf_29->pstTfOutFs,
	beq	.L64	@,
	ldr	r3, [r0, #20]	@ _34->Stride, _34->Stride
	add	r2, r5, #408	@,,
	mov	r0, #18	@,
	ldr	r1, .L68+4	@,
	str	r3, [r4, #40]	@ _34->Stride, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].DDR_Stride
	ldmia	r2, {r2, r3, ip}	@,,,
	ldr	ip, [ip, #12]	@ _43->PhyAddr, _43->PhyAddr
	ldr	r3, [r3, #12]	@ _41->PhyAddr, _41->PhyAddr
	ldr	r2, [r2, #12]	@ _39->PhyAddr, _39->PhyAddr
	str	ip, [sp]	@ _43->PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34731,
.L60:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L64:
	mov	r0, r3	@ D.34731, pLf_29->pstTfOutFs
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L66:
	ldr	r1, .L68+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	mov	r5, #0	@ tmp157,
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #28]	@ tmp157, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	str	r5, [r4, #32]	@ tmp157, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #12608	@, pCtx,
	str	r5, [r4, #8]	@ tmp157, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].RefNum
	add	r1, r1, #40	@,,
	str	r0, [r4, #32]	@ D.34732, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FwdFsID
	str	r0, [r4, #28]	@ D.34732, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].GoldenFsID
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.34731, tmp157
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L67:
	movw	r2, #654	@,
	ldr	r1, .L68+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34731, pLf
	b	.L60	@
.L69:
	.align	2
.L68:
	.word	.LC6
	.word	.LC7
	.word	.LC4
	.word	.LC5
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
	cmp	r0, #1	@ D.34742,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #712]	@, pCtx_4(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L77	@,
	mov	r0, #0	@ D.34742,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L77:
	add	r1, r5, #12608	@, pCtx,
	ldr	r0, [r4, #712]	@, pCtx_4(D)->ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.34742,
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
	add	r5, r0, #1088	@ ivtmp.118, pVp6CodecInfo,
	mov	r4, #1	@ ScanOrderIndex,
	mov	lr, #0	@ tmp208,
	strb	lr, [r0, #960]	@ tmp208, pVp6CodecInfo_16(D)->ModifiedScanOrder
.L79:
	mov	r2, r5	@ ivtmp.118, ivtmp.118
	mov	r3, #1	@ j,
.L81:
	ldrb	ip, [r2, #1]!	@ zero_extendqisi2	@ D.34794, MEM[base: _12, offset: 0B]
	cmp	ip, lr	@ D.34794, i
	addeq	ip, r0, r4	@ tmp211, pVp6CodecInfo, ScanOrderIndex
	addeq	r4, r4, #1	@ ScanOrderIndex, ScanOrderIndex,
	streqb	r3, [ip, #960]	@ j, pVp6CodecInfo_16(D)->ModifiedScanOrder
	add	r3, r3, #1	@ j, j,
	cmp	r3, #64	@ j,
	bne	.L81	@,
	add	lr, lr, #1	@ i, i,
	cmp	lr, #16	@ i,
	bne	.L79	@,
	add	r5, r0, #1020	@ ivtmp.104, pVp6CodecInfo,
	add	r4, r0, #956	@ ivtmp.91, pVp6CodecInfo,
	add	r5, r5, #3	@ ivtmp.104, ivtmp.104,
	add	r4, r4, #3	@ ivtmp.91, ivtmp.91,
	mov	lr, #0	@ i,
.L82:
	mov	r3, #0	@ MaxOffset,
	mov	ip, r4	@ ivtmp.91, ivtmp.91
	mov	r2, r3	@ j, MaxOffset
.L83:
	ldrb	r0, [ip, #1]!	@ zero_extendqisi2	@ MaxOffset, MEM[base: _9, offset: 0B]
	add	r2, r2, #1	@ j, j,
	cmp	r3, r0	@ MaxOffset, MaxOffset
	movcc	r3, r0	@ MaxOffset, MaxOffset
	cmp	r2, lr	@ j, i
	bls	.L83	@,
	uxtb	r3, r3	@ D.34793, MaxOffset
	strb	r3, [r5, #1]!	@ D.34793, MEM[base: _51, offset: 0B]
	ldr	r2, [r1, #12]	@ pbi_34(D)->Vp3VersionNo, pbi_34(D)->Vp3VersionNo
	add	lr, lr, #1	@ i, i,
	cmp	r2, #6	@ pbi_34(D)->Vp3VersionNo,
	addhi	r3, r3, #1	@ tmp216, D.34793,
	strhib	r3, [r5]	@ tmp216, MEM[base: _51, offset: 0B]
	cmp	lr, #64	@ i,
	bne	.L82	@,
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
	add	r2, r0, #404	@ ivtmp.166, ivtmp.175,
	add	r3, r0, #464	@ D.34845, ivtmp.175,
	str	r0, [sp, #40]	@ ivtmp.175, %sfp
	str	r0, [sp, #44]	@ ivtmp.175, %sfp
	str	r2, [sp, #52]	@ ivtmp.166, %sfp
	str	r3, [sp, #48]	@ D.34845, %sfp
.L91:
	ldr	r9, [sp, #52]	@ ivtmp.166, %sfp
	ldr	r3, [sp, #40]	@ ivtmp.175, %sfp
	ldr	fp, [sp, #44]	@ ivtmp.157, %sfp
	mov	r7, r9	@ ivtmp.166, ivtmp.166
	str	r3, [sp, #8]	@ ivtmp.175, %sfp
	str	r3, [sp, #4]	@ ivtmp.175, %sfp
.L97:
	mov	r4, #0	@ total,
	add	r1, sp, #56	@ ivtmp.139,,
	mov	r2, r4	@ j, total
	mov	r0, r7	@ ivtmp.141, ivtmp.166
.L94:
	cmp	r8, r2	@ i, j
	add	r2, r2, #1	@ j, j,
	addeq	ip, sp, #56	@ tmp445,,
	add	r1, r1, #4	@ ivtmp.139, ivtmp.139,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.34841, MEM[base: _247, offset: 0B]
	moveq	r3, #0	@ tmp401,
	streq	r3, [ip, r8, asl #2]	@ tmp401, MEM[symbol: Counts, index: _111, step: 4, offset: 0B]
	add	r0, r0, #1	@ ivtmp.141, ivtmp.141,
	ldreq	r3, [r1, #-4]	@ D.34843, MEM[base: _248, offset: 0B]
	smulbbne	r3, r3, r10	@ D.34843, D.34841, tmp379
	add	r4, r4, r3	@ total, total, D.34843
	strne	r3, [r1, #-4]	@ D.34843, MEM[base: _246, offset: 0B]
	cmp	r2, #10	@ j,
	bne	.L94	@,
	ldr	r2, [sp, #4]	@ ivtmp.150, %sfp
	add	r7, r7, #20	@ ivtmp.166, ivtmp.166,
	add	fp, fp, #90	@ ivtmp.157, ivtmp.157,
	add	r2, r2, #20	@ ivtmp.150, ivtmp.150,
	ldrb	r0, [r2, #394]	@ zero_extendqisi2	@ D.34841, MEM[base: _227, offset: 414B]
	ldrb	r3, [r2, #384]	@ zero_extendqisi2	@ D.34842, MEM[base: _227, offset: 404B]
	add	r1, r0, #1	@ D.34842, D.34841,
	str	r2, [sp, #4]	@ ivtmp.150, %sfp
	add	r1, r1, r3	@, D.34842, D.34842
	rsb	r0, r0, r0, lsl #8	@, D.34841, D.34841,
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #56]	@ D.34843, Counts
	ldr	r3, [sp, #68]	@ D.34843, Counts
	add	r1, r4, #1	@, total,
	ldr	ip, [sp, #72]	@ Counts, Counts
	ldr	r6, [sp, #64]	@ Counts, Counts
	str	r2, [sp, #36]	@ D.34843, %sfp
	add	r6, r2, r6	@ D.34843, D.34843, Counts
	str	r3, [sp, #32]	@ D.34843, %sfp
	add	r2, r3, ip	@ D.34843, D.34843, Counts
	ldr	r3, [sp, #8]	@ ivtmp.154, %sfp
	add	r4, r2, r6	@ D.34843, D.34843, D.34843
	str	r2, [sp, #16]	@ D.34843, %sfp
	add	r3, r3, #10	@ ivtmp.154, ivtmp.154,
	mvn	ip, r0	@ tmp260,
	rsb	r0, r4, r4, lsl #8	@, D.34843, D.34843,
	strb	ip, [r3, #-6]	@ tmp260, MEM[base: _225, offset: 4B]
	str	r3, [sp, #8]	@ ivtmp.154, %sfp
	bl	__aeabi_uidiv	@
	add	r1, r4, #1	@, D.34843,
	add	ip, r0, #1	@ tmp273,,
	rsb	r0, r6, r6, lsl #8	@, D.34843, D.34843,
	strb	ip, [fp, #-46]	@ tmp273, MEM[base: _224, offset: 44B]
	bl	__aeabi_uidiv	@
	ldr	r1, [sp, #76]	@ D.34843, Counts
	ldr	r3, [sp, #88]	@ D.34843, Counts
	ldr	r9, [sp, #60]	@ D.34843, Counts
	ldr	r5, [sp, #84]	@ Counts, Counts
	mov	lr, r1	@ D.34843, D.34843
	ldr	ip, [sp, #92]	@ Counts, Counts
	ldr	r4, [sp, #80]	@ Counts, Counts
	add	r5, r9, r5	@ D.34843, D.34843, Counts
	add	ip, r3, ip	@ D.34843, D.34843, Counts
	str	r3, [sp, #20]	@ D.34843, %sfp
	add	r4, lr, r4	@ D.34843, D.34843, Counts
	add	r1, ip, r5	@ D.34843, D.34843, D.34843
	add	ip, ip, #1	@ D.34843, D.34843,
	str	ip, [sp, #24]	@ D.34843, %sfp
	add	ip, r4, #1	@ D.34843, D.34843,
	str	lr, [sp, #12]	@ D.34843, %sfp
	add	r1, r1, ip	@, D.34843, D.34843
	str	ip, [sp, #28]	@ D.34843, %sfp
	add	r0, r0, #1	@ tmp284,,
	strb	r0, [fp, #-45]	@ tmp284, MEM[base: _224, offset: 45B]
	rsb	r0, r5, r5, lsl #8	@, D.34843, D.34843,
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #36]	@ D.34843, %sfp
	add	r1, r6, #1	@, D.34843,
	add	lr, r0, #1	@ tmp299,,
	rsb	r0, r2, r2, lsl #8	@, D.34843, D.34843,
	strb	lr, [fp, #-44]	@ tmp299, MEM[base: _224, offset: 46B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #32]	@ D.34843, %sfp
	ldr	r2, [sp, #16]	@ D.34843, %sfp
	add	r1, r2, #1	@, D.34843,
	add	r2, r0, #1	@ tmp310,,
	rsb	r0, r3, r3, lsl #8	@, D.34843, D.34843,
	strb	r2, [fp, #-43]	@ tmp310, MEM[base: _224, offset: 47B]
	bl	__aeabi_uidiv	@
	add	r1, r5, #1	@, D.34843,
	add	r3, r0, #1	@ tmp321,,
	rsb	r0, r9, r9, lsl #8	@, D.34843, D.34843,
	strb	r3, [fp, #-42]	@ tmp321, MEM[base: _224, offset: 48B]
	bl	__aeabi_uidiv	@
	ldr	r5, [sp, #24]	@ D.34843, %sfp
	add	r1, r5, r4	@, D.34843, D.34843
	add	r3, r0, #1	@ tmp332,,
	rsb	r0, r4, r4, lsl #8	@, D.34843, D.34843,
	strb	r3, [fp, #-41]	@ tmp332, MEM[base: _224, offset: 49B]
	bl	__aeabi_uidiv	@
	ldr	ip, [sp, #28]	@ D.34843, %sfp
	mov	r1, ip	@, D.34843
	ldr	ip, [sp, #12]	@ D.34843, %sfp
	add	r3, r0, #1	@ tmp343,,
	rsb	r0, ip, ip, lsl #8	@, D.34843, D.34843,
	strb	r3, [fp, #-40]	@ tmp343, MEM[base: _224, offset: 50B]
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #20]	@ D.34843, %sfp
	mov	r1, r5	@, D.34843
	add	r3, r0, #1	@ tmp353,,
	rsb	r0, r2, r2, lsl #8	@, D.34843, D.34843,
	strb	r3, [fp, #-39]	@ tmp353, MEM[base: _224, offset: 51B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #48]	@ D.34845, %sfp
	cmp	r7, r3	@ ivtmp.166, D.34845
	add	r0, r0, #1	@ tmp363,,
	strb	r0, [fp, #-38]	@ tmp363, MEM[base: _224, offset: 52B]
	bne	.L97	@,
	ldr	r3, [sp, #40]	@ ivtmp.175, %sfp
	add	r8, r8, #1	@ i, i,
	cmp	r8, #10	@ i,
	add	r3, r3, #1	@ ivtmp.175, ivtmp.175,
	str	r3, [sp, #40]	@ ivtmp.175, %sfp
	ldr	r3, [sp, #44]	@ ivtmp.176, %sfp
	add	r3, r3, #9	@ ivtmp.176, ivtmp.176,
	str	r3, [sp, #44]	@ ivtmp.176, %sfp
	bne	.L91	@,
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
	add	r8, r0, #1184	@ ivtmp.242, pVp6CodecInfo,
	add	r4, r0, #516	@ ivtmp.245, pVp6CodecInfo,
	add	r8, r8, #5	@ ivtmp.242, ivtmp.242,
	add	r4, r4, #2	@ ivtmp.245, ivtmp.245,
	add	r0, r0, #540	@ D.34925, pVp6CodecInfo,
.L101:
	ldr	r7, .L110	@ ivtmp.234,
	sub	r6, r8, #33	@ ivtmp.231, ivtmp.242,
	add	r5, r4, #6	@ D.34925, ivtmp.245,
	sub	r9, r4, #5	@ ivtmp.208, ivtmp.245,
.L106:
	sub	lr, r6, #5	@ ivtmp.219, ivtmp.231,
	mov	ip, r9	@ ivtmp.208, ivtmp.208
	mov	r1, r7	@ ivtmp.215, ivtmp.234
.L102:
	ldrb	r10, [ip, #1]!	@ zero_extendqisi2	@ D.34924, MEM[base: _81, offset: 0B]
	add	r1, r1, #24	@ ivtmp.215, ivtmp.215,
	ldr	r3, [r1, #-24]	@ MEM[base: _80, offset: 0B], MEM[base: _80, offset: 0B]
	ldr	r2, [r1, #-20]	@ MEM[base: _80, offset: 4B], MEM[base: _80, offset: 4B]
	mul	r3, r3, r10	@ D.34924, MEM[base: _80, offset: 0B], D.34924
	add	r3, r3, #128	@ D.34924, D.34924,
	add	r3, r2, r3, asr #8	@ Temp, MEM[base: _80, offset: 4B], D.34924,
	cmp	r3, #255	@ Temp,
	movge	r3, #255	@ Temp,
	cmp	r3, #1	@ Temp,
	movlt	r3, #1	@ Temp,
	cmp	ip, r4	@ ivtmp.208, ivtmp.245
	strb	r3, [lr, #1]!	@ Temp, MEM[base: _78, offset: 0B]
	bne	.L102	@,
	mov	r2, r6	@ ivtmp.195, ivtmp.231
	mov	r3, r4	@ ivtmp.187, ivtmp.245
.L103:
	ldrb	r1, [r3, #1]!	@ zero_extendqisi2	@ D.34923, MEM[base: _95, offset: 0B]
	cmp	r5, r3	@ D.34925, ivtmp.187
	strb	r1, [r2, #1]!	@ D.34923, MEM[base: _94, offset: 0B]
	bne	.L103	@,
	add	r6, r6, #11	@ ivtmp.231, ivtmp.231,
	add	r7, r7, #8	@ ivtmp.234, ivtmp.234,
	cmp	r8, r6	@ ivtmp.242, ivtmp.231
	bne	.L106	@,
	add	r4, r4, #11	@ ivtmp.245, ivtmp.245,
	add	r8, r8, #33	@ ivtmp.242, ivtmp.242,
	cmp	r4, r0	@ ivtmp.245, D.34925
	bne	.L101	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L111:
	.align	2
.L110:
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
	mov	ip, r2	@ pbi, pbi
	mov	r4, r1	@ pBs, pBs
	str	r0, [sp, #8]	@ pVp6CodecInfo, %sfp
	mov	r1, #128	@,
	str	r2, [sp, #36]	@ pbi, %sfp
	add	r0, sp, #45	@ tmp391,,
	mov	r2, #11	@,
	str	r3, [sp, #4]	@ FrameType, %sfp
	add	r9, ip, #72	@ D.35068, pbi,
	bl	memset	@
	mov	r8, #0	@ ivtmp.377,
.L113:
	ldr	r3, .L161	@ tmp394,
	sub	r10, r8, #1	@ D.35060, ivtmp.377,
	add	r7, r8, #512	@ D.35060, ivtmp.377,
	ldr	fp, [sp, #4]	@ FrameType, %sfp
	add	r10, r3, r10	@ ivtmp.363, tmp394, D.35060
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r7, r7, #2	@ D.35060, D.35060,
	add	r6, sp, #45	@ tmp396,,
	add	r7, r3, r7	@ ivtmp.370, pVp6CodecInfo, D.35060
	str	r8, [sp, #12]	@ ivtmp.377, %sfp
.L117:
	ldrb	r2, [r10, #1]!	@ zero_extendqisi2	@, MEM[base: _23, offset: 0B]
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L114	@,
	mov	r8, #0	@ value,
	mov	r5, #6	@ i,
.L115:
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r5	@ value, value,,
	subs	r5, r5, #1	@ i, i,
	bcs	.L115	@,
	mov	r3, r8, asl #1	@ tmp225, value,
	ands	r3, r3, #255	@ D.35061, tmp225,
	moveq	r2, #1	@ tmp227,
	movne	r2, #0	@ tmp227,
	add	r3, r3, r2	@ tmp228, D.35061, tmp227
	uxtb	r3, r3	@ D.35061, tmp228
	strb	r3, [r6]	@ D.35061, MEM[base: _181, offset: 0B]
	strb	r3, [r7]	@ D.35061,* ivtmp.370
.L116:
	add	r6, r6, #1	@ ivtmp.367, ivtmp.367,
	add	r3, sp, #56	@ tmp393,,
	cmp	r6, r3	@ ivtmp.367, tmp393
	add	r7, r7, #1	@ ivtmp.370, ivtmp.370,
	bne	.L117	@,
	ldr	r8, [sp, #12]	@ ivtmp.377, %sfp
	add	r8, r8, #11	@ ivtmp.377, ivtmp.377,
	cmp	r8, #22	@ ivtmp.377,
	bne	.L113	@,
	ldr	r3, [sp, #4]	@ FrameType, %sfp
	cmp	r3, #0	@ FrameType,
	bne	.L119	@,
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	mov	r2, #28	@,
	ldr	r1, .L161+4	@,
	add	r0, r3, #536	@, pVp6CodecInfo,
	bl	memcpy	@
.L119:
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L123	@,
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	ldr	r5, .L161+8	@ ivtmp.343,
	add	r6, r3, #1088	@ ivtmp.350, pVp6CodecInfo,
	add	r6, r6, #1	@ ivtmp.350, ivtmp.350,
	add	r7, r5, #63	@ D.35067, ivtmp.343,
.L122:
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2	@, MEM[base: _121, offset: 0B]
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L120	@,
	mov	r10, #0	@ value,
	mov	r8, #3	@ i,
.L121:
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r10, r10, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L121	@,
	strb	r10, [r6]	@ value, MEM[base: _112, offset: 0B]
.L120:
	cmp	r5, r7	@ ivtmp.343, D.35067
	add	r6, r6, #1	@ ivtmp.350, ivtmp.350,
	bne	.L122	@,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP6_BuildScanOrder	@
.L123:
	mov	r8, #0	@ ivtmp.326,
.L127:
	ldr	r3, .L161+12	@ tmp400,
	sub	r7, r8, #1	@ D.35060, ivtmp.326,
	add	r10, r8, #536	@ D.35060, ivtmp.326,
	add	fp, r8, #13	@ D.35060, ivtmp.326,
	add	r7, r3, r7	@ ivtmp.314, tmp400, D.35060
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r10, r3, r10	@ ivtmp.318, pVp6CodecInfo, D.35060
	ldr	r3, .L161+12	@ tmp402,
	add	fp, r3, fp	@ D.35067, tmp402, D.35060
.L126:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _123, offset: 0B]
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L124	@,
	mov	r6, #0	@ value,
	mov	r5, #6	@ i,
.L125:
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r6, r6, r0, asl r5	@ value, value,,
	subs	r5, r5, #1	@ i, i,
	bcs	.L125	@,
	mov	r6, r6, asl #1	@ tmp251, value,
	ands	r6, r6, #255	@ D.35061, tmp251,
	moveq	r3, #1	@ tmp253,
	movne	r3, #0	@ tmp253,
	add	r3, r6, r3	@ tmp254, D.35061, tmp253
	strb	r3, [r10]	@ tmp254, MEM[base: _55, offset: 0B]
.L124:
	cmp	r7, fp	@ ivtmp.314, D.35067
	add	r10, r10, #1	@ ivtmp.318, ivtmp.318,
	bne	.L126	@,
	add	r8, r8, #14	@ ivtmp.326, ivtmp.326,
	cmp	r8, #28	@ ivtmp.326,
	bne	.L127	@,
	ldr	r10, [sp, #4]	@ FrameType, %sfp
	mov	r3, #0	@ ivtmp.302,
	str	r3, [sp, #32]	@ ivtmp.302, %sfp
.L136:
	ldr	r3, [sp, #32]	@ ivtmp.302, %sfp
	add	r2, r3, #396	@ D.35062, ivtmp.302,
	str	r2, [sp, #28]	@ D.35062, %sfp
	str	r3, [sp, #24]	@ ivtmp.302, %sfp
	str	r3, [sp, #20]	@ ivtmp.302, %sfp
.L138:
	ldr	r3, [sp, #20]	@ ivtmp.292, %sfp
	add	r2, r3, #66	@ D.35062, ivtmp.292,
	str	r2, [sp, #12]	@ D.35062, %sfp
	str	r3, [sp, #4]	@ ivtmp.292, %sfp
	ldr	r3, [sp, #24]	@ ivtmp.294, %sfp
	sub	r3, r3, #1	@ D.35060, ivtmp.294,
	str	r3, [sp, #16]	@ D.35060, %sfp
.L135:
	ldr	r3, [sp, #4]	@ ivtmp.278, %sfp
	add	r5, sp, #45	@ tmp413,,
	ldr	r2, [sp, #16]	@ D.35060, %sfp
	add	r6, r3, #564	@ D.35060, ivtmp.278,
	add	r7, r2, r3	@ D.35060, D.35060, ivtmp.278
	ldr	r3, .L161+16	@ tmp411,
	add	r7, r3, r7	@ ivtmp.264, tmp411, D.35060
	ldr	r3, [sp, #8]	@ pVp6CodecInfo, %sfp
	add	r6, r3, r6	@ ivtmp.271, pVp6CodecInfo, D.35060
.L132:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _193, offset: 0B]
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L129	@,
	mov	fp, #0	@ value,
	mov	r8, #6	@ i,
.L130:
	mov	r1, r9	@, D.35068
	mov	r0, r4	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L130	@,
	mov	fp, fp, asl #1	@ tmp266, value,
	ands	fp, fp, #255	@ D.35061, tmp266,
	moveq	r3, #1	@ tmp268,
	movne	r3, #0	@ tmp268,
	add	r3, fp, r3	@ tmp269, D.35061, tmp268
	uxtb	r3, r3	@ D.35061, tmp269
	strb	r3, [r5]	@ D.35061, MEM[base: _218, offset: 0B]
	strb	r3, [r6]	@ D.35061,* ivtmp.271
.L131:
	add	r5, r5, #1	@ ivtmp.268, ivtmp.268,
	add	r3, sp, #56	@ tmp403,,
	cmp	r5, r3	@ ivtmp.268, tmp403
	add	r6, r6, #1	@ ivtmp.271, ivtmp.271,
	bne	.L132	@,
	ldr	r3, [sp, #4]	@ ivtmp.278, %sfp
	ldr	r2, [sp, #12]	@ D.35062, %sfp
	add	r3, r3, #11	@ ivtmp.278, ivtmp.278,
	str	r3, [sp, #4]	@ ivtmp.278, %sfp
	cmp	r3, r2	@ ivtmp.278, D.35062
	bne	.L135	@,
	ldr	r2, [sp, #24]	@ ivtmp.294, %sfp
	ldr	r3, [sp, #20]	@ ivtmp.292, %sfp
	sub	r2, r2, #132	@ ivtmp.294, ivtmp.294,
	str	r2, [sp, #24]	@ ivtmp.294, %sfp
	ldr	r2, [sp, #28]	@ D.35062, %sfp
	add	r3, r3, #198	@ ivtmp.292, ivtmp.292,
	str	r3, [sp, #20]	@ ivtmp.292, %sfp
	cmp	r3, r2	@ ivtmp.292, D.35062
	bne	.L138	@,
	ldr	r3, [sp, #32]	@ ivtmp.302, %sfp
	add	r3, r3, #66	@ ivtmp.302, ivtmp.302,
	str	r3, [sp, #32]	@ ivtmp.302, %sfp
	cmp	r3, #198	@ ivtmp.302,
	bne	.L136	@,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r0, [sp, #8]	@, %sfp
	bl	VP6_ConfigureContexts	@
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L129:
	cmp	r10, #0	@ FrameType,
	ldreqb	r3, [r5]	@ zero_extendqisi2	@ MEM[base: _93, offset: 0B], MEM[base: _93, offset: 0B]
	streqb	r3, [r6]	@ MEM[base: _93, offset: 0B],* ivtmp.271
	b	.L131	@
.L114:
	cmp	fp, #0	@ FrameType,
	ldreqb	r3, [r6]	@ zero_extendqisi2	@ MEM[base: _185, offset: 0B], MEM[base: _185, offset: 0B]
	streqb	r3, [r7]	@ MEM[base: _185, offset: 0B],* ivtmp.370
	b	.L116	@
.L162:
	.align	2
.L161:
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
	add	r5, r1, #72	@ D.35083, pbi,
	mov	r2, #205	@,
	mov	r7, r0	@ pBs, pBs
	mov	r1, r5	@, D.35083
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@ D.35084
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r2, #171	@,
	mov	r1, r5	@, D.35083
	mov	r6, r0, asl #1	@ tmp136,,
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r6, r6, #1	@ sign, tmp136,
	cmp	r0, #0	@,
	beq	.L174	@,
	mov	r2, #199	@,
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r8, #0	@ diff,
	movne	r4, #6	@ i,
	beq	.L175	@,
.L170:
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r4	@ diff, diff,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L170	@,
	mul	r0, r8, r6	@ D.35085, diff, sign
	mov	r0, r0, asl #2	@ D.35082, D.35085,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L175:
	mov	r2, #140	@,
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L167	@,
	mov	r0, r6, asl #4	@ tmp141, sign,
	sub	r0, r0, r6, asl #2	@ D.35082, tmp141, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L174:
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	mov	r2, #83	@,
	bl	Vp6_Vfmw_DecodeBool	@
	rsb	r0, r0, #3	@ D.35084,,
	mov	r0, r6, asl r0	@ D.35082, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L167:
	mov	r2, #125	@,
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L168	@,
	mov	r0, r6, asl #4	@ D.35082, sign,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L168:
	mov	r1, r5	@, D.35083
	mov	r0, r7	@, pBs
	mov	r2, #104	@,
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	movne	r0, r6, asl #4	@ tmp145, sign,
	addne	r0, r0, r6, lsl #2	@ D.35082, tmp145, sign,
	moveq	r0, r6, asl #5	@ tmp149, sign,
	subeq	r0, r0, r6, asl #3	@ D.35082, tmp149, sign,
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
	add	r7, r2, #72	@ D.35162, pbi,
	ldr	r10, .L196	@ tmp177,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r2	@ pbi, pbi
	mov	r5, r1	@ pBs, pBs
	mov	r9, r0	@ ivtmp.458, pVp6CodecInfo
	mov	r8, #0	@ ivtmp.457,
	str	r0, [sp, #4]	@ pVp6CodecInfo, %sfp
.L183:
	mov	r2, #174	@,
	mov	r1, r7	@, D.35162
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L177	@,
	mov	fp, #0	@ whichVector,
	mov	r4, #3	@ i,
.L178:
	mov	r1, r7	@, D.35162
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r4	@ whichVector, whichVector,,
	subs	r4, r4, #1	@ i, i,
	bcs	.L178	@,
	mov	r3, r8, asl #4	@ D.35159, ivtmp.457,
	mov	r2, fp, asl #4	@ tmp157, whichVector,
	add	r2, r2, fp, lsl #2	@ tmp158, tmp157, whichVector,
	add	r0, r3, #20	@ D.35159, D.35159,
	add	r0, r2, r0	@ D.35159, tmp158, D.35159
	add	r3, r3, r2	@ D.35159, D.35159, tmp158
	add	r2, r9, #412	@ ivtmp.431, ivtmp.458,
	add	r3, r10, r3	@ ivtmp.428, tmp177, D.35159
	add	r0, r10, r0	@ D.35165, tmp177, D.35159
	add	r2, r2, #1	@ ivtmp.431, ivtmp.431,
.L179:
	ldrb	r1, [r3]	@ zero_extendqisi2	@ D.35160, MEM[base: _91, offset: 0B]
	add	r3, r3, #2	@ ivtmp.428, ivtmp.428,
	strb	r1, [r2, #1]!	@ D.35160, MEM[base: _92, offset: 0B]
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ D.35160, MEM[base: _91, offset: 1B]
	cmp	r3, r0	@ ivtmp.428, D.35165
	strb	r1, [r2, #-10]	@ D.35160, MEM[base: _92, offset: 4294967286B]
	bne	.L179	@,
.L177:
	mov	r2, #254	@,
	mov	r1, r7	@, D.35162
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L184	@,
	mov	fp, r9	@ ivtmp.401, ivtmp.458
	mov	r4, #0	@ i,
.L182:
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [fp, #414]	@ zero_extendqisi2	@ D.35161, MEM[base: _64, offset: 414B]
	adds	r0, r3, r0	@ diff, D.35161,
	movmi	r0, #0	@ D.35157,
	bmi	.L180	@,
	cmp	r0, #255	@ diff,
	movge	r0, #255	@ D.35161,
	uxtb	r0, r0	@ D.35157, D.35161
.L180:
	strb	r0, [fp, #414]	@ D.35157, MEM[base: _64, offset: 414B]
	mov	r1, r6	@, pbi
	mov	r0, r5	@, pBs
	bl	VP6_decodeModeDiff	@
	ldrb	r3, [fp, #404]	@ zero_extendqisi2	@ D.35161, MEM[base: _64, offset: 404B]
	adds	r0, r3, r0	@ diff, D.35161,
	movmi	r0, #0	@ D.35157,
	bmi	.L181	@,
	cmp	r0, #255	@ diff,
	movge	r0, #255	@ D.35161,
	uxtb	r0, r0	@ D.35157, D.35161
.L181:
	add	r4, r4, #1	@ i, i,
	strb	r0, [fp, #404]	@ D.35157, MEM[base: _64, offset: 404B]
	cmp	r4, #10	@ i,
	add	fp, fp, #1	@ ivtmp.401, ivtmp.401,
	bne	.L182	@,
.L184:
	add	r8, r8, #20	@ ivtmp.457, ivtmp.457,
	add	r9, r9, #20	@ ivtmp.458, ivtmp.458,
	cmp	r8, #60	@ ivtmp.457,
	bne	.L183	@,
	mov	r1, r6	@, pbi
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	VP6_BuildModeTree	@
.L197:
	.align	2
.L196:
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
	add	r4, r2, #72	@ D.35261, pbi,
	ldr	r9, .L236	@ tmp226,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ pBs, pBs
	mov	r8, r0	@ ivtmp.547, pVp6CodecInfo
	mov	r7, #0	@ ivtmp.546,
	mov	r10, #1	@ tmp245,
	str	r0, [sp, #4]	@ pVp6CodecInfo, %sfp
.L206:
	ldrb	r2, [r9, r7]	@ zero_extendqisi2	@, MEM[symbol: VP6_MvUpdateProbs, index: ivtmp.546_160, offset: 0B]
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L202	@,
	mov	fp, #0	@ value,
	mov	r6, #6	@ i,
.L200:
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L200	@,
	mov	fp, fp, asl #1	@ tmp187, value,
	ands	fp, fp, #255	@ D.35257, tmp187,
	strneb	fp, [r8, #2]	@ D.35257, MEM[base: _1, offset: 2B]
	streqb	r10, [r8, #2]	@ tmp245, MEM[base: _24, offset: 2B]
.L202:
	add	r3, r9, r7	@ D.35259, tmp226, ivtmp.546
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, MEM[base: _33, offset: 1B]
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L205	@,
	mov	fp, #0	@ value,
	mov	r6, #6	@ i,
.L203:
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L203	@,
	mov	fp, fp, asl #1	@ tmp193, value,
	ands	fp, fp, #255	@ D.35257, tmp193,
	strneb	fp, [r8]	@ D.35257, MEM[base: _61, offset: 0B]
	streqb	r10, [r8]	@ tmp245, MEM[base: _75, offset: 0B]
.L205:
	add	r7, r7, #17	@ ivtmp.546, ivtmp.546,
	add	r8, r8, #1	@ ivtmp.547, ivtmp.547,
	cmp	r7, #34	@ ivtmp.546,
	bne	.L206	@,
	ldr	r3, [sp, #4]	@ pVp6CodecInfo, %sfp
	add	r8, r3, #488	@ ivtmp.523, pVp6CodecInfo,
	mov	r3, #0	@ ivtmp.527,
	add	r8, r8, #3	@ ivtmp.523, ivtmp.523,
	str	r3, [sp]	@ ivtmp.527, %sfp
.L207:
	ldr	r3, [sp]	@ ivtmp.527, %sfp
	sub	r6, r8, #7	@ ivtmp.516, ivtmp.523,
	add	r7, r3, #1	@ D.35262, ivtmp.527,
	add	r7, r9, r7	@ ivtmp.509, tmp226, D.35262
.L213:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _120, offset: 0B]
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L209	@,
	mov	fp, #0	@ value,
	mov	r10, #6	@ i,
.L210:
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r10	@ value, value,,
	subs	r10, r10, #1	@ i, i,
	bcs	.L210	@,
	mov	r2, fp, asl #1	@ tmp201, value,
	ands	r2, r2, #255	@ D.35257, tmp201,
	strneb	r2, [r6]	@ D.35257, MEM[base: _121, offset: 0B]
	moveq	r3, #1	@ tmp249,
	streqb	r3, [r6]	@ tmp249, MEM[base: _138, offset: 0B]
.L209:
	add	r6, r6, #1	@ ivtmp.516, ivtmp.516,
	cmp	r8, r6	@ ivtmp.523, ivtmp.516
	bne	.L213	@,
	ldr	r3, [sp]	@ ivtmp.527, %sfp
	add	r8, r8, #7	@ ivtmp.523, ivtmp.523,
	add	r3, r3, #17	@ ivtmp.527, ivtmp.527,
	str	r3, [sp]	@ ivtmp.527, %sfp
	cmp	r3, #34	@ ivtmp.527,
	bne	.L207	@,
	ldr	r3, [sp, #4]	@ pVp6CodecInfo, %sfp
	add	r8, r3, #504	@ ivtmp.489, pVp6CodecInfo,
	mov	r3, #0	@ ivtmp.493,
	add	r8, r8, #2	@ ivtmp.489, ivtmp.489,
	str	r3, [sp]	@ ivtmp.493, %sfp
.L214:
	ldr	r3, [sp]	@ ivtmp.493, %sfp
	sub	r6, r8, #8	@ ivtmp.482, ivtmp.489,
	add	r7, r3, #8	@ D.35262, ivtmp.493,
	add	r7, r9, r7	@ ivtmp.475, tmp226, D.35262
.L220:
	ldrb	r2, [r7, #1]!	@ zero_extendqisi2	@, MEM[base: _190, offset: 0B]
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool	@
	cmp	r0, #0	@,
	beq	.L216	@,
	mov	fp, #0	@ value,
	mov	r10, #6	@ i,
.L217:
	mov	r1, r4	@, D.35261
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r10	@ value, value,,
	subs	r10, r10, #1	@ i, i,
	bcs	.L217	@,
	mov	r2, fp, asl #1	@ tmp213, value,
	ands	r2, r2, #255	@ D.35257, tmp213,
	strneb	r2, [r6]	@ D.35257, MEM[base: _148, offset: 0B]
	moveq	r3, #1	@ tmp256,
	streqb	r3, [r6]	@ tmp256, MEM[base: _182, offset: 0B]
.L216:
	add	r6, r6, #1	@ ivtmp.482, ivtmp.482,
	cmp	r8, r6	@ ivtmp.489, ivtmp.482
	bne	.L220	@,
	ldr	r3, [sp]	@ ivtmp.493, %sfp
	add	r8, r8, #8	@ ivtmp.489, ivtmp.489,
	add	r3, r3, #17	@ ivtmp.493, ivtmp.493,
	str	r3, [sp]	@ ivtmp.493, %sfp
	cmp	r3, #34	@ ivtmp.493,
	bne	.L214	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L237:
	.align	2
.L236:
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
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.35265, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.35265, *pBoolTreeProbs_3(D)
	str	lr, [sp, #-4]!	@,
	.save {lr}
	smulbb	r3, r2, r3	@ D.35266, D.35265, D.35265
	mov	r3, r3, lsr #8	@ D.35266, D.35266,
	str	r3, [r1, #44]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 44B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 1B]
	ldrb	r2, [r0]	@ zero_extendqisi2	@ D.35266, *pBoolTreeProbs_3(D)
	rsb	r3, r3, #255	@ D.35266, D.35266,
	mul	r3, r2, r3	@ D.35266, D.35266, D.35266
	mov	r3, r3, lsr #8	@ D.35266, D.35266,
	str	r3, [r1]	@ D.35266, *pHuffProbs_1(D)
	ldrb	ip, [r0]	@ zero_extendqisi2	@ D.35266, *pBoolTreeProbs_3(D)
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 2B]
	rsb	ip, ip, #255	@ Prob, D.35266,
	mul	r3, r3, ip	@ D.35266, D.35266, Prob
	mov	r3, r3, lsr #8	@ D.35266, D.35266,
	str	r3, [r1, #4]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 4B]
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 2B]
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 3B]
	rsb	r3, r3, #255	@ D.35266, D.35266,
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 4B]
	mul	r3, ip, r3	@ D.35266, Prob, D.35266
	mov	r3, r3, lsr #8	@ Prob, D.35266,
	mul	r2, r2, r3	@ D.35266, D.35266, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.35266,
	mul	r2, lr, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #8]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 8B]
	ldrb	r2, [r0, #4]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 4B]
	ldrb	lr, [r0, #5]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 5B]
	rsb	r2, r2, #255	@ D.35266, D.35266,
	mul	r2, r2, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ Prob1, D.35266,
	mul	ip, lr, r2	@ D.35266, D.35266, Prob1
	mov	ip, ip, lsr #8	@ D.35266, D.35266,
	str	ip, [r1, #12]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 12B]
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 5B]
	rsb	ip, ip, #255	@ D.35266, D.35266,
	mul	r2, ip, r2	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #16]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 16B]
	ldrb	ip, [r0, #3]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 3B]
	ldrb	r2, [r0, #6]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 6B]
	rsb	ip, ip, #255	@ D.35266, D.35266,
	ldrb	lr, [r0, #7]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 7B]
	mul	r3, ip, r3	@ D.35266, D.35266, Prob
	mov	r3, r3, lsr #8	@ Prob, D.35266,
	mul	r2, r2, r3	@ D.35266, D.35266, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.35266,
	mul	r2, lr, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #20]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 20B]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 7B]
	rsb	r2, r2, #255	@ D.35266, D.35266,
	mul	r2, r2, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #24]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 24B]
	ldrb	ip, [r0, #6]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 6B]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 8B]
	rsb	ip, ip, #255	@ D.35266, D.35266,
	ldrb	lr, [r0, #9]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 9B]
	mul	r3, ip, r3	@ D.35266, D.35266, Prob
	mov	r3, r3, lsr #8	@ Prob, D.35266,
	mul	r2, r2, r3	@ D.35266, D.35266, Prob
	mov	ip, r2, lsr #8	@ Prob1, D.35266,
	mul	r2, lr, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #28]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 28B]
	ldrb	r2, [r0, #9]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 9B]
	rsb	r2, r2, #255	@ D.35266, D.35266,
	mul	r2, r2, ip	@ D.35266, D.35266, Prob1
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #32]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 32B]
	ldrb	r2, [r0, #8]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 8B]
	ldrb	ip, [r0, #10]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 10B]
	rsb	r2, r2, #255	@ D.35266, D.35266,
	mul	r3, r2, r3	@ D.35266, D.35266, Prob
	mov	r3, r3, lsr #8	@ Prob, D.35266,
	mul	r2, ip, r3	@ D.35266, D.35266, Prob
	mov	r2, r2, lsr #8	@ D.35266, D.35266,
	str	r2, [r1, #36]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 36B]
	ldrb	r2, [r0, #10]	@ zero_extendqisi2	@ D.35266, MEM[(HI_U8 *)pBoolTreeProbs_3(D) + 10B]
	rsb	r2, r2, #255	@ D.35266, D.35266,
	mul	r3, r2, r3	@ D.35266, D.35266, Prob
	mov	r3, r3, lsr #8	@ D.35266, D.35266,
	str	r3, [r1, #40]	@ D.35266, MEM[(HI_U32 *)pHuffProbs_1(D) + 40B]
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
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ D.35270, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.35270, *pBoolTreeProbs_2(D)
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 2B]
	smulbb	r3, ip, r3	@ D.35271, D.35270, D.35270
	mov	r3, r3, lsr #8	@ Prob, D.35271,
	mul	r2, r2, r3	@ D.35271, D.35271, Prob
	mov	r2, r2, lsr #8	@ D.35271, D.35271,
	str	r2, [r1]	@ D.35271, *pHuffProbs_13(D)
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 2B]
	rsb	r2, r2, #255	@ D.35272, D.35272,
	mul	r3, r3, r2	@ D.35271, Prob, D.35272
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #4]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 4B]
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 1B]
	ldrb	ip, [r0]	@ zero_extendqisi2	@ D.35271, *pBoolTreeProbs_2(D)
	rsb	r3, r3, #255	@ D.35272, D.35272,
	ldrb	lr, [r0, #3]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 3B]
	mul	r3, ip, r3	@ D.35271, D.35271, D.35272
	mov	r2, r3, lsr #8	@ Prob, D.35271,
	mul	r3, lr, r2	@ D.35271, D.35271, Prob
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #8]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 8B]
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 3B]
	rsb	r3, r3, #255	@ D.35272, D.35272,
	mul	r3, r3, r2	@ D.35271, D.35272, Prob
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #12]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 12B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.35272, *pBoolTreeProbs_2(D)
	ldrb	r4, [r0, #4]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	rsb	r3, r3, #255	@ D.35272, D.35272,
	ldrb	ip, [r0, #5]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 5B]
	ldrb	lr, [r0, #6]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 6B]
	mul	r3, r4, r3	@ D.35271, D.35271, D.35272
	mov	r3, r3, lsr #8	@ Prob, D.35271,
	mul	r3, ip, r3	@ D.35271, D.35271, Prob
	mov	r2, r3, lsr #8	@ Prob, D.35271,
	mul	r3, lr, r2	@ D.35271, D.35271, Prob
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #16]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 16B]
	ldrb	r3, [r0, #6]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 6B]
	rsb	r3, r3, #255	@ D.35272, D.35272,
	mul	r3, r3, r2	@ D.35271, D.35272, Prob
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #20]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 20B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.35272, *pBoolTreeProbs_2(D)
	ldrb	lr, [r0, #4]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	rsb	r3, r3, #255	@ D.35272, D.35272,
	ldrb	r2, [r0, #5]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 5B]
	ldrb	ip, [r0, #7]	@ zero_extendqisi2	@ D.35271, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 7B]
	mul	r3, lr, r3	@ D.35271, D.35271, D.35272
	rsb	r2, r2, #255	@ D.35272, D.35272,
	mov	r3, r3, lsr #8	@ Prob, D.35271,
	mul	r3, r2, r3	@ D.35271, D.35272, Prob
	mov	r3, r3, lsr #8	@ Prob, D.35271,
	mul	r2, ip, r3	@ D.35271, D.35271, Prob
	mov	r2, r2, lsr #8	@ D.35271, D.35271,
	str	r2, [r1, #24]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 24B]
	ldrb	r2, [r0, #7]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 7B]
	rsb	r2, r2, #255	@ D.35272, D.35272,
	mul	r3, r2, r3	@ D.35271, D.35272, Prob
	mov	r3, r3, lsr #8	@ D.35271, D.35271,
	str	r3, [r1, #28]	@ D.35271, MEM[(HI_U32 *)pHuffProbs_13(D) + 28B]
	ldrb	r3, [r0, #4]	@ zero_extendqisi2	@ D.35272, MEM[(HI_U8 *)pBoolTreeProbs_2(D) + 4B]
	ldrb	r2, [r0]	@ zero_extendqisi2	@ D.35272, *pBoolTreeProbs_2(D)
	rsb	r0, r3, #255	@ D.35272, D.35272,
	rsb	r3, r2, #255	@ D.35272, D.35272,
	mul	r3, r3, r0	@ D.35271, D.35272, D.35272
	mov	r3, r3, lsr #8	@ Prob, D.35271,
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
	beq	.L243	@,
	mov	r3, r6, asl #4	@ tmp134, prior,
	sub	r7, r7, r1, asl #2	@ D.35277, tmp130, node,
	sub	r3, r3, r6, asl #2	@ D.35277, tmp134, prior,
	add	r7, r0, r7	@ D.35276, pSn, D.35277
	add	r3, r0, r3	@ D.35276, pSn, D.35277
	ldr	r5, [r7, #8]	@ D.35277, _29->freq
	ldr	ip, [r3, #8]	@ _32->freq, _32->freq
	cmp	r5, ip	@ D.35277, _32->freq
	bls	.L244	@,
	mov	r4, r6	@ prior, prior
	b	.L246	@
.L255:
	add	r3, r0, r3	@ D.35276, pSn, D.35277
	ldr	lr, [r3, #8]	@ _13->freq, _13->freq
	cmp	lr, r5	@ _13->freq, D.35277
	bcs	.L254	@,
	mov	r4, ip	@ prior, prior
.L246:
	ldr	ip, [r3, #4]	@ prior, _37->next
	cmn	ip, #1	@ prior,
	mov	r3, ip, asl #4	@ tmp139, prior,
	sub	r3, r3, ip, asl #2	@ D.35277, tmp139, prior,
	bne	.L255	@,
.L245:
	mov	r3, r4, asl #4	@ tmp144, prior,
	sub	r4, r3, r4, asl #2	@ tmp145, tmp144, prior,
	add	r0, r0, r4	@ tmp146, pSn, tmp145
	str	r1, [r0, #4]	@ node, _21->next
	str	ip, [r7, #4]	@ prior,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L254:
	cmp	r6, ip	@ prior, prior
	bne	.L245	@,
.L248:
	str	r1, [r2]	@ node, *pStartnode_5(D)
	str	ip, [r7, #4]	@ prior,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L243:
	sub	r7, r7, r1, asl #2	@ D.35277, tmp149, node,
	add	r7, r0, r7	@ D.35276, pSn, D.35277
.L244:
	mov	ip, r6	@ prior, prior
	b	.L248	@
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
	beq	.L261	@,
	add	r5, sp, #8	@ tmp395,,
	sub	r1, r1, #4	@ ivtmp.581, pCounts,
	mov	r8, #1	@ tmp397,
	mvn	r7, #0	@ tmp399,
	mov	ip, r5	@ ivtmp.588, tmp395
.L260:
	mov	r2, r0, asl #4	@ tmp282, i,
	add	r3, sp, #368	@ tmp405,,
	sub	r2, r2, r0, asl #2	@ tmp283, tmp282, i,
	ldr	lr, [r1, #4]!	@ D.35317, MEM[base: _81, offset: 0B]
	add	r2, r3, r2	@ tmp284, tmp405, tmp283
	cmp	lr, #0	@ D.35317,
	ldrb	r3, [r2, #-360]	@ zero_extendqisi2	@ sn[i_66].value.selector, sn[i_66].value.selector
	moveq	lr, #1	@ D.35317,
	streq	r8, [r1]	@ tmp397, MEM[base: _81, offset: 0B]
	orr	r3, r3, #1	@ sn[i_66].value.value, sn[i_66].value.selector,
	bfi	r3, r0, #1, #4	@ sn[i_66].value.value, i,,
	add	r0, r0, #1	@ i, i,
	cmp	r0, r4	@ i, values
	bfc	r3, #5, #3	@ sn[i_66].value.unused,,
	strb	r3, [r2, #-360]	@ sn[i_66].value.unused, sn[i_66].value.unused
	stmib	ip, {r7, lr}	@ ivtmp.588,,
	add	ip, ip, #12	@ ivtmp.588, ivtmp.588,
	bne	.L260	@,
	cmp	r4, #1	@ values,
	bls	.L261	@,
	add	r8, sp, #4	@ tmp392,,
	mov	r7, #1	@ i,
.L262:
	mov	r1, r7	@, i
	mov	r2, r8	@, tmp392
	mov	r0, r5	@, tmp395
	add	r7, r7, #1	@ i, i,
	bl	VP6_InsertSorted	@
	cmp	r7, r4	@ i, values
	bne	.L262	@,
	ldr	r2, [sp, #4]	@ D.35312, startnode
.L258:
	mov	r3, r2, asl #2	@ tmp390, D.35312,
	mov	r2, r2, asl #4	@ tmp391, D.35312,
	add	r0, sp, #368	@ tmp406,,
	rsb	r1, r3, r2	@ tmp313, tmp390, tmp391
	add	r1, r0, r1	@ tmp314, tmp406, tmp313
	ldr	r0, [r1, #-356]	@ D.35317, sn[_65].next
	cmn	r0, #1	@ D.35317,
	beq	.L256	@,
	mov	r1, r4, asl #2	@ tmp393, values,
	mov	ip, r4, asl #4	@ tmp394, values,
	rsb	r10, r1, ip	@ D.35315, tmp393, tmp394
	add	r5, sp, #8	@ tmp395,,
	sub	r7, r4, #2	@ D.35317, values,
	add	r6, r6, r4, lsl #1	@ ivtmp.566, pHn, values,
	add	r10, r5, r10	@ ivtmp.572, tmp395, D.35315
	and	r7, r7, #15	@ ivtmp.568, D.35317,
	add	r8, sp, #4	@ tmp392,,
	mvn	r9, #0	@ tmp396,
.L264:
	add	lr, sp, #368	@ tmp407,,
	rsb	r1, r1, ip	@ tmp358, tmp393, tmp394
	add	r1, lr, r1	@ tmp359, tmp407, tmp358
	mov	ip, r0, asl #4	@ tmp327, D.35317,
	rsb	r3, r3, r2	@ tmp334, tmp390, tmp391
	sub	ip, ip, r0, asl #2	@ tmp328, tmp327, D.35317,
	ldrb	fp, [r1, #-360]	@ zero_extendqisi2	@, sn[values_68].value.selector
	add	r3, lr, r3	@ tmp335, tmp408, tmp334
	add	ip, lr, ip	@ tmp329, tmp409, tmp328
	mov	r2, r8	@, tmp392
	and	fp, fp, #254	@ sn[values_68].value.value, sn[values_68].value.selector,
	ldr	r0, [r3, #-352]	@ sn[_74].freq, sn[_74].freq
	ldrb	lr, [ip, #-360]	@ zero_extendqisi2	@ sn[_75].value, sn[_75].value
	bfi	fp, r7, #1, #4	@ sn[values_68].value.value, ivtmp.568,,
	ldrb	r3, [r3, #-360]	@ zero_extendqisi2	@ sn[_74].value, sn[_74].value
	sub	r7, r7, #1	@ tmp387, ivtmp.568,
	strb	fp, [r1, #-360]	@ sn[values_68].value.value, sn[values_68].value.value
	mov	r1, r4	@, values
	ldr	fp, [ip, #-352]	@ sn[_75].freq, sn[_75].freq
	add	r4, r4, #1	@ values, values,
	str	r9, [r10, #4]	@ tmp396, MEM[base: _78, offset: 4B]
	sub	r6, r6, #2	@ ivtmp.566, ivtmp.566,
	add	r0, fp, r0	@ sumfreq, sn[_75].freq, sn[_74].freq
	str	r0, [r10, #8]	@ sumfreq, MEM[base: _78, offset: 8B]
	ldr	ip, [ip, #-356]	@ sn[_75].next, sn[_75].next
	mov	r0, r5	@, tmp395
	strb	lr, [r6, #-1]	@ sn[_75].value, MEM[base: _2, offset: 4294967293B]
	add	r10, r10, #12	@ ivtmp.572, ivtmp.572,
	strb	r3, [r6, #-2]	@ sn[_74].value, MEM[base: _2, offset: 4294967292B]
	and	r7, r7, #15	@ ivtmp.568, tmp387,
	str	ip, [sp, #4]	@ sn[_75].next, startnode
	bl	VP6_InsertSorted	@
	ldr	r2, [sp, #4]	@ D.35312, startnode
	add	lr, sp, #368	@ tmp410,,
	mov	r1, r4, asl #2	@ tmp393, values,
	mov	ip, r4, asl #4	@ tmp394, values,
	mov	r3, r2, asl #2	@ tmp390, D.35312,
	mov	r2, r2, asl #4	@ tmp391, D.35312,
	rsb	r0, r3, r2	@ tmp384, tmp390, tmp391
	add	r0, lr, r0	@ tmp385, tmp410, tmp384
	ldr	r0, [r0, #-356]	@ D.35317, sn[_30].next
	cmn	r0, #1	@ D.35317,
	bne	.L264	@,
.L256:
	add	sp, sp, #372	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L261:
	mov	r2, #0	@ D.35312,
	b	.L258	@
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
.L274:
	mov	r2, #0	@ torp$value,
	mov	lr, r2	@ j, torp$value
.L273:
	rsb	r3, lr, #5	@ D.35343, j,
	add	r4, r0, r2, lsl #1	@ D.35339, pHuffTreeRoot, torp$value,
	mov	r3, r5, asr r3	@ D.35337, i,
	add	ip, lr, #1	@ j, j,
	tst	r3, #1	@ D.35337,
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
	bne	.L273	@,
	ldrb	r3, [r1, r5]	@ zero_extendqisi2	@, _11->value
	bfi	r3, r2, #4, #4	@ _11->value, torp$value,,
	bfi	r3, ip, #1, #3	@ _11->length, j,,
	bfi	r3, r4, #0, #1	@ _11->flag, torp$selector,,
	strb	r3, [r1, r5]	@ _11->flag, _11->flag
	add	r5, r5, #1	@ i, i,
	cmp	r5, #64	@ i,
	bne	.L274	@,
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
	add	r6, r0, #9088	@ ivtmp.675, pVp6CodecInfo,
	add	r7, r0, #9920	@ D.35422, pVp6CodecInfo,
	add	r6, r6, #30	@ ivtmp.675, ivtmp.675,
	add	r7, r7, #62	@ D.35422, D.35422,
	mov	r1, #0	@ k,
.L279:
	sub	r5, r6, #432	@ ivtmp.666, ivtmp.675,
.L288:
	sub	r4, r5, #96	@ ivtmp.660, ivtmp.666,
.L286:
	ldrb	lr, [r4, #-2]	@ zero_extendqisi2	@ D.35421, MEM[base: _98, offset: 4294967294B]
	add	r3, r0, r1	@ tmp176, pVp6CodecInfo, k
	add	ip, r1, #1	@ k, k,
	mov	r2, r4	@ ivtmp.647, ivtmp.660
	add	ip, r0, ip	@ tmp178, pVp6CodecInfo, k
	add	r1, r1, #2	@ k, k,
	strb	lr, [r3, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	mov	r3, #0	@ n,
	ldrb	lr, [r4, #-1]	@ zero_extendqisi2	@ D.35421, MEM[base: _98, offset: 4294967295B]
	strb	lr, [ip, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	b	.L284	@
.L282:
	ldrb	lr, [r2]	@ zero_extendqisi2	@ D.35421, MEM[base: _23, offset: 0B]
	cmp	r3, #5	@ n,
	cmpne	r3, #11	@, n,
	addne	r1, r1, #2	@ k, k,
	addeq	r1, r1, #6	@ k, k,
	add	r2, r2, #2	@ ivtmp.647, ivtmp.647,
	strb	lr, [ip, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.35421, MEM[base: _23, offset: 1B]
	strb	lr, [ip, #1219]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
.L284:
	add	r3, r3, #1	@ n, n,
	add	ip, r0, r1	@ tmp165, pVp6CodecInfo, k
	cmp	r3, #12	@ n,
	bne	.L282	@,
	add	r4, r4, #24	@ ivtmp.660, ivtmp.660,
	cmp	r4, r5	@ ivtmp.660, ivtmp.666
	bne	.L286	@,
	add	r5, r4, #144	@ ivtmp.666, ivtmp.660,
	cmp	r6, r5	@ ivtmp.675, ivtmp.666
	bne	.L288	@,
	add	r6, r4, #576	@ ivtmp.675, ivtmp.660,
	cmp	r6, r7	@ ivtmp.675, D.35422
	bne	.L279	@,
	add	r4, r0, #9408	@ ivtmp.641, pVp6CodecInfo,
	add	r5, r0, #9472	@ D.35422, pVp6CodecInfo,
	add	r4, r4, #46	@ ivtmp.641, ivtmp.641,
	add	r5, r5, #30	@ D.35422, D.35422,
	mov	r1, #768	@ k,
.L287:
	ldrb	lr, [r4, #-2]	@ zero_extendqisi2	@ D.35421, MEM[base: _10, offset: 4294967294B]
	add	r3, r0, r1	@ tmp195, pVp6CodecInfo, k
	add	ip, r1, #1	@ k, k,
	mov	r2, r4	@ ivtmp.628, ivtmp.641
	add	ip, r0, ip	@ tmp197, pVp6CodecInfo, k
	add	r1, r1, #2	@ k, k,
	strb	lr, [r3, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	mov	r3, #0	@ j,
	ldrb	lr, [r4, #-1]	@ zero_extendqisi2	@ D.35421, MEM[base: _10, offset: 4294967295B]
	strb	lr, [ip, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	b	.L293	@
.L291:
	ldrb	lr, [r2]	@ zero_extendqisi2	@ D.35421, MEM[base: _78, offset: 0B]
	cmp	r3, #5	@ j,
	cmpne	r3, #11	@, j,
	addne	r1, r1, #2	@ k, k,
	addeq	r1, r1, #6	@ k, k,
	add	r2, r2, #2	@ ivtmp.628, ivtmp.628,
	strb	lr, [ip, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r2, #-1]	@ zero_extendqisi2	@ D.35421, MEM[base: _78, offset: 1B]
	strb	lr, [ip, #1219]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
.L293:
	add	r3, r3, #1	@ j, j,
	add	ip, r0, r1	@ tmp182, pVp6CodecInfo, k
	cmp	r3, #12	@ j,
	bne	.L291	@,
	add	r4, r4, #24	@ ivtmp.641, ivtmp.641,
	cmp	r4, r5	@ ivtmp.641, D.35422
	bne	.L287	@,
	add	r4, r0, #8512	@ ivtmp.620, pVp6CodecInfo,
	add	r5, r0, #8576	@ D.35422, pVp6CodecInfo,
	add	r4, r4, #20	@ ivtmp.620, ivtmp.620,
	add	r5, r5, #12	@ D.35422, D.35422,
	mov	ip, #832	@ k,
.L292:
	mov	r1, r4	@ ivtmp.611, ivtmp.620
	mov	r3, #0	@ j,
.L298:
	ldrb	lr, [r1]	@ zero_extendqisi2	@ D.35421, MEM[base: _89, offset: 0B]
	add	r2, r0, ip	@ tmp199, pVp6CodecInfo, k
	cmp	r3, #5	@ j,
	cmpne	r3, #11	@, j,
	addeq	ip, ip, #6	@ k, k,
	strb	lr, [r2, #1218]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	ldrb	lr, [r1, #1]	@ zero_extendqisi2	@ D.35421, MEM[base: _89, offset: 1B]
	strb	lr, [r2, #1219]	@ D.35421, pVp6CodecInfo_34(D)->TreeTab
	beq	.L295	@,
	cmp	r3, #13	@ j,
	beq	.L304	@,
	add	ip, ip, #2	@ k, k,
.L295:
	add	r3, r3, #1	@ j, j,
	add	r1, r1, #2	@ ivtmp.611, ivtmp.611,
	cmp	r3, #14	@ j,
	bne	.L298	@,
.L297:
	add	r4, r4, #28	@ ivtmp.620, ivtmp.620,
	cmp	r4, r5	@ ivtmp.620, D.35422
	bne	.L292	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L304:
	add	ip, ip, #30	@ k, k,
	b	.L297	@
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
	add	r6, r0, #6592	@ D.35480, pVp6CodecInfo,
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	.pad #28
	sub	sp, sp, #28	@,,
	add	r6, r6, #4	@ D.35480, D.35480,
	ldr	r1, .L313	@,
	mov	r0, #22	@,
	add	r5, r7, #9408	@ D.35485, pVp6CodecInfo,
	bl	dprint_vfmw	@
	add	r5, r5, #44	@ D.35485, D.35485,
	add	r0, r7, #512	@, pVp6CodecInfo,
	mov	r1, r6	@, D.35480
	add	r0, r0, #2	@,,
	add	r4, r7, #6592	@ D.35480, pVp6CodecInfo,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r6	@, D.35480
	mov	r0, r5	@, D.35485
	bl	VP6_BuildHuffTree	@
	add	r1, r7, #9472	@, pVp6CodecInfo,
	mov	r0, r5	@, D.35485
	add	r4, r4, #52	@ D.35480, D.35480,
	add	r1, r1, #28	@,,
	add	r6, r7, #9472	@ D.35485, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r6, r6, #4	@ D.35485, D.35485,
	add	r0, r7, #524	@, pVp6CodecInfo,
	mov	r1, r4	@, D.35480
	add	r0, r0, #1	@,,
	add	r5, r7, #6656	@ D.35482, pVp6CodecInfo,
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r2, #12	@,
	mov	r1, r4	@, D.35480
	mov	r0, r6	@, D.35485
	bl	VP6_BuildHuffTree	@
	add	r5, r5, #36	@ D.35482, D.35482,
	add	r1, r7, #9536	@, pVp6CodecInfo,
	add	r4, r7, #8512	@ D.35481, pVp6CodecInfo,
	mov	r0, r6	@, D.35485
	add	r4, r4, #20	@ D.35481, D.35481,
	add	r1, r1, #28	@,,
	bl	VP6_BuildHuffLookupTable	@
	mov	r1, r5	@, D.35482
	add	r0, r7, #536	@, pVp6CodecInfo,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r2, #9	@,
	mov	r1, r5	@, D.35482
	mov	r0, r4	@, D.35481
	bl	VP6_BuildHuffTree	@
	add	r5, r7, #6720	@ D.35482, pVp6CodecInfo,
	add	r1, r7, #11904	@, pVp6CodecInfo,
	mov	r0, r4	@, D.35481
	add	r5, r5, #28	@ D.35482, D.35482,
	add	r1, r1, #28	@,,
	add	r4, r7, #8512	@ D.35481, pVp6CodecInfo,
	bl	VP6_BuildHuffLookupTable	@
	add	r4, r4, #48	@ D.35481, D.35481,
	add	r0, r7, #548	@, pVp6CodecInfo,
	mov	r1, r5	@, D.35482
	add	r0, r0, #2	@,,
	bl	VP6_ZerosBoolTreeToHuffCodes	@
	mov	r1, r5	@, D.35482
	mov	r0, r4	@, D.35481
	mov	r2, #9	@,
	bl	VP6_BuildHuffTree	@
	add	r3, r7, #760	@ ivtmp.721, pVp6CodecInfo,
	mov	r0, r4	@, D.35481
	add	r1, r7, #11968	@, pVp6CodecInfo,
	mov	r4, r3	@ ivtmp.721, ivtmp.721
	add	r3, r7, #6784	@ ivtmp.725, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	mov	r5, r3	@ ivtmp.725, ivtmp.725
	add	r3, r7, #8576	@ ivtmp.728, pVp6CodecInfo,
	mov	r6, r3	@ ivtmp.728, ivtmp.728
	add	r3, r7, #9600	@ ivtmp.731, pVp6CodecInfo,
	mov	r8, r3	@ ivtmp.731, ivtmp.731
	add	r3, r7, #1152	@ D.35487, pVp6CodecInfo,
	mov	r9, r3	@ D.35487, D.35487
	bl	VP6_BuildHuffLookupTable	@
	add	r3, r4, #2	@ ivtmp.721, ivtmp.721,
	str	r7, [sp, #20]	@ pVp6CodecInfo, %sfp
	str	r3, [sp]	@ ivtmp.721, %sfp
	add	r3, r5, #20	@ ivtmp.725, ivtmp.725,
	str	r3, [sp, #8]	@ ivtmp.725, %sfp
	add	r3, r6, #12	@ ivtmp.728, ivtmp.728,
	str	r3, [sp, #12]	@ ivtmp.728, %sfp
	add	r3, r8, #28	@ ivtmp.731, ivtmp.731,
	str	r3, [sp, #4]	@ ivtmp.731, %sfp
	add	r3, r9, #6	@ D.35487, D.35487,
	str	r3, [sp, #16]	@ D.35487, %sfp
.L306:
	ldr	r3, [sp]	@ ivtmp.721, %sfp
	ldr	r9, [sp, #4]	@ ivtmp.712, %sfp
	ldr	r8, [sp, #12]	@ ivtmp.709, %sfp
	sub	fp, r3, #198	@ ivtmp.703, ivtmp.721,
	ldr	r7, [sp, #8]	@ ivtmp.706, %sfp
.L310:
	add	r6, fp, #66	@ D.35487, ivtmp.703,
	mov	r5, r9	@ ivtmp.695, ivtmp.712
	mov	r4, r8	@ ivtmp.692, ivtmp.709
	mov	r10, r7	@ ivtmp.689, ivtmp.706
.L307:
	mov	r1, r10	@, ivtmp.689
	mov	r0, fp	@, ivtmp.703
	bl	VP6_BoolTreeToHuffCodes	@
	mov	r1, r10	@, ivtmp.689
	mov	r0, r4	@, ivtmp.692
	mov	r2, #12	@,
	bl	VP6_BuildHuffTree	@
	add	fp, fp, #11	@ ivtmp.703, ivtmp.703,
	mov	r1, r5	@, ivtmp.695
	mov	r0, r4	@, ivtmp.692
	bl	VP6_BuildHuffLookupTable	@
	cmp	fp, r6	@ ivtmp.703, D.35487
	add	r10, r10, #48	@ ivtmp.689, ivtmp.689,
	add	r5, r5, #64	@ ivtmp.695, ivtmp.695,
	add	r4, r4, #24	@ ivtmp.692, ivtmp.692,
	bne	.L307	@,
	ldr	r3, [sp]	@ ivtmp.721, %sfp
	add	r7, r7, #288	@ ivtmp.706, ivtmp.706,
	add	r8, r8, #144	@ ivtmp.709, ivtmp.709,
	add	r9, r9, #384	@ ivtmp.712, ivtmp.712,
	cmp	r3, fp	@ ivtmp.721, ivtmp.703
	bne	.L310	@,
	ldr	r2, [sp, #8]	@ ivtmp.725, %sfp
	ldr	r3, [sp]	@ ivtmp.721, %sfp
	add	r2, r2, #864	@ ivtmp.725, ivtmp.725,
	str	r2, [sp, #8]	@ ivtmp.725, %sfp
	ldr	r2, [sp, #16]	@ D.35487, %sfp
	add	r3, r3, #198	@ ivtmp.721, ivtmp.721,
	str	r3, [sp]	@ ivtmp.721, %sfp
	cmp	r3, r2	@ ivtmp.721, D.35487
	ldr	r3, [sp, #12]	@ ivtmp.728, %sfp
	add	r3, r3, #432	@ ivtmp.728, ivtmp.728,
	str	r3, [sp, #12]	@ ivtmp.728, %sfp
	ldr	r3, [sp, #4]	@ ivtmp.731, %sfp
	add	r3, r3, #1152	@ ivtmp.731, ivtmp.731,
	str	r3, [sp, #4]	@ ivtmp.731, %sfp
	bne	.L306	@,
	ldr	r7, [sp, #20]	@ pVp6CodecInfo, %sfp
	mov	r0, r7	@, pVp6CodecInfo
	bl	VP6_BuildTreeTab	@
	ldr	r1, .L313+4	@,
	mov	r0, #22	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L314:
	.align	2
.L313:
	.word	.LC8
	.word	.LC9
	.fnend
	.size	VP6_ConvertBoolToHuff, .-VP6_ConvertBoolToHuff
	.align	2
	.global	VP6_IntraFrmHeader
	.type	VP6_IntraFrmHeader, %function
VP6_IntraFrmHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1	@ pBs, pBs
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	ldr	r1, .L355	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	add	r7, r4, #8192	@ tmp347, pVp6CodecInfo,
	bl	BsGet	@
	mov	r1, #2	@,
	uxtb	r3, r0	@ D.35558,
	mov	r0, r5	@, pBs
	str	r3, [r7, #4072]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	bl	BsGet	@
	ldr	r2, [r7, #4072]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	cmp	r2, #8	@ D.35559,
	uxtb	r0, r0	@ D.35558,
	str	r0, [r7, #4076]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile
	bhi	.L351	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	uxtb	r6, r0	@ D.35558,
	cmp	r6, #0	@ D.35558,
	bne	.L352	@,
	ldrb	r3, [r7, #4062]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream,
	beq	.L319	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	r8, r4, #12288	@ tmp346, pVp6CodecInfo,
	mov	r2, #255	@ tmp229,
	mov	r3, #8	@ tmp232,
	str	r6, [r8, #36]	@ D.35558, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].lowvalue
	mov	r1, #24	@,
	str	r2, [r8, #40]	@ tmp229, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].range
	str	r3, [r8, #48]	@ tmp232, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].count
	str	r0, [r8, #16]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Buff2Offset
	mov	r0, r5	@, pBs
	bl	BsGet	@
	str	r0, [r8, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].value
.L320:
	add	r4, r4, #12288	@ D.35561, pVp6CodecInfo,
	mov	r10, #0	@ value,
	add	r4, r4, #36	@ D.35561, D.35561,
	mov	r6, #7	@ i,
.L321:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r10, r10, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L321	@,
	mov	r9, #0	@ value,
	mov	r6, #7	@ i,
	uxtb	r10, r10	@ D.35558, value
	str	r10, [r7, #4084]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb
.L322:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L322	@,
	ldr	r10, [r7, #4084]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb
	uxtb	r9, r9	@ D.35559, value
	mov	fp, #0	@ value,
	mov	r6, #7	@ i,
	str	r9, [r7, #4088]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_width_in_mb
	mov	r9, r9, asl #1	@ D.35559, D.35559,
	mov	r10, r10, asl #1	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].pic_height_in_mb,
	str	r10, [r7, #4092]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VMacroblockCount
	str	r9, [r8]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].HMacroblockCount
.L323:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L323	@,
	uxtb	r3, fp	@ D.35558, value
	mov	r6, #7	@ i,
	mov	fp, #0	@ value,
	mov	r3, r3, asl #1	@ D.35558, D.35558,
	str	r3, [r8, #4]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].OutputVMacroblockCount
.L324:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	fp, fp, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L324	@,
	uxtb	fp, fp	@ D.35558, value
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	mov	fp, fp, asl #1	@ D.35558, D.35558,
	str	fp, [r8, #8]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].OutputHMacroblockCount
	bl	Vp6_Vfmw_DecodeBool128	@
	mov	r1, r4	@, D.35561
	mov	r6, r0	@ D.35559,
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	ldr	r3, [r7, #3872]	@ D.35559, pVp6CodecInfo_5(D)->VOldScaled
	ldr	r2, [r7, #3868]	@ D.35559, pVp6CodecInfo_5(D)->HOldScaled
	cmp	r10, r3	@ D.35559, D.35559
	orr	r0, r0, r6, asl #1	@ D.35559,, D.35559,
	strb	r0, [r7, #4063]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].ScalingMode
	bne	.L326	@,
	cmp	r9, r2	@ D.35559, D.35559
	beq	.L327	@,
.L326:
	stmia	sp, {r9, r10}	@,,
	mov	r0, #22	@,
	ldr	r1, .L355+4	@,
	bl	dprint_vfmw	@
.L327:
	ldr	r3, [r7, #4076]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile
	str	r9, [r7, #3868]	@ D.35559, pVp6CodecInfo_5(D)->HOldScaled
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile,
	str	r10, [r7, #3872]	@ D.35559, pVp6CodecInfo_5(D)->VOldScaled
	moveq	r2, #14	@ tmp334,
	streqb	r2, [r7, #4066]	@ tmp334, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	streq	r3, [r8, #20]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	bne	.L353	@,
.L336:
	ldr	r1, .L355+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.35557,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L351:
	ldr	r1, .L355+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35557,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L319:
	add	r8, r4, #12288	@ tmp346, pVp6CodecInfo,
	mov	ip, #255	@ tmp240,
	mov	r2, #8	@ tmp243,
	mov	r1, #24	@,
	str	r3, [r8, #36]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].MultiStream, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].lowvalue
	mov	r0, r5	@, pBs
	str	ip, [r8, #40]	@ tmp240, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].range
	str	r2, [r8, #48]	@ tmp243, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].count
	bl	BsGet	@
	str	r0, [r8, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_5(D) + 12324B].value
	b	.L320	@
.L352:
	ldr	r1, .L355+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35557,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L353:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L329	@,
	mov	r9, #0	@ value,
	mov	r6, #4	@ i,
	mov	r3, #2	@ tmp301,
	str	r3, [r8, #20]	@ tmp301, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
.L330:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L330	@,
	ldr	r3, [r7, #4072]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	mov	r8, #0	@ value,
	mov	r6, #2	@ i,
	cmp	r3, #7	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo,
	movhi	r3, r8	@ D.35558,
	movls	r3, #5	@ D.35558,
	mov	r9, r9, asl r3	@ D.35558, value,
	strb	r9, [r7, #4064]	@ D.35558, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterVarThresh
.L332:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L332	@,
	strb	r8, [r7, #4065]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMvSizeThresh
.L333:
	ldr	r3, [r7, #4072]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo
	cmp	r3, #7	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].Vp3VersionNo,
	bls	.L354	@,
	mov	r8, #0	@ value,
	mov	r6, #3	@ i,
.L335:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L335	@,
	strb	r8, [r7, #4066]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	b	.L336	@
.L354:
	mov	r3, #16	@ tmp330,
	strb	r3, [r7, #4066]	@ tmp330, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterAlpha
	b	.L336	@
.L329:
	mov	r1, r4	@, D.35561
	mov	r0, r5	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.35559
	streq	r0, [r8, #20]	@ D.35559, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	movne	r3, #1	@ tmp318,
	strne	r3, [r8, #20]	@ tmp318, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_5(D) + 12252B].PredictionFilterMode
	b	.L333	@
.L356:
	.align	2
.L355:
	.word	.LC10
	.word	.LC13
	.word	.LC14
	.word	.LC11
	.word	.LC12
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
	add	r4, r0, #8192	@ tmp264, pVp6CodecInfo,
	mov	r5, r0	@ pVp6CodecInfo, pVp6CodecInfo
	ldr	r2, [r4, #3928]	@ D.35585, pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo
	cmp	r2, #0	@ D.35585,
	beq	.L380	@,
	ldrb	r3, [r4, #4062]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream
	mov	r7, r1	@ pBs, pBs
	ldr	r1, [r4, #3932]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream,
	str	r2, [r4, #4072]	@ D.35585, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].Vp3VersionNo
	str	r1, [r4, #4076]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].VpProfile
	bne	.L381	@,
	add	r6, r0, #12288	@ tmp263, pVp6CodecInfo,
	mov	ip, #255	@ tmp192,
	mov	r2, #8	@ tmp195,
	mov	r1, #24	@,
	str	r3, [r6, #36]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].MultiStream, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].lowvalue
	mov	r0, r7	@, pBs
	str	ip, [r6, #40]	@ tmp192, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].range
	str	r2, [r6, #48]	@ tmp195, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].count
	bl	BsGet	@
	str	r0, [r6, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].value
.L361:
	add	r5, r5, #12288	@ D.35588, pVp6CodecInfo,
	mov	r0, r7	@, pBs
	add	r5, r5, #36	@ D.35588, D.35588,
	mov	r1, r5	@, D.35588
	bl	Vp6_Vfmw_DecodeBool128	@
	str	r0, [r6, #24]	@ D.35585, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].RefreshGoldenFrame
	ldr	r3, [r4, #3932]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile
	str	r0, [r4, #3892]	@ D.35585, pVp6CodecInfo_6(D)->RefreshGoldenFrame
	cmp	r3, #0	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile,
	bne	.L382	@,
	mov	r2, #14	@ tmp255,
	mov	r0, #1	@ D.35584,
	strb	r2, [r4, #4066]	@ tmp255, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	str	r3, [r6, #20]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.VpProfile, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L381:
	mov	r1, #16	@,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	add	r6, r5, #12288	@ tmp263, pVp6CodecInfo,
	mov	r3, #0	@ tmp178,
	mov	r2, #255	@ tmp181,
	str	r3, [r6, #36]	@ tmp178, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].lowvalue
	mov	r1, #24	@,
	mov	r3, #8	@ tmp184,
	str	r2, [r6, #40]	@ tmp181, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].range
	str	r3, [r6, #48]	@ tmp184, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].count
	str	r0, [r6, #16]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].Buff2Offset
	mov	r0, r7	@, pBs
	bl	BsGet	@
	str	r0, [r6, #44]	@, MEM[(struct VP6_BOOLCODER_S *)pVp6CodecInfo_6(D) + 12324B].value
	b	.L361	@
.L382:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.35585,
	mov	r8, r0	@ D.35585,
	str	r0, [r6, #28]	@ D.35585, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].UseLoopFilter
	bne	.L383	@,
.L363:
	ldr	r3, [r4, #3928]	@ pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo, pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo
	cmp	r3, #7	@ pVp6CodecInfo_6(D)->OldHeaderInfo.Vp3VersionNo,
	bhi	.L384	@,
	mov	r3, #16	@ tmp251,
	mov	r0, #1	@ D.35584,
	strb	r3, [r4, #4066]	@ tmp251, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L384:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	bne	.L385	@,
	mov	r0, #1	@ D.35584,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L383:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r0, r0, r8, asl #1	@ D.35585,, D.35585,
	str	r0, [r6, #28]	@ D.35585, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].UseLoopFilter
	b	.L363	@
.L385:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@,
	beq	.L365	@,
	mov	r9, #0	@ value,
	mov	r8, #4	@ i,
	mov	r3, #2	@ tmp226,
	str	r3, [r6, #20]	@ tmp226, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
.L366:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r9, r9, r0, asl r8	@ value, value,,
	subs	r8, r8, #1	@ i, i,
	bcs	.L366	@,
	mov	r8, #0	@ value,
	mov	r6, #2	@ i,
	strb	r9, [r4, #4064]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterVarThresh
.L367:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L367	@,
	strb	r8, [r4, #4065]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMvSizeThresh
.L368:
	mov	r8, #0	@ value,
	mov	r6, #3	@ i,
.L370:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	orr	r8, r8, r0, asl r6	@ value, value,,
	subs	r6, r6, #1	@ i, i,
	bcs	.L370	@,
	strb	r8, [r4, #4066]	@ value, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterAlpha
	mov	r0, #1	@ D.35584,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L380:
	ldr	r3, [r4, #4072]	@, pVp6CodecInfo_6(D)->NewHeaderInfo.Vp3VersionNo
	mov	r0, #1	@,
	ldr	r1, .L386	@,
	bl	dprint_vfmw	@
	mvn	r0, #87	@ D.35584,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L365:
	mov	r1, r5	@, D.35588
	mov	r0, r7	@, pBs
	bl	Vp6_Vfmw_DecodeBool128	@
	cmp	r0, #0	@ D.35585
	streq	r0, [r6, #20]	@ D.35585, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	movne	r3, #1	@ tmp239,
	strne	r3, [r6, #20]	@ tmp239, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_6(D) + 12252B].PredictionFilterMode
	b	.L368	@
.L387:
	.align	2
.L386:
	.word	.LC15
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
	beq	.L395	@,
	mov	r6, r1	@ pBs, pBs
	mov	r7, r0	@ pVp6CodecInfo, pVp6CodecInfo
	ldr	r1, .L398	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	add	r4, r7, #8192	@ tmp210, pVp6CodecInfo,
	bl	BsGet	@
	mov	r1, #6	@,
	uxtb	r3, r0	@ D.35599,
	mov	r0, r6	@, pBs
	str	r3, [r4, #4080]	@ D.35599, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType
	strb	r3, [r4, #3888]	@ D.35599, pVp6CodecInfo_3(D)->FrameType
	bl	BsGet	@
	ldr	r1, .L398+4	@ tmp154,
	add	r2, r7, #12224	@ tmp163, pVp6CodecInfo,
	mov	ip, r0	@ D.35599,
	uxtb	r3, r0	@ D.35599, D.35599
	ldr	r0, .L398+8	@ tmp168,
	add	r1, r1, r3	@ tmp155, tmp154, D.35599
	mov	r3, r3, asl #1	@ tmp169, D.35599,
	strb	ip, [r4, #4060]	@ D.35599, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask
	add	r8, r0, #128	@ tmp183,,
	ldrb	r5, [r1, #1656]	@ zero_extendqisi2	@ tmp156, VP6_LoopFilterLimitValues
	ldrh	lr, [r0, r3]	@ tmp172, DcQuantTab
	mov	r1, #1	@,
	ldrh	r3, [r8, r3]	@ tmp187, AcQuantTab
	mov	r0, r6	@, pBs
	strb	r5, [r4, #4061]	@ tmp156, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FLimit
	strh	lr, [r2, #36]	@ movhi	@ tmp172, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DcQuant
	strh	r3, [r2, #38]	@ movhi	@ tmp187, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].AcQuant
	bl	BsGet	@
	ldr	r3, [r4, #4080]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType
	mov	r1, r6	@, pBs
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].FrameType,
	strb	r0, [r4, #4062]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].MultiStream
	mov	r0, r7	@, pVp6CodecInfo
	beq	.L396	@,
	bl	VP6_InterFrmHeader	@
	mov	r5, r0	@ ret,
	cmp	r5, #1	@ ret,
	beq	.L397	@,
.L393:
	mov	r0, r5	@ D.35597, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L396:
	bl	VP6_IntraFrmHeader	@
	mov	r5, r0	@ ret,
	cmp	r5, #1	@ ret,
	bne	.L393	@,
.L397:
	add	r1, r7, #12288	@, pVp6CodecInfo,
	mov	r0, r6	@, pBs
	add	r1, r1, #36	@,,
	add	r7, r7, #12288	@ tmp200, pVp6CodecInfo,
	bl	Vp6_Vfmw_DecodeBool128	@
	ldr	r1, .L398+12	@,
	str	r0, [r7, #32]	@, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].UseHuffman
	mov	r0, #22	@,
	ldrb	r3, [r4, #4060]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask
	str	r3, [r7, #12]	@ MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].DctQMask, MEM[(struct VP6_PictureHeader_S *)pVp6CodecInfo_3(D) + 12252B].LastFrameQIndex
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35597, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L395:
	ldr	r1, .L398+16	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35597,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L399:
	.align	2
.L398:
	.word	.LC17
	.word	.LANCHOR0
	.word	.LANCHOR0+1720
	.word	.LC18
	.word	.LC16
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
	ldr	r7, [r4, #704]	@ D.35610, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r5, #12608	@, pCtx,
	add	r0, r0, #40	@,,
	str	r7, [r4, #704]	@ D.35610, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r6, [r5]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r0, r5	@, pCtx
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.35612,
	str	r0, [r4, #712]	@ D.35612, pCtx_4(D)->ChanID
	beq	.L404	@,
	add	r0, r5, #224	@, pCtx,
	movw	r1, #12396	@,
	bl	__memzero	@
	mov	r2, #1024	@ tmp133,
	mov	r3, #0	@ tmp136,
	str	r2, [r4, #40]	@ tmp133, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].DDR_Stride
	str	r3, [r4, #12]	@ tmp136, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].Imgbuf_allocated
	mov	r6, #1	@ tmp143,
	ldr	r3, [r5]	@ pCtx_4(D)->pstExtraData, pCtx_4(D)->pstExtraData
	mov	r0, #22	@,
	ldr	r1, .L405	@,
	ldr	r3, [r3, #8]	@ _20->s32DecMode, _20->s32DecMode
	str	r6, [r4, #716]	@ tmp143, pCtx_4(D)->DSDNeedClearQue
	str	r3, [r4, #4]	@ _20->s32DecMode, MEM[(struct VP6_CODECINFO *)pCtx_4(D) + 224B].UsedDecMode
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.35609, tmp143
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L404:
	ldr	r1, .L405+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.35609,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L406:
	.align	2
.L405:
	.word	.LC20
	.word	.LC19
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
	add	r4, r0, #12288	@ tmp222, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r5, [r4, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].Imgbuf_allocated
	cmp	r5, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].Imgbuf_allocated,
	beq	.L434	@,
	ldr	r3, [r4, #4]	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].UsedDecMode, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].UsedDecMode
	sub	r3, r3, #2	@ D.35623, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].UsedDecMode,
	cmp	r3, #1	@ D.35623,
	ldr	r3, [r0]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.35625,
	bls	.L435	@,
.L411:
	str	r2, [r4, #4]	@ D.35623, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].UsedDecMode
	cmp	r2, #4	@ D.35623,
	ldrls	pc, [pc, r2, asl #2]	@ D.35623
	b	.L416	@
.L417:
	.word	.L415
	.word	.L415
	.word	.L412
	.word	.L414
	.word	.L415
.L436:
	ldr	r1, .L438	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
.L414:
	mov	r0, #0	@ D.35622,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L435:
	cmp	r2, #4	@ D.35625,
	cmpne	r2, #1	@, D.35625,
	bhi	.L411	@,
	ldr	r1, .L438+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].GoldenFsID
	mov	r5, #0	@ tmp176,
	ldr	r0, [r4, #712]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #28]	@ tmp176, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].GoldenFsID
	str	r5, [r4, #32]	@ tmp176, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_7(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r4, #8]	@ tmp176, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].RefNum
	str	r0, [r4, #32]	@ D.35625, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FwdFsID
	str	r0, [r4, #28]	@ D.35625, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].GoldenFsID
	ldr	r3, [r6]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.35623, _59->s32DecMode
	b	.L411	@
.L434:
	ldr	r1, .L438+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35622, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].Imgbuf_allocated
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L412:
	ldrb	r2, [r4, #16]	@ zero_extendqisi2	@ D.35628, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType
	cmp	r2, #0	@ D.35628,
	bne	.L436	@,
.L413:
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pFwdImg,
	beq	.L437	@,
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType,
	beq	.L422	@,
	ldr	r3, [r6]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r5, #180]	@ D.35623, pFwdImg_48->error_level
	ldr	r3, [r3]	@ D.35625, _52->s32RefErrThr
	cmp	r2, r3	@ D.35623, D.35625
	bls	.L422	@,
	ldr	r1, .L438+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35622,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L415:
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].FrameType,
	beq	.L413	@,
	ldr	r3, [r4, #8]	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].RefNum, MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].RefNum
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_7(D) + 224B].RefNum,
	bne	.L413	@,
	ldr	r2, .L438+16	@,
	mov	r0, #18	@,
	ldr	r1, .L438+20	@,
	bl	dprint_vfmw	@
	b	.L414	@
.L416:
	ldr	r1, .L438+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35622,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L422:
	mov	r0, #1	@ D.35622,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L437:
	movw	r3, #2115	@,
	ldr	r2, .L438+28	@,
	ldr	r1, .L438+32	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35622, pFwdImg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L439:
	.align	2
.L438:
	.word	.LC23
	.word	.LC22
	.word	.LC21
	.word	.LC28
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LANCHOR0+1976
	.word	.LC27
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
	add	r5, r0, #12288	@ tmp496, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r7, r0, #8	@ __p, pCtx,
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType
	ldr	r8, [r0, #208]	@ pVp6StreamParam, pCtx_8(D)->pVp6StreamParam
	cmp	r3, #3	@ MEM[(struct VP6_CODECINFO *)pCtx_8(D) + 224B].FrameType,
	beq	.L466	@,
	mov	r1, #200	@,
	mov	r0, r7	@, __p
	bl	__memzero	@
	ldr	r3, [r5, #208]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FrameType, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].FrameType
	mov	r2, #0	@ tmp310,
	strb	r2, [r4, #9]	@ tmp310, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].IsNvopCopy
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
	moveq	r3, #1	@ tmp380,
	movne	r3, #0	@ tmp380,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp386, tmp380
	cmp	r3, #0	@ tmp386,
	bne	.L449	@,
	ldr	r3, [r6, #408]	@ D.35644, pCur_101->pstDecodeFs
	cmp	r3, #0	@ D.35644,
	beq	.L450	@,
	ldr	r3, [r3, #12]	@ _113->PhyAddr, _113->PhyAddr
	str	r3, [r4, #180]	@ _113->PhyAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_curr_recon_addr
	ldr	r3, [r6, #420]	@ pCur_101->PmvAddr, pCur_101->PmvAddr
	str	r3, [r4, #192]	@ pCur_101->PmvAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].CurPmvAddr
	ldr	r3, [r0, #408]	@ D.35644, pGolden_109->pstDecodeFs
	cmp	r3, #0	@ D.35644,
	ldreq	r3, [r6, #408]	@ pCur_101->pstDecodeFs, pCur_101->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.35640,
	str	r3, [r4, #184]	@ D.35640, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_golden_ref_addr
	ldr	r3, [r9, #408]	@ D.35644, pFwd_105->pstDecodeFs
	add	r9, r4, #12608	@ pBs, pCtx,
	add	r9, r9, #12	@ pBs, pBs,
	cmp	r3, #0	@ D.35644,
	mov	r0, r9	@, pBs
	ldreq	r3, [r6, #408]	@ pCur_101->pstDecodeFs, pCur_101->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.35640,
	str	r3, [r4, #188]	@ D.35640, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_last_ref_addr
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
	ldr	r6, [r8]	@ D.35647, pVp6StreamParam_11->VirAddr
	bl	BsPos	@
	mov	r3, r0	@ D.35642,
	add	r0, r0, #7	@ tmp408, D.35642,
	cmp	r3, #0	@ D.35642,
	movlt	r3, r0	@ D.35642, tmp408
	add	r6, r6, r3, asr #3	@ BaseAddrUnAligned, D.35647, D.35642,
	mov	r0, r6	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	bic	r3, r0, #15	@ D.35645,,
	mov	r0, r6	@, BaseAddrUnAligned
	sub	r3, r3, #16	@ D.35645, D.35645,
	str	r3, [r4, #64]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr
	bl	MEM_Vir2Phy	@
	ldrb	r6, [r5, #190]	@ zero_extendqisi2	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream
	cmp	r6, #0	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream,
	and	r0, r0, #15	@ ResideBytes,,
	mov	r0, r0, asl #3	@ D.35645, ResideBytes,
	bne	.L455	@,
	ldr	r3, [r5, #204]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile
	cmp	r3, #0	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].VpProfile,
	bne	.L456	@,
.L455:
	mov	r3, #16	@ tmp418,
	str	r0, [r4, #124]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_0
	str	r3, [r4, #128]	@ tmp418, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_0
	mov	r0, r9	@, pBs
	ldr	r9, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	bl	BsPos	@
	mov	r6, #0	@ tmp424,
	str	r6, [r4, #140]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_1
	str	r6, [r4, #136]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_1
	mov	r9, r9, asl #3	@ D.35645, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset,
	str	r6, [r4, #132]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_1
	rsb	r0, r0, r9	@ D.35645,, D.35645
	str	r0, [r4, #120]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_0
	ldr	r3, [r8]	@ pVp6StreamParam_11->VirAddr, pVp6StreamParam_11->VirAddr
	ldr	r10, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	add	r10, r3, r10	@ BaseAddrUnAligned, pVp6StreamParam_11->VirAddr, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	mov	r0, r10	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	mov	r9, r0	@ D.35642,
	mov	r0, r10	@, BaseAddrUnAligned
	bl	MEM_Vir2Phy	@
	and	r9, r9, #15	@ ResideBytes, D.35642,
	ldr	r3, [r4, #64]	@ MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr
	mov	r9, r9, asl #3	@ D.35645, ResideBytes,
	str	r9, [r4, #148]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_0
	bic	r0, r0, #15	@ D.35645,,
	rsb	r0, r3, r0	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].StreamBaseAddr, D.35645
	str	r0, [r4, #152]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_0
	ldr	r3, [r5, #240]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset
	ldr	r2, [r8, #8]	@ pVp6StreamParam_11->Length, pVp6StreamParam_11->Length
	str	r6, [r4, #164]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_1
	mov	r3, r3, asl #3	@ D.35645, MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].Buff2Offset,
	str	r6, [r4, #160]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_1
	rsb	r3, r3, r2, lsl #3	@ D.35645, D.35645, pVp6StreamParam_11->Length,
	str	r6, [r4, #156]	@ tmp424, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_1
	str	r3, [r4, #144]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_0
.L457:
	ldr	r10, [r4]	@ D.35657, pCtx_8(D)->pstExtraData
	add	r9, r4, #4992	@ D.35651, pCtx,
	add	r3, r4, #5120	@ D.35649, pCtx,
	add	fp, r4, #4416	@ D.35650, pCtx,
	add	r8, r4, #4288	@ D.35652, pCtx,
	add	r6, r4, #3296	@ D.35653, pCtx,
	add	r5, r4, #3360	@ D.35654, pCtx,
	add	lr, r4, #3232	@ D.35653, pCtx,
	add	ip, r4, #2528	@ D.35655, pCtx,
	add	r0, r4, #2464	@ D.35653, pCtx,
	add	r1, r4, #3168	@ D.35653, pCtx,
	add	r2, r4, #6656	@ D.35651, pCtx,
	add	r3, r3, #34	@ D.35649, D.35649,
	add	fp, fp, #2	@ D.35650, D.35650,
	str	r3, [r4, #52]	@ D.35649, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblAcHuffLUT
	add	r8, r8, #34	@ D.35652, D.35652,
	str	fp, [r4, #40]	@ D.35650, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblACProbs
	mov	r3, r9	@ D.35656, D.35651
	str	r8, [r4, #36]	@ D.35652, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblDcNodeContexts
	add	r9, r9, #34	@ D.35651, D.35651,
	add	r6, r6, #2	@ D.35653, D.35653,
	str	r9, [r4, #48]	@ D.35651, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblDcHuffLUT
	str	r6, [r4, #28]	@ D.35653, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblEobOffsetTable
	add	r5, r5, #2	@ D.35654, D.35654,
	add	lr, lr, #2	@ D.35653, D.35653,
	str	r5, [r4, #32]	@ D.35654, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblHuffTree
	str	lr, [r4, #24]	@ D.35653, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblModifiedScanOrder
	add	ip, ip, #2	@ D.35655, D.35655,
	add	r0, r0, #2	@ D.35653, D.35653,
	str	ip, [r4, #16]	@ D.35655, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbMode
	str	r0, [r4, #12]	@ D.35653, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbModeSame
	add	r1, r1, #2	@ D.35653, D.35653,
	add	r2, r2, #34	@ D.35651, D.35651,
	str	r1, [r4, #20]	@ D.35653, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblProbMv
	str	r2, [r4, #56]	@ D.35651, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblZeroHuffLUT
	add	r3, r3, #2	@ D.35656, D.35656,
	str	r3, [r4, #44]	@ D.35656, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].TblZeroProbs
	mov	r0, #1	@ D.35639,
	ldr	r3, [r10, #512]	@ D.35642, _247->s32Compress_en
	str	r7, [r4, #4]	@ __p, pCtx_8(D)->pVp6DecParam
	str	r3, [r4, #204]	@ D.35642, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].Compress_en
	ldr	r3, [r10, #512]	@ D.35642, _247->s32Compress_en
	str	r3, [r4, #204]	@ D.35642, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].Compress_en
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L449:
	ldr	r1, .L467	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35639,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L466:
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
	bne	.L449	@,
	ldr	r3, [r6, #408]	@ D.35644, pCur_19->pstDecodeFs
	cmp	r3, #0	@ D.35644,
	beq	.L450	@,
	ldr	r3, [r3, #12]	@ _31->PhyAddr, _31->PhyAddr
	str	r3, [r4, #180]	@ _31->PhyAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_curr_recon_addr
	ldr	r3, [r6, #420]	@ pCur_19->PmvAddr, pCur_19->PmvAddr
	str	r3, [r4, #192]	@ pCur_19->PmvAddr, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].CurPmvAddr
	ldr	r3, [r0, #408]	@ D.35644, pGolden_27->pstDecodeFs
	mov	r0, #1	@ D.35639,
	cmp	r3, #0	@ D.35644,
	ldreq	r3, [r6, #408]	@ pCur_19->pstDecodeFs, pCur_19->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.35640,
	str	r3, [r4, #184]	@ D.35640, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_golden_ref_addr
	ldr	r3, [r8, #408]	@ D.35644, pFwd_23->pstDecodeFs
	cmp	r3, #0	@ D.35644,
	ldreq	r3, [r6, #408]	@ pCur_19->pstDecodeFs, pCur_19->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.35640,
	str	r7, [r4, #4]	@ __p, pCtx_8(D)->pVp6DecParam
	str	r3, [r4, #188]	@ D.35640, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].image_last_ref_addr
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L456:
	str	r0, [r4, #124]	@ D.35645, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_0
	mov	r3, #16	@ tmp446,
	mov	r0, r9	@, pBs
	str	r3, [r4, #128]	@ tmp446, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_0
	ldr	r5, [r8, #8]	@ pVp6StreamParam_11->Length, pVp6StreamParam_11->Length
	bl	BsPos	@
	str	r6, [r4, #140]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_stream_addr_1
	str	r6, [r4, #136]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_offset_1
	mov	r5, r5, asl #3	@ D.35642, pVp6StreamParam_11->Length,
	str	r6, [r4, #132]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_1
	str	r6, [r4, #152]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_0
	str	r6, [r4, #148]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_0
	str	r6, [r4, #144]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_0
	str	r6, [r4, #164]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_stream_addr_1
	str	r6, [r4, #160]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_offset_1
	str	r6, [r4, #156]	@ MEM[(struct VP6_PictureHeader_S *)pCtx_8(D) + 12476B].MultiStream, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit1_len_1
	rsb	r0, r0, r5	@ D.35642,, D.35642
	str	r0, [r4, #120]	@ D.35642, MEM[(struct VP6_DEC_PARAM_S *)pCtx_8(D) + 8B].bit0_len_0
	b	.L457	@
.L450:
	ldr	r1, .L467+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.35639,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L468:
	.align	2
.L467:
	.word	.LC29
	.word	.LC30
	.fnend
	.size	VP6_Set_DecParam, .-VP6_Set_DecParam
	.align	2
	.global	VP6_CfgTable
	.type	VP6_CfgTable, %function
VP6_CfgTable:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ pVp6CodecInfo, pVp6CodecInfo
	.pad #28
	sub	sp, sp, #28	@,,
	add	r0, r0, #2240	@, pVp6CodecInfo,
	mov	r2, #10	@,
	mov	r6, r1	@ pPictureHeader, pPictureHeader
	add	r0, r0, #2	@,,
	add	r1, r4, #4	@, pVp6CodecInfo,
	mov	r3, #0	@ tmp217,
	str	r3, [sp, #8]	@ tmp217, _ptr_msg_bank
	str	r3, [sp, #12]	@ tmp217, _ptr_msg_bank
	add	r5, r4, #2304	@ ivtmp.883, pVp6CodecInfo,
	str	r3, [sp, #16]	@ tmp217, _ptr_msg_bank
	add	r10, r4, #2944	@ tmp467, pVp6CodecInfo,
	str	r3, [sp, #20]	@ tmp217, _ptr_msg_bank
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
	add	r5, r5, #2	@ ivtmp.883, ivtmp.883,
	bl	memcpy	@
	add	r10, r10, #2	@ tmp467, tmp467,
	add	r9, r4, #44	@ ivtmp.886, pVp6CodecInfo,
.L470:
	add	r8, r5, #160	@ D.35755, ivtmp.883,
	mov	r7, r9	@ ivtmp.875, ivtmp.886
.L471:
	mov	r1, r7	@, ivtmp.875
	mov	r0, r5	@, ivtmp.883
	mov	r2, #9	@,
	add	r5, r5, #16	@ ivtmp.883, ivtmp.883,
	bl	memcpy	@
	cmp	r8, r5	@ D.35755, ivtmp.883
	add	r7, r7, #9	@ ivtmp.875, ivtmp.875,
	bne	.L471	@,
	cmp	r8, r10	@ D.35755, tmp467
	add	r9, r9, #90	@ ivtmp.886, ivtmp.886,
	mov	r5, r8	@ ivtmp.883, D.35755
	bne	.L470	@,
	mov	r1, #16	@,
	add	r0, sp, #8	@,,
	bl	__memzero	@
	ldrb	r10, [r4]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	lr, [r4, #487]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r0, r8	@, D.35755
	ldrb	ip, [r4, #488]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r2, #16	@,
	ldrb	r3, [r4, #489]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	add	r1, sp, #8	@,,
	ldrb	r9, [r4, #2]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->IsMvShortProb, pVp6CodecInfo_30(D)->IsMvShortProb
	mov	r5, #0	@ tmp291,
	ldrb	fp, [r4, #484]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r8, [r4, #485]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r7, [r4, #486]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	r10, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	ldrb	r10, [r4, #490]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	lr, [sp, #13]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #14]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #15]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r9, [sp, #9]	@ pVp6CodecInfo_30(D)->IsMvShortProb, _ptr_msg_bank
	strb	fp, [sp, #10]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r8, [sp, #11]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r7, [sp, #12]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r10, [sp, #16]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	bl	memcpy	@
	add	r0, sp, #8	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	lr, [r4, #503]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r0, r4, #2960	@, pVp6CodecInfo,
	ldrb	ip, [r4, #504]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	mov	r2, #16	@,
	ldrb	fp, [r4, #498]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r1, sp, #8	@,,
	ldrb	r10, [r4, #499]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r0, r0, #2	@,,
	ldrb	r9, [r4, #500]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r8, [r4, #501]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r7, [r4, #502]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	r3, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	ldrb	r3, [r4, #505]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	lr, [sp, #14]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	ip, [sp, #15]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r3, [sp, #16]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #9]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r10, [sp, #10]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r9, [sp, #11]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r8, [sp, #12]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r7, [sp, #13]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r5, [sp, #17]	@ tmp291, _ptr_msg_bank
	strb	r5, [sp, #18]	@ tmp291, _ptr_msg_bank
	bl	memcpy	@
	add	r0, sp, #8	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	ldrb	lr, [r4, #495]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	add	r0, r4, #2976	@, pVp6CodecInfo,
	ldrb	ip, [r4, #496]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	mov	r2, #16	@,
	ldrb	fp, [r4, #3]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->IsMvShortProb, pVp6CodecInfo_30(D)->IsMvShortProb
	add	r1, sp, #8	@,,
	ldrb	r10, [r4, #491]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	add	r0, r0, #2	@,,
	ldrb	r9, [r4, #492]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r8, [r4, #493]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	ldrb	r7, [r4, #494]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	r3, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	ldrb	r3, [r4, #497]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvShortProbs, pVp6CodecInfo_30(D)->MvShortProbs
	strb	lr, [sp, #14]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	ip, [sp, #15]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r3, [sp, #16]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	fp, [sp, #9]	@ pVp6CodecInfo_30(D)->IsMvShortProb, _ptr_msg_bank
	strb	r10, [sp, #10]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r9, [sp, #11]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r8, [sp, #12]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	strb	r7, [sp, #13]	@ pVp6CodecInfo_30(D)->MvShortProbs, _ptr_msg_bank
	bl	memcpy	@
	add	r0, sp, #8	@,,
	mov	r1, #16	@,
	bl	__memzero	@
	ldrb	r3, [r4, #507]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSignProbs, pVp6CodecInfo_30(D)->MvSignProbs
	add	r0, r4, #2992	@, pVp6CodecInfo,
	ldrb	r10, [r4, #506]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	add	r1, sp, #8	@,,
	str	r3, [sp, #4]	@ pVp6CodecInfo_30(D)->MvSizeProbs, %sfp
	add	r0, r0, #2	@,,
	ldrb	r3, [r4, #513]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	mov	r2, #16	@,
	ldrb	r9, [r4, #508]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r8, [r4, #509]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	r7, [r4, #510]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	lr, [r4, #511]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	ldrb	ip, [r4, #512]	@ zero_extendqisi2	@ pVp6CodecInfo_30(D)->MvSizeProbs, pVp6CodecInfo_30(D)->MvSizeProbs
	strb	r5, [sp, #17]	@ tmp291, _ptr_msg_bank
	strb	r5, [sp, #18]	@ tmp291, _ptr_msg_bank
	ldrb	r5, [sp, #4]	@ zero_extendqisi2	@, %sfp
	strb	r3, [sp, #16]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	fp, [sp, #8]	@ pVp6CodecInfo_30(D)->MvSignProbs, _ptr_msg_bank
	strb	r10, [sp, #9]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r5, [sp, #10]	@ tmp493, _ptr_msg_bank
	strb	r9, [sp, #11]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r8, [sp, #12]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	r7, [sp, #13]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	lr, [sp, #14]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	strb	ip, [sp, #15]	@ pVp6CodecInfo_30(D)->MvSizeProbs, _ptr_msg_bank
	bl	memcpy	@
	ldr	r3, [r6, #68]	@ pPictureHeader_134(D)->UseHuffman, pPictureHeader_134(D)->UseHuffman
	cmp	r3, #0	@ pPictureHeader_134(D)->UseHuffman,
	bne	.L473	@,
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
	add	r9, r4, #4480	@ ivtmp.860, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #548	@, pVp6CodecInfo,
	add	r0, r4, #4736	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	add	r0, r0, #50	@,,
	mov	r2, #14	@,
	bl	memcpy	@
	add	fp, r4, #5056	@ D.35755, pVp6CodecInfo,
	add	r9, r9, #2	@ ivtmp.860, ivtmp.860,
	add	fp, fp, #2	@ D.35755, D.35755,
	add	r10, r4, #564	@ ivtmp.864, pVp6CodecInfo,
.L474:
	sub	r5, r9, #288	@ ivtmp.848, ivtmp.860,
	mov	r8, r10	@ ivtmp.851, ivtmp.864
.L483:
	add	r7, r5, #48	@ D.35755, ivtmp.848,
	mov	r6, r8	@ ivtmp.840, ivtmp.851
.L481:
	mov	r1, r6	@, ivtmp.840
	mov	r0, r5	@, ivtmp.848
	mov	r2, #11	@,
	add	r5, r5, #16	@ ivtmp.848, ivtmp.848,
	bl	memcpy	@
	cmp	r7, r5	@ D.35755, ivtmp.848
	add	r6, r6, #66	@ ivtmp.840, ivtmp.840,
	bne	.L481	@,
	cmp	r7, r9	@ D.35755, ivtmp.860
	add	r8, r8, #11	@ ivtmp.851, ivtmp.851,
	mov	r5, r7	@ ivtmp.848, D.35755
	bne	.L483	@,
	add	r9, r9, #288	@ ivtmp.860, ivtmp.860,
	add	r10, r10, #198	@ ivtmp.864, ivtmp.864,
	cmp	r9, fp	@ ivtmp.860, D.35755
	bne	.L474	@,
.L480:
	add	r0, r4, #3008	@, pVp6CodecInfo,
	add	r1, r4, #960	@, pVp6CodecInfo,
	mov	r2, #64	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	add	r0, r4, #3072	@, pVp6CodecInfo,
	add	r1, r4, #1024	@, pVp6CodecInfo,
	mov	r2, #64	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	mov	r0, #0	@,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L473:
	add	r1, r4, #9472	@, pVp6CodecInfo,
	add	r0, r4, #4800	@, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	mov	r2, #128	@,
	add	r0, r0, #2	@,,
	add	r9, r4, #5696	@ ivtmp.825, pVp6CodecInfo,
	bl	memcpy	@
	add	r1, r4, #11904	@, pVp6CodecInfo,
	add	r0, r4, #6464	@, pVp6CodecInfo,
	add	r1, r1, #28	@,,
	add	r0, r0, #2	@,,
	mov	r2, #128	@,
	bl	memcpy	@
	add	r10, r4, #9600	@ ivtmp.829, pVp6CodecInfo,
	add	fp, r4, #7232	@ D.35755, pVp6CodecInfo,
	add	r9, r9, #2	@ ivtmp.825, ivtmp.825,
	add	r10, r10, #28	@ ivtmp.829, ivtmp.829,
	add	fp, fp, #2	@ D.35755, D.35755,
.L475:
	sub	r5, r9, #768	@ ivtmp.803, ivtmp.825,
	mov	r8, r10	@ ivtmp.816, ivtmp.829
.L479:
	add	r7, r5, #256	@ D.35755, ivtmp.803,
	mov	r6, r8	@ ivtmp.806, ivtmp.816
.L476:
	mov	r2, #64	@,
	mov	r1, r6	@, ivtmp.806
	mov	r0, r5	@, ivtmp.803
	add	r5, r5, r2	@ ivtmp.803, ivtmp.803,
	bl	memcpy	@
	cmp	r5, r7	@ ivtmp.803, D.35755
	add	r6, r6, #64	@ ivtmp.806, ivtmp.806,
	bne	.L476	@,
	cmp	r9, r5	@ ivtmp.825, ivtmp.803
	add	r8, r8, #384	@ ivtmp.816, ivtmp.816,
	bne	.L479	@,
	add	r9, r9, #768	@ ivtmp.825, ivtmp.825,
	add	r10, r10, #1152	@ ivtmp.829, ivtmp.829,
	cmp	r9, fp	@ ivtmp.825, D.35755
	bne	.L475	@,
	add	r1, r4, #1216	@, pVp6CodecInfo,
	add	r0, r4, #3136	@, pVp6CodecInfo,
	add	r1, r1, #2	@,,
	mov	r2, #960	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	b	.L480	@
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
	beq	.L490	@,
	mov	r2, r1	@, pPictureHeader
	mov	r1, r6	@, pBs
	bl	VP6_DecodeModeProbs	@
	mov	r2, r4	@, pPictureHeader
	mov	r1, r6	@, pBs
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConfigureMvEntropyDecoder	@
.L491:
	ldr	r3, [r4, #20]	@, pPictureHeader_4(D)->FrameType
	mov	r1, r6	@, pBs
	mov	r2, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConfigureEntropyDecoder	@
	ldr	r3, [r4, #68]	@ pPictureHeader_4(D)->UseHuffman, pPictureHeader_4(D)->UseHuffman
	cmp	r3, #0	@ pPictureHeader_4(D)->UseHuffman,
	beq	.L492	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_ConvertBoolToHuff	@
.L492:
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_CfgTable	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L490:
	mov	r2, #80	@,
	ldr	r1, .L497	@,
	add	r0, r0, #404	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #2	@,
	ldr	r1, .L497+4	@,
	add	r0, r5, r2	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #14	@,
	ldr	r1, .L497+8	@,
	add	r0, r5, #484	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r2, #2	@,
	ldr	r1, .L497+12	@,
	mov	r0, r5	@, pVp6CodecInfo
	bl	memcpy	@
	add	r0, r5, #496	@, pVp6CodecInfo,
	mov	r2, #16	@,
	ldr	r1, .L497+16	@,
	add	r0, r0, #2	@,,
	bl	memcpy	@
	mov	r2, #64	@,
	ldr	r1, .L497+20	@,
	add	r0, r5, #1088	@, pVp6CodecInfo,
	bl	memcpy	@
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pVp6CodecInfo
	bl	VP6_BuildScanOrder	@
	b	.L491	@
.L498:
	.align	2
.L497:
	.word	.LANCHOR0+1996
	.word	.LANCHOR0+2076
	.word	.LANCHOR0+2080
	.word	.LANCHOR0+2096
	.word	.LANCHOR0+2100
	.word	.LANCHOR0+2116
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
	beq	.L502	@,
	mov	r0, #1	@ D.35858,
	bx	lr	@
.L502:
	ldr	r3, [r0, #3944]	@ pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb
	ldr	r0, [r0, #4088]	@ pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb
	subs	r0, r3, r0	@ D.35858, pVp6CodecInfo_3(D)->OldHeaderInfo.pic_width_in_mb, pVp6CodecInfo_3(D)->NewHeaderInfo.pic_width_in_mb
	movne	r0, #1	@ D.35858,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r1]	@ D.35868, pPacket_14(D)->StreamPack[0].VirAddr
	.pad #28
	sub	sp, sp, #28	@,,
	str	r3, [r0, #212]	@ D.35868, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].VirAddr
	ldr	r2, [r1, #8]	@ pPacket_14(D)->StreamPack[0].PhyAddr, pPacket_14(D)->StreamPack[0].PhyAddr
	str	r2, [r0, #216]	@ pPacket_14(D)->StreamPack[0].PhyAddr, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].PhyAddr
	ldr	r2, [r1, #12]	@ D.35869, pPacket_14(D)->StreamPack[0].LenInByte
	cmp	r2, #0	@ D.35869,
	str	r2, [r0, #220]	@ D.35869, MEM[(struct STREAM_PARAM *)pCtx_9(D) + 212B].Length
	bne	.L504	@,
	add	r5, r0, #12288	@ tmp403, pCtx,
	mov	r3, #3	@ tmp212,
	strb	r3, [r5, #16]	@ tmp212, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType
.L505:
	mov	r0, r4	@, pCtx
	bl	VP6_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	beq	.L530	@,
	ldr	r1, .L551	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
.L507:
	mov	r0, r8	@, D.35867
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L504:
	cmp	r2, #2	@ D.35869,
	ble	.L544	@,
	add	r5, r0, #12608	@ pBs, pCtx,
	add	r6, r0, #224	@ pVp6CodecInfo, pCtx,
	add	r5, r5, #12	@ pBs, pBs,
	mov	r1, r3	@, D.35868
	mov	r0, r5	@, pBs
	bl	BsInit	@
	add	r3, r4, #212	@ pVp6StreamParam, pCtx,
	mov	r1, r5	@, pBs
	mov	r0, r6	@, pVp6CodecInfo
	str	r3, [r4, #208]	@ pVp6StreamParam, pCtx_9(D)->pVp6StreamParam
	bl	VP6_GetPictureHeader	@
	cmp	r0, #1	@ D.35869,
	mov	r7, r0	@ D.35869,
	beq	.L508	@,
	ldr	r1, .L551+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
	mov	r0, r8	@, D.35867
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L530:
	mov	r0, r4	@, pCtx
	bl	VP6_GetImageBuffer	@
	cmp	r0, #1	@ D.35870,
	mov	r6, r0	@ D.35870,
	beq	.L531	@,
	mov	r0, r7	@, ret
	ldr	r1, .L551+8	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
	mov	r0, r8	@, D.35867
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L544:
	ldr	r1, .L551+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
	mov	r0, r8	@, D.35867
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L508:
	add	r1, r4, #12416	@, pCtx,
	mov	r2, r5	@, pBs
	mov	r0, r6	@, pVp6CodecInfo
	add	r1, r1, #60	@,,
	bl	VP6_BuildTables	@
	cmp	r0, #1	@,
	bne	.L545	@,
	add	r5, r4, #12288	@ tmp403, pCtx,
	ldr	r3, [r5, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated,
	beq	.L512	@,
	ldr	r2, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	cmp	r2, r3	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	bne	.L512	@,
	ldr	r2, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	ldr	r3, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	cmp	r2, r3	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	bne	.L512	@,
	ldr	r3, [r4]	@ D.35872, pCtx_9(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _34->s32DSDWaitFlag, _34->s32DSDWaitFlag
	cmp	r2, #1	@ _34->s32DSDWaitFlag,
	bne	.L505	@,
	b	.L511	@
.L512:
	ldr	r3, [r4]	@ D.35872, pCtx_9(D)->pstExtraData
.L511:
	ldr	r6, [r3, #692]	@ _185->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _185->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r6, #1	@ _185->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L546	@,
.L514:
	ldr	r3, .L551+16	@ tmp272,
	ldr	r3, [r3]	@ D.35873, g_event_report
	cmp	r3, #0	@ D.35873,
	beq	.L521	@,
	ldr	r0, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	add	r2, sp, #16	@,,
	ldr	r6, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	mov	r1, #2	@,
	ldr	lr, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	ip, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	strh	r0, [sp, #22]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb, para
	strh	r6, [sp, #16]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, para
	strh	lr, [sp, #18]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, para
	strh	ip, [sp, #20]	@ movhi	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb, para
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	blx	r3	@ D.35873
.L521:
	mov	r2, #1	@,
	ldr	r1, [r5, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	mov	r7, #0	@ tmp303,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r5, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	add	r6, r4, #12608	@ D.35875, pCtx,
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	add	r6, r6, #40	@ D.35875, D.35875,
	bl	FSP_ClearLogicFs	@
	str	r7, [r5, #28]	@ tmp303, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	str	r7, [r5, #32]	@ tmp303, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r7, [r5, #8]	@ tmp303, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].RefNum
	mov	r1, r6	@, D.35875
	str	r0, [r5, #32]	@ D.35869, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FwdFsID
	str	r0, [r5, #28]	@ D.35869, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].GoldenFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [r5, #216]	@ D.35870, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_width_in_mb
	ldr	r3, [r5, #212]	@ D.35870, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].NewHeaderInfo.pic_height_in_mb
	cmp	r2, #512	@ D.35870,
	bhi	.L523	@,
	cmp	r3, #512	@ D.35870,
	bhi	.L523	@,
	ldr	r3, [r4]	@ D.35872, pCtx_9(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _103->stChanOption.s32ReRangeEn, _103->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _103->stChanOption.s32ReRangeEn,
	bne	.L525	@,
	ldr	r3, [r3, #32]	@ _103->eCapLevel, _103->eCapLevel
	cmp	r3, #25	@ _103->eCapLevel,
	beq	.L547	@,
.L525:
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L527	@,
	ldr	r3, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _111->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L529	@,
	ldr	r3, [r5, #716]	@ pCtx_9(D)->DSDNeedClearQue, pCtx_9(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_9(D)->DSDNeedClearQue,
	beq	.L529	@,
.L527:
	mov	r0, r4	@, pCtx
	bl	VP6_ArrangeVHBMem	@
	cmp	r0, #1	@,
	beq	.L505	@,
	ldr	r1, .L551+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
	b	.L507	@
.L531:
	mov	r2, r0	@, D.35870
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r5, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].CurFsID
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	ip, r0, #0	@ pImage,
	beq	.L548	@,
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	mov	r7, #0	@ tmp364,
	mvn	r2, #0	@ tmp365,
	mvn	r3, #0	@,
	ldr	r1, .L551+24	@,
	mov	r0, #29	@,
	ldrd	r8, [lr, #56]	@ D.35877, pCtx_9(D)->pstExtraData,
	strd	r8, [ip, #8]	@ D.35877, pImage,
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldrd	r8, [lr, #72]	@ D.35877, pCtx_9(D)->pstExtraData,
	strd	r8, [ip, #16]	@ D.35877, pImage,
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldrd	r8, [lr, #88]	@ D.35877, pCtx_9(D)->pstExtraData,
	strd	r8, [ip, #24]	@ D.35877, pImage,
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	lr, [lr, #104]	@ D.35870, _144->DispEnableFlag
	str	lr, [ip, #68]	@ D.35870, pImage_133->DispEnableFlag
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	lr, [lr, #108]	@ D.35870, _147->DispFrameDistance
	str	lr, [ip, #72]	@ D.35870, pImage_133->DispFrameDistance
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	lr, [lr, #112]	@ D.35870, _150->DistanceBeforeFirstFrame
	str	lr, [ip, #76]	@ D.35870, pImage_133->DistanceBeforeFirstFrame
	ldr	lr, [r4]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	lr, [lr, #128]	@ D.35870, _153->GopNum
	str	r7, [ip, #128]	@ tmp364, pImage_133->is_fld_save
	str	lr, [ip, #80]	@ D.35870, pImage_133->GopNum
	ldr	lr, [r4]	@ D.35872, pCtx_9(D)->pstExtraData
	strd	r2, [lr, #56]	@ tmp365, D.35872,
	ldrd	r8, [ip, #16]	@ pImage_133->Usertag, pImage,
	ldrd	r2, [ip, #8]	@ pImage_133->PTS, pImage,
	strd	r8, [sp]	@ pImage_133->Usertag,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pCtx
	bl	VP6_Set_DecParam	@
	cmp	r0, #1	@ D.35867,
	mov	r8, r0	@ D.35867,
	beq	.L533	@,
	mov	r0, r6	@, D.35870
	ldr	r1, .L551+28	@,
	mov	r8, r7	@ D.35867, tmp364
	bl	dprint_vfmw	@
	b	.L507	@
.L533:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].FrameType,
	beq	.L549	@,
	ldr	r7, [r5, #56]	@ TmpVp3VersionNo, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.Vp3VersionNo
	add	r1, r4, #12416	@, pCtx,
	ldr	r6, [r5, #60]	@ TmpVpProfile, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.VpProfile
	add	r0, r4, #12288	@, pCtx,
	add	r1, r1, #60	@,,
	add	r0, r0, #44	@,,
	mov	r2, #144	@,
	bl	memcpy	@
	str	r7, [r5, #56]	@ TmpVp3VersionNo, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.Vp3VersionNo
	str	r6, [r5, #60]	@ TmpVpProfile, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.VpProfile
.L535:
	ldr	r1, .L551+32	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L507	@
.L523:
	ldr	r1, .L551+36	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
.L543:
	mov	r8, #0	@ D.35867,
	b	.L507	@
.L546:
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #16	@,,
	ldr	r0, [r5, #712]	@, pCtx_9(D)->ChanID
	mov	ip, #0	@ tmp239,
	str	ip, [sp, #8]	@ tmp239, NewNum
	str	ip, [sp, #12]	@ tmp239, ReadNum
	str	ip, [sp, #16]	@ tmp239, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4]	@ D.35872, pCtx_9(D)->pstExtraData
	ldr	r1, [r5, #72]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb
	ldr	r2, [r3, #720]	@ _45->s32DSDThrWidth, _45->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _45->s32DSDThrWidth, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_width_in_mb,
	bcc	.L515	@,
	ldr	r1, [r5, #68]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb
	ldr	r2, [r3, #724]	@ _45->s32DSDThrHeight, _45->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _45->s32DSDThrHeight, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].OldHeaderInfo.pic_height_in_mb,
	bcc	.L515	@,
	ldr	r2, [sp, #12]	@ ReadNum, ReadNum
	ldr	r1, [sp, #8]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.35869, ReadNum, NewNum
	cmp	r2, #0	@ D.35869,
	strgt	r6, [r3, #728]	@ _185->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _45->s32DSDWaitFlag
	strle	r6, [r5, #716]	@ _185->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_9(D)->DSDNeedClearQue
	bgt	.L543	@,
.L518:
	mov	r2, #0	@ tmp271,
	str	r2, [r3, #728]	@ tmp271, _45->s32DSDWaitFlag
	b	.L514	@
.L545:
	mov	r0, r7	@, D.35869
	ldr	r1, .L551+40	@,
	bl	dprint_vfmw	@
	mov	r8, #0	@ D.35867,
	b	.L507	@
.L549:
	add	r1, r4, #12416	@, pCtx,
	add	r0, r4, #12288	@, pCtx,
	add	r1, r1, #60	@,,
	mov	r2, #144	@,
	add	r0, r0, #44	@,,
	bl	memcpy	@
	b	.L535	@
.L547:
	ldr	r3, [r5, #12]	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated, MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_9(D) + 224B].Imgbuf_allocated,
	bne	.L527	@,
.L529:
	mov	r0, r6	@, D.35875
	bl	ResetVoQueue	@
	b	.L527	@
.L548:
	movw	r2, #2690	@,
	ldr	r1, .L551+44	@,
	mov	r0, #22	@,
	mov	r8, ip	@ D.35867, pImage
	bl	dprint_vfmw	@
	b	.L507	@
.L515:
	ldr	r2, [sp, #8]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L550	@,
.L519:
	mov	r2, #1	@ tmp267,
	str	r2, [r3, #728]	@ tmp267, _45->s32DSDWaitFlag
	b	.L543	@
.L550:
	ldr	r2, [sp, #12]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L519	@,
	mov	r2, #0	@ tmp270,
	str	r2, [r5, #716]	@ tmp270, pCtx_9(D)->DSDNeedClearQue
	b	.L518	@
.L552:
	.align	2
.L551:
	.word	.LC36
	.word	.LC32
	.word	.LC37
	.word	.LC31
	.word	g_event_report
	.word	.LC35
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC34
	.word	.LC33
	.word	.LC5
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
	and	r3, r3, #3	@ D.35900, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].FrameType,
	mov	ip, #10	@ tmp157,
	orr	r2, r3, #7168	@ D.35900, D.35900,
	str	r3, [r4, #132]	@ D.35900, pImg_9->top_fld_type
	orr	r2, r2, #32	@ D.35900, D.35900,
	str	r3, [r4, #136]	@ D.35900, pImg_9->bottom_fld_type
	str	ip, [r4, #300]	@ tmp157, pImg_9->ImageDnr.video_standard
	mov	r3, #8	@ tmp162,
	mov	ip, #1	@ tmp160,
	str	r2, [r4, #140]	@ D.35900, pImg_9->format
	str	r3, [r4, #304]	@ tmp162, pImg_9->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp162, pImg_9->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp162, pImg_9->ImageDnr.QP_U
	strb	ip, [r4, #295]	@ tmp160, pImg_9->ImageDnr.use_pic_qp_en
	strb	ip, [r4, #293]	@ tmp160, pImg_9->ImageDnr.chroma_format_idc
	bl	SetAspectRatio	@
	ldr	r2, [r5, #216]	@ MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb
	mov	r2, r2, asl #4	@ D.35900, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_width_in_mb,
	str	r2, [r4, #144]	@ D.35900, pImg_9->image_width
	ldr	r3, [r5, #212]	@ MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb
	mov	r3, r3, asl #4	@ D.35900, MEM[(struct VP6_CODECINFO *)pCtx_3(D) + 224B].NewHeaderInfo.pic_height_in_mb,
	str	r3, [r4, #148]	@ D.35900, pImg_9->image_height
	ldr	r1, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r1, [r1, #32]	@ _30->eCapLevel, _30->eCapLevel
	cmp	r1, #25	@ _30->eCapLevel,
	beq	.L560	@,
.L555:
	str	r2, [r4, #152]	@ D.35900, pImg_9->disp_width
	mov	r2, r2, lsr #1	@ D.35900, D.35900,
	str	r3, [r4, #156]	@ D.35900, pImg_9->disp_height
	mov	r3, r3, lsr #1	@ D.35900, D.35900,
	str	r2, [r4, #160]	@ D.35900, pImg_9->disp_center_x
	str	r3, [r4, #164]	@ D.35900, pImg_9->disp_center_y
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L560:
	ldr	r2, [r4, #172]	@ D.35900, pImg_9->image_stride
	mov	r3, r3, lsr #4	@ D.35900, D.35900,
	ldr	r0, [r4, #104]	@ D.35900, pImg_9->luma_phy_addr
	ldr	r1, [r4, #32]	@ D.35903, pImg_9->luma_vir_addr
	mov	lr, r2, asl #4	@ D.35900, D.35900,
	add	ip, r2, r0	@ D.35899, D.35900, D.35900
	str	r0, [r4, #88]	@ D.35900, pImg_9->top_luma_phy_addr
	mul	r3, r3, lr	@ D.35900, D.35900, D.35900
	str	r0, [r4, #120]	@ D.35900, pImg_9->luma_2d_phy_addr
	str	r1, [r4, #48]	@ D.35903, pImg_9->luma_2d_vir_addr
	str	ip, [r4, #96]	@ D.35899, pImg_9->btm_luma_phy_addr
	add	r0, r3, r0	@ D.35900, D.35900, D.35900
	add	r3, r1, r3	@ D.35903, D.35903, D.35900
	add	r2, r2, r0	@ D.35899, D.35900, D.35900
	str	r3, [r4, #36]	@ D.35903, pImg_9->chrom_vir_addr
	str	r2, [r4, #100]	@ D.35899, pImg_9->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.35900, pImg_9->chrom_phy_addr
	str	r0, [r4, #92]	@ D.35900, pImg_9->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #92]	@ pImg_9->top_chrom_phy_addr, pImg_9->top_chrom_phy_addr
	ldr	r2, [r4, #144]	@ D.35900, pImg_9->image_width
	ldr	r3, [r4, #148]	@ D.35900, pImg_9->image_height
	str	r1, [r4, #124]	@ pImg_9->top_chrom_phy_addr, pImg_9->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_9->chrom_2d_vir_addr
	b	.L555	@
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
	mov	r2, r1	@, ErrRatio
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	add	r4, r6, #12288	@ tmp308, pCtx,
	ldr	r1, .L598	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, r6	@, pCtx
	mov	r0, #10	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pCurImg,
	beq	.L591	@,
	cmp	r5, #0	@ ErrRatio,
	blt	.L564	@,
	cmp	r5, #100	@ ErrRatio,
	movlt	r2, r5	@ D.35909, ErrRatio
	movge	r2, #100	@ D.35909,
	str	r2, [r3, #180]	@ D.35909, pCurImg_16->error_level
	ldr	r3, [r6]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r3, [r3]	@ D.35908, _21->s32RefErrThr
	cmp	r2, r3	@ D.35909, D.35908
	bhi	.L592	@,
.L565:
	mov	r0, r6	@, pCtx
	bl	VP6_SetImgFormat	@
	ldr	r3, [r4, #4]	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].UsedDecMode, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].UsedDecMode
	mov	r2, #1	@ tmp201,
	str	r2, [r4, #8]	@ tmp201, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].RefNum
	cmp	r3, #2	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].UsedDecMode,
	beq	.L593	@,
.L566:
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	str	r1, [r4, #36]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].ToQueFsID
.L567:
	cmn	r1, #1	@ D.35908,
	beq	.L568	@,
	mov	r2, #1	@,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #36]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].ToQueFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pToQueImg,
	beq	.L594	@,
	add	r3, r6, #12608	@, pCtx,
	ldr	r0, [r4, #712]	@ pCtx_11(D)->ChanID, pCtx_11(D)->ChanID
	add	r3, r3, #40	@,,
	str	r7, [sp]	@ pToQueImg,
	mov	r2, r6	@, pCtx
	mov	r1, #10	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ ret,
	mov	r5, r0	@ ret,
	bne	.L595	@,
.L568:
	ldr	r3, [r4, #32]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	ldr	r2, [r4, #28]	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	cmp	r3, r2	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	beq	.L570	@,
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	cmp	r3, r1	@ D.35908, D.35908
	beq	.L571	@,
	mov	r1, r3	@, D.35908
	mov	r2, #0	@,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
.L571:
	str	r1, [r4, #32]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType,
	bne	.L596	@,
	ldr	r3, [r4, #28]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	cmp	r3, r1	@ D.35908, D.35908
	beq	.L574	@,
.L597:
	mov	r1, r3	@, D.35908
	mov	r2, #0	@,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
.L574:
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	mov	r2, #1	@,
	str	r1, [r4, #28]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	bl	FSP_SetRef	@
	mov	r0, #1	@ D.35907,
.L588:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L596:
	ldr	r3, [r4, #20]	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].RefreshGoldenFrame, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].RefreshGoldenFrame
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].RefreshGoldenFrame,
	moveq	r0, #1	@ D.35907,
	beq	.L588	@,
	ldr	r3, [r4, #28]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	cmp	r3, r1	@ D.35908, D.35908
	bne	.L597	@,
	b	.L574	@
.L564:
	mov	r2, #0	@ tmp307,
	str	r2, [r3, #180]	@ tmp307, pCurImg_16->error_level
	b	.L565	@
.L593:
	ldrb	r3, [r4, #16]	@ zero_extendqisi2	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType
	cmp	r3, #0	@ MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FrameType,
	beq	.L566	@,
	mvn	r3, #0	@ tmp210,
	ldr	r1, [r4, #24]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	mov	r2, #0	@,
	str	r3, [r4, #36]	@ tmp210, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].ToQueFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #36]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].ToQueFsID
	b	.L567	@
.L595:
	ldr	r1, [r7, #192]	@, pToQueImg_55->p_usrdat
	mov	r6, #0	@ tmp242,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r7, #192]	@ tmp242, pToQueImg_55->p_usrdat
	ldr	r1, [r7, #196]	@, pToQueImg_55->p_usrdat
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r7, #196]	@ tmp242, pToQueImg_55->p_usrdat
	mov	r2, r6	@, tmp242
	ldr	r1, [r4, #36]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].ToQueFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r0, r6	@, tmp242
	ldr	r1, .L598+4	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.35907, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L570:
	mov	r1, r3	@, D.35908
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_GetRef	@
	subs	r2, r0, #0	@ D.35908,
	bne	.L590	@,
	ldr	r3, [r4, #32]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	cmp	r3, r1	@ D.35908, D.35908
	beq	.L571	@,
	mov	r1, r3	@, D.35908
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_SetRef	@
.L590:
	ldr	r1, [r4, #24]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].CurFsID
	b	.L571	@
.L592:
	ldr	r1, .L598+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #28]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	mov	r5, #0	@ tmp185,
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #32]	@, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #28]	@ tmp185, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	str	r5, [r4, #32]	@ tmp185, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	ldr	r0, [r4, #712]	@, pCtx_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r4, #8]	@ tmp185, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].RefNum
	mov	r3, r0	@ D.35908,
	mvn	r0, #0	@ D.35907,
	str	r3, [r4, #32]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].FwdFsID
	str	r3, [r4, #28]	@ D.35908, MEM[(struct VP6_CODECINFO *)pCtx_11(D) + 224B].GoldenFsID
	b	.L588	@
.L594:
	mov	r2, r7	@, pToQueImg
	ldr	r1, .L598+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35907,
	b	.L588	@
.L591:
	ldr	r1, .L598+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35907,
	b	.L588	@
.L599:
	.align	2
.L598:
	.word	.LC41
	.word	.LC45
	.word	.LC43
	.word	.LC44
	.word	.LC42
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
	beq	.L601	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp131,
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp131, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #712]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp131, pImg_10->p_usrdat
.L601:
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
	.type	__func__.32897, %object
	.size	__func__.32897, 17
__func__.32897:
	.ascii	"VP6_DecodeDecide\000"
	.space	3
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"image_size_in_mb abnormal(%d x %d)\012\000"
.LC1:
	.ascii	"vp6 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC2:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC3:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC4:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC5:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC6:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC7:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC8:
	.ascii	"enter VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC9:
	.ascii	"leave VP6_ConvertBoolToHuff\012\000"
	.space	3
.LC10:
	.ascii	"enter VP6_IntraFrmHeader\012\000"
	.space	2
.LC11:
	.ascii	"error: Vp3VersionNo %d > CURRENT_DECODE_VERSION(8)\012"
	.ascii	"\000"
.LC12:
	.ascii	"error: bitstream error!\012\000"
	.space	3
.LC13:
	.ascii	"We have a new size image!\012 The old size is %d x "
	.ascii	"%d, and the new is %d x %d\012\000"
.LC14:
	.ascii	"leave VP6_IntraFrmHeader\012\000"
	.space	2
.LC15:
	.ascii	"VP6_InterFrmHeader VersionNo fault,old:%d,new:%d\012"
	.ascii	"\000"
	.space	2
.LC16:
	.ascii	"[ERR]VP6_GetPictureHeader invalid param!\012\000"
	.space	2
.LC17:
	.ascii	"VP6_GetPictureHeader enter!\012\000"
	.space	3
.LC18:
	.ascii	"VP6_GetPictureHeader leave!\012\000"
	.space	3
.LC19:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC20:
	.ascii	"VP6DEC_Init leave\012\000"
	.space	1
.LC21:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC22:
	.ascii	"----------------- vp6 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC23:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC24:
	.ascii	"P-frm\000"
	.space	2
.LC25:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC26:
	.ascii	"error: DecMode illegal\012\000"
.LC27:
	.ascii	"%s %d NULL == pFwdImg!!\012\000"
	.space	3
.LC28:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC29:
	.ascii	"VP6_Set_DecParam but logic fs is null!\012\000"
.LC30:
	.ascii	"Decord FS is NULL!\012\000"
.LC31:
	.ascii	"Error! Truncated packet\012\000"
	.space	3
.LC32:
	.ascii	"[ERR]VP6_GetPictureHeader Error!\012\000"
	.space	2
.LC33:
	.ascii	"[ERR] VP6_DecodeDecide Error!\012\000"
	.space	1
.LC34:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC35:
	.ascii	"VP6_ArrangeVHBMem err\012\000"
	.space	1
.LC36:
	.ascii	"VP6_DecodeDecide err\012\000"
	.space	2
.LC37:
	.ascii	"VP6DEC_GetImageBuffer err\012\000"
	.space	1
.LC38:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC39:
	.ascii	"VP6_PrePare_decode Error!\012\000"
	.space	1
.LC40:
	.ascii	"leave VP6DEC_Decode\012\000"
	.space	3
.LC41:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC42:
	.ascii	"pCurImg is null\012\000"
	.space	3
.LC43:
	.ascii	"err_level(%d) over ref_thr(%d)\012\000"
.LC44:
	.ascii	"line: %d pToQueImg is null!\012\000"
	.space	3
.LC45:
	.ascii	"insert img to Voqueue failed!\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
