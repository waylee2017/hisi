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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(divx3)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.divx3.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/divx3.o
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
	.global	Divx3_GetImageBuffer
	.type	Divx3_GetImageBuffer, %function
Divx3_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r4, r0, #24576	@ tmp131, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	ldr	r0, [r4, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.33357,
	str	r0, [r4, #2020]	@ D.33357, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].CurFsID
	blt	.L10	@,
	mov	r1, r0	@, D.33357
	ldr	r0, [r4, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L11	@,
	ldr	r2, [r4, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].CurFsID
	mov	r0, #18	@,
	ldr	r1, .L12	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.33359, pLf_25->pstDecodeFs
	cmp	r2, #0	@ D.33359,
	beq	.L7	@,
	ldr	r3, [r5, #412]	@ D.33359, pLf_25->pstDispOutFs
	cmp	r3, #0	@ D.33359,
	beq	.L7	@,
	ldr	r1, [r5, #416]	@ D.33359, pLf_25->pstTfOutFs
	cmp	r1, #0	@ D.33359,
	beq	.L7	@,
	ldr	ip, [r1, #12]	@ _31->PhyAddr, _31->PhyAddr
	mov	r0, #18	@,
	ldr	r3, [r3, #12]	@ _30->PhyAddr, _30->PhyAddr
	mov	r5, #1	@ D.33356,
	ldr	r2, [r2, #12]	@ _29->PhyAddr, _29->PhyAddr
	ldr	r1, .L12+4	@,
	str	ip, [sp]	@ _31->PhyAddr,
	bl	dprint_vfmw	@
.L3:
	mov	r0, r5	@, D.33356
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L7:
	mov	r5, #1	@ D.33356,
	mov	r0, r5	@, D.33356
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L10:
	ldr	r1, .L12+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	r1, r5, #26624	@, pCtx,
	add	r1, r1, #16	@,,
	ldr	r0, [r4, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	mov	r5, #0	@ tmp149,
	ldr	r0, [r4, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2016]	@ tmp149, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	ldr	r0, [r4, #2416]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r4, #1932]	@ tmp149, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].RefNum
	str	r0, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_4(D) + 168B].FwdFsID
	mov	r0, r5	@, D.33356
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L11:
	mov	r2, #114	@,
	ldr	r1, .L12+12	@,
	bl	dprint_vfmw	@
	b	.L3	@
.L13:
	.align	2
.L12:
	.word	.LC2
	.word	.LC3
	.word	.LC0
	.word	.LC1
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
	mov	r5, r1	@ pCtx, pCtx
	ldr	r1, [r2, #48]	@ D.33369, pPictureHeader_14(D)->pic_width_in_mb
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r3, [r2, #52]	@ D.33369, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r1, #1	@ D.33369,
	bls	.L16	@,
	cmp	r3, #1	@ D.33369,
	bls	.L16	@,
	ldr	r1, [r5]	@ D.33370, pCtx_12(D)->pstExtraData
	ldr	r3, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r3, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r3, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L19	@,
	cmp	r3, #25	@ _17->eCapLevel,
	beq	.L42	@,
.L20:
	ldr	r7, [r2, #56]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pix
	mov	r8, #5	@ D.33374,
	ldr	r6, [r2, #60]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pix
	mov	r4, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L25:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp199,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.33370, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp173,
	str	r7, [sp, #24]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #28]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #32]	@ _57->eCapLevel, _57->eCapLevel
	ldr	r3, [r3, #20]	@ _57->s32DnrDispOutEnable, _57->s32DnrDispOutEnable
	cmp	r1, #24	@ _57->eCapLevel,
	strb	r2, [sp, #14]	@ tmp173, FspInstCfg.s32RprEnable
	strb	r3, [sp, #12]	@ _57->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L31	@,
	uxtb	r3, r4	@ D.33368, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [sp, #19]	@ D.33374, FspInstCfg.s32ExpectedDispFsNum
.L33:
	add	r6, r5, #24576	@ tmp183, pCtx,
	add	r1, sp, #12	@ tmp200,,
	strb	r3, [sp, #20]	@ D.33368, FspInstCfg.s32ExpectedPmvNum
	mov	r4, #0	@ tmp179,
	ldr	r0, [r6, #2416]	@, pCtx_12(D)->ChanID
	strb	r4, [sp, #16]	@ tmp179, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.33371,
	beq	.L43	@,
.L40:
	mov	r0, #0	@ D.33366,
.L38:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L19:
	cmp	r3, #25	@ _17->eCapLevel,
	bne	.L20	@,
	ldr	r7, [r2, #56]	@ D.33369, pPictureHeader_14(D)->pic_width_in_pix
	ldr	r0, [r1, #568]	@ D.33371, _17->stChanOption.s32MaxWidth
	cmp	r7, r0	@ D.33369, D.33371
	bhi	.L44	@,
	ldr	r3, [r2, #60]	@ D.33369, pPictureHeader_14(D)->pic_height_in_pix
	ldr	ip, [r1, #572]	@ D.33367, _17->stChanOption.s32MaxHeight
	cmp	r3, ip	@ D.33369, D.33367
	bhi	.L28	@,
	ldr	r2, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r6, r3	@ PicHeight, D.33369
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L41	@,
.L36:
	mov	r4, #1	@ PmvNum,
.L30:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ D.33374, _17->stChanOption.s32DisplayFrameNum
	b	.L25	@
.L16:
	mov	r2, r1	@, D.33369
	mov	r0, #0	@,
	ldr	r1, .L46	@,
	bl	dprint_vfmw	@
	b	.L40	@
.L43:
	ldr	r1, [r5]	@ D.33370, pCtx_12(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r6, #2416]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _76->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _76->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r4	@,
	moveq	r0, #1	@ tmp192,
	streqb	r0, [r5, #178]	@ tmp192, MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated
	beq	.L38	@,
	ldr	r1, .L46+4	@,
	mov	r0, r7	@, D.33371
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.33366, D.33371
	b	.L38	@
.L42:
	ldr	r0, [r2, #56]	@ D.33369, pPictureHeader_14(D)->pic_width_in_pix
	ldr	r7, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	cmp	r0, r7	@ D.33369, PicWidth
	bhi	.L45	@,
	ldr	r3, [r2, #60]	@ D.33369, pPictureHeader_14(D)->pic_height_in_pix
	ldr	r6, [r1, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.33369, PicHeight
	bhi	.L22	@,
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct DIVX3_CODECINF *)pCtx_12(D) + 168B].Imgbuf_allocated,
	beq	.L38	@,
	ldr	r3, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r3, #0	@ _17->stChanOption.s32SupportBFrame,
	beq	.L36	@,
.L41:
	add	r3, r9, #1	@ PmvNum, DecFsNum,
	cmp	r3, #17	@ PmvNum,
	movlt	r4, r3	@ PmvNum, PmvNum
	movge	r4, #17	@ PmvNum,
	b	.L30	@
.L31:
	strb	r2, [sp, #17]	@ tmp173, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.33368,
	strb	r8, [sp, #19]	@ D.33374, FspInstCfg.s32ExpectedDispFsNum
	b	.L33	@
.L44:
	ldr	ip, [r1, #572]	@ D.33367, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ D.33369, pPictureHeader_14(D)->pic_height_in_pix
.L28:
	stmia	sp, {r0, ip}	@,,
	mov	r2, r7	@, D.33369
	ldr	r1, .L46+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33366,
	b	.L38	@
.L45:
	ldr	r6, [r1, #572]	@ D.33367, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #60]	@ D.33369, pPictureHeader_14(D)->pic_height_in_pix
.L22:
	mov	r2, r0	@, D.33369
	str	r6, [sp, #4]	@ D.33367,
	str	r7, [sp]	@ PicWidth,
	mov	r0, #0	@,
	ldr	r1, .L46+8	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33366,
	b	.L38	@
.L47:
	.align	2
.L46:
	.word	.LC4
	.word	.LC6
	.word	.LC5
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
	and	r3, r3, #3	@ D.33381, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].prediction_type,
	str	r3, [r4, #132]	@ D.33381, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.33381, D.33381,
	str	r3, [r4, #136]	@ D.33381, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.33381, D.33381,
	str	r2, [r4, #140]	@ D.33381, pImg_8->format
	ldr	r3, [r5, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb
	mov	r3, r3, asl #4	@ D.33381, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_width_in_mb,
	str	r3, [r4, #144]	@ D.33381, pImg_8->image_width
	ldr	r3, [r5, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb
	mov	r3, r3, asl #4	@ D.33381, MEM[(struct DIVX3_PictureHeader_S *)pCtx_3(D) + 26384B].pic_height_in_mb,
	str	r3, [r4, #148]	@ D.33381, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _23->eCapLevel, _23->eCapLevel
	cmp	r3, #25	@ _23->eCapLevel,
	beq	.L55	@,
.L50:
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
.L55:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.33381, pImg_8->image_stride
	add	r3, r3, #15	@ D.33381, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.33381, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.33384, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.33381, D.33381,
	mov	r3, r1, asl #4	@ D.33381, D.33381,
	add	lr, r1, r0	@ D.33380, D.33381, D.33381
	str	r0, [r4, #88]	@ D.33381, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.33381, D.33381, D.33381
	str	r0, [r4, #120]	@ D.33381, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.33380, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.33384, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.33381, D.33381, D.33381
	add	r3, ip, r3	@ D.33384, D.33384, D.33381
	add	r1, r1, r0	@ D.33380, D.33381, D.33381
	str	r3, [r4, #36]	@ D.33384, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.33381, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.33381, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.33380, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L50	@
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
	add	r6, r0, #24576	@ tmp201, pCtx,
	ldrb	r5, [r0, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].Imgbuf_allocated
	mov	r4, r0	@ pCtx, pCtx
	ldr	r7, [r6, #1808]	@ FrameType, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].PictureHeader.prediction_type
	cmp	r5, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].Imgbuf_allocated,
	beq	.L87	@,
	ldrb	r3, [r0, #179]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].UsedDecMode, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].UsedDecMode
	sub	r3, r3, #2	@ tmp147, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].UsedDecMode,
	cmp	r3, #1	@ tmp147,
	ldr	r3, [r0]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.33395,
	bls	.L88	@,
.L61:
	uxtb	r3, r2	@ D.33396, D.33395
	strb	r3, [r4, #179]	@ D.33396, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].UsedDecMode
	cmp	r3, #4	@ D.33396,
	ldrls	pc, [pc, r3, asl #2]	@ D.33396
	b	.L67	@
.L69:
	.word	.L65
	.word	.L65
	.word	.L62
	.word	.L64
	.word	.L65
.L89:
	mov	r2, r7	@, FrameType
	ldr	r1, .L92	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
.L64:
	mov	r0, #0	@ D.33395,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L88:
	cmp	r2, #4	@ D.33395,
	cmpne	r2, #1	@, D.33395,
	bhi	.L61	@,
	ldr	r1, .L92+4	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].FwdFsID
	mov	r5, #0	@ tmp165,
	ldr	r0, [r6, #2416]	@, pCtx_7(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r6, #2016]	@ tmp165, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_7(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	str	r5, [r6, #1932]	@ tmp165, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].RefNum
	str	r0, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].FwdFsID
	ldr	r3, [r4]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r3, #8]	@ D.33395, _51->s32DecMode
	b	.L61	@
.L87:
	ldr	r1, .L92+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.33395, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].Imgbuf_allocated
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L62:
	cmp	r7, #0	@ FrameType,
	bne	.L89	@,
.L63:
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
.L85:
	mov	r0, #1	@ D.33395,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L65:
	cmp	r7, #0	@ FrameType,
	beq	.L63	@,
	ldr	r3, [r6, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].RefNum,
	beq	.L90	@,
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_7(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_7(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pFwdImg,
	beq	.L91	@,
	ldr	r3, [r4]	@ pCtx_7(D)->pstExtraData, pCtx_7(D)->pstExtraData
	ldr	r2, [r5, #180]	@ D.33401, pFwdImg_3->error_level
	ldr	r3, [r3]	@ D.33400, _43->s32RefErrThr
	cmp	r2, r3	@ D.33401, D.33400
	bls	.L85	@,
	ldr	r1, .L92+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33395,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L67:
	ldr	r1, .L92+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.33395,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L90:
	ldr	r2, .L92+20	@,
	mov	r0, #18	@,
	ldr	r1, .L92+24	@,
	bl	dprint_vfmw	@
	b	.L64	@
.L91:
	movw	r3, #433	@,
	ldr	r2, .L92+28	@,
	ldr	r1, .L92+32	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.33395, pFwdImg
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L93:
	.align	2
.L92:
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC14
	.word	.LC12
	.word	.LC10
	.word	.LC11
	.word	.LANCHOR0
	.word	.LC13
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
	cmp	r0, #1	@ D.33435,
	str	r0, [r4]	@ D.33435, pPictureHeader_8(D)->prediction_type
	bls	.L95	@,
.L98:
	mov	r3, #0	@ D.33434,
.L96:
	mov	r0, r3	@, D.33434
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L95:
	mov	r1, #5	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	ldr	r3, [r4]	@ pPictureHeader_8(D)->prediction_type, pPictureHeader_8(D)->prediction_type
	cmp	r3, #0	@ pPictureHeader_8(D)->prediction_type,
	str	r0, [r4, #4]	@, pPictureHeader_8(D)->quantizer
	beq	.L117	@,
	cmp	r6, #0	@ PrevSwitchRounding,
	mov	r1, #1	@,
	streq	r6, [r4, #8]	@ PrevSwitchRounding, pPictureHeader_8(D)->rounding_type
	mov	r0, r5	@, pBs
	ldrne	r3, [r4, #8]	@ pPictureHeader_8(D)->rounding_type, pPictureHeader_8(D)->rounding_type
	str	r6, [r4, #20]	@ PrevSwitchRounding, pPictureHeader_8(D)->switch_rounding
	rsbne	r3, r3, #1	@ D.33436, pPictureHeader_8(D)->rounding_type,
	strne	r3, [r4, #8]	@ D.33436, pPictureHeader_8(D)->rounding_type
	bl	BsGet	@
	mov	r1, #2	@,
	str	r0, [r4, #16]	@, pPictureHeader_8(D)->has_skips
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #36]	@ D.33435, pPictureHeader_8(D)->alternative_P_AC_DCT
	cmp	r0, #3	@ D.33435,
	ldrls	pc, [pc, r0, asl #2]	@ D.33435
	b	.L111	@
.L113:
	.word	.L112
	.word	.L112
	.word	.L115
	.word	.L115
.L115:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L111:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r1, #1	@,
	str	r0, [r4, #40]	@, pPictureHeader_8(D)->alternative_P_DC_DCT
	mov	r0, r5	@, pBs
	bl	BsGet	@
	mov	r3, #1	@ D.33434,
	str	r0, [r4, #44]	@, pPictureHeader_8(D)->alternative_MV
	mov	r0, r3	@, D.33434
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L117:
	mov	r3, #1	@ tmp143,
	mov	r1, #5	@,
	str	r3, [r4, #8]	@ tmp143, pPictureHeader_8(D)->rounding_type
	mov	r0, r5	@, pBs
	bl	BsGet	@
	sub	r3, r0, #23	@ D.33436, D.33435,
	str	r0, [r4, #12]	@ D.33435, pPictureHeader_8(D)->vol_mode
	cmp	r0, #26	@ D.33435,
	cmpne	r3, #1	@, D.33436,
	bhi	.L98	@,
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #24]	@ D.33435, pPictureHeader_8(D)->alternative_I_AC_chrom_DCT
	cmp	r0, #3	@ D.33435,
	ldrls	pc, [pc, r0, asl #2]	@ D.33435
	b	.L99	@
.L101:
	.word	.L100
	.word	.L100
	.word	.L103
	.word	.L103
.L112:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L111	@
.L103:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L99:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	str	r0, [r4, #28]	@ D.33435, pPictureHeader_8(D)->alternative_I_AC_lum_DCT
	cmp	r0, #3	@ D.33435,
	ldrls	pc, [pc, r0, asl #2]	@ D.33435
	b	.L104	@
.L106:
	.word	.L105
	.word	.L105
	.word	.L108
	.word	.L108
.L108:
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
.L104:
	mov	r0, r5	@, pBs
	mov	r1, #1	@,
	bl	BsGet	@
	mov	r3, #1	@ D.33434,
	str	r0, [r4, #32]	@, pPictureHeader_8(D)->alternative_I_DC_DCT
	b	.L96	@
.L100:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L99	@
.L105:
	mov	r1, #1	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	b	.L104	@
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
	ldr	r8, [r5, #2408]	@ D.33441, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r4, #26624	@, pCtx,
	add	r0, r0, #16	@,,
	mov	r6, #0	@ tmp130,
	str	r8, [r5, #2408]	@ D.33441, pCtx_4(D)->ImageQue.ResetMagicWord
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
	cmn	r0, #1	@ D.33443,
	str	r0, [r5, #2416]	@ D.33443, pCtx_4(D)->ChanID
	mov	r0, r6	@, tmp130
	beq	.L122	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L122:
	ldr	r1, .L123	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.33440,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L124:
	.align	2
.L123:
	.word	.LC15
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
	.pad #180
	sub	sp, sp, #180	@,,
	mov	r4, r1	@ pPacket, pPacket
	mov	r5, r0	@ pCtx, pCtx
	mov	r2, #96	@,
	add	r0, sp, #80	@ tmp725,,
	mov	r1, #0	@,
	mov	r7, #0	@ tmp381,
	bl	memset	@
	cmp	r4, #0	@ pPacket,
	str	r7, [sp, #40]	@ tmp381, slice_start_mbn
	str	r7, [sp, #44]	@ tmp381, slice_start_mbn
	str	r7, [sp, #48]	@ tmp381, slice_start_mbn
	str	r7, [sp, #52]	@ tmp381, slice_start_mbn
	str	r7, [sp, #56]	@ tmp381, slice_start_mbn
	str	r7, [sp, #60]	@ tmp381, slice_end_mbn
	str	r7, [sp, #64]	@ tmp381, slice_end_mbn
	str	r7, [sp, #68]	@ tmp381, slice_end_mbn
	str	r7, [sp, #72]	@ tmp381, slice_end_mbn
	str	r7, [sp, #76]	@ tmp381, slice_end_mbn
	beq	.L203	@,
	ldr	r9, [r4, #8]	@ D.33478, pPacket_25(D)->StreamPack[0].PhyAddr
	cmp	r9, #0	@ D.33478,
	beq	.L204	@,
	ldr	ip, [r4]	@ pPacket_25(D)->StreamPack[0].VirAddr, pPacket_25(D)->StreamPack[0].VirAddr
	cmp	ip, #0	@ pPacket_25(D)->StreamPack[0].VirAddr,
	beq	.L205	@,
	ldr	r3, [r4, #12]	@ pPacket_25(D)->StreamPack[0].LenInByte, pPacket_25(D)->StreamPack[0].LenInByte
	cmp	r3, #9	@ pPacket_25(D)->StreamPack[0].LenInByte,
	bls	.L206	@,
	add	r8, r5, #8	@ __p, pCtx,
	mov	r1, #160	@,
	add	r6, r5, #24576	@ tmp714, pCtx,
	mov	r0, r8	@, __p
	bl	__memzero	@
	str	r7, [r5, #244]	@ tmp381, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsOffset
	ldr	r3, [r4, #12]	@ pPacket_25(D)->StreamPack[0].LenInByte, pPacket_25(D)->StreamPack[0].LenInByte
	str	r3, [r6, #1912]	@ pPacket_25(D)->StreamPack[0].LenInByte, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].PacketTail
	ldr	r3, [r4, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	str	r3, [r5, #248]	@ pPacket_25(D)->StreamPack[0].PhyAddr, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr
	ldr	r3, [r4]	@ D.33481, pPacket_25(D)->StreamPack[0].VirAddr
	str	r3, [r5, #168]	@ D.33481, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr
	ldr	r2, [r4, #12]	@ D.33480, pPacket_25(D)->StreamPack[0].LenInByte
	str	r2, [r5, #252]	@ D.33480, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[0].IsLastSeg, pPacket_25(D)->StreamPack[0].IsLastSeg
	str	r3, [r5, #256]	@ pPacket_25(D)->StreamPack[0].IsLastSeg, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[0].IsLastSeg, pPacket_25(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_25(D)->StreamPack[0].IsLastSeg,
	beq	.L131	@,
	ldr	r3, [r4, #88]	@ pPacket_25(D)->StreamPack[1].PhyAddr, pPacket_25(D)->StreamPack[1].PhyAddr
	str	r3, [r5, #260]	@ pPacket_25(D)->StreamPack[1].PhyAddr, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr1
	ldr	r3, [r4, #80]	@ D.33481, pPacket_25(D)->StreamPack[1].VirAddr
	str	r3, [r5, #172]	@ D.33481, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr1
	ldr	r3, [r4, #92]	@ pPacket_25(D)->StreamPack[1].LenInByte, pPacket_25(D)->StreamPack[1].LenInByte
	str	r3, [r5, #264]	@ pPacket_25(D)->StreamPack[1].LenInByte, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength1
	ldrb	r3, [r4, #85]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[1].IsLastSeg, pPacket_25(D)->StreamPack[1].IsLastSeg
	str	r3, [r5, #268]	@ pPacket_25(D)->StreamPack[1].IsLastSeg, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg1
	ldrb	r3, [r4, #85]	@ zero_extendqisi2	@ pPacket_25(D)->StreamPack[1].IsLastSeg, pPacket_25(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_25(D)->StreamPack[1].IsLastSeg,
	bne	.L207	@,
.L132:
	movw	r3, #65525	@ tmp425,
	sub	r1, r2, #10	@ D.33484, D.33480,
	movt	r3, 47	@ tmp425,
	cmp	r1, r3	@ D.33484, tmp425
	bhi	.L172	@,
	ldr	r1, [r5, #168]	@ D.33481, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr
	cmp	r1, #0	@ D.33481,
	moveq	r9, r1	@ D.33478, D.33481
	beq	.L198	@,
	add	r7, r5, #26368	@ pBs, pCtx,
	add	r7, r7, #240	@ pBs, pBs,
	mov	r0, r7	@, pBs
	bl	BsInit	@
	mov	r0, r7	@, pBs
	bl	BsResidBits	@
	mov	r1, #32	@,
	str	r0, [sp, #20]	@, %sfp
	mov	r0, r7	@, pBs
	bl	BsGet	@
	mov	r1, #32	@,
	rev	r10, r0	@ width,
	mov	r0, r7	@, pBs
	add	r3, r10, #15	@ D.33480, width,
	str	r10, [sp, #136]	@ width, TmpPictureHeader.pic_width_in_pix
	mov	r3, r3, lsr #4	@ D.33480, D.33480,
	str	r3, [sp, #128]	@ D.33480, TmpPictureHeader.pic_width_in_mb
	bl	BsGet	@
	sub	r1, r10, #32	@ D.33480, width,
	rev	r3, r0	@ height,
	str	r3, [sp, #140]	@ height, TmpPictureHeader.pic_height_in_pix
	sub	fp, r3, #32	@ D.33480, height,
	add	r2, r3, #15	@ D.33480, height,
	cmp	r1, #1888	@ D.33480,
	cmpls	fp, #1056	@, D.33480,
	mov	r2, r2, lsr #4	@ D.33480, D.33480,
	str	r2, [sp, #132]	@ D.33480, TmpPictureHeader.pic_height_in_mb
	movhi	fp, #1	@ tmp439,
	movls	fp, #0	@ tmp439,
	bhi	.L208	@,
	ldr	r3, [r6, #1816]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type
	add	r1, sp, #80	@ tmp726,,
	ldr	r2, [r6, #1904]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].PrevSwitchRounding
	mov	r0, r7	@, pBs
	str	r3, [sp, #88]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, TmpPictureHeader.rounding_type
	bl	Divx3_GetPictureHeader	@
	cmp	r0, #1	@ D.33478,
	mov	r9, r0	@ D.33478,
	bne	.L209	@,
	ldr	r3, [r6, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum,
	bne	.L135	@,
	ldr	r2, [sp, #80]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	cmp	r2, #0	@ TmpPictureHeader.prediction_type,
	bne	.L210	@,
.L135:
	ldr	r3, [sp, #128]	@ D.33480, TmpPictureHeader.pic_width_in_mb
	ldr	r2, [sp, #132]	@ D.33480, TmpPictureHeader.pic_height_in_mb
	ldrb	r0, [r5, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated
	mul	r1, r3, r2	@ D.33480, D.33480, D.33480
	cmp	r0, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated,
	str	r1, [sp, #144]	@ D.33480, TmpPictureHeader.total_mbs
	beq	.L136	@,
	ldr	r1, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	cmp	r3, r1	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	beq	.L211	@,
.L136:
	ldr	r3, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r3, #692]	@ _138->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _138->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r10, #1	@ _138->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L212	@,
.L138:
	ldr	r3, .L218	@ tmp499,
	ldr	r3, [r3]	@ D.33488, g_event_report
	cmp	r3, #0	@ D.33488,
	beq	.L145	@,
	ldr	r0, [sp, #132]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	add	r2, sp, #32	@,,
	ldr	fp, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	mov	r1, #2	@,
	ldr	r10, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	lr, [sp, #128]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	r0, [sp, #38]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	strh	fp, [sp, #32]	@ movhi	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, para
	strh	r10, [sp, #34]	@ movhi	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, para
	strh	lr, [sp, #36]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	blx	r3	@ D.33488
.L145:
	mov	r2, #1	@,
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	mov	fp, #0	@ tmp520,
	bl	FSP_ClearLogicFs	@
	str	fp, [r6, #2016]	@ tmp520, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	add	r10, r5, #26624	@ D.33490, pCtx,
	bl	FSP_GetNullLogicFs	@
	add	r10, r10, #16	@ D.33490, D.33490,
	str	fp, [r6, #1932]	@ tmp520, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum
	mov	r1, r10	@, D.33490
	str	r0, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #128]	@ D.33477, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #132]	@ D.33480, TmpPictureHeader.pic_height_in_mb
	cmp	r2, #512	@ D.33477,
	bhi	.L147	@,
	cmp	r3, #512	@ D.33480,
	bhi	.L147	@,
	ldr	r1, [r5]	@ D.33487, pCtx_21(D)->pstExtraData
	ldr	r0, [r1, #608]	@ _200->stChanOption.s32ReRangeEn, _200->stChanOption.s32ReRangeEn
	cmp	r0, #0	@ _200->stChanOption.s32ReRangeEn,
	bne	.L149	@,
	ldr	r1, [r1, #32]	@ _200->eCapLevel, _200->eCapLevel
	cmp	r1, #25	@ _200->eCapLevel,
	beq	.L213	@,
.L149:
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L202	@,
	ldr	r3, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _208->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _208->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _208->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L152	@,
	ldr	r3, [r6, #2420]	@ pCtx_21(D)->DSDNeedClearQue, pCtx_21(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_21(D)->DSDNeedClearQue,
	beq	.L152	@,
.L202:
	ldr	r2, [sp, #128]	@ D.33477, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [sp, #132]	@ D.33480, TmpPictureHeader.pic_height_in_mb
.L150:
	ldr	r1, .L218+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	add	r2, sp, #80	@ tmp727,,
	mov	r1, r5	@, pCtx
	mov	r0, #6	@,
	bl	Divx3_ArrangeVHBMem	@
	cmp	r0, #1	@,
	bne	.L214	@,
.L137:
	ldr	r3, [sp, #80]	@ TmpPictureHeader.prediction_type, TmpPictureHeader.prediction_type
	add	r0, r5, #26368	@ pPictureHeader, pCtx,
	add	r0, r0, #16	@ pPictureHeader, pPictureHeader,
	cmp	r3, #0	@ TmpPictureHeader.prediction_type,
	beq	.L154	@,
	ldr	r10, [r6, #1820]	@ lastpic_vol_mode, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
	add	r1, sp, #80	@ tmp728,,
	mov	r2, #96	@,
	bl	memcpy	@
	str	r10, [r6, #1820]	@ lastpic_vol_mode, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
.L171:
	mov	r0, r5	@, pCtx
	bl	Divx3_DecodeDecide	@
	cmp	r0, #1	@ ret,
	mov	r10, r0	@ ret,
	beq	.L155	@,
	ldr	r1, .L218+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r9, #0	@ D.33478,
	b	.L198	@
.L206:
	ldr	r1, .L218+12	@,
	mov	r0, #1	@,
	mov	r9, r7	@ D.33478, tmp381
	bl	dprint_vfmw	@
.L198:
	mov	r0, r9	@, D.33478
	add	sp, sp, #180	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L207:
	ldr	r1, [r4, #16]	@, pPacket_25(D)->StreamPack[0].StreamID
	mov	r9, r7	@ D.33478, tmp381
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #96]	@, pPacket_25(D)->StreamPack[1].StreamID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@, D.33478
	add	sp, sp, #180	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L139:
	ldr	r2, [sp, #24]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L215	@,
.L143:
	mov	r2, #1	@ tmp494,
	str	r2, [r3, #728]	@ tmp494, _147->s32DSDWaitFlag
.L172:
	mov	r9, #0	@ D.33478,
	mov	r0, r9	@, D.33478
	add	sp, sp, #180	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L204:
	ldr	r1, .L218+16	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@, D.33478
	add	sp, sp, #180	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L131:
	str	r7, [r5, #260]	@ tmp381, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsPhyAddr1
	str	r7, [r5, #172]	@ tmp381, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsVirAddr1
	str	r7, [r5, #264]	@ tmp381, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].BsLength1
	str	r7, [r5, #268]	@ tmp381, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].IsLastSeg1
	b	.L132	@
.L208:
	mov	r2, r10	@, width
	ldr	r1, .L218+20	@,
	mov	r0, #1	@,
	mov	r9, #0	@ D.33478,
	bl	dprint_vfmw	@
	b	.L198	@
.L209:
	ldr	r1, .L218+24	@,
	mov	r0, #1	@,
	mov	r9, fp	@ D.33478, tmp439
	bl	dprint_vfmw	@
	b	.L198	@
.L203:
	add	r5, r5, #24576	@ tmp393, pCtx,
	ldr	r1, .L218+28	@,
	mov	r0, #1	@,
	mov	r9, r4	@ D.33478, pPacket
	ldr	r2, [r5, #1928]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FrmCnt
	bl	dprint_vfmw	@
	b	.L198	@
.L205:
	ldr	r1, .L218+32	@,
	mov	r0, #1	@,
	mov	r9, ip	@ D.33478, pPacket_25(D)->StreamPack[0].VirAddr
	bl	dprint_vfmw	@
	b	.L198	@
.L147:
	ldr	r1, .L218+36	@,
	mov	r0, #18	@,
	bl	dprint_vfmw	@
	mov	r9, #0	@ D.33478,
	b	.L198	@
.L214:
	ldr	r1, .L218+40	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r9, #0	@ D.33478,
	b	.L198	@
.L154:
	add	r1, sp, #80	@ tmp730,,
	mov	r2, #96	@,
	bl	memcpy	@
	b	.L171	@
.L211:
	ldr	r3, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	cmp	r2, r3	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	bne	.L136	@,
	ldr	r3, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _136->s32DSDWaitFlag, _136->s32DSDWaitFlag
	cmp	r3, #1	@ _136->s32DSDWaitFlag,
	bne	.L137	@,
	b	.L136	@
.L212:
	add	r3, sp, #24	@,,
	add	r2, sp, #28	@,,
	add	r1, sp, #32	@,,
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	mov	lr, #0	@ tmp466,
	str	lr, [sp, #24]	@ tmp466, NewNum
	str	lr, [sp, #28]	@ tmp466, ReadNum
	str	lr, [sp, #32]	@ tmp466, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.33487, pCtx_21(D)->pstExtraData
	ldr	r1, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _147->s32DSDThrWidth, _147->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _147->s32DSDThrWidth, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb,
	bcc	.L139	@,
	ldr	r1, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _147->s32DSDThrHeight, _147->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _147->s32DSDThrHeight, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb,
	bcc	.L139	@,
	ldr	r2, [sp, #28]	@ ReadNum, ReadNum
	ldr	r1, [sp, #24]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.33482, ReadNum, NewNum
	cmp	r2, #0	@ D.33482,
	strgt	r10, [r3, #728]	@ _138->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _147->s32DSDWaitFlag
	strle	r10, [r6, #2420]	@ _138->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pCtx_21(D)->DSDNeedClearQue
	bgt	.L172	@,
.L142:
	mov	r2, #0	@ tmp498,
	str	r2, [r3, #728]	@ tmp498, _147->s32DSDWaitFlag
	b	.L138	@
.L213:
	ldrb	r1, [r5, #178]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated
	cmp	r1, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].Imgbuf_allocated,
	bne	.L150	@,
.L152:
	mov	r0, r10	@, D.33490
	bl	ResetVoQueue	@
	b	.L202	@
.L210:
	ldr	r1, .L218+44	@,
	mov	r9, r3	@ D.33478, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].RefNum
	bl	dprint_vfmw	@
	b	.L198	@
.L155:
	mov	r0, r5	@, pCtx
	bl	Divx3_GetImageBuffer	@
	subs	r3, r0, #0	@ D.33480,
	beq	.L216	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	lr, r0, #0	@ pImg,
	beq	.L157	@,
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	mvn	r2, #0	@ tmp577,
	mvn	r3, #0	@,
	ldr	r1, .L218+48	@,
	mov	r0, #29	@,
	ldrd	r10, [r10, #56]	@ D.33492, pCtx_21(D)->pstExtraData,
	strd	r10, [lr, #8]	@ D.33492, pImg,
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldrd	r10, [r10, #72]	@ D.33492, pCtx_21(D)->pstExtraData,
	strd	r10, [lr, #16]	@ D.33492, pImg,
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldrd	r10, [r10, #88]	@ D.33492, pCtx_21(D)->pstExtraData,
	strd	r10, [lr, #24]	@ D.33492, pImg,
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r10, #104]	@ D.33480, _245->DispEnableFlag
	str	r10, [lr, #68]	@ D.33480, pImg_234->DispEnableFlag
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r10, #108]	@ D.33480, _248->DispFrameDistance
	str	r10, [lr, #72]	@ D.33480, pImg_234->DispFrameDistance
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r10, #112]	@ D.33480, _251->DistanceBeforeFirstFrame
	str	r10, [lr, #76]	@ D.33480, pImg_234->DistanceBeforeFirstFrame
	ldr	r10, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	ldr	r10, [r10, #128]	@ D.33480, _254->GopNum
	str	r10, [lr, #80]	@ D.33480, pImg_234->GopNum
	ldr	r10, [r5]	@ D.33487, pCtx_21(D)->pstExtraData
	strd	r2, [r10, #56]	@ tmp577, D.33487,
	ldrd	r10, [lr, #16]	@ pImg_234->Usertag, pImg,
	ldrd	r2, [lr, #8]	@ pImg_234->PTS, pImg,
	strd	r10, [sp]	@ pImg_234->Usertag,
	bl	dprint_vfmw	@
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FwdFsID
	mov	r10, r0	@ pCur,
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r10, #0	@ pCur,
	cmpne	r0, #0	@, pFwd,
	beq	.L158	@,
	ldr	r3, [r10, #408]	@ D.33493, pCur_265->pstDecodeFs
	cmp	r3, #0	@ D.33493,
	beq	.L158	@,
	ldr	r2, [r10, #416]	@ pCur_265->pstTfOutFs, pCur_265->pstTfOutFs
	cmp	r2, #0	@ pCur_265->pstTfOutFs,
	beq	.L158	@,
	ldr	r2, [r10, #412]	@ pCur_265->pstDispOutFs, pCur_265->pstDispOutFs
	cmp	r2, #0	@ pCur_265->pstDispOutFs,
	beq	.L158	@,
	ldr	r2, [r0, #408]	@ D.33493, pFwd_269->pstDecodeFs
	mov	r0, #13	@,
	ldr	ip, [r5, #160]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].ColPmvPhyAddr, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].ColPmvPhyAddr
	mov	fp, #0	@ tmp625,
	cmp	r2, #0	@ D.33493,
	ldrne	r1, [r2, #12]	@ D.33477, _276->PhyAddr
	ldreq	r1, [r3, #12]	@ D.33477, _273->PhyAddr
	str	r1, [r5, #132]	@ D.33477, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].FwdRefPhyAddr
	ldr	r3, [r10, #408]	@ pCur_265->pstDecodeFs, pCur_265->pstDecodeFs
	ldr	r2, [r3, #12]	@ D.33480, _282->PhyAddr
	str	r2, [r5, #136]	@ D.33480, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].CurPicPhyAddr
	ldr	lr, [r10, #420]	@ D.33480, pCur_265->PmvAddr
	str	lr, [r5, #156]	@ D.33480, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].CurrPmvPhyAddr
	ldr	r3, [r10, #412]	@ pCur_265->pstDispOutFs, pCur_265->pstDispOutFs
	ldr	r3, [r3, #12]	@ D.33480, _289->PhyAddr
	stmia	sp, {r1, lr}	@,,
	ldr	r1, .L218+52	@,
	str	r3, [r5, #140]	@ D.33480, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].DispFramePhyAddr
	str	ip, [sp, #8]	@ MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].ColPmvPhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r10, #412]	@ pCur_265->pstDispOutFs, pCur_265->pstDispOutFs
	mov	r0, r7	@, pBs
	ldr	r3, [r3, #20]	@ _295->Stride, _295->Stride
	str	r3, [r5, #144]	@ _295->Stride, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].DDRStride
	ldr	r3, [r10, #412]	@ pCur_265->pstDispOutFs, pCur_265->pstDispOutFs
	ldr	r3, [r3, #32]	@ _299->ChromOffset, _299->ChromOffset
	str	r3, [r5, #148]	@ _299->ChromOffset, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].uv_offset
	bl	BsResidBits	@
	ldr	r3, [r4, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	ldr	r2, [sp, #20]	@ D.33482, %sfp
	bic	r3, r3, #15	@ D.33482, pPacket_25(D)->StreamPack[0].PhyAddr,
	str	r3, [r5, #104]	@ D.33482, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBaseAddr
	ldr	r3, [r4, #8]	@ pPacket_25(D)->StreamPack[0].PhyAddr, pPacket_25(D)->StreamPack[0].PhyAddr
	and	r3, r3, #15	@ D.33482, pPacket_25(D)->StreamPack[0].PhyAddr,
	add	r3, r2, r3, lsl #3	@ D.33477, D.33482, D.33482,
	rsb	r3, r0, r3	@ CurrPicBitOffset,, D.33477
	mov	r0, r7	@, pBs
	and	r2, r3, #127	@ D.33480, CurrPicBitOffset,
	str	r2, [r5, #116]	@ D.33480, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBitOffset
	mov	r3, r3, lsr #7	@ D.33480, CurrPicBitOffset,
	mov	r3, r3, asl #4	@ D.33480, D.33480,
	str	r3, [r5, #108]	@ D.33480, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamPhyAddr
	bl	BsResidBits	@
	str	fp, [r5, #112]	@ tmp625, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamPhyAddr
	str	fp, [r5, #120]	@ tmp625, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamBitOffset
	str	fp, [r5, #128]	@ tmp625, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamLength
	str	r0, [r5, #124]	@, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].StreamLength
	ldr	r3, [r6, #1820]	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].vol_mode
	cmp	r3, #24	@ D.33480,
	beq	.L164	@,
	cmp	r3, #26	@ D.33480,
	beq	.L165	@,
	cmp	r3, #23	@ D.33480,
	beq	.L217	@,
	ldr	r1, .L218+56	@,
	mov	r0, #1	@,
	mov	r9, fp	@ D.33478, tmp625
	bl	dprint_vfmw	@
	b	.L198	@
.L216:
	ldr	r2, [r6, #1928]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].FrmCnt
	mov	r9, r3	@ D.33478, D.33480
	ldr	r1, .L218+60	@,
	bl	dprint_vfmw	@
	b	.L198	@
.L215:
	ldr	r2, [sp, #28]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L143	@,
	mov	r2, #0	@ tmp497,
	str	r2, [r6, #2420]	@ tmp497, pCtx_21(D)->DSDNeedClearQue
	b	.L142	@
.L158:
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_21(D) + 168B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r6, #2416]	@, pCtx_21(D)->ChanID
	mov	r9, #0	@ D.33478,
	bl	FSP_ClearLogicFs	@
	ldr	r1, .L218+64	@,
	mov	r0, r9	@, D.33478
	bl	dprint_vfmw	@
	b	.L198	@
.L157:
	mov	r0, r10	@, ret
	ldr	r1, .L218+68	@,
	mov	r9, lr	@ D.33478, pImg
	bl	dprint_vfmw	@
	b	.L198	@
.L164:
	ldr	r2, [r6, #1860]	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	tst	r2, #1	@ D.33480,
	str	fp, [sp, #40]	@ tmp625, slice_start_mbn
	mov	r2, r2, lsr #1	@ slice_mb_height, D.33480,
	moveq	r4, #2	@ total_slice_num,
	mul	r3, r3, r2	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, slice_mb_height
	sub	r2, r3, #1	@ D.33480, D.33480,
	str	r2, [sp, #60]	@ D.33480, slice_end_mbn
	mov	r2, r3, asl #1	@ D.33480, D.33480,
	str	r3, [sp, #44]	@ D.33480, slice_start_mbn
	sub	r3, r2, #1	@ D.33480, D.33480,
	str	r3, [sp, #64]	@ D.33480, slice_end_mbn
	beq	.L167	@,
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r4, #3	@ total_slice_num,
	str	r2, [sp, #48]	@ D.33480, slice_start_mbn
	sub	r3, r3, #1	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #68]	@ D.33480, slice_end_mbn
.L167:
	ldr	r3, [r6, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type
	cmp	r4, #0	@ total_slice_num,
	str	r3, [r5, #12]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].prediction_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].prediction_type
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	str	r3, [r5, #16]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].PicWidthInMb
	ldr	r3, [r6, #1860]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	str	r3, [r5, #20]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].PicHeightInMb
	ldr	r3, [r6, #1812]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer
	str	r3, [r5, #24]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].quantizer, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].quantizer
	ldr	r3, [r6, #1816]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type
	str	r3, [r5, #28]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].rounding_type, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].rounding_type
	ldr	r3, [r6, #1824]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips
	str	r3, [r5, #32]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].has_skips, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].has_skips
	ldr	r3, [r6, #1832]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT
	str	r3, [r5, #36]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_chrom_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_AC_chrom_DCT
	ldr	r3, [r6, #1836]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT
	str	r3, [r5, #40]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_AC_lum_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_AC_lum_DCT
	ldr	r3, [r6, #1840]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT
	str	r3, [r5, #44]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_I_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_I_DC_DCT
	ldr	r3, [r6, #1844]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT
	str	r3, [r5, #48]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_AC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_P_AC_DCT
	ldr	r3, [r6, #1848]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT
	str	r3, [r5, #52]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_P_DC_DCT, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_P_DC_DCT
	ldr	r3, [r6, #1852]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV
	str	r4, [r5, #60]	@ total_slice_num, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].TotalSliceNum
	str	r3, [r5, #56]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].alternative_MV, MEM[(struct DIVX3_DEC_PARAM_S *)pCtx_21(D) + 8B].alternative_MV
	beq	.L170	@,
	add	lr, sp, #40	@ ivtmp.47,,
	add	r0, r5, #60	@ ivtmp.52, pCtx,
	add	r1, sp, #60	@ ivtmp.61,,
	add	r2, r5, #80	@ ivtmp.65, pCtx,
	mov	r3, #0	@ slice_num,
.L169:
	add	r3, r3, #1	@ slice_num, slice_num,
	ldr	r6, [lr], #4	@ D.33480, MEM[base: _106, offset: 0B]
	ldr	ip, [r1], #4	@ D.33480, MEM[base: _116, offset: 0B]
	cmp	r3, r4	@ slice_num, total_slice_num
	str	r6, [r0, #4]!	@ D.33480, MEM[base: _108, offset: 0B]
	str	ip, [r2, #4]!	@ D.33480, MEM[base: _119, offset: 0B]
	bne	.L169	@,
.L170:
	ldr	r3, [r5]	@ pCtx_21(D)->pstExtraData, pCtx_21(D)->pstExtraData
	str	r8, [r5, #4]	@ __p, pCtx_21(D)->pDivx3DecParam
	ldr	r3, [r3, #512]	@ D.33482, _380->s32Compress_en
	str	r3, [r5, #164]	@ D.33482, pCtx_21(D)->Divx3DecParam.Compress_en
	b	.L198	@
.L217:
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r4, #1	@ total_slice_num,
	str	fp, [sp, #40]	@ tmp625, slice_start_mbn
	sub	r3, r3, #1	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #60]	@ D.33480, slice_end_mbn
	b	.L167	@
.L165:
	ldr	r2, [r6, #1860]	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_height_in_mb
	ldr	r3, [r6, #1856]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb
	tst	r2, #3	@ D.33480,
	str	fp, [sp, #40]	@ tmp625, slice_start_mbn
	mov	r2, r2, lsr #2	@ slice_mb_height, D.33480,
	moveq	r4, #4	@ total_slice_num,
	mul	r3, r3, r2	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].pic_width_in_mb, slice_mb_height
	sub	r2, r3, #1	@ D.33480, D.33480,
	str	r2, [sp, #60]	@ D.33480, slice_end_mbn
	mov	r2, r3, asl #1	@ D.33480, D.33480,
	mov	r1, r3, asl #2	@ D.33480, D.33480,
	add	r0, r2, r3	@ tmp661, D.33480, D.33480
	str	r3, [sp, #44]	@ D.33480, slice_start_mbn
	str	r2, [sp, #48]	@ D.33480, slice_start_mbn
	sub	r3, r0, #1	@ D.33480, tmp661,
	sub	r2, r2, #1	@ D.33480, D.33480,
	str	r3, [sp, #68]	@ D.33480, slice_end_mbn
	str	r0, [sp, #52]	@ tmp661, slice_start_mbn
	sub	r3, r1, #1	@ D.33480, D.33480,
	str	r2, [sp, #64]	@ D.33480, slice_end_mbn
	str	r3, [sp, #72]	@ D.33480, slice_end_mbn
	beq	.L167	@,
	ldr	r3, [r6, #1872]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs
	mov	r4, #5	@ total_slice_num,
	str	r1, [sp, #56]	@ D.33480, slice_start_mbn
	sub	r3, r3, #1	@ D.33480, MEM[(struct DIVX3_PictureHeader_S *)pCtx_21(D) + 26384B].total_mbs,
	str	r3, [sp, #76]	@ D.33480, slice_end_mbn
	b	.L167	@
.L219:
	.align	2
.L218:
	.word	g_event_report
	.word	.LC24
	.word	.LC26
	.word	.LC19
	.word	.LC17
	.word	.LC20
	.word	.LC21
	.word	.LC16
	.word	.LC18
	.word	.LC23
	.word	.LC25
	.word	.LC22
	.word	.LC28
	.word	.LC31
	.word	.LC32
	.word	.LC27
	.word	.LC30
	.word	.LC29
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
	mov	r0, #1	@ D.33525,
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
	addeq	r5, r0, #26624	@ D.33529, pCtx,
	addeq	r5, r5, #16	@ D.33529, D.33529,
	beq	.L230	@,
	add	r6, r0, #24576	@ tmp139, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L241	@,
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L239	@,
.L241:
	add	r5, r4, #26624	@ D.33529, pCtx,
	add	r5, r5, #16	@ D.33529, D.33529,
.L230:
	mov	r0, r5	@, D.33529
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L239:
	mov	r0, r4	@, pCtx
	add	r5, r4, #26624	@ D.33529, pCtx,
	bl	Divx3_SetImgFormat	@
	add	r5, r5, #16	@ D.33529, D.33529,
	mov	r3, #1	@ tmp150,
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	mov	r2, r3	@, tmp150
	ldr	r1, [r6, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_5(D) + 168B].CurFsID
	ldr	r0, [r6, #2416]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2416]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	str	r7, [sp]	@ pImg,
	mov	r3, r5	@, D.33529
	mov	r1, #5	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L227	@,
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
	b	.L230	@
.L227:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L230	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L230	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L230	@,
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
	mov	r6, r1	@ ErrRatio, ErrRatio
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r1, .L273	@,
	add	r4, r5, #24576	@ tmp249, pCtx,
	mov	r7, r2	@ SwitchRounding, SwitchRounding
	mov	r0, #22	@,
	mov	r2, r6	@, ErrRatio
	bl	dprint_vfmw	@
	mov	r1, r5	@, pCtx
	mov	r0, #5	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L270	@,
	ldr	r3, [r4, #1808]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PictureHeader.prediction_type,
	andeq	r7, r7, #1	@ D.33538, SwitchRounding,
	streq	r7, [r4, #1904]	@ D.33538, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].PrevSwitchRounding
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.33536,
	blt	.L246	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.33536,
.L246:
	str	r6, [r0, #180]	@ D.33536, pCurImg_17->error_level
	mov	r0, #22	@,
	ldr	r1, .L273+4	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pCtx
	bl	Divx3_SetImgFormat	@
	ldrb	r3, [r5, #179]	@ zero_extendqisi2	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].UsedDecMode,
	beq	.L249	@,
	ldr	r3, [r5]	@ pCtx_9(D)->pstExtraData, pCtx_9(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _32->s32DecOrderOutput, _32->s32DecOrderOutput
	cmp	r3, #1	@ _32->s32DecOrderOutput,
	beq	.L249	@,
	ldr	r3, [r4, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum,
	ldrne	r1, [r4, #2016]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	mvneq	r1, #0	@ D.33537,
	str	r1, [r4, #2024]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
.L248:
	cmn	r1, #1	@ D.33537,
	beq	.L251	@,
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r6, [r4, #2024]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	mov	r1, r6	@, D.33537
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_GetRef	@
	mov	r2, r6	@, D.33537
	ldr	r1, .L273+8	@,
	mov	r3, r0	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2024]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #26624	@, pCtx,
	ldr	r0, [r4, #2416]	@ pCtx_9(D)->ChanID, pCtx_9(D)->ChanID
	add	r3, r3, #16	@,,
	str	r7, [sp]	@ pToQueImg,
	mov	r2, r5	@, pCtx
	mov	r1, #5	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L271	@,
.L251:
	ldr	r2, [r4, #1808]	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type, MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type
	ldr	r3, [r4, #1928]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt
	cmp	r2, #1	@ MEM[(struct DIVX3_PictureHeader_S *)pCtx_9(D) + 26384B].prediction_type,
	add	r3, r3, #1	@ D.33538, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt,
	str	r3, [r4, #1928]	@ D.33538, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FrmCnt
	beq	.L272	@,
.L252:
	ldr	r2, [r4, #2016]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	mov	r3, #1	@ tmp219,
	ldr	r1, [r4, #2020]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	str	r3, [r4, #1932]	@ tmp219, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r2, r1	@ D.33537, D.33537
	beq	.L254	@,
	ldr	r1, .L273+12	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2016]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_RemovePmv	@
	ldr	r1, [r4, #2020]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
.L254:
	str	r1, [r4, #2016]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].FwdFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetRef	@
	ldr	r2, [r4, #2020]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	ldr	r1, .L273+16	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.33536,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L249:
	ldr	r1, [r4, #2020]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].CurFsID
	str	r1, [r4, #2024]	@ D.33537, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	b	.L248	@
.L271:
	mov	r2, #0	@,
	ldr	r1, [r4, #2024]	@, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].ToQueFsID
	ldr	r0, [r4, #2416]	@, pCtx_9(D)->ChanID
	bl	FSP_SetDisplay	@
.L270:
	mov	r0, #0	@ D.33536,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L272:
	ldr	r3, [r4, #1932]	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum, MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum
	cmp	r3, #0	@ MEM[(struct DIVX3_CODECINF *)pCtx_9(D) + 168B].RefNum,
	bne	.L252	@,
	b	.L270	@
.L274:
	.align	2
.L273:
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
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
	cmp	r0, #1	@ D.33549,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L282	@,
	mov	r0, #0	@ D.33549,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L282:
	add	r1, r5, #26624	@, pCtx,
	ldr	r0, [r4, #2416]	@, pCtx_3(D)->ChanID
	add	r1, r1, #16	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.33549,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DIVX3DEC_GetImageBuffer, .-DIVX3DEC_GetImageBuffer
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.32574, %object
	.size	__func__.32574, 19
__func__.32574:
	.ascii	"Divx3_DecodeDecide\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC1:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC2:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC3:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC4:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC5:
	.ascii	"divx3 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC6:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC7:
	.ascii	"ERROR: No Img buffer is allocated\012\000"
	.space	1
.LC8:
	.ascii	"----------------- divx3 Imode -> %d ---------------"
	.ascii	"---\012\000"
.LC9:
	.ascii	"-----I_MODE, but FrameType is %d-----\012\000"
	.space	1
.LC10:
	.ascii	"P-frm\000"
	.space	2
.LC11:
	.ascii	"-----cur framtype is %s, but refnum=%d-----\012\000"
	.space	3
.LC12:
	.ascii	"error: DecMode illegal\012\000"
.LC13:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC14:
	.ascii	"dec P frame, fwd ref err(%d) > ref_thr(%d)\012\000"
.LC15:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC16:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC17:
	.ascii	"ERROR: frm %d, Invalid packet PhyAddr!\012\000"
.LC18:
	.ascii	"ERROR: frm %d, Invalid packet VirAddr!\012\000"
.LC19:
	.ascii	"ERROR: frm %d, Invalid packet len!\012\000"
.LC20:
	.ascii	"ERROR: frm %d, Invalid WxH: %dx%d!\012\000"
.LC21:
	.ascii	"Divx3_GetPictureHeader Error!\012\000"
	.space	1
.LC22:
	.ascii	"Can't decode from P frame!\012\000"
.LC23:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC24:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC25:
	.ascii	"Divx3_ArrangeVHBMem err\012\000"
	.space	3
.LC26:
	.ascii	"Divx3_DecodeDecide err\012\000"
.LC27:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC28:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC29:
	.ascii	"FSP_GetFsImagePtr Error!\012\000"
	.space	2
.LC30:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC31:
	.ascii	"dec addr: cur,cur2d,fwd,currpmv,colpmv = %p,%p,%p,%"
	.ascii	"p,%p,%p\012\000"
.LC32:
	.ascii	"vol_mode Error!\012\000"
	.space	3
.LC33:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC34:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC35:
	.ascii	"insert buf %d ref %d\012\000"
	.space	2
.LC36:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC37:
	.ascii	"++++++++++ ref %d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
