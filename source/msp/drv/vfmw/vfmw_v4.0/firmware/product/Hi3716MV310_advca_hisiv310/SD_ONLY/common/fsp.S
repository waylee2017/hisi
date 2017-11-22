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
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(fsp)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.fsp.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/fsp.o
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
	add	r0, sp, #136	@ tmp629,,
	mov	r1, #416	@,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	bne	.L4	@,
	ldr	r3, .L37	@ tmp330,
	ldr	r9, [r3]	@ D.36524, s_pFspInst
	cmp	r9, #0	@ D.36524,
	beq	.L4	@,
	ldr	r1, .L37+4	@ tmp336,
	mov	r4, #4	@ D.36530,
	ldrsb	r2, [r9, #60]	@ D.36530, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	ldrsb	r3, [r9, #65]	@ D.36523, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDecFsNum
	ldr	ip, [r1, #36]	@ D.36527, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36527,
	smlabb	r4, r4, r2, r3	@ MinFsNum, D.36530, D.36530, D.36523
	beq	.L4	@,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	add	r1, sp, #136	@ tmp630,,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	mov	lr, #64	@ tmp339,
	str	r1, [sp, #16]	@ tmp630,
	mov	r8, #40	@ tmp343,
	str	r5, [sp, #12]	@ InstID,
	mov	r1, r7	@, MemSize
	str	lr, [sp, #20]	@ tmp339,
	mov	r0, r6	@, MemPhyAddr
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32UserDec
	stmib	sp, {r8, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.36527
	cmp	r0, #0	@ Ret
	bne	.L4	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _20->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L4	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	strb	r0, [r9, #11]	@ Ret, _20->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable,
	strb	r0, [r9, #12]	@ Ret, _20->s32TfFsNum
	beq	.L32	@,
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.36532, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDecFsNum
	add	r2, r9, #32768	@ tmp604, D.36524,
	str	r2, [sp, #92]	@ tmp604, %sfp
	strb	r3, [r9, #10]	@ D.36532, _20->s32DecFsNum
.L9:
	sxtb	r4, r3	@ D.36526, D.36532
	ldr	r3, [sp, #136]	@ D.36523, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.36523, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.160,,
	str	r9, [sp, #128]	@ ivtmp.122, %sfp
	str	r3, [sp, #72]	@ D.36523, %sfp
	ldr	r3, [sp, #92]	@ tmp604, %sfp
	str	r2, [sp, #80]	@ D.36523, %sfp
	ldr	r0, [r1, #-408]!	@ D.36526, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.36523, _20->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.36526, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.36523, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.160, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.36526, %sfp
	ldr	r2, [sp, #404]	@ D.36526, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.36523, %sfp
	ldr	r3, [r9, #76]	@ D.36523, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.36526, %sfp
	ldr	r2, [sp, #408]	@ D.36526, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.36523, %sfp
	mov	r3, r9	@ ivtmp.158, D.36524
	str	r0, [sp, #120]	@ D.36526, %sfp
	str	r2, [sp, #116]	@ D.36526, %sfp
	str	r9, [sp, #132]	@ D.36524, %sfp
	str	r4, [sp, #104]	@ D.36526, %sfp
	b	.L13	@
.L33:
	ldr	r2, [sp, #84]	@ D.36522, %sfp
	str	r1, [r2]	@ i, MEM[base: _294, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	ldr	r0, [r2]	@ D.36526, MEM[base: _295, offset: 0B]
	ldr	r2, [sp, #56]	@ D.36522, %sfp
	str	r0, [r10]	@ D.36526, MEM[base: _297, offset: 0B]
	ldr	r0, [sp, #72]	@ D.36523, %sfp
	str	r0, [r9]	@ D.36523, MEM[base: _299, offset: 0B]
	ldr	r0, [sp, #96]	@ D.36523, %sfp
	str	r0, [r8]	@ D.36523, MEM[base: _301, offset: 0B]
	ldr	r0, [sp, #100]	@ D.36523, %sfp
	str	r0, [r7]	@ D.36523, MEM[base: _303, offset: 0B]
	ldr	r0, [sp, #108]	@ D.36526, %sfp
	str	r0, [r6]	@ D.36526, MEM[base: _305, offset: 0B]
	ldr	r0, [sp, #112]	@ D.36526, %sfp
	str	r0, [r5]	@ D.36526, MEM[base: _307, offset: 0B]
	ldr	r0, [sp, #116]	@ D.36526, %sfp
	str	r0, [r4]	@ D.36526, MEM[base: _309, offset: 0B]
	mov	r0, #0	@ tmp872,
	strb	r0, [lr]	@ tmp872, MEM[base: _311, offset: 0B]
	strb	r0, [ip]	@ tmp871, MEM[base: _313, offset: 0B]
	strb	r0, [r2]	@ tmp870, MEM[base: _315, offset: 0B]
	ldr	r2, [sp, #60]	@ D.36522, %sfp
	ldr	r0, [sp, #80]	@ D.36523, %sfp
	str	r0, [r2]	@ D.36523,* D.36522
.L11:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.158, ivtmp.158,
	add	r2, r2, #4	@ ivtmp.160, ivtmp.160,
	str	r2, [sp, #76]	@ ivtmp.160, %sfp
	beq	.L12	@,
	ldr	r2, [sp, #92]	@ tmp604, %sfp
	ldr	r2, [r2, #1872]	@ D.36523, _20->ImgSlotLen
	str	r2, [sp, #80]	@ D.36523, %sfp
.L13:
	add	r2, r3, #27648	@ D.36522, ivtmp.158,
	mov	r0, r2	@ D.36522, D.36522
	add	r2, r2, #152	@ D.36522, D.36522,
	str	r2, [sp, #84]	@ D.36522, %sfp
	add	r10, r0, #160	@ D.36522, D.36522,
	ldr	r2, [sp, #104]	@ D.36526, %sfp
	add	r9, r0, #168	@ D.36522, D.36522,
	add	r8, r0, #172	@ D.36522, D.36522,
	add	r7, r0, #176	@ D.36522, D.36522,
	cmp	r2, r1	@ D.36526, i
	add	r2, r0, #160	@ D.36522, D.36522,
	str	r2, [sp, #88]	@ D.36522, %sfp
	add	r2, r0, #168	@ D.36522, D.36522,
	str	r2, [sp, #24]	@ D.36522, %sfp
	add	r2, r0, #172	@ D.36522, D.36522,
	str	r2, [sp, #28]	@ D.36522, %sfp
	add	r2, r0, #176	@ D.36522, D.36522,
	str	r2, [sp, #32]	@ D.36522, %sfp
	add	r2, r0, #180	@ D.36522, D.36522,
	str	r2, [sp, #36]	@ D.36522, %sfp
	add	r2, r0, #184	@ D.36522, D.36522,
	str	r2, [sp, #40]	@ D.36522, %sfp
	add	r2, r0, #188	@ D.36522, D.36522,
	str	r2, [sp, #44]	@ D.36522, %sfp
	add	r2, r0, #148	@ D.36522, D.36522,
	str	r2, [sp, #48]	@ D.36522, %sfp
	add	r2, r0, #149	@ D.36522, D.36522,
	str	r2, [sp, #52]	@ D.36522, %sfp
	add	r2, r0, #150	@ D.36522, D.36522,
	str	r2, [sp, #56]	@ D.36522, %sfp
	add	r2, r0, #196	@ D.36522, D.36522,
	str	r2, [sp, #60]	@ D.36522, %sfp
	add	r2, r0, #152	@ D.36522, D.36522,
	str	r2, [sp, #64]	@ D.36522, %sfp
	add	r2, r0, #150	@ D.36522, D.36522,
	str	r2, [sp, #68]	@ D.36522, %sfp
	add	r2, r0, #196	@ D.36522, D.36522,
	add	r6, r0, #180	@ D.36522, D.36522,
	add	r5, r0, #184	@ D.36522, D.36522,
	add	r4, r0, #188	@ D.36522, D.36522,
	add	lr, r0, #148	@ D.36522, D.36522,
	add	ip, r0, #149	@ D.36522, D.36522,
	mov	r0, r2	@ D.36522, D.36522
	bgt	.L33	@,
	ldr	r2, [sp, #64]	@ D.36522, %sfp
	mov	fp, #0	@ tmp869,
	str	fp, [r2]	@ tmp869, MEM[base: _319, offset: 0B]
	ldr	r2, [sp, #120]	@ D.36526, %sfp
	str	r2, [r10]	@ D.36526, MEM[base: _321, offset: 0B]
	ldr	r2, [sp, #72]	@ D.36523, %sfp
	str	r2, [r9]	@ D.36523, MEM[base: _323, offset: 0B]
	ldr	r2, [sp, #96]	@ D.36523, %sfp
	str	r2, [r8]	@ D.36523, MEM[base: _325, offset: 0B]
	ldr	r2, [sp, #100]	@ D.36523, %sfp
	str	r2, [r7]	@ D.36523, MEM[base: _327, offset: 0B]
	ldr	r2, [sp, #108]	@ D.36526, %sfp
	str	r2, [r6]	@ D.36526, MEM[base: _329, offset: 0B]
	ldr	r2, [sp, #112]	@ D.36526, %sfp
	str	r2, [r5]	@ D.36526, MEM[base: _331, offset: 0B]
	ldr	r2, [sp, #116]	@ D.36526, %sfp
	str	r2, [r4]	@ D.36526, MEM[base: _333, offset: 0B]
	mov	r2, r0	@ D.36522, D.36522
	strb	fp, [lr]	@ tmp868, MEM[base: _335, offset: 0B]
	ldr	r0, [sp, #80]	@ D.36523, %sfp
	strb	fp, [ip]	@ tmp867, MEM[base: _337, offset: 0B]
	ldr	ip, [sp, #68]	@ D.36522, %sfp
	strb	fp, [ip]	@ tmp865, MEM[base: _339, offset: 0B]
	str	r0, [r2]	@ D.36523,* D.36522
	b	.L11	@
.L32:
	ldrsb	r3, [r9, #1]	@ _20->s8LowBufEnable, _20->s8LowBufEnable
	cmp	r3, #0	@ _20->s8LowBufEnable,
	beq	.L8	@,
	add	r2, r9, #32768	@ tmp604, D.36524,
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.36532, MemArrange.ValidFrameNum
	str	r2, [sp, #92]	@ tmp604, %sfp
	mov	r1, r2	@ tmp604, tmp604
	ldr	r2, [sp, #140]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	strb	r3, [r9, #10]	@ D.36532, _20->s32DecFsNum
	str	r2, [r1, #1876]	@ MemArrange.TotalMemUsed, _20->TotalMemUsed
	b	.L9	@
.L12:
	ldr	r4, [sp, #104]	@ D.36526, %sfp
	add	r2, sp, #552	@ tmp720,,
	ldr	r5, [sp, #92]	@ tmp604, %sfp
	add	r0, sp, #400	@,,
	ldr	r9, [sp, #132]	@ D.36524, %sfp
	mov	r3, #1	@ tmp429,
	ldr	r6, [sp, #72]	@ D.36523, %sfp
	add	r2, r2, r4, lsl #2	@ tmp437, tmp720, D.36526,
	ldr	lr, [sp, #128]	@ ivtmp.122, %sfp
	strb	r3, [r9, #12]	@ tmp429, _20->s32TfFsNum
	mov	r3, #0	@ tmp433,
	str	r6, [r5, #1704]	@ D.36523, _20->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.36523, %sfp
	ldr	ip, [r2, #-408]	@ tmp439, MemArrange.FrameAddr
	ldmia	r0, {r0, r1, r2}	@,,,
	str	r6, [r5, #1708]	@ D.36523, _20->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.36523, %sfp
	str	ip, [r5, #1696]	@ tmp439, _20->stTfFs[0].PhyAddr
	str	r0, [r5, #1716]	@ MemArrange.ChromOffset, _20->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.36523, _20->stTfFs[0].FsHeight
	str	r1, [r5, #1720]	@ MemArrange.LumaPixelOffset, _20->stTfFs[0].LumaPixelOffset
	str	r2, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _20->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp433, _20->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp433, _20->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp433, _20->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp433, _20->stTfFs[0].DispState
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.36532, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.36532,
	streqb	r3, [r9, #11]	@ D.36532, _20->s32DispFsNum
	streq	r3, [sp, #44]	@ D.36532, %sfp
	beq	.L15	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r9, #67]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.36526, D.36526, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.36526, D.36526,
	cmp	r3, #25	@ D.36526,
	movge	r3, #25	@ D.36526,
	uxtb	r3, r3	@ D.36532, D.36526
	strb	r3, [r9, #11]	@ D.36532, _20->s32DispFsNum
	sxtb	r3, r3	@ D.36526, D.36532
	str	r3, [sp, #44]	@ D.36526, %sfp
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32ExpectedDispFsNum, D.36526
	bgt	.L4	@,
.L15:
	ldr	r3, [sp, #400]	@ D.36526, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.36523, MemArrange.VahbStride
	mov	r0, ip	@ tmp606, i
	str	r3, [sp, #96]	@ D.36526, %sfp
	ldr	r3, [sp, #404]	@ D.36526, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.36523, %sfp
	str	r3, [sp, #100]	@ D.36526, %sfp
	ldr	r3, [sp, #408]	@ D.36526, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.36526, %sfp
	mov	r3, #1	@ D.36532,
	mov	r2, r3	@ D.36532, D.36532
	mov	r3, r4	@ D.36526, D.36526
	b	.L23	@
.L35:
	ldr	r3, [sp, #48]	@ D.36522, %sfp
	ldr	r2, [sp, #56]	@ D.36522, %sfp
	str	ip, [r3]	@ i, MEM[base: _232, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp483, %sfp
	ldr	r3, [r3, #-408]	@ D.36526, MemArrange.FrameAddr
	str	r3, [r2]	@ D.36526, MEM[base: _135, offset: 0B]
	ldr	r3, [sp, #60]	@ D.36522, %sfp
	ldr	r2, [sp, #72]	@ D.36523, %sfp
	str	r2, [r3]	@ D.36523, MEM[base: _164, offset: 0B]
	ldr	r2, [sp, #64]	@ D.36522, %sfp
	ldr	r3, [r9, #88]	@ D.36526, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.36526, MEM[base: _138, offset: 0B]
	ldr	r2, [sp, #96]	@ D.36526, %sfp
	ldr	r3, [r9, #92]	@ D.36526, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.36526, MEM[base: _146, offset: 0B]
	str	r2, [r7]	@ D.36526, MEM[base: _12, offset: 0B]
	ldr	r2, [sp, #100]	@ D.36526, %sfp
	str	r2, [r6]	@ D.36526, MEM[base: _9, offset: 0B]
	ldr	r2, [sp, #104]	@ D.36526, %sfp
	str	r2, [r5]	@ D.36526, MEM[base: _5, offset: 0B]
	strb	r0, [r4]	@ tmp606, MEM[base: _224, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _3, offset: 0B]
	strb	r0, [r10]	@ tmp606, MEM[base: _21, offset: 0B]
.L17:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.36523, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.122, ivtmp.122,
	str	r3, [sp, #72]	@ D.36523, %sfp
	beq	.L34	@,
	ldrsb	r1, [r9, #11]	@ D.36526, _20->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.36532, _20->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.36526, _20->s32DecFsNum
	str	r1, [sp, #44]	@ D.36526, %sfp
.L23:
	add	r1, ip, r3	@ tmp480, i, D.36526
	sxtab	r3, r3, r2	@ tmp516, D.36526, D.36532
	sxtab	r2, r1, r2	@ tmp481, tmp480, D.36532
	add	r1, lr, #30976	@ D.36522, ivtmp.122,
	mov	r4, r1	@ D.36522, D.36522
	add	r1, r1, #152	@ D.36522, D.36522,
	str	r1, [sp, #48]	@ D.36522, %sfp
	add	r1, sp, #552	@ tmp743,,
	add	r3, r1, r3, lsl #2	@ tmp518, tmp747, tmp516,
	str	r3, [sp, #76]	@ tmp518, %sfp
	add	r3, r4, #160	@ D.36522, D.36522,
	str	r3, [sp, #56]	@ D.36522, %sfp
	add	r3, r4, #168	@ D.36522, D.36522,
	str	r3, [sp, #60]	@ D.36522, %sfp
	add	r3, r4, #160	@ D.36522, D.36522,
	str	r3, [sp, #80]	@ D.36522, %sfp
	add	r3, r4, #168	@ D.36522, D.36522,
	str	r3, [sp, #84]	@ D.36522, %sfp
	ldr	r3, [sp, #44]	@ D.36526, %sfp
	add	r2, r1, r2, lsl #2	@ tmp483, tmp743, tmp481,
	add	r10, r4, #150	@ D.36522, D.36522,
	str	r2, [sp, #52]	@ tmp483, %sfp
	cmp	r3, ip	@ D.36526, i
	add	r3, r4, #176	@ D.36522, D.36522,
	str	r3, [sp, #44]	@ D.36522, %sfp
	add	r3, r4, #180	@ D.36522, D.36522,
	str	r3, [sp, #24]	@ D.36522, %sfp
	add	r3, r4, #184	@ D.36522, D.36522,
	str	r3, [sp, #28]	@ D.36522, %sfp
	add	r3, r4, #188	@ D.36522, D.36522,
	str	r3, [sp, #32]	@ D.36522, %sfp
	add	r3, r4, #148	@ D.36522, D.36522,
	add	r2, r4, #152	@ D.36522, D.36522,
	add	fp, r4, #149	@ D.36522, D.36522,
	str	r2, [sp, #68]	@ D.36522, %sfp
	add	r8, r4, #176	@ D.36522, D.36522,
	add	r2, r4, #172	@ D.36522, D.36522,
	add	r7, r4, #180	@ D.36522, D.36522,
	add	r6, r4, #184	@ D.36522, D.36522,
	add	r5, r4, #188	@ D.36522, D.36522,
	str	r2, [sp, #64]	@ D.36522, %sfp
	mov	r4, r3	@ D.36522, D.36522
	str	r2, [sp, #88]	@ D.36522, %sfp
	str	r3, [sp, #36]	@ D.36522, %sfp
	str	r10, [sp, #40]	@ D.36522, %sfp
	bgt	.L35	@,
	ldr	r3, [sp, #68]	@ D.36522, %sfp
	ldr	r2, [sp, #72]	@ D.36523, %sfp
	str	r0, [r3]	@ tmp606, MEM[base: _275, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp518, %sfp
	ldr	r10, [r3, #-408]	@ D.36526, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.36522, %sfp
	str	r10, [r3]	@ D.36526, MEM[base: _267, offset: 0B]
	ldr	r3, [sp, #84]	@ D.36522, %sfp
	str	r2, [r3]	@ D.36523, MEM[base: _261, offset: 0B]
	ldr	r3, [sp, #88]	@ D.36522, %sfp
	ldr	r10, [r9, #88]	@ D.36526, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.36526, MEM[base: _255, offset: 0B]
	ldr	r3, [r9, #92]	@ D.36526, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.36526, MEM[base: _251, offset: 0B]
	ldr	r3, [sp, #96]	@ D.36526, %sfp
	str	r3, [r7]	@ D.36526, MEM[base: _244, offset: 0B]
	ldr	r3, [sp, #100]	@ D.36526, %sfp
	str	r3, [r6]	@ D.36526, MEM[base: _280, offset: 0B]
	ldr	r3, [sp, #104]	@ D.36526, %sfp
	str	r3, [r5]	@ D.36526, MEM[base: _282, offset: 0B]
	ldr	r3, [sp, #40]	@ D.36522, %sfp
	strb	r0, [r4]	@ tmp606, MEM[base: _284, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _286, offset: 0B]
	strb	r0, [r3]	@ tmp606, MEM[base: _288, offset: 0B]
	b	.L17	@
.L34:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.93,,
	add	r0, r9, #34560	@ ivtmp.99, D.36524,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.103, D.36524,
	mov	lr, r2	@ tmp605, i
	movge	r3, #20	@ D.36526,
	uxtb	r3, r3	@ D.36532, D.36526
	strb	r3, [r9, #13]	@ D.36532, _20->s32PmvNum
	b	.L22	@
.L36:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.36532, _20->s32PmvNum
.L22:
	sxtb	r3, r3	@ D.36526, D.36532
	add	ip, ip, #4	@ ivtmp.93, ivtmp.93,
	cmp	r3, r2	@ D.36526, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.99, ivtmp.99,
	add	r1, r1, #1	@ ivtmp.103, ivtmp.103,
	ldrgt	r3, [ip, #-4]	@ D.36526, MEM[base: _81, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.36526, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.36526,
	strb	lr, [r1, #-1]	@ tmp605,
	bne	.L36	@,
	ldr	r7, [sp, #92]	@ tmp604, %sfp
	add	r3, r9, #24576	@ tmp559, D.36524,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r2, #0	@ tmp560,
	ldr	ip, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	mov	r0, r2	@ D.36523, tmp560
	ldr	lr, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r7, #1788]	@ MemArrange.HafPmvOffset, _20->s32HalfPmvOffset
	ldr	r1, [r3, #3232]	@ _20->stDecFs[0].PhyAddr, _20->stDecFs[0].PhyAddr
	str	ip, [r3, #3188]	@ MemArrange.VahbStride, _20->stDummyPhyFs.Stride
	str	r2, [r3, #3172]	@ tmp560, _20->stDummyPhyFs.PhyFsID
	str	r1, [r3, #3180]	@ _20->stDecFs[0].PhyAddr, _20->stDummyPhyFs.PhyAddr
	ldr	r1, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth
	ldr	r5, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r4, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r3, #3192]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsWidth, _20->stDummyPhyFs.FsWidth
	ldr	r6, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.36526, MemArrange.TotalMemUsed
	str	lr, [r3, #3208]	@ MemArrange.ChromaPixelOffset, _20->stDummyPhyFs.ChromaPixelOffset
	mov	lr, r7	@ tmp604, tmp604
	strb	r2, [r3, #3168]	@ tmp560, _20->stDummyPhyFs.IsDecRef
	str	r6, [r3, #3196]	@ MEM[(struct FSP_INST_CFG_S *)_20 + 60B].s32DecFsHeight, _20->stDummyPhyFs.FsHeight
	strb	r2, [r3, #3169]	@ tmp560, _20->stDummyPhyFs.IsTfRef
	strb	r2, [r3, #3170]	@ tmp560, _20->stDummyPhyFs.DispState
	str	r5, [r3, #3200]	@ MemArrange.ChromOffset, _20->stDummyPhyFs.ChromOffset
	str	r4, [r3, #3204]	@ MemArrange.LumaPixelOffset, _20->stDummyPhyFs.LumaPixelOffset
	ldr	ip, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	str	r1, [r7, #1876]	@ D.36526, _20->TotalMemUsed
	str	ip, [r7, #1888]	@ MemArrange.u32StrideByte, _20->StrideByte
	str	r1, [r3]	@ D.36526, *UsedMemSize_222(D)
.L29:
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L8:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r9, #32768	@ tmp604, D.36524,
	str	r2, [sp, #92]	@ tmp604, %sfp
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.36526,
	uxtb	r3, r3	@ D.36532, D.36526
	strb	r3, [r9, #10]	@ D.36532, _20->s32DecFsNum
	b	.L9	@
.L4:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36523,
	b	.L29	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
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
	mov	fp, r0	@ InstID, InstID
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #40	@ tmp330,,
	mov	r1, #416	@,
	mov	r3, #0	@ tmp211,
	mov	r9, r2	@ s32Num, s32Num
	str	r3, [sp, #36]	@ tmp211, s32UsedMemSize
	bl	__memzero	@
	cmp	fp, #0	@ InstID,
	bne	.L42	@,
	cmp	r4, #0	@ VoUsingFrameArray,
	beq	.L42	@,
	ldr	r3, .L100	@ tmp213,
	ldr	r6, [r3]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L42	@,
	add	r5, r6, #32768	@ tmp292, pstInst,
	ldr	r3, [r4]	@ D.36564, VoUsingFrameArray_23(D)->FrameAddr
	ldr	r8, [r5, #1880]	@ s32VdhMemAddr, pstInst_25->MemAddr
	ldr	r7, [r5, #1876]	@ pstInst_25->TotalMemUsed, pstInst_25->TotalMemUsed
	ldr	r2, [r5, #1888]	@ pstInst_25->StrideByte, pstInst_25->StrideByte
	cmp	r8, r3	@ s32VdhMemAddr, D.36564
	rsblt	fp, r8, r3	@ s32FreeSize, s32VdhMemAddr, D.36564
	ldr	r10, [r5, #1884]	@ s32VdhAllMemSize, pstInst_25->MemSize
	add	r7, r7, r2	@ s32VdhTotalMemUse, pstInst_25->TotalMemUsed, pstInst_25->StrideByte
	cmp	fp, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L70	@,
	sub	r2, r9, #-536870911	@ D.36563, s32Num,
	add	r1, r8, r10	@ D.36564, s32VdhMemAddr, s32VdhAllMemSize
	add	r0, r4, r2, lsl #3	@ D.36566, VoUsingFrameArray, D.36563,
	ldr	r2, [r4, r2, asl #3]	@ _41->FrameAddr, _41->FrameAddr
	ldr	ip, [r0, #4]	@ _41->FrameSize, _41->FrameSize
	add	r2, r2, ip	@ D.36564, _41->FrameAddr, _41->FrameSize
	cmp	r1, r2	@ D.36564, D.36564
	rsbgt	r1, r2, r1	@ s32FreeSize, D.36564, D.36564
	movle	r1, #0	@ s32FreeSize,
	cmp	r1, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L46	@,
	sub	r0, r9, #1	@ D.36564, s32Num,
	cmp	r0, #0	@ D.36564,
	ble	.L42	@,
	ldmib	r4, {r1, r2}	@ VoUsingFrameArray,,
	add	r3, r3, r1	@ D.36564, D.36564, VoUsingFrameArray_23(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.36564, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_23(D) + 8B].FrameAddr
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	addgt	r1, r4, #8	@ ivtmp.210, VoUsingFrameArray,
	movgt	r2, #0	@ i,
	bgt	.L51	@,
	b	.L95	@
.L53:
	ldr	fp, [r1, #4]	@ MEM[base: _169, offset: 4B], MEM[base: _169, offset: 4B]
	add	r1, r1, #8	@ ivtmp.210, ivtmp.210,
	ldr	r3, [r4, r2, asl #3]	@ MEM[base: VoUsingFrameArray_23(D), index: _10, step: 8, offset: 0B], MEM[base: VoUsingFrameArray_23(D), index: _10, step: 8, offset: 0B]
	ldr	ip, [lr, #8]	@ MEM[base: _169, offset: 8B], MEM[base: _169, offset: 8B]
	add	r3, r3, fp	@ D.36564, MEM[base: VoUsingFrameArray_23(D), index: _10, step: 8, offset: 0B], MEM[base: _169, offset: 4B]
	rsb	ip, r3, ip	@ s32FreeSize, D.36564, MEM[base: _169, offset: 8B]
	cmp	r7, ip	@ s32VdhTotalMemUse, s32FreeSize
	ble	.L96	@,
.L51:
	add	r2, r2, #1	@ i, i,
	mov	lr, r1	@ D.36568, ivtmp.210
	cmp	r2, r0	@ i, D.36564
	bne	.L53	@,
.L42:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36562,
.L86:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L70:
	mov	r3, #1	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
.L44:
	ldrsb	r3, [r6, #10]	@ pstInst_25->s32DecFsNum, pstInst_25->s32DecFsNum
	ldr	fp, .L100+4	@ tmp293,
	cmp	r3, #0	@ pstInst_25->s32DecFsNum,
	ldrle	lr, [fp]	@ D.36561, s_pstVfmwChan
	ble	.L55	@,
	ldr	lr, [fp]	@ D.36561, s_pstVfmwChan
	add	r1, r6, #27648	@ ivtmp.202, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.202, ivtmp.202,
	add	r3, lr, #216064	@ ivtmp.199, D.36561,
	mov	r0, r2	@ tmp295, i
	add	r3, r3, #360	@ ivtmp.199, ivtmp.199,
.L56:
	str	r0, [r3]	@ tmp295, MEM[base: _62, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r1], #52	@ D.36564, MEM[base: _66, offset: 0B]
	add	r3, r3, #16	@ ivtmp.199, ivtmp.199,
	str	ip, [r3, #-12]	@ D.36564, MEM[base: _62, offset: 4B]
	ldr	ip, [r5, #1872]	@ D.36564, pstInst_25->ImgSlotLen
	str	r0, [r3, #-4]	@ tmp295, MEM[base: _62, offset: 12B]
	str	ip, [r3, #-8]	@ D.36564, MEM[base: _62, offset: 8B]
	ldrsb	ip, [r6, #10]	@ D.36564, pstInst_25->s32DecFsNum
	cmp	ip, r2	@ D.36564, i
	bgt	.L56	@,
.L55:
	ldr	r1, .L100+8	@ tmp258,
	ldr	r2, [lr, #1608]	@ s32ThrWidth, _1->stSynExtraData.s32DSDThrWidth
	ldr	r3, [lr, #1612]	@ s32ThrHeight, _1->stSynExtraData.s32DSDThrHeight
	ldr	ip, [r1, #36]	@ D.36570, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, [lr, #1588]	@ s32DnrNum, _1->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	cmp	ip, #0	@ D.36570,
	beq	.L59	@,
	add	r0, sp, #40	@ tmp333,,
	mov	lr, #0	@ tmp262,
	str	r0, [sp, #16]	@ tmp333,
	mov	r0, #64	@ tmp259,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp261,
	str	r0, [sp, #20]	@ tmp259,
	mov	r0, #1	@,
	str	r1, [sp, #12]	@ tmp261,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp262,
	str	lr, [sp]	@ tmp262,
	blx	ip	@ D.36570
	cmp	r0, #0	@,
	beq	.L58	@,
.L59:
	bl	vfmw_dprint_nothing	@
.L58:
	ldr	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	ldr	ip, [fp]	@ D.36561, s_pstVfmwChan
	ldr	lr, [sp, #44]	@ D.36564, MemArrange.TotalMemUsed
	cmp	r3, #1	@ s32FoundVdhMemInTop,
	str	lr, [ip, #240]	@ D.36564, _98->s32OffLineDNRMemSize
	beq	.L97	@,
.L60:
	sub	r3, r9, #-536870911	@ D.36563, s32Num,
	add	r8, r8, r10	@ D.36564, s32VdhMemAddr, s32VdhAllMemSize
	add	r2, r4, r3, lsl #3	@ D.36566, VoUsingFrameArray, D.36563,
	ldr	r3, [r4, r3, asl #3]	@ _109->FrameAddr, _109->FrameAddr
	ldr	r2, [r2, #4]	@ _109->FrameSize, _109->FrameSize
	add	r3, r3, r2	@ D.36564, _109->FrameAddr, _109->FrameSize
	cmp	r8, r3	@ D.36564, D.36564
	rsbgt	r8, r3, r8	@ s32FreeSize, D.36564, D.36564
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, lr	@ s32FreeSize, D.36564
	strge	r3, [ip, #236]	@ D.36564, _98->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.36562,
	bge	.L86	@,
	sub	r0, r9, #1	@ D.36564, s32Num,
	cmp	r0, #0	@ D.36564,
	ble	.L42	@,
	ldmib	r4, {r1, r2}	@ VoUsingFrameArray,,
	ldr	r3, [r4]	@ VoUsingFrameArray_23(D)->FrameAddr, VoUsingFrameArray_23(D)->FrameAddr
	add	r3, r3, r1	@ D.36564, VoUsingFrameArray_23(D)->FrameAddr, VoUsingFrameArray_23(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.36564, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_23(D) + 8B].FrameAddr
	cmp	lr, r2	@ D.36564, s32FreeSize
	movgt	r5, #0	@ i,
	bgt	.L66	@,
	b	.L98	@
.L67:
	ldr	r3, [r4, #8]	@ MEM[base: _156, offset: 8B], MEM[base: _156, offset: 8B]
	add	r4, r4, #8	@ ivtmp.194, ivtmp.194,
	ldr	r1, [r4, #4]	@ MEM[base: _156, offset: 12B], MEM[base: _156, offset: 12B]
	ldr	r2, [r2, #16]	@ MEM[base: _156, offset: 16B], MEM[base: _156, offset: 16B]
	add	r3, r3, r1	@ D.36564, MEM[base: _156, offset: 8B], MEM[base: _156, offset: 12B]
	rsb	r2, r3, r2	@ s32FreeSize, D.36564, MEM[base: _156, offset: 16B]
	cmp	lr, r2	@ D.36564, s32FreeSize
	ble	.L99	@,
.L66:
	add	r5, r5, #1	@ i, i,
	mov	r2, r4	@ D.36568, ivtmp.194
	cmp	r5, r0	@ i, D.36564
	bne	.L67	@,
	b	.L42	@
.L97:
	ldr	r3, [r4]	@ D.36564, VoUsingFrameArray_23(D)->FrameAddr
	add	r7, r8, r7	@ D.36564, s32VdhMemAddr, s32VdhTotalMemUse
	cmp	r3, r7	@ D.36564, D.36564
	rsbgt	r3, r7, r3	@ s32FreeSize, D.36564, D.36564
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, lr	@ s32FreeSize, D.36564
	strge	r7, [ip, #236]	@ D.36564, _98->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.36562,
	blt	.L60	@,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L46:
	str	r2, [r5, #1880]	@ D.36564, pstInst_25->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [r0, #4]	@ _41->FrameSize, _41->FrameSize
	add	r3, r3, r7	@ D.36564, _41->FrameSize, s32VdhTotalMemUse
	str	r3, [r0, #4]	@ D.36564, _41->FrameSize
.L50:
	add	r3, sp, #36	@,,
	ldr	r2, [r5, #1884]	@, pstInst_25->MemSize
	ldr	r1, [r5, #1880]	@, pstInst_25->MemAddr
	mov	r0, #0	@,
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@,
	beq	.L42	@,
	ldr	r3, [sp, #36]	@ s32UsedMemSize, s32UsedMemSize
	cmp	r7, r3	@ s32VdhTotalMemUse, s32UsedMemSize
	blt	.L42	@,
	mov	r3, #0	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	b	.L44	@
.L99:
	cmp	r0, r5	@ D.36564, i
	str	r3, [ip, #236]	@ D.36564, _98->s32OffLineDnrMemAddr
	ble	.L42	@,
	mov	r0, #0	@ D.36562,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L96:
	str	r3, [r5, #1880]	@ D.36564, pstInst_25->MemAddr
	cmp	r0, r2	@ D.36564, i
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [lr, #4]	@ _178->FrameSize, _178->FrameSize
	add	r3, r3, r7	@ D.36564, _178->FrameSize, s32VdhTotalMemUse
	str	r3, [lr, #4]	@ D.36564, _178->FrameSize
	bgt	.L50	@,
	b	.L42	@
.L98:
	mov	r0, #0	@ D.36562,
	str	r3, [ip, #236]	@ D.36564, _98->s32OffLineDnrMemAddr
	b	.L86	@
.L95:
	str	r3, [r5, #1880]	@ D.36564, pstInst_25->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_25->MemSize
	ldr	r3, [r4, #4]	@ VoUsingFrameArray_23(D)->FrameSize, VoUsingFrameArray_23(D)->FrameSize
	add	r3, r3, r7	@ D.36564, VoUsingFrameArray_23(D)->FrameSize, s32VdhTotalMemUse
	str	r3, [r4, #4]	@ D.36564, VoUsingFrameArray_23(D)->FrameSize
	b	.L50	@
.L101:
	.align	2
.L100:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	g_vdm_hal_fun_ptr
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
	add	r0, sp, #48	@ tmp354,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L110	@,
	ldr	r3, .L155	@ tmp203,
	ldr	r7, [r3]	@ pstInst, s_pFspInst
	add	r3, r7, #32768	@ tmp205, pstInst,
	ldrsb	r2, [r7, #10]	@ pstInst_19->s32DecFsNum, pstInst_19->s32DecFsNum
	ldr	r9, [r3, #1880]	@ s32VdhMemAddr, pstInst_19->MemAddr
	cmp	r2, #0	@ pstInst_19->s32DecFsNum,
	ldr	r2, [r3, #1884]	@ s32VdhAllMemSize, pstInst_19->MemSize
	ldr	r5, [r3, #1872]	@ s32ImgSize, pstInst_19->ImgSlotLen
	str	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	ldr	r2, [r3, #1876]	@ D.36601, pstInst_19->TotalMemUsed
	str	r2, [sp, #32]	@ D.36601, %sfp
	ldr	r2, [r3, #1888]	@ D.36602, pstInst_19->StrideByte
	str	r2, [sp, #36]	@ D.36602, %sfp
	ble	.L152	@,
	add	r10, r7, #27648	@ ivtmp.237, pstInst,
	ldr	fp, .L155+4	@ tmp328,
	add	r10, r10, #160	@ ivtmp.237, ivtmp.237,
	mov	r8, #1	@ tmp329,
	b	.L111	@
.L153:
	ldr	r3, [fp]	@ D.36600, s_pstVfmwChan
	add	r3, r3, r4, lsl #4	@ tmp223, D.36600, i,
	add	r2, r3, #216064	@ tmp225, tmp223,
	add	r3, r3, #212992	@ tmp235, tmp223,
	str	r0, [r2, #360]	@ s32UsingCount, _35->stFrameArray[i_122].eFrameState
	ldr	r1, [r10]	@ D.36601, MEM[base: _152, offset: 0B]
	str	r1, [r2, #364]	@ D.36601,
	str	r5, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L109:
	ldrsb	r3, [r7, #10]	@ D.36601, pstInst_19->s32DecFsNum
	add	r4, r4, #1	@ i, i,
	add	r10, r10, #52	@ ivtmp.237, ivtmp.237,
	cmp	r3, r4	@ D.36601, i
	ble	.L112	@,
.L111:
	mov	r2, r5	@, s32ImgSize
	ldr	r1, [r10]	@, MEM[base: _152, offset: 0B]
	mov	r0, #0	@,
	ldr	r6, .L155+4	@ tmp322,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L153	@,
	ble	.L110	@,
	ldr	r3, [fp]	@ D.36600, s_pstVfmwChan
	add	r3, r3, r4, lsl #4	@ tmp243, D.36600, i,
	add	r2, r3, #216064	@ tmp245, tmp243,
	add	r3, r3, #212992	@ tmp255, tmp243,
	str	r8, [r2, #360]	@ tmp329, _42->stFrameArray[i_122].eFrameState
	ldr	r1, [r10]	@ D.36601, MEM[base: _152, offset: 0B]
	str	r1, [r2, #364]	@ D.36601,
	str	r5, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L109	@
.L152:
	ldr	r6, .L155+4	@ tmp322,
.L112:
	ldr	r3, .L155+8	@ tmp216,
	ldr	r1, [r6]	@ D.36600, s_pstVfmwChan
	ldr	ip, [r3, #36]	@ D.36604, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r2, [r1, #1608]	@ s32ThrWidth, _49->stSynExtraData.s32DSDThrWidth
	cmp	ip, #0	@ D.36604,
	ldr	r3, [r1, #1612]	@ s32ThrHeight, _49->stSynExtraData.s32DSDThrHeight
	ldr	r1, [r1, #1588]	@ s32DnrNum, _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L106	@,
	add	r0, sp, #48	@ tmp358,,
	mov	lr, #0	@ tmp262,
	str	r0, [sp, #16]	@ tmp358,
	mov	r0, #64	@ tmp259,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp261,
	str	r0, [sp, #20]	@ tmp259,
	mov	r0, #1	@,
	str	r1, [sp, #12]	@ tmp261,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp262,
	str	lr, [sp]	@ tmp262,
	blx	ip	@ D.36604
	cmp	r0, #0	@,
	beq	.L113	@,
.L106:
	bl	vfmw_dprint_nothing	@
.L113:
	ldr	r2, [sp, #36]	@ D.36602, %sfp
	ldr	r3, [sp, #32]	@ D.36601, %sfp
	ldr	r8, [sp, #52]	@ D.36601, MemArrange.TotalMemUsed
	add	r3, r3, r2	@ D.36602, D.36601, D.36602
	ldr	r4, [r6]	@ D.36600, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r3, r9, r3	@ D.36601, s32VdhMemAddr, D.36602
	str	r8, [r4, #240]	@ D.36601, _57->s32OffLineDNRMemSize
	ldr	r2, [r2]	@ D.36601, VoUsingFrameArray_60(D)->FrameAddr
	cmp	r2, r3	@ D.36601, D.36601
	rsbgt	r2, r3, r2	@ s32FreeSize, D.36601, D.36601
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r8	@ s32FreeSize, D.36601
	bge	.L151	@,
	ldr	r2, [sp, #40]	@ s32Num, %sfp
	cmp	r2, #0	@ s32Num,
	beq	.L116	@,
	ble	.L117	@,
	sub	r10, r2, #-536870911	@ D.36598, s32Num,
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r1, r2, r10, lsl #3	@ D.36605, VoUsingFrameArray, D.36598,
	ldr	r2, [r2, r10, asl #3]	@ _68->FrameAddr, _68->FrameAddr
	ldr	r1, [r1, #4]	@ _68->FrameSize, _68->FrameSize
	add	r2, r2, r1	@ D.36601, _68->FrameAddr, _68->FrameSize
	cmp	r3, r2	@ D.36601, D.36601
	bgt	.L116	@,
.L118:
	ldr	r3, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r3, r9, r3	@ D.36601, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r2, r3	@ s32FreeSize, D.36601, D.36601
	cmp	r8, r3	@ D.36601, s32FreeSize
	strle	r2, [r4, #236]	@ D.36601, _57->s32OffLineDnrMemAddr
	movle	r0, #0	@ D.36599,
	ble	.L148	@,
.L119:
	cmp	r5, r8	@ s32ImgSize, D.36601
	movge	r6, #1	@ s32DnrLockFrmNum,
	blt	.L154	@,
.L120:
	ldrsb	lr, [r7, #10]	@ D.36601, pstInst_19->s32DecFsNum
	cmp	lr, #0	@ D.36601,
	ble	.L110	@,
	cmp	r6, lr	@ s32DnrLockFrmNum, D.36601
	bgt	.L139	@,
	mov	r0, #0	@ j,
	mov	r1, r6	@ D.36601, s32DnrLockFrmNum
.L123:
	cmp	r0, r1	@ j, D.36601
	bge	.L124	@,
	mov	ip, r0, asl #4	@ tmp324, j,
	mov	r2, r0	@ j, j
	add	r3, r4, ip	@ tmp290, D.36600, tmp324
	add	r3, r3, #216064	@ tmp292, tmp290,
	ldr	r3, [r3, #360]	@ _57->stFrameArray[j_28].eFrameState, _57->stFrameArray[j_28].eFrameState
	cmp	r3, #0	@ _57->stFrameArray[j_28].eFrameState,
	beq	.L127	@,
	b	.L125	@
.L128:
	add	r3, r3, #360	@ D.36598, D.36598,
	ldr	r3, [r4, r3]	@ MEM[base: _10, offset: 0B], MEM[base: _10, offset: 0B]
	cmp	r3, #0	@ MEM[base: _10, offset: 0B],
	bne	.L125	@,
.L127:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r1	@ j, D.36601
	mov	r3, r2, asl #4	@ D.36598, j,
	add	r3, r3, #216064	@ D.36598, D.36598,
	blt	.L128	@,
	mov	r3, #52	@ tmp309,
	add	r2, r4, ip	@ tmp304, D.36600, tmp324
	mla	r3, r3, r0, r7	@ D.36598, tmp309, j, pstInst
	add	r2, r2, #216064	@ tmp305, tmp304,
	add	r2, r2, #360	@ tmp305, tmp305,
	add	ip, ip, #216064	@ D.36598, tmp324,
	add	ip, ip, #360	@ D.36598, D.36598,
	mov	r8, r0	@ j, j
	ldr	r2, [r2, #4]	@ _57->stFrameArray[j_170].s32FrameAddr, _57->stFrameArray[j_170].s32FrameAddr
	add	r3, r3, #27648	@ ivtmp.220, D.36598,
	add	ip, r4, ip	@ ivtmp.223, D.36600, D.36598
	add	r3, r3, #160	@ ivtmp.220, ivtmp.220,
	mov	r9, #2	@ tmp325,
	mov	lr, #0	@ tmp326,
	str	r2, [r4, #236]	@ _57->stFrameArray[j_170].s32FrameAddr, _57->s32OffLineDnrMemAddr
.L130:
	ldr	r2, [r3], #52	@ s32FrameStartAddr, MEM[base: _79, offset: 0B]
	add	r0, r0, #1	@ j, j,
	cmp	r0, r1	@ j, D.36601
	str	r9, [ip]	@ tmp325, MEM[base: _136, offset: 0B]
	stmib	ip, {r2, r5, lr}	@ ivtmp.223,,,
	add	ip, ip, #16	@ ivtmp.223, ivtmp.223,
	bne	.L130	@,
.L131:
	ldrsb	lr, [r7, #10]	@ D.36601, pstInst_19->s32DecFsNum
	cmp	lr, r8	@ D.36601, j
	ble	.L110	@,
	add	r1, r6, r8	@ D.36601, s32DnrLockFrmNum, j
.L135:
	cmp	r1, lr	@ D.36601, D.36601
	bgt	.L110	@,
	mov	r0, #0	@ D.36599,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L116:
	ldr	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r2, r9, r2	@ D.36601, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r2, r3, r2	@ s32FreeSize, D.36601, D.36601
	cmp	r8, r2	@ D.36601, s32FreeSize
	bgt	.L119	@,
.L151:
	mov	r0, #0	@ D.36599,
	str	r3, [r4, #236]	@ D.36601, _57->s32OffLineDnrMemAddr
.L148:
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L125:
	add	r0, r2, #1	@ j, j,
	cmp	r0, lr	@ j, D.36601
	bge	.L110	@,
	add	r1, r6, r0	@ D.36601, s32DnrLockFrmNum, j
	cmp	r1, lr	@ D.36601, D.36601
	ble	.L123	@,
.L110:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36599,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L154:
	mov	r1, r5	@, s32ImgSize
	mov	r0, r8	@, D.36601
	bl	__aeabi_idiv	@
	mov	r1, r5	@, s32ImgSize
	mov	r6, r0	@ s32DnrLockFrmNum,
	mov	r0, r8	@, D.36601
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addgt	r6, r6, #1	@ s32DnrLockFrmNum, s32DnrLockFrmNum,
	b	.L120	@
.L117:
	ldr	r3, [sp, #40]	@ s32Num, %sfp
	sub	r10, r3, #-536870911	@ D.36598, s32Num,
	ldr	r3, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r2, r3, r10, lsl #3	@ D.36605, VoUsingFrameArray, D.36598,
	ldr	r3, [r3, r10, asl #3]	@ _111->FrameAddr, _111->FrameAddr
	ldr	r2, [r2, #4]	@ _111->FrameSize, _111->FrameSize
	add	r2, r3, r2	@ D.36601, _111->FrameAddr, _111->FrameSize
	b	.L118	@
.L124:
	add	r3, r4, r0, lsl #4	@ tmp318, D.36600, j,
	mov	r8, r0	@ j, j
	add	r3, r3, #216064	@ tmp319, tmp318,
	add	r3, r3, #360	@ tmp319, tmp319,
	ldr	r3, [r3, #4]	@ _57->stFrameArray[j_174].s32FrameAddr, _57->stFrameArray[j_174].s32FrameAddr
	str	r3, [r4, #236]	@ _57->stFrameArray[j_174].s32FrameAddr, _57->s32OffLineDnrMemAddr
	b	.L131	@
.L139:
	mov	r1, r6	@ D.36601, s32DnrLockFrmNum
	b	.L135	@
.L156:
	.align	2
.L155:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	FSP_NoneDnrSwitchToDnrNormCase, .-FSP_NoneDnrSwitchToDnrNormCase
	.align	2
	.type	FSP_NoneDnrSwitchToDnr, %function
FSP_NoneDnrSwitchToDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r0, #0	@ InstID
	.pad #520
	sub	sp, sp, #520	@,,
	mov	r3, #0	@ tmp127,
	str	r3, [sp, #4]	@ tmp127, s32UsingNum
	bne	.L160	@,
	ldr	r3, .L170	@ tmp128,
	ldr	r3, [r3]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L160	@,
	add	r3, r3, #32768	@ tmp130, pstInst,
	add	r1, sp, #520	@ D.36623,,
	mov	r2, #-2147483648	@ tmp148,
	ldr	r4, [r3, #1876]	@ s32VdhTotalMemUse, pstInst_9->TotalMemUsed
	add	r3, sp, #8	@ tmp151,,
.L161:
	str	r2, [r3]	@ tmp148, MEM[base: _17, offset: 0B]
	add	r3, r3, #8	@ ivtmp.247, ivtmp.247,
	str	r0, [r3, #-4]	@ tmp149, MEM[base: _17, offset: 4B]
	cmp	r3, r1	@ ivtmp.247, D.36623
	bne	.L161	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@ tmp152,,
	mov	r0, #0	@,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L160	@,
	ldr	r3, [sp, #4]	@ s32UsingNum, s32UsingNum
	cmp	r3, #0	@ s32UsingNum,
	ble	.L162	@,
	ldr	r1, [sp, #12]	@ D.36622, VoUsingImage[0].FrameSize
	cmp	r4, r1	@ s32VdhTotalMemUse, D.36622
	ble	.L163	@,
	mov	r4, r4, asl #1	@ D.36622, s32VdhTotalMemUse,
	movw	r2, #21846	@ tmp140,
	movt	r2, 21845	@ tmp140,
	smull	r2, r3, r4, r2	@ tmp139, D.36622, tmp140
	sub	r4, r3, r4, asr #31	@ D.36622,, D.36622,
	cmp	r1, r4	@ D.36622, D.36622
	blt	.L162	@,
.L163:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	add	r1, sp, #8	@ tmp153,,
	ldr	r2, [sp, #4]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L160	@,
.L164:
	mov	r0, #0	@ D.36620,
.L159:
	add	sp, sp, #520	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L162:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	add	r1, sp, #8	@ tmp154,,
	ldr	r2, [sp, #4]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L164	@,
.L160:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36620,
	b	.L159	@
.L171:
	.align	2
.L170:
	.word	.LANCHOR0
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
	ldr	r5, .L186	@ tmp156,
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ PartitionFlag, PartitionFlag
	ldr	r3, [r5, r0, asl #2]	@ D.36627, s_pstVfmwChan
	ldr	ip, [r3, #236]	@ D.36628, _7->s32OffLineDnrMemAddr
	ldr	r7, [r3, #1608]	@ s32ThrWidth, _7->stSynExtraData.s32DSDThrWidth
	ldr	r8, [r3, #1612]	@ s32ThrHeight, _7->stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.36628
	str	ip, [sp, #8]	@ D.36628, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp134, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _15->s32OffLineDNRMemSize, _15->s32OffLineDNRMemSize
	str	r0, [sp, #12]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	str	r3, [sp, #16]	@ _15->s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L173	@,
	cmp	r6, #1	@ PartitionFlag,
	beq	.L183	@,
	cmp	r6, #0	@ PartitionFlag,
	mov	r0, r4	@, InstID
	beq	.L184	@,
	bl	DNR_OpenChan	@
.L176:
	ldr	r3, [r5, r4, asl #2]	@ tmp138, s_pstVfmwChan
	add	r1, sp, #24	@ tmp142,,
	mov	r2, #0	@ tmp140,
	str	r7, [sp, #28]	@ s32ThrWidth, stDSDParam.s32ThrWidth
	str	r8, [sp, #32]	@ s32ThrHeight, stDSDParam.s32ThrHeight
	mov	r0, r4	@, InstID
	ldr	r3, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r2, [sp, #36]	@ tmp140, stDSDParam.s32MirrorEn
	str	r2, [sp]	@ tmp140,
	str	r3, [sp, #24]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, stDSDParam.s32DSDenable
	ldmia	r1, {r1, r2, r3}	@ tmp142,,,
	bl	DNR_SetDSDParam	@
	mov	r0, r4	@, InstID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L175	@,
.L180:
	ldr	r1, [r5, r4, asl #2]	@ D.36627, s_pstVfmwChan
	ldr	r5, .L186	@ tmp144,
	add	r1, r1, #217088	@ tmp146, D.36627,
	ldr	r3, [r1, #372]	@ _41->stDnrChanCfg.s32NeedConfigDnrChan, _41->stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r3, #1	@ _41->stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.36626,
	beq	.L185	@,
.L177:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L184:
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L176	@,
	b	.L175	@
.L173:
	cmp	r6, #1	@ PartitionFlag,
	bne	.L180	@,
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L180	@,
.L175:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36626,
	b	.L177	@
.L185:
	add	r1, r1, #360	@, tmp146,
	mov	r0, r4	@, InstID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@ D.36626
	bne	.L175	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	add	r3, r3, #217088	@ tmp153, tmp151,
	str	r0, [r3, #372]	@ D.36626, _47->stDnrChanCfg.s32NeedConfigDnrChan
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L183:
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L176	@,
	b	.L175	@
.L187:
	.align	2
.L186:
	.word	s_pstVfmwChan
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
	ldr	r4, .L190	@ tmp110,
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
.L191:
	.align	2
.L190:
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
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L195	@,
	ldr	r3, .L197	@ tmp117,
	ldr	r3, [r3]	@ D.36637, s_pFspInst
	ldr	r2, [r3, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	r2, #1	@ _6->eFspInstState,
	bne	.L195	@,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ D.36639, pstAttr_9(D)->s8LowBufEnable
	strb	r2, [r3, #1]	@ D.36639, _6->s8LowBufEnable
	ldmfd	sp!, {r4, pc}	@
.L195:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36636,
	ldmfd	sp!, {r4, pc}	@
.L198:
	.align	2
.L197:
	.word	.LANCHOR0
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
	beq	.L204	@,
	add	r6, r4, #40	@ D.36643, pFspInst,
	ldrb	r5, [r4]	@ zero_extendqisi2	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	mov	r2, #20	@,
	add	r0, sp, #4	@ tmp137,,
	mov	r1, r6	@, D.36643
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	ldr	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	bl	memcpy	@
	mov	r0, r4	@, pFspInst
	movw	r1, #34664	@,
	bl	__memzero	@
	ldr	r3, .L206	@ tmp127,
	sxtb	r2, r5	@ D.36644, s8TmpInstID
	strb	r5, [r4]	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	strb	r8, [r4, #1]	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	ldr	r3, [r3, r2, asl #2]	@ tmp129, s_pstVfmwChan
	str	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	ldr	r3, [r3, #1580]	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@ D.36642,
	beq	.L205	@,
.L201:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L205:
	add	r1, sp, #4	@ tmp138,,
	mov	r0, r6	@, D.36643
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, #0	@ D.36642,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L204:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36642,
	b	.L201	@
.L207:
	.align	2
.L206:
	.word	s_pstVfmwChan
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
	bne	.L211	@,
	ldr	r3, .L217	@ tmp115,
	ldr	r5, [r3]	@ D.36655, s_pFspInst
	cmp	r5, #0	@ D.36655,
	beq	.L211	@,
	ldr	r4, [r5, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	r4, #0	@ _6->eFspInstState,
	bne	.L212	@,
	mov	r0, r5	@, D.36655
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp117,
	mov	r0, r4	@ D.36654, _6->eFspInstState
	str	r3, [r5, #4]	@ tmp117, _6->eFspInstState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L212:
	mvn	r0, #0	@ D.36654,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L211:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36654,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L218:
	.align	2
.L217:
	.word	.LANCHOR0
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
	cmp	r0, #0	@ InstID
	bne	.L221	@,
	ldr	r3, .L226	@ tmp113,
	ldr	r3, [r3]	@ D.36659, s_pFspInst
	cmp	r3, #0	@ D.36659,
	beq	.L221	@,
	ldr	r2, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r2, #1	@ _5->eFspInstState,
	streq	r0, [r3, #4]	@ InstID, _5->eFspInstState
	bx	lr	@
.L221:
	b	vfmw_dprint_nothing	@
.L227:
	.align	2
.L226:
	.word	.LANCHOR0
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
	ldr	r3, .L236	@ tmp112,
	ldr	r3, [r3]	@ D.36663, s_pFspInst
	cmp	r3, #0	@ D.36663,
	bxeq	lr	@
	ldr	r3, [r3, #4]	@ _11->eFspInstState, _11->eFspInstState
	cmp	r3, #0	@ _11->eFspInstState,
	bxeq	lr	@
	mov	r0, #0	@,
	b	FSP_DisableInstance	@
.L237:
	.align	2
.L236:
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
	bne	.L241	@,
	ldr	r6, .L265	@ tmp138,
	ldr	r8, [r6]	@ D.36680, s_pFspInst
	cmp	r8, #0	@ D.36680,
	beq	.L241	@,
	add	r4, r8, #27648	@ ivtmp.274, D.36680,
	add	r5, r8, #30976	@ D.36686, D.36680,
	add	r4, r4, #150	@ ivtmp.274, ivtmp.274,
	add	r5, r5, #150	@ D.36686, D.36686,
	mov	r7, r6	@ tmp139, tmp138
	b	.L248	@
.L246:
	mov	r2, #0	@,
	mov	r0, r2	@,
	blx	r3	@ D.36685
.L245:
	ldrsb	r3, [r4]	@ MEM[base: _1, offset: 0B], MEM[base: _1, offset: 0B]
	cmp	r3, #0	@ MEM[base: _1, offset: 0B],
	beq	.L243	@,
	ldr	r3, [r6, #24]	@ D.36684, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #10]	@ D.36683, MEM[base: _1, offset: 10B]
	cmp	r3, #0	@ D.36684,
	beq	.L263	@,
	mov	r0, #0	@,
	blx	r3	@ D.36684
.L243:
	add	r4, r4, #52	@ ivtmp.274, ivtmp.274,
	cmp	r4, r5	@ ivtmp.274, D.36686
	beq	.L264	@,
.L248:
	ldr	r1, [r4, #10]	@ D.36681, MEM[base: _1, offset: 10B]
	cmp	r1, #0	@ D.36681,
	beq	.L243	@,
	ldr	r3, [r6, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L243	@,
	ldrsb	r3, [r4, #-2]	@ MEM[base: _1, offset: 4294967294B], MEM[base: _1, offset: 4294967294B]
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967294B],
	beq	.L245	@,
	ldr	r3, [r7, #28]	@ D.36685, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.36685,
	bne	.L246	@,
	bl	vfmw_dprint_nothing	@
	b	.L245	@
.L263:
	add	r4, r4, #52	@ ivtmp.274, ivtmp.274,
	bl	vfmw_dprint_nothing	@
	cmp	r4, r5	@ ivtmp.274, D.36686
	bne	.L248	@,
.L264:
	mov	r0, r8	@, D.36680
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.36678,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L241:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36678,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L266:
	.align	2
.L265:
	.word	.LANCHOR0
	.fnend
	.size	FSP_ResetInstance, .-FSP_ResetInstance
	.align	2
	.global	FSP_EmptyInstance
	.type	FSP_EmptyInstance, %function
FSP_EmptyInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r0, #0	@ InstID, InstID
	bne	.L270	@,
	ldr	r9, .L304	@ tmp175,
	ldr	r7, [r9]	@ D.36718, s_pFspInst
	cmp	r7, #0	@ D.36718,
	beq	.L270	@,
	mov	r1, #27648	@,
	add	r0, r7, #96	@, D.36718,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ _14->s32DecFsNum, _14->s32DecFsNum
	cmp	r3, #0	@ _14->s32DecFsNum,
	addgt	r4, r7, #27648	@ ivtmp.302, D.36718,
	addgt	r4, r4, #192	@ ivtmp.302, ivtmp.302,
	movgt	r6, r5	@ tmp179, i
	movgt	r8, r9	@ tmp178, tmp175
	ble	.L281	@,
.L280:
	ldr	r1, [r4, #-32]	@ D.36714, MEM[base: _73, offset: 4294967264B]
	cmp	r1, #0	@ D.36714,
	beq	.L275	@,
	ldr	r3, [r9, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L275	@,
	ldrsb	r3, [r4, #-44]	@ MEM[base: _73, offset: 4294967252B], MEM[base: _73, offset: 4294967252B]
	cmp	r3, #0	@ MEM[base: _73, offset: 4294967252B],
	beq	.L277	@,
	ldr	r3, [r8, #28]	@ D.36723, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.36723,
	beq	.L302	@,
	mov	r2, #0	@,
	mov	r0, r2	@,
	blx	r3	@ D.36723
.L277:
	ldrsb	r3, [r4, #-42]	@ MEM[base: _73, offset: 4294967254B], MEM[base: _73, offset: 4294967254B]
	cmp	r3, #0	@ MEM[base: _73, offset: 4294967254B],
	beq	.L275	@,
	ldr	r3, [r9, #24]	@ D.36722, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ D.36721, MEM[base: _73, offset: 4294967264B]
	cmp	r3, #0	@ D.36722,
	beq	.L303	@,
	mov	r0, #0	@,
	blx	r3	@ D.36722
.L275:
	strb	r6, [r4, #-44]	@ tmp179, MEM[base: _73, offset: 4294967252B]
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp179, MEM[base: _73, offset: 4294967254B]
	str	r6, [r4], #52	@ tmp179, MEM[base: _73, offset: 0B]
	ldrsb	r3, [r7, #10]	@ D.36714, _14->s32DecFsNum
	cmp	r3, r5	@ D.36714, i
	bgt	.L280	@,
.L281:
	ldrsb	r0, [r7, #11]	@ D.36720, _14->s32DispFsNum
	cmp	r0, #0	@ D.36720,
	addgt	r3, r7, #30976	@ ivtmp.290, D.36718,
	movgt	r2, #0	@ i,
	addgt	r3, r3, #148	@ ivtmp.290, ivtmp.290,
	movgt	r1, r2	@ tmp177, i
	ble	.L273	@,
.L284:
	add	r2, r2, #1	@ i, i,
	strb	r1, [r3]	@ tmp177, MEM[base: _8, offset: 0B]
	cmp	r0, r2	@ D.36720, i
	strb	r1, [r3, #2]	@ tmp177, MEM[base: _8, offset: 2B]
	str	r1, [r3, #44]	@ tmp177, MEM[base: _8, offset: 44B]
	add	r3, r3, #52	@ ivtmp.290, ivtmp.290,
	bne	.L284	@,
.L273:
	ldrsb	r2, [r7, #13]	@ D.36720, _14->s32PmvNum
	cmp	r2, #0	@ D.36720,
	addgt	r2, r2, #13	@ D.36719, D.36720,
	addgt	r3, r7, #13	@ ivtmp.281, D.36718,
	addgt	r2, r7, r2	@ D.36717, D.36718, D.36719
	movgt	r1, #0	@ tmp176,
	ble	.L283	@,
.L285:
	strb	r1, [r3, #1]!	@ tmp176, MEM[base: _27, offset: 0B]
	cmp	r3, r2	@ ivtmp.281, D.36717
	bne	.L285	@,
.L283:
	mov	r0, #0	@ tmp169,
	str	r0, [r7, #36]	@ tmp169, _14->u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L302:
	bl	vfmw_dprint_nothing	@
	b	.L277	@
.L303:
	bl	vfmw_dprint_nothing	@
	b	.L275	@
.L270:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36715,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L305:
	.align	2
.L304:
	.word	.LANCHOR0
	.fnend
	.size	FSP_EmptyInstance, .-FSP_EmptyInstance
	.align	2
	.global	FSP_ConfigInstance
	.type	FSP_ConfigInstance, %function
FSP_ConfigInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L309	@,
	cmp	r1, #0	@ pstFspInstCfg,
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	beq	.L309	@,
	ldr	r2, .L321	@ tmp120,
	ldr	r3, [r2]	@ D.36729, s_pFspInst
	cmp	r3, #0	@ D.36729,
	beq	.L309	@,
	ldr	r3, [r3, #4]	@ _9->eFspInstState, _9->eFspInstState
	cmp	r3, #1	@ _9->eFspInstState,
	bne	.L309	@,
	ldr	r3, .L321+4	@ tmp125,
	strb	r0, [r1]	@ InstID, pstFspInstCfg_7(D)->s32DispLoopEnable
	ldr	r5, [r2]	@ pstInst, s_pFspInst
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L310	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L310:
	mov	r1, r4	@, pstFspInstCfg
	add	r0, r5, #60	@, pstInst,
	mov	r2, #36	@,
	bl	memcpy	@
	mov	r0, #0	@ D.36728,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L309:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36728,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L322:
	.align	2
.L321:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
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
	add	r0, sp, #136	@ tmp1035,,
	mov	r1, #416	@,
	mov	r6, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L326	@,
	ldr	r3, .L421	@ tmp1036,
	ldr	r9, [r3]	@ D.36914, s_pFspInst
	cmp	r9, #0	@ D.36914,
	beq	.L326	@,
	add	r3, r9, #32768	@ tmp974, D.36914,
	mov	r0, r4	@, InstID
	str	r3, [sp, #92]	@ tmp974, %sfp
	str	r5, [r3, #1880]	@ MemPhyAddr, _23->MemAddr
	str	r6, [r3, #1884]	@ MemSize, _23->MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L405	@,
.L328:
	ldrsb	r3, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec
	cmp	r3, #1	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec,
	beq	.L375	@,
.L326:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36911,
.L400:
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L405:
	ldr	r1, .L421+4	@ tmp427,
	mov	r3, r0, asl #5	@ tmp430, eChanCapLevel,
	sub	r3, r3, r0, asl #2	@ tmp431, tmp430, eChanCapLevel,
	ldr	ip, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	add	lr, r1, r3	@ tmp432, tmp427, tmp431
	ldr	r2, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	r1, [r1, r3]	@ tmp441, CapItem
	ldr	r3, [lr, #4]	@ tmp442, CapItem
	mul	r2, r2, ip	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	mul	r3, r3, r1	@ D.36915, tmp442, tmp441
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, r3	@, D.36915, D.36915
	bgt	.L328	@,
.L375:
	ldr	r2, [r9, #92]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.36915,
	ldreqb	r3, [r9, #60]	@ zero_extendqisi2	@ D.36913, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	bne	.L406	@,
.L330:
	ldr	r1, .L421+8	@ tmp455,
	sxtb	r3, r3	@ D.36921, D.36913
	ldrsb	r2, [r9, #65]	@ D.36911, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	mov	r4, #4	@ D.36921,
	ldr	ip, [r1, #36]	@ D.36917, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	smlabb	r4, r4, r3, r2	@ MinFsNum, D.36921, D.36921, D.36911
	cmp	ip, #0	@ D.36917,
	beq	.L326	@,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	add	lr, sp, #136	@ tmp1040,,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	mov	r1, #64	@ tmp458,
	str	lr, [sp, #16]	@ tmp1040,
	mov	r0, #0	@ tmp460,
	str	r1, [sp, #20]	@ tmp458,
	mov	r7, #40	@ tmp462,
	str	r0, [sp, #12]	@ tmp460,
	mov	r1, r6	@, MemSize
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32UserDec
	mov	r0, r5	@, MemPhyAddr
	stmib	sp, {r7, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.36917
	cmp	r0, #0	@ Ret
	bne	.L326	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _23->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L326	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	strb	r0, [r9, #11]	@ Ret, _23->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable,
	strb	r0, [r9, #12]	@ Ret, _23->s32TfFsNum
	bne	.L334	@,
	ldrsb	r3, [r9, #1]	@ _23->s8LowBufEnable, _23->s8LowBufEnable
	cmp	r3, #0	@ _23->s8LowBufEnable,
	beq	.L335	@,
	ldr	r3, .L421+12	@ tmp473,
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _73->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _73->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _73->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L336	@,
	ldrsb	r3, [r9, #65]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r3, #4	@ D.36915, D.36915,
	cmp	r3, r2	@ D.36915, MemArrange.ValidFrameNum
	movge	r3, r2	@ D.36915, MemArrange.ValidFrameNum
	uxtb	r3, r3	@ D.36913, D.36915
	strb	r3, [r9, #10]	@ D.36913, _23->s32DecFsNum
	b	.L337	@
.L406:
	ldr	r1, [r9, #88]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.36913, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	cmp	r1, #0	@ D.36915,
	beq	.L330	@,
	cmp	r3, #0	@ D.36913,
	beq	.L330	@,
	ldr	r0, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	cmp	r2, r0	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	bne	.L382	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	cmp	r1, r2	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	beq	.L330	@,
.L382:
	mvn	r0, #0	@ D.36911,
	b	.L400	@
.L334:
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.36913, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	strb	r3, [r9, #10]	@ D.36913, _23->s32DecFsNum
.L337:
	sxtb	r4, r3	@ D.36915, D.36913
	ldr	r3, [sp, #136]	@ D.36911, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.36911, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.417,,
	str	r9, [sp, #128]	@ D.36914, %sfp
	str	r3, [sp, #72]	@ D.36911, %sfp
	ldr	r3, [sp, #92]	@ tmp974, %sfp
	str	r2, [sp, #80]	@ D.36911, %sfp
	ldr	r0, [r1, #-408]!	@ D.36915, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.36911, _23->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.36915, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.36911, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.417, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.36915, %sfp
	ldr	r2, [sp, #404]	@ D.36915, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.36911, %sfp
	ldr	r3, [r9, #76]	@ D.36911, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.36915, %sfp
	ldr	r2, [sp, #408]	@ D.36915, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.36911, %sfp
	mov	r3, r9	@ ivtmp.415, D.36914
	str	r0, [sp, #120]	@ D.36915, %sfp
	str	r2, [sp, #116]	@ D.36915, %sfp
	str	r9, [sp, #132]	@ ivtmp.379, %sfp
	str	r4, [sp, #104]	@ D.36915, %sfp
	b	.L341	@
.L407:
	ldr	r2, [sp, #84]	@ D.36912, %sfp
	str	r1, [r2]	@ i, MEM[base: _553, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.417, %sfp
	ldr	r0, [r2]	@ D.36915, MEM[base: _554, offset: 0B]
	ldr	r2, [sp, #56]	@ D.36912, %sfp
	str	r0, [r10]	@ D.36915, MEM[base: _556, offset: 0B]
	ldr	r0, [sp, #72]	@ D.36911, %sfp
	str	r0, [r9]	@ D.36911, MEM[base: _558, offset: 0B]
	ldr	r0, [sp, #96]	@ D.36911, %sfp
	str	r0, [r8]	@ D.36911, MEM[base: _560, offset: 0B]
	ldr	r0, [sp, #100]	@ D.36911, %sfp
	str	r0, [r7]	@ D.36911, MEM[base: _562, offset: 0B]
	ldr	r0, [sp, #108]	@ D.36915, %sfp
	str	r0, [r6]	@ D.36915, MEM[base: _564, offset: 0B]
	ldr	r0, [sp, #112]	@ D.36915, %sfp
	str	r0, [r5]	@ D.36915, MEM[base: _566, offset: 0B]
	ldr	r0, [sp, #116]	@ D.36915, %sfp
	str	r0, [r4]	@ D.36915, MEM[base: _568, offset: 0B]
	mov	r0, #0	@ tmp1309,
	strb	r0, [lr]	@ tmp1309, MEM[base: _570, offset: 0B]
	strb	r0, [ip]	@ tmp1308, MEM[base: _572, offset: 0B]
	strb	r0, [r2]	@ tmp1307, MEM[base: _574, offset: 0B]
	ldr	r2, [sp, #60]	@ D.36912, %sfp
	ldr	r0, [sp, #80]	@ D.36911, %sfp
	str	r0, [r2]	@ D.36911,* D.36912
.L339:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.417, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.415, ivtmp.415,
	add	r2, r2, #4	@ ivtmp.417, ivtmp.417,
	str	r2, [sp, #76]	@ ivtmp.417, %sfp
	beq	.L340	@,
	ldr	r2, [sp, #92]	@ tmp974, %sfp
	ldr	r2, [r2, #1872]	@ D.36911, _23->ImgSlotLen
	str	r2, [sp, #80]	@ D.36911, %sfp
.L341:
	add	r2, r3, #27648	@ D.36912, ivtmp.415,
	mov	r0, r2	@ D.36912, D.36912
	add	r2, r2, #152	@ D.36912, D.36912,
	str	r2, [sp, #84]	@ D.36912, %sfp
	add	r10, r0, #160	@ D.36912, D.36912,
	ldr	r2, [sp, #104]	@ D.36915, %sfp
	add	r9, r0, #168	@ D.36912, D.36912,
	add	r8, r0, #172	@ D.36912, D.36912,
	add	r7, r0, #176	@ D.36912, D.36912,
	cmp	r2, r1	@ D.36915, i
	add	r2, r0, #160	@ D.36912, D.36912,
	str	r2, [sp, #88]	@ D.36912, %sfp
	add	r2, r0, #168	@ D.36912, D.36912,
	str	r2, [sp, #24]	@ D.36912, %sfp
	add	r2, r0, #172	@ D.36912, D.36912,
	str	r2, [sp, #28]	@ D.36912, %sfp
	add	r2, r0, #176	@ D.36912, D.36912,
	str	r2, [sp, #32]	@ D.36912, %sfp
	add	r2, r0, #180	@ D.36912, D.36912,
	str	r2, [sp, #36]	@ D.36912, %sfp
	add	r2, r0, #184	@ D.36912, D.36912,
	str	r2, [sp, #40]	@ D.36912, %sfp
	add	r2, r0, #188	@ D.36912, D.36912,
	str	r2, [sp, #44]	@ D.36912, %sfp
	add	r2, r0, #148	@ D.36912, D.36912,
	str	r2, [sp, #48]	@ D.36912, %sfp
	add	r2, r0, #149	@ D.36912, D.36912,
	str	r2, [sp, #52]	@ D.36912, %sfp
	add	r2, r0, #150	@ D.36912, D.36912,
	str	r2, [sp, #56]	@ D.36912, %sfp
	add	r2, r0, #196	@ D.36912, D.36912,
	str	r2, [sp, #60]	@ D.36912, %sfp
	add	r2, r0, #152	@ D.36912, D.36912,
	str	r2, [sp, #64]	@ D.36912, %sfp
	add	r2, r0, #150	@ D.36912, D.36912,
	str	r2, [sp, #68]	@ D.36912, %sfp
	add	r2, r0, #196	@ D.36912, D.36912,
	add	r6, r0, #180	@ D.36912, D.36912,
	add	r5, r0, #184	@ D.36912, D.36912,
	add	r4, r0, #188	@ D.36912, D.36912,
	add	lr, r0, #148	@ D.36912, D.36912,
	add	ip, r0, #149	@ D.36912, D.36912,
	mov	r0, r2	@ D.36912, D.36912
	bgt	.L407	@,
	ldr	r2, [sp, #64]	@ D.36912, %sfp
	mov	fp, #0	@ tmp1306,
	str	fp, [r2]	@ tmp1306, MEM[base: _578, offset: 0B]
	ldr	r2, [sp, #120]	@ D.36915, %sfp
	str	r2, [r10]	@ D.36915, MEM[base: _580, offset: 0B]
	ldr	r2, [sp, #72]	@ D.36911, %sfp
	str	r2, [r9]	@ D.36911, MEM[base: _582, offset: 0B]
	ldr	r2, [sp, #96]	@ D.36911, %sfp
	str	r2, [r8]	@ D.36911, MEM[base: _584, offset: 0B]
	ldr	r2, [sp, #100]	@ D.36911, %sfp
	str	r2, [r7]	@ D.36911, MEM[base: _586, offset: 0B]
	ldr	r2, [sp, #108]	@ D.36915, %sfp
	str	r2, [r6]	@ D.36915, MEM[base: _588, offset: 0B]
	ldr	r2, [sp, #112]	@ D.36915, %sfp
	str	r2, [r5]	@ D.36915, MEM[base: _590, offset: 0B]
	ldr	r2, [sp, #116]	@ D.36915, %sfp
	str	r2, [r4]	@ D.36915, MEM[base: _592, offset: 0B]
	mov	r2, r0	@ D.36912, D.36912
	strb	fp, [lr]	@ tmp1305, MEM[base: _594, offset: 0B]
	ldr	r0, [sp, #80]	@ D.36911, %sfp
	strb	fp, [ip]	@ tmp1304, MEM[base: _596, offset: 0B]
	ldr	ip, [sp, #68]	@ D.36912, %sfp
	strb	fp, [ip]	@ tmp1302, MEM[base: _598, offset: 0B]
	str	r0, [r2]	@ D.36911,* D.36912
	b	.L339	@
.L340:
	ldr	r4, [sp, #104]	@ D.36915, %sfp
	add	r2, sp, #552	@ tmp1126,,
	ldr	r5, [sp, #92]	@ tmp974, %sfp
	add	r0, sp, #400	@,,
	ldr	r9, [sp, #128]	@ D.36914, %sfp
	mov	r3, #1	@ tmp553,
	ldr	r6, [sp, #72]	@ D.36911, %sfp
	add	r2, r2, r4, lsl #2	@ tmp561, tmp1126, D.36915,
	ldr	lr, [sp, #132]	@ ivtmp.379, %sfp
	strb	r3, [r9, #12]	@ tmp553, _23->s32TfFsNum
	mov	r3, #0	@ tmp557,
	str	r6, [r5, #1704]	@ D.36911, _23->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.36911, %sfp
	ldr	ip, [r2, #-408]	@ tmp563, MemArrange.FrameAddr
	ldmia	r0, {r0, r1, r2}	@,,,
	str	r6, [r5, #1708]	@ D.36911, _23->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.36911, %sfp
	str	ip, [r5, #1696]	@ tmp563, _23->stTfFs[0].PhyAddr
	str	r0, [r5, #1716]	@ MemArrange.ChromOffset, _23->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.36911, _23->stTfFs[0].FsHeight
	str	r1, [r5, #1720]	@ MemArrange.LumaPixelOffset, _23->stTfFs[0].LumaPixelOffset
	str	r2, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _23->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp557, _23->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp557, _23->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp557, _23->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp557, _23->stTfFs[0].DispState
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.36913, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.36913,
	streqb	r3, [r9, #11]	@ D.36913, _23->s32DispFsNum
	streq	r3, [sp, #44]	@ D.36913, %sfp
	beq	.L343	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r9, #67]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.36915, D.36915, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.36915, D.36915,
	cmp	r3, #25	@ D.36915,
	movge	r3, #25	@ D.36915,
	uxtb	r3, r3	@ D.36913, D.36915
	strb	r3, [r9, #11]	@ D.36913, _23->s32DispFsNum
	sxtb	r3, r3	@ D.36915, D.36913
	str	r3, [sp, #44]	@ D.36915, %sfp
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDispFsNum, D.36915
	bgt	.L326	@,
.L343:
	ldr	r3, [sp, #400]	@ D.36915, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.36911, MemArrange.VahbStride
	mov	r0, ip	@ tmp984, i
	str	r3, [sp, #96]	@ D.36915, %sfp
	ldr	r3, [sp, #404]	@ D.36915, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.36911, %sfp
	str	r3, [sp, #100]	@ D.36915, %sfp
	ldr	r3, [sp, #408]	@ D.36915, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.36915, %sfp
	mov	r3, #1	@ D.36913,
	mov	r2, r3	@ D.36913, D.36913
	mov	r3, r4	@ D.36915, D.36915
	b	.L376	@
.L409:
	ldr	r3, [sp, #48]	@ D.36912, %sfp
	ldr	r2, [sp, #56]	@ D.36912, %sfp
	str	ip, [r3]	@ i, MEM[base: _15, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp607, %sfp
	ldr	r3, [r3, #-408]	@ D.36915, MemArrange.FrameAddr
	str	r3, [r2]	@ D.36915, MEM[base: _10, offset: 0B]
	ldr	r3, [sp, #60]	@ D.36912, %sfp
	ldr	r2, [sp, #72]	@ D.36911, %sfp
	str	r2, [r3]	@ D.36911, MEM[base: _5, offset: 0B]
	ldr	r2, [sp, #64]	@ D.36912, %sfp
	ldr	r3, [r9, #88]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.36915, MEM[base: _457, offset: 0B]
	ldr	r2, [sp, #96]	@ D.36915, %sfp
	ldr	r3, [r9, #92]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.36915, MEM[base: _161, offset: 0B]
	str	r2, [r7]	@ D.36915, MEM[base: _60, offset: 0B]
	ldr	r2, [sp, #100]	@ D.36915, %sfp
	str	r2, [r6]	@ D.36915, MEM[base: _38, offset: 0B]
	ldr	r2, [sp, #104]	@ D.36915, %sfp
	str	r2, [r5]	@ D.36915, MEM[base: _415, offset: 0B]
	strb	r0, [r4]	@ tmp984, MEM[base: _447, offset: 0B]
	strb	r0, [fp]	@ tmp984, MEM[base: _450, offset: 0B]
	strb	r0, [r10]	@ tmp984, MEM[base: _536, offset: 0B]
.L345:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.36911, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.379, ivtmp.379,
	str	r3, [sp, #72]	@ D.36911, %sfp
	beq	.L408	@,
	ldrsb	r1, [r9, #11]	@ D.36915, _23->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.36913, _23->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.36915, _23->s32DecFsNum
	str	r1, [sp, #44]	@ D.36915, %sfp
.L376:
	add	r1, ip, r3	@ tmp604, i, D.36915
	sxtab	r3, r3, r2	@ tmp640, D.36915, D.36913
	sxtab	r2, r1, r2	@ tmp605, tmp604, D.36913
	add	r1, lr, #30976	@ D.36912, ivtmp.379,
	mov	r4, r1	@ D.36912, D.36912
	add	r1, r1, #152	@ D.36912, D.36912,
	str	r1, [sp, #48]	@ D.36912, %sfp
	add	r1, sp, #552	@ tmp1149,,
	add	r3, r1, r3, lsl #2	@ tmp642, tmp1153, tmp640,
	str	r3, [sp, #76]	@ tmp642, %sfp
	add	r3, r4, #160	@ D.36912, D.36912,
	str	r3, [sp, #56]	@ D.36912, %sfp
	add	r3, r4, #168	@ D.36912, D.36912,
	str	r3, [sp, #60]	@ D.36912, %sfp
	add	r3, r4, #160	@ D.36912, D.36912,
	str	r3, [sp, #80]	@ D.36912, %sfp
	add	r3, r4, #168	@ D.36912, D.36912,
	str	r3, [sp, #84]	@ D.36912, %sfp
	ldr	r3, [sp, #44]	@ D.36915, %sfp
	add	r2, r1, r2, lsl #2	@ tmp607, tmp1149, tmp605,
	add	r10, r4, #150	@ D.36912, D.36912,
	str	r2, [sp, #52]	@ tmp607, %sfp
	cmp	r3, ip	@ D.36915, i
	add	r3, r4, #176	@ D.36912, D.36912,
	str	r3, [sp, #44]	@ D.36912, %sfp
	add	r3, r4, #180	@ D.36912, D.36912,
	str	r3, [sp, #24]	@ D.36912, %sfp
	add	r3, r4, #184	@ D.36912, D.36912,
	str	r3, [sp, #28]	@ D.36912, %sfp
	add	r3, r4, #188	@ D.36912, D.36912,
	str	r3, [sp, #32]	@ D.36912, %sfp
	add	r3, r4, #148	@ D.36912, D.36912,
	add	r2, r4, #152	@ D.36912, D.36912,
	add	fp, r4, #149	@ D.36912, D.36912,
	str	r2, [sp, #68]	@ D.36912, %sfp
	add	r8, r4, #176	@ D.36912, D.36912,
	add	r2, r4, #172	@ D.36912, D.36912,
	add	r7, r4, #180	@ D.36912, D.36912,
	add	r6, r4, #184	@ D.36912, D.36912,
	add	r5, r4, #188	@ D.36912, D.36912,
	str	r2, [sp, #64]	@ D.36912, %sfp
	mov	r4, r3	@ D.36912, D.36912
	str	r2, [sp, #88]	@ D.36912, %sfp
	str	r3, [sp, #36]	@ D.36912, %sfp
	str	r10, [sp, #40]	@ D.36912, %sfp
	bgt	.L409	@,
	ldr	r3, [sp, #68]	@ D.36912, %sfp
	ldr	r2, [sp, #72]	@ D.36911, %sfp
	str	r0, [r3]	@ tmp984, MEM[base: _528, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp642, %sfp
	ldr	r10, [r3, #-408]	@ D.36915, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.36912, %sfp
	str	r10, [r3]	@ D.36915, MEM[base: _523, offset: 0B]
	ldr	r3, [sp, #84]	@ D.36912, %sfp
	str	r2, [r3]	@ D.36911, MEM[base: _510, offset: 0B]
	ldr	r3, [sp, #88]	@ D.36912, %sfp
	ldr	r10, [r9, #88]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.36915, MEM[base: _504, offset: 0B]
	ldr	r3, [r9, #92]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.36915, MEM[base: _498, offset: 0B]
	ldr	r3, [sp, #96]	@ D.36915, %sfp
	str	r3, [r7]	@ D.36915, MEM[base: _492, offset: 0B]
	ldr	r3, [sp, #100]	@ D.36915, %sfp
	str	r3, [r6]	@ D.36915, MEM[base: _539, offset: 0B]
	ldr	r3, [sp, #104]	@ D.36915, %sfp
	str	r3, [r5]	@ D.36915, MEM[base: _541, offset: 0B]
	ldr	r3, [sp, #40]	@ D.36912, %sfp
	strb	r0, [r4]	@ tmp984, MEM[base: _543, offset: 0B]
	strb	r0, [fp]	@ tmp984, MEM[base: _545, offset: 0B]
	strb	r0, [r3]	@ tmp984, MEM[base: _547, offset: 0B]
	b	.L345	@
.L408:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.351,,
	add	r0, r9, #34560	@ ivtmp.357, D.36914,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.361, D.36914,
	mov	lr, r2	@ tmp983, i
	movge	r3, #20	@ D.36915,
	uxtb	r3, r3	@ D.36913, D.36915
	strb	r3, [r9, #13]	@ D.36913, _23->s32PmvNum
	b	.L350	@
.L410:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.36913, _23->s32PmvNum
.L350:
	sxtb	r3, r3	@ D.36915, D.36913
	add	ip, ip, #4	@ ivtmp.351, ivtmp.351,
	cmp	r3, r2	@ D.36915, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.357, ivtmp.357,
	add	r1, r1, #1	@ ivtmp.361, ivtmp.361,
	ldrgt	r3, [ip, #-4]	@ D.36915, MEM[base: _333, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.36915, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.36915,
	strb	lr, [r1, #-1]	@ tmp983,
	bne	.L410	@,
	ldr	r8, [sp, #92]	@ tmp974, %sfp
	add	r4, r9, #24576	@ tmp976, D.36914,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r3, #0	@ tmp684,
	ldr	r2, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r7, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r8, #1788]	@ MemArrange.HafPmvOffset, _23->s32HalfPmvOffset
	ldr	ip, [r4, #3232]	@ D.36915, _23->stDecFs[0].PhyAddr
	str	r2, [r4, #3188]	@ MemArrange.VahbStride, _23->stDummyPhyFs.Stride
	str	r3, [r4, #3172]	@ tmp684, _23->stDummyPhyFs.PhyFsID
	str	ip, [r4, #3180]	@ D.36915, _23->stDummyPhyFs.PhyAddr
	ldr	r2, [r9, #72]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	ldr	r6, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	ldr	r5, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r4, #3192]	@ D.36915, _23->stDummyPhyFs.FsWidth
	ldr	lr, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r0, [r9, #76]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.36915, MemArrange.TotalMemUsed
	strb	r3, [r4, #3168]	@ tmp684, _23->stDummyPhyFs.IsDecRef
	str	r0, [r4, #3196]	@ D.36915, _23->stDummyPhyFs.FsHeight
	strb	r3, [r4, #3169]	@ tmp684, _23->stDummyPhyFs.IsTfRef
	strb	r3, [r4, #3170]	@ tmp684, _23->stDummyPhyFs.DispState
	str	r7, [r4, #3200]	@ MemArrange.ChromOffset, _23->stDummyPhyFs.ChromOffset
	str	r6, [r4, #3204]	@ MemArrange.LumaPixelOffset, _23->stDummyPhyFs.LumaPixelOffset
	str	r5, [r4, #3208]	@ MemArrange.ChromaPixelOffset, _23->stDummyPhyFs.ChromaPixelOffset
	str	lr, [r8, #1888]	@ MemArrange.u32StrideByte, _23->StrideByte
	str	r1, [r8, #1876]	@ D.36915, _23->TotalMemUsed
	ldr	r3, [r9, #40]	@ _23->stPreInfo.s32PreWidth, _23->stPreInfo.s32PreWidth
	cmp	r2, r3	@ D.36915, _23->stPreInfo.s32PreWidth
	beq	.L411	@,
.L351:
	ldr	r5, .L421+12	@ tmp971,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r8, [r3, #1580]	@ _465->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _465->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r8, #1	@ _465->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L412	@,
.L378:
	ldrsb	r3, [r9, #10]	@ _23->s32DecFsNum, _23->s32DecFsNum
	ldrsb	lr, [r9, #65]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	str	r2, [r9, #40]	@ D.36915, _23->stPreInfo.s32PreWidth
	str	r0, [r9, #44]	@ D.36915, _23->stPreInfo.s32PreHeight
	str	r3, [r9, #48]	@ _23->s32DecFsNum, _23->stPreInfo.s32PreDecNum
	ldr	r3, [r4, #3284]	@ _23->stDecFs[1].PhyAddr, _23->stDecFs[1].PhyAddr
	str	lr, [r9, #56]	@ MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum, _23->stPreInfo.s32PreExpectNum
	rsb	r3, ip, r3	@ D.36915, D.36915, _23->stDecFs[1].PhyAddr
	str	r3, [r9, #52]	@ D.36915, _23->stPreInfo.s32PreDecSlotLen
.L352:
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	mov	r0, #0	@ D.36911,
	str	r1, [r3]	@ D.36915, *UsedMemSize_278(D)
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L335:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.36915,
	uxtb	r3, r3	@ D.36913, D.36915
	strb	r3, [r9, #10]	@ D.36913, _23->s32DecFsNum
	b	.L337	@
.L411:
	ldr	r3, [r9, #44]	@ _23->stPreInfo.s32PreHeight, _23->stPreInfo.s32PreHeight
	cmp	r0, r3	@ D.36915, _23->stPreInfo.s32PreHeight
	bne	.L351	@,
	ldrsb	lr, [r9, #10]	@ D.36915, _23->s32DecFsNum
	ldr	r3, [r9, #48]	@ _23->stPreInfo.s32PreDecNum, _23->stPreInfo.s32PreDecNum
	cmp	lr, r3	@ D.36915, _23->stPreInfo.s32PreDecNum
	bne	.L351	@,
	ldrsb	lr, [r9, #65]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32ExpectedDecFsNum
	ldr	r3, [r9, #56]	@ _23->stPreInfo.s32PreExpectNum, _23->stPreInfo.s32PreExpectNum
	cmp	lr, r3	@ D.36915, _23->stPreInfo.s32PreExpectNum
	bne	.L351	@,
	b	.L352	@
.L412:
	ldr	r0, .L421+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, .L421	@ tmp1211,
	ldr	r2, [r5]	@ D.36918, s_pstVfmwChan
	ldr	r7, .L421	@ tmp729,
	ldr	r3, [r3]	@ pstInst, s_pFspInst
	ldr	r1, [r2, #1608]	@ _285->stSynExtraData.s32DSDThrWidth, _285->stSynExtraData.s32DSDThrWidth
	ldr	r6, [r3, #76]	@ pstInst_282->stInstCfg.s32DecFsHeight, pstInst_282->stInstCfg.s32DecFsHeight
	ldr	r0, [r3, #72]	@ pstInst_282->stInstCfg.s32DecFsWidth, pstInst_282->stInstCfg.s32DecFsWidth
	ldr	r3, [r2, #1612]	@ _285->stSynExtraData.s32DSDThrHeight, _285->stSynExtraData.s32DSDThrHeight
	cmp	r6, r3	@ pstInst_282->stInstCfg.s32DecFsHeight, _285->stSynExtraData.s32DSDThrHeight
	cmple	r0, r1	@, pstInst_282->stInstCfg.s32DecFsWidth, _285->stSynExtraData.s32DSDThrWidth
	movle	r6, #1	@ tmp741,
	movgt	r6, #0	@ tmp741,
	bgt	.L353	@,
	ldr	r3, [r2, #1604]	@ _285->stSynExtraData.s32DnrEnable, _285->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _285->stSynExtraData.s32DnrEnable,
	beq	.L413	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L373	@,
	mov	r1, r8	@, _465->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	beq	.L403	@,
	ldr	r8, .L421+20	@ tmp975,
.L379:
	ldr	r3, [r5]	@ D.36918, s_pstVfmwChan
	mov	r1, #1	@ tmp853,
	ldr	r2, [r3, #236]	@ D.36915, _296->s32OffLineDnrMemAddr
	str	r1, [r3, #1604]	@ tmp853, _296->stSynExtraData.s32DnrEnable
	str	r2, [r8, #2932]	@ D.36915, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r3, [r3, #240]	@ D.36915, _296->s32OffLineDNRMemSize
	str	r3, [r8, #2936]	@ D.36915, s_DnrChan[0].s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L421+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret,
	bne	.L326	@,
.L364:
	ldr	r2, [r9, #72]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsWidth
	ldr	r0, [r9, #76]	@ D.36915, MEM[(struct FSP_INST_CFG_S *)_23 + 60B].s32DecFsHeight
	ldr	ip, [r4, #3232]	@ D.36915, _23->stDecFs[0].PhyAddr
	ldr	r1, [sp, #140]	@ D.36915, MemArrange.TotalMemUsed
	b	.L378	@
.L353:
	ldr	r0, [r2, #1604]	@ _285->stSynExtraData.s32DnrEnable, _285->stSynExtraData.s32DnrEnable
	cmp	r0, #1	@ _285->stSynExtraData.s32DnrEnable,
	beq	.L414	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7]	@ pstInst, s_pFspInst
	add	r2, r3, #32768	@ tmp903, pstInst,
	mov	r1, r3	@ pstInst, pstInst
	ldrsb	r3, [r3, #10]	@ pstInst_359->s32DecFsNum, pstInst_359->s32DecFsNum
	ldr	r10, [r2, #1872]	@ s32ImgSize, pstInst_359->ImgSlotLen
	cmp	r3, #0	@ pstInst_359->s32DecFsNum,
	ble	.L366	@,
	add	r7, r1, #27648	@ ivtmp.338, pstInst,
	str	r4, [sp, #24]	@ tmp976, %sfp
	add	r7, r7, #160	@ ivtmp.338, ivtmp.338,
	mov	r4, r1	@ pstInst, pstInst
	mov	r2, r7	@ ivtmp.338, ivtmp.338
	mov	r7, r10	@ s32ImgSize, s32ImgSize
	mov	r10, r2	@ ivtmp.338, ivtmp.338
	b	.L374	@
.L416:
	ldr	r3, [r5]	@ D.36918, s_pstVfmwChan
	add	r3, r3, r6, lsl #4	@ tmp910, D.36918, i,
	add	r2, r3, #216064	@ tmp912, tmp910,
	add	r3, r3, #212992	@ tmp922, tmp910,
	str	r0, [r2, #360]	@ s32UsingCount, _364->stFrameArray[i_481].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r7, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L372:
	ldrsb	r3, [r4, #10]	@ D.36915, pstInst_359->s32DecFsNum
	add	r6, r6, #1	@ i, i,
	add	r10, r10, #52	@ ivtmp.338, ivtmp.338,
	cmp	r6, r3	@ i, D.36915
	bge	.L415	@,
.L374:
	ldr	fp, [r10]	@ s32FrameStartAddr, MEM[base: _456, offset: 0B]
	mov	r2, r7	@, s32ImgSize
	mov	r0, #0	@,
	mov	r1, fp	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L416	@,
	ble	.L373	@,
	ldr	r3, [r5]	@ D.36918, s_pstVfmwChan
	add	r3, r3, r6, lsl #4	@ tmp930, D.36918, i,
	add	r2, r3, #216064	@ tmp932, tmp930,
	add	r3, r3, #212992	@ tmp942, tmp930,
	str	r8, [r2, #360]	@ tmp982, _365->stFrameArray[i_481].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r7, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L372	@
.L336:
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.36913, MemArrange.ValidFrameNum
	strb	r3, [r9, #10]	@ D.36913, _23->s32DecFsNum
	b	.L337	@
.L417:
	ldr	r9, [sp, #28]	@ D.36914, %sfp
.L366:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret
	bne	.L373	@,
	ldr	r3, [r5]	@ D.36918, s_pstVfmwChan
	ldr	r2, .L421+20	@ tmp950,
	ldr	r1, [r3, #236]	@ D.36915, _301->s32OffLineDnrMemAddr
	str	r0, [r3, #1604]	@ s32Ret, _301->stSynExtraData.s32DnrEnable
	str	r1, [r2, #2932]	@ D.36915, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r3, [r3, #240]	@ D.36915, _301->s32OffLineDNRMemSize
	str	r3, [r2, #2936]	@ D.36915, s_DnrChan[0].s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L421+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L364	@
.L415:
	ldr	r4, [sp, #24]	@ tmp976, %sfp
	b	.L366	@
.L414:
	str	r0, [sp, #24]	@ _285->stSynExtraData.s32DnrEnable, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r10, [r7]	@ pstInst, s_pFspInst
	ldr	r3, .L421+20	@ tmp867,
	add	r2, r10, #32768	@ tmp864, pstInst,
	ldrsb	r1, [r10, #10]	@ pstInst_334->s32DecFsNum, pstInst_334->s32DecFsNum
	ldr	r8, [r3, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	fp, [r3, #2936]	@ s_DnrChan[0].s32OffLineDNRMemSize, s_DnrChan[0].s32OffLineDNRMemSize
	cmp	r1, #0	@ pstInst_334->s32DecFsNum,
	ldr	r7, [r2, #1872]	@ s32ImgSize, pstInst_334->ImgSlotLen
	add	fp, r8, fp	@ s32DnrEndAddr, s32DnrStartAddr, s_DnrChan[0].s32OffLineDNRMemSize
	ble	.L366	@,
	ldr	r2, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	add	lr, r10, #27648	@ ivtmp.317, pstInst,
	add	lr, lr, #160	@ ivtmp.317, ivtmp.317,
	mov	r3, r6	@ i, tmp741
	add	r2, r2, #216064	@ ivtmp.320, s_pstVfmwChan,
	str	r9, [sp, #28]	@ D.36914, %sfp
	add	r2, r2, #360	@ ivtmp.320, ivtmp.320,
	mov	ip, r2	@ ivtmp.331, ivtmp.320
	mov	r0, r2	@ ivtmp.326, ivtmp.320
	b	.L370	@
.L418:
	ldr	r9, [sp, #24]	@ tmp980, %sfp
	ldr	r6, [r2, #12]	@ MEM[base: _168, offset: 12B], MEM[base: _168, offset: 12B]
	str	r1, [r2, #4]	@ s32FrameStartAddr, MEM[base: _168, offset: 4B]
	str	r9, [r2]	@ tmp980, MEM[base: _168, offset: 0B]
	add	r1, r6, #1	@ D.36915, MEM[base: _168, offset: 12B],
	str	r7, [r2, #8]	@ s32ImgSize, MEM[base: _168, offset: 8B]
	str	r1, [r2, #12]	@ D.36915, MEM[base: _168, offset: 12B]
.L368:
	ldrsb	r1, [r10, #10]	@ D.36915, pstInst_334->s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	lr, lr, #52	@ ivtmp.317, ivtmp.317,
	add	r2, r2, #16	@ ivtmp.320, ivtmp.320,
	cmp	r3, r1	@ i, D.36915
	add	r0, r0, #16	@ ivtmp.326, ivtmp.326,
	add	ip, ip, #16	@ ivtmp.331, ivtmp.331,
	bge	.L417	@,
.L370:
	ldr	r1, [lr]	@ s32FrameStartAddr, MEM[base: _166, offset: 0B]
	cmp	fp, r1	@ s32DnrEndAddr, s32FrameStartAddr
	add	r6, r7, r1	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r9, #1	@ tmp883,
	movle	r9, #0	@ tmp883,
	cmp	r8, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r9, #0	@ tmp883,
	cmp	r9, #0	@ tmp883,
	bne	.L418	@,
	cmp	r8, r6	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r6, #0	@ tmp894,
	movlt	r6, #1	@ tmp894,
	cmp	r8, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r6, #0	@ tmp894,
	cmp	r6, #0	@ tmp894,
	strne	r1, [r0, #4]	@ s32FrameStartAddr, MEM[base: _265, offset: 4B]
	ldrne	r9, [sp, #24]	@ tmp980, %sfp
	ldrne	r6, [r0, #12]	@ MEM[base: _265, offset: 12B], MEM[base: _265, offset: 12B]
	strne	r7, [r0, #8]	@ s32ImgSize, MEM[base: _265, offset: 8B]
	addne	r1, r6, #1	@ D.36915, MEM[base: _265, offset: 12B],
	strne	r9, [r0]	@ tmp980, MEM[base: _265, offset: 0B]
	strne	r1, [r0, #12]	@ D.36915, MEM[base: _265, offset: 12B]
	streq	r6, [ip]	@ tmp894, MEM[base: _328, offset: 0B]
	stmeqib	ip, {r1, r7}	@ ivtmp.331,,
	streq	r6, [ip, #12]	@ tmp894, MEM[base: _328, offset: 12B]
	b	.L368	@
.L413:
	bl	vfmw_dprint_nothing	@
	ldr	r8, .L421+20	@ tmp975,
	ldr	r3, [r7]	@ pstInst, s_pFspInst
	ldr	r2, [r8, #2936]	@ s32DnrSize, s_DnrChan[0].s32OffLineDNRMemSize
	mov	r0, r3	@ pstInst, pstInst
	ldr	fp, [r8, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	add	r1, r0, #32768	@ tmp752, pstInst,
	add	ip, fp, r2	@ s32DnrEndAddr, s32DnrStartAddr, s32DnrSize
	str	r3, [sp, #28]	@ pstInst, %sfp
	ldr	r3, [r5]	@ D.36918, s_pstVfmwChan
	str	ip, [sp, #24]	@ s32DnrEndAddr, %sfp
	str	fp, [r3, #236]	@ s32DnrStartAddr, _310->s32OffLineDnrMemAddr
	str	r2, [r3, #240]	@ s32DnrSize, _310->s32OffLineDNRMemSize
	ldrsb	r2, [r0, #10]	@ pstInst_260->s32DecFsNum, pstInst_260->s32DecFsNum
	ldr	r10, [r1, #1872]	@ s32ImgSize, pstInst_260->ImgSlotLen
	cmp	r2, #0	@ pstInst_260->s32DecFsNum,
	ble	.L355	@,
	add	r0, r0, #27648	@ ivtmp.309, pstInst,
	mov	r2, #0	@ i,
	add	r0, r0, #160	@ ivtmp.309, ivtmp.309,
	str	r3, [sp, #36]	@ D.36918, %sfp
	str	r3, [sp, #32]	@ D.36918, %sfp
	str	r9, [sp, #40]	@ D.36914, %sfp
	str	r4, [sp, #44]	@ tmp976, %sfp
	b	.L360	@
.L420:
	mov	r3, #2	@ tmp1218,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _525->stFrameArray[i_479].s32FrameAddr
	str	r3, [r7, #360]	@ tmp1218, _525->stFrameArray[i_479].eFrameState
	mov	r3, #0	@ tmp1219,
	str	r10, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_601 + 216432B]
	str	r3, [lr, #3444]	@ tmp1219, MEM[(struct VFMW_CHAN_S *)_601 + 216436B]
.L357:
	ldr	r3, [sp, #28]	@ pstInst, %sfp
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #52	@ ivtmp.309, ivtmp.309,
	ldrsb	r1, [r3, #10]	@ D.36915, pstInst_260->s32DecFsNum
	ldr	r3, [sp, #32]	@ D.36918, %sfp
	cmp	r2, r1	@ i, D.36915
	bge	.L419	@,
.L360:
	ldr	r6, [sp, #24]	@ tmp762, %sfp
	add	lr, r3, r2, lsl #4	@ tmp766, D.36918, i,
	ldr	r1, [r0]	@ s32FrameStartAddr, MEM[base: _537, offset: 0B]
	add	r7, lr, #216064	@ tmp768, tmp766,
	add	lr, lr, #212992	@ tmp778, tmp766,
	cmp	r6, r1	@ tmp762, s32FrameStartAddr
	add	ip, r10, r1	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r6, #1	@ tmp762,
	movle	r6, #0	@ tmp762,
	cmp	fp, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r6, #0	@ tmp762,
	cmp	r6, #0	@ tmp762,
	bne	.L420	@,
	ldr	r4, [sp, #24]	@ tmp788, %sfp
	add	lr, r3, r2, lsl #4	@ tmp792, D.36918, i,
	add	r7, lr, #216064	@ tmp794, tmp792,
	add	lr, lr, #212992	@ tmp804, tmp792,
	cmp	r4, ip	@ tmp788, s32FrameEndAddr
	movge	r4, #1	@ tmp788,
	movlt	r4, #0	@ tmp788,
	cmp	fp, ip	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r4, #0	@ tmp788,
	cmp	r4, #0	@ tmp788,
	beq	.L358	@,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _525->stFrameArray[i_479].s32FrameAddr
	mov	r3, #2	@ tmp1221,
	str	r3, [r7, #360]	@ tmp1221, _525->stFrameArray[i_479].eFrameState
	str	r10, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_607 + 216432B]
	str	r6, [lr, #3444]	@ tmp762, MEM[(struct VFMW_CHAN_S *)_607 + 216436B]
	b	.L357	@
.L358:
	ldr	r6, [sp, #24]	@ tmp814, %sfp
	mov	lr, r2, asl #4	@ tmp836, i,
	cmp	r6, ip	@ tmp814, s32FrameEndAddr
	movge	r6, #0	@ tmp814,
	movlt	r6, #1	@ tmp814,
	cmp	fp, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r6, #0	@ tmp814,
	mov	ip, r6	@ tmp814, tmp814
	add	r6, r3, r2, lsl #4	@ tmp818, D.36918, i,
	add	r3, r3, lr	@ tmp837, D.36918, tmp836
	cmp	ip, #0	@ tmp814,
	add	r7, r3, #212992	@ tmp845, tmp837,
	add	r3, r3, #216064	@ tmp839, tmp837,
	add	lr, lr, #216064	@ D.36920, tmp836,
	add	r9, r6, #216064	@ tmp820, tmp818,
	streq	ip, [r3, #360]	@ tmp814, _525->stFrameArray[i_479].eFrameState
	add	r6, r6, #212992	@ tmp830, tmp818,
	ldreq	r3, [sp, #36]	@ D.36918, %sfp
	add	lr, lr, #364	@ D.36920, D.36920,
	strne	r1, [r9, #364]	@ s32FrameStartAddr, _525->stFrameArray[i_479].s32FrameAddr
	movne	r3, #2	@ tmp1223,
	strne	r3, [r9, #360]	@ tmp1223, _525->stFrameArray[i_479].eFrameState
	streq	r1, [r3, lr]	@ s32FrameStartAddr, MEM[base: _129, offset: 0B]
	strne	r10, [r6, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_613 + 216432B]
	strne	r4, [r6, #3444]	@ tmp788, MEM[(struct VFMW_CHAN_S *)_613 + 216436B]
	streq	r10, [r7, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_619 + 216432B]
	streq	ip, [r7, #3444]	@ tmp814, MEM[(struct VFMW_CHAN_S *)_619 + 216436B]
	b	.L357	@
.L419:
	ldr	r9, [sp, #40]	@ D.36914, %sfp
	ldr	r4, [sp, #44]	@ tmp976, %sfp
.L355:
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	bne	.L379	@,
.L403:
	ldr	r0, .L421+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L326	@
.L373:
	bl	vfmw_dprint_nothing	@
	b	.L403	@
.L422:
	.align	2
.L421:
	.word	.LANCHOR0
	.word	CapItem
	.word	g_vdm_hal_fun_ptr
	.word	s_pstVfmwChan
	.word	g_DSDLock
	.word	s_DnrChan+73728
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L435	@ tmp128,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L433	@,
	ldrsb	r4, [r3, #10]	@ TotalFsNum, pstInst_6->s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L426	@,
	add	r3, r3, #27648	@ ivtmp.449, pstInst,
	mov	r2, #0	@ i,
	add	r3, r3, #148	@ ivtmp.449, ivtmp.449,
.L429:
	ldrsb	r1, [r3]	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	cmp	r1, #0	@ MEM[base: _33, offset: 0B],
	bne	.L427	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _33, offset: 2B], MEM[base: _33, offset: 2B]
	cmp	r1, #0	@ MEM[base: _33, offset: 2B],
	beq	.L428	@,
.L427:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.449, ivtmp.449,
	cmp	r4, r2	@ TotalFsNum, i
	bne	.L429	@,
.L426:
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #4	@,,
	mov	ip, #0	@ tmp132,
	str	ip, [sp, #8]	@ tmp132, NewNum
	str	ip, [sp, #12]	@ tmp132, ReadNum
	str	ip, [sp, #4]	@ tmp132, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	ldr	r3, [sp, #12]	@ ReadNum, ReadNum
	ldr	r1, [sp, #8]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.36936, RefNum, ReadNum
	add	r3, r3, r1	@ D.36936, D.36936, NewNum
	add	r3, r3, #2	@ D.36936, D.36936,
	cmp	r4, r3	@ TotalFsNum, D.36936
	bgt	.L434	@,
.L430:
	mov	r0, #0	@ D.36934,
.L425:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L428:
	cmp	r4, r2	@ TotalFsNum, i
	bgt	.L430	@,
	b	.L426	@
.L434:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.36934,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L433:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36934,
	b	.L425	@
.L436:
	.align	2
.L435:
	.word	.LANCHOR0
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
	bne	.L440	@,
	ldr	r3, .L463	@ tmp136,
	ldr	r4, [r3]	@ D.36952, s_pFspInst
	cmp	r4, #0	@ D.36952,
	beq	.L440	@,
	ldr	r2, [r3, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L444	@,
	ldr	r6, [r3, #16]	@ D.36959, g_FspFrameIntf.IsFrameAvalible
	cmp	r6, #0	@ D.36959,
	beq	.L461	@,
	blx	r6	@ D.36959
	cmp	r0, #0	@,
	bne	.L462	@,
.L444:
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ D.36954, _8->s32DecFsNum
	cmp	r0, #0	@ D.36954,
	beq	.L452	@,
	sxtb	r0, r0	@ D.36957, D.36954
	cmp	r0, #0	@ D.36957,
	ble	.L445	@,
	ldr	r1, .L463+4	@ tmp140,
	add	r3, r4, #27648	@ ivtmp.457, D.36952,
	add	r3, r3, #148	@ ivtmp.457, ivtmp.457,
	mov	r2, #0	@ i,
	ldr	lr, [r1]	@ D.36955, s_pstVfmwChan
	ldr	ip, [lr, #1580]	@ D.36950, _12->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L449	@
.L446:
	ldrsb	r1, [r3]	@ MEM[base: _38, offset: 0B], MEM[base: _38, offset: 0B]
	cmp	r1, #0	@ MEM[base: _38, offset: 0B],
	bne	.L447	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _38, offset: 2B], MEM[base: _38, offset: 2B]
	cmp	r1, #0	@ MEM[base: _38, offset: 2B],
	beq	.L448	@,
.L447:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.457, ivtmp.457,
	cmp	r2, r0	@ i, D.36957
	beq	.L445	@,
.L449:
	cmp	ip, #1	@ D.36950,
	bne	.L446	@,
	mov	r1, r2, asl #4	@ D.36953, i,
	add	r1, r1, #216064	@ D.36953, D.36953,
	add	r1, r1, #360	@ D.36953, D.36953,
	ldr	r1, [lr, r1]	@ MEM[base: _36, offset: 0B], MEM[base: _36, offset: 0B]
	cmp	r1, #0	@ MEM[base: _36, offset: 0B],
	beq	.L446	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.457, ivtmp.457,
	cmp	r2, r0	@ i, D.36957
	bne	.L449	@,
.L445:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	adds	r0, r0, #0	@ D.36960,,
	movne	r0, #1	@ D.36960,
	rsb	r0, r0, #0	@ D.36950, D.36960
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L448:
	cmp	r0, r2	@ D.36957, i
	ble	.L445	@,
.L452:
	mov	r0, #1	@ D.36950,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L462:
	mov	r0, r5	@ D.36950, InstID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L461:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.36950, D.36959
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L440:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36950,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L464:
	.align	2
.L463:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
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
	ble	.L469	@,
	mov	r2, r0	@ pstPhyFs, pstPhyFs
	mov	r0, #0	@ LeastFsID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ LeastFsID, LeastFsID
	mvn	lr, #0	@ LeastTick,
.L468:
	ldr	ip, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_18, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	ip, lr	@ LeastTick, LeastTick
	movcc	r0, r3	@ LeastFsID, LeastFsID
	add	r3, r3, #1	@ LeastFsID, LeastFsID,
	movcc	lr, ip	@ LeastTick, LeastTick
	cmp	r3, r1	@ LeastFsID, PhyNum
	bne	.L468	@,
	ldr	pc, [sp], #4	@
.L469:
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
	cmp	r0, #0	@ InstID
	bne	.L475	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L475	@,
	ldr	r3, .L481	@ tmp118,
	ldr	r2, [r3]	@ D.36973, s_pFspInst
	cmp	r2, #0	@ D.36973,
	beq	.L475	@,
	mov	r3, #432	@ tmp120,
	mla	r3, r3, r1, r2	@ tmp121, tmp120, LogicFrameID, D.36973
	ldr	ip, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState
	cmp	ip, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState,
	bxne	lr	@
	ldrb	r3, [r3, #100]	@ zero_extendqisi2	@ D.36975, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].PmvIdc
	cmp	r3, #19	@ D.36975,
	sxtabls	r3, r2, r3	@ tmp130, D.36973, D.36975
	strlsb	r0, [r3, #14]	@ InstID, _9->IsPmvInUse
	mov	r0, #432	@ tmp134,
	mla	r1, r0, r1, r2	@ tmp135, tmp134, LogicFrameID, D.36973
	mov	r3, #0	@ tmp137,
	str	r3, [r1, #500]	@ tmp137, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_6(D)].eLfsPmvState
	bx	lr	@
.L475:
	b	vfmw_dprint_nothing	@
.L482:
	.align	2
.L481:
	.word	.LANCHOR0
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
	bne	.L519	@,
	cmp	r1, #63	@ LogicFrameID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	bhi	.L485	@,
	ldr	r3, .L527	@ tmp142,
	ldr	r7, [r3]	@ D.36988, s_pFspInst
	cmp	r7, #0	@ D.36988,
	beq	.L485	@,
	mov	r5, #432	@ tmp144,
	uxtb	r8, r2	@ D.36989, IsRef
	mla	r5, r5, r1, r7	@ tmp145, tmp144, LogicFrameID, D.36988
	mov	r6, r2	@ IsRef, IsRef
	ldrsb	r1, [r5, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	strb	r8, [r5, #96]	@ D.36989, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].s32IsRef
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, [r5, #504]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	cmp	r1, #0	@ D.36990,
	beq	.L488	@,
	ldr	lr, [r1, #44]	@ _13->u32Tick, _13->u32Tick
	ldr	ip, [r5, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	lr, ip	@ _13->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	beq	.L520	@,
.L488:
	mov	r3, #432	@ tmp177,
	mla	r3, r3, r4, r7	@ tmp178, tmp177, LogicFrameID, D.36988
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.36989, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].PmvIdc
	cmp	r2, #19	@ D.36989,
	bhi	.L491	@,
	cmp	r6, #1	@ IsRef,
	beq	.L521	@,
	cmp	r6, #0	@ IsRef,
	bne	.L494	@,
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState,
	beq	.L522	@,
.L501:
	mov	r3, #432	@ tmp215,
	mla	r3, r3, r4, r7	@ tmp216, tmp215, LogicFrameID, D.36988
	ldr	r3, [r3, #508]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r3, #0	@ D.36990,
	beq	.L506	@,
	ldrsb	r2, [r3, #2]	@ _30->DispState, _30->DispState
	cmp	r2, #1	@ _30->DispState,
	moveq	r2, #0	@ tmp219,
	streqb	r2, [r3, #2]	@ tmp219, _30->DispState
.L506:
	mov	r3, #432	@ tmp244,
	mla	r4, r3, r4, r7	@ tmp245, tmp244, LogicFrameID, D.36988
	str	r6, [r4, #504]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L519:
	b	vfmw_dprint_nothing	@
.L521:
	ldr	r1, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	add	r3, r3, #496	@ tmp184, tmp178,
	cmp	r1, #1	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState,
	beq	.L523	@,
.L493:
	mov	r3, #432	@ tmp253,
	mla	r3, r3, r4, r7	@ tmp254, tmp253, LogicFrameID, D.36988
	ldr	r2, [r3, #508]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r2, #0	@ D.36990,
	beq	.L524	@,
.L500:
	mov	r3, #432	@ tmp224,
	ldr	r0, [r2, #44]	@ _51->u32Tick, _51->u32Tick
	mla	r3, r3, r4, r7	@ tmp225, tmp224, LogicFrameID, D.36988
	ldr	r1, [r3, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	r6, #1	@ IsRef,
	cmpeq	r0, r1	@, _51->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].u32Tick
	beq	.L525	@,
.L497:
	cmp	r6, #0	@ IsRef,
	beq	.L506	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L485:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L491:
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ IsRef,
	beq	.L501	@,
	b	.L493	@
.L520:
	ldrsb	ip, [r1]	@ D.36992, _13->IsDecRef
	cmp	r2, ip	@ IsRef, D.36992
	beq	.L489	@,
	ldr	ip, [r3, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L489	@,
	ldr	r3, [r3, #28]	@ D.36993, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r1, #12]	@ D.36991, _13->PhyAddr
	cmp	r3, #0	@ D.36993,
	beq	.L526	@,
	blx	r3	@ D.36993
	ldr	r1, [r5, #504]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
.L489:
	strb	r8, [r1]	@ D.36989, _77->IsDecRef
	b	.L488	@
.L523:
	sxtab	r2, r7, r2	@ tmp187, D.36988, D.36989
	mov	r1, #2	@ tmp194,
	strb	r6, [r2, #14]	@ IsRef, _10->IsPmvInUse
	str	r1, [r3, #4]	@ tmp194, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
.L494:
	mov	r3, #432	@ tmp249,
	mla	r3, r3, r4, r7	@ tmp250, tmp249, LogicFrameID, D.36988
	ldr	r2, [r3, #508]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r2, #0	@ D.36990,
	bne	.L500	@,
	b	.L497	@
.L522:
	sxtab	r2, r7, r2	@ tmp201, D.36988, D.36989
	strb	r6, [r2, #14]	@ IsRef, _10->IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].PmvAddr
	str	r6, [r3, #500]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].eLfsPmvState
	b	.L501	@
.L525:
	ldrsb	r1, [r2, #2]	@ _51->DispState, _51->DispState
	cmp	r1, #1	@ _51->DispState,
	moveq	r1, #2	@ tmp235,
	streqb	r1, [r2, #2]	@ tmp235, _51->DispState
	streqb	r1, [r3, #97]	@ tmp235, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].s32DispState
	b	.L497	@
.L524:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L526:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #504]	@ D.36990, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_4(D)].pstDecodeFs
	b	.L489	@
.L528:
	.align	2
.L527:
	.word	.LANCHOR0
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L535	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.37000, s_pFspInst
	cmp	r3, #0	@ D.37000,
	beq	.L534	@,
	mov	r2, #432	@ tmp118,
	mla	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.37000
	ldrsb	r0, [r1, #96]	@ D.36999, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32IsRef
	bx	lr	@
.L534:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36999,
	ldmfd	sp!, {r4, pc}	@
.L536:
	.align	2
.L535:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetRef, .-FSP_GetRef
	.align	2
	.global	FSP_SetDisplay
	.type	FSP_SetDisplay, %function
FSP_SetDisplay:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	bne	.L564	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L564	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L568	@ tmp133,
	ldr	r3, [r7]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L539	@,
	mov	r9, r0	@ InstID, InstID
	add	r0, r7, #32	@, tmp133,
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	clz	r6, r2	@ D.37019, IsWaitDisp
	bl	OSAL_SpinLockIRQ	@
	ldr	r8, [r7]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp141,
	mov	r6, r6, lsr #5	@ D.37019, D.37019,
	mla	r3, r3, r5, r8	@ tmp142, tmp141, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp143, tmp142,
	ldrsb	r1, [r3, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	cmpeq	r4, #0	@, IsWaitDisp,
	bne	.L540	@,
	ldr	r3, [r3, #508]	@ D.37014, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r3, #0	@ D.37014,
	beq	.L540	@,
	ldrsb	r2, [r2, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState,
	beq	.L540	@,
	ldr	r2, [r7, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L540	@,
	ldr	r2, [r7, #24]	@ D.37017, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r3, #12]	@ D.37015, _14->PhyAddr
	cmp	r2, #0	@ D.37017,
	beq	.L566	@,
	mov	r0, r9	@, InstID
	blx	r2	@ D.37017
.L540:
	mov	r1, #432	@ tmp163,
	cmp	r6, #0	@ D.37019,
	mla	r1, r1, r5, r8	@ tmp164, tmp163, LogicFrameID, pstInst
	movne	r0, #0	@ D.37018,
	moveq	r0, #3	@ D.37018,
	add	r3, r1, #96	@ tmp165, tmp164,
	ldrsb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs
	strb	r0, [r3, #1]	@ D.37018, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs,
	bne	.L565	@,
	add	ip, r1, #504	@ tmp175, tmp164,
	ldr	r0, [ip, #4]	@ D.37014, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	cmp	r0, #0	@ D.37014,
	beq	.L565	@,
	ldr	r0, [r0, #44]	@ _22->u32Tick, _22->u32Tick
	ldr	r1, [r1, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].u32Tick
	cmp	r0, r1	@ _22->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].u32Tick
	bne	.L567	@,
	cmp	r6, #0	@ D.37019,
	strneb	r2, [r3, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	moveq	r2, #3	@ tmp207,
	ldrne	r3, [ip, #4]	@ D.37014, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	streqb	r2, [r3, #1]	@ tmp207, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].s32DispState
	ldreq	r3, [ip, #4]	@ D.37014, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	strneb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, _25->DispState
	strne	r2, [ip, #4]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	streqb	r2, [r3, #2]	@ tmp207, _26->DispState
.L565:
	ldr	r0, .L568+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L564:
	b	vfmw_dprint_nothing	@
.L567:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L568+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L539:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L566:
	bl	vfmw_dprint_nothing	@
	b	.L540	@
.L569:
	.align	2
.L568:
	.word	.LANCHOR0
	.word	.LANCHOR0+32
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
	bne	.L573	@,
	cmp	r1, #0	@ pstVoQue,
	mov	r6, r1	@ pstVoQue, pstVoQue
	beq	.L573	@,
	ldr	r3, .L588	@ tmp125,
	ldr	r4, [r3]	@ D.37033, s_pFspInst
	cmp	r4, #0	@ D.37033,
	beq	.L573	@,
	add	r5, r4, #27648	@ D.37036, D.37033,
	add	r4, r4, #104	@ ivtmp.490, D.37033,
	add	r5, r5, #104	@ D.37036, D.37036,
	b	.L575	@
.L574:
	add	r4, r4, #432	@ ivtmp.490, ivtmp.490,
	cmp	r4, r5	@ ivtmp.490, D.37036
	beq	.L587	@,
.L575:
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_14, offset: 176B]
	mov	r0, r2	@,
	bl	FSP_SetRef	@
	mov	r1, r4	@, ivtmp.490
	mov	r0, r6	@, pstVoQue
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L574	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_14, offset: 176B]
	mov	r0, r2	@,
	add	r4, r4, #432	@ ivtmp.490, ivtmp.490,
	bl	FSP_SetDisplay	@
	cmp	r4, r5	@ ivtmp.490, D.37036
	bne	.L575	@,
.L587:
	mov	r0, #0	@ D.37031,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L573:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37031,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L589:
	.align	2
.L588:
	.word	.LANCHOR0
	.fnend
	.size	FSP_ClearNotInVoQueue, .-FSP_ClearNotInVoQueue
	.align	2
	.global	FSP_GetDisplay
	.type	FSP_GetDisplay, %function
FSP_GetDisplay:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L596	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.37040, s_pFspInst
	cmp	r3, #0	@ D.37040,
	beq	.L595	@,
	mov	r2, #432	@ tmp118,
	mla	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.37040
	ldrsb	r0, [r1, #97]	@ D.37039, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32DispState
	bx	lr	@
.L595:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37039,
	ldmfd	sp!, {r4, pc}	@
.L597:
	.align	2
.L596:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetDisplay, .-FSP_GetDisplay
	.align	2
	.global	FSP_SetStoreType
	.type	FSP_SetStoreType, %function
FSP_SetStoreType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L601	@,
	ldr	ip, .L611	@ tmp121,
	ldr	ip, [ip]	@ D.37045, s_pFspInst
	cmp	ip, #0	@ D.37045,
	beq	.L601	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L602	@,
	ldrsb	r0, [ip, #10]	@ D.37047, _8->s32DecFsNum
	cmp	r0, r2	@ D.37047, PhyFsID
	ble	.L605	@,
	mov	lr, #52	@ tmp124,
	mov	r0, r1	@ D.37044, ePhyFsType
	mla	r2, lr, r2, ip	@ tmp125, tmp124, PhyFsID, D.37045
	add	r2, r2, #27648	@ tmp127, tmp125,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L602:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L610	@,
.L605:
	mvn	r0, #0	@ D.37044,
	ldmfd	sp!, {r4, pc}	@
.L610:
	ldrsb	r1, [ip, #11]	@ D.37047, _8->s32DispFsNum
	cmp	r2, r1	@ PhyFsID, D.37047
	bge	.L605	@,
	mov	r1, #52	@ tmp130,
	mla	r2, r1, r2, ip	@ tmp131, tmp130, PhyFsID, D.37045
	add	r2, r2, #30976	@ tmp133, tmp131,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L601:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37044,
	ldmfd	sp!, {r4, pc}	@
.L612:
	.align	2
.L611:
	.word	.LANCHOR0
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
	bne	.L616	@,
	ldr	r3, .L623	@ tmp119,
	ldr	r3, [r3]	@ D.37051, s_pFspInst
	cmp	r3, #0	@ D.37051,
	beq	.L616	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L618	@,
	ldrsb	r1, [r3, #10]	@ D.37053, _7->s32DecFsNum
	cmp	r1, r2	@ D.37053, PhyFsID
	ble	.L618	@,
	mov	r1, #52	@ tmp122,
	mla	r2, r1, r2, r3	@ tmp123, tmp122, PhyFsID, D.37051
	add	r2, r2, #27648	@ tmp125, tmp123,
	ldr	r0, [r2, #156]	@ D.37050, _7->stDecFs[PhyFsID_12(D)].eStoreType
	ldmfd	sp!, {r4, pc}	@
.L616:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37050,
	ldmfd	sp!, {r4, pc}	@
.L618:
	mov	r0, #2	@ D.37050,
	ldmfd	sp!, {r4, pc}	@
.L624:
	.align	2
.L623:
	.word	.LANCHOR0
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
	ldr	r6, .L637	@ tmp127,
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
.L638:
	.align	2
.L637:
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
	bne	.L641	@,
	ldr	r3, .L643	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.37065, s_pFspInst
	cmp	r0, #0	@ D.37065,
	movne	r3, #432	@ tmp129,
	mlane	r1, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.37065
	addne	r0, r1, #96	@ D.37062, tmp130,
	bx	lr	@
.L641:
	mov	r0, r3	@ D.37062, tmp126
	bx	lr	@
.L644:
	.align	2
.L643:
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
	bne	.L647	@,
	ldr	r3, .L649	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.37071, s_pFspInst
	cmp	r0, #0	@ D.37071,
	movne	r3, #432	@ tmp128,
	mlane	r1, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.37071
	addne	r0, r1, #104	@ D.37068, tmp129,
	bx	lr	@
.L647:
	mov	r0, r3	@ D.37068, tmp125
	bx	lr	@
.L650:
	.align	2
.L649:
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
	bne	.L653	@,
	ldr	r3, .L655	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.37077, s_pFspInst
	cmp	r0, #0	@ D.37077,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.37077
	ldrne	r0, [r0, #508]	@ D.37074, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	bx	lr	@
.L653:
	mov	r0, r3	@ D.37074, tmp125
	bx	lr	@
.L656:
	.align	2
.L655:
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
	bne	.L659	@,
	ldr	r3, .L661	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.37083, s_pFspInst
	cmp	r0, #0	@ D.37083,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.37083
	ldrne	r0, [r0, #516]	@ D.37080, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].PmvAddr
	bx	lr	@
.L659:
	mov	r0, r3	@ D.37080, tmp125
	bx	lr	@
.L662:
	.align	2
.L661:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bne	.L665	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L665	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L665	@,
	ldr	r3, .L680	@ tmp128,
	ldr	ip, [r3]	@ s_pFspInst, s_pFspInst
	cmp	ip, #0	@ s_pFspInst,
	beq	.L665	@,
	str	r0, [r1]	@ InstID, *DecFsNum_9(D)
	ldr	ip, [r3]	@ s_pFspInst, s_pFspInst
	ldrsb	ip, [ip, #10]	@ D.37100, _14->s32DecFsNum
	cmp	ip, #0	@ D.37100,
	str	ip, [r1]	@ D.37100, *DecFsNum_9(D)
	ldr	r3, [r3]	@ s_pFspInst, s_pFspInst
	add	r3, r3, #27648	@ pstDecFs, s_pFspInst,
	add	r3, r3, #148	@ pstDecFs, pstDecFs,
	bxle	lr	@
	sub	r2, r2, #4	@ ivtmp.515, DecFsAddrTab,
.L668:
	ldr	ip, [r3, #12]	@ D.37100, MEM[base: _37, offset: 12B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.513, ivtmp.513,
	str	ip, [r2, #4]!	@ D.37100, MEM[base: _36, offset: 0B]
	ldr	ip, [r1]	@ *DecFsNum_9(D), *DecFsNum_9(D)
	cmp	ip, r0	@ *DecFsNum_9(D), i
	bgt	.L668	@,
	bx	lr	@
.L665:
	b	vfmw_dprint_nothing	@
.L681:
	.align	2
.L680:
	.word	.LANCHOR0
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
	cmp	r0, #0	@ InstID
	bne	.L684	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L684	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L684	@,
	ldr	r3, .L699	@ tmp127,
	ldr	ip, [r3]	@ D.37121, s_pFspInst
	cmp	ip, #0	@ D.37121,
	beq	.L684	@,
	ldrsb	r3, [ip, #13]	@ _11->s32PmvNum, _11->s32PmvNum
	str	r3, [r1]	@ _11->s32PmvNum, *PmvNum_9(D)
	ldrsb	r3, [ip, #13]	@ _11->s32PmvNum, _11->s32PmvNum
	cmp	r3, #0	@ _11->s32PmvNum,
	bxle	lr	@
	add	r3, ip, #34304	@ ivtmp.525, D.37121,
	sub	r2, r2, #4	@ ivtmp.534, PmvAddrTab,
	add	r3, r3, #252	@ ivtmp.525, ivtmp.525,
.L687:
	ldr	r1, [r3, #4]!	@ D.37123, MEM[base: _31, offset: 0B]
	add	r0, r0, #1	@ i, i,
	str	r1, [r2, #4]!	@ D.37123, MEM[base: _32, offset: 0B]
	ldrsb	r1, [ip, #13]	@ D.37123, _11->s32PmvNum
	cmp	r1, r0	@ D.37123, i
	bgt	.L687	@,
	bx	lr	@
.L684:
	b	vfmw_dprint_nothing	@
.L700:
	.align	2
.L699:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetPmvAddrTab, .-FSP_GetPmvAddrTab
	.align	2
	.global	FSP_GetInstInfo
	.type	FSP_GetInstInfo, %function
FSP_GetInstInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L705	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.37127, s_pFspInst
	cmp	r3, #0	@ D.37127,
	beq	.L704	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #24576	@ tmp126, D.37127,
	ldrb	lr, [r3, #10]	@ zero_extendqisi2	@ D.37128, _4->s32DecFsNum
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	mov	r0, r1	@ tmp136, pFspInstInfo
	add	r1, r3, #27648	@, D.37127,
	add	r1, r1, #148	@,,
	mov	r2, #3328	@,
	strb	lr, [ip, #1]	@ D.37128, pFspInstInfo_7(D)->s32DecFsNum
	ldr	lr, [r4, #3284]	@ _4->stDecFs[1].PhyAddr, _4->stDecFs[1].PhyAddr
	ldr	r4, [r4, #3232]	@ _4->stDecFs[0].PhyAddr, _4->stDecFs[0].PhyAddr
	rsb	lr, r4, lr	@ D.37129, _4->stDecFs[0].PhyAddr, _4->stDecFs[1].PhyAddr
	str	lr, [ip, #3336]	@ D.37129, pFspInstInfo_7(D)->s32DecFsSize
	ldrb	lr, [r3, #11]	@ zero_extendqisi2	@ D.37128, _4->s32DispFsNum
	strb	lr, [ip, #2]	@ D.37128, pFspInstInfo_7(D)->s32DispFsNum
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ D.37128, _4->s32TfFsNum
	strb	lr, [ip, #3]	@ D.37128, pFspInstInfo_7(D)->s32TfFsNum
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.37128, _4->s32InstID
	strb	lr, [ip, #4]	@ D.37128, pFspInstInfo_7(D)->s32InstID
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ D.37128, _4->s32PmvNum
	strb	r3, [r0], #8	@ D.37128, pFspInstInfo_7(D)->s32PmvNum
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L704:
	b	vfmw_dprint_nothing	@
.L706:
	.align	2
.L705:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetInstInfo, .-FSP_GetInstInfo
	.align	2
	.global	FSP_GetLogicIdByPhyAddr
	.type	FSP_GetLogicIdByPhyAddr, %function
FSP_GetLogicIdByPhyAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L710	@,
	ldr	r3, .L722	@ tmp120,
	ldr	r3, [r3]	@ D.37145, s_pFspInst
	cmp	r3, #0	@ D.37145,
	beq	.L710	@,
.L712:
	ldr	r2, [r3, #504]	@ D.37146, MEM[base: _18, offset: 504B]
	add	r3, r3, #432	@ ivtmp.549, ivtmp.549,
	cmp	r2, #0	@ D.37146,
	beq	.L711	@,
	ldr	r2, [r2, #12]	@ _10->PhyAddr, _10->PhyAddr
	cmp	r2, r1	@ _10->PhyAddr, PhyAddr
	ldmeqfd	sp!, {r4, pc}	@
.L711:
	add	r0, r0, #1	@ i, i,
	cmp	r0, #64	@ i,
	bne	.L712	@,
	mvn	r0, #0	@ D.37144,
	ldmfd	sp!, {r4, pc}	@
.L710:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37144,
	ldmfd	sp!, {r4, pc}	@
.L723:
	.align	2
.L722:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetLogicIdByPhyAddr, .-FSP_GetLogicIdByPhyAddr
	.align	2
	.global	FSP_PrintContext
	.type	FSP_PrintContext, %function
FSP_PrintContext:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	bne	.L758	@,
	ldr	r3, .L760	@ tmp132,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r3]	@ D.37159, s_pFspInst
	cmp	r6, #0	@ D.37159,
	beq	.L726	@,
	mov	r4, r0	@ InstID, InstID
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r5, #1	@ ivtmp.559,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	b	.L727	@
.L729:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.559,
	bgt	.L759	@,
.L730:
	add	r4, r4, #1	@ ivtmp.558, ivtmp.558,
	add	r5, r5, #1	@ ivtmp.559, ivtmp.559,
.L727:
	cmp	r4, #0	@ ivtmp.558,
	beq	.L728	@,
	tst	r4, #7	@ ivtmp.558,
	bne	.L729	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.559,
	ble	.L730	@,
.L759:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ _17->s32DecFsNum, _17->s32DecFsNum
	cmp	r3, #0	@ _17->s32DecFsNum,
	ble	.L731	@,
	mov	r4, #0	@ i,
.L732:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ D.37160, _17->s32DecFsNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.37160, i
	ble	.L731	@,
	cmp	r4, #0	@ i,
	beq	.L732	@,
	tst	r4, #7	@ i,
	bne	.L732	@,
	bl	vfmw_dprint_nothing	@
	b	.L732	@
.L726:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L731:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #11]	@ _17->s32DispFsNum, _17->s32DispFsNum
	cmp	r3, #0	@ _17->s32DispFsNum,
	ble	.L733	@,
	mov	r4, #0	@ i,
.L734:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #11]	@ D.37160, _17->s32DispFsNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.37160, i
	ble	.L733	@,
	cmp	r4, #0	@ i,
	beq	.L734	@,
	tst	r4, #7	@ i,
	bne	.L734	@,
	bl	vfmw_dprint_nothing	@
	b	.L734	@
.L733:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #13]	@ _17->s32PmvNum, _17->s32PmvNum
	cmp	r3, #0	@ _17->s32PmvNum,
	ble	.L726	@,
	mov	r4, #0	@ i,
.L738:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #13]	@ D.37160, _17->s32PmvNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.37160, i
	ble	.L726	@,
	cmp	r4, #0	@ i,
	beq	.L738	@,
	tst	r4, #15	@ i,
	bne	.L738	@,
	bl	vfmw_dprint_nothing	@
	b	.L738	@
.L758:
	b	vfmw_dprint_nothing	@
.L728:
	bl	vfmw_dprint_nothing	@
	b	.L730	@
.L761:
	.align	2
.L760:
	.word	.LANCHOR0
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	subs	r4, r0, #0	@ InstID, InstID
	.pad #44
	sub	sp, sp, #44	@,,
	bne	.L833	@,
	ldr	r8, .L846	@ tmp611,
	ldr	r3, [r8]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L833	@,
	ldr	r5, .L846+4	@ tmp612,
	add	r0, r8, #32	@, tmp611,
	mov	r7, r1	@ NeedPhyFs, NeedPhyFs
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r8]	@ pstInst, s_pFspInst
	ldr	r1, [r5]	@ D.37233, s_pstVfmwChan
	mov	r3, r6	@ ivtmp.615, pstInst
	ldr	r0, [r1, #1580]	@ D.37225, _281->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L769	@
.L766:
	ldrsb	r2, [r3, #96]	@ MEM[base: _316, offset: 96B], MEM[base: _316, offset: 96B]
	cmp	r2, #0	@ MEM[base: _316, offset: 96B],
	bne	.L767	@,
	ldrsb	r2, [r3, #97]	@ MEM[base: _316, offset: 97B], MEM[base: _316, offset: 97B]
	cmp	r2, #0	@ MEM[base: _316, offset: 97B],
	beq	.L839	@,
.L767:
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.615, ivtmp.615,
	cmp	r4, #64	@ i,
	beq	.L770	@,
.L769:
	cmp	r0, #1	@ D.37225,
	bne	.L766	@,
	mov	r2, r4, asl #4	@ D.37228, i,
	add	r2, r2, #216064	@ D.37228, D.37228,
	add	r2, r2, #360	@ D.37228, D.37228,
	ldr	r2, [r1, r2]	@ MEM[base: _320, offset: 0B], MEM[base: _320, offset: 0B]
	cmp	r2, #0	@ MEM[base: _320, offset: 0B],
	beq	.L766	@,
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.615, ivtmp.615,
	cmp	r4, #64	@ i,
	bne	.L769	@,
.L770:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L846+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37225,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L839:
	mov	r9, #432	@ tmp290,
	mul	r9, r9, r4	@ tmp289, tmp290, i
	add	lr, r6, r9	@ tmp294, pstInst, tmp289
	add	r9, r9, #96	@ tmp291, tmp289,
	add	ip, lr, #96	@ tmp295, tmp294,
	adds	r9, r6, r9	@ pstLogicFs, pstInst, tmp291
	strb	r4, [ip, #3]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32LogicFsID
	strb	r2, [ip, #2]	@ MEM[base: _316, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].IsDummyFs
	beq	.L770	@,
	cmp	r7, #0	@ NeedPhyFs,
	add	r0, lr, #504	@ tmp308, tmp294,
	add	r7, lr, #512	@ tmp318, tmp294,
	str	r2, [lr, #504]	@ MEM[base: _316, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	str	r2, [r0, #4]	@ MEM[base: _316, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	str	r2, [lr, #512]	@ MEM[base: _316, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstTfOutFs
	str	r2, [r7, #4]	@ MEM[base: _316, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	beq	.L771	@,
	ldrsb	ip, [r6, #10]	@ D.37230, pstInst_27->s32DecFsNum
	cmp	ip, #0	@ D.37230,
	ldrle	r7, [lr, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	ble	.L773	@,
	add	r3, r6, #27648	@ ivtmp.601, pstInst,
	ldr	lr, [r1, #1580]	@ D.37225, _281->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r3, r3, #148	@ ivtmp.601, ivtmp.601,
	b	.L777	@
.L775:
	ldrsb	r0, [r3]	@ MEM[base: _307, offset: 0B], MEM[base: _307, offset: 0B]
	cmp	r0, #0	@ MEM[base: _307, offset: 0B],
	bne	.L776	@,
	ldrsb	r0, [r3, #2]	@ MEM[base: _307, offset: 2B], MEM[base: _307, offset: 2B]
	cmp	r0, #0	@ MEM[base: _307, offset: 2B],
	beq	.L840	@,
.L776:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.601, ivtmp.601,
	cmp	r2, ip	@ i, D.37230
	beq	.L841	@,
.L777:
	cmp	lr, #1	@ D.37225,
	bne	.L775	@,
	mov	r0, r2, asl #4	@ D.37228, i,
	add	r0, r0, #216064	@ D.37228, D.37228,
	add	r0, r0, #360	@ D.37228, D.37228,
	ldr	r0, [r1, r0]	@ MEM[base: _311, offset: 0B], MEM[base: _311, offset: 0B]
	cmp	r0, #0	@ MEM[base: _311, offset: 0B],
	beq	.L775	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.601, ivtmp.601,
	cmp	r2, ip	@ i, D.37230
	bne	.L777	@,
.L841:
	mov	r3, #432	@ tmp380,
	mla	r3, r3, r4, r6	@ tmp381, tmp380, i, pstInst
	ldr	r7, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
.L773:
	cmp	r7, #0	@ D.37222,
	beq	.L842	@,
.L778:
	mov	r3, #432	@ tmp396,
	add	r2, r6, #34304	@ D.37222, pstInst,
	mla	r3, r3, r4, r6	@ tmp397, tmp396, i, pstInst
	add	r2, r2, #148	@ D.37222, D.37222,
	add	r0, r3, #512	@ tmp398, tmp397,
	str	r2, [r3, #512]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstTfOutFs
	ldrsb	r1, [r6, #13]	@ D.37228, pstInst_27->s32PmvNum
	cmp	r1, #0	@ D.37228,
	ble	.L786	@,
	ldrsb	r2, [r6, #14]	@ pstInst_27->IsPmvInUse, pstInst_27->IsPmvInUse
	cmp	r2, #0	@ pstInst_27->IsPmvInUse,
	addne	r2, r6, #14	@ ivtmp.584, pstInst,
	movne	r3, #0	@ i,
	bne	.L790	@,
	b	.L843	@
.L793:
	ldrsb	r0, [r2, #1]!	@ MEM[base: _9, offset: 0B], MEM[base: _9, offset: 0B]
	cmp	r0, #0	@ MEM[base: _9, offset: 0B],
	beq	.L844	@,
.L790:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.37228
	bne	.L793	@,
	add	r0, r6, #32768	@ tmp613, pstInst,
	cmp	r1, #0	@ D.37228,
	ldr	ip, [r0, #1788]	@ D.37225, pstInst_27->s32HalfPmvOffset
	ble	.L795	@,
.L791:
	add	r2, r1, #13	@ D.37228, D.37228,
	add	r3, r6, #13	@ ivtmp.574, pstInst,
	add	r2, r6, r2	@ D.37235, pstInst, D.37228
	mov	r1, #0	@ tmp616,
.L794:
	strb	r1, [r3, #1]!	@ tmp616, MEM[base: _6, offset: 0B]
	cmp	r3, r2	@ ivtmp.574, D.37235
	bne	.L794	@,
.L795:
	mov	r3, #432	@ tmp422,
	mov	r1, #0	@ tmp425,
	mla	r3, r3, r4, r6	@ tmp423, tmp422, i, pstInst
	strb	r1, [r3, #100]	@ tmp425, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvIdc
	ldr	r2, [r0, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	ip, [r3, #520]	@ D.37225, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].HalfPmvOffset
	str	r2, [r3, #516]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	bl	vfmw_dprint_nothing	@
.L786:
	ldrsb	r3, [r6, #60]	@ pstInst_27->stInstCfg.s32DispLoopEnable, pstInst_27->stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ pstInst_27->stInstCfg.s32DispLoopEnable,
	beq	.L796	@,
	ldrsb	ip, [r6, #11]	@ D.37230, pstInst_27->s32DispFsNum
	cmp	ip, #0	@ D.37230,
	ble	.L832	@,
	add	r3, r6, #30976	@ D.37222, pstInst,
	add	r3, r3, #148	@ D.37222, D.37222,
	cmp	r3, #0	@ D.37222,
	beq	.L809	@,
	rsb	lr, r3, #30976	@ D.37228, ivtmp.569,
	mov	r7, r3	@ D.37222, ivtmp.569
	add	lr, lr, #200	@ D.37228, D.37228,
	mov	r1, #0	@ i,
	b	.L800	@
.L803:
	cmp	r3, #0	@ ivtmp.569,
	mov	r7, r3	@ D.37222, ivtmp.569
	beq	.L799	@,
	mov	r7, r2	@ D.37222, D.37227
.L800:
	ldrsb	r0, [r3, #2]	@ MEM[base: _3, offset: 2B], MEM[base: _3, offset: 2B]
	add	r2, r7, lr	@ D.37228, D.37222, D.37228
	add	r1, r1, #1	@ i, i,
	add	r2, r6, r2	@ D.37227, pstInst, D.37228
	cmp	r0, #0	@ MEM[base: _3, offset: 2B],
	bne	.L802	@,
	ldrsb	r0, [r3]	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r0, #0	@ MEM[base: _3, offset: 0B],
	bne	.L802	@,
	ldrsb	r0, [r3, #1]	@ MEM[base: _3, offset: 1B], MEM[base: _3, offset: 1B]
	cmp	r0, #0	@ MEM[base: _3, offset: 1B],
	beq	.L799	@,
.L802:
	cmp	r1, ip	@ i, D.37230
	add	r3, r3, #52	@ ivtmp.569, ivtmp.569,
	bne	.L803	@,
.L832:
	mov	r3, #432	@ tmp468,
	mla	r3, r3, r4, r6	@ tmp469, tmp468, i, pstInst
	ldr	r7, [r3, #508]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
.L798:
	cmp	r7, #0	@ D.37222,
	bne	.L801	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.37222
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #4	@,,
	str	r7, [sp, #8]	@ D.37222, NewNum
	str	r7, [sp, #12]	@ D.37222, ReadNum
	str	r7, [sp, #4]	@ D.37222, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	ldr	r3, [sp, #12]	@ ReadNum, ReadNum
	ldr	r1, [sp, #8]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.37230, RefNum, ReadNum
	ldrsb	r2, [r6, #11]	@ D.37230, pstInst_27->s32DispFsNum
	add	r3, r3, r1	@ D.37230, D.37230, NewNum
	add	r3, r3, #2	@ D.37230, D.37230,
	cmp	r3, r2	@ D.37230, D.37230
	bge	.L804	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.37222
	bl	FSP_PrintContext	@
.L804:
	ldr	r0, .L846+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37225,
	b	.L828	@
.L771:
	add	r2, r6, #32768	@ tmp347, pstInst,
	add	r3, r6, #27648	@ D.37222, pstInst,
	add	r3, r3, #96	@ D.37222, D.37222,
	str	r3, [lr, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	str	r3, [r0, #4]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	mov	r1, #1	@ tmp361,
	str	r3, [lr, #512]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstTfOutFs
	ldr	r3, [r2, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	r3, [r7, #4]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	ldrb	r3, [r6, #13]	@ zero_extendqisi2	@ pstInst_27->s32PmvNum, pstInst_27->s32PmvNum
	strb	r1, [ip, #2]	@ tmp361, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].IsDummyFs
	sub	r3, r3, #1	@ tmp355, pstInst_27->s32PmvNum,
	strb	r3, [ip, #4]	@ tmp355, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvIdc
.L774:
	mov	r0, #432	@ tmp502,
	mov	r2, #1	@ tmp505,
	mul	r4, r0, r4	@ tmp501, tmp502, i
	mov	r1, #392	@,
	add	r3, r6, r4	@ tmp503, pstInst, tmp501
	add	r0, r4, #104	@ tmp550, tmp501,
	add	r7, r3, #96	@ tmp504, tmp503,
	add	r0, r6, r0	@, pstInst, tmp550
	ldr	lr, [r3, #508]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	strb	r2, [r3, #97]	@ tmp505, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32DispState
	strb	r2, [lr, #2]	@ tmp505, _142->DispState
	str	r2, [r3, #500]	@ tmp505, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].eLfsPmvState
	ldr	lr, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	ldr	r2, [r6, #36]	@ D.37232, pstInst_27->u32InstTick
	str	r2, [r3, #496]	@ D.37232, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].u32Tick
	str	r2, [lr, #44]	@ D.37232, _147->u32Tick
	ldr	lr, [r3, #496]	@ D.37232, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].u32Tick
	ldr	r2, [r3, #508]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	str	lr, [r2, #44]	@ D.37232, _150->u32Tick
	ldr	r2, [r6, #36]	@ pstInst_27->u32InstTick, pstInst_27->u32InstTick
	add	r2, r2, #1	@ D.37232, pstInst_27->u32InstTick,
	str	r2, [r6, #36]	@ D.37232, pstInst_27->u32InstTick
	ldr	r4, [r3, #508]	@ pstDispFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	ldr	r6, [r3, #504]	@ pstDecFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	ldr	r8, [r3, #512]	@ pstTfFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstTfOutFs
	bl	__memzero	@
	ldrsb	r3, [r7, #3]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32LogicFsID, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32LogicFsID
	str	r3, [r9, #184]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32LogicFsID, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_id
	ldr	r3, [r6, #24]	@ pstDecFs_156->FsWidth, pstDecFs_156->FsWidth
	str	r3, [r9, #152]	@ pstDecFs_156->FsWidth, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_width
	ldr	r3, [r6, #28]	@ pstDecFs_156->FsHeight, pstDecFs_156->FsHeight
	str	r3, [r9, #156]	@ pstDecFs_156->FsHeight, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_height
	ldr	r3, [r4, #20]	@ pstDispFs_157->Stride, pstDispFs_157->Stride
	str	r3, [r9, #180]	@ pstDispFs_157->Stride, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].image_stride
	ldr	r2, [r6, #12]	@ D.37230, pstDecFs_156->PhyAddr
	str	r2, [r9, #112]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_phy_addr
	mov	r0, r2	@, D.37230
	ldr	r3, [r6, #32]	@ pstDecFs_156->ChromOffset, pstDecFs_156->ChromOffset
	add	r3, r3, r2	@ D.37232, pstDecFs_156->ChromOffset, D.37230
	str	r3, [r9, #116]	@ D.37232, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #40]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_vir_addr
	ldr	r0, [r9, #116]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #44]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.37230, pstDispFs_157->PhyAddr
	str	r2, [r9, #96]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].top_luma_phy_addr
	ldr	r3, [r4, #32]	@ pstDispFs_157->ChromOffset, pstDispFs_157->ChromOffset
	add	r3, r2, r3	@ D.37230, D.37230, pstDispFs_157->ChromOffset
	str	r3, [r9, #100]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ pstDispFs_157->Stride, pstDispFs_157->Stride
	add	r2, r2, r1	@ D.37230, D.37230, pstDispFs_157->Stride
	str	r2, [r9, #104]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ pstDispFs_157->Stride, pstDispFs_157->Stride
	add	r3, r3, r2	@ D.37230, D.37230, pstDispFs_157->Stride
	str	r3, [r9, #108]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ D.37230, pstDispFs_157->PhyAddr
	str	r2, [r9, #128]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_2d_phy_addr
	mov	r0, r2	@, D.37230
	ldr	r3, [r4, #32]	@ pstDispFs_157->ChromOffset, pstDispFs_157->ChromOffset
	add	r3, r3, r2	@ D.37232, pstDispFs_157->ChromOffset, D.37230
	str	r3, [r9, #132]	@ D.37232, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #56]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_2d_vir_addr
	ldr	r0, [r9, #132]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #60]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_2d_vir_addr
	ldr	r2, [r8, #12]	@ D.37230, pstTfFs_158->PhyAddr
	str	r2, [r9, #120]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_tf_phy_addr
	mov	r0, r2	@, D.37230
	ldr	r3, [r6, #32]	@ pstDecFs_156->ChromOffset, pstDecFs_156->ChromOffset
	add	r3, r3, r2	@ D.37232, pstDecFs_156->ChromOffset, D.37230
	str	r3, [r9, #124]	@ D.37232, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r9, #48]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].luma_tf_vir_addr
	ldr	r0, [r9, #124]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r3, #0	@ tmp574,
	add	r2, r2, #217088	@ tmp581, s_pstVfmwChan,
	str	r0, [r9, #52]	@, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].chrom_tf_vir_addr
	ldr	r1, [r6, #48]	@ D.37230, pstDecFs_156->ImgSize
	str	r3, [r9, #384]	@ tmp574, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32IsLastFrame
	str	r3, [r9, #372]	@ tmp574, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32Is1D
	str	r1, [r9, #368]	@ D.37230, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].ImgSize
	str	r3, [r9, #376]	@ tmp574, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].is_processed_by_dnr
	str	r3, [r9, #380]	@ tmp574, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32Circumrotate
	ldr	r3, [r2, #420]	@ D.37232, _238->u32ChanTick
	ldr	r0, .L846+8	@,
	str	r3, [r9, #392]	@ D.37232, MEM[(struct IMAGE *)pstLogicFs_34 + 8B].u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.37225, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].s32LogicFsID
.L828:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L796:
	mov	r3, #432	@ tmp450,
	mla	r3, r3, r4, r6	@ tmp451, tmp450, i, pstInst
	ldr	r2, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	str	r2, [r3, #508]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
.L801:
	ldr	r3, [r8, #12]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	ldr	r2, .L846	@ tmp486,
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L774	@,
	ldr	r3, [r2, #20]	@ D.37234, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.37234,
	beq	.L845	@,
	add	r1, sp, #12	@,,
	mov	r0, #0	@,
	blx	r3	@ D.37234
	cmp	r0, #0	@,
	bne	.L806	@,
	ldr	r2, [sp, #12]	@ D.37230, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.37230,
	beq	.L806	@,
	mov	r3, #432	@ tmp493,
	mla	r3, r3, r4, r6	@ tmp494, tmp493, i, pstInst
	ldr	r1, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	str	r2, [r1, #12]	@ D.37230, _125->PhyAddr
	ldr	r2, [sp, #28]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r2, [r3, #516]	@ stInfo.stPmvInfo.PhyAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	b	.L774	@
.L844:
	mov	r2, #432	@ tmp405,
	add	ip, r3, #8640	@ tmp413, i,
	mla	r2, r2, r4, r6	@ tmp406, tmp405, i, pstInst
	cmp	r3, r1	@ i, D.37228
	add	r0, r6, #32768	@ tmp613, pstInst,
	strb	r3, [r2, #100]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvIdc
	ldr	r3, [r6, ip, asl #2]	@ tmp414, pstInst_27->PmvAddr
	str	r3, [r2, #516]	@ tmp414, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	ldr	ip, [r0, #1788]	@ D.37225, pstInst_27->s32HalfPmvOffset
	str	ip, [r2, #520]	@ D.37225, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].HalfPmvOffset
	blt	.L786	@,
	b	.L791	@
.L840:
	mov	r3, #432	@ tmp376,
	mov	r7, #52	@ tmp371,
	mla	r3, r3, r4, r6	@ tmp377, tmp376, i, pstInst
	mla	r2, r7, r2, r6	@ tmp373, tmp371, i, pstInst
	add	r7, r2, #27648	@ D.37222, tmp373,
	add	r7, r7, #148	@ D.37222, D.37222,
	str	r7, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	b	.L773	@
.L809:
	mov	r7, r3	@ D.37222, D.37222
.L799:
	mov	r3, #432	@ tmp464,
	mla	r3, r3, r4, r6	@ tmp465, tmp464, i, pstInst
	str	r7, [r3, #508]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDispOutFs
	b	.L798	@
.L845:
	bl	vfmw_dprint_nothing	@
.L806:
	ldr	r0, .L846+8	@,
	bl	OSAL_SpinUnLockIRQ	@
.L833:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37225,
	b	.L828	@
.L842:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ pstInst_27->s32DecFsNum, pstInst_27->s32DecFsNum
	cmp	r3, #0	@ pstInst_27->s32DecFsNum,
	ble	.L783	@,
.L782:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ D.37230, pstInst_27->s32DecFsNum
	add	r7, r7, #1	@ i, i,
	cmp	r3, r7	@ D.37230, i
	bgt	.L782	@,
.L783:
	bl	vfmw_dprint_nothing	@
	ldrsb	lr, [r6, #10]	@ D.37230, pstInst_27->s32DecFsNum
	add	r2, r6, #27648	@ pstPhyFs, pstInst,
	cmp	lr, #0	@ D.37230,
	add	r2, r2, #148	@ pstPhyFs, pstPhyFs,
	movgt	ip, #0	@ i,
	mvngt	r0, #0	@ LeastTick,
	movgt	r3, ip	@ i, i
	ble	.L781	@,
.L780:
	ldr	r1, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_300, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	r1, r0	@ LeastTick, LeastTick
	movcc	ip, r3	@ i, i
	add	r3, r3, #1	@ i, i,
	movcc	r0, r1	@ LeastTick, LeastTick
	cmp	lr, r3	@ D.37230, i
	bne	.L780	@,
	mov	r2, #52	@ tmp387,
	mla	r2, r2, ip, r6	@ tmp389, tmp387, i, pstInst
	add	r2, r2, #27648	@ D.37222, tmp389,
	add	r2, r2, #148	@ D.37222, D.37222,
.L781:
	mov	r3, #432	@ tmp392,
	mla	r3, r3, r4, r6	@ tmp393, tmp392, i, pstInst
	str	r2, [r3, #504]	@ D.37222, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].pstDecodeFs
	b	.L778	@
.L843:
	add	r1, r6, #32768	@ tmp602, pstInst,
	strb	r2, [r3, #100]	@ pstInst_27->IsPmvInUse, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvIdc
	ldr	r2, [r1, #1792]	@ pstInst_27->PmvAddr, pstInst_27->PmvAddr
	str	r2, [r0, #4]	@ pstInst_27->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].PmvAddr
	ldr	r2, [r1, #1788]	@ pstInst_27->s32HalfPmvOffset, pstInst_27->s32HalfPmvOffset
	str	r2, [r3, #520]	@ pstInst_27->s32HalfPmvOffset, MEM[(struct FSP_LOGIC_FS_S *)pstInst_27].stLogicFs[i_4].HalfPmvOffset
	b	.L786	@
.L847:
	.align	2
.L846:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LANCHOR0+32
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
	ldr	r3, .L856	@ tmp119,
	ldr	ip, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	add	r3, ip, #27136	@ tmp124, pstInst,
	ldrsb	r3, [r3, #177]	@ pstInst_5->stLogicFs[63].s32DispState, pstInst_5->stLogicFs[63].s32DispState
	cmp	r3, #0	@ pstInst_5->stLogicFs[63].s32DispState,
	beq	.L853	@,
	add	r2, ip, #26880	@ ivtmp.627, pstInst,
	mov	r3, #62	@ ret_id,
	add	r2, r2, #1	@ ivtmp.627, ivtmp.627,
	b	.L852	@
.L850:
	subs	r3, r3, #1	@ ret_id, ret_id,
	bcc	.L855	@,
.L852:
	ldrsb	r1, [r2]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	sub	r2, r2, #432	@ ivtmp.627, ivtmp.627,
	cmp	r1, #0	@ MEM[base: _19, offset: 0B],
	bne	.L850	@,
.L851:
	mov	r2, #432	@ tmp128,
	mov	r0, r3	@, ret_id
	mla	r3, r2, r3, ip	@ tmp129, tmp128, ret_id, pstInst
	mov	r2, #0	@ tmp131,
	str	r2, [r3, #504]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDecodeFs
	str	r2, [r3, #508]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDispOutFs
	bx	lr	@
.L855:
	mov	r3, #0	@ ret_id,
	b	.L851	@
.L853:
	mov	r3, #63	@ ret_id,
	b	.L851	@
.L857:
	.align	2
.L856:
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
	bne	.L861	@,
	ldr	r3, .L866	@ tmp117,
	ldr	r3, [r3]	@ D.37253, s_pFspInst
	cmp	r3, #0	@ D.37253,
	beq	.L861	@,
	ldr	r0, [r3, #4]	@ _6->eFspInstState, _6->eFspInstState
	subs	r0, r0, #1	@ D.37252, _6->eFspInstState,
	mvnne	r0, #0	@ D.37252,
	ldmfd	sp!, {r4, pc}	@
.L861:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.37252,
	ldmfd	sp!, {r4, pc}	@
.L867:
	.align	2
.L866:
	.word	.LANCHOR0
	.fnend
	.size	FSP_GetFspType, .-FSP_GetFspType
	.global	g_SpinLock_fsp
	.global	s_FspVoQue
	.global	s_pFspInst
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
