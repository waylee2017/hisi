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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(fsp) -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
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
	add	r0, sp, #136	@ tmp629,,
	mov	r1, #416	@,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #0	@ InstID,
	bne	.L4	@,
	ldr	r3, .L38	@ tmp330,
	ldr	r9, [r3]	@ D.32189, s_pFspInst
	cmp	r9, #0	@ D.32189,
	beq	.L4	@,
	ldr	r2, .L38+4	@ tmp336,
	mov	r4, #4	@ D.32194,
	ldrsb	lr, [r9, #60]	@ D.32194, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispLoopEnable
	ldrsb	r3, [r9, #65]	@ D.32188, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedDecFsNum
	ldr	ip, [r2, #36]	@ D.32192, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.32192,
	smlabb	r4, r4, lr, r3	@ MinFsNum, D.32194, D.32194, D.32188
	beq	.L4	@,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight
	mov	lr, #64	@ tmp339,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth
	add	r1, sp, #136	@ tmp630,,
	str	r5, [sp, #12]	@ InstID,
	mov	r8, #40	@ tmp343,
	str	r1, [sp, #16]	@ tmp630,
	mov	r0, r6	@, MemPhyAddr
	str	lr, [sp, #20]	@ tmp339,
	mov	r1, r7	@, MemSize
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32UserDec
	stmib	sp, {r8, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.32192
	cmp	r0, #0	@ Ret
	bne	.L4	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _19->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L4	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispLoopEnable
	strb	r0, [r9, #11]	@ Ret, _19->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispLoopEnable,
	strb	r0, [r9, #12]	@ Ret, _19->s32TfFsNum
	beq	.L33	@,
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.32197, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedDecFsNum
	add	r2, r9, #32768	@ tmp604, D.32189,
	str	r2, [sp, #92]	@ tmp604, %sfp
	strb	r3, [r9, #10]	@ D.32197, _19->s32DecFsNum
.L7:
	sxtb	r4, r3	@ D.32191, D.32197
	ldr	r3, [sp, #136]	@ D.32188, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.32188, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.160,,
	str	r9, [sp, #128]	@ D.32189, %sfp
	str	r3, [sp, #72]	@ D.32188, %sfp
	ldr	r3, [sp, #92]	@ tmp604, %sfp
	str	r2, [sp, #80]	@ D.32188, %sfp
	ldr	r0, [r1, #-408]!	@ D.32191, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.32188, _19->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.32191, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.32188, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.160, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.32191, %sfp
	ldr	r2, [sp, #404]	@ D.32191, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.32188, %sfp
	ldr	r3, [r9, #76]	@ D.32188, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.32191, %sfp
	ldr	r2, [sp, #408]	@ D.32191, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.32188, %sfp
	mov	r3, r9	@ ivtmp.158, D.32189
	str	r0, [sp, #120]	@ D.32191, %sfp
	str	r2, [sp, #116]	@ D.32191, %sfp
	str	r9, [sp, #132]	@ ivtmp.122, %sfp
	str	r4, [sp, #104]	@ D.32191, %sfp
	b	.L11	@
.L34:
	ldr	r2, [sp, #84]	@ D.32187, %sfp
	str	r1, [r2]	@ i, MEM[base: _293, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	ldr	r0, [r2]	@ D.32191, MEM[base: _294, offset: 0B]
	ldr	r2, [sp, #56]	@ D.32187, %sfp
	str	r0, [r10]	@ D.32191, MEM[base: _296, offset: 0B]
	ldr	r0, [sp, #72]	@ D.32188, %sfp
	str	r0, [r9]	@ D.32188, MEM[base: _298, offset: 0B]
	ldr	r0, [sp, #96]	@ D.32188, %sfp
	str	r0, [r8]	@ D.32188, MEM[base: _300, offset: 0B]
	ldr	r0, [sp, #100]	@ D.32188, %sfp
	str	r0, [r7]	@ D.32188, MEM[base: _302, offset: 0B]
	ldr	r0, [sp, #108]	@ D.32191, %sfp
	str	r0, [r6]	@ D.32191, MEM[base: _304, offset: 0B]
	ldr	r0, [sp, #112]	@ D.32191, %sfp
	str	r0, [r5]	@ D.32191, MEM[base: _306, offset: 0B]
	ldr	r0, [sp, #116]	@ D.32191, %sfp
	str	r0, [r4]	@ D.32191, MEM[base: _308, offset: 0B]
	mov	r0, #0	@ tmp872,
	strb	r0, [lr]	@ tmp872, MEM[base: _310, offset: 0B]
	strb	r0, [ip]	@ tmp871, MEM[base: _312, offset: 0B]
	strb	r0, [r2]	@ tmp870, MEM[base: _314, offset: 0B]
	ldr	r2, [sp, #60]	@ D.32187, %sfp
	ldr	r0, [sp, #80]	@ D.32188, %sfp
	str	r0, [r2]	@ D.32188,* D.32187
.L9:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.160, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.158, ivtmp.158,
	add	r2, r2, #4	@ ivtmp.160, ivtmp.160,
	str	r2, [sp, #76]	@ ivtmp.160, %sfp
	beq	.L10	@,
	ldr	r2, [sp, #92]	@ tmp604, %sfp
	ldr	r2, [r2, #1872]	@ D.32188, _19->ImgSlotLen
	str	r2, [sp, #80]	@ D.32188, %sfp
.L11:
	add	r2, r3, #27648	@ D.32187, ivtmp.158,
	mov	r0, r2	@ D.32187, D.32187
	add	r2, r2, #152	@ D.32187, D.32187,
	str	r2, [sp, #84]	@ D.32187, %sfp
	add	r10, r0, #160	@ D.32187, D.32187,
	ldr	r2, [sp, #104]	@ D.32191, %sfp
	add	r9, r0, #168	@ D.32187, D.32187,
	add	r8, r0, #172	@ D.32187, D.32187,
	add	r7, r0, #176	@ D.32187, D.32187,
	cmp	r2, r1	@ D.32191, i
	add	r2, r0, #160	@ D.32187, D.32187,
	str	r2, [sp, #88]	@ D.32187, %sfp
	add	r2, r0, #168	@ D.32187, D.32187,
	str	r2, [sp, #24]	@ D.32187, %sfp
	add	r2, r0, #172	@ D.32187, D.32187,
	str	r2, [sp, #28]	@ D.32187, %sfp
	add	r2, r0, #176	@ D.32187, D.32187,
	str	r2, [sp, #32]	@ D.32187, %sfp
	add	r2, r0, #180	@ D.32187, D.32187,
	str	r2, [sp, #36]	@ D.32187, %sfp
	add	r2, r0, #184	@ D.32187, D.32187,
	str	r2, [sp, #40]	@ D.32187, %sfp
	add	r2, r0, #188	@ D.32187, D.32187,
	str	r2, [sp, #44]	@ D.32187, %sfp
	add	r2, r0, #148	@ D.32187, D.32187,
	str	r2, [sp, #48]	@ D.32187, %sfp
	add	r2, r0, #149	@ D.32187, D.32187,
	str	r2, [sp, #52]	@ D.32187, %sfp
	add	r2, r0, #150	@ D.32187, D.32187,
	str	r2, [sp, #56]	@ D.32187, %sfp
	add	r2, r0, #196	@ D.32187, D.32187,
	str	r2, [sp, #60]	@ D.32187, %sfp
	add	r2, r0, #152	@ D.32187, D.32187,
	str	r2, [sp, #64]	@ D.32187, %sfp
	add	r2, r0, #150	@ D.32187, D.32187,
	str	r2, [sp, #68]	@ D.32187, %sfp
	add	r2, r0, #196	@ D.32187, D.32187,
	add	r6, r0, #180	@ D.32187, D.32187,
	add	r5, r0, #184	@ D.32187, D.32187,
	add	r4, r0, #188	@ D.32187, D.32187,
	add	lr, r0, #148	@ D.32187, D.32187,
	add	ip, r0, #149	@ D.32187, D.32187,
	mov	r0, r2	@ D.32187, D.32187
	bgt	.L34	@,
	ldr	r2, [sp, #64]	@ D.32187, %sfp
	mov	fp, #0	@ tmp869,
	str	fp, [r2]	@ tmp869, MEM[base: _318, offset: 0B]
	ldr	r2, [sp, #120]	@ D.32191, %sfp
	str	r2, [r10]	@ D.32191, MEM[base: _320, offset: 0B]
	ldr	r2, [sp, #72]	@ D.32188, %sfp
	str	r2, [r9]	@ D.32188, MEM[base: _322, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32188, %sfp
	str	r2, [r8]	@ D.32188, MEM[base: _324, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32188, %sfp
	str	r2, [r7]	@ D.32188, MEM[base: _326, offset: 0B]
	ldr	r2, [sp, #108]	@ D.32191, %sfp
	str	r2, [r6]	@ D.32191, MEM[base: _328, offset: 0B]
	ldr	r2, [sp, #112]	@ D.32191, %sfp
	str	r2, [r5]	@ D.32191, MEM[base: _330, offset: 0B]
	ldr	r2, [sp, #116]	@ D.32191, %sfp
	str	r2, [r4]	@ D.32191, MEM[base: _332, offset: 0B]
	mov	r2, r0	@ D.32187, D.32187
	strb	fp, [lr]	@ tmp868, MEM[base: _334, offset: 0B]
	ldr	r0, [sp, #80]	@ D.32188, %sfp
	strb	fp, [ip]	@ tmp867, MEM[base: _336, offset: 0B]
	ldr	ip, [sp, #68]	@ D.32187, %sfp
	strb	fp, [ip]	@ tmp865, MEM[base: _338, offset: 0B]
	str	r0, [r2]	@ D.32188,* D.32187
	b	.L9	@
.L33:
	ldrsb	r3, [r9, #1]	@ _19->s8LowBufEnable, _19->s8LowBufEnable
	cmp	r3, #0	@ _19->s8LowBufEnable,
	beq	.L6	@,
	add	r2, r9, #32768	@ tmp604, D.32189,
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.32197, MemArrange.ValidFrameNum
	str	r2, [sp, #92]	@ tmp604, %sfp
	mov	r1, r2	@ tmp604, tmp604
	ldr	r2, [sp, #140]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	strb	r3, [r9, #10]	@ D.32197, _19->s32DecFsNum
	str	r2, [r1, #1876]	@ MemArrange.TotalMemUsed, _19->TotalMemUsed
	b	.L7	@
.L10:
	ldr	r4, [sp, #104]	@ D.32191, %sfp
	add	r2, sp, #552	@ tmp720,,
	ldr	r5, [sp, #92]	@ tmp604, %sfp
	add	r0, sp, #400	@,,
	ldr	r9, [sp, #128]	@ D.32189, %sfp
	mov	r3, #1	@ tmp429,
	ldr	r6, [sp, #72]	@ D.32188, %sfp
	add	r2, r2, r4, lsl #2	@ tmp437, tmp720, D.32191,
	ldr	lr, [sp, #132]	@ ivtmp.122, %sfp
	strb	r3, [r9, #12]	@ tmp429, _19->s32TfFsNum
	mov	r3, #0	@ tmp433,
	str	r6, [r5, #1704]	@ D.32188, _19->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.32188, %sfp
	ldr	ip, [r2, #-408]	@ tmp439, MemArrange.FrameAddr
	ldmia	r0, {r0, r1, r2}	@,,,
	str	r6, [r5, #1708]	@ D.32188, _19->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.32188, %sfp
	str	ip, [r5, #1696]	@ tmp439, _19->stTfFs[0].PhyAddr
	str	r0, [r5, #1716]	@ MemArrange.ChromOffset, _19->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.32188, _19->stTfFs[0].FsHeight
	str	r1, [r5, #1720]	@ MemArrange.LumaPixelOffset, _19->stTfFs[0].LumaPixelOffset
	str	r2, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _19->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp433, _19->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp433, _19->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp433, _19->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp433, _19->stTfFs[0].DispState
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.32197, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.32197,
	streqb	r3, [r9, #11]	@ D.32197, _19->s32DispFsNum
	streq	r3, [sp, #44]	@ D.32197, %sfp
	beq	.L13	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r9, #67]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.32191, D.32191, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.32191, D.32191,
	cmp	r3, #25	@ D.32191,
	movge	r3, #25	@ D.32191,
	uxtb	r3, r3	@ D.32197, D.32191
	strb	r3, [r9, #11]	@ D.32197, _19->s32DispFsNum
	sxtb	r3, r3	@ D.32191, D.32197
	str	r3, [sp, #44]	@ D.32191, %sfp
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32ExpectedDispFsNum, D.32191
	bgt	.L4	@,
.L13:
	ldr	r3, [sp, #400]	@ D.32191, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.32188, MemArrange.VahbStride
	mov	r0, ip	@ tmp606, i
	str	r3, [sp, #96]	@ D.32191, %sfp
	ldr	r3, [sp, #404]	@ D.32191, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.32188, %sfp
	str	r3, [sp, #100]	@ D.32191, %sfp
	ldr	r3, [sp, #408]	@ D.32191, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.32191, %sfp
	mov	r3, #1	@ D.32197,
	mov	r2, r3	@ D.32197, D.32197
	mov	r3, r4	@ D.32191, D.32191
	b	.L21	@
.L36:
	ldr	r3, [sp, #48]	@ D.32187, %sfp
	ldr	r2, [sp, #56]	@ D.32187, %sfp
	str	ip, [r3]	@ i, MEM[base: _239, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp483, %sfp
	ldr	r3, [r3, #-408]	@ D.32191, MemArrange.FrameAddr
	str	r3, [r2]	@ D.32191, MEM[base: _158, offset: 0B]
	ldr	r3, [sp, #60]	@ D.32187, %sfp
	ldr	r2, [sp, #72]	@ D.32188, %sfp
	str	r2, [r3]	@ D.32188, MEM[base: _165, offset: 0B]
	ldr	r2, [sp, #64]	@ D.32187, %sfp
	ldr	r3, [r9, #88]	@ D.32191, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.32191, MEM[base: _136, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32191, %sfp
	ldr	r3, [r9, #92]	@ D.32191, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32191, MEM[base: _185, offset: 0B]
	str	r2, [r7]	@ D.32191, MEM[base: _12, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32191, %sfp
	str	r2, [r6]	@ D.32191, MEM[base: _6, offset: 0B]
	ldr	r2, [sp, #104]	@ D.32191, %sfp
	str	r2, [r5]	@ D.32191, MEM[base: _3, offset: 0B]
	strb	r0, [r4]	@ tmp606, MEM[base: _270, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _262, offset: 0B]
	strb	r0, [r10]	@ tmp606, MEM[base: _258, offset: 0B]
.L15:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.32188, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.122, ivtmp.122,
	str	r3, [sp, #72]	@ D.32188, %sfp
	beq	.L35	@,
	ldrsb	r1, [r9, #11]	@ D.32191, _19->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.32197, _19->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.32191, _19->s32DecFsNum
	str	r1, [sp, #44]	@ D.32191, %sfp
.L21:
	add	r1, ip, r3	@ tmp480, i, D.32191
	sxtab	r3, r3, r2	@ tmp516, D.32191, D.32197
	sxtab	r2, r1, r2	@ tmp481, tmp480, D.32197
	add	r1, lr, #30976	@ D.32187, ivtmp.122,
	mov	r4, r1	@ D.32187, D.32187
	add	r1, r1, #152	@ D.32187, D.32187,
	str	r1, [sp, #48]	@ D.32187, %sfp
	add	r1, sp, #552	@ tmp743,,
	add	r3, r1, r3, lsl #2	@ tmp518, tmp747, tmp516,
	str	r3, [sp, #76]	@ tmp518, %sfp
	add	r3, r4, #160	@ D.32187, D.32187,
	str	r3, [sp, #56]	@ D.32187, %sfp
	add	r3, r4, #168	@ D.32187, D.32187,
	str	r3, [sp, #60]	@ D.32187, %sfp
	add	r3, r4, #160	@ D.32187, D.32187,
	str	r3, [sp, #80]	@ D.32187, %sfp
	add	r3, r4, #168	@ D.32187, D.32187,
	str	r3, [sp, #84]	@ D.32187, %sfp
	ldr	r3, [sp, #44]	@ D.32191, %sfp
	add	r2, r1, r2, lsl #2	@ tmp483, tmp743, tmp481,
	add	r10, r4, #150	@ D.32187, D.32187,
	str	r2, [sp, #52]	@ tmp483, %sfp
	cmp	r3, ip	@ D.32191, i
	add	r3, r4, #176	@ D.32187, D.32187,
	str	r3, [sp, #44]	@ D.32187, %sfp
	add	r3, r4, #180	@ D.32187, D.32187,
	str	r3, [sp, #24]	@ D.32187, %sfp
	add	r3, r4, #184	@ D.32187, D.32187,
	str	r3, [sp, #28]	@ D.32187, %sfp
	add	r3, r4, #188	@ D.32187, D.32187,
	str	r3, [sp, #32]	@ D.32187, %sfp
	add	r3, r4, #148	@ D.32187, D.32187,
	add	r2, r4, #152	@ D.32187, D.32187,
	add	fp, r4, #149	@ D.32187, D.32187,
	str	r2, [sp, #68]	@ D.32187, %sfp
	add	r8, r4, #176	@ D.32187, D.32187,
	add	r2, r4, #172	@ D.32187, D.32187,
	add	r7, r4, #180	@ D.32187, D.32187,
	add	r6, r4, #184	@ D.32187, D.32187,
	add	r5, r4, #188	@ D.32187, D.32187,
	str	r2, [sp, #64]	@ D.32187, %sfp
	mov	r4, r3	@ D.32187, D.32187
	str	r2, [sp, #88]	@ D.32187, %sfp
	str	r3, [sp, #36]	@ D.32187, %sfp
	str	r10, [sp, #40]	@ D.32187, %sfp
	bgt	.L36	@,
	ldr	r3, [sp, #68]	@ D.32187, %sfp
	ldr	r2, [sp, #72]	@ D.32188, %sfp
	str	r0, [r3]	@ tmp606, MEM[base: _252, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp518, %sfp
	ldr	r10, [r3, #-408]	@ D.32191, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.32187, %sfp
	str	r10, [r3]	@ D.32191, MEM[base: _246, offset: 0B]
	ldr	r3, [sp, #84]	@ D.32187, %sfp
	str	r2, [r3]	@ D.32188, MEM[base: _240, offset: 0B]
	ldr	r3, [sp, #88]	@ D.32187, %sfp
	ldr	r10, [r9, #88]	@ D.32191, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.32191, MEM[base: _273, offset: 0B]
	ldr	r3, [r9, #92]	@ D.32191, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32191, MEM[base: _275, offset: 0B]
	ldr	r3, [sp, #96]	@ D.32191, %sfp
	str	r3, [r7]	@ D.32191, MEM[base: _277, offset: 0B]
	ldr	r3, [sp, #100]	@ D.32191, %sfp
	str	r3, [r6]	@ D.32191, MEM[base: _279, offset: 0B]
	ldr	r3, [sp, #104]	@ D.32191, %sfp
	str	r3, [r5]	@ D.32191, MEM[base: _281, offset: 0B]
	ldr	r3, [sp, #40]	@ D.32187, %sfp
	strb	r0, [r4]	@ tmp606, MEM[base: _283, offset: 0B]
	strb	r0, [fp]	@ tmp606, MEM[base: _285, offset: 0B]
	strb	r0, [r3]	@ tmp606, MEM[base: _287, offset: 0B]
	b	.L15	@
.L35:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.93,,
	add	r0, r9, #34560	@ ivtmp.99, D.32189,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.103, D.32189,
	mov	lr, r2	@ tmp605, i
	movge	r3, #20	@ D.32191,
	uxtb	r3, r3	@ D.32197, D.32191
	strb	r3, [r9, #13]	@ D.32197, _19->s32PmvNum
	b	.L20	@
.L37:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.32197, _19->s32PmvNum
.L20:
	sxtb	r3, r3	@ D.32191, D.32197
	add	ip, ip, #4	@ ivtmp.93, ivtmp.93,
	cmp	r3, r2	@ D.32191, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.99, ivtmp.99,
	add	r1, r1, #1	@ ivtmp.103, ivtmp.103,
	ldrgt	r3, [ip, #-4]	@ D.32191, MEM[base: _103, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.32191, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.32191,
	strb	lr, [r1, #-1]	@ tmp605,
	bne	.L37	@,
	ldr	r7, [sp, #92]	@ tmp604, %sfp
	add	r3, r9, #24576	@ tmp559, D.32189,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r2, #0	@ tmp560,
	ldr	ip, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	mov	r0, r2	@ D.32188, tmp560
	ldr	lr, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r7, #1788]	@ MemArrange.HafPmvOffset, _19->s32HalfPmvOffset
	ldr	r1, [r3, #3232]	@ _19->stDecFs[0].PhyAddr, _19->stDecFs[0].PhyAddr
	str	ip, [r3, #3188]	@ MemArrange.VahbStride, _19->stDummyPhyFs.Stride
	str	r2, [r3, #3172]	@ tmp560, _19->stDummyPhyFs.PhyFsID
	str	r1, [r3, #3180]	@ _19->stDecFs[0].PhyAddr, _19->stDummyPhyFs.PhyAddr
	ldr	r1, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth
	ldr	r5, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r4, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r3, #3192]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsWidth, _19->stDummyPhyFs.FsWidth
	ldr	r6, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.32191, MemArrange.TotalMemUsed
	str	lr, [r3, #3208]	@ MemArrange.ChromaPixelOffset, _19->stDummyPhyFs.ChromaPixelOffset
	mov	lr, r7	@ tmp604, tmp604
	strb	r2, [r3, #3168]	@ tmp560, _19->stDummyPhyFs.IsDecRef
	str	r6, [r3, #3196]	@ MEM[(struct FSP_INST_CFG_S *)_19 + 60B].s32DecFsHeight, _19->stDummyPhyFs.FsHeight
	strb	r2, [r3, #3169]	@ tmp560, _19->stDummyPhyFs.IsTfRef
	strb	r2, [r3, #3170]	@ tmp560, _19->stDummyPhyFs.DispState
	str	r5, [r3, #3200]	@ MemArrange.ChromOffset, _19->stDummyPhyFs.ChromOffset
	str	r4, [r3, #3204]	@ MemArrange.LumaPixelOffset, _19->stDummyPhyFs.LumaPixelOffset
	ldr	ip, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	str	r1, [r7, #1876]	@ D.32191, _19->TotalMemUsed
	str	ip, [r7, #1888]	@ MemArrange.u32StrideByte, _19->StrideByte
	str	r1, [r3]	@ D.32191, *UsedMemSize_218(D)
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L4:
	mvn	r0, #0	@ D.32188,
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L6:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r9, #32768	@ tmp604, D.32189,
	str	r2, [sp, #92]	@ tmp604, %sfp
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.32191,
	uxtb	r3, r3	@ D.32197, D.32191
	strb	r3, [r9, #10]	@ D.32197, _19->s32DecFsNum
	b	.L7	@
.L39:
	.align	2
.L38:
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
	add	r0, sp, #40	@ tmp343,,
	mov	r1, #416	@,
	mov	r3, #0	@ tmp214,
	mov	r10, r2	@ s32Num, s32Num
	str	r3, [sp, #36]	@ tmp214, s32UsedMemSize
	bl	__memzero	@
	clz	r3, r4	@ tmp219, VoUsingFrameArray
	mov	r3, r3, lsr #5	@ tmp219, tmp219,
	cmp	r9, #0	@ InstID,
	orrne	r3, r3, #1	@,, tmp222, tmp219
	cmp	r3, #0	@ tmp222,
	bne	.L43	@,
	ldr	r2, .L99	@ tmp223,
	ldr	r6, [r2, r9, asl #2]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L43	@,
	add	r5, r6, #32768	@ tmp304, pstInst,
	ldr	r2, [r4]	@ D.32226, VoUsingFrameArray_21(D)->FrameAddr
	ldr	r8, [r5, #1880]	@ s32VdhMemAddr, pstInst_22->MemAddr
	ldr	r7, [r5, #1876]	@ pstInst_22->TotalMemUsed, pstInst_22->TotalMemUsed
	ldr	r1, [r5, #1888]	@ pstInst_22->StrideByte, pstInst_22->StrideByte
	cmp	r8, r2	@ s32VdhMemAddr, D.32226
	ldr	r0, [r5, #1884]	@ s32VdhAllMemSize, pstInst_22->MemSize
	rsblt	r3, r8, r2	@ s32FreeSize, s32VdhMemAddr, D.32226
	add	r7, r7, r1	@ s32VdhTotalMemUse, pstInst_22->TotalMemUsed, pstInst_22->StrideByte
	cmp	r3, r7	@ s32FreeSize, s32VdhTotalMemUse
	str	r0, [sp, #24]	@ s32VdhAllMemSize, %sfp
	bge	.L68	@,
	sub	r3, r10, #-536870911	@ D.32230, s32Num,
	ldr	r1, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r0, r4, r3, lsl #3	@ D.32231, VoUsingFrameArray, D.32230,
	ldr	r3, [r4, r3, asl #3]	@ _37->FrameAddr, _37->FrameAddr
	add	r1, r8, r1	@ D.32226, s32VdhMemAddr, s32VdhAllMemSize
	ldr	ip, [r0, #4]	@ _37->FrameSize, _37->FrameSize
	add	r3, r3, ip	@ D.32226, _37->FrameAddr, _37->FrameSize
	cmp	r1, r3	@ D.32226, D.32226
	rsbgt	r1, r3, r1	@ s32FreeSize, D.32226, D.32226
	movle	r1, #0	@ s32FreeSize,
	cmp	r1, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L47	@,
	sub	r1, r10, #1	@ i, s32Num,
	cmp	r1, #0	@ i,
	ble	.L43	@,
	ldmib	r4, {r0, r3}	@ VoUsingFrameArray,,
	add	r2, r2, r0	@ D.32226, D.32226, VoUsingFrameArray_21(D)->FrameSize
	rsb	r3, r2, r3	@ s32FreeSize, D.32226, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_21(D) + 8B].FrameAddr
	cmp	r7, r3	@ s32VdhTotalMemUse, s32FreeSize
	addgt	ip, r4, #8	@ ivtmp.210, VoUsingFrameArray,
	movgt	r0, #0	@ i,
	bgt	.L51	@,
	b	.L95	@
.L52:
	ldr	fp, [ip, #4]	@ MEM[base: _13, offset: 4B], MEM[base: _13, offset: 4B]
	add	ip, ip, #8	@ ivtmp.210, ivtmp.210,
	ldr	r3, [r4, r0, asl #3]	@ MEM[base: VoUsingFrameArray_21(D), index: _133, step: 8, offset: 0B], MEM[base: VoUsingFrameArray_21(D), index: _133, step: 8, offset: 0B]
	ldr	r2, [lr, #8]	@ MEM[base: _13, offset: 8B], MEM[base: _13, offset: 8B]
	add	r3, r3, fp	@ D.32226, MEM[base: VoUsingFrameArray_21(D), index: _133, step: 8, offset: 0B], MEM[base: _13, offset: 4B]
	rsb	r2, r3, r2	@ s32FreeSize, D.32226, MEM[base: _13, offset: 8B]
	cmp	r7, r2	@ s32VdhTotalMemUse, s32FreeSize
	ble	.L96	@,
.L51:
	add	r0, r0, #1	@ i, i,
	mov	lr, ip	@ D.32228, ivtmp.210
	cmp	r0, r1	@ i, i
	bne	.L52	@,
.L43:
	mvn	r0, #0	@ D.32227,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L68:
	mov	r3, #1	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
.L45:
	ldrsb	r3, [r6, #10]	@ pstInst_22->s32DecFsNum, pstInst_22->s32DecFsNum
	ldr	fp, .L99+4	@ tmp305,
	cmp	r3, #0	@ pstInst_22->s32DecFsNum,
	ldrle	lr, [fp, r9, asl #2]	@ D.32235, s_pstVfmwChan
	ble	.L54	@,
	ldr	lr, [fp, r9, asl #2]	@ D.32235, s_pstVfmwChan
	add	r1, r6, #27648	@ ivtmp.202, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.202, ivtmp.202,
	add	r3, lr, #216064	@ ivtmp.199, D.32235,
	mov	r0, r2	@ tmp307, i
	add	r3, r3, #360	@ ivtmp.199, ivtmp.199,
.L55:
	str	r0, [r3]	@ tmp307, MEM[base: _106, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r1], #52	@ D.32226, MEM[base: _120, offset: 0B]
	add	r3, r3, #16	@ ivtmp.199, ivtmp.199,
	str	ip, [r3, #-12]	@ D.32226, MEM[base: _106, offset: 4B]
	ldr	ip, [r5, #1872]	@ D.32226, pstInst_22->ImgSlotLen
	str	r0, [r3, #-4]	@ tmp307, MEM[base: _106, offset: 12B]
	str	ip, [r3, #-8]	@ D.32226, MEM[base: _106, offset: 8B]
	ldrsb	ip, [r6, #10]	@ D.32226, pstInst_22->s32DecFsNum
	cmp	ip, r2	@ D.32226, i
	bgt	.L55	@,
.L54:
	ldr	r1, .L99+8	@ tmp268,
	ldr	r2, [lr, #1608]	@ s32ThrWidth, _122->stSynExtraData.s32DSDThrWidth
	ldr	r3, [lr, #1612]	@ s32ThrHeight, _122->stSynExtraData.s32DSDThrHeight
	ldr	ip, [r1, #36]	@ D.32234, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, [lr, #1588]	@ s32DnrNum, _122->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	cmp	ip, #0	@ D.32234,
	beq	.L56	@,
	add	r0, sp, #40	@ tmp348,,
	mov	lr, #0	@ tmp272,
	str	r0, [sp, #16]	@ tmp348,
	mov	r0, #64	@ tmp269,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp271,
	str	r0, [sp, #20]	@ tmp269,
	mov	r0, #1	@,
	str	r1, [sp, #12]	@ tmp271,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #8]	@ tmp272,
	str	lr, [sp]	@ tmp272,
	blx	ip	@ D.32234
.L56:
	ldr	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	ldr	ip, [fp, r9, asl #2]	@ D.32235, s_pstVfmwChan
	ldr	lr, [sp, #44]	@ D.32226, MemArrange.TotalMemUsed
	cmp	r3, #1	@ s32FoundVdhMemInTop,
	str	lr, [ip, #240]	@ D.32226, _89->s32OffLineDNRMemSize
	beq	.L97	@,
.L57:
	sub	r3, r10, #-536870911	@ D.32230, s32Num,
	ldr	r2, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r8, r8, r2	@ D.32226, s32VdhMemAddr, s32VdhAllMemSize
	add	r2, r4, r3, lsl #3	@ D.32231, VoUsingFrameArray, D.32230,
	ldr	r3, [r4, r3, asl #3]	@ _100->FrameAddr, _100->FrameAddr
	ldr	r2, [r2, #4]	@ _100->FrameSize, _100->FrameSize
	add	r3, r3, r2	@ D.32226, _100->FrameAddr, _100->FrameSize
	cmp	r8, r3	@ D.32226, D.32226
	rsbgt	r8, r3, r8	@ s32FreeSize, D.32226, D.32226
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, lr	@ s32FreeSize, D.32226
	strge	r3, [ip, #236]	@ D.32226, _89->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.32227,
	bge	.L86	@,
	sub	r1, r10, #1	@ i, s32Num,
	cmp	r1, #0	@ i,
	ble	.L72	@,
	ldmib	r4, {r0, r2}	@ VoUsingFrameArray,,
	ldr	r3, [r4]	@ VoUsingFrameArray_21(D)->FrameAddr, VoUsingFrameArray_21(D)->FrameAddr
	add	r3, r3, r0	@ D.32226, VoUsingFrameArray_21(D)->FrameAddr, VoUsingFrameArray_21(D)->FrameSize
	rsb	r2, r3, r2	@ s32FreeSize, D.32226, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_21(D) + 8B].FrameAddr
	cmp	lr, r2	@ D.32226, s32FreeSize
	movgt	r0, r1	@ i, i
	movgt	r6, #0	@ i,
	bgt	.L64	@,
	b	.L98	@
.L65:
	ldr	r3, [r4, #8]	@ MEM[base: _42, offset: 8B], MEM[base: _42, offset: 8B]
	add	r4, r4, #8	@ ivtmp.194, ivtmp.194,
	ldr	r5, [r4, #4]	@ MEM[base: _42, offset: 12B], MEM[base: _42, offset: 12B]
	ldr	r2, [r2, #16]	@ MEM[base: _42, offset: 16B], MEM[base: _42, offset: 16B]
	add	r3, r3, r5	@ D.32226, MEM[base: _42, offset: 8B], MEM[base: _42, offset: 12B]
	rsb	r2, r3, r2	@ s32FreeSize, D.32226, MEM[base: _42, offset: 16B]
	cmp	lr, r2	@ D.32226, s32FreeSize
	ble	.L62	@,
.L64:
	add	r6, r6, #1	@ i, i,
	mov	r2, r4	@ D.32228, ivtmp.194
	cmp	r6, r1	@ i, i
	bne	.L65	@,
.L61:
	cmp	r1, r0	@ i, i
	movgt	r0, #0	@ D.32227,
	mvnle	r0, #0	@ D.32227,
.L86:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L97:
	ldr	r3, [r4]	@ D.32226, VoUsingFrameArray_21(D)->FrameAddr
	add	r7, r8, r7	@ D.32226, s32VdhMemAddr, s32VdhTotalMemUse
	cmp	r3, r7	@ D.32226, D.32226
	rsbgt	r3, r7, r3	@ s32FreeSize, D.32226, D.32226
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, lr	@ s32FreeSize, D.32226
	strge	r7, [ip, #236]	@ D.32226, _89->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.32227,
	blt	.L57	@,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L98:
	mov	r6, #0	@ i,
.L62:
	str	r3, [ip, #236]	@ D.32226, _89->s32OffLineDnrMemAddr
	mov	r0, r6	@ i, i
	b	.L61	@
.L47:
	str	r3, [r5, #1880]	@ D.32226, pstInst_22->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_22->MemSize
	ldr	r3, [r0, #4]	@ _37->FrameSize, _37->FrameSize
	add	r3, r3, r7	@ D.32226, _37->FrameSize, s32VdhTotalMemUse
	str	r3, [r0, #4]	@ D.32226, _37->FrameSize
.L50:
	add	r3, sp, #36	@,,
	ldr	r2, [r5, #1884]	@, pstInst_22->MemSize
	ldr	r1, [r5, #1880]	@, pstInst_22->MemAddr
	mov	r0, r9	@, InstID
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@,
	beq	.L43	@,
	ldr	r3, [sp, #36]	@ s32UsedMemSize, s32UsedMemSize
	cmp	r7, r3	@ s32VdhTotalMemUse, s32UsedMemSize
	blt	.L43	@,
	mov	r3, #0	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	b	.L45	@
.L96:
	str	r3, [r5, #1880]	@ D.32226, pstInst_22->MemAddr
	cmp	r1, r0	@ i, i
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_22->MemSize
	ldr	r3, [lr, #4]	@ _174->FrameSize, _174->FrameSize
	add	r3, r3, r7	@ D.32226, _174->FrameSize, s32VdhTotalMemUse
	str	r3, [lr, #4]	@ D.32226, _174->FrameSize
	bgt	.L50	@,
	b	.L43	@
.L72:
	mov	r0, #0	@ i,
	b	.L61	@
.L95:
	str	r2, [r5, #1880]	@ D.32226, pstInst_22->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_22->MemSize
	ldr	r3, [r4, #4]	@ VoUsingFrameArray_21(D)->FrameSize, VoUsingFrameArray_21(D)->FrameSize
	add	r3, r3, r7	@ D.32226, VoUsingFrameArray_21(D)->FrameSize, s32VdhTotalMemUse
	str	r3, [r4, #4]	@ D.32226, VoUsingFrameArray_21(D)->FrameSize
	b	.L50	@
.L100:
	.align	2
.L99:
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
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #460
	sub	sp, sp, #460	@,,
	mov	r4, r0	@ InstID, InstID
	add	r0, sp, #40	@ tmp357,,
	str	r1, [sp, #24]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #32]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	r4, #0	@ InstID,
	bne	.L109	@,
	ldr	r3, .L154	@ tmp203,
	ldr	r6, [r3]	@ pstInst, s_pFspInst
	add	r3, r6, #32768	@ tmp205, pstInst,
	ldrsb	r2, [r6, #10]	@ pstInst_17->s32DecFsNum, pstInst_17->s32DecFsNum
	ldr	r9, [r3, #1880]	@ s32VdhMemAddr, pstInst_17->MemAddr
	cmp	r2, #0	@ pstInst_17->s32DecFsNum,
	ldr	r2, [r3, #1884]	@ s32VdhAllMemSize, pstInst_17->MemSize
	ldr	r10, [r3, #1888]	@ D.32270, pstInst_17->StrideByte
	ldr	fp, [r3, #1872]	@ s32ImgSize, pstInst_17->ImgSlotLen
	str	r2, [sp, #36]	@ s32VdhAllMemSize, %sfp
	ldr	r2, [r3, #1876]	@ D.32269, pstInst_17->TotalMemUsed
	str	r2, [sp, #28]	@ D.32269, %sfp
	ble	.L150	@,
	add	r5, r6, #27648	@ ivtmp.237, pstInst,
	ldr	r8, .L154+4	@ tmp330,
	add	r5, r5, #160	@ ivtmp.237, ivtmp.237,
	mov	r7, #1	@ tmp331,
	b	.L110	@
.L151:
	ldr	r3, [r8]	@ D.32268, s_pstVfmwChan
	add	r3, r3, r4, lsl #4	@ tmp223, D.32268, i,
	add	r2, r3, #216064	@ tmp225, tmp223,
	add	r3, r3, #212992	@ tmp235, tmp223,
	str	r0, [r2, #360]	@ s32UsingCount, _33->stFrameArray[i_118].eFrameState
	ldr	ip, [r5]	@ D.32269, MEM[base: _3, offset: 0B]
	str	ip, [r2, #364]	@ D.32269,
	str	fp, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L108:
	ldrsb	r3, [r6, #10]	@ D.32269, pstInst_17->s32DecFsNum
	add	r4, r4, #1	@ i, i,
	add	r5, r5, #52	@ ivtmp.237, ivtmp.237,
	cmp	r3, r4	@ D.32269, i
	ble	.L111	@,
.L110:
	ldr	r1, [r5]	@, MEM[base: _3, offset: 0B]
	mov	r2, fp	@, s32ImgSize
	mov	r0, #0	@,
	bl	DNR_FsIsInImgQue	@
	ldr	r1, .L154+4	@ tmp325,
	cmp	r0, #0	@ s32UsingCount
	beq	.L151	@,
	ble	.L109	@,
	ldr	r3, [r8]	@ D.32268, s_pstVfmwChan
	add	r3, r3, r4, lsl #4	@ tmp243, D.32268, i,
	add	r2, r3, #216064	@ tmp245, tmp243,
	add	r3, r3, #212992	@ tmp255, tmp243,
	str	r7, [r2, #360]	@ tmp331, _40->stFrameArray[i_118].eFrameState
	ldr	ip, [r5]	@ D.32269, MEM[base: _3, offset: 0B]
	str	ip, [r2, #364]	@ D.32269,
	str	fp, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L108	@
.L150:
	ldr	r1, .L154+4	@ tmp325,
.L111:
	ldr	r3, .L154+8	@ tmp216,
	ldr	r7, [r1]	@ D.32268, s_pstVfmwChan
	ldr	r5, .L154+4	@ tmp215,
	ldr	r4, [r3, #36]	@ D.32272, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r2, [r7, #1608]	@ s32ThrWidth, _46->stSynExtraData.s32DSDThrWidth
	cmp	r4, #0	@ D.32272,
	ldr	r3, [r7, #1612]	@ s32ThrHeight, _46->stSynExtraData.s32DSDThrHeight
	ldr	r1, [r7, #1588]	@ s32DnrNum, _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L105	@,
	mov	lr, #0	@ tmp262,
	add	r0, sp, #40	@ tmp360,,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp261,
	str	r0, [sp, #16]	@ tmp360,
	mov	r0, #64	@ tmp259,
	str	r1, [sp, #12]	@ tmp261,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@ tmp259,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp262,
	str	lr, [sp]	@ tmp262,
	blx	r4	@ D.32272
	ldr	r7, [r5]	@ D.32268, s_pstVfmwChan
.L105:
	ldr	r3, [sp, #28]	@ D.32269, %sfp
	ldr	r5, [sp, #44]	@ D.32269, MemArrange.TotalMemUsed
	add	r8, r3, r10	@ D.32270, D.32269, D.32270
	ldr	r3, [sp, #24]	@ VoUsingFrameArray, %sfp
	add	r8, r9, r8	@ D.32269, s32VdhMemAddr, D.32270
	str	r5, [r7, #240]	@ D.32269, _131->s32OffLineDNRMemSize
	ldr	r3, [r3]	@ D.32269, VoUsingFrameArray_55(D)->FrameAddr
	cmp	r3, r8	@ D.32269, D.32269
	rsbgt	r3, r8, r3	@ s32FreeSize, D.32269, D.32269
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, r5	@ s32FreeSize, D.32269
	bge	.L149	@,
	ldr	r3, [sp, #32]	@ s32Num, %sfp
	cmp	r3, #0	@ s32Num,
	beq	.L114	@,
	ble	.L115	@,
	sub	r10, r3, #-536870911	@ D.32264, s32Num,
	ldr	r3, [sp, #24]	@ VoUsingFrameArray, %sfp
	add	r2, r3, r10, lsl #3	@ D.32273, VoUsingFrameArray, D.32264,
	ldr	r3, [r3, r10, asl #3]	@ _63->FrameAddr, _63->FrameAddr
	ldr	r2, [r2, #4]	@ _63->FrameSize, _63->FrameSize
	add	r2, r3, r2	@ D.32269, _63->FrameAddr, _63->FrameSize
	cmp	r8, r2	@ D.32269, D.32269
	bgt	.L114	@,
.L116:
	ldr	r3, [sp, #36]	@ s32VdhAllMemSize, %sfp
	add	r3, r9, r3	@ D.32269, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r2, r3	@ s32FreeSize, D.32269, D.32269
	cmp	r5, r3	@ D.32269, s32FreeSize
	strle	r2, [r7, #236]	@ D.32269, _131->s32OffLineDnrMemAddr
	movle	r0, #0	@ D.32267,
	ble	.L145	@,
.L117:
	cmp	fp, r5	@ s32ImgSize, D.32269
	movge	r4, #1	@ s32DnrLockFrmNum,
	blt	.L152	@,
.L118:
	ldrsb	r5, [r6, #10]	@ D.32269, pstInst_17->s32DecFsNum
	cmp	r5, #0	@ D.32269,
	ble	.L109	@,
	cmp	r4, r5	@ s32DnrLockFrmNum, D.32269
	bgt	.L136	@,
	mov	r0, #0	@ j,
	mov	r1, r4	@ D.32269, s32DnrLockFrmNum
	cmp	r0, r1	@ j, D.32269
	bge	.L122	@,
.L153:
	mov	lr, r0, asl #4	@ tmp324, j,
	mov	r2, r0	@ j, j
	add	r3, r7, lr	@ tmp290, D.32268, tmp324
	add	r3, r3, #216064	@ tmp292, tmp290,
	ldr	r3, [r3, #360]	@ _131->stFrameArray[j_26].eFrameState, _131->stFrameArray[j_26].eFrameState
	cmp	r3, #0	@ _131->stFrameArray[j_26].eFrameState,
	beq	.L125	@,
	b	.L123	@
.L126:
	add	r3, r3, #360	@ D.32264, D.32264,
	ldr	r3, [r7, r3]	@ MEM[base: _12, offset: 0B], MEM[base: _12, offset: 0B]
	cmp	r3, #0	@ MEM[base: _12, offset: 0B],
	bne	.L123	@,
.L125:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r1	@ j, D.32269
	mov	r3, r2, asl #4	@ D.32264, j,
	add	r3, r3, #216064	@ D.32264, D.32264,
	blt	.L126	@,
	mov	r3, #52	@ tmp318,
	add	r2, r7, lr	@ tmp313, D.32268, tmp324
	mla	r3, r3, r0, r6	@ D.32264, tmp318, j, pstInst
	add	r2, r2, #216064	@ tmp314, tmp313,
	add	r2, r2, #360	@ tmp314, tmp314,
	add	lr, lr, #216064	@ D.32264, tmp324,
	add	lr, lr, #360	@ D.32264, D.32264,
	mov	r8, r0	@ j, j
	ldr	r2, [r2, #4]	@ _131->stFrameArray[j_173].s32FrameAddr, _131->stFrameArray[j_173].s32FrameAddr
	add	r3, r3, #27648	@ ivtmp.220, D.32264,
	add	lr, r7, lr	@ ivtmp.223, D.32268, D.32264
	add	r3, r3, #160	@ ivtmp.220, ivtmp.220,
	mov	r9, #2	@ tmp327,
	mov	r5, #0	@ tmp328,
	str	r2, [r7, #236]	@ _131->stFrameArray[j_173].s32FrameAddr, _131->s32OffLineDnrMemAddr
.L128:
	ldr	r2, [r3], #52	@ s32FrameStartAddr, MEM[base: _73, offset: 0B]
	add	r0, r0, #1	@ j, j,
	cmp	r0, r1	@ j, D.32269
	str	r9, [lr]	@ tmp327, MEM[base: _74, offset: 0B]
	str	r5, [lr, #12]	@ tmp328, MEM[base: _74, offset: 12B]
	stmib	lr, {r2, fp}	@ ivtmp.223,,
	add	lr, lr, #16	@ ivtmp.223, ivtmp.223,
	bne	.L128	@,
.L129:
	ldrsb	r5, [r6, #10]	@ D.32269, pstInst_17->s32DecFsNum
	cmp	r8, r5	@ j, D.32269
	bge	.L109	@,
	add	r1, r4, r8	@ D.32269, s32DnrLockFrmNum, j
.L132:
	cmp	r5, r1	@ D.32269, D.32269
	movge	r0, #0	@ D.32267,
	mvnlt	r0, #0	@ D.32267,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L114:
	ldr	r3, [sp, #36]	@ s32VdhAllMemSize, %sfp
	add	r3, r9, r3	@ D.32269, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r8, r3	@ s32FreeSize, D.32269, D.32269
	cmp	r5, r3	@ D.32269, s32FreeSize
	bgt	.L117	@,
.L149:
	mov	r0, #0	@ D.32267,
	str	r8, [r7, #236]	@ D.32269, _131->s32OffLineDnrMemAddr
.L145:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L109:
	mvn	r0, #0	@ D.32267,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L123:
	add	r0, r2, #1	@ j, j,
	cmp	r0, r5	@ j, D.32269
	bge	.L109	@,
	add	r1, r4, r0	@ D.32269, s32DnrLockFrmNum, j
	cmp	r1, r5	@ D.32269, D.32269
	bgt	.L132	@,
	cmp	r0, r1	@ j, D.32269
	blt	.L153	@,
.L122:
	add	r3, r7, r0, lsl #4	@ tmp306, D.32268, j,
	mov	r8, r0	@ j, j
	add	r3, r3, #216064	@ tmp307, tmp306,
	add	r3, r3, #360	@ tmp307, tmp307,
	ldr	r3, [r3, #4]	@ _131->stFrameArray[j_169].s32FrameAddr, _131->stFrameArray[j_169].s32FrameAddr
	str	r3, [r7, #236]	@ _131->stFrameArray[j_169].s32FrameAddr, _131->s32OffLineDnrMemAddr
	b	.L129	@
.L152:
	mov	r1, fp	@, s32ImgSize
	mov	r0, r5	@, D.32269
	bl	__aeabi_idiv	@
	mov	r1, fp	@, s32ImgSize
	mov	r4, r0	@ s32DnrLockFrmNum,
	mov	r0, r5	@, D.32269
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addgt	r4, r4, #1	@ s32DnrLockFrmNum, s32DnrLockFrmNum,
	b	.L118	@
.L115:
	ldr	r3, [sp, #32]	@ s32Num, %sfp
	sub	r10, r3, #-536870911	@ D.32264, s32Num,
	ldr	r3, [sp, #24]	@ VoUsingFrameArray, %sfp
	add	r2, r3, r10, lsl #3	@ D.32273, VoUsingFrameArray, D.32264,
	ldr	r3, [r3, r10, asl #3]	@ _145->FrameAddr, _145->FrameAddr
	ldr	r2, [r2, #4]	@ _145->FrameSize, _145->FrameSize
	add	r2, r3, r2	@ D.32269, _145->FrameAddr, _145->FrameSize
	b	.L116	@
.L136:
	mov	r1, r4	@ D.32269, s32DnrLockFrmNum
	b	.L132	@
.L155:
	.align	2
.L154:
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
	stmfd	sp!, {r4, r6, r7, lr}	@,
	.save {r4, r6, r7, lr}
	cmp	r0, #0	@ InstID
	.pad #520
	sub	sp, sp, #520	@,,
	mov	r3, #0	@ tmp132,
	str	r3, [sp, #4]	@ tmp132, s32UsingNum
	bne	.L159	@,
	ldr	r3, .L170	@ tmp133,
	ldr	r3, [r3]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L159	@,
	add	r3, r3, #32768	@ tmp135, pstInst,
	add	r1, sp, #520	@ D.32291,,
	mov	r2, #-2147483648	@ tmp157,
	ldr	r4, [r3, #1876]	@ s32VdhTotalMemUse, pstInst_8->TotalMemUsed
	add	r3, sp, #8	@ tmp160,,
.L160:
	str	r2, [r3]	@ tmp157, MEM[base: _42, offset: 0B]
	add	r3, r3, #8	@ ivtmp.247, ivtmp.247,
	str	r0, [r3, #-4]	@ tmp158, MEM[base: _42, offset: 4B]
	cmp	r3, r1	@ ivtmp.247, D.32291
	bne	.L160	@,
	add	r2, sp, #4	@,,
	add	r1, sp, #8	@ tmp161,,
	mov	r0, #0	@,
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	bne	.L159	@,
	ldr	r2, [sp, #4]	@ D.32288, s32UsingNum
	cmp	r2, #0	@ D.32288,
	ble	.L161	@,
	ldr	r3, [sp, #12]	@ D.32288, VoUsingImage[0].FrameSize
	add	r1, sp, #8	@ tmp162,,
	cmp	r4, r3	@ s32VdhTotalMemUse, D.32288
	ble	.L162	@,
	mov	r4, r4, asl #1	@ D.32288, s32VdhTotalMemUse,
	movw	r6, #21846	@ tmp144,
	movt	r6, 21845	@ tmp144,
	smull	r6, r7, r4, r6	@ tmp143, D.32288, tmp144
	sub	r4, r7, r4, asr #31	@ D.32288,, D.32288,
	cmp	r3, r4	@ D.32288, D.32288
	blt	.L169	@,
.L162:
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	adds	r0, r0, #0	@ D.32289,,
	movne	r0, #1	@ D.32289,
	rsb	r0, r0, #0	@ D.32287, D.32289
.L158:
	add	sp, sp, #520	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r6, r7, pc}	@
.L161:
	add	r1, sp, #8	@ tmp164,,
.L169:
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	adds	r0, r0, #0	@ D.32289,,
	movne	r0, #1	@ D.32289,
	rsb	r0, r0, #0	@ D.32287, D.32289
	add	sp, sp, #520	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r6, r7, pc}	@
.L159:
	mvn	r0, #0	@ D.32287,
	b	.L158	@
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
	ldr	r5, .L187	@ tmp156,
	mov	r4, r0	@ InstID, InstID
	mov	r6, r1	@ PartitionFlag, PartitionFlag
	ldr	r3, [r5, r0, asl #2]	@ D.32295, s_pstVfmwChan
	ldr	ip, [r3, #236]	@ D.32296, _7->s32OffLineDnrMemAddr
	ldr	r7, [r3, #1608]	@ s32ThrWidth, _7->stSynExtraData.s32DSDThrWidth
	ldr	r8, [r3, #1612]	@ s32ThrHeight, _7->stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.32296
	str	ip, [sp, #8]	@ D.32296, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp134, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _15->s32OffLineDNRMemSize, _15->s32OffLineDNRMemSize
	str	r3, [sp, #16]	@ _15->s32OffLineDNRMemSize, DnrMem.Length
	str	r0, [sp, #12]	@, DnrMem.VirAddr
	mov	r0, r4	@, InstID
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L173	@,
	cmp	r6, #1	@ PartitionFlag,
	beq	.L184	@,
	cmp	r6, #0	@ PartitionFlag,
	mov	r0, r4	@, InstID
	beq	.L185	@,
	bl	DNR_OpenChan	@
.L176:
	ldr	r3, [r5, r4, asl #2]	@ tmp138, s_pstVfmwChan
	add	r1, sp, #24	@ tmp142,,
	mov	r2, #0	@ tmp140,
	str	r7, [sp, #28]	@ s32ThrWidth, stDSDParam.s32ThrWidth
	str	r8, [sp, #32]	@ s32ThrHeight, stDSDParam.s32ThrHeight
	mov	r0, r4	@, InstID
	ldr	r3, [r3, #1580]	@ _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r2, [sp, #36]	@ tmp140, stDSDParam.s32MirrorEn
	str	r2, [sp]	@ tmp140,
	str	r3, [sp, #24]	@ _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, stDSDParam.s32DSDenable
	ldmia	r1, {r1, r2, r3}	@ tmp142,,,
	bl	DNR_SetDSDParam	@
	mov	r0, r4	@, InstID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L175	@,
.L181:
	ldr	r1, [r5, r4, asl #2]	@ D.32295, s_pstVfmwChan
	ldr	r5, .L187	@ tmp143,
	add	r1, r1, #217088	@ tmp145, D.32295,
	ldr	r3, [r1, #372]	@ _37->stDnrChanCfg.s32NeedConfigDnrChan, _37->stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r3, #1	@ _37->stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.32294,
	beq	.L186	@,
.L177:
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L185:
	bl	DNR_EnableChanWithoutArrange	@
	cmp	r0, #0	@,
	beq	.L176	@,
.L175:
	mvn	r0, #0	@ D.32294,
	b	.L177	@
.L173:
	cmp	r6, #1	@ PartitionFlag,
	bne	.L181	@,
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_ArrangeMem	@
	cmp	r0, #0	@,
	beq	.L181	@,
	b	.L175	@
.L186:
	add	r1, r1, #360	@, tmp145,
	mov	r0, r4	@, InstID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@ D.32294
	bne	.L175	@,
	ldr	r3, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	add	r3, r3, #217088	@ tmp153, tmp151,
	str	r0, [r3, #372]	@ D.32294, _42->stDnrChanCfg.s32NeedConfigDnrChan
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L184:
	mov	r3, r8	@, s32ThrHeight
	mov	r2, r7	@, s32ThrWidth
	add	r1, sp, #8	@,,
	mov	r0, r4	@, InstID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L176	@,
	b	.L175	@
.L188:
	.align	2
.L187:
	.word	s_pstVfmwChan
	.fnend
	.size	FSP_EnableDnr, .-FSP_EnableDnr
	.align	2
	.type	FSP_SetRef.part.1, %function
FSP_SetRef.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L225	@ tmp141,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, [ip, r0, asl #2]	@ D.32302, s_pFspInst
	cmp	r5, #0	@ D.32302,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r4, #432	@ tmp143,
	uxtb	r8, r2	@ D.32303, IsRef
	mla	r4, r4, r1, r5	@ tmp144, tmp143, LogicFrameID, D.32302
	mov	r7, r1	@ LogicFrameID, LogicFrameID
	mov	r6, r2	@ IsRef, IsRef
	ldrsb	r3, [r4, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	strb	r8, [r4, #96]	@ D.32303, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].s32IsRef
	cmp	r3, #0	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r4, #504]	@ D.32304, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	cmp	r3, #0	@ D.32304,
	beq	.L193	@,
	ldr	lr, [r3, #44]	@ _7->u32Tick, _7->u32Tick
	ldr	r1, [r4, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	lr, r1	@ _7->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L220	@,
.L193:
	mov	r3, #432	@ tmp172,
	mla	r3, r3, r7, r5	@ tmp173, tmp172, LogicFrameID, D.32302
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.32303, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].PmvIdc
	cmp	r2, #19	@ D.32303,
	bhi	.L195	@,
	cmp	r6, #1	@ IsRef,
	beq	.L221	@,
	cmp	r6, #0	@ IsRef,
	bne	.L198	@,
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	beq	.L222	@,
.L203:
	mov	r3, #432	@ tmp210,
	mla	r3, r3, r7, r5	@ tmp211, tmp210, LogicFrameID, D.32302
	ldr	r3, [r3, #508]	@ D.32304, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.32304,
	beq	.L209	@,
	ldrsb	r2, [r3, #2]	@ _24->DispState, _24->DispState
	cmp	r2, #1	@ _24->DispState,
	moveq	r2, #0	@ tmp214,
	streqb	r2, [r3, #2]	@ tmp214, _24->DispState
.L209:
	mov	r3, #432	@ tmp239,
	mla	r5, r3, r7, r5	@ tmp240, tmp239, LogicFrameID, D.32302
	str	r6, [r5, #504]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L195:
	cmp	r6, #0	@ IsRef,
	beq	.L203	@,
.L197:
	mov	r3, #432	@ tmp248,
	mla	r3, r3, r7, r5	@ tmp249, tmp248, LogicFrameID, D.32302
	ldr	r2, [r3, #508]	@ D.32304, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.32304,
	beq	.L223	@,
.L204:
	mov	r3, #432	@ tmp219,
	ldr	r0, [r2, #44]	@ _68->u32Tick, _68->u32Tick
	mla	r3, r3, r7, r5	@ tmp220, tmp219, LogicFrameID, D.32302
	ldr	r1, [r3, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	r6, #1	@ IsRef,
	cmpeq	r0, r1	@, _68->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L224	@,
.L201:
	cmp	r6, #0	@ IsRef,
	beq	.L209	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L221:
	ldr	r1, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	add	r3, r3, #496	@ tmp179, tmp173,
	cmp	r1, #1	@ MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	bne	.L197	@,
	sxtab	r2, r5, r2	@ tmp182, D.32302, D.32303
	mov	r1, #2	@ tmp189,
	strb	r6, [r2, #14]	@ IsRef, _2->IsPmvInUse
	str	r1, [r3, #4]	@ tmp189, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
.L198:
	mov	r3, #432	@ tmp244,
	mla	r3, r3, r7, r5	@ tmp245, tmp244, LogicFrameID, D.32302
	ldr	r2, [r3, #508]	@ D.32304, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.32304,
	bne	.L204	@,
	b	.L201	@
.L220:
	ldrsb	r1, [r3]	@ D.32306, _7->IsDecRef
	cmp	r2, r1	@ IsRef, D.32306
	beq	.L194	@,
	ldr	r1, [ip, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r1, #0	@ g_IsFrameIntfValid,
	beq	.L194	@,
	ldr	ip, [ip, #20]	@ D.32307, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r3, #12]	@ D.32306, _7->PhyAddr
	cmp	ip, #0	@ D.32307,
	beq	.L194	@,
	blx	ip	@ D.32307
	ldr	r3, [r4, #504]	@ D.32304, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
.L194:
	strb	r8, [r3]	@ D.32303, _56->IsDecRef
	b	.L193	@
.L222:
	sxtab	r2, r5, r2	@ tmp196, D.32302, D.32303
	strb	r6, [r2, #14]	@ IsRef, _2->IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].PmvAddr
	str	r6, [r3, #500]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	b	.L203	@
.L224:
	ldrsb	r1, [r2, #2]	@ _68->DispState, _68->DispState
	cmp	r1, #1	@ _68->DispState,
	moveq	r1, #2	@ tmp230,
	streqb	r1, [r2, #2]	@ tmp230, _68->DispState
	streqb	r1, [r3, #97]	@ tmp230, MEM[(struct FSP_LOGIC_FS_S *)_2].stLogicFs[LogicFrameID_5(D)].s32DispState
	b	.L201	@
.L223:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	.align	2
.L225:
	.word	.LANCHOR0
	.fnend
	.size	FSP_SetRef.part.1, .-FSP_SetRef.part.1
	.align	2
	.type	FSP_PrintContext.part.3, %function
FSP_PrintContext.part.3:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	FSP_PrintContext.part.3, .-FSP_PrintContext.part.3
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
	ldr	r4, .L230	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	add	r0, r4, #24	@, tmp110,
	mov	r1, #8	@,
	bl	__memzero	@
	mvn	r2, #0	@ tmp115,
	mov	r3, #0	@ tmp117,
	add	r0, r4, #8	@, tmp110,
	strh	r2, [r4, #26]	@ movhi	@ tmp115, s_FspVoQue[0].history
	mov	r1, #16	@,
	str	r3, [r4, #4]	@ tmp117, g_IsFrameIntfValid
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L231:
	.align	2
.L230:
	.word	.LANCHOR0
	.fnend
	.size	FSP_Init, .-FSP_Init
	.align	2
	.global	FSP_Exit
	.type	FSP_Exit, %function
FSP_Exit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L237	@ tmp112,
	ldr	r3, [r3]	@ D.32325, s_pFspInst
	cmp	r3, #0	@ D.32325,
	bxeq	lr	@
	ldr	r2, [r3, #4]	@ _13->eFspInstState, _13->eFspInstState
	cmp	r2, #1	@ _13->eFspInstState,
	moveq	r2, #0	@ tmp114,
	streq	r2, [r3, #4]	@ tmp114, _13->eFspInstState
	bx	lr	@
.L238:
	.align	2
.L237:
	.word	.LANCHOR0
	.fnend
	.size	FSP_Exit, .-FSP_Exit
	.align	2
	.global	FSP_ConfigAttribute
	.type	FSP_ConfigAttribute, %function
FSP_ConfigAttribute:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bne	.L242	@,
	ldr	r3, .L243	@ tmp117,
	ldr	r3, [r3]	@ D.32330, s_pFspInst
	ldr	r2, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r2, #1	@ _5->eFspInstState,
	bne	.L242	@,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ D.32332, pstAttr_7(D)->s8LowBufEnable
	strb	r2, [r3, #1]	@ D.32332, _5->s8LowBufEnable
	bx	lr	@
.L242:
	mvn	r0, #0	@ D.32329,
	bx	lr	@
.L244:
	.align	2
.L243:
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
	cmp	r0, #0	@ pFspInst
	beq	.L247	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #40	@ D.32336, pFspInst,
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r0	@ pFspInst, pFspInst
	ldrb	r5, [r0]	@ zero_extendqisi2	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	mov	r2, #20	@,
	mov	r1, r6	@, D.32336
	add	r0, sp, #4	@ tmp138,,
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	ldr	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	bl	memcpy	@
	mov	r0, r4	@, pFspInst
	movw	r1, #34664	@,
	bl	__memzero	@
	ldr	r3, .L251	@ tmp127,
	sxtb	r2, r5	@ D.32337, s8TmpInstID
	strb	r8, [r4, #1]	@ s8TmpLowBufEnable, pFspInst_3(D)->s8LowBufEnable
	strb	r5, [r4]	@ s8TmpInstID, pFspInst_3(D)->s32InstID
	ldr	r3, [r3, r2, asl #2]	@ tmp129, s_pstVfmwChan
	str	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_3(D)->eFspInstState
	ldr	r3, [r3, #1580]	@ _15->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _15->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _15->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@ D.32335,
	beq	.L250	@,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L250:
	add	r1, sp, #4	@ tmp139,,
	mov	r0, r6	@, D.32336
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, #0	@ D.32335,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L247:
	mvn	r0, #0	@ D.32335,
	bx	lr	@
.L252:
	.align	2
.L251:
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
	bne	.L255	@,
	ldr	r3, .L259	@ tmp115,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r3]	@ D.32348, s_pFspInst
	cmp	r5, #0	@ D.32348,
	beq	.L257	@,
	ldr	r4, [r5, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r4, #0	@ _5->eFspInstState,
	bne	.L257	@,
	mov	r0, r5	@, D.32348
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp117,
	mov	r0, r4	@ D.32347, _5->eFspInstState
	str	r3, [r5, #4]	@ tmp117, _5->eFspInstState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L257:
	mvn	r0, #0	@ D.32347,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L255:
	mvn	r0, #0	@ D.32347,
	bx	lr	@
.L260:
	.align	2
.L259:
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
	bxne	lr	@
	ldr	r3, .L266	@ tmp113,
	ldr	r3, [r3]	@ D.32354, s_pFspInst
	cmp	r3, #0	@ D.32354,
	bxeq	lr	@
	ldr	r2, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r2, #1	@ _5->eFspInstState,
	streq	r0, [r3, #4]	@ InstID, _5->eFspInstState
	bx	lr	@
.L267:
	.align	2
.L266:
	.word	.LANCHOR0
	.fnend
	.size	FSP_DisableInstance, .-FSP_DisableInstance
	.align	2
	.global	FSP_ResetInstance
	.type	FSP_ResetInstance, %function
FSP_ResetInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	bne	.L275	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r6, .L294	@ tmp138,
	ldr	r8, [r6]	@ D.32370, s_pFspInst
	cmp	r8, #0	@ D.32370,
	beq	.L276	@,
	add	r4, r8, #27648	@ ivtmp.284, D.32370,
	add	r5, r8, #30976	@ D.32377, D.32370,
	add	r4, r4, #150	@ ivtmp.284, ivtmp.284,
	add	r5, r5, #150	@ D.32377, D.32377,
	mov	r7, r6	@ tmp139, tmp138
.L274:
	ldr	r1, [r4, #10]	@ D.32371, MEM[base: _30, offset: 10B]
	cmp	r1, #0	@ D.32371,
	beq	.L271	@,
	ldr	r3, [r6, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L271	@,
	ldrsb	r3, [r4, #-2]	@ MEM[base: _30, offset: 4294967294B], MEM[base: _30, offset: 4294967294B]
	cmp	r3, #0	@ MEM[base: _30, offset: 4294967294B],
	beq	.L273	@,
	ldr	r3, [r7, #20]	@ D.32375, g_FspFrameIntf.SetFrameRef
	mov	r2, #0	@,
	mov	r0, r2	@,
	cmp	r3, r2	@ D.32375,
	beq	.L273	@,
	blx	r3	@ D.32375
.L273:
	ldrsb	r3, [r4]	@ MEM[base: _30, offset: 0B], MEM[base: _30, offset: 0B]
	cmp	r3, #0	@ MEM[base: _30, offset: 0B],
	beq	.L271	@,
	ldr	r3, [r6, #16]	@ D.32374, g_FspFrameIntf.ReleaseFrame
	mov	r0, #0	@,
	ldr	r1, [r4, #10]	@ D.32371, MEM[base: _30, offset: 10B]
	cmp	r3, r0	@ D.32374,
	beq	.L271	@,
	blx	r3	@ D.32374
.L271:
	add	r4, r4, #52	@ ivtmp.284, ivtmp.284,
	cmp	r4, r5	@ ivtmp.284, D.32377
	bne	.L274	@,
	mov	r0, r8	@, D.32370
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.32369,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L275:
	mvn	r0, #0	@ D.32369,
	bx	lr	@
.L276:
	mvn	r0, #0	@ D.32369,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L295:
	.align	2
.L294:
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
	cmp	r0, #0	@ InstID
	bne	.L311	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, .L332	@ tmp175,
	ldr	r7, [r9]	@ D.32409, s_pFspInst
	cmp	r7, #0	@ D.32409,
	beq	.L312	@,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #27648	@,
	add	r0, r7, #96	@, D.32409,
	bl	__memzero	@
	ldrsb	r3, [r7, #10]	@ _13->s32DecFsNum, _13->s32DecFsNum
	cmp	r3, #0	@ _13->s32DecFsNum,
	addgt	r4, r7, #27648	@ ivtmp.312, D.32409,
	addgt	r4, r4, #192	@ ivtmp.312, ivtmp.312,
	movgt	r6, r5	@ tmp179, i
	movgt	r8, r9	@ tmp178, tmp175
	ble	.L306	@,
.L305:
	ldr	r1, [r4, #-32]	@ D.32411, MEM[base: _70, offset: 4294967264B]
	add	r5, r5, #1	@ i, i,
	cmp	r1, #0	@ D.32411,
	beq	.L302	@,
	ldr	r3, [r9, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L302	@,
	ldrsb	r3, [r4, #-44]	@ MEM[base: _70, offset: 4294967252B], MEM[base: _70, offset: 4294967252B]
	cmp	r3, #0	@ MEM[base: _70, offset: 4294967252B],
	beq	.L304	@,
	ldr	r3, [r8, #20]	@ D.32414, g_FspFrameIntf.SetFrameRef
	mov	r2, #0	@,
	mov	r0, r2	@,
	cmp	r3, r2	@ D.32414,
	beq	.L304	@,
	blx	r3	@ D.32414
.L304:
	ldrsb	r3, [r4, #-42]	@ MEM[base: _70, offset: 4294967254B], MEM[base: _70, offset: 4294967254B]
	cmp	r3, #0	@ MEM[base: _70, offset: 4294967254B],
	beq	.L302	@,
	ldr	r3, [r9, #16]	@ D.32413, g_FspFrameIntf.ReleaseFrame
	mov	r0, #0	@,
	ldr	r1, [r4, #-32]	@ D.32411, MEM[base: _70, offset: 4294967264B]
	cmp	r3, r0	@ D.32413,
	beq	.L302	@,
	blx	r3	@ D.32413
.L302:
	strb	r6, [r4, #-44]	@ tmp179, MEM[base: _70, offset: 4294967252B]
	strb	r6, [r4, #-42]	@ tmp179, MEM[base: _70, offset: 4294967254B]
	str	r6, [r4], #52	@ tmp179, MEM[base: _70, offset: 0B]
	ldrsb	r3, [r7, #10]	@ D.32411, _13->s32DecFsNum
	cmp	r3, r5	@ D.32411, i
	bgt	.L305	@,
.L306:
	ldrsb	r0, [r7, #11]	@ D.32410, _13->s32DispFsNum
	cmp	r0, #0	@ D.32410,
	addgt	r3, r7, #30976	@ ivtmp.300, D.32409,
	movgt	r2, #0	@ i,
	addgt	r3, r3, #148	@ ivtmp.300, ivtmp.300,
	movgt	r1, r2	@ tmp177, i
	ble	.L300	@,
.L309:
	add	r2, r2, #1	@ i, i,
	strb	r1, [r3]	@ tmp177, MEM[base: _2, offset: 0B]
	cmp	r2, r0	@ i, D.32410
	strb	r1, [r3, #2]	@ tmp177, MEM[base: _2, offset: 2B]
	str	r1, [r3, #44]	@ tmp177, MEM[base: _2, offset: 44B]
	add	r3, r3, #52	@ ivtmp.300, ivtmp.300,
	bne	.L309	@,
.L300:
	ldrsb	r2, [r7, #13]	@ D.32410, _13->s32PmvNum
	cmp	r2, #0	@ D.32410,
	addgt	r2, r2, #13	@ D.32406, D.32410,
	addgt	r3, r7, #13	@ ivtmp.291, D.32409,
	addgt	r2, r7, r2	@ D.32415, D.32409, D.32406
	movgt	r1, #0	@ tmp176,
	ble	.L308	@,
.L310:
	strb	r1, [r3, #1]!	@ tmp176, MEM[base: _25, offset: 0B]
	cmp	r3, r2	@ ivtmp.291, D.32415
	bne	.L310	@,
.L308:
	mov	r0, #0	@ tmp169,
	str	r0, [r7, #36]	@ tmp169, _13->u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L311:
	mvn	r0, #0	@ D.32407,
	bx	lr	@
.L312:
	mvn	r0, #0	@ D.32407,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L333:
	.align	2
.L332:
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
	clz	r3, r1	@ tmp126, pstFspInstCfg
	mov	r3, r3, lsr #5	@ tmp126, tmp126,
	cmp	r0, #0	@ InstID,
	orrne	r3, r3, #1	@,, tmp129, tmp126
	cmp	r3, #0	@ tmp129,
	bne	.L339	@,
	ldr	ip, .L345	@ tmp130,
	ldr	r2, [ip, r0, asl #2]	@ D.32420, s_pFspInst
	cmp	r2, #0	@ D.32420,
	beq	.L339	@,
	ldr	r2, [r2, #4]	@ _7->eFspInstState, _7->eFspInstState
	cmp	r2, #1	@ _7->eFspInstState,
	bne	.L339	@,
	ldr	r2, .L345+4	@ tmp135,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	strb	r3, [r1]	@ tmp129, pstFspInstCfg_6(D)->s32DispLoopEnable
	ldr	r3, [r2, r0, asl #2]	@ tmp136, s_pstVfmwChan
	ldr	r5, [ip, r0, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r3, #1580]	@ _11->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _11->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _11->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L336	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L336:
	mov	r1, r4	@, pstFspInstCfg
	add	r0, r5, #60	@, pstInst,
	mov	r2, #36	@,
	bl	memcpy	@
	mov	r0, #0	@ D.32419,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L339:
	mvn	r0, #0	@ D.32419,
	bx	lr	@
.L346:
	.align	2
.L345:
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
	mov	r6, r0	@ InstID, InstID
	mov	r4, r1	@ MemPhyAddr, MemPhyAddr
	add	r0, sp, #136	@ tmp1078,,
	mov	r1, #416	@,
	mov	r5, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r6, #0	@ InstID,
	bne	.L425	@,
	ldr	r3, .L445	@ tmp1079,
	ldr	r10, [r3]	@ D.32592, s_pFspInst
	cmp	r10, #0	@ D.32592,
	beq	.L425	@,
	add	r3, r10, #32768	@ tmp1015, D.32592,
	mov	r0, r6	@, InstID
	str	r3, [sp, #92]	@ tmp1015, %sfp
	str	r4, [r3, #1880]	@ MemPhyAddr, _22->MemAddr
	str	r5, [r3, #1884]	@ MemSize, _22->MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bls	.L428	@,
.L351:
	ldrsb	r3, [r10, #64]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32UserDec
	cmp	r3, #1	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32UserDec,
	bne	.L425	@,
	ldr	r2, [r10, #92]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.32588,
	ldreqb	r3, [r10, #60]	@ zero_extendqisi2	@ D.32600, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable
	bne	.L429	@,
.L354:
	ldr	r1, .L445+4	@ tmp452,
	sxtb	r3, r3	@ D.32597, D.32600
	ldrsb	r2, [r10, #65]	@ D.32589, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum
	mov	r6, #4	@ D.32597,
	ldr	ip, [r1, #36]	@ D.32594, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	smlabb	r6, r6, r3, r2	@ MinFsNum, D.32597, D.32597, D.32589
	cmp	ip, #0	@ D.32594,
	beq	.L425	@,
	ldr	r3, [r10, #76]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	mov	r1, #64	@ tmp455,
	ldr	r2, [r10, #72]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	mov	r0, #0	@ tmp457,
	str	r1, [sp, #20]	@ tmp455,
	add	lr, sp, #136	@ tmp1083,,
	str	r0, [sp, #12]	@ tmp457,
	mov	r7, #40	@ tmp459,
	str	lr, [sp, #16]	@ tmp1083,
	mov	r1, r5	@, MemSize
	ldrsb	lr, [r10, #64]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32UserDec
	mov	r0, r4	@, MemPhyAddr
	stmib	sp, {r7, lr}	@,,
	ldrsb	lr, [r10, #68]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.32594
	cmp	r0, #0	@ Ret
	bne	.L425	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r10, #9]	@ MemArrange.ValidFrameNum, _22->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r6, r3	@ MinFsNum, MemArrange.ValidFrameNum
	bgt	.L425	@,
	ldrsb	r3, [r10, #60]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable
	strb	r0, [r10, #11]	@ Ret, _22->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable,
	strb	r0, [r10, #12]	@ Ret, _22->s32TfFsNum
	beq	.L430	@,
	ldrb	r3, [r10, #65]	@ zero_extendqisi2	@ D.32600, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum
	strb	r3, [r10, #10]	@ D.32600, _22->s32DecFsNum
.L359:
	sxtb	r4, r3	@ D.32588, D.32600
	ldr	r3, [sp, #136]	@ D.32589, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.32589, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.411,,
	str	r10, [sp, #128]	@ D.32592, %sfp
	str	r3, [sp, #72]	@ D.32589, %sfp
	ldr	r3, [sp, #92]	@ tmp1015, %sfp
	str	r2, [sp, #80]	@ D.32589, %sfp
	ldr	r0, [r1, #-408]!	@ D.32588, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.32589, _22->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.32588, MemArrange.ChromOffset
	ldr	r3, [r10, #72]	@ D.32589, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.411, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.32588, %sfp
	ldr	r2, [sp, #404]	@ D.32588, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.32589, %sfp
	ldr	r3, [r10, #76]	@ D.32589, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.32588, %sfp
	ldr	r2, [sp, #408]	@ D.32588, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.32589, %sfp
	mov	r3, r10	@ ivtmp.409, D.32592
	str	r0, [sp, #120]	@ D.32588, %sfp
	str	r2, [sp, #116]	@ D.32588, %sfp
	str	r10, [sp, #132]	@ ivtmp.373, %sfp
	str	r4, [sp, #104]	@ D.32588, %sfp
	b	.L363	@
.L431:
	ldr	r2, [sp, #84]	@ D.32587, %sfp
	str	r1, [r2]	@ i, MEM[base: _487, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.411, %sfp
	ldr	r0, [r2]	@ D.32588, MEM[base: _484, offset: 0B]
	ldr	r2, [sp, #56]	@ D.32587, %sfp
	str	r0, [r10]	@ D.32588, MEM[base: _478, offset: 0B]
	ldr	r0, [sp, #72]	@ D.32589, %sfp
	str	r0, [r9]	@ D.32589, MEM[base: _474, offset: 0B]
	ldr	r0, [sp, #96]	@ D.32589, %sfp
	str	r0, [r8]	@ D.32589, MEM[base: _467, offset: 0B]
	ldr	r0, [sp, #100]	@ D.32589, %sfp
	str	r0, [r7]	@ D.32589, MEM[base: _519, offset: 0B]
	ldr	r0, [sp, #108]	@ D.32588, %sfp
	str	r0, [r6]	@ D.32588, MEM[base: _521, offset: 0B]
	ldr	r0, [sp, #112]	@ D.32588, %sfp
	str	r0, [r5]	@ D.32588, MEM[base: _523, offset: 0B]
	ldr	r0, [sp, #116]	@ D.32588, %sfp
	str	r0, [r4]	@ D.32588, MEM[base: _525, offset: 0B]
	mov	r0, #0	@ tmp1344,
	strb	r0, [lr]	@ tmp1344, MEM[base: _527, offset: 0B]
	strb	r0, [ip]	@ tmp1343, MEM[base: _529, offset: 0B]
	strb	r0, [r2]	@ tmp1342, MEM[base: _531, offset: 0B]
	ldr	r2, [sp, #60]	@ D.32587, %sfp
	ldr	r0, [sp, #80]	@ D.32589, %sfp
	str	r0, [r2]	@ D.32589,* D.32587
.L361:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.411, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.409, ivtmp.409,
	add	r2, r2, #4	@ ivtmp.411, ivtmp.411,
	str	r2, [sp, #76]	@ ivtmp.411, %sfp
	beq	.L362	@,
	ldr	r2, [sp, #92]	@ tmp1015, %sfp
	ldr	r2, [r2, #1872]	@ D.32589, _22->ImgSlotLen
	str	r2, [sp, #80]	@ D.32589, %sfp
.L363:
	add	r2, r3, #27648	@ D.32587, ivtmp.409,
	mov	r0, r2	@ D.32587, D.32587
	add	r2, r2, #152	@ D.32587, D.32587,
	str	r2, [sp, #84]	@ D.32587, %sfp
	add	r10, r0, #160	@ D.32587, D.32587,
	ldr	r2, [sp, #104]	@ D.32588, %sfp
	add	r9, r0, #168	@ D.32587, D.32587,
	add	r8, r0, #172	@ D.32587, D.32587,
	add	r7, r0, #176	@ D.32587, D.32587,
	cmp	r2, r1	@ D.32588, i
	add	r2, r0, #160	@ D.32587, D.32587,
	str	r2, [sp, #88]	@ D.32587, %sfp
	add	r2, r0, #168	@ D.32587, D.32587,
	str	r2, [sp, #24]	@ D.32587, %sfp
	add	r2, r0, #172	@ D.32587, D.32587,
	str	r2, [sp, #28]	@ D.32587, %sfp
	add	r2, r0, #176	@ D.32587, D.32587,
	str	r2, [sp, #32]	@ D.32587, %sfp
	add	r2, r0, #180	@ D.32587, D.32587,
	str	r2, [sp, #36]	@ D.32587, %sfp
	add	r2, r0, #184	@ D.32587, D.32587,
	str	r2, [sp, #40]	@ D.32587, %sfp
	add	r2, r0, #188	@ D.32587, D.32587,
	str	r2, [sp, #44]	@ D.32587, %sfp
	add	r2, r0, #148	@ D.32587, D.32587,
	str	r2, [sp, #48]	@ D.32587, %sfp
	add	r2, r0, #149	@ D.32587, D.32587,
	str	r2, [sp, #52]	@ D.32587, %sfp
	add	r2, r0, #150	@ D.32587, D.32587,
	str	r2, [sp, #56]	@ D.32587, %sfp
	add	r2, r0, #196	@ D.32587, D.32587,
	str	r2, [sp, #60]	@ D.32587, %sfp
	add	r2, r0, #152	@ D.32587, D.32587,
	str	r2, [sp, #64]	@ D.32587, %sfp
	add	r2, r0, #150	@ D.32587, D.32587,
	str	r2, [sp, #68]	@ D.32587, %sfp
	add	r2, r0, #196	@ D.32587, D.32587,
	add	r6, r0, #180	@ D.32587, D.32587,
	add	r5, r0, #184	@ D.32587, D.32587,
	add	r4, r0, #188	@ D.32587, D.32587,
	add	lr, r0, #148	@ D.32587, D.32587,
	add	ip, r0, #149	@ D.32587, D.32587,
	mov	r0, r2	@ D.32587, D.32587
	bgt	.L431	@,
	ldr	r2, [sp, #64]	@ D.32587, %sfp
	mov	fp, #0	@ tmp1341,
	str	fp, [r2]	@ tmp1341, MEM[base: _535, offset: 0B]
	ldr	r2, [sp, #120]	@ D.32588, %sfp
	str	r2, [r10]	@ D.32588, MEM[base: _537, offset: 0B]
	ldr	r2, [sp, #72]	@ D.32589, %sfp
	str	r2, [r9]	@ D.32589, MEM[base: _539, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32589, %sfp
	str	r2, [r8]	@ D.32589, MEM[base: _541, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32589, %sfp
	str	r2, [r7]	@ D.32589, MEM[base: _543, offset: 0B]
	ldr	r2, [sp, #108]	@ D.32588, %sfp
	str	r2, [r6]	@ D.32588, MEM[base: _545, offset: 0B]
	ldr	r2, [sp, #112]	@ D.32588, %sfp
	str	r2, [r5]	@ D.32588, MEM[base: _547, offset: 0B]
	ldr	r2, [sp, #116]	@ D.32588, %sfp
	str	r2, [r4]	@ D.32588, MEM[base: _549, offset: 0B]
	mov	r2, r0	@ D.32587, D.32587
	strb	fp, [lr]	@ tmp1340, MEM[base: _551, offset: 0B]
	ldr	r0, [sp, #80]	@ D.32589, %sfp
	strb	fp, [ip]	@ tmp1339, MEM[base: _553, offset: 0B]
	ldr	ip, [sp, #68]	@ D.32587, %sfp
	strb	fp, [ip]	@ tmp1337, MEM[base: _555, offset: 0B]
	str	r0, [r2]	@ D.32589,* D.32587
	b	.L361	@
.L428:
	ldr	r1, .L445+8	@ tmp423,
	mov	r3, r0, asl #5	@ tmp426, eChanCapLevel,
	sub	r3, r3, r0, asl #2	@ tmp427, tmp426, eChanCapLevel,
	ldr	ip, [r10, #72]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	add	lr, r1, r3	@ tmp428, tmp423, tmp427
	ldr	r2, [r10, #76]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	ldr	r1, [r1, r3]	@ tmp437, CapItem
	ldr	r3, [lr, #4]	@ tmp438, CapItem
	mul	r2, r2, ip	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	mul	r3, r3, r1	@ D.32588, tmp438, tmp437
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r2, r3	@, D.32588, D.32588
	bgt	.L351	@,
	ldr	r2, [r10, #92]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.32588,
	ldreqb	r3, [r10, #60]	@ zero_extendqisi2	@ D.32600, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable
	beq	.L354	@,
.L429:
	ldr	r1, [r10, #88]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsWidth
	ldrb	r3, [r10, #60]	@ zero_extendqisi2	@ D.32600, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable
	cmp	r1, #0	@ D.32588,
	beq	.L354	@,
	cmp	r3, #0	@ D.32600,
	beq	.L354	@,
	ldr	r0, [r10, #76]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	cmp	r2, r0	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	bne	.L425	@,
	ldr	r2, [r10, #72]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	cmp	r1, r2	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	beq	.L354	@,
.L425:
	mvn	r0, #0	@ D.32589,
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L430:
	ldrsb	r3, [r10, #1]	@ _22->s8LowBufEnable, _22->s8LowBufEnable
	cmp	r3, #0	@ _22->s8LowBufEnable,
	beq	.L357	@,
	ldr	r3, .L445+12	@ tmp470,
	ldr	r3, [r3]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _68->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _68->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _68->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L358	@,
	ldrsb	r3, [r10, #65]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r3, #4	@ D.32588, D.32588,
	cmp	r3, r2	@ D.32588, MemArrange.ValidFrameNum
	movge	r3, r2	@ D.32588, MemArrange.ValidFrameNum
	uxtb	r3, r3	@ D.32600, D.32588
	strb	r3, [r10, #10]	@ D.32600, _22->s32DecFsNum
	b	.L359	@
.L362:
	ldr	r4, [sp, #104]	@ D.32588, %sfp
	add	r2, sp, #552	@ tmp1169,,
	ldr	r5, [sp, #92]	@ tmp1015, %sfp
	add	r0, sp, #400	@,,
	ldr	r10, [sp, #128]	@ D.32592, %sfp
	mov	r3, #1	@ tmp550,
	ldr	r6, [sp, #72]	@ D.32589, %sfp
	add	r2, r2, r4, lsl #2	@ tmp558, tmp1169, D.32588,
	ldr	lr, [sp, #132]	@ ivtmp.373, %sfp
	strb	r3, [r10, #12]	@ tmp550, _22->s32TfFsNum
	mov	r3, #0	@ tmp554,
	str	r6, [r5, #1704]	@ D.32589, _22->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.32589, %sfp
	ldr	ip, [r2, #-408]	@ tmp560, MemArrange.FrameAddr
	ldmia	r0, {r0, r1, r2}	@,,,
	str	r6, [r5, #1708]	@ D.32589, _22->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.32589, %sfp
	str	ip, [r5, #1696]	@ tmp560, _22->stTfFs[0].PhyAddr
	str	r0, [r5, #1716]	@ MemArrange.ChromOffset, _22->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.32589, _22->stTfFs[0].FsHeight
	str	r1, [r5, #1720]	@ MemArrange.LumaPixelOffset, _22->stTfFs[0].LumaPixelOffset
	str	r2, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _22->stTfFs[0].ChromaPixelOffset
	str	r3, [r5, #1688]	@ tmp554, _22->stTfFs[0].PhyFsID
	strb	r3, [r5, #1684]	@ tmp554, _22->stTfFs[0].IsDecRef
	strb	r3, [r5, #1685]	@ tmp554, _22->stTfFs[0].IsTfRef
	strb	r3, [r5, #1686]	@ tmp554, _22->stTfFs[0].DispState
	ldrb	r3, [r10, #60]	@ zero_extendqisi2	@ D.32600, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispLoopEnable
	cmp	r3, #0	@ D.32600,
	streqb	r3, [r10, #11]	@ D.32600, _22->s32DispFsNum
	streq	r3, [sp, #44]	@ D.32600, %sfp
	beq	.L365	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r2, [r10, #67]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDispFsNum, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDispFsNum
	rsb	r3, r4, r3	@ D.32588, D.32588, MemArrange.ValidFrameNum
	sub	r3, r3, #1	@ D.32588, D.32588,
	cmp	r3, #25	@ D.32588,
	movge	r3, #25	@ D.32588,
	uxtb	r3, r3	@ D.32600, D.32588
	strb	r3, [r10, #11]	@ D.32600, _22->s32DispFsNum
	sxtb	r3, r3	@ D.32588, D.32600
	str	r3, [sp, #44]	@ D.32588, %sfp
	cmp	r2, r3	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDispFsNum, D.32588
	bgt	.L425	@,
.L365:
	ldr	r3, [sp, #400]	@ D.32588, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.32589, MemArrange.VahbStride
	mov	r0, ip	@ tmp1026, i
	str	r3, [sp, #96]	@ D.32588, %sfp
	ldr	r3, [sp, #404]	@ D.32588, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.32589, %sfp
	str	r3, [sp, #100]	@ D.32588, %sfp
	ldr	r3, [sp, #408]	@ D.32588, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.32588, %sfp
	mov	r3, #1	@ D.32600,
	mov	r2, r3	@ D.32600, D.32600
	mov	r3, r4	@ D.32588, D.32588
	b	.L394	@
.L433:
	ldr	r3, [sp, #48]	@ D.32587, %sfp
	ldr	r2, [sp, #56]	@ D.32587, %sfp
	str	ip, [r3]	@ i, MEM[base: _343, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp604, %sfp
	ldr	r3, [r3, #-408]	@ D.32588, MemArrange.FrameAddr
	str	r3, [r2]	@ D.32588, MEM[base: _320, offset: 0B]
	ldr	r3, [sp, #60]	@ D.32587, %sfp
	ldr	r2, [sp, #72]	@ D.32589, %sfp
	str	r2, [r3]	@ D.32589, MEM[base: _1, offset: 0B]
	ldr	r2, [sp, #64]	@ D.32587, %sfp
	ldr	r3, [r10, #88]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.32588, MEM[base: _372, offset: 0B]
	ldr	r2, [sp, #96]	@ D.32588, %sfp
	ldr	r3, [r10, #92]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32588, MEM[base: _438, offset: 0B]
	str	r2, [r7]	@ D.32588, MEM[base: _435, offset: 0B]
	ldr	r2, [sp, #100]	@ D.32588, %sfp
	str	r2, [r6]	@ D.32588, MEM[base: _371, offset: 0B]
	ldr	r2, [sp, #104]	@ D.32588, %sfp
	str	r2, [r5]	@ D.32588, MEM[base: _368, offset: 0B]
	strb	r0, [r4]	@ tmp1026, MEM[base: _364, offset: 0B]
	strb	r0, [fp]	@ tmp1026, MEM[base: _361, offset: 0B]
	strb	r0, [r9]	@ tmp1026, MEM[base: _351, offset: 0B]
.L367:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.32589, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.373, ivtmp.373,
	str	r3, [sp, #72]	@ D.32589, %sfp
	beq	.L432	@,
	ldrsb	r1, [r10, #11]	@ D.32588, _22->s32DispFsNum
	ldrb	r2, [r10, #12]	@ zero_extendqisi2	@ D.32600, _22->s32TfFsNum
	ldrsb	r3, [r10, #10]	@ D.32588, _22->s32DecFsNum
	str	r1, [sp, #44]	@ D.32588, %sfp
.L394:
	add	r1, ip, r3	@ tmp601, i, D.32588
	sxtab	r3, r3, r2	@ tmp637, D.32588, D.32600
	sxtab	r2, r1, r2	@ tmp602, tmp601, D.32600
	add	r1, lr, #30976	@ D.32587, ivtmp.373,
	mov	r4, r1	@ D.32587, D.32587
	add	r1, r1, #152	@ D.32587, D.32587,
	str	r1, [sp, #48]	@ D.32587, %sfp
	add	r1, sp, #552	@ tmp1192,,
	add	r3, r1, r3, lsl #2	@ tmp639, tmp1196, tmp637,
	str	r3, [sp, #76]	@ tmp639, %sfp
	add	r3, r4, #160	@ D.32587, D.32587,
	str	r3, [sp, #56]	@ D.32587, %sfp
	add	r3, r4, #168	@ D.32587, D.32587,
	str	r3, [sp, #60]	@ D.32587, %sfp
	add	r3, r4, #160	@ D.32587, D.32587,
	str	r3, [sp, #80]	@ D.32587, %sfp
	add	r3, r4, #168	@ D.32587, D.32587,
	str	r3, [sp, #84]	@ D.32587, %sfp
	ldr	r3, [sp, #44]	@ D.32588, %sfp
	add	r2, r1, r2, lsl #2	@ tmp604, tmp1192, tmp602,
	add	r9, r4, #150	@ D.32587, D.32587,
	str	r2, [sp, #52]	@ tmp604, %sfp
	cmp	r3, ip	@ D.32588, i
	add	r3, r4, #176	@ D.32587, D.32587,
	str	r3, [sp, #44]	@ D.32587, %sfp
	add	r3, r4, #180	@ D.32587, D.32587,
	str	r3, [sp, #24]	@ D.32587, %sfp
	add	r3, r4, #184	@ D.32587, D.32587,
	str	r3, [sp, #28]	@ D.32587, %sfp
	add	r3, r4, #188	@ D.32587, D.32587,
	str	r3, [sp, #32]	@ D.32587, %sfp
	add	r3, r4, #148	@ D.32587, D.32587,
	add	r2, r4, #152	@ D.32587, D.32587,
	add	fp, r4, #149	@ D.32587, D.32587,
	str	r2, [sp, #68]	@ D.32587, %sfp
	add	r8, r4, #176	@ D.32587, D.32587,
	add	r2, r4, #172	@ D.32587, D.32587,
	add	r7, r4, #180	@ D.32587, D.32587,
	add	r6, r4, #184	@ D.32587, D.32587,
	add	r5, r4, #188	@ D.32587, D.32587,
	str	r2, [sp, #64]	@ D.32587, %sfp
	mov	r4, r3	@ D.32587, D.32587
	str	r2, [sp, #88]	@ D.32587, %sfp
	str	r3, [sp, #36]	@ D.32587, %sfp
	str	r9, [sp, #40]	@ D.32587, %sfp
	bgt	.L433	@,
	ldr	r3, [sp, #68]	@ D.32587, %sfp
	ldr	r2, [sp, #72]	@ D.32589, %sfp
	str	r0, [r3]	@ tmp1026, MEM[base: _331, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp639, %sfp
	ldr	r9, [r3, #-408]	@ D.32588, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.32587, %sfp
	str	r9, [r3]	@ D.32588, MEM[base: _325, offset: 0B]
	ldr	r3, [sp, #84]	@ D.32587, %sfp
	str	r2, [r3]	@ D.32589, MEM[base: _297, offset: 0B]
	ldr	r3, [sp, #88]	@ D.32587, %sfp
	ldr	r9, [r10, #88]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsWidth
	str	r9, [r3]	@ D.32588, MEM[base: _284, offset: 0B]
	ldr	r3, [r10, #92]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.32588, MEM[base: _253, offset: 0B]
	ldr	r3, [sp, #96]	@ D.32588, %sfp
	str	r3, [r7]	@ D.32588, MEM[base: _12, offset: 0B]
	ldr	r3, [sp, #100]	@ D.32588, %sfp
	str	r3, [r6]	@ D.32588, MEM[base: _9, offset: 0B]
	ldr	r3, [sp, #104]	@ D.32588, %sfp
	str	r3, [r5]	@ D.32588, MEM[base: _5, offset: 0B]
	ldr	r3, [sp, #40]	@ D.32587, %sfp
	strb	r0, [r4]	@ tmp1026, MEM[base: _429, offset: 0B]
	strb	r0, [fp]	@ tmp1026, MEM[base: _399, offset: 0B]
	strb	r0, [r3]	@ tmp1026, MEM[base: _515, offset: 0B]
	b	.L367	@
.L432:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.345,,
	add	r0, r10, #34560	@ ivtmp.351, D.32592,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r10, #14	@ ivtmp.355, D.32592,
	mov	lr, r2	@ tmp1025, i
	movge	r3, #20	@ D.32588,
	uxtb	r3, r3	@ D.32600, D.32588
	strb	r3, [r10, #13]	@ D.32600, _22->s32PmvNum
	b	.L372	@
.L434:
	ldrb	r3, [r10, #13]	@ zero_extendqisi2	@ D.32600, _22->s32PmvNum
.L372:
	sxtb	r3, r3	@ D.32588, D.32600
	add	ip, ip, #4	@ ivtmp.345, ivtmp.345,
	cmp	r3, r2	@ D.32588, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.351, ivtmp.351,
	add	r1, r1, #1	@ ivtmp.355, ivtmp.355,
	ldrgt	r3, [ip, #-4]	@ D.32588, MEM[base: _256, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.32588, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.32588,
	strb	lr, [r1, #-1]	@ tmp1025,
	bne	.L434	@,
	ldr	r8, [sp, #92]	@ tmp1015, %sfp
	add	r4, r10, #24576	@ tmp1016, D.32592,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r3, #0	@ tmp681,
	ldr	r2, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r7, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r8, #1788]	@ MemArrange.HafPmvOffset, _22->s32HalfPmvOffset
	ldr	lr, [r4, #3232]	@ D.32588, _22->stDecFs[0].PhyAddr
	str	r2, [r4, #3188]	@ MemArrange.VahbStride, _22->stDummyPhyFs.Stride
	str	r3, [r4, #3172]	@ tmp681, _22->stDummyPhyFs.PhyFsID
	str	lr, [r4, #3180]	@ D.32588, _22->stDummyPhyFs.PhyAddr
	ldr	r2, [r10, #72]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	ldr	r6, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	ldr	r5, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r4, #3192]	@ D.32588, _22->stDummyPhyFs.FsWidth
	ldr	r1, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r0, [r10, #76]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	ldr	ip, [sp, #140]	@ D.32588, MemArrange.TotalMemUsed
	strb	r3, [r4, #3168]	@ tmp681, _22->stDummyPhyFs.IsDecRef
	str	r0, [r4, #3196]	@ D.32588, _22->stDummyPhyFs.FsHeight
	strb	r3, [r4, #3169]	@ tmp681, _22->stDummyPhyFs.IsTfRef
	strb	r3, [r4, #3170]	@ tmp681, _22->stDummyPhyFs.DispState
	str	r7, [r4, #3200]	@ MemArrange.ChromOffset, _22->stDummyPhyFs.ChromOffset
	str	r6, [r4, #3204]	@ MemArrange.LumaPixelOffset, _22->stDummyPhyFs.LumaPixelOffset
	str	r5, [r4, #3208]	@ MemArrange.ChromaPixelOffset, _22->stDummyPhyFs.ChromaPixelOffset
	str	r1, [r8, #1888]	@ MemArrange.u32StrideByte, _22->StrideByte
	str	ip, [r8, #1876]	@ D.32588, _22->TotalMemUsed
	ldr	r3, [r10, #40]	@ _22->stPreInfo.s32PreWidth, _22->stPreInfo.s32PreWidth
	cmp	r2, r3	@ D.32588, _22->stPreInfo.s32PreWidth
	beq	.L435	@,
.L373:
	ldr	r5, .L445+12	@ tmp1011,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r7, [r3, #1580]	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L436	@,
.L396:
	ldrsb	r3, [r10, #10]	@ _22->s32DecFsNum, _22->s32DecFsNum
	ldrsb	r1, [r10, #65]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum
	str	r2, [r10, #40]	@ D.32588, _22->stPreInfo.s32PreWidth
	str	r0, [r10, #44]	@ D.32588, _22->stPreInfo.s32PreHeight
	str	r3, [r10, #48]	@ _22->s32DecFsNum, _22->stPreInfo.s32PreDecNum
	ldr	r3, [r4, #3284]	@ _22->stDecFs[1].PhyAddr, _22->stDecFs[1].PhyAddr
	str	r1, [r10, #56]	@ MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum, _22->stPreInfo.s32PreExpectNum
	rsb	r3, lr, r3	@ D.32588, D.32588, _22->stDecFs[1].PhyAddr
	str	r3, [r10, #52]	@ D.32588, _22->stPreInfo.s32PreDecSlotLen
.L374:
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	mov	r0, #0	@ D.32589,
	str	ip, [r3]	@ D.32588, *UsedMemSize_271(D)
	add	sp, sp, #556	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L435:
	ldr	r3, [r10, #44]	@ _22->stPreInfo.s32PreHeight, _22->stPreInfo.s32PreHeight
	cmp	r0, r3	@ D.32588, _22->stPreInfo.s32PreHeight
	bne	.L373	@,
	ldrsb	r1, [r10, #10]	@ D.32588, _22->s32DecFsNum
	ldr	r3, [r10, #48]	@ _22->stPreInfo.s32PreDecNum, _22->stPreInfo.s32PreDecNum
	cmp	r1, r3	@ D.32588, _22->stPreInfo.s32PreDecNum
	bne	.L373	@,
	ldrsb	r1, [r10, #65]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32ExpectedDecFsNum
	ldr	r3, [r10, #56]	@ _22->stPreInfo.s32PreExpectNum, _22->stPreInfo.s32PreExpectNum
	cmp	r1, r3	@ D.32588, _22->stPreInfo.s32PreExpectNum
	bne	.L373	@,
	b	.L374	@
.L357:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.32588,
	uxtb	r3, r3	@ D.32600, D.32588
	strb	r3, [r10, #10]	@ D.32600, _22->s32DecFsNum
	b	.L359	@
.L358:
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.32600, MemArrange.ValidFrameNum
	strb	r3, [r10, #10]	@ D.32600, _22->s32DecFsNum
	b	.L359	@
.L436:
	ldr	r0, .L445+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, .L445	@ tmp1254,
	ldr	r2, [r5]	@ D.32590, s_pstVfmwChan
	ldr	r6, [r3]	@ pstInst, s_pFspInst
	ldr	r1, [r2, #1608]	@ _277->stSynExtraData.s32DSDThrWidth, _277->stSynExtraData.s32DSDThrWidth
	ldr	r3, [r2, #1612]	@ _277->stSynExtraData.s32DSDThrHeight, _277->stSynExtraData.s32DSDThrHeight
	ldr	r8, [r6, #76]	@ pstInst_274->stInstCfg.s32DecFsHeight, pstInst_274->stInstCfg.s32DecFsHeight
	ldr	r0, [r6, #72]	@ pstInst_274->stInstCfg.s32DecFsWidth, pstInst_274->stInstCfg.s32DecFsWidth
	cmp	r8, r3	@ pstInst_274->stInstCfg.s32DecFsHeight, _277->stSynExtraData.s32DSDThrHeight
	cmple	r0, r1	@, pstInst_274->stInstCfg.s32DecFsWidth, _277->stSynExtraData.s32DSDThrWidth
	movle	r3, #1	@ tmp738,
	movgt	r3, #0	@ tmp738,
	bgt	.L375	@,
	ldr	r3, [r2, #1604]	@ _277->stSynExtraData.s32DnrEnable, _277->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _277->stSynExtraData.s32DnrEnable,
	beq	.L437	@,
	mov	r0, #0	@,
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	bne	.L383	@,
	mov	r1, r7	@, _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	beq	.L383	@,
	ldr	r8, .L445+20	@ tmp1012,
.L397:
	ldr	r3, [r5]	@ D.32590, s_pstVfmwChan
	mov	r1, #1	@ tmp847,
	ldr	r0, .L445+16	@,
	ldr	r2, [r3, #236]	@ D.32588, _288->s32OffLineDnrMemAddr
	str	r1, [r3, #1604]	@ tmp847, _288->stSynExtraData.s32DnrEnable
	str	r2, [r8, #2932]	@ D.32588, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r3, [r3, #240]	@ D.32588, _288->s32OffLineDNRMemSize
	str	r3, [r8, #2936]	@ D.32588, s_DnrChan[0].s32OffLineDNRMemSize
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r6, #0	@ s32Ret,
	bne	.L425	@,
.L384:
	ldr	r2, [r10, #72]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsWidth
	ldr	r0, [r10, #76]	@ D.32588, MEM[(struct FSP_INST_CFG_S *)_22 + 60B].s32DecFsHeight
	ldr	lr, [r4, #3232]	@ D.32588, _22->stDecFs[0].PhyAddr
	ldr	ip, [sp, #140]	@ D.32588, MemArrange.TotalMemUsed
	b	.L396	@
.L375:
	ldr	r1, [r2, #1604]	@ _277->stSynExtraData.s32DnrEnable, _277->stSynExtraData.s32DnrEnable
	cmp	r1, #1	@ _277->stSynExtraData.s32DnrEnable,
	beq	.L438	@,
	ldrsb	r1, [r6, #10]	@ pstInst_274->s32DecFsNum, pstInst_274->s32DecFsNum
	add	r2, r6, #32768	@ tmp947, pstInst,
	cmp	r1, #0	@ pstInst_274->s32DecFsNum,
	ldr	ip, [r2, #1872]	@ s32ImgSize, pstInst_274->ImgSlotLen
	ble	.L386	@,
	add	r9, r6, #27648	@ ivtmp.332, pstInst,
	str	r4, [sp, #24]	@ tmp1016, %sfp
	mov	r8, r3	@ i, tmp738
	add	r9, r9, #160	@ ivtmp.332, ivtmp.332,
	mov	r4, ip	@ s32ImgSize, s32ImgSize
	b	.L393	@
.L440:
	ldr	r3, [r5]	@ D.32590, s_pstVfmwChan
	add	r3, r3, r8, lsl #4	@ tmp954, D.32590, i,
	add	r2, r3, #216064	@ tmp956, tmp954,
	add	r3, r3, #212992	@ tmp966, tmp954,
	str	r0, [r2, #360]	@ s32UsingCount, _356->stFrameArray[i_455].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r4, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
.L392:
	ldrsb	r3, [r6, #10]	@ D.32588, pstInst_274->s32DecFsNum
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #52	@ ivtmp.332, ivtmp.332,
	cmp	r8, r3	@ i, D.32588
	bge	.L439	@,
.L393:
	ldr	fp, [r9]	@ s32FrameStartAddr, MEM[base: _137, offset: 0B]
	mov	r2, r4	@, s32ImgSize
	mov	r0, #0	@,
	mov	r1, fp	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L440	@,
	ble	.L383	@,
	ldr	r3, [r5]	@ D.32590, s_pstVfmwChan
	add	r3, r3, r8, lsl #4	@ tmp974, D.32590, i,
	add	r2, r3, #216064	@ tmp976, tmp974,
	add	r3, r3, #212992	@ tmp986, tmp974,
	str	r7, [r2, #360]	@ tmp1024, _357->stFrameArray[i_455].eFrameState
	str	fp, [r2, #364]	@ s32FrameStartAddr,
	str	r4, [r3, #3440]	@ s32ImgSize,
	str	r0, [r3, #3444]	@ s32UsingCount,
	b	.L392	@
.L437:
	ldr	r8, .L445+20	@ tmp1012,
	add	r3, r6, #32768	@ tmp747, pstInst,
	ldr	r1, [r8, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	mov	r0, r1	@ s32DnrStartAddr, s32DnrStartAddr
	str	r1, [sp, #24]	@ s32DnrStartAddr, %sfp
	ldr	r1, [r8, #2936]	@ s32DnrSize, s_DnrChan[0].s32OffLineDNRMemSize
	str	r0, [r2, #236]	@ s32DnrStartAddr, _277->s32OffLineDnrMemAddr
	add	r0, r0, r1	@ s32DnrEndAddr, s32DnrStartAddr, s32DnrSize
	str	r0, [sp, #28]	@ s32DnrEndAddr, %sfp
	str	r1, [r2, #240]	@ s32DnrSize, _277->s32OffLineDNRMemSize
	ldrsb	r1, [r6, #10]	@ pstInst_274->s32DecFsNum, pstInst_274->s32DecFsNum
	ldr	fp, [r3, #1872]	@ s32ImgSize, pstInst_274->ImgSlotLen
	cmp	r1, #0	@ pstInst_274->s32DecFsNum,
	ble	.L377	@,
	add	r9, r6, #27648	@ ivtmp.319, pstInst,
	mov	r3, #0	@ i,
	add	r9, r9, #160	@ ivtmp.319, ivtmp.319,
	str	r2, [sp, #36]	@ D.32590, %sfp
	str	r2, [sp, #32]	@ D.32590, %sfp
	str	r10, [sp, #40]	@ D.32592, %sfp
	str	r4, [sp, #44]	@ tmp1016, %sfp
	b	.L382	@
.L442:
	mov	r2, #2	@ tmp1261,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _504->stFrameArray[i_453].s32FrameAddr
	str	r2, [r7, #360]	@ tmp1261, _504->stFrameArray[i_453].eFrameState
	mov	r2, #0	@ tmp1262,
	str	fp, [ip, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_558 + 216432B]
	str	r2, [ip, #3444]	@ tmp1262, MEM[(struct VFMW_CHAN_S *)_558 + 216436B]
.L379:
	ldrsb	r1, [r6, #10]	@ D.32588, pstInst_274->s32DecFsNum
	add	r3, r3, #1	@ i, i,
	ldr	r2, [sp, #32]	@ D.32590, %sfp
	add	r9, r9, #52	@ ivtmp.319, ivtmp.319,
	cmp	r3, r1	@ i, D.32588
	bge	.L441	@,
.L382:
	ldr	lr, [sp, #28]	@ tmp757, %sfp
	add	ip, r2, r3, lsl #4	@ tmp761, D.32590, i,
	ldr	r1, [r9]	@ s32FrameStartAddr, MEM[base: _516, offset: 0B]
	add	r7, ip, #216064	@ tmp763, tmp761,
	ldr	r4, [sp, #24]	@ s32DnrStartAddr, %sfp
	add	ip, ip, #212992	@ tmp773, tmp761,
	cmp	lr, r1	@ tmp757, s32FrameStartAddr
	add	r0, fp, r1	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	lr, #1	@ tmp757,
	movle	lr, #0	@ tmp757,
	cmp	r4, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	lr, #0	@ tmp757,
	cmp	lr, #0	@ tmp757,
	bne	.L442	@,
	ldr	r4, [sp, #28]	@ tmp783, %sfp
	ldr	ip, [sp, #24]	@ s32DnrStartAddr, %sfp
	cmp	r4, r0	@ tmp783, s32FrameEndAddr
	movge	r4, #1	@ tmp783,
	movlt	r4, #0	@ tmp783,
	cmp	ip, r0	@ s32DnrStartAddr, s32FrameEndAddr
	add	ip, r2, r3, lsl #4	@ tmp787, D.32590, i,
	add	r7, ip, #216064	@ tmp789, tmp787,
	add	ip, ip, #212992	@ tmp799, tmp787,
	movge	r4, #0	@ tmp783,
	cmp	r4, #0	@ tmp783,
	beq	.L380	@,
	str	r1, [r7, #364]	@ s32FrameStartAddr, _504->stFrameArray[i_453].s32FrameAddr
	mov	r2, #2	@ tmp1265,
	str	r2, [r7, #360]	@ tmp1265, _504->stFrameArray[i_453].eFrameState
	str	fp, [ip, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_564 + 216432B]
	str	lr, [ip, #3444]	@ tmp757, MEM[(struct VFMW_CHAN_S *)_564 + 216436B]
	b	.L379	@
.L438:
	ldr	ip, .L445+20	@ tmp860,
	add	r0, r6, #32768	@ tmp857, pstInst,
	ldrsb	lr, [r6, #10]	@ pstInst_274->s32DecFsNum, pstInst_274->s32DecFsNum
	ldr	fp, [r0, #1872]	@ s32ImgSize, pstInst_274->ImgSlotLen
	ldr	r8, [ip, #2932]	@ s32DnrStartAddr, s_DnrChan[0].s32OffLineDnrMemAddr
	cmp	lr, #0	@ pstInst_274->s32DecFsNum,
	ldr	r0, [ip, #2936]	@ s_DnrChan[0].s32OffLineDNRMemSize, s_DnrChan[0].s32OffLineDNRMemSize
	add	r0, r8, r0	@ s32DnrEndAddr, s32DnrStartAddr, s_DnrChan[0].s32OffLineDNRMemSize
	str	r0, [sp, #24]	@ s32DnrEndAddr, %sfp
	ble	.L386	@,
	add	r0, r6, #27648	@ ivtmp.327, pstInst,
	str	r1, [sp, #28]	@ _277->stSynExtraData.s32DnrEnable, %sfp
	add	r0, r0, #160	@ ivtmp.327, ivtmp.327,
	str	r10, [sp, #32]	@ D.32592, %sfp
	b	.L390	@
.L444:
	ldr	r7, [sp, #28]	@ tmp1022, %sfp
	str	r1, [ip, #364]	@ s32FrameStartAddr, _277->stFrameArray[i_454].s32FrameAddr
	str	r7, [ip, #360]	@ tmp1022, _277->stFrameArray[i_454].eFrameState
	ldr	r1, [lr, #3444]	@ MEM[(struct VFMW_CHAN_S *)_582 + 216436B], MEM[(struct VFMW_CHAN_S *)_582 + 216436B]
	str	fp, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_582 + 216432B]
	add	r1, r1, #1	@ D.32588, MEM[(struct VFMW_CHAN_S *)_582 + 216436B],
	str	r1, [lr, #3444]	@ D.32588, MEM[(struct VFMW_CHAN_S *)_582 + 216436B]
.L388:
	ldrsb	r1, [r6, #10]	@ D.32588, pstInst_274->s32DecFsNum
	add	r3, r3, #1	@ i, i,
	add	r0, r0, #52	@ ivtmp.327, ivtmp.327,
	cmp	r3, r1	@ i, D.32588
	bge	.L443	@,
.L390:
	ldr	r9, [sp, #24]	@ tmp873, %sfp
	add	ip, r2, r3, lsl #4	@ tmp877, D.32590, i,
	ldr	r1, [r0]	@ s32FrameStartAddr, MEM[base: _129, offset: 0B]
	add	lr, ip, #212992	@ tmp889, tmp877,
	add	ip, ip, #216064	@ tmp879, tmp877,
	cmp	r9, r1	@ tmp873, s32FrameStartAddr
	add	r7, fp, r1	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r9, #1	@ tmp873,
	movle	r9, #0	@ tmp873,
	cmp	r8, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r9, #0	@ tmp873,
	cmp	r9, #0	@ tmp873,
	bne	.L444	@,
	cmp	r8, r7	@ s32DnrStartAddr, s32FrameEndAddr
	add	lr, r2, r3, lsl #4	@ tmp907, D.32590, i,
	add	r9, lr, #212992	@ tmp919, tmp907,
	add	lr, lr, #216064	@ tmp909, tmp907,
	movge	r7, #0	@ tmp903,
	movlt	r7, #1	@ tmp903,
	cmp	r8, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r7, #0	@ tmp903,
	cmp	r7, #0	@ tmp903,
	beq	.L389	@,
	ldr	ip, [sp, #28]	@ tmp1022, %sfp
	str	r1, [lr, #364]	@ s32FrameStartAddr, _277->stFrameArray[i_454].s32FrameAddr
	str	ip, [lr, #360]	@ tmp1022, _277->stFrameArray[i_454].eFrameState
	ldr	r1, [r9, #3444]	@ MEM[(struct VFMW_CHAN_S *)_591 + 216436B], MEM[(struct VFMW_CHAN_S *)_591 + 216436B]
	str	fp, [r9, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_591 + 216432B]
	add	r1, r1, #1	@ D.32588, MEM[(struct VFMW_CHAN_S *)_591 + 216436B],
	str	r1, [r9, #3444]	@ D.32588, MEM[(struct VFMW_CHAN_S *)_591 + 216436B]
	b	.L388	@
.L380:
	ldr	lr, [sp, #28]	@ tmp809, %sfp
	mov	ip, r3, asl #4	@ tmp831, i,
	ldr	r7, [sp, #24]	@ s32DnrStartAddr, %sfp
	cmp	lr, r0	@ tmp809, s32FrameEndAddr
	movge	lr, #0	@ tmp809,
	movlt	lr, #1	@ tmp809,
	cmp	r7, r1	@ s32DnrStartAddr, s32FrameStartAddr
	movle	lr, #0	@ tmp809,
	mov	r0, lr	@ tmp809, tmp809
	add	lr, r2, r3, lsl #4	@ tmp813, D.32590, i,
	add	r2, r2, ip	@ tmp832, D.32590, tmp831
	cmp	r0, #0	@ tmp809,
	add	r7, r2, #212992	@ tmp840, tmp832,
	add	r2, r2, #216064	@ tmp834, tmp832,
	add	ip, ip, #216064	@ D.32596, tmp831,
	add	r10, lr, #216064	@ tmp815, tmp813,
	streq	r0, [r2, #360]	@ tmp809, _504->stFrameArray[i_453].eFrameState
	add	lr, lr, #212992	@ tmp825, tmp813,
	ldreq	r2, [sp, #36]	@ D.32590, %sfp
	add	ip, ip, #364	@ D.32596, D.32596,
	strne	r1, [r10, #364]	@ s32FrameStartAddr, _504->stFrameArray[i_453].s32FrameAddr
	movne	r2, #2	@ tmp1268,
	strne	r2, [r10, #360]	@ tmp1268, _504->stFrameArray[i_453].eFrameState
	streq	r1, [r2, ip]	@ s32FrameStartAddr, MEM[base: _124, offset: 0B]
	strne	fp, [lr, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_570 + 216432B]
	strne	r4, [lr, #3444]	@ tmp783, MEM[(struct VFMW_CHAN_S *)_570 + 216436B]
	streq	fp, [r7, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_576 + 216432B]
	streq	r0, [r7, #3444]	@ tmp809, MEM[(struct VFMW_CHAN_S *)_576 + 216436B]
	b	.L379	@
.L389:
	str	r7, [lr, #360]	@ tmp903, _277->stFrameArray[i_454].eFrameState
	str	r1, [lr, #364]	@ s32FrameStartAddr, _277->stFrameArray[i_454].s32FrameAddr
	str	fp, [r9, #3440]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_600 + 216432B]
	str	r7, [r9, #3444]	@ tmp903, MEM[(struct VFMW_CHAN_S *)_600 + 216436B]
	b	.L388	@
.L443:
	ldr	r10, [sp, #32]	@ D.32592, %sfp
.L386:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	FSP_EnableDnr	@
	subs	r1, r0, #0	@ s32Ret,
	bne	.L383	@,
	ldr	r3, [r5]	@ D.32590, s_pstVfmwChan
	ldr	r2, .L445+20	@ tmp994,
	ldr	r0, .L445+16	@,
	ldr	ip, [r3, #236]	@ D.32588, _293->s32OffLineDnrMemAddr
	str	r1, [r3, #1604]	@ s32Ret, _293->stSynExtraData.s32DnrEnable
	str	ip, [r2, #2932]	@ D.32588, s_DnrChan[0].s32OffLineDnrMemAddr
	ldr	r3, [r3, #240]	@ D.32588, _293->s32OffLineDNRMemSize
	str	r3, [r2, #2936]	@ D.32588, s_DnrChan[0].s32OffLineDNRMemSize
	bl	OSAL_SpinUnLockIRQ	@
	b	.L384	@
.L439:
	ldr	r4, [sp, #24]	@ tmp1016, %sfp
	b	.L386	@
.L441:
	ldr	r10, [sp, #40]	@ D.32592, %sfp
	ldr	r4, [sp, #44]	@ tmp1016, %sfp
.L377:
	mov	r1, #2	@,
	mov	r0, #0	@,
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r6, r0	@ s32Ret,
	bne	.L397	@,
.L383:
	ldr	r0, .L445+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L425	@
.L446:
	.align	2
.L445:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	CapItem
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
	ldr	r3, .L458	@ tmp129,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L453	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldrsb	r4, [r3, #10]	@ TotalFsNum, pstInst_6->s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L449	@,
	add	r3, r3, #27648	@ ivtmp.443, pstInst,
	mov	r2, #0	@ i,
	add	r3, r3, #148	@ ivtmp.443, ivtmp.443,
.L452:
	ldrsb	r1, [r3]	@ MEM[base: _32, offset: 0B], MEM[base: _32, offset: 0B]
	cmp	r1, #0	@ MEM[base: _32, offset: 0B],
	bne	.L450	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _32, offset: 2B], MEM[base: _32, offset: 2B]
	cmp	r1, #0	@ MEM[base: _32, offset: 2B],
	beq	.L451	@,
.L450:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.443, ivtmp.443,
	cmp	r4, r2	@ TotalFsNum, i
	bne	.L452	@,
.L449:
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #4	@,,
	mov	ip, #0	@ tmp133,
	str	ip, [sp, #8]	@ tmp133, NewNum
	str	ip, [sp, #12]	@ tmp133, ReadNum
	str	ip, [sp, #4]	@ tmp133, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #4]	@ RefNum, RefNum
	ldr	r3, [sp, #12]	@ ReadNum, ReadNum
	ldr	r0, [sp, #8]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.32611, RefNum, ReadNum
	add	r3, r3, r0	@ D.32611, D.32611, NewNum
	add	r3, r3, #2	@ D.32611, D.32611,
	cmp	r4, r3	@ TotalFsNum, D.32611
	movle	r0, #0	@ D.32609,
	movgt	r0, #1	@ D.32609,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L451:
	cmp	r2, r4	@ i, TotalFsNum
	movlt	r0, r1	@ D.32609, MEM[base: _32, offset: 2B]
	bge	.L449	@,
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L453:
	mvn	r0, #0	@ D.32609,
	bx	lr	@
.L459:
	.align	2
.L458:
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
	cmp	r0, #0	@ InstID,
	bne	.L472	@,
	ldr	r3, .L480	@ tmp136,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r3]	@ D.32629, s_pFspInst
	cmp	r4, #0	@ D.32629,
	beq	.L473	@,
	ldr	r2, [r3, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L466	@,
	ldr	r3, [r3, #8]	@ D.32634, g_FspFrameIntf.IsFrameAvalible
	cmp	r3, #0	@ D.32634,
	beq	.L465	@,
	blx	r3	@ D.32634
	cmp	r0, #0	@,
	bne	.L465	@,
.L466:
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ D.32630, _7->s32DecFsNum
	cmp	r0, #0	@ D.32630,
	beq	.L475	@,
	sxtb	r0, r0	@ D.32632, D.32630
	cmp	r0, #0	@ D.32632,
	ble	.L467	@,
	ldr	r1, .L480+4	@ tmp140,
	add	r3, r4, #27648	@ ivtmp.451, D.32629,
	add	r3, r3, #148	@ ivtmp.451, ivtmp.451,
	mov	r2, #0	@ i,
	ldr	lr, [r1]	@ D.32626, s_pstVfmwChan
	ldr	ip, [lr, #1580]	@ D.32627, _10->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L471	@
.L468:
	ldrsb	r1, [r3]	@ MEM[base: _35, offset: 0B], MEM[base: _35, offset: 0B]
	cmp	r1, #0	@ MEM[base: _35, offset: 0B],
	bne	.L469	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _35, offset: 2B], MEM[base: _35, offset: 2B]
	cmp	r1, #0	@ MEM[base: _35, offset: 2B],
	beq	.L470	@,
.L469:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.451, ivtmp.451,
	cmp	r2, r0	@ i, D.32632
	beq	.L467	@,
.L471:
	cmp	ip, #1	@ D.32627,
	bne	.L468	@,
	mov	r1, r2, asl #4	@ D.32636, i,
	add	r1, r1, #216064	@ D.32636, D.32636,
	add	r1, r1, #360	@ D.32636, D.32636,
	ldr	r1, [lr, r1]	@ MEM[base: _1, offset: 0B], MEM[base: _1, offset: 0B]
	cmp	r1, #0	@ MEM[base: _1, offset: 0B],
	beq	.L468	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.451, ivtmp.451,
	cmp	r2, r0	@ i, D.32632
	bne	.L471	@,
.L467:
	mov	r0, #0	@,
	bl	FSP_IsFsLeak	@
	adds	r0, r0, #0	@ D.32635,,
	movne	r0, #1	@ D.32635,
	rsb	r0, r0, #0	@ D.32627, D.32635
	ldmfd	sp!, {r4, pc}	@
.L470:
	cmp	r2, r0	@ i, D.32632
	bge	.L467	@,
.L475:
	mov	r0, #1	@ D.32627,
	ldmfd	sp!, {r4, pc}	@
.L465:
	mov	r0, #0	@ D.32627,
	ldmfd	sp!, {r4, pc}	@
.L472:
	mvn	r0, #0	@ D.32627,
	bx	lr	@
.L473:
	mvn	r0, #0	@ D.32627,
	ldmfd	sp!, {r4, pc}	@
.L481:
	.align	2
.L480:
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
	ble	.L486	@,
	mov	r2, r0	@ pstPhyFs, pstPhyFs
	mov	r0, #0	@ LeastFsID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ LeastFsID, LeastFsID
	mvn	lr, #0	@ LeastTick,
.L485:
	ldr	ip, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_18, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	ip, lr	@ LeastTick, LeastTick
	movcc	r0, r3	@ LeastFsID, LeastFsID
	add	r3, r3, #1	@ LeastFsID, LeastFsID,
	movcc	lr, ip	@ LeastTick, LeastTick
	cmp	r3, r1	@ LeastFsID, PhyNum
	bne	.L485	@,
	ldr	pc, [sp], #4	@
.L486:
	mov	r0, #0	@ LeastFsID,
	bx	lr	@
	.fnend
	.size	FindLeastTickPhyFs, .-FindLeastTickPhyFs
	.align	2
	.global	FSP_NewLogicFs
	.type	FSP_NewLogicFs, %function
FSP_NewLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	bne	.L531	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r7, .L579	@ tmp592,
	ldr	r3, [r7]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	beq	.L566	@,
	ldr	r5, .L579+4	@ tmp594,
	mov	r4, r0	@ InstID, InstID
	add	r0, r7, #32	@, tmp592,
	mov	r9, r1	@ NeedPhyFs, NeedPhyFs
	bl	OSAL_SpinLockIRQ	@
	ldr	r6, [r7]	@ pstInst, s_pFspInst
	ldr	r1, [r5]	@ D.32708, s_pstVfmwChan
	mov	r3, r6	@ ivtmp.521, pstInst
	ldr	r0, [r1, #1580]	@ D.32706, _296->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L496	@
.L492:
	ldrsb	r2, [r3, #96]	@ MEM[base: _293, offset: 96B], MEM[base: _293, offset: 96B]
	cmp	r2, #0	@ MEM[base: _293, offset: 96B],
	bne	.L493	@,
	ldrsb	r2, [r3, #97]	@ MEM[base: _293, offset: 97B], MEM[base: _293, offset: 97B]
	cmp	r2, #0	@ MEM[base: _293, offset: 97B],
	beq	.L573	@,
.L493:
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.521, ivtmp.521,
	cmp	r4, #64	@ i,
	beq	.L565	@,
.L496:
	cmp	r0, #1	@ D.32706,
	bne	.L492	@,
	mov	r2, r4, asl #4	@ D.32709, i,
	add	r2, r2, #216064	@ D.32709, D.32709,
	add	r2, r2, #360	@ D.32709, D.32709,
	ldr	r2, [r1, r2]	@ MEM[base: _261, offset: 0B], MEM[base: _261, offset: 0B]
	cmp	r2, #0	@ MEM[base: _261, offset: 0B],
	beq	.L492	@,
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.521, ivtmp.521,
	cmp	r4, #64	@ i,
	bne	.L496	@,
.L565:
	ldr	r0, .L579+8	@,
	bl	OSAL_SpinUnLockIRQ	@
.L566:
	mvn	r0, #0	@ D.32706,
	b	.L558	@
.L573:
	mov	r8, #432	@ tmp278,
	mul	r8, r8, r4	@ tmp277, tmp278, i
	add	lr, r6, r8	@ tmp282, pstInst, tmp277
	add	r8, r8, #96	@ tmp279, tmp277,
	add	ip, lr, #96	@ tmp283, tmp282,
	adds	r8, r6, r8	@ pstLogicFs, pstInst, tmp279
	strb	r4, [ip, #3]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32LogicFsID
	strb	r2, [ip, #2]	@ MEM[base: _293, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].IsDummyFs
	beq	.L565	@,
	cmp	r9, #0	@ NeedPhyFs,
	add	r0, lr, #504	@ tmp296, tmp282,
	add	r9, lr, #512	@ tmp306, tmp282,
	str	r2, [lr, #504]	@ MEM[base: _293, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	str	r2, [r0, #4]	@ MEM[base: _293, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	str	r2, [lr, #512]	@ MEM[base: _293, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstTfOutFs
	str	r2, [r9, #4]	@ MEM[base: _293, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
	beq	.L498	@,
	ldrsb	ip, [r6, #10]	@ D.32714, pstInst_23->s32DecFsNum
	cmp	ip, #0	@ D.32714,
	ble	.L574	@,
	add	lr, r6, #27648	@ pstPhyFs, pstInst,
	ldr	r9, [r1, #1580]	@ D.32706, _296->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	lr, lr, #148	@ pstPhyFs, pstPhyFs,
	mov	r3, lr	@ ivtmp.507, pstPhyFs
	b	.L506	@
.L502:
	ldrsb	r0, [r3]	@ MEM[base: _290, offset: 0B], MEM[base: _290, offset: 0B]
	cmp	r0, #0	@ MEM[base: _290, offset: 0B],
	bne	.L503	@,
	ldrsb	r0, [r3, #2]	@ MEM[base: _290, offset: 2B], MEM[base: _290, offset: 2B]
	cmp	r0, #0	@ MEM[base: _290, offset: 2B],
	beq	.L575	@,
.L503:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.507, ivtmp.507,
	cmp	r2, ip	@ i, D.32714
	beq	.L576	@,
.L506:
	cmp	r9, #1	@ D.32706,
	bne	.L502	@,
	mov	r0, r2, asl #4	@ D.32709, i,
	add	r0, r0, #216064	@ D.32709, D.32709,
	add	r0, r0, #360	@ D.32709, D.32709,
	ldr	r0, [r1, r0]	@ MEM[base: _249, offset: 0B], MEM[base: _249, offset: 0B]
	cmp	r0, #0	@ MEM[base: _249, offset: 0B],
	beq	.L502	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.507, ivtmp.507,
	cmp	r2, ip	@ i, D.32714
	bne	.L506	@,
.L576:
	mov	r3, #432	@ tmp565,
	mla	r3, r3, r4, r6	@ tmp566, tmp565, i, pstInst
	ldr	r3, [r3, #504]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	cmp	r3, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs,
	beq	.L504	@,
.L509:
	mov	r3, #432	@ tmp380,
	add	r2, r6, #34304	@ D.32707, pstInst,
	mla	r3, r3, r4, r6	@ tmp381, tmp380, i, pstInst
	add	r2, r2, #148	@ D.32707, D.32707,
	add	r0, r3, #512	@ tmp382, tmp381,
	str	r2, [r3, #512]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstTfOutFs
	ldrsb	r1, [r6, #13]	@ D.32709, pstInst_23->s32PmvNum
	cmp	r1, #0	@ D.32709,
	ble	.L513	@,
	ldrsb	r2, [r6, #14]	@ pstInst_23->IsPmvInUse, pstInst_23->IsPmvInUse
	cmp	r2, #0	@ pstInst_23->IsPmvInUse,
	addne	r2, r6, #14	@ ivtmp.490, pstInst,
	movne	r3, #0	@ i,
	bne	.L517	@,
	b	.L577	@
.L520:
	ldrsb	r0, [r2, #1]!	@ MEM[base: _274, offset: 0B], MEM[base: _274, offset: 0B]
	cmp	r0, #0	@ MEM[base: _274, offset: 0B],
	beq	.L578	@,
.L517:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.32709
	bne	.L520	@,
	add	r0, r6, #32768	@ tmp593, pstInst,
	cmp	r1, #0	@ D.32709,
	ldr	ip, [r0, #1788]	@ D.32706, pstInst_23->s32HalfPmvOffset
	ble	.L522	@,
.L518:
	add	r2, r1, #13	@ D.32709, D.32709,
	add	r3, r6, #13	@ ivtmp.480, pstInst,
	add	r2, r6, r2	@ D.32719, pstInst, D.32709
	mov	r1, #0	@ tmp597,
.L521:
	strb	r1, [r3, #1]!	@ tmp597, MEM[base: _81, offset: 0B]
	cmp	r3, r2	@ ivtmp.480, D.32719
	bne	.L521	@,
.L522:
	mov	r3, #432	@ tmp406,
	mov	r1, #0	@ tmp409,
	mla	r3, r3, r4, r6	@ tmp407, tmp406, i, pstInst
	strb	r1, [r3, #100]	@ tmp409, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvIdc
	ldr	r2, [r0, #1792]	@ pstInst_23->PmvAddr, pstInst_23->PmvAddr
	str	ip, [r3, #520]	@ D.32706, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].HalfPmvOffset
	str	r2, [r3, #516]	@ pstInst_23->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
.L513:
	ldrsb	r3, [r6, #60]	@ pstInst_23->stInstCfg.s32DispLoopEnable, pstInst_23->stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ pstInst_23->stInstCfg.s32DispLoopEnable,
	beq	.L523	@,
	ldrsb	lr, [r6, #11]	@ D.32714, pstInst_23->s32DispFsNum
	cmp	lr, #0	@ D.32714,
	ble	.L564	@,
	add	r3, r6, #30976	@ D.32707, pstInst,
	add	r3, r3, #148	@ D.32707, D.32707,
	cmp	r3, #0	@ D.32707,
	beq	.L534	@,
	rsb	r9, r3, #30976	@ D.32709, ivtmp.475,
	mov	ip, r3	@ D.32707, ivtmp.475
	add	r9, r9, #200	@ D.32709, D.32709,
	mov	r1, #0	@ i,
	b	.L527	@
.L530:
	cmp	r3, #0	@ ivtmp.475,
	mov	ip, r3	@ D.32707, ivtmp.475
	beq	.L526	@,
	mov	ip, r2	@ D.32707, D.32710
.L527:
	ldrsb	r0, [r3, #2]	@ MEM[base: _291, offset: 2B], MEM[base: _291, offset: 2B]
	add	r2, ip, r9	@ D.32709, D.32707, D.32709
	add	r1, r1, #1	@ i, i,
	add	r2, r6, r2	@ D.32710, pstInst, D.32709
	cmp	r0, #0	@ MEM[base: _291, offset: 2B],
	bne	.L529	@,
	ldrsb	r0, [r3]	@ MEM[base: _291, offset: 0B], MEM[base: _291, offset: 0B]
	cmp	r0, #0	@ MEM[base: _291, offset: 0B],
	bne	.L529	@,
	ldrsb	r0, [r3, #1]	@ MEM[base: _291, offset: 1B], MEM[base: _291, offset: 1B]
	cmp	r0, #0	@ MEM[base: _291, offset: 1B],
	beq	.L526	@,
.L529:
	cmp	r1, lr	@ i, D.32714
	add	r3, r3, #52	@ ivtmp.475, ivtmp.475,
	bne	.L530	@,
.L564:
	mov	r3, #432	@ tmp452,
	mla	r3, r3, r4, r6	@ tmp453, tmp452, i, pstInst
	ldr	ip, [r3, #508]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
.L525:
	cmp	ip, #0	@ D.32707,
	bne	.L528	@,
	mov	r0, ip	@, D.32707
	add	r3, sp, #8	@,,
	add	r2, sp, #12	@,,
	add	r1, sp, #4	@,,
	str	ip, [sp, #8]	@ D.32707, NewNum
	str	ip, [sp, #12]	@ D.32707, ReadNum
	str	ip, [sp, #4]	@ D.32707, RefNum
	bl	VCTRL_GetChanImgNum	@
	b	.L565	@
.L498:
	add	r2, r6, #32768	@ tmp331, pstInst,
	add	r3, r6, #27648	@ D.32707, pstInst,
	add	r3, r3, #96	@ D.32707, D.32707,
	str	r3, [lr, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	str	r3, [r0, #4]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	mov	r1, #1	@ tmp345,
	str	r3, [lr, #512]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstTfOutFs
	ldr	r3, [r2, #1792]	@ pstInst_23->PmvAddr, pstInst_23->PmvAddr
	str	r3, [r9, #4]	@ pstInst_23->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
	ldrb	r3, [r6, #13]	@ zero_extendqisi2	@ pstInst_23->s32PmvNum, pstInst_23->s32PmvNum
	strb	r1, [ip, #2]	@ tmp345, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].IsDummyFs
	sub	r3, r3, #1	@ tmp339, pstInst_23->s32PmvNum,
	strb	r3, [ip, #4]	@ tmp339, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvIdc
.L501:
	mov	r0, #432	@ tmp477,
	mov	r2, #1	@ tmp480,
	mul	r4, r0, r4	@ tmp476, tmp477, i
	mov	r1, #392	@,
	add	r3, r6, r4	@ tmp478, pstInst, tmp476
	add	r0, r4, #104	@ tmp525, tmp476,
	add	r7, r3, #96	@ tmp479, tmp478,
	add	r0, r6, r0	@, pstInst, tmp525
	ldr	lr, [r3, #508]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	strb	r2, [r3, #97]	@ tmp480, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32DispState
	strb	r2, [lr, #2]	@ tmp480, _126->DispState
	str	r2, [r3, #500]	@ tmp480, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].eLfsPmvState
	ldr	lr, [r3, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	ldr	r2, [r6, #36]	@ D.32717, pstInst_23->u32InstTick
	str	r2, [r3, #496]	@ D.32717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].u32Tick
	str	r2, [lr, #44]	@ D.32717, _131->u32Tick
	ldr	lr, [r3, #496]	@ D.32717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].u32Tick
	ldr	r2, [r3, #508]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	str	lr, [r2, #44]	@ D.32717, _134->u32Tick
	ldr	r2, [r6, #36]	@ pstInst_23->u32InstTick, pstInst_23->u32InstTick
	add	r2, r2, #1	@ D.32717, pstInst_23->u32InstTick,
	str	r2, [r6, #36]	@ D.32717, pstInst_23->u32InstTick
	ldr	r4, [r3, #508]	@ pstDispFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	ldr	r6, [r3, #504]	@ pstDecFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	ldr	r9, [r3, #512]	@ pstTfFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstTfOutFs
	bl	__memzero	@
	ldrsb	r3, [r7, #3]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32LogicFsID, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32LogicFsID
	str	r3, [r8, #184]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32LogicFsID, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].image_id
	ldr	r3, [r6, #24]	@ pstDecFs_140->FsWidth, pstDecFs_140->FsWidth
	str	r3, [r8, #152]	@ pstDecFs_140->FsWidth, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].image_width
	ldr	r3, [r6, #28]	@ pstDecFs_140->FsHeight, pstDecFs_140->FsHeight
	str	r3, [r8, #156]	@ pstDecFs_140->FsHeight, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].image_height
	ldr	r3, [r4, #20]	@ pstDispFs_141->Stride, pstDispFs_141->Stride
	str	r3, [r8, #180]	@ pstDispFs_141->Stride, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].image_stride
	ldr	r2, [r6, #12]	@ D.32714, pstDecFs_140->PhyAddr
	str	r2, [r8, #112]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_phy_addr
	mov	r0, r2	@, D.32714
	ldr	r3, [r6, #32]	@ pstDecFs_140->ChromOffset, pstDecFs_140->ChromOffset
	add	r3, r3, r2	@ D.32717, pstDecFs_140->ChromOffset, D.32714
	str	r3, [r8, #116]	@ D.32717, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #40]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_vir_addr
	ldr	r0, [r8, #116]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #44]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.32714, pstDispFs_141->PhyAddr
	str	r2, [r8, #96]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].top_luma_phy_addr
	ldr	r3, [r4, #32]	@ pstDispFs_141->ChromOffset, pstDispFs_141->ChromOffset
	add	r3, r2, r3	@ D.32714, D.32714, pstDispFs_141->ChromOffset
	str	r3, [r8, #100]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ pstDispFs_141->Stride, pstDispFs_141->Stride
	add	r2, r2, r1	@ D.32714, D.32714, pstDispFs_141->Stride
	str	r2, [r8, #104]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ pstDispFs_141->Stride, pstDispFs_141->Stride
	add	r3, r3, r2	@ D.32714, D.32714, pstDispFs_141->Stride
	str	r3, [r8, #108]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ D.32714, pstDispFs_141->PhyAddr
	str	r2, [r8, #128]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_2d_phy_addr
	mov	r0, r2	@, D.32714
	ldr	r3, [r4, #32]	@ pstDispFs_141->ChromOffset, pstDispFs_141->ChromOffset
	add	r3, r3, r2	@ D.32717, pstDispFs_141->ChromOffset, D.32714
	str	r3, [r8, #132]	@ D.32717, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #56]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_2d_vir_addr
	ldr	r0, [r8, #132]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #60]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_2d_vir_addr
	ldr	r2, [r9, #12]	@ D.32714, pstTfFs_142->PhyAddr
	str	r2, [r8, #120]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_tf_phy_addr
	mov	r0, r2	@, D.32714
	ldr	r3, [r6, #32]	@ pstDecFs_140->ChromOffset, pstDecFs_140->ChromOffset
	add	r3, r3, r2	@ D.32717, pstDecFs_140->ChromOffset, D.32714
	str	r3, [r8, #124]	@ D.32717, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r8, #48]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].luma_tf_vir_addr
	ldr	r0, [r8, #124]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r3, #0	@ tmp549,
	add	r2, r2, #217088	@ tmp556, s_pstVfmwChan,
	str	r0, [r8, #52]	@, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].chrom_tf_vir_addr
	ldr	r1, [r6, #48]	@ D.32714, pstDecFs_140->ImgSize
	str	r3, [r8, #384]	@ tmp549, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].u32IsLastFrame
	str	r3, [r8, #372]	@ tmp549, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].u32Is1D
	str	r1, [r8, #368]	@ D.32714, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].ImgSize
	str	r3, [r8, #376]	@ tmp549, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].is_processed_by_dnr
	str	r3, [r8, #380]	@ tmp549, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].u32Circumrotate
	ldr	r3, [r2, #420]	@ D.32717, _223->u32ChanTick
	ldr	r0, .L579+8	@,
	str	r3, [r8, #392]	@ D.32717, MEM[(struct IMAGE *)pstLogicFs_30 + 8B].u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r7, #3]	@ D.32706, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].s32LogicFsID
.L558:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L523:
	mov	r3, #432	@ tmp434,
	mla	r3, r3, r4, r6	@ tmp435, tmp434, i, pstInst
	ldr	r2, [r3, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	str	r2, [r3, #508]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
.L528:
	ldr	r3, [r7, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	ldr	r2, .L579	@ tmp463,
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L501	@,
	ldr	r3, [r2, #12]	@ D.32718, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.32718,
	beq	.L565	@,
	add	r1, sp, #12	@,,
	mov	r0, #0	@,
	blx	r3	@ D.32718
	cmp	r0, #0	@,
	bne	.L565	@,
	ldr	r2, [sp, #12]	@ D.32714, stInfo.stFrameInfo.PhyAddr
	cmp	r2, #0	@ D.32714,
	beq	.L565	@,
	mov	r3, #432	@ tmp468,
	mla	r3, r3, r4, r6	@ tmp469, tmp468, i, pstInst
	ldr	r1, [r3, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	str	r2, [r1, #12]	@ D.32714, _109->PhyAddr
	ldr	r2, [sp, #28]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r2, [r3, #516]	@ stInfo.stPmvInfo.PhyAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
	b	.L501	@
.L578:
	mov	r2, #432	@ tmp389,
	add	ip, r3, #8640	@ tmp397, i,
	mla	r2, r2, r4, r6	@ tmp390, tmp389, i, pstInst
	cmp	r3, r1	@ i, D.32709
	add	r0, r6, #32768	@ tmp593, pstInst,
	strb	r3, [r2, #100]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvIdc
	ldr	r3, [r6, ip, asl #2]	@ tmp398, pstInst_23->PmvAddr
	str	r3, [r2, #516]	@ tmp398, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
	ldr	ip, [r0, #1788]	@ D.32706, pstInst_23->s32HalfPmvOffset
	str	ip, [r2, #520]	@ D.32706, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].HalfPmvOffset
	blt	.L513	@,
	b	.L518	@
.L575:
	mov	r3, #52	@ tmp355,
	mov	r1, #432	@ tmp360,
	mla	r2, r3, r2, r6	@ tmp357, tmp355, i, pstInst
	mla	r1, r1, r4, r6	@ tmp361, tmp360, i, pstInst
	add	r3, r2, #27648	@ D.32707, tmp357,
	add	r3, r3, #148	@ D.32707, D.32707,
	cmp	r3, #0	@ D.32707,
	str	r3, [r1, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	bne	.L509	@,
.L504:
	mov	r0, #0	@ i,
	mvn	r1, #0	@ LeastTick,
	mov	r3, r0	@ i, i
.L511:
	ldr	r2, [lr, #44]	@ LeastTick, MEM[base: pstPhyFs_282, offset: 44B]
	add	lr, lr, #52	@ pstPhyFs, pstPhyFs,
	cmp	r2, r1	@ LeastTick, LeastTick
	movcc	r0, r3	@ i, i
	add	r3, r3, #1	@ i, i,
	movcc	r1, r2	@ LeastTick, LeastTick
	cmp	r3, ip	@ i, D.32714
	blt	.L511	@,
.L508:
	mov	r2, #432	@ tmp370,
	mov	r3, #52	@ tmp374,
	mla	r2, r2, r4, r6	@ tmp371, tmp370, i, pstInst
	mla	r3, r3, r0, r6	@ tmp376, tmp374, i, pstInst
	add	r3, r3, #27648	@ D.32707, tmp376,
	add	r3, r3, #148	@ D.32707, D.32707,
	str	r3, [r2, #504]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	b	.L509	@
.L534:
	mov	ip, r3	@ D.32707, D.32707
.L526:
	mov	r3, #432	@ tmp448,
	mla	r3, r3, r4, r6	@ tmp449, tmp448, i, pstInst
	str	ip, [r3, #508]	@ D.32707, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDispOutFs
	b	.L525	@
.L531:
	mvn	r0, #0	@ D.32706,
	bx	lr	@
.L574:
	ldr	r0, [lr, #504]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs
	cmp	r0, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].pstDecodeFs,
	bne	.L509	@,
	b	.L508	@
.L577:
	add	r1, r6, #32768	@ tmp582, pstInst,
	strb	r2, [r3, #100]	@ pstInst_23->IsPmvInUse, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvIdc
	ldr	r2, [r1, #1792]	@ pstInst_23->PmvAddr, pstInst_23->PmvAddr
	str	r2, [r0, #4]	@ pstInst_23->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].PmvAddr
	ldr	r2, [r1, #1788]	@ pstInst_23->s32HalfPmvOffset, pstInst_23->s32HalfPmvOffset
	str	r2, [r3, #520]	@ pstInst_23->s32HalfPmvOffset, MEM[(struct FSP_LOGIC_FS_S *)pstInst_23].stLogicFs[i_61].HalfPmvOffset
	b	.L513	@
.L580:
	.align	2
.L579:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LANCHOR0+32
	.fnend
	.size	FSP_NewLogicFs, .-FSP_NewLogicFs
	.align	2
	.global	FSP_RemovePmv
	.type	FSP_RemovePmv, %function
FSP_RemovePmv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bxne	lr	@
	cmp	r1, #63	@ LogicFrameID,
	bxhi	lr	@
	ldr	r3, .L587	@ tmp118,
	ldr	r2, [r3]	@ D.32724, s_pFspInst
	cmp	r2, #0	@ D.32724,
	bxeq	lr	@
	mov	r3, #432	@ tmp120,
	mla	r3, r3, r1, r2	@ tmp121, tmp120, LogicFrameID, D.32724
	ldr	ip, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_7].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_7].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	cmp	ip, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_7].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	bxne	lr	@
	ldrb	r3, [r3, #100]	@ zero_extendqisi2	@ D.32726, MEM[(struct FSP_LOGIC_FS_S *)_7].stLogicFs[LogicFrameID_5(D)].PmvIdc
	cmp	r3, #19	@ D.32726,
	sxtabls	r3, r2, r3	@ tmp130, D.32724, D.32726
	strlsb	r0, [r3, #14]	@ InstID, _7->IsPmvInUse
	mov	r0, #432	@ tmp134,
	mla	r1, r0, r1, r2	@ tmp135, tmp134, LogicFrameID, D.32724
	mov	r3, #0	@ tmp137,
	str	r3, [r1, #500]	@ tmp137, MEM[(struct FSP_LOGIC_FS_S *)_7].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	bx	lr	@
.L588:
	.align	2
.L587:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bxne	lr	@
	cmp	r1, #63	@ LogicFrameID,
	bxhi	lr	@
	b	FSP_SetRef.part.1	@
	.fnend
	.size	FSP_SetRef, .-FSP_SetRef
	.align	2
	.global	FSP_GetRef
	.type	FSP_GetRef, %function
FSP_GetRef:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L594	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.32735, s_pFspInst
	cmp	r3, #0	@ D.32735,
	movne	r2, #432	@ tmp118,
	mlane	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.32735
	ldrnesb	r0, [r1, #96]	@ D.32734, MEM[(struct FSP_LOGIC_FS_S *)_4].stLogicFs[LogicFrameID_5(D)].s32IsRef
	mvneq	r0, #0	@ D.32734,
	bx	lr	@
.L595:
	.align	2
.L594:
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
	bxne	lr	@
	cmp	r1, #63	@ LogicFrameID,
	bxhi	lr	@
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L625	@ tmp133,
	ldr	r3, [r7]	@ s_pFspInst, s_pFspInst
	cmp	r3, #0	@ s_pFspInst,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r6, r0	@ InstID, InstID
	add	r0, r7, #32	@, tmp133,
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	mov	r5, r1	@ LogicFrameID, LogicFrameID
	clz	r8, r2	@ D.32754, IsWaitDisp
	bl	OSAL_SpinLockIRQ	@
	ldr	r9, [r7]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp141,
	mov	r8, r8, lsr #5	@ D.32754, D.32754,
	mla	r3, r3, r5, r9	@ tmp142, tmp141, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp143, tmp142,
	ldrsb	r1, [r3, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs,
	cmpeq	r4, #0	@, IsWaitDisp,
	beq	.L624	@,
.L598:
	mov	r1, #432	@ tmp163,
	cmp	r8, #0	@ D.32754,
	mla	r1, r1, r5, r9	@ tmp164, tmp163, LogicFrameID, pstInst
	movne	r0, #0	@ D.32753,
	moveq	r0, #3	@ D.32753,
	add	r3, r1, #96	@ tmp165, tmp164,
	ldrsb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs
	strb	r0, [r3, #1]	@ D.32753, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs,
	bne	.L600	@,
	add	ip, r1, #504	@ tmp175, tmp164,
	ldr	r0, [ip, #4]	@ D.32749, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].pstDispOutFs
	cmp	r0, #0	@ D.32749,
	beq	.L600	@,
	ldr	r0, [r0, #44]	@ _19->u32Tick, _19->u32Tick
	ldr	r1, [r1, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].u32Tick
	cmp	r0, r1	@ _19->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].u32Tick
	bne	.L600	@,
	cmp	r8, #0	@ D.32754,
	strneb	r2, [r3, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState
	moveq	r2, #3	@ tmp205,
	ldrne	r3, [ip, #4]	@ D.32749, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].pstDispOutFs
	streqb	r2, [r3, #1]	@ tmp205, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState
	ldreq	r3, [ip, #4]	@ D.32749, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].pstDispOutFs
	strneb	r2, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs, _22->DispState
	strne	r2, [ip, #4]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].pstDispOutFs
	streqb	r2, [r3, #2]	@ tmp205, _23->DispState
.L600:
	ldr	r0, .L625+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L624:
	ldr	r3, [r3, #508]	@ D.32749, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].pstDispOutFs
	cmp	r3, #0	@ D.32749,
	beq	.L598	@,
	ldrsb	r2, [r2, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_9].stLogicFs[LogicFrameID_3(D)].s32DispState,
	beq	.L598	@,
	ldr	r2, [r7, #4]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L598	@,
	ldr	r2, [r7, #16]	@ D.32752, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r3, #12]	@ D.32751, _11->PhyAddr
	cmp	r2, #0	@ D.32752,
	beq	.L598	@,
	mov	r0, r6	@, InstID
	blx	r2	@ D.32752
	b	.L598	@
.L626:
	.align	2
.L625:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	adds	r7, r0, #0	@ D.32770, InstID,
	movne	r7, #1	@ D.32770,
	cmp	r1, #0	@ pstVoQue,
	movne	r3, r7	@, tmp136, D.32770
	orreq	r3, r7, #1	@,, tmp136, D.32770
	cmp	r3, #0	@ tmp136,
	bne	.L633	@,
	ldr	r3, .L641	@ tmp137,
	ldr	r4, [r3, r0, asl #2]	@ D.32767, s_pFspInst
	cmp	r4, #0	@ D.32767,
	beq	.L633	@,
	add	r6, r4, #27648	@ D.32772, D.32767,
	mov	r5, r1	@ pstVoQue, pstVoQue
	mov	r8, r0	@ InstID, InstID
	add	r4, r4, #104	@ ivtmp.544, D.32767,
	add	r6, r6, #104	@ D.32772, D.32772,
	b	.L631	@
.L629:
	mov	r1, r4	@, ivtmp.544
	mov	r0, r5	@, pstVoQue
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	bne	.L639	@,
	add	r4, r4, #432	@ ivtmp.544, ivtmp.544,
	cmp	r4, r6	@ ivtmp.544, D.32772
	beq	.L640	@,
.L631:
	ldr	r1, [r4, #176]	@ D.32768, MEM[base: p_image_11, offset: 176B]
	cmp	r1, #63	@ D.32768,
	movls	r2, r7	@, tmp143, D.32770
	orrhi	r2, r7, #1	@,, tmp143, D.32770
	cmp	r2, #0	@ tmp143,
	bne	.L629	@,
	mov	r0, r8	@, InstID
	bl	FSP_SetRef.part.1	@
	b	.L629	@
.L639:
	ldr	r1, [r4, #176]	@, MEM[base: p_image_11, offset: 176B]
	mov	r2, #0	@,
	mov	r0, r8	@, InstID
	add	r4, r4, #432	@ ivtmp.544, ivtmp.544,
	bl	FSP_SetDisplay	@
	cmp	r4, r6	@ ivtmp.544, D.32772
	bne	.L631	@,
.L640:
	mov	r0, #0	@ D.32766,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L633:
	mvn	r0, #0	@ D.32766,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L642:
	.align	2
.L641:
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
	@ link register save eliminated.
	ldr	r3, .L646	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.32776, s_pFspInst
	cmp	r3, #0	@ D.32776,
	movne	r2, #432	@ tmp118,
	mlane	r1, r2, r1, r3	@ tmp119, tmp118, LogicFrameID, D.32776
	ldrnesb	r0, [r1, #97]	@ D.32775, MEM[(struct FSP_LOGIC_FS_S *)_4].stLogicFs[LogicFrameID_5(D)].s32DispState
	mvneq	r0, #0	@ D.32775,
	bx	lr	@
.L647:
	.align	2
.L646:
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
	bne	.L655	@,
	ldr	ip, .L659	@ tmp121,
	ldr	ip, [ip]	@ D.32781, s_pFspInst
	cmp	ip, #0	@ D.32781,
	beq	.L655	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L650	@,
	ldrsb	r0, [ip, #10]	@ D.32783, _7->s32DecFsNum
	cmp	r0, r2	@ D.32783, PhyFsID
	ble	.L655	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	lr, #52	@ tmp124,
	mla	r2, lr, r2, ip	@ tmp125, tmp124, PhyFsID, D.32781
	mov	r0, r1	@ D.32780, ePhyFsType
	add	r2, r2, #27648	@ tmp127, tmp125,
	str	r3, [r2, #156]	@ eStoreType, _7->stDecFs[PhyFsID_11(D)].eStoreType
	ldr	pc, [sp], #4	@
.L650:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L658	@,
.L655:
	mvn	r0, #0	@ D.32780,
	bx	lr	@
.L658:
	ldrsb	r1, [ip, #11]	@ D.32783, _7->s32DispFsNum
	cmp	r2, r1	@ PhyFsID, D.32783
	bge	.L655	@,
	mov	r1, #52	@ tmp130,
	mla	r2, r1, r2, ip	@ tmp131, tmp130, PhyFsID, D.32781
	add	r2, r2, #30976	@ tmp133, tmp131,
	str	r3, [r2, #156]	@ eStoreType, _7->stDispFs[PhyFsID_11(D)].eStoreType
	bx	lr	@
.L660:
	.align	2
.L659:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	beq	.L667	@,
.L664:
	mvn	r0, #0	@ D.32786,
	bx	lr	@
.L667:
	ldr	r3, .L668	@ tmp119,
	ldr	r3, [r3]	@ D.32787, s_pFspInst
	cmp	r3, #0	@ D.32787,
	beq	.L664	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L666	@,
	ldrsb	r1, [r3, #10]	@ D.32789, _5->s32DecFsNum
	cmp	r1, r2	@ D.32789, PhyFsID
	ble	.L666	@,
	mov	r1, #52	@ tmp122,
	mla	r2, r1, r2, r3	@ tmp123, tmp122, PhyFsID, D.32787
	add	r2, r2, #27648	@ tmp125, tmp123,
	ldr	r0, [r2, #156]	@ D.32786, _5->stDecFs[PhyFsID_9(D)].eStoreType
	bx	lr	@
.L666:
	mov	r0, #2	@ D.32786,
	bx	lr	@
.L669:
	.align	2
.L668:
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
	mov	r2, r0	@ InstID, InstID
	ldr	r6, .L684	@ tmp129,
	ldr	ip, [r6, r0, asl #2]	@ D.32794, s_pFspInst
	cmp	ip, #0	@ D.32794,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	cmp	r1, #63	@ LogicFrameID,
	cmpls	r0, #0	@, InstID,
	mov	r5, r0	@ InstID, InstID
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	movne	r2, #1	@ tmp136,
	moveq	r2, #0	@ tmp136,
	beq	.L683	@,
.L674:
	mov	r3, #432	@ tmp139,
	mla	r3, r3, r4, ip	@ tmp140, tmp139, LogicFrameID, D.32794
	ldrsb	r3, [r3, #97]	@ MEM[(struct FSP_LOGIC_FS_S *)_20].stLogicFs[LogicFrameID_4(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)_20].stLogicFs[LogicFrameID_4(D)].s32DispState
	cmp	r3, #3	@ MEM[(struct FSP_LOGIC_FS_S *)_20].stLogicFs[LogicFrameID_4(D)].s32DispState,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r4	@, LogicFrameID
	mov	r0, r5	@, InstID
	mov	r2, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FSP_SetDisplay	@
.L683:
	bl	FSP_SetRef.part.1	@
	ldr	ip, [r6, r5, asl #2]	@ D.32794, s_pFspInst
	b	.L674	@
.L685:
	.align	2
.L684:
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
	bne	.L688	@,
	ldr	r3, .L690	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.32801, s_pFspInst
	cmp	r0, #0	@ D.32801,
	movne	r3, #432	@ tmp129,
	mlane	r1, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.32801
	addne	r0, r1, #96	@ D.32798, tmp130,
	bx	lr	@
.L688:
	mov	r0, r3	@ D.32798, tmp126
	bx	lr	@
.L691:
	.align	2
.L690:
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
	bne	.L694	@,
	ldr	r3, .L696	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.32807, s_pFspInst
	cmp	r0, #0	@ D.32807,
	movne	r3, #432	@ tmp128,
	mlane	r1, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.32807
	addne	r0, r1, #104	@ D.32804, tmp129,
	bx	lr	@
.L694:
	mov	r0, r3	@ D.32804, tmp125
	bx	lr	@
.L697:
	.align	2
.L696:
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
	bne	.L700	@,
	ldr	r3, .L702	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.32813, s_pFspInst
	cmp	r0, #0	@ D.32813,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.32813
	ldrne	r0, [r0, #508]	@ D.32810, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].pstDispOutFs
	bx	lr	@
.L700:
	mov	r0, r3	@ D.32810, tmp125
	bx	lr	@
.L703:
	.align	2
.L702:
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
	bne	.L706	@,
	ldr	r3, .L708	@ tmp126,
	ldr	r0, [r3, r0, asl #2]	@ D.32819, s_pFspInst
	cmp	r0, #0	@ D.32819,
	movne	r3, #432	@ tmp128,
	mlane	r0, r3, r1, r0	@ tmp129, tmp128, LogicFrameID, D.32819
	ldrne	r0, [r0, #516]	@ D.32816, MEM[(struct FSP_LOGIC_FS_S *)_9].stLogicFs[LogicFrameID_4(D)].PmvAddr
	bx	lr	@
.L706:
	mov	r0, r3	@ D.32816, tmp125
	bx	lr	@
.L709:
	.align	2
.L708:
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
	cmp	r1, #0	@ DecFsNum,
	cmpne	r2, #0	@, DecFsAddrTab,
	moveq	r3, #1	@ tmp137,
	movne	r3, #0	@ tmp137,
	cmp	r0, #0	@ InstID,
	orrne	r3, r3, #1	@,, tmp143, tmp137
	cmp	r3, #0	@ tmp143,
	bxne	lr	@
	ldr	ip, .L720	@ tmp144,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [ip, r0, asl #2]	@ tmp145, s_pFspInst
	cmp	lr, #0	@ tmp145,
	ldreq	pc, [sp], #4	@
	str	r3, [r1]	@ tmp143, *DecFsNum_7(D)
	ldr	lr, [ip, r0, asl #2]	@ tmp148, s_pFspInst
	ldrsb	lr, [lr, #10]	@ D.32836, _10->s32DecFsNum
	cmp	lr, #0	@ D.32836,
	str	lr, [r1]	@ D.32836, *DecFsNum_7(D)
	ldr	r0, [ip, r0, asl #2]	@ tmp151, s_pFspInst
	add	r0, r0, #27648	@ pstDecFs, tmp151,
	add	r0, r0, #148	@ pstDecFs, pstDecFs,
	ldrle	pc, [sp], #4	@
	sub	r2, r2, #4	@ ivtmp.569, DecFsAddrTab,
.L713:
	ldr	ip, [r0, #12]	@ D.32836, MEM[base: _36, offset: 12B]
	add	r3, r3, #1	@ i, i,
	add	r0, r0, #52	@ ivtmp.567, ivtmp.567,
	str	ip, [r2, #4]!	@ D.32836, MEM[base: _35, offset: 0B]
	ldr	ip, [r1]	@ *DecFsNum_7(D), *DecFsNum_7(D)
	cmp	ip, r3	@ *DecFsNum_7(D), i
	bgt	.L713	@,
	ldr	pc, [sp], #4	@
.L721:
	.align	2
.L720:
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
	cmp	r1, #0	@ PmvNum,
	cmpne	r2, #0	@, PmvAddrTab,
	moveq	r3, #1	@ tmp136,
	movne	r3, #0	@ tmp136,
	cmp	r0, #0	@ InstID,
	orrne	r3, r3, #1	@,, tmp142, tmp136
	cmp	r3, #0	@ tmp142,
	bxne	lr	@
	ldr	ip, .L730	@ tmp143,
	ldr	ip, [ip, r0, asl #2]	@ D.32858, s_pFspInst
	cmp	ip, #0	@ D.32858,
	bxeq	lr	@
	ldrsb	r0, [ip, #13]	@ _8->s32PmvNum, _8->s32PmvNum
	str	r0, [r1]	@ _8->s32PmvNum, *PmvNum_7(D)
	ldrsb	r1, [ip, #13]	@ _8->s32PmvNum, _8->s32PmvNum
	cmp	r1, #0	@ _8->s32PmvNum,
	bxle	lr	@
	add	r1, ip, #34304	@ ivtmp.579, D.32858,
	sub	r2, r2, #4	@ ivtmp.588, PmvAddrTab,
	add	r1, r1, #252	@ ivtmp.579, ivtmp.579,
.L725:
	ldr	r0, [r1, #4]!	@ D.32860, MEM[base: _34, offset: 0B]
	add	r3, r3, #1	@ i, i,
	str	r0, [r2, #4]!	@ D.32860, MEM[base: _35, offset: 0B]
	ldrsb	r0, [ip, #13]	@ D.32860, _8->s32PmvNum
	cmp	r0, r3	@ D.32860, i
	bgt	.L725	@,
	bx	lr	@
.L731:
	.align	2
.L730:
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
	ldr	r3, .L735	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.32865, s_pFspInst
	cmp	r3, #0	@ D.32865,
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #24576	@ tmp126, D.32865,
	ldrb	lr, [r3, #10]	@ zero_extendqisi2	@ D.32866, _4->s32DecFsNum
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	mov	r0, r1	@ tmp136, pFspInstInfo
	add	r1, r3, #27648	@, D.32865,
	add	r1, r1, #148	@,,
	mov	r2, #3328	@,
	strb	lr, [ip, #1]	@ D.32866, pFspInstInfo_6(D)->s32DecFsNum
	ldr	lr, [r4, #3284]	@ _4->stDecFs[1].PhyAddr, _4->stDecFs[1].PhyAddr
	ldr	r4, [r4, #3232]	@ _4->stDecFs[0].PhyAddr, _4->stDecFs[0].PhyAddr
	rsb	lr, r4, lr	@ D.32867, _4->stDecFs[0].PhyAddr, _4->stDecFs[1].PhyAddr
	str	lr, [ip, #3336]	@ D.32867, pFspInstInfo_6(D)->s32DecFsSize
	ldrb	lr, [r3, #11]	@ zero_extendqisi2	@ D.32866, _4->s32DispFsNum
	strb	lr, [ip, #2]	@ D.32866, pFspInstInfo_6(D)->s32DispFsNum
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ D.32866, _4->s32TfFsNum
	strb	lr, [ip, #3]	@ D.32866, pFspInstInfo_6(D)->s32TfFsNum
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.32866, _4->s32InstID
	strb	lr, [ip, #4]	@ D.32866, pFspInstInfo_6(D)->s32InstID
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ D.32866, _4->s32PmvNum
	strb	r3, [r0], #8	@ D.32866, pFspInstInfo_6(D)->s32PmvNum
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L736:
	.align	2
.L735:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bne	.L742	@,
	ldr	r3, .L748	@ tmp120,
	ldr	r3, [r3]	@ D.32883, s_pFspInst
	cmp	r3, #0	@ D.32883,
	beq	.L742	@,
.L740:
	ldr	r2, [r3, #504]	@ D.32884, MEM[base: _16, offset: 504B]
	add	r3, r3, #432	@ ivtmp.603, ivtmp.603,
	cmp	r2, #0	@ D.32884,
	beq	.L739	@,
	ldr	r2, [r2, #12]	@ _7->PhyAddr, _7->PhyAddr
	cmp	r2, r1	@ _7->PhyAddr, PhyAddr
	bxeq	lr	@
.L739:
	add	r0, r0, #1	@ i, i,
	cmp	r0, #64	@ i,
	bne	.L740	@,
.L742:
	mvn	r0, #0	@ D.32882,
	bx	lr	@
.L749:
	.align	2
.L748:
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
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	FSP_PrintContext, .-FSP_PrintContext
	.align	2
	.global	FSP_GetNullLogicFs
	.type	FSP_GetNullLogicFs, %function
FSP_GetNullLogicFs:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L759	@ tmp119,
	ldr	ip, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	add	r3, ip, #27136	@ tmp124, pstInst,
	ldrsb	r3, [r3, #177]	@ pstInst_5->stLogicFs[63].s32DispState, pstInst_5->stLogicFs[63].s32DispState
	cmp	r3, #0	@ pstInst_5->stLogicFs[63].s32DispState,
	beq	.L756	@,
	add	r2, ip, #26880	@ ivtmp.613, pstInst,
	mov	r3, #62	@ ret_id,
	add	r2, r2, #1	@ ivtmp.613, ivtmp.613,
	b	.L755	@
.L753:
	subs	r3, r3, #1	@ ret_id, ret_id,
	bcc	.L758	@,
.L755:
	ldrsb	r1, [r2]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	sub	r2, r2, #432	@ ivtmp.613, ivtmp.613,
	cmp	r1, #0	@ MEM[base: _19, offset: 0B],
	bne	.L753	@,
.L754:
	mov	r2, #432	@ tmp128,
	mov	r0, r3	@, ret_id
	mla	r3, r2, r3, ip	@ tmp129, tmp128, ret_id, pstInst
	mov	r2, #0	@ tmp131,
	str	r2, [r3, #504]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDecodeFs
	str	r2, [r3, #508]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDispOutFs
	bx	lr	@
.L758:
	mov	r3, #0	@ ret_id,
	b	.L754	@
.L756:
	mov	r3, #63	@ ret_id,
	b	.L754	@
.L760:
	.align	2
.L759:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L764	@,
	ldr	r3, .L765	@ tmp117,
	ldr	r3, [r3]	@ D.32905, s_pFspInst
	cmp	r3, #0	@ D.32905,
	beq	.L764	@,
	ldr	r0, [r3, #4]	@ _4->eFspInstState, _4->eFspInstState
	subs	r0, r0, #1	@ D.32904, _4->eFspInstState,
	mvnne	r0, #0	@ D.32904,
	bx	lr	@
.L764:
	mvn	r0, #0	@ D.32904,
	bx	lr	@
.L766:
	.align	2
.L765:
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
	.type	g_IsFrameIntfValid, %object
	.size	g_IsFrameIntfValid, 4
g_IsFrameIntfValid:
	.space	4
	.type	g_FspFrameIntf, %object
	.size	g_FspFrameIntf, 16
g_FspFrameIntf:
	.space	16
	.type	s_FspVoQue, %object
	.size	s_FspVoQue, 8
s_FspVoQue:
	.space	8
	.type	g_SpinLock_fsp, %object
	.size	g_SpinLock_fsp, 8
g_SpinLock_fsp:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
