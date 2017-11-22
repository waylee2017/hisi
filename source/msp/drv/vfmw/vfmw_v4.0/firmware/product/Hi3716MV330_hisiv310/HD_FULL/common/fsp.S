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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_VP6_SUPPORT -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4
@ -D CFG_MAX_CHAN_NUM=4 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
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
	add	r0, sp, #136	@ tmp642,,
	mov	r1, #416	@,
	mov	r7, r2	@ MemSize, MemSize
	str	r3, [sp, #124]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r5, #3	@ InstID,
	bhi	.L31	@,
	ldr	r3, .L39	@ tmp337,
	ldr	r9, [r3, r5, asl #2]	@ D.34174, s_pFspInst
	cmp	r9, #0	@ D.34174,
	beq	.L32	@,
	ldr	r1, .L39+4	@ tmp345,
	mov	r4, #4	@ D.34180,
	ldrsb	r2, [r9, #60]	@ D.34180, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	ldrsb	r3, [r9, #65]	@ D.34172, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDecFsNum
	ldr	ip, [r1, #36]	@ D.34177, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34177,
	smlabb	r4, r4, r2, r3	@ MinFsNum, D.34180, D.34180, D.34172
	beq	.L25	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	mov	lr, #16	@ tmp348,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	add	r1, sp, #136	@ tmp643,,
	str	r5, [sp, #12]	@ InstID,
	mov	r8, #40	@ tmp351,
	str	r1, [sp, #16]	@ tmp643,
	mov	r0, r6	@, MemPhyAddr
	str	lr, [sp, #20]	@ tmp348,
	mov	r1, r7	@, MemSize
	ldrsb	lr, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32UserDec
	stmib	sp, {r8, lr}	@,,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.34177
	subs	r2, r0, #0	@ Ret,
	bne	.L5	@,
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _21->s8TotalValidFsNum
	ldr	r3, [sp, #412]	@ D.34176, MemArrange.ValidFrameNum
	cmp	r4, r3	@ MinFsNum, D.34176
	bgt	.L7	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	strb	r2, [r9, #11]	@ Ret, _21->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable,
	strb	r2, [r9, #12]	@ Ret, _21->s32TfFsNum
	beq	.L33	@,
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.34182, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDecFsNum
	add	r2, r9, #32768	@ tmp615, D.34174,
	str	r2, [sp, #92]	@ tmp615, %sfp
	strb	r3, [r9, #10]	@ D.34182, _21->s32DecFsNum
.L10:
	sxtb	r4, r3	@ D.34176, D.34182
	ldr	r3, [sp, #136]	@ D.34172, MemArrange.VahbStride
	ldr	r2, [sp, #544]	@ D.34172, MemArrange.ImgSlotLen
	add	r1, sp, #552	@ ivtmp.193,,
	str	r9, [sp, #128]	@ D.34174, %sfp
	str	r3, [sp, #72]	@ D.34172, %sfp
	ldr	r3, [sp, #92]	@ tmp615, %sfp
	str	r2, [sp, #80]	@ D.34172, %sfp
	ldr	r0, [r1, #-408]!	@ D.34176, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.34172, _21->ImgSlotLen
	ldr	r2, [sp, #400]	@ D.34176, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.34172, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	str	r1, [sp, #76]	@ ivtmp.193, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #108]	@ D.34176, %sfp
	ldr	r2, [sp, #404]	@ D.34176, MemArrange.LumaPixelOffset
	str	r3, [sp, #96]	@ D.34172, %sfp
	ldr	r3, [r9, #76]	@ D.34172, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	str	r2, [sp, #112]	@ D.34176, %sfp
	ldr	r2, [sp, #408]	@ D.34176, MemArrange.ChromaPixelOffset
	str	r3, [sp, #100]	@ D.34172, %sfp
	mov	r3, r9	@ ivtmp.191, D.34174
	str	r0, [sp, #120]	@ D.34176, %sfp
	str	r2, [sp, #116]	@ D.34176, %sfp
	str	r9, [sp, #132]	@ ivtmp.155, %sfp
	str	r4, [sp, #104]	@ D.34176, %sfp
	b	.L14	@
.L34:
	ldr	r2, [sp, #84]	@ D.34171, %sfp
	str	r1, [r2]	@ i, MEM[base: _303, offset: 0B]
	ldr	r2, [sp, #76]	@ ivtmp.193, %sfp
	ldr	r0, [r2]	@ D.34176, MEM[base: _304, offset: 0B]
	ldr	r2, [sp, #56]	@ D.34171, %sfp
	str	r0, [r10]	@ D.34176, MEM[base: _306, offset: 0B]
	ldr	r0, [sp, #72]	@ D.34172, %sfp
	str	r0, [r9]	@ D.34172, MEM[base: _308, offset: 0B]
	ldr	r0, [sp, #96]	@ D.34172, %sfp
	str	r0, [r8]	@ D.34172, MEM[base: _310, offset: 0B]
	ldr	r0, [sp, #100]	@ D.34172, %sfp
	str	r0, [r7]	@ D.34172, MEM[base: _312, offset: 0B]
	ldr	r0, [sp, #108]	@ D.34176, %sfp
	str	r0, [r6]	@ D.34176, MEM[base: _314, offset: 0B]
	ldr	r0, [sp, #112]	@ D.34176, %sfp
	str	r0, [r5]	@ D.34176, MEM[base: _316, offset: 0B]
	ldr	r0, [sp, #116]	@ D.34176, %sfp
	str	r0, [r4]	@ D.34176, MEM[base: _318, offset: 0B]
	mov	r0, #0	@ tmp885,
	strb	r0, [lr]	@ tmp885, MEM[base: _320, offset: 0B]
	strb	r0, [ip]	@ tmp884, MEM[base: _322, offset: 0B]
	strb	r0, [r2]	@ tmp883, MEM[base: _324, offset: 0B]
	ldr	r2, [sp, #60]	@ D.34171, %sfp
	ldr	r0, [sp, #80]	@ D.34172, %sfp
	str	r0, [r2]	@ D.34172,* D.34171
.L12:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #76]	@ ivtmp.193, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.191, ivtmp.191,
	add	r2, r2, #4	@ ivtmp.193, ivtmp.193,
	str	r2, [sp, #76]	@ ivtmp.193, %sfp
	beq	.L13	@,
	ldr	r2, [sp, #92]	@ tmp615, %sfp
	ldr	r2, [r2, #1872]	@ D.34172, _21->ImgSlotLen
	str	r2, [sp, #80]	@ D.34172, %sfp
.L14:
	add	r2, r3, #27648	@ D.34171, ivtmp.191,
	mov	r0, r2	@ D.34171, D.34171
	add	r2, r2, #152	@ D.34171, D.34171,
	str	r2, [sp, #84]	@ D.34171, %sfp
	add	r10, r0, #160	@ D.34171, D.34171,
	ldr	r2, [sp, #104]	@ D.34176, %sfp
	add	r9, r0, #168	@ D.34171, D.34171,
	add	r8, r0, #172	@ D.34171, D.34171,
	add	r7, r0, #176	@ D.34171, D.34171,
	cmp	r2, r1	@ D.34176, i
	add	r2, r0, #160	@ D.34171, D.34171,
	str	r2, [sp, #88]	@ D.34171, %sfp
	add	r2, r0, #168	@ D.34171, D.34171,
	str	r2, [sp, #24]	@ D.34171, %sfp
	add	r2, r0, #172	@ D.34171, D.34171,
	str	r2, [sp, #28]	@ D.34171, %sfp
	add	r2, r0, #176	@ D.34171, D.34171,
	str	r2, [sp, #32]	@ D.34171, %sfp
	add	r2, r0, #180	@ D.34171, D.34171,
	str	r2, [sp, #36]	@ D.34171, %sfp
	add	r2, r0, #184	@ D.34171, D.34171,
	str	r2, [sp, #40]	@ D.34171, %sfp
	add	r2, r0, #188	@ D.34171, D.34171,
	str	r2, [sp, #44]	@ D.34171, %sfp
	add	r2, r0, #148	@ D.34171, D.34171,
	str	r2, [sp, #48]	@ D.34171, %sfp
	add	r2, r0, #149	@ D.34171, D.34171,
	str	r2, [sp, #52]	@ D.34171, %sfp
	add	r2, r0, #150	@ D.34171, D.34171,
	str	r2, [sp, #56]	@ D.34171, %sfp
	add	r2, r0, #196	@ D.34171, D.34171,
	str	r2, [sp, #60]	@ D.34171, %sfp
	add	r2, r0, #152	@ D.34171, D.34171,
	str	r2, [sp, #64]	@ D.34171, %sfp
	add	r2, r0, #150	@ D.34171, D.34171,
	str	r2, [sp, #68]	@ D.34171, %sfp
	add	r2, r0, #196	@ D.34171, D.34171,
	add	r6, r0, #180	@ D.34171, D.34171,
	add	r5, r0, #184	@ D.34171, D.34171,
	add	r4, r0, #188	@ D.34171, D.34171,
	add	lr, r0, #148	@ D.34171, D.34171,
	add	ip, r0, #149	@ D.34171, D.34171,
	mov	r0, r2	@ D.34171, D.34171
	bgt	.L34	@,
	ldr	r2, [sp, #64]	@ D.34171, %sfp
	mov	fp, #0	@ tmp882,
	str	fp, [r2]	@ tmp882, MEM[base: _328, offset: 0B]
	ldr	r2, [sp, #120]	@ D.34176, %sfp
	str	r2, [r10]	@ D.34176, MEM[base: _330, offset: 0B]
	ldr	r2, [sp, #72]	@ D.34172, %sfp
	str	r2, [r9]	@ D.34172, MEM[base: _332, offset: 0B]
	ldr	r2, [sp, #96]	@ D.34172, %sfp
	str	r2, [r8]	@ D.34172, MEM[base: _334, offset: 0B]
	ldr	r2, [sp, #100]	@ D.34172, %sfp
	str	r2, [r7]	@ D.34172, MEM[base: _336, offset: 0B]
	ldr	r2, [sp, #108]	@ D.34176, %sfp
	str	r2, [r6]	@ D.34176, MEM[base: _338, offset: 0B]
	ldr	r2, [sp, #112]	@ D.34176, %sfp
	str	r2, [r5]	@ D.34176, MEM[base: _340, offset: 0B]
	ldr	r2, [sp, #116]	@ D.34176, %sfp
	str	r2, [r4]	@ D.34176, MEM[base: _342, offset: 0B]
	mov	r2, r0	@ D.34171, D.34171
	strb	fp, [lr]	@ tmp881, MEM[base: _344, offset: 0B]
	ldr	r0, [sp, #80]	@ D.34172, %sfp
	strb	fp, [ip]	@ tmp880, MEM[base: _346, offset: 0B]
	ldr	ip, [sp, #68]	@ D.34171, %sfp
	strb	fp, [ip]	@ tmp878, MEM[base: _348, offset: 0B]
	str	r0, [r2]	@ D.34172,* D.34171
	b	.L12	@
.L33:
	ldrsb	r3, [r9, #1]	@ _21->s8LowBufEnable, _21->s8LowBufEnable
	cmp	r3, #0	@ _21->s8LowBufEnable,
	beq	.L9	@,
	add	r2, r9, #32768	@ tmp615, D.34174,
	ldrb	r3, [sp, #412]	@ zero_extendqisi2	@ D.34182, MemArrange.ValidFrameNum
	str	r2, [sp, #92]	@ tmp615, %sfp
	mov	r1, r2	@ tmp615, tmp615
	ldr	r2, [sp, #140]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	strb	r3, [r9, #10]	@ D.34182, _21->s32DecFsNum
	str	r2, [r1, #1876]	@ MemArrange.TotalMemUsed, _21->TotalMemUsed
	b	.L10	@
.L13:
	ldr	r9, [sp, #128]	@ D.34174, %sfp
	mov	r3, #1	@ tmp437,
	ldr	r4, [sp, #104]	@ D.34176, %sfp
	add	r1, sp, #400	@,,
	ldr	r5, [sp, #92]	@ tmp615, %sfp
	mov	r0, #0	@ tmp441,
	ldr	r6, [sp, #72]	@ D.34172, %sfp
	strb	r3, [r9, #12]	@ tmp437, _21->s32TfFsNum
	add	r3, sp, #552	@ tmp733,,
	add	r3, r3, r4, lsl #2	@ tmp445, tmp733, D.34176,
	str	r0, [r5, #1688]	@ tmp441, _21->stTfFs[0].PhyFsID
	str	r6, [r5, #1704]	@ D.34172, _21->stTfFs[0].Stride
	ldr	r6, [sp, #96]	@ D.34172, %sfp
	ldr	ip, [r3, #-408]	@ tmp447, MemArrange.FrameAddr
	ldmia	r1, {r1, r2, r3}	@,,,
	str	r6, [r5, #1708]	@ D.34172, _21->stTfFs[0].FsWidth
	ldr	r6, [sp, #100]	@ D.34172, %sfp
	str	ip, [r5, #1696]	@ tmp447, _21->stTfFs[0].PhyAddr
	str	r1, [r5, #1716]	@ MemArrange.ChromOffset, _21->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.34172, _21->stTfFs[0].FsHeight
	str	r2, [r5, #1720]	@ MemArrange.LumaPixelOffset, _21->stTfFs[0].LumaPixelOffset
	str	r3, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _21->stTfFs[0].ChromaPixelOffset
	strb	r0, [r5, #1684]	@ tmp441, _21->stTfFs[0].IsDecRef
	strb	r0, [r5, #1685]	@ tmp441, _21->stTfFs[0].IsTfRef
	strb	r0, [r5, #1686]	@ tmp441, _21->stTfFs[0].DispState
	ldrb	r2, [r9, #60]	@ zero_extendqisi2	@ D.34182, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispLoopEnable
	ldr	lr, [sp, #132]	@ ivtmp.155, %sfp
	cmp	r2, r0	@ D.34182,
	streqb	r2, [r9, #11]	@ D.34182, _21->s32DispFsNum
	streq	r2, [sp, #44]	@ D.34182, %sfp
	beq	.L16	@,
	ldr	r2, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r1, [r9, #67]	@ D.34175, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDispFsNum
	rsb	r2, r4, r2	@ D.34176, D.34176, MemArrange.ValidFrameNum
	sub	r2, r2, #1	@ D.34176, D.34176,
	cmp	r2, #25	@ D.34176,
	movge	r2, #25	@ D.34176,
	uxtb	r2, r2	@ D.34182, D.34176
	strb	r2, [r9, #11]	@ D.34182, _21->s32DispFsNum
	sxtb	r3, r2	@ D.34176, D.34182
	str	r3, [sp, #44]	@ D.34176, %sfp
	cmp	r3, r1	@ D.34176, D.34175
	blt	.L35	@,
.L16:
	ldr	r3, [sp, #400]	@ D.34176, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #136]	@ D.34172, MemArrange.VahbStride
	mov	r0, ip	@ tmp619, i
	str	r3, [sp, #96]	@ D.34176, %sfp
	ldr	r3, [sp, #404]	@ D.34176, MemArrange.LumaPixelOffset
	str	r2, [sp, #108]	@ D.34172, %sfp
	str	r3, [sp, #100]	@ D.34176, %sfp
	ldr	r3, [sp, #408]	@ D.34176, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.34176, %sfp
	mov	r3, #1	@ D.34182,
	mov	r2, r3	@ D.34182, D.34182
	mov	r3, r4	@ D.34176, D.34176
	b	.L24	@
.L37:
	ldr	r3, [sp, #48]	@ D.34171, %sfp
	ldr	r2, [sp, #56]	@ D.34171, %sfp
	str	ip, [r3]	@ i, MEM[base: _236, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp495, %sfp
	ldr	r3, [r3, #-408]	@ D.34176, MemArrange.FrameAddr
	str	r3, [r2]	@ D.34176, MEM[base: _140, offset: 0B]
	ldr	r3, [sp, #60]	@ D.34171, %sfp
	ldr	r2, [sp, #72]	@ D.34172, %sfp
	str	r2, [r3]	@ D.34172, MEM[base: _169, offset: 0B]
	ldr	r2, [sp, #64]	@ D.34171, %sfp
	ldr	r3, [r9, #88]	@ D.34176, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.34176, MEM[base: _143, offset: 0B]
	ldr	r2, [sp, #96]	@ D.34176, %sfp
	ldr	r3, [r9, #92]	@ D.34176, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.34176, MEM[base: _151, offset: 0B]
	str	r2, [r7]	@ D.34176, MEM[base: _229, offset: 0B]
	ldr	r2, [sp, #100]	@ D.34176, %sfp
	str	r2, [r6]	@ D.34176, MEM[base: _10, offset: 0B]
	ldr	r2, [sp, #104]	@ D.34176, %sfp
	str	r2, [r5]	@ D.34176, MEM[base: _6, offset: 0B]
	strb	r0, [r4]	@ tmp619, MEM[base: _2, offset: 0B]
	strb	r0, [fp]	@ tmp619, MEM[base: _282, offset: 0B]
	strb	r0, [r10]	@ tmp619, MEM[base: _274, offset: 0B]
.L18:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #108]	@ D.34172, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.155, ivtmp.155,
	str	r3, [sp, #72]	@ D.34172, %sfp
	beq	.L36	@,
	ldrsb	r1, [r9, #11]	@ D.34176, _21->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.34182, _21->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.34176, _21->s32DecFsNum
	str	r1, [sp, #44]	@ D.34176, %sfp
.L24:
	add	r1, ip, r3	@ tmp492, i, D.34176
	sxtab	r3, r3, r2	@ tmp528, D.34176, D.34182
	sxtab	r2, r1, r2	@ tmp493, tmp492, D.34182
	add	r1, lr, #30976	@ D.34171, ivtmp.155,
	mov	r4, r1	@ D.34171, D.34171
	add	r1, r1, #152	@ D.34171, D.34171,
	str	r1, [sp, #48]	@ D.34171, %sfp
	add	r1, sp, #552	@ tmp756,,
	add	r3, r1, r3, lsl #2	@ tmp530, tmp760, tmp528,
	str	r3, [sp, #76]	@ tmp530, %sfp
	add	r3, r4, #160	@ D.34171, D.34171,
	str	r3, [sp, #56]	@ D.34171, %sfp
	add	r3, r4, #168	@ D.34171, D.34171,
	str	r3, [sp, #60]	@ D.34171, %sfp
	add	r3, r4, #160	@ D.34171, D.34171,
	str	r3, [sp, #80]	@ D.34171, %sfp
	add	r3, r4, #168	@ D.34171, D.34171,
	str	r3, [sp, #84]	@ D.34171, %sfp
	ldr	r3, [sp, #44]	@ D.34176, %sfp
	add	r2, r1, r2, lsl #2	@ tmp495, tmp756, tmp493,
	add	r10, r4, #150	@ D.34171, D.34171,
	str	r2, [sp, #52]	@ tmp495, %sfp
	cmp	r3, ip	@ D.34176, i
	add	r3, r4, #176	@ D.34171, D.34171,
	str	r3, [sp, #44]	@ D.34171, %sfp
	add	r3, r4, #180	@ D.34171, D.34171,
	str	r3, [sp, #24]	@ D.34171, %sfp
	add	r3, r4, #184	@ D.34171, D.34171,
	str	r3, [sp, #28]	@ D.34171, %sfp
	add	r3, r4, #188	@ D.34171, D.34171,
	str	r3, [sp, #32]	@ D.34171, %sfp
	add	r3, r4, #148	@ D.34171, D.34171,
	add	r2, r4, #152	@ D.34171, D.34171,
	add	fp, r4, #149	@ D.34171, D.34171,
	str	r2, [sp, #68]	@ D.34171, %sfp
	add	r8, r4, #176	@ D.34171, D.34171,
	add	r2, r4, #172	@ D.34171, D.34171,
	add	r7, r4, #180	@ D.34171, D.34171,
	add	r6, r4, #184	@ D.34171, D.34171,
	add	r5, r4, #188	@ D.34171, D.34171,
	str	r2, [sp, #64]	@ D.34171, %sfp
	mov	r4, r3	@ D.34171, D.34171
	str	r2, [sp, #88]	@ D.34171, %sfp
	str	r3, [sp, #36]	@ D.34171, %sfp
	str	r10, [sp, #40]	@ D.34171, %sfp
	bgt	.L37	@,
	ldr	r3, [sp, #68]	@ D.34171, %sfp
	ldr	r2, [sp, #72]	@ D.34172, %sfp
	str	r0, [r3]	@ tmp619, MEM[base: _270, offset: 0B]
	ldr	r3, [sp, #76]	@ tmp530, %sfp
	ldr	r10, [r3, #-408]	@ D.34176, MemArrange.FrameAddr
	ldr	r3, [sp, #80]	@ D.34171, %sfp
	str	r10, [r3]	@ D.34176, MEM[base: _264, offset: 0B]
	ldr	r3, [sp, #84]	@ D.34171, %sfp
	str	r2, [r3]	@ D.34172, MEM[base: _258, offset: 0B]
	ldr	r3, [sp, #88]	@ D.34171, %sfp
	ldr	r10, [r9, #88]	@ D.34176, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsWidth
	str	r10, [r3]	@ D.34176, MEM[base: _252, offset: 0B]
	ldr	r3, [r9, #92]	@ D.34176, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DispFsHeight
	str	r3, [r8]	@ D.34176, MEM[base: _285, offset: 0B]
	ldr	r3, [sp, #96]	@ D.34176, %sfp
	str	r3, [r7]	@ D.34176, MEM[base: _287, offset: 0B]
	ldr	r3, [sp, #100]	@ D.34176, %sfp
	str	r3, [r6]	@ D.34176, MEM[base: _289, offset: 0B]
	ldr	r3, [sp, #104]	@ D.34176, %sfp
	str	r3, [r5]	@ D.34176, MEM[base: _291, offset: 0B]
	ldr	r3, [sp, #40]	@ D.34171, %sfp
	strb	r0, [r4]	@ tmp619, MEM[base: _293, offset: 0B]
	strb	r0, [fp]	@ tmp619, MEM[base: _295, offset: 0B]
	strb	r0, [r3]	@ tmp619, MEM[base: _297, offset: 0B]
	b	.L18	@
.L36:
	ldr	r3, [sp, #540]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #416	@ ivtmp.126,,
	add	r0, r9, #34560	@ ivtmp.132, D.34174,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.136, D.34174,
	mov	lr, r2	@ tmp618, i
	movge	r3, #20	@ D.34176,
	uxtb	r3, r3	@ D.34182, D.34176
	strb	r3, [r9, #13]	@ D.34182, _21->s32PmvNum
	b	.L23	@
.L38:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.34182, _21->s32PmvNum
.L23:
	sxtb	r3, r3	@ D.34176, D.34182
	add	ip, ip, #4	@ ivtmp.126, ivtmp.126,
	cmp	r3, r2	@ D.34176, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.132, ivtmp.132,
	add	r1, r1, #1	@ ivtmp.136, ivtmp.136,
	ldrgt	r3, [ip, #-4]	@ D.34176, MEM[base: _82, offset: 0B]
	ldrle	r3, [sp, #416]	@ D.34176, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.34176,
	strb	lr, [r1, #-1]	@ tmp618,
	bne	.L38	@,
	ldr	r7, [sp, #92]	@ tmp615, %sfp
	add	r3, r9, #24576	@ tmp571, D.34174,
	ldr	r1, [sp, #536]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r2, #0	@ tmp572,
	ldr	ip, [sp, #136]	@ MemArrange.VahbStride, MemArrange.VahbStride
	mov	r0, r2	@ D.34172, tmp572
	ldr	lr, [sp, #408]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r1, [r7, #1788]	@ MemArrange.HafPmvOffset, _21->s32HalfPmvOffset
	ldr	r1, [r3, #3232]	@ _21->stDecFs[0].PhyAddr, _21->stDecFs[0].PhyAddr
	str	ip, [r3, #3188]	@ MemArrange.VahbStride, _21->stDummyPhyFs.Stride
	str	r2, [r3, #3172]	@ tmp572, _21->stDummyPhyFs.PhyFsID
	str	r1, [r3, #3180]	@ _21->stDecFs[0].PhyAddr, _21->stDummyPhyFs.PhyAddr
	ldr	r1, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth
	ldr	r5, [sp, #400]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	ldr	r4, [sp, #404]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	str	r1, [r3, #3192]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsWidth, _21->stDummyPhyFs.FsWidth
	ldr	r6, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight
	ldr	r1, [sp, #140]	@ D.34176, MemArrange.TotalMemUsed
	str	lr, [r3, #3208]	@ MemArrange.ChromaPixelOffset, _21->stDummyPhyFs.ChromaPixelOffset
	mov	lr, r7	@ tmp615, tmp615
	strb	r2, [r3, #3168]	@ tmp572, _21->stDummyPhyFs.IsDecRef
	str	r6, [r3, #3196]	@ MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32DecFsHeight, _21->stDummyPhyFs.FsHeight
	strb	r2, [r3, #3169]	@ tmp572, _21->stDummyPhyFs.IsTfRef
	strb	r2, [r3, #3170]	@ tmp572, _21->stDummyPhyFs.DispState
	str	r5, [r3, #3200]	@ MemArrange.ChromOffset, _21->stDummyPhyFs.ChromOffset
	str	r4, [r3, #3204]	@ MemArrange.LumaPixelOffset, _21->stDummyPhyFs.LumaPixelOffset
	ldr	ip, [sp, #548]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r3, [sp, #124]	@ UsedMemSize, %sfp
	str	r1, [r7, #1876]	@ D.34176, _21->TotalMemUsed
	str	ip, [r7, #1888]	@ MemArrange.u32StrideByte, _21->StrideByte
	str	r1, [r3]	@ D.34176, *UsedMemSize_227(D)
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
	mvn	r0, #0	@ D.34172,
	b	.L28	@
.L9:
	ldr	r3, [sp, #412]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r2, r9, #32768	@ tmp615, D.34174,
	str	r2, [sp, #92]	@ tmp615, %sfp
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.34176,
	uxtb	r3, r3	@ D.34182, D.34176
	strb	r3, [r9, #10]	@ D.34182, _21->s32DecFsNum
	b	.L10	@
.L7:
	str	r3, [sp]	@ D.34176,
	mov	r3, r4	@, MinFsNum
	ldr	r1, .L39+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34172,
	b	.L28	@
.L31:
	ldr	r3, .L39+16	@,
	movw	r2, #523	@,
	ldr	r1, .L39+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34172,
	b	.L28	@
.L35:
	ldrsb	r3, [r9, #65]	@ D.34176, MEM[(struct FSP_INST_CFG_S *)_21 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #44]	@, %sfp
	str	r1, [sp]	@ D.34175,
	ldr	r1, .L39+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34172,
	b	.L28	@
.L32:
	mov	r0, r9	@, D.34174
	ldr	r3, .L39+28	@,
	mov	r2, #524	@,
	ldr	r1, .L39+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34172,
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
	mov	r9, r0	@ InstID, InstID
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	add	r0, sp, #40	@ tmp353,,
	mov	r1, #416	@,
	mov	r10, r2	@ s32Num, s32Num
	mov	fp, #0	@ tmp213,
	str	fp, [sp, #36]	@ tmp213, s32UsedMemSize
	bl	__memzero	@
	cmp	r9, #3	@ InstID,
	bhi	.L100	@,
	cmp	r4, #0	@ VoUsingFrameArray,
	beq	.L101	@,
	ldr	r3, .L109	@ tmp219,
	ldr	r6, [r3, r9, asl #2]	@ pstInst, s_pFspInst
	cmp	r6, #0	@ pstInst,
	beq	.L102	@,
	add	r5, r6, #32768	@ tmp313, pstInst,
	ldr	r3, [r4]	@ D.34220, VoUsingFrameArray_24(D)->FrameAddr
	ldr	r8, [r5, #1880]	@ s32VdhMemAddr, pstInst_26->MemAddr
	ldr	r7, [r5, #1876]	@ pstInst_26->TotalMemUsed, pstInst_26->TotalMemUsed
	ldr	r2, [r5, #1888]	@ pstInst_26->StrideByte, pstInst_26->StrideByte
	cmp	r8, r3	@ s32VdhMemAddr, D.34220
	ldr	r1, [r5, #1884]	@ s32VdhAllMemSize, pstInst_26->MemSize
	rsblt	fp, r8, r3	@ s32FreeSize, s32VdhMemAddr, D.34220
	add	r7, r7, r2	@ s32VdhTotalMemUse, pstInst_26->TotalMemUsed, pstInst_26->StrideByte
	cmp	fp, r7	@ s32FreeSize, s32VdhTotalMemUse
	str	r1, [sp, #24]	@ s32VdhAllMemSize, %sfp
	bge	.L76	@,
	sub	r2, r10, #-536870911	@ D.34218, s32Num,
	ldr	r1, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r0, r4, r2, lsl #3	@ D.34223, VoUsingFrameArray, D.34218,
	ldr	r2, [r4, r2, asl #3]	@ _42->FrameAddr, _42->FrameAddr
	add	r1, r8, r1	@ D.34220, s32VdhMemAddr, s32VdhAllMemSize
	ldr	ip, [r0, #4]	@ _42->FrameSize, _42->FrameSize
	add	r2, r2, ip	@ D.34220, _42->FrameAddr, _42->FrameSize
	cmp	r1, r2	@ D.34220, D.34220
	rsbgt	r1, r2, r1	@ s32FreeSize, D.34220, D.34220
	movle	r1, #0	@ s32FreeSize,
	cmp	r1, r7	@ s32FreeSize, s32VdhTotalMemUse
	bge	.L49	@,
	sub	r2, r10, #1	@ i, s32Num,
	cmp	r2, #0	@ i,
	ble	.L78	@,
	ldmib	r4, {r0, r1}	@ VoUsingFrameArray,,
	add	r3, r3, r0	@ D.34220, D.34220, VoUsingFrameArray_24(D)->FrameSize
	rsb	r1, r3, r1	@ s32FreeSize, D.34220, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_24(D) + 8B].FrameAddr
	cmp	r7, r1	@ s32VdhTotalMemUse, s32FreeSize
	addgt	r0, r4, #8	@ ivtmp.243, VoUsingFrameArray,
	movgt	fp, r2	@ i, i
	movgt	r1, #0	@ i,
	bgt	.L54	@,
	b	.L103	@
.L56:
	ldr	lr, [r4, r1, asl #3]	@ MEM[base: VoUsingFrameArray_24(D), index: _3, step: 8, offset: 0B], MEM[base: VoUsingFrameArray_24(D), index: _3, step: 8, offset: 0B]
	add	r0, r0, #8	@ ivtmp.243, ivtmp.243,
	ldr	r3, [r0, #-4]	@ MEM[base: _153, offset: 4B], MEM[base: _153, offset: 4B]
	add	r3, lr, r3	@ D.34220, MEM[base: VoUsingFrameArray_24(D), index: _3, step: 8, offset: 0B], MEM[base: _153, offset: 4B]
	ldr	lr, [ip, #8]	@ tmp356, MEM[base: _153, offset: 8B]
	rsb	lr, r3, lr	@ s32FreeSize, D.34220, tmp356
	cmp	r7, lr	@ s32VdhTotalMemUse, s32FreeSize
	ble	.L104	@,
.L54:
	add	r1, r1, #1	@ i, i,
	mov	ip, r0	@ D.34226, ivtmp.243
	cmp	r1, r2	@ i, i
	bne	.L56	@,
.L55:
	str	r7, [sp, #8]	@ s32VdhTotalMemUse,
	mov	r3, #1216	@,
	str	r10, [sp, #4]	@ s32Num,
	mov	r0, #31	@,
	str	fp, [sp]	@ i,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34219,
.L88:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L76:
	mov	r3, #1	@ s32FoundVdhMemInTop,
	str	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
.L47:
	ldrsb	r3, [r6, #10]	@ pstInst_26->s32DecFsNum, pstInst_26->s32DecFsNum
	ldr	fp, .L109+12	@ tmp312,
	cmp	r3, #0	@ pstInst_26->s32DecFsNum,
	ldrle	lr, [fp, r9, asl #2]	@ D.34217, s_pstVfmwChan
	ble	.L58	@,
	ldr	lr, [fp, r9, asl #2]	@ D.34217, s_pstVfmwChan
	add	r1, r6, #27648	@ ivtmp.235, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.235, ivtmp.235,
	add	r3, lr, #209920	@ ivtmp.232, D.34217,
	mov	r0, r2	@ tmp315, i
	add	r3, r3, #824	@ ivtmp.232, ivtmp.232,
.L59:
	str	r0, [r3]	@ tmp315, MEM[base: _117, offset: 0B]
	add	r2, r2, #1	@ i, i,
	ldr	ip, [r1], #52	@ D.34220, MEM[base: _131, offset: 0B]
	add	r3, r3, #16	@ ivtmp.232, ivtmp.232,
	str	ip, [r3, #-12]	@ D.34220, MEM[base: _117, offset: 4B]
	ldr	ip, [r5, #1872]	@ D.34220, pstInst_26->ImgSlotLen
	str	r0, [r3, #-4]	@ tmp315, MEM[base: _117, offset: 12B]
	str	ip, [r3, #-8]	@ D.34220, MEM[base: _117, offset: 8B]
	ldrsb	ip, [r6, #10]	@ D.34220, pstInst_26->s32DecFsNum
	cmp	ip, r2	@ D.34220, i
	bgt	.L59	@,
.L58:
	ldr	r1, .L109+16	@ tmp274,
	ldr	r2, [lr, #1608]	@ s32ThrWidth, _1->stSynExtraData.s32DSDThrWidth
	ldr	r3, [lr, #1612]	@ s32ThrHeight, _1->stSynExtraData.s32DSDThrHeight
	ldr	ip, [r1, #36]	@ D.34225, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r1, [lr, #1588]	@ s32DnrNum, _1->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	cmp	ip, #0	@ D.34225,
	beq	.L62	@,
	mov	lr, #0	@ tmp280,
	add	r0, sp, #40	@ tmp359,,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp279,
	str	r0, [sp, #16]	@ tmp359,
	mov	r0, #64	@ tmp277,
	str	r1, [sp, #12]	@ tmp279,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@ tmp277,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp280,
	str	lr, [sp]	@ tmp280,
	blx	ip	@ D.34225
	cmp	r0, #0	@,
	beq	.L61	@,
.L62:
	ldr	r2, .L109+4	@,
	mov	r0, #31	@,
	ldr	r1, .L109+20	@,
	bl	dprint_vfmw	@
.L61:
	ldr	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	ldr	ip, [fp, r9, asl #2]	@ D.34217, s_pstVfmwChan
	ldr	lr, [sp, #44]	@ D.34220, MemArrange.TotalMemUsed
	cmp	r3, #1	@ s32FoundVdhMemInTop,
	str	lr, [ip, #240]	@ D.34220, _100->s32OffLineDNRMemSize
	beq	.L105	@,
.L63:
	sub	r3, r10, #-536870911	@ D.34218, s32Num,
	ldr	r2, [sp, #24]	@ s32VdhAllMemSize, %sfp
	add	r8, r8, r2	@ D.34220, s32VdhMemAddr, s32VdhAllMemSize
	add	r2, r4, r3, lsl #3	@ D.34223, VoUsingFrameArray, D.34218,
	ldr	r3, [r4, r3, asl #3]	@ _111->FrameAddr, _111->FrameAddr
	ldr	r2, [r2, #4]	@ _111->FrameSize, _111->FrameSize
	add	r3, r3, r2	@ D.34220, _111->FrameAddr, _111->FrameSize
	cmp	r8, r3	@ D.34220, D.34220
	rsbgt	r8, r3, r8	@ s32FreeSize, D.34220, D.34220
	movle	r8, #0	@ s32FreeSize,
	cmp	r8, lr	@ s32FreeSize, D.34220
	strge	r3, [ip, #236]	@ D.34220, _100->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.34219,
	bge	.L88	@,
	sub	r2, r10, #1	@ i, s32Num,
	cmp	r2, #0	@ i,
	ble	.L83	@,
	ldmib	r4, {r0, r1}	@ VoUsingFrameArray,,
	ldr	r3, [r4]	@ VoUsingFrameArray_24(D)->FrameAddr, VoUsingFrameArray_24(D)->FrameAddr
	add	r3, r3, r0	@ D.34220, VoUsingFrameArray_24(D)->FrameAddr, VoUsingFrameArray_24(D)->FrameSize
	rsb	r1, r3, r1	@ s32FreeSize, D.34220, MEM[(struct DNR_VoUsingFrameInfo_S *)VoUsingFrameArray_24(D) + 8B].FrameAddr
	cmp	lr, r1	@ D.34220, s32FreeSize
	movgt	r6, r2	@ i, i
	movgt	r5, #0	@ i,
	bgt	.L70	@,
	b	.L106	@
.L72:
	ldr	r3, [r4, #8]	@ MEM[base: _141, offset: 8B], MEM[base: _141, offset: 8B]
	add	r4, r4, #8	@ ivtmp.227, ivtmp.227,
	ldr	r0, [r4, #4]	@ MEM[base: _141, offset: 12B], MEM[base: _141, offset: 12B]
	ldr	r1, [r1, #16]	@ MEM[base: _141, offset: 16B], MEM[base: _141, offset: 16B]
	add	r3, r3, r0	@ D.34220, MEM[base: _141, offset: 8B], MEM[base: _141, offset: 12B]
	rsb	r1, r3, r1	@ s32FreeSize, D.34220, MEM[base: _141, offset: 16B]
	cmp	lr, r1	@ D.34220, s32FreeSize
	ble	.L107	@,
.L70:
	add	r5, r5, #1	@ i, i,
	mov	r1, r4	@ D.34226, ivtmp.227
	cmp	r5, r2	@ i, i
	bne	.L72	@,
.L71:
	str	lr, [sp, #8]	@ D.34220,
	movw	r3, #1299	@,
	str	r10, [sp, #4]	@ s32Num,
	mov	r0, #31	@,
	str	r6, [sp]	@ i,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34219,
	b	.L88	@
.L105:
	ldr	r3, [r4]	@ D.34220, VoUsingFrameArray_24(D)->FrameAddr
	add	r7, r8, r7	@ D.34220, s32VdhMemAddr, s32VdhTotalMemUse
	cmp	r3, r7	@ D.34220, D.34220
	rsbgt	r3, r7, r3	@ s32FreeSize, D.34220, D.34220
	movle	r3, #0	@ s32FreeSize,
	cmp	r3, lr	@ s32FreeSize, D.34220
	strge	r7, [ip, #236]	@ D.34220, _100->s32OffLineDnrMemAddr
	movge	r0, #0	@ D.34219,
	blt	.L63	@,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L49:
	str	r2, [r5, #1880]	@ D.34220, pstInst_26->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [r0, #4]	@ _42->FrameSize, _42->FrameSize
	add	r3, r3, r7	@ D.34220, _42->FrameSize, s32VdhTotalMemUse
	str	r3, [r0, #4]	@ D.34220, _42->FrameSize
.L53:
	add	r3, sp, #36	@,,
	ldr	r2, [r5, #1884]	@, pstInst_26->MemSize
	ldr	r1, [r5, #1880]	@, pstInst_26->MemAddr
	mov	r0, r9	@, InstID
	bl	FSP_DSDRePartitionFsMemory	@
	cmn	r0, #1	@ s32Ret,
	beq	.L108	@,
	ldr	r2, [sp, #36]	@ D.34220, s32UsedMemSize
	cmp	r7, r2	@ s32VdhTotalMemUse, D.34220
	movge	r3, #0	@ s32FoundVdhMemInTop,
	strge	r3, [sp, #28]	@ s32FoundVdhMemInTop, %sfp
	bge	.L47	@,
	ldr	r1, [r5, #1884]	@ pstInst_26->MemSize, pstInst_26->MemSize
	movw	r3, #1233	@,
	str	r2, [sp]	@ D.34220,
	mov	r0, #31	@,
	str	r7, [sp, #4]	@ s32VdhTotalMemUse,
	str	r1, [sp, #8]	@ pstInst_26->MemSize,
	ldr	r2, .L109+4	@,
	ldr	r1, .L109+28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34219,
	b	.L88	@
.L107:
	cmp	r2, r5	@ i, i
	str	r3, [ip, #236]	@ D.34220, _100->s32OffLineDnrMemAddr
	ble	.L84	@,
	mov	r0, #0	@ D.34219,
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L104:
	str	r3, [r5, #1880]	@ D.34220, pstInst_26->MemAddr
	cmp	r2, r1	@ i, i
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [ip, #4]	@ _180->FrameSize, _180->FrameSize
	add	r3, r3, r7	@ D.34220, _180->FrameSize, s32VdhTotalMemUse
	str	r3, [ip, #4]	@ D.34220, _180->FrameSize
	bgt	.L53	@,
	mov	fp, r1	@ i, i
	b	.L55	@
.L83:
	mov	r6, #0	@ i,
	b	.L71	@
.L106:
	mov	r0, #0	@ D.34219,
	str	r3, [ip, #236]	@ D.34220, _100->s32OffLineDnrMemAddr
	b	.L88	@
.L100:
	mov	r0, fp	@, tmp213
	ldr	r3, .L109+32	@,
	movw	r2, #1164	@,
	ldr	r1, .L109+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34219,
	b	.L88	@
.L78:
	mov	fp, #0	@ i,
	b	.L55	@
.L103:
	str	r3, [r5, #1880]	@ D.34220, pstInst_26->MemAddr
	str	r7, [r5, #1884]	@ s32VdhTotalMemUse, pstInst_26->MemSize
	ldr	r3, [r4, #4]	@ VoUsingFrameArray_24(D)->FrameSize, VoUsingFrameArray_24(D)->FrameSize
	add	r3, r3, r7	@ D.34220, VoUsingFrameArray_24(D)->FrameSize, s32VdhTotalMemUse
	str	r3, [r4, #4]	@ D.34220, VoUsingFrameArray_24(D)->FrameSize
	b	.L53	@
.L108:
	movw	r3, #1228	@,
.L93:
	ldr	r2, .L109+4	@,
	mov	r0, #31	@,
	ldr	r1, .L109+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34219,
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
	mvn	r0, #0	@ D.34219,
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
	mov	fp, r0	@ InstID, InstID
	add	r0, sp, #48	@ tmp367,,
	str	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	mov	r1, #416	@,
	str	r2, [sp, #40]	@ s32Num, %sfp
	bl	__memzero	@
	cmp	fp, #3	@ InstID,
	bhi	.L164	@,
	ldr	r3, .L169	@ tmp206,
	ldr	r8, [r3, fp, asl #2]	@ pstInst, s_pFspInst
	add	r3, r8, #32768	@ tmp208, pstInst,
	ldrsb	r2, [r8, #10]	@ pstInst_20->s32DecFsNum, pstInst_20->s32DecFsNum
	ldr	r1, [r3, #1880]	@ s32VdhMemAddr, pstInst_20->MemAddr
	cmp	r2, #0	@ pstInst_20->s32DecFsNum,
	ldr	r2, [r3, #1884]	@ s32VdhAllMemSize, pstInst_20->MemSize
	ldr	r6, [r3, #1872]	@ s32ImgSize, pstInst_20->ImgSlotLen
	str	r1, [sp, #24]	@ s32VdhMemAddr, %sfp
	str	r2, [sp, #44]	@ s32VdhAllMemSize, %sfp
	ldr	r2, [r3, #1876]	@ D.34265, pstInst_20->TotalMemUsed
	str	r2, [sp, #32]	@ D.34265, %sfp
	ldr	r2, [r3, #1888]	@ D.34266, pstInst_20->StrideByte
	str	r2, [sp, #36]	@ D.34266, %sfp
	ble	.L165	@,
	add	r4, r8, #27648	@ ivtmp.270, pstInst,
	ldr	r10, .L169+4	@ tmp340,
	add	r4, r4, #160	@ ivtmp.270, ivtmp.270,
	mov	r5, #0	@ i,
	mov	r9, #1	@ tmp341,
	b	.L120	@
.L166:
	ldr	r3, [r10, fp, asl #2]	@ D.34263, s_pstVfmwChan
	add	r3, r3, r5, lsl #4	@ tmp226, D.34263, i,
	add	r2, r3, #209920	@ tmp228, tmp226,
	add	r3, r3, #208896	@ tmp238, tmp226,
	str	r0, [r2, #824]	@ s32UsingCount, _36->stFrameArray[i_123].eFrameState
	ldr	r1, [r4]	@ D.34265, MEM[base: _156, offset: 0B]
	str	r1, [r2, #828]	@ D.34265,
	str	r6, [r3, #1856]	@ s32ImgSize,
	str	r0, [r3, #1860]	@ s32UsingCount,
.L118:
	ldrsb	r3, [r8, #10]	@ D.34265, pstInst_20->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #52	@ ivtmp.270, ivtmp.270,
	cmp	r3, r5	@ D.34265, i
	ble	.L121	@,
.L120:
	mov	r2, r6	@, s32ImgSize
	ldr	r1, [r4]	@, MEM[base: _156, offset: 0B]
	mov	r0, fp	@, InstID
	ldr	r7, .L169+4	@ tmp337,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L166	@,
	ble	.L119	@,
	ldr	r3, [r10, fp, asl #2]	@ D.34263, s_pstVfmwChan
	ldr	r7, .L169+4	@ tmp337,
	add	r3, r3, r5, lsl #4	@ tmp246, D.34263, i,
	add	r2, r3, #209920	@ tmp248, tmp246,
	add	r3, r3, #208896	@ tmp258, tmp246,
	str	r9, [r2, #824]	@ tmp341, _43->stFrameArray[i_123].eFrameState
	ldr	r1, [r4]	@ D.34265, MEM[base: _156, offset: 0B]
	str	r1, [r2, #828]	@ D.34265,
	str	r6, [r3, #1856]	@ s32ImgSize,
	str	r0, [r3, #1860]	@ s32UsingCount,
	b	.L118	@
.L165:
	ldr	r7, .L169+4	@ tmp337,
.L121:
	ldr	r3, .L169+8	@ tmp219,
	ldr	r1, [r7, fp, asl #2]	@ D.34263, s_pstVfmwChan
	ldr	r4, [r3, #36]	@ D.34268, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	ldr	r2, [r1, #1608]	@ s32ThrWidth, _50->stSynExtraData.s32DSDThrWidth
	cmp	r4, #0	@ D.34268,
	ldr	r3, [r1, #1612]	@ s32ThrHeight, _50->stSynExtraData.s32DSDThrHeight
	ldr	r1, [r1, #1588]	@ s32DnrNum, _50->stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	beq	.L115	@,
	mov	lr, #0	@ tmp269,
	add	r0, sp, #48	@ tmp372,,
	str	r1, [sp, #4]	@ s32DnrNum,
	mvn	r1, #0	@ tmp268,
	str	r0, [sp, #16]	@ tmp372,
	mov	r0, #64	@ tmp266,
	str	r1, [sp, #12]	@ tmp268,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@ tmp266,
	mov	r0, #1	@,
	str	lr, [sp, #8]	@ tmp269,
	str	lr, [sp]	@ tmp269,
	blx	r4	@ D.34268
	cmp	r0, #0	@,
	beq	.L122	@,
.L115:
	ldr	r2, .L169+12	@,
	mov	r0, #31	@,
	ldr	r1, .L169+16	@,
	bl	dprint_vfmw	@
.L122:
	ldr	r2, [sp, #36]	@ D.34266, %sfp
	ldr	r3, [sp, #32]	@ D.34265, %sfp
	ldr	r4, [r7, fp, asl #2]	@ D.34263, s_pstVfmwChan
	add	r3, r3, r2	@ D.34266, D.34265, D.34266
	ldr	r2, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r7, [sp, #52]	@ D.34265, MemArrange.TotalMemUsed
	add	r3, r2, r3	@ D.34265, s32VdhMemAddr, D.34266
	ldr	r2, [sp, #28]	@ VoUsingFrameArray, %sfp
	str	r7, [r4, #240]	@ D.34265, _58->s32OffLineDNRMemSize
	ldr	r2, [r2]	@ D.34265, VoUsingFrameArray_61(D)->FrameAddr
	cmp	r2, r3	@ D.34265, D.34265
	rsbgt	r2, r3, r2	@ s32FreeSize, D.34265, D.34265
	movle	r2, #0	@ s32FreeSize,
	cmp	r2, r7	@ s32FreeSize, D.34265
	bge	.L163	@,
	ldr	r2, [sp, #40]	@ s32Num, %sfp
	cmp	r2, #0	@ s32Num,
	beq	.L125	@,
	ble	.L126	@,
	sub	r2, r2, #-536870911	@ D.34261, s32Num,
	ldr	r0, [sp, #28]	@ VoUsingFrameArray, %sfp
	add	r1, r0, r2, lsl #3	@ D.34269, VoUsingFrameArray, D.34261,
	ldr	r2, [r0, r2, asl #3]	@ _69->FrameAddr, _69->FrameAddr
	ldr	r1, [r1, #4]	@ _69->FrameSize, _69->FrameSize
	add	r2, r2, r1	@ D.34265, _69->FrameAddr, _69->FrameSize
	cmp	r3, r2	@ D.34265, D.34265
	bgt	.L125	@,
.L127:
	ldr	r3, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r1, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r3, r3, r1	@ D.34265, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r3, r2, r3	@ s32FreeSize, D.34265, D.34265
	cmp	r7, r3	@ D.34265, s32FreeSize
	strle	r2, [r4, #236]	@ D.34265, _58->s32OffLineDnrMemAddr
	movle	r0, #0	@ D.34262,
	ble	.L159	@,
.L128:
	cmp	r6, r7	@ s32ImgSize, D.34265
	movge	r5, #1	@ s32DnrLockFrmNum,
	blt	.L167	@,
.L129:
	ldrsb	lr, [r8, #10]	@ D.34265, pstInst_20->s32DecFsNum
	cmp	lr, #0	@ D.34265,
	ble	.L142	@,
	cmp	r5, lr	@ s32DnrLockFrmNum, D.34265
	bgt	.L148	@,
	mov	r0, #0	@ j,
	mov	r1, r5	@ D.34265, s32DnrLockFrmNum
	cmp	r0, r1	@ j, D.34265
	bge	.L133	@,
.L168:
	mov	ip, r0, asl #4	@ tmp335, j,
	mov	r2, r0	@ j, j
	add	r3, r4, ip	@ tmp300, D.34263, tmp335
	add	r3, r3, #209920	@ tmp302, tmp300,
	ldr	r3, [r3, #824]	@ _58->stFrameArray[j_29].eFrameState, _58->stFrameArray[j_29].eFrameState
	cmp	r3, #0	@ _58->stFrameArray[j_29].eFrameState,
	beq	.L136	@,
	b	.L134	@
.L137:
	add	r3, r3, #824	@ D.34261, D.34261,
	ldr	r3, [r4, r3]	@ MEM[base: _139, offset: 0B], MEM[base: _139, offset: 0B]
	cmp	r3, #0	@ MEM[base: _139, offset: 0B],
	bne	.L134	@,
.L136:
	add	r2, r2, #1	@ j, j,
	cmp	r2, r1	@ j, D.34265
	mov	r3, r2, asl #4	@ D.34261, j,
	add	r3, r3, #209920	@ D.34261, D.34261,
	blt	.L137	@,
	mov	r3, #52	@ tmp329,
	add	r2, r4, ip	@ tmp324, D.34263, tmp335
	mla	r3, r3, r0, r8	@ D.34261, tmp329, j, pstInst
	add	r2, r2, #209920	@ tmp325, tmp324,
	add	r2, r2, #824	@ tmp325, tmp325,
	add	ip, ip, #209920	@ D.34261, tmp335,
	add	ip, ip, #824	@ D.34261, D.34261,
	mov	r7, r0	@ j, j
	ldr	r2, [r2, #4]	@ _58->stFrameArray[j_178].s32FrameAddr, _58->stFrameArray[j_178].s32FrameAddr
	add	r3, r3, #27648	@ ivtmp.253, D.34261,
	add	ip, r4, ip	@ ivtmp.256, D.34263, D.34261
	add	r3, r3, #160	@ ivtmp.253, ivtmp.253,
	mov	r9, #2	@ tmp338,
	mov	lr, #0	@ tmp339,
	str	r2, [r4, #236]	@ _58->stFrameArray[j_178].s32FrameAddr, _58->s32OffLineDnrMemAddr
.L139:
	ldr	r2, [r3], #52	@ s32FrameStartAddr, MEM[base: _80, offset: 0B]
	add	r0, r0, #1	@ j, j,
	cmp	r0, r1	@ j, D.34265
	str	r9, [ip]	@ tmp338, MEM[base: _137, offset: 0B]
	stmib	ip, {r2, r6, lr}	@ ivtmp.256,,,
	add	ip, ip, #16	@ ivtmp.256, ivtmp.256,
	bne	.L139	@,
.L140:
	ldrsb	lr, [r8, #10]	@ D.34265, pstInst_20->s32DecFsNum
	cmp	lr, r7	@ D.34265, j
	ble	.L142	@,
	add	r1, r5, r7	@ D.34265, s32DnrLockFrmNum, j
.L144:
	cmp	r1, lr	@ D.34265, D.34265
	movle	r0, #0	@ D.34262,
	ble	.L159	@,
.L150:
	str	r5, [sp, #4]	@ s32DnrLockFrmNum,
	movw	r3, #1134	@,
	str	lr, [sp]	@ D.34265,
	mov	r0, #31	@,
	ldr	r2, .L169+12	@,
	ldr	r1, .L169+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34262,
	b	.L159	@
.L125:
	ldr	r2, [sp, #24]	@ s32VdhMemAddr, %sfp
	ldr	r1, [sp, #44]	@ s32VdhAllMemSize, %sfp
	add	r2, r2, r1	@ D.34265, s32VdhMemAddr, s32VdhAllMemSize
	rsb	r2, r3, r2	@ s32FreeSize, D.34265, D.34265
	cmp	r7, r2	@ D.34265, s32FreeSize
	bgt	.L128	@,
.L163:
	mov	r0, #0	@ D.34262,
	str	r3, [r4, #236]	@ D.34265, _58->s32OffLineDnrMemAddr
.L159:
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L119:
	mov	r2, r0	@, s32UsingCount
	ldr	r1, .L169+24	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34262,
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L134:
	add	r0, r2, #1	@ j, j,
	cmp	r0, lr	@ j, D.34265
	bge	.L142	@,
	add	r1, r5, r0	@ D.34265, s32DnrLockFrmNum, j
	cmp	r1, lr	@ D.34265, D.34265
	bgt	.L150	@,
	cmp	r0, r1	@ j, D.34265
	blt	.L168	@,
.L133:
	add	r3, r4, r0, lsl #4	@ tmp317, D.34263, j,
	mov	r7, r0	@ j, j
	add	r3, r3, #209920	@ tmp318, tmp317,
	add	r3, r3, #824	@ tmp318, tmp318,
	ldr	r3, [r3, #4]	@ _58->stFrameArray[j_174].s32FrameAddr, _58->stFrameArray[j_174].s32FrameAddr
	str	r3, [r4, #236]	@ _58->stFrameArray[j_174].s32FrameAddr, _58->s32OffLineDnrMemAddr
	b	.L140	@
.L167:
	mov	r1, r6	@, s32ImgSize
	mov	r0, r7	@, D.34265
	bl	__aeabi_idiv	@
	mov	r1, r6	@, s32ImgSize
	mov	r5, r0	@ s32DnrLockFrmNum,
	mov	r0, r7	@, D.34265
	bl	__aeabi_idivmod	@
	cmp	r1, #0	@,
	addgt	r5, r5, #1	@ s32DnrLockFrmNum, s32DnrLockFrmNum,
	b	.L129	@
.L126:
	ldr	r3, [sp, #40]	@ s32Num, %sfp
	ldr	r1, [sp, #28]	@ VoUsingFrameArray, %sfp
	sub	r3, r3, #-536870911	@ D.34261, s32Num,
	add	r2, r1, r3, lsl #3	@ D.34269, VoUsingFrameArray, D.34261,
	ldr	r3, [r1, r3, asl #3]	@ _112->FrameAddr, _112->FrameAddr
	ldr	r2, [r2, #4]	@ _112->FrameSize, _112->FrameSize
	add	r2, r3, r2	@ D.34265, _112->FrameAddr, _112->FrameSize
	b	.L127	@
.L142:
	movw	r3, #1129	@,
	ldr	r2, .L169+12	@,
	ldr	r1, .L169+28	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34262,
	b	.L159	@
.L164:
	ldr	r3, .L169+32	@,
	movw	r2, #991	@,
	ldr	r1, .L169+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34262,
	b	.L159	@
.L148:
	mov	r1, r5	@ D.34265, s32DnrLockFrmNum
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmp	r0, #3	@ InstID,
	.pad #532
	sub	sp, sp, #532	@,,
	mov	r4, r0	@ InstID, InstID
	mov	r0, #0	@ tmp130,
	str	r0, [sp, #12]	@ tmp130, s32UsingNum
	bhi	.L191	@,
	ldr	r3, .L192	@ tmp133,
	ldr	r3, [r3, r4, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	movweq	r3, #1321	@,
	beq	.L190	@,
	add	r3, r3, #32768	@ tmp138, pstInst,
	add	lr, sp, #528	@ D.34289,,
	add	r2, sp, #16	@ tmp175,,
	mov	r1, r0	@ tmp173, tmp130
	ldr	r5, [r3, #1876]	@ s32VdhTotalMemUse, pstInst_10->TotalMemUsed
	mov	ip, #-2147483648	@ tmp172,
.L175:
	str	ip, [r2]	@ tmp172, MEM[base: _46, offset: 0B]
	add	r2, r2, #8	@ ivtmp.280, ivtmp.280,
	str	r1, [r2, #-4]	@ tmp173, MEM[base: _46, offset: 4B]
	cmp	r2, lr	@ ivtmp.280, D.34289
	bne	.L175	@,
	add	r2, sp, #12	@,,
	add	r1, sp, #16	@ tmp176,,
	mov	r0, r4	@, InstID
	bl	DNR_GetVoUsingFrameInQue	@
	cmp	r0, #0	@,
	movwne	r3, #1338	@,
	bne	.L190	@,
	ldr	ip, [sp, #12]	@ D.34290, s32UsingNum
	cmp	ip, #0	@ D.34290,
	ble	.L177	@,
	ldr	r2, [sp, #20]	@ D.34290, VoUsingImage[0].FrameSize
	str	ip, [sp]	@ D.34290,
	cmp	r5, r2	@ s32VdhTotalMemUse, D.34290
	ble	.L178	@,
	mov	r3, r5, asl #1	@ D.34290, s32VdhTotalMemUse,
	movw	r0, #21846	@ tmp150,
	movt	r0, 21845	@ tmp150,
	smull	r0, r1, r3, r0	@ tmp149, D.34290, tmp150
	sub	r3, r1, r3, asr #31	@ D.34290,, D.34290,
	cmp	r2, r3	@ D.34290, D.34290
	blt	.L179	@,
.L178:
	mov	r3, r5	@, s32VdhTotalMemUse
	ldr	r1, .L192+4	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp177,,
	mov	r0, r4	@, InstID
	ldr	r2, [sp, #12]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrSpecialCase1	@
	cmp	r0, #0	@,
	bne	.L180	@,
.L181:
	mov	r0, #0	@ D.34288,
.L173:
	add	sp, sp, #532	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L179:
	mov	r3, r5	@, s32VdhTotalMemUse
	ldr	r1, .L192+8	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp178,,
	mov	r0, r4	@, InstID
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
	mvn	r0, #0	@ D.34288,
	b	.L173	@
.L177:
	mov	r2, ip	@, D.34290
	ldr	r1, .L192+20	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	add	r1, sp, #16	@ tmp179,,
	mov	r0, r4	@, InstID
	ldr	r2, [sp, #12]	@, s32UsingNum
	bl	FSP_NoneDnrSwitchToDnrNormCase	@
	cmp	r0, #0	@,
	beq	.L181	@,
	mov	r3, #1376	@,
	b	.L190	@
.L191:
	ldr	r3, .L192+24	@,
	movw	r2, #1315	@,
	ldr	r1, .L192+28	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34288,
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
	ldr	r3, [r5, r0, asl #2]	@ D.34298, s_pstVfmwChan
	ldr	ip, [r3, #236]	@ D.34299, _7->s32OffLineDnrMemAddr
	ldr	r7, [r3, #1608]	@ s32ThrWidth, _7->stSynExtraData.s32DSDThrWidth
	ldr	r8, [r3, #1612]	@ s32ThrHeight, _7->stSynExtraData.s32DSDThrHeight
	mov	r0, ip	@, D.34299
	str	ip, [sp, #8]	@ D.34299, DnrMem.PhyAddr
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
	ldr	r1, [r5, r4, asl #2]	@ D.34298, s_pstVfmwChan
	ldr	r5, .L219	@ tmp156,
	add	r3, r1, #208896	@ tmp158, D.34298,
	ldr	r3, [r3, #2884]	@ _41->stDnrChanCfg.s32NeedConfigDnrChan, _41->stDnrChanCfg.s32NeedConfigDnrChan
	cmp	r3, #1	@ _41->stDnrChanCfg.s32NeedConfigDnrChan,
	movne	r0, #0	@ D.34297,
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
	mvn	r0, #0	@ D.34297,
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
	mvn	r0, #0	@ D.34297,
	b	.L199	@
.L218:
	add	r1, r1, #210944	@, D.34298,
	mov	r0, r4	@, InstID
	add	r1, r1, #824	@,,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@ D.34297
	ldreq	r3, [r5, r4, asl #2]	@ tmp166, s_pstVfmwChan
	addeq	r3, r3, #208896	@ tmp168, tmp166,
	streq	r0, [r3, #2884]	@ D.34297, _47->stDnrChanCfg.s32NeedConfigDnrChan
	beq	.L199	@,
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34297,
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
	mvn	r0, #0	@ D.34297,
	b	.L199	@
.L217:
	ldr	r2, .L219+4	@,
	mov	r0, #31	@,
	ldr	r1, .L219+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34297,
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
	mov	r1, #16	@,
	ldr	r4, .L223	@ tmp110,
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L230	@,
	ldr	r3, .L232	@ tmp120,
	ldr	r3, [r3, r0, asl #2]	@ D.34314, s_pFspInst
	ldr	r2, [r3, #4]	@ _7->eFspInstState, _7->eFspInstState
	cmp	r2, #1	@ _7->eFspInstState,
	bne	.L231	@,
	ldrb	r2, [r1]	@ zero_extendqisi2	@ D.34316, pstAttr_10(D)->s8LowBufEnable
	mov	r0, #0	@ D.34312,
	strb	r2, [r3, #1]	@ D.34316, _7->s8LowBufEnable
	ldmfd	sp!, {r4, pc}	@
.L231:
	ldr	r3, .L232+4	@,
	mov	r2, #234	@,
	ldr	r1, .L232+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34312,
	ldmfd	sp!, {r4, pc}	@
.L230:
	ldr	r3, .L232+12	@,
	mov	r2, #233	@,
	ldr	r1, .L232+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34312,
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
	add	r6, r4, #40	@ D.34329, pFspInst,
	ldrb	r5, [r4]	@ zero_extendqisi2	@ s8TmpInstID, pFspInst_4(D)->s32InstID
	mov	r2, #20	@,
	add	r0, sp, #4	@ tmp139,,
	mov	r1, r6	@, D.34329
	ldrb	r8, [r4, #1]	@ zero_extendqisi2	@ s8TmpLowBufEnable, pFspInst_4(D)->s8LowBufEnable
	ldr	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_4(D)->eFspInstState
	bl	memcpy	@
	mov	r0, r4	@, pFspInst
	movw	r1, #34664	@,
	bl	__memzero	@
	ldr	r3, .L241	@ tmp129,
	sxtb	r2, r5	@ D.34330, s8TmpInstID
	strb	r8, [r4, #1]	@ s8TmpLowBufEnable, pFspInst_4(D)->s8LowBufEnable
	strb	r5, [r4]	@ s8TmpInstID, pFspInst_4(D)->s32InstID
	str	r7, [r4, #4]	@ eTmpFspInstState, pFspInst_4(D)->eFspInstState
	ldr	r3, [r3, r2, asl #2]	@ tmp131, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@ D.34328,
	beq	.L240	@,
.L236:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L240:
	add	r1, sp, #4	@ tmp140,,
	mov	r0, r6	@, D.34329
	mov	r2, #20	@,
	bl	memcpy	@
	mov	r0, #0	@ D.34328,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L239:
	ldr	r3, .L241+4	@,
	mov	r2, #254	@,
	ldr	r1, .L241+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34328,
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L249	@,
	ldr	r3, .L251	@ tmp118,
	ldr	r5, [r3, r0, asl #2]	@ D.34343, s_pFspInst
	cmp	r5, #0	@ D.34343,
	beq	.L250	@,
	ldr	r4, [r5, #4]	@ _7->eFspInstState, _7->eFspInstState
	cmp	r4, #0	@ _7->eFspInstState,
	bne	.L247	@,
	mov	r0, r5	@, D.34343
	movw	r1, #34664	@,
	bl	__memzero	@
	mov	r3, #1	@ tmp122,
	mov	r0, r4	@ D.34341, _7->eFspInstState
	str	r3, [r5, #4]	@ tmp122, _7->eFspInstState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L247:
	mvn	r0, #0	@ D.34341,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L249:
	ldr	r3, .L251+4	@,
	movw	r2, #282	@,
	ldr	r1, .L251+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34341,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L250:
	mov	r0, r5	@, D.34343
	ldr	r3, .L251+12	@,
	movw	r2, #283	@,
	ldr	r1, .L251+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34341,
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
	cmp	r0, #3	@ InstID,
	bhi	.L257	@,
	ldr	r3, .L259	@ tmp116,
	ldr	r0, [r3, r0, asl #2]	@ D.34350, s_pFspInst
	cmp	r0, #0	@ D.34350,
	beq	.L258	@,
	ldr	r3, [r0, #4]	@ _6->eFspInstState, _6->eFspInstState
	cmp	r3, #1	@ _6->eFspInstState,
	moveq	r3, #0	@ tmp120,
	streq	r3, [r0, #4]	@ tmp120, _6->eFspInstState
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, #0	@ i,
	ldr	r5, .L273	@ ivtmp.304,
.L263:
	ldr	r3, [r5], #4	@ D.34365, MEM[base: _14, offset: 0B]
	cmp	r3, #0	@ D.34365,
	beq	.L262	@,
	ldr	r3, [r3, #4]	@ _5->eFspInstState, _5->eFspInstState
	cmp	r3, #0	@ _5->eFspInstState,
	bne	.L272	@,
.L262:
	add	r4, r4, #1	@ i, i,
	cmp	r4, #4	@ i,
	bne	.L263	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L272:
	mov	r0, r4	@, i
	bl	FSP_DisableInstance	@
	b	.L262	@
.L274:
	.align	2
.L273:
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
	bhi	.L297	@,
	ldr	r6, .L301	@ tmp145,
	ldr	r9, [r6, r0, asl #2]	@ D.34383, s_pFspInst
	cmp	r9, #0	@ D.34383,
	beq	.L298	@,
	add	r4, r9, #27648	@ ivtmp.318, D.34383,
	add	r5, r9, #30976	@ D.34382, D.34383,
	add	r4, r4, #150	@ ivtmp.318, ivtmp.318,
	add	r5, r5, #150	@ D.34382, D.34382,
	mov	r8, r6	@ tmp146, tmp145
	b	.L285	@
.L283:
	mov	r2, #0	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.34388
.L282:
	ldrsb	r3, [r4]	@ MEM[base: _35, offset: 0B], MEM[base: _35, offset: 0B]
	cmp	r3, #0	@ MEM[base: _35, offset: 0B],
	beq	.L280	@,
	ldr	r3, [r6, #60]	@ D.34387, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #10]	@ D.34386, MEM[base: _35, offset: 10B]
	cmp	r3, #0	@ D.34387,
	beq	.L299	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.34387
.L280:
	add	r4, r4, #52	@ ivtmp.318, ivtmp.318,
	cmp	r4, r5	@ ivtmp.318, D.34382
	beq	.L300	@,
.L285:
	ldr	r1, [r4, #10]	@ D.34384, MEM[base: _35, offset: 10B]
	cmp	r1, #0	@ D.34384,
	beq	.L280	@,
	ldr	r3, [r6, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L280	@,
	ldrsb	r3, [r4, #-2]	@ MEM[base: _35, offset: 4294967294B], MEM[base: _35, offset: 4294967294B]
	cmp	r3, #0	@ MEM[base: _35, offset: 4294967294B],
	beq	.L282	@,
	ldr	r3, [r8, #64]	@ D.34388, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.34388,
	bne	.L283	@,
	mov	r0, r3	@, D.34388
	ldr	r1, .L301+4	@,
	bl	dprint_vfmw	@
	b	.L282	@
.L299:
	mov	r0, r3	@, D.34387
	ldr	r1, .L301+8	@,
	add	r4, r4, #52	@ ivtmp.318, ivtmp.318,
	bl	dprint_vfmw	@
	cmp	r4, r5	@ ivtmp.318, D.34382
	bne	.L285	@,
.L300:
	mov	r0, r9	@, D.34383
	bl	FSP_ClearContext	@
	mov	r0, #0	@ D.34381,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L297:
	ldr	r3, .L301+12	@,
	movw	r2, #325	@,
	ldr	r1, .L301+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34381,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L298:
	mov	r0, r9	@, D.34383
	ldr	r3, .L301+20	@,
	movw	r2, #326	@,
	ldr	r1, .L301+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34381,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L302:
	.align	2
.L301:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ InstID, InstID
	bhi	.L335	@,
	ldr	r9, .L339	@ tmp182,
	ldr	r6, [r9, r0, asl #2]	@ D.34423, s_pFspInst
	cmp	r6, #0	@ D.34423,
	beq	.L336	@,
	mov	r1, #27648	@,
	add	r0, r6, #96	@, D.34423,
	bl	__memzero	@
	ldrsb	r3, [r6, #10]	@ _15->s32DecFsNum, _15->s32DecFsNum
	cmp	r3, #0	@ _15->s32DecFsNum,
	addgt	r4, r6, #27648	@ ivtmp.346, D.34423,
	movgt	r5, #0	@ i,
	addgt	r4, r4, #192	@ ivtmp.346, ivtmp.346,
	movgt	r8, r9	@ tmp185, tmp182
	ble	.L317	@,
.L316:
	ldr	r1, [r4, #-32]	@ D.34420, MEM[base: _75, offset: 4294967264B]
	cmp	r1, #0	@ D.34420,
	beq	.L311	@,
	ldr	r3, [r9, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L311	@,
	ldrsb	r3, [r4, #-44]	@ MEM[base: _75, offset: 4294967252B], MEM[base: _75, offset: 4294967252B]
	cmp	r3, #0	@ MEM[base: _75, offset: 4294967252B],
	beq	.L313	@,
	ldr	r3, [r8, #64]	@ D.34428, g_FspFrameIntf.SetFrameRef
	cmp	r3, #0	@ D.34428,
	beq	.L337	@,
	mov	r2, #0	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.34428
.L313:
	ldrsb	r3, [r4, #-42]	@ MEM[base: _75, offset: 4294967254B], MEM[base: _75, offset: 4294967254B]
	cmp	r3, #0	@ MEM[base: _75, offset: 4294967254B],
	beq	.L311	@,
	ldr	r3, [r9, #60]	@ D.34427, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r4, #-32]	@ D.34426, MEM[base: _75, offset: 4294967264B]
	cmp	r3, #0	@ D.34427,
	beq	.L338	@,
	mov	r0, r7	@, InstID
	blx	r3	@ D.34427
.L311:
	mov	r3, #0	@ tmp163,
	strb	r3, [r4, #-44]	@ tmp163, MEM[base: _75, offset: 4294967252B]
	strb	r3, [r4, #-42]	@ tmp163, MEM[base: _75, offset: 4294967254B]
	add	r5, r5, #1	@ i, i,
	str	r3, [r4], #52	@ tmp163, MEM[base: _75, offset: 0B]
	ldrsb	r3, [r6, #10]	@ D.34420, _15->s32DecFsNum
	cmp	r3, r5	@ D.34420, i
	bgt	.L316	@,
.L317:
	ldrsb	r0, [r6, #11]	@ D.34425, _15->s32DispFsNum
	cmp	r0, #0	@ D.34425,
	addgt	r3, r6, #30976	@ ivtmp.334, D.34423,
	movgt	r2, #0	@ i,
	addgt	r3, r3, #148	@ ivtmp.334, ivtmp.334,
	movgt	r1, r2	@ tmp184, i
	ble	.L309	@,
.L320:
	add	r2, r2, #1	@ i, i,
	strb	r1, [r3]	@ tmp184, MEM[base: _2, offset: 0B]
	cmp	r0, r2	@ D.34425, i
	strb	r1, [r3, #2]	@ tmp184, MEM[base: _2, offset: 2B]
	str	r1, [r3, #44]	@ tmp184, MEM[base: _2, offset: 44B]
	add	r3, r3, #52	@ ivtmp.334, ivtmp.334,
	bne	.L320	@,
.L309:
	ldrsb	r2, [r6, #13]	@ D.34425, _15->s32PmvNum
	cmp	r2, #0	@ D.34425,
	addgt	r2, r2, #13	@ D.34429, D.34425,
	addgt	r3, r6, #13	@ ivtmp.325, D.34423,
	addgt	r2, r6, r2	@ D.34424, D.34423, D.34429
	movgt	r1, #0	@ tmp183,
	ble	.L319	@,
.L321:
	strb	r1, [r3, #1]!	@ tmp183, MEM[base: _28, offset: 0B]
	cmp	r3, r2	@ ivtmp.325, D.34424
	bne	.L321	@,
.L319:
	mov	r0, #0	@ tmp176,
	str	r0, [r6, #36]	@ tmp176, _15->u32InstTick
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L337:
	mov	r0, r3	@, D.34428
	ldr	r1, .L339+4	@,
	bl	dprint_vfmw	@
	b	.L313	@
.L338:
	mov	r0, r3	@, D.34427
	ldr	r1, .L339+8	@,
	bl	dprint_vfmw	@
	b	.L311	@
.L335:
	ldr	r3, .L339+12	@,
	movw	r2, #379	@,
	ldr	r1, .L339+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34421,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L336:
	mov	r0, r6	@, D.34423
	ldr	r3, .L339+20	@,
	mov	r2, #380	@,
	ldr	r1, .L339+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34421,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L340:
	.align	2
.L339:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L355	@,
	cmp	r1, #0	@ pstFspInstCfg,
	mov	r4, r1	@ pstFspInstCfg, pstFspInstCfg
	beq	.L356	@,
	ldr	r2, .L357	@ tmp125,
	ldr	r3, [r2, r0, asl #2]	@ D.34435, s_pFspInst
	cmp	r3, #0	@ D.34435,
	beq	.L345	@,
	ldr	r3, [r3, #4]	@ _10->eFspInstState, _10->eFspInstState
	cmp	r3, #1	@ _10->eFspInstState,
	bne	.L345	@,
	ldr	r3, .L357+4	@ tmp132,
	mov	r1, #0	@ tmp129,
	strb	r1, [r4]	@ tmp129, pstFspInstCfg_8(D)->s32DispLoopEnable
	ldr	r5, [r2, r0, asl #2]	@ pstInst, s_pFspInst
	ldr	r3, [r3, r0, asl #2]	@ tmp133, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _14->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L347	@,
	mov	r0, r5	@, pstInst
	bl	FSP_ClearContext	@
.L347:
	mov	r1, r4	@, pstFspInstCfg
	add	r0, r5, #60	@, pstInst,
	mov	r2, #36	@,
	bl	memcpy	@
	mov	r0, #0	@ D.34433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L345:
	ldr	r3, .L357+8	@,
	mov	r2, #488	@,
	ldr	r1, .L357+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L355:
	ldr	r3, .L357+16	@,
	movw	r2, #485	@,
	ldr	r1, .L357+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L356:
	mov	r0, r1	@, pstFspInstCfg
	ldr	r3, .L357+20	@,
	movw	r2, #486	@,
	ldr	r1, .L357+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L358:
	.align	2
.L357:
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
	add	r0, sp, #144	@ tmp1184,,
	mov	r5, r2	@ MemSize, MemSize
	str	r3, [sp, #132]	@ UsedMemSize, %sfp
	bl	__memzero	@
	cmp	r6, #3	@ InstID,
	bhi	.L447	@,
	ldr	r3, .L466	@ tmp1186,
	ldr	r2, [sp, #128]	@ InstID, %sfp
	ldr	r9, [r3, r2, asl #2]	@ D.34604, s_pFspInst
	cmp	r9, #0	@ D.34604,
	beq	.L448	@,
	add	r3, r9, #32768	@ tmp1124, D.34604,
	ldr	r0, [sp, #128]	@, %sfp
	str	r3, [sp, #96]	@ tmp1124, %sfp
	str	r4, [r3, #1880]	@ MemPhyAddr, _24->MemAddr
	str	r5, [r3, #1884]	@ MemSize, _24->MemSize
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eChanCapLevel,
	bhi	.L363	@,
	ldr	r2, .L466+4	@ tmp446,
	mov	r3, r0, asl #5	@ tmp449, eChanCapLevel,
	sub	r3, r3, r0, asl #2	@ tmp450, tmp449, eChanCapLevel,
	ldr	r1, [r9, #72]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	add	lr, r2, r3	@ tmp451, tmp446, tmp450
	ldr	ip, [r9, #76]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	r3, [r2, r3]	@ D.34605, CapItem
	ldr	lr, [lr, #4]	@ D.34605, CapItem
	mul	r6, ip, r1	@ D.34605, D.34605, D.34605
	mul	r2, lr, r3	@ D.34605, D.34605, D.34605
	cmp	r0, #25	@ eChanCapLevel,
	cmpne	r6, r2	@, D.34605, D.34605
	ble	.L365	@,
	ldrsb	r2, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec
	cmp	r2, #1	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec,
	beq	.L365	@,
	stmib	sp, {r1, ip}	@,,
	mov	r2, r0	@, eChanCapLevel
	str	lr, [sp]	@ D.34605,
	mov	r0, #0	@,
	ldr	r1, .L466+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
.L439:
	add	sp, sp, #564	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L363:
	ldrsb	r3, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec
	cmp	r3, #1	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec,
	beq	.L365	@,
	mov	r2, r0	@, eChanCapLevel
	ldr	r1, .L466+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	add	sp, sp, #564	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L365:
	ldr	r2, [r9, #92]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	cmp	r2, #0	@ D.34605,
	ldreqb	r3, [r9, #60]	@ zero_extendqisi2	@ D.34602, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	beq	.L367	@,
	ldr	r1, [r9, #88]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	ldrb	r3, [r9, #60]	@ zero_extendqisi2	@ D.34602, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	cmp	r1, #0	@ D.34605,
	bne	.L449	@,
.L367:
	ldr	r1, .L466+16	@ tmp477,
	sxtb	r3, r3	@ D.34611, D.34602
	ldrsb	r2, [r9, #65]	@ D.34601, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	mov	r6, #4	@ D.34611,
	ldr	ip, [r1, #36]	@ D.34608, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	smlabb	r6, r6, r3, r2	@ MinFsNum, D.34611, D.34611, D.34601
	cmp	ip, #0	@ D.34608,
	beq	.L424	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	add	r0, sp, #144	@ tmp1191,,
	ldr	r3, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	mov	r7, #16	@ tmp480,
	str	r0, [sp, #16]	@ tmp1191,
	mov	lr, #40	@ tmp483,
	ldr	r0, [sp, #128]	@ InstID, %sfp
	mov	r1, r5	@, MemSize
	str	r7, [sp, #20]	@ tmp480,
	str	r0, [sp, #12]	@ InstID,
	mov	r0, r4	@, MemPhyAddr
	ldrsb	r4, [r9, #64]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec
	str	lr, [sp, #4]	@ tmp483,
	str	r4, [sp, #8]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32UserDec,
	ldrsb	lr, [r9, #68]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum
	str	lr, [sp]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedPmvNum,
	blx	ip	@ D.34608
	subs	r2, r0, #0	@ Ret,
	bne	.L369	@,
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	strb	r3, [r9, #9]	@ MemArrange.ValidFrameNum, _24->s8TotalValidFsNum
	ldr	r3, [sp, #420]	@ D.34605, MemArrange.ValidFrameNum
	cmp	r6, r3	@ MinFsNum, D.34605
	bgt	.L371	@,
	ldrsb	r3, [r9, #60]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	strb	r2, [r9, #11]	@ Ret, _24->s32DispFsNum
	cmp	r3, #0	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable,
	strb	r2, [r9, #12]	@ Ret, _24->s32TfFsNum
	bne	.L372	@,
	ldrsb	r3, [r9, #1]	@ _24->s8LowBufEnable, _24->s8LowBufEnable
	cmp	r3, #0	@ _24->s8LowBufEnable,
	beq	.L373	@,
	ldr	r3, .L466+20	@ tmp494,
	ldr	r2, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r3, r2, asl #2]	@ tmp495, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _78->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _78->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _78->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L374	@,
	ldrsb	r3, [r9, #65]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	ldr	r2, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r3, r3, #4	@ D.34605, D.34605,
	cmp	r3, r2	@ D.34605, MemArrange.ValidFrameNum
	movge	r3, r2	@ D.34605, MemArrange.ValidFrameNum
	uxtb	r3, r3	@ D.34602, D.34605
	strb	r3, [r9, #10]	@ D.34602, _24->s32DecFsNum
	b	.L375	@
.L372:
	ldrb	r3, [r9, #65]	@ zero_extendqisi2	@ D.34602, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	strb	r3, [r9, #10]	@ D.34602, _24->s32DecFsNum
.L375:
	sxtb	r4, r3	@ D.34605, D.34602
	ldr	r3, [sp, #144]	@ D.34601, MemArrange.VahbStride
	ldr	r2, [sp, #552]	@ D.34601, MemArrange.ImgSlotLen
	add	r1, sp, #560	@ ivtmp.442,,
	str	r9, [sp, #136]	@ D.34604, %sfp
	str	r3, [sp, #76]	@ D.34601, %sfp
	ldr	r3, [sp, #96]	@ tmp1124, %sfp
	str	r2, [sp, #84]	@ D.34601, %sfp
	ldr	r0, [r1, #-408]!	@ D.34605, MemArrange.FrameAddr
	str	r2, [r3, #1872]	@ D.34601, _24->ImgSlotLen
	ldr	r2, [sp, #408]	@ D.34605, MemArrange.ChromOffset
	ldr	r3, [r9, #72]	@ D.34601, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	str	r1, [sp, #80]	@ ivtmp.442, %sfp
	mov	r1, #0	@ i,
	str	r2, [sp, #112]	@ D.34605, %sfp
	ldr	r2, [sp, #412]	@ D.34605, MemArrange.LumaPixelOffset
	str	r3, [sp, #100]	@ D.34601, %sfp
	ldr	r3, [r9, #76]	@ D.34601, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	str	r2, [sp, #116]	@ D.34605, %sfp
	ldr	r2, [sp, #416]	@ D.34605, MemArrange.ChromaPixelOffset
	str	r3, [sp, #104]	@ D.34601, %sfp
	mov	r3, r9	@ ivtmp.440, D.34604
	str	r0, [sp, #124]	@ D.34605, %sfp
	str	r2, [sp, #120]	@ D.34605, %sfp
	str	r9, [sp, #140]	@ ivtmp.404, %sfp
	str	r4, [sp, #108]	@ D.34605, %sfp
	b	.L379	@
.L450:
	ldr	r2, [sp, #88]	@ D.34600, %sfp
	str	r1, [r2]	@ i, MEM[base: _512, offset: 0B]
	ldr	r2, [sp, #80]	@ ivtmp.442, %sfp
	ldr	r0, [r2]	@ D.34605, MEM[base: _511, offset: 0B]
	ldr	r2, [sp, #60]	@ D.34600, %sfp
	str	r0, [r10]	@ D.34605, MEM[base: _504, offset: 0B]
	ldr	r0, [sp, #76]	@ D.34601, %sfp
	str	r0, [r9]	@ D.34601, MEM[base: _551, offset: 0B]
	ldr	r0, [sp, #100]	@ D.34601, %sfp
	str	r0, [r8]	@ D.34601, MEM[base: _553, offset: 0B]
	ldr	r0, [sp, #104]	@ D.34601, %sfp
	str	r0, [r7]	@ D.34601, MEM[base: _555, offset: 0B]
	ldr	r0, [sp, #112]	@ D.34605, %sfp
	str	r0, [r6]	@ D.34605, MEM[base: _557, offset: 0B]
	ldr	r0, [sp, #116]	@ D.34605, %sfp
	str	r0, [r5]	@ D.34605, MEM[base: _559, offset: 0B]
	ldr	r0, [sp, #120]	@ D.34605, %sfp
	str	r0, [r4]	@ D.34605, MEM[base: _561, offset: 0B]
	mov	r0, #0	@ tmp1480,
	strb	r0, [lr]	@ tmp1480, MEM[base: _563, offset: 0B]
	strb	r0, [ip]	@ tmp1479, MEM[base: _565, offset: 0B]
	strb	r0, [r2]	@ tmp1478, MEM[base: _567, offset: 0B]
	ldr	r2, [sp, #64]	@ D.34600, %sfp
	ldr	r0, [sp, #84]	@ D.34601, %sfp
	str	r0, [r2]	@ D.34601,* D.34600
.L377:
	add	r1, r1, #1	@ i, i,
	ldr	r2, [sp, #80]	@ ivtmp.442, %sfp
	cmp	r1, #64	@ i,
	add	r3, r3, #52	@ ivtmp.440, ivtmp.440,
	add	r2, r2, #4	@ ivtmp.442, ivtmp.442,
	str	r2, [sp, #80]	@ ivtmp.442, %sfp
	beq	.L378	@,
	ldr	r2, [sp, #96]	@ tmp1124, %sfp
	ldr	r2, [r2, #1872]	@ D.34601, _24->ImgSlotLen
	str	r2, [sp, #84]	@ D.34601, %sfp
.L379:
	add	r2, r3, #27648	@ D.34600, ivtmp.440,
	mov	r0, r2	@ D.34600, D.34600
	add	r2, r2, #152	@ D.34600, D.34600,
	str	r2, [sp, #88]	@ D.34600, %sfp
	add	r10, r0, #160	@ D.34600, D.34600,
	ldr	r2, [sp, #108]	@ D.34605, %sfp
	add	r9, r0, #168	@ D.34600, D.34600,
	add	r8, r0, #172	@ D.34600, D.34600,
	add	r7, r0, #176	@ D.34600, D.34600,
	cmp	r2, r1	@ D.34605, i
	add	r2, r0, #160	@ D.34600, D.34600,
	str	r2, [sp, #92]	@ D.34600, %sfp
	add	r2, r0, #168	@ D.34600, D.34600,
	str	r2, [sp, #28]	@ D.34600, %sfp
	add	r2, r0, #172	@ D.34600, D.34600,
	str	r2, [sp, #32]	@ D.34600, %sfp
	add	r2, r0, #176	@ D.34600, D.34600,
	str	r2, [sp, #36]	@ D.34600, %sfp
	add	r2, r0, #180	@ D.34600, D.34600,
	str	r2, [sp, #40]	@ D.34600, %sfp
	add	r2, r0, #184	@ D.34600, D.34600,
	str	r2, [sp, #44]	@ D.34600, %sfp
	add	r2, r0, #188	@ D.34600, D.34600,
	str	r2, [sp, #48]	@ D.34600, %sfp
	add	r2, r0, #148	@ D.34600, D.34600,
	str	r2, [sp, #52]	@ D.34600, %sfp
	add	r2, r0, #149	@ D.34600, D.34600,
	str	r2, [sp, #56]	@ D.34600, %sfp
	add	r2, r0, #150	@ D.34600, D.34600,
	str	r2, [sp, #60]	@ D.34600, %sfp
	add	r2, r0, #196	@ D.34600, D.34600,
	str	r2, [sp, #64]	@ D.34600, %sfp
	add	r2, r0, #152	@ D.34600, D.34600,
	str	r2, [sp, #68]	@ D.34600, %sfp
	add	r2, r0, #150	@ D.34600, D.34600,
	str	r2, [sp, #72]	@ D.34600, %sfp
	add	r2, r0, #196	@ D.34600, D.34600,
	add	r6, r0, #180	@ D.34600, D.34600,
	add	r5, r0, #184	@ D.34600, D.34600,
	add	r4, r0, #188	@ D.34600, D.34600,
	add	lr, r0, #148	@ D.34600, D.34600,
	add	ip, r0, #149	@ D.34600, D.34600,
	mov	r0, r2	@ D.34600, D.34600
	bgt	.L450	@,
	ldr	r2, [sp, #68]	@ D.34600, %sfp
	mov	fp, #0	@ tmp1477,
	str	fp, [r2]	@ tmp1477, MEM[base: _571, offset: 0B]
	ldr	r2, [sp, #124]	@ D.34605, %sfp
	str	r2, [r10]	@ D.34605, MEM[base: _573, offset: 0B]
	ldr	r2, [sp, #76]	@ D.34601, %sfp
	str	r2, [r9]	@ D.34601, MEM[base: _575, offset: 0B]
	ldr	r2, [sp, #100]	@ D.34601, %sfp
	str	r2, [r8]	@ D.34601, MEM[base: _577, offset: 0B]
	ldr	r2, [sp, #104]	@ D.34601, %sfp
	str	r2, [r7]	@ D.34601, MEM[base: _579, offset: 0B]
	ldr	r2, [sp, #112]	@ D.34605, %sfp
	str	r2, [r6]	@ D.34605, MEM[base: _581, offset: 0B]
	ldr	r2, [sp, #116]	@ D.34605, %sfp
	str	r2, [r5]	@ D.34605, MEM[base: _583, offset: 0B]
	ldr	r2, [sp, #120]	@ D.34605, %sfp
	str	r2, [r4]	@ D.34605, MEM[base: _585, offset: 0B]
	mov	r2, r0	@ D.34600, D.34600
	strb	fp, [lr]	@ tmp1476, MEM[base: _587, offset: 0B]
	ldr	r0, [sp, #84]	@ D.34601, %sfp
	strb	fp, [ip]	@ tmp1475, MEM[base: _589, offset: 0B]
	ldr	ip, [sp, #72]	@ D.34600, %sfp
	strb	fp, [ip]	@ tmp1473, MEM[base: _591, offset: 0B]
	str	r0, [r2]	@ D.34601,* D.34600
	b	.L377	@
.L378:
	ldr	r9, [sp, #136]	@ D.34604, %sfp
	mov	r3, #1	@ tmp574,
	ldr	r4, [sp, #108]	@ D.34605, %sfp
	add	r2, sp, #408	@,,
	ldr	r5, [sp, #96]	@ tmp1124, %sfp
	mov	r0, #0	@ tmp578,
	ldr	r6, [sp, #76]	@ D.34601, %sfp
	strb	r3, [r9, #12]	@ tmp574, _24->s32TfFsNum
	add	r3, sp, #560	@ tmp1279,,
	add	r3, r3, r4, lsl #2	@ tmp582, tmp1279, D.34605,
	str	r0, [r5, #1688]	@ tmp578, _24->stTfFs[0].PhyFsID
	str	r6, [r5, #1704]	@ D.34601, _24->stTfFs[0].Stride
	ldr	r6, [sp, #100]	@ D.34601, %sfp
	ldr	r1, [r3, #-408]	@ tmp584, MemArrange.FrameAddr
	ldmia	r2, {r2, r3, ip}	@,,,
	str	r6, [r5, #1708]	@ D.34601, _24->stTfFs[0].FsWidth
	ldr	r6, [sp, #104]	@ D.34601, %sfp
	str	r1, [r5, #1696]	@ tmp584, _24->stTfFs[0].PhyAddr
	str	r2, [r5, #1716]	@ MemArrange.ChromOffset, _24->stTfFs[0].ChromOffset
	str	r6, [r5, #1712]	@ D.34601, _24->stTfFs[0].FsHeight
	str	r3, [r5, #1720]	@ MemArrange.LumaPixelOffset, _24->stTfFs[0].LumaPixelOffset
	str	ip, [r5, #1724]	@ MemArrange.ChromaPixelOffset, _24->stTfFs[0].ChromaPixelOffset
	strb	r0, [r5, #1684]	@ tmp578, _24->stTfFs[0].IsDecRef
	strb	r0, [r5, #1685]	@ tmp578, _24->stTfFs[0].IsTfRef
	strb	r0, [r5, #1686]	@ tmp578, _24->stTfFs[0].DispState
	ldrb	r2, [r9, #60]	@ zero_extendqisi2	@ D.34602, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispLoopEnable
	ldr	lr, [sp, #140]	@ ivtmp.404, %sfp
	cmp	r2, r0	@ D.34602,
	streqb	r2, [r9, #11]	@ D.34602, _24->s32DispFsNum
	moveq	r5, r2	@ D.34605, D.34602
	beq	.L381	@,
	ldr	r2, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	ldrsb	r1, [r9, #67]	@ D.34607, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDispFsNum
	rsb	r2, r4, r2	@ D.34605, D.34605, MemArrange.ValidFrameNum
	sub	r2, r2, #1	@ D.34605, D.34605,
	cmp	r2, #25	@ D.34605,
	movge	r2, #25	@ D.34605,
	uxtb	r2, r2	@ D.34602, D.34605
	strb	r2, [r9, #11]	@ D.34602, _24->s32DispFsNum
	sxtb	r3, r2	@ D.34605, D.34602
	cmp	r3, r1	@ D.34605, D.34607
	mov	r5, r3	@ D.34605, D.34605
	blt	.L451	@,
.L381:
	ldr	r3, [sp, #408]	@ D.34605, MemArrange.ChromOffset
	mov	ip, #0	@ i,
	ldr	r2, [sp, #144]	@ D.34601, MemArrange.VahbStride
	mov	r0, ip	@ tmp1134, i
	str	r3, [sp, #100]	@ D.34605, %sfp
	ldr	r3, [sp, #412]	@ D.34605, MemArrange.LumaPixelOffset
	str	r2, [sp, #112]	@ D.34601, %sfp
	str	r3, [sp, #104]	@ D.34605, %sfp
	ldr	r3, [sp, #416]	@ D.34605, MemArrange.ChromaPixelOffset
	str	r3, [sp, #108]	@ D.34605, %sfp
	mov	r3, #1	@ D.34602,
	mov	r2, r3	@ D.34602, D.34602
	mov	r3, r4	@ D.34605, D.34605
	b	.L416	@
.L453:
	ldr	r3, [sp, #48]	@ D.34600, %sfp
	ldr	r2, [sp, #56]	@ D.34600, %sfp
	str	ip, [r3]	@ i, MEM[base: _272, offset: 0B]
	ldr	r3, [sp, #52]	@ tmp632, %sfp
	ldr	r3, [r3, #-408]	@ D.34605, MemArrange.FrameAddr
	str	r3, [r2]	@ D.34605, MEM[base: _280, offset: 0B]
	ldr	r3, [sp, #60]	@ D.34600, %sfp
	ldr	r2, [sp, #76]	@ D.34601, %sfp
	str	r2, [r3]	@ D.34601, MEM[base: _2, offset: 0B]
	ldr	r2, [sp, #64]	@ D.34600, %sfp
	ldr	r3, [r9, #88]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	str	r3, [r2]	@ D.34605, MEM[base: _480, offset: 0B]
	ldr	r2, [sp, #100]	@ D.34605, %sfp
	ldr	r3, [r9, #92]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	str	r3, [r7]	@ D.34605, MEM[base: _476, offset: 0B]
	str	r2, [r6]	@ D.34605, MEM[base: _473, offset: 0B]
	ldr	r2, [sp, #104]	@ D.34605, %sfp
	str	r2, [r5]	@ D.34605, MEM[base: _396, offset: 0B]
	ldr	r2, [sp, #108]	@ D.34605, %sfp
	str	r2, [r4]	@ D.34605, MEM[base: _393, offset: 0B]
	strb	r0, [fp]	@ tmp1134, MEM[base: _389, offset: 0B]
	strb	r0, [r10]	@ tmp1134, MEM[base: _378, offset: 0B]
	strb	r0, [r8]	@ tmp1134, MEM[base: _374, offset: 0B]
.L383:
	add	ip, ip, #1	@ i, i,
	ldr	r3, [sp, #112]	@ D.34601, %sfp
	cmp	ip, #64	@ i,
	add	lr, lr, #52	@ ivtmp.404, ivtmp.404,
	str	r3, [sp, #76]	@ D.34601, %sfp
	beq	.L452	@,
	ldrsb	r1, [r9, #11]	@ D.34605, _24->s32DispFsNum
	ldrb	r2, [r9, #12]	@ zero_extendqisi2	@ D.34602, _24->s32TfFsNum
	ldrsb	r3, [r9, #10]	@ D.34605, _24->s32DecFsNum
	mov	r5, r1	@ D.34605, D.34605
.L416:
	add	r1, ip, r3	@ tmp629, i, D.34605
	sxtab	r3, r3, r2	@ tmp665, D.34605, D.34602
	sxtab	r2, r1, r2	@ tmp630, tmp629, D.34602
	add	r1, lr, #30976	@ D.34600, ivtmp.404,
	cmp	r5, ip	@ D.34605, i
	mov	r4, r1	@ D.34600, D.34600
	add	r1, r1, #152	@ D.34600, D.34600,
	str	r1, [sp, #48]	@ D.34600, %sfp
	add	r1, sp, #560	@ tmp1302,,
	add	r3, r1, r3, lsl #2	@ tmp667, tmp1306, tmp665,
	add	r8, r4, #150	@ D.34600, D.34600,
	str	r3, [sp, #80]	@ tmp667, %sfp
	add	r3, r4, #160	@ D.34600, D.34600,
	str	r3, [sp, #56]	@ D.34600, %sfp
	add	r3, r4, #168	@ D.34600, D.34600,
	str	r3, [sp, #60]	@ D.34600, %sfp
	add	r3, r4, #160	@ D.34600, D.34600,
	str	r3, [sp, #84]	@ D.34600, %sfp
	add	r3, r4, #168	@ D.34600, D.34600,
	str	r3, [sp, #88]	@ D.34600, %sfp
	add	r3, r4, #172	@ D.34600, D.34600,
	str	r3, [sp, #64]	@ D.34600, %sfp
	add	r5, r4, #176	@ D.34600, D.34600,
	str	r3, [sp, #92]	@ D.34600, %sfp
	add	r3, r4, #188	@ D.34600, D.34600,
	add	r2, r1, r2, lsl #2	@ tmp632, tmp1302, tmp630,
	add	fp, r4, #148	@ D.34600, D.34600,
	str	r2, [sp, #52]	@ tmp632, %sfp
	add	r10, r4, #149	@ D.34600, D.34600,
	add	r2, r4, #152	@ D.34600, D.34600,
	str	r5, [sp, #68]	@ D.34600, %sfp
	str	r2, [sp, #72]	@ D.34600, %sfp
	add	r5, r4, #180	@ D.34600, D.34600,
	add	r7, r4, #176	@ D.34600, D.34600,
	str	r5, [sp, #28]	@ D.34600, %sfp
	add	r6, r4, #180	@ D.34600, D.34600,
	add	r5, r4, #184	@ D.34600, D.34600,
	str	r3, [sp, #36]	@ D.34600, %sfp
	mov	r2, r8	@ D.34600, D.34600
	str	r5, [sp, #32]	@ D.34600, %sfp
	add	r5, r4, #184	@ D.34600, D.34600,
	str	fp, [sp, #44]	@ D.34600, %sfp
	mov	r4, r3	@ D.34600, D.34600
	str	r5, [sp, #40]	@ D.34600, %sfp
	bgt	.L453	@,
	ldr	r3, [sp, #72]	@ D.34600, %sfp
	ldr	r5, [sp, #76]	@ D.34601, %sfp
	str	r0, [r3]	@ tmp1134, MEM[base: _348, offset: 0B]
	ldr	r3, [sp, #80]	@ tmp667, %sfp
	ldr	r8, [r3, #-408]	@ D.34605, MemArrange.FrameAddr
	ldr	r3, [sp, #84]	@ D.34600, %sfp
	str	r8, [r3]	@ D.34605, MEM[base: _309, offset: 0B]
	ldr	r3, [sp, #88]	@ D.34600, %sfp
	str	r5, [r3]	@ D.34601, MEM[base: _270, offset: 0B]
	ldr	r3, [sp, #92]	@ D.34600, %sfp
	ldr	r8, [r9, #88]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsWidth
	ldr	r5, [sp, #40]	@ D.34600, %sfp
	str	r8, [r3]	@ D.34605, MEM[base: _267, offset: 0B]
	ldr	r3, [sp, #100]	@ D.34605, %sfp
	ldr	r8, [r9, #92]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DispFsHeight
	str	r8, [r7]	@ D.34605, MEM[base: _15, offset: 0B]
	str	r3, [r6]	@ D.34605, MEM[base: _10, offset: 0B]
	ldr	r3, [sp, #104]	@ D.34605, %sfp
	str	r3, [r5]	@ D.34605, MEM[base: _6, offset: 0B]
	ldr	r3, [sp, #108]	@ D.34605, %sfp
	str	r3, [r4]	@ D.34605, MEM[base: _432, offset: 0B]
	ldr	r3, [sp, #44]	@ D.34600, %sfp
	strb	r0, [r3]	@ tmp1134, MEM[base: _547, offset: 0B]
	strb	r0, [r10]	@ tmp1134, MEM[base: _539, offset: 0B]
	strb	r0, [r2]	@ tmp1134, MEM[base: _536, offset: 0B]
	b	.L383	@
.L452:
	ldr	r3, [sp, #548]	@ MemArrange.ValidPMVNum, MemArrange.ValidPMVNum
	mov	r2, #0	@ i,
	add	ip, sp, #424	@ ivtmp.376,,
	add	r0, r9, #34560	@ ivtmp.382, D.34604,
	cmp	r3, #20	@ MemArrange.ValidPMVNum,
	add	r1, r9, #14	@ ivtmp.386, D.34604,
	mov	lr, r2	@ tmp1133, i
	movge	r3, #20	@ D.34605,
	uxtb	r3, r3	@ D.34602, D.34605
	strb	r3, [r9, #13]	@ D.34602, _24->s32PmvNum
	b	.L388	@
.L454:
	ldrb	r3, [r9, #13]	@ zero_extendqisi2	@ D.34602, _24->s32PmvNum
.L388:
	sxtb	r3, r3	@ D.34605, D.34602
	add	ip, ip, #4	@ ivtmp.376, ivtmp.376,
	cmp	r3, r2	@ D.34605, i
	add	r2, r2, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.382, ivtmp.382,
	add	r1, r1, #1	@ ivtmp.386, ivtmp.386,
	ldrgt	r3, [ip, #-4]	@ D.34605, MEM[base: _201, offset: 0B]
	ldrle	r3, [sp, #424]	@ D.34605, MemArrange.PMVAddr
	cmp	r2, #20	@ i,
	str	r3, [r0, #-4]	@ D.34605,
	strb	lr, [r1, #-1]	@ tmp1133,
	bne	.L454	@,
	ldr	r8, [sp, #96]	@ tmp1124, %sfp
	add	r4, r9, #24576	@ tmp1121, D.34604,
	ldr	r1, [sp, #544]	@ MemArrange.HafPmvOffset, MemArrange.HafPmvOffset
	mov	r3, #0	@ tmp709,
	ldr	r2, [sp, #144]	@ MemArrange.VahbStride, MemArrange.VahbStride
	ldr	r6, [sp, #408]	@ MemArrange.ChromOffset, MemArrange.ChromOffset
	str	r1, [r8, #1788]	@ MemArrange.HafPmvOffset, _24->s32HalfPmvOffset
	ldr	r0, [r4, #3232]	@ D.34605, _24->stDecFs[0].PhyAddr
	str	r2, [r4, #3188]	@ MemArrange.VahbStride, _24->stDummyPhyFs.Stride
	str	r3, [r4, #3172]	@ tmp709, _24->stDummyPhyFs.PhyFsID
	str	r0, [r4, #3180]	@ D.34605, _24->stDummyPhyFs.PhyAddr
	ldr	r2, [r9, #72]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	ldr	r5, [sp, #412]	@ MemArrange.LumaPixelOffset, MemArrange.LumaPixelOffset
	ldr	lr, [sp, #416]	@ MemArrange.ChromaPixelOffset, MemArrange.ChromaPixelOffset
	str	r2, [r4, #3192]	@ D.34605, _24->stDummyPhyFs.FsWidth
	ldr	r7, [sp, #556]	@ MemArrange.u32StrideByte, MemArrange.u32StrideByte
	ldr	r1, [r9, #76]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	ip, [sp, #148]	@ D.34605, MemArrange.TotalMemUsed
	strb	r3, [r4, #3168]	@ tmp709, _24->stDummyPhyFs.IsDecRef
	str	r1, [r4, #3196]	@ D.34605, _24->stDummyPhyFs.FsHeight
	strb	r3, [r4, #3169]	@ tmp709, _24->stDummyPhyFs.IsTfRef
	strb	r3, [r4, #3170]	@ tmp709, _24->stDummyPhyFs.DispState
	str	r6, [r4, #3200]	@ MemArrange.ChromOffset, _24->stDummyPhyFs.ChromOffset
	str	r5, [r4, #3204]	@ MemArrange.LumaPixelOffset, _24->stDummyPhyFs.LumaPixelOffset
	str	lr, [r4, #3208]	@ MemArrange.ChromaPixelOffset, _24->stDummyPhyFs.ChromaPixelOffset
	str	r7, [r8, #1888]	@ MemArrange.u32StrideByte, _24->StrideByte
	str	ip, [r8, #1876]	@ D.34605, _24->TotalMemUsed
	ldr	r3, [r9, #40]	@ _24->stPreInfo.s32PreWidth, _24->stPreInfo.s32PreWidth
	cmp	r2, r3	@ D.34605, _24->stPreInfo.s32PreWidth
	beq	.L455	@,
.L389:
	ldr	r6, .L466+20	@ tmp1127,
	ldr	r3, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r6, r3, asl #2]	@ tmp1115, s_pstVfmwChan
	ldr	r7, [r3, #1580]	@ _478->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _478->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ _478->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L456	@,
.L418:
	ldrsb	r3, [r9, #10]	@ _24->s32DecFsNum, _24->s32DecFsNum
	ldrsb	lr, [r9, #65]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	str	r2, [r9, #40]	@ D.34605, _24->stPreInfo.s32PreWidth
	str	r1, [r9, #44]	@ D.34605, _24->stPreInfo.s32PreHeight
	str	r3, [r9, #48]	@ _24->s32DecFsNum, _24->stPreInfo.s32PreDecNum
	ldr	r3, [r4, #3284]	@ _24->stDecFs[1].PhyAddr, _24->stDecFs[1].PhyAddr
	str	lr, [r9, #56]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum, _24->stPreInfo.s32PreExpectNum
	rsb	r0, r0, r3	@ D.34605, D.34605, _24->stDecFs[1].PhyAddr
	str	r0, [r9, #52]	@ D.34605, _24->stPreInfo.s32PreDecSlotLen
.L390:
	ldr	r3, [sp, #132]	@ UsedMemSize, %sfp
	mov	r0, #0	@ D.34601,
	str	ip, [r3]	@ D.34605, *UsedMemSize_287(D)
	add	sp, sp, #564	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L449:
	cmp	r3, #0	@ D.34602,
	beq	.L367	@,
	ldr	r0, [r9, #76]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	cmp	r2, r0	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	bne	.L423	@,
	ldr	r2, [r9, #72]	@ MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	cmp	r1, r2	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	beq	.L367	@,
.L423:
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L373:
	ldr	r3, [sp, #420]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	cmp	r3, #40	@ MemArrange.ValidFrameNum,
	movge	r3, #40	@ D.34605,
	uxtb	r3, r3	@ D.34602, D.34605
	strb	r3, [r9, #10]	@ D.34602, _24->s32DecFsNum
	b	.L375	@
.L424:
	mvn	r2, #0	@ Ret,
.L369:
	ldr	r1, .L466+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L455:
	ldr	r3, [r9, #44]	@ _24->stPreInfo.s32PreHeight, _24->stPreInfo.s32PreHeight
	cmp	r1, r3	@ D.34605, _24->stPreInfo.s32PreHeight
	bne	.L389	@,
	ldrsb	lr, [r9, #10]	@ D.34605, _24->s32DecFsNum
	ldr	r3, [r9, #48]	@ _24->stPreInfo.s32PreDecNum, _24->stPreInfo.s32PreDecNum
	cmp	lr, r3	@ D.34605, _24->stPreInfo.s32PreDecNum
	bne	.L389	@,
	ldrsb	lr, [r9, #65]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	ldr	r3, [r9, #56]	@ _24->stPreInfo.s32PreExpectNum, _24->stPreInfo.s32PreExpectNum
	cmp	lr, r3	@ D.34605, _24->stPreInfo.s32PreExpectNum
	bne	.L389	@,
	b	.L390	@
.L456:
	ldr	r0, .L466+28	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [sp, #128]	@ InstID, %sfp
	ldr	r1, .L466	@ tmp1364,
	ldr	r8, .L466	@ tmp754,
	ldr	r3, [r1, r2, asl #2]	@ pstInst, s_pFspInst
	ldr	r1, [r6, r2, asl #2]	@ D.34609, s_pstVfmwChan
	str	r3, [sp, #28]	@ pstInst, %sfp
	ldr	r5, [r1, #1612]	@ _295->stSynExtraData.s32DSDThrHeight, _295->stSynExtraData.s32DSDThrHeight
	ldr	r2, [r3, #72]	@ s32CurWidth, pstInst_292->stInstCfg.s32DecFsWidth
	ldr	r0, [r1, #1608]	@ _295->stSynExtraData.s32DSDThrWidth, _295->stSynExtraData.s32DSDThrWidth
	ldr	r3, [r3, #76]	@ s32CurHeight, pstInst_292->stInstCfg.s32DecFsHeight
	cmp	r3, r5	@ s32CurHeight, _295->stSynExtraData.s32DSDThrHeight
	cmple	r2, r0	@, s32CurWidth, _295->stSynExtraData.s32DSDThrWidth
	movle	r5, #1	@ tmp764,
	movgt	r5, #0	@ tmp764,
	bgt	.L391	@,
	ldr	r1, [r1, #1604]	@ _295->stSynExtraData.s32DnrEnable, _295->stSynExtraData.s32DnrEnable
	cmp	r1, #1	@ _295->stSynExtraData.s32DnrEnable,
	beq	.L457	@,
	ldr	r1, .L466+32	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_NoneDnrSwitchToDnr	@
	cmp	r0, #0	@,
	ldrne	r3, [sp, #128]	@ InstID, %sfp
	strne	r3, [sp]	@ InstID,
	movwne	r3, #1445	@,
	bne	.L443	@,
	mov	r1, r7	@, _478->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	beq	.L444	@,
	ldr	r10, .L466+36	@ tmp1125,
.L419:
	ldr	r0, [sp, #128]	@ InstID, %sfp
	mov	r1, #1	@ tmp897,
	movw	r3, #11160	@ tmp901,
	bfi	r3, r1, #16, #16	@ tmp901, tmp897,,
	movw	r2, #11160	@ tmp907,
	bfi	r2, r1, #16, #16	@ tmp907, tmp897,,
	ldr	ip, [r6, r0, asl #2]	@ tmp896, s_pstVfmwChan
	mla	r3, r3, r0, r10	@ tmp902, tmp901, InstID, tmp1125
	ldr	lr, [ip, #236]	@ D.34605, _312->s32OffLineDnrMemAddr
	mla	r2, r2, r0, r10	@ tmp908, tmp907, InstID, tmp1125
	add	r3, r3, #75776	@ tmp903, tmp902,
	str	r1, [ip, #1604]	@ tmp897, _306->stSynExtraData.s32DnrEnable
	mov	r0, #31	@,
	str	lr, [r3, #884]	@ D.34605, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	r3, [ip, #240]	@ D.34605, _312->s32OffLineDNRMemSize
	add	r2, r2, #75776	@ tmp910, tmp908,
	ldr	r1, [sp, #28]	@ pstInst, %sfp
	str	r3, [r2, #888]	@ D.34605, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	add	r6, r1, #32768	@ tmp912, pstInst,
	ldr	lr, [ip, #240]	@ _312->s32OffLineDNRMemSize, _312->s32OffLineDNRMemSize
	ldr	r3, [r6, #1884]	@ pstInst_292->MemSize, pstInst_292->MemSize
	ldr	r2, [r6, #1880]	@ pstInst_292->MemAddr, pstInst_292->MemAddr
	str	lr, [sp, #4]	@ _312->s32OffLineDNRMemSize,
	ldr	ip, [ip, #236]	@ _312->s32OffLineDnrMemAddr, _312->s32OffLineDnrMemAddr
	ldr	r1, .L466+40	@,
	str	ip, [sp]	@ _312->s32OffLineDnrMemAddr,
	bl	dprint_vfmw	@
	ldr	r0, .L466+28	@,
	bl	OSAL_SpinUnLockIRQ	@
	cmp	r5, #0	@ s32Ret,
	bne	.L402	@,
.L403:
	ldr	r2, [r9, #72]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsWidth
	ldr	r1, [r9, #76]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32DecFsHeight
	ldr	r0, [r4, #3232]	@ D.34605, _24->stDecFs[0].PhyAddr
	ldr	ip, [sp, #148]	@ D.34605, MemArrange.TotalMemUsed
	b	.L418	@
.L391:
	ldr	fp, [r1, #1604]	@ _295->stSynExtraData.s32DnrEnable, _295->stSynExtraData.s32DnrEnable
	cmp	fp, #1	@ _295->stSynExtraData.s32DnrEnable,
	beq	.L458	@,
	ldr	r1, .L466+44	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #128]	@ InstID, %sfp
	ldr	r3, [r8, r0, asl #2]	@ pstInst, s_pFspInst
	add	r2, r3, #32768	@ tmp1026, pstInst,
	mov	r1, r3	@ pstInst, pstInst
	ldrsb	r3, [r3, #10]	@ pstInst_376->s32DecFsNum, pstInst_376->s32DecFsNum
	ldr	r10, [r2, #1872]	@ s32ImgSize, pstInst_376->ImgSlotLen
	cmp	r3, #0	@ pstInst_376->s32DecFsNum,
	ble	.L405	@,
	add	r8, r1, #27648	@ ivtmp.363, pstInst,
	str	r9, [sp, #32]	@ D.34604, %sfp
	str	r4, [sp, #36]	@ tmp1121, %sfp
	mov	r9, r10	@ s32ImgSize, s32ImgSize
	add	r8, r8, #160	@ ivtmp.363, ivtmp.363,
	mov	r10, r0	@ InstID, InstID
	mov	r4, r1	@ pstInst, pstInst
	b	.L413	@
.L460:
	ldr	r2, [r6, r10, asl #2]	@ D.34609, s_pstVfmwChan
	add	r2, r2, r5, lsl #4	@ tmp1033, D.34609, i,
	add	r1, r2, #209920	@ tmp1035, tmp1033,
	add	r2, r2, #208896	@ tmp1045, tmp1033,
	str	r0, [r1, #824]	@ s32UsingCount, _381->stFrameArray[i_494].eFrameState
	str	fp, [r1, #828]	@ s32FrameStartAddr,
	str	r9, [r2, #1856]	@ s32ImgSize,
	str	r0, [r2, #1860]	@ s32UsingCount,
.L411:
	ldrsb	r2, [r4, #10]	@ D.34605, pstInst_376->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r8, r8, #52	@ ivtmp.363, ivtmp.363,
	cmp	r5, r2	@ i, D.34605
	bge	.L459	@,
.L413:
	ldr	fp, [r8]	@ s32FrameStartAddr, MEM[base: _103, offset: 0B]
	mov	r2, r9	@, s32ImgSize
	mov	r0, r10	@, InstID
	mov	r1, fp	@, s32FrameStartAddr
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	beq	.L460	@,
	ble	.L412	@,
	ldr	r2, [r6, r10, asl #2]	@ D.34609, s_pstVfmwChan
	add	r2, r2, r5, lsl #4	@ tmp1053, D.34609, i,
	add	r1, r2, #209920	@ tmp1055, tmp1053,
	add	r2, r2, #208896	@ tmp1065, tmp1053,
	str	r7, [r1, #824]	@ tmp1132, _382->stFrameArray[i_494].eFrameState
	str	fp, [r1, #828]	@ s32FrameStartAddr,
	str	r9, [r2, #1856]	@ s32ImgSize,
	str	r0, [r2, #1860]	@ s32UsingCount,
	b	.L411	@
.L374:
	ldrb	r3, [sp, #420]	@ zero_extendqisi2	@ D.34602, MemArrange.ValidFrameNum
	strb	r3, [r9, #10]	@ D.34602, _24->s32DecFsNum
	b	.L375	@
.L462:
	ldr	r4, [sp, #32]	@ tmp1121, %sfp
.L405:
	mov	r1, #0	@,
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmp	r0, #0	@ s32Ret
	bne	.L461	@,
	ldr	r5, [sp, #128]	@ InstID, %sfp
	movw	r3, #11160	@ tmp1079,
	ldr	lr, .L466+36	@ tmp1077,
	movt	r3, 1	@ tmp1079,
	ldr	r2, [sp, #28]	@ pstInst, %sfp
	ldr	ip, [r6, r5, asl #2]	@ tmp1074, s_pstVfmwChan
	mla	r3, r3, r5, lr	@ tmp1080, tmp1079, InstID, tmp1077
	add	r2, r2, #32768	@ tmp1090, pstInst,
	ldr	lr, [ip, #236]	@ D.34605, _654->s32OffLineDnrMemAddr
	str	r0, [ip, #1604]	@ s32Ret, _311->stSynExtraData.s32DnrEnable
	mov	r0, #31	@,
	add	r3, r3, #75776	@ tmp1082, tmp1080,
	ldr	r1, .L466+40	@,
	str	lr, [r3, #884]	@ D.34605, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	lr, [ip, #240]	@ D.34605, _654->s32OffLineDNRMemSize
	str	lr, [r3, #888]	@ D.34605, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	ldr	lr, [ip, #240]	@ _654->s32OffLineDNRMemSize, _654->s32OffLineDNRMemSize
	ldr	r3, [r2, #1884]	@ pstInst_292->MemSize, pstInst_292->MemSize
	ldr	r2, [r2, #1880]	@ pstInst_292->MemAddr, pstInst_292->MemAddr
	str	lr, [sp, #4]	@ _654->s32OffLineDNRMemSize,
	ldr	ip, [ip, #236]	@ _654->s32OffLineDnrMemAddr, _654->s32OffLineDnrMemAddr
	str	ip, [sp]	@ _654->s32OffLineDnrMemAddr,
	bl	dprint_vfmw	@
	ldr	r0, .L466+28	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L403	@
.L447:
	ldr	r3, .L466+48	@,
	movw	r2, #1545	@,
	ldr	r1, .L466+52	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L459:
	ldr	r9, [sp, #32]	@ D.34604, %sfp
	ldr	r4, [sp, #36]	@ tmp1121, %sfp
	b	.L405	@
.L458:
	ldr	r1, .L466+56	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r2, .L466+36	@ tmp926,
	ldr	lr, [sp, #128]	@ InstID, %sfp
	movw	r3, #11160	@ tmp928,
	movt	r3, 1	@ tmp928,
	mla	r3, r3, lr, r2	@ tmp929, tmp928, InstID, tmp926
	ldr	r8, [r8, lr, asl #2]	@ pstInst, s_pFspInst
	add	r2, r8, #32768	@ tmp925, pstInst,
	add	r3, r3, #75776	@ tmp931, tmp929,
	ldrsb	r1, [r8, #10]	@ pstInst_350->s32DecFsNum, pstInst_350->s32DecFsNum
	ldr	r0, [r2, #1872]	@ s32ImgSize, pstInst_350->ImgSlotLen
	ldr	ip, [r3, #884]	@ s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	cmp	r1, #0	@ pstInst_350->s32DecFsNum,
	ldr	r10, [r3, #888]	@ s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	add	r10, ip, r10	@ s32DnrEndAddr, s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	ble	.L405	@,
	add	r2, r8, #27648	@ ivtmp.358, pstInst,
	str	r4, [sp, #32]	@ tmp1121, %sfp
	add	r2, r2, #160	@ ivtmp.358, ivtmp.358,
	mov	r4, lr	@ InstID, InstID
	b	.L409	@
.L463:
	ldr	r1, [r6, r4, asl #2]	@ D.34609, s_pstVfmwChan
	add	r1, r1, r5, lsl #4	@ tmp952, D.34609, i,
.L442:
	add	lr, r1, #209920	@ tmp985, tmp983,
	add	r1, r1, #208896	@ tmp995, tmp983,
	str	fp, [lr, #824]	@ tmp1131,
	str	r3, [lr, #828]	@ s32FrameStartAddr,
	ldr	r3, [r1, #1860]	@ MEM[(struct VFMW_CHAN_S *)_627 + 210756B],
	str	r0, [r1, #1856]	@ s32ImgSize,
	add	r3, r3, #1	@ D.34605, MEM[(struct VFMW_CHAN_S *)_627 + 210756B],
	str	r3, [r1, #1860]	@ D.34605,
.L407:
	ldrsb	r3, [r8, #10]	@ D.34605, pstInst_350->s32DecFsNum
	add	r5, r5, #1	@ i, i,
	add	r2, r2, #52	@ ivtmp.358, ivtmp.358,
	cmp	r5, r3	@ i, D.34605
	bge	.L462	@,
.L409:
	ldr	r3, [r2]	@ s32FrameStartAddr, MEM[base: _121, offset: 0B]
	cmp	r10, r3	@ s32DnrEndAddr, s32FrameStartAddr
	add	lr, r0, r3	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	r1, #1	@ tmp947,
	movle	r1, #0	@ tmp947,
	cmp	ip, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	r1, #0	@ tmp947,
	cmp	r1, #0	@ tmp947,
	bne	.L463	@,
	cmp	ip, lr	@ s32DnrStartAddr, s32FrameEndAddr
	ldr	r1, [r6, r4, asl #2]	@ D.34609, s_pstVfmwChan
	movge	lr, #0	@ tmp978,
	movlt	lr, #1	@ tmp978,
	cmp	ip, r3	@ s32DnrStartAddr, s32FrameStartAddr
	add	r1, r1, r5, lsl #4	@ tmp983, D.34609, i,
	movle	lr, #0	@ tmp978,
	cmp	lr, #0	@ tmp978,
	bne	.L442	@,
	add	r7, r1, #209920	@ tmp1008, tmp1006,
	add	r1, r1, #208896	@ tmp1018, tmp1006,
	str	lr, [r7, #824]	@ tmp978, _370->stFrameArray[i_493].eFrameState
	str	r3, [r7, #828]	@ s32FrameStartAddr, _370->stFrameArray[i_493].s32FrameAddr
	str	r0, [r1, #1856]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_636 + 210752B]
	str	lr, [r1, #1860]	@ tmp978, MEM[(struct VFMW_CHAN_S *)_636 + 210756B]
	b	.L407	@
.L371:
	str	r3, [sp]	@ D.34605,
	mov	r3, r6	@, MinFsNum
	ldr	r1, .L466+60	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L457:
	ldr	r1, .L466+64	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	ldr	r10, .L466+36	@ tmp1125,
	ldr	r7, [sp, #128]	@ InstID, %sfp
	movw	r3, #11160	@ tmp770,
	movt	r3, 1	@ tmp770,
	mla	r3, r3, r7, r10	@ tmp771, tmp770, InstID, tmp1125
	ldr	r8, [r8, r7, asl #2]	@ pstInst, s_pFspInst
	ldr	r2, [r6, r7, asl #2]	@ D.34609, s_pstVfmwChan
	add	r1, r8, #32768	@ tmp782, pstInst,
	add	r3, r3, #75776	@ tmp773, tmp771,
	ldr	lr, [r3, #884]	@ s32DnrStartAddr, s_DnrChan[InstID_21(D)].s32OffLineDnrMemAddr
	ldr	r3, [r3, #888]	@ s32DnrSize, s_DnrChan[InstID_21(D)].s32OffLineDNRMemSize
	str	lr, [r2, #236]	@ s32DnrStartAddr, _325->s32OffLineDnrMemAddr
	add	fp, lr, r3	@ s32DnrEndAddr, s32DnrStartAddr, s32DnrSize
	str	r3, [r2, #240]	@ s32DnrSize, _325->s32OffLineDNRMemSize
	ldrsb	r3, [r8, #10]	@ pstInst_322->s32DecFsNum, pstInst_322->s32DecFsNum
	ldr	r5, [r1, #1872]	@ s32ImgSize, pstInst_322->ImgSlotLen
	cmp	r3, #0	@ pstInst_322->s32DecFsNum,
	ble	.L393	@,
	add	r1, r8, #27648	@ ivtmp.353, pstInst,
	mov	r2, #0	@ i,
	add	r1, r1, #160	@ ivtmp.353, ivtmp.353,
	str	r9, [sp, #32]	@ D.34604, %sfp
	str	r4, [sp, #36]	@ tmp1121, %sfp
	b	.L398	@
.L465:
	ldr	r0, [r6, r7, asl #2]	@ D.34609, s_pstVfmwChan
	mov	r9, #2	@ tmp1373,
	add	r0, r0, r2, lsl #4	@ tmp796, D.34609, i,
	add	ip, r0, #209920	@ tmp798, tmp796,
	add	r0, r0, #208896	@ tmp808, tmp796,
	str	r3, [ip, #828]	@ s32FrameStartAddr, _334->stFrameArray[i_492].s32FrameAddr
	mov	r3, #0	@ tmp1374,
	str	r9, [ip, #824]	@ tmp1373, _334->stFrameArray[i_492].eFrameState
	str	r5, [r0, #1856]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_594 + 210752B]
	str	r3, [r0, #1860]	@ tmp1374, MEM[(struct VFMW_CHAN_S *)_594 + 210756B]
.L395:
	ldrsb	r3, [r8, #10]	@ D.34605, pstInst_322->s32DecFsNum
	add	r2, r2, #1	@ i, i,
	add	r1, r1, #52	@ ivtmp.353, ivtmp.353,
	cmp	r2, r3	@ i, D.34605
	bge	.L464	@,
.L398:
	ldr	r3, [r1]	@ s32FrameStartAddr, MEM[base: _509, offset: 0B]
	cmp	fp, r3	@ s32DnrEndAddr, s32FrameStartAddr
	add	r0, r5, r3	@ s32FrameEndAddr, s32ImgSize, s32FrameStartAddr
	movgt	ip, #1	@ tmp791,
	movle	ip, #0	@ tmp791,
	cmp	lr, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movgt	ip, #0	@ tmp791,
	cmp	ip, #0	@ tmp791,
	bne	.L465	@,
	cmp	fp, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r9, #1	@ tmp818,
	movlt	r9, #0	@ tmp818,
	cmp	lr, r0	@ s32DnrStartAddr, s32FrameEndAddr
	movge	r9, #0	@ tmp818,
	cmp	r9, #0	@ tmp818,
	beq	.L396	@,
	ldr	r0, [r6, r7, asl #2]	@ D.34609, s_pstVfmwChan
	mov	r4, #2	@ tmp1375,
	add	r0, r0, r2, lsl #4	@ tmp823, D.34609, i,
	add	r9, r0, #209920	@ tmp825, tmp823,
	add	r0, r0, #208896	@ tmp835, tmp823,
	str	r4, [r9, #824]	@ tmp1375, _338->stFrameArray[i_492].eFrameState
	str	r3, [r9, #828]	@ s32FrameStartAddr, _338->stFrameArray[i_492].s32FrameAddr
	str	r5, [r0, #1856]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_600 + 210752B]
	str	ip, [r0, #1860]	@ tmp791, MEM[(struct VFMW_CHAN_S *)_600 + 210756B]
	b	.L395	@
.L396:
	cmp	fp, r0	@ s32DnrEndAddr, s32FrameEndAddr
	movge	r0, #0	@ tmp845,
	movlt	r0, #1	@ tmp845,
	cmp	lr, r3	@ s32DnrStartAddr, s32FrameStartAddr
	movle	r0, #0	@ tmp845,
	cmp	r0, #0	@ tmp845,
	beq	.L397	@,
	ldr	r0, [r6, r7, asl #2]	@ D.34609, s_pstVfmwChan
	mov	r4, #2	@ tmp1376,
	add	r0, r0, r2, lsl #4	@ tmp850, D.34609, i,
	add	ip, r0, #209920	@ tmp852, tmp850,
	add	r0, r0, #208896	@ tmp862, tmp850,
	str	r4, [ip, #824]	@ tmp1376, _342->stFrameArray[i_492].eFrameState
	str	r3, [ip, #828]	@ s32FrameStartAddr, _342->stFrameArray[i_492].s32FrameAddr
	str	r5, [r0, #1856]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_606 + 210752B]
	str	r9, [r0, #1860]	@ tmp818, MEM[(struct VFMW_CHAN_S *)_606 + 210756B]
	b	.L395	@
.L464:
	ldr	r9, [sp, #32]	@ D.34604, %sfp
	ldr	r4, [sp, #36]	@ tmp1121, %sfp
.L393:
	mov	r1, #2	@,
	ldr	r0, [sp, #128]	@, %sfp
	bl	FSP_EnableDnr	@
	cmn	r0, #1	@ s32Ret,
	mov	r5, r0	@ s32Ret,
	bne	.L419	@,
.L444:
	ldr	r0, .L466+28	@,
	bl	OSAL_SpinUnLockIRQ	@
.L402:
	movw	r3, #1797	@,
	ldr	r2, .L466+68	@,
	ldr	r1, .L466+72	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L397:
	ldr	ip, [r6, r7, asl #2]	@ D.34609, s_pstVfmwChan
	add	ip, ip, r2, lsl #4	@ tmp870, D.34609, i,
	add	r9, ip, #209920	@ tmp872, tmp870,
	add	ip, ip, #208896	@ tmp884, tmp870,
	str	r0, [r9, #824]	@ tmp845, _343->stFrameArray[i_492].eFrameState
	str	r3, [r9, #828]	@ s32FrameStartAddr, _344->stFrameArray[i_492].s32FrameAddr
	str	r5, [ip, #1856]	@ s32ImgSize, MEM[(struct VFMW_CHAN_S *)_612 + 210752B]
	str	r0, [ip, #1860]	@ tmp845, MEM[(struct VFMW_CHAN_S *)_612 + 210756B]
	b	.L395	@
.L461:
	ldr	r3, [sp, #128]	@ InstID, %sfp
	str	r3, [sp]	@ InstID,
	movw	r3, #1494	@,
.L443:
	ldr	r2, .L466+76	@,
	mov	r0, #31	@,
	ldr	r1, .L466+80	@,
	bl	dprint_vfmw	@
	b	.L444	@
.L412:
	ldr	r3, [sp, #128]	@ InstID, %sfp
	str	r3, [sp]	@ InstID,
	movw	r3, #1484	@,
	b	.L443	@
.L448:
	mov	r0, r9	@, D.34604
	ldr	r3, .L466+84	@,
	movw	r2, #1546	@,
	ldr	r1, .L466+52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L451:
	ldrsb	r3, [r9, #65]	@ D.34605, MEM[(struct FSP_INST_CFG_S *)_24 + 60B].s32ExpectedDecFsNum
	mov	r2, r5	@, D.34605
	str	r1, [sp]	@ D.34607,
	ldr	r1, .L466+88	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34601,
	b	.L439	@
.L467:
	.align	2
.L466:
	.word	.LANCHOR0
	.word	CapItem
	.word	.LC32
	.word	.LC31
	.word	g_vdm_hal_fun_ptr
	.word	s_pstVfmwChan
	.word	.LC3
	.word	g_DSDLock
	.word	.LC34
	.word	s_DnrChan
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
	ldr	r3, .L480	@ tmp128,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r3, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	cmp	r3, #0	@ pstInst,
	beq	.L478	@,
	ldrsb	r4, [r3, #10]	@ TotalFsNum, pstInst_6->s32DecFsNum
	cmp	r4, #0	@ TotalFsNum,
	ble	.L471	@,
	add	r3, r3, #27648	@ ivtmp.474, pstInst,
	mov	r2, #0	@ i,
	add	r3, r3, #148	@ ivtmp.474, ivtmp.474,
.L474:
	ldrsb	r1, [r3]	@ MEM[base: _33, offset: 0B], MEM[base: _33, offset: 0B]
	cmp	r1, #0	@ MEM[base: _33, offset: 0B],
	bne	.L472	@,
	ldrsb	r1, [r3, #2]	@ MEM[base: _33, offset: 2B], MEM[base: _33, offset: 2B]
	cmp	r1, #0	@ MEM[base: _33, offset: 2B],
	beq	.L473	@,
.L472:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.474, ivtmp.474,
	cmp	r4, r2	@ TotalFsNum, i
	bne	.L474	@,
.L471:
	add	r3, sp, #16	@,,
	add	r2, sp, #20	@,,
	add	r1, sp, #12	@,,
	mov	r5, #0	@ tmp133,
	str	r5, [sp, #16]	@ tmp133, NewNum
	str	r5, [sp, #20]	@ tmp133, ReadNum
	str	r5, [sp, #12]	@ tmp133, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #12]	@ D.34633, RefNum
	ldr	r3, [sp, #20]	@ D.34633, ReadNum
	ldr	r0, [sp, #16]	@ D.34633, NewNum
	add	r1, r2, r3	@ D.34633, D.34633, D.34633
	add	r1, r1, r0	@ D.34633, D.34633, D.34633
	add	r1, r1, #2	@ D.34633, D.34633,
	cmp	r4, r1	@ TotalFsNum, D.34633
	bgt	.L479	@,
.L475:
	mov	r0, #0	@ D.34631,
.L470:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L473:
	cmp	r4, r2	@ TotalFsNum, i
	bgt	.L475	@,
	b	.L471	@
.L479:
	stmia	sp, {r0, r4}	@,,
	mov	r0, r5	@, tmp133
	ldr	r1, .L480+4	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.34631,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L478:
	ldr	r1, .L480+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34631,
	b	.L470	@
.L481:
	.align	2
.L480:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ InstID, InstID
	bhi	.L503	@,
	ldr	r3, .L507	@ tmp140,
	ldr	r4, [r3, r0, asl #2]	@ D.34652, s_pFspInst
	cmp	r4, #0	@ D.34652,
	beq	.L504	@,
	ldr	r2, [r3, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L489	@,
	ldr	r6, [r3, #52]	@ D.34660, g_FspFrameIntf.IsFrameAvalible
	cmp	r6, #0	@ D.34660,
	beq	.L505	@,
	blx	r6	@ D.34660
	cmp	r0, #0	@,
	bne	.L506	@,
.L489:
	ldrb	ip, [r4, #10]	@ zero_extendqisi2	@ D.34654, _9->s32DecFsNum
	cmp	ip, #0	@ D.34654,
	beq	.L497	@,
	sxtb	ip, ip	@ D.34658, D.34654
	cmp	ip, #0	@ D.34658,
	ble	.L490	@,
	ldr	r1, .L507+4	@ tmp147,
	add	r3, r4, #27648	@ ivtmp.482, D.34652,
	add	r3, r3, #148	@ ivtmp.482, ivtmp.482,
	mov	r2, #0	@ i,
	ldr	r0, [r1, r5, asl #2]	@ D.34657, s_pstVfmwChan
	ldr	lr, [r0, #1580]	@ D.34649, _21->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L494	@
.L491:
	ldrsb	r1, [r3]	@ MEM[base: _41, offset: 0B], MEM[base: _41, offset: 0B]
	cmp	r1, #0	@ MEM[base: _41, offset: 0B],
	bne	.L492	@,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ MEM[base: _41, offset: 2B], MEM[base: _41, offset: 2B]
	cmp	r1, #1	@ MEM[base: _41, offset: 2B],
	bls	.L493	@,
.L492:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.482, ivtmp.482,
	cmp	r2, ip	@ i, D.34658
	beq	.L490	@,
.L494:
	cmp	lr, #1	@ D.34649,
	bne	.L491	@,
	mov	r1, r2, asl #4	@ D.34653, i,
	add	r1, r1, #209920	@ D.34653, D.34653,
	add	r1, r1, #824	@ D.34653, D.34653,
	ldr	r1, [r0, r1]	@ MEM[base: _34, offset: 0B], MEM[base: _34, offset: 0B]
	cmp	r1, #0	@ MEM[base: _34, offset: 0B],
	beq	.L491	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.482, ivtmp.482,
	cmp	r2, ip	@ i, D.34658
	bne	.L494	@,
.L490:
	mov	r0, r5	@, InstID
	bl	FSP_IsFsLeak	@
	adds	r0, r0, #0	@ D.34661,,
	movne	r0, #1	@ D.34661,
	rsb	r0, r0, #0	@ D.34649, D.34661
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L493:
	cmp	r2, ip	@ i, D.34658
	bge	.L490	@,
.L497:
	mov	r0, #1	@ D.34649,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L506:
	mov	r0, #0	@ D.34649,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L505:
	ldr	r1, .L507+8	@,
	mov	r0, r6	@, D.34660
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.34649, D.34660
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L503:
	ldr	r3, .L507+12	@,
	movw	r2, #1892	@,
	ldr	r1, .L507+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34649,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L504:
	mov	r0, r4	@, D.34652
	ldr	r3, .L507+20	@,
	movw	r2, #1893	@,
	ldr	r1, .L507+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34649,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L508:
	.align	2
.L507:
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
	ble	.L513	@,
	mov	r2, r0	@ pstPhyFs, pstPhyFs
	mov	r0, #0	@ LeastFsID,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r3, r0	@ LeastFsID, LeastFsID
	mvn	lr, #0	@ LeastTick,
.L512:
	ldr	ip, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_18, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	ip, lr	@ LeastTick, LeastTick
	movcc	r0, r3	@ LeastFsID, LeastFsID
	add	r3, r3, #1	@ LeastFsID, LeastFsID,
	movcc	lr, ip	@ LeastTick, LeastTick
	cmp	r3, r1	@ LeastFsID, PhyNum
	bne	.L512	@,
	ldr	pc, [sp], #4	@
.L513:
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
	bhi	.L523	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L524	@,
	ldr	r3, .L526	@ tmp123,
	ldr	r0, [r3, r0, asl #2]	@ D.34674, s_pFspInst
	cmp	r0, #0	@ D.34674,
	beq	.L525	@,
	mov	r3, #432	@ tmp127,
	mla	r3, r3, r1, r0	@ tmp128, tmp127, LogicFrameID, D.34674
	ldr	r2, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState
	cmp	r2, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState,
	bxne	lr	@
	ldrb	r3, [r3, #100]	@ zero_extendqisi2	@ D.34676, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].PmvIdc
	cmp	r3, #19	@ D.34676,
	sxtabls	r3, r0, r3	@ tmp137, D.34674, D.34676
	movls	r2, #0	@ tmp138,
	strlsb	r2, [r3, #14]	@ tmp138, _10->IsPmvInUse
	mov	r2, #432	@ tmp141,
	mla	r1, r2, r1, r0	@ tmp142, tmp141, LogicFrameID, D.34674
	mov	r3, #0	@ tmp144,
	str	r3, [r1, #500]	@ tmp144, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_7(D)].eLfsPmvState
	bx	lr	@
.L523:
	ldr	r3, .L526+4	@,
	movw	r2, #2500	@,
	ldr	r1, .L526+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L524:
	ldr	r3, .L526+12	@,
	movw	r2, #2501	@,
	ldr	r1, .L526+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L525:
	ldr	r3, .L526+16	@,
	movw	r2, #2502	@,
	ldr	r1, .L526+8	@,
	b	dprint_vfmw	@
.L527:
	.align	2
.L526:
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
	cmp	r0, #3	@ InstID,
	bhi	.L560	@,
	cmp	r1, #63	@ LogicFrameID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ LogicFrameID, LogicFrameID
	bhi	.L561	@,
	ldr	r1, .L570	@ tmp148,
	ldr	r7, [r1, r0, asl #2]	@ D.34690, s_pFspInst
	cmp	r7, #0	@ D.34690,
	beq	.L562	@,
	mov	r5, #432	@ tmp152,
	uxtb	r8, r2	@ D.34691, IsRef
	mla	r5, r5, r4, r7	@ tmp153, tmp152, LogicFrameID, D.34690
	mov	r6, r2	@ IsRef, IsRef
	ldrsb	r3, [r5, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	strb	r8, [r5, #96]	@ D.34691, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].s32IsRef
	cmp	r3, #0	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r5, #504]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	cmp	r3, #0	@ D.34692,
	beq	.L534	@,
	ldr	lr, [r3, #44]	@ _14->u32Tick, _14->u32Tick
	ldr	ip, [r5, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	lr, ip	@ _14->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L563	@,
.L534:
	mov	r3, #432	@ tmp186,
	mla	r3, r3, r4, r7	@ tmp187, tmp186, LogicFrameID, D.34690
	ldrb	r2, [r3, #100]	@ zero_extendqisi2	@ D.34691, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].PmvIdc
	cmp	r2, #19	@ D.34691,
	bhi	.L537	@,
	cmp	r6, #1	@ IsRef,
	beq	.L564	@,
	cmp	r6, #0	@ IsRef,
	bne	.L540	@,
	ldr	r0, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	cmp	r0, #2	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	beq	.L565	@,
.L547:
	mov	r3, #432	@ tmp226,
	mla	r3, r3, r4, r7	@ tmp227, tmp226, LogicFrameID, D.34690
	ldr	r3, [r3, #508]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.34692,
	beq	.L551	@,
	ldrsb	r2, [r3, #2]	@ _32->DispState, _32->DispState
	cmp	r2, #1	@ _32->DispState,
	moveq	r2, #0	@ tmp230,
	streqb	r2, [r3, #2]	@ tmp230, _32->DispState
.L551:
	mov	r3, #432	@ tmp255,
	mla	r4, r3, r4, r7	@ tmp256, tmp255, LogicFrameID, D.34690
	str	r6, [r4, #504]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L560:
	ldr	r3, .L570+4	@,
	movw	r2, #2530	@,
	ldr	r1, .L570+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L564:
	ldr	r1, [r3, #500]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	add	r3, r3, #496	@ tmp193, tmp187,
	cmp	r1, #1	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState,
	beq	.L566	@,
.L539:
	mov	r3, #432	@ tmp264,
	mla	r3, r3, r4, r7	@ tmp265, tmp264, LogicFrameID, D.34690
	ldr	r2, [r3, #508]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.34692,
	beq	.L567	@,
.L546:
	mov	r3, #432	@ tmp235,
	ldr	r0, [r2, #44]	@ _53->u32Tick, _53->u32Tick
	mla	r3, r3, r4, r7	@ tmp236, tmp235, LogicFrameID, D.34690
	ldr	r1, [r3, #496]	@ MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	r6, #1	@ IsRef,
	cmpeq	r0, r1	@, _53->u32Tick, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].u32Tick
	beq	.L568	@,
.L543:
	cmp	r6, #0	@ IsRef,
	beq	.L551	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L561:
	ldr	r3, .L570+12	@,
	movw	r2, #2531	@,
	ldr	r1, .L570+8	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L537:
	sxtb	r2, r2	@, D.34691
	ldr	r1, .L570+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ IsRef,
	beq	.L547	@,
	b	.L539	@
.L563:
	ldrsb	ip, [r3]	@ D.34694, _14->IsDecRef
	cmp	r2, ip	@ IsRef, D.34694
	beq	.L535	@,
	ldr	ip, [r1, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	ip, #0	@ g_IsFrameIntfValid,
	beq	.L535	@,
	ldr	ip, [r1, #64]	@ D.34695, g_FspFrameIntf.SetFrameRef
	ldr	r1, [r3, #12]	@ D.34693, _14->PhyAddr
	cmp	ip, #0	@ D.34695,
	beq	.L569	@,
	blx	ip	@ D.34695
	ldr	r3, [r5, #504]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
.L535:
	strb	r8, [r3]	@ D.34691, _79->IsDecRef
	b	.L534	@
.L566:
	sxtab	r2, r7, r2	@ tmp196, D.34690, D.34691
	mov	r1, #2	@ tmp203,
	strb	r6, [r2, #14]	@ IsRef, _11->IsPmvInUse
	str	r1, [r3, #4]	@ tmp203, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
.L540:
	mov	r3, #432	@ tmp260,
	mla	r3, r3, r4, r7	@ tmp261, tmp260, LogicFrameID, D.34690
	ldr	r2, [r3, #508]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r2, #0	@ D.34692,
	bne	.L546	@,
	b	.L543	@
.L565:
	sxtab	r2, r7, r2	@ tmp210, D.34690, D.34691
	strb	r6, [r2, #14]	@ IsRef, _11->IsPmvInUse
	str	r6, [r3, #516]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].PmvAddr
	str	r6, [r3, #500]	@ IsRef, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].eLfsPmvState
	b	.L547	@
.L562:
	mov	r0, r7	@, D.34690
	ldr	r3, .L570+20	@,
	movw	r2, #2532	@,
	ldr	r1, .L570+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L568:
	ldrsb	r1, [r2, #2]	@ _53->DispState, _53->DispState
	cmp	r1, #1	@ _53->DispState,
	moveq	r1, #2	@ tmp246,
	streqb	r1, [r2, #2]	@ tmp246, _53->DispState
	streqb	r1, [r3, #97]	@ tmp246, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].s32DispState
	b	.L543	@
.L567:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L569:
	mov	r0, ip	@, D.34695
	ldr	r1, .L570+24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #504]	@ D.34692, MEM[(struct FSP_LOGIC_FS_S *)_11].stLogicFs[LogicFrameID_5(D)].pstDecodeFs
	b	.L535	@
.L571:
	.align	2
.L570:
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
	ldr	r3, .L578	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.34703, s_pFspInst
	cmp	r3, #0	@ D.34703,
	beq	.L577	@,
	mov	r0, #432	@ tmp120,
	mla	r1, r0, r1, r3	@ tmp121, tmp120, LogicFrameID, D.34703
	ldrsb	r0, [r1, #96]	@ D.34702, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32IsRef
	bx	lr	@
.L577:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r3	@, D.34703
	movw	r2, #2645	@,
	ldr	r3, .L578+4	@,
	ldr	r1, .L578+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34702,
	ldmfd	sp!, {r4, pc}	@
.L579:
	.align	2
.L578:
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
	cmp	r0, #3	@ InstID,
	bhi	.L606	@,
	cmp	r1, #63	@ LogicFrameID,
	bhi	.L607	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r8, .L611	@ tmp138,
	ldr	r3, [r8, r0, asl #2]	@ tmp139, s_pFspInst
	cmp	r3, #0	@ tmp139,
	beq	.L608	@,
	mov	r5, r0	@ InstID, InstID
	add	r0, r8, #68	@, tmp138,
	mov	r4, r2	@ IsWaitDisp, IsWaitDisp
	mov	r6, r1	@ LogicFrameID, LogicFrameID
	clz	r7, r2	@ D.34722, IsWaitDisp
	bl	OSAL_SpinLockIRQ	@
	ldr	r9, [r8, r5, asl #2]	@ pstInst, s_pFspInst
	mov	r3, #432	@ tmp148,
	mov	r7, r7, lsr #5	@ D.34722, D.34722,
	mla	r3, r3, r6, r9	@ tmp149, tmp148, LogicFrameID, pstInst
	add	r2, r3, #96	@ tmp150, tmp149,
	ldrsb	r1, [r3, #98]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	cmp	r1, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	cmpeq	r4, #0	@, IsWaitDisp,
	bne	.L584	@,
	ldr	r3, [r3, #508]	@ D.34717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.34717,
	beq	.L584	@,
	ldrsb	r2, [r2, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	cmp	r2, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState,
	beq	.L584	@,
	ldr	r2, [r8, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	cmp	r2, #0	@ g_IsFrameIntfValid,
	beq	.L584	@,
	ldr	r2, [r8, #60]	@ D.34720, g_FspFrameIntf.ReleaseFrame
	ldr	r1, [r3, #12]	@ D.34718, _15->PhyAddr
	cmp	r2, #0	@ D.34720,
	beq	.L609	@,
	mov	r0, r5	@, InstID
	blx	r2	@ D.34720
.L584:
	mov	r1, #432	@ tmp171,
	cmp	r7, #0	@ D.34722,
	mla	r1, r1, r6, r9	@ tmp172, tmp171, LogicFrameID, pstInst
	movne	r3, #0	@ D.34721,
	moveq	r3, #3	@ D.34721,
	add	ip, r1, #96	@ tmp173, tmp172,
	ldrsb	r0, [ip, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs
	strb	r3, [ip, #1]	@ D.34721, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	cmp	r0, #0	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs,
	bne	.L605	@,
	add	lr, r1, #504	@ tmp183, tmp172,
	ldr	r3, [lr, #4]	@ D.34717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	cmp	r3, #0	@ D.34717,
	beq	.L605	@,
	ldr	r3, [r3, #44]	@ D.34718, _23->u32Tick
	ldr	r2, [r1, #496]	@ D.34718, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].u32Tick
	cmp	r3, r2	@ D.34718, D.34718
	bne	.L610	@,
	cmp	r7, #0	@ D.34722,
	strneb	r0, [ip, #1]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	moveq	r3, #3	@ tmp214,
	ldrne	r3, [lr, #4]	@ D.34717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	streqb	r3, [ip, #1]	@ tmp214, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].s32DispState
	ldreq	r2, [lr, #4]	@ D.34717, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	strneb	r0, [r3, #2]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, _26->DispState
	strne	r0, [lr, #4]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].IsDummyFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_13].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	streqb	r3, [r2, #2]	@ tmp214, _27->DispState
.L605:
	ldr	r0, .L611+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L606:
	ldr	r3, .L611+8	@,
	movw	r2, #2662	@,
	ldr	r1, .L611+12	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L607:
	ldr	r3, .L611+16	@,
	movw	r2, #2663	@,
	ldr	r1, .L611+12	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L610:
	ldr	r1, .L611+20	@,
	bl	dprint_vfmw	@
	ldr	r0, .L611+4	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L608:
	mov	r0, r3	@, tmp139
	movw	r2, #2664	@,
	ldr	r3, .L611+24	@,
	ldr	r1, .L611+12	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L609:
	mov	r0, r2	@, D.34720
	ldr	r1, .L611+28	@,
	bl	dprint_vfmw	@
	b	.L584	@
.L612:
	.align	2
.L611:
	.word	.LANCHOR0
	.word	.LANCHOR0+68
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ InstID, InstID
	bhi	.L625	@,
	cmp	r1, #0	@ pstVoQue,
	mov	r7, r1	@ pstVoQue, pstVoQue
	beq	.L626	@,
	ldr	r3, .L629	@ tmp130,
	ldr	r0, [r3, r0, asl #2]	@ D.34737, s_pFspInst
	cmp	r0, #0	@ D.34737,
	addne	r6, r0, #27648	@ D.34736, D.34737,
	addne	r4, r0, #104	@ ivtmp.515, D.34737,
	addne	r6, r6, #104	@ D.34736, D.34736,
	bne	.L619	@,
	b	.L627	@
.L618:
	add	r4, r4, #432	@ ivtmp.515, ivtmp.515,
	cmp	r4, r6	@ ivtmp.515, D.34736
	beq	.L628	@,
.L619:
	mov	r2, #0	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_15, offset: 176B]
	mov	r0, r5	@, InstID
	bl	FSP_SetRef	@
	mov	r1, r4	@, ivtmp.515
	mov	r0, r7	@, pstVoQue
	bl	IsImageInVoQueue	@
	cmp	r0, #0	@,
	beq	.L618	@,
	ldr	r1, [r4, #176]	@, MEM[base: p_image_15, offset: 176B]
	mov	r2, #0	@,
	mov	r0, r5	@, InstID
	add	r4, r4, #432	@ ivtmp.515, ivtmp.515,
	bl	FSP_SetDisplay	@
	cmp	r4, r6	@ ivtmp.515, D.34736
	bne	.L619	@,
.L628:
	mov	r0, #0	@ D.34735,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L625:
	ldr	r3, .L629+4	@,
	mov	r2, #456	@,
	ldr	r1, .L629+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34735,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L627:
	ldr	r3, .L629+12	@,
	movw	r2, #458	@,
	ldr	r1, .L629+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34735,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L626:
	mov	r0, r1	@, pstVoQue
	ldr	r3, .L629+16	@,
	movw	r2, #457	@,
	ldr	r1, .L629+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34735,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L630:
	.align	2
.L629:
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
	ldr	r3, .L637	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.34745, s_pFspInst
	cmp	r3, #0	@ D.34745,
	beq	.L636	@,
	mov	r0, #432	@ tmp120,
	mla	r1, r0, r1, r3	@ tmp121, tmp120, LogicFrameID, D.34745
	ldrsb	r0, [r1, #97]	@ D.34744, MEM[(struct FSP_LOGIC_FS_S *)_5].stLogicFs[LogicFrameID_7(D)].s32DispState
	bx	lr	@
.L636:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r3	@, D.34745
	movw	r2, #2724	@,
	ldr	r3, .L637+4	@,
	ldr	r1, .L637+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34744,
	ldmfd	sp!, {r4, pc}	@
.L638:
	.align	2
.L637:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L648	@,
	ldr	ip, .L651	@ tmp124,
	ldr	ip, [ip, r0, asl #2]	@ D.34751, s_pFspInst
	cmp	ip, #0	@ D.34751,
	beq	.L649	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L643	@,
	ldrsb	r0, [ip, #10]	@ D.34753, _9->s32DecFsNum
	cmp	r0, r2	@ D.34753, PhyFsID
	ble	.L646	@,
	mov	lr, #52	@ tmp129,
	mov	r0, r1	@ D.34749, ePhyFsType
	mla	r2, lr, r2, ip	@ tmp130, tmp129, PhyFsID, D.34751
	add	r2, r2, #27648	@ tmp132, tmp130,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L643:
	cmp	r1, #1	@ ePhyFsType,
	beq	.L650	@,
.L646:
	mvn	r0, #0	@ D.34749,
	ldmfd	sp!, {r4, pc}	@
.L650:
	ldrsb	r1, [ip, #11]	@ D.34753, _9->s32DispFsNum
	cmp	r2, r1	@ PhyFsID, D.34753
	bge	.L646	@,
	mov	r1, #52	@ tmp135,
	mov	r0, #0	@ D.34749,
	mla	r2, r1, r2, ip	@ tmp136, tmp135, PhyFsID, D.34751
	add	r2, r2, #30976	@ tmp138, tmp136,
	str	r3, [r2, #156]	@ eStoreType,
	ldmfd	sp!, {r4, pc}	@
.L648:
	ldr	r3, .L651+4	@,
	movw	r2, #2740	@,
	ldr	r1, .L651+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34749,
	ldmfd	sp!, {r4, pc}	@
.L649:
	mov	r0, ip	@, D.34751
	ldr	r3, .L651+12	@,
	movw	r2, #2741	@,
	ldr	r1, .L651+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34749,
	ldmfd	sp!, {r4, pc}	@
.L652:
	.align	2
.L651:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L660	@,
	ldr	r3, .L662	@ tmp122,
	ldr	r0, [r3, r0, asl #2]	@ D.34758, s_pFspInst
	cmp	r0, #0	@ D.34758,
	beq	.L661	@,
	cmp	r1, #0	@ ePhyFsType,
	bne	.L658	@,
	ldrsb	r3, [r0, #10]	@ D.34760, _8->s32DecFsNum
	cmp	r3, r2	@ D.34760, PhyFsID
	ble	.L658	@,
	mov	r3, #52	@ tmp127,
	mla	r2, r3, r2, r0	@ tmp128, tmp127, PhyFsID, D.34758
	add	r2, r2, #27648	@ tmp130, tmp128,
	ldr	r0, [r2, #156]	@ D.34756, _8->stDecFs[PhyFsID_13(D)].eStoreType
	ldmfd	sp!, {r4, pc}	@
.L658:
	mov	r0, #2	@ D.34756,
	ldmfd	sp!, {r4, pc}	@
.L660:
	ldr	r3, .L662+4	@,
	movw	r2, #2773	@,
	ldr	r1, .L662+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34756,
	ldmfd	sp!, {r4, pc}	@
.L661:
	ldr	r3, .L662+12	@,
	movw	r2, #2774	@,
	ldr	r1, .L662+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34756,
	ldmfd	sp!, {r4, pc}	@
.L663:
	.align	2
.L662:
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
	cmp	r0, #3	@ InstID,
	cmpls	r1, #63	@, LogicFrameID,
	bxhi	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L676	@ tmp128,
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
.L677:
	.align	2
.L676:
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
	bhi	.L680	@,
	ldr	r3, .L682	@ tmp128,
	ldr	r0, [r3, r0, asl #2]	@ D.34772, s_pFspInst
	cmp	r0, #0	@ D.34772,
	movne	r3, #432	@ tmp130,
	mlane	r1, r3, r1, r0	@ tmp131, tmp130, LogicFrameID, D.34772
	addne	r0, r1, #96	@ D.34769, tmp131,
	bx	lr	@
.L680:
	mov	r0, r3	@ D.34769, tmp127
	bx	lr	@
.L683:
	.align	2
.L682:
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
	bhi	.L686	@,
	ldr	r3, .L688	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.34778, s_pFspInst
	cmp	r0, #0	@ D.34778,
	movne	r3, #432	@ tmp129,
	mlane	r1, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.34778
	addne	r0, r1, #104	@ D.34775, tmp130,
	bx	lr	@
.L686:
	mov	r0, r3	@ D.34775, tmp126
	bx	lr	@
.L689:
	.align	2
.L688:
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
	bhi	.L692	@,
	ldr	r3, .L694	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.34784, s_pFspInst
	cmp	r0, #0	@ D.34784,
	movne	r3, #432	@ tmp129,
	mlane	r0, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.34784
	ldrne	r0, [r0, #508]	@ D.34781, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_5(D)].pstDispOutFs
	bx	lr	@
.L692:
	mov	r0, r3	@ D.34781, tmp126
	bx	lr	@
.L695:
	.align	2
.L694:
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
	bhi	.L698	@,
	ldr	r3, .L700	@ tmp127,
	ldr	r0, [r3, r0, asl #2]	@ D.34790, s_pFspInst
	cmp	r0, #0	@ D.34790,
	movne	r3, #432	@ tmp129,
	mlane	r0, r3, r1, r0	@ tmp130, tmp129, LogicFrameID, D.34790
	ldrne	r0, [r0, #516]	@ D.34787, MEM[(struct FSP_LOGIC_FS_S *)_10].stLogicFs[LogicFrameID_5(D)].PmvAddr
	bx	lr	@
.L698:
	mov	r0, r3	@ D.34787, tmp126
	bx	lr	@
.L701:
	.align	2
.L700:
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
	bhi	.L713	@,
	cmp	r2, #0	@ DecFsAddrTab,
	beq	.L714	@,
	cmp	r1, #0	@ DecFsNum,
	beq	.L715	@,
	ldr	r3, .L717	@ tmp135,
	ldr	ip, [r3, r0, asl #2]	@ tmp136, s_pFspInst
	cmp	ip, #0	@ tmp136,
	beq	.L716	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	ip, #0	@ tmp139,
	str	ip, [r1]	@ tmp139, *DecFsNum_10(D)
	ldr	lr, [r3, r0, asl #2]	@ tmp141, s_pFspInst
	ldrsb	lr, [lr, #10]	@ D.34807, _15->s32DecFsNum
	cmp	lr, ip	@ D.34807,
	str	lr, [r1]	@ D.34807, *DecFsNum_10(D)
	ldr	r3, [r3, r0, asl #2]	@ tmp144, s_pFspInst
	add	r3, r3, #27648	@ pstDecFs, tmp144,
	add	r3, r3, #148	@ pstDecFs, pstDecFs,
	ldrle	pc, [sp], #4	@
	sub	r2, r2, #4	@ ivtmp.540, DecFsAddrTab,
.L709:
	ldr	lr, [r3, #12]	@ D.34807, MEM[base: _35, offset: 12B]
	add	ip, ip, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.538, ivtmp.538,
	str	lr, [r2, #4]!	@ D.34807, MEM[base: _39, offset: 0B]
	ldr	lr, [r1]	@ *DecFsNum_10(D), *DecFsNum_10(D)
	cmp	lr, ip	@ *DecFsNum_10(D), i
	bgt	.L709	@,
	ldr	pc, [sp], #4	@
.L713:
	ldr	r3, .L717+4	@,
	movw	r2, #2930	@,
	ldr	r1, .L717+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L714:
	mov	r0, r2	@, DecFsAddrTab
	ldr	r3, .L717+12	@,
	movw	r2, #2931	@,
	ldr	r1, .L717+8	@,
	b	dprint_vfmw	@
.L715:
	mov	r0, r1	@, DecFsNum
	ldr	r3, .L717+16	@,
	movw	r2, #2932	@,
	ldr	r1, .L717+8	@,
	b	dprint_vfmw	@
.L716:
	mov	r0, ip	@, tmp136
	ldr	r3, .L717+20	@,
	movw	r2, #2933	@,
	ldr	r1, .L717+8	@,
	b	dprint_vfmw	@
.L718:
	.align	2
.L717:
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
	cmp	r0, #3	@ InstID,
	bhi	.L729	@,
	cmp	r2, #0	@ PmvAddrTab,
	beq	.L730	@,
	cmp	r1, #0	@ PmvNum,
	beq	.L731	@,
	ldr	r3, .L733	@ tmp134,
	ldr	r0, [r3, r0, asl #2]	@ D.34832, s_pFspInst
	cmp	r0, #0	@ D.34832,
	beq	.L732	@,
	ldrsb	r3, [r0, #13]	@ _12->s32PmvNum, _12->s32PmvNum
	str	r3, [r1]	@ _12->s32PmvNum, *PmvNum_10(D)
	ldrsb	r3, [r0, #13]	@ _12->s32PmvNum, _12->s32PmvNum
	cmp	r3, #0	@ _12->s32PmvNum,
	bxle	lr	@
	add	r1, r0, #34304	@ ivtmp.550, D.34832,
	sub	r2, r2, #4	@ ivtmp.559, PmvAddrTab,
	add	r1, r1, #252	@ ivtmp.550, ivtmp.550,
	mov	r3, #0	@ i,
.L726:
	ldr	ip, [r1, #4]!	@ D.34834, MEM[base: _35, offset: 0B]
	add	r3, r3, #1	@ i, i,
	str	ip, [r2, #4]!	@ D.34834, MEM[base: _36, offset: 0B]
	ldrsb	ip, [r0, #13]	@ D.34834, _12->s32PmvNum
	cmp	ip, r3	@ D.34834, i
	bgt	.L726	@,
	bx	lr	@
.L729:
	ldr	r3, .L733+4	@,
	movw	r2, #2963	@,
	ldr	r1, .L733+8	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L730:
	mov	r0, r2	@, PmvAddrTab
	ldr	r3, .L733+12	@,
	movw	r2, #2964	@,
	ldr	r1, .L733+8	@,
	b	dprint_vfmw	@
.L731:
	mov	r0, r1	@, PmvNum
	ldr	r3, .L733+16	@,
	movw	r2, #2965	@,
	ldr	r1, .L733+8	@,
	b	dprint_vfmw	@
.L732:
	ldr	r3, .L733+20	@,
	movw	r2, #2966	@,
	ldr	r1, .L733+8	@,
	b	dprint_vfmw	@
.L734:
	.align	2
.L733:
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
	ldr	r3, .L739	@ tmp123,
	ldr	r3, [r3, r0, asl #2]	@ D.34840, s_pFspInst
	cmp	r3, #0	@ D.34840,
	beq	.L738	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #24576	@ tmp128, D.34840,
	ldrb	lr, [r3, #10]	@ zero_extendqisi2	@ D.34841, _4->s32DecFsNum
	mov	ip, r1	@ pFspInstInfo, pFspInstInfo
	mov	r0, r1	@ tmp138, pFspInstInfo
	add	r1, r3, #27648	@, D.34840,
	add	r1, r1, #148	@,,
	mov	r2, #3328	@,
	strb	lr, [ip, #1]	@ D.34841, pFspInstInfo_7(D)->s32DecFsNum
	ldr	lr, [r4, #3284]	@ _4->stDecFs[1].PhyAddr, _4->stDecFs[1].PhyAddr
	ldr	r4, [r4, #3232]	@ _4->stDecFs[0].PhyAddr, _4->stDecFs[0].PhyAddr
	rsb	lr, r4, lr	@ D.34842, _4->stDecFs[0].PhyAddr, _4->stDecFs[1].PhyAddr
	str	lr, [ip, #3336]	@ D.34842, pFspInstInfo_7(D)->s32DecFsSize
	ldrb	lr, [r3, #11]	@ zero_extendqisi2	@ D.34841, _4->s32DispFsNum
	strb	lr, [ip, #2]	@ D.34841, pFspInstInfo_7(D)->s32DispFsNum
	ldrb	lr, [r3, #12]	@ zero_extendqisi2	@ D.34841, _4->s32TfFsNum
	strb	lr, [ip, #3]	@ D.34841, pFspInstInfo_7(D)->s32TfFsNum
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.34841, _4->s32InstID
	strb	lr, [ip, #4]	@ D.34841, pFspInstInfo_7(D)->s32InstID
	ldrb	r3, [r3, #13]	@ zero_extendqisi2	@ D.34841, _4->s32PmvNum
	strb	r3, [r0], #8	@ D.34841, pFspInstInfo_7(D)->s32PmvNum
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L738:
	mov	r0, r3	@, D.34840
	movw	r2, #2983	@,
	ldr	r3, .L739+4	@,
	ldr	r1, .L739+8	@,
	b	dprint_vfmw	@
.L740:
	.align	2
.L739:
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
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L753	@,
	ldr	r3, .L755	@ tmp123,
	ldr	r0, [r3, r0, asl #2]	@ D.34859, s_pFspInst
	cmp	r0, #0	@ D.34859,
	movne	r3, r0	@ ivtmp.574, D.34859
	movne	r0, #0	@ i,
	beq	.L754	@,
.L746:
	ldr	r2, [r3, #504]	@ D.34860, MEM[base: _20, offset: 504B]
	add	r3, r3, #432	@ ivtmp.574, ivtmp.574,
	cmp	r2, #0	@ D.34860,
	beq	.L745	@,
	ldr	r2, [r2, #12]	@ _11->PhyAddr, _11->PhyAddr
	cmp	r2, r1	@ _11->PhyAddr, PhyAddr
	ldmeqfd	sp!, {r4, pc}	@
.L745:
	add	r0, r0, #1	@ i, i,
	cmp	r0, #64	@ i,
	bne	.L746	@,
	mvn	r0, #0	@ D.34857,
	ldmfd	sp!, {r4, pc}	@
.L753:
	ldr	r3, .L755+4	@,
	movw	r2, #3004	@,
	ldr	r1, .L755+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34857,
	ldmfd	sp!, {r4, pc}	@
.L754:
	ldr	r3, .L755+12	@,
	movw	r2, #3005	@,
	ldr	r1, .L755+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34857,
	ldmfd	sp!, {r4, pc}	@
.L756:
	.align	2
.L755:
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
	cmp	r0, #3	@ InstID,
	bhi	.L789	@,
	ldr	r3, .L792	@ tmp192,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r7, [r3, r0, asl #2]	@ D.34896, s_pFspInst
	cmp	r7, #0	@ D.34896,
	beq	.L790	@,
	ldr	r1, .L792+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #4]	@, _18->eFspInstState
	ldr	r2, .L792+8	@,
	mov	r0, #0	@,
	ldr	r1, .L792+12	@,
	mov	r5, r7	@ ivtmp.603, D.34896
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #60]	@, _18->stInstCfg.s32DispLoopEnable
	ldr	r2, .L792+16	@,
	mov	r0, #0	@,
	ldr	r1, .L792+12	@,
	mov	r6, #1	@ ivtmp.600,
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	mov	r4, r0	@ ivtmp.599,
	ldrsb	r3, [r7, #61]	@, _18->stInstCfg.s32TfEnable
	ldr	r2, .L792+20	@,
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #62]	@, _18->stInstCfg.s32RprEnable
	ldr	r2, .L792+24	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #72]	@, _18->stInstCfg.s32DecFsWidth
	ldr	r2, .L792+28	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #76]	@, _18->stInstCfg.s32DecFsHeight
	ldr	r2, .L792+32	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #88]	@, _18->stInstCfg.s32DispFsWidth
	ldr	r2, .L792+36	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r7, #92]	@, _18->stInstCfg.s32DispFsHeight
	ldr	r2, .L792+40	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #65]	@, _18->stInstCfg.s32ExpectedDecFsNum
	ldr	r2, .L792+44	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #66]	@, _18->stInstCfg.s32ExpectedTfFsNum
	ldr	r2, .L792+48	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #67]	@, _18->stInstCfg.s32ExpectedDispFsNum
	ldr	r2, .L792+52	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #68]	@, _18->stInstCfg.s32ExpectedPmvNum
	ldr	r2, .L792+56	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@, _18->s32DecFsNum
	ldr	r2, .L792+60	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@, _18->s32DispFsNum
	ldr	r2, .L792+64	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #12]	@, _18->s32TfFsNum
	ldr	r2, .L792+68	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@, _18->s32PmvNum
	ldr	r2, .L792+72	@,
	mov	r0, r4	@, ivtmp.599
	ldr	r1, .L792+12	@,
	bl	dprint_vfmw	@
	ldr	r1, .L792+76	@,
	mov	r0, r4	@, ivtmp.599
	bl	dprint_vfmw	@
	b	.L760	@
.L762:
	ldrsb	r3, [r5, #97]	@, MEM[base: _146, offset: 97B]
	mov	r0, #0	@,
	ldrsb	r2, [r5, #96]	@, MEM[base: _146, offset: 96B]
	ldr	r1, .L792+80	@,
	bl	dprint_vfmw	@
	cmp	r6, #63	@ ivtmp.600,
	bgt	.L791	@,
.L763:
	add	r4, r4, #1	@ ivtmp.599, ivtmp.599,
	add	r6, r6, #1	@ ivtmp.600, ivtmp.600,
	add	r5, r5, #432	@ ivtmp.603, ivtmp.603,
.L760:
	cmp	r4, #0	@ ivtmp.599,
	beq	.L761	@,
	ands	r0, r4, #7	@ D.34894, ivtmp.599,
	bne	.L762	@,
	ldr	r1, .L792+84	@,
	bl	dprint_vfmw	@
	b	.L762	@
.L791:
	ldr	r1, .L792+88	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@ _18->s32DecFsNum, _18->s32DecFsNum
	cmp	r3, #0	@ _18->s32DecFsNum,
	addgt	r5, r7, #27648	@ ivtmp.595, D.34896,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #148	@ ivtmp.595, ivtmp.595,
	ble	.L770	@,
.L767:
	ldrsb	r3, [r5, #2]	@, MEM[base: _106, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [r5]	@, MEM[base: _106, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r1, .L792+80	@,
	add	r5, r5, #52	@ ivtmp.595, ivtmp.595,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #10]	@ D.34894, _18->s32DecFsNum
	cmp	r3, r4	@ D.34894, i
	ble	.L770	@,
	cmp	r4, #0	@ i,
	beq	.L767	@,
	ands	r0, r4, #7	@ D.34894, i,
	bne	.L767	@,
	ldr	r1, .L792+84	@,
	bl	dprint_vfmw	@
	b	.L767	@
.L770:
	ldr	r1, .L792+92	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@ _18->s32DispFsNum, _18->s32DispFsNum
	cmp	r3, #0	@ _18->s32DispFsNum,
	addgt	r5, r7, #30976	@ ivtmp.589, D.34896,
	movgt	r4, #0	@ i,
	addgt	r5, r5, #148	@ ivtmp.589, ivtmp.589,
	ble	.L766	@,
.L773:
	ldrsb	r3, [r5, #2]	@, MEM[base: _122, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [r5]	@, MEM[base: _122, offset: 0B]
	add	r4, r4, #1	@ i, i,
	ldr	r1, .L792+80	@,
	add	r5, r5, #52	@ ivtmp.589, ivtmp.589,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #11]	@ D.34894, _18->s32DispFsNum
	cmp	r3, r4	@ D.34894, i
	ble	.L766	@,
	cmp	r4, #0	@ i,
	beq	.L773	@,
	ands	r0, r4, #7	@ D.34894, i,
	bne	.L773	@,
	ldr	r1, .L792+84	@,
	bl	dprint_vfmw	@
	b	.L773	@
.L766:
	ldr	r1, .L792+96	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@ _18->s32PmvNum, _18->s32PmvNum
	cmp	r3, #0	@ _18->s32PmvNum,
	addgt	r5, r7, #13	@ ivtmp.580, D.34896,
	movgt	r4, #0	@ i,
	ble	.L772	@,
.L776:
	ldrsb	r2, [r5, #1]!	@, MEM[base: _131, offset: 0B]
	mov	r0, #0	@,
	ldr	r1, .L792+100	@,
	add	r4, r4, #1	@ i, i,
	bl	dprint_vfmw	@
	ldrsb	r3, [r7, #13]	@ D.34894, _18->s32PmvNum
	cmp	r3, r4	@ D.34894, i
	ble	.L772	@,
	cmp	r4, #0	@ i,
	beq	.L776	@,
	ands	r0, r4, #15	@ D.34894, i,
	bne	.L776	@,
	ldr	r1, .L792+84	@,
	bl	dprint_vfmw	@
	b	.L776	@
.L772:
	ldr	r1, .L792+104	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L789:
	ldr	r3, .L792+108	@,
	movw	r2, #3036	@,
	ldr	r1, .L792+112	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L790:
	mov	r0, r7	@, D.34896
	ldr	r3, .L792+116	@,
	movw	r2, #3037	@,
	ldr	r1, .L792+112	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L761:
	ldrsb	r3, [r5, #97]	@, MEM[base: _141, offset: 97B]
	mov	r0, r4	@, ivtmp.599
	ldrsb	r2, [r5, #96]	@, MEM[base: _141, offset: 96B]
	ldr	r1, .L792+80	@,
	bl	dprint_vfmw	@
	b	.L763	@
.L793:
	.align	2
.L792:
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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ InstID, InstID
	.pad #60
	sub	sp, sp, #60	@,,
	bhi	.L866	@,
	ldr	r8, .L876	@ tmp649,
	ldr	r0, [r8, r0, asl #2]	@ tmp293, s_pFspInst
	cmp	r0, #0	@ tmp293,
	beq	.L867	@,
	ldr	r7, .L876+4	@ tmp648,
	add	r0, r8, #68	@, tmp649,
	mov	r9, r1	@ NeedPhyFs, NeedPhyFs
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r8, r6, asl #2]	@ pstInst, s_pFspInst
	mov	r4, #0	@ i,
	ldr	r1, [r7, r6, asl #2]	@ D.35000, s_pstVfmwChan
	mov	r3, r5	@ ivtmp.664, pstInst
	ldr	r0, [r1, #1580]	@ D.34992, _75->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	b	.L801	@
.L798:
	ldrsb	r2, [r3, #96]	@ MEM[base: _335, offset: 96B], MEM[base: _335, offset: 96B]
	cmp	r2, #0	@ MEM[base: _335, offset: 96B],
	bne	.L799	@,
	ldrsb	r2, [r3, #97]	@ MEM[base: _335, offset: 97B], MEM[base: _335, offset: 97B]
	cmp	r2, #0	@ MEM[base: _335, offset: 97B],
	beq	.L868	@,
.L799:
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.664, ivtmp.664,
	cmp	r4, #64	@ i,
	beq	.L802	@,
.L801:
	cmp	r0, #1	@ D.34992,
	bne	.L798	@,
	mov	r2, r4, asl #4	@ D.34996, i,
	add	r2, r2, #209920	@ D.34996, D.34996,
	add	r2, r2, #824	@ D.34996, D.34996,
	ldr	r2, [r1, r2]	@ MEM[base: _339, offset: 0B], MEM[base: _339, offset: 0B]
	cmp	r2, #0	@ MEM[base: _339, offset: 0B],
	beq	.L798	@,
	add	r4, r4, #1	@ i, i,
	add	r3, r3, #432	@ ivtmp.664, ivtmp.664,
	cmp	r4, #64	@ i,
	bne	.L801	@,
.L802:
	ldr	r1, .L876+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r0, .L876+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34992,
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L868:
	mov	r10, #432	@ tmp307,
	mul	r10, r10, r4	@ tmp306, tmp307, i
	add	r3, r5, r10	@ tmp311, pstInst, tmp306
	add	r10, r10, #96	@ tmp308, tmp306,
	add	ip, r3, #96	@ tmp312, tmp311,
	adds	r10, r5, r10	@ pstLogicFs, pstInst, tmp308
	strb	r4, [ip, #3]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32LogicFsID
	strb	r2, [ip, #2]	@ MEM[base: _335, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].IsDummyFs
	beq	.L802	@,
	add	r0, r3, #504	@ tmp326, tmp311,
	add	lr, r3, #512	@ tmp336, tmp311,
	cmp	r9, #0	@ NeedPhyFs,
	str	r2, [r3, #504]	@ MEM[base: _335, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	str	r2, [r0, #4]	@ MEM[base: _335, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	str	r2, [r3, #512]	@ MEM[base: _335, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstTfOutFs
	str	r2, [lr, #4]	@ MEM[base: _335, offset: 97B], MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	beq	.L803	@,
	ldrsb	ip, [r5, #10]	@ D.34999, pstInst_28->s32DecFsNum
	cmp	ip, #0	@ D.34999,
	addgt	r3, r5, #27648	@ ivtmp.650, pstInst,
	ldrgt	lr, [r1, #1580]	@ D.34992, _75->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	addgt	r3, r3, #148	@ ivtmp.650, ivtmp.650,
	bgt	.L809	@,
	b	.L859	@
.L807:
	ldrsb	r0, [r3]	@ MEM[base: _326, offset: 0B], MEM[base: _326, offset: 0B]
	cmp	r0, #0	@ MEM[base: _326, offset: 0B],
	bne	.L808	@,
	ldrsb	r0, [r3, #2]	@ MEM[base: _326, offset: 2B], MEM[base: _326, offset: 2B]
	cmp	r0, #0	@ MEM[base: _326, offset: 2B],
	beq	.L869	@,
.L808:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.650, ivtmp.650,
	cmp	r2, ip	@ i, D.34999
	beq	.L870	@,
.L809:
	cmp	lr, #1	@ D.34992,
	bne	.L807	@,
	mov	r0, r2, asl #4	@ D.34996, i,
	add	r0, r0, #209920	@ D.34996, D.34996,
	add	r0, r0, #824	@ D.34996, D.34996,
	ldr	r0, [r1, r0]	@ MEM[base: _330, offset: 0B], MEM[base: _330, offset: 0B]
	cmp	r0, #0	@ MEM[base: _330, offset: 0B],
	beq	.L807	@,
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.650, ivtmp.650,
	cmp	r2, ip	@ i, D.34999
	bne	.L809	@,
.L870:
	mov	r3, #432	@ tmp398,
	mla	r3, r3, r4, r5	@ tmp399, tmp398, i, pstInst
.L859:
	ldr	r9, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
.L805:
	cmp	r9, #0	@ D.34990,
	beq	.L871	@,
.L810:
	mov	r3, #432	@ tmp420,
	add	r2, r5, #34304	@ D.34990, pstInst,
	mla	r3, r3, r4, r5	@ tmp421, tmp420, i, pstInst
	add	r2, r2, #148	@ D.34990, D.34990,
	add	r0, r3, #512	@ tmp422, tmp421,
	str	r2, [r3, #512]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstTfOutFs
	ldrsb	r1, [r5, #13]	@ D.34996, pstInst_28->s32PmvNum
	cmp	r1, #0	@ D.34996,
	ble	.L818	@,
	ldrsb	r2, [r5, #14]	@ pstInst_28->IsPmvInUse, pstInst_28->IsPmvInUse
	cmp	r2, #0	@ pstInst_28->IsPmvInUse,
	addne	r2, r5, #14	@ ivtmp.629, pstInst,
	movne	r3, #0	@ i,
	bne	.L822	@,
	b	.L872	@
.L825:
	ldrsb	r0, [r2, #1]!	@ MEM[base: _287, offset: 0B], MEM[base: _287, offset: 0B]
	cmp	r0, #0	@ MEM[base: _287, offset: 0B],
	beq	.L873	@,
.L822:
	add	r3, r3, #1	@ i, i,
	cmp	r3, r1	@ i, D.34996
	bne	.L825	@,
	add	ip, r5, #32768	@ tmp650, pstInst,
	cmp	r1, #0	@ D.34996,
	ldr	lr, [ip, #1788]	@ D.34992, pstInst_28->s32HalfPmvOffset
	ble	.L827	@,
.L823:
	add	r2, r1, #13	@ D.34996, D.34996,
	add	r3, r5, #13	@ ivtmp.619, pstInst,
	add	r2, r5, r2	@ D.34994, pstInst, D.34996
	mov	r1, #0	@ tmp655,
.L826:
	strb	r1, [r3, #1]!	@ tmp655, MEM[base: _288, offset: 0B]
	cmp	r3, r2	@ ivtmp.619, D.34994
	bne	.L826	@,
.L827:
	mov	r3, #432	@ tmp446,
	mov	r2, #0	@ tmp449,
	mla	r3, r3, r4, r5	@ tmp447, tmp446, i, pstInst
	mov	r0, r2	@, tmp449
	ldr	r1, .L876+16	@,
	strb	r2, [r3, #100]	@ tmp449, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvIdc
	ldr	r2, [ip, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	lr, [r3, #520]	@ D.34992, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].HalfPmvOffset
	str	r2, [r3, #516]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	bl	dprint_vfmw	@
.L818:
	ldrsb	r3, [r5, #60]	@ pstInst_28->stInstCfg.s32DispLoopEnable, pstInst_28->stInstCfg.s32DispLoopEnable
	cmp	r3, #0	@ pstInst_28->stInstCfg.s32DispLoopEnable,
	beq	.L828	@,
	ldrsb	r0, [r5, #11]	@ D.34999, pstInst_28->s32DispFsNum
	cmp	r0, #0	@ D.34999,
	ble	.L860	@,
	add	r3, r5, #30976	@ D.34990, pstInst,
	add	r3, r3, #148	@ D.34990, D.34990,
	cmp	r3, #0	@ D.34990,
	beq	.L842	@,
	rsb	ip, r3, #30976	@ D.34996, ivtmp.614,
	mov	r9, r3	@ D.34990, ivtmp.614
	add	ip, ip, #200	@ D.34996, D.34996,
	mov	r1, #0	@ i,
	b	.L832	@
.L835:
	cmp	r3, #0	@ ivtmp.614,
	mov	r9, r3	@ D.34990, ivtmp.614
	beq	.L831	@,
	mov	r9, r2	@ D.34990, D.34995
.L832:
	ldrsb	lr, [r3, #2]	@ MEM[base: _3, offset: 2B], MEM[base: _3, offset: 2B]
	add	r2, r9, ip	@ D.34996, D.34990, D.34996
	add	r1, r1, #1	@ i, i,
	add	r2, r5, r2	@ D.34995, pstInst, D.34996
	cmp	lr, #0	@ MEM[base: _3, offset: 2B],
	bne	.L834	@,
	ldrsb	lr, [r3]	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	lr, #0	@ MEM[base: _3, offset: 0B],
	bne	.L834	@,
	ldrsb	lr, [r3, #1]	@ MEM[base: _3, offset: 1B], MEM[base: _3, offset: 1B]
	cmp	lr, #0	@ MEM[base: _3, offset: 1B],
	beq	.L831	@,
.L834:
	cmp	r1, r0	@ i, D.34999
	add	r3, r3, #52	@ ivtmp.614, ivtmp.614,
	bne	.L835	@,
.L860:
	mov	r3, #432	@ tmp493,
	mla	r3, r3, r4, r5	@ tmp494, tmp493, i, pstInst
	ldr	r9, [r3, #508]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
.L830:
	cmp	r9, #0	@ D.34990,
	bne	.L833	@,
	ldr	r1, .L876+20	@,
	mov	r0, r9	@, D.34990
	bl	dprint_vfmw	@
	add	r3, sp, #24	@,,
	add	r2, sp, #28	@,,
	add	r1, sp, #20	@,,
	mov	r0, r6	@, InstID
	str	r9, [sp, #24]	@ D.34990, NewNum
	str	r9, [sp, #28]	@ D.34990, ReadNum
	str	r9, [sp, #20]	@ D.34990, RefNum
	bl	VCTRL_GetChanImgNum	@
	ldr	r2, [sp, #20]	@ RefNum, RefNum
	ldr	r3, [sp, #28]	@ ReadNum, ReadNum
	ldr	r1, [sp, #24]	@ NewNum, NewNum
	add	r3, r2, r3	@ D.34999, RefNum, ReadNum
	ldrsb	r2, [r5, #11]	@ D.34999, pstInst_28->s32DispFsNum
	add	r3, r3, r1	@ D.34999, D.34999, NewNum
	add	r3, r3, #2	@ D.34999, D.34999,
	cmp	r3, r2	@ D.34999, D.34999
	bge	.L836	@,
	ldr	r1, .L876+24	@,
	mov	r0, r9	@, D.34990
	bl	dprint_vfmw	@
	ldrsb	r1, [r5, #11]	@ pstInst_28->s32DispFsNum, pstInst_28->s32DispFsNum
	ldr	ip, [sp, #24]	@ NewNum, NewNum
	mov	r0, r9	@, D.34990
	ldr	r3, [sp, #28]	@ ReadNum, ReadNum
	str	r1, [sp, #4]	@ pstInst_28->s32DispFsNum,
	ldr	r2, [sp, #20]	@ RefNum, RefNum
	ldr	r1, .L876+28	@,
	str	ip, [sp]	@ NewNum,
	bl	dprint_vfmw	@
	mov	r0, r6	@, InstID
	bl	FSP_PrintContext	@
.L836:
	ldr	r0, .L876+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34992,
	b	.L855	@
.L803:
	add	r1, r5, #32768	@ tmp365, pstInst,
	add	r2, r5, #27648	@ D.34990, pstInst,
	add	r2, r2, #96	@ D.34990, D.34990,
	str	r2, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	str	r2, [r0, #4]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	mov	r0, #1	@ tmp379,
	str	r2, [r3, #512]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstTfOutFs
	ldr	r3, [r1, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	r3, [lr, #4]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ pstInst_28->s32PmvNum, pstInst_28->s32PmvNum
	strb	r0, [ip, #2]	@ tmp379, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].IsDummyFs
	sub	r3, r3, #1	@ tmp373, pstInst_28->s32PmvNum,
	strb	r3, [ip, #4]	@ tmp373, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvIdc
.L806:
	mov	r0, #432	@ tmp539,
	mov	r2, #1	@ tmp542,
	mul	r4, r0, r4	@ tmp538, tmp539, i
	mov	r1, #392	@,
	add	r3, r5, r4	@ tmp540, pstInst, tmp538
	add	r0, r4, #104	@ tmp587, tmp538,
	add	r8, r3, #96	@ tmp541, tmp540,
	add	r0, r5, r0	@, pstInst, tmp587
	ldr	lr, [r3, #508]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	strb	r2, [r3, #97]	@ tmp542, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32DispState
	strb	r2, [lr, #2]	@ tmp542, _152->DispState
	str	r2, [r3, #500]	@ tmp542, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].eLfsPmvState
	ldr	lr, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	ldr	r2, [r5, #36]	@ D.35002, pstInst_28->u32InstTick
	str	r2, [r3, #496]	@ D.35002, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].u32Tick
	str	r2, [lr, #44]	@ D.35002, _157->u32Tick
	ldr	lr, [r3, #496]	@ D.35002, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].u32Tick
	ldr	r2, [r3, #508]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	str	lr, [r2, #44]	@ D.35002, _160->u32Tick
	ldr	r2, [r5, #36]	@ pstInst_28->u32InstTick, pstInst_28->u32InstTick
	add	r2, r2, #1	@ D.35002, pstInst_28->u32InstTick,
	str	r2, [r5, #36]	@ D.35002, pstInst_28->u32InstTick
	ldr	r4, [r3, #508]	@ pstDispFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	ldr	r5, [r3, #504]	@ pstDecFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	ldr	r9, [r3, #512]	@ pstTfFs, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstTfOutFs
	bl	__memzero	@
	ldrsb	r3, [r8, #3]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32LogicFsID, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32LogicFsID
	str	r3, [r10, #184]	@ MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32LogicFsID, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_id
	ldr	r3, [r5, #24]	@ pstDecFs_166->FsWidth, pstDecFs_166->FsWidth
	str	r3, [r10, #152]	@ pstDecFs_166->FsWidth, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_width
	ldr	r3, [r5, #28]	@ pstDecFs_166->FsHeight, pstDecFs_166->FsHeight
	str	r3, [r10, #156]	@ pstDecFs_166->FsHeight, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_height
	ldr	r3, [r4, #20]	@ pstDispFs_167->Stride, pstDispFs_167->Stride
	str	r3, [r10, #180]	@ pstDispFs_167->Stride, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].image_stride
	ldr	r2, [r5, #12]	@ D.34999, pstDecFs_166->PhyAddr
	str	r2, [r10, #112]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_phy_addr
	mov	r0, r2	@, D.34999
	ldr	r3, [r5, #32]	@ pstDecFs_166->ChromOffset, pstDecFs_166->ChromOffset
	add	r3, r3, r2	@ D.35002, pstDecFs_166->ChromOffset, D.34999
	str	r3, [r10, #116]	@ D.35002, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #40]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_vir_addr
	ldr	r0, [r10, #116]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #44]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_vir_addr
	ldr	r2, [r4, #12]	@ D.34999, pstDispFs_167->PhyAddr
	str	r2, [r10, #96]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].top_luma_phy_addr
	ldr	r3, [r4, #32]	@ pstDispFs_167->ChromOffset, pstDispFs_167->ChromOffset
	add	r3, r2, r3	@ D.34999, D.34999, pstDispFs_167->ChromOffset
	str	r3, [r10, #100]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].top_chrom_phy_addr
	ldr	r1, [r4, #20]	@ pstDispFs_167->Stride, pstDispFs_167->Stride
	add	r2, r2, r1	@ D.34999, D.34999, pstDispFs_167->Stride
	str	r2, [r10, #104]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].btm_luma_phy_addr
	ldr	r2, [r4, #20]	@ pstDispFs_167->Stride, pstDispFs_167->Stride
	add	r3, r3, r2	@ D.34999, D.34999, pstDispFs_167->Stride
	str	r3, [r10, #108]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].btm_chrom_phy_addr
	ldr	r2, [r4, #12]	@ D.34999, pstDispFs_167->PhyAddr
	str	r2, [r10, #128]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_2d_phy_addr
	mov	r0, r2	@, D.34999
	ldr	r3, [r4, #32]	@ pstDispFs_167->ChromOffset, pstDispFs_167->ChromOffset
	add	r3, r3, r2	@ D.35002, pstDispFs_167->ChromOffset, D.34999
	str	r3, [r10, #132]	@ D.35002, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #56]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_2d_vir_addr
	ldr	r0, [r10, #132]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #60]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_2d_vir_addr
	ldr	r2, [r9, #12]	@ D.34999, pstTfFs_168->PhyAddr
	str	r2, [r10, #120]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_tf_phy_addr
	mov	r0, r2	@, D.34999
	ldr	r3, [r5, #32]	@ pstDecFs_166->ChromOffset, pstDecFs_166->ChromOffset
	add	r3, r3, r2	@ D.35002, pstDecFs_166->ChromOffset, D.34999
	str	r3, [r10, #124]	@ D.35002, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r10, #48]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].luma_tf_vir_addr
	ldr	r0, [r10, #124]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, r6, asl #2]	@ tmp616, s_pstVfmwChan
	mov	r3, #0	@ tmp611,
	add	r2, r2, #208896	@ tmp618, tmp616,
	str	r0, [r10, #52]	@, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].chrom_tf_vir_addr
	ldr	r1, [r5, #48]	@ D.34999, pstDecFs_166->ImgSize
	str	r3, [r10, #384]	@ tmp611, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32IsLastFrame
	str	r3, [r10, #372]	@ tmp611, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32Is1D
	str	r1, [r10, #368]	@ D.34999, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].ImgSize
	str	r3, [r10, #376]	@ tmp611, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].is_processed_by_dnr
	str	r3, [r10, #380]	@ tmp611, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32Circumrotate
	ldr	r3, [r2, #2932]	@ D.35002, _248->u32ChanTick
	ldr	r0, .L876+12	@,
	str	r3, [r10, #392]	@ D.35002, MEM[(struct IMAGE *)pstLogicFs_35 + 8B].u32ChanTick
	bl	OSAL_SpinUnLockIRQ	@
	ldrsb	r0, [r8, #3]	@ D.34992, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].s32LogicFsID
.L855:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L828:
	mov	r3, #432	@ tmp475,
	mla	r3, r3, r4, r5	@ tmp476, tmp475, i, pstInst
	ldr	r2, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	str	r2, [r3, #508]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
.L833:
	ldr	r3, [r8, #48]	@ g_IsFrameIntfValid, g_IsFrameIntfValid
	ldr	r8, .L876	@ tmp518,
	cmp	r3, #0	@ g_IsFrameIntfValid,
	beq	.L806	@,
	ldr	r3, [r8, #56]	@ D.35003, g_FspFrameIntf.AllocFrame
	cmp	r3, #0	@ D.35003,
	beq	.L874	@,
	add	r1, sp, #28	@,,
	mov	r0, r6	@, InstID
	blx	r3	@ D.35003
	cmp	r0, #0	@,
	bne	.L838	@,
	ldr	r9, [sp, #28]	@ D.34999, stInfo.stFrameInfo.PhyAddr
	cmp	r9, #0	@ D.34999,
	beq	.L875	@,
	mov	r3, #432	@ tmp530,
	mla	r3, r3, r4, r5	@ tmp531, tmp530, i, pstInst
	ldr	r2, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	str	r9, [r2, #12]	@ D.34999, _135->PhyAddr
	ldr	r2, [sp, #44]	@ stInfo.stPmvInfo.PhyAddr, stInfo.stPmvInfo.PhyAddr
	str	r2, [r3, #516]	@ stInfo.stPmvInfo.PhyAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	b	.L806	@
.L873:
	mov	r2, #432	@ tmp429,
	add	r0, r3, #8640	@ tmp437, i,
	mla	r2, r2, r4, r5	@ tmp430, tmp429, i, pstInst
	cmp	r3, r1	@ i, D.34996
	add	ip, r5, #32768	@ tmp650, pstInst,
	strb	r3, [r2, #100]	@ i, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvIdc
	ldr	r3, [r5, r0, asl #2]	@ tmp438, pstInst_28->PmvAddr
	str	r3, [r2, #516]	@ tmp438, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	ldr	lr, [ip, #1788]	@ D.34992, pstInst_28->s32HalfPmvOffset
	str	lr, [r2, #520]	@ D.34992, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].HalfPmvOffset
	blt	.L818	@,
	b	.L823	@
.L869:
	mov	r3, #432	@ tmp394,
	mov	r9, #52	@ tmp389,
	mla	r3, r3, r4, r5	@ tmp395, tmp394, i, pstInst
	mla	r2, r9, r2, r5	@ tmp391, tmp389, i, pstInst
	add	r9, r2, #27648	@ D.34990, tmp391,
	add	r9, r9, #148	@ D.34990, D.34990,
	str	r9, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	b	.L805	@
.L842:
	mov	r9, r3	@ D.34990, D.34990
.L831:
	mov	r3, #432	@ tmp489,
	mla	r3, r3, r4, r5	@ tmp490, tmp489, i, pstInst
	str	r9, [r3, #508]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDispOutFs
	b	.L830	@
.L874:
	mov	r0, r3	@, D.35003
	ldr	r1, .L876+32	@,
	bl	dprint_vfmw	@
.L838:
	ldr	r0, .L876+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r1, .L876+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34992,
	b	.L855	@
.L871:
	ldr	r1, .L876+40	@,
	mov	r0, r9	@, D.34990
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@ pstInst_28->s32DecFsNum, pstInst_28->s32DecFsNum
	cmp	r3, #0	@ pstInst_28->s32DecFsNum,
	add	r3, r5, #27648	@ pstPhyFs, pstInst,
	add	r3, r3, #148	@ pstPhyFs, pstPhyFs,
	str	r3, [sp, #12]	@ pstPhyFs, %sfp
	movgt	fp, r3	@ ivtmp.644, pstPhyFs
	ble	.L815	@,
.L814:
	ldrsb	r3, [fp, #2]	@ D.34999, MEM[base: _319, offset: 2B]
	mov	r0, #0	@,
	ldrsb	r2, [fp], #52	@, MEM[base: _319, offset: 0B]
	add	r9, r9, #1	@ i, i,
	ldr	r1, .L876+44	@,
	bl	dprint_vfmw	@
	ldrsb	r3, [r5, #10]	@ D.34999, pstInst_28->s32DecFsNum
	cmp	r3, r9	@ D.34999, i
	bgt	.L814	@,
.L815:
	ldr	r1, .L876+48	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldrsb	lr, [r5, #10]	@ D.34999, pstInst_28->s32DecFsNum
	ldr	r2, [sp, #12]	@ pstPhyFs, %sfp
	cmp	lr, #0	@ D.34999,
	movle	fp, r2	@ D.34990, pstPhyFs
	ble	.L813	@,
	mov	r0, #0	@ i,
	mvn	ip, #0	@ LeastTick,
	mov	r3, r0	@ i, i
.L812:
	ldr	r1, [r2, #44]	@ LeastTick, MEM[base: pstPhyFs_310, offset: 44B]
	add	r2, r2, #52	@ pstPhyFs, pstPhyFs,
	cmp	r1, ip	@ LeastTick, LeastTick
	movcc	r0, r3	@ i, i
	add	r3, r3, #1	@ i, i,
	movcc	ip, r1	@ LeastTick, LeastTick
	cmp	lr, r3	@ D.34999, i
	bne	.L812	@,
	mov	fp, #52	@ tmp411,
	mla	fp, fp, r0, r5	@ tmp413, tmp411, i, pstInst
	add	fp, fp, #27648	@ D.34990, tmp413,
	add	fp, fp, #148	@ D.34990, D.34990,
.L813:
	mov	r3, #432	@ tmp416,
	mla	r3, r3, r4, r5	@ tmp417, tmp416, i, pstInst
	str	fp, [r3, #504]	@ D.34990, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].pstDecodeFs
	b	.L810	@
.L866:
	ldr	r3, .L876+52	@,
	movw	r2, #2209	@,
	ldr	r1, .L876+56	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34992,
	b	.L855	@
.L872:
	add	r1, r5, #32768	@ tmp639, pstInst,
	strb	r2, [r3, #100]	@ pstInst_28->IsPmvInUse, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvIdc
	ldr	r2, [r1, #1792]	@ pstInst_28->PmvAddr, pstInst_28->PmvAddr
	str	r2, [r0, #4]	@ pstInst_28->PmvAddr, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].PmvAddr
	ldr	r2, [r1, #1788]	@ pstInst_28->s32HalfPmvOffset, pstInst_28->s32HalfPmvOffset
	str	r2, [r3, #520]	@ pstInst_28->s32HalfPmvOffset, MEM[(struct FSP_LOGIC_FS_S *)pstInst_28].stLogicFs[i_14].HalfPmvOffset
	b	.L818	@
.L867:
	ldr	r3, .L876+60	@,
	movw	r2, #2210	@,
	ldr	r1, .L876+56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34992,
	b	.L855	@
.L875:
	add	r0, r8, #68	@, tmp518,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r9	@, D.34999
	ldr	r1, .L876+64	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34992,
	b	.L855	@
.L877:
	.align	2
.L876:
	.word	.LANCHOR0
	.word	s_pstVfmwChan
	.word	.LC75
	.word	.LANCHOR0+68
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
	ldr	r3, .L886	@ tmp119,
	ldr	ip, [r3, r0, asl #2]	@ pstInst, s_pFspInst
	add	r3, ip, #27136	@ tmp124, pstInst,
	ldrsb	r3, [r3, #177]	@ pstInst_5->stLogicFs[63].s32DispState, pstInst_5->stLogicFs[63].s32DispState
	cmp	r3, #0	@ pstInst_5->stLogicFs[63].s32DispState,
	beq	.L883	@,
	add	r2, ip, #26880	@ ivtmp.676, pstInst,
	mov	r3, #62	@ ret_id,
	add	r2, r2, #1	@ ivtmp.676, ivtmp.676,
	b	.L882	@
.L880:
	subs	r3, r3, #1	@ ret_id, ret_id,
	bcc	.L885	@,
.L882:
	ldrsb	r1, [r2]	@ MEM[base: _19, offset: 0B], MEM[base: _19, offset: 0B]
	sub	r2, r2, #432	@ ivtmp.676, ivtmp.676,
	cmp	r1, #0	@ MEM[base: _19, offset: 0B],
	bne	.L880	@,
.L881:
	mov	r2, #432	@ tmp128,
	mov	r0, r3	@, ret_id
	mla	r3, r2, r3, ip	@ tmp129, tmp128, ret_id, pstInst
	mov	r2, #0	@ tmp131,
	str	r2, [r3, #504]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDecodeFs
	str	r2, [r3, #508]	@ tmp131, pstInst_5->stLogicFs[ret_id_2].pstDispOutFs
	bx	lr	@
.L885:
	mov	r3, #0	@ ret_id,
	b	.L881	@
.L883:
	mov	r3, #63	@ ret_id,
	b	.L881	@
.L887:
	.align	2
.L886:
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
	bhi	.L893	@,
	ldr	r3, .L895	@ tmp120,
	ldr	r0, [r3, r0, asl #2]	@ D.35030, s_pFspInst
	cmp	r0, #0	@ D.35030,
	beq	.L894	@,
	ldr	r0, [r0, #4]	@ _7->eFspInstState, _7->eFspInstState
	subs	r0, r0, #1	@ D.35028, _7->eFspInstState,
	mvnne	r0, #0	@ D.35028,
	ldmfd	sp!, {r4, pc}	@
.L893:
	ldr	r3, .L895+4	@,
	movw	r2, #3293	@,
	ldr	r1, .L895+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35028,
	ldmfd	sp!, {r4, pc}	@
.L894:
	ldr	r3, .L895+12	@,
	movw	r2, #3294	@,
	ldr	r1, .L895+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35028,
	ldmfd	sp!, {r4, pc}	@
.L896:
	.align	2
.L895:
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
	.type	__func__.32241, %object
	.size	__func__.32241, 35
__func__.32241:
	.ascii	"FSP_NoneDnrSwitchToDnrSpecialCase1\000"
	.space	1
	.type	__func__.32207, %object
	.size	__func__.32207, 31
__func__.32207:
	.ascii	"FSP_NoneDnrSwitchToDnrNormCase\000"
	.space	1
	.type	__func__.32260, %object
	.size	__func__.32260, 23
__func__.32260:
	.ascii	"FSP_NoneDnrSwitchToDnr\000"
	.space	1
	.type	__func__.32139, %object
	.size	__func__.32139, 14
__func__.32139:
	.ascii	"FSP_EnableDnr\000"
	.space	2
	.type	__func__.32273, %object
	.size	__func__.32273, 24
__func__.32273:
	.ascii	"FSP_ConfigDSDFrameArray\000"
	.type	__func__.32303, %object
	.size	__func__.32303, 22
__func__.32303:
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
