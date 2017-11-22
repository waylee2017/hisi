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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(postprocess)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.postprocess.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/postprocess.o
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
	.type	PostPro_GetMp24MbGroup.part.0, %function
PostPro_GetMp24MbGroup.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0	@ tmp199,
	ldr	r2, [r0, #24]	@ pRepairParam_1(D)->ImageWidth, pRepairParam_1(D)->ImageWidth
	ldr	r5, [r0, #28]	@ pRepairParam_1(D)->ImageHeight, pRepairParam_1(D)->ImageHeight
	str	r3, [r0, #552]	@ tmp199, pRepairParam_1(D)->ValidGroupNum
	str	r3, [r0, #568]	@ tmp199, pRepairParam_1(D)->FullRepair
	mul	r5, r5, r2	@ total_mbn, pRepairParam_1(D)->ImageHeight, pRepairParam_1(D)->ImageWidth
	ldr	r3, [r1, #8]	@ D.28132, pDecReport_5(D)->DecSliceNum
	cmp	r3, #0	@ D.28132,
	add	ip, r1, r3, lsl #2	@ tmp204, pDecReport, D.28132,
	uxth	r8, r5	@ D.28133, total_mbn
	strh	r8, [ip, #14]	@ movhi	@ D.28133, pDecReport_5(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28133, pDecReport_5(D)->SliceMbRange
	beq	.L2	@,
	mov	r3, ip	@ tmp210, tmp208
	ldrh	ip, [ip, #10]	@ D.28131, pDecReport_5(D)->SliceMbRange
	sub	r2, r5, #10	@ D.28131, total_mbn,
	add	r3, r3, #6	@ tmp211, tmp210,
	cmp	ip, r2	@ D.28131, D.28131
	subge	r2, r8, #1	@ tmp217, D.28133,
	strgeh	r2, [r3, #4]	@ movhi	@ tmp217, pDecReport_5(D)->SliceMbRange
.L2:
	mvn	r7, #0	@ old_slice_end_mbn,
	mov	r3, r1	@ ivtmp.21, pDecReport
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	mov	ip, #0	@ i,
	add	r9, r5, r7	@ D.28131, total_mbn, tmp6
	b	.L12	@
.L24:
	cmp	r2, lr	@ D.28133, old_slice_end_mbn
	movle	r4, #0	@ tmp228,
	movgt	r4, #1	@ tmp228,
	cmp	r2, r6	@ D.28133, old_slice_end_mbn
	orrlt	r4, r4, #1	@,, tmp231, tmp228
	cmp	r4, #0	@ tmp231,
	bne	.L3	@,
	cmp	r2, r7	@ D.28133, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r4, r7, #1	@ D.28131, old_slice_end_mbn,
	cmp	r2, r4	@ D.28133, D.28131
	beq	.L7	@,
	add	r6, r6, r6, lsr #31	@ tmp255, old_slice_end_mbn, old_slice_end_mbn,
	sub	r10, r2, #1	@ tmp253, D.28133,
	cmp	r6, r10	@ tmp255, tmp253
	bge	.L7	@,
	ldr	r4, [r0, #552]	@ D.28131, pRepairParam_1(D)->ValidGroupNum
	cmp	r4, #127	@ D.28131,
	bgt	.L11	@,
	sub	r7, r7, #100	@ tmp254, old_slice_end_mbn,
	sxth	fp, r6	@ D.28131, tmp255
	cmp	r7, fp	@ tmp254, D.28131
	add	fp, r0, r4, lsl #2	@ D.28138, pRepairParam, D.28131,
	add	r4, r4, #1	@ D.28131, D.28131,
	strh	r6, [fp, #40]	@ movhi	@ tmp255, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_94 + 40B]
	strh	r10, [fp, #42]	@ movhi	@ tmp253, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_94 + 42B]
	strgth	r7, [fp, #40]	@ movhi	@ tmp254, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_94 + 40B]
	str	r4, [r0, #552]	@ D.28131, pRepairParam_1(D)->ValidGroupNum
.L7:
	ldr	r4, [r1, #8]	@ D.28141, pDecReport_5(D)->DecSliceNum
	sub	r6, r4, #1	@ D.28132, D.28141,
	cmp	ip, r6	@ i, D.28132
	beq	.L22	@,
.L14:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r4	@ i, D.28141
	mov	r6, r2	@ old_slice_end_mbn, D.28133
	add	r3, r3, #4	@ ivtmp.21, ivtmp.21,
	bhi	.L23	@,
.L12:
	ldrh	r2, [r3, #12]	@ D.28133, MEM[base: _105, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _105, offset: 14B]
	cmp	r5, r2	@ total_mbn, D.28133
	cmpge	r5, lr	@, total_mbn, old_slice_end_mbn
	bge	.L24	@,
.L3:
	ldr	r4, [r1, #8]	@ D.28141, pDecReport_5(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.21, ivtmp.21,
	cmp	ip, r4	@ i, D.28141
	bls	.L12	@,
.L23:
	mov	r3, #0	@ D.28137,
.L19:
	mov	r0, r3	@, D.28137
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L22:
	ldrh	r6, [r3, #14]	@ D.28133, MEM[base: _105, offset: 14B]
	cmp	r6, r9	@ D.28133, D.28131
	bge	.L14	@,
	ldr	r3, [r0, #552]	@ D.28131, pRepairParam_1(D)->ValidGroupNum
	cmp	r3, #127	@ D.28131,
	ble	.L25	@,
.L11:
	mov	r3, #1	@ D.28137,
	mov	r0, r3	@, D.28137
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L25:
	add	r1, r0, r3, lsl #2	@ D.28138, pRepairParam, D.28131,
	add	r2, r3, #1	@ D.28131, D.28131,
	sub	r8, r8, #1	@ tmp250, D.28133,
	mov	r3, #0	@ D.28137,
	strh	r8, [r1, #42]	@ movhi	@ tmp250, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28133, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_100 + 40B]
	str	r2, [r0, #552]	@ D.28131, pRepairParam_1(D)->ValidGroupNum
	b	.L19	@
	.fnend
	.size	PostPro_GetMp24MbGroup.part.0, .-PostPro_GetMp24MbGroup.part.0
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
	@ link register save eliminated.
	ldr	r3, [r1, #8]	@ pDecReport_4(D)->DecSliceNum, pDecReport_4(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28147, pDecReport_4(D)->DecSliceNum,
	cmp	r3, #127	@ D.28147,
	bhi	.L28	@,
	b	PostPro_GetMp24MbGroup.part.0	@
.L28:
	mov	r0, #1	@,
	bx	lr	@
	.fnend
	.size	PostPro_GetMp24MbGroup, .-PostPro_GetMp24MbGroup
	.align	2
	.global	PostPro_GetVc1MbGroup
	.type	PostPro_GetVc1MbGroup, %function
PostPro_GetVc1MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28157, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28157,
	bhi	.L44	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0	@ tmp166,
	ldr	r2, [r0, #24]	@ pRepairParam_16(D)->ImageWidth, pRepairParam_16(D)->ImageWidth
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r5, [r0, #28]	@ pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageHeight
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #552]	@ tmp166, pRepairParam_16(D)->ValidGroupNum
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	str	r3, [r0, #568]	@ tmp166, pRepairParam_16(D)->FullRepair
	mov	r3, r1	@ ivtmp.34, pDecReport
	mul	r5, r5, r2	@ total_mbn, pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28157, pDecReport_13(D)->DecSliceNum
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.28157,
	add	r9, r5, r6	@ D.28158, total_mbn,
	uxth	r8, r5	@ D.28159, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.28159, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28159, pDecReport_13(D)->SliceMbRange
	b	.L37	@
.L47:
	cmp	ip, r6	@ D.28159, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28158, old_slice_end_mbn,
	cmp	r6, ip	@ D.28158, D.28159
	beq	.L34	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.28159,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L34	@,
	ldr	r2, [r0, #552]	@ D.28158, pRepairParam_16(D)->ValidGroupNum
	cmp	r2, #127	@ D.28158,
	bgt	.L35	@,
	add	r10, r0, r2, lsl #2	@ D.28163, pRepairParam, D.28158,
	add	r2, r2, #1	@ D.28158, D.28158,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 42B]
	str	r2, [r0, #552]	@ D.28158, pRepairParam_16(D)->ValidGroupNum
.L34:
	ldr	r2, [r1, #8]	@ D.28166, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28157, D.28166,
	cmp	r6, lr	@ D.28157, i
	beq	.L45	@,
.L39:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28166
	mov	r7, ip	@ old_slice_end_mbn, D.28159
	add	r3, r3, #4	@ ivtmp.34, ivtmp.34,
	bhi	.L46	@,
.L37:
	ldrh	ip, [r3, #12]	@ D.28159, MEM[base: _83, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _83, offset: 14B]
	cmp	ip, r5	@ D.28159, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.28159, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L47	@,
	ldr	r2, [r1, #8]	@ D.28166, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.34, ivtmp.34,
	cmp	lr, r2	@ i, D.28166
	bls	.L37	@,
.L46:
	mov	r3, #0	@ D.28156,
.L31:
	mov	r0, r3	@, D.28156
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L45:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28159, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28159, D.28158
	bge	.L39	@,
	ldr	r3, [r0, #552]	@ D.28158, pRepairParam_16(D)->ValidGroupNum
	cmp	r3, #127	@ D.28158,
	bgt	.L35	@,
	add	r1, r0, r3, lsl #2	@ D.28163, pRepairParam, D.28158,
	add	r2, r3, #1	@ D.28158, D.28158,
	sub	r8, r8, #1	@ tmp203, D.28159,
	mov	r3, #0	@ D.28156,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28159, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 40B]
	str	r2, [r0, #552]	@ D.28158, pRepairParam_16(D)->ValidGroupNum
	b	.L31	@
.L44:
	mov	r3, #1	@ D.28156,
	mov	r0, r3	@, D.28156
	bx	lr	@
.L35:
	mov	r3, #1	@ D.28156,
	b	.L31	@
	.fnend
	.size	PostPro_GetVc1MbGroup, .-PostPro_GetVc1MbGroup
	.align	2
	.global	PostPro_GetVp6MbGroup
	.type	PostPro_GetVp6MbGroup, %function
PostPro_GetVp6MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28176, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28176,
	bhi	.L63	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0	@ tmp166,
	ldr	r2, [r0, #24]	@ pRepairParam_16(D)->ImageWidth, pRepairParam_16(D)->ImageWidth
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r5, [r0, #28]	@ pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageHeight
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #552]	@ tmp166, pRepairParam_16(D)->ValidGroupNum
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	str	r3, [r0, #568]	@ tmp166, pRepairParam_16(D)->FullRepair
	mov	r3, r1	@ ivtmp.42, pDecReport
	mul	r5, r5, r2	@ total_mbn, pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28176, pDecReport_13(D)->DecSliceNum
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.28176,
	add	r9, r5, r6	@ D.28177, total_mbn,
	uxth	r8, r5	@ D.28178, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.28178, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28178, pDecReport_13(D)->SliceMbRange
	b	.L56	@
.L66:
	cmp	ip, r6	@ D.28178, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28177, old_slice_end_mbn,
	cmp	r6, ip	@ D.28177, D.28178
	beq	.L53	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.28178,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L53	@,
	ldr	r2, [r0, #552]	@ D.28177, pRepairParam_16(D)->ValidGroupNum
	cmp	r2, #127	@ D.28177,
	bgt	.L54	@,
	add	r10, r0, r2, lsl #2	@ D.28182, pRepairParam, D.28177,
	add	r2, r2, #1	@ D.28177, D.28177,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 42B]
	str	r2, [r0, #552]	@ D.28177, pRepairParam_16(D)->ValidGroupNum
.L53:
	ldr	r2, [r1, #8]	@ D.28185, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28176, D.28185,
	cmp	r6, lr	@ D.28176, i
	beq	.L64	@,
.L58:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28185
	mov	r7, ip	@ old_slice_end_mbn, D.28178
	add	r3, r3, #4	@ ivtmp.42, ivtmp.42,
	bhi	.L65	@,
.L56:
	ldrh	ip, [r3, #12]	@ D.28178, MEM[base: _83, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _83, offset: 14B]
	cmp	ip, r5	@ D.28178, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.28178, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L66	@,
	ldr	r2, [r1, #8]	@ D.28185, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.42, ivtmp.42,
	cmp	lr, r2	@ i, D.28185
	bls	.L56	@,
.L65:
	mov	r3, #0	@ D.28175,
.L50:
	mov	r0, r3	@, D.28175
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L64:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28178, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28178, D.28177
	bge	.L58	@,
	ldr	r3, [r0, #552]	@ D.28177, pRepairParam_16(D)->ValidGroupNum
	cmp	r3, #127	@ D.28177,
	bgt	.L54	@,
	add	r1, r0, r3, lsl #2	@ D.28182, pRepairParam, D.28177,
	add	r2, r3, #1	@ D.28177, D.28177,
	sub	r8, r8, #1	@ tmp203, D.28178,
	mov	r3, #0	@ D.28175,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28178, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 40B]
	str	r2, [r0, #552]	@ D.28177, pRepairParam_16(D)->ValidGroupNum
	b	.L50	@
.L63:
	mov	r3, #1	@ D.28175,
	mov	r0, r3	@, D.28175
	bx	lr	@
.L54:
	mov	r3, #1	@ D.28175,
	b	.L50	@
	.fnend
	.size	PostPro_GetVp6MbGroup, .-PostPro_GetVp6MbGroup
	.align	2
	.global	PostPro_GetVp8MbGroup
	.type	PostPro_GetVp8MbGroup, %function
PostPro_GetVp8MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #8]	@ pDecReport_13(D)->DecSliceNum, pDecReport_13(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28195, pDecReport_13(D)->DecSliceNum,
	cmp	r3, #127	@ D.28195,
	bhi	.L82	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, #0	@ tmp166,
	ldr	r2, [r0, #24]	@ pRepairParam_16(D)->ImageWidth, pRepairParam_16(D)->ImageWidth
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r5, [r0, #28]	@ pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageHeight
	mov	lr, r3	@ i, tmp166
	str	r3, [r0, #552]	@ tmp166, pRepairParam_16(D)->ValidGroupNum
	mov	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	str	r3, [r0, #568]	@ tmp166, pRepairParam_16(D)->FullRepair
	mov	r3, r1	@ ivtmp.50, pDecReport
	mul	r5, r5, r2	@ total_mbn, pRepairParam_16(D)->ImageHeight, pRepairParam_16(D)->ImageWidth
	ldr	r2, [r1, #8]	@ D.28195, pDecReport_13(D)->DecSliceNum
	add	ip, r1, r2, lsl #2	@ tmp171, pDecReport, D.28195,
	add	r9, r5, r6	@ D.28196, total_mbn,
	uxth	r8, r5	@ D.28197, total_mbn
	mov	r2, ip	@ tmp175, tmp171
	strh	r8, [ip, #14]	@ movhi	@ D.28197, pDecReport_13(D)->SliceMbRange
	strh	r8, [ip, #12]	@ movhi	@ D.28197, pDecReport_13(D)->SliceMbRange
	b	.L75	@
.L85:
	cmp	ip, r6	@ D.28197, old_slice_end_mbn
	movlt	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	r6, r6, #1	@ D.28196, old_slice_end_mbn,
	cmp	r6, ip	@ D.28196, D.28197
	beq	.L72	@,
	add	r7, r7, r7, lsr #31	@ tmp207, old_slice_end_mbn, old_slice_end_mbn,
	sub	r6, ip, #1	@ tmp206, D.28197,
	cmp	r7, r6	@ tmp207, tmp206
	bge	.L72	@,
	ldr	r2, [r0, #552]	@ D.28196, pRepairParam_16(D)->ValidGroupNum
	cmp	r2, #127	@ D.28196,
	bgt	.L73	@,
	add	r10, r0, r2, lsl #2	@ D.28201, pRepairParam, D.28196,
	add	r2, r2, #1	@ D.28196, D.28196,
	strh	r7, [r10, #40]	@ movhi	@ tmp207, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 40B]
	strh	r6, [r10, #42]	@ movhi	@ tmp206, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_69 + 42B]
	str	r2, [r0, #552]	@ D.28196, pRepairParam_16(D)->ValidGroupNum
.L72:
	ldr	r2, [r1, #8]	@ D.28204, pDecReport_13(D)->DecSliceNum
	sub	r6, r2, #1	@ D.28195, D.28204,
	cmp	r6, lr	@ D.28195, i
	beq	.L83	@,
.L77:
	add	lr, lr, #1	@ i, i,
	mov	r6, r4	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	lr, r2	@ i, D.28204
	mov	r7, ip	@ old_slice_end_mbn, D.28197
	add	r3, r3, #4	@ ivtmp.50, ivtmp.50,
	bhi	.L84	@,
.L75:
	ldrh	ip, [r3, #12]	@ D.28197, MEM[base: _83, offset: 12B]
	ldrh	r4, [r3, #14]	@ old_slice_end_mbn, MEM[base: _83, offset: 14B]
	cmp	ip, r5	@ D.28197, total_mbn
	cmple	r4, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp180,
	movle	r2, #0	@ tmp180,
	cmp	ip, r4	@ D.28197, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp186, tmp180
	cmp	r2, #0	@ tmp186,
	beq	.L85	@,
	ldr	r2, [r1, #8]	@ D.28204, pDecReport_13(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.50, ivtmp.50,
	cmp	lr, r2	@ i, D.28204
	bls	.L75	@,
.L84:
	mov	r3, #0	@ D.28194,
.L69:
	mov	r0, r3	@, D.28194
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L83:
	add	r6, r1, lr, lsl #2	@ tmp199, pDecReport, i,
	ldrh	r6, [r6, #14]	@ D.28197, pDecReport_13(D)->SliceMbRange
	cmp	r6, r9	@ D.28197, D.28196
	bge	.L77	@,
	ldr	r3, [r0, #552]	@ D.28196, pRepairParam_16(D)->ValidGroupNum
	cmp	r3, #127	@ D.28196,
	bgt	.L73	@,
	add	r1, r0, r3, lsl #2	@ D.28201, pRepairParam, D.28196,
	add	r2, r3, #1	@ D.28196, D.28196,
	sub	r8, r8, #1	@ tmp203, D.28197,
	mov	r3, #0	@ D.28194,
	strh	r8, [r1, #42]	@ movhi	@ tmp203, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28197, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 40B]
	str	r2, [r0, #552]	@ D.28196, pRepairParam_16(D)->ValidGroupNum
	b	.L69	@
.L82:
	mov	r3, #1	@ D.28194,
	mov	r0, r3	@, D.28194
	bx	lr	@
.L73:
	mov	r3, #1	@ D.28194,
	b	.L69	@
	.fnend
	.size	PostPro_GetVp8MbGroup, .-PostPro_GetVp8MbGroup
	.align	2
	.global	PostPro_GetAvsMbGroup
	.type	PostPro_GetAvsMbGroup, %function
PostPro_GetAvsMbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28215, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #127	@ D.28215,
	bhi	.L93	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0	@ tmp171,
	ldr	r2, [r0, #24]	@ pRepairParam_22(D)->ImageWidth, pRepairParam_22(D)->ImageWidth
	mov	ip, r3	@ i, tmp171
	ldr	r4, [r0, #28]	@ pRepairParam_22(D)->ImageHeight, pRepairParam_22(D)->ImageHeight
	.pad #20
	sub	sp, sp, #20	@,,
	str	r3, [r0, #568]	@ tmp171, pRepairParam_22(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28215, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_22(D)->ImageHeight, pRepairParam_22(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28215,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.58, pDecReport
	add	r5, r4, r7	@ D.28216, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28216, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28217, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28217, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28217, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28216, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28216, %sfp
	b	.L92	@
.L101:
	cmp	r2, r7	@ D.28217, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28216, old_slice_end_mbn,
	cmp	r2, r7	@ D.28217, D.28216
	ble	.L90	@,
	ldr	r7, [r8, #552]	@ D.28216, pRepairParam_86->ValidGroupNum
	uxth	r5, r9	@ D.28219, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28219, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28219, D.28217
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28221, pRepairParam, D.28216,
	add	r7, r7, #1	@ D.28216, D.28216,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_91 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_91 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_86->IsFrame, pRepairParam_86->IsFrame
	str	r7, [r8, #552]	@ D.28216, pRepairParam_86->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_86->IsFrame,
	bne	.L90	@,
	ldr	r5, [sp, #8]	@ D.28216, %sfp
	cmp	r2, r5	@ D.28217, D.28216
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L90:
	ldr	r5, [r1, #8]	@ D.28223, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28215, D.28223,
	cmp	r6, ip	@ D.28215, i
	beq	.L99	@,
.L95:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28223
	mov	r6, r2	@ old_slice_end_mbn, D.28217
	add	r3, r3, #4	@ ivtmp.58, ivtmp.58,
	bhi	.L100	@,
.L92:
	ldrh	r2, [r3, #12]	@ D.28217, MEM[base: _97, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _97, offset: 14B]
	cmp	r2, r4	@ D.28217, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28217, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L101	@,
	ldr	r5, [r1, #8]	@ D.28223, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.58, ivtmp.58,
	cmp	ip, r5	@ i, D.28223
	bls	.L92	@,
.L100:
	mov	r3, #0	@ D.28214,
.L87:
	mov	r0, r3	@, D.28214
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L99:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28216, %sfp
	ldrh	r6, [r6, #14]	@ D.28217, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28217, D.28216
	bge	.L95	@,
	ldr	r2, [r0, #552]	@ D.28216, pRepairParam_22(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28217,
	mov	r3, #0	@ D.28214,
	add	r1, r2, #1	@ D.28216, D.28216,
	add	r2, r0, r2, lsl #2	@ D.28221, pRepairParam, D.28216,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28217, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 40B]
	str	r1, [r0, #552]	@ D.28216, pRepairParam_22(D)->ValidGroupNum
	b	.L87	@
.L93:
	mov	r3, #1	@ D.28214,
	mov	r0, r3	@, D.28214
	bx	lr	@
	.fnend
	.size	PostPro_GetAvsMbGroup, .-PostPro_GetAvsMbGroup
	.align	2
	.global	PostPro_GetDivx3MbGroup
	.type	PostPro_GetDivx3MbGroup, %function
PostPro_GetDivx3MbGroup:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1, #8]	@ pDecReport_19(D)->DecSliceNum, pDecReport_19(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28235, pDecReport_19(D)->DecSliceNum,
	cmp	r3, #3	@ D.28235,
	bhi	.L109	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, #0	@ tmp171,
	ldr	r2, [r0, #24]	@ pRepairParam_22(D)->ImageWidth, pRepairParam_22(D)->ImageWidth
	mov	ip, r3	@ i, tmp171
	ldr	r4, [r0, #28]	@ pRepairParam_22(D)->ImageHeight, pRepairParam_22(D)->ImageHeight
	.pad #20
	sub	sp, sp, #20	@,,
	str	r3, [r0, #568]	@ tmp171, pRepairParam_22(D)->FullRepair
	mvn	r7, #0	@ old_slice_end_mbn,
	ldr	r3, [r1, #8]	@ D.28235, pDecReport_19(D)->DecSliceNum
	mov	r9, ip	@ dectopfldmbs, i
	mul	r4, r4, r2	@ total_mbn, pRepairParam_22(D)->ImageHeight, pRepairParam_22(D)->ImageWidth
	mov	r6, r7	@ old_slice_end_mbn, old_slice_end_mbn
	add	lr, r1, r3, lsl #2	@ tmp175, pDecReport, D.28235,
	mov	r8, r0	@ pRepairParam, pRepairParam
	mov	r3, r1	@ ivtmp.66, pDecReport
	add	r5, r4, r7	@ D.28236, total_mbn, tmp6
	str	r5, [sp, #4]	@ D.28236, %sfp
	mov	r2, lr	@ tmp179, tmp175
	add	r5, r4, r4, lsr #31	@ tmp181, total_mbn, total_mbn,
	uxth	r10, r4	@ D.28237, total_mbn
	strh	r10, [lr, #14]	@ movhi	@ D.28237, pDecReport_19(D)->SliceMbRange
	mov	lr, r5, asr #1	@ dectopfldmbs, tmp181,
	strh	r10, [r2, #12]	@ movhi	@ D.28237, pDecReport_19(D)->SliceMbRange
	str	lr, [sp, #12]	@ dectopfldmbs, %sfp
	add	r2, lr, r7	@ D.28236, dectopfldmbs, tmp6
	str	r2, [sp, #8]	@ D.28236, %sfp
	b	.L108	@
.L117:
	cmp	r2, r7	@ D.28237, old_slice_end_mbn
	movlt	r7, r6	@ old_slice_end_mbn, old_slice_end_mbn
	add	r7, r7, #1	@ D.28236, old_slice_end_mbn,
	cmp	r2, r7	@ D.28237, D.28236
	ble	.L106	@,
	ldr	r7, [r8, #552]	@ D.28236, pRepairParam_86->ValidGroupNum
	uxth	r5, r9	@ D.28239, dectopfldmbs
	rsb	fp, r5, r6, lsr #31	@ tmp199, D.28239, old_slice_end_mbn,
	rsb	r5, r5, r2	@ tmp203, D.28239, D.28237
	add	r6, fp, r6	@ tmp202, tmp199, old_slice_end_mbn
	sub	r5, r5, #1	@ tmp205, tmp203,
	add	fp, r8, r7, lsl #2	@ D.28241, pRepairParam, D.28236,
	add	r7, r7, #1	@ D.28236, D.28236,
	strh	r6, [fp, #40]	@ movhi	@ tmp202, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_91 + 40B]
	strh	r5, [fp, #42]	@ movhi	@ tmp205, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_91 + 42B]
	ldr	r5, [r8, #32]	@ pRepairParam_86->IsFrame, pRepairParam_86->IsFrame
	str	r7, [r8, #552]	@ D.28236, pRepairParam_86->ValidGroupNum
	cmp	r5, #0	@ pRepairParam_86->IsFrame,
	bne	.L106	@,
	ldr	r5, [sp, #8]	@ D.28236, %sfp
	cmp	r2, r5	@ D.28237, D.28236
	addge	r8, r0, #572	@ pRepairParam, pRepairParam,
	ldrge	r9, [sp, #12]	@ dectopfldmbs, %sfp
.L106:
	ldr	r5, [r1, #8]	@ D.28243, pDecReport_19(D)->DecSliceNum
	sub	r6, r5, #1	@ D.28235, D.28243,
	cmp	r6, ip	@ D.28235, i
	beq	.L115	@,
.L111:
	add	ip, ip, #1	@ i, i,
	mov	r7, lr	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	ip, r5	@ i, D.28243
	mov	r6, r2	@ old_slice_end_mbn, D.28237
	add	r3, r3, #4	@ ivtmp.66, ivtmp.66,
	bhi	.L116	@,
.L108:
	ldrh	r2, [r3, #12]	@ D.28237, MEM[base: _97, offset: 12B]
	ldrh	lr, [r3, #14]	@ old_slice_end_mbn, MEM[base: _97, offset: 14B]
	cmp	r2, r4	@ D.28237, total_mbn
	cmple	lr, r4	@, old_slice_end_mbn, total_mbn
	movgt	r5, #1	@ tmp187,
	movle	r5, #0	@ tmp187,
	cmp	r2, lr	@ D.28237, old_slice_end_mbn
	orrgt	r5, r5, #1	@,, tmp193, tmp187
	cmp	r5, #0	@ tmp193,
	beq	.L117	@,
	ldr	r5, [r1, #8]	@ D.28243, pDecReport_19(D)->DecSliceNum
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.66, ivtmp.66,
	cmp	ip, r5	@ i, D.28243
	bls	.L108	@,
.L116:
	mov	r3, #0	@ D.28234,
.L103:
	mov	r0, r3	@, D.28234
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L115:
	add	r6, r1, ip, lsl #2	@ tmp209, pDecReport, i,
	ldr	r7, [sp, #4]	@ D.28236, %sfp
	ldrh	r6, [r6, #14]	@ D.28237, pDecReport_19(D)->SliceMbRange
	cmp	r6, r7	@ D.28237, D.28236
	bge	.L111	@,
	ldr	r2, [r0, #552]	@ D.28236, pRepairParam_22(D)->ValidGroupNum
	sub	r10, r10, #1	@ tmp213, D.28237,
	mov	r3, #0	@ D.28234,
	add	r1, r2, #1	@ D.28236, D.28236,
	add	r2, r0, r2, lsl #2	@ D.28241, pRepairParam, D.28236,
	strh	r10, [r2, #42]	@ movhi	@ tmp213, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 42B]
	strh	r6, [r2, #40]	@ movhi	@ D.28237, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_79 + 40B]
	str	r1, [r0, #552]	@ D.28236, pRepairParam_22(D)->ValidGroupNum
	b	.L103	@
.L109:
	mov	r3, #1	@ D.28234,
	mov	r0, r3	@, D.28234
	bx	lr	@
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
	bls	.L131	@,
	mov	r7, #1	@ i,
.L123:
	mov	r4, #0	@ flag,
	rsb	lr, r7, r8	@ D.28263, i, n
	mov	r2, r4	@ j, flag
	mov	r3, r0	@ ivtmp.74, pDecReport
	b	.L124	@
.L122:
	ldrh	r1, [r3, #12]	@ D.28261, MEM[base: _20, offset: 12B]
	ldrh	ip, [r3, #16]	@ D.28261, MEM[base: _20, offset: 16B]
	cmp	r1, ip	@ D.28261, D.28261
	bls	.L121	@,
	ldrh	r6, [r3, #14]	@ D.28261, MEM[base: _20, offset: 14B]
	mov	r4, #1	@ flag,
	ldrh	r5, [r3, #18]	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 18B]
	strh	ip, [r3, #12]	@ movhi	@ D.28261, MEM[base: _20, offset: 12B]
	strh	r1, [r3, #16]	@ movhi	@ D.28261, MEM[base: _20, offset: 16B]
	strh	r6, [r3, #18]	@ movhi	@ D.28261, MEM[base: _20, offset: 18B]
	strh	r5, [r3, #14]	@ movhi	@ MEM[base: _20, offset: 18B], MEM[base: _20, offset: 14B]
.L121:
	add	r3, r3, #4	@ ivtmp.74, ivtmp.74,
.L124:
	cmp	r2, lr	@ j, D.28263
	add	r2, r2, #1	@ j, j,
	bne	.L122	@,
	cmp	r4, #0	@ flag,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r7, r7, #1	@ i, i,
	cmp	r8, r7	@ n, i
	movls	r4, #0	@, tmp133
	andhi	r4, r4, #1	@,, tmp133, flag
	cmp	r4, #0	@ tmp133,
	bne	.L123	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L131:
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
	.pad #540
	sub	sp, sp, #540	@,,
	ldr	r6, [r1, #8]	@ D.28298, pDecReport_26(D)->DecSliceNum
	sub	r3, r6, #1	@ D.28298, D.28298,
	cmp	r3, #127	@ D.28298,
	bhi	.L149	@,
	ldr	r7, [r0, #24]	@ D.28299, pRepairParam_29(D)->ImageWidth
	cmp	r2, #0	@ IsMbaff,
	ldr	r5, [r0, #28]	@ pRepairParam_29(D)->ImageHeight, pRepairParam_29(D)->ImageHeight
	mov	r10, r0	@ pRepairParam, pRepairParam
	mov	fp, r1	@ pDecReport, pDecReport
	mul	r5, r5, r7	@ total_mbn, pRepairParam_29(D)->ImageHeight, D.28299
	uxtheq	r7, r5	@ D.28294, total_mbn
	bne	.L169	@,
.L136:
	mov	lr, #0	@ tmp422,
	str	lr, [r10, #552]	@ tmp422, pRepairParam_29(D)->ValidGroupNum
	str	lr, [r10, #568]	@ tmp422, pRepairParam_29(D)->FullRepair
	mvn	r6, #0	@ old_slice_end_mbn,
	ldr	r1, [fp, #8]	@ D.28298, pDecReport_26(D)->DecSliceNum
	add	r9, r5, r6	@ D.28299, total_mbn,
	mov	r8, r6	@ old_slice_end_mbn, old_slice_end_mbn
	mov	r3, fp	@ ivtmp.90, pDecReport
	add	r0, fp, r1, lsl #2	@ tmp425, pDecReport, D.28298,
	strh	r7, [r0, #14]	@ movhi	@ D.28294, pDecReport_26(D)->SliceMbRange
	strh	r7, [r0, #12]	@ movhi	@ D.28294, pDecReport_26(D)->SliceMbRange
	b	.L152	@
.L172:
	cmp	r1, r6	@ D.28294, old_slice_end_mbn
	movlt	r6, r8	@ old_slice_end_mbn, old_slice_end_mbn
	add	r2, r6, #1	@ D.28299, old_slice_end_mbn,
	cmp	r1, r2	@ D.28294, D.28299
	ble	.L148	@,
	ldr	r2, [r10, #552]	@ D.28299, pRepairParam_29(D)->ValidGroupNum
	cmp	r2, #127	@ D.28299,
	bgt	.L149	@,
	add	r8, r8, r8, lsr #31	@ tmp447, old_slice_end_mbn, old_slice_end_mbn,
	add	ip, r10, r2, lsl #2	@ D.28306, pRepairParam, D.28299,
	sub	r6, r6, #100	@ tmp472, old_slice_end_mbn,
	add	r2, r2, #1	@ D.28299, D.28299,
	sxth	r4, r8	@ D.28299, tmp447
	strh	r8, [ip, #40]	@ movhi	@ tmp447, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_278 + 40B]
	cmp	r6, r4	@ tmp472, D.28299
	sub	r4, r1, #1	@ tmp448, D.28294,
	strgth	r6, [ip, #40]	@ movhi	@ tmp472, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_278 + 40B]
	strh	r4, [ip, #42]	@ movhi	@ tmp448, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_278 + 42B]
	str	r2, [r10, #552]	@ D.28299, pRepairParam_29(D)->ValidGroupNum
.L148:
	ldr	r2, [fp, #8]	@ D.28300, pDecReport_26(D)->DecSliceNum
	sub	ip, r2, #1	@ D.28298, D.28300,
	cmp	ip, lr	@ D.28298, i
	beq	.L170	@,
.L159:
	add	lr, lr, #1	@ i, i,
	mov	r6, r0	@ old_slice_end_mbn, old_slice_end_mbn
	cmp	r2, lr	@ D.28300, i
	mov	r8, r1	@ old_slice_end_mbn, D.28294
	add	r3, r3, #4	@ ivtmp.90, ivtmp.90,
	bcc	.L171	@,
.L152:
	ldrh	r1, [r3, #12]	@ D.28294, MEM[base: _185, offset: 12B]
	ldrh	r0, [r3, #14]	@ old_slice_end_mbn, MEM[base: _185, offset: 14B]
	cmp	r1, r5	@ D.28294, total_mbn
	cmple	r0, r5	@, old_slice_end_mbn, total_mbn
	movgt	r2, #1	@ tmp434,
	movle	r2, #0	@ tmp434,
	cmp	r1, r0	@ D.28294, old_slice_end_mbn
	orrgt	r2, r2, #1	@,, tmp440, tmp434
	cmp	r2, #0	@ tmp440,
	beq	.L172	@,
	ldr	r2, [fp, #8]	@ D.28300, pDecReport_26(D)->DecSliceNum
	add	lr, lr, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.90, ivtmp.90,
	cmp	r2, lr	@ D.28300, i
	bcs	.L152	@,
.L171:
	mov	r0, #0	@ D.28296,
.L162:
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L170:
	add	ip, fp, lr, lsl #2	@ tmp455, pDecReport, i,
	ldrh	r6, [ip, #14]	@ D.28294, pDecReport_26(D)->SliceMbRange
	cmp	r6, r9	@ D.28294, D.28299
	bge	.L159	@,
	ldr	r3, [r10, #552]	@ D.28299, pRepairParam_29(D)->ValidGroupNum
	cmp	r3, #127	@ D.28299,
	bgt	.L149	@,
	add	r1, r10, r3, lsl #2	@ D.28306, pRepairParam, D.28299,
	sub	r7, r7, #1	@ tmp459, D.28294,
	add	r3, r3, #1	@ D.28299, D.28299,
	mov	r0, #0	@ D.28296,
	strh	r7, [r1, #42]	@ movhi	@ tmp459, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_272 + 42B]
	strh	r6, [r1, #40]	@ movhi	@ D.28294, MEM[(struct VDMHAL_REPAIR_PARAM_S *)_272 + 40B]
	str	r3, [r10, #552]	@ D.28299, pRepairParam_29(D)->ValidGroupNum
	b	.L162	@
.L169:
	cmp	r6, #0	@ D.28298,
	mov	r7, r7, asl #1	@ D.28299, D.28299,
	beq	.L139	@,
	add	r2, sp, #24	@ tmp534,,
	mov	r6, r6, asl #2	@ D.28293, D.28298,
	add	r4, r1, r6	@ D.28293, pDecReport, D.28293
	mov	r3, r1	@ ivtmp.108, pDecReport
	mov	r1, r2	@ ivtmp.109, tmp534
	str	r2, [sp, #4]	@ tmp534, %sfp
.L138:
	ldrh	r0, [r3, #12]	@ MEM[base: _23, offset: 12B], MEM[base: _23, offset: 12B]
	add	r3, r3, #4	@ ivtmp.108, ivtmp.108,
	ldrh	r2, [r3, #10]	@ MEM[base: _23, offset: 14B], MEM[base: _23, offset: 14B]
	cmp	r3, r4	@ ivtmp.108, D.28293
	add	r1, r1, #4	@ ivtmp.109, ivtmp.109,
	strh	r0, [r1, #-4]	@ movhi	@ MEM[base: _23, offset: 12B], MEM[base: _16, offset: 0B]
	strh	r2, [r1, #-2]	@ movhi	@ MEM[base: _23, offset: 14B], MEM[base: _16, offset: 2B]
	bne	.L138	@,
	ldrh	r8, [sp, #24]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	cmp	r7, #0	@ D.28299,
	ldrh	r9, [sp, #26]	@ SliceMbRange_Tmp, SliceMbRange_Tmp
	bic	r8, r8, #1	@ tmp287, SliceMbRange_Tmp,
	orr	r9, r9, #1	@ D.28294, SliceMbRange_Tmp,
	strh	r9, [sp, #26]	@ movhi	@ D.28294, SliceMbRange_Tmp
	uxth	r8, r8	@ D.28295, tmp287
	strh	r8, [sp, #24]	@ movhi	@ D.28295, SliceMbRange_Tmp
	beq	.L157	@,
	sub	r3, r7, #2	@ D.28298, D.28299,
	sub	r6, r6, #4	@ D.28301, D.28293,
	add	r2, sp, #24	@ tmp533,,
	str	r5, [sp, #20]	@ total_mbn, %sfp
	add	r2, r2, r6	@ D.28293, tmp533, D.28301
	mov	r5, r3	@ D.28298, D.28298
	mov	r6, #0	@ j,
	str	r2, [sp, #8]	@ D.28293, %sfp
	uxth	r2, r7	@ D.28294, D.28299
	str	r2, [sp, #16]	@ D.28294, %sfp
.L153:
	mov	r1, r7	@, D.28299
	mov	r0, r8	@, D.28295
	bl	__aeabi_uidivmod	@
	mov	r0, r9	@, D.28294
	mov	r4, r1	@ tmp306,
	cmp	r4, #1	@ tmp306,
	mov	r1, r7	@, D.28299
	bls	.L140	@,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.28298, tmp311
	bls	.L141	@,
	str	r1, [sp, #12]	@ tmp311, %sfp
	mov	r0, r8	@, D.28295
	mov	r1, r7	@, D.28299
	mov	r4, r4, lsr #1	@ mbsurplus0, tmp306,
	bl	__aeabi_uidiv	@
	mov	r1, r7	@, D.28299
	mov	r8, r0	@ tmp315,
	mov	r0, r9	@, D.28294
	bl	__aeabi_uidiv	@
	ldr	r2, [sp, #12]	@ tmp311, %sfp
	mov	r2, r2, lsr #1	@ mbsurplus1, tmp311,
	cmp	r0, r8	@ tmp318, tmp315
	mov	r3, r0	@ tmp318,
	beq	.L142	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	lr, fp, r6, lsl #2	@ D.28292, pDecReport, j,
	add	r9, r6, #1	@ j, j,
	cmp	r9, #127	@ j,
	smulbb	r1, r8, r1	@ tmp320, tmp315, tmp515
	uxth	r1, r1	@ D.28294, tmp320
	add	r4, r1, r4	@ tmp322, D.28294, mbsurplus0
	uxth	ip, r4	@ D.28294, tmp322
	strh	ip, [lr, #12]	@ movhi	@ D.28294, MEM[(struct VDMHAL_DEC_REPORT_S *)_265 + 12B]
	ldr	r0, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	sub	r0, r0, #1	@ tmp329, pRepairParam_29(D)->ImageWidth,
	add	r1, r1, r0	@ tmp331, D.28294, tmp329
	strh	r1, [lr, #14]	@ movhi	@ tmp331, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
	ldrh	r1, [sp, #16]	@, %sfp
	add	r9, fp, r9, lsl #2	@ tmp338, pDecReport, j,
	ldr	r0, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	uxth	r2, r2	@ D.28294, mbsurplus1
	smulbb	r3, r3, r1	@ tmp336, tmp318, tmp516
	add	r1, r6, #2	@ j, j,
	cmp	r1, #127	@ j,
	add	ip, ip, r0	@ tmp334, D.28294, pRepairParam_29(D)->ImageWidth
	strh	ip, [lr, #16]	@ movhi	@ tmp334, MEM[(struct VDMHAL_DEC_REPORT_S *)_265 + 16B]
	uxth	r3, r3	@ D.28294, tmp336
	add	r0, r2, r3	@ tmp340, D.28294, D.28294
	strh	r0, [r9, #14]	@ movhi	@ tmp340, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
	ldr	r0, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	add	r6, r6, #3	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp345, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r3, r3, r0	@ tmp343, D.28294, pRepairParam_29(D)->ImageWidth
	uxth	r3, r3	@ D.28294, tmp343
	strh	r3, [lr, #20]	@ movhi	@ D.28294, MEM[(struct VDMHAL_DEC_REPORT_S *)_265 + 20B]
	add	r2, r3, r2	@ tmp347, D.28294, D.28294
	strh	r2, [r1, #14]	@ movhi	@ tmp347, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
.L144:
	ldr	r3, [sp, #4]	@ ivtmp.109, %sfp
	ldr	r2, [sp, #8]	@ D.28293, %sfp
	cmp	r3, r2	@ ivtmp.109, D.28293
	beq	.L173	@,
	ldr	r3, [sp, #4]	@ ivtmp.109, %sfp
	add	r3, r3, #4	@ ivtmp.109, ivtmp.109,
	ldrh	r8, [r3]	@ MEM[base: _248, offset: 4B], MEM[base: _248, offset: 4B]
	ldrh	r9, [r3, #2]	@ MEM[base: _248, offset: 6B], MEM[base: _248, offset: 6B]
	bic	r8, r8, #1	@ tmp464, MEM[base: _248, offset: 4B],
	strh	r8, [r3]	@ movhi	@ tmp464, MEM[base: _248, offset: 4B]
	orr	r9, r9, #1	@ D.28294, MEM[base: _248, offset: 6B],
	strh	r9, [r3, #2]	@ movhi	@ D.28294, MEM[base: _248, offset: 6B]
	str	r3, [sp, #4]	@ ivtmp.109, %sfp
	b	.L153	@
.L141:
	mov	r1, r7	@, D.28299
	mov	r0, r8	@, D.28295
	bl	__aeabi_uidiv	@
	add	r2, fp, r6, lsl #2	@ D.28292, pDecReport, j,
	add	r3, r6, #1	@ j, j,
	cmp	r3, #127	@ j,
	smulbb	r0, r0, r7	@ tmp372,, D.28299
	uxth	r0, r0	@ D.28294, tmp372
	add	r4, r0, r4, lsr #1	@ tmp375, D.28294, tmp306,
	uxth	r4, r4	@ D.28294, tmp375
	strh	r4, [r2, #12]	@ movhi	@ D.28294, MEM[(struct VDMHAL_DEC_REPORT_S *)_257 + 12B]
	ldr	r1, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	sub	r1, r1, #1	@ tmp382, pRepairParam_29(D)->ImageWidth,
	add	r0, r0, r1	@ tmp384, D.28294, tmp382
	strh	r0, [r2, #14]	@ movhi	@ tmp384, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
	add	r6, r6, #2	@ j, j,
	ldr	r1, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	add	r3, fp, r3, lsl #2	@ tmp389, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r1	@ tmp387, D.28294, pRepairParam_29(D)->ImageWidth
	strh	r4, [r2, #16]	@ movhi	@ tmp387, MEM[(struct VDMHAL_DEC_REPORT_S *)_257 + 16B]
	strh	r9, [r3, #14]	@ movhi	@ D.28294, pDecReport_26(D)->SliceMbRange
	bls	.L144	@,
.L167:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	mov	r1, #1	@ tmp468,
	str	r1, [fp, #8]	@ tmp468, pDecReport_26(D)->DecSliceNum
	uxth	r7, r5	@ D.28294, total_mbn
	sub	r3, r7, #1	@ tmp471, D.28294,
	strh	r3, [fp, #14]	@ movhi	@ tmp471, pDecReport_26(D)->SliceMbRange
	mov	r3, #0	@ tmp470,
	strh	r3, [fp, #12]	@ movhi	@ tmp470, pDecReport_26(D)->SliceMbRange
	b	.L155	@
.L140:
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ D.28298, tmp395
	bls	.L145	@,
	add	r4, fp, r6, lsl #2	@ D.28292, pDecReport, j,
	str	r1, [sp, #12]	@ tmp395, %sfp
	mov	r0, r9	@, D.28294
	mov	r1, r7	@, D.28299
	strh	r8, [r4, #12]	@ movhi	@ D.28295, MEM[(struct VDMHAL_DEC_REPORT_S *)_40 + 12B]
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ tmp395, %sfp
	add	ip, r6, #1	@ j, j,
	cmp	ip, #127	@ j,
	ubfx	r1, r3, #1, #16	@ D.28294, tmp395,,
	smulbb	r0, r0, r7	@ tmp403,, D.28299
	uxth	r0, r0	@ D.28294, tmp403
	add	r3, r1, r0	@ tmp408, D.28294, D.28294
	strh	r3, [r4, #14]	@ movhi	@ tmp408, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
	ldr	r3, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	ip, fp, ip, lsl #2	@ tmp413, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r2, r0, r3	@ tmp411, D.28294, pRepairParam_29(D)->ImageWidth
	uxth	r3, r2	@ D.28294, tmp411
	strh	r3, [r4, #16]	@ movhi	@ D.28294, MEM[(struct VDMHAL_DEC_REPORT_S *)_40 + 16B]
	add	r3, r3, r1	@ tmp415, D.28294, D.28294
	strh	r3, [ip, #14]	@ movhi	@ tmp415, pDecReport_26(D)->SliceMbRange
	bls	.L144	@,
	b	.L167	@
.L145:
	add	r2, fp, r6, lsl #2	@ tmp418, pDecReport, j,
	add	r6, r6, #1	@ j, j,
	cmp	r6, #127	@ j,
	strh	r8, [r2, #12]	@ movhi	@ D.28295, pDecReport_26(D)->SliceMbRange
	strh	r9, [r2, #14]	@ movhi	@ D.28294, pDecReport_26(D)->SliceMbRange
	bls	.L144	@,
	b	.L167	@
.L149:
	mov	r0, #1	@ D.28296,
	add	sp, sp, #540	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L142:
	smulbb	r3, r0, r7	@ tmp349, tmp318, D.28299
	add	r1, r6, #1	@ j, j,
	add	lr, fp, r6, lsl #2	@ D.28292, pDecReport, j,
	cmp	r1, #127	@ j,
	uxth	r3, r3	@ D.28294, tmp349
	add	r4, r3, r4	@ tmp351, D.28294, mbsurplus0
	add	r2, r3, r2	@ tmp354, D.28294, mbsurplus1
	uxth	r4, r4	@ D.28294, tmp351
	uxth	r2, r2	@ D.28294, tmp354
	strh	r4, [lr, #12]	@ movhi	@ D.28294, MEM[(struct VDMHAL_DEC_REPORT_S *)_261 + 12B]
	strh	r2, [lr, #14]	@ movhi	@ D.28294, pDecReport_26(D)->SliceMbRange
	bhi	.L167	@,
	ldr	r3, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	add	r6, r6, #2	@ j, j,
	add	r1, fp, r1, lsl #2	@ tmp362, pDecReport, j,
	cmp	r6, #127	@ j,
	add	r4, r4, r3	@ tmp360, D.28294, pRepairParam_29(D)->ImageWidth
	strh	r4, [lr, #16]	@ movhi	@ tmp360, MEM[(struct VDMHAL_DEC_REPORT_S *)_261 + 16B]
	ldr	r3, [r10, #24]	@ pRepairParam_29(D)->ImageWidth, pRepairParam_29(D)->ImageWidth
	add	r2, r2, r3	@ tmp366, D.28294, pRepairParam_29(D)->ImageWidth
	strh	r2, [r1, #14]	@ movhi	@ tmp366, pDecReport_26(D)->SliceMbRange
	bls	.L144	@,
	b	.L167	@
.L157:
	mov	r6, r7	@ j, D.28299
.L139:
	uxth	r7, r5	@ D.28294, total_mbn
	str	r6, [fp, #8]	@ j, pDecReport_26(D)->DecSliceNum
.L155:
	mov	r0, fp	@, pDecReport
	bl	PostPro_BubbleSort	@
	b	.L136	@
.L173:
	ldr	r5, [sp, #20]	@ total_mbn, %sfp
	b	.L139	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r3	@ pDecReport, pDecReport
	mov	r4, r1	@ pRepairParam, pRepairParam
	mov	r3, #0	@ tmp243,
	mov	r6, r2	@ pDecParam, pDecParam
	str	r0, [r1]	@ VidStd, pRepairParam_17(D)->VidStd
	str	r3, [r1, #552]	@ tmp243, pRepairParam_17(D)->ValidGroupNum
	str	r3, [r1, #1124]	@ tmp243, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_17(D) + 572B].ValidGroupNum
	beq	.L176	@,
	cmp	r0, #3	@ VidStd,
	beq	.L177	@,
	ldr	r2, [r1, #24]	@ D.28346, pRepairParam_17(D)->ImageWidth
	ldr	r1, [r1, #28]	@ D.28346, pRepairParam_17(D)->ImageHeight
.L178:
	mul	r1, r1, r2	@ total_mbs, D.28346, D.28346
	mov	lr, #0	@ err_mbs,
.L203:
	cmp	r1, #0	@ total_mbs,
	moveq	r0, r1	@ err_ratio, total_mbs
	beq	.L205	@,
	mov	r0, #100	@ tmp307,
	mul	r0, r0, lr	@, tmp307, err_mbs
	bl	__aeabi_idiv	@
	cmp	r0, #100	@,
	movge	r0, #100	@ err_ratio,
	bic	r0, r0, r0, asr #31	@ err_ratio, err_ratio
.L205:
	mov	r3, #0	@ tmp311,
	str	r3, [r5, #8]	@ tmp311, pDecReport_64(D)->DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L177:
	ldr	r2, [r2, #200]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].CurPicPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].CurPicPhyAddr
	str	r2, [r1, #4]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].CurPicPhyAddr, pRepairParam_17(D)->ImageAddr
	ldr	r2, [r6, #224]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].DispFramePhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].DispFramePhyAddr
	str	r2, [r1, #8]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].DispFramePhyAddr, pRepairParam_17(D)->Image2DAddr
	ldr	r2, [r6, #196]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].FwdRefPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].FwdRefPhyAddr
	str	r2, [r1, #16]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].FwdRefPhyAddr, pRepairParam_17(D)->RefImageAddr
	ldr	r2, [r6, #240]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PmvColmbPhyAddr, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PmvColmbPhyAddr
	str	r2, [r1, #20]	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PmvColmbPhyAddr, pRepairParam_17(D)->CurrPmvAddr
	ldrh	r2, [r6, #152]	@ D.28346, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PicWidthInMb
	str	r2, [r1, #24]	@ D.28346, pRepairParam_17(D)->ImageWidth
	ldrh	r1, [r6, #148]	@ D.28346, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PicHeightInMb
	str	r1, [r4, #28]	@ D.28346, pRepairParam_17(D)->ImageHeight
	ldrb	r0, [r6, #3]	@ zero_extendqisi2	@ MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PictureStructure, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PictureStructure
	str	r3, [r4, #36]	@ tmp243, pRepairParam_17(D)->ImageCSP
	sub	r0, r0, #3	@ D.28349, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PictureStructure,
	clz	r0, r0	@ D.28349, D.28349
	mov	r0, r0, lsr #5	@ D.28349, D.28349,
	str	r0, [r4, #32]	@ D.28349, pRepairParam_17(D)->IsFrame
	ldrb	r0, [r6, #3]	@ zero_extendqisi2	@ D.28348, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].PictureStructure
	cmp	r0, #1	@ D.28348,
	beq	.L230	@,
	cmp	r0, #2	@ D.28348,
	beq	.L230	@,
	cmp	r0, #3	@ D.28348,
	streq	r3, [r4, #564]	@ tmp243, pRepairParam_17(D)->Pic_type
.L199:
	add	r6, r6, #45056	@ tmp294, pDecParam,
	ldr	r3, [r6, #260]	@ D.28346, MEM[(struct MP2_DEC_PARAM_S *)pDecParam_22(D)].Compress_en
	str	r3, [r4, #560]	@ D.28346, pRepairParam_17(D)->Compress_en
	ldr	r3, [r5, #8]	@ pDecReport_64(D)->DecSliceNum, pDecReport_64(D)->DecSliceNum
	sub	r3, r3, #1	@ D.28345, pDecReport_64(D)->DecSliceNum,
	cmp	r3, #127	@ D.28345,
	bhi	.L178	@,
	mov	r1, r5	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetMp24MbGroup.part.0	@
	ldr	r3, [r4, #24]	@ D.28344, pRepairParam_17(D)->ImageWidth
	ldr	r1, [r4, #28]	@ D.28344, pRepairParam_17(D)->ImageHeight
	ldr	r6, [r4, #1124]	@ D.28344, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_17(D) + 572B].ValidGroupNum
	ldr	r7, [r4, #552]	@ D.28344, pRepairParam_17(D)->ValidGroupNum
.L197:
	cmp	r7, #0	@ D.28344,
	mov	lr, #0	@ err_mbs,
	mul	r1, r1, r3	@ total_mbs, D.28344, D.28344
	ble	.L201	@,
	mov	r3, r4	@ ivtmp.124, pRepairParam
	mov	r0, lr	@ i, err_mbs
.L202:
	ldrsh	r2, [r3, #42]	@ D.28346, MEM[base: _172, offset: 42B]
	add	r0, r0, #1	@ i, i,
	ldrsh	ip, [r3, #40]	@ D.28346, MEM[base: _172, offset: 40B]
	cmp	r0, r7	@ i, D.28344
	add	r3, r3, #4	@ ivtmp.124, ivtmp.124,
	rsb	r2, ip, r2	@ D.28346, D.28346, D.28346
	add	r2, r2, #1	@ D.28346, D.28346,
	add	lr, lr, r2	@ err_mbs, err_mbs, D.28346
	bne	.L202	@,
.L201:
	cmp	r6, #0	@ D.28344,
	ble	.L203	@,
	add	ip, r4, #612	@ ivtmp.116, pRepairParam,
	mov	r3, #0	@ i,
	add	ip, ip, #2	@ ivtmp.116, ivtmp.116,
.L204:
	ldrsh	r2, [ip]	@ D.28346, MEM[base: _146, offset: 0B]
	add	r3, r3, #1	@ i, i,
	ldrsh	r0, [ip, #-2]	@ D.28346, MEM[base: _146, offset: 4294967294B]
	cmp	r3, r6	@ i, D.28344
	add	ip, ip, #4	@ ivtmp.116, ivtmp.116,
	rsb	r2, r0, r2	@ D.28346, D.28346, D.28346
	add	r2, r2, #1	@ D.28346, D.28346,
	add	lr, lr, r2	@ err_mbs, err_mbs, D.28346
	bne	.L204	@,
	b	.L203	@
.L176:
	ldr	r3, [r2, #292]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImgIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImgIdc
	add	r3, r2, r3, lsl #2	@ tmp247, pDecParam, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImgIdc,
	ldr	r3, [r3, #308]	@ tmp249, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].ImgPhyAddr
	str	r3, [r1, #4]	@ tmp249, pRepairParam_17(D)->ImageAddr
	ldr	r3, [r2, #296]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImg2DAddr, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImg2DAddr
	str	r3, [r1, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicImg2DAddr, pRepairParam_17(D)->Image2DAddr
	ldr	r3, [r2, #1124]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pFirstSlice, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pFirstSlice
	ldr	r1, [r3, #1640]	@ ref_img_idc, _30->declist[0][0].img_idc
	add	r3, r2, r1, lsl #2	@ tmp253, pDecParam, ref_img_idc,
	ldr	r3, [r3, #308]	@ tmp255, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].ImgPhyAddr
	str	r3, [r4, #16]	@ tmp255, pRepairParam_17(D)->RefImageAddr
	ldr	r3, [r2, #300]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicPmvIdc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicPmvIdc
	add	r3, r3, #206	@ tmp256, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].CurrPicPmvIdc,
	ldr	r3, [r2, r3, asl #2]	@ tmp258, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].PmvPhyAddr
	str	r3, [r4, #20]	@ tmp258, pRepairParam_17(D)->CurrPmvAddr
	ldr	r3, [r2, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_width_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_width_in_mb
	str	r3, [r4, #24]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_width_in_mb, pRepairParam_17(D)->ImageWidth
	ldr	r3, [r2, #20]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_height_in_mb, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_height_in_mb
	str	r3, [r4, #28]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_height_in_mb, pRepairParam_17(D)->ImageHeight
	ldrb	r3, [r2]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure
	clz	r3, r3	@ D.28349, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure
	mov	r3, r3, lsr #5	@ D.28349, D.28349,
	str	r3, [r4, #32]	@ D.28349, pRepairParam_17(D)->IsFrame
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].chroma_format_idc, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].chroma_format_idc
	clz	r3, r3	@ D.28349, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].chroma_format_idc
	mov	r3, r3, lsr #5	@ D.28349, D.28349,
	str	r3, [r4, #36]	@ D.28349, pRepairParam_17(D)->ImageCSP
	ldr	ip, [r2, #1116]	@ D.28345, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].ApcSize
	cmp	ip, #0	@ D.28345,
	beq	.L179	@,
	ldr	r3, [r2, #1320]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].RefPicFsId, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].RefPicFsId
	cmp	r3, r1	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].RefPicFsId, ref_img_idc
	addne	r3, r2, #1312	@ ivtmp.140, pDecParam,
	addne	r3, r3, #8	@ ivtmp.140, ivtmp.140,
	bne	.L182	@,
	b	.L180	@
.L183:
	ldr	r2, [r3, #4]!	@ MEM[base: _144, offset: 0B], MEM[base: _144, offset: 0B]
	cmp	r2, r1	@ MEM[base: _144, offset: 0B], ref_img_idc
	beq	.L180	@,
.L182:
	add	r0, r0, #1	@ i, i,
	cmp	r0, ip	@ i, D.28345
	bne	.L183	@,
.L179:
	ldr	r2, [r6, #32]	@ D.28345, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].mb_adaptive_frame_field_flag
	ldrsb	r3, [r6, #2]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].NewPicFlag, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].NewPicFlag
	cmp	r2, #0	@ D.28345,
	ldrneb	r2, [r6]	@ zero_extendqisi2	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure
	clzne	r2, r2	@ D.28345, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure
	movne	r2, r2, lsr #5	@ D.28345, D.28345,
	cmp	r3, #0	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].NewPicFlag,
	streq	r3, [r5, #8]	@ MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].NewPicFlag, pDecReport_64(D)->DecSliceNum
	bne	.L231	@,
.L186:
	ldr	r0, [r4, #4]	@ D.28346, pRepairParam_17(D)->ImageAddr
	ldr	r3, [r4, #16]	@ pRepairParam_17(D)->RefImageAddr, pRepairParam_17(D)->RefImageAddr
	cmp	r0, r3	@ D.28346, pRepairParam_17(D)->RefImageAddr
	beq	.L232	@,
.L187:
	ldrb	r3, [r6]	@ zero_extendqisi2	@ D.28348, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].pic_structure
	cmp	r3, #0	@ D.28348,
	beq	.L196	@,
	cmp	r3, #1	@ D.28348,
	beq	.L229	@,
	cmp	r3, #2	@ D.28348,
	beq	.L229	@,
	cmp	r3, #3	@ D.28348,
	bne	.L193	@,
.L196:
	mov	r3, #0	@ tmp279,
	str	r3, [r4, #564]	@ tmp279, pRepairParam_17(D)->Pic_type
.L193:
	ldr	r2, [r6, #1384]	@ D.28346, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].Compress_en
	ldr	r3, [r4, #24]	@ D.28344, pRepairParam_17(D)->ImageWidth
	ldr	r1, [r4, #28]	@ D.28344, pRepairParam_17(D)->ImageHeight
	str	r2, [r4, #560]	@ D.28346, pRepairParam_17(D)->Compress_en
	ldr	r6, [r4, #1124]	@ D.28344, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_17(D) + 572B].ValidGroupNum
	ldr	r7, [r4, #552]	@ D.28344, pRepairParam_17(D)->ValidGroupNum
	b	.L197	@
.L230:
	str	r0, [r4, #564]	@ D.28348, pRepairParam_17(D)->Pic_type
	b	.L199	@
.L180:
	add	r0, r0, #312	@ tmp270, i,
	add	r0, r0, #2	@ tmp270, tmp270,
	ldr	r3, [r6, r0, asl #2]	@ tmp271, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].RefPicType
	str	r3, [r4, #556]	@ tmp271, pRepairParam_17(D)->rpr_ref_pic_type
	b	.L179	@
.L231:
	mov	r1, r5	@, pDecReport
	mov	r0, r4	@, pRepairParam
	bl	PostPro_GetH264MbGroup	@
	b	.L186	@
.L232:
	ldr	ip, [r6, #820]	@ D.28345, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].ImgSlotNum
	cmp	ip, #0	@ D.28345,
	beq	.L187	@,
	ldr	r2, [r6, #308]	@ D.28345, MEM[(struct H264_DEC_PIC_PARAM_S *)pDecParam_22(D)].ImgPhyAddr
	cmp	r0, r2	@ D.28346, D.28345
	addeq	r1, r6, #308	@ ivtmp.129, pDecParam,
	moveq	r3, #0	@ i,
	bne	.L188	@,
.L190:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, D.28345
	beq	.L187	@,
	ldr	r2, [r1, #4]!	@ D.28345, MEM[base: _151, offset: 0B]
	cmp	r2, r0	@ D.28345, D.28346
	beq	.L190	@,
.L188:
	str	r2, [r4, #16]	@ D.28345, pRepairParam_17(D)->RefImageAddr
	b	.L187	@
.L229:
	str	r3, [r4, #564]	@ D.28348, pRepairParam_17(D)->Pic_type
	b	.L193	@
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
	ldr	r6, .L239	@ tmp126,
	movw	r5, #1144	@ tmp119,
	ldr	lr, .L239+4	@ tmp120,
	add	r3, r3, r2, lsl #4	@ tmp124, tmp123, VdhId,
	ldr	r4, .L239+8	@ tmp125,
	mov	r8, r1	@ pDecParam, pDecParam
	ldr	r6, [r6, #88]	@ D.28358, g_vdm_hal_fun_ptr.pfun_VDMHAL_MakeDecReport
	mov	r7, r0	@ VidStd, VidStd
	add	r4, r3, r4	@ pDecReport, tmp124, tmp125
	cmp	r6, #0	@ D.28358,
	mla	r5, r5, r2, lr	@ pRepairParam, tmp119, VdhId, tmp120
	beq	.L234	@,
	mov	r1, r4	@, pDecReport
	blx	r6	@ D.28358
.L234:
	mov	r3, r4	@, pDecReport
	mov	r2, r8	@, pDecParam
	mov	r1, r5	@, pRepairParam
	mov	r0, r7	@, VidStd
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	PostPro_GetRepairParam	@
.L240:
	.align	2
.L239:
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
	ldr	r5, .L243	@ tmp117,
	add	ip, ip, r2, lsl #4	@ tmp121, tmp120, VdhId,
	ldr	r3, .L243+4	@ tmp141,
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
.L244:
	.align	2
.L243:
	.word	g_DecReport
	.word	g_RepairParam
	.fnend
	.size	PostPro_SetFullRepair, .-PostPro_SetFullRepair
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
