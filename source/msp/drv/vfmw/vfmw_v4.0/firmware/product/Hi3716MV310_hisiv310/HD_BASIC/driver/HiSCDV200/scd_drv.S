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
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o
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
	beq	.L5	@,
	mov	r2, #5120	@,
	ldr	r1, .L6	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L5:
	mov	r2, #68	@,
	ldr	r1, .L6+4	@,
	mov	r0, #22	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L7:
	.align	2
.L6:
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
	ldr	r7, .L26	@ tmp214,
	mov	r4, r0	@ eVidStd, eVidStd
	mov	r3, #49152	@ tmp164,
	mov	r0, #20	@,
	movt	r3, 4115	@ tmp164,
	mov	r5, #0	@ tmp162,
	str	r3, [r7]	@ tmp164, s_RegPhyBaseAddr
	str	r5, [sp, #20]	@ tmp162, dataInt
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L23	@,
	mov	r3, sp	@ tmp222,
	bic	r3, r3, #8128	@ tmp215, tmp222,
	str	r3, [sp, #4]	@ tmp215, %sfp
	bic	r3, r3, #63	@ D.36375, tmp215,
	cmp	r4, #6	@ eVidStd,
	ldr	r2, [r3, #8]	@ fs, _79->addr_limit
	str	r5, [r3, #8]	@ tmp162, _82->addr_limit
	str	r2, [sp, #8]	@ fs, %sfp
	beq	.L24	@,
	cmp	r4, #0	@ eVidStd,
	beq	.L25	@,
	mov	r2, r4	@, eVidStd
	ldr	r1, .L26+4	@,
	mov	r0, r5	@, tmp162
	mov	r9, r5	@ fp,
	bl	dprint_vfmw	@
.L15:
	ldr	r3, [sp, #4]	@ tmp215, %sfp
	add	r8, sp, #32	@ tmp213,,
	mov	r2, #0	@ tmp182,
	mov	r4, #10	@ ivtmp.249,
	bic	r3, r3, #63	@ D.36375, tmp215,
	mov	r5, r2	@ calbakBaseaddr, tmp182
	str	r2, [r3, #8]	@ tmp182, _96->addr_limit
	mov	r2, #0	@ tmp183,
	mov	r3, #0	@,
	strd	r2, [r8, #-8]!	@ tmp183, pos
	b	.L16	@
.L18:
	strd	r10, [sp, #24]	@ ivtmp.249,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L22	@,
	ldr	r0, [r7, #4]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #20]	@, dataInt
	add	r0, r5, r0	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L16:
	mov	r3, r8	@, tmp213
	mov	r2, #10	@,
	mov	r1, r6	@, data
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	r10, r4	@ ivtmp.249, ivtmp.249
	mov	fp, r4, asr #31	@ ivtmp.249, ivtmp.249,
	add	r2, sp, #20	@ tmp226,,
	ldr	r1, .L26+8	@,
	add	r4, r4, #10	@ ivtmp.249, ivtmp.249,
	subs	r3, r0, #0	@ D.36376,
	mov	r0, r6	@, data
	bne	.L18	@,
	mov	r1, r3	@, D.36376
	mov	r0, r9	@, fp
	str	r3, [sp, #12]	@ D.36376, %sfp
	bl	filp_close	@
	ldr	r3, [sp, #4]	@ tmp215, %sfp
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	bic	r10, r3, #63	@ D.36375, tmp215,
	ldr	r3, [sp, #8]	@ fs, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r3, [r10, #8]	@ fs, _98->addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp214,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #12]	@ D.36376, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r3	@, D.36376
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L19:
	movw	r0, #49412	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L19	@,
.L22:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L8:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L25:
	movw	r2, #438	@,
	mov	r1, r4	@, eVidStd
	ldr	r0, .L26+12	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L15	@,
	movw	r2, #438	@,
	mov	r1, r4	@, eVidStd
	ldr	r0, .L26+16	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L13:
	cmn	r9, #4096	@ fp,
	bls	.L15	@,
	mov	r2, r4	@, eVidStd
	ldr	r1, .L26+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L8	@
.L24:
	movw	r2, #438	@,
	mov	r1, r5	@, tmp162
	ldr	r0, .L26+24	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L15	@,
	mov	r1, r5	@, tmp162
	movw	r2, #438	@,
	ldr	r0, .L26+28	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L13	@
.L23:
	ldr	r1, .L26+32	@,
	bl	dprint_vfmw	@
	b	.L8	@
.L27:
	.align	2
.L26:
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
	ldr	r3, .L31	@ tmp117,
	ldr	r3, [r3, #128]	@ D.36393, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36393,
	beq	.L30	@,
	add	r3, r3, #168	@ D.36394, D.36393,
	subs	r0, r0, r3	@ D.36391, pRawArray, D.36394
	mvnne	r0, #0	@ D.36391,
	bx	lr	@
.L30:
	mvn	r0, #0	@ D.36391,
	bx	lr	@
.L32:
	.align	2
.L31:
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
	ldr	r5, .L44	@ tmp148,
	ldr	ip, [r5]	@ D.36406, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	mov	r6, r0	@ D.36405,
	bne	.L37	@,
	movw	r0, #9999	@ D.36409,
	b	.L35	@
.L43:
	subs	r0, r0, #1	@ D.36409, D.36409,
	beq	.L42	@,
.L35:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L43	@,
.L37:
	ldr	r3, .L44+4	@ tmp141,
	bfc	r4, #5, #1	@ u32TmpValue,,
	and	r1, r6, #1	@, D.36405,
	str	r4, [ip, #120]	@ u32TmpValue, _38->PERI_CRG30.u32
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L42:
	ldr	r1, .L44+8	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5]	@ D.36406, g_pstRegCrg
	b	.L37	@
.L45:
	.align	2
.L44:
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
	ldr	r3, .L47	@ tmp113,
	mov	r1, #1	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L48:
	.align	2
.L47:
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
	ldr	r3, .L50	@ tmp113,
	mov	r1, #0	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L51:
	.align	2
.L50:
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
	.global	InsertRawPacket
	.type	InsertRawPacket, %function
InsertRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pRawPacket,
	cmpne	r0, #0	@, pRawStreamArray,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	moveq	r5, #1	@ tmp131,
	movne	r5, #0	@ tmp131,
	beq	.L56	@,
	add	r4, r0, #73728	@ tmp133, pRawStreamArray,
	ldmib	r4, {ip, lr}	@ tmp133,,
	add	r3, ip, #1	@ D.36425, D.36425,
	mov	r2, r3, asr #31	@ tmp136, D.36425,
	mov	r2, r2, lsr #22	@ tmp137, tmp136,
	add	r3, r3, r2	@ tmp138, D.36425, tmp137
	ubfx	r3, r3, #0, #10	@ tmp139, tmp138,,
	rsb	r3, r2, r3	@ D.36425, tmp137, tmp139
	cmp	r3, lr	@ D.36425, pRawStreamArray_3(D)->History
	beq	.L57	@,
	mov	r3, ip, asl #6	@ tmp146, D.36425,
	mov	r2, #72	@,
	add	ip, r3, ip, lsl #3	@ tmp147, tmp146, D.36425,
	add	r0, r0, ip	@, pRawStreamArray, tmp147
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	mov	r0, r5	@ D.36423, tmp131
	add	r3, r3, #1	@ D.36425, pRawStreamArray_3(D)->Tail,
	mov	r2, r3, asr #31	@ tmp159, D.36425,
	mov	r2, r2, lsr #22	@ tmp160, tmp159,
	add	r3, r3, r2	@ tmp161, D.36425, tmp160
	ubfx	r3, r3, #0, #10	@ tmp162, tmp161,,
	rsb	r3, r2, r3	@ D.36425, tmp160, tmp162
	str	r3, [r4, #4]	@ D.36425, pRawStreamArray_3(D)->Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L56:
	mvn	r0, #0	@ D.36423,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L57:
	mvn	r0, #3	@ D.36423,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	InsertRawPacket, .-InsertRawPacket
	.align	2
	.global	GetRawState
	.type	GetRawState, %function
GetRawState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ SmID,
	bne	.L62	@,
	ldr	r3, .L64	@ tmp118,
	ldr	r3, [r3, #128]	@ D.36433, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36433,
	beq	.L62	@,
	add	r2, r3, #73728	@ tmp120, D.36433,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].History, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	add	r3, r3, #1	@ D.36434, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp124, D.36434,
	mov	r2, r2, lsr #22	@ tmp125, tmp124,
	add	r3, r3, r2	@ tmp126, D.36434, tmp125
	ubfx	r3, r3, #0, #10	@ tmp127, tmp126,,
	rsb	r3, r2, r3	@ D.36434, tmp125, tmp127
	cmp	r3, r1	@ D.36434, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	mvneq	r0, #3	@ D.36432,
	movne	r0, #0	@ D.36432,
	bx	lr	@
.L62:
	mvn	r0, #3	@ D.36432,
	bx	lr	@
.L65:
	.align	2
.L64:
	.word	.LANCHOR0
	.fnend
	.size	GetRawState, .-GetRawState
	.align	2
	.global	ShowFirstRawPacket
	.type	ShowFirstRawPacket, %function
ShowFirstRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pRawPacket,
	cmpne	r0, #0	@, pRawStreamArray,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r4, #1	@ tmp126,
	movne	r4, #0	@ tmp126,
	beq	.L68	@,
	add	ip, r0, #73728	@ tmp128, pRawStreamArray,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [ip]	@ D.36439, pRawStreamArray_3(D)->Head
	ldr	r0, [ip, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r2, r0	@ D.36439, pRawStreamArray_3(D)->Tail
	beq	.L69	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp136, D.36439,
	add	r1, r1, r2, lsl #3	@ tmp137, tmp136, D.36439,
	str	r2, [ip, #16]	@ D.36439, pRawStreamArray_3(D)->CurShowIndex
	add	r1, r3, r1	@, pRawStreamArray, tmp137
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.36437, tmp126
	ldmfd	sp!, {r4, pc}	@
.L68:
	mvn	r0, #0	@ D.36437,
	ldmfd	sp!, {r4, pc}	@
.L69:
	mvn	r0, #2	@ D.36437,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ShowFirstRawPacket, .-ShowFirstRawPacket
	.align	2
	.global	ShowNextRawPacket
	.type	ShowNextRawPacket, %function
ShowNextRawPacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pRawPacket,
	cmpne	r0, #0	@, pRawStreamArray,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	moveq	r4, #1	@ tmp128,
	movne	r4, #0	@ tmp128,
	beq	.L73	@,
	add	lr, r0, #73728	@ tmp130, pRawStreamArray,
	mov	ip, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [lr, #16]	@ pRawStreamArray_3(D)->CurShowIndex, pRawStreamArray_3(D)->CurShowIndex
	ldr	r0, [lr, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	add	r2, r2, #1	@ D.36448, pRawStreamArray_3(D)->CurShowIndex,
	mov	r3, r2, asr #31	@ tmp133, D.36448,
	mov	r3, r3, lsr #22	@ tmp134, tmp133,
	add	r2, r2, r3	@ tmp135, D.36448, tmp134
	ubfx	r2, r2, #0, #10	@ tmp136, tmp135,,
	rsb	r3, r3, r2	@ tmp137, tmp134, tmp136
	cmp	r0, r3	@ pRawStreamArray_3(D)->Tail, tmp137
	beq	.L74	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r3, asl #6	@ tmp145, tmp137,
	add	r1, r1, r3, lsl #3	@ tmp146, tmp145, tmp137,
	str	r3, [lr, #16]	@ tmp137, pRawStreamArray_3(D)->CurShowIndex
	add	r1, ip, r1	@, pRawStreamArray, tmp146
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.36446, tmp128
	ldmfd	sp!, {r4, pc}	@
.L73:
	mvn	r0, #0	@ D.36446,
	ldmfd	sp!, {r4, pc}	@
.L74:
	mvn	r0, #2	@ D.36446,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ShowNextRawPacket, .-ShowNextRawPacket
	.align	2
	.global	SetFirstOffset
	.type	SetFirstOffset, %function
SetFirstOffset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pRawStreamArray
	beq	.L78	@,
	add	r3, r0, #73728	@ tmp120, pRawStreamArray,
	ldmia	r3, {r2, ip}	@ tmp120,,
	cmp	r2, ip	@ D.36456, pRawStreamArray_3(D)->Tail
	beq	.L79	@,
	mov	ip, r2, asl #6	@ tmp129, D.36456,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.36456,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L80	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.36455,
	ldr	pc, [sp], #4	@
.L80:
	mvn	r0, #0	@ D.36455,
	ldr	pc, [sp], #4	@
.L79:
	mvn	r0, #2	@ D.36455,
	bx	lr	@
.L78:
	mvn	r0, #0	@ D.36455,
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
	beq	.L85	@,
	add	r3, r0, #73728	@ tmp128, pRawStreamArray,
	ldr	ip, [r3]	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Head
	ldr	r0, [r3, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	ip, r0	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Tail
	beq	.L86	@,
	ldr	r3, [r3, #12]	@ D.36461, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.36459, tmp126
	str	r3, [r1]	@ D.36461, *pOffset_5(D)
	bx	lr	@
.L85:
	mvn	r0, #0	@ D.36459,
	bx	lr	@
.L86:
	mvn	r0, #2	@ D.36459,
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
	beq	.L100	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r1	@ DelNum, DelNum
	ldr	r9, .L111	@ tmp211,
	mov	r6, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r9, #128]	@ D.36469, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36469,
	beq	.L89	@,
	add	r3, r3, #168	@ D.36471, D.36469,
	subs	r3, r0, r3	@ D.36466, pRawStreamArray, D.36471
	mvnne	r3, #0	@ D.36466,
	cmp	r3, #0	@ D.36466,
	blt	.L89	@,
	add	r8, r0, #73728	@ tmp213, pRawStreamArray,
	ldmia	r8, {r1, r2}	@ tmp213,,
	cmp	r1, r2	@ D.36466, D.36466
	addgt	r2, r2, #1024	@ D.36466, D.36466,
	rsb	r2, r1, r2	@ PacketNum, D.36466, D.36466
	cmp	r2, r7	@ PacketNum, DelNum
	bcc	.L110	@,
	cmp	r7, #0	@ DelNum,
	mov	r4, r1	@ j, D.36466
	beq	.L94	@,
	add	r3, r3, #28	@ tmp212, D.36466,
	mov	r5, #0	@ i,
	add	r9, r9, r3, lsl #2	@ tmp216, tmp211, tmp212,
.L95:
	mov	r3, r4, asl #6	@ tmp164, j,
	ldr	r1, .L111+4	@,
	add	r3, r3, r4, lsl #3	@ tmp165, tmp164, j,
	mov	r0, #26	@,
	add	r10, r6, r3	@ tmp166, pRawStreamArray, tmp165
	add	r5, r5, #1	@ i, i,
	ldr	r2, [r6, r3]	@, pRawStreamArray_9(D)->RawPacket[j_49].PhyAddr
	add	r4, r4, #1	@ D.36470, j,
	ldr	r3, [r10, #8]	@, pRawStreamArray_9(D)->RawPacket[j_49].Length
	ubfx	r4, r4, #0, #10	@ j, D.36470,,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #16]	@ D.36469, s_SmIIS.pSmInstArray
	ldr	r1, [r10, #8]	@ pRawStreamArray_9(D)->RawPacket[j_49].Length, pRawStreamArray_9(D)->RawPacket[j_49].Length
	cmp	r5, r7	@ i, DelNum
	add	r3, r3, #73728	@ tmp181, D.36469,
	ldr	r2, [r3, #188]	@ _28->RawPacketArray.RawTotalSize, _28->RawPacketArray.RawTotalSize
	rsb	r2, r1, r2	@ D.36466, pRawStreamArray_9(D)->RawPacket[j_49].Length, _28->RawPacketArray.RawTotalSize
	bic	r2, r2, r2, asr #31	@ D.36466, D.36466
	str	r2, [r3, #188]	@ D.36466, _28->RawPacketArray.RawTotalSize
	bne	.L95	@,
	ldr	r3, [r8]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp196,
	str	r0, [r8, #12]	@ tmp196, pRawStreamArray_9(D)->FirstPacketOffset
	add	r5, r5, r3	@ D.36466, i, pRawStreamArray_9(D)->Head
	str	r5, [r8]	@ D.36466, pRawStreamArray_9(D)->Head
	cmp	r5, #1024	@ D.36466,
	subge	r5, r5, #1024	@ D.36466, D.36466,
	strge	r5, [r8]	@ D.36466, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L94:
	cmp	r1, #1024	@ D.36466,
	str	r1, [r8]	@ D.36466, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.36467,
	subge	r1, r1, #1024	@ D.36466, D.36466,
	strge	r1, [r8]	@ D.36466, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L100:
	mvn	r0, #0	@ D.36467,
	bx	lr	@
.L110:
	mov	r3, r7	@, DelNum
	ldr	r1, .L111+8	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36467,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L89:
	movw	r2, #523	@,
	ldr	r1, .L111+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36467,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L112:
	.align	2
.L111:
	.word	.LANCHOR0
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
	@ args = 32, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	clz	lr, r0	@ D.36482, pRawStreamArray
	.pad #20
	sub	sp, sp, #20	@,,
	mov	lr, lr, lsr #5	@ D.36482, D.36482,
	add	r8, sp, #72	@,,
	orrs	ip, lr, r1, lsr #31	@, tmp360, D.36482, Len,
	ldr	r7, [sp, #56]	@ pPts, pPts
	ldmia	r8, {r8, r9, r10, fp}	@,,,,
	bne	.L123	@,
	cmp	r3, #0	@ pOffset,
	cmpne	r2, #0	@, pNum,
	moveq	ip, #1	@ tmp181,
	movne	ip, #0	@ tmp181,
	beq	.L123	@,
	stmib	sp, {r2, r3}	@,,
	add	r3, r0, #73728	@ tmp339, pRawStreamArray,
	cmp	lr, #0	@ D.36482,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	lr, [r3]	@ D.36483, pRawStreamArray_10(D)->Head
	mov	r6, r1	@ Len, Len
	ldr	r0, [r3, #12]	@ pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->FirstPacketOffset
	str	r3, [sp]	@ tmp339, %sfp
	mov	r1, lr, asl #3	@ tmp340, D.36483,
	mov	r3, lr, asl #6	@ tmp341, D.36483,
	add	r2, r1, r3	@ tmp187, tmp340, tmp341
	add	r2, r5, r2	@ tmp188, pRawStreamArray, tmp187
	ldr	r4, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[_20].Length, pRawStreamArray_10(D)->RawPacket[_20].Length
	rsb	r4, r0, r4	@ TotalLen, pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->RawPacket[_20].Length
	bne	.L115	@,
	ldr	r2, [sp]	@ tmp339, %sfp
	ldr	ip, [r2, #4]	@ pRawStreamArray_10(D)->Tail, pRawStreamArray_10(D)->Tail
	subs	ip, ip, lr	@ RawNum, pRawStreamArray_10(D)->Tail, D.36483
	addmi	ip, ip, #1024	@ RawNum, RawNum,
.L121:
	add	r1, r1, r3	@ tmp200, tmp340, tmp341
	ldr	r0, [sp, #60]	@ tmp365, pUsertag
	add	r1, r5, r1	@ tmp201, pRawStreamArray, tmp200
	add	lr, ip, lr	@ RawNum, RawNum, D.36483
	ldrd	r2, [r1, #16]	@ D.36484, tmp201,
	strd	r2, [r7]	@ D.36484, *pPts_28(D)
	ldrd	r2, [r1, #32]	@ D.36484, tmp201,
	strd	r2, [r0]	@ D.36484, *pUsertag_31(D)
	ldrd	r2, [r1, #16]	@ D.36484, tmp201,
	ldr	r0, [sp, #64]	@ tmp366, pDisptime
	strd	r2, [fp]	@ D.36484, *pRawPts_34(D)
	ldrd	r2, [r1, #40]	@ D.36484, tmp201,
	strd	r2, [r0]	@ D.36484, *pDisptime_37(D)
	ldr	r2, [sp, #68]	@ tmp367, pDispEnableFlag
	ldr	r3, [r1, #56]	@ D.36485, pRawStreamArray_10(D)->RawPacket[_110].DispEnableFlag
	str	r3, [r2]	@ D.36485, *pDispEnableFlag_40(D)
	ldr	r3, [r1, #60]	@ D.36485, pRawStreamArray_10(D)->RawPacket[_110].DispFrameDistance
	str	r3, [r8]	@ D.36485, *pDispFrameDistance_43(D)
	ldr	r3, [r1, #64]	@ D.36485, pRawStreamArray_10(D)->RawPacket[_110].DistanceBeforeFirstFrame
	str	r3, [r9]	@ D.36485, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r1, #68]	@ D.36485, pRawStreamArray_10(D)->RawPacket[_110].GopNum
	str	r3, [r10]	@ D.36485, *pGopNum_49(D)
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	ip, [r3]	@ i, pRawStreamArray_10(D)->Head
	cmp	r6, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	strgt	r8, [sp, #72]	@ pDispFrameDistance, pDispFrameDistance
	strgt	r9, [sp, #76]	@ pDistanceBeforeFirstFrame, pDistanceBeforeFirstFrame
	bgt	.L119	@,
	b	.L120	@
.L118:
	strd	r0, [r7]	@ D.36481, *pPts_28(D)
	cmp	r6, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	ldrd	r0, [r2, #32]	@ D.36484, tmp278,
	ldr	r3, [sp, #60]	@ tmp372, pUsertag
	strd	r0, [r3]	@ D.36484, *pUsertag_31(D)
	ldrd	r0, [r2, #16]	@ D.36484, tmp278,
	ldr	r3, [sp, #64]	@ tmp373, pDisptime
	strd	r0, [fp]	@ D.36484, *pRawPts_34(D)
	ldrd	r0, [r2, #40]	@ D.36484, tmp278,
	strd	r0, [r3]	@ D.36484, *pDisptime_37(D)
	ldr	r1, [sp, #68]	@ tmp374, pDispEnableFlag
	ldr	r3, [r2, #56]	@ D.36485, pRawStreamArray_10(D)->RawPacket[Index_53].DispEnableFlag
	str	r3, [r1]	@ D.36485, *pDispEnableFlag_40(D)
	ldr	r1, [sp, #72]	@ tmp384, pDispFrameDistance
	ldr	r3, [r2, #60]	@ D.36485, pRawStreamArray_10(D)->RawPacket[Index_53].DispFrameDistance
	str	r3, [r1]	@ D.36485, *pDispFrameDistance_43(D)
	ldr	r1, [sp, #76]	@ tmp383, pDistanceBeforeFirstFrame
	ldr	r3, [r2, #64]	@ D.36485, pRawStreamArray_10(D)->RawPacket[Index_53].DistanceBeforeFirstFrame
	str	r3, [r1]	@ D.36485, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r2, #68]	@ D.36485, pRawStreamArray_10(D)->RawPacket[Index_53].GopNum
	str	r3, [r10]	@ D.36485, *pGopNum_49(D)
	ble	.L128	@,
.L119:
	add	ip, ip, #1	@ i, i,
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp371,
	mov	r3, ip, asr #31	@ tmp255, i,
	mov	r2, r3, lsr #22	@ tmp256, tmp255,
	add	r3, ip, r2	@ tmp257, i, tmp256
	ubfx	r3, r3, #0, #10	@ tmp258, tmp257,,
	rsb	r3, r2, r3	@ Index, tmp256, tmp258
	mov	r1, r3, asl #3	@ tmp342, Index,
	mov	r3, r3, asl #6	@ tmp343, Index,
	add	r2, r1, r3	@ tmp277, tmp342, tmp343
	add	r2, r5, r2	@ tmp278, pRawStreamArray, tmp277
	ldrd	r0, [r2, #16]	@ D.36481, tmp264,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_53].Length, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	cmp	r1, r9	@ D.36481,
	cmpeq	r0, r8	@ D.36481, tmp371
	add	r4, r4, r3	@ TotalLen, TotalLen, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	ldreqd	r0, [r7]	@ D.36481, *pPts_28(D)
	b	.L118	@
.L128:
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	r1, [r3]	@ D.36483, pRawStreamArray_10(D)->Head
	cmp	r1, ip	@ D.36483, i
	beq	.L120	@,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_105].Length, pRawStreamArray_10(D)->RawPacket[Index_105].Length
	mov	r0, #0	@ D.36480,
	ldr	r2, [sp, #4]	@ pNum, %sfp
	rsb	ip, r1, ip	@ D.36483, D.36483, i
	rsb	r4, r3, r4	@ TotalLen, pRawStreamArray_10(D)->RawPacket[Index_105].Length, TotalLen
	ldr	r3, [sp, #8]	@ pOffset, %sfp
	rsb	r6, r4, r6	@ D.36483, TotalLen, Len
	str	ip, [r2]	@ D.36483, *pNum_15(D)
	str	r6, [r3]	@ D.36483, *pOffset_17(D)
.L126:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L120:
	ldr	r3, [sp, #4]	@ pNum, %sfp
	mov	r0, #0	@ tmp254,
	str	r0, [r3]	@ tmp254, *pNum_15(D)
	ldr	r3, [sp, #8]	@ pOffset, %sfp
	str	r6, [r3]	@ Len, *pOffset_17(D)
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L115:
	movw	r3, #654	@,
	ldr	r1, .L129	@,
	ldr	r2, .L129+4	@,
	mov	r0, #22	@,
	str	ip, [sp, #12]	@ tmp181, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	ip, [sp, #12]	@ tmp181, %sfp
	ldr	lr, [r3]	@ D.36483, pRawStreamArray_10(D)->Head
	mov	r1, lr, asl #3	@ tmp340, D.36483,
	mov	r3, lr, asl #6	@ tmp341, D.36483,
	b	.L121	@
.L123:
	mvn	r0, #0	@ D.36480,
	b	.L126	@
.L130:
	.align	2
.L129:
	.word	.LC13
	.word	.LANCHOR1
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r0	@ D.36490, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.36490, D.36490,
	orrs	ip, r3, r1, lsr #31	@, tmp137, D.36490, DelLen,
	.pad #88
	sub	sp, sp, #88	@,,
	bne	.L137	@,
	cmp	r3, #0	@ D.36490,
	str	ip, [sp, #32]	@ tmp137, DelNum
	str	ip, [sp, #36]	@ tmp137, RawPacketOffSet
	bne	.L137	@,
	add	r5, r0, #73728	@ tmp141, pRawStreamArray,
	mov	lr, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r5, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.36489, TotallLen,
	bne	.L133	@,
	cmp	r1, r3	@ DelLen, TotallLen
	bgt	.L137	@,
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	add	r3, sp, #80	@ tmp148,,
	add	r2, sp, #52	@ tmp149,,
	str	r3, [sp, #28]	@ tmp148,
	str	r2, [sp, #24]	@ tmp149,
	add	r3, sp, #48	@ tmp150,,
	add	r2, sp, #44	@ tmp151,,
	str	r3, [sp, #20]	@ tmp150,
	str	r2, [sp, #16]	@ tmp151,
	add	r3, sp, #40	@ tmp152,,
	add	r2, sp, #72	@ tmp153,,
	str	r3, [sp, #12]	@ tmp152,
	str	r2, [sp, #8]	@ tmp153,
	add	r3, sp, #64	@ tmp154,,
	add	r2, sp, #56	@ tmp155,,
	str	r3, [sp, #4]	@ tmp154,
	str	r2, [sp]	@ tmp155,
	add	r3, sp, #36	@,,
	add	r2, sp, #32	@,,
	bl	GetRawNumOffsert	@
	ldr	r1, [sp, #32]	@, DelNum
	mov	r0, r4	@, pRawStreamArray
	bl	DeleteRawPacket	@
	ldr	r3, [r5]	@ D.36491, pRawStreamArray_3(D)->Head
	ldr	r1, [r5, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	ldr	r2, [sp, #36]	@ D.36491, RawPacketOffSet
	cmp	r3, r1	@ D.36491, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.36489,
	beq	.L133	@,
	mov	lr, r3, asl #6	@ tmp167, D.36491,
	ldr	r1, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	lr, lr, r3, lsl #3	@ tmp168, tmp167, D.36491,
	add	lr, r4, lr	@ tmp169, pRawStreamArray, tmp168
	add	r2, r2, r1	@ TargetOffset, D.36491, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [lr, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r5, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L137	@,
.L133:
	mov	r0, r6	@, D.36489
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L137:
	mvn	r6, #0	@ D.36489,
	mov	r0, r6	@, D.36489
	add	sp, sp, #88	@,,
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
	ldr	r3, .L145	@ tmp115,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L144	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r3, #163840	@ tmp118, pSmInstArray,
	ldr	r1, [r5, #2296]	@ LastPushRawNum, pSmInstArray_4->SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	add	r0, r3, #168	@, pSmInstArray,
	mov	r4, r2	@ SmID, SmID
	bl	DeleteRawPacket	@
	str	r4, [r5, #2296]	@ SmID, pSmInstArray_4->SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L144:
	movw	r2, #802	@,
	ldr	r1, .L145+4	@,
	b	dprint_vfmw	@
.L146:
	.align	2
.L145:
	.word	.LANCHOR0
	.word	.LC14
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
	ldrne	r3, [r0, #20]	@ D.36504, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.36504, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.36504, pRawStreamArray_3(D)->FirstPacketOffset, D.36504
	strne	r0, [r1]	@ D.36504, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.36503, D.36504,
	mvneq	r0, #0	@ D.36503,
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
	beq	.L153	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.36509, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.36509, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.36509, D.36509,
	strmi	r3, [r1]	@ D.36509, *pStreamNum_8(D)
	movpl	r0, #0	@ D.36508,
	movmi	r0, #0	@ D.36508,
	bx	lr	@
.L153:
	mvn	r0, #0	@ D.36508,
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
	beq	.L156	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp134,
	movcc	r4, #1	@ tmp134,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp138, tmp134
	cmp	r4, #0	@ tmp138,
	bne	.L157	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp141, pStreamSegArray,
	mov	r0, r4	@ D.36512, tmp138
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L157:
	mvn	r0, #0	@ D.36512,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L156:
	mvn	r0, #0	@ D.36512,
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
	ldr	r2, [r0, #2072]	@ D.36517, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.36517, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.36517, pStreamSegArray_2(D)->SegBufWriteAddr
	str	r3, [r0, #2064]	@ tmp116, pStreamSegArray_2(D)->History
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ResetStreamSegArray, .-ResetStreamSegArray
	.align	2
	.global	GetSegBuf
	.type	GetSegBuf, %function
GetSegBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ pBufLength,
	cmpne	r1, #0	@, pBufAddr,
	moveq	r3, #1	@ tmp126,
	movne	r3, #0	@ tmp126,
	cmp	r0, #0	@ pStreamSegArray,
	orreq	r3, r3, #1	@,, tmp132, tmp126
	cmp	r3, #0	@ tmp132,
	addeq	r0, r0, #90112	@ tmp134, pStreamSegArray,
	ldreq	r3, [r0, #2072]	@ pStreamSegArray_1(D)->SegBufPhyAddr, pStreamSegArray_1(D)->SegBufPhyAddr
	streq	r3, [r1]	@ pStreamSegArray_1(D)->SegBufPhyAddr, *pBufAddr_3(D)
	ldreq	r3, [r0, #2076]	@ pStreamSegArray_1(D)->SegBufSize, pStreamSegArray_1(D)->SegBufSize
	streq	r3, [r2]	@ pStreamSegArray_1(D)->SegBufSize, *pBufLength_7(D)
	bx	lr	@
	.fnend
	.size	GetSegBuf, .-GetSegBuf
	.align	2
	.global	GetFreeSegBuf
	.type	GetFreeSegBuf, %function
GetFreeSegBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0	@ pLength,
	cmpne	r1, #0	@, pAddr,
	moveq	r3, #1	@ tmp130,
	movne	r3, #0	@ tmp130,
	cmp	r0, #0	@ pStreamSegArray,
	orreq	r3, r3, #1	@,, tmp136, tmp130
	cmp	r3, #0	@ tmp136,
	bxne	lr	@
	add	r0, r0, #90112	@ tmp138, pStreamSegArray,
	ldr	ip, [r0, #2084]	@ D.36533, pStreamSegArray_1(D)->SegBufWriteAddr
	str	ip, [r1]	@ D.36533, *pAddr_3(D)
	str	r3, [r2]	@ tmp136, *pLength_7(D)
	ldr	r1, [r0, #2084]	@ D.36533, pStreamSegArray_1(D)->SegBufWriteAddr
	ldr	r3, [r0, #2080]	@ D.36533, pStreamSegArray_1(D)->SegBufReadAddr
	cmp	r1, r3	@ D.36533, D.36533
	bgt	.L175	@,
	ldrge	r0, [r0, #2076]	@ D.36533, pStreamSegArray_1(D)->SegBufSize
	rsblt	r3, r1, r3	@ D.36533, D.36533, D.36533
	ldrlt	r0, [r0, #2076]	@ D.36533, pStreamSegArray_1(D)->SegBufSize
	sublt	r3, r3, #1	@ Len, D.36533,
	subge	r3, r0, #1	@ Len, D.36533,
.L172:
	cmp	r3, r0	@ Len, D.36533
	strle	r3, [r2]	@ Len, *pLength_7(D)
	bx	lr	@
.L175:
	ldr	r0, [r0, #2076]	@ D.36533, pStreamSegArray_1(D)->SegBufSize
	rsb	r3, r1, r3	@ D.36533, D.36533, D.36533
	sub	r1, r0, #1	@ D.36533, D.36533,
	add	r3, r1, r3	@ Len, D.36533, D.36533
	b	.L172	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L224	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r5, #0	@ pstChan,
	beq	.L220	@,
	ldr	r3, [r5, #880]	@ D.36536, pstChan_10->eVidStd
	sub	lr, r3, #3	@ D.36537, D.36536,
	clz	lr, lr	@ D.36537, D.36537
	mov	lr, lr, lsr #5	@ D.36537, D.36537,
	cmp	r3, #0	@ D.36536,
	movne	r3, lr	@, D.36537, D.36537
	orreq	r3, lr, #1	@,, D.36537, D.36537
	cmp	r3, #0	@ D.36537,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r4, r5, #217088	@ tmp293, pstChan,
	ldr	ip, [r4, #384]	@ D.36538, pstChan_10->s32FindStartCodeCnt
	cmp	ip, #199	@ D.36538,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_17(D), *pSegBufVirAddr_17(D)
	cmp	r2, #0	@ *pSegBufVirAddr_17(D),
	bne	.L219	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B]
	cmp	r2, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B],
	bne	.L219	@,
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B]
	cmp	r2, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B],
	beq	.L184	@,
.L219:
	ldr	r6, [r4, #396]	@ D.36538, pstChan_10->s32CurrentStartCode
	mov	r0, #0	@ tmp292,
	ldr	r7, [r4, #392]	@ D.36538, pstChan_10->s32LastOneStartCode
	mov	r2, r0	@ D.36537, tmp292
	mov	r8, r0	@ D.36538, D.36537
	mov	r9, r0	@ u8Data, D.36537
	add	ip, ip, #1	@ D.36538, D.36538,
	str	r0, [r4, #396]	@ tmp292, pstChan_10->s32CurrentStartCode
	str	ip, [r4, #384]	@ D.36538, pstChan_10->s32FindStartCodeCnt
	str	r6, [r4, #392]	@ D.36538, pstChan_10->s32LastOneStartCode
	str	r7, [r4, #388]	@ D.36538, pstChan_10->s32LastTwoStartCode
.L185:
	cmp	r3, #0	@ D.36537,
	beq	.L221	@,
.L186:
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.36538, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.36538, pstChan_10->s32Mpeg2Score
.L187:
	cmp	r2, #0	@ D.36537,
	beq	.L188	@,
	rsb	r3, r6, r8	@ D.36538, D.36538, D.36538
	cmp	r3, #1	@ D.36538,
	beq	.L222	@,
.L189:
	cmp	r6, r8	@ D.36538, D.36538
	cmpeq	r7, r6	@, D.36538, D.36538
	beq	.L190	@,
.L188:
	cmp	ip, #199	@ D.36538,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r6, [r4, #376]	@ D.36538, pstChan_10->s32H264Score
	mov	r7, r1	@ InstID, InstID
	ldr	r3, [r4, #380]	@ D.36538, pstChan_10->s32Mpeg2Score
	rsb	ip, r3, r6	@ D.36538, D.36538, D.36538
	cmp	ip, #49	@ D.36538,
	movle	lr, #0	@, tmp271
	andgt	lr, lr, #1	@,, tmp271, D.36537
	cmp	lr, #0	@ tmp271,
	bne	.L223	@,
.L192:
	rsb	r3, r6, r3	@ D.36538, D.36538, D.36538
	cmp	r3, #49	@ D.36538,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r5, #880]	@ pstChan_10->eVidStd, pstChan_10->eVidStd
	cmp	r2, #0	@ pstChan_10->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L224+4	@ tmp279,
	ldr	r3, [r3]	@ D.36540, g_event_report
	cmp	r3, #0	@ D.36540,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r0, r7	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.36540
.L221:
	add	r9, r9, #73	@ tmp227, u8Data,
	uxtb	r9, r9	@ tmp228, tmp227
	cmp	r9, #3	@ tmp228,
	bhi	.L187	@,
	b	.L186	@
.L223:
	ldr	r2, .L224+4	@ tmp272,
	ldr	ip, [r2]	@ D.36540, g_event_report
	cmp	ip, #0	@ D.36540,
	beq	.L192	@,
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r7	@, InstID
	blx	ip	@ D.36540
	ldr	r3, [r4, #380]	@ D.36538, pstChan_10->s32Mpeg2Score
	ldr	r6, [r4, #376]	@ D.36538, pstChan_10->s32H264Score
	b	.L192	@
.L184:
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 3B]
	add	ip, ip, #1	@ D.36538, D.36538,
	ldr	r6, [r4, #396]	@ D.36538, pstChan_10->s32CurrentStartCode
	and	r8, r9, #31	@ D.36538, u8Data,
	ands	r2, r9, #31	@ tmp182, u8Data,
	sub	r0, r8, #30	@ tmp209, D.36538,
	sub	r10, r9, #1	@ tmp190, u8Data,
	movne	r2, #1	@ tmp182,
	cmp	r8, #19	@ D.36538,
	cmpne	r0, #1	@, tmp209,
	uxtb	r10, r10	@ tmp192, tmp190
	sub	r7, r8, #1	@ D.36542, D.36538,
	add	r3, r9, #79	@ tmp186, u8Data,
	movls	r0, #1	@ tmp213,
	movhi	r0, #0	@ tmp213,
	cmp	r7, #12	@ D.36542,
	orrls	r0, r0, #1	@,, tmp220, tmp213
	cmp	r10, #183	@ tmp192,
	uxtb	r3, r3	@ tmp188, tmp186
	ldr	r7, [r4, #392]	@ D.36538, pstChan_10->s32LastOneStartCode
	movls	r10, #0	@ tmp193,
	movhi	r10, #1	@ tmp193,
	cmp	ip, #2	@ D.36538,
	movle	r2, #0	@, D.36537
	andgt	r2, r2, #1	@,, D.36537, tmp182
	cmp	r3, #4	@ tmp188,
	movhi	r3, r10	@, D.36537, tmp193
	orrls	r3, r10, #1	@,, D.36537, tmp193
	cmp	r0, #0	@ tmp220,
	str	ip, [r4, #384]	@ D.36538, pstChan_10->s32FindStartCodeCnt
	str	r8, [r4, #396]	@ D.36538, pstChan_10->s32CurrentStartCode
	ldrne	r0, [r4, #376]	@ pstChan_10->s32H264Score, pstChan_10->s32H264Score
	str	r6, [r4, #392]	@ D.36538, pstChan_10->s32LastOneStartCode
	addne	r0, r0, #1	@ D.36538, pstChan_10->s32H264Score,
	str	r7, [r4, #388]	@ D.36538, pstChan_10->s32LastTwoStartCode
	strne	r0, [r4, #376]	@ D.36538, pstChan_10->s32H264Score
	b	.L185	@
.L222:
	rsb	r3, r7, r6	@ D.36538, D.36538, D.36538
	cmp	r3, #1	@ D.36538,
	bne	.L189	@,
.L190:
	cmp	r8, #1	@ D.36538,
	cmpne	r8, #20	@, D.36538,
	beq	.L188	@,
	ldr	r3, [r4, #376]	@ D.36538, pstChan_10->s32H264Score
	cmp	r3, #0	@ D.36538,
	subgt	r3, r3, #1	@ D.36538, D.36538,
	strgt	r3, [r4, #376]	@ D.36538, pstChan_10->s32H264Score
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.36538, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.36538, pstChan_10->s32Mpeg2Score
	b	.L188	@
.L220:
	mov	r2, r1	@, InstID
	mov	r0, r5	@, pstChan
	ldr	r1, .L224+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L225:
	.align	2
.L224:
	.word	s_pstVfmwChan
	.word	g_event_report
	.word	.LC15
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
	moveq	r8, #1	@ tmp151,
	movne	r8, #0	@ tmp151,
	beq	.L228	@,
	add	r4, r0, #90112	@ tmp153, pStreamSegArray,
	movw	r5, #36409	@ tmp158,
	movt	r5, 14563	@ tmp158,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.36548, pStreamSegArray_5(D)->Tail,
	smull	r6, r7, r3, r5	@ tmp157, D.36548, tmp158
	mov	ip, r3, asr #31	@ tmp160, D.36548,
	rsb	ip, ip, r7, asr #8	@ tmp156, tmp160,,
	mov	r6, ip, asl #10	@ tmp163, tmp156,
	add	ip, r6, ip, lsl #7	@ tmp164, tmp163, tmp156,
	rsb	r3, ip, r3	@ D.36548, tmp164, D.36548
	cmp	r3, lr	@ D.36548, pStreamSegArray_5(D)->Head
	beq	.L229	@,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r6]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r7, [r4, #2060]	@ D.36548, pStreamSegArray_5(D)->Tail
	mov	r1, r6	@, pStreamSeg
	mov	r2, #80	@,
	mov	r3, r7, asl #6	@ tmp174, D.36548,
	add	r7, r3, r7, lsl #4	@ tmp175, tmp174, D.36548,
	add	r0, r7, #8	@ tmp176, tmp175,
	add	r7, r9, r7	@ tmp196, pStreamSegArray, tmp175
	add	r0, r9, r0	@, pStreamSegArray, tmp176
	bl	memcpy	@
	ldr	r3, [r4, #2060]	@ D.36548, pStreamSegArray_5(D)->Tail
	mov	lr, #1	@ tmp190,
	mov	r0, r8	@ D.36546, tmp151
	add	ip, r3, lr	@ D.36548, D.36548,
	mov	r2, r3, asl #6	@ tmp186, D.36548,
	smull	r10, fp, ip, r5	@ tmp201, D.36548, tmp158
	add	r2, r2, r3, lsl #4	@ tmp187, tmp186, D.36548,
	add	r2, r9, r2	@ tmp188, pStreamSegArray, tmp187
	mov	r1, ip, asr #31	@ tmp204, D.36548,
	strb	lr, [r2, #12]	@ tmp190, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r3, [r7, #24]	@ D.36548, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	rsb	r2, r1, fp, asr #8	@ tmp205, tmp204,,
	ldr	lr, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	ldr	r1, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	mov	r3, r2, asl #10	@ tmp208, tmp205,
	add	r3, r3, r2, lsl #7	@ tmp209, tmp208, tmp205,
	ldr	r2, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	rsb	r3, r3, ip	@ D.36548, tmp209, D.36548
	str	r3, [r4, #2060]	@ D.36548, pStreamSegArray_5(D)->Tail
	ldr	r3, [r6, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r2, #1	@ D.36548, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, r3, ip	@ D.36550, pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2084]	@ D.36550, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, lr, r3	@ D.36550, pStreamSegArray_5(D)->SegTotalSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2088]	@ D.36550, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.36548, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r1, r3	@ D.36550, pStreamSegArray_5(D)->SegFreshSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2092]	@ D.36550, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L229:
	mvn	r0, #3	@ D.36546,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L228:
	mvn	r0, #0	@ D.36546,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	InsertStreamSeg, .-InsertStreamSeg
	.align	2
	.global	GetStreamSeg
	.type	GetStreamSeg, %function
GetStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r0, #0	@, pStreamSegArray,
	beq	.L238	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp222, pStreamSegArray,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.36556, pStreamSegArray_7(D)->Tail
	cmp	lr, r3	@ D.36556, i
	beq	.L240	@,
	mov	ip, r3, asl #4	@ tmp220, i,
	mov	r4, r3, asl #6	@ tmp221, i,
	add	r2, ip, r4	@ tmp149, tmp220, tmp221
	add	r2, r0, r2	@ tmp150, pStreamSegArray, tmp149
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState, pStreamSegArray_7(D)->StreamSeg[i_13].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState,
	movwne	r6, #36409	@ tmp223,
	movtne	r6, 14563	@ tmp223,
	bne	.L235	@,
	b	.L233	@
.L246:
	add	r2, r0, r2	@ tmp157, pStreamSegArray, tmp156
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState, pStreamSegArray_7(D)->StreamSeg[i_17].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState,
	beq	.L233	@,
.L235:
	add	ip, r3, #1	@ D.36556, i,
	smull	r2, r3, ip, r6	@ tmp165, D.36556, tmp223
	mov	r2, ip, asr #31	@ tmp168, D.36556,
	rsb	r3, r2, r3, asr #8	@ i, tmp168,,
	mov	r2, r3, asl #10	@ tmp171, i,
	add	r3, r2, r3, lsl #7	@ tmp172, tmp171, i,
	rsb	r3, r3, ip	@ i, tmp172, D.36556
	cmp	lr, r3	@ D.36556, i
	mov	ip, r3, asl #4	@ tmp220, i,
	mov	r4, r3, asl #6	@ tmp221, i,
	add	r2, ip, r4	@ tmp156, tmp220, tmp221
	bne	.L246	@,
.L240:
	mvn	r0, #2	@ D.36557,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L233:
	add	r4, ip, r4	@ tmp163, tmp220, tmp221
	add	r3, r4, #8	@ tmp164, tmp163,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp164
	beq	.L240	@,
	mov	r3, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@, pSeg
	mov	r0, r3	@, pStreamSeg
	mov	r2, #80	@,
	bl	memcpy	@
	add	ip, r6, r4	@ tmp181, pStreamSegArray, tmp163
	mov	r3, #2	@ tmp183,
	ldr	r1, .L248	@,
	strb	r3, [ip, #12]	@ tmp183, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].SegState
	mov	r0, #26	@,
	ldr	r3, [ip, #20]	@ D.36560, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].LenInByte
	ldr	lr, [r5, #2092]	@ pStreamSegArray_7(D)->SegFreshSize, pStreamSegArray_7(D)->SegFreshSize
	ldr	r2, [r5, #2096]	@ pStreamSegArray_7(D)->SegFreshNum, pStreamSegArray_7(D)->SegFreshNum
	rsb	lr, r3, lr	@ D.36560, D.36560, pStreamSegArray_7(D)->SegFreshSize
	sub	r2, r2, #1	@ D.36556, pStreamSegArray_7(D)->SegFreshNum,
	bic	lr, lr, lr, asr #31	@ D.36556, D.36560
	str	lr, [r5, #2092]	@ D.36556, pStreamSegArray_7(D)->SegFreshSize
	bic	r2, r2, r2, asr #31	@ D.36556, D.36556
	str	r2, [r5, #2096]	@ D.36556, pStreamSegArray_7(D)->SegFreshNum
	ldr	r2, [ip, #16]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].PhyAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].PhyAddr
	ldrb	ip, [ip, #13]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg
	str	ip, [sp]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36557,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L238:
	mvn	r0, #0	@ D.36557,
	bx	lr	@
.L249:
	.align	2
.L248:
	.word	.LC16
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
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
	beq	.L270	@,
	movw	r3, #64382	@ tmp155,
	sub	r2, r1, #1152	@ D.36572, StreamID,
	movt	r3, 65535	@ tmp155,
	cmp	r2, r3	@ D.36572, tmp155
	mov	r4, r1	@ StreamID, StreamID
	bls	.L270	@,
	cmn	r1, #1	@ StreamID,
	add	r6, r5, #90112	@ tmp279, pStreamSegArray,
	beq	.L285	@,
	ldr	r3, [r6, #2056]	@ i, pStreamSegArray_15(D)->Head
	ldr	ip, [r6, #2060]	@ D.36572, pStreamSegArray_15(D)->Tail
	cmp	r3, ip	@ i, D.36572
	beq	.L262	@,
	cmp	r1, r3	@ StreamID, i
	movwne	lr, #36409	@ tmp289,
	movtne	lr, 14563	@ tmp289,
	bne	.L260	@,
	b	.L258	@
.L281:
	cmp	r4, r3	@ StreamID, i
	beq	.L258	@,
.L260:
	add	r2, r3, #1	@ D.36572, i,
	umull	r0, r1, r2, lr	@ tmp214, D.36572, tmp289
	mov	r3, r1, lsr #8	@ i,,
	mov	r1, r3, asl #10	@ tmp218, i,
	add	r3, r1, r3, lsl #7	@ tmp219, tmp218, i,
	rsb	r3, r3, r2	@ i, tmp219, D.36572
	cmp	r3, ip	@ i, D.36572
	bne	.L281	@,
	b	.L262	@
.L258:
	mov	r2, r3, asl #6	@ tmp204, i,
	add	r3, r2, r3, lsl #4	@ tmp205, tmp204, i,
	add	r2, r5, r3	@ tmp206, pStreamSegArray, tmp205
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_15(D)->StreamSeg[i_84].SegState, pStreamSegArray_15(D)->StreamSeg[i_84].SegState
	cmp	r2, #2	@ pStreamSegArray_15(D)->StreamSeg[i_84].SegState,
	addeq	r3, r3, #8	@ tmp213, tmp205,
	addeq	r7, r5, r3	@ pSeg, pStreamSegArray, tmp213
	beq	.L255	@,
.L262:
	mov	r2, r4	@, StreamID
	ldr	r3, .L288	@,
	ldr	r1, .L288+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.36571,
.L282:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L285:
	ldr	r9, [r6, #2056]	@ D.36573, pStreamSegArray_15(D)->Head
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r9, r3	@ D.36573, pStreamSegArray_15(D)->Tail
	beq	.L262	@,
	mov	r3, r9, asl #6	@ tmp281, D.36573,
	mov	r4, r9	@ StreamID, D.36573
	add	r9, r3, r9, lsl #4	@ tmp164, tmp281, D.36573,
	mov	r2, r4	@, StreamID
	add	r7, r9, #8	@ tmp165, tmp164,
	add	r9, r5, r9	@ tmp171, pStreamSegArray, tmp164
	ldr	r1, .L288+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	add	r7, r5, r7	@ pSeg, pStreamSegArray, tmp165
	cmp	r3, #0	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte,
	movne	r8, #0	@ i,
	beq	.L257	@,
.L256:
	ldr	r3, [r9, #8]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].VirAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].VirAddr
	mov	r0, #0	@,
	ldr	r1, .L288+12	@,
	ldrb	r2, [r3, r8]	@ zero_extendqisi2	@, *_27
	add	r8, r8, #1	@ i, i,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	cmp	r3, r8	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, i
	movhi	r3, #1	@ tmp197,
	movls	r3, #0	@ tmp197,
	cmp	r8, #15	@ i,
	movhi	r3, #0	@ tmp197,
	cmp	r3, #0	@ tmp197,
	bne	.L256	@,
.L257:
	ldr	r1, .L288+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L255:
	cmp	r7, #0	@ pSeg,
	beq	.L262	@,
	ldr	r3, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r2, #0	@ tmp220,
	strb	r2, [r7, #4]	@ tmp220, pSeg_6->SegState
	mov	r0, #26	@,
	ldr	r2, [r7, #8]	@ pSeg_6->PhyAddr, pSeg_6->PhyAddr
	str	r4, [sp, #4]	@ StreamID,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ pSeg_6->IsLastSeg, pSeg_6->IsLastSeg
	ldr	r1, .L288+20	@,
	str	ip, [sp]	@ pSeg_6->IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #2056]	@ pStreamSegArray_15(D)->Head, pStreamSegArray_15(D)->Head
	cmp	r3, r4	@ pStreamSegArray_15(D)->Head, StreamID
	beq	.L286	@,
.L263:
	ldr	r2, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.36571,
	ldr	r3, [r6, #2088]	@ pStreamSegArray_15(D)->SegTotalSize, pStreamSegArray_15(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.36572, pSeg_6->LenInByte, pStreamSegArray_15(D)->SegTotalSize
	bic	r3, r3, r3, asr #31	@ D.36573, D.36572
	str	r3, [r6, #2088]	@ D.36573, pStreamSegArray_15(D)->SegTotalSize
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L286:
	movw	r8, #36409	@ tmp284,
	movt	r8, 14563	@ tmp284,
	b	.L266	@
.L264:
	ldr	r2, [r6, #2060]	@ D.36573, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.36573, StreamID
	beq	.L267	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState, pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState
	cmp	r2, #0	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState,
	bne	.L287	@,
.L271:
	add	r2, r4, #1	@ D.36572, StreamID,
	umull	r0, r1, r2, r8	@ tmp259, D.36572, tmp284
	mov	r4, r1, lsr #8	@ StreamID,,
	mov	r3, r4, asl #10	@ tmp263, StreamID,
	add	r4, r3, r4, lsl #7	@ tmp264, tmp263, StreamID,
	rsb	r4, r4, r2	@ StreamID, tmp264, D.36572
.L266:
	mov	r3, r4, asl #6	@ tmp243, StreamID,
	cmp	r4, #1152	@ StreamID,
	add	r3, r3, r4, lsl #4	@ tmp244, tmp243, StreamID,
	add	r3, r5, r3	@ tmp245, pStreamSegArray, tmp244
	bcc	.L264	@,
	ldr	r2, .L288	@,
	mov	r0, #1	@,
	ldr	r1, .L288+24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #2060]	@ D.36573, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.36573, StreamID
	bne	.L271	@,
.L267:
	ldr	r3, [r6, #2084]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufWriteAddr
	str	r2, [r6, #2056]	@ D.36573, pStreamSegArray_15(D)->Head
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L263	@
.L287:
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r3, #16]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr, pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L263	@
.L270:
	mvn	r0, #0	@ D.36571,
	b	.L282	@
.L289:
	.align	2
.L288:
	.word	.LANCHOR1+20
	.word	.LC22
	.word	.LC17
	.word	.LC19
	.word	.LC18
	.word	.LC20
	.word	.LC21
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
	addne	r3, r0, #90112	@ tmp116, pSegStreamArray,
	movne	r0, #0	@ D.36585,
	mvneq	r0, #0	@ D.36585,
	ldrne	r3, [r3, #2088]	@ D.36586, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ D.36586, *pStreamSize_6(D)
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
	add	r0, r0, #90112	@ tmp120, pSegStreamArray,
	movw	r2, #36409	@ tmp128,
	movt	r2, 14563	@ tmp128,
	ldr	r3, [r0, #2060]	@ pSegStreamArray_2(D)->Tail, pSegStreamArray_2(D)->Tail
	ldr	r0, [r0, #2056]	@ pSegStreamArray_2(D)->Head, pSegStreamArray_2(D)->Head
	add	r3, r3, #1152	@ D.36589, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.36589, pSegStreamArray_2(D)->Head, D.36589
	smull	r0, r1, r3, r2	@ tmp127, D.36589, tmp128
	mov	r2, r3, asr #31	@ tmp130, D.36589,
	rsb	r2, r2, r1, asr #8	@ D.36589, tmp130,,
	mov	r0, r2, asl #10	@ tmp133, D.36589,
	add	r0, r0, r2, lsl #7	@ tmp134, tmp133, D.36589,
	rsb	r0, r0, r3	@, tmp134, D.36589
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
	addne	r0, r0, #90112	@ tmp116, pSegStreamArray,
	ldrne	r3, [r0, #2096]	@ D.36593, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ D.36593, *pFreshNum_5(D)
	ldrne	r3, [r0, #2092]	@ D.36593, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ D.36593, *pFreshSize_8(D)
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
	ldr	r3, .L303	@ tmp114,
	ldr	r0, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L302	@,
	ldr	r2, [r3, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #152]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L302:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L304:
	.align	2
.L303:
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
	ldr	r3, .L306	@ tmp113,
	ldr	r0, [r3, #152]	@, s_eScdDrvSleepStage
	bx	lr	@
.L307:
	.align	2
.L306:
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
	ldr	r3, .L313	@ tmp111,
	ldr	r2, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #152]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L314:
	.align	2
.L313:
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
	ldr	r3, .L319	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3, #8]	@ D.36606, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.36606,
	beq	.L316	@,
	blx	r0	@ D.36606
.L317:
	ldr	r3, .L319+4	@ tmp113,
	mov	r2, #0	@ tmp114,
	str	r2, [r3, #152]	@ tmp114, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L316:
	movw	r2, #1378	@,
	ldr	r1, .L319+8	@,
	bl	dprint_vfmw	@
	b	.L317	@
.L320:
	.align	2
.L319:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC23
	.fnend
	.size	SCDDRV_ExitSleep, .-SCDDRV_ExitSleep
	.align	2
	.global	SM_ClearInst
	.type	SM_ClearInst, %function
SM_ClearInst:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID
	bne	.L323	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #49056	@,
	ldr	r5, .L326	@ tmp116,
	mov	r4, r0	@ SmID, SmID
	movt	r1, 2	@,
	ldr	r0, [r5, #128]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r3, [r5, #128]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r4	@ D.36610, SmID
	mvn	r5, #0	@,
	add	r3, r3, #179200	@ tmp121, s_SmIIS.pSmInstArray,
	mvn	r4, #0	@ tmp123,
	add	r3, r3, #896	@ tmp121, tmp121,
	strd	r4, [r3, #-8]	@ tmp123, tmp121,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L323:
	mvn	r0, #0	@ D.36610,
	bx	lr	@
.L327:
	.align	2
.L326:
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
	ldr	lr, .L343	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L343+4	@ tmp181,
	movt	ip, 4115	@ tmp141,
	mov	r8, r1	@ MemSize, MemSize
	mov	r10, r2	@ RegAddr, RegAddr
	ldr	r0, [lr, #8]	@ D.36615, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r0, #0	@ D.36615,
	beq	.L329	@,
	blx	r0	@ D.36615
.L330:
	ldr	r3, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L343+4	@ tmp144,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L334	@,
	bl	ResetSCD	@
	mov	r1, #140	@,
	add	r0, r4, #12	@, tmp144,
	mov	r7, #0	@ tmp149,
	bl	__memzero	@
	add	r3, r5, #3	@ D.36616, MemAddr,
	bic	r3, r3, #3	@ D.36616, D.36616,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.36616
	str	r3, [r4, #20]	@ D.36616, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.36616
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #152]	@ tmp149, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.36618, Offset,
	mov	r2, #12288	@ tmp156,
	add	r3, r5, r3	@ D.36616, MemAddr, D.36618
	str	r2, [r4, #28]	@ tmp156, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.36616, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.36616, Offset, MemAddr
	add	r5, r5, #26112	@ D.36618, D.36616,
	add	r5, r5, #127	@ D.36618, D.36618,
	bic	r5, r5, #127	@ D.36618, D.36618,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.36616
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp161,
	str	r5, [r4, #4]	@ D.36618, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp161, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.36618
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.36617,
	str	r0, [r4, #156]	@ D.36617, g_hex_base_vir_addr
	beq	.L342	@,
	add	r6, r6, #44032	@ D.36618, Offset,
	mov	r3, #17920	@ tmp170,
	cmp	r8, r6	@ MemSize, D.36618
	str	r10, [r4, #80]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #84]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp170, g_hex_len
	blt	.L334	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L334	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L334	@,
	mov	r3, #1	@ tmp179,
	mov	r0, r7	@ D.36614, tmp149
	str	r3, [r4, #136]	@ tmp179, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L329:
	movw	r2, #1564	@,
	ldr	r1, .L343+8	@,
	bl	dprint_vfmw	@
	b	.L330	@
.L334:
	mvn	r0, #6	@ D.36614,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L342:
	movw	r2, #1642	@,
	ldr	r1, .L343+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36614,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L344:
	.align	2
.L343:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC23
	.word	.LC24
	.fnend
	.size	SM_OpenSCDDrv, .-SM_OpenSCDDrv
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
	ldr	r3, .L354	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #128]	@ D.36624, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36624,
	beq	.L346	@,
	ldr	r2, [r3, #64]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L346	@,
	add	r3, r3, #163840	@ tmp121, D.36624,
	ldr	r2, [r3, #2412]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2412]	@ tmp125, _5->Mode
.L346:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L355:
	.align	2
.L354:
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
	ldr	r2, .L366	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #128]	@ D.36639, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36639,
	beq	.L359	@,
	add	r3, r3, #163840	@ tmp121, D.36639,
	ldr	r1, [r3, #2412]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L359	@,
	ldr	r2, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2412]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L359	@,
	mvn	r0, #6	@ D.36637,
	bx	lr	@
.L359:
	mov	r0, #0	@ D.36637,
	bx	lr	@
.L367:
	.align	2
.L366:
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
	mov	r1, #140	@,
	ldr	r0, .L370	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L371:
	.align	2
.L370:
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
	bne	.L379	@,
	ldr	r3, .L389	@ tmp133,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L388	@,
	add	ip, r0, #163840	@ tmp186, pSmInstArray,
	add	r3, r0, #176128	@ tmp141, pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmn	r0, #168	@ pSmInstArray,
	ldr	r2, [ip, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	add	r0, r0, #73728	@ tmp185, pSmInstArray,
	strb	r2, [r1]	@ pSmInstArray_5->Mode, pSmInstInfo_6(D)->InstMode
	ldr	r3, [r3, #3988]	@ D.36645, pSmInstArray_5->numReadSegFail
	str	r3, [r1, #20]	@ D.36645, pSmInstInfo_6(D)->numReadSegFail
	beq	.L375	@,
	ldr	r3, [r0, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	ldr	r2, [r0, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	subs	r3, r3, r2	@ D.36645, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	addmi	r3, r3, #1024	@ D.36645, D.36645,
	strmi	r3, [r1, #4]	@ D.36645, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
	strpl	r3, [r1, #4]	@ D.36645, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
.L377:
	ldr	r3, [r0, #188]	@ D.36645, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].RawTotalSize
	str	r3, [r1, #12]	@ D.36645, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
	ldr	r2, [r0, #180]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset
	rsb	r3, r2, r3	@ D.36645, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, D.36645
	str	r3, [r1, #12]	@ D.36645, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
.L375:
	ldr	r3, [ip, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail
	movw	r4, #36409	@ tmp163,
	ldr	r2, [ip, #2248]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head
	movt	r4, 14563	@ tmp163,
	add	r3, r3, #1152	@ D.36645, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail,
	adds	r0, r0, #192	@ D.36648, tmp185,
	rsb	r3, r2, r3	@ D.36645, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, D.36645
	movne	r0, #0	@ D.36644,
	smull	r4, r5, r3, r4	@ tmp162, D.36645, tmp163
	mov	r2, r3, asr #31	@ tmp165, D.36645,
	rsb	r2, r2, r5, asr #8	@ tmp166, tmp165,,
	mov	lr, r2, asl #10	@ tmp169, tmp166,
	add	r2, lr, r2, lsl #7	@ tmp170, tmp169, tmp166,
	rsb	r3, r2, r3	@ D.36645, tmp170, D.36645
	str	r3, [r1, #8]	@ D.36645, pSmInstInfo_6(D)->SegNum
	ldrne	r3, [ip, #2280]	@ D.36645, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegTotalSize
	strne	r3, [r1, #16]	@ D.36645, MEM[(HI_S32 *)pSmInstInfo_6(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L388:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L379	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_6(D)->InstMode
	mvn	r0, #0	@ D.36644,
	bx	lr	@
.L379:
	mvn	r0, #0	@ D.36644,
	bx	lr	@
.L390:
	.align	2
.L389:
	.word	.LANCHOR0
	.fnend
	.size	SM_GetInfo, .-SM_GetInfo
	.align	2
	.global	SM_PushRaw
	.type	SM_PushRaw, %function
SM_PushRaw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L396	@ tmp122,
	ldr	ip, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	add	r0, r3, r0, lsl #2	@ tmp124, tmp122, SmID,
	cmp	ip, #0	@ pRawPacket_6(D)->PhyAddr,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	beq	.L392	@,
	ldr	r3, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r3, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L392	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
.L392:
	mvn	r0, #0	@,
	bx	lr	@
.L397:
	.align	2
.L396:
	.word	.LANCHOR0
	.fnend
	.size	SM_PushRaw, .-SM_PushRaw
	.align	2
	.global	SM_CopyRawToSeg
	.type	SM_CopyRawToSeg, %function
SM_CopyRawToSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L427	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp203, tmp201, SmID,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L415	@,
	add	r10, r5, #73728	@ tmp449, pSmInstArray,
	add	r3, r5, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r10, #192	@ tmp449,
	cmnne	r5, #168	@, pSmInstArray,
	str	r3, [sp, #12]	@ pRawPacketArray, %sfp
	add	r2, r10, #192	@ pStreamSegArray, tmp449,
	str	r2, [sp, #8]	@ pStreamSegArray, %sfp
	moveq	r3, #1	@ tmp210,
	movne	r3, #0	@ tmp210,
	cmp	r1, #0	@ pStreamSeg,
	orreq	r3, r3, #1	@,, tmp216, tmp210
	cmp	r3, #0	@ tmp216,
	bne	.L415	@,
	ldr	r6, [r10, #172]	@ D.36666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Tail
	ldr	r3, [r10, #168]	@ D.36666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	cmp	r6, r3	@ D.36666, D.36666
	beq	.L402	@,
	mov	r9, r3, asl #3	@ tmp447, index,
	mov	r2, r3, asl #6	@ tmp448, index,
	add	lr, r9, r2	@ tmp224, tmp447, tmp448
	mov	r4, #1	@ rawnum,
	add	lr, r5, lr	@ tmp225, pSmInstArray, tmp224
	mov	fp, r9	@ tmp443, tmp447
	mov	ip, r2	@ tmp445, tmp448
	ldr	r7, [lr, #176]	@ TotalSrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	b	.L401	@
.L403:
	add	r4, r4, #1	@ rawnum, rawnum,
	ldr	r8, [r8, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	cmp	r4, #1024	@ rawnum,
	add	r7, r7, r8	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	movls	lr, #0	@ tmp237,
	movhi	lr, #1	@ tmp237,
	cmp	r3, r6	@ index, D.36666
	orreq	lr, lr, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L402	@,
.L401:
	add	lr, fp, ip	@ tmp244, tmp443, tmp445
	add	r3, r3, #1	@ D.36668, index,
	add	lr, r5, lr	@ tmp245, pSmInstArray, tmp244
	ubfx	r3, r3, #0, #10	@ index, D.36668,,
	ldrb	lr, [lr, #220]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	mov	fp, r3, asl #3	@ tmp443, index,
	mov	ip, r3, asl #6	@ tmp445, index,
	cmp	lr, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag,
	add	r8, fp, ip	@ tmp230, tmp443, tmp445
	add	r8, r5, r8	@ tmp231, pSmInstArray, tmp230
	bne	.L403	@,
	str	r0, [sp, #20]	@ SmID, %sfp
	mov	r8, lr	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	ldr	r0, [sp, #8]	@, %sfp
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	str	r2, [sp]	@ tmp448, %sfp
	bl	ResetStreamSegArray	@
	add	r0, r5, #163840	@ tmp251, pSmInstArray,
	ldr	r2, [sp]	@ tmp448, %sfp
	ldr	r3, [r0, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize
	sub	r3, r3, #262144	@ D.36666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize,
	cmp	r3, r7	@ D.36666, TotalSrcLength
	blt	.L424	@,
	ldr	r1, [r5, #56]	@ D.36663, pSmInstArray_20->Config.VidStd
	ldr	r0, [r0, #2264]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufPhyAddr
	sub	r3, r1, #10	@ D.36663, D.36663,
	ldr	fp, [r10, #192]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].pSegBufVirAddr
	bics	r3, r3, #2	@ tmp481, D.36663,
	bne	.L405	@,
	ldr	r3, .L427+4	@ tmp264,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r3, #1	@ D.36666, g_VdmCharacter,
	streqb	r3, [fp]	@ D.36666, *TmpVirAddr_46
	addeq	fp, fp, #1	@ TmpVirAddr, TmpVirAddr,
	ldreq	r1, [r5, #56]	@ D.36663, pSmInstArray_20->Config.VidStd
.L405:
	add	r3, r9, r2	@ tmp272, tmp447, tmp448
	cmp	r1, #12	@ D.36663,
	add	r3, r5, r3	@ tmp273, pSmInstArray, tmp272
	ldr	r10, [r10, #168]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	ldr	r1, [r3, #172]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].VirAddr
	ldr	r3, [r3, #176]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	str	r3, [sp]	@ SrcLength, %sfp
	beq	.L425	@,
.L406:
	str	r0, [r6, #8]	@ TmpPhyAddr, pStreamSeg_26(D)->PhyAddr
	str	r2, [sp, #16]	@ tmp448, %sfp
	str	r1, [sp, #4]	@ SrcVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r2, [sp, #16]	@ tmp448, %sfp
	cmp	r4, #0	@ rawnum,
	mov	r3, #1	@ tmp371,
	add	r9, r9, r2	@ tmp356, tmp447, tmp448
	add	r9, r5, r9	@ tmp357, pSmInstArray, tmp356
	str	r0, [r6]	@ D.36670, pStreamSeg_26(D)->VirAddr
	rsb	r0, r0, fp	@ D.36666, D.36670, TmpVirAddr
	str	r0, [r6, #12]	@ D.36666, pStreamSeg_26(D)->LenInByte
	ldrd	r0, [r9, #184]	@ tmp494, tmp357,
	strd	r0, [r6, #24]	@ tmp494, pStreamSeg,
	ldrd	r0, [r9, #184]	@ tmp495, tmp357,
	strd	r0, [r6, #32]	@ tmp495, pStreamSeg,
	ldrd	r0, [r9, #200]	@ tmp496, tmp357,
	strb	r3, [r6, #5]	@ tmp371, pStreamSeg_26(D)->IsLastSeg
	strd	r0, [r6, #40]	@ tmp496, pStreamSeg,
	ldr	r1, [sp, #4]	@ SrcVirAddr, %sfp
	beq	.L413	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	fp, #0	@, TmpVirAddr,
	beq	.L402	@,
	mov	r8, r10, asl #6	@ tmp446, index,
	mov	ip, r10, asl #3	@ tmp444, index,
	mov	r3, #0	@ i,
	str	r7, [sp, #16]	@ TotalSrcLength, %sfp
	mov	r2, r8	@ tmp446, tmp446
	str	r4, [sp, #4]	@ rawnum, %sfp
	mov	r8, r5	@ pSmInstArray, pSmInstArray
	mov	lr, r1	@ SrcVirAddr, SrcVirAddr
	mov	r5, r3	@ i, i
	ldr	r4, [sp]	@ SrcLength, %sfp
	mov	r7, ip	@ tmp444, tmp444
	mov	r3, r2	@ tmp446, tmp446
	b	.L411	@
.L412:
	cmp	fp, #0	@ TmpVirAddr,
	cmpne	lr, #0	@, SrcVirAddr,
	beq	.L402	@,
.L411:
	mov	r1, lr	@, SrcVirAddr
	mov	r2, r4	@, SrcLength
	mov	r0, fp	@, TmpVirAddr
	str	r3, [sp]	@ tmp446, %sfp
	bl	memcpy	@
	ldr	r3, [sp]	@ tmp446, %sfp
	ldr	r1, [r6, #12]	@ pStreamSeg_26(D)->LenInByte, pStreamSeg_26(D)->LenInByte
	add	r10, r10, #1	@ D.36668, index,
	add	r7, r7, r3	@ tmp394, tmp444, tmp446
	ubfx	r10, r10, #0, #10	@ index, D.36668,,
	add	r7, r8, r7	@ tmp395, pSmInstArray, tmp394
	add	fp, fp, r4	@ TmpVirAddr, TmpVirAddr, tmp2
	add	r4, r1, r4	@ D.36668, pStreamSeg_26(D)->LenInByte, SrcLength
	ldr	r1, [sp, #4]	@ rawnum, %sfp
	ldrb	r0, [r7, #221]	@ zero_extendqisi2	@ D.36667, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_158].is_stream_end_flag
	add	r5, r5, #1	@ i, i,
	mov	r7, r10, asl #3	@ tmp444, index,
	mov	r3, r10, asl #6	@ tmp446, index,
	str	r4, [r6, #12]	@ D.36668, pStreamSeg_26(D)->LenInByte
	add	r2, r7, r3	@ tmp403, tmp444, tmp446
	strb	r0, [r6, #6]	@ D.36667, pStreamSeg_26(D)->IsStreamEnd
	cmp	r5, r1	@ i, rawnum
	ldrd	r0, [r9, #208]	@ tmp498, tmp451,
	add	r2, r8, r2	@ tmp404, pSmInstArray, tmp403
	ldr	lr, [r2, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].VirAddr
	ldr	r4, [r2, #176]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].Length
	strd	r0, [r6, #48]	@ tmp498, pStreamSeg,
	ldr	r2, [r9, #224]	@ D.36668, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispEnableFlag
	str	r2, [r6, #56]	@ D.36668, pStreamSeg_26(D)->DispEnableFlag
	ldr	r2, [r9, #228]	@ D.36668, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispFrameDistance
	str	r2, [r6, #60]	@ D.36668, pStreamSeg_26(D)->DispFrameDistance
	ldr	r2, [r9, #232]	@ D.36668, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ D.36668, pStreamSeg_26(D)->DistanceBeforeFirstFrame
	ldr	r2, [r9, #236]	@ D.36668, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].GopNum
	str	r2, [r6, #68]	@ D.36668, pStreamSeg_26(D)->GopNum
	bne	.L412	@,
	ldr	r7, [sp, #16]	@ TotalSrcLength, %sfp
.L413:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.36664,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L402:
	mvn	r0, #3	@ D.36664,
.L399:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L425:
	ldr	r3, .L427+4	@ tmp285,
	ldr	ip, [sp]	@ SrcLength, %sfp
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	cmp	ip, #0	@ SrcLength,
	moveq	r3, #0	@, tmp292
	andne	r3, r3, #1	@,, tmp292, g_VdmCharacter
	cmp	r3, #0	@ tmp292,
	beq	.L406	@,
	cmp	ip, #2	@ SrcLength,
	bgt	.L426	@,
	cmp	r4, #1	@ rawnum,
	add	r10, r10, #1	@ D.36668, index,
	ubfx	r10, r10, #0, #10	@ index, D.36668,,
	bls	.L402	@,
	mov	r8, r10, asl #6	@ tmp446, index,
	add	r3, r8, r10, lsl #3	@ tmp296, tmp446, index,
	add	r3, r5, r3	@ tmp297, pSmInstArray, tmp296
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	ldr	ip, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].VirAddr
	ldr	r3, [sp]	@ SrcLength, %sfp
	add	r1, r3, r1	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	cmp	r1, #2	@ SrcLength,
	ble	.L408	@,
	add	r3, r10, #1020	@ D.36668, index,
	sub	r1, r1, #3	@ SrcLength, SrcLength,
	add	r3, r3, #3	@ D.36668, D.36668,
	str	r1, [sp]	@ SrcLength, %sfp
	ubfx	r3, r3, #0, #10	@ D.36668, D.36668,,
	sub	r4, r4, #1	@ rawnum, rawnum,
	mov	r1, r3, asl #6	@ tmp311, D.36668,
	add	r3, r1, r3, lsl #3	@ tmp312, tmp311, D.36668,
	add	r3, r5, r3	@ tmp313, pSmInstArray, tmp312
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length
	rsb	r1, r1, #3	@ D.36666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length,
	add	r1, ip, r1	@ SrcVirAddr, SrcVirAddr, D.36666
	b	.L406	@
.L424:
	mov	r2, r7	@, TotalSrcLength
	ldr	r1, .L427+8	@,
	mov	r0, r8	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	bl	dprint_vfmw	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.36664
	beq	.L399	@,
	movw	r2, #2007	@,
	ldr	r1, .L427+12	@,
	mov	r0, r8	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.36664, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	b	.L399	@
.L426:
	sub	r3, ip, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@ SrcVirAddr, SrcVirAddr,
	str	r3, [sp]	@ SrcLength, %sfp
	b	.L406	@
.L415:
	mvn	r0, #0	@ D.36664,
	b	.L399	@
.L408:
	cmp	r4, #2	@ rawnum,
	add	r10, r10, #1	@ D.36668, index,
	ubfx	r10, r10, #0, #10	@ index, D.36668,,
	bls	.L402	@,
	mov	r8, r10, asl #6	@ tmp446, index,
	add	r3, r8, r10, lsl #3	@ tmp320, tmp446, index,
	add	r3, r5, r3	@ tmp321, pSmInstArray, tmp320
	ldr	ip, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	ldr	r3, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].VirAddr
	add	ip, r1, ip	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	cmp	ip, #2	@ SrcLength,
	str	r3, [sp, #4]	@ SrcVirAddr, %sfp
	ble	.L402	@,
	add	r1, r10, #1020	@ D.36668, index,
	sub	r4, r4, #2	@ rawnum, rawnum,
	mov	r3, r1	@ D.36668, D.36668
	add	r1, r1, #3	@ D.36668, D.36668,
	ubfx	lr, r1, #0, #10	@ D.36668, D.36668,,
	add	r3, r3, #2	@ D.36668, D.36668,
	ubfx	r8, r3, #0, #10	@ D.36668, D.36668,,
	sub	r1, ip, #3	@ SrcLength, SrcLength,
	mov	r3, lr, asl #6	@ tmp335, D.36668,
	str	r1, [sp]	@ SrcLength, %sfp
	add	r3, r3, lr, lsl #3	@ tmp336, tmp335, D.36668,
	mov	r1, r8, asl #6	@ tmp346, D.36668,
	add	r1, r1, r8, lsl #3	@ tmp347, tmp346, D.36668,
	add	r3, r5, r3	@ tmp337, pSmInstArray, tmp336
	add	r1, r5, r1	@ tmp348, pSmInstArray, tmp347
	ldr	r3, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length
	ldr	r1, [r1, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length
	rsb	r3, r3, #3	@ D.36666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length,
	rsb	r1, r1, r3	@ D.36666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, D.36666
	ldr	r3, [sp, #4]	@ SrcVirAddr, %sfp
	add	r1, r3, r1	@ SrcVirAddr, SrcVirAddr, D.36666
	b	.L406	@
.L428:
	.align	2
.L427:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	.LC25
	.word	.LC26
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L448	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r3, r0, lsl #2	@ tmp153, tmp151, SmID,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r6, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L440	@,
	add	r3, r6, #73728	@ tmp155, pSmInstArray,
	add	r5, r6, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r3, #192	@ tmp155,
	cmnne	r6, #168	@, pSmInstArray,
	add	r1, r3, #192	@ pStreamSegArray, tmp155,
	beq	.L440	@,
	ldr	r2, [r3, #168]	@ D.36681, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	ldr	r3, [r3, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	cmp	r3, r2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, D.36681
	beq	.L438	@,
	mov	r8, r2, asl #3	@ tmp236, D.36681,
	mov	r4, r2, asl #6	@ tmp237, D.36681,
	mov	r7, r0	@ SmID, SmID
	mov	r0, r1	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	add	ip, r8, r4	@ tmp171, tmp236, tmp237
	add	ip, r6, ip	@ tmp172, pSmInstArray, tmp171
	ldr	r1, [ip, #172]	@ pu32tmp, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].VirAddr
	ldr	lr, [r1]	@ D.36682, *pu32tmp_14
	ldr	r3, [r1, #4]	@ D.36682, MEM[(HI_U32 *)pu32tmp_14 + 4B]
	sub	r2, lr, #32	@ D.36683, D.36682,
	cmp	r2, #1888	@ D.36683,
	bhi	.L432	@,
	sub	r2, r3, #32	@ D.36683, D.36682,
	cmp	r2, #1056	@ D.36683,
	bls	.L446	@,
.L432:
	ldr	r1, .L448+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	r2, r8, r4	@ tmp202, tmp236, tmp237
	add	r2, r6, r2	@ tmp203, pSmInstArray, tmp202
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L447	@,
.L445:
	mov	r0, #0	@ D.36679,
.L430:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L446:
	ldr	r0, [ip, #176]	@ D.36681, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r2, #51712	@ tmp183,
	movt	r2, 47	@ tmp183,
	sub	ip, r0, #1552	@ D.36683, D.36681,
	cmp	ip, r2	@ D.36683, tmp183
	bhi	.L432	@,
	mul	r2, r3, lr	@ D.36681, D.36682, D.36682
	add	ip, r6, #163840	@ tmp194, pSmInstArray,
	ldr	ip, [ip, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize
	sub	ip, ip, #262144	@ D.36681, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize,
	add	r2, r2, r2, lsl #1	@ D.36681, D.36681, D.36681,
	add	r2, r2, r2, lsr #31	@ tmp189, D.36681, D.36681,
	mov	r2, r2, asr #1	@ tmp190, tmp189,
	cmp	r2, ip	@ tmp190, D.36681
	bgt	.L432	@,
	add	r2, r2, #16	@ D.36681, tmp190,
	cmp	r0, r2	@ D.36681, D.36681
	blt	.L432	@,
	ldr	ip, [r1, #8]	@ D.36682, MEM[(HI_U32 *)pu32tmp_14 + 8B]
	movw	r2, #1916	@ tmp208,
	ldr	r10, [r1, #12]	@ D.36682, MEM[(HI_U32 *)pu32tmp_14 + 12B]
	sub	r0, ip, #4	@ D.36683, D.36682,
	cmp	r0, r2	@ D.36683, tmp208
	bhi	.L435	@,
	sub	r0, r10, #4	@ D.36683, D.36682,
	movw	r2, #1084	@ tmp210,
	cmp	r0, r2	@ D.36683, tmp210
	bls	.L436	@,
.L435:
	ldr	r1, .L448+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	r2, r8, r4	@ tmp215, tmp236, tmp237
	add	r2, r6, r2	@ tmp216, pSmInstArray, tmp215
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L445	@,
	movw	r2, #2229	@,
	ldr	r1, .L448+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.36679,
	b	.L430	@
.L447:
	movw	r2, #2214	@,
	ldr	r1, .L448+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L445	@
.L440:
	mvn	r0, #0	@ D.36679,
	b	.L430	@
.L438:
	mvn	r0, #3	@ D.36679,
	b	.L430	@
.L436:
	add	r2, r8, r4	@ tmp224, tmp236, tmp237
	add	r1, r1, #16	@, pu32tmp,
	add	r6, r6, r2	@ tmp225, pSmInstArray, tmp224
	mov	r0, r7	@, SmID
	mov	r2, lr	@, D.36682
	ldrd	r8, [r6, #184]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts, tmp225,
	str	r10, [sp, #8]	@ D.36682,
	str	ip, [sp, #4]	@ D.36682,
	strd	r8, [sp, #16]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts,,
	str	lr, [sp]	@ D.36682,
	bl	DNR_PutYuv	@
	subs	r4, r0, #0	@ Ret,
	bne	.L438	@,
	ldr	r1, [r6, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r0, r5	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, r4	@ D.36679, Ret
	b	.L430	@
.L449:
	.align	2
.L448:
	.word	.LANCHOR0
	.word	.LC27
	.word	.LC28
	.word	.LC26
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	SM_ReadSegStream
	.type	SM_ReadSegStream, %function
SM_ReadSegStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L467	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp139, tmp137, SmID,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L456	@,
	ldr	r3, [r4, #56]	@ D.36693, pSmInstArray_9->Config.VidStd
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r7, r0	@ SmID, SmID
	sub	ip, r3, #4	@ D.36690, D.36693,
	sub	r2, r3, #8	@ D.36690, D.36693,
	cmp	r2, #6	@ D.36690,
	cmphi	ip, #1	@, D.36690,
	bls	.L452	@,
	cmp	r3, #1	@ D.36693,
	beq	.L465	@,
.L453:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r0, #192	@,,
	bl	GetStreamSeg	@
	cmp	r0, #0	@ ret
	bne	.L454	@,
	ldr	r5, .L467+4	@ tmp161,
	ldr	r3, [r5]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	beq	.L455	@,
	ldr	r3, .L467+8	@ tmp163,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, r3	@ SmID, save_seg_chan_num
	beq	.L466	@,
.L455:
	add	r4, r4, #176128	@ tmp173, pSmInstArray,
	mov	r3, #0	@ tmp174,
	mov	r0, r3	@ D.36691, tmp174
	str	r3, [r4, #3988]	@ tmp174, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L465:
	ldr	r3, [r4, #72]	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L453	@,
.L452:
	mov	r1, r6	@, pStreamSeg
	mov	r0, r7	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L453	@,
	ldr	r1, .L467+12	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ ret,
.L454:
	add	r4, r4, #176128	@ tmp176, pSmInstArray,
	ldr	r3, [r4, #3988]	@ pSmInstArray_9->numReadSegFail, pSmInstArray_9->numReadSegFail
	add	r3, r3, #1	@ D.36694, pSmInstArray_9->numReadSegFail,
	str	r3, [r4, #3988]	@ D.36694, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L466:
	ldr	r0, .L467+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r5]	@, vfmw_save_seg_file
	ldr	r1, [r6, #12]	@, pStreamSeg_10(D)->LenInByte
	ldr	r0, [r6]	@, pStreamSeg_10(D)->VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L467+16	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L455	@
.L456:
	mvn	r0, #0	@ D.36691,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L468:
	.align	2
.L467:
	.word	.LANCHOR0
	.word	vfmw_save_seg_file
	.word	save_seg_chan_num
	.word	.LC29
	.word	g_TaskLock
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
	ldr	r3, .L471	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L470	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L470:
	mvn	r0, #0	@,
	bx	lr	@
.L472:
	.align	2
.L471:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ SmID, SmID
	bl	OSAL_GetTimeInMs	@
	ldr	r4, .L486	@ tmp138,
	add	r3, r4, r6, lsl #2	@ tmp123, tmp138, SmID,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrsb	r3, [r3, #3]	@ pSmInstArray_10->InsertNewSegFlag, pSmInstArray_10->InsertNewSegFlag
	mov	r5, r0	@ CurTime,
	cmp	r3, #1	@ pSmInstArray_10->InsertNewSegFlag,
	beq	.L476	@,
.L478:
	mov	r0, #0	@ D.36710,
.L477:
	ldr	r3, [r4, #160]	@ D.36709, LastEventTime
	ldr	r2, .L486	@ tmp128,
	cmp	r5, r3	@ CurTime, D.36709
	movls	r3, #1	@ D.36710,
	strls	r5, [r2, #160]	@ CurTime, LastEventTime
	bls	.L480	@,
	rsb	r3, r3, r5	@ Period, D.36709, CurTime
	cmp	r3, #1	@ Period,
	movls	r3, #0	@ D.36710,
	movhi	r3, #1	@ D.36710,
.L480:
	tst	r3, r0	@ D.36710, D.36710
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, .L486+4	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #160]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L476:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L478	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	clz	r0, r0	@ D.36710,
	mov	r0, r0, lsr #5	@ D.36710, D.36710,
	b	.L477	@
.L487:
	.align	2
.L486:
	.word	.LANCHOR0
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
	ldr	r3, .L495	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r4, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L493	@,
	mov	r5, r1	@ FirstCalc, FirstCalc
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r4, r4, #176128	@ tmp123, pSmInstArray,
	mov	r2, r0	@ CurTime,
	beq	.L490	@,
	mov	r3, #0	@ tmp124,
	str	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	mov	r0, r3	@ D.36713, tmp124
	str	r3, [r4, #3952]	@ tmp124, pSmInstArray_6->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L490:
	ldr	r3, [r4, #3956]	@ D.36714, pSmInstArray_6->LastBlockTime
	cmp	r0, r3	@ CurTime, D.36714
	strls	r5, [r4, #3952]	@ FirstCalc, pSmInstArray_6->BlockTimeInMs
	rsbhi	r0, r3, r0	@ D.36714, D.36714, CurTime
	strls	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	strhi	r0, [r4, #3952]	@ D.36714, pSmInstArray_6->BlockTimeInMs
	movls	r0, r5	@ D.36713, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L493:
	mov	r0, r4	@ D.36713, pSmInstArray
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L496:
	.align	2
.L495:
	.word	.LANCHOR0
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
	ldr	r2, .L500	@ tmp120,
	sub	ip, r1, #1	@ D.36718, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.36718,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.36717,
	streq	r1, [r2, #2412]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L501:
	.align	2
.L500:
	.word	.LANCHOR0
	.fnend
	.size	SetInstMode, .-SetInstMode
	.align	2
	.global	CheckScdStateReg
	.type	CheckScdStateReg, %function
CheckScdStateReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]	@ pSmStateReg_3(D)->ScdRollAddr, pSmStateReg_3(D)->ScdRollAddr
	cmp	r3, #0	@ pSmStateReg_3(D)->ScdRollAddr,
	mvneq	r0, #6	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	CheckScdStateReg, .-CheckScdStateReg
	.align	2
	.global	ScdParseUpMsgInfo
	.type	ScdParseUpMsgInfo, %function
ScdParseUpMsgInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ ParseUpMsgInfo
	beq	.L509	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r0, #12]	@ pSegFilter_6(D)->ModeFlag, pSegFilter_6(D)->ModeFlag
	mul	r3, r3, r2	@ D.36729, UpMsgStepNum, SegNum
	cmp	ip, #1	@ pSegFilter_6(D)->ModeFlag,
	ldrb	ip, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	bfceq	ip, #0, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,,
	orrne	ip, ip, #1	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,
	strb	ip, [r1, #72]	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	mov	ip, #0	@ D.36726,
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrb	lr, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3, asl #2]	@ *_15, *_15
	mov	r3, r3, asl #2	@ D.36729, D.36729,
	add	r3, r3, #8	@ D.36733, D.36729,
	mov	r2, r2, lsr #31	@ D.36730, *_15,
	bfi	lr, r2, #1, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, D.36730,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp162, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3]	@ *_25, *_25
	mov	r2, r2, asr #16	@ D.36727, *_25,
	bfi	lr, r2, #2, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, D.36727,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp169, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader
	ldr	r2, [r2, r3]	@ *_32, *_32
	ubfx	r2, r2, #4, #3	@ tmp168, *_32,,
	bfi	lr, r2, #3, #4	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.StartCodeBitOffset, tmp168,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.StartCodeBitOffset, ParseUpMsgInfo_4(D)->stMp4UpMsg.StartCodeBitOffset
	ldr	r0, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrh	r2, [r1, #72]	@,
	ldr	r3, [r0, r3]	@ *_39, *_39
	mov	r0, ip	@, D.36726
	and	r3, r3, #7	@ tmp174, *_39,
	bfi	r2, r3, #7, #4	@ tmp175, tmp174,,
	strh	r2, [r1, #72]	@ movhi	@ tmp175,
	ldr	pc, [sp], #4	@
.L509:
	mvn	ip, #0	@ D.36726,
	mov	r0, ip	@, D.36726
	bx	lr	@
	.fnend
	.size	ScdParseUpMsgInfo, .-ScdParseUpMsgInfo
	.align	2
	.global	ScdReturnSegFilter
	.type	ScdReturnSegFilter, %function
ScdReturnSegFilter:
	.fnstart
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r7, [r0, #32]	@ SegNum, pSegStreamFilter_15(D)->SegNum
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	mov	r6, r1	@ pTransFormSeg, pTransFormSeg
	mov	r9, #0	@ tmp283,
	ldr	r1, .L555	@,
	mov	r0, #24	@,
	str	r9, [r2]	@ tmp283, *pExtraSrcBack_17(D)
	str	r3, [sp]	@ pSegNum, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [r4, #8]	@ pSegStreamFilter_15(D)->ProtocolType, pSegStreamFilter_15(D)->ProtocolType
	cmp	r3, #2	@ pSegStreamFilter_15(D)->ProtocolType,
	beq	.L513	@,
	cmp	r7, r9	@ SegNum,
	ldrgt	r3, [sp, #48]	@ tmp394, UpMsgStepNum
	movgt	r5, r9	@ i, ivtmp.379
	movgt	r8, r3, asl #2	@ D.36760, tmp394,
	ble	.L517	@,
.L516:
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	mov	lr, r6	@ D.36761, pTransFormSeg
	ldr	ip, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	mov	r2, r5	@, i
	ldr	r1, .L555+4	@,
	mov	r0, #24	@,
	ldr	r3, [r3, r9]	@ *_190, *_190
	and	ip, ip, #-2147483648	@ D.36760, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r3, r3, #-2147483648	@ D.36760, *_190,
	orr	r3, r3, ip	@ D.36760, D.36760, D.36760
	str	r3, [lr, r9]!	@ D.36760, MEM[base: pTransFormSeg_92(D), index: ivtmp.379_243, offset: 0B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r3, r3, r9	@ tmp295, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.379
	add	r9, r9, r8	@ ivtmp.379, ivtmp.379, D.36760
	ldr	r3, [r3, #4]	@ D.36762, *_204
	str	r3, [lr, #4]	@ D.36762, MEM[base: _228, offset: 4B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r5, asl #2]	@, *_209
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	cmp	r5, r7	@ i, SegNum
	bne	.L516	@,
.L517:
	ldr	r3, [sp]	@ pSegNum, %sfp
	mov	r0, #0	@ tmp286,
	str	r0, [r4, #12]	@ tmp286, pSegStreamFilter_15(D)->ModeFlag
	str	r0, [r4, #16]	@ tmp286, pSegStreamFilter_15(D)->LastH263Num
	str	r7, [r3]	@ SegNum, *pSegNum_176(D)
.L549:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L513:
	ldr	r0, [r4, #20]	@, pSegStreamFilter_15(D)->SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L519	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_23 + 1B]
	ldrb	r1, [r0]	@ zero_extendqisi2	@ D.36762, *pTmpVirAddr_23
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_23 + 3B]
	ldrb	r5, [r0, #2]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_23 + 2B]
	mov	r2, r2, asl #16	@ D.36762, D.36762,
	orr	r2, r2, r1, asl #24	@ D.36762, D.36762, D.36762,
	ldr	r0, [r4, #28]	@, pSegStreamFilter_15(D)->SegBufRollAddr
	orr	r3, r2, r3	@ D.36762, D.36762, D.36762
	orr	r5, r3, r5, asl #8	@ D.36762, D.36762, D.36762,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L519	@,
	cmp	r7, #0	@ SegNum,
	mov	r2, r5, lsr #24	@ D.36760, D.36762,
	mov	r3, r5, lsr #16	@ D.36760, D.36762,
	strb	r5, [r0, #3]	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_41 + 3B]
	strb	r2, [r0]	@ D.36760, *pTmpVirAddr_41
	mov	r5, r5, lsr #8	@ D.36760, D.36762,
	strb	r3, [r0, #1]	@ D.36760, MEM[(HI_U8 *)pTmpVirAddr_41 + 1B]
	strb	r5, [r0, #2]	@ D.36760, MEM[(HI_U8 *)pTmpVirAddr_41 + 2B]
	ble	.L520	@,
	ldr	r2, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	ldr	r5, [r2]	@ *_224, *_224
	and	r3, r3, #-2147483648	@ D.36760, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r5, r5, #-2147483648	@ D.36760, *_224,
	orrs	r5, r5, r3	@ TmpPhyAddr, D.36760, D.36760
	beq	.L519	@,
	ldr	r2, [sp, #48]	@ tmp395, UpMsgStepNum
	mov	r3, r6	@ ivtmp.386, pTransFormSeg
	str	r6, [sp, #4]	@ ivtmp.386, %sfp
	add	fp, r3, #4	@ ivtmp.396, ivtmp.386,
	mov	r10, r3	@ ivtmp.394, ivtmp.386
	mov	r8, #4	@ ivtmp.395,
	mov	r6, r2, asl #2	@ D.36760, tmp395,
	mov	r9, #1	@ ivtmp.391,
	b	.L521	@
.L552:
	mov	r3, #1	@ tmp348,
	str	r3, [r4, #12]	@ tmp348, pSegStreamFilter_15(D)->ModeFlag
	mov	r3, #0	@ tmp349,
	str	r3, [r4, #16]	@ tmp349, pSegStreamFilter_15(D)->LastH263Num
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.36762,* ivtmp.395
	str	r3, [r10, #4]	@ D.36762,
.L523:
	cmp	r9, r7	@ ivtmp.391, SegNum
	beq	.L551	@,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r9, r9, #1	@ ivtmp.391, ivtmp.391,
	ldr	r5, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r10, r10, r6	@ ivtmp.394, ivtmp.394, D.36760
	add	r3, r3, r8	@ tmp324, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.395
	add	fp, fp, r6	@ ivtmp.396, ivtmp.396, D.36760
	add	r3, r3, r6	@ tmp325, tmp324, D.36760
	and	r2, r5, #-2147483648	@ D.36760, pSegStreamFilter_15(D)->SegBufPhyAddr,
	add	r8, r8, r6	@ ivtmp.395, ivtmp.395, D.36760
	ldr	r5, [r3, #-4]	@ *_58, *_58
	bic	r5, r5, #-2147483648	@ D.36760, *_58,
	orrs	r5, r5, r2	@ TmpPhyAddr, D.36760, D.36760
	beq	.L519	@,
.L521:
	mov	r0, r5	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L519	@,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_68 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36762, *pTmpVirAddr_68
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_68 + 3B]
	mov	r1, r1, asl #16	@ D.36762, D.36762,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.36762, MEM[(HI_U8 *)pTmpVirAddr_68 + 2B]
	orr	r3, r1, r3, asl #24	@ D.36762, D.36762, D.36762,
	orr	r3, r3, r2	@ D.36762, D.36762, D.36762
	movw	r2, #438	@ tmp397,
	orr	r3, r3, r0, asl #8	@ Data32, D.36762, D.36762,
	cmp	r3, r2	@ Data32, tmp397
	cmpne	r3, #288	@, Data32,
	moveq	r2, #1	@ tmp347,
	movne	r2, #0	@ tmp347,
	beq	.L552	@,
	bic	r3, r3, #1020	@ D.36760, Data32,
	bic	r3, r3, #3	@ D.36760, D.36760,
	cmp	r3, #32768	@ D.36760,
	beq	.L553	@,
.L524:
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.36762,* ivtmp.395
	str	r3, [r10, #4]	@ D.36762,
	b	.L523	@
.L553:
	ldr	r3, [r4, #12]	@ pSegStreamFilter_15(D)->ModeFlag, pSegStreamFilter_15(D)->ModeFlag
	cmp	r3, #1	@ pSegStreamFilter_15(D)->ModeFlag,
	beq	.L554	@,
.L527:
	mov	r3, #2	@ tmp360,
	str	r3, [r4, #12]	@ tmp360, pSegStreamFilter_15(D)->ModeFlag
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.36762,* ivtmp.395
	str	r3, [r10, #4]	@ D.36762,
	b	.L523	@
.L519:
	mvn	r0, #6	@ D.36759,
	b	.L549	@
.L554:
	ldr	r3, [r4, #16]	@ pSegStreamFilter_15(D)->LastH263Num, pSegStreamFilter_15(D)->LastH263Num
	add	r3, r3, #1	@ D.36762, pSegStreamFilter_15(D)->LastH263Num,
	str	r3, [r4, #16]	@ D.36762, pSegStreamFilter_15(D)->LastH263Num
	cmp	r3, #12	@ D.36762,
	ble	.L524	@,
	ldr	r3, .L555+8	@ tmp398,
	ldr	r3, [r3]	@ D.36765, g_event_report
	cmp	r3, #0	@ D.36765,
	beq	.L527	@,
	ldr	r0, .L555+12	@ tmp399,
	mov	r1, #102	@,
	ldr	r0, [r0, #140]	@, s_SmIIS.ThisInstID
	blx	r3	@ D.36765
	b	.L527	@
.L551:
	ldr	r3, [sp]	@ pSegNum, %sfp
	cmp	r9, #0	@ ivtmp.391,
	movgt	r4, #0	@ i,
	ldrgt	r5, [sp, #4]	@ ivtmp.386, %sfp
	str	r9, [r3]	@ ivtmp.391, *pSegNum_176(D)
	ble	.L531	@,
.L530:
	mov	r2, r4	@, i
	ldr	r3, [r5], r6	@, *_181
	ldr	r1, .L555+4	@,
	add	r4, r4, #1	@ i, i,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r4, r9	@ i, ivtmp.391
	bne	.L530	@,
.L531:
	mov	r0, #0	@ D.36759,
	b	.L549	@
.L520:
	ldr	r3, [sp]	@ pSegNum, %sfp
	mov	r0, r9	@ D.36759, tmp283
	str	r9, [r3]	@ tmp283, *pSegNum_176(D)
	b	.L549	@
.L556:
	.align	2
.L555:
	.word	.LC30
	.word	.LC31
	.word	g_event_report
	.word	.LANCHOR0
	.fnend
	.size	ScdReturnSegFilter, .-ScdReturnSegFilter
	.align	2
	.global	CheckSegValid
	.type	CheckSegValid, %function
CheckSegValid:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSegPacket
	beq	.L559	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L561	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L561	@,
	ldr	r3, [r0, #12]	@ pSegPacket_2(D)->LenInByte, pSegPacket_2(D)->LenInByte
	cmp	r3, r1	@ pSegPacket_2(D)->LenInByte, SegFreeBufLen
	mvnhi	r0, #6	@ D.36771,
	movls	r0, #0	@ D.36771,
	bx	lr	@
.L561:
	mvn	r0, #6	@ D.36771,
	bx	lr	@
.L559:
	mvn	r0, #0	@ D.36771,
	bx	lr	@
	.fnend
	.size	CheckSegValid, .-CheckSegValid
	.align	2
	.global	GetSegPts
	.type	GetSegPts, %function
GetSegPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r3	@ pSegPacket, pSegPacket
	add	r3, sp, #40	@ tmp134,,
	mvn	r6, #0	@ tmp126,
	mvn	r7, #0	@,
	mov	lr, #0	@ tmp124,
	mov	r5, r2	@ pLastPts, pLastPts
	add	ip, r4, #32	@ pRawPts, pSegPacket,
	add	r2, r4, #68	@ pGopNum, pSegPacket,
	str	ip, [sp, #28]	@ pRawPts,
	add	ip, r4, #64	@ pDistanceBeforeFirstFrame, pSegPacket,
	str	r2, [sp, #24]	@ pGopNum,
	add	r2, r4, #60	@ pDispFrameDistance, pSegPacket,
	str	ip, [sp, #20]	@ pDistanceBeforeFirstFrame,
	add	ip, r4, #56	@ pDispEnableFlag, pSegPacket,
	str	r2, [sp, #16]	@ pDispFrameDistance,
	add	r2, r4, #48	@ pDisptime, pSegPacket,
	str	ip, [sp, #12]	@ pDispEnableFlag,
	add	ip, r4, #40	@ pUsertag, pSegPacket,
	str	r2, [sp, #8]	@ pDisptime,
	add	r2, r4, #24	@ pPts, pSegPacket,
	stmia	sp, {r2, ip}	@,,
	mvn	ip, #0	@ tmp130,
	str	lr, [r3, #-4]!	@ tmp124, Offset
	add	r2, sp, #32	@,,
	strd	r6, [r4, #24]	@ tmp126, pSegPacket,
	strd	r6, [r4, #40]	@ tmp126, pSegPacket,
	strd	r6, [r4, #32]	@ tmp126, pSegPacket,
	strd	r6, [r4, #48]	@ tmp126, pSegPacket,
	str	ip, [r4, #56]	@ tmp130, MEM[(HI_U32 *)pSegPacket_2(D) + 56B]
	str	ip, [r4, #60]	@ tmp130, MEM[(HI_U32 *)pSegPacket_2(D) + 60B]
	str	ip, [r4, #64]	@ tmp130, MEM[(HI_U32 *)pSegPacket_2(D) + 64B]
	str	ip, [r4, #68]	@ tmp130, MEM[(HI_U32 *)pSegPacket_2(D) + 68B]
	str	lr, [sp, #32]	@ tmp124, Num
	bl	GetRawNumOffsert	@
	ldrd	r0, [r4, #24]	@ D.36777, pSegPacket,
	ldrd	r2, [r5]	@ *pLastPts_25(D), *pLastPts_25(D)
	cmp	r3, r1	@ *pLastPts_25(D), D.36777
	cmpeq	r2, r0	@ *pLastPts_25(D), D.36777
	beq	.L567	@,
	strd	r0, [r5]	@ D.36777, *pLastPts_25(D)
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L567:
	strd	r6, [r4, #24]	@ tmp126, pSegPacket,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	GetSegPts, .-GetSegPts
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L570	@,
	ldr	r3, .L575	@ tmp116,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L571	@,
	add	r2, r3, #163840	@ tmp118, pSmInstArray,
	ldr	r0, [r2, #2412]	@ D.36780, pSmInstArray_4->Mode
	cmp	r0, #0	@ D.36780,
	ldrne	r0, [r3, #84]	@ pSmInstArray_4->Config.DisContinueRawPacketFlag, pSmInstArray_4->Config.DisContinueRawPacketFlag
	subne	r0, r0, #1	@ D.36780, pSmInstArray_4->Config.DisContinueRawPacketFlag,
	clzne	r0, r0	@ D.36780, D.36780
	movne	r0, r0, lsr #5	@ D.36780, D.36780,
	bx	lr	@
.L570:
	mov	r0, #0	@ D.36780,
	bx	lr	@
.L571:
	mov	r0, r3	@ D.36780, pSmInstArray
	bx	lr	@
.L576:
	.align	2
.L575:
	.word	.LANCHOR0
	.fnend
	.size	SM_GetInstanceRawDiscontinue, .-SM_GetInstanceRawDiscontinue
	.align	2
	.global	SM_SetRawDiscontinueFlag
	.type	SM_SetRawDiscontinueFlag, %function
SM_SetRawDiscontinueFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID
	bne	.L581	@,
	ldr	r3, .L585	@ tmp119,
	ldr	ip, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r2, ip	@ tmp123, pSmInstArray
	mov	r2, r2, lsr #5	@ tmp123, tmp123,
	orrs	r3, r2, r1, lsr #31	@, tmp136, tmp123, Flag,
	bne	.L584	@,
	add	r3, ip, #163840	@ tmp130, pSmInstArray,
	mov	r0, #1	@ D.36785,
	ldr	r3, [r3, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	cmp	r3, #0	@ pSmInstArray_5->Mode,
	strne	r1, [ip, #84]	@ Flag, pSmInstArray_5->Config.DisContinueRawPacketFlag
	streq	r3, [ip, #84]	@ pSmInstArray_5->Mode, pSmInstArray_5->Config.DisContinueRawPacketFlag
	bx	lr	@
.L581:
	mov	r0, #0	@ D.36785,
	bx	lr	@
.L584:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, r1	@ Flag, Flag
	mov	r4, r0	@ InstID, InstID
	str	ip, [sp]	@ pSmInstArray,
	movw	r2, #3708	@,
	ldr	r1, .L585+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.36785, InstID
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L586:
	.align	2
.L585:
	.word	.LANCHOR0
	.word	.LC32
	.fnend
	.size	SM_SetRawDiscontinueFlag, .-SM_SetRawDiscontinueFlag
	.align	2
	.global	SM_GetInstanceStreamEmptyFlag
	.type	SM_GetInstanceStreamEmptyFlag, %function
SM_GetInstanceStreamEmptyFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ InstID, InstID
	beq	.L599	@,
	mov	r0, #0	@ D.36791,
	bx	lr	@
.L599:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r3	@ InstID, InstID
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	moveq	r0, #0	@ D.36791,
	beq	.L589	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.36793, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.36793,
	movlt	r0, #1	@ D.36791,
	blt	.L589	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	movgt	r0, r4	@ D.36791, InstID
	bgt	.L589	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.36791,
	movle	r0, #1	@ D.36791,
.L589:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	SM_GetInstanceStreamEmptyFlag, .-SM_GetInstanceStreamEmptyFlag
	.align	2
	.global	ReadRawStreamData
	.type	ReadRawStreamData, %function
ReadRawStreamData:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r8, r0, #28	@ tmp160, InstID,
	ldr	r5, .L623	@ tmp161,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ InstID, InstID
	mov	r10, r1	@ pRawPacket, pRawPacket
	add	r9, r5, r8, lsl #2	@ tmp127, tmp161, tmp160,
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp162,,
	ldr	r4, [r9, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L621	@,
	mov	r0, r7	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r6, r0, #0	@ pStreamIntf,
	beq	.L622	@,
	add	r0, sp, #4	@ tmp163,,
	mov	r2, #12	@,
	mov	r1, r6	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r6, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L604	@,
	ldr	r0, .L623+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	mov	r1, r10	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r6, r0	@ ret,
	ldr	r0, .L623+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ret,
	beq	.L605	@,
.L604:
	add	r5, r5, r8, lsl #2	@ tmp157, tmp161, tmp160,
	ldr	r3, [r5, #16]	@ tmp159, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp159,
	beq	.L606	@,
.L621:
	mvn	r0, #6	@ D.36797,
.L618:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L605:
	ldr	r3, [r9, #16]	@ tmp154, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp154,
	beq	.L606	@,
	add	r4, r4, #73728	@ tmp143, pSmInstArray,
	ldr	r2, [r10, #8]	@ pRawPacket_19(D)->Length, pRawPacket_19(D)->Length
	mov	r0, r6	@ D.36797, ret
	ldr	r3, [r4, #188]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.36799, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_19(D)->Length
	str	r3, [r4, #188]	@ D.36799, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L622:
	mov	r2, r7	@, InstID
	ldr	r1, .L623+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36797,
	b	.L618	@
.L606:
	mov	r3, r7	@, InstID
	movw	r2, #4084	@,
	ldr	r1, .L623+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L621	@
.L624:
	.align	2
.L623:
	.word	.LANCHOR0
	.word	g_TaskLock
	.word	.LC33
	.word	.LC34
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.global	__aeabi_uidiv
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #72
	sub	sp, sp, #72	@,,
	ldr	r7, .L708	@ tmp369,
	mov	r6, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r7, r0, lsl #2	@ tmp201, tmp369, InstID,
	mov	r0, sp	@,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L625	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_17->Config.VidStd,
	beq	.L625	@,
	ldr	r3, [r4, #84]	@ D.36809, pSmInstArray_17->Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.36809,
	beq	.L625	@,
	cmp	r3, #2	@ D.36809,
	beq	.L698	@,
.L627:
	add	r8, r4, #73728	@ D.36816, pSmInstArray,
	add	r8, r8, #192	@ D.36816, D.36816,
.L639:
	ldr	r3, [r4, #92]	@ pSmInstArray_17->Config.ScdLowBufEnable, pSmInstArray_17->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_17->Config.ScdLowBufEnable,
	beq	.L644	@,
	cmp	r8, #0	@ D.36816,
	beq	.L699	@,
.L643:
	mov	r0, r6	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L625	@,
.L644:
	cmp	r6, #0	@ InstID,
	bne	.L641	@,
	ldr	r3, [r7, #128]	@ D.36817, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36817,
	beq	.L641	@,
	add	r2, r3, #73728	@ tmp280, D.36817,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_87 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_87 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_87 + 168B].History, MEM[(struct RAW_ARRAY_S *)_87 + 168B].History
	add	r3, r3, #1	@ D.36809, MEM[(struct RAW_ARRAY_S *)_87 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp284, D.36809,
	mov	r2, r2, lsr #22	@ tmp285, tmp284,
	add	r3, r3, r2	@ tmp286, D.36809, tmp285
	ubfx	r3, r3, #0, #10	@ tmp287, tmp286,,
	rsb	r3, r2, r3	@ D.36809, tmp285, tmp287
	cmp	r3, r1	@ D.36809, MEM[(struct RAW_ARRAY_S *)_87 + 168B].History
	beq	.L641	@,
	mov	r1, sp	@,
	mov	r0, r6	@, InstID
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L625	@,
	ldr	r9, [r4, #80]	@ D.36810, pSmInstArray_17->Config.LastRawDisContinueCount
	cmn	r9, #1	@ D.36810,
	beq	.L646	@,
	ldr	r10, [sp, #48]	@ D.36810, RawPacket.discontinue_count
	cmp	r9, r10	@ D.36810, D.36810
	beq	.L648	@,
	ldr	r5, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	bic	r5, r5, #2	@ D.36808, pSmInstArray_17->Config.VidStd,
	cmp	r5, #1	@ D.36808,
	beq	.L700	@,
.L648:
	add	r5, r4, #176128	@ tmp304, pSmInstArray,
	ldr	r2, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.36809, pSmInstArray_17->TotalRawSize, RawPacket.Length
	str	r3, [r5, #3976]	@ D.36809, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #3980]	@ D.36810, pSmInstArray_17->LastStatTime
	cmp	r1, #0	@ D.36810,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L650	@,
	rsb	r1, r1, r0	@ TimePeriod, D.36810, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L650	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp325,
	mov	r2, #0	@ tmp329,
	str	r9, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp329, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.36810, tmp325,
	mov	r0, r0, lsr #10	@ D.36810, D.36810,
	str	r0, [r5, #3984]	@ D.36810, pSmInstArray_17->BitRate
.L650:
	ldrd	r2, [sp, #16]	@,,
	mov	r0, #29	@,
	ldr	r1, .L708+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #8]	@, RawPacket.Length
	ldr	r2, [sp]	@, RawPacket.PhyAddr
	mov	r0, #26	@,
	ldr	r1, .L708+8	@,
	bl	dprint_vfmw	@
	ldrd	r2, [sp, #16]	@ RawPacket.Pts,,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp337,
	cmp	r3, r1	@ RawPacket.Pts,
	cmpeq	r2, r0	@ RawPacket.Pts, tmp337
	beq	.L701	@,
.L651:
	mov	r1, sp	@,
	mov	r0, #0	@,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L652	@,
	mov	r3, #1	@ tmp341,
	strb	r3, [r4, #4]	@ tmp341, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L702	@,
.L654:
	ldr	r3, .L708+12	@ tmp349,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r3, #0	@ save_str_chan_num,
	bne	.L639	@,
	ldr	r5, .L708+16	@ tmp370,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L639	@,
	ldr	r9, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L708+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r9, #4	@ D.36810, eStd,
	cmp	r3, #1	@ D.36810,
	bls	.L657	@,
	cmp	r9, #17	@ eStd,
	bne	.L703	@,
.L657:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, sp, #8	@,,
	bl	klib_fwrite	@
.L658:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldmib	sp, {r0, r1}	@,,
	bl	klib_fwrite	@
	ldr	r0, .L708+20	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L639	@
.L641:
	mov	r2, r6	@, InstID
	ldr	r1, .L708+24	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L625:
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L646:
	ldr	r3, [sp, #48]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r3, [r4, #80]	@ RawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L648	@
.L702:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L708+28	@ tmp346,
	ldr	r3, [r7, #164]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, .L708	@ tmp343,
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36810, last_rec_pos_time, ThisTime
	cmp	r3, r2	@ D.36810, g_TraceBsPeriod
	strhi	r0, [r1, #164]	@ ThisTime, last_rec_pos_time
	b	.L654	@
.L701:
	mvn	r2, #0	@ tmp339,
	mvn	r3, #0	@,
	strd	r2, [sp, #16]	@ tmp339,,
	b	.L651	@
.L699:
	ldr	r1, .L708+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L643	@
.L703:
	sub	r3, r9, #8	@ D.36810, eStd,
	cmp	r3, #6	@ D.36810,
	bls	.L657	@,
	cmp	r9, #1	@ eStd,
	bne	.L658	@,
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L657	@,
	b	.L658	@
.L698:
	add	r5, r4, #176128	@ tmp206, pSmInstArray,
	ldr	r2, [r4, #104]	@ pSmInstArray_17->Config.DisContinueRawPacket.Length, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.36809, pSmInstArray_17->TotalRawSize, pSmInstArray_17->Config.DisContinueRawPacket.Length
	str	r3, [r5, #3976]	@ D.36809, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, #3980]	@ D.36810, pSmInstArray_17->LastStatTime
	cmp	r3, #0	@ D.36810,
	mov	r8, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L629	@,
	rsb	r1, r3, r0	@ TimePeriod, D.36810, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L629	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp227,
	mov	r2, #0	@ tmp231,
	str	r8, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp231, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.36810, tmp227,
	mov	r3, r0, lsr #10	@ D.36810, D.36810,
	str	r3, [r5, #3984]	@ D.36810, pSmInstArray_17->BitRate
.L629:
	ldrd	r2, [r4, #112]	@, pSmInstArray,
	mov	r0, #29	@,
	ldr	r1, .L708+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r2, [r4, #96]	@, pSmInstArray_17->Config.DisContinueRawPacket.PhyAddr
	mov	r0, #26	@,
	ldr	r1, .L708+8	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #112]	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, pSmInstArray,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp239,
	cmp	r3, r1	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts,
	cmpeq	r2, r0	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, tmp239
	beq	.L704	@,
.L630:
	add	r1, r4, #96	@, pSmInstArray,
	mov	r0, r6	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L652	@,
	mov	r3, #1	@ tmp244,
	strb	r3, [r4, #4]	@ tmp244, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L705	@,
.L634:
	ldr	r3, .L708+12	@ tmp256,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r6, r3	@ InstID, save_str_chan_num
	beq	.L706	@,
.L636:
	ldr	r3, [r4, #144]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count
	mov	r2, #0	@ tmp273,
	str	r2, [r4, #84]	@ tmp273, pSmInstArray_17->Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L627	@
.L652:
	ldr	r1, .L708+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L700:
	mov	r1, sp	@,
	mov	r2, #72	@,
	add	r0, r4, #96	@, pSmInstArray,
	bl	memcpy	@
	str	r5, [r4, #84]	@ D.36808, pSmInstArray_17->Config.DisContinueRawPacketFlag
	mov	r3, r10	@, D.36810
	mov	r2, r9	@, D.36810
	mov	r0, r5	@, D.36808
	ldr	r1, .L708+40	@,
	bl	dprint_vfmw	@
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L704:
	mvn	r2, #0	@ tmp241,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp241, pSmInstArray,
	b	.L630	@
.L705:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, r6, lsl #2	@ tmp247, tmp369, InstID,
	ldr	r1, .L708+28	@ tmp251,
	ldr	r3, [r2, #164]	@ tmp250, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36810, tmp250, ThisTime
	cmp	r3, r1	@ D.36810, g_TraceBsPeriod
	strhi	r0, [r2, #164]	@ ThisTime, last_rec_pos_time
	b	.L634	@
.L706:
	ldr	r5, .L708+16	@ tmp370,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L636	@,
	ldr	r8, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L708+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r8, #4	@ D.36810, eStd,
	cmp	r3, #1	@ D.36810,
	bls	.L637	@,
	cmp	r8, #17	@ eStd,
	beq	.L637	@,
	sub	r3, r8, #8	@ D.36810, eStd,
	cmp	r3, #6	@ D.36810,
	bls	.L637	@,
	cmp	r8, #1	@ eStd,
	beq	.L707	@,
.L638:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldr	r1, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r0, [r4, #100]	@, pSmInstArray_17->Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L708+20	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L636	@
.L707:
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L638	@,
.L637:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, r4, #104	@, pSmInstArray,
	bl	klib_fwrite	@
	b	.L638	@
.L709:
	.align	2
.L708:
	.word	.LANCHOR0
	.word	.LC35
	.word	.LC36
	.word	save_str_chan_num
	.word	vfmw_save_str_file
	.word	g_TaskLock
	.word	.LC40
	.word	g_TraceBsPeriod
	.word	.LC38
	.word	.LC37
	.word	.LC39
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
	beq	.L721	@,
	mov	r1, r4	@, pStreamIntf
	add	r0, sp, #4	@ tmp154,,
	mov	r2, #12	@,
	ldr	r5, .L724	@ tmp152,
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	add	r6, r7, #28	@ tmp151, InstID,
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	mvneq	r4, #6	@ ret,
	beq	.L713	@,
	add	r3, r5, r6, lsl #2	@ tmp134, tmp152, tmp151,
	ldr	r3, [r3, #16]	@ tmp136, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #92]	@ _16->Config.ScdLowBufEnable, _16->Config.ScdLowBufEnable
	cmp	r3, #0	@ _16->Config.ScdLowBufEnable,
	bne	.L722	@,
	ldr	r0, .L724+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L724+4	@,
	bl	OSAL_SpinLockIRQ	@
.L715:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L713:
	add	r5, r5, r6, lsl #2	@ tmp146, tmp152, tmp151,
	ldr	r0, [r5, #16]	@ tmp148, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp148,
	movne	r0, r4	@ D.36829, ret
	beq	.L723	@,
.L712:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L722:
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L715	@
.L721:
	mov	r2, r7	@, InstID
	mov	r0, r4	@, pStreamIntf
	ldr	r1, .L724+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36829,
	b	.L712	@
.L723:
	mov	r3, r7	@, InstID
	movw	r2, #4134	@,
	ldr	r1, .L724+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.36829,
	b	.L712	@
.L725:
	.align	2
.L724:
	.word	.LANCHOR0
	.word	g_TaskLock
	.word	.LC41
	.word	.LC34
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
	bne	.L742	@,
	ldr	r3, .L744	@ tmp131,
	ldr	r7, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r7, #0	@ pSmInstArray,
	beq	.L738	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L743	@,
.L729:
	adds	r8, r7, #168	@ tmp170, pSmInstArray,
	beq	.L738	@,
	add	r9, r7, #73728	@ tmp171, pSmInstArray,
	ldr	r6, [r9, #168]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].Head
	ldr	r4, [r9, #176]	@ D.36841, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	cmp	r6, r4	@ RawHead, D.36841
	addlt	r6, r6, #1024	@ D.36842, RawHead,
	rsb	r6, r4, r6	@ DelNum, D.36841, D.36842
	cmp	r6, #0	@ DelNum,
	beq	.L738	@,
	mov	r10, #0	@ i,
.L733:
	mov	r5, r4, asl #6	@ tmp143, j,
	ldr	r1, .L744+4	@,
	add	r5, r5, r4, lsl #3	@ tmp144, tmp143, j,
	mov	r0, #26	@,
	add	r2, r7, r5	@ tmp145, pSmInstArray, tmp144
	add	r10, r10, #1	@ i, i,
	add	r4, r4, #1	@ D.36844, j,
	ldr	r3, [r2, #176]	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].RawPacket[j_39].Length
	ubfx	r4, r4, #0, #10	@ j, D.36844,,
	ldr	r2, [r2, #168]	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].RawPacket[j_39].PhyAddr
	bl	dprint_vfmw	@
	add	r1, r8, r5	@, tmp170, tmp144
	mov	r0, #0	@,
	bl	ReleaseRawStreamData	@
	cmp	r10, r6	@ i, DelNum
	bne	.L733	@,
	ldr	r4, [r9, #176]	@ D.36841, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	add	r4, r10, r4	@ D.36842, i, D.36841
	cmp	r4, #1024	@ D.36842,
	strlt	r4, [r9, #176]	@ D.36842, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	subge	r4, r4, #1024	@ D.36842, D.36842,
	strge	r4, [r9, #176]	@ D.36842, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	movlt	r0, #0	@ D.36841,
	movge	r0, #0	@ D.36841,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L743:
	add	r3, r7, #163840	@ tmp133, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_10->Mode, pSmInstArray_10->Mode
	cmp	r3, #0	@ pSmInstArray_10->Mode,
	bne	.L729	@,
.L738:
	mvn	r0, #0	@ D.36841,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L742:
	mov	r2, r0	@, SmID
	ldr	r1, .L744+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36841,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L745:
	.align	2
.L744:
	.word	.LANCHOR0
	.word	.LC12
	.word	.LC42
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L856	@ tmp241,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp243, tmp241, ChanID,
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r10, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r10, #0	@ pSmInstArray,
	beq	.L749	@,
	add	fp, r10, #73728	@ tmp691, pSmInstArray,
	adds	r7, fp, #192	@ pStreamSegArray, tmp691,
	beq	.L749	@,
	ldrd	r2, [r1]	@ pts, *pArgs_35(D)
	add	r5, r10, #163840	@ tmp692, pSmInstArray,
	ldrd	r8, [r1, #16]	@ RawNum, pArgs,
	ldr	r4, [r5, #2248]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	strd	r2, [sp, #8]	@ pts,,
	ldrd	r2, [r1, #8]	@ gap, pArgs,
	ldr	ip, [r5, #2252]	@ D.36852, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	strd	r8, [sp, #24]	@ RawNum,,
	movw	r9, #36409	@ tmp704,
	strd	r2, [sp, #48]	@ gap,,
	movt	r9, 14563	@ tmp704,
	ldr	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	str	r1, [sp, #32]	@ pArgs, %sfp
	cmp	r3, #1	@ PushRawOver,
	str	r0, [sp, #20]	@ ChanID, %sfp
	str	r3, [sp, #40]	@ PushRawOver, %sfp
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r3, #3	@ tmp250,
	str	r10, [sp, #36]	@ pSmInstArray, %sfp
	streq	r3, [r5, #2304]	@ tmp250, pSmInstArray_33->SmPushRaw.PushRawOver
.L751:
	mov	r6, r4, asl #4	@ tmp689, i,
	mov	r8, r4, asl #6	@ tmp690, i,
	cmp	r4, ip	@ i, D.36852
	add	r3, r6, r8	@ tmp325, tmp689, tmp690
	mov	r1, r4	@, i
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp326, tmp691, tmp325
	beq	.L840	@,
	ldrsb	r2, [r3, #204]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState
	cmp	r2, #1	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState,
	bne	.L755	@,
	ldrd	r2, [r3, #232]	@ D.36853, tmp326,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp766,
	cmp	r3, r1	@ D.36853,
	cmpeq	r2, r0	@ D.36853, tmp766
	addeq	r1, r4, #1	@ D.36857, i,
	beq	.L830	@,
	ldrd	r0, [sp, #8]	@ pts,,
	add	lr, r4, #1	@ D.36857, i,
	cmp	r1, r3	@ pts, D.36853
	mov	r10, lr, asr #31	@ tmp353, D.36857,
	cmpeq	r0, r2	@ pts, D.36853
	smull	r0, r1, lr, r9	@ tmp350, D.36857, tmp704
	bls	.L758	@,
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	rsb	r4, r10, r1, asr #8	@ i, tmp353,,
	mov	r3, r4, asl #10	@ tmp356, i,
	add	r4, r3, r4, lsl #7	@ tmp357, tmp356, i,
	rsb	r4, r4, lr	@ i, tmp357, D.36857
	b	.L751	@
.L755:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r5, #2252]	@ D.36852, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	add	r1, r4, #1	@ D.36857, i,
.L830:
	smull	r2, r3, r1, r9	@ tmp505, D.36857, tmp704
	mov	r4, r1, asr #31	@ tmp508, D.36857,
	rsb	r4, r4, r3, asr #8	@ i, tmp508,,
	mov	r3, r4, asl #10	@ tmp511, i,
	add	r4, r3, r4, lsl #7	@ tmp512, tmp511, i,
	rsb	r4, r4, r1	@ i, tmp512, D.36857
	b	.L751	@
.L758:
	beq	.L841	@,
	bcs	.L751	@,
	ldr	r0, [r5, #2256]	@ D.36852, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp772,
	mov	r3, r0, asl #6	@ tmp426, D.36852,
	add	r3, r3, r0, lsl #4	@ tmp427, tmp426, D.36852,
	add	r3, fp, r3	@ tmp428, tmp691, tmp427
	ldrd	r2, [r3, #232]	@ D.36858, tmp428,
	cmp	r3, r9	@ D.36858,
	cmpeq	r2, r8	@ D.36858, tmp772
	streq	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r0, r4	@ D.36852, i
	beq	.L763	@,
	ldrd	r8, [sp, #8]	@ pts,,
	cmp	r9, r3	@ pts, D.36858
	cmpeq	r8, r2	@ pts, D.36858
	bhi	.L842	@,
.L763:
	ldr	r6, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r0, r6	@ D.36852, j
	beq	.L764	@,
	movw	r4, #36409	@ tmp703,
	mov	r8, #2	@ tmp702,
	movt	r4, 14563	@ tmp703,
.L765:
	mov	r3, r6, asl #6	@ tmp448, j,
	mov	r1, r6	@, j
	add	r3, r3, r6, lsl #4	@ tmp449, tmp448, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp450, tmp691, tmp449
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte
	strb	r8, [r3, #204]	@ tmp702, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].SegState
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36856, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36857, D.36856
	str	r2, [r5, #2284]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36857, D.36857
	str	r3, [r5, #2288]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r2, r6, #1	@ D.36857, j,
	ldr	ip, [r5, #2256]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	smull	r0, r1, r2, r4	@ tmp484, D.36857, tmp703
	mov	r6, r2, asr #31	@ tmp487, D.36857,
	rsb	r6, r6, r1, asr #8	@ j, tmp487,,
	mov	r3, r6, asl #10	@ tmp490, j,
	add	r6, r3, r6, lsl #7	@ tmp491, tmp490, j,
	rsb	r6, r6, r2	@ j, tmp491, D.36857
	cmp	ip, r6	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, j
	bne	.L765	@,
.L764:
	mov	r3, r6, asl #6	@ tmp501, j,
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	add	r6, r3, r6, lsl #4	@ tmp502, tmp501, j,
	mov	r0, #0	@ D.36852,
	add	fp, fp, r6	@ tmp503, tmp691, tmp502
	ldrd	r2, [fp, #232]	@ D.36858, tmp503,
	strd	r2, [r1]	@ D.36858, *pArgs_35(D)
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L840:
	ldr	r8, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	ldr	r10, [sp, #36]	@ pSmInstArray, %sfp
	cmp	r8, r4	@ j, i
	beq	.L753	@,
	movw	r4, #36409	@ tmp699,
	mov	r6, #2	@ tmp698,
	movt	r4, 14563	@ tmp699,
.L754:
	mov	r3, r8, asl #6	@ tmp271, j,
	mov	r1, r8	@, j
	add	r3, r3, r8, lsl #4	@ tmp272, tmp271, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp273, tmp691, tmp272
	strb	r6, [r3, #204]	@ tmp698, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36856, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36857, D.36856
	str	r2, [r5, #2284]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36857, D.36857
	str	r3, [r5, #2288]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r8, #1	@ D.36857, j,
	ldr	r0, [r5, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	smull	r2, r3, r1, r4	@ tmp307, D.36857, tmp699
	mov	r8, r1, asr #31	@ tmp310, D.36857,
	rsb	r8, r8, r3, asr #8	@ j, tmp310,,
	mov	r3, r8, asl #10	@ tmp313, j,
	add	r8, r3, r8, lsl #7	@ tmp314, tmp313, j,
	rsb	r8, r8, r1	@ j, tmp314, D.36857
	cmp	r0, r8	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, j
	bne	.L754	@,
.L753:
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	adds	r3, r10, #168	@ pRawPacketArray, pSmInstArray,
	str	r3, [sp, #44]	@ pRawPacketArray, %sfp
	beq	.L749	@,
	ldr	r9, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r8, [fp, #172]	@ D.36857, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	cmp	r9, r8	@ i, D.36857
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	addgt	r3, r8, #1024	@ D.36857, D.36857,
	rsble	r3, r9, r8	@ D.36852, i, D.36857
	rsbgt	r3, r9, r3	@ D.36852, i, D.36857
	cmp	r9, r8	@ i, D.36857
	str	r3, [sp, #56]	@ D.36852, %sfp
	beq	.L831	@,
	str	r5, [sp, #60]	@ tmp692, %sfp
	mvn	r6, #0	@ tmp697,
	mvn	r7, #0	@,
	mov	ip, r9	@ i, i
	str	r9, [sp, #36]	@ i, %sfp
	ldrd	r4, [sp, #8]	@ pts,,
	b	.L770	@
.L845:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r9, lsr #22	@ tmp544, tmp543,
	add	r3, lr, ip	@ tmp545, D.36857, tmp544
	ubfx	r3, r3, #0, #10	@ tmp546, tmp545,,
	rsb	ip, ip, r3	@ i, tmp544, tmp546
.L775:
	cmp	r8, ip	@ D.36857, i
	beq	.L843	@,
.L770:
	mov	r3, ip, asl #6	@ tmp531, i,
	mvn	r0, #0	@ tmp535,
	add	r3, r3, ip, lsl #3	@ tmp532, tmp531, i,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp533, pSmInstArray, tmp532
	ldrd	r2, [r3, #184]	@ D.36858, tmp533,
	cmp	r3, r7	@ D.36858,
	cmpeq	r2, r6	@ D.36858, tmp697
	beq	.L844	@,
	cmp	r5, r3	@ pts, D.36858
	add	lr, ip, #1	@ D.36857, i,
	cmpeq	r4, r2	@ pts, D.36858
	mov	r9, lr, asr #31	@ tmp543, D.36857,
	bhi	.L845	@,
	beq	.L846	@,
	bcs	.L775	@,
	ldr	lr, [fp, #176]	@ D.36857, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r9, [sp, #36]	@ i, %sfp
	strd	r2, [sp, #24]	@ D.36858,,
	mov	r4, lr, asl #6	@ tmp575, D.36857,
	ldr	r5, [sp, #60]	@ tmp692, %sfp
	add	r4, r4, lr, lsl #3	@ tmp576, tmp575, D.36857,
	add	r4, r10, r4	@ tmp577, pSmInstArray, tmp576
	ldrd	r6, [r4, #184]	@ D.36858, tmp577,
	cmp	r7, r1	@ D.36858,
	cmpeq	r6, r0	@ D.36858, tmp535
	beq	.L847	@,
	ldrd	r0, [sp, #8]	@ pts,,
	cmp	r1, r7	@ pts, D.36858
	cmpeq	r0, r6	@ pts, D.36858
	bls	.L783	@,
	subs	r0, r0, r6	@ D.36858, D.36858, D.36858
	ldrd	r2, [sp, #48]	@ gap,,
	sbc	r1, r1, r7	@ D.36858, D.36858, D.36858
	cmp	r3, r1	@ gap, D.36858
	cmpeq	r2, r0	@ gap, D.36858
	bcc	.L848	@,
.L783:
	cmp	r9, lr	@ i, D.36857
	addgt	lr, lr, #1024	@ D.36857, D.36857,
	rsb	r1, r9, lr	@ DelNum, i, D.36857
	cmp	r1, #0	@ DelNum,
	beq	.L786	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp595,
	movne	r4, #0	@ tmp595,
	beq	.L786	@,
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.36858, *pArgs_35(D)
.L839:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #44]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, r4	@, tmp595
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.36852, tmp595
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L844:
	add	r3, ip, #1	@ D.36857, i,
	mov	ip, r3, asr #31	@ tmp536, D.36857,
	mov	ip, ip, lsr #22	@ tmp537, tmp536,
	add	r3, r3, ip	@ tmp538, D.36857, tmp537
	ubfx	r3, r3, #0, #10	@ tmp539, tmp538,,
	rsb	ip, ip, r3	@ i, tmp537, tmp539
	cmp	r8, ip	@ D.36857, i
	bne	.L770	@,
.L843:
	ldr	r9, [sp, #36]	@ i, %sfp
	cmp	r9, r8	@ i, D.36857
	addgt	r8, r8, #1024	@ D.36857, D.36857,
.L831:
	rsb	r1, r9, r8	@ DelNum, i, D.36857
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	cmp	r1, #0	@ DelNum,
	bne	.L849	@,
.L773:
	ldr	r2, [sp, #56]	@ RawNumInVfmw, %sfp
	ldrd	r0, [sp, #24]	@ RawNum,,
	mov	r3, r2, asr #31	@ RawNumInVfmw, RawNumInVfmw,
	cmp	r1, r3	@ RawNum, RawNumInVfmw
	cmpeq	r0, r2	@ RawNum, RawNumInVfmw
	bls	.L850	@,
	ldrd	r0, [sp, #24]	@ RawNumToSeek,,
	subs	r0, r0, r2	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	sbc	r1, r1, r3	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	mov	r2, r0	@ RawNumToSeek, RawNumToSeek
	movw	r0, #1023	@ tmp610,
	mov	r3, r1	@ RawNumToSeek, RawNumToSeek
	and	r0, r0, r2	@ D.36858, tmp610, RawNumToSeek
	mov	r1, #0	@,
	and	r1, r1, r3	@ D.36858,, RawNumToSeek
	orrs	r1, r0, r1	@ tmp760, D.36858
	mov	r2, r2, lsr #10	@ D.36858, RawNumToSeek,
	orrne	r2, r2, r3, asl #22	@ D.36858, D.36858, RawNumToSeek,
	orreq	r3, r2, r3, asl #22	@ SeekTime, D.36858, RawNumToSeek,
	addne	r3, r2, #1	@ SeekTime, D.36858,
	add	r3, r3, #1	@ D.36857, SeekTime,
	str	r3, [sp, #40]	@ D.36857, %sfp
	cmp	r3, #0	@ D.36857,
	ble	.L811	@,
	ldr	r4, [sp, #20]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r9, #0	@ j,
	mvn	r5, #0	@,
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	FillRawData	@
	str	r9, [sp, #36]	@ j, %sfp
	ldrd	r8, [sp, #8]	@ pts,,
	mvn	r4, #0	@ tmp694,
.L812:
	ldr	r3, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	lr, [fp, #172]	@ D.36852, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	mov	ip, r3	@ i, i
	str	r3, [sp, #24]	@ i, %sfp
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L792:
	mov	r3, ip, asl #6	@ tmp631, i,
	cmp	ip, lr	@ i, D.36852
	add	r3, r3, ip, lsl #3	@ tmp632, tmp631, i,
	mvn	r0, #0	@ tmp635,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp633, pSmInstArray, tmp632
	beq	.L851	@,
	ldrd	r6, [r3, #184]	@ D.36858, tmp633,
	add	r3, ip, #1	@ D.36857, i,
	cmp	r7, r5	@ D.36858,
	cmpeq	r6, r4	@ D.36858, tmp694
	beq	.L852	@,
	cmp	r9, r7	@ pts, D.36858
	mov	r2, r3, asr #31	@ tmp643, D.36857,
	cmpeq	r8, r6	@ pts, D.36858
	bls	.L800	@,
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r2, lsr #22	@ tmp644, tmp643,
	add	r3, r3, ip	@ tmp645, D.36857, tmp644
	ubfx	r3, r3, #0, #10	@ tmp646, tmp645,,
	rsb	ip, ip, r3	@ i, tmp644, tmp646
	b	.L792	@
.L800:
	beq	.L853	@,
	bcs	.L792	@,
	ldr	lr, [fp, #176]	@ D.36852, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r2, r6	@ D.36858, D.36858
	ldr	r8, [sp, #24]	@ i, %sfp
	mov	r3, r7	@ D.36858, D.36858
	mov	r4, lr, asl #6	@ tmp663, D.36852,
	add	r4, r4, lr, lsl #3	@ tmp664, tmp663, D.36852,
	add	r4, r10, r4	@ tmp665, pSmInstArray, tmp664
	ldrd	r4, [r4, #184]	@ D.36858, tmp665,
	cmp	r5, r1	@ D.36858,
	cmpeq	r4, r0	@ D.36858, tmp635
	beq	.L854	@,
	ldrd	r0, [sp, #8]	@ pts,,
	cmp	r1, r5	@ pts, D.36858
	cmpeq	r0, r4	@ pts, D.36858
	bls	.L806	@,
	subs	r0, r0, r4	@ D.36858, D.36858, D.36858
	ldrd	r6, [sp, #48]	@ gap,,
	sbc	r1, r1, r5	@ D.36858, D.36858, D.36858
	cmp	r7, r1	@ gap, D.36858
	cmpeq	r6, r0	@ gap, D.36858
	strcc	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	movcc	r4, r2	@ D.36858, D.36858
	movcc	r5, r3	@ D.36858, D.36858
	movcc	lr, ip	@ D.36852, i
.L806:
	cmp	lr, r8	@ D.36852, i
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	addlt	lr, lr, #1024	@ D.36857, D.36852,
	rsb	r1, r8, lr	@ DelNum, i, D.36857
	cmp	r1, #0	@ DelNum,
	strd	r4, [r3]	@ D.36858, *pArgs_35(D)
	bne	.L809	@,
.L838:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, r1	@ D.36852, DelNum
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L828:
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L852:
	mov	ip, r3, asr #31	@ tmp636, D.36857,
	mov	ip, ip, lsr #22	@ tmp637, tmp636,
	add	r3, r3, ip	@ tmp638, D.36857, tmp637
	ubfx	r3, r3, #0, #10	@ tmp639, tmp638,,
	rsb	ip, ip, r3	@ i, tmp637, tmp639
	b	.L792	@
.L851:
	ldr	r3, [sp, #24]	@ i, %sfp
	cmp	r3, ip	@ i, i
	addgt	ip, ip, #1024	@ D.36857, i,
	ldrgt	r3, [sp, #24]	@ i, %sfp
	rsb	r1, r3, ip	@ DelNum, i, D.36857
	ldr	r3, [sp, #24]	@ i, %sfp
	cmp	r1, #0	@ DelNum,
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bne	.L855	@,
.L797:
	ldr	r3, [sp, #36]	@ j, %sfp
	ldr	r2, [sp, #40]	@ D.36857, %sfp
	add	r3, r3, #1	@ j, j,
	str	r3, [sp, #36]	@ j, %sfp
	cmp	r3, r2	@ j, D.36857
	beq	.L811	@,
	ldr	r6, [sp, #20]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r0, r6	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r6	@, ChanID
	bl	FillRawData	@
	b	.L812	@
.L853:
	ldr	r8, [sp, #24]	@ i, %sfp
	ldr	r0, [sp, #32]	@ pArgs, %sfp
	cmp	r8, ip	@ i, i
	ldrd	r2, [sp, #8]	@ pts,,
	addgt	ip, ip, #1024	@ D.36857, i,
	rsb	r1, r8, ip	@ DelNum, i, D.36857
	cmp	r1, #0	@ DelNum,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	beq	.L838	@,
.L809:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #44]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.36852,
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L855:
	ldr	r0, [sp, #44]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L797	@
.L846:
	ldr	r9, [sp, #36]	@ i, %sfp
	ldr	r5, [sp, #60]	@ tmp692, %sfp
	cmp	ip, r9	@ i, i
	addlt	ip, ip, #1024	@ D.36857, i,
	rsb	r1, r9, ip	@ DelNum, i, D.36857
	cmp	r1, #0	@ DelNum,
	beq	.L780	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp558,
	movne	r4, #0	@ tmp558,
	beq	.L780	@,
	ldr	r0, [sp, #32]	@ pArgs, %sfp
	ldrd	r2, [sp, #8]	@ pts,,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	b	.L839	@
.L849:
	ldr	r0, [sp, #44]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L773	@
.L841:
	ldr	r10, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r4, r10	@ i, j
	beq	.L760	@,
	movw	r9, #36409	@ tmp701,
	movt	r9, 14563	@ tmp701,
.L761:
	mov	r3, r10, asl #6	@ tmp366, j,
	mov	r2, #2	@ tmp770,
	add	r3, r3, r10, lsl #4	@ tmp367, tmp366, j,
	mov	r1, r10	@, j
	add	r3, fp, r3	@ tmp368, tmp691, tmp367
	mov	r0, r7	@, pStreamSegArray
	strb	r2, [r3, #204]	@ tmp770, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36856, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36857, D.36856
	str	r2, [r5, #2284]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36857, D.36857
	str	r3, [r5, #2288]	@ D.36857, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r10, #1	@ D.36857, j,
	smull	r2, r3, r1, r9	@ tmp402, D.36857, tmp701
	mov	r10, r1, asr #31	@ tmp405, D.36857,
	rsb	r10, r10, r3, asr #8	@ j, tmp405,,
	mov	r3, r10, asl #10	@ tmp408, j,
	add	r10, r3, r10, lsl #7	@ tmp409, tmp408, j,
	rsb	r10, r10, r1	@ j, tmp409, D.36857
	cmp	r4, r10	@ i, j
	bne	.L761	@,
	add	r6, r6, r8	@ tmp415, tmp689, tmp690
	add	fp, fp, r6	@ tmp416, tmp691, tmp415
	ldrd	r2, [fp, #232]	@ D.36853, tmp416,
.L760:
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	mov	r0, #0	@ D.36852,
	strd	r2, [r1]	@ D.36853, *pArgs_35(D)
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L780:
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	ldrd	r2, [sp, #8]	@ pts,,
	strd	r2, [r1]	@ pts, *pArgs_35(D)
.L837:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, #0	@ D.36852,
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	str	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L786:
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.36858, *pArgs_35(D)
	b	.L837	@
.L854:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r4, r6	@ D.36858, D.36858
	mov	r5, r7	@ D.36858, D.36858
	mov	lr, ip	@ D.36852, i
	b	.L806	@
.L842:
	subs	r8, r8, r2	@ D.36858, D.36858, D.36858
	sbc	r9, r9, r3	@ D.36858, D.36858, D.36858
	mov	r2, r8	@ D.36858, D.36858
	mov	r3, r9	@ D.36858, D.36858
	ldrd	r8, [sp, #48]	@ gap,,
	cmp	r9, r3	@ gap, D.36858
	cmpeq	r8, r2	@ gap, D.36858
	strcc	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	movcc	r0, r4	@ D.36852, i
	b	.L763	@
.L848:
	ldrd	r6, [sp, #24]	@ D.36858,,
	mov	lr, ip	@ D.36857, i
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	b	.L783	@
.L847:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r6, r2	@ D.36858, D.36858
	mov	r7, r3	@ D.36858, D.36858
	mov	lr, ip	@ D.36857, i
	b	.L783	@
.L811:
	mvn	r0, #1	@ D.36852,
	b	.L828	@
.L749:
	mvn	r0, #0	@ D.36852,
	b	.L828	@
.L850:
	strd	r2, [sp]	@ RawNumInVfmw,
	mov	r2, r0	@, RawNum
	mov	r3, r1	@, RawNum
	mov	r0, #1	@,
	ldr	r1, .L856+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.36852,
	b	.L828	@
.L857:
	.align	2
.L856:
	.word	.LANCHOR0
	.word	.LC43
	.fnend
	.size	SM_SeekPts, .-SM_SeekPts
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
	mov	fp, r0	@ D.36863,
	movw	r0, #51208	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r10, r0	@ D.36863,
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.36863,
	movw	r0, #51216	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.36863,
	movw	r0, #51220	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.36863,
	movw	r0, #51224	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.36863,
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.36863,
	mov	r0, #51200	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, .L860	@,
	mov	r4, r0	@ D.36863,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, fp	@, D.36863
	ldr	r1, .L860+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.36863
	ldr	r1, .L860+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.36863
	ldr	r1, .L860+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.36863
	ldr	r1, .L860+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.36863
	ldr	r1, .L860+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.36863
	ldr	r1, .L860+24	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.36863
	ldr	r1, .L860+28	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	sxtb	r2, r4	@, D.36863
	ldr	r1, .L860+32	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L861:
	.align	2
.L860:
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.fnend
	.size	PrintScdVtrlReg, .-PrintScdVtrlReg
	.align	2
	.global	WriteScdVtrlReg
	.type	WriteScdVtrlReg, %function
WriteScdVtrlReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	ldr	r5, .L868	@ tmp217,
	ldr	r1, [r0, #4]	@, pSmCtrlReg_6(D)->DownMsgPhyAddr
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #12]	@, pSmCtrlReg_6(D)->UpMsgPhyAddr
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #8	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #20]	@, pSmCtrlReg_6(D)->UpLen
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #24]	@, pSmCtrlReg_6(D)->BufferFirst
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #28]	@, pSmCtrlReg_6(D)->BufferLast
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	ldr	r1, [r4, #32]	@, pSmCtrlReg_6(D)->BufferIni
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #8	@,,
	bl	MEM_WritePhyWord	@
	ldrsb	r3, [r4, #1]	@ D.36877, pSmCtrlReg_6(D)->SliceCheckFlag
	ldr	r1, [r4, #36]	@ pSmCtrlReg_6(D)->ScdProtocol, pSmCtrlReg_6(D)->ScdProtocol
	ldr	r2, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.36877, D.36877,
	and	r1, r1, #15	@ D.36877, pSmCtrlReg_6(D)->ScdProtocol,
	and	r3, r3, #16	@ D.36877, D.36877,
	orr	r1, r1, r2, asl #8	@ D.36877, D.36877, pSmCtrlReg_6(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.36877, D.36877
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	cmp	r3, #0	@ pSmCtrlReg_6(D)->ScdLowdlyEnable,
	beq	.L863	@,
	ldr	r1, [r4, #108]	@, pSmCtrlReg_6(D)->reg_avs_flag
	ldr	r0, [r5]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
.L863:
	bl	PrintScdVtrlReg	@
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #0	@,
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ pSmCtrlReg_6(D)->ScdStart, pSmCtrlReg_6(D)->ScdStart
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	and	r1, r1, #1	@, pSmCtrlReg_6(D)->ScdStart,
	add	r0, r0, #2048	@, s_RegPhyBaseAddr,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MEM_WritePhyWord	@
.L869:
	.align	2
.L868:
	.word	.LANCHOR0
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r7, r1	@ pDownMsgVirAddr, pDownMsgVirAddr
	mov	r0, #24	@,
	ldr	r1, .L876	@,
	mov	r6, r2	@ PushRawNum, PushRawNum
	bl	dprint_vfmw	@
	mov	r2, r7	@, pDownMsgVirAddr
	ldr	r1, .L876+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, DownMsgPhyAddr
	ldr	r1, .L876+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r6, r6, r6, lsl #1	@ D.36892, PushRawNum, PushRawNum,
	mov	r5, r7	@ ivtmp.433, pDownMsgVirAddr
	mov	r4, #0	@ j,
.L872:
	ldr	r3, [r7, r4, asl #2]	@, MEM[base: pDownMsgVirAddr_6(D), index: _33, step: 4, offset: 0B]
	mov	r2, r4	@, j
	ldr	r1, .L876+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, MEM[base: _32, offset: 4B]
	add	r2, r4, #1	@, j,
	ldr	r1, .L876+12	@,
	mov	r0, #24	@,
	add	r5, r5, #12	@ ivtmp.433, ivtmp.433,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #-4]	@, MEM[base: _32, offset: 8B]
	add	r2, r4, #2	@, j,
	ldr	r1, .L876+12	@,
	mov	r0, #24	@,
	add	r4, r4, #3	@ j, j,
	bl	dprint_vfmw	@
	ldr	r1, .L876+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r4, r6	@ j, D.36892
	bne	.L872	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L877:
	.align	2
.L876:
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC18
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	WriteScdMsg
	.type	WriteScdMsg, %function
WriteScdMsg:
	.fnstart
	@ args = 8, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r6, r2	@ pRawStreamArray, pRawStreamArray
	mov	r7, r0	@ pSmPushRaw, pSmPushRaw
	mov	r8, r1	@ SegStreamSize, SegStreamSize
	mov	r0, sp	@,
	mov	r2, #72	@,
	mov	r1, #0	@,
	mov	r5, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r6, #0	@ pRawStreamArray,
	beq	.L889	@,
	add	r3, r6, #73728	@ tmp182, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp182,,
	cmp	r1, r2	@ pRawStreamArray_17(D)->Head, pRawStreamArray_17(D)->Tail
	beq	.L890	@,
	ldr	r9, [r3, #12]	@ FirstRawOffset, pRawStreamArray_17(D)->FirstPacketOffset
	mov	fp, r9	@ D.36910, FirstRawOffset
.L879:
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r4, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r10, #0	@ tmp195,
	rsb	r4, r9, r4	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r3, [sp, #4]	@ RawPacket.VirAddr, RawPacket.VirAddr
	cmp	r4, r8	@ RawShowTotalLen, SegStreamSize
	add	r9, r2, r9	@ D.36905, RawPacket.PhyAddr, FirstRawOffset
	add	r3, r3, fp	@ D.36906, RawPacket.VirAddr, D.36910
	str	r10, [r5]	@ tmp195, *pDownMsgVirAddr_29(D)
	str	r10, [r5, #4]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 4B]
	str	r10, [r5, #8]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 8B]
	str	r4, [sp, #8]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [sp]	@ D.36905, RawPacket.PhyAddr
	str	r3, [sp, #4]	@ D.36906, RawPacket.VirAddr
	str	r10, [r7, #4]	@ tmp195, pSmPushRaw_33(D)->PushRawTotalLen
	bgt	.L880	@,
	mov	fp, r10	@ PushRawNum, j
	mov	lr, r4	@ D.36904, RawShowTotalLen
	b	.L883	@
.L901:
	ldr	lr, [sp, #8]	@ D.36904, RawPacket.Length
	movw	r2, #1023	@ tmp256,
	add	r4, r4, lr	@ RawShowTotalLen, RawShowTotalLen, D.36904
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	movlt	r3, #0	@ tmp216,
	movge	r3, #1	@ tmp216,
	cmp	fp, r2	@ PushRawNum, tmp256
	movgt	r3, #0	@ tmp216,
	cmp	r3, #0	@ tmp216,
	beq	.L882	@,
.L883:
	cmp	lr, #0	@ D.36904,
	mov	r3, r10, asl #2	@ D.36908, j,
	add	r2, r5, r3	@ tmp200, pDownMsgVirAddr, D.36908
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	add	r3, r3, #12	@ D.36908, D.36908,
	ble	.L881	@,
	ldr	ip, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	ldr	r9, [sp, #112]	@ tmp251, DownMsgPhyAddr
	add	lr, lr, ip	@ D.36905, D.36904, RawPacket.PhyAddr
	str	ip, [r5, r10, asl #2]	@ RawPacket.PhyAddr, *_43
	add	r10, r10, #3	@ j, j,
	add	r3, r3, r9	@ D.36908, D.36908, tmp251
	sub	lr, lr, #1	@ D.36905, D.36905,
	mov	r9, #0	@ tmp252,
	str	r3, [r2, #8]	@ D.36908, *_56
	str	r9, [sp, #8]	@ tmp252, RawPacket.Length
	str	lr, [r2, #4]	@ D.36905, *_49
.L881:
	str	r4, [r7, #4]	@ RawShowTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L901	@,
.L882:
	ldr	r3, [sp, #116]	@ tmp253, LowdlyFlag
	cmp	r3, #0	@ tmp253,
	bne	.L884	@,
	ldr	r3, [sp, #8]	@ D.36904, RawPacket.Length
	cmp	r3, #0	@ D.36904,
	bne	.L888	@,
.L884:
	cmp	fp, #0	@ PushRawNum,
	beq	.L887	@,
	sub	r10, r10, #-1073741823	@ tmp235, j,
	ldr	r0, [sp, #112]	@, DownMsgPhyAddr
	mov	r4, #0	@ tmp236,
	mov	r3, #1	@ tmp237,
	str	r4, [r5, r10, asl #2]	@ tmp236, *_112
	mov	r2, fp	@, PushRawNum
	mov	r1, r5	@, pDownMsgVirAddr
	str	fp, [r7]	@ PushRawNum, pSmPushRaw_33(D)->PushRawNum
	str	r3, [r7, #8]	@ tmp237, pSmPushRaw_33(D)->PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r4	@ D.36904, tmp236
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L880:
	ldr	r3, [sp, #116]	@ tmp255, LowdlyFlag
	cmp	r3, #0	@ tmp255,
	bne	.L887	@,
	cmp	r4, #0	@ RawShowTotalLen,
	beq	.L887	@,
	ldr	r10, [sp, #116]	@ j, LowdlyFlag
	mov	r3, r4	@ D.36904, RawShowTotalLen
	mov	fp, r10	@ PushRawNum, j
.L888:
	ldr	r2, [r7, #4]	@ D.36905, pSmPushRaw_33(D)->PushRawTotalLen
	sub	r1, r8, #16	@ D.36905, SegStreamSize,
	cmp	r2, r1	@ D.36905, D.36905
	bge	.L884	@,
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	cmplt	fp, #1024	@, PushRawNum,
	bge	.L884	@,
	rsb	r2, r2, r8	@ D.36905, D.36905, SegStreamSize
	cmp	r2, r3	@ D.36905, D.36904
	bgt	.L884	@,
	mov	r3, r10, asl #2	@ D.36908, j,
	ldr	ip, [sp]	@ D.36905, RawPacket.PhyAddr
	add	r0, r5, r3	@ tmp226, pDownMsgVirAddr, D.36908
	ldr	lr, [sp, #112]	@ tmp254, DownMsgPhyAddr
	add	r1, r2, ip	@ D.36905, D.36905, D.36905
	add	r3, r3, #12	@ D.36908, D.36908,
	str	ip, [r5, r10, asl #2]	@ D.36905, *_84
	add	r3, r3, lr	@ D.36908, D.36908, tmp254
	sub	r1, r1, #1	@ D.36905, D.36905,
	stmib	r0, {r1, r3}	@ tmp226,,
	ldr	r3, [r7, #4]	@ pSmPushRaw_33(D)->PushRawTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	mov	r1, #0	@ tmp234,
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	add	r10, r10, #3	@ j, j,
	add	r2, r3, r2	@ D.36905, pSmPushRaw_33(D)->PushRawTotalLen, D.36905
	str	r1, [sp, #8]	@ tmp234, RawPacket.Length
	str	r2, [r7, #4]	@ D.36905, pSmPushRaw_33(D)->PushRawTotalLen
	b	.L884	@
.L890:
	mov	fp, #0	@ D.36910,
	mov	r9, fp	@ FirstRawOffset, D.36910
	b	.L879	@
.L889:
	mov	fp, r6	@ D.36910, pRawStreamArray
	mov	r9, r6	@ FirstRawOffset, pRawStreamArray
	b	.L879	@
.L887:
	mvn	r0, #5	@ D.36904,
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
	.align	2
	.global	ScdDriver
	.type	ScdDriver, %function
ScdDriver:
	.fnstart
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	mov	r6, r1	@ pSmPushRaw, pSmPushRaw
	mov	r7, r2	@ SegStreamSize, SegStreamSize
	mov	r8, r3	@ pRawStreamArray, pRawStreamArray
	ldr	r5, [sp, #36]	@ DownMsgPhyAddr, DownMsgPhyAddr
	bl	ResetSCD	@
	ldr	ip, [r4, #104]	@ pSmCtrlReg_5(D)->ScdLowdlyEnable, pSmCtrlReg_5(D)->ScdLowdlyEnable
	mov	r2, r8	@, pRawStreamArray
	mov	r1, r7	@, SegStreamSize
	mov	r0, r6	@, pSmPushRaw
	str	r5, [sp]	@ DownMsgPhyAddr,
	ldr	r3, [sp, #32]	@, pDownMsgVirAddr
	str	ip, [sp, #4]	@ pSmCtrlReg_5(D)->ScdLowdlyEnable,
	bl	WriteScdMsg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L903	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L903:
	mov	r0, r5	@, Ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	ScdDriver, .-ScdDriver
	.align	2
	.global	CutStreamWithSCD
	.type	CutStreamWithSCD, %function
CutStreamWithSCD:
	.fnstart
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #73728	@ tmp299, pScdInstance,
	cmn	r8, #192	@ tmp299,
	.pad #156
	sub	sp, sp, #156	@,,
	add	r2, r8, #192	@ pStreamSegArray, tmp299,
	ldr	r9, [r0, #56]	@ StdType, pScdInstance_9(D)->Config.VidStd
	movne	r7, #0	@ D.36924,
	moveq	r7, #1	@ D.36924,
	cmn	r0, #168	@ pScdInstance,
	str	r2, [sp, #12]	@ pStreamSegArray, %sfp
	add	r2, r0, #168	@ pRawStreamArray, pScdInstance,
	str	r2, [sp, #16]	@ pRawStreamArray, %sfp
	ldr	r2, [r0, #88]	@ D.36922, pScdInstance_9(D)->Config.ScdLowdlyEnable
	movne	r5, #0	@ D.36924,
	moveq	r5, #1	@ D.36924,
	orrs	r3, r5, r7	@ tmp180, D.36924, D.36924
	str	r2, [sp, #20]	@ D.36922, %sfp
	bne	.L908	@,
	add	r6, r0, #165888	@ __p, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r6, r6, #248	@ __p, __p,
	mov	r1, #12	@,
	str	r3, [sp, #32]	@ tmp180, SegStreamSize
	mov	r0, r6	@, __p
	str	r3, [sp, #36]	@ tmp180, FreeSegBufAddr
	bl	__memzero	@
	cmp	r5, #0	@ D.36924,
	bne	.L908	@,
	ldr	r2, [r8, #172]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail
	mov	r0, #26	@,
	ldr	r3, [r8, #168]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r1, .L930	@,
	subs	fp, r2, r3	@ StreamNum, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	addmi	fp, fp, #1024	@ StreamNum, StreamNum,
	mov	r2, fp	@, StreamNum
	bl	dprint_vfmw	@
	ldr	r5, [r8, #188]	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].RawTotalSize
	ldr	r2, [r8, #180]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset
	rsb	r5, r2, r5	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, RawStreamSize
	movs	r8, r5, asr #31	@ D.36923, RawStreamSize,
	beq	.L928	@,
.L924:
	mov	r0, r8	@, D.36923
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L908:
	mvn	r8, #0	@ D.36923,
	mov	r0, r8	@, D.36923
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L928:
	mov	r2, r5	@, RawStreamSize
	ldr	r1, .L930+4	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	cmp	r5, #3	@ RawStreamSize,
	cmpgt	fp, #0	@, StreamNum,
	ble	.L920	@,
	add	r3, r4, #163840	@ tmp300, pScdInstance,
	str	r3, [sp, #24]	@ tmp300, %sfp
	movw	lr, #36409	@ tmp212,
	ldr	r1, .L930+8	@,
	ldr	r2, [r3, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail
	movt	lr, 14563	@ tmp212,
	ldr	r0, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head
	add	r3, r2, #1152	@ D.36922, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail,
	rsb	r2, r0, r3	@ D.36922, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, D.36922
	mov	r0, #26	@,
	smull	r10, fp, r2, lr	@ tmp211, D.36922, tmp212
	mov	r3, r2, asr #31	@ tmp214, D.36922,
	rsb	r3, r3, fp, asr #8	@ tmp210, tmp214, tmp308,
	mov	lr, r3, asl #10	@ tmp217, tmp210,
	add	r3, lr, r3, lsl #7	@ tmp218, tmp217, tmp210,
	rsb	r3, r3, r2	@ D.36922, tmp218, D.36922
	rsb	r3, r3, #1152	@ StreamNum, D.36922,
	str	r3, [sp, #28]	@ StreamNum, %sfp
	mov	r2, r3	@, StreamNum
	bl	dprint_vfmw	@
	ldr	r3, [sp, #28]	@ StreamNum, %sfp
	cmp	r3, #288	@ StreamNum,
	ble	.L911	@,
	ldr	r0, [sp, #12]	@, %sfp
	add	r2, sp, #32	@,,
	add	r1, sp, #36	@,,
	str	r3, [sp, #28]	@ StreamNum, %sfp
	bl	GetFreeSegBuf	@
	ldr	r2, [sp, #32]	@ SegStreamSize, SegStreamSize
	ldr	lr, [sp, #36]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	r2, r2, #79	@ D.36922, SegStreamSize,
	ldr	r1, .L930+12	@,
	add	lr, lr, #3	@ D.36925, FreeSegBufAddr,
	str	r2, [sp, #32]	@ D.36922, SegStreamSize
	bic	lr, lr, #3	@ D.36925, D.36925,
	str	lr, [sp, #36]	@ D.36925, FreeSegBufAddr
	bl	dprint_vfmw	@
	ldr	r1, [sp, #24]	@ tmp300, %sfp
	ldr	r2, [sp, #32]	@ D.36922, SegStreamSize
	ldr	r0, [r1, #2268]	@ SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufSize
	cmp	r2, r0, asr #3	@ D.36922, SegBufSize,
	ble	.L911	@,
	ldr	fp, [sp, #24]	@ tmp300, %sfp
	cmp	r7, #0	@ D.36924,
	ldr	r3, [sp, #28]	@ StreamNum, %sfp
	add	r7, r4, #176128	@ tmp301, pScdInstance,
	ldreq	lr, [r1, #2264]	@ D.36922, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufPhyAddr
	movne	r0, r8	@ D.36922, D.36923
	movne	lr, r8	@ D.36922, D.36923
	ldr	r10, [fp, #2312]	@ D.36922, pScdInstance_9(D)->BufAddrCfg.DownMsgPhyAddr
	str	r3, [fp, #2336]	@ StreamNum, pScdInstance_9(D)->BufAddrCfg.UpMsgNum
	addeq	r0, r0, lr	@ D.36922, SegBufSize, D.36922
	ldr	ip, [r7, #3996]	@ pScdInstance_9(D)->UpMsgStepNum, pScdInstance_9(D)->UpMsgStepNum
	sub	r1, r9, #6	@ D.36924, StdType,
	str	lr, [sp, #64]	@ D.36922, ScdCtrlReg.BufferFirst
	clz	r1, r1	@ D.36924, D.36924
	str	r0, [sp, #68]	@ D.36922, ScdCtrlReg.BufferLast
	cmp	r9, #1	@ StdType,
	cmpne	r9, #15	@, StdType,
	mul	r3, ip, r3	@ D.36925, pScdInstance_9(D)->UpMsgStepNum, StreamNum
	ldr	ip, [sp, #20]	@ D.36922, %sfp
	ldr	r0, [fp, #2316]	@ D.36926, pScdInstance_9(D)->BufAddrCfg.pDownMsgVirAddr
	mov	r1, r1, lsr #5	@ D.36924, D.36924,
	ldr	lr, [fp, #2324]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr
	str	ip, [sp, #144]	@ D.36922, ScdCtrlReg.ScdLowdlyEnable
	ldr	ip, [sp, #36]	@ FreeSegBufAddr, FreeSegBufAddr
	str	r3, [sp, #60]	@ D.36925, ScdCtrlReg.UpLen
	mov	r3, r3, asl #2	@ D.36925, D.36925,
	str	r10, [sp, #44]	@ D.36922, ScdCtrlReg.DownMsgPhyAddr
	str	r3, [fp, #2332]	@ D.36925, pScdInstance_9(D)->BufAddrCfg.UpMsgSize
	mov	r3, #1	@ tmp245,
	str	r0, [sp, #48]	@ D.36926, ScdCtrlReg.pDownMsgVirAddr
	str	lr, [sp, #52]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, ScdCtrlReg.UpMsgPhyAddr
	str	ip, [sp, #72]	@ FreeSegBufAddr, ScdCtrlReg.BufferIni
	str	r1, [sp, #148]	@ D.36924, ScdCtrlReg.reg_avs_flag
	strb	r3, [sp, #42]	@ tmp245, ScdCtrlReg.ScdStart
	strb	r3, [sp, #40]	@ tmp245, ScdCtrlReg.ScdIntMask
	beq	.L922	@,
	cmp	r1, #0	@ D.36924,
	beq	.L929	@,
.L927:
	strb	r3, [sp, #41]	@ tmp271, ScdCtrlReg.SliceCheckFlag
	mov	r1, r6	@, __p
	str	r0, [sp]	@ D.36926,
	add	r0, sp, #40	@,,
	str	r10, [sp, #4]	@ D.36922,
	ldr	r3, [sp, #16]	@, %sfp
	str	r9, [sp, #76]	@ D.36922, ScdCtrlReg.ScdProtocol
	mov	r9, #1	@ tmp273,
	str	r9, [sp, #80]	@ tmp273, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	movne	r8, r6	@ D.36923, Ret
	bne	.L924	@,
	ldr	r3, [sp, #32]	@ D.36922, SegStreamSize
	strb	r9, [r4, #5]	@ tmp273, pScdInstance_9(D)->IsWaitSCD
	cmp	r3, r5	@ D.36922, RawStreamSize
	str	r5, [r7, #3968]	@ RawStreamSize, pScdInstance_9(D)->PrevCfgRawSize
	str	r3, [r7, #3972]	@ D.36922, pScdInstance_9(D)->PrevCfgSegSize
	movlt	r2, #0	@ tmp303,
	movge	r2, #1	@ tmp303,
	strb	r6, [r4, #4]	@ Ret, pScdInstance_9(D)->FillNewRawFlag
	strb	r2, [r4, #2]	@ tmp303, pScdInstance_9(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r7, #3992]	@, pScdInstance_9(D)->LastSCDStartTime
	strb	r6, [r4, #3]	@ Ret, pScdInstance_9(D)->InsertNewSegFlag
	b	.L924	@
.L922:
	mov	r9, #0	@ D.36922,
.L913:
	mov	r3, #0	@ tmp271,
	b	.L927	@
.L929:
	sub	r1, r9, #2	@ D.36925, D.36922,
	cmp	r1, r3	@ D.36925,
	bls	.L927	@,
	b	.L913	@
.L911:
	mvn	r8, #5	@ D.36923,
	b	.L924	@
.L920:
	mvn	r8, #4	@ D.36923,
	b	.L924	@
.L931:
	.align	2
.L930:
	.word	.LC60
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.fnend
	.size	CutStreamWithSCD, .-CutStreamWithSCD
	.align	2
	.global	SM_DoNextInstance
	.type	SM_DoNextInstance, %function
SM_DoNextInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r4, .L978	@ tmp267,
	ldr	r3, [r4, #152]	@ D.36937, s_eScdDrvSleepStage
	cmp	r3, #0	@ D.36937,
	beq	.L933	@,
	cmp	r3, #1	@ D.36937,
	moveq	r3, #2	@ tmp164,
	mvneq	r0, #2	@ D.36936,
	streq	r3, [r4, #152]	@ tmp164, s_eScdDrvSleepStage
	beq	.L971	@,
.L949:
	mvn	r0, #2	@ D.36936,
.L971:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L933:
	mov	r5, r0	@ pNextInstId, pNextInstId
	mov	r1, sp	@,
	mov	r0, r3	@, D.36937
	ldr	r6, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L949	@,
	ldr	r3, [r6, #56]	@ D.36939, pSmInstArray_19->Config.VidStd
	sub	r2, r3, #8	@ D.36940, D.36939,
	cmp	r3, #5	@ D.36939,
	cmpne	r2, #1	@, D.36940,
	bls	.L949	@,
	cmp	r3, #1	@ D.36939,
	beq	.L974	@,
	cmp	r3, #4	@ D.36939,
	cmpne	r3, #18	@, D.36939,
	sub	r0, r3, #10	@ D.36940, D.36939,
	moveq	r2, #1	@ tmp181,
	movne	r2, #0	@ tmp181,
	cmp	r0, #4	@ D.36940,
	movhi	r0, r2	@, tmp188, tmp181
	orrls	r0, r2, #1	@,, tmp188, tmp181
	cmp	r0, #0	@ tmp188,
	bne	.L949	@,
	cmp	r3, #17	@ D.36939,
	beq	.L975	@,
.L937:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, #176128	@ tmp191, pSmInstArray,
	ldr	r3, [r2, #3992]	@ pSmInstArray_19->LastSCDStartTime, pSmInstArray_19->LastSCDStartTime
	subs	r3, r0, r3	@ WaitTime, D.36940, pSmInstArray_19->LastSCDStartTime
	strmi	r0, [r2, #3992]	@ D.36940, pSmInstArray_19->LastSCDStartTime
	bmi	.L940	@,
	ldrsb	r2, [r6, #2]	@ pSmInstArray_19->LastCfgAllRawFlag, pSmInstArray_19->LastCfgAllRawFlag
	cmp	r2, #1	@ pSmInstArray_19->LastCfgAllRawFlag,
	beq	.L976	@,
.L940:
	ldrsb	r1, [r6]	@ pSmInstArray_19->SegFullFlag, pSmInstArray_19->SegFullFlag
	cmp	r1, #1	@ pSmInstArray_19->SegFullFlag,
	movne	r3, #0	@ tmp248,
	strneb	r3, [r6, #1]	@ tmp248, pSmInstArray_19->IsCounting
	beq	.L977	@,
.L944:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp250,
	streqb	r3, [r6]	@ tmp250, pSmInstArray_19->SegFullFlag
	beq	.L949	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp252,
	strb	r3, [r6]	@ tmp252, pSmInstArray_19->SegFullFlag
	bne	.L949	@,
	str	r0, [r5]	@ Ret, *pNextInstId_61(D)
	mov	r0, #1	@,
	ldr	r3, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	addne	r3, r3, #163840	@ tmp257, pSmInstArray,
	movne	r2, #1	@ tmp258,
	strne	r2, [r3, #2412]	@ tmp258, pSmInstArray_42->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L973	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L978+4	@ tmp262,
	ldr	r3, [r4, #168]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, .L978	@ tmp259,
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36940, last_rec_pos_time, D.36940
	cmp	r3, r1	@ D.36940, g_TraceBsPeriod
	strhi	r0, [r2, #168]	@ D.36940, last_rec_pos_time
.L973:
	mov	r0, #0	@ D.36936,
	b	.L971	@
.L975:
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L949	@,
	ldr	r1, .L978+8	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	b	.L949	@
.L974:
	ldr	r3, [r6, #72]	@ pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L949	@,
	b	.L937	@
.L976:
	ldrsb	r2, [r6, #4]	@ pSmInstArray_19->FillNewRawFlag, pSmInstArray_19->FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	r2, #0	@, pSmInstArray_19->FillNewRawFlag,
	beq	.L949	@,
	b	.L940	@
.L977:
	add	r7, r6, #73728	@ D.36943, pSmInstArray,
	add	r7, r7, #192	@ D.36943, D.36943,
	cmp	r7, #0	@ D.36943,
	beq	.L942	@,
	ldrsb	r0, [r6, #1]	@ pSmInstArray_19->IsCounting, pSmInstArray_19->IsCounting
	add	r3, r6, #163840	@ tmp209, pSmInstArray,
	cmp	r0, #0	@ pSmInstArray_19->IsCounting,
	ldr	r10, [r3, #2288]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegFreshNum
	ldr	r9, [r3, #2284]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegFreshSize
	ldr	r8, [r3, #2268]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegBufSize
	bne	.L943	@,
	add	r8, r8, r8, lsr #31	@ tmp221, SegBufTotalSize, SegBufTotalSize,
	cmp	r9, r8, asr #1	@ FreshSize, tmp221,
	movlt	r3, #1	@ tmp224,
	movge	r3, #0	@ tmp224,
	cmp	r10, #127	@ FreshNum,
	movgt	r10, #0	@, tmp229
	andle	r10, r3, #1	@,, tmp229, tmp224
	cmp	r10, #0	@ tmp229,
	beq	.L944	@,
	strb	r1, [r6, #1]	@ pSmInstArray_19->SegFullFlag, pSmInstArray_19->IsCounting
	bl	CalcInstBlockTime	@
	b	.L944	@
.L942:
	ldrsb	r3, [r6, #1]	@ pSmInstArray_19->IsCounting, pSmInstArray_19->IsCounting
	cmp	r3, #0	@ pSmInstArray_19->IsCounting,
	movne	r10, r7	@ FreshNum, D.36943
	movne	r8, r7	@ SegBufTotalSize, D.36943
	movne	r9, r7	@ FreshSize, D.36943
	beq	.L944	@,
.L943:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	mov	r2, r0	@ WaitSegTime,
	ble	.L944	@,
	add	r3, r8, #3	@ tmp236, SegBufTotalSize,
	cmp	r8, #0	@ SegBufTotalSize,
	movlt	r8, r3	@ SegBufTotalSize, tmp236
	cmp	r9, r8, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r3, #1	@ tmp239,
	movge	r3, #0	@ tmp239,
	cmp	r10, #63	@ FreshNum,
	movgt	r10, #0	@, tmp242
	andle	r10, r3, #1	@,, tmp242, tmp239
	cmp	r10, #0	@ tmp242,
	beq	.L944	@,
	ldr	r1, .L978+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, D.36943
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp244,
	strb	r3, [r6, #1]	@ tmp244, pSmInstArray_19->IsCounting
	strb	r3, [r6]	@ tmp244, pSmInstArray_19->SegFullFlag
	b	.L944	@
.L979:
	.align	2
.L978:
	.word	.LANCHOR0
	.word	g_TraceBsPeriod
	.word	.LC61
	.word	.LC62
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
	ldr	r4, .L995	@ tmp148,
	mov	r0, r3	@ D.36949, tmp123
	str	r3, [sp, #4]	@ tmp123, NextInstID
	b	.L982	@
.L981:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.36949, NextInstID,
	str	r0, [sp, #4]	@ D.36949, NextInstID
	cmp	r0, #0	@ D.36949,
	bgt	.L993	@,
.L982:
	add	r3, r4, r0, lsl #2	@ tmp126, tmp148, D.36949,
	ldr	r3, [r3, #128]	@ D.36948, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36948,
	add	r2, r3, #163840	@ tmp129, D.36948,
	beq	.L981	@,
	ldr	r3, [r2, #2412]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L981	@,
	bl	FillRawData	@
	b	.L981	@
.L993:
	ldr	r3, [r4, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L995	@ tmp132,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L983	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L994	@,
.L980:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L983:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #148]	@ D.36950, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.36950
	strcc	r0, [r4, #148]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L980	@,
	rsb	r0, r3, r0	@ DelayTime, D.36950, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L980	@,
	ldr	r1, .L995+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #140]	@, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp145,
	str	r3, [r4, #144]	@ tmp145, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L994:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp138,
	str	r2, [r4, #144]	@ tmp138, s_SmIIS.SCDState
	str	r3, [r4, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #148]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L996:
	.align	2
.L995:
	.word	.LANCHOR0
	.word	.LC63
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
	ldr	r1, .L999	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4]	@, pSmStateReg_3(D)->Scdover
	ldr	r1, .L999+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, pSmStateReg_3(D)->ScdInt
	ldr	r1, .L999+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, pSmStateReg_3(D)->ShortScdNum
	ldr	r1, .L999+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, pSmStateReg_3(D)->ScdNum
	ldr	r1, .L999+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, pSmStateReg_3(D)->ScdRollAddr
	ldr	r1, .L999+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, pSmStateReg_3(D)->SrcEaten
	ldr	r1, .L999+24	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1000:
	.align	2
.L999:
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
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
	and	r3, r0, #1	@ D.36964,,
	movw	r0, #51268	@,
	str	r3, [r4]	@ D.36964, pSmStateReg_5(D)->Scdover
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.36964,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #4]	@ D.36964, pSmStateReg_5(D)->ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.36965,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.36965, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.36964,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.36964, pSmStateReg_5(D)->ScdNum
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, pSmStateReg_5(D)->ScdRollAddr
	movw	r0, #51284	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, pSmStateReg_5(D)->SrcEaten
	mov	r0, r4	@, pSmStateReg
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	PrintScdStateReg	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
	.align	2
	.global	GetNextVop
	.type	GetNextVop, %function
GetNextVop:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r0	@ pScdInstance, pScdInstance
	.pad #24
	sub	sp, sp, #24	@,,
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	mov	r5, r3	@ Seg_num, Seg_num
	mov	r4, r1	@ pUsedSeg, pUsedSeg
	mov	r9, r2	@ pStreamSegArray, pStreamSegArray
	bl	MEM_ReadPhyWord	@
	mov	r0, sp	@,
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #16]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r0, #6	@ D.36976,
	beq	.L1014	@,
	add	r1, r9, #90112	@ tmp166, pStreamSegArray,
	movw	r6, #36409	@ tmp175,
	movt	r6, 14563	@ tmp175,
	subs	ip, r5, #1	@ i, Seg_num,
	ldr	r3, [r1, #2060]	@ pStreamSegArray_12(D)->Tail, pStreamSegArray_12(D)->Tail
	ldr	r8, [r1, #2056]	@ pStreamSegArray_12(D)->Head, pStreamSegArray_12(D)->Head
	add	r3, r3, #1152	@ D.36978, pStreamSegArray_12(D)->Tail,
	rsb	r3, r8, r3	@ D.36978, pStreamSegArray_12(D)->Head, D.36978
	smull	r6, r7, r3, r6	@ tmp174, D.36978, tmp175
	mov	r2, r3, asr #31	@ tmp177, D.36978,
	rsb	r2, r2, r7, asr #8	@ tmp173, tmp177,,
	mov	r8, r2, asl #10	@ tmp180, tmp173,
	add	r8, r8, r2, lsl #7	@ tmp181, tmp180, tmp173,
	rsb	r8, r8, r3	@ D.36978, tmp181, D.36978
	rsb	r8, r8, #1152	@ SegNum, D.36978,
	bmi	.L1012	@,
	add	r3, r10, #176128	@ tmp188, pScdInstance,
	ldr	r7, [r10, #20]	@ D.36976, pScdInstance_16(D)->SegFilter.ModeFlag
	mov	r0, #0	@ tmp191,
	ldr	r6, [r9]	@ D.36981, pStreamSegArray_12(D)->pSegBufVirAddr
	ldr	r2, [r3, #3996]	@ pScdInstance_16(D)->UpMsgStepNum, pScdInstance_16(D)->UpMsgStepNum
	sub	r5, r7, #1	@ D.36975, D.36976,
	clz	r5, r5	@ D.36975, D.36975
	ldr	lr, [r1, #2072]	@ D.36979, pStreamSegArray_12(D)->SegBufPhyAddr
	movt	r0, 46593	@ tmp191,
	mov	r9, #0	@ count,
	mov	r2, r2, asl #2	@ D.36979, pScdInstance_16(D)->UpMsgStepNum,
	mov	r5, r5, lsr #5	@ D.36975, D.36975,
	mla	r1, r2, ip, r4	@ ivtmp.461, D.36979, i, pUsedSeg
	b	.L1009	@
.L1019:
	cmp	r7, #2	@ D.36976,
	beq	.L1018	@,
.L1008:
	cmn	r4, #1	@ i,
	beq	.L1016	@,
	mov	ip, r4	@ i, i
.L1009:
	ldr	r3, [r1]	@ *_22, *_22
	sub	r4, ip, #1	@ i, i,
	rsb	r1, r2, r1	@ ivtmp.461, D.36979, ivtmp.461
	rsb	r3, lr, r3	@ D.36979, D.36979, *_22
	ldr	r3, [r6, r3]	@ start_code, MEM[(HI_U32 *)VirAddr_29]
	cmp	r3, r0	@ start_code, tmp191
	movne	r10, #0	@, tmp160
	andeq	r10, r5, #1	@,, tmp160, D.36975
	cmp	r10, #0	@ tmp160,
	beq	.L1019	@,
.L1006:
	add	r9, r9, #1	@ count, count,
	cmp	r9, #0	@ count,
	ble	.L1008	@,
	cmp	r8, ip	@ SegNum, i
	bcc	.L1008	@,
.L1016:
	mov	r0, ip	@ D.36976, i
.L1014:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1018:
	ubfx	r3, r3, #16, #8	@ D.36979, start_code,,
	sub	r3, r3, #128	@ D.36979, D.36979,
	cmp	r3, #3	@ D.36979,
	bhi	.L1008	@,
	b	.L1006	@
.L1012:
	mov	r0, r5	@ D.36976, Seg_num
	b	.L1014	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrsb	r3, [r0, #5]	@ pScdInstance_27(D)->IsWaitSCD, pScdInstance_27(D)->IsWaitSCD
	cmp	r3, #0	@ pScdInstance_27(D)->IsWaitSCD,
	beq	.L1126	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #163840	@ tmp723, pScdInstance,
	.pad #276
	sub	sp, sp, #276	@,,
	ldr	r3, [fp, #2304]	@ pScdInstance_27(D)->SmPushRaw.PushRawOver, pScdInstance_27(D)->SmPushRaw.PushRawOver
	cmp	r3, #3	@ pScdInstance_27(D)->SmPushRaw.PushRawOver,
	moveq	r3, #2	@ tmp372,
	mvneq	r0, #6	@ D.36994,
	streq	r3, [fp, #2304]	@ tmp372, pScdInstance_27(D)->SmPushRaw.PushRawOver
	beq	.L1106	@,
	mov	r10, r0	@ pScdInstance, pScdInstance
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	add	r4, r10, #176128	@ tmp720, pScdInstance,
	bl	MEM_ReadPhyWord	@
	mov	r3, #2	@ tmp376,
	add	r0, sp, #112	@ tmp742,,
	str	r3, [fp, #2304]	@ tmp376, MEM[(struct SM_PUSHRAW_S *)pScdInstance_27(D) + 166136B].PushRawOver
	mov	r1, #80	@,
	bl	__memzero	@
	add	r0, sp, #192	@ tmp743,,
	mov	r1, #80	@,
	bl	__memzero	@
	add	r0, sp, #88	@ tmp744,,
	mov	r1, #24	@,
	bl	__memzero	@
	ldr	r3, [r4, #3996]	@ UpMsgStepNum, pScdInstance_27(D)->UpMsgStepNum
	add	r0, sp, #88	@ tmp745,,
	str	r3, [sp, #32]	@ UpMsgStepNum, %sfp
	mov	r3, #0	@ tmp380,
	str	r3, [sp, #76]	@ tmp380, SegFreeBufLen
	str	r3, [sp, #80]	@ tmp380, TmpAddr
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	beq	.L1024	@,
	add	r3, r10, #73728	@ tmp721, pScdInstance,
	ldr	r2, [sp, #100]	@ D.36996, SmStateReg.ScdNum
	str	r3, [sp, #28]	@ tmp721, %sfp
	adds	r3, r3, #192	@ pStreamSegArray, tmp721,
	str	r3, [sp, #24]	@ pStreamSegArray, %sfp
	str	r2, [sp, #60]	@ D.36996, %sfp
	str	r2, [sp, #72]	@ D.36996, ScdSegNum
	beq	.L1127	@,
	ldr	r3, [fp, #2264]	@ SegBufAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r5, [fp, #2268]	@ SegBufLength, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufSize
	str	r3, [sp, #12]	@ SegBufAddr, %sfp
.L1066:
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #28]	@ tmp721, %sfp
	ldr	r6, [sp, #72]	@ ScdSegNum, ScdSegNum
	ldr	r1, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r6, #1152	@ ScdSegNum,
	movge	r6, #1152	@ D.37000,
	and	r0, r0, #15	@ D.36996,,
	str	r0, [r10, #16]	@ D.36996, pScdInstance_27(D)->SegFilter.ProtocolType
	ldr	r3, [fp, #2328]	@ pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr
	ldr	r0, [sp, #12]	@ SegBufAddr, %sfp
	str	r3, [r10, #12]	@ pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_27(D)->SegFilter.pScdUpMsg
	str	r0, [r10, #28]	@ SegBufAddr, pScdInstance_27(D)->SegFilter.SegBufPhyAddr
	ldr	r3, [fp, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, r0	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, SegBufAddr
	movw	r0, #51212	@,
	add	r3, r2, r3	@ D.36998, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.36996
	str	r1, [r10, #36]	@ SmStateReg.ScdRollAddr, pScdInstance_27(D)->SegFilter.SegBufRollAddr
	str	r3, [r10, #8]	@ D.36998, pScdInstance_27(D)->SegFilter.pSegBufVirAddr
	movt	r0, 4115	@,
	str	r5, [r10, #32]	@ SegBufLength, pScdInstance_27(D)->SegFilter.SegBufSize
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #32]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.37000,
	bhi	.L1128	@,
	ldr	r0, [sp, #72]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ D.36994,
.L1027:
	add	r3, r10, #165888	@ D.37002, pScdInstance,
	ldr	r1, [sp, #32]	@ UpMsgStepNum, %sfp
	str	r0, [r10, #40]	@ D.36994, pScdInstance_27(D)->SegFilter.SegNum
	mov	r2, r3	@ D.37002, D.37002
	add	r3, r10, #8	@ D.37001, pScdInstance,
	add	r2, r2, #368	@ D.37002, D.37002,
	str	r3, [sp, #48]	@ D.37001, %sfp
	str	r2, [sp, #16]	@ D.37002, %sfp
	mov	r0, r3	@, D.37001
	str	r1, [sp]	@ UpMsgStepNum,
	add	r3, sp, #72	@,,
	mov	r1, r2	@, D.37002
	add	r2, sp, #84	@,,
	bl	ScdReturnSegFilter	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1024	@,
	ldr	r5, [sp, #72]	@ D.36996, ScdSegNum
	add	r3, r10, #168	@ pRawStreamArray, pScdInstance,
	str	r3, [sp, #40]	@ pRawStreamArray, %sfp
	cmp	r5, #1	@ D.36996,
	ble	.L1129	@,
	movw	r0, #51212	@,
	strb	r6, [r10]	@ Ret, pScdInstance_27(D)->SegFullFlag
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r4, [sp, #32]	@ UpMsgStepNum, %sfp
	mov	r1, r4	@, UpMsgStepNum
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.36996,
	bcs	.L1033	@,
	ldr	r3, [sp, #72]	@ ScdSegNum, ScdSegNum
	ldr	r2, [sp, #16]	@ D.37002, %sfp
	sub	r3, r3, #1	@ D.36994, ScdSegNum,
	str	r3, [sp, #52]	@ D.36994, %sfp
	str	r3, [sp, #72]	@ D.36994, ScdSegNum
	mul	r3, r4, r3	@ D.37000, UpMsgStepNum, D.36994
	add	r3, r3, #1	@ tmp464, D.37000,
	ldr	r3, [r2, r3, asl #2]	@ *_113, *_113
	bic	r3, r3, #-2147483648	@ SrcEaten, *_113,
	str	r3, [sp, #36]	@ SrcEaten, %sfp
.L1034:
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1130	@,
.L1037:
	movw	r3, #36409	@ tmp725,
	add	r2, r10, #179200	@ D.37005, pScdInstance,
	movt	r3, 14563	@ tmp725,
	str	r3, [sp, #68]	@ tmp725, %sfp
	add	r3, r2, #888	@ D.37005, D.37005,
	str	r3, [sp, #44]	@ D.37005, %sfp
	ldr	r3, [fp, #2252]	@ LastSegTail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	mov	r8, #0	@ ivtmp.472,
	mov	r7, r8	@ i, ivtmp.472
	ldr	r5, [sp, #16]	@ ivtmp.470, %sfp
	ldr	r1, [sp, #52]	@ D.36994, %sfp
	str	r3, [sp, #64]	@ LastSegTail, %sfp
	ldr	r3, [sp, #32]	@ UpMsgStepNum, %sfp
	str	fp, [sp, #20]	@ tmp723, %sfp
	mov	r9, r3, asl #2	@ D.37000, UpMsgStepNum,
	b	.L1038	@
.L1135:
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	bne	.L1131	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1132	@,
.L1047:
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r2, sp, #76	@,,
	str	r6, [sp, #120]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	str	r4, [sp, #124]	@ SegPacketLen, SegPacket.LenInByte
	rsb	r6, r3, r6	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	ldr	r3, [sp, #28]	@ tmp721, %sfp
	ldr	r3, [r3, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	add	r6, r3, r6	@ D.36998, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.36996
	mov	r3, #1	@ tmp509,
	str	r6, [sp, #112]	@ D.36998, SegPacket.VirAddr
	strb	r3, [sp, #117]	@ tmp509, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #76]	@ D.36996, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	beq	.L1048	@,
	ldr	r3, [sp, #112]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1048	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, D.36996
	bhi	.L1048	@,
	ldr	r1, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	add	r3, sp, #112	@ tmp822,,
	ldr	r2, [sp, #44]	@, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _140, offset: 4B],
	bl	GetSegPts	@
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r1, sp, #112	@ tmp824,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_27(D)->InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1133	@,
	ldrd	r6, [sp, #136]	@ SegPacket.Pts,,
	mov	r0, #26	@,
	ldr	r2, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1142	@,
	bic	r2, r2, #-2147483648	@, MEM[base: _140, offset: 4B],
	strd	r6, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	mov	r0, #26	@,
.L1116:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r1, .L1142+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L1117:
	ldr	r1, [sp, #72]	@ D.36994, ScdSegNum
.L1046:
	add	r5, r5, r9	@ ivtmp.470, ivtmp.470, D.37000
	add	r8, r8, r9	@ ivtmp.472, ivtmp.472, D.37000
	mov	r7, fp	@ i, i
.L1038:
	cmp	r7, r1	@ i, D.36994
	bge	.L1134	@,
	ldr	r3, [sp, #16]	@ D.37002, %sfp
	add	fp, r7, #1	@ i, i,
	ldr	r6, [r5]	@ CurrSegPhyAddr, MEM[base: _140, offset: 0B]
	add	r2, r3, r9	@ D.37002, D.37002, D.37000
	ldr	r3, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	ip, [r2, r8]	@ NextSegPhyAddr, MEM[base: _419, index: ivtmp.472_417, offset: 0B]
	mov	r3, r3, lsr #31	@ D.37000, MEM[base: _140, offset: 4B],
	strb	r3, [sp, #119]	@ D.37000, SegPacket.DspCheckPicOverFlag
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	cmp	ip, r3	@ NextSegPhyAddr, SegBufAddr
	rsbne	r4, r6, ip	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	ldreq	r4, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsbeq	r4, r6, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r4, #3	@ SegPacketLen,
	bgt	.L1135	@,
	sub	r3, r4, #1	@ D.37007, SegPacketLen,
	cmp	r3, #2	@ D.37007,
	bhi	.L1050	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	bne	.L1046	@,
	mov	r0, ip	@, NextSegPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L1024	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.36996, MEM[(HI_U8 *)pTmpVirAddr_331 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36996, *pTmpVirAddr_331
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.36996, MEM[(HI_U8 *)pTmpVirAddr_331 + 2B]
	mov	r2, r2, asl #16	@ D.36996, D.36996,
	orr	r3, r2, r3, asl #24	@ D.36996, D.36996, D.36996,
	orr	r3, r3, r1, asl #8	@ D.37000, D.36996, D.36996,
	cmp	r3, #256	@ D.37000,
	beq	.L1117	@,
	mov	r2, r7	@, i
	ldr	r3, [sp, #32]	@, %sfp
	add	r1, sp, #192	@ tmp783,,
	ldr	r0, [sp, #48]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	ldr	r2, [sp, #28]	@ tmp721, %sfp
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	ip, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	add	r2, sp, #76	@,,
	rsb	r3, r3, r6	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	str	r6, [sp, #200]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	add	r3, ip, r3	@ D.36998, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.36996
	str	r4, [sp, #204]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	ip, #1	@ tmp552,
	str	r3, [sp, #192]	@ D.36998, LastSegPacket.VirAddr
	strb	ip, [sp, #197]	@ tmp552, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r1, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	add	r3, sp, #192	@ tmp786,,
	ldr	r2, [sp, #44]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _140, offset: 4B],
	ldr	r0, [sp, #40]	@, %sfp
	bl	GetSegPts	@
	ldr	r1, [sp, #72]	@ D.36994, ScdSegNum
	b	.L1046	@
.L1129:
	ldr	r3, [r4, #3972]	@ pScdInstance_27(D)->PrevCfgSegSize, pScdInstance_27(D)->PrevCfgSegSize
	ldr	r2, [r4, #3968]	@ pScdInstance_27(D)->PrevCfgRawSize, pScdInstance_27(D)->PrevCfgRawSize
	cmp	r2, r3	@ pScdInstance_27(D)->PrevCfgRawSize, pScdInstance_27(D)->PrevCfgSegSize
	strleb	r6, [r10]	@ Ret, pScdInstance_27(D)->SegFullFlag
	movgt	r3, #1	@ tmp430,
	strgtb	r3, [r10]	@ tmp430, pScdInstance_27(D)->SegFullFlag
	cmp	r5, #0	@ D.36996,
	beq	.L1136	@,
	cmp	r5, #1	@ D.36996,
	movne	r1, #0	@ SrcEaten,
	beq	.L1137	@,
.L1032:
	ldr	r0, [sp, #40]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L1065	@,
.L1024:
	mvn	r0, #6	@ D.36994,
.L1106:
	add	sp, sp, #276	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1048:
	ldr	r1, .L1142+8	@,
	mov	r0, #0	@,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp, #36]	@, %sfp
	mov	r0, #0	@,
	ldr	r2, [sp, #76]	@, SegFreeBufLen
	mov	r4, #1	@ ScdErrFlag,
	ldr	r1, .L1142+12	@,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #0	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1142+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L1045:
	ldr	r3, [fp, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	ldr	r2, [sp, #64]	@ LastSegTail, %sfp
	cmp	r3, r2	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, LastSegTail
	movne	r3, #1	@ tmp674,
	moveq	r3, #0	@ tmp676,
	cmp	r7, #0	@ i,
	strb	r3, [r10, #3]	@ tmp676, pScdInstance_27(D)->InsertNewSegFlag
	ble	.L1062	@,
	ldr	r3, [sp, #32]	@ UpMsgStepNum, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	mul	r7, r3, r7	@ D.37000, UpMsgStepNum, i
	ldr	r3, [sp, #16]	@ D.37002, %sfp
	add	r7, r7, #1	@ tmp679, D.37000,
	ldr	r1, [r3, r7, asl #2]	@ *_370, *_370
	bic	r1, r1, #-2147483648	@, *_370,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L1024	@,
.L1063:
	cmp	r4, #1	@ ScdErrFlag,
	beq	.L1024	@,
.L1065:
	mov	r0, #0	@ D.36994,
	add	sp, sp, #276	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1050:
	cmp	r4, #0	@ SegPacketLen,
	bge	.L1046	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1138	@,
.L1052:
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r2, sp, #76	@,,
	ldr	r0, [sp, #28]	@ tmp721, %sfp
	mov	r4, #0	@ tmp573,
	str	r6, [sp, #120]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	ldr	r1, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r0, [r0, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, ip	@ D.37000, SegBufAddr, NextSegPhyAddr
	str	r3, [sp, #56]	@ D.37000, %sfp
	rsb	ip, r1, r6	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	add	r1, sp, #80	@,,
	mov	lr, r3	@ D.37000, D.37000
	ldr	r3, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	ip, r0, ip	@ D.36998, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.36996
	ldr	r0, [sp, #24]	@, %sfp
	rsb	r3, r6, r3	@ D.36996, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	str	ip, [sp, #112]	@ D.36998, SegPacket.VirAddr
	add	r3, r3, lr	@ D.37000, D.36996, D.37000
	strb	r4, [sp, #117]	@ tmp573, SegPacket.IsLastSeg
	str	r3, [sp, #124]	@ D.37000, SegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #124]	@ D.37000, SegPacket.LenInByte
	cmp	r3, #3	@ D.37000,
	bls	.L1117	@,
	ldr	r1, [sp, #20]	@ tmp723, %sfp
	ldr	lr, [sp, #120]	@ D.36996, SegPacket.PhyAddr
	ldr	r2, [r1, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	cmp	lr, #0	@ D.36996,
	ldr	r1, [r1, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head
	add	r2, r2, #1152	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail,
	rsb	r2, r1, r2	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head, D.36996
	ldr	r1, [sp, #68]	@ tmp725, %sfp
	mov	ip, r2, asr #31	@ tmp606, D.36996,
	smull	r0, r1, r2, r1	@ tmp603, D.36996, tmp725
	ldr	r0, [sp, #76]	@ D.36996, SegFreeBufLen
	rsb	r1, ip, r1, asr #8	@ tmp602, tmp606,,
	mov	ip, r1, asl #10	@ tmp609, tmp602,
	add	r1, ip, r1, lsl #7	@ tmp610, tmp609, tmp602,
	rsb	r2, r1, r2	@ D.36996, tmp610, D.36996
	rsb	r2, r2, #1152	@ StreamNum, D.36996,
	bne	.L1139	@,
.L1054:
	cmp	r2, #1	@ StreamNum,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	ble	.L1072	@,
	movw	r2, #3608	@,
	ldr	r1, .L1142+16	@,
	mov	r0, #1	@,
	mov	r4, r0	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #36]	@ SrcEaten, %sfp
	mov	r0, r4	@, ScdErrFlag
	ldr	r3, [sp, #76]	@ SegFreeBufLen, SegFreeBufLen
	ldr	r1, .L1142+20	@,
	str	r2, [sp]	@ SrcEaten,
	movw	r2, #3609	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r2, #3610	@,
	b	.L1118	@
.L1131:
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #76	@,,
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #24]	@, %sfp
	add	r4, r3, r4	@ D.37000, LastSegPacket.LenInByte, SegPacketLen
	str	r4, [sp, #204]	@ D.37000, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #76]	@ D.36996, SegFreeBufLen
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L1043	@,
	ldr	r3, [sp, #192]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r3, #0	@ LastSegPacket.VirAddr,
	beq	.L1043	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r3, r2	@ LastSegPacket.LenInByte, D.36996
	bhi	.L1043	@,
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r1, sp, #192	@ tmp819,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_27(D)->InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r4, r0	@ Ret,
	add	r0, sp, #192	@ tmp820,,
	bl	__memzero	@
	cmp	r4, #0	@ Ret,
	bne	.L1140	@,
	ldrd	r6, [sp, #216]	@ LastSegPacket.Pts,,
	mov	r0, #26	@,
	ldr	r2, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1142+24	@,
	bic	r2, r2, #-2147483648	@, MEM[base: _140, offset: 4B],
	strd	r6, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	r1, .L1142+4	@,
	mov	r0, #26	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	ldr	r2, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	str	ip, [sp]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r1, [sp, #72]	@ D.36994, ScdSegNum
	b	.L1046	@
.L1043:
	movw	r2, #3454	@,
	ldr	r1, .L1142+16	@,
	mov	r0, #1	@,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	mov	r4, r0	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #36]	@ SrcEaten, %sfp
	mov	r0, r4	@, ScdErrFlag
	ldr	r3, [sp, #76]	@ SegFreeBufLen, SegFreeBufLen
	ldr	r1, .L1142+20	@,
	str	r2, [sp]	@ SrcEaten,
	movw	r2, #3455	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	mov	r2, #3456	@,
.L1118:
	ldr	r1, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r0, r4	@, ScdErrFlag
	stmia	sp, {r1, ip}	@,,
	ldr	r1, .L1142+28	@,
	bl	dprint_vfmw	@
	b	.L1045	@
.L1132:
	ldr	r3, [sp, #32]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #112	@ tmp780,,
	ldr	r0, [sp, #48]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L1047	@
.L1062:
	ldr	r3, [sp, #52]	@ tmp688, %sfp
	ldr	r2, [sp, #60]	@ D.36996, %sfp
	clz	r3, r3	@ tmp688, tmp688
	cmp	r2, #1152	@ D.36996,
	mov	r3, r3, lsr #5	@ tmp688, tmp688,
	movls	r3, #0	@ tmp688,
	cmp	r3, #0	@ tmp688,
	beq	.L1063	@,
	ldr	r1, .L1142+32	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #40]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L1063	@
.L1136:
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten,
	movle	r1, r5	@ SrcEaten, D.36996
	b	.L1032	@
.L1139:
	ldr	r1, [sp, #112]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r1, #0	@ SegPacket.VirAddr,
	beq	.L1054	@,
	cmp	r3, r0	@ D.37000, D.36996
	bhi	.L1054	@,
	cmp	r2, #1	@ StreamNum,
	ble	.L1113	@,
	ldr	r1, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	add	r3, sp, #112	@ tmp796,,
	ldr	ip, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #44]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _140, offset: 4B],
	ldr	r0, [sp, #40]	@, %sfp
	rsb	lr, lr, ip	@ D.36996, D.36996, SmStateReg.ScdRollAddr
	str	lr, [sp, #124]	@ D.36996, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r1, sp, #112	@ tmp798,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_27(D)->InstID
	bl	InsertStreamSeg	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1119	@,
	ldrd	r2, [sp, #136]	@ tmp799,,
	mov	r0, #26	@,
	ldr	ip, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1142	@,
	strd	r2, [sp]	@ tmp799,
	bic	r2, ip, #-2147483648	@, MEM[base: _140, offset: 4B],
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1142+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #20]	@ tmp723, %sfp
	ldr	lr, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r1, [sp, #28]	@ tmp721, %sfp
	ldr	r3, [r2, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	str	lr, [sp, #120]	@ SegBufAddr, SegPacket.PhyAddr
	rsb	r3, r3, lr	@ D.36996, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, SegBufAddr
	ldr	lr, [sp, #56]	@ D.37000, %sfp
	ldr	ip, [r1, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	add	r1, sp, #112	@ tmp802,,
	ldr	r2, [r2, #2408]	@, pScdInstance_27(D)->InstID
	ldr	r0, [sp, #24]	@, %sfp
	add	r3, ip, r3	@ D.36998, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.36996
	str	lr, [sp, #124]	@ D.37000, SegPacket.LenInByte
	mov	ip, #1	@ tmp636,
	str	r3, [sp, #112]	@ D.36998, SegPacket.VirAddr
	strb	ip, [sp, #117]	@ tmp636, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1141	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	b	.L1116	@
.L1128:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #32]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L1027	@
.L1127:
	ldr	r3, [sp, #24]	@ pStreamSegArray, %sfp
	mov	r5, r3	@ SegBufLength, pStreamSegArray
	str	r3, [sp, #12]	@ pStreamSegArray, %sfp
	b	.L1066	@
.L1134:
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	mov	r4, #0	@ ScdErrFlag,
	b	.L1045	@
.L1033:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r4, [sp, #32]	@ UpMsgStepNum, %sfp
	mov	r1, r4	@, UpMsgStepNum
	rsb	r0, r4, r0	@, UpMsgStepNum,
	bl	__aeabi_uidiv	@
	subs	r3, r0, #1	@ D.36994,,
	str	r3, [sp, #52]	@ D.36994, %sfp
	strmi	r6, [sp, #72]	@ Ret, ScdSegNum
	mov	r2, r3	@ D.36994, D.36994
	movpl	r3, r4	@ UpMsgStepNum, UpMsgStepNum
	mulpl	r3, r3, r2	@ D.37000, UpMsgStepNum, D.36994
	strpl	r2, [sp, #72]	@ D.36994, ScdSegNum
	ldr	r2, [r10, #12]	@ pScdInstance_27(D)->SegFilter.pScdUpMsg, pScdInstance_27(D)->SegFilter.pScdUpMsg
	movmi	r3, #4	@ D.36999,
	strmi	r6, [sp, #52]	@ Ret, %sfp
	addpl	r3, r3, #1	@ D.36999, D.37000,
	movpl	r3, r3, asl #2	@ D.36999, D.36999,
	ldr	r3, [r2, r3]	@ *_131, *_131
	bic	r3, r3, #-2147483648	@ SrcEaten, *_131,
	str	r3, [sp, #36]	@ SrcEaten, %sfp
	b	.L1034	@
.L1138:
	ldr	r3, [sp, #32]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #112	@ tmp787,,
	ldr	r0, [sp, #48]	@, %sfp
	str	ip, [sp, #56]	@ NextSegPhyAddr, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #56]	@ NextSegPhyAddr, %sfp
	b	.L1052	@
.L1140:
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r4, #0	@ ScdErrFlag,
	ldr	r2, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r1, .L1142+36	@,
	str	ip, [sp]	@ LastSegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1045	@
.L1126:
	mvn	r0, #6	@ D.36994,
	bx	lr	@
.L1130:
	ldr	r3, [sp, #52]	@, %sfp
	mov	r0, r10	@, pScdInstance
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	bl	GetNextVop	@
	str	r0, [sp, #52]	@ D.36994, %sfp
	str	r0, [sp, #72]	@ D.36994, ScdSegNum
	b	.L1037	@
.L1137:
	ldr	r3, [fp, #2268]	@ pScdInstance_27(D)->StreamSegArray.SegBufSize, pScdInstance_27(D)->StreamSegArray.SegBufSize
	ldr	r1, [fp, #2420]	@ SrcEaten, pScdInstance_27(D)->TransFormSeg
	ldr	r2, [fp, #2300]	@ pScdInstance_27(D)->SmPushRaw.PushRawTotalLen, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	add	r3, r3, r3, lsl #1	@ D.36996, pScdInstance_27(D)->StreamSegArray.SegBufSize, pScdInstance_27(D)->StreamSegArray.SegBufSize,
	cmp	r3, #0	@ D.36996,
	add	r0, r3, #3	@ tmp446, D.36996,
	rsb	r2, r1, r2	@ D.36996, SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	movlt	r3, r0	@ D.36996, tmp446
	cmp	r2, r3, asr #2	@ D.36996, D.36996,
	ble	.L1032	@,
	ldr	r1, .L1142+40	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	b	.L1032	@
.L1133:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r4, #0	@ ScdErrFlag,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1142+36	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1045	@
.L1141:
	mov	r4, r6	@ Ret, Ret
.L1119:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1142+36	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1045	@
.L1113:
	ldr	fp, [sp, #20]	@ tmp723, %sfp
.L1072:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r2, lr	@, D.36996
	ldr	r1, .L1142+44	@,
	mov	r0, #26	@,
	mov	r4, #0	@ ScdErrFlag,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1045	@
.L1143:
	.align	2
.L1142:
	.word	.LC75
	.word	.LC74
	.word	.LC81
	.word	.LC82
	.word	.LC77
	.word	.LC78
	.word	.LC73
	.word	.LC79
	.word	.LC80
	.word	.LC72
	.word	.LC71
	.word	.LC76
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_SCDIntServeProc
	.type	SM_SCDIntServeProc, %function
SM_SCDIntServeProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, .L1159	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1155	@,
	ldr	r4, .L1159+4	@ tmp188,
	mov	r1, #1	@,
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp141,
	str	r3, [r4, #172]	@ tmp141, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1147	@,
	ldr	r5, [r4, #140]	@ D.37026, s_SmIIS.ThisInstID
.L1148:
	add	r3, r4, r5, lsl #2	@ tmp156, tmp188, D.37026,
	ldr	r1, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r2, .L1159+4	@ tmp154,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1156	@,
	ldr	r3, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1157	@,
.L1151:
	mov	r0, r5	@, D.37026
	mov	r3, #0	@ tmp186,
	str	r3, [r4, #172]	@ tmp186, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L1155:
	ldr	r0, .L1159	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1147:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #140]	@ D.37026, s_SmIIS.ThisInstID
	ldr	r3, .L1159+8	@ tmp149,
	add	r2, r4, r5, lsl #2	@ tmp145, tmp188, D.37026,
	ldr	r1, [r3]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r3, [r2, #176]	@ tmp148, last_rec_pos_time
	rsb	r3, r3, r0	@ D.37024, tmp148, CurTimeInMs
	cmp	r3, r1	@ D.37024, g_TraceBsPeriod
	strhi	r0, [r2, #176]	@ CurTimeInMs, last_rec_pos_time
	b	.L1148	@
.L1156:
	ldr	r0, .L1159	@,
	mov	r3, #0	@ tmp168,
	str	r3, [r2, #172]	@ tmp168, s_SCDInISR
	str	r3, [r2, #144]	@ tmp168, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1157:
	add	r3, r0, #163840	@ tmp175, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_27->Mode, pSmInstArray_27->Mode
	cmp	r3, #1	@ pSmInstArray_27->Mode,
	beq	.L1158	@,
.L1152:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp178,
	str	r3, [r4, #144]	@ tmp178, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r6, .L1159+4	@ tmp177,
	cmp	r0, #0	@,
	bne	.L1151	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp183,
	str	r2, [r6, #144]	@ tmp183, s_SmIIS.SCDState
	str	r3, [r6, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #148]	@, s_SmIIS.LastProcessTime
	b	.L1151	@
.L1158:
	bl	ProcessScdReturn	@
	b	.L1152	@
.L1160:
	.align	2
.L1159:
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	g_TraceBsPeriod
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	SetMaxSegSize
	.type	SetMaxSegSize, %function
SetMaxSegSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanCapLevel	@
	cmp	r0, #32	@ eCapLevel,
	bhi	.L1172	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L1173	@,
	sub	r0, r0, #13	@ tmp131, eCapLevel,
	cmp	r0, #10	@ tmp131,
	ldrls	pc, [pc, r0, asl #2]	@ tmp131
	b	.L1166	@
.L1167:
	.word	.L1170
	.word	.L1170
	.word	.L1170
	.word	.L1170
	.word	.L1170
	.word	.L1168
	.word	.L1168
	.word	.L1168
	.word	.L1168
	.word	.L1168
	.word	.L1168
.L1168:
	mov	r0, #20971520	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1170:
	mov	r0, #4194304	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1166:
	mov	r0, #3145728	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1173:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L1174	@,
	mul	r3, r0, r5	@ D.37040, ChanHeight, ChanWidth
	mov	r0, #57344	@ tmp130,
	movt	r0, 31	@ tmp130,
	cmp	r3, r0	@ D.37040, tmp130
	movle	r0, #3145728	@ D.37038,
	movgt	r0, #20971520	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1172:
	ldr	r1, .L1175	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1174:
	ldr	r1, .L1175+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37038,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1176:
	.align	2
.L1175:
	.word	.LC83
	.word	.LC84
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r2, r1	@ tmp157, pSmCfg
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r2, r2, lsr #5	@ tmp157, tmp157,
	cmp	r0, #0	@ SmID,
	orrne	r2, r2, #1	@,, tmp160, tmp157
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r2, #0	@ tmp160,
	mov	r5, r1	@ pSmCfg, pSmCfg
	bne	.L1197	@,
	ldr	r7, .L1199	@ tmp238,
	add	r3, r7, r0, lsl #2	@ tmp164, tmp238, SmID,
	ldr	r6, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L1183	@,
	ldr	r3, [r1, #12]	@ D.37048, pSmCfg_10(D)->BufPhyAddr
	ldr	r2, [r6, #60]	@ pSmInstArray_15->Config.BufPhyAddr, pSmInstArray_15->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_15->Config.BufPhyAddr, D.37048
	addeq	r4, r6, #48	@ D.37055, pSmInstArray,
	beq	.L1182	@,
	cmp	r3, #0	@ D.37048,
	beq	.L1183	@,
	ldr	r3, [r1]	@ pSmCfg_10(D)->pBufVirAddr, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_10(D)->pBufVirAddr,
	beq	.L1183	@,
	ldr	ip, [r7, #32]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r4, r6, #163840	@ tmp239, pSmInstArray,
	ldr	r9, [r7, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r3, #1152	@ tmp194,
	ldr	r8, [r7, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	ldr	lr, [r7, #28]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	ldr	r1, [r7, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	ldr	r2, [r7, #40]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	ip, [r4, #2324]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].UpMsgPhyAddr
	str	r9, [r4, #2312]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].DownMsgPhyAddr
	str	r8, [r4, #2316]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pDownMsgVirAddr
	str	r1, [r4, #2328]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pUpMsgVirAddr
	str	lr, [r4, #2320]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].DownMsgSize
	str	r2, [r4, #2332]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].UpMsgSize
	str	r3, [r4, #2336]	@ tmp194, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].UpMsgNum
	ldr	r2, [r5, #12]	@ D.37048, pSmCfg_10(D)->BufPhyAddr
	ldr	r3, [r5, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	add	r1, r2, #3	@ D.37048, D.37048,
	ldr	lr, [r5]	@ D.37049, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #6	@ pSmCfg_10(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.37048,
	rsb	r8, r2, r1	@ ByteOffsetInWord, D.37048, TmpPhyAddr
	movne	ip, #131072	@ D.37046,
	moveq	ip, #1048576	@ D.37046,
	mov	r9, ip	@ s32ScdBlankSegLen, D.37046
	add	r1, r1, ip	@ D.37048, TmpPhyAddr, s32ScdBlankSegLen
	add	ip, ip, r8	@ D.37046, D.37046, ByteOffsetInWord
	str	r1, [r4, #2400]	@ D.37048, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufPhyAddr
	add	ip, lr, ip	@ D.37049, D.37049, D.37046
	str	ip, [r4, #2308]	@ D.37049, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r5, #16]	@ pSmCfg_10(D)->BufSize, pSmCfg_10(D)->BufSize
	rsb	r2, r8, r1	@ D.37048, ByteOffsetInWord, pSmCfg_10(D)->BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.37048
	blt	.L1198	@,
	rsb	r3, r9, r2	@ D.37048, s32ScdBlankSegLen, D.37048
	sub	r3, r3, #1024	@ D.37048, D.37048,
	str	r3, [r4, #2404]	@ D.37048, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufSize
	cmp	r3, #262144	@ D.37048,
	blt	.L1183	@,
.L1187:
	add	r0, r6, #73728	@, pSmInstArray,
	ldr	r2, [r4, #2308]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pSegBufVirAddr
	ldr	r1, [r4, #2400]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufPhyAddr
	add	r0, r0, #192	@,,
	bl	ConfigStreamSegArray	@
	add	r4, r6, #48	@ D.37055, pSmInstArray,
	ldr	r3, [r5, #20]	@ pSmCfg_10(D)->RegPhyBaseAddr, pSmCfg_10(D)->RegPhyBaseAddr
	mov	r2, #120	@,
	mov	r0, r4	@, D.37055
	mov	r1, r5	@, pSmCfg
	str	r3, [r7]	@ pSmCfg_10(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L1182:
	add	r6, r6, #176128	@ tmp231, pSmInstArray,
	mov	r0, r4	@, D.37055
	mov	r2, #120	@,
	mov	r1, r5	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp232,
	str	r3, [r6, #3996]	@ tmp232, pSmInstArray_15->UpMsgStepNum
	ldr	r3, [r5, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	cmp	r3, #2	@ pSmCfg_10(D)->VidStd,
	moveq	r0, #0	@ D.37045,
	movne	r0, #0	@ D.37045,
	moveq	r3, #3	@ tmp236,
	streq	r3, [r6, #3996]	@ tmp236, pSmInstArray_15->UpMsgStepNum
.L1179:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1198:
	rsb	r3, r9, r0	@ D.37048, s32ScdBlankSegLen, SmMaxSegBufSize
	sub	r3, r3, #1024	@ D.37048, D.37048,
	str	r3, [r4, #2404]	@ D.37048, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufSize
	b	.L1187	@
.L1183:
	mvn	r0, #0	@ D.37045,
	b	.L1179	@
.L1197:
	str	r1, [sp]	@ pSmCfg,
	mov	r3, r0	@, SmID
	movw	r2, #1707	@,
	ldr	r1, .L1199+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37045,
	b	.L1179	@
.L1200:
	.align	2
.L1199:
	.word	.LANCHOR0
	.word	.LC85
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	bne	.L1209	@,
	ldr	r3, .L1214	@ tmp130,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #124
	sub	sp, sp, #124	@,,
	ldr	r4, [r3, #128]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L1212	@,
	ldr	r3, [r4, #84]	@ MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag
	sub	r3, r3, #1	@ D.37067, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ D.37067,
	bls	.L1213	@,
.L1204:
	mov	r6, #0	@ tmp135,
	mvn	r3, #0	@ tmp136,
	str	r6, [r4, #84]	@ tmp135, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag
	mov	r2, #120	@,
	str	r3, [r4, #80]	@ tmp136, MEM[(struct SM_INSTANCE_S *)__p_7].Config.LastRawDisContinueCount
	add	r1, r4, #48	@, __p,
	mov	r0, sp	@,
	add	r5, r4, #163840	@ tmp178, __p,
	bl	memcpy	@
	mov	r0, r6	@, tmp135
	ldr	r6, [r5, #2412]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
	bl	SM_Stop	@
	adds	r7, r4, #168	@ D.37070, __p,
	beq	.L1205	@,
	add	r2, r4, #73728	@ tmp146, __p,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail
	ldr	r1, [r2, #168]	@ MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
.L1208:
	mov	r0, r7	@, D.37070
	mvn	r8, #0	@ tmp161,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	mvn	r9, #0	@,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #49056	@,
	mov	r0, r4	@, __p
	movt	r1, 2	@,
	ldrb	r7, [r5, #2408]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_7].InstID
	bl	__memzero	@
	add	r3, r4, #179200	@ tmp159, __p,
	add	r4, r4, #176128	@ tmp163, __p,
	add	r3, r3, #896	@ tmp159, tmp159,
	mov	r2, #2	@ tmp164,
	mov	r1, sp	@,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mov	r0, #0	@,
	str	r7, [r5, #2408]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_7].InstID
	strd	r8, [r3, #-8]	@ tmp161, tmp159,
	sub	r6, r6, #1	@ D.37067, TmpMode,
	str	r2, [r4, #3996]	@ tmp164, MEM[(struct SM_INSTANCE_S *)__p_7].UpMsgStepNum
	bl	SM_Config	@
	cmp	r6, #1	@ D.37067,
	movls	r0, #0	@ D.37065,
	movls	r3, #1	@ tmp169,
	movhi	r0, #0	@ tmp172,
	strls	r3, [r5, #2412]	@ tmp169, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
	strhi	r0, [r5, #2412]	@ tmp172, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
.L1210:
	add	sp, sp, #124	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1205:
	ldr	r1, .L1214+4	@,
	movw	r3, #1427	@,
	ldr	r2, .L1214+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, r7	@ D.37071, D.37070
	b	.L1208	@
.L1213:
	add	r1, r4, #96	@, __p,
	bl	ReleaseRawStreamData	@
	b	.L1204	@
.L1209:
	mvn	r0, #0	@ D.37065,
	bx	lr	@
.L1212:
	movw	r2, #1406	@,
	ldr	r1, .L1214+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37065,
	b	.L1210	@
.L1215:
	.align	2
.L1214:
	.word	.LANCHOR0
	.word	.LC87
	.word	.LANCHOR1+40
	.word	.LC86
	.fnend
	.size	SM_Reset, .-SM_Reset
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
	.type	__func__.33114, %object
	.size	__func__.33114, 17
__func__.33114:
	.ascii	"GetRawNumOffsert\000"
	.space	3
	.type	__func__.33207, %object
	.size	__func__.33207, 17
__func__.33207:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	__func__.33243, %object
	.size	__func__.33243, 9
__func__.33243:
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
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
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
	.ascii	"DelRaw err PacketNum=%d,DelNum=%d\012\000"
	.space	1
.LC12:
	.ascii	"Release RawPhyAddr=0x%x,Len=%d\012\000"
.LC13:
	.ascii	"%s %d FMW_OK !=  GetRawStreamNum!!\012\000"
.LC14:
	.ascii	"line: %d pSmInstArray is NULL!\012\000"
.LC15:
	.ascii	"CheckStream.InstID %d\012\000"
	.space	1
.LC16:
	.ascii	"Read_seg SegPacket.PhyAddr=0x%x, LenByte=%d, IsLast"
	.ascii	"Seg=%d\012\000"
	.space	1
.LC17:
	.ascii	"-------- forece release seg[%d] -----------\012\000"
	.space	3
.LC18:
	.ascii	"\012\000"
	.space	2
.LC19:
	.ascii	"0x%02x,\000"
.LC20:
	.ascii	"Release SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg"
	.ascii	"=%d StreamID=%d\012\000"
.LC21:
	.ascii	"Array out of bound in function %s\012\000"
	.space	1
.LC22:
	.ascii	"Release Err StreamID %d in function %s\012\000"
.LC23:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC24:
	.ascii	"line: %d\012\000"
	.space	2
.LC25:
	.ascii	"Raw packet TOO BIG! can't copy to seg! Len: %#x\012"
	.ascii	"\000"
	.space	3
.LC26:
	.ascii	"line: %d, delet raw failed!\012\000"
	.space	3
.LC27:
	.ascii	"Raw packet(VFMW_RAW YUV) TOO BIG(maybe caused by w/"
	.ascii	"h... err)! can't copy to seg!\012\000"
	.space	2
.LC28:
	.ascii	"VFMW_RAW YUV disp w/h err)! discard raw packet!\012"
	.ascii	"\000"
	.space	3
.LC29:
	.ascii	"copy raw to seg fail\012\000"
	.space	2
.LC30:
	.ascii	"***Print Up Msg Now\012\000"
	.space	3
.LC31:
	.ascii	"ScdUpMsg[%d] = 0x%x\012\000"
	.space	3
.LC32:
	.ascii	"line; %d, Flag = %d, pSmInstArray = %p\012\000"
.LC33:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReadRawStreamData pStreamIntf is NULL!\000"
	.space	3
.LC34:
	.ascii	"line: %d s_SmIIS.pSmInstArray[%d] is NULL\012\000"
	.space	1
.LC35:
	.ascii	"raw_pts: %lld\012\000"
	.space	1
.LC36:
	.ascii	"Get RawPhyAddr=0x%x,Len=%d\012\000"
.LC37:
	.ascii	"!!!push raw err!!!\012\000"
.LC38:
	.ascii	"GetSegStreamNum err!!!\012\000"
.LC39:
	.ascii	"DisContinueRawPacket found! %d ---> %d\012\000"
.LC40:
	.ascii	"Chan%d raw full\012\000"
	.space	3
.LC41:
	.ascii	"Chan %d has been destroyed or the function pointer "
	.ascii	"-- ReleaseRawStreamData pStreamIntf is NULL!\000"
.LC42:
	.ascii	"SmID = %d is not expected!\012\000"
.LC43:
	.ascii	"RawNum %lld <= RawNumInVfmw %lld\012\000"
	.space	2
.LC44:
	.ascii	"***Print Scd Vtrl Reg Now\012\000"
	.space	1
.LC45:
	.ascii	"DownMsgPhyAddr = %x\012\000"
	.space	3
.LC46:
	.ascii	"UpMsgPhyAddr = %x\012\000"
	.space	1
.LC47:
	.ascii	"UpLen = %x\012\000"
.LC48:
	.ascii	"BufferFirst = %x\012\000"
	.space	2
.LC49:
	.ascii	"BufferLast = %x\012\000"
	.space	3
.LC50:
	.ascii	"BufferIni = %x\012\000"
.LC51:
	.ascii	"ScdProtocol = %x\012\000"
	.space	2
.LC52:
	.ascii	"ScdStart = %x\012\000"
	.space	1
.LC53:
	.ascii	"***Print Down Msg Now\012\000"
	.space	1
.LC54:
	.ascii	"DownMsgVirAddr = %x   \012\000"
.LC55:
	.ascii	"DownMsgPhyAddr = %x   \012\000"
.LC56:
	.ascii	"DownMsg[%d] = %x   \000"
.LC57:
	.ascii	"RawStreamSize=%d\012\000"
	.space	2
.LC58:
	.ascii	"SegStreamNum=%d\012\000"
	.space	3
.LC59:
	.ascii	"SegStreamSize=%d\012\000"
	.space	2
.LC60:
	.ascii	"RawStreamNum=%d\012\000"
	.space	3
.LC61:
	.ascii	"VFMW_RAW SM_CopyYuvToDnr fail\012\000"
	.space	1
.LC62:
	.ascii	"long time(%d ms) not release stream seg, release an"
	.ascii	"yway!\012\000"
	.space	2
.LC63:
	.ascii	"###################### SCD not ready ##############"
	.ascii	"#############\012\000"
	.space	2
.LC64:
	.ascii	"***Print Scd State Reg\012\000"
.LC65:
	.ascii	"Scdover = %d \012\000"
	.space	1
.LC66:
	.ascii	"ScdInt = %d \012\000"
	.space	2
.LC67:
	.ascii	"ShortScdNum = %d \012\000"
	.space	1
.LC68:
	.ascii	"ScdNum = %d \012\000"
	.space	2
.LC69:
	.ascii	"ScdRollAddr = %0x \012\000"
.LC70:
	.ascii	"SrcEaten = %d \012\000"
.LC71:
	.ascii	"Error! (PushRawTotalLen - SrcEaten) > SM_RAW_DISCAR"
	.ascii	"D_SIZE, packet discard...\012\000"
	.space	2
.LC72:
	.ascii	"Insert err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,Is"
	.ascii	"LastSeg=%d\012\000"
	.space	1
.LC73:
	.ascii	"RawLen = %d, Pts = %ld, \012\000"
	.space	2
.LC74:
	.ascii	"Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLastSeg=%d\012"
	.ascii	"\000"
.LC75:
	.ascii	"RawLen = %d, Pts =  %lld, \012\000"
.LC76:
	.ascii	"Insert 2 err Scd SegPacket.PhyAddr=0x%x,LenByte=%d,"
	.ascii	"IsLastSeg=%d\012\000"
	.space	3
.LC77:
	.ascii	"line %d CheckSeg err\012\000"
	.space	2
.LC78:
	.ascii	"line %d SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC79:
	.ascii	"line %d Scd SegPacket.PhyAddr=0x%x,LenByte=%d,IsLas"
	.ascii	"tSeg=%d\012\000"
.LC80:
	.ascii	"ReadScdSegNum = %d, FilterScdSegNum = 0 release raw"
	.ascii	" packet anyway!\012\000"
.LC81:
	.ascii	"CheckSeg err\012\000"
	.space	2
.LC82:
	.ascii	"SegFreeBufLen=%d,SrcEaten=%d\000"
	.space	3
.LC83:
	.ascii	"SetMaxSegSize get eCapLevel failed!\012\000"
	.space	3
.LC84:
	.ascii	"SetMaxSegSize get ChanWidth/ChanHeight failed!\012\000"
.LC85:
	.ascii	"line: %d, SmID = %d, pSmCfg = %p is not expected!\012"
	.ascii	"\000"
	.space	1
.LC86:
	.ascii	"line: %d, pSmInstArray is NULL!\012\000"
	.space	3
.LC87:
	.ascii	"%s %d FMW_OK !=  GetRawStreamNum !!\012\000"
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
	.size	s_SmIIS, 140
s_SmIIS:
	.space	140
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	LastEventTime.33363, %object
	.size	LastEventTime.33363, 4
LastEventTime.33363:
	.space	4
	.type	last_rec_pos_time.33568, %object
	.size	last_rec_pos_time.33568, 4
last_rec_pos_time.33568:
	.space	4
	.type	last_rec_pos_time.33650, %object
	.size	last_rec_pos_time.33650, 4
last_rec_pos_time.33650:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.33664, %object
	.size	last_rec_pos_time.33664, 4
last_rec_pos_time.33664:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
