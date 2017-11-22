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
	.file	"scd_drv.c"
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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/.scd_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300/scd_drv.o
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
	.type	SCDDRV_SaveSegStream.part.4, %function
SCDDRV_SaveSegStream.part.4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pStreamSeg, pStreamSeg
	ldr	r4, .L3	@ tmp115,
	mov	r0, r4	@, tmp115
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, .L3+4	@ tmp116,
	ldr	r1, [r5, #12]	@, pStreamSeg_1(D)->LenInByte
	ldr	r0, [r5]	@, pStreamSeg_1(D)->VirAddr
	ldr	r2, [r3]	@, vfmw_save_seg_file
	bl	klib_fwrite	@
	mov	r0, r4	@, tmp115
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinLockIRQ	@
.L4:
	.align	2
.L3:
	.word	g_TaskLock
	.word	vfmw_save_seg_file
	.fnend
	.size	SCDDRV_SaveSegStream.part.4, .-SCDDRV_SaveSegStream.part.4
	.align	2
	.type	GetFreeSegBufSize.part.6, %function
GetFreeSegBufSize.part.6:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #90112	@ tmp125, pStreamSegArray,
	mov	r3, #0	@ tmp123,
	str	r3, [r1]	@ tmp123, *pLength_1(D)
	ldr	r2, [r0, #2084]	@ D.35856, pStreamSegArray_2(D)->SegBufWriteAddr
	ldr	ip, [r0, #2080]	@ D.35856, pStreamSegArray_2(D)->SegBufReadAddr
	cmp	r2, ip	@ D.35856, D.35856
	bls	.L6	@,
	ldr	r0, [r0, #2076]	@ D.35856, pStreamSegArray_2(D)->SegBufSize
	add	ip, ip, r0	@ D.35856, D.35856, D.35856
	sub	ip, ip, #1	@ D.35856, D.35856,
	rsb	r3, r2, ip	@ Len, D.35856, D.35856
.L7:
	cmp	r3, r0	@ Len, D.35856
	movhi	r3, #0	@ D.35856,
	str	r3, [r1]	@ D.35856, *pLength_1(D)
	bx	lr	@
.L6:
	ldrcs	r0, [r0, #2076]	@ D.35856, pStreamSegArray_2(D)->SegBufSize
	subcc	ip, ip, #1	@ D.35856, D.35856,
	ldrcc	r0, [r0, #2076]	@ D.35856, pStreamSegArray_2(D)->SegBufSize
	rsbcc	r3, r2, ip	@ Len, D.35856, D.35856
	subcs	r3, r0, #1	@ Len, D.35856,
	b	.L7	@
	.fnend
	.size	GetFreeSegBufSize.part.6, .-GetFreeSegBufSize.part.6
	.align	2
	.global	WriteCabacTabDsp
	.type	WriteCabacTabDsp, %function
WriteCabacTabDsp:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L14	@,
	mov	r2, #5120	@,
	ldr	r1, .L15	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L14:
	mov	r2, #58	@,
	ldr	r1, .L15+4	@,
	mov	r0, #22	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L16:
	.align	2
.L15:
	.word	g_CabacMN
	.word	.LC0
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	WriteHexFile
	.type	WriteHexFile, %function
WriteHexFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r7, .L36	@ tmp214,
	mov	r4, r0	@ eVidStd, eVidStd
	mov	r3, #49152	@ tmp164,
	mov	r0, #20	@,
	movt	r3, 4115	@ tmp164,
	mov	r5, #0	@ tmp162,
	str	r3, [r7]	@ tmp164, s_RegPhyBaseAddr
	str	r5, [sp, #20]	@ tmp162, dataInt
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L33	@,
	mov	r3, sp	@ tmp222,
	bic	r3, r3, #8128	@ tmp215, tmp222,
	str	r3, [sp, #4]	@ tmp215, %sfp
	bic	r3, r3, #63	@ D.35879, tmp215,
	cmp	r4, #6	@ eVidStd,
	ldr	r2, [r3, #8]	@ fs, _82->addr_limit
	str	r5, [r3, #8]	@ tmp162, _85->addr_limit
	str	r2, [sp, #8]	@ fs, %sfp
	beq	.L34	@,
	cmp	r4, #0	@ eVidStd,
	beq	.L35	@,
	mov	r2, r4	@, eVidStd
	ldr	r1, .L36+4	@,
	mov	r0, r5	@, tmp162
	mov	r9, r5	@ fp,
	bl	dprint_vfmw	@
.L24:
	ldr	r3, [sp, #4]	@ tmp215, %sfp
	add	r8, sp, #32	@ tmp213,,
	mov	r2, #0	@ tmp182,
	mov	r4, #10	@ ivtmp.281,
	bic	r3, r3, #63	@ D.35879, tmp215,
	mov	r5, r2	@ calbakBaseaddr, tmp182
	str	r2, [r3, #8]	@ tmp182, _99->addr_limit
	mov	r2, #0	@ tmp183,
	mov	r3, #0	@,
	strd	r2, [r8, #-8]!	@ tmp183, pos
	b	.L25	@
.L27:
	strd	r10, [sp, #24]	@ ivtmp.281,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L32	@,
	ldr	r0, [r7, #4]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #20]	@, dataInt
	add	r0, r5, r0	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L25:
	mov	r3, r8	@, tmp213
	mov	r2, #10	@,
	mov	r1, r6	@, data
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	r10, r4	@ ivtmp.281, ivtmp.281
	mov	fp, r4, asr #31	@ ivtmp.281, ivtmp.281,
	add	r2, sp, #20	@ tmp226,,
	ldr	r1, .L36+8	@,
	add	r4, r4, #10	@ ivtmp.281, ivtmp.281,
	subs	r3, r0, #0	@ D.35880,
	mov	r0, r6	@, data
	bne	.L27	@,
	mov	r1, r3	@, D.35880
	mov	r0, r9	@, fp
	str	r3, [sp, #12]	@ D.35880, %sfp
	bl	filp_close	@
	ldr	r3, [sp, #4]	@ tmp215, %sfp
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	bic	r10, r3, #63	@ D.35879, tmp215,
	ldr	r3, [sp, #8]	@ fs, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r3, [r10, #8]	@ fs, _101->addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp214,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #12]	@ D.35880, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r3	@, D.35880
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L28:
	movw	r0, #49412	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L28	@,
.L32:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L17:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L35:
	movw	r2, #438	@,
	mov	r1, r4	@, eVidStd
	ldr	r0, .L36+12	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L24	@,
	movw	r2, #438	@,
	mov	r1, r4	@, eVidStd
	ldr	r0, .L36+16	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L22:
	cmn	r9, #4096	@ fp,
	bls	.L24	@,
	mov	r2, r4	@, eVidStd
	ldr	r1, .L36+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L17	@
.L34:
	movw	r2, #438	@,
	mov	r1, r5	@, tmp162
	ldr	r0, .L36+24	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L24	@,
	mov	r1, r5	@, tmp162
	movw	r2, #438	@,
	ldr	r0, .L36+28	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L22	@
.L33:
	ldr	r1, .L36+32	@,
	bl	dprint_vfmw	@
	b	.L17	@
.L37:
	.align	2
.L36:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC8
	.word	.LC4
	.word	.LC5
	.word	.LC7
	.word	.LC2
	.word	.LC3
	.word	.LC1
	.fnend
	.size	WriteHexFile, .-WriteHexFile
	.align	2
	.global	GetInstIDByRawArray
	.type	GetInstIDByRawArray, %function
GetInstIDByRawArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L41	@ tmp117,
	ldr	r3, [r3, #68]	@ D.35897, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35897,
	beq	.L40	@,
	add	r3, r3, #48	@ D.35898, D.35897,
	subs	r0, r0, r3	@ D.35895, pRawArray, D.35898
	mvnne	r0, #0	@ D.35895,
	bx	lr	@
.L40:
	mvn	r0, #0	@ D.35895,
	bx	lr	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.fnend
	.size	GetInstIDByRawArray, .-GetInstIDByRawArray
	.align	2
	.global	ResetSCD
	.type	ResetSCD, %function
ResetSCD:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r0, #51228	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r5, .L54	@ tmp146,
	ldr	ip, [r5]	@ D.35910, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	mov	r6, r0	@ D.35909,
	bne	.L47	@,
	movw	r0, #9999	@ D.35913,
	b	.L45	@
.L53:
	subs	r0, r0, #1	@ D.35913, D.35913,
	beq	.L52	@,
.L45:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L53	@,
.L47:
	ldr	r3, .L54+4	@ tmp140,
	bfc	r4, #5, #1	@ u32TmpValue,,
	and	r1, r6, #1	@, D.35909,
	str	r4, [ip, #120]	@ u32TmpValue, _38->PERI_CRG30.u32
	ldmfd	sp!, {r4, r5, r6, lr}	@
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L52:
	ldr	r1, .L54+8	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5]	@ D.35910, g_pstRegCrg
	b	.L47	@
.L55:
	.align	2
.L54:
	.word	g_pstRegCrg
	.word	.LANCHOR0
	.word	.LC9
	.fnend
	.size	ResetSCD, .-ResetSCD
	.align	2
	.global	SCDDRV_MaskInt
	.type	SCDDRV_MaskInt, %function
SCDDRV_MaskInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L57	@ tmp113,
	mov	r1, #1	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_MaskInt, .-SCDDRV_MaskInt
	.align	2
	.global	SCDDRV_EnableInt
	.type	SCDDRV_EnableInt, %function
SCDDRV_EnableInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L60	@ tmp113,
	mov	r1, #0	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_EnableInt, .-SCDDRV_EnableInt
	.align	2
	.global	ResetRawStreamArray
	.type	ResetRawStreamArray, %function
ResetRawStreamArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray,
	bxeq	lr	@
	movw	r1, #8216	@,
	movt	r1, 1	@,
	b	__memzero	@
	.fnend
	.size	ResetRawStreamArray, .-ResetRawStreamArray
	.align	2
	.global	SCDDRV_IsRawArrayFull
	.type	SCDDRV_IsRawArrayFull, %function
SCDDRV_IsRawArrayFull:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #73728	@ tmp120, pRawStreamArray,
	ldr	r3, [r0, #4]	@ pRawStreamArray_2(D)->Tail, pRawStreamArray_2(D)->Tail
	ldr	r0, [r0, #8]	@ pRawStreamArray_2(D)->History, pRawStreamArray_2(D)->History
	add	r3, r3, #1	@ D.35927, pRawStreamArray_2(D)->Tail,
	mov	r2, r3, asr #31	@ tmp124, D.35927,
	mov	r2, r2, lsr #22	@ tmp125, tmp124,
	add	r3, r3, r2	@ tmp126, D.35927, tmp125
	ubfx	r3, r3, #0, #10	@ tmp127, tmp126,,
	rsb	r3, r2, r3	@ D.35927, tmp125, tmp127
	rsb	r0, r0, r3	@, pRawStreamArray_2(D)->History, D.35927
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsRawArrayFull, .-SCDDRV_IsRawArrayFull
	.align	2
	.global	SCDDRV_InsertRawPacket
	.type	SCDDRV_InsertRawPacket, %function
SCDDRV_InsertRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	ldr	r3, .L71	@ tmp129,
	cmp	r2, #0	@ pRawPacket_6(D)->PhyAddr,
	add	r0, r3, r0, lsl #2	@ tmp131, tmp129, SmID,
	ldr	r2, [r0, #68]	@ pSmInst, s_SmIIS.pSmInstArray
	beq	.L67	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r5, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r2, #0	@, pSmInst,
	moveq	r5, #1	@ tmp141,
	movne	r5, #0	@ tmp141,
	beq	.L68	@,
	add	r4, r2, #73728	@ tmp143, pSmInst,
	ldr	r0, [r4, #52]	@ D.35933, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].Tail
	ldr	lr, [r4, #56]	@ MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].History, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].History
	add	r3, r0, #1	@ D.35933, D.35933,
	mov	ip, r3, asr #31	@ tmp146, D.35933,
	mov	ip, ip, lsr #22	@ tmp147, tmp146,
	add	r3, r3, ip	@ tmp148, D.35933, tmp147
	ubfx	r3, r3, #0, #10	@ tmp149, tmp148,,
	rsb	r3, ip, r3	@ D.35933, tmp147, tmp149
	cmp	r3, lr	@ D.35933, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].History
	beq	.L69	@,
	mov	ip, r0, asl #6	@ tmp157, D.35933,
	add	r3, r2, #48	@ tmp154, pSmInst,
	add	r0, ip, r0, lsl #3	@ tmp158, tmp157, D.35933,
	mov	r2, #72	@,
	add	r0, r3, r0	@, tmp154, tmp158
	bl	memcpy	@
	ldr	r3, [r4, #52]	@ MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].Tail
	mov	r0, r5	@ D.35932, tmp141
	add	r3, r3, #1	@ D.35933, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].Tail,
	mov	r2, r3, asr #31	@ tmp170, D.35933,
	mov	r2, r2, lsr #22	@ tmp171, tmp170,
	add	r3, r3, r2	@ tmp172, D.35933, tmp171
	ubfx	r3, r3, #0, #10	@ tmp173, tmp172,,
	rsb	r3, r2, r3	@ D.35933, tmp171, tmp173
	str	r3, [r4, #52]	@ D.35933, MEM[(struct RAW_ARRAY_S *)pSmInst_5 + 48B].Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L67:
	mvn	r0, #0	@ D.35932,
	bx	lr	@
.L69:
	mvn	r0, #3	@ D.35932,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L68:
	mvn	r0, #0	@ D.35932,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_InsertRawPacket, .-SCDDRV_InsertRawPacket
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID,
	bne	.L76	@,
	ldr	r3, .L78	@ tmp118,
	ldr	r3, [r3, #68]	@ D.35943, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35943,
	beq	.L76	@,
	add	r2, r3, #73728	@ tmp120, D.35943,
	ldr	r3, [r2, #52]	@ MEM[(struct RAW_ARRAY_S *)_4 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)_4 + 48B].Tail
	ldr	r1, [r2, #56]	@ MEM[(struct RAW_ARRAY_S *)_4 + 48B].History, MEM[(struct RAW_ARRAY_S *)_4 + 48B].History
	add	r3, r3, #1	@ D.35944, MEM[(struct RAW_ARRAY_S *)_4 + 48B].Tail,
	mov	r2, r3, asr #31	@ tmp124, D.35944,
	mov	r2, r2, lsr #22	@ tmp125, tmp124,
	add	r3, r3, r2	@ tmp126, D.35944, tmp125
	ubfx	r3, r3, #0, #10	@ tmp127, tmp126,,
	rsb	r3, r2, r3	@ D.35944, tmp125, tmp127
	cmp	r3, r1	@ D.35944, MEM[(struct RAW_ARRAY_S *)_4 + 48B].History
	mvneq	r0, #3	@ D.35942,
	movne	r0, #0	@ D.35942,
	bx	lr	@
.L76:
	mvn	r0, #3	@ D.35942,
	bx	lr	@
.L79:
	.align	2
.L78:
	.word	.LANCHOR0
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	ShowRawPacket
	.type	ShowRawPacket, %function
ShowRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #73728	@ tmp121, pRawStreamArray,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [r4, #16]	@ D.35948, pRawStreamArray_4(D)->CurShowIndex
	ldr	r0, [r4, #4]	@ pRawStreamArray_4(D)->Tail, pRawStreamArray_4(D)->Tail
	cmp	r2, r0	@ D.35948, pRawStreamArray_4(D)->Tail
	beq	.L82	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp127, D.35948,
	add	r1, r1, r2, lsl #3	@ tmp128, tmp127, D.35948,
	mov	r2, #72	@,
	add	r1, r3, r1	@, pRawStreamArray, tmp128
	bl	memcpy	@
	ldr	r3, [r4, #16]	@ pRawStreamArray_4(D)->CurShowIndex, pRawStreamArray_4(D)->CurShowIndex
	mov	r0, #0	@ D.35947,
	add	r3, r3, #1	@ D.35948, pRawStreamArray_4(D)->CurShowIndex,
	mov	r2, r3, asr #31	@ tmp140, D.35948,
	mov	r2, r2, lsr #22	@ tmp141, tmp140,
	add	r3, r3, r2	@ tmp142, D.35948, tmp141
	ubfx	r3, r3, #0, #10	@ tmp143, tmp142,,
	rsb	r3, r2, r3	@ D.35948, tmp141, tmp143
	str	r3, [r4, #16]	@ D.35948, pRawStreamArray_4(D)->CurShowIndex
	ldmfd	sp!, {r4, pc}	@
.L82:
	mvn	r0, #2	@ D.35947,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ShowRawPacket, .-ShowRawPacket
	.align	2
	.global	GetFirstRawPacket
	.type	GetFirstRawPacket, %function
GetFirstRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pRawPacket, pRawPacket
	beq	.L89	@,
	add	r3, r0, #73728	@ tmp140, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp140,,
	cmp	r1, r2	@ D.35955, pRawStreamArray_2(D)->Tail
	ldrne	r5, [r3, #12]	@ FirstRawOffset, pRawStreamArray_2(D)->FirstPacketOffset
	moveq	r6, #0	@ D.35957,
	moveq	r5, r6	@ FirstRawOffset, D.35957
	movne	r6, r5	@ D.35957, FirstRawOffset
.L86:
	str	r1, [r3, #16]	@ D.35955, pRawStreamArray_2(D)->CurShowIndex
	mov	r1, r4	@, pRawPacket
	bl	ShowRawPacket	@
	ldmia	r4, {r1, r2, r3}	@ pRawPacket,,,
	add	r1, r1, r5	@ D.35955, pRawPacket_5(D)->PhyAddr, FirstRawOffset
	add	r2, r2, r6	@ D.35956, pRawPacket_5(D)->VirAddr, D.35957
	rsb	r3, r5, r3	@ D.35955, FirstRawOffset, pRawPacket_5(D)->Length
	stmia	r4, {r1, r2}	@ pRawPacket,,
	str	r3, [r4, #8]	@ D.35955, pRawPacket_5(D)->Length
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L89:
	mov	r3, #73728	@ tmp124,
	mov	r6, r0	@ D.35957, pRawStreamArray
	ldr	r1, [r3]	@ D.35955, MEM[(struct RAW_ARRAY_S *)0B].Head
	mov	r5, r0	@ FirstRawOffset, pRawStreamArray
	b	.L86	@
	.fnend
	.size	GetFirstRawPacket, .-GetFirstRawPacket
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray
	beq	.L92	@,
	add	r3, r0, #73728	@ tmp120, pRawStreamArray,
	ldmia	r3, {r2, ip}	@ tmp120,,
	cmp	r2, ip	@ D.35961, pRawStreamArray_3(D)->Tail
	beq	.L93	@,
	mov	ip, r2, asl #6	@ tmp129, D.35961,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.35961,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L94	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.35960,
	ldr	pc, [sp], #4	@
.L94:
	mvn	r0, #0	@ D.35960,
	ldr	pc, [sp], #4	@
.L93:
	mvn	r0, #2	@ D.35960,
	bx	lr	@
.L92:
	mvn	r0, #0	@ D.35960,
	bx	lr	@
	.fnend
	.size	SetFirstOffset, .-SetFirstOffset
	.align	2
	.global	GetFirstOffset
	.type	GetFirstOffset, %function
GetFirstOffset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pOffset,
	cmpne	r0, #0	@, pRawStreamArray,
	moveq	r2, #1	@ tmp126,
	movne	r2, #0	@ tmp126,
	beq	.L99	@,
	add	r3, r0, #73728	@ tmp128, pRawStreamArray,
	ldr	ip, [r3]	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Head
	ldr	r0, [r3, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	ip, r0	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Tail
	beq	.L100	@,
	ldr	r3, [r3, #12]	@ D.35966, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.35964, tmp126
	str	r3, [r1]	@ D.35966, *pOffset_5(D)
	bx	lr	@
.L99:
	mvn	r0, #0	@ D.35964,
	bx	lr	@
.L100:
	mvn	r0, #2	@ D.35964,
	bx	lr	@
	.fnend
	.size	GetFirstOffset, .-GetFirstOffset
	.align	2
	.global	DeleteRawPacket
	.type	DeleteRawPacket, %function
DeleteRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ DelNum,
	cmpne	r0, #0	@, pRawStreamArray,
	beq	.L114	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1	@ DelNum, DelNum
	ldr	r8, .L125	@ tmp213,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r10, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r6, [r8, #68]	@ D.35974, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ D.35974,
	beq	.L103	@,
	add	r6, r6, #48	@ D.35976, D.35974,
	subs	r6, r0, r6	@ D.35971, pRawStreamArray, D.35976
	mvnne	r6, #0	@ D.35971,
	cmp	r6, #0	@ D.35971,
	blt	.L103	@,
	add	r9, r0, #73728	@ tmp214, pRawStreamArray,
	ldr	r2, [r9, #4]	@ D.35971, pRawStreamArray_9(D)->Tail
	ldr	r3, [r9]	@ D.35971, pRawStreamArray_9(D)->Head
	cmp	r3, r2	@ D.35971, D.35971
	addgt	r2, r2, #1024	@ D.35971, D.35971,
	rsb	r2, r3, r2	@ PacketNum, D.35971, D.35971
	cmp	r2, r1	@ PacketNum, DelNum
	bcc	.L124	@,
	cmp	r1, #0	@ DelNum,
	mov	r4, r3	@ j, D.35971
	beq	.L108	@,
	add	r6, r6, #14	@ tmp212, D.35971,
	mov	r5, #0	@ i,
.L109:
	mov	r3, r4, asl #6	@ tmp164, j,
	ldr	r2, .L125+4	@,
	add	r3, r3, r4, lsl #3	@ tmp165, tmp164, j,
	ldr	r1, .L125+8	@,
	add	fp, r10, r3	@ tmp166, pRawStreamArray, tmp165
	mov	r0, #26	@,
	ldr	r3, [r10, r3]	@ pRawStreamArray_9(D)->RawPacket[j_49].PhyAddr, pRawStreamArray_9(D)->RawPacket[j_49].PhyAddr
	add	r5, r5, #1	@ i, i,
	ldr	ip, [fp, #8]	@ pRawStreamArray_9(D)->RawPacket[j_49].Length, pRawStreamArray_9(D)->RawPacket[j_49].Length
	add	r4, r4, #1	@ D.35975, j,
	ubfx	r4, r4, #0, #10	@ j, D.35975,,
	str	ip, [sp]	@ pRawStreamArray_9(D)->RawPacket[j_49].Length,
	bl	dprint_vfmw	@
	add	r3, r8, r6, lsl #2	@ tmp179, tmp213, tmp212,
	ldr	r2, [fp, #8]	@ pRawStreamArray_9(D)->RawPacket[j_49].Length, pRawStreamArray_9(D)->RawPacket[j_49].Length
	cmp	r5, r7	@ i, DelNum
	ldr	r1, [r3, #12]	@ D.35974, s_SmIIS.pSmInstArray
	add	r1, r1, #73728	@ tmp182, D.35974,
	ldr	r3, [r1, #68]	@ _28->RawPacketArray.RawTotalSize, _28->RawPacketArray.RawTotalSize
	rsb	r2, r2, r3	@ D.35971, pRawStreamArray_9(D)->RawPacket[j_49].Length, _28->RawPacketArray.RawTotalSize
	bic	r2, r2, r2, asr #31	@ D.35971, D.35971
	str	r2, [r1, #68]	@ D.35971, _28->RawPacketArray.RawTotalSize
	bne	.L109	@,
	ldr	r3, [r9]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp197,
	str	r0, [r9, #12]	@ tmp197, pRawStreamArray_9(D)->FirstPacketOffset
	add	r5, r5, r3	@ D.35971, i, pRawStreamArray_9(D)->Head
	str	r5, [r9]	@ D.35971, pRawStreamArray_9(D)->Head
	cmp	r5, #1024	@ D.35971,
	subge	r5, r5, #1024	@ D.35971, D.35971,
	strge	r5, [r9]	@ D.35971, pRawStreamArray_9(D)->Head
.L119:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L108:
	cmp	r3, #1024	@ D.35971,
	str	r3, [r9]	@ D.35971, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.35972,
	subge	r3, r3, #1024	@ D.35971, D.35971,
	strge	r3, [r9]	@ D.35971, pRawStreamArray_9(D)->Head
	b	.L119	@
.L114:
	mvn	r0, #0	@ D.35972,
	bx	lr	@
.L124:
	mov	r3, r1	@, DelNum
	mov	r0, #26	@,
	ldr	r1, .L125+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35972,
	b	.L119	@
.L103:
	movw	r2, #373	@,
	ldr	r1, .L125+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35972,
	b	.L119	@
.L126:
	.align	2
.L125:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	GetRawNumOffset
	.type	GetRawNumOffset, %function
GetRawNumOffset:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	ip, r0	@ D.35986, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	ip, ip, lsr #5	@ D.35986, D.35986,
	orrs	r6, ip, r1, lsr #31	@, tmp151, D.35986, RawPacketLength,
	bne	.L134	@,
	add	r8, r0, #73728	@ tmp199, pRawStreamArray,
	cmp	ip, #0	@ D.35986,
	ldr	r7, [r8]	@ Index, pRawStreamArray_8(D)->Head
	ldr	lr, [r8, #12]	@ pRawStreamArray_8(D)->FirstPacketOffset, pRawStreamArray_8(D)->FirstPacketOffset
	mov	ip, r7, asl #6	@ tmp156, Index,
	add	ip, ip, r7, lsl #3	@ tmp157, tmp156, Index,
	add	ip, r0, ip	@ tmp158, pRawStreamArray, tmp157
	ldr	r5, [ip, #8]	@ pRawStreamArray_8(D)->RawPacket[Index_13].Length, pRawStreamArray_8(D)->RawPacket[Index_13].Length
	rsb	r5, lr, r5	@ TotalLen, pRawStreamArray_8(D)->FirstPacketOffset, pRawStreamArray_8(D)->RawPacket[Index_13].Length
	bne	.L129	@,
	ldr	r6, [r8, #4]	@ pRawStreamArray_8(D)->Tail, pRawStreamArray_8(D)->Tail
	subs	r6, r6, r7	@ TotalRawNum, pRawStreamArray_8(D)->Tail, Index
	addmi	r6, r6, #1024	@ TotalRawNum, TotalRawNum,
.L129:
	cmp	r1, r5	@ RawPacketLength, TotalLen
	add	r6, r7, r6	@ LastRawPacketIndex, Index, TotalRawNum
	mov	ip, r7	@ D.35988, Index
	movge	lr, #0	@ tmp170,
	movlt	lr, #1	@ tmp170,
	cmp	r6, r7	@ LastRawPacketIndex, Index
	orrls	lr, lr, #1	@,, tmp173, tmp170
	cmp	lr, #0	@ tmp173,
	bne	.L130	@,
	mov	r4, r7	@ Index, Index
.L131:
	add	r4, r4, #1	@ Index, Index,
	mov	ip, r4, asr #31	@ tmp174, Index,
	mov	lr, ip, lsr #22	@ tmp175, tmp174,
	add	ip, r4, lr	@ tmp176, Index, tmp175
	ubfx	ip, ip, #0, #10	@ tmp177, tmp176,,
	rsb	ip, lr, ip	@ tmp178, tmp175, tmp177
	mov	lr, ip, asl #6	@ tmp181, tmp178,
	add	lr, lr, ip, lsl #3	@ tmp182, tmp181, tmp178,
	add	lr, r0, lr	@ tmp183, pRawStreamArray, tmp182
	ldr	r9, [lr, #8]	@ D.35987, pRawStreamArray_8(D)->RawPacket[Index_21].Length
	add	r5, r5, r9	@ TotalLen, TotalLen, D.35987
	cmp	r1, r5	@ RawPacketLength, TotalLen
	movge	lr, #0	@ tmp188,
	movlt	lr, #1	@ tmp188,
	cmp	r6, r4	@ LastRawPacketIndex, Index
	orrls	lr, lr, #1	@,, tmp191, tmp188
	cmp	lr, #0	@ tmp191,
	beq	.L131	@,
	cmp	r7, r4	@ Index, Index
	rsbne	r5, r9, r5	@ TotalLen, D.35987, TotalLen
	rsbne	r5, r5, r1	@ D.35987, TotalLen, RawPacketLength
	strne	r5, [r3]	@ D.35987, *pPacketOffset_24(D)
	beq	.L130	@,
.L133:
	ldr	r3, [sp, #28]	@ tmp200, pIndex
	mov	r0, #0	@ D.35985,
	str	ip, [r3]	@ D.35988, *pIndex_31(D)
	ldr	r3, [r8]	@ pRawStreamArray_8(D)->Head, pRawStreamArray_8(D)->Head
	rsb	r4, r3, r4	@ D.35987, pRawStreamArray_8(D)->Head, Index
	str	r4, [r2]	@ D.35987, *pRawNum_35(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L130:
	str	r1, [r3]	@ RawPacketLength, *pPacketOffset_24(D)
	mov	r4, r7	@ Index, Index
	b	.L133	@
.L134:
	mvn	r0, #0	@ D.35985,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	GetRawNumOffset, .-GetRawNumOffset
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r0	@ D.35992, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.35992, D.35992,
	orrs	ip, r3, r1, lsr #31	@, tmp140, D.35992, DelLen,
	.pad #24
	sub	sp, sp, #24	@,,
	bne	.L142	@,
	cmp	r3, #0	@ D.35992,
	str	ip, [sp, #12]	@ tmp140, DelNum
	str	ip, [sp, #16]	@ tmp140, RawPacketOffSet
	bne	.L142	@,
	add	r4, r0, #73728	@ tmp144, pRawStreamArray,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r4, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r4, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.35991, TotallLen,
	bne	.L141	@,
	cmp	r1, r3	@ DelLen, TotallLen
	bgt	.L142	@,
	add	r2, sp, #20	@ tmp151,,
	add	r3, sp, #16	@,,
	str	r2, [sp]	@ tmp151,
	add	r2, sp, #12	@,,
	bl	GetRawNumOffset	@
	ldr	r1, [sp, #12]	@ D.35993, DelNum
	ldr	r3, [r4]	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Head
	mov	r0, r5	@, pRawStreamArray
	add	r3, r1, r3	@ D.35993, D.35993, pRawStreamArray_3(D)->Head
	mov	r2, r3, asr #31	@ tmp156, D.35993,
	mov	r2, r2, lsr #22	@ tmp157, tmp156,
	add	r3, r3, r2	@ tmp158, D.35993, tmp157
	ubfx	r3, r3, #0, #10	@ tmp159, tmp158,,
	rsb	r3, r2, r3	@ D.35993, tmp157, tmp159
	str	r3, [sp, #20]	@ D.35993, Index
	bl	DeleteRawPacket	@
	ldr	r3, [r4]	@ D.35993, pRawStreamArray_3(D)->Head
	ldr	r1, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	ldr	r2, [sp, #16]	@ D.35993, RawPacketOffSet
	cmp	r3, r1	@ D.35993, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.35991,
	beq	.L141	@,
	mov	r1, r3, asl #6	@ tmp171, D.35993,
	ldr	r0, [r4, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	r3, r1, r3, lsl #3	@ tmp172, tmp171, D.35993,
	add	r5, r5, r3	@ tmp173, pRawStreamArray, tmp172
	add	r2, r2, r0	@ TargetOffset, D.35993, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [r5, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r4, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L142	@,
.L141:
	mov	r0, r6	@, D.35991
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L142:
	mvn	r6, #0	@ D.35991,
	mov	r0, r6	@, D.35991
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DeleteRawLen, .-DeleteRawLen
	.align	2
	.global	DeleteLastSendRaw
	.type	DeleteLastSendRaw, %function
DeleteLastSendRaw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r2, r0, #0	@ SmID, SmID
	bxne	lr	@
	ldr	r3, .L151	@ tmp115,
	ldr	r3, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L150	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r3, #163840	@ tmp118, pSmInstArray,
	ldr	r1, [r5, #2176]	@ LastPushRawNum, pSmInstArray_4->SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r3, #48	@, pSmInstArray,
	mov	r4, r2	@ SmID, SmID
	bl	DeleteRawPacket	@
	str	r4, [r5, #2176]	@ SmID, pSmInstArray_4->SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L150:
	movw	r2, #582	@,
	ldr	r1, .L151+4	@,
	b	dprint_vfmw	@
.L152:
	.align	2
.L151:
	.word	.LANCHOR0
	.word	.LC13
	.fnend
	.size	DeleteLastSendRaw, .-DeleteLastSendRaw
	.align	2
	.global	GetRawStreamSize
	.type	GetRawStreamSize, %function
GetRawStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	addne	r0, r0, #73728	@ tmp120, pRawStreamArray,
	ldrne	r3, [r0, #20]	@ D.36006, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.36006, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.36006, pRawStreamArray_3(D)->FirstPacketOffset, D.36006
	strne	r0, [r1]	@ D.36006, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.36005, D.36006,
	mvneq	r0, #0	@ D.36005,
	bx	lr	@
	.fnend
	.size	GetRawStreamSize, .-GetRawStreamSize
	.align	2
	.global	GetRawStreamNum
	.type	GetRawStreamNum, %function
GetRawStreamNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	beq	.L159	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.36011, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.36011, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.36011, D.36011,
	strmi	r3, [r1]	@ D.36011, *pStreamNum_8(D)
	movpl	r0, #0	@ D.36010,
	movmi	r0, #0	@ D.36010,
	bx	lr	@
.L159:
	mvn	r0, #0	@ D.36010,
	bx	lr	@
	.fnend
	.size	GetRawStreamNum, .-GetRawStreamNum
	.align	2
	.global	ConfigStreamSegArray
	.type	ConfigStreamSegArray, %function
ConfigStreamSegArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ BufPhyAddr,
	cmpne	r0, #0	@, pStreamSegArray,
	beq	.L162	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp132,
	movcc	r4, #1	@ tmp132,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp136, tmp132
	cmp	r4, #0	@ tmp136,
	bne	.L163	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp139, pStreamSegArray,
	mov	r0, r4	@ D.36014, tmp136
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L163:
	mvn	r0, #0	@ D.36014,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L162:
	mvn	r0, #0	@ D.36014,
	bx	lr	@
	.fnend
	.size	ConfigStreamSegArray, .-ConfigStreamSegArray
	.align	2
	.global	ResetStreamSegArray
	.type	ResetStreamSegArray, %function
ResetStreamSegArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pStreamSegArray
	bxeq	lr	@
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #92160	@,
	mov	r4, r0	@ pStreamSegArray, pStreamSegArray
	add	r0, r0, #8	@, pStreamSegArray,
	bl	__memzero	@
	add	r0, r4, #90112	@ tmp115, pStreamSegArray,
	mov	r3, #0	@ tmp116,
	ldr	r2, [r0, #2072]	@ D.36018, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.36018, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.36018, pStreamSegArray_2(D)->SegBufWriteAddr
	str	r3, [r0, #2064]	@ tmp116, pStreamSegArray_2(D)->History
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ResetStreamSegArray, .-ResetStreamSegArray
	.align	2
	.global	GetSegBufFreeSize
	.type	GetSegBufFreeSize, %function
GetSegBufFreeSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #90112	@ tmp121, pStreamSegArray,
	ldr	r3, [r0, #2084]	@ D.36021, pStreamSegArray_3(D)->SegBufWriteAddr
	ldr	r2, [r0, #2080]	@ D.36021, pStreamSegArray_3(D)->SegBufReadAddr
	cmp	r3, r2	@ D.36021, D.36021
	bhi	.L176	@,
	ldrcs	r0, [r0, #2076]	@ pStreamSegArray_3(D)->SegBufSize, pStreamSegArray_3(D)->SegBufSize
	subcc	r0, r2, #1	@ D.36021, D.36021,
	rsbcc	r0, r3, r0	@ SegBufFreeSize, D.36021, D.36021
	subcs	r0, r0, #1	@ SegBufFreeSize, pStreamSegArray_3(D)->SegBufSize,
	bx	lr	@
.L176:
	ldr	r0, [r0, #2076]	@ pStreamSegArray_3(D)->SegBufSize, pStreamSegArray_3(D)->SegBufSize
	add	r0, r2, r0	@ D.36021, D.36021, pStreamSegArray_3(D)->SegBufSize
	sub	r0, r0, #1	@ D.36021, D.36021,
	rsb	r0, r3, r0	@ SegBufFreeSize, D.36021, D.36021
	bx	lr	@
	.fnend
	.size	GetSegBufFreeSize, .-GetSegBufFreeSize
	.align	2
	.global	CheckData
	.type	CheckData, %function
CheckData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	and	ip, r1, #31	@ D.36027, u8Data,
	sub	r2, ip, #30	@ tmp133, D.36027,
	cmp	ip, #19	@ D.36027,
	cmpne	r2, #1	@, tmp133,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	sub	lr, ip, #1	@ D.36024, D.36027,
	movls	r3, #1	@ tmp137,
	movhi	r3, #0	@ tmp137,
	cmp	lr, #12	@ D.36024,
	orrls	r3, r3, #1	@,, tmp144, tmp137
	cmp	r3, #0	@ tmp144,
	addne	r2, r0, #208896	@ tmp146, pstChan,
	ldrne	r3, [r2, #2888]	@ pstChan_7(D)->s32H264Score, pstChan_7(D)->s32H264Score
	addne	r3, r3, #1	@ D.36025, pstChan_7(D)->s32H264Score,
	strne	r3, [r2, #2888]	@ D.36025, pstChan_7(D)->s32H264Score
	sub	r3, r1, #1	@ tmp155, u8Data,
	add	r1, r1, #79	@ tmp151, u8Data,
	uxtb	r3, r3	@ tmp157, tmp155
	cmp	r3, #181	@ tmp157,
	uxtb	r1, r1	@ tmp153, tmp151
	movls	r3, #0	@ tmp158,
	movhi	r3, #1	@ tmp158,
	cmp	r1, #4	@ tmp153,
	movhi	r1, r3	@, tmp161, tmp158
	orrls	r1, r3, #1	@,, tmp161, tmp158
	cmp	r1, #0	@ tmp161,
	addne	r0, r0, #208896	@ tmp163, pstChan,
	ldrne	r3, [r0, #2892]	@ pstChan_7(D)->s32Mpeg2Score, pstChan_7(D)->s32Mpeg2Score
	addne	r3, r3, #1	@ D.36025, pstChan_7(D)->s32Mpeg2Score,
	strne	r3, [r0, #2892]	@ D.36025, pstChan_7(D)->s32Mpeg2Score
	ldr	pc, [sp], #4	@
	.fnend
	.size	CheckData, .-CheckData
	.align	2
	.global	CheckStartCodeCnt
	.type	CheckStartCodeCnt, %function
CheckStartCodeCnt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #208896	@ tmp163, pstChan,
	ldr	r3, [r0, #2896]	@ pstChan_2(D)->s32FindStartCodeCnt, pstChan_2(D)->s32FindStartCodeCnt
	cmp	r3, #2	@ pstChan_2(D)->s32FindStartCodeCnt,
	bxle	lr	@
	tst	r1, #31	@ u8Data,
	bxeq	lr	@
	ldr	r3, [r0, #2908]	@ D.36033, pstChan_2(D)->s32CurrentStartCode
	ldr	r2, [r0, #2904]	@ D.36033, pstChan_2(D)->s32LastOneStartCode
	rsb	r1, r2, r3	@ D.36033, D.36033, D.36033
	cmp	r1, #1	@ D.36033,
	beq	.L198	@,
.L189:
	cmp	r3, r2	@ D.36033, D.36033
	bxne	lr	@
	ldr	r2, [r0, #2900]	@ pstChan_2(D)->s32LastTwoStartCode, pstChan_2(D)->s32LastTwoStartCode
	cmp	r3, r2	@ D.36033, pstChan_2(D)->s32LastTwoStartCode
	bxne	lr	@
.L190:
	cmp	r3, #1	@ D.36033,
	cmpne	r3, #20	@, D.36033,
	bxeq	lr	@
	ldr	r3, [r0, #2888]	@ D.36033, pstChan_2(D)->s32H264Score
	cmp	r3, #0	@ D.36033,
	subgt	r3, r3, #1	@ D.36033, D.36033,
	strgt	r3, [r0, #2888]	@ D.36033, pstChan_2(D)->s32H264Score
	ldr	r3, [r0, #2892]	@ pstChan_2(D)->s32Mpeg2Score, pstChan_2(D)->s32Mpeg2Score
	add	r3, r3, #1	@ D.36033, pstChan_2(D)->s32Mpeg2Score,
	str	r3, [r0, #2892]	@ D.36033, pstChan_2(D)->s32Mpeg2Score
	bx	lr	@
.L198:
	ldr	r1, [r0, #2900]	@ pstChan_2(D)->s32LastTwoStartCode, pstChan_2(D)->s32LastTwoStartCode
	rsb	r1, r1, r2	@ D.36033, pstChan_2(D)->s32LastTwoStartCode, D.36033
	cmp	r1, #1	@ D.36033,
	bne	.L189	@,
	b	.L190	@
	.fnend
	.size	CheckStartCodeCnt, .-CheckStartCodeCnt
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L220	@ tmp136,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r4, #0	@ pstChan,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r4, #880]	@ D.36038, pstChan_6->eVidStd
	cmp	r3, #0	@ D.36038,
	cmpne	r3, #3	@, D.36038,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r4, #208896	@ tmp182, pstChan,
	ldr	r3, [r5, #2896]	@ D.36040, pstChan_6->s32FindStartCodeCnt
	cmp	r3, #199	@ D.36040,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_12(D), *pSegBufVirAddr_12(D)
	cmp	r2, #0	@ *pSegBufVirAddr_12(D),
	movne	r2, #0	@ D.36040,
	movne	r7, r2	@ u8Data, D.36040
	bne	.L203	@,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 1B]
	cmp	ip, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 1B],
	bne	.L218	@,
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 2B]
	cmp	r2, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 2B],
	ldreqb	r7, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 3B]
	andeq	r2, r7, #31	@ D.36040, u8Data,
	beq	.L203	@,
	mov	r2, ip	@ D.36040, MEM[(HI_U8 *)pSegBufVirAddr_12(D) + 1B]
.L218:
	mov	r7, r2	@ u8Data, D.36040
.L203:
	ldr	lr, [r5, #2904]	@ pstChan_6->s32LastOneStartCode, pstChan_6->s32LastOneStartCode
	add	r3, r3, #1	@ D.36040, D.36040,
	ldr	ip, [r5, #2908]	@ pstChan_6->s32CurrentStartCode, pstChan_6->s32CurrentStartCode
	mov	r0, r4	@, pstChan
	str	r3, [r5, #2896]	@ D.36040, pstChan_6->s32FindStartCodeCnt
	mov	r6, r1	@ InstID, InstID
	str	lr, [r5, #2900]	@ pstChan_6->s32LastOneStartCode, pstChan_6->s32LastTwoStartCode
	mov	r1, r7	@, u8Data
	str	ip, [r5, #2904]	@ pstChan_6->s32CurrentStartCode, pstChan_6->s32LastOneStartCode
	str	r2, [r5, #2908]	@ D.36040, pstChan_6->s32CurrentStartCode
	bl	CheckData	@
	mov	r1, r7	@, u8Data
	mov	r0, r4	@, pstChan
	bl	CheckStartCodeCnt	@
	ldr	r3, [r5, #2896]	@ pstChan_6->s32FindStartCodeCnt, pstChan_6->s32FindStartCodeCnt
	cmp	r3, #199	@ pstChan_6->s32FindStartCodeCnt,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r5, #2888]	@ D.36040, pstChan_6->s32H264Score
	ldr	r3, [r5, #2892]	@ D.36040, pstChan_6->s32Mpeg2Score
	rsb	r1, r3, r2	@ D.36040, D.36040, D.36040
	cmp	r1, #49	@ D.36040,
	ble	.L204	@,
	ldr	r1, [r4, #880]	@ pstChan_6->eVidStd, pstChan_6->eVidStd
	cmp	r1, #3	@ pstChan_6->eVidStd,
	beq	.L219	@,
.L204:
	rsb	r3, r2, r3	@ D.36040, D.36040, D.36040
	cmp	r3, #49	@ D.36040,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r4, #880]	@ pstChan_6->eVidStd, pstChan_6->eVidStd
	cmp	r2, #0	@ pstChan_6->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, .L220+4	@ tmp181,
	ldr	r3, [r3]	@ D.36043, g_event_report
	cmp	r3, #0	@ D.36043,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r6	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.36043
.L219:
	ldr	r3, .L220+4	@ tmp174,
	ldr	r3, [r3]	@ D.36043, g_event_report
	cmp	r3, #0	@ D.36043,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r6	@, InstID
	blx	r3	@ D.36043
	ldr	r3, [r5, #2892]	@ D.36040, pstChan_6->s32Mpeg2Score
	ldr	r2, [r5, #2888]	@ D.36040, pstChan_6->s32H264Score
	b	.L204	@
.L221:
	.align	2
.L220:
	.word	s_pstVfmwChan
	.word	g_event_report
	.fnend
	.size	CheckStream, .-CheckStream
	.align	2
	.global	InsertStreamSeg
	.type	InsertStreamSeg, %function
InsertStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r0, #0	@, pStreamSegArray,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	moveq	r6, #1	@ tmp146,
	movne	r6, #0	@ tmp146,
	beq	.L224	@,
	add	r4, r0, #90112	@ tmp148, pStreamSegArray,
	movw	r5, #36409	@ tmp153,
	movt	r5, 14563	@ tmp153,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.36048, pStreamSegArray_5(D)->Tail,
	umull	r8, r9, r3, r5	@ tmp152, D.36048, tmp153
	mov	r7, r9, lsr #8	@ tmp151,,
	mov	ip, r7, asl #10	@ tmp156, tmp151,
	add	ip, ip, r7, lsl #7	@ tmp157, tmp156, tmp151,
	rsb	r3, ip, r3	@ D.36048, tmp157, D.36048
	cmp	r3, lr	@ D.36048, pStreamSegArray_5(D)->Head
	beq	.L225	@,
	mov	r7, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r7]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r8, [r4, #2060]	@ D.36048, pStreamSegArray_5(D)->Tail
	mov	r1, r7	@, pStreamSeg
	mov	r2, #80	@,
	mov	ip, r8, asl #6	@ tmp167, D.36048,
	add	r8, ip, r8, lsl #4	@ tmp168, tmp167, D.36048,
	add	r0, r8, #8	@ tmp169, tmp168,
	add	r8, r9, r8	@ tmp189, pStreamSegArray, tmp168
	add	r0, r9, r0	@, pStreamSegArray, tmp169
	bl	memcpy	@
	ldr	r1, [r4, #2060]	@ D.36048, pStreamSegArray_5(D)->Tail
	mov	ip, #1	@ tmp183,
	mov	r0, r6	@ D.36046, tmp146
	add	r2, r1, ip	@ D.36048, D.36048,
	mov	r3, r1, asl #6	@ tmp179, D.36048,
	umull	r10, fp, r2, r5	@ tmp194, D.36048, tmp153
	add	r3, r3, r1, lsl #4	@ tmp180, tmp179, D.36048,
	add	r3, r9, r3	@ tmp181, pStreamSegArray, tmp180
	strb	ip, [r3, #12]	@ tmp183, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r1, [r8, #24]	@ D.36048, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	mov	ip, fp, lsr #8	@ tmp196,,
	ldr	r1, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	ldr	r5, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	mov	r3, ip, asl #10	@ tmp199, tmp196,
	ldr	lr, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	add	r3, r3, ip, lsl #7	@ tmp200, tmp199, tmp196,
	rsb	r3, r3, r2	@ D.36048, tmp200, D.36048
	str	r3, [r4, #2060]	@ D.36048, pStreamSegArray_5(D)->Tail
	ldr	r3, [r7, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r1, #1	@ D.36048, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r7, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	ip, ip, r3	@ D.36048, pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->PhyAddr
	str	ip, [r4, #2084]	@ D.36048, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r1, [r7, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r1, r1, r5	@ D.36048, pStreamSeg_7(D)->LenInByte, pStreamSegArray_5(D)->SegTotalSize
	str	r1, [r4, #2088]	@ D.36048, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r7, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.36048, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r3, lr	@ D.36048, pStreamSeg_7(D)->LenInByte, pStreamSegArray_5(D)->SegFreshSize
	str	r3, [r4, #2092]	@ D.36048, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L225:
	mvn	r0, #3	@ D.36046,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L224:
	mvn	r0, #0	@ D.36046,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.align	2
	.global	SCDDRV_GetStreamSeg
	.type	SCDDRV_GetStreamSeg, %function
SCDDRV_GetStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r0, #0	@, pStreamSegArray,
	beq	.L234	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp219, pStreamSegArray,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.36058, pStreamSegArray_7(D)->Tail
	cmp	r3, lr	@ i, D.36058
	beq	.L236	@,
	mov	ip, r3, asl #4	@ tmp217, i,
	mov	r4, r3, asl #6	@ tmp218, i,
	add	r2, ip, r4	@ tmp147, tmp217, tmp218
	add	r2, r0, r2	@ tmp148, pStreamSegArray, tmp147
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_14].SegState, pStreamSegArray_7(D)->StreamSeg[i_14].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_14].SegState,
	movwne	r6, #36409	@ tmp220,
	movtne	r6, 14563	@ tmp220,
	bne	.L231	@,
	b	.L229	@
.L242:
	add	r2, r0, r2	@ tmp155, pStreamSegArray, tmp154
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_19].SegState, pStreamSegArray_7(D)->StreamSeg[i_19].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_19].SegState,
	beq	.L229	@,
.L231:
	add	ip, r3, #1	@ D.36060, i,
	smull	r2, r3, ip, r6	@ tmp163, D.36060, tmp220
	mov	r2, ip, asr #31	@ tmp166, D.36060,
	rsb	r3, r2, r3, asr #8	@ i, tmp166,,
	mov	r2, r3, asl #10	@ tmp169, i,
	add	r3, r2, r3, lsl #7	@ tmp170, tmp169, i,
	rsb	r3, r3, ip	@ i, tmp170, D.36060
	cmp	r3, lr	@ i, D.36058
	mov	ip, r3, asl #4	@ tmp217, i,
	mov	r4, r3, asl #6	@ tmp218, i,
	add	r2, ip, r4	@ tmp154, tmp217, tmp218
	bne	.L242	@,
.L236:
	mvn	r0, #2	@ D.36056,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L229:
	add	r4, ip, r4	@ tmp161, tmp217, tmp218
	add	r3, r4, #8	@ tmp162, tmp161,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp162
	beq	.L236	@,
	mov	r3, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@, pSeg
	mov	r0, r3	@, pStreamSeg
	mov	r2, #80	@,
	bl	memcpy	@
	add	ip, r6, r4	@ tmp179, pStreamSegArray, tmp161
	mov	r3, #2	@ tmp181,
	ldr	r1, .L244	@,
	strb	r3, [ip, #12]	@ tmp181, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].SegState
	mov	r0, #26	@,
	ldr	r3, [ip, #20]	@ D.36058, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].LenInByte
	ldr	lr, [r5, #2092]	@ pStreamSegArray_7(D)->SegFreshSize, pStreamSegArray_7(D)->SegFreshSize
	ldr	r2, [r5, #2096]	@ pStreamSegArray_7(D)->SegFreshNum, pStreamSegArray_7(D)->SegFreshNum
	rsb	lr, r3, lr	@ D.36058, D.36058, pStreamSegArray_7(D)->SegFreshSize
	str	lr, [r5, #2092]	@ D.36058, pStreamSegArray_7(D)->SegFreshSize
	sub	r2, r2, #1	@ D.36058, pStreamSegArray_7(D)->SegFreshNum,
	str	r2, [r5, #2096]	@ D.36058, pStreamSegArray_7(D)->SegFreshNum
	ldr	r2, [ip, #16]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].PhyAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].PhyAddr
	ldrb	ip, [ip, #13]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].IsLastSeg, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].IsLastSeg
	str	ip, [sp]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_37].IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36056,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L234:
	mvn	r0, #0	@ D.36056,
	bx	lr	@
.L245:
	.align	2
.L244:
	.word	.LC14
	.fnend
	.size	SCDDRV_GetStreamSeg, .-SCDDRV_GetStreamSeg
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	subs	r5, r0, #0	@ pStreamSegArray, pStreamSegArray
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L266	@,
	movw	r3, #64382	@ tmp146,
	sub	r2, r1, #1152	@ D.36072, StreamID,
	movt	r3, 65535	@ tmp146,
	cmp	r2, r3	@ D.36072, tmp146
	mov	r4, r1	@ StreamID, StreamID
	bls	.L266	@,
	cmn	r1, #1	@ StreamID,
	add	r6, r5, #90112	@ tmp270, pStreamSegArray,
	beq	.L281	@,
	ldr	r3, [r6, #2056]	@ i, pStreamSegArray_15(D)->Head
	ldr	ip, [r6, #2060]	@ D.36072, pStreamSegArray_15(D)->Tail
	cmp	r3, ip	@ i, D.36072
	beq	.L254	@,
	cmp	r1, r3	@ StreamID, i
	movwne	lr, #36409	@ tmp278,
	movtne	lr, 14563	@ tmp278,
	bne	.L257	@,
	b	.L255	@
.L278:
	cmp	r4, r3	@ StreamID, i
	beq	.L255	@,
.L257:
	add	r2, r3, #1	@ D.36072, i,
	umull	r0, r1, r2, lr	@ tmp205, D.36072, tmp278
	mov	r3, r1, lsr #8	@ i,,
	mov	r1, r3, asl #10	@ tmp209, i,
	add	r3, r1, r3, lsl #7	@ tmp210, tmp209, i,
	rsb	r3, r3, r2	@ i, tmp210, D.36072
	cmp	r3, ip	@ i, D.36072
	bne	.L278	@,
.L254:
	mvn	r0, #2	@ D.36071,
.L276:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L255:
	mov	r2, r3, asl #6	@ tmp195, i,
	add	r3, r2, r3, lsl #4	@ tmp196, tmp195, i,
	add	r2, r5, r3	@ tmp197, pStreamSegArray, tmp196
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_15(D)->StreamSeg[i_72].SegState, pStreamSegArray_15(D)->StreamSeg[i_72].SegState
	cmp	r2, #2	@ pStreamSegArray_15(D)->StreamSeg[i_72].SegState,
	addeq	r3, r3, #8	@ tmp204, tmp196,
	addeq	r7, r5, r3	@ pSeg, pStreamSegArray, tmp204
	bne	.L254	@,
.L251:
	cmp	r7, #0	@ pSeg,
	beq	.L254	@,
	ldr	r3, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r2, #0	@ tmp211,
	strb	r2, [r7, #4]	@ tmp211, pSeg_6->SegState
	mov	r0, #26	@,
	ldr	r2, [r7, #8]	@ pSeg_6->PhyAddr, pSeg_6->PhyAddr
	str	r4, [sp, #4]	@ StreamID,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ pSeg_6->IsLastSeg, pSeg_6->IsLastSeg
	ldr	r1, .L284	@,
	str	ip, [sp]	@ pSeg_6->IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #2056]	@ pStreamSegArray_15(D)->Head, pStreamSegArray_15(D)->Head
	cmp	r3, r4	@ pStreamSegArray_15(D)->Head, StreamID
	beq	.L282	@,
.L259:
	ldr	r2, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.36071,
	ldr	r3, [r6, #2088]	@ pStreamSegArray_15(D)->SegTotalSize, pStreamSegArray_15(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.36072, pSeg_6->LenInByte, pStreamSegArray_15(D)->SegTotalSize
	str	r3, [r6, #2088]	@ D.36072, pStreamSegArray_15(D)->SegTotalSize
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L281:
	ldr	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r4, r3	@ StreamID, pStreamSegArray_15(D)->Tail
	beq	.L254	@,
	mov	r9, r4, asl #6	@ tmp269, StreamID,
	mov	r2, r4	@, StreamID
	add	r9, r9, r4, lsl #4	@ tmp155, tmp269, StreamID,
	ldr	r1, .L284+4	@,
	add	r7, r9, #8	@ tmp156, tmp155,
	add	r9, r5, r9	@ tmp162, pStreamSegArray, tmp155
	mov	r0, #0	@,
	add	r7, r5, r7	@ pSeg, pStreamSegArray, tmp156
	bl	dprint_vfmw	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte
	cmp	r3, #0	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte,
	movne	r8, #0	@ i,
	beq	.L253	@,
.L252:
	ldr	r3, [r9, #8]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].VirAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].VirAddr
	mov	r0, #0	@,
	ldr	r1, .L284+8	@,
	ldrb	r2, [r3, r8]	@ zero_extendqisi2	@, *_26
	add	r8, r8, #1	@ i, i,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte
	cmp	r3, r8	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[StreamID_19].LenInByte, i
	movhi	r3, #1	@ tmp188,
	movls	r3, #0	@ tmp188,
	cmp	r8, #15	@ i,
	movhi	r3, #0	@ tmp188,
	cmp	r3, #0	@ tmp188,
	bne	.L252	@,
.L253:
	ldr	r1, .L284+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L251	@
.L282:
	movw	r8, #36409	@ tmp273,
	movt	r8, 14563	@ tmp273,
	b	.L262	@
.L260:
	ldr	r2, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ pStreamSegArray_15(D)->Tail, StreamID
	beq	.L263	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState, pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState
	cmp	r2, #0	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState,
	bne	.L283	@,
.L267:
	add	r2, r4, #1	@ D.36072, StreamID,
	umull	r0, r1, r2, r8	@ tmp251, D.36072, tmp273
	mov	r4, r1, lsr #8	@ StreamID,,
	mov	r3, r4, asl #10	@ tmp255, StreamID,
	add	r4, r3, r4, lsl #7	@ tmp256, tmp255, StreamID,
	rsb	r4, r4, r2	@ StreamID, tmp256, D.36072
.L262:
	mov	r3, r4, asl #6	@ tmp235, StreamID,
	cmp	r4, #1152	@ StreamID,
	add	r3, r3, r4, lsl #4	@ tmp236, tmp235, StreamID,
	add	r3, r5, r3	@ tmp237, pStreamSegArray, tmp236
	bcc	.L260	@,
	ldr	r2, .L284+16	@,
	mov	r0, #1	@,
	ldr	r1, .L284+20	@,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r3, r4	@ pStreamSegArray_15(D)->Tail, StreamID
	bne	.L267	@,
.L263:
	ldr	r3, [r6, #2084]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufWriteAddr
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L259	@
.L283:
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r3, #16]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_68].PhyAddr, pStreamSegArray_15(D)->StreamSeg[StreamID_68].PhyAddr
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_68].PhyAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L259	@
.L266:
	mvn	r0, #0	@ D.36071,
	b	.L276	@
.L285:
	.align	2
.L284:
	.word	.LC18
	.word	.LC15
	.word	.LC17
	.word	.LC16
	.word	.LANCHOR1+16
	.word	.LC19
	.fnend
	.size	ReleaseStreamSeg, .-ReleaseStreamSeg
	.align	2
	.global	GetSegStreamSize
	.type	GetSegStreamSize, %function
GetSegStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegStreamArray
	addne	r3, r0, #90112	@ tmp117, pSegStreamArray,
	movne	r0, #0	@ D.36084,
	mvneq	r0, #0	@ D.36084,
	ldrne	r3, [r3, #2088]	@ pSegStreamArray_3(D)->SegTotalSize, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ pSegStreamArray_3(D)->SegTotalSize, *pStreamSize_7(D)
	bx	lr	@
	.fnend
	.size	GetSegStreamSize, .-GetSegStreamSize
	.align	2
	.global	GetSegStreamNum
	.type	GetSegStreamNum, %function
GetSegStreamNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #90112	@ tmp119, pSegStreamArray,
	movw	r2, #36409	@ tmp127,
	movt	r2, 14563	@ tmp127,
	ldr	r3, [r0, #2060]	@ pSegStreamArray_2(D)->Tail, pSegStreamArray_2(D)->Tail
	ldr	r0, [r0, #2056]	@ pSegStreamArray_2(D)->Head, pSegStreamArray_2(D)->Head
	add	r3, r3, #1152	@ D.36089, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.36089, pSegStreamArray_2(D)->Head, D.36089
	umull	r0, r1, r3, r2	@ tmp126, D.36089, tmp127
	mov	r0, r1, lsr #8	@ D.36090,,
	mov	r2, r0, asl #10	@ tmp130, D.36090,
	add	r0, r2, r0, lsl #7	@ tmp131, tmp130, D.36090,
	rsb	r0, r0, r3	@, tmp131, D.36089
	bx	lr	@
	.fnend
	.size	GetSegStreamNum, .-GetSegStreamNum
	.align	2
	.global	GetFreshSegStream
	.type	GetFreshSegStream, %function
GetFreshSegStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegStreamArray
	addne	r0, r0, #90112	@ tmp118, pSegStreamArray,
	ldrne	r3, [r0, #2096]	@ pSegStreamArray_2(D)->SegFreshNum, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ pSegStreamArray_2(D)->SegFreshNum, *pFreshNum_6(D)
	ldrne	r3, [r0, #2092]	@ pSegStreamArray_2(D)->SegFreshSize, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ pSegStreamArray_2(D)->SegFreshSize, *pFreshSize_10(D)
	bx	lr	@
	.fnend
	.size	GetFreshSegStream, .-GetFreshSegStream
	.align	2
	.global	SCDDRV_PrepareSleep
	.type	SCDDRV_PrepareSleep, %function
SCDDRV_PrepareSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L299	@ tmp114,
	ldr	r0, [r3, #92]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L298	@,
	ldr	r2, [r3, #84]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #92]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L298:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L300:
	.align	2
.L299:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_PrepareSleep, .-SCDDRV_PrepareSleep
	.align	2
	.global	SCDDRV_GetSleepStage
	.type	SCDDRV_GetSleepStage, %function
SCDDRV_GetSleepStage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L302	@ tmp113,
	ldr	r0, [r3, #92]	@, s_eScdDrvSleepStage
	bx	lr	@
.L303:
	.align	2
.L302:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_GetSleepStage, .-SCDDRV_GetSleepStage
	.align	2
	.global	SCDDRV_ForceSleep
	.type	SCDDRV_ForceSleep, %function
SCDDRV_ForceSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L309	@ tmp111,
	ldr	r2, [r3, #92]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #92]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L310:
	.align	2
.L309:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_ForceSleep, .-SCDDRV_ForceSleep
	.align	2
	.global	SCDDRV_ExitSleep
	.type	SCDDRV_ExitSleep, %function
SCDDRV_ExitSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L315	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3, #8]	@ D.36107, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.36107,
	beq	.L312	@,
	blx	r0	@ D.36107
.L313:
	ldr	r3, .L315+4	@ tmp113,
	mov	r2, #0	@ tmp114,
	str	r2, [r3, #92]	@ tmp114, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L312:
	movw	r2, #1032	@,
	ldr	r1, .L315+8	@,
	bl	dprint_vfmw	@
	b	.L313	@
.L316:
	.align	2
.L315:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC20
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	ResetLastUnfinishedSegInfo
	.type	ResetLastUnfinishedSegInfo, %function
ResetLastUnfinishedSegInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #163840	@ tmp113, pScdInstance,
	movw	r2, #2296	@ tmp118,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r3, #2304	@ tmp128, tmp113,
	add	r0, r0, #165888	@, pScdInstance,
	mvn	ip, #0	@ tmp114,
	mov	lr, #1	@ tmp145,
	strh	ip, [r3, r2]	@ movhi	@ tmp114, pScdInstance_2(D)->pre_scd_previous_byte_msb
	add	r0, r0, #288	@,,
	mov	r2, #0	@ tmp133,
	str	ip, [r3, #2300]	@ tmp114, pScdInstance_2(D)->pre_scd_previous_byte_lsb
	mov	r1, #80	@,
	str	ip, [r3, #2308]	@ tmp114, pScdInstance_2(D)->scd_previous_byte_lsb
	strh	ip, [r4]	@ movhi	@ tmp114, pScdInstance_2(D)->scd_previous_byte_msb
	str	lr, [r3, #2316]	@ tmp145, pScdInstance_2(D)->first_start_scd_flag
	str	r2, [r3, #2320]	@ tmp133, pScdInstance_2(D)->last_start_code_addr
	str	r2, [r3, #2324]	@ tmp133, pScdInstance_2(D)->last_unfinished_seg_size
	str	r2, [r3, #2328]	@ tmp133, pScdInstance_2(D)->roll_flag
	str	r2, [r3, #2332]	@ tmp133, pScdInstance_2(D)->roll_addr
	str	r2, [r3, #2312]	@ tmp133, pScdInstance_2(D)->seg_next_addr
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	ResetLastUnfinishedSegInfo, .-ResetLastUnfinishedSegInfo
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID
	bne	.L321	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #43376	@,
	ldr	r5, .L324	@ tmp117,
	mov	r4, r0	@ SmID, SmID
	movt	r1, 2	@,
	ldr	r0, [r5, #68]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r0, [r5, #68]	@, s_SmIIS.pSmInstArray
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r3, [r5, #68]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r4	@ D.36113, SmID
	mvn	r5, #0	@,
	add	r3, r3, #165888	@ tmp125, s_SmIIS.pSmInstArray,
	mvn	r4, #0	@ tmp126,
	strd	r4, [r3, #208]	@ tmp126, tmp125,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L321:
	mvn	r0, #0	@ D.36113,
	bx	lr	@
.L325:
	.align	2
.L324:
	.word	.LANCHOR0
	.fnend
	.size	SM_ClearInst, .-SM_ClearInst
	.align	2
	.global	SM_OpenSCDDrv
	.type	SM_OpenSCDDrv, %function
SM_OpenSCDDrv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0	@ MemAddr, MemAddr
	ldr	lr, .L341	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L341+4	@ tmp181,
	movt	ip, 4115	@ tmp141,
	mov	r8, r1	@ MemSize, MemSize
	mov	r10, r2	@ RegAddr, RegAddr
	ldr	r0, [lr, #8]	@ D.36118, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r0, #0	@ D.36118,
	beq	.L327	@,
	blx	r0	@ D.36118
.L328:
	ldr	r3, [r4, #76]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L341+4	@ tmp144,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L332	@,
	bl	ResetSCD	@
	mov	r1, #80	@,
	add	r0, r4, #12	@, tmp144,
	mov	r7, #0	@ tmp149,
	bl	__memzero	@
	add	r3, r5, #3	@ D.36119, MemAddr,
	bic	r3, r3, #3	@ D.36119, D.36119,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.36119
	str	r3, [r4, #20]	@ D.36119, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.36119
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #92]	@ tmp149, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.36121, Offset,
	mov	r2, #12288	@ tmp156,
	add	r3, r5, r3	@ D.36119, MemAddr, D.36121
	str	r2, [r4, #28]	@ tmp156, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.36119, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.36119, Offset, MemAddr
	add	r5, r5, #26112	@ D.36121, D.36119,
	add	r5, r5, #127	@ D.36121, D.36121,
	bic	r5, r5, #127	@ D.36121, D.36121,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.36119
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp161,
	str	r5, [r4, #4]	@ D.36121, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp161, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.36121
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.36120,
	str	r0, [r4, #96]	@ D.36120, g_hex_base_vir_addr
	beq	.L340	@,
	add	r6, r6, #44032	@ D.36121, Offset,
	mov	r3, #17920	@ tmp170,
	cmp	r8, r6	@ MemSize, D.36121
	str	r10, [r4, #44]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #48]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp170, g_hex_len
	blt	.L332	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L332	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L332	@,
	mov	r3, #1	@ tmp179,
	mov	r0, r7	@ D.36117, tmp149
	str	r3, [r4, #76]	@ tmp179, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L327:
	movw	r2, #1128	@,
	ldr	r1, .L341+8	@,
	bl	dprint_vfmw	@
	b	.L328	@
.L332:
	mvn	r0, #6	@ D.36117,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L340:
	movw	r2, #1161	@,
	ldr	r1, .L341+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36117,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L342:
	.align	2
.L341:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC20
	.word	.LC21
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r2, r1	@ tmp152, pSmCfg
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r2, r2, lsr #5	@ tmp152, tmp152,
	cmp	r0, #0	@ SmID,
	orrne	r2, r2, #1	@,, tmp155, tmp152
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r2, #0	@ tmp155,
	mov	r5, r1	@ pSmCfg, pSmCfg
	bne	.L360	@,
	ldr	r6, .L361	@ tmp224,
	add	r0, r6, r0, lsl #2	@ tmp159, tmp224, SmID,
	ldr	ip, [r0, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	ip, #0	@ pSmInstArray,
	beq	.L349	@,
	ldr	r3, [r1, #12]	@ D.36130, pSmCfg_8(D)->BufPhyAddr
	ldr	r2, [ip, #20]	@ pSmInstArray_13->Config.BufPhyAddr, pSmInstArray_13->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_13->Config.BufPhyAddr, D.36130
	addeq	r7, ip, #8	@ D.36137, pSmInstArray,
	addeq	r4, ip, #163840	@ tmp223, pSmInstArray,
	beq	.L348	@,
	cmp	r3, #0	@ D.36130,
	beq	.L349	@,
	ldr	r3, [r1]	@ pSmCfg_8(D)->pBufVirAddr, pSmCfg_8(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_8(D)->pBufVirAddr,
	beq	.L349	@,
	add	r0, r6, #32	@,,
	ldr	lr, [r6, #28]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	ldr	r8, [r6, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	add	r4, ip, #163840	@ tmp223, pSmInstArray,
	ldmia	r0, {r0, r1, r2}	@,,,
	mov	r3, #1152	@ tmp189,
	ldr	r7, [r6, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	str	lr, [r4, #2200]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].DownMsgSize
	str	r8, [r4, #2192]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].DownMsgPhyAddr
	str	r1, [r4, #2208]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].pUpMsgVirAddr
	str	r7, [r4, #2196]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].pDownMsgVirAddr
	str	r0, [r4, #2204]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].UpMsgPhyAddr
	str	r2, [r4, #2212]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].UpMsgSize
	str	r3, [r4, #2216]	@ tmp189, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].UpMsgNum
	ldr	r3, [r5, #12]	@ D.36130, pSmCfg_8(D)->BufPhyAddr
	ldr	r0, [r5, #8]	@ pSmCfg_8(D)->VidStd, pSmCfg_8(D)->VidStd
	add	r1, r3, #3	@ D.36130, D.36130,
	ldr	r2, [r5]	@ D.36131, pSmCfg_8(D)->pBufVirAddr
	cmp	r0, #6	@ pSmCfg_8(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.36130,
	rsb	r3, r3, r1	@ D.36130, D.36130, TmpPhyAddr
	moveq	lr, #1048576	@ D.36130,
	movne	lr, #131072	@ D.36130,
	add	r0, lr, r3	@ D.36128, D.36130, D.36130
	add	r1, lr, r1	@ D.36130, D.36130, TmpPhyAddr
	add	r2, r2, r0	@ D.36131, D.36131, D.36128
	str	r1, [r4, #2220]	@ D.36130, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].SegBufPhyAddr
	str	r2, [r4, #2188]	@ D.36131, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].pSegBufVirAddr
	ldr	r0, [r5, #16]	@ pSmCfg_8(D)->BufSize, pSmCfg_8(D)->BufSize
	sub	r0, r0, #1024	@ D.36130, pSmCfg_8(D)->BufSize,
	rsb	r3, r3, r0	@ D.36130, D.36130, D.36130
	rsb	r3, lr, r3	@ D.36130, D.36130, D.36130
	str	r3, [r4, #2224]	@ D.36130, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_13 + 166028B].SegBufSize
	cmp	r3, #262144	@ D.36130,
	bcc	.L349	@,
	add	r0, ip, #73728	@, pSmInstArray,
	add	r7, ip, #8	@ D.36137, pSmInstArray,
	add	r0, r0, #72	@,,
	bl	ConfigStreamSegArray	@
	ldr	r3, [r5, #20]	@ pSmCfg_8(D)->RegPhyBaseAddr, pSmCfg_8(D)->RegPhyBaseAddr
	mov	r0, r7	@, D.36137
	mov	r2, #40	@,
	mov	r1, r5	@, pSmCfg
	str	r3, [r6]	@ pSmCfg_8(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L348:
	mov	r0, r7	@, D.36137
	mov	r2, #40	@,
	mov	r1, r5	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp217,
	str	r3, [r4, #2292]	@ tmp217, pSmInstArray_13->UpMsgStepInWord
	ldr	r3, [r5, #8]	@ pSmCfg_8(D)->VidStd, pSmCfg_8(D)->VidStd
	cmp	r3, #2	@ pSmCfg_8(D)->VidStd,
	moveq	r0, #0	@ D.36127,
	movne	r0, #0	@ D.36127,
	moveq	r3, #3	@ tmp221,
	streq	r3, [r4, #2292]	@ tmp221, pSmInstArray_13->UpMsgStepInWord
.L345:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L349:
	mvn	r0, #0	@ D.36127,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L360:
	str	r1, [sp]	@ pSmCfg,
	mov	r3, r0	@, SmID
	movw	r2, #1220	@,
	ldr	r1, .L361+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36127,
	b	.L345	@
.L362:
	.align	2
.L361:
	.word	.LANCHOR0
	.word	.LC22
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Start
	.type	SM_Start, %function
SM_Start:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ SmID, SmID
	add	r0, sp, #4	@ tmp128,,
	bl	OSAL_LockIRQ	@
	ldr	r3, .L372	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #68]	@ D.36147, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36147,
	beq	.L364	@,
	ldr	r2, [r3, #24]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L364	@,
	add	r3, r3, #163840	@ tmp121, D.36147,
	ldr	r2, [r3, #2232]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2232]	@ tmp125, _5->Mode
.L364:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L373:
	.align	2
.L372:
	.word	.LANCHOR0
	.fnend
	.size	SM_Start, .-SM_Start
	.align	2
	.global	SM_Stop
	.type	SM_Stop, %function
SM_Stop:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L384	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #68]	@ D.36163, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36163,
	beq	.L377	@,
	add	r3, r3, #163840	@ tmp121, D.36163,
	ldr	r1, [r3, #2232]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L377	@,
	ldr	r2, [r2, #84]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2232]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L377	@,
	mvn	r0, #6	@ D.36161,
	bx	lr	@
.L377:
	mov	r0, #0	@ D.36161,
	bx	lr	@
.L385:
	.align	2
.L384:
	.word	.LANCHOR0
	.fnend
	.size	SM_Stop, .-SM_Stop
	.align	2
	.global	SM_CloseSCDDrv
	.type	SM_CloseSCDDrv, %function
SM_CloseSCDDrv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	SM_Stop	@
	bl	ResetSCD	@
	mov	r1, #80	@,
	ldr	r0, .L388	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L389:
	.align	2
.L388:
	.word	.LANCHOR0+12
	.fnend
	.size	SM_CloseSCDDrv, .-SM_CloseSCDDrv
	.align	2
	.global	SM_GetInfo
	.type	SM_GetInfo, %function
SM_GetInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	bne	.L397	@,
	ldr	r3, .L407	@ tmp135,
	ldr	r0, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L406	@,
	add	r2, r0, #163840	@ tmp187, pSmInstArray,
	cmn	r0, #48	@ pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r0, r0, #73728	@ tmp186, pSmInstArray,
	ldr	r3, [r2, #2232]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	strb	r3, [r1]	@ pSmInstArray_5->Mode, pSmInstInfo_6(D)->InstMode
	ldr	r3, [r2, #2284]	@ D.36169, pSmInstArray_5->numReadSegFail
	str	r3, [r1, #20]	@ D.36169, pSmInstInfo_6(D)->numReadSegFail
	beq	.L393	@,
	ldr	r3, [r0, #52]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Tail
	ldr	ip, [r0, #48]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Head
	subs	r3, r3, ip	@ D.36169, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].Head
	addmi	r3, r3, #1024	@ D.36169, D.36169,
	strmi	r3, [r1, #4]	@ D.36169, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
	strpl	r3, [r1, #4]	@ D.36169, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
.L395:
	ldr	r3, [r0, #68]	@ D.36169, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].RawTotalSize
	str	r3, [r1, #12]	@ D.36169, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
	ldr	ip, [r0, #60]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].FirstPacketOffset
	rsb	r3, ip, r3	@ D.36169, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 48B].FirstPacketOffset, D.36169
	str	r3, [r1, #12]	@ D.36169, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
.L393:
	ldr	r3, [r2, #2132]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Tail
	movw	r4, #36409	@ tmp165,
	ldr	ip, [r2, #2128]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Head
	movt	r4, 14563	@ tmp165,
	add	r3, r3, #1152	@ D.36172, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Tail,
	adds	r0, r0, #72	@ D.36173, tmp186,
	rsb	r3, ip, r3	@ D.36172, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].Head, D.36172
	movne	r0, #0	@ D.36168,
	umull	r4, r5, r3, r4	@ tmp164, D.36172, tmp165
	mov	lr, r5, lsr #8	@ tmp166,,
	mov	ip, lr, asl #10	@ tmp169, tmp166,
	add	ip, ip, lr, lsl #7	@ tmp170, tmp169, tmp166,
	rsb	r3, ip, r3	@ D.36174, tmp170, D.36172
	str	r3, [r1, #8]	@ D.36174, pSmInstInfo_6(D)->SegNum
	ldrne	r3, [r2, #2160]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].SegTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].SegTotalSize
	strne	r3, [r1, #16]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73800B].SegTotalSize, MEM[(HI_S32 *)pSmInstInfo_6(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L406:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L397	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_6(D)->InstMode
	mvn	r0, #0	@ D.36168,
	bx	lr	@
.L397:
	mvn	r0, #0	@ D.36168,
	bx	lr	@
.L408:
	.align	2
.L407:
	.word	.LANCHOR0
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	GetRawNumInFrame
	.type	GetRawNumInFrame, %function
GetRawNumInFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r6, r0, #73728	@ tmp163, pRawPacketArray,
	mov	lr, #1	@ tmp139,
	ldr	r3, [r6]	@ index, pRawPacketArray_6(D)->Head
	mov	r7, r3, asl #3	@ tmp164, index,
	mov	r5, r3, asl #6	@ tmp165, index,
	add	ip, r7, r5	@ tmp135, tmp164, tmp165
	add	ip, r0, ip	@ tmp136, pRawPacketArray, tmp135
	ldr	ip, [ip, #8]	@ pRawPacketArray_6(D)->RawPacket[index_8].Length, pRawPacketArray_6(D)->RawPacket[index_8].Length
	str	ip, [r2]	@ pRawPacketArray_6(D)->RawPacket[index_8].Length, *pTotalLength_11(D)
	str	lr, [r1]	@ tmp139, *pRawNum_13(D)
	b	.L410	@
.L412:
	ldr	r4, [r1]	@ *pRawNum_13(D), *pRawNum_13(D)
	add	r4, r4, #1	@ D.36179, *pRawNum_13(D),
	str	r4, [r1]	@ D.36179, *pRawNum_13(D)
	ldr	ip, [lr, #8]	@ pRawPacketArray_6(D)->RawPacket[index_20].Length, pRawPacketArray_6(D)->RawPacket[index_20].Length
	ldr	lr, [r2]	@ *pTotalLength_11(D), *pTotalLength_11(D)
	add	lr, lr, ip	@ D.36179, *pTotalLength_11(D), pRawPacketArray_6(D)->RawPacket[index_20].Length
	str	lr, [r2]	@ D.36179, *pTotalLength_11(D)
	ldr	ip, [r6, #4]	@ pRawPacketArray_6(D)->Tail, pRawPacketArray_6(D)->Tail
	cmp	ip, r3	@ pRawPacketArray_6(D)->Tail, index
	beq	.L414	@,
	ldr	ip, [r1]	@ *pRawNum_13(D), *pRawNum_13(D)
	cmp	ip, #1024	@ *pRawNum_13(D),
	bhi	.L414	@,
.L410:
	add	ip, r7, r5	@ tmp158, tmp164, tmp165
	add	r3, r3, #1	@ D.36179, index,
	add	ip, r0, ip	@ tmp159, pRawPacketArray, tmp158
	ubfx	r3, r3, #0, #10	@ index, D.36179,,
	ldrb	ip, [ip, #52]	@ zero_extendqisi2	@ pRawPacketArray_6(D)->RawPacket[index_1].is_not_last_packet_flag, pRawPacketArray_6(D)->RawPacket[index_1].is_not_last_packet_flag
	mov	r7, r3, asl #3	@ tmp164, index,
	mov	r5, r3, asl #6	@ tmp165, index,
	cmp	ip, #0	@ pRawPacketArray_6(D)->RawPacket[index_1].is_not_last_packet_flag,
	add	lr, r7, r5	@ tmp145, tmp164, tmp165
	add	lr, r0, lr	@ tmp146, pRawPacketArray, tmp145
	bne	.L412	@,
	mov	r0, ip	@ D.36177, pRawPacketArray_6(D)->RawPacket[index_1].is_not_last_packet_flag
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L414:
	mvn	r0, #3	@ D.36177,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	GetRawNumInFrame, .-GetRawNumInFrame
	.align	2
	.global	AdjustRawPacketVP6A
	.type	AdjustRawPacketVP6A, %function
AdjustRawPacketVP6A:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	ip, r0, #73728	@ tmp134, pRawPacketArray,
	ldr	r7, [r1]	@ D.36187, *pRawNum_11(D)
	ldr	ip, [ip]	@ index, pRawPacketArray_13(D)->Head
	cmp	r7, #0	@ D.36187,
	beq	.L421	@,
	mov	r6, ip, asl #3	@ tmp157, index,
	mov	r8, ip, asl #6	@ tmp158, index,
	add	lr, r6, r8	@ tmp138, tmp157, tmp158
	add	lr, r0, lr	@ tmp139, pRawPacketArray, tmp138
	ldr	r4, [lr, #8]	@ SrcLength, pRawPacketArray_13(D)->RawPacket[index_15].Length
	cmp	r4, #2	@ SrcLength,
	bgt	.L422	@,
	mov	lr, r4	@ D.36186, SrcLength
	mov	r9, #3	@ offset,
	mov	r5, #0	@ i,
	b	.L419	@
.L420:
	add	lr, r0, lr	@ tmp145, pRawPacketArray, tmp144
	ldr	lr, [lr, #8]	@ D.36186, pRawPacketArray_13(D)->RawPacket[index_21].Length
	add	r4, r4, lr	@ SrcLength, SrcLength, D.36186
	cmp	r4, #2	@ SrcLength,
	bgt	.L418	@,
.L419:
	add	ip, ip, #1	@ D.36187, index,
	add	r5, r5, #1	@ i, i,
	ubfx	ip, ip, #0, #10	@ index, D.36187,,
	cmp	r5, r7	@ i, D.36187
	rsb	r9, lr, r9	@ offset, D.36186, offset
	mov	r6, ip, asl #3	@ tmp157, index,
	mov	r8, ip, asl #6	@ tmp158, index,
	add	lr, r6, r8	@ tmp144, tmp157, tmp158
	bne	.L420	@,
.L421:
	mvn	r0, #3	@ D.36185,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L422:
	mov	r9, #3	@ D.36189,
	mov	r5, #0	@ i,
.L418:
	add	r6, r6, r8	@ tmp151, tmp157, tmp158
	rsb	r5, r5, r7	@ D.36187, i, D.36187
	add	r6, r0, r6	@ tmp152, pRawPacketArray, tmp151
	str	r5, [r1]	@ D.36187, *pRawNum_11(D)
	sub	r4, r4, #3	@ SrcLength, SrcLength,
	mov	r0, #0	@ D.36185,
	ldr	r1, [r6, #4]	@ pRawPacketArray_13(D)->RawPacket[index_47].VirAddr, pRawPacketArray_13(D)->RawPacket[index_47].VirAddr
	add	r9, r1, r9	@ D.36188, pRawPacketArray_13(D)->RawPacket[index_47].VirAddr, D.36189
	str	r9, [r2]	@ D.36188, *pSrcVirAddr_31(D)
	str	r4, [r3]	@ SrcLength, *pSrcLength_33(D)
	ldr	r3, [sp, #28]	@ tmp160, pIndex
	str	ip, [r3]	@ index, *pIndex_36(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	AdjustRawPacketVP6A, .-AdjustRawPacketVP6A
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L463	@ tmp185,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp187, tmp185, SmID,
	.pad #36
	sub	sp, sp, #36	@,,
	ldr	r5, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L445	@,
	add	r7, r5, #73728	@ tmp377, pSmInstArray,
	add	r3, r5, #48	@ pRawPacketArray, pSmInstArray,
	cmn	r7, #72	@ tmp377,
	cmnne	r5, #48	@, pSmInstArray,
	str	r3, [sp, #12]	@ pRawPacketArray, %sfp
	add	r2, r7, #72	@ pStreamSegArray, tmp377,
	str	r2, [sp, #8]	@ pStreamSegArray, %sfp
	moveq	r3, #1	@ tmp194,
	movne	r3, #0	@ tmp194,
	cmp	r1, #0	@ pStreamSeg,
	orreq	r3, r3, #1	@,, tmp200, tmp194
	cmp	r3, #0	@ tmp200,
	bne	.L445	@,
	ldr	r8, [r7, #52]	@ D.36201, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].Tail
	ldr	r3, [r7, #48]	@ D.36201, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].Head
	cmp	r8, r3	@ D.36201, D.36201
	beq	.L460	@,
	mov	r2, r3, asl #3	@ tmp378, index,
	mov	ip, r3, asl #6	@ tmp379, index,
	add	lr, r2, ip	@ tmp208, tmp378, tmp379
	mov	r6, #1	@ RawNum,
	add	lr, r5, lr	@ tmp209, pSmInstArray, tmp208
	str	ip, [sp, #4]	@ tmp379, %sfp
	mov	r4, r2	@ tmp382, tmp378
	ldr	fp, [lr, #56]	@ TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_87].Length
	b	.L428	@
.L430:
	add	r6, r6, #1	@ RawNum, RawNum,
	ldr	r9, [r10, #56]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_92].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_92].Length
	cmp	r6, #1024	@ RawNum,
	add	fp, fp, r9	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_92].Length
	movls	lr, #0	@ tmp221,
	movhi	lr, #1	@ tmp221,
	cmp	r3, r8	@ index, D.36201
	orreq	lr, lr, #1	@,, tmp224, tmp221
	cmp	lr, #0	@ tmp224,
	bne	.L460	@,
.L428:
	add	lr, r4, ip	@ tmp228, tmp382, tmp383
	add	r3, r3, #1	@ D.36202, index,
	add	lr, r5, lr	@ tmp229, pSmInstArray, tmp228
	ubfx	r3, r3, #0, #10	@ index, D.36202,,
	ldrb	r9, [lr, #100]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_90].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_90].is_not_last_packet_flag
	mov	r4, r3, asl #3	@ tmp382, index,
	mov	ip, r3, asl #6	@ tmp383, index,
	cmp	r9, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_90].is_not_last_packet_flag,
	add	r10, r4, ip	@ tmp214, tmp382, tmp383
	add	r10, r5, r10	@ tmp215, pSmInstArray, tmp214
	bne	.L430	@,
	str	r0, [sp, #28]	@ SmID, %sfp
	mov	r10, r1	@ pStreamSeg, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	str	r2, [sp, #16]	@ tmp378, %sfp
	bl	ResetStreamSegArray	@
	add	r3, r5, #163840	@ tmp375, pSmInstArray,
	ldr	r2, [sp, #16]	@ tmp378, %sfp
	ldr	r1, [r3, #2148]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_8 + 73800B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_8 + 73800B].SegBufSize
	cmp	fp, r1	@ TotalSrcLength, MEM[(struct SEG_ARRAY_S *)pSmInstArray_8 + 73800B].SegBufSize
	bhi	.L461	@,
	ldr	r1, [sp, #4]	@ tmp379, %sfp
	ldr	r0, [r5, #16]	@ pSmInstArray_8->Config.VidStd, pSmInstArray_8->Config.VidStd
	add	r1, r2, r1	@ tmp243, tmp378, tmp379
	ldr	lr, [r3, #2144]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_8 + 73800B].SegBufPhyAddr
	add	r1, r5, r1	@ tmp244, pSmInstArray, tmp243
	sub	r0, r0, #12	@ tmp261, pSmInstArray_8->Config.VidStd,
	clz	r0, r0	@ tmp261, tmp261
	ldr	r3, [r7, #72]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_8 + 73800B].pSegBufVirAddr
	ldr	r4, [r1, #56]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].Length
	mov	r0, r0, lsr #5	@ tmp261, tmp261,
	ldr	r1, [r1, #52]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].VirAddr
	cmp	r4, #0	@ SrcLength,
	ldr	r7, [r7, #48]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].Head
	moveq	r0, #0	@ tmp261,
	cmp	r0, #0	@ tmp261,
	beq	.L432	@,
	cmp	r6, #0	@ RawNum,
	beq	.L460	@,
	mov	ip, r7, asl #3	@ tmp380, index,
	mov	r8, r7, asl #6	@ tmp381, index,
	add	r1, ip, r8	@ tmp265, tmp380, tmp381
	add	r1, r5, r1	@ tmp266, pSmInstArray, tmp265
	ldr	r4, [r1, #56]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_33].Length
	cmp	r4, #2	@ SrcLength,
	bgt	.L446	@,
	mov	r0, r4	@ D.36201, SrcLength
	mov	r1, #3	@ offset,
	b	.L435	@
.L436:
	add	r0, r5, r0	@ tmp272, pSmInstArray, tmp271
	ldr	r0, [r0, #56]	@ D.36201, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_112].Length
	add	r4, r4, r0	@ SrcLength, SrcLength, D.36201
	cmp	r4, #2	@ SrcLength,
	bgt	.L462	@,
.L435:
	add	r7, r7, #1	@ D.36202, index,
	add	r9, r9, #1	@ i, i,
	ubfx	r7, r7, #0, #10	@ index, D.36202,,
	cmp	r9, r6	@ i, RawNum
	rsb	r1, r0, r1	@ offset, D.36201, offset
	mov	ip, r7, asl #3	@ tmp380, index,
	mov	r8, r7, asl #6	@ tmp381, index,
	add	r0, ip, r8	@ tmp271, tmp380, tmp381
	bne	.L436	@,
.L460:
	mvn	r0, #3	@ D.36199,
.L426:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L462:
	mov	r0, r1	@ D.36208, offset
.L433:
	add	r1, ip, r8	@ tmp277, tmp380, tmp381
	rsb	r6, r9, r6	@ RawNum, i, RawNum
	add	r1, r5, r1	@ tmp278, pSmInstArray, tmp277
	sub	r4, r4, #3	@ SrcLength, SrcLength,
	ldr	r1, [r1, #52]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_158].VirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_158].VirAddr
	add	r1, r1, r0	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_158].VirAddr, D.36208
.L432:
	str	lr, [r10, #8]	@ TmpPhyAddr, pStreamSeg_15(D)->PhyAddr
	mov	r0, lr	@, TmpPhyAddr
	str	r2, [sp, #24]	@ tmp378, %sfp
	str	r1, [sp, #20]	@ SrcVirAddr, %sfp
	str	r3, [sp, #16]	@ TmpVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r3, [sp, #4]	@ tmp379, %sfp
	cmp	r6, #0	@ RawNum,
	ldr	r2, [sp, #24]	@ tmp378, %sfp
	ldr	r1, [sp, #20]	@ SrcVirAddr, %sfp
	add	r2, r2, r3	@ tmp285, tmp378, tmp379
	ldr	r3, [sp, #16]	@ TmpVirAddr, %sfp
	add	r2, r5, r2	@ tmp286, pSmInstArray, tmp285
	str	r0, [r10]	@ D.36204, pStreamSeg_15(D)->VirAddr
	rsb	r0, r0, r3	@ D.36201, D.36204, TmpVirAddr
	str	r0, [r10, #12]	@ D.36201, pStreamSeg_15(D)->LenInByte
	mov	r0, #1	@ tmp300,
	ldrd	r8, [r2, #64]	@ D.36205, tmp286,
	strd	r8, [r10, #24]	@ D.36205, pStreamSeg,
	ldrd	r8, [r2, #64]	@ D.36205, tmp286,
	strd	r8, [r10, #32]	@ D.36205, pStreamSeg,
	ldrd	r8, [r2, #80]	@ D.36205, tmp286,
	strb	r0, [r10, #5]	@ tmp300, pStreamSeg_15(D)->IsLastSeg
	strd	r8, [r10, #40]	@ D.36205, pStreamSeg,
	ldrd	r8, [r2, #88]	@ D.36205, tmp286,
	strd	r8, [r10, #48]	@ D.36205, pStreamSeg,
	ldr	r0, [r2, #104]	@ D.36202, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].DispEnableFlag
	str	r0, [r10, #56]	@ D.36202, pStreamSeg_15(D)->DispEnableFlag
	ldr	r0, [r2, #108]	@ D.36202, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].DispFrameDistance
	str	r0, [r10, #60]	@ D.36202, pStreamSeg_15(D)->DispFrameDistance
	ldr	r0, [r2, #112]	@ D.36202, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].DistanceBeforeFirstFrame
	str	r0, [r10, #64]	@ D.36202, pStreamSeg_15(D)->DistanceBeforeFirstFrame
	ldr	r2, [r2, #116]	@ D.36202, MEM[(struct STREAM_DATA_S *)pSmInstArray_8 + 48B].RawPacket[_17].GopNum
	str	r2, [r10, #68]	@ D.36202, pStreamSeg_15(D)->GopNum
	beq	.L441	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	r3, #0	@, TmpVirAddr,
	beq	.L460	@,
	mov	ip, r7, asl #3	@ tmp380, index,
	str	fp, [sp, #4]	@ TotalSrcLength, %sfp
	mov	r8, r7, asl #6	@ tmp381, index,
	mov	fp, r5	@ pSmInstArray, pSmInstArray
	mov	r9, #0	@ i,
	mov	r5, ip	@ tmp380, tmp380
	b	.L439	@
.L440:
	cmp	r3, #0	@ TmpVirAddr,
	cmpne	r1, #0	@, SrcVirAddr,
	beq	.L460	@,
.L439:
	mov	r2, r4	@, SrcLength
	mov	r0, r3	@, TmpVirAddr
	bl	memcpy	@
	add	r7, r7, #1	@ D.36202, index,
	add	r5, r5, r8	@ tmp353, tmp380, tmp381
	ubfx	r7, r7, #0, #10	@ index, D.36202,,
	add	r2, fp, r5	@ tmp354, pSmInstArray, tmp353
	add	r9, r9, #1	@ i, i,
	mov	r5, r7, asl #3	@ tmp380, index,
	mov	r8, r7, asl #6	@ tmp381, index,
	ldr	r1, [r10, #12]	@ pStreamSeg_15(D)->LenInByte, pStreamSeg_15(D)->LenInByte
	cmp	r9, r6	@ i, RawNum
	mov	r3, r0	@ TmpVirAddr,
	ldrb	r0, [r2, #101]	@ zero_extendqisi2	@ D.36206, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_169].is_stream_end_flag
	add	r2, r5, r8	@ tmp362, tmp380, tmp381
	add	r3, r3, r4	@ TmpVirAddr, TmpVirAddr, SrcLength
	add	r2, fp, r2	@ tmp363, pSmInstArray, tmp362
	add	r4, r1, r4	@ D.36202, pStreamSeg_15(D)->LenInByte, SrcLength
	strb	r0, [r10, #6]	@ D.36206, pStreamSeg_15(D)->IsStreamEnd
	str	r4, [r10, #12]	@ D.36202, pStreamSeg_15(D)->LenInByte
	ldr	r1, [r2, #52]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_73].VirAddr
	ldr	r4, [r2, #56]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_73].Length
	bne	.L440	@,
	ldr	fp, [sp, #4]	@ TotalSrcLength, %sfp
.L441:
	ldr	r2, [sp, #28]	@, %sfp
	mov	r1, r10	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, fp	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36199,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L461:
	mov	r2, fp	@, TotalSrcLength
	ldr	r1, .L463+4	@,
	mov	r0, r9	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_90].is_not_last_packet_flag
	bl	dprint_vfmw	@
	mov	r1, fp	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L460	@,
	mov	r0, r9	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_8 + 48B].RawPacket[index_90].is_not_last_packet_flag
	movw	r2, #1480	@,
	ldr	r1, .L463+8	@,
	bl	dprint_vfmw	@
	b	.L460	@
.L445:
	mvn	r0, #0	@ D.36199,
	b	.L426	@
.L446:
	mov	r0, #3	@ D.36208,
	b	.L433	@
.L464:
	.align	2
.L463:
	.word	.LANCHOR0
	.word	.LC23
	.word	.LC24
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SCDDRV_SaveSegStream
	.type	SCDDRV_SaveSegStream, %function
SCDDRV_SaveSegStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L470	@ tmp115,
	ldr	r3, [r3]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	bxeq	lr	@
	ldr	r3, .L470+4	@ tmp117,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r0, r3	@ SmID, save_seg_chan_num
	bxne	lr	@
	mov	r0, r1	@, pStreamSeg
	b	SCDDRV_SaveSegStream.part.4	@
.L471:
	.align	2
.L470:
	.word	vfmw_save_seg_file
	.word	save_seg_chan_num
	.fnend
	.size	SCDDRV_SaveSegStream, .-SCDDRV_SaveSegStream
	.align	2
	.global	SCDDRV_IsSCDByPass
	.type	SCDDRV_IsSCDByPass, %function
SCDDRV_IsSCDByPass:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bics	r3, r0, #16	@ D.36227, VidStd,
	beq	.L477	@,
	sub	r3, r0, #2	@ D.36224, VidStd,
	cmp	r0, #6	@ VidStd,
	cmpne	r3, #1	@, D.36224,
	movls	r3, #1	@ tmp129,
	movhi	r3, #0	@ tmp129,
	bls	.L476	@,
	cmp	r0, #1	@ VidStd,
	beq	.L478	@,
.L474:
	subs	r0, r0, #15	@ D.36223, VidStd,
	movne	r0, #1	@ D.36223,
	bx	lr	@
.L478:
	ldr	r2, [r1]	@ pStdExt_8(D)->Vc1Ext.IsAdvProfile, pStdExt_8(D)->Vc1Ext.IsAdvProfile
	cmp	r2, #0	@ pStdExt_8(D)->Vc1Ext.IsAdvProfile,
	beq	.L474	@,
.L477:
	mov	r0, r3	@ D.36223, tmp129
	bx	lr	@
.L476:
	mov	r0, #0	@ D.36223,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsSCDByPass, .-SCDDRV_IsSCDByPass
	.align	2
	.type	SCDDRV_SaveRawStream.part.7, %function
SCDDRV_SaveRawStream.part.7:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pSmInstArray, pSmInstArray
	ldr	r6, [r5, #16]	@ eStd, pSmInstArray_1(D)->Config.VidStd
	mov	r4, r1	@ pRawPacket, pRawPacket
	ldr	r0, .L486	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r1, r5, #32	@, pSmInstArray,
	mov	r0, r6	@, eStd
	ldr	r5, .L486+4	@ tmp132,
	bl	SCDDRV_IsSCDByPass	@
	cmp	r0, #0	@,
	bne	.L485	@,
.L480:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldmib	r4, {r0, r1}	@ pRawPacket,,
	bl	klib_fwrite	@
	ldr	r0, .L486	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinLockIRQ	@
.L485:
	mov	r1, #4	@,
	ldr	r0, [r4, #8]	@, pRawPacket_5(D)->Length
	ldr	r2, [r5]	@, vfmw_save_str_file
	bl	klib_fwrite	@
	b	.L480	@
.L487:
	.align	2
.L486:
	.word	g_TaskLock
	.word	vfmw_save_str_file
	.fnend
	.size	SCDDRV_SaveRawStream.part.7, .-SCDDRV_SaveRawStream.part.7
	.align	2
	.global	SM_ReadSegStream
	.type	SM_ReadSegStream, %function
SM_ReadSegStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L504	@ tmp131,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp133, tmp131, SmID,
	ldr	r4, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L492	@,
	mov	r7, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ SmID, SmID
	add	r1, r4, #32	@, pSmInstArray,
	ldr	r0, [r4, #16]	@, pSmInstArray_7->Config.VidStd
	bl	SCDDRV_IsSCDByPass	@
	cmp	r0, #0	@,
	beq	.L490	@,
	mov	r1, r7	@, pStreamSeg
	mov	r0, r6	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	bne	.L502	@,
.L490:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r7	@, pStreamSeg
	add	r0, r0, #72	@,,
	bl	SCDDRV_GetStreamSeg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L491	@,
	ldr	r3, .L504+4	@ tmp157,
	add	r4, r4, #163840	@ tmp155, pSmInstArray,
	str	r5, [r4, #2284]	@ Ret, pSmInstArray_7->numReadSegFail
	ldr	r0, [r3]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r0, #0	@ vfmw_save_seg_file,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, .L504+8	@ tmp159,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r6, r3	@ SmID, save_seg_chan_num
	beq	.L503	@,
	mov	r0, r5	@ D.36238, Ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L491:
	add	r4, r4, #163840	@ tmp162, pSmInstArray,
	mov	r0, r5	@ D.36238, Ret
	ldr	r3, [r4, #2284]	@ pSmInstArray_7->numReadSegFail, pSmInstArray_7->numReadSegFail
	add	r3, r3, #1	@ D.36241, pSmInstArray_7->numReadSegFail,
	str	r3, [r4, #2284]	@ D.36241, pSmInstArray_7->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L503:
	mov	r0, r7	@, pStreamSeg
	bl	SCDDRV_SaveSegStream.part.4	@
	mov	r0, r5	@ D.36238, Ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L502:
	add	r4, r4, #163840	@ tmp147, pSmInstArray,
	ldr	r1, .L504+12	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #2284]	@ pSmInstArray_7->numReadSegFail, pSmInstArray_7->numReadSegFail
	mvn	r0, #6	@ D.36238,
	add	r3, r3, #1	@ D.36241, pSmInstArray_7->numReadSegFail,
	str	r3, [r4, #2284]	@ D.36241, pSmInstArray_7->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L492:
	mvn	r0, #0	@ D.36238,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L505:
	.align	2
.L504:
	.word	.LANCHOR0
	.word	vfmw_save_seg_file
	.word	save_seg_chan_num
	.word	.LC25
	.fnend
	.size	SM_ReadSegStream, .-SM_ReadSegStream
	.align	2
	.global	SM_ReleaseStreamSeg
	.type	SM_ReleaseStreamSeg, %function
SM_ReleaseStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L508	@ tmp117,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp117, SmID,
	ldr	r0, [r0, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L507	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #72	@,,
	b	ReleaseStreamSeg	@
.L507:
	mvn	r0, #0	@,
	bx	lr	@
.L509:
	.align	2
.L508:
	.word	.LANCHOR0
	.fnend
	.size	SM_ReleaseStreamSeg, .-SM_ReleaseStreamSeg
	.align	2
	.global	SM_GiveThreadEvent
	.type	SM_GiveThreadEvent, %function
SM_GiveThreadEvent:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L511	@,
	b	OSAL_GiveEvent	@
.L512:
	.align	2
.L511:
	.word	g_IntEvent
	.fnend
	.size	SM_GiveThreadEvent, .-SM_GiveThreadEvent
	.align	2
	.global	CalcInstBlockTime
	.type	CalcInstBlockTime, %function
CalcInstBlockTime:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ FirstCalc, FirstCalc
	mov	r4, r0	@ pSmInstArray, pSmInstArray
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r3, r4, #163840	@ tmp118, pSmInstArray,
	mov	r1, r0	@ CurTimeInMS,
	bne	.L518	@,
	ldr	r2, [r3, #2248]	@ D.36255, pSmInstArray_6(D)->LastBlockTime
	cmp	r0, r2	@ CurTimeInMS, D.36255
	strls	r5, [r3, #2244]	@ FirstCalc, pSmInstArray_6(D)->BlockTimeInMs
	rsbhi	r0, r2, r0	@ D.36255, D.36255, CurTimeInMS
	strls	r1, [r3, #2248]	@ CurTimeInMS, pSmInstArray_6(D)->LastBlockTime
	strhi	r0, [r3, #2244]	@ D.36255, pSmInstArray_6(D)->BlockTimeInMs
	movls	r0, r5	@ D.36256, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L518:
	mov	r2, #0	@ tmp119,
	str	r1, [r3, #2248]	@ CurTimeInMS, pSmInstArray_6(D)->LastBlockTime
	mov	r0, r2	@ D.36256, tmp119
	str	r2, [r3, #2244]	@ tmp119, pSmInstArray_6(D)->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	CalcInstBlockTime, .-CalcInstBlockTime
	.align	2
	.global	SetInstMode
	.type	SetInstMode, %function
SetInstMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L522	@ tmp120,
	sub	ip, r1, #1	@ D.36260, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.36260,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.36259,
	streq	r1, [r2, #2232]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L523:
	.align	2
.L522:
	.word	.LANCHOR0
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	SCDDRV_GetRawStreamStatus
	.type	SCDDRV_GetRawStreamStatus, %function
SCDDRV_GetRawStreamStatus:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pRawStreamArray
	bxeq	lr	@
	add	r0, r0, #73728	@ tmp121, pRawStreamArray,
	ldr	r3, [r0, #20]	@ D.36264, pRawStreamArray_2(D)->RawTotalSize
	str	r3, [r1]	@ D.36264, MEM[(HI_S32 *)pTotalRawSize_3(D)]
	ldr	ip, [r0, #12]	@ pRawStreamArray_2(D)->FirstPacketOffset, pRawStreamArray_2(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ D.36264, pRawStreamArray_2(D)->FirstPacketOffset, D.36264
	str	r3, [r1]	@ D.36264, MEM[(HI_S32 *)pTotalRawSize_3(D)]
	ldmia	r0, {r1, r3}	@ tmp121,,
	subs	r3, r3, r1	@ D.36264, pRawStreamArray_2(D)->Tail, pRawStreamArray_2(D)->Head
	addmi	r3, r3, #1024	@ D.36264, D.36264,
	str	r3, [r2]	@ D.36264, MEM[(HI_S32 *)pTotalRawNum_5(D)]
	bx	lr	@
	.fnend
	.size	SCDDRV_GetRawStreamStatus, .-SCDDRV_GetRawStreamStatus
	.align	2
	.global	GetFreeSegBufSize
	.type	GetFreeSegBufSize, %function
GetFreeSegBufSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pLength,
	cmpne	r0, #0	@, pStreamSegArray,
	bxeq	lr	@
	b	GetFreeSegBufSize.part.6	@
	.fnend
	.size	GetFreeSegBufSize, .-GetFreeSegBufSize
	.align	2
	.global	SCDDRV_GetSegStreamStatus
	.type	SCDDRV_GetSegStreamStatus, %function
SCDDRV_GetSegStreamStatus:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r2, #0	@ pFreeSegBufSize,
	cmpne	r0, #0	@, pStreamSegArray,
	ldr	r6, [sp, #24]	@ pIsFreeSegBufSizeFixed, pIsFreeSegBufSizeFixed
	mov	r4, r3	@ pFreeSegSlotNum, pFreeSegSlotNum
	mov	r7, r1	@ LastUnfinishedSegSize, LastUnfinishedSegSize
	mov	r3, #0	@ tmp132,
	mov	r8, r2	@ pFreeSegBufSize, pFreeSegBufSize
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	str	r3, [r6]	@ tmp132, *pIsFreeSegBufSizeFixed_4(D)
	bne	.L538	@,
.L533:
	ldr	ip, [r8]	@ D.36271, *pFreeSegBufSize_7(D)
	add	r3, r7, #79	@ D.36271, LastUnfinishedSegSize,
	add	r0, r5, #90112	@ tmp169, pStreamSegArray,
	cmp	ip, r3	@ D.36271, D.36271
	movwcs	lr, #65457	@ D.36271,
	movcc	ip, #0	@ D.36270,
	movtcs	lr, 65535	@ D.36271,
	rsbcs	lr, r7, lr	@ D.36271, LastUnfinishedSegSize, D.36271
	addcs	ip, lr, ip	@ D.36270, D.36271, D.36271
	str	ip, [r8]	@ D.36270, *pFreeSegBufSize_7(D)
	ldr	r3, [r0, #2076]	@ pStreamSegArray_6(D)->SegBufSize, pStreamSegArray_6(D)->SegBufSize
	rsb	r3, r3, r3, lsl #3	@ D.36271, pStreamSegArray_6(D)->SegBufSize, pStreamSegArray_6(D)->SegBufSize,
	cmp	r7, r3, lsr #3	@ LastUnfinishedSegSize, D.36271,
	addcs	ip, ip, r7	@ D.36271, D.36270, LastUnfinishedSegSize
	strcs	ip, [r8]	@ D.36271, *pFreeSegBufSize_7(D)
	movcs	r3, #1	@ tmp151,
	strcs	r3, [r6]	@ tmp151, *pIsFreeSegBufSizeFixed_4(D)
	ldr	r2, [r0, #2060]	@ pStreamSegArray_6(D)->Tail, pStreamSegArray_6(D)->Tail
	movw	r3, #36409	@ tmp162,
	ldr	r1, [r0, #2056]	@ pStreamSegArray_6(D)->Head, pStreamSegArray_6(D)->Head
	movt	r3, 14563	@ tmp162,
	add	r2, r2, #1152	@ D.36271, pStreamSegArray_6(D)->Tail,
	rsb	r2, r1, r2	@ D.36271, pStreamSegArray_6(D)->Head, D.36271
	umull	r0, r1, r2, r3	@ tmp161, D.36271, tmp162
	mov	r1, r1, lsr #8	@ tmp160,,
	mov	r3, r1, asl #10	@ tmp165, tmp160,
	add	r3, r3, r1, lsl #7	@ tmp166, tmp165, tmp160,
	rsb	r2, r3, r2	@ D.36270, tmp166, D.36271
	rsb	r2, r2, #1152	@ D.36271, D.36270,
	str	r2, [r4]	@ D.36271, *pFreeSegSlotNum_22(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L538:
	mov	r1, r2	@, pFreeSegBufSize
	bl	GetFreeSegBufSize.part.6	@
	b	.L533	@
	.fnend
	.size	SCDDRV_GetSegStreamStatus, .-SCDDRV_GetSegStreamStatus
	.align	2
	.global	SCDDRV_IsRawStreamNotEnough
	.type	SCDDRV_IsRawStreamNotEnough, %function
SCDDRV_IsRawStreamNotEnough:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ TotalRawNum,
	cmpne	r0, #3	@, TotalRawSize,
	movls	r0, #1	@,
	movhi	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsRawStreamNotEnough, .-SCDDRV_IsRawStreamNotEnough
	.align	2
	.global	SCDDRV_IsFreeSegSlotNotEnough
	.type	SCDDRV_IsFreeSegSlotNotEnough, %function
SCDDRV_IsFreeSegSlotNotEnough:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #288	@ FreeSegSlotNum,
	movhi	r0, #0	@,
	movls	r0, #1	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsFreeSegSlotNotEnough, .-SCDDRV_IsFreeSegSlotNotEnough
	.align	2
	.global	SCDDRV_IsFreeSegBufNotEnough
	.type	SCDDRV_IsFreeSegBufNotEnough, %function
SCDDRV_IsFreeSegBufNotEnough:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1, lsr #3	@ FreeSegBufSize, TotalSegBufSize,
	movls	r0, #1	@,
	movhi	r0, #0	@,
	bx	lr	@
	.fnend
	.size	SCDDRV_IsFreeSegBufNotEnough, .-SCDDRV_IsFreeSegBufNotEnough
	.align	2
	.global	SCDDRV_CheckConditionOfStartSCD
	.type	SCDDRV_CheckConditionOfStartSCD, %function
SCDDRV_CheckConditionOfStartSCD:
	.fnstart
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray
	beq	.L546	@,
	add	r0, r0, #73728	@ tmp134, pRawStreamArray,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pStreamSegArray, pStreamSegArray
	ldr	ip, [r0, #20]	@ D.36290, pRawStreamArray_5(D)->RawTotalSize
	.pad #8
	sub	sp, sp, #8	@,,
	str	ip, [r3]	@ D.36290, MEM[(HI_S32 *)pTotalRawSize_6(D)]
	ldr	r1, [r0, #12]	@ pRawStreamArray_5(D)->FirstPacketOffset, pRawStreamArray_5(D)->FirstPacketOffset
	rsb	ip, r1, ip	@ D.36290, pRawStreamArray_5(D)->FirstPacketOffset, D.36290
	str	ip, [r3]	@ D.36290, MEM[(HI_S32 *)pTotalRawSize_6(D)]
	ldmia	r0, {r1, ip}	@ tmp134,,
	rsb	ip, r1, ip	@ D.36290, pRawStreamArray_5(D)->Head, pRawStreamArray_5(D)->Tail
	cmp	ip, #0	@ D.36290,
	blt	.L544	@,
	moveq	ip, #1	@ D.36291,
	movne	ip, #0	@ D.36291,
.L545:
	ldr	r3, [r3]	@ *pTotalRawSize_6(D), *pTotalRawSize_6(D)
	cmp	r3, #3	@ *pTotalRawSize_6(D),
	orrls	ip, ip, #1	@,, tmp154, D.36291
	cmp	ip, #0	@ tmp154,
	mvnne	r0, #4	@ D.36288,
	bne	.L543	@,
	ldr	r3, [sp, #24]	@ tmp164, pIsFreeSegBufSizeFixed
	mov	r1, r2	@ LastUnfinishedSegSize, LastUnfinishedSegSize
	mov	r0, r4	@, pStreamSegArray
	ldr	r2, [sp, #16]	@, pFreeSegBufSize
	str	r3, [sp]	@ tmp164,
	ldr	r3, [sp, #20]	@, pFreeSegSlotNum
	bl	SCDDRV_GetSegStreamStatus	@
	ldr	r3, [sp, #20]	@ tmp165, pFreeSegSlotNum
	ldr	r3, [r3]	@ *pFreeSegSlotNum_12(D), *pFreeSegSlotNum_12(D)
	cmp	r3, #288	@ *pFreeSegSlotNum_12(D),
	bls	.L548	@,
	add	r4, r4, #90112	@ tmp157, pStreamSegArray,
	ldr	r3, [sp, #16]	@ tmp166, pFreeSegBufSize
	ldr	r2, [r4, #2076]	@ pStreamSegArray_9(D)->SegBufSize, pStreamSegArray_9(D)->SegBufSize
	ldr	r3, [r3]	@ *pFreeSegBufSize_11(D), *pFreeSegBufSize_11(D)
	cmp	r3, r2, lsr #3	@ *pFreeSegBufSize_11(D), pStreamSegArray_9(D)->SegBufSize,
	mvnls	r0, #5	@ D.36288,
	movhi	r0, #0	@ D.36288,
.L543:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L544:
	cmn	ip, #1024	@ D.36290,
	movne	ip, #0	@ D.36291,
	moveq	ip, #1	@ D.36291,
	b	.L545	@
.L546:
	mvn	r0, #4	@ D.36288,
	bx	lr	@
.L548:
	mvn	r0, #5	@ D.36288,
	b	.L543	@
	.fnend
	.size	SCDDRV_CheckConditionOfStartSCD, .-SCDDRV_CheckConditionOfStartSCD
	.align	2
	.global	SCDDRV_SetCtrlReg
	.type	SCDDRV_SetCtrlReg, %function
SCDDRV_SetCtrlReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #163840	@ tmp139, pScdInstance,
	mov	ip, #1	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r2, [r0, #16]	@ StdType, pScdInstance_5(D)->Config.VidStd
	strb	ip, [r1, #2]	@ tmp136, pScdCtrlReg_7(D)->ScdStart
	ldr	ip, [r3, #2192]	@ D.36294, pScdInstance_5(D)->BufAddrCfg.DownMsgPhyAddr
	str	ip, [r1, #4]	@ D.36294, pScdCtrlReg_7(D)->DownMsgPhyAddr
	ldr	ip, [r3, #2196]	@ D.36295, pScdInstance_5(D)->BufAddrCfg.pDownMsgVirAddr
	str	ip, [r1, #8]	@ D.36295, pScdCtrlReg_7(D)->pDownMsgVirAddr
	ldr	ip, [r3, #2204]	@ D.36294, pScdInstance_5(D)->BufAddrCfg.UpMsgPhyAddr
	str	ip, [r1, #12]	@ D.36294, pScdCtrlReg_7(D)->UpMsgPhyAddr
	ldr	lr, [r3, #2216]	@ pScdInstance_5(D)->BufAddrCfg.UpMsgNum, pScdInstance_5(D)->BufAddrCfg.UpMsgNum
	ldr	ip, [r3, #2292]	@ pScdInstance_5(D)->UpMsgStepInWord, pScdInstance_5(D)->UpMsgStepInWord
	mul	ip, ip, lr	@ D.36294, pScdInstance_5(D)->UpMsgStepInWord, pScdInstance_5(D)->BufAddrCfg.UpMsgNum
	str	ip, [r1, #20]	@ D.36294, pScdCtrlReg_7(D)->UpLen
	ldr	ip, [r3, #2144]	@ D.36294, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufPhyAddr
	str	ip, [r1, #24]	@ D.36294, pScdCtrlReg_7(D)->BufferFirst
	ldr	ip, [r3, #2148]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufSize
	ldr	lr, [r3, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufPhyAddr
	add	ip, ip, lr	@ D.36294, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufPhyAddr
	str	ip, [r1, #28]	@ D.36294, pScdCtrlReg_7(D)->BufferLast
	ldr	ip, [r3, #2316]	@ pScdInstance_5(D)->first_start_scd_flag, pScdInstance_5(D)->first_start_scd_flag
	cmp	ip, #1	@ pScdInstance_5(D)->first_start_scd_flag,
	mov	ip, #1	@ tmp178,
	ldreq	r3, [r3, #2156]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufWriteAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufWriteAddr
	ldrne	r3, [r3, #2312]	@ D.36294, pScdInstance_5(D)->seg_next_addr
	addeq	r3, r3, #3	@ D.36294, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufWriteAddr,
	strb	ip, [r1]	@ tmp178, pScdCtrlReg_7(D)->ScdIntMask
	biceq	r3, r3, #3	@ D.36294, D.36294,
	cmp	r2, ip	@ StdType,
	cmpne	r2, #15	@, StdType,
	str	r3, [r1, #32]	@ D.36294, pScdCtrlReg_7(D)->BufferIni
	sub	r3, r2, #6	@ D.36297, StdType,
	ldr	r0, [r0, #40]	@ D.36296, pScdInstance_5(D)->Config.ScdLowdlyEnable
	clz	r3, r3	@ D.36297, D.36297
	mov	r3, r3, lsr #5	@ D.36297, D.36297,
	str	r3, [r1, #48]	@ D.36297, pScdCtrlReg_7(D)->reg_avs_flag
	str	r0, [r1, #44]	@ D.36296, pScdCtrlReg_7(D)->ScdLowdlyEnable
	beq	.L558	@,
	cmp	r3, #0	@ D.36297,
	bne	.L556	@,
	sub	r3, r2, #2	@ D.36294, D.36296,
	cmp	r3, ip	@ D.36294,
	bhi	.L554	@,
.L556:
	strb	ip, [r1, #1]	@ tmp178, pScdCtrlReg_7(D)->SliceCheckFlag
	b	.L557	@
.L558:
	mov	r2, #0	@ D.36296,
.L554:
	mov	r3, #0	@ tmp194,
	strb	r3, [r1, #1]	@ tmp194, pScdCtrlReg_7(D)->SliceCheckFlag
.L557:
	mov	r3, #1	@ tmp196,
	str	r2, [r1, #36]	@ D.36296, pScdCtrlReg_7(D)->ScdProtocol
	str	r3, [r1, #40]	@ tmp196, pScdCtrlReg_7(D)->ScdIniClr
	ldr	pc, [sp], #4	@
	.fnend
	.size	SCDDRV_SetCtrlReg, .-SCDDRV_SetCtrlReg
	.align	2
	.global	SCDDRV_RecordStartState
	.type	SCDDRV_RecordStartState, %function
SCDDRV_RecordStartState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r1, r2	@ RawStreamSize, FreeSegBufSize
	add	r4, r0, #163840	@ tmp131, pScdInstance,
	mov	r3, #1	@ tmp117,
	strb	r3, [r0, #4]	@ tmp117, pScdInstance_3(D)->IsWaitSCD
	movhi	r3, #0	@ tmp125,
	str	r1, [r4, #2264]	@ RawStreamSize, pScdInstance_3(D)->PrevCfgRawSize
	str	r2, [r4, #2268]	@ FreeSegBufSize, pScdInstance_3(D)->PrevCfgSegSize
	strb	r3, [r0, #2]	@ tmp125, pScdInstance_3(D)->LastCfgAllRawFlag
	mov	r3, #0	@ tmp127,
	strb	r3, [r0, #3]	@ tmp127, pScdInstance_3(D)->FillNewRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #2288]	@, pScdInstance_3(D)->LastSCDStartTime
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SCDDRV_RecordStartState, .-SCDDRV_RecordStartState
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
	@ args = 12, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r0, r0, #14	@ tmp455, inst_id,
	.pad #108
	sub	sp, sp, #108	@,,
	mov	r9, r1	@ pSmPushRaw, pSmPushRaw
	mov	r4, r0	@ tmp455, tmp455
	mov	r8, r2	@ SegStreamSize, SegStreamSize
	str	r0, [sp, #12]	@ tmp455, %sfp
	mov	r1, #0	@,
	str	r2, [sp]	@ SegStreamSize, %sfp
	add	r0, sp, #32	@,,
	mov	r2, #72	@,
	mov	r6, r3	@ pRawStreamArray, pRawStreamArray
	ldr	fp, [sp, #144]	@ pDownMsgVirAddr, pDownMsgVirAddr
	str	r3, [sp, #4]	@ pRawStreamArray, %sfp
	bl	memset	@
	ldr	r3, .L626	@ tmp506,
	mov	r1, #8192	@,
	add	r3, r3, r4, lsl #2	@ tmp323, tmp506, tmp455,
	ldr	ip, [r3, #12]	@ D.36383, s_SmIIS.pSmInstArray
	str	ip, [sp, #24]	@ D.36383, %sfp
	add	ip, ip, #165888	@ tmp457, D.36383,
	add	lr, ip, #368	@ __p, tmp457,
	str	ip, [sp, #28]	@ tmp457, %sfp
	str	lr, [sp, #8]	@ __p, %sfp
	add	r4, ip, #260	@ lsb_write, tmp457,
	mov	r0, lr	@, __p
	add	r5, ip, #256	@ msb_write, tmp457,
	bl	__memzero	@
	mov	r0, r6	@, pRawStreamArray
	add	r1, sp, #32	@,,
	mov	r6, #0	@ tmp329,
	bl	GetFirstRawPacket	@
	ldr	r7, [sp, #40]	@ RawShowTotalLen, RawPacket.Length
	str	r6, [fp]	@ tmp329, *pDownMsgVirAddr_66(D)
	cmp	r7, r8	@ RawShowTotalLen, SegStreamSize
	str	r6, [fp, #4]	@ tmp329, MEM[(HI_S32 *)pDownMsgVirAddr_66(D) + 4B]
	str	r6, [fp, #8]	@ tmp329, MEM[(HI_S32 *)pDownMsgVirAddr_66(D) + 8B]
	str	r6, [r9, #4]	@ tmp329, pSmPushRaw_72(D)->PushRawTotalLen
	bgt	.L566	@,
	str	r4, [sp, #16]	@ lsb_write, %sfp
	mov	r8, r6	@ j, list_length
	mov	r10, r6	@ PushRawNum, list_length
	mov	r2, r7	@ D.36386, RawShowTotalLen
	ldr	r4, [sp, #8]	@ __p, %sfp
	str	r5, [sp, #20]	@ msb_write, %sfp
	b	.L570	@
.L568:
	ldr	r2, [sp, #40]	@ D.36386, RawPacket.Length
	movw	r1, #1023	@ tmp520,
	ldr	r3, [sp]	@ tmp356, %sfp
	add	r7, r7, r2	@ RawShowTotalLen, RawShowTotalLen, D.36386
	cmp	r3, r7	@ tmp356, RawShowTotalLen
	movlt	r3, #0	@ tmp356,
	movge	r3, #1	@ tmp356,
	cmp	r10, r1	@ PushRawNum, tmp520
	movgt	r3, #0	@ tmp356,
	cmp	r3, #0	@ tmp356,
	beq	.L623	@,
.L570:
	mov	r3, r8, asl #2	@ D.36376, j,
	ldr	lr, [sp, #148]	@ tmp516, DownMsgPhyAddr
	cmp	r2, #0	@ D.36386,
	add	ip, fp, r3	@ tmp334, pDownMsgVirAddr, D.36376
	add	r3, r3, #12	@ D.36376, D.36376,
	add	r1, sp, #32	@,,
	ldr	r0, [sp, #4]	@, %sfp
	add	r3, r3, lr	@ D.36376, D.36376, tmp516
	add	r5, r4, r6, lsl #3	@ D.36387, __p, list_length,
	ble	.L567	@,
	ldr	lr, [sp, #32]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	add	r2, r2, lr	@ D.36386, D.36386, RawPacket.PhyAddr
	str	lr, [fp, r8, asl #2]	@ RawPacket.PhyAddr, *_82
	sub	r2, r2, #1	@ D.36386, D.36386,
	str	r3, [ip, #8]	@ D.36376, *_95
	add	r8, r8, #3	@ j, j,
	ldr	r3, [sp, #36]	@ tmp517, RawPacket.VirAddr
	str	r2, [ip, #4]	@ D.36386, *_88
	str	r3, [r4, r6, asl #3]	@ tmp517, *_105
	add	r6, r6, #1	@ list_length, list_length,
	ldr	r3, [sp, #40]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sp, #36]	@ RawPacket.VirAddr, RawPacket.VirAddr
	sub	r3, r3, #1	@ D.36380, RawPacket.Length,
	add	r3, r2, r3	@ D.36379, RawPacket.VirAddr, D.36380
	str	r3, [r5, #4]	@ D.36379, *_105
	mov	r3, #0	@ tmp518,
	str	r3, [sp, #40]	@ tmp518, RawPacket.Length
.L567:
	str	r7, [r9, #4]	@ RawShowTotalLen, pSmPushRaw_72(D)->PushRawTotalLen
	add	r10, r10, #1	@ PushRawNum, PushRawNum,
	bl	ShowRawPacket	@
	cmp	r0, #0	@,
	beq	.L568	@,
	ldr	r4, [sp, #16]	@ lsb_write, %sfp
	ldr	r5, [sp, #20]	@ msb_write, %sfp
	ldr	r2, [sp, #40]	@ D.36386, RawPacket.Length
.L569:
	cmp	r2, #0	@ D.36386,
	ldrne	r3, [r9, #4]	@ D.36377, pSmPushRaw_72(D)->PushRawTotalLen
	beq	.L571	@,
.L587:
	ldr	r1, [sp]	@ SegStreamSize, %sfp
	sub	r1, r1, #16	@ D.36386, SegStreamSize,
	cmp	r3, r1	@ D.36377, D.36386
	bge	.L571	@,
	ldr	r1, [sp]	@ SegStreamSize, %sfp
	cmp	r1, r7	@ SegStreamSize, RawShowTotalLen
	cmplt	r10, #1024	@, PushRawNum,
	blt	.L624	@,
.L571:
	cmp	r10, #0	@ PushRawNum,
	beq	.L588	@,
	ldr	r2, [sp, #12]	@ tmp455, %sfp
	sub	r8, r8, #-1073741823	@ tmp382, j,
	ldr	r3, .L626	@ tmp527,
	movw	r1, #2296	@ tmp397,
	add	r3, r3, r2, lsl #2	@ tmp387, tmp527, tmp455,
	mov	r2, #0	@ tmp383,
	str	r2, [fp, r8, asl #2]	@ tmp383, *_177
	ldr	r3, [r3, #12]	@ D.36383, s_SmIIS.pSmInstArray
	ldr	ip, [r9, #4]	@ pSmPushRaw_72(D)->PushRawTotalLen, pSmPushRaw_72(D)->PushRawTotalLen
	add	r3, r3, #163840	@ tmp390, D.36383,
	add	r0, r3, #2304	@ tmp402, tmp390,
	cmp	ip, #6	@ pSmPushRaw_72(D)->PushRawTotalLen,
	ldr	lr, [r3, #2308]	@ _182->scd_previous_byte_lsb, _182->scd_previous_byte_lsb
	movge	ip, #6	@ need_update_bytes,
	cmp	ip, #5	@ need_update_bytes,
	str	lr, [r3, #2300]	@ _182->scd_previous_byte_lsb, _182->pre_scd_previous_byte_lsb
	ldrh	r0, [r0]	@ _182->scd_previous_byte_msb, _182->scd_previous_byte_msb
	strh	r0, [r3, r1]	@ movhi	@ _182->scd_previous_byte_msb, _182->pre_scd_previous_byte_msb
	bhi	.L590	@,
	cmp	ip, #1	@ need_update_bytes,
	beq	.L625	@,
	rsbs	r3, ip, #6	@ need_shift_bytes, need_update_bytes,
	rsb	r7, ip, #5	@ D.36380, need_update_bytes,
	beq	.L590	@,
	ldr	r2, [sp, #24]	@ D.36383, %sfp
	movw	lr, #35074	@ ivtmp.507,
	movt	lr, 2	@ ivtmp.507,
	add	r7, r4, r7	@ ivtmp.503, lsb_write, D.36380
	add	lr, r2, lr	@ ivtmp.507, D.36383, ivtmp.507
	mov	r1, #2	@ msb_need_bytes,
.L576:
	subs	r3, r3, #1	@ need_shift_bytes, need_shift_bytes,
	rsb	r8, r1, #3	@ polit_index, msb_need_bytes,
	sub	r2, r1, #1	@ msb_need_bytes, msb_need_bytes,
	ldrb	r0, [r7], #-1	@ zero_extendqisi2	@ D.36382, MEM[base: _219, offset: 0B]
	movne	r1, #1	@ tmp444,
	moveq	r1, #0	@ tmp444,
	cmp	r8, #1	@ polit_index,
	movhi	r1, #0	@, D.36384
	andls	r1, r1, #1	@,, D.36384, tmp444
	cmp	r1, #0	@ D.36384,
	strb	r0, [lr, #-1]!	@ D.36382, MEM[base: _218, offset: 0B]
	mov	r1, r2	@ msb_need_bytes, msb_need_bytes
	bne	.L576	@,
	cmp	r2, #0	@ msb_need_bytes,
	bne	.L622	@,
	cmp	r3, #0	@ need_shift_bytes,
	rsb	ip, ip, #3	@ D.36380, need_update_bytes,
	beq	.L592	@,
	ldr	r1, [sp, #28]	@ tmp457, %sfp
	rsb	lr, r3, ip	@ D.36380, need_shift_bytes, D.36380
	add	lr, r4, lr	@ D.36378, lsb_write, D.36380
	add	r0, r1, #264	@ ivtmp.490, tmp457,
	add	r1, r4, ip	@ ivtmp.486, lsb_write, D.36380
.L577:
	ldrb	ip, [r1], #-1	@ zero_extendqisi2	@ D.36382, MEM[base: _125, offset: 0B]
	cmp	r1, lr	@ ivtmp.486, D.36378
	strb	ip, [r0, #-1]!	@ D.36382, MEM[base: _31, offset: 0B]
	bne	.L577	@,
	rsb	r3, r3, #4	@ lsb_need_bytes, need_shift_bytes,
	b	.L574	@
.L590:
	mov	r2, #2	@ msb_need_bytes,
	mov	r3, #4	@ lsb_need_bytes,
.L574:
	cmp	r6, #0	@ list_index
	ldrgt	r1, [sp, #8]	@ __p, %sfp
	addgt	r7, r1, r6, lsl #3	@ ivtmp.475, __p, list_index,
	ble	.L583	@,
.L586:
	ldr	r0, [r7, #-4]	@ raw_packet_end_addr, MEM[base: _50, offset: 4294967292B]
	ldr	ip, [r7, #-8]	@ MEM[base: _50, offset: 4294967288B], MEM[base: _50, offset: 4294967288B]
	add	r1, r0, #1	@ D.36376, raw_packet_end_addr,
	rsb	ip, ip, r1	@ raw_packet_length, MEM[base: _50, offset: 4294967288B], D.36376
	cmp	ip, r3	@ raw_packet_length, lsb_need_bytes
	movcc	r8, ip	@ copy_length, raw_packet_length
	movcs	r8, r3	@ copy_length, lsb_need_bytes
	cmp	r3, #0	@ lsb_need_bytes,
	beq	.L579	@,
	cmp	r8, #0	@ copy_length,
	beq	.L582	@,
	add	lr, r4, r8	@ lsb_write, lsb_write, copy_length
.L581:
	ldrb	fp, [r1, #-1]!	@ zero_extendqisi2	@ D.36382, MEM[base: 0B, index: ivtmp.460_248, offset: 0B]
	strb	fp, [r4], #1	@ D.36382, MEM[base: lsb_write_314, offset: 0B]
	cmp	r4, lr	@ lsb_write, lsb_write
	bne	.L581	@,
	subs	r3, r3, r8	@ lsb_need_bytes, lsb_need_bytes, copy_length
	beq	.L579	@,
.L582:
	subs	r6, r6, #1	@ list_index, list_index,
	sub	r7, r7, #8	@ ivtmp.475, ivtmp.475,
	bne	.L586	@,
.L583:
	mov	r0, #0	@ D.36377,
	mov	r3, #1	@ tmp449,
	str	r10, [r9]	@ PushRawNum, pSmPushRaw_72(D)->PushRawNum
	str	r3, [r9, #8]	@ tmp449, pSmPushRaw_72(D)->PushRawOverState
.L618:
	add	sp, sp, #108	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L579:
	cmp	r2, #0	@ msb_need_bytes,
	beq	.L583	@,
	rsb	ip, r8, ip	@ left_length, copy_length, raw_packet_length
	rsb	r0, r8, r0	@ D.36380, copy_length, raw_packet_end_addr
	cmp	ip, r2	@ left_length, msb_need_bytes
	movcs	ip, r2	@ copy_length, msb_need_bytes
	cmp	ip, #0	@ copy_length,
	beq	.L584	@,
	add	r0, r0, #1	@ ivtmp.446, D.36380,
	add	r1, r5, ip	@ msb_write, msb_write, copy_length
.L585:
	ldrb	r3, [r0, #-1]!	@ zero_extendqisi2	@ D.36382, MEM[base: 0B, index: ivtmp.446_321, offset: 0B]
	strb	r3, [r5], #1	@ D.36382, MEM[base: msb_write_317, offset: 0B]
	cmp	r5, r1	@ msb_write, msb_write
	bne	.L585	@,
	subs	r2, r2, ip	@ msb_need_bytes, msb_need_bytes, copy_length
	beq	.L583	@,
	mov	r3, #0	@ lsb_need_bytes,
	b	.L582	@
.L623:
	ldr	r4, [sp, #16]	@ lsb_write, %sfp
	ldr	r5, [sp, #20]	@ msb_write, %sfp
	b	.L569	@
.L584:
	mov	r3, ip	@ lsb_need_bytes, copy_length
	b	.L582	@
.L592:
.L622:
	mov	r3, #4	@ lsb_need_bytes,
	b	.L574	@
.L624:
	rsb	r3, r3, r1	@ D.36386, D.36377, SegStreamSize
	cmp	r3, r2	@ D.36386, D.36386
	bgt	.L571	@,
	ldr	r0, [sp, #32]	@ D.36386, RawPacket.PhyAddr
	mov	r2, r8, asl #2	@ D.36376, j,
	str	r3, [sp, #40]	@ D.36386, RawPacket.Length
	add	r1, r2, #12	@ D.36376, D.36376,
	ldr	ip, [sp, #36]	@ RawPacket.VirAddr, RawPacket.VirAddr
	add	r3, r3, r0	@ D.36386, D.36386, D.36386
	str	r0, [fp, r8, asl #2]	@ D.36386, *_135
	add	r2, fp, r2	@ tmp366, pDownMsgVirAddr, D.36376
	ldr	r0, [sp, #8]	@ __p, %sfp
	sub	r3, r3, #1	@ D.36386, D.36386,
	ldr	lr, [sp, #148]	@ tmp524, DownMsgPhyAddr
	add	r10, r10, #1	@ PushRawNum, PushRawNum,
	str	r3, [r2, #4]	@ D.36386, *_141
	add	r8, r8, #3	@ j, j,
	add	r1, r1, lr	@ D.36376, D.36376, tmp524
	str	r1, [r2, #8]	@ D.36376, *_147
	str	ip, [r0, r6, asl #3]	@ RawPacket.VirAddr, *_156
	add	r1, r0, r6, lsl #3	@ D.36387, __p, list_length,
	ldr	r3, [sp, #40]	@ RawPacket.Length, RawPacket.Length
	mov	r2, #0	@ tmp381,
	ldr	r0, [sp, #36]	@ RawPacket.VirAddr, RawPacket.VirAddr
	add	r6, r6, #1	@ list_length, list_length,
	sub	r3, r3, #1	@ D.36380, RawPacket.Length,
	add	r3, r0, r3	@ D.36379, RawPacket.VirAddr, D.36380
	str	r3, [r1, #4]	@ D.36379, *_156
	ldr	r1, [sp, #40]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r9, #4]	@ pSmPushRaw_72(D)->PushRawTotalLen, pSmPushRaw_72(D)->PushRawTotalLen
	str	r2, [sp, #40]	@ tmp381, RawPacket.Length
	add	r3, r3, r1	@ D.36386, pSmPushRaw_72(D)->PushRawTotalLen, RawPacket.Length
	str	r3, [r9, #4]	@ D.36386, pSmPushRaw_72(D)->PushRawTotalLen
	b	.L571	@
.L625:
	ldr	r3, [sp, #24]	@ D.36383, %sfp
	add	r1, r3, #163840	@ tmp406, D.36383,
	mov	r3, ip	@ lsb_need_bytes, need_update_bytes
	ldrb	r8, [r1, #2304]	@ zero_extendqisi2	@ MEM[(HI_U8 *)_58 + 166144B], MEM[(HI_U8 *)_58 + 166144B]
	ldrb	r7, [r1, #2311]	@ zero_extendqisi2	@ MEM[(HI_U8 *)_58 + 166151B], MEM[(HI_U8 *)_58 + 166151B]
	ldrb	lr, [r1, #2310]	@ zero_extendqisi2	@ MEM[(HI_U8 *)_58 + 166150B], MEM[(HI_U8 *)_58 + 166150B]
	ldrb	ip, [r1, #2309]	@ zero_extendqisi2	@ MEM[(HI_U8 *)_58 + 166149B], MEM[(HI_U8 *)_58 + 166149B]
	ldrb	r0, [r1, #2308]	@ zero_extendqisi2	@ MEM[(HI_U8 *)_58 + 166148B], MEM[(HI_U8 *)_58 + 166148B]
	strb	r8, [r1, #2305]	@ MEM[(HI_U8 *)_58 + 166144B], MEM[(HI_U8 *)_58 + 166145B]
	strb	r7, [r1, #2304]	@ MEM[(HI_U8 *)_58 + 166151B], MEM[(HI_U8 *)_58 + 166144B]
	strb	lr, [r1, #2311]	@ MEM[(HI_U8 *)_58 + 166150B], MEM[(HI_U8 *)_58 + 166151B]
	strb	ip, [r1, #2310]	@ MEM[(HI_U8 *)_58 + 166149B], MEM[(HI_U8 *)_58 + 166150B]
	strb	r0, [r1, #2309]	@ MEM[(HI_U8 *)_58 + 166148B], MEM[(HI_U8 *)_58 + 166149B]
	b	.L574	@
.L566:
	cmp	r7, #0	@ RawShowTotalLen,
	bne	.L594	@,
.L588:
	mvn	r0, #5	@ D.36377,
	b	.L618	@
.L594:
	mov	r3, r6	@ D.36377, tmp329
	mov	r2, r7	@ D.36386, RawShowTotalLen
	mov	r8, r3	@ j, D.36377
	mov	r10, r3	@ PushRawNum, D.36377
	b	.L587	@
.L627:
	.align	2
.L626:
	.word	.LANCHOR0
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegPacket
	beq	.L633	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L635	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L635	@,
	add	r1, r1, #90112	@ tmp131, pStreamSegArray,
	ldr	r2, [r1, #2084]	@ D.36395, pStreamSegArray_6(D)->SegBufWriteAddr
	ldr	r3, [r1, #2080]	@ D.36395, pStreamSegArray_6(D)->SegBufReadAddr
	cmp	r2, r3	@ D.36395, D.36395
	bhi	.L637	@,
	ldrcs	r3, [r1, #2076]	@ pStreamSegArray_6(D)->SegBufSize, pStreamSegArray_6(D)->SegBufSize
	subcc	r3, r3, #1	@ D.36395, D.36395,
	rsbcc	r3, r2, r3	@ SegBufFreeSize, D.36395, D.36395
	subcs	r3, r3, #1	@ SegBufFreeSize, pStreamSegArray_6(D)->SegBufSize,
.L631:
	ldr	r1, [r0, #12]	@ D.36395, pSegPacket_2(D)->LenInByte
	cmp	r1, #3	@ D.36395,
	movhi	r2, #0	@ tmp146,
	movls	r2, #1	@ tmp146,
	cmp	r1, r3	@ D.36395, SegBufFreeSize
	movls	r3, r2	@, tmp149, tmp146
	orrhi	r3, r2, #1	@,, tmp149, tmp146
	cmp	r3, #0	@ tmp149,
	mvnne	r0, #6	@ D.36394,
	moveq	r0, #0	@ D.36394,
	bx	lr	@
.L637:
	ldr	r1, [r1, #2076]	@ pStreamSegArray_6(D)->SegBufSize, pStreamSegArray_6(D)->SegBufSize
	add	r3, r3, r1	@ D.36395, D.36395, pStreamSegArray_6(D)->SegBufSize
	sub	r3, r3, #1	@ D.36395, D.36395,
	rsb	r3, r2, r3	@ SegBufFreeSize, D.36395, D.36395
	b	.L631	@
.L635:
	mvn	r0, #6	@ D.36394,
	bx	lr	@
.L633:
	mvn	r0, #0	@ D.36394,
	bx	lr	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r3	@ pSegPacket, pSegPacket
	mov	r5, r2	@ pLastPts, pLastPts
	add	r3, sp, #16	@,,
	add	r2, sp, #20	@ tmp130,,
	str	r2, [sp]	@ tmp130,
	add	r2, sp, #12	@,,
	mov	ip, #0	@ tmp125,
	mov	r6, r0	@ pRawStreamArray, pRawStreamArray
	str	ip, [sp, #12]	@ tmp125, Num
	str	ip, [sp, #16]	@ tmp125, Offset
	str	ip, [sp, #20]	@ tmp125, Index
	bl	GetRawNumOffset	@
	ldr	r0, [sp, #20]	@ D.36401, Index
	mov	r3, r0, asl #6	@ tmp133, D.36401,
	add	r0, r3, r0, lsl #3	@ tmp134, tmp133, D.36401,
	add	r0, r6, r0	@ tmp135, pRawStreamArray, tmp134
	ldrd	r6, [r0, #16]	@ D.36402, tmp135,
	strd	r6, [r4, #24]	@ D.36402, pSegPacket,
	ldrd	r8, [r0, #32]	@ D.36402, tmp135,
	strd	r8, [r4, #40]	@ D.36402, pSegPacket,
	ldrd	r2, [r0, #16]	@ D.36402, tmp135,
	strd	r2, [r4, #32]	@ D.36402, pSegPacket,
	ldrd	r2, [r0, #40]	@ D.36402, tmp135,
	strd	r2, [r4, #48]	@ D.36402, pSegPacket,
	ldr	r3, [r0, #56]	@ D.36401, MEM[(struct STREAM_DATA_S *)pRawStreamArray_9(D)].RawPacket[_11].DispEnableFlag
	str	r3, [r4, #56]	@ D.36401, MEM[(HI_U32 *)pSegPacket_6(D) + 56B]
	ldr	r3, [r0, #60]	@ D.36401, MEM[(struct STREAM_DATA_S *)pRawStreamArray_9(D)].RawPacket[_11].DispFrameDistance
	str	r3, [r4, #60]	@ D.36401, MEM[(HI_U32 *)pSegPacket_6(D) + 60B]
	ldr	r3, [r0, #64]	@ D.36401, MEM[(struct STREAM_DATA_S *)pRawStreamArray_9(D)].RawPacket[_11].DistanceBeforeFirstFrame
	str	r3, [r4, #64]	@ D.36401, MEM[(HI_U32 *)pSegPacket_6(D) + 64B]
	ldr	r3, [r0, #68]	@ D.36401, MEM[(struct STREAM_DATA_S *)pRawStreamArray_9(D)].RawPacket[_11].GopNum
	str	r3, [r4, #68]	@ D.36401, MEM[(HI_U32 *)pSegPacket_6(D) + 68B]
	ldrd	r0, [r5]	@ *pLastPts_28(D), *pLastPts_28(D)
	cmp	r7, r1	@ D.36402, *pLastPts_28(D)
	cmpeq	r6, r0	@ D.36402, *pLastPts_28(D)
	beq	.L642	@,
	strd	r6, [r5]	@ D.36402, *pLastPts_28(D)
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L642:
	mvn	r2, #0	@ tmp180,
	mvn	r3, #0	@,
	strd	r2, [r4, #24]	@ tmp180, pSegPacket,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	IsVopHeader
	.type	IsVopHeader, %function
IsVopHeader:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #1	@ ModeFlag,
	beq	.L648	@,
	cmp	r0, #2	@ ModeFlag,
	movne	r0, #0	@ flag,
	beq	.L649	@,
.L645:
	mov	r2, #0	@ tmp127,
	movt	r2, 65025	@ tmp127,
	cmp	r1, r2	@ StartCode, tmp127
	moveq	r0, #1	@,
	bx	lr	@
.L648:
	mov	r3, #0	@ tmp121,
	movt	r3, 46593	@ tmp121,
	rsb	r0, r3, r1	@ flag, tmp121, StartCode
	clz	r0, r0	@ flag, flag
	mov	r0, r0, lsr #5	@ flag, flag,
	b	.L645	@
.L649:
	ubfx	r3, r1, #16, #8	@ D.36405, StartCode,,
	sub	r3, r3, #128	@ D.36405, D.36405,
	cmp	r3, #3	@ D.36405,
	movhi	r0, #0	@ flag,
	movls	r0, #1	@ flag,
	b	.L645	@
	.fnend
	.size	IsVopHeader, .-IsVopHeader
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	lr, r0, #163840	@ tmp146, pScdInstance,
	movw	r4, #36409	@ tmp157,
	sub	r3, r2, #1	@ ValidSegNum, ValidSegNum,
	ldr	ip, [lr, #2132]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Tail
	movt	r4, 14563	@ tmp157,
	ldr	r6, [lr, #2128]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Head
	cmp	r3, #0	@ ValidSegNum,
	add	ip, ip, #1152	@ D.36416, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Tail,
	add	r0, r0, #73728	@ tmp144, pScdInstance,
	rsb	r6, r6, ip	@ D.36416, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].Head, D.36416
	umull	r4, r5, r6, r4	@ tmp156, D.36416, tmp157
	mov	r8, r5, lsr #8	@ tmp155,,
	mov	r4, r8, asl #10	@ tmp160, tmp155,
	add	r8, r4, r8, lsl #7	@ tmp161, tmp160, tmp155,
	rsb	r8, r8, r6	@ D.36418, tmp161, D.36416
	rsb	r8, r8, #1152	@ FreeSegSlotNum, D.36418,
	blt	.L658	@,
	ldr	r5, [lr, #2292]	@ pScdInstance_5(D)->UpMsgStepInWord, pScdInstance_5(D)->UpMsgStepInWord
	mov	r4, #0	@ tmp189,
	mov	r9, r4	@ tmp190, tmp189
	ldr	r6, [lr, #2144]	@ D.36418, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].SegBufPhyAddr
	mov	ip, r3	@ i, ValidSegNum
	ldr	r7, [r0, #72]	@ D.36420, MEM[(struct SEG_ARRAY_S *)pScdInstance_5(D) + 73800B].pSegBufVirAddr
	mov	r5, r5, asl #2	@ D.36416, pScdInstance_5(D)->UpMsgStepInWord,
	movt	r4, 65025	@ tmp189,
	ldr	lr, [lr, #2236]	@ D.36421, pScdInstance_5(D)->Mpeg4ModeFlag
	movt	r9, 46593	@ tmp190,
	mla	r1, r5, r3, r1	@ ivtmp.525, D.36416, ValidSegNum, pScdUpMsg
	b	.L657	@
.L662:
	cmp	lr, #2	@ D.36421,
	beq	.L661	@,
	cmp	r2, r4	@ StartCode, tmp189
	beq	.L655	@,
.L656:
	sub	ip, ip, #1	@ i, i,
	rsb	r1, r5, r1	@ ivtmp.525, D.36416, ivtmp.525
	cmn	ip, #1	@ i,
	mov	r2, r3	@ ValidSegNum, ValidSegNum
	beq	.L658	@,
	sub	r3, r3, #1	@ ValidSegNum, ValidSegNum,
.L657:
	ldr	r2, [r1]	@ *_15, *_15
	cmp	lr, #1	@ D.36421,
	rsb	r2, r6, r2	@ D.36416, D.36418, *_15
	ldr	r2, [r7, r2]	@ StartCode, MEM[(HI_U32 *)pCurrStartCodeVirAddr_20]
	rsbeq	r0, r9, r2	@ flag, tmp190, StartCode
	clzeq	r0, r0	@ flag, flag
	moveq	r0, r0, lsr #5	@ flag, flag,
	bne	.L662	@,
.L653:
	cmp	r2, r4	@ StartCode, tmp189
	beq	.L655	@,
	cmp	r0, #1	@ flag,
	bne	.L656	@,
.L655:
	cmp	r8, r3	@ FreeSegSlotNum, ValidSegNum
	mov	r2, r3	@ ValidSegNum, ValidSegNum
	bcs	.L658	@,
	sub	r3, r3, #1	@ ValidSegNum, ValidSegNum,
	b	.L656	@
.L661:
	ubfx	r0, r2, #16, #8	@ D.36416, StartCode,,
	sub	r0, r0, #128	@ D.36416, D.36416,
	cmp	r0, #3	@ D.36416,
	movhi	r0, #0	@ flag,
	movls	r0, #1	@ flag,
	b	.L653	@
.L658:
	mov	r0, r2	@, ValidSegNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	CorrectRollPhyAddr
	.type	CorrectRollPhyAddr, %function
CorrectRollPhyAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r2	@ SegNextAddr, SegBufferPhyAddr
	rsbcc	r1, r2, r1	@ D.36425, SegBufferPhyAddr, SegNextAddr
	addcc	r0, r1, r0	@ D.36424, D.36425, RollPhyAddr
	bx	lr	@
	.fnend
	.size	CorrectRollPhyAddr, .-CorrectRollPhyAddr
	.align	2
	.global	CorrectSegNextAddr
	.type	CorrectSegNextAddr, %function
CorrectSegNextAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1	@ SegNextAddr, SegBufferPhyAddr
	movcc	r0, r1	@, SegBufferPhyAddr
	bx	lr	@
	.fnend
	.size	CorrectSegNextAddr, .-CorrectSegNextAddr
	.align	2
	.global	SetLastUnfinishedSegInfo
	.type	SetLastUnfinishedSegInfo, %function
SetLastUnfinishedSegInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r4, r0, #163840	@ tmp185, pScdInstance,
	add	ip, r0, #165888	@ tmp146, pScdInstance,
	mov	r7, r2	@ pSmStateReg, pSmStateReg
	ldr	lr, [r4, #2292]	@ pScdInstance_3(D)->UpMsgStepInWord, pScdInstance_3(D)->UpMsgStepInWord
	add	r3, ip, #288	@, tmp146,
	ldr	r6, [r4, #2208]	@ pScdUpMsg, pScdInstance_3(D)->BufAddrCfg.pUpMsgVirAddr
	add	r2, ip, #208	@, tmp146,
	add	r0, r0, #48	@, pScdInstance,
	mul	r1, lr, r1	@ D.36431, pScdInstance_3(D)->UpMsgStepInWord, LastStartCodeIndex
	add	ip, r1, #1	@ D.36432, D.36431,
	ldr	r1, [r6, ip, asl #2]	@ *_11, *_11
	mov	r5, ip, asl #2	@ D.36432, D.36432,
	bic	r1, r1, #-1073741824	@, *_11,
	bl	GetSegPts	@
	add	ip, r6, r5	@ tmp152, pScdUpMsg, D.36432
	ldr	r2, [r4, #2144]	@ D.36431, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr
	ldr	r1, [ip, #-4]	@ D.36431, *_18
	str	r1, [r4, #2320]	@ D.36431, pScdInstance_3(D)->last_start_code_addr
	ldr	r3, [r7, #28]	@ pSmStateReg_21(D)->seg_next_addr, pSmStateReg_21(D)->seg_next_addr
	cmp	r2, r3	@ D.36431, pSmStateReg_21(D)->seg_next_addr
	movcs	r3, r2	@ D.36437, D.36431
	cmp	r1, r3	@ D.36431, D.36437
	str	r3, [r4, #2312]	@ D.36437, pScdInstance_3(D)->seg_next_addr
	bls	.L668	@,
	mov	r0, #1	@ tmp164,
	str	r0, [r4, #2328]	@ tmp164, pScdInstance_3(D)->roll_flag
	ldr	ip, [r7, #28]	@ D.36431, pSmStateReg_21(D)->seg_next_addr
	ldr	r0, [r7, #16]	@ D.36431, pSmStateReg_21(D)->ScdRollAddr
	cmp	r2, ip	@ D.36431, D.36431
	rsbhi	r0, r2, r0	@ D.36431, D.36431, D.36431
	rsb	r2, r2, r3	@ D.36431, D.36431, D.36437
	addhi	r0, r0, ip	@ D.36431, D.36431, D.36431
	rsb	r3, r1, r2	@ D.36431, D.36431, D.36431
	add	r3, r3, r0	@ D.36431, D.36431, D.36431
	str	r0, [r4, #2332]	@ D.36431, pScdInstance_3(D)->roll_addr
	str	r3, [r4, #2324]	@ D.36431, pScdInstance_3(D)->last_unfinished_seg_size
.L670:
	mov	r3, #0	@ tmp184,
	str	r3, [r4, #2316]	@ tmp184, pScdInstance_3(D)->first_start_scd_flag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L668:
	mov	r2, #0	@ tmp175,
	rsb	r3, r1, r3	@ D.36431, D.36431, D.36437
	str	r2, [r4, #2328]	@ tmp175, pScdInstance_3(D)->roll_flag
	str	r3, [r4, #2324]	@ D.36431, pScdInstance_3(D)->last_unfinished_seg_size
	str	r2, [r4, #2332]	@ tmp175, pScdInstance_3(D)->roll_addr
	b	.L670	@
	.fnend
	.size	SetLastUnfinishedSegInfo, .-SetLastUnfinishedSegInfo
	.align	2
	.global	ProcessSegRoll
	.type	ProcessSegRoll, %function
ProcessSegRoll:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #163840	@ tmp144, pScdInstance,
	movw	r8, #36409	@ tmp165,
	add	r6, r0, #73728	@ tmp140, pScdInstance,
	ldr	r3, [r5, #2132]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Tail
	movt	r8, 14563	@ tmp165,
	ldr	lr, [r5, #2128]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Head
	add	r10, r6, #72	@ pSegArray, tmp140,
	add	r3, r3, #1152	@ D.36441, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Tail,
	ldr	ip, [r5, #2208]	@ pScdInstance_3(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_3(D)->BufAddrCfg.pUpMsgVirAddr
	rsb	r3, lr, r3	@ D.36441, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].Head, D.36441
	ldr	r0, [r5, #2320]	@ D.36441, pScdInstance_3(D)->last_start_code_addr
	ldr	r7, [r5, #2144]	@ SegBufferPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr
	umull	r8, r9, r3, r8	@ tmp164, D.36441, tmp165
	ldr	r8, [ip]	@ *_10, *_10
	str	r0, [r1, #8]	@ D.36441, pSegPacket_15(D)->PhyAddr
	rsb	fp, r0, r2	@ FirstHalfSegLen, D.36441, RollPhyAddr
	ldr	lr, [r5, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr
	rsb	r8, r7, r8	@ SecondHalfSegLen, SegBufferPhyAddr, *_10
	ldr	ip, [r6, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr
	add	r2, fp, r8	@ SegPacketLen, FirstHalfSegLen, SecondHalfSegLen
	rsb	r0, lr, r0	@ D.36441, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr, D.36441
	str	r2, [r1, #12]	@ SegPacketLen, pSegPacket_15(D)->LenInByte
	mov	lr, r9, lsr #8	@ tmp163,,
	add	r0, ip, r0	@ D.36443, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr, D.36441
	str	r0, [r1]	@ D.36443, pSegPacket_15(D)->VirAddr
	mov	r2, lr, asl #10	@ tmp168, tmp163,
	add	r2, r2, lr, lsl #7	@ tmp169, tmp168, tmp163,
	rsb	r3, r2, r3	@ D.36445, tmp169, D.36441
	rsb	r3, r3, #1152	@ FreeSegSlotNum, D.36445,
	cmp	r3, #2	@ FreeSegSlotNum,
	bls	.L676	@,
	mov	r4, r1	@ pSegPacket, pSegPacket
	mov	r1, r10	@, pSegArray
	mov	r0, r4	@, pSegPacket
	bl	CheckSegValid	@
	subs	r9, r0, #0	@ D.36440,
	bne	.L676	@,
	cmp	r8, #0	@ SecondHalfSegLen,
	str	fp, [r4, #12]	@ FirstHalfSegLen, pSegPacket_15(D)->LenInByte
	beq	.L678	@,
	mov	r1, r4	@, pSegPacket
	strb	r9, [r4, #5]	@ D.36440, pSegPacket_15(D)->IsLastSeg
	mov	r0, r10	@, pSegArray
	ldr	r2, [r5, #2228]	@, pScdInstance_3(D)->InstID
	bl	InsertStreamSeg	@
	str	r7, [r4, #8]	@ SegBufferPhyAddr, pSegPacket_15(D)->PhyAddr
	ldr	r1, [r5, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr
	mov	r2, #1	@ tmp202,
	ldr	r3, [r6, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr
	mov	r0, r10	@, pSegArray
	rsb	r7, r1, r7	@ D.36441, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].SegBufPhyAddr, SegBufferPhyAddr
	str	r8, [r4, #12]	@ SecondHalfSegLen, pSegPacket_15(D)->LenInByte
	add	r7, r3, r7	@ D.36443, MEM[(struct SEG_ARRAY_S *)pScdInstance_3(D) + 73800B].pSegBufVirAddr, D.36441
	strb	r2, [r4, #5]	@ tmp202, pSegPacket_15(D)->IsLastSeg
	str	r7, [r4]	@ D.36443, pSegPacket_15(D)->VirAddr
	mov	r1, r4	@, pSegPacket
	ldr	r2, [r5, #2228]	@, pScdInstance_3(D)->InstID
	bl	InsertStreamSeg	@
.L673:
	mov	r0, r9	@, D.36440
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L678:
	mov	r3, #1	@ tmp182,
	mov	r0, r10	@, pSegArray
	strb	r3, [r4, #5]	@ tmp182, pSegPacket_15(D)->IsLastSeg
	mov	r1, r4	@, pSegPacket
	ldr	r2, [r5, #2228]	@, pScdInstance_3(D)->InstID
	bl	InsertStreamSeg	@
	mov	r0, r9	@, D.36440
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L676:
	mvn	r9, #3	@ D.36440,
	b	.L673	@
	.fnend
	.size	ProcessSegRoll, .-ProcessSegRoll
	.align	2
	.global	ProcessLastUnfinishedSeg
	.type	ProcessLastUnfinishedSeg, %function
ProcessLastUnfinishedSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r5, r0	@ pScdInstance, pScdInstance
	mov	r6, r1	@ ValidStartCodeNum, ValidStartCodeNum
	mov	r8, r2	@ pSmStateReg, pSmStateReg
	mov	r0, sp	@,
	mov	r2, #80	@,
	mov	r1, #0	@,
	bl	memset	@
	add	r4, r5, #163840	@ tmp237, pScdInstance,
	cmp	r6, #0	@ ValidStartCodeNum,
	add	r9, r5, #73728	@ tmp157, pScdInstance,
	ldr	r7, [r4, #2144]	@ SegBufferPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73800B].SegBufPhyAddr
	bne	.L680	@,
	ldr	r3, [r4, #2264]	@ pScdInstance_9(D)->PrevCfgRawSize, pScdInstance_9(D)->PrevCfgRawSize
	ldr	r2, [r4, #2268]	@ pScdInstance_9(D)->PrevCfgSegSize, pScdInstance_9(D)->PrevCfgSegSize
	cmp	r3, r2	@ pScdInstance_9(D)->PrevCfgRawSize, pScdInstance_9(D)->PrevCfgSegSize
	movle	r3, #0	@ tmp166,
	movgt	r3, #1	@ tmp166,
	strb	r3, [r5]	@ tmp166, pScdInstance_9(D)->SegFullFlag
	ldr	r2, [r4, #2320]	@ D.36448, pScdInstance_9(D)->last_start_code_addr
	cmp	r2, #0	@ D.36448,
	ldreq	r1, [r4, #2180]	@ D.36450, pScdInstance_9(D)->SmPushRaw.PushRawTotalLen
	beq	.L682	@,
	ldr	r0, [r4, #2328]	@ pScdInstance_9(D)->roll_flag, pScdInstance_9(D)->roll_flag
	ldr	r3, [r4, #2324]	@ pScdInstance_9(D)->last_unfinished_seg_size, pScdInstance_9(D)->last_unfinished_seg_size
	ldr	r1, [r4, #2180]	@ D.36450, pScdInstance_9(D)->SmPushRaw.PushRawTotalLen
	cmp	r0, #0	@ pScdInstance_9(D)->roll_flag,
	add	r3, r1, r3	@ D.36448, D.36450, pScdInstance_9(D)->last_unfinished_seg_size
	str	r3, [r4, #2324]	@ D.36448, pScdInstance_9(D)->last_unfinished_seg_size
	bne	.L683	@,
	ldr	r3, [r8, #28]	@ pSmStateReg_26(D)->seg_next_addr, pSmStateReg_26(D)->seg_next_addr
	cmp	r2, r3	@ D.36448, pSmStateReg_26(D)->seg_next_addr
	bls	.L683	@,
	mov	r3, #1	@ tmp186,
	str	r3, [r4, #2328]	@ tmp186, pScdInstance_9(D)->roll_flag
	ldr	r2, [r8, #28]	@ D.36448, pSmStateReg_26(D)->seg_next_addr
	ldr	r3, [r8, #16]	@ D.36448, pSmStateReg_26(D)->ScdRollAddr
	cmp	r7, r2	@ SegBufferPhyAddr, D.36448
	rsbhi	r3, r7, r3	@ D.36448, SegBufferPhyAddr, D.36448
	addhi	r3, r3, r2	@ D.36448, D.36448, D.36448
	str	r3, [r4, #2332]	@ D.36448, pScdInstance_9(D)->roll_addr
.L683:
	mov	r3, #0	@ tmp192,
	str	r3, [r4, #2316]	@ tmp192, pScdInstance_9(D)->first_start_scd_flag
	ldr	r3, [r8, #28]	@ pSmStateReg_26(D)->seg_next_addr, pSmStateReg_26(D)->seg_next_addr
	cmp	r3, r7	@ pSmStateReg_26(D)->seg_next_addr, SegBufferPhyAddr
	movcc	r3, r7	@ D.36456, SegBufferPhyAddr
	str	r3, [r4, #2312]	@ D.36456, pScdInstance_9(D)->seg_next_addr
.L682:
	add	r0, r5, #48	@, pScdInstance,
	bl	DeleteRawLen	@
.L685:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L680:
	mov	r3, #0	@ tmp198,
	strb	r3, [r5]	@ tmp198, pScdInstance_9(D)->SegFullFlag
	ldr	r6, [r4, #2320]	@ D.36448, pScdInstance_9(D)->last_start_code_addr
	cmp	r6, r3	@ D.36448,
	moveq	r0, r6	@ D.36449, D.36448
	beq	.L685	@,
	add	r1, r5, #165888	@, pScdInstance,
	mov	r2, #80	@,
	add	r1, r1, #288	@,,
	mov	r0, sp	@,
	bl	memcpy	@
	ldr	r3, [r4, #2328]	@ pScdInstance_9(D)->roll_flag, pScdInstance_9(D)->roll_flag
	cmp	r3, #1	@ pScdInstance_9(D)->roll_flag,
	beq	.L691	@,
	ldr	r2, [r4, #2208]	@ D.36454, pScdInstance_9(D)->BufAddrCfg.pUpMsgVirAddr
	ldr	r3, [r2]	@ *_44, *_44
	cmp	r6, r3	@ D.36448, *_44
	bhi	.L687	@,
	ldr	r3, [r9, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73800B].pSegBufVirAddr
	rsb	r7, r7, r6	@ D.36448, SegBufferPhyAddr, D.36448
	add	r9, r9, #72	@ pSegArray, tmp157,
	str	r6, [sp, #8]	@ D.36448, SegPacket.PhyAddr
	add	r7, r3, r7	@ D.36455, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73800B].pSegBufVirAddr, D.36448
	str	r7, [sp]	@ D.36455, SegPacket.VirAddr
	ldr	r3, [r2]	@ *_44, *_44
	mov	r1, r9	@, pSegArray
	mov	r0, sp	@,
	mov	r2, #1	@ tmp227,
	rsb	r6, r6, r3	@ D.36448, D.36448, *_44
	strb	r2, [sp, #5]	@ tmp227, SegPacket.IsLastSeg
	str	r6, [sp, #12]	@ D.36448, SegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	bne	.L689	@,
	ldr	r2, [r4, #2228]	@, pScdInstance_9(D)->InstID
	mov	r1, sp	@,
	mov	r0, r9	@, pSegArray
	bl	InsertStreamSeg	@
	b	.L685	@
.L687:
	ldr	r2, [r8, #16]	@, pSmStateReg_26(D)->ScdRollAddr
	mov	r1, sp	@,
	mov	r0, r5	@, pScdInstance
	bl	ProcessSegRoll	@
	b	.L685	@
.L691:
	ldr	r2, [r4, #2332]	@, pScdInstance_9(D)->roll_addr
	mov	r1, sp	@,
	mov	r0, r5	@, pScdInstance
	bl	ProcessSegRoll	@
	b	.L685	@
.L689:
	mvn	r0, #3	@ D.36449,
	b	.L685	@
	.fnend
	.size	ProcessLastUnfinishedSeg, .-ProcessLastUnfinishedSeg
	.align	2
	.global	SetPushRawOverState
	.type	SetPushRawOverState, %function
SetPushRawOverState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]	@ pSmPushRaw_4(D)->PushRawOverState, pSmPushRaw_4(D)->PushRawOverState
	str	r1, [r0, #8]	@ PushRawOverState, pSmPushRaw_4(D)->PushRawOverState
	cmp	r1, #2	@ PushRawOverState,
	cmpeq	r3, #3	@, pSmPushRaw_4(D)->PushRawOverState,
	moveq	r3, #1	@ tmp125,
	movne	r3, #0	@ tmp125,
	mvneq	r3, #6	@ D.36464,
	mov	r0, r3	@, D.36464
	bx	lr	@
	.fnend
	.size	SetPushRawOverState, .-SetPushRawOverState
	.global	__aeabi_uidiv
	.align	2
	.global	GetValidStartCodeNum
	.type	GetValidStartCodeNum, %function
GetValidStartCodeNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	ldr	r0, [r0, #24]	@, pSmStateReg_2(D)->UpMsgLenInWord
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #12]	@ pSmStateReg_2(D)->StartCodeNum, pSmStateReg_2(D)->StartCodeNum
	cmp	r0, r3	@, pSmStateReg_2(D)->StartCodeNum
	movcs	r0, r3	@, pSmStateReg_2(D)->StartCodeNum
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	GetValidStartCodeNum, .-GetValidStartCodeNum
	.align	2
	.global	ProcessNotMpeg4ScdUpMsg
	.type	ProcessNotMpeg4ScdUpMsg, %function
ProcessNotMpeg4ScdUpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #163840	@ tmp294, pScdInstance,
	.pad #132
	sub	sp, sp, #132	@,,
	add	r3, r0, #165888	@ D.36485, pScdInstance,
	add	r8, r0, #73728	@ tmp293, pScdInstance,
	mov	r9, r0	@ pScdInstance, pScdInstance
	str	r1, [sp, #20]	@ ValidSegNum, %sfp
	mov	lr, r3	@ D.36485, D.36485
	ldr	r1, [r5, #2292]	@ UpMsgStepInWord, pScdInstance_7(D)->UpMsgStepInWord
	movw	r3, #36409	@ tmp295,
	str	r2, [sp, #36]	@ pSmStateReg, %sfp
	add	r10, r8, #72	@ pSegArray, tmp293,
	ldr	r2, [r5, #2208]	@ pScdUpMsg, pScdInstance_7(D)->BufAddrCfg.pUpMsgVirAddr
	mov	ip, r1	@ UpMsgStepInWord, UpMsgStepInWord
	str	r0, [sp, #40]	@ pScdInstance, %sfp
	str	r1, [sp, #44]	@ UpMsgStepInWord, %sfp
	add	r0, sp, #48	@,,
	str	r2, [sp, #16]	@ pScdUpMsg, %sfp
	mov	r1, #0	@,
	mov	r4, r2	@ pScdUpMsg, pScdUpMsg
	mov	r2, #80	@,
	mov	r6, r1	@ ivtmp.550,
	str	r3, [sp, #32]	@ tmp295, %sfp
	mov	r7, ip, asl #2	@ D.36482, UpMsgStepInWord,
	add	ip, lr, #208	@ D.36485, D.36485,
	str	ip, [sp, #12]	@ D.36485, %sfp
	bl	memset	@
	ldr	r3, [sp, #32]	@ tmp295, %sfp
	add	r2, r9, #48	@ pRawArray, pScdInstance,
	mov	fp, r6	@ i, ivtmp.550
	str	r2, [sp, #4]	@ pRawArray, %sfp
	str	r8, [sp, #8]	@ tmp293, %sfp
	movt	r3, 14563	@ tmp295,
	str	r3, [sp, #32]	@ tmp295, %sfp
	b	.L698	@
.L714:
	ldr	r2, [r5, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	str	r3, [sp, #56]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	rsb	r3, r2, r3	@ D.36482, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, CurrentStartCodePhyAddr
	ldr	r2, [sp, #8]	@ tmp293, %sfp
	str	lr, [sp, #60]	@ D.36482, SegPacket.LenInByte
	strb	ip, [sp, #53]	@ tmp199, SegPacket.IsLastSeg
	ldr	r2, [r2, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	add	r3, r2, r3	@ D.36484, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, D.36482
	str	r3, [sp, #48]	@ D.36484, SegPacket.VirAddr
	bl	CheckSegValid	@
	add	r3, sp, #48	@,,
	ldr	r2, [sp, #12]	@, %sfp
	cmp	r0, #0	@,
	ldr	r0, [sp, #4]	@, %sfp
	bne	.L703	@,
	ldr	r1, [r4, #4]	@ MEM[base: _136, offset: 4B], MEM[base: _136, offset: 4B]
	bic	r1, r1, #-1073741824	@, MEM[base: _136, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r5, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #48	@,,
	mov	r0, r10	@, pSegArray
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L703	@,
.L704:
	ldr	fp, [sp]	@ i, %sfp
	add	r4, r4, r7	@ ivtmp.548, ivtmp.548, D.36482
	add	r6, r6, r7	@ ivtmp.550, ivtmp.550, D.36482
.L698:
	ldr	r2, [sp, #20]	@ ValidSegNum, %sfp
	mov	ip, #1	@ tmp199,
	ldr	r3, [sp, #16]	@ pScdUpMsg, %sfp
	mov	r1, r10	@, pSegArray
	cmp	fp, r2	@ i, ValidSegNum
	add	r0, sp, #48	@,,
	add	r2, fp, ip	@ i, i,
	add	r3, r3, r7	@ D.36487, pScdUpMsg, D.36482
	str	r2, [sp]	@ i, %sfp
	beq	.L703	@,
	ldr	r2, [r3, r6]	@ NextStartCodePhyAddr, MEM[base: _137, index: ivtmp.550_106, offset: 0B]
	ldr	r3, [r4]	@ CurrentStartCodePhyAddr, MEM[base: _136, offset: 0B]
	cmp	r3, r2	@ CurrentStartCodePhyAddr, NextStartCodePhyAddr
	rsb	lr, r3, r2	@ D.36482, CurrentStartCodePhyAddr, NextStartCodePhyAddr
	bls	.L714	@,
	ldr	ip, [r5, #2132]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail
	mov	r1, r10	@, pSegArray
	ldr	lr, [r5, #2128]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head
	add	r0, sp, #48	@,,
	add	ip, ip, #1152	@ D.36482, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail,
	str	r3, [sp, #56]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	rsb	ip, lr, ip	@ D.36482, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head, D.36482
	ldr	lr, [sp, #32]	@ tmp295, %sfp
	umull	r8, r9, ip, lr	@ tmp230, D.36482, tmp295
	ldr	lr, [sp, #36]	@ pSmStateReg, %sfp
	ldr	lr, [lr, #16]	@ pSmStateReg_25(D)->ScdRollAddr, pSmStateReg_25(D)->ScdRollAddr
	rsb	lr, r3, lr	@ FirstHalfSegLen, CurrentStartCodePhyAddr, pSmStateReg_25(D)->ScdRollAddr
	strd	r8, [sp, #24]	@ tmp230,,
	mov	r8, lr	@ FirstHalfSegLen, FirstHalfSegLen
	ldr	lr, [sp, #28]	@ tmp322, %sfp
	mov	r9, lr, lsr #8	@ tmp229, tmp322,
	mov	lr, r9, asl #10	@ tmp234, tmp229,
	add	lr, lr, r9, lsl #7	@ tmp235, tmp234, tmp229,
	rsb	ip, lr, ip	@ D.36488, tmp235, D.36482
	ldr	lr, [r5, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	rsb	ip, ip, #1152	@ FreeSegSlotNum, D.36488,
	rsb	r9, lr, r2	@ SecondHalfSegLen, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, NextStartCodePhyAddr
	ldr	r2, [sp, #8]	@ tmp293, %sfp
	rsb	r3, lr, r3	@ D.36482, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, CurrentStartCodePhyAddr
	cmp	ip, #2	@ FreeSegSlotNum,
	ldr	lr, [r2, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	add	r2, r8, r9	@ SegPacketLen, FirstHalfSegLen, SecondHalfSegLen
	str	r2, [sp, #60]	@ SegPacketLen, SegPacket.LenInByte
	add	r3, lr, r3	@ D.36484, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, D.36482
	str	r3, [sp, #48]	@ D.36484, SegPacket.VirAddr
	bls	.L703	@,
	bl	CheckSegValid	@
	add	r3, sp, #48	@,,
	ldr	r2, [sp, #12]	@, %sfp
	mov	ip, #1	@ tmp249,
	subs	r1, r0, #0	@ D.36483,
	ldr	r0, [sp, #4]	@, %sfp
	bne	.L703	@,
	cmp	r9, #0	@ SecondHalfSegLen,
	bne	.L705	@,
	str	r8, [sp, #60]	@ FirstHalfSegLen, SegPacket.LenInByte
	add	r3, sp, #48	@,,
	strb	ip, [sp, #53]	@ tmp249, SegPacket.IsLastSeg
	ldr	r1, [r4, #4]	@ MEM[base: _136, offset: 4B], MEM[base: _136, offset: 4B]
	bic	r1, r1, #-1073741824	@, MEM[base: _136, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r5, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #48	@,,
	mov	r0, r10	@, pSegArray
	bl	InsertStreamSeg	@
	b	.L704	@
.L705:
	str	r8, [sp, #60]	@ FirstHalfSegLen, SegPacket.LenInByte
	strb	r1, [sp, #53]	@ D.36483, SegPacket.IsLastSeg
	ldr	r1, [r4, #4]	@ MEM[base: _136, offset: 4B], MEM[base: _136, offset: 4B]
	bic	r1, r1, #-1073741824	@, MEM[base: _136, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r5, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #48	@,,
	mov	r0, r10	@, pSegArray
	bl	InsertStreamSeg	@
	ldr	r3, [sp, #8]	@ tmp293, %sfp
	ldr	ip, [r5, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	add	r1, sp, #48	@,,
	ldr	r2, [r5, #2228]	@, pScdInstance_7(D)->InstID
	mov	r0, r10	@, pSegArray
	ldr	lr, [r3, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	mov	r3, #1	@ tmp279,
	str	r9, [sp, #60]	@ SecondHalfSegLen, SegPacket.LenInByte
	str	ip, [sp, #56]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, SegPacket.PhyAddr
	str	lr, [sp, #48]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, SegPacket.VirAddr
	strb	r3, [sp, #53]	@ tmp279, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L704	@
.L703:
	cmp	fp, #0	@ i,
	ble	.L715	@,
	ldr	r3, [sp, #36]	@ pSmStateReg, %sfp
	ldr	r3, [r3, #12]	@ pSmStateReg_25(D)->StartCodeNum, pSmStateReg_25(D)->StartCodeNum
	sub	r1, r3, #1	@ D.36483, pSmStateReg_25(D)->StartCodeNum,
	cmp	r1, fp	@ D.36483, i
	bgt	.L716	@,
	cmp	r1, fp	@ D.36483, i
	beq	.L717	@,
.L697:
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L715:
	blt	.L697	@,
	ldr	r3, [sp, #36]	@ pSmStateReg, %sfp
	ldr	r3, [r3, #12]	@ pSmStateReg_25(D)->StartCodeNum, pSmStateReg_25(D)->StartCodeNum
	sub	r1, r3, #1	@ D.36483, pSmStateReg_25(D)->StartCodeNum,
	cmp	r1, fp	@ D.36483, i
	bne	.L697	@,
.L717:
	ldr	r4, [r5, #2180]	@ D.36483, pScdInstance_7(D)->SmPushRaw.PushRawTotalLen
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	bl	SetLastUnfinishedSegInfo	@
	mov	r1, r4	@, D.36483
	ldr	r0, [sp, #4]	@, %sfp
	bl	DeleteRawLen	@
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L716:
	ldr	r3, [sp, #44]	@ UpMsgStepInWord, %sfp
	ldr	r2, [sp, #16]	@ pScdUpMsg, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	mul	r3, r3, fp	@ D.36482, UpMsgStepInWord, i
	add	r3, r3, #1	@ tmp287, D.36482,
	ldr	r4, [r2, r3, asl #2]	@ *_97, *_97
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #4]	@, %sfp
	bic	r4, r4, #-1073741824	@ RawPacketLenToDelete, *_97,
	mov	r1, r4	@, RawPacketLenToDelete
	bl	DeleteRawLen	@
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	ProcessNotMpeg4ScdUpMsg, .-ProcessNotMpeg4ScdUpMsg
	.align	2
	.global	ConvertByteOrder
	.type	ConvertByteOrder, %function
ConvertByteOrder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.36495, MEM[(HI_U8 *)VirAddr_2(D) + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36495, *VirAddr_2(D)
	ldrb	r1, [r0, #3]	@ zero_extendqisi2	@ D.36495, MEM[(HI_U8 *)VirAddr_2(D) + 3B]
	mov	r2, r2, asl #16	@ D.36495, D.36495,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.36495, MEM[(HI_U8 *)VirAddr_2(D) + 2B]
	orr	r3, r2, r3, asl #24	@ D.36495, D.36495, D.36495,
	orr	r3, r3, r1	@ D.36495, D.36495, D.36495
	orr	r0, r3, r0, asl #8	@, D.36495, D.36495,
	bx	lr	@
	.fnend
	.size	ConvertByteOrder, .-ConvertByteOrder
	.align	2
	.global	GetMeg4ModeFlag
	.type	GetMeg4ModeFlag, %function
GetMeg4ModeFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r1, #0	@ ValidSegNum
	add	fp, r0, #163840	@ tmp190, pScdInstance,
	ldr	r5, [fp, #2292]	@ UpMsgStepInWord, pScdInstance_7(D)->UpMsgStepInWord
	ldr	r4, [fp, #2208]	@ pScdUpMsg, pScdInstance_7(D)->BufAddrCfg.pUpMsgVirAddr
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	mov	r6, r1	@ ValidSegNum, ValidSegNum
	ldr	r9, .L738	@ tmp193,
	mov	r5, r5, asl #2	@ D.36505, UpMsgStepInWord,
	mov	r10, #0	@ i,
	movw	r7, #438	@ tmp191,
	mov	r8, #1	@ tmp192,
	b	.L727	@
.L723:
	add	r10, r10, #1	@ i, i,
	add	r4, r4, r5	@ ivtmp.557, ivtmp.557, D.36505
	cmp	r10, r6	@ i, ValidSegNum
	beq	.L737	@,
.L727:
	ldr	r0, [r4]	@, *_14
	bl	MEM_Phy2Vir	@
	mov	ip, #0	@ tmp172,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.36505, MEM[(HI_U8 *)pCurrentStartCodeVirAddr_18 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36505, *pCurrentStartCodeVirAddr_18
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.36505, MEM[(HI_U8 *)pCurrentStartCodeVirAddr_18 + 3B]
	mov	r1, r1, asl #16	@ D.36505, D.36505,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.36505, MEM[(HI_U8 *)pCurrentStartCodeVirAddr_18 + 2B]
	orr	r3, r1, r3, asl #24	@ D.36505, D.36505, D.36505,
	orr	r3, r3, r2	@ D.36505, D.36505, D.36505
	orr	r3, r3, r0, asl #8	@ ReadOneWord, D.36505, D.36505,
	bic	r2, r3, #1020	@ D.36505, ReadOneWord,
	cmp	r3, r7	@ ReadOneWord, tmp191
	cmpne	r3, #288	@, ReadOneWord,
	bic	r2, r2, #3	@ D.36505, D.36505,
	streq	r8, [fp, #2236]	@ tmp192, pScdInstance_7(D)->Mpeg4ModeFlag
	streq	ip, [fp, #2240]	@ tmp172, pScdInstance_7(D)->LastH263Num
	cmp	r2, #32768	@ D.36505,
	bne	.L723	@,
	ldr	r3, [fp, #2236]	@ pScdInstance_7(D)->Mpeg4ModeFlag, pScdInstance_7(D)->Mpeg4ModeFlag
	cmp	r3, #1	@ pScdInstance_7(D)->Mpeg4ModeFlag,
	beq	.L724	@,
.L726:
	add	r10, r10, #1	@ i, i,
	mov	r3, #2	@ tmp180,
	cmp	r10, r6	@ i, ValidSegNum
	str	r3, [fp, #2236]	@ tmp180, pScdInstance_7(D)->Mpeg4ModeFlag
	add	r4, r4, r5	@ ivtmp.557, ivtmp.557, D.36505
	bne	.L727	@,
.L737:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L724:
	ldr	r3, [fp, #2240]	@ pScdInstance_7(D)->LastH263Num, pScdInstance_7(D)->LastH263Num
	add	r3, r3, #1	@ D.36505, pScdInstance_7(D)->LastH263Num,
	str	r3, [fp, #2240]	@ D.36505, pScdInstance_7(D)->LastH263Num
	cmp	r3, #30	@ D.36505,
	bls	.L723	@,
	ldr	r3, [r9]	@ D.36506, g_event_report
	mov	r2, #0	@,
	mov	r1, #102	@,
	cmp	r3, r2	@ D.36506,
	beq	.L726	@,
	ldr	r0, [fp, #2228]	@, pScdInstance_7(D)->InstID
	blx	r3	@ D.36506
	b	.L726	@
.L739:
	.align	2
.L738:
	.word	g_event_report
	.fnend
	.size	GetMeg4ModeFlag, .-GetMeg4ModeFlag
	.align	2
	.global	ParseMpeg4UniqueUpMsg
	.type	ParseMpeg4UniqueUpMsg, %function
ParseMpeg4UniqueUpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1]	@ zero_extendqisi2	@, pMpeg4UniqueUpMsg_4(D)->IsShStreamFlag
	cmp	r0, #1	@ Mpeg4ModeFlag,
	bfceq	r3, #0, #1	@ pMpeg4UniqueUpMsg_4(D)->IsShStreamFlag,,
	orrne	r3, r3, #1	@ tmp134, pMpeg4UniqueUpMsg_4(D)->IsShStreamFlag,
	strb	r3, [r1]	@ tmp134, pMpeg4UniqueUpMsg_4(D)->IsShStreamFlag
	ldr	r3, [r2, #4]	@ MEM[(HI_U32 *)pScdUpMsg_7(D) + 4B], MEM[(HI_U32 *)pScdUpMsg_7(D) + 4B]
	ldrb	r0, [r1]	@ zero_extendqisi2	@, pMpeg4UniqueUpMsg_4(D)->SliceFlag
	mov	r3, r3, lsr #30	@ D.36510, MEM[(HI_U32 *)pScdUpMsg_7(D) + 4B],
	bfi	r0, r3, #1, #1	@ pMpeg4UniqueUpMsg_4(D)->SliceFlag, D.36510,,
	strb	r0, [r1]	@ pMpeg4UniqueUpMsg_4(D)->SliceFlag, pMpeg4UniqueUpMsg_4(D)->SliceFlag
	ldrh	r0, [r2, #10]	@ D.36510, MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B]
	ldrb	r3, [r1]	@ zero_extendqisi2	@, pMpeg4UniqueUpMsg_4(D)->IsShortHeader
	bfi	r3, r0, #2, #1	@ pMpeg4UniqueUpMsg_4(D)->IsShortHeader, D.36510,,
	strb	r3, [r1]	@ pMpeg4UniqueUpMsg_4(D)->IsShortHeader, pMpeg4UniqueUpMsg_4(D)->IsShortHeader
	ldr	r3, [r2, #8]	@ MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B], MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B]
	ldrb	r0, [r1]	@ zero_extendqisi2	@, pMpeg4UniqueUpMsg_4(D)->StartCodeBitOffset
	ubfx	r3, r3, #4, #3	@ tmp147, MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B],,
	bfi	r0, r3, #3, #4	@ pMpeg4UniqueUpMsg_4(D)->StartCodeBitOffset, tmp147,,
	strb	r0, [r1]	@ pMpeg4UniqueUpMsg_4(D)->StartCodeBitOffset, pMpeg4UniqueUpMsg_4(D)->StartCodeBitOffset
	ldr	r3, [r2, #8]	@ MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B], MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B]
	ldrh	r2, [r1]	@,* pMpeg4UniqueUpMsg
	and	r3, r3, #7	@ tmp152, MEM[(HI_U32 *)pScdUpMsg_7(D) + 8B],
	bfi	r2, r3, #7, #4	@ tmp153, tmp152,,
	strh	r2, [r1]	@ movhi	@ tmp153,* pMpeg4UniqueUpMsg
	bx	lr	@
	.fnend
	.size	ParseMpeg4UniqueUpMsg, .-ParseMpeg4UniqueUpMsg
	.align	2
	.global	ProcessMpeg4ScdUpMsg
	.type	ProcessMpeg4ScdUpMsg, %function
ProcessMpeg4ScdUpMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #163840	@ tmp553, pScdInstance,
	.pad #204
	sub	sp, sp, #204	@,,
	mov	r7, r0	@ pScdInstance, pScdInstance
	ldr	r3, [r6, #2292]	@ UpMsgStepInWord, pScdInstance_7(D)->UpMsgStepInWord
	mov	r4, r1	@ ValidSegNum, ValidSegNum
	mov	r8, r2	@ pSmStateReg, pSmStateReg
	str	r0, [sp, #32]	@ pScdInstance, %sfp
	str	r2, [sp, #28]	@ pSmStateReg, %sfp
	mov	r1, #0	@,
	mov	r10, r3	@ UpMsgStepInWord, UpMsgStepInWord
	str	r3, [sp, #36]	@ UpMsgStepInWord, %sfp
	ldr	r3, [r6, #2208]	@ pScdUpMsg, pScdInstance_7(D)->BufAddrCfg.pUpMsgVirAddr
	mov	r2, #80	@,
	add	r0, sp, #40	@,,
	mov	r9, r3	@ pScdUpMsg, pScdUpMsg
	str	r3, [sp, #4]	@ pScdUpMsg, %sfp
	bl	memset	@
	add	r3, r7, #73728	@ tmp555, pScdInstance,
	mov	r2, #80	@,
	mov	r1, #0	@,
	add	r0, sp, #120	@ tmp569,,
	mov	fp, r3	@ tmp555, tmp555
	str	r3, [sp, #8]	@ tmp555, %sfp
	bl	memset	@
	ldr	r0, [r6, #2144]	@, pScdInstance_7(D)->StreamSegArray.SegBufPhyAddr
	add	fp, fp, #72	@ pSegArray, tmp555,
	bl	MEM_Phy2Vir	@
	add	r3, r7, #165888	@ D.36528, pScdInstance,
	str	r3, [sp, #12]	@ D.36528, %sfp
	mov	r5, r0	@ pSegBufVirAddr,
	ldr	r0, [r8, #16]	@, pSmStateReg_18(D)->ScdRollAddr
	bl	MEM_Phy2Vir	@
	mov	r2, #4	@,
	mov	r1, r5	@, pSegBufVirAddr
	mov	r8, #0	@ ivtmp.570,
	bl	memcpy	@
	mov	r1, r4	@, ValidSegNum
	mov	r0, r7	@, pScdInstance
	bl	GetMeg4ModeFlag	@
	mov	r2, r4	@, ValidSegNum
	mov	r1, r9	@, pScdUpMsg
	mov	r0, r7	@, pScdInstance
	movw	r3, #36409	@ tmp556,
	str	r3, [sp, #24]	@ tmp556, %sfp
	bl	GetNextVop	@
	ldr	r3, [sp, #24]	@ tmp556, %sfp
	ldr	r2, [sp, #12]	@ D.36528, %sfp
	mov	r4, r9	@ pScdUpMsg, pScdUpMsg
	mov	r9, r10, asl #2	@ D.36524, UpMsgStepInWord,
	add	r2, r2, #208	@ D.36528, D.36528,
	movt	r3, 14563	@ tmp556,
	str	r2, [sp, #12]	@ D.36528, %sfp
	add	r2, r7, #48	@ pRawArray, pScdInstance,
	str	r3, [sp, #24]	@ tmp556, %sfp
	mov	r7, r8	@ i, ivtmp.570
	str	r2, [sp, #16]	@ pRawArray, %sfp
	str	r0, [sp]	@, %sfp
	b	.L744	@
.L773:
	ldr	r3, [sp, #128]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L746	@,
	ldr	r3, [sp, #132]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r1, fp	@, pSegArray
	add	r0, sp, #120	@ tmp584,,
	add	r5, r3, r5	@ D.36524, LastSegPacket.LenInByte, D.36524
	str	r5, [sp, #132]	@ D.36524, LastSegPacket.LenInByte
	bl	CheckSegValid	@
	cmp	r0, #0	@,
	bne	.L750	@,
	ldr	r2, [r6, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #120	@ tmp585,,
	mov	r0, fp	@, pSegArray
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r5, r0	@ Ret,
	add	r0, sp, #120	@ tmp586,,
	bl	__memzero	@
	cmp	r5, #0	@ Ret,
	bne	.L750	@,
.L751:
	add	r4, r4, r9	@ ivtmp.567, ivtmp.567, D.36524
	add	r8, r8, r9	@ ivtmp.570, ivtmp.570, D.36524
	mov	r7, r10	@ i, i
.L744:
	ldr	r3, [sp]	@ i, %sfp
	cmp	r7, r3	@ i, i
	beq	.L750	@,
	ldr	r3, [sp, #4]	@ pScdUpMsg, %sfp
	add	r10, r7, #1	@ i, i,
	ldr	r2, [r4]	@ CurrentStartCodePhyAddr, MEM[base: _312, offset: 0B]
	add	r3, r3, r9	@ D.36531, pScdUpMsg, D.36524
	ldr	r3, [r3, r8]	@ NextStartCodePhyAddr, MEM[base: _313, index: ivtmp.570_4, offset: 0B]
	rsb	r5, r2, r3	@ D.36524, CurrentStartCodePhyAddr, NextStartCodePhyAddr
	cmp	r5, #3	@ D.36524,
	bgt	.L773	@,
	sub	r1, r5, #1	@ D.36526, D.36524,
	cmp	r1, #2	@ D.36526,
	bls	.L774	@,
	ldr	r1, [r6, #2132]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail
	ldr	lr, [r6, #2128]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head
	add	r1, r1, #1152	@ D.36524, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Tail,
	str	r2, [sp, #48]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	rsb	lr, lr, r1	@ D.36524, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].Head, D.36524
	ldr	r1, [sp, #28]	@ pSmStateReg, %sfp
	ldr	ip, [r1, #16]	@ pSmStateReg_18(D)->ScdRollAddr, pSmStateReg_18(D)->ScdRollAddr
	ldr	r1, [sp, #24]	@ tmp556, %sfp
	rsb	ip, r2, ip	@ FirstHalfSegLen, CurrentStartCodePhyAddr, pSmStateReg_18(D)->ScdRollAddr
	str	ip, [sp, #20]	@ FirstHalfSegLen, %sfp
	umull	r0, r1, lr, r1	@ tmp440, D.36524, tmp556
	ldr	r0, [r6, #2144]	@ D.36524, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	rsb	r5, r0, r3	@ SecondHalfSegLen, D.36524, NextStartCodePhyAddr
	ldr	r3, [sp, #8]	@ tmp555, %sfp
	rsb	r2, r0, r2	@ D.36524, D.36524, CurrentStartCodePhyAddr
	mov	r1, r1, lsr #8	@ tmp439,,
	ldr	r0, [r3, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	mov	r3, r1, asl #10	@ tmp444, tmp439,
	add	r2, r0, r2	@ D.36527, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, D.36524
	add	r3, r3, r1, lsl #7	@ tmp445, tmp444, tmp439,
	str	r2, [sp, #40]	@ D.36527, SegPacket.VirAddr
	rsb	lr, r3, lr	@ D.36534, tmp445, D.36524
	add	r3, ip, r5	@ TotalSegPacketLen, FirstHalfSegLen, SecondHalfSegLen
	rsb	lr, lr, #1152	@ FreeSegSlotNum, D.36534,
	str	r3, [sp, #52]	@ TotalSegPacketLen, SegPacket.LenInByte
	cmp	lr, #2	@ FreeSegSlotNum,
	bls	.L750	@,
	mov	r1, fp	@, pSegArray
	add	r0, sp, #40	@,,
	bl	CheckSegValid	@
	cmp	r0, #0	@ D.36525
	bne	.L750	@,
	cmp	r5, #0	@ SecondHalfSegLen,
	ldr	r3, [r6, #2236]	@ pScdInstance_7(D)->Mpeg4ModeFlag, pScdInstance_7(D)->Mpeg4ModeFlag
	ldr	ip, [sp, #20]	@ FirstHalfSegLen, %sfp
	bne	.L758	@,
	cmp	r3, #1	@ pScdInstance_7(D)->Mpeg4ModeFlag,
	ldrb	r3, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	mov	r0, #1	@ tmp482,
	bfieq	r3, r5, #0, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag, SecondHalfSegLen,,
	orrne	r3, r3, #1	@ tmp461, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag,
	strb	r3, [sp, #112]	@ tmp461, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	add	r3, sp, #40	@,,
	ldr	r2, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldrb	r1, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	mov	r2, r2, lsr #30	@ D.36524, MEM[base: _312, offset: 4B],
	bfi	r1, r2, #1, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, D.36524,,
	strb	r1, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldrh	lr, [r4, #10]	@ D.36524, MEM[base: _312, offset: 8B]
	uxtb	r1, r1	@ tmp469, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldr	r2, [sp, #12]	@, %sfp
	bfi	r1, lr, #2, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, D.36524,,
	strb	r1, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrb	lr, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ubfx	r1, r1, #4, #3	@ tmp474, MEM[base: _312, offset: 8B],,
	bfi	lr, r1, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, tmp474,,
	strb	lr, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	str	ip, [sp, #52]	@ FirstHalfSegLen, SegPacket.LenInByte
	ldrh	ip, [sp, #112]	@,
	and	r1, r1, #7	@ tmp479, MEM[base: _312, offset: 8B],
	strb	r0, [sp, #45]	@ tmp482, SegPacket.IsLastSeg
	bfi	ip, r1, #7, #4	@ tmp480, tmp479,,
	strh	ip, [sp, #112]	@ movhi	@ tmp480,
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldr	r0, [sp, #16]	@, %sfp
	bic	r1, r1, #-1073741824	@, MEM[base: _312, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r6, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #40	@,,
	mov	r0, fp	@, pSegArray
	bl	InsertStreamSeg	@
	b	.L751	@
.L746:
	ldr	r3, [r6, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	mov	r1, fp	@, pSegArray
	str	r2, [sp, #48]	@ CurrentStartCodePhyAddr, SegPacket.PhyAddr
	add	r0, sp, #40	@,,
	rsb	r2, r3, r2	@ D.36524, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, CurrentStartCodePhyAddr
	ldr	r3, [sp, #8]	@ tmp555, %sfp
	str	r5, [sp, #52]	@ D.36524, SegPacket.LenInByte
	ldr	r3, [r3, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	add	r2, r3, r2	@ D.36527, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, D.36524
	mov	r3, #1	@ tmp325,
	str	r2, [sp, #40]	@ D.36527, SegPacket.VirAddr
	strb	r3, [sp, #45]	@ tmp325, SegPacket.IsLastSeg
	bl	CheckSegValid	@
	cmp	r0, #0	@ D.36525
	bne	.L750	@,
	ldr	r3, [r6, #2236]	@ pScdInstance_7(D)->Mpeg4ModeFlag, pScdInstance_7(D)->Mpeg4ModeFlag
	ldr	r2, [sp, #12]	@, %sfp
	cmp	r3, #1	@ pScdInstance_7(D)->Mpeg4ModeFlag,
	ldrb	r3, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	bfieq	r3, r0, #0, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag, D.36525,,
	orrne	r3, r3, #1	@ tmp335, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag,
	strb	r3, [sp, #112]	@ tmp335, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	add	r3, sp, #40	@,,
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldrb	ip, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldr	r0, [sp, #16]	@, %sfp
	mov	r1, r1, lsr #30	@ D.36524, MEM[base: _312, offset: 4B],
	bfi	ip, r1, #1, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, D.36524,,
	strb	ip, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	uxtb	r1, ip	@ tmp343, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldrh	ip, [r4, #10]	@ D.36524, MEM[base: _312, offset: 8B]
	bfi	r1, ip, #2, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, D.36524,,
	strb	r1, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrb	ip, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ubfx	r1, r1, #4, #3	@ tmp348, MEM[base: _312, offset: 8B],,
	bfi	ip, r1, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, tmp348,,
	strb	ip, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrh	ip, [sp, #112]	@,
	and	r1, r1, #7	@ tmp353, MEM[base: _312, offset: 8B],
	bfi	ip, r1, #7, #4	@ tmp354, tmp353,,
	strh	ip, [sp, #112]	@ movhi	@ tmp354,
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	bic	r1, r1, #-1073741824	@, MEM[base: _312, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r6, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #40	@,,
	mov	r0, fp	@, pSegArray
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L751	@,
.L750:
	cmp	r7, #0	@ i,
	ble	.L749	@,
	ldr	r3, [sp, #28]	@ pSmStateReg, %sfp
	ldr	r3, [r3, #12]	@ pSmStateReg_18(D)->StartCodeNum, pSmStateReg_18(D)->StartCodeNum
	sub	r3, r3, #1	@ D.36525, pSmStateReg_18(D)->StartCodeNum,
	cmp	r7, r3	@ i, D.36525
	blt	.L775	@,
	beq	.L776	@,
.L749:
	ldr	r0, [sp, #32]	@, %sfp
	bl	ResetLastUnfinishedSegInfo	@
.L743:
	add	sp, sp, #204	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L758:
	cmp	r3, #1	@ pScdInstance_7(D)->Mpeg4ModeFlag,
	ldrb	r3, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	bfieq	r3, r0, #0, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag, D.36525,,
	orrne	r3, r3, #1	@ tmp500, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag,
	strb	r3, [sp, #112]	@ tmp500, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShStreamFlag
	mov	r0, #0	@ tmp521,
	ldr	r2, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	add	r3, sp, #40	@,,
	ldrb	r1, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	mov	r2, r2, lsr #30	@ D.36524, MEM[base: _312, offset: 4B],
	bfi	r1, r2, #1, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, D.36524,,
	strb	r1, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldrh	lr, [r4, #10]	@ D.36524, MEM[base: _312, offset: 8B]
	uxtb	r1, r1	@ tmp508, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].SliceFlag
	ldr	r2, [sp, #12]	@, %sfp
	bfi	r1, lr, #2, #1	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, D.36524,,
	strb	r1, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].IsShortHeader
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrb	lr, [sp, #112]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ubfx	r1, r1, #4, #3	@ tmp513, MEM[base: _312, offset: 8B],,
	bfi	lr, r1, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, tmp513,,
	strb	lr, [sp, #112]	@ MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)&SegPacket + 72B].StartCodeBitOffset
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	str	ip, [sp, #52]	@ FirstHalfSegLen, SegPacket.LenInByte
	ldrh	ip, [sp, #112]	@,
	and	r1, r1, #7	@ tmp518, MEM[base: _312, offset: 8B],
	strb	r0, [sp, #45]	@ tmp521, SegPacket.IsLastSeg
	bfi	ip, r1, #7, #4	@ tmp519, tmp518,,
	strh	ip, [sp, #112]	@ movhi	@ tmp519,
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldr	r0, [sp, #16]	@, %sfp
	bic	r1, r1, #-1073741824	@, MEM[base: _312, offset: 4B],
	bl	GetSegPts	@
	ldr	r2, [r6, #2228]	@, pScdInstance_7(D)->InstID
	add	r1, sp, #40	@,,
	mov	r0, fp	@, pSegArray
	bl	InsertStreamSeg	@
	ldr	r3, [sp, #8]	@ tmp555, %sfp
	ldr	ip, [r6, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	add	r1, sp, #40	@,,
	ldr	r2, [r6, #2228]	@, pScdInstance_7(D)->InstID
	mov	r0, fp	@, pSegArray
	ldr	lr, [r3, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	mov	r3, #1	@ tmp540,
	str	r5, [sp, #52]	@ SecondHalfSegLen, SegPacket.LenInByte
	str	ip, [sp, #48]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, SegPacket.PhyAddr
	str	lr, [sp, #40]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, SegPacket.VirAddr
	strb	r3, [sp, #45]	@ tmp540, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	b	.L751	@
.L774:
	mov	r0, r3	@, NextStartCodePhyAddr
	str	r2, [sp, #20]	@ CurrentStartCodePhyAddr, %sfp
	bl	MEM_Phy2Vir	@
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.36524, MEM[(HI_U8 *)pNextStartCodeVirAddr_44 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36524, *pNextStartCodeVirAddr_44
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.36524, MEM[(HI_U8 *)pNextStartCodeVirAddr_44 + 2B]
	mov	r1, r1, asl #16	@ D.36524, D.36524,
	orr	r3, r1, r3, asl #24	@ D.36524, D.36524, D.36524,
	orr	r3, r3, r0, asl #8	@ D.36524, D.36524, D.36524,
	cmp	r3, #256	@ D.36524,
	beq	.L751	@,
	ldr	r3, [r6, #2236]	@ pScdInstance_7(D)->Mpeg4ModeFlag, pScdInstance_7(D)->Mpeg4ModeFlag
	mov	r0, #1	@ tmp415,
	ldr	r2, [sp, #20]	@ CurrentStartCodePhyAddr, %sfp
	cmp	r3, #1	@ pScdInstance_7(D)->Mpeg4ModeFlag,
	ldrb	r3, [sp, #192]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShStreamFlag
	bfceq	r3, #0, #1	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShStreamFlag,,
	orrne	r3, r3, #1	@ tmp384, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShStreamFlag,
	strb	r3, [sp, #192]	@ tmp384, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShStreamFlag
	add	r3, sp, #120	@ tmp588,,
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldrb	ip, [sp, #192]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].SliceFlag
	mov	r1, r1, lsr #30	@ D.36524, MEM[base: _312, offset: 4B],
	bfi	ip, r1, #1, #1	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].SliceFlag, D.36524,,
	strb	ip, [sp, #192]	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].SliceFlag, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].SliceFlag
	uxtb	r1, ip	@ tmp392, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].SliceFlag
	ldrh	ip, [r4, #10]	@ D.36524, MEM[base: _312, offset: 8B]
	bfi	r1, ip, #2, #1	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShortHeader, D.36524,,
	strb	r1, [sp, #192]	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShortHeader, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].IsShortHeader
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrb	ip, [sp, #192]	@ zero_extendqisi2	@, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].StartCodeBitOffset
	ubfx	r1, r1, #4, #3	@ tmp397, MEM[base: _312, offset: 8B],,
	bfi	ip, r1, #3, #4	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].StartCodeBitOffset, tmp397,,
	strb	ip, [sp, #192]	@ MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].StartCodeBitOffset, MEM[(struct MP4_SCD_UPMSG *)&LastSegPacket + 72B].StartCodeBitOffset
	ldr	r1, [r4, #8]	@ MEM[base: _312, offset: 8B], MEM[base: _312, offset: 8B]
	ldrh	lr, [sp, #192]	@,
	and	r1, r1, #7	@ tmp402, MEM[base: _312, offset: 8B],
	ldr	ip, [r6, #2144]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr
	bfi	lr, r1, #7, #4	@ tmp403, tmp402,,
	ldr	r1, [sp, #8]	@ tmp555, %sfp
	rsb	ip, ip, r2	@ D.36524, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].SegBufPhyAddr, CurrentStartCodePhyAddr
	str	r2, [sp, #128]	@ CurrentStartCodePhyAddr, LastSegPacket.PhyAddr
	strb	r0, [sp, #125]	@ tmp415, LastSegPacket.IsLastSeg
	ldr	r1, [r1, #72]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr
	str	r5, [sp, #132]	@ D.36524, LastSegPacket.LenInByte
	add	ip, r1, ip	@ D.36527, MEM[(struct SEG_ARRAY_S *)pScdInstance_7(D) + 73800B].pSegBufVirAddr, D.36524
	strh	lr, [sp, #192]	@ movhi	@ tmp403,
	str	ip, [sp, #120]	@ D.36527, LastSegPacket.VirAddr
	ldr	r1, [r4, #4]	@ MEM[base: _312, offset: 4B], MEM[base: _312, offset: 4B]
	ldr	r2, [sp, #12]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	bic	r1, r1, #-1073741824	@, MEM[base: _312, offset: 4B],
	bl	GetSegPts	@
	b	.L751	@
.L775:
	ldr	r3, [sp, #36]	@ UpMsgStepInWord, %sfp
	ldr	r2, [sp, #4]	@ pScdUpMsg, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mul	r3, r3, r7	@ D.36524, UpMsgStepInWord, i
	add	r3, r3, #1	@ tmp548, D.36524,
	ldr	r4, [r2, r3, asl #2]	@ *_147, *_147
	bl	ResetLastUnfinishedSegInfo	@
	ldr	r0, [sp, #16]	@, %sfp
	bic	r4, r4, #-1073741824	@ RawPacketLenToDelete, *_147,
	mov	r1, r4	@, RawPacketLenToDelete
	bl	DeleteRawLen	@
	add	sp, sp, #204	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L776:
	ldr	r4, [r6, #2180]	@ D.36525, pScdInstance_7(D)->SmPushRaw.PushRawTotalLen
	mov	r1, r7	@, i
	ldr	r0, [sp, #32]	@, %sfp
	ldr	r2, [sp, #28]	@, %sfp
	bl	SetLastUnfinishedSegInfo	@
	mov	r1, r4	@, D.36525
	ldr	r0, [sp, #16]	@, %sfp
	bl	DeleteRawLen	@
	b	.L743	@
	.fnend
	.size	ProcessMpeg4ScdUpMsg, .-ProcessMpeg4ScdUpMsg
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ InstID, InstID
	beq	.L789	@,
	mov	r0, #0	@ D.36545,
	bx	lr	@
.L789:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r3	@ InstID, InstID
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	moveq	r0, #0	@ D.36545,
	beq	.L779	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.36547, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.36547,
	movlt	r0, #1	@ D.36545,
	blt	.L779	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	movgt	r0, r4	@ D.36545, InstID
	bgt	.L779	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.36545,
	movle	r0, #1	@ D.36545,
.L779:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	SCDDRV_SaveRawStream
	.type	SCDDRV_SaveRawStream, %function
SCDDRV_SaveRawStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L795	@ tmp116,
	mov	ip, r1	@ pSmInstArray, pSmInstArray
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r0, r3	@ InstID, save_str_chan_num
	bxne	lr	@
	ldr	r3, .L795+4	@ tmp118,
	ldr	r3, [r3]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	bxeq	lr	@
	mov	r1, r2	@, pRawPacket
	mov	r0, ip	@, pSmInstArray
	b	SCDDRV_SaveRawStream.part.7	@
.L796:
	.align	2
.L795:
	.word	save_str_chan_num
	.word	vfmw_save_str_file
	.fnend
	.size	SCDDRV_SaveRawStream, .-SCDDRV_SaveRawStream
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r8, r0, #14	@ tmp161, InstID,
	ldr	r6, .L820	@ tmp160,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ InstID, InstID
	mov	r10, r1	@ pRawPacket, pRawPacket
	add	r9, r6, r8, lsl #2	@ tmp127, tmp160, tmp161,
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp162,,
	ldr	r4, [r9, #12]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L818	@,
	mov	r0, r7	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r5, r0, #0	@ pStreamIntf,
	beq	.L819	@,
	add	r0, sp, #4	@ tmp163,,
	mov	r2, #12	@,
	mov	r1, r5	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r5, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L801	@,
	ldr	r0, .L820+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	mov	r1, r10	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r5, r0	@ ret,
	ldr	r0, .L820+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ret,
	beq	.L802	@,
.L801:
	add	r6, r6, r8, lsl #2	@ tmp157, tmp160, tmp161,
	ldr	r3, [r6, #12]	@ tmp159, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp159,
	beq	.L803	@,
.L818:
	mvn	r0, #6	@ D.36555,
.L815:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L802:
	ldr	r3, [r9, #12]	@ tmp154, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp154,
	beq	.L803	@,
	add	r4, r4, #73728	@ tmp143, pSmInstArray,
	ldr	r2, [r10, #8]	@ pRawPacket_19(D)->Length, pRawPacket_19(D)->Length
	mov	r0, r5	@ D.36555, ret
	ldr	r3, [r4, #68]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.36557, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_19(D)->Length
	str	r3, [r4, #68]	@ D.36557, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L819:
	mov	r2, r7	@, InstID
	ldr	r1, .L820+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36555,
	b	.L815	@
.L803:
	mov	r3, r7	@, InstID
	movw	r2, #2984	@,
	ldr	r1, .L820+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L818	@
.L821:
	.align	2
.L820:
	.word	.LANCHOR0
	.word	g_TaskLock
	.word	.LC26
	.word	.LC27
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r10, .L858	@ tmp210,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r10, r0, lsl #2	@ tmp143, tmp210, InstID,
	mov	r0, sp	@,
	ldr	r4, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L822	@,
	ldr	r3, [r4, #16]	@ pSmInstArray_11->Config.VidStd, pSmInstArray_11->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_11->Config.VidStd,
	beq	.L822	@,
	cmp	r5, #0	@ InstID,
	beq	.L854	@,
.L826:
	mov	r2, r5	@, InstID
	ldr	r1, .L858+4	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L822:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L854:
	mvn	r8, #0	@ tmp213,
	mov	r9, #0	@,
	b	.L825	@
.L834:
	ldr	r3, .L858+8	@ tmp203,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r3, #0	@ save_str_chan_num,
	beq	.L855	@,
.L825:
	ldr	r3, [r10, #68]	@ D.36570, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36570,
	beq	.L826	@,
	add	r2, r3, #73728	@ tmp149, D.36570,
	ldr	r3, [r2, #52]	@ MEM[(struct RAW_ARRAY_S *)_52 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)_52 + 48B].Tail
	ldr	r2, [r2, #56]	@ MEM[(struct RAW_ARRAY_S *)_52 + 48B].History, MEM[(struct RAW_ARRAY_S *)_52 + 48B].History
	add	r3, r3, #1	@ D.36567, MEM[(struct RAW_ARRAY_S *)_52 + 48B].Tail,
	mov	r1, r3, asr #31	@ tmp153, D.36567,
	mov	r1, r1, lsr #22	@ tmp154, tmp153,
	add	r3, r3, r1	@ tmp155, D.36567, tmp154
	ubfx	r3, r3, #0, #10	@ tmp156, tmp155,,
	rsb	r3, r1, r3	@ D.36567, tmp154, tmp156
	cmp	r3, r2	@ D.36567, MEM[(struct RAW_ARRAY_S *)_52 + 48B].History
	beq	.L826	@,
	mov	r1, sp	@,
	mov	r0, #0	@,
	bl	ReadRawStreamData	@
	subs	r6, r0, #0	@ D.36567,
	bne	.L822	@,
	add	r7, r4, #163840	@ tmp162, pSmInstArray,
	ldr	r2, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r7, #2272]	@ pSmInstArray_11->TotalRawSize, pSmInstArray_11->TotalRawSize
	add	r3, r3, r2	@ D.36567, pSmInstArray_11->TotalRawSize, RawPacket.Length
	str	r3, [r7, #2272]	@ D.36567, pSmInstArray_11->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r7, #2276]	@ D.36568, pSmInstArray_11->LastStatTime
	cmp	r1, #0	@ D.36568,
	mov	fp, r0	@ ThisTime,
	streq	r0, [r7, #2276]	@ ThisTime, pSmInstArray_11->LastStatTime
	beq	.L829	@,
	rsb	r1, r1, r0	@ TimePeriod, D.36568, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L829	@,
	ldr	r0, [r7, #2272]	@ pSmInstArray_11->TotalRawSize, pSmInstArray_11->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_11->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r2, #1000	@ tmp183,
	str	r6, [r7, #2272]	@ D.36567, pSmInstArray_11->TotalRawSize
	str	fp, [r7, #2276]	@ ThisTime, pSmInstArray_11->LastStatTime
	mul	r0, r2, r0	@ D.36568, tmp183,
	mov	r0, r0, lsr #10	@ D.36568, D.36568,
	str	r0, [r7, #2280]	@ D.36568, pSmInstArray_11->BitRate
.L829:
	ldrd	r6, [sp, #16]	@ RawPacket.Pts,,
	cmp	r7, r9	@ RawPacket.Pts,
	cmpeq	r6, r8	@ RawPacket.Pts, tmp213
	beq	.L856	@,
.L830:
	mov	r1, sp	@,
	mov	r0, #0	@,
	bl	SCDDRV_InsertRawPacket	@
	cmp	r0, #0	@,
	bne	.L857	@,
	mov	r3, #1	@ tmp195,
	strb	r3, [r4, #3]	@ tmp195, pSmInstArray_11->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L834	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L858+12	@ tmp200,
	ldr	r3, [r10, #100]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36568, last_rec_pos_time, ThisTime
	cmp	r3, r2	@ D.36568, g_TraceBsPeriod
	ldrhi	r3, .L858	@ tmp219,
	strhi	r0, [r3, #100]	@ ThisTime, last_rec_pos_time
	ldr	r3, .L858+8	@ tmp203,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r3, #0	@ save_str_chan_num,
	bne	.L825	@,
.L855:
	ldr	r3, .L858+16	@ tmp205,
	ldr	r3, [r3]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L825	@,
	mov	r1, sp	@,
	mov	r0, r4	@, pSmInstArray
	bl	SCDDRV_SaveRawStream.part.7	@
	b	.L825	@
.L856:
	mvn	r2, #0	@ tmp218,
	mvn	r3, #0	@,
	strd	r2, [sp, #16]	@ tmp218,,
	b	.L830	@
.L857:
	ldr	r1, .L858+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L859:
	.align	2
.L858:
	.word	.LANCHOR0
	.word	.LC29
	.word	save_str_chan_num
	.word	g_TraceBsPeriod
	.word	vfmw_save_str_file
	.word	.LC28
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r8, r1	@ pRawPacket, pRawPacket
	mov	r7, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	mov	r1, #12	@,
	mov	r4, r0	@ pStreamIntf,
	add	r0, sp, #4	@ tmp153,,
	bl	__memzero	@
	cmp	r4, #0	@ pStreamIntf,
	beq	.L871	@,
	mov	r1, r4	@, pStreamIntf
	add	r0, sp, #4	@ tmp154,,
	mov	r2, #12	@,
	ldr	r5, .L874	@ tmp152,
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	add	r6, r7, #14	@ tmp151, InstID,
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	mvneq	r4, #6	@ ret,
	beq	.L863	@,
	add	r3, r5, r6, lsl #2	@ tmp134, tmp152, tmp151,
	ldr	r3, [r3, #12]	@ tmp136, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #44]	@ _16->Config.ScdLowBufEnable, _16->Config.ScdLowBufEnable
	cmp	r3, #0	@ _16->Config.ScdLowBufEnable,
	bne	.L872	@,
	ldr	r0, .L874+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L874+4	@,
	bl	OSAL_SpinLockIRQ	@
.L865:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L863:
	add	r5, r5, r6, lsl #2	@ tmp146, tmp152, tmp151,
	ldr	r0, [r5, #12]	@ tmp148, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp148,
	movne	r0, r4	@ D.36576, ret
	beq	.L873	@,
.L862:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L872:
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L865	@
.L871:
	mov	r2, r7	@, InstID
	mov	r0, r4	@, pStreamIntf
	ldr	r1, .L874+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36576,
	b	.L862	@
.L873:
	mov	r3, r7	@, InstID
	movw	r2, #3032	@,
	ldr	r1, .L874+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36576,
	b	.L862	@
.L875:
	.align	2
.L874:
	.word	.LANCHOR0
	.word	g_TaskLock
	.word	.LC30
	.word	.LC27
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L892	@,
	ldr	r3, .L894	@ tmp131,
	ldr	r7, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r7, #0	@ pSmInstArray,
	beq	.L888	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L893	@,
.L879:
	adds	r8, r7, #48	@ tmp172, pSmInstArray,
	beq	.L888	@,
	add	r6, r7, #73728	@ tmp173, pSmInstArray,
	ldr	r5, [r6, #48]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].Head
	ldr	r4, [r6, #56]	@ D.36588, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].History
	cmp	r5, r4	@ RawHead, D.36588
	addlt	r5, r5, #1024	@ D.36589, RawHead,
	rsb	r5, r4, r5	@ DelNum, D.36588, D.36589
	cmp	r5, #0	@ DelNum,
	beq	.L888	@,
	mov	r9, #0	@ i,
.L883:
	mov	r10, r4, asl #6	@ tmp143, j,
	ldr	r2, .L894+4	@,
	add	r10, r10, r4, lsl #3	@ tmp144, tmp143, j,
	ldr	r1, .L894+8	@,
	add	ip, r7, r10	@ tmp145, pSmInstArray, tmp144
	mov	r0, #26	@,
	add	r9, r9, #1	@ i, i,
	add	r4, r4, #1	@ D.36591, j,
	ldr	r3, [ip, #48]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].RawPacket[j_39].PhyAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].RawPacket[j_39].PhyAddr
	ubfx	r4, r4, #0, #10	@ j, D.36591,,
	ldr	ip, [ip, #56]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].RawPacket[j_39].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].RawPacket[j_39].Length
	str	ip, [sp]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].RawPacket[j_39].Length,
	bl	dprint_vfmw	@
	add	r1, r8, r10	@, tmp172, tmp144
	mov	r0, #0	@,
	bl	ReleaseRawStreamData	@
	cmp	r9, r5	@ i, DelNum
	bne	.L883	@,
	ldr	r4, [r6, #56]	@ D.36588, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].History
	add	r4, r9, r4	@ D.36589, i, D.36588
	cmp	r4, #1024	@ D.36589,
	strlt	r4, [r6, #56]	@ D.36589, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].History
	subge	r4, r4, #1024	@ D.36589, D.36589,
	strge	r4, [r6, #56]	@ D.36589, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 48B].History
	movlt	r0, #0	@ D.36588,
	movge	r0, #0	@ D.36588,
.L878:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L893:
	add	r3, r7, #163840	@ tmp133, pSmInstArray,
	ldr	r3, [r3, #2232]	@ pSmInstArray_10->Mode, pSmInstArray_10->Mode
	cmp	r3, #0	@ pSmInstArray_10->Mode,
	bne	.L879	@,
.L888:
	mvn	r0, #0	@ D.36588,
	b	.L878	@
.L892:
	mov	r2, r0	@, SmID
	ldr	r1, .L894+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36588,
	b	.L878	@
.L895:
	.align	2
.L894:
	.word	.LANCHOR0
	.word	.LANCHOR1+36
	.word	.LC32
	.word	.LC31
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ SmID, SmID
	bne	.L903	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r3	@ SmID, SmID
	ldr	r3, .L907	@ tmp126,
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r4, [r3, #68]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L906	@,
	mov	r2, #40	@,
	add	r1, r4, #8	@, __p,
	add	r5, r4, #163840	@ tmp168, __p,
	mov	r0, sp	@,
	bl	memcpy	@
	mov	r0, r6	@, SmID
	ldr	r6, [r5, #2232]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
	bl	SM_Stop	@
	adds	r7, r4, #48	@ D.36598, __p,
	beq	.L899	@,
	add	r2, r4, #73728	@ tmp137, __p,
	ldr	r3, [r2, #52]	@ MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Tail
	ldr	r1, [r2, #48]	@ MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Head, MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Tail, MEM[(struct RAW_ARRAY_S *)__p_6 + 48B].Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
.L902:
	mov	r0, r7	@, D.36598
	mvn	r8, #0	@ tmp152,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	mvn	r9, #0	@,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #43376	@,
	movt	r1, 2	@,
	mov	r0, r4	@, __p
	ldrb	r7, [r5, #2228]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_6].InstID
	bl	__memzero	@
	mov	r0, r4	@, __p
	add	r4, r4, #165888	@ tmp151, __p,
	bl	ResetLastUnfinishedSegInfo	@
	mov	r3, #2	@ tmp155,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mov	r1, sp	@,
	str	r7, [r5, #2228]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_6].InstID
	mov	r0, #0	@,
	strd	r8, [r4, #208]	@ tmp152, tmp151,
	sub	r6, r6, #1	@ D.36600, TmpMode,
	str	r3, [r5, #2292]	@ tmp155, MEM[(struct SM_INSTANCE_S *)__p_6].UpMsgStepInWord
	bl	SM_Config	@
	cmp	r6, #1	@ D.36600,
	movls	r0, #0	@ D.36596,
	movls	r3, #1	@ tmp160,
	movhi	r0, #0	@ tmp163,
	strls	r3, [r5, #2232]	@ tmp160, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
	strhi	r0, [r5, #2232]	@ tmp163, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
.L904:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L899:
	ldr	r1, .L907+4	@,
	movw	r3, #1082	@,
	ldr	r2, .L907+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, r7	@ D.36601, D.36598
	b	.L902	@
.L903:
	mvn	r0, #0	@ D.36596,
	bx	lr	@
.L906:
	movw	r2, #1068	@,
	ldr	r1, .L907+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36596,
	b	.L904	@
.L908:
	.align	2
.L907:
	.word	.LANCHOR0
	.word	.LC34
	.word	.LANCHOR1+60
	.word	.LC33
	.fnend
	.size	SM_Reset, .-SM_Reset
	.align	2
	.global	ReleaseSegArrayPackets
	.type	ReleaseSegArrayPackets, %function
ReleaseSegArrayPackets:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1152	@ StartNum,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r1	@ StartNum, StartNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r1, r2	@ StartNum, EndNum
	mov	r6, r2	@ EndNum, EndNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	movw	r7, #36409	@ tmp157,
	add	r5, r0, #90112	@ tmp155, pStreamSegArray,
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	movt	r7, 14563	@ tmp157,
	mov	r8, #2	@ tmp156,
.L912:
	mov	r3, r4, asl #6	@ tmp122, StartNum,
	mov	r1, r4	@, StartNum
	add	r3, r3, r4, lsl #4	@ tmp123, tmp122, StartNum,
	mov	r0, r9	@, pStreamSegArray
	add	r3, r9, r3	@ tmp124, pStreamSegArray, tmp123
	strb	r8, [r3, #12]	@ tmp156, MEM[(struct STREAM_SEG_S *)pStreamSegArray_8(D)].StreamSeg[StartNum_24].SegState
	ldr	ip, [r3, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_8(D)].StreamSeg[StartNum_24].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_8(D)].StreamSeg[StartNum_24].LenInByte
	ldr	r2, [r5, #2092]	@ pStreamSegArray_8(D)->SegFreshSize, pStreamSegArray_8(D)->SegFreshSize
	ldr	r3, [r5, #2096]	@ pStreamSegArray_8(D)->SegFreshNum, pStreamSegArray_8(D)->SegFreshNum
	rsb	r2, ip, r2	@ D.36609, MEM[(struct STREAM_SEG_S *)pStreamSegArray_8(D)].StreamSeg[StartNum_24].LenInByte, pStreamSegArray_8(D)->SegFreshSize
	str	r2, [r5, #2092]	@ D.36609, pStreamSegArray_8(D)->SegFreshSize
	sub	r3, r3, #1	@ D.36609, pStreamSegArray_8(D)->SegFreshNum,
	str	r3, [r5, #2096]	@ D.36609, pStreamSegArray_8(D)->SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r4, #1	@ D.36610, StartNum,
	smull	r2, r3, r1, r7	@ tmp147, D.36610, tmp157
	mov	r4, r1, asr #31	@ tmp150, D.36610,
	rsb	r4, r4, r3, asr #8	@ StartNum, tmp150,,
	mov	r3, r4, asl #10	@ tmp153, StartNum,
	add	r4, r3, r4, lsl #7	@ tmp154, tmp153, StartNum,
	rsb	r4, r4, r1	@ StartNum, tmp154, D.36610
	cmp	r6, r4	@ EndNum, StartNum
	bne	.L912	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	.fnend
	.size	ReleaseSegArrayPackets, .-ReleaseSegArrayPackets
	.align	2
	.global	SM_SeekPtsInSegArray
	.type	SM_SeekPtsInSegArray, %function
SM_SeekPtsInSegArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #90112	@ tmp226, pStreamSegArray,
	mov	r9, r1	@ pArgs, pArgs
	mov	r5, r0	@ pStreamSegArray, pStreamSegArray
	ldrd	r0, [r1]	@ pts, *pArgs_7(D)
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r8, #2056]	@ D.36614, pStreamSegArray_10(D)->Head
	movw	fp, #36409	@ tmp227,
	ldr	ip, [r8, #2060]	@ D.36618, pStreamSegArray_10(D)->Tail
	movt	fp, 14563	@ tmp227,
	mov	r6, r0	@ pts, pts
	mov	r7, r1	@ pts, pts
	ldrd	r0, [r9, #8]	@ gap, pArgs,
	mov	r4, r3	@ i, D.36614
	str	r3, [r8, #2064]	@ D.36614, pStreamSegArray_10(D)->History
	strd	r0, [sp]	@ gap, %sfp
.L916:
	mov	r3, r4, asl #6	@ tmp150, i,
	cmp	r4, ip	@ i, D.36618
	add	r3, r3, r4, lsl #4	@ tmp151, tmp150, i,
	mov	r1, r4	@, i
	mov	r0, r5	@, pStreamSegArray
	add	r3, r5, r3	@ tmp152, pStreamSegArray, tmp151
	beq	.L928	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_10(D)->StreamSeg[i_1].SegState, pStreamSegArray_10(D)->StreamSeg[i_1].SegState
	add	r10, r3, #40	@ tmp160, tmp152,
	cmp	r2, #1	@ pStreamSegArray_10(D)->StreamSeg[i_1].SegState,
	bne	.L919	@,
	ldrd	r2, [r3, #40]	@ D.36617, tmp152,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp239,
	cmp	r3, r1	@ D.36617,
	add	r1, r4, #1	@ D.36616, i,
	cmpeq	r2, r0	@ D.36617, tmp239
	beq	.L927	@,
	cmp	r7, r3	@ pts, D.36617
	mov	r0, r1, asr #31	@ tmp175, D.36616,
	cmpeq	r6, r2	@ pts, D.36617
	smull	r2, r3, r1, fp	@ tmp172, D.36616, tmp227
	bls	.L922	@,
	str	r4, [r8, #2064]	@ i, pStreamSegArray_10(D)->History
	rsb	r4, r0, r3, asr #8	@ i, tmp175,,
	mov	r3, r4, asl #10	@ tmp178, i,
	add	r4, r3, r4, lsl #7	@ tmp179, tmp178, i,
	rsb	r4, r4, r1	@ i, tmp179, D.36616
	b	.L916	@
.L919:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r8, #2060]	@ D.36618, pStreamSegArray_10(D)->Tail
	add	r1, r4, #1	@ D.36616, i,
.L927:
	smull	r2, r3, r1, fp	@ tmp215, D.36616, tmp227
	mov	r4, r1, asr #31	@ tmp218, D.36616,
	rsb	r4, r4, r3, asr #8	@ i, tmp218,,
	mov	r3, r4, asl #10	@ tmp221, i,
	add	r4, r3, r4, lsl #7	@ tmp222, tmp221, i,
	rsb	r4, r4, r1	@ i, tmp222, D.36616
	b	.L916	@
.L922:
	beq	.L929	@,
	bcs	.L916	@,
	ldr	r2, [r8, #2064]	@ D.36614, pStreamSegArray_10(D)->History
	mvn	fp, #0	@,
	mvn	r10, #0	@ tmp245,
	mov	r3, r2, asl #6	@ tmp193, D.36614,
	add	r3, r3, r2, lsl #4	@ tmp194, tmp193, D.36614,
	add	r3, r5, r3	@ tmp195, pStreamSegArray, tmp194
	ldrd	r0, [r3, #40]	@ D.36617, tmp195,
	cmp	r1, fp	@ D.36617,
	cmpeq	r0, r10	@ D.36617, tmp245
	streq	r4, [r8, #2064]	@ i, pStreamSegArray_10(D)->History
	moveq	r2, r4	@ D.36614, i
	beq	.L925	@,
	cmp	r7, r1	@ pts, D.36617
	cmpeq	r6, r0	@ pts, D.36617
	bls	.L925	@,
	subs	r6, r6, r0	@ D.36617, D.36617, D.36617
	sbc	r7, r7, r1	@ D.36617, D.36617, D.36617
	mov	r0, r6	@ D.36617, D.36617
	mov	r1, r7	@ D.36617, D.36617
	ldrd	r6, [sp]	@ gap, %sfp
	cmp	r7, r1	@ gap, D.36617
	cmpeq	r6, r0	@ gap, D.36617
	strcc	r4, [r8, #2064]	@ i, pStreamSegArray_10(D)->History
	movcc	r2, r4	@ D.36614, i
.L925:
	mov	r0, r5	@, pStreamSegArray
	ldr	r1, [r8, #2056]	@, pStreamSegArray_10(D)->Head
	bl	ReleaseSegArrayPackets	@
	ldr	r2, [r8, #2064]	@ pStreamSegArray_10(D)->History, pStreamSegArray_10(D)->History
	mov	r0, #0	@ D.36613,
	mov	r3, r2, asl #6	@ tmp211, pStreamSegArray_10(D)->History,
	add	r3, r3, r2, lsl #4	@ tmp212, tmp211, pStreamSegArray_10(D)->History,
	add	r5, r5, r3	@ tmp213, pStreamSegArray, tmp212
	ldrd	r2, [r5, #40]	@ D.36617, tmp213,
	strd	r2, [r9]	@ D.36617, *pArgs_7(D)
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L928:
	mov	r2, r4	@, i
	ldr	r1, [r8, #2056]	@, pStreamSegArray_10(D)->Head
	bl	ReleaseSegArrayPackets	@
	mvn	r0, #1	@ D.36613,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L929:
	mov	r2, r4	@, i
	mov	r0, r5	@, pStreamSegArray
	ldr	r1, [r8, #2056]	@, pStreamSegArray_10(D)->Head
	bl	ReleaseSegArrayPackets	@
	ldrd	r2, [r10]	@ D.36617, pStreamSegArray_10(D)->StreamSeg[i_53].RawPts
	mov	r0, #0	@ D.36613,
	strd	r2, [r9]	@ D.36617, *pArgs_7(D)
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	SM_SeekPtsInSegArray, .-SM_SeekPtsInSegArray
	.align	2
	.global	SM_SeekPtsInRawArray
	.type	SM_SeekPtsInRawArray, %function
SM_SeekPtsInRawArray:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L966	@ tmp151,
	cmp	r3, #1	@ NormalStartSCD,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	ip, ip, r2, lsl #2	@ tmp153, tmp151, ChanID,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r9, r0	@ pRawPacketArray, pRawPacketArray
	str	r2, [sp, #12]	@ ChanID, %sfp
	ldr	r2, [ip, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	str	r3, [sp, #24]	@ NormalStartSCD, %sfp
	mov	r3, r1	@ pArgs, pArgs
	str	r1, [sp, #20]	@ pArgs, %sfp
	str	r2, [sp, #16]	@ pSmInstArray, %sfp
	ldrd	r0, [r1]	@ pts, *pArgs_16(D)
	ldrd	r2, [r3, #8]	@ gap, pArgs,
	strd	r0, [sp]	@ pts, %sfp
	strd	r2, [sp, #32]	@ gap,,
	movne	r3, #0	@ PushRawOverState,
	strne	r3, [sp, #28]	@ PushRawOverState, %sfp
	beq	.L960	@,
.L931:
	add	r10, r9, #73728	@ tmp253, pRawPacketArray,
	ldr	fp, [r10]	@ i, pRawPacketArray_22(D)->Head
	ldr	r0, [r10, #4]	@ D.36621, pRawPacketArray_22(D)->Tail
	mov	r3, fp	@ i, i
	str	fp, [r10, #8]	@ i, pRawPacketArray_22(D)->History
.L932:
	mov	lr, r3, asl #3	@ tmp254, i,
	mov	r8, r3, asl #6	@ tmp255, i,
	add	r2, r3, #1	@ D.36623, i,
	cmp	r3, r0	@ i, D.36621
	add	r1, lr, r8	@ tmp172, tmp254, tmp255
	add	ip, r9, r1	@ tmp173, pRawPacketArray, tmp172
	mov	r1, r2, asr #31	@ tmp183, D.36623,
	beq	.L961	@,
	ldrd	r4, [ip, #16]	@ D.36622, tmp173,
	mvn	r7, #0	@,
	mov	r1, r1, lsr #22	@ tmp184, tmp183,
	mvn	r6, #0	@ tmp297,
	cmp	r5, r7	@ D.36622,
	add	r2, r2, r1	@ tmp185, D.36623, tmp184
	cmpeq	r4, r6	@ D.36622, tmp297
	ubfx	r2, r2, #0, #10	@ tmp186, tmp185,,
	beq	.L962	@,
	ldrd	r6, [sp]	@ pts, %sfp
	cmp	r7, r5	@ pts, D.36622
	cmpeq	r6, r4	@ pts, D.36622
	bls	.L939	@,
	str	r3, [r10, #8]	@ i, pRawPacketArray_22(D)->History
	rsb	r3, r1, r2	@ i, tmp184, tmp186
	b	.L932	@
.L962:
	add	r2, r3, #1	@ D.36623, i,
	mov	r3, r2, asr #31	@ tmp176, D.36623,
	mov	r3, r3, lsr #22	@ tmp177, tmp176,
	add	r2, r2, r3	@ tmp178, D.36623, tmp177
	ubfx	r2, r2, #0, #10	@ tmp179, tmp178,,
	rsb	r3, r3, r2	@ i, tmp177, tmp179
	b	.L932	@
.L961:
	cmp	fp, r3	@ i, i
	str	fp, [r10, #8]	@ i, pRawPacketArray_22(D)->History
	addgt	r3, r3, #1024	@ D.36623, i,
	mov	r0, r9	@, pRawPacketArray
	rsb	r1, fp, r3	@ DelNum, i, D.36623
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mvn	r0, #1	@ D.36621,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L939:
	beq	.L963	@,
	ldr	r2, [r10, #8]	@ D.36621, pRawPacketArray_22(D)->History
	mvn	r5, #0	@,
	mvn	r4, #0	@ tmp283,
	mov	r1, r2, asl #6	@ tmp216, D.36621,
	add	r1, r1, r2, lsl #3	@ tmp217, tmp216, D.36621,
	add	r1, r9, r1	@ tmp218, pRawPacketArray, tmp217
	ldrd	r0, [r1, #16]	@ D.36622, tmp218,
	cmp	r1, r5	@ D.36622,
	cmpeq	r0, r4	@ D.36622, tmp283
	streq	r3, [r10, #8]	@ i, pRawPacketArray_22(D)->History
	moveq	r2, r3	@ D.36621, i
	beq	.L945	@,
	ldrd	r4, [sp]	@ pts, %sfp
	cmp	r5, r1	@ pts, D.36622
	cmpeq	r4, r0	@ pts, D.36622
	bhi	.L964	@,
.L945:
	cmp	fp, r2	@ i, D.36621
	ldr	r3, [sp, #24]	@ NormalStartSCD, %sfp
	addgt	r1, r2, #1024	@ D.36623, D.36621,
	rsble	r1, fp, r2	@ DelNum, i, D.36621
	rsbgt	r1, fp, r1	@ DelNum, i, D.36623
	cmp	r3, #1	@ NormalStartSCD,
	beq	.L965	@,
.L948:
	mov	r3, r2, asl #6	@ tmp243, D.36621,
	mov	r0, r9	@, pRawPacketArray
	add	r2, r3, r2, lsl #3	@ tmp244, tmp243, D.36621,
	add	r9, r9, r2	@ tmp245, pRawPacketArray, tmp244
	ldrd	r2, [r9, #16]	@ D.36622, tmp245,
.L959:
	ldr	ip, [sp, #20]	@ pArgs, %sfp
	strd	r2, [ip]	@ D.36622, *pArgs_16(D)
	ldr	r3, [r10]	@ pRawPacketArray_22(D)->Head, pRawPacketArray_22(D)->Head
	str	r3, [r10, #8]	@ pRawPacketArray_22(D)->Head, pRawPacketArray_22(D)->History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.36621,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L960:
	ldr	r3, [sp, #16]	@ pSmInstArray, %sfp
	add	r3, r3, #163840	@ tmp156, pSmInstArray,
	ldr	r2, [r3, #2184]	@ PushRawOverState, pSmInstArray_15->SmPushRaw.PushRawOverState
	cmp	r2, #1	@ PushRawOverState,
	str	r2, [sp, #28]	@ PushRawOverState, %sfp
	moveq	r2, #3	@ tmp159,
	streq	r2, [r3, #2184]	@ tmp159, pSmInstArray_15->SmPushRaw.PushRawOverState
	b	.L931	@
.L964:
	subs	r4, r4, r0	@ D.36622, D.36622, D.36622
	sbc	r5, r5, r1	@ D.36622, D.36622, D.36622
	mov	r0, r4	@ D.36622, D.36622
	mov	r1, r5	@ D.36622, D.36622
	ldrd	r4, [sp, #32]	@ gap,,
	cmp	r5, r1	@ gap, D.36622
	cmpeq	r4, r0	@ gap, D.36622
	strcc	r3, [r10, #8]	@ i, pRawPacketArray_22(D)->History
	movcc	r2, r3	@ D.36621, i
	b	.L945	@
.L963:
	cmp	fp, r3	@ i, i
	addgt	r3, r3, #1024	@ D.36623, i,
	rsb	r1, fp, r3	@ DelNum, i, D.36623
	ldr	r3, [sp, #24]	@ NormalStartSCD, %sfp
	cmp	r3, #1	@ NormalStartSCD,
	bne	.L943	@,
	ldr	r3, [sp, #16]	@ pSmInstArray, %sfp
	ldr	r0, [sp, #28]	@ PushRawOverState, %sfp
	add	r3, r3, #163840	@ tmp190, pSmInstArray,
	ldr	r2, [r3, #2176]	@ pSmInstArray_15->SmPushRaw.PushRawNum, pSmInstArray_15->SmPushRaw.PushRawNum
	cmp	r1, r2	@ DelNum, pSmInstArray_15->SmPushRaw.PushRawNum
	cmple	r0, #1	@, PushRawOverState,
	moveq	r2, r0	@ PushRawOverState, PushRawOverState
	streq	r2, [r3, #2184]	@ PushRawOverState, pSmInstArray_15->SmPushRaw.PushRawOverState
.L943:
	add	lr, lr, r8	@ tmp204, tmp254, tmp255
	mov	r0, r9	@, pRawPacketArray
	add	r3, r9, lr	@ tmp205, pRawPacketArray, tmp204
	ldrd	r2, [r3, #16]	@ D.36622, tmp205,
	b	.L959	@
.L965:
	ldr	r3, [sp, #16]	@ pSmInstArray, %sfp
	ldr	ip, [sp, #28]	@ PushRawOverState, %sfp
	add	r3, r3, #163840	@ tmp228, pSmInstArray,
	ldr	r0, [r3, #2176]	@ pSmInstArray_15->SmPushRaw.PushRawNum, pSmInstArray_15->SmPushRaw.PushRawNum
	cmp	r1, r0	@ DelNum, pSmInstArray_15->SmPushRaw.PushRawNum
	cmple	ip, #1	@, PushRawOverState,
	moveq	r2, ip	@ PushRawOverState, PushRawOverState
	streq	r2, [r3, #2184]	@ PushRawOverState, pSmInstArray_15->SmPushRaw.PushRawOverState
	ldreq	r2, [r10, #8]	@ D.36621, pRawPacketArray_22(D)->History
	b	.L948	@
.L967:
	.align	2
.L966:
	.word	.LANCHOR0
	.fnend
	.size	SM_SeekPtsInRawArray, .-SM_SeekPtsInRawArray
	.align	2
	.global	SM_SeekPtsAfterFillNewRaw
	.type	SM_SeekPtsAfterFillNewRaw, %function
SM_SeekPtsAfterFillNewRaw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r2	@ ChanID, ChanID
	mov	r5, r0	@ pRawPacketArray, pRawPacketArray
	mov	r6, r1	@ pArgs, pArgs
	mov	r0, r2	@, ChanID
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	FillRawData	@
	mov	r2, r4	@, ChanID
	mov	r1, r6	@, pArgs
	mov	r0, r5	@, pRawPacketArray
	mov	r3, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	SM_SeekPtsInRawArray	@
	.fnend
	.size	SM_SeekPtsAfterFillNewRaw, .-SM_SeekPtsAfterFillNewRaw
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L993	@ tmp138,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp140, tmp138, ChanID,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r4, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L982	@,
	add	r6, r4, #73728	@ tmp143, pSmInstArray,
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r6, #72	@, tmp143,
	mov	r7, r1	@ pArgs, pArgs
	bl	SM_SeekPtsInSegArray	@
	cmp	r0, #0	@,
	bne	.L972	@,
.L973:
	mov	r0, #0	@ D.36633,
.L971:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L972:
	add	r8, r4, #48	@ pRawPacketArray, pSmInstArray,
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r8	@, pRawPacketArray
	mov	r3, #1	@,
	mov	r2, r5	@, ChanID
	mov	r1, r7	@, pArgs
	bl	SM_SeekPtsInRawArray	@
	cmp	r0, #0	@,
	beq	.L973	@,
	ldr	r3, [r6, #52]	@ D.36635, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 48B].Tail
	ldr	r0, [r6, #48]	@ D.36635, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 48B].Head
	cmp	r0, r3	@ D.36635, D.36635
	addgt	r3, r3, #1024	@ D.36635, D.36635,
	rsb	r0, r0, r3	@ D.36633, D.36635, D.36635
	ldrd	r2, [r7, #16]	@ RawNum, pArgs,
	mov	r1, r0, asr #31	@ RawNumInVfmw, D.36633,
	cmp	r1, r3	@ RawNumInVfmw, RawNum
	cmpeq	r0, r2	@ RawNumInVfmw, RawNum
	bcs	.L992	@,
	subs	r0, r2, r0	@ RawNumToSeek, RawNum, RawNumInVfmw
	movw	r2, #1023	@ tmp151,
	sbc	r1, r3, r1	@ RawNumToSeek, RawNum, RawNumInVfmw
	and	r2, r2, r0	@ D.36636, tmp151, RawNumToSeek
	mov	r3, #0	@,
	mov	r6, r0, lsr #10	@ D.36636, RawNumToSeek,
	and	r3, r3, r1	@ D.36636,, RawNumToSeek
	orr	r6, r6, r1, asl #22	@ D.36636, D.36636, RawNumToSeek,
	orrs	r3, r2, r3	@ tmp166, D.36636
	addne	r6, r6, #1	@ SeekTime, D.36636,
	add	r6, r6, #1	@ D.36635, SeekTime,
	cmp	r6, #0	@ D.36635,
	movgt	r4, #0	@ i,
	ble	.L981	@,
.L980:
	mov	r2, r5	@, ChanID
	mov	r1, r7	@, pArgs
	mov	r0, r8	@, pRawPacketArray
	add	r4, r4, #1	@ i, i,
	bl	SM_SeekPtsAfterFillNewRaw	@
	cmp	r0, #0	@,
	beq	.L973	@,
	cmp	r4, r6	@ i, D.36635
	bne	.L980	@,
.L981:
	mvn	r0, #1	@ D.36633,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L982:
	mvn	r0, #0	@ D.36633,
	b	.L971	@
.L992:
	strd	r0, [sp]	@ RawNumInVfmw,
	mov	r0, #1	@,
	ldr	r1, .L993+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.36633,
	b	.L971	@
.L994:
	.align	2
.L993:
	.word	.LANCHOR0
	.word	.LC35
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
	.align	2
	.global	SCDDRV_ProcessSegFull
	.type	SCDDRV_ProcessSegFull, %function
SCDDRV_ProcessSegFull:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #73728	@ pStreamSegArray, pSmInstArray,
	add	r6, r6, #72	@ pStreamSegArray, pStreamSegArray,
	add	r7, r0, #163840	@ tmp182, pSmInstArray,
	cmp	r6, #0	@ pStreamSegArray,
	ldrsb	r2, [r0, #1]	@ pSmInstArray_4(D)->IsCounting, pSmInstArray_4(D)->IsCounting
	mov	r3, r0	@ pSmInstArray, pSmInstArray
	ldr	r4, [r7, #2148]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_4(D) + 73800B].SegBufSize
	ldrne	r9, [r7, #2168]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_4(D) + 73800B].SegFreshNum
	moveq	r8, r6	@ FreshSize, pStreamSegArray
	ldrne	r8, [r7, #2164]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_4(D) + 73800B].SegFreshSize
	moveq	r9, r6	@ FreshNum, pStreamSegArray
	cmp	r2, #0	@ pSmInstArray_4(D)->IsCounting,
	bne	.L997	@,
	add	r4, r4, r4, lsr #31	@ tmp147, SegBufTotalSize, SegBufTotalSize,
	cmp	r8, r4, asr #1	@ FreshSize, tmp147,
	movlt	r2, #1	@ tmp150,
	movge	r2, #0	@ tmp150,
	cmp	r9, #127	@ FreshNum,
	movgt	r0, #0	@, tmp155
	andle	r0, r2, #1	@,, tmp155, tmp150
	cmp	r0, #0	@ tmp155,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, #1	@ tmp156,
	mov	r0, r3	@, pSmInstArray
	strb	r1, [r3, #1]	@ tmp156, pSmInstArray_4(D)->IsCounting
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	CalcInstBlockTime	@
.L997:
	mov	r1, #0	@,
	mov	r5, r0	@ pSmInstArray, pSmInstArray
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r3, r4, #3	@ tmp162, SegBufTotalSize,
	cmp	r4, #0	@ SegBufTotalSize,
	movlt	r4, r3	@ SegBufTotalSize, tmp162
	cmp	r8, r4, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r3, #1	@ tmp165,
	movge	r3, #0	@ tmp165,
	cmp	r9, #63	@ FreshNum,
	movgt	r3, #0	@, tmp168
	andle	r3, r3, #1	@,, tmp168, tmp165
	cmp	r3, #0	@ tmp168,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	orrs	r8, r9, r8	@ D.36642, FreshNum, FreshSize
	bne	.L1001	@,
	ldr	r3, [r7, #2324]	@ pSmInstArray_4(D)->last_unfinished_seg_size, pSmInstArray_4(D)->last_unfinished_seg_size
	cmp	r3, #0	@ pSmInstArray_4(D)->last_unfinished_seg_size,
	beq	.L1001	@,
	mov	r0, r8	@, D.36642
	ldr	r1, .L1011	@,
	bl	dprint_vfmw	@
	ldr	r0, [r7, #2228]	@, pSmInstArray_4(D)->InstID
	bl	SM_Reset	@
	b	.L1002	@
.L1001:
	mov	r2, r0	@, WaitSegTime
	ldr	r1, .L1011+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, pStreamSegArray
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
.L1002:
	mov	r3, #0	@ tmp178,
	strb	r3, [r5, #1]	@ tmp178, pSmInstArray_4(D)->IsCounting
	strb	r3, [r5]	@ tmp178, pSmInstArray_4(D)->SegFullFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1012:
	.align	2
.L1011:
	.word	.LC36
	.word	.LC37
	.fnend
	.size	SCDDRV_ProcessSegFull, .-SCDDRV_ProcessSegFull
	.align	2
	.global	SCDDRV_CanNotSelectInst
	.type	SCDDRV_CanNotSelectInst, %function
SCDDRV_CanNotSelectInst:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1025	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, InstId,
	ldr	r3, [r0, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L1024	@,
	add	r2, r3, #163840	@ tmp123, pSmInstArray,
	ldr	r2, [r2, #2232]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	cmp	r2, #0	@ pSmInstArray_5->Mode,
	beq	.L1024	@,
	add	r2, r3, #32	@ tmp126, pSmInstArray,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	ip, [r3, #16]	@ VidStd, pSmInstArray_5->Config.VidStd
	ldmia	r2, {r0, r1}	@ tmp126,,
	cmp	ip, #17	@ VidStd,
	stmia	sp, {r0, r1}	@ tmp125,,
	moveq	r0, #1	@ D.36648,
	beq	.L1015	@,
	mov	r1, sp	@, tmp125
	mov	r0, ip	@, VidStd
	bl	SCDDRV_IsSCDByPass	@
	adds	r0, r0, #0	@ D.36648,,
	movne	r0, #1	@ D.36648,
.L1015:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L1024:
	mov	r0, #1	@ D.36648,
	bx	lr	@
.L1026:
	.align	2
.L1025:
	.word	.LANCHOR0
	.fnend
	.size	SCDDRV_CanNotSelectInst, .-SCDDRV_CanNotSelectInst
	.align	2
	.global	RecordPOS
	.type	RecordPOS, %function
RecordPOS:
	.fnstart
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@, VfmwStateType
	mov	r4, r2	@ LastRecPosTimeInMs, LastRecPosTimeInMs
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L1032	@ tmp124,
	ldr	r3, [r4]	@ *LastRecPosTimeInMs_9(D), *LastRecPosTimeInMs_9(D)
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36662, *LastRecPosTimeInMs_9(D), CurTimeInMs
	cmp	r3, r2	@ D.36662, g_TraceBsPeriod
	strhi	r0, [r4]	@ CurTimeInMs, *LastRecPosTimeInMs_9(D)
	ldmfd	sp!, {r4, pc}	@
.L1033:
	.align	2
.L1032:
	.word	g_TraceBsPeriod
	.fnend
	.size	RecordPOS, .-RecordPOS
	.align	2
	.global	PrintScdVtrlReg
	.type	PrintScdVtrlReg, %function
PrintScdVtrlReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r0, #51204	@,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	fp, r0	@ D.36665,
	movw	r0, #51208	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r10, r0	@ D.36665,
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.36665,
	movw	r0, #51216	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.36665,
	movw	r0, #51220	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.36665,
	movw	r0, #51224	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.36665,
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.36665,
	mov	r0, #51200	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, .L1036	@,
	mov	r4, r0	@ D.36665,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, fp	@, D.36665
	ldr	r1, .L1036+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.36665
	ldr	r1, .L1036+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.36665
	ldr	r1, .L1036+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.36665
	ldr	r1, .L1036+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.36665
	ldr	r1, .L1036+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.36665
	ldr	r1, .L1036+24	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.36665
	ldr	r1, .L1036+28	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	sxtb	r2, r4	@, D.36665
	ldr	r1, .L1036+32	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L1037:
	.align	2
.L1036:
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r0, #14	@ tmp307, inst_id,
	ldr	r4, .L1049	@ tmp306,
	mov	r5, r1	@ pSmCtrlReg, pSmCtrlReg
	ldr	r1, [r1, #4]	@, pSmCtrlReg_7(D)->DownMsgPhyAddr
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #12]	@, pSmCtrlReg_7(D)->UpMsgPhyAddr
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #20]	@, pSmCtrlReg_7(D)->UpLen
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #24]	@, pSmCtrlReg_7(D)->BufferFirst
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #28]	@, pSmCtrlReg_7(D)->BufferLast
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r5, #32]	@, pSmCtrlReg_7(D)->BufferIni
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r3, [r5, #1]	@ D.36680, pSmCtrlReg_7(D)->SliceCheckFlag
	ldr	r2, [r5, #44]	@ pSmCtrlReg_7(D)->ScdLowdlyEnable, pSmCtrlReg_7(D)->ScdLowdlyEnable
	ldr	r1, [r5, #36]	@ pSmCtrlReg_7(D)->ScdProtocol, pSmCtrlReg_7(D)->ScdProtocol
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.36680, D.36680,
	and	r1, r1, #15	@ D.36680, pSmCtrlReg_7(D)->ScdProtocol,
	and	r3, r3, #16	@ D.36680, D.36680,
	orr	r1, r1, r2, asl #8	@ D.36680, D.36680, pSmCtrlReg_7(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.36680, D.36680
	bl	MEM_WritePhyWord	@
	add	r3, r4, r6, lsl #2	@ tmp239, tmp306, tmp307,
	ldr	r3, [r3, #12]	@ D.36682, s_SmIIS.pSmInstArray
	add	r3, r3, #163840	@ tmp242, D.36682,
	ldr	r2, [r3, #2316]	@ _56->first_start_scd_flag, _56->first_start_scd_flag
	cmp	r2, #1	@ _56->first_start_scd_flag,
	beq	.L1047	@,
	ldr	r1, [r3, #2300]	@ D.36679, _56->pre_scd_previous_byte_lsb
	mov	r2, #3	@ tmp254,
	movt	r2, 768	@ tmp254,
	cmp	r1, r2	@ D.36679, tmp254
	beq	.L1048	@,
.L1041:
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r6, r4, r6, lsl #2	@ tmp275, tmp306, tmp307,
	add	r0, r0, #2096	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r3, [r6, #12]	@ tmp277, s_SmIIS.pSmInstArray
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r3, r3, #165888	@ tmp281, tmp277,
	add	r0, r0, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	ldrb	r1, [r3, #248]	@ zero_extendqisi2	@, _84->pre_scd_previous_byte_msb
	bl	MEM_WritePhyWord	@
.L1040:
	ldr	r3, [r5, #44]	@ pSmCtrlReg_7(D)->ScdLowdlyEnable, pSmCtrlReg_7(D)->ScdLowdlyEnable
	cmp	r3, #0	@ pSmCtrlReg_7(D)->ScdLowdlyEnable,
	beq	.L1042	@,
	ldr	r1, [r5, #48]	@, pSmCtrlReg_7(D)->reg_avs_flag
	ldr	r0, [r4]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
.L1042:
	bl	PrintScdVtrlReg	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ pSmCtrlReg_7(D)->ScdStart, pSmCtrlReg_7(D)->ScdStart
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r1, #1	@, pSmCtrlReg_7(D)->ScdStart,
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MEM_WritePhyWord	@
.L1048:
	movw	r2, #2296	@ tmp258,
	ldrh	r7, [r3, r2]	@ _56->pre_scd_previous_byte_msb, _56->pre_scd_previous_byte_msb
	cmp	r7, #0	@ _56->pre_scd_previous_byte_msb,
	bne	.L1041	@,
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #3	@,
	add	r0, r0, #2096	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r7	@, _56->pre_scd_previous_byte_msb
	add	r0, r0, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	b	.L1040	@
.L1047:
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mvn	r1, #0	@,
	add	r0, r0, #2096	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mvn	r1, #0	@,
	add	r0, r0, #2112	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	b	.L1040	@
.L1050:
	.align	2
.L1049:
	.word	.LANCHOR0
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
	.align	2
	.global	SCDDRV_StartSCD
	.type	SCDDRV_StartSCD, %function
SCDDRV_StartSCD:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r5, r0, #163840	@ tmp147, pScdInstance,
	mov	r3, r0	@ pScdInstance, pScdInstance
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r0, [r5, #2228]	@, pScdInstance_5(D)->InstID
	add	r6, r3, #165888	@ __p, pScdInstance,
	mov	r7, r1	@ pSmCtrlReg, pSmCtrlReg
	mov	r8, r2	@ SegStreamSize, SegStreamSize
	ldr	r9, [r5, #2192]	@ DownMsgPhyAddr, pScdInstance_5(D)->BufAddrCfg.DownMsgPhyAddr
	add	r4, r3, #48	@ pRawStreamArray, pScdInstance,
	ldr	r10, [r5, #2196]	@ pDownMsgVirAddr, pScdInstance_5(D)->BufAddrCfg.pDownMsgVirAddr
	bl	VCTRL_IsEsBufEnable	@
	add	r6, r6, #128	@ __p, __p,
	cmp	r0, #0	@,
	beq	.L1055	@,
.L1052:
	mov	r1, #12	@,
	mov	r0, r6	@, __p
	bl	__memzero	@
	ldr	ip, [r7, #44]	@ pSmCtrlReg_20(D)->ScdLowdlyEnable, pSmCtrlReg_20(D)->ScdLowdlyEnable
	ldr	r0, [r5, #2228]	@ pScdInstance_5(D)->InstID, pScdInstance_5(D)->InstID
	mov	r3, r4	@, pRawStreamArray
	str	r9, [sp, #4]	@ DownMsgPhyAddr,
	mov	r2, r8	@, SegStreamSize
	str	r10, [sp]	@ pDownMsgVirAddr,
	mov	r1, r6	@, __p
	str	ip, [sp, #8]	@ pSmCtrlReg_20(D)->ScdLowdlyEnable,
	bl	WriteScdMsg	@
	subs	r4, r0, #0	@ Ret,
	bne	.L1053	@,
	mov	r1, r7	@, pSmCtrlReg
	ldr	r0, [r5, #2228]	@, pScdInstance_5(D)->InstID
	bl	WriteScdVtrlReg	@
.L1053:
	mov	r0, r4	@, Ret
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1055:
	ldr	r2, [r5, #2228]	@, pScdInstance_5(D)->InstID
	ldr	r1, .L1056	@,
	bl	dprint_vfmw	@
	b	.L1052	@
.L1057:
	.align	2
.L1056:
	.word	.LC47
	.fnend
	.size	SCDDRV_StartSCD, .-SCDDRV_StartSCD
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r6, r0, #163840	@ tmp186, pScdInstance,
	.pad #88
	sub	sp, sp, #88	@,,
	add	r1, r0, #73728	@, pScdInstance,
	ldr	r2, [r6, #2324]	@ pScdInstance_10(D)->last_unfinished_seg_size, pScdInstance_10(D)->last_unfinished_seg_size
	add	r3, sp, #32	@ tmp155,,
	add	ip, sp, #24	@ tmp156,,
	str	r3, [sp, #8]	@ tmp155,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r3, sp, #28	@ tmp157,,
	add	r0, r0, #48	@, pScdInstance,
	stmia	sp, {r3, ip}	@,,
	add	r1, r1, #72	@,,
	add	r3, sp, #20	@,,
	mov	ip, #0	@ tmp130,
	str	ip, [sp, #20]	@ tmp130, RawStreamSize
	str	ip, [sp, #24]	@ tmp130, FreeSegSlotNum
	str	ip, [sp, #28]	@ tmp130, FreeSegBufSize
	str	ip, [sp, #32]	@ tmp130, isFreeSegBufSizeFixed
	str	ip, [sp, #36]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #40]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #44]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #48]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #52]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #56]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #60]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #64]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #68]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #72]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #76]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #80]	@ tmp130, ScdCtrlReg
	str	ip, [sp, #84]	@ tmp130, ScdCtrlReg
	bl	SCDDRV_CheckConditionOfStartSCD	@
	cmp	r0, #0	@ Ret
	movne	r3, r0	@ D.36691, Ret
	bne	.L1059	@,
	ldr	r3, [sp, #32]	@ isFreeSegBufSizeFixed, isFreeSegBufSizeFixed
	cmp	r3, #0	@ isFreeSegBufSizeFixed,
	bne	.L1069	@,
.L1060:
	ldr	r2, [sp, #24]	@ D.36692, FreeSegSlotNum
	mov	r0, r4	@, pScdInstance
	ldr	r3, [r6, #2292]	@ pScdInstance_10(D)->UpMsgStepInWord, pScdInstance_10(D)->UpMsgStepInWord
	add	r1, sp, #36	@ tmp189,,
	str	r2, [r6, #2216]	@ D.36692, pScdInstance_10(D)->BufAddrCfg.UpMsgNum
	mul	r3, r3, r2	@ D.36692, pScdInstance_10(D)->UpMsgStepInWord, D.36692
	mov	r3, r3, asl #2	@ D.36692, D.36692,
	str	r3, [r6, #2212]	@ D.36692, pScdInstance_10(D)->BufAddrCfg.UpMsgSize
	bl	SCDDRV_SetCtrlReg	@
	add	r1, sp, #36	@ tmp190,,
	ldr	r2, [sp, #28]	@, FreeSegBufSize
	mov	r0, r4	@, pScdInstance
	bl	SCDDRV_StartSCD	@
	subs	r5, r0, #0	@ Ret,
	movne	r3, r5	@ D.36691, Ret
	bne	.L1059	@,
	ldr	r3, [sp, #28]	@ D.36692, FreeSegBufSize
	mov	r1, #1	@ tmp171,
	ldr	r2, [sp, #20]	@ D.36692, RawStreamSize
	strb	r1, [r4, #4]	@ tmp171, pScdInstance_10(D)->IsWaitSCD
	cmp	r2, r3	@ D.36692, D.36692
	str	r3, [r6, #2268]	@ D.36692, pScdInstance_10(D)->PrevCfgSegSize
	str	r2, [r6, #2264]	@ D.36692, pScdInstance_10(D)->PrevCfgRawSize
	movhi	r1, #0	@ tmp188,
	movls	r1, #1	@ tmp188,
	strb	r5, [r4, #3]	@ Ret, pScdInstance_10(D)->FillNewRawFlag
	strb	r1, [r4, #2]	@ tmp188, pScdInstance_10(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	mov	r3, r5	@ D.36691, Ret
	str	r0, [r6, #2288]	@, pScdInstance_10(D)->LastSCDStartTime
.L1059:
	mov	r0, r3	@, D.36691
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1069:
	mov	r0, r4	@, pScdInstance
	bl	ResetLastUnfinishedSegInfo	@
	b	.L1060	@
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L1091	@ tmp169,
	ldr	r3, [r5, #92]	@ D.36704, s_eScdDrvSleepStage
	cmp	r3, #1	@ D.36704,
	beq	.L1089	@,
	cmp	r3, #2	@ D.36704,
	beq	.L1074	@,
	mov	r4, r0	@ pNextInstId, pNextInstId
	mov	r0, #0	@,
	bl	SCDDRV_CanNotSelectInst	@
	cmp	r0, #0	@,
	beq	.L1090	@,
.L1074:
	mvn	r0, #2	@ D.36703,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1090:
	ldr	r6, [r5, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	OSAL_GetTimeInMs	@
	add	r3, r6, #163840	@ tmp141, pSmInstArray,
	ldrsh	r2, [r6, #2]	@ *pSmInstArray_49, *pSmInstArray_49
	ldr	r3, [r3, #2288]	@ pSmInstArray_49->LastSCDStartTime, pSmInstArray_49->LastSCDStartTime
	rsb	r0, r3, r0	@ D.36705, pSmInstArray_49->LastSCDStartTime,
	cmp	r0, #199	@ D.36705,
	cmpls	r2, #1	@, *pSmInstArray_49,
	moveq	r3, #1	@ tmp151,
	movne	r3, #0	@ tmp151,
	beq	.L1074	@,
	ldrsb	r2, [r6]	@ pSmInstArray_49->SegFullFlag, pSmInstArray_49->SegFullFlag
	cmp	r2, #1	@ pSmInstArray_49->SegFullFlag,
	strneb	r3, [r6, #1]	@ tmp151, pSmInstArray_49->IsCounting
	beq	.L1087	@,
.L1078:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	movne	r3, #0	@ tmp153,
	moveq	r3, #1	@ tmp153,
	cmp	r0, #0	@ Ret,
	strb	r3, [r6]	@ tmp153, pSmInstArray_49->SegFullFlag
	bne	.L1074	@,
	str	r0, [r4]	@ Ret, *pNextInstId_30(D)
	mov	r0, #1	@,
	ldr	r3, [r5, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	addne	r3, r3, #163840	@ tmp160, pSmInstArray,
	movne	r2, #1	@ tmp161,
	strne	r2, [r3, #2232]	@ tmp161, pSmInstArray_33->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1080	@,
.L1081:
	mov	r0, #0	@ D.36703,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1089:
	mov	r3, #2	@ tmp138,
	mvn	r0, #2	@ D.36703,
	str	r3, [r5, #92]	@ tmp138, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1087:
	mov	r0, r6	@, pSmInstArray
	bl	SCDDRV_ProcessSegFull	@
	b	.L1078	@
.L1080:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, #104]	@ MEM[(HI_U32 *)&LastRecPosTime], MEM[(HI_U32 *)&LastRecPosTime]
	ldr	r1, .L1091	@ tmp162,
	mov	r2, r0	@ CurTimeInMs,
	ldr	r0, .L1091+4	@ tmp165,
	rsb	r3, r3, r2	@ D.36707, MEM[(HI_U32 *)&LastRecPosTime], CurTimeInMs
	ldr	r0, [r0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	cmp	r3, r0	@ D.36707, g_TraceBsPeriod
	bls	.L1081	@,
	mov	r0, #0	@ D.36703,
	str	r2, [r1, #104]	@ CurTimeInMs, MEM[(HI_U32 *)&LastRecPosTime]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1092:
	.align	2
.L1091:
	.word	.LANCHOR0
	.word	g_TraceBsPeriod
	.fnend
	.size	SM_DoNextInstance, .-SM_DoNextInstance
	.align	2
	.global	SM_Wakeup
	.type	SM_Wakeup, %function
SM_Wakeup:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp123,
	ldr	r4, .L1108	@ tmp148,
	mov	r0, r3	@ D.36714, tmp123
	str	r3, [sp, #4]	@ tmp123, NextInstID
	b	.L1095	@
.L1094:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.36714, NextInstID,
	str	r0, [sp, #4]	@ D.36714, NextInstID
	cmp	r0, #0	@ D.36714,
	bgt	.L1106	@,
.L1095:
	add	r3, r4, r0, lsl #2	@ tmp126, tmp148, D.36714,
	ldr	r3, [r3, #68]	@ D.36713, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36713,
	add	r2, r3, #163840	@ tmp129, D.36713,
	beq	.L1094	@,
	ldr	r3, [r2, #2232]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L1094	@,
	bl	FillRawData	@
	b	.L1094	@
.L1106:
	ldr	r3, [r4, #84]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L1108	@ tmp132,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L1096	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L1107	@,
.L1093:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1096:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #88]	@ D.36715, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.36715
	strcc	r0, [r4, #88]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L1093	@,
	rsb	r0, r3, r0	@ DelayTime, D.36715, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L1093	@,
	ldr	r1, .L1108+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #80]	@, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp145,
	str	r3, [r4, #84]	@ tmp145, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1107:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp138,
	str	r2, [r4, #84]	@ tmp138, s_SmIIS.SCDState
	str	r3, [r4, #80]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #88]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1109:
	.align	2
.L1108:
	.word	.LANCHOR0
	.word	.LC48
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	ldr	r1, .L1112	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4]	@, pSmStateReg_3(D)->Scdover
	ldr	r1, .L1112+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, pSmStateReg_3(D)->ScdInt
	ldr	r1, .L1112+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, pSmStateReg_3(D)->ShortScdNum
	ldr	r1, .L1112+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, pSmStateReg_3(D)->StartCodeNum
	ldr	r1, .L1112+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, pSmStateReg_3(D)->ScdRollAddr
	ldr	r1, .L1112+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, pSmStateReg_3(D)->SrcEaten
	ldr	r1, .L1112+24	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1113:
	.align	2
.L1112:
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
	.align	2
	.global	ReadScdStateReg
	.type	ReadScdStateReg, %function
ReadScdStateReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSmStateReg, pSmStateReg
	movw	r0, #51264	@,
	movw	r5, #51276	@ tmp127,
	movt	r0, 4115	@,
	movt	r5, 4115	@ tmp127,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.36729,,
	mov	r0, r5	@, tmp127
	str	r3, [r4]	@ D.36729, pSmStateReg_5(D)->Scdover
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.36730,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.36730, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.36729,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.36729, pSmStateReg_5(D)->StartCodeNum
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, pSmStateReg_5(D)->ScdRollAddr
	movw	r0, #51284	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, pSmStateReg_5(D)->SrcEaten
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #24]	@, pSmStateReg_5(D)->UpMsgLenInWord
	movw	r0, #51292	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #28]	@, pSmStateReg_5(D)->seg_next_addr
	mov	r0, r4	@, pSmStateReg
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	PrintScdStateReg	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #163840	@ tmp129, pScdInstance,
	.pad #32
	sub	sp, sp, #32	@,,
	ldr	r3, [r4, #2184]	@ MEM[(struct SM_PUSHRAW_S *)pScdInstance_3(D) + 166016B].PushRawOverState, MEM[(struct SM_PUSHRAW_S *)pScdInstance_3(D) + 166016B].PushRawOverState
	cmp	r3, #3	@ MEM[(struct SM_PUSHRAW_S *)pScdInstance_3(D) + 166016B].PushRawOverState,
	moveq	r3, #2	@ tmp133,
	mvneq	r0, #6	@ D.36744,
	streq	r3, [r4, #2184]	@ tmp133, MEM[(struct SM_PUSHRAW_S *)pScdInstance_3(D) + 166016B].PushRawOverState
	beq	.L1118	@,
	mov	r3, #2	@ tmp136,
	mov	r5, r0	@ pScdInstance, pScdInstance
	str	r3, [r4, #2184]	@ tmp136, MEM[(struct SM_PUSHRAW_S *)pScdInstance_3(D) + 166016B].PushRawOverState
	mov	r0, sp	@,
	bl	ReadScdStateReg	@
	ldr	r1, [r4, #2292]	@, pScdInstance_3(D)->UpMsgStepInWord
	ldr	r0, [sp, #24]	@, SmStateReg.UpMsgLenInWord
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ StartCodeNumFromStateReg, SmStateReg.StartCodeNum
	cmp	r0, r3	@, StartCodeNumFromStateReg
	movcc	r6, r0	@ ValidStartCodeNum,
	movcs	r6, r3	@ ValidStartCodeNum, StartCodeNumFromStateReg
	cmp	r3, r6	@ StartCodeNumFromStateReg, ValidStartCodeNum
	bhi	.L1124	@,
.L1119:
	mov	r2, sp	@,
	mov	r1, r6	@, ValidStartCodeNum
	mov	r0, r5	@, pScdInstance
	bl	ProcessLastUnfinishedSeg	@
	clz	r2, r6	@ tmp151, ValidStartCodeNum
	mov	r2, r2, lsr #5	@ tmp151, tmp151,
	cmp	r0, #0	@ Ret,
	moveq	r4, r2	@, tmp154, tmp151
	orrne	r4, r2, #1	@,, tmp154, tmp151
	cmp	r4, #0	@ tmp154,
	bne	.L1118	@,
	ldr	r3, [r5, #16]	@ pScdInstance_3(D)->Config.VidStd, pScdInstance_3(D)->Config.VidStd
	mov	r2, sp	@,
	sub	r1, r6, #1	@, ValidStartCodeNum,
	mov	r0, r5	@, pScdInstance
	cmp	r3, #2	@ pScdInstance_3(D)->Config.VidStd,
	beq	.L1121	@,
	bl	ProcessNotMpeg4ScdUpMsg	@
	mov	r0, r4	@ D.36744, tmp154
.L1118:
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1124:
	ldrsb	r3, [r5, #2]	@ pScdInstance_3(D)->LastCfgAllRawFlag, pScdInstance_3(D)->LastCfgAllRawFlag
	cmp	r3, #1	@ pScdInstance_3(D)->LastCfgAllRawFlag,
	moveq	r3, #0	@ tmp145,
	streqb	r3, [r5, #2]	@ tmp145, pScdInstance_3(D)->LastCfgAllRawFlag
	b	.L1119	@
.L1121:
	bl	ProcessMpeg4ScdUpMsg	@
	mov	r0, r4	@ D.36744, tmp154
	b	.L1118	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, .L1141	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1137	@,
	ldr	r4, .L1141+4	@ tmp183,
	mov	r1, #1	@,
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1128	@,
	ldr	r3, [r4, #80]	@ D.36756, s_SmIIS.ThisInstID
.L1129:
	add	r3, r4, r3, lsl #2	@ tmp154, tmp183, D.36756,
	ldr	r2, [r4, #76]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r1, .L1141+4	@ tmp152,
	ldr	r0, [r3, #68]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1138	@,
	ldr	r3, [r1, #84]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1139	@,
.L1132:
	ldr	r0, .L1141+8	@,
	bl	OSAL_GiveEvent	@
.L1137:
	ldr	r0, .L1141	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1128:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #80]	@ D.36756, s_SmIIS.ThisInstID
	ldr	r2, .L1141+12	@ tmp147,
	add	r1, r4, r3, lsl #2	@ tmp143, tmp183, D.36756,
	ldr	ip, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r2, [r1, #108]	@ tmp146, last_rec_pos_time
	rsb	r2, r2, r0	@ D.36754, tmp146, CurTimeInMs
	cmp	r2, ip	@ D.36754, g_TraceBsPeriod
	strhi	r0, [r1, #108]	@ CurTimeInMs, last_rec_pos_time
	b	.L1129	@
.L1139:
	add	r3, r0, #163840	@ tmp171, pSmInstArray,
	ldr	r3, [r3, #2232]	@ pSmInstArray_26->Mode, pSmInstArray_26->Mode
	cmp	r3, #1	@ pSmInstArray_26->Mode,
	beq	.L1140	@,
.L1133:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp174,
	str	r3, [r4, #84]	@ tmp174, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r4, .L1141+4	@ tmp173,
	cmp	r0, #0	@,
	bne	.L1132	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp179,
	str	r2, [r4, #84]	@ tmp179, s_SmIIS.SCDState
	str	r3, [r4, #80]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #88]	@, s_SmIIS.LastProcessTime
	b	.L1132	@
.L1138:
	ldr	r0, .L1141	@,
	mov	r3, #0	@ tmp166,
	str	r3, [r1, #84]	@ tmp166, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1140:
	bl	ProcessScdReturn	@
	b	.L1133	@
.L1142:
	.align	2
.L1141:
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	g_IntEvent
	.word	g_TraceBsPeriod
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	get_scd_msg_size
	.type	get_scd_msg_size, %function
get_scd_msg_size:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #44164	@,
	bx	lr	@
	.fnend
	.size	get_scd_msg_size, .-get_scd_msg_size
	.global	g_pSmIIS
	.global	s_RegPhyBaseAddr
	.global	s_SmIIS
	.global	g_hex_len
	.global	g_hex_base_addr
	.global	g_hex_base_vir_addr
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.32460, %object
	.size	__func__.32460, 16
__func__.32460:
	.ascii	"DeleteRawPacket\000"
	.type	__func__.32576, %object
	.size	__func__.32576, 17
__func__.32576:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	__func__.32474, %object
	.size	__func__.32474, 24
__func__.32474:
	.ascii	"DeleteRawPacketInBuffer\000"
	.type	__func__.32618, %object
	.size	__func__.32618, 9
__func__.32618:
	.ascii	"SM_Reset\000"
	.data
	.align	2
	.type	g_pSmIIS, %object
	.size	g_pSmIIS, 4
g_pSmIIS:
	.word	s_SmIIS
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Line: %d, p = NULL is not expected value!\012\000"
	.space	1
.LC1:
	.ascii	"no memory OSAL_KMALLOC error!\012\000"
	.space	1
.LC2:
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC3:
	.ascii	"/system/lib/modules/hi_vfmw_avsp.bin\000"
	.space	3
.LC4:
	.ascii	"/kmod/hi_vfmw_h264.bin\000"
	.space	1
.LC5:
	.ascii	"/system/lib/modules/hi_vfmw_h264.bin\000"
	.space	3
.LC6:
	.ascii	"eVidStd = %d not have DSP code\012\000"
.LC7:
	.ascii	"Cannot open DSP code for eVidStd(%d)\012\000"
	.space	2
.LC8:
	.ascii	"%8x\000"
.LC9:
	.ascii	"ResetSCD ERROR!!!\012\000"
	.space	1
.LC10:
	.ascii	"line: %d Get SmID fail!\000"
.LC11:
	.ascii	"DelRaw err PacketNum = %d, DelNum = %d\012\000"
.LC12:
	.ascii	"%s release RawPhyAddr = 0x%x,Len = %d\012\000"
	.space	1
.LC13:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC14:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC15:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC16:
	.ascii	"\012\000"
	.space	2
.LC17:
	.ascii	"0x%02x,\000"
.LC18:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC19:
	.ascii	"Array out of bound in function %s\012\000"
	.space	1
.LC20:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC21:
	.ascii	"Line: %d\012\000"
	.space	2
.LC22:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC23:
	.ascii	"Raw packet TOO BIG! Can't copy to seg! Len: 0x%x\012"
	.ascii	"\000"
	.space	2
.LC24:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC25:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC26:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC27:
	.ascii	"line: %d s_SmIIS.pSmInstArray[%d] is NULL\012\000"
	.space	1
.LC28:
	.ascii	"!!!push raw err!!!\012\000"
.LC29:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC30:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC31:
	.ascii	"SmID = %d is not expected!\012\000"
.LC32:
	.ascii	"%s release RawPhyAddr = 0x%x, Len = %d\012\000"
.LC33:
	.ascii	"line: %d, pScdInstance is NULL!\012\000"
	.space	3
.LC34:
	.ascii	"%s %d FMW_OK !=  GetRawStreamNum !!\012\000"
	.space	3
.LC35:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC36:
	.ascii	"scd buffer is full, reset scd!\012\000"
.LC37:
	.ascii	"(%d ms) not release stream seg, release anyway!\012"
	.ascii	"\000"
	.space	3
.LC38:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC39:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC40:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC41:
	.ascii	"UpLen = %x\012\000"
.LC42:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC43:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC44:
	.ascii	"BufferIni = %x\012\000"
.LC45:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC46:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC47:
	.ascii	"InstId = %d, es buf have been released!\012\000"
	.space	3
.LC48:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC49:
	.ascii	"***Print Scd State Reg\012\000"
.LC50:
	.ascii	"Scdover = %d \012\000"
	.space	1
.LC51:
	.ascii	"ScdInt = %d \012\000"
	.space	2
.LC52:
	.ascii	"ShortScdNum = %d \012\000"
	.space	1
.LC53:
	.ascii	"ScdNum = %d \012\000"
	.space	2
.LC54:
	.ascii	"ScdRollAddr = %0x \012\000"
.LC55:
	.ascii	"SrcEaten = %d \012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	s_RegPhyBaseAddr, %object
	.size	s_RegPhyBaseAddr, 4
s_RegPhyBaseAddr:
	.space	4
	.type	g_hex_base_addr, %object
	.size	g_hex_base_addr, 4
g_hex_base_addr:
	.space	4
	.type	g_hex_len, %object
	.size	g_hex_len, 4
g_hex_len:
	.space	4
	.type	s_SmIIS, %object
	.size	s_SmIIS, 80
s_SmIIS:
	.space	80
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	last_rec_pos_time.33090, %object
	.size	last_rec_pos_time.33090, 4
last_rec_pos_time.33090:
	.space	4
	.type	LastRecPosTime.33206, %object
	.size	LastRecPosTime.33206, 4
LastRecPosTime.33206:
	.space	4
	.type	last_rec_pos_time.33221, %object
	.size	last_rec_pos_time.33221, 4
last_rec_pos_time.33221:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
