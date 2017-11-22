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
	.file	"mpeg2.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(mpeg2)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o
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
	.type	MP2_SearchStartCode.part.1, %function
MP2_SearchStartCode.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #2	@ ptr, pCode,
	add	ip, r0, r1	@ pEnd, pCode, CodeLen
.L12:
	cmp	ip, r3	@ pEnd, ptr
	bls	.L2	@,
.L15:
	ldrb	r2, [r3]	@ zero_extendqisi2	@ byte, *ptr_26
	cmp	r2, #1	@ byte,
	bls	.L14	@,
.L8:
	add	r3, r3, #3	@ ptr, ptr,
	cmp	ip, r3	@ pEnd, ptr
	bhi	.L15	@,
.L2:
	sub	r0, r1, #3	@ D.32901, CodeLen,
	bx	lr	@
.L14:
	cmp	r2, #0	@ byte,
	bne	.L5	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)ptr_26 + 4294967295B], MEM[(HI_U8 *)ptr_26 + 4294967295B]
	cmp	r2, #0	@ MEM[(HI_U8 *)ptr_26 + 4294967295B],
	addeq	r3, r3, #1	@ ptr, ptr,
	beq	.L12	@,
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)ptr_26 + 1B], MEM[(HI_U8 *)ptr_26 + 1B]
	cmp	r2, #0	@ MEM[(HI_U8 *)ptr_26 + 1B],
	addeq	r3, r3, #2	@ ptr, ptr,
	addne	r3, r3, #4	@ ptr, ptr,
	b	.L12	@
.L5:
	cmp	r2, #1	@ byte,
	bne	.L12	@,
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)ptr_26 + 4294967294B], MEM[(HI_U8 *)ptr_26 + 4294967294B]
	cmp	r2, #0	@ MEM[(HI_U8 *)ptr_26 + 4294967294B],
	bne	.L8	@,
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)ptr_26 + 4294967295B], MEM[(HI_U8 *)ptr_26 + 4294967295B]
	cmp	r2, #0	@ MEM[(HI_U8 *)ptr_26 + 4294967295B],
	bne	.L8	@,
	rsb	r3, r0, r3	@ D.32900, pCode, ptr
	sub	r0, r3, #2	@ D.32901, D.32900,
	bx	lr	@
	.fnend
	.size	MP2_SearchStartCode.part.1, .-MP2_SearchStartCode.part.1
	.align	2
	.global	MP2_ArrangeVHBMem
	.type	MP2_ArrangeVHBMem, %function
MP2_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #69632	@ tmp185, pCtx,
	.pad #40
	sub	sp, sp, #40	@,,
	ldr	r3, [r5, #3704]	@ pSyntaxInfNew, pCtx_12(D)->pSyntaxInfNew
	ldr	r2, [r3, #48]	@ D.32906, pSyntaxInfNew_14->horizontal_size
	cmp	r2, #31	@ D.32906,
	bls	.L19	@,
	ldr	r3, [r3, #52]	@ D.32906, pSyntaxInfNew_14->vertical_size
	cmp	r3, #31	@ D.32906,
	bls	.L19	@,
	ldr	r1, [r0]	@ D.32907, pCtx_12(D)->pstExtraData
	ldr	ip, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	cmp	ip, #25	@ _17->eCapLevel,
	beq	.L33	@,
	mov	r7, r2	@ PicWidth, D.32906
	mov	r10, r3	@ PicHeight, D.32906
	mov	r9, #5	@ D.32910,
	mov	r6, #2	@ PmvNum,
	mov	r8, #3	@ DecFsNum,
.L23:
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp189,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.32907, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp163,
	str	r7, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r10, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #20]	@ _43->s32DnrDispOutEnable, _43->s32DnrDispOutEnable
	str	r10, [sp, #36]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _43->eCapLevel, _43->eCapLevel
	strb	r1, [sp, #4]	@ _43->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r3, #24	@ _43->eCapLevel,
	str	r7, [sp, #32]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #6]	@ tmp163, FspInstCfg.s32RprEnable
	beq	.L25	@,
	uxtb	r3, r6	@ D.32905, PmvNum
	strb	r8, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r9, [sp, #11]	@ D.32910, FspInstCfg.s32ExpectedDispFsNum
.L27:
	add	r1, sp, #4	@ tmp190,,
	ldr	r0, [r5, #4064]	@, pCtx_12(D)->ChanID
	strb	r3, [sp, #12]	@ D.32905, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp169,
	strb	r3, [sp, #8]	@ tmp169, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	beq	.L34	@,
.L19:
	mov	r0, #0	@ D.32904,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L34:
	ldr	r1, [r4]	@ D.32907, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r5, #4064]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _64->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _64->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	clz	r0, r0	@ D.32904,
	mov	r0, r0, lsr #5	@ D.32904, D.32904,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L33:
	ldr	ip, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	ip, #0	@ _17->stChanOption.s32ReRangeEn,
	bne	.L21	@,
	ldr	r7, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	cmp	r2, r7	@ D.32906, PicWidth
	bhi	.L19	@,
	ldr	r10, [r1, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r10	@ D.32906, PicHeight
	bhi	.L19	@,
	ldr	r3, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r8, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L32	@,
.L29:
	mov	r6, #1	@ PmvNum,
	b	.L24	@
.L21:
	ldr	ip, [r1, #568]	@ _17->stChanOption.s32MaxWidth, _17->stChanOption.s32MaxWidth
	cmp	r2, ip	@ D.32906, _17->stChanOption.s32MaxWidth
	bhi	.L19	@,
	ldr	ip, [r1, #572]	@ _17->stChanOption.s32MaxHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, ip	@ D.32906, _17->stChanOption.s32MaxHeight
	bhi	.L19	@,
	ldr	ip, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r7, r2	@ PicWidth, D.32906
	mov	r10, r3	@ PicHeight, D.32906
	ldr	r8, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	ip, #0	@ _17->stChanOption.s32SupportBFrame,
	beq	.L29	@,
.L32:
	add	r3, r8, #1	@ PmvNum, DecFsNum,
	cmp	r3, #17	@ PmvNum,
	movlt	r6, r3	@ PmvNum, PmvNum
	movge	r6, #17	@ PmvNum,
.L24:
	ldrb	r9, [r1, #616]	@ zero_extendqisi2	@ D.32910, _17->stChanOption.s32DisplayFrameNum
	b	.L23	@
.L25:
	strb	r2, [sp, #9]	@ tmp163, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.32905,
	strb	r9, [sp, #11]	@ D.32910, FspInstCfg.s32ExpectedDispFsNum
	b	.L27	@
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #69632	@ tmp549, pCtx,
	ldr	r3, [r4, #2380]	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r7, [r4, #3704]	@ pSyntaxInfNew, pCtx_11(D)->pSyntaxInfNew
	tst	r3, #8388608	@ D.32916,
	mvneq	r6, #0	@ D.32915,
	bne	.L119	@,
.L36:
	mov	r0, r6	@, D.32915
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L119:
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_13->picture_structure, pSyntaxInfNew_13->picture_structure
	cmp	r2, #3	@ pSyntaxInfNew_13->picture_structure,
	beq	.L37	@,
	ldr	r2, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field
	cmp	r2, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field,
	beq	.L37	@,
	ands	r6, r3, #255	@ D.32915, D.32916,
	mov	r5, r0	@ pCtx, pCtx
	bne	.L120	@,
.L39:
	ldr	r2, [r4, #2428]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Imgbuf_allocated, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Imgbuf_allocated
	cmp	r2, #0	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Imgbuf_allocated,
	beq	.L41	@,
	ldr	r2, [r4, #2368]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].UsedDecMode, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].UsedDecMode
	ldr	ip, [r0]	@ D.32923, pCtx_11(D)->pstExtraData
	sub	r2, r2, #2	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].UsedDecMode,
	cmp	r2, #1	@ D.32916,
	bls	.L42	@,
	ldr	r9, [r4, #2420]	@ D.32915, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].RefNum
	ldr	r1, [r4, #2456]	@ D.32924, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
	ldr	r2, [ip, #8]	@ D.32916,
.L43:
	sub	lr, r2, #1	@ tmp380, D.32916,
	str	r2, [r4, #2368]	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].UsedDecMode
	cmp	lr, #4	@ tmp380,
	ldrls	pc, [pc, lr, asl #2]	@ tmp380
	b	.L77	@
.L50:
	.word	.L49
	.word	.L51
	.word	.L59
	.word	.L53
	.word	.L54
.L120:
	ldr	r3, .L131	@ tmp248,
	ldr	r3, [r3]	@ D.32919, g_event_report
	cmp	r3, #0	@ D.32919,
	beq	.L41	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r6, r2	@ D.32915,
	mov	r1, #103	@,
	blx	r3	@ D.32919
	mov	r0, r6	@, D.32915
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L37:
	ldr	r2, [r4, #4068]	@ pCtx_11(D)->numTotalFrame, pCtx_11(D)->numTotalFrame
	ands	r6, r3, #255	@ D.32915, D.32916,
	mov	r5, r0	@ pCtx, pCtx
	add	r2, r2, #1	@ D.32918, pCtx_11(D)->numTotalFrame,
	str	r2, [r4, #4068]	@ D.32918, pCtx_11(D)->numTotalFrame
	beq	.L39	@,
	b	.L120	@
.L124:
	cmp	r2, #0	@ D.32921,
	bne	.L41	@,
	ldr	r2, [r5]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r1, [r9, #180]	@ pFwdImg_124->error_level, pFwdImg_124->error_level
	ldr	r2, [r2]	@ D.32916, _138->s32RefErrThr
	cmp	r1, r2	@ pFwdImg_124->error_level, D.32916
	orrhi	r3, r3, #1	@,, tmp468, D.32921
	cmp	r3, #0	@ tmp468,
	bne	.L41	@,
	ldr	r3, [r0, #180]	@ pBwdImg_128->error_level, pBwdImg_128->error_level
	cmp	r2, r3	@ D.32916, pBwdImg_128->error_level
	bcs	.L71	@,
.L41:
	mov	r6, #0	@ D.32915,
	mov	r0, r6	@, D.32915
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L59:
	mov	r8, #0	@ ret,
.L48:
	bic	r3, r3, #14155776	@ D.32916, D.32916,
	str	r3, [r4, #2380]	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [ip, #528]	@ _196->s32SupportAllP, _196->s32SupportAllP
	cmp	r3, #1	@ _196->s32SupportAllP,
	beq	.L121	@,
	cmp	r9, #0	@ D.32915,
	bne	.L68	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	sub	r2, r3, #2	@ tmp440, D.32917,
	cmp	r2, #1	@ tmp440,
	bls	.L122	@,
.L69:
	cmp	r3, #3	@ D.32917,
	moveq	r8, #0	@ ret,
.L67:
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BwdFsID
	mov	r9, r0	@ pFwdImg,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	clz	r2, r9	@ D.32921, pFwdImg
	mov	r2, r2, lsr #5	@ D.32921, D.32921,
	clz	r3, r0	@ D.32921,
	mov	r3, r3, lsr #5	@ D.32921, D.32921,
	orrs	r1, r3, r2	@ tmp551, D.32921, D.32921
	bne	.L41	@,
	ldrb	r1, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	cmp	r1, #2	@ D.32917,
	beq	.L123	@,
	cmp	r1, #3	@ D.32917,
	beq	.L124	@,
.L71:
	cmp	r8, #0	@ ret,
	movne	r6, #1	@ D.32915,
	bne	.L36	@,
	ldrb	r3, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_13->picture_structure, pSyntaxInfNew_13->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_13->picture_structure,
	beq	.L72	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field,
	bne	.L41	@,
.L72:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_13->progressive_sequence, pSyntaxInfNew_13->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_13->progressive_sequence,
	beq	.L125	@,
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_13->progressive_frame, pSyntaxInfNew_13->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_13->progressive_frame,
	beq	.L126	@,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r3, #1	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r3, [r4, #2544]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.32918, D.32918,
	str	r3, [r4, #2540]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt
.L74:
	ldr	r2, [r4, #2536]	@ pCtx_11(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_11(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Frame_Cnt
	add	r2, r2, #1	@ D.32918, pCtx_11(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.32918, pCtx_11(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, #1	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Frame_Cnt
	b	.L36	@
.L51:
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	sub	r0, r2, #2	@ tmp395, D.32917,
	cmp	r0, #1	@ tmp395,
	bls	.L60	@,
.L77:
	mov	r8, #1	@ ret,
	b	.L48	@
.L54:
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	cmp	r2, #1	@ D.32917,
	beq	.L127	@,
.L60:
	cmp	r2, #2	@ D.32917,
	beq	.L128	@,
.L55:
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_13->picture_structure, pSyntaxInfNew_13->picture_structure
	cmp	r2, #3	@ pSyntaxInfNew_13->picture_structure,
	beq	.L59	@,
	ldr	r2, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field
	mov	r8, #0	@ ret,
	clz	r2, r2	@ D.32921, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field
	mov	r2, r2, lsr #5	@ D.32921, D.32921,
	str	r2, [r4, #2392]	@ D.32921, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Second_Field
	b	.L48	@
.L53:
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	cmp	r2, #1	@ D.32917,
	beq	.L129	@,
	cmp	r2, #3	@ D.32917,
	beq	.L130	@,
.L63:
	cmp	r2, #2	@ D.32917,
	moveq	r8, #1	@ tmp431,
	streq	r8, [r4, #4076]	@ tmp431, pCtx_11(D)->PPicFound
	bne	.L77	@,
	b	.L48	@
.L49:
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_13->picture_coding_type, pSyntaxInfNew_13->picture_coding_type
	cmp	r2, #3	@ pSyntaxInfNew_13->picture_coding_type,
	bne	.L77	@,
	b	.L55	@
.L68:
	cmp	r9, #1	@ D.32915,
	bhi	.L67	@,
.L112:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	b	.L69	@
.L121:
	cmp	r9, #0	@ D.32915,
	bne	.L67	@,
	b	.L112	@
.L42:
	ldr	r2, [ip, #8]	@ D.32918, _28->s32DecMode
	cmp	r2, #4	@ D.32918,
	cmpne	r2, #1	@, D.32918,
	bls	.L44	@,
	ldr	r9, [r4, #2420]	@ D.32915, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].RefNum
	ldr	r1, [r4, #2456]	@ D.32924, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
	b	.L43	@
.L123:
	cmp	r2, #0	@ D.32921,
	bne	.L41	@,
	ldr	r3, [r5]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r2, [r9, #180]	@ pFwdImg_124->error_level, pFwdImg_124->error_level
	ldr	r3, [r3]	@ _134->s32RefErrThr, _134->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_124->error_level, _134->s32RefErrThr
	bls	.L71	@,
	b	.L41	@
.L122:
	mov	r8, r9	@ ret, D.32915
	b	.L67	@
.L44:
	orr	r3, r3, #128	@ D.32916, D.32916,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BwdFsID
	str	r3, [r4, #2380]	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L109	@,
	ldr	r1, [r8, #192]	@, pImg_39->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #196]	@, pImg_39->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #200]	@, pImg_39->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #204]	@, pImg_39->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r8, #192]	@ D.32915, pImg_39->p_usrdat
	str	r6, [r8, #196]	@ D.32915, pImg_39->p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #200]	@ D.32915, pImg_39->p_usrdat
	str	r6, [r8, #204]	@ D.32915, pImg_39->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ D.32915, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ D.32915, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L47	@,
.L109:
	ldr	r1, [r4, #2456]	@ D.32924, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
.L46:
	mov	r9, #0	@ tmp371,
	str	r9, [r4, #2420]	@ tmp371, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].RefNum
	ldr	ip, [r5]	@ D.32923, pCtx_11(D)->pstExtraData
	ldr	r3, [r4, #2380]	@ D.32916, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r2, [ip, #8]	@ D.32916,
	b	.L43	@
.L125:
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.32918, pSyntaxInfNew_13->repeat_first_field
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.32918, pSyntaxInfNew_13->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.32918, D.32918, D.32918
	add	r3, r3, #1	@ D.32918, D.32918,
	add	r3, r3, r1	@ D.32918, D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.32918, D.32918,
	str	r3, [r4, #2540]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt
	b	.L74	@
.L128:
	add	r2, r5, #45056	@ tmp405, pCtx,
	ldrb	r0, [r2, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Last_FieldStruct
	cmp	r0, #3	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Last_FieldStruct,
	beq	.L55	@,
	ldrb	r2, [r2, #272]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].LastDecPicCodingType, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].LastDecPicCodingType
	cmp	r2, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].LastDecPicCodingType,
	bne	.L55	@,
	b	.L77	@
.L127:
	ldr	r2, [ip, #732]	@ _196->s32firstIdecodedflag, _196->s32firstIdecodedflag
	cmp	r2, #0	@ _196->s32firstIdecodedflag,
	beq	.L77	@,
	b	.L55	@
.L130:
	ldr	r2, [r4, #4076]	@ pCtx_11(D)->PPicFound, pCtx_11(D)->PPicFound
	cmp	r2, #0	@ pCtx_11(D)->PPicFound,
	beq	.L55	@,
	b	.L77	@
.L129:
	mov	r2, #0	@ tmp413,
	str	r2, [r4, #4076]	@ tmp413, pCtx_11(D)->PPicFound
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.32917, pSyntaxInfNew_13->picture_coding_type
	cmp	r2, #3	@ D.32917,
	bne	.L63	@,
	b	.L55	@
.L126:
	ldr	r2, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	ldr	r3, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt
	add	r2, r2, #1	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r2, [r4, #2544]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFrmCnt
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.32918, pSyntaxInfNew_13->repeat_first_field
	add	r2, r2, #2	@ D.32918, D.32918,
	add	r3, r3, r2	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt, D.32918
	str	r3, [r4, #2540]	@ D.32918, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].GopHist[3].GopFldCnt
	b	.L74	@
.L47:
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	mov	r1, r0	@ D.32924,
	str	r0, [r4, #2456]	@ D.32924, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.32924, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BwdFsID
	b	.L46	@
.L132:
	.align	2
.L131:
	.word	g_event_report
	.fnend
	.size	MP2_DecodingDecide, .-MP2_DecodingDecide
	.align	2
	.global	MP2_EstimatePicQp
	.type	MP2_EstimatePicQp, %function
MP2_EstimatePicQp:
	.fnstart
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #128
	sub	sp, sp, #128	@,,
	mov	r4, r0	@ pCtx, pCtx
	mov	r2, #128	@,
	ldr	r1, .L140	@,
	mov	r0, sp	@,
	bl	memcpy	@
	add	r3, r4, #69632	@ tmp123, pCtx,
	ldr	r0, [r4, #300]	@ QuantScale, MEM[(struct MP2_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcStr[0].quantiser_scale_code
	ldr	r2, [r3, #2416]	@ pCtx_3(D)->CodecInfo.MpegFlag, pCtx_3(D)->CodecInfo.MpegFlag
	cmp	r2, #1	@ pCtx_3(D)->CodecInfo.MpegFlag,
	beq	.L134	@,
	ldr	r3, [r3, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ _8->q_scale_type, _8->q_scale_type
	cmp	r3, #0	@ _8->q_scale_type,
	addne	r3, sp, #128	@ tmp132,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScale,
	addne	r0, r3, r0, lsl #2	@ tmp129, tmp132, QuantScale,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L134:
	add	sp, sp, #128	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L141:
	.align	2
.L140:
	.word	.LANCHOR0
	.fnend
	.size	MP2_EstimatePicQp, .-MP2_EstimatePicQp
	.global	__aeabi_idiv
	.align	2
	.global	MP2_CalcRealEncFrameRate
	.type	MP2_CalcRealEncFrameRate, %function
MP2_CalcRealEncFrameRate:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #69632	@ tmp200, pCtx,
	ldr	r3, [r4, #3704]	@ D.32943, pCtx_2(D)->pSyntaxInfNew
	ldr	r6, [r4, #2520]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCnt
	ldr	r5, [r4, #2532]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCnt
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ _13->picture_coding_type, _13->picture_coding_type
	ldr	lr, [r3, #72]	@ D.32944, _13->frame_rate
	cmp	r2, #1	@ _13->picture_coding_type,
	ldr	ip, [r4, #2516]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFldCnt
	ldr	r1, [r4, #2528]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFldCnt
	ldr	r2, [r4, #2512]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCntNoRpt
	ldr	r0, [r4, #2524]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCntNoRpt
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	cmp	lr, #0	@ D.32944,
	add	r0, r2, r0	@ FrmNumNoRpt, D.32942, D.32942
	add	r1, ip, r1	@ FldNum, D.32942, D.32942
	movgt	r2, #1	@ tmp164,
	movle	r2, #0	@ tmp164,
	cmp	r0, #0	@ FrmNumNoRpt,
	andgt	r2, r2, #1	@ tmp167, tmp164,
	movle	r2, #0	@ tmp167,
	cmp	r1, #0	@ FldNum,
	andgt	r2, r2, #1	@ tmp173, tmp167,
	movle	r2, #0	@ tmp173,
	cmp	r2, #0	@ tmp173,
	streq	r2, [r4, #2548]	@ tmp173, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].RealFrmRate
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrb	r3, [r3, #27]	@ zero_extendqisi2	@ _13->progressive_sequence, _13->progressive_sequence
	cmp	r3, #1	@ _13->progressive_sequence,
	movne	r0, r0, asl #1	@ D.32942, FrmNumNoRpt,
	addeq	r1, r6, r5	@, D.32942, D.32942
	mul	r0, lr, r0	@, D.32944, D.32942
	bl	__aeabi_idiv	@
	mov	r3, #100	@ tmp190,
	mul	r0, r3, r0	@ D.32942, tmp190, D.32942
	add	r3, r0, #1020	@ tmp193, D.32942,
	cmp	r0, #0	@ D.32942,
	add	r3, r3, #3	@ tmp193, tmp193,
	movlt	r0, r3	@ D.32942, tmp193
	mov	r0, r0, asr #10	@ D.32942, D.32942,
	str	r0, [r4, #2548]	@ D.32942, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].RealFrmRate
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_CalcRealEncFrameRate, .-MP2_CalcRealEncFrameRate
	.align	2
	.global	MP2_CalcDar
	.type	MP2_CalcDar, %function
MP2_CalcDar:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #69632	@ tmp119, pCtx,
	ldr	r3, [r0, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r3, [r3, #84]	@ _4->aspect_ratio_information, _4->aspect_ratio_information
	sub	r3, r3, #1	@ D.32951, _4->aspect_ratio_information,
	cmp	r3, #2	@ D.32951,
	ldrls	r2, .L151	@ tmp121,
	addls	r3, r2, r3, lsl #2	@ tmp122, tmp121, D.32951,
	ldrls	r0, [r3, #128]	@ D.32950, CSWTCH.44
	movhi	r0, #0	@ D.32950,
	bx	lr	@
.L152:
	.align	2
.L151:
	.word	.LANCHOR0
	.fnend
	.size	MP2_CalcDar, .-MP2_CalcDar
	.align	2
	.global	MP2_SetImgFormat
	.type	MP2_SetImgFormat, %function
MP2_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r7, r0, #69632	@ tmp303, pCtx,
	mov	r8, r0	@ pCtx, pCtx
	ldr	r1, [r7, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].CurFsID
	ldr	r0, [r7, #4064]	@, pCtx_9(D)->ChanID
	ldr	r5, [r7, #3704]	@ pSyntaxInfNew, pCtx_9(D)->pSyntaxInfNew
	ldr	r6, [r7, #3708]	@ pSyntaxInfOld, pCtx_9(D)->pSyntaxInfOld
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ D.32955, pSyntaxInfNew_12->picture_coding_type
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ D.32955, pSyntaxInfNew_12->progressive_sequence
	cmp	r3, #4	@ D.32955,
	ldr	r2, [r4, #140]	@ pImg_17->format, pImg_17->format
	subne	r3, r3, #1	@ D.32956, D.32955,
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ D.32955, pSyntaxInfNew_12->picture_structure
	andne	r3, r3, #3	@ D.32958, D.32956,
	moveq	r3, #0	@ D.32958,
	cmp	r1, #0	@ D.32955,
	ubfx	r2, r2, #10, #2	@ fldflg, pImg_17->format,,
	orr	r2, r2, lr	@ fldflg, fldflg, D.32955
	ldr	ip, [r5, #128]	@ vfmt, pSyntaxInfNew_12->video_format
	moveq	r0, #1	@ sfmt,
	movne	r0, #0	@ sfmt,
	movne	lr, #4096	@ D.32958,
	beq	.L189	@,
.L156:
	ldr	r1, [r7, #3704]	@ pCtx_9(D)->pSyntaxInfNew, pCtx_9(D)->pSyntaxInfNew
	and	ip, ip, #3	@ D.32958, vfmt,
	and	r10, r2, #3	@ D.32958, fldflg,
	mov	ip, ip, asl #5	@ D.32958, D.32958,
	ldr	r1, [r1, #84]	@ _148->aspect_ratio_information, _148->aspect_ratio_information
	orr	ip, ip, r0, asl #8	@ D.32958, D.32958, sfmt,
	orr	r2, ip, r10, asl #10	@ D.32958, D.32958, D.32958,
	str	r3, [r4, #132]	@ D.32958, pImg_17->top_fld_type
	sub	r1, r1, #1	@ D.32958, _148->aspect_ratio_information,
	str	r3, [r4, #136]	@ D.32958, pImg_17->bottom_fld_type
	cmp	r1, #2	@ D.32958,
	orr	r3, r2, r3	@ D.32958, D.32958, D.32958
	orr	r3, r3, lr	@ D.32958, D.32958, D.32958
	mov	r0, r4	@, pImg
	ldrls	r9, .L193	@ tmp247,
	movhi	r1, #0	@ D.32965,
	movhi	r9, r1	@ D.32958, D.32965
	addls	r1, r9, r1, lsl #2	@ tmp248, tmp247, D.32958,
	ldrls	r1, [r1, #128]	@ D.32965, CSWTCH.44
	andls	r9, r1, #7	@ D.32958, D.32965,
	movls	r9, r9, asl #14	@ D.32958, D.32958,
	orr	r9, r3, r9	@ D.32958, D.32958, D.32958
	str	r9, [r4, #140]	@ D.32958, pImg_17->format
	bl	SetAspectRatio	@
	mov	r3, #3	@ tmp262,
	str	r3, [r4, #300]	@ tmp262, pImg_17->ImageDnr.video_standard
	mov	r2, #1	@ tmp265,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_12->picture_structure, pSyntaxInfNew_12->picture_structure
	strb	r2, [r4, #295]	@ tmp265, pImg_17->ImageDnr.use_pic_qp_en
	cmp	r3, #3	@ pSyntaxInfNew_12->picture_structure,
	moveq	r3, #0	@ D.32954,
	movne	r3, #4	@ D.32954,
	strb	r3, [r4, #288]	@ D.32954, pImg_17->ImageDnr.pic_structure
	ldr	r3, [r8, #4]	@ D.32959, pCtx_9(D)->pMp2DecParam
	cmp	r3, #0	@ D.32959,
	streqb	r3, [r4, #295]	@ D.32959, pImg_17->ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ D.32956, _63->EstmatedPicQp
	moveq	r2, #32	@ tmp269,
	moveq	r3, r2	@ D.32956, tmp269
	streq	r2, [r4, #304]	@ tmp269, pImg_17->ImageDnr.QP_Y
	mov	r2, #1	@ tmp270,
	strb	r2, [r4, #293]	@ tmp270, pImg_17->ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ D.32956, pImg_17->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ D.32956, pImg_17->ImageDnr.QP_V
	str	r3, [r4, #308]	@ D.32956, pImg_17->ImageDnr.QP_U
	ldr	r3, [r5, #72]	@ D.32958, pSyntaxInfNew_12->frame_rate
	str	r3, [r4, #168]	@ D.32958, pImg_17->frame_rate
	ldr	r3, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r2	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L190	@,
.L163:
	ldr	r3, [r5, #48]	@ D.32958, pSyntaxInfNew_12->horizontal_size
	str	r3, [r4, #144]	@ D.32958, pImg_17->image_width
	ldr	r3, [r5, #52]	@ D.32965, pSyntaxInfNew_12->vertical_size
	str	r3, [r4, #148]	@ D.32965, pImg_17->image_height
.L165:
	ldr	r2, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r2, [r2, #32]	@ _89->eCapLevel, _89->eCapLevel
	cmp	r2, #25	@ _89->eCapLevel,
	beq	.L191	@,
.L166:
	ldr	r2, [r4, #144]	@ D.32958, pImg_17->image_width
	mov	r1, r3, lsr #1	@ D.32958, D.32965,
	str	r1, [r4, #164]	@ D.32958, pImg_17->disp_center_y
	mov	r1, r2, lsr #1	@ D.32958, D.32958,
	str	r1, [r4, #160]	@ D.32958, pImg_17->disp_center_x
	ldr	r1, [r5, #148]	@ D.32958, pSyntaxInfNew_12->display_horizontal_size
	cmp	r1, #0	@ D.32958,
	beq	.L167	@,
	ldr	r0, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r0, #0	@ pSyntaxInfNew_12->display_vertical_size,
	beq	.L167	@,
	cmp	r1, r2	@ D.32958, D.32958
	movcs	r1, r2	@ D.32958, D.32958
	str	r1, [r4, #152]	@ D.32958, pImg_17->disp_width
	ldr	r2, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r3, r2	@ D.32965, pSyntaxInfNew_12->display_vertical_size
	movcs	r3, r2	@ D.32958, pSyntaxInfNew_12->display_vertical_size
	str	r3, [r4, #156]	@ D.32958, pImg_17->disp_height
	b	.L168	@
.L167:
	str	r2, [r4, #152]	@ D.32958, pImg_17->disp_width
	str	r3, [r4, #156]	@ D.32965, pImg_17->disp_height
.L168:
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_sequence, pSyntaxInfNew_12->progressive_sequence
	mov	r0, r8	@, pCtx
	str	r3, [r4, #340]	@ pSyntaxInfNew_12->progressive_sequence, pImg_17->optm_inf.IsProgressiveSeq
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_frame, pSyntaxInfNew_12->progressive_frame
	str	r3, [r4, #344]	@ pSyntaxInfNew_12->progressive_frame, pImg_17->optm_inf.IsProgressiveFrm
	ldr	r3, [r5, #144]	@ pSyntaxInfNew_12->matrix_coefficients, pSyntaxInfNew_12->matrix_coefficients
	str	r3, [r4, #352]	@ pSyntaxInfNew_12->matrix_coefficients, pImg_17->optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	ldr	r3, [r7, #2548]	@ D.32956, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].RealFrmRate
	str	r3, [r4, #348]	@ D.32956, pImg_17->optm_inf.RealFrmRate
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L189:
	cmp	lr, #3	@ D.32955,
	beq	.L192	@,
	ldr	r1, [r7, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field
	cmp	r1, #0	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field,
	bne	.L158	@,
	sub	lr, lr, #1	@ D.32958, D.32955,
	clz	lr, lr	@ D.32958, D.32958
	mov	lr, lr, lsr #5	@ D.32958, D.32958,
	mov	lr, lr, asl #12	@ D.32958, D.32958,
	b	.L156	@
.L190:
	ldr	r3, [r6, #56]	@ D.32958, pSyntaxInfOld_13->mb_width
	cmp	r3, #0	@ D.32958,
	beq	.L163	@,
	ldr	r2, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	cmp	r2, #0	@ pSyntaxInfOld_13->mb_height,
	beq	.L163	@,
	ldrb	r2, [r7, #4083]	@ zero_extendqisi2	@ pCtx_9(D)->DSDNeedFlushFrame, pCtx_9(D)->DSDNeedFlushFrame
	cmp	r2, #0	@ pCtx_9(D)->DSDNeedFlushFrame,
	beq	.L163	@,
	mov	r3, r3, asl #4	@ D.32958, D.32958,
	str	r3, [r4, #144]	@ D.32958, pImg_17->image_width
	ldr	r3, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	mov	r3, r3, asl #4	@ D.32965, pSyntaxInfOld_13->mb_height,
	str	r3, [r4, #148]	@ D.32965, pImg_17->image_height
	b	.L165	@
.L158:
	subs	lr, lr, #1	@ D.32958, D.32955,
	movne	lr, #1	@ D.32958,
	mov	lr, lr, asl #12	@ D.32958, D.32958,
	b	.L156	@
.L192:
	ldrb	lr, [r5, #10]	@ zero_extendqisi2	@ D.32955, pSyntaxInfNew_12->top_field_first
	and	lr, lr, #1	@ D.32958, D.32955,
	mov	lr, lr, asl #12	@ D.32958, D.32958,
	b	.L156	@
.L191:
	ldr	r2, [r4, #172]	@ D.32958, pImg_17->image_stride
	add	r3, r3, #15	@ D.32958, D.32965,
	ldr	r0, [r4, #104]	@ D.32958, pImg_17->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.32958, D.32958,
	ldr	r1, [r4, #32]	@ D.32962, pImg_17->luma_vir_addr
	mov	lr, r2, asl #4	@ D.32958, D.32958,
	add	ip, r2, r0	@ D.32956, D.32958, D.32958
	str	r0, [r4, #88]	@ D.32958, pImg_17->top_luma_phy_addr
	mul	r3, r3, lr	@ D.32958, D.32958, D.32958
	str	r0, [r4, #120]	@ D.32958, pImg_17->luma_2d_phy_addr
	str	ip, [r4, #96]	@ D.32956, pImg_17->btm_luma_phy_addr
	str	r1, [r4, #48]	@ D.32962, pImg_17->luma_2d_vir_addr
	add	r0, r3, r0	@ D.32958, D.32958, D.32958
	add	r3, r1, r3	@ D.32962, D.32962, D.32958
	add	r2, r2, r0	@ D.32956, D.32958, D.32958
	str	r3, [r4, #36]	@ D.32962, pImg_17->chrom_vir_addr
	str	r2, [r4, #100]	@ D.32956, pImg_17->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.32958, pImg_17->chrom_phy_addr
	str	r0, [r4, #92]	@ D.32958, pImg_17->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ pImg_17->top_chrom_phy_addr, pImg_17->top_chrom_phy_addr
	ldr	r3, [r4, #148]	@ D.32965, pImg_17->image_height
	str	r2, [r4, #124]	@ pImg_17->top_chrom_phy_addr, pImg_17->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_17->chrom_2d_vir_addr
	b	.L166	@
.L194:
	.align	2
.L193:
	.word	.LANCHOR0
	.fnend
	.size	MP2_SetImgFormat, .-MP2_SetImgFormat
	.align	2
	.global	MP2_SearchStartCode
	.type	MP2_SearchStartCode, %function
MP2_SearchStartCode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #4	@ CodeLen,
	ble	.L196	@,
	b	MP2_SearchStartCode.part.1	@
.L196:
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	MP2_SearchStartCode, .-MP2_SearchStartCode
	.align	2
	.global	MP2_ProtocolPPSCheck
	.type	MP2_ProtocolPPSCheck, %function
MP2_ProtocolPPSCheck:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #69632	@ tmp289, pCtx,
	ldr	r3, [r4, #2416]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].MpegFlag
	ldr	r1, [r4, #3704]	@ pSyntaxInfNew, pCtx_7(D)->pSyntaxInfNew
	cmp	r3, #1	@ D.32971,
	beq	.L199	@,
	cmp	r3, #2	@ D.32971,
	beq	.L200	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #63	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
.L206:
	tst	r3, #24	@ D.32971,
	beq	.L208	@,
.L225:
	cmp	r2, #3	@ D.32975,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L209:
	orr	r3, r3, #64	@ D.32971, D.32971,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	str	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L212	@,
	ldr	r1, [r5, #192]	@, pImg_47->p_usrdat
	mov	r6, #0	@ tmp234,
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_47->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_47->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_47->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp234, pImg_47->p_usrdat
	str	r6, [r5, #196]	@ tmp234, pImg_47->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp234, pImg_47->p_usrdat
	str	r6, [r5, #204]	@ tmp234, pImg_47->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ tmp234, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ tmp234, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r6	@,
	bne	.L224	@,
.L212:
	mov	r3, #0	@ tmp282,
	str	r3, [r4, #2420]	@ tmp282, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].RefNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L200:
	ldr	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #1048576	@ D.32971,
	orreq	r3, r3, #16	@ D.32971, D.32971,
	streq	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #1	@ tmp190, D.32975,
	cmp	r0, #2	@ tmp190,
	bls	.L206	@,
.L222:
	orr	r3, r3, #8	@ D.32971, D.32971,
	str	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #24	@ D.32971,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
	bne	.L225	@,
.L208:
	cmp	r2, #1	@ D.32975,
	biceq	r3, r3, #192	@ D.32971, D.32971,
	streq	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L199:
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
	sub	r3, r2, #1	@ tmp154, D.32975,
	cmp	r3, #3	@ tmp154,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrhi	r3, r3, #8	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strhi	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrhib	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #2	@ tmp169, D.32975,
	cmp	r0, #1	@ tmp169,
	bls	.L226	@,
.L203:
	cmp	r2, #3	@ D.32975,
	beq	.L227	@,
	tst	r3, #24	@ D.32971,
	bne	.L209	@,
	b	.L208	@
.L224:
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.32973, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.32973, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	b	.L212	@
.L227:
	ldrb	r2, [r1, #26]	@ zero_extendqisi2	@ pSyntaxInfNew_9->backward_f_code, pSyntaxInfNew_9->backward_f_code
	cmp	r2, #0	@ pSyntaxInfNew_9->backward_f_code,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L222	@
.L226:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ pSyntaxInfNew_9->forward_f_code, pSyntaxInfNew_9->forward_f_code
	cmp	r0, #0	@ pSyntaxInfNew_9->forward_f_code,
	orreq	r3, r3, #8	@ D.32971, D.32971,
	streq	r3, [r4, #2380]	@ D.32971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldreqb	r2, [r1, #22]	@ zero_extendqisi2	@ D.32975, pSyntaxInfNew_9->picture_coding_type
	b	.L203	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #69632	@ tmp231, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.32987,
	str	r0, [r4, #2464]	@ D.32987, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].CurFsID
	blt	.L238	@,
	mov	r1, r0	@, D.32987
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_GetLogicFs	@
	adds	r0, r0, #0	@ D.32986,,
	movne	r0, #1	@ D.32986,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L238:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L231	@,
	ldr	r1, [r6, #192]	@, pImg_17->p_usrdat
	mov	r7, #0	@ tmp171,
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #196]	@, pImg_17->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #200]	@, pImg_17->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #204]	@, pImg_17->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp171, pImg_17->p_usrdat
	str	r7, [r6, #196]	@ tmp171, pImg_17->p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #200]	@ tmp171, pImg_17->p_usrdat
	str	r7, [r6, #204]	@ tmp171, pImg_17->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, #2456]	@ tmp171, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].FwdFsID
	str	r7, [r4, #2460]	@ tmp171, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r7	@,
	bne	.L239	@,
.L231:
	add	r1, r5, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	mov	r5, #0	@ tmp219,
	add	r1, r1, #640	@,,
	str	r5, [r4, #2420]	@ tmp219, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.32986, tmp219
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L239:
	ldr	r0, [r4, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.32987, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.32987, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].BwdFsID
	b	.L231	@
	.fnend
	.size	MP2_GetImageBuffer, .-MP2_GetImageBuffer
	.align	2
	.global	MP2_GetPictureInfo
	.type	MP2_GetPictureInfo, %function
MP2_GetPictureInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r9, r0, #69632	@ tmp639, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r9, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	ldr	r8, [r9, #3704]	@ pSyntaxInfNew, pCtx_18(D)->pSyntaxInfNew
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	ldr	r6, [r9, #3708]	@ pSyntaxInfOld, pCtx_18(D)->pSyntaxInfOld
	beq	.L310	@,
.L241:
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L242	@,
	ldr	r2, [r9, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r9, #2424]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	clz	r3, r2	@ D.33033, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	mov	r3, r3, lsr #5	@ D.33033, D.33033,
	str	r3, [r9, #2392]	@ D.33033, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r2, [r8, #156]	@ pSyntaxInfNew_20->temporal_reference, pSyntaxInfNew_20->temporal_reference
	cmp	r2, r1	@ pSyntaxInfNew_20->temporal_reference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	moveq	r3, #0	@, tmp388
	andne	r3, r3, #1	@,, tmp388, D.33033
	cmp	r3, #0	@ tmp388,
	bne	.L311	@,
.L306:
	add	r5, r4, #45056	@ tmp638, pCtx,
.L244:
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->picture_structure
	strb	r3, [r5, #273]	@ D.33032, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	ldr	r3, [r8, #156]	@ D.33031, pSyntaxInfNew_20->temporal_reference
	str	r3, [r9, #2424]	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	ldr	r3, [r8, #56]	@ pSyntaxInfNew_20->mb_width, pSyntaxInfNew_20->mb_width
	strh	r3, [r4, #160]	@ movhi	@ pSyntaxInfNew_20->mb_width, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicWidthInMb
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	ldr	r3, [r8, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	ldreq	r2, [r8, #64]	@ pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height_progressive_subtract1mb
	movne	r3, r3, lsr #1	@ D.33031, pSyntaxInfNew_20->mb_height,
	rsbeq	r3, r2, r3	@ tmp463, pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #156]	@ movhi	@ tmp463, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicHeightInMb
	ldr	r3, [r8, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #158]	@ movhi	@ pSyntaxInfNew_20->mb_height, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FrameHeightInMb
	ldrb	r3, [r8, #11]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->frame_pred_frame_dct
	strb	r3, [r4, #13]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FramePredFrameDct
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->picture_structure
	strb	r3, [r4, #11]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PictureStructure
	ldr	r2, [r9, #2392]	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	strb	r2, [r4, #12]	@ D.33031, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].SecondFieldFlag
	ldrb	r3, [r8, #12]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->concealment_motion_vectors
	strb	r3, [r4, #15]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].ConcealmentMotionVectors
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->picture_coding_type
	strb	r3, [r4, #8]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicCodingType
	ldr	r3, [r9, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	sub	r3, r3, #1	@ D.33033, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	clz	r3, r3	@ D.33033, D.33033
	mov	r3, r3, lsr #5	@ D.33033, D.33033,
	str	r3, [r4, #188]	@ D.33033, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mpeg1Flag
	cmp	r3, #0	@ D.33033,
	ldrneb	r3, [r8, #25]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->full_pel_backward_vector
	strneb	r3, [r4, #9]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1BwdmvFullPel
	ldrneb	r3, [r8, #23]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->full_pel_forward_vector
	strneb	r3, [r4, #10]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1FwdmvFullPel
	ldrb	r3, [r8, #4]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #20]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #5]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #21]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #6]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #22]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #7]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #23]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #10]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->top_field_first
	strb	r3, [r4, #14]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TopFieldFirst
	ldrb	r3, [r8, #8]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->intra_dc_precision
	strb	r3, [r4, #19]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraDcPrecision
	ldrb	r3, [r8, #13]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->q_scale_type
	strb	r3, [r4, #18]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].QuantType
	ldrb	r3, [r8, #14]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->intra_vlc_format
	strb	r3, [r4, #17]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraVlcFormat
	ldrb	r3, [r8, #15]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->alternate_scan
	strb	r3, [r4, #16]	@ D.33032, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].AlternateScan
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r2, #0	@ D.33031,
	cmpne	r3, #3	@, pSyntaxInfNew_20->picture_structure,
	bne	.L253	@,
	mov	r1, #0	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetImageBuffer	@
	subs	r3, r0, #0	@ D.33030,
	bne	.L312	@,
	mov	r0, r3	@, D.33030
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L312:
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L255	@,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	mvn	r6, #0	@ tmp515,
	mvn	r7, #0	@,
	ldrd	r2, [r3, #56]	@ D.33037, pCtx_18(D)->pstExtraData,
	strd	r2, [r0, #8]	@ D.33037, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.33037, pCtx_18(D)->pstExtraData,
	strd	r2, [r0, #16]	@ D.33037, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.33037, pCtx_18(D)->pstExtraData,
	strd	r2, [r0, #24]	@ D.33037, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.33031, _133->DispEnableFlag
	str	r3, [r0, #68]	@ D.33031, pImg_123->DispEnableFlag
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.33031, _136->DispFrameDistance
	str	r3, [r0, #72]	@ D.33031, pImg_123->DispFrameDistance
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.33031, _139->DistanceBeforeFirstFrame
	str	r3, [r0, #76]	@ D.33031, pImg_123->DistanceBeforeFirstFrame
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.33031, _142->GopNum
	str	r3, [r0, #80]	@ D.33031, pImg_123->GopNum
	ldr	r3, [r4]	@ D.33036, pCtx_18(D)->pstExtraData
	strd	r6, [r3, #56]	@ tmp515, D.33036,
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	subs	r3, r3, #3	@ D.33033, pSyntaxInfNew_20->picture_structure,
	movne	r3, #1	@ D.33033,
	str	r3, [r0, #128]	@ D.33033, pImg_123->is_fld_save
.L255:
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L253	@,
	ldr	r3, [r9, #2420]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	ldr	r1, [r9, #2456]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum,
	ldr	r3, [r9, #2460]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	movne	r2, #2	@ D.33030,
	moveq	r2, #1	@ D.33030,
	cmp	r1, r3	@ D.33034, D.33034
	str	r2, [r9, #2420]	@ D.33030, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	beq	.L258	@,
	mov	r2, #0	@,
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r9, #2460]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
.L258:
	ldr	r1, [r9, #2464]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	str	r3, [r9, #2456]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	str	r1, [r9, #2460]	@ D.33034, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r9, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_RemovePmv	@
.L253:
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r9, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	mov	r6, r0	@ pCur,
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r9, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	mov	r7, r0	@ pFwd,
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r6, #0	@ pCur,
	cmpne	r7, #0	@, pFwd,
	moveq	r3, #1	@ tmp595,
	movne	r3, #0	@ tmp595,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp601, tmp595
	cmp	r3, #0	@ tmp601,
	bne	.L260	@,
	ldr	r2, [r6, #408]	@ D.33038, pCur_170->pstDecodeFs
	cmp	r2, #0	@ D.33038,
	beq	.L260	@,
	ldr	r3, [r6, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	cmp	r3, #0	@ pCur_170->pstTfOutFs,
	beq	.L260	@,
	ldr	r3, [r6, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	cmp	r3, #0	@ pCur_170->pstDispOutFs,
	beq	.L260	@,
	ldr	r3, [r0, #408]	@ D.33038, pBwd_178->pstDecodeFs
	add	ip, r4, #87	@ ivtmp.128, pCtx,
	add	r1, r4, #23	@ ivtmp.143, pCtx,
	cmp	r3, #0	@ D.33038,
	ldreq	r3, [r2, #12]	@ D.33030, _182->PhyAddr
	add	r2, r4, #71680	@ tmp630, pCtx,
	ldrne	r3, [r3, #12]	@ D.33030, _185->PhyAddr
	add	lr, r2, #600	@ ivtmp.119, tmp630,
	add	r2, r2, #856	@ ivtmp.136, tmp630,
	str	r3, [r4, #200]	@ D.33030, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefPhyAddr
	ldr	r3, [r7, #408]	@ D.33038, pFwd_174->pstDecodeFs
	cmp	r3, #0	@ D.33038,
	ldreq	r3, [r6, #408]	@ pCur_170->pstDecodeFs, pCur_170->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.33030,
	str	r3, [r4, #204]	@ D.33030, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefPhyAddr
	ldr	r3, [r6, #408]	@ pCur_170->pstDecodeFs, pCur_170->pstDecodeFs
	ldr	r3, [r3, #12]	@ _198->PhyAddr, _198->PhyAddr
	str	r3, [r4, #208]	@ _198->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].CurPicPhyAddr
	ldr	r3, [r6, #420]	@ pCur_170->PmvAddr, pCur_170->PmvAddr
	str	r3, [r4, #248]	@ pCur_170->PmvAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PmvColmbPhyAddr
	ldr	r3, [r0, #416]	@ D.33038, pBwd_178->pstTfOutFs
	cmp	r3, #0	@ D.33038,
	ldreq	r3, [r6, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.33030,
	str	r3, [r4, #220]	@ D.33030, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfBwdPhyAddr
	ldr	r3, [r7, #416]	@ D.33038, pFwd_174->pstTfOutFs
	cmp	r3, #0	@ D.33038,
	ldreq	r3, [r6, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.33030,
	str	r3, [r4, #224]	@ D.33030, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfFwdPhyAddr
	mov	r3, #0	@ i,
	ldr	r8, [r6, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r8, [r8, #12]	@ _219->PhyAddr, _219->PhyAddr
	str	r8, [r4, #228]	@ _219->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfCurPhyAddr
	ldr	r8, [r6, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r8, [r8, #12]	@ _223->PhyAddr, _223->PhyAddr
	str	r8, [r4, #232]	@ _223->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DispFramePhyAddr
	ldr	r0, [r0, #136]	@ D.33031, pBwd_178->stDispImg.is_fld_save
	str	r0, [r4, #212]	@ D.33031, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefIsFldSave
	ldr	r0, [r7, #136]	@ D.33031, pFwd_174->stDispImg.is_fld_save
	str	r0, [r4, #216]	@ D.33031, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefIsFldSave
	ldr	r0, [r6, #416]	@ pCur_170->pstTfOutFs, pCur_170->pstTfOutFs
	ldr	r0, [r0, #12]	@ _231->PhyAddr, _231->PhyAddr
	str	r0, [r5, #264]	@ _231->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DnrMbInfoStAddr
	ldr	r0, [r6, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r0, [r0, #20]	@ _235->Stride, _235->Stride
	str	r0, [r4, #236]	@ _235->Stride, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].VahbStride
	ldr	r0, [r6, #412]	@ pCur_170->pstDispOutFs, pCur_170->pstDispOutFs
	ldr	r0, [r0, #32]	@ _239->ChromOffset, _239->ChromOffset
	str	r0, [r4, #240]	@ _239->ChromOffset, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].uv_offset
.L269:
	ldr	r0, [lr, #4]!	@ MEM[base: _285, offset: 0B], MEM[base: _285, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	strb	r0, [ip, #1]!	@ MEM[base: _285, offset: 0B], MEM[base: _286, offset: 0B]
	ldr	r0, [r2, #4]!	@ MEM[base: _287, offset: 0B], MEM[base: _287, offset: 0B]
	strb	r0, [r1, #1]!	@ MEM[base: _287, offset: 0B], MEM[base: _288, offset: 0B]
	bne	.L269	@,
	mov	r0, r4	@, pCtx
	bl	MP2_EstimatePicQp	@
	mov	r3, #1	@ D.33030,
	strb	r0, [r4, #152]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].EstmatedPicQp
	mov	r0, r3	@, D.33030
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L260:
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	mov	r2, #1	@,
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	bl	FSP_ClearLogicFs	@
	mov	r3, #0	@ D.33030,
	mov	r0, r3	@, D.33030
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L242:
	add	r5, r4, #45056	@ tmp638, pCtx,
	ldrb	r3, [r5, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	cmp	r3, #3	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct,
	beq	.L247	@,
	ldr	r3, [r9, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field,
	beq	.L313	@,
.L247:
	mov	r3, #1	@ tmp446,
	str	r3, [r9, #2392]	@ tmp446, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	b	.L244	@
.L310:
	ldrb	r2, [r8, #26]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->backward_f_code
	ldrb	r3, [r8, #24]	@ zero_extendqisi2	@ D.33032, pSyntaxInfNew_20->forward_f_code
	strb	r2, [r8, #7]	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r2, [r8, #6]	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r8, #5]	@ D.33032, pSyntaxInfNew_20->f_code
	strb	r3, [r8, #4]	@ D.33032, pSyntaxInfNew_20->f_code
	b	.L241	@
.L313:
	mov	r2, #1	@,
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L247	@,
	ldrb	r3, [r6, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	ldrne	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	orrne	r3, r3, #192	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	strne	r3, [r9, #2380]	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L247	@
.L311:
	mov	r3, #0	@ tmp393,
	mov	r2, #1	@,
	str	r3, [r9, #2392]	@ tmp393, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L306	@,
	ldrb	r3, [r6, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	beq	.L306	@,
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	add	r5, r4, #45056	@ tmp638, pCtx,
	orr	r3, r3, #192	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.33031, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L244	@
	.fnend
	.size	MP2_GetPictureInfo, .-MP2_GetPictureInfo
	.align	2
	.global	MP2_SetVDMInf
	.type	MP2_SetVDMInf, %function
MP2_SetVDMInf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #69632	@ tmp152, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	add	r0, r0, #71680	@ pBs, pCtx,
	ldrb	r3, [r5, #2332]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.IsLastSeg
	add	r0, r0, #576	@ pBs, pBs,
	ldr	lr, [r5, #2344]	@ D.33045, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.IsLastSeg,
	ldr	r3, [r5, #2648]	@ D.33046, MEM[(struct BS *)pCtx_2(D) + 72256B].TotalPos
	ldr	ip, [r5, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	add	r1, r3, #7	@ tmp172, D.33046,
	beq	.L318	@,
	cmp	r3, #0	@ D.33046,
	add	r2, lr, r3, lsr #3	@ D.33045, D.33045, D.33046,
	ldr	r6, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	bic	r2, r2, #3	@ D.33045, D.33045,
	movge	r1, r3	@ D.33046, D.33046
	add	r3, r3, lr, lsl #3	@ bs_offset, D.33046, D.33045,
	and	r3, r3, #31	@ D.33045, bs_offset,
	add	r1, ip, r1, asr #3	@ D.33046, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.33046,
	str	r1, [r5, #2328]	@ D.33046, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	bic	r6, r6, #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r3, [r4, #172]	@ D.33045, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	str	r2, [r4, #164]	@ D.33045, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	str	r6, [r4, #168]	@ stream_base_addr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	str	r0, [r4, #180]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldr	r3, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	and	r3, r3, #3	@ D.33045, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	mov	r3, r3, asl #3	@ D.33045, D.33045,
	str	r3, [r4, #176]	@ D.33045, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	ldr	r3, [r5, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.33046, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #184]	@ D.33046, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L318:
	cmp	r3, #0	@ D.33046,
	add	r2, lr, r3, lsr #3	@ D.33045, D.33045, D.33046,
	bic	r2, r2, #3	@ stream_base_addr, D.33045,
	movge	r1, r3	@ D.33046, D.33046
	add	r3, r3, lr, lsl #3	@ bs_offset, D.33046, D.33045,
	and	r3, r3, #31	@ D.33045, bs_offset,
	add	r1, ip, r1, asr #3	@ D.33046, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.33046,
	str	r1, [r5, #2328]	@ D.33046, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	str	r3, [r4, #172]	@ D.33045, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	str	r2, [r4, #164]	@ stream_base_addr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	mov	r3, #0	@ tmp183,
	str	r3, [r4, #168]	@ tmp183, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	str	r3, [r4, #176]	@ tmp183, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	str	r3, [r4, #184]	@ tmp183, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	str	r0, [r4, #180]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_SetVDMInf, .-MP2_SetVDMInf
	.align	2
	.global	MP2_DecNewPic
	.type	MP2_DecNewPic, %function
MP2_DecNewPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	bl	MP2_SetVDMInf	@
	ldr	r2, [r4]	@ D.33050, pCtx_5(D)->pstExtraData
	add	r1, r4, #45056	@ tmp144, pCtx,
	add	r3, r4, #69632	@ tmp197, pCtx,
	ldr	r0, [r2, #512]	@ D.33051, _7->s32Compress_en
	str	r0, [r1, #268]	@ D.33051, pCtx_5(D)->Mp2DecParam.Compress_en
	ldr	r1, [r3, #3704]	@ D.33052, pCtx_5(D)->pSyntaxInfNew
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ D.33053, _10->picture_coding_type
	cmp	r0, #3	@ D.33053,
	beq	.L338	@,
	cmp	r0, #2	@ D.33053,
	moveq	r0, #1	@ tmp163,
	streq	r0, [r3, #4076]	@ tmp163, pCtx_5(D)->PPicFound
.L321:
	add	ip, r4, #8	@ D.33056, pCtx,
	str	ip, [r4, #4]	@ D.33056, pCtx_5(D)->pMp2DecParam
	ldr	r0, [r2, #708]	@ D.33051, _7->stDisParams.s32Mode
	cmp	r0, #1	@ D.33051,
	beq	.L339	@,
	cmp	r0, #2	@ D.33051,
	beq	.L340	@,
.L324:
	ldr	r2, [r3, #2380]	@ pCtx_5(D)->CodecInfo.StreamIntegrality, pCtx_5(D)->CodecInfo.StreamIntegrality
	bic	r2, r2, #16252928	@ D.33054, pCtx_5(D)->CodecInfo.StreamIntegrality,
	str	r2, [r3, #2380]	@ D.33054, pCtx_5(D)->CodecInfo.StreamIntegrality
	ldrb	r5, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r5, #1	@ _10->picture_coding_type,
	movne	r0, #1	@ D.33049,
	beq	.L341	@,
.L322:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L341:
	ldr	r2, .L342	@ tmp185,
	ldr	r6, [r2]	@ D.33057, g_event_report
	cmp	r6, #0	@ D.33057,
	moveq	r0, r5	@ D.33049, _10->picture_coding_type
	beq	.L322	@,
	ldr	ip, [r4, #180]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	r2, sp, #8	@ tmp192,,
	ldr	lr, [r4, #184]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	mov	r1, #20	@,
	ldr	r0, [r3, #4064]	@, pCtx_5(D)->ChanID
	add	r3, ip, lr	@ D.33051, pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	ip, r3, #7	@ tmp190, D.33051,
	cmp	r3, #0	@ D.33051,
	movlt	r3, ip	@ D.33051, tmp190
	mov	r3, r3, asr #3	@ D.33051, D.33051,
	str	r3, [r2, #-4]!	@ D.33051, para
	blx	r6	@ D.33057
	mov	r0, r5	@ D.33049, _10->picture_coding_type
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L338:
	ldr	r0, [r3, #4076]	@ pCtx_5(D)->PPicFound, pCtx_5(D)->PPicFound
	cmp	r0, #0	@ pCtx_5(D)->PPicFound,
	bne	.L321	@,
	ldr	ip, [r3, #2420]	@ pCtx_5(D)->CodecInfo.RefNum, pCtx_5(D)->CodecInfo.RefNum
	cmp	ip, #2	@ pCtx_5(D)->CodecInfo.RefNum,
	beq	.L321	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ _10->picture_structure, _10->picture_structure
	cmp	r2, #3	@ _10->picture_structure,
	ldrne	r2, [r3, #2392]	@ pCtx_5(D)->CodecInfo.Second_Field, pCtx_5(D)->CodecInfo.Second_Field
	clzne	r2, r2	@ D.33055, pCtx_5(D)->CodecInfo.Second_Field
	movne	r2, r2, lsr #5	@ D.33055, D.33055,
	strne	r2, [r3, #2392]	@ D.33055, pCtx_5(D)->CodecInfo.Second_Field
	b	.L322	@
.L339:
	cmp	ip, #0	@ D.33056,
	beq	.L324	@,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r2, #3	@ _10->picture_coding_type,
	moveq	r0, #0	@ tmp165,
	streq	r0, [r4, #4]	@ tmp165, pCtx_5(D)->pMp2DecParam
	bne	.L324	@,
	b	.L322	@
.L340:
	ldr	r0, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	cmp	ip, #0	@ D.33056,
	cmpne	r0, #0	@, _7->stDisParams.s32DisNums,
	ble	.L324	@,
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r0, #3	@ _10->picture_coding_type,
	bne	.L324	@,
	mov	r0, #0	@ tmp175,
	str	r0, [r4, #4]	@ tmp175, pCtx_5(D)->pMp2DecParam
	ldr	r3, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.33051, _7->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.33051, _7->stDisParams.s32DisNums
	b	.L322	@
.L343:
	.align	2
.L342:
	.word	g_event_report
	.fnend
	.size	MP2_DecNewPic, .-MP2_DecNewPic
	.align	2
	.global	MP2_RecordVFMWState
	.type	MP2_RecordVFMWState, %function
MP2_RecordVFMWState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #69632	@ tmp155, pCtx,
	ldr	r3, [r0]	@ D.33061, pCtx_3(D)->pstExtraData
	ldr	r0, [r2, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r0, #48]	@ D.33062, pSyntaxInfNew_5->horizontal_size
	str	r1, [r3, #400]	@ D.33062, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_width
	ldr	r1, [r0, #52]	@ D.33062, pSyntaxInfNew_5->vertical_size
	str	r1, [r3, #404]	@ D.33062, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_height
	ldr	r1, [r2, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r1, #84]	@ _30->aspect_ratio_information, _30->aspect_ratio_information
	sub	r1, r1, #1	@ D.33062, _30->aspect_ratio_information,
	cmp	r1, #2	@ D.33062,
	ldrls	ip, .L349	@ tmp136,
	movhi	r1, #0	@ D.33065,
	addls	r1, ip, r1, lsl #2	@ tmp137, tmp136, D.33062,
	ldrls	r1, [r1, #128]	@ D.33065, CSWTCH.44
	str	r1, [r3, #408]	@ D.33065, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].aspect_ratio
	mov	r1, #0	@ tmp139,
	str	r1, [r3, #412]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].scan_type
	str	r1, [r3, #416]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].video_format
	ldr	ip, [r0, #72]	@ D.33062, pSyntaxInfNew_5->frame_rate
	str	r1, [r3, #424]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].bit_rate
	str	ip, [r3, #420]	@ D.33062, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].frame_rate
	ldr	ip, [r2, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	sub	ip, ip, #1	@ D.33063, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	clz	ip, ip	@ D.33063, D.33063
	mov	ip, ip, lsr #5	@ D.33063, D.33063,
	str	ip, [r3, #428]	@ D.33063, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].sub_video_standard
	ldr	ip, [r0, #40]	@ D.33062, pSyntaxInfNew_5->profile
	str	ip, [r3, #432]	@ D.33062, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].profile
	ldr	r0, [r0, #44]	@ D.33062, pSyntaxInfNew_5->level
	str	r0, [r3, #436]	@ D.33062, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].level
	ldr	r0, [r2, #4068]	@ D.33060, pCtx_3(D)->numTotalFrame
	str	r0, [r3, #440]	@ D.33060, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].total_frame_num
	ldr	r0, [r2, #4068]	@ D.33060, pCtx_3(D)->numTotalFrame
	ldr	r2, [r2, #4072]	@ D.33060, pCtx_3(D)->numOutputFrame
	cmp	r0, r2	@ D.33060, D.33060
	rsbge	r1, r2, r0	@ D.33060, D.33060, D.33060
	str	r1, [r3, #444]	@ D.33060, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].error_frame_num
	bx	lr	@
.L350:
	.align	2
.L349:
	.word	.LANCHOR0
	.fnend
	.size	MP2_RecordVFMWState, .-MP2_RecordVFMWState
	.align	2
	.global	MP2_GetUsrData
	.type	MP2_GetUsrData, %function
MP2_GetUsrData:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r9, r0, #71680	@ tmp422, pCtx,
	add	r5, r9, #576	@ pBs, tmp422,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pCtx, pCtx
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r7, r0, #7	@ tmp196, D.33096,
	cmp	r0, #0	@ D.33096,
	movlt	r0, r7	@ D.33096, tmp196
	mov	r7, r0, asr #3	@ RemainByte, D.33096,
	cmp	r7, #0	@ RemainByte,
	ble	.L370	@,
	mov	r6, #0	@ cnt,
	ldr	r10, .L392	@ tmp431,
	mov	r4, r6	@ i, cnt
	b	.L356	@
.L390:
	bl	BsGet	@
	add	r4, r4, #1	@ i, i,
	cmp	r4, r7	@ i, RemainByte
	strb	r0, [r10, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
	beq	.L352	@,
.L356:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.33097,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.33097,
	beq	.L353	@,
	cmp	r6, #1024	@ cnt,
	blt	.L390	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	add	r4, r4, #1	@ i, i,
	bl	BsGet	@
	cmp	r4, r7	@ i, RemainByte
	bne	.L356	@,
.L352:
	add	r7, r8, #69632	@ tmp424, pCtx,
	movw	r3, #2332	@ tmp413,
	ldrsb	r10, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r10, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L367	@,
.L389:
	mov	r4, #0	@ D.33093,
.L357:
	ldr	r5, [r7, #2412]	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.33096,
	ble	.L369	@,
.L368:
	add	r5, r9, #344	@ ivtmp.164, tmp422,
	add	r9, r9, #360	@ D.33092, tmp422,
	mov	r10, #0	@ tmp425,
.L361:
	ldr	r1, [r5, #4]!	@, MEM[base: _175, offset: 0B]
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r5, r9	@ ivtmp.164, D.33092
	str	r10, [r5]	@ tmp425, MEM[base: _175, offset: 0B]
	mov	r3, #0	@ tmp314,
	bne	.L361	@,
	mov	r5, r3	@ D.33094, tmp314
	str	r3, [r7, #2412]	@ tmp314, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L369:
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	add	r5, r8, r5, lsl #2	@ D.33103, pCtx, D.33094,
	bl	GetUsd	@
	add	r5, r5, #69632	@ tmp423, D.33103,
	str	r0, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldr	r3, [r7, #2412]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r8, r3, lsl #2	@ tmp331, pCtx, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum,
	add	r3, r3, #71680	@ tmp335, tmp331,
	add	r3, r3, #72	@ tmp335, tmp335,
	ldr	r3, [r3, #276]	@ tmp337, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].pUsrDatArray
	cmp	r3, #0	@ tmp337,
	beq	.L378	@,
	ldr	r3, [r8]	@ pCtx_24(D)->pstExtraData, pCtx_24(D)->pstExtraData
	add	r0, r0, #1056	@ tmp340, D.33102,
	ldr	r1, .L392	@,
	ldrd	r2, [r3, #56]	@ D.33105, pCtx_24(D)->pstExtraData,
	strd	r2, [r0]	@ D.33105, _100->PTS
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldr	r2, [r7, #2384]	@ D.33097, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].SeqCnt
	str	r2, [r3, #1040]	@ D.33097, _107->seq_cnt
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	str	r6, [r3, #1048]	@ cnt, _110->data_size
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldrb	r2, [r2, #22]	@ zero_extendqisi2	@ D.33107, _113->picture_coding_type
	strb	r2, [r3, #1024]	@ D.33107, _112->pic_coding_type
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldr	r2, [r7, #4068]	@ pCtx_24(D)->numTotalFrame, pCtx_24(D)->numTotalFrame
	str	r2, [r3, #1028]	@ pCtx_24(D)->numTotalFrame, _116->pic_num_count
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2	@ D.33107, _121->top_field_first
	strb	r2, [r3, #1025]	@ D.33107, _120->top_field_first
	ldr	r3, [r7, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality
	tst	r3, #524288	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality,
	ldr	r3, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	movne	r2, #3	@ tmp374,
	moveq	r2, #1	@ tmp377,
	str	r2, [r3, #1036]	@ tmp377,
	ldr	r0, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldr	r2, [r0, #1048]	@ D.33096, _130->data_size
	cmp	r2, #1024	@ D.33096,
	movgt	r3, #1024	@ tmp380,
	strgt	r3, [r0, #1048]	@ tmp380, _130->data_size
	ldrgt	r0, [r5, #2396]	@ D.33102, MEM[(struct MP2CODECINF *)_151 + 72028B]
	ldrgt	r2, [r0, #1048]	@ D.33096, _154->data_size
	bl	memcpy	@
	ldr	r3, .L392+4	@ tmp388,
	ldr	r3, [r3]	@ D.33109, g_event_report
	cmp	r3, #0	@ D.33109,
	beq	.L366	@,
	ldr	ip, [r5, #2396]	@ MEM[(struct MP2CODECINF *)_151 + 72028B], MEM[(struct MP2CODECINF *)_151 + 72028B]
	add	r2, sp, #8	@ tmp392,,
	mov	r1, #6	@,
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	str	ip, [r2, #-4]!	@ MEM[(struct MP2CODECINF *)_151 + 72028B], para
	blx	r3	@ D.33109
.L366:
	ldr	r3, [r7, #2412]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r3, #1	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum,
	str	r3, [r7, #2412]	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L378:
	mov	r0, r4	@, D.33093
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L367:
	movw	r3, #2333	@ tmp207,
	ldrsb	r3, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L373	@,
	ldr	r4, [r7, #2356]	@ D.33093, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	cmp	r4, #0	@ D.33093,
	beq	.L357	@,
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r4, #1	@ tmp266,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.33101, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, D.33101
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.33099, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r10, [r7, #2333]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	add	r2, r2, #3	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	mov	r1, r3	@, D.33099
	str	r2, [r7, #2352]	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2336]	@ D.33099, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.33097, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r10, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.33097, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	str	r10, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	str	r10, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	strb	r4, [r7, #2332]	@ tmp266, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r4, [r7, #2333]	@ tmp266, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	strb	r10, [r7, #2332]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	fp, r0, #7	@ tmp302, D.33096,
	cmp	r0, #0	@ D.33096,
	movlt	r0, fp	@ D.33096, tmp302
	mov	fp, r0, asr #3	@ tmp303, D.33096,
	sub	fp, fp, #3	@ RemainByte, tmp303,
	cmp	fp, #0	@ RemainByte,
	ble	.L372	@,
	ldr	r4, .L392	@ tmp428,
	b	.L360	@
.L391:
	bl	BsGet	@
	strb	r0, [r4, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
.L359:
	add	r10, r10, #1	@ i, i,
	cmp	r10, fp	@ i, RemainByte
	beq	.L389	@,
.L360:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.33097,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.33097,
	beq	.L373	@,
	cmp	r6, #1024	@ cnt,
	blt	.L391	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	b	.L359	@
.L353:
	add	r7, r8, #69632	@ tmp424, pCtx,
	mov	r4, r3	@ D.33093, D.33097
	ldr	r5, [r7, #2412]	@ D.33096, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.33096,
	bgt	.L368	@,
	b	.L369	@
.L373:
	mov	r4, r3	@ D.33093, D.33097
	b	.L357	@
.L370:
	mov	r6, #0	@ cnt,
	b	.L352	@
.L372:
	mov	r4, r10	@ D.33093, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	b	.L357	@
.L393:
	.align	2
.L392:
	.word	.LANCHOR1
	.word	g_event_report
	.fnend
	.size	MP2_GetUsrData, .-MP2_GetUsrData
	.align	2
	.global	next_start_code
	.type	next_start_code, %function
next_start_code:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	mov	r7, r0	@ pCtx, pCtx
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r4, r0	@ pcode,
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.33122,
	add	r3, r0, #7	@ tmp162, D.33122,
	movge	r1, r0	@ D.33122, D.33122
	movlt	r1, r3	@ D.33122, tmp162
	mov	r1, r1, asr #3	@ tmp163, D.33122,
	cmp	r1, #4	@ tmp163,
	movle	r1, #0	@ D.33122,
	bgt	.L420	@,
.L395:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	mov	r6, r0	@ D.33122,
	add	r0, r0, #7	@ tmp165, D.33122,
	cmp	r6, #0	@ D.33122,
	movlt	r6, r0	@ D.33122, tmp165
	mov	r6, r6, asr #3	@ tmp166, D.33122,
	sub	r6, r6, #3	@ remain_byte, tmp166,
	cmp	r6, #0	@ remain_byte,
	movgt	r4, #0	@ i,
	bgt	.L401	@,
	b	.L402	@
.L399:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L402	@,
.L401:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L399	@,
.L404:
	mov	r0, #1	@ D.33123,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L402:
	add	r7, r7, #69632	@ tmp171, pCtx,
	movw	r3, #2332	@ tmp174,
	ldrsb	r4, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r4, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	bne	.L398	@,
	ldrb	r3, [r7, #2333]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L398	@,
	ldr	r3, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	beq	.L398	@,
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	mov	r2, #3	@,
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r6, #1	@ tmp241,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.33128, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, D.33128
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.33126, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r6, [r7, #2332]	@ tmp241, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r1, r3	@, D.33126
	add	r2, r2, #3	@ D.33122, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r7, #2336]	@ D.33126, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.33129, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r2, [r7, #2352]	@ D.33122, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.33129, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	strb	r4, [r7, #2333]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	str	r4, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r4, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	str	r4, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	bl	BsInit	@
	strb	r6, [r7, #2333]	@ tmp241, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	strb	r4, [r7, #2332]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r6, r0	@ pcode,
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.33122,
	add	r1, r0, #7	@ tmp277, D.33122,
	movge	r3, r0	@ D.33122, D.33122
	movlt	r3, r1	@ D.33122, tmp277
	mov	r1, r3, asr #3	@ tmp278, D.33122,
	cmp	r1, #4	@ tmp278,
	movle	r1, r4	@ D.33122, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	bgt	.L421	@,
.L403:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp280, D.33122,
	cmp	r0, #0	@ D.33122,
	movlt	r0, r6	@ D.33122, tmp280
	mov	r6, r0, asr #3	@ tmp281, D.33122,
	sub	r6, r6, #3	@ remain_byte, tmp281,
	cmp	r6, #0	@ remain_byte,
	ble	.L398	@,
	mov	r4, #0	@ i,
	b	.L405	@
.L422:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L398	@,
.L405:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L422	@,
	b	.L404	@
.L398:
	mov	r0, #0	@ D.33123,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L420:
	mov	r0, r4	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.33122,,
	b	.L395	@
.L421:
	mov	r0, r6	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.33122,,
	b	.L403	@
	.fnend
	.size	next_start_code, .-next_start_code
	.align	2
	.global	sequence_header
	.type	sequence_header, %function
sequence_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r7, r0, #71680	@ tmp211, pCtx,
	add	r6, r7, #576	@ pBs, tmp211,
	add	r4, r0, #69632	@ tmp165, pCtx,
	mov	r2, #65536	@ tmp170,
	mov	r3, #0	@ tmp175,
	str	r2, [r4, #2380]	@ tmp170, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality
	mov	r1, #12	@,
	str	r3, [r4, #2376]	@ tmp175, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].NewSeqInited
	mov	r5, r0	@ pCtx, pCtx
	mov	r0, r6	@, pBs
	ldr	r8, [r4, #3704]	@ pSyntaxInfNew, pCtx_12(D)->pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #12	@,
	str	r0, [r8, #48]	@, pSyntaxInfNew_16->horizontal_size
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [r8, #52]	@, pSyntaxInfNew_16->vertical_size
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #4	@,
	str	r0, [r8, #84]	@, pSyntaxInfNew_16->aspect_ratio_information
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #18	@,
	str	r0, [r8, #88]	@, pSyntaxInfNew_16->frame_rate_code
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #92]	@, pSyntaxInfNew_16->bit_rate_value
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality
	orreq	r3, r3, #1	@ D.33191, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality,
	streq	r3, [r4, #2380]	@ D.33191, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality
.L424:
	mov	r1, #10	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r8, #96]	@, pSyntaxInfNew_16->vbv_buffer_size
	mov	r0, r6	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r8, #1]	@, pSyntaxInfNew_16->constrained_parameters_flag
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33190,
	str	r0, [r8, #76]	@ D.33190, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L431	@,
	ldr	r2, .L439	@ ivtmp.230,
	add	r3, r7, #600	@ ivtmp.235, tmp211,
	add	r0, r7, #856	@ D.33189, tmp211,
.L427:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2	@ MEM[base: _46, offset: 0B], MEM[base: _46, offset: 0B]
	str	r1, [r3, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.235, D.33189
	bne	.L427	@,
.L426:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33190,
	str	r0, [r8, #80]	@ D.33190, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	beq	.L432	@,
	add	r5, r5, #72704	@ D.33189, pCtx,
	add	r3, r7, #856	@ ivtmp.206, tmp211,
	add	r5, r5, #88	@ D.33189, D.33189,
	mov	r2, #16	@ tmp213,
.L429:
	str	r2, [r3, #4]!	@ tmp213, MEM[base: _53, offset: 0B]
	cmp	r3, r5	@ ivtmp.206, D.33189
	bne	.L429	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L431:
	ldr	r10, .L439+4	@ ivtmp.220,
	add	r9, r10, #64	@ D.33189, ivtmp.220,
.L425:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r10, #1]!	@ zero_extendqisi2	@ D.33190, MEM[base: _82, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp187, D.33190,
	cmp	r10, r9	@ ivtmp.220, D.33189
	add	r3, r3, #150	@ tmp187, tmp187,
	add	r3, r5, r3, lsl #2	@ tmp188, pCtx, tmp187,
	str	r0, [r3, #4]	@, pCtx_12(D)->intra_quantizer_matrix
	bne	.L425	@,
	b	.L426	@
.L432:
	ldr	r7, .L439+4	@ ivtmp.196,
	add	r8, r7, #64	@ D.33189, ivtmp.196,
.L428:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33190, MEM[base: _55, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp192, D.33190,
	cmp	r7, r8	@ ivtmp.196, D.33189
	add	r3, r3, #214	@ tmp192, tmp192,
	add	r3, r5, r3, lsl #2	@ tmp193, pCtx, tmp192,
	str	r0, [r3, #4]	@, pCtx_12(D)->non_intra_quantizer_matrix
	bne	.L428	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L440:
	.align	2
.L439:
	.word	.LANCHOR2-1
	.word	.LANCHOR2+63
	.fnend
	.size	sequence_header, .-sequence_header
	.align	2
	.global	group_of_pictures_header
	.type	group_of_pictures_header, %function
group_of_pictures_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	add	r4, r0, #69632	@ tmp129, pCtx,
	mov	r1, #1	@,
	mov	r7, #0	@ tmp155,
	mov	r0, r5	@, pBs
	ldr	r6, [r4, #3704]	@ pSyntaxInfNew, pCtx_1(D)->pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r6, #2]	@, pSyntaxInfNew_4->drop_flag
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r6, #100]	@, pSyntaxInfNew_4->hour
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #104]	@, pSyntaxInfNew_4->minute
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r5	@, pBs
	mov	r1, #6	@,
	bl	BsGet	@
	mov	r1, #6	@,
	str	r0, [r6, #108]	@, pSyntaxInfNew_4->sec
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #112]	@, pSyntaxInfNew_4->frame
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #116]	@, pSyntaxInfNew_4->closed_gop
	mov	r0, r5	@, pBs
	bl	BsGet	@
	add	ip, r4, #2512	@ tmp137, tmp129,
	add	r5, r4, #2496	@ tmp135, tmp129,
	add	r3, ip, #12	@ tmp143, tmp143,
	add	r5, r5, #4	@ tmp135, tmp135,
	add	lr, r4, #2528	@ tmp151, tmp129,
	add	lr, lr, #8	@ tmp151, tmp151,
	str	r0, [r6, #120]	@, pSyntaxInfNew_4->broken_link
	ldmia	ip, {r0, r1, r2}	@ tmp137,,,
	stmia	r5, {r0, r1, r2}	@ tmp135,,,
	ldmia	r3, {r0, r1, r2}	@ tmp143,,,
	stmia	ip, {r0, r1, r2}	@ tmp137,,,
	ldmia	lr, {r0, r1, r2}	@ tmp151,,,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
	str	r7, [r4, #2536]	@ tmp155, pCtx_1(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	str	r7, [r4, #2544]	@ tmp155, pCtx_1(D)->CodecInfo.GopHist[3].GopFrmCnt
	str	r7, [r4, #2540]	@ tmp155, pCtx_1(D)->CodecInfo.GopHist[3].GopFldCnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	group_of_pictures_header, .-group_of_pictures_header
	.align	2
	.global	sequence_extension
	.type	sequence_extension, %function
sequence_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #69632	@ tmp298, pCtx,
	add	r4, r0, #71680	@ pBs, pCtx,
	mov	r2, #0	@ tmp204,
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	str	r2, [r6, #2376]	@ tmp204, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].NewSeqInited
	mov	r1, #8	@,
	orr	r3, r3, #131072	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	ldr	r5, [r6, #3704]	@ pSyntaxInfNew, pCtx_6(D)->pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #124]	@, pSyntaxInfNew_9->profile_and_level_indication
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #27]	@, pSyntaxInfNew_9->progressive_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #28]	@, pSyntaxInfNew_9->chroma_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	mov	r10, r0	@ D.33204,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	r8, r0	@ D.33204,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.33204,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L444	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	orr	r3, r3, #2	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L444:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r9, r0	@ vbv_buffer_size_extension,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #29]	@, pSyntaxInfNew_9->low_delay
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #30]	@, pSyntaxInfNew_9->frame_rate_extension_n
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r3, [r5, #30]	@ zero_extendqisi2	@ D.33204, pSyntaxInfNew_9->frame_rate_extension_n
	uxtb	r1, r0	@ D.33204, D.33204
	strb	r0, [r5, #31]	@ D.33204, pSyntaxInfNew_9->frame_rate_extension_d
	add	r1, r1, #1	@, D.33204,
	add	r0, r3, #1	@, D.33204,
	bl	__aeabi_idiv	@
	ldr	r1, [r5, #88]	@ pSyntaxInfNew_9->frame_rate_code, pSyntaxInfNew_9->frame_rate_code
	ldr	r2, .L466	@ tmp228,
	ldr	r3, [r5, #124]	@ D.33203, pSyntaxInfNew_9->profile_and_level_indication
	add	r2, r2, r1, lsl #2	@ tmp230, tmp228, pSyntaxInfNew_9->frame_rate_code,
	tst	r3, #128	@ D.33203,
	ldr	r2, [r2, #140]	@ tmp233, frame_rate_Table
	mul	r0, r2, r0	@ D.33203, tmp233,
	str	r0, [r5, #72]	@ D.33203, pSyntaxInfNew_9->frame_rate
	bne	.L465	@,
	ubfx	r2, r3, #4, #3	@ D.33203, D.33203,,
	and	r3, r3, #15	@ D.33203, D.33203,
	str	r2, [r5, #40]	@ D.33203, pSyntaxInfNew_9->profile
	str	r3, [r5, #44]	@ D.33203, pSyntaxInfNew_9->level
.L447:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_9->horizontal_size, pSyntaxInfNew_9->horizontal_size
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_9->vertical_size, pSyntaxInfNew_9->vertical_size
	ubfx	r3, r3, #0, #12	@ D.33203, pSyntaxInfNew_9->horizontal_size,,
	ubfx	r2, r2, #0, #12	@ D.33203, pSyntaxInfNew_9->vertical_size,,
	orr	r3, r3, r10, asl #12	@ D.33203, D.33203, D.33204,
	orr	r8, r2, r8, asl #12	@ D.33203, D.33203, D.33204,
	str	r3, [r5, #48]	@ D.33203, pSyntaxInfNew_9->horizontal_size
	cmp	r8, #0	@ D.33203,
	cmpne	r3, #0	@, D.33203,
	str	r8, [r5, #52]	@ D.33203, pSyntaxInfNew_9->vertical_size
	ldreq	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	orreq	r3, r3, #1	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality,
	streq	r3, [r6, #2380]	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	ldreq	r3, [r5, #48]	@ D.33203, pSyntaxInfNew_9->horizontal_size
	cmp	r3, #8192	@ D.33203,
	bhi	.L449	@,
	ldr	r3, [r5, #52]	@ pSyntaxInfNew_9->vertical_size, pSyntaxInfNew_9->vertical_size
	cmp	r3, #8192	@ pSyntaxInfNew_9->vertical_size,
	bls	.L450	@,
.L449:
	ldr	r2, .L466+4	@ tmp275,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.33207, g_event_report
	orr	r3, r3, #1	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33203, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.33207,
	beq	.L450	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_6(D)->ChanID
	blx	ip	@ D.33207
.L450:
	ldr	r3, [r5, #92]	@ pSyntaxInfNew_9->bit_rate_value, pSyntaxInfNew_9->bit_rate_value
	mov	r2, #400	@ tmp282,
	ldr	r1, [r5, #40]	@ pSyntaxInfNew_9->profile, pSyntaxInfNew_9->profile
	add	r7, r3, r7, lsl #18	@ D.33203, pSyntaxInfNew_9->bit_rate_value, D.33204,
	str	r7, [r5, #92]	@ D.33203, pSyntaxInfNew_9->bit_rate_value
	sub	r1, r1, #4	@ D.33203, pSyntaxInfNew_9->profile,
	ldr	r3, [r5, #96]	@ pSyntaxInfNew_9->vbv_buffer_size, pSyntaxInfNew_9->vbv_buffer_size
	mul	r7, r2, r7	@ D.33203, tmp282, D.33203
	cmp	r1, #1	@ D.33203,
	add	r9, r3, r9, lsl #10	@ D.33203, pSyntaxInfNew_9->vbv_buffer_size, vbv_buffer_size_extension,
	str	r9, [r5, #96]	@ D.33203, pSyntaxInfNew_9->vbv_buffer_size
	str	r7, [r5, #68]	@ D.33203, pSyntaxInfNew_9->bit_rate
	bls	.L452	@,
	ldr	r3, .L466+4	@ tmp288,
	ldr	r3, [r3]	@ D.33207, g_event_report
	cmp	r3, #0	@ D.33207,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_6(D)->ChanID
	blx	r3	@ D.33207
.L452:
	ldr	r3, [r5, #44]	@ pSyntaxInfNew_9->level, pSyntaxInfNew_9->level
	sub	r3, r3, #4	@ D.33203, pSyntaxInfNew_9->level,
	cmp	r3, #6	@ D.33203,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L466+4	@ tmp294,
	ldr	r3, [r3]	@ D.33207, g_event_report
	cmp	r3, #0	@ D.33207,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r0, [r6, #4064]	@, pCtx_6(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.33207
.L465:
	and	r3, r3, #15	@ D.33203, D.33203,
	cmp	r3, #5	@ D.33203,
	moveq	r2, #133	@ tmp236,
	moveq	r3, #8	@ tmp237,
	streq	r2, [r5, #40]	@ tmp236, pSyntaxInfNew_9->profile
	streq	r3, [r5, #44]	@ tmp237, pSyntaxInfNew_9->level
	b	.L447	@
.L467:
	.align	2
.L466:
	.word	.LANCHOR0
	.word	g_event_report
	.fnend
	.size	sequence_extension, .-sequence_extension
	.align	2
	.global	sequence_display_extension
	.type	sequence_display_extension, %function
sequence_display_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r6, r0, #69632	@ tmp155, pCtx,
	add	r4, r0, #71680	@ pBs, pCtx,
	mov	r1, #3	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r5, [r6, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	orr	r3, r3, #262144	@ D.33210, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.33210, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #128]	@, pSyntaxInfNew_6->video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.33211,
	str	r0, [r5, #132]	@ D.33211, pSyntaxInfNew_6->color_description
	bne	.L476	@,
.L469:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #148]	@, pSyntaxInfNew_6->display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L470	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	orr	r3, r3, #4	@ D.33210, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33210, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L470:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r5, #152]	@, pSyntaxInfNew_6->display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L476:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #136]	@, pSyntaxInfNew_6->color_primaries
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r5, #140]	@, pSyntaxInfNew_6->transfer_characteristics
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r5, #144]	@, pSyntaxInfNew_6->matrix_coefficients
	b	.L469	@
	.fnend
	.size	sequence_display_extension, .-sequence_display_extension
	.align	2
	.global	quant_matrix_extension
	.type	quant_matrix_extension, %function
quant_matrix_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	add	r5, r5, #576	@ pBs, pBs,
	add	r3, r0, #69632	@ tmp139, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	ldr	r9, [r3, #3704]	@ pSyntaxInfNew, pCtx_13(D)->pSyntaxInfNew
	bl	BsGet	@
	cmp	r0, #1	@ D.33245,
	str	r0, [r9, #76]	@ D.33245, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L503	@,
.L478:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33245,
	str	r0, [r9, #80]	@ D.33245, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	ldreq	r7, .L505	@ ivtmp.267,
	addeq	r8, r7, #64	@ D.33249, ivtmp.267,
	beq	.L480	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L482	@,
.L488:
	mov	r4, #64	@ D.33244,
.L483:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.33244, D.33244,
	bne	.L483	@,
.L482:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L504	@,
.L484:
	mov	r4, #64	@ D.33244,
.L485:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.33244, D.33244,
	bne	.L485	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L480:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33245, MEM[base: _49, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp149, D.33245,
	cmp	r7, r8	@ ivtmp.267, D.33249
	add	r3, r3, #214	@ tmp149, tmp149,
	add	r3, r6, r3, lsl #2	@ tmp150, pCtx, tmp149,
	str	r0, [r3, #4]	@, pCtx_13(D)->non_intra_quantizer_matrix
	bne	.L480	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L488	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L484	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L504:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L503:
	ldr	r7, .L505	@ ivtmp.277,
	add	r8, r7, #64	@ D.33249, ivtmp.277,
.L479:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33245, MEM[base: _40, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp145, D.33245,
	cmp	r7, r8	@ ivtmp.277, D.33249
	add	r3, r3, #150	@ tmp145, tmp145,
	add	r3, r6, r3, lsl #2	@ tmp146, pCtx, tmp145,
	str	r0, [r3, #4]	@, pCtx_13(D)->intra_quantizer_matrix
	bne	.L479	@,
	b	.L478	@
.L506:
	.align	2
.L505:
	.word	.LANCHOR2+63
	.fnend
	.size	quant_matrix_extension, .-quant_matrix_extension
	.align	2
	.global	sequence_scalable_extension
	.type	sequence_scalable_extension, %function
sequence_scalable_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	sequence_scalable_extension, .-sequence_scalable_extension
	.align	2
	.global	picture_display_extension
	.type	picture_display_extension, %function
picture_display_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r9, r0, #69632	@ tmp176, pCtx,
	add	r4, r0, #71680	@ pBs, pCtx,
	ldr	r6, [r9, #3704]	@ pSyntaxInfNew, pCtx_5(D)->pSyntaxInfNew
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	orr	r3, r3, #2097152	@ D.33272, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.33272, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldrb	r3, [r6, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_8->progressive_sequence, pSyntaxInfNew_8->progressive_sequence
	cmp	r3, #0	@ pSyntaxInfNew_8->progressive_sequence,
	beq	.L509	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	bne	.L522	@,
.L517:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L510:
	add	r7, r6, #160	@ ivtmp.288, pSyntaxInfNew,
	mov	r5, #0	@ i,
	add	r6, r6, #172	@ ivtmp.297, pSyntaxInfNew,
	b	.L514	@
.L524:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #4]!	@, MEM[base: _45, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L521	@,
	cmp	r5, r8	@ i, number_of_frame_center_offsets
	bge	.L523	@,
.L514:
	mov	r1, #16	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	add	r5, r5, r1	@ i, i,
	str	r0, [r7, #4]!	@, MEM[base: _44, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L524	@,
.L521:
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	orr	r3, r3, #32	@ D.33272, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.33272, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L509:
	ldrb	r3, [r6, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_8->picture_structure, pSyntaxInfNew_8->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_8->picture_structure,
	bne	.L517	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L510	@
.L522:
	ldrb	r3, [r6, #10]	@ zero_extendqisi2	@ pSyntaxInfNew_8->top_field_first, pSyntaxInfNew_8->top_field_first
	cmp	r3, #0	@ pSyntaxInfNew_8->top_field_first,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L510	@
.L523:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	picture_display_extension, .-picture_display_extension
	.align	2
	.global	picture_coding_extension
	.type	picture_coding_extension, %function
picture_coding_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r8, r0, #69632	@ tmp224, pCtx,
	add	r4, r0, #71680	@ pBs, pCtx,
	ldr	r7, [r8, #3704]	@ pSyntaxInfNew, pCtx_7(D)->pSyntaxInfNew
	add	r4, r4, #576	@ pBs, pBs,
	ldr	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	add	r9, r7, #4	@ ivtmp.323, pSyntaxInfNew,
	add	r10, r7, #8	@ D.33306, pSyntaxInfNew,
	orr	r3, r3, #1048576	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
.L526:
	mov	r6, r9	@ ivtmp.312, ivtmp.323
	mov	r5, #0	@ i,
.L528:
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r5, #1	@ i, i,
	uxtb	r0, r0	@ D.33302,
	strb	r0, [r6], #1	@ D.33302, MEM[base: _100, offset: 0B]
	sub	r3, r0, #10	@ tmp182, D.33302,
	cmp	r0, #0	@ D.33302,
	cmpne	r3, #4	@, tmp182,
	ldrls	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrls	r3, r3, #16	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strls	r3, [r8, #2380]	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	cmp	r5, #2	@ i,
	bne	.L528	@,
	add	r9, r9, #2	@ ivtmp.323, ivtmp.323,
	cmp	r9, r10	@ ivtmp.323, D.33306
	bne	.L526	@,
	mov	r1, r5	@, i
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r5	@, i
	strb	r0, [r7, #8]	@, pSyntaxInfNew_10->intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.33302,
	strb	r0, [r7, #9]	@ D.33302, pSyntaxInfNew_10->picture_structure
	cmp	r0, #0	@ D.33302,
	bne	.L530	@,
	ldr	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #16	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.33300, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L530:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #10]	@, pSyntaxInfNew_10->top_field_first
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #11]	@, pSyntaxInfNew_10->frame_pred_frame_dct
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #12]	@, pSyntaxInfNew_10->concealment_motion_vectors
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #13]	@, pSyntaxInfNew_10->q_scale_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #14]	@, pSyntaxInfNew_10->intra_vlc_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #15]	@, pSyntaxInfNew_10->alternate_scan
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #16]	@, pSyntaxInfNew_10->repeat_first_field
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #17]	@, pSyntaxInfNew_10->chroma_420_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #18]	@, pSyntaxInfNew_10->progressive_frame
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.33302,
	strb	r0, [r7, #3]	@ D.33302, pSyntaxInfNew_10->composite_display_flag
	cmp	r0, #0	@ D.33302,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r7, #19]	@, pSyntaxInfNew_10->v_axis
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	strb	r0, [r7, #20]	@, pSyntaxInfNew_10->field_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #7	@,
	strb	r0, [r7, #21]	@, pSyntaxInfNew_10->sub_carrier
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	str	r0, [r7, #32]	@, pSyntaxInfNew_10->burst_amplitude
	mov	r0, r4	@, pBs
	bl	BsGet	@
	str	r0, [r7, #36]	@, pSyntaxInfNew_10->sub_carrier_phase
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	picture_coding_extension, .-picture_coding_extension
	.align	2
	.global	picture_spatial_scalable_extension
	.type	picture_spatial_scalable_extension, %function
picture_spatial_scalable_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	picture_spatial_scalable_extension, .-picture_spatial_scalable_extension
	.align	2
	.global	picture_temporal_scalable_extension
	.type	picture_temporal_scalable_extension, %function
picture_temporal_scalable_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	picture_temporal_scalable_extension, .-picture_temporal_scalable_extension
	.align	2
	.global	extra_bit_information
	.type	extra_bit_information, %function
extra_bit_information:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	mov	r5, #0	@ Byte_Count,
	add	r4, r4, #576	@ pBs, pBs,
	b	.L543	@
.L545:
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	ble	.L544	@,
.L543:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L545	@,
.L544:
	mov	r0, r5	@, Byte_Count
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	extra_bit_information, .-extra_bit_information
	.align	2
	.global	picture_header
	.type	picture_header, %function
picture_header:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r0, #69632	@ tmp135, pCtx,
	mov	r1, #10	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	ldr	r3, [r2, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	add	r4, r4, #576	@ pBs, pBs,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r5, [r2, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	bic	r3, r3, #3145728	@ D.33318, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	bic	r3, r3, #56	@ D.33318, D.33318,
	orr	r3, r3, #524288	@ D.33318, D.33318,
	str	r3, [r2, #2380]	@ D.33318, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r5, #156]	@, pSyntaxInfNew_6->temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r5, #22]	@, pSyntaxInfNew_6->picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.33320, pSyntaxInfNew_6->picture_coding_type
	sub	r3, r7, #2	@ tmp150, D.33320,
	cmp	r3, #1	@ tmp150,
	str	r0, [r5, #160]	@, pSyntaxInfNew_6->vbv_delay
	bls	.L551	@,
.L548:
	cmp	r7, #3	@ D.33320,
	beq	.L552	@,
.L549:
	mov	r0, r6	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L552:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, D.33320
	strb	r0, [r5, #25]	@, pSyntaxInfNew_6->full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #26]	@, pSyntaxInfNew_6->backward_f_code
	b	.L549	@
.L551:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #23]	@, pSyntaxInfNew_6->full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.33320, pSyntaxInfNew_6->picture_coding_type
	strb	r0, [r5, #24]	@, pSyntaxInfNew_6->forward_f_code
	b	.L548	@
	.fnend
	.size	picture_header, .-picture_header
	.align	2
	.global	copyright_extension
	.type	copyright_extension, %function
copyright_extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #71680	@, pCtx,
	mov	r1, #32	@,
	add	r0, r0, #576	@,,
	b	BsSkip	@
	.fnend
	.size	copyright_extension, .-copyright_extension
	.align	2
	.global	extension
	.type	extension, %function
extension:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #69632	@ tmp117, pCtx,
	mov	r2, #0	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #71680	@ pBs, pCtx,
	ldr	r3, [r3, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	add	r4, r4, #576	@ pBs, pBs,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	str	r2, [r3, #148]	@ tmp118, pSyntaxInfNew_4->display_horizontal_size
	str	r2, [r3, #152]	@ tmp118, pSyntaxInfNew_4->display_vertical_size
	str	r2, [r3, #128]	@ tmp118, pSyntaxInfNew_4->video_format
	str	r2, [r3, #132]	@ tmp118, pSyntaxInfNew_4->color_description
	str	r2, [r3, #136]	@ tmp118, pSyntaxInfNew_4->color_primaries
	str	r2, [r3, #140]	@ tmp118, pSyntaxInfNew_4->transfer_characteristics
	str	r2, [r3, #144]	@ tmp118, pSyntaxInfNew_4->matrix_coefficients
	bl	BsGet	@
	sub	r0, r0, #1	@ tmp126,,
	cmp	r0, #9	@ tmp126,
	ldrls	pc, [pc, r0, asl #2]	@ tmp126
	b	.L555	@
.L557:
	.word	.L556
	.word	.L558
	.word	.L559
	.word	.L560
	.word	.L560
	.word	.L555
	.word	.L562
	.word	.L563
	.word	.L560
	.word	.L560
.L562:
	mov	r0, r5	@, pCtx
	bl	picture_display_extension	@
.L555:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L560:
	mov	r0, r4	@, pBs
	mov	r1, #32	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L559:
	mov	r0, r5	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L563:
	mov	r0, r5	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L556:
	mov	r0, r5	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L558:
	mov	r0, r5	@, pCtx
	bl	sequence_display_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	extension, .-extension
	.align	2
	.global	MPEG2DEC_Init
	.type	MPEG2DEC_Init, %function
MPEG2DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #69632	@ tmp122, pCtx,
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #8184	@,
	ldr	r8, [r4, #4056]	@ D.33331, pCtx_3(D)->ImageQue.ResetMagicWord
	add	r6, r0, #72704	@ tmp127, pCtx,
	movt	r1, 1	@,
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r6, #640	@, tmp127,
	str	r8, [r4, #4056]	@ D.33331, pCtx_3(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	add	r1, r5, #45056	@ tmp148, pCtx,
	str	r7, [r5]	@ pstExtraData, pCtx_3(D)->pstExtraData
	add	r3, r6, #256	@ D.33333, tmp127,
	mov	r2, #1	@ tmp141,
	str	r3, [r4, #3708]	@ D.33333, pCtx_3(D)->pSyntaxInfOld
	strb	r2, [r4, #4082]	@ tmp141, pCtx_3(D)->DSDNeedClearQue
	mov	r3, #0	@ tmp138,
	str	r2, [r4, #2392]	@ tmp141, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field
	mov	ip, #3	@ tmp154,
	str	r3, [r4, #4076]	@ tmp138, pCtx_3(D)->PPicFound
	add	r6, r6, #444	@ D.33333, tmp127,
	strb	r3, [r4, #4083]	@ tmp138, pCtx_3(D)->DSDNeedFlushFrame
	mov	r0, r5	@, pCtx
	str	r6, [r4, #3704]	@ D.33333, pCtx_3(D)->pSyntaxInfNew
	strb	ip, [r1, #273]	@ tmp154, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Last_FieldStruct
	str	r3, [r4, #2436]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].HDRState
	ldr	r2, [r7, #8]	@ pstExtraData_9(D)->s32DecMode, pstExtraData_9(D)->s32DecMode
	str	r3, [r4, #2428]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Imgbuf_allocated
	str	r2, [r4, #2368]	@ pstExtraData_9(D)->s32DecMode, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.33334,
	str	r0, [r4, #4064]	@ D.33334, pCtx_3(D)->ChanID
	mvneq	r0, #19	@,
	movne	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MPEG2DEC_Init, .-MPEG2DEC_Init
	.align	2
	.global	MPEG2DEC_RecycleImage
	.type	MPEG2DEC_RecycleImage, %function
MPEG2DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #69632	@ tmp136, pCtx,
	mov	r4, r1	@ img_id, img_id
	mov	r2, #0	@,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r4	@, img_id
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L576	@,
	add	r4, r0, #188	@ ivtmp.350, pImg,
	add	r5, r0, #204	@ D.33362, pImg,
	mov	r7, #0	@ tmp137,
.L573:
	ldr	r1, [r4, #4]!	@, MEM[base: _25, offset: 0B]
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r4, r5	@ ivtmp.350, D.33362
	str	r7, [r4]	@ tmp137, MEM[base: _25, offset: 0B]
	bne	.L573	@,
.L576:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MPEG2DEC_RecycleImage, .-MPEG2DEC_RecycleImage
	.align	2
	.type	MP2_FlushFrameToVo, %function
MP2_FlushFrameToVo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #69632	@ tmp159, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	mov	r5, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L582	@,
	mov	r1, r5	@, FsID
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L590	@,
.L579:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L590:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp140, pCtx,
	add	r3, r0, #344	@ ivtmp.372, tmp140,
	add	r2, r7, #192	@ ivtmp.386, pImg,
	add	r0, r0, #360	@ D.33394, tmp140,
	mov	ip, #0	@ tmp161,
.L581:
	ldr	r1, [r3, #4]!	@ D.33388, MEM[base: _41, offset: 0B]
	mov	r5, #0	@ tmp142,
	add	r2, r2, #4	@ ivtmp.386, ivtmp.386,
	cmp	r1, r5	@ D.33388,
	strne	r1, [r2, #-4]	@ D.33388, MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.372, D.33394
	str	ip, [r3]	@ tmp161, MEM[base: _41, offset: 0B]
	bne	.L581	@,
	str	r5, [r4, #2412]	@ tmp142, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].TotalUsrDatNum
	mov	r2, #1	@,
	ldr	r1, [r7, #176]	@, pImg_11->image_id
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r6, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@ pCtx_6(D)->ChanID, pCtx_6(D)->ChanID
	add	r3, r3, #640	@,,
	str	r7, [sp]	@ pImg,
	mov	r2, r6	@, pCtx
	mov	r1, #3	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r5	@ ret, tmp142
	beq	.L579	@,
	ldr	r1, [r7, #176]	@, pImg_11->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	mvn	r0, #0	@ ret,
	b	.L579	@
.L582:
	mvn	r0, #0	@ ret,
	b	.L579	@
	.fnend
	.size	MP2_FlushFrameToVo, .-MP2_FlushFrameToVo
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #69632	@ tmp509, pCtx,
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r3, [r4, #2416]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	ldr	r5, [r4, #3704]	@ pSyntaxInfNew, pCtx_14(D)->pSyntaxInfNew
	cmp	r3, #1	@ D.33398,
	ldr	r7, [r4, #3708]	@ pSyntaxInfOld, pCtx_14(D)->pSyntaxInfOld
	beq	.L593	@,
	cmp	r3, #2	@ D.33398,
	bne	.L647	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	and	r3, r3, #1769472	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B],
	cmp	r3, #589824	@ D.33398,
	beq	.L597	@,
.L625:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_16->horizontal_size, pSyntaxInfNew_16->horizontal_size
	add	r3, r3, #15	@ D.33398, pSyntaxInfNew_16->horizontal_size,
	mov	r3, r3, lsr #4	@ D.33398, D.33398,
	str	r3, [r5, #56]	@ D.33398, pSyntaxInfNew_16->mb_width
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r2, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L648	@,
.L600:
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #15	@ D.33398, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #4	@ D.33397, D.33398,
.L601:
	mov	r1, #0	@ tmp277,
	str	r2, [r5, #60]	@ D.33397, pSyntaxInfNew_16->mb_height
	str	r1, [r5, #64]	@ tmp277, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	ldr	r1, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r1, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L649	@,
.L602:
	ldr	r6, [r4, #2428]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r6, #0	@ D.33398,
	beq	.L605	@,
	ldr	r1, [r7, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	cmp	r3, r1	@ D.33398, pSyntaxInfOld_17->mb_width
	beq	.L650	@,
.L605:
	ldr	r3, [r0]	@ D.33405, pCtx_14(D)->pstExtraData
.L604:
	ldr	r6, [r3, #692]	@ _233->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _233->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r8, r0	@ pCtx, pCtx
	cmp	r6, #1	@ _233->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L651	@,
.L607:
	ldr	r2, .L656	@ tmp360,
	mov	r1, #0	@ tmp359,
	str	r1, [r3, #728]	@ tmp359, _234->s32DSDWaitFlag
	ldr	r3, [r2]	@ D.33401, g_event_report
	cmp	r3, r1	@ D.33401,
	beq	.L616	@,
	ldr	ip, [r7, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	add	r2, sp, #8	@,,
	mov	r1, #2	@,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	strh	ip, [sp, #8]	@ movhi	@ pSyntaxInfOld_17->mb_width, para
	ldr	ip, [r7, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	strh	ip, [sp, #10]	@ movhi	@ pSyntaxInfOld_17->mb_height, para
	ldr	ip, [r5, #56]	@ pSyntaxInfNew_16->mb_width, pSyntaxInfNew_16->mb_width
	strh	ip, [sp, #12]	@ movhi	@ pSyntaxInfNew_16->mb_width, para
	ldr	ip, [r5, #60]	@ pSyntaxInfNew_16->mb_height, pSyntaxInfNew_16->mb_height
	strh	ip, [sp, #14]	@ movhi	@ pSyntaxInfNew_16->mb_height, para
	blx	r3	@ D.33401
.L616:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L618	@,
	ldr	r1, [r5, #192]	@, pImg_145->p_usrdat
	mov	r6, #0	@ tmp393,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_145->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_145->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_145->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp393, pImg_145->p_usrdat
	str	r6, [r5, #196]	@ tmp393, pImg_145->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp393, pImg_145->p_usrdat
	str	r6, [r5, #204]	@ tmp393, pImg_145->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ tmp393, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ tmp393, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r6	@,
	bne	.L652	@,
.L618:
	add	r5, r8, #72704	@ D.33404, pCtx,
	mov	r3, #0	@ tmp441,
	add	r5, r5, #640	@ D.33404, D.33404,
	str	r3, [r4, #2420]	@ tmp441, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].RefNum
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	mov	r1, r5	@, D.33404
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r8]	@ D.33405, pCtx_14(D)->pstExtraData
	ldr	r7, [r3, #608]	@ _182->stChanOption.s32ReRangeEn, _182->stChanOption.s32ReRangeEn
	cmp	r7, #0	@ _182->stChanOption.s32ReRangeEn,
	bne	.L620	@,
	ldr	r3, [r3, #32]	@ _182->eCapLevel, _182->eCapLevel
	cmp	r3, #25	@ _182->eCapLevel,
	beq	.L653	@,
.L620:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L621	@,
	ldr	r3, [r8]	@ pCtx_14(D)->pstExtraData, pCtx_14(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _194->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _194->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _194->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L654	@,
.L622:
	mov	r0, r5	@, D.33404
	bl	ResetVoQueue	@
.L621:
	mov	r3, #0	@ tmp473,
	mov	r0, r8	@, pCtx
	str	r3, [r4, #2428]	@ tmp473, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	mov	r1, r3	@, tmp473
	str	r3, [r4, #2444]	@ tmp473, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	bl	MP2_ArrangeVHBMem	@
	mov	r6, r0	@ D.33398,
	str	r0, [r4, #2428]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
.L606:
	str	r6, [r4, #2376]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].NewSeqInited
.L591:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L647:
	ldr	r3, [r4, #2380]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	tst	r3, #3538944	@ D.33398,
	beq	.L597	@,
	tst	r3, #131072	@ D.33398,
	mov	r2, #2	@ tmp252,
	str	r2, [r4, #2416]	@ tmp252, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	bne	.L598	@,
	tst	r3, #1048576	@ D.33398,
	orr	r3, r3, r2	@ D.33398, D.33398,
	str	r3, [r4, #2380]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	bne	.L625	@,
.L623:
	orr	r3, r3, #16	@ D.33398, D.33398,
	str	r3, [r4, #2380]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	b	.L625	@
.L597:
	mov	r3, #1	@ tmp242,
	str	r3, [r4, #2416]	@ tmp242, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
.L595:
	mov	r3, #0	@ tmp499,
	mov	r2, #1	@ tmp488,
	mov	ip, #3	@ tmp492,
	mov	r1, #5	@ tmp498,
	strb	r2, [r5, #27]	@ tmp488, pSyntaxInfNew_16->progressive_sequence
	strb	r2, [r5, #18]	@ tmp488, pSyntaxInfNew_16->progressive_frame
	strb	r2, [r5, #11]	@ tmp488, pSyntaxInfNew_16->frame_pred_frame_dct
	strb	r2, [r5, #28]	@ tmp488, pSyntaxInfNew_16->chroma_format
	strb	ip, [r5, #9]	@ tmp492, pSyntaxInfNew_16->picture_structure
	str	r1, [r5, #144]	@ tmp498, pSyntaxInfNew_16->matrix_coefficients
	strb	r3, [r5, #12]	@ tmp499, pSyntaxInfNew_16->concealment_motion_vectors
	strb	r3, [r5, #13]	@ tmp499, pSyntaxInfNew_16->q_scale_type
	strb	r3, [r5, #14]	@ tmp499, pSyntaxInfNew_16->intra_vlc_format
	strb	r3, [r5, #15]	@ tmp499, pSyntaxInfNew_16->alternate_scan
	strb	r3, [r5, #8]	@ tmp499, pSyntaxInfNew_16->intra_dc_precision
	b	.L625	@
.L593:
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	mov	r2, #18	@ tmp224,
	bfi	r2, r2, #16, #16	@ tmp224, tmp224,,
	and	r3, r3, r2	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], tmp224
	cmp	r3, #1179648	@ D.33398,
	moveq	r3, #2	@ tmp231,
	streq	r3, [r4, #2416]	@ tmp231, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	bne	.L595	@,
	b	.L625	@
.L649:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r1, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L602	@,
	ldr	r1, [r5, #52]	@ D.33398, pSyntaxInfNew_16->vertical_size
	add	ip, r1, #31	@ D.33398, D.33398,
	add	r1, r1, #15	@ D.33398, D.33398,
	mov	ip, ip, lsr #5	@ D.33398, D.33398,
	mov	r1, r1, lsr #4	@ D.33398, D.33398,
	rsb	r1, r1, ip, lsl #1	@ D.33398, D.33398, D.33398,
	str	r1, [r5, #64]	@ D.33398, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	b	.L602	@
.L648:
	ldrb	r2, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r2, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L600	@,
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #31	@ D.33398, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #5	@ D.33398, D.33398,
	mov	r2, r2, asl #1	@ D.33397, D.33398,
	b	.L601	@
.L654:
	ldrb	r3, [r4, #4082]	@ zero_extendqisi2	@ pCtx_14(D)->DSDNeedClearQue, pCtx_14(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_14(D)->DSDNeedClearQue,
	bne	.L621	@,
	b	.L622	@
.L652:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.33400, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.33400, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	b	.L618	@
.L653:
	ldr	r6, [r4, #2428]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r6, #0	@ D.33398,
	bne	.L606	@,
	mov	r0, r5	@, D.33404
	bl	ResetVoQueue	@
	mov	r1, r6	@, D.33398
	mov	r0, r8	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	str	r7, [r4, #2444]	@ _182->stChanOption.s32ReRangeEn, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	mov	r6, r0	@ D.33398,
	str	r0, [r4, #2428]	@ D.33398, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	b	.L606	@
.L650:
	ldr	r3, [r7, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	cmp	r2, r3	@ D.33397, pSyntaxInfOld_17->mb_height
	bne	.L605	@,
	ldr	r3, [r0]	@ D.33405, pCtx_14(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _76->s32DSDWaitFlag, _76->s32DSDWaitFlag
	cmp	r2, #1	@ _76->s32DSDWaitFlag,
	bne	.L606	@,
	b	.L604	@
.L651:
	strb	r6, [r4, #4083]	@ _233->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_14(D)->DSDNeedFlushFrame
	mov	r3, #0	@ tmp298,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r3, [sp]	@ tmp298, NewNum
	str	r3, [sp, #4]	@ tmp298, ReadNum
	str	r3, [sp, #8]	@ tmp298, RefNum
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L610	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	mov	r0, r8	@, pCtx
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L610	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r2, #0	@ tmp330,
	mov	r3, sp	@,
	add	r1, sp, #8	@,,
	cmp	r0, #0	@ pImage
	strne	r6, [r0, #376]	@ _233->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_95->u32IsLastFrame
	strb	r2, [r4, #4083]	@ tmp330, pCtx_14(D)->DSDNeedFlushFrame
	add	r2, sp, #4	@,,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r8]	@ D.33405, pCtx_14(D)->pstExtraData
	ldr	r1, [r7, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	ldr	r2, [r3, #720]	@ _102->s32DSDThrWidth, _102->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _102->s32DSDThrWidth, pSyntaxInfOld_17->mb_width,
	bcc	.L612	@,
	ldr	r1, [r7, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	ldr	r2, [r3, #724]	@ _102->s32DSDThrHeight, _102->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _102->s32DSDThrHeight, pSyntaxInfOld_17->mb_height,
	bcc	.L612	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.33400, ReadNum, NewNum
	cmp	r2, #0	@ D.33400,
	ble	.L607	@,
	mov	r2, #1	@ tmp349,
	strb	r2, [r4, #4082]	@ tmp349, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp349, _102->s32DSDWaitFlag
	b	.L591	@
.L610:
	mov	r3, #0	@ tmp312,
	strb	r3, [r4, #4083]	@ tmp312, pCtx_14(D)->DSDNeedFlushFrame
	b	.L591	@
.L598:
	tst	r3, #1048576	@ D.33398,
	beq	.L623	@,
	b	.L625	@
.L612:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L655	@,
.L614:
	mov	r1, #0	@ tmp356,
	mov	r2, #1	@ tmp358,
	strb	r1, [r4, #4082]	@ tmp356, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp358, _102->s32DSDWaitFlag
	b	.L591	@
.L655:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	ble	.L607	@,
	b	.L614	@
.L657:
	.align	2
.L656:
	.word	g_event_report
	.fnend
	.size	MP2_GetSequenceInfo, .-MP2_GetSequenceInfo
	.align	2
	.global	GetSliceHdr
	.type	GetSliceHdr, %function
GetSliceHdr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #71680	@ pBs, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	add	r5, r5, #576	@ pBs, pBs,
	add	r7, r0, #69632	@ tmp150, pCtx,
	b	.L659	@
.L666:
	bl	BsShow	@
	mov	r4, r0	@ D.33411,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	sub	r3, r4, #256	@ D.33412, D.33411,
	sub	r3, r3, #1	@ D.33412, D.33412,
	mov	r1, #32	@,
	cmp	r3, #174	@ D.33412,
	str	r0, [r7, #2440]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRUsedBits
	mov	r0, r5	@, pBs
	bls	.L674	@,
	bl	BsSkip	@
.L659:
	mov	r0, r6	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r3, r0	@ ret,
	cmp	r3, #1	@ ret,
	mov	r0, r5	@, pBs
	beq	.L666	@,
	cmn	r3, #1	@ ret,
	beq	.L661	@,
	mov	r0, r3	@ D.33410, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L661:
	ldr	r3, .L676	@ tmp144,
	ldr	r3, [r3]	@ D.33414, g_event_report
	cmp	r3, #0	@ D.33414,
	beq	.L668	@,
	add	r6, r6, #69632	@ tmp146, pCtx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	r3	@ D.33414
	mvn	r0, #0	@ D.33410,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L674:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	ble	.L661	@,
	ldr	r4, [r7, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	mov	r3, #0	@ tmp136,
	str	r3, [r7, #2436]	@ tmp136, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRState
	cmp	r4, r3	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited,
	bne	.L665	@,
	mov	r0, r6	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r6]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _26->s32DSDWaitFlag, _26->s32DSDWaitFlag
	cmp	r3, #1	@ _26->s32DSDWaitFlag,
	beq	.L675	@,
.L665:
	mov	r0, r6	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ D.33410,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L668:
	mvn	r0, #0	@ D.33410,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L675:
	mov	r0, r4	@ D.33410, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L677:
	.align	2
.L676:
	.word	g_event_report
	.fnend
	.size	GetSliceHdr, .-GetSliceHdr
	.align	2
	.global	MPEG2DEC_GetRemainImg
	.type	MPEG2DEC_GetRemainImg, %function
MPEG2DEC_GetRemainImg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r0]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _10->s32DecOrderOutput, _10->s32DecOrderOutput
	cmp	r3, #1	@ _10->s32DecOrderOutput,
	addeq	r4, r0, #72704	@ tmp183, pCtx,
	beq	.L679	@,
	add	r5, r0, #69632	@ tmp182, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L700	@,
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L698	@,
.L700:
	add	r4, r6, #72704	@ tmp183, pCtx,
.L679:
	add	r7, r4, #640	@ D.33439, tmp183,
.L685:
	mov	r0, r7	@, D.33439
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	GetVoLastImageID	@
.L698:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp159, pCtx,
	add	r3, r0, #344	@ ivtmp.400, tmp159,
	add	r2, r9, #192	@ ivtmp.414, pImg,
	add	r0, r0, #360	@ D.33447, tmp159,
	mov	ip, #0	@ tmp185,
.L681:
	ldr	r1, [r3, #4]!	@ D.33442, MEM[base: _57, offset: 0B]
	mov	r8, #0	@ tmp161,
	add	r2, r2, #4	@ ivtmp.414, ivtmp.414,
	cmp	r1, r8	@ D.33442,
	strne	r1, [r2, #-4]	@ D.33442, MEM[base: _61, offset: 0B]
	cmp	r3, r0	@ ivtmp.400, D.33447
	str	ip, [r3]	@ tmp185, MEM[base: _57, offset: 0B]
	bne	.L681	@,
	add	r4, r6, #72704	@ tmp183, pCtx,
	mov	r3, #1	@ tmp167,
	add	r7, r4, #640	@ D.33439, tmp183,
	str	r8, [r5, #2412]	@ tmp161, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].TotalUsrDatNum
	mov	r2, r3	@, tmp167
	str	r3, [r9, #224]	@ tmp167, pImg_15->last_frame
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #4064]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r3, r7	@, D.33439
	str	r9, [sp]	@ pImg,
	mov	r2, r6	@, pCtx
	mov	r1, #3	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L682	@,
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L685	@
.L682:
	ldr	r3, [r9, #180]	@ pImg_15->error_level, pImg_15->error_level
	cmp	r3, #100	@ pImg_15->error_level,
	bhi	.L679	@,
	ldr	r3, [r9, #144]	@ pImg_15->image_width, pImg_15->image_width
	cmp	r3, #31	@ pImg_15->image_width,
	bls	.L679	@,
	ldr	r3, [r9, #148]	@ pImg_15->image_height, pImg_15->image_height
	cmp	r3, #31	@ pImg_15->image_height,
	bls	.L685	@,
	mov	r0, r8	@, tmp161
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	MPEG2DEC_GetRemainImg, .-MPEG2DEC_GetRemainImg
	.align	2
	.global	MPEG2DEC_GetImageBuffer
	.type	MPEG2DEC_GetImageBuffer, %function
MPEG2DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #45056	@ tmp122, pCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #69632	@ tmp141, pCtx,
	ldrb	r3, [r3, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Last_FieldStruct
	cmp	r3, #3	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Last_FieldStruct,
	beq	.L702	@,
	ldr	r3, [r5, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field,
	beq	.L704	@,
.L702:
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L704	@,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L713	@,
	mov	r0, #0	@ D.33450,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L704:
	mov	r0, #1	@ D.33450,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L713:
	add	r1, r4, #72704	@, pCtx,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	add	r1, r1, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.33450,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MPEG2DEC_GetImageBuffer, .-MPEG2DEC_GetImageBuffer
	.align	2
	.global	MP2_ClearCurPacket
	.type	MP2_ClearCurPacket, %function
MP2_ClearCurPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pMp2Packet, pMp2Packet
	ldr	r1, [r1, #28]	@, pMp2Packet_3(D)->StreamID
	mov	r5, r0	@ ChanID, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldrsb	r3, [r4]	@ pMp2Packet_3(D)->IsLastSeg, pMp2Packet_3(D)->IsLastSeg
	cmp	r3, #1	@ pMp2Packet_3(D)->IsLastSeg,
	beq	.L715	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, pMp2Packet_3(D)->StreamID
	bl	SM_ReleaseStreamSeg	@
.L715:
	mov	r0, r4	@, pMp2Packet
	mov	r1, #36	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
	.fnend
	.size	MP2_ClearCurPacket, .-MP2_ClearCurPacket
	.align	2
	.global	MP2_ReceivePacket
	.type	MP2_ReceivePacket, %function
MP2_ReceivePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pPacket
	beq	.L723	@,
	add	r3, r0, #24576	@ tmp137, pMp2CodecInfo,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, #0	@ tmp138,
	str	r4, [r3, #2056]	@ tmp138, pMp2CodecInfo_5(D)->BsOffset
	ldr	ip, [r1, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	ip, [r3, #2100]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_5(D)->PacketTail
	ldr	ip, [r1, #8]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pPacket_3(D)->StreamPack[0].PhyAddr
	str	ip, [r3, #2072]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	ldr	ip, [r1]	@ D.33468, pPacket_3(D)->StreamPack[0].VirAddr
	str	ip, [r3, #2064]	@ D.33468, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	ldr	ip, [r1, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	ip, [r3, #2080]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	strb	ip, [r3, #2060]	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	ldr	ip, [r1, #16]	@ D.33467, pPacket_3(D)->StreamPack[0].StreamID
	str	ip, [r3, #2088]	@ D.33467, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldrb	ip, [r1, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	cmp	ip, #1	@ pPacket_3(D)->StreamPack[0].IsLastSeg,
	beq	.L722	@,
	ldr	ip, [r1, #88]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pPacket_3(D)->StreamPack[1].PhyAddr
	str	ip, [r3, #2076]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	ldr	ip, [r1, #80]	@ D.33468, pPacket_3(D)->StreamPack[1].VirAddr
	str	ip, [r3, #2068]	@ D.33468, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	ldr	ip, [r1, #92]	@ pPacket_3(D)->StreamPack[1].LenInByte, pPacket_3(D)->StreamPack[1].LenInByte
	str	ip, [r3, #2084]	@ pPacket_3(D)->StreamPack[1].LenInByte, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	ldrb	ip, [r1, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	strb	ip, [r3, #2061]	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	ldr	ip, [r1, #96]	@ D.33467, pPacket_3(D)->StreamPack[1].StreamID
	str	ip, [r3, #2092]	@ D.33467, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldrb	r1, [r1, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	cmp	r1, #1	@ pPacket_3(D)->StreamPack[1].IsLastSeg,
	beq	.L724	@,
	add	r1, r0, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@ D.33465, tmp138
	ldmfd	sp!, {r4, pc}	@
.L724:
	mov	r0, r1	@ D.33465, pPacket_3(D)->StreamPack[1].IsLastSeg
	ldmfd	sp!, {r4, pc}	@
.L722:
	str	r4, [r3, #2076]	@ tmp138, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	mov	r0, ip	@ D.33465, pPacket_3(D)->StreamPack[0].IsLastSeg
	str	r4, [r3, #2068]	@ tmp138, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	str	r4, [r3, #2084]	@ tmp138, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	strb	r4, [r3, #2061]	@ tmp138, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	str	r4, [r3, #2092]	@ tmp138, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldmfd	sp!, {r4, pc}	@
.L723:
	mov	r0, r1	@ D.33465, pPacket
	bx	lr	@
	.fnend
	.size	MP2_ReceivePacket, .-MP2_ReceivePacket
	.align	2
	.global	MP2_ClearCurPic
	.type	MP2_ClearCurPic, %function
MP2_ClearCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #45056	@ tmp143, pCtx,
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	r3, #0	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum,
	movne	r4, r0	@ ivtmp.428, pCtx
	movne	r5, #0	@ i,
	addne	r7, r4, #69632	@ tmp142, ivtmp.428,
	bne	.L729	@,
	b	.L730	@
.L728:
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcs	.L730	@,
.L729:
	ldr	r1, [r4, #284]	@, MEM[base: _19, offset: 284B]
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #264]	@ MEM[base: _19, offset: 264B], MEM[base: _19, offset: 264B]
	cmp	r3, #0	@ MEM[base: _19, offset: 264B],
	beq	.L728	@,
	ldr	r3, [r4, #272]	@ MEM[base: _19, offset: 272B], MEM[base: _19, offset: 272B]
	cmp	r3, #0	@ MEM[base: _19, offset: 272B],
	beq	.L728	@,
	ldr	r1, [r4, #288]	@, MEM[base: _19, offset: 288B]
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcc	.L729	@,
.L730:
	mov	r3, #0	@ tmp128,
	str	r3, [r6, #260]	@ tmp128, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MP2_ClearCurPic, .-MP2_ClearCurPic
	.align	2
	.global	MPEG2DEC_VDMPostProc
	.type	MPEG2DEC_VDMPostProc, %function
MPEG2DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #69632	@ tmp515, pCtx,
	ldrb	r3, [r0, #152]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp, MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	add	r9, r0, #45056	@ tmp232, pCtx,
	ldr	r8, [r4, #3704]	@ pSyntaxInfNew, pCtx_17(D)->pSyntaxInfNew
	strb	r3, [r4, #2560]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].EstmatedPicQp
	bl	MP2_RecordVFMWState	@
	mov	r0, r7	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	mov	r6, r0	@ pCurImg,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r6, #0	@ pCurImg,
	beq	.L803	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ D.33552, pSyntaxInfNew_20->picture_coding_type
	cmp	r5, #0	@ ErrRatio,
	strb	r3, [r9, #272]	@ D.33552, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].LastDecPicCodingType
	str	r5, [r6, #180]	@ ErrRatio, pCurImg_28->error_level
	blt	.L743	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ D.33550,
	str	r5, [r6, #180]	@ D.33550, pCurImg_28->error_level
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L744	@,
	ldr	r3, [r7]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3]	@ _44->s32RefErrThr, _44->s32RefErrThr
	cmp	r5, r3	@ D.33550, _44->s32RefErrThr
	bhi	.L805	@,
.L744:
	mov	r0, r7	@, pCtx
	bl	MP2_SetImgFormat	@
	movw	r1, #45320	@,
	add	r0, r7, #8	@, pCtx,
	bl	__memzero	@
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L750	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field,
	movne	r0, #1	@ D.33550,
	beq	.L750	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L750:
	add	r0, r7, #71680	@ tmp342, pCtx,
	add	r1, r6, #192	@ ivtmp.494, pCurImg,
	add	r3, r0, #344	@ ivtmp.480, tmp342,
	add	r0, r0, #360	@ D.33551, tmp342,
	mov	lr, #0	@ tmp519,
.L749:
	ldr	r2, [r3, #4]!	@ D.33556, MEM[base: _129, offset: 0B]
	mov	ip, #0	@ tmp349,
	add	r1, r1, #4	@ ivtmp.494, ivtmp.494,
	cmp	r2, ip	@ D.33556,
	strne	r2, [r1, #-4]	@ D.33556, MEM[base: _188, offset: 0B]
	cmp	r3, r0	@ ivtmp.480, D.33551
	str	lr, [r3]	@ tmp519, MEM[base: _129, offset: 0B]
	bne	.L749	@,
	str	ip, [r4, #2412]	@ tmp349, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].TotalUsrDatNum
	ldr	r3, [r7]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _94->s32DecOrderOutput, _94->s32DecOrderOutput
	cmp	r3, #1	@ _94->s32DecOrderOutput,
	beq	.L752	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L752	@,
	ldr	r1, [r4, #2456]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r1, [r4, #2468]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
.L753:
	cmn	r1, #1	@ D.33553,
	beq	.L755	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L759	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L759	@,
.L755:
	ldrb	r3, [r8, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_sequence, pSyntaxInfNew_20->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_sequence,
	beq	.L806	@,
	ldrb	r3, [r8, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_frame, pSyntaxInfNew_20->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_frame,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r3, #1	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	addne	r3, r3, #1	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	streq	r3, [r4, #2544]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	ldreqb	r3, [r8, #16]	@ zero_extendqisi2	@ D.33553, pSyntaxInfNew_20->repeat_first_field
	ldreq	r2, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	addeq	r3, r3, #2	@ D.33553, D.33553,
	strne	r3, [r4, #2544]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r2, r3	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, D.33553
	movne	r3, r3, asl #1	@ D.33553, D.33553,
	str	r3, [r4, #2540]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
.L766:
	ldr	r2, [r4, #2536]	@ pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	mov	r0, #1	@ D.33550,
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	r2, r2, r0	@ D.33553, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.33553, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, r0	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L743:
	mov	r3, #0	@ tmp501,
	str	r3, [r6, #180]	@ tmp501, pCurImg_28->error_level
	b	.L744	@
.L805:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L746	@,
	ldr	r1, [r5, #192]	@, pImg_50->p_usrdat
	mov	r6, #0	@ tmp291,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_50->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_50->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_50->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp291, pImg_50->p_usrdat
	str	r6, [r5, #196]	@ tmp291, pImg_50->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp291, pImg_50->p_usrdat
	str	r6, [r5, #204]	@ tmp291, pImg_50->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ tmp291, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ tmp291, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r6	@,
	beq	.L746	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
.L746:
	mov	r3, #0	@ tmp339,
	mov	r0, #1	@ D.33550,
	str	r3, [r4, #2420]	@ tmp339, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].RefNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L752:
	ldr	r1, [r4, #2464]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	str	r1, [r4, #2468]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	b	.L753	@
.L759:
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L803	@,
	ldr	r3, [r5, #180]	@ D.33554, pToQueImg_114->error_level
	cmp	r3, #0	@ D.33554,
	beq	.L761	@,
	ldr	r2, [r7]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _116->s32OutErrThr, _116->s32OutErrThr
	cmp	r3, r2	@ D.33554, _116->s32OutErrThr
	bhi	.L807	@,
.L761:
	mov	r2, #1	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r7, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@ pCtx_17(D)->ChanID, pCtx_17(D)->ChanID
	add	r3, r3, #640	@,,
	str	r5, [sp]	@ pToQueImg,
	mov	r2, r7	@, pCtx
	mov	r1, #3	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.33553,
	beq	.L768	@,
	add	r6, r5, #188	@ ivtmp.440, pToQueImg,
	add	r5, r5, #204	@ D.33551, pToQueImg,
	mov	r7, #0	@ tmp517,
.L763:
	ldr	r1, [r6, #4]!	@, MEM[base: _184, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r6, r5	@ ivtmp.440, D.33551
	str	r7, [r6]	@ tmp517, MEM[base: _184, offset: 0B]
	bne	.L763	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
.L803:
	mov	r0, #0	@ D.33550,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L806:
	ldrb	r2, [r8, #16]	@ zero_extendqisi2	@ D.33553, pSyntaxInfNew_20->repeat_first_field
	ldrb	r3, [r8, #10]	@ zero_extendqisi2	@ D.33553, pSyntaxInfNew_20->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.33553, D.33553, D.33553
	add	r3, r3, #1	@ D.33553, D.33553,
	add	r3, r3, r1	@ D.33553, D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.33553, D.33553,
	str	r3, [r4, #2540]	@ D.33553, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	b	.L766	@
.L807:
	add	r6, r5, #188	@ ivtmp.460, pToQueImg,
	add	r5, r5, #204	@ D.33551, pToQueImg,
	mov	r7, #0	@ tmp518,
.L764:
	ldr	r1, [r6, #4]!	@, MEM[base: _189, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r6, r5	@ ivtmp.460, D.33551
	str	r7, [r6]	@ tmp518, MEM[base: _189, offset: 0B]
	bne	.L764	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L755	@
.L768:
	ldr	r3, [r4, #4072]	@ pCtx_17(D)->numOutputFrame, pCtx_17(D)->numOutputFrame
	add	r3, r3, #1	@ D.33553, pCtx_17(D)->numOutputFrame,
	str	r3, [r4, #4072]	@ D.33553, pCtx_17(D)->numOutputFrame
	ldr	r3, [r7]	@ D.33555, pCtx_17(D)->pstExtraData
	str	r0, [r3, #732]	@ D.33553, _146->s32firstIdecodedflag
	b	.L755	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MP2_DecSliceHeader
	.type	MP2_DecSliceHeader, %function
MP2_DecSliceHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #1	@ tmp128,
	ldr	r2, [r0, #4]	@ pSlcInfo_6(D)->pic_height_in_mb, pSlcInfo_6(D)->pic_height_in_mb
	mov	r3, #0	@ tmp129,
	mov	r5, r0	@ pSlcInfo, pSlcInfo
	str	r1, [r0, #16]	@ tmp128, pSlcInfo_6(D)->FirstMbInSliceFlag
	cmp	r2, #175	@ pSlcInfo_6(D)->pic_height_in_mb,
	ldr	r4, [r0, #52]	@ pBs, pSlcInfo_6(D)->pBs
	str	r3, [r0, #24]	@ tmp129, pSlcInfo_6(D)->slice_vertical_position_extension
	bls	.L809	@,
	ldr	r2, [r0]	@ pSlcInfo_6(D)->mpeg1_flag, pSlcInfo_6(D)->mpeg1_flag
	cmp	r2, r3	@ pSlcInfo_6(D)->mpeg1_flag,
	beq	.L822	@,
.L809:
	ldr	r1, [r5, #20]	@ pSlcInfo_6(D)->slice_vertical_position, pSlcInfo_6(D)->slice_vertical_position
	mov	r0, r4	@, pBs
	ldr	r2, [r5, #8]	@ pSlcInfo_6(D)->pic_width_in_mb, pSlcInfo_6(D)->pic_width_in_mb
	sub	r1, r1, #1	@ D.33564, pSlcInfo_6(D)->slice_vertical_position,
	add	r3, r1, r3	@ mb_row, D.33564, D.33564
	mov	r1, #5	@,
	mul	r3, r2, r3	@ D.33563, pSlcInfo_6(D)->pic_width_in_mb, mb_row
	cmp	r3, #0	@ D.33563,
	subne	r3, r3, #1	@ D.33563, D.33563,
	str	r3, [r5, #28]	@ D.33563, pSlcInfo_6(D)->previous_macroblock_address
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r6, r0	@ D.33565,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r3, #0	@ tmp136,
	str	r6, [r5, #48]	@ D.33565, pSlcInfo_6(D)->quantiser_scale_code
	mov	r1, #1	@,
	str	r3, [r5, #32]	@ tmp136, pSlcInfo_6(D)->intra_slice
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L823	@,
.L814:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r0, r4	@, pBs
	mov	r1, #1	@,
	bl	BsSkip	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L823:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.33565,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	str	r6, [r5, #32]	@ D.33565, pSlcInfo_6(D)->intra_slice
	mov	r1, #7	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #7	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	b	.L812	@
.L813:
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
.L812:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L813	@,
	b	.L814	@
.L822:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r6, r0	@ D.33565,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	str	r6, [r5, #24]	@ D.33565, pSlcInfo_6(D)->slice_vertical_position_extension
	mov	r3, r6, asl #7	@ D.33564, D.33565,
	b	.L809	@
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
	.align	2
	.global	MP2_u_v
	.type	MP2_u_v, %function
MP2_u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pBs, pBs
	mov	r6, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r6	@, LenInBits
	mov	r4, r0	@ D.33568,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.33568
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_u_v, .-MP2_u_v
	.align	2
	.global	MP2_ExitMb
	.type	MP2_ExitMb, %function
MP2_ExitMb:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0	@ tmp111,
	str	r3, [r0, #16]	@ tmp111, pSlcInfo_2(D)->FirstMbInSliceFlag
	bx	lr	@
	.fnend
	.size	MP2_ExitMb, .-MP2_ExitMb
	.align	2
	.global	MP2_WriteSliceInfo
	.type	MP2_WriteSliceInfo, %function
MP2_WriteSliceInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r6, r0, #45056	@ tmp277, pCtx,
	mov	r4, #44	@ tmp140,
	add	r5, r0, #69632	@ tmp144, pCtx,
	ldr	r2, [r6, #260]	@ D.33574, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldr	r1, [r5, #2600]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice
	cmp	r2, #1024	@ D.33574,
	mla	r4, r4, r2, r0	@ tmp141, tmp140, D.33574, pCtx
	str	r1, [r4, #296]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].intra_slice
	ldr	r1, [r5, #2616]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code
	str	r1, [r4, #300]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].quantiser_scale_code
	ldr	r1, [r5, #2612]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num
	str	r1, [r4, #292]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].slice_start_mbn
	bcs	.L834	@,
	ldr	r2, [r5, #2648]	@ D.33574, MEM[(struct BS *)pCtx_4(D) + 72256B].TotalPos
	add	r0, r0, #71680	@, pCtx,
	ldr	r3, [r5, #2344]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	add	r0, r0, #576	@,,
	and	r1, r2, #7	@ bs_offset, D.33574,
	str	r1, [r4, #276]	@ bs_offset, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	add	r3, r3, r2, lsr #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, D.33574,
	str	r3, [r4, #260]	@ stream_base_addr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r5, #2360]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #284]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	bl	BsResidBits	@
	movw	r3, #2332	@ tmp213,
	str	r0, [r4, #268]	@, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	ldrsh	r3, [r5, r3]	@ D.33576, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B]
	cmp	r3, #1	@ D.33576,
	beq	.L835	@,
	cmp	r3, #256	@ D.33576,
	beq	.L836	@,
	mov	r0, #0	@ D.33573,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L834:
	bl	MP2_ClearCurPic	@
	ldr	r3, [r5, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	mov	r0, #0	@ tmp174,
	str	r0, [r5, #2436]	@ tmp174, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].HDRState
	bic	r3, r3, #5767168	@ D.33574, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality,
	str	r3, [r5, #2380]	@ D.33574, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L835:
	mov	r3, #0	@ tmp220,
	add	r4, r4, #268	@ tmp234, tmp141,
	str	r3, [r4, #-4]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	str	r3, [r4, #12]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r3, [r4, #20]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	str	r3, [r4, #4]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
.L831:
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	mov	r0, #1	@ D.33573,
	add	r3, r3, r0	@ D.33574, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum,
	str	r3, [r6, #260]	@ D.33574, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L836:
	ldr	r1, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r2, #0	@ tmp250,
	str	r2, [r4, #280]	@ tmp250, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r1, [r4, #264]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r5, #2364]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #288]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	ldr	r3, [r5, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.33575, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #272]	@ D.33575, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	b	.L831	@
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r5, .L844	@ tmp129,
	add	r0, r5, r0, lsl #3	@ tmp130, tmp129,,
	ldr	r4, [r0, #204]	@ MbAddrInc, tab_for_first_4bit
	ldr	r7, [r0, #208]	@ SkipBit, tab_for_first_4bit
	cmp	r4, #6	@ MbAddrInc,
	movls	r1, r7	@, SkipBit
	movls	r0, r6	@, pBs
	bls	.L842	@,
	cmp	r4, #9	@ MbAddrInc,
	beq	.L843	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	and	r3, r0, #127	@ code,,
	mov	r0, r6	@, pBs
	sub	r3, r3, #24	@ code, code,
	add	r5, r5, r3, lsl #3	@ tmp136, tmp129, code,
	ldr	r7, [r5, #336]	@ D.33591, tab_for_last_7bit
	ldr	r4, [r5, #332]	@ MbAddrInc, tab_for_last_7bit
	mov	r1, r7	@, D.33591
.L842:
	bl	BsShow	@
	mov	r1, r7	@, D.33591
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@ D.33590, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L843:
	mov	r1, r7	@, SkipBit
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r7	@, SkipBit
	mov	r4, r0	@ D.33591,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	rsb	r0, r4, #9	@ D.33590, D.33591,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L845:
	.align	2
.L844:
	.word	.LANCHOR0
	.fnend
	.size	MP2_MbAddrInc, .-MP2_MbAddrInc
	.align	2
	.global	MP2_InitMb
	.type	MP2_InitMb, %function
MP2_InitMb:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pSlcInfo, pSlcInfo
	mov	r5, #0	@ macroblock_escape,
	ldr	r4, [r0, #52]	@ pBs, pSlcInfo_10(D)->pBs
	b	.L847	@
.L851:
	cmp	r3, #15	@ D.33596,
	beq	.L848	@,
	cmp	r3, #8	@ D.33596,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L852	@,
.L848:
	bl	BsShow	@
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
.L847:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #11	@,
	mov	r3, r0	@ D.33596,
	cmp	r3, #23	@ D.33596,
	mov	r0, r4	@, pBs
	bls	.L851	@,
	bl	MP2_MbAddrInc	@
	ldr	r2, [r6, #16]	@ pSlcInfo_10(D)->FirstMbInSliceFlag, pSlcInfo_10(D)->FirstMbInSliceFlag
	cmp	r2, #0	@ pSlcInfo_10(D)->FirstMbInSliceFlag,
	beq	.L852	@,
	ldr	r3, [r6, #28]	@ D.33597, pSlcInfo_10(D)->previous_macroblock_address
	cmp	r3, #0	@ D.33597,
	addeq	r3, r5, r0	@ D.33597, macroblock_escape, macroblock_address_increment
	addne	r5, r5, r0	@ D.33597, macroblock_escape, macroblock_address_increment
	ldr	r0, [r6, #12]	@ pSlcInfo_10(D)->pic_total_mb_num, pSlcInfo_10(D)->pic_total_mb_num
	addne	r3, r5, r3	@ SlcStartMbNum, D.33597, D.33597
	subeq	r3, r3, #1	@ SlcStartMbNum, D.33597,
	str	r3, [r6, #44]	@ SlcStartMbNum, pSlcInfo_10(D)->slicen_start_mb_num
	sub	r0, r0, #1	@ D.33597, pSlcInfo_10(D)->pic_total_mb_num,
	cmp	r3, r0	@ SlcStartMbNum, D.33597
	movhi	r0, #0	@ D.33594,
	movls	r0, #1	@ D.33594,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L852:
	mov	r0, #0	@ D.33594,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	MP2_InitMb, .-MP2_InitMb
	.align	2
	.global	MP2_GetFirstMbInSlice
	.type	MP2_GetFirstMbInSlice, %function
MP2_GetFirstMbInSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSlcInfo, pSlcInfo
	bl	MP2_DecSliceHeader	@
	mov	r0, r4	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp113,
	str	r3, [r4, #16]	@ tmp113, pSlcInfo_2(D)->FirstMbInSliceFlag
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	MP2_GetFirstMbInSlice, .-MP2_GetFirstMbInSlice
	.align	2
	.global	MP2_DecSlice
	.type	MP2_DecSlice, %function
MP2_DecSlice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #69632	@ tmp138, pCtx,
	add	r3, r0, #71680	@ tmp136, pCtx,
	uxtb	r1, r1	@ D.33614, code
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	add	ip, r3, #576	@ D.33616, tmp136,
	add	r6, r3, #520	@ pSlcInfo, tmp136,
	ldr	lr, [r4, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength
	ldr	r3, [r4, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	sub	r2, r2, #1	@ D.33615, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	ldr	r7, [r4, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr
	clz	r2, r2	@ D.33615, D.33615
	str	lr, [r4, #2608]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].ByteLen
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, r2, lsr #5	@ D.33615, D.33615,
	str	r2, [r4, #2568]	@ D.33615, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].mpeg1_flag
	str	r7, [r4, #2604]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].VirAddr
	mov	r0, r6	@, pSlcInfo
	ldr	r2, [r3, #60]	@ D.33614, pSyntaxInfNew_6->mb_height
	str	r2, [r4, #2572]	@ D.33614, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_height_in_mb
	ldr	r2, [r3, #56]	@ D.33614, pSyntaxInfNew_6->mb_width
	str	r2, [r4, #2576]	@ D.33614, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_width_in_mb
	ldr	r2, [r3, #52]	@ pSyntaxInfNew_6->vertical_size, pSyntaxInfNew_6->vertical_size
	ldr	r3, [r3, #48]	@ pSyntaxInfNew_6->horizontal_size, pSyntaxInfNew_6->horizontal_size
	add	r2, r2, #15	@ D.33614, pSyntaxInfNew_6->vertical_size,
	str	r1, [r4, #2588]	@ D.33614, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].slice_vertical_position
	add	r3, r3, #15	@ D.33614, pSyntaxInfNew_6->horizontal_size,
	str	ip, [r4, #2620]	@ D.33616, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pBs
	mov	r2, r2, lsr #4	@ D.33614, D.33614,
	mov	r3, r3, lsr #4	@ D.33614, D.33614,
	mul	r3, r3, r2	@ D.33614, D.33614, D.33614
	str	r3, [r4, #2580]	@ D.33614, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_total_mb_num
	bl	MP2_DecSliceHeader	@
	mov	r0, r6	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp184,
	str	r3, [r4, #2584]	@ tmp184, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].FirstMbInSliceFlag
	cmp	r0, #1	@,
	beq	.L868	@,
	mov	r0, r3	@ D.33611, tmp184
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L868:
	mov	r0, r5	@, pCtx
	bl	MP2_WriteSliceInfo	@
	sub	r0, r0, #1	@ D.33611,,
	clz	r0, r0	@ D.33611, D.33611
	mov	r0, r0, lsr #5	@ D.33611, D.33611,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	MP2_DecSlice, .-MP2_DecSlice
	.align	2
	.global	MP2_GetHDR
	.type	MP2_GetHDR, %function
MP2_GetHDR:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #71680	@ pBs, pCtx,
	add	r4, r0, #69632	@ tmp442, pCtx,
	add	r6, r6, #576	@ pBs, pBs,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r1, #32	@,
	mov	r7, r0	@ pCtx, pCtx
	mov	r8, #0	@ tmp193,
	mov	r0, r6	@, pBs
	strb	r8, [r4, #4080]	@ tmp193, pCtx_11(D)->IsWaitToDecFlag
	ldr	r9, [r4, #3704]	@ pSyntaxInfNew, pCtx_11(D)->pSyntaxInfNew
	ldr	r10, [r4, #3708]	@ pSyntaxInfOld, pCtx_11(D)->pSyntaxInfOld
	bl	BsShow	@
	ldr	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r5, r0	@ code,
	mov	r0, r6	@, pBs
	bl	BsPos	@
	mov	r1, #32	@,
	str	r0, [r4, #2440]	@, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRUsedBits
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	movw	r3, #439	@ tmp203,
	cmp	r5, r3	@ code, tmp203
	beq	.L938	@,
	movw	r3, #435	@ tmp264,
	cmp	r5, r3	@ code, tmp264
	cmpne	r5, #440	@, code,
	bne	.L876	@,
.L872:
	ldr	r3, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L939	@,
.L873:
	movw	r3, #435	@ tmp292,
	cmp	r5, r3	@ code, tmp292
	beq	.L878	@,
.L941:
	cmp	r5, #436	@ code,
	bcc	.L940	@,
	movw	r3, #437	@ tmp293,
	cmp	r5, r3	@ code, tmp293
	beq	.L882	@,
	cmp	r5, #436	@ code,
	bls	.L899	@,
	movw	r3, #439	@ tmp294,
	cmp	r5, r3	@ code, tmp294
	beq	.L899	@,
	cmp	r5, #440	@ code,
	bne	.L877	@,
	mov	r0, r7	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L932	@,
.L899:
	mov	r5, #0	@ D.33621,
.L875:
	mov	r0, r5	@, D.33621
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L876:
	cmp	r5, #256	@ code,
	beq	.L872	@,
	movw	r3, #435	@ tmp292,
	cmp	r5, r3	@ code, tmp292
	bne	.L941	@,
.L878:
	mov	r0, r7	@, pCtx
	bl	sequence_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L932	@,
	ldr	r5, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ands	r5, r5, #7	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	bne	.L887	@,
	mov	r3, #1	@ tmp316,
	mov	r0, r10	@, pSyntaxInfOld
	strb	r3, [r9]	@ tmp316, pSyntaxInfNew_14->valid_flag
	mov	r1, r9	@, pSyntaxInfNew
	mov	r2, #188	@,
	bl	memcpy	@
	ldr	r3, [r4, #2384]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	add	r3, r3, #1	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt,
	str	r3, [r4, #2384]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	b	.L875	@
.L940:
	cmp	r5, #256	@ code,
	beq	.L880	@,
	bcc	.L877	@,
	cmp	r5, #432	@ code,
	bls	.L877	@,
	mov	r0, r7	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r5, r0, #0	@ D.33621,
	bne	.L875	@,
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	ldr	r3, .L944	@ tmp392,
	ldr	r3, [r3]	@ D.33625, g_event_report
	cmp	r3, #0	@ D.33625,
	mvneq	r5, #0	@ D.33621,
	beq	.L875	@,
	mov	r2, r5	@, D.33621
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mvn	r5, #0	@ D.33621,
	blx	r3	@ D.33625
	b	.L875	@
.L880:
	mov	r0, r7	@, pCtx
	bl	picture_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L899	@,
.L932:
	ldr	r3, .L944	@ tmp400,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.33625, g_event_report
	cmp	r3, #0	@ D.33625,
	beq	.L894	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.33625
.L894:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r5, #0	@ D.33621,
	bl	MP2_ClearCurPacket	@
	b	.L875	@
.L939:
	ldr	r2, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r2, #4194304	@ D.33624,
	beq	.L873	@,
	orr	r2, r2, #8388608	@ D.33624, D.33624,
	strb	r3, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r2, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	mov	r2, #0	@ tmp291,
	str	r2, [r4, #2436]	@ tmp291, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	mov	r5, r3	@ D.33621, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L875	@
.L938:
	mov	r2, #28	@,
	mov	r1, r6	@, pBs
	add	r0, sp, #12	@ tmp444,,
	bl	memcpy	@
	mov	r1, #32	@,
	add	r0, sp, #12	@ tmp445,,
	bl	BsGet	@
	mov	r1, #32	@,
	str	r0, [sp, #4]	@ D.33622, %sfp
	add	r0, sp, #12	@ tmp446,,
	bl	BsGet	@
	ldr	ip, [sp, #4]	@ D.33622, %sfp
	movw	r2, #20036	@ tmp213,
	movw	r3, #20553	@ tmp216,
	movt	r2, 17221	@ tmp213,
	movt	r3, 18515	@ tmp216,
	cmp	r0, r2	@, tmp213
	cmpeq	ip, r3	@, D.33622, tmp216
	bne	.L872	@,
	ldr	r5, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r5, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L942	@,
.L874:
	mov	r3, #1	@ tmp258,
	mov	r5, #0	@ D.33621,
	strb	r3, [r4, #4081]	@ tmp258, pCtx_11(D)->IsStreamEndFlag
	b	.L875	@
.L877:
	sub	r3, r5, #256	@ D.33624, code,
	sub	r3, r3, #1	@ D.33624, D.33624,
	cmp	r3, #174	@ D.33624,
	bhi	.L895	@,
	ldr	r6, [r4, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited
	cmp	r6, #0	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited,
	beq	.L896	@,
.L898:
	ldr	r3, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #589824	@ D.33624,
	beq	.L899	@,
	orr	r3, r3, #4194304	@ D.33624, D.33624,
	mov	r1, r5	@, code
	str	r3, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	mov	r3, #1	@ tmp429,
	str	r3, [r4, #2436]	@ tmp429, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_DecSlice	@
	sub	r5, r0, #1	@ D.33621,,
	clz	r5, r5	@ D.33621, D.33621
	mov	r5, r5, lsr #5	@ D.33621, D.33621,
	b	.L875	@
.L882:
	mov	r0, r7	@, pCtx
	bl	extension	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L899	@,
	b	.L932	@
.L887:
	ldrb	r3, [r10]	@ zero_extendqisi2	@ pSyntaxInfOld_15->valid_flag, pSyntaxInfOld_15->valid_flag
	cmp	r3, #1	@ pSyntaxInfOld_15->valid_flag,
	beq	.L943	@,
.L895:
	ldr	r3, .L944	@ tmp437,
	ldr	r3, [r3]	@ D.33625, g_event_report
	cmp	r3, #0	@ D.33625,
	beq	.L899	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r5, r2	@ D.33621,
	blx	r3	@ D.33625
	b	.L875	@
.L942:
	ldr	r3, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #4194304	@ D.33624,
	beq	.L874	@,
	orr	r3, r3, #8388608	@ D.33624, D.33624,
	strb	r5, [r4, #4081]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsStreamEndFlag
	str	r3, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	strb	r5, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r8, [r4, #2436]	@ tmp193, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L875	@
.L896:
	mov	r0, r7	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r7]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _127->s32DSDWaitFlag, _127->s32DSDWaitFlag
	cmp	r3, #1	@ _127->s32DSDWaitFlag,
	bne	.L898	@,
	mov	r5, r6	@ D.33621, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited
	b	.L875	@
.L943:
	mov	r2, #188	@,
	mov	r1, r10	@, pSyntaxInfOld
	mov	r0, r9	@, pSyntaxInfNew
	bl	memcpy	@
	ldr	r2, .L944	@ tmp347,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.33625, g_event_report
	bic	r3, r3, #7	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.33624, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.33625,
	beq	.L899	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r5, r2	@ D.33621,
	blx	ip	@ D.33625
	b	.L875	@
.L945:
	.align	2
.L944:
	.word	g_event_report
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #72704	@ D.33643, pCtx,
	mov	r2, #160	@,
	add	r3, r3, #96	@ D.33643, D.33643,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #45312	@ tmp262, pCtx,
	add	r6, r0, #69632	@ tmp261, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r0, r3	@, D.33643
	add	r5, r5, #16	@ tmp262, tmp262,
	bl	memcpy	@
	ldr	r2, [r6, #4064]	@, pCtx_4(D)->ChanID
	mov	r1, r0	@, D.33643
	mov	r0, r5	@, tmp262
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L947	@,
.L953:
	mov	r7, #0	@ D.33642,
.L948:
	mov	r0, r7	@, D.33642
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L947:
	add	r0, r4, #71680	@, pCtx,
	ldr	r2, [r6, #2352]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	add	r0, r0, #576	@,,
	ldr	r1, [r6, #2336]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsVirAddr
	bl	BsInit	@
	ldr	r3, [r4]	@ D.33647, pCtx_4(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _17->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _17->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L978	@,
.L949:
	ldr	r3, [r6, #2380]	@ pCtx_4(D)->CodecInfo.StreamIntegrality, pCtx_4(D)->CodecInfo.StreamIntegrality
	str	r3, [r6, #2564]	@ pCtx_4(D)->CodecInfo.StreamIntegrality, pCtx_4(D)->CodecInfo.LastStreamIntegrality
.L950:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r0, r0, #1	@ D.33649,,
	cmp	r0, #1	@ D.33649,
	bls	.L979	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r7, r0, #0	@ D.33648,
	beq	.L977	@,
	cmn	r7, #1	@ D.33648,
	beq	.L953	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r7, r0, #0	@ D.33648,
	beq	.L977	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r7, r0, #0	@ D.33642,
	beq	.L980	@,
	ldr	r7, [r6, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BsOffset
	ldr	r3, [r6, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Used_byte
	ldr	r2, [r6, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	mov	r7, r7, asl #3	@ D.33642, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BsOffset,
	add	r3, r3, r2	@ D.33644, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r6, #2432]	@ D.33644, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Used_byte
	b	.L948	@
.L979:
	ldr	r3, [r4]	@ D.33647, pCtx_4(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _28->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _28->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L952	@,
	ldr	r3, [r3, #728]	@ _28->s32DSDWaitFlag, _28->s32DSDWaitFlag
	cmp	r3, #1	@ _28->s32DSDWaitFlag,
	beq	.L953	@,
.L952:
	add	r1, r5, #26624	@, tmp262,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	add	r1, r1, #12	@,,
	mov	r7, #0	@ D.33642,
	bl	MP2_ClearCurPacket	@
	b	.L948	@
.L978:
	ldr	r3, [r3, #728]	@ _17->s32DSDWaitFlag, _17->s32DSDWaitFlag
	cmp	r3, #1	@ _17->s32DSDWaitFlag,
	ldreq	r3, [r6, #2564]	@ pCtx_4(D)->CodecInfo.LastStreamIntegrality, pCtx_4(D)->CodecInfo.LastStreamIntegrality
	streq	r3, [r6, #2380]	@ pCtx_4(D)->CodecInfo.LastStreamIntegrality, pCtx_4(D)->CodecInfo.StreamIntegrality
	bne	.L949	@,
	b	.L950	@
.L977:
	add	r1, r5, #26624	@, tmp262,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	add	r1, r1, #12	@,,
.L975:
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, .L981	@ tmp236,
	ldr	r3, [r3]	@ D.33651, g_event_report
	cmp	r3, #0	@ D.33651,
	beq	.L953	@,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	mov	r2, r7	@, D.33642
	mov	r1, #113	@,
	blx	r3	@ D.33651
	b	.L948	@
.L980:
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	add	r1, r5, #26624	@, tmp262,
	add	r1, r1, #12	@,,
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	b	.L975	@
.L982:
	.align	2
.L981:
	.word	g_event_report
	.fnend
	.size	MPEG2DEC_Decode, .-MPEG2DEC_Decode
	.align	2
	.global	MP2_GetPacketState
	.type	MP2_GetPacketState, %function
MP2_GetPacketState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #69632	@ tmp115, pCtx,
	ldrb	r3, [r0, #4080]	@ zero_extendqisi2	@ pCtx_3(D)->IsWaitToDecFlag, pCtx_3(D)->IsWaitToDecFlag
	cmp	r3, #1	@ pCtx_3(D)->IsWaitToDecFlag,
	moveq	r0, #2	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	MP2_GetPacketState, .-MP2_GetPacketState
	.global	g_tmpusd
	.global	zigzag
	.global	default_intra_quantizer_matrix
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	18
	.word	20
	.word	22
	.word	24
	.word	28
	.word	32
	.word	36
	.word	40
	.word	44
	.word	48
	.word	52
	.word	56
	.word	64
	.word	72
	.word	80
	.word	88
	.word	96
	.word	104
	.word	112
	.type	CSWTCH.44, %object
	.size	CSWTCH.44, 12
CSWTCH.44:
	.word	5
	.word	1
	.word	2
	.type	frame_rate_Table, %object
	.size	frame_rate_Table, 64
frame_rate_Table:
	.word	0
	.word	24551
	.word	24576
	.word	25600
	.word	30689
	.word	30720
	.word	51200
	.word	61378
	.word	61440
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.type	tab_for_first_4bit, %object
	.size	tab_for_first_4bit, 128
tab_for_first_4bit:
	.word	8
	.word	4
	.word	9
	.word	5
	.word	5
	.word	4
	.word	4
	.word	4
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	3
	.word	2
	.word	3
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.word	1
	.type	tab_for_last_7bit, %object
	.size	tab_for_last_7bit, 832
tab_for_last_7bit:
	.word	33
	.word	11
	.word	32
	.word	11
	.word	31
	.word	11
	.word	30
	.word	11
	.word	29
	.word	11
	.word	28
	.word	11
	.word	27
	.word	11
	.word	26
	.word	11
	.word	25
	.word	11
	.word	24
	.word	11
	.word	23
	.word	11
	.word	22
	.word	11
	.word	21
	.word	10
	.word	21
	.word	10
	.word	20
	.word	10
	.word	20
	.word	10
	.word	19
	.word	10
	.word	19
	.word	10
	.word	18
	.word	10
	.word	18
	.word	10
	.word	17
	.word	10
	.word	17
	.word	10
	.word	16
	.word	10
	.word	16
	.word	10
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	15
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	14
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	13
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	12
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	11
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	10
	.word	8
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	9
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.word	8
	.word	7
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	default_intra_quantizer_matrix, %object
	.size	default_intra_quantizer_matrix, 64
default_intra_quantizer_matrix:
	.byte	8
	.byte	16
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	16
	.byte	16
	.byte	22
	.byte	24
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	19
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	34
	.byte	38
	.byte	22
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	37
	.byte	40
	.byte	22
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	26
	.byte	27
	.byte	29
	.byte	32
	.byte	35
	.byte	40
	.byte	48
	.byte	58
	.byte	26
	.byte	27
	.byte	29
	.byte	34
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	27
	.byte	29
	.byte	35
	.byte	38
	.byte	46
	.byte	56
	.byte	69
	.byte	83
	.type	zigzag, %object
	.size	zigzag, 64
zigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
