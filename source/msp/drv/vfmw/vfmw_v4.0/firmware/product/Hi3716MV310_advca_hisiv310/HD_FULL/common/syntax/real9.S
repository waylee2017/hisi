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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(real9)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real9.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real9.o
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
	mov	r4, r0	@ D.38406,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.38406
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
	mov	r4, r0	@ D.38409,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.38409
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
	ldrb	r3, [r7, r0]	@ zero_extendqisi2	@ D.38413, gs_VLCDecodeTable
	mov	r0, r6	@, pBs
	and	r2, r3, #15	@ D.38414, D.38413,
	mov	r1, r3, lsr #4	@ thisChunksLength, D.38413,
	mov	r3, r3, lsr #5	@ D.38414, D.38413,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@ info, D.38414, info,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #36864	@ tmp129, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	add	r7, r0, #8192	@ tmp132, pCtx,
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.38424,
	str	r0, [r4, #2048]	@ D.38424, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	blt	.L21	@,
	mov	r1, r0	@, D.38424
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r4, r0, #0	@ pLf,
	beq	.L22	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_14->pstDecodeFs, pLf_14->pstDecodeFs
	cmp	r3, #0	@ pLf_14->pstDecodeFs,
	beq	.L19	@,
	ldr	r3, [r4, #412]	@ pLf_14->pstDispOutFs, pLf_14->pstDispOutFs
	cmp	r3, #0	@ pLf_14->pstDispOutFs,
	beq	.L19	@,
	ldr	r3, [r4, #416]	@ pLf_14->pstTfOutFs, pLf_14->pstTfOutFs
	cmp	r3, #0	@ pLf_14->pstTfOutFs,
	beq	.L19	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.38423,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L19:
	mov	r0, #1	@ D.38423,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L21:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	mov	r5, #0	@ tmp155,
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2040]	@ tmp155, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	str	r5, [r4, #2044]	@ tmp155, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #38912	@, pCtx,
	add	r1, r1, #40	@,,
	str	r0, [r4, #2044]	@ D.38424, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	str	r0, [r4, #2040]	@ D.38424, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	strb	r5, [r7, #3181]	@ tmp155, MEM[(struct RV9_CODECINF *)pCtx_4(D) + 11360B].RefNum
	ldr	r0, [r4, #2440]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.38423, tmp155
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L22:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38423, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r3, [r2, #24]	@ pPictureHeader_14(D)->pic_width_in_mb, pPictureHeader_14(D)->pic_width_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_width_in_mb,
	bls	.L24	@,
	ldr	r3, [r2, #20]	@ pPictureHeader_14(D)->pic_height_in_mb, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_height_in_mb,
	bls	.L24	@,
	ldr	r3, [r1]	@ D.38432, pCtx_12(D)->pstExtraData
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r3, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r1, [r3, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L27	@,
	cmp	r1, #25	@ _17->eCapLevel,
	beq	.L46	@,
.L28:
	ldr	r6, [r2, #16]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pixel
	mov	r7, #5	@ D.38436,
	ldr	r9, [r2, #12]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pixel
	mov	r5, #2	@ PmvNum,
	mov	r8, #4	@ DecFsNum,
.L30:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp204,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.38432, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp177,
	ldr	r1, [r3, #32]	@ _53->eCapLevel, _53->eCapLevel
	ldr	r3, [r3, #20]	@ _53->s32DnrDispOutEnable, _53->s32DnrDispOutEnable
	cmp	r1, #24	@ _53->eCapLevel,
	str	r6, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r9, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r2, [sp, #6]	@ tmp177, FspInstCfg.s32RprEnable
	strb	r3, [sp, #4]	@ _53->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L33	@,
	uxtb	r3, r5	@ D.38430, PmvNum
	strb	r8, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r7, [sp, #11]	@ D.38436, FspInstCfg.s32ExpectedDispFsNum
.L35:
	add	r6, r4, #36864	@ tmp187, pCtx,
	add	r1, sp, #4	@ tmp205,,
	strb	r3, [sp, #12]	@ D.38430, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp183,
	ldr	r0, [r6, #2440]	@, pCtx_12(D)->ChanID
	strb	r5, [sp, #8]	@ tmp183, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.38433,
	beq	.L47	@,
.L42:
	mov	r0, #0	@ D.38429,
.L40:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L27:
	cmp	r1, #25	@ _17->eCapLevel,
	bne	.L28	@,
	ldr	r6, [r2, #16]	@ D.38431, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r1, [r3, #568]	@ _17->stChanOption.s32MaxWidth, _17->stChanOption.s32MaxWidth
	cmp	r6, r1	@ D.38431, _17->stChanOption.s32MaxWidth
	bhi	.L24	@,
	ldr	r9, [r2, #12]	@ D.38431, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r2, [r3, #572]	@ _17->stChanOption.s32MaxHeight, _17->stChanOption.s32MaxHeight
	cmp	r9, r2	@ D.38431, _17->stChanOption.s32MaxHeight
	bhi	.L24	@,
.L45:
	ldr	r2, [r3, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	ldr	r8, [r3, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _17->stChanOption.s32SupportBFrame,
	moveq	r5, #1	@ PmvNum,
	beq	.L32	@,
	add	r5, r8, #1	@ PmvNum, DecFsNum,
	cmp	r5, #17	@ PmvNum,
	movge	r5, #17	@ PmvNum,
.L32:
	ldrb	r7, [r3, #616]	@ zero_extendqisi2	@ D.38436, _17->stChanOption.s32DisplayFrameNum
	b	.L30	@
.L47:
	ldr	r1, [r4]	@ D.38432, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r6, #2440]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _72->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _72->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	beq	.L48	@,
.L24:
	bl	vfmw_dprint_nothing	@
	b	.L42	@
.L48:
	add	r4, r4, #8192	@ tmp196, pCtx,
	mov	r3, #1	@ tmp197,
	mov	r0, r3	@ D.38429, tmp197
	strb	r3, [r4, #3184]	@ tmp197, MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L33:
	strb	r2, [sp, #9]	@ tmp177, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.38430,
	strb	r7, [sp, #11]	@ D.38436, FspInstCfg.s32ExpectedDispFsNum
	b	.L35	@
.L46:
	ldr	r6, [r3, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	ldr	r1, [r2, #16]	@ pPictureHeader_14(D)->pic_width_in_pixel, pPictureHeader_14(D)->pic_width_in_pixel
	cmp	r1, r6	@ pPictureHeader_14(D)->pic_width_in_pixel, PicWidth
	bhi	.L24	@,
	ldr	r2, [r2, #12]	@ pPictureHeader_14(D)->pic_height_in_pixel, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r9, [r3, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r2, r9	@ pPictureHeader_14(D)->pic_height_in_pixel, PicHeight
	bhi	.L24	@,
	add	r2, r4, #8192	@ tmp165, pCtx,
	ldrb	r0, [r2, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct RV9_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated,
	bne	.L45	@,
	b	.L40	@
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
	mov	r4, r0	@ D.38451,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r4, [r6]	@ D.38451, pPictureHeader_6(D)->pixel_aspect_ratio
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r4, r0	@ D.38451,
	add	r4, r4, #1	@ D.38450, D.38451,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r4, r4, asl #2	@ D.38450, D.38450,
	mov	r0, r5	@, pBs
	str	r4, [r6, #16]	@ D.38450, pPictureHeader_6(D)->pic_width_in_pixel
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.38450,
	mov	r4, r0	@ D.38450,
	beq	.L53	@,
	mov	r0, #0	@ D.38448,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L53:
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r7, r0	@ D.38451,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r7, r7, asl #2	@ D.38450, D.38451,
	mov	r0, r4	@ D.38448, D.38450
	str	r7, [r6, #12]	@ D.38450, pPictureHeader_6(D)->pic_height_in_pixel
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
	ldr	r3, [r0, #16]	@ D.38454, pPictureHeader_3(D)->pic_width_in_pixel
	ldr	r2, [r0, #12]	@ D.38454, pPictureHeader_3(D)->pic_height_in_pixel
	cmp	r3, #128	@ D.38454,
	beq	.L71	@,
	cmp	r3, #176	@ D.38454,
	beq	.L72	@,
	cmp	r3, #352	@ D.38454,
	beq	.L73	@,
	cmp	r3, #704	@ D.38454,
	beq	.L74	@,
	cmp	r3, #1408	@ D.38454,
	beq	.L75	@,
.L56:
	add	r3, r3, #15	@ D.38454, D.38454,
	add	r2, r2, #15	@ D.38454, D.38454,
	mov	r3, r3, lsr #4	@ D.38454, D.38454,
	mov	r2, r2, lsr #4	@ D.38454, D.38454,
	str	r3, [r0, #76]	@ D.38454, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	mul	r3, r3, r2	@ D.38454, D.38454, D.38454
	str	r2, [r0, #72]	@ D.38454, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
	sub	r3, r3, #1	@ D.38455, D.38454,
	cmp	r3, #47	@ D.38455,
	movls	r2, #0	@ i,
	bls	.L57	@,
	cmp	r3, #98	@ D.38455,
	bls	.L66	@,
	cmp	r3, #396	@ D.38455,
	bcc	.L67	@,
	cmp	r3, #1584	@ D.38455,
	bcc	.L68	@,
	cmp	r3, #6336	@ D.38455,
	movcs	r2, #5	@ i,
	bcc	.L70	@,
.L57:
	ldr	r3, .L76	@ tmp134,
	add	r3, r3, r2, lsl #2	@ tmp135, tmp134, i,
	ldr	r3, [r3, #256]	@ tmp137, MBA_FieldWidth
	str	r3, [r0, #80]	@ tmp137, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_mbaSize
	bx	lr	@
.L75:
	cmp	r2, #1152	@ D.38454,
	bne	.L56	@,
	mov	r2, #88	@ tmp129,
	mov	r3, #72	@ tmp130,
	str	r2, [r0, #76]	@ tmp129, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp130, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L70:
	mov	r2, #4	@ i,
	b	.L57	@
.L71:
	cmp	r2, #96	@ D.38454,
	bne	.L56	@,
	mov	r2, #8	@ tmp121,
	mov	r3, #6	@ tmp122,
	str	r2, [r0, #76]	@ tmp121, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	mov	r2, #0	@ i,
	str	r3, [r0, #72]	@ tmp122, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
	b	.L57	@
.L72:
	cmp	r2, #144	@ D.38454,
	bne	.L56	@,
	mov	r2, #11	@ tmp123,
	mov	r3, #9	@ tmp124,
	str	r2, [r0, #76]	@ tmp123, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp124, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L66:
	mov	r2, #1	@ i,
	b	.L57	@
.L73:
	cmp	r2, #288	@ D.38454,
	bne	.L56	@,
	mov	r2, #22	@ tmp125,
	mov	r3, #18	@ tmp126,
	str	r2, [r0, #76]	@ tmp125, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp126, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L67:
	mov	r2, #2	@ i,
	b	.L57	@
.L74:
	cmp	r2, #576	@ D.38454,
	bne	.L56	@,
	mov	r2, #44	@ tmp127,
	mov	r3, #36	@ tmp128,
	str	r2, [r0, #76]	@ tmp127, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nMBs
	str	r3, [r0, #72]	@ tmp128, MEM[(struct RV9_ParsePicParam *)pPictureHeader_3(D) + 64B].m_nGOBs
.L68:
	mov	r2, #3	@ i,
	b	.L57	@
.L77:
	.align	2
.L76:
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
	ldr	ip, .L95	@ tmp137,
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
	sub	ip, ip, #2	@ D.38459, pRv9ParsePicParam_15(D)->ptype,
	cmp	ip, #1	@ D.38459,
	stmia	sp, {r0, r1, r2, r3}	@ tmp142,,,,
	bls	.L93	@,
.L79:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r5, r0	@ D.38460,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r3, sp, #80	@ tmp157,,
	add	r5, r3, r5, lsl #2	@ tmp146, tmp157, D.38460,
	ldr	r6, [r5, #-64]	@ w, code_width
	cmp	r6, #0	@ w,
	beq	.L82	@,
.L81:
	mov	r1, #3	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r9, r0	@ D.38460,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	add	r3, sp, #80	@ tmp158,,
	add	r3, r3, r9, lsl #2	@ tmp149, tmp158, D.38460,
	ldr	r5, [r3, #-32]	@ h, code_height1
	cmp	r5, #0	@ h,
	beq	.L94	@,
.L83:
	str	r6, [r8]	@ w, *width_22(D)
	str	r5, [r7]	@ h, *height_25(D)
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L82:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r5, r0	@ D.38460,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	cmp	r5, #255	@ D.38460,
	add	r6, r6, r5, lsl #2	@ w, w, D.38460,
	beq	.L82	@,
	b	.L81	@
.L93:
	mov	r0, r4	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	beq	.L79	@,
	ldr	r3, [r10, #52]	@ D.38459, pRv9ParsePicParam_15(D)->pwidth_prev
	str	r3, [r8]	@ D.38459, *width_22(D)
	ldr	r3, [r10, #56]	@ D.38459, pRv9ParsePicParam_15(D)->pheight_prev
	str	r3, [r7]	@ D.38459, *height_25(D)
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L94:
	mov	r0, r4	@, pBs
	mov	r9, r9, asl #1	@ code, D.38460,
	bl	Real9_CB_Get1Bit	@
	orr	r0, r0, r9	@ code,, code
	add	r2, sp, #80	@ tmp159,,
	and	r3, r0, #3	@ code, code,
	add	r3, r2, r3, lsl #2	@ tmp152, tmp159, code,
	ldr	r5, [r3, #-80]	@ h, code_height2
	cmp	r5, #0	@ h,
	bne	.L83	@,
.L84:
	mov	r1, #8	@,
	mov	r0, r4	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r9, r0	@ D.38460,
	mov	r0, r4	@, pBs
	bl	BsSkip	@
	cmp	r9, #255	@ D.38460,
	add	r5, r5, r9, lsl #2	@ h, h, D.38460,
	beq	.L84	@,
	b	.L83	@
.L96:
	.align	2
.L95:
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
	add	r6, r0, #7	@ tmp122, D.38468,
	cmp	r0, #0	@ D.38468,
	movlt	r0, r6	@ D.38468, tmp122
	mov	r6, r0, asr #3	@ tmp123, D.38468,
	sub	r6, r6, #2	@ RemainByte, tmp123,
	cmp	r6, #0	@ RemainByte,
	movwgt	r7, #7184	@ tmp128,
	movgt	r4, #0	@ i,
	movtgt	r7, 29	@ tmp128,
	bgt	.L100	@,
	b	.L101	@
.L105:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L101	@,
.L100:
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	cmp	r0, r7	@, tmp128
	mov	r0, r5	@, pBs
	bne	.L105	@,
	mov	r0, #1	@ D.38466,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L101:
	mov	r0, #0	@ D.38466,
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
	beq	.L143	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L144	@,
	mov	r2, #0	@ tmp195,
	str	r2, [r7]	@ tmp195, *iSliceMBA_64(D)
	ldr	r2, [sp, #40]	@ tmp204, iSQUANT
	mov	r0, #1	@ D.38472,
	mvn	r3, #0	@ tmp196,
	str	r3, [r2]	@ tmp196, *iSQUANT_68(D)
.L131:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L143:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L108	@,
	ldr	r3, [r4, #88]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	cmn	r3, #1	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba,
	beq	.L145	@,
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L121	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #84]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	cmp	r3, r6	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, D.38474
	beq	.L111	@,
.L121:
	mov	r0, #0	@ D.38472,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L144:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L121	@,
	ldr	r5, [r4, #80]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	mov	r0, r8	@, pBs
	mov	r1, r5	@, D.38474
	bl	BsShow	@
	mov	r1, r5	@, D.38474
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r7]	@ D.38474, *iSliceMBA_64(D)
	ldr	r3, [r4, #80]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	cmp	r3, #11	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize,
	bls	.L126	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L121	@,
.L126:
	mov	r1, #5	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r5, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	cmp	r5, #31	@ D.38474,
	ldr	r3, [sp, #40]	@ tmp203, iSQUANT
	str	r5, [r3]	@ D.38474, *iSQUANT_68(D)
	bgt	.L121	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r5, [r4, #52]	@ D.38474, pPictureHeader_11(D)->OSVQUANT
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #1	@ D.38473,
	mov	r4, r0	@ D.38473,
	bne	.L121	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r5, [r9]	@ D.38474, *iSliceGFID_70(D)
	mov	r0, r4	@ D.38472, D.38473
	b	.L131	@
.L145:
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L121	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r5, r6	@ bFirstSlice, pPictureHeader_11(D)->Fid
	mov	r1, #2	@,
	mov	r10, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r10, [r4, #84]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
.L111:
	mov	r1, #5	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	uxtb	r0, r6	@ D.38476, D.38474
	cmp	r0, #31	@ D.38476,
	strb	r0, [r4, #66]	@ D.38476, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	bhi	.L121	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L121	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_Get1Bit	@
	subs	r10, r0, #0	@ D.38473,
	bne	.L121	@,
	mov	r1, #2	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r4, #52]	@ D.38474, pPictureHeader_11(D)->OSVQUANT
	mov	r1, #1	@,
	mov	r0, r8	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	adds	r6, r6, #0	@ tmp174, D.38474,
	mov	r1, #13	@,
	mov	r0, r8	@, pBs
	movne	r6, #1	@ tmp174,
	cmp	r5, #0	@ bFirstSlice,
	strb	r6, [r4, #65]	@ tmp174, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough
	add	r5, r4, #64	@ pRv9ParsePicParam, pPictureHeader,
	beq	.L114	@,
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #84]	@ D.38475, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	str	r6, [r4, #92]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, #1	@ D.38475,
	bls	.L116	@,
	cmp	r3, #2	@ D.38475,
	ldreq	r2, [r4, #108]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	ldreq	r3, [r4, #112]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	streq	r2, [r4, #116]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth_prev
	streq	r3, [r4, #120]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight_prev
.L132:
	mov	r1, r5	@, pRv9ParsePicParam
	add	r3, sp, #4	@,,
	mov	r2, sp	@,
	mov	r0, r8	@, pBs
	bl	Real9_CB_GetPicSize	@
	movw	r1, #8144	@ tmp185,
	ldr	r2, [sp]	@ D.38473, width
	ldr	r3, [sp, #4]	@ D.38473, height
	sub	r0, r2, #48	@ D.38473, D.38473,
	cmp	r0, r1	@ D.38473, tmp185
	str	r2, [r4, #108]	@ D.38473, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	str	r2, [r4, #16]	@ D.38473, pPictureHeader_11(D)->pic_width_in_pixel
	str	r3, [r4, #112]	@ D.38473, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	str	r3, [r4, #12]	@ D.38473, pPictureHeader_11(D)->pic_height_in_pixel
	bhi	.L121	@,
	sub	r3, r3, #48	@ D.38473, D.38473,
	cmp	r3, r1	@ D.38473, tmp185
	bhi	.L121	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
.L122:
	ldr	r5, [r4, #80]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_mbaSize
	mov	r0, r8	@, pBs
	mov	r1, r5	@, D.38474
	bl	BsShow	@
	mov	r1, r5	@, D.38474
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	str	r6, [r4, #88]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
.L108:
	ldr	r2, [r4, #88]	@ D.38474, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	mov	r3, #0	@ tmp193,
	ldr	r1, [sp, #40]	@ tmp202, iSQUANT
	mov	r0, #1	@ D.38472,
	str	r2, [r7]	@ D.38474, *iSliceMBA_64(D)
	ldrb	r2, [r4, #66]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	str	r2, [r1]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, *iSQUANT_68(D)
	str	r3, [r9]	@ tmp193, *iSliceGFID_70(D)
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L114:
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r6, r0	@ D.38474,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #92]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, r6	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, D.38474
	bne	.L121	@,
	add	r3, sp, #4	@,,
	mov	r2, sp	@,
	mov	r1, r5	@, pRv9ParsePicParam
	mov	r0, r8	@, pBs
	bl	Real9_CB_GetPicSize	@
	ldr	r2, [r4, #108]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth
	ldr	r3, [sp]	@ width, width
	cmp	r2, r3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth, width
	bne	.L121	@,
	ldr	r2, [r4, #112]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight
	ldr	r3, [sp, #4]	@ height, height
	cmp	r2, r3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight, height
	bne	.L121	@,
	b	.L122	@
.L116:
	str	r10, [r4, #116]	@ D.38473, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pwidth_prev
	str	r10, [r4, #120]	@ D.38473, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pheight_prev
	b	.L132	@
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
	beq	.L171	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, #128	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #16	@,
	mov	r6, r0	@ D.38484,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	movw	r3, #21845	@ tmp179,
	cmp	r6, r3	@ D.38484, tmp179
	bne	.L166	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #16	@,
	mov	r7, r0	@ D.38484,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r7, r6	@ D.38484, D.38484
	bne	.L166	@,
	mov	r0, r5	@, pBs
	add	r1, sp, #20	@ tmp210,,
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L166	@,
	ldr	r3, [sp, #20]	@ D.38483, info
	ands	r2, r3, #1	@ D.38483, D.38483,
	bne	.L166	@,
	tst	r3, #2	@ D.38483,
	mov	r0, r5	@, pBs
	strne	r2, [r4, #16]	@ D.38483, pPictureHeader_11(D)->pic_width_in_pixel
	moveq	r1, #176	@ tmp184,
	moveq	r2, #144	@ tmp185,
	streq	r1, [r4, #16]	@ tmp184, pPictureHeader_11(D)->pic_width_in_pixel
	add	r1, sp, #20	@ tmp211,,
	str	r2, [r4, #12]	@ D.38483, pPictureHeader_11(D)->pic_height_in_pixel
	ubfx	r2, r3, #2, #5	@ D.38483, D.38483,,
	ubfx	r3, r3, #7, #8	@ D.38483, D.38483,,
	str	r2, [r4, #48]	@ D.38483, pPictureHeader_11(D)->PQUANT
	str	r3, [r4, #36]	@ D.38483, pPictureHeader_11(D)->TR
	bl	Real9_CB_GetVLCBits	@
	cmp	r0, #1	@ length,
	streq	r0, [r4, #8]	@ length, pPictureHeader_11(D)->PicCodType
	beq	.L160	@,
	cmp	r0, #3	@ length,
	beq	.L172	@,
	cmp	r0, #5	@ length,
	bne	.L166	@,
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L166	@,
	mov	r3, #2	@ tmp197,
	str	r3, [r4, #8]	@ tmp197, pPictureHeader_11(D)->PicCodType
.L160:
	ldr	r3, [r4, #16]	@ D.38483, pPictureHeader_11(D)->pic_width_in_pixel
	cmp	r3, #0	@ D.38483,
	beq	.L173	@,
.L162:
	sub	r3, r3, #48	@ D.38483, D.38483,
	movw	r2, #8144	@ tmp199,
	cmp	r3, r2	@ D.38483, tmp199
	bhi	.L166	@,
	ldr	r3, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.38483, pPictureHeader_11(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.38483, tmp199
	bhi	.L166	@,
	mov	r0, r4	@, pPictureHeader
	mov	r6, #1	@ Status,
	bl	Real9_CB_SetDimensions	@
	mov	r1, #2	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r7, r0	@ D.38484,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	str	r7, [r4, #52]	@ D.38484, pPictureHeader_11(D)->OSVQUANT
.L148:
	ldr	r3, [r4, #16]	@ pPictureHeader_11(D)->pic_width_in_pixel, pPictureHeader_11(D)->pic_width_in_pixel
	mov	r0, r6	@ D.38482, Status
	ldr	r2, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	add	r3, r3, #15	@ D.38483, pPictureHeader_11(D)->pic_width_in_pixel,
	add	r2, r2, #15	@ D.38483, pPictureHeader_11(D)->pic_height_in_pixel,
	mov	r3, r3, lsr #4	@ D.38483, D.38483,
	str	r3, [r4, #24]	@ D.38483, pPictureHeader_11(D)->pic_width_in_mb
	mov	r2, r2, lsr #4	@ D.38483, D.38483,
	str	r2, [r4, #20]	@ D.38483, pPictureHeader_11(D)->pic_height_in_mb
	mul	r3, r3, r2	@ D.38483, D.38483, D.38483
	str	r3, [r4, #28]	@ D.38483, pPictureHeader_11(D)->total_mbs
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L172:
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #1	@ info,
	moveq	r3, #0	@ tmp195,
	streq	r3, [r4, #8]	@ tmp195, pPictureHeader_11(D)->PicCodType
	beq	.L160	@,
.L166:
	mvn	r0, #1	@ D.38482,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L171:
	str	r1, [sp, #4]	@ pPictureHeader,
	add	r3, sp, #20	@ tmp160,,
	mvn	r2, #0	@ tmp157,
	str	r2, [r1, #88]	@ tmp157, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].mba
	str	r3, [sp]	@ tmp160,
	add	r2, sp, #16	@,,
	add	r3, sp, #12	@,,
	mov	r1, #0	@,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r6, #1	@ Status,
	bne	.L148	@,
	ldr	r3, [r4, #84]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	cmp	r3, #3	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].ptype
	b	.L164	@
.L151:
	.word	.L150
	.word	.L152
	.word	.L153
	.word	.L154
.L173:
	mov	r1, r4	@, pPictureHeader
	mov	r0, r5	@, pBs
	bl	Real9_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L166	@,
	ldr	r3, [r4, #16]	@ D.38483, pPictureHeader_11(D)->pic_width_in_pixel
	b	.L162	@
.L154:
	mov	r6, #1	@ Status,
	mov	r3, #2	@ tmp167,
	str	r3, [r4, #8]	@ tmp167, pPictureHeader_11(D)->PicCodType
.L149:
	ldr	r3, [r4, #16]	@ pPictureHeader_11(D)->pic_width_in_pixel, pPictureHeader_11(D)->pic_width_in_pixel
	movw	r2, #8144	@ tmp175,
	ldrb	lr, [r4, #65]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough
	sub	r3, r3, #48	@ D.38483, pPictureHeader_11(D)->pic_width_in_pixel,
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant
	ldr	r0, [r4, #92]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr
	cmp	r3, r2	@ D.38483, tmp175
	ldr	r1, [r4, #96]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb
	ldr	r3, [r4, #100]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq
	str	lr, [r4, #44]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].deblocking_filter_passthrough, pPictureHeader_11(D)->Deblocking_Filter_Passthrough
	str	ip, [r4, #48]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].pquant, pPictureHeader_11(D)->PQUANT
	str	r0, [r4, #36]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].tr, pPictureHeader_11(D)->TR
	str	r1, [r4, #56]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].trb, pPictureHeader_11(D)->TRB
	str	r3, [r4, #60]	@ MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].dbq, pPictureHeader_11(D)->DBQUANT
	bhi	.L166	@,
	ldr	r3, [r4, #12]	@ pPictureHeader_11(D)->pic_height_in_pixel, pPictureHeader_11(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.38483, pPictureHeader_11(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.38483, tmp175
	bhi	.L166	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real9_CB_SetDimensions	@
	b	.L148	@
.L153:
	mov	r0, #1	@ tmp166,
	str	r0, [r4, #8]	@ tmp166, pPictureHeader_11(D)->PicCodType
	mov	r6, r0	@ Status, tmp166
	b	.L149	@
.L152:
	mov	r3, #0	@ tmp164,
	mov	r6, #1	@ Status,
	str	r3, [r4, #8]	@ tmp164, pPictureHeader_11(D)->PicCodType
	str	r3, [r4, #68]	@ tmp164, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_isForcedKey
	b	.L149	@
.L150:
	mov	r0, #1	@ tmp163,
	mov	r3, #0	@ tmp162,
	str	r0, [r4, #68]	@ tmp163, MEM[(struct RV9_ParsePicParam *)pPictureHeader_11(D) + 64B].m_isForcedKey
	mov	r6, r0	@ Status, tmp163
	str	r3, [r4, #8]	@ tmp162, pPictureHeader_11(D)->PicCodType
	b	.L149	@
.L164:
	mvn	r6, #1	@ Status,
	b	.L149	@
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
	and	r3, r3, #3	@ D.38491, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].PicCodType,
	str	r3, [r4, #132]	@ D.38491, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.38491, D.38491,
	str	r3, [r4, #136]	@ D.38491, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.38491, D.38491,
	str	r2, [r4, #140]	@ D.38491, pImg_8->format
	ldr	r3, [r5, #712]	@ D.38491, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].pic_width_in_pixel
	str	r3, [r4, #144]	@ D.38491, pImg_8->image_width
	ldr	r3, [r5, #708]	@ D.38491, MEM[(struct RV9_PictureHeader *)pCtx_3(D) + 37560B].pic_height_in_pixel
	str	r3, [r4, #148]	@ D.38491, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _21->eCapLevel, _21->eCapLevel
	cmp	r3, #25	@ _21->eCapLevel,
	beq	.L181	@,
.L176:
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
.L181:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.38491, pImg_8->image_stride
	add	r3, r3, #15	@ D.38491, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.38491, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.38494, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.38491, D.38491,
	mov	r3, r1, asl #4	@ D.38491, D.38491,
	add	lr, r1, r0	@ D.38490, D.38491, D.38491
	str	r0, [r4, #88]	@ D.38491, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.38491, D.38491, D.38491
	str	r0, [r4, #120]	@ D.38491, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.38490, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.38494, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.38491, D.38491, D.38491
	add	r3, ip, r3	@ D.38494, D.38494, D.38491
	add	r1, r1, r0	@ D.38490, D.38491, D.38491
	str	r3, [r4, #36]	@ D.38494, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.38491, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.38491, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.38490, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L176	@
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
	beq	.L184	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	beq	.L188	@,
.L183:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L188:
	mov	r0, r5	@, pCtx
	bl	Real9_SetImgFormat	@
	mov	r2, #1	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@ pCtx_3(D)->ChanID, pCtx_3(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #40	@,,
	mov	r1, #9	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L183	@,
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ ret,
	b	.L183	@
.L184:
	mvn	r0, #0	@ ret,
	b	.L183	@
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
	add	r1, r1, #1	@ D.38512, HoldSliceNum,
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
	str	r1, [r0, #40]	@ D.38512, MEM[(struct RV9_DEC_PARAM_S *)pCtx_1(D) + 8B].TotalSliceNum
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
	ldr	r2, [r3, #704]	@ D.38515, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].PicCodType
	cmp	r2, #2	@ D.38515,
	strb	r2, [r0, #9]	@ D.38515, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicCodingType
	ldr	r2, [r3, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb
	str	r2, [r0, #12]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicWidthInMb
	ldr	r2, [r3, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb
	str	r2, [r0, #16]	@ MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PicHeightInMb
	ldr	r2, [r3, #1964]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0
	str	r2, [r0, #20]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio0
	ldr	r2, [r3, #1968]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1
	str	r2, [r0, #24]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio1
	ldr	r2, [r3, #744]	@ D.38517, MEM[(struct RV9_PictureHeader *)pCtx_2(D) + 37560B].PQUANT
	str	r2, [r0, #28]	@ D.38517, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PQUANT
	ldr	r1, [r3, #868]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	str	r1, [r0, #32]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicQP
	ldr	r1, [r3, #872]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP
	str	r1, [r0, #36]	@ MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV9_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicMb0QP
	strne	r2, [r3, #868]	@ D.38517, MEM[(struct RV9_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
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
	ldr	r3, [r0, #12]	@ D.38572, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].PicWidthInMb
	cmp	r2, #0	@ MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice,
	ldr	ip, [r0, #16]	@ D.38572, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].PicHeightInMb
	bne	.L227	@,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mul	ip, r3, ip	@ D.38572, D.38572, D.38572
	ldr	lr, [r0, #40]	@ D.38572, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	cmp	lr, #2	@ D.38572,
	sub	ip, ip, #1	@ TotalMbnMinus1, D.38572,
	bls	.L200	@,
	ldr	r3, [r0, #168]	@ D.38573, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[1].first_mb_in_slice
	sub	r4, lr, #1	@ D.38572, D.38572,
	cmp	r3, #0	@ D.38573,
	cmpgt	ip, r3	@, TotalMbnMinus1, D.38573
	ble	.L201	@,
	mov	r2, r0	@ ivtmp.150, pCtx
	mov	r3, #1	@ i,
	b	.L202	@
.L203:
	ldr	r1, [r2, #212]	@ D.38573, MEM[base: _177, offset: 212B]
	add	r2, r2, #44	@ ivtmp.150, ivtmp.150,
	cmp	ip, r1	@ TotalMbnMinus1, D.38573
	cmpgt	r1, #0	@, D.38573,
	ble	.L201	@,
.L202:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.38572
	bne	.L203	@,
.L200:
	cmp	lr, #1	@ D.38572,
	bls	.L204	@,
	sub	r5, lr, #1	@ D.38572, D.38572,
	mov	r3, r0	@ ivtmp.143, pCtx
	mov	r2, #0	@ i,
	b	.L205	@
.L206:
	ldr	r4, [r3, #124]	@ D.38573, MEM[base: _13, offset: 124B]
	add	r3, r3, #44	@ ivtmp.143, ivtmp.143,
	add	r2, r2, #1	@ i, i,
	ldr	r1, [r3, #124]	@ MEM[base: _11, offset: 124B], MEM[base: _11, offset: 124B]
	cmp	r4, r1	@ D.38573, MEM[base: _11, offset: 124B]
	bge	.L201	@,
.L205:
	cmp	r2, r5	@ i, D.38572
	bne	.L206	@,
	mov	r3, #44	@ tmp268,
	mla	r2, r3, r2, r0	@ tmp269, tmp268, i, pCtx
	ldr	r3, [r2, #124]	@ D.38573, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[_175].first_mb_in_slice
	cmp	ip, r3	@ TotalMbnMinus1, D.38573
	cmpge	r3, #0	@, D.38573,
	ble	.L201	@,
.L204:
	cmp	lr, #0	@ D.38572,
	beq	.L207	@,
	sub	r7, lr, #1	@ D.38572, D.38572,
	mov	r6, r0	@ ivtmp.126, pCtx
	mov	r4, r0	@ ivtmp.136, pCtx
	mov	r5, #0	@ i,
	b	.L210	@
.L229:
	cmp	r5, lr	@ i, D.38572
	beq	.L228	@,
.L210:
	cmp	r5, r7	@ i, D.38572
	streq	ip, [r4, #128]	@ TotalMbnMinus1, MEM[base: _104, offset: 128B]
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #44	@ ivtmp.136, ivtmp.136,
	ldrne	r3, [r4, #124]	@ MEM[base: _103, offset: 168B], MEM[base: _103, offset: 168B]
	moveq	r1, ip	@ D.38573, TotalMbnMinus1
	subne	r1, r3, #1	@ D.38573, MEM[base: _103, offset: 168B],
	ldr	r3, [r4, #80]	@ D.38573, MEM[base: _113, offset: 124B]
	strne	r1, [r4, #84]	@ D.38573, MEM[base: _103, offset: 128B]
	mov	r2, r3, lsr #31	@ tmp282, D.38573,
	cmp	ip, r3	@ TotalMbnMinus1, D.38573
	orrlt	r2, r2, #1	@,, tmp284, tmp282
	cmp	r3, r1	@ D.38573, D.38573
	movle	r3, r2	@, tmp288, tmp284
	orrgt	r3, r2, #1	@,, tmp288, tmp284
	orr	r3, r3, r1, lsr #31	@ tmp293, tmp288, D.38573,
	cmp	ip, r1	@ TotalMbnMinus1, D.38573
	orrlt	r3, r3, #1	@,, tmp299, tmp293
	cmp	r3, #0	@ tmp299,
	beq	.L229	@,
.L201:
	mov	r0, #0	@ D.38574,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L227:
	mov	r0, #0	@ D.38574,
	bx	lr	@
.L228:
	ldr	r2, [r0, #88]	@ stream_base_addr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	mov	r1, r2	@ D.38577, stream_base_addr
	b	.L213	@
.L230:
	ldr	r1, [r6, #88]	@ D.38577, MEM[base: _129, offset: 88B]
.L213:
	cmp	r2, r1	@ stream_base_addr, D.38577
	ldr	ip, [r6, #92]	@ stream_base_addr, MEM[base: _130, offset: 92B]
	add	r3, r3, #1	@ i, i,
	movcs	r2, r1	@ stream_base_addr, D.38577
	cmp	ip, r2	@ stream_base_addr, stream_base_addr
	bcs	.L211	@,
	ldr	r1, [r6, #108]	@ MEM[base: _130, offset: 108B], MEM[base: _130, offset: 108B]
	cmp	r1, #0	@ MEM[base: _130, offset: 108B],
	movne	r2, ip	@ stream_base_addr, stream_base_addr
.L211:
	cmp	r3, lr	@ i, D.38572
	add	r6, r6, #44	@ ivtmp.126, ivtmp.126,
	bne	.L230	@,
	bic	r2, r2, #15	@ D.38574, stream_base_addr,
	ldr	lr, [r0, #40]	@ D.38572, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	str	r2, [r0, #48]	@ D.38574, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
	mov	r3, r0	@ ivtmp.110, pCtx
	mov	ip, #0	@ i,
	b	.L217	@
.L231:
	ldr	r4, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	rsb	r2, r2, r1	@ D.38572, D.38574, MEM[base: _43, offset: 88B]
	and	r1, r4, #7	@ D.38572, MEM[base: _43, offset: 96B],
	add	r2, r2, r4, lsr #3	@ BytePos0, D.38572, MEM[base: _43, offset: 96B],
	and	r4, r2, #15	@ D.38572, BytePos0,
	bic	r2, r2, #15	@ D.38572, BytePos0,
	str	r2, [r3, #88]	@ D.38572, MEM[base: _43, offset: 88B]
	add	r2, r1, r4, lsl #3	@ D.38572, D.38572, D.38572,
	str	r2, [r3, #96]	@ D.38572, MEM[base: _43, offset: 96B]
.L215:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #44	@ ivtmp.110, ivtmp.110,
	cmp	lr, ip	@ D.38572, i
	bls	.L216	@,
	ldr	r2, [r0, #48]	@ D.38574, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L217:
	ldr	r1, [r3, #92]	@ MEM[base: _43, offset: 92B], MEM[base: _43, offset: 92B]
	cmp	r1, #0	@ MEM[base: _43, offset: 92B],
	rsb	r4, r2, r1	@ D.38572, D.38574, MEM[base: _43, offset: 92B]
	ldr	r1, [r3, #88]	@ MEM[base: _43, offset: 88B], MEM[base: _43, offset: 88B]
	beq	.L231	@,
	ldr	r5, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	rsb	r2, r2, r1	@ D.38572, D.38574, MEM[base: _43, offset: 88B]
	ldr	r7, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	and	r6, r5, #7	@ D.38572, MEM[base: _43, offset: 96B],
	add	r2, r2, r5, lsr #3	@ BytePos0, D.38572, MEM[base: _43, offset: 96B],
	and	r5, r7, #7	@ D.38572, MEM[base: _43, offset: 100B],
	add	r1, r4, r7, lsr #3	@ BytePos1, D.38572, MEM[base: _43, offset: 100B],
	and	r4, r2, #15	@ D.38572, BytePos0,
	and	r7, r1, #15	@ D.38572, BytePos1,
	bic	r2, r2, #15	@ D.38572, BytePos0,
	add	r4, r6, r4, lsl #3	@ D.38572, D.38572, D.38572,
	str	r2, [r3, #88]	@ D.38572, MEM[base: _43, offset: 88B]
	bic	r1, r1, #15	@ D.38572, BytePos1,
	add	r2, r5, r7, lsl #3	@ D.38572, D.38572, D.38572,
	str	r4, [r3, #96]	@ D.38572, MEM[base: _43, offset: 96B]
	str	r2, [r3, #100]	@ D.38572, MEM[base: _43, offset: 100B]
	str	r1, [r3, #92]	@ D.38572, MEM[base: _43, offset: 92B]
	b	.L215	@
.L207:
	ldr	r3, [r0, #88]	@ MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	bic	r3, r3, #15	@ D.38573, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr,
	str	r3, [r0, #48]	@ D.38573, MEM[(struct RV9_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L216:
	mov	r0, #1	@ D.38574,
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
	cmn	r0, #1	@ D.38582,
	str	r0, [r4, #2440]	@ D.38582, pCtx_3(D)->ChanID
	beq	.L236	@,
	mov	r0, r6	@ D.38580, tmp136
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L236:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38580,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	.pad #196
	sub	sp, sp, #196	@,,
	add	r4, r0, #36864	@ tmp1277, pCtx,
	mov	r8, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #128	@,
	mov	r1, #0	@,
	add	r0, sp, #64	@ tmp1322,,
	add	r3, r8, #8	@ __p, pCtx,
	str	r3, [sp, #12]	@ __p, %sfp
	bl	memset	@
	ldr	r2, [r4, #804]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pwidth
	ldr	r3, [r4, #808]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pheight
	cmp	r5, #0	@ pPacket,
	mov	r0, #1	@ tmp497,
	mov	r1, #8192	@ tmp500,
	str	r2, [r4, #812]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pwidth_prev
	str	r3, [r4, #816]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Rv9ParsePicParam.pheight_prev
	str	r0, [r4, #700]	@ tmp497, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Fid
	str	r1, [r4, #728]	@ tmp500, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	str	r2, [sp, #180]	@ D.38631, TmpPictureHeader.Rv9ParsePicParam.pwidth_prev
	str	r2, [sp, #172]	@ D.38631, TmpPictureHeader.Rv9ParsePicParam.pwidth
	str	r3, [sp, #184]	@ D.38631, TmpPictureHeader.Rv9ParsePicParam.pheight_prev
	str	r3, [sp, #176]	@ D.38631, TmpPictureHeader.Rv9ParsePicParam.pheight
	str	r0, [sp, #68]	@ tmp497, TmpPictureHeader.Fid
	str	r1, [sp, #96]	@ tmp500, TmpPictureHeader.m_uTRWrap
	beq	.L248	@,
	movw	r1, #11348	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	__memzero	@
	mov	r6, #0	@ tmp507,
	str	r6, [r4, #1904]	@ tmp507, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsOffset
	add	r7, r8, #8192	@ tmp1280, pCtx,
	ldr	r3, [r5, #12]	@ pPacket_54(D)->StreamPack[0].LenInByte, pPacket_54(D)->StreamPack[0].LenInByte
	str	r3, [r4, #1924]	@ pPacket_54(D)->StreamPack[0].LenInByte, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].PacketTail
	ldr	r3, [r5, #8]	@ pPacket_54(D)->StreamPack[0].PhyAddr, pPacket_54(D)->StreamPack[0].PhyAddr
	str	r3, [r4, #1908]	@ pPacket_54(D)->StreamPack[0].PhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	ldr	r3, [r5]	@ D.38633, pPacket_54(D)->StreamPack[0].VirAddr
	str	r3, [r7, #3168]	@ D.38633, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	ldr	r2, [r5, #12]	@ D.38631, pPacket_54(D)->StreamPack[0].LenInByte
	str	r2, [r4, #1912]	@ D.38631, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[0].IsLastSeg, pPacket_54(D)->StreamPack[0].IsLastSeg
	strb	r3, [r7, #3172]	@ pPacket_54(D)->StreamPack[0].IsLastSeg, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[0].IsLastSeg, pPacket_54(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_54(D)->StreamPack[0].IsLastSeg,
	beq	.L240	@,
	ldr	r3, [r5, #88]	@ pPacket_54(D)->StreamPack[1].PhyAddr, pPacket_54(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1916]	@ pPacket_54(D)->StreamPack[1].PhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr1
	ldr	r3, [r5, #80]	@ D.38633, pPacket_54(D)->StreamPack[1].VirAddr
	str	r3, [r7, #3176]	@ D.38633, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr1
	ldr	r3, [r5, #92]	@ pPacket_54(D)->StreamPack[1].LenInByte, pPacket_54(D)->StreamPack[1].LenInByte
	str	r3, [r4, #1920]	@ pPacket_54(D)->StreamPack[1].LenInByte, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[1].IsLastSeg, pPacket_54(D)->StreamPack[1].IsLastSeg
	strb	r3, [r7, #3173]	@ pPacket_54(D)->StreamPack[1].IsLastSeg, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_54(D)->StreamPack[1].IsLastSeg, pPacket_54(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_54(D)->StreamPack[1].IsLastSeg,
	bne	.L377	@,
.L241:
	movw	r3, #65525	@ tmp572,
	sub	r1, r2, #10	@ D.38636, D.38631,
	movt	r3, 47	@ tmp572,
	cmp	r1, r3	@ D.38636, tmp572
	bhi	.L256	@,
	ldr	r1, [r7, #3168]	@ D.38633, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	cmp	r1, #0	@ D.38633,
	beq	.L256	@,
	add	r5, r8, #38912	@ pBs, pCtx,
	add	r5, r5, #8	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r6, r0	@ D.38632,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r6, #255	@ D.38632,
	add	r0, r6, #1	@ D.38632, D.38632,
	str	r0, [r4, #876]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	bhi	.L256	@,
	cmp	r0, #0	@ D.38632,
	beq	.L244	@,
	add	r9, r8, #37632	@ ivtmp.189, pCtx,
	movw	r10, #65535	@ tmp1289,
	add	r9, r9, #108	@ ivtmp.189, ivtmp.189,
	movt	r10, 47	@ tmp1289,
	mov	r6, #0	@ i,
	b	.L245	@
.L378:
	ldr	r0, [r4, #876]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	cmp	r0, r6	@ D.38632, i
	bls	.L244	@,
.L245:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r6, r6, #1	@ i, i,
	bl	BsShow	@
	mov	r1, #32	@,
	mov	fp, r0	@ D.38632,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r3, fp	@ D.38631, D.38632
	cmp	r3, r10	@ D.38631, tmp1289
	str	r3, [r9, #4]!	@ D.38631, MEM[base: _650, offset: 0B]
	ble	.L378	@,
.L256:
	mov	r6, #0	@ D.38628,
.L362:
	mov	r0, r6	@, D.38628
	add	sp, sp, #196	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L377:
	ldr	r1, [r5, #16]	@, pPacket_54(D)->StreamPack[0].StreamID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r5, #96]	@, pPacket_54(D)->StreamPack[1].StreamID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r6	@, D.38628
	add	sp, sp, #196	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L240:
	str	r6, [r4, #1916]	@ tmp507, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr1
	str	r6, [r7, #3176]	@ tmp507, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr1
	str	r6, [r4, #1920]	@ tmp507, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength1
	strb	r6, [r7, #3173]	@ tmp507, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].IsLastSeg1
	b	.L241	@
.L248:
	bl	vfmw_dprint_nothing	@
	mov	r6, #0	@ D.38628,
	mov	r0, r6	@, D.38628
	add	sp, sp, #196	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L244:
	add	r3, r8, #37632	@ ivtmp.171, pCtx,
	sub	lr, r0, #1	@ D.38631, D.38632,
	add	r3, r3, #112	@ ivtmp.171, ivtmp.171,
	mov	r2, #0	@ i,
	b	.L246	@
.L247:
	ldr	ip, [r3, #4]!	@ MEM[base: _633, offset: 0B], MEM[base: _633, offset: 0B]
	ldr	r1, [r3, #-4]	@ MEM[base: _633, offset: 4294967292B], MEM[base: _633, offset: 4294967292B]
	cmp	ip, r1	@ MEM[base: _633, offset: 0B], MEM[base: _633, offset: 4294967292B]
	ble	.L256	@,
.L246:
	cmp	r2, lr	@ i, D.38631
	add	r2, r2, #1	@ i, i,
	bne	.L247	@,
	mov	r0, r0, asl #3	@ D.38632, D.38632,
	ldr	r10, [r4, #880]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	add	r2, r0, #1	@ PrevHeaderBytes, D.38632,
	movw	r3, #65534	@ tmp598,
	cmp	r2, #3145728	@ PrevHeaderBytes,
	add	r10, r2, r10	@ D.38636, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	sub	r1, r10, #1	@ D.38636, D.38636,
	str	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	movt	r3, 47	@ tmp598,
	movlt	r2, #0	@ tmp600,
	movge	r2, #1	@ tmp600,
	cmp	r1, r3	@ D.38636, tmp598
	movls	r3, r2	@, tmp604, tmp600
	orrhi	r3, r2, #1	@,, tmp604, tmp600
	cmp	r3, #0	@ tmp604,
	bne	.L256	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	r2, r10, r2	@ D.38632, D.38636, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38632,
	ble	.L256	@,
	ldr	r1, [r7, #3168]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, r10	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, D.38636
	bl	BsInit	@
	mov	r0, r5	@, pBs
	add	r1, sp, #64	@ tmp1327,,
	bl	Real9_CB_GetPictureHeader	@
	cmp	r0, #1	@ D.38628,
	mov	r6, r0	@ D.38628,
	bne	.L248	@,
	ldrb	r3, [r7, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated,
	beq	.L249	@,
	ldr	r2, [sp, #88]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	beq	.L379	@,
.L249:
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	fp, [r3, #692]	@ _148->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _148->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ _148->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L380	@,
.L251:
	ldr	r3, .L392	@ tmp679,
	ldr	r3, [r3]	@ D.38642, g_event_report
	cmp	r3, #0	@ D.38642,
	beq	.L260	@,
	ldr	r0, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	add	r2, sp, #56	@,,
	ldr	lr, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	mov	r1, #2	@,
	ldr	ip, [sp, #88]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	r0, [sp, #56]	@ movhi	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, para
	ldr	r0, [sp, #84]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	strh	lr, [sp, #58]	@ movhi	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, para
	strh	ip, [sp, #60]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	strh	r0, [sp, #62]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	blx	r3	@ D.38642
.L260:
	mov	r2, #1	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	add	fp, r8, #38912	@ D.38644, pCtx,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	r3, #0	@ tmp712,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	add	fp, fp, #40	@ D.38644, D.38644,
	str	r3, [sp, #20]	@ tmp712, %sfp
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	ldr	r3, [sp, #20]	@ tmp712, %sfp
	str	r3, [r4, #2040]	@ tmp712, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	str	r3, [r4, #2044]	@ tmp712, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	bl	FSP_GetNullLogicFs	@
	mov	r1, fp	@, D.38644
	ldr	r3, [sp, #20]	@ tmp712, %sfp
	str	r0, [r4, #2044]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	str	r0, [r4, #2040]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	strb	r3, [r7, #3181]	@ tmp712, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #88]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L248	@,
	ldr	r3, [sp, #84]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L248	@,
	ldr	r3, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _226->stChanOption.s32ReRangeEn, _226->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _226->stChanOption.s32ReRangeEn,
	bne	.L261	@,
	ldr	r3, [r3, #32]	@ _226->eCapLevel, _226->eCapLevel
	cmp	r3, #25	@ _226->eCapLevel,
	beq	.L381	@,
.L261:
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L263	@,
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _234->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _234->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _234->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L265	@,
	ldr	r3, [r4, #2444]	@ pCtx_38(D)->DSDNeedClearQue, pCtx_38(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_38(D)->DSDNeedClearQue,
	beq	.L265	@,
.L263:
	bl	vfmw_dprint_nothing	@
	mov	r1, r8	@, pCtx
	mov	r0, #6	@,
	add	r2, sp, #64	@ tmp1328,,
	bl	Real9_ArrangeVHBMem	@
	cmp	r0, #0	@,
	beq	.L248	@,
.L250:
	add	r3, r8, #37376	@ pPictureHeader, pCtx,
	add	r1, sp, #64	@ tmp1330,,
	add	r3, r3, #184	@ pPictureHeader, pPictureHeader,
	mov	r2, #128	@,
	str	r3, [sp, #28]	@ pPictureHeader, %sfp
	mov	r0, r3	@, pPictureHeader
	bl	memcpy	@
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	mov	r0, r8	@, pCtx
	ldr	r3, [r3, #8]	@ _244->s32DecMode, _244->s32DecMode
	strb	r3, [r7, #3180]	@ _244->s32DecMode, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].UsedDecMode
	bl	Real9_GetImageBuffer	@
	cmp	r0, #0	@,
	beq	.L248	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L266	@,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldrd	r0, [r2, #56]	@ tmp1333, pCtx_38(D)->pstExtraData,
	strd	r0, [r3, #8]	@ tmp1333, pImg,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldrd	r0, [r2, #72]	@ tmp1334, pCtx_38(D)->pstExtraData,
	strd	r0, [r3, #16]	@ tmp1334, pImg,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldrd	r0, [r2, #88]	@ tmp1335, pCtx_38(D)->pstExtraData,
	strd	r0, [r3, #24]	@ tmp1335, pImg,
	mvn	r0, #0	@ tmp1401,
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	mvn	r1, #0	@,
	ldr	r2, [r2, #104]	@ D.38631, _267->DispEnableFlag
	str	r2, [r3, #68]	@ D.38631, pImg_254->DispEnableFlag
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #108]	@ D.38631, _270->DispFrameDistance
	str	r2, [r3, #72]	@ D.38631, pImg_254->DispFrameDistance
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #112]	@ D.38631, _273->DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ D.38631, pImg_254->DistanceBeforeFirstFrame
	ldr	r2, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r2, [r2, #128]	@ D.38631, _276->GopNum
	str	r2, [r3, #80]	@ D.38631, pImg_254->GopNum
	ldr	r3, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	strd	r0, [r3, #56]	@ tmp1401, D.38641,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #704]	@ D.38637, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	cmp	r3, #2	@ D.38637,
	beq	.L382	@,
	cmp	r3, #1	@ D.38637,
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	beq	.L383	@,
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	movne	r3, #2	@ D.38629,
	moveq	r3, #1	@ D.38629,
.L270:
	strb	r3, [r7, #3181]	@ D.38629, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	ldr	r2, [r4, #2040]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r3, [r4, #2044]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	cmp	r2, r3	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	beq	.L271	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetRef	@
.L271:
	ldr	r3, [r4, #2044]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	str	r3, [r4, #2040]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	str	r1, [r4, #2044]	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
.L272:
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	fp, r0	@ pCur,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	str	r0, [sp, #20]	@ pFwd, %sfp
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #20]	@ pFwd, %sfp
	cmp	fp, #0	@ pCur,
	cmpne	r3, #0	@, pFwd,
	moveq	r2, #1	@ tmp878,
	movne	r2, #0	@ tmp878,
	cmp	r0, #0	@,
	orreq	r2, r2, #1	@,, tmp884, tmp878
	cmp	r2, #0	@ tmp884,
	bne	.L248	@,
	ldr	r2, [fp, #408]	@ D.38647, pCur_309->pstDecodeFs
	cmp	r2, #0	@ D.38647,
	beq	.L273	@,
	ldr	r1, [fp, #416]	@ pCur_309->pstTfOutFs, pCur_309->pstTfOutFs
	cmp	r1, #0	@ pCur_309->pstTfOutFs,
	beq	.L273	@,
	ldr	r1, [fp, #412]	@ pCur_309->pstDispOutFs, pCur_309->pstDispOutFs
	cmp	r1, #0	@ pCur_309->pstDispOutFs,
	beq	.L273	@,
	ldr	r1, [r0, #408]	@ D.38647, pBwd_317->pstDecodeFs
	cmp	r1, #0	@ D.38647,
	ldrne	r2, [r1, #12]	@ D.38630, _324->PhyAddr
	ldreq	r2, [r2, #12]	@ D.38630, _321->PhyAddr
	str	r2, [r8, #52]	@ D.38630, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].BwdRefPhyAddr
	ldr	r2, [r3, #408]	@ D.38647, pFwd_313->pstDecodeFs
	cmp	r2, #0	@ D.38647,
	ldreq	r2, [fp, #408]	@ pCur_309->pstDecodeFs, pCur_309->pstDecodeFs
	ldr	r2, [r2, #12]	@ D.38630,
	str	r3, [sp, #24]	@ pFwd, %sfp
	str	r0, [sp, #20]	@ pBwd, %sfp
	str	r2, [r8, #56]	@ D.38630, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].FwdRefPhyAddr
	ldr	r2, [fp, #408]	@ pCur_309->pstDecodeFs, pCur_309->pstDecodeFs
	ldr	r2, [r2, #12]	@ _337->PhyAddr, _337->PhyAddr
	str	r2, [r8, #60]	@ _337->PhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].CurPicPhyAddr
	ldr	r2, [fp, #420]	@ pCur_309->PmvAddr, pCur_309->PmvAddr
	str	r2, [r8, #80]	@ pCur_309->PmvAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].CurrPmvPhyAddr
	ldr	r2, [r0, #420]	@ pBwd_317->PmvAddr, pBwd_317->PmvAddr
	str	r2, [r8, #84]	@ pBwd_317->PmvAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].ColPmvPhyAddr
	ldr	r2, [fp, #412]	@ pCur_309->pstDispOutFs, pCur_309->pstDispOutFs
	ldr	r2, [r2, #12]	@ _347->PhyAddr, _347->PhyAddr
	str	r2, [r8, #64]	@ _347->PhyAddr, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].DispFramePhyAddr
	bl	vfmw_dprint_nothing	@
	ldr	r2, [fp, #412]	@ pCur_309->pstDispOutFs, pCur_309->pstDispOutFs
	ldr	r2, [r2, #20]	@ _352->Stride, _352->Stride
	str	r2, [r8, #68]	@ _352->Stride, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].DDRStride
	ldr	r2, [fp, #412]	@ pCur_309->pstDispOutFs, pCur_309->pstDispOutFs
	ldr	r2, [r2, #20]	@ _356->Stride, _356->Stride
	str	r2, [r4, #2012]	@ _356->Stride, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].ddr_stride
	ldr	r2, [fp, #412]	@ pCur_309->pstDispOutFs, pCur_309->pstDispOutFs
	ldr	r2, [r2, #32]	@ _360->ChromOffset, _360->ChromOffset
	str	r2, [r8, #72]	@ _360->ChromOffset, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].uv_offset
	ldr	r2, [r4, #704]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	cmp	r2, #2	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType,
	ldr	r0, [sp, #20]	@ pBwd, %sfp
	ldr	r3, [sp, #24]	@ pFwd, %sfp
	beq	.L384	@,
.L279:
	ldr	r3, [r4, #732]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR
	mov	r0, r5	@, pBs
	str	r3, [fp, #428]	@ D.38631, pCur_309->TR
	ldr	r3, [r4, #704]	@ D.38637, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PicCodType
	ldr	r2, [r4, #744]	@ QP, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].PQUANT
	cmp	r3, #2	@ D.38637,
	strb	r3, [r8, #9]	@ D.38637, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].PicCodingType
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	str	r2, [sp, #20]	@ QP, %sfp
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
	mov	r3, r0, asr #31	@ tmp987, D.38632,
	mov	r2, r3, lsr #29	@ tmp988, tmp987,
	add	r3, r0, r2	@ tmp989, D.38632, tmp988
	moveq	r0, r5	@, pBs
	and	r3, r3, #7	@ tmp990, tmp989,
	movne	r0, r5	@, pBs
	rsb	r3, r2, r3	@ D.38632, tmp988, tmp990
	ldreq	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	str	r3, [r4, #844]	@ D.38632, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	ldreq	r3, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	ldrne	r3, [r4, #884]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	rsbeq	r3, r2, r3	@ D.38632, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	fp, fp, r3	@ D.38632, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	bl	BsPos	@
	ldr	r3, [r4, #1908]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	mov	fp, fp, asl #3	@ D.38632, D.38632,
	add	r10, r10, r3	@ D.38631, D.38636, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	rsb	r0, r0, fp	@ D.38632,, D.38632
	str	r0, [r4, #848]	@ D.38632, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #748]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].OSVQUANT
	ldr	ip, [r4, #740]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Deblocking_Filter_Passthrough
	mov	r1, #1	@ tmp1069,
	str	r2, [r4, #828]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].osvquant
	str	ip, [r4, #832]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].dblk_filter_passthrough
	add	r3, r0, #7	@ tmp1033, D.38632,
	cmp	r0, #0	@ D.38632,
	ldr	lr, [sp, #20]	@ QP, %sfp
	movlt	r0, r3	@ D.38632, tmp1033
	mov	r3, #0	@ tmp1039,
	add	r0, r10, r0, asr #3	@ D.38631, D.38631, D.38632,
	str	r3, [r4, #856]	@ tmp1039, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_1
	str	r0, [r4, #852]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_0
	str	lr, [r4, #824]	@ QP, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].SliceQP
	str	r3, [r4, #860]	@ tmp1039, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_1
	str	r3, [r4, #864]	@ tmp1039, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_1
	str	r3, [r4, #836]	@ tmp1039, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].first_mb_in_slice
	str	r0, [r8, #88]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamPhyAddr
	ldr	r0, [r4, #844]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	str	r0, [r8, #96]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamBitOffset
	ldr	r0, [r4, #848]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	str	ip, [r8, #112]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].dblk_filter_passthrough
	str	r3, [r8, #92]	@ tmp1039, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamPhyAddr
	str	r0, [r8, #104]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamLength
	str	r3, [r8, #100]	@ tmp1039, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamBitOffset
	str	r3, [r8, #108]	@ tmp1039, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].StreamLength
	str	r2, [r8, #116]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].osvquant
	str	r3, [r8, #124]	@ tmp1039, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].first_mb_in_slice
	str	lr, [r8, #120]	@ QP, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[0].sliceqp
	str	r1, [r8, #40]	@ tmp1069, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].TotalSliceNum
	ldr	r2, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	cmp	r2, r1	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	bls	.L303	@,
	ldr	fp, [r4, #884]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	movw	r0, #65535	@ tmp1081,
	ldr	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	movt	r0, 47	@ tmp1081,
	add	fp, r2, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	cmp	fp, r0	@ PrevOffsetBytes, tmp1081
	bgt	.L374	@,
	cmp	fp, #0	@ PrevOffsetBytes,
	ble	.L374	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.38632, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38632,
	ble	.L374	@,
	add	ip, r8, #37632	@ ivtmp.159, pCtx,
	mov	r10, r1	@ i, tmp1069
	add	r1, ip, #116	@ ivtmp.159, ivtmp.159,
	str	r6, [sp, #40]	@ D.38628, %sfp
	str	r3, [sp, #36]	@ tmp1039, %sfp
	str	r0, [sp, #32]	@ tmp1081, %sfp
	mov	r9, r1	@ ivtmp.159, ivtmp.159
	str	r10, [sp, #24]	@ i, %sfp
	ldr	r6, [sp, #16]	@ PrevHeaderBytes, %sfp
	b	.L295	@
.L296:
	ldr	r3, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	add	r10, r10, #1	@ i, i,
	cmp	r3, r10	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, i
	bls	.L385	@,
	ldr	fp, [r9, #4]!	@ MEM[base: _120, offset: 0B], MEM[base: _120, offset: 0B]
	ldr	r3, [sp, #32]	@ tmp1287, %sfp
	add	fp, r6, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[base: _120, offset: 0B]
	cmp	fp, r3	@ PrevOffsetBytes, tmp1287
	bgt	.L374	@,
	cmp	fp, #0	@ PrevOffsetBytes,
	ble	.L374	@,
	ldr	r2, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.38632, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38632,
	ble	.L374	@,
.L295:
	ldr	r1, [r7, #3168]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, fp	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsVirAddr, PrevOffsetBytes
	bl	BsInit	@
	mov	r1, #0	@,
	mov	r0, r5	@, pBs
	ldr	ip, [sp, #28]	@ pPictureHeader, %sfp
	add	r3, sp, #52	@ tmp1347,,
	add	r2, sp, #48	@ tmp1348,,
	str	ip, [sp, #4]	@ pPictureHeader,
	add	ip, sp, #56	@ tmp1350,,
	str	ip, [sp]	@ tmp1350,
	bl	Real9_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L296	@,
	ldr	r3, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	ldr	r2, [sp, #48]	@ mbn, iSliceMBA
	cmp	r3, #0	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb,
	str	r2, [sp, #16]	@ mbn, %sfp
	beq	.L386	@,
	ldr	r3, [sp, #56]	@ D.38632, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r2, [sp, #20]	@ QP, %sfp
	cmp	r3, #0	@ D.38632,
	movge	r2, r3	@ QP, D.38632
	str	r2, [sp, #20]	@ QP, %sfp
	bl	BsPos	@
	ldr	r2, [r4, #876]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum
	sub	lr, r2, #1	@ D.38631, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	cmp	lr, r10	@ D.38631, i
	mov	r3, r0, asr #31	@ tmp1125, D.38632,
	mov	r1, r3, lsr #29	@ tmp1126, tmp1125,
	add	r3, r0, r1	@ tmp1127, D.38632, tmp1126
	and	r3, r3, #7	@ tmp1128, tmp1127,
	rsb	r3, r1, r3	@ D.38632, tmp1126, tmp1128
	str	r3, [r4, #844]	@ D.38632, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	beq	.L387	@,
	cmp	r10, #254	@ i,
	bhi	.L248	@,
	ldr	r3, [r9, #4]	@ MEM[base: _107, offset: 4B], MEM[base: _107, offset: 4B]
	mov	r0, r5	@, pBs
	ldr	r2, [r9]	@ MEM[base: _107, offset: 0B], MEM[base: _107, offset: 0B]
.L373:
	rsb	r3, r2, r3	@ D.38632, MEM[base: _107, offset: 0B], MEM[base: _107, offset: 4B]
	mov	r3, r3, asl #3	@ D.38632, D.38632,
	str	r3, [sp, #44]	@ D.38632, %sfp
	bl	BsPos	@
	ldr	r3, [sp, #44]	@ D.38632, %sfp
	rsb	r0, r0, r3	@ D.38632,, D.38632
	ldr	r3, [r4, #1908]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	str	r0, [r4, #848]	@ D.38632, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	mov	r0, r5	@, pBs
	add	fp, fp, r3	@ D.38631, PrevOffsetBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsPhyAddr
	bl	BsPos	@
	mov	r1, #44	@ tmp1354,
	ldr	lr, [r4, #740]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].Deblocking_Filter_Passthrough
	str	lr, [r4, #832]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].dblk_filter_passthrough
	add	r2, r0, #7	@ tmp1165, D.38632,
	cmp	r0, #0	@ D.38632,
	ldr	r3, [sp, #24]	@ HoldSliceNum, %sfp
	movlt	r0, r2	@ D.38632, tmp1165
	ldr	ip, [sp, #36]	@ tmp1285, %sfp
	add	fp, fp, r0, asr #3	@ D.38631, D.38631, D.38632,
	ldr	r0, [sp, #20]	@ QP, %sfp
	mla	r3, r1, r3, r8	@ tmp1192, tmp1354, HoldSliceNum, pCtx
	ldr	r1, [r4, #748]	@ D.38631, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].OSVQUANT
	str	r0, [r4, #824]	@ QP, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].SliceQP
	ldr	r0, [sp, #16]	@ mbn, %sfp
	str	ip, [r4, #856]	@ tmp1285, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_1
	str	ip, [r4, #860]	@ tmp1285, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_1
	str	r0, [r4, #836]	@ mbn, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].first_mb_in_slice
	str	ip, [r4, #864]	@ tmp1285, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_1
	str	fp, [r4, #852]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_stream_addr_0
	str	r1, [r4, #828]	@ D.38631, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].osvquant
	str	fp, [r3, #88]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamPhyAddr
	ldr	r0, [r4, #844]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0
	ldr	r2, [sp, #24]	@ HoldSliceNum, %sfp
	str	r0, [r3, #96]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_offset_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamBitOffset
	add	r2, r2, #1	@ D.38632, HoldSliceNum,
	ldr	r0, [r4, #848]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0
	cmp	r2, #131	@ HoldSliceNum,
	str	ip, [r3, #92]	@ tmp1285, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamPhyAddr
	str	ip, [r3, #100]	@ tmp1285, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamBitOffset
	str	r0, [r3, #104]	@ MEM[(struct RV9_SliceHeader *)pCtx_38(D) + 37688B].bit_len_0, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamLength
	ldr	r0, [sp, #20]	@ QP, %sfp
	str	ip, [r3, #108]	@ tmp1285, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].StreamLength
	str	lr, [r3, #112]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].dblk_filter_passthrough
	str	r0, [r3, #120]	@ QP, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].sliceqp
	ldr	r0, [sp, #16]	@ mbn, %sfp
	str	r1, [r3, #116]	@ D.38631, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].osvquant
	str	r2, [sp, #24]	@ D.38632, %sfp
	str	r0, [r3, #124]	@ mbn, MEM[(struct RV9_SLC_PARAM_S *)pCtx_38(D) + 8B].SliceParam[_502].first_mb_in_slice
	str	r2, [r8, #40]	@ D.38632, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].TotalSliceNum
	bls	.L296	@,
	mov	r0, r8	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L374	@,
	ldr	r3, [sp, #12]	@ __p, %sfp
	str	r3, [r8, #4]	@ __p, pCtx_38(D)->pRv9DecParam
	b	.L296	@
.L380:
	ldr	r1, [r4, #2040]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].FwdFsID
	mov	r0, r8	@, pCtx
	mov	r3, #0	@ tmp630,
	str	r3, [sp, #48]	@ tmp630, NewNum
	str	r3, [sp, #52]	@ tmp630, ReadNum
	str	r3, [sp, #56]	@ tmp630, RefNum
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L256	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	mov	r0, r8	@, pCtx
	bl	Real9_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L256	@,
	ldr	r1, [r4, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	add	r3, sp, #48	@,,
	strne	fp, [r0, #376]	@ _148->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_162->u32IsLastFrame
	add	r2, sp, #52	@,,
	add	r1, sp, #56	@,,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	ldr	r1, [r4, #720]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _168->s32DSDThrWidth, _168->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _168->s32DSDThrWidth, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb,
	bcc	.L254	@,
	ldr	r1, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _168->s32DSDThrHeight, _168->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _168->s32DSDThrHeight, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb,
	bcc	.L254	@,
	ldr	r2, [sp, #52]	@ ReadNum, ReadNum
	ldr	r1, [sp, #48]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.38632, ReadNum, NewNum
	cmp	r2, #0	@ D.38632,
	mov	r2, #1	@ tmp668,
	ble	.L369	@,
.L370:
	str	r2, [r3, #728]	@ tmp674, _168->s32DSDWaitFlag
	b	.L256	@
.L379:
	ldr	r2, [sp, #84]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	ldr	r3, [r4, #716]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	cmp	r2, r3	@ TmpPictureHeader.pic_height_in_mb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_height_in_mb
	bne	.L249	@,
	ldr	r3, [r8]	@ pCtx_38(D)->pstExtraData, pCtx_38(D)->pstExtraData
	ldr	r3, [r3, #728]	@ _146->s32DSDWaitFlag, _146->s32DSDWaitFlag
	cmp	r3, #1	@ _146->s32DSDWaitFlag,
	bne	.L250	@,
	b	.L249	@
.L381:
	ldrb	r3, [r7, #3184]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Imgbuf_allocated,
	bne	.L263	@,
.L265:
	mov	r0, fp	@, D.38644
	bl	ResetVoQueue	@
	b	.L263	@
.L382:
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	bhi	.L272	@,
.L374:
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, #0	@ D.38628,
	bl	FSP_ClearLogicFs	@
	b	.L362	@
.L254:
	ldr	r2, [sp, #48]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L388	@,
.L258:
	mov	r2, #1	@ tmp674,
	b	.L370	@
.L387:
	add	r2, r2, #6592	@ tmp1144, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].TotalSliceNum,
	ldr	r3, [r4, #1912]	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	add	r2, r2, #3	@ tmp1144, tmp1144,
	mov	r0, r5	@, pBs
	rsb	r3, r6, r3	@ D.38632, PrevHeaderBytes, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].BsLength
	add	r2, r7, r2, lsl #2	@ tmp1145, tmp1280, tmp1144,
	ldr	r2, [r2, #3168]	@ tmp1148, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].SliceByteOffset
	b	.L373	@
.L383:
	cmp	r3, #0	@ MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].RefNum,
	movne	r3, #2	@ D.38629,
	bne	.L270	@,
	b	.L256	@
.L266:
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r3	@ D.38628, pImg
	bl	FSP_ClearLogicFs	@
	b	.L362	@
.L385:
	ldr	r6, [sp, #40]	@ D.38628, %sfp
.L303:
	ldr	r5, [r8, #4]	@ D.38649, pCtx_38(D)->pRv9DecParam
	mov	r10, #1	@ tmp1075,
	str	r10, [r8, #44]	@ tmp1075, MEM[(struct RV9_DEC_PARAM_S *)pCtx_38(D) + 8B].FstSlcGrp
	cmp	r5, #0	@ D.38649,
	beq	.L389	@,
	ldr	r3, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	ldr	r2, [r3, #708]	@ D.38632, _640->stDisParams.s32Mode
	cmp	r2, #1	@ D.38632,
	beq	.L307	@,
.L305:
	cmp	r2, #2	@ D.38632,
	beq	.L390	@,
.L306:
	ldr	r3, [r3, #512]	@ D.38632, _663->s32Compress_en
	str	r3, [r7, #3160]	@ D.38632, pCtx_38(D)->Rv9DecParam.Compress_en
	b	.L362	@
.L384:
	ldr	r3, [r3, #428]	@ D.38632, pFwd_313->TR
	ldr	r2, [r4, #732]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR
	ldr	r1, [r0, #428]	@ pBwd_317->TR, pBwd_317->TR
	subs	r2, r2, r3	@ trb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].TR, D.38632
	rsb	r3, r3, r1	@ trd, D.38632, pBwd_317->TR
	ldrmi	r1, [r4, #728]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	addmi	r2, r2, r1	@ trb, trb, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	cmp	r3, #0	@ trd,
	ldrlt	r1, [r4, #728]	@ MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	addlt	r3, r3, r1	@ trd, trd, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	ble	.L309	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r3, [sp, #24]	@ trd, %sfp
	str	r2, [sp, #20]	@ trb, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #24]	@ trd, %sfp
	ldr	r2, [sp, #20]	@ trb, %sfp
	str	r0, [sp, #32]	@ Ratio1, %sfp
	rsb	r0, r2, r3	@ D.38632, trb, trd
	mov	r1, r3	@, trd
	str	r2, [sp, #24]	@ trb, %sfp
	mov	r0, r0, asl #14	@, D.38632,
	str	r3, [sp, #20]	@ trd, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #20]	@ trd, %sfp
	ldr	r2, [sp, #24]	@ trb, %sfp
	ldr	ip, [sp, #32]	@ Ratio1, %sfp
.L283:
	str	r2, [r4, #1956]	@ trb, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].trb
	str	r3, [r4, #1960]	@ trd, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].trd
	str	ip, [r4, #1964]	@ Ratio1, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio0
	str	r0, [r4, #1968]	@ Ratio1, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].Ratio1
	b	.L279	@
.L273:
	mov	r2, #1	@,
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, #0	@ D.38628,
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	b	.L362	@
.L388:
	ldr	r2, [sp, #52]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L258	@,
	mov	r2, #0	@ tmp677,
.L369:
	str	r2, [r4, #2444]	@ tmp677, pCtx_38(D)->DSDNeedClearQue
	mov	r2, #0	@ tmp678,
	str	r2, [r3, #728]	@ tmp678, _168->s32DSDWaitFlag
	b	.L251	@
.L386:
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r3	@ D.38628, MEM[(struct RV9_PictureHeader *)pCtx_38(D) + 37560B].pic_width_in_mb
	bl	FSP_ClearLogicFs	@
	b	.L362	@
.L389:
	mov	r0, r8	@, pCtx
	bl	Real9_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L391	@,
	ldr	r2, [sp, #12]	@ __p, %sfp
	ldr	r3, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	str	r2, [r8, #4]	@ __p, pCtx_38(D)->pRv9DecParam
	ldr	r2, [r3, #708]	@ D.38632, _529->stDisParams.s32Mode
	cmp	r2, #1	@ D.38632,
	bne	.L305	@,
	ldr	r2, [sp, #12]	@ __p, %sfp
	cmp	r2, #0	@ __p,
	beq	.L306	@,
	mov	r5, r2	@ D.38649, __p
.L307:
	ldrb	r2, [r5, #1]	@ zero_extendqisi2	@ _665->PicCodingType, _665->PicCodingType
	cmp	r2, #2	@ _665->PicCodingType,
	bne	.L306	@,
	mov	r2, #0	@ tmp1258,
	str	r2, [r8, #4]	@ tmp1258, pCtx_38(D)->pRv9DecParam
	ldr	r1, [r4, #2048]	@, pCtx_38(D)->CodecInfo.CurFsID
	mov	r6, r2	@ D.38628,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r8	@, pCtx
	mov	r0, #9	@,
	bl	ReleasePacket	@
	b	.L362	@
.L390:
	ldr	r2, [r3, #712]	@ _662->stDisParams.s32DisNums, _662->stDisParams.s32DisNums
	cmp	r2, #0	@ _662->stDisParams.s32DisNums,
	ble	.L306	@,
	ldr	r2, [r8, #4]	@ D.38649, pCtx_38(D)->pRv9DecParam
	cmp	r2, #0	@ D.38649,
	beq	.L306	@,
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ _539->PicCodingType, _539->PicCodingType
	cmp	r2, #2	@ _539->PicCodingType,
	bne	.L306	@,
	mov	r2, #0	@ tmp1265,
	str	r2, [r8, #4]	@ tmp1265, pCtx_38(D)->pRv9DecParam
	ldr	r1, [r4, #2048]	@, pCtx_38(D)->CodecInfo.CurFsID
	mov	r6, r2	@ D.38628,
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r2, [r8]	@ D.38641, pCtx_38(D)->pstExtraData
	mov	r1, r8	@, pCtx
	mov	r0, #9	@,
	ldr	r3, [r2, #712]	@ _545->stDisParams.s32DisNums, _545->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.38632, _545->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.38632, _545->stDisParams.s32DisNums
	bl	ReleasePacket	@
	b	.L362	@
.L309:
	mov	r0, #0	@ Ratio1,
	mov	ip, r0	@ Ratio1, Ratio1
	b	.L283	@
.L391:
	mov	r2, r10	@, tmp1075
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_38(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_38(D)->ChanID
	mov	r6, r5	@ D.38628, D.38649
	bl	FSP_ClearLogicFs	@
	b	.L362	@
.L393:
	.align	2
.L392:
	.word	g_event_report
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
	addeq	r5, r0, #38912	@ D.38664, pCtx,
	addeq	r5, r5, #40	@ D.38664, D.38664,
	beq	.L401	@,
	add	r6, r0, #36864	@ tmp137, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L412	@,
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L410	@,
.L412:
	add	r5, r4, #38912	@ D.38664, pCtx,
	add	r5, r5, #40	@ D.38664, D.38664,
.L401:
	mov	r0, r5	@, D.38664
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L410:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ D.38664, pCtx,
	bl	Real9_SetImgFormat	@
	mov	r3, #1	@ tmp150,
	mov	r2, r3	@, tmp150
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	add	r5, r5, #40	@ D.38664, D.38664,
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2440]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.38664
	mov	r1, #9	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L398	@,
	mov	r2, #0	@,
	ldr	r1, [r6, #2044]	@, MEM[(struct RV9_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2440]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L401	@
.L398:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L401	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L401	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L401	@,
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
	mov	r5, r0	@ pCtx, pCtx
	add	r4, r0, #36864	@ tmp224, pCtx,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r8, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r6, r1	@ ErrRatio, ErrRatio
	bl	vfmw_dprint_nothing	@
	mov	r1, r5	@, pCtx
	mov	r0, #9	@,
	add	r7, r5, #8192	@ tmp225, pCtx,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2048]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L414	@,
	ldr	r3, [r4, #704]	@ D.38672, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ D.38672,
	andne	r8, r8, #31	@ D.38674, Mb0QpInCurrPic,
	strb	r3, [r7, #3182]	@ D.38672, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].LastDecPicCodingType
	strne	r8, [r4, #872]	@ D.38674, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PrevPicMb0QP
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.38670,
	blt	.L416	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.38670,
.L416:
	str	r6, [r0, #180]	@ D.38670, pCurImg_15->error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	Real9_SetImgFormat	@
	ldrb	r3, [r7, #3180]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode,
	beq	.L419	@,
	ldr	r3, [r5]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _33->s32DecOrderOutput, _33->s32DecOrderOutput
	cmp	r3, #1	@ _33->s32DecOrderOutput,
	beq	.L419	@,
	ldr	r3, [r4, #704]	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType,
	beq	.L419	@,
	ldrb	r3, [r7, #3181]	@ zero_extendqisi2	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].RefNum,
	ldrhi	r1, [r4, #2040]	@ D.38671, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FwdFsID
	mvnls	r1, #0	@ D.38671,
	cmn	r1, #1	@ D.38671,
	str	r1, [r4, #2052]	@ D.38671, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	beq	.L421	@,
.L442:
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pToQueImg,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #40	@,,
	mov	r1, #9	@,
	str	r6, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L441	@,
.L421:
	ldr	r3, [r4, #1940]	@ MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
	mov	r0, #1	@ D.38670,
	add	r3, r3, r0	@ D.38674, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt,
	str	r3, [r4, #1940]	@ D.38674, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
.L414:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L419:
	ldr	r1, [r4, #2048]	@ D.38671, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	cmn	r1, #1	@ D.38671,
	str	r1, [r4, #2052]	@ D.38671, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bne	.L442	@,
	b	.L421	@
.L441:
	ldr	r0, [r4, #2440]	@, pCtx_8(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV9_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.38670,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
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
	cmp	r0, #1	@ D.38679,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L450	@,
	mov	r0, #0	@ D.38679,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L450:
	add	r1, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2440]	@, pCtx_3(D)->ChanID
	add	r1, r1, #40	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38679,
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
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
