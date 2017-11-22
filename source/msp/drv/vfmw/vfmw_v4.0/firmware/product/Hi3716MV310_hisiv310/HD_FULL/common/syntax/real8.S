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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(real8)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.real8.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/real8.o
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
	mov	r4, r0	@ D.34089,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34089
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
	mov	r4, r0	@ D.34092,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r0, r4	@, D.34092
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
	ldrb	r3, [r7, r0]	@ zero_extendqisi2	@ D.34096, gs_VLCDecodeTable
	mov	r0, r6	@, pBs
	and	r2, r3, #15	@ D.34097, D.34096,
	mov	r1, r3, lsr #4	@ thisChunksLength, D.34096,
	mov	r3, r3, lsr #5	@ D.34097, D.34096,
	add	r4, r4, r1	@ length, length, thisChunksLength
	orr	r5, r2, r5, asl r3	@ info, D.34097, info,
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #36864	@ tmp133, pCtx,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ pCtx, pCtx
	mov	r1, #1	@,
	add	r7, r0, #8192	@ tmp136, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_NewLogicFs	@
	cmp	r0, #0	@ D.34101,
	str	r0, [r4, #2060]	@ D.34101, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	blt	.L21	@,
	mov	r1, r0	@, D.34101
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_GetLogicFs	@
	subs	r5, r0, #0	@ pLf,
	beq	.L22	@,
	ldr	r2, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].CurFsID
	mov	r0, #18	@,
	ldr	r1, .L23	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #408]	@ D.34103, pLf_30->pstDecodeFs
	cmp	r2, #0	@ D.34103,
	beq	.L19	@,
	ldr	r3, [r5, #412]	@ D.34103, pLf_30->pstDispOutFs
	cmp	r3, #0	@ D.34103,
	beq	.L19	@,
	ldr	r1, [r5, #416]	@ D.34103, pLf_30->pstTfOutFs
	cmp	r1, #0	@ D.34103,
	beq	.L19	@,
	ldr	ip, [r1, #12]	@ _36->PhyAddr, _36->PhyAddr
	mov	r0, #18	@,
	ldr	r3, [r3, #12]	@ _35->PhyAddr, _35->PhyAddr
	ldr	r2, [r2, #12]	@ _34->PhyAddr, _34->PhyAddr
	ldr	r1, .L23+4	@,
	str	ip, [sp]	@ _36->PhyAddr,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34100,
.L15:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L19:
	mov	r0, #1	@ D.34100,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L21:
	ldr	r1, .L23+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	mov	r5, #0	@ tmp160,
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearLogicFs	@
	str	r5, [r4, #2052]	@ tmp160, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	str	r5, [r4, #2056]	@ tmp160, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_GetNullLogicFs	@
	add	r1, r6, #38912	@, pCtx,
	add	r1, r1, #56	@,,
	str	r0, [r4, #2056]	@ D.34101, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].BwdFsID
	str	r0, [r4, #2052]	@ D.34101, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].FwdFsID
	strb	r5, [r7, #3183]	@ tmp160, MEM[(struct RV8_CODECINF *)pCtx_4(D) + 11360B].RefNum
	ldr	r0, [r4, #2456]	@, pCtx_4(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, r5	@ D.34100, tmp160
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L22:
	movw	r2, #555	@,
	ldr	r1, .L23+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.34100, pLf
	b	.L15	@
.L24:
	.align	2
.L23:
	.word	.LC3
	.word	.LC4
	.word	.LC1
	.word	.LC2
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
	mov	r4, r1	@ pCtx, pCtx
	ldr	r1, [r2, #96]	@ D.34113, pPictureHeader_14(D)->pic_width_in_mb
	.pad #52
	sub	sp, sp, #52	@,,
	ldr	r3, [r2, #92]	@ D.34113, pPictureHeader_14(D)->pic_height_in_mb
	cmp	r1, #1	@ D.34113,
	bls	.L27	@,
	cmp	r3, #1	@ D.34113,
	bls	.L27	@,
	ldr	r1, [r4]	@ D.34114, pCtx_12(D)->pstExtraData
	ldr	r3, [r1, #608]	@ _17->stChanOption.s32ReRangeEn, _17->stChanOption.s32ReRangeEn
	cmp	r3, #0	@ _17->stChanOption.s32ReRangeEn,
	ldr	r3, [r1, #32]	@ _17->eCapLevel, _17->eCapLevel
	bne	.L30	@,
	cmp	r3, #25	@ _17->eCapLevel,
	beq	.L53	@,
.L31:
	ldr	r7, [r2, #88]	@ PicWidth, pPictureHeader_14(D)->pic_width_in_pixel
	mov	r8, #5	@ D.34118,
	ldr	r6, [r2, #84]	@ PicHeight, pPictureHeader_14(D)->pic_height_in_pixel
	mov	r5, #2	@ PmvNum,
	mov	r9, #4	@ DecFsNum,
.L36:
	mov	r1, #36	@,
	add	r0, sp, #12	@ tmp203,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.34114, pCtx_12(D)->pstExtraData
	mov	r2, #0	@ tmp175,
	str	r7, [sp, #24]	@ PicWidth, FspInstCfg.s32DecFsWidth
	str	r6, [sp, #28]	@ PicHeight, FspInstCfg.s32DecFsHeight
	ldr	r1, [r3, #32]	@ _57->eCapLevel, _57->eCapLevel
	ldr	r3, [r3, #20]	@ _57->s32DnrDispOutEnable, _57->s32DnrDispOutEnable
	cmp	r1, #24	@ _57->eCapLevel,
	strb	r2, [sp, #14]	@ tmp175, FspInstCfg.s32RprEnable
	strb	r3, [sp, #12]	@ _57->s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	beq	.L42	@,
	uxtb	r3, r5	@ D.34112, PmvNum
	strb	r9, [sp, #17]	@ DecFsNum, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [sp, #19]	@ D.34118, FspInstCfg.s32ExpectedDispFsNum
.L44:
	add	r6, r4, #36864	@ tmp185, pCtx,
	add	r1, sp, #12	@ tmp204,,
	strb	r3, [sp, #20]	@ D.34112, FspInstCfg.s32ExpectedPmvNum
	mov	r5, #0	@ tmp181,
	ldr	r0, [r6, #2456]	@, pCtx_12(D)->ChanID
	strb	r5, [sp, #16]	@ tmp181, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r7, r0, #0	@ D.34115,
	beq	.L54	@,
.L51:
	mov	r0, #0	@ D.34110,
.L49:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L30:
	cmp	r3, #25	@ _17->eCapLevel,
	bne	.L31	@,
	ldr	r7, [r2, #88]	@ D.34113, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r0, [r1, #568]	@ D.34115, _17->stChanOption.s32MaxWidth
	cmp	r7, r0	@ D.34113, D.34115
	bhi	.L55	@,
	ldr	r3, [r2, #84]	@ D.34113, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	ip, [r1, #572]	@ D.34111, _17->stChanOption.s32MaxHeight
	cmp	r3, ip	@ D.34113, D.34111
	bhi	.L39	@,
	ldr	r2, [r1, #596]	@ _17->stChanOption.s32SupportBFrame, _17->stChanOption.s32SupportBFrame
	mov	r6, r3	@ PicHeight, D.34113
	ldr	r9, [r1, #588]	@ DecFsNum, _17->stChanOption.s32MaxRefFrameNum
	cmp	r2, #0	@ _17->stChanOption.s32SupportBFrame,
	bne	.L52	@,
.L47:
	mov	r5, #1	@ PmvNum,
.L41:
	ldrb	r8, [r1, #616]	@ zero_extendqisi2	@ D.34118, _17->stChanOption.s32DisplayFrameNum
	b	.L36	@
.L27:
	mov	r2, r1	@, D.34113
	mov	r0, #0	@,
	ldr	r1, .L58	@,
	bl	dprint_vfmw	@
	b	.L51	@
.L54:
	ldr	r1, [r4]	@ D.34114, pCtx_12(D)->pstExtraData
	add	r3, sp, #8	@,,
	ldr	r0, [r6, #2456]	@, pCtx_12(D)->ChanID
	ldr	r2, [r1, #28]	@, _76->s32SyntaxMemSize
	ldr	r1, [r1, #24]	@, _76->s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, r5	@,
	bne	.L56	@,
	add	r4, r4, #8192	@ tmp195, pCtx,
	mov	r3, #1	@ tmp196,
	mov	r0, r3	@ D.34110, tmp196
	strb	r3, [r4, #3180]	@ tmp196, MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L53:
	ldr	r0, [r2, #88]	@ D.34113, pPictureHeader_14(D)->pic_width_in_pixel
	ldr	r7, [r1, #568]	@ PicWidth, _17->stChanOption.s32MaxWidth
	cmp	r0, r7	@ D.34113, PicWidth
	bhi	.L57	@,
	ldr	r3, [r2, #84]	@ D.34113, pPictureHeader_14(D)->pic_height_in_pixel
	ldr	r6, [r1, #572]	@ PicHeight, _17->stChanOption.s32MaxHeight
	cmp	r3, r6	@ D.34113, PicHeight
	bhi	.L33	@,
	add	r3, r4, #8192	@ tmp164, pCtx,
	ldrb	r0, [r3, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated
	cmp	r0, #1	@ MEM[(struct RV8_CODECINF *)pCtx_12(D) + 11360B].Imgbuf_allocated,
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
	mov	r3, #1	@ D.34112,
	strb	r8, [sp, #19]	@ D.34118, FspInstCfg.s32ExpectedDispFsNum
	b	.L44	@
.L55:
	ldr	ip, [r1, #572]	@ D.34111, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ D.34113, pPictureHeader_14(D)->pic_height_in_pixel
.L39:
	stmia	sp, {r0, ip}	@,,
	mov	r2, r7	@, D.34113
	ldr	r1, .L58+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34110,
	b	.L49	@
.L57:
	ldr	r6, [r1, #572]	@ D.34111, _17->stChanOption.s32MaxHeight
	ldr	r3, [r2, #84]	@ D.34113, pPictureHeader_14(D)->pic_height_in_pixel
.L33:
	mov	r2, r0	@, D.34113
	str	r6, [sp, #4]	@ D.34111,
	str	r7, [sp]	@ PicWidth,
	mov	r0, #0	@,
	ldr	r1, .L58+4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.34110,
	b	.L49	@
.L56:
	ldr	r1, .L58+8	@,
	mov	r0, r7	@, D.34115
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.34110, D.34115
	b	.L49	@
.L59:
	.align	2
.L58:
	.word	.LC5
	.word	.LC6
	.word	.LC7
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
	mov	r4, r0	@ D.34136,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	strb	r4, [r6]	@ D.34136, pPictureHeader_6(D)->pixel_aspect_ratio
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r4, r0	@ D.34136,
	add	r4, r4, #1	@ D.34135, D.34136,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r4, r4, asl #2	@ D.34135, D.34135,
	mov	r0, r5	@, pBs
	str	r4, [r6, #88]	@ D.34135, pPictureHeader_6(D)->pic_width_in_pixel
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.34135,
	mov	r4, r0	@ D.34135,
	beq	.L64	@,
	mov	r0, #0	@ D.34133,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L64:
	mov	r1, #9	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #9	@,
	mov	r7, r0	@ D.34136,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r7, r7, asl #2	@ D.34135, D.34136,
	mov	r0, r4	@ D.34133, D.34135
	str	r7, [r6, #84]	@ D.34135, pPictureHeader_6(D)->pic_height_in_pixel
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
	ldr	r3, [r0, #88]	@ D.34139, pPictureHeader_3(D)->pic_width_in_pixel
	ldr	r2, [r0, #84]	@ D.34139, pPictureHeader_3(D)->pic_height_in_pixel
	cmp	r3, #128	@ D.34139,
	beq	.L82	@,
	cmp	r3, #176	@ D.34139,
	beq	.L83	@,
	cmp	r3, #352	@ D.34139,
	beq	.L84	@,
	cmp	r3, #704	@ D.34139,
	beq	.L85	@,
	cmp	r3, #1408	@ D.34139,
	beq	.L86	@,
.L67:
	add	r3, r3, #15	@ D.34139, D.34139,
	add	r2, r2, #15	@ D.34139, D.34139,
	mov	r3, r3, lsr #4	@ D.34139, D.34139,
	mov	r2, r2, lsr #4	@ D.34139, D.34139,
	str	r3, [r0, #28]	@ D.34139, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	mul	r3, r3, r2	@ D.34139, D.34139, D.34139
	str	r2, [r0, #24]	@ D.34139, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
	sub	r3, r3, #1	@ D.34140, D.34139,
	cmp	r3, #47	@ D.34140,
	movls	r2, #0	@ i,
	bls	.L68	@,
	cmp	r3, #98	@ D.34140,
	bls	.L77	@,
	cmp	r3, #396	@ D.34140,
	bcc	.L78	@,
	cmp	r3, #1584	@ D.34140,
	bcc	.L79	@,
	cmp	r3, #6336	@ D.34140,
	movcs	r2, #5	@ i,
	bcc	.L81	@,
.L68:
	ldr	r3, .L87	@ tmp134,
	add	r3, r3, r2, lsl #2	@ tmp135, tmp134, i,
	ldr	r3, [r3, #256]	@ tmp137, MBA_FieldWidth
	str	r3, [r0, #32]	@ tmp137, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_mbaSize
	bx	lr	@
.L86:
	cmp	r2, #1152	@ D.34139,
	bne	.L67	@,
	mov	r2, #88	@ tmp129,
	mov	r3, #72	@ tmp130,
	str	r2, [r0, #28]	@ tmp129, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp130, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L81:
	mov	r2, #4	@ i,
	b	.L68	@
.L82:
	cmp	r2, #96	@ D.34139,
	bne	.L67	@,
	mov	r2, #8	@ tmp121,
	mov	r3, #6	@ tmp122,
	str	r2, [r0, #28]	@ tmp121, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	mov	r2, #0	@ i,
	str	r3, [r0, #24]	@ tmp122, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
	b	.L68	@
.L83:
	cmp	r2, #144	@ D.34139,
	bne	.L67	@,
	mov	r2, #11	@ tmp123,
	mov	r3, #9	@ tmp124,
	str	r2, [r0, #28]	@ tmp123, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp124, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L77:
	mov	r2, #1	@ i,
	b	.L68	@
.L84:
	cmp	r2, #288	@ D.34139,
	bne	.L67	@,
	mov	r2, #22	@ tmp125,
	mov	r3, #18	@ tmp126,
	str	r2, [r0, #28]	@ tmp125, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp126, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L78:
	mov	r2, #2	@ i,
	b	.L68	@
.L85:
	cmp	r2, #576	@ D.34139,
	bne	.L67	@,
	mov	r2, #44	@ tmp127,
	mov	r3, #36	@ tmp128,
	str	r2, [r0, #28]	@ tmp127, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nMBs
	str	r3, [r0, #24]	@ tmp128, MEM[(struct RV8_ParsePicParam *)pPictureHeader_3(D) + 4B].m_nGOBs
.L79:
	mov	r2, #3	@ i,
	b	.L68	@
.L88:
	.align	2
.L87:
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
	add	r6, r0, #7	@ tmp121, D.34148,
	cmp	r0, #0	@ D.34148,
	movlt	r0, r6	@ D.34148, tmp121
	mov	r6, r0, asr #3	@ tmp122, D.34148,
	sub	r6, r6, #2	@ RemainByte, tmp122,
	cmp	r6, #0	@ RemainByte,
	movgt	r4, #0	@ i,
	bgt	.L92	@,
	b	.L93	@
.L99:
	bl	BsSkip	@
	cmp	r4, r6	@ i, RemainByte
	beq	.L93	@,
.L92:
	mov	r1, #17	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	add	r4, r4, #1	@ i, i,
	mov	r1, #8	@,
	mov	r3, r0	@ D.34146,
	cmp	r3, #1	@ D.34146,
	mov	r0, r5	@, pBs
	bne	.L99	@,
	mov	r0, r3	@, D.34146
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L93:
	mov	r3, #0	@ D.34146,
	mov	r0, r3	@, D.34146
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
	sub	ip, r1, #1	@ D.34154, nbits,
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
	beq	.L101	@,
	ands	r5, r4, r6	@ D.34154, w, msb
	bne	.L101	@,
	ldr	r3, .L108	@ tmp147,
	add	r10, r3, r10, lsl #2	@ tmp148, tmp147, nbits,
	ldr	r10, [r10, #280]	@ D.34153, GetBitsMask
	b	.L102	@
.L103:
	tst	r4, r6	@ w, msb
	bne	.L101	@,
.L102:
	mov	r0, r8	@, pBs
	and	r4, r10, r4, asl #1	@ D.34154, D.34153, w,
	bl	Real8_CB_Get1Bit	@
	add	r5, r5, #1	@ n, n,
	orr	r4, r0, r4	@ w,, D.34154
	cmp	r7, r4	@ code, w
	cmpne	r9, r5	@, lookahead, n
	bhi	.L103	@,
.L101:
	rsb	r0, r7, r4	@, code, w
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L109:
	.align	2
.L108:
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
	ldr	lr, .L112	@ tmp116,
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
.L113:
	.align	2
.L112:
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
	beq	.L116	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	Real8_CB_FindNextSliceStartCode	@
	adds	r0, r0, #0	@ D.34163,,
	movne	r0, #1	@ D.34163,
	ldmfd	sp!, {r4, pc}	@
.L116:
	mov	r0, #0	@ D.34163,
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
	beq	.L154	@,
	cmp	r1, #0	@ bFirstSlice,
	beq	.L155	@,
	mov	r2, #0	@ tmp206,
	str	r2, [r5]	@ tmp206, *iSliceMBA_53(D)
	ldr	r2, [sp, #32]	@ tmp211, iSQUANT
	mvn	r3, #0	@ tmp207,
	mov	r0, #1	@ D.34169,
	str	r3, [r2]	@ tmp207, *iSQUANT_57(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L154:
	cmp	r1, #0	@ bFirstSlice,
	bne	.L122	@,
	mov	r1, #3	@,
	ldr	r9, [r4, #40]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	bl	BsShow	@
	mov	r1, #3	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	cmp	r8, #7	@ D.34170,
	bhi	.L125	@,
	ldr	r3, .L158	@ tmp188,
	add	r8, r3, r8, lsl #2	@ tmp189, tmp188, D.34170,
	ldr	r3, [r8, #416]	@ tmp191, s_RVVersionEncodingToMinorVersion
	cmp	r3, #2	@ tmp191,
	bhi	.L125	@,
	cmn	r9, #1	@ D.34170,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	movne	r9, #0	@ D.34177,
	moveq	r9, #1	@ D.34177,
	cmp	r9, #0	@ D.34177,
	bne	.L156	@,
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #36]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype
	cmp	r3, r8	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype, D.34170
	bne	.L125	@,
.L127:
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #0	@,
	bne	.L125	@,
	mov	r1, #5	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	uxtb	r0, r8	@ D.34173, D.34170
	cmp	r0, #31	@ D.34173,
	strb	r0, [r4, #6]	@ D.34173, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant
	bhi	.L125	@,
	mov	r1, #1	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	adds	r8, r8, #0	@ tmp196, D.34170,
	mov	r1, #13	@,
	mov	r0, r6	@, pBs
	movne	r8, #1	@ tmp196,
	cmp	r9, #0	@ D.34177,
	strb	r8, [r4, #5]	@ tmp196, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].deblocking_filter_passthrough
	beq	.L128	@,
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r8, [r4, #8]	@ D.34171, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pctszSize
	str	r9, [r4, #44]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr
	cmp	r8, #0	@ D.34171,
	beq	.L146	@,
	mov	r1, r8	@, D.34171
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.34171
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #12]	@ D.34175, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pSizes
	str	r9, [r4, #56]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz
	cmp	r3, #0	@ D.34175,
	beq	.L125	@,
	add	r1, r3, r9, lsl #3	@ tmp199, D.34175, D.34170,
	ldr	r2, [r3, r9, asl #3]	@ width, *_33
	mov	r0, r4	@, pPictureHeader
	ldr	r3, [r1, #4]	@ height, *_36
	str	r2, [r4, #60]	@ width, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pwidth
	str	r2, [r4, #88]	@ width, pPictureHeader_9(D)->pic_width_in_pixel
	str	r3, [r4, #64]	@ height, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pheight
	str	r3, [r4, #84]	@ height, pPictureHeader_9(D)->pic_height_in_pixel
	bl	Real8_CB_SetDimensions	@
.L146:
	ldr	r8, [r4, #32]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.34170
	bl	BsShow	@
	mov	r1, r8	@, D.34170
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #1	@,
	str	r9, [r4, #40]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	strb	r8, [r4, #4]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].rtype
.L122:
	ldr	r2, [r4, #40]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r3, #0	@ tmp204,
	ldr	r1, [sp, #32]	@ tmp209, iSQUANT
	mov	r0, #1	@ D.34169,
	str	r2, [r5]	@ D.34170, *iSliceMBA_53(D)
	ldrb	r2, [r4, #6]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant
	str	r2, [r1]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pquant, *iSQUANT_57(D)
	str	r3, [r7]	@ tmp204, *iSliceGFID_59(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L155:
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	beq	.L157	@,
.L125:
	mov	r0, #0	@ D.34169,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L157:
	ldr	r8, [r4, #32]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.34170
	bl	BsShow	@
	mov	r1, r8	@, D.34170
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r9, [r5]	@ D.34170, *iSliceMBA_53(D)
	ldr	r3, [r4, #32]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	cmp	r3, #11	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize,
	bls	.L138	@,
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@,
	bne	.L125	@,
.L138:
	mov	r1, #5	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #5	@,
	mov	r4, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [sp, #32]	@ tmp210, iSQUANT
	cmp	r4, #31	@ D.34170,
	str	r4, [r3]	@ D.34170, *iSQUANT_57(D)
	bgt	.L125	@,
	mov	r0, r6	@, pBs
	bl	Real8_CB_Get1Bit	@
	cmp	r0, #1	@ D.34171,
	mov	r4, r0	@ D.34171,
	bne	.L125	@,
	mov	r1, #2	@,
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r5, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r5, [r7]	@ D.34170, *iSliceGFID_59(D)
	mov	r0, r4	@ D.34169, D.34171
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L156:
	bl	BsShow	@
	mov	r1, #2	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	str	r8, [r4, #36]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].ptype
	b	.L127	@
.L128:
	bl	BsShow	@
	mov	r1, #13	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #44]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr
	cmp	r3, r8	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].tr, D.34170
	bne	.L125	@,
	ldr	r8, [r4, #8]	@ D.34171, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_pctszSize
	cmp	r8, #0	@ D.34171,
	beq	.L150	@,
	mov	r1, r8	@, D.34171
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, r8	@, D.34171
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldr	r3, [r4, #56]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz
	cmp	r3, r9	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].pctsz, D.34170
	bne	.L125	@,
.L150:
	ldr	r8, [r4, #32]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].m_mbaSize
	mov	r0, r6	@, pBs
	mov	r1, r8	@, D.34170
	bl	BsShow	@
	mov	r1, r8	@, D.34170
	mov	r9, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	mov	r1, #1	@,
	str	r9, [r4, #40]	@ D.34170, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].mba
	mov	r0, r6	@, pBs
	bl	BsShow	@
	mov	r1, #1	@,
	mov	r8, r0	@ D.34170,
	mov	r0, r6	@, pBs
	bl	BsSkip	@
	ldrb	r3, [r4, #4]	@ zero_extendqisi2	@ D.34171, MEM[(struct RV8_ParsePicParam *)pPictureHeader_9(D) + 4B].rtype
	cmp	r3, r8	@ D.34171, D.34170
	bne	.L125	@,
	b	.L122	@
.L159:
	.align	2
.L158:
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
	beq	.L187	@,
	mov	r5, r0	@ pBs, pBs
	mov	r1, #140	@,
	mov	r0, r4	@, pPictureHeader
	bl	__memzero	@
	mov	r1, #24	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #24	@,
	mov	r6, r0	@ D.34184,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r6, #1	@ D.34184,
	bne	.L179	@,
	mov	r0, r5	@, pBs
	add	r1, sp, #20	@ tmp208,,
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #30	@,
	bls	.L179	@,
	ldr	r3, [sp, #20]	@ D.34183, info
	ands	r2, r3, #1	@ D.34183, D.34183,
	bne	.L179	@,
	tst	r3, #2	@ D.34183,
	mov	r0, r5	@, pBs
	strne	r2, [r4, #88]	@ D.34183, pPictureHeader_10(D)->pic_width_in_pixel
	moveq	r1, #176	@ tmp182,
	moveq	r2, #144	@ tmp183,
	streq	r1, [r4, #88]	@ tmp182, pPictureHeader_10(D)->pic_width_in_pixel
	add	r1, sp, #20	@ tmp209,,
	str	r2, [r4, #84]	@ D.34183, pPictureHeader_10(D)->pic_height_in_pixel
	ubfx	r2, r3, #2, #5	@ D.34183, D.34183,,
	ubfx	r3, r3, #7, #8	@ D.34183, D.34183,,
	str	r2, [r4, #120]	@ D.34183, pPictureHeader_10(D)->PQUANT
	str	r3, [r4, #108]	@ D.34183, pPictureHeader_10(D)->TR
	bl	Real8_CB_GetVLCBits	@
	cmp	r0, #1	@ length,
	streq	r0, [r4, #80]	@ length, pPictureHeader_10(D)->PicCodType
	beq	.L174	@,
	cmp	r0, #3	@ length,
	beq	.L188	@,
	cmp	r0, #5	@ length,
	bne	.L179	@,
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #0	@ info,
	bne	.L179	@,
	mov	r3, #2	@ tmp195,
	str	r3, [r4, #80]	@ tmp195, pPictureHeader_10(D)->PicCodType
.L174:
	ldr	r3, [r4, #88]	@ D.34183, pPictureHeader_10(D)->pic_width_in_pixel
	cmp	r3, #0	@ D.34183,
	beq	.L189	@,
.L176:
	sub	r3, r3, #48	@ D.34183, D.34183,
	movw	r2, #8144	@ tmp197,
	cmp	r3, r2	@ D.34183, tmp197
	bhi	.L179	@,
.L186:
	ldr	r3, [r4, #84]	@ pPictureHeader_10(D)->pic_height_in_pixel, pPictureHeader_10(D)->pic_height_in_pixel
	sub	r3, r3, #48	@ D.34183, pPictureHeader_10(D)->pic_height_in_pixel,
	cmp	r3, r2	@ D.34183, tmp197
	bhi	.L179	@,
	mov	r0, r4	@, pPictureHeader
	bl	Real8_CB_SetDimensions	@
	mov	r0, #1	@ Status,
.L162:
	ldr	r3, [r4, #88]	@ pPictureHeader_10(D)->pic_width_in_pixel, pPictureHeader_10(D)->pic_width_in_pixel
	ldr	r2, [r4, #84]	@ pPictureHeader_10(D)->pic_height_in_pixel, pPictureHeader_10(D)->pic_height_in_pixel
	add	r3, r3, #15	@ D.34183, pPictureHeader_10(D)->pic_width_in_pixel,
	add	r2, r2, #15	@ D.34183, pPictureHeader_10(D)->pic_height_in_pixel,
	mov	r3, r3, lsr #4	@ D.34183, D.34183,
	str	r3, [r4, #96]	@ D.34183, pPictureHeader_10(D)->pic_width_in_mb
	mov	r2, r2, lsr #4	@ D.34183, D.34183,
	str	r2, [r4, #92]	@ D.34183, pPictureHeader_10(D)->pic_height_in_mb
	mul	r3, r3, r2	@ D.34183, D.34183, D.34183
	str	r3, [r4, #100]	@ D.34183, pPictureHeader_10(D)->total_mbs
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L188:
	ldr	r3, [sp, #20]	@ info, info
	cmp	r3, #1	@ info,
	moveq	r3, #0	@ tmp193,
	streq	r3, [r4, #80]	@ tmp193, pPictureHeader_10(D)->PicCodType
	beq	.L174	@,
.L179:
	mvn	r0, #1	@ D.34182,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L187:
	str	r1, [sp, #4]	@ pPictureHeader,
	mvn	r2, #0	@ tmp156,
	add	r3, sp, #20	@ tmp159,,
	str	r2, [r1, #40]	@ tmp156, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].mba
	str	r3, [sp]	@ tmp159,
	add	r2, sp, #16	@,,
	add	r3, sp, #12	@,,
	mov	r1, #0	@,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@,
	mvnne	r0, #1	@ Status,
	bne	.L162	@,
	ldr	r3, [r4, #36]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype
	cmp	r3, #3	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype,
	ldrls	pc, [pc, r3, asl #2]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].ptype
	b	.L163	@
.L165:
	.word	.L164
	.word	.L166
	.word	.L167
	.word	.L168
.L189:
	mov	r0, r5	@, pBs
	mov	r1, r4	@, pPictureHeader
	bl	Real8_CB_GetCPFMT	@
	cmp	r0, #0	@,
	beq	.L179	@,
	ldr	r3, [r4, #88]	@ D.34183, pPictureHeader_10(D)->pic_width_in_pixel
	b	.L176	@
.L166:
	mov	r3, #0	@ tmp163,
	str	r3, [r4, #80]	@ tmp163, pPictureHeader_10(D)->PicCodType
	str	r3, [r4, #20]	@ tmp163, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].m_isForcedKey
.L163:
	ldr	r3, [r4, #88]	@ pPictureHeader_10(D)->pic_width_in_pixel, pPictureHeader_10(D)->pic_width_in_pixel
	add	r0, r4, #44	@,,
	movw	r2, #8144	@ tmp175,
	ldrb	r5, [r4, #4]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype
	sub	r3, r3, #48	@ D.34183, pPictureHeader_10(D)->pic_width_in_pixel,
	ldrb	lr, [r4, #5]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough
	cmp	r3, r2	@ D.34183, tmp175
	ldrb	ip, [r4, #6]	@ zero_extendqisi2	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant
	ldmia	r0, {r0, r1, r3}	@,,,
	str	r5, [r4, #112]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].rtype, pPictureHeader_10(D)->Rounding
	str	lr, [r4, #116]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].deblocking_filter_passthrough, pPictureHeader_10(D)->Deblocking_Filter_Passthrough
	str	ip, [r4, #120]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].pquant, pPictureHeader_10(D)->PQUANT
	str	r0, [r4, #108]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].tr, pPictureHeader_10(D)->TR
	str	r1, [r4, #128]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].trb, pPictureHeader_10(D)->TRB
	str	r3, [r4, #132]	@ MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].dbq, pPictureHeader_10(D)->DBQUANT
	bls	.L186	@,
	b	.L179	@
.L168:
	mov	r3, #2	@ tmp166,
	str	r3, [r4, #80]	@ tmp166, pPictureHeader_10(D)->PicCodType
	b	.L163	@
.L167:
	mov	r3, #1	@ tmp165,
	str	r3, [r4, #80]	@ tmp165, pPictureHeader_10(D)->PicCodType
	b	.L163	@
.L164:
	mov	r2, #0	@ tmp161,
	mov	r3, #1	@ tmp162,
	str	r2, [r4, #80]	@ tmp161, pPictureHeader_10(D)->PicCodType
	str	r3, [r4, #20]	@ tmp162, MEM[(struct RV8_ParsePicParam *)pPictureHeader_10(D) + 4B].m_isForcedKey
	b	.L163	@
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
	and	r3, r3, #3	@ D.34191, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].PicCodType,
	str	r3, [r4, #132]	@ D.34191, pImg_8->top_fld_type
	orr	r2, r3, #7168	@ D.34191, D.34191,
	str	r3, [r4, #136]	@ D.34191, pImg_8->bottom_fld_type
	orr	r2, r2, #32	@ D.34191, D.34191,
	str	r2, [r4, #140]	@ D.34191, pImg_8->format
	ldr	r3, [r5, #784]	@ D.34191, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].pic_width_in_pixel
	str	r3, [r4, #144]	@ D.34191, pImg_8->image_width
	ldr	r3, [r5, #780]	@ D.34191, MEM[(struct RV8_PictureHeader *)pCtx_3(D) + 37560B].pic_height_in_pixel
	str	r3, [r4, #148]	@ D.34191, pImg_8->image_height
	bl	SetAspectRatio	@
	ldr	r3, [r6]	@ pCtx_3(D)->pstExtraData, pCtx_3(D)->pstExtraData
	ldr	r3, [r3, #32]	@ _21->eCapLevel, _21->eCapLevel
	cmp	r3, #25	@ _21->eCapLevel,
	beq	.L197	@,
.L192:
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
.L197:
	ldr	r3, [r4, #148]	@ pImg_8->image_height, pImg_8->image_height
	ldr	r1, [r4, #172]	@ D.34191, pImg_8->image_stride
	add	r3, r3, #15	@ D.34191, pImg_8->image_height,
	ldr	r0, [r4, #104]	@ D.34191, pImg_8->luma_phy_addr
	ldr	ip, [r4, #32]	@ D.34194, pImg_8->luma_vir_addr
	mov	r2, r3, lsr #4	@ D.34191, D.34191,
	mov	r3, r1, asl #4	@ D.34191, D.34191,
	add	lr, r1, r0	@ D.34190, D.34191, D.34191
	str	r0, [r4, #88]	@ D.34191, pImg_8->top_luma_phy_addr
	mul	r3, r2, r3	@ D.34191, D.34191, D.34191
	str	r0, [r4, #120]	@ D.34191, pImg_8->luma_2d_phy_addr
	str	lr, [r4, #96]	@ D.34190, pImg_8->btm_luma_phy_addr
	str	ip, [r4, #48]	@ D.34194, pImg_8->luma_2d_vir_addr
	add	r0, r3, r0	@ D.34191, D.34191, D.34191
	add	r3, ip, r3	@ D.34194, D.34194, D.34191
	add	r1, r1, r0	@ D.34190, D.34191, D.34191
	str	r3, [r4, #36]	@ D.34194, pImg_8->chrom_vir_addr
	str	r0, [r4, #108]	@ D.34191, pImg_8->chrom_phy_addr
	str	r0, [r4, #92]	@ D.34191, pImg_8->top_chrom_phy_addr
	str	r1, [r4, #100]	@ D.34190, pImg_8->btm_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #92]	@ pImg_8->top_chrom_phy_addr, pImg_8->top_chrom_phy_addr
	str	r3, [r4, #124]	@ pImg_8->top_chrom_phy_addr, pImg_8->chrom_2d_phy_addr
	str	r0, [r4, #52]	@, pImg_8->chrom_2d_vir_addr
	b	.L192	@
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
	beq	.L199	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	movne	r0, #1	@ ret,
	bne	.L199	@,
	mov	r0, r5	@, pCtx
	bl	Real8_SetImgFormat	@
	mov	r2, #1	@,
	mov	r1, r6	@, FsID
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	str	r7, [sp]	@ pImg,
	add	r3, r3, #56	@,,
	mov	r2, r5	@, pCtx
	mov	r1, #8	@,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ ret,
	beq	.L199	@,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	mov	r1, r6	@, FsID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ ret,
.L199:
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
	add	r1, r1, #1	@ D.34212, HoldSliceNum,
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
	str	r1, [r0, #44]	@ D.34212, MEM[(struct RV8_DEC_PARAM_S *)pCtx_1(D) + 8B].TotalSliceNum
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
	ldr	r2, [r3, #776]	@ D.34215, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].PicCodType
	cmp	r2, #2	@ D.34215,
	strb	r2, [r0, #20]	@ D.34215, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicCodingType
	ldr	r2, [r3, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb
	str	r2, [r0, #12]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicWidthInMb
	ldr	r2, [r3, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb
	str	r2, [r0, #16]	@ MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PicHeightInMb
	ldr	r2, [r3, #1976]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0
	str	r2, [r0, #24]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio0, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio0
	ldr	r2, [r3, #1980]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1
	str	r2, [r0, #28]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].Ratio1, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].Ratio1
	ldr	r2, [r3, #816]	@ D.34217, MEM[(struct RV8_PictureHeader *)pCtx_2(D) + 37560B].PQUANT
	str	r2, [r0, #32]	@ D.34217, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PQUANT
	ldr	r1, [r3, #880]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
	str	r1, [r0, #36]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicQP
	ldr	r1, [r3, #884]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP
	str	r1, [r0, #40]	@ MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_2(D) + 8B].PrevPicMb0QP
	strne	r2, [r3, #880]	@ D.34217, MEM[(struct RV8_CODECINF *)pCtx_2(D) + 11360B].PrevPicQP
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
	ldr	r3, [r0, #12]	@ D.34272, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].PicWidthInMb
	cmp	r2, #0	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].first_mb_in_slice,
	ldr	ip, [r0, #16]	@ D.34272, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].PicHeightInMb
	bne	.L243	@,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mul	ip, r3, ip	@ D.34272, D.34272, D.34272
	ldr	lr, [r0, #44]	@ D.34272, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	cmp	lr, #2	@ D.34272,
	sub	ip, ip, #1	@ TotalMbnMinus1, D.34272,
	bls	.L216	@,
	ldr	r3, [r0, #172]	@ D.34273, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[1].first_mb_in_slice
	sub	r4, lr, #1	@ D.34272, D.34272,
	cmp	r3, #0	@ D.34273,
	cmpgt	ip, r3	@, TotalMbnMinus1, D.34273
	ble	.L217	@,
	mov	r2, r0	@ ivtmp.157, pCtx
	mov	r3, #1	@ i,
	b	.L218	@
.L219:
	ldr	r1, [r2, #216]	@ D.34273, MEM[base: _177, offset: 216B]
	add	r2, r2, #44	@ ivtmp.157, ivtmp.157,
	cmp	ip, r1	@ TotalMbnMinus1, D.34273
	cmpgt	r1, #0	@, D.34273,
	ble	.L217	@,
.L218:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r4	@ i, D.34272
	bne	.L219	@,
.L216:
	cmp	lr, #1	@ D.34272,
	bls	.L220	@,
	sub	r5, lr, #1	@ D.34272, D.34272,
	mov	r3, r0	@ ivtmp.150, pCtx
	mov	r2, #0	@ i,
	b	.L221	@
.L222:
	ldr	r4, [r3, #128]	@ D.34273, MEM[base: _13, offset: 128B]
	add	r3, r3, #44	@ ivtmp.150, ivtmp.150,
	add	r2, r2, #1	@ i, i,
	ldr	r1, [r3, #128]	@ MEM[base: _11, offset: 128B], MEM[base: _11, offset: 128B]
	cmp	r4, r1	@ D.34273, MEM[base: _11, offset: 128B]
	bge	.L217	@,
.L221:
	cmp	r2, r5	@ i, D.34272
	bne	.L222	@,
	mov	r3, #44	@ tmp268,
	mla	r2, r3, r2, r0	@ tmp269, tmp268, i, pCtx
	ldr	r3, [r2, #128]	@ D.34273, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[_175].first_mb_in_slice
	cmp	ip, r3	@ TotalMbnMinus1, D.34273
	cmpge	r3, #0	@, D.34273,
	ble	.L217	@,
.L220:
	cmp	lr, #0	@ D.34272,
	beq	.L223	@,
	sub	r7, lr, #1	@ D.34272, D.34272,
	mov	r6, r0	@ ivtmp.133, pCtx
	mov	r4, r0	@ ivtmp.143, pCtx
	mov	r5, #0	@ i,
	b	.L226	@
.L245:
	cmp	r5, lr	@ i, D.34272
	beq	.L244	@,
.L226:
	cmp	r5, r7	@ i, D.34272
	streq	ip, [r4, #132]	@ TotalMbnMinus1, MEM[base: _104, offset: 132B]
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #44	@ ivtmp.143, ivtmp.143,
	ldrne	r3, [r4, #128]	@ MEM[base: _103, offset: 172B], MEM[base: _103, offset: 172B]
	moveq	r1, ip	@ D.34273, TotalMbnMinus1
	subne	r1, r3, #1	@ D.34273, MEM[base: _103, offset: 172B],
	ldr	r3, [r4, #84]	@ D.34273, MEM[base: _113, offset: 128B]
	strne	r1, [r4, #88]	@ D.34273, MEM[base: _103, offset: 132B]
	mov	r2, r3, lsr #31	@ tmp282, D.34273,
	cmp	ip, r3	@ TotalMbnMinus1, D.34273
	orrlt	r2, r2, #1	@,, tmp284, tmp282
	cmp	r3, r1	@ D.34273, D.34273
	movle	r3, r2	@, tmp288, tmp284
	orrgt	r3, r2, #1	@,, tmp288, tmp284
	orr	r3, r3, r1, lsr #31	@ tmp293, tmp288, D.34273,
	cmp	ip, r1	@ TotalMbnMinus1, D.34273
	orrlt	r3, r3, #1	@,, tmp299, tmp293
	cmp	r3, #0	@ tmp299,
	beq	.L245	@,
.L217:
	mov	r0, #0	@ D.34274,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L243:
	mov	r0, #0	@ D.34274,
	bx	lr	@
.L244:
	ldr	r2, [r0, #92]	@ stream_base_addr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	mov	r1, r2	@ D.34277, stream_base_addr
	b	.L229	@
.L246:
	ldr	r1, [r6, #92]	@ D.34277, MEM[base: _129, offset: 92B]
.L229:
	cmp	r2, r1	@ stream_base_addr, D.34277
	ldr	ip, [r6, #96]	@ stream_base_addr, MEM[base: _130, offset: 96B]
	add	r3, r3, #1	@ i, i,
	movcs	r2, r1	@ stream_base_addr, D.34277
	cmp	ip, r2	@ stream_base_addr, stream_base_addr
	bcs	.L227	@,
	ldr	r1, [r6, #112]	@ MEM[base: _130, offset: 112B], MEM[base: _130, offset: 112B]
	cmp	r1, #0	@ MEM[base: _130, offset: 112B],
	movne	r2, ip	@ stream_base_addr, stream_base_addr
.L227:
	cmp	r3, lr	@ i, D.34272
	add	r6, r6, #44	@ ivtmp.133, ivtmp.133,
	bne	.L246	@,
	bic	r2, r2, #15	@ D.34274, stream_base_addr,
	ldr	lr, [r0, #44]	@ D.34272, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].TotalSliceNum
	str	r2, [r0, #52]	@ D.34274, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
	mov	r3, r0	@ ivtmp.117, pCtx
	mov	ip, #0	@ i,
	b	.L233	@
.L247:
	ldr	r4, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	rsb	r2, r2, r1	@ D.34272, D.34274, MEM[base: _43, offset: 92B]
	and	r1, r4, #7	@ D.34272, MEM[base: _43, offset: 100B],
	add	r2, r2, r4, lsr #3	@ BytePos0, D.34272, MEM[base: _43, offset: 100B],
	and	r4, r2, #15	@ D.34272, BytePos0,
	bic	r2, r2, #15	@ D.34272, BytePos0,
	str	r2, [r3, #92]	@ D.34272, MEM[base: _43, offset: 92B]
	add	r2, r1, r4, lsl #3	@ D.34272, D.34272, D.34272,
	str	r2, [r3, #100]	@ D.34272, MEM[base: _43, offset: 100B]
.L231:
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #44	@ ivtmp.117, ivtmp.117,
	cmp	lr, ip	@ D.34272, i
	bls	.L232	@,
	ldr	r2, [r0, #52]	@ D.34274, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L233:
	ldr	r1, [r3, #96]	@ MEM[base: _43, offset: 96B], MEM[base: _43, offset: 96B]
	cmp	r1, #0	@ MEM[base: _43, offset: 96B],
	rsb	r4, r2, r1	@ D.34272, D.34274, MEM[base: _43, offset: 96B]
	ldr	r1, [r3, #92]	@ MEM[base: _43, offset: 92B], MEM[base: _43, offset: 92B]
	beq	.L247	@,
	ldr	r5, [r3, #100]	@ MEM[base: _43, offset: 100B], MEM[base: _43, offset: 100B]
	rsb	r2, r2, r1	@ D.34272, D.34274, MEM[base: _43, offset: 92B]
	ldr	r7, [r3, #104]	@ MEM[base: _43, offset: 104B], MEM[base: _43, offset: 104B]
	and	r6, r5, #7	@ D.34272, MEM[base: _43, offset: 100B],
	add	r2, r2, r5, lsr #3	@ BytePos0, D.34272, MEM[base: _43, offset: 100B],
	and	r5, r7, #7	@ D.34272, MEM[base: _43, offset: 104B],
	add	r1, r4, r7, lsr #3	@ BytePos1, D.34272, MEM[base: _43, offset: 104B],
	and	r4, r2, #15	@ D.34272, BytePos0,
	and	r7, r1, #15	@ D.34272, BytePos1,
	bic	r2, r2, #15	@ D.34272, BytePos0,
	add	r4, r6, r4, lsl #3	@ D.34272, D.34272, D.34272,
	str	r2, [r3, #92]	@ D.34272, MEM[base: _43, offset: 92B]
	bic	r1, r1, #15	@ D.34272, BytePos1,
	add	r2, r5, r7, lsl #3	@ D.34272, D.34272, D.34272,
	str	r4, [r3, #100]	@ D.34272, MEM[base: _43, offset: 100B]
	str	r2, [r3, #104]	@ D.34272, MEM[base: _43, offset: 104B]
	str	r1, [r3, #96]	@ D.34272, MEM[base: _43, offset: 96B]
	b	.L231	@
.L223:
	ldr	r3, [r0, #92]	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr
	bic	r3, r3, #15	@ D.34273, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].SliceParam[0].StreamPhyAddr,
	str	r3, [r0, #52]	@ D.34273, MEM[(struct RV8_DEC_PARAM_S *)pCtx_15(D) + 8B].StreamBaseAddr
.L232:
	mov	r0, #1	@ D.34274,
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
	ldr	r8, [r4, #2448]	@ D.34281, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r0	@ pCtx, pCtx
	bl	__memzero	@
	add	r0, r5, #38912	@, pCtx,
	add	r0, r0, #56	@,,
	mov	r6, #0	@ tmp141,
	str	r8, [r4, #2448]	@ D.34281, pCtx_4(D)->ImageQue.ResetMagicWord
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
	cmn	r0, #1	@ D.34283,
	str	r0, [r4, #2456]	@ D.34283, pCtx_4(D)->ChanID
	mov	r0, r6	@, tmp141
	beq	.L252	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L252:
	ldr	r1, .L253	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.34280,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L254:
	.align	2
.L253:
	.word	.LC8
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
	.pad #308
	sub	sp, sp, #308	@,,
	mov	r7, r0	@ pCtx, pCtx
	mov	r5, r1	@ pPacket, pPacket
	add	r4, r7, #36864	@ tmp1310, pCtx,
	mov	r2, #140	@,
	mov	r1, #0	@,
	add	r0, sp, #164	@ tmp1362,,
	bl	memset	@
	mov	r2, #64	@,
	mov	r1, #0	@,
	add	r0, sp, #100	@ tmp1363,,
	bl	memset	@
	ldr	r2, [r4, #756]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pwidth
	ldr	r3, [r4, #760]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pheight
	cmp	r5, #0	@ pPacket,
	mov	r0, #1	@ tmp506,
	mov	r1, #8192	@ tmp509,
	str	r2, [r4, #764]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pwidth_prev
	add	r8, r7, #8	@ __p, pCtx,
	str	r2, [sp, #232]	@ D.34345, TmpPictureHeader.Rv8ParsePicParam.pwidth_prev
	str	r2, [sp, #224]	@ D.34345, TmpPictureHeader.Rv8ParsePicParam.pwidth
	str	r3, [r4, #768]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Rv8ParsePicParam.pheight_prev
	str	r3, [sp, #236]	@ D.34345, TmpPictureHeader.Rv8ParsePicParam.pheight_prev
	str	r3, [sp, #228]	@ D.34345, TmpPictureHeader.Rv8ParsePicParam.pheight
	str	r0, [r4, #772]	@ tmp506, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Fid
	str	r0, [sp, #240]	@ tmp506, TmpPictureHeader.Fid
	str	r1, [r4, #800]	@ tmp509, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	str	r1, [sp, #268]	@ tmp509, TmpPictureHeader.m_uTRWrap
	beq	.L387	@,
	movw	r1, #11352	@,
	mov	r0, r8	@, __p
	bl	__memzero	@
	mov	r9, #0	@ tmp522,
	str	r9, [r4, #1916]	@ tmp522, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsOffset
	add	r6, r7, #8192	@ tmp1311, pCtx,
	ldr	r3, [r5, #12]	@ pPacket_57(D)->StreamPack[0].LenInByte, pPacket_57(D)->StreamPack[0].LenInByte
	str	r3, [r4, #1936]	@ pPacket_57(D)->StreamPack[0].LenInByte, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PacketTail
	ldr	r3, [r5, #8]	@ pPacket_57(D)->StreamPack[0].PhyAddr, pPacket_57(D)->StreamPack[0].PhyAddr
	str	r3, [r4, #1920]	@ pPacket_57(D)->StreamPack[0].PhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	ldr	r3, [r5]	@ D.34347, pPacket_57(D)->StreamPack[0].VirAddr
	str	r3, [r6, #3168]	@ D.34347, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	ldr	r2, [r5, #12]	@ D.34345, pPacket_57(D)->StreamPack[0].LenInByte
	str	r2, [r4, #1924]	@ D.34345, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[0].IsLastSeg, pPacket_57(D)->StreamPack[0].IsLastSeg
	strb	r3, [r6, #3176]	@ pPacket_57(D)->StreamPack[0].IsLastSeg, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[0].IsLastSeg, pPacket_57(D)->StreamPack[0].IsLastSeg
	cmp	r3, #1	@ pPacket_57(D)->StreamPack[0].IsLastSeg,
	beq	.L258	@,
	ldr	r3, [r5, #88]	@ pPacket_57(D)->StreamPack[1].PhyAddr, pPacket_57(D)->StreamPack[1].PhyAddr
	str	r3, [r4, #1928]	@ pPacket_57(D)->StreamPack[1].PhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr1
	ldr	r3, [r5, #80]	@ D.34347, pPacket_57(D)->StreamPack[1].VirAddr
	str	r3, [r6, #3172]	@ D.34347, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr1
	ldr	r3, [r5, #92]	@ pPacket_57(D)->StreamPack[1].LenInByte, pPacket_57(D)->StreamPack[1].LenInByte
	str	r3, [r4, #1932]	@ pPacket_57(D)->StreamPack[1].LenInByte, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[1].IsLastSeg, pPacket_57(D)->StreamPack[1].IsLastSeg
	strb	r3, [r6, #3177]	@ pPacket_57(D)->StreamPack[1].IsLastSeg, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg1
	ldrb	r3, [r5, #85]	@ zero_extendqisi2	@ pPacket_57(D)->StreamPack[1].IsLastSeg, pPacket_57(D)->StreamPack[1].IsLastSeg
	cmp	r3, #1	@ pPacket_57(D)->StreamPack[1].IsLastSeg,
	bne	.L388	@,
.L259:
	movw	r3, #65460	@ tmp587,
	sub	r1, r2, #75	@ D.34350, D.34345,
	movt	r3, 47	@ tmp587,
	cmp	r1, r3	@ D.34350, tmp587
	bhi	.L384	@,
	ldr	r1, [r6, #3168]	@ D.34347, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	cmp	r1, #0	@ D.34347,
	beq	.L384	@,
	add	r5, r7, #38912	@ pBs, pCtx,
	add	r5, r5, #24	@ pBs, pBs,
	mov	r0, r5	@, pBs
	bl	BsInit	@
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r9, r0	@ Num_RPR_Sizes,
	str	r0, [sp, #20]	@ Num_RPR_Sizes, %sfp
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r9, #8	@ Num_RPR_Sizes,
	bhi	.L384	@,
	add	r9, sp, #96	@ ivtmp.210,,
	add	fp, sp, #160	@ D.34350,,
.L262:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #32	@,
	mov	r10, r0	@ D.34346,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r10, r10	@ D.34345, D.34346
	str	r10, [r9, #4]!	@ D.34345, MEM[base: _261, offset: 0B]
	cmp	r9, fp	@ ivtmp.210, D.34350
	bne	.L262	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pBs
	bl	BsShow	@
	mov	r1, #8	@,
	mov	r10, r0	@ D.34346,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	cmp	r10, #255	@ D.34346,
	add	r0, r10, #1	@ D.34346, D.34346,
	str	r0, [r4, #888]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	bhi	.L384	@,
	cmp	r0, #0	@ D.34346,
	beq	.L263	@,
	add	r9, r7, #37632	@ ivtmp.196, pCtx,
	movw	fp, #65535	@ tmp1320,
	add	r9, r9, #120	@ ivtmp.196, ivtmp.196,
	str	r6, [sp, #24]	@ tmp1311, %sfp
	movt	fp, 47	@ tmp1320,
	mov	r10, #0	@ i,
	mov	r6, r9	@ ivtmp.196, ivtmp.196
	b	.L264	@
.L390:
	ldr	r0, [r4, #888]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	cmp	r0, r10	@ D.34346, i
	bls	.L389	@,
.L264:
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	mov	r1, #32	@,
	mov	r0, r5	@, pBs
	add	r10, r10, #1	@ i, i,
	bl	BsShow	@
	mov	r1, #32	@,
	mov	r9, r0	@ D.34346,
	mov	r0, r5	@, pBs
	bl	BsSkip	@
	rev	r3, r9	@ D.34345, D.34346
	cmp	r3, fp	@ D.34345, tmp1320
	str	r3, [r6, #4]!	@ D.34345, MEM[base: _147, offset: 0B]
	ble	.L390	@,
.L384:
	mov	r9, #0	@ D.34342,
.L257:
	mov	r0, r9	@, D.34342
	add	sp, sp, #308	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L388:
	ldr	r1, [r5, #16]	@, pPacket_57(D)->StreamPack[0].StreamID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r5, #96]	@, pPacket_57(D)->StreamPack[1].StreamID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r9	@, D.34342
	add	sp, sp, #308	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L258:
	str	r9, [r4, #1928]	@ tmp522, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr1
	str	r9, [r6, #3172]	@ tmp522, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr1
	str	r9, [r4, #1932]	@ tmp522, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength1
	strb	r9, [r6, #3177]	@ tmp522, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].IsLastSeg1
	b	.L259	@
.L387:
	ldr	r2, [r4, #1952]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FrmCnt
	mov	r9, r5	@ D.34342, pPacket
	ldr	r1, .L407	@,
	bl	dprint_vfmw	@
	mov	r0, r9	@, D.34342
	add	sp, sp, #308	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L389:
	ldr	r6, [sp, #24]	@ tmp1311, %sfp
.L263:
	add	r3, r7, #37632	@ ivtmp.178, pCtx,
	sub	lr, r0, #1	@ D.34345, D.34346,
	add	r3, r3, #124	@ ivtmp.178, ivtmp.178,
	mov	r2, #0	@ i,
	b	.L265	@
.L266:
	ldr	ip, [r3, #4]!	@ MEM[base: _123, offset: 0B], MEM[base: _123, offset: 0B]
	ldr	r1, [r3, #-4]	@ MEM[base: _123, offset: 4294967292B], MEM[base: _123, offset: 4294967292B]
	cmp	ip, r1	@ MEM[base: _123, offset: 0B], MEM[base: _123, offset: 4294967292B]
	ble	.L384	@,
.L265:
	cmp	r2, lr	@ i, D.34345
	add	r2, r2, #1	@ i, i,
	bne	.L266	@,
	ldr	r2, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	mov	r0, r0, asl #3	@ D.34346, D.34346,
	add	r1, r0, #66	@ PrevHeaderBytes, D.34346,
	movw	r3, #65461	@ tmp615,
	add	r0, r1, r2	@ D.34350, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	cmp	r1, #3145728	@ PrevHeaderBytes,
	sub	r10, r0, #74	@ D.34350, D.34350,
	movt	r3, 47	@ tmp615,
	movlt	r2, #0	@ tmp617,
	movge	r2, #1	@ tmp617,
	cmp	r10, r3	@ D.34350, tmp615
	movls	r10, r2	@, tmp621, tmp617
	orrhi	r10, r2, #1	@,, tmp621, tmp617
	str	r1, [sp, #24]	@ PrevHeaderBytes, %sfp
	cmp	r10, #0	@ tmp621,
	str	r0, [sp, #28]	@ D.34350, %sfp
	bne	.L384	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	mov	r3, r0	@ D.34350, D.34350
	rsb	r2, r0, r2	@ D.34346, D.34350, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34346,
	ble	.L384	@,
	ldr	r1, [r6, #3168]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r9, sp, #100	@ tmp1378,,
	add	r1, r1, r3	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, D.34350
	bl	BsInit	@
	ldr	r3, [sp, #20]	@ Num_RPR_Sizes, %sfp
	ldr	lr, .L407+4	@ tmp633,
	add	r2, sp, #304	@ tmp1375,,
	add	ip, sp, #64	@ tmp1374,,
	str	r9, [sp, #176]	@ tmp1378, TmpPictureHeader.Rv8ParsePicParam.m_pSizes
	add	fp, r2, r3, lsl #2	@ tmp635, tmp1375, Num_RPR_Sizes,
	str	r3, [sp, #180]	@ Num_RPR_Sizes, TmpPictureHeader.Rv8ParsePicParam.m_numSizes
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp633,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp632,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp633,,,,
	ldr	lr, [lr]	@ tmp634,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp632,,,,
	add	r1, sp, #164	@ tmp1379,,
	str	lr, [ip]	@ tmp634, size
	mov	r0, r5	@, pBs
	ldr	r3, [fp, #-240]	@ tmp637, size
	str	r3, [sp, #172]	@ tmp637, TmpPictureHeader.Rv8ParsePicParam.m_pctszSize
	bl	Real8_CB_GetPictureHeader	@
	cmp	r0, #1	@ D.34342,
	mov	r9, r0	@ D.34342,
	bne	.L391	@,
	ldrb	r3, [r6, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated,
	beq	.L268	@,
	ldr	r10, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	ldr	r3, [r10, #728]	@ _159->s32DSDWaitFlag, _159->s32DSDWaitFlag
	cmp	r3, #1	@ _159->s32DSDWaitFlag,
	beq	.L268	@,
.L269:
	add	r3, r7, #37376	@ pPictureHeader, pCtx,
	add	r1, sp, #164	@ tmp1384,,
	add	r3, r3, #184	@ pPictureHeader, pPictureHeader,
	mov	r2, #140	@,
	str	r3, [sp, #32]	@ pPictureHeader, %sfp
	mov	r0, r3	@, pPictureHeader
	bl	memcpy	@
	ldr	r3, [r10, #8]	@ _12->s32DecMode, _12->s32DecMode
	mov	r0, r7	@, pCtx
	strb	r3, [r6, #3178]	@ _12->s32DecMode, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].UsedDecMode
	bl	Real8_GetImageBuffer	@
	subs	r3, r0, #0	@ D.34345,
	beq	.L392	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r3, r0, #0	@ pImg,
	beq	.L289	@,
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	mov	r0, #29	@,
	ldr	r1, .L407+8	@,
	ldrd	r10, [r2, #56]	@ tmp1387, pCtx_41(D)->pstExtraData,
	strd	r10, [r3, #8]	@ tmp1387, pImg,
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldrd	r10, [r2, #72]	@ tmp1388, pCtx_41(D)->pstExtraData,
	strd	r10, [r3, #16]	@ tmp1388, pImg,
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldrd	r10, [r2, #88]	@ tmp1389, pCtx_41(D)->pstExtraData,
	strd	r10, [r3, #24]	@ tmp1389, pImg,
	mvn	r10, #0	@ tmp1475,
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	mvn	fp, #0	@,
	ldr	r2, [r2, #104]	@ D.34345, _285->DispEnableFlag
	str	r2, [r3, #68]	@ D.34345, pImg_272->DispEnableFlag
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #108]	@ D.34345, _288->DispFrameDistance
	str	r2, [r3, #72]	@ D.34345, pImg_272->DispFrameDistance
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #112]	@ D.34345, _291->DistanceBeforeFirstFrame
	str	r2, [r3, #76]	@ D.34345, pImg_272->DistanceBeforeFirstFrame
	ldr	r2, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r2, [r2, #128]	@ D.34345, _294->GopNum
	str	r2, [r3, #80]	@ D.34345, pImg_272->GopNum
	ldr	r2, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	strd	r10, [r2, #56]	@ tmp1475, D.34341,
	ldrd	r10, [r3, #16]	@ pImg_272->Usertag, pImg,
	ldrd	r2, [r3, #8]	@ pImg_272->PTS, pImg,
	strd	r10, [sp]	@ pImg_272->Usertag,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #776]	@ D.34354, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	cmp	r3, #2	@ D.34354,
	beq	.L393	@,
	cmp	r3, #1	@ D.34354,
	ldrb	r3, [r6, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	beq	.L394	@,
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	movne	r3, #2	@ D.34343,
	moveq	r3, #1	@ D.34343,
.L293:
	strb	r3, [r6, #3183]	@ D.34343, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	ldr	r2, [r4, #2052]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r3, [r4, #2056]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	cmp	r2, r3	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	beq	.L294	@,
	ldr	r1, .L407+12	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_SetRef	@
.L294:
	ldr	r3, [r4, #2056]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	str	r3, [r4, #2052]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	str	r1, [r4, #2056]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	bl	FSP_SetRef	@
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_RemovePmv	@
	ldr	r2, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r1, .L407+16	@,
	mov	r0, #13	@,
	bl	dprint_vfmw	@
.L295:
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	mov	r10, r0	@ pCur,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	mov	fp, r0	@ pFwd,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetLogicFs	@
	cmp	r10, #0	@ pCur,
	cmpne	fp, #0	@, pFwd,
	moveq	r3, #1	@ tmp911,
	movne	r3, #0	@ tmp911,
	cmp	r0, #0	@,
	orreq	r3, r3, #1	@,, tmp917, tmp911
	str	r0, [sp, #20]	@, %sfp
	cmp	r3, #0	@ tmp917,
	bne	.L395	@,
	ldr	r3, [r10, #408]	@ D.34360, pCur_330->pstDecodeFs
	cmp	r3, #0	@ D.34360,
	beq	.L297	@,
	ldr	r2, [r10, #416]	@ pCur_330->pstTfOutFs, pCur_330->pstTfOutFs
	cmp	r2, #0	@ pCur_330->pstTfOutFs,
	beq	.L297	@,
	ldr	r2, [r10, #412]	@ pCur_330->pstDispOutFs, pCur_330->pstDispOutFs
	cmp	r2, #0	@ pCur_330->pstDispOutFs,
	beq	.L297	@,
	ldr	r2, [sp, #20]	@ pBwd, %sfp
	mov	r0, #13	@,
	ldr	r1, .L407+20	@,
	ldr	r2, [r2, #408]	@ D.34360, pBwd_338->pstDecodeFs
	cmp	r2, #0	@ D.34360,
	ldrne	lr, [r2, #12]	@ D.34344, _345->PhyAddr
	ldreq	lr, [r3, #12]	@ D.34344, _342->PhyAddr
	str	lr, [r7, #56]	@ D.34344, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].BwdRefPhyAddr
	ldr	r3, [fp, #408]	@ D.34360, pFwd_334->pstDecodeFs
	cmp	r3, #0	@ D.34360,
	ldreq	r3, [r10, #408]	@ pCur_330->pstDecodeFs, pCur_330->pstDecodeFs
	ldr	ip, [r3, #12]	@ D.34344,
	str	ip, [r7, #60]	@ D.34344, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].FwdRefPhyAddr
	ldr	r3, [r10, #408]	@ pCur_330->pstDecodeFs, pCur_330->pstDecodeFs
	ldr	r2, [r3, #12]	@ D.34345, _358->PhyAddr
	str	r2, [r7, #64]	@ D.34345, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].CurPicPhyAddr
	ldr	r3, [r10, #420]	@ D.34345, pCur_330->PmvAddr
	str	r3, [r7, #84]	@ D.34345, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].CurrPmvPhyAddr
	str	r3, [sp, #36]	@ D.34345, %sfp
	ldr	r3, [sp, #20]	@ pBwd, %sfp
	ldr	r3, [r3, #420]	@ D.34345, pBwd_338->PmvAddr
	str	r3, [r7, #88]	@ D.34345, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].ColPmvPhyAddr
	str	r3, [sp, #40]	@ D.34345, %sfp
	ldr	r3, [r10, #412]	@ pCur_330->pstDispOutFs, pCur_330->pstDispOutFs
	ldr	r3, [r3, #12]	@ D.34345, _368->PhyAddr
	str	r3, [sp, #44]	@ D.34345, %sfp
	ldr	r3, [sp, #36]	@ D.34345, %sfp
	str	r3, [sp, #8]	@ D.34345,
	ldr	r3, [sp, #40]	@ D.34345, %sfp
	str	r3, [sp, #12]	@ D.34345,
	ldr	r3, [sp, #44]	@ D.34345, %sfp
	str	r3, [r7, #68]	@ D.34345, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].DispFramePhyAddr
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	ldr	r3, [r10, #412]	@ pCur_330->pstDispOutFs, pCur_330->pstDispOutFs
	ldr	r3, [r3, #20]	@ _373->Stride, _373->Stride
	str	r3, [r7, #72]	@ _373->Stride, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].DDRStride
	ldr	r3, [r10, #412]	@ pCur_330->pstDispOutFs, pCur_330->pstDispOutFs
	ldr	r3, [r3, #32]	@ _377->ChromOffset, _377->ChromOffset
	str	r3, [r7, #76]	@ _377->ChromOffset, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].uv_offset
	ldr	r3, [r4, #776]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	cmp	r3, #2	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType,
	beq	.L396	@,
.L303:
	ldr	r3, [r4, #804]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR
	mov	r0, r5	@, pBs
	str	r3, [r10, #428]	@ D.34345, pCur_330->TR
	ldr	r3, [r4, #776]	@ D.34354, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PicCodType
	ldr	r2, [r4, #816]	@ QP, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].PQUANT
	cmp	r3, #2	@ D.34354,
	strb	r3, [r7, #20]	@ D.34354, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	ldr	r3, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	str	r2, [sp, #20]	@ QP, %sfp
	str	r3, [r7, #12]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicWidthInMb
	ldr	r3, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	str	r3, [r7, #16]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicHeightInMb
	ldr	r3, [r4, #1976]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0
	str	r3, [r7, #24]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].Ratio0
	ldr	r3, [r4, #1980]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1
	str	r2, [r7, #32]	@ QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PQUANT
	str	r3, [r7, #28]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].Ratio1
	ldr	r3, [r4, #880]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP
	str	r3, [r7, #36]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PrevPicQP
	ldr	r3, [r4, #884]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP
	str	r3, [r7, #40]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicMb0QP, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PrevPicMb0QP
	strne	r2, [r4, #880]	@ QP, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].PrevPicQP
	bl	BsPos	@
	ldr	r3, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	ands	r0, r0, #-2147483641	@ D.34346,,
	submi	r0, r0, #1	@ D.34346, D.34346,
	mvnmi	r0, r0, asl #29	@ D.34346, D.34346,
	mvnmi	r0, r0, lsr #29	@ D.34346, D.34346,
	addmi	r0, r0, #1	@ D.34346, D.34346,
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	str	r0, [r4, #856]	@ D.34346, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	ldreq	r3, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	moveq	r0, r5	@, pBs
	ldreq	r2, [sp, #24]	@ PrevHeaderBytes, %sfp
	movne	r0, r5	@, pBs
	ldrne	r3, [r4, #896]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	ldreq	r10, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	rsbeq	r3, r2, r3	@ D.34346, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldrne	r10, [r4, #892]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	rsb	r10, r10, r3	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	bl	BsPos	@
	ldr	r3, [sp, #28]	@ D.34350, %sfp
	mov	r10, r10, asl #3	@ D.34346, D.34346,
	rsb	r0, r0, r10	@ D.34346,, D.34346
	ldr	r10, [r4, #1920]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	str	r0, [r4, #860]	@ D.34346, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	mov	r0, r5	@, pBs
	add	r10, r3, r10	@ D.34345, D.34350, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	bl	BsPos	@
	ldr	r2, [r4, #820]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].OSVQUANT
	mov	r1, #1	@ tmp1094,
	ldr	ip, [r4, #812]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Deblocking_Filter_Passthrough
	ldr	lr, [sp, #20]	@ QP, %sfp
	str	r2, [r4, #840]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].osvquant
	str	ip, [r4, #844]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].dblk_filter_passthrough
	str	lr, [r4, #836]	@ QP, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].SliceQP
	add	r3, r0, #7	@ tmp1058, D.34346,
	cmp	r0, #0	@ D.34346,
	movlt	r0, r3	@ D.34346, tmp1058
	mov	r3, #0	@ tmp1064,
	add	r0, r10, r0, asr #3	@ D.34345, D.34345, D.34346,
	str	r3, [r4, #868]	@ tmp1064, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_1
	str	r0, [r4, #864]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_0
	str	r3, [r4, #872]	@ tmp1064, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_1
	str	r3, [r4, #876]	@ tmp1064, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_1
	str	r3, [r4, #848]	@ tmp1064, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].first_mb_in_slice
	str	r0, [r7, #92]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamPhyAddr
	ldr	r0, [r4, #856]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	str	r0, [r7, #100]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamBitOffset
	ldr	r0, [r4, #860]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	str	ip, [r7, #116]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].dblk_filter_passthrough
	str	r3, [r7, #96]	@ tmp1064, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamPhyAddr
	str	r0, [r7, #108]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamLength
	str	r3, [r7, #104]	@ tmp1064, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamBitOffset
	str	r3, [r7, #112]	@ tmp1064, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].StreamLength
	str	r2, [r7, #120]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].osvquant
	str	r3, [r7, #128]	@ tmp1064, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].first_mb_in_slice
	str	lr, [r7, #124]	@ QP, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[0].sliceqp
	str	r1, [r7, #44]	@ tmp1094, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].TotalSliceNum
	ldr	r2, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	cmp	r2, r1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	bls	.L331	@,
	ldr	fp, [r4, #896]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	movw	r0, #65535	@ tmp1107,
	ldr	r2, [sp, #24]	@ PrevHeaderBytes, %sfp
	movt	r0, 47	@ tmp1107,
	add	fp, r2, fp	@ PrevOffsetBytes, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	cmp	fp, r0	@ PrevOffsetBytes, tmp1107
	bgt	.L383	@,
	cmp	fp, #73	@ PrevOffsetBytes,
	ble	.L383	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.34346, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34346,
	ble	.L383	@,
	add	r10, r7, #37632	@ ivtmp.166, pCtx,
	str	r9, [sp, #52]	@ D.34342, %sfp
	add	r10, r10, #128	@ ivtmp.166, ivtmp.166,
	mov	r9, r8	@ __p, __p
	str	r3, [sp, #48]	@ tmp1064, %sfp
	mov	r8, r6	@ tmp1311, tmp1311
	str	r0, [sp, #40]	@ tmp1107, %sfp
	mov	r6, r1	@ i, i
	str	r1, [sp, #28]	@ i, %sfp
	b	.L320	@
.L321:
	ldr	r3, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	add	r6, r6, #1	@ i, i,
	cmp	r3, r6	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, i
	bls	.L397	@,
	ldr	r3, [sp, #24]	@ PrevHeaderBytes, %sfp
	ldr	ip, [r10, #4]!	@ MEM[base: _110, offset: 0B], MEM[base: _110, offset: 0B]
	add	fp, r3, ip	@ PrevOffsetBytes, PrevHeaderBytes, MEM[base: _110, offset: 0B]
	ldr	r3, [sp, #40]	@ tmp1318, %sfp
	cmp	fp, r3	@ PrevOffsetBytes, tmp1318
	bgt	.L383	@,
	cmp	fp, #73	@ PrevOffsetBytes,
	ble	.L383	@,
	ldr	r2, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	rsb	r2, fp, r2	@ D.34346, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	cmp	r2, #0	@ D.34346,
	ble	.L383	@,
.L320:
	ldr	r1, [r8, #3168]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr
	mov	r0, r5	@, pBs
	add	r1, r1, fp	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsVirAddr, PrevOffsetBytes
	bl	BsInit	@
	ldr	r3, [sp, #32]	@ pPictureHeader, %sfp
	add	r2, sp, #56	@ tmp1413,,
	mov	r1, #0	@,
	mov	r0, r5	@, pBs
	str	r3, [sp, #4]	@ pPictureHeader,
	add	r3, sp, #64	@ tmp1411,,
	str	r3, [sp]	@ tmp1411,
	add	r3, sp, #60	@ tmp1412,,
	bl	Real8_CB_GetSliceHeader	@
	cmp	r0, #1	@ found_ssc,
	bne	.L321	@,
	ldr	r3, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	ldr	r2, [sp, #56]	@ mbn, iSliceMBA
	cmp	r3, #0	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb,
	str	r2, [sp, #36]	@ mbn, %sfp
	beq	.L398	@,
	ldr	r3, [sp, #64]	@ D.34346, iSQUANT
	mov	r0, r5	@, pBs
	ldr	r2, [sp, #20]	@ QP, %sfp
	cmp	r3, #0	@ D.34346,
	movge	r2, r3	@ QP, D.34346
	str	r2, [sp, #20]	@ QP, %sfp
	bl	BsPos	@
	ldr	r2, [r4, #888]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum
	sub	lr, r2, #1	@ D.34345, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	cmp	lr, r6	@ D.34345, i
	mov	r3, r0, asr #31	@ tmp1151, D.34346,
	mov	r1, r3, lsr #29	@ tmp1152, tmp1151,
	add	r3, r0, r1	@ tmp1153, D.34346, tmp1152
	and	r3, r3, #7	@ tmp1154, tmp1153,
	rsb	r3, r1, r3	@ D.34346, tmp1152, tmp1154
	str	r3, [r4, #856]	@ D.34346, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	beq	.L399	@,
	cmp	r6, #254	@ i,
	bhi	.L400	@,
	ldr	r3, [r10, #4]	@ MEM[base: _112, offset: 4B], MEM[base: _112, offset: 4B]
	mov	r0, r5	@, pBs
	ldr	r2, [r10]	@ MEM[base: _112, offset: 0B], MEM[base: _112, offset: 0B]
.L382:
	rsb	r3, r2, r3	@ D.34346, MEM[base: _112, offset: 0B], MEM[base: _112, offset: 4B]
	mov	r3, r3, asl #3	@ D.34346, D.34346,
	str	r3, [sp, #44]	@ D.34346, %sfp
	bl	BsPos	@
	ldr	r3, [sp, #44]	@ D.34346, %sfp
	rsb	r0, r0, r3	@ D.34346,, D.34346
	ldr	r3, [r4, #1920]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	str	r0, [r4, #860]	@ D.34346, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	mov	r0, r5	@, pBs
	add	fp, fp, r3	@ D.34345, PrevOffsetBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsPhyAddr
	bl	BsPos	@
	ldr	ip, [sp, #28]	@ HoldSliceNum, %sfp
	mov	r1, #44	@ tmp1418,
	ldr	lr, [r4, #812]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].Deblocking_Filter_Passthrough
	mla	r3, r1, ip, r7	@ tmp1219, tmp1418, HoldSliceNum, pCtx
	ldr	r1, [r4, #820]	@ D.34345, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].OSVQUANT
	str	lr, [r4, #844]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].dblk_filter_passthrough
	str	r1, [r4, #840]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].osvquant
	add	r2, r0, #7	@ tmp1192, D.34346,
	cmp	r0, #0	@ D.34346,
	movlt	r0, r2	@ D.34346, tmp1192
	add	r2, ip, #1	@ HoldSliceNum, HoldSliceNum,
	add	r0, fp, r0, asr #3	@ D.34345, D.34345, D.34346,
	ldr	fp, [sp, #48]	@ tmp1316, %sfp
	mov	ip, r2	@ HoldSliceNum, HoldSliceNum
	str	ip, [sp, #28]	@ HoldSliceNum, %sfp
	cmp	ip, #131	@ HoldSliceNum,
	ldr	ip, [sp, #20]	@ QP, %sfp
	str	r0, [r4, #864]	@ D.34345, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_0
	str	fp, [r4, #868]	@ tmp1316, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_1
	str	ip, [r4, #836]	@ QP, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].SliceQP
	ldr	ip, [sp, #36]	@ mbn, %sfp
	str	fp, [r4, #872]	@ tmp1316, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_1
	str	fp, [r4, #876]	@ tmp1316, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_stream_addr_1
	str	ip, [r4, #848]	@ mbn, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].first_mb_in_slice
	str	r0, [r3, #92]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamPhyAddr
	ldr	r0, [r4, #856]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0
	ldr	r2, [sp, #28]	@ HoldSliceNum, %sfp
	str	r0, [r3, #100]	@ MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_offset_0, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamBitOffset
	add	r0, r3, #108	@ tmp1248, tmp1219,
	str	r0, [sp, #44]	@ tmp1248, %sfp
	ldr	r0, [r4, #860]	@ tmp1427, MEM[(struct RV8_SliceHeader *)pCtx_41(D) + 37700B].bit_len_0
	str	fp, [r3, #96]	@ tmp1316, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamPhyAddr
	str	fp, [r3, #104]	@ tmp1316, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamBitOffset
	str	r0, [r3, #108]	@ tmp1427, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamLength
	ldr	r0, [sp, #44]	@ tmp1248, %sfp
	str	fp, [r0, #4]	@ tmp1316, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].StreamLength
	str	r1, [r3, #120]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].osvquant
	ldr	r1, [sp, #20]	@ QP, %sfp
	str	lr, [r3, #116]	@ D.34345, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].dblk_filter_passthrough
	str	r1, [r3, #124]	@ QP, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].sliceqp
	ldr	r1, [sp, #36]	@ mbn, %sfp
	str	r1, [r3, #128]	@ mbn, MEM[(struct RV8_SLC_PARAM_S *)pCtx_41(D) + 8B].SliceParam[HoldSliceNum_680].first_mb_in_slice
	str	r2, [r7, #44]	@ HoldSliceNum, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].TotalSliceNum
	ble	.L321	@,
	mov	r0, r7	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	bne	.L383	@,
	cmp	r9, #0	@ __p,
	str	r9, [r7, #4]	@ __p, pCtx_41(D)->pRv8DecParam
	beq	.L401	@,
	ldr	r3, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	ldr	r2, [r3, #708]	@ D.34346, _523->stDisParams.s32Mode
	cmp	r2, #1	@ D.34346,
	beq	.L402	@,
	cmp	r2, #2	@ D.34346,
	bne	.L321	@,
	ldr	r3, [r3, #712]	@ _523->stDisParams.s32DisNums, _523->stDisParams.s32DisNums
	cmp	r3, #0	@ _523->stDisParams.s32DisNums,
	ble	.L321	@,
	ldrb	r3, [r7, #20]	@ zero_extendqisi2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	cmp	r3, #2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType,
	bne	.L321	@,
	mov	r3, #0	@ tmp1435,
	str	r3, [r7, #4]	@ tmp1435, pCtx_41(D)->pRv8DecParam
	mov	r2, r3	@, tmp1435
	ldr	r1, [r4, #2060]	@, pCtx_41(D)->CodecInfo.CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, r3	@ D.34342, tmp2
	bl	FSP_SetDisplay	@
	ldr	r2, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	mov	r1, r7	@, pCtx
	mov	r0, #8	@,
	ldr	r3, [r2, #712]	@ _537->stDisParams.s32DisNums, _537->stDisParams.s32DisNums
	sub	r3, r3, #1	@ D.34346, _537->stDisParams.s32DisNums,
	str	r3, [r2, #712]	@ D.34346, _537->stDisParams.s32DisNums
	bl	ReleasePacket	@
	b	.L257	@
.L391:
	ldr	r1, .L407+24	@,
	mov	r0, #1	@,
	mov	r9, r10	@ D.34342, tmp621
	bl	dprint_vfmw	@
	b	.L257	@
.L268:
	ldr	r3, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	ldr	r10, [r3, #692]	@ _161->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _161->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r10, #1	@ _161->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L403	@,
.L270:
	ldr	r2, .L407+28	@ tmp693,
	mov	r1, #0	@ tmp692,
	str	r1, [r3, #728]	@ tmp692, _21->s32DSDWaitFlag
	ldr	r3, [r2]	@ D.34355, g_event_report
	cmp	r3, r1	@ D.34355,
	beq	.L279	@,
	ldr	ip, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	add	r2, sp, #64	@ tmp1381,,
	ldr	r0, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	mov	r1, #2	@,
	ldr	lr, [sp, #260]	@ TmpPictureHeader.pic_width_in_mb, TmpPictureHeader.pic_width_in_mb
	strh	ip, [sp, #64]	@ movhi	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, para
	ldr	ip, [sp, #256]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	strh	r0, [sp, #66]	@ movhi	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, para
	strh	lr, [sp, #68]	@ movhi	@ TmpPictureHeader.pic_width_in_mb, para
	strh	ip, [sp, #70]	@ movhi	@ TmpPictureHeader.pic_height_in_mb, para
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	blx	r3	@ D.34355
.L279:
	mov	r2, #1	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	fp, #0	@ tmp726,
	bl	FSP_ClearLogicFs	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	add	r10, r7, #38912	@ D.34357, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	add	r10, r10, #56	@ D.34357, D.34357,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	str	fp, [r4, #2052]	@ tmp726, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	str	fp, [r4, #2056]	@ tmp726, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	bl	FSP_GetNullLogicFs	@
	mov	r1, r10	@, D.34357
	str	r0, [r4, #2056]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	str	r0, [r4, #2052]	@ D.34346, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	strb	fp, [r6, #3183]	@ tmp726, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_ClearNotInVoQueue	@
	ldr	r2, [sp, #260]	@ D.34345, TmpPictureHeader.pic_width_in_mb
	cmp	r2, #512	@ D.34345,
	bhi	.L280	@,
	ldr	r3, [sp, #256]	@ TmpPictureHeader.pic_height_in_mb, TmpPictureHeader.pic_height_in_mb
	cmp	r3, #512	@ TmpPictureHeader.pic_height_in_mb,
	bhi	.L280	@,
	ldr	r3, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	ldr	r2, [r3, #608]	@ _240->stChanOption.s32ReRangeEn, _240->stChanOption.s32ReRangeEn
	cmp	r2, #0	@ _240->stChanOption.s32ReRangeEn,
	bne	.L282	@,
	ldr	r3, [r3, #32]	@ _240->eCapLevel, _240->eCapLevel
	cmp	r3, #25	@ _240->eCapLevel,
	beq	.L404	@,
.L282:
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L284	@,
	ldr	r3, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r3, [r3, #692]	@ _248->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _248->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _248->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L286	@,
	ldr	r3, [r4, #2460]	@ pCtx_41(D)->DSDNeedClearQue, pCtx_41(D)->DSDNeedClearQue
	cmp	r3, #1	@ pCtx_41(D)->DSDNeedClearQue,
	beq	.L286	@,
.L284:
	ldr	r3, [sp, #256]	@, TmpPictureHeader.pic_height_in_mb
	mov	r0, #1	@,
	ldr	r2, [sp, #260]	@, TmpPictureHeader.pic_width_in_mb
	ldr	r1, .L407+32	@,
	bl	dprint_vfmw	@
	add	r2, sp, #164	@ tmp1382,,
	mov	r1, r7	@, pCtx
	mov	r0, #6	@,
	bl	Real8_ArrangeVHBMem	@
	subs	r3, r0, #0	@ D.34345,
	beq	.L287	@,
	ldr	r10, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	b	.L269	@
.L280:
	ldr	r3, [sp, #256]	@, TmpPictureHeader.pic_height_in_mb
	mov	r0, #18	@,
	ldr	r1, .L407+36	@,
	bl	dprint_vfmw	@
	b	.L384	@
.L392:
	ldr	r2, [r4, #1952]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FrmCnt
	mov	r9, r3	@ D.34342, D.34345
	ldr	r1, .L407+40	@,
	bl	dprint_vfmw	@
	b	.L257	@
.L404:
	ldrb	r3, [r6, #3180]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Imgbuf_allocated,
	bne	.L284	@,
.L286:
	mov	r0, r10	@, D.34357
	bl	ResetVoQueue	@
	b	.L284	@
.L287:
	ldr	r1, .L407+44	@,
	mov	r0, #1	@,
	mov	r9, r3	@ D.34342, D.34345
	bl	dprint_vfmw	@
	b	.L257	@
.L403:
	ldr	r1, [r4, #2052]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].FwdFsID
	mov	r0, r7	@, pCtx
	mov	r3, #0	@ tmp646,
	str	r3, [sp, #56]	@ tmp646, NewNum
	str	r3, [sp, #60]	@ tmp646, ReadNum
	str	r3, [sp, #64]	@ tmp646, RefNum
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L384	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	mov	r0, r7	@, pCtx
	bl	Real8_FlushFrameToVo	@
	cmn	r0, #1	@,
	beq	.L384	@,
	ldr	r1, [r4, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BwdFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	add	r3, sp, #56	@,,
	add	r2, sp, #60	@,,
	add	r1, sp, #64	@ tmp1380,,
	cmp	r0, #0	@ pImage
	strne	r10, [r0, #376]	@ _161->stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pImage_175->u32IsLastFrame
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r7]	@ D.34341, pCtx_41(D)->pstExtraData
	ldr	r1, [r4, #792]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	ldr	r2, [r3, #720]	@ _181->s32DSDThrWidth, _181->s32DSDThrWidth
	cmp	r2, r1, asl #4	@ _181->s32DSDThrWidth, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb,
	bcc	.L273	@,
	ldr	r1, [r4, #788]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb
	ldr	r2, [r3, #724]	@ _181->s32DSDThrHeight, _181->s32DSDThrHeight
	cmp	r2, r1, asl #4	@ _181->s32DSDThrHeight, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_height_in_mb,
	bcc	.L273	@,
	ldr	r2, [sp, #60]	@ ReadNum, ReadNum
	ldr	r1, [sp, #56]	@ NewNum, NewNum
	add	r2, r2, r1	@ D.34346, ReadNum, NewNum
	cmp	r2, #0	@ D.34346,
	mov	r2, #1	@ tmp682,
	ble	.L379	@,
.L378:
	str	r2, [r3, #728]	@ tmp688, _181->s32DSDWaitFlag
	b	.L384	@
.L399:
	add	r2, r2, #6592	@ tmp1170, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].TotalSliceNum,
	ldr	r3, [r4, #1924]	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	add	r2, r2, #5	@ tmp1170, tmp1170,
	ldr	r1, [sp, #24]	@ PrevHeaderBytes, %sfp
	mov	r0, r5	@, pBs
	add	r2, r8, r2, lsl #2	@ tmp1171, tmp1311, tmp1170,
	rsb	r3, r1, r3	@ D.34346, PrevHeaderBytes, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].BsLength
	ldr	r2, [r2, #3172]	@ tmp1174, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].SliceByteOffset
	b	.L382	@
.L396:
	ldr	r1, [sp, #20]	@ pBwd, %sfp
	ldr	r2, [fp, #428]	@ D.34346, pFwd_334->TR
	ldr	r3, [r4, #804]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR
	ldr	fp, [r1, #428]	@ pBwd_338->TR, pBwd_338->TR
	subs	r3, r3, r2	@ trb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].TR, D.34346
	rsb	fp, r2, fp	@ trd, D.34346, pBwd_338->TR
	ldrmi	r2, [r4, #800]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	addmi	r3, r3, r2	@ trb, trb, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	cmp	fp, #0	@ trd,
	ldrlt	r2, [r4, #800]	@ MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	addlt	fp, fp, r2	@ trd, trd, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].m_uTRWrap
	cmp	r3, fp	@ trb, trd
	movgt	r3, #0	@ trb,
	cmp	fp, #0	@ trd,
	ble	.L334	@,
	mov	r1, fp	@, trd
	mov	r0, r3, asl #14	@, trb,
	str	r3, [sp, #20]	@ trb, %sfp
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #20]	@ trb, %sfp
	mov	r1, fp	@, trd
	str	r0, [sp, #36]	@ Ratio1, %sfp
	rsb	r0, r3, fp	@ D.34346, trb, trd
	mov	r0, r0, asl #14	@, D.34346,
	bl	__aeabi_idiv	@
	ldr	r3, [sp, #20]	@ trb, %sfp
	ldr	r2, [sp, #36]	@ Ratio1, %sfp
.L307:
	str	r3, [r4, #1968]	@ trb, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].trb
	str	fp, [r4, #1972]	@ trd, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].trd
	str	r2, [r4, #1976]	@ Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio0
	str	r0, [r4, #1980]	@ Ratio1, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].Ratio1
	b	.L303	@
.L297:
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	mov	r2, #1	@,
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, #0	@ D.34342,
	bl	FSP_ClearLogicFs	@
	ldr	r1, .L407+48	@,
	mov	r0, r9	@, D.34342
	bl	dprint_vfmw	@
	b	.L257	@
.L395:
	movw	r3, #2076	@,
	ldr	r2, .L407+52	@,
	ldr	r1, .L407+56	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r9, #0	@ D.34342,
	b	.L257	@
.L394:
	cmp	r3, #0	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	movne	r3, #2	@ D.34343,
	bne	.L293	@,
	b	.L384	@
.L393:
	ldrb	r3, [r6, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].RefNum,
	bhi	.L295	@,
.L383:
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, #0	@ D.34342,
	bl	FSP_ClearLogicFs	@
	b	.L257	@
.L289:
	mov	r2, #1	@,
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, r3	@ D.34342, pImg
	bl	FSP_ClearLogicFs	@
	b	.L257	@
.L402:
	ldrb	r3, [r7, #20]	@ zero_extendqisi2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType
	cmp	r3, #2	@ MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].PicCodingType,
	bne	.L321	@,
	mov	r3, #0	@ tmp1434,
	str	r3, [r7, #4]	@ tmp1434, pCtx_41(D)->pRv8DecParam
	mov	r2, r3	@, tmp1434
	ldr	r1, [r4, #2060]	@, pCtx_41(D)->CodecInfo.CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, r3	@ D.34342, tmp2
	bl	FSP_SetDisplay	@
	mov	r1, r7	@, pCtx
	mov	r0, #8	@,
	bl	ReleasePacket	@
	b	.L257	@
.L401:
	movw	r3, #2263	@,
	ldr	r2, .L407+52	@,
	ldr	r1, .L407+60	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L257	@
.L400:
	movw	r2, #2230	@,
	ldr	r1, .L407+64	@,
	mov	r0, #22	@,
	mov	r9, #0	@ D.34342,
	bl	dprint_vfmw	@
	b	.L257	@
.L405:
	ldr	r2, [sp, #60]	@ ReadNum, ReadNum
	cmp	r2, #4	@ ReadNum,
	bgt	.L277	@,
	mov	r2, #0	@ tmp691,
.L379:
	str	r2, [r4, #2460]	@ tmp691, pCtx_41(D)->DSDNeedClearQue
	b	.L270	@
.L273:
	ldr	r2, [sp, #56]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	ble	.L405	@,
.L277:
	mov	r2, #1	@ tmp688,
	b	.L378	@
.L397:
	mov	r6, r8	@ tmp1311, tmp1311
	mov	r8, r9	@ __p, __p
	ldr	r9, [sp, #52]	@ D.34342, %sfp
.L331:
	ldr	r5, [r7, #4]	@ pCtx_41(D)->pRv8DecParam, pCtx_41(D)->pRv8DecParam
	mov	r10, #1	@ tmp1100,
	str	r10, [r7, #48]	@ tmp1100, MEM[(struct RV8_DEC_PARAM_S *)pCtx_41(D) + 8B].FstSlcGrp
	cmp	r5, #0	@ pCtx_41(D)->pRv8DecParam,
	beq	.L406	@,
.L314:
	ldr	r3, [r7]	@ pCtx_41(D)->pstExtraData, pCtx_41(D)->pstExtraData
	ldr	r3, [r3, #512]	@ D.34346, _566->s32Compress_en
	str	r3, [r6, #3164]	@ D.34346, pCtx_41(D)->Rv8DecParam.Compress_en
	b	.L257	@
.L406:
	mov	r0, r7	@, pCtx
	bl	Real8_ModifySliceMsg	@
	cmp	r0, #1	@,
	streq	r8, [r7, #4]	@ __p, pCtx_41(D)->pRv8DecParam
	beq	.L314	@,
	mov	r2, r10	@, tmp1100
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, r5	@ D.34342, pCtx_41(D)->pRv8DecParam
	bl	FSP_ClearLogicFs	@
	b	.L257	@
.L398:
	mov	r2, r0	@, found_ssc
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_41(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_41(D)->ChanID
	mov	r9, r3	@ D.34342, MEM[(struct RV8_PictureHeader *)pCtx_41(D) + 37560B].pic_width_in_mb
	bl	FSP_ClearLogicFs	@
	b	.L257	@
.L334:
	mov	r0, #0	@ Ratio1,
	mov	r2, r0	@ Ratio1, Ratio1
	b	.L307	@
.L408:
	.align	2
.L407:
	.word	.LC9
	.word	.LANCHOR0+380
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC20
	.word	.LC10
	.word	g_event_report
	.word	.LC12
	.word	.LC11
	.word	.LC14
	.word	.LC13
	.word	.LC19
	.word	.LANCHOR0+448
	.word	.LC18
	.word	.LC22
	.word	.LC21
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
	mov	r0, #1	@ D.34390,
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
	addeq	r5, r0, #38912	@ D.34394, pCtx,
	addeq	r5, r5, #56	@ D.34394, D.34394,
	beq	.L419	@,
	add	r6, r0, #36864	@ tmp137, pCtx,
	mov	r4, r0	@ pCtx, pCtx
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pImg,
	beq	.L430	@,
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_GetDisplay	@
	cmp	r0, #2	@,
	beq	.L428	@,
.L430:
	add	r5, r4, #38912	@ D.34394, pCtx,
	add	r5, r5, #56	@ D.34394, D.34394,
.L419:
	mov	r0, r5	@, D.34394
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, lr}	@
	b	GetVoLastImageID	@
.L428:
	mov	r0, r4	@, pCtx
	add	r5, r4, #38912	@ D.34394, pCtx,
	bl	Real8_SetImgFormat	@
	add	r5, r5, #56	@ D.34394, D.34394,
	mov	r3, #1	@ tmp150,
	str	r3, [r7, #224]	@ tmp150, pImg_12->last_frame
	mov	r2, r3	@, tmp150
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	ldr	r0, [r6, #2456]	@ pCtx_5(D)->ChanID, pCtx_5(D)->ChanID
	mov	r2, r4	@, pCtx
	str	r7, [sp]	@ pImg,
	mov	r3, r5	@, D.34394
	mov	r1, #8	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	beq	.L416	@,
	mov	r2, #0	@,
	ldr	r1, [r6, #2056]	@, MEM[(struct RV8_CODECINF *)pCtx_5(D) + 11360B].BwdFsID
	ldr	r0, [r6, #2456]	@, pCtx_5(D)->ChanID
	bl	FSP_SetDisplay	@
	b	.L419	@
.L416:
	ldr	r3, [r7, #180]	@ pImg_12->error_level, pImg_12->error_level
	cmp	r3, #100	@ pImg_12->error_level,
	bhi	.L419	@,
	ldr	r3, [r7, #144]	@ pImg_12->image_width, pImg_12->image_width
	cmp	r3, #31	@ pImg_12->image_width,
	bls	.L419	@,
	ldr	r3, [r7, #148]	@ pImg_12->image_height, pImg_12->image_height
	cmp	r3, #31	@ pImg_12->image_height,
	bls	.L419	@,
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
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r0	@ pCtx, pCtx
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, .L461	@,
	add	r4, r5, #36864	@ tmp237, pCtx,
	mov	r8, r2	@ Mb0QpInCurrPic, Mb0QpInCurrPic
	mov	r0, #22	@,
	mov	r2, r6	@, ErrRatio
	add	r7, r5, #8192	@ tmp238, pCtx,
	bl	dprint_vfmw	@
	mov	r1, r5	@, pCtx
	mov	r0, #8	@,
	bl	ReleasePacket	@
	ldr	r1, [r4, #2060]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	cmp	r0, #0	@ pCurImg
	beq	.L432	@,
	ldr	r3, [r4, #776]	@ D.34402, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ D.34402,
	andne	r8, r8, #31	@ D.34404, Mb0QpInCurrPic,
	strb	r3, [r7, #3181]	@ D.34402, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].LastDecPicCodingType
	strne	r8, [r4, #884]	@ D.34404, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PrevPicMb0QP
	cmp	r6, #0	@ ErrRatio,
	movlt	r6, #0	@ D.34400,
	blt	.L434	@,
	cmp	r6, #100	@ ErrRatio,
	movge	r6, #100	@ D.34400,
.L434:
	str	r6, [r0, #180]	@ D.34400, pCurImg_16->error_level
	mov	r0, #22	@,
	ldr	r1, .L461+4	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@, pCtx
	bl	Real8_SetImgFormat	@
	ldrb	r3, [r7, #3178]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode
	cmp	r3, #2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].UsedDecMode,
	beq	.L437	@,
	ldr	r3, [r5]	@ pCtx_8(D)->pstExtraData, pCtx_8(D)->pstExtraData
	ldr	r3, [r3, #12]	@ _33->s32DecOrderOutput, _33->s32DecOrderOutput
	cmp	r3, #1	@ _33->s32DecOrderOutput,
	beq	.L437	@,
	ldr	r3, [r4, #776]	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType
	cmp	r3, #2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].PictureHeader.PicCodType,
	beq	.L437	@,
	ldrb	r3, [r7, #3183]	@ zero_extendqisi2	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum
	cmp	r3, #1	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].RefNum,
	ldrhi	r1, [r4, #2052]	@ D.34401, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FwdFsID
	mvnls	r1, #0	@ D.34401,
	cmn	r1, #1	@ D.34401,
	str	r1, [r4, #2064]	@ D.34401, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	beq	.L439	@,
.L460:
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	ldr	r6, [r4, #2064]	@ D.34401, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	mov	r1, r6	@, D.34401
	mov	r7, r0	@ pToQueImg,
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_GetRef	@
	mov	r2, r6	@, D.34401
	ldr	r1, .L461+8	@,
	mov	r3, r0	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	r2, #1	@,
	ldr	r1, [r4, #2064]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	bl	FSP_SetDisplay	@
	add	r3, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2456]	@ pCtx_8(D)->ChanID, pCtx_8(D)->ChanID
	add	r3, r3, #56	@,,
	str	r7, [sp]	@ pToQueImg,
	mov	r2, r5	@, pCtx
	mov	r1, #8	@,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L459	@,
.L439:
	ldr	r3, [r4, #1952]	@ MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
	mov	r0, #1	@ D.34400,
	add	r3, r3, r0	@ D.34404, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt,
	str	r3, [r4, #1952]	@ D.34404, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].FrmCnt
.L432:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L437:
	ldr	r1, [r4, #2060]	@ D.34401, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].CurFsID
	cmn	r1, #1	@ D.34401,
	str	r1, [r4, #2064]	@ D.34401, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bne	.L460	@,
	b	.L439	@
.L459:
	ldr	r0, [r4, #2456]	@, pCtx_8(D)->ChanID
	mov	r2, #0	@,
	ldr	r1, [r4, #2064]	@, MEM[(struct RV8_CODECINF *)pCtx_8(D) + 11360B].ToQueFsID
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.34400,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L462:
	.align	2
.L461:
	.word	.LC23
	.word	.LC24
	.word	.LC25
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
	cmp	r0, #1	@ D.34412,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	bl	FSP_IsNewFsAvalible	@
	cmn	r0, #1	@,
	beq	.L470	@,
	mov	r0, #0	@ D.34412,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L470:
	add	r1, r5, #38912	@, pCtx,
	ldr	r0, [r4, #2456]	@, pCtx_3(D)->ChanID
	add	r1, r1, #56	@,,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.34412,
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
	.type	__func__.32824, %object
	.size	__func__.32824, 16
__func__.32824:
	.ascii	"REAL8DEC_Decode\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC2:
	.ascii	"line: %d, pImage is NULL!\012\000"
	.space	1
.LC3:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC4:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC5:
	.ascii	"image size abnormal (%dx%d) in MB\012\000"
	.space	1
.LC6:
	.ascii	"real8 actual frame size(%dx%d) exeed max config(%dx"
	.ascii	"%d)\012\000"
.LC7:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC8:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC9:
	.ascii	"ERROR: frm %d, Invalid packet pointer!\012\000"
.LC10:
	.ascii	"Real8_CB_GetPictureHeader Error!\012\000"
	.space	2
.LC11:
	.ascii	"pic width/height to large,MbWidth = %d, MbHeight = "
	.ascii	"%d\000"
	.space	2
.LC12:
	.ascii	"new seq size %d * %d\012\000"
	.space	2
.LC13:
	.ascii	"Real8_ArrangeVHBMem err\012\000"
	.space	3
.LC14:
	.ascii	"Fatal Error: frm%d, get image buffer failed\012\000"
	.space	3
.LC15:
	.ascii	"dec_pts: %lld Usertag = %lld\012\000"
	.space	2
.LC16:
	.ascii	"---------- unref %d\012\000"
	.space	3
.LC17:
	.ascii	"++++++++++ ref %d\012\000"
	.space	1
.LC18:
	.ascii	"%s %d unknow error!!\012\000"
	.space	2
.LC19:
	.ascii	"CurFsID abnormal!\012\000"
	.space	1
.LC20:
	.ascii	"dec addr: cur,cur2d,fwd,bwd,currpmv,colpmv = %p,%p,"
	.ascii	"%p,%p,%p,%p\012\000"
.LC21:
	.ascii	"line:%d! i > (RV8_MAX_SLC_PARAM_NUM - 2)\012\000"
	.space	2
.LC22:
	.ascii	"%s %d NULL == pCtx->pRv8DecParam!!\012\000"
.LC23:
	.ascii	"ErrRatio = %d\012\000"
	.space	1
.LC24:
	.ascii	"DEBUG: DEC over\012\000"
	.space	3
.LC25:
	.ascii	"insert buf %d ref %d\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
