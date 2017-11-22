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
	.file	"fsp.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(fsp)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.o
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
	.type	FSP_DSDRePartitionFsMemory, %function
FSP_DSDRePartitionFsMemory:
	.fnstart
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #556
	sub	sp, sp, #556	@,,
	mov	r5, r0	@ InstID, InstID
	mov	r6, r1	@ MemPhyAddr, MemPhyAddr
	add	r0, sp, #136	@ tmp642,,
	mov	r1, #416	@,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	bne	.L31	@,
	ldr	r3, .L39	@ tmp336,
	ldr	r9, [r3]	@ D.32578, s_pFspInst
	cmp	r9, #0	@ D.32578,
	beq	.L32	@,
	ldr	r1, .L39+4	@ tmp344,
	mov	r4, #4	@ D.32584,
	ldrsb	r2, [r9, #60]	@ D.32584, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	ldrsb	r3, [r9, #65]	@ D.32577, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDecFsNum
	ldr	ip, [r1, #36]	@ D.32581, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.32581,
	smlabb	r4, r4, r2, r3	@ MinFsNum, D.32584, D.32584, D.32577
	beq	.L25	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	mov	lr, #64	@ tmp347,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	add	r1, sp, #136	@ tmp643,,
	str	r5, [sp, #12]	@ InstID,
	mov	r8, #40	@ tmp351,
	str	r1, [sp, #16]	@ tmp643,
	mov	r0, r6	@, MemPhyAddr
	str	lr, [sp, #20]	@ tmp347,
	mov	r1, r7	@, MemSize
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32UserDec
	stmib	sp, {r8, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.32581
	subs	r2, r0, #0	@ Ret,
	bne	.L5	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _20->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ D.32580, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, D.32580
	bgt	.L7	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	strb	r2, [r9, #11]	@ Ret, _20->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable,
	strb	r2, [r9, #12]	@ Ret, _20->s32TfFsNum
	beq	.L33	@,
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.32586, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDecFsNum
	add	r2, r9, #32768	@ tmp615, D.32578,
	str	r2, [sp, #92]	@ tmp615, %sfp
	strb	r3, [r9, #10]	@ D.32586, _20->s32DecFsNum
.L10:
	sxtb	r4, r3	@ D.32580, D.32586
	ldr	r3, [sp, #136]	@ D.32577, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.32577, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.160,,
	str	r9, [sp, #128]	@ D.32578, %sfp
	str	r3, [sp, #72]	@ D.32577, %sfp
	ldr	r3, [sp, #92]	@ tmp615, %sfp
	str	r2, [sp, #80]	@ D.32577, %sfp
	ldr	r0, [r1, #-408]!	@ D.32580, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.32577, _20->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.32580, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.32577, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.160, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.32580, %sfp
	ldr	r2, [sp, #404]	@ D.32580, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.32577, %sfp
	ldr	r3, [r9, #76]	@ D.32577, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.32580, %sfp
	ldr	r2, [sp, #408]	@ D.32580, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.32577, %sfp
	mov	r3, r9	@ ivtmp.158, D.32578
	str	r0, [sp, #120]	@ D.32580, %sfp
	str	r2, [sp, #116]	@ D.32580, %sfp
	str	r9, [sp, #132]	@ ivtmp.122, %sfp
	str	r4, [sp, #104]	@ D.32580, %sfp
	b	.L14	@
.L34:
	ldr	r2, [sp, #84]	@ D.32576, %sfp
	str	r1, [r2]	@ i, MEM[base: _302, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	ldr	r0, [r2]	@ D.32580, MEM[base: _303, offset: 0B]
	ldr	r2, [sp, #56]	@ D.32576, %sfp
	str	r0, [r10]	@ D.32580, MEM[base: _305, offset: 0B]
	ldr	r0, [sp, #72]	@ D.32577, %sfp
	str	r0, [r9]	@ D.32577, MEM[base: _307, offset: 0B]
	ldr	r0, [sp, #96]	@ D.32577, %sfp
	str	r0, [r8]	@ D.32577, MEM[base: _309, offset: 0B]
	ldr	r0, [sp, #100]	@ D.32577, %sfp
	str	r0, [r7]	@ D.32577, MEM[base: _311, offset: 0B]
	ldr	r0, [sp, #108]	@ D.32580, %sfp
	str	r0, [r6]	@ D.32580, MEM[base: _313, offset: 0B]
	ldr	r0, [sp, #112]	@ D.32580, %sfp
	str	r0, [r5]	@ D.32580, MEM[base: _315, offset: 0B]
	ldr	r0, [sp, #116]	@ D.32580, %sfp
	str	r0, [r4]	@ D.32580, MEM[base: _317, offset: 0B]
	mov	r0, #0	@ tmp885,
	strb	r0, [lr]	@ tmp885, MEM[base: _319, offset: 0B]
	strb	r0, [ip]	@ tmp884, MEM[base: _321, offset: 0B]
	strb	r0, [r2]	@ tmp883, MEM[base: _323, offset: 0B]
	ldr	r2, [sp, #60]	@ D.32576, %sfp
	ldr	r0, [sp, #80]	@ D.32577, %sfp
	str	r0, [r2]	@ D.32577,* D.32576
.L12:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.158, ivtmp.158,
	add	r2, r2, #4	@ ivtmp.160, ivtmp.160,
	str	r2, [sp, #76]	@ ivtmp.160, %sfp
	beq	.L13	@,
	ldr	r2, [sp, #92]	@ tmp615, %sfp
	ldr	r2, [r2, #1872]	@ D.32577, _20->ImgSlotLen
	str	r2, [sp, #80]	@ D.32577, %sfp
.L14:
	add	r2, r3, #27648	@ D.32576, ivtmp.158,
	mov	r0, r2	@ D.32576, D.32576
	add	r2, r2, #152	@ D.32576, D.32576,
	str	r2, [sp, #84]	@ D.32576, %sfp
	add	r10, r0, #160	@ D.32576, D.32576,
	ldr	r2, [sp, #104]	@ D.32580, %sfp
	add	r9, r0, #168	@ D.32576, D.32576,
	add	r8, r0, #172	@ D.32576, D.32576,
	add	r7, r0, #176	@ D.32576, D.32576,
	cmp	r2, r1	@ D.32580, i
	add	r2, r0, #160	@ D.32576, D.32576,
	str	r2, [sp, #88]	@ D.32576, %sfp
	add	r2, r0, #168	@ D.32576, D.32576,
	str	r2, [sp, #24]	@ D.32576, %sfp
	add	r2, r0, #172	@ D.32576, D.32576,
	str	r2, [sp, #28]	@ D.32576, %sfp
	add	r2, r0, #176	@ D.32576, D.32576,
	str	r2, [sp, #32]	@ D.32576, %sfp
	add	r2, r0, #180	@ D.32576, D.32576,
	str	r2, [sp, #36]	@ D.32576, %sfp
	add	r2, r0, #184	@ D.32576, D.32576,
	str	r2, [sp, #40]	@ D.32576, %sfp
	add	r2, r0, #188	@ D.32576, D.32576,
	str	r2, [sp, #44]	@ D.32576, %sfp
	add	r2, r0, #148	@ D.32576, D.32576,
	str	r2, [sp, #48]	@ D.32576, %sfp
	add	r2, r0, #149	@ D.32576, D.32576,
	str	r2, [sp, #52]	@ D.32576, %sfp
	add	r2, r0, #150	@ D.32576, D.32576,
	str	r2, [sp, #56]	@ D.32576, %sfp
	add	r2, r0, #196	@ D.32576, D.32576,
	str	r2, [sp, #60]	@ D.32576, %sfp
	add	r2, r0, #152	@ D.32576, D.32576,
	str	r2, [sp, #64]	@ D.32576, %sfp
	add	r2, r0, #150	@ D.32576, D.32576,
	str	r2, [sp, #68]	@ D.32576, %sfp
	add	r2, r0, #196	@ D.32576, D.32576,
	add	r6, r0, #180	@ D.32576, D.32576,
	add	r5, r0, #184	@ D.32576, D.32576,
	add	r4, r0, #188	@ D.32576, D.32576,
	add	lr, r0, #148	@ D.32576, D.32576,
	add	ip, r0, #149	@ D.32576, D.32576,
	mov	r0, r2	@ D.32576, D.32576
	bgt	.L34	@,
	ldr	r2, [sp, #64]	@ D.32576, %sfp
	mov	fp, #0	@ tmp882,
	str	fp, [r2]	@ tmp882, MEM[base: _327, offset: 0B]
	ldr	r2, [sp, #120]	@ D.32580, %sfp
	str	r2, [r10]	@ D.32580, MEM[base: _329, offset: 0B]
	ldr	r2, [sp, #72]	@ D.32577, %sfp
	str	r2, [r9]	@ D.32577, MEM[base: _331, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32577, %sfp
	str	r2, [r8]	@ D.32577, MEM[base: _333, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32577, %sfp
	str	r2, [r7]	@ D.32577, MEM[base: _335, offset: 0B]
	ldr	r2, [sp, #108]	@ D.32580, %sfp
	str	r2, [r6]	@ D.32580, MEM[base: _337, offset: 0B]
	ldr	r2, [sp, #112]	@ D.32580, %sfp
	str	r2, [r5]	@ D.32580, MEM[base: _339, offset: 0B]
	ldr	r2, [sp, #116]	@ D.32580, %sfp
	str	r2, [r4]	@ D.32580, MEM[base: _341, offset: 0B]
	mov	r2, r0	@ D.32576, D.32576
	strb	fp, [lr]	@ tmp881, MEM[base: _343, offset: 0B]
	ldr	r0, [sp, #80]	@ D.32577, %sfp
	strb	fp, [ip]	@ tmp880, MEM[base: _345, offset: 0B]
	ldr	ip, [sp, #68]	@ D.32576, %sfp
	strb	fp, [ip]	@ tmp878, MEM[base: _347, offset: 0B]
	str	r0, [r2]	@ D.32577,* D.32576
	b	.L12	@
.L33:
	ldrsb	r3, [r9, #1]	@ _20->s8LowBufEnable, _20->s8LowBufEnable
	cmp	r3, #0	@ _20->s8LowBufEnable,
	beq	.L9	@,
	add	r2, r9, #32768	@ tmp615, D.32578,
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.32586, MemArrange.ValidFrameNum
	str	r2, [sp, #92]	@ tmp615, %sfp
	mov	r1, r2	@ tmp615, tmp615
	ldr	r2, [sp, #140]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	strb	r3, [r9, #10]	@ D.32586, _20->s32DecFsNum
	str	r2, [r1, #1876]	@ MemArrange.TotalMemUsed, _20->TotalMemUsed
	b	.L10	@
.L13:
	ldr	r9, [sp, #128]	@ D.32578, %sfp
	mov	r3, #1	@ tmp437,
	ldr	r4, [sp, #104]	@ D.32580, %sfp
	add	r1, sp, #400	@,,
	ldr	r5, [sp, #92]	@ tmp615, %sfp
	mov	r0, #0	@ tmp441,
	ldr	r6, [sp, #72]	@ D.32577, %sfp
	strb	r3, [r9, #12]	@ tmp437, _20->s32TfFsNum
	add	r3, sp, #552	@ tmp733,,
	add	r3, r3, r4, lsl #2	@ tmp445, tmp733, D.32580,
	str	r0, [r5, #1688]	@ tmp441, _20->stTfFs[0].PhyFsID
	str	r6, [r5, #1704]	@ D.32577, _20->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.32577, %sfp
	ldr	ip, [r3, #-408]	@ tmp447, MemArrange.FrameAddr
	ldmia	r1, {r1, r2, r3}	@,,,
	str	r6, [r5, #1708]	@ D.32577, _20->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.32577, %sfp
	str	ip, [r5, #1696]	@ tmp447, _20->stTfFs[0].PhyAddr
	str	r1, [r5, #1716]	@ MemArrange.ChromOffset, _20->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.32577, _20->stTfFs[0].FsHeight
	str	r2, [r5, #1720]	@ MemArrange.LumaPixelOffset, _20->stTfFs[0].LumaPixelOffset
	str	r3, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _20->stTfFs[0].ChromaPixelOffset
	strb	r0, [r5, #1684]	@ tmp441, _20->stTfFs[0].IsDecRef
	strb	r0, [r5, #1685]	@ tmp441, _20->stTfFs[0].IsTfRef
	strb	r0, [r5, #1686]	@ tmp441, _20->stTfFs[0].DispState
	ldrb	r2, [r9, #60]	@ zero_extendqisi2	@ D.32586, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	ldr	lr, [sp, #132]	@ ivtmp.122, %sfp
	cmp	r2, r0	@ D.32586,
	streqb	r2, [r9, #11]	@ D.32586, _20->s32DispFsNum
	streq	r2, [sp, #44]	@ D.32586, %sfp
	beq	.L16	@,
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r1, [r9, #67]	@ D.32579, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDispFsNum
	rsb	r2, r4, r2	@ D.32580, D.32580, MemArrange.ValidFrameNum
	sub	r2, r2, #1	@ D.32580, D.32580,
	cmp	r2, #25	@ D.32580,
	movge	r2, #25	@ D.32580,
	uxtb	r2, r2	@ D.32586, D.32580
	strb	r2, [r9, #11]	@ D.32586, _20->s32DispFsNum
	sxtb	r3, r2	@ D.32580, D.32586
	str	r3, [sp, #44]	@ D.32580, %sfp
	cmp	r3, r1	@ D.32580, D.32579
	blt	.L35	@,
.L16:
	ldr	r3, [sp, #400]	@ D.32580, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.32577, MemArrange.VahbStride
	mov	r0, ip	@ tmp619, i
	str	r3, [sp, #96]	@ D.32580, %sfp
	ldr	r3, [sp, #404]	@ D.32580, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.32577, %sfp
	str	r3, [sp, #100]	@ D.32580, %sfp
	ldr	r3, [sp, #408]	@ D.32580, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.32580, %sfp
	mov	r3, #1	@ D.32586,
	mov	r2, r3	@ D.32586, D.32586
	mov	r3, r4	@ D.32580, D.32580
	b	.L24	@
.L37:
	ldr	r3, [sp, #48]	@ D.32576, %sfp
	ldr	r2, [sp, #56]	@ D.32576, %sfp
	str	ip, [r3]	@ i, MEM[base: _235, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp495, %sfp
	ldr	r3, [r3, #-408]	@ D.32580, MemArrange.FrameAddr
	str	r3, [r2]	@ D.32580, MEM[base: _139, offset: 0B]
	ldr	r3, [sp, #60]	@ D.32576, %sfp
	ldr	r2, [sp, #72]	@ D.32577, %sfp
	str	r2, [r3]	@ D.32577, MEM[base: _168, offset: 0B]
	ldr	r2, [sp, #64]	@ D.32576, %sfp
	ldr	r3, [r9, #88]	@ D.32580, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.32580, MEM[base: _142, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32580, %sfp
	ldr	r3, [r9, #92]	@ D.32580, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32580, MEM[base: _150, offset: 0B]
	str	r2, [r7]	@ D.32580, MEM[base: _228, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32580, %sfp
	str	r2, [r6]	@ D.32580, MEM[base: _10, offset: 0B]
	ldr	r2, [sp, #104]	@ D.32580, %sfp
	str	r2, [r5]	@ D.32580, MEM[base: _6, offset: 0B]
	strb	r0, [r4]	@ tmp619, MEM[base: _2, offset: 0B]
	strb	r0, [fp]	@ tmp619, MEM[base: _281, offset: 0B]
	strb	r0, [r10]	@ tmp619, MEM[base: _273, offset: 0B]
.L18:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.32577, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.122, ivtmp.122,
	str	r3, [sp, #72]	@ D.32577, %sfp
	beq	.L36	@,
	ldrsb	r1, [r9, #11]	@ D.32580, _20->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.32586, _20->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.32580, _20->s32DecFsNum
	str	r1, [sp, #44]	@ D.32580, %sfp
.L24:
	add	r1, ip, r3	@ tmp492, i, D.32580
	sxtab	r3, r3, r2	@ tmp528, D.32580, D.32586
	sxtab	r2, r1, r2	@ tmp493, tmp492, D.32586
	add	r1, lr, #30976	@ D.32576, ivtmp.122,
	mov	r4, r1	@ D.32576, D.32576
	add	r1, r1, #152	@ D.32576, D.32576,
	str	r1, [sp, #48]	@ D.32576, %sfp
	add	r1, sp, #552	@ tmp756,,
	add	r3, r1, r3, lsl #2	@ tmp530, tmp760, tmp528,
	str	r3, [sp, #76]	@ tmp530, %sfp
	add	r3, r4, #160	@ D.32576, D.32576,
	str	r3, [sp, #56]	@ D.32576, %sfp
	add	r3, r4, #168	@ D.32576, D.32576,
	str	r3, [sp, #60]	@ D.32576, %sfp
	add	r3, r4, #160	@ D.32576, D.32576,
	str	r3, [sp, #80]	@ D.32576, %sfp
	add	r3, r4, #168	@ D.32576, D.32576,
	str	r3, [sp, #84]	@ D.32576, %sfp
	ldr	r3, [sp, #44]	@ D.32580, %sfp
	add	r2, r1, r2, lsl #2	@ tmp495, tmp756, tmp493,
	add	r10, r4, #150	@ D.32576, D.32576,
	str	r2, [sp, #52]	@ tmp495, %sfp
	cmp	r3, ip	@ D.32580, i
	add	r3, r4, #176	@ D.32576, D.32576,
	str	r3, [sp, #44]	@ D.32576, %sfp
	add	r3, r4, #180	@ D.32576, D.32576,
	str	r3, [sp, #24]	@ D.32576, %sfp
	add	r3, r4, #184	@ D.32576, D.32576,
	str	r3, [sp, #28]	@ D.32576, %sfp
	add	r3, r4, #188	@ D.32576, D.32576,
	str	r3, [sp, #32]	@ D.32576, %sfp
	add	r3, r4, #148	@ D.32576, D.32576,
	add	r2, r4, #152	@ D.32576, D.32576,
	add	fp, r4, #149	@ D.32576, D.32576,
	str	r2, [sp, #68]	@ D.32576, %sfp
	add	r8, r4, #176	@ D.32576, D.32576,
	add	r2, r4, #172	@ D.32576, D.32576,
	add	r7, r4, #180	@ D.32576, D.32576,
	add	r6, r4, #184	@ D.32576, D.32576,
	add	r5, r4, #188	@ D.32576, D.32576,
	str	r2, [sp, #64]	@ D.32576, %sfp
	mov	r4, r3	@ D.32576, D.32576
	str	r2, [sp, #88]	@ D.32576, %sfp
	str	r3, [sp, #36]	@ D.32576, %sfp
	str	r10, [sp, #40]	@ D.32576, %sfp
	bgt	.L37	@,
	ldr	r3, [sp, #68]	@ D.32576, %sfp
	ldr	r2, [sp, #72]	@ D.32577, %sfp
	str	r0, [r3]	@ tmp619, MEM[base: _269, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp530, %sfp
	ldr	r10, [r3, #-408]	@ D.32580, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.32576, %sfp
	str	r10, [r3]	@ D.32580, MEM[base: _263, offset: 0B]
	ldr	r3, [sp, #84]	@ D.32576, %sfp
	str	r2, [r3]	@ D.32577, MEM[base: _257, offset: 0B]
	ldr	r3, [sp, #88]	@ D.32576, %sfp
	ldr	r10, [r9, #88]	@ D.32580, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.32580, MEM[base: _251, offset: 0B]
	ldr	r3, [r9, #92]	@ D.32580, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32580, MEM[base: _284, offset: 0B]
	ldr	r3, [sp, #96]	@ D.32580, %sfp
	str	r3, [r7]	@ D.32580, MEM[base: _286, offset: 0B]
	ldr	r3, [sp, #100]	@ D.32580, %sfp
	str	r3, [r6]	@ D.32580, MEM[base: _288, offset: 0B]
	ldr	r3, [sp, #104]	@ D.32580, %sfp
	str	r3, [r5]	@ D.32580, MEM[base: _290, offset: 0B]
	ldr	r3, [sp, #40]	@ D.32576, %sfp
	strb	r0, [r4]	@ tmp619, MEM[base: _292, offset: 0B]
	strb	r0, [fp]	@ tmp619, MEM[base: _294, offset: 0B]
	strb	r0, [r3]	@ tmp619, MEM[base: _296, offset: 0B]
	b	.L18	@
.L36:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.93,,
	add	r0, r9, #34560	@ ivtmp.99, D.32578,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.103, D.32578,
	mov	lr, r2	@ tmp618, i
	movge	r3, #20	@ D.32580,
	uxtb	r3, r3	@ D.32586, D.32580
	strb	r3, [r9, #13]	@ D.32586, _20->s32PmvNum
	b	.L23	@
.L38:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.32586, _20->s32PmvNum
.L23:
	sxtb	r3, r3	@ D.32580, D.32586
	add	ip, ip, #4	@ ivtmp.93, ivtmp.93,
	cmp	r3, r2	@ D.32580, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.99, ivtmp.99,
	add	r1, r1, #1	@ ivtmp.103, ivtmp.103,
	ldrgt	r3, [ip, #-4]	@ D.32580, MEM[base: _81, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.32580, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.32580,
	strb	lr, [r1, #-1]	@ tmp618,
	bne	.L38	@,
	ldr	r7, [sp, #92]	@ tmp615, %sfp
	add	r3, r9, #24576	@ tmp571, D.32578,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r2, #0	@ tmp572,
	ldr	ip, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	mov	r0, r2	@ D.32577, tmp572
	ldr	lr, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r7, #1788]	@ MemArrange.HafPmvOffset, _20->s32HalfPmvOffset
	ldr	r1, [r3, #3232]	@ _20->stDecFs[0].PhyAddr, _20->stDecFs[0].PhyAddr
	str	ip, [r3, #3188]	@ MemArrange.VahbStride, _20->stDummyPhyFs.Stride
	str	r2, [r3, #3172]	@ tmp572, _20->stDummyPhyFs.PhyFsID
	str	r1, [r3, #3180]	@ _20->stDecFs[0].PhyAddr, _20->stDummyPhyFs.PhyAddr
	ldr	r1, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	ldr	r5, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r4, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r3, #3192]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, _20->stDummyPhyFs.FsWidth
	ldr	r6, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.32580, MemArrange.TotalMemUsed
	str	lr, [r3, #3208]	@ MemArrange.ChromaPixelOffset, _20->stDummyPhyFs.ChromaPixelOffset
	mov	lr, r7	@ tmp615, tmp615
	strb	r2, [r3, #3168]	@ tmp572, _20->stDummyPhyFs.IsDecRef
	str	r6, [r3, #3196]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, _20->stDummyPhyFs.FsHeight
	strb	r2, [r3, #3169]	@ tmp572, _20->stDummyPhyFs.IsTfRef
	strb	r2, [r3, #3170]	@ tmp572, _20->stDummyPhyFs.DispState
	str	r5, [r3, #3200]	@ MemArrange.ChromOffset, _20->stDummyPhyFs.ChromOffset
	str	r4, [r3, #3204]	@ MemArrange.LumaPixelOffset, _20->stDummyPhyFs.LumaPixelOffset
	ldr	ip, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	str	r1, [r7, #1876]	@ D.32580, _20->TotalMemUsed
	str	ip, [r7, #1888]	@ MemArrange.u32StrideByte, _20->StrideByte
	str	r1, [r3]	@ D.32580, *UsedMemSize_226(D)
.L28:
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L25:
	mvn	r2, #0	@ Ret,
.L5:
	ldr	r1, .L39+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32577,
	b	.L28	@
.L9:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r9, #32768	@ tmp615, D.32578,
	str	r2, [sp, #92]	@ tmp615, %sfp
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.32580,
	uxtb	r3, r3	@ D.32586, D.32580
	strb	r3, [r9, #10]	@ D.32586, _20->s32DecFsNum
	b	.L10	@
.L7:
	str	r3, [sp]	@ D.32580,
	mov	r3, r4	@, MinFsNum
	ldr	r1, .L39+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32577,
	b	.L28	@
.L31:
	ldr	r3, .L39+16	@,
	movw	r2, #523	@,
	ldr	r1, .L39+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32577,
	b	.L28	@
.L35:
	ldrsb	r3, [r9, #65]	@ D.32580, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #44]	@, %sfp
	str	r1, [sp]	@ D.32579,
	ldr	r1, .L39+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32577,
	b	.L28	@
.L32:
	mov	r0, r9	@, D.32578
	ldr	r3, .L39+28	@,
	mov	r2, #524	@,
	ldr	r1, .L39+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32577,
	b	.L28	@
.L40:
	.align	2
.L39:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC3
	.word	.LC5
	.word	.LC0
	.word	.LC1
	.word	.LC4
	.word	.LC2
	.fnend
	.size	FSP_DSDRePartitionFsMemory, .-FSP_DSDRePartitionFsMemory
	.align	2
	.type	FSP_NoneDnrSwitchToDnrSpecialCase1, %function
FSP_NoneDnrSwitchToDnrSpecialCase1:
	.fnstart
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #460
	sub	sp, sp, #460	@,,
	mov	r10, r0	@ InstID, InstID
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #40	@ tmp351,,
	mov	r1, #416	@,
	mov	r5, #0	@ tmp212,
	mov	r9, r2	@ s32Num, s32Num
	str	r5, [sp, #36]	@ tmp212, s32UsedMemSize
	bl	__memzero	@
	cmp	r10, r5	@ InstID,
	bne	.L100	@,
	cmp	r4, #0	@ VoUsingFrameArray,
	beq	.L101	@,
	ldr	r3, .L109	@ tmp218,
	ldr	r6, [r3]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L102	@,
	add	r5, r6, #32768	@ tmp312, pstInst,
	ldr	r3, [r4]	@ D.32624, VoUsingFrameArray_23(D)->FrameAddr
	ldr	r8, [r5, #1880]	@ s32VdhMemAddr, pstInst_25->MemAddr
	ldr	r7, [r5, #1876]	@ pstInst_25->TotalMemUsed, pstInst_25->TotalMemUsed
	ldr	r2, [r5, #1888]	@ pstInst_25->StrideByte, pstInst_25->StrideByte
	cmp	r8, r3	@ s32VdhMemAddr, D.32624
	ldr	r1, [r5, #1884]	@ s32VdhAllMemSize, pstInst_25->MemSize
	rsblt	r10, r8, r3	@ s32FreeSize, s32VdhMemAddr, D.32624
	add	r7, r7, r2	@ s32VdhTotalMemUse, pstInst_25->TotalMemUsed, pstInst_25->StrideByte
	cmp	r10, r7	@ s32FreeSize, s32VdhTotalMemUse
	str	r1, [sp, #28]	@ s32VdhAllMemSize, %sfp
	bge	.L76	@,
	sub	r2, r9, #-536870911	@ D.32622, s32Num,
	ldr	r1, [sp, #28]	@ s32VdhAllMemSize, %sfp
	add	r0, r4, r2, lsl #3	@ D.32626, VoUsingFrameArray, D.32622,
	ldr	r2, [r4, r2, asl #3]	@ _41->FrameAddr, _41->FrameAddr
	add	r1, r8, r1	@ D.32624, s32VdhMemAddr, s32VdhAllMemSize
	ldr	ip, [r0, #4]	@ _41->FrameSize, _41->FrameSize
	add	r2, r2, ip	@ D.32624, _41->FrameAddr, _41->FrameSize
	cmp	r1, r2	@ D.32624, D.32624
	rsbgt	r1, r2, r1	@ s32FreeSize, D.32624, D.32624
	movle	r1, #0	@ s32FreeSize,
	cmp	r1, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L49	@,
	sub	r1, r9, #1	@ i, s32Num,
	cmp	r1, #0	@ i,
	ble	.L78	@,
	ldmib	r4, {r0, r2}	@ VoUsingFrameArray,,
	add	r3, r3, r0	@ D.32624, D.32624, VoUsingFrameArray_23(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.32624, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_23(D) + 8B].FrameAddr
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	addgt	lr, r4, #8	@ ivtmp.210, VoUsingFrameArray,
	movgt	ip, r1	@ i, i
	movgt	r0, #0	@ i,
	bgt	.L54	@,
	b	.L103	@
.L56:
	ldr	fp, [lr, #4]	@ MEM[base: _152, offset: 4B], MEM[base: _152, offset: 4B]
	add	lr, lr, #8	@ ivtmp.210, ivtmp.210,
	ldr	r3, [r4, r0, asl #3]	@ MEM[base: VoUsingFrameArray_23(D), index: _3, step: 8, offset: 0B], MEM[base: VoUsingFrameArray_23(D), index: _3, step: 8, offset: 0B]
	ldr	r2, [r10, #8]	@ MEM[base: _152, offset: 8B], MEM[base: _152, offset: 8B]
	add	r3, r3, fp	@ D.32624, MEM[base: VoUsingFrameArray_23(D), index: _3, step: 8, offset: 0B], MEM[base: _152, offset: 4B]
	rsb	r2, r3, r2	@ s32FreeSize, D.32624, MEM[base: _152, offset: 8B]
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	ble	.L104	@,
.L54:
	add	r0, r0, #1	@ i, i,
	mov	r10, lr	@ D.32630, ivtmp.210
	cmp	r0, r1	@ i, i
	bne	.L56	@,
.L55:
	str	r7, [sp, #8]	@ s32VdhTotalMemUse,
	mov	r3, #1216	@,
	str	r9, [sp, #4]	@ s32Num,
	mov	r0, #31	@,
	str	ip, [sp]	@ i,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
.L88:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L76:
	mov	r10, #1	@ s32FoundVdhMemInTop,
.L47:
	ldrsb	r3, [r6, #10]	@ pstInst_25->s32DecFsNum, pstInst_25->s32DecFsNum
	ldr	fp, .L109+12	@ tmp311,
	cmp	r3, #0	@ pstInst_25->s32DecFsNum,
	ldrle	lr, [fp]	@ D.32621, s_pstVfmwChan
	ble	.L58	@,
	ldr	lr, [fp]	@ D.32621, s_pstVfmwChan
	add	r1, r6, #27648	@ ivtmp.202, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.202, ivtmp.202,
	add	r3, lr, #216064	@ ivtmp.199, D.32621,
	mov	r0, r2	@ tmp314, i
	add	r3, r3, #360	@ ivtmp.199, ivtmp.199,
.L59:
	str	r0, [r3]	@ tmp314, MEM[base: _116, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r1], #52	@ D.32624, MEM[base: _130, offset: 0B]
	add	r3, r3, #16	@ ivtmp.199, ivtmp.199,
	str	ip, [r3, #-12]	@ D.32624, MEM[base: _116, offset: 4B]
	ldr	ip, [r5, #1872]	@ D.32624, pstInst_25->ImgSlotLen
	str	r0, [r3, #-4]	@ tmp314, MEM[base: _116, offset: 12B]
	str	ip, [r3, #-8]	@ D.32624, MEM[base: _116, offset: 8B]
	ldrsb	ip, [r6, #10]	@ D.32624, pstInst_25->s32DecFsNum
	cmp	ip, r2	@ D.32624, i
	bgt	.L59	@,
.L58:
	ldr	r1, .L109+16	@ tmp273,
	ldr	r2, [lr, #1608]	@ s32ThrWidth, _1->stSynExtraData.s32DSDThrWidth
	ldr	r3, [lr, #1612]	@ s32ThrHeight, _1->stSynExtraData.s32DSDThrHeight
	ldr	ip, [r1, #36]	@ D.32629, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, [lr, #1588]	@ s32DnrNum, _1->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	cmp	ip, #0	@ D.32629,
	beq	.L62	@,
	mov	lr, #0	@ tmp279,
	add	r0, sp, #40	@ tmp354,,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp278,
	str	r0, [sp, #16]	@ tmp354,
	mov	r0, #64	@ tmp276,
	str	r1, [sp, #12]	@ tmp278,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@ tmp276,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp279,
	str	lr, [sp]	@ tmp279,
	blx	ip	@ D.32629
	cmp	r0, #0	@,
	beq	.L61	@,
.L62:
	ldr	r2, .L109+4	@,
	mov	r0, #31	@,
	ldr	r1, .L109+20	@,
	bl	dprint_vfmw	@
.L61:
	ldr	ip, [fp]	@ D.32621, s_pstVfmwChan
	cmp	r10, #1	@ s32FoundVdhMemInTop,
	ldr	lr, [sp, #44]	@ D.32624, MemArrange.TotalMemUsed
	str	lr, [ip, #240]	@ D.32624, _99->s32OffLineDNRMemSize
	beq	.L105	@,
.L63:
	sub	r3, r9, #-536870911	@ D.32622, s32Num,
	ldr	r2, [sp, #28]	@ s32VdhAllMemSize, %sfp
	add	r8, r8, r2	@ D.32624, s32VdhMemAddr, s32VdhAllMemSize
	add	r2, r4, r3, lsl #3	@ D.32626, VoUsingFrameArray, D.32622,
	ldr	r3, [r4, r3, asl #3]	@ _110->FrameAddr, _110->FrameAddr
	ldr	r2, [r2, #4]	@ _110->FrameSize, _110->FrameSize
	add	r3, r3, r2	@ D.32624, _110->FrameAddr, _110->FrameSize
	cmp	r8, r3	@ D.32624, D.32624
	rsbgt	r8, r3, r8	@ s32FreeSize, D.32624, D.32624
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, lr	@ s32FreeSize, D.32624
	strge	r3, [ip, #236]	@ D.32624, _99->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.32623,
	bge	.L88	@,
	sub	r1, r9, #1	@ i, s32Num,
	cmp	r1, #0	@ i,
	ble	.L83	@,
	ldmib	r4, {r0, r2}	@ VoUsingFrameArray,,
	ldr	r3, [r4]	@ VoUsingFrameArray_23(D)->FrameAddr, VoUsingFrameArray_23(D)->FrameAddr
	add	r3, r3, r0	@ D.32624, VoUsingFrameArray_23(D)->FrameAddr, VoUsingFrameArray_23(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.32624, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_23(D) + 8B].FrameAddr
	cmp	lr, r2	@ D.32624, s32FreeSize
	movgt	r6, r1	@ i, i
	movgt	r5, #0	@ i,
	bgt	.L70	@,
	b	.L106	@
.L72:
	ldr	r3, [r4, #8]	@ MEM[base: _140, offset: 8B], MEM[base: _140, offset: 8B]
	add	r4, r4, #8	@ ivtmp.194, ivtmp.194,
	ldr	r0, [r4, #4]	@ MEM[base: _140, offset: 12B], MEM[base: _140, offset: 12B]
	ldr	r2, [r2, #16]	@ MEM[base: _140, offset: 16B], MEM[base: _140, offset: 16B]
	add	r3, r3, r0	@ D.32624, MEM[base: _140, offset: 8B], MEM[base: _140, offset: 12B]
	rsb	r2, r3, r2	@ s32FreeSize, D.32624, MEM[base: _140, offset: 16B]
	cmp	lr, r2	@ D.32624, s32FreeSize
	ble	.L107	@,
.L70:
	add	r5, r5, #1	@ i, i,
	mov	r2, r4	@ D.32630, ivtmp.194
	cmp	r5, r1	@ i, i
	bne	.L72	@,
.L71:
	str	lr, [sp, #8]	@ D.32624,
	movw	r3, #1299	@,
	str	r9, [sp, #4]	@ s32Num,
	mov	r0, #31	@,
	str	r6, [sp]	@ i,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
	b	.L88	@
.L105:
	ldr	r3, [r4]	@ D.32624, VoUsingFrameArray_23(D)->FrameAddr
	add	r7, r8, r7	@ D.32624, s32VdhMemAddr, s32VdhTotalMemUse
	cmp	r3, r7	@ D.32624, D.32624
	rsbgt	r3, r7, r3	@ s32FreeSize, D.32624, D.32624
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, lr	@ s32FreeSize, D.32624
	strge	r7, [ip, #236]	@ D.32624, _99->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.32623,
	blt	.L63	@,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L49:
	str	r2, [r5, #1880]	@ D.32624, pstInst_25->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [r0, #4]	@ _41->FrameSize, _41->FrameSize
	add	r3, r3, r7	@ D.32624, _41->FrameSize, s32VdhTotalMemUse
	str	r3, [r0, #4]	@ D.32624, _41->FrameSize
.L53:
	add	r3, sp, #36	@,,
	ldr	r2, [r5, #1884]	@, pstInst_25->MemSize
	ldr	r1, [r5, #1880]	@, pstInst_25->MemAddr
	mov	r0, #0	@,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	mov	r10, r0	@ s32Ret,
	beq	.L108	@,
	ldr	r2, [sp, #36]	@ D.32624, s32UsedMemSize
	cmp	r7, r2	@ s32VdhTotalMemUse, D.32624
	movge	r10, #0	@ s32FoundVdhMemInTop,
	bge	.L47	@,
	ldr	r1, [r5, #1884]	@ pstInst_25->MemSize, pstInst_25->MemSize
	movw	r3, #1233	@,
	str	r2, [sp]	@ D.32624,
	mov	r0, #31	@,
	str	r7, [sp, #4]	@ s32VdhTotalMemUse,
	str	r1, [sp, #8]	@ pstInst_25->MemSize,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
	b	.L88	@
.L107:
	cmp	r1, r5	@ i, i
	str	r3, [ip, #236]	@ D.32624, _99->s32OffLineDnrMemAddr
	ble	.L84	@,
	mov	r0, #0	@ D.32623,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L104:
	str	r3, [r5, #1880]	@ D.32624, pstInst_25->MemAddr
	cmp	r1, r0	@ i, i
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [r10, #4]	@ _179->FrameSize, _179->FrameSize
	add	r3, r3, r7	@ D.32624, _179->FrameSize, s32VdhTotalMemUse
	str	r3, [r10, #4]	@ D.32624, _179->FrameSize
	bgt	.L53	@,
	mov	ip, r0	@ i, i
	b	.L55	@
.L83:
	mov	r6, #0	@ i,
	b	.L71	@
.L106:
	mov	r0, #0	@ D.32623,
	str	r3, [ip, #236]	@ D.32624, _99->s32OffLineDnrMemAddr
	b	.L88	@
.L100:
	mov	r0, r5	@, tmp212
	ldr	r3, .L109+32	@,
	movw	r2, #1164	@,
	ldr	r1, .L109+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
	b	.L88	@
.L78:
	mov	ip, #0	@ i,
	b	.L55	@
.L103:
	str	r3, [r5, #1880]	@ D.32624, pstInst_25->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [r4, #4]	@ VoUsingFrameArray_23(D)->FrameSize, VoUsingFrameArray_23(D)->FrameSize
	add	r3, r3, r7	@ D.32624, VoUsingFrameArray_23(D)->FrameSize, s32VdhTotalMemUse
	str	r3, [r4, #4]	@ D.32624, VoUsingFrameArray_23(D)->FrameSize
	b	.L53	@
.L108:
	movw	r3, #1228	@,
.L93:
	ldr	r2, .L109+4	@,
	mov	r0, #31	@,
	ldr	r1, .L109+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
	b	.L88	@
.L102:
	movw	r3, #1170	@,
	b	.L93	@
.L101:
	mov	r0, r4	@, VoUsingFrameArray
	ldr	r3, .L109+44	@,
	movw	r2, #1165	@,
	ldr	r1, .L109+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32623,
	b	.L88	@
.L84:
	mov	r6, r5	@ i, i
	b	.L71	@
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC9
	.word	s_pstVfmwChan
	.word	g_vdm_hal_fun_ptr
	.word	.LC11
	.word	.LC12
	.word	.LC10
	.word	.LC6
	.word	.LC1
	.word	.LC8
	.word	.LC7
	.fnend
	.size	FSP_NoneDnrSwitchToDnrSpecialCase1, .-FSP_NoneDnrSwitchToDnrSpecialCase1
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.type	FSP_NoneDnrSwitchToDnrNormCase, %function
FSP_NoneDnrSwitchToDnrNormCase:
	.fnstart
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	mov	r4, r0	@ InstID, InstID
	add	r0, sp, #48	@ tmp367,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L164	@,
	ldr	r3, .L169	@ tmp205,
	ldr	r7, [r3]	@ pstInst, s_pFspInst
	add	r3, r7, #32768	@ tmp207, pstInst,
	ldrsb	r2, [r7, #10]	@ pstInst_19->s32DecFsNum, pstInst_19->s32DecFsNum
	ldr	r9, [r3, #1880]	@ s32VdhMemAddr, pstInst_19->MemAddr
	cmp	r2, #0	@ pstInst_19->s32DecFsNum,
	ldr	r2, [r3, #1884]	@ s32VdhAllMemSize, pstInst_19->MemSize
	ldr	r5, [r3, #1872]	@ s32ImgSize, pstInst_19->ImgSlotLen
	str	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	ldr	r2, [r3, #1876]	@ D.32668, pstInst_19->TotalMemUsed
	str	r2, [sp, #32]	@ D.32668, %sfp
	ldr	r2, [r3, #1888]	@ D.32669, pstInst_19->StrideByte
	str	r2, [sp, #36]	@ D.32669, %sfp
	ble	.L165	@,
	add	r10, r7, #27648	@ ivtmp.237, pstInst,
	ldr	fp, .L169+4	@ tmp340,
	add	r10, r10, #160	@ ivtmp.237, ivtmp.237,
	mov	r8, #1	@ tmp341,
	b	.L120	@
.L166:
	ldr	r3, [fp]	@ D.32667, s_pstVfmwChan
	add	r3, r3, r4, lsl #4	@ tmp225, D.32667, i,
	add	r2, r3, #216064	@ tmp227, tmp225,
	add	r3, r3, #212992	@ tmp237, tmp225,
	str	r0, [r2, #360]	@ s32UsingCount, _35->stFrameArray[i_122].eFrameState
	ldr	r1, [r10]	@ D.32668, MEM[base: _155, offset: 0B]
	str	r1, [r2, #364]	@ D.32668,
	str	r5, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L118:
	ldrsb	r3, [r7, #10]	@ D.32668, pstInst_19->s32DecFsNum
	add	r4, r4, #1	@ i, i,
	add	r10, r10, #52	@ ivtmp.237, ivtmp.237,
	cmp	r3, r4	@ D.32668, i
	ble	.L121	@,
.L120:
	mov	r2, r5	@, s32ImgSize
	ldr	r1, [r10]	@, MEM[base: _155, offset: 0B]
	mov	r0, #0	@,
	ldr	r6, .L169+4	@ tmp336,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L166	@,
	ble	.L119	@,
	ldr	r3, [fp]	@ D.32667, s_pstVfmwChan
	ldr	r6, .L169+4	@ tmp336,
	add	r3, r3, r4, lsl #4	@ tmp245, D.32667, i,
	add	r2, r3, #216064	@ tmp247, tmp245,
	add	r3, r3, #212992	@ tmp257, tmp245,
	str	r8, [r2, #360]	@ tmp341, _42->stFrameArray[i_122].eFrameState
	ldr	r1, [r10]	@ D.32668, MEM[base: _155, offset: 0B]
	str	r1, [r2, #364]	@ D.32668,
	str	r5, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L118	@
.L165:
	ldr	r6, .L169+4	@ tmp336,
.L121:
	ldr	r3, .L169+8	@ tmp218,
	ldr	r1, [r6]	@ D.32667, s_pstVfmwChan
	ldr	ip, [r3, #36]	@ D.32671, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r2, [r1, #1608]	@ s32ThrWidth, _49->stSynExtraData.s32DSDThrWidth
	cmp	ip, #0	@ D.32671,
	ldr	r3, [r1, #1612]	@ s32ThrHeight, _49->stSynExtraData.s32DSDThrHeight
	ldr	r1, [r1, #1588]	@ s32DnrNum, _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L115	@,
	mov	lr, #0	@ tmp268,
	add	r0, sp, #48	@ tmp371,,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp267,
	str	r0, [sp, #16]	@ tmp371,
	mov	r0, #64	@ tmp265,
	str	r1, [sp, #12]	@ tmp267,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@ tmp265,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp268,
	str	lr, [sp]	@ tmp268,
	blx	ip	@ D.32671
	cmp	r0, #0	@,
	beq	.L122	@,
.L115:
	ldr	r2, .L169+12	@,
	mov	r0, #31	@,
	ldr	r1, .L169+16	@,
	bl	dprint_vfmw	@
.L122:
	ldr	r2, [sp, #36]	@ D.32669, %sfp
	ldr	r3, [sp, #32]	@ D.32668, %sfp
	ldr	r8, [sp, #52]	@ D.32668, MemArrange.TotalMemUsed
	add	r3, r3, r2	@ D.32669, D.32668, D.32669
	ldr	r4, [r6]	@ D.32667, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r3, r9, r3	@ D.32668, s32VdhMemAddr, D.32669
	str	r8, [r4, #240]	@ D.32668, _57->s32OffLineDNRMemSize
	ldr	r2, [r2]	@ D.32668, VoUsingFrameArray_60(D)->FrameAddr
	cmp	r2, r3	@ D.32668, D.32668
	rsbgt	r2, r3, r2	@ s32FreeSize, D.32668, D.32668
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, D.32668
	bge	.L163	@,
	ldr	r2, [sp, #40]	@ s32Num, %sfp
	cmp	r2, #0	@ s32Num,
	beq	.L125	@,
	ble	.L126	@,
	sub	r10, r2, #-536870911	@ D.32665, s32Num,
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r1, r2, r10, lsl #3	@ D.32672, VoUsingFrameArray, D.32665,
	ldr	r2, [r2, r10, asl #3]	@ _68->FrameAddr, _68->FrameAddr
	ldr	r1, [r1, #4]	@ _68->FrameSize, _68->FrameSize
	add	r2, r2, r1	@ D.32668, _68->FrameAddr, _68->FrameSize
	cmp	r3, r2	@ D.32668, D.32668
	bgt	.L125	@,
.L127:
	ldr	r3, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r3, r9, r3	@ D.32668, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r2, r3	@ s32FreeSize, D.32668, D.32668
	cmp	r8, r3	@ D.32668, s32FreeSize
	strle	r2, [r4, #236]	@ D.32668, _57->s32OffLineDnrMemAddr
	movle	r0, #0	@ D.32666,
	ble	.L159	@,
.L128:
	cmp	r5, r8	@ s32ImgSize, D.32668
	movge	r6, #1	@ s32DnrLockFrmNum,
	blt	.L167	@,
.L129:
	ldrsb	lr, [r7, #10]	@ D.32668, pstInst_19->s32DecFsNum
	cmp	lr, #0	@ D.32668,
	ble	.L142	@,
	cmp	r6, lr	@ s32DnrLockFrmNum, D.32668
	bgt	.L148	@,
	mov	r0, #0	@ j,
	mov	r1, r6	@ D.32668, s32DnrLockFrmNum
	cmp	r0, r1	@ j, D.32668
	bge	.L133	@,
.L168:
	mov	ip, r0, asl #4	@ tmp334, j,
	mov	r2, r0	@ j, j
	add	r3, r4, ip	@ tmp299, D.32667, tmp334
	add	r3, r3, #216064	@ tmp301, tmp299,
	ldr	r3, [r3, #360]	@ _57->stFrameArray[j_28].eFrameState, _57->stFrameArray[j_28].eFrameState
	cmp	r3, #0	@ _57->stFrameArray[j_28].eFrameState,
	beq	.L136	@,
	b	.L134	@
.L137:
	add	r3, r3, #360	@ D.32665, D.32665,
	ldr	r3, [r4, r3]	@ MEM[base: _138, offset: 0B], MEM[base: _138, offset: 0B]
	cmp	r3, #0	@ MEM[base: _138, offset: 0B],
	bne	.L134	@,
.L136:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r1	@ j, D.32668
	mov	r3, r2, asl #4	@ D.32665, j,
	add	r3, r3, #216064	@ D.32665, D.32665,
	blt	.L137	@,
	mov	r3, #52	@ tmp328,
	add	r2, r4, ip	@ tmp323, D.32667, tmp334
	mla	r3, r3, r0, r7	@ D.32665, tmp328, j, pstInst
	add	r2, r2, #216064	@ tmp324, tmp323,
	add	r2, r2, #360	@ tmp324, tmp324,
	add	ip, ip, #216064	@ D.32665, tmp334,
	add	ip, ip, #360	@ D.32665, D.32665,
	mov	r8, r0	@ j, j
	ldr	r2, [r2, #4]	@ _57->stFrameArray[j_177].s32FrameAddr, _57->stFrameArray[j_177].s32FrameAddr
	add	r3, r3, #27648	@ ivtmp.220, D.32665,
	add	ip, r4, ip	@ ivtmp.223, D.32667, D.32665
	add	r3, r3, #160	@ ivtmp.220, ivtmp.220,
	mov	r9, #2	@ tmp337,
	mov	lr, #0	@ tmp338,
	str	r2, [r4, #236]	@ _57->stFrameArray[j_177].s32FrameAddr, _57->s32OffLineDnrMemAddr
.L139:
	ldr	r2, [r3], #52	@ s32FrameStartAddr, MEM[base: _79, offset: 0B]
	add	r0, r0, #1	@ j, j,
	cmp	r0, r1	@ j, D.32668
	str	r9, [ip]	@ tmp337, MEM[base: _136, offset: 0B]
	stmib	ip, {r2, r5, lr}	@ ivtmp.223,,,
	add	ip, ip, #16	@ ivtmp.223, ivtmp.223,
	bne	.L139	@,
.L140:
	ldrsb	lr, [r7, #10]	@ D.32668, pstInst_19->s32DecFsNum
	cmp	lr, r8	@ D.32668, j
	ble	.L142	@,
	add	r1, r6, r8	@ D.32668, s32DnrLockFrmNum, j
.L144:
	cmp	r1, lr	@ D.32668, D.32668
	movle	r0, #0	@ D.32666,
	ble	.L159	@,
.L150:
	str	r6, [sp, #4]	@ s32DnrLockFrmNum,
	movw	r3, #1134	@,
	str	lr, [sp]	@ D.32668,
	mov	r0, #31	@,
	ldr	r2, .L169+12	@,
	ldr	r1, .L169+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32666,
	b	.L159	@
.L125:
	ldr	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r2, r9, r2	@ D.32668, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r2, r3, r2	@ s32FreeSize, D.32668, D.32668
	cmp	r8, r2	@ D.32668, s32FreeSize
	bgt	.L128	@,
.L163:
	mov	r0, #0	@ D.32666,
	str	r3, [r4, #236]	@ D.32668, _57->s32OffLineDnrMemAddr
.L159:
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L119:
	mov	r2, r0	@, s32UsingCount
	ldr	r1, .L169+24	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32666,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L134:
	add	r0, r2, #1	@ j, j,
	cmp	r0, lr	@ j, D.32668
	bge	.L142	@,
	add	r1, r6, r0	@ D.32668, s32DnrLockFrmNum, j
	cmp	r1, lr	@ D.32668, D.32668
	bgt	.L150	@,
	cmp	r0, r1	@ j, D.32668
	blt	.L168	@,
.L133:
	add	r3, r4, r0, lsl #4	@ tmp316, D.32667, j,
	mov	r8, r0	@ j, j
	add	r3, r3, #216064	@ tmp317, tmp316,
	add	r3, r3, #360	@ tmp317, tmp317,
	ldr	r3, [r3, #4]	@ _57->stFrameArray[j_173].s32FrameAddr, _57->stFrameArray[j_173].s32FrameAddr
	str	r3, [r4, #236]	@ _57->stFrameArray[j_173].s32FrameAddr, _57->s32OffLineDnrMemAddr
	b	.L140	@
.L167:
	mov	r1, r5	@, s32ImgSize
	mov	r0, r8	@, D.32668
	bl	__aeabi_idiv	@
	mov	r1, r5	@, s32ImgSize
	mov	r6, r0	@ s32DnrLockFrmNum,
	mov	r0, r8	@, D.32668
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addgt	r6, r6, #1	@ s32DnrLockFrmNum, s32DnrLockFrmNum,
	b	.L129	@
.L126:
	ldr	r3, [sp, #40]	@ s32Num, %sfp
	sub	r10, r3, #-536870911	@ D.32665, s32Num,
	ldr	r3, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r2, r3, r10, lsl #3	@ D.32672, VoUsingFrameArray, D.32665,
	ldr	r3, [r3, r10, asl #3]	@ _111->FrameAddr, _111->FrameAddr
	ldr	r2, [r2, #4]	@ _111->FrameSize, _111->FrameSize
	add	r2, r3, r2	@ D.32668, _111->FrameAddr, _111->FrameSize
	b	.L127	@
.L142:
	movw	r3, #1129	@,
	ldr	r2, .L169+12	@,
	ldr	r1, .L169+28	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32666,
	b	.L159	@
.L164:
	ldr	r3, .L169+32	@,
	movw	r2, #991	@,
	ldr	r1, .L169+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32666,
	b	.L159	@
.L148:
	mov	r1, r6	@ D.32668, s32DnrLockFrmNum
	b	.L144	@
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR1+36
	.word	.LC14
	.word	.LC16
	.word	.LC13
	.word	.LC15
	.word	.LC6
	.word	.LC1
	.fnend
	.size	FSP_NoneDnrSwitchToDnrNormCase, .-FSP_NoneDnrSwitchToDnrNormCase
	.align	2
	.type	FSP_NoneDnrSwitchToDnr, %function
FSP_NoneDnrSwitchToDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	cmp	r0, #0	@ InstID
	.pad #532
	sub	sp, sp, #532	@,,
	mov	r3, #0	@ tmp129,
	str	r3, [sp, #12]	@ tmp129, s32UsingNum
	bne	.L191	@,
	ldr	r3, .L192	@ tmp132,
	ldr	r3, [r3]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	movweq	r3, #1321	@,
	beq	.L190	@,
	add	r3, r3, #32768	@ tmp137, pstInst,
	add	ip, sp, #528	@ D.32694,,
	add	r2, sp, #16	@ tmp174,,
	mov	r1, #-2147483648	@ tmp171,
	ldr	r4, [r3, #1876]	@ s32VdhTotalMemUse, pstInst_9->TotalMemUsed
.L175:
	str	r1, [r2]	@ tmp171, MEM[base: _45, offset: 0B]
	add	r2, r2, #8	@ ivtmp.247, ivtmp.247,
	str	r0, [r2, #-4]	@ tmp172, MEM[base: _45, offset: 4B]
	cmp	r2, ip	@ ivtmp.247, D.32694
	bne	.L175	@,
	add	r2, sp, #12	@,,
	add	r1, sp, #16	@ tmp175,,
	mov	r0, #0	@,
	bl	DNR_GetVoUsingFrameInQue	@
	subs	r5, r0, #0	@ s32Ret,
	movwne	r3, #1338	@,
	bne	.L190	@,
	ldr	r1, [sp, #12]	@ D.32692, s32UsingNum
	cmp	r1, #0	@ D.32692,
	ble	.L177	@,
	ldr	r2, [sp, #20]	@ D.32692, VoUsingImage[0].FrameSize
	str	r1, [sp]	@ D.32692,
	cmp	r4, r2	@ s32VdhTotalMemUse, D.32692
	ble	.L178	@,
	mov	r3, r4, asl #1	@ D.32692, s32VdhTotalMemUse,
	movw	r6, #21846	@ tmp149,
	movt	r6, 21845	@ tmp149,
	smull	r6, r7, r3, r6	@ tmp148, D.32692, tmp149
	sub	r3, r7, r3, asr #31	@ D.32692,, D.32692,
	cmp	r2, r3	@ D.32692, D.32692
	blt	.L179	@,
.L178:
	mov	r3, r4	@, s32VdhTotalMemUse
	ldr	r1, .L192+4	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp176,,
	ldr	r2, [sp, #12]	@, s32UsingNum
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L180	@,
.L181:
	mov	r0, #0	@ D.32691,
.L173:
	add	sp, sp, #532	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L179:
	mov	r3, r4	@, s32VdhTotalMemUse
	ldr	r1, .L192+8	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp177,,
	mov	r0, r5	@, s32Ret
	ldr	r2, [sp, #12]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	movwne	r3, #1364	@,
	beq	.L181	@,
.L190:
	ldr	r2, .L192+12	@,
	mov	r0, #31	@,
	ldr	r1, .L192+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32691,
	b	.L173	@
.L177:
	mov	r2, r1	@, D.32692
	mov	r0, #31	@,
	ldr	r1, .L192+20	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp178,,
	mov	r0, r5	@, s32Ret
	ldr	r2, [sp, #12]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L181	@,
	mov	r3, #1376	@,
	b	.L190	@
.L191:
	mov	r0, r3	@, tmp129
	movw	r2, #1315	@,
	ldr	r3, .L192+24	@,
	ldr	r1, .L192+28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32691,
	b	.L173	@
.L180:
	movw	r3, #1353	@,
	b	.L190	@
.L193:
	.align	2
.L192:
	.word	.LANCHOR0
	.word	.LC17
	.word	.LC18
	.word	.LANCHOR1+68
	.word	.LC8
	.word	.LC19
	.word	.LC6
	.word	.LC1
	.fnend
	.size	FSP_NoneDnrSwitchToDnr, .-FSP_NoneDnrSwitchToDnr
	.align	2
	.type	FSP_EnableDnr, %function
FSP_EnableDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	ldr	r5, .L219	@ tmp171,
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ PartitionFlag, PartitionFlag
	ldr	r3, [r5, r0, asl #2]	@ D.32701, s_pstVfmwChan
	ldr	ip, [r3, #236]	@ D.32702, _7->s32OffLineDnrMemAddr
	ldr	r7, [r3, #1608]	@ s32ThrWidth, _7->stSynExtraData.s32DSDThrWidth
	ldr	r8, [r3, #1612]	@ s32ThrHeight, _7->stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.32702
	str	ip, [sp, #8]	@ D.32702, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp134, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _15->s32OffLineDNRMemSize, _15->s32OffLineDNRMemSize
	str	r3, [sp, #16]	@ _15->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #12]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L195	@,
	cmp	r6, #1	@ PartitionFlag,
	beq	.L215	@,
	cmp	r6, #0	@ PartitionFlag,
	mov	r0, r4	@, InstID
	beq	.L216	@,
	bl	DNR_OpenChan	@
.L198:
	ldr	r3, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	add	r1, sp, #24	@ tmp148,,
	mov	r2, #0	@ tmp146,
	str	r7, [sp, #28]	@ s32ThrWidth, stDSDParam.s32ThrWidth
	str	r8, [sp, #32]	@ s32ThrHeight, stDSDParam.s32ThrHeight
	mov	r0, r4	@, InstID
	ldr	r3, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r2, [sp, #36]	@ tmp146, stDSDParam.s32MirrorEn
	str	r2, [sp]	@ tmp146,
	str	r3, [sp, #24]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, stDSDParam.s32DSDenable
	ldmia	r1, {r1, r2, r3}	@ tmp148,,,
	bl	DNR_SetDSDParam	@
	mov	r0, r4	@, InstID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L217	@,
.L202:
	ldr	r1, [r5, r4, asl #2]	@ D.32701, s_pstVfmwChan
	ldr	r5, .L219	@ tmp156,
	add	r1, r1, #217088	@ tmp158, D.32701,
	ldr	r3, [r1, #372]	@ _41->stDnrChanCfg.s32NeedConfigDnrChan, _41->stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r3, #1	@ _41->stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.32700,
	beq	.L218	@,
.L199:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L216:
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L198	@,
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32700,
	b	.L199	@
.L195:
	cmp	r6, #1	@ PartitionFlag,
	bne	.L202	@,
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L202	@,
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32700,
	b	.L199	@
.L218:
	add	r1, r1, #360	@, tmp158,
	mov	r0, r4	@, InstID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@ D.32700
	ldreq	r3, [r5, r4, asl #2]	@ tmp166, s_pstVfmwChan
	addeq	r3, r3, #217088	@ tmp168, tmp166,
	streq	r0, [r3, #372]	@ D.32700, _47->stDnrChanCfg.s32NeedConfigDnrChan
	beq	.L199	@,
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32700,
	b	.L199	@
.L215:
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L198	@,
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32700,
	b	.L199	@
.L217:
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32700,
	b	.L199	@
.L220:
	.align	2
.L219:
	.word	s_pstVfmwChan
	.word	.LANCHOR1+92
	.word	.LC21
	.word	.LC23
	.word	.LC24
	.word	.LC20
	.word	.LC22
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.global	FSP_Init
	.type	FSP_Init, %function
FSP_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #4	@,
	ldr	r4, .L223	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	add	r0, r4, #4	@, tmp110,
	mov	r1, #8	@,
	bl	__memzero	@
	mvn	r2, #0	@ tmp115,
	mov	r3, #0	@ tmp117,
	add	r0, r4, #16	@, tmp110,
	strh	r2, [r4, #6]	@ movhi	@ tmp115, s_FspVoQue[0].history
	mov	r1, #16	@,
	str	r3, [r4, #12]	@ tmp117, g_IsFrameIntfValid
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L224:
	.align	2
.L223:
	.word	.LANCHOR0
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	FSP_ConfigAttribute
	.type	FSP_ConfigAttribute, %function
FSP_ConfigAttribute:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ InstID, InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L230	@,
	ldr	r2, .L232	@ tmp119,
	ldr	r2, [r2]	@ D.32716, s_pFspInst
	ldr	ip, [r2, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	ip, #1	@ _6->eFspInstState,
	bne	.L231	@,
	ldrb	r1, [r1]	@ zero_extendqisi2	@ D.32718, pstAttr_9(D)->s8LowBufEnable
	mov	r0, r3	@ D.32715, InstID
	strb	r1, [r2, #1]	@ D.32718, _6->s8LowBufEnable
	ldmfd	sp!, {r4, pc}	@
.L231:
	ldr	r3, .L232+4	@,
	mov	r2, #234	@,
	ldr	r1, .L232+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32715,
	ldmfd	sp!, {r4, pc}	@
.L230:
	ldr	r3, .L232+12	@,
	mov	r2, #233	@,
	ldr	r1, .L232+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32715,
	ldmfd	sp!, {r4, pc}	@
.L233:
	.align	2
.L232:
	.word	.LANCHOR0
	.word	.LC25
	.word	.LC1
	.word	.LC0
	.fnend
	.size	FSP_ConfigAttribute, .-FSP_ConfigAttribute
	.align	2
	.global	FSP_ClearContext
	.type	FSP_ClearContext, %function
FSP_ClearContext:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r0, #0	@ pFspInst, pFspInst
	.pad #24
	sub	sp, sp, #24	@,,
	beq	.L239	@,
	add	r6, r4, #40	@ D.32731, pFspInst,
	ldrb	r5, [r4]	@ zero_extendqisi2	@ s8TmpInstID, pFspInst_4(D)->s32InstID
	mov	r2, #20	@,
	add	r0, sp, #4	@ tmp139,,
	mov	r1, r6	@, D.32731
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, pFspInst_4(D)->s8LowBufEnable
	ldr	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_4(D)->eFspInstState
	bl	memcpy	@
	mov	r0, r4	@, pFspInst
	movw	r1, #34664	@,
	bl	__memzero	@
	ldr	r3, .L241	@ tmp129,
	sxtb	r2, r5	@ D.32732, s8TmpInstID
	strb	r8, [r4, #1]	@ s8TmpLowBufEnable, pFspInst_4(D)->s8LowBufEnable
	strb	r5, [r4]	@ s8TmpInstID, pFspInst_4(D)->s32InstID
	ldr	r3, [r3, r2, asl #2]	@ tmp131, s_pstVfmwChan
	str	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_4(D)->eFspInstState
	ldr	r3, [r3, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@ D.32730,
	beq	.L240	@,
.L236:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L240:
	add	r1, sp, #4	@ tmp140,,
	mov	r0, r6	@, D.32731
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, #0	@ D.32730,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L239:
	ldr	r3, .L241+4	@,
	mov	r2, #254	@,
	ldr	r1, .L241+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32730,
	b	.L236	@
.L242:
	.align	2
.L241:
	.word	s_pstVfmwChan
	.word	.LC26
	.word	.LC1
	.fnend
	.size	FSP_ClearContext, .-FSP_ClearContext
	.align	2
	.global	FSP_EnableInstance
	.type	FSP_EnableInstance, %function
FSP_EnableInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L249	@,
	ldr	r3, .L251	@ tmp117,
	ldr	r5, [r3]	@ D.32744, s_pFspInst
	cmp	r5, #0	@ D.32744,
	beq	.L250	@,
	ldr	r4, [r5, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	r4, #0	@ _6->eFspInstState,
	bne	.L247	@,
	mov	r0, r5	@, D.32744
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp121,
	mov	r0, r4	@ D.32743, _6->eFspInstState
	str	r3, [r5, #4]	@ tmp121, _6->eFspInstState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L247:
	mvn	r0, #0	@ D.32743,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L249:
	ldr	r3, .L251+4	@,
	movw	r2, #282	@,
	ldr	r1, .L251+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32743,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L250:
	ldr	r3, .L251+12	@,
	movw	r2, #283	@,
	ldr	r1, .L251+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32743,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L252:
	.align	2
.L251:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_EnableInstance, .-FSP_EnableInstance
	.align	2
	.global	FSP_DisableInstance
	.type	FSP_DisableInstance, %function
FSP_DisableInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ InstID, InstID
	bne	.L257	@,
	ldr	r3, .L259	@ tmp115,
	ldr	r3, [r3]	@ D.32750, s_pFspInst
	cmp	r3, #0	@ D.32750,
	beq	.L258	@,
	ldr	r2, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r2, #1	@ _5->eFspInstState,
	streq	r1, [r3, #4]	@ InstID, _5->eFspInstState
	bx	lr	@
.L257:
	ldr	r3, .L259+4	@,
	movw	r2, #303	@,
	ldr	r1, .L259+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L258:
	ldr	r3, .L259+12	@,
	mov	r2, #304	@,
	ldr	r1, .L259+8	@,
	b	dprint_vfmw	@
.L260:
	.align	2
.L259:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L269	@ tmp112,
	ldr	r3, [r3]	@ D.32754, s_pFspInst
	cmp	r3, #0	@ D.32754,
	bxeq	lr	@
	ldr	r3, [r3, #4]	@ _11->eFspInstState, _11->eFspInstState
	cmp	r3, #0	@ _11->eFspInstState,
	bxeq	lr	@
	mov	r0, #0	@,
	b	FSP_DisableInstance	@
.L270:
	.align	2
.L269:
	.word	.LANCHOR0
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bne	.L293	@,
	ldr	r6, .L297	@ tmp144,
	ldr	r8, [r6]	@ D.32770, s_pFspInst
	cmp	r8, #0	@ D.32770,
	beq	.L294	@,
	add	r4, r8, #27648	@ ivtmp.274, D.32770,
	add	r5, r8, #30976	@ D.32777, D.32770,
	add	r4, r4, #150	@ ivtmp.274, ivtmp.274,
	add	r5, r5, #150	@ D.32777, D.32777,
	mov	r7, r6	@ tmp145, tmp144
	b	.L281	@
.L279:
	mov	r2, #0	@,
	mov	r0, r2	@,
	blx	r3	@ D.32775
.L278:
	ldrsb	r3, [r4]	@ MEM[base: _34, offset: 0B], MEM[base: _34, offset: 0B]
	cmp	r3, #0	@ MEM[base: _34, offset: 0B],
	beq	.L276	@,
	ldr	r3, [r6, #24]	@ D.32774, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #10]	@ D.32773, MEM[base: _34, offset: 10B]
	cmp	r3, #0	@ D.32774,
	beq	.L295	@,
	mov	r0, #0	@,
	blx	r3	@ D.32774
.L276:
	add	r4, r4, #52	@ ivtmp.274, ivtmp.274,
	cmp	r4, r5	@ ivtmp.274, D.32777
	beq	.L296	@,
.L281:
	ldr	r1, [r4, #10]	@ D.32771, MEM[base: _34, offset: 10B]
	cmp	r1, #0	@ D.32771,
	beq	.L276	@,
	ldr	r3, [r6, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L276	@,
	ldrsb	r3, [r4, #-2]	@ MEM[base: _34, offset: 4294967294B], MEM[base: _34, offset: 4294967294B]
	cmp	r3, #0	@ MEM[base: _34, offset: 4294967294B],
	beq	.L278	@,
	ldr	r3, [r7, #28]	@ D.32775, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.32775,
	bne	.L279	@,
	mov	r0, r3	@, D.32775
	ldr	r1, .L297+4	@,
	bl	dprint_vfmw	@
	b	.L278	@
.L295:
	mov	r0, r3	@, D.32774
	ldr	r1, .L297+8	@,
	add	r4, r4, #52	@ ivtmp.274, ivtmp.274,
	bl	dprint_vfmw	@
	cmp	r4, r5	@ ivtmp.274, D.32777
	bne	.L281	@,
.L296:
	mov	r0, r8	@, D.32770
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.32769,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L293:
	ldr	r3, .L297+12	@,
	movw	r2, #325	@,
	ldr	r1, .L297+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32769,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L294:
	ldr	r3, .L297+20	@,
	movw	r2, #326	@,
	ldr	r1, .L297+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32769,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L298:
	.align	2
.L297:
	.word	.LANCHOR0
	.word	.LC27
	.word	.LC28
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L331	@,
	ldr	r8, .L335	@ tmp181,
	ldr	r6, [r8]	@ D.32811, s_pFspInst
	cmp	r6, #0	@ D.32811,
	beq	.L332	@,
	mov	r1, #27648	@,
	add	r0, r6, #96	@, D.32811,
	bl	__memzero	@
	ldrsb	r3, [r6, #10]	@ _14->s32DecFsNum, _14->s32DecFsNum
	cmp	r3, #0	@ _14->s32DecFsNum,
	addgt	r4, r6, #27648	@ ivtmp.302, D.32811,
	addgt	r4, r4, #192	@ ivtmp.302, ivtmp.302,
	movgt	r7, r8	@ tmp184, tmp181
	ble	.L313	@,
.L312:
	ldr	r1, [r4, #-32]	@ D.32808, MEM[base: _74, offset: 4294967264B]
	cmp	r1, #0	@ D.32808,
	beq	.L307	@,
	ldr	r3, [r8, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L307	@,
	ldrsb	r3, [r4, #-44]	@ MEM[base: _74, offset: 4294967252B], MEM[base: _74, offset: 4294967252B]
	cmp	r3, #0	@ MEM[base: _74, offset: 4294967252B],
	beq	.L309	@,
	ldr	r3, [r7, #28]	@ D.32815, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.32815,
	beq	.L333	@,
	mov	r2, #0	@,
	mov	r0, r2	@,
	blx	r3	@ D.32815
.L309:
	ldrsb	r3, [r4, #-42]	@ MEM[base: _74, offset: 4294967254B], MEM[base: _74, offset: 4294967254B]
	cmp	r3, #0	@ MEM[base: _74, offset: 4294967254B],
	beq	.L307	@,
	ldr	r3, [r8, #24]	@ D.32814, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ D.32813, MEM[base: _74, offset: 4294967264B]
	cmp	r3, #0	@ D.32814,
	beq	.L334	@,
	mov	r0, #0	@,
	blx	r3	@ D.32814
.L307:
	mov	r3, #0	@ tmp162,
	strb	r3, [r4, #-44]	@ tmp162, MEM[base: _74, offset: 4294967252B]
	strb	r3, [r4, #-42]	@ tmp162, MEM[base: _74, offset: 4294967254B]
	add	r5, r5, #1	@ i, i,
	str	r3, [r4], #52	@ tmp162, MEM[base: _74, offset: 0B]
	ldrsb	r3, [r6, #10]	@ D.32808, _14->s32DecFsNum
	cmp	r3, r5	@ D.32808, i
	bgt	.L312	@,
.L313:
	ldrsb	r0, [r6, #11]	@ D.32812, _14->s32DispFsNum
	cmp	r0, #0	@ D.32812,
	addgt	r3, r6, #30976	@ ivtmp.290, D.32811,
	movgt	r2, #0	@ i,
	addgt	r3, r3, #148	@ ivtmp.290, ivtmp.290,
	movgt	r1, r2	@ tmp183, i
	ble	.L305	@,
.L316:
	add	r2, r2, #1	@ i, i,
	strb	r1, [r3]	@ tmp183, MEM[base: _2, offset: 0B]
	cmp	r0, r2	@ D.32812, i
	strb	r1, [r3, #2]	@ tmp183, MEM[base: _2, offset: 2B]
	str	r1, [r3, #44]	@ tmp183, MEM[base: _2, offset: 44B]
	add	r3, r3, #52	@ ivtmp.290, ivtmp.290,
	bne	.L316	@,
.L305:
	ldrsb	r2, [r6, #13]	@ D.32812, _14->s32PmvNum
	cmp	r2, #0	@ D.32812,
	addgt	r2, r2, #13	@ D.32816, D.32812,
	addgt	r3, r6, #13	@ ivtmp.281, D.32811,
	addgt	r2, r6, r2	@ D.32817, D.32811, D.32816
	movgt	r1, #0	@ tmp182,
	ble	.L315	@,
.L317:
	strb	r1, [r3, #1]!	@ tmp182, MEM[base: _27, offset: 0B]
	cmp	r3, r2	@ ivtmp.281, D.32817
	bne	.L317	@,
.L315:
	mov	r0, #0	@ tmp175,
	str	r0, [r6, #36]	@ tmp175, _14->u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L333:
	mov	r0, r3	@, D.32815
	ldr	r1, .L335+4	@,
	bl	dprint_vfmw	@
	b	.L309	@
.L334:
	mov	r0, r3	@, D.32814
	ldr	r1, .L335+8	@,
	bl	dprint_vfmw	@
	b	.L307	@
.L331:
	ldr	r3, .L335+12	@,
	movw	r2, #379	@,
	ldr	r1, .L335+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32809,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L332:
	ldr	r3, .L335+20	@,
	mov	r2, #380	@,
	ldr	r1, .L335+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32809,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L336:
	.align	2
.L335:
	.word	.LANCHOR0
	.word	.LC27
	.word	.LC28
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0	@ InstID, InstID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L351	@,
	cmp	r1, #0	@ pstFspInstCfg,
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	beq	.L352	@,
	ldr	r2, .L353	@ tmp124,
	ldr	r3, [r2]	@ D.32822, s_pFspInst
	cmp	r3, #0	@ D.32822,
	beq	.L341	@,
	ldr	r3, [r3, #4]	@ _9->eFspInstState, _9->eFspInstState
	cmp	r3, #1	@ _9->eFspInstState,
	bne	.L341	@,
	ldr	r3, .L353+4	@ tmp131,
	strb	ip, [r1]	@ InstID, pstFspInstCfg_7(D)->s32DispLoopEnable
	ldr	r5, [r2]	@ pstInst, s_pFspInst
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L343	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L343:
	mov	r1, r4	@, pstFspInstCfg
	add	r0, r5, #60	@, pstInst,
	mov	r2, #36	@,
	bl	memcpy	@
	mov	r0, #0	@ D.32821,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L341:
	ldr	r3, .L353+8	@,
	mov	r2, #488	@,
	ldr	r1, .L353+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32821,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L351:
	ldr	r3, .L353+16	@,
	movw	r2, #485	@,
	ldr	r1, .L353+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32821,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L352:
	ldr	r3, .L353+20	@,
	movw	r2, #486	@,
	ldr	r1, .L353+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32821,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L354:
	.align	2
.L353:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LC30
	.word	.LC1
	.word	.LC0
	.word	.LC29
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #556
	sub	sp, sp, #556	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r5, r1	@ MemPhyAddr, MemPhyAddr
	add	r0, sp, #136	@ tmp1091,,
	mov	r1, #416	@,
	mov	r6, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L442	@,
	ldr	r3, .L460	@ tmp1092,
	ldr	r9, [r3]	@ D.33009, s_pFspInst
	cmp	r9, #0	@ D.33009,
	beq	.L443	@,
	add	r3, r9, #32768	@ tmp1029, D.33009,
	mov	r0, r4	@, InstID
	str	r3, [sp, #92]	@ tmp1029, %sfp
	str	r5, [r3, #1880]	@ MemPhyAddr, _23->MemAddr
	str	r6, [r3, #1884]	@ MemSize, _23->MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	mov	ip, r0	@ eChanCapLevel,
	bhi	.L359	@,
	ldr	r2, .L460+4	@ tmp438,
	mov	r3, r0, asl #5	@ tmp441, eChanCapLevel,
	sub	r3, r3, r0, asl #2	@ tmp442, tmp441, eChanCapLevel,
	ldr	r1, [r9, #72]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	add	lr, r2, r3	@ tmp443, tmp438, tmp442
	ldr	r0, [r9, #76]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	r3, [r2, r3]	@ D.33010, CapItem
	ldr	lr, [lr, #4]	@ D.33010, CapItem
	mul	r7, r0, r1	@ D.33010, D.33010, D.33010
	mul	r2, lr, r3	@ D.33010, D.33010, D.33010
	cmp	ip, #25	@ eChanCapLevel,
	cmpne	r7, r2	@, D.33010, D.33010
	ble	.L361	@,
	ldrsb	r2, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec
	cmp	r2, #1	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec,
	beq	.L361	@,
	str	r0, [sp, #8]	@ D.33010,
	mov	r2, ip	@, eChanCapLevel
	str	r1, [sp, #4]	@ D.33010,
	mov	r0, r4	@, InstID
	str	lr, [sp]	@ D.33010,
	ldr	r1, .L460+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
.L435:
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L359:
	ldrsb	r3, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec
	cmp	r3, #1	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec,
	beq	.L361	@,
	mov	r2, ip	@, eChanCapLevel
	mov	r0, r4	@, InstID
	ldr	r1, .L460+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L361:
	ldr	r2, [r9, #92]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.33010,
	ldreqb	r3, [r9, #60]	@ zero_extendqisi2	@ D.33008, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	beq	.L363	@,
	ldr	r1, [r9, #88]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.33008, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	cmp	r1, #0	@ D.33010,
	bne	.L444	@,
.L363:
	ldr	r1, .L460+16	@ tmp469,
	sxtb	r3, r3	@ D.33016, D.33008
	ldrsb	r2, [r9, #65]	@ D.33006, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	mov	r4, #4	@ D.33016,
	ldr	ip, [r1, #36]	@ D.33013, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	smlabb	r4, r4, r3, r2	@ MinFsNum, D.33016, D.33016, D.33006
	cmp	ip, #0	@ D.33013,
	beq	.L420	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	mov	r1, #64	@ tmp472,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	mov	r0, #0	@ tmp474,
	str	r1, [sp, #20]	@ tmp472,
	add	lr, sp, #136	@ tmp1096,,
	str	r0, [sp, #12]	@ tmp474,
	mov	r7, #40	@ tmp476,
	str	lr, [sp, #16]	@ tmp1096,
	mov	r1, r6	@, MemSize
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec
	mov	r0, r5	@, MemPhyAddr
	stmib	sp, {r7, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.33013
	subs	r2, r0, #0	@ Ret,
	bne	.L365	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _23->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ D.33010, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, D.33010
	bgt	.L367	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	strb	r2, [r9, #11]	@ Ret, _23->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable,
	strb	r2, [r9, #12]	@ Ret, _23->s32TfFsNum
	bne	.L368	@,
	ldrsb	r3, [r9, #1]	@ _23->s8LowBufEnable, _23->s8LowBufEnable
	cmp	r3, #0	@ _23->s8LowBufEnable,
	beq	.L369	@,
	ldr	r3, .L460+20	@ tmp487,
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _77->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _77->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _77->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L370	@,
	ldrsb	r3, [r9, #65]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r3, #4	@ D.33010, D.33010,
	cmp	r3, r2	@ D.33010, MemArrange.ValidFrameNum
	movge	r3, r2	@ D.33010, MemArrange.ValidFrameNum
	uxtb	r3, r3	@ D.33008, D.33010
	strb	r3, [r9, #10]	@ D.33008, _23->s32DecFsNum
	b	.L371	@
.L368:
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.33008, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	strb	r3, [r9, #10]	@ D.33008, _23->s32DecFsNum
.L371:
	sxtb	r4, r3	@ D.33010, D.33008
	ldr	r3, [sp, #136]	@ D.33006, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.33006, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.417,,
	str	r9, [sp, #128]	@ D.33009, %sfp
	str	r3, [sp, #72]	@ D.33006, %sfp
	ldr	r3, [sp, #92]	@ tmp1029, %sfp
	str	r2, [sp, #80]	@ D.33006, %sfp
	ldr	r0, [r1, #-408]!	@ D.33010, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.33006, _23->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.33010, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.33006, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.417, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.33010, %sfp
	ldr	r2, [sp, #404]	@ D.33010, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.33006, %sfp
	ldr	r3, [r9, #76]	@ D.33006, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.33010, %sfp
	ldr	r2, [sp, #408]	@ D.33010, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.33006, %sfp
	mov	r3, r9	@ ivtmp.415, D.33009
	str	r0, [sp, #120]	@ D.33010, %sfp
	str	r2, [sp, #116]	@ D.33010, %sfp
	str	r9, [sp, #132]	@ ivtmp.379, %sfp
	str	r4, [sp, #104]	@ D.33010, %sfp
	b	.L375	@
.L445:
	ldr	r2, [sp, #84]	@ D.33007, %sfp
	str	r1, [r2]	@ i, MEM[base: _573, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.417, %sfp
	ldr	r0, [r2]	@ D.33010, MEM[base: _574, offset: 0B]
	ldr	r2, [sp, #56]	@ D.33007, %sfp
	str	r0, [r10]	@ D.33010, MEM[base: _576, offset: 0B]
	ldr	r0, [sp, #72]	@ D.33006, %sfp
	str	r0, [r9]	@ D.33006, MEM[base: _578, offset: 0B]
	ldr	r0, [sp, #96]	@ D.33006, %sfp
	str	r0, [r8]	@ D.33006, MEM[base: _580, offset: 0B]
	ldr	r0, [sp, #100]	@ D.33006, %sfp
	str	r0, [r7]	@ D.33006, MEM[base: _582, offset: 0B]
	ldr	r0, [sp, #108]	@ D.33010, %sfp
	str	r0, [r6]	@ D.33010, MEM[base: _584, offset: 0B]
	ldr	r0, [sp, #112]	@ D.33010, %sfp
	str	r0, [r5]	@ D.33010, MEM[base: _586, offset: 0B]
	ldr	r0, [sp, #116]	@ D.33010, %sfp
	str	r0, [r4]	@ D.33010, MEM[base: _588, offset: 0B]
	mov	r0, #0	@ tmp1378,
	strb	r0, [lr]	@ tmp1378, MEM[base: _590, offset: 0B]
	strb	r0, [ip]	@ tmp1377, MEM[base: _592, offset: 0B]
	strb	r0, [r2]	@ tmp1376, MEM[base: _594, offset: 0B]
	ldr	r2, [sp, #60]	@ D.33007, %sfp
	ldr	r0, [sp, #80]	@ D.33006, %sfp
	str	r0, [r2]	@ D.33006,* D.33007
.L373:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.417, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.415, ivtmp.415,
	add	r2, r2, #4	@ ivtmp.417, ivtmp.417,
	str	r2, [sp, #76]	@ ivtmp.417, %sfp
	beq	.L374	@,
	ldr	r2, [sp, #92]	@ tmp1029, %sfp
	ldr	r2, [r2, #1872]	@ D.33006, _23->ImgSlotLen
	str	r2, [sp, #80]	@ D.33006, %sfp
.L375:
	add	r2, r3, #27648	@ D.33007, ivtmp.415,
	mov	r0, r2	@ D.33007, D.33007
	add	r2, r2, #152	@ D.33007, D.33007,
	str	r2, [sp, #84]	@ D.33007, %sfp
	add	r10, r0, #160	@ D.33007, D.33007,
	ldr	r2, [sp, #104]	@ D.33010, %sfp
	add	r9, r0, #168	@ D.33007, D.33007,
	add	r8, r0, #172	@ D.33007, D.33007,
	add	r7, r0, #176	@ D.33007, D.33007,
	cmp	r2, r1	@ D.33010, i
	add	r2, r0, #160	@ D.33007, D.33007,
	str	r2, [sp, #88]	@ D.33007, %sfp
	add	r2, r0, #168	@ D.33007, D.33007,
	str	r2, [sp, #24]	@ D.33007, %sfp
	add	r2, r0, #172	@ D.33007, D.33007,
	str	r2, [sp, #28]	@ D.33007, %sfp
	add	r2, r0, #176	@ D.33007, D.33007,
	str	r2, [sp, #32]	@ D.33007, %sfp
	add	r2, r0, #180	@ D.33007, D.33007,
	str	r2, [sp, #36]	@ D.33007, %sfp
	add	r2, r0, #184	@ D.33007, D.33007,
	str	r2, [sp, #40]	@ D.33007, %sfp
	add	r2, r0, #188	@ D.33007, D.33007,
	str	r2, [sp, #44]	@ D.33007, %sfp
	add	r2, r0, #148	@ D.33007, D.33007,
	str	r2, [sp, #48]	@ D.33007, %sfp
	add	r2, r0, #149	@ D.33007, D.33007,
	str	r2, [sp, #52]	@ D.33007, %sfp
	add	r2, r0, #150	@ D.33007, D.33007,
	str	r2, [sp, #56]	@ D.33007, %sfp
	add	r2, r0, #196	@ D.33007, D.33007,
	str	r2, [sp, #60]	@ D.33007, %sfp
	add	r2, r0, #152	@ D.33007, D.33007,
	str	r2, [sp, #64]	@ D.33007, %sfp
	add	r2, r0, #150	@ D.33007, D.33007,
	str	r2, [sp, #68]	@ D.33007, %sfp
	add	r2, r0, #196	@ D.33007, D.33007,
	add	r6, r0, #180	@ D.33007, D.33007,
	add	r5, r0, #184	@ D.33007, D.33007,
	add	r4, r0, #188	@ D.33007, D.33007,
	add	lr, r0, #148	@ D.33007, D.33007,
	add	ip, r0, #149	@ D.33007, D.33007,
	mov	r0, r2	@ D.33007, D.33007
	bgt	.L445	@,
	ldr	r2, [sp, #64]	@ D.33007, %sfp
	mov	fp, #0	@ tmp1375,
	str	fp, [r2]	@ tmp1375, MEM[base: _598, offset: 0B]
	ldr	r2, [sp, #120]	@ D.33010, %sfp
	str	r2, [r10]	@ D.33010, MEM[base: _600, offset: 0B]
	ldr	r2, [sp, #72]	@ D.33006, %sfp
	str	r2, [r9]	@ D.33006, MEM[base: _602, offset: 0B]
	ldr	r2, [sp, #96]	@ D.33006, %sfp
	str	r2, [r8]	@ D.33006, MEM[base: _604, offset: 0B]
	ldr	r2, [sp, #100]	@ D.33006, %sfp
	str	r2, [r7]	@ D.33006, MEM[base: _606, offset: 0B]
	ldr	r2, [sp, #108]	@ D.33010, %sfp
	str	r2, [r6]	@ D.33010, MEM[base: _608, offset: 0B]
	ldr	r2, [sp, #112]	@ D.33010, %sfp
	str	r2, [r5]	@ D.33010, MEM[base: _610, offset: 0B]
	ldr	r2, [sp, #116]	@ D.33010, %sfp
	str	r2, [r4]	@ D.33010, MEM[base: _612, offset: 0B]
	mov	r2, r0	@ D.33007, D.33007
	strb	fp, [lr]	@ tmp1374, MEM[base: _614, offset: 0B]
	ldr	r0, [sp, #80]	@ D.33006, %sfp
	strb	fp, [ip]	@ tmp1373, MEM[base: _616, offset: 0B]
	ldr	ip, [sp, #68]	@ D.33007, %sfp
	strb	fp, [ip]	@ tmp1371, MEM[base: _618, offset: 0B]
	str	r0, [r2]	@ D.33006,* D.33007
	b	.L373	@
.L374:
	ldr	r9, [sp, #128]	@ D.33009, %sfp
	mov	r3, #1	@ tmp567,
	ldr	r4, [sp, #104]	@ D.33010, %sfp
	add	r1, sp, #400	@,,
	ldr	r5, [sp, #92]	@ tmp1029, %sfp
	mov	r0, #0	@ tmp571,
	ldr	r6, [sp, #72]	@ D.33006, %sfp
	strb	r3, [r9, #12]	@ tmp567, _23->s32TfFsNum
	add	r3, sp, #552	@ tmp1182,,
	add	r3, r3, r4, lsl #2	@ tmp575, tmp1182, D.33010,
	str	r0, [r5, #1688]	@ tmp571, _23->stTfFs[0].PhyFsID
	str	r6, [r5, #1704]	@ D.33006, _23->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.33006, %sfp
	ldr	ip, [r3, #-408]	@ tmp577, MemArrange.FrameAddr
	ldmia	r1, {r1, r2, r3}	@,,,
	str	r6, [r5, #1708]	@ D.33006, _23->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.33006, %sfp
	str	ip, [r5, #1696]	@ tmp577, _23->stTfFs[0].PhyAddr
	str	r1, [r5, #1716]	@ MemArrange.ChromOffset, _23->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.33006, _23->stTfFs[0].FsHeight
	str	r2, [r5, #1720]	@ MemArrange.LumaPixelOffset, _23->stTfFs[0].LumaPixelOffset
	str	r3, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _23->stTfFs[0].ChromaPixelOffset
	strb	r0, [r5, #1684]	@ tmp571, _23->stTfFs[0].IsDecRef
	strb	r0, [r5, #1685]	@ tmp571, _23->stTfFs[0].IsTfRef
	strb	r0, [r5, #1686]	@ tmp571, _23->stTfFs[0].DispState
	ldrb	r2, [r9, #60]	@ zero_extendqisi2	@ D.33008, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	ldr	lr, [sp, #132]	@ ivtmp.379, %sfp
	cmp	r2, r0	@ D.33008,
	streqb	r2, [r9, #11]	@ D.33008, _23->s32DispFsNum
	streq	r2, [sp, #44]	@ D.33008, %sfp
	beq	.L377	@,
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r1, [r9, #67]	@ D.33012, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDispFsNum
	rsb	r2, r4, r2	@ D.33010, D.33010, MemArrange.ValidFrameNum
	sub	r2, r2, #1	@ D.33010, D.33010,
	cmp	r2, #25	@ D.33010,
	movge	r2, #25	@ D.33010,
	uxtb	r2, r2	@ D.33008, D.33010
	strb	r2, [r9, #11]	@ D.33008, _23->s32DispFsNum
	sxtb	r3, r2	@ D.33010, D.33008
	str	r3, [sp, #44]	@ D.33010, %sfp
	cmp	r3, r1	@ D.33010, D.33012
	blt	.L446	@,
.L377:
	ldr	r3, [sp, #400]	@ D.33010, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.33006, MemArrange.VahbStride
	mov	r0, ip	@ tmp1040, i
	str	r3, [sp, #96]	@ D.33010, %sfp
	ldr	r3, [sp, #404]	@ D.33010, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.33006, %sfp
	str	r3, [sp, #100]	@ D.33010, %sfp
	ldr	r3, [sp, #408]	@ D.33010, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.33010, %sfp
	mov	r3, #1	@ D.33008,
	mov	r2, r3	@ D.33008, D.33008
	mov	r3, r4	@ D.33010, D.33010
	b	.L412	@
.L448:
	ldr	r3, [sp, #48]	@ D.33007, %sfp
	ldr	r2, [sp, #56]	@ D.33007, %sfp
	str	ip, [r3]	@ i, MEM[base: _317, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp625, %sfp
	ldr	r3, [r3, #-408]	@ D.33010, MemArrange.FrameAddr
	str	r3, [r2]	@ D.33010, MEM[base: _300, offset: 0B]
	ldr	r3, [sp, #60]	@ D.33007, %sfp
	ldr	r2, [sp, #72]	@ D.33006, %sfp
	str	r2, [r3]	@ D.33006, MEM[base: _266, offset: 0B]
	ldr	r2, [sp, #64]	@ D.33007, %sfp
	ldr	r3, [r9, #88]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.33010, MEM[base: _15, offset: 0B]
	ldr	r2, [sp, #96]	@ D.33010, %sfp
	ldr	r3, [r9, #92]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.33010, MEM[base: _10, offset: 0B]
	str	r2, [r7]	@ D.33010, MEM[base: _5, offset: 0B]
	ldr	r2, [sp, #100]	@ D.33010, %sfp
	str	r2, [r6]	@ D.33010, MEM[base: _500, offset: 0B]
	ldr	r2, [sp, #104]	@ D.33010, %sfp
	str	r2, [r5]	@ D.33010, MEM[base: _548, offset: 0B]
	strb	r0, [r4]	@ tmp1040, MEM[base: _539, offset: 0B]
	strb	r0, [fp]	@ tmp1040, MEM[base: _526, offset: 0B]
	strb	r0, [r10]	@ tmp1040, MEM[base: _520, offset: 0B]
.L379:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.33006, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.379, ivtmp.379,
	str	r3, [sp, #72]	@ D.33006, %sfp
	beq	.L447	@,
	ldrsb	r1, [r9, #11]	@ D.33010, _23->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.33008, _23->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.33010, _23->s32DecFsNum
	str	r1, [sp, #44]	@ D.33010, %sfp
.L412:
	add	r1, ip, r3	@ tmp622, i, D.33010
	sxtab	r3, r3, r2	@ tmp658, D.33010, D.33008
	sxtab	r2, r1, r2	@ tmp623, tmp622, D.33008
	add	r1, lr, #30976	@ D.33007, ivtmp.379,
	mov	r4, r1	@ D.33007, D.33007
	add	r1, r1, #152	@ D.33007, D.33007,
	str	r1, [sp, #48]	@ D.33007, %sfp
	add	r1, sp, #552	@ tmp1205,,
	add	r3, r1, r3, lsl #2	@ tmp660, tmp1209, tmp658,
	str	r3, [sp, #76]	@ tmp660, %sfp
	add	r3, r4, #160	@ D.33007, D.33007,
	str	r3, [sp, #56]	@ D.33007, %sfp
	add	r3, r4, #168	@ D.33007, D.33007,
	str	r3, [sp, #60]	@ D.33007, %sfp
	add	r3, r4, #160	@ D.33007, D.33007,
	str	r3, [sp, #80]	@ D.33007, %sfp
	add	r3, r4, #168	@ D.33007, D.33007,
	str	r3, [sp, #84]	@ D.33007, %sfp
	ldr	r3, [sp, #44]	@ D.33010, %sfp
	add	r2, r1, r2, lsl #2	@ tmp625, tmp1205, tmp623,
	add	r10, r4, #150	@ D.33007, D.33007,
	str	r2, [sp, #52]	@ tmp625, %sfp
	cmp	r3, ip	@ D.33010, i
	add	r3, r4, #176	@ D.33007, D.33007,
	str	r3, [sp, #44]	@ D.33007, %sfp
	add	r3, r4, #180	@ D.33007, D.33007,
	str	r3, [sp, #24]	@ D.33007, %sfp
	add	r3, r4, #184	@ D.33007, D.33007,
	str	r3, [sp, #28]	@ D.33007, %sfp
	add	r3, r4, #188	@ D.33007, D.33007,
	str	r3, [sp, #32]	@ D.33007, %sfp
	add	r3, r4, #148	@ D.33007, D.33007,
	add	r2, r4, #152	@ D.33007, D.33007,
	add	fp, r4, #149	@ D.33007, D.33007,
	str	r2, [sp, #68]	@ D.33007, %sfp
	add	r8, r4, #176	@ D.33007, D.33007,
	add	r2, r4, #172	@ D.33007, D.33007,
	add	r7, r4, #180	@ D.33007, D.33007,
	add	r6, r4, #184	@ D.33007, D.33007,
	add	r5, r4, #188	@ D.33007, D.33007,
	str	r2, [sp, #64]	@ D.33007, %sfp
	mov	r4, r3	@ D.33007, D.33007
	str	r2, [sp, #88]	@ D.33007, %sfp
	str	r3, [sp, #36]	@ D.33007, %sfp
	str	r10, [sp, #40]	@ D.33007, %sfp
	bgt	.L448	@,
	ldr	r3, [sp, #68]	@ D.33007, %sfp
	ldr	r2, [sp, #72]	@ D.33006, %sfp
	str	r0, [r3]	@ tmp1040, MEM[base: _514, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp660, %sfp
	ldr	r10, [r3, #-408]	@ D.33010, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.33007, %sfp
	str	r10, [r3]	@ D.33010, MEM[base: _510, offset: 0B]
	ldr	r3, [sp, #84]	@ D.33007, %sfp
	str	r2, [r3]	@ D.33006, MEM[base: _503, offset: 0B]
	ldr	r3, [sp, #88]	@ D.33007, %sfp
	ldr	r10, [r9, #88]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.33010, MEM[base: _553, offset: 0B]
	ldr	r3, [r9, #92]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.33010, MEM[base: _555, offset: 0B]
	ldr	r3, [sp, #96]	@ D.33010, %sfp
	str	r3, [r7]	@ D.33010, MEM[base: _557, offset: 0B]
	ldr	r3, [sp, #100]	@ D.33010, %sfp
	str	r3, [r6]	@ D.33010, MEM[base: _559, offset: 0B]
	ldr	r3, [sp, #104]	@ D.33010, %sfp
	str	r3, [r5]	@ D.33010, MEM[base: _561, offset: 0B]
	ldr	r3, [sp, #40]	@ D.33007, %sfp
	strb	r0, [r4]	@ tmp1040, MEM[base: _563, offset: 0B]
	strb	r0, [fp]	@ tmp1040, MEM[base: _565, offset: 0B]
	strb	r0, [r3]	@ tmp1040, MEM[base: _567, offset: 0B]
	b	.L379	@
.L447:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.351,,
	add	r0, r9, #34560	@ ivtmp.357, D.33009,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.361, D.33009,
	mov	lr, r2	@ tmp1039, i
	movge	r3, #20	@ D.33010,
	uxtb	r3, r3	@ D.33008, D.33010
	strb	r3, [r9, #13]	@ D.33008, _23->s32PmvNum
	b	.L384	@
.L449:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.33008, _23->s32PmvNum
.L384:
	sxtb	r3, r3	@ D.33010, D.33008
	add	ip, ip, #4	@ ivtmp.351, ivtmp.351,
	cmp	r3, r2	@ D.33010, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.357, ivtmp.357,
	add	r1, r1, #1	@ ivtmp.361, ivtmp.361,
	ldrgt	r3, [ip, #-4]	@ D.33010, MEM[base: _387, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.33010, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.33010,
	strb	lr, [r1, #-1]	@ tmp1039,
	bne	.L449	@,
	ldr	r8, [sp, #92]	@ tmp1029, %sfp
	add	r4, r9, #24576	@ tmp1032, D.33009,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r3, #0	@ tmp702,
	ldr	r2, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r7, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r8, #1788]	@ MemArrange.HafPmvOffset, _23->s32HalfPmvOffset
	ldr	r0, [r4, #3232]	@ D.33010, _23->stDecFs[0].PhyAddr
	str	r2, [r4, #3188]	@ MemArrange.VahbStride, _23->stDummyPhyFs.Stride
	str	r3, [r4, #3172]	@ tmp702, _23->stDummyPhyFs.PhyFsID
	str	r0, [r4, #3180]	@ D.33010, _23->stDummyPhyFs.PhyAddr
	ldr	r2, [r9, #72]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	ldr	r6, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	ldr	r5, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r4, #3192]	@ D.33010, _23->stDummyPhyFs.FsWidth
	ldr	lr, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r1, [r9, #76]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	ip, [sp, #140]	@ D.33010, MemArrange.TotalMemUsed
	strb	r3, [r4, #3168]	@ tmp702, _23->stDummyPhyFs.IsDecRef
	str	r1, [r4, #3196]	@ D.33010, _23->stDummyPhyFs.FsHeight
	strb	r3, [r4, #3169]	@ tmp702, _23->stDummyPhyFs.IsTfRef
	strb	r3, [r4, #3170]	@ tmp702, _23->stDummyPhyFs.DispState
	str	r7, [r4, #3200]	@ MemArrange.ChromOffset, _23->stDummyPhyFs.ChromOffset
	str	r6, [r4, #3204]	@ MemArrange.LumaPixelOffset, _23->stDummyPhyFs.LumaPixelOffset
	str	r5, [r4, #3208]	@ MemArrange.ChromaPixelOffset, _23->stDummyPhyFs.ChromaPixelOffset
	str	lr, [r8, #1888]	@ MemArrange.u32StrideByte, _23->StrideByte
	str	ip, [r8, #1876]	@ D.33010, _23->TotalMemUsed
	ldr	r3, [r9, #40]	@ _23->stPreInfo.s32PreWidth, _23->stPreInfo.s32PreWidth
	cmp	r2, r3	@ D.33010, _23->stPreInfo.s32PreWidth
	beq	.L450	@,
.L385:
	ldr	r6, .L460+20	@ tmp1030,
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r7, [r3, #1580]	@ _477->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _477->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ _477->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L451	@,
.L414:
	ldrsb	r3, [r9, #10]	@ _23->s32DecFsNum, _23->s32DecFsNum
	ldrsb	lr, [r9, #65]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	str	r2, [r9, #40]	@ D.33010, _23->stPreInfo.s32PreWidth
	str	r1, [r9, #44]	@ D.33010, _23->stPreInfo.s32PreHeight
	str	r3, [r9, #48]	@ _23->s32DecFsNum, _23->stPreInfo.s32PreDecNum
	ldr	r3, [r4, #3284]	@ _23->stDecFs[1].PhyAddr, _23->stDecFs[1].PhyAddr
	str	lr, [r9, #56]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum, _23->stPreInfo.s32PreExpectNum
	rsb	r3, r0, r3	@ D.33010, D.33010, _23->stDecFs[1].PhyAddr
	str	r3, [r9, #52]	@ D.33010, _23->stPreInfo.s32PreDecSlotLen
.L386:
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	mov	r0, #0	@ D.33006,
	str	ip, [r3]	@ D.33010, *UsedMemSize_286(D)
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L444:
	cmp	r3, #0	@ D.33008,
	beq	.L363	@,
	ldr	r0, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	cmp	r2, r0	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	bne	.L419	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	cmp	r1, r2	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	beq	.L363	@,
.L419:
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L369:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.33010,
	uxtb	r3, r3	@ D.33008, D.33010
	strb	r3, [r9, #10]	@ D.33008, _23->s32DecFsNum
	b	.L371	@
.L420:
	mvn	r2, #0	@ Ret,
.L365:
	ldr	r1, .L460+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L450:
	ldr	r3, [r9, #44]	@ _23->stPreInfo.s32PreHeight, _23->stPreInfo.s32PreHeight
	cmp	r1, r3	@ D.33010, _23->stPreInfo.s32PreHeight
	bne	.L385	@,
	ldrsb	lr, [r9, #10]	@ D.33010, _23->s32DecFsNum
	ldr	r3, [r9, #48]	@ _23->stPreInfo.s32PreDecNum, _23->stPreInfo.s32PreDecNum
	cmp	lr, r3	@ D.33010, _23->stPreInfo.s32PreDecNum
	bne	.L385	@,
	ldrsb	lr, [r9, #65]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	ldr	r3, [r9, #56]	@ _23->stPreInfo.s32PreExpectNum, _23->stPreInfo.s32PreExpectNum
	cmp	lr, r3	@ D.33010, _23->stPreInfo.s32PreExpectNum
	bne	.L385	@,
	b	.L386	@
.L451:
	ldr	r0, .L460+28	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, .L460	@ tmp1267,
	ldr	r1, [r6]	@ D.33014, s_pstVfmwChan
	ldr	r8, .L460	@ tmp747,
	ldr	r3, [r3]	@ pstInst, s_pFspInst
	ldr	r5, [r1, #1612]	@ _293->stSynExtraData.s32DSDThrHeight, _293->stSynExtraData.s32DSDThrHeight
	ldr	r0, [r1, #1608]	@ _293->stSynExtraData.s32DSDThrWidth, _293->stSynExtraData.s32DSDThrWidth
	ldr	r2, [r3, #72]	@ s32CurWidth, pstInst_290->stInstCfg.s32DecFsWidth
	str	r3, [sp, #28]	@ pstInst, %sfp
	ldr	r3, [r3, #76]	@ s32CurHeight, pstInst_290->stInstCfg.s32DecFsHeight
	ldr	r1, [r1, #1604]	@ _293->stSynExtraData.s32DnrEnable, _293->stSynExtraData.s32DnrEnable
	cmp	r3, r5	@ s32CurHeight, _293->stSynExtraData.s32DSDThrHeight
	cmple	r2, r0	@, s32CurWidth, _293->stSynExtraData.s32DSDThrWidth
	movle	r5, #1	@ tmp757,
	movgt	r5, #0	@ tmp757,
	bgt	.L387	@,
	cmp	r1, #1	@ _293->stSynExtraData.s32DnrEnable,
	beq	.L452	@,
	ldr	r1, .L460+32	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	movne	r2, #0	@ tmp872,
	movwne	r3, #1445	@,
	bne	.L438	@,
	mov	r1, r7	@, _477->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	beq	.L439	@,
	ldr	r3, .L460+36	@ tmp1031,
	str	r3, [sp, #32]	@ tmp1031, %sfp
.L415:
	ldr	ip, [r6]	@ D.33014, s_pstVfmwChan
	mov	lr, #1	@ tmp875,
	ldr	r3, [sp, #28]	@ pstInst, %sfp
	mov	r0, #31	@,
	ldr	r1, .L460+40	@,
	str	lr, [ip, #1604]	@ tmp875, _304->stSynExtraData.s32DnrEnable
	add	r2, r3, #32768	@ tmp883, pstInst,
	ldr	lr, [sp, #32]	@ tmp1031, %sfp
	ldr	r3, [ip, #236]	@ D.33010, _304->s32OffLineDnrMemAddr
	str	r3, [lr, #2932]	@ D.33010, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r3, [ip, #240]	@ D.33010, _304->s32OffLineDNRMemSize
	str	r3, [lr, #2936]	@ D.33010, s_DnrChan[0].s32OffLineDNRMemSize
	ldr	lr, [ip, #240]	@ _304->s32OffLineDNRMemSize, _304->s32OffLineDNRMemSize
	ldr	r3, [r2, #1884]	@ pstInst_290->MemSize, pstInst_290->MemSize
	ldr	r2, [r2, #1880]	@ pstInst_290->MemAddr, pstInst_290->MemAddr
	str	lr, [sp, #4]	@ _304->s32OffLineDNRMemSize,
	ldr	ip, [ip, #236]	@ _304->s32OffLineDnrMemAddr, _304->s32OffLineDnrMemAddr
	str	ip, [sp]	@ _304->s32OffLineDnrMemAddr,
	bl	dprint_vfmw	@
	ldr	r0, .L460+28	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r5, #0	@ s32Ret,
	bne	.L398	@,
.L399:
	ldr	r2, [r9, #72]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	ldr	r1, [r9, #76]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	r0, [r4, #3232]	@ D.33010, _23->stDecFs[0].PhyAddr
	ldr	ip, [sp, #140]	@ D.33010, MemArrange.TotalMemUsed
	b	.L414	@
.L387:
	cmp	r1, #1	@ _293->stSynExtraData.s32DnrEnable,
	str	r1, [sp, #32]	@ _293->stSynExtraData.s32DnrEnable, %sfp
	beq	.L453	@,
	ldr	r1, .L460+44	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r3, [r8]	@ pstInst, s_pFspInst
	add	r2, r3, #32768	@ tmp936, pstInst,
	mov	r1, r3	@ pstInst, pstInst
	ldrsb	r3, [r3, #10]	@ pstInst_371->s32DecFsNum, pstInst_371->s32DecFsNum
	ldr	r10, [r2, #1872]	@ s32ImgSize, pstInst_371->ImgSlotLen
	cmp	r3, #0	@ pstInst_371->s32DecFsNum,
	ble	.L401	@,
	add	r8, r1, #27648	@ ivtmp.338, pstInst,
	mov	r2, r10	@ s32ImgSize, s32ImgSize
	add	r8, r8, #160	@ ivtmp.338, ivtmp.338,
	str	r4, [sp, #24]	@ tmp1032, %sfp
	mov	r4, r1	@ pstInst, pstInst
	mov	r10, r8	@ ivtmp.338, ivtmp.338
	mov	r8, r2	@ s32ImgSize, s32ImgSize
	b	.L409	@
.L455:
	ldr	r3, [r6]	@ D.33014, s_pstVfmwChan
	add	r3, r3, r5, lsl #4	@ tmp943, D.33014, i,
	add	r2, r3, #216064	@ tmp945, tmp943,
	add	r3, r3, #212992	@ tmp955, tmp943,
	str	r0, [r2, #360]	@ s32UsingCount, _376->stFrameArray[i_493].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r8, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L407:
	ldrsb	r3, [r4, #10]	@ D.33010, pstInst_371->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r10, r10, #52	@ ivtmp.338, ivtmp.338,
	cmp	r5, r3	@ i, D.33010
	bge	.L454	@,
.L409:
	ldr	fp, [r10]	@ s32FrameStartAddr, MEM[base: _479, offset: 0B]
	mov	r2, r8	@, s32ImgSize
	mov	r0, #0	@,
	mov	r1, fp	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L455	@,
	ble	.L408	@,
	ldr	r3, [r6]	@ D.33014, s_pstVfmwChan
	add	r3, r3, r5, lsl #4	@ tmp963, D.33014, i,
	add	r2, r3, #216064	@ tmp965, tmp963,
	add	r3, r3, #212992	@ tmp975, tmp963,
	str	r7, [r2, #360]	@ tmp1038, _377->stFrameArray[i_493].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r8, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L407	@
.L370:
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.33008, MemArrange.ValidFrameNum
	strb	r3, [r9, #10]	@ D.33008, _23->s32DecFsNum
	b	.L371	@
.L454:
	ldr	r4, [sp, #24]	@ tmp1032, %sfp
.L401:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	FSP_EnableDnr	@
	subs	lr, r0, #0	@ s32Ret,
	bne	.L456	@,
	ldr	ip, [r6]	@ D.33014, s_pstVfmwChan
	mov	r0, #31	@,
	ldr	r3, [sp, #28]	@ pstInst, %sfp
	ldr	r1, .L460+40	@,
	ldr	r5, [ip, #236]	@ D.33010, _309->s32OffLineDnrMemAddr
	add	r2, r3, #32768	@ tmp993, pstInst,
	ldr	r3, .L460+36	@ tmp988,
	str	lr, [ip, #1604]	@ s32Ret, _309->stSynExtraData.s32DnrEnable
	str	r5, [r3, #2932]	@ D.33010, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	lr, [ip, #240]	@ D.33010, _309->s32OffLineDNRMemSize
	str	lr, [r3, #2936]	@ D.33010, s_DnrChan[0].s32OffLineDNRMemSize
	ldr	lr, [ip, #240]	@ _309->s32OffLineDNRMemSize, _309->s32OffLineDNRMemSize
	ldr	r3, [r2, #1884]	@ pstInst_290->MemSize, pstInst_290->MemSize
	ldr	r2, [r2, #1880]	@ pstInst_290->MemAddr, pstInst_290->MemAddr
	str	lr, [sp, #4]	@ _309->s32OffLineDNRMemSize,
	ldr	ip, [ip, #236]	@ _309->s32OffLineDnrMemAddr, _309->s32OffLineDnrMemAddr
	str	ip, [sp]	@ _309->s32OffLineDnrMemAddr,
	bl	dprint_vfmw	@
	ldr	r0, .L460+28	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L399	@
.L442:
	ldr	r3, .L460+48	@,
	movw	r2, #1545	@,
	ldr	r1, .L460+52	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L453:
	ldr	r1, .L460+56	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	fp, [r8]	@ pstInst, s_pFspInst
	ldr	r3, .L460+36	@ tmp899,
	add	r2, fp, #32768	@ tmp896, pstInst,
	ldrsb	r1, [fp, #10]	@ pstInst_346->s32DecFsNum, pstInst_346->s32DecFsNum
	ldr	lr, [r3, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	cmp	r1, #0	@ pstInst_346->s32DecFsNum,
	ldr	r3, [r3, #2936]	@ s_DnrChan[0].s32OffLineDNRMemSize, s_DnrChan[0].s32OffLineDNRMemSize
	ldr	r10, [r2, #1872]	@ s32ImgSize, pstInst_346->ImgSlotLen
	add	r3, lr, r3	@ s32DnrEndAddr, s32DnrStartAddr, s_DnrChan[0].s32OffLineDNRMemSize
	str	r3, [sp, #24]	@ s32DnrEndAddr, %sfp
	ble	.L401	@,
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, fp, #27648	@ ivtmp.317, pstInst,
	add	ip, ip, #160	@ ivtmp.317, ivtmp.317,
	add	r3, r3, #216064	@ ivtmp.320, s_pstVfmwChan,
	add	r3, r3, #360	@ ivtmp.320, ivtmp.320,
	mov	r0, r3	@ ivtmp.331, ivtmp.320
	mov	r1, r3	@ ivtmp.326, ivtmp.320
	b	.L405	@
.L457:
	ldr	r8, [sp, #32]	@ tmp1036, %sfp
	ldr	r7, [r3, #12]	@ MEM[base: _200, offset: 12B], MEM[base: _200, offset: 12B]
	str	r2, [r3, #4]	@ s32FrameStartAddr, MEM[base: _200, offset: 4B]
	str	r8, [r3]	@ tmp1036, MEM[base: _200, offset: 0B]
	add	r2, r7, #1	@ D.33010, MEM[base: _200, offset: 12B],
	str	r10, [r3, #8]	@ s32ImgSize, MEM[base: _200, offset: 8B]
	str	r2, [r3, #12]	@ D.33010, MEM[base: _200, offset: 12B]
.L403:
	ldrsb	r2, [fp, #10]	@ D.33010, pstInst_346->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	ip, ip, #52	@ ivtmp.317, ivtmp.317,
	add	r3, r3, #16	@ ivtmp.320, ivtmp.320,
	cmp	r5, r2	@ i, D.33010
	add	r1, r1, #16	@ ivtmp.326, ivtmp.326,
	add	r0, r0, #16	@ ivtmp.331, ivtmp.331,
	bge	.L401	@,
.L405:
	ldr	r8, [sp, #24]	@ tmp915, %sfp
	ldr	r2, [ip]	@ s32FrameStartAddr, MEM[base: _198, offset: 0B]
	cmp	r8, r2	@ tmp915, s32FrameStartAddr
	add	r7, r10, r2	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r8, #1	@ tmp915,
	movle	r8, #0	@ tmp915,
	cmp	lr, r2	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r8, #0	@ tmp915,
	cmp	r8, #0	@ tmp915,
	bne	.L457	@,
	cmp	lr, r7	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r7, #0	@ tmp926,
	movlt	r7, #1	@ tmp926,
	cmp	lr, r2	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r7, #0	@ tmp926,
	cmp	r7, #0	@ tmp926,
	strne	r2, [r1, #4]	@ s32FrameStartAddr, MEM[base: _225, offset: 4B]
	ldrne	r8, [sp, #32]	@ tmp1036, %sfp
	ldrne	r7, [r1, #12]	@ MEM[base: _225, offset: 12B], MEM[base: _225, offset: 12B]
	strne	r10, [r1, #8]	@ s32ImgSize, MEM[base: _225, offset: 8B]
	addne	r2, r7, #1	@ D.33010, MEM[base: _225, offset: 12B],
	strne	r8, [r1]	@ tmp1036, MEM[base: _225, offset: 0B]
	strne	r2, [r1, #12]	@ D.33010, MEM[base: _225, offset: 12B]
	streq	r7, [r0]	@ tmp926, MEM[base: _310, offset: 0B]
	stmeqib	r0, {r2, r10}	@ ivtmp.331,,
	streq	r7, [r0, #12]	@ tmp926, MEM[base: _310, offset: 12B]
	b	.L403	@
.L367:
	str	r3, [sp]	@ D.33010,
	mov	r3, r4	@, MinFsNum
	ldr	r1, .L460+60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L452:
	ldr	r1, .L460+36	@ tmp1031,
	mov	r0, #31	@,
	mov	r5, r1	@ tmp1031, tmp1031
	str	r1, [sp, #32]	@ tmp1031, %sfp
	ldr	r1, .L460+64	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5, #2936]	@ s32DnrSize, s_DnrChan[0].s32OffLineDNRMemSize
	ldr	fp, [r5, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r8, [r8]	@ pstInst, s_pFspInst
	ldr	r3, [r6]	@ D.33014, s_pstVfmwChan
	add	r0, fp, r2	@ s32DnrEndAddr, s32DnrStartAddr, s32DnrSize
	add	r1, r8, #32768	@ tmp769, pstInst,
	str	r0, [sp, #24]	@ s32DnrEndAddr, %sfp
	str	fp, [r3, #236]	@ s32DnrStartAddr, _322->s32OffLineDnrMemAddr
	str	r2, [r3, #240]	@ s32DnrSize, _322->s32OffLineDNRMemSize
	ldrsb	r2, [r8, #10]	@ pstInst_268->s32DecFsNum, pstInst_268->s32DecFsNum
	ldr	r10, [r1, #1872]	@ s32ImgSize, pstInst_268->ImgSlotLen
	cmp	r2, #0	@ pstInst_268->s32DecFsNum,
	ble	.L389	@,
	add	r0, r8, #27648	@ ivtmp.309, pstInst,
	mov	r2, #0	@ i,
	add	r0, r0, #160	@ ivtmp.309, ivtmp.309,
	str	r3, [sp, #40]	@ D.33014, %sfp
	str	r3, [sp, #36]	@ D.33014, %sfp
	str	r9, [sp, #44]	@ D.33009, %sfp
	str	r4, [sp, #48]	@ tmp1032, %sfp
	b	.L394	@
.L459:
	mov	r3, #2	@ tmp1276,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _538->stFrameArray[i_491].s32FrameAddr
	str	r3, [r7, #360]	@ tmp1276, _538->stFrameArray[i_491].eFrameState
	mov	r3, #0	@ tmp1277,
	str	r10, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_621 + 216432B]
	str	r3, [lr, #3444]	@ tmp1277, MEM[(struct VFMW_CHAN_S *)_621 + 216436B]
.L391:
	ldrsb	r1, [r8, #10]	@ D.33010, pstInst_268->s32DecFsNum
	add	r2, r2, #1	@ i, i,
	ldr	r3, [sp, #36]	@ D.33014, %sfp
	add	r0, r0, #52	@ ivtmp.309, ivtmp.309,
	cmp	r2, r1	@ i, D.33010
	bge	.L458	@,
.L394:
	ldr	r5, [sp, #24]	@ tmp779, %sfp
	add	lr, r3, r2, lsl #4	@ tmp783, D.33014, i,
	ldr	r1, [r0]	@ s32FrameStartAddr, MEM[base: _508, offset: 0B]
	add	r7, lr, #216064	@ tmp785, tmp783,
	add	lr, lr, #212992	@ tmp795, tmp783,
	cmp	r5, r1	@ tmp779, s32FrameStartAddr
	add	ip, r10, r1	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r5, #1	@ tmp779,
	movle	r5, #0	@ tmp779,
	cmp	fp, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r5, #0	@ tmp779,
	cmp	r5, #0	@ tmp779,
	bne	.L459	@,
	ldr	r4, [sp, #24]	@ tmp805, %sfp
	add	lr, r3, r2, lsl #4	@ tmp809, D.33014, i,
	add	r7, lr, #216064	@ tmp811, tmp809,
	add	lr, lr, #212992	@ tmp821, tmp809,
	cmp	r4, ip	@ tmp805, s32FrameEndAddr
	movge	r4, #1	@ tmp805,
	movlt	r4, #0	@ tmp805,
	cmp	fp, ip	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r4, #0	@ tmp805,
	cmp	r4, #0	@ tmp805,
	beq	.L392	@,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _538->stFrameArray[i_491].s32FrameAddr
	mov	r3, #2	@ tmp1279,
	str	r3, [r7, #360]	@ tmp1279, _538->stFrameArray[i_491].eFrameState
	str	r10, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_627 + 216432B]
	str	r5, [lr, #3444]	@ tmp779, MEM[(struct VFMW_CHAN_S *)_627 + 216436B]
	b	.L391	@
.L392:
	ldr	r5, [sp, #24]	@ tmp831, %sfp
	mov	lr, r2, asl #4	@ tmp853, i,
	cmp	r5, ip	@ tmp831, s32FrameEndAddr
	movge	r5, #0	@ tmp831,
	movlt	r5, #1	@ tmp831,
	cmp	fp, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r5, #0	@ tmp831,
	mov	ip, r5	@ tmp831, tmp831
	add	r5, r3, r2, lsl #4	@ tmp835, D.33014, i,
	add	r3, r3, lr	@ tmp854, D.33014, tmp853
	cmp	ip, #0	@ tmp831,
	add	r7, r3, #212992	@ tmp862, tmp854,
	add	r3, r3, #216064	@ tmp856, tmp854,
	add	lr, lr, #216064	@ D.33011, tmp853,
	add	r9, r5, #216064	@ tmp837, tmp835,
	streq	ip, [r3, #360]	@ tmp831, _538->stFrameArray[i_491].eFrameState
	add	r5, r5, #212992	@ tmp847, tmp835,
	ldreq	r3, [sp, #40]	@ D.33014, %sfp
	add	lr, lr, #364	@ D.33011, D.33011,
	strne	r1, [r9, #364]	@ s32FrameStartAddr, _538->stFrameArray[i_491].s32FrameAddr
	movne	r3, #2	@ tmp1281,
	strne	r3, [r9, #360]	@ tmp1281, _538->stFrameArray[i_491].eFrameState
	streq	r1, [r3, lr]	@ s32FrameStartAddr, MEM[base: _118, offset: 0B]
	strne	r10, [r5, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_633 + 216432B]
	strne	r4, [r5, #3444]	@ tmp805, MEM[(struct VFMW_CHAN_S *)_633 + 216436B]
	streq	r10, [r7, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_639 + 216432B]
	streq	ip, [r7, #3444]	@ tmp831, MEM[(struct VFMW_CHAN_S *)_639 + 216436B]
	b	.L391	@
.L458:
	ldr	r9, [sp, #44]	@ D.33009, %sfp
	ldr	r4, [sp, #48]	@ tmp1032, %sfp
.L389:
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	bne	.L415	@,
.L439:
	ldr	r0, .L460+28	@,
	bl	OSAL_SpinUnLockIRQ	@
.L398:
	movw	r3, #1797	@,
	ldr	r2, .L460+68	@,
	ldr	r1, .L460+72	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L456:
	mov	r2, #0	@ tmp982,
	movw	r3, #1494	@,
.L438:
	str	r2, [sp]	@ tmp982,
	mov	r0, #31	@,
	ldr	r2, .L460+76	@,
	ldr	r1, .L460+80	@,
	bl	dprint_vfmw	@
	b	.L439	@
.L408:
	mov	r2, #0	@ tmp1023,
	movw	r3, #1484	@,
	b	.L438	@
.L443:
	mov	r0, r9	@, D.33009
	ldr	r3, .L460+84	@,
	movw	r2, #1546	@,
	ldr	r1, .L460+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L446:
	ldrsb	r3, [r9, #65]	@ D.33010, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #44]	@, %sfp
	str	r1, [sp]	@ D.33012,
	ldr	r1, .L460+88	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33006,
	b	.L435	@
.L461:
	.align	2
.L460:
	.word	.LANCHOR0
	.word	CapItem
	.word	.LC32
	.word	.LC31
	.word	g_vdm_hal_fun_ptr
	.word	s_pstVfmwChan
	.word	.LC3
	.word	g_DSDLock
	.word	.LC34
	.word	s_DnrChan+73728
	.word	.LC36
	.word	.LC38
	.word	.LC0
	.word	.LC1
	.word	.LC37
	.word	.LC5
	.word	.LC33
	.word	.LANCHOR1+132
	.word	.LC8
	.word	.LANCHOR1+108
	.word	.LC35
	.word	.LC2
	.word	.LC4
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L474	@ tmp128,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L472	@,
	ldrsb	r4, [r3, #10]	@ TotalFsNum, pstInst_6->s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L465	@,
	add	r3, r3, #27648	@ ivtmp.449, pstInst,
	mov	r2, #0	@ i,
	add	r3, r3, #148	@ ivtmp.449, ivtmp.449,
.L468:
	ldrsb	r1, [r3]	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	cmp	r1, #0	@ MEM[base: _33, offset: 0B],
	bne	.L466	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _33, offset: 2B], MEM[base: _33, offset: 2B]
	cmp	r1, #0	@ MEM[base: _33, offset: 2B],
	beq	.L467	@,
.L466:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.449, ivtmp.449,
	cmp	r4, r2	@ TotalFsNum, i
	bne	.L468	@,
.L465:
	add	r3, sp, #16	@,,
	add	r2, sp, #20	@,,
	add	r1, sp, #12	@,,
	mov	r5, #0	@ tmp133,
	str	r5, [sp, #16]	@ tmp133, NewNum
	str	r5, [sp, #20]	@ tmp133, ReadNum
	str	r5, [sp, #12]	@ tmp133, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #12]	@ D.33039, RefNum
	ldr	r3, [sp, #20]	@ D.33039, ReadNum
	ldr	r0, [sp, #16]	@ D.33039, NewNum
	add	r1, r2, r3	@ D.33039, D.33039, D.33039
	add	r1, r1, r0	@ D.33039, D.33039, D.33039
	add	r1, r1, #2	@ D.33039, D.33039,
	cmp	r4, r1	@ TotalFsNum, D.33039
	bgt	.L473	@,
.L469:
	mov	r0, #0	@ D.33037,
.L464:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L467:
	cmp	r4, r2	@ TotalFsNum, i
	bgt	.L469	@,
	b	.L465	@
.L473:
	stmia	sp, {r0, r4}	@,,
	mov	r0, r5	@, tmp133
	ldr	r1, .L474+4	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.33037,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L472:
	ldr	r1, .L474+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33037,
	b	.L464	@
.L475:
	.align	2
.L474:
	.word	.LANCHOR0
	.word	.LC40
	.word	.LC39
	.fnend
	.size	FSP_IsFsLeak, .-FSP_IsFsLeak
	.align	2
	.global	FSP_IsNewFsAvalible
	.type	FSP_IsNewFsAvalible, %function
FSP_IsNewFsAvalible:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L497	@,
	ldr	r3, .L501	@ tmp138,
	ldr	r4, [r3]	@ D.33057, s_pFspInst
	cmp	r4, #0	@ D.33057,
	beq	.L498	@,
	ldr	r2, [r3, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L483	@,
	ldr	r6, [r3, #16]	@ D.33064, g_FspFrameIntf.IsFrameAvalible
	cmp	r6, #0	@ D.33064,
	beq	.L499	@,
	blx	r6	@ D.33064
	cmp	r0, #0	@,
	bne	.L500	@,
.L483:
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ D.33059, _8->s32DecFsNum
	cmp	r0, #0	@ D.33059,
	beq	.L491	@,
	sxtb	r0, r0	@ D.33062, D.33059
	cmp	r0, #0	@ D.33062,
	ble	.L484	@,
	ldr	r1, .L501+4	@ tmp145,
	add	r3, r4, #27648	@ ivtmp.457, D.33057,
	add	r3, r3, #148	@ ivtmp.457, ivtmp.457,
	mov	r2, #0	@ i,
	ldr	lr, [r1]	@ D.33060, s_pstVfmwChan
	ldr	ip, [lr, #1580]	@ D.33055, _12->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L488	@
.L485:
	ldrsb	r1, [r3]	@ MEM[base: _10, offset: 0B], MEM[base: _10, offset: 0B]
	cmp	r1, #0	@ MEM[base: _10, offset: 0B],
	bne	.L486	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _10, offset: 2B], MEM[base: _10, offset: 2B]
	cmp	r1, #0	@ MEM[base: _10, offset: 2B],
	beq	.L487	@,
.L486:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.457, ivtmp.457,
	cmp	r2, r0	@ i, D.33062
	beq	.L484	@,
.L488:
	cmp	ip, #1	@ D.33055,
	bne	.L485	@,
	mov	r1, r2, asl #4	@ D.33065, i,
	add	r1, r1, #216064	@ D.33065, D.33065,
	add	r1, r1, #360	@ D.33065, D.33065,
	ldr	r1, [lr, r1]	@ MEM[base: _32, offset: 0B], MEM[base: _32, offset: 0B]
	cmp	r1, #0	@ MEM[base: _32, offset: 0B],
	beq	.L485	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.457, ivtmp.457,
	cmp	r2, r0	@ i, D.33062
	bne	.L488	@,
.L484:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	adds	r0, r0, #0	@ D.33066,,
	movne	r0, #1	@ D.33066,
	rsb	r0, r0, #0	@ D.33055, D.33066
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L487:
	cmp	r0, r2	@ D.33062, i
	ble	.L484	@,
.L491:
	mov	r0, #1	@ D.33055,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L500:
	mov	r0, r5	@ D.33055, InstID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L499:
	ldr	r1, .L501+8	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.33055, D.33064
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L497:
	ldr	r3, .L501+12	@,
	movw	r2, #1892	@,
	ldr	r1, .L501+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33055,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L498:
	ldr	r3, .L501+20	@,
	movw	r2, #1893	@,
	ldr	r1, .L501+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33055,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L502:
	.align	2
.L501:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LC27
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_IsNewFsAvalible, .-FSP_IsNewFsAvalible
	.align	2
	.global	FindLeastTickPhyFs
	.type	FindLeastTickPhyFs, %function
FindLeastTickPhyFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ PhyNum
	ble	.L507	@,
	mov	r2, r0	@ pstPhyFs, pstPhyFs
	mov	r0, #0	@ LeastFsID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ LeastFsID, LeastFsID
	mvn	lr, #0	@ LeastTick,
.L506:
	ldr	ip, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_18, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	ip, lr	@ LeastTick, LeastTick
	movcc	r0, r3	@ LeastFsID, LeastFsID
	add	r3, r3, #1	@ LeastFsID, LeastFsID,
	movcc	lr, ip	@ LeastTick, LeastTick
	cmp	r3, r1	@ LeastFsID, PhyNum
	bne	.L506	@,
	ldr	pc, [sp], #4	@
.L507:
	mov	r0, #0	@ LeastFsID,
	bx	lr	@
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0	@ InstID, InstID
	bne	.L517	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L518	@,
	ldr	r3, .L520	@ tmp122,
	ldr	r2, [r3]	@ D.33078, s_pFspInst
	cmp	r2, #0	@ D.33078,
	beq	.L519	@,
	mov	r3, #432	@ tmp126,
	mla	r3, r3, r1, r2	@ tmp127, tmp126, LogicFrameID, D.33078
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState,
	bxne	lr	@
	mov	r0, #432	@ tmp140,
	ldrb	r3, [r3, #100]	@ zero_extendqisi2	@ D.33080, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].PmvIdc
	mla	r1, r0, r1, r2	@ tmp141, tmp140, LogicFrameID, D.33078
	cmp	r3, #19	@ D.33080,
	sxtabls	r3, r2, r3	@ tmp136, D.33078, D.33080
	strlsb	ip, [r3, #14]	@ InstID, _9->IsPmvInUse
	mov	r3, #0	@ tmp143,
	str	r3, [r1, #500]	@ tmp143, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState
	bx	lr	@
.L517:
	ldr	r3, .L520+4	@,
	movw	r2, #2500	@,
	ldr	r1, .L520+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L518:
	ldr	r3, .L520+12	@,
	movw	r2, #2501	@,
	ldr	r1, .L520+8	@,
	b	dprint_vfmw	@
.L519:
	ldr	r3, .L520+16	@,
	movw	r2, #2502	@,
	ldr	r1, .L520+8	@,
	b	dprint_vfmw	@
.L521:
	.align	2
.L520:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC41
	.word	.LC2
	.fnend
	.size	FSP_RemovePmv, .-FSP_RemovePmv
	.align	2
	.global	FSP_SetRef
	.type	FSP_SetRef, %function
FSP_SetRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	bne	.L554	@,
	cmp	r1, #63	@ LogicFrameID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	bhi	.L555	@,
	ldr	r3, .L564	@ tmp147,
	ldr	r7, [r3]	@ D.33094, s_pFspInst
	cmp	r7, #0	@ D.33094,
	beq	.L556	@,
	mov	r5, #432	@ tmp151,
	uxtb	r8, r2	@ D.33095, IsRef
	mla	r5, r5, r1, r7	@ tmp152, tmp151, LogicFrameID, D.33094
	mov	r6, r2	@ IsRef, IsRef
	ldrsb	r1, [r5, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	strb	r8, [r5, #96]	@ D.33095, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].s32IsRef
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, [r5, #504]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	cmp	r1, #0	@ D.33096,
	beq	.L528	@,
	ldr	lr, [r1, #44]	@ _13->u32Tick, _13->u32Tick
	ldr	ip, [r5, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	lr, ip	@ _13->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	beq	.L557	@,
.L528:
	mov	r3, #432	@ tmp185,
	mla	r3, r3, r4, r7	@ tmp186, tmp185, LogicFrameID, D.33094
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.33095, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].PmvIdc
	cmp	r2, #19	@ D.33095,
	bhi	.L531	@,
	cmp	r6, #1	@ IsRef,
	beq	.L558	@,
	cmp	r6, #0	@ IsRef,
	bne	.L534	@,
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState,
	beq	.L559	@,
.L541:
	mov	r3, #432	@ tmp225,
	mla	r3, r3, r4, r7	@ tmp226, tmp225, LogicFrameID, D.33094
	ldr	r3, [r3, #508]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r3, #0	@ D.33096,
	beq	.L545	@,
	ldrsb	r2, [r3, #2]	@ _31->DispState, _31->DispState
	cmp	r2, #1	@ _31->DispState,
	moveq	r2, #0	@ tmp229,
	streqb	r2, [r3, #2]	@ tmp229, _31->DispState
.L545:
	mov	r3, #432	@ tmp254,
	mla	r4, r3, r4, r7	@ tmp255, tmp254, LogicFrameID, D.33094
	str	r6, [r4, #504]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L554:
	ldr	r3, .L564+4	@,
	movw	r2, #2530	@,
	ldr	r1, .L564+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L558:
	ldr	r1, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	add	r3, r3, #496	@ tmp192, tmp186,
	cmp	r1, #1	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState,
	beq	.L560	@,
.L533:
	mov	r3, #432	@ tmp263,
	mla	r3, r3, r4, r7	@ tmp264, tmp263, LogicFrameID, D.33094
	ldr	r2, [r3, #508]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r2, #0	@ D.33096,
	beq	.L561	@,
.L540:
	mov	r3, #432	@ tmp234,
	ldr	r0, [r2, #44]	@ _52->u32Tick, _52->u32Tick
	mla	r3, r3, r4, r7	@ tmp235, tmp234, LogicFrameID, D.33094
	ldr	r1, [r3, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	r6, #1	@ IsRef,
	cmpeq	r0, r1	@, _52->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	beq	.L562	@,
.L537:
	cmp	r6, #0	@ IsRef,
	beq	.L545	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L555:
	ldr	r3, .L564+12	@,
	movw	r2, #2531	@,
	ldr	r1, .L564+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L531:
	sxtb	r2, r2	@, D.33095
	ldr	r1, .L564+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ IsRef,
	beq	.L541	@,
	b	.L533	@
.L557:
	ldrsb	ip, [r1]	@ D.33098, _13->IsDecRef
	cmp	r2, ip	@ IsRef, D.33098
	beq	.L529	@,
	ldr	ip, [r3, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L529	@,
	ldr	r3, [r3, #28]	@ D.33099, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.33097, _13->PhyAddr
	cmp	r3, #0	@ D.33099,
	beq	.L563	@,
	blx	r3	@ D.33099
	ldr	r1, [r5, #504]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
.L529:
	strb	r8, [r1]	@ D.33095, _78->IsDecRef
	b	.L528	@
.L560:
	sxtab	r2, r7, r2	@ tmp195, D.33094, D.33095
	mov	r1, #2	@ tmp202,
	strb	r6, [r2, #14]	@ IsRef, _10->IsPmvInUse
	str	r1, [r3, #4]	@ tmp202, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
.L534:
	mov	r3, #432	@ tmp259,
	mla	r3, r3, r4, r7	@ tmp260, tmp259, LogicFrameID, D.33094
	ldr	r2, [r3, #508]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r2, #0	@ D.33096,
	bne	.L540	@,
	b	.L537	@
.L559:
	sxtab	r2, r7, r2	@ tmp209, D.33094, D.33095
	strb	r6, [r2, #14]	@ IsRef, _10->IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].PmvAddr
	str	r6, [r3, #500]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	b	.L541	@
.L556:
	ldr	r3, .L564+20	@,
	movw	r2, #2532	@,
	ldr	r1, .L564+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L562:
	ldrsb	r1, [r2, #2]	@ _52->DispState, _52->DispState
	cmp	r1, #1	@ _52->DispState,
	moveq	r1, #2	@ tmp245,
	streqb	r1, [r2, #2]	@ tmp245, _52->DispState
	streqb	r1, [r3, #97]	@ tmp245, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].s32DispState
	b	.L537	@
.L561:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L563:
	ldr	r1, .L564+24	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #504]	@ D.33096, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	b	.L529	@
.L565:
	.align	2
.L564:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC41
	.word	.LC42
	.word	.LC2
	.word	.LC27
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L572	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.33107, s_pFspInst
	cmp	r3, #0	@ D.33107,
	beq	.L571	@,
	mov	r0, #432	@ tmp120,
	mla	r1, r0, r1, r3	@ tmp121, tmp120, LogicFrameID, D.33107
	ldrsb	r0, [r1, #96]	@ D.33106, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32IsRef
	bx	lr	@
.L571:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r3	@, D.33107
	movw	r2, #2645	@,
	ldr	r3, .L572+4	@,
	ldr	r1, .L572+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33106,
	ldmfd	sp!, {r4, pc}	@
.L573:
	.align	2
.L572:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC1
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L600	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L601	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L605	@ tmp137,
	ldr	ip, [r7]	@ s_pFspInst, s_pFspInst
	cmp	ip, #0	@ s_pFspInst,
	beq	.L602	@,
	add	r0, r7, #32	@, tmp137,
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	clz	r6, r2	@ D.33126, IsWaitDisp
	mov	r9, r3	@ InstID, InstID
	bl	OSAL_SpinLockIRQ	@
	ldr	r8, [r7]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp147,
	mov	r6, r6, lsr #5	@ D.33126, D.33126,
	mla	r3, r3, r5, r8	@ tmp148, tmp147, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp149, tmp148,
	ldrsb	r1, [r3, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	cmpeq	r4, #0	@, IsWaitDisp,
	bne	.L578	@,
	ldr	r3, [r3, #508]	@ D.33121, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r3, #0	@ D.33121,
	beq	.L578	@,
	ldrsb	r2, [r2, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState,
	beq	.L578	@,
	ldr	r2, [r7, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L578	@,
	ldr	r2, [r7, #24]	@ D.33124, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r3, #12]	@ D.33122, _14->PhyAddr
	cmp	r2, #0	@ D.33124,
	beq	.L603	@,
	mov	r0, r9	@, InstID
	blx	r2	@ D.33124
.L578:
	mov	r1, #432	@ tmp170,
	cmp	r6, #0	@ D.33126,
	mla	r1, r1, r5, r8	@ tmp171, tmp170, LogicFrameID, pstInst
	movne	r3, #0	@ D.33125,
	moveq	r3, #3	@ D.33125,
	add	ip, r1, #96	@ tmp172, tmp171,
	ldrsb	r0, [ip, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	strb	r3, [ip, #1]	@ D.33125, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r0, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	bne	.L599	@,
	add	lr, r1, #504	@ tmp182, tmp171,
	ldr	r3, [lr, #4]	@ D.33121, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r3, #0	@ D.33121,
	beq	.L599	@,
	ldr	r3, [r3, #44]	@ D.33122, _22->u32Tick
	ldr	r2, [r1, #496]	@ D.33122, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	r3, r2	@ D.33122, D.33122
	bne	.L604	@,
	cmp	r6, #0	@ D.33126,
	strneb	r0, [ip, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	moveq	r3, #3	@ tmp213,
	ldrne	r3, [lr, #4]	@ D.33121, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	streqb	r3, [ip, #1]	@ tmp213, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	ldreq	r2, [lr, #4]	@ D.33121, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	strneb	r0, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, _25->DispState
	strne	r0, [lr, #4]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	streqb	r3, [r2, #2]	@ tmp213, _26->DispState
.L599:
	ldr	r0, .L605+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L600:
	ldr	r3, .L605+8	@,
	movw	r2, #2662	@,
	ldr	r1, .L605+12	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L601:
	ldr	r3, .L605+16	@,
	movw	r2, #2663	@,
	ldr	r1, .L605+12	@,
	b	dprint_vfmw	@
.L604:
	ldr	r1, .L605+20	@,
	bl	dprint_vfmw	@
	ldr	r0, .L605+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L602:
	ldr	r3, .L605+24	@,
	movw	r2, #2664	@,
	ldr	r1, .L605+12	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L603:
	mov	r0, r2	@, D.33124
	ldr	r1, .L605+28	@,
	bl	dprint_vfmw	@
	b	.L578	@
.L606:
	.align	2
.L605:
	.word	.LANCHOR0
	.word	.LANCHOR0+32
	.word	.LC0
	.word	.LC1
	.word	.LC41
	.word	.LC43
	.word	.LC2
	.word	.LC28
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L619	@,
	cmp	r1, #0	@ pstVoQue,
	mov	r6, r1	@ pstVoQue, pstVoQue
	beq	.L620	@,
	ldr	r3, .L623	@ tmp129,
	ldr	r4, [r3]	@ D.33140, s_pFspInst
	cmp	r4, #0	@ D.33140,
	addne	r5, r4, #27648	@ D.33144, D.33140,
	addne	r4, r4, #104	@ ivtmp.490, D.33140,
	addne	r5, r5, #104	@ D.33144, D.33144,
	bne	.L613	@,
	b	.L621	@
.L612:
	add	r4, r4, #432	@ ivtmp.490, ivtmp.490,
	cmp	r4, r5	@ ivtmp.490, D.33144
	beq	.L622	@,
.L613:
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_14, offset: 176B]
	mov	r0, r2	@,
	bl	FSP_SetRef	@
	mov	r1, r4	@, ivtmp.490
	mov	r0, r6	@, pstVoQue
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L612	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_14, offset: 176B]
	mov	r0, r2	@,
	add	r4, r4, #432	@ ivtmp.490, ivtmp.490,
	bl	FSP_SetDisplay	@
	cmp	r4, r5	@ ivtmp.490, D.33144
	bne	.L613	@,
.L622:
	mov	r0, #0	@ D.33139,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L619:
	ldr	r3, .L623+4	@,
	mov	r2, #456	@,
	ldr	r1, .L623+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33139,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L621:
	ldr	r3, .L623+12	@,
	movw	r2, #458	@,
	ldr	r1, .L623+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33139,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L620:
	ldr	r3, .L623+16	@,
	movw	r2, #457	@,
	ldr	r1, .L623+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33139,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L624:
	.align	2
.L623:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC44
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L631	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.33149, s_pFspInst
	cmp	r3, #0	@ D.33149,
	beq	.L630	@,
	mov	r0, #432	@ tmp120,
	mla	r1, r0, r1, r3	@ tmp121, tmp120, LogicFrameID, D.33149
	ldrsb	r0, [r1, #97]	@ D.33148, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32DispState
	bx	lr	@
.L630:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r3	@, D.33149
	movw	r2, #2724	@,
	ldr	r3, .L631+4	@,
	ldr	r1, .L631+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33148,
	ldmfd	sp!, {r4, pc}	@
.L632:
	.align	2
.L631:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC1
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	lr, r0, #0	@ InstID, InstID
	bne	.L642	@,
	ldr	ip, .L645	@ tmp123,
	ldr	ip, [ip]	@ D.33154, s_pFspInst
	cmp	ip, #0	@ D.33154,
	beq	.L643	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L637	@,
	ldrsb	r0, [ip, #10]	@ D.33156, _8->s32DecFsNum
	cmp	r0, r2	@ D.33156, PhyFsID
	ble	.L640	@,
	mov	lr, #52	@ tmp128,
	mov	r0, r1	@ D.33153, ePhyFsType
	mla	r2, lr, r2, ip	@ tmp129, tmp128, PhyFsID, D.33154
	add	r2, r2, #27648	@ tmp131, tmp129,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L637:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L644	@,
.L640:
	mvn	r0, #0	@ D.33153,
	ldmfd	sp!, {r4, pc}	@
.L644:
	ldrsb	r1, [ip, #11]	@ D.33156, _8->s32DispFsNum
	cmp	r2, r1	@ PhyFsID, D.33156
	bge	.L640	@,
	mov	r1, #52	@ tmp134,
	mov	r0, lr	@ D.33153, InstID
	mla	r2, r1, r2, ip	@ tmp135, tmp134, PhyFsID, D.33154
	add	r2, r2, #30976	@ tmp137, tmp135,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L642:
	ldr	r3, .L645+4	@,
	movw	r2, #2740	@,
	ldr	r1, .L645+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33153,
	ldmfd	sp!, {r4, pc}	@
.L643:
	ldr	r3, .L645+12	@,
	movw	r2, #2741	@,
	ldr	r1, .L645+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33153,
	ldmfd	sp!, {r4, pc}	@
.L646:
	.align	2
.L645:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_SetStoreType, .-FSP_SetStoreType
	.align	2
	.global	FSP_GetStoreType
	.type	FSP_GetStoreType, %function
FSP_GetStoreType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L654	@,
	ldr	r3, .L656	@ tmp121,
	ldr	r3, [r3]	@ D.33160, s_pFspInst
	cmp	r3, #0	@ D.33160,
	beq	.L655	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L652	@,
	ldrsb	r1, [r3, #10]	@ D.33162, _7->s32DecFsNum
	cmp	r1, r2	@ D.33162, PhyFsID
	ble	.L652	@,
	mov	r1, #52	@ tmp126,
	mla	r2, r1, r2, r3	@ tmp127, tmp126, PhyFsID, D.33160
	add	r2, r2, #27648	@ tmp129, tmp127,
	ldr	r0, [r2, #156]	@ D.33159, _7->stDecFs[PhyFsID_12(D)].eStoreType
	ldmfd	sp!, {r4, pc}	@
.L652:
	mov	r0, #2	@ D.33159,
	ldmfd	sp!, {r4, pc}	@
.L654:
	ldr	r3, .L656+4	@,
	movw	r2, #2773	@,
	ldr	r1, .L656+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33159,
	ldmfd	sp!, {r4, pc}	@
.L655:
	ldr	r3, .L656+12	@,
	movw	r2, #2774	@,
	ldr	r1, .L656+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33159,
	ldmfd	sp!, {r4, pc}	@
.L657:
	.align	2
.L656:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_GetStoreType, .-FSP_GetStoreType
	.align	2
	.global	FSP_ClearLogicFs
	.type	FSP_ClearLogicFs, %function
FSP_ClearLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	bxne	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L670	@ tmp127,
	ldr	ip, [r6, r0, asl #2]	@ tmp128, s_pFspInst
	cmp	ip, #0	@ tmp128,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r5, r0	@ InstID, InstID
	mov	r2, #0	@,
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	bl	FSP_SetRef	@
	ldr	r2, [r6, r5, asl #2]	@ tmp130, s_pFspInst
	mov	r3, #432	@ tmp132,
	mla	r3, r3, r4, r2	@ tmp133, tmp132, LogicFrameID, tmp130
	ldrsb	r3, [r3, #97]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_11].stLogicFs[LogicFrameID_4(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_11].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r3, #3	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_11].stLogicFs[LogicFrameID_4(D)].s32DispState,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r4	@, LogicFrameID
	mov	r0, r5	@, InstID
	mov	r2, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetDisplay	@
.L671:
	.align	2
.L670:
	.word	.LANCHOR0
	.fnend
	.size	FSP_ClearLogicFs, .-FSP_ClearLogicFs
	.align	2
	.global	FSP_GetLogicFs
	.type	FSP_GetLogicFs, %function
FSP_GetLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	moveq	r3, #1	@ tmp126,
	movne	r3, #0	@ tmp126,
	bne	.L674	@,
	ldr	r3, .L676	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.33174, s_pFspInst
	cmp	r0, #0	@ D.33174,
	movne	r3, #432	@ tmp129,
	mlane	r1, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.33174
	addne	r0, r1, #96	@ D.33171, tmp130,
	bx	lr	@
.L674:
	mov	r0, r3	@ D.33171, tmp126
	bx	lr	@
.L677:
	.align	2
.L676:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetLogicFs, .-FSP_GetLogicFs
	.align	2
	.global	FSP_GetFsImagePtr
	.type	FSP_GetFsImagePtr, %function
FSP_GetFsImagePtr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	moveq	r3, #1	@ tmp125,
	movne	r3, #0	@ tmp125,
	bne	.L680	@,
	ldr	r3, .L682	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.33180, s_pFspInst
	cmp	r0, #0	@ D.33180,
	movne	r3, #432	@ tmp128,
	mlane	r1, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.33180
	addne	r0, r1, #104	@ D.33177, tmp129,
	bx	lr	@
.L680:
	mov	r0, r3	@ D.33177, tmp125
	bx	lr	@
.L683:
	.align	2
.L682:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetFsImagePtr, .-FSP_GetFsImagePtr
	.align	2
	.global	FSP_GetDispPhyFs
	.type	FSP_GetDispPhyFs, %function
FSP_GetDispPhyFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	moveq	r3, #1	@ tmp125,
	movne	r3, #0	@ tmp125,
	bne	.L686	@,
	ldr	r3, .L688	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.33186, s_pFspInst
	cmp	r0, #0	@ D.33186,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.33186
	ldrne	r0, [r0, #508]	@ D.33183, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	bx	lr	@
.L686:
	mov	r0, r3	@ D.33183, tmp125
	bx	lr	@
.L689:
	.align	2
.L688:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetDispPhyFs, .-FSP_GetDispPhyFs
	.align	2
	.global	FSP_GetPmvAddr
	.type	FSP_GetPmvAddr, %function
FSP_GetPmvAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	moveq	r3, #1	@ tmp125,
	movne	r3, #0	@ tmp125,
	bne	.L692	@,
	ldr	r3, .L694	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.33192, s_pFspInst
	cmp	r0, #0	@ D.33192,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.33192
	ldrne	r0, [r0, #516]	@ D.33189, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].PmvAddr
	bx	lr	@
.L692:
	mov	r0, r3	@ D.33189, tmp125
	bx	lr	@
.L695:
	.align	2
.L694:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetPmvAddr, .-FSP_GetPmvAddr
	.align	2
	.global	FSP_GetDecFsAddrTab
	.type	FSP_GetDecFsAddrTab, %function
FSP_GetDecFsAddrTab:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	ip, r0, #0	@ InstID, InstID
	bne	.L707	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L708	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L709	@,
	ldr	r3, .L711	@ tmp134,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3]	@ s_pFspInst, s_pFspInst
	cmp	lr, #0	@ s_pFspInst,
	beq	.L710	@,
	str	ip, [r1]	@ InstID, *DecFsNum_9(D)
	ldr	r0, [r3]	@ s_pFspInst, s_pFspInst
	ldrsb	r0, [r0, #10]	@ D.33208, _14->s32DecFsNum
	cmp	r0, #0	@ D.33208,
	str	r0, [r1]	@ D.33208, *DecFsNum_9(D)
	ldr	r3, [r3]	@ s_pFspInst, s_pFspInst
	add	r3, r3, #27648	@ pstDecFs, s_pFspInst,
	add	r3, r3, #148	@ pstDecFs, pstDecFs,
	ldrle	pc, [sp], #4	@
	sub	r2, r2, #4	@ ivtmp.515, DecFsAddrTab,
	mov	r0, ip	@ i, InstID
.L703:
	ldr	ip, [r3, #12]	@ D.33208, MEM[base: _34, offset: 12B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.513, ivtmp.513,
	str	ip, [r2, #4]!	@ D.33208, MEM[base: _38, offset: 0B]
	ldr	ip, [r1]	@ *DecFsNum_9(D), *DecFsNum_9(D)
	cmp	ip, r0	@ *DecFsNum_9(D), i
	bgt	.L703	@,
	ldr	pc, [sp], #4	@
.L707:
	ldr	r3, .L711+4	@,
	movw	r2, #2930	@,
	ldr	r1, .L711+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L708:
	ldr	r3, .L711+12	@,
	movw	r2, #2931	@,
	ldr	r1, .L711+8	@,
	b	dprint_vfmw	@
.L709:
	ldr	r3, .L711+16	@,
	movw	r2, #2932	@,
	ldr	r1, .L711+8	@,
	b	dprint_vfmw	@
.L710:
	ldr	r3, .L711+20	@,
	movw	r2, #2933	@,
	ldr	r1, .L711+8	@,
	ldr	lr, [sp], #4	@,
	b	dprint_vfmw	@
.L712:
	.align	2
.L711:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC45
	.word	.LC46
	.word	.LC2
	.fnend
	.size	FSP_GetDecFsAddrTab, .-FSP_GetDecFsAddrTab
	.align	2
	.global	FSP_GetPmvAddrTab
	.type	FSP_GetPmvAddrTab, %function
FSP_GetPmvAddrTab:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ InstID, InstID
	bne	.L723	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L724	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L725	@,
	ldr	ip, .L727	@ tmp133,
	ldr	ip, [ip]	@ D.33232, s_pFspInst
	cmp	ip, #0	@ D.33232,
	beq	.L726	@,
	ldrsb	r0, [ip, #13]	@ _11->s32PmvNum, _11->s32PmvNum
	str	r0, [r1]	@ _11->s32PmvNum, *PmvNum_9(D)
	ldrsb	r1, [ip, #13]	@ _11->s32PmvNum, _11->s32PmvNum
	cmp	r1, #0	@ _11->s32PmvNum,
	bxle	lr	@
	add	r1, ip, #34304	@ ivtmp.525, D.33232,
	sub	r2, r2, #4	@ ivtmp.534, PmvAddrTab,
	add	r1, r1, #252	@ ivtmp.525, ivtmp.525,
.L720:
	ldr	r0, [r1, #4]!	@ D.33234, MEM[base: _34, offset: 0B]
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ D.33234, MEM[base: _35, offset: 0B]
	ldrsb	r0, [ip, #13]	@ D.33234, _11->s32PmvNum
	cmp	r0, r3	@ D.33234, i
	bgt	.L720	@,
	bx	lr	@
.L723:
	ldr	r3, .L727+4	@,
	movw	r2, #2963	@,
	ldr	r1, .L727+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L724:
	ldr	r3, .L727+12	@,
	movw	r2, #2964	@,
	ldr	r1, .L727+8	@,
	b	dprint_vfmw	@
.L725:
	ldr	r3, .L727+16	@,
	movw	r2, #2965	@,
	ldr	r1, .L727+8	@,
	b	dprint_vfmw	@
.L726:
	ldr	r3, .L727+20	@,
	movw	r2, #2966	@,
	ldr	r1, .L727+8	@,
	b	dprint_vfmw	@
.L728:
	.align	2
.L727:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC47
	.word	.LC48
	.word	.LC2
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L733	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.33240, s_pFspInst
	cmp	r3, #0	@ D.33240,
	beq	.L732	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #24576	@ tmp128, D.33240,
	ldrb	lr, [r3, #10]	@ zero_extendqisi2	@ D.33241, _4->s32DecFsNum
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	mov	r0, r1	@ tmp138, pFspInstInfo
	add	r1, r3, #27648	@, D.33240,
	add	r1, r1, #148	@,,
	mov	r2, #3328	@,
	strb	lr, [ip, #1]	@ D.33241, pFspInstInfo_7(D)->s32DecFsNum
	ldr	lr, [r4, #3284]	@ _4->stDecFs[1].PhyAddr, _4->stDecFs[1].PhyAddr
	ldr	r4, [r4, #3232]	@ _4->stDecFs[0].PhyAddr, _4->stDecFs[0].PhyAddr
	rsb	lr, r4, lr	@ D.33242, _4->stDecFs[0].PhyAddr, _4->stDecFs[1].PhyAddr
	str	lr, [ip, #3336]	@ D.33242, pFspInstInfo_7(D)->s32DecFsSize
	ldrb	lr, [r3, #11]	@ zero_extendqisi2	@ D.33241, _4->s32DispFsNum
	strb	lr, [ip, #2]	@ D.33241, pFspInstInfo_7(D)->s32DispFsNum
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ D.33241, _4->s32TfFsNum
	strb	lr, [ip, #3]	@ D.33241, pFspInstInfo_7(D)->s32TfFsNum
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.33241, _4->s32InstID
	strb	lr, [ip, #4]	@ D.33241, pFspInstInfo_7(D)->s32InstID
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ D.33241, _4->s32PmvNum
	strb	r3, [r0], #8	@ D.33241, pFspInstInfo_7(D)->s32PmvNum
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L732:
	mov	r0, r3	@, D.33240
	movw	r2, #2983	@,
	ldr	r3, .L733+4	@,
	ldr	r1, .L733+8	@,
	b	dprint_vfmw	@
.L734:
	.align	2
.L733:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC1
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #0	@ InstID, InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L747	@,
	ldr	r3, .L749	@ tmp122,
	ldr	r3, [r3]	@ D.33258, s_pFspInst
	cmp	r3, #0	@ D.33258,
	movne	r0, r2	@ i, InstID
	beq	.L748	@,
.L740:
	ldr	r2, [r3, #504]	@ D.33259, MEM[base: _19, offset: 504B]
	add	r3, r3, #432	@ ivtmp.549, ivtmp.549,
	cmp	r2, #0	@ D.33259,
	beq	.L739	@,
	ldr	r2, [r2, #12]	@ _10->PhyAddr, _10->PhyAddr
	cmp	r2, r1	@ _10->PhyAddr, PhyAddr
	ldmeqfd	sp!, {r4, pc}	@
.L739:
	add	r0, r0, #1	@ i, i,
	cmp	r0, #64	@ i,
	bne	.L740	@,
	mvn	r0, #0	@ D.33257,
	ldmfd	sp!, {r4, pc}	@
.L747:
	ldr	r3, .L749+4	@,
	movw	r2, #3004	@,
	ldr	r1, .L749+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33257,
	ldmfd	sp!, {r4, pc}	@
.L748:
	ldr	r3, .L749+12	@,
	movw	r2, #3005	@,
	ldr	r1, .L749+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33257,
	ldmfd	sp!, {r4, pc}	@
.L750:
	.align	2
.L749:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r8, r0, #0	@ InstID, InstID
	bne	.L783	@,
	ldr	r3, .L786	@ tmp191,
	ldr	r7, [r3]	@ D.33294, s_pFspInst
	cmp	r7, #0	@ D.33294,
	beq	.L784	@,
	ldr	r1, .L786+4	@,
	mov	r4, r8	@ ivtmp.574, InstID
	bl	dprint_vfmw	@
	ldr	r3, [r7, #4]	@, _17->eFspInstState
	ldr	r2, .L786+8	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	mov	r5, r7	@ ivtmp.578, D.33294
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #60]	@, _17->stInstCfg.s32DispLoopEnable
	ldr	r2, .L786+16	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	mov	r6, #1	@ ivtmp.575,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #61]	@, _17->stInstCfg.s32TfEnable
	ldr	r2, .L786+20	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #62]	@, _17->stInstCfg.s32RprEnable
	ldr	r2, .L786+24	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #72]	@, _17->stInstCfg.s32DecFsWidth
	ldr	r2, .L786+28	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #76]	@, _17->stInstCfg.s32DecFsHeight
	ldr	r2, .L786+32	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #88]	@, _17->stInstCfg.s32DispFsWidth
	ldr	r2, .L786+36	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #92]	@, _17->stInstCfg.s32DispFsHeight
	ldr	r2, .L786+40	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #65]	@, _17->stInstCfg.s32ExpectedDecFsNum
	ldr	r2, .L786+44	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #66]	@, _17->stInstCfg.s32ExpectedTfFsNum
	ldr	r2, .L786+48	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #67]	@, _17->stInstCfg.s32ExpectedDispFsNum
	ldr	r2, .L786+52	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #68]	@, _17->stInstCfg.s32ExpectedPmvNum
	ldr	r2, .L786+56	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@, _17->s32DecFsNum
	ldr	r2, .L786+60	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@, _17->s32DispFsNum
	ldr	r2, .L786+64	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #12]	@, _17->s32TfFsNum
	ldr	r2, .L786+68	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@, _17->s32PmvNum
	ldr	r2, .L786+72	@,
	mov	r0, r8	@, InstID
	ldr	r1, .L786+12	@,
	bl	dprint_vfmw	@
	ldr	r1, .L786+76	@,
	mov	r0, r8	@, InstID
	bl	dprint_vfmw	@
	b	.L754	@
.L756:
	ldrsb	r3, [r5, #97]	@, MEM[base: _145, offset: 97B]
	mov	r0, #0	@,
	ldrsb	r2, [r5, #96]	@, MEM[base: _145, offset: 96B]
	ldr	r1, .L786+80	@,
	bl	dprint_vfmw	@
	cmp	r6, #63	@ ivtmp.575,
	bgt	.L785	@,
.L757:
	add	r4, r4, #1	@ ivtmp.574, ivtmp.574,
	add	r6, r6, #1	@ ivtmp.575, ivtmp.575,
	add	r5, r5, #432	@ ivtmp.578, ivtmp.578,
.L754:
	cmp	r4, #0	@ ivtmp.574,
	beq	.L755	@,
	ands	r0, r4, #7	@ D.33293, ivtmp.574,
	bne	.L756	@,
	ldr	r1, .L786+84	@,
	bl	dprint_vfmw	@
	b	.L756	@
.L785:
	ldr	r1, .L786+88	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@ _17->s32DecFsNum, _17->s32DecFsNum
	cmp	r3, #0	@ _17->s32DecFsNum,
	addgt	r5, r7, #27648	@ ivtmp.570, D.33294,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #148	@ ivtmp.570, ivtmp.570,
	ble	.L764	@,
.L761:
	ldrsb	r3, [r5, #2]	@, MEM[base: _105, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [r5]	@, MEM[base: _105, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r1, .L786+80	@,
	add	r5, r5, #52	@ ivtmp.570, ivtmp.570,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@ D.33293, _17->s32DecFsNum
	cmp	r3, r4	@ D.33293, i
	ble	.L764	@,
	cmp	r4, #0	@ i,
	beq	.L761	@,
	ands	r0, r4, #7	@ D.33293, i,
	bne	.L761	@,
	ldr	r1, .L786+84	@,
	bl	dprint_vfmw	@
	b	.L761	@
.L764:
	ldr	r1, .L786+92	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@ _17->s32DispFsNum, _17->s32DispFsNum
	cmp	r3, #0	@ _17->s32DispFsNum,
	addgt	r5, r7, #30976	@ ivtmp.564, D.33294,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #148	@ ivtmp.564, ivtmp.564,
	ble	.L760	@,
.L767:
	ldrsb	r3, [r5, #2]	@, MEM[base: _121, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [r5]	@, MEM[base: _121, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r1, .L786+80	@,
	add	r5, r5, #52	@ ivtmp.564, ivtmp.564,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@ D.33293, _17->s32DispFsNum
	cmp	r3, r4	@ D.33293, i
	ble	.L760	@,
	cmp	r4, #0	@ i,
	beq	.L767	@,
	ands	r0, r4, #7	@ D.33293, i,
	bne	.L767	@,
	ldr	r1, .L786+84	@,
	bl	dprint_vfmw	@
	b	.L767	@
.L760:
	ldr	r1, .L786+96	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@ _17->s32PmvNum, _17->s32PmvNum
	cmp	r3, #0	@ _17->s32PmvNum,
	addgt	r5, r7, #13	@ ivtmp.555, D.33294,
	movgt	r4, #0	@ i,
	ble	.L766	@,
.L770:
	ldrsb	r2, [r5, #1]!	@, MEM[base: _130, offset: 0B]
	mov	r0, #0	@,
	ldr	r1, .L786+100	@,
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@ D.33293, _17->s32PmvNum
	cmp	r3, r4	@ D.33293, i
	ble	.L766	@,
	cmp	r4, #0	@ i,
	beq	.L770	@,
	ands	r0, r4, #15	@ D.33293, i,
	bne	.L770	@,
	ldr	r1, .L786+84	@,
	bl	dprint_vfmw	@
	b	.L770	@
.L766:
	ldr	r1, .L786+104	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L783:
	ldr	r3, .L786+108	@,
	movw	r2, #3036	@,
	ldr	r1, .L786+112	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L784:
	ldr	r3, .L786+116	@,
	movw	r2, #3037	@,
	ldr	r1, .L786+112	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L755:
	ldrsb	r3, [r5, #97]	@, MEM[base: _140, offset: 97B]
	mov	r0, r4	@, ivtmp.574
	ldrsb	r2, [r5, #96]	@, MEM[base: _140, offset: 96B]
	ldr	r1, .L786+80	@,
	bl	dprint_vfmw	@
	b	.L757	@
.L787:
	.align	2
.L786:
	.word	.LANCHOR0
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC69
	.word	.LC68
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC74
	.word	.LC73
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r4, r0, #0	@ InstID, InstID
	.pad #52
	sub	sp, sp, #52	@,,
	bne	.L859	@,
	ldr	r7, .L869	@ tmp648,
	ldr	r3, [r7]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L860	@,
	ldr	r6, .L869+4	@ tmp647,
	add	r0, r7, #32	@, tmp648,
	mov	r8, r1	@ NeedPhyFs, NeedPhyFs
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r7]	@ pstInst, s_pFspInst
	ldr	r1, [r6]	@ D.33397, s_pstVfmwChan
	mov	r3, r5	@ ivtmp.639, pstInst
	ldr	r0, [r1, #1580]	@ D.33390, _74->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L795	@
.L792:
	ldrsb	r2, [r3, #96]	@ MEM[base: _334, offset: 96B], MEM[base: _334, offset: 96B]
	cmp	r2, #0	@ MEM[base: _334, offset: 96B],
	bne	.L793	@,
	ldrsb	r2, [r3, #97]	@ MEM[base: _334, offset: 97B], MEM[base: _334, offset: 97B]
	cmp	r2, #0	@ MEM[base: _334, offset: 97B],
	beq	.L861	@,
.L793:
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.639, ivtmp.639,
	cmp	r4, #64	@ i,
	beq	.L796	@,
.L795:
	cmp	r0, #1	@ D.33390,
	bne	.L792	@,
	mov	r2, r4, asl #4	@ D.33393, i,
	add	r2, r2, #216064	@ D.33393, D.33393,
	add	r2, r2, #360	@ D.33393, D.33393,
	ldr	r2, [r1, r2]	@ MEM[base: _338, offset: 0B], MEM[base: _338, offset: 0B]
	cmp	r2, #0	@ MEM[base: _338, offset: 0B],
	beq	.L792	@,
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.639, ivtmp.639,
	cmp	r4, #64	@ i,
	bne	.L795	@,
.L796:
	ldr	r1, .L869+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r0, .L869+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.33390,
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L861:
	mov	r9, #432	@ tmp306,
	mul	r9, r9, r4	@ tmp305, tmp306, i
	add	lr, r5, r9	@ tmp310, pstInst, tmp305
	add	r9, r9, #96	@ tmp307, tmp305,
	add	ip, lr, #96	@ tmp311, tmp310,
	adds	r9, r5, r9	@ pstLogicFs, pstInst, tmp307
	strb	r4, [ip, #3]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32LogicFsID
	strb	r2, [ip, #2]	@ MEM[base: _334, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].IsDummyFs
	beq	.L796	@,
	cmp	r8, #0	@ NeedPhyFs,
	add	r0, lr, #504	@ tmp325, tmp310,
	add	r8, lr, #512	@ tmp335, tmp310,
	str	r2, [lr, #504]	@ MEM[base: _334, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	str	r2, [r0, #4]	@ MEM[base: _334, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	str	r2, [lr, #512]	@ MEM[base: _334, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstTfOutFs
	str	r2, [r8, #4]	@ MEM[base: _334, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	beq	.L797	@,
	ldrsb	ip, [r5, #10]	@ D.33396, pstInst_27->s32DecFsNum
	cmp	ip, #0	@ D.33396,
	ldrle	r8, [lr, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	ble	.L799	@,
	add	r3, r5, #27648	@ ivtmp.625, pstInst,
	ldr	lr, [r1, #1580]	@ D.33390, _74->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r3, r3, #148	@ ivtmp.625, ivtmp.625,
	b	.L803	@
.L801:
	ldrsb	r0, [r3]	@ MEM[base: _325, offset: 0B], MEM[base: _325, offset: 0B]
	cmp	r0, #0	@ MEM[base: _325, offset: 0B],
	bne	.L802	@,
	ldrsb	r0, [r3, #2]	@ MEM[base: _325, offset: 2B], MEM[base: _325, offset: 2B]
	cmp	r0, #0	@ MEM[base: _325, offset: 2B],
	beq	.L862	@,
.L802:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.625, ivtmp.625,
	cmp	r2, ip	@ i, D.33396
	beq	.L863	@,
.L803:
	cmp	lr, #1	@ D.33390,
	bne	.L801	@,
	mov	r0, r2, asl #4	@ D.33393, i,
	add	r0, r0, #216064	@ D.33393, D.33393,
	add	r0, r0, #360	@ D.33393, D.33393,
	ldr	r0, [r1, r0]	@ MEM[base: _329, offset: 0B], MEM[base: _329, offset: 0B]
	cmp	r0, #0	@ MEM[base: _329, offset: 0B],
	beq	.L801	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.625, ivtmp.625,
	cmp	r2, ip	@ i, D.33396
	bne	.L803	@,
.L863:
	mov	r3, #432	@ tmp397,
	mla	r3, r3, r4, r5	@ tmp398, tmp397, i, pstInst
	ldr	r8, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
.L799:
	cmp	r8, #0	@ D.33388,
	beq	.L864	@,
.L804:
	mov	r3, #432	@ tmp419,
	add	r2, r5, #34304	@ D.33388, pstInst,
	mla	r3, r3, r4, r5	@ tmp420, tmp419, i, pstInst
	add	r2, r2, #148	@ D.33388, D.33388,
	add	r0, r3, #512	@ tmp421, tmp420,
	str	r2, [r3, #512]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstTfOutFs
	ldrsb	r1, [r5, #13]	@ D.33393, pstInst_27->s32PmvNum
	cmp	r1, #0	@ D.33393,
	ble	.L812	@,
	ldrsb	r2, [r5, #14]	@ pstInst_27->IsPmvInUse, pstInst_27->IsPmvInUse
	cmp	r2, #0	@ pstInst_27->IsPmvInUse,
	addne	r2, r5, #14	@ ivtmp.604, pstInst,
	movne	r3, #0	@ i,
	bne	.L816	@,
	b	.L865	@
.L819:
	ldrsb	r0, [r2, #1]!	@ MEM[base: _286, offset: 0B], MEM[base: _286, offset: 0B]
	cmp	r0, #0	@ MEM[base: _286, offset: 0B],
	beq	.L866	@,
.L816:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.33393
	bne	.L819	@,
	add	ip, r5, #32768	@ tmp649, pstInst,
	cmp	r1, #0	@ D.33393,
	ldr	lr, [ip, #1788]	@ D.33390, pstInst_27->s32HalfPmvOffset
	ble	.L821	@,
.L817:
	add	r2, r1, #13	@ D.33393, D.33393,
	add	r3, r5, #13	@ ivtmp.594, pstInst,
	add	r2, r5, r2	@ D.33400, pstInst, D.33393
	mov	r1, #0	@ tmp654,
.L820:
	strb	r1, [r3, #1]!	@ tmp654, MEM[base: _287, offset: 0B]
	cmp	r3, r2	@ ivtmp.594, D.33400
	bne	.L820	@,
.L821:
	mov	r3, #432	@ tmp445,
	mov	r2, #0	@ tmp448,
	mla	r3, r3, r4, r5	@ tmp446, tmp445, i, pstInst
	mov	r0, r2	@, tmp448
	ldr	r1, .L869+16	@,
	strb	r2, [r3, #100]	@ tmp448, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvIdc
	ldr	r2, [ip, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	lr, [r3, #520]	@ D.33390, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].HalfPmvOffset
	str	r2, [r3, #516]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	bl	dprint_vfmw	@
.L812:
	ldrsb	r3, [r5, #60]	@ pstInst_27->stInstCfg.s32DispLoopEnable, pstInst_27->stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ pstInst_27->stInstCfg.s32DispLoopEnable,
	beq	.L822	@,
	ldrsb	ip, [r5, #11]	@ D.33396, pstInst_27->s32DispFsNum
	cmp	ip, #0	@ D.33396,
	ble	.L853	@,
	add	r3, r5, #30976	@ D.33388, pstInst,
	add	r3, r3, #148	@ D.33388, D.33388,
	cmp	r3, #0	@ D.33388,
	beq	.L836	@,
	rsb	lr, r3, #30976	@ D.33393, ivtmp.589,
	mov	r8, r3	@ D.33388, ivtmp.589
	add	lr, lr, #200	@ D.33393, D.33393,
	mov	r1, #0	@ i,
	b	.L826	@
.L829:
	cmp	r3, #0	@ ivtmp.589,
	mov	r8, r3	@ D.33388, ivtmp.589
	beq	.L825	@,
	mov	r8, r2	@ D.33388, D.33392
.L826:
	ldrsb	r0, [r3, #2]	@ MEM[base: _3, offset: 2B], MEM[base: _3, offset: 2B]
	add	r2, r8, lr	@ D.33393, D.33388, D.33393
	add	r1, r1, #1	@ i, i,
	add	r2, r5, r2	@ D.33392, pstInst, D.33393
	cmp	r0, #0	@ MEM[base: _3, offset: 2B],
	bne	.L828	@,
	ldrsb	r0, [r3]	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r0, #0	@ MEM[base: _3, offset: 0B],
	bne	.L828	@,
	ldrsb	r0, [r3, #1]	@ MEM[base: _3, offset: 1B], MEM[base: _3, offset: 1B]
	cmp	r0, #0	@ MEM[base: _3, offset: 1B],
	beq	.L825	@,
.L828:
	cmp	r1, ip	@ i, D.33396
	add	r3, r3, #52	@ ivtmp.589, ivtmp.589,
	bne	.L829	@,
.L853:
	mov	r3, #432	@ tmp492,
	mla	r3, r3, r4, r5	@ tmp493, tmp492, i, pstInst
	ldr	r8, [r3, #508]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
.L824:
	cmp	r8, #0	@ D.33388,
	bne	.L827	@,
	ldr	r1, .L869+20	@,
	mov	r0, r8	@, D.33388
	bl	dprint_vfmw	@
	add	r3, sp, #16	@,,
	add	r2, sp, #20	@,,
	add	r1, sp, #12	@,,
	mov	r0, r8	@, D.33388
	str	r8, [sp, #16]	@ D.33388, NewNum
	str	r8, [sp, #20]	@ D.33388, ReadNum
	str	r8, [sp, #12]	@ D.33388, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	ldr	r3, [sp, #20]	@ ReadNum, ReadNum
	ldr	r1, [sp, #16]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.33396, RefNum, ReadNum
	ldrsb	r2, [r5, #11]	@ D.33396, pstInst_27->s32DispFsNum
	add	r3, r3, r1	@ D.33396, D.33396, NewNum
	add	r3, r3, #2	@ D.33396, D.33396,
	cmp	r3, r2	@ D.33396, D.33396
	bge	.L830	@,
	ldr	r1, .L869+24	@,
	mov	r0, r8	@, D.33388
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #11]	@ pstInst_27->s32DispFsNum, pstInst_27->s32DispFsNum
	ldr	ip, [sp, #16]	@ NewNum, NewNum
	mov	r0, r8	@, D.33388
	ldr	r3, [sp, #20]	@ ReadNum, ReadNum
	str	r1, [sp, #4]	@ pstInst_27->s32DispFsNum,
	ldr	r2, [sp, #12]	@ RefNum, RefNum
	ldr	r1, .L869+28	@,
	str	ip, [sp]	@ NewNum,
	bl	dprint_vfmw	@
	mov	r0, r8	@, D.33388
	bl	FSP_PrintContext	@
.L830:
	ldr	r0, .L869+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.33390,
	b	.L849	@
.L797:
	add	r2, r5, #32768	@ tmp364, pstInst,
	add	r3, r5, #27648	@ D.33388, pstInst,
	add	r3, r3, #96	@ D.33388, D.33388,
	str	r3, [lr, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	str	r3, [r0, #4]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	mov	r1, #1	@ tmp378,
	str	r3, [lr, #512]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstTfOutFs
	ldr	r3, [r2, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	r3, [r8, #4]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ pstInst_27->s32PmvNum, pstInst_27->s32PmvNum
	strb	r1, [ip, #2]	@ tmp378, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].IsDummyFs
	sub	r3, r3, #1	@ tmp372, pstInst_27->s32PmvNum,
	strb	r3, [ip, #4]	@ tmp372, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvIdc
.L800:
	mov	r0, #432	@ tmp538,
	mov	r2, #1	@ tmp541,
	mul	r4, r0, r4	@ tmp537, tmp538, i
	mov	r1, #392	@,
	add	r3, r5, r4	@ tmp539, pstInst, tmp537
	add	r0, r4, #104	@ tmp586, tmp537,
	add	r7, r3, #96	@ tmp540, tmp539,
	add	r0, r5, r0	@, pstInst, tmp586
	ldr	lr, [r3, #508]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	strb	r2, [r3, #97]	@ tmp541, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32DispState
	strb	r2, [lr, #2]	@ tmp541, _151->DispState
	str	r2, [r3, #500]	@ tmp541, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].eLfsPmvState
	ldr	lr, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	ldr	r2, [r5, #36]	@ D.33399, pstInst_27->u32InstTick
	str	r2, [r3, #496]	@ D.33399, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].u32Tick
	str	r2, [lr, #44]	@ D.33399, _156->u32Tick
	ldr	lr, [r3, #496]	@ D.33399, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].u32Tick
	ldr	r2, [r3, #508]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	str	lr, [r2, #44]	@ D.33399, _159->u32Tick
	ldr	r2, [r5, #36]	@ pstInst_27->u32InstTick, pstInst_27->u32InstTick
	add	r2, r2, #1	@ D.33399, pstInst_27->u32InstTick,
	str	r2, [r5, #36]	@ D.33399, pstInst_27->u32InstTick
	ldr	r4, [r3, #508]	@ pstDispFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	ldr	r5, [r3, #504]	@ pstDecFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	ldr	r8, [r3, #512]	@ pstTfFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstTfOutFs
	bl	__memzero	@
	ldrsb	r3, [r7, #3]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32LogicFsID, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32LogicFsID
	str	r3, [r9, #184]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32LogicFsID, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_id
	ldr	r3, [r5, #24]	@ pstDecFs_165->FsWidth, pstDecFs_165->FsWidth
	str	r3, [r9, #152]	@ pstDecFs_165->FsWidth, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_width
	ldr	r3, [r5, #28]	@ pstDecFs_165->FsHeight, pstDecFs_165->FsHeight
	str	r3, [r9, #156]	@ pstDecFs_165->FsHeight, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_height
	ldr	r3, [r4, #20]	@ pstDispFs_166->Stride, pstDispFs_166->Stride
	str	r3, [r9, #180]	@ pstDispFs_166->Stride, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_stride
	ldr	r2, [r5, #12]	@ D.33396, pstDecFs_165->PhyAddr
	str	r2, [r9, #112]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_phy_addr
	mov	r0, r2	@, D.33396
	ldr	r3, [r5, #32]	@ pstDecFs_165->ChromOffset, pstDecFs_165->ChromOffset
	add	r3, r3, r2	@ D.33399, pstDecFs_165->ChromOffset, D.33396
	str	r3, [r9, #116]	@ D.33399, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #40]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_vir_addr
	ldr	r0, [r9, #116]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #44]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.33396, pstDispFs_166->PhyAddr
	str	r2, [r9, #96]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].top_luma_phy_addr
	ldr	r3, [r4, #32]	@ pstDispFs_166->ChromOffset, pstDispFs_166->ChromOffset
	add	r3, r2, r3	@ D.33396, D.33396, pstDispFs_166->ChromOffset
	str	r3, [r9, #100]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ pstDispFs_166->Stride, pstDispFs_166->Stride
	add	r2, r2, r1	@ D.33396, D.33396, pstDispFs_166->Stride
	str	r2, [r9, #104]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ pstDispFs_166->Stride, pstDispFs_166->Stride
	add	r3, r3, r2	@ D.33396, D.33396, pstDispFs_166->Stride
	str	r3, [r9, #108]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ D.33396, pstDispFs_166->PhyAddr
	str	r2, [r9, #128]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_2d_phy_addr
	mov	r0, r2	@, D.33396
	ldr	r3, [r4, #32]	@ pstDispFs_166->ChromOffset, pstDispFs_166->ChromOffset
	add	r3, r3, r2	@ D.33399, pstDispFs_166->ChromOffset, D.33396
	str	r3, [r9, #132]	@ D.33399, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #56]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_2d_vir_addr
	ldr	r0, [r9, #132]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #60]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_vir_addr
	ldr	r2, [r8, #12]	@ D.33396, pstTfFs_167->PhyAddr
	str	r2, [r9, #120]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_tf_phy_addr
	mov	r0, r2	@, D.33396
	ldr	r3, [r5, #32]	@ pstDecFs_165->ChromOffset, pstDecFs_165->ChromOffset
	add	r3, r3, r2	@ D.33399, pstDecFs_165->ChromOffset, D.33396
	str	r3, [r9, #124]	@ D.33399, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #48]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_tf_vir_addr
	ldr	r0, [r9, #124]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r3, #0	@ tmp610,
	add	r2, r2, #217088	@ tmp617, s_pstVfmwChan,
	str	r0, [r9, #52]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_vir_addr
	ldr	r1, [r5, #48]	@ D.33396, pstDecFs_165->ImgSize
	str	r3, [r9, #384]	@ tmp610, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32IsLastFrame
	str	r3, [r9, #372]	@ tmp610, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32Is1D
	str	r1, [r9, #368]	@ D.33396, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].ImgSize
	str	r3, [r9, #376]	@ tmp610, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].is_processed_by_dnr
	str	r3, [r9, #380]	@ tmp610, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32Circumrotate
	ldr	r3, [r2, #420]	@ D.33399, _247->u32ChanTick
	ldr	r0, .L869+12	@,
	str	r3, [r9, #392]	@ D.33399, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.33390, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].s32LogicFsID
.L849:
	add	sp, sp, #52	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L822:
	mov	r3, #432	@ tmp474,
	mla	r3, r3, r4, r5	@ tmp475, tmp474, i, pstInst
	ldr	r2, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	str	r2, [r3, #508]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
.L827:
	ldr	r3, [r7, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	ldr	r7, .L869	@ tmp517,
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L800	@,
	ldr	r3, [r7, #20]	@ D.33401, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.33401,
	beq	.L867	@,
	add	r1, sp, #20	@,,
	mov	r0, #0	@,
	blx	r3	@ D.33401
	cmp	r0, #0	@,
	bne	.L832	@,
	ldr	r8, [sp, #20]	@ D.33396, stInfo.stFrameInfo.PhyAddr
	cmp	r8, #0	@ D.33396,
	beq	.L868	@,
	mov	r3, #432	@ tmp529,
	mla	r3, r3, r4, r5	@ tmp530, tmp529, i, pstInst
	ldr	r2, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	str	r8, [r2, #12]	@ D.33396, _134->PhyAddr
	ldr	r2, [sp, #36]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r2, [r3, #516]	@ stInfo.stPmvInfo.PhyAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	b	.L800	@
.L866:
	mov	r2, #432	@ tmp428,
	add	r0, r3, #8640	@ tmp436, i,
	mla	r2, r2, r4, r5	@ tmp429, tmp428, i, pstInst
	cmp	r3, r1	@ i, D.33393
	add	ip, r5, #32768	@ tmp649, pstInst,
	strb	r3, [r2, #100]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvIdc
	ldr	r3, [r5, r0, asl #2]	@ tmp437, pstInst_27->PmvAddr
	str	r3, [r2, #516]	@ tmp437, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	ldr	lr, [ip, #1788]	@ D.33390, pstInst_27->s32HalfPmvOffset
	str	lr, [r2, #520]	@ D.33390, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].HalfPmvOffset
	blt	.L812	@,
	b	.L817	@
.L862:
	mov	r3, #432	@ tmp393,
	mov	r8, #52	@ tmp388,
	mla	r3, r3, r4, r5	@ tmp394, tmp393, i, pstInst
	mla	r2, r8, r2, r5	@ tmp390, tmp388, i, pstInst
	add	r8, r2, #27648	@ D.33388, tmp390,
	add	r8, r8, #148	@ D.33388, D.33388,
	str	r8, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	b	.L799	@
.L836:
	mov	r8, r3	@ D.33388, D.33388
.L825:
	mov	r3, #432	@ tmp488,
	mla	r3, r3, r4, r5	@ tmp489, tmp488, i, pstInst
	str	r8, [r3, #508]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDispOutFs
	b	.L824	@
.L867:
	mov	r0, r3	@, D.33401
	ldr	r1, .L869+32	@,
	bl	dprint_vfmw	@
.L832:
	ldr	r0, .L869+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, .L869+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33390,
	b	.L849	@
.L864:
	ldr	r1, .L869+40	@,
	mov	r0, r8	@, D.33388
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@ pstInst_27->s32DecFsNum, pstInst_27->s32DecFsNum
	add	r10, r5, #27648	@ pstPhyFs, pstInst,
	add	r10, r10, #148	@ pstPhyFs, pstPhyFs,
	cmp	r3, #0	@ pstInst_27->s32DecFsNum,
	movgt	fp, r10	@ ivtmp.619, pstPhyFs
	ble	.L809	@,
.L808:
	ldrsb	r3, [fp, #2]	@ D.33396, MEM[base: _318, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [fp], #52	@, MEM[base: _318, offset: 0B]
	add	r8, r8, #1	@ i, i,
	ldr	r1, .L869+44	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@ D.33396, pstInst_27->s32DecFsNum
	cmp	r3, r8	@ D.33396, i
	bgt	.L808	@,
.L809:
	ldr	r1, .L869+48	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	lr, [r5, #10]	@ D.33396, pstInst_27->s32DecFsNum
	mov	r2, r10	@ pstPhyFs, pstPhyFs
	cmp	lr, #0	@ D.33396,
	movgt	r0, #0	@ i,
	mvngt	ip, #0	@ LeastTick,
	movgt	r3, r0	@ i, i
	ble	.L807	@,
.L806:
	ldr	r1, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_309, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	r1, ip	@ LeastTick, LeastTick
	movcc	r0, r3	@ i, i
	add	r3, r3, #1	@ i, i,
	movcc	ip, r1	@ LeastTick, LeastTick
	cmp	lr, r3	@ D.33396, i
	bne	.L806	@,
	mov	r10, #52	@ tmp410,
	mla	r10, r10, r0, r5	@ tmp412, tmp410, i, pstInst
	add	r10, r10, #27648	@ D.33388, tmp412,
	add	r10, r10, #148	@ D.33388, D.33388,
.L807:
	mov	r3, #432	@ tmp415,
	mla	r3, r3, r4, r5	@ tmp416, tmp415, i, pstInst
	str	r10, [r3, #504]	@ D.33388, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].pstDecodeFs
	b	.L804	@
.L859:
	ldr	r3, .L869+52	@,
	movw	r2, #2209	@,
	ldr	r1, .L869+56	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33390,
	b	.L849	@
.L865:
	add	r1, r5, #32768	@ tmp638, pstInst,
	strb	r2, [r3, #100]	@ pstInst_27->IsPmvInUse, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvIdc
	ldr	r2, [r1, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	r2, [r0, #4]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].PmvAddr
	ldr	r2, [r1, #1788]	@ pstInst_27->s32HalfPmvOffset, pstInst_27->s32HalfPmvOffset
	str	r2, [r3, #520]	@ pstInst_27->s32HalfPmvOffset, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_14].HalfPmvOffset
	b	.L812	@
.L860:
	ldr	r3, .L869+60	@,
	movw	r2, #2210	@,
	ldr	r1, .L869+56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33390,
	b	.L849	@
.L868:
	add	r0, r7, #32	@, tmp517,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r8	@, D.33396
	ldr	r1, .L869+64	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33390,
	b	.L849	@
.L870:
	.align	2
.L869:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LC75
	.word	.LANCHOR0+32
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC27
	.word	.LC81
	.word	.LC76
	.word	.LC69
	.word	.LC68
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC82
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L879	@ tmp119,
	ldr	ip, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	add	r3, ip, #27136	@ tmp124, pstInst,
	ldrsb	r3, [r3, #177]	@ pstInst_5->stLogicFs[63].s32DispState, pstInst_5->stLogicFs[63].s32DispState
	cmp	r3, #0	@ pstInst_5->stLogicFs[63].s32DispState,
	beq	.L876	@,
	add	r2, ip, #26880	@ ivtmp.651, pstInst,
	mov	r3, #62	@ ret_id,
	add	r2, r2, #1	@ ivtmp.651, ivtmp.651,
	b	.L875	@
.L873:
	subs	r3, r3, #1	@ ret_id, ret_id,
	bcc	.L878	@,
.L875:
	ldrsb	r1, [r2]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	sub	r2, r2, #432	@ ivtmp.651, ivtmp.651,
	cmp	r1, #0	@ MEM[base: _19, offset: 0B],
	bne	.L873	@,
.L874:
	mov	r2, #432	@ tmp128,
	mov	r0, r3	@, ret_id
	mla	r3, r2, r3, ip	@ tmp129, tmp128, ret_id, pstInst
	mov	r2, #0	@ tmp131,
	str	r2, [r3, #504]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDecodeFs
	str	r2, [r3, #508]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDispOutFs
	bx	lr	@
.L878:
	mov	r3, #0	@ ret_id,
	b	.L874	@
.L876:
	mov	r3, #63	@ ret_id,
	b	.L874	@
.L880:
	.align	2
.L879:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetNullLogicFs, .-FSP_GetNullLogicFs
	.align	2
	.global	FSP_GetFspType
	.type	FSP_GetFspType, %function
FSP_GetFspType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L886	@,
	ldr	r3, .L888	@ tmp119,
	ldr	r3, [r3]	@ D.33427, s_pFspInst
	cmp	r3, #0	@ D.33427,
	beq	.L887	@,
	ldr	r0, [r3, #4]	@ _6->eFspInstState, _6->eFspInstState
	subs	r0, r0, #1	@ D.33426, _6->eFspInstState,
	mvnne	r0, #0	@ D.33426,
	ldmfd	sp!, {r4, pc}	@
.L886:
	ldr	r3, .L888+4	@,
	movw	r2, #3293	@,
	ldr	r1, .L888+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33426,
	ldmfd	sp!, {r4, pc}	@
.L887:
	ldr	r3, .L888+12	@,
	movw	r2, #3294	@,
	ldr	r1, .L888+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33426,
	ldmfd	sp!, {r4, pc}	@
.L889:
	.align	2
.L888:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.global	g_SpinLock_fsp
	.global	s_FspVoQue
	.global	s_pFspInst
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.30680, %object
	.size	__func__.30680, 35
__func__.30680:
	.ascii	"FSP_NoneDnrSwitchToDnrSpecialCase1\000"
	.space	1
	.type	__func__.30646, %object
	.size	__func__.30646, 31
__func__.30646:
	.ascii	"FSP_NoneDnrSwitchToDnrNormCase\000"
	.space	1
	.type	__func__.30699, %object
	.size	__func__.30699, 23
__func__.30699:
	.ascii	"FSP_NoneDnrSwitchToDnr\000"
	.space	1
	.type	__func__.30578, %object
	.size	__func__.30578, 14
__func__.30578:
	.ascii	"FSP_EnableDnr\000"
	.space	2
	.type	__func__.30712, %object
	.size	__func__.30712, 24
__func__.30712:
	.ascii	"FSP_ConfigDSDFrameArray\000"
	.type	__func__.30742, %object
	.size	__func__.30742, 22
__func__.30742:
	.ascii	"FSP_PartitionFsMemory\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"InstID out of range\000"
.LC1:
	.ascii	"fsp.c,L%d: %s\012\000"
	.space	1
.LC2:
	.ascii	"fsp is not inited\000"
	.space	2
.LC3:
	.ascii	"Fsp arrange failed, return %d\012\000"
	.space	1
.LC4:
	.ascii	"disp fs(=%d) less than expected(=%d+%d)!\012\000"
	.space	2
.LC5:
	.ascii	"arrange ret %d, min = %d, actual = %d\012\000"
	.space	1
.LC6:
	.ascii	"FSP InstID out of range\000"
.LC7:
	.ascii	"VoUsingFrameArray == NULL\000"
	.space	2
.LC8:
	.ascii	"%s, %d\012\000"
.LC9:
	.ascii	"%s, %d, i: %d, UsingNum: %d, VdhTotalMemUse: %#x\012"
	.ascii	"\000"
	.space	2
.LC10:
	.ascii	"%s, %d, UsedMemSize: %d, VdhTotalMemUse: %d, MemSiz"
	.ascii	"e: %d\012\000"
	.space	2
.LC11:
	.ascii	"1 %s: arrange mem for dnr failed\012\000"
	.space	2
.LC12:
	.ascii	"%s, %d, i: %d, UsingNum: %d, DnrSize: %d\012\000"
	.space	2
.LC13:
	.ascii	"Error: Count: %d\012\000"
	.space	2
.LC14:
	.ascii	"%s: arrange mem for dnr failed\012\000"
.LC15:
	.ascii	"Error, %s, %d\012\000"
	.space	1
.LC16:
	.ascii	"Error, %s, %d, %d, %d\012\000"
	.space	1
.LC17:
	.ascii	"NoneDnrSwitchToDnrSpecialCase1, FrameSize: %d, VdhT"
	.ascii	"otalMemUse: %d, UsingNum: %d\012\000"
	.space	3
.LC18:
	.ascii	"1 NoneDnrSwitchToDnrNormCase, FrameSize: %d, VdhTot"
	.ascii	"alMemUse: %d, UsingNum: %d\012\000"
	.space	1
.LC19:
	.ascii	"2 NoneDnrSwitchToDnrNormCase, UsingNum: %d\012\000"
.LC20:
	.ascii	"%s, can NOT enable DNR instance\012\000"
	.space	3
.LC21:
	.ascii	"%s, can NOT enableWithourArrange DNR instance\012\000"
	.space	1
.LC22:
	.ascii	"%s, can NOT start DNR instance\012\000"
.LC23:
	.ascii	"%s, can NOT ArrangeMem for DNR instance\012\000"
	.space	3
.LC24:
	.ascii	"%s, can NOT COnfig DNR instance\012\000"
	.space	3
.LC25:
	.ascii	"fsp instance not in used\000"
	.space	3
.LC26:
	.ascii	"pFspInst = NULL\000"
.LC27:
	.ascii	"%s : AllocFrame func null\012\000"
	.space	1
.LC28:
	.ascii	"%s : RleaseFrame func null\012\000"
.LC29:
	.ascii	"pstFspInstCfg = NULL\000"
	.space	3
.LC30:
	.ascii	"This inst is not active\000"
.LC31:
	.ascii	"eChanCapLevel = %d is not expected!\012\000"
	.space	3
.LC32:
	.ascii	"decode channel CapLevel is %d(w=%d,h=%d), this stre"
	.ascii	"am (w=%d,h=%d) can NOT be decoded!\012\000"
	.space	1
.LC33:
	.ascii	"Dnr Switch To Dnr, w x h: %d x %d\012\000"
	.space	1
.LC34:
	.ascii	"None Dnr Switch To Dnr, w x h: %d x %d\012\000"
.LC35:
	.ascii	"Error, %s, %d, ChanID: %d\012\000"
	.space	1
.LC36:
	.ascii	"VDH addr: %#x, VDH size: %d, Dnr addr: %#x, Dnr siz"
	.ascii	"e: %d\012\000"
	.space	2
.LC37:
	.ascii	"Dnr Switch To None Dnr, w x h: %d x %d\012\000"
.LC38:
	.ascii	"None Dnr Switch To None Dnr, w x h: %d x %d\012\000"
	.space	3
.LC39:
	.ascii	"FSP_IsFsLeak: fsp is not inited \012\000"
	.space	2
.LC40:
	.ascii	"ref=%d,read=%d,new=%d,total=%d\012\000"
.LC41:
	.ascii	"LogicFrameID out of range\000"
	.space	2
.LC42:
	.ascii	"fsp.c, line %d: pstLogicFs->PmvIdc out of range(=%d"
	.ascii	")\012\000"
	.space	2
.LC43:
	.ascii	"FSP_SetDisplay: LogicTick=%d, DispTick=%d!\012\000"
.LC44:
	.ascii	"pstVoQue is NULL\000"
	.space	3
.LC45:
	.ascii	"DecFsAddrTab is NULL\012\000"
	.space	2
.LC46:
	.ascii	"DecFsNum is NULL\012\000"
	.space	2
.LC47:
	.ascii	"PmvAddrTab is NULL\012\000"
.LC48:
	.ascii	"PmvNum is NULL\012\000"
.LC49:
	.ascii	"FSP CONTEXT:\012\000"
	.space	2
.LC50:
	.ascii	"eFspInstState\000"
	.space	2
.LC51:
	.ascii	"%-35s :%d\012\000"
	.space	1
.LC52:
	.ascii	"s32DispLoopEnable\000"
	.space	2
.LC53:
	.ascii	"s32TfEnable\000"
.LC54:
	.ascii	"s32RprEnable\000"
	.space	3
.LC55:
	.ascii	"s32DecFsWidth\000"
	.space	2
.LC56:
	.ascii	"s32DecFsHeight\000"
	.space	1
.LC57:
	.ascii	"s32DispFsWidth\000"
	.space	1
.LC58:
	.ascii	"s32DispFsHeight\000"
.LC59:
	.ascii	"s32ExpectedDecFsNum\000"
.LC60:
	.ascii	"s32ExpectedTfFsNum\000"
	.space	1
.LC61:
	.ascii	"s32ExpectedDispFsNum\000"
	.space	3
.LC62:
	.ascii	"s32ExpectedPmvNum\000"
	.space	2
.LC63:
	.ascii	"s32DecFsNum\000"
.LC64:
	.ascii	"s32DispFsNum\000"
	.space	3
.LC65:
	.ascii	"s32TfFsNum\000"
	.space	1
.LC66:
	.ascii	"s32PmvNum\000"
	.space	2
.LC67:
	.ascii	"logic fs state:\012\000"
	.space	3
.LC68:
	.ascii	"\012\000"
	.space	2
.LC69:
	.ascii	"%d%d \000"
	.space	2
.LC70:
	.ascii	"\012dec fs state:\012\000"
.LC71:
	.ascii	"\012disp fs state:\012\000"
	.space	3
.LC72:
	.ascii	"\012pmv state:\012\000"
	.space	3
.LC73:
	.ascii	"\012\012\000"
	.space	1
.LC74:
	.ascii	"%d \000"
.LC75:
	.ascii	"no logic frame store!!!\012\000"
	.space	3
.LC76:
	.ascii	"no decode phy fs\012\000"
	.space	2
.LC77:
	.ascii	"no pmv memory\012\000"
	.space	1
.LC78:
	.ascii	"no display phy fs\012\000"
	.space	1
.LC79:
	.ascii	"can not find disp fs\012\000"
	.space	2
.LC80:
	.ascii	"RefNum,ReadNum,NewNum,Total = %d,%d,%d,%d\012\000"
	.space	1
.LC81:
	.ascii	"FSP_AllocFrame failed\012\000"
	.space	1
.LC82:
	.ascii	"invalid stFrameInfo PhyAddr\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_pFspInst, %object
	.size	s_pFspInst, 4
s_pFspInst:
	.space	4
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 8
s_FspVoQue:
	.space	8
	.type	g_IsFrameIntfValid, %object
	.size	g_IsFrameIntfValid, 4
g_IsFrameIntfValid:
	.space	4
	.type	g_FspFrameIntf, %object
	.size	g_FspFrameIntf, 16
g_FspFrameIntf:
	.space	16
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 8
g_SpinLock_fsp:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
