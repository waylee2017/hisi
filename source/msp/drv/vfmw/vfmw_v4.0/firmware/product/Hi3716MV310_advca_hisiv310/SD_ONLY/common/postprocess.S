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
	.file	"postprocess.c"
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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(postprocess)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.global	PostPro_GetRepairStratage
	.type	PostPro_GetRepairStratage, %function
PostPro_GetRepairStratage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetRepairStratage, .-PostPro_GetRepairStratage
	.align	2
	.global	PostPro_GetMp24MbGroup
	.type	PostPro_GetMp24MbGroup, %function
PostPro_GetMp24MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r1, #8]	@ pDecReport_15(D)->DecSliceNum, pDecReport_15(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32549, pDecReport_15(D)->DecSliceNum,
	cmp	r3, #127	@ D.32549,
	bhi	.L11	@,
	ldr	r2, [r0, #24]	@ pRepairParam_19(D)->ImageWidth, pRepairParam_19(D)->ImageWidth
	mov	r3, #0	@ tmp203,
	ldr	r5, [r0, #28]	@ pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp203, pRepairParam_19(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp203, pRepairParam_19(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_19(D)->ImageHeight, pRepairParam_19(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.32549, pDecReport_15(D)->DecSliceNum
	cmp	r3, #0	@ D.32549,
	add	ip, r1, r3, lsl #2	@ tmp208, pDecReport, D.32549,
	uxth	r8, r5	@ D.32551, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.32551, pDecReport_15(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32551, pDecReport_15(D)->SliceMbRange
	bne	.L23	@,
.L5:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.23, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.32550, total_mbn, tmp6
	b	.L13	@
.L26:
	cmp	r2, lr	@ D.32551, old_slice_end_mbn
	movle	r4, #0	@ tmp232,
	movgt	r4, #1	@ tmp232,
	cmp	r2, r6	@ D.32551, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp235, tmp232
	cmp	r4, #0	@ tmp235,
	bne	.L6	@,
	cmp	r2, r7	@ D.32551, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.32550, old_slice_end_mbn,
	cmp	r4, r2	@ D.32550, D.32551
	beq	.L10	@,
	add	r6, r6, r6, lsr #31	@ tmp260, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp261, D.32551,
	cmp	r6, r10	@ tmp260, tmp261
	bge	.L10	@,
	ldr	r4, [r0, #552]	@ D.32550, pRepairParam_19(D)->ValidGroupNum
	cmp	r4, #127	@ D.32550,
	bgt	.L11	@,
	sub	r7, r7, #100	@ tmp259, old_slice_end_mbn,
	sxth	fp, r6	@ D.32550, tmp260
	cmp	r7, fp	@ tmp259, D.32550
	add	fp, r0, r4, lsl #2	@ D.32555, pRepairParam, D.32550,
	add	r4, r4, #1	@ D.32550, D.32550,
	strh	r6, [fp, #40]	@ movhi	@ tmp260, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp261, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp259, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	str	r4, [r0, #552]	@ D.32550, pRepairParam_19(D)->ValidGroupNum
.L10:
	ldr	r4, [r1, #8]	@ D.32558, pDecReport_15(D)->DecSliceNum
	sub	r6, r4, #1	@ D.32549, D.32558,
	cmp	r6, ip	@ D.32549, i
	beq	.L24	@,
.L15:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.32558
	mov	r6, r2	@ old_slice_end_mbn, D.32551
	add	r3, r3, #4	@ ivtmp.23, ivtmp.23,
	bhi	.L25	@,
.L13:
	ldrh	r2, [r3, #12]	@ D.32551, MEM[base: _110, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _110, offset: 14B]
	cmp	r2, r5	@ D.32551, total_mbn
	cmple	lr, r5	@, old_slice_end_mbn, total_mbn
	ble	.L26	@,
.L6:
	ldr	r4, [r1, #8]	@ D.32558, pDecReport_15(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.23, ivtmp.23,
	cmp	ip, r4	@ i, D.32558
	bls	.L13	@,
.L25:
	mov	r3, #0	@ D.32548,
.L20:
	mov	r0, r3	@, D.32548
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L24:
	add	r6, r1, ip, lsl #2	@ tmp252, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32551, pDecReport_15(D)->SliceMbRange
	cmp	r6, r9	@ D.32551, D.32550
	bge	.L15	@,
	ldr	r3, [r0, #552]	@ D.32550, pRepairParam_19(D)->ValidGroupNum
	cmp	r3, #127	@ D.32550,
	bgt	.L11	@,
	add	r1, r0, r3, lsl #2	@ D.32555, pRepairParam, D.32550,
	add	r2, r3, #1	@ D.32550, D.32550,
	sub	r8, r8, #1	@ tmp256, D.32551,
	mov	r3, #0	@ D.32548,
	strh	r8, [r1, #42]	@ movhi	@ tmp256, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32551, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_106 + 40B]
	str	r2, [r0, #552]	@ D.32550, pRepairParam_19(D)->ValidGroupNum
	b	.L20	@
.L23:
	mov	r3, ip	@ tmp214, tmp212
	ldrh	ip, [ip, #10]	@ D.32550, pDecReport_15(D)->SliceMbRange
	sub	r2, r5, #10	@ D.32550, total_mbn,
	add	r3, r3, #6	@ tmp215, tmp214,
	cmp	ip, r2	@ D.32550, D.32550
	subge	r2, r8, #1	@ tmp221, D.32551,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp221, pDecReport_15(D)->SliceMbRange
	b	.L5	@
.L11:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32548,
	mov	r0, r3	@, D.32548
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32568, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32568,
	bhi	.L33	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32568, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.32, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32568,
	add	r9, r5, r6	@ D.32569, total_mbn,
	uxth	r8, r5	@ D.32570, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32570, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32570, pDecReport_13(D)->SliceMbRange
	b	.L35	@
.L42:
	cmp	ip, r6	@ D.32570, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32569, old_slice_end_mbn,
	cmp	r6, ip	@ D.32569, D.32570
	beq	.L32	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32570,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L32	@,
	ldr	r2, [r0, #552]	@ D.32569, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32569,
	bgt	.L33	@,
	add	r10, r0, r2, lsl #2	@ D.32574, pRepairParam, D.32569,
	add	r2, r2, #1	@ D.32569, D.32569,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32569, pRepairParam_17(D)->ValidGroupNum
.L32:
	ldr	r2, [r1, #8]	@ D.32577, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32568, D.32577,
	cmp	r6, lr	@ D.32568, i
	beq	.L40	@,
.L37:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32577
	mov	r7, ip	@ old_slice_end_mbn, D.32570
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	bhi	.L41	@,
.L35:
	ldrh	ip, [r3, #12]	@ D.32570, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32570, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32570, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L42	@,
	ldr	r2, [r1, #8]	@ D.32577, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.32, ivtmp.32,
	cmp	lr, r2	@ i, D.32577
	bls	.L35	@,
.L41:
	mov	r3, #0	@ D.32567,
.L29:
	mov	r0, r3	@, D.32567
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L40:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32570, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32570, D.32569
	bge	.L37	@,
	ldr	r3, [r0, #552]	@ D.32569, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32569,
	bgt	.L33	@,
	add	r1, r0, r3, lsl #2	@ D.32574, pRepairParam, D.32569,
	add	r2, r3, #1	@ D.32569, D.32569,
	sub	r8, r8, #1	@ tmp203, D.32570,
	mov	r3, #0	@ D.32567,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32570, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32569, pRepairParam_17(D)->ValidGroupNum
	b	.L29	@
.L33:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32567,
	mov	r0, r3	@, D.32567
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32587, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32587,
	bhi	.L49	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32587, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.40, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32587,
	add	r9, r5, r6	@ D.32588, total_mbn,
	uxth	r8, r5	@ D.32589, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32589, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32589, pDecReport_13(D)->SliceMbRange
	b	.L51	@
.L58:
	cmp	ip, r6	@ D.32589, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32588, old_slice_end_mbn,
	cmp	r6, ip	@ D.32588, D.32589
	beq	.L48	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32589,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L48	@,
	ldr	r2, [r0, #552]	@ D.32588, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32588,
	bgt	.L49	@,
	add	r10, r0, r2, lsl #2	@ D.32593, pRepairParam, D.32588,
	add	r2, r2, #1	@ D.32588, D.32588,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32588, pRepairParam_17(D)->ValidGroupNum
.L48:
	ldr	r2, [r1, #8]	@ D.32596, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32587, D.32596,
	cmp	r6, lr	@ D.32587, i
	beq	.L56	@,
.L53:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32596
	mov	r7, ip	@ old_slice_end_mbn, D.32589
	add	r3, r3, #4	@ ivtmp.40, ivtmp.40,
	bhi	.L57	@,
.L51:
	ldrh	ip, [r3, #12]	@ D.32589, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32589, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32589, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L58	@,
	ldr	r2, [r1, #8]	@ D.32596, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.40, ivtmp.40,
	cmp	lr, r2	@ i, D.32596
	bls	.L51	@,
.L57:
	mov	r3, #0	@ D.32586,
.L45:
	mov	r0, r3	@, D.32586
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L56:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32589, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32589, D.32588
	bge	.L53	@,
	ldr	r3, [r0, #552]	@ D.32588, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32588,
	bgt	.L49	@,
	add	r1, r0, r3, lsl #2	@ D.32593, pRepairParam, D.32588,
	add	r2, r3, #1	@ D.32588, D.32588,
	sub	r8, r8, #1	@ tmp203, D.32589,
	mov	r3, #0	@ D.32586,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32589, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32588, pRepairParam_17(D)->ValidGroupNum
	b	.L45	@
.L49:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32586,
	mov	r0, r3	@, D.32586
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32606, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.32606,
	bhi	.L65	@,
	ldr	r2, [r0, #24]	@ pRepairParam_17(D)->ImageWidth, pRepairParam_17(D)->ImageWidth
	mov	r3, #0	@ tmp166,
	ldr	r5, [r0, #28]	@ pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageHeight
	mvn	r6, #0	@ old_slice_end_mbn,
	str	r3, [r0, #552]	@ tmp166, pRepairParam_17(D)->ValidGroupNum
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #568]	@ tmp166, pRepairParam_17(D)->FullRepair
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mul	r5, r5, r2	@ total_mbn, pRepairParam_17(D)->ImageHeight, pRepairParam_17(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.32606, pDecReport_13(D)->DecSliceNum
	mov	r3, r1	@ ivtmp.48, pDecReport
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.32606,
	add	r9, r5, r6	@ D.32607, total_mbn,
	uxth	r8, r5	@ D.32608, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.32608, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.32608, pDecReport_13(D)->SliceMbRange
	b	.L67	@
.L74:
	cmp	ip, r6	@ D.32608, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.32607, old_slice_end_mbn,
	cmp	r6, ip	@ D.32607, D.32608
	beq	.L64	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.32608,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L64	@,
	ldr	r2, [r0, #552]	@ D.32607, pRepairParam_17(D)->ValidGroupNum
	cmp	r2, #127	@ D.32607,
	bgt	.L65	@,
	add	r10, r0, r2, lsl #2	@ D.32612, pRepairParam, D.32607,
	add	r2, r2, #1	@ D.32607, D.32607,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_72 + 42B]
	str	r2, [r0, #552]	@ D.32607, pRepairParam_17(D)->ValidGroupNum
.L64:
	ldr	r2, [r1, #8]	@ D.32615, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.32606, D.32615,
	cmp	r6, lr	@ D.32606, i
	beq	.L72	@,
.L69:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.32615
	mov	r7, ip	@ old_slice_end_mbn, D.32608
	add	r3, r3, #4	@ ivtmp.48, ivtmp.48,
	bhi	.L73	@,
.L67:
	ldrh	ip, [r3, #12]	@ D.32608, MEM[base: _86, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _86, offset: 14B]
	cmp	ip, r5	@ D.32608, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.32608, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L74	@,
	ldr	r2, [r1, #8]	@ D.32615, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.48, ivtmp.48,
	cmp	lr, r2	@ i, D.32615
	bls	.L67	@,
.L73:
	mov	r3, #0	@ D.32605,
.L61:
	mov	r0, r3	@, D.32605
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L72:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.32608, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.32608, D.32607
	bge	.L69	@,
	ldr	r3, [r0, #552]	@ D.32607, pRepairParam_17(D)->ValidGroupNum
	cmp	r3, #127	@ D.32607,
	bgt	.L65	@,
	add	r1, r0, r3, lsl #2	@ D.32612, pRepairParam, D.32607,
	add	r2, r3, #1	@ D.32607, D.32607,
	sub	r8, r8, #1	@ tmp203, D.32608,
	mov	r3, #0	@ D.32605,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.32608, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_82 + 40B]
	str	r2, [r0, #552]	@ D.32607, pRepairParam_17(D)->ValidGroupNum
	b	.L61	@
.L65:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32605,
	mov	r0, r3	@, D.32605
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32626, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #127	@ D.32626,
	bhi	.L87	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.32626, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.32626,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.56, pDecReport
	add	r5, r4, r7	@ D.32627, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.32627, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.32628, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.32628, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.32628, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.32627, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.32627, %sfp
	b	.L82	@
.L90:
	cmp	r2, r7	@ D.32628, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.32627, old_slice_end_mbn,
	cmp	r2, r7	@ D.32628, D.32627
	ble	.L80	@,
	ldr	r7, [r8, #552]	@ D.32627, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.32630, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.32630, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.32630, D.32628
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.32632, pRepairParam, D.32627,
	add	r7, r7, #1	@ D.32627, D.32627,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.32627, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L80	@,
	ldr	r5, [sp, #8]	@ D.32627, %sfp
	cmp	r2, r5	@ D.32628, D.32627
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L80:
	ldr	r5, [r1, #8]	@ D.32634, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.32626, D.32634,
	cmp	r6, ip	@ D.32626, i
	beq	.L88	@,
.L84:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.32634
	mov	r6, r2	@ old_slice_end_mbn, D.32628
	add	r3, r3, #4	@ ivtmp.56, ivtmp.56,
	bhi	.L89	@,
.L82:
	ldrh	r2, [r3, #12]	@ D.32628, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.32628, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.32628, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L90	@,
	ldr	r5, [r1, #8]	@ D.32634, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.56, ivtmp.56,
	cmp	ip, r5	@ i, D.32634
	bls	.L82	@,
.L89:
	mov	r3, #0	@ D.32625,
.L77:
	mov	r0, r3	@, D.32625
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L88:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.32627, %sfp
	ldrh	r6, [r6, #14]	@ D.32628, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.32628, D.32627
	bge	.L84	@,
	ldr	r2, [r0, #552]	@ D.32627, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.32628,
	mov	r3, #0	@ D.32625,
	add	r1, r2, #1	@ D.32627, D.32627,
	add	r2, r0, r2, lsl #2	@ D.32632, pRepairParam, D.32627,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32628, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.32627, pRepairParam_23(D)->ValidGroupNum
	b	.L77	@
.L87:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32625,
	mov	r0, r3	@, D.32625
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.32646, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #3	@ D.32646,
	bhi	.L103	@,
	ldr	r2, [r0, #24]	@ pRepairParam_23(D)->ImageWidth, pRepairParam_23(D)->ImageWidth
	mov	r3, #0	@ tmp171,
	ldr	r4, [r0, #28]	@ pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageHeight
	mov	ip, r3	@ i, tmp171
	str	r3, [r0, #568]	@ tmp171, pRepairParam_23(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.32646, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_23(D)->ImageHeight, pRepairParam_23(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.32646,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.64, pDecReport
	add	r5, r4, r7	@ D.32647, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.32647, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.32648, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.32648, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.32648, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.32647, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.32647, %sfp
	b	.L98	@
.L106:
	cmp	r2, r7	@ D.32648, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.32647, old_slice_end_mbn,
	cmp	r2, r7	@ D.32648, D.32647
	ble	.L96	@,
	ldr	r7, [r8, #552]	@ D.32647, pRepairParam_87->ValidGroupNum
	uxth	r5, r9	@ D.32650, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.32650, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.32650, D.32648
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.32652, pRepairParam, D.32647,
	add	r7, r7, #1	@ D.32647, D.32647,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_92 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_87->IsFrame, pRepairParam_87->IsFrame
	str	r7, [r8, #552]	@ D.32647, pRepairParam_87->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_87->IsFrame,
	bne	.L96	@,
	ldr	r5, [sp, #8]	@ D.32647, %sfp
	cmp	r2, r5	@ D.32648, D.32647
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L96:
	ldr	r5, [r1, #8]	@ D.32654, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.32646, D.32654,
	cmp	r6, ip	@ D.32646, i
	beq	.L104	@,
.L100:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.32654
	mov	r6, r2	@ old_slice_end_mbn, D.32648
	add	r3, r3, #4	@ ivtmp.64, ivtmp.64,
	bhi	.L105	@,
.L98:
	ldrh	r2, [r3, #12]	@ D.32648, MEM[base: _98, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _98, offset: 14B]
	cmp	r2, r4	@ D.32648, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.32648, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L106	@,
	ldr	r5, [r1, #8]	@ D.32654, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.64, ivtmp.64,
	cmp	ip, r5	@ i, D.32654
	bls	.L98	@,
.L105:
	mov	r3, #0	@ D.32645,
.L93:
	mov	r0, r3	@, D.32645
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L104:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.32647, %sfp
	ldrh	r6, [r6, #14]	@ D.32648, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.32648, D.32647
	bge	.L100	@,
	ldr	r2, [r0, #552]	@ D.32647, pRepairParam_23(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.32648,
	mov	r3, #0	@ D.32645,
	add	r1, r2, #1	@ D.32647, D.32647,
	add	r2, r0, r2, lsl #2	@ D.32652, pRepairParam, D.32647,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32648, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_80 + 40B]
	str	r1, [r0, #552]	@ D.32647, pRepairParam_23(D)->ValidGroupNum
	b	.L93	@
.L103:
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ D.32645,
	mov	r0, r3	@, D.32645
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	PostPro_GetDivx3MbGroup, .-PostPro_GetDivx3MbGroup
	.align	2
	.global	PostPro_BubbleSort
	.type	PostPro_BubbleSort, %function
PostPro_BubbleSort:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r8, [r0, #8]	@ n, pDecReport_11(D)->DecSliceNum
	cmp	r8, #1	@ n,
	bls	.L120	@,
	mov	r7, #1	@ i,
.L112:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.32674, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.72, pDecReport
	b	.L113	@
.L111:
	ldrh	r1, [r3, #12]	@ D.32672, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.32672, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.32672, D.32672
	bls	.L110	@,
	ldrh	r6, [r3, #14]	@ D.32672, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.32672, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.32672, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.32672, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L110:
	add	r3, r3, #4	@ ivtmp.72, ivtmp.72,
.L113:
	cmp	r2, lr	@ j, D.32674
	add	r2, r2, #1	@ j, j,
	bne	.L111	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L112	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L120:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	PostPro_BubbleSort, .-PostPro_BubbleSort
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
	.global	PostPro_GetH264MbGroup
	.type	PostPro_GetH264MbGroup, %function
PostPro_GetH264MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1	@ pDecReport, pDecReport
	ldr	r6, [r1, #8]	@ D.32709, pDecReport_26(D)->DecSliceNum
	.pad #540
	sub	sp, sp, #540	@,,
	sub	r1, r6, #1	@ D.32709, D.32709,
	cmp	r1, #127	@ D.32709,
	bhi	.L138	@,
	ldr	r7, [r0, #24]	@ D.32710, pRepairParam_30(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_30(D)->ImageHeight, pRepairParam_30(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mul	r5, r5, r7	@ total_mbn, pRepairParam_30(D)->ImageHeight, D.32710
	uxtheq	r7, r5	@ D.32705, total_mbn
	bne	.L158	@,
.L125:
	mov	lr, #0	@ tmp422,
	str	lr, [r10, #552]	@ tmp422, pRepairParam_30(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp422, pRepairParam_30(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.32709, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.32710, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r2, fp	@ ivtmp.88, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp425, pDecReport, D.32709,
	strh	r7, [r0, #14]	@ movhi	@ D.32705, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.32705, pDecReport_26(D)->SliceMbRange
	b	.L141	@
.L161:
	cmp	r1, r6	@ D.32705, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r3, r6, #1	@ D.32710, old_slice_end_mbn,
	cmp	r1, r3	@ D.32705, D.32710
	ble	.L137	@,
	ldr	r3, [r10, #552]	@ D.32710, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.32710,
	bgt	.L138	@,
	add	r8, r8, r8, lsr #31	@ tmp447, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r3, lsl #2	@ D.32717, pRepairParam, D.32710,
	sub	r6, r6, #100	@ tmp472, old_slice_end_mbn,
	add	r3, r3, #1	@ D.32710, D.32710,
	sxth	r4, r8	@ D.32710, tmp447
	strh	r8, [ip, #40]	@ movhi	@ tmp447, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	cmp	r6, r4	@ tmp472, D.32710
	sub	r4, r1, #1	@ tmp448, D.32705,
	strgth	r6, [ip, #40]	@ movhi	@ tmp472, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp448, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_279 + 42B]
	str	r3, [r10, #552]	@ D.32710, pRepairParam_30(D)->ValidGroupNum
.L137:
	ldr	r3, [fp, #8]	@ D.32712, pDecReport_26(D)->DecSliceNum
	sub	ip, r3, #1	@ D.32709, D.32712,
	cmp	ip, lr	@ D.32709, i
	beq	.L159	@,
.L148:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r3, lr	@ D.32712, i
	mov	r8, r1	@ old_slice_end_mbn, D.32705
	add	r2, r2, #4	@ ivtmp.88, ivtmp.88,
	bcc	.L160	@,
.L141:
	ldrh	r1, [r2, #12]	@ D.32705, MEM[base: _187, offset: 12B]
	ldrh	r0, [r2, #14]	@ old_slice_end_mbn, MEM[base: _187, offset: 14B]
	cmp	r1, r5	@ D.32705, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r3, #1	@ tmp434,
	movle	r3, #0	@ tmp434,
	cmp	r1, r0	@ D.32705, old_slice_end_mbn
	orrgt	r3, r3, #1	@,, tmp440, tmp434
	cmp	r3, #0	@ tmp440,
	beq	.L161	@,
	ldr	r3, [fp, #8]	@ D.32712, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r2, r2, #4	@ ivtmp.88, ivtmp.88,
	cmp	r3, lr	@ D.32712, i
	bcs	.L141	@,
.L160:
	mov	r0, #0	@ D.32707,
.L151:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L159:
	add	ip, fp, lr, lsl #2	@ tmp455, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.32705, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.32705, D.32710
	bge	.L148	@,
	ldr	r3, [r10, #552]	@ D.32710, pRepairParam_30(D)->ValidGroupNum
	cmp	r3, #127	@ D.32710,
	bgt	.L138	@,
	add	r2, r10, r3, lsl #2	@ D.32717, pRepairParam, D.32710,
	sub	r7, r7, #1	@ tmp459, D.32705,
	add	r3, r3, #1	@ D.32710, D.32710,
	mov	r0, #0	@ D.32707,
	strh	r7, [r2, #42]	@ movhi	@ tmp459, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.32705, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_273 + 40B]
	str	r3, [r10, #552]	@ D.32710, pRepairParam_30(D)->ValidGroupNum
	b	.L151	@
.L158:
	cmp	r6, #0	@ D.32709,
	mov	r7, r7, asl #1	@ D.32710, D.32710,
	beq	.L128	@,
	add	r3, sp, #24	@ tmp531,,
	mov	r6, r6, asl #2	@ D.32704, D.32709,
	add	r4, fp, r6	@ D.32704, pDecReport, D.32704
	mov	r2, fp	@ ivtmp.106, pDecReport
	mov	r1, r3	@ ivtmp.107, tmp531
	str	r3, [sp, #4]	@ tmp531, %sfp
.L127:
	ldrh	r0, [r2, #12]	@ MEM[base: _23, offset: 12B], MEM[base: _23, offset: 12B]
	add	r2, r2, #4	@ ivtmp.106, ivtmp.106,
	ldrh	r3, [r2, #10]	@ MEM[base: _23, offset: 14B], MEM[base: _23, offset: 14B]
	cmp	r2, r4	@ ivtmp.106, D.32704
	add	r1, r1, #4	@ ivtmp.107, ivtmp.107,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _23, offset: 12B], MEM[base: _16, offset: 0B]
	strh	r3, [r1, #-2]	@ movhi	@ MEM[base: _23, offset: 14B], MEM[base: _16, offset: 2B]
	bne	.L127	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.32710,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp287, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.32705, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.32705, SliceMbRange_Tmp
	uxth	r8, r8	@ D.32706, tmp287
	strh	r8, [sp, #24]	@ movhi	@ D.32706, SliceMbRange_Tmp
	beq	.L146	@,
	sub	r3, r7, #2	@ D.32709, D.32710,
	sub	r6, r6, #4	@ D.32711, D.32704,
	add	r2, sp, #24	@ tmp530,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.32704, tmp530, D.32711
	mov	r5, r3	@ D.32709, D.32709
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.32704, %sfp
	uxth	r2, r7	@ D.32705, D.32710
	str	r2, [sp, #16]	@ D.32705, %sfp
.L142:
	mov	r1, r7	@, D.32710
	mov	r0, r8	@, D.32706
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.32705
	mov	r4, r1	@ tmp306,
	cmp	r4, #1	@ tmp306,
	mov	r1, r7	@, D.32710
	bls	.L129	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.32709, tmp311
	bls	.L130	@,
	str	r1, [sp, #12]	@ tmp311, %sfp
	mov	r0, r8	@, D.32706
	mov	r1, r7	@, D.32710
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp306,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.32710
	mov	r8, r0	@ tmp315,
	mov	r0, r9	@, D.32705
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp311, %sfp
	cmp	r0, r8	@ tmp318, tmp315
	mov	r3, r0	@ tmp318,
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp311,
	beq	.L131	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.32703, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp320, tmp315, tmp512
	uxth	r1, r1	@ D.32705, tmp320
	add	r4, r1, r4	@ tmp322, D.32705, mbsurplus0
	uxth	ip, r4	@ D.32705, tmp322
	strh	ip, [lr, #12]	@ movhi	@ D.32705, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r0, r0, #1	@ tmp329, pRepairParam_30(D)->ImageWidth,
	add	r1, r1, r0	@ tmp331, D.32705, tmp329
	strh	r1, [lr, #14]	@ movhi	@ tmp331, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp338, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	uxth	r2, r2	@ D.32705, mbsurplus1
	smulbb	r3, r3, r1	@ tmp336, tmp318, tmp513
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp334, D.32705, pRepairParam_30(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp334, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 16B]
	uxth	r3, r3	@ D.32705, tmp336
	add	r0, r2, r3	@ tmp340, D.32705, D.32705
	strh	r0, [r9, #14]	@ movhi	@ tmp340, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
	ldr	r0, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp345, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp343, D.32705, pRepairParam_30(D)->ImageWidth
	uxth	r3, r3	@ D.32705, tmp343
	strh	r3, [lr, #20]	@ movhi	@ D.32705, MEM[(struct VDMHAL_DEC_REPORT_S *)_266 + 20B]
	add	r2, r3, r2	@ tmp347, D.32705, D.32705
	strh	r2, [r1, #14]	@ movhi	@ tmp347, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
.L133:
	ldr	r3, [sp, #4]	@ ivtmp.107, %sfp
	ldr	r2, [sp, #8]	@ D.32704, %sfp
	cmp	r3, r2	@ ivtmp.107, D.32704
	beq	.L162	@,
	ldr	r3, [sp, #4]	@ ivtmp.107, %sfp
	add	r3, r3, #4	@ ivtmp.107, ivtmp.107,
	ldrh	r8, [r3]	@ MEM[base: _251, offset: 4B], MEM[base: _251, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _251, offset: 6B], MEM[base: _251, offset: 6B]
	bic	r8, r8, #1	@ tmp464, MEM[base: _251, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp464, MEM[base: _251, offset: 4B]
	orr	r9, r9, #1	@ D.32705, MEM[base: _251, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.32705, MEM[base: _251, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.107, %sfp
	b	.L142	@
.L130:
	mov	r1, r7	@, D.32710
	mov	r0, r8	@, D.32706
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.32703, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp372,, D.32710
	uxth	r0, r0	@ D.32705, tmp372
	add	r4, r0, r4, lsr #1	@ tmp375, D.32705, tmp306,
	uxth	r4, r4	@ D.32705, tmp375
	strh	r4, [r2, #12]	@ movhi	@ D.32705, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	sub	r1, r1, #1	@ tmp382, pRepairParam_30(D)->ImageWidth,
	add	r0, r0, r1	@ tmp384, D.32705, tmp382
	strh	r0, [r2, #14]	@ movhi	@ tmp384, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp389, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp387, D.32705, pRepairParam_30(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp387, MEM[(struct VDMHAL_DEC_REPORT_S *)_258 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.32705, pDecReport_26(D)->SliceMbRange
	bls	.L133	@,
.L156:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp468,
	str	r1, [fp, #8]	@ tmp468, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.32705, total_mbn
	sub	r2, r7, #1	@ tmp471, D.32705,
	strh	r2, [fp, #14]	@ movhi	@ tmp471, pDecReport_26(D)->SliceMbRange
	mov	r2, #0	@ tmp470,
	strh	r2, [fp, #12]	@ movhi	@ tmp470, pDecReport_26(D)->SliceMbRange
.L144:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L125	@
.L129:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.32709, tmp395
	bls	.L134	@,
	add	r4, fp, r6, lsl #2	@ D.32703, pDecReport, j,
	str	r1, [sp, #12]	@ tmp395, %sfp
	mov	r0, r9	@, D.32705
	mov	r1, r7	@, D.32710
	strh	r8, [r4, #12]	@ movhi	@ D.32706, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 12B]
	bl	__aeabi_uidiv	@
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	smulbb	r0, r0, r7	@ tmp403,, D.32710
	ldr	r3, [sp, #12]	@ tmp395, %sfp
	ubfx	r1, r3, #1, #16	@ D.32705, tmp395,,
	uxth	r0, r0	@ D.32705, tmp403
	add	r3, r1, r0	@ tmp408, D.32705, D.32705
	strh	r3, [r4, #14]	@ movhi	@ tmp408, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp413, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp411, D.32705, pRepairParam_30(D)->ImageWidth
	uxth	r3, r2	@ D.32705, tmp411
	strh	r3, [r4, #16]	@ movhi	@ D.32705, MEM[(struct VDMHAL_DEC_REPORT_S *)_41 + 16B]
	add	r3, r3, r1	@ tmp415, D.32705, D.32705
	strh	r3, [ip, #14]	@ movhi	@ tmp415, pDecReport_26(D)->SliceMbRange
	bls	.L133	@,
	b	.L156	@
.L134:
	add	r2, fp, r6, lsl #2	@ tmp418, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.32706, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.32705, pDecReport_26(D)->SliceMbRange
	bls	.L133	@,
	b	.L156	@
.L131:
	smulbb	r3, r0, r7	@ tmp349, tmp318, D.32710
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.32703, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.32705, tmp349
	add	r4, r3, r4	@ tmp351, D.32705, mbsurplus0
	add	r2, r3, r2	@ tmp354, D.32705, mbsurplus1
	uxth	r4, r4	@ D.32705, tmp351
	uxth	r2, r2	@ D.32705, tmp354
	strh	r4, [lr, #12]	@ movhi	@ D.32705, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.32705, pDecReport_26(D)->SliceMbRange
	bhi	.L156	@,
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp362, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp360, D.32705, pRepairParam_30(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp360, MEM[(struct VDMHAL_DEC_REPORT_S *)_262 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_30(D)->ImageWidth, pRepairParam_30(D)->ImageWidth
	add	r2, r2, r3	@ tmp366, D.32705, pRepairParam_30(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp366, pDecReport_26(D)->SliceMbRange
	bls	.L133	@,
	b	.L156	@
.L138:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.32707,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L146:
	mov	r6, r7	@ j, D.32710
.L128:
	uxth	r7, r5	@ D.32705, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
	b	.L144	@
.L162:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L128	@
	.fnend
	.size	PostPro_GetH264MbGroup, .-PostPro_GetH264MbGroup
	.global	__aeabi_idiv
	.align	2
	.global	PostPro_GetRepairParam
	.type	PostPro_GetRepairParam, %function
PostPro_GetRepairParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VidStd,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp242,
	mov	r5, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_18(D)->VidStd
	str	r3, [r1, #552]	@ tmp242, pRepairParam_18(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp242, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_18(D) + 572B].ValidGroupNum
	beq	.L165	@,
	cmp	r0, #3	@ VidStd,
	beq	.L166	@,
	bl	vfmw_dprint_nothing	@
.L185:
	ldr	r2, [r4, #552]	@ pRepairParam_18(D)->ValidGroupNum, pRepairParam_18(D)->ValidGroupNum
	mov	r7, #0	@ err_mbs,
	ldr	r3, [r4, #24]	@ pRepairParam_18(D)->ImageWidth, pRepairParam_18(D)->ImageWidth
	ldr	r5, [r4, #28]	@ pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageHeight
	cmp	r2, #0	@ pRepairParam_18(D)->ValidGroupNum,
	mul	r5, r5, r3	@ total_mbs, pRepairParam_18(D)->ImageHeight, pRepairParam_18(D)->ImageWidth
	ble	.L189	@,
	mov	r8, r4	@ ivtmp.122, pRepairParam
	mov	r9, r7	@ i, err_mbs
.L190:
	bl	vfmw_dprint_nothing	@
	ldrsh	r3, [r8, #42]	@ D.32756, MEM[base: _72, offset: 42B]
	ldrsh	r2, [r8, #40]	@ D.32756, MEM[base: _72, offset: 40B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, [r4, #552]	@ pRepairParam_18(D)->ValidGroupNum, pRepairParam_18(D)->ValidGroupNum
	add	r8, r8, #4	@ ivtmp.122, ivtmp.122,
	rsb	r2, r2, r3	@ D.32756, D.32756, D.32756
	cmp	r1, r9	@ pRepairParam_18(D)->ValidGroupNum, i
	add	r2, r2, #1	@ D.32756, D.32756,
	add	r7, r7, r2	@ err_mbs, err_mbs, D.32756
	bgt	.L190	@,
.L189:
	ldr	r0, [r4, #1124]	@ D.32756, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_18(D) + 572B].ValidGroupNum
	cmp	r0, #0	@ D.32756,
	ble	.L191	@,
	add	r2, r4, #612	@ ivtmp.114, pRepairParam,
	mov	r3, #0	@ i,
	add	r2, r2, #2	@ ivtmp.114, ivtmp.114,
.L192:
	ldrsh	ip, [r2]	@ D.32756, MEM[base: _147, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r1, [r2, #-2]	@ D.32756, MEM[base: _147, offset: 4294967294B]
	cmp	r3, r0	@ i, D.32756
	add	r2, r2, #4	@ ivtmp.114, ivtmp.114,
	rsb	ip, r1, ip	@ D.32756, D.32756, D.32756
	add	ip, ip, #1	@ D.32756, D.32756,
	add	r7, r7, ip	@ err_mbs, err_mbs, D.32756
	bne	.L192	@,
.L191:
	cmp	r5, #0	@ total_mbs,
	beq	.L193	@,
	mov	r0, #100	@ tmp310,
	mov	r1, r5	@, total_mbs
	mul	r0, r0, r7	@, tmp310, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r5, r0, r0, asr #31	@ err_ratio, err_ratio
.L193:
	mov	r3, #0	@ tmp314,
	str	r3, [r6, #8]	@ tmp314, pDecReport_65(D)->DecSliceNum
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L166:
	ldr	r2, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr
	str	r2, [r1, #4]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].CurPicPhyAddr, pRepairParam_18(D)->ImageAddr
	ldr	r2, [r5, #224]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr
	str	r2, [r1, #8]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].DispFramePhyAddr, pRepairParam_18(D)->Image2DAddr
	ldr	r2, [r5, #196]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr
	str	r2, [r1, #16]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].FwdRefPhyAddr, pRepairParam_18(D)->RefImageAddr
	ldr	r2, [r5, #240]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr
	str	r2, [r1, #20]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PmvColmbPhyAddr, pRepairParam_18(D)->CurrPmvAddr
	ldrh	r2, [r5, #152]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb
	str	r2, [r1, #24]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicWidthInMb, pRepairParam_18(D)->ImageWidth
	ldrh	r2, [r5, #148]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb
	str	r2, [r1, #28]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PicHeightInMb, pRepairParam_18(D)->ImageHeight
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure
	str	r3, [r1, #36]	@ tmp242, pRepairParam_18(D)->ImageCSP
	sub	r2, r2, #3	@ D.32760, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure,
	clz	r2, r2	@ D.32760, D.32760
	mov	r2, r2, lsr #5	@ D.32760, D.32760,
	str	r2, [r1, #32]	@ D.32760, pRepairParam_18(D)->IsFrame
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ D.32759, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].PictureStructure
	cmp	r2, #1	@ D.32759,
	beq	.L218	@,
	cmp	r2, #2	@ D.32759,
	beq	.L218	@,
	cmp	r2, #3	@ D.32759,
	streq	r3, [r1, #564]	@ tmp242, pRepairParam_18(D)->Pic_type
.L187:
	add	r5, r5, #45056	@ tmp295, pDecParam,
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	ldr	r3, [r5, #260]	@ D.32756, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_23(D)].Compress_en
	str	r3, [r4, #560]	@ D.32756, pRepairParam_18(D)->Compress_en
	bl	PostPro_GetMp24MbGroup	@
	b	.L185	@
.L165:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp246, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp248, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp248, pRepairParam_18(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicImg2DAddr, pRepairParam_18(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, _31->declist[0][0].img_idc
	add	r3, r2, r1, lsl #2	@ tmp252, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp254, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	str	r3, [r4, #16]	@ tmp254, pRepairParam_18(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp255, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp257, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].PmvPhyAddr
	str	r3, [r4, #20]	@ tmp257, pRepairParam_18(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb
	str	r3, [r4, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_width_in_mb, pRepairParam_18(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb
	str	r3, [r4, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_height_in_mb, pRepairParam_18(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	clz	r3, r3	@ D.32760, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.32760, D.32760,
	str	r3, [r4, #32]	@ D.32760, pRepairParam_18(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc
	clz	r3, r3	@ D.32760, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.32760, D.32760,
	str	r3, [r4, #36]	@ D.32760, pRepairParam_18(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.32757, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ApcSize
	cmp	ip, #0	@ D.32757,
	beq	.L167	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId
	cmp	r3, r1	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicFsId, ref_img_idc
	addne	r3, r2, #1312	@ ivtmp.138, pDecParam,
	addne	r3, r3, #8	@ ivtmp.138, ivtmp.138,
	bne	.L170	@,
	b	.L168	@
.L171:
	ldr	r2, [r3, #4]!	@ MEM[base: _178, offset: 0B], MEM[base: _178, offset: 0B]
	cmp	r2, r1	@ MEM[base: _178, offset: 0B], ref_img_idc
	beq	.L168	@,
.L170:
	add	r0, r0, #1	@ i, i,
	cmp	r0, ip	@ i, D.32757
	bne	.L171	@,
.L167:
	ldr	r2, [r5, #32]	@ D.32757, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r5, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag
	cmp	r2, #0	@ D.32757,
	ldrneb	r2, [r5]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	clzne	r2, r2	@ D.32757, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.32757, D.32757,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag,
	streq	r3, [r6, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].NewPicFlag, pDecReport_65(D)->DecSliceNum
	bne	.L220	@,
.L174:
	ldr	r0, [r4, #4]	@ D.32756, pRepairParam_18(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_18(D)->RefImageAddr, pRepairParam_18(D)->RefImageAddr
	cmp	r0, r3	@ D.32756, pRepairParam_18(D)->RefImageAddr
	beq	.L221	@,
.L175:
	ldrb	r3, [r5]	@ zero_extendqisi2	@ D.32759, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].pic_structure
	cmp	r3, #0	@ D.32759,
	beq	.L184	@,
	cmp	r3, #1	@ D.32759,
	beq	.L217	@,
	cmp	r3, #2	@ D.32759,
	beq	.L217	@,
	cmp	r3, #3	@ D.32759,
	bne	.L181	@,
.L184:
	mov	r3, #0	@ tmp278,
	str	r3, [r4, #564]	@ tmp278, pRepairParam_18(D)->Pic_type
.L181:
	ldr	r3, [r5, #1384]	@ D.32756, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].Compress_en
	str	r3, [r4, #560]	@ D.32756, pRepairParam_18(D)->Compress_en
	b	.L185	@
.L218:
	str	r2, [r4, #564]	@ D.32759, pRepairParam_18(D)->Pic_type
	b	.L187	@
.L168:
	add	r0, r0, #312	@ tmp269, i,
	add	r0, r0, #2	@ tmp269, tmp269,
	ldr	r3, [r5, r0, asl #2]	@ tmp270, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].RefPicType
	str	r3, [r4, #556]	@ tmp270, pRepairParam_18(D)->rpr_ref_pic_type
	b	.L167	@
.L220:
	mov	r1, r6	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L174	@
.L221:
	ldr	ip, [r5, #820]	@ D.32757, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgSlotNum
	cmp	ip, #0	@ D.32757,
	beq	.L175	@,
	ldr	r2, [r5, #308]	@ D.32757, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_23(D)].ImgPhyAddr
	cmp	r0, r2	@ D.32756, D.32757
	addeq	r1, r5, #308	@ ivtmp.127, pDecParam,
	moveq	r3, #0	@ i,
	bne	.L176	@,
.L178:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.32757
	beq	.L175	@,
	ldr	r2, [r1, #4]!	@ D.32757, MEM[base: _4, offset: 0B]
	cmp	r2, r0	@ D.32757, D.32756
	beq	.L178	@,
.L176:
	str	r2, [r4, #16]	@ D.32757, pRepairParam_18(D)->RefImageAddr
	b	.L175	@
.L217:
	str	r3, [r4, #564]	@ D.32759, pRepairParam_18(D)->Pic_type
	b	.L181	@
	.fnend
	.size	PostPro_GetRepairParam, .-PostPro_GetRepairParam
	.align	2
	.global	PostPro_GetErrRatio
	.type	PostPro_GetErrRatio, %function
PostPro_GetErrRatio:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r3, r2, asl #9	@ tmp123, VdhId,
	ldr	r6, .L226	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L226+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L226+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.32767, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.32767,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L223	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.32767
.L224:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	bl	PostPro_GetRepairParam	@
	mov	r4, r0	@ err_ratio,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, err_ratio
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L223:
	bl	vfmw_dprint_nothing	@
	b	.L224	@
.L227:
	.align	2
.L226:
	.word	g_vdm_hal_fun_ptr
	.word	g_RepairParam
	.word	g_DecReport
	.fnend
	.size	PostPro_GetErrRatio, .-PostPro_GetErrRatio
	.align	2
	.global	PostPro_SetFullRepair
	.type	PostPro_SetFullRepair, %function
PostPro_SetFullRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	ip, r2, asl #9	@ tmp120, VdhId,
	ldr	r5, .L230	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L230+4	@ tmp141,
	mov	lr, r2	@ VdhId, VdhId
	add	r4, r5, ip	@ tmp122, tmp117, tmp121
	movw	r8, #1144	@ tmp139,
	mov	r7, #1	@ tmp123,
	mov	r6, #0	@ tmp131,
	mov	r2, r1	@, pDecParam
	str	r7, [r5, ip]	@ tmp123, MEM[(struct VDMHAL_DEC_REPORT_S *)&g_DecReport][VdhId_1(D)].RetType
	mla	r1, r8, lr, r3	@, tmp139, VdhId, tmp141
	str	r6, [r4, #8]	@ tmp131, MEM[(struct VDMHAL_DEC_REPORT_S *)&g_DecReport][VdhId_1(D)].DecSliceNum
	mov	r3, r4	@, tmp122
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	PostPro_GetRepairParam	@
.L231:
	.align	2
.L230:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
