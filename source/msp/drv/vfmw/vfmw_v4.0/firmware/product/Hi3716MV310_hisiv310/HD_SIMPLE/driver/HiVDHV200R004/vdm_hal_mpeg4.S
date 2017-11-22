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
	.file	"vdm_hal_mpeg4.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.o
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
	.global	MP4HAL_V200R004_Log2bin
	.type	MP4HAL_V200R004_Log2bin, %function
MP4HAL_V200R004_Log2bin:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ value
	bxeq	lr	@
	mov	r3, #0	@ n,
.L3:
	add	r3, r3, #1	@ tmp119, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp119
	bne	.L3	@,
	sxth	r0, r3	@ D.28956, n
	bx	lr	@
	.fnend
	.size	MP4HAL_V200R004_Log2bin, .-MP4HAL_V200R004_Log2bin
	.align	2
	.global	MP4HAL_V200R004_CfgReg
	.type	MP4HAL_V200R004_CfgReg, %function
MP4HAL_V200R004_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r6, r1, #0	@ VdhId, VdhId
	bgt	.L37	@,
	add	r4, r0, #12288	@ tmp454, pMp4DecParam,
	mov	r5, r0	@ pMp4DecParam, pMp4DecParam
	add	r3, r0, #236	@ D.28977, pMp4DecParam,
	ldr	r1, [r4, #2284]	@ D.28978, pMp4DecParam_9(D)->SlcNum
	cmp	r1, #0	@ D.28978,
	beq	.L10	@,
	mov	lr, #0	@ i,
	mvn	r7, #0	@ stream_base_addr,
.L11:
	ldr	ip, [r3, #16]	@ D.28978, MEM[base: _170, offset: 16B]
	cmp	ip, #0	@ D.28978,
	beq	.L14	@,
	ldr	r0, [r3, #8]	@ MEM[base: _170, offset: 8B], MEM[base: _170, offset: 8B]
	bic	ip, ip, #15	@ TmpBaseAddr, D.28978,
	cmp	r0, #0	@ MEM[base: _170, offset: 8B],
	beq	.L14	@,
	cmp	r7, ip	@ stream_base_addr, TmpBaseAddr
	movcs	r7, ip	@ stream_base_addr, TmpBaseAddr
.L14:
	ldr	ip, [r3, #20]	@ D.28978, MEM[base: _170, offset: 20B]
	cmp	ip, #0	@ D.28978,
	beq	.L12	@,
	ldr	r0, [r3, #12]	@ MEM[base: _170, offset: 12B], MEM[base: _170, offset: 12B]
	bic	ip, ip, #15	@ TmpBaseAddr, D.28978,
	cmp	r0, #0	@ MEM[base: _170, offset: 12B],
	beq	.L12	@,
	cmp	r7, ip	@ stream_base_addr, TmpBaseAddr
	movcs	r7, ip	@ stream_base_addr, TmpBaseAddr
.L12:
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #28	@ ivtmp.49, ivtmp.49,
	cmp	lr, r1	@ i, D.28978
	bne	.L11	@,
	cmn	r7, #1	@ stream_base_addr,
	beq	.L10	@,
	str	r7, [r2]	@ stream_base_addr, *pBaseAddr_14(D)
	movw	r9, #1140	@ tmp296,
	ldrh	r3, [r5, #166]	@ D.28980, pMp4DecParam_9(D)->PicHeightInMb
	mov	r0, #3	@,
	ldrh	r2, [r5, #164]	@ D.28980, pMp4DecParam_9(D)->PicWidthInMb
	mul	r9, r9, r6	@ tmp295, tmp296, VdhId
	ldr	r8, .L39	@ tmp453,
	mul	r2, r3, r2	@ D.28980, D.28980, D.28980
	ldr	r1, .L39+4	@,
	add	r10, r8, r9	@ tmp297, tmp453, tmp295
	ldr	r3, [r8, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	sub	r2, r2, #1	@ D.28980, D.28980,
	ubfx	r2, r2, #0, #20	@ D.28980, D.28980,,
	orr	r2, r2, #1107296256	@ D32, D.28980,
	orr	r2, r2, #4194304	@ D32, D32,
	str	r2, [r3, #8]	@ D32, *_27
	bl	dprint_vfmw	@
	ldr	ip, [r4, #2312]	@ pMp4DecParam_9(D)->VahbStride, pMp4DecParam_9(D)->VahbStride
	ldr	r2, [r4, #2372]	@ pMp4DecParam_9(D)->Compress_en, pMp4DecParam_9(D)->Compress_en
	mov	r0, #3	@,
	ldr	lr, [r8, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	ip, ip, lsr #6	@ D.28978, pMp4DecParam_9(D)->VahbStride,
	and	r2, r2, #1	@ D.28980, pMp4DecParam_9(D)->Compress_en,
	ldr	r1, .L39+8	@,
	mov	ip, ip, asl #4	@ D.28978, D.28978,
	orr	r3, ip, #536870914	@ D.28978, D.28978,
	orr	r3, r3, #114688	@ D.28978, D.28978,
	orr	r2, r3, r2, asl #30	@ D32, D.28978, D.28980,
	str	r2, [lr, #12]	@ D32, *_43
	bl	dprint_vfmw	@
	ldr	r3, [r8, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r10, #44]	@ g_HwMem[VdhId_6(D)].MsgSlotAddr, g_HwMem[VdhId_6(D)].MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L39+12	@,
	bic	r2, r2, #15	@ D32, g_HwMem[VdhId_6(D)].MsgSlotAddr,
	str	r2, [r3, #16]	@ D32, *_51
	bl	dprint_vfmw	@
	ldr	r3, [r8, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r10, #28]	@ g_HwMem[VdhId_6(D)].MsgSlotAddr, g_HwMem[VdhId_6(D)].MsgSlotAddr
	mov	r0, #3	@,
	ldr	r1, .L39+16	@,
	bic	r2, r2, #15	@ D32, g_HwMem[VdhId_6(D)].MsgSlotAddr,
	str	r2, [r3, #20]	@ D32, *_59
	bl	dprint_vfmw	@
	ldr	r3, [r8, r9]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	r2, r7	@, stream_base_addr
	ldr	r1, .L39+20	@,
	mov	r0, #3	@,
	str	r7, [r3, #24]	@ stream_base_addr, *_66
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #164]	@ pMp4DecParam_9(D)->PicWidthInMb, pMp4DecParam_9(D)->PicWidthInMb
	cmp	r3, #120	@ pMp4DecParam_9(D)->PicWidthInMb,
	movhi	r7, #0	@ D32,
	movls	r7, #65536	@ D32,
	cmp	r6, #0	@ VdhId,
	beq	.L38	@,
.L18:
	movw	r2, #1140	@ tmp355,
	movw	r3, #3075	@ tmp358,
	mul	r6, r2, r6	@ tmp354, tmp355, VdhId
	movt	r3, 48	@ tmp358,
	ldr	r1, .L39+24	@,
	mov	r0, #3	@,
	mov	r7, #0	@ tmp427,
	add	r9, r8, r6	@ tmp356, tmp453, tmp354
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #60]	@ tmp358, *_82
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #64]	@ tmp358, *_87
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp358, *_92
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #72]	@ tmp358, *_97
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #76]	@ tmp358, *_102
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #80]	@ tmp358, *_107
	ldr	r2, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp358, *_112
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r5, #212]	@ pMp4DecParam_9(D)->CurPicPhyAddr, pMp4DecParam_9(D)->CurPicPhyAddr
	bic	r2, r2, #15	@ D32, pMp4DecParam_9(D)->CurPicPhyAddr,
	str	r2, [r3, #96]	@ D32, *_120
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r2, [r4, #2312]	@ D32, pMp4DecParam_9(D)->VahbStride
	mov	r0, #3	@,
	ldrh	r5, [r5, #166]	@ height_in_mb, pMp4DecParam_9(D)->PicHeightInMb
	ldr	r1, .L39+28	@,
	str	r2, [r3, #100]	@ D32, *_130
	add	r5, r5, #1	@ D.28978, height_in_mb,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #2312]	@ pMp4DecParam_9(D)->VahbStride, pMp4DecParam_9(D)->VahbStride
	mov	r5, r5, lsr #1	@ D.28978, D.28978,
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	ldr	r1, .L39+32	@,
	mov	r0, #3	@,
	mov	r2, r2, asl #1	@ D.28978, pMp4DecParam_9(D)->VahbStride,
	mul	r2, r5, r2	@ D32, D.28978, D.28978
	str	r2, [r3, #104]	@ D32, *_142
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	r2, r7	@, tmp427
	ldr	r1, .L39+36	@,
	mov	r0, #3	@,
	str	r7, [r3, #108]	@ tmp427, *_148
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	str	r7, [r3, #152]	@ tmp427, *_153
	bl	dprint_vfmw	@
	ldr	r3, [r9, #1120]	@ D32, g_HwMem[VdhId_6(D)].DnrMbInfoAddr
	ldr	ip, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mov	r0, #3	@,
	ldr	r1, .L39+40	@,
	mov	r2, r3	@, D32
	str	r3, [ip, #144]	@ D32, *_160
	bl	dprint_vfmw	@
	ldr	r3, [r8, r6]	@ g_HwMem[VdhId_6(D)].pVdmRegVirAddr, g_HwMem[VdhId_6(D)].pVdmRegVirAddr
	mvn	r2, #0	@ tmp451,
	mov	r0, r7	@ D.28976, tmp427
	str	r2, [r3, #32]	@ tmp451, *_166
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L38:
	movw	r0, #49156	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L39+44	@ tmp350,
	cmp	r7, #0	@ D32,
	biceq	r1, r0, #65536	@ datTmp, D.28980,
	orrne	r1, r0, #65536	@ datTmp, D.28980,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	b	.L18	@
.L37:
	mov	r2, #156	@,
	ldr	r1, .L39+48	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28976,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L10:
	mvn	r2, #0	@,
	ldr	r1, .L39+52	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.28976,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L40:
	.align	2
.L39:
	.word	g_HwMem
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	s_RegPhyBaseAddr
	.word	.LC0
	.word	.LC1
	.fnend
	.size	MP4HAL_V200R004_CfgReg, .-MP4HAL_V200R004_CfgReg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V200R004_CfgDnMsg
	.type	MP4HAL_V200R004_CfgDnMsg, %function
MP4HAL_V200R004_CfgDnMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pMp4DecParam, pMp4DecParam
	ldrh	r2, [r0, #166]	@ HeightInMb, pMp4DecParam_12(D)->PicHeightInMb
	.pad #12
	sub	sp, sp, #12	@,,
	ldrh	r3, [r0, #164]	@ WidthInMb, pMp4DecParam_12(D)->PicWidthInMb
	mov	r8, r1	@ VdhId, VdhId
	mul	r3, r3, r2	@ MbCnt, WidthInMb, HeightInMb
	cmp	r3, #0	@ MbCnt,
	beq	.L65	@,
	mov	r4, #0	@ n,
.L43:
	add	r4, r4, #1	@ tmp475, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r4, r4	@ n, tmp475
	bne	.L43	@,
.L42:
	ldr	r9, .L85	@ tmp830,
	movw	r3, #1140	@ tmp478,
	mla	r3, r3, r8, r9	@ tmp479, tmp478, VdhId, tmp830
	ldr	r0, [r3, #44]	@, g_HwMem[VdhId_18(D)].MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ pReg,
	beq	.L77	@,
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->IsShortHeader, pMp4DecParam_12(D)->IsShortHeader
	cmp	r3, #1	@ pMp4DecParam_12(D)->IsShortHeader,
	beq	.L78	@,
	mov	r7, #0	@ tmp511,
	ldr	r1, .L85+4	@,
	mov	r2, r7	@, tmp511
	str	r7, [r6]	@ tmp511, MEM[(volatile HI_S32 *)pReg_21]
	mov	r0, #4	@,
	and	r4, r4, #15	@ D.29058, n,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->VopQuant, pMp4DecParam_12(D)->VopQuant
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ D.29058, pMp4DecParam_12(D)->PicQuantType
	mov	r0, #4	@,
	and	r2, r2, #31	@ D.29058, pMp4DecParam_12(D)->VopQuant,
	ldr	r1, .L85+8	@,
	mov	r3, r3, asl #31	@ D.29058, D.29058,
	orr	r2, r3, r2, asl #26	@ Dat, D.29058, D.29058,
	str	r2, [r6, #4]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 4B]
	bl	dprint_vfmw	@
	ldrb	r1, [r5]	@ zero_extendqisi2	@ D.29061, pMp4DecParam_12(D)->PicCodingType
	ldrb	r3, [r5, #15]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->Interlaced, pMp4DecParam_12(D)->Interlaced
	cmp	r1, #2	@ D.29061,
	streqb	r7, [r5, #12]	@ tmp511, pMp4DecParam_12(D)->vop_rounding_type
	ldrb	lr, [r5, #14]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->top_field_first, pMp4DecParam_12(D)->top_field_first
	and	r3, r3, #1	@ D.29058, pMp4DecParam_12(D)->Interlaced,
	moveq	ip, r7	@ D.29058, tmp511
	add	r7, r5, #12288	@ tmp829, pMp4DecParam,
	ldrb	r0, [r5, #13]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->alternate_vertical_scan, pMp4DecParam_12(D)->alternate_vertical_scan
	and	lr, lr, #1	@ D.29058, pMp4DecParam_12(D)->top_field_first,
	ldr	r2, [r7, #2328]	@ pMp4DecParam_12(D)->sprite_enable, pMp4DecParam_12(D)->sprite_enable
	and	r1, r1, #3	@ D.29058, D.29061,
	ldr	fp, [r7, #2332]	@ pMp4DecParam_12(D)->sprite_warping_points, pMp4DecParam_12(D)->sprite_warping_points
	and	r0, r0, #1	@ D.29058, pMp4DecParam_12(D)->alternate_vertical_scan,
	ldr	r10, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	and	r2, r2, #3	@ D.29058, pMp4DecParam_12(D)->sprite_enable,
	ldrneb	ip, [r5, #12]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->vop_rounding_type, pMp4DecParam_12(D)->vop_rounding_type
	orr	r3, r3, r2, asl #26	@ D.29058, D.29058, D.29058,
	and	r10, r10, #3	@ D.29058, pMp4DecParam_12(D)->sprite_warping_accuracy,
	ldrb	r2, [r5, #10]	@ zero_extendqisi2	@ D.29058, pMp4DecParam_12(D)->resync_marker_disable
	orr	r3, r3, fp, asl #30	@ D.29058, D.29058, pMp4DecParam_12(D)->sprite_warping_points,
	ldrb	fp, [r5, #11]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->QuarterSample, pMp4DecParam_12(D)->QuarterSample
	orr	r10, r3, r10, asl #28	@ D.29058, D.29058, D.29058,
	orr	r10, r10, lr, asl #1	@ D.29058, D.29058, D.29058,
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->intra_dc_vlc_thr, pMp4DecParam_12(D)->intra_dc_vlc_thr
	and	fp, fp, #1	@ D.29058, pMp4DecParam_12(D)->QuarterSample,
	orr	lr, r10, r0, asl #2	@ D.29058, D.29058, D.29058,
	mov	r0, r2, asl #7	@ D.29058, D.29058,
	ldrb	r10, [r5, #7]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FwdFcode, pMp4DecParam_12(D)->FwdFcode
	orr	lr, lr, fp, asl #4	@ D.29058, D.29058, D.29058,
	ldrb	r2, [r5, #8]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->BwdFcode, pMp4DecParam_12(D)->BwdFcode
	orr	r1, lr, r1, asl #5	@ D.29058, D.29058, D.29058,
	uxtb	r0, r0	@ D.29058, D.29058
	and	r3, r3, #7	@ D.29058, pMp4DecParam_12(D)->intra_dc_vlc_thr,
	ldrb	lr, [r5, #6]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->BitsOfVopTimeIncr, pMp4DecParam_12(D)->BitsOfVopTimeIncr
	orr	r1, r1, r0	@ D.29058, D.29058, D.29058
	and	r10, r10, #7	@ D.29058, pMp4DecParam_12(D)->FwdFcode,
	orr	r1, r1, r3, asl #8	@ D.29058, D.29058, D.29058,
	and	r2, r2, #7	@ D.29058, pMp4DecParam_12(D)->BwdFcode,
	orr	r3, r1, r10, asl #11	@ D.29058, D.29058, D.29058,
	and	lr, lr, #31	@ D.29058, pMp4DecParam_12(D)->BitsOfVopTimeIncr,
	orr	r3, r3, r2, asl #14	@ D.29058, D.29058, D.29058,
	ldr	r1, .L85+12	@,
	orr	r2, r3, lr, asl #17	@ D.29058, D.29058, D.29058,
	mov	r0, #4	@,
	orr	r4, r2, r4, asl #22	@ D.29058, D.29058, D.29058,
	andne	ip, ip, #1	@ D.29058, pMp4DecParam_12(D)->vop_rounding_type,
	movne	ip, ip, asl #3	@ D.29058, D.29058,
	orr	r2, r4, ip	@ Dat, D.29058, D.29058
	str	r2, [r6, #8]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 8B]
	bl	dprint_vfmw	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	cmp	r3, #2	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L79	@,
.L47:
	ldrh	r3, [r5, #164]	@ D.29060, pMp4DecParam_12(D)->PicWidthInMb
	mov	r0, #4	@,
	ldrh	r2, [r5, #166]	@ D.29060, pMp4DecParam_12(D)->PicHeightInMb
	sub	r3, r3, #1	@ D.29060, D.29060,
	ldr	r1, .L85+16	@,
	sub	r2, r2, #1	@ D.29060, D.29060,
	uxth	r3, r3	@ D.29058, D.29060
	orr	r2, r3, r2, asl #16	@ Dat, D.29058, D.29060,
	str	r2, [r6, #16]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 16B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2320]	@ pMp4DecParam_12(D)->image_height, pMp4DecParam_12(D)->image_height
	ldr	r3, [r7, #2324]	@ pMp4DecParam_12(D)->image_width, pMp4DecParam_12(D)->image_width
	mov	r0, #4	@,
	ldr	r1, .L85+20	@,
	orr	r2, r3, r2, asl #16	@ Dat, pMp4DecParam_12(D)->image_width, pMp4DecParam_12(D)->image_height,
	str	r2, [r6, #20]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 20B]
	bl	dprint_vfmw	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	cmp	r3, #3	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L80	@,
.L50:
	mov	r4, #0	@ tmp693,
	ldr	r1, .L85+24	@,
	mov	r2, r4	@, tmp693
	str	r4, [r6, #32]	@ tmp693, MEM[(volatile HI_S32 *)pReg_21 + 32B]
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, tmp693
	ldr	r1, .L85+28	@,
	mov	r0, #4	@,
	str	r4, [r6, #36]	@ tmp693, MEM[(volatile HI_S32 *)pReg_21 + 36B]
	bl	dprint_vfmw	@
	mov	r2, r4	@, tmp693
	ldr	r1, .L85+32	@,
	mov	r0, #4	@,
	str	r4, [r6, #40]	@ tmp693, MEM[(volatile HI_S32 *)pReg_21 + 40B]
	bl	dprint_vfmw	@
	mov	r2, r4	@, tmp693
	ldr	r1, .L85+36	@,
	mov	r0, #4	@,
	str	r4, [r6, #44]	@ tmp693, MEM[(volatile HI_S32 *)pReg_21 + 44B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2300]	@ pMp4DecParam_12(D)->DispFramePhyAddr, pMp4DecParam_12(D)->DispFramePhyAddr
	ldr	r1, .L85+40	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, pMp4DecParam_12(D)->DispFramePhyAddr,
	str	r2, [r6, #48]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 48B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #216]	@ pMp4DecParam_12(D)->FwdRefPicPhyAddr, pMp4DecParam_12(D)->FwdRefPicPhyAddr
	ldr	r1, .L85+44	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, pMp4DecParam_12(D)->FwdRefPicPhyAddr,
	str	r2, [r6, #52]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 52B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #220]	@ pMp4DecParam_12(D)->BwdRefPicPhyAddr, pMp4DecParam_12(D)->BwdRefPicPhyAddr
	ldr	r1, .L85+48	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, pMp4DecParam_12(D)->BwdRefPicPhyAddr,
	str	r2, [r6, #56]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 56B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #224]	@ pMp4DecParam_12(D)->CurPmvPhyAddr, pMp4DecParam_12(D)->CurPmvPhyAddr
	ldr	r1, .L85+52	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, pMp4DecParam_12(D)->CurPmvPhyAddr,
	str	r2, [r6, #60]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 60B]
	bl	dprint_vfmw	@
	ldr	r2, [r5, #228]	@ pMp4DecParam_12(D)->BwdPmvPhyAddr, pMp4DecParam_12(D)->BwdPmvPhyAddr
	ldr	r1, .L85+56	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, pMp4DecParam_12(D)->BwdPmvPhyAddr,
	str	r2, [r6, #64]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 64B]
	bl	dprint_vfmw	@
	movw	r3, #1140	@ tmp715,
	mla	r3, r3, r8, r9	@ tmp716, tmp715, VdhId, tmp830
	ldr	r1, .L85+60	@,
	mov	r0, #4	@,
	add	r10, r3, #1072	@ tmp718, tmp716,
	ldr	r2, [r3, #1080]	@ g_HwMem[VdhId_18(D)].SedTopAddr, g_HwMem[VdhId_18(D)].SedTopAddr
	bic	r2, r2, #15	@ Dat, g_HwMem[VdhId_18(D)].SedTopAddr,
	str	r2, [r6, #68]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 68B]
	bl	dprint_vfmw	@
	ldr	r2, [r10, #12]	@ g_HwMem[VdhId_18(D)].PmvTopAddr, g_HwMem[VdhId_18(D)].PmvTopAddr
	ldr	r1, .L85+64	@,
	mov	r0, #4	@,
	bic	r2, r2, #15	@ Dat, g_HwMem[VdhId_18(D)].PmvTopAddr,
	str	r2, [r6, #72]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 72B]
	bl	dprint_vfmw	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	strb	r4, [r5, #157]	@ tmp693, pMp4DecParam_12(D)->FF_BUG_QPEL_FILED
	cmp	r3, #3	@ pMp4DecParam_12(D)->PicCodingType,
	beq	.L81	@,
.L56:
	ldrb	r3, [r5, #153]	@ zero_extendqisi2	@ D.29061, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	and	lr, r3, #1	@ D.29058, D.29061,
	strb	r3, [r5, #152]	@ D.29061, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	mov	r3, lr, asl #3	@ D.29058, D.29058,
.L58:
	ldrb	r2, [r5, #156]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2
	mov	r0, #4	@,
	ldrb	ip, [r5, #155]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA
	and	r2, r2, #1	@ D.29058, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA2,
	ldr	r1, .L85+68	@,
	and	ip, ip, #1	@ D.29058, pMp4DecParam_12(D)->FF_BUG_QPEL_CHROMA,
	orr	r2, ip, r2, asl #1	@ D.29058, D.29058, D.29058,
	orr	r3, r2, r3	@ D.29058, D.29058, D.29058
	orr	r2, r3, lr, asl #2	@ D.29058, D.29058, D.29058,
	str	r2, [r6, #76]	@ D.29058, MEM[(volatile HI_S32 *)pReg_21 + 76B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2340]	@ D.29060, pMp4DecParam_12(D)->dU
	ldr	r1, .L85+72	@,
	mov	r0, #4	@,
	str	r2, [r6, #80]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 80B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2344]	@ D.29060, pMp4DecParam_12(D)->dU
	ldr	r1, .L85+76	@,
	mov	r0, #4	@,
	str	r2, [r6, #84]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 84B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2348]	@ D.29060, pMp4DecParam_12(D)->dV
	ldr	r1, .L85+80	@,
	mov	r0, #4	@,
	str	r2, [r6, #88]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 88B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2352]	@ D.29060, pMp4DecParam_12(D)->dV
	ldr	r1, .L85+84	@,
	mov	r0, #4	@,
	str	r2, [r6, #92]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 92B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2356]	@ D.29060, pMp4DecParam_12(D)->Uo
	ldr	r1, .L85+88	@,
	mov	r0, #4	@,
	str	r2, [r6, #96]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 96B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2360]	@ D.29060, pMp4DecParam_12(D)->Vo
	ldr	r1, .L85+92	@,
	mov	r0, #4	@,
	str	r2, [r6, #100]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 100B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2364]	@ D.29060, pMp4DecParam_12(D)->Uco
	ldr	r1, .L85+96	@,
	mov	r0, #4	@,
	str	r2, [r6, #104]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 104B]
	bl	dprint_vfmw	@
	ldr	r2, [r7, #2368]	@ D.29060, pMp4DecParam_12(D)->Vco
	ldr	r1, .L85+100	@,
	mov	r0, #4	@,
	str	r2, [r6, #108]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 108B]
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->IsShortHeader, pMp4DecParam_12(D)->IsShortHeader
	cmp	r3, #2	@ pMp4DecParam_12(D)->IsShortHeader,
	beq	.L82	@,
.L59:
	movw	r3, #1140	@ tmp823,
	ldr	r1, .L85+104	@,
	mla	r8, r3, r8, r9	@ tmp824, tmp823, VdhId, tmp830
	mov	r0, #4	@,
	ldr	r2, [r8, #44]	@ g_HwMem[VdhId_18(D)].MsgSlotAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr
	add	r2, r2, #256	@ D.29060, g_HwMem[VdhId_18(D)].MsgSlotAddr,
	str	r2, [r6, #252]	@ D.29060, MEM[(volatile HI_S32 *)pReg_21 + 252B]
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.29057,
.L45:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L78:
	mov	r10, #4	@ tmp484,
	ldr	r1, .L85+4	@,
	mov	r2, r10	@, tmp484
	str	r10, [r6]	@ tmp484, MEM[(volatile HI_S32 *)pReg_21]
	mov	r0, r10	@, tmp484
	add	r7, r5, #12288	@ tmp829, pMp4DecParam,
	bl	dprint_vfmw	@
	ldrb	r2, [r5, #4]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->GobMbNum, pMp4DecParam_12(D)->GobMbNum
	ldrb	lr, [r5, #3]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->VopQuant, pMp4DecParam_12(D)->VopQuant
	mov	r0, r10	@, tmp484
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ D.29060, pMp4DecParam_12(D)->VopGobNum
	and	ip, r2, #127	@ D.29058, pMp4DecParam_12(D)->GobMbNum,
	and	lr, lr, #31	@ D.29058, pMp4DecParam_12(D)->VopQuant,
	ldr	r1, .L85+8	@,
	mov	r2, ip, asl #5	@ D.29058, D.29058,
	sub	r3, r3, #1	@ D.29060, D.29060,
	orr	r2, r2, lr, asl #26	@ D.29058, D.29058, D.29058,
	and	r3, r3, #31	@ D.29058, D.29060,
	orr	r2, r2, r3	@ Dat, D.29058, D.29058
	str	r2, [r6, #4]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 4B]
	bl	dprint_vfmw	@
	ldrb	r3, [r5]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicCodingType, pMp4DecParam_12(D)->PicCodingType
	and	r2, r4, #15	@ D.29058, n,
	mov	r0, r10	@, tmp484
	and	r3, r3, #3	@ D.29058, pMp4DecParam_12(D)->PicCodingType,
	ldr	r1, .L85+12	@,
	mov	r3, r3, asl #5	@ D.29058, D.29058,
	orr	r2, r3, r2, asl #22	@ Dat, D.29058, D.29058,
	str	r2, [r6, #8]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 8B]
	bl	dprint_vfmw	@
	b	.L47	@
.L82:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->PicQuantType, pMp4DecParam_12(D)->PicQuantType
	cmp	r3, #0	@ pMp4DecParam_12(D)->PicQuantType,
	addne	r3, r5, #24	@ ivtmp.95, pMp4DecParam,
	strne	r3, [sp, #4]	@ ivtmp.95, %sfp
	movne	fp, #0	@ ivtmp.97,
	beq	.L59	@,
.L60:
	add	r10, fp, #112	@ D.29066, ivtmp.97,
	ldr	r4, [sp, #4]	@ ivtmp.82, %sfp
	add	r10, r6, r10	@ ivtmp.87, pReg, D.29066
	mov	r7, #0	@ j,
.L61:
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ D.29060, MEM[base: _416, offset: 32B]
	add	r2, r7, r7, lsr #31	@ tmp798, j, j,
	ldrb	lr, [r4, #16]	@ zero_extendqisi2	@ D.29060, MEM[base: _416, offset: 16B]
	add	r7, r7, #1	@ j, j,
	ldrb	r1, [r4]	@ zero_extendqisi2	@ D.29060, MEM[base: _416, offset: 0B]
	add	r2, fp, r2, asr #1	@ D.29060, ivtmp.97, tmp798,
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ D.29060, MEM[base: _416, offset: 48B]
	mov	r3, r3, asl #16	@ D.29060, D.29060,
	orr	r3, r3, lr, asl #8	@ D.29060, D.29060, D.29060,
	add	r2, r2, #24	@, D.29060,
	orr	r3, r3, r1	@ D.29060, D.29060, D.29060
	ldr	r1, .L85+108	@,
	orr	r3, r3, r0, asl #24	@ D.29060, D.29060, D.29060,
	mov	r0, #4	@,
	str	r3, [r10], #4	@ D.29060, MEM[(volatile HI_S32 *)pReg_401]
	add	r4, r4, #8	@ ivtmp.82, ivtmp.82,
	bl	dprint_vfmw	@
	cmp	r7, #2	@ j,
	bne	.L61	@,
	add	fp, fp, #8	@ ivtmp.97, ivtmp.97,
	ldr	r3, [sp, #4]	@ ivtmp.95, %sfp
	cmp	fp, #64	@ ivtmp.97,
	add	r3, r3, #1	@ ivtmp.95, ivtmp.95,
	str	r3, [sp, #4]	@ ivtmp.95, %sfp
	bne	.L60	@,
	add	r5, r5, #88	@ ivtmp.73, pMp4DecParam,
	mov	fp, #0	@ ivtmp.75,
.L63:
	add	r10, fp, #176	@ D.29066, ivtmp.75,
	mov	r4, r5	@ ivtmp.60, ivtmp.73
	add	r10, r6, r10	@ ivtmp.65, pReg, D.29066
	mov	r7, #0	@ j,
.L64:
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ D.29060, MEM[base: _306, offset: 32B]
	add	r2, r7, r7, lsr #31	@ tmp815, j, j,
	ldrb	ip, [r4, #16]	@ zero_extendqisi2	@ D.29060, MEM[base: _306, offset: 16B]
	add	r7, r7, #1	@ j, j,
	ldrb	r1, [r4]	@ zero_extendqisi2	@ D.29060, MEM[base: _306, offset: 0B]
	add	r2, fp, r2, asr #1	@ D.29060, ivtmp.75, tmp815,
	ldrb	r0, [r4, #48]	@ zero_extendqisi2	@ D.29060, MEM[base: _306, offset: 48B]
	mov	r3, r3, asl #16	@ D.29060, D.29060,
	orr	r3, r3, ip, asl #8	@ D.29060, D.29060, D.29060,
	add	r2, r2, #24	@, D.29060,
	orr	r3, r3, r1	@ D.29060, D.29060, D.29060
	ldr	r1, .L85+108	@,
	orr	r3, r3, r0, asl #24	@ D.29060, D.29060, D.29060,
	mov	r0, #4	@,
	str	r3, [r10], #4	@ D.29060, MEM[(volatile HI_S32 *)pReg_441]
	add	r4, r4, #8	@ ivtmp.60, ivtmp.60,
	bl	dprint_vfmw	@
	cmp	r7, #2	@ j,
	bne	.L64	@,
	add	fp, fp, #8	@ ivtmp.75, ivtmp.75,
	add	r5, r5, #1	@ ivtmp.73, ivtmp.73,
	cmp	fp, #64	@ ivtmp.75,
	bne	.L63	@,
	b	.L59	@
.L81:
	ldr	r1, [r7, #2332]	@ D.29058, pMp4DecParam_12(D)->sprite_warping_points
	cmp	r1, #1	@ D.29058,
	beq	.L83	@,
	bhi	.L56	@,
	ldrb	r3, [r5, #152]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	ldrb	r2, [r5, #153]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	and	r3, r3, #1	@ D.29058, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT,
	and	lr, r2, #1	@ D.29058, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND,
	mov	r3, r3, asl #3	@ D.29058, D.29058,
	b	.L58	@
.L80:
	ldr	r3, [r7, #2332]	@ pMp4DecParam_12(D)->sprite_warping_points, pMp4DecParam_12(D)->sprite_warping_points
	cmp	r3, #1	@ pMp4DecParam_12(D)->sprite_warping_points,
	bne	.L50	@,
	ldrb	r4, [r5, #154]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_DIVX500B413, pMp4DecParam_12(D)->FF_BUG_DIVX500B413
	cmp	r4, #1	@ pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	beq	.L84	@,
	ldr	r2, [r7, #2356]	@ pMp4DecParam_12(D)->Uo, pMp4DecParam_12(D)->Uo
	mov	r0, #4	@,
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.29060, pMp4DecParam_12(D)->QuarterSample
	mov	r1, r2, asl r1	@ D.29060, pMp4DecParam_12(D)->Uo,
	ldr	r2, [r7, #2336]	@ D.29060, pMp4DecParam_12(D)->sprite_warping_accuracy
	cmp	r1, #0	@ D.29060,
	mov	r3, r3, asl r2	@ D.29060, pMp4DecParam_12(D)->sprite_warping_points,
	add	r3, r1, r3, asr #1	@ D.29060, D.29060, D.29060,
	ldr	r1, .L85+112	@,
	suble	r3, r3, #1	@ D.29060, D.29060,
	mov	r2, r3, asr r2	@ Dat, D.29060,
	str	r2, [r6, #24]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 24B]
	bl	dprint_vfmw	@
	ldr	r3, [r7, #2360]	@ pMp4DecParam_12(D)->Vo, pMp4DecParam_12(D)->Vo
	ldrb	r2, [r5, #11]	@ zero_extendqisi2	@ D.29060, pMp4DecParam_12(D)->QuarterSample
	mov	r3, r3, asl r2	@ D.29060, pMp4DecParam_12(D)->Vo,
	cmp	r3, #0	@ D.29060,
	ble	.L54	@,
	ldr	r1, [r7, #2336]	@ D.29060, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r2, #1	@ tmp682,
	mov	r2, r2, asl r1	@ D.29060, tmp682,
	add	r3, r3, r2, asr #1	@ D.29060, D.29060, D.29060,
	mov	r2, r3, asr r1	@ Dat, D.29060,
.L55:
	str	r2, [r6, #28]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 28B]
	mov	r0, #4	@,
	ldr	r1, .L85+116	@,
	bl	dprint_vfmw	@
	b	.L50	@
.L79:
	ldr	r3, [r5, #204]	@ pMp4DecParam_12(D)->Trb, pMp4DecParam_12(D)->Trb
	mov	r0, #4	@,
	ldr	r2, [r5, #208]	@ pMp4DecParam_12(D)->Trd, pMp4DecParam_12(D)->Trd
	ldr	r1, .L85+120	@,
	mov	r3, r3, asl #1	@ D.29058, pMp4DecParam_12(D)->Trb,
	uxth	r3, r3	@ D.29058, D.29058
	orr	r2, r3, r2, asl #17	@ Dat, D.29058, pMp4DecParam_12(D)->Trd,
	str	r2, [r6, #12]	@ Dat, MEM[(volatile HI_S32 *)pReg_21 + 12B]
	bl	dprint_vfmw	@
	b	.L47	@
.L65:
	mov	r4, r3	@ n, MbCnt
	b	.L42	@
.L83:
	ldrb	r2, [r5, #153]	@ zero_extendqisi2	@ pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND
	mov	r3, #8	@ D.29058,
	strb	r1, [r5, #152]	@ D.29058, pMp4DecParam_12(D)->FF_BUG_EDGE_FIND_POINT
	and	lr, r2, #1	@ D.29058, pMp4DecParam_12(D)->FF_BUG_EDGE_EXTEND,
	b	.L58	@
.L54:
	ldr	r2, [r7, #2336]	@ D.29060, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r1, #1	@ tmp688,
	mov	r1, r1, asl r2	@ D.29060, tmp688,
	add	r3, r3, r1, asr #1	@ D.29060, D.29060, D.29060,
	sub	r3, r3, #1	@ D.29060, D.29060,
	mov	r2, r3, asr r2	@ Dat, D.29060,
	b	.L55	@
.L84:
	ldr	r3, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.29058, pMp4DecParam_12(D)->QuarterSample
	ldr	r0, [r7, #2356]	@, pMp4DecParam_12(D)->Uo
	rsb	r1, r1, r3	@ D.29058, D.29058, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r1, r4, asl r1	@, pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	ldr	r1, .L85+112	@,
	mov	r2, r0	@, tmp642
	str	r0, [r6, #24]	@ tmp642, MEM[(volatile HI_S32 *)pReg_21 + 24B]
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #2336]	@ pMp4DecParam_12(D)->sprite_warping_accuracy, pMp4DecParam_12(D)->sprite_warping_accuracy
	ldrb	r1, [r5, #11]	@ zero_extendqisi2	@ D.29058, pMp4DecParam_12(D)->QuarterSample
	ldr	r0, [r7, #2360]	@, pMp4DecParam_12(D)->Vo
	rsb	r1, r1, r3	@ D.29058, D.29058, pMp4DecParam_12(D)->sprite_warping_accuracy
	mov	r1, r4, asl r1	@, pMp4DecParam_12(D)->FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	ldr	r1, .L85+116	@,
	mov	r2, r0	@, tmp655
	str	r0, [r6, #28]	@ tmp655, MEM[(volatile HI_S32 *)pReg_21 + 28B]
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	b	.L50	@
.L77:
	movw	r2, #358	@,
	ldr	r1, .L85+124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29057,
	b	.L45	@
.L86:
	.align	2
.L85:
	.word	g_HwMem
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC17
	.word	.LC18
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC42
	.word	.LC41
	.word	.LC19
	.word	.LC20
	.word	.LC16
	.word	.LC12
	.fnend
	.size	MP4HAL_V200R004_CfgDnMsg, .-MP4HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP4HAL_V200R004_WriteSlicMsg
	.type	MP4HAL_V200R004_WriteSlicMsg, %function
MP4HAL_V200R004_WriteSlicMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L132	@ tmp304,
	movw	r3, #1140	@ tmp306,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	mla	r1, r3, r1, ip	@ tmp307, tmp306, VdhId, tmp304
	add	lr, r0, #12288	@ tmp496, pMp4DecParam,
	str	r0, [sp, #20]	@ pMp4DecParam, %sfp
	add	r10, r0, #236	@ SliceInfo, pMp4DecParam,
	stmib	sp, {r2, lr}	@,,
	mov	r5, #0	@ tmp301,
	ldr	r9, [lr, #2284]	@ SliceNum, pMp4DecParam_13(D)->SlcNum
	str	r5, [sp, #28]	@ tmp301, D32
	ldr	r4, [r1, #44]	@ g_HwMem[VdhId_18(D)].MsgSlotAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr
	add	r4, r4, #256	@ SlcDnMsgPhyAddr, g_HwMem[VdhId_18(D)].MsgSlotAddr,
	mov	r0, r4	@, SlcDnMsgPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L128	@,
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	ldr	r3, [r3, #260]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num
	cmp	r3, #0	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num,
	bne	.L129	@,
.L90:
	cmp	r9, #0	@ SliceNum,
	ble	.L108	@,
	add	r2, r4, r3, lsl #5	@ D.29137, SlcDnMsgPhyAddr, AddSlice0Flag,
	mov	r5, #0	@ i,
	mov	r3, r3, asl #7	@ D.29146, AddSlice0Flag,
	str	r2, [sp, #16]	@ D.29137, %sfp
	str	r3, [sp, #12]	@ D.29146, %sfp
	b	.L107	@
.L93:
	add	r5, r5, #1	@ i, i,
	cmp	r9, r5	@ SliceNum, i
	ble	.L108	@,
.L107:
	mov	r7, r5, asl #5	@ tmp386, i,
	cmp	r5, #0	@ i,
	sub	r4, r7, r5, asl #2	@ D.29137, tmp386, i,
	add	r4, r10, r4	@ tmp495, SliceInfo, D.29137
	movgt	r3, #1	@ tmp389,
	movle	r3, #0	@ tmp389,
	ldr	r6, [r4, #24]	@ _118->mb_start_num, _118->mb_start_num
	ldr	r2, [r4, #-4]	@ _121->mb_start_num, _121->mb_start_num
	cmp	r6, r2	@ _118->mb_start_num, _121->mb_start_num
	movhi	r6, #0	@, tmp397
	andls	r6, r3, #1	@,, tmp397, tmp389
	cmp	r6, #0	@ tmp397,
	bne	.L93	@,
	ldr	fp, [r4, #16]	@ D.29137, _118->phy_address
	mov	r1, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0,
	ldrb	r2, [r4, #6]	@ zero_extendqisi2	@ D.29137, _118->bit_offset
	add	r5, r5, #1	@ NextSliceId, i,
	and	ip, fp, #15	@ D.29137, D.29137,
	ldr	r0, [r4, #8]	@ _118->bit_len, _118->bit_len
	ldr	r3, [sp, #12]	@ D.29146, %sfp
	add	r2, r2, ip, lsl #3	@ D.29137, D.29137, D.29137,
	mov	ip, r6	@ tmp403, tmp397
	bfi	r1, r2, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29137,,
	bfi	ip, r0, #0, #24	@ tmp403, _118->bit_len,,
	str	ip, [sp, #28]	@ tmp403,
	add	r7, r7, r3	@ D.29146, tmp386, D.29146
	strb	r1, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	mov	r0, #4	@,
	ldr	r2, [sp, #28]	@ D.29137, D32
	ldr	r1, .L132+4	@,
	str	r2, [r8, r7]	@ D.29137, MEM[(volatile HI_S32 *)_142]
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	bic	r3, fp, #15	@ bit_stream_address_0, D.29137,
	add	lr, r7, #4	@ D.29146, D.29146,
	rsb	r3, r2, r3	@ D.29137, StreamBaseAddr, bit_stream_address_0
	mov	ip, r6	@ tmp412, tmp397
	bfi	ip, r3, #0, #24	@ tmp412, D.29137,,
	ldr	r1, .L132+8	@,
	str	ip, [sp, #28]	@ tmp412,
	mov	r0, #4	@,
	str	ip, [r8, lr]	@ tmp412, MEM[(volatile HI_S32 *)_152]
	mov	r2, ip	@, tmp412
	bl	dprint_vfmw	@
	ldr	fp, [r4, #20]	@ D.29137, _118->phy_address
	ldrb	r2, [r4, #7]	@ zero_extendqisi2	@ D.29137, _118->bit_offset
	mov	r1, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	ip, fp, #15	@ D.29137, D.29137,
	ldr	r0, [r4, #12]	@ _118->bit_len, _118->bit_len
	add	r2, r2, ip, lsl #3	@ D.29137, D.29137, D.29137,
	mov	ip, r6	@ tmp420, tmp397
	bfi	r1, r2, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29137,,
	bfi	ip, r0, #0, #24	@ tmp420, _118->bit_len,,
	str	ip, [sp, #28]	@ tmp420,
	add	ip, r7, #8	@ D.29146, D.29146,
	strb	r1, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	mov	r0, #4	@,
	ldr	r2, [sp, #28]	@ D.29137, D32
	ldr	r1, .L132+12	@,
	str	r2, [r8, ip]	@ D.29137, MEM[(volatile HI_S32 *)_172]
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@ _118->phy_address, _118->phy_address
	str	r6, [sp, #28]	@ tmp397, D32
	add	ip, r7, #12	@ D.29146, D.29146,
	cmp	r2, #0	@ _118->phy_address,
	ldr	r1, .L132+16	@,
	bicne	r3, fp, #15	@ bit_stream_address_1, D.29137,
	mov	r0, #4	@,
	ldrne	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	moveq	r3, r2	@ D.29136, _118->phy_address
	mov	r6, #0	@ tmp432,
	rsbne	r3, r2, r3	@ D.29136, StreamBaseAddr, bit_stream_address_1
	ldr	r2, [sp, #28]	@ tmp429,
	bicne	r3, r3, #-16777216	@ D.29136, D.29136,
	bfi	r2, r3, #0, #24	@ tmp429, D.29136,,
	str	r2, [sp, #28]	@ tmp429,
	str	r2, [r8, ip]	@ tmp429, MEM[(volatile HI_S32 *)_183]
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ _118->vop_quant, _118->vop_quant
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ _118->vop_coding_type, _118->vop_coding_type
	add	ip, r7, #16	@ D.29146, D.29146,
	and	r3, r3, #31	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, _118->vop_quant,
	str	r6, [sp, #28]	@ tmp432, D32
	bfi	r3, r2, #5, #2	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, _118->vop_coding_type,,
	strb	r3, [sp, #28]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ _118->intra_dc_vlc_thr, _118->intra_dc_vlc_thr
	mov	r0, #4	@,
	ldrh	r2, [sp, #28]	@,
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ _118->vop_fcode_forward, _118->vop_fcode_forward
	bfi	r2, r3, #7, #3	@ tmp449, _118->intra_dc_vlc_thr,,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ _118->vop_fcode_backward, _118->vop_fcode_backward
	strh	r2, [sp, #28]	@ movhi	@ tmp449,
	mov	r3, r2, lsr #8	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, tmp449,
	bfi	r3, r1, #2, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, _118->vop_fcode_forward,,
	ldr	r1, .L132+20	@,
	bfi	r3, lr, #5, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, _118->vop_fcode_backward,,
	strb	r3, [sp, #29]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward
	ldr	r2, [sp, #28]	@ D.29137, D32
	str	r2, [r8, ip]	@ D.29137, MEM[(volatile HI_S32 *)_205]
	bl	dprint_vfmw	@
	ldr	r1, [r4, #24]	@ _118->mb_start_num, _118->mb_start_num
	add	r3, r7, #20	@ D.29146, D.29146,
	mov	r2, r6	@ tmp472, tmp432
	mov	r0, #4	@,
	bfi	r2, r1, #0, #20	@ tmp472, _118->mb_start_num,,
	ldr	r1, .L132+24	@,
	str	r2, [sp, #28]	@ tmp472,
	str	r2, [r8, r3]	@ tmp472, MEM[(volatile HI_S32 *)_215]
	bl	dprint_vfmw	@
	ldr	r3, [sp, #8]	@ tmp496, %sfp
	ldr	r0, [r3, #2284]	@ SliceNum, pMp4DecParam_13(D)->SlcNum
	cmp	r0, r5	@ SliceNum, NextSliceId
	ble	.L95	@,
	ldr	ip, [r4, #24]	@ D.29137, _118->mb_start_num
	ldr	lr, [r4, #52]	@ D.29137, _293->mb_start_num
	cmp	lr, ip	@ D.29137, D.29137
	movls	r2, r4	@ ivtmp.117, tmp495
	movls	r3, r5	@ NextSliceId, NextSliceId
	bls	.L98	@,
	b	.L130	@
.L100:
	ldr	r1, [r2, #52]	@ D.29137, MEM[base: _224, offset: 52B]
	cmp	r1, ip	@ D.29137, D.29137
	bhi	.L96	@,
.L98:
	add	r3, r3, #1	@ NextSliceId, NextSliceId,
	add	r2, r2, #28	@ ivtmp.117, ivtmp.117,
	cmp	r0, r3	@ SliceNum, NextSliceId
	bgt	.L100	@,
	cmp	r0, r3	@ SliceNum, NextSliceId
	mov	r1, #0	@ slice_end_mbn,
	beq	.L131	@,
.L110:
	cmp	ip, lr	@ D.29137, D.29137
	bcs	.L103	@,
	b	.L101	@
.L105:
	ldr	r3, [r4, #52]	@ MEM[base: _221, offset: 52B], MEM[base: _221, offset: 52B]
	cmp	r3, ip	@ MEM[base: _221, offset: 52B], D.29137
	bhi	.L101	@,
.L103:
	add	r5, r5, #1	@ NextSliceId, NextSliceId,
	add	r4, r4, #28	@ ivtmp.110, ivtmp.110,
	cmp	r0, r5	@ SliceNum, NextSliceId
	bgt	.L105	@,
	ubfx	r1, r1, #0, #20	@ D.29144, slice_end_mbn,,
	mov	r4, #0	@ NextSlcParaAddr,
.L104:
	cmp	r0, r5	@ SliceNum, NextSliceId
	moveq	r4, #0	@ NextSlcParaAddr,
.L125:
	add	r3, r7, #24	@ D.29146, D.29146,
	add	r7, r7, #28	@ D.29146, D.29146,
	mov	r2, #0	@ tmp482,
	mov	r0, #4	@,
	bfi	r2, r1, #0, #20	@ tmp482, D.29144,,
	sub	r5, r5, #1	@ i, NextSliceId,
	str	r2, [sp, #28]	@ tmp482,
	add	r5, r5, #1	@ i, i,
	str	r2, [r8, r3]	@ tmp482, MEM[(volatile HI_S32 *)_230]
	ldr	r1, .L132+28	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, D.29151
	ldr	r1, .L132+32	@,
	mov	r0, #4	@,
	str	r4, [r8, r7]	@ NextSlcParaAddr, MEM[(volatile HI_S32 *)_238]
	str	r4, [sp, #28]	@ D.29151, MEM[(struct MP4SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	cmp	r9, r5	@ SliceNum, i
	bgt	.L107	@,
.L108:
	mov	r0, #0	@ D.29135,
.L121:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L101:
	ldr	r3, [sp, #16]	@ D.29137, %sfp
	ubfx	r1, r1, #0, #20	@ D.29144, slice_end_mbn,,
	add	r4, r3, r5, lsl #5	@ NextSlcParaAddr, D.29137, NextSliceId,
	b	.L104	@
.L130:
	mov	r1, lr	@ D.29137, D.29137
	mov	r3, r5	@ NextSliceId, NextSliceId
.L96:
	cmp	r0, r3	@ SliceNum, NextSliceId
	sub	r1, r1, #1	@ slice_end_mbn, D.29137,
	bne	.L110	@,
.L131:
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	ldr	ip, [r4, #24]	@ D.29137, _118->mb_start_num
	ldr	lr, [r4, #52]	@ D.29137, _343->mb_start_num
	ldrh	r2, [r3, #164]	@ D.29138, pMp4DecParam_13(D)->PicWidthInMb
	ldrh	r3, [r3, #166]	@ D.29138, pMp4DecParam_13(D)->PicHeightInMb
	mul	r1, r3, r2	@ D.29138, D.29138, D.29138
	sub	r1, r1, #1	@ slice_end_mbn, D.29138,
	b	.L110	@
.L129:
	ldr	r7, [sp, #20]	@ pMp4DecParam, %sfp
	mov	r0, #4	@,
	ldr	r3, [sp, #28]	@ tmp315,
	ldr	r6, [r7, #252]	@ D.29137, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	bfi	r3, r5, #0, #24	@ tmp315, tmp301,,
	ldrb	r2, [r7, #242]	@ zero_extendqisi2	@ D.29137, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].bit_offset
	and	r1, r6, #15	@ D.29137, D.29137,
	str	r3, [sp, #28]	@ tmp315,
	mov	r3, r3, lsr #24	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, tmp315,
	add	r2, r2, r1, lsl #3	@ D.29137, D.29137, D.29137,
	ldr	r1, .L132+4	@,
	bfi	r3, r2, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, D.29137,,
	strb	r3, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0, MEM[(struct MP4SLCDNMSG_V200R004_D0 *)&D32].bit_offset_0
	ldr	r2, [sp, #28]	@ D.29137, D32
	str	r2, [r8]	@ D.29137, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23]
	bl	dprint_vfmw	@
	ldr	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	bic	r3, r6, #15	@ bit_stream_address_0, D.29137,
	ldr	r1, .L132+8	@,
	rsb	r3, r2, r3	@ D.29137, StreamBaseAddr, bit_stream_address_0
	mov	r0, #4	@,
	mov	r2, r5	@ tmp322, tmp301
	bfi	r2, r3, #0, #24	@ tmp322, D.29137,,
	str	r2, [sp, #28]	@ tmp322,
	str	r2, [r8, #4]	@ tmp322, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 4B]
	bl	dprint_vfmw	@
	ldr	r6, [r7, #256]	@ D.29137, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	ldrb	r3, [r7, #243]	@ zero_extendqisi2	@ D.29137, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].bit_offset
	mov	r2, #0	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1,
	and	ip, r6, #15	@ D.29137, D.29137,
	str	r5, [sp, #28]	@ tmp301,
	ldr	r1, .L132+12	@,
	mov	r0, #4	@,
	add	r3, r3, ip, lsl #3	@ D.29137, D.29137, D.29137,
	bfi	r2, r3, #0, #7	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, D.29137,,
	strb	r2, [sp, #31]	@ MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1, MEM[(struct MP4SLCDNMSG_V200R004_D2 *)&D32].bit_offset_1
	ldr	r2, [sp, #28]	@ D.29137, D32
	str	r2, [r8, #8]	@ D.29137, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 8B]
	bl	dprint_vfmw	@
	ldr	r3, [r7, #256]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address
	str	r5, [sp, #28]	@ tmp301, D32
	mov	r0, #4	@,
	cmp	r3, #0	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].phy_address,
	ldr	r1, .L132+16	@,
	bicne	r3, r6, #15	@ bit_stream_address_1, D.29137,
	mov	r5, #0	@ tmp337,
	ldrne	r2, [sp, #4]	@ StreamBaseAddr, %sfp
	rsbne	r3, r2, r3	@ D.29136, StreamBaseAddr, bit_stream_address_1
	ldr	r2, [sp, #28]	@ tmp335,
	bicne	r3, r3, #-16777216	@ D.29136, D.29136,
	bfi	r2, r3, #0, #24	@ tmp335, D.29136,,
	str	r2, [sp, #28]	@ tmp335,
	str	r2, [r8, #12]	@ tmp335, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 12B]
	bl	dprint_vfmw	@
	ldr	r6, [sp, #20]	@ pMp4DecParam, %sfp
	str	r5, [sp, #28]	@ tmp337, D32
	mov	r0, #4	@,
	ldr	r1, .L132+20	@,
	ldrb	r3, [r6, #241]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant
	ldrb	r2, [r6, #240]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type
	and	r3, r3, #31	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_quant,
	ldrb	ip, [r6, #237]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward
	bfi	r3, r2, #5, #2	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_coding_type,,
	ldrb	r2, [r6, #239]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr
	strb	r3, [sp, #28]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_coding_type
	ldrh	r3, [sp, #28]	@,
	bfi	r3, r2, #7, #3	@ tmp354, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].intra_dc_vlc_thr,,
	ldrb	r2, [r6, #238]	@ zero_extendqisi2	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward
	strh	r3, [sp, #28]	@ movhi	@ tmp354,
	mov	r3, r3, lsr #8	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, tmp354,
	bfi	r3, ip, #2, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_forward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_forward,,
	bfi	r3, r2, #5, #3	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].vop_fcode_backward,,
	strb	r3, [sp, #29]	@ MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward, MEM[(struct MP4SLCDNMSG_V200R004_D4 *)&D32].vop_fcode_backward
	ldr	r2, [sp, #28]	@ D.29137, D32
	str	r2, [r8, #16]	@ D.29137, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 16B]
	bl	dprint_vfmw	@
	ldr	r1, .L132+24	@,
	mov	r2, r5	@ tmp375, tmp337
	mov	r0, #4	@,
	bfi	r2, r5, #0, #20	@ tmp375, tmp337,,
	str	r2, [sp, #28]	@ tmp375,
	str	r2, [r8, #20]	@ tmp375, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 20B]
	bl	dprint_vfmw	@
	ldr	r3, [r6, #260]	@ MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num
	ldr	r1, .L132+28	@,
	mov	r2, r5	@ tmp380, tmp337
	sub	r3, r3, #1	@ D.29137, MEM[(struct MP4_SLICE_INFO *)pMp4DecParam_13(D) + 236B].mb_start_num,
	mov	r0, #4	@,
	bfi	r2, r3, #0, #20	@ tmp380, D.29137,,
	str	r2, [sp, #28]	@ tmp380,
	str	r2, [r8, #24]	@ tmp380, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 24B]
	bl	dprint_vfmw	@
	add	r3, r4, #32	@ next_slice_para_addr, SlcDnMsgPhyAddr,
	ldr	r1, .L132+32	@,
	mov	r0, #4	@,
	str	r3, [r8, #28]	@ next_slice_para_addr, MEM[(volatile HI_S32 *)SlcDnMsgVirAddr_23 + 28B]
	mov	r2, r3	@, next_slice_para_addr
	str	r3, [sp, #28]	@ next_slice_para_addr, MEM[(struct MP4SLCDNMSG_V200R004_D7 *)&D32].next_slice_para_addr
	bl	dprint_vfmw	@
	mov	r3, #1	@ AddSlice0Flag,
	b	.L90	@
.L95:
	movne	r1, r6	@ D.29144, tmp432
	movne	r4, r1	@ NextSlcParaAddr, D.29144
	bne	.L125	@,
	ldr	r3, [sp, #20]	@ pMp4DecParam, %sfp
	mov	r4, r6	@ NextSlcParaAddr, tmp432
	ldrh	r1, [r3, #164]	@ D.29138, pMp4DecParam_13(D)->PicWidthInMb
	ldrh	r3, [r3, #166]	@ D.29138, pMp4DecParam_13(D)->PicHeightInMb
	mul	r1, r3, r1	@ D.29138, D.29138, D.29138
	sub	r1, r1, #1	@ D.29144, D.29138,
	ubfx	r1, r1, #0, #20	@ D.29144, D.29144,,
	b	.L104	@
.L128:
	movw	r2, #733	@,
	ldr	r1, .L132+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29135,
	b	.L121	@
.L133:
	.align	2
.L132:
	.word	g_HwMem
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC0
	.fnend
	.size	MP4HAL_V200R004_WriteSlicMsg, .-MP4HAL_V200R004_WriteSlicMsg
	.align	2
	.global	MP4HAL_V200R004_StartDec
	.type	MP4HAL_V200R004_StartDec, %function
MP4HAL_V200R004_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldrh	r3, [r0, #164]	@ pMp4DecParam_5(D)->PicWidthInMb, pMp4DecParam_5(D)->PicWidthInMb
	mov	r6, #0	@ tmp120,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	str	r6, [sp, #4]	@ tmp120, StreamBaseAddr
	cmp	r3, #512	@ pMp4DecParam_5(D)->PicWidthInMb,
	bhi	.L142	@,
	ldrh	r3, [r0, #166]	@ pMp4DecParam_5(D)->PicHeightInMb, pMp4DecParam_5(D)->PicHeightInMb
	cmp	r3, #512	@ pMp4DecParam_5(D)->PicHeightInMb,
	bhi	.L143	@,
	add	r2, sp, #4	@,,
	mov	r5, r1	@ VdhId, VdhId
	bl	MP4HAL_V200R004_CfgReg	@
	subs	r7, r0, #0	@ ret,
	bne	.L144	@,
	mov	r1, r5	@, VdhId
	mov	r0, r4	@, pMp4DecParam
	bl	MP4HAL_V200R004_CfgDnMsg	@
	subs	r6, r0, #0	@ ret,
	bne	.L145	@,
	mov	r1, r5	@, VdhId
	mov	r0, r4	@, pMp4DecParam
	ldr	r2, [sp, #4]	@, StreamBaseAddr
	bl	MP4HAL_V200R004_WriteSlicMsg	@
	cmp	r0, #0	@ ret
	bne	.L146	@,
.L136:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L143:
	mov	r0, r6	@, tmp120
	ldr	r3, .L147	@,
	mov	r2, #88	@,
	ldr	r1, .L147+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29162,
	b	.L136	@
.L144:
	mov	r0, r6	@, tmp120
	ldr	r1, .L147+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29162,
	b	.L136	@
.L145:
	mov	r0, r7	@, ret
	ldr	r1, .L147+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29162,
	b	.L136	@
.L142:
	mov	r0, r6	@, tmp120
	ldr	r3, .L147	@,
	mov	r2, #87	@,
	ldr	r1, .L147+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29162,
	b	.L136	@
.L146:
	mov	r0, r6	@, ret
	ldr	r1, .L147+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.29162,
	b	.L136	@
.L148:
	.align	2
.L147:
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.fnend
	.size	MP4HAL_V200R004_StartDec, .-MP4HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line: %d\012\000"
	.space	2
.LC1:
	.ascii	"stream_base_addr = %#x\012\000"
.LC2:
	.ascii	"BASIC_V200R004_CFG0=0x%x\012\000"
	.space	2
.LC3:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC4:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC5:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC6:
	.ascii	"STREAM_V200R004_BASE_ADDR=0x%x\012\000"
.LC7:
	.ascii	"YSTADDR_V200R003_1D=0x%x\012\000"
	.space	2
.LC8:
	.ascii	"YSTRIDE_V200R003_1D=0x%x\012\000"
	.space	2
.LC9:
	.ascii	"UVOFFSET_V200R003_1D=0x%x\012\000"
	.space	1
.LC10:
	.ascii	"PRCMEM2_1D_CNT=0x%x\012\000"
	.space	3
.LC11:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC12:
	.ascii	"line: %d ,pMsgBlock = NULL is not expected value!\012"
	.ascii	"\000"
	.space	1
.LC13:
	.ascii	"D0=0x%x\012\000"
	.space	3
.LC14:
	.ascii	"D1=0x%x\012\000"
	.space	3
.LC15:
	.ascii	"D2=0x%x\012\000"
	.space	3
.LC16:
	.ascii	"D3=0x%x\012\000"
	.space	3
.LC17:
	.ascii	"D4=0x%x\012\000"
	.space	3
.LC18:
	.ascii	"D5=0x%x\012\000"
	.space	3
.LC19:
	.ascii	"D6=0x%x\012\000"
	.space	3
.LC20:
	.ascii	"D7=0x%x\012\000"
	.space	3
.LC21:
	.ascii	"D8=0x%x\012\000"
	.space	3
.LC22:
	.ascii	"D9=0x%x\012\000"
	.space	3
.LC23:
	.ascii	"D10=0x%x\012\000"
	.space	2
.LC24:
	.ascii	"D11=0x%x\012\000"
	.space	2
.LC25:
	.ascii	"D12= 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D13= 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D14= 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D15= 0x%x\012\000"
	.space	1
.LC29:
	.ascii	"D16= 0x%x\012\000"
	.space	1
.LC30:
	.ascii	"D17= 0x%x\012\000"
	.space	1
.LC31:
	.ascii	"D18= 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"D19= 0x%x\012\000"
	.space	1
.LC33:
	.ascii	"D20= 0x%x\012\000"
	.space	1
.LC34:
	.ascii	"D21= 0x%x\012\000"
	.space	1
.LC35:
	.ascii	"D22= 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"D23= 0x%x\012\000"
	.space	1
.LC37:
	.ascii	"D24= 0x%x\012\000"
	.space	1
.LC38:
	.ascii	"D25= 0x%x\012\000"
	.space	1
.LC39:
	.ascii	"D26= 0x%x\012\000"
	.space	1
.LC40:
	.ascii	"D27= 0x%x\012\000"
	.space	1
.LC41:
	.ascii	"D%d= 0x%x\012\000"
	.space	1
.LC42:
	.ascii	"D63= 0x%x\012\000"
	.space	1
.LC43:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC44:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC45:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC46:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC47:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC48:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC49:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC50:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC51:
	.ascii	"picture width out of range\000"
	.space	1
.LC52:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC53:
	.ascii	"MP4HAL_V200R003_CfgReg failed!\012\000"
.LC54:
	.ascii	"MP4HAL_V200R003_CfgDnMsg failed!\012\000"
	.space	2
.LC55:
	.ascii	"MP4HAL_V200R003_WriteSlicMsg failed!\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
