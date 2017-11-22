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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
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
	sub	r0, r1, #3	@ D.33543, CodeLen,
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
	rsb	r3, r0, r3	@ D.33542, pCode, ptr
	sub	r0, r3, #2	@ D.33543, D.33542,
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
	add	r6, r0, #69632	@ tmp189, pCtx,
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r3, [r6, #3704]	@ pSyntaxInfNew, pCtx_12(D)->pSyntaxInfNew
	ldr	r2, [r3, #48]	@ D.33548, pSyntaxInfNew_14->horizontal_size
	ldr	r3, [r3, #52]	@ D.33548, pSyntaxInfNew_14->vertical_size
	cmp	r2, #31	@ D.33548,
	bls	.L18	@,
	cmp	r3, #31	@ D.33548,
	bls	.L18	@,
	ldr	r1, [r0]	@ D.33549, pCtx_12(D)->pstExtraData
	ldr	r0, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	cmp	r0, #25	@ _17->eCapLevel,
	beq	.L41	@,
	mov	r8, r2	@ PicWidth, D.33548
	mov	r7, r3	@ PicHeight, D.33548
	mov	r10, #5	@ D.33552,
	mov	r4, #2	@ PmvNum,
	mov	r9, #3	@ DecFsNum,
.L27:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp191,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.33549, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp165,
	str	r8, [sp, #24]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r7, [sp, #28]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #20]	@ _47->s32DnrDispOutEnable, _47->s32DnrDispOutEnable
	str	r7, [sp, #44]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _47->eCapLevel, _47->eCapLevel
	strb	r1, [sp, #12]	@ _47->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	cmp	r3, #24	@ _47->eCapLevel,
	str	r8, [sp, #40]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #14]	@ tmp165, FspInstCfg.s32RprEnable
	beq	.L32	@,
	uxtb	r3, r4	@ D.33547, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #19]	@ D.33552, FspInstCfg.s32ExpectedDispFsNum
.L35:
	add	r1, sp, #12	@ tmp192,,
	ldr	r0, [r6, #4064]	@, pCtx_12(D)->ChanID
	strb	r3, [sp, #20]	@ D.33547, FspInstCfg.s32ExpectedPmvNum
	mov	r4, #0	@ tmp171,
	strb	r4, [sp, #16]	@ tmp171, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.33551,
	bne	.L33	@,
	ldr	r1, [r5]	@ D.33549, pCtx_12(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r6, #4064]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _68->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _68->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r4	@,
	moveq	r0, #1	@ D.33546,
	beq	.L38	@,
	ldr	r1, .L42	@,
	mov	r0, r7	@, D.33551
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.33546, D.33551
	b	.L38	@
.L18:
	ldr	r1, .L42+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33546,
.L38:
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L33:
	ldr	r1, .L42+8	@,
	mov	r0, r4	@, tmp171
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33546, tmp171
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L41:
	ldr	r0, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r0, #0	@ _17->stChanOption.s32ReRangeEn,
	bne	.L22	@,
	ldr	r8, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	ldr	r7, [r1, #572]	@ D.33553, _17->stChanOption.s32MaxHeight
	cmp	r2, r8	@ D.33548, PicWidth
	bhi	.L24	@,
	cmp	r3, r7	@ D.33548, PicHeight
	bhi	.L24	@,
	ldr	r3, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L40	@,
.L37:
	mov	r4, #1	@ PmvNum,
.L31:
	ldrb	r10, [r1, #616]	@ zero_extendqisi2	@ D.33552, _17->stChanOption.s32DisplayFrameNum
	b	.L27	@
.L22:
	ldr	r0, [r1, #568]	@ D.33551, _17->stChanOption.s32MaxWidth
	ldr	ip, [r1, #572]	@ D.33551, _17->stChanOption.s32MaxHeight
	cmp	r2, r0	@ D.33548, D.33551
	bhi	.L29	@,
	cmp	r3, ip	@ D.33548, D.33551
	bhi	.L29	@,
	ldr	r0, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r8, r2	@ PicWidth, D.33548
	mov	r7, r3	@ PicHeight, D.33548
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _17->stChanOption.s32SupportBFrame,
	beq	.L37	@,
.L40:
	add	r3, r9, #1	@ PmvNum, DecFsNum,
	cmp	r3, #17	@ PmvNum,
	movlt	r4, r3	@ PmvNum, PmvNum
	movge	r4, #17	@ PmvNum,
	b	.L31	@
.L32:
	strb	r2, [sp, #17]	@ tmp165, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.33547,
	strb	r10, [sp, #19]	@ D.33552, FspInstCfg.s32ExpectedDispFsNum
	b	.L35	@
.L29:
	stmia	sp, {r0, ip}	@,,
	mov	r0, #0	@,
	ldr	r1, .L42+12	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33546,
	b	.L38	@
.L24:
	str	r7, [sp, #4]	@ D.33553,
	mov	r0, #0	@,
	str	r8, [sp]	@ PicWidth,
	ldr	r1, .L42+12	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33546,
	b	.L38	@
.L43:
	.align	2
.L42:
	.word	.LC3
	.word	.LC1
	.word	.LC4
	.word	.LC2
	.fnend
	.size	MP2_ArrangeVHBMem, .-MP2_ArrangeVHBMem
	.align	2
	.global	MP2_DecodingDecide
	.type	MP2_DecodingDecide, %function
MP2_DecodingDecide:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #69632	@ tmp618, pCtx,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r3, [r4, #2380]	@ D.33561, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r7, [r4, #3704]	@ pSyntaxInfNew, pCtx_13(D)->pSyntaxInfNew
	tst	r3, #8388608	@ D.33561,
	mvneq	r6, #0	@ D.33561,
	bne	.L134	@,
.L45:
	mov	r0, r6	@, D.33561
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L134:
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_16->picture_structure, pSyntaxInfNew_16->picture_structure
	cmp	r2, #3	@ pSyntaxInfNew_16->picture_structure,
	beq	.L46	@,
	ldr	r2, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	cmp	r2, #1	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field,
	beq	.L46	@,
	ands	r6, r3, #255	@ D.33561, D.33561,
	mov	r5, r0	@ pCtx, pCtx
	beq	.L48	@,
.L137:
	ldr	r2, .L153	@ tmp266,
	ldr	ip, [r2]	@ D.33565, g_event_report
	cmp	ip, #0	@ D.33565,
	beq	.L49	@,
	mov	r2, #0	@,
	mov	r1, #103	@,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	blx	ip	@ D.33565
	ldr	r3, [r4, #2380]	@ D.33561, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
.L49:
	ldr	r2, [r4, #2388]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	mov	r0, #22	@,
	ldr	r1, .L153+4	@,
	mov	r6, #0	@ D.33561,
	bl	dprint_vfmw	@
	mov	r0, r6	@, D.33561
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L48:
	ldr	r3, [r4, #2428]	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Imgbuf_allocated
	cmp	r3, #0	@ D.33562,
	beq	.L135	@,
	ldr	r3, [r4, #2368]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode
	ldr	r1, [r0]	@ D.33569, pCtx_13(D)->pstExtraData
	sub	r3, r3, #2	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode,
	cmp	r3, #1	@ D.33562,
	ldr	r2, [r1, #8]	@ D.33564,
	bls	.L136	@,
.L52:
	sub	r3, r2, #1	@ tmp391, D.33562,
	str	r2, [r4, #2368]	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode
	cmp	r3, #4	@ tmp391,
	ldrls	pc, [pc, r3, asl #2]	@ tmp391
	b	.L123	@
.L58:
	.word	.L57
	.word	.L59
	.word	.L60
	.word	.L61
	.word	.L62
.L46:
	ldr	r2, [r4, #4068]	@ pCtx_13(D)->numTotalFrame, pCtx_13(D)->numTotalFrame
	ands	r6, r3, #255	@ D.33561, D.33561,
	mov	r5, r0	@ pCtx, pCtx
	add	r2, r2, #1	@ D.33564, pCtx_13(D)->numTotalFrame,
	str	r2, [r4, #4068]	@ D.33564, pCtx_13(D)->numTotalFrame
	beq	.L48	@,
	b	.L137	@
.L62:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	cmp	r10, #1	@ D.33571,
	beq	.L138	@,
.L67:
	cmp	r10, #2	@ D.33571,
	beq	.L139	@,
.L68:
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	cmp	fp, #3	@ D.33571,
	moveq	r9, #0	@ ret,
	beq	.L63	@,
.L71:
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	mov	r9, #0	@ ret,
	clz	r3, r3	@ D.33567, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	mov	r3, r3, lsr #5	@ D.33567, D.33567,
	str	r3, [r4, #2392]	@ D.33567, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
.L63:
	ldr	r2, [r4, #2388]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	add	r0, r5, #71680	@, pCtx,
	ldr	r1, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Used_byte
	add	r0, r0, #576	@,,
	ldr	r8, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BsOffset
	str	r2, [sp, #12]	@ D.33564, %sfp
	add	r8, r1, r8	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BsOffset
	bl	BsPos	@
	mov	r3, r10	@, D.33571
	str	fp, [sp]	@ D.33571,
	ldr	r2, [sp, #12]	@ D.33564, %sfp
	ldr	r1, .L153+8	@,
	add	r8, r8, r0, lsr #3	@ D.33562, D.33562,,
	mov	r0, #18	@,
	str	r8, [sp, #4]	@ D.33562,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	bic	r3, r3, #14155776	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r3, [r5]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r0, [r3, #528]	@ _139->s32SupportAllP, _139->s32SupportAllP
	ldr	r3, [r4, #2420]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum
	cmp	r0, #1	@ _139->s32SupportAllP,
	beq	.L140	@,
	cmp	r3, #0	@ D.33562,
	bne	.L78	@,
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.33563, pSyntaxInfNew_16->picture_coding_type
	sub	r1, r2, #2	@ tmp503, D.33563,
	cmp	r1, #1	@ tmp503,
	bls	.L141	@,
.L79:
	cmp	r2, #3	@ D.33563,
	beq	.L142	@,
.L76:
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	mov	r8, r0	@ pFwdImg,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	clz	r3, r8	@ D.33567, pFwdImg
	mov	r3, r3, lsr #5	@ D.33567, D.33567,
	clz	r1, r0	@ D.33567,
	mov	r1, r1, lsr #5	@ D.33567, D.33567,
	orrs	r2, r1, r3	@ tmp620, D.33567, D.33567
	bne	.L143	@,
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.33563, pSyntaxInfNew_16->picture_coding_type
	cmp	r2, #2	@ D.33563,
	beq	.L144	@,
	cmp	r2, #3	@ D.33563,
	beq	.L145	@,
.L84:
	cmp	r9, #0	@ ret,
	movne	r6, #1	@ D.33561,
	bne	.L45	@,
	ldrb	r3, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_16->picture_structure, pSyntaxInfNew_16->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_16->picture_structure,
	beq	.L90	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field,
	bne	.L45	@,
.L90:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_16->progressive_sequence,
	beq	.L146	@,
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_frame, pSyntaxInfNew_16->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_16->progressive_frame,
	beq	.L147	@,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r3, #1	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r3, [r4, #2544]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.33564, D.33564,
	str	r3, [r4, #2540]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
.L92:
	ldr	r2, [r4, #2536]	@ pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	add	r2, r2, #1	@ D.33564, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.33564, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, #1	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	b	.L45	@
.L61:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	cmp	r10, #1	@ D.33571,
	beq	.L148	@,
	cmp	r10, #3	@ D.33571,
	beq	.L149	@,
.L70:
	cmp	r10, #2	@ D.33571,
	beq	.L74	@,
.L123:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	mov	r9, #1	@ ret,
.L126:
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	b	.L63	@
.L57:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	cmp	r10, #3	@ D.33571,
	beq	.L150	@,
.L125:
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	mov	r9, #1	@ ret,
	b	.L63	@
.L60:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	mov	r9, #0	@ ret,
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	b	.L63	@
.L59:
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	sub	r3, r10, #2	@ tmp404, D.33571,
	cmp	r3, #1	@ tmp404,
	bhi	.L125	@,
	b	.L67	@
.L78:
	cmp	r3, #1	@ D.33562,
	bhi	.L76	@,
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.33563, pSyntaxInfNew_16->picture_coding_type
	b	.L79	@
.L140:
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum,
	bne	.L76	@,
	ldrb	r2, [r7, #22]	@ zero_extendqisi2	@ D.33563, pSyntaxInfNew_16->picture_coding_type
	cmp	r2, #3	@ D.33563,
	beq	.L151	@,
	cmp	r2, #2	@ D.33563,
	bne	.L76	@,
	ldr	r1, .L153+12	@,
	bl	dprint_vfmw	@
	b	.L76	@
.L136:
	cmp	r2, #4	@ D.33564,
	cmpne	r2, #1	@, D.33564,
	bhi	.L52	@,
	ldr	r1, .L153+16	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	orr	r3, r3, #128	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	str	r3, [r4, #2380]	@ D.33562, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L54	@,
	ldr	r1, [r8, #192]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #196]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #200]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #204]	@, pImg_49->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r8, #192]	@ D.33561, pImg_49->p_usrdat
	str	r6, [r8, #196]	@ D.33561, pImg_49->p_usrdat
	mov	r2, #1	@,
	str	r6, [r8, #200]	@ D.33561, pImg_49->p_usrdat
	str	r6, [r8, #204]	@ D.33561, pImg_49->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ D.33561, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ D.33561, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L152	@,
.L54:
	mov	r3, #0	@ tmp386,
	str	r3, [r4, #2420]	@ tmp386, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum
	ldr	r1, [r5]	@ D.33569, pCtx_13(D)->pstExtraData
	ldr	r2, [r1, #8]	@ D.33562, _256->s32DecMode
	b	.L52	@
.L135:
	ldr	r2, [r4, #2388]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	mov	r0, #1	@,
	ldr	r1, .L153+20	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L144:
	cmp	r3, #0	@ D.33567,
	bne	.L82	@,
	ldr	r3, [r5]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r2, [r8, #180]	@ D.33562, pFwdImg_155->error_level
	ldr	r3, [r3]	@ D.33564, _166->s32RefErrThr
	cmp	r2, r3	@ D.33562, D.33564
	bls	.L84	@,
	ldr	r1, .L153+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L143:
	movw	r3, #923	@,
	ldr	r2, .L153+28	@,
	ldr	r1, .L153+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L145:
	cmp	r3, #0	@ D.33567,
	ldr	r3, [r5]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r2, [r8, #180]	@ D.33562, pFwdImg_155->error_level
	ldr	r3, [r3]	@ D.33564,* pCtx_13(D)->pstExtraData
	bne	.L86	@,
	cmp	r2, r3	@ D.33562, D.33564
	bhi	.L86	@,
	cmp	r1, #0	@ D.33567,
	ldr	r2, [r0, #180]	@ D.33562, pBwdImg_159->error_level
	bne	.L89	@,
	cmp	r3, r2	@ D.33564, D.33562
	bcs	.L84	@,
.L89:
	ldr	r1, .L153+36	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L146:
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.33564, pSyntaxInfNew_16->repeat_first_field
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.33564, pSyntaxInfNew_16->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.33564, D.33564, D.33564
	add	r3, r3, #1	@ D.33564, D.33564,
	add	r3, r3, r1	@ D.33564, D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.33564, D.33564,
	str	r3, [r4, #2540]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	b	.L92	@
.L86:
	ldr	r1, .L153+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L139:
	add	r3, r5, #45056	@ tmp424, pCtx,
	ldrb	r2, [r3, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct
	cmp	r2, #3	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct,
	beq	.L68	@,
	ldrb	r9, [r3, #272]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType
	cmp	r9, #1	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType,
	bne	.L68	@,
	b	.L126	@
.L147:
	ldr	r2, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	ldr	r3, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	add	r2, r2, #1	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r2, [r4, #2544]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.33564, pSyntaxInfNew_16->repeat_first_field
	add	r2, r2, #2	@ D.33564, D.33564,
	add	r3, r3, r2	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt, D.33564
	str	r3, [r4, #2540]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	b	.L92	@
.L141:
	ldr	r1, .L153+44	@,
	mov	r0, #1	@,
	mov	r9, r3	@ ret, D.33562
	bl	dprint_vfmw	@
	b	.L76	@
.L150:
	ldrb	r10, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	cmp	r10, #3	@ D.33571,
	bne	.L71	@,
	mov	fp, r10	@ D.33571, D.33571
	mov	r9, #0	@ ret,
	b	.L63	@
.L149:
	ldr	r3, [r4, #4076]	@ pCtx_13(D)->PPicFound, pCtx_13(D)->PPicFound
	cmp	r3, #0	@ pCtx_13(D)->PPicFound,
	bne	.L125	@,
.L73:
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	cmp	fp, #3	@ D.33571,
	bne	.L71	@,
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	mov	r9, #0	@ ret,
	b	.L63	@
.L148:
	mov	r3, #0	@ tmp442,
	str	r3, [r4, #4076]	@ tmp442, pCtx_13(D)->PPicFound
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	cmp	r10, #3	@ D.33571,
	bne	.L70	@,
	b	.L73	@
.L138:
	ldr	r3, [r1, #732]	@ _257->s32firstIdecodedflag, _257->s32firstIdecodedflag
	cmp	r3, #0	@ _257->s32firstIdecodedflag,
	bne	.L68	@,
	b	.L125	@
.L74:
	mov	r9, #1	@ tmp459,
	str	r9, [r4, #4076]	@ tmp459, pCtx_13(D)->PPicFound
	ldrb	r10, [r7, #22]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_coding_type
	ldrb	fp, [r7, #9]	@ zero_extendqisi2	@ D.33571, pSyntaxInfNew_16->picture_structure
	b	.L63	@
.L142:
	ldr	r1, .L153+48	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r9, #0	@ ret,
	b	.L76	@
.L82:
	movw	r3, #933	@,
	ldr	r2, .L153+28	@,
	ldr	r1, .L153+52	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L45	@
.L151:
	ldr	r1, .L153+56	@,
	mov	r9, r3	@ ret, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum
	bl	dprint_vfmw	@
	b	.L76	@
.L152:
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.33564, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	b	.L54	@
.L154:
	.align	2
.L153:
	.word	g_event_report
	.word	.LC5
	.word	.LC8
	.word	.LC10
	.word	.LC7
	.word	.LC6
	.word	.LC15
	.word	.LANCHOR0
	.word	.LC13
	.word	.LC17
	.word	.LC16
	.word	.LC11
	.word	.LC12
	.word	.LC14
	.word	.LC9
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
	ldr	r1, .L162	@,
	mov	r0, sp	@,
	bl	memcpy	@
	add	r3, r4, #69632	@ tmp123, pCtx,
	ldr	r0, [r4, #300]	@ QuantScale, MEM[(struct MP2_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcStr[0].quantiser_scale_code
	ldr	r2, [r3, #2416]	@ pCtx_3(D)->CodecInfo.MpegFlag, pCtx_3(D)->CodecInfo.MpegFlag
	cmp	r2, #1	@ pCtx_3(D)->CodecInfo.MpegFlag,
	beq	.L156	@,
	ldr	r3, [r3, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ _8->q_scale_type, _8->q_scale_type
	cmp	r3, #0	@ _8->q_scale_type,
	addne	r3, sp, #128	@ tmp132,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScale,
	addne	r0, r3, r0, lsl #2	@ tmp129, tmp132, QuantScale,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L156:
	add	sp, sp, #128	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L163:
	.align	2
.L162:
	.word	.LANCHOR0+20
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
	ldr	r3, [r4, #3704]	@ D.33604, pCtx_2(D)->pSyntaxInfNew
	ldr	r6, [r4, #2520]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCnt
	ldr	r5, [r4, #2532]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCnt
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ _13->picture_coding_type, _13->picture_coding_type
	ldr	lr, [r3, #72]	@ D.33605, _13->frame_rate
	cmp	r2, #1	@ _13->picture_coding_type,
	ldr	ip, [r4, #2516]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFldCnt
	ldr	r1, [r4, #2528]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFldCnt
	ldr	r2, [r4, #2512]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCntNoRpt
	ldr	r0, [r4, #2524]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCntNoRpt
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	cmp	lr, #0	@ D.33605,
	add	r0, r2, r0	@ FrmNumNoRpt, D.33603, D.33603
	add	r1, ip, r1	@ FldNum, D.33603, D.33603
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
	movne	r0, r0, asl #1	@ D.33603, FrmNumNoRpt,
	addeq	r1, r6, r5	@, D.33603, D.33603
	mul	r0, lr, r0	@, D.33605, D.33603
	bl	__aeabi_idiv	@
	mov	r3, #100	@ tmp190,
	mul	r0, r3, r0	@ D.33603, tmp190, D.33603
	add	r3, r0, #1020	@ tmp193, D.33603,
	cmp	r0, #0	@ D.33603,
	add	r3, r3, #3	@ tmp193, tmp193,
	movlt	r0, r3	@ D.33603, tmp193
	mov	r0, r0, asr #10	@ D.33603, D.33603,
	str	r0, [r4, #2548]	@ D.33603, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].RealFrmRate
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
	sub	r3, r3, #1	@ D.33612, _4->aspect_ratio_information,
	cmp	r3, #2	@ D.33612,
	ldrls	r2, .L173	@ tmp121,
	addls	r3, r2, r3, lsl #2	@ tmp122, tmp121, D.33612,
	ldrls	r0, [r3, #148]	@ D.33611, CSWTCH.44
	movhi	r0, #0	@ D.33611,
	bx	lr	@
.L174:
	.align	2
.L173:
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
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ D.33616, pSyntaxInfNew_12->picture_coding_type
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ D.33616, pSyntaxInfNew_12->progressive_sequence
	cmp	r3, #4	@ D.33616,
	ldr	r2, [r4, #140]	@ pImg_17->format, pImg_17->format
	subne	r3, r3, #1	@ D.33617, D.33616,
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ D.33616, pSyntaxInfNew_12->picture_structure
	andne	r3, r3, #3	@ D.33619, D.33617,
	moveq	r3, #0	@ D.33619,
	cmp	r1, #0	@ D.33616,
	ubfx	r2, r2, #10, #2	@ fldflg, pImg_17->format,,
	orr	r2, r2, lr	@ fldflg, fldflg, D.33616
	ldr	ip, [r5, #128]	@ vfmt, pSyntaxInfNew_12->video_format
	moveq	r0, #1	@ sfmt,
	movne	r0, #0	@ sfmt,
	movne	lr, #4096	@ D.33619,
	beq	.L211	@,
.L178:
	ldr	r1, [r7, #3704]	@ pCtx_9(D)->pSyntaxInfNew, pCtx_9(D)->pSyntaxInfNew
	and	ip, ip, #3	@ D.33619, vfmt,
	and	r10, r2, #3	@ D.33619, fldflg,
	mov	ip, ip, asl #5	@ D.33619, D.33619,
	ldr	r1, [r1, #84]	@ _148->aspect_ratio_information, _148->aspect_ratio_information
	orr	ip, ip, r0, asl #8	@ D.33619, D.33619, sfmt,
	orr	r2, ip, r10, asl #10	@ D.33619, D.33619, D.33619,
	str	r3, [r4, #132]	@ D.33619, pImg_17->top_fld_type
	sub	r1, r1, #1	@ D.33619, _148->aspect_ratio_information,
	str	r3, [r4, #136]	@ D.33619, pImg_17->bottom_fld_type
	cmp	r1, #2	@ D.33619,
	orr	r3, r2, r3	@ D.33619, D.33619, D.33619
	orr	r3, r3, lr	@ D.33619, D.33619, D.33619
	mov	r0, r4	@, pImg
	ldrls	r9, .L215	@ tmp247,
	movhi	r1, #0	@ D.33626,
	movhi	r9, r1	@ D.33619, D.33626
	addls	r1, r9, r1, lsl #2	@ tmp248, tmp247, D.33619,
	ldrls	r1, [r1, #148]	@ D.33626, CSWTCH.44
	andls	r9, r1, #7	@ D.33619, D.33626,
	movls	r9, r9, asl #14	@ D.33619, D.33619,
	orr	r9, r3, r9	@ D.33619, D.33619, D.33619
	str	r9, [r4, #140]	@ D.33619, pImg_17->format
	bl	SetAspectRatio	@
	mov	r3, #3	@ tmp262,
	str	r3, [r4, #300]	@ tmp262, pImg_17->ImageDnr.video_standard
	mov	r2, #1	@ tmp265,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_12->picture_structure, pSyntaxInfNew_12->picture_structure
	strb	r2, [r4, #295]	@ tmp265, pImg_17->ImageDnr.use_pic_qp_en
	cmp	r3, #3	@ pSyntaxInfNew_12->picture_structure,
	moveq	r3, #0	@ D.33615,
	movne	r3, #4	@ D.33615,
	strb	r3, [r4, #288]	@ D.33615, pImg_17->ImageDnr.pic_structure
	ldr	r3, [r8, #4]	@ D.33620, pCtx_9(D)->pMp2DecParam
	cmp	r3, #0	@ D.33620,
	streqb	r3, [r4, #295]	@ D.33620, pImg_17->ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ D.33617, _63->EstmatedPicQp
	moveq	r2, #32	@ tmp269,
	moveq	r3, r2	@ D.33617, tmp269
	streq	r2, [r4, #304]	@ tmp269, pImg_17->ImageDnr.QP_Y
	mov	r2, #1	@ tmp270,
	strb	r2, [r4, #293]	@ tmp270, pImg_17->ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ D.33617, pImg_17->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ D.33617, pImg_17->ImageDnr.QP_V
	str	r3, [r4, #308]	@ D.33617, pImg_17->ImageDnr.QP_U
	ldr	r3, [r5, #72]	@ D.33619, pSyntaxInfNew_12->frame_rate
	str	r3, [r4, #168]	@ D.33619, pImg_17->frame_rate
	ldr	r3, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r2	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L212	@,
.L185:
	ldr	r3, [r5, #48]	@ D.33619, pSyntaxInfNew_12->horizontal_size
	str	r3, [r4, #144]	@ D.33619, pImg_17->image_width
	ldr	r3, [r5, #52]	@ D.33626, pSyntaxInfNew_12->vertical_size
	str	r3, [r4, #148]	@ D.33626, pImg_17->image_height
.L187:
	ldr	r2, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r2, [r2, #32]	@ _89->eCapLevel, _89->eCapLevel
	cmp	r2, #25	@ _89->eCapLevel,
	beq	.L213	@,
.L188:
	ldr	r2, [r4, #144]	@ D.33619, pImg_17->image_width
	mov	r1, r3, lsr #1	@ D.33619, D.33626,
	str	r1, [r4, #164]	@ D.33619, pImg_17->disp_center_y
	mov	r1, r2, lsr #1	@ D.33619, D.33619,
	str	r1, [r4, #160]	@ D.33619, pImg_17->disp_center_x
	ldr	r1, [r5, #148]	@ D.33619, pSyntaxInfNew_12->display_horizontal_size
	cmp	r1, #0	@ D.33619,
	beq	.L189	@,
	ldr	r0, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r0, #0	@ pSyntaxInfNew_12->display_vertical_size,
	beq	.L189	@,
	cmp	r1, r2	@ D.33619, D.33619
	movcs	r1, r2	@ D.33619, D.33619
	str	r1, [r4, #152]	@ D.33619, pImg_17->disp_width
	ldr	r2, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r3, r2	@ D.33626, pSyntaxInfNew_12->display_vertical_size
	movcs	r3, r2	@ D.33619, pSyntaxInfNew_12->display_vertical_size
	str	r3, [r4, #156]	@ D.33619, pImg_17->disp_height
	b	.L190	@
.L189:
	str	r2, [r4, #152]	@ D.33619, pImg_17->disp_width
	str	r3, [r4, #156]	@ D.33626, pImg_17->disp_height
.L190:
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_sequence, pSyntaxInfNew_12->progressive_sequence
	mov	r0, r8	@, pCtx
	str	r3, [r4, #340]	@ pSyntaxInfNew_12->progressive_sequence, pImg_17->optm_inf.IsProgressiveSeq
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_frame, pSyntaxInfNew_12->progressive_frame
	str	r3, [r4, #344]	@ pSyntaxInfNew_12->progressive_frame, pImg_17->optm_inf.IsProgressiveFrm
	ldr	r3, [r5, #144]	@ pSyntaxInfNew_12->matrix_coefficients, pSyntaxInfNew_12->matrix_coefficients
	str	r3, [r4, #352]	@ pSyntaxInfNew_12->matrix_coefficients, pImg_17->optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	ldr	r3, [r7, #2548]	@ D.33617, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].RealFrmRate
	str	r3, [r4, #348]	@ D.33617, pImg_17->optm_inf.RealFrmRate
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L211:
	cmp	lr, #3	@ D.33616,
	beq	.L214	@,
	ldr	r1, [r7, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field
	cmp	r1, #0	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field,
	bne	.L180	@,
	sub	lr, lr, #1	@ D.33619, D.33616,
	clz	lr, lr	@ D.33619, D.33619
	mov	lr, lr, lsr #5	@ D.33619, D.33619,
	mov	lr, lr, asl #12	@ D.33619, D.33619,
	b	.L178	@
.L212:
	ldr	r3, [r6, #56]	@ D.33619, pSyntaxInfOld_13->mb_width
	cmp	r3, #0	@ D.33619,
	beq	.L185	@,
	ldr	r2, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	cmp	r2, #0	@ pSyntaxInfOld_13->mb_height,
	beq	.L185	@,
	ldrb	r2, [r7, #4083]	@ zero_extendqisi2	@ pCtx_9(D)->DSDNeedFlushFrame, pCtx_9(D)->DSDNeedFlushFrame
	cmp	r2, #0	@ pCtx_9(D)->DSDNeedFlushFrame,
	beq	.L185	@,
	mov	r3, r3, asl #4	@ D.33619, D.33619,
	str	r3, [r4, #144]	@ D.33619, pImg_17->image_width
	ldr	r3, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	mov	r3, r3, asl #4	@ D.33626, pSyntaxInfOld_13->mb_height,
	str	r3, [r4, #148]	@ D.33626, pImg_17->image_height
	b	.L187	@
.L180:
	subs	lr, lr, #1	@ D.33619, D.33616,
	movne	lr, #1	@ D.33619,
	mov	lr, lr, asl #12	@ D.33619, D.33619,
	b	.L178	@
.L214:
	ldrb	lr, [r5, #10]	@ zero_extendqisi2	@ D.33616, pSyntaxInfNew_12->top_field_first
	and	lr, lr, #1	@ D.33619, D.33616,
	mov	lr, lr, asl #12	@ D.33619, D.33619,
	b	.L178	@
.L213:
	ldr	r2, [r4, #172]	@ D.33619, pImg_17->image_stride
	add	r3, r3, #15	@ D.33619, D.33626,
	ldr	r0, [r4, #104]	@ D.33619, pImg_17->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.33619, D.33619,
	ldr	r1, [r4, #32]	@ D.33623, pImg_17->luma_vir_addr
	mov	lr, r2, asl #4	@ D.33619, D.33619,
	add	ip, r2, r0	@ D.33617, D.33619, D.33619
	str	r0, [r4, #88]	@ D.33619, pImg_17->top_luma_phy_addr
	mul	r3, r3, lr	@ D.33619, D.33619, D.33619
	str	r0, [r4, #120]	@ D.33619, pImg_17->luma_2d_phy_addr
	str	ip, [r4, #96]	@ D.33617, pImg_17->btm_luma_phy_addr
	str	r1, [r4, #48]	@ D.33623, pImg_17->luma_2d_vir_addr
	add	r0, r3, r0	@ D.33619, D.33619, D.33619
	add	r3, r1, r3	@ D.33623, D.33623, D.33619
	add	r2, r2, r0	@ D.33617, D.33619, D.33619
	str	r3, [r4, #36]	@ D.33623, pImg_17->chrom_vir_addr
	str	r2, [r4, #100]	@ D.33617, pImg_17->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.33619, pImg_17->chrom_phy_addr
	str	r0, [r4, #92]	@ D.33619, pImg_17->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ pImg_17->top_chrom_phy_addr, pImg_17->top_chrom_phy_addr
	ldr	r3, [r4, #148]	@ D.33626, pImg_17->image_height
	str	r2, [r4, #124]	@ pImg_17->top_chrom_phy_addr, pImg_17->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_17->chrom_2d_vir_addr
	b	.L188	@
.L216:
	.align	2
.L215:
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
	ble	.L218	@,
	b	MP2_SearchStartCode.part.1	@
.L218:
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
	ldr	r3, [r4, #2416]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].MpegFlag
	ldr	r1, [r4, #3704]	@ pSyntaxInfNew, pCtx_7(D)->pSyntaxInfNew
	cmp	r3, #1	@ D.33632,
	beq	.L221	@,
	cmp	r3, #2	@ D.33632,
	beq	.L222	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #63	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
.L228:
	tst	r3, #24	@ D.33632,
	beq	.L230	@,
.L247:
	cmp	r2, #3	@ D.33636,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L231:
	orr	r3, r3, #64	@ D.33632, D.33632,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	str	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L234	@,
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
	bne	.L246	@,
.L234:
	mov	r3, #0	@ tmp282,
	str	r3, [r4, #2420]	@ tmp282, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].RefNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L222:
	ldr	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #1048576	@ D.33632,
	orreq	r3, r3, #16	@ D.33632, D.33632,
	streq	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #1	@ tmp190, D.33636,
	cmp	r0, #2	@ tmp190,
	bls	.L228	@,
.L244:
	orr	r3, r3, #8	@ D.33632, D.33632,
	str	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #24	@ D.33632,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
	bne	.L247	@,
.L230:
	cmp	r2, #1	@ D.33636,
	biceq	r3, r3, #192	@ D.33632, D.33632,
	streq	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L221:
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
	sub	r3, r2, #1	@ tmp154, D.33636,
	cmp	r3, #3	@ tmp154,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrhi	r3, r3, #8	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strhi	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrhib	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #2	@ tmp169, D.33636,
	cmp	r0, #1	@ tmp169,
	bls	.L248	@,
.L225:
	cmp	r2, #3	@ D.33636,
	beq	.L249	@,
	tst	r3, #24	@ D.33632,
	bne	.L231	@,
	b	.L230	@
.L246:
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.33634, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.33634, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	b	.L234	@
.L249:
	ldrb	r2, [r1, #26]	@ zero_extendqisi2	@ pSyntaxInfNew_9->backward_f_code, pSyntaxInfNew_9->backward_f_code
	cmp	r2, #0	@ pSyntaxInfNew_9->backward_f_code,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L244	@
.L248:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ pSyntaxInfNew_9->forward_f_code, pSyntaxInfNew_9->forward_f_code
	cmp	r0, #0	@ pSyntaxInfNew_9->forward_f_code,
	orreq	r3, r3, #8	@ D.33632, D.33632,
	streq	r3, [r4, #2380]	@ D.33632, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldreqb	r2, [r1, #22]	@ zero_extendqisi2	@ D.33636, pSyntaxInfNew_9->picture_coding_type
	b	.L225	@
	.fnend
	.size	MP2_ProtocolPPSCheck, .-MP2_ProtocolPPSCheck
	.align	2
	.global	MP2_GetImageBuffer
	.type	MP2_GetImageBuffer, %function
MP2_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #69632	@ tmp247, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.33640,
	str	r0, [r4, #2464]	@ D.33640, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].CurFsID
	blt	.L264	@,
	mov	r1, r0	@, D.33640
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L265	@,
	ldr	r2, [r4, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].CurFsID
	mov	r0, #18	@,
	ldr	r1, .L267	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.33643, pLf_53->pstDecodeFs
	cmp	r2, #0	@ D.33643,
	beq	.L259	@,
	ldr	r3, [r5, #412]	@ D.33643, pLf_53->pstDispOutFs
	cmp	r3, #0	@ D.33643,
	beq	.L259	@,
	ldr	r1, [r5, #416]	@ D.33643, pLf_53->pstTfOutFs
	cmp	r1, #0	@ D.33643,
	beq	.L259	@,
	ldr	ip, [r1, #12]	@ _59->PhyAddr, _59->PhyAddr
	mov	r0, #18	@,
	ldr	r3, [r3, #12]	@ _58->PhyAddr, _58->PhyAddr
	ldr	r2, [r2, #12]	@ _57->PhyAddr, _57->PhyAddr
	ldr	r1, .L267+4	@,
	str	ip, [sp]	@ _59->PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.33639,
.L255:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L259:
	mov	r0, #1	@ D.33639,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L264:
	ldr	r1, .L267+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L253	@,
	ldr	r1, [r6, #192]	@, pImg_14->p_usrdat
	mov	r7, #0	@ tmp178,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #196]	@, pImg_14->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #200]	@, pImg_14->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #204]	@, pImg_14->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp178, pImg_14->p_usrdat
	str	r7, [r6, #196]	@ tmp178, pImg_14->p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #200]	@ tmp178, pImg_14->p_usrdat
	str	r7, [r6, #204]	@ tmp178, pImg_14->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, #2456]	@ tmp178, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	str	r7, [r4, #2460]	@ tmp178, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r7	@,
	bne	.L266	@,
.L253:
	add	r1, r5, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	mov	r5, #0	@ tmp226,
	add	r1, r1, #640	@,,
	str	r5, [r4, #2420]	@ tmp226, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.33639, tmp226
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L266:
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.33640, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.33640, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	b	.L253	@
.L265:
	movw	r2, #2011	@,
	ldr	r1, .L267+12	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.33639, pLf
	b	.L255	@
.L268:
	.align	2
.L267:
	.word	.LC20
	.word	.LC21
	.word	.LC18
	.word	.LC19
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
	add	r6, r0, #69632	@ tmp712, pCtx,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r6, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	ldr	r5, [r6, #3704]	@ pSyntaxInfNew, pCtx_18(D)->pSyntaxInfNew
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	ldr	r8, [r6, #3708]	@ pSyntaxInfOld, pCtx_18(D)->pSyntaxInfOld
	beq	.L335	@,
.L270:
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L271	@,
	ldr	r2, [r6, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r6, #2424]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	clz	r3, r2	@ D.33690, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	mov	r3, r3, lsr #5	@ D.33690, D.33690,
	str	r3, [r6, #2392]	@ D.33690, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r2, [r5, #156]	@ pSyntaxInfNew_20->temporal_reference, pSyntaxInfNew_20->temporal_reference
	cmp	r2, r1	@ pSyntaxInfNew_20->temporal_reference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	moveq	r3, #0	@, tmp404
	andne	r3, r3, #1	@,, tmp404, D.33690
	cmp	r3, #0	@ tmp404,
	bne	.L336	@,
.L331:
	add	r7, r4, #45056	@ tmp713, pCtx,
.L273:
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->picture_structure
	strb	r3, [r7, #273]	@ D.33689, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	ldr	r3, [r5, #156]	@ D.33688, pSyntaxInfNew_20->temporal_reference
	str	r3, [r6, #2424]	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	ldr	r3, [r5, #56]	@ pSyntaxInfNew_20->mb_width, pSyntaxInfNew_20->mb_width
	strh	r3, [r4, #160]	@ movhi	@ pSyntaxInfNew_20->mb_width, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicWidthInMb
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	ldr	r3, [r5, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	ldreq	r2, [r5, #64]	@ pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height_progressive_subtract1mb
	movne	r3, r3, lsr #1	@ D.33688, pSyntaxInfNew_20->mb_height,
	rsbeq	r3, r2, r3	@ tmp490, pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #156]	@ movhi	@ tmp490, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicHeightInMb
	ldr	r3, [r5, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #158]	@ movhi	@ pSyntaxInfNew_20->mb_height, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FrameHeightInMb
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->frame_pred_frame_dct
	strb	r3, [r4, #13]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FramePredFrameDct
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->picture_structure
	strb	r3, [r4, #11]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PictureStructure
	ldr	r2, [r6, #2392]	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	strb	r2, [r4, #12]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].SecondFieldFlag
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->concealment_motion_vectors
	strb	r3, [r4, #15]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].ConcealmentMotionVectors
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->picture_coding_type
	strb	r3, [r4, #8]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicCodingType
	ldr	r3, [r6, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	sub	r3, r3, #1	@ D.33690, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	clz	r3, r3	@ D.33690, D.33690
	mov	r3, r3, lsr #5	@ D.33690, D.33690,
	str	r3, [r4, #188]	@ D.33690, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mpeg1Flag
	cmp	r3, #0	@ D.33690,
	ldrneb	r3, [r5, #25]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->full_pel_backward_vector
	strneb	r3, [r4, #9]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1BwdmvFullPel
	ldrneb	r3, [r5, #23]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->full_pel_forward_vector
	strneb	r3, [r4, #10]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1FwdmvFullPel
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #20]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #21]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r5, #6]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #22]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #23]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->top_field_first
	strb	r3, [r4, #14]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TopFieldFirst
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->intra_dc_precision
	strb	r3, [r4, #19]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraDcPrecision
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->q_scale_type
	strb	r3, [r4, #18]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].QuantType
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->intra_vlc_format
	strb	r3, [r4, #17]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraVlcFormat
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->alternate_scan
	strb	r3, [r4, #16]	@ D.33689, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].AlternateScan
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r2, #0	@ D.33688,
	cmpne	r3, #3	@, pSyntaxInfNew_20->picture_structure,
	bne	.L282	@,
	mov	r1, #0	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetImageBuffer	@
	subs	r9, r0, #0	@ D.33687,
	beq	.L337	@,
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r10, r0, #0	@ pImg,
	beq	.L285	@,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	mvn	r8, #0	@ tmp548,
	mvn	r9, #0	@,
	ldr	r1, .L340	@,
	mov	r0, #29	@,
	ldrd	r2, [r3, #56]	@ D.33694, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #8]	@ D.33694, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.33694, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #16]	@ D.33694, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.33694, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #24]	@ D.33694, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.33688, _140->DispEnableFlag
	str	r3, [r10, #68]	@ D.33688, pImg_130->DispEnableFlag
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.33688, _143->DispFrameDistance
	str	r3, [r10, #72]	@ D.33688, pImg_130->DispFrameDistance
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.33688, _146->DistanceBeforeFirstFrame
	str	r3, [r10, #76]	@ D.33688, pImg_130->DistanceBeforeFirstFrame
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.33688, _149->GopNum
	str	r3, [r10, #80]	@ D.33688, pImg_130->GopNum
	ldr	r3, [r4]	@ D.33693, pCtx_18(D)->pstExtraData
	strd	r8, [r3, #56]	@ tmp548, D.33693,
	ldrd	r8, [r10, #16]	@ pImg_130->Usertag, pImg,
	ldrd	r2, [r10, #8]	@ pImg_130->PTS, pImg,
	strd	r8, [sp]	@ pImg_130->Usertag,
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	subs	r3, r3, #3	@ D.33690, pSyntaxInfNew_20->picture_structure,
	movne	r3, #1	@ D.33690,
	str	r3, [r10, #128]	@ D.33690, pImg_130->is_fld_save
.L285:
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L282	@,
	ldr	r3, [r6, #2420]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	ldr	r2, [r6, #2456]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum,
	ldr	r3, [r6, #2460]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	movne	r1, #2	@ D.33687,
	moveq	r1, #1	@ D.33687,
	cmp	r2, r3	@ D.33691, D.33691
	str	r1, [r6, #2420]	@ D.33687, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	beq	.L288	@,
	ldr	r1, .L340+4	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r6, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r6, #2460]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
.L288:
	ldr	r1, [r6, #2464]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r2, #1	@,
	str	r3, [r6, #2456]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	str	r1, [r6, #2460]	@ D.33691, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r6, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_RemovePmv	@
	ldr	r2, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r1, .L340+8	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L282:
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	mov	r5, r0	@ pCur,
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	mov	r8, r0	@ pFwd,
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r5, #0	@ pCur,
	cmpne	r8, #0	@, pFwd,
	moveq	r3, #1	@ tmp643,
	movne	r3, #0	@ tmp643,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp649, tmp643
	mov	r10, r0	@ pBwd,
	cmp	r3, #0	@ tmp649,
	bne	.L338	@,
	ldr	r2, [r5, #408]	@ D.33695, pCur_184->pstDecodeFs
	cmp	r2, #0	@ D.33695,
	beq	.L290	@,
	ldr	r3, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	cmp	r3, #0	@ pCur_184->pstTfOutFs,
	beq	.L290	@,
	ldr	r3, [r5, #412]	@ pCur_184->pstDispOutFs, pCur_184->pstDispOutFs
	cmp	r3, #0	@ pCur_184->pstDispOutFs,
	beq	.L290	@,
	ldr	r3, [r0, #408]	@ D.33695, pBwd_192->pstDecodeFs
	ldr	r1, .L340+12	@,
	cmp	r3, #0	@ D.33695,
	ldrne	lr, [r3, #12]	@ D.33687, _199->PhyAddr
	ldreq	lr, [r2, #12]	@ D.33687, _196->PhyAddr
	str	lr, [r4, #200]	@ D.33687, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefPhyAddr
	ldr	r3, [r8, #408]	@ D.33695, pFwd_188->pstDecodeFs
	cmp	r3, #0	@ D.33695,
	ldreq	r3, [r5, #408]	@ pCur_184->pstDecodeFs, pCur_184->pstDecodeFs
	ldr	ip, [r3, #12]	@ D.33687,
	str	ip, [r4, #204]	@ D.33687, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefPhyAddr
	ldr	r3, [r5, #408]	@ pCur_184->pstDecodeFs, pCur_184->pstDecodeFs
	ldr	r2, [r3, #12]	@ D.33688, _212->PhyAddr
	str	r2, [r4, #208]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].CurPicPhyAddr
	ldr	r6, [r5, #420]	@ D.33688, pCur_184->PmvAddr
	str	r6, [r4, #248]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PmvColmbPhyAddr
	ldr	r3, [r0, #416]	@ D.33695, pBwd_192->pstTfOutFs
	mov	r0, #13	@,
	cmp	r3, #0	@ D.33695,
	ldreq	r3, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.33687,
	str	r3, [r4, #220]	@ D.33687, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfBwdPhyAddr
	ldr	r3, [r8, #416]	@ D.33695, pFwd_188->pstTfOutFs
	cmp	r3, #0	@ D.33695,
	ldreq	r3, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.33687,
	str	r3, [r4, #224]	@ D.33687, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfFwdPhyAddr
	ldr	r3, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	ldr	r3, [r3, #12]	@ _233->PhyAddr, _233->PhyAddr
	str	r3, [r4, #228]	@ _233->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfCurPhyAddr
	ldr	r3, [r5, #412]	@ pCur_184->pstDispOutFs, pCur_184->pstDispOutFs
	ldr	r3, [r3, #12]	@ D.33688, _237->PhyAddr
	str	r3, [r4, #232]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DispFramePhyAddr
	ldr	r9, [r10, #136]	@ D.33688, pBwd_192->stDispImg.is_fld_save
	str	r9, [r4, #212]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefIsFldSave
	ldr	r8, [r8, #136]	@ D.33688, pFwd_188->stDispImg.is_fld_save
	str	r8, [r4, #216]	@ D.33688, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefIsFldSave
	ldr	r8, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	ldr	r8, [r8, #12]	@ _245->PhyAddr, _245->PhyAddr
	str	r6, [sp, #8]	@ D.33688,
	str	lr, [sp, #4]	@ D.33687,
	str	r8, [r7, #264]	@ _245->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DnrMbInfoStAddr
	str	ip, [sp]	@ D.33687,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #412]	@ pCur_184->pstDispOutFs, pCur_184->pstDispOutFs
	add	r1, r4, #71680	@ tmp704, pCtx,
	add	r0, r4, #87	@ ivtmp.128, pCtx,
	add	r3, r1, #600	@ ivtmp.119, tmp704,
	add	ip, r4, #23	@ ivtmp.143, pCtx,
	ldr	lr, [r2, #20]	@ _250->Stride, _250->Stride
	add	r1, r1, #856	@ ivtmp.136, tmp704,
	mov	r2, #0	@ i,
	str	lr, [r4, #236]	@ _250->Stride, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].VahbStride
	ldr	lr, [r5, #412]	@ pCur_184->pstDispOutFs, pCur_184->pstDispOutFs
	ldr	lr, [lr, #32]	@ _254->ChromOffset, _254->ChromOffset
	str	lr, [r4, #240]	@ _254->ChromOffset, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].uv_offset
.L300:
	ldr	lr, [r3, #4]!	@ MEM[base: _311, offset: 0B], MEM[base: _311, offset: 0B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, #64	@ i,
	strb	lr, [r0, #1]!	@ MEM[base: _311, offset: 0B], MEM[base: _312, offset: 0B]
	ldr	lr, [r1, #4]!	@ MEM[base: _313, offset: 0B], MEM[base: _313, offset: 0B]
	strb	lr, [ip, #1]!	@ MEM[base: _313, offset: 0B], MEM[base: _314, offset: 0B]
	bne	.L300	@,
	mov	r0, r4	@, pCtx
	mov	r9, #1	@ D.33687,
	bl	MP2_EstimatePicQp	@
	strb	r0, [r4, #152]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].EstmatedPicQp
	mov	r0, r9	@, D.33687
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L337:
	ldr	r2, [r6, #2388]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Frame_Cnt
	ldr	r1, .L340+16	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@, D.33687
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L271:
	add	r7, r4, #45056	@ tmp713, pCtx,
	ldrb	r1, [r7, #273]	@ zero_extendqisi2	@ D.33689, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	cmp	r1, #3	@ D.33689,
	beq	.L276	@,
	ldr	r3, [r6, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field,
	beq	.L339	@,
.L276:
	mov	r3, #1	@ tmp473,
	str	r3, [r6, #2392]	@ tmp473, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	b	.L273	@
.L335:
	ldrb	r2, [r5, #26]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->backward_f_code
	ldrb	r3, [r5, #24]	@ zero_extendqisi2	@ D.33689, pSyntaxInfNew_20->forward_f_code
	strb	r2, [r5, #7]	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r2, [r5, #6]	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r5, #5]	@ D.33689, pSyntaxInfNew_20->f_code
	strb	r3, [r5, #4]	@ D.33689, pSyntaxInfNew_20->f_code
	b	.L270	@
.L338:
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r9, #0	@ D.33687,
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	stmia	sp, {r8, r10}	@,,
	mov	r3, r5	@, pCur
	movw	r2, #1230	@,
	ldr	r1, .L340+20	@,
	mov	r0, r9	@, D.33687
	bl	dprint_vfmw	@
	mov	r0, r9	@, D.33687
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L339:
	ldr	r2, [r6, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Frame_Cnt
	mov	r0, #1	@,
	str	r1, [sp]	@ D.33689,
	ldr	r1, .L340+24	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L276	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	ldrne	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	orrne	r3, r3, #192	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	strne	r3, [r6, #2380]	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L276	@
.L290:
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	mov	r9, #0	@ D.33687,
	bl	FSP_ClearLogicFs	@
	ldr	r1, [r5, #412]	@ pCur_184->pstDispOutFs, pCur_184->pstDispOutFs
	ldr	r3, [r6, #2464]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r0, r9	@, D.33687
	ldr	r2, [r6, #2456]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	str	r1, [sp, #12]	@ pCur_184->pstDispOutFs,
	ldr	ip, [r5, #416]	@ pCur_184->pstTfOutFs, pCur_184->pstTfOutFs
	ldr	lr, [r6, #2460]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	ldr	r1, .L340+28	@,
	str	ip, [sp, #8]	@ pCur_184->pstTfOutFs,
	ldr	ip, [r5, #408]	@ pCur_184->pstDecodeFs, pCur_184->pstDecodeFs
	str	lr, [sp]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID,
	str	ip, [sp, #4]	@ pCur_184->pstDecodeFs,
	bl	dprint_vfmw	@
	mov	r0, r9	@, D.33687
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L336:
	ldr	r2, [r6, #2388]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Frame_Cnt
	mov	r0, #1	@,
	ldr	r1, .L340+32	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp415,
	mov	r2, #1	@,
	str	r3, [r6, #2392]	@ tmp415, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r6, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L331	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	beq	.L331	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	add	r7, r4, #45056	@ tmp713, pCtx,
	orr	r3, r3, #192	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33688, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L273	@
.L341:
	.align	2
.L340:
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC30
	.word	.LC24
	.word	.LC28
	.word	.LC23
	.word	.LC29
	.word	.LC22
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
	ldr	lr, [r5, #2344]	@ D.33711, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.IsLastSeg,
	ldr	r3, [r5, #2648]	@ D.33712, MEM[(struct BS *)pCtx_2(D) + 72256B].TotalPos
	ldr	ip, [r5, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	add	r1, r3, #7	@ tmp172, D.33712,
	beq	.L346	@,
	cmp	r3, #0	@ D.33712,
	add	r2, lr, r3, lsr #3	@ D.33711, D.33711, D.33712,
	ldr	r6, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	bic	r2, r2, #3	@ D.33711, D.33711,
	movge	r1, r3	@ D.33712, D.33712
	add	r3, r3, lr, lsl #3	@ bs_offset, D.33712, D.33711,
	and	r3, r3, #31	@ D.33711, bs_offset,
	add	r1, ip, r1, asr #3	@ D.33712, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.33712,
	str	r1, [r5, #2328]	@ D.33712, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	bic	r6, r6, #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r3, [r4, #172]	@ D.33711, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	str	r2, [r4, #164]	@ D.33711, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	str	r6, [r4, #168]	@ stream_base_addr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	str	r0, [r4, #180]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldr	r3, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	and	r3, r3, #3	@ D.33711, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	mov	r3, r3, asl #3	@ D.33711, D.33711,
	str	r3, [r4, #176]	@ D.33711, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	ldr	r3, [r5, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.33712, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #184]	@ D.33712, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L346:
	cmp	r3, #0	@ D.33712,
	add	r2, lr, r3, lsr #3	@ D.33711, D.33711, D.33712,
	bic	r2, r2, #3	@ stream_base_addr, D.33711,
	movge	r1, r3	@ D.33712, D.33712
	add	r3, r3, lr, lsl #3	@ bs_offset, D.33712, D.33711,
	and	r3, r3, #31	@ D.33711, bs_offset,
	add	r1, ip, r1, asr #3	@ D.33712, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.33712,
	str	r1, [r5, #2328]	@ D.33712, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	str	r3, [r4, #172]	@ D.33711, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
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
	ldr	r2, [r4]	@ D.33716, pCtx_5(D)->pstExtraData
	add	r1, r4, #45056	@ tmp144, pCtx,
	add	r3, r4, #69632	@ tmp197, pCtx,
	ldr	r0, [r2, #512]	@ D.33717, _7->s32Compress_en
	str	r0, [r1, #268]	@ D.33717, pCtx_5(D)->Mp2DecParam.Compress_en
	ldr	r1, [r3, #3704]	@ D.33718, pCtx_5(D)->pSyntaxInfNew
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ D.33719, _10->picture_coding_type
	cmp	r0, #3	@ D.33719,
	beq	.L366	@,
	cmp	r0, #2	@ D.33719,
	moveq	r0, #1	@ tmp163,
	streq	r0, [r3, #4076]	@ tmp163, pCtx_5(D)->PPicFound
.L349:
	add	ip, r4, #8	@ D.33722, pCtx,
	str	ip, [r4, #4]	@ D.33722, pCtx_5(D)->pMp2DecParam
	ldr	r0, [r2, #708]	@ D.33717, _7->stDisParams.s32Mode
	cmp	r0, #1	@ D.33717,
	beq	.L367	@,
	cmp	r0, #2	@ D.33717,
	beq	.L368	@,
.L352:
	ldr	r2, [r3, #2380]	@ pCtx_5(D)->CodecInfo.StreamIntegrality, pCtx_5(D)->CodecInfo.StreamIntegrality
	bic	r2, r2, #16252928	@ D.33720, pCtx_5(D)->CodecInfo.StreamIntegrality,
	str	r2, [r3, #2380]	@ D.33720, pCtx_5(D)->CodecInfo.StreamIntegrality
	ldrb	r5, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r5, #1	@ _10->picture_coding_type,
	movne	r0, #1	@ D.33715,
	beq	.L369	@,
.L350:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L369:
	ldr	r2, .L370	@ tmp185,
	ldr	r6, [r2]	@ D.33723, g_event_report
	cmp	r6, #0	@ D.33723,
	moveq	r0, r5	@ D.33715, _10->picture_coding_type
	beq	.L350	@,
	ldr	ip, [r4, #180]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	r2, sp, #8	@ tmp192,,
	ldr	lr, [r4, #184]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	mov	r1, #20	@,
	ldr	r0, [r3, #4064]	@, pCtx_5(D)->ChanID
	add	r3, ip, lr	@ D.33717, pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	ip, r3, #7	@ tmp190, D.33717,
	cmp	r3, #0	@ D.33717,
	movlt	r3, ip	@ D.33717, tmp190
	mov	r3, r3, asr #3	@ D.33717, D.33717,
	str	r3, [r2, #-4]!	@ D.33717, para
	blx	r6	@ D.33723
	mov	r0, r5	@ D.33715, _10->picture_coding_type
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L366:
	ldr	r0, [r3, #4076]	@ pCtx_5(D)->PPicFound, pCtx_5(D)->PPicFound
	cmp	r0, #0	@ pCtx_5(D)->PPicFound,
	bne	.L349	@,
	ldr	ip, [r3, #2420]	@ pCtx_5(D)->CodecInfo.RefNum, pCtx_5(D)->CodecInfo.RefNum
	cmp	ip, #2	@ pCtx_5(D)->CodecInfo.RefNum,
	beq	.L349	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ _10->picture_structure, _10->picture_structure
	cmp	r2, #3	@ _10->picture_structure,
	ldrne	r2, [r3, #2392]	@ pCtx_5(D)->CodecInfo.Second_Field, pCtx_5(D)->CodecInfo.Second_Field
	clzne	r2, r2	@ D.33721, pCtx_5(D)->CodecInfo.Second_Field
	movne	r2, r2, lsr #5	@ D.33721, D.33721,
	strne	r2, [r3, #2392]	@ D.33721, pCtx_5(D)->CodecInfo.Second_Field
	b	.L350	@
.L367:
	cmp	ip, #0	@ D.33722,
	beq	.L352	@,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r2, #3	@ _10->picture_coding_type,
	moveq	r0, #0	@ tmp165,
	streq	r0, [r4, #4]	@ tmp165, pCtx_5(D)->pMp2DecParam
	bne	.L352	@,
	b	.L350	@
.L368:
	ldr	r0, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	cmp	ip, #0	@ D.33722,
	cmpne	r0, #0	@, _7->stDisParams.s32DisNums,
	ble	.L352	@,
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r0, #3	@ _10->picture_coding_type,
	bne	.L352	@,
	mov	r0, #0	@ tmp175,
	str	r0, [r4, #4]	@ tmp175, pCtx_5(D)->pMp2DecParam
	ldr	r3, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.33717, _7->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.33717, _7->stDisParams.s32DisNums
	b	.L350	@
.L371:
	.align	2
.L370:
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
	ldr	r3, [r0]	@ D.33727, pCtx_3(D)->pstExtraData
	ldr	r0, [r2, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r0, #48]	@ D.33728, pSyntaxInfNew_5->horizontal_size
	str	r1, [r3, #400]	@ D.33728, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_width
	ldr	r1, [r0, #52]	@ D.33728, pSyntaxInfNew_5->vertical_size
	str	r1, [r3, #404]	@ D.33728, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_height
	ldr	r1, [r2, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r1, #84]	@ _30->aspect_ratio_information, _30->aspect_ratio_information
	sub	r1, r1, #1	@ D.33728, _30->aspect_ratio_information,
	cmp	r1, #2	@ D.33728,
	ldrls	ip, .L377	@ tmp136,
	movhi	r1, #0	@ D.33731,
	addls	r1, ip, r1, lsl #2	@ tmp137, tmp136, D.33728,
	ldrls	r1, [r1, #148]	@ D.33731, CSWTCH.44
	str	r1, [r3, #408]	@ D.33731, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].aspect_ratio
	mov	r1, #0	@ tmp139,
	str	r1, [r3, #412]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].scan_type
	str	r1, [r3, #416]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].video_format
	ldr	ip, [r0, #72]	@ D.33728, pSyntaxInfNew_5->frame_rate
	str	r1, [r3, #424]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].bit_rate
	str	ip, [r3, #420]	@ D.33728, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].frame_rate
	ldr	ip, [r2, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	sub	ip, ip, #1	@ D.33729, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	clz	ip, ip	@ D.33729, D.33729
	mov	ip, ip, lsr #5	@ D.33729, D.33729,
	str	ip, [r3, #428]	@ D.33729, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].sub_video_standard
	ldr	ip, [r0, #40]	@ D.33728, pSyntaxInfNew_5->profile
	str	ip, [r3, #432]	@ D.33728, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].profile
	ldr	r0, [r0, #44]	@ D.33728, pSyntaxInfNew_5->level
	str	r0, [r3, #436]	@ D.33728, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].level
	ldr	r0, [r2, #4068]	@ D.33726, pCtx_3(D)->numTotalFrame
	str	r0, [r3, #440]	@ D.33726, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].total_frame_num
	ldr	r0, [r2, #4068]	@ D.33726, pCtx_3(D)->numTotalFrame
	ldr	r2, [r2, #4072]	@ D.33726, pCtx_3(D)->numOutputFrame
	cmp	r0, r2	@ D.33726, D.33726
	rsbge	r1, r2, r0	@ D.33726, D.33726, D.33726
	str	r1, [r3, #444]	@ D.33726, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].error_frame_num
	bx	lr	@
.L378:
	.align	2
.L377:
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
	add	r9, r0, #71680	@ tmp423, pCtx,
	add	r5, r9, #576	@ pBs, tmp423,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r8, r0	@ pCtx, pCtx
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r7, r0, #7	@ tmp196, D.33762,
	cmp	r0, #0	@ D.33762,
	movlt	r0, r7	@ D.33762, tmp196
	mov	r7, r0, asr #3	@ RemainByte, D.33762,
	cmp	r7, #0	@ RemainByte,
	ble	.L399	@,
	mov	r6, #0	@ cnt,
	ldr	r10, .L418	@ tmp432,
	mov	r4, r6	@ i, cnt
	b	.L384	@
.L416:
	bl	BsGet	@
	add	r4, r4, #1	@ i, i,
	cmp	r4, r7	@ i, RemainByte
	strb	r0, [r10, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
	beq	.L380	@,
.L384:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.33763,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.33763,
	beq	.L381	@,
	cmp	r6, #1024	@ cnt,
	blt	.L416	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	add	r4, r4, #1	@ i, i,
	bl	BsGet	@
	cmp	r4, r7	@ i, RemainByte
	bne	.L384	@,
.L380:
	add	r7, r8, #69632	@ tmp425, pCtx,
	movw	r3, #2332	@ tmp414,
	ldrsb	r10, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r10, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L396	@,
.L415:
	mov	r4, #0	@ D.33759,
.L385:
	ldr	r5, [r7, #2412]	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.33762,
	ble	.L398	@,
.L397:
	add	r5, r9, #344	@ ivtmp.164, tmp423,
	add	r9, r9, #360	@ D.33758, tmp423,
	mov	r10, #0	@ tmp426,
.L389:
	ldr	r1, [r5, #4]!	@, MEM[base: _177, offset: 0B]
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r5, r9	@ ivtmp.164, D.33758
	str	r10, [r5]	@ tmp426, MEM[base: _177, offset: 0B]
	mov	r3, #0	@ tmp315,
	bne	.L389	@,
	mov	r5, r3	@ D.33760, tmp315
	str	r3, [r7, #2412]	@ tmp315, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L398:
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	add	r5, r8, r5, lsl #2	@ D.33769, pCtx, D.33760,
	bl	GetUsd	@
	add	r5, r5, #69632	@ tmp424, D.33769,
	str	r0, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r7, #2412]	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r8, r2, lsl #2	@ tmp334, pCtx, D.33762,
	add	r3, r3, #71680	@ tmp335, tmp334,
	add	r3, r3, #72	@ tmp335, tmp335,
	ldr	r3, [r3, #276]	@ tmp337, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].pUsrDatArray
	cmp	r3, #0	@ tmp337,
	beq	.L390	@,
	ldr	r3, [r8]	@ pCtx_24(D)->pstExtraData, pCtx_24(D)->pstExtraData
	add	r0, r0, #1056	@ tmp340, D.33768,
	ldr	r1, .L418	@,
	ldrd	r2, [r3, #56]	@ D.33771, pCtx_24(D)->pstExtraData,
	strd	r2, [r0]	@ D.33771, _101->PTS
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r7, #2384]	@ D.33763, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].SeqCnt
	str	r2, [r3, #1040]	@ D.33763, _108->seq_cnt
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	str	r6, [r3, #1048]	@ cnt, _111->data_size
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrb	r2, [r2, #22]	@ zero_extendqisi2	@ D.33773, _114->picture_coding_type
	strb	r2, [r3, #1024]	@ D.33773, _113->pic_coding_type
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r7, #4068]	@ pCtx_24(D)->numTotalFrame, pCtx_24(D)->numTotalFrame
	str	r2, [r3, #1028]	@ pCtx_24(D)->numTotalFrame, _117->pic_num_count
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2	@ D.33773, _122->top_field_first
	strb	r2, [r3, #1025]	@ D.33773, _121->top_field_first
	ldr	r3, [r7, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality
	tst	r3, #524288	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality,
	ldr	r3, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	movne	r2, #3	@ tmp374,
	moveq	r2, #1	@ tmp377,
	str	r2, [r3, #1036]	@ tmp377,
	ldr	r0, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r0, #1048]	@ D.33762, _131->data_size
	cmp	r2, #1024	@ D.33762,
	movgt	r3, #1024	@ tmp380,
	strgt	r3, [r0, #1048]	@ tmp380, _131->data_size
	ldrgt	r0, [r5, #2396]	@ D.33768, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrgt	r2, [r0, #1048]	@ D.33762, _156->data_size
	bl	memcpy	@
	ldr	r3, .L418+4	@ tmp388,
	ldr	r3, [r3]	@ D.33775, g_event_report
	cmp	r3, #0	@ D.33775,
	beq	.L394	@,
	ldr	ip, [r5, #2396]	@ MEM[(struct MP2CODECINF *)_153 + 72028B], MEM[(struct MP2CODECINF *)_153 + 72028B]
	add	r2, sp, #8	@ tmp392,,
	mov	r1, #6	@,
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	str	ip, [r2, #-4]!	@ MEM[(struct MP2CODECINF *)_153 + 72028B], para
	blx	r3	@ D.33775
.L394:
	ldr	r3, [r7, #2412]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r3, #1	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum,
	str	r3, [r7, #2412]	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L413:
	mov	r0, r4	@, D.33759
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L396:
	movw	r3, #2333	@ tmp207,
	ldrsb	r3, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L402	@,
	ldr	r4, [r7, #2356]	@ D.33759, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	cmp	r4, #0	@ D.33759,
	beq	.L385	@,
	ldr	r1, .L418+8	@,
	mov	r0, r10	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	bl	dprint_vfmw	@
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r2, #3	@,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.33767, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, D.33767
	mov	r4, #1	@ tmp267,
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.33765, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r10, [r7, #2333]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	add	r2, r2, #3	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	mov	r1, r3	@, D.33765
	str	r2, [r7, #2352]	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2336]	@ D.33765, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.33763, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r10, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.33763, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	str	r10, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	str	r10, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	strb	r4, [r7, #2332]	@ tmp267, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	bl	BsInit	@
	strb	r4, [r7, #2333]	@ tmp267, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	strb	r10, [r7, #2332]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	fp, r0, #7	@ tmp303, D.33762,
	cmp	r0, #0	@ D.33762,
	movlt	r0, fp	@ D.33762, tmp303
	mov	fp, r0, asr #3	@ tmp304, D.33762,
	sub	fp, fp, #3	@ RemainByte, tmp304,
	cmp	fp, #0	@ RemainByte,
	ble	.L401	@,
	ldr	r4, .L418	@ tmp429,
	b	.L388	@
.L417:
	bl	BsGet	@
	strb	r0, [r4, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
.L387:
	add	r10, r10, #1	@ i, i,
	cmp	r10, fp	@ i, RemainByte
	beq	.L415	@,
.L388:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.33763,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.33763,
	beq	.L402	@,
	cmp	r6, #1024	@ cnt,
	blt	.L417	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	b	.L387	@
.L381:
	add	r7, r8, #69632	@ tmp425, pCtx,
	mov	r4, r3	@ D.33759, D.33763
	ldr	r5, [r7, #2412]	@ D.33762, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.33762,
	bgt	.L397	@,
	b	.L398	@
.L402:
	mov	r4, r3	@ D.33759, D.33763
	b	.L385	@
.L390:
	mov	r0, r3	@, tmp337
	ldr	r1, .L418+12	@,
	bl	dprint_vfmw	@
	b	.L413	@
.L399:
	mov	r6, #0	@ cnt,
	b	.L380	@
.L401:
	mov	r4, r10	@ D.33759, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	b	.L385	@
.L419:
	.align	2
.L418:
	.word	.LANCHOR1
	.word	g_event_report
	.word	.LC31
	.word	.LC32
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
	cmp	r0, #0	@ D.33790,
	add	r3, r0, #7	@ tmp162, D.33790,
	movge	r1, r0	@ D.33790, D.33790
	movlt	r1, r3	@ D.33790, tmp162
	mov	r1, r1, asr #3	@ tmp163, D.33790,
	cmp	r1, #4	@ tmp163,
	movle	r1, #0	@ D.33790,
	bgt	.L446	@,
.L421:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	mov	r6, r0	@ D.33790,
	add	r0, r0, #7	@ tmp165, D.33790,
	cmp	r6, #0	@ D.33790,
	movlt	r6, r0	@ D.33790, tmp165
	mov	r6, r6, asr #3	@ tmp166, D.33790,
	sub	r6, r6, #3	@ remain_byte, tmp166,
	cmp	r6, #0	@ remain_byte,
	movgt	r4, #0	@ i,
	bgt	.L427	@,
	b	.L428	@
.L425:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L428	@,
.L427:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L425	@,
.L430:
	mov	r0, #1	@ D.33791,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L428:
	add	r7, r7, #69632	@ tmp171, pCtx,
	movw	r3, #2332	@ tmp174,
	ldrsb	r4, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r4, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	bne	.L424	@,
	ldrb	r3, [r7, #2333]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L424	@,
	ldr	r3, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	beq	.L424	@,
	ldr	r1, .L449	@,
	mov	r0, #7	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r2, #3	@,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.33796, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, D.33796
	mov	r6, #1	@ tmp242,
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.33794, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r6, [r7, #2332]	@ tmp242, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r1, r3	@, D.33794
	add	r2, r2, #3	@ D.33790, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r7, #2336]	@ D.33794, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.33797, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r2, [r7, #2352]	@ D.33790, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.33797, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	strb	r4, [r7, #2333]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	str	r4, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r4, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	str	r4, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	bl	BsInit	@
	strb	r6, [r7, #2333]	@ tmp242, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	strb	r4, [r7, #2332]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r0, r5	@, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsGetNextBytePtr	@
	mov	r6, r0	@ pcode,
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@ D.33790,
	add	r1, r0, #7	@ tmp278, D.33790,
	movge	r3, r0	@ D.33790, D.33790
	movlt	r3, r1	@ D.33790, tmp278
	mov	r1, r3, asr #3	@ tmp279, D.33790,
	cmp	r1, #4	@ tmp279,
	movle	r1, r4	@ D.33790, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	bgt	.L447	@,
.L429:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp281, D.33790,
	cmp	r0, #0	@ D.33790,
	movlt	r0, r6	@ D.33790, tmp281
	mov	r6, r0, asr #3	@ tmp282, D.33790,
	sub	r6, r6, #3	@ remain_byte, tmp282,
	cmp	r6, #0	@ remain_byte,
	ble	.L424	@,
	mov	r4, #0	@ i,
	b	.L431	@
.L448:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L424	@,
.L431:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L448	@,
	b	.L430	@
.L424:
	mov	r0, #0	@ D.33791,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L446:
	mov	r0, r4	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.33790,,
	b	.L421	@
.L447:
	mov	r0, r6	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.33790,,
	b	.L429	@
.L450:
	.align	2
.L449:
	.word	.LC31
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
	orreq	r3, r3, #1	@ D.33859, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality,
	streq	r3, [r4, #2380]	@ D.33859, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality
.L452:
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
	cmp	r0, #1	@ D.33858,
	str	r0, [r8, #76]	@ D.33858, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L459	@,
	ldr	r2, .L467	@ ivtmp.230,
	add	r3, r7, #600	@ ivtmp.235, tmp211,
	add	r0, r7, #856	@ D.33857, tmp211,
.L455:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2	@ MEM[base: _46, offset: 0B], MEM[base: _46, offset: 0B]
	str	r1, [r3, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.235, D.33857
	bne	.L455	@,
.L454:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33858,
	str	r0, [r8, #80]	@ D.33858, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	beq	.L460	@,
	add	r5, r5, #72704	@ D.33857, pCtx,
	add	r3, r7, #856	@ ivtmp.206, tmp211,
	add	r5, r5, #88	@ D.33857, D.33857,
	mov	r2, #16	@ tmp213,
.L457:
	str	r2, [r3, #4]!	@ tmp213, MEM[base: _53, offset: 0B]
	cmp	r3, r5	@ ivtmp.206, D.33857
	bne	.L457	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L459:
	ldr	r10, .L467+4	@ ivtmp.220,
	add	r9, r10, #64	@ D.33857, ivtmp.220,
.L453:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r10, #1]!	@ zero_extendqisi2	@ D.33858, MEM[base: _82, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp187, D.33858,
	cmp	r10, r9	@ ivtmp.220, D.33857
	add	r3, r3, #150	@ tmp187, tmp187,
	add	r3, r5, r3, lsl #2	@ tmp188, pCtx, tmp187,
	str	r0, [r3, #4]	@, pCtx_12(D)->intra_quantizer_matrix
	bne	.L453	@,
	b	.L454	@
.L460:
	ldr	r7, .L467+4	@ ivtmp.196,
	add	r8, r7, #64	@ D.33857, ivtmp.196,
.L456:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33858, MEM[base: _55, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp192, D.33858,
	cmp	r7, r8	@ ivtmp.196, D.33857
	add	r3, r3, #214	@ tmp192, tmp192,
	add	r3, r5, r3, lsl #2	@ tmp193, pCtx, tmp192,
	str	r0, [r3, #4]	@, pCtx_12(D)->non_intra_quantizer_matrix
	bne	.L456	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L468:
	.align	2
.L467:
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
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	str	r2, [r6, #2376]	@ tmp204, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	mov	r1, #8	@,
	orr	r3, r3, #131072	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldr	r5, [r6, #3704]	@ pSyntaxInfNew, pCtx_8(D)->pSyntaxInfNew
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #124]	@, pSyntaxInfNew_11->profile_and_level_indication
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #27]	@, pSyntaxInfNew_11->progressive_sequence
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #28]	@, pSyntaxInfNew_11->chroma_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	mov	r10, r0	@ D.33872,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	r8, r0	@ D.33872,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.33872,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L472	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	orr	r3, r3, #2	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L472:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r9, r0	@ vbv_buffer_size_extension,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #2	@,
	strb	r0, [r5, #29]	@, pSyntaxInfNew_11->low_delay
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #5	@,
	strb	r0, [r5, #30]	@, pSyntaxInfNew_11->frame_rate_extension_n
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r3, [r5, #30]	@ zero_extendqisi2	@ D.33872, pSyntaxInfNew_11->frame_rate_extension_n
	uxtb	r1, r0	@ D.33872, D.33872
	strb	r0, [r5, #31]	@ D.33872, pSyntaxInfNew_11->frame_rate_extension_d
	add	r1, r1, #1	@, D.33872,
	add	r0, r3, #1	@, D.33872,
	bl	__aeabi_idiv	@
	ldr	r1, [r5, #88]	@ pSyntaxInfNew_11->frame_rate_code, pSyntaxInfNew_11->frame_rate_code
	ldr	r2, .L497	@ tmp228,
	ldr	r3, [r5, #124]	@ D.33871, pSyntaxInfNew_11->profile_and_level_indication
	add	r2, r2, r1, lsl #2	@ tmp230, tmp228, pSyntaxInfNew_11->frame_rate_code,
	tst	r3, #128	@ D.33871,
	ldr	r2, [r2, #160]	@ tmp233, frame_rate_Table
	mul	r0, r2, r0	@ D.33871, tmp233,
	str	r0, [r5, #72]	@ D.33871, pSyntaxInfNew_11->frame_rate
	bne	.L496	@,
	ubfx	r2, r3, #4, #3	@ D.33871, D.33871,,
	and	r3, r3, #15	@ D.33871, D.33871,
	str	r2, [r5, #40]	@ D.33871, pSyntaxInfNew_11->profile
	str	r3, [r5, #44]	@ D.33871, pSyntaxInfNew_11->level
.L475:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_11->horizontal_size, pSyntaxInfNew_11->horizontal_size
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_11->vertical_size, pSyntaxInfNew_11->vertical_size
	ubfx	r3, r3, #0, #12	@ D.33871, pSyntaxInfNew_11->horizontal_size,,
	ubfx	r2, r2, #0, #12	@ D.33871, pSyntaxInfNew_11->vertical_size,,
	orr	r3, r3, r10, asl #12	@ D.33871, D.33871, D.33872,
	orr	r8, r2, r8, asl #12	@ D.33871, D.33871, D.33872,
	str	r3, [r5, #48]	@ D.33871, pSyntaxInfNew_11->horizontal_size
	cmp	r8, #0	@ D.33871,
	cmpne	r3, #0	@, D.33871,
	str	r8, [r5, #52]	@ D.33871, pSyntaxInfNew_11->vertical_size
	ldreq	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	orreq	r3, r3, #1	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	streq	r3, [r6, #2380]	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldreq	r3, [r5, #48]	@ D.33871, pSyntaxInfNew_11->horizontal_size
	cmp	r3, #8192	@ D.33871,
	bhi	.L477	@,
	ldr	r3, [r5, #52]	@ pSyntaxInfNew_11->vertical_size, pSyntaxInfNew_11->vertical_size
	cmp	r3, #8192	@ pSyntaxInfNew_11->vertical_size,
	bls	.L478	@,
.L477:
	ldr	r2, .L497+4	@ tmp275,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.33875, g_event_report
	orr	r3, r3, #1	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33871, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.33875,
	beq	.L478	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	ip	@ D.33875
.L478:
	ldr	r3, [r5, #92]	@ pSyntaxInfNew_11->bit_rate_value, pSyntaxInfNew_11->bit_rate_value
	mov	r1, #400	@ tmp282,
	ldr	r2, [r5, #40]	@ D.33876, pSyntaxInfNew_11->profile
	add	r7, r3, r7, lsl #18	@ D.33871, pSyntaxInfNew_11->bit_rate_value, D.33872,
	str	r7, [r5, #92]	@ D.33871, pSyntaxInfNew_11->bit_rate_value
	sub	r0, r2, #4	@ D.33871, D.33876,
	ldr	r3, [r5, #96]	@ pSyntaxInfNew_11->vbv_buffer_size, pSyntaxInfNew_11->vbv_buffer_size
	mul	r7, r1, r7	@ D.33871, tmp282, D.33871
	cmp	r0, #1	@ D.33871,
	add	r9, r3, r9, lsl #10	@ D.33871, pSyntaxInfNew_11->vbv_buffer_size, vbv_buffer_size_extension,
	str	r9, [r5, #96]	@ D.33871, pSyntaxInfNew_11->vbv_buffer_size
	str	r7, [r5, #68]	@ D.33871, pSyntaxInfNew_11->bit_rate
	bls	.L480	@,
	ldr	r3, .L497+4	@ tmp287,
	ldr	r3, [r3]	@ D.33875, g_event_report
	cmp	r3, #0	@ D.33875,
	beq	.L481	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	r3	@ D.33875
	ldr	r2, [r5, #40]	@ D.33876, pSyntaxInfNew_11->profile
.L481:
	ldr	r1, .L497+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L480:
	ldr	r2, [r5, #44]	@ D.33876, pSyntaxInfNew_11->level
	sub	r3, r2, #4	@ D.33871, D.33876,
	cmp	r3, #6	@ D.33871,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L497+4	@ tmp293,
	ldr	r3, [r3]	@ D.33875, g_event_report
	cmp	r3, #0	@ D.33875,
	beq	.L482	@,
	mov	r2, #0	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	mov	r1, #102	@,
	blx	r3	@ D.33875
	ldr	r2, [r5, #44]	@ D.33876, pSyntaxInfNew_11->level
.L482:
	ldr	r1, .L497+12	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L496:
	and	r3, r3, #15	@ D.33871, D.33871,
	cmp	r3, #5	@ D.33871,
	moveq	r2, #133	@ tmp236,
	moveq	r3, #8	@ tmp237,
	streq	r2, [r5, #40]	@ tmp236, pSyntaxInfNew_11->profile
	streq	r3, [r5, #44]	@ tmp237, pSyntaxInfNew_11->level
	b	.L475	@
.L498:
	.align	2
.L497:
	.word	.LANCHOR0
	.word	g_event_report
	.word	.LC33
	.word	.LC34
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
	orr	r3, r3, #262144	@ D.33881, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.33881, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #128]	@, pSyntaxInfNew_6->video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.33882,
	str	r0, [r5, #132]	@ D.33882, pSyntaxInfNew_6->color_description
	bne	.L507	@,
.L500:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #148]	@, pSyntaxInfNew_6->display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L501	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	orr	r3, r3, #4	@ D.33881, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.33881, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L501:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r5, #152]	@, pSyntaxInfNew_6->display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L507:
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
	b	.L500	@
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
	cmp	r0, #1	@ D.33916,
	str	r0, [r9, #76]	@ D.33916, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L534	@,
.L509:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.33916,
	str	r0, [r9, #80]	@ D.33916, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	ldreq	r7, .L536	@ ivtmp.267,
	addeq	r8, r7, #64	@ D.33920, ivtmp.267,
	beq	.L511	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L513	@,
.L519:
	mov	r4, #64	@ D.33915,
.L514:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.33915, D.33915,
	bne	.L514	@,
.L513:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L535	@,
.L515:
	mov	r4, #64	@ D.33915,
.L516:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.33915, D.33915,
	bne	.L516	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L511:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33916, MEM[base: _49, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp149, D.33916,
	cmp	r7, r8	@ ivtmp.267, D.33920
	add	r3, r3, #214	@ tmp149, tmp149,
	add	r3, r6, r3, lsl #2	@ tmp150, pCtx, tmp149,
	str	r0, [r3, #4]	@, pCtx_13(D)->non_intra_quantizer_matrix
	bne	.L511	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L519	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L515	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L535:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L534:
	ldr	r7, .L536	@ ivtmp.277,
	add	r8, r7, #64	@ D.33920, ivtmp.277,
.L510:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.33916, MEM[base: _40, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp145, D.33916,
	cmp	r7, r8	@ ivtmp.277, D.33920
	add	r3, r3, #150	@ tmp145, tmp145,
	add	r3, r6, r3, lsl #2	@ tmp146, pCtx, tmp145,
	str	r0, [r3, #4]	@, pCtx_13(D)->intra_quantizer_matrix
	bne	.L510	@,
	b	.L509	@
.L537:
	.align	2
.L536:
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
	orr	r3, r3, #2097152	@ D.33943, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.33943, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldrb	r3, [r6, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_8->progressive_sequence, pSyntaxInfNew_8->progressive_sequence
	cmp	r3, #0	@ pSyntaxInfNew_8->progressive_sequence,
	beq	.L540	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	bne	.L553	@,
.L548:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L541:
	add	r7, r6, #160	@ ivtmp.288, pSyntaxInfNew,
	mov	r5, #0	@ i,
	add	r6, r6, #172	@ ivtmp.297, pSyntaxInfNew,
	b	.L545	@
.L555:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #4]!	@, MEM[base: _45, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L552	@,
	cmp	r5, r8	@ i, number_of_frame_center_offsets
	bge	.L554	@,
.L545:
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
	bne	.L555	@,
.L552:
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	orr	r3, r3, #32	@ D.33943, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.33943, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L540:
	ldrb	r3, [r6, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_8->picture_structure, pSyntaxInfNew_8->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_8->picture_structure,
	bne	.L548	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L541	@
.L553:
	ldrb	r3, [r6, #10]	@ zero_extendqisi2	@ pSyntaxInfNew_8->top_field_first, pSyntaxInfNew_8->top_field_first
	cmp	r3, #0	@ pSyntaxInfNew_8->top_field_first,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L541	@
.L554:
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
	add	r10, r7, #8	@ D.33977, pSyntaxInfNew,
	orr	r3, r3, #1048576	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
.L557:
	mov	r6, r9	@ ivtmp.312, ivtmp.323
	mov	r5, #0	@ i,
.L559:
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r5, #1	@ i, i,
	uxtb	r0, r0	@ D.33973,
	strb	r0, [r6], #1	@ D.33973, MEM[base: _100, offset: 0B]
	sub	r3, r0, #10	@ tmp182, D.33973,
	cmp	r0, #0	@ D.33973,
	cmpne	r3, #4	@, tmp182,
	ldrls	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrls	r3, r3, #16	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strls	r3, [r8, #2380]	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	cmp	r5, #2	@ i,
	bne	.L559	@,
	add	r9, r9, #2	@ ivtmp.323, ivtmp.323,
	cmp	r9, r10	@ ivtmp.323, D.33977
	bne	.L557	@,
	mov	r1, r5	@, i
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r5	@, i
	strb	r0, [r7, #8]	@, pSyntaxInfNew_10->intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.33973,
	strb	r0, [r7, #9]	@ D.33973, pSyntaxInfNew_10->picture_structure
	cmp	r0, #0	@ D.33973,
	bne	.L561	@,
	ldr	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #16	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.33971, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L561:
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
	uxtb	r0, r0	@ D.33973,
	strb	r0, [r7, #3]	@ D.33973, pSyntaxInfNew_10->composite_display_flag
	cmp	r0, #0	@ D.33973,
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
	b	.L574	@
.L576:
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	ble	.L575	@,
.L574:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L576	@,
.L575:
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
	bic	r3, r3, #3145728	@ D.33989, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	bic	r3, r3, #56	@ D.33989, D.33989,
	orr	r3, r3, #524288	@ D.33989, D.33989,
	str	r3, [r2, #2380]	@ D.33989, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r5, #156]	@, pSyntaxInfNew_6->temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r5, #22]	@, pSyntaxInfNew_6->picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.33991, pSyntaxInfNew_6->picture_coding_type
	sub	r3, r7, #2	@ tmp150, D.33991,
	cmp	r3, #1	@ tmp150,
	str	r0, [r5, #160]	@, pSyntaxInfNew_6->vbv_delay
	bls	.L582	@,
.L579:
	cmp	r7, #3	@ D.33991,
	beq	.L583	@,
.L580:
	mov	r0, r6	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L583:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, D.33991
	strb	r0, [r5, #25]	@, pSyntaxInfNew_6->full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #26]	@, pSyntaxInfNew_6->backward_f_code
	b	.L580	@
.L582:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #23]	@, pSyntaxInfNew_6->full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.33991, pSyntaxInfNew_6->picture_coding_type
	strb	r0, [r5, #24]	@, pSyntaxInfNew_6->forward_f_code
	b	.L579	@
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
	b	.L586	@
.L588:
	.word	.L587
	.word	.L589
	.word	.L590
	.word	.L591
	.word	.L591
	.word	.L586
	.word	.L593
	.word	.L594
	.word	.L591
	.word	.L591
.L593:
	mov	r0, r5	@, pCtx
	bl	picture_display_extension	@
.L586:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L591:
	mov	r0, r4	@, pBs
	mov	r1, #32	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L590:
	mov	r0, r5	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L594:
	mov	r0, r5	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L587:
	mov	r0, r5	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L589:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #69632	@ tmp122, pCtx,
	mov	r9, r1	@ pstExtraData, pstExtraData
	movw	r1, #8184	@,
	ldr	r7, [r4, #4056]	@ D.34002, pCtx_4(D)->ImageQue.ResetMagicWord
	add	r6, r0, #72704	@ tmp127, pCtx,
	movt	r1, 1	@,
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r6, #640	@, tmp127,
	str	r7, [r4, #4056]	@ D.34002, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r8, #0	@ tmp138,
	bl	ResetVoQueue	@
	add	r3, r5, #45056	@ tmp148, pCtx,
	str	r9, [r5]	@ pstExtraData, pCtx_4(D)->pstExtraData
	add	r2, r6, #256	@ D.34004, tmp127,
	str	r8, [r4, #4076]	@ tmp138, pCtx_4(D)->PPicFound
	mov	r7, #1	@ tmp141,
	str	r2, [r4, #3708]	@ D.34004, pCtx_4(D)->pSyntaxInfOld
	add	r6, r6, #444	@ D.34004, tmp127,
	strb	r8, [r4, #4083]	@ tmp138, pCtx_4(D)->DSDNeedFlushFrame
	mov	r2, #3	@ tmp154,
	str	r6, [r4, #3704]	@ D.34004, pCtx_4(D)->pSyntaxInfNew
	mov	r0, r5	@, pCtx
	strb	r7, [r4, #4082]	@ tmp141, pCtx_4(D)->DSDNeedClearQue
	str	r7, [r4, #2392]	@ tmp141, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Second_Field
	strb	r2, [r3, #273]	@ tmp154, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Last_FieldStruct
	str	r8, [r4, #2436]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].HDRState
	ldr	r3, [r9, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	str	r8, [r4, #2428]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Imgbuf_allocated
	str	r3, [r4, #2368]	@ pstExtraData_10(D)->s32DecMode, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.34005,
	str	r0, [r4, #4064]	@ D.34005, pCtx_4(D)->ChanID
	beq	.L602	@,
	mov	r0, r7	@ D.34001, tmp141
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L602:
	mov	r0, r8	@, tmp138
	ldr	r1, .L603	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34001,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L604:
	.align	2
.L603:
	.word	.LC35
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
	beq	.L610	@,
	add	r4, r0, #188	@ ivtmp.350, pImg,
	add	r5, r0, #204	@ D.34034, pImg,
	mov	r7, #0	@ tmp137,
.L607:
	ldr	r1, [r4, #4]!	@, MEM[base: _25, offset: 0B]
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r4, r5	@ ivtmp.350, D.34034
	str	r7, [r4]	@ tmp137, MEM[base: _25, offset: 0B]
	bne	.L607	@,
.L610:
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
	beq	.L616	@,
	mov	r1, r5	@, FsID
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L624	@,
.L613:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L624:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp140, pCtx,
	add	r3, r0, #344	@ ivtmp.372, tmp140,
	add	r2, r7, #192	@ ivtmp.386, pImg,
	add	r0, r0, #360	@ D.34066, tmp140,
	mov	ip, #0	@ tmp161,
.L615:
	ldr	r1, [r3, #4]!	@ D.34060, MEM[base: _41, offset: 0B]
	mov	r5, #0	@ tmp142,
	add	r2, r2, #4	@ ivtmp.386, ivtmp.386,
	cmp	r1, r5	@ D.34060,
	strne	r1, [r2, #-4]	@ D.34060, MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.372, D.34066
	str	ip, [r3]	@ tmp161, MEM[base: _41, offset: 0B]
	bne	.L615	@,
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
	beq	.L613	@,
	ldr	r1, [r7, #176]	@, pImg_11->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	mvn	r0, #0	@ ret,
	b	.L613	@
.L616:
	mvn	r0, #0	@ ret,
	b	.L613	@
	.fnend
	.size	MP2_FlushFrameToVo, .-MP2_FlushFrameToVo
	.align	2
	.global	MP2_GetSequenceInfo
	.type	MP2_GetSequenceInfo, %function
MP2_GetSequenceInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r4, r0, #69632	@ tmp522, pCtx,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r2, [r4, #2416]	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	ldr	r5, [r4, #3704]	@ pSyntaxInfNew, pCtx_14(D)->pSyntaxInfNew
	cmp	r2, #1	@ D.34070,
	ldr	r7, [r4, #3708]	@ pSyntaxInfOld, pCtx_14(D)->pSyntaxInfOld
	beq	.L627	@,
	cmp	r2, #2	@ D.34070,
	bne	.L675	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	and	r3, r3, #1769472	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B],
	cmp	r3, #589824	@ D.34070,
	beq	.L630	@,
.L629:
	ldr	r1, .L685	@,
	mov	r0, #17	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L676	@,
.L632:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_16->horizontal_size, pSyntaxInfNew_16->horizontal_size
	add	r3, r3, #15	@ D.34070, pSyntaxInfNew_16->horizontal_size,
	mov	r3, r3, lsr #4	@ D.34070, D.34070,
	str	r3, [r5, #56]	@ D.34070, pSyntaxInfNew_16->mb_width
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r2, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L677	@,
.L633:
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #15	@ D.34070, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #4	@ D.34069, D.34070,
.L634:
	mov	r1, #0	@ tmp305,
	str	r2, [r5, #60]	@ D.34069, pSyntaxInfNew_16->mb_height
	str	r1, [r5, #64]	@ tmp305, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	ldr	r1, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r1, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L678	@,
.L635:
	ldr	r8, [r4, #2428]	@ D.34069, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r8, #0	@ D.34069,
	beq	.L638	@,
	ldr	r1, [r7, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	cmp	r3, r1	@ D.34070, pSyntaxInfOld_17->mb_width
	beq	.L679	@,
.L638:
	ldr	r3, [r6]	@ D.34077, pCtx_14(D)->pstExtraData
.L637:
	ldr	r8, [r3, #692]	@ _216->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _216->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ _216->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L680	@,
.L640:
	ldr	r2, .L685+4	@ tmp388,
	mov	r1, #0	@ tmp387,
	str	r1, [r3, #728]	@ tmp387, _217->s32DSDWaitFlag
	ldr	r3, [r2]	@ D.34073, g_event_report
	cmp	r3, r1	@ D.34073,
	beq	.L649	@,
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
	blx	r3	@ D.34073
.L649:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L651	@,
	ldr	r1, [r7, #192]	@, pImg_147->p_usrdat
	mov	r8, #0	@ tmp421,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #196]	@, pImg_147->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #200]	@, pImg_147->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r7, #204]	@, pImg_147->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r8, [r7, #192]	@ tmp421, pImg_147->p_usrdat
	str	r8, [r7, #196]	@ tmp421, pImg_147->p_usrdat
	mov	r2, #1	@,
	str	r8, [r7, #200]	@ tmp421, pImg_147->p_usrdat
	str	r8, [r7, #204]	@ tmp421, pImg_147->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r8, [r4, #2456]	@ tmp421, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r8, [r4, #2460]	@ tmp421, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r8	@,
	bne	.L681	@,
.L651:
	add	r7, r6, #72704	@ D.34076, pCtx,
	mov	r3, #0	@ tmp469,
	add	r7, r7, #640	@ D.34076, D.34076,
	str	r3, [r4, #2420]	@ tmp469, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].RefNum
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	mov	r1, r7	@, D.34076
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r6]	@ D.34077, pCtx_14(D)->pstExtraData
	ldr	r9, [r3, #608]	@ _184->stChanOption.s32ReRangeEn, _184->stChanOption.s32ReRangeEn
	cmp	r9, #0	@ _184->stChanOption.s32ReRangeEn,
	bne	.L653	@,
	ldr	r3, [r3, #32]	@ _184->eCapLevel, _184->eCapLevel
	cmp	r3, #25	@ _184->eCapLevel,
	beq	.L682	@,
.L653:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L654	@,
	ldr	r3, [r6]	@ pCtx_14(D)->pstExtraData, pCtx_14(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _196->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _196->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _196->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L683	@,
.L655:
	mov	r0, r7	@, D.34076
	bl	ResetVoQueue	@
.L654:
	mov	r3, #0	@ tmp501,
	mov	r0, r6	@, pCtx
	mov	r1, r3	@, tmp501
	str	r3, [r4, #2428]	@ tmp501, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	str	r3, [r4, #2444]	@ tmp501, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	bl	MP2_ArrangeVHBMem	@
	ldr	r1, .L685+8	@,
	str	r0, [r4, #2428]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	mov	r0, #1	@,
	ldr	r3, [r5, #60]	@, pSyntaxInfNew_16->mb_height
	ldr	r2, [r5, #56]	@, pSyntaxInfNew_16->mb_width
	bl	dprint_vfmw	@
	ldr	r8, [r4, #2428]	@ D.34069, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
.L639:
	str	r8, [r4, #2376]	@ D.34069, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].NewSeqInited
.L625:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L675:
	ldr	r3, [r4, #2380]	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	tst	r3, #3538944	@ D.34070,
	beq	.L630	@,
	tst	r3, #131072	@ D.34070,
	mov	r2, #2	@ tmp253,
	orreq	r3, r3, r2	@ D.34070, D.34070,
	streq	r3, [r4, #2380]	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	tst	r3, #1048576	@ D.34070,
	str	r2, [r4, #2416]	@ tmp253, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	orreq	r3, r3, #16	@ D.34070, D.34070,
	streq	r3, [r4, #2380]	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	moveq	r2, #2	@ D.34070,
	movne	r2, #2	@ D.34070,
	b	.L629	@
.L630:
	mov	r2, #1	@ tmp243,
	str	r2, [r4, #2416]	@ tmp243, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	b	.L629	@
.L627:
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	mov	r1, #18	@ tmp225,
	bfi	r1, r1, #16, #16	@ tmp225, tmp225,,
	and	r3, r3, r1	@ D.34070, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], tmp225
	cmp	r3, #1179648	@ D.34070,
	moveq	r2, #2	@ tmp232,
	streq	r2, [r4, #2416]	@ tmp232, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	b	.L629	@
.L678:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r1, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L635	@,
	ldr	r1, [r5, #52]	@ D.34070, pSyntaxInfNew_16->vertical_size
	add	r0, r1, #31	@ D.34070, D.34070,
	add	r1, r1, #15	@ D.34070, D.34070,
	mov	r0, r0, lsr #5	@ D.34070, D.34070,
	mov	r1, r1, lsr #4	@ D.34070, D.34070,
	rsb	r1, r1, r0, lsl #1	@ D.34070, D.34070, D.34070,
	str	r1, [r5, #64]	@ D.34070, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	b	.L635	@
.L677:
	ldrb	r2, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r2, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L633	@,
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #31	@ D.34070, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #5	@ D.34070, D.34070,
	mov	r2, r2, asl #1	@ D.34069, D.34070,
	b	.L634	@
.L676:
	mov	r2, #0	@ tmp282,
	mov	r0, #3	@ tmp275,
	mov	r1, #5	@ tmp281,
	strb	r3, [r5, #27]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->progressive_sequence
	strb	r3, [r5, #18]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->progressive_frame
	strb	r3, [r5, #11]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->frame_pred_frame_dct
	strb	r3, [r5, #28]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->chroma_format
	strb	r0, [r5, #9]	@ tmp275, pSyntaxInfNew_16->picture_structure
	str	r1, [r5, #144]	@ tmp281, pSyntaxInfNew_16->matrix_coefficients
	strb	r2, [r5, #12]	@ tmp282, pSyntaxInfNew_16->concealment_motion_vectors
	strb	r2, [r5, #13]	@ tmp282, pSyntaxInfNew_16->q_scale_type
	strb	r2, [r5, #14]	@ tmp282, pSyntaxInfNew_16->intra_vlc_format
	strb	r2, [r5, #15]	@ tmp282, pSyntaxInfNew_16->alternate_scan
	strb	r2, [r5, #8]	@ tmp282, pSyntaxInfNew_16->intra_dc_precision
	b	.L632	@
.L683:
	ldrb	r3, [r4, #4082]	@ zero_extendqisi2	@ pCtx_14(D)->DSDNeedClearQue, pCtx_14(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_14(D)->DSDNeedClearQue,
	bne	.L654	@,
	b	.L655	@
.L681:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.34072, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.34072, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	b	.L651	@
.L682:
	ldr	r8, [r4, #2428]	@ D.34069, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r8, #0	@ D.34069,
	bne	.L639	@,
	mov	r0, r7	@, D.34076
	bl	ResetVoQueue	@
	mov	r1, r8	@, D.34069
	mov	r0, r6	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	str	r9, [r4, #2444]	@ _184->stChanOption.s32ReRangeEn, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	mov	r8, r0	@ D.34069,
	str	r0, [r4, #2428]	@ D.34069, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	b	.L639	@
.L679:
	ldr	r3, [r7, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	cmp	r2, r3	@ D.34069, pSyntaxInfOld_17->mb_height
	bne	.L638	@,
	ldr	r3, [r6]	@ D.34077, pCtx_14(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _78->s32DSDWaitFlag, _78->s32DSDWaitFlag
	cmp	r2, #1	@ _78->s32DSDWaitFlag,
	bne	.L639	@,
	b	.L637	@
.L680:
	strb	r8, [r4, #4083]	@ _216->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_14(D)->DSDNeedFlushFrame
	mov	r0, r6	@, pCtx
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	mov	r3, #0	@ tmp326,
	str	r3, [sp]	@ tmp326, NewNum
	str	r3, [sp, #4]	@ tmp326, ReadNum
	str	r3, [sp, #8]	@ tmp326, RefNum
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L643	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L643	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r2, #0	@ tmp358,
	mov	r3, sp	@,
	add	r1, sp, #8	@,,
	cmp	r0, #0	@ pImage
	strne	r8, [r0, #376]	@ _216->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_97->u32IsLastFrame
	strb	r2, [r4, #4083]	@ tmp358, pCtx_14(D)->DSDNeedFlushFrame
	add	r2, sp, #4	@,,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6]	@ D.34077, pCtx_14(D)->pstExtraData
	ldr	r1, [r7, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	ldr	r2, [r3, #720]	@ _104->s32DSDThrWidth, _104->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _104->s32DSDThrWidth, pSyntaxInfOld_17->mb_width,
	bcc	.L645	@,
	ldr	r1, [r7, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	ldr	r2, [r3, #724]	@ _104->s32DSDThrHeight, _104->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _104->s32DSDThrHeight, pSyntaxInfOld_17->mb_height,
	bcc	.L645	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.34072, ReadNum, NewNum
	cmp	r2, #0	@ D.34072,
	ble	.L640	@,
	mov	r2, #1	@ tmp377,
	strb	r2, [r4, #4082]	@ tmp377, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp377, _104->s32DSDWaitFlag
	b	.L625	@
.L643:
	mov	r3, #0	@ tmp340,
	strb	r3, [r4, #4083]	@ tmp340, pCtx_14(D)->DSDNeedFlushFrame
	b	.L625	@
.L645:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L684	@,
.L647:
	mov	r1, #0	@ tmp384,
	mov	r2, #1	@ tmp386,
	strb	r1, [r4, #4082]	@ tmp384, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp386, _104->s32DSDWaitFlag
	b	.L625	@
.L684:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	ble	.L640	@,
	b	.L647	@
.L686:
	.align	2
.L685:
	.word	.LC36
	.word	g_event_report
	.word	.LC37
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
	b	.L688	@
.L695:
	bl	BsShow	@
	mov	r4, r0	@ D.34085,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	sub	r3, r4, #256	@ D.34086, D.34085,
	sub	r3, r3, #1	@ D.34086, D.34086,
	mov	r1, #32	@,
	cmp	r3, #174	@ D.34086,
	str	r0, [r7, #2440]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRUsedBits
	mov	r0, r5	@, pBs
	bls	.L703	@,
	bl	BsSkip	@
.L688:
	mov	r0, r6	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r3, r0	@ ret,
	cmp	r3, #1	@ ret,
	mov	r0, r5	@, pBs
	beq	.L695	@,
	cmn	r3, #1	@ ret,
	beq	.L690	@,
	mov	r0, r3	@ D.34084, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L690:
	ldr	r3, .L705	@ tmp144,
	ldr	r3, [r3]	@ D.34088, g_event_report
	cmp	r3, #0	@ D.34088,
	beq	.L697	@,
	add	r6, r6, #69632	@ tmp146, pCtx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	r3	@ D.34088
	mvn	r0, #0	@ D.34084,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L703:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	ble	.L690	@,
	ldr	r4, [r7, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	mov	r3, #0	@ tmp136,
	str	r3, [r7, #2436]	@ tmp136, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRState
	cmp	r4, r3	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited,
	bne	.L694	@,
	mov	r0, r6	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r6]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _26->s32DSDWaitFlag, _26->s32DSDWaitFlag
	cmp	r3, #1	@ _26->s32DSDWaitFlag,
	beq	.L704	@,
.L694:
	mov	r0, r6	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ D.34084,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L697:
	mvn	r0, #0	@ D.34084,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L704:
	mov	r0, r4	@ D.34084, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L706:
	.align	2
.L705:
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
	beq	.L708	@,
	add	r5, r0, #69632	@ tmp182, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L729	@,
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L727	@,
.L729:
	add	r4, r6, #72704	@ tmp183, pCtx,
.L708:
	add	r7, r4, #640	@ D.34113, tmp183,
.L714:
	mov	r0, r7	@, D.34113
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	GetVoLastImageID	@
.L727:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp159, pCtx,
	add	r3, r0, #344	@ ivtmp.400, tmp159,
	add	r2, r9, #192	@ ivtmp.414, pImg,
	add	r0, r0, #360	@ D.34121, tmp159,
	mov	ip, #0	@ tmp185,
.L710:
	ldr	r1, [r3, #4]!	@ D.34116, MEM[base: _57, offset: 0B]
	mov	r8, #0	@ tmp161,
	add	r2, r2, #4	@ ivtmp.414, ivtmp.414,
	cmp	r1, r8	@ D.34116,
	strne	r1, [r2, #-4]	@ D.34116, MEM[base: _61, offset: 0B]
	cmp	r3, r0	@ ivtmp.400, D.34121
	str	ip, [r3]	@ tmp185, MEM[base: _57, offset: 0B]
	bne	.L710	@,
	add	r4, r6, #72704	@ tmp183, pCtx,
	mov	r3, #1	@ tmp167,
	add	r7, r4, #640	@ D.34113, tmp183,
	str	r8, [r5, #2412]	@ tmp161, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].TotalUsrDatNum
	mov	r2, r3	@, tmp167
	str	r3, [r9, #224]	@ tmp167, pImg_15->last_frame
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #4064]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r3, r7	@, D.34113
	str	r9, [sp]	@ pImg,
	mov	r2, r6	@, pCtx
	mov	r1, #3	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L711	@,
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L714	@
.L711:
	ldr	r3, [r9, #180]	@ pImg_15->error_level, pImg_15->error_level
	cmp	r3, #100	@ pImg_15->error_level,
	bhi	.L708	@,
	ldr	r3, [r9, #144]	@ pImg_15->image_width, pImg_15->image_width
	cmp	r3, #31	@ pImg_15->image_width,
	bls	.L708	@,
	ldr	r3, [r9, #148]	@ pImg_15->image_height, pImg_15->image_height
	cmp	r3, #31	@ pImg_15->image_height,
	bls	.L714	@,
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
	beq	.L731	@,
	ldr	r3, [r5, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field,
	beq	.L733	@,
.L731:
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L733	@,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L742	@,
	mov	r0, #0	@ D.34124,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L733:
	mov	r0, #1	@ D.34124,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L742:
	add	r1, r4, #72704	@, pCtx,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	add	r1, r1, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.34124,
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
	beq	.L744	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, pMp2Packet_3(D)->StreamID
	bl	SM_ReleaseStreamSeg	@
.L744:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r1, #0	@ pPacket, pPacket
	add	r3, r0, #24576	@ tmp140, pMp2CodecInfo,
	beq	.L755	@,
	mov	r5, #0	@ tmp145,
	str	r5, [r3, #2056]	@ tmp145, pMp2CodecInfo_5(D)->BsOffset
	ldr	r1, [r4, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	r1, [r3, #2100]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_5(D)->PacketTail
	ldr	r1, [r4, #8]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pPacket_3(D)->StreamPack[0].PhyAddr
	str	r1, [r3, #2072]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	ldr	r1, [r4]	@ D.34142, pPacket_3(D)->StreamPack[0].VirAddr
	str	r1, [r3, #2064]	@ D.34142, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	ldr	r1, [r4, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	r1, [r3, #2080]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	strb	r1, [r3, #2060]	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	ldr	r1, [r4, #16]	@ D.34140, pPacket_3(D)->StreamPack[0].StreamID
	str	r1, [r3, #2088]	@ D.34140, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	cmp	ip, #1	@ pPacket_3(D)->StreamPack[0].IsLastSeg,
	beq	.L752	@,
	ldr	r1, [r4, #88]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pPacket_3(D)->StreamPack[1].PhyAddr
	str	r1, [r3, #2076]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	ldr	r1, [r4, #80]	@ D.34142, pPacket_3(D)->StreamPack[1].VirAddr
	str	r1, [r3, #2068]	@ D.34142, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	ldr	r1, [r4, #92]	@ pPacket_3(D)->StreamPack[1].LenInByte, pPacket_3(D)->StreamPack[1].LenInByte
	str	r1, [r3, #2084]	@ pPacket_3(D)->StreamPack[1].LenInByte, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	ldrb	r1, [r4, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	strb	r1, [r3, #2061]	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	ldr	r1, [r4, #96]	@ D.34140, pPacket_3(D)->StreamPack[1].StreamID
	str	r1, [r3, #2092]	@ D.34140, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	cmp	ip, #1	@ pPacket_3(D)->StreamPack[1].IsLastSeg,
	beq	.L753	@,
	add	r1, r0, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	ldrb	r2, [r4, #85]	@ zero_extendqisi2	@, pPacket_3(D)->StreamPack[1].IsLastSeg
	ldr	r1, .L756	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34139, tmp145
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L753:
	mov	r0, ip	@ D.34139, pPacket_3(D)->StreamPack[1].IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L752:
	str	r5, [r3, #2076]	@ tmp145, pMp2CodecInfo_5(D)->stMp2Packet.BsPhyAddr
	mov	r0, ip	@ D.34139, pPacket_3(D)->StreamPack[0].IsLastSeg
	str	r5, [r3, #2068]	@ tmp145, pMp2CodecInfo_5(D)->stMp2Packet.BsVirAddr
	str	r5, [r3, #2084]	@ tmp145, pMp2CodecInfo_5(D)->stMp2Packet.BsLength
	strb	r5, [r3, #2061]	@ tmp145, pMp2CodecInfo_5(D)->stMp2Packet.IsLastSeg
	str	r5, [r3, #2092]	@ tmp145, pMp2CodecInfo_5(D)->stMp2Packet.StreamID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L755:
	ldr	r1, .L756+4	@,
	mov	r0, #1	@,
	ldr	r2, [r3, #2116]	@, pMp2CodecInfo_5(D)->Frame_Cnt
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34139, pPacket
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L757:
	.align	2
.L756:
	.word	.LC39
	.word	.LC38
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
	bne	.L761	@,
	b	.L762	@
.L760:
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcs	.L762	@,
.L761:
	ldr	r1, [r4, #284]	@, MEM[base: _19, offset: 284B]
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #264]	@ MEM[base: _19, offset: 264B], MEM[base: _19, offset: 264B]
	cmp	r3, #0	@ MEM[base: _19, offset: 264B],
	beq	.L760	@,
	ldr	r3, [r4, #272]	@ MEM[base: _19, offset: 272B], MEM[base: _19, offset: 272B]
	cmp	r3, #0	@ MEM[base: _19, offset: 272B],
	beq	.L760	@,
	ldr	r1, [r4, #288]	@, MEM[base: _19, offset: 288B]
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcc	.L761	@,
.L762:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r0, #69632	@ tmp532, pCtx,
	ldrb	r3, [r0, #152]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp, MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp
	mov	r2, r1	@, ErrRatio
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ pCtx, pCtx
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r0, #22	@,
	strb	r3, [r4, #2560]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].EstmatedPicQp
	add	r9, r6, #45056	@ tmp237, pCtx,
	ldr	r1, .L839	@,
	ldr	r7, [r4, #3704]	@ pSyntaxInfNew, pCtx_17(D)->pSyntaxInfNew
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP2_RecordVFMWState	@
	mov	r0, r6	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	mov	r8, r0	@ pCurImg,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	mov	r10, r0	@ pBwdImg,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r8, #0	@ pCurImg,
	beq	.L834	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.34229, pSyntaxInfNew_20->picture_coding_type
	cmp	r5, #0	@ ErrRatio,
	strb	r3, [r9, #272]	@ D.34229, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].LastDecPicCodingType
	str	r5, [r8, #180]	@ ErrRatio, pCurImg_30->error_level
	blt	.L775	@,
	cmp	r5, #100	@ ErrRatio,
	movge	r5, #100	@ D.34226,
	str	r5, [r8, #180]	@ D.34226, pCurImg_30->error_level
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L776	@,
	ldr	r3, [r6]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3]	@ _48->s32RefErrThr, _48->s32RefErrThr
	cmp	r5, r3	@ D.34226, _48->s32RefErrThr
	bhi	.L835	@,
.L776:
	ldr	r1, .L839+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	movw	r1, #45320	@,
	add	r0, r6, #8	@, pCtx,
	bl	__memzero	@
	ldrb	r3, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L782	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field,
	movne	r0, #1	@ D.34226,
	beq	.L782	@,
.L828:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L782:
	add	r0, r6, #71680	@ tmp350, pCtx,
	add	r1, r8, #192	@ ivtmp.494, pCurImg,
	add	r3, r0, #344	@ ivtmp.480, tmp350,
	add	r0, r0, #360	@ D.34225, tmp350,
	mov	lr, #0	@ tmp536,
.L781:
	ldr	r2, [r3, #4]!	@ D.34233, MEM[base: _140, offset: 0B]
	mov	ip, #0	@ tmp357,
	add	r1, r1, #4	@ ivtmp.494, ivtmp.494,
	cmp	r2, ip	@ D.34233,
	strne	r2, [r1, #-4]	@ D.34233, MEM[base: _136, offset: 0B]
	cmp	r3, r0	@ ivtmp.480, D.34225
	str	lr, [r3]	@ tmp536, MEM[base: _140, offset: 0B]
	bne	.L781	@,
	str	ip, [r4, #2412]	@ tmp357, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].TotalUsrDatNum
	ldr	r3, [r6]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _99->s32DecOrderOutput, _99->s32DecOrderOutput
	cmp	r3, #1	@ _99->s32DecOrderOutput,
	beq	.L784	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L784	@,
	ldr	r1, [r4, #2456]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r1, [r4, #2468]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
.L785:
	cmn	r1, #1	@ D.34230,
	beq	.L787	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L791	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L791	@,
.L787:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_sequence, pSyntaxInfNew_20->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_sequence,
	beq	.L836	@,
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_frame, pSyntaxInfNew_20->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_frame,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r3, #1	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	addne	r3, r3, #1	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	streq	r3, [r4, #2544]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	ldreqb	r3, [r7, #16]	@ zero_extendqisi2	@ D.34230, pSyntaxInfNew_20->repeat_first_field
	ldreq	r2, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	addeq	r3, r3, #2	@ D.34230, D.34230,
	strne	r3, [r4, #2544]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r2, r3	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, D.34230
	movne	r3, r3, asl #1	@ D.34230, D.34230,
	str	r3, [r4, #2540]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
.L798:
	ldr	r2, [r4, #2536]	@ pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	mov	r0, #1	@ D.34226,
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	r2, r2, r0	@ D.34230, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.34230, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, r0	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L775:
	mov	r3, #0	@ tmp510,
	str	r3, [r8, #180]	@ tmp510, pCurImg_30->error_level
	b	.L776	@
.L835:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L778	@,
	ldr	r1, [r5, #192]	@, pImg_54->p_usrdat
	mov	r6, #0	@ tmp298,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_54->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_54->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_54->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp298, pImg_54->p_usrdat
	str	r6, [r5, #196]	@ tmp298, pImg_54->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp298, pImg_54->p_usrdat
	str	r6, [r5, #204]	@ tmp298, pImg_54->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r6, [r4, #2456]	@ tmp298, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r6, [r4, #2460]	@ tmp298, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r6	@,
	beq	.L778	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
.L778:
	mov	r3, #0	@ tmp346,
	mov	r0, #1	@ D.34226,
	str	r3, [r4, #2420]	@ tmp346, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].RefNum
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L791:
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pToQueImg,
	beq	.L837	@,
	ldr	r2, [r5, #180]	@ D.34231, pToQueImg_119->error_level
	cmp	r2, #0	@ D.34231,
	beq	.L793	@,
	ldr	r3, [r6]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3, #4]	@ D.34230, _122->s32OutErrThr
	cmp	r2, r3	@ D.34231, D.34230
	bhi	.L838	@,
.L793:
	ldr	r8, [r4, #2468]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	mov	r1, r8	@, D.34230
	bl	FSP_GetRef	@
	mov	r2, r8	@, D.34230
	ldr	r1, .L839+8	@,
	mov	r3, r0	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r6, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@ pCtx_17(D)->ChanID, pCtx_17(D)->ChanID
	add	r3, r3, #640	@,,
	str	r5, [sp]	@ pToQueImg,
	mov	r2, r6	@, pCtx
	mov	r1, #3	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.34230,
	beq	.L800	@,
	add	r6, r5, #188	@ ivtmp.440, pToQueImg,
	add	r5, r5, #204	@ D.34225, pToQueImg,
	mov	r7, #0	@ tmp534,
.L795:
	ldr	r1, [r6, #4]!	@, MEM[base: _205, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r6, r5	@ ivtmp.440, D.34225
	str	r7, [r6]	@ tmp534, MEM[base: _205, offset: 0B]
	bne	.L795	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.34226,
	b	.L828	@
.L784:
	ldr	r1, [r4, #2464]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	str	r1, [r4, #2468]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	b	.L785	@
.L836:
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.34230, pSyntaxInfNew_20->repeat_first_field
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.34230, pSyntaxInfNew_20->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.34230, D.34230, D.34230
	add	r3, r3, #1	@ D.34230, D.34230,
	add	r3, r3, r1	@ D.34230, D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.34230, D.34230,
	str	r3, [r4, #2540]	@ D.34230, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	b	.L798	@
.L838:
	ldr	r1, .L839+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	add	r6, r5, #188	@ ivtmp.460, pToQueImg,
	add	r5, r5, #204	@ D.34225, pToQueImg,
	mov	r8, #0	@ tmp535,
.L796:
	ldr	r1, [r6, #4]!	@, MEM[base: _194, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r6, r5	@ ivtmp.460, D.34225
	str	r8, [r6]	@ tmp535, MEM[base: _194, offset: 0B]
	bne	.L796	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L787	@
.L834:
	str	r0, [sp]	@ pFwdImg,
	mov	r3, r10	@, pBwdImg
	mov	r2, r8	@, pCurImg
	ldr	r1, .L839+16	@,
	mov	r0, r8	@, pCurImg
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.34226, pCurImg
	b	.L828	@
.L800:
	ldr	r3, [r4, #4072]	@ pCtx_17(D)->numOutputFrame, pCtx_17(D)->numOutputFrame
	add	r3, r3, #1	@ D.34230, pCtx_17(D)->numOutputFrame,
	str	r3, [r4, #4072]	@ D.34230, pCtx_17(D)->numOutputFrame
	ldr	r3, [r6]	@ D.34232, pCtx_17(D)->pstExtraData
	str	r0, [r3, #732]	@ D.34230, _157->s32firstIdecodedflag
	b	.L787	@
.L837:
	movw	r2, #3592	@,
	ldr	r1, .L839+20	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34226, pToQueImg
	b	.L828	@
.L840:
	.align	2
.L839:
	.word	.LC40
	.word	.LC42
	.word	.LC44
	.word	.LC43
	.word	.LC41
	.word	.LC19
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
	.align	2
	.global	MP2_u_v
	.type	MP2_u_v, %function
MP2_u_v:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r2	@ SeTraceString, SeTraceString
	mov	r6, r0	@ pBs, pBs
	mov	r7, r1	@ LenInBits, LenInBits
	bl	BsShow	@
	mov	r1, r7	@, LenInBits
	mov	r4, r0	@ D.34244,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r3, r4	@, D.34244
	mov	r2, r5	@, SeTraceString
	ldr	r1, .L843	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, D.34244
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L844:
	.align	2
.L843:
	.word	.LC45
	.fnend
	.size	MP2_u_v, .-MP2_u_v
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
	bls	.L846	@,
	ldr	r2, [r0]	@ pSlcInfo_6(D)->mpeg1_flag, pSlcInfo_6(D)->mpeg1_flag
	cmp	r2, r3	@ pSlcInfo_6(D)->mpeg1_flag,
	beq	.L859	@,
.L846:
	ldr	r1, [r5, #20]	@ pSlcInfo_6(D)->slice_vertical_position, pSlcInfo_6(D)->slice_vertical_position
	mov	r0, r4	@, pBs
	ldr	r2, [r5, #8]	@ pSlcInfo_6(D)->pic_width_in_mb, pSlcInfo_6(D)->pic_width_in_mb
	sub	r1, r1, #1	@ D.34249, pSlcInfo_6(D)->slice_vertical_position,
	add	r3, r1, r3	@ mb_row, D.34249, D.34249
	mov	r1, #5	@,
	mul	r3, r2, r3	@ D.34248, pSlcInfo_6(D)->pic_width_in_mb, mb_row
	ldr	r2, .L861	@,
	cmp	r3, #0	@ D.34248,
	subne	r3, r3, #1	@ D.34248, D.34248,
	str	r3, [r5, #28]	@ D.34248, pSlcInfo_6(D)->previous_macroblock_address
	bl	MP2_u_v	@
	mov	r3, #0	@ tmp138,
	mov	r1, #1	@,
	str	r3, [r5, #32]	@ tmp138, pSlcInfo_6(D)->intra_slice
	str	r0, [r5, #48]	@, pSlcInfo_6(D)->quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L860	@,
.L851:
	mov	r0, r4	@, pBs
	ldr	r2, .L861+4	@,
	mov	r1, #1	@,
	bl	MP2_u_v	@
	ldr	r1, .L861+8	@,
	mov	r2, r0	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L860:
	ldr	r2, .L861+12	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	ldr	r2, .L861+16	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	ldr	r2, .L861+20	@,
	mov	r1, #7	@,
	str	r0, [r5, #32]	@, pSlcInfo_6(D)->intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L849	@
.L850:
	bl	MP2_u_v	@
	ldr	r2, .L861+24	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
.L849:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	ldr	r2, .L861+4	@,
	mov	r1, #1	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L850	@,
	b	.L851	@
.L859:
	ldr	r2, .L861+28	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	mov	r3, r0, asl #7	@ D.34249, D.34249,
	str	r0, [r5, #24]	@ D.34249, pSlcInfo_6(D)->slice_vertical_position_extension
	b	.L846	@
.L862:
	.align	2
.L861:
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC46
	.fnend
	.size	MP2_DecSliceHeader, .-MP2_DecSliceHeader
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r0, #45056	@ tmp297, pCtx,
	mov	r4, #44	@ tmp144,
	add	r5, r0, #69632	@ tmp148, pCtx,
	ldr	r2, [r7, #260]	@ D.34264, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2600]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice
	cmp	r2, #1024	@ D.34264,
	mla	r4, r4, r2, r0	@ tmp145, tmp144, D.34264, pCtx
	str	r1, [r4, #296]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].intra_slice
	ldr	r1, [r5, #2616]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code
	str	r1, [r4, #300]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].quantiser_scale_code
	ldr	r1, [r5, #2612]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num
	str	r1, [r4, #292]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].slice_start_mbn
	bcs	.L871	@,
	ldr	r2, [r5, #2648]	@ D.34264, MEM[(struct BS *)pCtx_4(D) + 72256B].TotalPos
	add	r0, r0, #71680	@, pCtx,
	ldr	r3, [r5, #2344]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	add	r0, r0, #576	@,,
	and	r1, r2, #7	@ bs_offset, D.34264,
	str	r1, [r4, #276]	@ bs_offset, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	add	r3, r3, r2, lsr #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, D.34264,
	str	r3, [r4, #260]	@ stream_base_addr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r5, #2360]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #284]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	bl	BsResidBits	@
	movw	r2, #2332	@ tmp218,
	str	r0, [r4, #268]	@, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	ldrsh	r3, [r5, r2]	@ D.34266, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B]
	cmp	r3, #1	@ D.34266,
	beq	.L872	@,
	cmp	r3, #256	@ D.34266,
	bne	.L869	@,
	ldr	r1, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r2, #0	@ tmp255,
	str	r2, [r4, #280]	@ tmp255, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r1, [r4, #264]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r5, #2364]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #288]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	ldr	r3, [r5, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.34265, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #272]	@ D.34265, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
.L868:
	ldr	r3, [r7, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	mov	r0, #1	@ D.34263,
	add	r3, r3, r0	@ D.34264, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum,
	str	r3, [r7, #260]	@ D.34264, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L871:
	mov	r3, #1024	@,
	ldr	r1, .L873	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, [r5, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	mov	r0, #0	@ tmp179,
	str	r0, [r5, #2436]	@ tmp179, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].HDRState
	bic	r3, r3, #5767168	@ D.34264, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality,
	str	r3, [r5, #2380]	@ D.34264, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L872:
	mov	r3, #0	@ tmp225,
	add	r4, r4, #268	@ tmp239, tmp145,
	str	r3, [r4, #-4]	@ tmp225, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	str	r3, [r4, #12]	@ tmp225, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r3, [r4, #20]	@ tmp225, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	str	r3, [r4, #4]	@ tmp225, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	b	.L868	@
.L869:
	movw	r3, #2333	@ tmp281,
	ldrsb	r2, [r5, r2]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.IsLastSeg
	ldrsb	r3, [r5, r3]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r0, #1	@,
	ldr	r1, .L873+4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34263,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L874:
	.align	2
.L873:
	.word	.LC54
	.word	.LC55
	.fnend
	.size	MP2_WriteSliceInfo, .-MP2_WriteSliceInfo
	.align	2
	.global	MP2_MbAddrInc
	.type	MP2_MbAddrInc, %function
MP2_MbAddrInc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #4	@,
	mov	r6, r0	@ pBs, pBs
	bl	BsShow	@
	ldr	r5, .L882	@ tmp125,
	add	r0, r5, r0, lsl #3	@ tmp126, tmp125,,
	ldr	r4, [r0, #224]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r0, #228]	@ SkipBit, tab_for_first_4bit
	cmp	r4, #6	@ MbAddrInc,
	bls	.L880	@,
	cmp	r4, #9	@ MbAddrInc,
	beq	.L881	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	ldr	r2, .L882+4	@,
	and	r3, r0, #127	@ code,,
	mov	r0, r6	@, pBs
	sub	r3, r3, #24	@ code, code,
	add	r5, r5, r3, lsl #3	@ tmp134, tmp125, code,
	ldr	r4, [r5, #352]	@ MbAddrInc, tab_for_last_7bit
	ldr	r1, [r5, #356]	@, tab_for_last_7bit
	bl	MP2_u_v	@
	mov	r0, r4	@ D.34277, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L880:
	mov	r0, r6	@, pBs
	ldr	r2, .L882+4	@,
	bl	MP2_u_v	@
	mov	r0, r4	@ D.34277, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L881:
	mov	r0, r6	@, pBs
	ldr	r2, .L882+4	@,
	bl	MP2_u_v	@
	rsb	r0, r0, #9	@ D.34277,,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L883:
	.align	2
.L882:
	.word	.LANCHOR0
	.word	.LC56
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
	b	.L885	@
.L889:
	cmp	r0, #15	@ D.34285,
	beq	.L886	@,
	cmp	r0, #8	@ D.34285,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L898	@,
.L886:
	ldr	r2, .L900	@,
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
.L885:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #23	@ D.34285,
	bls	.L889	@,
	mov	r0, r4	@, pBs
	bl	MP2_MbAddrInc	@
	ldr	r4, [r6, #16]	@ pSlcInfo_10(D)->FirstMbInSliceFlag, pSlcInfo_10(D)->FirstMbInSliceFlag
	cmp	r4, #0	@ pSlcInfo_10(D)->FirstMbInSliceFlag,
	beq	.L890	@,
	ldr	r3, [r6, #28]	@ D.34284, pSlcInfo_10(D)->previous_macroblock_address
	add	r5, r5, r0	@ D.34284, macroblock_escape, macroblock_address_increment
	cmp	r3, #0	@ D.34284,
	addne	r2, r5, r3	@ SlcStartMbNum, D.34284, D.34284
	ldr	r3, [r6, #12]	@ pSlcInfo_10(D)->pic_total_mb_num, pSlcInfo_10(D)->pic_total_mb_num
	subeq	r2, r5, #1	@ SlcStartMbNum, D.34284,
	str	r2, [r6, #44]	@ SlcStartMbNum, pSlcInfo_10(D)->slicen_start_mb_num
	sub	r3, r3, #1	@ D.34284, pSlcInfo_10(D)->pic_total_mb_num,
	cmp	r2, r3	@ SlcStartMbNum, D.34284
	bhi	.L899	@,
	mov	r0, #1	@ D.34283,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L898:
	ldr	r1, .L900+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34283,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L890:
	mov	r2, r4	@, pSlcInfo_10(D)->FirstMbInSliceFlag
	ldr	r1, .L900+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.34283, pSlcInfo_10(D)->FirstMbInSliceFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L899:
	ldr	r1, .L900+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34283,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L901:
	.align	2
.L900:
	.word	.LC58
	.word	.LC57
	.word	.LC60
	.word	.LC59
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
	add	r4, r0, #69632	@ tmp136, pCtx,
	add	r3, r0, #71680	@ tmp134, pCtx,
	uxtb	r1, r1	@ D.34306, code
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	add	r7, r3, #520	@ pSlcInfo, tmp134,
	add	ip, r3, #576	@ D.34308, tmp134,
	ldr	lr, [r4, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength
	ldr	r3, [r4, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	sub	r2, r2, #1	@ D.34307, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	ldr	r8, [r4, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr
	clz	r2, r2	@ D.34307, D.34307
	str	lr, [r4, #2608]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].ByteLen
	mov	r6, r0	@ pCtx, pCtx
	mov	r2, r2, lsr #5	@ D.34307, D.34307,
	str	r2, [r4, #2568]	@ D.34307, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].mpeg1_flag
	str	r8, [r4, #2604]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].VirAddr
	mov	r0, r7	@, pSlcInfo
	ldr	r2, [r3, #60]	@ D.34306, pSyntaxInfNew_6->mb_height
	mov	r5, #0	@ tmp182,
	str	r2, [r4, #2572]	@ D.34306, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_height_in_mb
	ldr	r2, [r3, #56]	@ D.34306, pSyntaxInfNew_6->mb_width
	str	r2, [r4, #2576]	@ D.34306, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_width_in_mb
	ldr	r2, [r3, #52]	@ pSyntaxInfNew_6->vertical_size, pSyntaxInfNew_6->vertical_size
	ldr	r3, [r3, #48]	@ pSyntaxInfNew_6->horizontal_size, pSyntaxInfNew_6->horizontal_size
	add	r2, r2, #15	@ D.34306, pSyntaxInfNew_6->vertical_size,
	str	r1, [r4, #2588]	@ D.34306, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].slice_vertical_position
	add	r3, r3, #15	@ D.34306, pSyntaxInfNew_6->horizontal_size,
	str	ip, [r4, #2620]	@ D.34308, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pBs
	mov	r2, r2, lsr #4	@ D.34306, D.34306,
	mov	r3, r3, lsr #4	@ D.34306, D.34306,
	mul	r3, r3, r2	@ D.34306, D.34306, D.34306
	str	r3, [r4, #2580]	@ D.34306, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_total_mb_num
	bl	MP2_DecSliceHeader	@
	mov	r0, r7	@, pSlcInfo
	bl	MP2_InitMb	@
	str	r5, [r4, #2584]	@ tmp182, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].FirstMbInSliceFlag
	cmp	r0, #1	@ ret,
	mov	r7, r0	@ ret,
	beq	.L905	@,
	ldr	r1, .L911	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34303, tmp182
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L905:
	mov	r0, r6	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.34303,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r7	@, ret
	ldr	r1, .L911+4	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34303, tmp182
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L912:
	.align	2
.L911:
	.word	.LC61
	.word	.LC62
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
	add	r4, r0, #69632	@ tmp549, pCtx,
	add	r6, r6, #576	@ pBs, pBs,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r1, #32	@,
	mov	r7, r0	@ pCtx, pCtx
	mov	r8, #0	@ tmp231,
	mov	r0, r6	@, pBs
	strb	r8, [r4, #4080]	@ tmp231, pCtx_11(D)->IsWaitToDecFlag
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
	movw	r3, #439	@ tmp241,
	cmp	r5, r3	@ code, tmp241
	beq	.L979	@,
	movw	r3, #435	@ tmp302,
	cmp	r5, r3	@ code, tmp302
	cmpne	r5, #440	@, code,
	bne	.L920	@,
.L916:
	ldr	r3, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L980	@,
.L917:
	movw	r3, #435	@ tmp330,
	cmp	r5, r3	@ code, tmp330
	beq	.L922	@,
.L983:
	cmp	r5, #436	@ code,
	bcc	.L981	@,
	movw	r3, #437	@ tmp331,
	cmp	r5, r3	@ code, tmp331
	beq	.L926	@,
	cmp	r5, #436	@ code,
	bls	.L943	@,
	movw	r3, #439	@ tmp332,
	cmp	r5, r3	@ code, tmp332
	beq	.L943	@,
	cmp	r5, #440	@ code,
	bne	.L921	@,
	ldr	r3, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte
	mov	r0, r6	@, pBs
	ldr	r5, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	add	r5, r3, r5	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	bl	BsPos	@
	ldr	r1, .L987	@,
	add	r2, r5, r0, lsr #3	@, D.34318,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L982	@,
.L943:
	mov	r6, #0	@ D.34315,
.L919:
	mov	r0, r6	@, D.34315
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L920:
	cmp	r5, #256	@ code,
	beq	.L916	@,
	movw	r3, #435	@ tmp330,
	cmp	r5, r3	@ code, tmp330
	bne	.L983	@,
.L922:
	ldr	r3, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte
	mov	r0, r6	@, pBs
	ldr	r5, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	add	r5, r3, r5	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	bl	BsPos	@
	ldr	r1, .L987+4	@,
	add	r2, r5, r0, lsr #3	@, D.34318,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	sequence_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L984	@,
	ldr	r6, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ands	r6, r6, #7	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	bne	.L931	@,
	mov	r3, #1	@ tmp368,
	mov	r0, r10	@, pSyntaxInfOld
	strb	r3, [r9]	@ tmp368, pSyntaxInfNew_14->valid_flag
	mov	r1, r9	@, pSyntaxInfNew
	mov	r2, #188	@,
	bl	memcpy	@
	ldr	r3, [r4, #2384]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	add	r3, r3, #1	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt,
	str	r3, [r4, #2384]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	b	.L919	@
.L981:
	cmp	r5, #256	@ code,
	beq	.L924	@,
	bcc	.L921	@,
	cmp	r5, #432	@ code,
	bls	.L921	@,
	ldr	r3, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte
	mov	r0, r6	@, pBs
	ldr	r5, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	add	r5, r3, r5	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	bl	BsPos	@
	ldr	r1, .L987+8	@,
	add	r2, r5, r0, lsr #3	@, D.34318,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r6, r0, #0	@ D.34315,
	bne	.L937	@,
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	ldr	r1, .L987+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L987+16	@ tmp486,
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	mvneq	r6, #0	@ D.34315,
	beq	.L919	@,
	mov	r2, r6	@, D.34315
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mvn	r6, #0	@ D.34315,
	blx	r3	@ D.34319
	b	.L919	@
.L924:
	ldr	r3, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte
	mov	r0, r6	@, pBs
	ldr	r5, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	add	r5, r3, r5	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	bl	BsPos	@
	ldr	r1, .L987+20	@,
	add	r2, r5, r0, lsr #3	@, D.34318,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	picture_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L943	@,
	ldr	r3, .L987+16	@ tmp453,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	beq	.L936	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.34319
.L936:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r6, #0	@ D.34315,
	bl	MP2_ClearCurPacket	@
	mov	r2, #256	@,
	ldr	r1, .L987+24	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L919	@
.L980:
	ldr	r2, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r2, #4194304	@ D.34318,
	beq	.L917	@,
	orr	r2, r2, #8388608	@ D.34318, D.34318,
	strb	r3, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r2, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	mov	r2, #0	@ tmp329,
	str	r2, [r4, #2436]	@ tmp329, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	mov	r6, r3	@ D.34315, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L919	@
.L979:
	mov	r2, #28	@,
	mov	r1, r6	@, pBs
	add	r0, sp, #12	@ tmp551,,
	bl	memcpy	@
	mov	r1, #32	@,
	add	r0, sp, #12	@ tmp552,,
	bl	BsGet	@
	mov	r1, #32	@,
	str	r0, [sp, #4]	@ D.34316, %sfp
	add	r0, sp, #12	@ tmp553,,
	bl	BsGet	@
	ldr	ip, [sp, #4]	@ D.34316, %sfp
	movw	r2, #20036	@ tmp251,
	movw	r3, #20553	@ tmp254,
	movt	r2, 17221	@ tmp251,
	movt	r3, 18515	@ tmp254,
	cmp	r0, r2	@, tmp251
	cmpeq	ip, r3	@, D.34316, tmp254
	bne	.L916	@,
	ldr	r6, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r6, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L985	@,
.L918:
	mov	r3, #1	@ tmp296,
	mov	r6, #0	@ D.34315,
	strb	r3, [r4, #4081]	@ tmp296, pCtx_11(D)->IsStreamEndFlag
	b	.L919	@
.L921:
	sub	r3, r5, #256	@ D.34318, code,
	sub	r3, r3, #1	@ D.34318, D.34318,
	cmp	r3, #174	@ D.34318,
	bhi	.L939	@,
	ldr	r6, [r4, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited
	cmp	r6, #0	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited,
	beq	.L940	@,
.L942:
	ldr	r3, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #589824	@ D.34318,
	beq	.L943	@,
	orr	r3, r3, #4194304	@ D.34318, D.34318,
	mov	r0, r7	@, pCtx
	str	r3, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r7, #1	@ tmp537,
	mov	r1, r5	@, code
	str	r7, [r4, #2436]	@ tmp537, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_DecSlice	@
	cmp	r0, r7	@ D.34315,
	mov	r6, r0	@ D.34315,
	beq	.L919	@,
	mov	r2, r5	@, code
	mov	r0, r7	@, tmp537
	ldr	r1, .L987+28	@,
	mov	r6, #0	@ D.34315,
	bl	dprint_vfmw	@
	b	.L919	@
.L926:
	ldr	r3, [r4, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte
	mov	r0, r6	@, pBs
	ldr	r5, [r4, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	add	r5, r3, r5	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].BsOffset
	bl	BsPos	@
	ldr	r1, .L987+32	@,
	add	r2, r5, r0, lsr #3	@, D.34318,,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, pCtx
	bl	extension	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L943	@,
	ldr	r3, .L987+16	@ tmp508,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	beq	.L938	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.34319
.L938:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r6, #0	@ D.34315,
	bl	MP2_ClearCurPacket	@
	b	.L919	@
.L931:
	ldrb	r3, [r10]	@ zero_extendqisi2	@ pSyntaxInfOld_15->valid_flag, pSyntaxInfOld_15->valid_flag
	cmp	r3, #1	@ pSyntaxInfOld_15->valid_flag,
	beq	.L986	@,
.L939:
	ldr	r3, .L987+16	@ tmp544,
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	beq	.L943	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r6, r2	@ D.34315,
	blx	r3	@ D.34319
	b	.L919	@
.L937:
	ldr	r1, .L987+36	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L919	@
.L985:
	ldr	r3, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #4194304	@ D.34318,
	beq	.L918	@,
	orr	r3, r3, #8388608	@ D.34318, D.34318,
	strb	r6, [r4, #4081]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsStreamEndFlag
	str	r3, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	strb	r6, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r8, [r4, #2436]	@ tmp231, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L919	@
.L940:
	mov	r0, r7	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r7]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _182->s32DSDWaitFlag, _182->s32DSDWaitFlag
	cmp	r3, #1	@ _182->s32DSDWaitFlag,
	bne	.L942	@,
	b	.L919	@
.L986:
	mov	r2, #188	@,
	mov	r1, r10	@, pSyntaxInfOld
	mov	r0, r9	@, pSyntaxInfNew
	bl	memcpy	@
	ldr	r2, .L987+16	@ tmp399,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.34319, g_event_report
	bic	r3, r3, #7	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.34318, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.34319,
	beq	.L943	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r6, r2	@ D.34315,
	blx	ip	@ D.34319
	b	.L919	@
.L982:
	ldr	r3, .L987+16	@ tmp424,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	beq	.L935	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.34319
.L935:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r6, #0	@ D.34315,
	bl	MP2_ClearCurPacket	@
	mov	r2, #440	@,
	ldr	r1, .L987+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L919	@
.L984:
	ldr	r3, .L987+16	@ tmp350,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.34319, g_event_report
	cmp	r3, #0	@ D.34319,
	beq	.L930	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.34319
.L930:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r6, #0	@ D.34315,
	bl	MP2_ClearCurPacket	@
	movw	r2, #435	@,
	ldr	r1, .L987+44	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L919	@
.L988:
	.align	2
.L987:
	.word	.LC65
	.word	.LC63
	.word	.LC69
	.word	.LC70
	.word	g_event_report
	.word	.LC67
	.word	.LC68
	.word	.LC73
	.word	.LC72
	.word	.LC71
	.word	.LC66
	.word	.LC64
	.fnend
	.size	MP2_GetHDR, .-MP2_GetHDR
	.align	2
	.global	MPEG2DEC_Decode
	.type	MPEG2DEC_Decode, %function
MPEG2DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #72704	@ D.34347, pCtx,
	mov	r2, #160	@,
	add	r3, r3, #96	@ D.34347, D.34347,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #45312	@ tmp265, pCtx,
	add	r6, r0, #69632	@ tmp266, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r0, r3	@, D.34347
	add	r5, r5, #16	@ tmp265, tmp265,
	bl	memcpy	@
	ldr	r2, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r1, r0	@, D.34347
	mov	r0, r5	@, tmp265
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L990	@,
	ldr	r1, .L1021	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r7, #0	@ D.34346,
.L991:
	mov	r0, r7	@, D.34346
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L990:
	add	r0, r4, #71680	@, pCtx,
	ldr	r2, [r6, #2352]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	add	r0, r0, #576	@,,
	ldr	r1, [r6, #2336]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	bl	BsInit	@
	ldr	r3, [r4]	@ D.34351, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1017	@,
.L992:
	ldr	r3, [r6, #2380]	@ pCtx_7(D)->CodecInfo.StreamIntegrality, pCtx_7(D)->CodecInfo.StreamIntegrality
	str	r3, [r6, #2564]	@ pCtx_7(D)->CodecInfo.StreamIntegrality, pCtx_7(D)->CodecInfo.LastStreamIntegrality
.L993:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r0, r0, #1	@ D.34353,,
	cmp	r0, #1	@ D.34353,
	bls	.L1018	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r7, r0, #0	@ D.34352,
	beq	.L1019	@,
	cmn	r7, #1	@ D.34352,
	beq	.L1016	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r7, r0, #0	@ D.34352,
	bne	.L999	@,
	add	r1, r5, #26624	@, tmp265,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, .L1021+4	@ tmp219,
	ldr	r3, [r3]	@ D.34355, g_event_report
	cmp	r3, #0	@ D.34355,
	beq	.L1000	@,
	mov	r2, r7	@, D.34352
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.34355
.L1000:
	ldr	r1, .L1021+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r7, #0	@ D.34346,
	b	.L991	@
.L1018:
	ldr	r3, [r4]	@ D.34351, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L995	@,
	ldr	r3, [r3, #728]	@ _32->s32DSDWaitFlag, _32->s32DSDWaitFlag
	cmp	r3, #1	@ _32->s32DSDWaitFlag,
	beq	.L1016	@,
.L995:
	add	r1, r5, #26624	@, tmp265,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	add	r1, r1, #12	@,,
	mov	r7, #0	@ D.34346,
	bl	MP2_ClearCurPacket	@
	mov	r0, r7	@, D.34346
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1019:
	add	r1, r5, #26624	@, tmp265,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, .L1021+4	@ tmp207,
	ldr	r3, [r3]	@ D.34355, g_event_report
	cmp	r3, #0	@ D.34355,
	beq	.L997	@,
	mov	r2, r7	@, D.34352
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.34355
.L997:
	ldr	r1, .L1021+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L1016:
	mov	r7, #0	@ D.34346,
	mov	r0, r7	@, D.34346
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1017:
	ldr	r3, [r3, #728]	@ _21->s32DSDWaitFlag, _21->s32DSDWaitFlag
	cmp	r3, #1	@ _21->s32DSDWaitFlag,
	ldreq	r3, [r6, #2564]	@ pCtx_7(D)->CodecInfo.LastStreamIntegrality, pCtx_7(D)->CodecInfo.LastStreamIntegrality
	streq	r3, [r6, #2380]	@ pCtx_7(D)->CodecInfo.LastStreamIntegrality, pCtx_7(D)->CodecInfo.StreamIntegrality
	bne	.L992	@,
	b	.L993	@
.L999:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r7, r0, #0	@ D.34346,
	beq	.L1020	@,
	ldr	r7, [r6, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset
	ldr	r3, [r6, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte
	ldr	r2, [r6, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	mov	r7, r7, asl #3	@ D.34346, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset,
	add	r3, r3, r2	@ D.34348, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r6, #2432]	@ D.34348, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte
	b	.L991	@
.L1020:
	mov	r2, #1	@,
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].CurFsID
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	add	r1, r5, #26624	@, tmp265,
	add	r1, r1, #12	@,,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, .L1021+4	@ tmp239,
	ldr	r3, [r3]	@ D.34355, g_event_report
	cmp	r3, #0	@ D.34355,
	beq	.L1002	@,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r2, r7	@, D.34346
	mov	r1, #113	@,
	blx	r3	@ D.34355
.L1002:
	ldr	r1, .L1021+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L991	@
.L1022:
	.align	2
.L1021:
	.word	.LC74
	.word	g_event_report
	.word	.LC76
	.word	.LC75
	.word	.LC77
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
	.type	__func__.30974, %object
	.size	__func__.30974, 19
__func__.30974:
	.ascii	"MP2_DecodingDecide\000"
	.space	1
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC2:
	.ascii	"mp2 actual frame size(%dx%d) exeed max config(%dx%d"
	.ascii	")\012\000"
	.space	2
.LC3:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC4:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC5:
	.ascii	"ERROR: frm %d, integrality: %#x\012\000"
	.space	3
.LC6:
	.ascii	"ERROR: frm %d, No Img buffer is allocated\012\000"
	.space	1
.LC7:
	.ascii	"----------------- mp2 Imode -> %d -----------------"
	.ascii	"-\012\000"
	.space	2
.LC8:
	.ascii	"frm %d pic type %d struct is %d total pos %#x\012\000"
	.space	1
.LC9:
	.ascii	"NOTE: Drop non-I, cur is B\012\000"
.LC10:
	.ascii	"NOTE: Drop non-I, cur is P\012\000"
.LC11:
	.ascii	"NOTE: Drop non-I\012\000"
	.space	2
.LC12:
	.ascii	"NOTE: Drop B\012\000"
	.space	2
.LC13:
	.ascii	"%s %d pFwdImg = NULL,  pBwdImg = NULL!!\012\000"
	.space	3
.LC14:
	.ascii	"fuction return value is null,%s %d !!\012\000"
	.space	1
.LC15:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC16:
	.ascii	"dec B frame, bwd ref err(%d) > ref_thr(%d)\012\000"
.LC17:
	.ascii	"dec B frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC18:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC19:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC20:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC21:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC22:
	.ascii	"ERROR: frm %d, lost one field\012\000"
	.space	1
.LC23:
	.ascii	"ERROR: frm %d, lost one field flg = %d, last_struct"
	.ascii	" = %d\012\000"
	.space	2
.LC24:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC25:
	.ascii	"dec_pts: %lld Usertag: %lld\012\000"
	.space	3
.LC26:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC27:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC28:
	.ascii	"line: %d(pCur, pFwd, pBwd)(%p, %p, %p)\012\000"
.LC29:
	.ascii	"CurFsID(fwd%d,%d,bwd%d) abnormal!(%p,%p,%p)\012\000"
	.space	3
.LC30:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,pmv = %p,%p,%p,%p,%p\012"
	.ascii	"\000"
	.space	2
.LC31:
	.ascii	"\012mpeg2 copy last 3 bytes of the first packet!\012"
	.ascii	"\012\000"
.LC32:
	.ascii	"pMp2CodecInfo->pUsrDatArray[%d] is null\012\000"
	.space	3
.LC33:
	.ascii	"ERROR: unsupported profile %d\012\000"
	.space	1
.LC34:
	.ascii	"ERROR: unsupported level %d\012\000"
	.space	3
.LC35:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC36:
	.ascii	"Protocol %d\012\000"
	.space	3
.LC37:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC38:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC39:
	.ascii	"line %d, pPacket->StreamPack[1].IsLastSeg = %d\012\000"
.LC40:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC41:
	.ascii	"pImg is null, pCurImg %#x pBwdImg %#x pFwdImg %#x\012"
	.ascii	"\000"
	.space	1
.LC42:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC43:
	.ascii	"err(%d) > out_thr(%d)\012\000"
	.space	1
.LC44:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC45:
	.ascii	"%-40s%20d\012\000"
	.space	1
.LC46:
	.ascii	"slice_vertical_position\000"
.LC47:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC48:
	.ascii	"extra_bit_slice\000"
.LC49:
	.ascii	"tmpSyntax is %d\012\000"
	.space	3
.LC50:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC51:
	.ascii	"intra_slice\000"
.LC52:
	.ascii	"reserved_bits\000"
	.space	2
.LC53:
	.ascii	"extra_infrmation_slice\000"
	.space	1
.LC54:
	.ascii	"Slice num = %d >= %d\012\000"
	.space	2
.LC55:
	.ascii	"seg info is wrong! IsLastSeg[0] = %d, IsLastSeg[1] "
	.ascii	"= %d\012\000"
	.space	3
.LC56:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC57:
	.ascii	"macroblock_escape ERROR\012\000"
	.space	3
.LC58:
	.ascii	"macroblock_escape\000"
	.space	2
.LC59:
	.ascii	"SlcStartMbNum = %d > PicEndMum = %d\012\000"
	.space	3
.LC60:
	.ascii	"FirstMbInSliceFlag = %d\012\000"
	.space	3
.LC61:
	.ascii	"MP2_GetFirstMbInSlice Failed!\012\000"
	.space	1
.LC62:
	.ascii	"MP2_WriteSliceInfo Failed!\012\000"
.LC63:
	.ascii	"found sh %#x\012\000"
	.space	2
.LC64:
	.ascii	"SEQUENCE_HEADER_CODE Bitstream is not enough!\012\000"
	.space	1
.LC65:
	.ascii	"found gh %#x\012\000"
	.space	2
.LC66:
	.ascii	"GROUP_START_CODE Bitstream is not enough!\012\000"
	.space	1
.LC67:
	.ascii	"found ph %#x\012\000"
	.space	2
.LC68:
	.ascii	"PICTURE_START_CODE Bitstream is not enough!\012\000"
	.space	3
.LC69:
	.ascii	"found ud %#x\012\000"
	.space	2
.LC70:
	.ascii	"get usd err\012\000"
	.space	3
.LC71:
	.ascii	"cann't get ud pointer\012\000"
	.space	1
.LC72:
	.ascii	"found ext %#x\012\000"
	.space	1
.LC73:
	.ascii	"MP2_DecSlice is wrong!\012\000"
.LC74:
	.ascii	"line %d, MP2_ReceivePacket receive packet failed!\012"
	.ascii	"\000"
	.space	1
.LC75:
	.ascii	"MP2 Decode Decide is wrong!\012\000"
	.space	3
.LC76:
	.ascii	"MP2 get picture info is wrong!\012\000"
.LC77:
	.ascii	"MP2 dec new pic failed!\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
