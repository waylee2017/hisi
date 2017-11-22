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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(fsp)
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
	cmp	r5, #3	@ InstID,
	bhi	.L4	@,
	ldr	r3, .L37	@ tmp331,
	ldr	r9, [r3, r5, asl #2]	@ D.38983, s_pFspInst
	cmp	r9, #0	@ D.38983,
	beq	.L4	@,
	ldr	r1, .L37+4	@ tmp337,
	mov	r4, #4	@ D.38989,
	ldrsb	r2, [r9, #60]	@ D.38989, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	ldrsb	r3, [r9, #65]	@ D.38981, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDecFsNum
	ldr	ip, [r1, #36]	@ D.38986, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38986,
	smlabb	r4, r4, r2, r3	@ MinFsNum, D.38989, D.38989, D.38981
	beq	.L4	@,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	add	r1, sp, #136	@ tmp630,,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	mov	lr, #64	@ tmp340,
	str	r1, [sp, #16]	@ tmp630,
	mov	r8, #40	@ tmp343,
	str	r5, [sp, #12]	@ InstID,
	mov	r1, r7	@, MemSize
	str	lr, [sp, #20]	@ tmp340,
	mov	r0, r6	@, MemPhyAddr
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32UserDec
	stmib	sp, {r8, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.38986
	cmp	r0, #0	@ Ret
	bne	.L4	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _21->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L4	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	strb	r0, [r9, #11]	@ Ret, _21->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable,
	strb	r0, [r9, #12]	@ Ret, _21->s32TfFsNum
	beq	.L32	@,
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.38991, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDecFsNum
	add	r2, r9, #32768	@ tmp604, D.38983,
	str	r2, [sp, #92]	@ tmp604, %sfp
	strb	r3, [r9, #10]	@ D.38991, _21->s32DecFsNum
.L9:
	sxtb	r4, r3	@ D.38985, D.38991
	ldr	r3, [sp, #136]	@ D.38981, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.38981, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.193,,
	str	r9, [sp, #128]	@ ivtmp.155, %sfp
	str	r3, [sp, #72]	@ D.38981, %sfp
	ldr	r3, [sp, #92]	@ tmp604, %sfp
	str	r2, [sp, #80]	@ D.38981, %sfp
	ldr	r0, [r1, #-408]!	@ D.38985, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.38981, _21->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.38985, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.38981, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.193, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.38985, %sfp
	ldr	r2, [sp, #404]	@ D.38985, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.38981, %sfp
	ldr	r3, [r9, #76]	@ D.38981, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.38985, %sfp
	ldr	r2, [sp, #408]	@ D.38985, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.38981, %sfp
	mov	r3, r9	@ ivtmp.191, D.38983
	str	r0, [sp, #120]	@ D.38985, %sfp
	str	r2, [sp, #116]	@ D.38985, %sfp
	str	r9, [sp, #132]	@ D.38983, %sfp
	str	r4, [sp, #104]	@ D.38985, %sfp
	b	.L13	@
.L33:
	ldr	r2, [sp, #84]	@ D.38980, %sfp
	str	r1, [r2]	@ i, MEM[base: _295, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.193, %sfp
	ldr	r0, [r2]	@ D.38985, MEM[base: _296, offset: 0B]
	ldr	r2, [sp, #56]	@ D.38980, %sfp
	str	r0, [r10]	@ D.38985, MEM[base: _298, offset: 0B]
	ldr	r0, [sp, #72]	@ D.38981, %sfp
	str	r0, [r9]	@ D.38981, MEM[base: _300, offset: 0B]
	ldr	r0, [sp, #96]	@ D.38981, %sfp
	str	r0, [r8]	@ D.38981, MEM[base: _302, offset: 0B]
	ldr	r0, [sp, #100]	@ D.38981, %sfp
	str	r0, [r7]	@ D.38981, MEM[base: _304, offset: 0B]
	ldr	r0, [sp, #108]	@ D.38985, %sfp
	str	r0, [r6]	@ D.38985, MEM[base: _306, offset: 0B]
	ldr	r0, [sp, #112]	@ D.38985, %sfp
	str	r0, [r5]	@ D.38985, MEM[base: _308, offset: 0B]
	ldr	r0, [sp, #116]	@ D.38985, %sfp
	str	r0, [r4]	@ D.38985, MEM[base: _310, offset: 0B]
	mov	r0, #0	@ tmp872,
	strb	r0, [lr]	@ tmp872, MEM[base: _312, offset: 0B]
	strb	r0, [ip]	@ tmp871, MEM[base: _314, offset: 0B]
	strb	r0, [r2]	@ tmp870, MEM[base: _316, offset: 0B]
	ldr	r2, [sp, #60]	@ D.38980, %sfp
	ldr	r0, [sp, #80]	@ D.38981, %sfp
	str	r0, [r2]	@ D.38981,* D.38980
.L11:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.193, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.191, ivtmp.191,
	add	r2, r2, #4	@ ivtmp.193, ivtmp.193,
	str	r2, [sp, #76]	@ ivtmp.193, %sfp
	beq	.L12	@,
	ldr	r2, [sp, #92]	@ tmp604, %sfp
	ldr	r2, [r2, #1872]	@ D.38981, _21->ImgSlotLen
	str	r2, [sp, #80]	@ D.38981, %sfp
.L13:
	add	r2, r3, #27648	@ D.38980, ivtmp.191,
	mov	r0, r2	@ D.38980, D.38980
	add	r2, r2, #152	@ D.38980, D.38980,
	str	r2, [sp, #84]	@ D.38980, %sfp
	add	r10, r0, #160	@ D.38980, D.38980,
	ldr	r2, [sp, #104]	@ D.38985, %sfp
	add	r9, r0, #168	@ D.38980, D.38980,
	add	r8, r0, #172	@ D.38980, D.38980,
	add	r7, r0, #176	@ D.38980, D.38980,
	cmp	r2, r1	@ D.38985, i
	add	r2, r0, #160	@ D.38980, D.38980,
	str	r2, [sp, #88]	@ D.38980, %sfp
	add	r2, r0, #168	@ D.38980, D.38980,
	str	r2, [sp, #24]	@ D.38980, %sfp
	add	r2, r0, #172	@ D.38980, D.38980,
	str	r2, [sp, #28]	@ D.38980, %sfp
	add	r2, r0, #176	@ D.38980, D.38980,
	str	r2, [sp, #32]	@ D.38980, %sfp
	add	r2, r0, #180	@ D.38980, D.38980,
	str	r2, [sp, #36]	@ D.38980, %sfp
	add	r2, r0, #184	@ D.38980, D.38980,
	str	r2, [sp, #40]	@ D.38980, %sfp
	add	r2, r0, #188	@ D.38980, D.38980,
	str	r2, [sp, #44]	@ D.38980, %sfp
	add	r2, r0, #148	@ D.38980, D.38980,
	str	r2, [sp, #48]	@ D.38980, %sfp
	add	r2, r0, #149	@ D.38980, D.38980,
	str	r2, [sp, #52]	@ D.38980, %sfp
	add	r2, r0, #150	@ D.38980, D.38980,
	str	r2, [sp, #56]	@ D.38980, %sfp
	add	r2, r0, #196	@ D.38980, D.38980,
	str	r2, [sp, #60]	@ D.38980, %sfp
	add	r2, r0, #152	@ D.38980, D.38980,
	str	r2, [sp, #64]	@ D.38980, %sfp
	add	r2, r0, #150	@ D.38980, D.38980,
	str	r2, [sp, #68]	@ D.38980, %sfp
	add	r2, r0, #196	@ D.38980, D.38980,
	add	r6, r0, #180	@ D.38980, D.38980,
	add	r5, r0, #184	@ D.38980, D.38980,
	add	r4, r0, #188	@ D.38980, D.38980,
	add	lr, r0, #148	@ D.38980, D.38980,
	add	ip, r0, #149	@ D.38980, D.38980,
	mov	r0, r2	@ D.38980, D.38980
	bgt	.L33	@,
	ldr	r2, [sp, #64]	@ D.38980, %sfp
	mov	fp, #0	@ tmp869,
	str	fp, [r2]	@ tmp869, MEM[base: _320, offset: 0B]
	ldr	r2, [sp, #120]	@ D.38985, %sfp
	str	r2, [r10]	@ D.38985, MEM[base: _322, offset: 0B]
	ldr	r2, [sp, #72]	@ D.38981, %sfp
	str	r2, [r9]	@ D.38981, MEM[base: _324, offset: 0B]
	ldr	r2, [sp, #96]	@ D.38981, %sfp
	str	r2, [r8]	@ D.38981, MEM[base: _326, offset: 0B]
	ldr	r2, [sp, #100]	@ D.38981, %sfp
	str	r2, [r7]	@ D.38981, MEM[base: _328, offset: 0B]
	ldr	r2, [sp, #108]	@ D.38985, %sfp
	str	r2, [r6]	@ D.38985, MEM[base: _330, offset: 0B]
	ldr	r2, [sp, #112]	@ D.38985, %sfp
	str	r2, [r5]	@ D.38985, MEM[base: _332, offset: 0B]
	ldr	r2, [sp, #116]	@ D.38985, %sfp
	str	r2, [r4]	@ D.38985, MEM[base: _334, offset: 0B]
	mov	r2, r0	@ D.38980, D.38980
	strb	fp, [lr]	@ tmp868, MEM[base: _336, offset: 0B]
	ldr	r0, [sp, #80]	@ D.38981, %sfp
	strb	fp, [ip]	@ tmp867, MEM[base: _338, offset: 0B]
	ldr	ip, [sp, #68]	@ D.38980, %sfp
	strb	fp, [ip]	@ tmp865, MEM[base: _340, offset: 0B]
	str	r0, [r2]	@ D.38981,* D.38980
	b	.L11	@
.L32:
	ldrsb	r3, [r9, #1]	@ _21->s8LowBufEnable, _21->s8LowBufEnable
	cmp	r3, #0	@ _21->s8LowBufEnable,
	beq	.L8	@,
	add	r2, r9, #32768	@ tmp604, D.38983,
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.38991, MemArrange.ValidFrameNum
	str	r2, [sp, #92]	@ tmp604, %sfp
	mov	r1, r2	@ tmp604, tmp604
	ldr	r2, [sp, #140]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	strb	r3, [r9, #10]	@ D.38991, _21->s32DecFsNum
	str	r2, [r1, #1876]	@ MemArrange.TotalMemUsed, _21->TotalMemUsed
	b	.L9	@
.L12:
	ldr	r4, [sp, #104]	@ D.38985, %sfp
	add	r2, sp, #552	@ tmp720,,
	ldr	r5, [sp, #92]	@ tmp604, %sfp
	add	r0, sp, #400	@,,
	ldr	r9, [sp, #132]	@ D.38983, %sfp
	mov	r3, #1	@ tmp429,
	ldr	r6, [sp, #72]	@ D.38981, %sfp
	add	r2, r2, r4, lsl #2	@ tmp437, tmp720, D.38985,
	ldr	lr, [sp, #128]	@ ivtmp.155, %sfp
	strb	r3, [r9, #12]	@ tmp429, _21->s32TfFsNum
	mov	r3, #0	@ tmp433,
	str	r6, [r5, #1704]	@ D.38981, _21->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.38981, %sfp
	ldr	ip, [r2, #-408]	@ tmp439, MemArrange.FrameAddr
	ldmia	r0, {r0, r1, r2}	@,,,
	str	r6, [r5, #1708]	@ D.38981, _21->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.38981, %sfp
	str	ip, [r5, #1696]	@ tmp439, _21->stTfFs[0].PhyAddr
	str	r0, [r5, #1716]	@ MemArrange.ChromOffset, _21->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.38981, _21->stTfFs[0].FsHeight
	str	r1, [r5, #1720]	@ MemArrange.LumaPixelOffset, _21->stTfFs[0].LumaPixelOffset
	str	r2, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _21->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp433, _21->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp433, _21->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp433, _21->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp433, _21->stTfFs[0].DispState
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.38991, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.38991,
	streqb	r3, [r9, #11]	@ D.38991, _21->s32DispFsNum
	streq	r3, [sp, #44]	@ D.38991, %sfp
	beq	.L15	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r9, #67]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.38985, D.38985, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.38985, D.38985,
	cmp	r3, #25	@ D.38985,
	movge	r3, #25	@ D.38985,
	uxtb	r3, r3	@ D.38991, D.38985
	strb	r3, [r9, #11]	@ D.38991, _21->s32DispFsNum
	sxtb	r3, r3	@ D.38985, D.38991
	str	r3, [sp, #44]	@ D.38985, %sfp
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDispFsNum, D.38985
	bgt	.L4	@,
.L15:
	ldr	r3, [sp, #400]	@ D.38985, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.38981, MemArrange.VahbStride
	mov	r0, ip	@ tmp606, i
	str	r3, [sp, #96]	@ D.38985, %sfp
	ldr	r3, [sp, #404]	@ D.38985, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.38981, %sfp
	str	r3, [sp, #100]	@ D.38985, %sfp
	ldr	r3, [sp, #408]	@ D.38985, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.38985, %sfp
	mov	r3, #1	@ D.38991,
	mov	r2, r3	@ D.38991, D.38991
	mov	r3, r4	@ D.38985, D.38985
	b	.L23	@
.L35:
	ldr	r3, [sp, #48]	@ D.38980, %sfp
	ldr	r2, [sp, #56]	@ D.38980, %sfp
	str	ip, [r3]	@ i, MEM[base: _233, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp483, %sfp
	ldr	r3, [r3, #-408]	@ D.38985, MemArrange.FrameAddr
	str	r3, [r2]	@ D.38985, MEM[base: _136, offset: 0B]
	ldr	r3, [sp, #60]	@ D.38980, %sfp
	ldr	r2, [sp, #72]	@ D.38981, %sfp
	str	r2, [r3]	@ D.38981, MEM[base: _165, offset: 0B]
	ldr	r2, [sp, #64]	@ D.38980, %sfp
	ldr	r3, [r9, #88]	@ D.38985, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.38985, MEM[base: _139, offset: 0B]
	ldr	r2, [sp, #96]	@ D.38985, %sfp
	ldr	r3, [r9, #92]	@ D.38985, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.38985, MEM[base: _147, offset: 0B]
	str	r2, [r7]	@ D.38985, MEM[base: _12, offset: 0B]
	ldr	r2, [sp, #100]	@ D.38985, %sfp
	str	r2, [r6]	@ D.38985, MEM[base: _9, offset: 0B]
	ldr	r2, [sp, #104]	@ D.38985, %sfp
	str	r2, [r5]	@ D.38985, MEM[base: _5, offset: 0B]
	strb	r0, [r4]	@ tmp606, MEM[base: _225, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _3, offset: 0B]
	strb	r0, [r10]	@ tmp606, MEM[base: _22, offset: 0B]
.L17:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.38981, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.155, ivtmp.155,
	str	r3, [sp, #72]	@ D.38981, %sfp
	beq	.L34	@,
	ldrsb	r1, [r9, #11]	@ D.38985, _21->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.38991, _21->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.38985, _21->s32DecFsNum
	str	r1, [sp, #44]	@ D.38985, %sfp
.L23:
	add	r1, ip, r3	@ tmp480, i, D.38985
	sxtab	r3, r3, r2	@ tmp516, D.38985, D.38991
	sxtab	r2, r1, r2	@ tmp481, tmp480, D.38991
	add	r1, lr, #30976	@ D.38980, ivtmp.155,
	mov	r4, r1	@ D.38980, D.38980
	add	r1, r1, #152	@ D.38980, D.38980,
	str	r1, [sp, #48]	@ D.38980, %sfp
	add	r1, sp, #552	@ tmp743,,
	add	r3, r1, r3, lsl #2	@ tmp518, tmp747, tmp516,
	str	r3, [sp, #76]	@ tmp518, %sfp
	add	r3, r4, #160	@ D.38980, D.38980,
	str	r3, [sp, #56]	@ D.38980, %sfp
	add	r3, r4, #168	@ D.38980, D.38980,
	str	r3, [sp, #60]	@ D.38980, %sfp
	add	r3, r4, #160	@ D.38980, D.38980,
	str	r3, [sp, #80]	@ D.38980, %sfp
	add	r3, r4, #168	@ D.38980, D.38980,
	str	r3, [sp, #84]	@ D.38980, %sfp
	ldr	r3, [sp, #44]	@ D.38985, %sfp
	add	r2, r1, r2, lsl #2	@ tmp483, tmp743, tmp481,
	add	r10, r4, #150	@ D.38980, D.38980,
	str	r2, [sp, #52]	@ tmp483, %sfp
	cmp	r3, ip	@ D.38985, i
	add	r3, r4, #176	@ D.38980, D.38980,
	str	r3, [sp, #44]	@ D.38980, %sfp
	add	r3, r4, #180	@ D.38980, D.38980,
	str	r3, [sp, #24]	@ D.38980, %sfp
	add	r3, r4, #184	@ D.38980, D.38980,
	str	r3, [sp, #28]	@ D.38980, %sfp
	add	r3, r4, #188	@ D.38980, D.38980,
	str	r3, [sp, #32]	@ D.38980, %sfp
	add	r3, r4, #148	@ D.38980, D.38980,
	add	r2, r4, #152	@ D.38980, D.38980,
	add	fp, r4, #149	@ D.38980, D.38980,
	str	r2, [sp, #68]	@ D.38980, %sfp
	add	r8, r4, #176	@ D.38980, D.38980,
	add	r2, r4, #172	@ D.38980, D.38980,
	add	r7, r4, #180	@ D.38980, D.38980,
	add	r6, r4, #184	@ D.38980, D.38980,
	add	r5, r4, #188	@ D.38980, D.38980,
	str	r2, [sp, #64]	@ D.38980, %sfp
	mov	r4, r3	@ D.38980, D.38980
	str	r2, [sp, #88]	@ D.38980, %sfp
	str	r3, [sp, #36]	@ D.38980, %sfp
	str	r10, [sp, #40]	@ D.38980, %sfp
	bgt	.L35	@,
	ldr	r3, [sp, #68]	@ D.38980, %sfp
	ldr	r2, [sp, #72]	@ D.38981, %sfp
	str	r0, [r3]	@ tmp606, MEM[base: _276, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp518, %sfp
	ldr	r10, [r3, #-408]	@ D.38985, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.38980, %sfp
	str	r10, [r3]	@ D.38985, MEM[base: _268, offset: 0B]
	ldr	r3, [sp, #84]	@ D.38980, %sfp
	str	r2, [r3]	@ D.38981, MEM[base: _262, offset: 0B]
	ldr	r3, [sp, #88]	@ D.38980, %sfp
	ldr	r10, [r9, #88]	@ D.38985, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.38985, MEM[base: _256, offset: 0B]
	ldr	r3, [r9, #92]	@ D.38985, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.38985, MEM[base: _252, offset: 0B]
	ldr	r3, [sp, #96]	@ D.38985, %sfp
	str	r3, [r7]	@ D.38985, MEM[base: _245, offset: 0B]
	ldr	r3, [sp, #100]	@ D.38985, %sfp
	str	r3, [r6]	@ D.38985, MEM[base: _281, offset: 0B]
	ldr	r3, [sp, #104]	@ D.38985, %sfp
	str	r3, [r5]	@ D.38985, MEM[base: _283, offset: 0B]
	ldr	r3, [sp, #40]	@ D.38980, %sfp
	strb	r0, [r4]	@ tmp606, MEM[base: _285, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _287, offset: 0B]
	strb	r0, [r3]	@ tmp606, MEM[base: _289, offset: 0B]
	b	.L17	@
.L34:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.126,,
	add	r0, r9, #34560	@ ivtmp.132, D.38983,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.136, D.38983,
	mov	lr, r2	@ tmp605, i
	movge	r3, #20	@ D.38985,
	uxtb	r3, r3	@ D.38991, D.38985
	strb	r3, [r9, #13]	@ D.38991, _21->s32PmvNum
	b	.L22	@
.L36:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.38991, _21->s32PmvNum
.L22:
	sxtb	r3, r3	@ D.38985, D.38991
	add	ip, ip, #4	@ ivtmp.126, ivtmp.126,
	cmp	r3, r2	@ D.38985, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.132, ivtmp.132,
	add	r1, r1, #1	@ ivtmp.136, ivtmp.136,
	ldrgt	r3, [ip, #-4]	@ D.38985, MEM[base: _82, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.38985, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.38985,
	strb	lr, [r1, #-1]	@ tmp605,
	bne	.L36	@,
	ldr	r7, [sp, #92]	@ tmp604, %sfp
	add	r3, r9, #24576	@ tmp559, D.38983,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r2, #0	@ tmp560,
	ldr	ip, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	mov	r0, r2	@ D.38981, tmp560
	ldr	lr, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r7, #1788]	@ MemArrange.HafPmvOffset, _21->s32HalfPmvOffset
	ldr	r1, [r3, #3232]	@ _21->stDecFs[0].PhyAddr, _21->stDecFs[0].PhyAddr
	str	ip, [r3, #3188]	@ MemArrange.VahbStride, _21->stDummyPhyFs.Stride
	str	r2, [r3, #3172]	@ tmp560, _21->stDummyPhyFs.PhyFsID
	str	r1, [r3, #3180]	@ _21->stDecFs[0].PhyAddr, _21->stDummyPhyFs.PhyAddr
	ldr	r1, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	ldr	r5, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r4, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r3, #3192]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, _21->stDummyPhyFs.FsWidth
	ldr	r6, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.38985, MemArrange.TotalMemUsed
	str	lr, [r3, #3208]	@ MemArrange.ChromaPixelOffset, _21->stDummyPhyFs.ChromaPixelOffset
	mov	lr, r7	@ tmp604, tmp604
	strb	r2, [r3, #3168]	@ tmp560, _21->stDummyPhyFs.IsDecRef
	str	r6, [r3, #3196]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, _21->stDummyPhyFs.FsHeight
	strb	r2, [r3, #3169]	@ tmp560, _21->stDummyPhyFs.IsTfRef
	strb	r2, [r3, #3170]	@ tmp560, _21->stDummyPhyFs.DispState
	str	r5, [r3, #3200]	@ MemArrange.ChromOffset, _21->stDummyPhyFs.ChromOffset
	str	r4, [r3, #3204]	@ MemArrange.LumaPixelOffset, _21->stDummyPhyFs.LumaPixelOffset
	ldr	ip, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	str	r1, [r7, #1876]	@ D.38985, _21->TotalMemUsed
	str	ip, [r7, #1888]	@ MemArrange.u32StrideByte, _21->StrideByte
	str	r1, [r3]	@ D.38985, *UsedMemSize_223(D)
.L29:
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L8:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r9, #32768	@ tmp604, D.38983,
	str	r2, [sp, #92]	@ tmp604, %sfp
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.38985,
	uxtb	r3, r3	@ D.38991, D.38985
	strb	r3, [r9, #10]	@ D.38991, _21->s32DecFsNum
	b	.L9	@
.L4:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38981,
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
	mov	r9, r0	@ InstID, InstID
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #40	@ tmp331,,
	mov	r1, #416	@,
	mov	r10, r2	@ s32Num, s32Num
	mov	fp, #0	@ tmp212,
	str	fp, [sp, #36]	@ tmp212, s32UsedMemSize
	bl	__memzero	@
	cmp	r9, #3	@ InstID,
	bhi	.L42	@,
	cmp	r4, #0	@ VoUsingFrameArray,
	beq	.L42	@,
	ldr	r3, .L100	@ tmp214,
	ldr	r6, [r3, r9, asl #2]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L42	@,
	add	r5, r6, #32768	@ tmp293, pstInst,
	ldr	r3, [r4]	@ D.39024, VoUsingFrameArray_24(D)->FrameAddr
	ldr	r8, [r5, #1880]	@ s32VdhMemAddr, pstInst_26->MemAddr
	ldr	r7, [r5, #1876]	@ pstInst_26->TotalMemUsed, pstInst_26->TotalMemUsed
	ldr	r2, [r5, #1888]	@ pstInst_26->StrideByte, pstInst_26->StrideByte
	cmp	r8, r3	@ s32VdhMemAddr, D.39024
	ldr	r1, [r5, #1884]	@ s32VdhAllMemSize, pstInst_26->MemSize
	rsblt	fp, r8, r3	@ s32FreeSize, s32VdhMemAddr, D.39024
	add	r7, r7, r2	@ s32VdhTotalMemUse, pstInst_26->TotalMemUsed, pstInst_26->StrideByte
	cmp	fp, r7	@ s32FreeSize, s32VdhTotalMemUse
	str	r1, [sp, #24]	@ s32VdhAllMemSize, %sfp
	bge	.L70	@,
	sub	r2, r10, #-536870911	@ D.39022, s32Num,
	ldr	r1, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r0, r4, r2, lsl #3	@ D.39026, VoUsingFrameArray, D.39022,
	ldr	r2, [r4, r2, asl #3]	@ _42->FrameAddr, _42->FrameAddr
	add	r1, r8, r1	@ D.39024, s32VdhMemAddr, s32VdhAllMemSize
	ldr	ip, [r0, #4]	@ _42->FrameSize, _42->FrameSize
	add	r2, r2, ip	@ D.39024, _42->FrameAddr, _42->FrameSize
	cmp	r1, r2	@ D.39024, D.39024
	rsbgt	r1, r2, r1	@ s32FreeSize, D.39024, D.39024
	movle	r1, #0	@ s32FreeSize,
	cmp	r1, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L46	@,
	sub	ip, r10, #1	@ D.39024, s32Num,
	cmp	ip, #0	@ D.39024,
	ble	.L42	@,
	ldmib	r4, {r1, r2}	@ VoUsingFrameArray,,
	add	r3, r3, r1	@ D.39024, D.39024, VoUsingFrameArray_24(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.39024, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_24(D) + 8B].FrameAddr
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	addgt	r0, r4, #8	@ ivtmp.243, VoUsingFrameArray,
	movgt	r1, #0	@ i,
	bgt	.L51	@,
	b	.L95	@
.L53:
	ldr	fp, [r0, #4]	@ MEM[base: _170, offset: 4B], MEM[base: _170, offset: 4B]
	add	r0, r0, #8	@ ivtmp.243, ivtmp.243,
	ldr	r3, [r4, r1, asl #3]	@ MEM[base: VoUsingFrameArray_24(D), index: _10, step: 8, offset: 0B], MEM[base: VoUsingFrameArray_24(D), index: _10, step: 8, offset: 0B]
	ldr	r2, [lr, #8]	@ MEM[base: _170, offset: 8B], MEM[base: _170, offset: 8B]
	add	r3, r3, fp	@ D.39024, MEM[base: VoUsingFrameArray_24(D), index: _10, step: 8, offset: 0B], MEM[base: _170, offset: 4B]
	rsb	r2, r3, r2	@ s32FreeSize, D.39024, MEM[base: _170, offset: 8B]
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	ble	.L96	@,
.L51:
	add	r1, r1, #1	@ i, i,
	mov	lr, r0	@ D.39028, ivtmp.243
	cmp	r1, ip	@ i, D.39024
	bne	.L53	@,
.L42:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39021,
.L86:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L70:
	mov	r3, #1	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
.L44:
	ldrsb	r3, [r6, #10]	@ pstInst_26->s32DecFsNum, pstInst_26->s32DecFsNum
	ldr	fp, .L100+4	@ tmp294,
	cmp	r3, #0	@ pstInst_26->s32DecFsNum,
	ldrle	lr, [fp, r9, asl #2]	@ D.39020, s_pstVfmwChan
	ble	.L55	@,
	ldr	lr, [fp, r9, asl #2]	@ D.39020, s_pstVfmwChan
	add	r1, r6, #27648	@ ivtmp.235, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.235, ivtmp.235,
	add	r3, lr, #216064	@ ivtmp.232, D.39020,
	mov	r0, r2	@ tmp296, i
	add	r3, r3, #360	@ ivtmp.232, ivtmp.232,
.L56:
	str	r0, [r3]	@ tmp296, MEM[base: _63, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r1], #52	@ D.39024, MEM[base: _67, offset: 0B]
	add	r3, r3, #16	@ ivtmp.232, ivtmp.232,
	str	ip, [r3, #-12]	@ D.39024, MEM[base: _63, offset: 4B]
	ldr	ip, [r5, #1872]	@ D.39024, pstInst_26->ImgSlotLen
	str	r0, [r3, #-4]	@ tmp296, MEM[base: _63, offset: 12B]
	str	ip, [r3, #-8]	@ D.39024, MEM[base: _63, offset: 8B]
	ldrsb	ip, [r6, #10]	@ D.39024, pstInst_26->s32DecFsNum
	cmp	ip, r2	@ D.39024, i
	bgt	.L56	@,
.L55:
	ldr	r1, .L100+8	@ tmp259,
	ldr	r2, [lr, #1608]	@ s32ThrWidth, _1->stSynExtraData.s32DSDThrWidth
	ldr	r3, [lr, #1612]	@ s32ThrHeight, _1->stSynExtraData.s32DSDThrHeight
	ldr	ip, [r1, #36]	@ D.39030, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, [lr, #1588]	@ s32DnrNum, _1->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	cmp	ip, #0	@ D.39030,
	beq	.L59	@,
	add	r0, sp, #40	@ tmp336,,
	mov	lr, #0	@ tmp263,
	str	r0, [sp, #16]	@ tmp336,
	mov	r0, #64	@ tmp260,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp262,
	str	r0, [sp, #20]	@ tmp260,
	mov	r0, #1	@,
	str	r1, [sp, #12]	@ tmp262,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp263,
	str	lr, [sp]	@ tmp263,
	blx	ip	@ D.39030
	cmp	r0, #0	@,
	beq	.L58	@,
.L59:
	bl	vfmw_dprint_nothing	@
.L58:
	ldr	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	ldr	lr, [fp, r9, asl #2]	@ D.39020, s_pstVfmwChan
	ldr	r0, [sp, #44]	@ D.39024, MemArrange.TotalMemUsed
	cmp	r3, #1	@ s32FoundVdhMemInTop,
	str	r0, [lr, #240]	@ D.39024, _99->s32OffLineDNRMemSize
	beq	.L97	@,
.L60:
	sub	r3, r10, #-536870911	@ D.39022, s32Num,
	ldr	r2, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r8, r8, r2	@ D.39024, s32VdhMemAddr, s32VdhAllMemSize
	add	r2, r4, r3, lsl #3	@ D.39026, VoUsingFrameArray, D.39022,
	ldr	r3, [r4, r3, asl #3]	@ _110->FrameAddr, _110->FrameAddr
	ldr	r2, [r2, #4]	@ _110->FrameSize, _110->FrameSize
	add	r3, r3, r2	@ D.39024, _110->FrameAddr, _110->FrameSize
	cmp	r8, r3	@ D.39024, D.39024
	rsbgt	r8, r3, r8	@ s32FreeSize, D.39024, D.39024
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, r0	@ s32FreeSize, D.39024
	strge	r3, [lr, #236]	@ D.39024, _99->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.39021,
	bge	.L86	@,
	sub	ip, r10, #1	@ D.39024, s32Num,
	cmp	ip, #0	@ D.39024,
	ble	.L42	@,
	ldmib	r4, {r1, r2}	@ VoUsingFrameArray,,
	ldr	r3, [r4]	@ VoUsingFrameArray_24(D)->FrameAddr, VoUsingFrameArray_24(D)->FrameAddr
	add	r3, r3, r1	@ D.39024, VoUsingFrameArray_24(D)->FrameAddr, VoUsingFrameArray_24(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.39024, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_24(D) + 8B].FrameAddr
	cmp	r0, r2	@ D.39024, s32FreeSize
	movgt	r5, #0	@ i,
	bgt	.L66	@,
	b	.L98	@
.L67:
	ldr	r3, [r4, #8]	@ MEM[base: _157, offset: 8B], MEM[base: _157, offset: 8B]
	add	r4, r4, #8	@ ivtmp.227, ivtmp.227,
	ldr	r1, [r4, #4]	@ MEM[base: _157, offset: 12B], MEM[base: _157, offset: 12B]
	ldr	r2, [r2, #16]	@ MEM[base: _157, offset: 16B], MEM[base: _157, offset: 16B]
	add	r3, r3, r1	@ D.39024, MEM[base: _157, offset: 8B], MEM[base: _157, offset: 12B]
	rsb	r2, r3, r2	@ s32FreeSize, D.39024, MEM[base: _157, offset: 16B]
	cmp	r0, r2	@ D.39024, s32FreeSize
	ble	.L99	@,
.L66:
	add	r5, r5, #1	@ i, i,
	mov	r2, r4	@ D.39028, ivtmp.227
	cmp	r5, ip	@ i, D.39024
	bne	.L67	@,
	b	.L42	@
.L97:
	ldr	r3, [r4]	@ D.39024, VoUsingFrameArray_24(D)->FrameAddr
	add	r7, r8, r7	@ D.39024, s32VdhMemAddr, s32VdhTotalMemUse
	cmp	r3, r7	@ D.39024, D.39024
	rsbgt	r3, r7, r3	@ s32FreeSize, D.39024, D.39024
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, r0	@ s32FreeSize, D.39024
	strge	r7, [lr, #236]	@ D.39024, _99->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.39021,
	blt	.L60	@,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L46:
	str	r2, [r5, #1880]	@ D.39024, pstInst_26->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [r0, #4]	@ _42->FrameSize, _42->FrameSize
	add	r3, r3, r7	@ D.39024, _42->FrameSize, s32VdhTotalMemUse
	str	r3, [r0, #4]	@ D.39024, _42->FrameSize
.L50:
	add	r3, sp, #36	@,,
	ldr	r2, [r5, #1884]	@, pstInst_26->MemSize
	ldr	r1, [r5, #1880]	@, pstInst_26->MemAddr
	mov	r0, r9	@, InstID
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
	cmp	ip, r5	@ D.39024, i
	str	r3, [lr, #236]	@ D.39024, _99->s32OffLineDnrMemAddr
	ble	.L42	@,
	mov	r0, #0	@ D.39021,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L96:
	str	r3, [r5, #1880]	@ D.39024, pstInst_26->MemAddr
	cmp	ip, r1	@ D.39024, i
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [lr, #4]	@ _179->FrameSize, _179->FrameSize
	add	r3, r3, r7	@ D.39024, _179->FrameSize, s32VdhTotalMemUse
	str	r3, [lr, #4]	@ D.39024, _179->FrameSize
	bgt	.L50	@,
	b	.L42	@
.L98:
	mov	r0, #0	@ D.39021,
	str	r3, [lr, #236]	@ D.39024, _99->s32OffLineDnrMemAddr
	b	.L86	@
.L95:
	str	r3, [r5, #1880]	@ D.39024, pstInst_26->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [r4, #4]	@ VoUsingFrameArray_24(D)->FrameSize, VoUsingFrameArray_24(D)->FrameSize
	add	r3, r3, r7	@ D.39024, VoUsingFrameArray_24(D)->FrameSize, s32VdhTotalMemUse
	str	r3, [r4, #4]	@ D.39024, VoUsingFrameArray_24(D)->FrameSize
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
	mov	fp, r0	@ InstID, InstID
	add	r0, sp, #48	@ tmp354,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	fp, #3	@ InstID,
	bhi	.L110	@,
	ldr	r3, .L155	@ tmp204,
	ldr	r8, [r3, fp, asl #2]	@ pstInst, s_pFspInst
	add	r3, r8, #32768	@ tmp206, pstInst,
	ldrsb	r2, [r8, #10]	@ pstInst_20->s32DecFsNum, pstInst_20->s32DecFsNum
	ldr	r1, [r3, #1880]	@ s32VdhMemAddr, pstInst_20->MemAddr
	cmp	r2, #0	@ pstInst_20->s32DecFsNum,
	ldr	r2, [r3, #1884]	@ s32VdhAllMemSize, pstInst_20->MemSize
	ldr	r6, [r3, #1872]	@ s32ImgSize, pstInst_20->ImgSlotLen
	str	r1, [sp, #24]	@ s32VdhMemAddr, %sfp
	str	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	ldr	r2, [r3, #1876]	@ D.39061, pstInst_20->TotalMemUsed
	str	r2, [sp, #32]	@ D.39061, %sfp
	ldr	r2, [r3, #1888]	@ D.39062, pstInst_20->StrideByte
	str	r2, [sp, #36]	@ D.39062, %sfp
	ble	.L152	@,
	add	r4, r8, #27648	@ ivtmp.270, pstInst,
	ldr	r10, .L155+4	@ tmp328,
	add	r4, r4, #160	@ ivtmp.270, ivtmp.270,
	mov	r5, #0	@ i,
	mov	r9, #1	@ tmp329,
	b	.L111	@
.L153:
	ldr	r3, [r10, fp, asl #2]	@ D.39059, s_pstVfmwChan
	add	r3, r3, r5, lsl #4	@ tmp224, D.39059, i,
	add	r2, r3, #216064	@ tmp226, tmp224,
	add	r3, r3, #212992	@ tmp236, tmp224,
	str	r0, [r2, #360]	@ s32UsingCount, _36->stFrameArray[i_123].eFrameState
	ldr	r1, [r4]	@ D.39061, MEM[base: _153, offset: 0B]
	str	r1, [r2, #364]	@ D.39061,
	str	r6, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L109:
	ldrsb	r3, [r8, #10]	@ D.39061, pstInst_20->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #52	@ ivtmp.270, ivtmp.270,
	cmp	r3, r5	@ D.39061, i
	ble	.L112	@,
.L111:
	mov	r2, r6	@, s32ImgSize
	ldr	r1, [r4]	@, MEM[base: _153, offset: 0B]
	mov	r0, fp	@, InstID
	ldr	r7, .L155+4	@ tmp323,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L153	@,
	ble	.L110	@,
	ldr	r3, [r10, fp, asl #2]	@ D.39059, s_pstVfmwChan
	add	r3, r3, r5, lsl #4	@ tmp244, D.39059, i,
	add	r2, r3, #216064	@ tmp246, tmp244,
	add	r3, r3, #212992	@ tmp256, tmp244,
	str	r9, [r2, #360]	@ tmp329, _43->stFrameArray[i_123].eFrameState
	ldr	r1, [r4]	@ D.39061, MEM[base: _153, offset: 0B]
	str	r1, [r2, #364]	@ D.39061,
	str	r6, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L109	@
.L152:
	ldr	r7, .L155+4	@ tmp323,
.L112:
	ldr	r3, .L155+8	@ tmp217,
	ldr	r1, [r7, fp, asl #2]	@ D.39059, s_pstVfmwChan
	ldr	r4, [r3, #36]	@ D.39064, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r2, [r1, #1608]	@ s32ThrWidth, _50->stSynExtraData.s32DSDThrWidth
	cmp	r4, #0	@ D.39064,
	ldr	r3, [r1, #1612]	@ s32ThrHeight, _50->stSynExtraData.s32DSDThrHeight
	ldr	r1, [r1, #1588]	@ s32DnrNum, _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L106	@,
	add	r0, sp, #48	@ tmp359,,
	mov	lr, #0	@ tmp263,
	str	r0, [sp, #16]	@ tmp359,
	mov	r0, #64	@ tmp260,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp262,
	str	r0, [sp, #20]	@ tmp260,
	mov	r0, #1	@,
	str	r1, [sp, #12]	@ tmp262,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp263,
	str	lr, [sp]	@ tmp263,
	blx	r4	@ D.39064
	cmp	r0, #0	@,
	beq	.L113	@,
.L106:
	bl	vfmw_dprint_nothing	@
.L113:
	ldr	r2, [sp, #36]	@ D.39062, %sfp
	ldr	r3, [sp, #32]	@ D.39061, %sfp
	ldr	r4, [r7, fp, asl #2]	@ D.39059, s_pstVfmwChan
	add	r3, r3, r2	@ D.39062, D.39061, D.39062
	ldr	r2, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r7, [sp, #52]	@ D.39061, MemArrange.TotalMemUsed
	add	r3, r2, r3	@ D.39061, s32VdhMemAddr, D.39062
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	str	r7, [r4, #240]	@ D.39061, _58->s32OffLineDNRMemSize
	ldr	r2, [r2]	@ D.39061, VoUsingFrameArray_61(D)->FrameAddr
	cmp	r2, r3	@ D.39061, D.39061
	rsbgt	r2, r3, r2	@ s32FreeSize, D.39061, D.39061
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r7	@ s32FreeSize, D.39061
	bge	.L151	@,
	ldr	r2, [sp, #40]	@ s32Num, %sfp
	cmp	r2, #0	@ s32Num,
	beq	.L116	@,
	ble	.L117	@,
	sub	r2, r2, #-536870911	@ D.39057, s32Num,
	ldr	r0, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r1, r0, r2, lsl #3	@ D.39065, VoUsingFrameArray, D.39057,
	ldr	r2, [r0, r2, asl #3]	@ _69->FrameAddr, _69->FrameAddr
	ldr	r1, [r1, #4]	@ _69->FrameSize, _69->FrameSize
	add	r2, r2, r1	@ D.39061, _69->FrameAddr, _69->FrameSize
	cmp	r3, r2	@ D.39061, D.39061
	bgt	.L116	@,
.L118:
	ldr	r3, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r1, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r3, r3, r1	@ D.39061, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r2, r3	@ s32FreeSize, D.39061, D.39061
	cmp	r7, r3	@ D.39061, s32FreeSize
	strle	r2, [r4, #236]	@ D.39061, _58->s32OffLineDnrMemAddr
	movle	r0, #0	@ D.39058,
	ble	.L148	@,
.L119:
	cmp	r6, r7	@ s32ImgSize, D.39061
	movge	r5, #1	@ s32DnrLockFrmNum,
	blt	.L154	@,
.L120:
	ldrsb	lr, [r8, #10]	@ D.39061, pstInst_20->s32DecFsNum
	cmp	lr, #0	@ D.39061,
	ble	.L110	@,
	cmp	r5, lr	@ s32DnrLockFrmNum, D.39061
	bgt	.L139	@,
	mov	r0, #0	@ j,
	mov	r1, r5	@ D.39061, s32DnrLockFrmNum
.L123:
	cmp	r0, r1	@ j, D.39061
	bge	.L124	@,
	mov	ip, r0, asl #4	@ tmp325, j,
	mov	r2, r0	@ j, j
	add	r3, r4, ip	@ tmp291, D.39059, tmp325
	add	r3, r3, #216064	@ tmp293, tmp291,
	ldr	r3, [r3, #360]	@ _58->stFrameArray[j_29].eFrameState, _58->stFrameArray[j_29].eFrameState
	cmp	r3, #0	@ _58->stFrameArray[j_29].eFrameState,
	beq	.L127	@,
	b	.L125	@
.L128:
	add	r3, r3, #360	@ D.39057, D.39057,
	ldr	r3, [r4, r3]	@ MEM[base: _10, offset: 0B], MEM[base: _10, offset: 0B]
	cmp	r3, #0	@ MEM[base: _10, offset: 0B],
	bne	.L125	@,
.L127:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r1	@ j, D.39061
	mov	r3, r2, asl #4	@ D.39057, j,
	add	r3, r3, #216064	@ D.39057, D.39057,
	blt	.L128	@,
	mov	r3, #52	@ tmp310,
	add	r2, r4, ip	@ tmp305, D.39059, tmp325
	mla	r3, r3, r0, r8	@ D.39057, tmp310, j, pstInst
	add	r2, r2, #216064	@ tmp306, tmp305,
	add	r2, r2, #360	@ tmp306, tmp306,
	add	ip, ip, #216064	@ D.39057, tmp325,
	add	ip, ip, #360	@ D.39057, D.39057,
	mov	r7, r0	@ j, j
	ldr	r2, [r2, #4]	@ _58->stFrameArray[j_171].s32FrameAddr, _58->stFrameArray[j_171].s32FrameAddr
	add	r3, r3, #27648	@ ivtmp.253, D.39057,
	add	ip, r4, ip	@ ivtmp.256, D.39059, D.39057
	add	r3, r3, #160	@ ivtmp.253, ivtmp.253,
	mov	r9, #2	@ tmp326,
	mov	lr, #0	@ tmp327,
	str	r2, [r4, #236]	@ _58->stFrameArray[j_171].s32FrameAddr, _58->s32OffLineDnrMemAddr
.L130:
	ldr	r2, [r3], #52	@ s32FrameStartAddr, MEM[base: _80, offset: 0B]
	add	r0, r0, #1	@ j, j,
	cmp	r0, r1	@ j, D.39061
	str	r9, [ip]	@ tmp326, MEM[base: _137, offset: 0B]
	stmib	ip, {r2, r6, lr}	@ ivtmp.256,,,
	add	ip, ip, #16	@ ivtmp.256, ivtmp.256,
	bne	.L130	@,
.L131:
	ldrsb	lr, [r8, #10]	@ D.39061, pstInst_20->s32DecFsNum
	cmp	lr, r7	@ D.39061, j
	ble	.L110	@,
	add	r1, r5, r7	@ D.39061, s32DnrLockFrmNum, j
.L135:
	cmp	r1, lr	@ D.39061, D.39061
	bgt	.L110	@,
	mov	r0, #0	@ D.39058,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L116:
	ldr	r2, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r1, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r2, r2, r1	@ D.39061, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r2, r3, r2	@ s32FreeSize, D.39061, D.39061
	cmp	r7, r2	@ D.39061, s32FreeSize
	bgt	.L119	@,
.L151:
	mov	r0, #0	@ D.39058,
	str	r3, [r4, #236]	@ D.39061, _58->s32OffLineDnrMemAddr
.L148:
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L125:
	add	r0, r2, #1	@ j, j,
	cmp	r0, lr	@ j, D.39061
	bge	.L110	@,
	add	r1, r5, r0	@ D.39061, s32DnrLockFrmNum, j
	cmp	r1, lr	@ D.39061, D.39061
	ble	.L123	@,
.L110:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39058,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L154:
	mov	r1, r6	@, s32ImgSize
	mov	r0, r7	@, D.39061
	bl	__aeabi_idiv	@
	mov	r1, r6	@, s32ImgSize
	mov	r5, r0	@ s32DnrLockFrmNum,
	mov	r0, r7	@, D.39061
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addgt	r5, r5, #1	@ s32DnrLockFrmNum, s32DnrLockFrmNum,
	b	.L120	@
.L117:
	ldr	r3, [sp, #40]	@ s32Num, %sfp
	ldr	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	sub	r3, r3, #-536870911	@ D.39057, s32Num,
	add	r2, r1, r3, lsl #3	@ D.39065, VoUsingFrameArray, D.39057,
	ldr	r3, [r1, r3, asl #3]	@ _112->FrameAddr, _112->FrameAddr
	ldr	r2, [r2, #4]	@ _112->FrameSize, _112->FrameSize
	add	r2, r3, r2	@ D.39061, _112->FrameAddr, _112->FrameSize
	b	.L118	@
.L124:
	add	r3, r4, r0, lsl #4	@ tmp319, D.39059, j,
	mov	r7, r0	@ j, j
	add	r3, r3, #216064	@ tmp320, tmp319,
	add	r3, r3, #360	@ tmp320, tmp320,
	ldr	r3, [r3, #4]	@ _58->stFrameArray[j_175].s32FrameAddr, _58->stFrameArray[j_175].s32FrameAddr
	str	r3, [r4, #236]	@ _58->stFrameArray[j_175].s32FrameAddr, _58->s32OffLineDnrMemAddr
	b	.L131	@
.L139:
	mov	r1, r5	@ D.39061, s32DnrLockFrmNum
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmp	r0, #3	@ InstID,
	.pad #524
	sub	sp, sp, #524	@,,
	mov	r2, #0	@ tmp128,
	mov	r5, r0	@ InstID, InstID
	str	r2, [sp, #4]	@ tmp128, s32UsingNum
	bhi	.L160	@,
	ldr	r3, .L170	@ tmp129,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L160	@,
	add	r3, r3, #32768	@ tmp131, pstInst,
	add	ip, sp, #520	@ D.39081,,
	mov	r1, #-2147483648	@ tmp149,
	ldr	r4, [r3, #1876]	@ s32VdhTotalMemUse, pstInst_10->TotalMemUsed
	add	r3, sp, #8	@ tmp152,,
.L161:
	stmia	r3, {r1, r2}	@ ivtmp.280,,
	add	r3, r3, #8	@ ivtmp.280, ivtmp.280,
	cmp	r3, ip	@ ivtmp.280, D.39081
	bne	.L161	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@ tmp153,,
	mov	r0, r5	@, InstID
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L160	@,
	ldr	r3, [sp, #4]	@ s32UsingNum, s32UsingNum
	cmp	r3, #0	@ s32UsingNum,
	ble	.L162	@,
	ldr	r1, [sp, #12]	@ D.39083, VoUsingImage[0].FrameSize
	cmp	r4, r1	@ s32VdhTotalMemUse, D.39083
	ble	.L163	@,
	mov	r4, r4, asl #1	@ D.39083, s32VdhTotalMemUse,
	movw	r2, #21846	@ tmp141,
	movt	r2, 21845	@ tmp141,
	smull	r2, r3, r4, r2	@ tmp140, D.39083, tmp141
	sub	r4, r3, r4, asr #31	@ D.39083,, D.39083,
	cmp	r1, r4	@ D.39083, D.39083
	blt	.L162	@,
.L163:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstID
	add	r1, sp, #8	@ tmp154,,
	ldr	r2, [sp, #4]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L160	@,
.L164:
	mov	r0, #0	@ D.39080,
.L159:
	add	sp, sp, #524	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L162:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, InstID
	add	r1, sp, #8	@ tmp155,,
	ldr	r2, [sp, #4]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L164	@,
.L160:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39080,
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
	ldr	r3, [r5, r0, asl #2]	@ D.39087, s_pstVfmwChan
	ldr	ip, [r3, #236]	@ D.39088, _7->s32OffLineDnrMemAddr
	ldr	r7, [r3, #1608]	@ s32ThrWidth, _7->stSynExtraData.s32DSDThrWidth
	ldr	r8, [r3, #1612]	@ s32ThrHeight, _7->stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.39088
	str	ip, [sp, #8]	@ D.39088, DnrMem.PhyAddr
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
	ldr	r1, [r5, r4, asl #2]	@ D.39087, s_pstVfmwChan
	ldr	r5, .L186	@ tmp144,
	add	r1, r1, #217088	@ tmp146, D.39087,
	ldr	r3, [r1, #372]	@ _41->stDnrChanCfg.s32NeedConfigDnrChan, _41->stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r3, #1	@ _41->stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.39086,
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
	mvn	r0, #0	@ D.39086,
	b	.L177	@
.L185:
	add	r1, r1, #360	@, tmp146,
	mov	r0, r4	@, InstID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@ D.39086
	bne	.L175	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	add	r3, r3, #217088	@ tmp153, tmp151,
	str	r0, [r3, #372]	@ D.39086, _47->stDnrChanCfg.s32NeedConfigDnrChan
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
	mov	r1, #16	@,
	ldr	r4, .L190	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	add	r0, r4, #16	@, tmp110,
	mov	r1, #32	@,
	bl	__memzero	@
	mvn	r3, #0	@ tmp115,
	mov	r2, #0	@ tmp126,
	add	r0, r4, #52	@, tmp110,
	str	r2, [r4, #48]	@ tmp126, g_IsFrameIntfValid
	mov	r1, #16	@,
	strh	r3, [r4, #18]	@ movhi	@ tmp115, s_FspVoQue[0].history
	strh	r3, [r4, #26]	@ movhi	@ tmp115, s_FspVoQue[1].history
	strh	r3, [r4, #34]	@ movhi	@ tmp115, s_FspVoQue[2].history
	strh	r3, [r4, #42]	@ movhi	@ tmp115, s_FspVoQue[3].history
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L195	@,
	ldr	r3, .L197	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ D.39098, s_pFspInst
	ldr	r2, [r3, #4]	@ _7->eFspInstState, _7->eFspInstState
	cmp	r2, #1	@ _7->eFspInstState,
	bne	.L195	@,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ D.39100, pstAttr_10(D)->s8LowBufEnable
	mov	r0, #0	@ D.39096,
	strb	r2, [r3, #1]	@ D.39100, _7->s8LowBufEnable
	ldmfd	sp!, {r4, pc}	@
.L195:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39096,
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
	add	r6, r4, #40	@ D.39104, pFspInst,
	ldrb	r5, [r4]	@ zero_extendqisi2	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	mov	r2, #20	@,
	add	r0, sp, #4	@ tmp137,,
	mov	r1, r6	@, D.39104
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	ldr	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	bl	memcpy	@
	mov	r0, r4	@, pFspInst
	movw	r1, #34664	@,
	bl	__memzero	@
	ldr	r3, .L206	@ tmp127,
	sxtb	r2, r5	@ D.39105, s8TmpInstID
	strb	r5, [r4]	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	strb	r8, [r4, #1]	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	str	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	ldr	r3, [r3, r2, asl #2]	@ tmp129, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@ D.39103,
	beq	.L205	@,
.L201:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L205:
	add	r1, sp, #4	@ tmp138,,
	mov	r0, r6	@, D.39104
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, #0	@ D.39103,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L204:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39103,
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L211	@,
	ldr	r3, .L217	@ tmp116,
	ldr	r5, [r3, r0, asl #2]	@ D.39117, s_pFspInst
	cmp	r5, #0	@ D.39117,
	beq	.L211	@,
	ldr	r4, [r5, #4]	@ _7->eFspInstState, _7->eFspInstState
	cmp	r4, #0	@ _7->eFspInstState,
	bne	.L212	@,
	mov	r0, r5	@, D.39117
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp118,
	mov	r0, r4	@ D.39115, _7->eFspInstState
	str	r3, [r5, #4]	@ tmp118, _7->eFspInstState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L212:
	mvn	r0, #0	@ D.39115,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L211:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39115,
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
	cmp	r0, #3	@ InstID,
	bhi	.L221	@,
	ldr	r3, .L226	@ tmp114,
	ldr	r3, [r3, r0, asl #2]	@ D.39122, s_pFspInst
	cmp	r3, #0	@ D.39122,
	beq	.L221	@,
	ldr	r2, [r3, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	r2, #1	@ _6->eFspInstState,
	moveq	r2, #0	@ tmp116,
	streq	r2, [r3, #4]	@ tmp116, _6->eFspInstState
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, #0	@ i,
	ldr	r5, .L240	@ ivtmp.304,
.L230:
	ldr	r3, [r5], #4	@ D.39137, MEM[base: _14, offset: 0B]
	cmp	r3, #0	@ D.39137,
	beq	.L229	@,
	ldr	r3, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r3, #0	@ _5->eFspInstState,
	bne	.L239	@,
.L229:
	add	r4, r4, #1	@ i, i,
	cmp	r4, #4	@ i,
	bne	.L230	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L239:
	mov	r0, r4	@, i
	bl	FSP_DisableInstance	@
	b	.L229	@
.L241:
	.align	2
.L240:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ InstID, InstID
	bhi	.L245	@,
	ldr	r6, .L269	@ tmp139,
	ldr	r9, [r6, r0, asl #2]	@ D.39156, s_pFspInst
	cmp	r9, #0	@ D.39156,
	beq	.L245	@,
	add	r4, r9, #27648	@ ivtmp.318, D.39156,
	add	r5, r9, #30976	@ D.39155, D.39156,
	add	r4, r4, #150	@ ivtmp.318, ivtmp.318,
	add	r5, r5, #150	@ D.39155, D.39155,
	mov	r8, r6	@ tmp140, tmp139
	b	.L252	@
.L250:
	mov	r2, #0	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.39161
.L249:
	ldrsb	r3, [r4]	@ MEM[base: _1, offset: 0B], MEM[base: _1, offset: 0B]
	cmp	r3, #0	@ MEM[base: _1, offset: 0B],
	beq	.L247	@,
	ldr	r3, [r6, #60]	@ D.39160, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #10]	@ D.39159, MEM[base: _1, offset: 10B]
	cmp	r3, #0	@ D.39160,
	beq	.L267	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.39160
.L247:
	add	r4, r4, #52	@ ivtmp.318, ivtmp.318,
	cmp	r4, r5	@ ivtmp.318, D.39155
	beq	.L268	@,
.L252:
	ldr	r1, [r4, #10]	@ D.39157, MEM[base: _1, offset: 10B]
	cmp	r1, #0	@ D.39157,
	beq	.L247	@,
	ldr	r3, [r6, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L247	@,
	ldrsb	r3, [r4, #-2]	@ MEM[base: _1, offset: 4294967294B], MEM[base: _1, offset: 4294967294B]
	cmp	r3, #0	@ MEM[base: _1, offset: 4294967294B],
	beq	.L249	@,
	ldr	r3, [r8, #64]	@ D.39161, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.39161,
	bne	.L250	@,
	bl	vfmw_dprint_nothing	@
	b	.L249	@
.L267:
	add	r4, r4, #52	@ ivtmp.318, ivtmp.318,
	bl	vfmw_dprint_nothing	@
	cmp	r4, r5	@ ivtmp.318, D.39155
	bne	.L252	@,
.L268:
	mov	r0, r9	@, D.39156
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.39153,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L245:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39153,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L270:
	.align	2
.L269:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0	@ InstID, InstID
	bhi	.L274	@,
	ldr	r10, .L308	@ tmp176,
	ldr	r7, [r10, r0, asl #2]	@ D.39193, s_pFspInst
	cmp	r7, #0	@ D.39193,
	beq	.L274	@,
	mov	r1, #27648	@,
	add	r0, r7, #96	@, D.39193,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ _15->s32DecFsNum, _15->s32DecFsNum
	cmp	r3, #0	@ _15->s32DecFsNum,
	ble	.L285	@,
	add	r4, r7, #27648	@ ivtmp.346, D.39193,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.346, ivtmp.346,
	mov	r6, r5	@ tmp180, i
	mov	r9, r10	@ tmp179, tmp176
.L284:
	ldr	r1, [r4, #-32]	@ D.39189, MEM[base: _74, offset: 4294967264B]
	cmp	r1, #0	@ D.39189,
	beq	.L279	@,
	ldr	r3, [r10, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L279	@,
	ldrsb	r3, [r4, #-44]	@ MEM[base: _74, offset: 4294967252B], MEM[base: _74, offset: 4294967252B]
	cmp	r3, #0	@ MEM[base: _74, offset: 4294967252B],
	beq	.L281	@,
	ldr	r3, [r9, #64]	@ D.39198, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.39198,
	beq	.L306	@,
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	blx	r3	@ D.39198
.L281:
	ldrsb	r3, [r4, #-42]	@ MEM[base: _74, offset: 4294967254B], MEM[base: _74, offset: 4294967254B]
	cmp	r3, #0	@ MEM[base: _74, offset: 4294967254B],
	beq	.L279	@,
	ldr	r3, [r10, #60]	@ D.39197, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ D.39196, MEM[base: _74, offset: 4294967264B]
	cmp	r3, #0	@ D.39197,
	beq	.L307	@,
	mov	r0, r8	@, InstID
	blx	r3	@ D.39197
.L279:
	strb	r6, [r4, #-44]	@ tmp180, MEM[base: _74, offset: 4294967252B]
	add	r5, r5, #1	@ i, i,
	strb	r6, [r4, #-42]	@ tmp180, MEM[base: _74, offset: 4294967254B]
	str	r6, [r4], #52	@ tmp180, MEM[base: _74, offset: 0B]
	ldrsb	r3, [r7, #10]	@ D.39189, _15->s32DecFsNum
	cmp	r3, r5	@ D.39189, i
	bgt	.L284	@,
.L285:
	ldrsb	r0, [r7, #11]	@ D.39195, _15->s32DispFsNum
	cmp	r0, #0	@ D.39195,
	addgt	r3, r7, #30976	@ ivtmp.334, D.39193,
	movgt	r2, #0	@ i,
	addgt	r3, r3, #148	@ ivtmp.334, ivtmp.334,
	movgt	r1, r2	@ tmp178, i
	ble	.L277	@,
.L288:
	add	r2, r2, #1	@ i, i,
	strb	r1, [r3]	@ tmp178, MEM[base: _8, offset: 0B]
	cmp	r0, r2	@ D.39195, i
	strb	r1, [r3, #2]	@ tmp178, MEM[base: _8, offset: 2B]
	str	r1, [r3, #44]	@ tmp178, MEM[base: _8, offset: 44B]
	add	r3, r3, #52	@ ivtmp.334, ivtmp.334,
	bne	.L288	@,
.L277:
	ldrsb	r2, [r7, #13]	@ D.39195, _15->s32PmvNum
	cmp	r2, #0	@ D.39195,
	addgt	r2, r2, #13	@ D.39194, D.39195,
	addgt	r3, r7, #13	@ ivtmp.325, D.39193,
	addgt	r2, r7, r2	@ D.39192, D.39193, D.39194
	movgt	r1, #0	@ tmp177,
	ble	.L287	@,
.L289:
	strb	r1, [r3, #1]!	@ tmp177, MEM[base: _28, offset: 0B]
	cmp	r3, r2	@ ivtmp.325, D.39192
	bne	.L289	@,
.L287:
	mov	r0, #0	@ tmp170,
	str	r0, [r7, #36]	@ tmp170, _15->u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L306:
	bl	vfmw_dprint_nothing	@
	b	.L281	@
.L307:
	bl	vfmw_dprint_nothing	@
	b	.L279	@
.L274:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39190,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L309:
	.align	2
.L308:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L313	@,
	cmp	r1, #0	@ pstFspInstCfg,
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	beq	.L313	@,
	ldr	r2, .L325	@ tmp121,
	ldr	r3, [r2, r0, asl #2]	@ D.39205, s_pFspInst
	cmp	r3, #0	@ D.39205,
	beq	.L313	@,
	ldr	r3, [r3, #4]	@ _10->eFspInstState, _10->eFspInstState
	cmp	r3, #1	@ _10->eFspInstState,
	bne	.L313	@,
	ldr	r3, .L325+4	@ tmp126,
	mov	r1, #0	@ tmp123,
	strb	r1, [r4]	@ tmp123, pstFspInstCfg_8(D)->s32DispLoopEnable
	ldr	r5, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r3, r0, asl #2]	@ tmp127, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L314	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L314:
	mov	r1, r4	@, pstFspInstCfg
	add	r0, r5, #60	@, pstInst,
	mov	r2, #36	@,
	bl	memcpy	@
	mov	r0, #0	@ D.39203,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L313:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39203,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L326:
	.align	2
.L325:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.fnend
	.size	FSP_ConfigInstance, .-FSP_ConfigInstance
	.align	2
	.global	FSP_PartitionFsMemory
	.type	FSP_PartitionFsMemory, %function
FSP_PartitionFsMemory:
	.fnstart
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #564
	sub	sp, sp, #564	@,,
	mov	r6, r0	@ InstID, InstID
	mov	r4, r1	@ MemPhyAddr, MemPhyAddr
	str	r0, [sp, #128]	@ InstID, %sfp
	mov	r1, #416	@,
	add	r0, sp, #144	@ tmp1130,,
	mov	r5, r2	@ MemSize, MemSize
	str	r3, [sp, #132]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r6, #3	@ InstID,
	bhi	.L330	@,
	ldr	r2, .L426	@ tmp1132,
	ldr	r0, [sp, #128]	@ InstID, %sfp
	ldr	r9, [r2, r0, asl #2]	@ D.39372, s_pFspInst
	cmp	r9, #0	@ D.39372,
	beq	.L330	@,
	add	r3, r9, #32768	@ tmp1070, D.39372,
	str	r3, [sp, #96]	@ tmp1070, %sfp
	str	r4, [r3, #1880]	@ MemPhyAddr, _24->MemAddr
	str	r5, [r3, #1884]	@ MemSize, _24->MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L410	@,
.L332:
	ldrsb	r3, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec
	cmp	r3, #1	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec,
	beq	.L379	@,
.L330:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39369,
.L404:
	add	sp, sp, #564	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L410:
	ldr	r1, .L426+4	@ tmp435,
	mov	r3, r0, asl #5	@ tmp438, eChanCapLevel,
	sub	r3, r3, r0, asl #2	@ tmp439, tmp438, eChanCapLevel,
	ldr	ip, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	add	lr, r1, r3	@ tmp440, tmp435, tmp439
	ldr	r2, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	r1, [r1, r3]	@ tmp449, CapItem
	ldr	r3, [lr, #4]	@ tmp450, CapItem
	mul	r2, r2, ip	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	mul	r3, r3, r1	@ D.39373, tmp450, tmp449
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, r3	@, D.39373, D.39373
	bgt	.L332	@,
.L379:
	ldr	r2, [r9, #92]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.39373,
	ldreqb	r3, [r9, #60]	@ zero_extendqisi2	@ D.39370, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	bne	.L411	@,
.L334:
	ldr	r1, .L426+8	@ tmp463,
	sxtb	r3, r3	@ D.39377, D.39370
	ldrsb	r2, [r9, #65]	@ D.39369, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	mov	r6, #4	@ D.39377,
	ldr	ip, [r1, #36]	@ D.39375, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	smlabb	r6, r6, r3, r2	@ MinFsNum, D.39377, D.39377, D.39369
	cmp	ip, #0	@ D.39375,
	beq	.L330	@,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	add	r0, sp, #144	@ tmp1137,,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	mov	r7, #64	@ tmp466,
	str	r0, [sp, #16]	@ tmp1137,
	mov	lr, #40	@ tmp469,
	ldr	r0, [sp, #128]	@ InstID, %sfp
	mov	r1, r5	@, MemSize
	str	r7, [sp, #20]	@ tmp466,
	str	r0, [sp, #12]	@ InstID,
	mov	r0, r4	@, MemPhyAddr
	ldrsb	r4, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec
	str	lr, [sp, #4]	@ tmp469,
	str	r4, [sp, #8]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.39375
	cmp	r0, #0	@ Ret
	bne	.L330	@,
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _24->s8TotalValidFsNum
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r6, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L330	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	strb	r0, [r9, #11]	@ Ret, _24->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable,
	strb	r0, [r9, #12]	@ Ret, _24->s32TfFsNum
	bne	.L338	@,
	ldrsb	r3, [r9, #1]	@ _24->s8LowBufEnable, _24->s8LowBufEnable
	cmp	r3, #0	@ _24->s8LowBufEnable,
	beq	.L339	@,
	ldr	r3, .L426+12	@ tmp480,
	ldr	r2, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r3, r2, asl #2]	@ tmp481, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _74->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _74->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _74->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L340	@,
	ldrsb	r3, [r9, #65]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r3, #4	@ D.39373, D.39373,
	cmp	r3, r2	@ D.39373, MemArrange.ValidFrameNum
	movge	r3, r2	@ D.39373, MemArrange.ValidFrameNum
	uxtb	r3, r3	@ D.39370, D.39373
	strb	r3, [r9, #10]	@ D.39370, _24->s32DecFsNum
	b	.L341	@
.L411:
	ldr	r1, [r9, #88]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.39370, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	cmp	r1, #0	@ D.39373,
	beq	.L334	@,
	cmp	r3, #0	@ D.39370,
	beq	.L334	@,
	ldr	r0, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	cmp	r2, r0	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	bne	.L386	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	cmp	r1, r2	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	beq	.L334	@,
.L386:
	mvn	r0, #0	@ D.39369,
	b	.L404	@
.L338:
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.39370, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	strb	r3, [r9, #10]	@ D.39370, _24->s32DecFsNum
.L341:
	sxtb	r4, r3	@ D.39373, D.39370
	ldr	r3, [sp, #144]	@ D.39369, MemArrange.VahbStride
	ldr	r2, [sp, #552]	@ D.39369, MemArrange.ImgSlotLen
	add	r1, sp, #560	@ ivtmp.442,,
	str	r9, [sp, #136]	@ D.39372, %sfp
	str	r3, [sp, #76]	@ D.39369, %sfp
	ldr	r3, [sp, #96]	@ tmp1070, %sfp
	str	r2, [sp, #84]	@ D.39369, %sfp
	ldr	r0, [r1, #-408]!	@ D.39373, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.39369, _24->ImgSlotLen
	ldr	r2, [sp, #408]	@ D.39373, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.39369, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	str	r1, [sp, #80]	@ ivtmp.442, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #112]	@ D.39373, %sfp
	ldr	r2, [sp, #412]	@ D.39373, MemArrange.LumaPixelOffset
	str	r3, [sp, #100]	@ D.39369, %sfp
	ldr	r3, [r9, #76]	@ D.39369, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	str	r2, [sp, #116]	@ D.39373, %sfp
	ldr	r2, [sp, #416]	@ D.39373, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.39369, %sfp
	mov	r3, r9	@ ivtmp.440, D.39372
	str	r0, [sp, #124]	@ D.39373, %sfp
	str	r2, [sp, #120]	@ D.39373, %sfp
	str	r9, [sp, #140]	@ ivtmp.404, %sfp
	str	r4, [sp, #108]	@ D.39373, %sfp
	b	.L345	@
.L412:
	ldr	r2, [sp, #88]	@ D.39368, %sfp
	str	r1, [r2]	@ i, MEM[base: _524, offset: 0B]
	ldr	r2, [sp, #80]	@ ivtmp.442, %sfp
	ldr	r0, [r2]	@ D.39373, MEM[base: _523, offset: 0B]
	ldr	r2, [sp, #60]	@ D.39368, %sfp
	str	r0, [r10]	@ D.39373, MEM[base: _511, offset: 0B]
	ldr	r0, [sp, #76]	@ D.39369, %sfp
	str	r0, [r9]	@ D.39369, MEM[base: _505, offset: 0B]
	ldr	r0, [sp, #100]	@ D.39369, %sfp
	str	r0, [r8]	@ D.39369, MEM[base: _499, offset: 0B]
	ldr	r0, [sp, #104]	@ D.39369, %sfp
	str	r0, [r7]	@ D.39369, MEM[base: _493, offset: 0B]
	ldr	r0, [sp, #112]	@ D.39373, %sfp
	str	r0, [r6]	@ D.39373, MEM[base: _537, offset: 0B]
	ldr	r0, [sp, #116]	@ D.39373, %sfp
	str	r0, [r5]	@ D.39373, MEM[base: _539, offset: 0B]
	ldr	r0, [sp, #120]	@ D.39373, %sfp
	str	r0, [r4]	@ D.39373, MEM[base: _541, offset: 0B]
	mov	r0, #0	@ tmp1417,
	strb	r0, [lr]	@ tmp1417, MEM[base: _543, offset: 0B]
	strb	r0, [ip]	@ tmp1416, MEM[base: _545, offset: 0B]
	strb	r0, [r2]	@ tmp1415, MEM[base: _547, offset: 0B]
	ldr	r2, [sp, #64]	@ D.39368, %sfp
	ldr	r0, [sp, #84]	@ D.39369, %sfp
	str	r0, [r2]	@ D.39369,* D.39368
.L343:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #80]	@ ivtmp.442, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.440, ivtmp.440,
	add	r2, r2, #4	@ ivtmp.442, ivtmp.442,
	str	r2, [sp, #80]	@ ivtmp.442, %sfp
	beq	.L344	@,
	ldr	r2, [sp, #96]	@ tmp1070, %sfp
	ldr	r2, [r2, #1872]	@ D.39369, _24->ImgSlotLen
	str	r2, [sp, #84]	@ D.39369, %sfp
.L345:
	add	r2, r3, #27648	@ D.39368, ivtmp.440,
	mov	r0, r2	@ D.39368, D.39368
	add	r2, r2, #152	@ D.39368, D.39368,
	str	r2, [sp, #88]	@ D.39368, %sfp
	add	r10, r0, #160	@ D.39368, D.39368,
	ldr	r2, [sp, #108]	@ D.39373, %sfp
	add	r9, r0, #168	@ D.39368, D.39368,
	add	r8, r0, #172	@ D.39368, D.39368,
	add	r7, r0, #176	@ D.39368, D.39368,
	cmp	r2, r1	@ D.39373, i
	add	r2, r0, #160	@ D.39368, D.39368,
	str	r2, [sp, #92]	@ D.39368, %sfp
	add	r2, r0, #168	@ D.39368, D.39368,
	str	r2, [sp, #28]	@ D.39368, %sfp
	add	r2, r0, #172	@ D.39368, D.39368,
	str	r2, [sp, #32]	@ D.39368, %sfp
	add	r2, r0, #176	@ D.39368, D.39368,
	str	r2, [sp, #36]	@ D.39368, %sfp
	add	r2, r0, #180	@ D.39368, D.39368,
	str	r2, [sp, #40]	@ D.39368, %sfp
	add	r2, r0, #184	@ D.39368, D.39368,
	str	r2, [sp, #44]	@ D.39368, %sfp
	add	r2, r0, #188	@ D.39368, D.39368,
	str	r2, [sp, #48]	@ D.39368, %sfp
	add	r2, r0, #148	@ D.39368, D.39368,
	str	r2, [sp, #52]	@ D.39368, %sfp
	add	r2, r0, #149	@ D.39368, D.39368,
	str	r2, [sp, #56]	@ D.39368, %sfp
	add	r2, r0, #150	@ D.39368, D.39368,
	str	r2, [sp, #60]	@ D.39368, %sfp
	add	r2, r0, #196	@ D.39368, D.39368,
	str	r2, [sp, #64]	@ D.39368, %sfp
	add	r2, r0, #152	@ D.39368, D.39368,
	str	r2, [sp, #68]	@ D.39368, %sfp
	add	r2, r0, #150	@ D.39368, D.39368,
	str	r2, [sp, #72]	@ D.39368, %sfp
	add	r2, r0, #196	@ D.39368, D.39368,
	add	r6, r0, #180	@ D.39368, D.39368,
	add	r5, r0, #184	@ D.39368, D.39368,
	add	r4, r0, #188	@ D.39368, D.39368,
	add	lr, r0, #148	@ D.39368, D.39368,
	add	ip, r0, #149	@ D.39368, D.39368,
	mov	r0, r2	@ D.39368, D.39368
	bgt	.L412	@,
	ldr	r2, [sp, #68]	@ D.39368, %sfp
	mov	fp, #0	@ tmp1414,
	str	fp, [r2]	@ tmp1414, MEM[base: _551, offset: 0B]
	ldr	r2, [sp, #124]	@ D.39373, %sfp
	str	r2, [r10]	@ D.39373, MEM[base: _553, offset: 0B]
	ldr	r2, [sp, #76]	@ D.39369, %sfp
	str	r2, [r9]	@ D.39369, MEM[base: _555, offset: 0B]
	ldr	r2, [sp, #100]	@ D.39369, %sfp
	str	r2, [r8]	@ D.39369, MEM[base: _557, offset: 0B]
	ldr	r2, [sp, #104]	@ D.39369, %sfp
	str	r2, [r7]	@ D.39369, MEM[base: _559, offset: 0B]
	ldr	r2, [sp, #112]	@ D.39373, %sfp
	str	r2, [r6]	@ D.39373, MEM[base: _561, offset: 0B]
	ldr	r2, [sp, #116]	@ D.39373, %sfp
	str	r2, [r5]	@ D.39373, MEM[base: _563, offset: 0B]
	ldr	r2, [sp, #120]	@ D.39373, %sfp
	str	r2, [r4]	@ D.39373, MEM[base: _565, offset: 0B]
	mov	r2, r0	@ D.39368, D.39368
	strb	fp, [lr]	@ tmp1413, MEM[base: _567, offset: 0B]
	ldr	r0, [sp, #84]	@ D.39369, %sfp
	strb	fp, [ip]	@ tmp1412, MEM[base: _569, offset: 0B]
	ldr	ip, [sp, #72]	@ D.39368, %sfp
	strb	fp, [ip]	@ tmp1410, MEM[base: _571, offset: 0B]
	str	r0, [r2]	@ D.39369,* D.39368
	b	.L343	@
.L344:
	ldr	r4, [sp, #108]	@ D.39373, %sfp
	add	r2, sp, #560	@ tmp1225,,
	ldr	r5, [sp, #96]	@ tmp1070, %sfp
	add	r1, sp, #408	@,,
	ldr	r9, [sp, #136]	@ D.39372, %sfp
	mov	r3, #1	@ tmp560,
	ldr	r6, [sp, #76]	@ D.39369, %sfp
	add	r2, r2, r4, lsl #2	@ tmp568, tmp1225, D.39373,
	ldr	lr, [sp, #140]	@ ivtmp.404, %sfp
	strb	r3, [r9, #12]	@ tmp560, _24->s32TfFsNum
	mov	r3, #0	@ tmp564,
	str	r6, [r5, #1704]	@ D.39369, _24->stTfFs[0].Stride
	ldr	r6, [sp, #100]	@ D.39369, %sfp
	ldr	r0, [r2, #-408]	@ tmp570, MemArrange.FrameAddr
	ldmia	r1, {r1, r2, ip}	@,,,
	str	r6, [r5, #1708]	@ D.39369, _24->stTfFs[0].FsWidth
	ldr	r6, [sp, #104]	@ D.39369, %sfp
	str	r0, [r5, #1696]	@ tmp570, _24->stTfFs[0].PhyAddr
	str	r1, [r5, #1716]	@ MemArrange.ChromOffset, _24->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.39369, _24->stTfFs[0].FsHeight
	str	r2, [r5, #1720]	@ MemArrange.LumaPixelOffset, _24->stTfFs[0].LumaPixelOffset
	str	ip, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _24->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp564, _24->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp564, _24->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp564, _24->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp564, _24->stTfFs[0].DispState
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.39370, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.39370,
	streqb	r3, [r9, #11]	@ D.39370, _24->s32DispFsNum
	moveq	r5, r3	@ D.39373, D.39370
	beq	.L347	@,
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r9, #67]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.39373, D.39373, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.39373, D.39373,
	cmp	r3, #25	@ D.39373,
	movge	r3, #25	@ D.39373,
	uxtb	r3, r3	@ D.39370, D.39373
	strb	r3, [r9, #11]	@ D.39370, _24->s32DispFsNum
	sxtb	r3, r3	@ D.39373, D.39370
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDispFsNum, D.39373
	mov	r5, r3	@ D.39373, D.39373
	bgt	.L330	@,
.L347:
	ldr	r3, [sp, #408]	@ D.39373, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #144]	@ D.39369, MemArrange.VahbStride
	mov	r0, ip	@ tmp1081, i
	str	r3, [sp, #100]	@ D.39373, %sfp
	ldr	r3, [sp, #412]	@ D.39373, MemArrange.LumaPixelOffset
	str	r2, [sp, #112]	@ D.39369, %sfp
	str	r3, [sp, #104]	@ D.39373, %sfp
	ldr	r3, [sp, #416]	@ D.39373, MemArrange.ChromaPixelOffset
	str	r3, [sp, #108]	@ D.39373, %sfp
	mov	r3, #1	@ D.39370,
	mov	r2, r3	@ D.39370, D.39370
	mov	r3, r4	@ D.39373, D.39373
	b	.L380	@
.L414:
	ldr	r3, [sp, #48]	@ D.39368, %sfp
	ldr	r2, [sp, #56]	@ D.39368, %sfp
	str	ip, [r3]	@ i, MEM[base: _1, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp614, %sfp
	ldr	r3, [r3, #-408]	@ D.39373, MemArrange.FrameAddr
	str	r3, [r2]	@ D.39373, MEM[base: _385, offset: 0B]
	ldr	r3, [sp, #60]	@ D.39368, %sfp
	ldr	r2, [sp, #76]	@ D.39369, %sfp
	str	r2, [r3]	@ D.39369, MEM[base: _461, offset: 0B]
	ldr	r2, [sp, #64]	@ D.39368, %sfp
	ldr	r3, [r9, #88]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.39373, MEM[base: _384, offset: 0B]
	ldr	r2, [sp, #100]	@ D.39373, %sfp
	ldr	r3, [r9, #92]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	str	r3, [r7]	@ D.39373, MEM[base: _381, offset: 0B]
	str	r2, [r6]	@ D.39373, MEM[base: _377, offset: 0B]
	ldr	r2, [sp, #104]	@ D.39373, %sfp
	str	r2, [r5]	@ D.39373, MEM[base: _366, offset: 0B]
	ldr	r2, [sp, #108]	@ D.39373, %sfp
	str	r2, [r4]	@ D.39373, MEM[base: _362, offset: 0B]
	strb	r0, [fp]	@ tmp1081, MEM[base: _336, offset: 0B]
	strb	r0, [r10]	@ tmp1081, MEM[base: _301, offset: 0B]
	strb	r0, [r8]	@ tmp1081, MEM[base: _262, offset: 0B]
.L349:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #112]	@ D.39369, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.404, ivtmp.404,
	str	r3, [sp, #76]	@ D.39369, %sfp
	beq	.L413	@,
	ldrsb	r1, [r9, #11]	@ D.39373, _24->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.39370, _24->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.39373, _24->s32DecFsNum
	mov	r5, r1	@ D.39373, D.39373
.L380:
	add	r1, ip, r3	@ tmp611, i, D.39373
	sxtab	r3, r3, r2	@ tmp647, D.39373, D.39370
	sxtab	r2, r1, r2	@ tmp612, tmp611, D.39370
	add	r1, lr, #30976	@ D.39368, ivtmp.404,
	cmp	r5, ip	@ D.39373, i
	mov	r4, r1	@ D.39368, D.39368
	add	r1, r1, #152	@ D.39368, D.39368,
	str	r1, [sp, #48]	@ D.39368, %sfp
	add	r1, sp, #560	@ tmp1248,,
	add	r3, r1, r3, lsl #2	@ tmp649, tmp1252, tmp647,
	add	r8, r4, #150	@ D.39368, D.39368,
	str	r3, [sp, #80]	@ tmp649, %sfp
	add	r3, r4, #160	@ D.39368, D.39368,
	str	r3, [sp, #56]	@ D.39368, %sfp
	add	r3, r4, #168	@ D.39368, D.39368,
	str	r3, [sp, #60]	@ D.39368, %sfp
	add	r3, r4, #160	@ D.39368, D.39368,
	str	r3, [sp, #84]	@ D.39368, %sfp
	add	r3, r4, #168	@ D.39368, D.39368,
	str	r3, [sp, #88]	@ D.39368, %sfp
	add	r3, r4, #172	@ D.39368, D.39368,
	str	r3, [sp, #64]	@ D.39368, %sfp
	add	r5, r4, #176	@ D.39368, D.39368,
	str	r3, [sp, #92]	@ D.39368, %sfp
	add	r3, r4, #188	@ D.39368, D.39368,
	add	r2, r1, r2, lsl #2	@ tmp614, tmp1248, tmp612,
	add	fp, r4, #148	@ D.39368, D.39368,
	str	r2, [sp, #52]	@ tmp614, %sfp
	add	r10, r4, #149	@ D.39368, D.39368,
	add	r2, r4, #152	@ D.39368, D.39368,
	str	r5, [sp, #68]	@ D.39368, %sfp
	str	r2, [sp, #72]	@ D.39368, %sfp
	add	r5, r4, #180	@ D.39368, D.39368,
	add	r7, r4, #176	@ D.39368, D.39368,
	str	r5, [sp, #28]	@ D.39368, %sfp
	add	r6, r4, #180	@ D.39368, D.39368,
	add	r5, r4, #184	@ D.39368, D.39368,
	str	r3, [sp, #36]	@ D.39368, %sfp
	mov	r2, r8	@ D.39368, D.39368
	str	r5, [sp, #32]	@ D.39368, %sfp
	add	r5, r4, #184	@ D.39368, D.39368,
	str	fp, [sp, #44]	@ D.39368, %sfp
	mov	r4, r3	@ D.39368, D.39368
	str	r5, [sp, #40]	@ D.39368, %sfp
	bgt	.L414	@,
	ldr	r3, [sp, #72]	@ D.39368, %sfp
	ldr	r5, [sp, #76]	@ D.39369, %sfp
	str	r0, [r3]	@ tmp1081, MEM[base: _259, offset: 0B]
	ldr	r3, [sp, #80]	@ tmp649, %sfp
	ldr	r8, [r3, #-408]	@ D.39373, MemArrange.FrameAddr
	ldr	r3, [sp, #84]	@ D.39368, %sfp
	str	r8, [r3]	@ D.39373, MEM[base: _15, offset: 0B]
	ldr	r3, [sp, #88]	@ D.39368, %sfp
	str	r5, [r3]	@ D.39369, MEM[base: _10, offset: 0B]
	ldr	r3, [sp, #92]	@ D.39368, %sfp
	ldr	r8, [r9, #88]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	ldr	r5, [sp, #40]	@ D.39368, %sfp
	str	r8, [r3]	@ D.39373, MEM[base: _6, offset: 0B]
	ldr	r3, [sp, #100]	@ D.39373, %sfp
	ldr	r8, [r9, #92]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	str	r8, [r7]	@ D.39373, MEM[base: _281, offset: 0B]
	str	r3, [r6]	@ D.39373, MEM[base: _263, offset: 0B]
	ldr	r3, [sp, #104]	@ D.39373, %sfp
	str	r3, [r5]	@ D.39373, MEM[base: _436, offset: 0B]
	ldr	r3, [sp, #108]	@ D.39373, %sfp
	str	r3, [r4]	@ D.39373, MEM[base: _40, offset: 0B]
	ldr	r3, [sp, #44]	@ D.39368, %sfp
	strb	r0, [r3]	@ tmp1081, MEM[base: _25, offset: 0B]
	strb	r0, [r10]	@ tmp1081, MEM[base: _451, offset: 0B]
	strb	r0, [r2]	@ tmp1081, MEM[base: _454, offset: 0B]
	b	.L349	@
.L413:
	ldr	r3, [sp, #548]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #424	@ ivtmp.376,,
	add	r0, r9, #34560	@ ivtmp.382, D.39372,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.386, D.39372,
	mov	lr, r2	@ tmp1080, i
	movge	r3, #20	@ D.39373,
	uxtb	r3, r3	@ D.39370, D.39373
	strb	r3, [r9, #13]	@ D.39370, _24->s32PmvNum
	b	.L354	@
.L415:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.39370, _24->s32PmvNum
.L354:
	sxtb	r3, r3	@ D.39373, D.39370
	add	ip, ip, #4	@ ivtmp.376, ivtmp.376,
	cmp	r3, r2	@ D.39373, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.382, ivtmp.382,
	add	r1, r1, #1	@ ivtmp.386, ivtmp.386,
	ldrgt	r3, [ip, #-4]	@ D.39373, MEM[base: _169, offset: 0B]
	ldrle	r3, [sp, #424]	@ D.39373, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.39373,
	strb	lr, [r1, #-1]	@ tmp1080,
	bne	.L415	@,
	ldr	r8, [sp, #96]	@ tmp1070, %sfp
	add	r4, r9, #24576	@ tmp1068, D.39372,
	ldr	r1, [sp, #544]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r3, #0	@ tmp691,
	ldr	r2, [sp, #144]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r6, [sp, #408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r8, #1788]	@ MemArrange.HafPmvOffset, _24->s32HalfPmvOffset
	ldr	r0, [r4, #3232]	@ D.39373, _24->stDecFs[0].PhyAddr
	str	r2, [r4, #3188]	@ MemArrange.VahbStride, _24->stDummyPhyFs.Stride
	str	r3, [r4, #3172]	@ tmp691, _24->stDummyPhyFs.PhyFsID
	str	r0, [r4, #3180]	@ D.39373, _24->stDummyPhyFs.PhyAddr
	ldr	r2, [r9, #72]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	ldr	r5, [sp, #412]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	ldr	lr, [sp, #416]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r4, #3192]	@ D.39373, _24->stDummyPhyFs.FsWidth
	ldr	r7, [sp, #556]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r1, [r9, #76]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	ip, [sp, #148]	@ D.39373, MemArrange.TotalMemUsed
	strb	r3, [r4, #3168]	@ tmp691, _24->stDummyPhyFs.IsDecRef
	str	r1, [r4, #3196]	@ D.39373, _24->stDummyPhyFs.FsHeight
	strb	r3, [r4, #3169]	@ tmp691, _24->stDummyPhyFs.IsTfRef
	strb	r3, [r4, #3170]	@ tmp691, _24->stDummyPhyFs.DispState
	str	r6, [r4, #3200]	@ MemArrange.ChromOffset, _24->stDummyPhyFs.ChromOffset
	str	r5, [r4, #3204]	@ MemArrange.LumaPixelOffset, _24->stDummyPhyFs.LumaPixelOffset
	str	lr, [r4, #3208]	@ MemArrange.ChromaPixelOffset, _24->stDummyPhyFs.ChromaPixelOffset
	str	r7, [r8, #1888]	@ MemArrange.u32StrideByte, _24->StrideByte
	str	ip, [r8, #1876]	@ D.39373, _24->TotalMemUsed
	ldr	r3, [r9, #40]	@ _24->stPreInfo.s32PreWidth, _24->stPreInfo.s32PreWidth
	cmp	r2, r3	@ D.39373, _24->stPreInfo.s32PreWidth
	beq	.L416	@,
.L355:
	ldr	r6, .L426+12	@ tmp1073,
	ldr	r3, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r6, r3, asl #2]	@ tmp1066, s_pstVfmwChan
	ldr	r7, [r3, #1580]	@ _466->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _466->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ _466->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L417	@,
.L382:
	ldrsb	r3, [r9, #10]	@ _24->s32DecFsNum, _24->s32DecFsNum
	ldrsb	lr, [r9, #65]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	str	r2, [r9, #40]	@ D.39373, _24->stPreInfo.s32PreWidth
	str	r1, [r9, #44]	@ D.39373, _24->stPreInfo.s32PreHeight
	str	r3, [r9, #48]	@ _24->s32DecFsNum, _24->stPreInfo.s32PreDecNum
	ldr	r3, [r4, #3284]	@ _24->stDecFs[1].PhyAddr, _24->stDecFs[1].PhyAddr
	str	lr, [r9, #56]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum, _24->stPreInfo.s32PreExpectNum
	rsb	r0, r0, r3	@ D.39373, D.39373, _24->stDecFs[1].PhyAddr
	str	r0, [r9, #52]	@ D.39373, _24->stPreInfo.s32PreDecSlotLen
.L356:
	ldr	r3, [sp, #132]	@ UsedMemSize, %sfp
	mov	r0, #0	@ D.39369,
	str	ip, [r3]	@ D.39373, *UsedMemSize_279(D)
	add	sp, sp, #564	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L339:
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.39373,
	uxtb	r3, r3	@ D.39370, D.39373
	strb	r3, [r9, #10]	@ D.39370, _24->s32DecFsNum
	b	.L341	@
.L416:
	ldr	r3, [r9, #44]	@ _24->stPreInfo.s32PreHeight, _24->stPreInfo.s32PreHeight
	cmp	r1, r3	@ D.39373, _24->stPreInfo.s32PreHeight
	bne	.L355	@,
	ldrsb	lr, [r9, #10]	@ D.39373, _24->s32DecFsNum
	ldr	r3, [r9, #48]	@ _24->stPreInfo.s32PreDecNum, _24->stPreInfo.s32PreDecNum
	cmp	lr, r3	@ D.39373, _24->stPreInfo.s32PreDecNum
	bne	.L355	@,
	ldrsb	lr, [r9, #65]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	ldr	r3, [r9, #56]	@ _24->stPreInfo.s32PreExpectNum, _24->stPreInfo.s32PreExpectNum
	cmp	lr, r3	@ D.39373, _24->stPreInfo.s32PreExpectNum
	bne	.L355	@,
	b	.L356	@
.L417:
	ldr	r0, .L426+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, .L426	@ tmp1310,
	ldr	r8, .L426	@ tmp736,
	ldr	r3, [sp, #128]	@ InstID, %sfp
	ldr	r2, [r2, r3, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r6, r3, asl #2]	@ D.39376, s_pstVfmwChan
	ldr	r5, [r2, #76]	@ pstInst_284->stInstCfg.s32DecFsHeight, pstInst_284->stInstCfg.s32DecFsHeight
	ldr	r0, [r2, #72]	@ pstInst_284->stInstCfg.s32DecFsWidth, pstInst_284->stInstCfg.s32DecFsWidth
	ldr	r1, [r3, #1608]	@ _287->stSynExtraData.s32DSDThrWidth, _287->stSynExtraData.s32DSDThrWidth
	ldr	r2, [r3, #1612]	@ _287->stSynExtraData.s32DSDThrHeight, _287->stSynExtraData.s32DSDThrHeight
	cmp	r5, r2	@ pstInst_284->stInstCfg.s32DecFsHeight, _287->stSynExtraData.s32DSDThrHeight
	cmple	r0, r1	@, pstInst_284->stInstCfg.s32DecFsWidth, _287->stSynExtraData.s32DSDThrWidth
	movle	r5, #1	@ tmp748,
	movgt	r5, #0	@ tmp748,
	bgt	.L357	@,
	ldr	r3, [r3, #1604]	@ _287->stSynExtraData.s32DnrEnable, _287->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _287->stSynExtraData.s32DnrEnable,
	beq	.L418	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L377	@,
	mov	r1, r7	@, _466->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	beq	.L407	@,
	ldr	r10, .L426+20	@ tmp1075,
.L383:
	ldr	lr, [sp, #128]	@ InstID, %sfp
	mov	r0, #1	@ tmp876,
	movw	r3, #11160	@ tmp880,
	bfi	r3, r0, #16, #16	@ tmp880, tmp876,,
	movw	r2, #11160	@ tmp886,
	bfi	r2, r0, #16, #16	@ tmp886, tmp876,,
	ldr	r1, [r6, lr, asl #2]	@ tmp875, s_pstVfmwChan
	mla	r3, r3, lr, r10	@ tmp881, tmp880, InstID, tmp1075
	ldr	ip, [r1, #236]	@ D.39373, _304->s32OffLineDnrMemAddr
	mla	r2, r2, lr, r10	@ tmp887, tmp886, InstID, tmp1075
	add	r3, r3, #75776	@ tmp882, tmp881,
	str	r0, [r1, #1604]	@ tmp876, _298->stSynExtraData.s32DnrEnable
	str	ip, [r3, #884]	@ D.39373, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	r3, [r1, #240]	@ D.39373, _304->s32OffLineDNRMemSize
	add	r2, r2, #75776	@ tmp889, tmp887,
	str	r3, [r2, #888]	@ D.39373, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L426+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r5, #0	@ s32Ret,
	bne	.L330	@,
.L368:
	ldr	r2, [r9, #72]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	ldr	r1, [r9, #76]	@ D.39373, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	r0, [r4, #3232]	@ D.39373, _24->stDecFs[0].PhyAddr
	ldr	ip, [sp, #148]	@ D.39373, MemArrange.TotalMemUsed
	b	.L382	@
.L357:
	ldr	fp, [r3, #1604]	@ _287->stSynExtraData.s32DnrEnable, _287->stSynExtraData.s32DnrEnable
	cmp	fp, #1	@ _287->stSynExtraData.s32DnrEnable,
	beq	.L419	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r8, r0, asl #2]	@ pstInst, s_pFspInst
	add	r2, r3, #32768	@ tmp994, pstInst,
	mov	r1, r3	@ pstInst, pstInst
	ldrsb	r3, [r3, #10]	@ pstInst_364->s32DecFsNum, pstInst_364->s32DecFsNum
	ldr	fp, [r2, #1872]	@ s32ImgSize, pstInst_364->ImgSlotLen
	cmp	r3, #0	@ pstInst_364->s32DecFsNum,
	ble	.L370	@,
	add	r8, r1, #27648	@ ivtmp.363, pstInst,
	str	r9, [sp, #28]	@ D.39372, %sfp
	str	r4, [sp, #32]	@ tmp1068, %sfp
	mov	r9, fp	@ s32ImgSize, s32ImgSize
	add	r8, r8, #160	@ ivtmp.363, ivtmp.363,
	mov	fp, r0	@ InstID, InstID
	mov	r4, r1	@ pstInst, pstInst
	b	.L378	@
.L421:
	ldr	r2, [r6, fp, asl #2]	@ D.39376, s_pstVfmwChan
	add	r2, r2, r5, lsl #4	@ tmp1001, D.39376, i,
	add	r1, r2, #216064	@ tmp1003, tmp1001,
	add	r2, r2, #212992	@ tmp1013, tmp1001,
	str	r0, [r1, #360]	@ s32UsingCount, _369->stFrameArray[i_482].eFrameState
	str	r10, [r1, #364]	@ s32FrameStartAddr,
	str	r9, [r2, #3440]	@ s32ImgSize,
	str	r0, [r2, #3444]	@ s32UsingCount,
.L376:
	ldrsb	r2, [r4, #10]	@ D.39373, pstInst_364->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r8, r8, #52	@ ivtmp.363, ivtmp.363,
	cmp	r5, r2	@ i, D.39373
	bge	.L420	@,
.L378:
	ldr	r10, [r8]	@ s32FrameStartAddr, MEM[base: _536, offset: 0B]
	mov	r2, r9	@, s32ImgSize
	mov	r0, fp	@, InstID
	mov	r1, r10	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L421	@,
	ble	.L377	@,
	ldr	r2, [r6, fp, asl #2]	@ D.39376, s_pstVfmwChan
	add	r2, r2, r5, lsl #4	@ tmp1021, D.39376, i,
	add	r1, r2, #216064	@ tmp1023, tmp1021,
	add	r2, r2, #212992	@ tmp1033, tmp1021,
	str	r7, [r1, #360]	@ tmp1079, _370->stFrameArray[i_482].eFrameState
	str	r10, [r1, #364]	@ s32FrameStartAddr,
	str	r9, [r2, #3440]	@ s32ImgSize,
	str	r0, [r2, #3444]	@ s32UsingCount,
	b	.L376	@
.L340:
	ldrb	r3, [sp, #420]	@ zero_extendqisi2	@ D.39370, MemArrange.ValidFrameNum
	strb	r3, [r9, #10]	@ D.39370, _24->s32DecFsNum
	b	.L341	@
.L422:
	ldr	r4, [sp, #28]	@ tmp1068, %sfp
.L370:
	mov	r1, #0	@,
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret
	bne	.L377	@,
	ldr	ip, [sp, #128]	@ InstID, %sfp
	movw	r3, #11160	@ tmp1043,
	ldr	r1, .L426+20	@ tmp1041,
	movt	r3, 1	@ tmp1043,
	ldr	r2, [r6, ip, asl #2]	@ tmp1038, s_pstVfmwChan
	mla	r3, r3, ip, r1	@ tmp1044, tmp1043, InstID, tmp1041
	ldr	r1, [r2, #236]	@ D.39373, _634->s32OffLineDnrMemAddr
	str	r0, [r2, #1604]	@ s32Ret, _303->stSynExtraData.s32DnrEnable
	add	r3, r3, #75776	@ tmp1046, tmp1044,
	str	r1, [r3, #884]	@ D.39373, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	r2, [r2, #240]	@ D.39373, _634->s32OffLineDNRMemSize
	str	r2, [r3, #888]	@ D.39373, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L426+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L368	@
.L420:
	ldr	r9, [sp, #28]	@ D.39372, %sfp
	ldr	r4, [sp, #32]	@ tmp1068, %sfp
	b	.L370	@
.L419:
	bl	vfmw_dprint_nothing	@
	ldr	r2, .L426+20	@ tmp895,
	movw	r3, #11160	@ tmp897,
	movt	r3, 1	@ tmp897,
	ldr	r0, [sp, #128]	@ InstID, %sfp
	mla	r3, r3, r0, r2	@ tmp898, tmp897, InstID, tmp895
	ldr	ip, [r8, r0, asl #2]	@ pstInst, s_pFspInst
	add	r2, ip, #32768	@ tmp894, pstInst,
	add	r3, r3, #75776	@ tmp900, tmp898,
	ldrsb	r1, [ip, #10]	@ pstInst_338->s32DecFsNum, pstInst_338->s32DecFsNum
	ldr	lr, [r2, #1872]	@ s32ImgSize, pstInst_338->ImgSlotLen
	ldr	r7, [r3, #884]	@ s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	cmp	r1, #0	@ pstInst_338->s32DecFsNum,
	ldr	r10, [r3, #888]	@ s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	add	r10, r7, r10	@ s32DnrEndAddr, s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	ble	.L370	@,
	add	r1, ip, #27648	@ ivtmp.358, pstInst,
	str	r4, [sp, #28]	@ tmp1068, %sfp
	mov	r2, r5	@ i, tmp748
	add	r1, r1, #160	@ ivtmp.358, ivtmp.358,
	mov	r4, r0	@ InstID, InstID
	b	.L374	@
.L423:
	ldr	r0, [r6, r4, asl #2]	@ D.39376, s_pstVfmwChan
	add	r0, r0, r2, lsl #4	@ tmp921, D.39376, i,
.L408:
	add	r5, r0, #216064	@ tmp954, tmp952,
	add	r0, r0, #212992	@ tmp964, tmp952,
	str	fp, [r5, #360]	@ tmp1078,
	str	r3, [r5, #364]	@ s32FrameStartAddr,
	ldr	r3, [r0, #3444]	@ MEM[(struct VFMW_CHAN_S *)_607 + 216436B],
	str	lr, [r0, #3440]	@ s32ImgSize,
	add	r3, r3, #1	@ D.39373, MEM[(struct VFMW_CHAN_S *)_607 + 216436B],
	str	r3, [r0, #3444]	@ D.39373,
.L372:
	ldrsb	r3, [ip, #10]	@ D.39373, pstInst_338->s32DecFsNum
	add	r2, r2, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.358, ivtmp.358,
	cmp	r2, r3	@ i, D.39373
	bge	.L422	@,
.L374:
	ldr	r3, [r1]	@ s32FrameStartAddr, MEM[base: _95, offset: 0B]
	cmp	r10, r3	@ s32DnrEndAddr, s32FrameStartAddr
	add	r5, lr, r3	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r0, #1	@ tmp916,
	movle	r0, #0	@ tmp916,
	cmp	r7, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r0, #0	@ tmp916,
	cmp	r0, #0	@ tmp916,
	bne	.L423	@,
	cmp	r7, r5	@ s32DnrStartAddr, s32FrameEndAddr
	ldr	r0, [r6, r4, asl #2]	@ D.39376, s_pstVfmwChan
	movge	r5, #0	@ tmp947,
	movlt	r5, #1	@ tmp947,
	cmp	r7, r3	@ s32DnrStartAddr, s32FrameStartAddr
	add	r0, r0, r2, lsl #4	@ tmp952, D.39376, i,
	movle	r5, #0	@ tmp947,
	cmp	r5, #0	@ tmp947,
	bne	.L408	@,
	add	r8, r0, #216064	@ tmp977, tmp975,
	add	r0, r0, #212992	@ tmp987, tmp975,
	str	r5, [r8, #360]	@ tmp947, _358->stFrameArray[i_481].eFrameState
	str	r3, [r8, #364]	@ s32FrameStartAddr, _358->stFrameArray[i_481].s32FrameAddr
	str	lr, [r0, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_616 + 216432B]
	str	r5, [r0, #3444]	@ tmp947, MEM[(struct VFMW_CHAN_S *)_616 + 216436B]
	b	.L372	@
.L418:
	bl	vfmw_dprint_nothing	@
	ldr	r10, .L426+20	@ tmp1075,
	movw	r3, #11160	@ tmp753,
	movt	r3, 1	@ tmp753,
	ldr	r2, [sp, #128]	@ InstID, %sfp
	ldr	r7, [r8, r2, asl #2]	@ pstInst, s_pFspInst
	mov	r8, r2	@ InstID, InstID
	mla	r3, r3, r8, r10	@ tmp754, tmp753, InstID, tmp1075
	ldr	r2, [r6, r2, asl #2]	@ D.39376, s_pstVfmwChan
	add	r1, r7, #32768	@ tmp765, pstInst,
	add	r3, r3, #75776	@ tmp756, tmp754,
	ldr	lr, [r3, #884]	@ s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	r3, [r3, #888]	@ s32DnrSize, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	str	lr, [r2, #236]	@ s32DnrStartAddr, _313->s32OffLineDnrMemAddr
	add	fp, lr, r3	@ s32DnrEndAddr, s32DnrStartAddr, s32DnrSize
	str	r3, [r2, #240]	@ s32DnrSize, _313->s32OffLineDNRMemSize
	ldrsb	r3, [r7, #10]	@ pstInst_310->s32DecFsNum, pstInst_310->s32DecFsNum
	ldr	r5, [r1, #1872]	@ s32ImgSize, pstInst_310->ImgSlotLen
	cmp	r3, #0	@ pstInst_310->s32DecFsNum,
	ble	.L359	@,
	add	r1, r7, #27648	@ ivtmp.353, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.353, ivtmp.353,
	str	r9, [sp, #28]	@ D.39372, %sfp
	str	r4, [sp, #32]	@ tmp1068, %sfp
	b	.L364	@
.L425:
	ldr	r0, [r6, r8, asl #2]	@ D.39376, s_pstVfmwChan
	mov	r9, #2	@ tmp1316,
	add	r0, r0, r2, lsl #4	@ tmp779, D.39376, i,
	add	ip, r0, #216064	@ tmp781, tmp779,
	add	r0, r0, #212992	@ tmp791, tmp779,
	str	r3, [ip, #364]	@ s32FrameStartAddr, _322->stFrameArray[i_480].s32FrameAddr
	mov	r3, #0	@ tmp1317,
	str	r9, [ip, #360]	@ tmp1316, _322->stFrameArray[i_480].eFrameState
	str	r5, [r0, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_574 + 216432B]
	str	r3, [r0, #3444]	@ tmp1317, MEM[(struct VFMW_CHAN_S *)_574 + 216436B]
.L361:
	ldrsb	r3, [r7, #10]	@ D.39373, pstInst_310->s32DecFsNum
	add	r2, r2, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.353, ivtmp.353,
	cmp	r2, r3	@ i, D.39373
	bge	.L424	@,
.L364:
	ldr	r3, [r1]	@ s32FrameStartAddr, MEM[base: _535, offset: 0B]
	cmp	fp, r3	@ s32DnrEndAddr, s32FrameStartAddr
	add	r0, r5, r3	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	ip, #1	@ tmp774,
	movle	ip, #0	@ tmp774,
	cmp	lr, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	ip, #0	@ tmp774,
	cmp	ip, #0	@ tmp774,
	bne	.L425	@,
	cmp	fp, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r9, #1	@ tmp801,
	movlt	r9, #0	@ tmp801,
	cmp	lr, r0	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r9, #0	@ tmp801,
	cmp	r9, #0	@ tmp801,
	beq	.L362	@,
	ldr	r0, [r6, r8, asl #2]	@ D.39376, s_pstVfmwChan
	mov	r4, #2	@ tmp1318,
	add	r0, r0, r2, lsl #4	@ tmp806, D.39376, i,
	add	r9, r0, #216064	@ tmp808, tmp806,
	add	r0, r0, #212992	@ tmp818, tmp806,
	str	r4, [r9, #360]	@ tmp1318, _326->stFrameArray[i_480].eFrameState
	str	r3, [r9, #364]	@ s32FrameStartAddr, _326->stFrameArray[i_480].s32FrameAddr
	str	r5, [r0, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_580 + 216432B]
	str	ip, [r0, #3444]	@ tmp774, MEM[(struct VFMW_CHAN_S *)_580 + 216436B]
	b	.L361	@
.L362:
	cmp	fp, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r0, #0	@ tmp828,
	movlt	r0, #1	@ tmp828,
	cmp	lr, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r0, #0	@ tmp828,
	cmp	r0, #0	@ tmp828,
	beq	.L363	@,
	ldr	r0, [r6, r8, asl #2]	@ D.39376, s_pstVfmwChan
	mov	r4, #2	@ tmp1319,
	add	r0, r0, r2, lsl #4	@ tmp833, D.39376, i,
	add	ip, r0, #216064	@ tmp835, tmp833,
	add	r0, r0, #212992	@ tmp845, tmp833,
	str	r4, [ip, #360]	@ tmp1319, _330->stFrameArray[i_480].eFrameState
	str	r3, [ip, #364]	@ s32FrameStartAddr, _330->stFrameArray[i_480].s32FrameAddr
	str	r5, [r0, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_586 + 216432B]
	str	r9, [r0, #3444]	@ tmp801, MEM[(struct VFMW_CHAN_S *)_586 + 216436B]
	b	.L361	@
.L424:
	ldr	r9, [sp, #28]	@ D.39372, %sfp
	ldr	r4, [sp, #32]	@ tmp1068, %sfp
.L359:
	mov	r1, #2	@,
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	bne	.L383	@,
.L407:
	ldr	r0, .L426+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L330	@
.L363:
	ldr	ip, [r6, r8, asl #2]	@ D.39376, s_pstVfmwChan
	add	ip, ip, r2, lsl #4	@ tmp853, D.39376, i,
	add	r9, ip, #216064	@ tmp855, tmp853,
	add	ip, ip, #212992	@ tmp867, tmp853,
	str	r0, [r9, #360]	@ tmp828, _331->stFrameArray[i_480].eFrameState
	str	r3, [r9, #364]	@ s32FrameStartAddr, _332->stFrameArray[i_480].s32FrameAddr
	str	r5, [ip, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_592 + 216432B]
	str	r0, [ip, #3444]	@ tmp828, MEM[(struct VFMW_CHAN_S *)_592 + 216436B]
	b	.L361	@
.L377:
	bl	vfmw_dprint_nothing	@
	b	.L407	@
.L427:
	.align	2
.L426:
	.word	.LANCHOR0
	.word	CapItem
	.word	g_vdm_hal_fun_ptr
	.word	s_pstVfmwChan
	.word	g_DSDLock
	.word	s_DnrChan
	.fnend
	.size	FSP_PartitionFsMemory, .-FSP_PartitionFsMemory
	.align	2
	.global	FSP_IsFsLeak
	.type	FSP_IsFsLeak, %function
FSP_IsFsLeak:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L440	@ tmp128,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L438	@,
	ldrsb	r4, [r3, #10]	@ TotalFsNum, pstInst_6->s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L431	@,
	add	r3, r3, #27648	@ ivtmp.474, pstInst,
	mov	r2, #0	@ i,
	add	r3, r3, #148	@ ivtmp.474, ivtmp.474,
.L434:
	ldrsb	r1, [r3]	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	cmp	r1, #0	@ MEM[base: _33, offset: 0B],
	bne	.L432	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _33, offset: 2B], MEM[base: _33, offset: 2B]
	cmp	r1, #0	@ MEM[base: _33, offset: 2B],
	beq	.L433	@,
.L432:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.474, ivtmp.474,
	cmp	r4, r2	@ TotalFsNum, i
	bne	.L434	@,
.L431:
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
	add	r3, r2, r3	@ D.39393, RefNum, ReadNum
	add	r3, r3, r1	@ D.39393, D.39393, NewNum
	add	r3, r3, #2	@ D.39393, D.39393,
	cmp	r4, r3	@ TotalFsNum, D.39393
	bgt	.L439	@,
.L435:
	mov	r0, #0	@ D.39391,
.L430:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L433:
	cmp	r4, r2	@ TotalFsNum, i
	bgt	.L435	@,
	b	.L431	@
.L439:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.39391,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L438:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39391,
	b	.L430	@
.L441:
	.align	2
.L440:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ InstID, InstID
	bhi	.L445	@,
	ldr	r3, .L468	@ tmp137,
	ldr	r4, [r3, r0, asl #2]	@ D.39410, s_pFspInst
	cmp	r4, #0	@ D.39410,
	beq	.L445	@,
	ldr	r2, [r3, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L449	@,
	ldr	r6, [r3, #52]	@ D.39417, g_FspFrameIntf.IsFrameAvalible
	cmp	r6, #0	@ D.39417,
	beq	.L466	@,
	blx	r6	@ D.39417
	cmp	r0, #0	@,
	bne	.L467	@,
.L449:
	ldrb	ip, [r4, #10]	@ zero_extendqisi2	@ D.39412, _9->s32DecFsNum
	cmp	ip, #0	@ D.39412,
	beq	.L457	@,
	sxtb	ip, ip	@ D.39415, D.39412
	cmp	ip, #0	@ D.39415,
	ble	.L450	@,
	ldr	r1, .L468+4	@ tmp141,
	add	r3, r4, #27648	@ ivtmp.482, D.39410,
	add	r3, r3, #148	@ ivtmp.482, ivtmp.482,
	mov	r2, #0	@ i,
	ldr	r0, [r1, r5, asl #2]	@ D.39413, s_pstVfmwChan
	ldr	lr, [r0, #1580]	@ D.39407, _13->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L454	@
.L451:
	ldrsb	r1, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	cmp	r1, #0	@ MEM[base: _39, offset: 0B],
	bne	.L452	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _39, offset: 2B], MEM[base: _39, offset: 2B]
	cmp	r1, #0	@ MEM[base: _39, offset: 2B],
	beq	.L453	@,
.L452:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.482, ivtmp.482,
	cmp	r2, ip	@ i, D.39415
	beq	.L450	@,
.L454:
	cmp	lr, #1	@ D.39407,
	bne	.L451	@,
	mov	r1, r2, asl #4	@ D.39411, i,
	add	r1, r1, #216064	@ D.39411, D.39411,
	add	r1, r1, #360	@ D.39411, D.39411,
	ldr	r1, [r0, r1]	@ MEM[base: _37, offset: 0B], MEM[base: _37, offset: 0B]
	cmp	r1, #0	@ MEM[base: _37, offset: 0B],
	beq	.L451	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.482, ivtmp.482,
	cmp	r2, ip	@ i, D.39415
	bne	.L454	@,
.L450:
	mov	r0, r5	@, InstID
	bl	FSP_IsFsLeak	@
	adds	r0, r0, #0	@ D.39418,,
	movne	r0, #1	@ D.39418,
	rsb	r0, r0, #0	@ D.39407, D.39418
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L453:
	cmp	ip, r2	@ D.39415, i
	ble	.L450	@,
.L457:
	mov	r0, #1	@ D.39407,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L467:
	mov	r0, #0	@ D.39407,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L466:
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ D.39407, D.39417
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L445:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39407,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L469:
	.align	2
.L468:
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
	ble	.L474	@,
	mov	r2, r0	@ pstPhyFs, pstPhyFs
	mov	r0, #0	@ LeastFsID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ LeastFsID, LeastFsID
	mvn	lr, #0	@ LeastTick,
.L473:
	ldr	ip, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_18, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	ip, lr	@ LeastTick, LeastTick
	movcc	r0, r3	@ LeastFsID, LeastFsID
	add	r3, r3, #1	@ LeastFsID, LeastFsID,
	movcc	lr, ip	@ LeastTick, LeastTick
	cmp	r3, r1	@ LeastFsID, PhyNum
	bne	.L473	@,
	ldr	pc, [sp], #4	@
.L474:
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
	cmp	r0, #3	@ InstID,
	bhi	.L480	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L480	@,
	ldr	r3, .L486	@ tmp119,
	ldr	r2, [r3, r0, asl #2]	@ D.39431, s_pFspInst
	cmp	r2, #0	@ D.39431,
	beq	.L480	@,
	mov	r3, #432	@ tmp121,
	mla	r3, r3, r1, r2	@ tmp122, tmp121, LogicFrameID, D.39431
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState,
	bxne	lr	@
	ldrb	r3, [r3, #100]	@ zero_extendqisi2	@ D.39433, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].PmvIdc
	cmp	r3, #19	@ D.39433,
	sxtabls	r3, r2, r3	@ tmp131, D.39431, D.39433
	movls	r0, #0	@ tmp132,
	strlsb	r0, [r3, #14]	@ tmp132, _10->IsPmvInUse
	mov	r0, #432	@ tmp135,
	mla	r1, r0, r1, r2	@ tmp136, tmp135, LogicFrameID, D.39431
	mov	r3, #0	@ tmp138,
	str	r3, [r1, #500]	@ tmp138, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState
	bx	lr	@
.L480:
	b	vfmw_dprint_nothing	@
.L487:
	.align	2
.L486:
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
	cmp	r0, #3	@ InstID,
	bhi	.L524	@,
	cmp	r1, #63	@ LogicFrameID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	bhi	.L490	@,
	ldr	r1, .L532	@ tmp143,
	ldr	r7, [r1, r0, asl #2]	@ D.39446, s_pFspInst
	cmp	r7, #0	@ D.39446,
	beq	.L490	@,
	mov	r5, #432	@ tmp145,
	uxtb	r8, r2	@ D.39447, IsRef
	mla	r5, r5, r4, r7	@ tmp146, tmp145, LogicFrameID, D.39446
	mov	r6, r2	@ IsRef, IsRef
	ldrsb	r3, [r5, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	strb	r8, [r5, #96]	@ D.39447, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].s32IsRef
	cmp	r3, #0	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r5, #504]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	cmp	r3, #0	@ D.39448,
	beq	.L493	@,
	ldr	lr, [r3, #44]	@ _14->u32Tick, _14->u32Tick
	ldr	ip, [r5, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	lr, ip	@ _14->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L525	@,
.L493:
	mov	r3, #432	@ tmp178,
	mla	r3, r3, r4, r7	@ tmp179, tmp178, LogicFrameID, D.39446
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.39447, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].PmvIdc
	cmp	r2, #19	@ D.39447,
	bhi	.L496	@,
	cmp	r6, #1	@ IsRef,
	beq	.L526	@,
	cmp	r6, #0	@ IsRef,
	bne	.L499	@,
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	beq	.L527	@,
.L506:
	mov	r3, #432	@ tmp216,
	mla	r3, r3, r4, r7	@ tmp217, tmp216, LogicFrameID, D.39446
	ldr	r3, [r3, #508]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.39448,
	beq	.L511	@,
	ldrsb	r2, [r3, #2]	@ _31->DispState, _31->DispState
	cmp	r2, #1	@ _31->DispState,
	moveq	r2, #0	@ tmp220,
	streqb	r2, [r3, #2]	@ tmp220, _31->DispState
.L511:
	mov	r3, #432	@ tmp245,
	mla	r4, r3, r4, r7	@ tmp246, tmp245, LogicFrameID, D.39446
	str	r6, [r4, #504]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L524:
	b	vfmw_dprint_nothing	@
.L526:
	ldr	r1, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	add	r3, r3, #496	@ tmp185, tmp179,
	cmp	r1, #1	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	beq	.L528	@,
.L498:
	mov	r3, #432	@ tmp254,
	mla	r3, r3, r4, r7	@ tmp255, tmp254, LogicFrameID, D.39446
	ldr	r2, [r3, #508]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.39448,
	beq	.L529	@,
.L505:
	mov	r3, #432	@ tmp225,
	ldr	r0, [r2, #44]	@ _52->u32Tick, _52->u32Tick
	mla	r3, r3, r4, r7	@ tmp226, tmp225, LogicFrameID, D.39446
	ldr	r1, [r3, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	r6, #1	@ IsRef,
	cmpeq	r0, r1	@, _52->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L530	@,
.L502:
	cmp	r6, #0	@ IsRef,
	beq	.L511	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L490:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L496:
	bl	vfmw_dprint_nothing	@
	cmp	r6, #0	@ IsRef,
	beq	.L506	@,
	b	.L498	@
.L525:
	ldrsb	ip, [r3]	@ D.39450, _14->IsDecRef
	cmp	r2, ip	@ IsRef, D.39450
	beq	.L494	@,
	ldr	ip, [r1, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L494	@,
	ldr	ip, [r1, #64]	@ D.39451, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r3, #12]	@ D.39449, _14->PhyAddr
	cmp	ip, #0	@ D.39451,
	beq	.L531	@,
	blx	ip	@ D.39451
	ldr	r3, [r5, #504]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
.L494:
	strb	r8, [r3]	@ D.39447, _78->IsDecRef
	b	.L493	@
.L528:
	sxtab	r2, r7, r2	@ tmp188, D.39446, D.39447
	mov	r1, #2	@ tmp195,
	strb	r6, [r2, #14]	@ IsRef, _11->IsPmvInUse
	str	r1, [r3, #4]	@ tmp195, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
.L499:
	mov	r3, #432	@ tmp250,
	mla	r3, r3, r4, r7	@ tmp251, tmp250, LogicFrameID, D.39446
	ldr	r2, [r3, #508]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.39448,
	bne	.L505	@,
	b	.L502	@
.L527:
	sxtab	r2, r7, r2	@ tmp202, D.39446, D.39447
	strb	r6, [r2, #14]	@ IsRef, _11->IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].PmvAddr
	str	r6, [r3, #500]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	b	.L506	@
.L530:
	ldrsb	r1, [r2, #2]	@ _52->DispState, _52->DispState
	cmp	r1, #1	@ _52->DispState,
	moveq	r1, #2	@ tmp236,
	streqb	r1, [r2, #2]	@ tmp236, _52->DispState
	streqb	r1, [r3, #97]	@ tmp236, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].s32DispState
	b	.L502	@
.L529:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L531:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #504]	@ D.39448, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	b	.L494	@
.L533:
	.align	2
.L532:
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
	ldr	r3, .L540	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.39458, s_pFspInst
	cmp	r3, #0	@ D.39458,
	beq	.L539	@,
	mov	r2, #432	@ tmp118,
	mla	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.39458
	ldrsb	r0, [r1, #96]	@ D.39457, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32IsRef
	bx	lr	@
.L539:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39457,
	ldmfd	sp!, {r4, pc}	@
.L541:
	.align	2
.L540:
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
	cmp	r0, #3	@ InstID,
	bhi	.L569	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L569	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L573	@ tmp134,
	ldr	r3, [r8, r0, asl #2]	@ tmp135, s_pFspInst
	cmp	r3, #0	@ tmp135,
	beq	.L544	@,
	mov	r5, r0	@ InstID, InstID
	add	r0, r8, #68	@, tmp134,
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	mov	r6, r1	@ LogicFrameID, LogicFrameID
	clz	r7, r2	@ D.39477, IsWaitDisp
	bl	OSAL_SpinLockIRQ	@
	ldr	r9, [r8, r5, asl #2]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp142,
	mov	r7, r7, lsr #5	@ D.39477, D.39477,
	mla	r3, r3, r6, r9	@ tmp143, tmp142, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp144, tmp143,
	ldrsb	r1, [r3, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	cmpeq	r4, #0	@, IsWaitDisp,
	bne	.L545	@,
	ldr	r3, [r3, #508]	@ D.39472, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.39472,
	beq	.L545	@,
	ldrsb	r2, [r2, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState,
	beq	.L545	@,
	ldr	r2, [r8, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L545	@,
	ldr	r2, [r8, #60]	@ D.39475, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r3, #12]	@ D.39473, _15->PhyAddr
	cmp	r2, #0	@ D.39475,
	beq	.L571	@,
	mov	r0, r5	@, InstID
	blx	r2	@ D.39475
.L545:
	mov	r1, #432	@ tmp164,
	cmp	r7, #0	@ D.39477,
	mla	r1, r1, r6, r9	@ tmp165, tmp164, LogicFrameID, pstInst
	movne	r0, #0	@ D.39476,
	moveq	r0, #3	@ D.39476,
	add	r3, r1, #96	@ tmp166, tmp165,
	ldrsb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	strb	r0, [r3, #1]	@ D.39476, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	bne	.L570	@,
	add	ip, r1, #504	@ tmp176, tmp165,
	ldr	r0, [ip, #4]	@ D.39472, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r0, #0	@ D.39472,
	beq	.L570	@,
	ldr	r0, [r0, #44]	@ _23->u32Tick, _23->u32Tick
	ldr	r1, [r1, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	r0, r1	@ _23->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].u32Tick
	bne	.L572	@,
	cmp	r7, #0	@ D.39477,
	strneb	r2, [r3, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	moveq	r2, #3	@ tmp208,
	ldrne	r3, [ip, #4]	@ D.39472, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	streqb	r2, [r3, #1]	@ tmp208, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	ldreq	r3, [ip, #4]	@ D.39472, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	strneb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, _26->DispState
	strne	r2, [ip, #4]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	streqb	r2, [r3, #2]	@ tmp208, _27->DispState
.L570:
	ldr	r0, .L573+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L569:
	b	vfmw_dprint_nothing	@
.L572:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L573+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L544:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L571:
	bl	vfmw_dprint_nothing	@
	b	.L545	@
.L574:
	.align	2
.L573:
	.word	.LANCHOR0
	.word	.LANCHOR0+68
	.fnend
	.size	FSP_SetDisplay, .-FSP_SetDisplay
	.align	2
	.global	FSP_ClearNotInVoQueue
	.type	FSP_ClearNotInVoQueue, %function
FSP_ClearNotInVoQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ InstID, InstID
	bhi	.L578	@,
	cmp	r1, #0	@ pstVoQue,
	mov	r7, r1	@ pstVoQue, pstVoQue
	beq	.L578	@,
	ldr	r3, .L593	@ tmp126,
	ldr	r4, [r3, r0, asl #2]	@ D.39492, s_pFspInst
	cmp	r4, #0	@ D.39492,
	beq	.L578	@,
	add	r6, r4, #27648	@ D.39491, D.39492,
	add	r4, r4, #104	@ ivtmp.515, D.39492,
	add	r6, r6, #104	@ D.39491, D.39491,
	b	.L580	@
.L579:
	add	r4, r4, #432	@ ivtmp.515, ivtmp.515,
	cmp	r4, r6	@ ivtmp.515, D.39491
	beq	.L592	@,
.L580:
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_15, offset: 176B]
	mov	r0, r5	@, InstID
	bl	FSP_SetRef	@
	mov	r1, r4	@, ivtmp.515
	mov	r0, r7	@, pstVoQue
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L579	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_15, offset: 176B]
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	add	r4, r4, #432	@ ivtmp.515, ivtmp.515,
	bl	FSP_SetDisplay	@
	cmp	r4, r6	@ ivtmp.515, D.39491
	bne	.L580	@,
.L592:
	mov	r0, #0	@ D.39489,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L578:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39489,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L594:
	.align	2
.L593:
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
	ldr	r3, .L601	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.39498, s_pFspInst
	cmp	r3, #0	@ D.39498,
	beq	.L600	@,
	mov	r2, #432	@ tmp118,
	mla	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.39498
	ldrsb	r0, [r1, #97]	@ D.39497, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32DispState
	bx	lr	@
.L600:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39497,
	ldmfd	sp!, {r4, pc}	@
.L602:
	.align	2
.L601:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L606	@,
	ldr	ip, .L616	@ tmp122,
	ldr	ip, [ip, r0, asl #2]	@ D.39504, s_pFspInst
	cmp	ip, #0	@ D.39504,
	beq	.L606	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L607	@,
	ldrsb	r0, [ip, #10]	@ D.39506, _9->s32DecFsNum
	cmp	r0, r2	@ D.39506, PhyFsID
	ble	.L610	@,
	mov	lr, #52	@ tmp125,
	mov	r0, r1	@ D.39502, ePhyFsType
	mla	r2, lr, r2, ip	@ tmp126, tmp125, PhyFsID, D.39504
	add	r2, r2, #27648	@ tmp128, tmp126,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L607:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L615	@,
.L610:
	mvn	r0, #0	@ D.39502,
	ldmfd	sp!, {r4, pc}	@
.L615:
	ldrsb	r1, [ip, #11]	@ D.39506, _9->s32DispFsNum
	cmp	r2, r1	@ PhyFsID, D.39506
	bge	.L610	@,
	mov	r1, #52	@ tmp131,
	mov	r0, #0	@ D.39502,
	mla	r2, r1, r2, ip	@ tmp132, tmp131, PhyFsID, D.39504
	add	r2, r2, #30976	@ tmp134, tmp132,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L606:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39502,
	ldmfd	sp!, {r4, pc}	@
.L617:
	.align	2
.L616:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L621	@,
	ldr	r3, .L628	@ tmp120,
	ldr	r3, [r3, r0, asl #2]	@ D.39511, s_pFspInst
	cmp	r3, #0	@ D.39511,
	beq	.L621	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L623	@,
	ldrsb	r1, [r3, #10]	@ D.39513, _8->s32DecFsNum
	cmp	r1, r2	@ D.39513, PhyFsID
	ble	.L623	@,
	mov	r1, #52	@ tmp123,
	mla	r2, r1, r2, r3	@ tmp124, tmp123, PhyFsID, D.39511
	add	r2, r2, #27648	@ tmp126, tmp124,
	ldr	r0, [r2, #156]	@ D.39509, _8->stDecFs[PhyFsID_13(D)].eStoreType
	ldmfd	sp!, {r4, pc}	@
.L621:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39509,
	ldmfd	sp!, {r4, pc}	@
.L623:
	mov	r0, #2	@ D.39509,
	ldmfd	sp!, {r4, pc}	@
.L629:
	.align	2
.L628:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	bxhi	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L642	@ tmp128,
	ldr	ip, [r6, r0, asl #2]	@ tmp129, s_pFspInst
	cmp	ip, #0	@ tmp129,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r4, r0	@ InstID, InstID
	mov	r2, #0	@,
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	bl	FSP_SetRef	@
	ldr	r2, [r6, r4, asl #2]	@ tmp131, s_pFspInst
	mov	r3, #432	@ tmp133,
	mla	r3, r3, r5, r2	@ tmp134, tmp133, LogicFrameID, tmp131
	ldrsb	r3, [r3, #97]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_5(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_5(D)].s32DispState
	cmp	r3, #3	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_12].stLogicFs[LogicFrameID_5(D)].s32DispState,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r5	@, LogicFrameID
	mov	r0, r4	@, InstID
	mov	r2, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetDisplay	@
.L643:
	.align	2
.L642:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	movls	r3, #1	@ tmp127,
	movhi	r3, #0	@ tmp127,
	bhi	.L646	@,
	ldr	r3, .L648	@ tmp128,
	ldr	r0, [r3, r0, asl #2]	@ D.39525, s_pFspInst
	cmp	r0, #0	@ D.39525,
	movne	r3, #432	@ tmp130,
	mlane	r1, r3, r1, r0	@ tmp131, tmp130, LogicFrameID, D.39525
	addne	r0, r1, #96	@ D.39522, tmp131,
	bx	lr	@
.L646:
	mov	r0, r3	@ D.39522, tmp127
	bx	lr	@
.L649:
	.align	2
.L648:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	movls	r3, #1	@ tmp126,
	movhi	r3, #0	@ tmp126,
	bhi	.L652	@,
	ldr	r3, .L654	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.39531, s_pFspInst
	cmp	r0, #0	@ D.39531,
	movne	r3, #432	@ tmp129,
	mlane	r1, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.39531
	addne	r0, r1, #104	@ D.39528, tmp130,
	bx	lr	@
.L652:
	mov	r0, r3	@ D.39528, tmp126
	bx	lr	@
.L655:
	.align	2
.L654:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	movls	r3, #1	@ tmp126,
	movhi	r3, #0	@ tmp126,
	bhi	.L658	@,
	ldr	r3, .L660	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.39537, s_pFspInst
	cmp	r0, #0	@ D.39537,
	movne	r3, #432	@ tmp129,
	mlane	r0, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.39537
	ldrne	r0, [r0, #508]	@ D.39534, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	bx	lr	@
.L658:
	mov	r0, r3	@ D.39534, tmp126
	bx	lr	@
.L661:
	.align	2
.L660:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	movls	r3, #1	@ tmp126,
	movhi	r3, #0	@ tmp126,
	bhi	.L664	@,
	ldr	r3, .L666	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.39543, s_pFspInst
	cmp	r0, #0	@ D.39543,
	movne	r3, #432	@ tmp129,
	mlane	r0, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.39543
	ldrne	r0, [r0, #516]	@ D.39540, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_5(D)].PmvAddr
	bx	lr	@
.L664:
	mov	r0, r3	@ D.39540, tmp126
	bx	lr	@
.L667:
	.align	2
.L666:
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
	cmp	r0, #3	@ InstID,
	bhi	.L670	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L670	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L670	@,
	ldr	r3, .L686	@ tmp129,
	ldr	ip, [r3, r0, asl #2]	@ tmp130, s_pFspInst
	cmp	ip, #0	@ tmp130,
	beq	.L670	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	ip, #0	@ tmp131,
	str	ip, [r1]	@ tmp131, *DecFsNum_10(D)
	ldr	lr, [r3, r0, asl #2]	@ tmp133, s_pFspInst
	ldrsb	lr, [lr, #10]	@ D.39561, _15->s32DecFsNum
	cmp	lr, ip	@ D.39561,
	str	lr, [r1]	@ D.39561, *DecFsNum_10(D)
	ldr	r3, [r3, r0, asl #2]	@ tmp136, s_pFspInst
	add	r3, r3, #27648	@ pstDecFs, tmp136,
	add	r3, r3, #148	@ pstDecFs, pstDecFs,
	ldrle	pc, [sp], #4	@
	sub	r2, r2, #4	@ ivtmp.540, DecFsAddrTab,
	mov	r0, ip	@ i, tmp131
.L673:
	ldr	ip, [r3, #12]	@ D.39561, MEM[base: _38, offset: 12B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.538, ivtmp.538,
	str	ip, [r2, #4]!	@ D.39561, MEM[base: _37, offset: 0B]
	ldr	ip, [r1]	@ *DecFsNum_10(D), *DecFsNum_10(D)
	cmp	ip, r0	@ *DecFsNum_10(D), i
	bgt	.L673	@,
	ldr	pc, [sp], #4	@
.L670:
	b	vfmw_dprint_nothing	@
.L687:
	.align	2
.L686:
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
	cmp	r0, #3	@ InstID,
	bhi	.L690	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L690	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L690	@,
	ldr	r3, .L705	@ tmp128,
	ldr	ip, [r3, r0, asl #2]	@ D.39583, s_pFspInst
	cmp	ip, #0	@ D.39583,
	beq	.L690	@,
	ldrsb	r3, [ip, #13]	@ _12->s32PmvNum, _12->s32PmvNum
	str	r3, [r1]	@ _12->s32PmvNum, *PmvNum_10(D)
	ldrsb	r3, [ip, #13]	@ _12->s32PmvNum, _12->s32PmvNum
	cmp	r3, #0	@ _12->s32PmvNum,
	bxle	lr	@
	add	r1, ip, #34304	@ ivtmp.550, D.39583,
	sub	r2, r2, #4	@ ivtmp.559, PmvAddrTab,
	add	r1, r1, #252	@ ivtmp.550, ivtmp.550,
	mov	r3, #0	@ i,
.L693:
	ldr	r0, [r1, #4]!	@ D.39585, MEM[base: _32, offset: 0B]
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ D.39585, MEM[base: _33, offset: 0B]
	ldrsb	r0, [ip, #13]	@ D.39585, _12->s32PmvNum
	cmp	r0, r3	@ D.39585, i
	bgt	.L693	@,
	bx	lr	@
.L690:
	b	vfmw_dprint_nothing	@
.L706:
	.align	2
.L705:
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
	ldr	r3, .L711	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.39589, s_pFspInst
	cmp	r3, #0	@ D.39589,
	beq	.L710	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #24576	@ tmp126, D.39589,
	ldrb	lr, [r3, #10]	@ zero_extendqisi2	@ D.39590, _4->s32DecFsNum
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	mov	r0, r1	@ tmp136, pFspInstInfo
	add	r1, r3, #27648	@, D.39589,
	add	r1, r1, #148	@,,
	mov	r2, #3328	@,
	strb	lr, [ip, #1]	@ D.39590, pFspInstInfo_7(D)->s32DecFsNum
	ldr	lr, [r4, #3284]	@ _4->stDecFs[1].PhyAddr, _4->stDecFs[1].PhyAddr
	ldr	r4, [r4, #3232]	@ _4->stDecFs[0].PhyAddr, _4->stDecFs[0].PhyAddr
	rsb	lr, r4, lr	@ D.39591, _4->stDecFs[0].PhyAddr, _4->stDecFs[1].PhyAddr
	str	lr, [ip, #3336]	@ D.39591, pFspInstInfo_7(D)->s32DecFsSize
	ldrb	lr, [r3, #11]	@ zero_extendqisi2	@ D.39590, _4->s32DispFsNum
	strb	lr, [ip, #2]	@ D.39590, pFspInstInfo_7(D)->s32DispFsNum
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ D.39590, _4->s32TfFsNum
	strb	lr, [ip, #3]	@ D.39590, pFspInstInfo_7(D)->s32TfFsNum
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.39590, _4->s32InstID
	strb	lr, [ip, #4]	@ D.39590, pFspInstInfo_7(D)->s32InstID
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ D.39590, _4->s32PmvNum
	strb	r3, [r0], #8	@ D.39590, pFspInstInfo_7(D)->s32PmvNum
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L710:
	b	vfmw_dprint_nothing	@
.L712:
	.align	2
.L711:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L716	@,
	ldr	r3, .L728	@ tmp121,
	ldr	r3, [r3, r0, asl #2]	@ D.39608, s_pFspInst
	cmp	r3, #0	@ D.39608,
	beq	.L716	@,
	mov	r0, #0	@ i,
.L718:
	ldr	r2, [r3, #504]	@ D.39609, MEM[base: _19, offset: 504B]
	add	r3, r3, #432	@ ivtmp.574, ivtmp.574,
	cmp	r2, #0	@ D.39609,
	beq	.L717	@,
	ldr	r2, [r2, #12]	@ _11->PhyAddr, _11->PhyAddr
	cmp	r2, r1	@ _11->PhyAddr, PhyAddr
	ldmeqfd	sp!, {r4, pc}	@
.L717:
	add	r0, r0, #1	@ i, i,
	cmp	r0, #64	@ i,
	bne	.L718	@,
	mvn	r0, #0	@ D.39606,
	ldmfd	sp!, {r4, pc}	@
.L716:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39606,
	ldmfd	sp!, {r4, pc}	@
.L729:
	.align	2
.L728:
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
	cmp	r0, #3	@ InstID,
	bhi	.L764	@,
	ldr	r3, .L766	@ tmp133,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r3, r0, asl #2]	@ D.39623, s_pFspInst
	cmp	r6, #0	@ D.39623,
	beq	.L732	@,
	bl	vfmw_dprint_nothing	@
	mov	r5, #1	@ ivtmp.584,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ ivtmp.583,
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
	b	.L733	@
.L735:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.584,
	bgt	.L765	@,
.L736:
	add	r4, r4, #1	@ ivtmp.583, ivtmp.583,
	add	r5, r5, #1	@ ivtmp.584, ivtmp.584,
.L733:
	cmp	r4, #0	@ ivtmp.583,
	beq	.L734	@,
	tst	r4, #7	@ ivtmp.583,
	bne	.L735	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #63	@ ivtmp.584,
	ble	.L736	@,
.L765:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ _18->s32DecFsNum, _18->s32DecFsNum
	cmp	r3, #0	@ _18->s32DecFsNum,
	ble	.L737	@,
	mov	r4, #0	@ i,
.L738:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #10]	@ D.39624, _18->s32DecFsNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.39624, i
	ble	.L737	@,
	cmp	r4, #0	@ i,
	beq	.L738	@,
	tst	r4, #7	@ i,
	bne	.L738	@,
	bl	vfmw_dprint_nothing	@
	b	.L738	@
.L732:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L737:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #11]	@ _18->s32DispFsNum, _18->s32DispFsNum
	cmp	r3, #0	@ _18->s32DispFsNum,
	ble	.L739	@,
	mov	r4, #0	@ i,
.L740:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #11]	@ D.39624, _18->s32DispFsNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.39624, i
	ble	.L739	@,
	cmp	r4, #0	@ i,
	beq	.L740	@,
	tst	r4, #7	@ i,
	bne	.L740	@,
	bl	vfmw_dprint_nothing	@
	b	.L740	@
.L739:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #13]	@ _18->s32PmvNum, _18->s32PmvNum
	cmp	r3, #0	@ _18->s32PmvNum,
	ble	.L732	@,
	mov	r4, #0	@ i,
.L744:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r6, #13]	@ D.39624, _18->s32PmvNum
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@ D.39624, i
	ble	.L732	@,
	cmp	r4, #0	@ i,
	beq	.L744	@,
	tst	r4, #15	@ i,
	bne	.L744	@,
	bl	vfmw_dprint_nothing	@
	b	.L744	@
.L764:
	b	vfmw_dprint_nothing	@
.L734:
	bl	vfmw_dprint_nothing	@
	b	.L736	@
.L767:
	.align	2
.L766:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ InstID, InstID
	.pad #40
	sub	sp, sp, #40	@,,
	bhi	.L840	@,
	ldr	r8, .L852	@ tmp613,
	ldr	r3, [r8, r0, asl #2]	@ tmp279, s_pFspInst
	cmp	r3, #0	@ tmp279,
	beq	.L840	@,
	ldr	r6, .L852+4	@ tmp614,
	add	r0, r8, #68	@, tmp613,
	mov	r9, r1	@ NeedPhyFs, NeedPhyFs
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r8, r7, asl #2]	@ pstInst, s_pFspInst
	mov	r4, #0	@ i,
	ldr	r1, [r6, r7, asl #2]	@ D.39698, s_pstVfmwChan
	mov	r3, r5	@ ivtmp.640, pstInst
	ldr	ip, [r1, #1580]	@ D.39689, _282->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L775	@
.L772:
	ldrsb	r2, [r3, #96]	@ MEM[base: _317, offset: 96B], MEM[base: _317, offset: 96B]
	cmp	r2, #0	@ MEM[base: _317, offset: 96B],
	bne	.L773	@,
	ldrsb	r2, [r3, #97]	@ MEM[base: _317, offset: 97B], MEM[base: _317, offset: 97B]
	cmp	r2, #0	@ MEM[base: _317, offset: 97B],
	beq	.L845	@,
.L773:
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.640, ivtmp.640,
	cmp	r4, #64	@ i,
	beq	.L776	@,
.L775:
	cmp	ip, #1	@ D.39689,
	bne	.L772	@,
	mov	r2, r4, asl #4	@ D.39693, i,
	add	r2, r2, #216064	@ D.39693, D.39693,
	add	r2, r2, #360	@ D.39693, D.39693,
	ldr	r2, [r1, r2]	@ MEM[base: _321, offset: 0B], MEM[base: _321, offset: 0B]
	cmp	r2, #0	@ MEM[base: _321, offset: 0B],
	beq	.L772	@,
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.640, ivtmp.640,
	cmp	r4, #64	@ i,
	bne	.L775	@,
.L776:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L852+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39689,
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L845:
	mov	r10, #432	@ tmp291,
	mul	r10, r10, r4	@ tmp290, tmp291, i
	add	r3, r5, r10	@ tmp295, pstInst, tmp290
	add	r10, r10, #96	@ tmp292, tmp290,
	add	ip, r3, #96	@ tmp296, tmp295,
	adds	r10, r5, r10	@ pstLogicFs, pstInst, tmp292
	strb	r4, [ip, #3]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32LogicFsID
	strb	r2, [ip, #2]	@ MEM[base: _317, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].IsDummyFs
	beq	.L776	@,
	add	r0, r3, #504	@ tmp309, tmp295,
	add	lr, r3, #512	@ tmp319, tmp295,
	cmp	r9, #0	@ NeedPhyFs,
	str	r2, [r3, #504]	@ MEM[base: _317, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	str	r2, [r0, #4]	@ MEM[base: _317, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	str	r2, [r3, #512]	@ MEM[base: _317, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstTfOutFs
	str	r2, [lr, #4]	@ MEM[base: _317, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	beq	.L777	@,
	ldrsb	ip, [r5, #10]	@ D.39695, pstInst_28->s32DecFsNum
	cmp	ip, #0	@ D.39695,
	addgt	r3, r5, #27648	@ ivtmp.626, pstInst,
	ldrgt	lr, [r1, #1580]	@ D.39689, _282->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	addgt	r3, r3, #148	@ ivtmp.626, ivtmp.626,
	bgt	.L783	@,
	b	.L838	@
.L781:
	ldrsb	r0, [r3]	@ MEM[base: _308, offset: 0B], MEM[base: _308, offset: 0B]
	cmp	r0, #0	@ MEM[base: _308, offset: 0B],
	bne	.L782	@,
	ldrsb	r0, [r3, #2]	@ MEM[base: _308, offset: 2B], MEM[base: _308, offset: 2B]
	cmp	r0, #0	@ MEM[base: _308, offset: 2B],
	beq	.L846	@,
.L782:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.626, ivtmp.626,
	cmp	r2, ip	@ i, D.39695
	beq	.L847	@,
.L783:
	cmp	lr, #1	@ D.39689,
	bne	.L781	@,
	mov	r0, r2, asl #4	@ D.39693, i,
	add	r0, r0, #216064	@ D.39693, D.39693,
	add	r0, r0, #360	@ D.39693, D.39693,
	ldr	r0, [r1, r0]	@ MEM[base: _312, offset: 0B], MEM[base: _312, offset: 0B]
	cmp	r0, #0	@ MEM[base: _312, offset: 0B],
	beq	.L781	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.626, ivtmp.626,
	cmp	r2, ip	@ i, D.39695
	bne	.L783	@,
.L847:
	mov	r3, #432	@ tmp381,
	mla	r3, r3, r4, r5	@ tmp382, tmp381, i, pstInst
.L838:
	ldr	r9, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
.L779:
	cmp	r9, #0	@ D.39686,
	beq	.L848	@,
.L784:
	mov	r3, #432	@ tmp397,
	add	r2, r5, #34304	@ D.39686, pstInst,
	mla	r3, r3, r4, r5	@ tmp398, tmp397, i, pstInst
	add	r2, r2, #148	@ D.39686, D.39686,
	add	r0, r3, #512	@ tmp399, tmp398,
	str	r2, [r3, #512]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstTfOutFs
	ldrsb	r1, [r5, #13]	@ D.39693, pstInst_28->s32PmvNum
	cmp	r1, #0	@ D.39693,
	ble	.L792	@,
	ldrsb	r2, [r5, #14]	@ pstInst_28->IsPmvInUse, pstInst_28->IsPmvInUse
	cmp	r2, #0	@ pstInst_28->IsPmvInUse,
	addne	r2, r5, #14	@ ivtmp.609, pstInst,
	movne	r3, #0	@ i,
	bne	.L796	@,
	b	.L849	@
.L799:
	ldrsb	r0, [r2, #1]!	@ MEM[base: _9, offset: 0B], MEM[base: _9, offset: 0B]
	cmp	r0, #0	@ MEM[base: _9, offset: 0B],
	beq	.L850	@,
.L796:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.39693
	bne	.L799	@,
	add	r0, r5, #32768	@ tmp615, pstInst,
	cmp	r1, #0	@ D.39693,
	ldr	ip, [r0, #1788]	@ D.39689, pstInst_28->s32HalfPmvOffset
	ble	.L801	@,
.L797:
	add	r2, r1, #13	@ D.39693, D.39693,
	add	r3, r5, #13	@ ivtmp.599, pstInst,
	add	r2, r5, r2	@ D.39691, pstInst, D.39693
	mov	r1, #0	@ tmp617,
.L800:
	strb	r1, [r3, #1]!	@ tmp617, MEM[base: _6, offset: 0B]
	cmp	r3, r2	@ ivtmp.599, D.39691
	bne	.L800	@,
.L801:
	mov	r3, #432	@ tmp423,
	mov	r1, #0	@ tmp426,
	mla	r3, r3, r4, r5	@ tmp424, tmp423, i, pstInst
	strb	r1, [r3, #100]	@ tmp426, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvIdc
	ldr	r2, [r0, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	ip, [r3, #520]	@ D.39689, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].HalfPmvOffset
	str	r2, [r3, #516]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	bl	vfmw_dprint_nothing	@
.L792:
	ldrsb	r3, [r5, #60]	@ pstInst_28->stInstCfg.s32DispLoopEnable, pstInst_28->stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ pstInst_28->stInstCfg.s32DispLoopEnable,
	beq	.L802	@,
	ldrsb	r0, [r5, #11]	@ D.39695, pstInst_28->s32DispFsNum
	cmp	r0, #0	@ D.39695,
	ble	.L839	@,
	add	r3, r5, #30976	@ D.39686, pstInst,
	add	r3, r3, #148	@ D.39686, D.39686,
	cmp	r3, #0	@ D.39686,
	beq	.L815	@,
	rsb	ip, r3, #30976	@ D.39693, ivtmp.594,
	mov	r9, r3	@ D.39686, ivtmp.594
	add	ip, ip, #200	@ D.39693, D.39693,
	mov	r1, #0	@ i,
	b	.L806	@
.L809:
	cmp	r3, #0	@ ivtmp.594,
	mov	r9, r3	@ D.39686, ivtmp.594
	beq	.L805	@,
	mov	r9, r2	@ D.39686, D.39692
.L806:
	ldrsb	lr, [r3, #2]	@ MEM[base: _3, offset: 2B], MEM[base: _3, offset: 2B]
	add	r2, r9, ip	@ D.39693, D.39686, D.39693
	add	r1, r1, #1	@ i, i,
	add	r2, r5, r2	@ D.39692, pstInst, D.39693
	cmp	lr, #0	@ MEM[base: _3, offset: 2B],
	bne	.L808	@,
	ldrsb	lr, [r3]	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	lr, #0	@ MEM[base: _3, offset: 0B],
	bne	.L808	@,
	ldrsb	lr, [r3, #1]	@ MEM[base: _3, offset: 1B], MEM[base: _3, offset: 1B]
	cmp	lr, #0	@ MEM[base: _3, offset: 1B],
	beq	.L805	@,
.L808:
	cmp	r1, r0	@ i, D.39695
	add	r3, r3, #52	@ ivtmp.594, ivtmp.594,
	bne	.L809	@,
.L839:
	mov	r3, #432	@ tmp469,
	mla	r3, r3, r4, r5	@ tmp470, tmp469, i, pstInst
	ldr	r9, [r3, #508]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
.L804:
	cmp	r9, #0	@ D.39686,
	bne	.L807	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, InstID
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #4	@,,
	str	r9, [sp, #8]	@ D.39686, NewNum
	str	r9, [sp, #12]	@ D.39686, ReadNum
	str	r9, [sp, #4]	@ D.39686, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	ldr	r3, [sp, #12]	@ ReadNum, ReadNum
	ldr	r1, [sp, #8]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.39695, RefNum, ReadNum
	ldrsb	r2, [r5, #11]	@ D.39695, pstInst_28->s32DispFsNum
	add	r3, r3, r1	@ D.39695, D.39695, NewNum
	add	r3, r3, #2	@ D.39695, D.39695,
	cmp	r3, r2	@ D.39695, D.39695
	bge	.L810	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, InstID
	bl	FSP_PrintContext	@
.L810:
	ldr	r0, .L852+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.39689,
	b	.L834	@
.L777:
	add	r1, r5, #32768	@ tmp348, pstInst,
	add	r2, r5, #27648	@ D.39686, pstInst,
	add	r2, r2, #96	@ D.39686, D.39686,
	str	r2, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	str	r2, [r0, #4]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	mov	r0, #1	@ tmp362,
	str	r2, [r3, #512]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstTfOutFs
	ldr	r3, [r1, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	r3, [lr, #4]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ pstInst_28->s32PmvNum, pstInst_28->s32PmvNum
	strb	r0, [ip, #2]	@ tmp362, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].IsDummyFs
	sub	r3, r3, #1	@ tmp356, pstInst_28->s32PmvNum,
	strb	r3, [ip, #4]	@ tmp356, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvIdc
.L780:
	mov	r0, #432	@ tmp503,
	mov	r2, #1	@ tmp506,
	mul	r4, r0, r4	@ tmp502, tmp503, i
	mov	r1, #392	@,
	add	r3, r5, r4	@ tmp504, pstInst, tmp502
	add	r0, r4, #104	@ tmp551, tmp502,
	add	r8, r3, #96	@ tmp505, tmp504,
	add	r0, r5, r0	@, pstInst, tmp551
	ldr	lr, [r3, #508]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	strb	r2, [r3, #97]	@ tmp506, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32DispState
	strb	r2, [lr, #2]	@ tmp506, _143->DispState
	str	r2, [r3, #500]	@ tmp506, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].eLfsPmvState
	ldr	lr, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	ldr	r2, [r5, #36]	@ D.39697, pstInst_28->u32InstTick
	str	r2, [r3, #496]	@ D.39697, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].u32Tick
	str	r2, [lr, #44]	@ D.39697, _148->u32Tick
	ldr	lr, [r3, #496]	@ D.39697, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].u32Tick
	ldr	r2, [r3, #508]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	str	lr, [r2, #44]	@ D.39697, _151->u32Tick
	ldr	r2, [r5, #36]	@ pstInst_28->u32InstTick, pstInst_28->u32InstTick
	add	r2, r2, #1	@ D.39697, pstInst_28->u32InstTick,
	str	r2, [r5, #36]	@ D.39697, pstInst_28->u32InstTick
	ldr	r4, [r3, #508]	@ pstDispFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	ldr	r5, [r3, #504]	@ pstDecFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	ldr	r9, [r3, #512]	@ pstTfFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstTfOutFs
	bl	__memzero	@
	ldrsb	r3, [r8, #3]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32LogicFsID, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32LogicFsID
	str	r3, [r10, #184]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32LogicFsID, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_id
	ldr	r3, [r5, #24]	@ pstDecFs_157->FsWidth, pstDecFs_157->FsWidth
	str	r3, [r10, #152]	@ pstDecFs_157->FsWidth, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_width
	ldr	r3, [r5, #28]	@ pstDecFs_157->FsHeight, pstDecFs_157->FsHeight
	str	r3, [r10, #156]	@ pstDecFs_157->FsHeight, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_height
	ldr	r3, [r4, #20]	@ pstDispFs_158->Stride, pstDispFs_158->Stride
	str	r3, [r10, #180]	@ pstDispFs_158->Stride, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_stride
	ldr	r2, [r5, #12]	@ D.39695, pstDecFs_157->PhyAddr
	str	r2, [r10, #112]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_phy_addr
	mov	r0, r2	@, D.39695
	ldr	r3, [r5, #32]	@ pstDecFs_157->ChromOffset, pstDecFs_157->ChromOffset
	add	r3, r3, r2	@ D.39697, pstDecFs_157->ChromOffset, D.39695
	str	r3, [r10, #116]	@ D.39697, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #40]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_vir_addr
	ldr	r0, [r10, #116]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #44]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.39695, pstDispFs_158->PhyAddr
	str	r2, [r10, #96]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].top_luma_phy_addr
	ldr	r3, [r4, #32]	@ pstDispFs_158->ChromOffset, pstDispFs_158->ChromOffset
	add	r3, r2, r3	@ D.39695, D.39695, pstDispFs_158->ChromOffset
	str	r3, [r10, #100]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ pstDispFs_158->Stride, pstDispFs_158->Stride
	add	r2, r2, r1	@ D.39695, D.39695, pstDispFs_158->Stride
	str	r2, [r10, #104]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ pstDispFs_158->Stride, pstDispFs_158->Stride
	add	r3, r3, r2	@ D.39695, D.39695, pstDispFs_158->Stride
	str	r3, [r10, #108]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ D.39695, pstDispFs_158->PhyAddr
	str	r2, [r10, #128]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_2d_phy_addr
	mov	r0, r2	@, D.39695
	ldr	r3, [r4, #32]	@ pstDispFs_158->ChromOffset, pstDispFs_158->ChromOffset
	add	r3, r3, r2	@ D.39697, pstDispFs_158->ChromOffset, D.39695
	str	r3, [r10, #132]	@ D.39697, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #56]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_2d_vir_addr
	ldr	r0, [r10, #132]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #60]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_vir_addr
	ldr	r2, [r9, #12]	@ D.39695, pstTfFs_159->PhyAddr
	str	r2, [r10, #120]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_tf_phy_addr
	mov	r0, r2	@, D.39695
	ldr	r3, [r5, #32]	@ pstDecFs_157->ChromOffset, pstDecFs_157->ChromOffset
	add	r3, r3, r2	@ D.39697, pstDecFs_157->ChromOffset, D.39695
	str	r3, [r10, #124]	@ D.39697, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #48]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_tf_vir_addr
	ldr	r0, [r10, #124]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6, r7, asl #2]	@ tmp580, s_pstVfmwChan
	mov	r3, #0	@ tmp575,
	add	r2, r2, #217088	@ tmp582, tmp580,
	str	r0, [r10, #52]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_vir_addr
	ldr	r1, [r5, #48]	@ D.39695, pstDecFs_157->ImgSize
	str	r3, [r10, #384]	@ tmp575, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32IsLastFrame
	str	r3, [r10, #372]	@ tmp575, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32Is1D
	str	r1, [r10, #368]	@ D.39695, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].ImgSize
	str	r3, [r10, #376]	@ tmp575, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].is_processed_by_dnr
	str	r3, [r10, #380]	@ tmp575, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32Circumrotate
	ldr	r3, [r2, #420]	@ D.39697, _239->u32ChanTick
	ldr	r0, .L852+8	@,
	str	r3, [r10, #392]	@ D.39697, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r8, #3]	@ D.39689, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].s32LogicFsID
.L834:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L802:
	mov	r3, #432	@ tmp451,
	mla	r3, r3, r4, r5	@ tmp452, tmp451, i, pstInst
	ldr	r2, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	str	r2, [r3, #508]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
.L807:
	ldr	r3, [r8, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	ldr	r2, .L852	@ tmp487,
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L780	@,
	ldr	r3, [r2, #56]	@ D.39699, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.39699,
	beq	.L851	@,
	add	r1, sp, #12	@,,
	mov	r0, r7	@, InstID
	blx	r3	@ D.39699
	cmp	r0, #0	@,
	bne	.L812	@,
	ldr	r2, [sp, #12]	@ D.39695, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.39695,
	beq	.L812	@,
	mov	r3, #432	@ tmp494,
	mla	r3, r3, r4, r5	@ tmp495, tmp494, i, pstInst
	ldr	r1, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	str	r2, [r1, #12]	@ D.39695, _126->PhyAddr
	ldr	r2, [sp, #28]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r2, [r3, #516]	@ stInfo.stPmvInfo.PhyAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	b	.L780	@
.L850:
	mov	r2, #432	@ tmp406,
	add	ip, r3, #8640	@ tmp414, i,
	mla	r2, r2, r4, r5	@ tmp407, tmp406, i, pstInst
	cmp	r3, r1	@ i, D.39693
	add	r0, r5, #32768	@ tmp615, pstInst,
	strb	r3, [r2, #100]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvIdc
	ldr	r3, [r5, ip, asl #2]	@ tmp415, pstInst_28->PmvAddr
	str	r3, [r2, #516]	@ tmp415, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	ldr	ip, [r0, #1788]	@ D.39689, pstInst_28->s32HalfPmvOffset
	str	ip, [r2, #520]	@ D.39689, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].HalfPmvOffset
	blt	.L792	@,
	b	.L797	@
.L846:
	mov	r3, #432	@ tmp377,
	mov	r9, #52	@ tmp372,
	mla	r3, r3, r4, r5	@ tmp378, tmp377, i, pstInst
	mla	r2, r9, r2, r5	@ tmp374, tmp372, i, pstInst
	add	r9, r2, #27648	@ D.39686, tmp374,
	add	r9, r9, #148	@ D.39686, D.39686,
	str	r9, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	b	.L779	@
.L815:
	mov	r9, r3	@ D.39686, D.39686
.L805:
	mov	r3, #432	@ tmp465,
	mla	r3, r3, r4, r5	@ tmp466, tmp465, i, pstInst
	str	r9, [r3, #508]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDispOutFs
	b	.L804	@
.L851:
	bl	vfmw_dprint_nothing	@
.L812:
	ldr	r0, .L852+8	@,
	bl	OSAL_SpinUnLockIRQ	@
.L840:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39689,
	b	.L834	@
.L848:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r5, #10]	@ pstInst_28->s32DecFsNum, pstInst_28->s32DecFsNum
	cmp	r3, #0	@ pstInst_28->s32DecFsNum,
	ble	.L789	@,
.L788:
	bl	vfmw_dprint_nothing	@
	ldrsb	r3, [r5, #10]	@ D.39695, pstInst_28->s32DecFsNum
	add	r9, r9, #1	@ i, i,
	cmp	r3, r9	@ D.39695, i
	bgt	.L788	@,
.L789:
	bl	vfmw_dprint_nothing	@
	ldrsb	lr, [r5, #10]	@ D.39695, pstInst_28->s32DecFsNum
	add	r2, r5, #27648	@ pstPhyFs, pstInst,
	cmp	lr, #0	@ D.39695,
	add	r2, r2, #148	@ pstPhyFs, pstPhyFs,
	movgt	ip, #0	@ i,
	mvngt	r0, #0	@ LeastTick,
	movgt	r3, ip	@ i, i
	ble	.L787	@,
.L786:
	ldr	r1, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_301, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	r1, r0	@ LeastTick, LeastTick
	movcc	ip, r3	@ i, i
	add	r3, r3, #1	@ i, i,
	movcc	r0, r1	@ LeastTick, LeastTick
	cmp	lr, r3	@ D.39695, i
	bne	.L786	@,
	mov	r2, #52	@ tmp388,
	mla	r2, r2, ip, r5	@ tmp390, tmp388, i, pstInst
	add	r2, r2, #27648	@ D.39686, tmp390,
	add	r2, r2, #148	@ D.39686, D.39686,
.L787:
	mov	r3, #432	@ tmp393,
	mla	r3, r3, r4, r5	@ tmp394, tmp393, i, pstInst
	str	r2, [r3, #504]	@ D.39686, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].pstDecodeFs
	b	.L784	@
.L849:
	add	r1, r5, #32768	@ tmp603, pstInst,
	strb	r2, [r3, #100]	@ pstInst_28->IsPmvInUse, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvIdc
	ldr	r2, [r1, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	r2, [r0, #4]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].PmvAddr
	ldr	r2, [r1, #1788]	@ pstInst_28->s32HalfPmvOffset, pstInst_28->s32HalfPmvOffset
	str	r2, [r3, #520]	@ pstInst_28->s32HalfPmvOffset, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_4].HalfPmvOffset
	b	.L792	@
.L853:
	.align	2
.L852:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LANCHOR0+68
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
	ldr	r3, .L862	@ tmp119,
	ldr	ip, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	add	r3, ip, #27136	@ tmp124, pstInst,
	ldrsb	r3, [r3, #177]	@ pstInst_5->stLogicFs[63].s32DispState, pstInst_5->stLogicFs[63].s32DispState
	cmp	r3, #0	@ pstInst_5->stLogicFs[63].s32DispState,
	beq	.L859	@,
	add	r2, ip, #26880	@ ivtmp.652, pstInst,
	mov	r3, #62	@ ret_id,
	add	r2, r2, #1	@ ivtmp.652, ivtmp.652,
	b	.L858	@
.L856:
	subs	r3, r3, #1	@ ret_id, ret_id,
	bcc	.L861	@,
.L858:
	ldrsb	r1, [r2]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	sub	r2, r2, #432	@ ivtmp.652, ivtmp.652,
	cmp	r1, #0	@ MEM[base: _19, offset: 0B],
	bne	.L856	@,
.L857:
	mov	r2, #432	@ tmp128,
	mov	r0, r3	@, ret_id
	mla	r3, r2, r3, ip	@ tmp129, tmp128, ret_id, pstInst
	mov	r2, #0	@ tmp131,
	str	r2, [r3, #504]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDecodeFs
	str	r2, [r3, #508]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDispOutFs
	bx	lr	@
.L861:
	mov	r3, #0	@ ret_id,
	b	.L857	@
.L859:
	mov	r3, #63	@ ret_id,
	b	.L857	@
.L863:
	.align	2
.L862:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L867	@,
	ldr	r3, .L872	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ D.39718, s_pFspInst
	cmp	r3, #0	@ D.39718,
	beq	.L867	@,
	ldr	r0, [r3, #4]	@ _7->eFspInstState, _7->eFspInstState
	subs	r0, r0, #1	@ D.39716, _7->eFspInstState,
	mvnne	r0, #0	@ D.39716,
	ldmfd	sp!, {r4, pc}	@
.L867:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39716,
	ldmfd	sp!, {r4, pc}	@
.L873:
	.align	2
.L872:
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
	.size	s_pFspInst, 16
s_pFspInst:
	.space	16
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 32
s_FspVoQue:
	.space	32
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
