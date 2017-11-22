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
	.file	"real8.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(real8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.o
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
	.global	Real8_CB_GetBits
	.type	Real8_CB_GetBits, %function
Real8_CB_GetBits:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pBs, pBs
	mov	r6, r1	@ nBits, nBits
	bl	BsShow	@
	mov	r1, r6	@, nBits
	mov	r4, r0	@ D.38441,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.38441
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real8_CB_GetBits, .-Real8_CB_GetBits
	.align	2
	.global	Real8_CB_Get1Bit
	.type	Real8_CB_Get1Bit, %function
Real8_CB_Get1Bit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r1, #1	@,
	mov	r5, r0	@ pBs, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r4, r0	@ D.38444,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.38444
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real8_CB_Get1Bit, .-Real8_CB_Get1Bit
	.align	2
	.global	Real8_CB_GetVLCBits
	.type	Real8_CB_GetVLCBits, %function
Real8_CB_GetVLCBits:
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
	ldrb	r3, [r7, r0]	@ zero_extendqisi2	@ D.38448, gs_VLCDecodeTable
	mov	r0, r6	@, pBs
	and	r2, r3, #15	@ D.38449, D.38448,
	mov	r1, r3, lsr #4	@ thisChunksLength, D.38448,
	mov	r3, r3, lsr #5	@ D.38449, D.38448,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@ info, D.38449, info,
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
	.size	Real8_CB_GetVLCBits, .-Real8_CB_GetVLCBits
	.align	2
	.global	Real8_GetImageBuffer
	.type	Real8_GetImageBuffer, %function
Real8_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #36864	@ tmp129, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	add	r7, r0, #8192	@ tmp132, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.38459,
	str	r0, [r4, #2060]	@ D.38459, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	blt	.L21	@,
	mov	r1, r0	@, D.38459
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
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
	mov	r0, #1	@ D.38458,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L19:
	mov	r0, #1	@ D.38458,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L21:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	mov	r5, #0	@ tmp155,
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2052]	@ tmp155, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	str	r5, [r4, #2056]	@ tmp155, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #38912	@, pCtx,
	add	r1, r1, #56	@,,
	str	r0, [r4, #2056]	@ D.38459, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	str	r0, [r4, #2052]	@ D.38459, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	strb	r5, [r7, #3183]	@ tmp155, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].RefNum
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.38458, tmp155
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L22:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.38458, pLf
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real8_GetImageBuffer, .-Real8_GetImageBuffer
	.align	2
	.global	Real8_ArrangeVHBMem
	.type	Real8_ArrangeVHBMem, %function
Real8_ArrangeVHBMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r3, [r2, #96]	@ pPictureHeader_14(D)->pic_width_in_mb, pPictureHeader_14(D)->pic_width_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_width_in_mb,
	bls	.L24	@,
	ldr	r3, [r2, #92]	@ pPictureHeader_14(D)->pic_height_in_mb, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r3, #1	@ pPictureHeader_14(D)->pic_height_in_mb,
	bls	.L24	@,
	ldr	r3, [r1]	@ D.38467, pCtx_12(D)->pstExtraData
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r3, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r1, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r1, [r3, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L27	@,
	cmp	r1, #25	@ _17->eCapLevel,
	beq	.L46	@,
.L28:
	ldr	r6, [r2, #88]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pixel
	mov	r7, #5	@ D.38471,
	ldr	r9, [r2, #84]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pixel
	mov	r5, #2	@ PmvNum,
	mov	r8, #4	@ DecFsNum,
.L30:
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp204,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.38467, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp177,
	ldr	r1, [r3, #32]	@ _53->eCapLevel, _53->eCapLevel
	ldr	r3, [r3, #20]	@ _53->s32DnrDispOutEnable, _53->s32DnrDispOutEnable
	cmp	r1, #24	@ _53->eCapLevel,
	str	r6, [sp, #16]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r9, [sp, #20]	@ PicHeight, FspInstCfg.s32DecFsHeight
	strb	r2, [sp, #6]	@ tmp177, FspInstCfg.s32RprEnable
	strb	r3, [sp, #4]	@ _53->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L33	@,
	uxtb	r3, r5	@ D.38465, PmvNum
	strb	r8, [sp, #9]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r7, [sp, #11]	@ D.38471, FspInstCfg.s32ExpectedDispFsNum
.L35:
	add	r6, r4, #36864	@ tmp187, pCtx,
	add	r1, sp, #4	@ tmp205,,
	strb	r3, [sp, #12]	@ D.38465, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp183,
	ldr	r0, [r6, #2456]	@, pCtx_12(D)->ChanID
	strb	r5, [sp, #8]	@ tmp183, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.38468,
	beq	.L47	@,
.L42:
	mov	r0, #0	@ D.38464,
.L40:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L27:
	cmp	r1, #25	@ _17->eCapLevel,
	bne	.L28	@,
	ldr	r6, [r2, #88]	@ D.38466, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r1, [r3, #568]	@ _17->stChanOption.s32MaxWidth, _17->stChanOption.s32MaxWidth
	cmp	r6, r1	@ D.38466, _17->stChanOption.s32MaxWidth
	bhi	.L24	@,
	ldr	r9, [r2, #84]	@ D.38466, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r2, [r3, #572]	@ _17->stChanOption.s32MaxHeight, _17->stChanOption.s32MaxHeight
	cmp	r9, r2	@ D.38466, _17->stChanOption.s32MaxHeight
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
	ldrb	r7, [r3, #616]	@ zero_extendqisi2	@ D.38471, _17->stChanOption.s32DisplayFrameNum
	b	.L30	@
.L47:
	ldr	r1, [r4]	@ D.38467, pCtx_12(D)->pstExtraData
	mov	r3, sp	@,
	ldr	r0, [r6, #2456]	@, pCtx_12(D)->ChanID
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
	mov	r0, r3	@ D.38464, tmp197
	strb	r3, [r4, #3180]	@ tmp197, MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L33:
	strb	r2, [sp, #9]	@ tmp177, FspInstCfg.s32ExpectedDecFsNum
	mov	r3, #1	@ D.38465,
	strb	r7, [sp, #11]	@ D.38471, FspInstCfg.s32ExpectedDispFsNum
	b	.L35	@
.L46:
	ldr	r6, [r3, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	ldr	r1, [r2, #88]	@ pPictureHeader_14(D)->pic_width_in_pixel, pPictureHeader_14(D)->pic_width_in_pixel
	cmp	r1, r6	@ pPictureHeader_14(D)->pic_width_in_pixel, PicWidth
	bhi	.L24	@,
	ldr	r2, [r2, #84]	@ pPictureHeader_14(D)->pic_height_in_pixel, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r9, [r3, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r2, r9	@ pPictureHeader_14(D)->pic_height_in_pixel, PicHeight
	bhi	.L24	@,
	add	r2, r4, #8192	@ tmp165, pCtx,
	ldrb	r0, [r2, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated,
	bne	.L45	@,
	b	.L40	@
	.fnend
	.size	Real8_ArrangeVHBMem, .-Real8_ArrangeVHBMem
	.align	2
	.global	Real8_CB_GetCPFMT
	.type	Real8_CB_GetCPFMT, %function
Real8_CB_GetCPFMT:
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
	mov	r4, r0	@ D.38486,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r4, [r6]	@ D.38486, pPictureHeader_6(D)->pixel_aspect_ratio
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r4, r0	@ D.38486,
	add	r4, r4, #1	@ D.38485, D.38486,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r4, r4, asl #2	@ D.38485, D.38485,
	mov	r0, r5	@, pBs
	str	r4, [r6, #88]	@ D.38485, pPictureHeader_6(D)->pic_width_in_pixel
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.38485,
	mov	r4, r0	@ D.38485,
	beq	.L53	@,
	mov	r0, #0	@ D.38483,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L53:
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r7, r0	@ D.38486,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r7, r7, asl #2	@ D.38485, D.38486,
	mov	r0, r4	@ D.38483, D.38485
	str	r7, [r6, #84]	@ D.38485, pPictureHeader_6(D)->pic_height_in_pixel
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	Real8_CB_GetCPFMT, .-Real8_CB_GetCPFMT
	.align	2
	.global	Real8_CB_SetDimensions
	.type	Real8_CB_SetDimensions, %function
Real8_CB_SetDimensions:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #88]	@ D.38489, pPictureHeader_3(D)->pic_width_in_pixel
	ldr	r2, [r0, #84]	@ D.38489, pPictureHeader_3(D)->pic_height_in_pixel
	cmp	r3, #128	@ D.38489,
	beq	.L71	@,
	cmp	r3, #176	@ D.38489,
	beq	.L72	@,
	cmp	r3, #352	@ D.38489,
	beq	.L73	@,
	cmp	r3, #704	@ D.38489,
	beq	.L74	@,
	cmp	r3, #1408	@ D.38489,
	beq	.L75	@,
.L56:
	add	r3, r3, #15	@ D.38489, D.38489,
	add	r2, r2, #15	@ D.38489, D.38489,
	mov	r3, r3, lsr #4	@ D.38489, D.38489,
	mov	r2, r2, lsr #4	@ D.38489, D.38489,
	str	r3, [r0, #28]	@ D.38489, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	mul	r3, r3, r2	@ D.38489, D.38489, D.38489
	str	r2, [r0, #24]	@ D.38489, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
	sub	r3, r3, #1	@ D.38490, D.38489,
	cmp	r3, #47	@ D.38490,
	movls	r2, #0	@ i,
	bls	.L57	@,
	cmp	r3, #98	@ D.38490,
	bls	.L66	@,
	cmp	r3, #396	@ D.38490,
	bcc	.L67	@,
	cmp	r3, #1584	@ D.38490,
	bcc	.L68	@,
	cmp	r3, #6336	@ D.38490,
	movcs	r2, #5	@ i,
	bcc	.L70	@,
.L57:
	ldr	r3, .L76	@ tmp134,
	add	r3, r3, r2, lsl #2	@ tmp135, tmp134, i,
	ldr	r3, [r3, #256]	@ tmp137, MBA_FieldWidth
	str	r3, [r0, #32]	@ tmp137, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_mbaSize
	bx	lr	@
.L75:
	cmp	r2, #1152	@ D.38489,
	bne	.L56	@,
	mov	r2, #88	@ tmp129,
	mov	r3, #72	@ tmp130,
	str	r2, [r0, #28]	@ tmp129, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp130, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L70:
	mov	r2, #4	@ i,
	b	.L57	@
.L71:
	cmp	r2, #96	@ D.38489,
	bne	.L56	@,
	mov	r2, #8	@ tmp121,
	mov	r3, #6	@ tmp122,
	str	r2, [r0, #28]	@ tmp121, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	mov	r2, #0	@ i,
	str	r3, [r0, #24]	@ tmp122, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
	b	.L57	@
.L72:
	cmp	r2, #144	@ D.38489,
	bne	.L56	@,
	mov	r2, #11	@ tmp123,
	mov	r3, #9	@ tmp124,
	str	r2, [r0, #28]	@ tmp123, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp124, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L66:
	mov	r2, #1	@ i,
	b	.L57	@
.L73:
	cmp	r2, #288	@ D.38489,
	bne	.L56	@,
	mov	r2, #22	@ tmp125,
	mov	r3, #18	@ tmp126,
	str	r2, [r0, #28]	@ tmp125, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp126, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L67:
	mov	r2, #2	@ i,
	b	.L57	@
.L74:
	cmp	r2, #576	@ D.38489,
	bne	.L56	@,
	mov	r2, #44	@ tmp127,
	mov	r3, #36	@ tmp128,
	str	r2, [r0, #28]	@ tmp127, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp128, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L68:
	mov	r2, #3	@ i,
	b	.L57	@
.L77:
	.align	2
.L76:
	.word	.LANCHOR0
	.fnend
	.size	Real8_CB_SetDimensions, .-Real8_CB_SetDimensions
	.align	2
	.global	Real8_CB_FindNextSliceStartCode
	.type	Real8_CB_FindNextSliceStartCode, %function
Real8_CB_FindNextSliceStartCode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pBs, pBs
	bl	BsToNextByte	@
	mov	r0, r5	@, pBs
	bl	BsResidBits	@
	add	r6, r0, #7	@ tmp121, D.38498,
	cmp	r0, #0	@ D.38498,
	movlt	r0, r6	@ D.38498, tmp121
	mov	r6, r0, asr #3	@ tmp122, D.38498,
	sub	r6, r6, #2	@ RemainByte, tmp122,
	cmp	r6, #0	@ RemainByte,
	movgt	r4, #0	@ i,
	bgt	.L81	@,
	b	.L82	@
.L88:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L82	@,
.L81:
	mov	r1, #17	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	mov	r3, r0	@ D.38496,
	cmp	r3, #1	@ D.38496,
	mov	r0, r5	@, pBs
	bne	.L88	@,
	mov	r0, r3	@, D.38496
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L82:
	mov	r3, #0	@ D.38496,
	mov	r0, r3	@, D.38496
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	Real8_CB_FindNextSliceStartCode, .-Real8_CB_FindNextSliceStartCode
	.align	2
	.global	Real8_CB_SearchBits_IgnoreOnly0
	.type	Real8_CB_SearchBits_IgnoreOnly0, %function
Real8_CB_SearchBits_IgnoreOnly0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	sub	ip, r1, #1	@ D.38504, nbits,
	mov	r6, #1	@ tmp138,
	mov	r7, r2	@ code, code
	mov	r9, r3	@ lookahead, lookahead
	mov	r10, r1	@ nbits, nbits
	mov	r8, r0	@ pBs, pBs
	mov	r6, r6, asl ip	@ msb, tmp138,
	bl	BsShow	@
	mov	r1, r10	@, nbits
	mov	r4, r0	@ w,
	mov	r0, r8	@, pBs
	bl	BsSkip	@
	cmp	r7, r4	@ code, w
	cmpne	r9, #0	@, lookahead,
	beq	.L90	@,
	ands	r5, r4, r6	@ D.38504, w, msb
	bne	.L90	@,
	ldr	r3, .L97	@ tmp147,
	add	r10, r3, r10, lsl #2	@ tmp148, tmp147, nbits,
	ldr	r10, [r10, #280]	@ D.38503, GetBitsMask
	b	.L91	@
.L92:
	tst	r4, r6	@ w, msb
	bne	.L90	@,
.L91:
	mov	r0, r8	@, pBs
	and	r4, r10, r4, asl #1	@ D.38504, D.38503, w,
	bl	Real8_CB_Get1Bit	@
	add	r5, r5, #1	@ n, n,
	orr	r4, r0, r4	@ w,, D.38504
	cmp	r7, r4	@ code, w
	cmpne	r9, r5	@, lookahead, n
	bhi	.L92	@,
.L90:
	rsb	r0, r7, r4	@, code, w
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.fnend
	.size	Real8_CB_SearchBits_IgnoreOnly0, .-Real8_CB_SearchBits_IgnoreOnly0
	.align	2
	.global	Real8_CB_SetRPRSizes
	.type	Real8_CB_SetRPRSizes, %function
Real8_CB_SetRPRSizes:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	lr, .L101	@ tmp116,
	add	r3, sp, #40	@ tmp121,,
	mov	r4, r0	@ pPictureHeader, pPictureHeader
	mov	r5, r1	@ num_sizes, num_sizes
	mov	r7, r2	@ sizes, sizes
	add	r6, r3, r1, lsl #2	@ tmp118, tmp121, num_sizes,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp116,,,,
	add	ip, sp, #4	@ tmp115,,
	str	r5, [r4, #16]	@ num_sizes, pPictureHeader_3(D)->Rv8ParsePicParam.m_numSizes
	str	r7, [r4, #12]	@ sizes, pPictureHeader_3(D)->Rv8ParsePicParam.m_pSizes
	stmia	ip!, {r0, r1, r2, r3}	@ tmp115,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp116,,,,
	ldr	lr, [lr]	@ tmp117,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp115,,,,
	str	lr, [ip]	@ tmp117, size
	ldr	r3, [r6, #-36]	@ tmp120, size
	str	r3, [r4, #8]	@ tmp120, pPictureHeader_3(D)->Rv8ParsePicParam.m_pctszSize
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L102:
	.align	2
.L101:
	.word	.LANCHOR0+380
	.fnend
	.size	Real8_CB_SetRPRSizes, .-Real8_CB_SetRPRSizes
	.align	2
	.global	Real8_CB_GetSSC
	.type	Real8_CB_GetSSC, %function
Real8_CB_GetSSC:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #76]	@ pPictureHeader_4(D)->Fid, pPictureHeader_4(D)->Fid
	cmp	r3, #1	@ pPictureHeader_4(D)->Fid,
	beq	.L105	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	Real8_CB_FindNextSliceStartCode	@
	adds	r0, r0, #0	@ D.38513,,
	movne	r0, #1	@ D.38513,
	ldmfd	sp!, {r4, pc}	@
.L105:
	mov	r0, #0	@ D.38513,
	bx	lr	@
	.fnend
	.size	Real8_CB_GetSSC, .-Real8_CB_GetSSC
	.align	2
	.global	Real8_CB_GetSliceHeader
	.type	Real8_CB_GetSliceHeader, %function
Real8_CB_GetSliceHeader:
	.fnstart
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r2	@ iSliceMBA, iSliceMBA
	ldr	r4, [sp, #36]	@ pPictureHeader, pPictureHeader
	mov	r7, r3	@ iSliceGFID, iSliceGFID
	mov	r6, r0	@ pBs, pBs
	ldr	ip, [r4, #76]	@ pPictureHeader_9(D)->Fid, pPictureHeader_9(D)->Fid
	cmp	ip, #1	@ pPictureHeader_9(D)->Fid,
	beq	.L143	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L144	@,
	mov	r2, #0	@ tmp206,
	str	r2, [r5]	@ tmp206, *iSliceMBA_53(D)
	ldr	r2, [sp, #32]	@ tmp211, iSQUANT
	mvn	r3, #0	@ tmp207,
	mov	r0, #1	@ D.38519,
	str	r3, [r2]	@ tmp207, *iSQUANT_57(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L143:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L111	@,
	mov	r1, #3	@,
	ldr	r9, [r4, #40]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	cmp	r8, #7	@ D.38520,
	bhi	.L114	@,
	ldr	r3, .L147	@ tmp188,
	add	r8, r3, r8, lsl #2	@ tmp189, tmp188, D.38520,
	ldr	r3, [r8, #416]	@ tmp191, s_RVVersionEncodingToMinorVersion
	cmp	r3, #2	@ tmp191,
	bhi	.L114	@,
	cmn	r9, #1	@ D.38520,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	movne	r9, #0	@ D.38527,
	moveq	r9, #1	@ D.38527,
	cmp	r9, #0	@ D.38527,
	bne	.L145	@,
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #36]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype
	cmp	r3, r8	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype, D.38520
	bne	.L114	@,
.L116:
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L114	@,
	mov	r1, #5	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	uxtb	r0, r8	@ D.38523, D.38520
	cmp	r0, #31	@ D.38523,
	strb	r0, [r4, #6]	@ D.38523, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant
	bhi	.L114	@,
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	adds	r8, r8, #0	@ tmp196, D.38520,
	mov	r1, #13	@,
	mov	r0, r6	@, pBs
	movne	r8, #1	@ tmp196,
	cmp	r9, #0	@ D.38527,
	strb	r8, [r4, #5]	@ tmp196, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].deblocking_filter_passthrough
	beq	.L117	@,
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r8, [r4, #8]	@ D.38521, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pctszSize
	str	r9, [r4, #44]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr
	cmp	r8, #0	@ D.38521,
	beq	.L135	@,
	mov	r1, r8	@, D.38521
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.38521
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #12]	@ D.38525, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pSizes
	str	r9, [r4, #56]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz
	cmp	r3, #0	@ D.38525,
	beq	.L114	@,
	add	r1, r3, r9, lsl #3	@ tmp199, D.38525, D.38520,
	ldr	r2, [r3, r9, asl #3]	@ width, *_33
	mov	r0, r4	@, pPictureHeader
	ldr	r3, [r1, #4]	@ height, *_36
	str	r2, [r4, #60]	@ width, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pwidth
	str	r2, [r4, #88]	@ width, pPictureHeader_9(D)->pic_width_in_pixel
	str	r3, [r4, #64]	@ height, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pheight
	str	r3, [r4, #84]	@ height, pPictureHeader_9(D)->pic_height_in_pixel
	bl	Real8_CB_SetDimensions	@
.L135:
	ldr	r8, [r4, #32]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.38520
	bl	BsShow	@
	mov	r1, r8	@, D.38520
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #1	@,
	str	r9, [r4, #40]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r8, [r4, #4]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].rtype
.L111:
	ldr	r2, [r4, #40]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r3, #0	@ tmp204,
	ldr	r1, [sp, #32]	@ tmp209, iSQUANT
	mov	r0, #1	@ D.38519,
	str	r2, [r5]	@ D.38520, *iSliceMBA_53(D)
	ldrb	r2, [r4, #6]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant
	str	r2, [r1]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant, *iSQUANT_57(D)
	str	r3, [r7]	@ tmp204, *iSliceGFID_59(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L144:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L146	@,
.L114:
	mov	r0, #0	@ D.38519,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L146:
	ldr	r8, [r4, #32]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.38520
	bl	BsShow	@
	mov	r1, r8	@, D.38520
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r9, [r5]	@ D.38520, *iSliceMBA_53(D)
	ldr	r3, [r4, #32]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	cmp	r3, #11	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize,
	bls	.L127	@,
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L114	@,
.L127:
	mov	r1, #5	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r4, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	cmp	r4, #31	@ D.38520,
	ldr	r3, [sp, #32]	@ tmp210, iSQUANT
	str	r4, [r3]	@ D.38520, *iSQUANT_57(D)
	bgt	.L114	@,
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.38521,
	mov	r4, r0	@ D.38521,
	bne	.L114	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r5, [r7]	@ D.38520, *iSliceGFID_59(D)
	mov	r0, r4	@ D.38519, D.38521
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L145:
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r8, [r4, #36]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype
	b	.L116	@
.L117:
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #44]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr
	cmp	r3, r8	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr, D.38520
	bne	.L114	@,
	ldr	r8, [r4, #8]	@ D.38521, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pctszSize
	cmp	r8, #0	@ D.38521,
	beq	.L139	@,
	mov	r1, r8	@, D.38521
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.38521
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #56]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz
	cmp	r3, r9	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz, D.38520
	bne	.L114	@,
.L139:
	ldr	r8, [r4, #32]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.38520
	bl	BsShow	@
	mov	r1, r8	@, D.38520
	mov	r9, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #1	@,
	str	r9, [r4, #40]	@ D.38520, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.38520,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ D.38521, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].rtype
	cmp	r3, r8	@ D.38521, D.38520
	bne	.L114	@,
	b	.L111	@
.L148:
	.align	2
.L147:
	.word	.LANCHOR0
	.fnend
	.size	Real8_CB_GetSliceHeader, .-Real8_CB_GetSliceHeader
	.align	2
	.global	Real8_CB_GetPictureHeader
	.type	Real8_CB_GetPictureHeader, %function
Real8_CB_GetPictureHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pPictureHeader, pPictureHeader
	ldr	r3, [r1, #76]	@ pPictureHeader_10(D)->Fid, pPictureHeader_10(D)->Fid
	.pad #24
	sub	sp, sp, #24	@,,
	cmp	r3, #1	@ pPictureHeader_10(D)->Fid,
	beq	.L176	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, #140	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #24	@,
	mov	r6, r0	@ D.38534,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r6, #1	@ D.38534,
	bne	.L168	@,
	mov	r0, r5	@, pBs
	add	r1, sp, #20	@ tmp208,,
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L168	@,
	ldr	r3, [sp, #20]	@ D.38533, info
	ands	r2, r3, #1	@ D.38533, D.38533,
	bne	.L168	@,
	tst	r3, #2	@ D.38533,
	mov	r0, r5	@, pBs
	strne	r2, [r4, #88]	@ D.38533, pPictureHeader_10(D)->pic_width_in_pixel
	moveq	r1, #176	@ tmp182,
	moveq	r2, #144	@ tmp183,
	streq	r1, [r4, #88]	@ tmp182, pPictureHeader_10(D)->pic_width_in_pixel
	add	r1, sp, #20	@ tmp209,,
	str	r2, [r4, #84]	@ D.38533, pPictureHeader_10(D)->pic_height_in_pixel
	ubfx	r2, r3, #2, #5	@ D.38533, D.38533,,
	ubfx	r3, r3, #7, #8	@ D.38533, D.38533,,
	str	r2, [r4, #120]	@ D.38533, pPictureHeader_10(D)->PQUANT
	str	r3, [r4, #108]	@ D.38533, pPictureHeader_10(D)->TR
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #1	@ length,
	streq	r0, [r4, #80]	@ length, pPictureHeader_10(D)->PicCodType
	beq	.L163	@,
	cmp	r0, #3	@ length,
	beq	.L177	@,
	cmp	r0, #5	@ length,
	bne	.L168	@,
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L168	@,
	mov	r3, #2	@ tmp195,
	str	r3, [r4, #80]	@ tmp195, pPictureHeader_10(D)->PicCodType
.L163:
	ldr	r3, [r4, #88]	@ D.38533, pPictureHeader_10(D)->pic_width_in_pixel
	cmp	r3, #0	@ D.38533,
	beq	.L178	@,
.L165:
	sub	r3, r3, #48	@ D.38533, D.38533,
	movw	r2, #8144	@ tmp197,
	cmp	r3, r2	@ D.38533, tmp197
	bhi	.L168	@,
.L175:
	ldr	r3, [r4, #84]	@ pPictureHeader_10(D)->pic_height_in_pixel, pPictureHeader_10(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.38533, pPictureHeader_10(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.38533, tmp197
	bhi	.L168	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real8_CB_SetDimensions	@
	mov	r0, #1	@ Status,
.L151:
	ldr	r3, [r4, #88]	@ pPictureHeader_10(D)->pic_width_in_pixel, pPictureHeader_10(D)->pic_width_in_pixel
	ldr	r2, [r4, #84]	@ pPictureHeader_10(D)->pic_height_in_pixel, pPictureHeader_10(D)->pic_height_in_pixel
	add	r3, r3, #15	@ D.38533, pPictureHeader_10(D)->pic_width_in_pixel,
	add	r2, r2, #15	@ D.38533, pPictureHeader_10(D)->pic_height_in_pixel,
	mov	r3, r3, lsr #4	@ D.38533, D.38533,
	str	r3, [r4, #96]	@ D.38533, pPictureHeader_10(D)->pic_width_in_mb
	mov	r2, r2, lsr #4	@ D.38533, D.38533,
	str	r2, [r4, #92]	@ D.38533, pPictureHeader_10(D)->pic_height_in_mb
	mul	r3, r3, r2	@ D.38533, D.38533, D.38533
	str	r3, [r4, #100]	@ D.38533, pPictureHeader_10(D)->total_mbs
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L177:
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #1	@ info,
	moveq	r3, #0	@ tmp193,
	streq	r3, [r4, #80]	@ tmp193, pPictureHeader_10(D)->PicCodType
	beq	.L163	@,
.L168:
	mvn	r0, #1	@ D.38532,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L176:
	str	r1, [sp, #4]	@ pPictureHeader,
	add	r3, sp, #20	@ tmp159,,
	mvn	r2, #0	@ tmp156,
	str	r2, [r1, #40]	@ tmp156, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].mba
	str	r3, [sp]	@ tmp159,
	add	r2, sp, #16	@,,
	add	r3, sp, #12	@,,
	mov	r1, #0	@,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r0, #1	@ Status,
	bne	.L151	@,
	ldr	r3, [r4, #36]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype
	cmp	r3, #3	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype
	b	.L152	@
.L154:
	.word	.L153
	.word	.L155
	.word	.L156
	.word	.L157
.L178:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real8_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L168	@,
	ldr	r3, [r4, #88]	@ D.38533, pPictureHeader_10(D)->pic_width_in_pixel
	b	.L165	@
.L155:
	mov	r3, #0	@ tmp163,
	str	r3, [r4, #80]	@ tmp163, pPictureHeader_10(D)->PicCodType
	str	r3, [r4, #20]	@ tmp163, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].m_isForcedKey
.L152:
	ldr	r3, [r4, #88]	@ pPictureHeader_10(D)->pic_width_in_pixel, pPictureHeader_10(D)->pic_width_in_pixel
	add	r0, r4, #44	@,,
	movw	r2, #8144	@ tmp175,
	ldrb	r5, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype
	sub	r3, r3, #48	@ D.38533, pPictureHeader_10(D)->pic_width_in_pixel,
	ldrb	lr, [r4, #5]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough
	cmp	r3, r2	@ D.38533, tmp175
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant
	ldmia	r0, {r0, r1, r3}	@,,,
	str	r5, [r4, #112]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype, pPictureHeader_10(D)->Rounding
	str	lr, [r4, #116]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough, pPictureHeader_10(D)->Deblocking_Filter_Passthrough
	str	ip, [r4, #120]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant, pPictureHeader_10(D)->PQUANT
	str	r0, [r4, #108]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].tr, pPictureHeader_10(D)->TR
	str	r1, [r4, #128]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].trb, pPictureHeader_10(D)->TRB
	str	r3, [r4, #132]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].dbq, pPictureHeader_10(D)->DBQUANT
	bls	.L175	@,
	b	.L168	@
.L157:
	mov	r3, #2	@ tmp166,
	str	r3, [r4, #80]	@ tmp166, pPictureHeader_10(D)->PicCodType
	b	.L152	@
.L156:
	mov	r3, #1	@ tmp165,
	str	r3, [r4, #80]	@ tmp165, pPictureHeader_10(D)->PicCodType
	b	.L152	@
.L153:
	mov	r2, #0	@ tmp161,
	mov	r3, #1	@ tmp162,
	str	r2, [r4, #80]	@ tmp161, pPictureHeader_10(D)->PicCodType
	str	r3, [r4, #20]	@ tmp162, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].m_isForcedKey
	b	.L152	@
	.fnend
	.size	Real8_CB_GetPictureHeader, .-Real8_CB_GetPictureHeader
	.align	2
	.global	Real8_SetImgFormat
	.type	Real8_SetImgFormat, %function
Real8_SetImgFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #36864	@ tmp143, pCtx,
	mov	r6, r0	@ pCtx, pCtx
	ldr	r1, [r5, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_3(D) + 11360B].CurFsID
	ldr	r0, [r5, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pImg,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #776]	@ MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].PicCodType, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].PicCodType
	mov	r1, #0	@ tmp153,
	str	r1, [r4, #128]	@ tmp153, pImg_8->is_fld_save
	and	r3, r3, #3	@ D.38541, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].PicCodType,
	str	r3, [r4, #132]	@ D.38541, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.38541, D.38541,
	str	r3, [r4, #136]	@ D.38541, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.38541, D.38541,
	str	r2, [r4, #140]	@ D.38541, pImg_8->format
	ldr	r3, [r5, #784]	@ D.38541, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].pic_width_in_pixel
	str	r3, [r4, #144]	@ D.38541, pImg_8->image_width
	ldr	r3, [r5, #780]	@ D.38541, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].pic_height_in_pixel
	str	r3, [r4, #148]	@ D.38541, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _21->eCapLevel, _21->eCapLevel
	cmp	r3, #25	@ _21->eCapLevel,
	beq	.L186	@,
.L181:
	mov	r3, #8	@ tmp169,
	mov	r2, #1	@ tmp172,
	mov	r1, #0	@ tmp170,
	str	r3, [r4, #300]	@ tmp169, pImg_8->ImageDnr.video_standard
	str	r3, [r4, #304]	@ tmp169, pImg_8->ImageDnr.QP_Y
	str	r3, [r4, #312]	@ tmp169, pImg_8->ImageDnr.QP_V
	str	r3, [r4, #308]	@ tmp169, pImg_8->ImageDnr.QP_U
	strb	r1, [r4, #288]	@ tmp170, pImg_8->ImageDnr.pic_structure
	strb	r2, [r4, #295]	@ tmp172, pImg_8->ImageDnr.use_pic_qp_en
	strb	r2, [r4, #293]	@ tmp172, pImg_8->ImageDnr.chroma_format_idc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L186:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.38541, pImg_8->image_stride
	add	r3, r3, #15	@ D.38541, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.38541, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.38544, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.38541, D.38541,
	mov	r3, r1, asl #4	@ D.38541, D.38541,
	add	lr, r1, r0	@ D.38540, D.38541, D.38541
	str	r0, [r4, #88]	@ D.38541, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.38541, D.38541, D.38541
	str	r0, [r4, #120]	@ D.38541, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.38540, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.38544, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.38541, D.38541, D.38541
	add	r3, ip, r3	@ D.38544, D.38544, D.38541
	add	r1, r1, r0	@ D.38540, D.38541, D.38541
	str	r3, [r4, #36]	@ D.38544, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.38541, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.38541, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.38540, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L181	@
	.fnend
	.size	Real8_SetImgFormat, .-Real8_SetImgFormat
	.section	.text.unlikely,"ax",%progbits
	.align	2
	.type	Real8_FlushFrameToVo, %function
Real8_FlushFrameToVo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #36864	@ tmp124, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	mov	r6, r1	@ FsID, FsID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	mvneq	r0, #0	@ ret,
	beq	.L188	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	bne	.L188	@,
	mov	r0, r5	@, pCtx
	bl	Real8_SetImgFormat	@
	mov	r2, #1	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	add	r3, r3, #56	@,,
	mov	r2, r5	@, pCtx
	mov	r1, #8	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L188	@,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ ret,
.L188:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	Real8_FlushFrameToVo, .-Real8_FlushFrameToVo
	.text
	.align	2
	.global	RV8_RecordVFMWState
	.type	RV8_RecordVFMWState, %function
RV8_RecordVFMWState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	RV8_RecordVFMWState, .-RV8_RecordVFMWState
	.align	2
	.global	Real8_WriteSliceMsg
	.type	Real8_WriteSliceMsg, %function
Real8_WriteSliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #44	@ tmp131,
	add	r3, r0, #36864	@ tmp135, pCtx,
	mla	r2, r2, r1, r0	@ tmp132, tmp131, HoldSliceNum, pCtx
	add	r1, r1, #1	@ D.38562, HoldSliceNum,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r3, #864]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_0, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_0
	add	ip, r2, #112	@ tmp175, tmp132,
	add	lr, r2, #120	@ tmp189, tmp132,
	str	r4, [r2, #92]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamPhyAddr
	ldr	r4, [r3, #856]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_0, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_0
	str	r4, [r2, #100]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamBitOffset
	ldr	r4, [r3, #860]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_0, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_0
	str	r4, [r2, #108]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamLength
	ldr	r4, [r3, #876]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_1, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_1
	str	r4, [r2, #96]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_stream_addr_1, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamPhyAddr
	ldr	r4, [r3, #868]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_1, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_1
	str	r4, [r2, #104]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_offset_1, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamBitOffset
	ldr	r4, [r3, #872]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_1, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_1
	str	r4, [r2, #112]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].bit_len_1, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].StreamLength
	ldr	r2, [r3, #844]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].dblk_filter_passthrough, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].dblk_filter_passthrough
	str	r2, [ip, #4]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].dblk_filter_passthrough, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].dblk_filter_passthrough
	ldr	r2, [r3, #840]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].osvquant, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].osvquant
	str	r2, [ip, #8]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].osvquant, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].osvquant
	ldr	r2, [r3, #836]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].SliceQP, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].SliceQP
	str	r2, [lr, #4]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].SliceQP, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].sliceqp
	ldr	r3, [r3, #848]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].first_mb_in_slice, MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].first_mb_in_slice
	str	r3, [lr, #8]	@ MEM[(struct RV8_SliceHeader *)pCtx_1(D) + 37700B].first_mb_in_slice, MEM[(struct RV8_SLC_PARAM_S *)pCtx_1(D) + 8B].SliceParam[HoldSliceNum_2(D)].first_mb_in_slice
	str	r1, [r0, #44]	@ D.38562, MEM[(struct RV8_DEC_PARAM_S *)pCtx_1(D) + 8B].TotalSliceNum
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Real8_WriteSliceMsg, .-Real8_WriteSliceMsg
	.align	2
	.global	Real8_WritePicMsg
	.type	Real8_WritePicMsg, %function
Real8_WritePicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #36864	@ tmp123, pCtx,
	ldr	r2, [r3, #776]	@ D.38565, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].PicCodType
	cmp	r2, #2	@ D.38565,
	strb	r2, [r0, #20]	@ D.38565, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicCodingType
	ldr	r2, [r3, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb
	str	r2, [r0, #12]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicWidthInMb
	ldr	r2, [r3, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb
	str	r2, [r0, #16]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicHeightInMb
	ldr	r2, [r3, #1976]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0
	str	r2, [r0, #24]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio0
	ldr	r2, [r3, #1980]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1
	str	r2, [r0, #28]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio1
	ldr	r2, [r3, #816]	@ D.38567, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].PQUANT
	str	r2, [r0, #32]	@ D.38567, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PQUANT
	ldr	r1, [r3, #880]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	str	r1, [r0, #36]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicQP
	ldr	r1, [r3, #884]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP
	str	r1, [r0, #40]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicMb0QP
	strne	r2, [r3, #880]	@ D.38567, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	bx	lr	@
	.fnend
	.size	Real8_WritePicMsg, .-Real8_WritePicMsg
	.align	2
	.global	Real8_WriteReg
	.type	Real8_WriteReg, %function
Real8_WriteReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r1, [r0, #48]	@ fst_slc_grp, MEM[(struct RV8_DEC_PARAM_S *)pCtx_1(D) + 8B].FstSlcGrp
	bx	lr	@
	.fnend
	.size	Real8_WriteReg, .-Real8_WriteReg
	.align	2
	.global	Real8_ModifySliceMsg
	.type	Real8_ModifySliceMsg, %function
Real8_ModifySliceMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #128]	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice
	ldr	r3, [r0, #12]	@ D.38622, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].PicWidthInMb
	cmp	r2, #0	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice,
	ldr	ip, [r0, #16]	@ D.38622, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].PicHeightInMb
	bne	.L232	@,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mul	ip, r3, ip	@ D.38622, D.38622, D.38622
	ldr	lr, [r0, #44]	@ D.38622, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	cmp	lr, #2	@ D.38622,
	sub	ip, ip, #1	@ TotalMbnMinus1, D.38622,
	bls	.L205	@,
	ldr	r3, [r0, #172]	@ D.38623, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[1].first_mb_in_slice
	sub	r4, lr, #1	@ D.38622, D.38622,
	cmp	r3, #0	@ D.38623,
	cmpgt	ip, r3	@, TotalMbnMinus1, D.38623
	ble	.L206	@,
	mov	r2, r0	@ ivtmp.157, pCtx
	mov	r3, #1	@ i,
	b	.L207	@
.L208:
	ldr	r1, [r2, #216]	@ D.38623, MEM[base: _177, offset: 216B]
	add	r2, r2, #44	@ ivtmp.157, ivtmp.157,
	cmp	ip, r1	@ TotalMbnMinus1, D.38623
	cmpgt	r1, #0	@, D.38623,
	ble	.L206	@,
.L207:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.38622
	bne	.L208	@,
.L205:
	cmp	lr, #1	@ D.38622,
	bls	.L209	@,
	sub	r5, lr, #1	@ D.38622, D.38622,
	mov	r3, r0	@ ivtmp.150, pCtx
	mov	r2, #0	@ i,
	b	.L210	@
.L211:
	ldr	r4, [r3, #128]	@ D.38623, MEM[base: _13, offset: 128B]
	add	r3, r3, #44	@ ivtmp.150, ivtmp.150,
	add	r2, r2, #1	@ i, i,
	ldr	r1, [r3, #128]	@ MEM[base: _11, offset: 128B], MEM[base: _11, offset: 128B]
	cmp	r4, r1	@ D.38623, MEM[base: _11, offset: 128B]
	bge	.L206	@,
.L210:
	cmp	r2, r5	@ i, D.38622
	bne	.L211	@,
	mov	r3, #44	@ tmp268,
	mla	r2, r3, r2, r0	@ tmp269, tmp268, i, pCtx
	ldr	r3, [r2, #128]	@ D.38623, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[_175].first_mb_in_slice
	cmp	ip, r3	@ TotalMbnMinus1, D.38623
	cmpge	r3, #0	@, D.38623,
	ble	.L206	@,
.L209:
	cmp	lr, #0	@ D.38622,
	beq	.L212	@,
	sub	r7, lr, #1	@ D.38622, D.38622,
	mov	r6, r0	@ ivtmp.133, pCtx
	mov	r4, r0	@ ivtmp.143, pCtx
	mov	r5, #0	@ i,
	b	.L215	@
.L234:
	cmp	r5, lr	@ i, D.38622
	beq	.L233	@,
.L215:
	cmp	r5, r7	@ i, D.38622
	streq	ip, [r4, #132]	@ TotalMbnMinus1, MEM[base: _104, offset: 132B]
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #44	@ ivtmp.143, ivtmp.143,
	ldrne	r3, [r4, #128]	@ MEM[base: _103, offset: 172B], MEM[base: _103, offset: 172B]
	moveq	r1, ip	@ D.38623, TotalMbnMinus1
	subne	r1, r3, #1	@ D.38623, MEM[base: _103, offset: 172B],
	ldr	r3, [r4, #84]	@ D.38623, MEM[base: _113, offset: 128B]
	strne	r1, [r4, #88]	@ D.38623, MEM[base: _103, offset: 132B]
	mov	r2, r3, lsr #31	@ tmp282, D.38623,
	cmp	ip, r3	@ TotalMbnMinus1, D.38623
	orrlt	r2, r2, #1	@,, tmp284, tmp282
	cmp	r3, r1	@ D.38623, D.38623
	movle	r3, r2	@, tmp288, tmp284
	orrgt	r3, r2, #1	@,, tmp288, tmp284
	orr	r3, r3, r1, lsr #31	@ tmp293, tmp288, D.38623,
	cmp	ip, r1	@ TotalMbnMinus1, D.38623
	orrlt	r3, r3, #1	@,, tmp299, tmp293
	cmp	r3, #0	@ tmp299,
	beq	.L234	@,
.L206:
	mov	r0, #0	@ D.38624,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L232:
	mov	r0, #0	@ D.38624,
	bx	lr	@
.L233:
	ldr	r2, [r0, #92]	@ stream_base_addr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	mov	r1, r2	@ D.38627, stream_base_addr
	b	.L218	@
.L235:
	ldr	r1, [r6, #92]	@ D.38627, MEM[base: _129, offset: 92B]
.L218:
	cmp	r2, r1	@ stream_base_addr, D.38627
	ldr	ip, [r6, #96]	@ stream_base_addr, MEM[base: _130, offset: 96B]
	add	r3, r3, #1	@ i, i,
	movcs	r2, r1	@ stream_base_addr, D.38627
	cmp	ip, r2	@ stream_base_addr, stream_base_addr
	bcs	.L216	@,
	ldr	r1, [r6, #112]	@ MEM[base: _130, offset: 112B], MEM[base: _130, offset: 112B]
	cmp	r1, #0	@ MEM[base: _130, offset: 112B],
	movne	r2, ip	@ stream_base_addr, stream_base_addr
.L216:
	cmp	r3, lr	@ i, D.38622
	add	r6, r6, #44	@ ivtmp.133, ivtmp.133,
	bne	.L235	@,
	bic	r2, r2, #15	@ D.38624, stream_base_addr,
	ldr	lr, [r0, #44]	@ D.38622, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	str	r2, [r0, #52]	@ D.38624, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
	mov	r3, r0	@ ivtmp.117, pCtx
	mov	ip, #0	@ i,
	b	.L222	@
.L236:
	ldr	r4, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	rsb	r2, r2, r1	@ D.38622, D.38624, MEM[base: _43, offset: 92B]
	and	r1, r4, #7	@ D.38622, MEM[base: _43, offset: 100B],
	add	r2, r2, r4, lsr #3	@ BytePos0, D.38622, MEM[base: _43, offset: 100B],
	and	r4, r2, #15	@ D.38622, BytePos0,
	bic	r2, r2, #15	@ D.38622, BytePos0,
	str	r2, [r3, #92]	@ D.38622, MEM[base: _43, offset: 92B]
	add	r2, r1, r4, lsl #3	@ D.38622, D.38622, D.38622,
	str	r2, [r3, #100]	@ D.38622, MEM[base: _43, offset: 100B]
.L220:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #44	@ ivtmp.117, ivtmp.117,
	cmp	lr, ip	@ D.38622, i
	bls	.L221	@,
	ldr	r2, [r0, #52]	@ D.38624, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L222:
	ldr	r1, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	cmp	r1, #0	@ MEM[base: _43, offset: 96B],
	rsb	r4, r2, r1	@ D.38622, D.38624, MEM[base: _43, offset: 96B]
	ldr	r1, [r3, #92]	@ MEM[base: _43, offset: 92B], MEM[base: _43, offset: 92B]
	beq	.L236	@,
	ldr	r5, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	rsb	r2, r2, r1	@ D.38622, D.38624, MEM[base: _43, offset: 92B]
	ldr	r7, [r3, #104]	@ MEM[base: _43, offset: 104B], MEM[base: _43, offset: 104B]
	and	r6, r5, #7	@ D.38622, MEM[base: _43, offset: 100B],
	add	r2, r2, r5, lsr #3	@ BytePos0, D.38622, MEM[base: _43, offset: 100B],
	and	r5, r7, #7	@ D.38622, MEM[base: _43, offset: 104B],
	add	r1, r4, r7, lsr #3	@ BytePos1, D.38622, MEM[base: _43, offset: 104B],
	and	r4, r2, #15	@ D.38622, BytePos0,
	and	r7, r1, #15	@ D.38622, BytePos1,
	bic	r2, r2, #15	@ D.38622, BytePos0,
	add	r4, r6, r4, lsl #3	@ D.38622, D.38622, D.38622,
	str	r2, [r3, #92]	@ D.38622, MEM[base: _43, offset: 92B]
	bic	r1, r1, #15	@ D.38622, BytePos1,
	add	r2, r5, r7, lsl #3	@ D.38622, D.38622, D.38622,
	str	r4, [r3, #100]	@ D.38622, MEM[base: _43, offset: 100B]
	str	r2, [r3, #104]	@ D.38622, MEM[base: _43, offset: 104B]
	str	r1, [r3, #96]	@ D.38622, MEM[base: _43, offset: 96B]
	b	.L220	@
.L212:
	ldr	r3, [r0, #92]	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	bic	r3, r3, #15	@ D.38623, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr,
	str	r3, [r0, #52]	@ D.38623, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L221:
	mov	r0, #1	@ D.38624,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	Real8_ModifySliceMsg, .-Real8_ModifySliceMsg
	.align	2
	.global	REAL8DEC_Init
	.type	REAL8DEC_Init, %function
REAL8DEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #36864	@ tmp120, pCtx,
	mov	r7, r1	@ pstExtraData, pstExtraData
	movw	r1, #39328	@,
	ldr	r8, [r4, #2448]	@ D.38631, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r5, #38912	@, pCtx,
	add	r0, r0, #56	@,,
	mov	r6, #0	@ tmp141,
	str	r8, [r4, #2448]	@ D.38631, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	str	r7, [r5]	@ pstExtraData, pCtx_4(D)->pstExtraData
	mov	r3, #15	@ tmp129,
	str	r3, [r4, #880]	@ tmp129, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].PrevPicQP
	str	r3, [r4, #884]	@ tmp129, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].PrevPicMb0QP
	add	r2, r5, #8192	@ tmp126, pCtx,
	ldr	ip, [r7, #8]	@ pstExtraData_10(D)->s32DecMode, pstExtraData_10(D)->s32DecMode
	mov	r3, #1	@ tmp145,
	strb	r6, [r2, #3180]	@ tmp141, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].Imgbuf_allocated
	mov	r1, #8192	@ tmp148,
	mov	r0, r5	@, pCtx
	strb	ip, [r2, #3178]	@ pstExtraData_10(D)->s32DecMode, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].UsedDecMode
	str	r1, [r4, #800]	@ tmp148, MEM[(struct RV8_PictureHeader *)pCtx_4(D) + 37560B].m_uTRWrap
	str	r3, [r4, #772]	@ tmp145, MEM[(struct RV8_PictureHeader *)pCtx_4(D) + 37560B].Fid
	str	r3, [r4, #2460]	@ tmp145, pCtx_4(D)->DSDNeedClearQue
	strb	r3, [r4, #696]	@ tmp145, MEM[(struct RV8_PictureHeader *)pCtx_4(D) + 37560B].pixel_aspect_ratio
	bl	VCTRL_GetChanIDByCtx	@
	cmn	r0, #1	@ D.38633,
	str	r0, [r4, #2456]	@ D.38633, pCtx_4(D)->ChanID
	beq	.L241	@,
	mov	r0, r6	@ D.38630, tmp141
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L241:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.38630,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	REAL8DEC_Init, .-REAL8DEC_Init
	.global	__aeabi_idiv
	.align	2
	.global	REAL8DEC_Decode
	.type	REAL8DEC_Decode, %function
REAL8DEC_Decode:
	.fnstart
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #300
	sub	sp, sp, #300	@,,
	mov	r8, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	mov	r2, #140	@,
	mov	r1, #0	@,
	add	r0, sp, #156	@ tmp1322,,
	add	r4, r8, #36864	@ tmp1265, pCtx,
	bl	memset	@
	mov	r2, #64	@,
	mov	r1, #0	@,
	add	r9, r8, #8	@ __p, pCtx,
	add	r0, sp, #92	@ tmp1323,,
	bl	memset	@
	ldr	r2, [r4, #756]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pwidth
	ldr	r3, [r4, #760]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pheight
	cmp	r5, #0	@ pPacket,
	mov	r0, #1	@ tmp498,
	mov	r1, #8192	@ tmp501,
	str	r2, [r4, #764]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pwidth_prev
	str	r3, [r4, #768]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pheight_prev
	str	r0, [r4, #772]	@ tmp498, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Fid
	str	r1, [r4, #800]	@ tmp501, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	str	r2, [sp, #224]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r2, [sp, #216]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r3, [sp, #228]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	str	r3, [sp, #220]	@ D.38694, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r0, [sp, #232]	@ tmp498, TmpPictureHeader.Fid
	str	r1, [sp, #260]	@ tmp501, TmpPictureHeader.m_uTRWrap
	beq	.L254	@,
	movw	r1, #11352	@,
	mov	r0, r9	@, __p
	bl	__memzero	@
	mov	r6, #0	@ tmp508,
	str	r6, [r4, #1916]	@ tmp508, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsOffset
	add	r7, r8, #8192	@ tmp1266, pCtx,
	ldr	r3, [r5, #12]	@ pPacket_57(D)->StreamPack[0].LenInByte, pPacket_57(D)->StreamPack[0].LenInByte
	str	r3, [r4, #1936]	@ pPacket_57(D)->StreamPack[0].LenInByte, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PacketTail
	ldr	r3, [r5, #8]	@ pPacket_57(D)->StreamPack[0].PhyAddr, pPacket_57(D)->StreamPack[0].PhyAddr
	str	r3, [r4, #1920]	@ pPacket_57(D)->StreamPack[0].PhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	ldr	r3, [r5]	@ D.38696, pPacket_57(D)->StreamPack[0].VirAddr
	str	r3, [r7, #3168]	@ D.38696, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	ldr	r2, [r5, #12]	@ D.38694, pPacket_57(D)->StreamPack[0].LenInByte
	str	r2, [r4, #1924]	@ D.38694, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[0].IsLastSeg, pPacket_57(D)->StreamPack[0].IsLastSeg
	strb	r3, [r7, #3176]	@ pPacket_57(D)->StreamPack[0].IsLastSeg, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[0].IsLastSeg, pPacket_57(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_57(D)->StreamPack[0].IsLastSeg,
	beq	.L245	@,
	ldr	r3, [r5, #88]	@ pPacket_57(D)->StreamPack[1].PhyAddr, pPacket_57(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1928]	@ pPacket_57(D)->StreamPack[1].PhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr1
	ldr	r3, [r5, #80]	@ D.38696, pPacket_57(D)->StreamPack[1].VirAddr
	str	r3, [r7, #3172]	@ D.38696, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr1
	ldr	r3, [r5, #92]	@ pPacket_57(D)->StreamPack[1].LenInByte, pPacket_57(D)->StreamPack[1].LenInByte
	str	r3, [r4, #1932]	@ pPacket_57(D)->StreamPack[1].LenInByte, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[1].IsLastSeg, pPacket_57(D)->StreamPack[1].IsLastSeg
	strb	r3, [r7, #3177]	@ pPacket_57(D)->StreamPack[1].IsLastSeg, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[1].IsLastSeg, pPacket_57(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_57(D)->StreamPack[1].IsLastSeg,
	bne	.L375	@,
.L246:
	movw	r3, #65460	@ tmp573,
	sub	r1, r2, #75	@ D.38699, D.38694,
	movt	r3, 47	@ tmp573,
	cmp	r1, r3	@ D.38699, tmp573
	bhi	.L262	@,
	ldr	r1, [r7, #3168]	@ D.38696, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	cmp	r1, #0	@ D.38696,
	beq	.L262	@,
	add	r5, r8, #38912	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r6, r0	@ Num_RPR_Sizes,
	str	r0, [sp, #12]	@ Num_RPR_Sizes, %sfp
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r6, #8	@ Num_RPR_Sizes,
	bhi	.L262	@,
	add	r6, sp, #88	@ ivtmp.210,,
	add	fp, sp, #152	@ D.38699,,
.L249:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #32	@,
	mov	r10, r0	@ D.38695,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r10, r10	@ D.38694, D.38695
	str	r10, [r6, #4]!	@ D.38694, MEM[base: _257, offset: 0B]
	cmp	r6, fp	@ ivtmp.210, D.38699
	bne	.L249	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r10, r0	@ D.38695,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r10, #255	@ D.38695,
	add	r0, r10, #1	@ D.38695, D.38695,
	str	r0, [r4, #888]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	bhi	.L262	@,
	cmp	r0, #0	@ D.38695,
	beq	.L250	@,
	add	r6, r8, #37632	@ ivtmp.196, pCtx,
	movw	fp, #65535	@ tmp1280,
	add	r6, r6, #120	@ ivtmp.196, ivtmp.196,
	str	r7, [sp, #16]	@ tmp1266, %sfp
	movt	fp, 47	@ tmp1280,
	mov	r10, #0	@ i,
	mov	r7, r6	@ ivtmp.196, ivtmp.196
	b	.L251	@
.L377:
	ldr	r0, [r4, #888]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	cmp	r0, r10	@ D.38695, i
	bls	.L376	@,
.L251:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r10, r10, #1	@ i, i,
	bl	BsShow	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.38695,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r3, r6	@ D.38694, D.38695
	cmp	r3, fp	@ D.38694, tmp1280
	str	r3, [r7, #4]!	@ D.38694, MEM[base: _146, offset: 0B]
	ble	.L377	@,
.L262:
	mov	r6, #0	@ D.38691,
.L244:
	mov	r0, r6	@, D.38691
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L375:
	ldr	r1, [r5, #16]	@, pPacket_57(D)->StreamPack[0].StreamID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r5, #96]	@, pPacket_57(D)->StreamPack[1].StreamID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r6	@, D.38691
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L245:
	str	r6, [r4, #1928]	@ tmp508, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr1
	str	r6, [r7, #3172]	@ tmp508, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr1
	str	r6, [r4, #1932]	@ tmp508, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength1
	strb	r6, [r7, #3177]	@ tmp508, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg1
	b	.L246	@
.L254:
	bl	vfmw_dprint_nothing	@
	mov	r6, #0	@ D.38691,
	mov	r0, r6	@, D.38691
	add	sp, sp, #300	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L376:
	ldr	r7, [sp, #16]	@ tmp1266, %sfp
.L250:
	add	r3, r8, #37632	@ ivtmp.178, pCtx,
	sub	lr, r0, #1	@ D.38694, D.38695,
	add	r3, r3, #124	@ ivtmp.178, ivtmp.178,
	mov	r2, #0	@ i,
	b	.L252	@
.L253:
	ldr	ip, [r3, #4]!	@ MEM[base: _122, offset: 0B], MEM[base: _122, offset: 0B]
	ldr	r1, [r3, #-4]	@ MEM[base: _122, offset: 4294967292B], MEM[base: _122, offset: 4294967292B]
	cmp	ip, r1	@ MEM[base: _122, offset: 0B], MEM[base: _122, offset: 4294967292B]
	ble	.L262	@,
.L252:
	cmp	r2, lr	@ i, D.38694
	add	r2, r2, #1	@ i, i,
	bne	.L253	@,
	mov	r0, r0, asl #3	@ D.38695, D.38695,
	ldr	r10, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	add	r2, r0, #66	@ PrevHeaderBytes, D.38695,
	movw	r3, #65461	@ tmp601,
	cmp	r2, #3145728	@ PrevHeaderBytes,
	add	r10, r2, r10	@ D.38699, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	sub	r1, r10, #74	@ D.38699, D.38699,
	str	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	movt	r3, 47	@ tmp601,
	movlt	r2, #0	@ tmp603,
	movge	r2, #1	@ tmp603,
	cmp	r1, r3	@ D.38699, tmp601
	movls	r3, r2	@, tmp607, tmp603
	orrhi	r3, r2, #1	@,, tmp607, tmp603
	cmp	r3, #0	@ tmp607,
	bne	.L262	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	rsb	r2, r10, r2	@ D.38695, D.38699, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38695,
	ble	.L262	@,
	ldr	r1, [r7, #3168]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, r10	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, D.38699
	bl	BsInit	@
	ldr	lr, .L389	@ tmp619,
	ldr	r3, [sp, #12]	@ Num_RPR_Sizes, %sfp
	add	r2, sp, #296	@ tmp1331,,
	add	ip, sp, #56	@ tmp1330,,
	add	r6, sp, #92	@ tmp1334,,
	str	r6, [sp, #168]	@ tmp1334, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	fp, r2, r3, lsl #2	@ tmp621, tmp1331, Num_RPR_Sizes,
	str	r3, [sp, #172]	@ Num_RPR_Sizes, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp619,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp618,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp619,,,,
	ldr	lr, [lr]	@ tmp620,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp618,,,,
	add	r1, sp, #156	@ tmp1335,,
	str	lr, [ip]	@ tmp620, size
	mov	r0, r5	@, pBs
	ldr	r3, [fp, #-240]	@ tmp623, size
	str	r3, [sp, #164]	@ tmp623, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@ D.38691,
	mov	r6, r0	@ D.38691,
	bne	.L254	@,
	ldrb	r3, [r7, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated,
	beq	.L255	@,
	ldr	fp, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	ldr	r3, [fp, #728]	@ _158->s32DSDWaitFlag, _158->s32DSDWaitFlag
	cmp	r3, #1	@ _158->s32DSDWaitFlag,
	beq	.L255	@,
.L256:
	add	r3, r8, #37376	@ pPictureHeader, pCtx,
	add	r1, sp, #156	@ tmp1340,,
	add	r3, r3, #184	@ pPictureHeader, pPictureHeader,
	mov	r2, #140	@,
	str	r3, [sp, #24]	@ pPictureHeader, %sfp
	mov	r0, r3	@, pPictureHeader
	bl	memcpy	@
	ldr	r3, [fp, #8]	@ _12->s32DecMode, _12->s32DecMode
	mov	r0, r8	@, pCtx
	strb	r3, [r7, #3178]	@ _12->s32DecMode, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].UsedDecMode
	bl	Real8_GetImageBuffer	@
	cmp	r0, #0	@,
	beq	.L254	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L272	@,
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldrd	r0, [r2, #56]	@ tmp1343, pCtx_41(D)->pstExtraData,
	strd	r0, [r3, #8]	@ tmp1343, pImg,
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldrd	r0, [r2, #72]	@ tmp1344, pCtx_41(D)->pstExtraData,
	strd	r0, [r3, #16]	@ tmp1344, pImg,
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldrd	r0, [r2, #88]	@ tmp1345, pCtx_41(D)->pstExtraData,
	strd	r0, [r3, #24]	@ tmp1345, pImg,
	mvn	r0, #0	@ tmp1418,
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	mvn	r1, #0	@,
	ldr	r2, [r2, #104]	@ D.38694, _280->DispEnableFlag
	str	r2, [r3, #68]	@ D.38694, pImg_267->DispEnableFlag
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #108]	@ D.38694, _283->DispFrameDistance
	str	r2, [r3, #72]	@ D.38694, pImg_267->DispFrameDistance
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #112]	@ D.38694, _286->DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ D.38694, pImg_267->DistanceBeforeFirstFrame
	ldr	r2, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #128]	@ D.38694, _289->GopNum
	str	r2, [r3, #80]	@ D.38694, pImg_267->GopNum
	ldr	r3, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	strd	r0, [r3, #56]	@ tmp1418, D.38690,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #776]	@ D.38703, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	cmp	r3, #2	@ D.38703,
	beq	.L378	@,
	cmp	r3, #1	@ D.38703,
	ldrb	r3, [r7, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	beq	.L379	@,
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	movne	r3, #2	@ D.38692,
	moveq	r3, #1	@ D.38692,
.L276:
	strb	r3, [r7, #3183]	@ D.38692, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	ldr	r2, [r4, #2052]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r3, [r4, #2056]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	cmp	r2, r3	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	beq	.L277	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_SetRef	@
.L277:
	ldr	r3, [r4, #2056]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	str	r3, [r4, #2052]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	str	r1, [r4, #2056]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_RemovePmv	@
	bl	vfmw_dprint_nothing	@
.L278:
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	mov	fp, r0	@ pCur,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	str	r0, [sp, #12]	@ pFwd, %sfp
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #12]	@ pFwd, %sfp
	cmp	fp, #0	@ pCur,
	cmpne	r3, #0	@, pFwd,
	moveq	r2, #1	@ tmp876,
	movne	r2, #0	@ tmp876,
	cmp	r0, #0	@,
	orreq	r2, r2, #1	@,, tmp882, tmp876
	cmp	r2, #0	@ tmp882,
	bne	.L254	@,
	ldr	r2, [fp, #408]	@ D.38709, pCur_322->pstDecodeFs
	cmp	r2, #0	@ D.38709,
	beq	.L279	@,
	ldr	r1, [fp, #416]	@ pCur_322->pstTfOutFs, pCur_322->pstTfOutFs
	cmp	r1, #0	@ pCur_322->pstTfOutFs,
	beq	.L279	@,
	ldr	r1, [fp, #412]	@ pCur_322->pstDispOutFs, pCur_322->pstDispOutFs
	cmp	r1, #0	@ pCur_322->pstDispOutFs,
	beq	.L279	@,
	ldr	r1, [r0, #408]	@ D.38709, pBwd_330->pstDecodeFs
	cmp	r1, #0	@ D.38709,
	ldrne	r2, [r1, #12]	@ D.38693, _337->PhyAddr
	ldreq	r2, [r2, #12]	@ D.38693, _334->PhyAddr
	str	r2, [r8, #56]	@ D.38693, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].BwdRefPhyAddr
	ldr	r2, [r3, #408]	@ D.38709, pFwd_326->pstDecodeFs
	cmp	r2, #0	@ D.38709,
	ldreq	r2, [fp, #408]	@ pCur_322->pstDecodeFs, pCur_322->pstDecodeFs
	ldr	r2, [r2, #12]	@ D.38693,
	str	r3, [sp, #20]	@ pFwd, %sfp
	str	r0, [sp, #12]	@ pBwd, %sfp
	str	r2, [r8, #60]	@ D.38693, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].FwdRefPhyAddr
	ldr	r2, [fp, #408]	@ pCur_322->pstDecodeFs, pCur_322->pstDecodeFs
	ldr	r2, [r2, #12]	@ _350->PhyAddr, _350->PhyAddr
	str	r2, [r8, #64]	@ _350->PhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].CurPicPhyAddr
	ldr	r2, [fp, #420]	@ pCur_322->PmvAddr, pCur_322->PmvAddr
	str	r2, [r8, #84]	@ pCur_322->PmvAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].CurrPmvPhyAddr
	ldr	r2, [r0, #420]	@ pBwd_330->PmvAddr, pBwd_330->PmvAddr
	str	r2, [r8, #88]	@ pBwd_330->PmvAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].ColPmvPhyAddr
	ldr	r2, [fp, #412]	@ pCur_322->pstDispOutFs, pCur_322->pstDispOutFs
	ldr	r2, [r2, #12]	@ _360->PhyAddr, _360->PhyAddr
	str	r2, [r8, #68]	@ _360->PhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].DispFramePhyAddr
	bl	vfmw_dprint_nothing	@
	ldr	r2, [fp, #412]	@ pCur_322->pstDispOutFs, pCur_322->pstDispOutFs
	ldr	r2, [r2, #20]	@ _365->Stride, _365->Stride
	str	r2, [r8, #72]	@ _365->Stride, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].DDRStride
	ldr	r2, [fp, #412]	@ pCur_322->pstDispOutFs, pCur_322->pstDispOutFs
	ldr	r2, [r2, #32]	@ _369->ChromOffset, _369->ChromOffset
	str	r2, [r8, #76]	@ _369->ChromOffset, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].uv_offset
	ldr	r2, [r4, #776]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	cmp	r2, #2	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType,
	ldr	r0, [sp, #12]	@ pBwd, %sfp
	ldr	r3, [sp, #20]	@ pFwd, %sfp
	beq	.L380	@,
.L285:
	ldr	r3, [r4, #804]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR
	mov	r0, r5	@, pBs
	str	r3, [fp, #428]	@ D.38694, pCur_322->TR
	ldr	r3, [r4, #776]	@ D.38703, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	ldr	r2, [r4, #816]	@ QP, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PQUANT
	cmp	r3, #2	@ D.38703,
	strb	r3, [r8, #20]	@ D.38703, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	ldr	r3, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	str	r2, [sp, #12]	@ QP, %sfp
	str	r3, [r8, #12]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicWidthInMb
	ldr	r3, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	str	r3, [r8, #16]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicHeightInMb
	ldr	r3, [r4, #1976]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0
	str	r3, [r8, #24]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].Ratio0
	ldr	r3, [r4, #1980]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1
	str	r2, [r8, #32]	@ QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PQUANT
	str	r3, [r8, #28]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].Ratio1
	ldr	r3, [r4, #880]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP
	str	r3, [r8, #36]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PrevPicQP
	ldr	r3, [r4, #884]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP
	str	r3, [r8, #40]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PrevPicMb0QP
	strne	r2, [r4, #880]	@ QP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP
	bl	BsPos	@
	ldr	r3, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	ands	r0, r0, #-2147483641	@ D.38695,,
	submi	r0, r0, #1	@ D.38695, D.38695,
	mvnmi	r0, r0, asl #29	@ D.38695, D.38695,
	mvnmi	r0, r0, lsr #29	@ D.38695, D.38695,
	addmi	r0, r0, #1	@ D.38695, D.38695,
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	str	r0, [r4, #856]	@ D.38695, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	ldreq	r3, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	moveq	r0, r5	@, pBs
	ldreq	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	movne	r0, r5	@, pBs
	ldrne	r3, [r4, #896]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	ldreq	fp, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	rsbeq	r3, r2, r3	@ D.38695, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldrne	fp, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	rsb	fp, fp, r3	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	bl	BsPos	@
	ldr	r3, [r4, #1920]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	mov	fp, fp, asl #3	@ D.38695, D.38695,
	add	r10, r10, r3	@ D.38694, D.38699, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	rsb	r0, r0, fp	@ D.38695,, D.38695
	str	r0, [r4, #860]	@ D.38695, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	mov	r0, r5	@, pBs
	bl	BsPos	@
	ldr	r2, [r4, #820]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].OSVQUANT
	ldr	ip, [r4, #812]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Deblocking_Filter_Passthrough
	mov	r1, #1	@ tmp1058,
	str	r2, [r4, #840]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].osvquant
	str	ip, [r4, #844]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].dblk_filter_passthrough
	add	r3, r0, #7	@ tmp1022, D.38695,
	cmp	r0, #0	@ D.38695,
	ldr	lr, [sp, #12]	@ QP, %sfp
	movlt	r0, r3	@ D.38695, tmp1022
	mov	r3, #0	@ tmp1028,
	add	r0, r10, r0, asr #3	@ D.38694, D.38694, D.38695,
	str	r3, [r4, #868]	@ tmp1028, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_1
	str	r0, [r4, #864]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_0
	str	lr, [r4, #836]	@ QP, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].SliceQP
	str	r3, [r4, #872]	@ tmp1028, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_1
	str	r3, [r4, #876]	@ tmp1028, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_1
	str	r3, [r4, #848]	@ tmp1028, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].first_mb_in_slice
	str	r0, [r8, #92]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamPhyAddr
	ldr	r0, [r4, #856]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	str	r0, [r8, #100]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamBitOffset
	ldr	r0, [r4, #860]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	str	ip, [r8, #116]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].dblk_filter_passthrough
	str	r3, [r8, #96]	@ tmp1028, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamPhyAddr
	str	r0, [r8, #108]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamLength
	str	r3, [r8, #104]	@ tmp1028, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamBitOffset
	str	r3, [r8, #112]	@ tmp1028, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamLength
	str	r2, [r8, #120]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].osvquant
	str	r3, [r8, #128]	@ tmp1028, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].first_mb_in_slice
	str	lr, [r8, #124]	@ QP, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].sliceqp
	str	r1, [r8, #44]	@ tmp1058, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].TotalSliceNum
	ldr	r2, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	cmp	r2, r1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	bls	.L311	@,
	ldr	fp, [r4, #896]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	movw	r0, #65535	@ tmp1071,
	ldr	r2, [sp, #16]	@ PrevHeaderBytes, %sfp
	movt	r0, 47	@ tmp1071,
	add	fp, r2, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	cmp	fp, r0	@ PrevOffsetBytes, tmp1071
	bgt	.L372	@,
	cmp	fp, #73	@ PrevOffsetBytes,
	ble	.L372	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.38695, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38695,
	ble	.L372	@,
	add	r10, r8, #37632	@ ivtmp.166, pCtx,
	str	r6, [sp, #44]	@ D.38691, %sfp
	add	r10, r10, #128	@ ivtmp.166, ivtmp.166,
	str	r3, [sp, #40]	@ tmp1028, %sfp
	str	r0, [sp, #32]	@ tmp1071, %sfp
	mov	r6, r1	@ i, i
	str	r1, [sp, #20]	@ i, %sfp
	b	.L302	@
.L303:
	ldr	r3, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	add	r6, r6, #1	@ i, i,
	cmp	r3, r6	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, i
	bls	.L381	@,
	ldr	r3, [sp, #16]	@ PrevHeaderBytes, %sfp
	ldr	ip, [r10, #4]!	@ MEM[base: _109, offset: 0B], MEM[base: _109, offset: 0B]
	add	fp, r3, ip	@ PrevOffsetBytes, PrevHeaderBytes, MEM[base: _109, offset: 0B]
	ldr	r3, [sp, #32]	@ tmp1278, %sfp
	cmp	fp, r3	@ PrevOffsetBytes, tmp1278
	bgt	.L372	@,
	cmp	fp, #73	@ PrevOffsetBytes,
	ble	.L372	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.38695, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.38695,
	ble	.L372	@,
.L302:
	ldr	r1, [r7, #3168]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, fp	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, PrevOffsetBytes
	bl	BsInit	@
	mov	r1, #0	@,
	mov	r0, r5	@, pBs
	ldr	ip, [sp, #24]	@ pPictureHeader, %sfp
	add	r3, sp, #52	@ tmp1356,,
	add	r2, sp, #48	@ tmp1357,,
	str	ip, [sp, #4]	@ pPictureHeader,
	add	ip, sp, #56	@ tmp1359,,
	str	ip, [sp]	@ tmp1359,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L303	@,
	ldr	r3, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	ldr	r2, [sp, #48]	@ mbn, iSliceMBA
	cmp	r3, #0	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb,
	str	r2, [sp, #28]	@ mbn, %sfp
	beq	.L382	@,
	ldr	r3, [sp, #56]	@ D.38695, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r2, [sp, #12]	@ QP, %sfp
	cmp	r3, #0	@ D.38695,
	movge	r2, r3	@ QP, D.38695
	str	r2, [sp, #12]	@ QP, %sfp
	bl	BsPos	@
	ldr	r2, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	sub	lr, r2, #1	@ D.38694, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	cmp	lr, r6	@ D.38694, i
	mov	r3, r0, asr #31	@ tmp1115, D.38695,
	mov	r1, r3, lsr #29	@ tmp1116, tmp1115,
	add	r3, r0, r1	@ tmp1117, D.38695, tmp1116
	and	r3, r3, #7	@ tmp1118, tmp1117,
	rsb	r3, r1, r3	@ D.38695, tmp1116, tmp1118
	str	r3, [r4, #856]	@ D.38695, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	beq	.L383	@,
	cmp	r6, #254	@ i,
	bhi	.L254	@,
	ldr	r3, [r10, #4]	@ MEM[base: _111, offset: 4B], MEM[base: _111, offset: 4B]
	mov	r0, r5	@, pBs
	ldr	r2, [r10]	@ MEM[base: _111, offset: 0B], MEM[base: _111, offset: 0B]
.L371:
	rsb	r3, r2, r3	@ D.38695, MEM[base: _111, offset: 0B], MEM[base: _111, offset: 4B]
	mov	r3, r3, asl #3	@ D.38695, D.38695,
	str	r3, [sp, #36]	@ D.38695, %sfp
	bl	BsPos	@
	ldr	r3, [sp, #36]	@ D.38695, %sfp
	rsb	r0, r0, r3	@ D.38695,, D.38695
	ldr	r3, [r4, #1920]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	str	r0, [r4, #860]	@ D.38695, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	mov	r0, r5	@, pBs
	add	fp, fp, r3	@ D.38694, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	bl	BsPos	@
	mov	r1, #44	@ tmp1364,
	ldr	lr, [r4, #812]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Deblocking_Filter_Passthrough
	str	lr, [r4, #844]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].dblk_filter_passthrough
	ldr	ip, [sp, #20]	@ HoldSliceNum, %sfp
	add	r2, r0, #7	@ tmp1155, D.38695,
	cmp	r0, #0	@ D.38695,
	movlt	r0, r2	@ D.38695, tmp1155
	add	r2, ip, #1	@ HoldSliceNum, HoldSliceNum,
	mla	r3, r1, ip, r8	@ tmp1182, tmp1364, HoldSliceNum, pCtx
	mov	ip, r2	@ HoldSliceNum, HoldSliceNum
	str	ip, [sp, #20]	@ HoldSliceNum, %sfp
	cmp	ip, #131	@ HoldSliceNum,
	ldr	ip, [sp, #12]	@ QP, %sfp
	add	r0, fp, r0, asr #3	@ D.38694, D.38694, D.38695,
	ldr	r1, [r4, #820]	@ D.38694, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].OSVQUANT
	ldr	fp, [sp, #40]	@ tmp1276, %sfp
	str	ip, [r4, #836]	@ QP, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].SliceQP
	ldr	ip, [sp, #28]	@ mbn, %sfp
	str	r0, [r4, #864]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_0
	str	r1, [r4, #840]	@ D.38694, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].osvquant
	str	fp, [r4, #868]	@ tmp1276, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_1
	str	fp, [r4, #872]	@ tmp1276, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_1
	str	fp, [r4, #876]	@ tmp1276, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_1
	str	ip, [r4, #848]	@ mbn, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].first_mb_in_slice
	str	r0, [r3, #92]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamPhyAddr
	ldr	r0, [r4, #856]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	ldr	r2, [sp, #20]	@ HoldSliceNum, %sfp
	str	r0, [r3, #100]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamBitOffset
	add	r0, r3, #108	@ tmp1211, tmp1182,
	str	r0, [sp, #36]	@ tmp1211, %sfp
	ldr	r0, [r4, #860]	@ tmp1373, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	str	fp, [r3, #96]	@ tmp1276, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamPhyAddr
	str	fp, [r3, #104]	@ tmp1276, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamBitOffset
	str	r0, [r3, #108]	@ tmp1373, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamLength
	ldr	r0, [sp, #36]	@ tmp1211, %sfp
	str	fp, [r0, #4]	@ tmp1276, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].StreamLength
	str	r1, [r3, #120]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].osvquant
	ldr	r1, [sp, #12]	@ QP, %sfp
	str	lr, [r3, #116]	@ D.38694, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].dblk_filter_passthrough
	str	r1, [r3, #124]	@ QP, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].sliceqp
	ldr	r1, [sp, #28]	@ mbn, %sfp
	str	r1, [r3, #128]	@ mbn, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_672].first_mb_in_slice
	str	r2, [r8, #44]	@ HoldSliceNum, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].TotalSliceNum
	ble	.L303	@,
	mov	r0, r8	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L372	@,
	cmp	r9, #0	@ __p,
	str	r9, [r8, #4]	@ __p, pCtx_41(D)->pRv8DecParam
	beq	.L254	@,
	ldr	r3, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	ldr	r2, [r3, #708]	@ D.38695, _515->stDisParams.s32Mode
	cmp	r2, #1	@ D.38695,
	beq	.L384	@,
	cmp	r2, #2	@ D.38695,
	bne	.L303	@,
	ldr	r3, [r3, #712]	@ _515->stDisParams.s32DisNums, _515->stDisParams.s32DisNums
	cmp	r3, #0	@ _515->stDisParams.s32DisNums,
	ble	.L303	@,
	ldrb	r3, [r8, #20]	@ zero_extendqisi2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	cmp	r3, #2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType,
	bne	.L303	@,
	mov	r3, #0	@ tmp1381,
	str	r3, [r8, #4]	@ tmp1381, pCtx_41(D)->pRv8DecParam
	mov	r2, r3	@, tmp1381
	ldr	r1, [r4, #2060]	@, pCtx_41(D)->CodecInfo.CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, r3	@ D.38691, tmp2
	bl	FSP_SetDisplay	@
	ldr	r2, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	mov	r1, r8	@, pCtx
	mov	r0, #8	@,
	ldr	r3, [r2, #712]	@ _529->stDisParams.s32DisNums, _529->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.38695, _529->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.38695, _529->stDisParams.s32DisNums
	bl	ReleasePacket	@
	b	.L244	@
.L255:
	ldr	r3, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	ldr	fp, [r3, #692]	@ _160->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _160->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	fp, #1	@ _160->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L385	@,
.L257:
	ldr	r2, .L389+4	@ tmp678,
	mov	r1, #0	@ tmp677,
	str	r1, [r3, #728]	@ tmp677, _21->s32DSDWaitFlag
	ldr	r3, [r2]	@ D.38704, g_event_report
	cmp	r3, r1	@ D.38704,
	beq	.L266	@,
	ldr	ip, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	add	r2, sp, #56	@ tmp1337,,
	ldr	r0, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	mov	r1, #2	@,
	ldr	lr, [sp, #252]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	ip, [sp, #56]	@ movhi	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, para
	ldr	ip, [sp, #248]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	strh	r0, [sp, #58]	@ movhi	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, para
	strh	lr, [sp, #60]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	strh	ip, [sp, #62]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	blx	r3	@ D.38704
.L266:
	mov	r2, #1	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	add	fp, r8, #38912	@ D.38706, pCtx,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	add	fp, fp, #56	@ D.38706, D.38706,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_ClearLogicFs	@
	mov	r3, #0	@ tmp711,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	str	r3, [r4, #2052]	@ tmp711, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	str	r3, [r4, #2056]	@ tmp711, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	str	r3, [sp, #12]	@ tmp711, %sfp
	bl	FSP_GetNullLogicFs	@
	mov	r1, fp	@, D.38706
	ldr	r3, [sp, #12]	@ tmp711, %sfp
	str	r0, [r4, #2056]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	str	r0, [r4, #2052]	@ D.38695, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	strb	r3, [r7, #3183]	@ tmp711, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r3, [sp, #252]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_width_in_mb,
	bhi	.L254	@,
	ldr	r3, [sp, #248]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L254	@,
	ldr	r3, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _239->stChanOption.s32ReRangeEn, _239->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _239->stChanOption.s32ReRangeEn,
	bne	.L267	@,
	ldr	r3, [r3, #32]	@ _239->eCapLevel, _239->eCapLevel
	cmp	r3, #25	@ _239->eCapLevel,
	beq	.L386	@,
.L267:
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L269	@,
	ldr	r3, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _247->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _247->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _247->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L271	@,
	ldr	r3, [r4, #2460]	@ pCtx_41(D)->DSDNeedClearQue, pCtx_41(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_41(D)->DSDNeedClearQue,
	beq	.L271	@,
.L269:
	bl	vfmw_dprint_nothing	@
	mov	r1, r8	@, pCtx
	mov	r0, #6	@,
	add	r2, sp, #156	@ tmp1338,,
	bl	Real8_ArrangeVHBMem	@
	cmp	r0, #0	@,
	beq	.L254	@,
	ldr	fp, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	b	.L256	@
.L386:
	ldrb	r3, [r7, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated,
	bne	.L269	@,
.L271:
	mov	r0, fp	@, D.38706
	bl	ResetVoQueue	@
	b	.L269	@
.L385:
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	mov	r0, r8	@, pCtx
	mov	r3, #0	@ tmp631,
	str	r3, [sp, #48]	@ tmp631, NewNum
	str	r3, [sp, #52]	@ tmp631, ReadNum
	str	r3, [sp, #56]	@ tmp631, RefNum
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L262	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	mov	r0, r8	@, pCtx
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L262	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pImage
	add	r3, sp, #48	@,,
	strne	fp, [r0, #376]	@ _160->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_174->u32IsLastFrame
	add	r2, sp, #52	@,,
	add	r1, sp, #56	@ tmp1336,,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r8]	@ D.38690, pCtx_41(D)->pstExtraData
	ldr	r1, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _180->s32DSDThrWidth, _180->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _180->s32DSDThrWidth, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb,
	bcc	.L260	@,
	ldr	r1, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _180->s32DSDThrHeight, _180->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _180->s32DSDThrHeight, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb,
	bcc	.L260	@,
	ldr	r2, [sp, #52]	@ ReadNum, ReadNum
	ldr	r1, [sp, #48]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.38695, ReadNum, NewNum
	cmp	r2, #0	@ D.38695,
	mov	r2, #1	@ tmp667,
	ble	.L368	@,
.L367:
	str	r2, [r3, #728]	@ tmp673, _180->s32DSDWaitFlag
	b	.L262	@
.L379:
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	movne	r3, #2	@ D.38692,
	bne	.L276	@,
	b	.L262	@
.L378:
	ldrb	r3, [r7, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	bhi	.L278	@,
.L372:
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, #0	@ D.38691,
	bl	FSP_ClearLogicFs	@
	b	.L244	@
.L380:
	ldr	r3, [r3, #428]	@ D.38695, pFwd_326->TR
	ldr	r2, [r4, #804]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR
	ldr	r1, [r0, #428]	@ pBwd_330->TR, pBwd_330->TR
	subs	r2, r2, r3	@ trb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR, D.38695
	rsb	r3, r3, r1	@ trd, D.38695, pBwd_330->TR
	ldrmi	r1, [r4, #800]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	addmi	r2, r2, r1	@ trb, trb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	cmp	r3, #0	@ trd,
	ldrlt	r1, [r4, #800]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	addlt	r3, r3, r1	@ trd, trd, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	cmp	r2, r3	@ trb, trd
	movgt	r2, #0	@ trb,
	cmp	r3, #0	@ trd,
	ble	.L314	@,
	mov	r1, r3	@, trd
	mov	r0, r2, asl #14	@, trb,
	str	r3, [sp, #20]	@ trd, %sfp
	str	r2, [sp, #12]	@ trb, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #20]	@ trd, %sfp
	ldr	r2, [sp, #12]	@ trb, %sfp
	str	r0, [sp, #28]	@ Ratio1, %sfp
	rsb	r0, r2, r3	@ D.38695, trb, trd
	mov	r1, r3	@, trd
	str	r2, [sp, #20]	@ trb, %sfp
	mov	r0, r0, asl #14	@, D.38695,
	str	r3, [sp, #12]	@ trd, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #12]	@ trd, %sfp
	ldr	r2, [sp, #20]	@ trb, %sfp
	ldr	ip, [sp, #28]	@ Ratio1, %sfp
.L289:
	str	r2, [r4, #1968]	@ trb, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].trb
	str	r3, [r4, #1972]	@ trd, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].trd
	str	ip, [r4, #1976]	@ Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0
	str	r0, [r4, #1980]	@ Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1
	b	.L285	@
.L279:
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, #0	@ D.38691,
	bl	FSP_ClearLogicFs	@
	bl	vfmw_dprint_nothing	@
	b	.L244	@
.L383:
	add	r2, r2, #6592	@ tmp1134, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	ldr	r3, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	add	r2, r2, #5	@ tmp1134, tmp1134,
	ldr	r1, [sp, #16]	@ PrevHeaderBytes, %sfp
	mov	r0, r5	@, pBs
	add	r2, r7, r2, lsl #2	@ tmp1135, tmp1266, tmp1134,
	rsb	r3, r1, r3	@ D.38695, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldr	r2, [r2, #3172]	@ tmp1138, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	b	.L371	@
.L381:
	ldr	r6, [sp, #44]	@ D.38691, %sfp
.L311:
	ldr	r5, [r8, #4]	@ pCtx_41(D)->pRv8DecParam, pCtx_41(D)->pRv8DecParam
	mov	r10, #1	@ tmp1064,
	str	r10, [r8, #48]	@ tmp1064, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].FstSlcGrp
	cmp	r5, #0	@ pCtx_41(D)->pRv8DecParam,
	beq	.L387	@,
.L296:
	ldr	r3, [r8]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r3, [r3, #512]	@ D.38695, _558->s32Compress_en
	str	r3, [r7, #3164]	@ D.38695, pCtx_41(D)->Rv8DecParam.Compress_en
	b	.L244	@
.L382:
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, r3	@ D.38691, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	bl	FSP_ClearLogicFs	@
	b	.L244	@
.L387:
	mov	r0, r8	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	streq	r9, [r8, #4]	@ __p, pCtx_41(D)->pRv8DecParam
	beq	.L296	@,
	mov	r2, r10	@, tmp1064
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, r5	@ D.38691, pCtx_41(D)->pRv8DecParam
	bl	FSP_ClearLogicFs	@
	b	.L244	@
.L272:
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, r3	@ D.38691, pImg
	bl	FSP_ClearLogicFs	@
	b	.L244	@
.L384:
	ldrb	r3, [r8, #20]	@ zero_extendqisi2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	cmp	r3, #2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType,
	bne	.L303	@,
	mov	r3, #0	@ tmp1380,
	str	r3, [r8, #4]	@ tmp1380, pCtx_41(D)->pRv8DecParam
	mov	r2, r3	@, tmp1380
	ldr	r1, [r4, #2060]	@, pCtx_41(D)->CodecInfo.CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r6, r3	@ D.38691, tmp2
	bl	FSP_SetDisplay	@
	mov	r1, r8	@, pCtx
	mov	r0, #8	@,
	bl	ReleasePacket	@
	b	.L244	@
.L388:
	ldr	r2, [sp, #52]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L264	@,
	mov	r2, #0	@ tmp676,
.L368:
	str	r2, [r4, #2460]	@ tmp676, pCtx_41(D)->DSDNeedClearQue
	b	.L257	@
.L260:
	ldr	r2, [sp, #48]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L388	@,
.L264:
	mov	r2, #1	@ tmp673,
	b	.L367	@
.L314:
	mov	r0, #0	@ Ratio1,
	mov	ip, r0	@ Ratio1, Ratio1
	b	.L289	@
.L390:
	.align	2
.L389:
	.word	.LANCHOR0+380
	.word	g_event_report
	.fnend
	.size	REAL8DEC_Decode, .-REAL8DEC_Decode
	.align	2
	.global	REAL8DEC_RecycleImage
	.type	REAL8DEC_RecycleImage, %function
REAL8DEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pCtx
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #36864	@ tmp118, pCtx,
	mov	r5, r1	@ ImgID, ImgID
	mov	r2, #0	@,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r0, #1	@ D.38725,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL8DEC_RecycleImage, .-REAL8DEC_RecycleImage
	.align	2
	.global	REAL8DEC_GetRemainImg
	.type	REAL8DEC_GetRemainImg, %function
REAL8DEC_GetRemainImg:
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
	addeq	r5, r0, #38912	@ D.38729, pCtx,
	addeq	r5, r5, #56	@ D.38729, D.38729,
	beq	.L401	@,
	add	r6, r0, #36864	@ tmp137, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L412	@,
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L410	@,
.L412:
	add	r5, r4, #38912	@ D.38729, pCtx,
	add	r5, r5, #56	@ D.38729, D.38729,
.L401:
	mov	r0, r5	@, D.38729
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L410:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ D.38729, pCtx,
	bl	Real8_SetImgFormat	@
	mov	r3, #1	@ tmp150,
	mov	r2, r3	@, tmp150
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	add	r5, r5, #56	@ D.38729, D.38729,
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2456]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	mov	r3, r5	@, D.38729
	mov	r1, #8	@,
	str	r7, [sp]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L398	@,
	mov	r2, #0	@,
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
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
	.size	REAL8DEC_GetRemainImg, .-REAL8DEC_GetRemainImg
	.align	2
	.global	REAL8DEC_VDMPostProc
	.type	REAL8DEC_VDMPostProc, %function
REAL8DEC_VDMPostProc:
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
	mov	r0, #8	@,
	add	r7, r5, #8192	@ tmp225, pCtx,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L414	@,
	ldr	r3, [r4, #776]	@ D.38737, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ D.38737,
	andne	r8, r8, #31	@ D.38739, Mb0QpInCurrPic,
	strb	r3, [r7, #3181]	@ D.38737, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].LastDecPicCodingType
	strne	r8, [r4, #884]	@ D.38739, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PrevPicMb0QP
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.38735,
	blt	.L416	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.38735,
.L416:
	str	r6, [r0, #180]	@ D.38735, pCurImg_15->error_level
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, pCtx
	bl	Real8_SetImgFormat	@
	ldrb	r3, [r7, #3178]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode,
	beq	.L419	@,
	ldr	r3, [r5]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _33->s32DecOrderOutput, _33->s32DecOrderOutput
	cmp	r3, #1	@ _33->s32DecOrderOutput,
	beq	.L419	@,
	ldr	r3, [r4, #776]	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType,
	beq	.L419	@,
	ldrb	r3, [r7, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum,
	ldrhi	r1, [r4, #2052]	@ D.38736, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FwdFsID
	mvnls	r1, #0	@ D.38736,
	cmn	r1, #1	@ D.38736,
	str	r1, [r4, #2064]	@ D.38736, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	beq	.L421	@,
.L442:
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	mov	r6, r0	@ pToQueImg,
	bl	vfmw_dprint_nothing	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2064]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2456]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	mov	r2, r5	@, pCtx
	add	r3, r3, #56	@,,
	mov	r1, #8	@,
	str	r6, [sp]	@ pToQueImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L441	@,
.L421:
	ldr	r3, [r4, #1952]	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
	mov	r0, #1	@ D.38735,
	add	r3, r3, r0	@ D.38739, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt,
	str	r3, [r4, #1952]	@ D.38739, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
.L414:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L419:
	ldr	r1, [r4, #2060]	@ D.38736, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	cmn	r1, #1	@ D.38736,
	str	r1, [r4, #2064]	@ D.38736, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bne	.L442	@,
	b	.L421	@
.L441:
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2064]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.38735,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	REAL8DEC_VDMPostProc, .-REAL8DEC_VDMPostProc
	.align	2
	.global	REAL8DEC_GetImageBuffer
	.type	REAL8DEC_GetImageBuffer, %function
REAL8DEC_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #36864	@ tmp119, pCtx,
	mov	r5, r0	@ pCtx, pCtx
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38744,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L450	@,
	mov	r0, #0	@ D.38744,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L450:
	add	r1, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.38744,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	REAL8DEC_GetImageBuffer, .-REAL8DEC_GetImageBuffer
	.align	2
	.global	REAL8DEC_Support
	.type	REAL8DEC_Support, %function
REAL8DEC_Support:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1	@ tmp111,
	str	r3, [r0]	@ tmp111, *flag_2(D)
	bx	lr	@
	.fnend
	.size	REAL8DEC_Support, .-REAL8DEC_Support
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
	.type	GetBitsMask, %object
	.size	GetBitsMask, 100
GetBitsMask:
	.word	0
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	65535
	.word	131071
	.word	262143
	.word	524287
	.word	1048575
	.word	2097151
	.word	4194303
	.word	8388607
	.word	16777215
.LC0:
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.type	s_RVVersionEncodingToMinorVersion, %object
	.size	s_RVVersionEncodingToMinorVersion, 32
s_RVVersionEncodingToMinorVersion:
	.word	2
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.word	9999
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
