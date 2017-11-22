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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(scd_drv)
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
	bic	r3, r3, #63	@ D.38148, tmp215,
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
	mov	r4, #10	@ ivtmp.258,
	bic	r3, r3, #63	@ D.38148, tmp215,
	mov	r5, r2	@ calbakBaseaddr, tmp182
	str	r2, [r3, #8]	@ tmp182, _96->addr_limit
	mov	r2, #0	@ tmp183,
	mov	r3, #0	@,
	strd	r2, [r8, #-8]!	@ tmp183, pos
	b	.L16	@
.L18:
	strd	r10, [sp, #24]	@ ivtmp.258,,
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
	mov	r10, r4	@ ivtmp.258, ivtmp.258
	mov	fp, r4, asr #31	@ ivtmp.258, ivtmp.258,
	add	r2, sp, #20	@ tmp226,,
	ldr	r1, .L26+8	@,
	add	r4, r4, #10	@ ivtmp.258, ivtmp.258,
	subs	r3, r0, #0	@ D.38149,
	mov	r0, r6	@, data
	bne	.L18	@,
	mov	r1, r3	@, D.38149
	mov	r0, r9	@, fp
	str	r3, [sp, #12]	@ D.38149, %sfp
	bl	filp_close	@
	ldr	r3, [sp, #4]	@ tmp215, %sfp
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	bic	r10, r3, #63	@ D.38148, tmp215,
	ldr	r3, [sp, #8]	@ fs, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r3, [r10, #8]	@ fs, _98->addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp214,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #12]	@ D.38149, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r3	@, D.38149
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
	ldr	r1, .L37	@ ivtmp.271,
	mov	r3, #0	@ i,
.L31:
	ldr	r2, [r1, #4]!	@ D.38179, MEM[base: _14, offset: 0B]
	cmp	r2, #0	@ D.38179,
	add	ip, r2, #168	@ D.38180, D.38179,
	beq	.L29	@,
	cmp	r0, ip	@ pRawArray, D.38180
	beq	.L32	@,
.L29:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #4	@ i,
	bne	.L31	@,
	mvn	r0, #0	@ D.38178,
	bx	lr	@
.L32:
	mov	r0, r3	@ D.38178, i
	bx	lr	@
.L38:
	.align	2
.L37:
	.word	.LANCHOR0+244
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
	ldr	r5, .L50	@ tmp148,
	ldr	ip, [r5]	@ D.38192, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	mov	r6, r0	@ D.38191,
	bne	.L43	@,
	movw	r0, #9999	@ D.38195,
	b	.L41	@
.L49:
	subs	r0, r0, #1	@ D.38195, D.38195,
	beq	.L48	@,
.L41:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L49	@,
.L43:
	ldr	r3, .L50+4	@ tmp141,
	bfc	r4, #5, #1	@ u32TmpValue,,
	and	r1, r6, #1	@, D.38191,
	str	r4, [ip, #120]	@ u32TmpValue, _38->PERI_CRG30.u32
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L48:
	ldr	r1, .L50+8	@,
	bl	dprint_vfmw	@
	ldr	ip, [r5]	@ D.38192, g_pstRegCrg
	b	.L43	@
.L51:
	.align	2
.L50:
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
	ldr	r3, .L53	@ tmp113,
	mov	r1, #1	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L54:
	.align	2
.L53:
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
	ldr	r3, .L56	@ tmp113,
	mov	r1, #0	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L57:
	.align	2
.L56:
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
	beq	.L62	@,
	add	r4, r0, #73728	@ tmp133, pRawStreamArray,
	ldmib	r4, {ip, lr}	@ tmp133,,
	add	r3, ip, #1	@ D.38211, D.38211,
	mov	r2, r3, asr #31	@ tmp136, D.38211,
	mov	r2, r2, lsr #22	@ tmp137, tmp136,
	add	r3, r3, r2	@ tmp138, D.38211, tmp137
	ubfx	r3, r3, #0, #10	@ tmp139, tmp138,,
	rsb	r3, r2, r3	@ D.38211, tmp137, tmp139
	cmp	r3, lr	@ D.38211, pRawStreamArray_3(D)->History
	beq	.L63	@,
	mov	r3, ip, asl #6	@ tmp146, D.38211,
	mov	r2, #72	@,
	add	ip, r3, ip, lsl #3	@ tmp147, tmp146, D.38211,
	add	r0, r0, ip	@, pRawStreamArray, tmp147
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	mov	r0, r5	@ D.38209, tmp131
	add	r3, r3, #1	@ D.38211, pRawStreamArray_3(D)->Tail,
	mov	r2, r3, asr #31	@ tmp159, D.38211,
	mov	r2, r2, lsr #22	@ tmp160, tmp159,
	add	r3, r3, r2	@ tmp161, D.38211, tmp160
	ubfx	r3, r3, #0, #10	@ tmp162, tmp161,,
	rsb	r3, r2, r3	@ D.38211, tmp160, tmp162
	str	r3, [r4, #4]	@ D.38211, pRawStreamArray_3(D)->Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L62:
	mvn	r0, #0	@ D.38209,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L63:
	mvn	r0, #3	@ D.38209,
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
	cmp	r0, #3	@ SmID,
	bhi	.L68	@,
	ldr	r3, .L70	@ tmp119,
	add	r0, r3, r0, lsl #2	@ tmp121, tmp119, SmID,
	ldr	r3, [r0, #248]	@ D.38220, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38220,
	beq	.L68	@,
	add	r2, r3, #73728	@ tmp124, D.38220,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_5 + 168B].History, MEM[(struct RAW_ARRAY_S *)_5 + 168B].History
	add	r3, r3, #1	@ D.38221, MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp128, D.38221,
	mov	r2, r2, lsr #22	@ tmp129, tmp128,
	add	r3, r3, r2	@ tmp130, D.38221, tmp129
	ubfx	r3, r3, #0, #10	@ tmp131, tmp130,,
	rsb	r3, r2, r3	@ D.38221, tmp129, tmp131
	cmp	r3, r1	@ D.38221, MEM[(struct RAW_ARRAY_S *)_5 + 168B].History
	mvneq	r0, #3	@ D.38218,
	movne	r0, #0	@ D.38218,
	bx	lr	@
.L68:
	mvn	r0, #3	@ D.38218,
	bx	lr	@
.L71:
	.align	2
.L70:
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
	beq	.L74	@,
	add	ip, r0, #73728	@ tmp128, pRawStreamArray,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [ip]	@ D.38226, pRawStreamArray_3(D)->Head
	ldr	r0, [ip, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r2, r0	@ D.38226, pRawStreamArray_3(D)->Tail
	beq	.L75	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp136, D.38226,
	add	r1, r1, r2, lsl #3	@ tmp137, tmp136, D.38226,
	str	r2, [ip, #16]	@ D.38226, pRawStreamArray_3(D)->CurShowIndex
	add	r1, r3, r1	@, pRawStreamArray, tmp137
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.38224, tmp126
	ldmfd	sp!, {r4, pc}	@
.L74:
	mvn	r0, #0	@ D.38224,
	ldmfd	sp!, {r4, pc}	@
.L75:
	mvn	r0, #2	@ D.38224,
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
	beq	.L79	@,
	add	lr, r0, #73728	@ tmp130, pRawStreamArray,
	mov	ip, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [lr, #16]	@ pRawStreamArray_3(D)->CurShowIndex, pRawStreamArray_3(D)->CurShowIndex
	ldr	r0, [lr, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	add	r2, r2, #1	@ D.38235, pRawStreamArray_3(D)->CurShowIndex,
	mov	r3, r2, asr #31	@ tmp133, D.38235,
	mov	r3, r3, lsr #22	@ tmp134, tmp133,
	add	r2, r2, r3	@ tmp135, D.38235, tmp134
	ubfx	r2, r2, #0, #10	@ tmp136, tmp135,,
	rsb	r3, r3, r2	@ tmp137, tmp134, tmp136
	cmp	r0, r3	@ pRawStreamArray_3(D)->Tail, tmp137
	beq	.L80	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r3, asl #6	@ tmp145, tmp137,
	add	r1, r1, r3, lsl #3	@ tmp146, tmp145, tmp137,
	str	r3, [lr, #16]	@ tmp137, pRawStreamArray_3(D)->CurShowIndex
	add	r1, ip, r1	@, pRawStreamArray, tmp146
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.38233, tmp128
	ldmfd	sp!, {r4, pc}	@
.L79:
	mvn	r0, #0	@ D.38233,
	ldmfd	sp!, {r4, pc}	@
.L80:
	mvn	r0, #2	@ D.38233,
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
	beq	.L84	@,
	add	r3, r0, #73728	@ tmp120, pRawStreamArray,
	ldmia	r3, {r2, ip}	@ tmp120,,
	cmp	r2, ip	@ D.38243, pRawStreamArray_3(D)->Tail
	beq	.L85	@,
	mov	ip, r2, asl #6	@ tmp129, D.38243,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.38243,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L86	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.38242,
	ldr	pc, [sp], #4	@
.L86:
	mvn	r0, #0	@ D.38242,
	ldr	pc, [sp], #4	@
.L85:
	mvn	r0, #2	@ D.38242,
	bx	lr	@
.L84:
	mvn	r0, #0	@ D.38242,
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
	beq	.L91	@,
	add	r3, r0, #73728	@ tmp128, pRawStreamArray,
	ldr	ip, [r3]	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Head
	ldr	r0, [r3, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	ip, r0	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Tail
	beq	.L92	@,
	ldr	r3, [r3, #12]	@ D.38248, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.38246, tmp126
	str	r3, [r1]	@ D.38248, *pOffset_5(D)
	bx	lr	@
.L91:
	mvn	r0, #0	@ D.38246,
	bx	lr	@
.L92:
	mvn	r0, #2	@ D.38246,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	moveq	r9, #1	@ tmp150,
	movne	r9, #0	@ tmp150,
	beq	.L109	@,
	ldr	r2, .L123	@ ivtmp.316,
	mov	r7, r1	@ DelNum, DelNum
	mov	r6, r0	@ pRawStreamArray, pRawStreamArray
.L98:
	ldr	r3, [r2, #4]!	@ D.38271, MEM[base: _1, offset: 0B]
	cmp	r3, #0	@ D.38271,
	add	r1, r3, #168	@ D.38273, D.38271,
	beq	.L95	@,
	cmp	r6, r1	@ pRawStreamArray, D.38273
	beq	.L121	@,
.L95:
	add	r9, r9, #1	@ i, i,
	cmp	r9, #4	@ i,
	bne	.L98	@,
.L96:
	movw	r2, #523	@,
	ldr	r1, .L123+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38268,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L121:
	cmp	r9, #0	@ i,
	blt	.L96	@,
	add	r8, r6, #73728	@ tmp211, pRawStreamArray,
	ldr	r2, [r8, #4]	@ D.38270, pRawStreamArray_9(D)->Tail
	ldr	r3, [r8]	@ D.38270, pRawStreamArray_9(D)->Head
	cmp	r3, r2	@ D.38270, D.38270
	addgt	r2, r2, #1024	@ D.38270, D.38270,
	rsb	r2, r3, r2	@ PacketNum, D.38270, D.38270
	cmp	r2, r7	@ PacketNum, DelNum
	bcc	.L122	@,
	cmp	r7, #0	@ DelNum,
	mov	r4, r3	@ j, D.38270
	beq	.L102	@,
	add	r9, r9, #58	@ tmp210, i,
	ldr	r3, .L123+8	@ tmp212,
	mov	r5, #0	@ i,
	add	r9, r3, r9, lsl #2	@ tmp215, tmp212, tmp210,
.L103:
	mov	r3, r4, asl #6	@ tmp163, j,
	ldr	r1, .L123+12	@,
	add	r3, r3, r4, lsl #3	@ tmp164, tmp163, j,
	mov	r0, #26	@,
	add	r10, r6, r3	@ tmp165, pRawStreamArray, tmp164
	add	r5, r5, #1	@ i, i,
	ldr	r2, [r6, r3]	@, pRawStreamArray_9(D)->RawPacket[j_57].PhyAddr
	add	r4, r4, #1	@ D.38272, j,
	ldr	r3, [r10, #8]	@, pRawStreamArray_9(D)->RawPacket[j_57].Length
	ubfx	r4, r4, #0, #10	@ j, D.38272,,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #16]	@ D.38271, s_SmIIS.pSmInstArray
	ldr	r1, [r10, #8]	@ pRawStreamArray_9(D)->RawPacket[j_57].Length, pRawStreamArray_9(D)->RawPacket[j_57].Length
	cmp	r5, r7	@ i, DelNum
	add	r3, r3, #73728	@ tmp180, D.38271,
	ldr	r2, [r3, #188]	@ _28->RawPacketArray.RawTotalSize, _28->RawPacketArray.RawTotalSize
	rsb	r2, r1, r2	@ D.38270, pRawStreamArray_9(D)->RawPacket[j_57].Length, _28->RawPacketArray.RawTotalSize
	bic	r2, r2, r2, asr #31	@ D.38270, D.38270
	str	r2, [r3, #188]	@ D.38270, _28->RawPacketArray.RawTotalSize
	bne	.L103	@,
	ldr	r3, [r8]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp195,
	str	r0, [r8, #12]	@ tmp195, pRawStreamArray_9(D)->FirstPacketOffset
	add	r5, r5, r3	@ D.38270, i, pRawStreamArray_9(D)->Head
	str	r5, [r8]	@ D.38270, pRawStreamArray_9(D)->Head
	cmp	r5, #1024	@ D.38270,
	subge	r5, r5, #1024	@ D.38270, D.38270,
	strge	r5, [r8]	@ D.38270, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L102:
	cmp	r3, #1024	@ D.38270,
	str	r3, [r8]	@ D.38270, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.38268,
	subge	r3, r3, #1024	@ D.38270, D.38270,
	strge	r3, [r8]	@ D.38270, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L109:
	mvn	r0, #0	@ D.38268,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L122:
	mov	r3, r7	@, DelNum
	ldr	r1, .L123+16	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38268,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L124:
	.align	2
.L123:
	.word	.LANCHOR0+244
	.word	.LC10
	.word	.LANCHOR0
	.word	.LC12
	.word	.LC11
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
	clz	lr, r0	@ D.38284, pRawStreamArray
	.pad #20
	sub	sp, sp, #20	@,,
	mov	lr, lr, lsr #5	@ D.38284, D.38284,
	add	r8, sp, #72	@,,
	orrs	ip, lr, r1, lsr #31	@, tmp360, D.38284, Len,
	ldr	r7, [sp, #56]	@ pPts, pPts
	ldmia	r8, {r8, r9, r10, fp}	@,,,,
	bne	.L135	@,
	cmp	r3, #0	@ pOffset,
	cmpne	r2, #0	@, pNum,
	moveq	ip, #1	@ tmp181,
	movne	ip, #0	@ tmp181,
	beq	.L135	@,
	stmib	sp, {r2, r3}	@,,
	add	r3, r0, #73728	@ tmp339, pRawStreamArray,
	cmp	lr, #0	@ D.38284,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	lr, [r3]	@ D.38285, pRawStreamArray_10(D)->Head
	mov	r6, r1	@ Len, Len
	ldr	r0, [r3, #12]	@ pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->FirstPacketOffset
	str	r3, [sp]	@ tmp339, %sfp
	mov	r1, lr, asl #3	@ tmp340, D.38285,
	mov	r3, lr, asl #6	@ tmp341, D.38285,
	add	r2, r1, r3	@ tmp187, tmp340, tmp341
	add	r2, r5, r2	@ tmp188, pRawStreamArray, tmp187
	ldr	r4, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[_20].Length, pRawStreamArray_10(D)->RawPacket[_20].Length
	rsb	r4, r0, r4	@ TotalLen, pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->RawPacket[_20].Length
	bne	.L127	@,
	ldr	r2, [sp]	@ tmp339, %sfp
	ldr	ip, [r2, #4]	@ pRawStreamArray_10(D)->Tail, pRawStreamArray_10(D)->Tail
	subs	ip, ip, lr	@ RawNum, pRawStreamArray_10(D)->Tail, D.38285
	addmi	ip, ip, #1024	@ RawNum, RawNum,
.L133:
	add	r1, r1, r3	@ tmp200, tmp340, tmp341
	ldr	r0, [sp, #60]	@ tmp365, pUsertag
	add	r1, r5, r1	@ tmp201, pRawStreamArray, tmp200
	add	lr, ip, lr	@ RawNum, RawNum, D.38285
	ldrd	r2, [r1, #16]	@ D.38286, tmp201,
	strd	r2, [r7]	@ D.38286, *pPts_28(D)
	ldrd	r2, [r1, #32]	@ D.38286, tmp201,
	strd	r2, [r0]	@ D.38286, *pUsertag_31(D)
	ldrd	r2, [r1, #16]	@ D.38286, tmp201,
	ldr	r0, [sp, #64]	@ tmp366, pDisptime
	strd	r2, [fp]	@ D.38286, *pRawPts_34(D)
	ldrd	r2, [r1, #40]	@ D.38286, tmp201,
	strd	r2, [r0]	@ D.38286, *pDisptime_37(D)
	ldr	r2, [sp, #68]	@ tmp367, pDispEnableFlag
	ldr	r3, [r1, #56]	@ D.38287, pRawStreamArray_10(D)->RawPacket[_110].DispEnableFlag
	str	r3, [r2]	@ D.38287, *pDispEnableFlag_40(D)
	ldr	r3, [r1, #60]	@ D.38287, pRawStreamArray_10(D)->RawPacket[_110].DispFrameDistance
	str	r3, [r8]	@ D.38287, *pDispFrameDistance_43(D)
	ldr	r3, [r1, #64]	@ D.38287, pRawStreamArray_10(D)->RawPacket[_110].DistanceBeforeFirstFrame
	str	r3, [r9]	@ D.38287, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r1, #68]	@ D.38287, pRawStreamArray_10(D)->RawPacket[_110].GopNum
	str	r3, [r10]	@ D.38287, *pGopNum_49(D)
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	ip, [r3]	@ i, pRawStreamArray_10(D)->Head
	cmp	r6, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	strgt	r8, [sp, #72]	@ pDispFrameDistance, pDispFrameDistance
	strgt	r9, [sp, #76]	@ pDistanceBeforeFirstFrame, pDistanceBeforeFirstFrame
	bgt	.L131	@,
	b	.L132	@
.L130:
	strd	r0, [r7]	@ D.38283, *pPts_28(D)
	cmp	r6, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	ldrd	r0, [r2, #32]	@ D.38286, tmp278,
	ldr	r3, [sp, #60]	@ tmp372, pUsertag
	strd	r0, [r3]	@ D.38286, *pUsertag_31(D)
	ldrd	r0, [r2, #16]	@ D.38286, tmp278,
	ldr	r3, [sp, #64]	@ tmp373, pDisptime
	strd	r0, [fp]	@ D.38286, *pRawPts_34(D)
	ldrd	r0, [r2, #40]	@ D.38286, tmp278,
	strd	r0, [r3]	@ D.38286, *pDisptime_37(D)
	ldr	r1, [sp, #68]	@ tmp374, pDispEnableFlag
	ldr	r3, [r2, #56]	@ D.38287, pRawStreamArray_10(D)->RawPacket[Index_53].DispEnableFlag
	str	r3, [r1]	@ D.38287, *pDispEnableFlag_40(D)
	ldr	r1, [sp, #72]	@ tmp384, pDispFrameDistance
	ldr	r3, [r2, #60]	@ D.38287, pRawStreamArray_10(D)->RawPacket[Index_53].DispFrameDistance
	str	r3, [r1]	@ D.38287, *pDispFrameDistance_43(D)
	ldr	r1, [sp, #76]	@ tmp383, pDistanceBeforeFirstFrame
	ldr	r3, [r2, #64]	@ D.38287, pRawStreamArray_10(D)->RawPacket[Index_53].DistanceBeforeFirstFrame
	str	r3, [r1]	@ D.38287, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r2, #68]	@ D.38287, pRawStreamArray_10(D)->RawPacket[Index_53].GopNum
	str	r3, [r10]	@ D.38287, *pGopNum_49(D)
	ble	.L140	@,
.L131:
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
	ldrd	r0, [r2, #16]	@ D.38283, tmp264,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_53].Length, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	cmp	r1, r9	@ D.38283,
	cmpeq	r0, r8	@ D.38283, tmp371
	add	r4, r4, r3	@ TotalLen, TotalLen, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	ldreqd	r0, [r7]	@ D.38283, *pPts_28(D)
	b	.L130	@
.L140:
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	r1, [r3]	@ D.38285, pRawStreamArray_10(D)->Head
	cmp	r1, ip	@ D.38285, i
	beq	.L132	@,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_105].Length, pRawStreamArray_10(D)->RawPacket[Index_105].Length
	mov	r0, #0	@ D.38282,
	ldr	r2, [sp, #4]	@ pNum, %sfp
	rsb	ip, r1, ip	@ D.38285, D.38285, i
	rsb	r4, r3, r4	@ TotalLen, pRawStreamArray_10(D)->RawPacket[Index_105].Length, TotalLen
	ldr	r3, [sp, #8]	@ pOffset, %sfp
	rsb	r6, r4, r6	@ D.38285, TotalLen, Len
	str	ip, [r2]	@ D.38285, *pNum_15(D)
	str	r6, [r3]	@ D.38285, *pOffset_17(D)
.L138:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L132:
	ldr	r3, [sp, #4]	@ pNum, %sfp
	mov	r0, #0	@ tmp254,
	str	r0, [r3]	@ tmp254, *pNum_15(D)
	ldr	r3, [sp, #8]	@ pOffset, %sfp
	str	r6, [r3]	@ Len, *pOffset_17(D)
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L127:
	movw	r3, #654	@,
	ldr	r1, .L141	@,
	ldr	r2, .L141+4	@,
	mov	r0, #22	@,
	str	ip, [sp, #12]	@ tmp181, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp]	@ tmp339, %sfp
	ldr	ip, [sp, #12]	@ tmp181, %sfp
	ldr	lr, [r3]	@ D.38285, pRawStreamArray_10(D)->Head
	mov	r1, lr, asl #3	@ tmp340, D.38285,
	mov	r3, lr, asl #6	@ tmp341, D.38285,
	b	.L133	@
.L135:
	mvn	r0, #0	@ D.38282,
	b	.L138	@
.L142:
	.align	2
.L141:
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
	clz	r3, r0	@ D.38292, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.38292, D.38292,
	orrs	ip, r3, r1, lsr #31	@, tmp137, D.38292, DelLen,
	.pad #88
	sub	sp, sp, #88	@,,
	bne	.L149	@,
	cmp	r3, #0	@ D.38292,
	str	ip, [sp, #32]	@ tmp137, DelNum
	str	ip, [sp, #36]	@ tmp137, RawPacketOffSet
	bne	.L149	@,
	add	r5, r0, #73728	@ tmp141, pRawStreamArray,
	mov	lr, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r5, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.38291, TotallLen,
	bne	.L145	@,
	cmp	r1, r3	@ DelLen, TotallLen
	bgt	.L149	@,
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
	ldr	r3, [r5]	@ D.38293, pRawStreamArray_3(D)->Head
	ldr	r1, [r5, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	ldr	r2, [sp, #36]	@ D.38293, RawPacketOffSet
	cmp	r3, r1	@ D.38293, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.38291,
	beq	.L145	@,
	mov	lr, r3, asl #6	@ tmp167, D.38293,
	ldr	r1, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	lr, lr, r3, lsl #3	@ tmp168, tmp167, D.38293,
	add	lr, r4, lr	@ tmp169, pRawStreamArray, tmp168
	add	r2, r2, r1	@ TargetOffset, D.38293, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [lr, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r5, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L149	@,
.L145:
	mov	r0, r6	@, D.38291
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L149:
	mvn	r6, #0	@ D.38291,
	mov	r0, r6	@, D.38291
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
	cmp	r0, #3	@ SmID,
	bxhi	lr	@
	ldr	r3, .L157	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L156	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #163840	@ tmp121, pSmInstArray,
	ldr	r1, [r4, #2296]	@ LastPushRawNum, pSmInstArray_4->SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, pc}	@
	add	r0, r0, #168	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r3, #0	@ tmp125,
	str	r3, [r4, #2296]	@ tmp125, pSmInstArray_4->SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, pc}	@
.L156:
	movw	r2, #802	@,
	ldr	r1, .L157+4	@,
	b	dprint_vfmw	@
.L158:
	.align	2
.L157:
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
	ldrne	r3, [r0, #20]	@ D.38306, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.38306, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.38306, pRawStreamArray_3(D)->FirstPacketOffset, D.38306
	strne	r0, [r1]	@ D.38306, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.38305, D.38306,
	mvneq	r0, #0	@ D.38305,
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
	beq	.L165	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.38311, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.38311, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.38311, D.38311,
	strmi	r3, [r1]	@ D.38311, *pStreamNum_8(D)
	movpl	r0, #0	@ D.38310,
	movmi	r0, #0	@ D.38310,
	bx	lr	@
.L165:
	mvn	r0, #0	@ D.38310,
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
	beq	.L168	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp134,
	movcc	r4, #1	@ tmp134,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp138, tmp134
	cmp	r4, #0	@ tmp138,
	bne	.L169	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp141, pStreamSegArray,
	mov	r0, r4	@ D.38314, tmp138
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L169:
	mvn	r0, #0	@ D.38314,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L168:
	mvn	r0, #0	@ D.38314,
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
	ldr	r2, [r0, #2072]	@ D.38319, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.38319, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.38319, pStreamSegArray_2(D)->SegBufWriteAddr
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
	ldr	ip, [r0, #2084]	@ D.38335, pStreamSegArray_1(D)->SegBufWriteAddr
	str	ip, [r1]	@ D.38335, *pAddr_3(D)
	str	r3, [r2]	@ tmp136, *pLength_7(D)
	ldr	r1, [r0, #2084]	@ D.38335, pStreamSegArray_1(D)->SegBufWriteAddr
	ldr	r3, [r0, #2080]	@ D.38335, pStreamSegArray_1(D)->SegBufReadAddr
	cmp	r1, r3	@ D.38335, D.38335
	bgt	.L187	@,
	ldrge	r0, [r0, #2076]	@ D.38335, pStreamSegArray_1(D)->SegBufSize
	rsblt	r3, r1, r3	@ D.38335, D.38335, D.38335
	ldrlt	r0, [r0, #2076]	@ D.38335, pStreamSegArray_1(D)->SegBufSize
	sublt	r3, r3, #1	@ Len, D.38335,
	subge	r3, r0, #1	@ Len, D.38335,
.L184:
	cmp	r3, r0	@ Len, D.38335
	strle	r3, [r2]	@ Len, *pLength_7(D)
	bx	lr	@
.L187:
	ldr	r0, [r0, #2076]	@ D.38335, pStreamSegArray_1(D)->SegBufSize
	rsb	r3, r1, r3	@ D.38335, D.38335, D.38335
	sub	r1, r0, #1	@ D.38335, D.38335,
	add	r3, r1, r3	@ Len, D.38335, D.38335
	b	.L184	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L236	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r5, #0	@ pstChan,
	beq	.L232	@,
	ldr	r3, [r5, #880]	@ D.38338, pstChan_10->eVidStd
	sub	lr, r3, #3	@ D.38339, D.38338,
	clz	lr, lr	@ D.38339, D.38339
	mov	lr, lr, lsr #5	@ D.38339, D.38339,
	cmp	r3, #0	@ D.38338,
	movne	r3, lr	@, D.38339, D.38339
	orreq	r3, lr, #1	@,, D.38339, D.38339
	cmp	r3, #0	@ D.38339,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r4, r5, #217088	@ tmp293, pstChan,
	ldr	ip, [r4, #384]	@ D.38340, pstChan_10->s32FindStartCodeCnt
	cmp	ip, #199	@ D.38340,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r2, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_17(D), *pSegBufVirAddr_17(D)
	cmp	r2, #0	@ *pSegBufVirAddr_17(D),
	bne	.L231	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B]
	cmp	r2, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B],
	bne	.L231	@,
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B]
	cmp	r2, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B],
	beq	.L196	@,
.L231:
	ldr	r6, [r4, #396]	@ D.38340, pstChan_10->s32CurrentStartCode
	mov	r0, #0	@ tmp292,
	ldr	r7, [r4, #392]	@ D.38340, pstChan_10->s32LastOneStartCode
	mov	r2, r0	@ D.38339, tmp292
	mov	r8, r0	@ D.38340, D.38339
	mov	r9, r0	@ u8Data, D.38339
	add	ip, ip, #1	@ D.38340, D.38340,
	str	r0, [r4, #396]	@ tmp292, pstChan_10->s32CurrentStartCode
	str	ip, [r4, #384]	@ D.38340, pstChan_10->s32FindStartCodeCnt
	str	r6, [r4, #392]	@ D.38340, pstChan_10->s32LastOneStartCode
	str	r7, [r4, #388]	@ D.38340, pstChan_10->s32LastTwoStartCode
.L197:
	cmp	r3, #0	@ D.38339,
	beq	.L233	@,
.L198:
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.38340, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.38340, pstChan_10->s32Mpeg2Score
.L199:
	cmp	r2, #0	@ D.38339,
	beq	.L200	@,
	rsb	r3, r6, r8	@ D.38340, D.38340, D.38340
	cmp	r3, #1	@ D.38340,
	beq	.L234	@,
.L201:
	cmp	r6, r8	@ D.38340, D.38340
	cmpeq	r7, r6	@, D.38340, D.38340
	beq	.L202	@,
.L200:
	cmp	ip, #199	@ D.38340,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r6, [r4, #376]	@ D.38340, pstChan_10->s32H264Score
	mov	r7, r1	@ InstID, InstID
	ldr	r3, [r4, #380]	@ D.38340, pstChan_10->s32Mpeg2Score
	rsb	ip, r3, r6	@ D.38340, D.38340, D.38340
	cmp	ip, #49	@ D.38340,
	movle	lr, #0	@, tmp271
	andgt	lr, lr, #1	@,, tmp271, D.38339
	cmp	lr, #0	@ tmp271,
	bne	.L235	@,
.L204:
	rsb	r3, r6, r3	@ D.38340, D.38340, D.38340
	cmp	r3, #49	@ D.38340,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r5, #880]	@ pstChan_10->eVidStd, pstChan_10->eVidStd
	cmp	r2, #0	@ pstChan_10->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L236+4	@ tmp279,
	ldr	r3, [r3]	@ D.38342, g_event_report
	cmp	r3, #0	@ D.38342,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r0, r7	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.38342
.L233:
	add	r9, r9, #73	@ tmp227, u8Data,
	uxtb	r9, r9	@ tmp228, tmp227
	cmp	r9, #3	@ tmp228,
	bhi	.L199	@,
	b	.L198	@
.L235:
	ldr	r2, .L236+4	@ tmp272,
	ldr	ip, [r2]	@ D.38342, g_event_report
	cmp	ip, #0	@ D.38342,
	beq	.L204	@,
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r7	@, InstID
	blx	ip	@ D.38342
	ldr	r3, [r4, #380]	@ D.38340, pstChan_10->s32Mpeg2Score
	ldr	r6, [r4, #376]	@ D.38340, pstChan_10->s32H264Score
	b	.L204	@
.L196:
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 3B]
	add	ip, ip, #1	@ D.38340, D.38340,
	ldr	r6, [r4, #396]	@ D.38340, pstChan_10->s32CurrentStartCode
	and	r8, r9, #31	@ D.38340, u8Data,
	ands	r2, r9, #31	@ tmp182, u8Data,
	sub	r0, r8, #30	@ tmp209, D.38340,
	sub	r10, r9, #1	@ tmp190, u8Data,
	movne	r2, #1	@ tmp182,
	cmp	r8, #19	@ D.38340,
	cmpne	r0, #1	@, tmp209,
	uxtb	r10, r10	@ tmp192, tmp190
	sub	r7, r8, #1	@ D.38344, D.38340,
	add	r3, r9, #79	@ tmp186, u8Data,
	movls	r0, #1	@ tmp213,
	movhi	r0, #0	@ tmp213,
	cmp	r7, #12	@ D.38344,
	orrls	r0, r0, #1	@,, tmp220, tmp213
	cmp	r10, #183	@ tmp192,
	uxtb	r3, r3	@ tmp188, tmp186
	ldr	r7, [r4, #392]	@ D.38340, pstChan_10->s32LastOneStartCode
	movls	r10, #0	@ tmp193,
	movhi	r10, #1	@ tmp193,
	cmp	ip, #2	@ D.38340,
	movle	r2, #0	@, D.38339
	andgt	r2, r2, #1	@,, D.38339, tmp182
	cmp	r3, #4	@ tmp188,
	movhi	r3, r10	@, D.38339, tmp193
	orrls	r3, r10, #1	@,, D.38339, tmp193
	cmp	r0, #0	@ tmp220,
	str	ip, [r4, #384]	@ D.38340, pstChan_10->s32FindStartCodeCnt
	str	r8, [r4, #396]	@ D.38340, pstChan_10->s32CurrentStartCode
	ldrne	r0, [r4, #376]	@ pstChan_10->s32H264Score, pstChan_10->s32H264Score
	str	r6, [r4, #392]	@ D.38340, pstChan_10->s32LastOneStartCode
	addne	r0, r0, #1	@ D.38340, pstChan_10->s32H264Score,
	str	r7, [r4, #388]	@ D.38340, pstChan_10->s32LastTwoStartCode
	strne	r0, [r4, #376]	@ D.38340, pstChan_10->s32H264Score
	b	.L197	@
.L234:
	rsb	r3, r7, r6	@ D.38340, D.38340, D.38340
	cmp	r3, #1	@ D.38340,
	bne	.L201	@,
.L202:
	cmp	r8, #1	@ D.38340,
	cmpne	r8, #20	@, D.38340,
	beq	.L200	@,
	ldr	r3, [r4, #376]	@ D.38340, pstChan_10->s32H264Score
	cmp	r3, #0	@ D.38340,
	subgt	r3, r3, #1	@ D.38340, D.38340,
	strgt	r3, [r4, #376]	@ D.38340, pstChan_10->s32H264Score
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.38340, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.38340, pstChan_10->s32Mpeg2Score
	b	.L200	@
.L232:
	mov	r2, r1	@, InstID
	mov	r0, r5	@, pstChan
	ldr	r1, .L236+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	dprint_vfmw	@
.L237:
	.align	2
.L236:
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
	beq	.L240	@,
	add	r4, r0, #90112	@ tmp153, pStreamSegArray,
	movw	r5, #36409	@ tmp158,
	movt	r5, 14563	@ tmp158,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.38350, pStreamSegArray_5(D)->Tail,
	smull	r6, r7, r3, r5	@ tmp157, D.38350, tmp158
	mov	ip, r3, asr #31	@ tmp160, D.38350,
	rsb	ip, ip, r7, asr #8	@ tmp156, tmp160,,
	mov	r6, ip, asl #10	@ tmp163, tmp156,
	add	ip, r6, ip, lsl #7	@ tmp164, tmp163, tmp156,
	rsb	r3, ip, r3	@ D.38350, tmp164, D.38350
	cmp	r3, lr	@ D.38350, pStreamSegArray_5(D)->Head
	beq	.L241	@,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r6]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r7, [r4, #2060]	@ D.38350, pStreamSegArray_5(D)->Tail
	mov	r1, r6	@, pStreamSeg
	mov	r2, #80	@,
	mov	r3, r7, asl #6	@ tmp174, D.38350,
	add	r7, r3, r7, lsl #4	@ tmp175, tmp174, D.38350,
	add	r0, r7, #8	@ tmp176, tmp175,
	add	r7, r9, r7	@ tmp196, pStreamSegArray, tmp175
	add	r0, r9, r0	@, pStreamSegArray, tmp176
	bl	memcpy	@
	ldr	r3, [r4, #2060]	@ D.38350, pStreamSegArray_5(D)->Tail
	mov	lr, #1	@ tmp190,
	mov	r0, r8	@ D.38348, tmp151
	add	ip, r3, lr	@ D.38350, D.38350,
	mov	r2, r3, asl #6	@ tmp186, D.38350,
	smull	r10, fp, ip, r5	@ tmp201, D.38350, tmp158
	add	r2, r2, r3, lsl #4	@ tmp187, tmp186, D.38350,
	add	r2, r9, r2	@ tmp188, pStreamSegArray, tmp187
	mov	r1, ip, asr #31	@ tmp204, D.38350,
	strb	lr, [r2, #12]	@ tmp190, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r3, [r7, #24]	@ D.38350, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	rsb	r2, r1, fp, asr #8	@ tmp205, tmp204,,
	ldr	lr, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	ldr	r1, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	mov	r3, r2, asl #10	@ tmp208, tmp205,
	add	r3, r3, r2, lsl #7	@ tmp209, tmp208, tmp205,
	ldr	r2, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	rsb	r3, r3, ip	@ D.38350, tmp209, D.38350
	str	r3, [r4, #2060]	@ D.38350, pStreamSegArray_5(D)->Tail
	ldr	r3, [r6, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r2, #1	@ D.38350, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, r3, ip	@ D.38352, pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2084]	@ D.38352, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, lr, r3	@ D.38352, pStreamSegArray_5(D)->SegTotalSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2088]	@ D.38352, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.38350, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r1, r3	@ D.38352, pStreamSegArray_5(D)->SegFreshSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2092]	@ D.38352, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L241:
	mvn	r0, #3	@ D.38348,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L240:
	mvn	r0, #0	@ D.38348,
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
	beq	.L250	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp222, pStreamSegArray,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.38358, pStreamSegArray_7(D)->Tail
	cmp	lr, r3	@ D.38358, i
	beq	.L252	@,
	mov	ip, r3, asl #4	@ tmp220, i,
	mov	r4, r3, asl #6	@ tmp221, i,
	add	r2, ip, r4	@ tmp149, tmp220, tmp221
	add	r2, r0, r2	@ tmp150, pStreamSegArray, tmp149
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState, pStreamSegArray_7(D)->StreamSeg[i_13].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState,
	movwne	r6, #36409	@ tmp223,
	movtne	r6, 14563	@ tmp223,
	bne	.L247	@,
	b	.L245	@
.L258:
	add	r2, r0, r2	@ tmp157, pStreamSegArray, tmp156
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState, pStreamSegArray_7(D)->StreamSeg[i_17].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState,
	beq	.L245	@,
.L247:
	add	ip, r3, #1	@ D.38358, i,
	smull	r2, r3, ip, r6	@ tmp165, D.38358, tmp223
	mov	r2, ip, asr #31	@ tmp168, D.38358,
	rsb	r3, r2, r3, asr #8	@ i, tmp168,,
	mov	r2, r3, asl #10	@ tmp171, i,
	add	r3, r2, r3, lsl #7	@ tmp172, tmp171, i,
	rsb	r3, r3, ip	@ i, tmp172, D.38358
	cmp	lr, r3	@ D.38358, i
	mov	ip, r3, asl #4	@ tmp220, i,
	mov	r4, r3, asl #6	@ tmp221, i,
	add	r2, ip, r4	@ tmp156, tmp220, tmp221
	bne	.L258	@,
.L252:
	mvn	r0, #2	@ D.38359,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L245:
	add	r4, ip, r4	@ tmp163, tmp220, tmp221
	add	r3, r4, #8	@ tmp164, tmp163,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp164
	beq	.L252	@,
	mov	r3, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@, pSeg
	mov	r0, r3	@, pStreamSeg
	mov	r2, #80	@,
	bl	memcpy	@
	add	ip, r6, r4	@ tmp181, pStreamSegArray, tmp163
	mov	r3, #2	@ tmp183,
	ldr	r1, .L260	@,
	strb	r3, [ip, #12]	@ tmp183, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].SegState
	mov	r0, #26	@,
	ldr	r3, [ip, #20]	@ D.38362, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].LenInByte
	ldr	lr, [r5, #2092]	@ pStreamSegArray_7(D)->SegFreshSize, pStreamSegArray_7(D)->SegFreshSize
	ldr	r2, [r5, #2096]	@ pStreamSegArray_7(D)->SegFreshNum, pStreamSegArray_7(D)->SegFreshNum
	rsb	lr, r3, lr	@ D.38362, D.38362, pStreamSegArray_7(D)->SegFreshSize
	sub	r2, r2, #1	@ D.38358, pStreamSegArray_7(D)->SegFreshNum,
	bic	lr, lr, lr, asr #31	@ D.38358, D.38362
	str	lr, [r5, #2092]	@ D.38358, pStreamSegArray_7(D)->SegFreshSize
	bic	r2, r2, r2, asr #31	@ D.38358, D.38358
	str	r2, [r5, #2096]	@ D.38358, pStreamSegArray_7(D)->SegFreshNum
	ldr	r2, [ip, #16]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].PhyAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].PhyAddr
	ldrb	ip, [ip, #13]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg
	str	ip, [sp]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_40].IsLastSeg,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38359,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L250:
	mvn	r0, #0	@ D.38359,
	bx	lr	@
.L261:
	.align	2
.L260:
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
	beq	.L282	@,
	movw	r3, #64382	@ tmp155,
	sub	r2, r1, #1152	@ D.38374, StreamID,
	movt	r3, 65535	@ tmp155,
	cmp	r2, r3	@ D.38374, tmp155
	mov	r4, r1	@ StreamID, StreamID
	bls	.L282	@,
	cmn	r1, #1	@ StreamID,
	add	r6, r5, #90112	@ tmp279, pStreamSegArray,
	beq	.L297	@,
	ldr	r3, [r6, #2056]	@ i, pStreamSegArray_15(D)->Head
	ldr	ip, [r6, #2060]	@ D.38374, pStreamSegArray_15(D)->Tail
	cmp	r3, ip	@ i, D.38374
	beq	.L274	@,
	cmp	r1, r3	@ StreamID, i
	movwne	lr, #36409	@ tmp289,
	movtne	lr, 14563	@ tmp289,
	bne	.L272	@,
	b	.L270	@
.L293:
	cmp	r4, r3	@ StreamID, i
	beq	.L270	@,
.L272:
	add	r2, r3, #1	@ D.38374, i,
	umull	r0, r1, r2, lr	@ tmp214, D.38374, tmp289
	mov	r3, r1, lsr #8	@ i,,
	mov	r1, r3, asl #10	@ tmp218, i,
	add	r3, r1, r3, lsl #7	@ tmp219, tmp218, i,
	rsb	r3, r3, r2	@ i, tmp219, D.38374
	cmp	r3, ip	@ i, D.38374
	bne	.L293	@,
	b	.L274	@
.L270:
	mov	r2, r3, asl #6	@ tmp204, i,
	add	r3, r2, r3, lsl #4	@ tmp205, tmp204, i,
	add	r2, r5, r3	@ tmp206, pStreamSegArray, tmp205
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_15(D)->StreamSeg[i_84].SegState, pStreamSegArray_15(D)->StreamSeg[i_84].SegState
	cmp	r2, #2	@ pStreamSegArray_15(D)->StreamSeg[i_84].SegState,
	addeq	r3, r3, #8	@ tmp213, tmp205,
	addeq	r7, r5, r3	@ pSeg, pStreamSegArray, tmp213
	beq	.L267	@,
.L274:
	mov	r2, r4	@, StreamID
	ldr	r3, .L300	@,
	ldr	r1, .L300+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.38373,
.L294:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L297:
	ldr	r9, [r6, #2056]	@ D.38375, pStreamSegArray_15(D)->Head
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r9, r3	@ D.38375, pStreamSegArray_15(D)->Tail
	beq	.L274	@,
	mov	r3, r9, asl #6	@ tmp281, D.38375,
	mov	r4, r9	@ StreamID, D.38375
	add	r9, r3, r9, lsl #4	@ tmp164, tmp281, D.38375,
	mov	r2, r4	@, StreamID
	add	r7, r9, #8	@ tmp165, tmp164,
	add	r9, r5, r9	@ tmp171, pStreamSegArray, tmp164
	ldr	r1, .L300+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	add	r7, r5, r7	@ pSeg, pStreamSegArray, tmp165
	cmp	r3, #0	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte,
	movne	r8, #0	@ i,
	beq	.L269	@,
.L268:
	ldr	r3, [r9, #8]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].VirAddr, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].VirAddr
	mov	r0, #0	@,
	ldr	r1, .L300+12	@,
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
	bne	.L268	@,
.L269:
	ldr	r1, .L300+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L267:
	cmp	r7, #0	@ pSeg,
	beq	.L274	@,
	ldr	r3, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r2, #0	@ tmp220,
	strb	r2, [r7, #4]	@ tmp220, pSeg_6->SegState
	mov	r0, #26	@,
	ldr	r2, [r7, #8]	@ pSeg_6->PhyAddr, pSeg_6->PhyAddr
	str	r4, [sp, #4]	@ StreamID,
	ldrb	ip, [r7, #5]	@ zero_extendqisi2	@ pSeg_6->IsLastSeg, pSeg_6->IsLastSeg
	ldr	r1, .L300+20	@,
	str	ip, [sp]	@ pSeg_6->IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r3, [r6, #2056]	@ pStreamSegArray_15(D)->Head, pStreamSegArray_15(D)->Head
	cmp	r3, r4	@ pStreamSegArray_15(D)->Head, StreamID
	beq	.L298	@,
.L275:
	ldr	r2, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.38373,
	ldr	r3, [r6, #2088]	@ pStreamSegArray_15(D)->SegTotalSize, pStreamSegArray_15(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.38374, pSeg_6->LenInByte, pStreamSegArray_15(D)->SegTotalSize
	bic	r3, r3, r3, asr #31	@ D.38375, D.38374
	str	r3, [r6, #2088]	@ D.38375, pStreamSegArray_15(D)->SegTotalSize
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L298:
	movw	r8, #36409	@ tmp284,
	movt	r8, 14563	@ tmp284,
	b	.L278	@
.L276:
	ldr	r2, [r6, #2060]	@ D.38375, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.38375, StreamID
	beq	.L279	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState, pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState
	cmp	r2, #0	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState,
	bne	.L299	@,
.L283:
	add	r2, r4, #1	@ D.38374, StreamID,
	umull	r0, r1, r2, r8	@ tmp259, D.38374, tmp284
	mov	r4, r1, lsr #8	@ StreamID,,
	mov	r3, r4, asl #10	@ tmp263, StreamID,
	add	r4, r3, r4, lsl #7	@ tmp264, tmp263, StreamID,
	rsb	r4, r4, r2	@ StreamID, tmp264, D.38374
.L278:
	mov	r3, r4, asl #6	@ tmp243, StreamID,
	cmp	r4, #1152	@ StreamID,
	add	r3, r3, r4, lsl #4	@ tmp244, tmp243, StreamID,
	add	r3, r5, r3	@ tmp245, pStreamSegArray, tmp244
	bcc	.L276	@,
	ldr	r2, .L300	@,
	mov	r0, #1	@,
	ldr	r1, .L300+24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r6, #2060]	@ D.38375, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.38375, StreamID
	bne	.L283	@,
.L279:
	ldr	r3, [r6, #2084]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufWriteAddr
	str	r2, [r6, #2056]	@ D.38375, pStreamSegArray_15(D)->Head
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L275	@
.L299:
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r3, #16]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr, pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_103].PhyAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L275	@
.L282:
	mvn	r0, #0	@ D.38373,
	b	.L294	@
.L301:
	.align	2
.L300:
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
	movne	r0, #0	@ D.38387,
	mvneq	r0, #0	@ D.38387,
	ldrne	r3, [r3, #2088]	@ D.38388, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ D.38388, *pStreamSize_6(D)
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
	add	r3, r3, #1152	@ D.38391, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.38391, pSegStreamArray_2(D)->Head, D.38391
	smull	r0, r1, r3, r2	@ tmp127, D.38391, tmp128
	mov	r2, r3, asr #31	@ tmp130, D.38391,
	rsb	r2, r2, r1, asr #8	@ D.38391, tmp130,,
	mov	r0, r2, asl #10	@ tmp133, D.38391,
	add	r0, r0, r2, lsl #7	@ tmp134, tmp133, D.38391,
	rsb	r0, r0, r3	@, tmp134, D.38391
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
	ldrne	r3, [r0, #2096]	@ D.38395, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ D.38395, *pFreshNum_5(D)
	ldrne	r3, [r0, #2092]	@ D.38395, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ D.38395, *pFreshSize_8(D)
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
	ldr	r3, .L315	@ tmp114,
	ldr	r0, [r3, #296]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L314	@,
	ldr	r2, [r3, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #296]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L314:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L316:
	.align	2
.L315:
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
	ldr	r3, .L318	@ tmp113,
	ldr	r0, [r3, #296]	@, s_eScdDrvSleepStage
	bx	lr	@
.L319:
	.align	2
.L318:
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
	ldr	r3, .L325	@ tmp111,
	ldr	r2, [r3, #296]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #296]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L326:
	.align	2
.L325:
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
	ldr	r3, .L331	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3, #8]	@ D.38408, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r0, #0	@ D.38408,
	beq	.L328	@,
	blx	r0	@ D.38408
.L329:
	ldr	r3, .L331+4	@ tmp113,
	mov	r2, #0	@ tmp114,
	str	r2, [r3, #296]	@ tmp114, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L328:
	movw	r2, #1378	@,
	ldr	r1, .L331+8	@,
	bl	dprint_vfmw	@
	b	.L329	@
.L332:
	.align	2
.L331:
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
	cmp	r0, #3	@ SmID,
	bhi	.L335	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r0, #58	@ tmp118, SmID,
	ldr	r4, .L338	@ tmp117,
	movw	r1, #49056	@,
	movt	r1, 2	@,
	mvn	r5, #0	@,
	add	r4, r4, r0, lsl #2	@ tmp119, tmp117, tmp118,
	ldr	r0, [r4, #16]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r3, [r4, #16]	@ tmp126, s_SmIIS.pSmInstArray
	mov	r0, #0	@ D.38412,
	mvn	r4, #0	@ tmp130,
	add	r3, r3, #179200	@ tmp128, tmp126,
	add	r3, r3, #896	@ tmp128, tmp128,
	strd	r4, [r3, #-8]	@ tmp130, tmp128,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L335:
	mvn	r0, #0	@ D.38412,
	bx	lr	@
.L339:
	.align	2
.L338:
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
	ldr	lr, .L355	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L355+4	@ tmp181,
	movt	ip, 4115	@ tmp141,
	mov	r8, r1	@ MemSize, MemSize
	mov	r10, r2	@ RegAddr, RegAddr
	ldr	r0, [lr, #8]	@ D.38418, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r0, #0	@ D.38418,
	beq	.L341	@,
	blx	r0	@ D.38418
.L342:
	ldr	r3, [r4, #280]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L355+4	@ tmp144,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L346	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	add	r0, r4, #12	@, tmp144,
	mov	r7, #0	@ tmp149,
	bl	__memzero	@
	add	r3, r5, #3	@ D.38419, MemAddr,
	bic	r3, r3, #3	@ D.38419, D.38419,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.38419
	str	r3, [r4, #20]	@ D.38419, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.38419
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #296]	@ tmp149, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.38421, Offset,
	mov	r2, #12288	@ tmp156,
	add	r3, r5, r3	@ D.38419, MemAddr, D.38421
	str	r2, [r4, #28]	@ tmp156, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.38419, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.38419, Offset, MemAddr
	add	r5, r5, #26112	@ D.38421, D.38419,
	add	r5, r5, #127	@ D.38421, D.38421,
	bic	r5, r5, #127	@ D.38421, D.38421,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.38419
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp161,
	str	r5, [r4, #4]	@ D.38421, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp161, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.38421
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.38420,
	str	r0, [r4, #300]	@ D.38420, g_hex_base_vir_addr
	beq	.L354	@,
	add	r6, r6, #44032	@ D.38421, Offset,
	mov	r3, #17920	@ tmp170,
	cmp	r8, r6	@ MemSize, D.38421
	str	r10, [r4, #80]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #84]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp170, g_hex_len
	blt	.L346	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L346	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L346	@,
	mov	r3, #1	@ tmp179,
	mov	r0, r7	@ D.38417, tmp149
	str	r3, [r4, #280]	@ tmp179, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L341:
	movw	r2, #1564	@,
	ldr	r1, .L355+8	@,
	bl	dprint_vfmw	@
	b	.L342	@
.L346:
	mvn	r0, #6	@ D.38417,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L354:
	movw	r2, #1642	@,
	ldr	r1, .L355+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38417,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L356:
	.align	2
.L355:
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
	ldr	r3, .L366	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #248]	@ D.38427, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38427,
	beq	.L358	@,
	ldr	r2, [r3, #64]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L358	@,
	add	r3, r3, #163840	@ tmp121, D.38427,
	ldr	r2, [r3, #2412]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2412]	@ tmp125, _5->Mode
.L358:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L367:
	.align	2
.L366:
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
	ldr	r2, .L378	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #248]	@ D.38442, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38442,
	beq	.L371	@,
	add	r3, r3, #163840	@ tmp121, D.38442,
	ldr	r1, [r3, #2412]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L371	@,
	ldr	r2, [r2, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2412]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L371	@,
	mvn	r0, #6	@ D.38440,
	bx	lr	@
.L371:
	mov	r0, #0	@ D.38440,
	bx	lr	@
.L379:
	.align	2
.L378:
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
	mov	r0, #1	@,
	bl	SM_Stop	@
	mov	r0, #2	@,
	bl	SM_Stop	@
	mov	r0, #3	@,
	bl	SM_Stop	@
	bl	ResetSCD	@
	mov	r1, #284	@,
	ldr	r0, .L382	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L383:
	.align	2
.L382:
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
	cmp	r0, #3	@ SmID,
	bhi	.L391	@,
	ldr	r3, .L401	@ tmp134,
	add	r0, r3, r0, lsl #2	@ tmp136, tmp134, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L400	@,
	add	ip, r0, #163840	@ tmp189, pSmInstArray,
	add	r3, r0, #176128	@ tmp145, pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmn	r0, #168	@ pSmInstArray,
	ldr	r2, [ip, #2412]	@ pSmInstArray_6->Mode, pSmInstArray_6->Mode
	add	r0, r0, #73728	@ tmp190, pSmInstArray,
	strb	r2, [r1]	@ pSmInstArray_6->Mode, pSmInstInfo_7(D)->InstMode
	ldr	r3, [r3, #3988]	@ D.38449, pSmInstArray_6->numReadSegFail
	str	r3, [r1, #20]	@ D.38449, pSmInstInfo_7(D)->numReadSegFail
	beq	.L387	@,
	ldr	r3, [r0, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail
	ldr	r2, [r0, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head
	subs	r3, r3, r2	@ D.38449, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head
	addmi	r3, r3, #1024	@ D.38449, D.38449,
	strmi	r3, [r1, #4]	@ D.38449, MEM[(HI_S32 *)pSmInstInfo_7(D) + 4B]
	strpl	r3, [r1, #4]	@ D.38449, MEM[(HI_S32 *)pSmInstInfo_7(D) + 4B]
.L389:
	ldr	r3, [r0, #188]	@ D.38449, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].RawTotalSize
	str	r3, [r1, #12]	@ D.38449, MEM[(HI_S32 *)pSmInstInfo_7(D) + 12B]
	ldr	r2, [r0, #180]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset
	rsb	r3, r2, r3	@ D.38449, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset, D.38449
	str	r3, [r1, #12]	@ D.38449, MEM[(HI_S32 *)pSmInstInfo_7(D) + 12B]
.L387:
	ldr	r3, [ip, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail
	movw	r4, #36409	@ tmp167,
	ldr	r2, [ip, #2248]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head
	movt	r4, 14563	@ tmp167,
	add	r3, r3, #1152	@ D.38449, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail,
	adds	r0, r0, #192	@ D.38452, tmp190,
	rsb	r3, r2, r3	@ D.38449, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head, D.38449
	movne	r0, #0	@ D.38447,
	smull	r4, r5, r3, r4	@ tmp166, D.38449, tmp167
	mov	r2, r3, asr #31	@ tmp169, D.38449,
	rsb	r2, r2, r5, asr #8	@ tmp170, tmp169,,
	mov	lr, r2, asl #10	@ tmp173, tmp170,
	add	r2, lr, r2, lsl #7	@ tmp174, tmp173, tmp170,
	rsb	r3, r2, r3	@ D.38449, tmp174, D.38449
	str	r3, [r1, #8]	@ D.38449, pSmInstInfo_7(D)->SegNum
	ldrne	r3, [ip, #2280]	@ D.38449, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].SegTotalSize
	strne	r3, [r1, #16]	@ D.38449, MEM[(HI_S32 *)pSmInstInfo_7(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L400:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L391	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_7(D)->InstMode
	mvn	r0, #0	@ D.38447,
	bx	lr	@
.L391:
	mvn	r0, #0	@ D.38447,
	bx	lr	@
.L402:
	.align	2
.L401:
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
	ldr	r3, .L408	@ tmp122,
	ldr	ip, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	add	r0, r3, r0, lsl #2	@ tmp124, tmp122, SmID,
	cmp	ip, #0	@ pRawPacket_6(D)->PhyAddr,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	beq	.L404	@,
	ldr	r3, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r3, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L404	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
.L404:
	mvn	r0, #0	@,
	bx	lr	@
.L409:
	.align	2
.L408:
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
	ldr	r3, .L439	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp203, tmp201, SmID,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L427	@,
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
	bne	.L427	@,
	ldr	r6, [r10, #172]	@ D.38470, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Tail
	ldr	r3, [r10, #168]	@ D.38470, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	cmp	r6, r3	@ D.38470, D.38470
	beq	.L414	@,
	mov	r9, r3, asl #3	@ tmp447, index,
	mov	r2, r3, asl #6	@ tmp448, index,
	add	lr, r9, r2	@ tmp224, tmp447, tmp448
	mov	r4, #1	@ rawnum,
	add	lr, r5, lr	@ tmp225, pSmInstArray, tmp224
	mov	fp, r9	@ tmp443, tmp447
	mov	ip, r2	@ tmp445, tmp448
	ldr	r7, [lr, #176]	@ TotalSrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	b	.L413	@
.L415:
	add	r4, r4, #1	@ rawnum, rawnum,
	ldr	r8, [r8, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	cmp	r4, #1024	@ rawnum,
	add	r7, r7, r8	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	movls	lr, #0	@ tmp237,
	movhi	lr, #1	@ tmp237,
	cmp	r3, r6	@ index, D.38470
	orreq	lr, lr, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L414	@,
.L413:
	add	lr, fp, ip	@ tmp244, tmp443, tmp445
	add	r3, r3, #1	@ D.38472, index,
	add	lr, r5, lr	@ tmp245, pSmInstArray, tmp244
	ubfx	r3, r3, #0, #10	@ index, D.38472,,
	ldrb	lr, [lr, #220]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	mov	fp, r3, asl #3	@ tmp443, index,
	mov	ip, r3, asl #6	@ tmp445, index,
	cmp	lr, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag,
	add	r8, fp, ip	@ tmp230, tmp443, tmp445
	add	r8, r5, r8	@ tmp231, pSmInstArray, tmp230
	bne	.L415	@,
	str	r0, [sp, #20]	@ SmID, %sfp
	mov	r8, lr	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	ldr	r0, [sp, #8]	@, %sfp
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	str	r2, [sp]	@ tmp448, %sfp
	bl	ResetStreamSegArray	@
	add	r0, r5, #163840	@ tmp251, pSmInstArray,
	ldr	r2, [sp]	@ tmp448, %sfp
	ldr	r3, [r0, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize
	sub	r3, r3, #262144	@ D.38470, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize,
	cmp	r3, r7	@ D.38470, TotalSrcLength
	blt	.L436	@,
	ldr	r1, [r5, #56]	@ D.38467, pSmInstArray_20->Config.VidStd
	ldr	r0, [r0, #2264]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufPhyAddr
	sub	r3, r1, #10	@ D.38467, D.38467,
	ldr	fp, [r10, #192]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].pSegBufVirAddr
	bics	r3, r3, #2	@ tmp481, D.38467,
	bne	.L417	@,
	ldr	r3, .L439+4	@ tmp264,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r3, #1	@ D.38470, g_VdmCharacter,
	streqb	r3, [fp]	@ D.38470, *TmpVirAddr_46
	addeq	fp, fp, #1	@ TmpVirAddr, TmpVirAddr,
	ldreq	r1, [r5, #56]	@ D.38467, pSmInstArray_20->Config.VidStd
.L417:
	add	r3, r9, r2	@ tmp272, tmp447, tmp448
	cmp	r1, #12	@ D.38467,
	add	r3, r5, r3	@ tmp273, pSmInstArray, tmp272
	ldr	r10, [r10, #168]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	ldr	r1, [r3, #172]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].VirAddr
	ldr	r3, [r3, #176]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	str	r3, [sp]	@ SrcLength, %sfp
	beq	.L437	@,
.L418:
	str	r0, [r6, #8]	@ TmpPhyAddr, pStreamSeg_26(D)->PhyAddr
	str	r2, [sp, #16]	@ tmp448, %sfp
	str	r1, [sp, #4]	@ SrcVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r2, [sp, #16]	@ tmp448, %sfp
	cmp	r4, #0	@ rawnum,
	mov	r3, #1	@ tmp371,
	add	r9, r9, r2	@ tmp356, tmp447, tmp448
	add	r9, r5, r9	@ tmp357, pSmInstArray, tmp356
	str	r0, [r6]	@ D.38474, pStreamSeg_26(D)->VirAddr
	rsb	r0, r0, fp	@ D.38470, D.38474, TmpVirAddr
	str	r0, [r6, #12]	@ D.38470, pStreamSeg_26(D)->LenInByte
	ldrd	r0, [r9, #184]	@ tmp494, tmp357,
	strd	r0, [r6, #24]	@ tmp494, pStreamSeg,
	ldrd	r0, [r9, #184]	@ tmp495, tmp357,
	strd	r0, [r6, #32]	@ tmp495, pStreamSeg,
	ldrd	r0, [r9, #200]	@ tmp496, tmp357,
	strb	r3, [r6, #5]	@ tmp371, pStreamSeg_26(D)->IsLastSeg
	strd	r0, [r6, #40]	@ tmp496, pStreamSeg,
	ldr	r1, [sp, #4]	@ SrcVirAddr, %sfp
	beq	.L425	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	fp, #0	@, TmpVirAddr,
	beq	.L414	@,
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
	b	.L423	@
.L424:
	cmp	fp, #0	@ TmpVirAddr,
	cmpne	lr, #0	@, SrcVirAddr,
	beq	.L414	@,
.L423:
	mov	r1, lr	@, SrcVirAddr
	mov	r2, r4	@, SrcLength
	mov	r0, fp	@, TmpVirAddr
	str	r3, [sp]	@ tmp446, %sfp
	bl	memcpy	@
	ldr	r3, [sp]	@ tmp446, %sfp
	ldr	r1, [r6, #12]	@ pStreamSeg_26(D)->LenInByte, pStreamSeg_26(D)->LenInByte
	add	r10, r10, #1	@ D.38472, index,
	add	r7, r7, r3	@ tmp394, tmp444, tmp446
	ubfx	r10, r10, #0, #10	@ index, D.38472,,
	add	r7, r8, r7	@ tmp395, pSmInstArray, tmp394
	add	fp, fp, r4	@ TmpVirAddr, TmpVirAddr, tmp2
	add	r4, r1, r4	@ D.38472, pStreamSeg_26(D)->LenInByte, SrcLength
	ldr	r1, [sp, #4]	@ rawnum, %sfp
	ldrb	r0, [r7, #221]	@ zero_extendqisi2	@ D.38471, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_158].is_stream_end_flag
	add	r5, r5, #1	@ i, i,
	mov	r7, r10, asl #3	@ tmp444, index,
	mov	r3, r10, asl #6	@ tmp446, index,
	str	r4, [r6, #12]	@ D.38472, pStreamSeg_26(D)->LenInByte
	add	r2, r7, r3	@ tmp403, tmp444, tmp446
	strb	r0, [r6, #6]	@ D.38471, pStreamSeg_26(D)->IsStreamEnd
	cmp	r5, r1	@ i, rawnum
	ldrd	r0, [r9, #208]	@ tmp498, tmp451,
	add	r2, r8, r2	@ tmp404, pSmInstArray, tmp403
	ldr	lr, [r2, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].VirAddr
	ldr	r4, [r2, #176]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].Length
	strd	r0, [r6, #48]	@ tmp498, pStreamSeg,
	ldr	r2, [r9, #224]	@ D.38472, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispEnableFlag
	str	r2, [r6, #56]	@ D.38472, pStreamSeg_26(D)->DispEnableFlag
	ldr	r2, [r9, #228]	@ D.38472, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispFrameDistance
	str	r2, [r6, #60]	@ D.38472, pStreamSeg_26(D)->DispFrameDistance
	ldr	r2, [r9, #232]	@ D.38472, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ D.38472, pStreamSeg_26(D)->DistanceBeforeFirstFrame
	ldr	r2, [r9, #236]	@ D.38472, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].GopNum
	str	r2, [r6, #68]	@ D.38472, pStreamSeg_26(D)->GopNum
	bne	.L424	@,
	ldr	r7, [sp, #16]	@ TotalSrcLength, %sfp
.L425:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.38468,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L414:
	mvn	r0, #3	@ D.38468,
.L411:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L437:
	ldr	r3, .L439+4	@ tmp285,
	ldr	ip, [sp]	@ SrcLength, %sfp
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	cmp	ip, #0	@ SrcLength,
	moveq	r3, #0	@, tmp292
	andne	r3, r3, #1	@,, tmp292, g_VdmCharacter
	cmp	r3, #0	@ tmp292,
	beq	.L418	@,
	cmp	ip, #2	@ SrcLength,
	bgt	.L438	@,
	cmp	r4, #1	@ rawnum,
	add	r10, r10, #1	@ D.38472, index,
	ubfx	r10, r10, #0, #10	@ index, D.38472,,
	bls	.L414	@,
	mov	r8, r10, asl #6	@ tmp446, index,
	add	r3, r8, r10, lsl #3	@ tmp296, tmp446, index,
	add	r3, r5, r3	@ tmp297, pSmInstArray, tmp296
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	ldr	ip, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].VirAddr
	ldr	r3, [sp]	@ SrcLength, %sfp
	add	r1, r3, r1	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	cmp	r1, #2	@ SrcLength,
	ble	.L420	@,
	add	r3, r10, #1020	@ D.38472, index,
	sub	r1, r1, #3	@ SrcLength, SrcLength,
	add	r3, r3, #3	@ D.38472, D.38472,
	str	r1, [sp]	@ SrcLength, %sfp
	ubfx	r3, r3, #0, #10	@ D.38472, D.38472,,
	sub	r4, r4, #1	@ rawnum, rawnum,
	mov	r1, r3, asl #6	@ tmp311, D.38472,
	add	r3, r1, r3, lsl #3	@ tmp312, tmp311, D.38472,
	add	r3, r5, r3	@ tmp313, pSmInstArray, tmp312
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length
	rsb	r1, r1, #3	@ D.38470, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length,
	add	r1, ip, r1	@ SrcVirAddr, SrcVirAddr, D.38470
	b	.L418	@
.L436:
	mov	r2, r7	@, TotalSrcLength
	ldr	r1, .L439+8	@,
	mov	r0, r8	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	bl	dprint_vfmw	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.38468
	beq	.L411	@,
	movw	r2, #2007	@,
	ldr	r1, .L439+12	@,
	mov	r0, r8	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.38468, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	b	.L411	@
.L438:
	sub	r3, ip, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@ SrcVirAddr, SrcVirAddr,
	str	r3, [sp]	@ SrcLength, %sfp
	b	.L418	@
.L427:
	mvn	r0, #0	@ D.38468,
	b	.L411	@
.L420:
	cmp	r4, #2	@ rawnum,
	add	r10, r10, #1	@ D.38472, index,
	ubfx	r10, r10, #0, #10	@ index, D.38472,,
	bls	.L414	@,
	mov	r8, r10, asl #6	@ tmp446, index,
	add	r3, r8, r10, lsl #3	@ tmp320, tmp446, index,
	add	r3, r5, r3	@ tmp321, pSmInstArray, tmp320
	ldr	ip, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	ldr	r3, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].VirAddr
	add	ip, r1, ip	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	cmp	ip, #2	@ SrcLength,
	str	r3, [sp, #4]	@ SrcVirAddr, %sfp
	ble	.L414	@,
	add	r1, r10, #1020	@ D.38472, index,
	sub	r4, r4, #2	@ rawnum, rawnum,
	mov	r3, r1	@ D.38472, D.38472
	add	r1, r1, #3	@ D.38472, D.38472,
	ubfx	lr, r1, #0, #10	@ D.38472, D.38472,,
	add	r3, r3, #2	@ D.38472, D.38472,
	ubfx	r8, r3, #0, #10	@ D.38472, D.38472,,
	sub	r1, ip, #3	@ SrcLength, SrcLength,
	mov	r3, lr, asl #6	@ tmp335, D.38472,
	str	r1, [sp]	@ SrcLength, %sfp
	add	r3, r3, lr, lsl #3	@ tmp336, tmp335, D.38472,
	mov	r1, r8, asl #6	@ tmp346, D.38472,
	add	r1, r1, r8, lsl #3	@ tmp347, tmp346, D.38472,
	add	r3, r5, r3	@ tmp337, pSmInstArray, tmp336
	add	r1, r5, r1	@ tmp348, pSmInstArray, tmp347
	ldr	r3, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length
	ldr	r1, [r1, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length
	rsb	r3, r3, #3	@ D.38470, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length,
	rsb	r1, r1, r3	@ D.38470, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, D.38470
	ldr	r3, [sp, #4]	@ SrcVirAddr, %sfp
	add	r1, r3, r1	@ SrcVirAddr, SrcVirAddr, D.38470
	b	.L418	@
.L440:
	.align	2
.L439:
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
	ldr	r3, .L460	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r3, r0, lsl #2	@ tmp153, tmp151, SmID,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r6, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L452	@,
	add	r3, r6, #73728	@ tmp155, pSmInstArray,
	add	r5, r6, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r3, #192	@ tmp155,
	cmnne	r6, #168	@, pSmInstArray,
	add	r1, r3, #192	@ pStreamSegArray, tmp155,
	beq	.L452	@,
	ldr	r2, [r3, #168]	@ D.38485, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	ldr	r3, [r3, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	cmp	r3, r2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, D.38485
	beq	.L450	@,
	mov	r8, r2, asl #3	@ tmp236, D.38485,
	mov	r4, r2, asl #6	@ tmp237, D.38485,
	mov	r7, r0	@ SmID, SmID
	mov	r0, r1	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	add	ip, r8, r4	@ tmp171, tmp236, tmp237
	add	ip, r6, ip	@ tmp172, pSmInstArray, tmp171
	ldr	r1, [ip, #172]	@ pu32tmp, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].VirAddr
	ldr	lr, [r1]	@ D.38486, *pu32tmp_14
	ldr	r3, [r1, #4]	@ D.38486, MEM[(HI_U32 *)pu32tmp_14 + 4B]
	sub	r2, lr, #32	@ D.38487, D.38486,
	cmp	r2, #1888	@ D.38487,
	bhi	.L444	@,
	sub	r2, r3, #32	@ D.38487, D.38486,
	cmp	r2, #1056	@ D.38487,
	bls	.L458	@,
.L444:
	ldr	r1, .L460+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	r2, r8, r4	@ tmp202, tmp236, tmp237
	add	r2, r6, r2	@ tmp203, pSmInstArray, tmp202
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L459	@,
.L457:
	mov	r0, #0	@ D.38483,
.L442:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L458:
	ldr	r0, [ip, #176]	@ D.38485, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r2, #51712	@ tmp183,
	movt	r2, 47	@ tmp183,
	sub	ip, r0, #1552	@ D.38487, D.38485,
	cmp	ip, r2	@ D.38487, tmp183
	bhi	.L444	@,
	mul	r2, r3, lr	@ D.38485, D.38486, D.38486
	add	ip, r6, #163840	@ tmp194, pSmInstArray,
	ldr	ip, [ip, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize
	sub	ip, ip, #262144	@ D.38485, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize,
	add	r2, r2, r2, lsl #1	@ D.38485, D.38485, D.38485,
	add	r2, r2, r2, lsr #31	@ tmp189, D.38485, D.38485,
	mov	r2, r2, asr #1	@ tmp190, tmp189,
	cmp	r2, ip	@ tmp190, D.38485
	bgt	.L444	@,
	add	r2, r2, #16	@ D.38485, tmp190,
	cmp	r0, r2	@ D.38485, D.38485
	blt	.L444	@,
	ldr	ip, [r1, #8]	@ D.38486, MEM[(HI_U32 *)pu32tmp_14 + 8B]
	movw	r2, #1916	@ tmp208,
	ldr	r10, [r1, #12]	@ D.38486, MEM[(HI_U32 *)pu32tmp_14 + 12B]
	sub	r0, ip, #4	@ D.38487, D.38486,
	cmp	r0, r2	@ D.38487, tmp208
	bhi	.L447	@,
	sub	r0, r10, #4	@ D.38487, D.38486,
	movw	r2, #1084	@ tmp210,
	cmp	r0, r2	@ D.38487, tmp210
	bls	.L448	@,
.L447:
	ldr	r1, .L460+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	r2, r8, r4	@ tmp215, tmp236, tmp237
	add	r2, r6, r2	@ tmp216, pSmInstArray, tmp215
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L457	@,
	movw	r2, #2229	@,
	ldr	r1, .L460+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38483,
	b	.L442	@
.L459:
	movw	r2, #2214	@,
	ldr	r1, .L460+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L457	@
.L452:
	mvn	r0, #0	@ D.38483,
	b	.L442	@
.L450:
	mvn	r0, #3	@ D.38483,
	b	.L442	@
.L448:
	add	r2, r8, r4	@ tmp224, tmp236, tmp237
	add	r1, r1, #16	@, pu32tmp,
	add	r6, r6, r2	@ tmp225, pSmInstArray, tmp224
	mov	r0, r7	@, SmID
	mov	r2, lr	@, D.38486
	ldrd	r8, [r6, #184]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts, tmp225,
	str	r10, [sp, #8]	@ D.38486,
	str	ip, [sp, #4]	@ D.38486,
	strd	r8, [sp, #16]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts,,
	str	lr, [sp]	@ D.38486,
	bl	DNR_PutYuv	@
	subs	r4, r0, #0	@ Ret,
	bne	.L450	@,
	ldr	r1, [r6, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r0, r5	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, r4	@ D.38483, Ret
	b	.L442	@
.L461:
	.align	2
.L460:
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
	ldr	r3, .L479	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp139, tmp137, SmID,
	ldr	r4, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L468	@,
	ldr	r3, [r4, #56]	@ D.38497, pSmInstArray_9->Config.VidStd
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r7, r0	@ SmID, SmID
	sub	ip, r3, #4	@ D.38494, D.38497,
	sub	r2, r3, #8	@ D.38494, D.38497,
	cmp	r2, #6	@ D.38494,
	cmphi	ip, #1	@, D.38494,
	bls	.L464	@,
	cmp	r3, #1	@ D.38497,
	beq	.L477	@,
.L465:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r0, #192	@,,
	bl	GetStreamSeg	@
	cmp	r0, #0	@ ret
	bne	.L466	@,
	ldr	r5, .L479+4	@ tmp161,
	ldr	r3, [r5]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	beq	.L467	@,
	ldr	r3, .L479+8	@ tmp163,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, r3	@ SmID, save_seg_chan_num
	beq	.L478	@,
.L467:
	add	r4, r4, #176128	@ tmp173, pSmInstArray,
	mov	r3, #0	@ tmp174,
	mov	r0, r3	@ D.38495, tmp174
	str	r3, [r4, #3988]	@ tmp174, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L477:
	ldr	r3, [r4, #72]	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L465	@,
.L464:
	mov	r1, r6	@, pStreamSeg
	mov	r0, r7	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L465	@,
	ldr	r1, .L479+12	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ ret,
.L466:
	add	r4, r4, #176128	@ tmp176, pSmInstArray,
	ldr	r3, [r4, #3988]	@ pSmInstArray_9->numReadSegFail, pSmInstArray_9->numReadSegFail
	add	r3, r3, #1	@ D.38498, pSmInstArray_9->numReadSegFail,
	str	r3, [r4, #3988]	@ D.38498, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L478:
	ldr	r0, .L479+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r5]	@, vfmw_save_seg_file
	ldr	r1, [r6, #12]	@, pStreamSeg_10(D)->LenInByte
	ldr	r0, [r6]	@, pStreamSeg_10(D)->VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L479+16	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L467	@
.L468:
	mvn	r0, #0	@ D.38495,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L480:
	.align	2
.L479:
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
	ldr	r3, .L483	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L482	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L482:
	mvn	r0, #0	@,
	bx	lr	@
.L484:
	.align	2
.L483:
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
	ldr	r4, .L498	@ tmp138,
	add	r3, r4, r6, lsl #2	@ tmp123, tmp138, SmID,
	ldr	r3, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrsb	r3, [r3, #3]	@ pSmInstArray_10->InsertNewSegFlag, pSmInstArray_10->InsertNewSegFlag
	mov	r5, r0	@ CurTime,
	cmp	r3, #1	@ pSmInstArray_10->InsertNewSegFlag,
	beq	.L488	@,
.L490:
	mov	r0, #0	@ D.38514,
.L489:
	ldr	r3, [r4, #304]	@ D.38513, LastEventTime
	ldr	r2, .L498	@ tmp128,
	cmp	r5, r3	@ CurTime, D.38513
	movls	r3, #1	@ D.38514,
	strls	r5, [r2, #304]	@ CurTime, LastEventTime
	bls	.L492	@,
	rsb	r3, r3, r5	@ Period, D.38513, CurTime
	cmp	r3, #1	@ Period,
	movls	r3, #0	@ D.38514,
	movhi	r3, #1	@ D.38514,
.L492:
	tst	r3, r0	@ D.38514, D.38514
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, .L498+4	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #304]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L488:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L490	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	clz	r0, r0	@ D.38514,
	mov	r0, r0, lsr #5	@ D.38514, D.38514,
	b	.L489	@
.L499:
	.align	2
.L498:
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
	ldr	r3, .L507	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r4, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L505	@,
	mov	r5, r1	@ FirstCalc, FirstCalc
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r4, r4, #176128	@ tmp123, pSmInstArray,
	mov	r2, r0	@ CurTime,
	beq	.L502	@,
	mov	r3, #0	@ tmp124,
	str	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	mov	r0, r3	@ D.38517, tmp124
	str	r3, [r4, #3952]	@ tmp124, pSmInstArray_6->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L502:
	ldr	r3, [r4, #3956]	@ D.38518, pSmInstArray_6->LastBlockTime
	cmp	r0, r3	@ CurTime, D.38518
	strls	r5, [r4, #3952]	@ FirstCalc, pSmInstArray_6->BlockTimeInMs
	rsbhi	r0, r3, r0	@ D.38518, D.38518, CurTime
	strls	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	strhi	r0, [r4, #3952]	@ D.38518, pSmInstArray_6->BlockTimeInMs
	movls	r0, r5	@ D.38517, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L505:
	mov	r0, r4	@ D.38517, pSmInstArray
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L508:
	.align	2
.L507:
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
	ldr	r2, .L512	@ tmp120,
	sub	ip, r1, #1	@ D.38522, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.38522,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.38521,
	streq	r1, [r2, #2412]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L513:
	.align	2
.L512:
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
	beq	.L521	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r0, #12]	@ pSegFilter_6(D)->ModeFlag, pSegFilter_6(D)->ModeFlag
	mul	r3, r3, r2	@ D.38533, UpMsgStepNum, SegNum
	cmp	ip, #1	@ pSegFilter_6(D)->ModeFlag,
	ldrb	ip, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	bfceq	ip, #0, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,,
	orrne	ip, ip, #1	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,
	strb	ip, [r1, #72]	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	mov	ip, #0	@ D.38530,
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrb	lr, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3, asl #2]	@ *_15, *_15
	mov	r3, r3, asl #2	@ D.38533, D.38533,
	add	r3, r3, #8	@ D.38537, D.38533,
	mov	r2, r2, lsr #31	@ D.38534, *_15,
	bfi	lr, r2, #1, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, D.38534,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp162, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3]	@ *_25, *_25
	mov	r2, r2, asr #16	@ D.38531, *_25,
	bfi	lr, r2, #2, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, D.38531,,
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
	mov	r0, ip	@, D.38530
	and	r3, r3, #7	@ tmp174, *_39,
	bfi	r2, r3, #7, #4	@ tmp175, tmp174,,
	strh	r2, [r1, #72]	@ movhi	@ tmp175,
	ldr	pc, [sp], #4	@
.L521:
	mvn	ip, #0	@ D.38530,
	mov	r0, ip	@, D.38530
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
	mov	r9, #0	@ tmp252,
	ldr	r1, .L567	@,
	mov	r0, #24	@,
	str	r9, [r2]	@ tmp252, *pExtraSrcBack_17(D)
	str	r3, [sp]	@ pSegNum, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [r4, #8]	@ pSegStreamFilter_15(D)->ProtocolType, pSegStreamFilter_15(D)->ProtocolType
	cmp	r3, #2	@ pSegStreamFilter_15(D)->ProtocolType,
	beq	.L525	@,
	cmp	r7, r9	@ SegNum,
	ldrgt	r3, [sp, #48]	@ tmp363, UpMsgStepNum
	movgt	r5, r9	@ i, ivtmp.416
	movgt	r8, r3, asl #2	@ D.38564, tmp363,
	ble	.L529	@,
.L528:
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	mov	lr, r6	@ D.38565, pTransFormSeg
	ldr	ip, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	mov	r2, r5	@, i
	ldr	r1, .L567+4	@,
	mov	r0, #24	@,
	ldr	r3, [r3, r9]	@ *_190, *_190
	and	ip, ip, #-2147483648	@ D.38564, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r3, r3, #-2147483648	@ D.38564, *_190,
	orr	r3, r3, ip	@ D.38564, D.38564, D.38564
	str	r3, [lr, r9]!	@ D.38564, MEM[base: pTransFormSeg_92(D), index: ivtmp.416_243, offset: 0B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r3, r3, r9	@ tmp264, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.416
	add	r9, r9, r8	@ ivtmp.416, ivtmp.416, D.38564
	ldr	r3, [r3, #4]	@ D.38566, *_204
	str	r3, [lr, #4]	@ D.38566, MEM[base: _228, offset: 4B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r5, asl #2]	@, *_209
	add	r5, r5, #1	@ i, i,
	bl	dprint_vfmw	@
	cmp	r5, r7	@ i, SegNum
	bne	.L528	@,
.L529:
	ldr	r3, [sp]	@ pSegNum, %sfp
	mov	r0, #0	@ tmp255,
	str	r0, [r4, #12]	@ tmp255, pSegStreamFilter_15(D)->ModeFlag
	str	r0, [r4, #16]	@ tmp255, pSegStreamFilter_15(D)->LastH263Num
	str	r7, [r3]	@ SegNum, *pSegNum_176(D)
.L561:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L525:
	ldr	r0, [r4, #20]	@, pSegStreamFilter_15(D)->SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L531	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_23 + 1B]
	ldrb	r1, [r0]	@ zero_extendqisi2	@ D.38566, *pTmpVirAddr_23
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_23 + 3B]
	ldrb	r5, [r0, #2]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_23 + 2B]
	mov	r2, r2, asl #16	@ D.38566, D.38566,
	orr	r2, r2, r1, asl #24	@ D.38566, D.38566, D.38566,
	ldr	r0, [r4, #28]	@, pSegStreamFilter_15(D)->SegBufRollAddr
	orr	r3, r2, r3	@ D.38566, D.38566, D.38566
	orr	r5, r3, r5, asl #8	@ D.38566, D.38566, D.38566,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L531	@,
	cmp	r7, #0	@ SegNum,
	mov	r2, r5, lsr #24	@ D.38564, D.38566,
	mov	r3, r5, lsr #16	@ D.38564, D.38566,
	strb	r5, [r0, #3]	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_41 + 3B]
	strb	r2, [r0]	@ D.38564, *pTmpVirAddr_41
	mov	r5, r5, lsr #8	@ D.38564, D.38566,
	strb	r3, [r0, #1]	@ D.38564, MEM[(HI_U8 *)pTmpVirAddr_41 + 1B]
	strb	r5, [r0, #2]	@ D.38564, MEM[(HI_U8 *)pTmpVirAddr_41 + 2B]
	ble	.L532	@,
	ldr	r2, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	ldr	r5, [r2]	@ *_224, *_224
	and	r3, r3, #-2147483648	@ D.38564, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r5, r5, #-2147483648	@ D.38564, *_224,
	orrs	r5, r5, r3	@ TmpPhyAddr, D.38564, D.38564
	beq	.L531	@,
	ldr	r2, [sp, #48]	@ tmp364, UpMsgStepNum
	mov	r3, r6	@ ivtmp.423, pTransFormSeg
	str	r6, [sp, #4]	@ ivtmp.423, %sfp
	add	fp, r3, #4	@ ivtmp.433, ivtmp.423,
	mov	r10, r3	@ ivtmp.431, ivtmp.423
	mov	r8, #4	@ ivtmp.432,
	mov	r6, r2, asl #2	@ D.38564, tmp364,
	mov	r9, #1	@ ivtmp.428,
	b	.L533	@
.L564:
	mov	r3, #1	@ tmp317,
	str	r3, [r4, #12]	@ tmp317, pSegStreamFilter_15(D)->ModeFlag
	mov	r3, #0	@ tmp318,
	str	r3, [r4, #16]	@ tmp318, pSegStreamFilter_15(D)->LastH263Num
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.38566,* ivtmp.432
	str	r3, [r10, #4]	@ D.38566,
.L535:
	cmp	r9, r7	@ ivtmp.428, SegNum
	beq	.L563	@,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r9, r9, #1	@ ivtmp.428, ivtmp.428,
	ldr	r5, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r10, r10, r6	@ ivtmp.431, ivtmp.431, D.38564
	add	r3, r3, r8	@ tmp293, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.432
	add	fp, fp, r6	@ ivtmp.433, ivtmp.433, D.38564
	add	r3, r3, r6	@ tmp294, tmp293, D.38564
	and	r2, r5, #-2147483648	@ D.38564, pSegStreamFilter_15(D)->SegBufPhyAddr,
	add	r8, r8, r6	@ ivtmp.432, ivtmp.432, D.38564
	ldr	r5, [r3, #-4]	@ *_58, *_58
	bic	r5, r5, #-2147483648	@ D.38564, *_58,
	orrs	r5, r5, r2	@ TmpPhyAddr, D.38564, D.38564
	beq	.L531	@,
.L533:
	mov	r0, r5	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L531	@,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_68 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.38566, *pTmpVirAddr_68
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_68 + 3B]
	mov	r1, r1, asl #16	@ D.38566, D.38566,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.38566, MEM[(HI_U8 *)pTmpVirAddr_68 + 2B]
	orr	r3, r1, r3, asl #24	@ D.38566, D.38566, D.38566,
	orr	r3, r3, r2	@ D.38566, D.38566, D.38566
	movw	r2, #438	@ tmp366,
	orr	r3, r3, r0, asl #8	@ Data32, D.38566, D.38566,
	cmp	r3, r2	@ Data32, tmp366
	cmpne	r3, #288	@, Data32,
	moveq	r2, #1	@ tmp316,
	movne	r2, #0	@ tmp316,
	beq	.L564	@,
	bic	r3, r3, #1020	@ D.38564, Data32,
	bic	r3, r3, #3	@ D.38564, D.38564,
	cmp	r3, #32768	@ D.38564,
	beq	.L565	@,
.L536:
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.38566,* ivtmp.432
	str	r3, [r10, #4]	@ D.38566,
	b	.L535	@
.L565:
	ldr	r3, [r4, #12]	@ pSegStreamFilter_15(D)->ModeFlag, pSegStreamFilter_15(D)->ModeFlag
	cmp	r3, #1	@ pSegStreamFilter_15(D)->ModeFlag,
	beq	.L566	@,
.L539:
	mov	r3, #2	@ tmp329,
	str	r3, [r4, #12]	@ tmp329, pSegStreamFilter_15(D)->ModeFlag
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r8]	@ D.38566,* ivtmp.432
	str	r3, [r10, #4]	@ D.38566,
	b	.L535	@
.L531:
	mvn	r0, #6	@ D.38563,
	b	.L561	@
.L566:
	ldr	r3, [r4, #16]	@ pSegStreamFilter_15(D)->LastH263Num, pSegStreamFilter_15(D)->LastH263Num
	add	r3, r3, #1	@ D.38566, pSegStreamFilter_15(D)->LastH263Num,
	str	r3, [r4, #16]	@ D.38566, pSegStreamFilter_15(D)->LastH263Num
	cmp	r3, #12	@ D.38566,
	ble	.L536	@,
	ldr	r3, .L567+8	@ tmp367,
	ldr	r3, [r3]	@ D.38569, g_event_report
	cmp	r3, #0	@ D.38569,
	beq	.L539	@,
	ldr	r0, .L567+12	@ tmp368,
	mov	r1, #102	@,
	ldr	r0, [r0, #284]	@, s_SmIIS.ThisInstID
	blx	r3	@ D.38569
	b	.L539	@
.L563:
	ldr	r3, [sp]	@ pSegNum, %sfp
	cmp	r9, #0	@ ivtmp.428,
	movgt	r4, #0	@ i,
	ldrgt	r5, [sp, #4]	@ ivtmp.423, %sfp
	str	r9, [r3]	@ ivtmp.428, *pSegNum_176(D)
	ble	.L543	@,
.L542:
	mov	r2, r4	@, i
	ldr	r3, [r5], r6	@, *_181
	ldr	r1, .L567+4	@,
	add	r4, r4, #1	@ i, i,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r4, r9	@ i, ivtmp.428
	bne	.L542	@,
.L543:
	mov	r0, #0	@ D.38563,
	b	.L561	@
.L532:
	ldr	r3, [sp]	@ pSegNum, %sfp
	mov	r0, r9	@ D.38563, tmp252
	str	r9, [r3]	@ tmp252, *pSegNum_176(D)
	b	.L561	@
.L568:
	.align	2
.L567:
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
	beq	.L571	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L573	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L573	@,
	ldr	r3, [r0, #12]	@ pSegPacket_2(D)->LenInByte, pSegPacket_2(D)->LenInByte
	cmp	r3, r1	@ pSegPacket_2(D)->LenInByte, SegFreeBufLen
	mvnhi	r0, #6	@ D.38575,
	movls	r0, #0	@ D.38575,
	bx	lr	@
.L573:
	mvn	r0, #6	@ D.38575,
	bx	lr	@
.L571:
	mvn	r0, #0	@ D.38575,
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
	ldrd	r0, [r4, #24]	@ D.38581, pSegPacket,
	ldrd	r2, [r5]	@ *pLastPts_25(D), *pLastPts_25(D)
	cmp	r3, r1	@ *pLastPts_25(D), D.38581
	cmpeq	r2, r0	@ *pLastPts_25(D), D.38581
	beq	.L579	@,
	strd	r0, [r5]	@ D.38581, *pLastPts_25(D)
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L579:
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
	cmp	r0, #3	@ InstID,
	bhi	.L582	@,
	ldr	r3, .L587	@ tmp117,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp117, InstID,
	ldr	r3, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L583	@,
	add	r2, r3, #163840	@ tmp122, pSmInstArray,
	ldr	r0, [r2, #2412]	@ D.38584, pSmInstArray_5->Mode
	cmp	r0, #0	@ D.38584,
	ldrne	r0, [r3, #84]	@ pSmInstArray_5->Config.DisContinueRawPacketFlag, pSmInstArray_5->Config.DisContinueRawPacketFlag
	subne	r0, r0, #1	@ D.38584, pSmInstArray_5->Config.DisContinueRawPacketFlag,
	clzne	r0, r0	@ D.38584, D.38584
	movne	r0, r0, lsr #5	@ D.38584, D.38584,
	bx	lr	@
.L582:
	mov	r0, #0	@ D.38584,
	bx	lr	@
.L583:
	mov	r0, r3	@ D.38584, pSmInstArray
	bx	lr	@
.L588:
	.align	2
.L587:
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
	cmp	r0, #3	@ InstID,
	bhi	.L593	@,
	ldr	r2, .L597	@ tmp120,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, InstID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r2, r0	@ tmp131, pSmInstArray
	mov	r2, r2, lsr #5	@ tmp131, tmp131,
	orrs	r3, r2, r1, lsr #31	@, tmp139, tmp131, Flag,
	bne	.L596	@,
	add	r3, r0, #163840	@ tmp134, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_6->Mode, pSmInstArray_6->Mode
	cmp	r3, #0	@ pSmInstArray_6->Mode,
	strne	r1, [r0, #84]	@ Flag, pSmInstArray_6->Config.DisContinueRawPacketFlag
	streq	r3, [r0, #84]	@ pSmInstArray_6->Mode, pSmInstArray_6->Config.DisContinueRawPacketFlag
	mov	r0, #1	@ D.38590,
	bx	lr	@
.L593:
	mov	r0, #0	@ D.38590,
	bx	lr	@
.L596:
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r3, r1	@ Flag, Flag
	movw	r2, #3708	@,
	str	r0, [sp]	@ pSmInstArray,
	mov	r0, #22	@,
	ldr	r1, .L597+4	@,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.38590,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L598:
	.align	2
.L597:
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
	cmp	r0, #3	@ InstID,
	bls	.L611	@,
	mov	r0, #0	@ D.38597,
	bx	lr	@
.L611:
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L604	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.38600, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.38600,
	movlt	r0, #1	@ D.38597,
	blt	.L601	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	bgt	.L604	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.38597,
	movle	r0, #1	@ D.38597,
.L601:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L604:
	mov	r0, #0	@ D.38597,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
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
	add	r8, r0, #58	@ tmp161, InstID,
	ldr	r5, .L635	@ tmp160,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r7, r0	@ InstID, InstID
	mov	r10, r1	@ pRawPacket, pRawPacket
	add	r9, r5, r8, lsl #2	@ tmp127, tmp160, tmp161,
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp162,,
	ldr	r4, [r9, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L633	@,
	mov	r0, r7	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r6, r0, #0	@ pStreamIntf,
	beq	.L634	@,
	add	r0, sp, #4	@ tmp163,,
	mov	r2, #12	@,
	mov	r1, r6	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r6, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L616	@,
	ldr	r0, .L635+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	mov	r1, r10	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r6, r0	@ ret,
	ldr	r0, .L635+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ret,
	beq	.L617	@,
.L616:
	add	r5, r5, r8, lsl #2	@ tmp157, tmp160, tmp161,
	ldr	r3, [r5, #16]	@ tmp159, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp159,
	beq	.L618	@,
.L633:
	mvn	r0, #6	@ D.38604,
.L630:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L617:
	ldr	r3, [r9, #16]	@ tmp154, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp154,
	beq	.L618	@,
	add	r4, r4, #73728	@ tmp143, pSmInstArray,
	ldr	r2, [r10, #8]	@ pRawPacket_19(D)->Length, pRawPacket_19(D)->Length
	mov	r0, r6	@ D.38604, ret
	ldr	r3, [r4, #188]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.38606, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_19(D)->Length
	str	r3, [r4, #188]	@ D.38606, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L634:
	mov	r2, r7	@, InstID
	ldr	r1, .L635+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.38604,
	b	.L630	@
.L618:
	mov	r3, r7	@, InstID
	movw	r2, #4084	@,
	ldr	r1, .L635+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	b	.L633	@
.L636:
	.align	2
.L635:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r8, r0, #58	@ tmp376, InstID,
	ldr	r7, .L720	@ tmp378,
	.pad #76
	sub	sp, sp, #76	@,,
	mov	r6, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r7, r8, lsl #2	@ tmp202, tmp378, tmp376,
	mov	r0, sp	@,
	ldr	r4, [r3, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L637	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_17->Config.VidStd,
	beq	.L637	@,
	ldr	r3, [r4, #84]	@ D.38616, pSmInstArray_17->Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.38616,
	beq	.L637	@,
	cmp	r3, #2	@ D.38616,
	beq	.L710	@,
.L639:
	add	r9, r4, #73728	@ D.38623, pSmInstArray,
	add	r9, r9, #192	@ D.38623, D.38623,
.L651:
	ldr	r3, [r4, #92]	@ pSmInstArray_17->Config.ScdLowBufEnable, pSmInstArray_17->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_17->Config.ScdLowBufEnable,
	beq	.L656	@,
	cmp	r9, #0	@ D.38623,
	beq	.L711	@,
.L655:
	mov	r0, r6	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L637	@,
.L656:
	cmp	r6, #3	@ InstID,
	bhi	.L653	@,
	add	r3, r7, r8, lsl #2	@ tmp281, tmp378, tmp376,
	ldr	r3, [r3, #16]	@ D.38625, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38625,
	beq	.L653	@,
	add	r2, r3, #73728	@ tmp284, D.38625,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_171 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_171 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_171 + 168B].History, MEM[(struct RAW_ARRAY_S *)_171 + 168B].History
	add	r3, r3, #1	@ D.38616, MEM[(struct RAW_ARRAY_S *)_171 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp288, D.38616,
	mov	r2, r2, lsr #22	@ tmp289, tmp288,
	add	r3, r3, r2	@ tmp290, D.38616, tmp289
	ubfx	r3, r3, #0, #10	@ tmp291, tmp290,,
	rsb	r3, r2, r3	@ D.38616, tmp289, tmp291
	cmp	r3, r1	@ D.38616, MEM[(struct RAW_ARRAY_S *)_171 + 168B].History
	beq	.L653	@,
	mov	r1, sp	@,
	mov	r0, r6	@, InstID
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L637	@,
	ldr	r10, [r4, #80]	@ D.38617, pSmInstArray_17->Config.LastRawDisContinueCount
	cmn	r10, #1	@ D.38617,
	beq	.L658	@,
	ldr	fp, [sp, #48]	@ D.38617, RawPacket.discontinue_count
	cmp	r10, fp	@ D.38617, D.38617
	beq	.L660	@,
	ldr	r5, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	bic	r5, r5, #2	@ D.38615, pSmInstArray_17->Config.VidStd,
	cmp	r5, #1	@ D.38615,
	beq	.L712	@,
.L660:
	add	r5, r4, #176128	@ tmp308, pSmInstArray,
	ldr	r2, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.38616, pSmInstArray_17->TotalRawSize, RawPacket.Length
	str	r3, [r5, #3976]	@ D.38616, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #3980]	@ D.38617, pSmInstArray_17->LastStatTime
	cmp	r1, #0	@ D.38617,
	mov	r10, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L662	@,
	rsb	r1, r1, r0	@ TimePeriod, D.38617, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L662	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp329,
	mov	r2, #0	@ tmp333,
	str	r10, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp333, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.38617, tmp329,
	mov	r0, r0, lsr #10	@ D.38617, D.38617,
	str	r0, [r5, #3984]	@ D.38617, pSmInstArray_17->BitRate
.L662:
	ldrd	r2, [sp, #16]	@,,
	mov	r0, #29	@,
	ldr	r1, .L720+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #8]	@, RawPacket.Length
	ldr	r2, [sp]	@, RawPacket.PhyAddr
	mov	r0, #26	@,
	ldr	r1, .L720+8	@,
	bl	dprint_vfmw	@
	ldrd	r2, [sp, #16]	@ RawPacket.Pts,,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp341,
	cmp	r3, r1	@ RawPacket.Pts,
	cmpeq	r2, r0	@ RawPacket.Pts, tmp341
	beq	.L713	@,
.L663:
	mov	r1, sp	@,
	mov	r0, r6	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L664	@,
	mov	r3, #1	@ tmp345,
	strb	r3, [r4, #4]	@ tmp345, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L714	@,
.L666:
	ldr	r3, .L720+12	@ tmp357,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r6, r3	@ InstID, save_str_chan_num
	bne	.L651	@,
	ldr	r5, .L720+16	@ tmp377,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L651	@,
	ldr	r10, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L720+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r10, #4	@ D.38617, eStd,
	cmp	r3, #1	@ D.38617,
	bls	.L669	@,
	cmp	r10, #17	@ eStd,
	bne	.L715	@,
.L669:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, sp, #8	@,,
	bl	klib_fwrite	@
.L670:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldmib	sp, {r0, r1}	@,,
	bl	klib_fwrite	@
	ldr	r0, .L720+20	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L651	@
.L653:
	mov	r2, r6	@, InstID
	ldr	r1, .L720+24	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
.L637:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L658:
	ldr	r3, [sp, #48]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r3, [r4, #80]	@ RawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L660	@
.L714:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, r6, lsl #2	@ tmp348, tmp378, InstID,
	ldr	r1, .L720+28	@ tmp352,
	ldr	r3, [r2, #308]	@ tmp351, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.38617, tmp351, ThisTime
	cmp	r3, r1	@ D.38617, g_TraceBsPeriod
	strhi	r0, [r2, #308]	@ ThisTime, last_rec_pos_time
	b	.L666	@
.L713:
	mvn	r2, #0	@ tmp343,
	mvn	r3, #0	@,
	strd	r2, [sp, #16]	@ tmp343,,
	b	.L663	@
.L711:
	ldr	r1, .L720+32	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L655	@
.L715:
	sub	r3, r10, #8	@ D.38617, eStd,
	cmp	r3, #6	@ D.38617,
	bls	.L669	@,
	cmp	r10, #1	@ eStd,
	bne	.L670	@,
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L669	@,
	b	.L670	@
.L710:
	add	r5, r4, #176128	@ tmp207, pSmInstArray,
	ldr	r2, [r4, #104]	@ pSmInstArray_17->Config.DisContinueRawPacket.Length, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.38616, pSmInstArray_17->TotalRawSize, pSmInstArray_17->Config.DisContinueRawPacket.Length
	str	r3, [r5, #3976]	@ D.38616, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, #3980]	@ D.38617, pSmInstArray_17->LastStatTime
	cmp	r3, #0	@ D.38617,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L641	@,
	rsb	r1, r3, r0	@ TimePeriod, D.38617, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L641	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp228,
	mov	r2, #0	@ tmp232,
	str	r9, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp232, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.38617, tmp228,
	mov	r3, r0, lsr #10	@ D.38617, D.38617,
	str	r3, [r5, #3984]	@ D.38617, pSmInstArray_17->BitRate
.L641:
	ldrd	r2, [r4, #112]	@, pSmInstArray,
	mov	r0, #29	@,
	ldr	r1, .L720+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r2, [r4, #96]	@, pSmInstArray_17->Config.DisContinueRawPacket.PhyAddr
	mov	r0, #26	@,
	ldr	r1, .L720+8	@,
	bl	dprint_vfmw	@
	ldrd	r2, [r4, #112]	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, pSmInstArray,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp240,
	cmp	r3, r1	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts,
	cmpeq	r2, r0	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, tmp240
	beq	.L716	@,
.L642:
	add	r1, r4, #96	@, pSmInstArray,
	mov	r0, r6	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L664	@,
	mov	r3, #1	@ tmp245,
	strb	r3, [r4, #4]	@ tmp245, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L717	@,
.L646:
	ldr	r3, .L720+12	@ tmp257,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r6, r3	@ InstID, save_str_chan_num
	beq	.L718	@,
.L648:
	ldr	r3, [r4, #144]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count
	mov	r2, #0	@ tmp274,
	str	r2, [r4, #84]	@ tmp274, pSmInstArray_17->Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L639	@
.L664:
	ldr	r1, .L720+36	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L712:
	mov	r1, sp	@,
	mov	r2, #72	@,
	add	r0, r4, #96	@, pSmInstArray,
	bl	memcpy	@
	str	r5, [r4, #84]	@ D.38615, pSmInstArray_17->Config.DisContinueRawPacketFlag
	mov	r3, fp	@, D.38617
	mov	r2, r10	@, D.38617
	mov	r0, r5	@, D.38615
	ldr	r1, .L720+40	@,
	bl	dprint_vfmw	@
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L716:
	mvn	r2, #0	@ tmp242,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp242, pSmInstArray,
	b	.L642	@
.L717:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, r6, lsl #2	@ tmp248, tmp378, InstID,
	ldr	r1, .L720+28	@ tmp252,
	ldr	r3, [r2, #308]	@ tmp251, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.38617, tmp251, ThisTime
	cmp	r3, r1	@ D.38617, g_TraceBsPeriod
	strhi	r0, [r2, #308]	@ ThisTime, last_rec_pos_time
	b	.L646	@
.L718:
	ldr	r5, .L720+16	@ tmp377,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L648	@,
	ldr	r9, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L720+20	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r9, #4	@ D.38617, eStd,
	cmp	r3, #1	@ D.38617,
	bls	.L649	@,
	cmp	r9, #17	@ eStd,
	beq	.L649	@,
	sub	r3, r9, #8	@ D.38617, eStd,
	cmp	r3, #6	@ D.38617,
	bls	.L649	@,
	cmp	r9, #1	@ eStd,
	beq	.L719	@,
.L650:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldr	r1, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r0, [r4, #100]	@, pSmInstArray_17->Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L720+20	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L648	@
.L719:
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L650	@,
.L649:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, r4, #104	@, pSmInstArray,
	bl	klib_fwrite	@
	b	.L650	@
.L721:
	.align	2
.L720:
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
	beq	.L733	@,
	mov	r1, r4	@, pStreamIntf
	add	r0, sp, #4	@ tmp154,,
	mov	r2, #12	@,
	ldr	r5, .L736	@ tmp152,
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	add	r6, r7, #58	@ tmp151, InstID,
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	mvneq	r4, #6	@ ret,
	beq	.L725	@,
	add	r3, r5, r6, lsl #2	@ tmp134, tmp152, tmp151,
	ldr	r3, [r3, #16]	@ tmp136, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #92]	@ _16->Config.ScdLowBufEnable, _16->Config.ScdLowBufEnable
	cmp	r3, #0	@ _16->Config.ScdLowBufEnable,
	bne	.L734	@,
	ldr	r0, .L736+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L736+4	@,
	bl	OSAL_SpinLockIRQ	@
.L727:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L725:
	add	r5, r5, r6, lsl #2	@ tmp146, tmp152, tmp151,
	ldr	r0, [r5, #16]	@ tmp148, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ tmp148,
	movne	r0, r4	@ D.38637, ret
	beq	.L735	@,
.L724:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L734:
	mov	r1, r8	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L727	@
.L733:
	mov	r2, r7	@, InstID
	mov	r0, r4	@, pStreamIntf
	ldr	r1, .L736+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.38637,
	b	.L724	@
.L735:
	mov	r3, r7	@, InstID
	movw	r2, #4134	@,
	ldr	r1, .L736+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #6	@ D.38637,
	b	.L724	@
.L737:
	.align	2
.L736:
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0	@ SmID, SmID
	bhi	.L754	@,
	ldr	r3, .L756	@ tmp132,
	add	r3, r3, r0, lsl #2	@ tmp134, tmp132, SmID,
	ldr	r7, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r7, #0	@ pSmInstArray,
	beq	.L750	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L755	@,
.L741:
	adds	r9, r7, #168	@ tmp174, pSmInstArray,
	beq	.L750	@,
	add	r10, r7, #73728	@ tmp175, pSmInstArray,
	ldr	r6, [r10, #168]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].Head
	ldr	r4, [r10, #176]	@ D.38649, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	cmp	r6, r4	@ RawHead, D.38649
	addlt	r6, r6, #1024	@ D.38651, RawHead,
	rsb	r6, r4, r6	@ DelNum, D.38649, D.38651
	cmp	r6, #0	@ DelNum,
	beq	.L750	@,
	mov	fp, #0	@ i,
.L745:
	mov	r5, r4, asl #6	@ tmp147, j,
	ldr	r1, .L756+4	@,
	add	r5, r5, r4, lsl #3	@ tmp148, tmp147, j,
	mov	r0, #26	@,
	add	r2, r7, r5	@ tmp149, pSmInstArray, tmp148
	add	fp, fp, #1	@ i, i,
	add	r4, r4, #1	@ D.38653, j,
	ldr	r3, [r2, #176]	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].RawPacket[j_40].Length
	ubfx	r4, r4, #0, #10	@ j, D.38653,,
	ldr	r2, [r2, #168]	@, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].RawPacket[j_40].PhyAddr
	bl	dprint_vfmw	@
	add	r1, r9, r5	@, tmp174, tmp148
	mov	r0, r8	@, SmID
	bl	ReleaseRawStreamData	@
	cmp	fp, r6	@ i, DelNum
	bne	.L745	@,
	ldr	r4, [r10, #176]	@ D.38649, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	add	r4, fp, r4	@ D.38651, i, D.38649
	cmp	r4, #1024	@ D.38651,
	strlt	r4, [r10, #176]	@ D.38651, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	subge	r4, r4, #1024	@ D.38651, D.38651,
	strge	r4, [r10, #176]	@ D.38651, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	movlt	r0, #0	@ D.38649,
	movge	r0, #0	@ D.38649,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L755:
	add	r3, r7, #163840	@ tmp137, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_11->Mode, pSmInstArray_11->Mode
	cmp	r3, #0	@ pSmInstArray_11->Mode,
	bne	.L741	@,
.L750:
	mvn	r0, #0	@ D.38649,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L754:
	mov	r2, r0	@, SmID
	ldr	r1, .L756+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38649,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L757:
	.align	2
.L756:
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
	ldr	r3, .L868	@ tmp241,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp243, tmp241, ChanID,
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r10, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r10, #0	@ pSmInstArray,
	beq	.L761	@,
	add	fp, r10, #73728	@ tmp691, pSmInstArray,
	adds	r7, fp, #192	@ pStreamSegArray, tmp691,
	beq	.L761	@,
	ldrd	r2, [r1]	@ pts, *pArgs_35(D)
	add	r5, r10, #163840	@ tmp692, pSmInstArray,
	ldrd	r8, [r1, #16]	@ RawNum, pArgs,
	ldr	r4, [r5, #2248]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	strd	r2, [sp, #8]	@ pts,,
	ldrd	r2, [r1, #8]	@ gap, pArgs,
	ldr	ip, [r5, #2252]	@ D.38661, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
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
.L763:
	mov	r6, r4, asl #4	@ tmp689, i,
	mov	r8, r4, asl #6	@ tmp690, i,
	cmp	r4, ip	@ i, D.38661
	add	r3, r6, r8	@ tmp325, tmp689, tmp690
	mov	r1, r4	@, i
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp326, tmp691, tmp325
	beq	.L852	@,
	ldrsb	r2, [r3, #204]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState
	cmp	r2, #1	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState,
	bne	.L767	@,
	ldrd	r2, [r3, #232]	@ D.38662, tmp326,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp766,
	cmp	r3, r1	@ D.38662,
	cmpeq	r2, r0	@ D.38662, tmp766
	addeq	r1, r4, #1	@ D.38666, i,
	beq	.L842	@,
	ldrd	r0, [sp, #8]	@ pts,,
	add	lr, r4, #1	@ D.38666, i,
	cmp	r1, r3	@ pts, D.38662
	mov	r10, lr, asr #31	@ tmp353, D.38666,
	cmpeq	r0, r2	@ pts, D.38662
	smull	r0, r1, lr, r9	@ tmp350, D.38666, tmp704
	bls	.L770	@,
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	rsb	r4, r10, r1, asr #8	@ i, tmp353,,
	mov	r3, r4, asl #10	@ tmp356, i,
	add	r4, r3, r4, lsl #7	@ tmp357, tmp356, i,
	rsb	r4, r4, lr	@ i, tmp357, D.38666
	b	.L763	@
.L767:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r5, #2252]	@ D.38661, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	add	r1, r4, #1	@ D.38666, i,
.L842:
	smull	r2, r3, r1, r9	@ tmp505, D.38666, tmp704
	mov	r4, r1, asr #31	@ tmp508, D.38666,
	rsb	r4, r4, r3, asr #8	@ i, tmp508,,
	mov	r3, r4, asl #10	@ tmp511, i,
	add	r4, r3, r4, lsl #7	@ tmp512, tmp511, i,
	rsb	r4, r4, r1	@ i, tmp512, D.38666
	b	.L763	@
.L770:
	beq	.L853	@,
	bcs	.L763	@,
	ldr	r0, [r5, #2256]	@ D.38661, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp772,
	mov	r3, r0, asl #6	@ tmp426, D.38661,
	add	r3, r3, r0, lsl #4	@ tmp427, tmp426, D.38661,
	add	r3, fp, r3	@ tmp428, tmp691, tmp427
	ldrd	r2, [r3, #232]	@ D.38667, tmp428,
	cmp	r3, r9	@ D.38667,
	cmpeq	r2, r8	@ D.38667, tmp772
	streq	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r0, r4	@ D.38661, i
	beq	.L775	@,
	ldrd	r8, [sp, #8]	@ pts,,
	cmp	r9, r3	@ pts, D.38667
	cmpeq	r8, r2	@ pts, D.38667
	bhi	.L854	@,
.L775:
	ldr	r6, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r0, r6	@ D.38661, j
	beq	.L776	@,
	movw	r4, #36409	@ tmp703,
	mov	r8, #2	@ tmp702,
	movt	r4, 14563	@ tmp703,
.L777:
	mov	r3, r6, asl #6	@ tmp448, j,
	mov	r1, r6	@, j
	add	r3, r3, r6, lsl #4	@ tmp449, tmp448, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp450, tmp691, tmp449
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte
	strb	r8, [r3, #204]	@ tmp702, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].SegState
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.38665, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.38666, D.38665
	str	r2, [r5, #2284]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.38666, D.38666
	str	r3, [r5, #2288]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r2, r6, #1	@ D.38666, j,
	ldr	ip, [r5, #2256]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	smull	r0, r1, r2, r4	@ tmp484, D.38666, tmp703
	mov	r6, r2, asr #31	@ tmp487, D.38666,
	rsb	r6, r6, r1, asr #8	@ j, tmp487,,
	mov	r3, r6, asl #10	@ tmp490, j,
	add	r6, r3, r6, lsl #7	@ tmp491, tmp490, j,
	rsb	r6, r6, r2	@ j, tmp491, D.38666
	cmp	ip, r6	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, j
	bne	.L777	@,
.L776:
	mov	r3, r6, asl #6	@ tmp501, j,
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	add	r6, r3, r6, lsl #4	@ tmp502, tmp501, j,
	mov	r0, #0	@ D.38661,
	add	fp, fp, r6	@ tmp503, tmp691, tmp502
	ldrd	r2, [fp, #232]	@ D.38667, tmp503,
	strd	r2, [r1]	@ D.38667, *pArgs_35(D)
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L852:
	ldr	r8, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	ldr	r10, [sp, #36]	@ pSmInstArray, %sfp
	cmp	r8, r4	@ j, i
	beq	.L765	@,
	movw	r4, #36409	@ tmp699,
	mov	r6, #2	@ tmp698,
	movt	r4, 14563	@ tmp699,
.L766:
	mov	r3, r8, asl #6	@ tmp271, j,
	mov	r1, r8	@, j
	add	r3, r3, r8, lsl #4	@ tmp272, tmp271, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp273, tmp691, tmp272
	strb	r6, [r3, #204]	@ tmp698, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.38665, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.38666, D.38665
	str	r2, [r5, #2284]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.38666, D.38666
	str	r3, [r5, #2288]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r8, #1	@ D.38666, j,
	ldr	r0, [r5, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	smull	r2, r3, r1, r4	@ tmp307, D.38666, tmp699
	mov	r8, r1, asr #31	@ tmp310, D.38666,
	rsb	r8, r8, r3, asr #8	@ j, tmp310,,
	mov	r3, r8, asl #10	@ tmp313, j,
	add	r8, r3, r8, lsl #7	@ tmp314, tmp313, j,
	rsb	r8, r8, r1	@ j, tmp314, D.38666
	cmp	r0, r8	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, j
	bne	.L766	@,
.L765:
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	adds	r3, r10, #168	@ pRawPacketArray, pSmInstArray,
	str	r3, [sp, #44]	@ pRawPacketArray, %sfp
	beq	.L761	@,
	ldr	r9, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r8, [fp, #172]	@ D.38666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	cmp	r9, r8	@ i, D.38666
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	addgt	r3, r8, #1024	@ D.38666, D.38666,
	rsble	r3, r9, r8	@ D.38661, i, D.38666
	rsbgt	r3, r9, r3	@ D.38661, i, D.38666
	cmp	r9, r8	@ i, D.38666
	str	r3, [sp, #56]	@ D.38661, %sfp
	beq	.L843	@,
	str	r5, [sp, #60]	@ tmp692, %sfp
	mvn	r6, #0	@ tmp697,
	mvn	r7, #0	@,
	mov	ip, r9	@ i, i
	str	r9, [sp, #36]	@ i, %sfp
	ldrd	r4, [sp, #8]	@ pts,,
	b	.L782	@
.L857:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r9, lsr #22	@ tmp544, tmp543,
	add	r3, lr, ip	@ tmp545, D.38666, tmp544
	ubfx	r3, r3, #0, #10	@ tmp546, tmp545,,
	rsb	ip, ip, r3	@ i, tmp544, tmp546
.L787:
	cmp	r8, ip	@ D.38666, i
	beq	.L855	@,
.L782:
	mov	r3, ip, asl #6	@ tmp531, i,
	mvn	r0, #0	@ tmp535,
	add	r3, r3, ip, lsl #3	@ tmp532, tmp531, i,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp533, pSmInstArray, tmp532
	ldrd	r2, [r3, #184]	@ D.38667, tmp533,
	cmp	r3, r7	@ D.38667,
	cmpeq	r2, r6	@ D.38667, tmp697
	beq	.L856	@,
	cmp	r5, r3	@ pts, D.38667
	add	lr, ip, #1	@ D.38666, i,
	cmpeq	r4, r2	@ pts, D.38667
	mov	r9, lr, asr #31	@ tmp543, D.38666,
	bhi	.L857	@,
	beq	.L858	@,
	bcs	.L787	@,
	ldr	lr, [fp, #176]	@ D.38666, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r9, [sp, #36]	@ i, %sfp
	strd	r2, [sp, #24]	@ D.38667,,
	mov	r4, lr, asl #6	@ tmp575, D.38666,
	ldr	r5, [sp, #60]	@ tmp692, %sfp
	add	r4, r4, lr, lsl #3	@ tmp576, tmp575, D.38666,
	add	r4, r10, r4	@ tmp577, pSmInstArray, tmp576
	ldrd	r6, [r4, #184]	@ D.38667, tmp577,
	cmp	r7, r1	@ D.38667,
	cmpeq	r6, r0	@ D.38667, tmp535
	beq	.L859	@,
	ldrd	r0, [sp, #8]	@ pts,,
	cmp	r1, r7	@ pts, D.38667
	cmpeq	r0, r6	@ pts, D.38667
	bls	.L795	@,
	subs	r0, r0, r6	@ D.38667, D.38667, D.38667
	ldrd	r2, [sp, #48]	@ gap,,
	sbc	r1, r1, r7	@ D.38667, D.38667, D.38667
	cmp	r3, r1	@ gap, D.38667
	cmpeq	r2, r0	@ gap, D.38667
	bcc	.L860	@,
.L795:
	cmp	r9, lr	@ i, D.38666
	addgt	lr, lr, #1024	@ D.38666, D.38666,
	rsb	r1, r9, lr	@ DelNum, i, D.38666
	cmp	r1, #0	@ DelNum,
	beq	.L798	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp595,
	movne	r4, #0	@ tmp595,
	beq	.L798	@,
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.38667, *pArgs_35(D)
.L851:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #44]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, r4	@, tmp595
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.38661, tmp595
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L856:
	add	r3, ip, #1	@ D.38666, i,
	mov	ip, r3, asr #31	@ tmp536, D.38666,
	mov	ip, ip, lsr #22	@ tmp537, tmp536,
	add	r3, r3, ip	@ tmp538, D.38666, tmp537
	ubfx	r3, r3, #0, #10	@ tmp539, tmp538,,
	rsb	ip, ip, r3	@ i, tmp537, tmp539
	cmp	r8, ip	@ D.38666, i
	bne	.L782	@,
.L855:
	ldr	r9, [sp, #36]	@ i, %sfp
	cmp	r9, r8	@ i, D.38666
	addgt	r8, r8, #1024	@ D.38666, D.38666,
.L843:
	rsb	r1, r9, r8	@ DelNum, i, D.38666
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	cmp	r1, #0	@ DelNum,
	bne	.L861	@,
.L785:
	ldr	r2, [sp, #56]	@ RawNumInVfmw, %sfp
	ldrd	r0, [sp, #24]	@ RawNum,,
	mov	r3, r2, asr #31	@ RawNumInVfmw, RawNumInVfmw,
	cmp	r1, r3	@ RawNum, RawNumInVfmw
	cmpeq	r0, r2	@ RawNum, RawNumInVfmw
	bls	.L862	@,
	ldrd	r0, [sp, #24]	@ RawNumToSeek,,
	subs	r0, r0, r2	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	sbc	r1, r1, r3	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	mov	r2, r0	@ RawNumToSeek, RawNumToSeek
	movw	r0, #1023	@ tmp610,
	mov	r3, r1	@ RawNumToSeek, RawNumToSeek
	and	r0, r0, r2	@ D.38667, tmp610, RawNumToSeek
	mov	r1, #0	@,
	and	r1, r1, r3	@ D.38667,, RawNumToSeek
	orrs	r1, r0, r1	@ tmp760, D.38667
	mov	r2, r2, lsr #10	@ D.38667, RawNumToSeek,
	orrne	r2, r2, r3, asl #22	@ D.38667, D.38667, RawNumToSeek,
	orreq	r3, r2, r3, asl #22	@ SeekTime, D.38667, RawNumToSeek,
	addne	r3, r2, #1	@ SeekTime, D.38667,
	add	r3, r3, #1	@ D.38666, SeekTime,
	str	r3, [sp, #40]	@ D.38666, %sfp
	cmp	r3, #0	@ D.38666,
	ble	.L823	@,
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
.L824:
	ldr	r3, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	lr, [fp, #172]	@ D.38661, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	mov	ip, r3	@ i, i
	str	r3, [sp, #24]	@ i, %sfp
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L804:
	mov	r3, ip, asl #6	@ tmp631, i,
	cmp	ip, lr	@ i, D.38661
	add	r3, r3, ip, lsl #3	@ tmp632, tmp631, i,
	mvn	r0, #0	@ tmp635,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp633, pSmInstArray, tmp632
	beq	.L863	@,
	ldrd	r6, [r3, #184]	@ D.38667, tmp633,
	add	r3, ip, #1	@ D.38666, i,
	cmp	r7, r5	@ D.38667,
	cmpeq	r6, r4	@ D.38667, tmp694
	beq	.L864	@,
	cmp	r9, r7	@ pts, D.38667
	mov	r2, r3, asr #31	@ tmp643, D.38666,
	cmpeq	r8, r6	@ pts, D.38667
	bls	.L812	@,
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r2, lsr #22	@ tmp644, tmp643,
	add	r3, r3, ip	@ tmp645, D.38666, tmp644
	ubfx	r3, r3, #0, #10	@ tmp646, tmp645,,
	rsb	ip, ip, r3	@ i, tmp644, tmp646
	b	.L804	@
.L812:
	beq	.L865	@,
	bcs	.L804	@,
	ldr	lr, [fp, #176]	@ D.38661, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r2, r6	@ D.38667, D.38667
	ldr	r8, [sp, #24]	@ i, %sfp
	mov	r3, r7	@ D.38667, D.38667
	mov	r4, lr, asl #6	@ tmp663, D.38661,
	add	r4, r4, lr, lsl #3	@ tmp664, tmp663, D.38661,
	add	r4, r10, r4	@ tmp665, pSmInstArray, tmp664
	ldrd	r4, [r4, #184]	@ D.38667, tmp665,
	cmp	r5, r1	@ D.38667,
	cmpeq	r4, r0	@ D.38667, tmp635
	beq	.L866	@,
	ldrd	r0, [sp, #8]	@ pts,,
	cmp	r1, r5	@ pts, D.38667
	cmpeq	r0, r4	@ pts, D.38667
	bls	.L818	@,
	subs	r0, r0, r4	@ D.38667, D.38667, D.38667
	ldrd	r6, [sp, #48]	@ gap,,
	sbc	r1, r1, r5	@ D.38667, D.38667, D.38667
	cmp	r7, r1	@ gap, D.38667
	cmpeq	r6, r0	@ gap, D.38667
	strcc	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	movcc	r4, r2	@ D.38667, D.38667
	movcc	r5, r3	@ D.38667, D.38667
	movcc	lr, ip	@ D.38661, i
.L818:
	cmp	lr, r8	@ D.38661, i
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	addlt	lr, lr, #1024	@ D.38666, D.38661,
	rsb	r1, r8, lr	@ DelNum, i, D.38666
	cmp	r1, #0	@ DelNum,
	strd	r4, [r3]	@ D.38667, *pArgs_35(D)
	bne	.L821	@,
.L850:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, r1	@ D.38661, DelNum
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L840:
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L864:
	mov	ip, r3, asr #31	@ tmp636, D.38666,
	mov	ip, ip, lsr #22	@ tmp637, tmp636,
	add	r3, r3, ip	@ tmp638, D.38666, tmp637
	ubfx	r3, r3, #0, #10	@ tmp639, tmp638,,
	rsb	ip, ip, r3	@ i, tmp637, tmp639
	b	.L804	@
.L863:
	ldr	r3, [sp, #24]	@ i, %sfp
	cmp	r3, ip	@ i, i
	addgt	ip, ip, #1024	@ D.38666, i,
	ldrgt	r3, [sp, #24]	@ i, %sfp
	rsb	r1, r3, ip	@ DelNum, i, D.38666
	ldr	r3, [sp, #24]	@ i, %sfp
	cmp	r1, #0	@ DelNum,
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bne	.L867	@,
.L809:
	ldr	r3, [sp, #36]	@ j, %sfp
	ldr	r2, [sp, #40]	@ D.38666, %sfp
	add	r3, r3, #1	@ j, j,
	str	r3, [sp, #36]	@ j, %sfp
	cmp	r3, r2	@ j, D.38666
	beq	.L823	@,
	ldr	r6, [sp, #20]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r0, r6	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r6	@, ChanID
	bl	FillRawData	@
	b	.L824	@
.L865:
	ldr	r8, [sp, #24]	@ i, %sfp
	ldr	r0, [sp, #32]	@ pArgs, %sfp
	cmp	r8, ip	@ i, i
	ldrd	r2, [sp, #8]	@ pts,,
	addgt	ip, ip, #1024	@ D.38666, i,
	rsb	r1, r8, ip	@ DelNum, i, D.38666
	cmp	r1, #0	@ DelNum,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	beq	.L850	@,
.L821:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #44]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #20]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.38661,
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L867:
	ldr	r0, [sp, #44]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L809	@
.L858:
	ldr	r9, [sp, #36]	@ i, %sfp
	ldr	r5, [sp, #60]	@ tmp692, %sfp
	cmp	ip, r9	@ i, i
	addlt	ip, ip, #1024	@ D.38666, i,
	rsb	r1, r9, ip	@ DelNum, i, D.38666
	cmp	r1, #0	@ DelNum,
	beq	.L792	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp558,
	movne	r4, #0	@ tmp558,
	beq	.L792	@,
	ldr	r0, [sp, #32]	@ pArgs, %sfp
	ldrd	r2, [sp, #8]	@ pts,,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	b	.L851	@
.L861:
	ldr	r0, [sp, #44]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #20]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L785	@
.L853:
	ldr	r10, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r4, r10	@ i, j
	beq	.L772	@,
	movw	r9, #36409	@ tmp701,
	movt	r9, 14563	@ tmp701,
.L773:
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
	rsb	r2, ip, r2	@ D.38665, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.38666, D.38665
	str	r2, [r5, #2284]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.38666, D.38666
	str	r3, [r5, #2288]	@ D.38666, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r10, #1	@ D.38666, j,
	smull	r2, r3, r1, r9	@ tmp402, D.38666, tmp701
	mov	r10, r1, asr #31	@ tmp405, D.38666,
	rsb	r10, r10, r3, asr #8	@ j, tmp405,,
	mov	r3, r10, asl #10	@ tmp408, j,
	add	r10, r3, r10, lsl #7	@ tmp409, tmp408, j,
	rsb	r10, r10, r1	@ j, tmp409, D.38666
	cmp	r4, r10	@ i, j
	bne	.L773	@,
	add	r6, r6, r8	@ tmp415, tmp689, tmp690
	add	fp, fp, r6	@ tmp416, tmp691, tmp415
	ldrd	r2, [fp, #232]	@ D.38662, tmp416,
.L772:
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	mov	r0, #0	@ D.38661,
	strd	r2, [r1]	@ D.38662, *pArgs_35(D)
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L792:
	ldr	r1, [sp, #32]	@ pArgs, %sfp
	ldrd	r2, [sp, #8]	@ pts,,
	strd	r2, [r1]	@ pts, *pArgs_35(D)
.L849:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, #0	@ D.38661,
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r3, [sp, #40]	@ PushRawOver, %sfp
	str	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	add	sp, sp, #68	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L798:
	ldr	r3, [sp, #32]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.38667, *pArgs_35(D)
	b	.L849	@
.L866:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r4, r6	@ D.38667, D.38667
	mov	r5, r7	@ D.38667, D.38667
	mov	lr, ip	@ D.38661, i
	b	.L818	@
.L854:
	subs	r8, r8, r2	@ D.38667, D.38667, D.38667
	sbc	r9, r9, r3	@ D.38667, D.38667, D.38667
	mov	r2, r8	@ D.38667, D.38667
	mov	r3, r9	@ D.38667, D.38667
	ldrd	r8, [sp, #48]	@ gap,,
	cmp	r9, r3	@ gap, D.38667
	cmpeq	r8, r2	@ gap, D.38667
	strcc	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	movcc	r0, r4	@ D.38661, i
	b	.L775	@
.L860:
	ldrd	r6, [sp, #24]	@ D.38667,,
	mov	lr, ip	@ D.38666, i
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	b	.L795	@
.L859:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r6, r2	@ D.38667, D.38667
	mov	r7, r3	@ D.38667, D.38667
	mov	lr, ip	@ D.38666, i
	b	.L795	@
.L823:
	mvn	r0, #1	@ D.38661,
	b	.L840	@
.L761:
	mvn	r0, #0	@ D.38661,
	b	.L840	@
.L862:
	strd	r2, [sp]	@ RawNumInVfmw,
	mov	r2, r0	@, RawNum
	mov	r3, r1	@, RawNum
	mov	r0, #1	@,
	ldr	r1, .L868+4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.38661,
	b	.L840	@
.L869:
	.align	2
.L868:
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
	mov	fp, r0	@ D.38672,
	movw	r0, #51208	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r10, r0	@ D.38672,
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r9, r0	@ D.38672,
	movw	r0, #51216	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r8, r0	@ D.38672,
	movw	r0, #51220	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r7, r0	@ D.38672,
	movw	r0, #51224	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r6, r0	@ D.38672,
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r5, r0	@ D.38672,
	mov	r0, #51200	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, .L872	@,
	mov	r4, r0	@ D.38672,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, fp	@, D.38672
	ldr	r1, .L872+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r10	@, D.38672
	ldr	r1, .L872+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r9	@, D.38672
	ldr	r1, .L872+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, D.38672
	ldr	r1, .L872+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r7	@, D.38672
	ldr	r1, .L872+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r6	@, D.38672
	ldr	r1, .L872+24	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r5	@, D.38672
	ldr	r1, .L872+28	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	sxtb	r2, r4	@, D.38672
	ldr	r1, .L872+32	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	dprint_vfmw	@
.L873:
	.align	2
.L872:
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
	ldr	r5, .L880	@ tmp217,
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
	ldrsb	r3, [r4, #1]	@ D.38686, pSmCtrlReg_6(D)->SliceCheckFlag
	ldr	r1, [r4, #36]	@ pSmCtrlReg_6(D)->ScdProtocol, pSmCtrlReg_6(D)->ScdProtocol
	ldr	r2, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.38686, D.38686,
	and	r1, r1, #15	@ D.38686, pSmCtrlReg_6(D)->ScdProtocol,
	and	r3, r3, #16	@ D.38686, D.38686,
	orr	r1, r1, r2, asl #8	@ D.38686, D.38686, pSmCtrlReg_6(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.38686, D.38686
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	cmp	r3, #0	@ pSmCtrlReg_6(D)->ScdLowdlyEnable,
	beq	.L875	@,
	ldr	r1, [r4, #108]	@, pSmCtrlReg_6(D)->reg_avs_flag
	ldr	r0, [r5]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
.L875:
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
.L881:
	.align	2
.L880:
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
	ldr	r1, .L888	@,
	mov	r6, r2	@ PushRawNum, PushRawNum
	bl	dprint_vfmw	@
	mov	r2, r7	@, pDownMsgVirAddr
	ldr	r1, .L888+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	mov	r2, r4	@, DownMsgPhyAddr
	ldr	r1, .L888+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r6, #0	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r6, r6, r6, lsl #1	@ D.38701, PushRawNum, PushRawNum,
	mov	r5, r7	@ ivtmp.470, pDownMsgVirAddr
	mov	r4, #0	@ j,
.L884:
	ldr	r3, [r7, r4, asl #2]	@, MEM[base: pDownMsgVirAddr_6(D), index: _33, step: 4, offset: 0B]
	mov	r2, r4	@, j
	ldr	r1, .L888+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #4]	@, MEM[base: _32, offset: 4B]
	add	r2, r4, #1	@, j,
	ldr	r1, .L888+12	@,
	mov	r0, #24	@,
	add	r5, r5, #12	@ ivtmp.470, ivtmp.470,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #-4]	@, MEM[base: _32, offset: 8B]
	add	r2, r4, #2	@, j,
	ldr	r1, .L888+12	@,
	mov	r0, #24	@,
	add	r4, r4, #3	@ j, j,
	bl	dprint_vfmw	@
	ldr	r1, .L888+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	cmp	r4, r6	@ j, D.38701
	bne	.L884	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L889:
	.align	2
.L888:
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
	beq	.L901	@,
	add	r3, r6, #73728	@ tmp182, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp182,,
	cmp	r1, r2	@ pRawStreamArray_17(D)->Head, pRawStreamArray_17(D)->Tail
	beq	.L902	@,
	ldr	r9, [r3, #12]	@ FirstRawOffset, pRawStreamArray_17(D)->FirstPacketOffset
	mov	fp, r9	@ D.38719, FirstRawOffset
.L891:
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r4, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r10, #0	@ tmp195,
	rsb	r4, r9, r4	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r3, [sp, #4]	@ RawPacket.VirAddr, RawPacket.VirAddr
	cmp	r4, r8	@ RawShowTotalLen, SegStreamSize
	add	r9, r2, r9	@ D.38714, RawPacket.PhyAddr, FirstRawOffset
	add	r3, r3, fp	@ D.38715, RawPacket.VirAddr, D.38719
	str	r10, [r5]	@ tmp195, *pDownMsgVirAddr_29(D)
	str	r10, [r5, #4]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 4B]
	str	r10, [r5, #8]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 8B]
	str	r4, [sp, #8]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [sp]	@ D.38714, RawPacket.PhyAddr
	str	r3, [sp, #4]	@ D.38715, RawPacket.VirAddr
	str	r10, [r7, #4]	@ tmp195, pSmPushRaw_33(D)->PushRawTotalLen
	bgt	.L892	@,
	mov	fp, r10	@ PushRawNum, j
	mov	lr, r4	@ D.38713, RawShowTotalLen
	b	.L895	@
.L913:
	ldr	lr, [sp, #8]	@ D.38713, RawPacket.Length
	movw	r2, #1023	@ tmp256,
	add	r4, r4, lr	@ RawShowTotalLen, RawShowTotalLen, D.38713
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	movlt	r3, #0	@ tmp216,
	movge	r3, #1	@ tmp216,
	cmp	fp, r2	@ PushRawNum, tmp256
	movgt	r3, #0	@ tmp216,
	cmp	r3, #0	@ tmp216,
	beq	.L894	@,
.L895:
	cmp	lr, #0	@ D.38713,
	mov	r3, r10, asl #2	@ D.38717, j,
	add	r2, r5, r3	@ tmp200, pDownMsgVirAddr, D.38717
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	add	r3, r3, #12	@ D.38717, D.38717,
	ble	.L893	@,
	ldr	ip, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	ldr	r9, [sp, #112]	@ tmp251, DownMsgPhyAddr
	add	lr, lr, ip	@ D.38714, D.38713, RawPacket.PhyAddr
	str	ip, [r5, r10, asl #2]	@ RawPacket.PhyAddr, *_43
	add	r10, r10, #3	@ j, j,
	add	r3, r3, r9	@ D.38717, D.38717, tmp251
	sub	lr, lr, #1	@ D.38714, D.38714,
	mov	r9, #0	@ tmp252,
	str	r3, [r2, #8]	@ D.38717, *_56
	str	r9, [sp, #8]	@ tmp252, RawPacket.Length
	str	lr, [r2, #4]	@ D.38714, *_49
.L893:
	str	r4, [r7, #4]	@ RawShowTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L913	@,
.L894:
	ldr	r3, [sp, #116]	@ tmp253, LowdlyFlag
	cmp	r3, #0	@ tmp253,
	bne	.L896	@,
	ldr	r3, [sp, #8]	@ D.38713, RawPacket.Length
	cmp	r3, #0	@ D.38713,
	bne	.L900	@,
.L896:
	cmp	fp, #0	@ PushRawNum,
	beq	.L899	@,
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
	mov	r0, r4	@ D.38713, tmp236
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L892:
	ldr	r3, [sp, #116]	@ tmp255, LowdlyFlag
	cmp	r3, #0	@ tmp255,
	bne	.L899	@,
	cmp	r4, #0	@ RawShowTotalLen,
	beq	.L899	@,
	ldr	r10, [sp, #116]	@ j, LowdlyFlag
	mov	r3, r4	@ D.38713, RawShowTotalLen
	mov	fp, r10	@ PushRawNum, j
.L900:
	ldr	r2, [r7, #4]	@ D.38714, pSmPushRaw_33(D)->PushRawTotalLen
	sub	r1, r8, #16	@ D.38714, SegStreamSize,
	cmp	r2, r1	@ D.38714, D.38714
	bge	.L896	@,
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	cmplt	fp, #1024	@, PushRawNum,
	bge	.L896	@,
	rsb	r2, r2, r8	@ D.38714, D.38714, SegStreamSize
	cmp	r2, r3	@ D.38714, D.38713
	bgt	.L896	@,
	mov	r3, r10, asl #2	@ D.38717, j,
	ldr	ip, [sp]	@ D.38714, RawPacket.PhyAddr
	add	r0, r5, r3	@ tmp226, pDownMsgVirAddr, D.38717
	ldr	lr, [sp, #112]	@ tmp254, DownMsgPhyAddr
	add	r1, r2, ip	@ D.38714, D.38714, D.38714
	add	r3, r3, #12	@ D.38717, D.38717,
	str	ip, [r5, r10, asl #2]	@ D.38714, *_84
	add	r3, r3, lr	@ D.38717, D.38717, tmp254
	sub	r1, r1, #1	@ D.38714, D.38714,
	stmib	r0, {r1, r3}	@ tmp226,,
	ldr	r3, [r7, #4]	@ pSmPushRaw_33(D)->PushRawTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	mov	r1, #0	@ tmp234,
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	add	r10, r10, #3	@ j, j,
	add	r2, r3, r2	@ D.38714, pSmPushRaw_33(D)->PushRawTotalLen, D.38714
	str	r1, [sp, #8]	@ tmp234, RawPacket.Length
	str	r2, [r7, #4]	@ D.38714, pSmPushRaw_33(D)->PushRawTotalLen
	b	.L896	@
.L902:
	mov	fp, #0	@ D.38719,
	mov	r9, fp	@ FirstRawOffset, D.38719
	b	.L891	@
.L901:
	mov	fp, r6	@ D.38719, pRawStreamArray
	mov	r9, r6	@ FirstRawOffset, pRawStreamArray
	b	.L891	@
.L899:
	mvn	r0, #5	@ D.38713,
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
	bne	.L915	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L915:
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
	movne	r7, #0	@ D.38733,
	moveq	r7, #1	@ D.38733,
	cmn	r0, #168	@ pScdInstance,
	str	r2, [sp, #12]	@ pStreamSegArray, %sfp
	add	r2, r0, #168	@ pRawStreamArray, pScdInstance,
	str	r2, [sp, #16]	@ pRawStreamArray, %sfp
	ldr	r2, [r0, #88]	@ D.38731, pScdInstance_9(D)->Config.ScdLowdlyEnable
	movne	r5, #0	@ D.38733,
	moveq	r5, #1	@ D.38733,
	orrs	r3, r5, r7	@ tmp180, D.38733, D.38733
	str	r2, [sp, #20]	@ D.38731, %sfp
	bne	.L920	@,
	add	r6, r0, #165888	@ __p, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r6, r6, #248	@ __p, __p,
	mov	r1, #12	@,
	str	r3, [sp, #32]	@ tmp180, SegStreamSize
	mov	r0, r6	@, __p
	str	r3, [sp, #36]	@ tmp180, FreeSegBufAddr
	bl	__memzero	@
	cmp	r5, #0	@ D.38733,
	bne	.L920	@,
	ldr	r2, [r8, #172]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail
	mov	r0, #26	@,
	ldr	r3, [r8, #168]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r1, .L942	@,
	subs	fp, r2, r3	@ StreamNum, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	addmi	fp, fp, #1024	@ StreamNum, StreamNum,
	mov	r2, fp	@, StreamNum
	bl	dprint_vfmw	@
	ldr	r5, [r8, #188]	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].RawTotalSize
	ldr	r2, [r8, #180]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset
	rsb	r5, r2, r5	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, RawStreamSize
	movs	r8, r5, asr #31	@ D.38732, RawStreamSize,
	beq	.L940	@,
.L936:
	mov	r0, r8	@, D.38732
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L920:
	mvn	r8, #0	@ D.38732,
	mov	r0, r8	@, D.38732
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L940:
	mov	r2, r5	@, RawStreamSize
	ldr	r1, .L942+4	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
	cmp	r5, #3	@ RawStreamSize,
	cmpgt	fp, #0	@, StreamNum,
	ble	.L932	@,
	add	r3, r4, #163840	@ tmp300, pScdInstance,
	str	r3, [sp, #24]	@ tmp300, %sfp
	movw	lr, #36409	@ tmp212,
	ldr	r1, .L942+8	@,
	ldr	r2, [r3, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail
	movt	lr, 14563	@ tmp212,
	ldr	r0, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head
	add	r3, r2, #1152	@ D.38731, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail,
	rsb	r2, r0, r3	@ D.38731, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, D.38731
	mov	r0, #26	@,
	smull	r10, fp, r2, lr	@ tmp211, D.38731, tmp212
	mov	r3, r2, asr #31	@ tmp214, D.38731,
	rsb	r3, r3, fp, asr #8	@ tmp210, tmp214, tmp308,
	mov	lr, r3, asl #10	@ tmp217, tmp210,
	add	r3, lr, r3, lsl #7	@ tmp218, tmp217, tmp210,
	rsb	r3, r3, r2	@ D.38731, tmp218, D.38731
	rsb	r3, r3, #1152	@ StreamNum, D.38731,
	str	r3, [sp, #28]	@ StreamNum, %sfp
	mov	r2, r3	@, StreamNum
	bl	dprint_vfmw	@
	ldr	r3, [sp, #28]	@ StreamNum, %sfp
	cmp	r3, #288	@ StreamNum,
	ble	.L923	@,
	ldr	r0, [sp, #12]	@, %sfp
	add	r2, sp, #32	@,,
	add	r1, sp, #36	@,,
	str	r3, [sp, #28]	@ StreamNum, %sfp
	bl	GetFreeSegBuf	@
	ldr	r2, [sp, #32]	@ SegStreamSize, SegStreamSize
	ldr	lr, [sp, #36]	@ FreeSegBufAddr, FreeSegBufAddr
	mov	r0, #26	@,
	sub	r2, r2, #79	@ D.38731, SegStreamSize,
	ldr	r1, .L942+12	@,
	add	lr, lr, #3	@ D.38734, FreeSegBufAddr,
	str	r2, [sp, #32]	@ D.38731, SegStreamSize
	bic	lr, lr, #3	@ D.38734, D.38734,
	str	lr, [sp, #36]	@ D.38734, FreeSegBufAddr
	bl	dprint_vfmw	@
	ldr	r1, [sp, #24]	@ tmp300, %sfp
	ldr	r2, [sp, #32]	@ D.38731, SegStreamSize
	ldr	r0, [r1, #2268]	@ SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufSize
	cmp	r2, r0, asr #3	@ D.38731, SegBufSize,
	ble	.L923	@,
	ldr	fp, [sp, #24]	@ tmp300, %sfp
	cmp	r7, #0	@ D.38733,
	ldr	r3, [sp, #28]	@ StreamNum, %sfp
	add	r7, r4, #176128	@ tmp301, pScdInstance,
	ldreq	lr, [r1, #2264]	@ D.38731, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufPhyAddr
	movne	r0, r8	@ D.38731, D.38732
	movne	lr, r8	@ D.38731, D.38732
	ldr	r10, [fp, #2312]	@ D.38731, pScdInstance_9(D)->BufAddrCfg.DownMsgPhyAddr
	str	r3, [fp, #2336]	@ StreamNum, pScdInstance_9(D)->BufAddrCfg.UpMsgNum
	addeq	r0, r0, lr	@ D.38731, SegBufSize, D.38731
	ldr	ip, [r7, #3996]	@ pScdInstance_9(D)->UpMsgStepNum, pScdInstance_9(D)->UpMsgStepNum
	sub	r1, r9, #6	@ D.38733, StdType,
	str	lr, [sp, #64]	@ D.38731, ScdCtrlReg.BufferFirst
	clz	r1, r1	@ D.38733, D.38733
	str	r0, [sp, #68]	@ D.38731, ScdCtrlReg.BufferLast
	cmp	r9, #1	@ StdType,
	cmpne	r9, #15	@, StdType,
	mul	r3, ip, r3	@ D.38734, pScdInstance_9(D)->UpMsgStepNum, StreamNum
	ldr	ip, [sp, #20]	@ D.38731, %sfp
	ldr	r0, [fp, #2316]	@ D.38735, pScdInstance_9(D)->BufAddrCfg.pDownMsgVirAddr
	mov	r1, r1, lsr #5	@ D.38733, D.38733,
	ldr	lr, [fp, #2324]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr
	str	ip, [sp, #144]	@ D.38731, ScdCtrlReg.ScdLowdlyEnable
	ldr	ip, [sp, #36]	@ FreeSegBufAddr, FreeSegBufAddr
	str	r3, [sp, #60]	@ D.38734, ScdCtrlReg.UpLen
	mov	r3, r3, asl #2	@ D.38734, D.38734,
	str	r10, [sp, #44]	@ D.38731, ScdCtrlReg.DownMsgPhyAddr
	str	r3, [fp, #2332]	@ D.38734, pScdInstance_9(D)->BufAddrCfg.UpMsgSize
	mov	r3, #1	@ tmp245,
	str	r0, [sp, #48]	@ D.38735, ScdCtrlReg.pDownMsgVirAddr
	str	lr, [sp, #52]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, ScdCtrlReg.UpMsgPhyAddr
	str	ip, [sp, #72]	@ FreeSegBufAddr, ScdCtrlReg.BufferIni
	str	r1, [sp, #148]	@ D.38733, ScdCtrlReg.reg_avs_flag
	strb	r3, [sp, #42]	@ tmp245, ScdCtrlReg.ScdStart
	strb	r3, [sp, #40]	@ tmp245, ScdCtrlReg.ScdIntMask
	beq	.L934	@,
	cmp	r1, #0	@ D.38733,
	beq	.L941	@,
.L939:
	strb	r3, [sp, #41]	@ tmp271, ScdCtrlReg.SliceCheckFlag
	mov	r1, r6	@, __p
	str	r0, [sp]	@ D.38735,
	add	r0, sp, #40	@,,
	str	r10, [sp, #4]	@ D.38731,
	ldr	r3, [sp, #16]	@, %sfp
	str	r9, [sp, #76]	@ D.38731, ScdCtrlReg.ScdProtocol
	mov	r9, #1	@ tmp273,
	str	r9, [sp, #80]	@ tmp273, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	movne	r8, r6	@ D.38732, Ret
	bne	.L936	@,
	ldr	r3, [sp, #32]	@ D.38731, SegStreamSize
	strb	r9, [r4, #5]	@ tmp273, pScdInstance_9(D)->IsWaitSCD
	cmp	r3, r5	@ D.38731, RawStreamSize
	str	r5, [r7, #3968]	@ RawStreamSize, pScdInstance_9(D)->PrevCfgRawSize
	str	r3, [r7, #3972]	@ D.38731, pScdInstance_9(D)->PrevCfgSegSize
	movlt	r2, #0	@ tmp303,
	movge	r2, #1	@ tmp303,
	strb	r6, [r4, #4]	@ Ret, pScdInstance_9(D)->FillNewRawFlag
	strb	r2, [r4, #2]	@ tmp303, pScdInstance_9(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r7, #3992]	@, pScdInstance_9(D)->LastSCDStartTime
	strb	r6, [r4, #3]	@ Ret, pScdInstance_9(D)->InsertNewSegFlag
	b	.L936	@
.L934:
	mov	r9, #0	@ D.38731,
.L925:
	mov	r3, #0	@ tmp271,
	b	.L939	@
.L941:
	sub	r1, r9, #2	@ D.38734, D.38731,
	cmp	r1, r3	@ D.38734,
	bls	.L939	@,
	b	.L925	@
.L923:
	mvn	r8, #5	@ D.38732,
	b	.L936	@
.L932:
	mvn	r8, #4	@ D.38732,
	b	.L936	@
.L943:
	.align	2
.L942:
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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	ldr	r8, .L990	@ tmp285,
	ldr	r5, [r8, #296]	@ D.38752, s_eScdDrvSleepStage
	cmp	r5, #0	@ D.38752,
	beq	.L945	@,
	cmp	r5, #1	@ D.38752,
	beq	.L946	@,
.L962:
	mvn	r0, #2	@ D.38751,
.L947:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L945:
	ldr	r4, [r8, #284]	@ NextInstId, s_SmIIS.ThisInstID
	mov	r10, r5	@ SegBufTotalSize, FreshSize
	mov	r9, r5	@ tmp286, FreshSize
	mov	fp, #4	@ D.38758,
	str	r0, [sp, #8]	@ pNextInstId, %sfp
	str	r5, [sp, #4]	@ FreshSize, %sfp
.L961:
	add	r3, r4, #1	@ D.38753, NextInstId,
	add	r1, sp, #16	@,,
	mov	r4, r3, asr #31	@ tmp168, D.38753,
	mov	r4, r4, lsr #30	@ tmp169, tmp168,
	add	r3, r3, r4	@ tmp170, D.38753, tmp169
	and	r3, r3, #3	@ tmp171, tmp170,
	rsb	r4, r4, r3	@ NextInstId, tmp169, tmp171
	add	r6, r4, #58	@ tmp284, NextInstId,
	mov	r0, r4	@, NextInstId
	add	r3, r8, r6, lsl #2	@ tmp175, tmp285, tmp284,
	ldr	r7, [r3, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #16]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L948	@,
	ldr	r3, [r7, #56]	@ D.38755, pSmInstArray_22->Config.VidStd
	sub	r2, r3, #8	@ D.38756, D.38755,
	cmp	r3, #5	@ D.38755,
	cmpne	r2, #1	@, D.38756,
	bls	.L948	@,
	cmp	r3, #1	@ D.38755,
	beq	.L987	@,
	cmp	r3, #4	@ D.38755,
	cmpne	r3, #18	@, D.38755,
	sub	r1, r3, #10	@ D.38756, D.38755,
	moveq	r2, #1	@ tmp192,
	movne	r2, #0	@ tmp192,
	cmp	r1, #4	@ D.38756,
	orrls	r2, r2, #1	@,, tmp199, tmp192
	cmp	r2, #0	@ tmp199,
	bne	.L948	@,
	cmp	r3, #17	@ D.38755,
	bne	.L950	@,
	mov	r0, r4	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L948	@,
	ldr	r1, .L990+4	@,
	mov	r0, #26	@,
	bl	dprint_vfmw	@
.L948:
	subs	fp, fp, #1	@ D.38758, D.38758,
	bne	.L961	@,
	b	.L962	@
.L946:
	mov	r3, #2	@ tmp166,
	mvn	r0, #2	@ D.38751,
	str	r3, [r8, #296]	@ tmp166, s_eScdDrvSleepStage
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L987:
	ldr	r3, [r7, #72]	@ pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L948	@,
.L950:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, #176128	@ tmp202, pSmInstArray,
	ldr	r3, [r2, #3992]	@ pSmInstArray_22->LastSCDStartTime, pSmInstArray_22->LastSCDStartTime
	subs	r3, r0, r3	@ WaitTime, D.38756, pSmInstArray_22->LastSCDStartTime
	strmi	r0, [r2, #3992]	@ D.38756, pSmInstArray_22->LastSCDStartTime
	bmi	.L952	@,
	ldrsb	r2, [r7, #2]	@ pSmInstArray_22->LastCfgAllRawFlag, pSmInstArray_22->LastCfgAllRawFlag
	cmp	r2, #1	@ pSmInstArray_22->LastCfgAllRawFlag,
	beq	.L988	@,
.L952:
	ldrsb	r3, [r7]	@ pSmInstArray_22->SegFullFlag, pSmInstArray_22->SegFullFlag
	cmp	r3, #1	@ pSmInstArray_22->SegFullFlag,
	strneb	r9, [r7, #1]	@ tmp286, pSmInstArray_22->IsCounting
	beq	.L989	@,
.L956:
	mov	r0, r7	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp261,
	streqb	r3, [r7]	@ tmp261, pSmInstArray_22->SegFullFlag
	beq	.L948	@,
	cmp	r0, #0	@ Ret,
	strb	r9, [r7]	@ tmp286, pSmInstArray_22->SegFullFlag
	bne	.L948	@,
	ldr	r3, [sp, #8]	@ pNextInstId, %sfp
	add	r6, r8, r6, lsl #2	@ tmp267, tmp285, tmp284,
	mov	r0, #1	@,
	str	r4, [r3]	@ NextInstId, *pNextInstId_64(D)
	ldr	r3, [r6, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	addne	r3, r3, #163840	@ tmp270, pSmInstArray,
	movne	r2, #1	@ tmp271,
	strne	r2, [r3, #2412]	@ tmp271, pSmInstArray_45->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L986	@,
	bl	OSAL_GetTimeInMs	@
	add	ip, r8, r4, lsl #2	@ tmp273, tmp285, NextInstId,
	ldr	r2, .L990+8	@ tmp277,
	ldr	r3, [ip, #324]	@ tmp276, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.38756, tmp276, D.38756
	cmp	r3, r2	@ D.38756, g_TraceBsPeriod
	strhi	r0, [ip, #324]	@ D.38756, last_rec_pos_time
.L986:
	mov	r0, #0	@ D.38751,
	b	.L947	@
.L988:
	ldrsb	r2, [r7, #4]	@ pSmInstArray_22->FillNewRawFlag, pSmInstArray_22->FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	r2, #0	@, pSmInstArray_22->FillNewRawFlag,
	beq	.L948	@,
	b	.L952	@
.L989:
	add	r3, r7, #73728	@ D.38757, pSmInstArray,
	add	r3, r3, #192	@ D.38757, D.38757,
	cmp	r3, #0	@ D.38757,
	addne	r2, r7, #163840	@ tmp220, pSmInstArray,
	ldrne	r1, [r2, #2288]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegFreshNum
	ldrne	r5, [r2, #2284]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegFreshSize
	ldrne	r10, [r2, #2268]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegBufSize
	ldrsb	r2, [r7, #1]	@ pSmInstArray_22->IsCounting, pSmInstArray_22->IsCounting
	strne	r1, [sp, #4]	@ FreshNum, %sfp
	cmp	r2, #0	@ pSmInstArray_22->IsCounting,
	bne	.L955	@,
	add	r3, r10, r10, lsr #31	@ tmp232, SegBufTotalSize, SegBufTotalSize,
	ldr	r2, [sp, #4]	@ FreshNum, %sfp
	cmp	r5, r3, asr #1	@ FreshSize, tmp232,
	movlt	r3, #1	@ tmp235,
	movge	r3, #0	@ tmp235,
	cmp	r2, #127	@ FreshNum,
	movgt	r3, #0	@, tmp240
	andle	r3, r3, #1	@,, tmp240, tmp235
	cmp	r3, #0	@ tmp240,
	beq	.L956	@,
	mov	r1, #1	@ tmp241,
	mov	r0, r4	@, NextInstId
	strb	r1, [r7, #1]	@ tmp241, pSmInstArray_22->IsCounting
	bl	CalcInstBlockTime	@
	b	.L956	@
.L955:
	mov	r1, #0	@,
	mov	r0, r4	@, NextInstId
	str	r3, [sp, #12]	@ D.38757, %sfp
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@ WaitSegTime,
	mov	r2, r0	@ WaitSegTime,
	ble	.L956	@,
	cmp	r10, #0	@ SegBufTotalSize,
	add	r1, r10, #3	@ tmp247, SegBufTotalSize,
	ldr	r0, [sp, #4]	@ FreshNum, %sfp
	movge	r1, r10	@ SegBufTotalSize, SegBufTotalSize
	cmp	r5, r1, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r1, #1	@ tmp250,
	movge	r1, #0	@ tmp250,
	cmp	r0, #63	@ FreshNum,
	movgt	r1, #0	@, tmp253
	andle	r1, r1, #1	@,, tmp253, tmp250
	cmp	r1, #0	@ tmp253,
	beq	.L956	@,
	ldr	r1, .L990+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #12]	@ D.38757, %sfp
	mvn	r1, #0	@,
	mov	r0, r3	@, D.38757
	bl	ReleaseStreamSeg	@
	strb	r9, [r7, #1]	@ tmp286, pSmInstArray_22->IsCounting
	strb	r9, [r7]	@ tmp286, pSmInstArray_22->SegFullFlag
	b	.L956	@
.L991:
	.align	2
.L990:
	.word	.LANCHOR0
	.word	.LC61
	.word	g_TraceBsPeriod
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
	ldr	r4, .L1007	@ tmp148,
	mov	r0, r3	@ D.38764, tmp123
	str	r3, [sp, #4]	@ tmp123, NextInstID
	b	.L994	@
.L993:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.38764, NextInstID,
	str	r0, [sp, #4]	@ D.38764, NextInstID
	cmp	r0, #3	@ D.38764,
	bgt	.L1005	@,
.L994:
	add	r3, r4, r0, lsl #2	@ tmp126, tmp148, D.38764,
	ldr	r3, [r3, #248]	@ D.38763, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.38763,
	add	r2, r3, #163840	@ tmp129, D.38763,
	beq	.L993	@,
	ldr	r3, [r2, #2412]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L993	@,
	bl	FillRawData	@
	b	.L993	@
.L1005:
	ldr	r3, [r4, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L1007	@ tmp132,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L995	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L1006	@,
.L992:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L995:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #292]	@ D.38765, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.38765
	strcc	r0, [r4, #292]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L992	@,
	rsb	r0, r3, r0	@ DelayTime, D.38765, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L992	@,
	ldr	r1, .L1007+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	bl	ResetSCD	@
	ldr	r0, [r4, #284]	@, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp145,
	str	r3, [r4, #288]	@ tmp145, s_SmIIS.SCDState
	bl	DeleteLastSendRaw	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1006:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp138,
	str	r2, [r4, #288]	@ tmp138, s_SmIIS.SCDState
	str	r3, [r4, #284]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #292]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1008:
	.align	2
.L1007:
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
	ldr	r1, .L1011	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4]	@, pSmStateReg_3(D)->Scdover
	ldr	r1, .L1011+4	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #4]	@, pSmStateReg_3(D)->ScdInt
	ldr	r1, .L1011+8	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #8]	@, pSmStateReg_3(D)->ShortScdNum
	ldr	r1, .L1011+12	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #12]	@, pSmStateReg_3(D)->ScdNum
	ldr	r1, .L1011+16	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, pSmStateReg_3(D)->ScdRollAddr
	ldr	r1, .L1011+20	@,
	mov	r0, #24	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, pSmStateReg_3(D)->SrcEaten
	ldr	r1, .L1011+24	@,
	mov	r0, #24	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1012:
	.align	2
.L1011:
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
	and	r3, r0, #1	@ D.38779,,
	movw	r0, #51268	@,
	str	r3, [r4]	@ D.38779, pSmStateReg_5(D)->Scdover
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.38779,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #4]	@ D.38779, pSmStateReg_5(D)->ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.38780,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.38780, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.38779,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.38779, pSmStateReg_5(D)->ScdNum
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
	mvneq	r0, #6	@ D.38791,
	beq	.L1026	@,
	add	r1, r9, #90112	@ tmp166, pStreamSegArray,
	movw	r6, #36409	@ tmp175,
	movt	r6, 14563	@ tmp175,
	subs	ip, r5, #1	@ i, Seg_num,
	ldr	r3, [r1, #2060]	@ pStreamSegArray_12(D)->Tail, pStreamSegArray_12(D)->Tail
	ldr	r8, [r1, #2056]	@ pStreamSegArray_12(D)->Head, pStreamSegArray_12(D)->Head
	add	r3, r3, #1152	@ D.38793, pStreamSegArray_12(D)->Tail,
	rsb	r3, r8, r3	@ D.38793, pStreamSegArray_12(D)->Head, D.38793
	smull	r6, r7, r3, r6	@ tmp174, D.38793, tmp175
	mov	r2, r3, asr #31	@ tmp177, D.38793,
	rsb	r2, r2, r7, asr #8	@ tmp173, tmp177,,
	mov	r8, r2, asl #10	@ tmp180, tmp173,
	add	r8, r8, r2, lsl #7	@ tmp181, tmp180, tmp173,
	rsb	r8, r8, r3	@ D.38793, tmp181, D.38793
	rsb	r8, r8, #1152	@ SegNum, D.38793,
	bmi	.L1024	@,
	add	r3, r10, #176128	@ tmp188, pScdInstance,
	ldr	r7, [r10, #20]	@ D.38791, pScdInstance_16(D)->SegFilter.ModeFlag
	mov	r0, #0	@ tmp191,
	ldr	r6, [r9]	@ D.38796, pStreamSegArray_12(D)->pSegBufVirAddr
	ldr	r2, [r3, #3996]	@ pScdInstance_16(D)->UpMsgStepNum, pScdInstance_16(D)->UpMsgStepNum
	sub	r5, r7, #1	@ D.38790, D.38791,
	clz	r5, r5	@ D.38790, D.38790
	ldr	lr, [r1, #2072]	@ D.38794, pStreamSegArray_12(D)->SegBufPhyAddr
	movt	r0, 46593	@ tmp191,
	mov	r9, #0	@ count,
	mov	r2, r2, asl #2	@ D.38794, pScdInstance_16(D)->UpMsgStepNum,
	mov	r5, r5, lsr #5	@ D.38790, D.38790,
	mla	r1, r2, ip, r4	@ ivtmp.503, D.38794, i, pUsedSeg
	b	.L1021	@
.L1031:
	cmp	r7, #2	@ D.38791,
	beq	.L1030	@,
.L1020:
	cmn	r4, #1	@ i,
	beq	.L1028	@,
	mov	ip, r4	@ i, i
.L1021:
	ldr	r3, [r1]	@ *_22, *_22
	sub	r4, ip, #1	@ i, i,
	rsb	r1, r2, r1	@ ivtmp.503, D.38794, ivtmp.503
	rsb	r3, lr, r3	@ D.38794, D.38794, *_22
	ldr	r3, [r6, r3]	@ start_code, MEM[(HI_U32 *)VirAddr_29]
	cmp	r3, r0	@ start_code, tmp191
	movne	r10, #0	@, tmp160
	andeq	r10, r5, #1	@,, tmp160, D.38790
	cmp	r10, #0	@ tmp160,
	beq	.L1031	@,
.L1018:
	add	r9, r9, #1	@ count, count,
	cmp	r9, #0	@ count,
	ble	.L1020	@,
	cmp	r8, ip	@ SegNum, i
	bcc	.L1020	@,
.L1028:
	mov	r0, ip	@ D.38791, i
.L1026:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1030:
	ubfx	r3, r3, #16, #8	@ D.38794, start_code,,
	sub	r3, r3, #128	@ D.38794, D.38794,
	cmp	r3, #3	@ D.38794,
	bhi	.L1020	@,
	b	.L1018	@
.L1024:
	mov	r0, r5	@ D.38791, Seg_num
	b	.L1026	@
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
	beq	.L1138	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #163840	@ tmp723, pScdInstance,
	.pad #276
	sub	sp, sp, #276	@,,
	ldr	r3, [fp, #2304]	@ pScdInstance_27(D)->SmPushRaw.PushRawOver, pScdInstance_27(D)->SmPushRaw.PushRawOver
	cmp	r3, #3	@ pScdInstance_27(D)->SmPushRaw.PushRawOver,
	moveq	r3, #2	@ tmp372,
	mvneq	r0, #6	@ D.38809,
	streq	r3, [fp, #2304]	@ tmp372, pScdInstance_27(D)->SmPushRaw.PushRawOver
	beq	.L1118	@,
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
	beq	.L1036	@,
	add	r3, r10, #73728	@ tmp721, pScdInstance,
	ldr	r2, [sp, #100]	@ D.38811, SmStateReg.ScdNum
	str	r3, [sp, #28]	@ tmp721, %sfp
	adds	r3, r3, #192	@ pStreamSegArray, tmp721,
	str	r3, [sp, #24]	@ pStreamSegArray, %sfp
	str	r2, [sp, #60]	@ D.38811, %sfp
	str	r2, [sp, #72]	@ D.38811, ScdSegNum
	beq	.L1139	@,
	ldr	r3, [fp, #2264]	@ SegBufAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r5, [fp, #2268]	@ SegBufLength, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufSize
	str	r3, [sp, #12]	@ SegBufAddr, %sfp
.L1078:
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #28]	@ tmp721, %sfp
	ldr	r6, [sp, #72]	@ ScdSegNum, ScdSegNum
	ldr	r1, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r6, #1152	@ ScdSegNum,
	movge	r6, #1152	@ D.38815,
	and	r0, r0, #15	@ D.38811,,
	str	r0, [r10, #16]	@ D.38811, pScdInstance_27(D)->SegFilter.ProtocolType
	ldr	r3, [fp, #2328]	@ pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr
	ldr	r0, [sp, #12]	@ SegBufAddr, %sfp
	str	r3, [r10, #12]	@ pScdInstance_27(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_27(D)->SegFilter.pScdUpMsg
	str	r0, [r10, #28]	@ SegBufAddr, pScdInstance_27(D)->SegFilter.SegBufPhyAddr
	ldr	r3, [fp, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, r0	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, SegBufAddr
	movw	r0, #51212	@,
	add	r3, r2, r3	@ D.38813, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.38811
	str	r1, [r10, #36]	@ SmStateReg.ScdRollAddr, pScdInstance_27(D)->SegFilter.SegBufRollAddr
	str	r3, [r10, #8]	@ D.38813, pScdInstance_27(D)->SegFilter.pSegBufVirAddr
	movt	r0, 4115	@,
	str	r5, [r10, #32]	@ SegBufLength, pScdInstance_27(D)->SegFilter.SegBufSize
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #32]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.38815,
	bhi	.L1140	@,
	ldr	r0, [sp, #72]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ D.38809,
.L1039:
	add	r3, r10, #165888	@ D.38817, pScdInstance,
	ldr	r1, [sp, #32]	@ UpMsgStepNum, %sfp
	str	r0, [r10, #40]	@ D.38809, pScdInstance_27(D)->SegFilter.SegNum
	mov	r2, r3	@ D.38817, D.38817
	add	r3, r10, #8	@ D.38816, pScdInstance,
	add	r2, r2, #368	@ D.38817, D.38817,
	str	r3, [sp, #48]	@ D.38816, %sfp
	str	r2, [sp, #16]	@ D.38817, %sfp
	mov	r0, r3	@, D.38816
	str	r1, [sp]	@ UpMsgStepNum,
	add	r3, sp, #72	@,,
	mov	r1, r2	@, D.38817
	add	r2, sp, #84	@,,
	bl	ScdReturnSegFilter	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1036	@,
	ldr	r5, [sp, #72]	@ D.38811, ScdSegNum
	add	r3, r10, #168	@ pRawStreamArray, pScdInstance,
	str	r3, [sp, #40]	@ pRawStreamArray, %sfp
	cmp	r5, #1	@ D.38811,
	ble	.L1141	@,
	movw	r0, #51212	@,
	strb	r6, [r10]	@ Ret, pScdInstance_27(D)->SegFullFlag
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r4, [sp, #32]	@ UpMsgStepNum, %sfp
	mov	r1, r4	@, UpMsgStepNum
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.38811,
	bcs	.L1045	@,
	ldr	r3, [sp, #72]	@ ScdSegNum, ScdSegNum
	ldr	r2, [sp, #16]	@ D.38817, %sfp
	sub	r3, r3, #1	@ D.38809, ScdSegNum,
	str	r3, [sp, #52]	@ D.38809, %sfp
	str	r3, [sp, #72]	@ D.38809, ScdSegNum
	mul	r3, r4, r3	@ D.38815, UpMsgStepNum, D.38809
	add	r3, r3, #1	@ tmp464, D.38815,
	ldr	r3, [r2, r3, asl #2]	@ *_113, *_113
	bic	r3, r3, #-2147483648	@ SrcEaten, *_113,
	str	r3, [sp, #36]	@ SrcEaten, %sfp
.L1046:
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1142	@,
.L1049:
	movw	r3, #36409	@ tmp725,
	add	r2, r10, #179200	@ D.38820, pScdInstance,
	movt	r3, 14563	@ tmp725,
	str	r3, [sp, #68]	@ tmp725, %sfp
	add	r3, r2, #888	@ D.38820, D.38820,
	str	r3, [sp, #44]	@ D.38820, %sfp
	ldr	r3, [fp, #2252]	@ LastSegTail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	mov	r8, #0	@ ivtmp.514,
	mov	r7, r8	@ i, ivtmp.514
	ldr	r5, [sp, #16]	@ ivtmp.512, %sfp
	ldr	r1, [sp, #52]	@ D.38809, %sfp
	str	r3, [sp, #64]	@ LastSegTail, %sfp
	ldr	r3, [sp, #32]	@ UpMsgStepNum, %sfp
	str	fp, [sp, #20]	@ tmp723, %sfp
	mov	r9, r3, asl #2	@ D.38815, UpMsgStepNum,
	b	.L1050	@
.L1147:
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	bne	.L1143	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1144	@,
.L1059:
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r2, sp, #76	@,,
	str	r6, [sp, #120]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	str	r4, [sp, #124]	@ SegPacketLen, SegPacket.LenInByte
	rsb	r6, r3, r6	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	ldr	r3, [sp, #28]	@ tmp721, %sfp
	ldr	r3, [r3, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	add	r6, r3, r6	@ D.38813, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.38811
	mov	r3, #1	@ tmp509,
	str	r6, [sp, #112]	@ D.38813, SegPacket.VirAddr
	strb	r3, [sp, #117]	@ tmp509, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #76]	@ D.38811, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	beq	.L1060	@,
	ldr	r3, [sp, #112]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1060	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, D.38811
	bhi	.L1060	@,
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
	bne	.L1145	@,
	ldrd	r6, [sp, #136]	@ SegPacket.Pts,,
	mov	r0, #26	@,
	ldr	r2, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1154	@,
	bic	r2, r2, #-2147483648	@, MEM[base: _140, offset: 4B],
	strd	r6, [sp]	@ SegPacket.Pts,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	mov	r0, #26	@,
.L1128:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r1, .L1154+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L1129:
	ldr	r1, [sp, #72]	@ D.38809, ScdSegNum
.L1058:
	add	r5, r5, r9	@ ivtmp.512, ivtmp.512, D.38815
	add	r8, r8, r9	@ ivtmp.514, ivtmp.514, D.38815
	mov	r7, fp	@ i, i
.L1050:
	cmp	r7, r1	@ i, D.38809
	bge	.L1146	@,
	ldr	r3, [sp, #16]	@ D.38817, %sfp
	add	fp, r7, #1	@ i, i,
	ldr	r6, [r5]	@ CurrSegPhyAddr, MEM[base: _140, offset: 0B]
	add	r2, r3, r9	@ D.38817, D.38817, D.38815
	ldr	r3, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	ip, [r2, r8]	@ NextSegPhyAddr, MEM[base: _419, index: ivtmp.514_417, offset: 0B]
	mov	r3, r3, lsr #31	@ D.38815, MEM[base: _140, offset: 4B],
	strb	r3, [sp, #119]	@ D.38815, SegPacket.DspCheckPicOverFlag
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	cmp	ip, r3	@ NextSegPhyAddr, SegBufAddr
	rsbne	r4, r6, ip	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	ldreq	r4, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsbeq	r4, r6, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r4, #3	@ SegPacketLen,
	bgt	.L1147	@,
	sub	r3, r4, #1	@ D.38822, SegPacketLen,
	cmp	r3, #2	@ D.38822,
	bhi	.L1062	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	bne	.L1058	@,
	mov	r0, ip	@, NextSegPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L1036	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.38811, MEM[(HI_U8 *)pTmpVirAddr_331 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.38811, *pTmpVirAddr_331
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.38811, MEM[(HI_U8 *)pTmpVirAddr_331 + 2B]
	mov	r2, r2, asl #16	@ D.38811, D.38811,
	orr	r3, r2, r3, asl #24	@ D.38811, D.38811, D.38811,
	orr	r3, r3, r1, asl #8	@ D.38815, D.38811, D.38811,
	cmp	r3, #256	@ D.38815,
	beq	.L1129	@,
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
	rsb	r3, r3, r6	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	str	r6, [sp, #200]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	add	r3, ip, r3	@ D.38813, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.38811
	str	r4, [sp, #204]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	ip, #1	@ tmp552,
	str	r3, [sp, #192]	@ D.38813, LastSegPacket.VirAddr
	strb	ip, [sp, #197]	@ tmp552, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r1, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	add	r3, sp, #192	@ tmp786,,
	ldr	r2, [sp, #44]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _140, offset: 4B],
	ldr	r0, [sp, #40]	@, %sfp
	bl	GetSegPts	@
	ldr	r1, [sp, #72]	@ D.38809, ScdSegNum
	b	.L1058	@
.L1141:
	ldr	r3, [r4, #3972]	@ pScdInstance_27(D)->PrevCfgSegSize, pScdInstance_27(D)->PrevCfgSegSize
	ldr	r2, [r4, #3968]	@ pScdInstance_27(D)->PrevCfgRawSize, pScdInstance_27(D)->PrevCfgRawSize
	cmp	r2, r3	@ pScdInstance_27(D)->PrevCfgRawSize, pScdInstance_27(D)->PrevCfgSegSize
	strleb	r6, [r10]	@ Ret, pScdInstance_27(D)->SegFullFlag
	movgt	r3, #1	@ tmp430,
	strgtb	r3, [r10]	@ tmp430, pScdInstance_27(D)->SegFullFlag
	cmp	r5, #0	@ D.38811,
	beq	.L1148	@,
	cmp	r5, #1	@ D.38811,
	movne	r1, #0	@ SrcEaten,
	beq	.L1149	@,
.L1044:
	ldr	r0, [sp, #40]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L1077	@,
.L1036:
	mvn	r0, #6	@ D.38809,
.L1118:
	add	sp, sp, #276	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1060:
	ldr	r1, .L1154+8	@,
	mov	r0, #0	@,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	ldr	r3, [sp, #36]	@, %sfp
	mov	r0, #0	@,
	ldr	r2, [sp, #76]	@, SegFreeBufLen
	mov	r4, #1	@ ScdErrFlag,
	ldr	r1, .L1154+12	@,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #0	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1154+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
.L1057:
	ldr	r3, [fp, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	ldr	r2, [sp, #64]	@ LastSegTail, %sfp
	cmp	r3, r2	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, LastSegTail
	movne	r3, #1	@ tmp674,
	moveq	r3, #0	@ tmp676,
	cmp	r7, #0	@ i,
	strb	r3, [r10, #3]	@ tmp676, pScdInstance_27(D)->InsertNewSegFlag
	ble	.L1074	@,
	ldr	r3, [sp, #32]	@ UpMsgStepNum, %sfp
	ldr	r0, [sp, #40]	@, %sfp
	mul	r7, r3, r7	@ D.38815, UpMsgStepNum, i
	ldr	r3, [sp, #16]	@ D.38817, %sfp
	add	r7, r7, #1	@ tmp679, D.38815,
	ldr	r1, [r3, r7, asl #2]	@ *_370, *_370
	bic	r1, r1, #-2147483648	@, *_370,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L1036	@,
.L1075:
	cmp	r4, #1	@ ScdErrFlag,
	beq	.L1036	@,
.L1077:
	mov	r0, #0	@ D.38809,
	add	sp, sp, #276	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1062:
	cmp	r4, #0	@ SegPacketLen,
	bge	.L1058	@,
	ldr	r3, [r10, #16]	@ pScdInstance_27(D)->SegFilter.ProtocolType, pScdInstance_27(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_27(D)->SegFilter.ProtocolType,
	beq	.L1150	@,
.L1064:
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r2, sp, #76	@,,
	ldr	r0, [sp, #28]	@ tmp721, %sfp
	mov	r4, #0	@ tmp573,
	str	r6, [sp, #120]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	ldr	r1, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r0, [r0, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, ip	@ D.38815, SegBufAddr, NextSegPhyAddr
	str	r3, [sp, #56]	@ D.38815, %sfp
	rsb	ip, r1, r6	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	add	r1, sp, #80	@,,
	mov	lr, r3	@ D.38815, D.38815
	ldr	r3, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	ip, r0, ip	@ D.38813, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.38811
	ldr	r0, [sp, #24]	@, %sfp
	rsb	r3, r6, r3	@ D.38811, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	str	ip, [sp, #112]	@ D.38813, SegPacket.VirAddr
	add	r3, r3, lr	@ D.38815, D.38811, D.38815
	strb	r4, [sp, #117]	@ tmp573, SegPacket.IsLastSeg
	str	r3, [sp, #124]	@ D.38815, SegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #124]	@ D.38815, SegPacket.LenInByte
	cmp	r3, #3	@ D.38815,
	bls	.L1129	@,
	ldr	r1, [sp, #20]	@ tmp723, %sfp
	ldr	lr, [sp, #120]	@ D.38811, SegPacket.PhyAddr
	ldr	r2, [r1, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail
	cmp	lr, #0	@ D.38811,
	ldr	r1, [r1, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head
	add	r2, r2, #1152	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Tail,
	rsb	r2, r1, r2	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].Head, D.38811
	ldr	r1, [sp, #68]	@ tmp725, %sfp
	mov	ip, r2, asr #31	@ tmp606, D.38811,
	smull	r0, r1, r2, r1	@ tmp603, D.38811, tmp725
	ldr	r0, [sp, #76]	@ D.38811, SegFreeBufLen
	rsb	r1, ip, r1, asr #8	@ tmp602, tmp606,,
	mov	ip, r1, asl #10	@ tmp609, tmp602,
	add	r1, ip, r1, lsl #7	@ tmp610, tmp609, tmp602,
	rsb	r2, r1, r2	@ D.38811, tmp610, D.38811
	rsb	r2, r2, #1152	@ StreamNum, D.38811,
	bne	.L1151	@,
.L1066:
	cmp	r2, #1	@ StreamNum,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	ble	.L1084	@,
	movw	r2, #3608	@,
	ldr	r1, .L1154+16	@,
	mov	r0, #1	@,
	mov	r4, r0	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #36]	@ SrcEaten, %sfp
	mov	r0, r4	@, ScdErrFlag
	ldr	r3, [sp, #76]	@ SegFreeBufLen, SegFreeBufLen
	ldr	r1, .L1154+20	@,
	str	r2, [sp]	@ SrcEaten,
	movw	r2, #3609	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	movw	r2, #3610	@,
	b	.L1130	@
.L1143:
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #76	@,,
	add	r1, sp, #80	@,,
	ldr	r0, [sp, #24]	@, %sfp
	add	r4, r3, r4	@ D.38815, LastSegPacket.LenInByte, SegPacketLen
	str	r4, [sp, #204]	@ D.38815, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #76]	@ D.38811, SegFreeBufLen
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L1055	@,
	ldr	r3, [sp, #192]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r3, #0	@ LastSegPacket.VirAddr,
	beq	.L1055	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r3, r2	@ LastSegPacket.LenInByte, D.38811
	bhi	.L1055	@,
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
	bne	.L1152	@,
	ldrd	r6, [sp, #216]	@ LastSegPacket.Pts,,
	mov	r0, #26	@,
	ldr	r2, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1154+24	@,
	bic	r2, r2, #-2147483648	@, MEM[base: _140, offset: 4B],
	strd	r6, [sp]	@ LastSegPacket.Pts,
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	ldr	r1, .L1154+4	@,
	mov	r0, #26	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	ldr	r2, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	str	ip, [sp]	@ LastSegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r1, [sp, #72]	@ D.38809, ScdSegNum
	b	.L1058	@
.L1055:
	movw	r2, #3454	@,
	ldr	r1, .L1154+16	@,
	mov	r0, #1	@,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	mov	r4, r0	@ ScdErrFlag,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #36]	@ SrcEaten, %sfp
	mov	r0, r4	@, ScdErrFlag
	ldr	r3, [sp, #76]	@ SegFreeBufLen, SegFreeBufLen
	ldr	r1, .L1154+20	@,
	str	r2, [sp]	@ SrcEaten,
	movw	r2, #3455	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	mov	r2, #3456	@,
.L1130:
	ldr	r1, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r0, r4	@, ScdErrFlag
	stmia	sp, {r1, ip}	@,,
	ldr	r1, .L1154+28	@,
	bl	dprint_vfmw	@
	b	.L1057	@
.L1144:
	ldr	r3, [sp, #32]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #112	@ tmp780,,
	ldr	r0, [sp, #48]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L1059	@
.L1074:
	ldr	r3, [sp, #52]	@ tmp688, %sfp
	ldr	r2, [sp, #60]	@ D.38811, %sfp
	clz	r3, r3	@ tmp688, tmp688
	cmp	r2, #1152	@ D.38811,
	mov	r3, r3, lsr #5	@ tmp688, tmp688,
	movls	r3, #0	@ tmp688,
	cmp	r3, #0	@ tmp688,
	beq	.L1075	@,
	ldr	r1, .L1154+32	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r0, [sp, #40]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L1075	@
.L1148:
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten,
	movle	r1, r5	@ SrcEaten, D.38811
	b	.L1044	@
.L1151:
	ldr	r1, [sp, #112]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r1, #0	@ SegPacket.VirAddr,
	beq	.L1066	@,
	cmp	r3, r0	@ D.38815, D.38811
	bhi	.L1066	@,
	cmp	r2, #1	@ StreamNum,
	ble	.L1125	@,
	ldr	r1, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	add	r3, sp, #112	@ tmp796,,
	ldr	ip, [sp, #104]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #44]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _140, offset: 4B],
	ldr	r0, [sp, #40]	@, %sfp
	rsb	lr, lr, ip	@ D.38811, D.38811, SmStateReg.ScdRollAddr
	str	lr, [sp, #124]	@ D.38811, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r3, [sp, #20]	@ tmp723, %sfp
	add	r1, sp, #112	@ tmp798,,
	ldr	r0, [sp, #24]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_27(D)->InstID
	bl	InsertStreamSeg	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1131	@,
	ldrd	r2, [sp, #136]	@ tmp799,,
	mov	r0, #26	@,
	ldr	ip, [r5, #4]	@ MEM[base: _140, offset: 4B], MEM[base: _140, offset: 4B]
	ldr	r1, .L1154	@,
	strd	r2, [sp]	@ tmp799,
	bic	r2, ip, #-2147483648	@, MEM[base: _140, offset: 4B],
	bl	dprint_vfmw	@
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1154+4	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	ldr	r2, [sp, #20]	@ tmp723, %sfp
	ldr	lr, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r1, [sp, #28]	@ tmp721, %sfp
	ldr	r3, [r2, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr
	str	lr, [sp, #120]	@ SegBufAddr, SegPacket.PhyAddr
	rsb	r3, r3, lr	@ D.38811, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].SegBufPhyAddr, SegBufAddr
	ldr	lr, [sp, #56]	@ D.38815, %sfp
	ldr	ip, [r1, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr
	add	r1, sp, #112	@ tmp802,,
	ldr	r2, [r2, #2408]	@, pScdInstance_27(D)->InstID
	ldr	r0, [sp, #24]	@, %sfp
	add	r3, ip, r3	@ D.38813, MEM[(struct SEG_ARRAY_S *)pScdInstance_27(D) + 73920B].pSegBufVirAddr, D.38811
	str	lr, [sp, #124]	@ D.38815, SegPacket.LenInByte
	mov	ip, #1	@ tmp636,
	str	r3, [sp, #112]	@ D.38813, SegPacket.VirAddr
	strb	ip, [sp, #117]	@ tmp636, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1153	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r0, #26	@,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	b	.L1128	@
.L1140:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #32]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L1039	@
.L1139:
	ldr	r3, [sp, #24]	@ pStreamSegArray, %sfp
	mov	r5, r3	@ SegBufLength, pStreamSegArray
	str	r3, [sp, #12]	@ pStreamSegArray, %sfp
	b	.L1078	@
.L1146:
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	mov	r4, #0	@ ScdErrFlag,
	b	.L1057	@
.L1045:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r4, [sp, #32]	@ UpMsgStepNum, %sfp
	mov	r1, r4	@, UpMsgStepNum
	rsb	r0, r4, r0	@, UpMsgStepNum,
	bl	__aeabi_uidiv	@
	subs	r3, r0, #1	@ D.38809,,
	str	r3, [sp, #52]	@ D.38809, %sfp
	strmi	r6, [sp, #72]	@ Ret, ScdSegNum
	mov	r2, r3	@ D.38809, D.38809
	movpl	r3, r4	@ UpMsgStepNum, UpMsgStepNum
	mulpl	r3, r3, r2	@ D.38815, UpMsgStepNum, D.38809
	strpl	r2, [sp, #72]	@ D.38809, ScdSegNum
	ldr	r2, [r10, #12]	@ pScdInstance_27(D)->SegFilter.pScdUpMsg, pScdInstance_27(D)->SegFilter.pScdUpMsg
	movmi	r3, #4	@ D.38814,
	strmi	r6, [sp, #52]	@ Ret, %sfp
	addpl	r3, r3, #1	@ D.38814, D.38815,
	movpl	r3, r3, asl #2	@ D.38814, D.38814,
	ldr	r3, [r2, r3]	@ *_131, *_131
	bic	r3, r3, #-2147483648	@ SrcEaten, *_131,
	str	r3, [sp, #36]	@ SrcEaten, %sfp
	b	.L1046	@
.L1150:
	ldr	r3, [sp, #32]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #112	@ tmp787,,
	ldr	r0, [sp, #48]	@, %sfp
	str	ip, [sp, #56]	@ NextSegPhyAddr, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #56]	@ NextSegPhyAddr, %sfp
	b	.L1064	@
.L1152:
	ldrb	ip, [sp, #197]	@ zero_extendqisi2	@ LastSegPacket.IsLastSeg, LastSegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #204]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	mov	r4, #0	@ ScdErrFlag,
	ldr	r2, [sp, #200]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r1, .L1154+36	@,
	str	ip, [sp]	@ LastSegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1057	@
.L1138:
	mvn	r0, #6	@ D.38809,
	bx	lr	@
.L1142:
	ldr	r3, [sp, #52]	@, %sfp
	mov	r0, r10	@, pScdInstance
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	bl	GetNextVop	@
	str	r0, [sp, #52]	@ D.38809, %sfp
	str	r0, [sp, #72]	@ D.38809, ScdSegNum
	b	.L1049	@
.L1149:
	ldr	r3, [fp, #2268]	@ pScdInstance_27(D)->StreamSegArray.SegBufSize, pScdInstance_27(D)->StreamSegArray.SegBufSize
	ldr	r1, [fp, #2420]	@ SrcEaten, pScdInstance_27(D)->TransFormSeg
	ldr	r2, [fp, #2300]	@ pScdInstance_27(D)->SmPushRaw.PushRawTotalLen, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	add	r3, r3, r3, lsl #1	@ D.38811, pScdInstance_27(D)->StreamSegArray.SegBufSize, pScdInstance_27(D)->StreamSegArray.SegBufSize,
	cmp	r3, #0	@ D.38811,
	add	r0, r3, #3	@ tmp446, D.38811,
	rsb	r2, r1, r2	@ D.38811, SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	movlt	r3, r0	@ D.38811, tmp446
	cmp	r2, r3, asr #2	@ D.38811, D.38811,
	ble	.L1044	@,
	ldr	r1, .L1154+40	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_27(D)->SmPushRaw.PushRawTotalLen
	b	.L1044	@
.L1145:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	mov	r4, #0	@ ScdErrFlag,
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1154+36	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1057	@
.L1153:
	mov	r4, r6	@ Ret, Ret
.L1131:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r0, #26	@,
	ldr	r3, [sp, #124]	@ SegPacket.LenInByte, SegPacket.LenInByte
	ldr	r2, [sp, #120]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r1, .L1154+36	@,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	ldr	fp, [sp, #20]	@ tmp723, %sfp
	bl	dprint_vfmw	@
	b	.L1057	@
.L1125:
	ldr	fp, [sp, #20]	@ tmp723, %sfp
.L1084:
	ldrb	ip, [sp, #117]	@ zero_extendqisi2	@ SegPacket.IsLastSeg, SegPacket.IsLastSeg
	mov	r2, lr	@, D.38811
	ldr	r1, .L1154+44	@,
	mov	r0, #26	@,
	mov	r4, #0	@ ScdErrFlag,
	str	ip, [sp]	@ SegPacket.IsLastSeg,
	bl	dprint_vfmw	@
	b	.L1057	@
.L1155:
	.align	2
.L1154:
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
	ldr	r0, .L1171	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1167	@,
	ldr	r4, .L1171+4	@ tmp188,
	mov	r1, #1	@,
	ldr	r0, [r4]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	add	r0, r0, #4	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #2	@,
	mov	r3, #1	@ tmp141,
	str	r3, [r4, #340]	@ tmp141, s_SCDInISR
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1159	@,
	ldr	r5, [r4, #284]	@ D.38841, s_SmIIS.ThisInstID
.L1160:
	add	r3, r4, r5, lsl #2	@ tmp156, tmp188, D.38841,
	ldr	r1, [r4, #280]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r2, .L1171+4	@ tmp154,
	ldr	r0, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1168	@,
	ldr	r3, [r2, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1169	@,
.L1163:
	mov	r0, r5	@, D.38841
	mov	r3, #0	@ tmp186,
	str	r3, [r4, #340]	@ tmp186, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L1167:
	ldr	r0, .L1171	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1159:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #284]	@ D.38841, s_SmIIS.ThisInstID
	ldr	r3, .L1171+8	@ tmp149,
	add	r2, r4, r5, lsl #2	@ tmp145, tmp188, D.38841,
	ldr	r1, [r3]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r3, [r2, #344]	@ tmp148, last_rec_pos_time
	rsb	r3, r3, r0	@ D.38839, tmp148, CurTimeInMs
	cmp	r3, r1	@ D.38839, g_TraceBsPeriod
	strhi	r0, [r2, #344]	@ CurTimeInMs, last_rec_pos_time
	b	.L1160	@
.L1168:
	ldr	r0, .L1171	@,
	mov	r3, #0	@ tmp168,
	str	r3, [r2, #340]	@ tmp168, s_SCDInISR
	str	r3, [r2, #288]	@ tmp168, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1169:
	add	r3, r0, #163840	@ tmp175, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_27->Mode, pSmInstArray_27->Mode
	cmp	r3, #1	@ pSmInstArray_27->Mode,
	beq	.L1170	@,
.L1164:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp178,
	str	r3, [r4, #288]	@ tmp178, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r6, .L1171+4	@ tmp177,
	cmp	r0, #0	@,
	bne	.L1163	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp183,
	str	r2, [r6, #288]	@ tmp183, s_SmIIS.SCDState
	str	r3, [r6, #284]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #292]	@, s_SmIIS.LastProcessTime
	b	.L1163	@
.L1170:
	bl	ProcessScdReturn	@
	b	.L1164	@
.L1172:
	.align	2
.L1171:
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
	bhi	.L1184	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L1185	@,
	sub	r0, r0, #13	@ tmp131, eCapLevel,
	cmp	r0, #10	@ tmp131,
	ldrls	pc, [pc, r0, asl #2]	@ tmp131
	b	.L1178	@
.L1179:
	.word	.L1182
	.word	.L1182
	.word	.L1182
	.word	.L1182
	.word	.L1182
	.word	.L1180
	.word	.L1180
	.word	.L1180
	.word	.L1180
	.word	.L1180
	.word	.L1180
.L1180:
	mov	r0, #20971520	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1182:
	mov	r0, #4194304	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1178:
	mov	r0, #3145728	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1185:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L1186	@,
	mul	r3, r0, r5	@ D.38855, ChanHeight, ChanWidth
	mov	r0, #57344	@ tmp130,
	movt	r0, 31	@ tmp130,
	cmp	r3, r0	@ D.38855, tmp130
	movle	r0, #3145728	@ D.38853,
	movgt	r0, #20971520	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1184:
	ldr	r1, .L1187	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1186:
	ldr	r1, .L1187+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38853,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1188:
	.align	2
.L1187:
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
	clz	r2, r1	@ tmp158, pSmCfg
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r2, r2, lsr #5	@ tmp158, tmp158,
	cmp	r0, #3	@ SmID,
	orrhi	r2, r2, #1	@,, tmp161, tmp158
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r2, #0	@ tmp161,
	mov	r5, r1	@ pSmCfg, pSmCfg
	bne	.L1209	@,
	ldr	r7, .L1211	@ tmp239,
	add	r3, r7, r0, lsl #2	@ tmp165, tmp239, SmID,
	ldr	r6, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L1195	@,
	ldr	r3, [r1, #12]	@ D.38864, pSmCfg_11(D)->BufPhyAddr
	ldr	r2, [r6, #60]	@ pSmInstArray_16->Config.BufPhyAddr, pSmInstArray_16->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_16->Config.BufPhyAddr, D.38864
	addeq	r4, r6, #48	@ D.38871, pSmInstArray,
	beq	.L1194	@,
	cmp	r3, #0	@ D.38864,
	beq	.L1195	@,
	ldr	r3, [r1]	@ pSmCfg_11(D)->pBufVirAddr, pSmCfg_11(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_11(D)->pBufVirAddr,
	beq	.L1195	@,
	ldr	ip, [r7, #32]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r4, r6, #163840	@ tmp240, pSmInstArray,
	ldr	r9, [r7, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r3, #1152	@ tmp195,
	ldr	r8, [r7, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	ldr	lr, [r7, #28]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	ldr	r1, [r7, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	ldr	r2, [r7, #40]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	ip, [r4, #2324]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].UpMsgPhyAddr
	str	r9, [r4, #2312]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].DownMsgPhyAddr
	str	r8, [r4, #2316]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pDownMsgVirAddr
	str	r1, [r4, #2328]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pUpMsgVirAddr
	str	lr, [r4, #2320]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].DownMsgSize
	str	r2, [r4, #2332]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].UpMsgSize
	str	r3, [r4, #2336]	@ tmp195, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].UpMsgNum
	ldr	r2, [r5, #12]	@ D.38864, pSmCfg_11(D)->BufPhyAddr
	ldr	r3, [r5, #8]	@ pSmCfg_11(D)->VidStd, pSmCfg_11(D)->VidStd
	add	r1, r2, #3	@ D.38864, D.38864,
	ldr	lr, [r5]	@ D.38865, pSmCfg_11(D)->pBufVirAddr
	cmp	r3, #6	@ pSmCfg_11(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.38864,
	rsb	r8, r2, r1	@ ByteOffsetInWord, D.38864, TmpPhyAddr
	movne	ip, #131072	@ D.38861,
	moveq	ip, #1048576	@ D.38861,
	mov	r9, ip	@ s32ScdBlankSegLen, D.38861
	add	r1, r1, ip	@ D.38864, TmpPhyAddr, s32ScdBlankSegLen
	add	ip, ip, r8	@ D.38861, D.38861, ByteOffsetInWord
	str	r1, [r4, #2400]	@ D.38864, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufPhyAddr
	add	ip, lr, ip	@ D.38865, D.38865, D.38861
	str	ip, [r4, #2308]	@ D.38865, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r5, #16]	@ pSmCfg_11(D)->BufSize, pSmCfg_11(D)->BufSize
	rsb	r2, r8, r1	@ D.38864, ByteOffsetInWord, pSmCfg_11(D)->BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.38864
	blt	.L1210	@,
	rsb	r3, r9, r2	@ D.38864, s32ScdBlankSegLen, D.38864
	sub	r3, r3, #1024	@ D.38864, D.38864,
	str	r3, [r4, #2404]	@ D.38864, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufSize
	cmp	r3, #262144	@ D.38864,
	blt	.L1195	@,
.L1199:
	add	r0, r6, #73728	@, pSmInstArray,
	ldr	r2, [r4, #2308]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pSegBufVirAddr
	ldr	r1, [r4, #2400]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufPhyAddr
	add	r0, r0, #192	@,,
	bl	ConfigStreamSegArray	@
	add	r4, r6, #48	@ D.38871, pSmInstArray,
	ldr	r3, [r5, #20]	@ pSmCfg_11(D)->RegPhyBaseAddr, pSmCfg_11(D)->RegPhyBaseAddr
	mov	r2, #120	@,
	mov	r0, r4	@, D.38871
	mov	r1, r5	@, pSmCfg
	str	r3, [r7]	@ pSmCfg_11(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L1194:
	add	r6, r6, #176128	@ tmp232, pSmInstArray,
	mov	r0, r4	@, D.38871
	mov	r2, #120	@,
	mov	r1, r5	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp233,
	str	r3, [r6, #3996]	@ tmp233, pSmInstArray_16->UpMsgStepNum
	ldr	r3, [r5, #8]	@ pSmCfg_11(D)->VidStd, pSmCfg_11(D)->VidStd
	cmp	r3, #2	@ pSmCfg_11(D)->VidStd,
	moveq	r0, #0	@ D.38860,
	movne	r0, #0	@ D.38860,
	moveq	r3, #3	@ tmp237,
	streq	r3, [r6, #3996]	@ tmp237, pSmInstArray_16->UpMsgStepNum
.L1191:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1210:
	rsb	r3, r9, r0	@ D.38864, s32ScdBlankSegLen, SmMaxSegBufSize
	sub	r3, r3, #1024	@ D.38864, D.38864,
	str	r3, [r4, #2404]	@ D.38864, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufSize
	b	.L1199	@
.L1195:
	mvn	r0, #0	@ D.38860,
	b	.L1191	@
.L1209:
	str	r1, [sp]	@ pSmCfg,
	mov	r3, r0	@, SmID
	movw	r2, #1707	@,
	ldr	r1, .L1211+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38860,
	b	.L1191	@
.L1212:
	.align	2
.L1211:
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0	@ SmID, SmID
	.pad #124
	sub	sp, sp, #124	@,,
	bhi	.L1221	@,
	ldr	r3, .L1226	@ tmp131,
	add	r3, r3, r0, lsl #2	@ tmp133, tmp131, SmID,
	ldr	r4, [r3, #248]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L1224	@,
	ldr	r3, [r4, #84]	@ MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag
	sub	r3, r3, #1	@ D.38882, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ D.38882,
	bls	.L1225	@,
.L1216:
	mvn	r3, #0	@ tmp140,
	mov	r2, #0	@ tmp139,
	str	r3, [r4, #80]	@ tmp140, MEM[(struct SM_INSTANCE_S *)__p_8].Config.LastRawDisContinueCount
	add	r1, r4, #48	@, __p,
	str	r2, [r4, #84]	@ tmp139, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag
	mov	r0, sp	@,
	mov	r2, #120	@,
	add	r6, r4, #163840	@ tmp182, __p,
	bl	memcpy	@
	mov	r0, r5	@, SmID
	ldr	r7, [r6, #2412]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
	bl	SM_Stop	@
	adds	r8, r4, #168	@ D.38886, __p,
	beq	.L1217	@,
	add	r2, r4, #73728	@ tmp150, __p,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail
	ldr	r1, [r2, #168]	@ MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
.L1220:
	mov	r0, r8	@, D.38886
	mvn	r9, #0	@,
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	sub	r7, r7, #1	@ D.38882, TmpMode,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #49056	@,
	mov	r0, r4	@, __p
	movt	r1, 2	@,
	ldrb	r8, [r6, #2408]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_8].InstID
	bl	__memzero	@
	add	r3, r4, #179200	@ tmp163, __p,
	add	r4, r4, #176128	@ tmp167, __p,
	add	r3, r3, #896	@ tmp163, tmp163,
	mov	r2, #2	@ tmp168,
	sxtb	r8, r8	@ s8TmpInstID, s8TmpInstID
	mov	r1, sp	@,
	str	r8, [r6, #2408]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_8].InstID
	mov	r0, r5	@, SmID
	mvn	r8, #0	@ tmp165,
	strd	r8, [r3, #-8]	@ tmp165, tmp163,
	str	r2, [r4, #3996]	@ tmp168, MEM[(struct SM_INSTANCE_S *)__p_8].UpMsgStepNum
	bl	SM_Config	@
	cmp	r7, #1	@ D.38882,
	movls	r0, #0	@ D.38881,
	movls	r3, #1	@ tmp173,
	movhi	r0, #0	@ tmp176,
	strls	r3, [r6, #2412]	@ tmp173, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
	strhi	r0, [r6, #2412]	@ tmp176, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
.L1222:
	add	sp, sp, #124	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1217:
	ldr	r1, .L1226+4	@,
	movw	r3, #1427	@,
	ldr	r2, .L1226+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r1, r8	@ D.38887, D.38886
	b	.L1220	@
.L1225:
	add	r1, r4, #96	@, __p,
	bl	ReleaseRawStreamData	@
	b	.L1216	@
.L1221:
	mvn	r0, #0	@ D.38881,
	b	.L1222	@
.L1224:
	mov	r0, r4	@, __p
	movw	r2, #1406	@,
	ldr	r1, .L1226+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38881,
	b	.L1222	@
.L1227:
	.align	2
.L1226:
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
	.type	__func__.34877, %object
	.size	__func__.34877, 17
__func__.34877:
	.ascii	"GetRawNumOffsert\000"
	.space	3
	.type	__func__.34970, %object
	.size	__func__.34970, 17
__func__.34970:
	.ascii	"ReleaseStreamSeg\000"
	.space	3
	.type	__func__.35006, %object
	.size	__func__.35006, 9
__func__.35006:
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
	.size	s_SmIIS, 284
s_SmIIS:
	.space	284
	.type	s_eScdDrvSleepStage, %object
	.size	s_eScdDrvSleepStage, 4
s_eScdDrvSleepStage:
	.space	4
	.type	g_hex_base_vir_addr, %object
	.size	g_hex_base_vir_addr, 4
g_hex_base_vir_addr:
	.space	4
	.type	LastEventTime.35126, %object
	.size	LastEventTime.35126, 4
LastEventTime.35126:
	.space	4
	.type	last_rec_pos_time.35331, %object
	.size	last_rec_pos_time.35331, 16
last_rec_pos_time.35331:
	.space	16
	.type	last_rec_pos_time.35413, %object
	.size	last_rec_pos_time.35413, 16
last_rec_pos_time.35413:
	.space	16
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.35427, %object
	.size	last_rec_pos_time.35427, 16
last_rec_pos_time.35427:
	.space	16
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
