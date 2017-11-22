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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(mpeg2)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.mpeg2.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/mpeg2.o
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
	sub	r0, r1, #3	@ D.39626, CodeLen,
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
	rsb	r3, r0, r3	@ D.39625, pCode, ptr
	sub	r0, r3, #2	@ D.39626, D.39625,
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
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r5, #3704]	@ pSyntaxInfNew, pCtx_12(D)->pSyntaxInfNew
	ldr	r2, [r3, #48]	@ D.39631, pSyntaxInfNew_14->horizontal_size
	cmp	r2, #31	@ D.39631,
	bls	.L17	@,
	ldr	r3, [r3, #52]	@ D.39631, pSyntaxInfNew_14->vertical_size
	cmp	r3, #31	@ D.39631,
	bls	.L17	@,
	ldr	r1, [r0]	@ D.39632, pCtx_12(D)->pstExtraData
	ldr	r0, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	cmp	r0, #25	@ _17->eCapLevel,
	beq	.L34	@,
	mov	r7, r2	@ PicWidth, D.39631
	mov	r8, r3	@ PicHeight, D.39631
	mov	r10, #5	@ D.39635,
	mov	r6, #2	@ PmvNum,
	mov	r9, #3	@ DecFsNum,
.L23:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp187,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.39632, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp163,
	ldr	r1, [r3, #20]	@ _45->s32DnrDispOutEnable, _45->s32DnrDispOutEnable
	str	r8, [sp, #36]	@ PicHeight, FspInstCfg.s32DispFsHeight
	ldr	r3, [r3, #32]	@ _45->eCapLevel, _45->eCapLevel
	str	r7, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	cmp	r3, #24	@ _45->eCapLevel,
	str	r8, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r1, [sp, #4]	@ _45->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	str	r7, [sp, #32]	@ PicWidth, FspInstCfg.s32DispFsWidth
	strb	r2, [sp, #6]	@ tmp163, FspInstCfg.s32RprEnable
	beq	.L25	@,
	uxtb	r3, r6	@ D.39630, PmvNum
	strb	r9, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r10, [sp, #11]	@ D.39635, FspInstCfg.s32ExpectedDispFsNum
.L27:
	add	r1, sp, #4	@ tmp188,,
	ldr	r0, [r5, #4064]	@, pCtx_12(D)->ChanID
	strb	r3, [sp, #12]	@ D.39630, FspInstCfg.s32ExpectedPmvNum
	mov	r3, #0	@ tmp169,
	strb	r3, [sp, #8]	@ tmp169, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.39634,
	beq	.L35	@,
.L17:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.39629,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L35:
	ldr	r1, [r4]	@ D.39632, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r5, #4064]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _66->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _66->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, #1	@ D.39629,
	bne	.L17	@,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L34:
	ldr	r0, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r0, #0	@ _17->stChanOption.s32ReRangeEn,
	bne	.L21	@,
	ldr	r7, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	cmp	r2, r7	@ D.39631, PicWidth
	bhi	.L17	@,
	ldr	r8, [r1, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r8	@ D.39631, PicHeight
	bhi	.L17	@,
	ldr	r3, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L32	@,
.L29:
	mov	r6, #1	@ PmvNum,
.L24:
	ldrb	r10, [r1, #616]	@ zero_extendqisi2	@ D.39635, _17->stChanOption.s32DisplayFrameNum
	b	.L23	@
.L21:
	ldr	r0, [r1, #568]	@ _17->stChanOption.s32MaxWidth, _17->stChanOption.s32MaxWidth
	cmp	r2, r0	@ D.39631, _17->stChanOption.s32MaxWidth
	bhi	.L17	@,
	ldr	r0, [r1, #572]	@ _17->stChanOption.s32MaxHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r0	@ D.39631, _17->stChanOption.s32MaxHeight
	bhi	.L17	@,
	ldr	r0, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r7, r2	@ PicWidth, D.39631
	mov	r8, r3	@ PicHeight, D.39631
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r0, #0	@ _17->stChanOption.s32SupportBFrame,
	beq	.L29	@,
.L32:
	add	r3, r9, #1	@ PmvNum, DecFsNum,
	cmp	r3, #17	@ PmvNum,
	movlt	r6, r3	@ PmvNum, PmvNum
	movge	r6, #17	@ PmvNum,
	b	.L24	@
.L25:
	strb	r2, [sp, #9]	@ tmp163, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.39630,
	strb	r10, [sp, #11]	@ D.39635, FspInstCfg.s32ExpectedDispFsNum
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
	add	r4, r0, #69632	@ tmp543, pCtx,
	ldr	r3, [r4, #2380]	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r7, [r4, #3704]	@ pSyntaxInfNew, pCtx_13(D)->pSyntaxInfNew
	tst	r3, #8388608	@ D.39641,
	mvneq	r5, #0	@ D.39640,
	bne	.L124	@,
.L37:
	mov	r0, r5	@, D.39640
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L124:
	ldrb	r2, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_15->picture_structure, pSyntaxInfNew_15->picture_structure
	cmp	r2, #3	@ pSyntaxInfNew_15->picture_structure,
	beq	.L38	@,
	ldr	r2, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	cmp	r2, #1	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field,
	beq	.L38	@,
	ands	r5, r3, #255	@ D.39640, D.39641,
	mov	r6, r0	@ pCtx, pCtx
	beq	.L40	@,
.L126:
	ldr	r3, .L137	@ tmp251,
	ldr	r3, [r3]	@ D.39644, g_event_report
	cmp	r3, #0	@ D.39644,
	beq	.L42	@,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #103	@,
	blx	r3	@ D.39644
.L42:
	mov	r5, #0	@ D.39640,
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.39640
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L40:
	ldr	r3, [r4, #2428]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Imgbuf_allocated, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Imgbuf_allocated,
	beq	.L42	@,
	ldr	r3, [r4, #2368]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode
	ldr	r1, [r0]	@ D.39648, pCtx_13(D)->pstExtraData
	sub	r3, r3, #2	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode,
	cmp	r3, #1	@ D.39641,
	ldr	r3, [r1, #8]	@ D.39643,
	bls	.L125	@,
.L44:
	sub	r2, r3, #1	@ tmp360, D.39641,
	str	r3, [r4, #2368]	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].UsedDecMode
	cmp	r2, #4	@ tmp360,
	ldrls	pc, [pc, r2, asl #2]	@ tmp360
	b	.L81	@
.L50:
	.word	.L49
	.word	.L51
	.word	.L59
	.word	.L53
	.word	.L54
.L38:
	ldr	r2, [r4, #4068]	@ pCtx_13(D)->numTotalFrame, pCtx_13(D)->numTotalFrame
	ands	r5, r3, #255	@ D.39640, D.39641,
	mov	r6, r0	@ pCtx, pCtx
	add	r2, r2, #1	@ D.39643, pCtx_13(D)->numTotalFrame,
	str	r2, [r4, #4068]	@ D.39643, pCtx_13(D)->numTotalFrame
	beq	.L40	@,
	b	.L126	@
.L59:
	mov	r8, #0	@ ret,
.L48:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	bic	r3, r3, #14155776	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r3, [r6]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r3, [r3, #528]	@ _121->s32SupportAllP, _121->s32SupportAllP
	cmp	r3, #1	@ _121->s32SupportAllP,
	ldr	r3, [r4, #2420]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum
	beq	.L127	@,
	cmp	r3, #0	@ D.39641,
	bne	.L69	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	sub	r2, r3, #2	@ tmp434, D.39642,
	cmp	r2, #1	@ tmp434,
	bls	.L70	@,
.L71:
	cmp	r3, #3	@ D.39642,
	beq	.L70	@,
.L67:
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	mov	r9, r0	@ pFwdImg,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	clz	r3, r9	@ D.39646, pFwdImg
	mov	r3, r3, lsr #5	@ D.39646, D.39646,
	clz	r2, r0	@ D.39646,
	mov	r2, r2, lsr #5	@ D.39646, D.39646,
	orrs	r1, r2, r3	@ tmp545, D.39646, D.39646
	bne	.L42	@,
	ldrb	r1, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	cmp	r1, #2	@ D.39642,
	beq	.L128	@,
	cmp	r1, #3	@ D.39642,
	beq	.L129	@,
.L73:
	cmp	r8, #0	@ ret,
	movne	r5, #1	@ D.39640,
	bne	.L37	@,
	ldrb	r3, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_15->picture_structure, pSyntaxInfNew_15->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_15->picture_structure,
	beq	.L75	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field,
	bne	.L37	@,
.L75:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_15->progressive_sequence, pSyntaxInfNew_15->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_15->progressive_sequence,
	beq	.L130	@,
	ldrb	r3, [r7, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_15->progressive_frame, pSyntaxInfNew_15->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_15->progressive_frame,
	beq	.L131	@,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r3, #1	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r3, [r4, #2544]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.39643, D.39643,
	str	r3, [r4, #2540]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
.L77:
	ldr	r2, [r4, #2536]	@ pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	add	r2, r2, #1	@ D.39643, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.39643, pCtx_13(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, #1	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Frame_Cnt
	b	.L37	@
.L51:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	sub	r2, r3, #2	@ tmp375, D.39642,
	cmp	r2, #1	@ tmp375,
	bls	.L60	@,
.L81:
	mov	r8, #1	@ ret,
	b	.L48	@
.L54:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	cmp	r3, #1	@ D.39642,
	beq	.L132	@,
.L60:
	cmp	r3, #2	@ D.39642,
	beq	.L133	@,
.L55:
	ldrb	r3, [r7, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_15->picture_structure, pSyntaxInfNew_15->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_15->picture_structure,
	beq	.L59	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	mov	r8, #0	@ ret,
	clz	r3, r3	@ D.39646, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	mov	r3, r3, lsr #5	@ D.39646, D.39646,
	str	r3, [r4, #2392]	@ D.39646, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Second_Field
	b	.L48	@
.L53:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	cmp	r3, #1	@ D.39642,
	beq	.L134	@,
	cmp	r3, #3	@ D.39642,
	beq	.L135	@,
.L63:
	cmp	r3, #2	@ D.39642,
	moveq	r8, #1	@ tmp411,
	streq	r8, [r4, #4076]	@ tmp411, pCtx_13(D)->PPicFound
	bne	.L81	@,
	b	.L48	@
.L49:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_15->picture_coding_type, pSyntaxInfNew_15->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_15->picture_coding_type,
	bne	.L81	@,
	b	.L55	@
.L69:
	cmp	r3, #1	@ D.39641,
	bhi	.L67	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	b	.L71	@
.L127:
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum,
	bne	.L67	@,
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	cmp	r3, #3	@ D.39642,
	beq	.L70	@,
	cmp	r3, #2	@ D.39642,
	bne	.L67	@,
	bl	vfmw_dprint_nothing	@
	b	.L67	@
.L125:
	cmp	r3, #4	@ D.39643,
	cmpne	r3, #1	@, D.39643,
	bhi	.L44	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	orr	r3, r3, #128	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality,
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	str	r3, [r4, #2380]	@ D.39641, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].StreamIntegrality
	bl	FSP_GetFsImagePtr	@
	subs	r8, r0, #0	@ pImg,
	beq	.L46	@,
	ldr	r1, [r8, #192]	@, pImg_45->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #196]	@, pImg_45->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #200]	@, pImg_45->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r8, #204]	@, pImg_45->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FreeUsdByDec	@
	str	r5, [r8, #192]	@ D.39640, pImg_45->p_usrdat
	str	r5, [r8, #196]	@ D.39640, pImg_45->p_usrdat
	mov	r2, #1	@,
	str	r5, [r8, #200]	@ D.39640, pImg_45->p_usrdat
	str	r5, [r8, #204]	@ D.39640, pImg_45->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2456]	@ D.39640, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	str	r5, [r4, #2460]	@ D.39640, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L136	@,
.L46:
	mov	r3, #0	@ tmp355,
	str	r3, [r4, #2420]	@ tmp355, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].RefNum
	ldr	r1, [r6]	@ D.39648, pCtx_13(D)->pstExtraData
	ldr	r3, [r1, #8]	@ D.39641, _207->s32DecMode
	b	.L44	@
.L128:
	cmp	r3, #0	@ D.39646,
	bne	.L42	@,
	ldr	r3, [r6]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r2, [r9, #180]	@ pFwdImg_137->error_level, pFwdImg_137->error_level
	ldr	r3, [r3]	@ _148->s32RefErrThr, _148->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_137->error_level, _148->s32RefErrThr
	bhi	.L42	@,
	b	.L73	@
.L129:
	cmp	r3, #0	@ D.39646,
	bne	.L42	@,
	ldr	r3, [r6]	@ pCtx_13(D)->pstExtraData, pCtx_13(D)->pstExtraData
	ldr	r1, [r9, #180]	@ pFwdImg_137->error_level, pFwdImg_137->error_level
	ldr	r3, [r3]	@ D.39641, _154->s32RefErrThr
	cmp	r1, r3	@ pFwdImg_137->error_level, D.39641
	bhi	.L42	@,
	cmp	r2, #0	@ D.39646,
	bne	.L42	@,
	ldr	r2, [r0, #180]	@ pBwdImg_141->error_level, pBwdImg_141->error_level
	cmp	r3, r2	@ D.39641, pBwdImg_141->error_level
	bcs	.L73	@,
	b	.L42	@
.L70:
	bl	vfmw_dprint_nothing	@
	mov	r8, #0	@ ret,
	b	.L67	@
.L130:
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.39643, pSyntaxInfNew_15->repeat_first_field
	ldrb	r3, [r7, #10]	@ zero_extendqisi2	@ D.39643, pSyntaxInfNew_15->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.39643, D.39643, D.39643
	add	r3, r3, #1	@ D.39643, D.39643,
	add	r3, r3, r1	@ D.39643, D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.39643, D.39643,
	str	r3, [r4, #2540]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	b	.L77	@
.L133:
	add	r3, r6, #45056	@ tmp385, pCtx,
	ldrb	r2, [r3, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct
	cmp	r2, #3	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].Last_FieldStruct,
	beq	.L55	@,
	ldrb	r3, [r3, #272]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].LastDecPicCodingType,
	bne	.L55	@,
	b	.L81	@
.L131:
	ldr	r2, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	ldr	r3, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	add	r2, r2, #1	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt,
	str	r2, [r4, #2544]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFrmCnt
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ D.39643, pSyntaxInfNew_15->repeat_first_field
	add	r2, r2, #2	@ D.39643, D.39643,
	add	r3, r3, r2	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt, D.39643
	str	r3, [r4, #2540]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].GopHist[3].GopFldCnt
	b	.L77	@
.L132:
	ldr	r3, [r1, #732]	@ _208->s32firstIdecodedflag, _208->s32firstIdecodedflag
	cmp	r3, #0	@ _208->s32firstIdecodedflag,
	beq	.L81	@,
	b	.L55	@
.L135:
	ldr	r3, [r4, #4076]	@ pCtx_13(D)->PPicFound, pCtx_13(D)->PPicFound
	cmp	r3, #0	@ pCtx_13(D)->PPicFound,
	beq	.L55	@,
	b	.L81	@
.L134:
	mov	r3, #0	@ tmp393,
	str	r3, [r4, #4076]	@ tmp393, pCtx_13(D)->PPicFound
	ldrb	r3, [r7, #22]	@ zero_extendqisi2	@ D.39642, pSyntaxInfNew_15->picture_coding_type
	cmp	r3, #3	@ D.39642,
	bne	.L63	@,
	b	.L55	@
.L136:
	ldr	r0, [r4, #4064]	@, pCtx_13(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.39643, MEM[(struct MP2CODECINF *)pCtx_13(D) + 45328B].BwdFsID
	b	.L46	@
.L138:
	.align	2
.L137:
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
	ldr	r1, .L146	@,
	mov	r0, sp	@,
	bl	memcpy	@
	add	r3, r4, #69632	@ tmp123, pCtx,
	ldr	r0, [r4, #300]	@ QuantScale, MEM[(struct MP2_DEC_PARAM_S *)pCtx_3(D) + 8B].SlcStr[0].quantiser_scale_code
	ldr	r2, [r3, #2416]	@ pCtx_3(D)->CodecInfo.MpegFlag, pCtx_3(D)->CodecInfo.MpegFlag
	cmp	r2, #1	@ pCtx_3(D)->CodecInfo.MpegFlag,
	beq	.L140	@,
	ldr	r3, [r3, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ _8->q_scale_type, _8->q_scale_type
	cmp	r3, #0	@ _8->q_scale_type,
	addne	r3, sp, #128	@ tmp132,,
	moveq	r0, r0, asl #1	@ QuantScale, QuantScale,
	addne	r0, r3, r0, lsl #2	@ tmp129, tmp132, QuantScale,
	ldrne	r0, [r0, #-128]	@ QuantScale, Non_Linear_quantizer_scale
.L140:
	add	sp, sp, #128	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L147:
	.align	2
.L146:
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
	ldr	r3, [r4, #3704]	@ D.39668, pCtx_2(D)->pSyntaxInfNew
	ldr	r6, [r4, #2520]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCnt
	ldr	r5, [r4, #2532]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCnt
	ldrb	r2, [r3, #22]	@ zero_extendqisi2	@ _13->picture_coding_type, _13->picture_coding_type
	ldr	lr, [r3, #72]	@ D.39669, _13->frame_rate
	cmp	r2, #1	@ _13->picture_coding_type,
	ldr	ip, [r4, #2516]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFldCnt
	ldr	r1, [r4, #2528]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFldCnt
	ldr	r2, [r4, #2512]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[1].GopFrmCntNoRpt
	ldr	r0, [r4, #2524]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].GopHist[2].GopFrmCntNoRpt
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	cmp	lr, #0	@ D.39669,
	add	r0, r2, r0	@ FrmNumNoRpt, D.39667, D.39667
	add	r1, ip, r1	@ FldNum, D.39667, D.39667
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
	movne	r0, r0, asl #1	@ D.39667, FrmNumNoRpt,
	addeq	r1, r6, r5	@, D.39667, D.39667
	mul	r0, lr, r0	@, D.39669, D.39667
	bl	__aeabi_idiv	@
	mov	r3, #100	@ tmp190,
	mul	r0, r3, r0	@ D.39667, tmp190, D.39667
	add	r3, r0, #1020	@ tmp193, D.39667,
	cmp	r0, #0	@ D.39667,
	add	r3, r3, #3	@ tmp193, tmp193,
	movlt	r0, r3	@ D.39667, tmp193
	mov	r0, r0, asr #10	@ D.39667, D.39667,
	str	r0, [r4, #2548]	@ D.39667, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].RealFrmRate
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
	sub	r3, r3, #1	@ D.39676, _4->aspect_ratio_information,
	cmp	r3, #2	@ D.39676,
	ldrls	r2, .L157	@ tmp121,
	addls	r3, r2, r3, lsl #2	@ tmp122, tmp121, D.39676,
	ldrls	r0, [r3, #128]	@ D.39675, CSWTCH.44
	movhi	r0, #0	@ D.39675,
	bx	lr	@
.L158:
	.align	2
.L157:
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
	ldrb	r3, [r5, #22]	@ zero_extendqisi2	@ D.39680, pSyntaxInfNew_12->picture_coding_type
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ D.39680, pSyntaxInfNew_12->progressive_sequence
	cmp	r3, #4	@ D.39680,
	ldr	r2, [r4, #140]	@ pImg_17->format, pImg_17->format
	subne	r3, r3, #1	@ D.39681, D.39680,
	ldrb	lr, [r5, #9]	@ zero_extendqisi2	@ D.39680, pSyntaxInfNew_12->picture_structure
	andne	r3, r3, #3	@ D.39683, D.39681,
	moveq	r3, #0	@ D.39683,
	cmp	r1, #0	@ D.39680,
	ubfx	r2, r2, #10, #2	@ fldflg, pImg_17->format,,
	orr	r2, r2, lr	@ fldflg, fldflg, D.39680
	ldr	ip, [r5, #128]	@ vfmt, pSyntaxInfNew_12->video_format
	moveq	r0, #1	@ sfmt,
	movne	r0, #0	@ sfmt,
	movne	lr, #4096	@ D.39683,
	beq	.L195	@,
.L162:
	ldr	r1, [r7, #3704]	@ pCtx_9(D)->pSyntaxInfNew, pCtx_9(D)->pSyntaxInfNew
	and	ip, ip, #3	@ D.39683, vfmt,
	and	r10, r2, #3	@ D.39683, fldflg,
	mov	ip, ip, asl #5	@ D.39683, D.39683,
	ldr	r1, [r1, #84]	@ _148->aspect_ratio_information, _148->aspect_ratio_information
	orr	ip, ip, r0, asl #8	@ D.39683, D.39683, sfmt,
	orr	r2, ip, r10, asl #10	@ D.39683, D.39683, D.39683,
	str	r3, [r4, #132]	@ D.39683, pImg_17->top_fld_type
	sub	r1, r1, #1	@ D.39683, _148->aspect_ratio_information,
	str	r3, [r4, #136]	@ D.39683, pImg_17->bottom_fld_type
	cmp	r1, #2	@ D.39683,
	orr	r3, r2, r3	@ D.39683, D.39683, D.39683
	orr	r3, r3, lr	@ D.39683, D.39683, D.39683
	mov	r0, r4	@, pImg
	ldrls	r9, .L199	@ tmp247,
	movhi	r1, #0	@ D.39690,
	movhi	r9, r1	@ D.39683, D.39690
	addls	r1, r9, r1, lsl #2	@ tmp248, tmp247, D.39683,
	ldrls	r1, [r1, #128]	@ D.39690, CSWTCH.44
	andls	r9, r1, #7	@ D.39683, D.39690,
	movls	r9, r9, asl #14	@ D.39683, D.39683,
	orr	r9, r3, r9	@ D.39683, D.39683, D.39683
	str	r9, [r4, #140]	@ D.39683, pImg_17->format
	bl	SetAspectRatio	@
	mov	r3, #3	@ tmp262,
	str	r3, [r4, #300]	@ tmp262, pImg_17->ImageDnr.video_standard
	mov	r2, #1	@ tmp265,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_12->picture_structure, pSyntaxInfNew_12->picture_structure
	strb	r2, [r4, #295]	@ tmp265, pImg_17->ImageDnr.use_pic_qp_en
	cmp	r3, #3	@ pSyntaxInfNew_12->picture_structure,
	moveq	r3, #0	@ D.39679,
	movne	r3, #4	@ D.39679,
	strb	r3, [r4, #288]	@ D.39679, pImg_17->ImageDnr.pic_structure
	ldr	r3, [r8, #4]	@ D.39684, pCtx_9(D)->pMp2DecParam
	cmp	r3, #0	@ D.39684,
	streqb	r3, [r4, #295]	@ D.39684, pImg_17->ImageDnr.use_pic_qp_en
	ldrneb	r3, [r3, #144]	@ zero_extendqisi2	@ D.39681, _63->EstmatedPicQp
	moveq	r2, #32	@ tmp269,
	moveq	r3, r2	@ D.39681, tmp269
	streq	r2, [r4, #304]	@ tmp269, pImg_17->ImageDnr.QP_Y
	mov	r2, #1	@ tmp270,
	strb	r2, [r4, #293]	@ tmp270, pImg_17->ImageDnr.chroma_format_idc
	strne	r3, [r4, #304]	@ D.39681, pImg_17->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ D.39681, pImg_17->ImageDnr.QP_V
	str	r3, [r4, #308]	@ D.39681, pImg_17->ImageDnr.QP_U
	ldr	r3, [r5, #72]	@ D.39683, pSyntaxInfNew_12->frame_rate
	str	r3, [r4, #168]	@ D.39683, pImg_17->frame_rate
	ldr	r3, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, r2	@ _75->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L196	@,
.L169:
	ldr	r3, [r5, #48]	@ D.39683, pSyntaxInfNew_12->horizontal_size
	str	r3, [r4, #144]	@ D.39683, pImg_17->image_width
	ldr	r3, [r5, #52]	@ D.39690, pSyntaxInfNew_12->vertical_size
	str	r3, [r4, #148]	@ D.39690, pImg_17->image_height
.L171:
	ldr	r2, [r8]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r2, [r2, #32]	@ _89->eCapLevel, _89->eCapLevel
	cmp	r2, #25	@ _89->eCapLevel,
	beq	.L197	@,
.L172:
	ldr	r2, [r4, #144]	@ D.39683, pImg_17->image_width
	mov	r1, r3, lsr #1	@ D.39683, D.39690,
	str	r1, [r4, #164]	@ D.39683, pImg_17->disp_center_y
	mov	r1, r2, lsr #1	@ D.39683, D.39683,
	str	r1, [r4, #160]	@ D.39683, pImg_17->disp_center_x
	ldr	r1, [r5, #148]	@ D.39683, pSyntaxInfNew_12->display_horizontal_size
	cmp	r1, #0	@ D.39683,
	beq	.L173	@,
	ldr	r0, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r0, #0	@ pSyntaxInfNew_12->display_vertical_size,
	beq	.L173	@,
	cmp	r1, r2	@ D.39683, D.39683
	movcs	r1, r2	@ D.39683, D.39683
	str	r1, [r4, #152]	@ D.39683, pImg_17->disp_width
	ldr	r2, [r5, #152]	@ pSyntaxInfNew_12->display_vertical_size, pSyntaxInfNew_12->display_vertical_size
	cmp	r3, r2	@ D.39690, pSyntaxInfNew_12->display_vertical_size
	movcs	r3, r2	@ D.39683, pSyntaxInfNew_12->display_vertical_size
	str	r3, [r4, #156]	@ D.39683, pImg_17->disp_height
	b	.L174	@
.L173:
	str	r2, [r4, #152]	@ D.39683, pImg_17->disp_width
	str	r3, [r4, #156]	@ D.39690, pImg_17->disp_height
.L174:
	ldrb	r3, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_sequence, pSyntaxInfNew_12->progressive_sequence
	mov	r0, r8	@, pCtx
	str	r3, [r4, #340]	@ pSyntaxInfNew_12->progressive_sequence, pImg_17->optm_inf.IsProgressiveSeq
	ldrb	r3, [r5, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_12->progressive_frame, pSyntaxInfNew_12->progressive_frame
	str	r3, [r4, #344]	@ pSyntaxInfNew_12->progressive_frame, pImg_17->optm_inf.IsProgressiveFrm
	ldr	r3, [r5, #144]	@ pSyntaxInfNew_12->matrix_coefficients, pSyntaxInfNew_12->matrix_coefficients
	str	r3, [r4, #352]	@ pSyntaxInfNew_12->matrix_coefficients, pImg_17->optm_inf.MatrixCoef
	bl	MP2_CalcRealEncFrameRate	@
	ldr	r3, [r7, #2548]	@ D.39681, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].RealFrmRate
	str	r3, [r4, #348]	@ D.39681, pImg_17->optm_inf.RealFrmRate
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L195:
	cmp	lr, #3	@ D.39680,
	beq	.L198	@,
	ldr	r1, [r7, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field
	cmp	r1, #0	@ MEM[(struct MP2CODECINF *)pCtx_9(D) + 45328B].Second_Field,
	bne	.L164	@,
	sub	lr, lr, #1	@ D.39683, D.39680,
	clz	lr, lr	@ D.39683, D.39683
	mov	lr, lr, lsr #5	@ D.39683, D.39683,
	mov	lr, lr, asl #12	@ D.39683, D.39683,
	b	.L162	@
.L196:
	ldr	r3, [r6, #56]	@ D.39683, pSyntaxInfOld_13->mb_width
	cmp	r3, #0	@ D.39683,
	beq	.L169	@,
	ldr	r2, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	cmp	r2, #0	@ pSyntaxInfOld_13->mb_height,
	beq	.L169	@,
	ldrb	r2, [r7, #4083]	@ zero_extendqisi2	@ pCtx_9(D)->DSDNeedFlushFrame, pCtx_9(D)->DSDNeedFlushFrame
	cmp	r2, #0	@ pCtx_9(D)->DSDNeedFlushFrame,
	beq	.L169	@,
	mov	r3, r3, asl #4	@ D.39683, D.39683,
	str	r3, [r4, #144]	@ D.39683, pImg_17->image_width
	ldr	r3, [r6, #60]	@ pSyntaxInfOld_13->mb_height, pSyntaxInfOld_13->mb_height
	mov	r3, r3, asl #4	@ D.39690, pSyntaxInfOld_13->mb_height,
	str	r3, [r4, #148]	@ D.39690, pImg_17->image_height
	b	.L171	@
.L164:
	subs	lr, lr, #1	@ D.39683, D.39680,
	movne	lr, #1	@ D.39683,
	mov	lr, lr, asl #12	@ D.39683, D.39683,
	b	.L162	@
.L198:
	ldrb	lr, [r5, #10]	@ zero_extendqisi2	@ D.39680, pSyntaxInfNew_12->top_field_first
	and	lr, lr, #1	@ D.39683, D.39680,
	mov	lr, lr, asl #12	@ D.39683, D.39683,
	b	.L162	@
.L197:
	ldr	r2, [r4, #172]	@ D.39683, pImg_17->image_stride
	add	r3, r3, #15	@ D.39683, D.39690,
	ldr	r0, [r4, #104]	@ D.39683, pImg_17->luma_phy_addr
	mov	r3, r3, lsr #4	@ D.39683, D.39683,
	ldr	r1, [r4, #32]	@ D.39687, pImg_17->luma_vir_addr
	mov	lr, r2, asl #4	@ D.39683, D.39683,
	add	ip, r2, r0	@ D.39681, D.39683, D.39683
	str	r0, [r4, #88]	@ D.39683, pImg_17->top_luma_phy_addr
	mul	r3, r3, lr	@ D.39683, D.39683, D.39683
	str	r0, [r4, #120]	@ D.39683, pImg_17->luma_2d_phy_addr
	str	ip, [r4, #96]	@ D.39681, pImg_17->btm_luma_phy_addr
	str	r1, [r4, #48]	@ D.39687, pImg_17->luma_2d_vir_addr
	add	r0, r3, r0	@ D.39683, D.39683, D.39683
	add	r3, r1, r3	@ D.39687, D.39687, D.39683
	add	r2, r2, r0	@ D.39681, D.39683, D.39683
	str	r3, [r4, #36]	@ D.39687, pImg_17->chrom_vir_addr
	str	r2, [r4, #100]	@ D.39681, pImg_17->btm_chrom_phy_addr
	str	r0, [r4, #108]	@ D.39683, pImg_17->chrom_phy_addr
	str	r0, [r4, #92]	@ D.39683, pImg_17->top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #92]	@ pImg_17->top_chrom_phy_addr, pImg_17->top_chrom_phy_addr
	ldr	r3, [r4, #148]	@ D.39690, pImg_17->image_height
	str	r2, [r4, #124]	@ pImg_17->top_chrom_phy_addr, pImg_17->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_17->chrom_2d_vir_addr
	b	.L172	@
.L200:
	.align	2
.L199:
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
	ble	.L202	@,
	b	MP2_SearchStartCode.part.1	@
.L202:
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
	ldr	r3, [r4, #2416]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].MpegFlag
	ldr	r1, [r4, #3704]	@ pSyntaxInfNew, pCtx_7(D)->pSyntaxInfNew
	cmp	r3, #1	@ D.39696,
	beq	.L205	@,
	cmp	r3, #2	@ D.39696,
	beq	.L206	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #63	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
.L212:
	tst	r3, #24	@ D.39696,
	beq	.L214	@,
.L231:
	cmp	r2, #3	@ D.39700,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L215:
	orr	r3, r3, #64	@ D.39696, D.39696,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	str	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L218	@,
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
	bne	.L230	@,
.L218:
	mov	r3, #0	@ tmp282,
	str	r3, [r4, #2420]	@ tmp282, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].RefNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L206:
	ldr	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #1048576	@ D.39696,
	orreq	r3, r3, #16	@ D.39696, D.39696,
	streq	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #1	@ tmp190, D.39700,
	cmp	r0, #2	@ tmp190,
	bls	.L212	@,
.L228:
	orr	r3, r3, #8	@ D.39696, D.39696,
	str	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	tst	r3, #24	@ D.39696,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
	bne	.L231	@,
.L214:
	cmp	r2, #1	@ D.39700,
	biceq	r3, r3, #192	@ D.39696, D.39696,
	streq	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L205:
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
	sub	r3, r2, #1	@ tmp154, D.39700,
	cmp	r3, #3	@ tmp154,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrhi	r3, r3, #8	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strhi	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldrhib	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
	sub	r0, r2, #2	@ tmp169, D.39700,
	cmp	r0, #1	@ tmp169,
	bls	.L232	@,
.L209:
	cmp	r2, #3	@ D.39700,
	beq	.L233	@,
	tst	r3, #24	@ D.39696,
	bne	.L215	@,
	b	.L214	@
.L230:
	ldr	r0, [r4, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.39698, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.39698, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BwdFsID
	b	.L218	@
.L233:
	ldrb	r2, [r1, #26]	@ zero_extendqisi2	@ pSyntaxInfNew_9->backward_f_code, pSyntaxInfNew_9->backward_f_code
	cmp	r2, #0	@ pSyntaxInfNew_9->backward_f_code,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L228	@
.L232:
	ldrb	r0, [r1, #24]	@ zero_extendqisi2	@ pSyntaxInfNew_9->forward_f_code, pSyntaxInfNew_9->forward_f_code
	cmp	r0, #0	@ pSyntaxInfNew_9->forward_f_code,
	orreq	r3, r3, #8	@ D.39696, D.39696,
	streq	r3, [r4, #2380]	@ D.39696, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldreqb	r2, [r1, #22]	@ zero_extendqisi2	@ D.39700, pSyntaxInfNew_9->picture_coding_type
	b	.L209	@
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
	add	r4, r0, #69632	@ tmp234, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.39712,
	str	r0, [r4, #2464]	@ D.39712, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].CurFsID
	blt	.L248	@,
	mov	r1, r0	@, D.39712
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L249	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_14->pstDecodeFs, pLf_14->pstDecodeFs
	cmp	r3, #0	@ pLf_14->pstDecodeFs,
	beq	.L243	@,
	ldr	r3, [r4, #412]	@ pLf_14->pstDispOutFs, pLf_14->pstDispOutFs
	cmp	r3, #0	@ pLf_14->pstDispOutFs,
	beq	.L243	@,
	ldr	r3, [r4, #416]	@ pLf_14->pstTfOutFs, pLf_14->pstTfOutFs
	cmp	r3, #0	@ pLf_14->pstTfOutFs,
	beq	.L243	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.39711,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L243:
	mov	r0, #1	@ D.39711,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L248:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pImg,
	beq	.L237	@,
	ldr	r1, [r6, #192]	@, pImg_23->p_usrdat
	mov	r7, #0	@ tmp173,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #196]	@, pImg_23->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #200]	@, pImg_23->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r6, #204]	@, pImg_23->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r6, #192]	@ tmp173, pImg_23->p_usrdat
	str	r7, [r6, #196]	@ tmp173, pImg_23->p_usrdat
	mov	r2, #1	@,
	str	r7, [r6, #200]	@ tmp173, pImg_23->p_usrdat
	str	r7, [r6, #204]	@ tmp173, pImg_23->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, #2456]	@ tmp173, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	str	r7, [r4, #2460]	@ tmp173, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r7	@,
	bne	.L250	@,
.L237:
	add	r1, r5, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	mov	r5, #0	@ tmp221,
	add	r1, r1, #640	@,,
	str	r5, [r4, #2420]	@ tmp221, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].RefNum
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.39711, tmp221
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L250:
	ldr	r0, [r4, #4064]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.39712, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.39712, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].BwdFsID
	b	.L237	@
.L249:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.39711, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	add	r9, r0, #69632	@ tmp646, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r3, [r9, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	ldr	r8, [r9, #3704]	@ pSyntaxInfNew, pCtx_18(D)->pSyntaxInfNew
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	ldr	r6, [r9, #3708]	@ pSyntaxInfOld, pCtx_18(D)->pSyntaxInfOld
	beq	.L320	@,
.L252:
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L253	@,
	ldr	r2, [r9, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r9, #2424]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	clz	r3, r2	@ D.39758, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	mov	r3, r3, lsr #5	@ D.39758, D.39758,
	str	r3, [r9, #2392]	@ D.39758, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r2, [r8, #156]	@ pSyntaxInfNew_20->temporal_reference, pSyntaxInfNew_20->temporal_reference
	cmp	r2, r1	@ pSyntaxInfNew_20->temporal_reference, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	moveq	r3, #0	@, tmp389
	andne	r3, r3, #1	@,, tmp389, D.39758
	cmp	r3, #0	@ tmp389,
	bne	.L321	@,
.L315:
	add	r5, r4, #45056	@ tmp645, pCtx,
.L255:
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->picture_structure
	strb	r3, [r5, #273]	@ D.39757, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	ldr	r3, [r8, #156]	@ D.39756, pSyntaxInfNew_20->temporal_reference
	str	r3, [r9, #2424]	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].LastTempReference
	ldr	r3, [r8, #56]	@ pSyntaxInfNew_20->mb_width, pSyntaxInfNew_20->mb_width
	strh	r3, [r4, #160]	@ movhi	@ pSyntaxInfNew_20->mb_width, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicWidthInMb
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	ldr	r3, [r8, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	ldreq	r2, [r8, #64]	@ pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height_progressive_subtract1mb
	movne	r3, r3, lsr #1	@ D.39756, pSyntaxInfNew_20->mb_height,
	rsbeq	r3, r2, r3	@ tmp464, pSyntaxInfNew_20->mb_height_progressive_subtract1mb, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #156]	@ movhi	@ tmp464, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicHeightInMb
	ldr	r3, [r8, #60]	@ pSyntaxInfNew_20->mb_height, pSyntaxInfNew_20->mb_height
	strh	r3, [r4, #158]	@ movhi	@ pSyntaxInfNew_20->mb_height, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FrameHeightInMb
	ldrb	r3, [r8, #11]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->frame_pred_frame_dct
	strb	r3, [r4, #13]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FramePredFrameDct
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->picture_structure
	strb	r3, [r4, #11]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PictureStructure
	ldr	r2, [r9, #2392]	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	strb	r2, [r4, #12]	@ D.39756, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].SecondFieldFlag
	ldrb	r3, [r8, #12]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->concealment_motion_vectors
	strb	r3, [r4, #15]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].ConcealmentMotionVectors
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->picture_coding_type
	strb	r3, [r4, #8]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PicCodingType
	ldr	r3, [r9, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag
	sub	r3, r3, #1	@ D.39758, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].MpegFlag,
	clz	r3, r3	@ D.39758, D.39758
	mov	r3, r3, lsr #5	@ D.39758, D.39758,
	str	r3, [r4, #188]	@ D.39758, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mpeg1Flag
	cmp	r3, #0	@ D.39758,
	ldrneb	r3, [r8, #25]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->full_pel_backward_vector
	strneb	r3, [r4, #9]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1BwdmvFullPel
	ldrneb	r3, [r8, #23]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->full_pel_forward_vector
	strneb	r3, [r4, #10]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Mp1FwdmvFullPel
	ldrb	r3, [r8, #4]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #20]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #5]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #21]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #6]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #22]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #7]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r4, #23]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].Fcode
	ldrb	r3, [r8, #10]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->top_field_first
	strb	r3, [r4, #14]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TopFieldFirst
	ldrb	r3, [r8, #8]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->intra_dc_precision
	strb	r3, [r4, #19]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraDcPrecision
	ldrb	r3, [r8, #13]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->q_scale_type
	strb	r3, [r4, #18]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].QuantType
	ldrb	r3, [r8, #14]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->intra_vlc_format
	strb	r3, [r4, #17]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].IntraVlcFormat
	ldrb	r3, [r8, #15]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->alternate_scan
	strb	r3, [r4, #16]	@ D.39757, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].AlternateScan
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r2, #0	@ D.39756,
	cmpne	r3, #3	@, pSyntaxInfNew_20->picture_structure,
	bne	.L264	@,
	mov	r1, #0	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetImageBuffer	@
	subs	r6, r0, #0	@ D.39755,
	beq	.L319	@,
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r10, r0, #0	@ pImg,
	beq	.L267	@,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	mvn	r6, #0	@ tmp516,
	mvn	r7, #0	@,
	ldrd	r2, [r3, #56]	@ D.39762, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #8]	@ D.39762, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #72]	@ D.39762, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #16]	@ D.39762, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldrd	r2, [r3, #88]	@ D.39762, pCtx_18(D)->pstExtraData,
	strd	r2, [r10, #24]	@ D.39762, pImg,
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #104]	@ D.39756, _136->DispEnableFlag
	str	r3, [r10, #68]	@ D.39756, pImg_126->DispEnableFlag
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #108]	@ D.39756, _139->DispFrameDistance
	str	r3, [r10, #72]	@ D.39756, pImg_126->DispFrameDistance
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #112]	@ D.39756, _142->DistanceBeforeFirstFrame
	str	r3, [r10, #76]	@ D.39756, pImg_126->DistanceBeforeFirstFrame
	ldr	r3, [r4]	@ pCtx_18(D)->pstExtraData, pCtx_18(D)->pstExtraData
	ldr	r3, [r3, #128]	@ D.39756, _145->GopNum
	str	r3, [r10, #80]	@ D.39756, pImg_126->GopNum
	ldr	r3, [r4]	@ D.39761, pCtx_18(D)->pstExtraData
	strd	r6, [r3, #56]	@ tmp516, D.39761,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	subs	r3, r3, #3	@ D.39758, pSyntaxInfNew_20->picture_structure,
	movne	r3, #1	@ D.39758,
	str	r3, [r10, #128]	@ D.39758, pImg_126->is_fld_save
.L267:
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L264	@,
	ldr	r2, [r9, #2420]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	ldr	r3, [r9, #2460]	@ D.39759, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	cmp	r2, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum,
	ldr	r1, [r9, #2456]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	movne	r2, #2	@ D.39755,
	moveq	r2, #1	@ D.39755,
	cmp	r1, r3	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID, D.39759
	str	r2, [r9, #2420]	@ D.39755, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].RefNum
	beq	.L270	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r9, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r9, #2460]	@ D.39759, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
.L270:
	ldr	r1, [r9, #2464]	@ D.39759, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	mov	r2, #1	@,
	str	r3, [r9, #2456]	@ D.39759, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	str	r1, [r9, #2460]	@ D.39759, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r9, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].FwdFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
.L264:
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
	moveq	r3, #1	@ tmp602,
	movne	r3, #0	@ tmp602,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp608, tmp602
	cmp	r3, #0	@ tmp608,
	bne	.L272	@,
	ldr	r2, [r6, #408]	@ D.39763, pCur_177->pstDecodeFs
	cmp	r2, #0	@ D.39763,
	beq	.L272	@,
	ldr	r3, [r6, #416]	@ pCur_177->pstTfOutFs, pCur_177->pstTfOutFs
	cmp	r3, #0	@ pCur_177->pstTfOutFs,
	beq	.L272	@,
	ldr	r3, [r6, #412]	@ pCur_177->pstDispOutFs, pCur_177->pstDispOutFs
	cmp	r3, #0	@ pCur_177->pstDispOutFs,
	beq	.L272	@,
	ldr	r3, [r0, #408]	@ D.39763, pBwd_185->pstDecodeFs
	cmp	r3, #0	@ D.39763,
	ldreq	r3, [r2, #12]	@ D.39755, _189->PhyAddr
	ldrne	r3, [r3, #12]	@ D.39755, _192->PhyAddr
	str	r3, [r4, #200]	@ D.39755, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefPhyAddr
	ldr	r3, [r7, #408]	@ D.39763, pFwd_181->pstDecodeFs
	cmp	r3, #0	@ D.39763,
	ldreq	r3, [r6, #408]	@ pCur_177->pstDecodeFs, pCur_177->pstDecodeFs
	ldr	r3, [r3, #12]	@ D.39755,
	str	r3, [r4, #204]	@ D.39755, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefPhyAddr
	ldr	r3, [r6, #408]	@ pCur_177->pstDecodeFs, pCur_177->pstDecodeFs
	ldr	r3, [r3, #12]	@ _205->PhyAddr, _205->PhyAddr
	str	r3, [r4, #208]	@ _205->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].CurPicPhyAddr
	ldr	r3, [r6, #420]	@ pCur_177->PmvAddr, pCur_177->PmvAddr
	str	r3, [r4, #248]	@ pCur_177->PmvAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].PmvColmbPhyAddr
	ldr	r3, [r0, #416]	@ D.39763, pBwd_185->pstTfOutFs
	cmp	r3, #0	@ D.39763,
	ldreq	r3, [r6, #416]	@ pCur_177->pstTfOutFs, pCur_177->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.39755,
	str	r3, [r4, #220]	@ D.39755, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfBwdPhyAddr
	ldr	r3, [r7, #416]	@ D.39763, pFwd_181->pstTfOutFs
	cmp	r3, #0	@ D.39763,
	ldreq	r3, [r6, #416]	@ pCur_177->pstTfOutFs, pCur_177->pstTfOutFs
	ldr	r3, [r3, #12]	@ D.39755,
	str	r3, [r4, #224]	@ D.39755, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfFwdPhyAddr
	ldr	r3, [r6, #416]	@ pCur_177->pstTfOutFs, pCur_177->pstTfOutFs
	ldr	r3, [r3, #12]	@ _226->PhyAddr, _226->PhyAddr
	str	r3, [r4, #228]	@ _226->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].TfCurPhyAddr
	ldr	r3, [r6, #412]	@ pCur_177->pstDispOutFs, pCur_177->pstDispOutFs
	ldr	r3, [r3, #12]	@ _230->PhyAddr, _230->PhyAddr
	str	r3, [r4, #232]	@ _230->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DispFramePhyAddr
	ldr	r3, [r0, #136]	@ D.39756, pBwd_185->stDispImg.is_fld_save
	str	r3, [r4, #212]	@ D.39756, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].BwdRefIsFldSave
	ldr	r3, [r7, #136]	@ D.39756, pFwd_181->stDispImg.is_fld_save
	str	r3, [r4, #216]	@ D.39756, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].FwdRefIsFldSave
	ldr	r3, [r6, #416]	@ pCur_177->pstTfOutFs, pCur_177->pstTfOutFs
	ldr	r3, [r3, #12]	@ _238->PhyAddr, _238->PhyAddr
	str	r3, [r5, #264]	@ _238->PhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].DnrMbInfoStAddr
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #412]	@ pCur_177->pstDispOutFs, pCur_177->pstDispOutFs
	add	r2, r4, #71680	@ tmp637, pCtx,
	add	ip, r2, #600	@ ivtmp.119, tmp637,
	add	lr, r4, #87	@ ivtmp.128, pCtx,
	add	r2, r2, #856	@ ivtmp.136, tmp637,
	add	r1, r4, #23	@ ivtmp.143, pCtx,
	ldr	r0, [r3, #20]	@ _243->Stride, _243->Stride
	mov	r3, #0	@ i,
	str	r0, [r4, #236]	@ _243->Stride, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].VahbStride
	ldr	r0, [r6, #412]	@ pCur_177->pstDispOutFs, pCur_177->pstDispOutFs
	ldr	r0, [r0, #32]	@ _247->ChromOffset, _247->ChromOffset
	str	r0, [r4, #240]	@ _247->ChromOffset, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].uv_offset
.L281:
	ldr	r0, [ip, #4]!	@ MEM[base: _294, offset: 0B], MEM[base: _294, offset: 0B]
	add	r3, r3, #1	@ i, i,
	cmp	r3, #64	@ i,
	strb	r0, [lr, #1]!	@ MEM[base: _294, offset: 0B], MEM[base: _295, offset: 0B]
	ldr	r0, [r2, #4]!	@ MEM[base: _296, offset: 0B], MEM[base: _296, offset: 0B]
	strb	r0, [r1, #1]!	@ MEM[base: _296, offset: 0B], MEM[base: _297, offset: 0B]
	bne	.L281	@,
	mov	r0, r4	@, pCtx
	mov	r6, #1	@ D.39755,
	bl	MP2_EstimatePicQp	@
	strb	r0, [r4, #152]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_18(D) + 8B].EstmatedPicQp
	mov	r0, r6	@, D.39755
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L272:
	mov	r2, #1	@,
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	mov	r6, #0	@ D.39755,
	bl	FSP_ClearLogicFs	@
.L319:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, D.39755
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L253:
	add	r5, r4, #45056	@ tmp645, pCtx,
	ldrb	r3, [r5, #273]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct
	cmp	r3, #3	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Last_FieldStruct,
	beq	.L258	@,
	ldr	r3, [r9, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field,
	beq	.L322	@,
.L258:
	mov	r3, #1	@ tmp447,
	str	r3, [r9, #2392]	@ tmp447, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	b	.L255	@
.L320:
	ldrb	r2, [r8, #26]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->backward_f_code
	ldrb	r3, [r8, #24]	@ zero_extendqisi2	@ D.39757, pSyntaxInfNew_20->forward_f_code
	strb	r2, [r8, #7]	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r2, [r8, #6]	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r8, #5]	@ D.39757, pSyntaxInfNew_20->f_code
	strb	r3, [r8, #4]	@ D.39757, pSyntaxInfNew_20->f_code
	b	.L252	@
.L322:
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L258	@,
	ldrb	r3, [r6, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	ldrne	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	orrne	r3, r3, #192	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	strne	r3, [r9, #2380]	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L258	@
.L321:
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp394,
	mov	r2, #1	@,
	str	r3, [r9, #2392]	@ tmp394, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].Second_Field
	ldr	r1, [r9, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].CurFsID
	ldr	r0, [r9, #4064]	@, pCtx_18(D)->ChanID
	bl	FSP_ClearLogicFs	@
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #1	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L315	@,
	ldrb	r3, [r6, #22]	@ zero_extendqisi2	@ pSyntaxInfOld_21->picture_coding_type, pSyntaxInfOld_21->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfOld_21->picture_coding_type,
	beq	.L315	@,
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	add	r5, r4, #45056	@ tmp645, pCtx,
	orr	r3, r3, #192	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.39756, MEM[(struct MP2CODECINF *)pCtx_18(D) + 45328B].StreamIntegrality
	b	.L255	@
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
	ldr	lr, [r5, #2344]	@ D.39770, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.IsLastSeg,
	ldr	r3, [r5, #2648]	@ D.39771, MEM[(struct BS *)pCtx_2(D) + 72256B].TotalPos
	ldr	ip, [r5, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	add	r1, r3, #7	@ tmp172, D.39771,
	beq	.L327	@,
	cmp	r3, #0	@ D.39771,
	add	r2, lr, r3, lsr #3	@ D.39770, D.39770, D.39771,
	ldr	r6, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	bic	r2, r2, #3	@ D.39770, D.39770,
	movge	r1, r3	@ D.39771, D.39771
	add	r3, r3, lr, lsl #3	@ bs_offset, D.39771, D.39770,
	and	r3, r3, #31	@ D.39770, bs_offset,
	add	r1, ip, r1, asr #3	@ D.39771, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.39771,
	str	r1, [r5, #2328]	@ D.39771, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	bic	r6, r6, #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r3, [r4, #172]	@ D.39770, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	str	r2, [r4, #164]	@ D.39770, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	str	r6, [r4, #168]	@ stream_base_addr, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamPhyAddr
	str	r0, [r4, #180]	@, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldr	r3, [r5, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr
	and	r3, r3, #3	@ D.39770, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsPhyAddr,
	mov	r3, r3, asl #3	@ D.39770, D.39770,
	str	r3, [r4, #176]	@ D.39770, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
	ldr	r3, [r5, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.39771, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #184]	@ D.39771, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamLength
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L327:
	cmp	r3, #0	@ D.39771,
	add	r2, lr, r3, lsr #3	@ D.39770, D.39770, D.39771,
	bic	r2, r2, #3	@ stream_base_addr, D.39770,
	movge	r1, r3	@ D.39771, D.39771
	add	r3, r3, lr, lsl #3	@ bs_offset, D.39771, D.39770,
	and	r3, r3, #31	@ D.39770, bs_offset,
	add	r1, ip, r1, asr #3	@ D.39771, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset, D.39771,
	str	r1, [r5, #2328]	@ D.39771, MEM[(struct MP2CODECINF *)pCtx_2(D) + 45328B].BsOffset
	str	r3, [r4, #172]	@ D.39770, MEM[(struct MP2_DEC_PARAM_S *)pCtx_2(D) + 8B].StreamBitOffset
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
	ldr	r2, [r4]	@ D.39775, pCtx_5(D)->pstExtraData
	add	r1, r4, #45056	@ tmp144, pCtx,
	add	r3, r4, #69632	@ tmp197, pCtx,
	ldr	r0, [r2, #512]	@ D.39776, _7->s32Compress_en
	str	r0, [r1, #268]	@ D.39776, pCtx_5(D)->Mp2DecParam.Compress_en
	ldr	r1, [r3, #3704]	@ D.39777, pCtx_5(D)->pSyntaxInfNew
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ D.39778, _10->picture_coding_type
	cmp	r0, #3	@ D.39778,
	beq	.L347	@,
	cmp	r0, #2	@ D.39778,
	moveq	r0, #1	@ tmp163,
	streq	r0, [r3, #4076]	@ tmp163, pCtx_5(D)->PPicFound
.L330:
	add	ip, r4, #8	@ D.39781, pCtx,
	str	ip, [r4, #4]	@ D.39781, pCtx_5(D)->pMp2DecParam
	ldr	r0, [r2, #708]	@ D.39776, _7->stDisParams.s32Mode
	cmp	r0, #1	@ D.39776,
	beq	.L348	@,
	cmp	r0, #2	@ D.39776,
	beq	.L349	@,
.L333:
	ldr	r2, [r3, #2380]	@ pCtx_5(D)->CodecInfo.StreamIntegrality, pCtx_5(D)->CodecInfo.StreamIntegrality
	bic	r2, r2, #16252928	@ D.39779, pCtx_5(D)->CodecInfo.StreamIntegrality,
	str	r2, [r3, #2380]	@ D.39779, pCtx_5(D)->CodecInfo.StreamIntegrality
	ldrb	r5, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r5, #1	@ _10->picture_coding_type,
	movne	r0, #1	@ D.39774,
	beq	.L350	@,
.L331:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L350:
	ldr	r2, .L351	@ tmp185,
	ldr	r6, [r2]	@ D.39782, g_event_report
	cmp	r6, #0	@ D.39782,
	moveq	r0, r5	@ D.39774, _10->picture_coding_type
	beq	.L331	@,
	ldr	ip, [r4, #180]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	r2, sp, #8	@ tmp192,,
	ldr	lr, [r4, #184]	@ pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	mov	r1, #20	@,
	ldr	r0, [r3, #4064]	@, pCtx_5(D)->ChanID
	add	r3, ip, lr	@ D.39776, pCtx_5(D)->Mp2DecParam.StreamLength, pCtx_5(D)->Mp2DecParam.StreamLength
	add	ip, r3, #7	@ tmp190, D.39776,
	cmp	r3, #0	@ D.39776,
	movlt	r3, ip	@ D.39776, tmp190
	mov	r3, r3, asr #3	@ D.39776, D.39776,
	str	r3, [r2, #-4]!	@ D.39776, para
	blx	r6	@ D.39782
	mov	r0, r5	@ D.39774, _10->picture_coding_type
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L347:
	ldr	r0, [r3, #4076]	@ pCtx_5(D)->PPicFound, pCtx_5(D)->PPicFound
	cmp	r0, #0	@ pCtx_5(D)->PPicFound,
	bne	.L330	@,
	ldr	ip, [r3, #2420]	@ pCtx_5(D)->CodecInfo.RefNum, pCtx_5(D)->CodecInfo.RefNum
	cmp	ip, #2	@ pCtx_5(D)->CodecInfo.RefNum,
	beq	.L330	@,
	ldrb	r2, [r1, #9]	@ zero_extendqisi2	@ _10->picture_structure, _10->picture_structure
	cmp	r2, #3	@ _10->picture_structure,
	ldrne	r2, [r3, #2392]	@ pCtx_5(D)->CodecInfo.Second_Field, pCtx_5(D)->CodecInfo.Second_Field
	clzne	r2, r2	@ D.39780, pCtx_5(D)->CodecInfo.Second_Field
	movne	r2, r2, lsr #5	@ D.39780, D.39780,
	strne	r2, [r3, #2392]	@ D.39780, pCtx_5(D)->CodecInfo.Second_Field
	b	.L331	@
.L348:
	cmp	ip, #0	@ D.39781,
	beq	.L333	@,
	ldrb	r2, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r2, #3	@ _10->picture_coding_type,
	moveq	r0, #0	@ tmp165,
	streq	r0, [r4, #4]	@ tmp165, pCtx_5(D)->pMp2DecParam
	bne	.L333	@,
	b	.L331	@
.L349:
	ldr	r0, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	cmp	ip, #0	@ D.39781,
	cmpne	r0, #0	@, _7->stDisParams.s32DisNums,
	ble	.L333	@,
	ldrb	r0, [r1, #22]	@ zero_extendqisi2	@ _10->picture_coding_type, _10->picture_coding_type
	cmp	r0, #3	@ _10->picture_coding_type,
	bne	.L333	@,
	mov	r0, #0	@ tmp175,
	str	r0, [r4, #4]	@ tmp175, pCtx_5(D)->pMp2DecParam
	ldr	r3, [r2, #712]	@ _7->stDisParams.s32DisNums, _7->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.39776, _7->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.39776, _7->stDisParams.s32DisNums
	b	.L331	@
.L352:
	.align	2
.L351:
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
	ldr	r3, [r0]	@ D.39786, pCtx_3(D)->pstExtraData
	ldr	r0, [r2, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r0, #48]	@ D.39787, pSyntaxInfNew_5->horizontal_size
	str	r1, [r3, #400]	@ D.39787, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_width
	ldr	r1, [r0, #52]	@ D.39787, pSyntaxInfNew_5->vertical_size
	str	r1, [r3, #404]	@ D.39787, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].image_height
	ldr	r1, [r2, #3704]	@ pCtx_3(D)->pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	ldr	r1, [r1, #84]	@ _30->aspect_ratio_information, _30->aspect_ratio_information
	sub	r1, r1, #1	@ D.39787, _30->aspect_ratio_information,
	cmp	r1, #2	@ D.39787,
	ldrls	ip, .L358	@ tmp136,
	movhi	r1, #0	@ D.39790,
	addls	r1, ip, r1, lsl #2	@ tmp137, tmp136, D.39787,
	ldrls	r1, [r1, #128]	@ D.39790, CSWTCH.44
	str	r1, [r3, #408]	@ D.39790, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].aspect_ratio
	mov	r1, #0	@ tmp139,
	str	r1, [r3, #412]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].scan_type
	str	r1, [r3, #416]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].video_format
	ldr	ip, [r0, #72]	@ D.39787, pSyntaxInfNew_5->frame_rate
	str	r1, [r3, #424]	@ tmp139, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].bit_rate
	str	ip, [r3, #420]	@ D.39787, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].frame_rate
	ldr	ip, [r2, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	sub	ip, ip, #1	@ D.39788, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	clz	ip, ip	@ D.39788, D.39788
	mov	ip, ip, lsr #5	@ D.39788, D.39788,
	str	ip, [r3, #428]	@ D.39788, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].sub_video_standard
	ldr	ip, [r0, #40]	@ D.39787, pSyntaxInfNew_5->profile
	str	ip, [r3, #432]	@ D.39787, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].profile
	ldr	r0, [r0, #44]	@ D.39787, pSyntaxInfNew_5->level
	str	r0, [r3, #436]	@ D.39787, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].level
	ldr	r0, [r2, #4068]	@ D.39785, pCtx_3(D)->numTotalFrame
	str	r0, [r3, #440]	@ D.39785, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].total_frame_num
	ldr	r0, [r2, #4068]	@ D.39785, pCtx_3(D)->numTotalFrame
	ldr	r2, [r2, #4072]	@ D.39785, pCtx_3(D)->numOutputFrame
	cmp	r0, r2	@ D.39785, D.39785
	rsbge	r1, r2, r0	@ D.39785, D.39785, D.39785
	str	r1, [r3, #444]	@ D.39785, MEM[(struct VDEC_CHAN_STATE_S *)_4 + 396B].error_frame_num
	bx	lr	@
.L359:
	.align	2
.L358:
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
	add	r7, r0, #7	@ tmp196, D.39821,
	cmp	r0, #0	@ D.39821,
	movlt	r0, r7	@ D.39821, tmp196
	mov	r7, r0, asr #3	@ RemainByte, D.39821,
	cmp	r7, #0	@ RemainByte,
	ble	.L380	@,
	mov	r6, #0	@ cnt,
	ldr	r10, .L399	@ tmp431,
	mov	r4, r6	@ i, cnt
	b	.L365	@
.L397:
	bl	BsGet	@
	add	r4, r4, #1	@ i, i,
	cmp	r4, r7	@ i, RemainByte
	strb	r0, [r10, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
	beq	.L361	@,
.L365:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.39822,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.39822,
	beq	.L362	@,
	cmp	r6, #1024	@ cnt,
	blt	.L397	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	add	r4, r4, #1	@ i, i,
	bl	BsGet	@
	cmp	r4, r7	@ i, RemainByte
	bne	.L365	@,
.L361:
	add	r7, r8, #69632	@ tmp424, pCtx,
	movw	r3, #2332	@ tmp413,
	ldrsb	r10, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r10, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L377	@,
.L396:
	mov	r4, #0	@ D.39818,
.L366:
	ldr	r5, [r7, #2412]	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.39821,
	ble	.L379	@,
.L378:
	add	r5, r9, #344	@ ivtmp.164, tmp422,
	add	r9, r9, #360	@ D.39817, tmp422,
	mov	r10, #0	@ tmp425,
.L370:
	ldr	r1, [r5, #4]!	@, MEM[base: _177, offset: 0B]
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r5, r9	@ ivtmp.164, D.39817
	str	r10, [r5]	@ tmp425, MEM[base: _177, offset: 0B]
	mov	r3, #0	@ tmp314,
	bne	.L370	@,
	mov	r5, r3	@ D.39819, tmp314
	str	r3, [r7, #2412]	@ tmp314, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L379:
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	add	r5, r8, r5, lsl #2	@ D.39828, pCtx, D.39819,
	bl	GetUsd	@
	add	r5, r5, #69632	@ tmp423, D.39828,
	str	r0, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r3, [r7, #2412]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r8, r3, lsl #2	@ tmp331, pCtx, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum,
	add	r3, r3, #71680	@ tmp335, tmp331,
	add	r3, r3, #72	@ tmp335, tmp335,
	ldr	r3, [r3, #276]	@ tmp337, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].pUsrDatArray
	cmp	r3, #0	@ tmp337,
	beq	.L371	@,
	ldr	r3, [r8]	@ pCtx_24(D)->pstExtraData, pCtx_24(D)->pstExtraData
	add	r0, r0, #1056	@ tmp340, D.39827,
	ldr	r1, .L399	@,
	ldrd	r2, [r3, #56]	@ D.39830, pCtx_24(D)->pstExtraData,
	strd	r2, [r0]	@ D.39830, _101->PTS
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r7, #2384]	@ D.39822, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].SeqCnt
	str	r2, [r3, #1040]	@ D.39822, _108->seq_cnt
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	str	r6, [r3, #1048]	@ cnt, _111->data_size
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrb	r2, [r2, #22]	@ zero_extendqisi2	@ D.39832, _114->picture_coding_type
	strb	r2, [r3, #1024]	@ D.39832, _113->pic_coding_type
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r7, #4068]	@ pCtx_24(D)->numTotalFrame, pCtx_24(D)->numTotalFrame
	str	r2, [r3, #1028]	@ pCtx_24(D)->numTotalFrame, _117->pic_num_count
	ldr	r2, [r7, #3704]	@ pCtx_24(D)->pSyntaxInfNew, pCtx_24(D)->pSyntaxInfNew
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2	@ D.39832, _122->top_field_first
	strb	r2, [r3, #1025]	@ D.39832, _121->top_field_first
	ldr	r3, [r7, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality
	tst	r3, #524288	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].StreamIntegrality,
	ldr	r3, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	movne	r2, #3	@ tmp374,
	moveq	r2, #1	@ tmp377,
	str	r2, [r3, #1036]	@ tmp377,
	ldr	r0, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldr	r2, [r0, #1048]	@ D.39821, _131->data_size
	cmp	r2, #1024	@ D.39821,
	movgt	r3, #1024	@ tmp380,
	strgt	r3, [r0, #1048]	@ tmp380, _131->data_size
	ldrgt	r0, [r5, #2396]	@ D.39827, MEM[(struct MP2CODECINF *)_153 + 72028B]
	ldrgt	r2, [r0, #1048]	@ D.39821, _156->data_size
	bl	memcpy	@
	ldr	r3, .L399+4	@ tmp388,
	ldr	r3, [r3]	@ D.39834, g_event_report
	cmp	r3, #0	@ D.39834,
	beq	.L375	@,
	ldr	ip, [r5, #2396]	@ MEM[(struct MP2CODECINF *)_153 + 72028B], MEM[(struct MP2CODECINF *)_153 + 72028B]
	add	r2, sp, #8	@ tmp392,,
	mov	r1, #6	@,
	ldr	r0, [r7, #4064]	@, pCtx_24(D)->ChanID
	str	ip, [r2, #-4]!	@ MEM[(struct MP2CODECINF *)_153 + 72028B], para
	blx	r3	@ D.39834
.L375:
	ldr	r3, [r7, #2412]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	add	r3, r3, #1	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum,
	str	r3, [r7, #2412]	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
.L394:
	mov	r0, r4	@, D.39818
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L377:
	movw	r3, #2333	@ tmp207,
	ldrsb	r3, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L383	@,
	ldr	r4, [r7, #2356]	@ D.39818, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	cmp	r4, #0	@ D.39818,
	beq	.L366	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r2, #3	@,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.39826, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, D.39826
	mov	r4, #1	@ tmp266,
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.39824, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r10, [r7, #2333]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	add	r2, r2, #3	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength,
	mov	r1, r3	@, D.39824
	str	r2, [r7, #2352]	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2336]	@ D.39824, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.39822, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r10, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.39822, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.BsPhyAddr
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
	add	fp, r0, #7	@ tmp302, D.39821,
	cmp	r0, #0	@ D.39821,
	movlt	r0, fp	@ D.39821, tmp302
	mov	fp, r0, asr #3	@ tmp303, D.39821,
	sub	fp, fp, #3	@ RemainByte, tmp303,
	cmp	fp, #0	@ RemainByte,
	ble	.L382	@,
	ldr	r4, .L399	@ tmp428,
	b	.L369	@
.L398:
	bl	BsGet	@
	strb	r0, [r4, r6]	@, g_tmpusd
	add	r6, r6, #1	@ cnt, cnt,
.L368:
	add	r10, r10, #1	@ i, i,
	cmp	r10, fp	@ i, RemainByte
	beq	.L396	@,
.L369:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	bic	r3, r0, #-16777216	@ D.39822,,
	mov	r0, r5	@, pBs
	cmp	r3, #1	@ D.39822,
	beq	.L383	@,
	cmp	r6, #1024	@ cnt,
	blt	.L398	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	b	.L368	@
.L362:
	add	r7, r8, #69632	@ tmp424, pCtx,
	mov	r4, r3	@ D.39818, D.39822
	ldr	r5, [r7, #2412]	@ D.39821, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].TotalUsrDatNum
	cmp	r5, #3	@ D.39821,
	bgt	.L378	@,
	b	.L379	@
.L383:
	mov	r4, r3	@ D.39818, D.39822
	b	.L366	@
.L371:
	bl	vfmw_dprint_nothing	@
	b	.L394	@
.L380:
	mov	r6, #0	@ cnt,
	b	.L361	@
.L382:
	mov	r4, r10	@ D.39818, MEM[(struct MP2CODECINF *)pCtx_24(D) + 45328B].stMp2Packet.IsLastSeg
	b	.L366	@
.L400:
	.align	2
.L399:
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
	cmp	r0, #0	@ D.39847,
	add	r3, r0, #7	@ tmp162, D.39847,
	movge	r1, r0	@ D.39847, D.39847
	movlt	r1, r3	@ D.39847, tmp162
	mov	r1, r1, asr #3	@ tmp163, D.39847,
	cmp	r1, #4	@ tmp163,
	movle	r1, #0	@ D.39847,
	bgt	.L427	@,
.L402:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	mov	r6, r0	@ D.39847,
	add	r0, r0, #7	@ tmp165, D.39847,
	cmp	r6, #0	@ D.39847,
	movlt	r6, r0	@ D.39847, tmp165
	mov	r6, r6, asr #3	@ tmp166, D.39847,
	sub	r6, r6, #3	@ remain_byte, tmp166,
	cmp	r6, #0	@ remain_byte,
	movgt	r4, #0	@ i,
	bgt	.L408	@,
	b	.L409	@
.L406:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L409	@,
.L408:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L406	@,
.L411:
	mov	r0, #1	@ D.39848,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L409:
	add	r7, r7, #69632	@ tmp171, pCtx,
	movw	r3, #2332	@ tmp174,
	ldrsb	r4, [r7, r3]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r4, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	bne	.L405	@,
	ldrb	r3, [r7, #2333]	@ zero_extendqisi2	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg,
	beq	.L405	@,
	ldr	r3, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	beq	.L405	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	ldr	r1, [r7, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	mov	r2, #3	@,
	ldr	r0, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, r3, #3	@ D.39853, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	add	r1, r1, r3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, D.39853
	mov	r6, #1	@ tmp241,
	sub	r0, r0, #3	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	bl	memcpy	@
	ldr	r3, [r7, #2340]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	ldr	ip, [r7, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r0, r5	@, pBs
	ldr	r2, [r7, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	sub	r3, r3, #3	@ D.39851, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr,
	strb	r6, [r7, #2332]	@ tmp241, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	mov	r1, r3	@, D.39851
	add	r2, r2, #3	@ D.39847, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r7, #2336]	@ D.39851, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	sub	r3, ip, #3	@ D.39854, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr,
	str	r2, [r7, #2352]	@ D.39847, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r7, #2344]	@ D.39854, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsPhyAddr
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
	cmp	r0, #0	@ D.39847,
	add	r1, r0, #7	@ tmp277, D.39847,
	movge	r3, r0	@ D.39847, D.39847
	movlt	r3, r1	@ D.39847, tmp277
	mov	r1, r3, asr #3	@ tmp278, D.39847,
	cmp	r1, #4	@ tmp278,
	movle	r1, r4	@ D.39847, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.IsLastSeg
	bgt	.L428	@,
.L410:
	mov	r0, r5	@, pBs
	bl	BsLongSkip	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp280, D.39847,
	cmp	r0, #0	@ D.39847,
	movlt	r0, r6	@ D.39847, tmp280
	mov	r6, r0, asr #3	@ tmp281, D.39847,
	sub	r6, r6, #3	@ remain_byte, tmp281,
	cmp	r6, #0	@ remain_byte,
	ble	.L405	@,
	mov	r4, #0	@ i,
	b	.L412	@
.L429:
	bl	BsSkip	@
	cmp	r4, r6	@ i, remain_byte
	beq	.L405	@,
.L412:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, #1	@,
	mov	r0, r5	@, pBs
	bne	.L429	@,
	b	.L411	@
.L405:
	mov	r0, #0	@ D.39848,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L427:
	mov	r0, r4	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.39847,,
	b	.L402	@
.L428:
	mov	r0, r6	@, pcode
	bl	MP2_SearchStartCode.part.1	@
	mov	r1, r0, asl #3	@ D.39847,,
	b	.L410	@
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
	orreq	r3, r3, #1	@ D.39916, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality,
	streq	r3, [r4, #2380]	@ D.39916, MEM[(struct MP2CODECINF *)pCtx_12(D) + 45328B].StreamIntegrality
.L431:
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
	cmp	r0, #1	@ D.39915,
	str	r0, [r8, #76]	@ D.39915, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L438	@,
	ldr	r2, .L446	@ ivtmp.230,
	add	r3, r7, #600	@ ivtmp.235, tmp211,
	add	r0, r7, #856	@ D.39914, tmp211,
.L434:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2	@ MEM[base: _46, offset: 0B], MEM[base: _46, offset: 0B]
	str	r1, [r3, #4]!	@ MEM[base: _46, offset: 0B], MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.235, D.39914
	bne	.L434	@,
.L433:
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.39915,
	str	r0, [r8, #80]	@ D.39915, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	beq	.L439	@,
	add	r5, r5, #72704	@ D.39914, pCtx,
	add	r3, r7, #856	@ ivtmp.206, tmp211,
	add	r5, r5, #88	@ D.39914, D.39914,
	mov	r2, #16	@ tmp213,
.L436:
	str	r2, [r3, #4]!	@ tmp213, MEM[base: _53, offset: 0B]
	cmp	r3, r5	@ ivtmp.206, D.39914
	bne	.L436	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L438:
	ldr	r10, .L446+4	@ ivtmp.220,
	add	r9, r10, #64	@ D.39914, ivtmp.220,
.L432:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r10, #1]!	@ zero_extendqisi2	@ D.39915, MEM[base: _82, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp187, D.39915,
	cmp	r10, r9	@ ivtmp.220, D.39914
	add	r3, r3, #150	@ tmp187, tmp187,
	add	r3, r5, r3, lsl #2	@ tmp188, pCtx, tmp187,
	str	r0, [r3, #4]	@, pCtx_12(D)->intra_quantizer_matrix
	bne	.L432	@,
	b	.L433	@
.L439:
	ldr	r7, .L446+4	@ ivtmp.196,
	add	r8, r7, #64	@ D.39914, ivtmp.196,
.L435:
	mov	r1, #8	@,
	mov	r0, r6	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.39915, MEM[base: _55, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp192, D.39915,
	cmp	r7, r8	@ ivtmp.196, D.39914
	add	r3, r3, #214	@ tmp192, tmp192,
	add	r3, r5, r3, lsl #2	@ tmp193, pCtx, tmp192,
	str	r0, [r3, #4]	@, pCtx_12(D)->non_intra_quantizer_matrix
	bne	.L435	@,
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L447:
	.align	2
.L446:
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
	orr	r3, r3, #131072	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
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
	mov	r10, r0	@ D.39929,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #12	@,
	mov	r8, r0	@ D.39929,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ D.39929,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L451	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	orr	r3, r3, #2	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L451:
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
	ldrb	r3, [r5, #30]	@ zero_extendqisi2	@ D.39929, pSyntaxInfNew_11->frame_rate_extension_n
	uxtb	r1, r0	@ D.39929, D.39929
	strb	r0, [r5, #31]	@ D.39929, pSyntaxInfNew_11->frame_rate_extension_d
	add	r1, r1, #1	@, D.39929,
	add	r0, r3, #1	@, D.39929,
	bl	__aeabi_idiv	@
	ldr	r1, [r5, #88]	@ pSyntaxInfNew_11->frame_rate_code, pSyntaxInfNew_11->frame_rate_code
	ldr	r2, .L476	@ tmp228,
	ldr	r3, [r5, #124]	@ D.39928, pSyntaxInfNew_11->profile_and_level_indication
	add	r2, r2, r1, lsl #2	@ tmp230, tmp228, pSyntaxInfNew_11->frame_rate_code,
	tst	r3, #128	@ D.39928,
	ldr	r2, [r2, #140]	@ tmp233, frame_rate_Table
	mul	r0, r2, r0	@ D.39928, tmp233,
	str	r0, [r5, #72]	@ D.39928, pSyntaxInfNew_11->frame_rate
	bne	.L475	@,
	ubfx	r2, r3, #4, #3	@ D.39928, D.39928,,
	and	r3, r3, #15	@ D.39928, D.39928,
	str	r2, [r5, #40]	@ D.39928, pSyntaxInfNew_11->profile
	str	r3, [r5, #44]	@ D.39928, pSyntaxInfNew_11->level
.L454:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_11->horizontal_size, pSyntaxInfNew_11->horizontal_size
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_11->vertical_size, pSyntaxInfNew_11->vertical_size
	ubfx	r3, r3, #0, #12	@ D.39928, pSyntaxInfNew_11->horizontal_size,,
	ubfx	r2, r2, #0, #12	@ D.39928, pSyntaxInfNew_11->vertical_size,,
	orr	r3, r3, r10, asl #12	@ D.39928, D.39928, D.39929,
	orr	r8, r2, r8, asl #12	@ D.39928, D.39928, D.39929,
	str	r3, [r5, #48]	@ D.39928, pSyntaxInfNew_11->horizontal_size
	cmp	r8, #0	@ D.39928,
	cmpne	r3, #0	@, D.39928,
	str	r8, [r5, #52]	@ D.39928, pSyntaxInfNew_11->vertical_size
	ldreq	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	orreq	r3, r3, #1	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	streq	r3, [r6, #2380]	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldreq	r3, [r5, #48]	@ D.39928, pSyntaxInfNew_11->horizontal_size
	cmp	r3, #8192	@ D.39928,
	bhi	.L456	@,
	ldr	r3, [r5, #52]	@ pSyntaxInfNew_11->vertical_size, pSyntaxInfNew_11->vertical_size
	cmp	r3, #8192	@ pSyntaxInfNew_11->vertical_size,
	bls	.L457	@,
.L456:
	ldr	r2, .L476+4	@ tmp275,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.39932, g_event_report
	orr	r3, r3, #1	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.39928, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.39932,
	beq	.L457	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	ip	@ D.39932
.L457:
	ldr	r3, [r5, #92]	@ pSyntaxInfNew_11->bit_rate_value, pSyntaxInfNew_11->bit_rate_value
	mov	r2, #400	@ tmp282,
	ldr	r1, [r5, #40]	@ pSyntaxInfNew_11->profile, pSyntaxInfNew_11->profile
	add	r7, r3, r7, lsl #18	@ D.39928, pSyntaxInfNew_11->bit_rate_value, D.39929,
	str	r7, [r5, #92]	@ D.39928, pSyntaxInfNew_11->bit_rate_value
	sub	r1, r1, #4	@ D.39928, pSyntaxInfNew_11->profile,
	ldr	r3, [r5, #96]	@ pSyntaxInfNew_11->vbv_buffer_size, pSyntaxInfNew_11->vbv_buffer_size
	mul	r7, r2, r7	@ D.39928, tmp282, D.39928
	cmp	r1, #1	@ D.39928,
	add	r9, r3, r9, lsl #10	@ D.39928, pSyntaxInfNew_11->vbv_buffer_size, vbv_buffer_size_extension,
	str	r9, [r5, #96]	@ D.39928, pSyntaxInfNew_11->vbv_buffer_size
	str	r7, [r5, #68]	@ D.39928, pSyntaxInfNew_11->bit_rate
	bls	.L459	@,
	ldr	r3, .L476+4	@ tmp288,
	ldr	r3, [r3]	@ D.39932, g_event_report
	cmp	r3, #0	@ D.39932,
	beq	.L460	@,
	mov	r2, #0	@,
	mov	r1, #102	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	r3	@ D.39932
.L460:
	bl	vfmw_dprint_nothing	@
.L459:
	ldr	r3, [r5, #44]	@ pSyntaxInfNew_11->level, pSyntaxInfNew_11->level
	sub	r3, r3, #4	@ D.39928, pSyntaxInfNew_11->level,
	cmp	r3, #6	@ D.39928,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L476+4	@ tmp294,
	ldr	r3, [r3]	@ D.39932, g_event_report
	cmp	r3, #0	@ D.39932,
	beq	.L461	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	mov	r2, #0	@,
	mov	r1, #102	@,
	blx	r3	@ D.39932
.L461:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L475:
	and	r3, r3, #15	@ D.39928, D.39928,
	cmp	r3, #5	@ D.39928,
	moveq	r2, #133	@ tmp236,
	moveq	r3, #8	@ tmp237,
	streq	r2, [r5, #40]	@ tmp236, pSyntaxInfNew_11->profile
	streq	r3, [r5, #44]	@ tmp237, pSyntaxInfNew_11->level
	b	.L454	@
.L477:
	.align	2
.L476:
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
	orr	r3, r3, #262144	@ D.39935, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	str	r3, [r6, #2380]	@ D.39935, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #128]	@, pSyntaxInfNew_6->video_format
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@ D.39936,
	str	r0, [r5, #132]	@ D.39936, pSyntaxInfNew_6->color_description
	bne	.L486	@,
.L479:
	mov	r1, #14	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r5, #148]	@, pSyntaxInfNew_6->display_horizontal_size
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L480	@,
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	orr	r3, r3, #4	@ D.39935, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.39935, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L480:
	mov	r0, r4	@, pBs
	mov	r1, #14	@,
	bl	BsGet	@
	str	r0, [r5, #152]	@, pSyntaxInfNew_6->display_vertical_size
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L486:
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
	b	.L479	@
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
	cmp	r0, #1	@ D.39970,
	str	r0, [r9, #76]	@ D.39970, pSyntaxInfNew_16->load_intra_quantizer_matrix
	beq	.L513	@,
.L488:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.39970,
	str	r0, [r9, #80]	@ D.39970, pSyntaxInfNew_16->load_non_intra_quantizer_matrix
	ldreq	r7, .L515	@ ivtmp.267,
	addeq	r8, r7, #64	@ D.39974, ivtmp.267,
	beq	.L490	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L492	@,
.L498:
	mov	r4, #64	@ D.39969,
.L493:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.39969, D.39969,
	bne	.L493	@,
.L492:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L514	@,
.L494:
	mov	r4, #64	@ D.39969,
.L495:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	subs	r4, r4, #1	@ D.39969, D.39969,
	bne	.L495	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L490:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.39970, MEM[base: _49, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp149, D.39970,
	cmp	r7, r8	@ ivtmp.267, D.39974
	add	r3, r3, #214	@ tmp149, tmp149,
	add	r3, r6, r3, lsl #2	@ tmp150, pCtx, tmp149,
	str	r0, [r3, #4]	@, pCtx_13(D)->non_intra_quantizer_matrix
	bne	.L490	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L498	@,
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	bne	.L494	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L514:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L513:
	ldr	r7, .L515	@ ivtmp.277,
	add	r8, r7, #64	@ D.39974, ivtmp.277,
.L489:
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2	@ D.39970, MEM[base: _40, offset: 0B]
	bl	BsGet	@
	add	r3, r4, #17920	@ tmp145, D.39970,
	cmp	r7, r8	@ ivtmp.277, D.39974
	add	r3, r3, #150	@ tmp145, tmp145,
	add	r3, r6, r3, lsl #2	@ tmp146, pCtx, tmp145,
	str	r0, [r3, #4]	@, pCtx_13(D)->intra_quantizer_matrix
	bne	.L489	@,
	b	.L488	@
.L516:
	.align	2
.L515:
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
	orr	r3, r3, #2097152	@ D.39997, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.39997, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldrb	r3, [r6, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_8->progressive_sequence, pSyntaxInfNew_8->progressive_sequence
	cmp	r3, #0	@ pSyntaxInfNew_8->progressive_sequence,
	beq	.L519	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	bne	.L532	@,
.L527:
	mov	r8, #1	@ number_of_frame_center_offsets,
.L520:
	add	r7, r6, #160	@ ivtmp.288, pSyntaxInfNew,
	mov	r5, #0	@ i,
	add	r6, r6, #172	@ ivtmp.297, pSyntaxInfNew,
	b	.L524	@
.L534:
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r6, #4]!	@, MEM[base: _45, offset: 0B]
	mov	r0, r4	@, pBs
	bl	BsGet	@
	cmp	r0, #0	@,
	beq	.L531	@,
	cmp	r5, r8	@ i, number_of_frame_center_offsets
	bge	.L533	@,
.L524:
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
	bne	.L534	@,
.L531:
	ldr	r3, [r9, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	orr	r3, r3, #32	@ D.39997, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality,
	str	r3, [r9, #2380]	@ D.39997, MEM[(struct MP2CODECINF *)pCtx_5(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L519:
	ldrb	r3, [r6, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_8->picture_structure, pSyntaxInfNew_8->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_8->picture_structure,
	bne	.L527	@,
	ldrb	r3, [r6, #16]	@ zero_extendqisi2	@ pSyntaxInfNew_8->repeat_first_field, pSyntaxInfNew_8->repeat_first_field
	cmp	r3, #0	@ pSyntaxInfNew_8->repeat_first_field,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L520	@
.L532:
	ldrb	r3, [r6, #10]	@ zero_extendqisi2	@ pSyntaxInfNew_8->top_field_first, pSyntaxInfNew_8->top_field_first
	cmp	r3, #0	@ pSyntaxInfNew_8->top_field_first,
	moveq	r8, #2	@ number_of_frame_center_offsets,
	movne	r8, #3	@ number_of_frame_center_offsets,
	b	.L520	@
.L533:
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
	add	r10, r7, #8	@ D.40031, pSyntaxInfNew,
	orr	r3, r3, #1048576	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
.L536:
	mov	r6, r9	@ ivtmp.312, ivtmp.323
	mov	r5, #0	@ i,
.L538:
	mov	r1, #4	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	add	r5, r5, #1	@ i, i,
	uxtb	r0, r0	@ D.40027,
	strb	r0, [r6], #1	@ D.40027, MEM[base: _100, offset: 0B]
	sub	r3, r0, #10	@ tmp182, D.40027,
	cmp	r0, #0	@ D.40027,
	cmpne	r3, #4	@, tmp182,
	ldrls	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orrls	r3, r3, #16	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	strls	r3, [r8, #2380]	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	cmp	r5, #2	@ i,
	bne	.L538	@,
	add	r9, r9, #2	@ ivtmp.323, ivtmp.323,
	cmp	r9, r10	@ ivtmp.323, D.40031
	bne	.L536	@,
	mov	r1, r5	@, i
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r5	@, i
	strb	r0, [r7, #8]	@, pSyntaxInfNew_10->intra_dc_precision
	mov	r0, r4	@, pBs
	bl	BsGet	@
	uxtb	r0, r0	@ D.40027,
	strb	r0, [r7, #9]	@ D.40027, pSyntaxInfNew_10->picture_structure
	cmp	r0, #0	@ D.40027,
	bne	.L540	@,
	ldr	r3, [r8, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	orr	r3, r3, #16	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality,
	str	r3, [r8, #2380]	@ D.40025, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L540:
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
	uxtb	r0, r0	@ D.40027,
	strb	r0, [r7, #3]	@ D.40027, pSyntaxInfNew_10->composite_display_flag
	cmp	r0, #0	@ D.40027,
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
	b	.L553	@
.L555:
	bl	BsSkip	@
	mov	r0, r4	@, pBs
	bl	BsResidBits	@
	add	r5, r5, #1	@ Byte_Count, Byte_Count,
	cmp	r0, #8	@,
	ble	.L554	@,
.L553:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #8	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L555	@,
.L554:
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
	bic	r3, r3, #3145728	@ D.40043, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality,
	mov	r0, r4	@, pBs
	bic	r3, r3, #56	@ D.40043, D.40043,
	orr	r3, r3, #524288	@ D.40043, D.40043,
	str	r3, [r2, #2380]	@ D.40043, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].StreamIntegrality
	bl	BsGet	@
	mov	r1, #3	@,
	str	r0, [r5, #156]	@, pSyntaxInfNew_6->temporal_reference
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #16	@,
	strb	r0, [r5, #22]	@, pSyntaxInfNew_6->picture_coding_type
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.40045, pSyntaxInfNew_6->picture_coding_type
	sub	r3, r7, #2	@ tmp150, D.40045,
	cmp	r3, #1	@ tmp150,
	str	r0, [r5, #160]	@, pSyntaxInfNew_6->vbv_delay
	bls	.L561	@,
.L558:
	cmp	r7, #3	@ D.40045,
	beq	.L562	@,
.L559:
	mov	r0, r6	@, pCtx
	bl	extra_bit_information	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L562:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, r7	@, D.40045
	strb	r0, [r5, #25]	@, pSyntaxInfNew_6->full_pel_backward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	strb	r0, [r5, #26]	@, pSyntaxInfNew_6->backward_f_code
	b	.L559	@
.L561:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsGet	@
	mov	r1, #3	@,
	strb	r0, [r5, #23]	@, pSyntaxInfNew_6->full_pel_forward_vector
	mov	r0, r4	@, pBs
	bl	BsGet	@
	ldrb	r7, [r5, #22]	@ zero_extendqisi2	@ D.40045, pSyntaxInfNew_6->picture_coding_type
	strb	r0, [r5, #24]	@, pSyntaxInfNew_6->forward_f_code
	b	.L558	@
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
	b	.L565	@
.L567:
	.word	.L566
	.word	.L568
	.word	.L569
	.word	.L570
	.word	.L570
	.word	.L565
	.word	.L572
	.word	.L573
	.word	.L570
	.word	.L570
.L572:
	mov	r0, r5	@, pCtx
	bl	picture_display_extension	@
.L565:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L570:
	mov	r0, r4	@, pBs
	mov	r1, #32	@,
	bl	BsSkip	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L569:
	mov	r0, r5	@, pCtx
	bl	quant_matrix_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L573:
	mov	r0, r5	@, pCtx
	bl	picture_coding_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L566:
	mov	r0, r5	@, pCtx
	bl	sequence_extension	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L568:
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
	mov	r8, r1	@ pstExtraData, pstExtraData
	movw	r1, #8184	@,
	ldr	r9, [r4, #4056]	@ D.40056, pCtx_4(D)->ImageQue.ResetMagicWord
	add	r6, r0, #72704	@ tmp127, pCtx,
	movt	r1, 1	@,
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r6, #640	@, tmp127,
	str	r9, [r4, #4056]	@ D.40056, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r7, #1	@ tmp141,
	bl	ResetVoQueue	@
	add	r2, r5, #45056	@ tmp148, pCtx,
	str	r8, [r5]	@ pstExtraData, pCtx_4(D)->pstExtraData
	add	r3, r6, #256	@ D.40058, tmp127,
	strb	r7, [r4, #4082]	@ tmp141, pCtx_4(D)->DSDNeedClearQue
	mov	r1, #3	@ tmp154,
	str	r3, [r4, #3708]	@ D.40058, pCtx_4(D)->pSyntaxInfOld
	add	r6, r6, #444	@ D.40058, tmp127,
	mov	r3, #0	@ tmp138,
	str	r6, [r4, #3704]	@ D.40058, pCtx_4(D)->pSyntaxInfNew
	str	r3, [r4, #4076]	@ tmp138, pCtx_4(D)->PPicFound
	mov	r0, r5	@, pCtx
	strb	r3, [r4, #4083]	@ tmp138, pCtx_4(D)->DSDNeedFlushFrame
	str	r7, [r4, #2392]	@ tmp141, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Second_Field
	strb	r1, [r2, #273]	@ tmp154, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Last_FieldStruct
	str	r3, [r4, #2436]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].HDRState
	ldr	r2, [r8, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	str	r3, [r4, #2428]	@ tmp138, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].Imgbuf_allocated
	str	r2, [r4, #2368]	@ pstExtraData_10(D)->s32DecMode, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].UsedDecMode
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.40059,
	str	r0, [r4, #4064]	@ D.40059, pCtx_4(D)->ChanID
	beq	.L581	@,
	mov	r0, r7	@ D.40055, tmp141
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L581:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.40055,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	beq	.L587	@,
	add	r4, r0, #188	@ ivtmp.350, pImg,
	add	r5, r0, #204	@ D.40087, pImg,
	mov	r7, #0	@ tmp137,
.L584:
	ldr	r1, [r4, #4]!	@, MEM[base: _25, offset: 0B]
	ldr	r0, [r6, #4064]	@, pCtx_4(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r4, r5	@ ivtmp.350, D.40087
	str	r7, [r4]	@ tmp137, MEM[base: _25, offset: 0B]
	bne	.L584	@,
.L587:
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
	beq	.L593	@,
	mov	r1, r5	@, FsID
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L601	@,
.L590:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L601:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp140, pCtx,
	add	r3, r0, #344	@ ivtmp.372, tmp140,
	add	r2, r7, #192	@ ivtmp.386, pImg,
	add	r0, r0, #360	@ D.40119, tmp140,
	mov	ip, #0	@ tmp161,
.L592:
	ldr	r1, [r3, #4]!	@ D.40113, MEM[base: _41, offset: 0B]
	mov	r5, #0	@ tmp142,
	add	r2, r2, #4	@ ivtmp.386, ivtmp.386,
	cmp	r1, r5	@ D.40113,
	strne	r1, [r2, #-4]	@ D.40113, MEM[base: _45, offset: 0B]
	cmp	r3, r0	@ ivtmp.372, D.40119
	str	ip, [r3]	@ tmp161, MEM[base: _41, offset: 0B]
	bne	.L592	@,
	str	r5, [r4, #2412]	@ tmp142, MEM[(struct MP2CODECINF *)pCtx_6(D) + 45328B].TotalUsrDatNum
	mov	r2, #1	@,
	ldr	r1, [r7, #176]	@, pImg_11->image_id
	ldr	r0, [r4, #4064]	@, pCtx_6(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r6, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@ pCtx_6(D)->ChanID, pCtx_6(D)->ChanID
	mov	r2, r6	@, pCtx
	add	r3, r3, #640	@,,
	mov	r1, #3	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, r5	@ ret, tmp142
	beq	.L590	@,
	ldr	r1, [r7, #176]	@, pImg_11->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	mvn	r0, #0	@ ret,
	b	.L590	@
.L593:
	mvn	r0, #0	@ ret,
	b	.L590	@
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
	add	r4, r0, #69632	@ tmp517, pCtx,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r3, [r4, #2416]	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	ldr	r5, [r4, #3704]	@ pSyntaxInfNew, pCtx_14(D)->pSyntaxInfNew
	cmp	r3, #1	@ D.40123,
	ldr	r8, [r4, #3708]	@ pSyntaxInfOld, pCtx_14(D)->pSyntaxInfOld
	beq	.L604	@,
	cmp	r3, #2	@ D.40123,
	bne	.L653	@,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	and	r3, r3, #1769472	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B],
	cmp	r3, #589824	@ D.40123,
	beq	.L609	@,
.L607:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L654	@,
.L611:
	ldr	r3, [r5, #48]	@ pSyntaxInfNew_16->horizontal_size, pSyntaxInfNew_16->horizontal_size
	add	r3, r3, #15	@ D.40123, pSyntaxInfNew_16->horizontal_size,
	mov	r3, r3, lsr #4	@ D.40123, D.40123,
	str	r3, [r5, #56]	@ D.40123, pSyntaxInfNew_16->mb_width
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r2, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L655	@,
.L612:
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #15	@ D.40123, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #4	@ D.40122, D.40123,
.L613:
	mov	r1, #0	@ tmp303,
	str	r2, [r5, #60]	@ D.40122, pSyntaxInfNew_16->mb_height
	str	r1, [r5, #64]	@ tmp303, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	ldr	r1, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r1, #2	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	beq	.L656	@,
.L614:
	ldr	r7, [r4, #2428]	@ D.40122, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r7, #0	@ D.40122,
	beq	.L617	@,
	ldr	r1, [r8, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	cmp	r3, r1	@ D.40123, pSyntaxInfOld_17->mb_width
	beq	.L657	@,
.L617:
	ldr	r3, [r6]	@ D.40130, pCtx_14(D)->pstExtraData
.L616:
	ldr	r7, [r3, #692]	@ _212->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _212->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ _212->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L658	@,
.L619:
	ldr	r2, .L663	@ tmp386,
	mov	r1, #0	@ tmp385,
	str	r1, [r3, #728]	@ tmp385, _213->s32DSDWaitFlag
	ldr	r3, [r2]	@ D.40126, g_event_report
	cmp	r3, r1	@ D.40126,
	beq	.L628	@,
	ldr	ip, [r8, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	add	r2, sp, #8	@,,
	mov	r1, #2	@,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	strh	ip, [sp, #8]	@ movhi	@ pSyntaxInfOld_17->mb_width, para
	ldr	ip, [r8, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	strh	ip, [sp, #10]	@ movhi	@ pSyntaxInfOld_17->mb_height, para
	ldr	ip, [r5, #56]	@ pSyntaxInfNew_16->mb_width, pSyntaxInfNew_16->mb_width
	strh	ip, [sp, #12]	@ movhi	@ pSyntaxInfNew_16->mb_width, para
	ldr	ip, [r5, #60]	@ pSyntaxInfNew_16->mb_height, pSyntaxInfNew_16->mb_height
	strh	ip, [sp, #14]	@ movhi	@ pSyntaxInfNew_16->mb_height, para
	blx	r3	@ D.40126
.L628:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L630	@,
	ldr	r1, [r5, #192]	@, pImg_146->p_usrdat
	mov	r7, #0	@ tmp419,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_146->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_146->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_146->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, #192]	@ tmp419, pImg_146->p_usrdat
	str	r7, [r5, #196]	@ tmp419, pImg_146->p_usrdat
	mov	r2, #1	@,
	str	r7, [r5, #200]	@ tmp419, pImg_146->p_usrdat
	str	r7, [r5, #204]	@ tmp419, pImg_146->p_usrdat
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r4, #2456]	@ tmp419, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r7, [r4, #2460]	@ tmp419, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, r7	@,
	bne	.L659	@,
.L630:
	add	r5, r6, #72704	@ D.40129, pCtx,
	mov	r3, #0	@ tmp467,
	add	r5, r5, #640	@ D.40129, D.40129,
	str	r3, [r4, #2420]	@ tmp467, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].RefNum
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	mov	r1, r5	@, D.40129
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [r6]	@ D.40130, pCtx_14(D)->pstExtraData
	ldr	r8, [r3, #608]	@ _183->stChanOption.s32ReRangeEn, _183->stChanOption.s32ReRangeEn
	cmp	r8, #0	@ _183->stChanOption.s32ReRangeEn,
	bne	.L632	@,
	ldr	r3, [r3, #32]	@ _183->eCapLevel, _183->eCapLevel
	cmp	r3, #25	@ _183->eCapLevel,
	beq	.L660	@,
.L632:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L633	@,
	ldr	r3, [r6]	@ pCtx_14(D)->pstExtraData, pCtx_14(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _195->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _195->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _195->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L661	@,
.L634:
	mov	r0, r5	@, D.40129
	bl	ResetVoQueue	@
.L633:
	mov	r3, #0	@ tmp499,
	mov	r0, r6	@, pCtx
	str	r3, [r4, #2428]	@ tmp499, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	mov	r1, r3	@, tmp499
	str	r3, [r4, #2444]	@ tmp499, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	bl	MP2_ArrangeVHBMem	@
	str	r0, [r4, #2428]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r4, #2428]	@ D.40122, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
.L618:
	str	r7, [r4, #2376]	@ D.40122, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].NewSeqInited
.L602:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L653:
	ldr	r3, [r4, #2380]	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	tst	r3, #3538944	@ D.40123,
	beq	.L609	@,
	tst	r3, #131072	@ D.40123,
	mov	r2, #2	@ tmp252,
	orreq	r3, r3, r2	@ D.40123, D.40123,
	streq	r3, [r4, #2380]	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	tst	r3, #1048576	@ D.40123,
	str	r2, [r4, #2416]	@ tmp252, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	orreq	r3, r3, #16	@ D.40123, D.40123,
	streq	r3, [r4, #2380]	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].StreamIntegrality
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag,
	bne	.L611	@,
.L654:
	mov	r2, #0	@ tmp280,
	mov	r0, #3	@ tmp273,
	mov	r1, #5	@ tmp279,
	strb	r3, [r5, #27]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->progressive_sequence
	strb	r3, [r5, #18]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->progressive_frame
	strb	r3, [r5, #11]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->frame_pred_frame_dct
	strb	r3, [r5, #28]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag, pSyntaxInfNew_16->chroma_format
	strb	r0, [r5, #9]	@ tmp273, pSyntaxInfNew_16->picture_structure
	str	r1, [r5, #144]	@ tmp279, pSyntaxInfNew_16->matrix_coefficients
	strb	r2, [r5, #12]	@ tmp280, pSyntaxInfNew_16->concealment_motion_vectors
	strb	r2, [r5, #13]	@ tmp280, pSyntaxInfNew_16->q_scale_type
	strb	r2, [r5, #14]	@ tmp280, pSyntaxInfNew_16->intra_vlc_format
	strb	r2, [r5, #15]	@ tmp280, pSyntaxInfNew_16->alternate_scan
	strb	r2, [r5, #8]	@ tmp280, pSyntaxInfNew_16->intra_dc_precision
	b	.L611	@
.L609:
	mov	r3, #1	@ tmp242,
	str	r3, [r4, #2416]	@ tmp242, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	b	.L607	@
.L604:
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B]
	mov	r2, #18	@ tmp224,
	bfi	r2, r2, #16, #16	@ tmp224, tmp224,,
	and	r3, r3, r2	@ D.40123, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B], tmp224
	cmp	r3, #1179648	@ D.40123,
	moveq	r3, #2	@ tmp231,
	streq	r3, [r4, #2416]	@ tmp231, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].MpegFlag
	b	.L607	@
.L656:
	ldrb	r1, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r1, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L614	@,
	ldr	r1, [r5, #52]	@ D.40123, pSyntaxInfNew_16->vertical_size
	add	r0, r1, #31	@ D.40123, D.40123,
	add	r1, r1, #15	@ D.40123, D.40123,
	mov	r0, r0, lsr #5	@ D.40123, D.40123,
	mov	r1, r1, lsr #4	@ D.40123, D.40123,
	rsb	r1, r1, r0, lsl #1	@ D.40123, D.40123, D.40123,
	str	r1, [r5, #64]	@ D.40123, pSyntaxInfNew_16->mb_height_progressive_subtract1mb
	b	.L614	@
.L655:
	ldrb	r2, [r5, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_16->progressive_sequence, pSyntaxInfNew_16->progressive_sequence
	cmp	r2, #0	@ pSyntaxInfNew_16->progressive_sequence,
	bne	.L612	@,
	ldr	r2, [r5, #52]	@ pSyntaxInfNew_16->vertical_size, pSyntaxInfNew_16->vertical_size
	add	r2, r2, #31	@ D.40123, pSyntaxInfNew_16->vertical_size,
	mov	r2, r2, lsr #5	@ D.40123, D.40123,
	mov	r2, r2, asl #1	@ D.40122, D.40123,
	b	.L613	@
.L661:
	ldrb	r3, [r4, #4082]	@ zero_extendqisi2	@ pCtx_14(D)->DSDNeedClearQue, pCtx_14(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_14(D)->DSDNeedClearQue,
	bne	.L633	@,
	b	.L634	@
.L659:
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.40125, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.40125, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	b	.L630	@
.L660:
	ldr	r7, [r4, #2428]	@ D.40122, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	cmp	r7, #0	@ D.40122,
	bne	.L618	@,
	mov	r0, r5	@, D.40129
	bl	ResetVoQueue	@
	mov	r1, r7	@, D.40122
	mov	r0, r6	@, pCtx
	bl	MP2_ArrangeVHBMem	@
	str	r8, [r4, #2444]	@ _183->stChanOption.s32ReRangeEn, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].QueueImageNum
	mov	r7, r0	@ D.40122,
	str	r0, [r4, #2428]	@ D.40122, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].Imgbuf_allocated
	b	.L618	@
.L657:
	ldr	r3, [r8, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	cmp	r2, r3	@ D.40122, pSyntaxInfOld_17->mb_height
	bne	.L617	@,
	ldr	r3, [r6]	@ D.40130, pCtx_14(D)->pstExtraData
	ldr	r2, [r3, #728]	@ _77->s32DSDWaitFlag, _77->s32DSDWaitFlag
	cmp	r2, #1	@ _77->s32DSDWaitFlag,
	bne	.L618	@,
	b	.L616	@
.L658:
	strb	r7, [r4, #4083]	@ _212->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_14(D)->DSDNeedFlushFrame
	mov	r0, r6	@, pCtx
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].FwdFsID
	mov	r3, #0	@ tmp324,
	str	r3, [sp]	@ tmp324, NewNum
	str	r3, [sp, #4]	@ tmp324, ReadNum
	str	r3, [sp, #8]	@ tmp324, RefNum
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L622	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	mov	r0, r6	@, pCtx
	bl	MP2_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L622	@,
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_14(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r2, #0	@ tmp356,
	cmp	r0, #0	@ pImage
	mov	r3, sp	@,
	strne	r7, [r0, #376]	@ _212->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_96->u32IsLastFrame
	add	r1, sp, #8	@,,
	strb	r2, [r4, #4083]	@ tmp356, pCtx_14(D)->DSDNeedFlushFrame
	add	r2, sp, #4	@,,
	ldr	r0, [r4, #4064]	@, pCtx_14(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6]	@ D.40130, pCtx_14(D)->pstExtraData
	ldr	r1, [r8, #56]	@ pSyntaxInfOld_17->mb_width, pSyntaxInfOld_17->mb_width
	ldr	r2, [r3, #720]	@ _103->s32DSDThrWidth, _103->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _103->s32DSDThrWidth, pSyntaxInfOld_17->mb_width,
	bcc	.L624	@,
	ldr	r1, [r8, #60]	@ pSyntaxInfOld_17->mb_height, pSyntaxInfOld_17->mb_height
	ldr	r2, [r3, #724]	@ _103->s32DSDThrHeight, _103->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _103->s32DSDThrHeight, pSyntaxInfOld_17->mb_height,
	bcc	.L624	@,
	ldmia	sp, {r1, r2}	@,,
	add	r2, r2, r1	@ D.40125, ReadNum, NewNum
	cmp	r2, #0	@ D.40125,
	ble	.L619	@,
	mov	r2, #1	@ tmp375,
	strb	r2, [r4, #4082]	@ tmp375, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp375, _103->s32DSDWaitFlag
	b	.L602	@
.L622:
	mov	r3, #0	@ tmp338,
	strb	r3, [r4, #4083]	@ tmp338, pCtx_14(D)->DSDNeedFlushFrame
	b	.L602	@
.L624:
	ldr	r2, [sp]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L662	@,
.L626:
	mov	r1, #0	@ tmp382,
	mov	r2, #1	@ tmp384,
	strb	r1, [r4, #4082]	@ tmp382, pCtx_14(D)->DSDNeedClearQue
	str	r2, [r3, #728]	@ tmp384, _103->s32DSDWaitFlag
	b	.L602	@
.L662:
	ldr	r2, [sp, #4]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	ble	.L619	@,
	b	.L626	@
.L664:
	.align	2
.L663:
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
	b	.L666	@
.L673:
	bl	BsShow	@
	mov	r4, r0	@ D.40136,
	mov	r0, r5	@, pBs
	bl	BsPos	@
	sub	r3, r4, #256	@ D.40137, D.40136,
	sub	r3, r3, #1	@ D.40137, D.40137,
	mov	r1, #32	@,
	cmp	r3, #174	@ D.40137,
	str	r0, [r7, #2440]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRUsedBits
	mov	r0, r5	@, pBs
	bls	.L681	@,
	bl	BsSkip	@
.L666:
	mov	r0, r6	@, pCtx
	bl	next_start_code	@
	mov	r1, #32	@,
	mov	r3, r0	@ ret,
	cmp	r3, #1	@ ret,
	mov	r0, r5	@, pBs
	beq	.L673	@,
	cmn	r3, #1	@ ret,
	beq	.L668	@,
	mov	r0, r3	@ D.40135, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L668:
	ldr	r3, .L683	@ tmp144,
	ldr	r3, [r3]	@ D.40139, g_event_report
	cmp	r3, #0	@ D.40139,
	beq	.L675	@,
	add	r6, r6, #69632	@ tmp146, pCtx,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r6, #4064]	@, pCtx_8(D)->ChanID
	blx	r3	@ D.40139
	mvn	r0, #0	@ D.40135,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L681:
	bl	BsResidBits	@
	cmp	r0, #40	@,
	ble	.L668	@,
	ldr	r4, [r7, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	mov	r3, #0	@ tmp136,
	str	r3, [r7, #2436]	@ tmp136, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].HDRState
	cmp	r4, r3	@ MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited,
	bne	.L672	@,
	mov	r0, r6	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r6]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _26->s32DSDWaitFlag, _26->s32DSDWaitFlag
	cmp	r3, #1	@ _26->s32DSDWaitFlag,
	beq	.L682	@,
.L672:
	mov	r0, r6	@, pCtx
	bl	MP2_ProtocolPPSCheck	@
	mov	r0, #1	@ D.40135,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L675:
	mvn	r0, #0	@ D.40135,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L682:
	mov	r0, r4	@ D.40135, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].NewSeqInited
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L684:
	.align	2
.L683:
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
	beq	.L686	@,
	add	r5, r0, #69632	@ tmp182, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r9, r0, #0	@ pImg,
	beq	.L707	@,
	ldr	r1, [r5, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].BwdFsID
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L705	@,
.L707:
	add	r4, r6, #72704	@ tmp183, pCtx,
.L686:
	add	r7, r4, #640	@ D.40164, tmp183,
.L692:
	mov	r0, r7	@, D.40164
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@
	b	GetVoLastImageID	@
.L705:
	mov	r0, r6	@, pCtx
	bl	MP2_SetImgFormat	@
	add	r0, r6, #71680	@ tmp159, pCtx,
	add	r3, r0, #344	@ ivtmp.400, tmp159,
	add	r2, r9, #192	@ ivtmp.414, pImg,
	add	r0, r0, #360	@ D.40172, tmp159,
	mov	ip, #0	@ tmp185,
.L688:
	ldr	r1, [r3, #4]!	@ D.40167, MEM[base: _57, offset: 0B]
	mov	r8, #0	@ tmp161,
	add	r2, r2, #4	@ ivtmp.414, ivtmp.414,
	cmp	r1, r8	@ D.40167,
	strne	r1, [r2, #-4]	@ D.40167, MEM[base: _61, offset: 0B]
	cmp	r3, r0	@ ivtmp.400, D.40172
	str	ip, [r3]	@ tmp185, MEM[base: _57, offset: 0B]
	bne	.L688	@,
	mov	r3, #1	@ tmp167,
	str	r8, [r5, #2412]	@ tmp161, MEM[(struct MP2CODECINF *)pCtx_8(D) + 45328B].TotalUsrDatNum
	mov	r2, r3	@, tmp167
	str	r3, [r9, #224]	@ tmp167, pImg_15->last_frame
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	add	r4, r6, #72704	@ tmp183, pCtx,
	ldr	r0, [r5, #4064]	@, pCtx_8(D)->ChanID
	add	r7, r4, #640	@ D.40164, tmp183,
	bl	FSP_SetDisplay	@
	ldr	r0, [r5, #4064]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r3, r7	@, D.40164
	mov	r2, r6	@, pCtx
	mov	r1, #3	@,
	str	r9, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L689	@,
	ldr	r1, [r9, #176]	@, pImg_15->image_id
	mov	r0, r6	@, pCtx
	bl	MPEG2DEC_RecycleImage	@
	b	.L692	@
.L689:
	ldr	r3, [r9, #180]	@ pImg_15->error_level, pImg_15->error_level
	cmp	r3, #100	@ pImg_15->error_level,
	bhi	.L686	@,
	ldr	r3, [r9, #144]	@ pImg_15->image_width, pImg_15->image_width
	cmp	r3, #31	@ pImg_15->image_width,
	bls	.L686	@,
	ldr	r3, [r9, #148]	@ pImg_15->image_height, pImg_15->image_height
	cmp	r3, #31	@ pImg_15->image_height,
	bls	.L692	@,
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
	beq	.L709	@,
	ldr	r3, [r5, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field
	cmp	r3, #0	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].Second_Field,
	beq	.L711	@,
.L709:
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@,
	beq	.L711	@,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L720	@,
	mov	r0, #0	@ D.40175,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L711:
	mov	r0, #1	@ D.40175,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L720:
	add	r1, r4, #72704	@, pCtx,
	ldr	r0, [r5, #4064]	@, pCtx_3(D)->ChanID
	add	r1, r1, #640	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.40175,
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
	beq	.L722	@,
	mov	r0, r5	@, ChanID
	ldr	r1, [r4, #32]	@, pMp2Packet_3(D)->StreamID
	bl	SM_ReleaseStreamSeg	@
.L722:
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
	beq	.L733	@,
	add	r3, r0, #24576	@ tmp137, pMp2CodecInfo,
	mov	r5, #0	@ tmp138,
	str	r5, [r3, #2056]	@ tmp138, pMp2CodecInfo_6(D)->BsOffset
	ldr	r1, [r4, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	r1, [r3, #2100]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_6(D)->PacketTail
	ldr	r1, [r4, #8]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pPacket_3(D)->StreamPack[0].PhyAddr
	str	r1, [r3, #2072]	@ pPacket_3(D)->StreamPack[0].PhyAddr, pMp2CodecInfo_6(D)->stMp2Packet.BsPhyAddr
	ldr	r1, [r4]	@ D.40193, pPacket_3(D)->StreamPack[0].VirAddr
	str	r1, [r3, #2064]	@ D.40193, pMp2CodecInfo_6(D)->stMp2Packet.BsVirAddr
	ldr	r1, [r4, #12]	@ pPacket_3(D)->StreamPack[0].LenInByte, pPacket_3(D)->StreamPack[0].LenInByte
	str	r1, [r3, #2080]	@ pPacket_3(D)->StreamPack[0].LenInByte, pMp2CodecInfo_6(D)->stMp2Packet.BsLength
	ldrb	r1, [r4, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	strb	r1, [r3, #2060]	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pMp2CodecInfo_6(D)->stMp2Packet.IsLastSeg
	ldr	r1, [r4, #16]	@ D.40192, pPacket_3(D)->StreamPack[0].StreamID
	str	r1, [r3, #2088]	@ D.40192, pMp2CodecInfo_6(D)->stMp2Packet.StreamID
	ldrb	ip, [r4, #5]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[0].IsLastSeg, pPacket_3(D)->StreamPack[0].IsLastSeg
	cmp	ip, #1	@ pPacket_3(D)->StreamPack[0].IsLastSeg,
	beq	.L730	@,
	ldr	r1, [r4, #88]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pPacket_3(D)->StreamPack[1].PhyAddr
	str	r1, [r3, #2076]	@ pPacket_3(D)->StreamPack[1].PhyAddr, pMp2CodecInfo_6(D)->stMp2Packet.BsPhyAddr
	ldr	r1, [r4, #80]	@ D.40193, pPacket_3(D)->StreamPack[1].VirAddr
	str	r1, [r3, #2068]	@ D.40193, pMp2CodecInfo_6(D)->stMp2Packet.BsVirAddr
	ldr	r1, [r4, #92]	@ pPacket_3(D)->StreamPack[1].LenInByte, pPacket_3(D)->StreamPack[1].LenInByte
	str	r1, [r3, #2084]	@ pPacket_3(D)->StreamPack[1].LenInByte, pMp2CodecInfo_6(D)->stMp2Packet.BsLength
	ldrb	r1, [r4, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	strb	r1, [r3, #2061]	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pMp2CodecInfo_6(D)->stMp2Packet.IsLastSeg
	ldr	r1, [r4, #96]	@ D.40192, pPacket_3(D)->StreamPack[1].StreamID
	str	r1, [r3, #2092]	@ D.40192, pMp2CodecInfo_6(D)->stMp2Packet.StreamID
	ldrb	r4, [r4, #85]	@ zero_extendqisi2	@ pPacket_3(D)->StreamPack[1].IsLastSeg, pPacket_3(D)->StreamPack[1].IsLastSeg
	cmp	r4, #1	@ pPacket_3(D)->StreamPack[1].IsLastSeg,
	beq	.L731	@,
	add	r1, r0, #26624	@, pMp2CodecInfo,
	mov	r0, r2	@, ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@ D.40190, tmp138
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L731:
	mov	r0, r4	@ D.40190, pPacket_3(D)->StreamPack[1].IsLastSeg
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L730:
	str	r5, [r3, #2076]	@ tmp138, pMp2CodecInfo_6(D)->stMp2Packet.BsPhyAddr
	mov	r0, ip	@ D.40190, pPacket_3(D)->StreamPack[0].IsLastSeg
	str	r5, [r3, #2068]	@ tmp138, pMp2CodecInfo_6(D)->stMp2Packet.BsVirAddr
	str	r5, [r3, #2084]	@ tmp138, pMp2CodecInfo_6(D)->stMp2Packet.BsLength
	strb	r5, [r3, #2061]	@ tmp138, pMp2CodecInfo_6(D)->stMp2Packet.IsLastSeg
	str	r5, [r3, #2092]	@ tmp138, pMp2CodecInfo_6(D)->stMp2Packet.StreamID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L733:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40190, pPacket
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	bne	.L737	@,
	b	.L738	@
.L736:
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcs	.L738	@,
.L737:
	ldr	r1, [r4, #284]	@, MEM[base: _19, offset: 284B]
	add	r5, r5, #1	@ i, i,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #264]	@ MEM[base: _19, offset: 264B], MEM[base: _19, offset: 264B]
	cmp	r3, #0	@ MEM[base: _19, offset: 264B],
	beq	.L736	@,
	ldr	r3, [r4, #272]	@ MEM[base: _19, offset: 272B], MEM[base: _19, offset: 272B]
	cmp	r3, #0	@ MEM[base: _19, offset: 272B],
	beq	.L736	@,
	ldr	r1, [r4, #288]	@, MEM[base: _19, offset: 288B]
	add	r4, r4, #44	@ ivtmp.428, ivtmp.428,
	ldr	r0, [r7, #4064]	@, pCtx_4(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r6, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	cmp	r5, r3	@ i, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	bcc	.L737	@,
.L738:
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
	mov	r5, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r1	@ ErrRatio, ErrRatio
	add	r9, r0, #45056	@ tmp232, pCtx,
	ldr	r8, [r4, #3704]	@ pSyntaxInfNew, pCtx_17(D)->pSyntaxInfNew
	strb	r3, [r4, #2560]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_17(D) + 8B].EstmatedPicQp, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].EstmatedPicQp
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	MP2_RecordVFMWState	@
	mov	r0, r5	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r1, [r4, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	mov	r7, r0	@ pCurImg,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r1, [r4, #2456]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r7, #0	@ pCurImg,
	beq	.L765	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ D.40279, pSyntaxInfNew_20->picture_coding_type
	cmp	r6, #0	@ ErrRatio,
	strb	r3, [r9, #272]	@ D.40279, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].LastDecPicCodingType
	str	r6, [r7, #180]	@ ErrRatio, pCurImg_29->error_level
	blt	.L751	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.40275,
	str	r6, [r7, #180]	@ D.40275, pCurImg_29->error_level
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L752	@,
	ldr	r3, [r5]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3]	@ _46->s32RefErrThr, _46->s32RefErrThr
	cmp	r6, r3	@ D.40275, _46->s32RefErrThr
	bhi	.L812	@,
.L752:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	MP2_SetImgFormat	@
	movw	r1, #45320	@,
	add	r0, r5, #8	@, pCtx,
	bl	__memzero	@
	ldrb	r3, [r8, #9]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_structure, pSyntaxInfNew_20->picture_structure
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_structure,
	beq	.L758	@,
	ldr	r3, [r4, #2392]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Second_Field,
	movne	r0, #1	@ D.40275,
	beq	.L758	@,
.L807:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L758:
	add	r1, r5, #71680	@ tmp342, pCtx,
	add	r0, r7, #192	@ ivtmp.494, pCurImg,
	add	r3, r1, #344	@ ivtmp.480, tmp342,
	add	r1, r1, #360	@ D.40274, tmp342,
	mov	lr, #0	@ tmp519,
.L757:
	ldr	r2, [r3, #4]!	@ D.40283, MEM[base: _134, offset: 0B]
	mov	ip, #0	@ tmp349,
	add	r0, r0, #4	@ ivtmp.494, ivtmp.494,
	cmp	r2, ip	@ D.40283,
	strne	r2, [r0, #-4]	@ D.40283, MEM[base: _12, offset: 0B]
	cmp	r3, r1	@ ivtmp.480, D.40274
	str	lr, [r3]	@ tmp519, MEM[base: _134, offset: 0B]
	bne	.L757	@,
	str	ip, [r4, #2412]	@ tmp349, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].TotalUsrDatNum
	ldr	r3, [r5]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _97->s32DecOrderOutput, _97->s32DecOrderOutput
	cmp	r3, #1	@ _97->s32DecOrderOutput,
	beq	.L760	@,
	ldrb	r3, [r8, #22]	@ zero_extendqisi2	@ pSyntaxInfNew_20->picture_coding_type, pSyntaxInfNew_20->picture_coding_type
	cmp	r3, #3	@ pSyntaxInfNew_20->picture_coding_type,
	beq	.L760	@,
	ldr	r1, [r4, #2456]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r1, [r4, #2468]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
.L761:
	cmn	r1, #1	@ D.40280,
	beq	.L763	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #1	@,
	beq	.L767	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L767	@,
.L763:
	ldrb	r3, [r8, #27]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_sequence, pSyntaxInfNew_20->progressive_sequence
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_sequence,
	beq	.L813	@,
	ldrb	r3, [r8, #18]	@ zero_extendqisi2	@ pSyntaxInfNew_20->progressive_frame, pSyntaxInfNew_20->progressive_frame
	cmp	r3, #1	@ pSyntaxInfNew_20->progressive_frame,
	ldr	r3, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r3, #1	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	addne	r3, r3, #1	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt,
	streq	r3, [r4, #2544]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	ldreqb	r3, [r8, #16]	@ zero_extendqisi2	@ D.40280, pSyntaxInfNew_20->repeat_first_field
	ldreq	r2, [r4, #2540]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	addeq	r3, r3, #2	@ D.40280, D.40280,
	strne	r3, [r4, #2544]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	addeq	r3, r2, r3	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt, D.40280
	movne	r3, r3, asl #1	@ D.40280, D.40280,
	str	r3, [r4, #2540]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
.L774:
	ldr	r2, [r4, #2536]	@ pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	mov	r0, #1	@ D.40275,
	ldr	r3, [r4, #2388]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	r2, r2, r0	@ D.40280, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt,
	str	r2, [r4, #2536]	@ D.40280, pCtx_17(D)->CodecInfo.GopHist[3].GopFrmCntNoRpt
	add	r3, r3, r0	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt,
	str	r3, [r4, #2388]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].Frame_Cnt
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L751:
	mov	r3, #0	@ tmp501,
	str	r3, [r7, #180]	@ tmp501, pCurImg_29->error_level
	b	.L752	@
.L812:
	ldr	r1, [r4, #2460]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L754	@,
	ldr	r1, [r5, #192]	@, pImg_52->p_usrdat
	mov	r6, #0	@ tmp291,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #196]	@, pImg_52->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #200]	@, pImg_52->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	ldr	r1, [r5, #204]	@, pImg_52->p_usrdat
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp291, pImg_52->p_usrdat
	str	r6, [r5, #196]	@ tmp291, pImg_52->p_usrdat
	mov	r2, #1	@,
	str	r6, [r5, #200]	@ tmp291, pImg_52->p_usrdat
	str	r6, [r5, #204]	@ tmp291, pImg_52->p_usrdat
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
	beq	.L754	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r0, [r4, #2456]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].FwdFsID
	str	r0, [r4, #2460]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].BwdFsID
.L754:
	mov	r3, #0	@ tmp339,
	mov	r0, #1	@ D.40275,
	str	r3, [r4, #2420]	@ tmp339, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].RefNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L767:
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r6, r0, #0	@ pToQueImg,
	beq	.L765	@,
	ldr	r3, [r6, #180]	@ D.40281, pToQueImg_117->error_level
	cmp	r3, #0	@ D.40281,
	beq	.L769	@,
	ldr	r2, [r5]	@ pCtx_17(D)->pstExtraData, pCtx_17(D)->pstExtraData
	ldr	r2, [r2, #4]	@ _120->s32OutErrThr, _120->s32OutErrThr
	cmp	r3, r2	@ D.40281, _120->s32OutErrThr
	bhi	.L814	@,
.L769:
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #72704	@, pCtx,
	ldr	r0, [r4, #4064]	@ pCtx_17(D)->ChanID, pCtx_17(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #640	@,,
	mov	r1, #3	@,
	str	r6, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.40280,
	beq	.L776	@,
	add	r5, r6, #188	@ ivtmp.440, pToQueImg,
	add	r6, r6, #204	@ D.40274, pToQueImg,
	mov	r7, #0	@ tmp517,
.L771:
	ldr	r1, [r5, #4]!	@, MEM[base: _199, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r5, r6	@ ivtmp.440, D.40274
	str	r7, [r5]	@ tmp517, MEM[base: _199, offset: 0B]
	bne	.L771	@,
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.40275,
	b	.L807	@
.L760:
	ldr	r1, [r4, #2464]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].CurFsID
	str	r1, [r4, #2468]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	b	.L761	@
.L813:
	ldrb	r2, [r8, #16]	@ zero_extendqisi2	@ D.40280, pSyntaxInfNew_20->repeat_first_field
	ldrb	r3, [r8, #10]	@ zero_extendqisi2	@ D.40280, pSyntaxInfNew_20->top_field_first
	ldr	r1, [r4, #2544]	@ MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	add	r3, r2, r3	@ D.40280, D.40280, D.40280
	add	r3, r3, #1	@ D.40280, D.40280,
	add	r3, r3, r1	@ D.40280, D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	str	r3, [r4, #2544]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFrmCnt
	mov	r3, r3, asl #1	@ D.40280, D.40280,
	str	r3, [r4, #2540]	@ D.40280, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].GopHist[3].GopFldCnt
	b	.L774	@
.L814:
	bl	vfmw_dprint_nothing	@
	add	r5, r6, #188	@ ivtmp.460, pToQueImg,
	add	r6, r6, #204	@ D.40274, pToQueImg,
	mov	r7, #0	@ tmp518,
.L772:
	ldr	r1, [r5, #4]!	@, MEM[base: _188, offset: 0B]
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FreeUsdByDec	@
	cmp	r5, r6	@ ivtmp.460, D.40274
	str	r7, [r5]	@ tmp518, MEM[base: _188, offset: 0B]
	bne	.L772	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #2468]	@, MEM[(struct MP2CODECINF *)pCtx_17(D) + 45328B].ToQueFsID
	ldr	r0, [r4, #4064]	@, pCtx_17(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L763	@
.L765:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40275,
	b	.L807	@
.L776:
	ldr	r3, [r4, #4072]	@ pCtx_17(D)->numOutputFrame, pCtx_17(D)->numOutputFrame
	add	r3, r3, #1	@ D.40280, pCtx_17(D)->numOutputFrame,
	str	r3, [r4, #4072]	@ D.40280, pCtx_17(D)->numOutputFrame
	ldr	r3, [r5]	@ D.40282, pCtx_17(D)->pstExtraData
	str	r0, [r3, #732]	@ D.40280, _151->s32firstIdecodedflag
	b	.L763	@
	.fnend
	.size	MPEG2DEC_VDMPostProc, .-MPEG2DEC_VDMPostProc
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
	mov	r4, r0	@ D.40288,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40288
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	mov	r1, #1	@ tmp127,
	ldr	r2, [r0, #4]	@ pSlcInfo_6(D)->pic_height_in_mb, pSlcInfo_6(D)->pic_height_in_mb
	mov	r3, #0	@ tmp128,
	mov	r5, r0	@ pSlcInfo, pSlcInfo
	str	r1, [r0, #16]	@ tmp127, pSlcInfo_6(D)->FirstMbInSliceFlag
	cmp	r2, #175	@ pSlcInfo_6(D)->pic_height_in_mb,
	ldr	r4, [r0, #52]	@ pBs, pSlcInfo_6(D)->pBs
	str	r3, [r0, #24]	@ tmp128, pSlcInfo_6(D)->slice_vertical_position_extension
	bls	.L818	@,
	ldr	r2, [r0]	@ pSlcInfo_6(D)->mpeg1_flag, pSlcInfo_6(D)->mpeg1_flag
	cmp	r2, r3	@ pSlcInfo_6(D)->mpeg1_flag,
	beq	.L831	@,
.L818:
	ldr	r1, [r5, #20]	@ pSlcInfo_6(D)->slice_vertical_position, pSlcInfo_6(D)->slice_vertical_position
	mov	r0, r4	@, pBs
	ldr	r2, [r5, #8]	@ pSlcInfo_6(D)->pic_width_in_mb, pSlcInfo_6(D)->pic_width_in_mb
	sub	r1, r1, #1	@ D.40292, pSlcInfo_6(D)->slice_vertical_position,
	add	r3, r1, r3	@ mb_row, D.40292, D.40292
	mov	r1, #5	@,
	mul	r3, r2, r3	@ D.40291, pSlcInfo_6(D)->pic_width_in_mb, mb_row
	ldr	r2, .L833	@,
	cmp	r3, #0	@ D.40291,
	subne	r3, r3, #1	@ D.40291, D.40291,
	str	r3, [r5, #28]	@ D.40291, pSlcInfo_6(D)->previous_macroblock_address
	bl	MP2_u_v	@
	mov	r3, #0	@ tmp137,
	mov	r1, #1	@,
	str	r3, [r5, #32]	@ tmp137, pSlcInfo_6(D)->intra_slice
	str	r0, [r5, #48]	@, pSlcInfo_6(D)->quantiser_scale_code
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #0	@,
	bne	.L832	@,
.L823:
	ldr	r2, .L833+4	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L832:
	ldr	r2, .L833+8	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	ldr	r2, .L833+12	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	ldr	r2, .L833+16	@,
	mov	r1, #7	@,
	str	r0, [r5, #32]	@, pSlcInfo_6(D)->intra_slice
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	b	.L821	@
.L822:
	bl	MP2_u_v	@
	ldr	r2, .L833+20	@,
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
.L821:
	mov	r1, #1	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	ldr	r2, .L833+4	@,
	mov	r1, #1	@,
	cmp	r0, #0	@,
	mov	r0, r4	@, pBs
	bne	.L822	@,
	b	.L823	@
.L831:
	ldr	r2, .L833+24	@,
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
	mov	r3, r0, asl #7	@ D.40292, D.40292,
	str	r0, [r5, #24]	@ D.40292, pSlcInfo_6(D)->slice_vertical_position_extension
	b	.L818	@
.L834:
	.align	2
.L833:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC1
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
	add	r7, r0, #45056	@ tmp277, pCtx,
	mov	r4, #44	@ tmp140,
	add	r6, r0, #69632	@ tmp144, pCtx,
	ldr	r3, [r7, #260]	@ D.40306, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	mov	r5, r0	@ pCtx, pCtx
	ldr	r2, [r6, #2600]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice
	cmp	r3, #1024	@ D.40306,
	mla	r4, r4, r3, r0	@ tmp141, tmp140, D.40306, pCtx
	str	r2, [r4, #296]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].intra_slice, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].intra_slice
	ldr	r2, [r6, #2616]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code
	str	r2, [r4, #300]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].quantiser_scale_code, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].quantiser_scale_code
	ldr	r2, [r6, #2612]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num
	str	r2, [r4, #292]	@ MEM[(struct MP2_SLCINFO_S *)pCtx_4(D) + 72200B].slicen_start_mb_num, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].slice_start_mbn
	bcs	.L843	@,
	ldr	r2, [r6, #2648]	@ D.40306, MEM[(struct BS *)pCtx_4(D) + 72256B].TotalPos
	add	r0, r0, #71680	@, pCtx,
	ldr	r3, [r6, #2344]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	add	r0, r0, #576	@,,
	and	r1, r2, #7	@ bs_offset, D.40306,
	str	r1, [r4, #276]	@ bs_offset, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	add	r3, r3, r2, lsr #3	@ stream_base_addr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, D.40306,
	str	r3, [r4, #260]	@ stream_base_addr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r6, #2360]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #284]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	bl	BsResidBits	@
	movw	r3, #2332	@ tmp213,
	str	r0, [r4, #268]	@, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	ldrsh	r3, [r6, r3]	@ D.40308, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B]
	cmp	r3, #1	@ D.40308,
	beq	.L844	@,
	cmp	r3, #256	@ D.40308,
	bne	.L841	@,
	ldr	r1, [r6, #2348]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr
	mov	r2, #0	@ tmp250,
	str	r2, [r4, #280]	@ tmp250, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r1, [r4, #264]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsPhyAddr, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	ldr	r3, [r6, #2364]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID
	str	r3, [r4, #288]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.StreamID, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	ldr	r3, [r6, #2356]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength
	mov	r3, r3, asl #3	@ D.40307, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].stMp2Packet.BsLength,
	str	r3, [r4, #272]	@ D.40307, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
.L840:
	ldr	r3, [r7, #260]	@ MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	mov	r0, #1	@ D.40305,
	add	r3, r3, r0	@ D.40306, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum,
	str	r3, [r7, #260]	@ D.40306, MEM[(struct MP2_DEC_PARAM_S *)pCtx_4(D) + 8B].SlcNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L843:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, [r6, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	mov	r0, #0	@ tmp174,
	str	r0, [r6, #2436]	@ tmp174, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].HDRState
	bic	r3, r3, #5767168	@ D.40306, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality,
	str	r3, [r6, #2380]	@ D.40306, MEM[(struct MP2CODECINF *)pCtx_4(D) + 45328B].StreamIntegrality
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L844:
	mov	r3, #0	@ tmp220,
	add	r4, r4, #268	@ tmp234, tmp141,
	str	r3, [r4, #-4]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsPhyAddr
	str	r3, [r4, #12]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsBitOffset
	str	r3, [r4, #20]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsID
	str	r3, [r4, #4]	@ tmp220, MEM[(struct MP2_SLCSTR_S *)pCtx_4(D) + 8B].SlcStr[_6].BsLenInBit
	b	.L840	@
.L841:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40305,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	ldr	r5, .L852	@ tmp125,
	add	r0, r5, r0, lsl #3	@ tmp126, tmp125,,
	ldr	r4, [r0, #204]	@ MbAddrInc, tab_for_first_4bit
	ldr	r1, [r0, #208]	@ SkipBit, tab_for_first_4bit
	cmp	r4, #6	@ MbAddrInc,
	bls	.L850	@,
	cmp	r4, #9	@ MbAddrInc,
	beq	.L851	@,
	mov	r1, #11	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	ldr	r2, .L852+4	@,
	and	r3, r0, #127	@ code,,
	mov	r0, r6	@, pBs
	sub	r3, r3, #24	@ code, code,
	add	r5, r5, r3, lsl #3	@ tmp134, tmp125, code,
	ldr	r4, [r5, #332]	@ MbAddrInc, tab_for_last_7bit
	ldr	r1, [r5, #336]	@, tab_for_last_7bit
	bl	MP2_u_v	@
	mov	r0, r4	@ D.40316, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L850:
	mov	r0, r6	@, pBs
	ldr	r2, .L852+4	@,
	bl	MP2_u_v	@
	mov	r0, r4	@ D.40316, MbAddrInc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L851:
	mov	r0, r6	@, pBs
	ldr	r2, .L852+4	@,
	bl	MP2_u_v	@
	rsb	r0, r0, #9	@ D.40316,,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L853:
	.align	2
.L852:
	.word	.LANCHOR0
	.word	.LC8
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
	b	.L855	@
.L859:
	cmp	r0, #15	@ D.40324,
	beq	.L856	@,
	cmp	r0, #8	@ D.40324,
	add	r5, r5, #33	@ macroblock_escape, macroblock_escape,
	bne	.L857	@,
.L856:
	ldr	r2, .L869	@,
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	MP2_u_v	@
.L855:
	mov	r1, #11	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	cmp	r0, #23	@ D.40324,
	bls	.L859	@,
	mov	r0, r4	@, pBs
	bl	MP2_MbAddrInc	@
	ldr	r3, [r6, #16]	@ pSlcInfo_10(D)->FirstMbInSliceFlag, pSlcInfo_10(D)->FirstMbInSliceFlag
	cmp	r3, #0	@ pSlcInfo_10(D)->FirstMbInSliceFlag,
	beq	.L857	@,
	ldr	r3, [r6, #28]	@ D.40323, pSlcInfo_10(D)->previous_macroblock_address
	add	r5, r5, r0	@ D.40323, macroblock_escape, macroblock_address_increment
	cmp	r3, #0	@ D.40323,
	addne	r5, r5, r3	@ SlcStartMbNum, D.40323, D.40323
	ldr	r3, [r6, #12]	@ pSlcInfo_10(D)->pic_total_mb_num, pSlcInfo_10(D)->pic_total_mb_num
	subeq	r5, r5, #1	@ SlcStartMbNum, D.40323,
	str	r5, [r6, #44]	@ SlcStartMbNum, pSlcInfo_10(D)->slicen_start_mb_num
	sub	r3, r3, #1	@ D.40323, pSlcInfo_10(D)->pic_total_mb_num,
	cmp	r5, r3	@ SlcStartMbNum, D.40323
	bhi	.L857	@,
	mov	r0, #1	@ D.40322,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L857:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40322,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L870:
	.align	2
.L869:
	.word	.LC9
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
	uxtb	r1, r1	@ D.40342, code
	ldr	r2, [r4, #2416]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag
	add	ip, r3, #576	@ D.40344, tmp134,
	add	r6, r3, #520	@ pSlcInfo, tmp134,
	ldr	lr, [r4, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength
	ldr	r3, [r4, #3704]	@ pSyntaxInfNew, pCtx_3(D)->pSyntaxInfNew
	sub	r2, r2, #1	@ D.40343, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].MpegFlag,
	ldr	r7, [r4, #2336]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr
	clz	r2, r2	@ D.40343, D.40343
	str	lr, [r4, #2608]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].ByteLen
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, r2, lsr #5	@ D.40343, D.40343,
	str	r2, [r4, #2568]	@ D.40343, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].mpeg1_flag
	str	r7, [r4, #2604]	@ MEM[(struct MP2CODECINF *)pCtx_3(D) + 45328B].stMp2Packet.BsVirAddr, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].VirAddr
	mov	r0, r6	@, pSlcInfo
	ldr	r2, [r3, #60]	@ D.40342, pSyntaxInfNew_6->mb_height
	str	r2, [r4, #2572]	@ D.40342, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_height_in_mb
	ldr	r2, [r3, #56]	@ D.40342, pSyntaxInfNew_6->mb_width
	str	r2, [r4, #2576]	@ D.40342, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_width_in_mb
	ldr	r2, [r3, #52]	@ pSyntaxInfNew_6->vertical_size, pSyntaxInfNew_6->vertical_size
	ldr	r3, [r3, #48]	@ pSyntaxInfNew_6->horizontal_size, pSyntaxInfNew_6->horizontal_size
	add	r2, r2, #15	@ D.40342, pSyntaxInfNew_6->vertical_size,
	str	r1, [r4, #2588]	@ D.40342, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].slice_vertical_position
	add	r3, r3, #15	@ D.40342, pSyntaxInfNew_6->horizontal_size,
	str	ip, [r4, #2620]	@ D.40344, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pBs
	mov	r2, r2, lsr #4	@ D.40342, D.40342,
	mov	r3, r3, lsr #4	@ D.40342, D.40342,
	mul	r3, r3, r2	@ D.40342, D.40342, D.40342
	str	r3, [r4, #2580]	@ D.40342, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].pic_total_mb_num
	bl	MP2_DecSliceHeader	@
	mov	r0, r6	@, pSlcInfo
	bl	MP2_InitMb	@
	mov	r3, #0	@ tmp182,
	str	r3, [r4, #2584]	@ tmp182, MEM[(struct MP2_SLCINFO_S *)pCtx_3(D) + 72200B].FirstMbInSliceFlag
	cmp	r0, #1	@,
	beq	.L874	@,
.L876:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40339,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L874:
	mov	r0, r5	@, pCtx
	bl	MP2_WriteSliceInfo	@
	cmp	r0, #1	@ D.40339,
	bne	.L876	@,
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
	add	r4, r0, #69632	@ tmp438, pCtx,
	add	r6, r6, #576	@ pBs, pBs,
	mov	r1, #32	@,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r7, r0	@ pCtx, pCtx
	mov	r8, #0	@ tmp191,
	mov	r0, r6	@, pBs
	strb	r8, [r4, #4080]	@ tmp191, pCtx_11(D)->IsWaitToDecFlag
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
	movw	r3, #439	@ tmp201,
	cmp	r5, r3	@ code, tmp201
	beq	.L950	@,
	movw	r3, #435	@ tmp262,
	cmp	r5, r3	@ code, tmp262
	cmpne	r5, #440	@, code,
	bne	.L885	@,
.L881:
	ldr	r3, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r3, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L951	@,
.L882:
	movw	r3, #435	@ tmp290,
	cmp	r5, r3	@ code, tmp290
	beq	.L887	@,
.L953:
	cmp	r5, #436	@ code,
	bcc	.L952	@,
	movw	r3, #437	@ tmp291,
	cmp	r5, r3	@ code, tmp291
	beq	.L891	@,
	cmp	r5, #436	@ code,
	bls	.L941	@,
	movw	r3, #439	@ tmp292,
	cmp	r5, r3	@ code, tmp292
	beq	.L941	@,
	cmp	r5, #440	@ code,
	bne	.L886	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	group_of_pictures_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L945	@,
.L941:
	mov	r5, #0	@ D.40349,
.L884:
	mov	r0, r5	@, D.40349
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L885:
	cmp	r5, #256	@ code,
	beq	.L881	@,
	movw	r3, #435	@ tmp290,
	cmp	r5, r3	@ code, tmp290
	bne	.L953	@,
.L887:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	sequence_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	blt	.L945	@,
	ldr	r5, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ands	r5, r5, #7	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	bne	.L896	@,
	mov	r3, #1	@ tmp314,
	mov	r0, r10	@, pSyntaxInfOld
	strb	r3, [r9]	@ tmp314, pSyntaxInfNew_14->valid_flag
	mov	r1, r9	@, pSyntaxInfNew
	mov	r2, #188	@,
	bl	memcpy	@
	ldr	r3, [r4, #2384]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	add	r3, r3, #1	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt,
	str	r3, [r4, #2384]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].SeqCnt
	b	.L884	@
.L952:
	cmp	r5, #256	@ code,
	beq	.L889	@,
	bcc	.L886	@,
	cmp	r5, #432	@ code,
	bls	.L886	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	MP2_GetUsrData	@
	subs	r5, r0, #0	@ D.40349,
	bne	.L902	@,
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L956	@ tmp390,
	ldr	r3, [r3]	@ D.40353, g_event_report
	cmp	r3, #0	@ D.40353,
	mvneq	r5, #0	@ D.40349,
	beq	.L884	@,
	mov	r2, r5	@, D.40349
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mvn	r5, #0	@ D.40349,
	blx	r3	@ D.40353
	b	.L884	@
.L889:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	picture_header	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L941	@,
.L945:
	ldr	r3, .L956	@ tmp372,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.40353, g_event_report
	cmp	r3, #0	@ D.40353,
	beq	.L901	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.40353
.L901:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r5, #0	@ D.40349,
	bl	MP2_ClearCurPacket	@
	bl	vfmw_dprint_nothing	@
	b	.L884	@
.L951:
	ldr	r2, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r2, #4194304	@ D.40352,
	beq	.L882	@,
	orr	r2, r2, #8388608	@ D.40352, D.40352,
	strb	r3, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r2, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	mov	r2, #0	@ tmp289,
	str	r2, [r4, #2436]	@ tmp289, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	mov	r5, r3	@ D.40349, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L884	@
.L950:
	mov	r2, #28	@,
	mov	r1, r6	@, pBs
	add	r0, sp, #12	@ tmp440,,
	bl	memcpy	@
	mov	r1, #32	@,
	add	r0, sp, #12	@ tmp441,,
	bl	BsGet	@
	mov	r1, #32	@,
	str	r0, [sp, #4]	@ D.40350, %sfp
	add	r0, sp, #12	@ tmp442,,
	bl	BsGet	@
	movw	r2, #20036	@ tmp211,
	movw	r3, #20553	@ tmp214,
	movt	r2, 17221	@ tmp211,
	movt	r3, 18515	@ tmp214,
	ldr	ip, [sp, #4]	@ D.40350, %sfp
	cmp	r0, r2	@, tmp211
	cmpeq	ip, r3	@, D.40350, tmp214
	bne	.L881	@,
	ldr	r5, [r4, #2436]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	cmp	r5, #1	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState,
	beq	.L954	@,
.L883:
	mov	r3, #1	@ tmp256,
	mov	r5, #0	@ D.40349,
	strb	r3, [r4, #4081]	@ tmp256, pCtx_11(D)->IsStreamEndFlag
	b	.L884	@
.L886:
	sub	r3, r5, #256	@ D.40352, code,
	sub	r3, r3, #1	@ D.40352, D.40352,
	cmp	r3, #174	@ D.40352,
	bhi	.L904	@,
	ldr	r6, [r4, #2376]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited
	cmp	r6, #0	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited,
	beq	.L905	@,
.L907:
	ldr	r3, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #589824	@ D.40352,
	beq	.L941	@,
	orr	r3, r3, #4194304	@ D.40352, D.40352,
	mov	r1, r5	@, code
	str	r3, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	mov	r3, #1	@ tmp427,
	str	r3, [r4, #2436]	@ tmp427, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_DecSlice	@
	cmp	r0, #1	@ D.40349,
	mov	r5, r0	@ D.40349,
	beq	.L884	@,
	bl	vfmw_dprint_nothing	@
	b	.L941	@
.L891:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pCtx
	bl	extension	@
	mov	r0, r6	@, pBs
	bl	BsResidBits	@
	cmp	r0, #0	@,
	bge	.L941	@,
	ldr	r3, .L956	@ tmp398,
	str	fp, [r4, #2380]	@ BkStrmIntgrt, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	r3, [r3]	@ D.40353, g_event_report
	cmp	r3, #0	@ D.40353,
	beq	.L903	@,
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	blx	r3	@ D.40353
.L903:
	add	r1, r7, #71680	@, pCtx,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	add	r1, r1, #284	@,,
	mvn	r5, #0	@ D.40349,
	bl	MP2_ClearCurPacket	@
	b	.L884	@
.L896:
	ldrb	r3, [r10]	@ zero_extendqisi2	@ pSyntaxInfOld_15->valid_flag, pSyntaxInfOld_15->valid_flag
	cmp	r3, #1	@ pSyntaxInfOld_15->valid_flag,
	beq	.L955	@,
.L904:
	ldr	r3, .L956	@ tmp433,
	ldr	r3, [r3]	@ D.40353, g_event_report
	cmp	r3, #0	@ D.40353,
	beq	.L941	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r5, r2	@ D.40349,
	blx	r3	@ D.40353
	b	.L884	@
.L902:
	bl	vfmw_dprint_nothing	@
	b	.L884	@
.L954:
	ldr	r3, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	tst	r3, #4194304	@ D.40352,
	beq	.L883	@,
	orr	r3, r3, #8388608	@ D.40352, D.40352,
	strb	r5, [r4, #4081]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsStreamEndFlag
	str	r3, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	mov	r0, r7	@, pCtx
	strb	r5, [r4, #4080]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState, pCtx_11(D)->IsWaitToDecFlag
	str	r8, [r4, #2436]	@ tmp191, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].HDRState
	bl	MP2_ProtocolPPSCheck	@
	b	.L884	@
.L905:
	mov	r0, r7	@, pCtx
	bl	MP2_GetSequenceInfo	@
	ldr	r3, [r7]	@ pCtx_11(D)->pstExtraData, pCtx_11(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _137->s32DSDWaitFlag, _137->s32DSDWaitFlag
	cmp	r3, #1	@ _137->s32DSDWaitFlag,
	bne	.L907	@,
	mov	r5, r6	@ D.40349, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].NewSeqInited
	b	.L884	@
.L955:
	mov	r2, #188	@,
	mov	r1, r10	@, pSyntaxInfOld
	mov	r0, r9	@, pSyntaxInfNew
	bl	memcpy	@
	ldr	r2, .L956	@ tmp345,
	ldr	r3, [r4, #2380]	@ MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	ldr	ip, [r2]	@ D.40353, g_event_report
	bic	r3, r3, #7	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality,
	str	r3, [r4, #2380]	@ D.40352, MEM[(struct MP2CODECINF *)pCtx_11(D) + 45328B].StreamIntegrality
	cmp	ip, #0	@ D.40353,
	beq	.L941	@,
	mov	r2, #0	@,
	ldr	r0, [r4, #4064]	@, pCtx_11(D)->ChanID
	mov	r1, #113	@,
	mov	r5, r2	@ D.40349,
	blx	ip	@ D.40353
	b	.L884	@
.L957:
	.align	2
.L956:
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
	add	r3, r0, #72704	@ D.40371, pCtx,
	mov	r2, #160	@,
	add	r3, r3, #96	@ D.40371, D.40371,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #45312	@ tmp262, pCtx,
	add	r6, r0, #69632	@ tmp263, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r0, r3	@, D.40371
	add	r5, r5, #16	@ tmp262, tmp262,
	bl	memcpy	@
	ldr	r2, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r1, r0	@, D.40371
	mov	r0, r5	@, tmp262
	bl	MP2_ReceivePacket	@
	cmp	r0, #1	@,
	beq	.L959	@,
.L967:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40370,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L959:
	add	r0, r4, #71680	@, pCtx,
	ldr	r2, [r6, #2352]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	add	r0, r0, #576	@,,
	ldr	r1, [r6, #2336]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsVirAddr
	bl	BsInit	@
	ldr	r3, [r4]	@ D.40375, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _21->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L989	@,
.L961:
	ldr	r3, [r6, #2380]	@ pCtx_7(D)->CodecInfo.StreamIntegrality, pCtx_7(D)->CodecInfo.StreamIntegrality
	str	r3, [r6, #2564]	@ pCtx_7(D)->CodecInfo.StreamIntegrality, pCtx_7(D)->CodecInfo.LastStreamIntegrality
.L962:
	mov	r0, r4	@, pCtx
	bl	MP2_GetHDR	@
	add	r0, r0, #1	@ D.40377,,
	cmp	r0, #1	@ D.40377,
	bls	.L990	@,
	mov	r0, r4	@, pCtx
	bl	MP2_DecodingDecide	@
	subs	r7, r0, #0	@ D.40376,
	beq	.L988	@,
	cmn	r7, #1	@ D.40376,
	beq	.L987	@,
	mov	r0, r4	@, pCtx
	bl	MP2_GetPictureInfo	@
	subs	r7, r0, #0	@ D.40376,
	bne	.L969	@,
.L988:
	add	r1, r5, #26624	@, tmp262,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	add	r1, r1, #12	@,,
.L985:
	bl	MP2_ClearCurPacket	@
	mov	r0, r4	@, pCtx
	bl	MP2_ClearCurPic	@
	ldr	r3, .L992	@ tmp237,
	ldr	r3, [r3]	@ D.40379, g_event_report
	cmp	r3, #0	@ D.40379,
	beq	.L967	@,
	mov	r2, r7	@, D.40372
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	mov	r1, #113	@,
	blx	r3	@ D.40379
	b	.L967	@
.L990:
	ldr	r3, [r4]	@ D.40375, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #692]	@ _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _32->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L964	@,
	ldr	r3, [r3, #728]	@ _32->s32DSDWaitFlag, _32->s32DSDWaitFlag
	cmp	r3, #1	@ _32->s32DSDWaitFlag,
	beq	.L987	@,
.L964:
	add	r1, r5, #26624	@, tmp262,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	add	r1, r1, #12	@,,
	bl	MP2_ClearCurPacket	@
.L987:
	mov	r0, #0	@ D.40370,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L989:
	ldr	r3, [r3, #728]	@ _21->s32DSDWaitFlag, _21->s32DSDWaitFlag
	cmp	r3, #1	@ _21->s32DSDWaitFlag,
	ldreq	r3, [r6, #2564]	@ pCtx_7(D)->CodecInfo.LastStreamIntegrality, pCtx_7(D)->CodecInfo.LastStreamIntegrality
	streq	r3, [r6, #2380]	@ pCtx_7(D)->CodecInfo.LastStreamIntegrality, pCtx_7(D)->CodecInfo.StreamIntegrality
	bne	.L961	@,
	b	.L962	@
.L969:
	mov	r0, r4	@, pCtx
	bl	MP2_DecNewPic	@
	subs	r7, r0, #0	@ D.40372,
	beq	.L991	@,
	ldr	r0, [r6, #2328]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset
	ldr	r3, [r6, #2432]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte
	ldr	r2, [r6, #2352]	@ MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	mov	r0, r0, asl #3	@ D.40370, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].BsOffset,
	add	r3, r3, r2	@ D.40372, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].stMp2Packet.BsLength
	str	r3, [r6, #2432]	@ D.40372, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].Used_byte
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L991:
	ldr	r1, [r6, #2464]	@, MEM[(struct MP2CODECINF *)pCtx_7(D) + 45328B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	add	r1, r5, #26624	@, tmp262,
	add	r1, r1, #12	@,,
	ldr	r0, [r6, #4064]	@, pCtx_7(D)->ChanID
	b	.L985	@
.L993:
	.align	2
.L992:
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"slice_vertical_position\000"
.LC2:
	.ascii	"quantiser_scale_code\000"
	.space	3
.LC3:
	.ascii	"extra_bit_slice\000"
.LC4:
	.ascii	"intra_slice_flag\000"
	.space	3
.LC5:
	.ascii	"intra_slice\000"
.LC6:
	.ascii	"reserved_bits\000"
	.space	2
.LC7:
	.ascii	"extra_infrmation_slice\000"
	.space	1
.LC8:
	.ascii	"macroblock_address_increment\000"
	.space	3
.LC9:
	.ascii	"macroblock_escape\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_tmpusd, %object
	.size	g_tmpusd, 1024
g_tmpusd:
	.space	1024
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
