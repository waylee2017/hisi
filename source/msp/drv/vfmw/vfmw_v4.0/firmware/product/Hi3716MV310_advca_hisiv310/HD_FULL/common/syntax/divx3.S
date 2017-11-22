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
	.file	"divx3.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(divx3)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o
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
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #24576	@ tmp127, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r5, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.37712,
	str	r0, [r5, #2020]	@ D.37712, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].CurFsID
	blt	.L10	@,
	mov	r1, r0	@, D.37712
	ldr	r0, [r5, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L11	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_14->pstDecodeFs, pLf_14->pstDecodeFs
	cmp	r3, #0	@ pLf_14->pstDecodeFs,
	beq	.L7	@,
	ldr	r3, [r4, #412]	@ pLf_14->pstDispOutFs, pLf_14->pstDispOutFs
	cmp	r3, #0	@ pLf_14->pstDispOutFs,
	beq	.L7	@,
	ldr	r3, [r4, #416]	@ pLf_14->pstTfOutFs, pLf_14->pstTfOutFs
	cmp	r3, #0	@ pLf_14->pstTfOutFs,
	beq	.L7	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #1	@ D.37711,
.L3:
	mov	r0, r4	@, D.37711
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L7:
	mov	r4, #1	@ D.37711,
	mov	r0, r4	@, D.37711
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L10:
	bl	vfmw_dprint_nothing	@
	add	r1, r4, #26624	@, pCtx,
	add	r1, r1, #16	@,,
	ldr	r0, [r5, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r2, #1	@,
	ldr	r1, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	mov	r4, #0	@ tmp144,
	ldr	r0, [r5, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r4, [r5, #2016]	@ tmp144, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	ldr	r0, [r5, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r4, [r5, #1932]	@ tmp144, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].RefNum
	str	r0, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	mov	r0, r4	@, D.37711
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L11:
	bl	vfmw_dprint_nothing	@
	b	.L3	@
	.fnend
	.size	Divx3_GetImageBuffer, .-Divx3_GetImageBuffer
	.align	2
	.global	Divx3_ArrangeVHBMem
	.type	Divx3_ArrangeVHBMem, %function
Divx3_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r3, [r2, #48]	@ pPictureHeader_14(D)->pic_width_in_mb, pPictureHeader_14(D)->pic_width_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_width_in_mb,
	bls	.L13	@,
	ldr	r3, [r2, #52]	@ pPictureHeader_14(D)->pic_height_in_mb, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_height_in_mb,
	bls	.L13	@,
	ldr	r3, [r1]	@ D.37720, pCtx_12(D)->pstExtraData
	mov	r5, r1	@ pCtx, pCtx
	ldr	r1, [r3, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r1, [r3, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L16	@,
	cmp	r1, #25	@ _17->eCapLevel,
	beq	.L35	@,
.L17:
	ldr	r6, [r2, #56]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pix
	mov	r7, #5	@ D.37724,
	ldr	r9, [r2, #60]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pix
	mov	r4, #2	@ PmvNum,
	mov	r8, #4	@ DecFsNum,
.L19:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp200,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.37720, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp175,
	ldr	r1, [r3, #32]	@ _53->eCapLevel, _53->eCapLevel
	ldr	r3, [r3, #20]	@ _53->s32DnrDispOutEnable, _53->s32DnrDispOutEnable
	cmp	r1, #24	@ _53->eCapLevel,
	str	r6, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r9, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r2, [sp, #6]	@ tmp175, FspInstCfg.s32RprEnable
	strb	r3, [sp, #4]	@ _53->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L22	@,
	uxtb	r3, r4	@ D.37718, PmvNum
	strb	r8, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r7, [sp, #11]	@ D.37724, FspInstCfg.s32ExpectedDispFsNum
.L24:
	add	r6, r5, #24576	@ tmp185, pCtx,
	add	r1, sp, #4	@ tmp201,,
	strb	r3, [sp, #12]	@ D.37718, FspInstCfg.s32ExpectedPmvNum
	mov	r4, #0	@ tmp181,
	ldr	r0, [r6, #2416]	@, pCtx_12(D)->ChanID
	strb	r4, [sp, #8]	@ tmp181, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.37721,
	beq	.L36	@,
.L31:
	mov	r0, #0	@ D.37717,
.L29:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L16:
	cmp	r1, #25	@ _17->eCapLevel,
	bne	.L17	@,
	ldr	r6, [r2, #56]	@ D.37719, pPictureHeader_14(D)->pic_width_in_pix
	ldr	r1, [r3, #568]	@ _17->stChanOption.s32MaxWidth, _17->stChanOption.s32MaxWidth
	cmp	r6, r1	@ D.37719, _17->stChanOption.s32MaxWidth
	bhi	.L13	@,
	ldr	r9, [r2, #60]	@ D.37719, pPictureHeader_14(D)->pic_height_in_pix
	ldr	r2, [r3, #572]	@ _17->stChanOption.s32MaxHeight, _17->stChanOption.s32MaxHeight
	cmp	r9, r2	@ D.37719, _17->stChanOption.s32MaxHeight
	bhi	.L13	@,
.L34:
	ldr	r2, [r3, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r8, [r3, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _17->stChanOption.s32SupportBFrame,
	moveq	r4, #1	@ PmvNum,
	beq	.L21	@,
	add	r4, r8, #1	@ PmvNum, DecFsNum,
	cmp	r4, #17	@ PmvNum,
	movge	r4, #17	@ PmvNum,
.L21:
	ldrb	r7, [r3, #616]	@ zero_extendqisi2	@ D.37724, _17->stChanOption.s32DisplayFrameNum
	b	.L19	@
.L36:
	ldr	r1, [r5]	@ D.37720, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r6, #2416]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _72->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _72->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r4	@,
	moveq	r0, #1	@ tmp193,
	streqb	r0, [r5, #178]	@ tmp193, MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated
	beq	.L29	@,
.L13:
	bl	vfmw_dprint_nothing	@
	b	.L31	@
.L22:
	strb	r2, [sp, #9]	@ tmp175, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.37718,
	strb	r7, [sp, #11]	@ D.37724, FspInstCfg.s32ExpectedDispFsNum
	b	.L24	@
.L35:
	ldr	r6, [r3, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	ldr	r1, [r2, #56]	@ pPictureHeader_14(D)->pic_width_in_pix, pPictureHeader_14(D)->pic_width_in_pix
	cmp	r1, r6	@ pPictureHeader_14(D)->pic_width_in_pix, PicWidth
	bhi	.L13	@,
	ldr	r2, [r2, #60]	@ pPictureHeader_14(D)->pic_height_in_pix, pPictureHeader_14(D)->pic_height_in_pix
	ldr	r9, [r3, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r2, r9	@ pPictureHeader_14(D)->pic_height_in_pix, PicHeight
	bhi	.L13	@,
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated,
	bne	.L34	@,
	b	.L29	@
	.fnend
	.size	Divx3_ArrangeVHBMem, .-Divx3_ArrangeVHBMem
	.align	2
	.global	Divx3_SetImgFormat
	.type	Divx3_SetImgFormat, %function
Divx3_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #24576	@ tmp143, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_3(D) + 168B].CurFsID
	ldr	r0, [r5, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].prediction_type
	mov	r1, #0	@ tmp153,
	str	r1, [r4, #128]	@ tmp153, pImg_8->is_fld_save
	and	r3, r3, #3	@ D.37728, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].prediction_type,
	str	r3, [r4, #132]	@ D.37728, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.37728, D.37728,
	str	r3, [r4, #136]	@ D.37728, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.37728, D.37728,
	str	r2, [r4, #140]	@ D.37728, pImg_8->format
	ldr	r3, [r5, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb
	mov	r3, r3, asl #4	@ D.37728, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb,
	str	r3, [r4, #144]	@ D.37728, pImg_8->image_width
	ldr	r3, [r5, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb
	mov	r3, r3, asl #4	@ D.37728, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb,
	str	r3, [r4, #148]	@ D.37728, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _23->eCapLevel, _23->eCapLevel
	cmp	r3, #25	@ _23->eCapLevel,
	beq	.L44	@,
.L39:
	mov	r2, #5	@ tmp173,
	mov	r3, #0	@ tmp174,
	str	r2, [r4, #300]	@ tmp173, pImg_8->ImageDnr.video_standard
	mov	r2, #1	@ tmp176,
	strb	r3, [r4, #288]	@ tmp174, pImg_8->ImageDnr.pic_structure
	mov	r3, #8	@ tmp178,
	strb	r2, [r4, #295]	@ tmp176, pImg_8->ImageDnr.use_pic_qp_en
	strb	r2, [r4, #293]	@ tmp176, pImg_8->ImageDnr.chroma_format_idc
	str	r3, [r4, #304]	@ tmp178, pImg_8->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp178, pImg_8->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp178, pImg_8->ImageDnr.QP_U
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L44:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.37728, pImg_8->image_stride
	add	r3, r3, #15	@ D.37728, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.37728, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.37731, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.37728, D.37728,
	mov	r3, r1, asl #4	@ D.37728, D.37728,
	add	lr, r1, r0	@ D.37727, D.37728, D.37728
	str	r0, [r4, #88]	@ D.37728, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.37728, D.37728, D.37728
	str	r0, [r4, #120]	@ D.37728, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.37727, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.37731, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.37728, D.37728, D.37728
	add	r3, ip, r3	@ D.37731, D.37731, D.37728
	add	r1, r1, r0	@ D.37727, D.37728, D.37728
	str	r3, [r4, #36]	@ D.37731, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.37728, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.37728, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.37727, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L39	@
	.fnend
	.size	Divx3_SetImgFormat, .-Divx3_SetImgFormat
	.align	2
	.global	Divx3_WritePicMsg
	.type	Divx3_WritePicMsg, %function
Divx3_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #24576	@ tmp124, pCtx,
	ldr	r2, [r3, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].prediction_type
	str	r2, [r0, #12]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].prediction_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].prediction_type
	ldr	r2, [r3, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_width_in_mb
	str	r2, [r0, #16]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].PicWidthInMb
	ldr	r2, [r3, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_height_in_mb
	str	r2, [r0, #20]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].PicHeightInMb
	ldr	r2, [r3, #1812]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].quantizer, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].quantizer
	str	r2, [r0, #24]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].quantizer, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].quantizer
	ldr	r2, [r3, #1816]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].rounding_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].rounding_type
	str	r2, [r0, #28]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].rounding_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].rounding_type
	ldr	r2, [r3, #1824]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].has_skips, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].has_skips
	str	r2, [r0, #32]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].has_skips, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].has_skips
	ldr	r2, [r3, #1832]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_chrom_DCT
	str	r2, [r0, #36]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_I_AC_chrom_DCT
	ldr	r2, [r3, #1836]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_lum_DCT
	str	r2, [r0, #40]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_I_AC_lum_DCT
	ldr	r2, [r3, #1840]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_DC_DCT
	str	r2, [r0, #44]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_I_DC_DCT
	ldr	r2, [r3, #1844]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_AC_DCT
	str	r2, [r0, #48]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_P_AC_DCT
	ldr	r2, [r3, #1848]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_DC_DCT
	str	r2, [r0, #52]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_P_DC_DCT
	ldr	r3, [r3, #1852]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_MV, MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_MV
	str	r3, [r0, #56]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_1(D) + 26384B].alternative_MV, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_1(D) + 8B].alternative_MV
	bx	lr	@
	.fnend
	.size	Divx3_WritePicMsg, .-Divx3_WritePicMsg
	.align	2
	.global	Divx3_DecodeDecide
	.type	Divx3_DecodeDecide, %function
Divx3_DecodeDecide:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #24576	@ tmp194, pCtx,
	ldrb	r3, [r0, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].Imgbuf_allocated
	mov	r4, r0	@ pCtx, pCtx
	ldr	r6, [r5, #1808]	@ FrameType, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].PictureHeader.prediction_type
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].Imgbuf_allocated,
	beq	.L58	@,
	ldrb	r3, [r0, #179]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].UsedDecMode, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].UsedDecMode
	sub	r3, r3, #2	@ tmp146, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].UsedDecMode,
	cmp	r3, #1	@ tmp146,
	ldr	r3, [r0]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.37742,
	bls	.L82	@,
.L50:
	uxtb	r3, r3	@ D.37743, D.37742
	strb	r3, [r4, #179]	@ D.37743, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].UsedDecMode
	cmp	r3, #4	@ D.37743,
	ldrls	pc, [pc, r3, asl #2]	@ D.37743
	b	.L57	@
.L59:
	.word	.L54
	.word	.L54
	.word	.L51
	.word	.L53
	.word	.L54
.L57:
	bl	vfmw_dprint_nothing	@
.L53:
	mov	r0, #0	@ D.37742,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L54:
	cmp	r6, #0	@ FrameType,
	beq	.L52	@,
	ldr	r3, [r5, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].RefNum,
	beq	.L57	@,
	ldr	r1, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].FwdFsID
	ldr	r0, [r5, #2416]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pFwdImg
	beq	.L58	@,
	ldr	r3, [r4]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r2, [r0, #180]	@ pFwdImg_29->error_level, pFwdImg_29->error_level
	ldr	r3, [r3]	@ _42->s32RefErrThr, _42->s32RefErrThr
	cmp	r2, r3	@ pFwdImg_29->error_level, _42->s32RefErrThr
	bls	.L81	@,
.L58:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.37742,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L82:
	cmp	r3, #4	@ D.37742,
	cmpne	r3, #1	@, D.37742,
	bhi	.L50	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].FwdFsID
	mov	r7, #0	@ tmp163,
	ldr	r0, [r5, #2416]	@, pCtx_6(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r7, [r5, #2016]	@ tmp163, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].FwdFsID
	ldr	r0, [r5, #2416]	@, pCtx_6(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r7, [r5, #1932]	@ tmp163, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].RefNum
	str	r0, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].FwdFsID
	ldr	r3, [r4]	@ pCtx_6(D)->pstExtraData, pCtx_6(D)->pstExtraData
	ldr	r3, [r3, #8]	@ D.37742, _54->s32DecMode
	b	.L50	@
.L51:
	cmp	r6, #0	@ FrameType,
	bne	.L57	@,
.L52:
	ldr	r1, [r5, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_6(D) + 168B].FwdFsID
	ldr	r0, [r5, #2416]	@, pCtx_6(D)->ChanID
	bl	FSP_GetFsImagePtr	@
.L81:
	mov	r0, #1	@ D.37742,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Divx3_DecodeDecide, .-Divx3_DecodeDecide
	.align	2
	.global	Divx3_GetPictureHeader
	.type	Divx3_GetPictureHeader, %function
Divx3_GetPictureHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	mov	r1, #2	@,
	mov	r6, r2	@ PrevSwitchRounding, PrevSwitchRounding
	mov	r5, r0	@ pBs, pBs
	bl	BsGet	@
	cmp	r0, #1	@ D.37774,
	str	r0, [r4]	@ D.37774, pPictureHeader_8(D)->prediction_type
	bls	.L84	@,
.L87:
	mov	r3, #0	@ D.37773,
.L85:
	mov	r0, r3	@, D.37773
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L84:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4]	@ pPictureHeader_8(D)->prediction_type, pPictureHeader_8(D)->prediction_type
	cmp	r3, #0	@ pPictureHeader_8(D)->prediction_type,
	str	r0, [r4, #4]	@, pPictureHeader_8(D)->quantizer
	beq	.L106	@,
	cmp	r6, #0	@ PrevSwitchRounding,
	mov	r1, #1	@,
	streq	r6, [r4, #8]	@ PrevSwitchRounding, pPictureHeader_8(D)->rounding_type
	mov	r0, r5	@, pBs
	ldrne	r3, [r4, #8]	@ pPictureHeader_8(D)->rounding_type, pPictureHeader_8(D)->rounding_type
	str	r6, [r4, #20]	@ PrevSwitchRounding, pPictureHeader_8(D)->switch_rounding
	rsbne	r3, r3, #1	@ D.37775, pPictureHeader_8(D)->rounding_type,
	strne	r3, [r4, #8]	@ D.37775, pPictureHeader_8(D)->rounding_type
	bl	BsGet	@
	mov	r1, #2	@,
	str	r0, [r4, #16]	@, pPictureHeader_8(D)->has_skips
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #36]	@ D.37774, pPictureHeader_8(D)->alternative_P_AC_DCT
	cmp	r0, #3	@ D.37774,
	ldrls	pc, [pc, r0, asl #2]	@ D.37774
	b	.L100	@
.L102:
	.word	.L101
	.word	.L101
	.word	.L104
	.word	.L104
.L104:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L100:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, pPictureHeader_8(D)->alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.37773,
	str	r0, [r4, #44]	@, pPictureHeader_8(D)->alternative_MV
	mov	r0, r3	@, D.37773
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L106:
	mov	r3, #1	@ tmp143,
	mov	r1, #5	@,
	str	r3, [r4, #8]	@ tmp143, pPictureHeader_8(D)->rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ D.37775, D.37774,
	str	r0, [r4, #12]	@ D.37774, pPictureHeader_8(D)->vol_mode
	cmp	r0, #26	@ D.37774,
	cmpne	r3, #1	@, D.37775,
	bhi	.L87	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.37774, pPictureHeader_8(D)->alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.37774,
	ldrls	pc, [pc, r0, asl #2]	@ D.37774
	b	.L88	@
.L90:
	.word	.L89
	.word	.L89
	.word	.L92
	.word	.L92
.L101:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L100	@
.L92:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L88:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.37774, pPictureHeader_8(D)->alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.37774,
	ldrls	pc, [pc, r0, asl #2]	@ D.37774
	b	.L93	@
.L95:
	.word	.L94
	.word	.L94
	.word	.L97
	.word	.L97
.L97:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L93:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.37773,
	str	r0, [r4, #32]	@, pPictureHeader_8(D)->alternative_I_DC_DCT
	b	.L85	@
.L89:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L88	@
.L94:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L93	@
	.fnend
	.size	Divx3_GetPictureHeader, .-Divx3_GetPictureHeader
	.align	2
	.global	DIVX3DEC_Init
	.type	DIVX3DEC_Init, %function
DIVX3DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #24576	@ tmp120, pCtx,
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #27000	@,
	ldr	r8, [r5, #2408]	@ D.37780, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #26624	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r6, #0	@ tmp130,
	str	r8, [r5, #2408]	@ D.37780, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r7, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r3, #1	@ tmp127,
	str	r3, [r5, #1904]	@ tmp127, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].PrevSwitchRounding
	ldr	r2, [r7, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	mov	r0, r4	@, pCtx
	strb	r6, [r4, #178]	@ tmp130, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].Imgbuf_allocated
	strb	r2, [r4, #179]	@ pstExtraData_10(D)->s32DecMode, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].UsedDecMode
	str	r3, [r5, #2420]	@ tmp127, pCtx_4(D)->DSDNeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.37782,
	str	r0, [r5, #2416]	@ D.37782, pCtx_4(D)->ChanID
	beq	.L111	@,
	mov	r0, r6	@ D.37779, tmp130
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L111:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.37779,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DIVX3DEC_Init, .-DIVX3DEC_Init
	.align	2
	.global	DIVX3DEC_Decode
	.type	DIVX3DEC_Decode, %function
DIVX3DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #164
	sub	sp, sp, #164	@,,
	mov	r5, r1	@ pPacket, pPacket
	mov	fp, r0	@ pCtx, pCtx
	mov	r2, #96	@,
	add	r0, sp, #64	@ tmp692,,
	mov	r1, #0	@,
	mov	r4, #0	@ tmp377,
	bl	memset	@
	cmp	r5, #0	@ pPacket,
	str	r4, [sp, #24]	@ tmp377, slice_start_mbn
	str	r4, [sp, #28]	@ tmp377, slice_start_mbn
	str	r4, [sp, #32]	@ tmp377, slice_start_mbn
	str	r4, [sp, #36]	@ tmp377, slice_start_mbn
	str	r4, [sp, #40]	@ tmp377, slice_start_mbn
	str	r4, [sp, #44]	@ tmp377, slice_end_mbn
	str	r4, [sp, #48]	@ tmp377, slice_end_mbn
	str	r4, [sp, #52]	@ tmp377, slice_end_mbn
	str	r4, [sp, #56]	@ tmp377, slice_end_mbn
	str	r4, [sp, #60]	@ tmp377, slice_end_mbn
	beq	.L115	@,
	ldr	r3, [r5, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	cmp	r3, #0	@ pPacket_25(D)->StreamPack[0].PhyAddr,
	beq	.L115	@,
	ldr	r3, [r5]	@ pPacket_25(D)->StreamPack[0].VirAddr, pPacket_25(D)->StreamPack[0].VirAddr
	cmp	r3, #0	@ pPacket_25(D)->StreamPack[0].VirAddr,
	beq	.L115	@,
	ldr	r3, [r5, #12]	@ pPacket_25(D)->StreamPack[0].LenInByte, pPacket_25(D)->StreamPack[0].LenInByte
	cmp	r3, #9	@ pPacket_25(D)->StreamPack[0].LenInByte,
	bls	.L115	@,
	add	r8, fp, #8	@ __p, pCtx,
	mov	r1, #160	@,
	add	r6, fp, #24576	@ tmp689, pCtx,
	mov	r0, r8	@, __p
	bl	__memzero	@
	str	r4, [fp, #244]	@ tmp377, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsOffset
	ldr	r3, [r5, #12]	@ pPacket_25(D)->StreamPack[0].LenInByte, pPacket_25(D)->StreamPack[0].LenInByte
	str	r3, [r6, #1912]	@ pPacket_25(D)->StreamPack[0].LenInByte, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].PacketTail
	ldr	r3, [r5, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	str	r3, [fp, #248]	@ pPacket_25(D)->StreamPack[0].PhyAddr, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr
	ldr	r3, [r5]	@ D.37819, pPacket_25(D)->StreamPack[0].VirAddr
	str	r3, [fp, #168]	@ D.37819, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr
	ldr	r2, [r5, #12]	@ D.37820, pPacket_25(D)->StreamPack[0].LenInByte
	str	r2, [fp, #252]	@ D.37820, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[0].IsLastSeg, pPacket_25(D)->StreamPack[0].IsLastSeg
	str	r3, [fp, #256]	@ pPacket_25(D)->StreamPack[0].IsLastSeg, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[0].IsLastSeg, pPacket_25(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_25(D)->StreamPack[0].IsLastSeg,
	beq	.L116	@,
	ldr	r3, [r5, #88]	@ pPacket_25(D)->StreamPack[1].PhyAddr, pPacket_25(D)->StreamPack[1].PhyAddr
	str	r3, [fp, #260]	@ pPacket_25(D)->StreamPack[1].PhyAddr, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr1
	ldr	r3, [r5, #80]	@ D.37819, pPacket_25(D)->StreamPack[1].VirAddr
	str	r3, [fp, #172]	@ D.37819, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr1
	ldr	r3, [r5, #92]	@ pPacket_25(D)->StreamPack[1].LenInByte, pPacket_25(D)->StreamPack[1].LenInByte
	str	r3, [fp, #264]	@ pPacket_25(D)->StreamPack[1].LenInByte, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[1].IsLastSeg, pPacket_25(D)->StreamPack[1].IsLastSeg
	str	r3, [fp, #268]	@ pPacket_25(D)->StreamPack[1].IsLastSeg, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[1].IsLastSeg, pPacket_25(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_25(D)->StreamPack[1].IsLastSeg,
	bne	.L183	@,
.L117:
	movw	r3, #65525	@ tmp415,
	sub	r1, r2, #10	@ D.37822, D.37820,
	movt	r3, 47	@ tmp415,
	cmp	r1, r3	@ D.37822, tmp415
	bhi	.L148	@,
	ldr	r1, [fp, #168]	@ D.37819, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr
	cmp	r1, #0	@ D.37819,
	moveq	r4, r1	@ D.37816, D.37819
	beq	.L180	@,
	add	r7, fp, #26368	@ pBs, pCtx,
	add	r7, r7, #240	@ pBs, pBs,
	mov	r0, r7	@, pBs
	bl	BsInit	@
	mov	r0, r7	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	mov	r9, r0	@ D.37818,
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	rev	r4, r0	@ width,
	mov	r0, r7	@, pBs
	add	r3, r4, #15	@ D.37820, width,
	str	r4, [sp, #120]	@ width, TmpPictureHeader.pic_width_in_pix
	sub	r4, r4, #32	@ D.37820, width,
	mov	r3, r3, lsr #4	@ D.37820, D.37820,
	str	r3, [sp, #112]	@ D.37820, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	rev	r0, r0	@ height,
	str	r0, [sp, #124]	@ height, TmpPictureHeader.pic_height_in_pix
	sub	r3, r0, #32	@ D.37820, height,
	add	r0, r0, #15	@ D.37820, height,
	cmp	r4, #1888	@ D.37820,
	cmpls	r3, #1056	@, D.37820,
	mov	r0, r0, lsr #4	@ D.37820, D.37820,
	str	r0, [sp, #116]	@ D.37820, TmpPictureHeader.pic_height_in_mb
	bhi	.L115	@,
	ldr	r3, [r6, #1816]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type
	add	r1, sp, #64	@ tmp693,,
	ldr	r2, [r6, #1904]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].PrevSwitchRounding
	mov	r0, r7	@, pBs
	str	r3, [sp, #72]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@ D.37816,
	mov	r4, r0	@ D.37816,
	bne	.L115	@,
	ldr	r3, [r6, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum,
	bne	.L118	@,
	ldr	r3, [sp, #64]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r3, #0	@ TmpPictureHeader.prediction_type,
	bne	.L115	@,
.L118:
	ldr	r3, [sp, #112]	@ D.37820, TmpPictureHeader.pic_width_in_mb
	ldr	r2, [sp, #116]	@ D.37820, TmpPictureHeader.pic_height_in_mb
	ldrb	r0, [fp, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated
	mul	r1, r3, r2	@ D.37820, D.37820, D.37820
	cmp	r0, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated,
	str	r1, [sp, #128]	@ D.37820, TmpPictureHeader.total_mbs
	beq	.L119	@,
	ldr	r1, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	cmp	r3, r1	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	beq	.L184	@,
.L119:
	ldr	r3, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r3, #692]	@ _137->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _137->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r10, #1	@ _137->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L185	@,
.L121:
	ldr	r3, .L189	@ tmp486,
	ldr	r3, [r3]	@ D.37826, g_event_report
	cmp	r3, #0	@ D.37826,
	beq	.L128	@,
	ldr	r0, [sp, #116]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	add	r2, sp, #16	@,,
	ldr	ip, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	mov	r1, #2	@,
	ldr	r10, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	lr, [sp, #112]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	r0, [sp, #22]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	strh	ip, [sp, #16]	@ movhi	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, para
	strh	r10, [sp, #18]	@ movhi	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, para
	strh	lr, [sp, #20]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	blx	r3	@ D.37826
.L128:
	mov	r2, #1	@,
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	add	r10, fp, #26624	@ D.37828, pCtx,
	bl	FSP_ClearLogicFs	@
	mov	r3, #0	@ tmp694,
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	add	r10, r10, #16	@ D.37828, D.37828,
	str	r3, [r6, #2016]	@ tmp694, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	bl	FSP_GetNullLogicFs	@
	mov	r3, #0	@ tmp695,
	mov	r1, r10	@, D.37828
	str	r3, [r6, #1932]	@ tmp695, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum
	str	r0, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #112]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L115	@,
	ldr	r3, [sp, #116]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L115	@,
	ldr	r3, [fp]	@ D.37825, pCtx_21(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _199->stChanOption.s32ReRangeEn, _199->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _199->stChanOption.s32ReRangeEn,
	bne	.L129	@,
	ldr	r3, [r3, #32]	@ _199->eCapLevel, _199->eCapLevel
	cmp	r3, #25	@ _199->eCapLevel,
	beq	.L186	@,
.L129:
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L131	@,
	ldr	r3, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _207->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _207->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _207->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L133	@,
	ldr	r3, [r6, #2420]	@ pCtx_21(D)->DSDNeedClearQue, pCtx_21(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_21(D)->DSDNeedClearQue,
	beq	.L133	@,
.L131:
	bl	vfmw_dprint_nothing	@
	mov	r1, fp	@, pCtx
	mov	r0, #6	@,
	add	r2, sp, #64	@ tmp696,,
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L115	@,
.L120:
	ldr	r3, [sp, #64]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	add	r0, fp, #26368	@ pPictureHeader, pCtx,
	add	r0, r0, #16	@ pPictureHeader, pPictureHeader,
	cmp	r3, #0	@ TmpPictureHeader.prediction_type,
	beq	.L134	@,
	ldr	r10, [r6, #1820]	@ lastpic_vol_mode, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
	add	r1, sp, #64	@ tmp697,,
	mov	r2, #96	@,
	bl	memcpy	@
	str	r10, [r6, #1820]	@ lastpic_vol_mode, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
.L147:
	mov	r0, fp	@, pCtx
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@,
	bne	.L115	@,
	mov	r0, fp	@, pCtx
	bl	Divx3_GetImageBuffer	@
	cmp	r0, #0	@,
	beq	.L115	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImg
	beq	.L115	@,
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldrd	r2, [r1, #56]	@ tmp698, pCtx_21(D)->pstExtraData,
	strd	r2, [r0, #8]	@ tmp698, pImg,
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldrd	r2, [r1, #72]	@ tmp699, pCtx_21(D)->pstExtraData,
	strd	r2, [r0, #16]	@ tmp699, pImg,
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldrd	r2, [r1, #88]	@ tmp700, pCtx_21(D)->pstExtraData,
	strd	r2, [r0, #24]	@ tmp700, pImg,
	mvn	r2, #0	@ tmp704,
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	mvn	r3, #0	@,
	ldr	r1, [r1, #104]	@ D.37820, _240->DispEnableFlag
	str	r1, [r0, #68]	@ D.37820, pImg_229->DispEnableFlag
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r1, [r1, #108]	@ D.37820, _243->DispFrameDistance
	str	r1, [r0, #72]	@ D.37820, pImg_229->DispFrameDistance
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r1, [r1, #112]	@ D.37820, _246->DistanceBeforeFirstFrame
	str	r1, [r0, #76]	@ D.37820, pImg_229->DistanceBeforeFirstFrame
	ldr	r1, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r1, [r1, #128]	@ D.37820, _249->GopNum
	str	r1, [r0, #80]	@ D.37820, pImg_229->GopNum
	ldr	r1, [fp]	@ D.37825, pCtx_21(D)->pstExtraData
	strd	r2, [r1, #56]	@ tmp704, D.37825,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	str	r0, [sp, #4]	@ pCur, %sfp
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	ip, [sp, #4]	@ pCur, %sfp
	cmp	ip, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L135	@,
	ldr	r3, [ip, #408]	@ D.37831, pCur_258->pstDecodeFs
	cmp	r3, #0	@ D.37831,
	beq	.L135	@,
	ldr	r2, [ip, #416]	@ pCur_258->pstTfOutFs, pCur_258->pstTfOutFs
	cmp	r2, #0	@ pCur_258->pstTfOutFs,
	beq	.L135	@,
	ldr	r2, [ip, #412]	@ pCur_258->pstDispOutFs, pCur_258->pstDispOutFs
	cmp	r2, #0	@ pCur_258->pstDispOutFs,
	beq	.L135	@,
	ldr	r2, [r0, #408]	@ D.37831, pFwd_262->pstDecodeFs
	mov	r10, #0	@ tmp602,
	str	ip, [sp, #4]	@ pCur, %sfp
	cmp	r2, #0	@ D.37831,
	ldrne	r3, [r2, #12]	@ D.37815, _269->PhyAddr
	ldreq	r3, [r3, #12]	@ D.37815, _266->PhyAddr
	str	r3, [fp, #132]	@ D.37815, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].FwdRefPhyAddr
	ldr	r3, [ip, #408]	@ pCur_258->pstDecodeFs, pCur_258->pstDecodeFs
	ldr	r3, [r3, #12]	@ _275->PhyAddr, _275->PhyAddr
	str	r3, [fp, #136]	@ _275->PhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].CurPicPhyAddr
	ldr	r3, [ip, #420]	@ pCur_258->PmvAddr, pCur_258->PmvAddr
	str	r3, [fp, #156]	@ pCur_258->PmvAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].CurrPmvPhyAddr
	ldr	r3, [ip, #412]	@ pCur_258->pstDispOutFs, pCur_258->pstDispOutFs
	ldr	r3, [r3, #12]	@ _282->PhyAddr, _282->PhyAddr
	str	r3, [fp, #140]	@ _282->PhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].DispFramePhyAddr
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, pBs
	ldr	ip, [sp, #4]	@ pCur, %sfp
	ldr	r3, [ip, #412]	@ pCur_258->pstDispOutFs, pCur_258->pstDispOutFs
	ldr	r3, [r3, #20]	@ _287->Stride, _287->Stride
	str	r3, [fp, #144]	@ _287->Stride, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].DDRStride
	ldr	r3, [ip, #412]	@ pCur_258->pstDispOutFs, pCur_258->pstDispOutFs
	ldr	r3, [r3, #32]	@ _291->ChromOffset, _291->ChromOffset
	str	r3, [fp, #148]	@ _291->ChromOffset, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].uv_offset
	bl	BsResidBits	@
	ldr	r3, [r5, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	bic	r3, r3, #15	@ D.37818, pPacket_25(D)->StreamPack[0].PhyAddr,
	str	r3, [fp, #104]	@ D.37818, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBaseAddr
	ldr	r3, [r5, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	and	r3, r3, #15	@ D.37818, pPacket_25(D)->StreamPack[0].PhyAddr,
	add	r3, r9, r3, lsl #3	@ D.37815, D.37818, D.37818,
	rsb	r3, r0, r3	@ CurrPicBitOffset,, D.37815
	mov	r0, r7	@, pBs
	and	r2, r3, #127	@ D.37820, CurrPicBitOffset,
	str	r2, [fp, #116]	@ D.37820, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBitOffset
	mov	r3, r3, lsr #7	@ D.37820, CurrPicBitOffset,
	mov	r3, r3, asl #4	@ D.37820, D.37820,
	str	r3, [fp, #108]	@ D.37820, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	str	r10, [fp, #112]	@ tmp602, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamPhyAddr
	str	r10, [fp, #120]	@ tmp602, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBitOffset
	str	r10, [fp, #128]	@ tmp602, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamLength
	str	r0, [fp, #124]	@, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamLength
	ldr	r3, [r6, #1820]	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
	cmp	r3, #24	@ D.37820,
	beq	.L140	@,
	cmp	r3, #26	@ D.37820,
	beq	.L141	@,
	cmp	r3, #23	@ D.37820,
	beq	.L187	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, r10	@ D.37816, tmp602
	b	.L180	@
.L115:
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ D.37816,
.L180:
	mov	r0, r4	@, D.37816
	add	sp, sp, #164	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L183:
	ldr	r1, [r5, #16]	@, pPacket_25(D)->StreamPack[0].StreamID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r5, #96]	@, pPacket_25(D)->StreamPack[1].StreamID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r4	@, D.37816
	add	sp, sp, #164	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L122:
	ldr	r2, [sp, #8]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L188	@,
.L126:
	mov	r2, #1	@ tmp481,
	str	r2, [r3, #728]	@ tmp481, _146->s32DSDWaitFlag
.L148:
	mov	r4, #0	@ D.37816,
	mov	r0, r4	@, D.37816
	add	sp, sp, #164	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L116:
	str	r4, [fp, #260]	@ tmp377, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr1
	str	r4, [fp, #172]	@ tmp377, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr1
	str	r4, [fp, #264]	@ tmp377, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength1
	str	r4, [fp, #268]	@ tmp377, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg1
	b	.L117	@
.L184:
	ldr	r3, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	cmp	r2, r3	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	bne	.L119	@,
	ldr	r3, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _135->s32DSDWaitFlag, _135->s32DSDWaitFlag
	cmp	r3, #1	@ _135->s32DSDWaitFlag,
	bne	.L120	@,
	b	.L119	@
.L134:
	add	r1, sp, #64	@ tmp701,,
	mov	r2, #96	@,
	bl	memcpy	@
	b	.L147	@
.L186:
	ldrb	r3, [fp, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated,
	bne	.L131	@,
.L133:
	mov	r0, r10	@, D.37828
	bl	ResetVoQueue	@
	b	.L131	@
.L185:
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #16	@,,
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	mov	lr, #0	@ tmp453,
	str	lr, [sp, #8]	@ tmp453, NewNum
	str	lr, [sp, #12]	@ tmp453, ReadNum
	str	lr, [sp, #16]	@ tmp453, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [fp]	@ D.37825, pCtx_21(D)->pstExtraData
	ldr	r1, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _146->s32DSDThrWidth, _146->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _146->s32DSDThrWidth, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb,
	bcc	.L122	@,
	ldr	r1, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _146->s32DSDThrHeight, _146->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _146->s32DSDThrHeight, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb,
	bcc	.L122	@,
	ldr	r2, [sp, #12]	@ ReadNum, ReadNum
	ldr	r1, [sp, #8]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.37818, ReadNum, NewNum
	cmp	r2, #0	@ D.37818,
	strgt	r10, [r3, #728]	@ _137->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _146->s32DSDWaitFlag
	strle	r10, [r6, #2420]	@ _137->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_21(D)->DSDNeedClearQue
	bgt	.L148	@,
.L125:
	mov	r2, #0	@ tmp485,
	str	r2, [r3, #728]	@ tmp485, _146->s32DSDWaitFlag
	b	.L121	@
.L135:
	mov	r2, #1	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	mov	r4, #0	@ D.37816,
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	b	.L180	@
.L188:
	ldr	r2, [sp, #12]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L126	@,
	mov	r2, #0	@ tmp484,
	str	r2, [r6, #2420]	@ tmp484, pCtx_21(D)->DSDNeedClearQue
	b	.L125	@
.L187:
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r5, #1	@ total_slice_num,
	str	r10, [sp, #24]	@ tmp602, slice_start_mbn
	sub	r3, r3, #1	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #44]	@ D.37820, slice_end_mbn
.L143:
	ldr	r3, [r6, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type
	cmp	r5, #0	@ total_slice_num,
	str	r3, [fp, #12]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].prediction_type
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	str	r3, [fp, #16]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].PicWidthInMb
	ldr	r3, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	str	r3, [fp, #20]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].PicHeightInMb
	ldr	r3, [r6, #1812]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer
	str	r3, [fp, #24]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].quantizer
	ldr	r3, [r6, #1816]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type
	str	r3, [fp, #28]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].rounding_type
	ldr	r3, [r6, #1824]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips
	str	r3, [fp, #32]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].has_skips
	ldr	r3, [r6, #1832]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT
	str	r3, [fp, #36]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_AC_chrom_DCT
	ldr	r3, [r6, #1836]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT
	str	r3, [fp, #40]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_AC_lum_DCT
	ldr	r3, [r6, #1840]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT
	str	r3, [fp, #44]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_DC_DCT
	ldr	r3, [r6, #1844]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT
	str	r3, [fp, #48]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_P_AC_DCT
	ldr	r3, [r6, #1848]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT
	str	r3, [fp, #52]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_P_DC_DCT
	ldr	r3, [r6, #1852]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV
	str	r5, [fp, #60]	@ total_slice_num, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].TotalSliceNum
	str	r3, [fp, #56]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_MV
	beq	.L146	@,
	add	lr, sp, #24	@ ivtmp.46,,
	add	r0, fp, #60	@ ivtmp.51, pCtx,
	add	r1, sp, #44	@ ivtmp.60,,
	add	r2, fp, #80	@ ivtmp.64, pCtx,
	mov	r3, #0	@ slice_num,
.L145:
	add	r3, r3, #1	@ slice_num, slice_num,
	ldr	r7, [lr], #4	@ D.37820, MEM[base: _105, offset: 0B]
	ldr	r6, [r1], #4	@ D.37820, MEM[base: _115, offset: 0B]
	cmp	r3, r5	@ slice_num, total_slice_num
	str	r7, [r0, #4]!	@ D.37820, MEM[base: _107, offset: 0B]
	str	r6, [r2, #4]!	@ D.37820, MEM[base: _118, offset: 0B]
	bne	.L145	@,
.L146:
	ldr	r3, [fp]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	str	r8, [fp, #4]	@ __p, pCtx_21(D)->pDivx3DecParam
	ldr	r3, [r3, #512]	@ D.37818, _372->s32Compress_en
	str	r3, [fp, #164]	@ D.37818, pCtx_21(D)->Divx3DecParam.Compress_en
	b	.L180	@
.L141:
	ldr	r2, [r6, #1860]	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	tst	r2, #3	@ D.37820,
	str	r10, [sp, #24]	@ tmp602, slice_start_mbn
	mov	r2, r2, lsr #2	@ slice_mb_height, D.37820,
	moveq	r5, #4	@ total_slice_num,
	mul	r3, r3, r2	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, slice_mb_height
	sub	r2, r3, #1	@ D.37820, D.37820,
	str	r2, [sp, #44]	@ D.37820, slice_end_mbn
	mov	r2, r3, asl #1	@ D.37820, D.37820,
	mov	r1, r3, asl #2	@ D.37820, D.37820,
	add	r0, r2, r3	@ tmp638, D.37820, D.37820
	str	r3, [sp, #28]	@ D.37820, slice_start_mbn
	str	r2, [sp, #32]	@ D.37820, slice_start_mbn
	sub	r3, r0, #1	@ D.37820, tmp638,
	sub	r2, r2, #1	@ D.37820, D.37820,
	str	r3, [sp, #52]	@ D.37820, slice_end_mbn
	str	r0, [sp, #36]	@ tmp638, slice_start_mbn
	sub	r3, r1, #1	@ D.37820, D.37820,
	str	r2, [sp, #48]	@ D.37820, slice_end_mbn
	str	r3, [sp, #56]	@ D.37820, slice_end_mbn
	beq	.L143	@,
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r5, #5	@ total_slice_num,
	str	r1, [sp, #40]	@ D.37820, slice_start_mbn
	sub	r3, r3, #1	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #60]	@ D.37820, slice_end_mbn
	b	.L143	@
.L140:
	ldr	r2, [r6, #1860]	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	tst	r2, #1	@ D.37820,
	str	r10, [sp, #24]	@ tmp602, slice_start_mbn
	mov	r2, r2, lsr #1	@ slice_mb_height, D.37820,
	moveq	r5, #2	@ total_slice_num,
	mul	r3, r3, r2	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, slice_mb_height
	sub	r2, r3, #1	@ D.37820, D.37820,
	str	r2, [sp, #44]	@ D.37820, slice_end_mbn
	mov	r2, r3, asl #1	@ D.37820, D.37820,
	str	r3, [sp, #28]	@ D.37820, slice_start_mbn
	sub	r3, r2, #1	@ D.37820, D.37820,
	str	r3, [sp, #48]	@ D.37820, slice_end_mbn
	beq	.L143	@,
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r5, #3	@ total_slice_num,
	str	r2, [sp, #32]	@ D.37820, slice_start_mbn
	sub	r3, r3, #1	@ D.37820, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #52]	@ D.37820, slice_end_mbn
	b	.L143	@
.L190:
	.align	2
.L189:
	.word	g_event_report
	.fnend
	.size	DIVX3DEC_Decode, .-DIVX3DEC_Decode
	.align	2
	.global	DIVX3DEC_RecycleImage
	.type	DIVX3DEC_RecycleImage, %function
DIVX3DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pCtx
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #24576	@ tmp118, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.37846,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DIVX3DEC_RecycleImage, .-DIVX3DEC_RecycleImage
	.align	2
	.global	DIVX3DEC_GetRemainImg
	.type	DIVX3DEC_GetRemainImg, %function
DIVX3DEC_GetRemainImg:
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
	addeq	r5, r0, #26624	@ D.37850, pCtx,
	addeq	r5, r5, #16	@ D.37850, D.37850,
	beq	.L201	@,
	add	r6, r0, #24576	@ tmp139, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L212	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L210	@,
.L212:
	add	r5, r4, #26624	@ D.37850, pCtx,
	add	r5, r5, #16	@ D.37850, D.37850,
.L201:
	mov	r0, r5	@, D.37850
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L210:
	mov	r0, r4	@, pCtx
	add	r5, r4, #26624	@ D.37850, pCtx,
	bl	Divx3_SetImgFormat	@
	mov	r3, #1	@ tmp150,
	mov	r2, r3	@, tmp150
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	add	r5, r5, #16	@ D.37850, D.37850,
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2416]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.37850
	mov	r1, #5	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L198	@,
	mov	r2, #0	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	mov	r4, r2	@ tmp171,
	bl	FSP_SetDisplay	@
	ldr	r1, [r7, #192]	@, pImg_12->p_usrdat
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #192]	@ tmp171, pImg_12->p_usrdat
	ldr	r1, [r7, #196]	@, pImg_12->p_usrdat
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #196]	@ tmp171, pImg_12->p_usrdat
	b	.L201	@
.L198:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L201	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L201	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L201	@,
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	DIVX3DEC_GetRemainImg, .-DIVX3DEC_GetRemainImg
	.align	2
	.global	DIVX3DEC_VDMPostProc
	.type	DIVX3DEC_VDMPostProc, %function
DIVX3DEC_VDMPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #24576	@ tmp233, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r7, r2	@ SwitchRounding, SwitchRounding
	mov	r6, r1	@ ErrRatio, ErrRatio
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, pCtx
	mov	r0, #5	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L241	@,
	ldr	r3, [r4, #1808]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type,
	andeq	r7, r7, #1	@ D.37859, SwitchRounding,
	streq	r7, [r4, #1904]	@ D.37859, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PrevSwitchRounding
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.37857,
	blt	.L217	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.37857,
.L217:
	str	r6, [r0, #180]	@ D.37857, pCurImg_16->error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r3, [r5, #179]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode,
	beq	.L220	@,
	ldr	r3, [r5]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _32->s32DecOrderOutput, _32->s32DecOrderOutput
	cmp	r3, #1	@ _32->s32DecOrderOutput,
	beq	.L220	@,
	ldr	r3, [r4, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum,
	ldrne	r1, [r4, #2016]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	mvneq	r1, #0	@ D.37858,
	str	r1, [r4, #2024]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
.L219:
	cmn	r1, #1	@ D.37858,
	beq	.L222	@,
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pToQueImg,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2024]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #26624	@, pCtx,
	ldr	r0, [r4, #2416]	@ pCtx_9(D)->ChanID, pCtx_9(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #16	@,,
	mov	r1, #5	@,
	str	r6, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L242	@,
.L222:
	ldr	r2, [r4, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type
	ldr	r3, [r4, #1928]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt
	cmp	r2, #1	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type,
	add	r3, r3, #1	@ D.37859, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt,
	str	r3, [r4, #1928]	@ D.37859, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt
	beq	.L243	@,
.L223:
	ldr	r1, [r4, #2020]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	mov	r2, #1	@ tmp207,
	ldr	r3, [r4, #2016]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	str	r2, [r4, #1932]	@ tmp207, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r3, r1	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID, D.37858
	beq	.L225	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_RemovePmv	@
	ldr	r1, [r4, #2020]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
.L225:
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	mov	r2, #1	@,
	str	r1, [r4, #2016]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	bl	FSP_SetRef	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.37857,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L220:
	ldr	r1, [r4, #2020]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	str	r1, [r4, #2024]	@ D.37858, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	b	.L219	@
.L242:
	mov	r2, #0	@,
	ldr	r1, [r4, #2024]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetDisplay	@
.L241:
	mov	r0, #0	@ D.37857,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L243:
	ldr	r3, [r4, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum,
	bne	.L223	@,
	b	.L241	@
	.fnend
	.size	DIVX3DEC_VDMPostProc, .-DIVX3DEC_VDMPostProc
	.align	2
	.global	DIVX3DEC_GetImageBuffer
	.type	DIVX3DEC_GetImageBuffer, %function
DIVX3DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #24576	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37865,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L251	@,
	mov	r0, #0	@ D.37865,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L251:
	add	r1, r5, #26624	@, pCtx,
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.37865,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
