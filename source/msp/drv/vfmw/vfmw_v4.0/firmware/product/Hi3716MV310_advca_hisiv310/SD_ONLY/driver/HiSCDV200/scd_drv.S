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
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(scd_drv)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/.scd_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200/scd_drv.o
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
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L7:
	.align	2
.L6:
	.word	g_CabacMN
	.fnend
	.size	WriteCabacTabDsp, .-WriteCabacTabDsp
	.align	2
	.global	WriteHexFile
	.type	WriteHexFile, %function
WriteHexFile:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r7, .L26	@ tmp204,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r3, #49152	@ tmp161,
	mov	r0, #20	@,
	movt	r3, 4115	@ tmp161,
	mov	r4, #0	@ tmp159,
	str	r3, [r7]	@ tmp161, s_RegPhyBaseAddr
	str	r4, [sp, #12]	@ tmp159, dataInt
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L23	@,
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.39994, current_stack_pointer,
	bic	r3, r3, #63	@ D.39994, D.39994,
	cmp	r5, #6	@ eVidStd,
	ldr	r2, [r3, #8]	@ fs, _79->addr_limit
	str	r4, [r3, #8]	@ tmp159, _79->addr_limit
	str	r2, [sp]	@ fs, %sfp
	beq	.L24	@,
	cmp	r5, #0	@ eVidStd,
	beq	.L25	@,
	bl	vfmw_dprint_nothing	@
	mov	r9, r4	@ fp, tmp159
.L15:
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.39990, current_stack_pointer,
	bic	r3, r3, #63	@ D.39990, D.39990,
	add	r8, sp, #24	@ tmp205,,
	mov	r2, #0	@ tmp173,
	mov	r0, #0	@ tmp174,
	mov	r1, #0	@,
	mov	r5, r2	@ calbakBaseaddr, tmp173
	str	r2, [r3, #8]	@ tmp173, _93->addr_limit
	mov	r4, #10	@ ivtmp.239,
	strd	r0, [r8, #-8]!	@ tmp174, pos
	b	.L16	@
.L18:
	strd	r10, [sp, #16]	@ ivtmp.239,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L22	@,
	ldr	r0, [r7, #4]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #12]	@, dataInt
	add	r0, r5, r0	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L16:
	mov	r2, #10	@,
	mov	r1, r6	@, data
	mov	r3, r8	@, tmp205
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	r10, r4	@ ivtmp.239, ivtmp.239
	mov	fp, r4, asr #31	@ ivtmp.239, ivtmp.239,
	ldr	r1, .L26+4	@,
	add	r4, r4, #10	@ ivtmp.239, ivtmp.239,
	subs	ip, r0, #0	@ D.39991,
	add	r2, sp, #12	@ tmp213,,
	mov	r0, r6	@, data
	bne	.L18	@,
	mov	r1, ip	@, D.39991
	mov	r0, r9	@, fp
	str	ip, [sp, #4]	@ D.39991, %sfp
	bl	filp_close	@
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	ldr	r2, [sp]	@ fs, %sfp
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.39990, current_stack_pointer,
	bic	r3, r3, #63	@ D.39990, D.39990,
	str	r2, [r3, #8]	@ fs, _95->addr_limit
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp204,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	ldr	ip, [sp, #4]	@ D.39991, %sfp
	mov	r1, ip	@, D.39991
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
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L25:
	movw	r2, #438	@,
	mov	r1, r5	@, eVidStd
	ldr	r0, .L26+8	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L15	@,
	mov	r1, r5	@, eVidStd
	movw	r2, #438	@,
	ldr	r0, .L26+12	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L13:
	cmn	r9, #4096	@ fp,
	bls	.L15	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
	b	.L8	@
.L24:
	movw	r2, #438	@,
	mov	r1, r4	@, tmp159
	ldr	r0, .L26+16	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L15	@,
	mov	r1, r4	@, tmp159
	movw	r2, #438	@,
	ldr	r0, .L26+20	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L13	@
.L23:
	bl	vfmw_dprint_nothing	@
	b	.L8	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	.LC4
	.word	.LC2
	.word	.LC3
	.word	.LC0
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
	ldr	r3, [r3, #128]	@ D.40005, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40005,
	beq	.L30	@,
	add	r3, r3, #168	@ D.40006, D.40005,
	subs	r0, r0, r3	@ D.40003, pRawArray, D.40006
	mvnne	r0, #0	@ D.40003,
	bx	lr	@
.L30:
	mvn	r0, #0	@ D.40003,
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r0, #51228	@,
	ldr	r5, .L44	@ tmp147,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	ip, [r5]	@ D.40018, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	bne	.L37	@,
	movw	r3, #9999	@ D.40021,
	b	.L35	@
.L43:
	subs	r3, r3, #1	@ D.40021, D.40021,
	beq	.L42	@,
.L35:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L43	@,
.L37:
	ldr	r3, .L44+4	@ tmp141,
	and	r1, r0, #1	@, D.40017,
	bfc	r4, #5, #1	@ u32TmpValue,,
	str	r4, [ip, #120]	@ u32TmpValue, _38->PERI_CRG30.u32
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L42:
	str	r0, [sp, #4]	@ D.40017, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5]	@ D.40018, g_pstRegCrg
	ldr	r0, [sp, #4]	@ D.40017, %sfp
	b	.L37	@
.L45:
	.align	2
.L44:
	.word	g_pstRegCrg
	.word	.LANCHOR0
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
	add	r3, ip, #1	@ D.40036, D.40036,
	mov	r2, r3, asr #31	@ tmp136, D.40036,
	mov	r2, r2, lsr #22	@ tmp137, tmp136,
	add	r3, r3, r2	@ tmp138, D.40036, tmp137
	ubfx	r3, r3, #0, #10	@ tmp139, tmp138,,
	rsb	r3, r2, r3	@ D.40036, tmp137, tmp139
	cmp	r3, lr	@ D.40036, pRawStreamArray_3(D)->History
	beq	.L57	@,
	mov	r3, ip, asl #6	@ tmp146, D.40036,
	mov	r2, #72	@,
	add	ip, r3, ip, lsl #3	@ tmp147, tmp146, D.40036,
	add	r0, r0, ip	@, pRawStreamArray, tmp147
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	mov	r0, r5	@ D.40034, tmp131
	add	r3, r3, #1	@ D.40036, pRawStreamArray_3(D)->Tail,
	mov	r2, r3, asr #31	@ tmp159, D.40036,
	mov	r2, r2, lsr #22	@ tmp160, tmp159,
	add	r3, r3, r2	@ tmp161, D.40036, tmp160
	ubfx	r3, r3, #0, #10	@ tmp162, tmp161,,
	rsb	r3, r2, r3	@ D.40036, tmp160, tmp162
	str	r3, [r4, #4]	@ D.40036, pRawStreamArray_3(D)->Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L56:
	mvn	r0, #0	@ D.40034,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L57:
	mvn	r0, #3	@ D.40034,
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
	ldr	r3, [r3, #128]	@ D.40044, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40044,
	beq	.L62	@,
	add	r2, r3, #73728	@ tmp120, D.40044,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].History, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	add	r3, r3, #1	@ D.40045, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp124, D.40045,
	mov	r2, r2, lsr #22	@ tmp125, tmp124,
	add	r3, r3, r2	@ tmp126, D.40045, tmp125
	ubfx	r3, r3, #0, #10	@ tmp127, tmp126,,
	rsb	r3, r2, r3	@ D.40045, tmp125, tmp127
	cmp	r3, r1	@ D.40045, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	mvneq	r0, #3	@ D.40043,
	movne	r0, #0	@ D.40043,
	bx	lr	@
.L62:
	mvn	r0, #3	@ D.40043,
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
	ldr	r2, [ip]	@ D.40050, pRawStreamArray_3(D)->Head
	ldr	r0, [ip, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r2, r0	@ D.40050, pRawStreamArray_3(D)->Tail
	beq	.L69	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp136, D.40050,
	add	r1, r1, r2, lsl #3	@ tmp137, tmp136, D.40050,
	str	r2, [ip, #16]	@ D.40050, pRawStreamArray_3(D)->CurShowIndex
	add	r1, r3, r1	@, pRawStreamArray, tmp137
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.40048, tmp126
	ldmfd	sp!, {r4, pc}	@
.L68:
	mvn	r0, #0	@ D.40048,
	ldmfd	sp!, {r4, pc}	@
.L69:
	mvn	r0, #2	@ D.40048,
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
	add	r2, r2, #1	@ D.40059, pRawStreamArray_3(D)->CurShowIndex,
	mov	r3, r2, asr #31	@ tmp133, D.40059,
	mov	r3, r3, lsr #22	@ tmp134, tmp133,
	add	r2, r2, r3	@ tmp135, D.40059, tmp134
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
	mov	r0, r4	@ D.40057, tmp128
	ldmfd	sp!, {r4, pc}	@
.L73:
	mvn	r0, #0	@ D.40057,
	ldmfd	sp!, {r4, pc}	@
.L74:
	mvn	r0, #2	@ D.40057,
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
	cmp	r2, ip	@ D.40067, pRawStreamArray_3(D)->Tail
	beq	.L79	@,
	mov	ip, r2, asl #6	@ tmp129, D.40067,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.40067,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L80	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.40066,
	ldr	pc, [sp], #4	@
.L80:
	mvn	r0, #0	@ D.40066,
	ldr	pc, [sp], #4	@
.L79:
	mvn	r0, #2	@ D.40066,
	bx	lr	@
.L78:
	mvn	r0, #0	@ D.40066,
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
	ldr	r3, [r3, #12]	@ D.40072, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.40070, tmp126
	str	r3, [r1]	@ D.40072, *pOffset_5(D)
	bx	lr	@
.L85:
	mvn	r0, #0	@ D.40070,
	bx	lr	@
.L86:
	mvn	r0, #2	@ D.40070,
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
	mov	r5, r1	@ DelNum, DelNum
	ldr	r9, .L110	@ tmp195,
	mov	r6, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r9, #128]	@ D.40080, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40080,
	beq	.L89	@,
	add	r3, r3, #168	@ D.40082, D.40080,
	subs	r3, r0, r3	@ D.40077, pRawStreamArray, D.40082
	mvnne	r3, #0	@ D.40077,
	cmp	r3, #0	@ D.40077,
	blt	.L89	@,
	add	r7, r0, #73728	@ tmp193, pRawStreamArray,
	ldmia	r7, {r1, r2}	@ tmp193,,
	cmp	r1, r2	@ D.40077, D.40077
	addgt	r2, r2, #1024	@ D.40077, D.40077,
	rsb	r2, r1, r2	@ PacketNum, D.40077, D.40077
	cmp	r2, r5	@ PacketNum, DelNum
	bcc	.L89	@,
	cmp	r5, #0	@ DelNum,
	mov	r4, r1	@ j, D.40077
	beq	.L93	@,
	add	r3, r3, #28	@ tmp194, D.40077,
	mov	r8, #0	@ i,
	add	r9, r9, r3, lsl #2	@ tmp197, tmp195, tmp194,
.L94:
	bl	vfmw_dprint_nothing	@
	mov	r3, r4, asl #6	@ tmp168, j,
	ldr	r2, [r9, #16]	@ D.40080, s_SmIIS.pSmInstArray
	add	r3, r3, r4, lsl #3	@ tmp169, tmp168, j,
	add	r3, r6, r3	@ tmp170, pRawStreamArray, tmp169
	add	r8, r8, #1	@ i, i,
	add	r2, r2, #73728	@ tmp163, D.40080,
	cmp	r8, r5	@ i, DelNum
	ldr	r1, [r3, #8]	@ pRawStreamArray_9(D)->RawPacket[j_47].Length, pRawStreamArray_9(D)->RawPacket[j_47].Length
	add	r4, r4, #1	@ D.40081, j,
	ldr	r3, [r2, #188]	@ _26->RawPacketArray.RawTotalSize, _26->RawPacketArray.RawTotalSize
	ubfx	r4, r4, #0, #10	@ j, D.40081,,
	rsb	r3, r1, r3	@ D.40077, pRawStreamArray_9(D)->RawPacket[j_47].Length, _26->RawPacketArray.RawTotalSize
	bic	r3, r3, r3, asr #31	@ D.40077, D.40077
	str	r3, [r2, #188]	@ D.40077, _26->RawPacketArray.RawTotalSize
	bne	.L94	@,
	ldr	r3, [r7]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp178,
	str	r0, [r7, #12]	@ tmp178, pRawStreamArray_9(D)->FirstPacketOffset
	add	r8, r8, r3	@ D.40077, i, pRawStreamArray_9(D)->Head
	str	r8, [r7]	@ D.40077, pRawStreamArray_9(D)->Head
	cmp	r8, #1024	@ D.40077,
	subge	r8, r8, #1024	@ D.40077, D.40077,
	strge	r8, [r7]	@ D.40077, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L93:
	cmp	r1, #1024	@ D.40077,
	str	r1, [r7]	@ D.40077, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.40078,
	subge	r1, r1, #1024	@ D.40077, D.40077,
	strge	r1, [r7]	@ D.40077, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L100:
	mvn	r0, #0	@ D.40078,
	bx	lr	@
.L89:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40078,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L111:
	.align	2
.L110:
	.word	.LANCHOR0
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.type	DeleteLastSendRaw.part.0, %function
DeleteLastSendRaw.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L117	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L116	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #163840	@ tmp120, pSmInstArray,
	ldr	r1, [r4, #2296]	@ LastPushRawNum, pSmInstArray_2->SmPushRaw.PushRawNum
	cmp	r1, #0	@ LastPushRawNum,
	ldmlefd	sp!, {r4, pc}	@
	add	r0, r0, #168	@, pSmInstArray,
	bl	DeleteRawPacket	@
	mov	r3, #0	@ tmp124,
	str	r3, [r4, #2296]	@ tmp124, pSmInstArray_2->SmPushRaw.PushRawNum
	ldmfd	sp!, {r4, pc}	@
.L116:
	b	vfmw_dprint_nothing	@
.L118:
	.align	2
.L117:
	.word	.LANCHOR0
	.fnend
	.size	DeleteLastSendRaw.part.0, .-DeleteLastSendRaw.part.0
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
	@ args = 32, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	ip, r0	@ D.40094, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, ip, lsr #5	@ D.40094, D.40094,
	mov	r8, r1	@ Len, Len
	.pad #28
	sub	sp, sp, #28	@,,
	orrs	r1, ip, r8, lsr #31	@, tmp358, D.40094, Len,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r9, [sp, #64]	@ pPts, pPts
	ldr	r10, [sp, #80]	@ pDispFrameDistance, pDispFrameDistance
	ldr	fp, [sp, #84]	@ pDistanceBeforeFirstFrame, pDistanceBeforeFirstFrame
	ldr	r1, [sp, #88]	@ pGopNum, pGopNum
	ldr	r0, [sp, #92]	@ pRawPts, pRawPts
	bne	.L129	@,
	cmp	r3, #0	@ pOffset,
	cmpne	r2, #0	@, pNum,
	moveq	r6, #1	@ tmp181,
	movne	r6, #0	@ tmp181,
	beq	.L129	@,
	str	r3, [sp, #12]	@ pOffset, %sfp
	add	r3, r5, #73728	@ tmp341, pRawStreamArray,
	str	r2, [sp, #8]	@ pNum, %sfp
	cmp	ip, #0	@ D.40094,
	ldr	r2, [r3]	@ D.40095, pRawStreamArray_10(D)->Head
	ldr	r7, [r3, #12]	@ pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->FirstPacketOffset
	str	r3, [sp, #4]	@ tmp341, %sfp
	mov	ip, r2, asl #3	@ tmp337, D.40095,
	mov	r3, r2, asl #6	@ tmp338, D.40095,
	add	lr, ip, r3	@ tmp187, tmp337, tmp338
	add	lr, r5, lr	@ tmp188, pRawStreamArray, tmp187
	ldr	r4, [lr, #8]	@ pRawStreamArray_10(D)->RawPacket[_20].Length, pRawStreamArray_10(D)->RawPacket[_20].Length
	rsb	r4, r7, r4	@ TotalLen, pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->RawPacket[_20].Length
	bne	.L121	@,
	ldr	lr, [sp, #4]	@ tmp341, %sfp
	ldr	lr, [lr, #4]	@ pRawStreamArray_10(D)->Tail, pRawStreamArray_10(D)->Tail
	subs	lr, lr, r2	@ RawNum, pRawStreamArray_10(D)->Tail, D.40095
	addmi	lr, lr, #1024	@ RawNum, RawNum,
.L127:
	add	r3, ip, r3	@ tmp200, tmp337, tmp338
	add	lr, lr, r2	@ RawNum, RawNum, D.40095
	add	r3, r5, r3	@ tmp201, pRawStreamArray, tmp200
	ldr	r2, [sp, #68]	@ tmp363, pUsertag
	ldr	ip, [sp, #76]	@ tmp365, pDispEnableFlag
	ldrd	r6, [r3, #16]	@ D.40096, tmp201,
	strd	r6, [r9]	@ D.40096, *pPts_28(D)
	ldrd	r6, [r3, #32]	@ D.40096, tmp201,
	strd	r6, [r2]	@ D.40096, *pUsertag_31(D)
	ldrd	r6, [r3, #16]	@ D.40096, tmp201,
	ldr	r2, [sp, #72]	@ tmp364, pDisptime
	strd	r6, [r0]	@ D.40096, *pRawPts_34(D)
	ldrd	r6, [r3, #40]	@ D.40096, tmp201,
	strd	r6, [r2]	@ D.40096, *pDisptime_37(D)
	ldr	r2, [r3, #56]	@ D.40097, pRawStreamArray_10(D)->RawPacket[_110].DispEnableFlag
	str	r2, [ip]	@ D.40097, *pDispEnableFlag_40(D)
	ldr	r2, [r3, #60]	@ D.40097, pRawStreamArray_10(D)->RawPacket[_110].DispFrameDistance
	str	r2, [r10]	@ D.40097, *pDispFrameDistance_43(D)
	ldr	r2, [r3, #64]	@ D.40097, pRawStreamArray_10(D)->RawPacket[_110].DistanceBeforeFirstFrame
	str	r2, [fp]	@ D.40097, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r3, #68]	@ D.40097, pRawStreamArray_10(D)->RawPacket[_110].GopNum
	str	r3, [r1]	@ D.40097, *pGopNum_49(D)
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	ip, [r3]	@ i, pRawStreamArray_10(D)->Head
	cmp	r8, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	strgt	r1, [sp, #88]	@ pGopNum, pGopNum
	strgt	r0, [sp, #92]	@ pRawPts, pRawPts
	bgt	.L125	@,
	b	.L126	@
.L124:
	strd	r6, [r9]	@ D.40093, *pPts_28(D)
	cmp	r8, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	ldrd	r6, [r2, #32]	@ D.40096, tmp278,
	ldr	r3, [sp, #68]	@ tmp370, pUsertag
	ldr	r1, [sp, #76]	@ tmp372, pDispEnableFlag
	strd	r6, [r3]	@ D.40096, *pUsertag_31(D)
	ldr	r3, [sp, #92]	@ tmp383, pRawPts
	ldrd	r6, [r2, #16]	@ D.40096, tmp278,
	strd	r6, [r3]	@ D.40096, *pRawPts_34(D)
	ldr	r3, [sp, #72]	@ tmp371, pDisptime
	ldrd	r6, [r2, #40]	@ D.40096, tmp278,
	strd	r6, [r3]	@ D.40096, *pDisptime_37(D)
	ldr	r3, [r2, #56]	@ D.40097, pRawStreamArray_10(D)->RawPacket[Index_53].DispEnableFlag
	str	r3, [r1]	@ D.40097, *pDispEnableFlag_40(D)
	ldr	r3, [r2, #60]	@ D.40097, pRawStreamArray_10(D)->RawPacket[Index_53].DispFrameDistance
	ldr	r1, [sp, #88]	@ tmp382, pGopNum
	str	r3, [r10]	@ D.40097, *pDispFrameDistance_43(D)
	ldr	r3, [r2, #64]	@ D.40097, pRawStreamArray_10(D)->RawPacket[Index_53].DistanceBeforeFirstFrame
	str	r3, [fp]	@ D.40097, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r2, #68]	@ D.40097, pRawStreamArray_10(D)->RawPacket[Index_53].GopNum
	str	r3, [r1]	@ D.40097, *pGopNum_49(D)
	ble	.L134	@,
.L125:
	add	ip, ip, #1	@ i, i,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp369,
	mov	r3, ip, asr #31	@ tmp255, i,
	mov	r2, r3, lsr #22	@ tmp256, tmp255,
	add	r3, ip, r2	@ tmp257, i, tmp256
	ubfx	r3, r3, #0, #10	@ tmp258, tmp257,,
	rsb	r3, r2, r3	@ Index, tmp256, tmp258
	mov	r6, r3, asl #3	@ tmp339, Index,
	mov	r3, r3, asl #6	@ tmp340, Index,
	add	r2, r6, r3	@ tmp277, tmp339, tmp340
	add	r2, r5, r2	@ tmp278, pRawStreamArray, tmp277
	ldrd	r6, [r2, #16]	@ D.40093, tmp264,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_53].Length, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	cmp	r7, r1	@ D.40093,
	cmpeq	r6, r0	@ D.40093, tmp369
	add	r4, r4, r3	@ TotalLen, TotalLen, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	ldreqd	r6, [r9]	@ D.40093, *pPts_28(D)
	b	.L124	@
.L134:
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	r1, [r3]	@ D.40095, pRawStreamArray_10(D)->Head
	cmp	r1, ip	@ D.40095, i
	beq	.L126	@,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_105].Length, pRawStreamArray_10(D)->RawPacket[Index_105].Length
	mov	r0, #0	@ D.40092,
	ldr	r2, [sp, #8]	@ pNum, %sfp
	rsb	ip, r1, ip	@ D.40095, D.40095, i
	rsb	r4, r3, r4	@ TotalLen, pRawStreamArray_10(D)->RawPacket[Index_105].Length, TotalLen
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	rsb	r8, r4, r8	@ D.40095, TotalLen, Len
	str	ip, [r2]	@ D.40095, *pNum_15(D)
	str	r8, [r3]	@ D.40095, *pOffset_17(D)
.L132:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L126:
	ldr	r3, [sp, #8]	@ pNum, %sfp
	mov	r0, #0	@ tmp254,
	str	r0, [r3]	@ tmp254, *pNum_15(D)
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	str	r8, [r3]	@ Len, *pOffset_17(D)
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L121:
	str	r0, [sp, #20]	@ pRawPts, %sfp
	str	r1, [sp, #16]	@ pGopNum, %sfp
	bl	vfmw_dprint_nothing	@
	mov	lr, r6	@ RawNum, tmp181
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	r1, [sp, #16]	@ pGopNum, %sfp
	ldr	r0, [sp, #20]	@ pRawPts, %sfp
	ldr	r2, [r3]	@ D.40095, pRawStreamArray_10(D)->Head
	mov	ip, r2, asl #3	@ tmp337, D.40095,
	mov	r3, r2, asl #6	@ tmp338, D.40095,
	b	.L127	@
.L129:
	mvn	r0, #0	@ D.40092,
	b	.L132	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r0	@ D.40101, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.40101, D.40101,
	orrs	ip, r3, r1, lsr #31	@, tmp137, D.40101, DelLen,
	.pad #88
	sub	sp, sp, #88	@,,
	bne	.L141	@,
	cmp	r3, #0	@ D.40101,
	str	ip, [sp, #32]	@ tmp137, DelNum
	str	ip, [sp, #36]	@ tmp137, RawPacketOffSet
	bne	.L141	@,
	add	r5, r0, #73728	@ tmp141, pRawStreamArray,
	mov	lr, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r5, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.40100, TotallLen,
	bne	.L137	@,
	cmp	r1, r3	@ DelLen, TotallLen
	bgt	.L141	@,
	add	r3, sp, #80	@ tmp148,,
	add	r2, sp, #52	@ tmp149,,
	str	r3, [sp, #28]	@ tmp148,
	add	r3, sp, #48	@ tmp150,,
	str	r2, [sp, #24]	@ tmp149,
	add	r2, sp, #44	@ tmp151,,
	str	r3, [sp, #20]	@ tmp150,
	add	r3, sp, #40	@ tmp152,,
	str	r2, [sp, #16]	@ tmp151,
	add	r2, sp, #72	@ tmp153,,
	str	r3, [sp, #12]	@ tmp152,
	add	r3, sp, #64	@ tmp154,,
	str	r2, [sp, #8]	@ tmp153,
	add	r2, sp, #56	@ tmp155,,
	str	r3, [sp, #4]	@ tmp154,
	add	r3, sp, #36	@,,
	str	r2, [sp]	@ tmp155,
	add	r2, sp, #32	@,,
	mov	r4, r0	@ pRawStreamArray, pRawStreamArray
	bl	GetRawNumOffsert	@
	mov	r0, r4	@, pRawStreamArray
	ldr	r1, [sp, #32]	@, DelNum
	bl	DeleteRawPacket	@
	ldr	r3, [r5]	@ D.40102, pRawStreamArray_3(D)->Head
	ldr	r1, [r5, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r3, r1	@ D.40102, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.40100,
	ldr	r2, [sp, #36]	@ D.40102, RawPacketOffSet
	beq	.L137	@,
	mov	lr, r3, asl #6	@ tmp167, D.40102,
	ldr	r1, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	lr, lr, r3, lsl #3	@ tmp168, tmp167, D.40102,
	add	lr, r4, lr	@ tmp169, pRawStreamArray, tmp168
	add	r2, r2, r1	@ TargetOffset, D.40102, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [lr, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r5, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L141	@,
.L137:
	mov	r0, r6	@, D.40100
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L141:
	mvn	r6, #0	@ D.40100,
	mov	r0, r6	@, D.40100
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
	@ link register save eliminated.
	cmp	r0, #0	@ SmID,
	bxne	lr	@
	b	DeleteLastSendRaw.part.0	@
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
	ldrne	r3, [r0, #20]	@ D.40109, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.40109, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.40109, pRawStreamArray_3(D)->FirstPacketOffset, D.40109
	strne	r0, [r1]	@ D.40109, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.40108, D.40109,
	mvneq	r0, #0	@ D.40108,
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
	beq	.L151	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.40114, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.40114, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.40114, D.40114,
	strmi	r3, [r1]	@ D.40114, *pStreamNum_8(D)
	movpl	r0, #0	@ D.40113,
	movmi	r0, #0	@ D.40113,
	bx	lr	@
.L151:
	mvn	r0, #0	@ D.40113,
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
	beq	.L154	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp134,
	movcc	r4, #1	@ tmp134,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp138, tmp134
	cmp	r4, #0	@ tmp138,
	bne	.L155	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp141, pStreamSegArray,
	mov	r0, r4	@ D.40117, tmp138
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L155:
	mvn	r0, #0	@ D.40117,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L154:
	mvn	r0, #0	@ D.40117,
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
	ldr	r2, [r0, #2072]	@ D.40122, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.40122, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.40122, pStreamSegArray_2(D)->SegBufWriteAddr
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
	ldr	ip, [r0, #2084]	@ D.40138, pStreamSegArray_1(D)->SegBufWriteAddr
	str	ip, [r1]	@ D.40138, *pAddr_3(D)
	str	r3, [r2]	@ tmp136, *pLength_7(D)
	ldr	r1, [r0, #2084]	@ D.40138, pStreamSegArray_1(D)->SegBufWriteAddr
	ldr	r3, [r0, #2080]	@ D.40138, pStreamSegArray_1(D)->SegBufReadAddr
	cmp	r1, r3	@ D.40138, D.40138
	bgt	.L173	@,
	ldrge	r0, [r0, #2076]	@ D.40138, pStreamSegArray_1(D)->SegBufSize
	rsblt	r3, r1, r3	@ D.40138, D.40138, D.40138
	ldrlt	r0, [r0, #2076]	@ D.40138, pStreamSegArray_1(D)->SegBufSize
	sublt	r3, r3, #1	@ Len, D.40138,
	subge	r3, r0, #1	@ Len, D.40138,
.L170:
	cmp	r3, r0	@ Len, D.40138
	strle	r3, [r2]	@ Len, *pLength_7(D)
	bx	lr	@
.L173:
	ldr	r0, [r0, #2076]	@ D.40138, pStreamSegArray_1(D)->SegBufSize
	rsb	r3, r1, r3	@ D.40138, D.40138, D.40138
	sub	r1, r0, #1	@ D.40138, D.40138,
	add	r3, r1, r3	@ Len, D.40138, D.40138
	b	.L170	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L222	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r5, #0	@ pstChan,
	beq	.L218	@,
	ldr	r3, [r5, #880]	@ D.40141, pstChan_10->eVidStd
	sub	ip, r3, #3	@ D.40142, D.40141,
	clz	ip, ip	@ D.40142, D.40142
	mov	ip, ip, lsr #5	@ D.40142, D.40142,
	cmp	r3, #0	@ D.40141,
	movne	r3, ip	@, D.40142, D.40142
	orreq	r3, ip, #1	@,, D.40142, D.40142
	cmp	r3, #0	@ D.40142,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r4, r5, #217088	@ tmp292, pstChan,
	ldr	r2, [r4, #384]	@ D.40143, pstChan_10->s32FindStartCodeCnt
	cmp	r2, #199	@ D.40143,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	lr, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_17(D), *pSegBufVirAddr_17(D)
	cmp	lr, #0	@ *pSegBufVirAddr_17(D),
	bne	.L217	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B],
	bne	.L217	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B]
	cmp	lr, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B],
	beq	.L182	@,
.L217:
	ldr	r6, [r4, #396]	@ D.40143, pstChan_10->s32CurrentStartCode
	mov	lr, #0	@ tmp291,
	ldr	r7, [r4, #392]	@ D.40143, pstChan_10->s32LastOneStartCode
	mov	r0, lr	@ D.40142, tmp291
	mov	r8, lr	@ D.40143, D.40142
	mov	r9, lr	@ u8Data, D.40142
	add	r2, r2, #1	@ D.40143, D.40143,
	str	lr, [r4, #396]	@ tmp291, pstChan_10->s32CurrentStartCode
	str	r2, [r4, #384]	@ D.40143, pstChan_10->s32FindStartCodeCnt
	str	r6, [r4, #392]	@ D.40143, pstChan_10->s32LastOneStartCode
	str	r7, [r4, #388]	@ D.40143, pstChan_10->s32LastTwoStartCode
.L183:
	cmp	r3, #0	@ D.40142,
	beq	.L219	@,
.L184:
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.40143, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.40143, pstChan_10->s32Mpeg2Score
.L185:
	cmp	r0, #0	@ D.40142,
	beq	.L186	@,
	rsb	r3, r6, r8	@ D.40143, D.40143, D.40143
	cmp	r3, #1	@ D.40143,
	beq	.L220	@,
.L187:
	cmp	r6, r8	@ D.40143, D.40143
	cmpeq	r7, r6	@, D.40143, D.40143
	beq	.L188	@,
.L186:
	cmp	r2, #199	@ D.40143,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	lr, [r4, #376]	@ D.40143, pstChan_10->s32H264Score
	mov	r6, r1	@ InstID, InstID
	ldr	r3, [r4, #380]	@ D.40143, pstChan_10->s32Mpeg2Score
	rsb	r2, r3, lr	@ D.40143, D.40143, D.40143
	cmp	r2, #49	@ D.40143,
	movle	ip, #0	@, tmp270
	andgt	ip, ip, #1	@,, tmp270, D.40142
	cmp	ip, #0	@ tmp270,
	bne	.L221	@,
.L190:
	rsb	r3, lr, r3	@ D.40143, D.40143, D.40143
	cmp	r3, #49	@ D.40143,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r5, #880]	@ pstChan_10->eVidStd, pstChan_10->eVidStd
	cmp	r2, #0	@ pstChan_10->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L222+4	@ tmp278,
	ldr	r3, [r3]	@ D.40145, g_event_report
	cmp	r3, #0	@ D.40145,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r0, r6	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.40145
.L219:
	add	r9, r9, #73	@ tmp226, u8Data,
	uxtb	r9, r9	@ tmp227, tmp226
	cmp	r9, #3	@ tmp227,
	bhi	.L185	@,
	b	.L184	@
.L221:
	ldr	r2, .L222+4	@ tmp271,
	ldr	ip, [r2]	@ D.40145, g_event_report
	cmp	ip, #0	@ D.40145,
	beq	.L190	@,
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r6	@, InstID
	blx	ip	@ D.40145
	ldr	r3, [r4, #380]	@ D.40143, pstChan_10->s32Mpeg2Score
	ldr	lr, [r4, #376]	@ D.40143, pstChan_10->s32H264Score
	b	.L190	@
.L182:
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 3B]
	add	r2, r2, #1	@ D.40143, D.40143,
	ldr	r6, [r4, #396]	@ D.40143, pstChan_10->s32CurrentStartCode
	and	r8, r9, #31	@ D.40143, u8Data,
	ands	r0, r9, #31	@ tmp181, u8Data,
	sub	lr, r8, #30	@ tmp208, D.40143,
	sub	r10, r9, #1	@ tmp189, u8Data,
	movne	r0, #1	@ tmp181,
	cmp	r8, #19	@ D.40143,
	cmpne	lr, #1	@, tmp208,
	uxtb	r10, r10	@ tmp191, tmp189
	sub	r7, r8, #1	@ D.40147, D.40143,
	add	r3, r9, #79	@ tmp185, u8Data,
	movls	lr, #1	@ tmp212,
	movhi	lr, #0	@ tmp212,
	cmp	r7, #12	@ D.40147,
	orrls	lr, lr, #1	@,, tmp219, tmp212
	cmp	r10, #183	@ tmp191,
	uxtb	r3, r3	@ tmp187, tmp185
	ldr	r7, [r4, #392]	@ D.40143, pstChan_10->s32LastOneStartCode
	movls	r10, #0	@ tmp192,
	movhi	r10, #1	@ tmp192,
	cmp	r2, #2	@ D.40143,
	movle	r0, #0	@, D.40142
	andgt	r0, r0, #1	@,, D.40142, tmp181
	cmp	r3, #4	@ tmp187,
	movhi	r3, r10	@, D.40142, tmp192
	orrls	r3, r10, #1	@,, D.40142, tmp192
	cmp	lr, #0	@ tmp219,
	str	r2, [r4, #384]	@ D.40143, pstChan_10->s32FindStartCodeCnt
	str	r8, [r4, #396]	@ D.40143, pstChan_10->s32CurrentStartCode
	ldrne	lr, [r4, #376]	@ pstChan_10->s32H264Score, pstChan_10->s32H264Score
	str	r6, [r4, #392]	@ D.40143, pstChan_10->s32LastOneStartCode
	addne	lr, lr, #1	@ D.40143, pstChan_10->s32H264Score,
	str	r7, [r4, #388]	@ D.40143, pstChan_10->s32LastTwoStartCode
	strne	lr, [r4, #376]	@ D.40143, pstChan_10->s32H264Score
	b	.L183	@
.L220:
	rsb	r3, r7, r6	@ D.40143, D.40143, D.40143
	cmp	r3, #1	@ D.40143,
	bne	.L187	@,
.L188:
	cmp	r8, #1	@ D.40143,
	cmpne	r8, #20	@, D.40143,
	beq	.L186	@,
	ldr	r3, [r4, #376]	@ D.40143, pstChan_10->s32H264Score
	cmp	r3, #0	@ D.40143,
	subgt	r3, r3, #1	@ D.40143, D.40143,
	strgt	r3, [r4, #376]	@ D.40143, pstChan_10->s32H264Score
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.40143, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.40143, pstChan_10->s32Mpeg2Score
	b	.L186	@
.L218:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L223:
	.align	2
.L222:
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
	moveq	r8, #1	@ tmp151,
	movne	r8, #0	@ tmp151,
	beq	.L226	@,
	add	r4, r0, #90112	@ tmp153, pStreamSegArray,
	movw	r5, #36409	@ tmp158,
	movt	r5, 14563	@ tmp158,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.40152, pStreamSegArray_5(D)->Tail,
	smull	r6, r7, r3, r5	@ tmp157, D.40152, tmp158
	mov	ip, r3, asr #31	@ tmp160, D.40152,
	rsb	ip, ip, r7, asr #8	@ tmp156, tmp160,,
	mov	r6, ip, asl #10	@ tmp163, tmp156,
	add	ip, r6, ip, lsl #7	@ tmp164, tmp163, tmp156,
	rsb	r3, ip, r3	@ D.40152, tmp164, D.40152
	cmp	r3, lr	@ D.40152, pStreamSegArray_5(D)->Head
	beq	.L227	@,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r6]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r7, [r4, #2060]	@ D.40152, pStreamSegArray_5(D)->Tail
	mov	r1, r6	@, pStreamSeg
	mov	r2, #80	@,
	mov	r3, r7, asl #6	@ tmp174, D.40152,
	add	r7, r3, r7, lsl #4	@ tmp175, tmp174, D.40152,
	add	r0, r7, #8	@ tmp176, tmp175,
	add	r7, r9, r7	@ tmp196, pStreamSegArray, tmp175
	add	r0, r9, r0	@, pStreamSegArray, tmp176
	bl	memcpy	@
	ldr	r3, [r4, #2060]	@ D.40152, pStreamSegArray_5(D)->Tail
	mov	lr, #1	@ tmp190,
	mov	r0, r8	@ D.40150, tmp151
	add	ip, r3, lr	@ D.40152, D.40152,
	mov	r2, r3, asl #6	@ tmp186, D.40152,
	smull	r10, fp, ip, r5	@ tmp201, D.40152, tmp158
	add	r2, r2, r3, lsl #4	@ tmp187, tmp186, D.40152,
	add	r2, r9, r2	@ tmp188, pStreamSegArray, tmp187
	mov	r1, ip, asr #31	@ tmp204, D.40152,
	strb	lr, [r2, #12]	@ tmp190, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r3, [r7, #24]	@ D.40152, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	rsb	r2, r1, fp, asr #8	@ tmp205, tmp204,,
	ldr	lr, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	ldr	r1, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	mov	r3, r2, asl #10	@ tmp208, tmp205,
	add	r3, r3, r2, lsl #7	@ tmp209, tmp208, tmp205,
	ldr	r2, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	rsb	r3, r3, ip	@ D.40152, tmp209, D.40152
	str	r3, [r4, #2060]	@ D.40152, pStreamSegArray_5(D)->Tail
	ldr	r3, [r6, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r2, #1	@ D.40152, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, r3, ip	@ D.40154, pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2084]	@ D.40154, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, lr, r3	@ D.40154, pStreamSegArray_5(D)->SegTotalSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2088]	@ D.40154, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.40152, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r1, r3	@ D.40154, pStreamSegArray_5(D)->SegFreshSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2092]	@ D.40154, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L227:
	mvn	r0, #3	@ D.40150,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L226:
	mvn	r0, #0	@ D.40150,
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
	beq	.L236	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp205, pStreamSegArray,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.40160, pStreamSegArray_7(D)->Tail
	cmp	lr, r3	@ D.40160, i
	beq	.L238	@,
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp146, tmp203, tmp204
	add	r2, r0, r2	@ tmp147, pStreamSegArray, tmp146
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState, pStreamSegArray_7(D)->StreamSeg[i_13].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState,
	movwne	r6, #36409	@ tmp206,
	movtne	r6, 14563	@ tmp206,
	bne	.L233	@,
	b	.L231	@
.L244:
	add	r2, r0, r2	@ tmp154, pStreamSegArray, tmp153
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState, pStreamSegArray_7(D)->StreamSeg[i_17].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState,
	beq	.L231	@,
.L233:
	add	ip, r3, #1	@ D.40160, i,
	smull	r2, r3, ip, r6	@ tmp162, D.40160, tmp206
	mov	r2, ip, asr #31	@ tmp165, D.40160,
	rsb	r3, r2, r3, asr #8	@ i, tmp165,,
	mov	r2, r3, asl #10	@ tmp168, i,
	add	r3, r2, r3, lsl #7	@ tmp169, tmp168, i,
	rsb	r3, r3, ip	@ i, tmp169, D.40160
	cmp	lr, r3	@ D.40160, i
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp153, tmp203, tmp204
	bne	.L244	@,
.L238:
	mvn	r0, #2	@ D.40161,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L231:
	add	r4, ip, r4	@ tmp160, tmp203, tmp204
	add	r3, r4, #8	@ tmp161, tmp160,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp161
	beq	.L238	@,
	mov	r3, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@, pSeg
	mov	r0, r3	@, pStreamSeg
	mov	r2, #80	@,
	bl	memcpy	@
	add	ip, r6, r4	@ tmp178, pStreamSegArray, tmp160
	mov	r3, #2	@ tmp180,
	ldr	r1, [ip, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_36].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_36].LenInByte
	strb	r3, [ip, #12]	@ tmp180, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_36].SegState
	ldr	r2, [r5, #2092]	@ pStreamSegArray_7(D)->SegFreshSize, pStreamSegArray_7(D)->SegFreshSize
	ldr	r3, [r5, #2096]	@ pStreamSegArray_7(D)->SegFreshNum, pStreamSegArray_7(D)->SegFreshNum
	rsb	r2, r1, r2	@ D.40164, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_36].LenInByte, pStreamSegArray_7(D)->SegFreshSize
	sub	r3, r3, #1	@ D.40160, pStreamSegArray_7(D)->SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.40160, D.40164
	str	r2, [r5, #2092]	@ D.40160, pStreamSegArray_7(D)->SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.40160, D.40160
	str	r3, [r5, #2096]	@ D.40160, pStreamSegArray_7(D)->SegFreshNum
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.40161,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L236:
	mvn	r0, #0	@ D.40161,
	bx	lr	@
	.fnend
	.size	GetStreamSeg, .-GetStreamSeg
	.align	2
	.global	ReleaseStreamSeg
	.type	ReleaseStreamSeg, %function
ReleaseStreamSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r0, #0	@ pStreamSegArray, pStreamSegArray
	beq	.L265	@,
	movw	r3, #64382	@ tmp147,
	sub	r2, r1, #1152	@ D.40174, StreamID,
	movt	r3, 65535	@ tmp147,
	cmp	r2, r3	@ D.40174, tmp147
	mov	r4, r1	@ StreamID, StreamID
	bls	.L265	@,
	cmn	r1, #1	@ StreamID,
	add	r6, r5, #90112	@ tmp252, pStreamSegArray,
	beq	.L280	@,
	ldr	r3, [r6, #2056]	@ i, pStreamSegArray_15(D)->Head
	ldr	ip, [r6, #2060]	@ D.40174, pStreamSegArray_15(D)->Tail
	cmp	r3, ip	@ i, D.40174
	beq	.L249	@,
	cmp	r1, r3	@ StreamID, i
	movwne	lr, #36409	@ tmp256,
	movtne	lr, 14563	@ tmp256,
	bne	.L256	@,
	b	.L254	@
.L276:
	cmp	r4, r3	@ StreamID, i
	beq	.L254	@,
.L256:
	add	r2, r3, #1	@ D.40174, i,
	umull	r0, r1, r2, lr	@ tmp195, D.40174, tmp256
	mov	r3, r1, lsr #8	@ i,,
	mov	r1, r3, asl #10	@ tmp199, i,
	add	r3, r1, r3, lsl #7	@ tmp200, tmp199, i,
	rsb	r3, r3, r2	@ i, tmp200, D.40174
	cmp	r3, ip	@ i, D.40174
	bne	.L276	@,
.L249:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ D.40173,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L254:
	mov	r2, r3, asl #6	@ tmp185, i,
	add	r3, r2, r3, lsl #4	@ tmp186, tmp185, i,
	add	r2, r5, r3	@ tmp187, pStreamSegArray, tmp186
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_15(D)->StreamSeg[i_76].SegState, pStreamSegArray_15(D)->StreamSeg[i_76].SegState
	cmp	r2, #2	@ pStreamSegArray_15(D)->StreamSeg[i_76].SegState,
	addeq	r3, r3, #8	@ tmp194, tmp186,
	addeq	r7, r5, r3	@ pSeg, pStreamSegArray, tmp194
	bne	.L249	@,
.L251:
	cmp	r7, #0	@ pSeg,
	beq	.L249	@,
	mov	r3, #0	@ tmp201,
	strb	r3, [r7, #4]	@ tmp201, pSeg_6->SegState
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #2056]	@ pStreamSegArray_15(D)->Head, pStreamSegArray_15(D)->Head
	cmp	r3, r4	@ pStreamSegArray_15(D)->Head, StreamID
	beq	.L281	@,
.L258:
	ldr	r2, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.40173,
	ldr	r3, [r6, #2088]	@ pStreamSegArray_15(D)->SegTotalSize, pStreamSegArray_15(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.40174, pSeg_6->LenInByte, pStreamSegArray_15(D)->SegTotalSize
	bic	r3, r3, r3, asr #31	@ D.40175, D.40174
	str	r3, [r6, #2088]	@ D.40175, pStreamSegArray_15(D)->SegTotalSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L280:
	ldr	r9, [r6, #2056]	@ D.40175, pStreamSegArray_15(D)->Head
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r9, r3	@ D.40175, pStreamSegArray_15(D)->Tail
	beq	.L249	@,
	mov	r3, r9, asl #6	@ tmp251, D.40175,
	mov	r4, r9	@ StreamID, D.40175
	add	r9, r3, r9, lsl #4	@ tmp156, tmp251, D.40175,
	bl	vfmw_dprint_nothing	@
	add	r7, r9, #8	@ tmp157, tmp156,
	add	r9, r5, r9	@ tmp162, pStreamSegArray, tmp156
	add	r7, r5, r7	@ pSeg, pStreamSegArray, tmp157
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	cmp	r3, #0	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte,
	movne	r8, #0	@ i,
	beq	.L253	@,
.L252:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	add	r8, r8, #1	@ i, i,
	cmp	r3, r8	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, i
	movhi	r3, #1	@ tmp178,
	movls	r3, #0	@ tmp178,
	cmp	r8, #15	@ i,
	movhi	r3, #0	@ tmp178,
	cmp	r3, #0	@ tmp178,
	bne	.L252	@,
.L253:
	bl	vfmw_dprint_nothing	@
	b	.L251	@
.L281:
	movw	r8, #36409	@ tmp253,
	movt	r8, 14563	@ tmp253,
	b	.L261	@
.L259:
	ldr	r2, [r6, #2060]	@ D.40175, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.40175, StreamID
	beq	.L262	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState, pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState
	cmp	r2, #0	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState,
	bne	.L282	@,
.L266:
	add	r3, r4, #1	@ D.40174, StreamID,
	umull	r0, r1, r3, r8	@ tmp233, D.40174, tmp253
	mov	r4, r1, lsr #8	@ StreamID,,
	mov	r1, r4, asl #10	@ tmp237, StreamID,
	add	r4, r1, r4, lsl #7	@ tmp238, tmp237, StreamID,
	rsb	r4, r4, r3	@ StreamID, tmp238, D.40174
.L261:
	mov	r3, r4, asl #6	@ tmp217, StreamID,
	cmp	r4, #1152	@ StreamID,
	add	r3, r3, r4, lsl #4	@ tmp218, tmp217, StreamID,
	add	r3, r5, r3	@ tmp219, pStreamSegArray, tmp218
	bcc	.L259	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #2060]	@ D.40175, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.40175, StreamID
	bne	.L266	@,
.L262:
	ldr	r3, [r6, #2084]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufWriteAddr
	str	r2, [r6, #2056]	@ D.40175, pStreamSegArray_15(D)->Head
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L258	@
.L282:
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r3, #16]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr, pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L258	@
.L265:
	mvn	r0, #0	@ D.40173,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
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
	movne	r0, #0	@ D.40179,
	mvneq	r0, #0	@ D.40179,
	ldrne	r3, [r3, #2088]	@ D.40180, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ D.40180, *pStreamSize_6(D)
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
	add	r3, r3, #1152	@ D.40183, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.40183, pSegStreamArray_2(D)->Head, D.40183
	smull	r0, r1, r3, r2	@ tmp127, D.40183, tmp128
	mov	r2, r3, asr #31	@ tmp130, D.40183,
	rsb	r2, r2, r1, asr #8	@ D.40183, tmp130,,
	mov	r0, r2, asl #10	@ tmp133, D.40183,
	add	r0, r0, r2, lsl #7	@ tmp134, tmp133, D.40183,
	rsb	r0, r0, r3	@, tmp134, D.40183
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
	ldrne	r3, [r0, #2096]	@ D.40187, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ D.40187, *pFreshNum_5(D)
	ldrne	r3, [r0, #2092]	@ D.40187, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ D.40187, *pFreshSize_8(D)
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
	ldr	r3, .L296	@ tmp114,
	ldr	r0, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L295	@,
	ldr	r2, [r3, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #152]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L295:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L297:
	.align	2
.L296:
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
	ldr	r3, .L299	@ tmp113,
	ldr	r0, [r3, #152]	@, s_eScdDrvSleepStage
	bx	lr	@
.L300:
	.align	2
.L299:
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
	ldr	r3, .L306	@ tmp111,
	ldr	r2, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #152]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L307:
	.align	2
.L306:
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
	ldr	r3, .L312	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #8]	@ D.40200, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.40200,
	beq	.L309	@,
	blx	r3	@ D.40200
.L310:
	ldr	r3, .L312+4	@ tmp112,
	mov	r2, #0	@ tmp113,
	str	r2, [r3, #152]	@ tmp113, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L309:
	bl	vfmw_dprint_nothing	@
	b	.L310	@
.L313:
	.align	2
.L312:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
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
	bne	.L316	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #49056	@,
	ldr	r5, .L319	@ tmp116,
	mov	r4, r0	@ SmID, SmID
	movt	r1, 2	@,
	ldr	r0, [r5, #128]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r3, [r5, #128]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r4	@ D.40203, SmID
	mvn	r5, #0	@,
	add	r3, r3, #179200	@ tmp121, s_SmIIS.pSmInstArray,
	mvn	r4, #0	@ tmp123,
	add	r3, r3, #896	@ tmp121, tmp121,
	strd	r4, [r3, #-8]	@ tmp123, tmp121,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L316:
	mvn	r0, #0	@ D.40203,
	bx	lr	@
.L320:
	.align	2
.L319:
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
	mov	r10, r2	@ RegAddr, RegAddr
	ldr	lr, .L336	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L336+4	@ tmp179,
	movt	ip, 4115	@ tmp141,
	mov	r5, r0	@ MemAddr, MemAddr
	mov	r8, r1	@ MemSize, MemSize
	ldr	r2, [lr, #8]	@ D.40208, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r2, #0	@ D.40208,
	beq	.L322	@,
	blx	r2	@ D.40208
.L323:
	ldr	r3, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L336+4	@ tmp143,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L327	@,
	bl	ResetSCD	@
	mov	r1, #140	@,
	add	r0, r4, #12	@, tmp143,
	mov	r7, #0	@ tmp148,
	bl	__memzero	@
	add	r3, r5, #3	@ D.40209, MemAddr,
	bic	r3, r3, #3	@ D.40209, D.40209,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.40209
	str	r3, [r4, #20]	@ D.40209, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.40209
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #152]	@ tmp148, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.40211, Offset,
	mov	r2, #12288	@ tmp155,
	add	r3, r5, r3	@ D.40209, MemAddr, D.40211
	str	r2, [r4, #28]	@ tmp155, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.40209, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.40209, Offset, MemAddr
	add	r5, r5, #26112	@ D.40211, D.40209,
	add	r5, r5, #127	@ D.40211, D.40211,
	bic	r5, r5, #127	@ D.40211, D.40211,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.40209
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp160,
	str	r5, [r4, #4]	@ D.40211, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp160, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.40211
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.40210,
	str	r0, [r4, #156]	@ D.40210, g_hex_base_vir_addr
	beq	.L335	@,
	add	r6, r6, #44032	@ D.40211, Offset,
	mov	r3, #17920	@ tmp168,
	cmp	r8, r6	@ MemSize, D.40211
	str	r10, [r4, #80]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #84]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp168, g_hex_len
	blt	.L327	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L327	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L327	@,
	mov	r3, #1	@ tmp177,
	mov	r0, r7	@ D.40207, tmp148
	str	r3, [r4, #136]	@ tmp177, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L322:
	bl	vfmw_dprint_nothing	@
	b	.L323	@
.L327:
	mvn	r0, #6	@ D.40207,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L335:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40207,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L337:
	.align	2
.L336:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
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
	ldr	r3, .L347	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #128]	@ D.40216, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40216,
	beq	.L339	@,
	ldr	r2, [r3, #64]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L339	@,
	add	r3, r3, #163840	@ tmp121, D.40216,
	ldr	r2, [r3, #2412]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2412]	@ tmp125, _5->Mode
.L339:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L348:
	.align	2
.L347:
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
	ldr	r2, .L359	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #128]	@ D.40231, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40231,
	beq	.L352	@,
	add	r3, r3, #163840	@ tmp121, D.40231,
	ldr	r1, [r3, #2412]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L352	@,
	ldr	r2, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2412]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L352	@,
	mvn	r0, #6	@ D.40229,
	bx	lr	@
.L352:
	mov	r0, #0	@ D.40229,
	bx	lr	@
.L360:
	.align	2
.L359:
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
	ldr	r0, .L363	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L364:
	.align	2
.L363:
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
	bne	.L372	@,
	ldr	r3, .L382	@ tmp133,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L381	@,
	add	ip, r0, #163840	@ tmp186, pSmInstArray,
	add	r3, r0, #176128	@ tmp141, pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmn	r0, #168	@ pSmInstArray,
	ldr	r2, [ip, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	add	r0, r0, #73728	@ tmp185, pSmInstArray,
	strb	r2, [r1]	@ pSmInstArray_5->Mode, pSmInstInfo_6(D)->InstMode
	ldr	r3, [r3, #3988]	@ D.40237, pSmInstArray_5->numReadSegFail
	str	r3, [r1, #20]	@ D.40237, pSmInstInfo_6(D)->numReadSegFail
	beq	.L368	@,
	ldr	r3, [r0, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	ldr	r2, [r0, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	subs	r3, r3, r2	@ D.40237, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	addmi	r3, r3, #1024	@ D.40237, D.40237,
	strmi	r3, [r1, #4]	@ D.40237, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
	strpl	r3, [r1, #4]	@ D.40237, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
.L370:
	ldr	r3, [r0, #188]	@ D.40237, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].RawTotalSize
	str	r3, [r1, #12]	@ D.40237, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
	ldr	r2, [r0, #180]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset
	rsb	r3, r2, r3	@ D.40237, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, D.40237
	str	r3, [r1, #12]	@ D.40237, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
.L368:
	ldr	r3, [ip, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail
	movw	r4, #36409	@ tmp163,
	ldr	r2, [ip, #2248]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head
	movt	r4, 14563	@ tmp163,
	add	r3, r3, #1152	@ D.40237, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail,
	adds	r0, r0, #192	@ D.40240, tmp185,
	rsb	r3, r2, r3	@ D.40237, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, D.40237
	movne	r0, #0	@ D.40236,
	smull	r4, r5, r3, r4	@ tmp162, D.40237, tmp163
	mov	r2, r3, asr #31	@ tmp165, D.40237,
	rsb	r2, r2, r5, asr #8	@ tmp166, tmp165,,
	mov	lr, r2, asl #10	@ tmp169, tmp166,
	add	r2, lr, r2, lsl #7	@ tmp170, tmp169, tmp166,
	rsb	r3, r2, r3	@ D.40237, tmp170, D.40237
	str	r3, [r1, #8]	@ D.40237, pSmInstInfo_6(D)->SegNum
	ldrne	r3, [ip, #2280]	@ D.40237, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegTotalSize
	strne	r3, [r1, #16]	@ D.40237, MEM[(HI_S32 *)pSmInstInfo_6(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L381:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L372	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_6(D)->InstMode
	mvn	r0, #0	@ D.40236,
	bx	lr	@
.L372:
	mvn	r0, #0	@ D.40236,
	bx	lr	@
.L383:
	.align	2
.L382:
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
	ldr	r3, .L389	@ tmp122,
	ldr	ip, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	add	r0, r3, r0, lsl #2	@ tmp124, tmp122, SmID,
	cmp	ip, #0	@ pRawPacket_6(D)->PhyAddr,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	beq	.L385	@,
	ldr	r3, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r3, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L385	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
.L385:
	mvn	r0, #0	@,
	bx	lr	@
.L390:
	.align	2
.L389:
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
	ldr	r3, .L420	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp203, tmp201, SmID,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L408	@,
	add	r10, r5, #73728	@ tmp441, pSmInstArray,
	add	r3, r5, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r10, #192	@ tmp441,
	cmnne	r5, #168	@, pSmInstArray,
	str	r3, [sp, #12]	@ pRawPacketArray, %sfp
	add	r2, r10, #192	@ pStreamSegArray, tmp441,
	str	r2, [sp, #8]	@ pStreamSegArray, %sfp
	moveq	r3, #1	@ tmp210,
	movne	r3, #0	@ tmp210,
	cmp	r1, #0	@ pStreamSeg,
	orreq	r3, r3, #1	@,, tmp216, tmp210
	cmp	r3, #0	@ tmp216,
	bne	.L408	@,
	ldr	r6, [r10, #172]	@ D.40258, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Tail
	ldr	r3, [r10, #168]	@ D.40258, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	cmp	r6, r3	@ D.40258, D.40258
	beq	.L395	@,
	mov	r9, r3, asl #3	@ tmp446, index,
	mov	r2, r3, asl #6	@ tmp447, index,
	add	lr, r9, r2	@ tmp224, tmp446, tmp447
	mov	r4, #1	@ rawnum,
	add	lr, r5, lr	@ tmp225, pSmInstArray, tmp224
	mov	fp, r9	@ tmp442, tmp446
	mov	ip, r2	@ tmp444, tmp447
	ldr	r7, [lr, #176]	@ TotalSrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	b	.L394	@
.L396:
	add	r4, r4, #1	@ rawnum, rawnum,
	ldr	r8, [r8, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	cmp	r4, #1024	@ rawnum,
	add	r7, r7, r8	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	movls	lr, #0	@ tmp237,
	movhi	lr, #1	@ tmp237,
	cmp	r3, r6	@ index, D.40258
	orreq	lr, lr, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L395	@,
.L394:
	add	lr, fp, ip	@ tmp244, tmp442, tmp444
	add	r3, r3, #1	@ D.40260, index,
	add	lr, r5, lr	@ tmp245, pSmInstArray, tmp244
	ubfx	r3, r3, #0, #10	@ index, D.40260,,
	ldrb	lr, [lr, #220]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	mov	fp, r3, asl #3	@ tmp442, index,
	mov	ip, r3, asl #6	@ tmp444, index,
	cmp	lr, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag,
	add	r8, fp, ip	@ tmp230, tmp442, tmp444
	add	r8, r5, r8	@ tmp231, pSmInstArray, tmp230
	bne	.L396	@,
	str	r0, [sp, #20]	@ SmID, %sfp
	mov	r8, lr	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	ldr	r0, [sp, #8]	@, %sfp
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	str	r2, [sp]	@ tmp447, %sfp
	bl	ResetStreamSegArray	@
	add	r0, r5, #163840	@ tmp251, pSmInstArray,
	ldr	r3, [r0, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize
	sub	r3, r3, #262144	@ D.40258, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize,
	cmp	r3, r7	@ D.40258, TotalSrcLength
	ldr	r2, [sp]	@ tmp447, %sfp
	blt	.L417	@,
	ldr	r1, [r5, #56]	@ D.40255, pSmInstArray_20->Config.VidStd
	ldr	r0, [r0, #2264]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufPhyAddr
	sub	r3, r1, #10	@ D.40255, D.40255,
	ldr	fp, [r10, #192]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].pSegBufVirAddr
	bics	r3, r3, #2	@ tmp479, D.40255,
	bne	.L398	@,
	ldr	r3, .L420+4	@ tmp262,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r3, #1	@ D.40258, g_VdmCharacter,
	streqb	r3, [fp]	@ D.40258, *TmpVirAddr_46
	addeq	fp, fp, #1	@ TmpVirAddr, TmpVirAddr,
	ldreq	r1, [r5, #56]	@ D.40255, pSmInstArray_20->Config.VidStd
.L398:
	add	r3, r9, r2	@ tmp270, tmp446, tmp447
	cmp	r1, #12	@ D.40255,
	add	r3, r5, r3	@ tmp271, pSmInstArray, tmp270
	ldr	r10, [r10, #168]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	ldr	r1, [r3, #172]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].VirAddr
	ldr	r3, [r3, #176]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	str	r3, [sp]	@ SrcLength, %sfp
	beq	.L418	@,
.L399:
	str	r0, [r6, #8]	@ TmpPhyAddr, pStreamSeg_26(D)->PhyAddr
	str	r2, [sp, #16]	@ tmp447, %sfp
	str	r1, [sp, #4]	@ SrcVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ rawnum,
	mov	r3, #1	@ tmp369,
	ldr	r2, [sp, #16]	@ tmp447, %sfp
	str	r0, [r6]	@ D.40262, pStreamSeg_26(D)->VirAddr
	rsb	r0, r0, fp	@ D.40258, D.40262, TmpVirAddr
	add	r9, r9, r2	@ tmp354, tmp446, tmp447
	str	r0, [r6, #12]	@ D.40258, pStreamSeg_26(D)->LenInByte
	add	r9, r5, r9	@ tmp355, pSmInstArray, tmp354
	ldrd	r0, [r9, #184]	@ tmp492, tmp355,
	strd	r0, [r6, #24]	@ tmp492, pStreamSeg,
	ldrd	r0, [r9, #184]	@ tmp493, tmp355,
	strd	r0, [r6, #32]	@ tmp493, pStreamSeg,
	ldrd	r0, [r9, #200]	@ tmp494, tmp355,
	strb	r3, [r6, #5]	@ tmp369, pStreamSeg_26(D)->IsLastSeg
	strd	r0, [r6, #40]	@ tmp494, pStreamSeg,
	ldr	r1, [sp, #4]	@ SrcVirAddr, %sfp
	beq	.L406	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	fp, #0	@, TmpVirAddr,
	beq	.L395	@,
	mov	r8, r10, asl #6	@ tmp445, index,
	mov	ip, r10, asl #3	@ tmp443, index,
	mov	r3, #0	@ i,
	str	r7, [sp, #16]	@ TotalSrcLength, %sfp
	mov	r2, r8	@ tmp445, tmp445
	str	r4, [sp, #4]	@ rawnum, %sfp
	mov	r8, r5	@ pSmInstArray, pSmInstArray
	mov	lr, r1	@ SrcVirAddr, SrcVirAddr
	mov	r5, r3	@ i, i
	ldr	r4, [sp]	@ SrcLength, %sfp
	mov	r7, ip	@ tmp443, tmp443
	mov	r3, r2	@ tmp445, tmp445
	b	.L404	@
.L405:
	cmp	fp, #0	@ TmpVirAddr,
	cmpne	lr, #0	@, SrcVirAddr,
	beq	.L395	@,
.L404:
	mov	r1, lr	@, SrcVirAddr
	mov	r2, r4	@, SrcLength
	mov	r0, fp	@, TmpVirAddr
	str	r3, [sp]	@ tmp445, %sfp
	bl	memcpy	@
	add	r10, r10, #1	@ D.40260, index,
	ldr	r1, [r6, #12]	@ pStreamSeg_26(D)->LenInByte, pStreamSeg_26(D)->LenInByte
	ubfx	r10, r10, #0, #10	@ index, D.40260,,
	add	fp, fp, r4	@ TmpVirAddr, TmpVirAddr, tmp2
	add	r5, r5, #1	@ i, i,
	add	r4, r1, r4	@ D.40260, pStreamSeg_26(D)->LenInByte, SrcLength
	ldr	r3, [sp]	@ tmp445, %sfp
	ldr	r1, [sp, #4]	@ rawnum, %sfp
	add	r7, r7, r3	@ tmp392, tmp443, tmp445
	mov	r3, r10, asl #6	@ tmp445, index,
	add	r7, r8, r7	@ tmp393, pSmInstArray, tmp392
	cmp	r5, r1	@ i, rawnum
	ldrb	r0, [r7, #221]	@ zero_extendqisi2	@ D.40259, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_158].is_stream_end_flag
	mov	r7, r10, asl #3	@ tmp443, index,
	str	r4, [r6, #12]	@ D.40260, pStreamSeg_26(D)->LenInByte
	add	r2, r7, r3	@ tmp401, tmp443, tmp445
	add	r2, r8, r2	@ tmp402, pSmInstArray, tmp401
	strb	r0, [r6, #6]	@ D.40259, pStreamSeg_26(D)->IsStreamEnd
	ldrd	r0, [r9, #208]	@ tmp496, tmp449,
	ldr	lr, [r2, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].VirAddr
	ldr	r4, [r2, #176]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].Length
	strd	r0, [r6, #48]	@ tmp496, pStreamSeg,
	ldr	r2, [r9, #224]	@ D.40260, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispEnableFlag
	str	r2, [r6, #56]	@ D.40260, pStreamSeg_26(D)->DispEnableFlag
	ldr	r2, [r9, #228]	@ D.40260, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispFrameDistance
	str	r2, [r6, #60]	@ D.40260, pStreamSeg_26(D)->DispFrameDistance
	ldr	r2, [r9, #232]	@ D.40260, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ D.40260, pStreamSeg_26(D)->DistanceBeforeFirstFrame
	ldr	r2, [r9, #236]	@ D.40260, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].GopNum
	str	r2, [r6, #68]	@ D.40260, pStreamSeg_26(D)->GopNum
	bne	.L405	@,
	ldr	r7, [sp, #16]	@ TotalSrcLength, %sfp
.L406:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.40256,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L395:
	mvn	r0, #3	@ D.40256,
.L392:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L418:
	ldr	r3, .L420+4	@ tmp283,
	ldr	ip, [sp]	@ SrcLength, %sfp
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	cmp	ip, #0	@ SrcLength,
	moveq	r3, #0	@, tmp290
	andne	r3, r3, #1	@,, tmp290, g_VdmCharacter
	cmp	r3, #0	@ tmp290,
	beq	.L399	@,
	cmp	ip, #2	@ SrcLength,
	bgt	.L419	@,
	cmp	r4, #1	@ rawnum,
	add	r10, r10, #1	@ D.40260, index,
	ubfx	r10, r10, #0, #10	@ index, D.40260,,
	bls	.L395	@,
	mov	r8, r10, asl #6	@ tmp445, index,
	add	r3, r8, r10, lsl #3	@ tmp294, tmp445, index,
	add	r3, r5, r3	@ tmp295, pSmInstArray, tmp294
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	ldr	ip, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].VirAddr
	ldr	r3, [sp]	@ SrcLength, %sfp
	add	r1, r3, r1	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	cmp	r1, #2	@ SrcLength,
	ble	.L401	@,
	add	r3, r10, #1020	@ D.40260, index,
	sub	r1, r1, #3	@ SrcLength, SrcLength,
	add	r3, r3, #3	@ D.40260, D.40260,
	str	r1, [sp]	@ SrcLength, %sfp
	ubfx	r3, r3, #0, #10	@ D.40260, D.40260,,
	sub	r4, r4, #1	@ rawnum, rawnum,
	mov	r1, r3, asl #6	@ tmp309, D.40260,
	add	r3, r1, r3, lsl #3	@ tmp310, tmp309, D.40260,
	add	r3, r5, r3	@ tmp311, pSmInstArray, tmp310
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length
	rsb	r1, r1, #3	@ D.40258, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length,
	add	r1, ip, r1	@ SrcVirAddr, SrcVirAddr, D.40258
	b	.L399	@
.L417:
	bl	vfmw_dprint_nothing	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.40256
	beq	.L392	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.40256, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	b	.L392	@
.L419:
	sub	r3, ip, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@ SrcVirAddr, SrcVirAddr,
	str	r3, [sp]	@ SrcLength, %sfp
	b	.L399	@
.L408:
	mvn	r0, #0	@ D.40256,
	b	.L392	@
.L401:
	cmp	r4, #2	@ rawnum,
	add	r10, r10, #1	@ D.40260, index,
	ubfx	r10, r10, #0, #10	@ index, D.40260,,
	bls	.L395	@,
	mov	r8, r10, asl #6	@ tmp445, index,
	add	r3, r8, r10, lsl #3	@ tmp318, tmp445, index,
	add	r3, r5, r3	@ tmp319, pSmInstArray, tmp318
	ldr	ip, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	ldr	r3, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].VirAddr
	add	ip, r1, ip	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	cmp	ip, #2	@ SrcLength,
	str	r3, [sp, #4]	@ SrcVirAddr, %sfp
	ble	.L395	@,
	add	r1, r10, #1020	@ D.40260, index,
	sub	r4, r4, #2	@ rawnum, rawnum,
	mov	r3, r1	@ D.40260, D.40260
	add	r1, r1, #3	@ D.40260, D.40260,
	ubfx	lr, r1, #0, #10	@ D.40260, D.40260,,
	add	r3, r3, #2	@ D.40260, D.40260,
	ubfx	r8, r3, #0, #10	@ D.40260, D.40260,,
	sub	r1, ip, #3	@ SrcLength, SrcLength,
	mov	r3, lr, asl #6	@ tmp333, D.40260,
	str	r1, [sp]	@ SrcLength, %sfp
	add	r3, r3, lr, lsl #3	@ tmp334, tmp333, D.40260,
	mov	r1, r8, asl #6	@ tmp344, D.40260,
	add	r1, r1, r8, lsl #3	@ tmp345, tmp344, D.40260,
	add	r3, r5, r3	@ tmp335, pSmInstArray, tmp334
	add	r1, r5, r1	@ tmp346, pSmInstArray, tmp345
	ldr	r3, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length
	ldr	r1, [r1, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length
	rsb	r3, r3, #3	@ D.40258, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length,
	rsb	r1, r1, r3	@ D.40258, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, D.40258
	ldr	r3, [sp, #4]	@ SrcVirAddr, %sfp
	add	r1, r3, r1	@ SrcVirAddr, SrcVirAddr, D.40258
	b	.L399	@
.L421:
	.align	2
.L420:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.fnend
	.size	SM_CopyRawToSeg, .-SM_CopyRawToSeg
	.align	2
	.global	SM_CopyYuvToDnr
	.type	SM_CopyYuvToDnr, %function
SM_CopyYuvToDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L438	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r3, r0, lsl #2	@ tmp153, tmp151, SmID,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r6, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L433	@,
	add	r3, r6, #73728	@ tmp155, pSmInstArray,
	add	r5, r6, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r3, #192	@ tmp155,
	cmnne	r6, #168	@, pSmInstArray,
	add	r1, r3, #192	@ pStreamSegArray, tmp155,
	beq	.L433	@,
	ldr	r2, [r3, #168]	@ D.40271, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	ldr	r3, [r3, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	cmp	r3, r2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, D.40271
	beq	.L431	@,
	mov	r8, r2, asl #3	@ tmp232, D.40271,
	mov	r4, r2, asl #6	@ tmp233, D.40271,
	mov	r7, r0	@ SmID, SmID
	mov	r0, r1	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	add	ip, r8, r4	@ tmp171, tmp232, tmp233
	add	ip, r6, ip	@ tmp172, pSmInstArray, tmp171
	ldr	r1, [ip, #172]	@ pu32tmp, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].VirAddr
	ldr	lr, [r1]	@ D.40272, *pu32tmp_14
	ldr	r3, [r1, #4]	@ D.40272, MEM[(HI_U32 *)pu32tmp_14 + 4B]
	sub	r2, lr, #32	@ D.40273, D.40272,
	cmp	r2, #1888	@ D.40273,
	bhi	.L425	@,
	sub	r2, r3, #32	@ D.40273, D.40272,
	cmp	r2, #1056	@ D.40273,
	bls	.L436	@,
.L425:
	bl	vfmw_dprint_nothing	@
	add	r2, r8, r4	@ tmp201, tmp232, tmp233
	add	r2, r6, r2	@ tmp202, pSmInstArray, tmp201
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L437	@,
.L435:
	mov	r0, #0	@ D.40269,
.L423:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L436:
	ldr	r0, [ip, #176]	@ D.40271, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r2, #51712	@ tmp183,
	movt	r2, 47	@ tmp183,
	sub	ip, r0, #1552	@ D.40273, D.40271,
	cmp	ip, r2	@ D.40273, tmp183
	bhi	.L425	@,
	mul	r2, r3, lr	@ D.40271, D.40272, D.40272
	add	ip, r6, #163840	@ tmp194, pSmInstArray,
	ldr	ip, [ip, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize
	sub	ip, ip, #262144	@ D.40271, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize,
	add	r2, r2, r2, lsl #1	@ D.40271, D.40271, D.40271,
	add	r2, r2, r2, lsr #31	@ tmp189, D.40271, D.40271,
	mov	r2, r2, asr #1	@ tmp190, tmp189,
	cmp	r2, ip	@ tmp190, D.40271
	bgt	.L425	@,
	add	r2, r2, #16	@ D.40271, tmp190,
	cmp	r0, r2	@ D.40271, D.40271
	blt	.L425	@,
	ldr	ip, [r1, #8]	@ D.40272, MEM[(HI_U32 *)pu32tmp_14 + 8B]
	movw	r2, #1916	@ tmp206,
	ldr	r10, [r1, #12]	@ D.40272, MEM[(HI_U32 *)pu32tmp_14 + 12B]
	sub	r0, ip, #4	@ D.40273, D.40272,
	cmp	r0, r2	@ D.40273, tmp206
	bhi	.L425	@,
	sub	r0, r10, #4	@ D.40273, D.40272,
	movw	r2, #1084	@ tmp208,
	cmp	r0, r2	@ D.40273, tmp208
	bhi	.L425	@,
	add	r2, r8, r4	@ tmp220, tmp232, tmp233
	add	r1, r1, #16	@, pu32tmp,
	add	r6, r6, r2	@ tmp221, pSmInstArray, tmp220
	mov	r0, r7	@, SmID
	mov	r2, lr	@, D.40272
	ldrd	r8, [r6, #184]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts, tmp221,
	str	r10, [sp, #8]	@ D.40272,
	str	ip, [sp, #4]	@ D.40272,
	strd	r8, [sp, #16]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts,,
	str	lr, [sp]	@ D.40272,
	bl	DNR_PutYuv	@
	subs	r4, r0, #0	@ Ret,
	bne	.L431	@,
	ldr	r1, [r6, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r0, r5	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, r4	@ D.40269, Ret
	b	.L423	@
.L437:
	bl	vfmw_dprint_nothing	@
	b	.L435	@
.L433:
	mvn	r0, #0	@ D.40269,
	b	.L423	@
.L431:
	mvn	r0, #3	@ D.40269,
	b	.L423	@
.L439:
	.align	2
.L438:
	.word	.LANCHOR0
	.fnend
	.size	SM_CopyYuvToDnr, .-SM_CopyYuvToDnr
	.align	2
	.global	SM_ReadSegStream
	.type	SM_ReadSegStream, %function
SM_ReadSegStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L457	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp139, tmp137, SmID,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L446	@,
	ldr	r3, [r4, #56]	@ D.40281, pSmInstArray_9->Config.VidStd
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r7, r0	@ SmID, SmID
	sub	ip, r3, #4	@ D.40278, D.40281,
	sub	r2, r3, #8	@ D.40278, D.40281,
	cmp	r2, #6	@ D.40278,
	cmphi	ip, #1	@, D.40278,
	bls	.L442	@,
	cmp	r3, #1	@ D.40281,
	beq	.L455	@,
.L443:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r0, #192	@,,
	bl	GetStreamSeg	@
	cmp	r0, #0	@ ret
	bne	.L444	@,
	ldr	r5, .L457+4	@ tmp160,
	ldr	r3, [r5]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	beq	.L445	@,
	ldr	r3, .L457+8	@ tmp162,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, r3	@ SmID, save_seg_chan_num
	beq	.L456	@,
.L445:
	add	r4, r4, #176128	@ tmp172, pSmInstArray,
	mov	r3, #0	@ tmp173,
	mov	r0, r3	@ D.40279, tmp173
	str	r3, [r4, #3988]	@ tmp173, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L455:
	ldr	r3, [r4, #72]	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L443	@,
.L442:
	mov	r1, r6	@, pStreamSeg
	mov	r0, r7	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L443	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #6	@ ret,
.L444:
	add	r4, r4, #176128	@ tmp175, pSmInstArray,
	ldr	r3, [r4, #3988]	@ pSmInstArray_9->numReadSegFail, pSmInstArray_9->numReadSegFail
	add	r3, r3, #1	@ D.40282, pSmInstArray_9->numReadSegFail,
	str	r3, [r4, #3988]	@ D.40282, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L456:
	ldr	r0, .L457+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r5]	@, vfmw_save_seg_file
	ldr	r1, [r6, #12]	@, pStreamSeg_10(D)->LenInByte
	ldr	r0, [r6]	@, pStreamSeg_10(D)->VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L457+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L445	@
.L446:
	mvn	r0, #0	@ D.40279,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L458:
	.align	2
.L457:
	.word	.LANCHOR0
	.word	vfmw_save_seg_file
	.word	save_seg_chan_num
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
	ldr	r3, .L461	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L460	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L460:
	mvn	r0, #0	@,
	bx	lr	@
.L462:
	.align	2
.L461:
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
	ldr	r4, .L476	@ tmp138,
	add	r3, r4, r6, lsl #2	@ tmp123, tmp138, SmID,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrsb	r3, [r3, #3]	@ pSmInstArray_10->InsertNewSegFlag, pSmInstArray_10->InsertNewSegFlag
	mov	r5, r0	@ CurTime,
	cmp	r3, #1	@ pSmInstArray_10->InsertNewSegFlag,
	beq	.L466	@,
.L468:
	mov	r0, #0	@ D.40297,
.L467:
	ldr	r3, [r4, #160]	@ D.40296, LastEventTime
	ldr	r2, .L476	@ tmp128,
	cmp	r5, r3	@ CurTime, D.40296
	movls	r3, #1	@ D.40297,
	strls	r5, [r2, #160]	@ CurTime, LastEventTime
	bls	.L470	@,
	rsb	r3, r3, r5	@ Period, D.40296, CurTime
	cmp	r3, #1	@ Period,
	movls	r3, #0	@ D.40297,
	movhi	r3, #1	@ D.40297,
.L470:
	tst	r3, r0	@ D.40297, D.40297
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, .L476+4	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #160]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L466:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L468	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	clz	r0, r0	@ D.40297,
	mov	r0, r0, lsr #5	@ D.40297, D.40297,
	b	.L467	@
.L477:
	.align	2
.L476:
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
	ldr	r3, .L485	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r4, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L483	@,
	mov	r5, r1	@ FirstCalc, FirstCalc
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r4, r4, #176128	@ tmp123, pSmInstArray,
	mov	r2, r0	@ CurTime,
	beq	.L480	@,
	mov	r3, #0	@ tmp124,
	str	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	mov	r0, r3	@ D.40300, tmp124
	str	r3, [r4, #3952]	@ tmp124, pSmInstArray_6->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L480:
	ldr	r3, [r4, #3956]	@ D.40301, pSmInstArray_6->LastBlockTime
	cmp	r0, r3	@ CurTime, D.40301
	strls	r5, [r4, #3952]	@ FirstCalc, pSmInstArray_6->BlockTimeInMs
	rsbhi	r0, r3, r0	@ D.40301, D.40301, CurTime
	strls	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	strhi	r0, [r4, #3952]	@ D.40301, pSmInstArray_6->BlockTimeInMs
	movls	r0, r5	@ D.40300, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L483:
	mov	r0, r4	@ D.40300, pSmInstArray
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L486:
	.align	2
.L485:
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
	ldr	r2, .L490	@ tmp120,
	sub	ip, r1, #1	@ D.40305, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.40305,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.40304,
	streq	r1, [r2, #2412]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L491:
	.align	2
.L490:
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
	beq	.L499	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r0, #12]	@ pSegFilter_6(D)->ModeFlag, pSegFilter_6(D)->ModeFlag
	mul	r3, r3, r2	@ D.40316, UpMsgStepNum, SegNum
	cmp	ip, #1	@ pSegFilter_6(D)->ModeFlag,
	ldrb	ip, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	bfceq	ip, #0, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,,
	orrne	ip, ip, #1	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,
	strb	ip, [r1, #72]	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	mov	ip, #0	@ D.40313,
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrb	lr, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3, asl #2]	@ *_15, *_15
	mov	r3, r3, asl #2	@ D.40316, D.40316,
	add	r3, r3, #8	@ D.40320, D.40316,
	mov	r2, r2, lsr #31	@ D.40317, *_15,
	bfi	lr, r2, #1, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, D.40317,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp162, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3]	@ *_25, *_25
	mov	r2, r2, asr #16	@ D.40314, *_25,
	bfi	lr, r2, #2, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, D.40314,,
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
	mov	r0, ip	@, D.40313
	and	r3, r3, #7	@ tmp174, *_39,
	bfi	r2, r3, #7, #4	@ tmp175, tmp174,,
	strh	r2, [r1, #72]	@ movhi	@ tmp175,
	ldr	pc, [sp], #4	@
.L499:
	mvn	ip, #0	@ D.40313,
	mov	r0, ip	@, D.40313
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
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	ldr	r8, [r0, #32]	@ SegNum, pSegStreamFilter_15(D)->SegNum
	mov	r6, #0	@ tmp275,
	str	r6, [r2]	@ tmp275, *pExtraSrcBack_17(D)
	str	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r7, r1	@ pTransFormSeg, pTransFormSeg
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #8]	@ pSegStreamFilter_15(D)->ProtocolType, pSegStreamFilter_15(D)->ProtocolType
	cmp	r3, #2	@ pSegStreamFilter_15(D)->ProtocolType,
	beq	.L503	@,
	cmp	r8, r6	@ SegNum,
	ldrgt	r3, [sp, #48]	@ tmp374, UpMsgStepNum
	movgt	r9, r6	@ i, ivtmp.371
	movgt	r5, r3, asl #2	@ D.40342, tmp374,
	ble	.L507	@,
.L506:
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	mov	r1, r7	@ D.40345, pTransFormSeg
	ldr	r2, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r9, r9, #1	@ i, i,
	ldr	r3, [r3, r6]	@ *_185, *_185
	and	r2, r2, #-2147483648	@ D.40342, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r3, r3, #-2147483648	@ D.40342, *_185,
	orr	r3, r3, r2	@ D.40342, D.40342, D.40342
	str	r3, [r1, r6]!	@ D.40342, MEM[base: pTransFormSeg_92(D), index: ivtmp.371_218, offset: 0B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r3, r3, r6	@ tmp286, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.371
	add	r6, r6, r5	@ ivtmp.371, ivtmp.371, D.40342
	ldr	r3, [r3, #4]	@ D.40343, *_199
	str	r3, [r1, #4]	@ D.40343, MEM[base: _213, offset: 4B]
	bl	vfmw_dprint_nothing	@
	cmp	r9, r8	@ i, SegNum
	bne	.L506	@,
.L507:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r0, #0	@ tmp277,
	str	r0, [r4, #12]	@ tmp277, pSegStreamFilter_15(D)->ModeFlag
	str	r0, [r4, #16]	@ tmp277, pSegStreamFilter_15(D)->LastH263Num
	str	r8, [r3]	@ SegNum, *pSegNum_176(D)
.L539:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L503:
	ldr	r0, [r4, #20]	@, pSegStreamFilter_15(D)->SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L509	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_23 + 1B]
	ldrb	r1, [r0]	@ zero_extendqisi2	@ D.40343, *pTmpVirAddr_23
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_23 + 3B]
	ldrb	r5, [r0, #2]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_23 + 2B]
	mov	r2, r2, asl #16	@ D.40343, D.40343,
	orr	r2, r2, r1, asl #24	@ D.40343, D.40343, D.40343,
	ldr	r0, [r4, #28]	@, pSegStreamFilter_15(D)->SegBufRollAddr
	orr	r3, r2, r3	@ D.40343, D.40343, D.40343
	orr	r5, r3, r5, asl #8	@ D.40343, D.40343, D.40343,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L509	@,
	cmp	r8, #0	@ SegNum,
	mov	r2, r5, lsr #24	@ D.40342, D.40343,
	mov	r3, r5, lsr #16	@ D.40342, D.40343,
	strb	r5, [r0, #3]	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_41 + 3B]
	strb	r2, [r0]	@ D.40342, *pTmpVirAddr_41
	mov	r5, r5, lsr #8	@ D.40342, D.40343,
	strb	r3, [r0, #1]	@ D.40342, MEM[(HI_U8 *)pTmpVirAddr_41 + 1B]
	strb	r5, [r0, #2]	@ D.40342, MEM[(HI_U8 *)pTmpVirAddr_41 + 2B]
	ble	.L510	@,
	ldr	r2, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	ldr	r5, [r2]	@ *_215, *_215
	and	r3, r3, #-2147483648	@ D.40342, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r5, r5, #-2147483648	@ D.40342, *_215,
	orrs	r5, r5, r3	@ TmpPhyAddr, D.40342, D.40342
	beq	.L509	@,
	ldr	r3, [sp, #48]	@ tmp375, UpMsgStepNum
	add	fp, r7, #4	@ ivtmp.385, ivtmp.383,
	mov	r9, #4	@ ivtmp.384,
	mov	r10, #1	@ ivtmp.380,
	mov	r6, r3, asl #2	@ D.40342, tmp375,
	b	.L511	@
.L542:
	mov	r3, #1	@ tmp336,
	str	r3, [r4, #12]	@ tmp336, pSegStreamFilter_15(D)->ModeFlag
	mov	r3, #0	@ tmp337,
	str	r3, [r4, #16]	@ tmp337, pSegStreamFilter_15(D)->LastH263Num
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.40343,* ivtmp.384
	str	r3, [r7, #4]	@ D.40343,
.L513:
	cmp	r10, r8	@ ivtmp.380, SegNum
	beq	.L541	@,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r10, r10, #1	@ ivtmp.380, ivtmp.380,
	ldr	r5, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r7, r7, r6	@ ivtmp.383, ivtmp.383, D.40342
	add	r3, r3, r6	@ tmp312, pSegStreamFilter_15(D)->pScdUpMsg, D.40342
	add	fp, fp, r6	@ ivtmp.385, ivtmp.385, D.40342
	add	r3, r3, r9	@ tmp313, tmp312, ivtmp.384
	and	r2, r5, #-2147483648	@ D.40342, pSegStreamFilter_15(D)->SegBufPhyAddr,
	add	r9, r9, r6	@ ivtmp.384, ivtmp.384, D.40342
	ldr	r5, [r3, #-4]	@ *_58, *_58
	bic	r5, r5, #-2147483648	@ D.40342, *_58,
	orrs	r5, r5, r2	@ TmpPhyAddr, D.40342, D.40342
	beq	.L509	@,
.L511:
	mov	r0, r5	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L509	@,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_68 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.40343, *pTmpVirAddr_68
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_68 + 3B]
	mov	r1, r1, asl #16	@ D.40343, D.40343,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.40343, MEM[(HI_U8 *)pTmpVirAddr_68 + 2B]
	orr	r3, r1, r3, asl #24	@ D.40343, D.40343, D.40343,
	orr	r3, r3, r2	@ D.40343, D.40343, D.40343
	movw	r2, #438	@ tmp376,
	orr	r3, r3, r0, asl #8	@ Data32, D.40343, D.40343,
	cmp	r3, r2	@ Data32, tmp376
	cmpne	r3, #288	@, Data32,
	moveq	r2, #1	@ tmp335,
	movne	r2, #0	@ tmp335,
	beq	.L542	@,
	bic	r3, r3, #1020	@ D.40342, Data32,
	bic	r3, r3, #3	@ D.40342, D.40342,
	cmp	r3, #32768	@ D.40342,
	beq	.L543	@,
.L514:
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.40343,* ivtmp.384
	str	r3, [r7, #4]	@ D.40343,
	b	.L513	@
.L543:
	ldr	r3, [r4, #12]	@ pSegStreamFilter_15(D)->ModeFlag, pSegStreamFilter_15(D)->ModeFlag
	cmp	r3, #1	@ pSegStreamFilter_15(D)->ModeFlag,
	beq	.L544	@,
.L517:
	mov	r3, #2	@ tmp348,
	str	r3, [r4, #12]	@ tmp348, pSegStreamFilter_15(D)->ModeFlag
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.40343,* ivtmp.384
	str	r3, [r7, #4]	@ D.40343,
	b	.L513	@
.L509:
	mvn	r0, #6	@ D.40344,
	b	.L539	@
.L544:
	ldr	r3, [r4, #16]	@ pSegStreamFilter_15(D)->LastH263Num, pSegStreamFilter_15(D)->LastH263Num
	add	r3, r3, #1	@ D.40343, pSegStreamFilter_15(D)->LastH263Num,
	str	r3, [r4, #16]	@ D.40343, pSegStreamFilter_15(D)->LastH263Num
	cmp	r3, #12	@ D.40343,
	ble	.L514	@,
	ldr	r3, .L545	@ tmp377,
	ldr	r3, [r3]	@ D.40349, g_event_report
	cmp	r3, #0	@ D.40349,
	beq	.L517	@,
	ldr	r0, .L545+4	@ tmp378,
	mov	r1, #102	@,
	ldr	r0, [r0, #140]	@, s_SmIIS.ThisInstID
	blx	r3	@ D.40349
	b	.L517	@
.L541:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	cmp	r10, #0	@ ivtmp.380,
	movgt	r4, #0	@ i,
	str	r10, [r3]	@ ivtmp.380, *pSegNum_176(D)
	ble	.L521	@,
.L520:
	add	r4, r4, #1	@ i, i,
	bl	vfmw_dprint_nothing	@
	cmp	r4, r10	@ i, ivtmp.380
	bne	.L520	@,
.L521:
	mov	r0, #0	@ D.40344,
	b	.L539	@
.L510:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r0, r6	@ D.40344, tmp275
	str	r6, [r3]	@ tmp275, *pSegNum_176(D)
	b	.L539	@
.L546:
	.align	2
.L545:
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
	beq	.L549	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L551	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L551	@,
	ldr	r3, [r0, #12]	@ pSegPacket_2(D)->LenInByte, pSegPacket_2(D)->LenInByte
	cmp	r3, r1	@ pSegPacket_2(D)->LenInByte, SegFreeBufLen
	mvnhi	r0, #6	@ D.40353,
	movls	r0, #0	@ D.40353,
	bx	lr	@
.L551:
	mvn	r0, #6	@ D.40353,
	bx	lr	@
.L549:
	mvn	r0, #0	@ D.40353,
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
	ldrd	r0, [r4, #24]	@ D.40359, pSegPacket,
	ldrd	r2, [r5]	@ *pLastPts_25(D), *pLastPts_25(D)
	cmp	r3, r1	@ *pLastPts_25(D), D.40359
	cmpeq	r2, r0	@ *pLastPts_25(D), D.40359
	beq	.L557	@,
	strd	r0, [r5]	@ D.40359, *pLastPts_25(D)
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L557:
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
	bne	.L560	@,
	ldr	r3, .L565	@ tmp116,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L561	@,
	add	r2, r3, #163840	@ tmp118, pSmInstArray,
	ldr	r0, [r2, #2412]	@ D.40362, pSmInstArray_4->Mode
	cmp	r0, #0	@ D.40362,
	ldrne	r0, [r3, #84]	@ pSmInstArray_4->Config.DisContinueRawPacketFlag, pSmInstArray_4->Config.DisContinueRawPacketFlag
	subne	r0, r0, #1	@ D.40362, pSmInstArray_4->Config.DisContinueRawPacketFlag,
	clzne	r0, r0	@ D.40362, D.40362
	movne	r0, r0, lsr #5	@ D.40362, D.40362,
	bx	lr	@
.L560:
	mov	r0, #0	@ D.40362,
	bx	lr	@
.L561:
	mov	r0, r3	@ D.40362, pSmInstArray
	bx	lr	@
.L566:
	.align	2
.L565:
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
	bne	.L571	@,
	ldr	r3, .L575	@ tmp119,
	ldr	r2, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp123, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp123, tmp123,
	orrs	r3, r3, r1, lsr #31	@, tmp134, tmp123, Flag,
	bne	.L574	@,
	add	r3, r2, #163840	@ tmp129, pSmInstArray,
	mov	r0, #1	@ D.40367,
	ldr	r3, [r3, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	cmp	r3, #0	@ pSmInstArray_5->Mode,
	strne	r1, [r2, #84]	@ Flag, pSmInstArray_5->Config.DisContinueRawPacketFlag
	streq	r3, [r2, #84]	@ pSmInstArray_5->Mode, pSmInstArray_5->Config.DisContinueRawPacketFlag
	bx	lr	@
.L571:
	mov	r0, #0	@ D.40367,
	bx	lr	@
.L574:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ InstID, InstID
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.40367, InstID
	ldmfd	sp!, {r4, pc}	@
.L576:
	.align	2
.L575:
	.word	.LANCHOR0
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
	beq	.L589	@,
	mov	r0, #0	@ D.40372,
	bx	lr	@
.L589:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r3	@ InstID, InstID
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	moveq	r0, #0	@ D.40372,
	beq	.L579	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.40374, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.40374,
	movlt	r0, #1	@ D.40372,
	blt	.L579	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	movgt	r0, r4	@ D.40372, InstID
	bgt	.L579	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.40372,
	movle	r0, #1	@ D.40372,
.L579:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r7, r0, #28	@ tmp159, InstID,
	ldr	r5, .L613	@ tmp158,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r0	@ InstID, InstID
	mov	r9, r1	@ pRawPacket, pRawPacket
	add	r8, r5, r7, lsl #2	@ tmp127, tmp158, tmp159,
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp160,,
	ldr	r4, [r8, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L612	@,
	mov	r0, r6	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r6, r0, #0	@ pStreamIntf,
	beq	.L596	@,
	add	r0, sp, #4	@ tmp161,,
	mov	r2, #12	@,
	mov	r1, r6	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r6, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L594	@,
	ldr	r0, .L613+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r9	@, pRawPacket
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r6, r0	@ ret,
	ldr	r0, .L613+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ret,
	beq	.L595	@,
.L594:
	add	r5, r5, r7, lsl #2	@ tmp155, tmp158, tmp159,
	ldr	r3, [r5, #16]	@ tmp157, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp157,
	beq	.L596	@,
.L612:
	mvn	r0, #6	@ D.40378,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L595:
	ldr	r3, [r8, #16]	@ tmp152, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp152,
	beq	.L596	@,
	add	r4, r4, #73728	@ tmp141, pSmInstArray,
	ldr	r2, [r9, #8]	@ pRawPacket_19(D)->Length, pRawPacket_19(D)->Length
	mov	r0, r6	@ D.40378, ret
	ldr	r3, [r4, #188]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.40380, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_19(D)->Length
	str	r3, [r4, #188]	@ D.40380, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L596:
	bl	vfmw_dprint_nothing	@
	b	.L612	@
.L614:
	.align	2
.L613:
	.word	.LANCHOR0
	.word	g_TaskLock
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
	.pad #76
	sub	sp, sp, #76	@,,
	ldr	r9, .L698	@ tmp349,
	mov	r8, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r9, r0, lsl #2	@ tmp195, tmp349, InstID,
	mov	r0, sp	@,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L615	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_17->Config.VidStd,
	beq	.L615	@,
	ldr	r3, [r4, #84]	@ D.40388, pSmInstArray_17->Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.40388,
	beq	.L615	@,
	cmp	r3, #2	@ D.40388,
	beq	.L688	@,
.L617:
	add	r10, r4, #73728	@ D.40395, pSmInstArray,
	mvn	r6, #0	@ tmp356,
	add	r10, r10, #192	@ D.40395, D.40395,
	mov	r7, #0	@,
.L629:
	ldr	r3, [r4, #92]	@ pSmInstArray_17->Config.ScdLowBufEnable, pSmInstArray_17->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_17->Config.ScdLowBufEnable,
	beq	.L634	@,
	cmp	r10, #0	@ D.40395,
	beq	.L689	@,
.L633:
	mov	r0, r8	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L615	@,
.L634:
	cmp	r8, #0	@ InstID,
	bne	.L686	@,
	ldr	r3, [r9, #128]	@ D.40396, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40396,
	beq	.L686	@,
	add	r2, r3, #73728	@ tmp267, D.40396,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_84 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_84 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_84 + 168B].History, MEM[(struct RAW_ARRAY_S *)_84 + 168B].History
	add	r3, r3, #1	@ D.40388, MEM[(struct RAW_ARRAY_S *)_84 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp271, D.40388,
	mov	r2, r2, lsr #22	@ tmp272, tmp271,
	add	r3, r3, r2	@ tmp273, D.40388, tmp272
	ubfx	r3, r3, #0, #10	@ tmp274, tmp273,,
	rsb	r3, r2, r3	@ D.40388, tmp272, tmp274
	cmp	r3, r1	@ D.40388, MEM[(struct RAW_ARRAY_S *)_84 + 168B].History
	beq	.L686	@,
	mov	r1, sp	@,
	mov	r0, r8	@, InstID
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L615	@,
	ldr	r3, [r4, #80]	@ D.40389, pSmInstArray_17->Config.LastRawDisContinueCount
	cmn	r3, #1	@ D.40389,
	beq	.L636	@,
	ldr	r2, [sp, #48]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	r3, r2	@ D.40389, RawPacket.discontinue_count
	beq	.L638	@,
	ldr	r5, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	bic	r5, r5, #2	@ D.40387, pSmInstArray_17->Config.VidStd,
	cmp	r5, #1	@ D.40387,
	beq	.L690	@,
.L638:
	add	r5, r4, #176128	@ tmp291, pSmInstArray,
	ldr	r2, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.40388, pSmInstArray_17->TotalRawSize, RawPacket.Length
	str	r3, [r5, #3976]	@ D.40388, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #3980]	@ D.40389, pSmInstArray_17->LastStatTime
	cmp	r1, #0	@ D.40389,
	mov	fp, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L640	@,
	rsb	r1, r1, r0	@ TimePeriod, D.40389, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L640	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp312,
	mov	r2, #0	@ tmp316,
	str	fp, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp316, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.40389, tmp312,
	mov	r0, r0, lsr #10	@ D.40389, D.40389,
	str	r0, [r5, #3984]	@ D.40389, pSmInstArray_17->BitRate
.L640:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r2, [sp, #16]	@ RawPacket.Pts,,
	cmp	r3, r7	@ RawPacket.Pts,
	cmpeq	r2, r6	@ RawPacket.Pts, tmp356
	beq	.L691	@,
.L641:
	mov	r1, sp	@,
	mov	r0, #0	@,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L686	@,
	mov	r3, #1	@ tmp323,
	strb	r3, [r4, #4]	@ tmp323, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L692	@,
.L643:
	ldr	r3, .L698+4	@ tmp331,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r3, #0	@ save_str_chan_num,
	bne	.L629	@,
	ldr	r5, .L698+8	@ tmp350,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L629	@,
	ldr	fp, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L698+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, fp, #4	@ D.40389, eStd,
	cmp	r3, #1	@ D.40389,
	bls	.L646	@,
	cmp	fp, #17	@ eStd,
	bne	.L693	@,
.L646:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, sp, #8	@,,
	bl	klib_fwrite	@
.L647:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldmib	sp, {r0, r1}	@,,
	bl	klib_fwrite	@
	ldr	r0, .L698+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L629	@
.L690:
	mov	r1, sp	@,
	mov	r2, #72	@,
	add	r0, r4, #96	@, pSmInstArray,
	bl	memcpy	@
	str	r5, [r4, #84]	@ D.40387, pSmInstArray_17->Config.DisContinueRawPacketFlag
.L686:
	bl	vfmw_dprint_nothing	@
.L615:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L636:
	ldr	r3, [sp, #48]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r3, [r4, #80]	@ RawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L638	@
.L692:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L698+16	@ tmp328,
	ldr	r3, [r9, #164]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, .L698	@ tmp325,
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.40389, last_rec_pos_time, ThisTime
	cmp	r3, r2	@ D.40389, g_TraceBsPeriod
	strhi	r0, [r1, #164]	@ ThisTime, last_rec_pos_time
	b	.L643	@
.L691:
	mvn	r2, #0	@ tmp321,
	mvn	r3, #0	@,
	strd	r2, [sp, #16]	@ tmp321,,
	b	.L641	@
.L689:
	bl	vfmw_dprint_nothing	@
	b	.L633	@
.L693:
	sub	r3, fp, #8	@ D.40389, eStd,
	cmp	r3, #6	@ D.40389,
	bls	.L646	@,
	cmp	fp, #1	@ eStd,
	bne	.L647	@,
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L646	@,
	b	.L647	@
.L688:
	add	r5, r4, #176128	@ tmp200, pSmInstArray,
	ldr	r2, [r4, #104]	@ pSmInstArray_17->Config.DisContinueRawPacket.Length, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.40388, pSmInstArray_17->TotalRawSize, pSmInstArray_17->Config.DisContinueRawPacket.Length
	str	r3, [r5, #3976]	@ D.40388, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, #3980]	@ D.40389, pSmInstArray_17->LastStatTime
	cmp	r3, #0	@ D.40389,
	mov	r6, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L619	@,
	rsb	r1, r3, r0	@ TimePeriod, D.40389, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L619	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp221,
	mov	r2, #0	@ tmp225,
	str	r6, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp225, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.40389, tmp221,
	mov	r3, r0, lsr #10	@ D.40389, D.40389,
	str	r3, [r5, #3984]	@ D.40389, pSmInstArray_17->BitRate
.L619:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r2, [r4, #112]	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, pSmInstArray,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp228,
	cmp	r3, r1	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts,
	cmpeq	r2, r0	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, tmp228
	beq	.L694	@,
.L620:
	add	r1, r4, #96	@, pSmInstArray,
	mov	r0, r8	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L686	@,
	mov	r3, #1	@ tmp232,
	strb	r3, [r4, #4]	@ tmp232, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L695	@,
.L624:
	ldr	r3, .L698+4	@ tmp244,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r8, r3	@ InstID, save_str_chan_num
	beq	.L696	@,
.L626:
	ldr	r3, [r4, #144]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count
	mov	r2, #0	@ tmp261,
	str	r2, [r4, #84]	@ tmp261, pSmInstArray_17->Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L617	@
.L694:
	mvn	r2, #0	@ tmp230,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp230, pSmInstArray,
	b	.L620	@
.L695:
	bl	OSAL_GetTimeInMs	@
	add	r2, r9, r8, lsl #2	@ tmp235, tmp349, InstID,
	ldr	r1, .L698+16	@ tmp239,
	ldr	r3, [r2, #164]	@ tmp238, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.40389, tmp238, ThisTime
	cmp	r3, r1	@ D.40389, g_TraceBsPeriod
	strhi	r0, [r2, #164]	@ ThisTime, last_rec_pos_time
	b	.L624	@
.L696:
	ldr	r5, .L698+8	@ tmp350,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L626	@,
	ldr	r6, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L698+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r6, #4	@ D.40389, eStd,
	cmp	r3, #1	@ D.40389,
	bls	.L627	@,
	cmp	r6, #17	@ eStd,
	beq	.L627	@,
	sub	r3, r6, #8	@ D.40389, eStd,
	cmp	r3, #6	@ D.40389,
	bls	.L627	@,
	cmp	r6, #1	@ eStd,
	beq	.L697	@,
.L628:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldr	r1, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r0, [r4, #100]	@, pSmInstArray_17->Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L698+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L626	@
.L697:
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L628	@,
.L627:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, r4, #104	@, pSmInstArray,
	bl	klib_fwrite	@
	b	.L628	@
.L699:
	.align	2
.L698:
	.word	.LANCHOR0
	.word	save_str_chan_num
	.word	vfmw_save_str_file
	.word	g_TaskLock
	.word	g_TraceBsPeriod
	.fnend
	.size	FillRawData, .-FillRawData
	.align	2
	.global	ReleaseRawStreamData
	.type	ReleaseRawStreamData, %function
ReleaseRawStreamData:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pRawPacket, pRawPacket
	mov	r5, r0	@ InstID, InstID
	bl	VCTRL_GetStreamInterface	@
	mov	r1, #12	@,
	mov	r4, r0	@ pStreamIntf,
	add	r0, sp, #4	@ tmp151,,
	bl	__memzero	@
	cmp	r4, #0	@ pStreamIntf,
	beq	.L706	@,
	add	r0, sp, #4	@ tmp152,,
	mov	r2, #12	@,
	mov	r1, r4	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	beq	.L707	@,
	add	r5, r5, #28	@ tmp150, InstID,
	ldr	r6, .L715	@ tmp149,
	add	r3, r6, r5, lsl #2	@ tmp133, tmp149, tmp150,
	ldr	r3, [r3, #16]	@ tmp135, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #92]	@ _16->Config.ScdLowBufEnable, _16->Config.ScdLowBufEnable
	cmp	r3, #0	@ _16->Config.ScdLowBufEnable,
	bne	.L714	@,
	ldr	r0, .L715+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L715+4	@,
	bl	OSAL_SpinLockIRQ	@
.L705:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L703:
	add	r5, r6, r5, lsl #2	@ tmp145, tmp149, tmp150,
	ldr	r3, [r5, #16]	@ tmp147, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp147,
	beq	.L706	@,
	mov	r0, r4	@ D.40403, ret
.L702:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L714:
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L705	@
.L707:
	ldr	r6, .L715	@ tmp149,
	add	r5, r5, #28	@ tmp150, InstID,
	mvn	r4, #6	@ ret,
	b	.L703	@
.L706:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #6	@ D.40403,
	b	.L702	@
.L716:
	.align	2
.L715:
	.word	.LANCHOR0
	.word	g_TaskLock
	.fnend
	.size	ReleaseRawStreamData, .-ReleaseRawStreamData
	.align	2
	.global	DeleteRawPacketInBuffer
	.type	DeleteRawPacketInBuffer, %function
DeleteRawPacketInBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bne	.L733	@,
	ldr	r3, .L735	@ tmp128,
	ldr	r8, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r8, #0	@ pSmInstArray,
	beq	.L729	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L734	@,
.L720:
	adds	r7, r8, #168	@ tmp152, pSmInstArray,
	beq	.L729	@,
	add	r8, r8, #73728	@ tmp153, pSmInstArray,
	ldr	r6, [r8, #168]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].Head
	ldr	r4, [r8, #176]	@ D.40414, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	cmp	r6, r4	@ RawHead, D.40414
	addlt	r6, r6, #1024	@ D.40415, RawHead,
	rsb	r6, r4, r6	@ DelNum, D.40414, D.40415
	cmp	r6, #0	@ DelNum,
	beq	.L729	@,
	mov	r5, #0	@ i,
.L724:
	bl	vfmw_dprint_nothing	@
	mov	r1, r4, asl #6	@ tmp141, j,
	add	r1, r1, r4, lsl #3	@ tmp142, tmp141, j,
	add	r5, r5, #1	@ i, i,
	add	r1, r7, r1	@, tmp152, tmp142
	mov	r0, #0	@,
	bl	ReleaseRawStreamData	@
	cmp	r5, r6	@ i, DelNum
	add	r4, r4, #1	@ D.40417, j,
	ubfx	r4, r4, #0, #10	@ j, D.40417,,
	bne	.L724	@,
	ldr	r4, [r8, #176]	@ D.40414, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	add	r4, r5, r4	@ D.40415, i, D.40414
	cmp	r4, #1024	@ D.40415,
	strlt	r4, [r8, #176]	@ D.40415, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	subge	r4, r4, #1024	@ D.40415, D.40415,
	strge	r4, [r8, #176]	@ D.40415, MEM[(struct RAW_ARRAY_S *)pSmInstArray_10 + 168B].History
	movlt	r0, #0	@ D.40414,
	movge	r0, #0	@ D.40414,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L734:
	add	r3, r8, #163840	@ tmp130, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_10->Mode, pSmInstArray_10->Mode
	cmp	r3, #0	@ pSmInstArray_10->Mode,
	bne	.L720	@,
.L729:
	mvn	r0, #0	@ D.40414,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L733:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40414,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L736:
	.align	2
.L735:
	.word	.LANCHOR0
	.fnend
	.size	DeleteRawPacketInBuffer, .-DeleteRawPacketInBuffer
	.align	2
	.global	SM_SeekPts
	.type	SM_SeekPts, %function
SM_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L847	@ tmp241,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp243, tmp241, ChanID,
	.pad #60
	sub	sp, sp, #60	@,,
	ldr	r10, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r10, #0	@ pSmInstArray,
	beq	.L740	@,
	add	fp, r10, #73728	@ tmp690, pSmInstArray,
	adds	r7, fp, #192	@ pStreamSegArray, tmp690,
	beq	.L740	@,
	ldrd	r2, [r1]	@ pts, *pArgs_35(D)
	add	r5, r10, #163840	@ tmp691, pSmInstArray,
	ldrd	r8, [r1, #16]	@ RawNum, pArgs,
	ldr	r4, [r5, #2248]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	strd	r2, [sp]	@ pts, %sfp
	ldrd	r2, [r1, #8]	@ gap, pArgs,
	ldr	ip, [r5, #2252]	@ D.40424, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	strd	r8, [sp, #16]	@ RawNum,,
	movw	r9, #36409	@ tmp703,
	strd	r2, [sp, #40]	@ gap,,
	movt	r9, 14563	@ tmp703,
	ldr	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	str	r1, [sp, #24]	@ pArgs, %sfp
	cmp	r3, #1	@ PushRawOver,
	str	r0, [sp, #12]	@ ChanID, %sfp
	str	r3, [sp, #32]	@ PushRawOver, %sfp
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r3, #3	@ tmp250,
	str	r10, [sp, #28]	@ pSmInstArray, %sfp
	streq	r3, [r5, #2304]	@ tmp250, pSmInstArray_33->SmPushRaw.PushRawOver
.L742:
	mov	r6, r4, asl #4	@ tmp688, i,
	mov	r8, r4, asl #6	@ tmp689, i,
	cmp	r4, ip	@ i, D.40424
	add	r3, r6, r8	@ tmp325, tmp688, tmp689
	mov	r1, r4	@, i
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp326, tmp690, tmp325
	beq	.L831	@,
	ldrsb	r2, [r3, #204]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState
	cmp	r2, #1	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState,
	bne	.L746	@,
	ldrd	r2, [r3, #232]	@ D.40425, tmp326,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp765,
	cmp	r3, r1	@ D.40425,
	cmpeq	r2, r0	@ D.40425, tmp765
	addeq	r1, r4, #1	@ D.40429, i,
	beq	.L821	@,
	ldrd	r0, [sp]	@ pts, %sfp
	add	lr, r4, #1	@ D.40429, i,
	cmp	r1, r3	@ pts, D.40425
	mov	r10, lr, asr #31	@ tmp353, D.40429,
	cmpeq	r0, r2	@ pts, D.40425
	smull	r0, r1, lr, r9	@ tmp350, D.40429, tmp703
	bls	.L749	@,
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	rsb	r4, r10, r1, asr #8	@ i, tmp353,,
	mov	r3, r4, asl #10	@ tmp356, i,
	add	r4, r3, r4, lsl #7	@ tmp357, tmp356, i,
	rsb	r4, r4, lr	@ i, tmp357, D.40429
	b	.L742	@
.L746:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r5, #2252]	@ D.40424, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	add	r1, r4, #1	@ D.40429, i,
.L821:
	smull	r2, r3, r1, r9	@ tmp505, D.40429, tmp703
	mov	r4, r1, asr #31	@ tmp508, D.40429,
	rsb	r4, r4, r3, asr #8	@ i, tmp508,,
	mov	r3, r4, asl #10	@ tmp511, i,
	add	r4, r3, r4, lsl #7	@ tmp512, tmp511, i,
	rsb	r4, r4, r1	@ i, tmp512, D.40429
	b	.L742	@
.L749:
	beq	.L832	@,
	bcs	.L742	@,
	ldr	r0, [r5, #2256]	@ D.40424, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp771,
	mov	r3, r0, asl #6	@ tmp426, D.40424,
	add	r3, r3, r0, lsl #4	@ tmp427, tmp426, D.40424,
	add	r3, fp, r3	@ tmp428, tmp690, tmp427
	ldrd	r2, [r3, #232]	@ D.40430, tmp428,
	cmp	r3, r9	@ D.40430,
	cmpeq	r2, r8	@ D.40430, tmp771
	streq	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r0, r4	@ D.40424, i
	beq	.L754	@,
	ldrd	r8, [sp]	@ pts, %sfp
	cmp	r9, r3	@ pts, D.40430
	cmpeq	r8, r2	@ pts, D.40430
	bhi	.L833	@,
.L754:
	ldr	r6, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r0, r6	@ D.40424, j
	beq	.L755	@,
	movw	r4, #36409	@ tmp702,
	mov	r8, #2	@ tmp701,
	movt	r4, 14563	@ tmp702,
.L756:
	mov	r3, r6, asl #6	@ tmp448, j,
	mov	r1, r6	@, j
	add	r3, r3, r6, lsl #4	@ tmp449, tmp448, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp450, tmp690, tmp449
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte
	strb	r8, [r3, #204]	@ tmp701, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].SegState
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.40428, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.40429, D.40428
	str	r2, [r5, #2284]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.40429, D.40429
	str	r3, [r5, #2288]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r2, r6, #1	@ D.40429, j,
	ldr	ip, [r5, #2256]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	smull	r0, r1, r2, r4	@ tmp484, D.40429, tmp702
	mov	r6, r2, asr #31	@ tmp487, D.40429,
	rsb	r6, r6, r1, asr #8	@ j, tmp487,,
	mov	r3, r6, asl #10	@ tmp490, j,
	add	r6, r3, r6, lsl #7	@ tmp491, tmp490, j,
	rsb	r6, r6, r2	@ j, tmp491, D.40429
	cmp	ip, r6	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, j
	bne	.L756	@,
.L755:
	mov	r3, r6, asl #6	@ tmp501, j,
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	add	r6, r3, r6, lsl #4	@ tmp502, tmp501, j,
	mov	r0, #0	@ D.40424,
	add	fp, fp, r6	@ tmp503, tmp690, tmp502
	ldrd	r2, [fp, #232]	@ D.40430, tmp503,
	strd	r2, [r1]	@ D.40430, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L831:
	ldr	r8, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	ldr	r10, [sp, #28]	@ pSmInstArray, %sfp
	cmp	r8, r4	@ j, i
	beq	.L744	@,
	movw	r4, #36409	@ tmp698,
	mov	r6, #2	@ tmp697,
	movt	r4, 14563	@ tmp698,
.L745:
	mov	r3, r8, asl #6	@ tmp271, j,
	mov	r1, r8	@, j
	add	r3, r3, r8, lsl #4	@ tmp272, tmp271, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp273, tmp690, tmp272
	strb	r6, [r3, #204]	@ tmp697, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.40428, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.40429, D.40428
	str	r2, [r5, #2284]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.40429, D.40429
	str	r3, [r5, #2288]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r8, #1	@ D.40429, j,
	ldr	r0, [r5, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	smull	r2, r3, r1, r4	@ tmp307, D.40429, tmp698
	mov	r8, r1, asr #31	@ tmp310, D.40429,
	rsb	r8, r8, r3, asr #8	@ j, tmp310,,
	mov	r3, r8, asl #10	@ tmp313, j,
	add	r8, r3, r8, lsl #7	@ tmp314, tmp313, j,
	rsb	r8, r8, r1	@ j, tmp314, D.40429
	cmp	r0, r8	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, j
	bne	.L745	@,
.L744:
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	adds	r3, r10, #168	@ pRawPacketArray, pSmInstArray,
	str	r3, [sp, #36]	@ pRawPacketArray, %sfp
	beq	.L740	@,
	ldr	r9, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r8, [fp, #172]	@ D.40429, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	cmp	r9, r8	@ i, D.40429
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	addgt	r3, r8, #1024	@ D.40429, D.40429,
	rsble	r3, r9, r8	@ D.40424, i, D.40429
	rsbgt	r3, r9, r3	@ D.40424, i, D.40429
	cmp	r9, r8	@ i, D.40429
	str	r3, [sp, #48]	@ D.40424, %sfp
	beq	.L822	@,
	str	r5, [sp, #52]	@ tmp691, %sfp
	mvn	r6, #0	@ tmp696,
	mvn	r7, #0	@,
	mov	ip, r9	@ i, i
	str	r9, [sp, #28]	@ i, %sfp
	ldrd	r4, [sp]	@ pts, %sfp
	b	.L761	@
.L836:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r9, lsr #22	@ tmp544, tmp543,
	add	r3, lr, ip	@ tmp545, D.40429, tmp544
	ubfx	r3, r3, #0, #10	@ tmp546, tmp545,,
	rsb	ip, ip, r3	@ i, tmp544, tmp546
.L766:
	cmp	r8, ip	@ D.40429, i
	beq	.L834	@,
.L761:
	mov	r3, ip, asl #6	@ tmp531, i,
	mvn	r0, #0	@ tmp535,
	add	r3, r3, ip, lsl #3	@ tmp532, tmp531, i,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp533, pSmInstArray, tmp532
	ldrd	r2, [r3, #184]	@ D.40430, tmp533,
	cmp	r3, r7	@ D.40430,
	cmpeq	r2, r6	@ D.40430, tmp696
	beq	.L835	@,
	cmp	r5, r3	@ pts, D.40430
	add	lr, ip, #1	@ D.40429, i,
	cmpeq	r4, r2	@ pts, D.40430
	mov	r9, lr, asr #31	@ tmp543, D.40429,
	bhi	.L836	@,
	beq	.L837	@,
	bcs	.L766	@,
	ldr	lr, [fp, #176]	@ D.40429, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r9, [sp, #28]	@ i, %sfp
	strd	r2, [sp, #16]	@ D.40430,,
	mov	r4, lr, asl #6	@ tmp575, D.40429,
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	add	r4, r4, lr, lsl #3	@ tmp576, tmp575, D.40429,
	add	r4, r10, r4	@ tmp577, pSmInstArray, tmp576
	ldrd	r6, [r4, #184]	@ D.40430, tmp577,
	cmp	r7, r1	@ D.40430,
	cmpeq	r6, r0	@ D.40430, tmp535
	beq	.L838	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r7	@ pts, D.40430
	cmpeq	r0, r6	@ pts, D.40430
	bls	.L774	@,
	subs	r0, r0, r6	@ D.40430, D.40430, D.40430
	ldrd	r2, [sp, #40]	@ gap,,
	sbc	r1, r1, r7	@ D.40430, D.40430, D.40430
	cmp	r3, r1	@ gap, D.40430
	cmpeq	r2, r0	@ gap, D.40430
	bcc	.L839	@,
.L774:
	cmp	r9, lr	@ i, D.40429
	addgt	lr, lr, #1024	@ D.40429, D.40429,
	rsb	r1, r9, lr	@ DelNum, i, D.40429
	cmp	r1, #0	@ DelNum,
	beq	.L777	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp595,
	movne	r4, #0	@ tmp595,
	beq	.L777	@,
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.40430, *pArgs_35(D)
.L830:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, r4	@, tmp595
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.40424, tmp595
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L835:
	add	r3, ip, #1	@ D.40429, i,
	mov	ip, r3, asr #31	@ tmp536, D.40429,
	mov	ip, ip, lsr #22	@ tmp537, tmp536,
	add	r3, r3, ip	@ tmp538, D.40429, tmp537
	ubfx	r3, r3, #0, #10	@ tmp539, tmp538,,
	rsb	ip, ip, r3	@ i, tmp537, tmp539
	cmp	r8, ip	@ D.40429, i
	bne	.L761	@,
.L834:
	ldr	r9, [sp, #28]	@ i, %sfp
	cmp	r9, r8	@ i, D.40429
	addgt	r8, r8, #1024	@ D.40429, D.40429,
.L822:
	rsb	r1, r9, r8	@ DelNum, i, D.40429
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	cmp	r1, #0	@ DelNum,
	bne	.L840	@,
.L764:
	ldr	r2, [sp, #48]	@ RawNumInVfmw, %sfp
	ldrd	r0, [sp, #16]	@ RawNum,,
	mov	r3, r2, asr #31	@ RawNumInVfmw, RawNumInVfmw,
	cmp	r1, r3	@ RawNum, RawNumInVfmw
	cmpeq	r0, r2	@ RawNum, RawNumInVfmw
	bls	.L841	@,
	ldrd	r0, [sp, #16]	@ RawNumToSeek,,
	subs	r0, r0, r2	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	sbc	r1, r1, r3	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	mov	r2, r0	@ RawNumToSeek, RawNumToSeek
	movw	r0, #1023	@ tmp609,
	mov	r3, r1	@ RawNumToSeek, RawNumToSeek
	and	r0, r0, r2	@ D.40430, tmp609, RawNumToSeek
	mov	r1, #0	@,
	and	r1, r1, r3	@ D.40430,, RawNumToSeek
	orrs	r1, r0, r1	@ tmp759, D.40430
	mov	r2, r2, lsr #10	@ D.40430, RawNumToSeek,
	orrne	r2, r2, r3, asl #22	@ D.40430, D.40430, RawNumToSeek,
	orreq	r3, r2, r3, asl #22	@ SeekTime, D.40430, RawNumToSeek,
	addne	r3, r2, #1	@ SeekTime, D.40430,
	add	r3, r3, #1	@ D.40429, SeekTime,
	str	r3, [sp, #32]	@ D.40429, %sfp
	cmp	r3, #0	@ D.40429,
	ble	.L802	@,
	ldr	r4, [sp, #12]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r9, #0	@ j,
	mvn	r5, #0	@,
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	FillRawData	@
	mvn	r4, #0	@ tmp693,
	str	r9, [sp, #28]	@ j, %sfp
	ldrd	r8, [sp]	@ pts, %sfp
.L803:
	ldr	r3, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	lr, [fp, #172]	@ D.40424, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	mov	ip, r3	@ i, i
	str	r3, [sp, #16]	@ i, %sfp
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L783:
	mov	r3, ip, asl #6	@ tmp630, i,
	cmp	ip, lr	@ i, D.40424
	add	r3, r3, ip, lsl #3	@ tmp631, tmp630, i,
	mvn	r0, #0	@ tmp634,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp632, pSmInstArray, tmp631
	beq	.L842	@,
	ldrd	r6, [r3, #184]	@ D.40430, tmp632,
	add	r3, ip, #1	@ D.40429, i,
	cmp	r7, r5	@ D.40430,
	cmpeq	r6, r4	@ D.40430, tmp693
	beq	.L843	@,
	cmp	r9, r7	@ pts, D.40430
	mov	r2, r3, asr #31	@ tmp642, D.40429,
	cmpeq	r8, r6	@ pts, D.40430
	bls	.L791	@,
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r2, lsr #22	@ tmp643, tmp642,
	add	r3, r3, ip	@ tmp644, D.40429, tmp643
	ubfx	r3, r3, #0, #10	@ tmp645, tmp644,,
	rsb	ip, ip, r3	@ i, tmp643, tmp645
	b	.L783	@
.L791:
	beq	.L844	@,
	bcs	.L783	@,
	ldr	lr, [fp, #176]	@ D.40424, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r2, r6	@ D.40430, D.40430
	ldr	r8, [sp, #16]	@ i, %sfp
	mov	r3, r7	@ D.40430, D.40430
	mov	r4, lr, asl #6	@ tmp662, D.40424,
	add	r4, r4, lr, lsl #3	@ tmp663, tmp662, D.40424,
	add	r4, r10, r4	@ tmp664, pSmInstArray, tmp663
	ldrd	r4, [r4, #184]	@ D.40430, tmp664,
	cmp	r5, r1	@ D.40430,
	cmpeq	r4, r0	@ D.40430, tmp634
	beq	.L845	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r5	@ pts, D.40430
	cmpeq	r0, r4	@ pts, D.40430
	bls	.L797	@,
	subs	r0, r0, r4	@ D.40430, D.40430, D.40430
	ldrd	r6, [sp, #40]	@ gap,,
	sbc	r1, r1, r5	@ D.40430, D.40430, D.40430
	cmp	r7, r1	@ gap, D.40430
	cmpeq	r6, r0	@ gap, D.40430
	strcc	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	movcc	r4, r2	@ D.40430, D.40430
	movcc	r5, r3	@ D.40430, D.40430
	movcc	lr, ip	@ D.40424, i
.L797:
	cmp	lr, r8	@ D.40424, i
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	addlt	lr, lr, #1024	@ D.40429, D.40424,
	rsb	r1, r8, lr	@ DelNum, i, D.40429
	cmp	r1, #0	@ DelNum,
	strd	r4, [r3]	@ D.40430, *pArgs_35(D)
	bne	.L800	@,
.L829:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, r1	@ D.40424, DelNum
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L819:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L843:
	mov	ip, r3, asr #31	@ tmp635, D.40429,
	mov	ip, ip, lsr #22	@ tmp636, tmp635,
	add	r3, r3, ip	@ tmp637, D.40429, tmp636
	ubfx	r3, r3, #0, #10	@ tmp638, tmp637,,
	rsb	ip, ip, r3	@ i, tmp636, tmp638
	b	.L783	@
.L842:
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r3, ip	@ i, i
	addgt	ip, ip, #1024	@ D.40429, i,
	ldrgt	r3, [sp, #16]	@ i, %sfp
	rsb	r1, r3, ip	@ DelNum, i, D.40429
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r1, #0	@ DelNum,
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bne	.L846	@,
.L788:
	ldr	r3, [sp, #28]	@ j, %sfp
	ldr	r2, [sp, #32]	@ D.40429, %sfp
	add	r3, r3, #1	@ j, j,
	str	r3, [sp, #28]	@ j, %sfp
	cmp	r3, r2	@ j, D.40429
	beq	.L802	@,
	ldr	r6, [sp, #12]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r0, r6	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r6	@, ChanID
	bl	FillRawData	@
	b	.L803	@
.L844:
	ldr	r8, [sp, #16]	@ i, %sfp
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	cmp	r8, ip	@ i, i
	ldrd	r2, [sp]	@ pts, %sfp
	addgt	ip, ip, #1024	@ D.40429, i,
	rsb	r1, r8, ip	@ DelNum, i, D.40429
	cmp	r1, #0	@ DelNum,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	beq	.L829	@,
.L800:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.40424,
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L846:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L788	@
.L837:
	ldr	r9, [sp, #28]	@ i, %sfp
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	cmp	ip, r9	@ i, i
	addlt	ip, ip, #1024	@ D.40429, i,
	rsb	r1, r9, ip	@ DelNum, i, D.40429
	cmp	r1, #0	@ DelNum,
	beq	.L771	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp558,
	movne	r4, #0	@ tmp558,
	beq	.L771	@,
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	b	.L830	@
.L840:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L764	@
.L832:
	ldr	r10, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r4, r10	@ i, j
	beq	.L751	@,
	movw	r9, #36409	@ tmp700,
	movt	r9, 14563	@ tmp700,
.L752:
	mov	r3, r10, asl #6	@ tmp366, j,
	mov	r2, #2	@ tmp769,
	add	r3, r3, r10, lsl #4	@ tmp367, tmp366, j,
	mov	r1, r10	@, j
	add	r3, fp, r3	@ tmp368, tmp690, tmp367
	mov	r0, r7	@, pStreamSegArray
	strb	r2, [r3, #204]	@ tmp769, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.40428, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.40429, D.40428
	str	r2, [r5, #2284]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.40429, D.40429
	str	r3, [r5, #2288]	@ D.40429, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r10, #1	@ D.40429, j,
	smull	r2, r3, r1, r9	@ tmp402, D.40429, tmp700
	mov	r10, r1, asr #31	@ tmp405, D.40429,
	rsb	r10, r10, r3, asr #8	@ j, tmp405,,
	mov	r3, r10, asl #10	@ tmp408, j,
	add	r10, r3, r10, lsl #7	@ tmp409, tmp408, j,
	rsb	r10, r10, r1	@ j, tmp409, D.40429
	cmp	r4, r10	@ i, j
	bne	.L752	@,
	add	r6, r6, r8	@ tmp415, tmp688, tmp689
	add	fp, fp, r6	@ tmp416, tmp690, tmp415
	ldrd	r2, [fp, #232]	@ D.40425, tmp416,
.L751:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	mov	r0, #0	@ D.40424,
	strd	r2, [r1]	@ D.40425, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L771:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r1]	@ pts, *pArgs_35(D)
.L828:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, #0	@ D.40424,
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	str	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L777:
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.40430, *pArgs_35(D)
	b	.L828	@
.L845:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r4, r6	@ D.40430, D.40430
	mov	r5, r7	@ D.40430, D.40430
	mov	lr, ip	@ D.40424, i
	b	.L797	@
.L833:
	subs	r8, r8, r2	@ D.40430, D.40430, D.40430
	sbc	r9, r9, r3	@ D.40430, D.40430, D.40430
	mov	r2, r8	@ D.40430, D.40430
	mov	r3, r9	@ D.40430, D.40430
	ldrd	r8, [sp, #40]	@ gap,,
	cmp	r9, r3	@ gap, D.40430
	cmpeq	r8, r2	@ gap, D.40430
	strcc	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	movcc	r0, r4	@ D.40424, i
	b	.L754	@
.L839:
	ldrd	r6, [sp, #16]	@ D.40430,,
	mov	lr, ip	@ D.40429, i
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	b	.L774	@
.L838:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r6, r2	@ D.40430, D.40430
	mov	r7, r3	@ D.40430, D.40430
	mov	lr, ip	@ D.40429, i
	b	.L774	@
.L802:
	mvn	r0, #1	@ D.40424,
	b	.L819	@
.L740:
	mvn	r0, #0	@ D.40424,
	b	.L819	@
.L841:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.40424,
	b	.L819	@
.L848:
	.align	2
.L847:
	.word	.LANCHOR0
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51208	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51216	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51220	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51224	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	mov	r0, #51200	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
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
	ldr	r5, .L857	@ tmp217,
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
	ldrsb	r3, [r4, #1]	@ D.40437, pSmCtrlReg_6(D)->SliceCheckFlag
	ldr	r1, [r4, #36]	@ pSmCtrlReg_6(D)->ScdProtocol, pSmCtrlReg_6(D)->ScdProtocol
	ldr	r2, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.40437, D.40437,
	and	r1, r1, #15	@ D.40437, pSmCtrlReg_6(D)->ScdProtocol,
	and	r3, r3, #16	@ D.40437, D.40437,
	orr	r1, r1, r2, asl #8	@ D.40437, D.40437, pSmCtrlReg_6(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.40437, D.40437
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	cmp	r3, #0	@ pSmCtrlReg_6(D)->ScdLowdlyEnable,
	beq	.L852	@,
	ldr	r1, [r4, #108]	@, pSmCtrlReg_6(D)->reg_avs_flag
	ldr	r0, [r5]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
.L852:
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
.L858:
	.align	2
.L857:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r2	@ PushRawNum, PushRawNum
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #0	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	mov	r4, #0	@ i,
.L861:
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i, i,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r4, r5	@ i, PushRawNum
	bne	.L861	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	beq	.L876	@,
	add	r3, r6, #73728	@ tmp182, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp182,,
	cmp	r1, r2	@ pRawStreamArray_17(D)->Head, pRawStreamArray_17(D)->Tail
	beq	.L877	@,
	ldr	r9, [r3, #12]	@ FirstRawOffset, pRawStreamArray_17(D)->FirstPacketOffset
	mov	fp, r9	@ D.40454, FirstRawOffset
.L866:
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	mov	r10, #0	@ tmp195,
	str	r10, [r5]	@ tmp195, *pDownMsgVirAddr_29(D)
	str	r10, [r5, #4]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 4B]
	str	r10, [r5, #8]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 8B]
	str	r10, [r7, #4]	@ tmp195, pSmPushRaw_33(D)->PushRawTotalLen
	ldr	r4, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	rsb	r4, r9, r4	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r3, [sp, #4]	@ RawPacket.VirAddr, RawPacket.VirAddr
	cmp	r4, r8	@ RawShowTotalLen, SegStreamSize
	add	r9, r2, r9	@ D.40449, RawPacket.PhyAddr, FirstRawOffset
	add	r3, r3, fp	@ D.40450, RawPacket.VirAddr, D.40454
	str	r4, [sp, #8]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [sp]	@ D.40449, RawPacket.PhyAddr
	str	r3, [sp, #4]	@ D.40450, RawPacket.VirAddr
	bgt	.L867	@,
	mov	fp, r10	@ PushRawNum, j
	mov	lr, r4	@ D.40448, RawShowTotalLen
	b	.L870	@
.L888:
	ldr	lr, [sp, #8]	@ D.40448, RawPacket.Length
	movw	r2, #1023	@ tmp256,
	add	r4, r4, lr	@ RawShowTotalLen, RawShowTotalLen, D.40448
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	movlt	r3, #0	@ tmp216,
	movge	r3, #1	@ tmp216,
	cmp	fp, r2	@ PushRawNum, tmp256
	movgt	r3, #0	@ tmp216,
	cmp	r3, #0	@ tmp216,
	beq	.L869	@,
.L870:
	cmp	lr, #0	@ D.40448,
	mov	r3, r10, asl #2	@ D.40452, j,
	add	r2, r5, r3	@ tmp200, pDownMsgVirAddr, D.40452
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	add	r3, r3, #12	@ D.40452, D.40452,
	ble	.L868	@,
	ldr	ip, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	ldr	r9, [sp, #112]	@ tmp251, DownMsgPhyAddr
	add	lr, lr, ip	@ D.40449, D.40448, RawPacket.PhyAddr
	str	ip, [r5, r10, asl #2]	@ RawPacket.PhyAddr, *_43
	add	r10, r10, #3	@ j, j,
	add	r3, r3, r9	@ D.40452, D.40452, tmp251
	sub	lr, lr, #1	@ D.40449, D.40449,
	mov	r9, #0	@ tmp252,
	str	r3, [r2, #8]	@ D.40452, *_56
	str	r9, [sp, #8]	@ tmp252, RawPacket.Length
	str	lr, [r2, #4]	@ D.40449, *_49
.L868:
	str	r4, [r7, #4]	@ RawShowTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L888	@,
.L869:
	ldr	r3, [sp, #116]	@ tmp253, LowdlyFlag
	cmp	r3, #0	@ tmp253,
	bne	.L871	@,
	ldr	r3, [sp, #8]	@ D.40448, RawPacket.Length
	cmp	r3, #0	@ D.40448,
	bne	.L875	@,
.L871:
	cmp	fp, #0	@ PushRawNum,
	beq	.L874	@,
	sub	r10, r10, #-1073741823	@ tmp235, j,
	mov	r4, #0	@ tmp236,
	mov	r3, #1	@ tmp237,
	ldr	r0, [sp, #112]	@, DownMsgPhyAddr
	str	r4, [r5, r10, asl #2]	@ tmp236, *_112
	mov	r2, fp	@, PushRawNum
	mov	r1, r5	@, pDownMsgVirAddr
	str	fp, [r7]	@ PushRawNum, pSmPushRaw_33(D)->PushRawNum
	str	r3, [r7, #8]	@ tmp237, pSmPushRaw_33(D)->PushRawOver
	bl	PrintDownMsg	@
	mov	r0, r4	@ D.40448, tmp236
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L867:
	ldr	r3, [sp, #116]	@ tmp255, LowdlyFlag
	cmp	r3, #0	@ tmp255,
	bne	.L874	@,
	cmp	r4, #0	@ RawShowTotalLen,
	beq	.L874	@,
	ldr	r10, [sp, #116]	@ j, LowdlyFlag
	mov	r3, r4	@ D.40448, RawShowTotalLen
	mov	fp, r10	@ PushRawNum, j
.L875:
	ldr	r2, [r7, #4]	@ D.40449, pSmPushRaw_33(D)->PushRawTotalLen
	sub	r1, r8, #16	@ D.40449, SegStreamSize,
	cmp	r2, r1	@ D.40449, D.40449
	bge	.L871	@,
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	cmplt	fp, #1024	@, PushRawNum,
	bge	.L871	@,
	rsb	r2, r2, r8	@ D.40449, D.40449, SegStreamSize
	cmp	r2, r3	@ D.40449, D.40448
	bgt	.L871	@,
	mov	r3, r10, asl #2	@ D.40452, j,
	ldr	ip, [sp]	@ D.40449, RawPacket.PhyAddr
	add	r0, r5, r3	@ tmp226, pDownMsgVirAddr, D.40452
	ldr	lr, [sp, #112]	@ tmp254, DownMsgPhyAddr
	add	r1, r2, ip	@ D.40449, D.40449, D.40449
	add	r3, r3, #12	@ D.40452, D.40452,
	str	ip, [r5, r10, asl #2]	@ D.40449, *_84
	add	r3, r3, lr	@ D.40452, D.40452, tmp254
	sub	r1, r1, #1	@ D.40449, D.40449,
	stmib	r0, {r1, r3}	@ tmp226,,
	ldr	r3, [r7, #4]	@ pSmPushRaw_33(D)->PushRawTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	mov	r1, #0	@ tmp234,
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	add	r10, r10, #3	@ j, j,
	add	r2, r3, r2	@ D.40449, pSmPushRaw_33(D)->PushRawTotalLen, D.40449
	str	r1, [sp, #8]	@ tmp234, RawPacket.Length
	str	r2, [r7, #4]	@ D.40449, pSmPushRaw_33(D)->PushRawTotalLen
	b	.L871	@
.L877:
	mov	fp, #0	@ D.40454,
	mov	r9, fp	@ FirstRawOffset, D.40454
	b	.L866	@
.L876:
	mov	fp, r6	@ D.40454, pRawStreamArray
	mov	r9, r6	@ FirstRawOffset, pRawStreamArray
	b	.L866	@
.L874:
	mvn	r0, #5	@ D.40448,
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
	mov	r6, r1	@ pSmPushRaw, pSmPushRaw
	mov	r7, r2	@ SegStreamSize, SegStreamSize
	mov	r8, r3	@ pRawStreamArray, pRawStreamArray
	ldr	r5, [sp, #36]	@ DownMsgPhyAddr, DownMsgPhyAddr
	mov	r4, r0	@ pSmCtrlReg, pSmCtrlReg
	bl	ResetSCD	@
	ldr	ip, [r4, #104]	@ pSmCtrlReg_5(D)->ScdLowdlyEnable, pSmCtrlReg_5(D)->ScdLowdlyEnable
	mov	r2, r8	@, pRawStreamArray
	mov	r1, r7	@, SegStreamSize
	mov	r0, r6	@, pSmPushRaw
	stmia	sp, {r5, ip}	@,,
	ldr	r3, [sp, #32]	@, pDownMsgVirAddr
	bl	WriteScdMsg	@
	subs	r5, r0, #0	@ Ret,
	bne	.L890	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L890:
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
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #73728	@ tmp297, pScdInstance,
	cmn	r5, #192	@ tmp297,
	.pad #148
	sub	sp, sp, #148	@,,
	add	r2, r0, #168	@ pRawStreamArray, pScdInstance,
	add	r10, r5, #192	@ pStreamSegArray, tmp297,
	movne	r8, #0	@ D.40468,
	moveq	r8, #1	@ D.40468,
	cmn	r0, #168	@ pScdInstance,
	str	r2, [sp, #12]	@ pRawStreamArray, %sfp
	ldr	r2, [r0, #88]	@ D.40466, pScdInstance_9(D)->Config.ScdLowdlyEnable
	movne	r7, #0	@ D.40468,
	moveq	r7, #1	@ D.40468,
	orrs	r3, r7, r8	@ tmp180, D.40468, D.40468
	ldr	r9, [r0, #56]	@ StdType, pScdInstance_9(D)->Config.VidStd
	str	r2, [sp, #16]	@ D.40466, %sfp
	bne	.L895	@,
	add	r6, r0, #165888	@ __p, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r6, r6, #248	@ __p, __p,
	mov	r1, #12	@,
	str	r3, [sp, #24]	@ tmp180, SegStreamSize
	mov	r0, r6	@, __p
	str	r3, [sp, #28]	@ tmp180, FreeSegBufAddr
	bl	__memzero	@
	cmp	r7, #0	@ D.40468,
	bne	.L895	@,
	ldr	r3, [r5, #168]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r7, [r5, #172]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail
	subs	r7, r7, r3	@ StreamNum, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	addmi	r7, r7, #1024	@ StreamNum, StreamNum,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #188]	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].RawTotalSize
	ldr	r3, [r5, #180]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset
	rsb	r5, r3, r2	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, RawStreamSize
	movs	fp, r5, asr #31	@ D.40467, RawStreamSize,
	beq	.L915	@,
.L911:
	mov	r0, fp	@, D.40467
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L895:
	mvn	fp, #0	@ D.40467,
	mov	r0, fp	@, D.40467
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L915:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #3	@ RawStreamSize,
	cmpgt	r7, #0	@, StreamNum,
	ble	.L907	@,
	add	r3, r4, #163840	@ tmp296, pScdInstance,
	movw	r0, #36409	@ tmp211,
	movt	r0, 14563	@ tmp211,
	str	r3, [sp, #20]	@ tmp296, %sfp
	ldr	r2, [r3, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail
	ldr	r7, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head
	add	r2, r2, #1152	@ D.40466, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail,
	rsb	r2, r7, r2	@ D.40466, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, D.40466
	smull	r0, r1, r2, r0	@ tmp210, D.40466, tmp211
	mov	r7, r2, asr #31	@ tmp213, D.40466,
	rsb	r1, r7, r1, asr #8	@ tmp209, tmp213,,
	mov	r7, r1, asl #10	@ tmp216, tmp209,
	add	r7, r7, r1, lsl #7	@ tmp217, tmp216, tmp209,
	rsb	r7, r7, r2	@ D.40466, tmp217, D.40466
	bl	vfmw_dprint_nothing	@
	rsb	r7, r7, #1152	@ StreamNum, D.40466,
	cmp	r7, #288	@ StreamNum,
	ldr	r3, [sp, #20]	@ tmp296, %sfp
	ble	.L898	@,
	mov	r0, r10	@, pStreamSegArray
	add	r2, sp, #24	@,,
	add	r1, sp, #28	@,,
	str	r3, [sp, #20]	@ tmp296, %sfp
	bl	GetFreeSegBuf	@
	ldr	r2, [sp, #28]	@ FreeSegBufAddr, FreeSegBufAddr
	ldr	r1, [sp, #24]	@ SegStreamSize, SegStreamSize
	add	r2, r2, #3	@ D.40469, FreeSegBufAddr,
	bic	r2, r2, #3	@ D.40469, D.40469,
	sub	r1, r1, #79	@ D.40466, SegStreamSize,
	str	r2, [sp, #28]	@ D.40469, FreeSegBufAddr
	str	r1, [sp, #24]	@ D.40466, SegStreamSize
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #20]	@ tmp296, %sfp
	ldr	r2, [sp, #24]	@ D.40466, SegStreamSize
	ldr	r0, [r3, #2268]	@ SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufSize
	cmp	r2, r0, asr #3	@ D.40466, SegBufSize,
	ble	.L898	@,
	cmp	r8, #0	@ D.40468,
	add	r8, r4, #176128	@ tmp298, pScdInstance,
	str	r7, [r3, #2336]	@ StreamNum, pScdInstance_9(D)->BufAddrCfg.UpMsgNum
	sub	r1, r9, #6	@ D.40468, StdType,
	ldr	ip, [r8, #3996]	@ pScdInstance_9(D)->UpMsgStepNum, pScdInstance_9(D)->UpMsgStepNum
	movne	r0, fp	@ D.40466, D.40467
	ldreq	lr, [r3, #2264]	@ D.40466, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufPhyAddr
	movne	lr, fp	@ D.40466, D.40467
	ldr	r10, [r3, #2312]	@ D.40466, pScdInstance_9(D)->BufAddrCfg.DownMsgPhyAddr
	clz	r1, r1	@ D.40468, D.40468
	mul	r7, ip, r7	@ D.40469, pScdInstance_9(D)->UpMsgStepNum, StreamNum
	ldr	ip, [sp, #16]	@ D.40466, %sfp
	addeq	r0, r0, lr	@ D.40466, SegBufSize, D.40466
	str	lr, [sp, #56]	@ D.40466, ScdCtrlReg.BufferFirst
	str	r0, [sp, #60]	@ D.40466, ScdCtrlReg.BufferLast
	cmp	r9, #1	@ StdType,
	cmpne	r9, #15	@, StdType,
	ldr	r0, [r3, #2316]	@ D.40470, pScdInstance_9(D)->BufAddrCfg.pDownMsgVirAddr
	mov	r1, r1, lsr #5	@ D.40468, D.40468,
	ldr	lr, [r3, #2324]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr
	str	ip, [sp, #136]	@ D.40466, ScdCtrlReg.ScdLowdlyEnable
	ldr	ip, [sp, #28]	@ FreeSegBufAddr, FreeSegBufAddr
	str	r7, [sp, #52]	@ D.40469, ScdCtrlReg.UpLen
	mov	r7, r7, asl #2	@ D.40469, D.40469,
	str	r10, [sp, #36]	@ D.40466, ScdCtrlReg.DownMsgPhyAddr
	str	r7, [r3, #2332]	@ D.40469, pScdInstance_9(D)->BufAddrCfg.UpMsgSize
	mov	r3, #1	@ tmp243,
	str	r0, [sp, #40]	@ D.40470, ScdCtrlReg.pDownMsgVirAddr
	str	lr, [sp, #44]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, ScdCtrlReg.UpMsgPhyAddr
	str	ip, [sp, #64]	@ FreeSegBufAddr, ScdCtrlReg.BufferIni
	str	r1, [sp, #140]	@ D.40468, ScdCtrlReg.reg_avs_flag
	strb	r3, [sp, #34]	@ tmp243, ScdCtrlReg.ScdStart
	strb	r3, [sp, #32]	@ tmp243, ScdCtrlReg.ScdIntMask
	beq	.L909	@,
	cmp	r1, #0	@ D.40468,
	beq	.L916	@,
.L914:
	strb	r3, [sp, #33]	@ tmp269, ScdCtrlReg.SliceCheckFlag
	mov	r1, r6	@, __p
	str	r0, [sp]	@ D.40470,
	add	r0, sp, #32	@,,
	str	r10, [sp, #4]	@ D.40466,
	mov	r7, #1	@ tmp271,
	ldr	r3, [sp, #12]	@, %sfp
	str	r9, [sp, #68]	@ D.40466, ScdCtrlReg.ScdProtocol
	str	r7, [sp, #72]	@ tmp271, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	movne	fp, r6	@ D.40467, Ret
	bne	.L911	@,
	ldr	r3, [sp, #24]	@ D.40466, SegStreamSize
	strb	r7, [r4, #5]	@ tmp271, pScdInstance_9(D)->IsWaitSCD
	cmp	r3, r5	@ D.40466, RawStreamSize
	str	r5, [r8, #3968]	@ RawStreamSize, pScdInstance_9(D)->PrevCfgRawSize
	str	r3, [r8, #3972]	@ D.40466, pScdInstance_9(D)->PrevCfgSegSize
	movlt	r2, #0	@ tmp300,
	movge	r2, #1	@ tmp300,
	strb	r6, [r4, #4]	@ Ret, pScdInstance_9(D)->FillNewRawFlag
	strb	r2, [r4, #2]	@ tmp300, pScdInstance_9(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r8, #3992]	@, pScdInstance_9(D)->LastSCDStartTime
	strb	r6, [r4, #3]	@ Ret, pScdInstance_9(D)->InsertNewSegFlag
	b	.L911	@
.L909:
	mov	r9, #0	@ D.40466,
.L900:
	mov	r3, #0	@ tmp269,
	b	.L914	@
.L916:
	sub	r1, r9, #2	@ D.40469, D.40466,
	cmp	r1, r3	@ D.40469,
	bls	.L914	@,
	b	.L900	@
.L898:
	mvn	fp, #5	@ D.40467,
	b	.L911	@
.L907:
	mvn	fp, #4	@ D.40467,
	b	.L911	@
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
	ldr	r4, .L963	@ tmp265,
	ldr	r3, [r4, #152]	@ D.40477, s_eScdDrvSleepStage
	cmp	r3, #0	@ D.40477,
	beq	.L918	@,
	cmp	r3, #1	@ D.40477,
	moveq	r3, #2	@ tmp164,
	mvneq	r0, #2	@ D.40476,
	streq	r3, [r4, #152]	@ tmp164, s_eScdDrvSleepStage
	beq	.L956	@,
.L934:
	mvn	r0, #2	@ D.40476,
.L956:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L918:
	mov	r5, r0	@ pNextInstId, pNextInstId
	mov	r1, sp	@,
	mov	r0, r3	@, D.40477
	ldr	r6, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L934	@,
	ldr	r3, [r6, #56]	@ D.40479, pSmInstArray_19->Config.VidStd
	sub	r2, r3, #8	@ D.40480, D.40479,
	cmp	r3, #5	@ D.40479,
	cmpne	r2, #1	@, D.40480,
	bls	.L934	@,
	cmp	r3, #1	@ D.40479,
	beq	.L959	@,
	cmp	r3, #4	@ D.40479,
	cmpne	r3, #18	@, D.40479,
	sub	r0, r3, #10	@ D.40480, D.40479,
	moveq	r2, #1	@ tmp181,
	movne	r2, #0	@ tmp181,
	cmp	r0, #4	@ D.40480,
	movhi	r0, r2	@, tmp188, tmp181
	orrls	r0, r2, #1	@,, tmp188, tmp181
	cmp	r0, #0	@ tmp188,
	bne	.L934	@,
	cmp	r3, #17	@ D.40479,
	beq	.L960	@,
.L922:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, #176128	@ tmp190, pSmInstArray,
	ldr	r3, [r2, #3992]	@ pSmInstArray_19->LastSCDStartTime, pSmInstArray_19->LastSCDStartTime
	subs	r3, r0, r3	@ WaitTime, D.40480, pSmInstArray_19->LastSCDStartTime
	strmi	r0, [r2, #3992]	@ D.40480, pSmInstArray_19->LastSCDStartTime
	bmi	.L925	@,
	ldrsb	r2, [r6, #2]	@ pSmInstArray_19->LastCfgAllRawFlag, pSmInstArray_19->LastCfgAllRawFlag
	cmp	r2, #1	@ pSmInstArray_19->LastCfgAllRawFlag,
	beq	.L961	@,
.L925:
	ldrsb	r1, [r6]	@ pSmInstArray_19->SegFullFlag, pSmInstArray_19->SegFullFlag
	cmp	r1, #1	@ pSmInstArray_19->SegFullFlag,
	movne	r3, #0	@ tmp246,
	strneb	r3, [r6, #1]	@ tmp246, pSmInstArray_19->IsCounting
	beq	.L962	@,
.L929:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp248,
	streqb	r3, [r6]	@ tmp248, pSmInstArray_19->SegFullFlag
	beq	.L934	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp250,
	strb	r3, [r6]	@ tmp250, pSmInstArray_19->SegFullFlag
	bne	.L934	@,
	str	r0, [r5]	@ Ret, *pNextInstId_61(D)
	mov	r0, #1	@,
	ldr	r3, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	addne	r3, r3, #163840	@ tmp255, pSmInstArray,
	movne	r2, #1	@ tmp256,
	strne	r2, [r3, #2412]	@ tmp256, pSmInstArray_42->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L958	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L963+4	@ tmp260,
	ldr	r3, [r4, #168]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, .L963	@ tmp257,
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.40480, last_rec_pos_time, D.40480
	cmp	r3, r1	@ D.40480, g_TraceBsPeriod
	strhi	r0, [r2, #168]	@ D.40480, last_rec_pos_time
.L958:
	mov	r0, #0	@ D.40476,
	b	.L956	@
.L960:
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L934	@,
	bl	vfmw_dprint_nothing	@
	b	.L934	@
.L959:
	ldr	r3, [r6, #72]	@ pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_19->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L934	@,
	b	.L922	@
.L961:
	ldrsb	r2, [r6, #4]	@ pSmInstArray_19->FillNewRawFlag, pSmInstArray_19->FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	r2, #0	@, pSmInstArray_19->FillNewRawFlag,
	beq	.L934	@,
	b	.L925	@
.L962:
	add	r7, r6, #73728	@ D.40483, pSmInstArray,
	add	r7, r7, #192	@ D.40483, D.40483,
	cmp	r7, #0	@ D.40483,
	beq	.L927	@,
	ldrsb	r0, [r6, #1]	@ pSmInstArray_19->IsCounting, pSmInstArray_19->IsCounting
	add	r3, r6, #163840	@ tmp208, pSmInstArray,
	cmp	r0, #0	@ pSmInstArray_19->IsCounting,
	ldr	r10, [r3, #2288]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegFreshNum
	ldr	r9, [r3, #2284]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegFreshSize
	ldr	r8, [r3, #2268]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_19 + 73920B].SegBufSize
	bne	.L928	@,
	add	r8, r8, r8, lsr #31	@ tmp220, SegBufTotalSize, SegBufTotalSize,
	cmp	r9, r8, asr #1	@ FreshSize, tmp220,
	movlt	r3, #1	@ tmp223,
	movge	r3, #0	@ tmp223,
	cmp	r10, #127	@ FreshNum,
	movgt	r10, #0	@, tmp228
	andle	r10, r3, #1	@,, tmp228, tmp223
	cmp	r10, #0	@ tmp228,
	beq	.L929	@,
	strb	r1, [r6, #1]	@ pSmInstArray_19->SegFullFlag, pSmInstArray_19->IsCounting
	bl	CalcInstBlockTime	@
	b	.L929	@
.L927:
	ldrsb	r3, [r6, #1]	@ pSmInstArray_19->IsCounting, pSmInstArray_19->IsCounting
	cmp	r3, #0	@ pSmInstArray_19->IsCounting,
	movne	r10, r7	@ FreshNum, D.40483
	movne	r8, r7	@ SegBufTotalSize, D.40483
	movne	r9, r7	@ FreshSize, D.40483
	beq	.L929	@,
.L928:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L929	@,
	add	r3, r8, #3	@ tmp235, SegBufTotalSize,
	cmp	r8, #0	@ SegBufTotalSize,
	movlt	r8, r3	@ SegBufTotalSize, tmp235
	cmp	r9, r8, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r3, #1	@ tmp238,
	movge	r3, #0	@ tmp238,
	cmp	r10, #63	@ FreshNum,
	movgt	r10, #0	@, tmp241
	andle	r10, r3, #1	@,, tmp241, tmp238
	cmp	r10, #0	@ tmp241,
	beq	.L929	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.40483
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp242,
	strb	r3, [r6, #1]	@ tmp242, pSmInstArray_19->IsCounting
	strb	r3, [r6]	@ tmp242, pSmInstArray_19->SegFullFlag
	b	.L929	@
.L964:
	.align	2
.L963:
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
	mov	r3, #0	@ tmp122,
	ldr	r4, .L980	@ tmp146,
	mov	r0, r3	@ D.40487, tmp122
	str	r3, [sp, #4]	@ tmp122, NextInstID
	b	.L967	@
.L966:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.40487, NextInstID,
	str	r0, [sp, #4]	@ D.40487, NextInstID
	cmp	r0, #0	@ D.40487,
	bgt	.L978	@,
.L967:
	add	r3, r4, r0, lsl #2	@ tmp125, tmp146, D.40487,
	ldr	r3, [r3, #128]	@ D.40486, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.40486,
	add	r2, r3, #163840	@ tmp128, D.40486,
	beq	.L966	@,
	ldr	r3, [r2, #2412]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L966	@,
	bl	FillRawData	@
	b	.L966	@
.L978:
	ldr	r3, [r4, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L980	@ tmp131,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L968	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L979	@,
.L965:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L968:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #148]	@ D.40488, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.40488
	strcc	r0, [r4, #148]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L965	@,
	rsb	r0, r3, r0	@ DelayTime, D.40488, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L965	@,
	bl	vfmw_dprint_nothing	@
	bl	ResetSCD	@
	ldr	r0, [r4, #140]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp143,
	str	r3, [r4, #144]	@ tmp143, s_SmIIS.SCDState
	cmp	r0, r3	@ s_SmIIS.ThisInstID,
	bne	.L965	@,
	bl	DeleteLastSendRaw.part.0	@
	b	.L965	@
.L979:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp137,
	str	r2, [r4, #144]	@ tmp137, s_SmIIS.SCDState
	str	r3, [r4, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #148]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L981:
	.align	2
.L980:
	.word	.LANCHOR0
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
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
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
	and	r3, r0, #1	@ D.40493,,
	movw	r0, #51268	@,
	str	r3, [r4]	@ D.40493, pSmStateReg_5(D)->Scdover
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.40493,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #4]	@ D.40493, pSmStateReg_5(D)->ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.40494,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.40494, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.40493,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.40493, pSmStateReg_5(D)->ScdNum
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
	movw	r0, #51232	@,
	.pad #24
	sub	sp, sp, #24	@,,
	movt	r0, 4115	@,
	mov	r5, r3	@ Seg_num, Seg_num
	mov	r4, r1	@ pUsedSeg, pUsedSeg
	mov	r9, r2	@ pStreamSegArray, pStreamSegArray
	bl	MEM_ReadPhyWord	@
	mov	r0, sp	@,
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #16]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	mvneq	r0, #6	@ D.40505,
	beq	.L997	@,
	add	r1, r9, #90112	@ tmp166, pStreamSegArray,
	movw	r6, #36409	@ tmp175,
	movt	r6, 14563	@ tmp175,
	subs	ip, r5, #1	@ i, Seg_num,
	ldr	r3, [r1, #2060]	@ pStreamSegArray_12(D)->Tail, pStreamSegArray_12(D)->Tail
	ldr	r8, [r1, #2056]	@ pStreamSegArray_12(D)->Head, pStreamSegArray_12(D)->Head
	add	r3, r3, #1152	@ D.40507, pStreamSegArray_12(D)->Tail,
	rsb	r3, r8, r3	@ D.40507, pStreamSegArray_12(D)->Head, D.40507
	smull	r6, r7, r3, r6	@ tmp174, D.40507, tmp175
	mov	r2, r3, asr #31	@ tmp177, D.40507,
	rsb	r2, r2, r7, asr #8	@ tmp173, tmp177,,
	mov	r8, r2, asl #10	@ tmp180, tmp173,
	add	r8, r8, r2, lsl #7	@ tmp181, tmp180, tmp173,
	rsb	r8, r8, r3	@ D.40507, tmp181, D.40507
	rsb	r8, r8, #1152	@ SegNum, D.40507,
	bmi	.L995	@,
	add	r3, r10, #176128	@ tmp188, pScdInstance,
	ldr	r7, [r10, #20]	@ D.40505, pScdInstance_16(D)->SegFilter.ModeFlag
	mov	r0, #0	@ tmp191,
	ldr	r6, [r9]	@ D.40510, pStreamSegArray_12(D)->pSegBufVirAddr
	ldr	r2, [r3, #3996]	@ pScdInstance_16(D)->UpMsgStepNum, pScdInstance_16(D)->UpMsgStepNum
	sub	r5, r7, #1	@ D.40504, D.40505,
	clz	r5, r5	@ D.40504, D.40504
	ldr	lr, [r1, #2072]	@ D.40508, pStreamSegArray_12(D)->SegBufPhyAddr
	movt	r0, 46593	@ tmp191,
	mov	r9, #0	@ count,
	mov	r2, r2, asl #2	@ D.40508, pScdInstance_16(D)->UpMsgStepNum,
	mov	r5, r5, lsr #5	@ D.40504, D.40504,
	mla	r1, r2, ip, r4	@ ivtmp.442, D.40508, i, pUsedSeg
	b	.L992	@
.L1002:
	cmp	r7, #2	@ D.40505,
	beq	.L1001	@,
.L991:
	cmn	r4, #1	@ i,
	beq	.L999	@,
	mov	ip, r4	@ i, i
.L992:
	ldr	r3, [r1]	@ *_22, *_22
	sub	r4, ip, #1	@ i, i,
	rsb	r1, r2, r1	@ ivtmp.442, D.40508, ivtmp.442
	rsb	r3, lr, r3	@ D.40508, D.40508, *_22
	ldr	r3, [r6, r3]	@ start_code, MEM[(HI_U32 *)VirAddr_29]
	cmp	r3, r0	@ start_code, tmp191
	movne	r10, #0	@, tmp160
	andeq	r10, r5, #1	@,, tmp160, D.40504
	cmp	r10, #0	@ tmp160,
	beq	.L1002	@,
.L989:
	add	r9, r9, #1	@ count, count,
	cmp	r9, #0	@ count,
	ble	.L991	@,
	cmp	r8, ip	@ SegNum, i
	bcc	.L991	@,
.L999:
	mov	r0, ip	@ D.40505, i
.L997:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1001:
	ubfx	r3, r3, #16, #8	@ D.40508, start_code,,
	sub	r3, r3, #128	@ D.40508, D.40508,
	cmp	r3, #3	@ D.40508,
	bhi	.L991	@,
	b	.L989	@
.L995:
	mov	r0, r5	@ D.40505, Seg_num
	b	.L997	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrsb	r3, [r0, #5]	@ pScdInstance_25(D)->IsWaitSCD, pScdInstance_25(D)->IsWaitSCD
	cmp	r3, #0	@ pScdInstance_25(D)->IsWaitSCD,
	beq	.L1107	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #163840	@ tmp574, pScdInstance,
	.pad #268
	sub	sp, sp, #268	@,,
	ldr	r3, [fp, #2304]	@ pScdInstance_25(D)->SmPushRaw.PushRawOver, pScdInstance_25(D)->SmPushRaw.PushRawOver
	cmp	r3, #3	@ pScdInstance_25(D)->SmPushRaw.PushRawOver,
	moveq	r3, #2	@ tmp301,
	mvneq	r0, #6	@ D.40523,
	streq	r3, [fp, #2304]	@ tmp301, pScdInstance_25(D)->SmPushRaw.PushRawOver
	beq	.L1082	@,
	mov	r10, r0	@ pScdInstance, pScdInstance
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	add	r4, r10, #176128	@ tmp575, pScdInstance,
	bl	MEM_ReadPhyWord	@
	mov	r3, #2	@ tmp305,
	mov	r1, #80	@,
	str	r3, [fp, #2304]	@ tmp305, MEM[(struct SM_PUSHRAW_S *)pScdInstance_25(D) + 166136B].PushRawOver
	add	r0, sp, #104	@ tmp591,,
	bl	__memzero	@
	mov	r1, #80	@,
	add	r0, sp, #184	@ tmp592,,
	bl	__memzero	@
	mov	r1, #24	@,
	add	r0, sp, #80	@ tmp593,,
	bl	__memzero	@
	ldr	r3, [r4, #3996]	@ UpMsgStepNum, pScdInstance_25(D)->UpMsgStepNum
	add	r0, sp, #80	@ tmp594,,
	str	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	mov	r3, #0	@ tmp309,
	str	r3, [sp, #68]	@ tmp309, SegFreeBufLen
	str	r3, [sp, #72]	@ tmp309, TmpAddr
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	beq	.L1007	@,
	add	r3, r10, #73728	@ tmp573, pScdInstance,
	ldr	r2, [sp, #92]	@ D.40525, SmStateReg.ScdNum
	str	r3, [sp, #24]	@ tmp573, %sfp
	adds	r3, r3, #192	@ pStreamSegArray, tmp573,
	str	r3, [sp, #20]	@ pStreamSegArray, %sfp
	str	r2, [sp, #48]	@ D.40525, %sfp
	str	r2, [sp, #64]	@ D.40525, ScdSegNum
	beq	.L1108	@,
	ldr	r3, [fp, #2264]	@ SegBufAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r5, [fp, #2268]	@ SegBufLength, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufSize
	str	r3, [sp, #8]	@ SegBufAddr, %sfp
.L1044:
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r0, r0, #15	@ D.40525,,
	str	r0, [r10, #16]	@ D.40525, pScdInstance_25(D)->SegFilter.ProtocolType
	ldr	r3, [fp, #2328]	@ pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr
	ldr	r0, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	str	r3, [r10, #12]	@ pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_25(D)->SegFilter.pScdUpMsg
	str	r0, [r10, #28]	@ SegBufAddr, pScdInstance_25(D)->SegFilter.SegBufPhyAddr
	ldr	r3, [fp, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r6, [sp, #64]	@ ScdSegNum, ScdSegNum
	ldr	r1, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsb	r3, r3, r0	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, SegBufAddr
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	cmp	r6, #1152	@ ScdSegNum,
	movw	r0, #51212	@,
	str	r5, [r10, #32]	@ SegBufLength, pScdInstance_25(D)->SegFilter.SegBufSize
	add	r3, r2, r3	@ D.40527, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.40525
	str	r1, [r10, #36]	@ SmStateReg.ScdRollAddr, pScdInstance_25(D)->SegFilter.SegBufRollAddr
	str	r3, [r10, #8]	@ D.40527, pScdInstance_25(D)->SegFilter.pSegBufVirAddr
	movt	r0, 4115	@,
	movge	r6, #1152	@ D.40529,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.40529,
	bhi	.L1109	@,
	ldr	r0, [sp, #64]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ D.40523,
.L1010:
	add	r3, r10, #165888	@ D.40531, pScdInstance,
	ldr	r1, [sp, #28]	@ UpMsgStepNum, %sfp
	str	r0, [r10, #40]	@ D.40523, pScdInstance_25(D)->SegFilter.SegNum
	mov	r2, r3	@ D.40531, D.40531
	add	r3, r10, #8	@ D.40530, pScdInstance,
	add	r2, r2, #368	@ D.40531, D.40531,
	str	r3, [sp, #40]	@ D.40530, %sfp
	str	r2, [sp, #12]	@ D.40531, %sfp
	mov	r0, r3	@, D.40530
	str	r1, [sp]	@ UpMsgStepNum,
	add	r3, sp, #64	@,,
	mov	r1, r2	@, D.40531
	add	r2, sp, #76	@,,
	bl	ScdReturnSegFilter	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1007	@,
	ldr	r5, [sp, #64]	@ D.40525, ScdSegNum
	add	r3, r10, #168	@ pRawStreamArray, pScdInstance,
	str	r3, [sp, #32]	@ pRawStreamArray, %sfp
	cmp	r5, #1	@ D.40525,
	ble	.L1110	@,
	movw	r0, #51212	@,
	strb	r6, [r10]	@ Ret, pScdInstance_25(D)->SegFullFlag
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.40525,
	bcs	.L1016	@,
	ldr	r3, [sp, #64]	@ ScdSegNum, ScdSegNum
	sub	r3, r3, #1	@ D.40523, ScdSegNum,
	str	r3, [sp, #44]	@ D.40523, %sfp
	str	r3, [sp, #64]	@ D.40523, ScdSegNum
.L1017:
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1111	@,
.L1019:
	movw	r3, #36409	@ tmp578,
	add	r2, r10, #179200	@ D.40533, pScdInstance,
	movt	r3, 14563	@ tmp578,
	str	r3, [sp, #56]	@ tmp578, %sfp
	add	r3, r2, #888	@ D.40533, D.40533,
	str	r3, [sp, #36]	@ D.40533, %sfp
	ldr	r3, [fp, #2252]	@ LastSegTail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	mov	r8, #0	@ ivtmp.453,
	mov	r7, r8	@ i, ivtmp.453
	ldr	r6, [sp, #12]	@ ivtmp.451, %sfp
	ldr	r1, [sp, #44]	@ D.40523, %sfp
	str	r3, [sp, #52]	@ LastSegTail, %sfp
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	str	fp, [sp, #16]	@ tmp574, %sfp
	mov	r9, r3, asl #2	@ D.40529, UpMsgStepNum,
	b	.L1020	@
.L1115:
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	bne	.L1112	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1113	@,
.L1029:
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	add	r2, sp, #68	@,,
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	str	r4, [sp, #116]	@ SegPacketLen, SegPacket.LenInByte
	rsb	r5, r3, r5	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	ldr	r3, [sp, #24]	@ tmp573, %sfp
	ldr	r3, [r3, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	add	r5, r3, r5	@ D.40527, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.40525
	mov	r3, #1	@ tmp418,
	str	r5, [sp, #104]	@ D.40527, SegPacket.VirAddr
	strb	r3, [sp, #109]	@ tmp418, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #112]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.40525, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	beq	.L1094	@,
	ldr	r3, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1094	@,
	ldr	r3, [sp, #116]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, D.40525
	bhi	.L1094	@,
	ldr	r1, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	add	r3, sp, #104	@ tmp658,,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _353, offset: 4B],
	bl	GetSegPts	@
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	add	r1, sp, #104	@ tmp660,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_25(D)->InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1097	@,
.L1088:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #64]	@ D.40523, ScdSegNum
.L1028:
	add	r6, r6, r9	@ ivtmp.451, ivtmp.451, D.40529
	add	r8, r8, r9	@ ivtmp.453, ivtmp.453, D.40529
	mov	r7, fp	@ i, i
.L1020:
	cmp	r7, r1	@ i, D.40523
	bge	.L1114	@,
	ldr	r3, [sp, #12]	@ D.40531, %sfp
	add	fp, r7, #1	@ i, i,
	ldr	r5, [r6]	@ CurrSegPhyAddr, MEM[base: _353, offset: 0B]
	add	r2, r3, r9	@ D.40531, D.40531, D.40529
	ldr	r3, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	ldr	ip, [r2, r8]	@ NextSegPhyAddr, MEM[base: _354, index: ivtmp.453_321, offset: 0B]
	mov	r3, r3, lsr #31	@ D.40529, MEM[base: _353, offset: 4B],
	strb	r3, [sp, #111]	@ D.40529, SegPacket.DspCheckPicOverFlag
	ldr	r3, [sp, #8]	@ SegBufAddr, %sfp
	cmp	ip, r3	@ NextSegPhyAddr, SegBufAddr
	rsbne	r4, r5, ip	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	ldreq	r4, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsbeq	r4, r5, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r4, #3	@ SegPacketLen,
	bgt	.L1115	@,
	sub	r3, r4, #1	@ D.40534, SegPacketLen,
	cmp	r3, #2	@ D.40534,
	bhi	.L1031	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	bne	.L1028	@,
	mov	r0, ip	@, NextSegPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L1007	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.40525, MEM[(HI_U8 *)pTmpVirAddr_253 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.40525, *pTmpVirAddr_253
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.40525, MEM[(HI_U8 *)pTmpVirAddr_253 + 2B]
	mov	r2, r2, asl #16	@ D.40525, D.40525,
	orr	r3, r2, r3, asl #24	@ D.40525, D.40525, D.40525,
	orr	r3, r3, r1, asl #8	@ D.40529, D.40525, D.40525,
	cmp	r3, #256	@ D.40529,
	beq	.L1100	@,
	mov	r2, r7	@, i
	ldr	r3, [sp, #28]	@, %sfp
	add	r1, sp, #184	@ tmp625,,
	ldr	r0, [sp, #40]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	add	r1, sp, #72	@,,
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	ip, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	add	r2, sp, #68	@,,
	rsb	r3, r3, r5	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	str	r5, [sp, #192]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	add	r3, ip, r3	@ D.40527, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.40525
	str	r4, [sp, #196]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	ip, #1	@ tmp449,
	str	r3, [sp, #184]	@ D.40527, LastSegPacket.VirAddr
	strb	ip, [sp, #189]	@ tmp449, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r1, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	bic	r1, r1, #-2147483648	@, MEM[base: _353, offset: 4B],
	add	r3, sp, #184	@ tmp628,,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	bl	GetSegPts	@
	ldr	r1, [sp, #64]	@ D.40523, ScdSegNum
	b	.L1028	@
.L1110:
	ldr	r3, [r4, #3972]	@ pScdInstance_25(D)->PrevCfgSegSize, pScdInstance_25(D)->PrevCfgSegSize
	ldr	r2, [r4, #3968]	@ pScdInstance_25(D)->PrevCfgRawSize, pScdInstance_25(D)->PrevCfgRawSize
	cmp	r2, r3	@ pScdInstance_25(D)->PrevCfgRawSize, pScdInstance_25(D)->PrevCfgSegSize
	strleb	r6, [r10]	@ Ret, pScdInstance_25(D)->SegFullFlag
	movgt	r3, #1	@ tmp359,
	strgtb	r3, [r10]	@ tmp359, pScdInstance_25(D)->SegFullFlag
	cmp	r5, #0	@ D.40525,
	beq	.L1116	@,
	cmp	r5, #1	@ D.40525,
	movne	r1, #0	@ SrcEaten,
	beq	.L1117	@,
.L1015:
	ldr	r0, [sp, #32]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L1043	@,
.L1007:
	mvn	r0, #6	@ D.40523,
.L1082:
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1031:
	cmp	r4, #0	@ SegPacketLen,
	bge	.L1028	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1118	@,
.L1033:
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	ldr	r0, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r3, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r1, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	rsb	r0, r0, r5	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	rsb	r4, r3, ip	@ D.40529, SegBufAddr, NextSegPhyAddr
	ldr	r3, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	r0, r1, r0	@ D.40527, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.40525
	add	r2, sp, #68	@,,
	str	r0, [sp, #104]	@ D.40527, SegPacket.VirAddr
	rsb	r3, r5, r3	@ D.40525, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	add	r3, r3, r4	@ D.40529, D.40525, D.40529
	str	r3, [sp, #116]	@ D.40529, SegPacket.LenInByte
	mov	r3, #0	@ tmp470,
	strb	r3, [sp, #109]	@ tmp470, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	lr, [sp, #116]	@ D.40529, SegPacket.LenInByte
	cmp	lr, #3	@ D.40529,
	bls	.L1100	@,
	ldr	r2, [sp, #16]	@ tmp574, %sfp
	ldr	ip, [sp, #112]	@ D.40525, SegPacket.PhyAddr
	ldr	r3, [r2, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	cmp	ip, #0	@ D.40525,
	ldr	r2, [r2, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head
	add	r3, r3, #1152	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail,
	rsb	r3, r2, r3	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head, D.40525
	ldr	r2, [sp, #56]	@ tmp578, %sfp
	smull	r0, r1, r3, r2	@ tmp500, D.40525, tmp578
	mov	r2, r3, asr #31	@ tmp503, D.40525,
	ldr	r0, [sp, #68]	@ D.40525, SegFreeBufLen
	rsb	r2, r2, r1, asr #8	@ tmp499, tmp503,,
	mov	r1, r2, asl #10	@ tmp506, tmp499,
	add	r2, r1, r2, lsl #7	@ tmp507, tmp506, tmp499,
	rsb	r3, r2, r3	@ D.40525, tmp507, D.40525
	rsb	r1, r3, #1152	@ StreamNum, D.40525,
	beq	.L1035	@,
	ldr	r3, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1035	@,
	cmp	lr, r0	@ D.40529, D.40525
	bhi	.L1035	@,
	cmp	r1, #1	@ StreamNum,
	ble	.L1097	@,
	ldr	r1, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	add	r3, sp, #104	@ tmp636,,
	ldr	lr, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #36]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _353, offset: 4B],
	ldr	r0, [sp, #32]	@, %sfp
	rsb	ip, ip, lr	@ D.40525, D.40525, SmStateReg.ScdRollAddr
	str	ip, [sp, #116]	@ D.40525, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r5, [sp, #16]	@ tmp574, %sfp
	add	r1, sp, #104	@ tmp638,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r5, #2408]	@, pScdInstance_25(D)->InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1097	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	add	r1, sp, #104	@ tmp641,,
	ldr	lr, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, lr	@ D.40525, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, SegBufAddr
	str	lr, [sp, #112]	@ SegBufAddr, SegPacket.PhyAddr
	add	r3, r2, r3	@ D.40527, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.40525
	ldr	r2, [r5, #2408]	@, pScdInstance_25(D)->InstID
	str	r3, [sp, #104]	@ D.40527, SegPacket.VirAddr
	mov	r3, #1	@ tmp521,
	str	r4, [sp, #116]	@ D.40529, SegPacket.LenInByte
	strb	r3, [sp, #109]	@ tmp521, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1097	@,
	bl	vfmw_dprint_nothing	@
.L1100:
	ldr	r1, [sp, #64]	@ D.40523, ScdSegNum
	b	.L1028	@
.L1094:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
.L1047:
	bl	vfmw_dprint_nothing	@
	mov	r4, #1	@ ScdErrFlag,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L1027:
	ldr	r3, [fp, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	ldr	r2, [sp, #52]	@ LastSegTail, %sfp
	cmp	r3, r2	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, LastSegTail
	movne	r3, #1	@ tmp542,
	moveq	r3, #0	@ tmp544,
	cmp	r7, #0	@ i,
	strb	r3, [r10, #3]	@ tmp544, pScdInstance_25(D)->InsertNewSegFlag
	ble	.L1040	@,
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mul	r7, r3, r7	@ D.40529, UpMsgStepNum, i
	ldr	r3, [sp, #12]	@ D.40531, %sfp
	add	r7, r7, #1	@ tmp547, D.40529,
	ldr	r1, [r3, r7, asl #2]	@ *_292, *_292
	bic	r1, r1, #-2147483648	@, *_292,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L1007	@,
.L1041:
	cmp	r4, #1	@ ScdErrFlag,
	beq	.L1007	@,
.L1043:
	mov	r0, #0	@ D.40523,
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1112:
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #68	@,,
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	add	r4, r3, r4	@ D.40529, LastSegPacket.LenInByte, SegPacketLen
	str	r4, [sp, #196]	@ D.40529, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.40525, SegFreeBufLen
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L1094	@,
	ldr	r3, [sp, #184]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r3, #0	@ LastSegPacket.VirAddr,
	beq	.L1094	@,
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r3, r2	@ LastSegPacket.LenInByte, D.40525
	bhi	.L1094	@,
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	add	r1, sp, #184	@ tmp656,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_25(D)->InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r4, r0	@ Ret,
	add	r0, sp, #184	@ tmp657,,
	bl	__memzero	@
	cmp	r4, #0	@ Ret,
	beq	.L1088	@,
.L1097:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
.L1036:
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ ScdErrFlag,
	b	.L1027	@
.L1113:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp622,,
	ldr	r0, [sp, #40]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L1029	@
.L1040:
	ldr	r3, [sp, #44]	@ tmp556, %sfp
	ldr	r2, [sp, #48]	@ D.40525, %sfp
	clz	r3, r3	@ tmp556, tmp556
	cmp	r2, #1152	@ D.40525,
	mov	r3, r3, lsr #5	@ tmp556, tmp556,
	movls	r3, #0	@ tmp556,
	cmp	r3, #0	@ tmp556,
	beq	.L1041	@,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	DeleteRawPacket	@
	b	.L1041	@
.L1116:
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten,
	movle	r1, r5	@ SrcEaten, D.40525
	b	.L1015	@
.L1035:
	cmp	r1, #1	@ StreamNum,
	ldr	fp, [sp, #16]	@ tmp574, %sfp
	bgt	.L1047	@,
	b	.L1036	@
.L1109:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L1010	@
.L1108:
	ldr	r3, [sp, #20]	@ pStreamSegArray, %sfp
	mov	r5, r3	@ SegBufLength, pStreamSegArray
	str	r3, [sp, #8]	@ pStreamSegArray, %sfp
	b	.L1044	@
.L1114:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
	mov	r4, #0	@ ScdErrFlag,
	b	.L1027	@
.L1016:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	rsb	r0, r3, r0	@, UpMsgStepNum,
	mov	r1, r3	@, UpMsgStepNum
	bl	__aeabi_uidiv	@
	subs	r3, r0, #1	@ D.40523,,
	str	r3, [sp, #44]	@ D.40523, %sfp
	strpl	r3, [sp, #64]	@ D.40523, ScdSegNum
	strmi	r6, [sp, #44]	@ Ret, %sfp
	strmi	r6, [sp, #64]	@ Ret, ScdSegNum
	b	.L1017	@
.L1118:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp629,,
	ldr	r0, [sp, #40]	@, %sfp
	str	ip, [sp, #60]	@ NextSegPhyAddr, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #60]	@ NextSegPhyAddr, %sfp
	b	.L1033	@
.L1107:
	mvn	r0, #6	@ D.40523,
	bx	lr	@
.L1111:
	ldr	r3, [sp, #44]	@, %sfp
	mov	r0, r10	@, pScdInstance
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	bl	GetNextVop	@
	str	r0, [sp, #44]	@ D.40523, %sfp
	str	r0, [sp, #64]	@ D.40523, ScdSegNum
	b	.L1019	@
.L1117:
	ldr	r3, [fp, #2268]	@ pScdInstance_25(D)->StreamSegArray.SegBufSize, pScdInstance_25(D)->StreamSegArray.SegBufSize
	ldr	r1, [fp, #2420]	@ SrcEaten, pScdInstance_25(D)->TransFormSeg
	ldr	r2, [fp, #2300]	@ pScdInstance_25(D)->SmPushRaw.PushRawTotalLen, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	add	r3, r3, r3, lsl #1	@ D.40525, pScdInstance_25(D)->StreamSegArray.SegBufSize, pScdInstance_25(D)->StreamSegArray.SegBufSize,
	cmp	r3, #0	@ D.40525,
	add	r0, r3, #3	@ tmp375, D.40525,
	rsb	r2, r1, r2	@ D.40525, SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	movlt	r3, r0	@ D.40525, tmp375
	cmp	r2, r3, asr #2	@ D.40525, D.40525,
	ble	.L1015	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	b	.L1015	@
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
	ldr	r0, .L1134	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1130	@,
	ldr	r4, .L1134+4	@ tmp188,
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
	bne	.L1122	@,
	ldr	r5, [r4, #140]	@ D.40542, s_SmIIS.ThisInstID
.L1123:
	add	r3, r4, r5, lsl #2	@ tmp156, tmp188, D.40542,
	ldr	r1, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r2, .L1134+4	@ tmp154,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1131	@,
	ldr	r3, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1132	@,
.L1126:
	mov	r0, r5	@, D.40542
	mov	r3, #0	@ tmp186,
	str	r3, [r4, #172]	@ tmp186, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L1130:
	ldr	r0, .L1134	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1122:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #140]	@ D.40542, s_SmIIS.ThisInstID
	ldr	r3, .L1134+8	@ tmp149,
	add	r2, r4, r5, lsl #2	@ tmp145, tmp188, D.40542,
	ldr	r1, [r3]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r3, [r2, #176]	@ tmp148, last_rec_pos_time
	rsb	r3, r3, r0	@ D.40540, tmp148, CurTimeInMs
	cmp	r3, r1	@ D.40540, g_TraceBsPeriod
	strhi	r0, [r2, #176]	@ CurTimeInMs, last_rec_pos_time
	b	.L1123	@
.L1131:
	ldr	r0, .L1134	@,
	mov	r3, #0	@ tmp168,
	str	r3, [r2, #172]	@ tmp168, s_SCDInISR
	str	r3, [r2, #144]	@ tmp168, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1132:
	add	r3, r0, #163840	@ tmp175, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_27->Mode, pSmInstArray_27->Mode
	cmp	r3, #1	@ pSmInstArray_27->Mode,
	beq	.L1133	@,
.L1127:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp178,
	str	r3, [r4, #144]	@ tmp178, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r6, .L1134+4	@ tmp177,
	cmp	r0, #0	@,
	bne	.L1126	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp183,
	str	r2, [r6, #144]	@ tmp183, s_SmIIS.SCDState
	str	r3, [r6, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #148]	@, s_SmIIS.LastProcessTime
	b	.L1126	@
.L1133:
	bl	ProcessScdReturn	@
	b	.L1127	@
.L1135:
	.align	2
.L1134:
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
	bhi	.L1140	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L1147	@,
	sub	r0, r0, #13	@ tmp129, eCapLevel,
	cmp	r0, #10	@ tmp129,
	ldrls	pc, [pc, r0, asl #2]	@ tmp129
	b	.L1141	@
.L1142:
	.word	.L1145
	.word	.L1145
	.word	.L1145
	.word	.L1145
	.word	.L1145
	.word	.L1143
	.word	.L1143
	.word	.L1143
	.word	.L1143
	.word	.L1143
	.word	.L1143
.L1143:
	mov	r0, #20971520	@ D.40548,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1145:
	mov	r0, #4194304	@ D.40548,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1141:
	mov	r0, #3145728	@ D.40548,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1147:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L1140	@,
	mul	r3, r0, r5	@ D.40550, ChanHeight, ChanWidth
	mov	r0, #57344	@ tmp128,
	movt	r0, 31	@ tmp128,
	cmp	r3, r0	@ D.40550, tmp128
	movle	r0, #3145728	@ D.40548,
	movgt	r0, #20971520	@ D.40548,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1140:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40548,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	SetMaxSegSize, .-SetMaxSegSize
	.align	2
	.global	SM_Config
	.type	SM_Config, %function
SM_Config:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r1	@ tmp157, pSmCfg
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, r3, lsr #5	@ tmp157, tmp157,
	cmp	r0, #0	@ SmID,
	orrne	r3, r3, #1	@,, tmp160, tmp157
	cmp	r3, #0	@ tmp160,
	bne	.L1168	@,
	ldr	r7, .L1170	@ tmp238,
	add	r3, r7, r0, lsl #2	@ tmp163, tmp238, SmID,
	ldr	r6, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L1154	@,
	ldr	r3, [r1, #12]	@ D.40556, pSmCfg_10(D)->BufPhyAddr
	mov	r5, r1	@ pSmCfg, pSmCfg
	ldr	r2, [r6, #60]	@ pSmInstArray_15->Config.BufPhyAddr, pSmInstArray_15->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_15->Config.BufPhyAddr, D.40556
	addeq	r4, r6, #48	@ D.40563, pSmInstArray,
	beq	.L1153	@,
	cmp	r3, #0	@ D.40556,
	beq	.L1154	@,
	ldr	r3, [r1]	@ pSmCfg_10(D)->pBufVirAddr, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_10(D)->pBufVirAddr,
	beq	.L1154	@,
	ldr	ip, [r7, #32]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r4, r6, #163840	@ tmp237, pSmInstArray,
	ldr	r9, [r7, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r3, #1152	@ tmp193,
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
	str	r3, [r4, #2336]	@ tmp193, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].UpMsgNum
	ldr	r2, [r5, #12]	@ D.40556, pSmCfg_10(D)->BufPhyAddr
	ldr	r3, [r5, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	add	r1, r2, #3	@ D.40556, D.40556,
	ldr	lr, [r5]	@ D.40557, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #6	@ pSmCfg_10(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.40556,
	rsb	r8, r2, r1	@ ByteOffsetInWord, D.40556, TmpPhyAddr
	movne	ip, #131072	@ D.40554,
	moveq	ip, #1048576	@ D.40554,
	mov	r9, ip	@ s32ScdBlankSegLen, D.40554
	add	r1, r1, ip	@ D.40556, TmpPhyAddr, s32ScdBlankSegLen
	add	ip, ip, r8	@ D.40554, D.40554, ByteOffsetInWord
	str	r1, [r4, #2400]	@ D.40556, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufPhyAddr
	add	ip, lr, ip	@ D.40557, D.40557, D.40554
	str	ip, [r4, #2308]	@ D.40557, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r5, #16]	@ pSmCfg_10(D)->BufSize, pSmCfg_10(D)->BufSize
	rsb	r2, r8, r1	@ D.40556, ByteOffsetInWord, pSmCfg_10(D)->BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.40556
	blt	.L1169	@,
	rsb	r3, r9, r2	@ D.40556, s32ScdBlankSegLen, D.40556
	sub	r3, r3, #1024	@ D.40556, D.40556,
	str	r3, [r4, #2404]	@ D.40556, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufSize
	cmp	r3, #262144	@ D.40556,
	blt	.L1154	@,
.L1158:
	add	r0, r6, #73728	@, pSmInstArray,
	ldr	r2, [r4, #2308]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].pSegBufVirAddr
	ldr	r1, [r4, #2400]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufPhyAddr
	add	r0, r0, #192	@,,
	bl	ConfigStreamSegArray	@
	add	r4, r6, #48	@ D.40563, pSmInstArray,
	ldr	r3, [r5, #20]	@ pSmCfg_10(D)->RegPhyBaseAddr, pSmCfg_10(D)->RegPhyBaseAddr
	mov	r2, #120	@,
	mov	r0, r4	@, D.40563
	mov	r1, r5	@, pSmCfg
	str	r3, [r7]	@ pSmCfg_10(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L1153:
	add	r6, r6, #176128	@ tmp230, pSmInstArray,
	mov	r0, r4	@, D.40563
	mov	r2, #120	@,
	mov	r1, r5	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp231,
	str	r3, [r6, #3996]	@ tmp231, pSmInstArray_15->UpMsgStepNum
	ldr	r3, [r5, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	cmp	r3, #2	@ pSmCfg_10(D)->VidStd,
	moveq	r3, #3	@ tmp235,
	moveq	r0, #0	@ D.40553,
	streq	r3, [r6, #3996]	@ tmp235, pSmInstArray_15->UpMsgStepNum
	movne	r0, #0	@ D.40553,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1169:
	rsb	r3, r9, r0	@ D.40556, s32ScdBlankSegLen, SmMaxSegBufSize
	sub	r3, r3, #1024	@ D.40556, D.40556,
	str	r3, [r4, #2404]	@ D.40556, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_15 + 166148B].SegBufSize
	b	.L1158	@
.L1154:
	mvn	r0, #0	@ D.40553,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1168:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40553,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1171:
	.align	2
.L1170:
	.word	.LANCHOR0
	.fnend
	.size	SM_Config, .-SM_Config
	.align	2
	.global	SM_Reset
	.type	SM_Reset, %function
SM_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ SmID,
	bne	.L1180	@,
	ldr	r3, .L1185	@ tmp130,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #132
	sub	sp, sp, #132	@,,
	ldr	r4, [r3, #128]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L1183	@,
	ldr	r3, [r4, #84]	@ MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag
	sub	r3, r3, #1	@ D.40574, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ D.40574,
	bls	.L1184	@,
.L1175:
	mov	r6, #0	@ tmp134,
	mvn	r3, #0	@ tmp135,
	str	r6, [r4, #84]	@ tmp134, MEM[(struct SM_INSTANCE_S *)__p_7].Config.DisContinueRawPacketFlag
	mov	r2, #120	@,
	str	r3, [r4, #80]	@ tmp135, MEM[(struct SM_INSTANCE_S *)__p_7].Config.LastRawDisContinueCount
	add	r1, r4, #48	@, __p,
	add	r0, sp, #8	@,,
	add	r5, r4, #163840	@ tmp173, __p,
	bl	memcpy	@
	mov	r0, r6	@, tmp134
	ldr	r6, [r5, #2412]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
	bl	SM_Stop	@
	adds	r0, r4, #168	@ D.40577, __p,
	beq	.L1176	@,
	add	r2, r4, #73728	@ tmp145, __p,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail
	ldr	r1, [r2, #168]	@ MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_7 + 168B].Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
.L1179:
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	mvn	r8, #0	@ tmp160,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #49056	@,
	mov	r0, r4	@, __p
	movt	r1, 2	@,
	ldrb	r7, [r5, #2408]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_7].InstID
	bl	__memzero	@
	add	r3, r4, #179200	@ tmp158, __p,
	add	r4, r4, #176128	@ tmp162, __p,
	add	r3, r3, #896	@ tmp158, tmp158,
	mov	r2, #2	@ tmp163,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mvn	r9, #0	@,
	str	r7, [r5, #2408]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_7].InstID
	mov	r0, #0	@,
	strd	r8, [r3, #-8]	@ tmp160, tmp158,
	sub	r6, r6, #1	@ D.40574, TmpMode,
	str	r2, [r4, #3996]	@ tmp163, MEM[(struct SM_INSTANCE_S *)__p_7].UpMsgStepNum
	add	r1, sp, #8	@,,
	bl	SM_Config	@
	cmp	r6, #1	@ D.40574,
	movls	r0, #0	@ D.40572,
	movls	r3, #1	@ tmp168,
	movhi	r0, #0	@ tmp171,
	strls	r3, [r5, #2412]	@ tmp168, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
	strhi	r0, [r5, #2412]	@ tmp171, MEM[(struct SM_INSTANCE_S *)__p_7].Mode
.L1181:
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1176:
	str	r0, [sp, #4]	@ D.40577, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #4]	@ D.40577, %sfp
	mov	r1, r0	@ D.40578, D.40577
	b	.L1179	@
.L1184:
	add	r1, r4, #96	@, __p,
	bl	ReleaseRawStreamData	@
	b	.L1175	@
.L1180:
	mvn	r0, #0	@ D.40572,
	bx	lr	@
.L1183:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40572,
	b	.L1181	@
.L1186:
	.align	2
.L1185:
	.word	.LANCHOR0
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
	.data
	.align	2
	.type	g_pSmIIS, %object
	.size	g_pSmIIS, 4
g_pSmIIS:
	.word	s_SmIIS
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"/kmod/hi_vfmw_avsp.bin\000"
	.space	1
.LC1:
	.ascii	"/system/lib/modules/hi_vfmw_avsp.bin\000"
	.space	3
.LC2:
	.ascii	"/kmod/hi_vfmw_h264.bin\000"
	.space	1
.LC3:
	.ascii	"/system/lib/modules/hi_vfmw_h264.bin\000"
	.space	3
.LC4:
	.ascii	"%8x\000"
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
	.type	LastEventTime.37048, %object
	.size	LastEventTime.37048, 4
LastEventTime.37048:
	.space	4
	.type	last_rec_pos_time.37253, %object
	.size	last_rec_pos_time.37253, 4
last_rec_pos_time.37253:
	.space	4
	.type	last_rec_pos_time.37335, %object
	.size	last_rec_pos_time.37335, 4
last_rec_pos_time.37335:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.37349, %object
	.size	last_rec_pos_time.37349, 4
last_rec_pos_time.37349:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
