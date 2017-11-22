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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(scd_drv)
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
	bic	r3, r3, #8128	@ D.42429, current_stack_pointer,
	bic	r3, r3, #63	@ D.42429, D.42429,
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
	bic	r3, r3, #8128	@ D.42425, current_stack_pointer,
	bic	r3, r3, #63	@ D.42425, D.42425,
	add	r8, sp, #24	@ tmp205,,
	mov	r2, #0	@ tmp173,
	mov	r0, #0	@ tmp174,
	mov	r1, #0	@,
	mov	r5, r2	@ calbakBaseaddr, tmp173
	str	r2, [r3, #8]	@ tmp173, _93->addr_limit
	mov	r4, #10	@ ivtmp.248,
	strd	r0, [r8, #-8]!	@ tmp174, pos
	b	.L16	@
.L18:
	strd	r10, [sp, #16]	@ ivtmp.248,,
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
	mov	r10, r4	@ ivtmp.248, ivtmp.248
	mov	fp, r4, asr #31	@ ivtmp.248, ivtmp.248,
	ldr	r1, .L26+4	@,
	add	r4, r4, #10	@ ivtmp.248, ivtmp.248,
	subs	ip, r0, #0	@ D.42426,
	add	r2, sp, #12	@ tmp213,,
	mov	r0, r6	@, data
	bne	.L18	@,
	mov	r1, ip	@, D.42426
	mov	r0, r9	@, fp
	str	ip, [sp, #4]	@ D.42426, %sfp
	bl	filp_close	@
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	ldr	r2, [sp]	@ fs, %sfp
	mov	r3, sp	@ current_stack_pointer, current_stack_pointer
	bic	r3, r3, #8128	@ D.42425, current_stack_pointer,
	bic	r3, r3, #63	@ D.42425, D.42425,
	str	r2, [r3, #8]	@ fs, _95->addr_limit
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp204,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	ldr	ip, [sp, #4]	@ D.42426, %sfp
	mov	r1, ip	@, D.42426
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
	ldr	r1, .L37	@ ivtmp.261,
	mov	r3, #0	@ i,
.L31:
	ldr	r2, [r1, #4]!	@ D.42453, MEM[base: _14, offset: 0B]
	cmp	r2, #0	@ D.42453,
	add	ip, r2, #168	@ D.42454, D.42453,
	beq	.L29	@,
	cmp	r0, ip	@ pRawArray, D.42454
	beq	.L32	@,
.L29:
	add	r3, r3, #1	@ i, i,
	cmp	r3, #4	@ i,
	bne	.L31	@,
	mvn	r0, #0	@ D.42452,
	bx	lr	@
.L32:
	mov	r0, r3	@ D.42452, i
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r0, #51228	@,
	ldr	r5, .L50	@ tmp147,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	ip, [r5]	@ D.42466, g_pstRegCrg
	ldr	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	orr	r4, r4, #32	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #120]	@ u32TmpValue, _8->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	bne	.L43	@,
	movw	r3, #9999	@ D.42469,
	b	.L41	@
.L49:
	subs	r3, r3, #1	@ D.42469, D.42469,
	beq	.L48	@,
.L41:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _8->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L49	@,
.L43:
	ldr	r3, .L50+4	@ tmp141,
	and	r1, r0, #1	@, D.42465,
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
.L48:
	str	r0, [sp, #4]	@ D.42465, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r5]	@ D.42466, g_pstRegCrg
	ldr	r0, [sp, #4]	@ D.42465, %sfp
	b	.L43	@
.L51:
	.align	2
.L50:
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
	add	r3, ip, #1	@ D.42484, D.42484,
	mov	r2, r3, asr #31	@ tmp136, D.42484,
	mov	r2, r2, lsr #22	@ tmp137, tmp136,
	add	r3, r3, r2	@ tmp138, D.42484, tmp137
	ubfx	r3, r3, #0, #10	@ tmp139, tmp138,,
	rsb	r3, r2, r3	@ D.42484, tmp137, tmp139
	cmp	r3, lr	@ D.42484, pRawStreamArray_3(D)->History
	beq	.L63	@,
	mov	r3, ip, asl #6	@ tmp146, D.42484,
	mov	r2, #72	@,
	add	ip, r3, ip, lsl #3	@ tmp147, tmp146, D.42484,
	add	r0, r0, ip	@, pRawStreamArray, tmp147
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	mov	r0, r5	@ D.42482, tmp131
	add	r3, r3, #1	@ D.42484, pRawStreamArray_3(D)->Tail,
	mov	r2, r3, asr #31	@ tmp159, D.42484,
	mov	r2, r2, lsr #22	@ tmp160, tmp159,
	add	r3, r3, r2	@ tmp161, D.42484, tmp160
	ubfx	r3, r3, #0, #10	@ tmp162, tmp161,,
	rsb	r3, r2, r3	@ D.42484, tmp160, tmp162
	str	r3, [r4, #4]	@ D.42484, pRawStreamArray_3(D)->Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L62:
	mvn	r0, #0	@ D.42482,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L63:
	mvn	r0, #3	@ D.42482,
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
	ldr	r3, [r0, #248]	@ D.42493, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42493,
	beq	.L68	@,
	add	r2, r3, #73728	@ tmp124, D.42493,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_5 + 168B].History, MEM[(struct RAW_ARRAY_S *)_5 + 168B].History
	add	r3, r3, #1	@ D.42494, MEM[(struct RAW_ARRAY_S *)_5 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp128, D.42494,
	mov	r2, r2, lsr #22	@ tmp129, tmp128,
	add	r3, r3, r2	@ tmp130, D.42494, tmp129
	ubfx	r3, r3, #0, #10	@ tmp131, tmp130,,
	rsb	r3, r2, r3	@ D.42494, tmp129, tmp131
	cmp	r3, r1	@ D.42494, MEM[(struct RAW_ARRAY_S *)_5 + 168B].History
	mvneq	r0, #3	@ D.42491,
	movne	r0, #0	@ D.42491,
	bx	lr	@
.L68:
	mvn	r0, #3	@ D.42491,
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
	ldr	r2, [ip]	@ D.42499, pRawStreamArray_3(D)->Head
	ldr	r0, [ip, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r2, r0	@ D.42499, pRawStreamArray_3(D)->Tail
	beq	.L75	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp136, D.42499,
	add	r1, r1, r2, lsl #3	@ tmp137, tmp136, D.42499,
	str	r2, [ip, #16]	@ D.42499, pRawStreamArray_3(D)->CurShowIndex
	add	r1, r3, r1	@, pRawStreamArray, tmp137
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.42497, tmp126
	ldmfd	sp!, {r4, pc}	@
.L74:
	mvn	r0, #0	@ D.42497,
	ldmfd	sp!, {r4, pc}	@
.L75:
	mvn	r0, #2	@ D.42497,
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
	add	r2, r2, #1	@ D.42508, pRawStreamArray_3(D)->CurShowIndex,
	mov	r3, r2, asr #31	@ tmp133, D.42508,
	mov	r3, r3, lsr #22	@ tmp134, tmp133,
	add	r2, r2, r3	@ tmp135, D.42508, tmp134
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
	mov	r0, r4	@ D.42506, tmp128
	ldmfd	sp!, {r4, pc}	@
.L79:
	mvn	r0, #0	@ D.42506,
	ldmfd	sp!, {r4, pc}	@
.L80:
	mvn	r0, #2	@ D.42506,
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
	cmp	r2, ip	@ D.42516, pRawStreamArray_3(D)->Tail
	beq	.L85	@,
	mov	ip, r2, asl #6	@ tmp129, D.42516,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.42516,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L86	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.42515,
	ldr	pc, [sp], #4	@
.L86:
	mvn	r0, #0	@ D.42515,
	ldr	pc, [sp], #4	@
.L85:
	mvn	r0, #2	@ D.42515,
	bx	lr	@
.L84:
	mvn	r0, #0	@ D.42515,
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
	ldr	r3, [r3, #12]	@ D.42521, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.42519, tmp126
	str	r3, [r1]	@ D.42521, *pOffset_5(D)
	bx	lr	@
.L91:
	mvn	r0, #0	@ D.42519,
	bx	lr	@
.L92:
	mvn	r0, #2	@ D.42519,
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
	moveq	r9, #1	@ tmp148,
	movne	r9, #0	@ tmp148,
	beq	.L108	@,
	ldr	r2, .L121	@ ivtmp.306,
	mov	r6, r1	@ DelNum, DelNum
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
.L98:
	ldr	r3, [r2, #4]!	@ D.42543, MEM[base: _64, offset: 0B]
	cmp	r3, #0	@ D.42543,
	add	r1, r3, #168	@ D.42545, D.42543,
	beq	.L95	@,
	cmp	r5, r1	@ pRawStreamArray, D.42545
	beq	.L120	@,
.L95:
	add	r9, r9, #1	@ i, i,
	cmp	r9, #4	@ i,
	bne	.L98	@,
.L96:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42540,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L120:
	cmp	r9, #0	@ i,
	blt	.L96	@,
	add	r7, r5, #73728	@ tmp194, pRawStreamArray,
	ldmia	r7, {r2, r3}	@ tmp194,,
	cmp	r2, r3	@ D.42541, D.42541
	addgt	r3, r3, #1024	@ D.42541, D.42541,
	rsb	r3, r2, r3	@ PacketNum, D.42541, D.42541
	cmp	r3, r6	@ PacketNum, DelNum
	bcc	.L96	@,
	cmp	r6, #0	@ DelNum,
	mov	r4, r2	@ j, D.42541
	beq	.L101	@,
	add	r9, r9, #58	@ tmp193, i,
	ldr	r3, .L121+4	@ tmp192,
	mov	r8, #0	@ i,
	add	r9, r3, r9, lsl #2	@ tmp196, tmp192, tmp193,
.L102:
	bl	vfmw_dprint_nothing	@
	mov	r3, r4, asl #6	@ tmp167, j,
	ldr	r2, [r9, #16]	@ D.42543, s_SmIIS.pSmInstArray
	add	r3, r3, r4, lsl #3	@ tmp168, tmp167, j,
	add	r3, r5, r3	@ tmp169, pRawStreamArray, tmp168
	add	r8, r8, #1	@ i, i,
	add	r2, r2, #73728	@ tmp162, D.42543,
	cmp	r8, r6	@ i, DelNum
	ldr	r1, [r3, #8]	@ pRawStreamArray_9(D)->RawPacket[j_55].Length, pRawStreamArray_9(D)->RawPacket[j_55].Length
	add	r4, r4, #1	@ D.42544, j,
	ldr	r3, [r2, #188]	@ _26->RawPacketArray.RawTotalSize, _26->RawPacketArray.RawTotalSize
	ubfx	r4, r4, #0, #10	@ j, D.42544,,
	rsb	r3, r1, r3	@ D.42541, pRawStreamArray_9(D)->RawPacket[j_55].Length, _26->RawPacketArray.RawTotalSize
	bic	r3, r3, r3, asr #31	@ D.42541, D.42541
	str	r3, [r2, #188]	@ D.42541, _26->RawPacketArray.RawTotalSize
	bne	.L102	@,
	ldr	r3, [r7]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp177,
	str	r0, [r7, #12]	@ tmp177, pRawStreamArray_9(D)->FirstPacketOffset
	add	r8, r8, r3	@ D.42541, i, pRawStreamArray_9(D)->Head
	str	r8, [r7]	@ D.42541, pRawStreamArray_9(D)->Head
	cmp	r8, #1024	@ D.42541,
	subge	r8, r8, #1024	@ D.42541, D.42541,
	strge	r8, [r7]	@ D.42541, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L101:
	cmp	r2, #1024	@ D.42541,
	str	r2, [r7]	@ D.42541, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.42540,
	subge	r2, r2, #1024	@ D.42541, D.42541,
	strge	r2, [r7]	@ D.42541, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L108:
	mvn	r0, #0	@ D.42540,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L122:
	.align	2
.L121:
	.word	.LANCHOR0+244
	.word	.LANCHOR0
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.type	DeleteLastSendRaw.part.0, %function
DeleteLastSendRaw.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L128	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L127	@,
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
.L127:
	b	vfmw_dprint_nothing	@
.L129:
	.align	2
.L128:
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
	clz	ip, r0	@ D.42558, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, ip, lsr #5	@ D.42558, D.42558,
	mov	r8, r1	@ Len, Len
	.pad #28
	sub	sp, sp, #28	@,,
	orrs	r1, ip, r8, lsr #31	@, tmp358, D.42558, Len,
	mov	r5, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r9, [sp, #64]	@ pPts, pPts
	ldr	r10, [sp, #80]	@ pDispFrameDistance, pDispFrameDistance
	ldr	fp, [sp, #84]	@ pDistanceBeforeFirstFrame, pDistanceBeforeFirstFrame
	ldr	r1, [sp, #88]	@ pGopNum, pGopNum
	ldr	r0, [sp, #92]	@ pRawPts, pRawPts
	bne	.L140	@,
	cmp	r3, #0	@ pOffset,
	cmpne	r2, #0	@, pNum,
	moveq	r6, #1	@ tmp181,
	movne	r6, #0	@ tmp181,
	beq	.L140	@,
	str	r3, [sp, #12]	@ pOffset, %sfp
	add	r3, r5, #73728	@ tmp341, pRawStreamArray,
	str	r2, [sp, #8]	@ pNum, %sfp
	cmp	ip, #0	@ D.42558,
	ldr	r2, [r3]	@ D.42559, pRawStreamArray_10(D)->Head
	ldr	r7, [r3, #12]	@ pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->FirstPacketOffset
	str	r3, [sp, #4]	@ tmp341, %sfp
	mov	ip, r2, asl #3	@ tmp337, D.42559,
	mov	r3, r2, asl #6	@ tmp338, D.42559,
	add	lr, ip, r3	@ tmp187, tmp337, tmp338
	add	lr, r5, lr	@ tmp188, pRawStreamArray, tmp187
	ldr	r4, [lr, #8]	@ pRawStreamArray_10(D)->RawPacket[_20].Length, pRawStreamArray_10(D)->RawPacket[_20].Length
	rsb	r4, r7, r4	@ TotalLen, pRawStreamArray_10(D)->FirstPacketOffset, pRawStreamArray_10(D)->RawPacket[_20].Length
	bne	.L132	@,
	ldr	lr, [sp, #4]	@ tmp341, %sfp
	ldr	lr, [lr, #4]	@ pRawStreamArray_10(D)->Tail, pRawStreamArray_10(D)->Tail
	subs	lr, lr, r2	@ RawNum, pRawStreamArray_10(D)->Tail, D.42559
	addmi	lr, lr, #1024	@ RawNum, RawNum,
.L138:
	add	r3, ip, r3	@ tmp200, tmp337, tmp338
	add	lr, lr, r2	@ RawNum, RawNum, D.42559
	add	r3, r5, r3	@ tmp201, pRawStreamArray, tmp200
	ldr	r2, [sp, #68]	@ tmp363, pUsertag
	ldr	ip, [sp, #76]	@ tmp365, pDispEnableFlag
	ldrd	r6, [r3, #16]	@ D.42560, tmp201,
	strd	r6, [r9]	@ D.42560, *pPts_28(D)
	ldrd	r6, [r3, #32]	@ D.42560, tmp201,
	strd	r6, [r2]	@ D.42560, *pUsertag_31(D)
	ldrd	r6, [r3, #16]	@ D.42560, tmp201,
	ldr	r2, [sp, #72]	@ tmp364, pDisptime
	strd	r6, [r0]	@ D.42560, *pRawPts_34(D)
	ldrd	r6, [r3, #40]	@ D.42560, tmp201,
	strd	r6, [r2]	@ D.42560, *pDisptime_37(D)
	ldr	r2, [r3, #56]	@ D.42561, pRawStreamArray_10(D)->RawPacket[_110].DispEnableFlag
	str	r2, [ip]	@ D.42561, *pDispEnableFlag_40(D)
	ldr	r2, [r3, #60]	@ D.42561, pRawStreamArray_10(D)->RawPacket[_110].DispFrameDistance
	str	r2, [r10]	@ D.42561, *pDispFrameDistance_43(D)
	ldr	r2, [r3, #64]	@ D.42561, pRawStreamArray_10(D)->RawPacket[_110].DistanceBeforeFirstFrame
	str	r2, [fp]	@ D.42561, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r3, #68]	@ D.42561, pRawStreamArray_10(D)->RawPacket[_110].GopNum
	str	r3, [r1]	@ D.42561, *pGopNum_49(D)
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	ip, [r3]	@ i, pRawStreamArray_10(D)->Head
	cmp	r8, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	strgt	r1, [sp, #88]	@ pGopNum, pGopNum
	strgt	r0, [sp, #92]	@ pRawPts, pRawPts
	bgt	.L136	@,
	b	.L137	@
.L135:
	strd	r6, [r9]	@ D.42557, *pPts_28(D)
	cmp	r8, r4	@ Len, TotalLen
	cmpge	lr, ip	@, RawNum, i
	ldrd	r6, [r2, #32]	@ D.42560, tmp278,
	ldr	r3, [sp, #68]	@ tmp370, pUsertag
	ldr	r1, [sp, #76]	@ tmp372, pDispEnableFlag
	strd	r6, [r3]	@ D.42560, *pUsertag_31(D)
	ldr	r3, [sp, #92]	@ tmp383, pRawPts
	ldrd	r6, [r2, #16]	@ D.42560, tmp278,
	strd	r6, [r3]	@ D.42560, *pRawPts_34(D)
	ldr	r3, [sp, #72]	@ tmp371, pDisptime
	ldrd	r6, [r2, #40]	@ D.42560, tmp278,
	strd	r6, [r3]	@ D.42560, *pDisptime_37(D)
	ldr	r3, [r2, #56]	@ D.42561, pRawStreamArray_10(D)->RawPacket[Index_53].DispEnableFlag
	str	r3, [r1]	@ D.42561, *pDispEnableFlag_40(D)
	ldr	r3, [r2, #60]	@ D.42561, pRawStreamArray_10(D)->RawPacket[Index_53].DispFrameDistance
	ldr	r1, [sp, #88]	@ tmp382, pGopNum
	str	r3, [r10]	@ D.42561, *pDispFrameDistance_43(D)
	ldr	r3, [r2, #64]	@ D.42561, pRawStreamArray_10(D)->RawPacket[Index_53].DistanceBeforeFirstFrame
	str	r3, [fp]	@ D.42561, *pDistanceBeforeFirstFrame_46(D)
	ldr	r3, [r2, #68]	@ D.42561, pRawStreamArray_10(D)->RawPacket[Index_53].GopNum
	str	r3, [r1]	@ D.42561, *pGopNum_49(D)
	ble	.L145	@,
.L136:
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
	ldrd	r6, [r2, #16]	@ D.42557, tmp264,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_53].Length, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	cmp	r7, r1	@ D.42557,
	cmpeq	r6, r0	@ D.42557, tmp369
	add	r4, r4, r3	@ TotalLen, TotalLen, pRawStreamArray_10(D)->RawPacket[Index_53].Length
	ldreqd	r6, [r9]	@ D.42557, *pPts_28(D)
	b	.L135	@
.L145:
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	r1, [r3]	@ D.42559, pRawStreamArray_10(D)->Head
	cmp	r1, ip	@ D.42559, i
	beq	.L137	@,
	ldr	r3, [r2, #8]	@ pRawStreamArray_10(D)->RawPacket[Index_105].Length, pRawStreamArray_10(D)->RawPacket[Index_105].Length
	mov	r0, #0	@ D.42556,
	ldr	r2, [sp, #8]	@ pNum, %sfp
	rsb	ip, r1, ip	@ D.42559, D.42559, i
	rsb	r4, r3, r4	@ TotalLen, pRawStreamArray_10(D)->RawPacket[Index_105].Length, TotalLen
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	rsb	r8, r4, r8	@ D.42559, TotalLen, Len
	str	ip, [r2]	@ D.42559, *pNum_15(D)
	str	r8, [r3]	@ D.42559, *pOffset_17(D)
.L143:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L137:
	ldr	r3, [sp, #8]	@ pNum, %sfp
	mov	r0, #0	@ tmp254,
	str	r0, [r3]	@ tmp254, *pNum_15(D)
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	str	r8, [r3]	@ Len, *pOffset_17(D)
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L132:
	str	r0, [sp, #20]	@ pRawPts, %sfp
	str	r1, [sp, #16]	@ pGopNum, %sfp
	bl	vfmw_dprint_nothing	@
	mov	lr, r6	@ RawNum, tmp181
	ldr	r3, [sp, #4]	@ tmp341, %sfp
	ldr	r1, [sp, #16]	@ pGopNum, %sfp
	ldr	r0, [sp, #20]	@ pRawPts, %sfp
	ldr	r2, [r3]	@ D.42559, pRawStreamArray_10(D)->Head
	mov	ip, r2, asl #3	@ tmp337, D.42559,
	mov	r3, r2, asl #6	@ tmp338, D.42559,
	b	.L138	@
.L140:
	mvn	r0, #0	@ D.42556,
	b	.L143	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r0	@ D.42565, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.42565, D.42565,
	orrs	ip, r3, r1, lsr #31	@, tmp137, D.42565, DelLen,
	.pad #88
	sub	sp, sp, #88	@,,
	bne	.L152	@,
	cmp	r3, #0	@ D.42565,
	str	ip, [sp, #32]	@ tmp137, DelNum
	str	ip, [sp, #36]	@ tmp137, RawPacketOffSet
	bne	.L152	@,
	add	r5, r0, #73728	@ tmp141, pRawStreamArray,
	mov	lr, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r5, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.42564, TotallLen,
	bne	.L148	@,
	cmp	r1, r3	@ DelLen, TotallLen
	bgt	.L152	@,
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
	ldr	r3, [r5]	@ D.42566, pRawStreamArray_3(D)->Head
	ldr	r1, [r5, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r3, r1	@ D.42566, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.42564,
	ldr	r2, [sp, #36]	@ D.42566, RawPacketOffSet
	beq	.L148	@,
	mov	lr, r3, asl #6	@ tmp167, D.42566,
	ldr	r1, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	lr, lr, r3, lsl #3	@ tmp168, tmp167, D.42566,
	add	lr, r4, lr	@ tmp169, pRawStreamArray, tmp168
	add	r2, r2, r1	@ TargetOffset, D.42566, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [lr, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r5, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L152	@,
.L148:
	mov	r0, r6	@, D.42564
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L152:
	mvn	r6, #0	@ D.42564,
	mov	r0, r6	@, D.42564
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
	cmp	r0, #3	@ SmID,
	bxhi	lr	@
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
	ldrne	r3, [r0, #20]	@ D.42573, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.42573, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.42573, pRawStreamArray_3(D)->FirstPacketOffset, D.42573
	strne	r0, [r1]	@ D.42573, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.42572, D.42573,
	mvneq	r0, #0	@ D.42572,
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
	beq	.L162	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.42578, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.42578, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.42578, D.42578,
	strmi	r3, [r1]	@ D.42578, *pStreamNum_8(D)
	movpl	r0, #0	@ D.42577,
	movmi	r0, #0	@ D.42577,
	bx	lr	@
.L162:
	mvn	r0, #0	@ D.42577,
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
	beq	.L165	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp134,
	movcc	r4, #1	@ tmp134,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp138, tmp134
	cmp	r4, #0	@ tmp138,
	bne	.L166	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp141, pStreamSegArray,
	mov	r0, r4	@ D.42581, tmp138
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L166:
	mvn	r0, #0	@ D.42581,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L165:
	mvn	r0, #0	@ D.42581,
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
	ldr	r2, [r0, #2072]	@ D.42586, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.42586, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.42586, pStreamSegArray_2(D)->SegBufWriteAddr
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
	ldr	ip, [r0, #2084]	@ D.42602, pStreamSegArray_1(D)->SegBufWriteAddr
	str	ip, [r1]	@ D.42602, *pAddr_3(D)
	str	r3, [r2]	@ tmp136, *pLength_7(D)
	ldr	r1, [r0, #2084]	@ D.42602, pStreamSegArray_1(D)->SegBufWriteAddr
	ldr	r3, [r0, #2080]	@ D.42602, pStreamSegArray_1(D)->SegBufReadAddr
	cmp	r1, r3	@ D.42602, D.42602
	bgt	.L184	@,
	ldrge	r0, [r0, #2076]	@ D.42602, pStreamSegArray_1(D)->SegBufSize
	rsblt	r3, r1, r3	@ D.42602, D.42602, D.42602
	ldrlt	r0, [r0, #2076]	@ D.42602, pStreamSegArray_1(D)->SegBufSize
	sublt	r3, r3, #1	@ Len, D.42602,
	subge	r3, r0, #1	@ Len, D.42602,
.L181:
	cmp	r3, r0	@ Len, D.42602
	strle	r3, [r2]	@ Len, *pLength_7(D)
	bx	lr	@
.L184:
	ldr	r0, [r0, #2076]	@ D.42602, pStreamSegArray_1(D)->SegBufSize
	rsb	r3, r1, r3	@ D.42602, D.42602, D.42602
	sub	r1, r0, #1	@ D.42602, D.42602,
	add	r3, r1, r3	@ Len, D.42602, D.42602
	b	.L181	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L233	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r5, #0	@ pstChan,
	beq	.L229	@,
	ldr	r3, [r5, #880]	@ D.42605, pstChan_10->eVidStd
	sub	ip, r3, #3	@ D.42606, D.42605,
	clz	ip, ip	@ D.42606, D.42606
	mov	ip, ip, lsr #5	@ D.42606, D.42606,
	cmp	r3, #0	@ D.42605,
	movne	r3, ip	@, D.42606, D.42606
	orreq	r3, ip, #1	@,, D.42606, D.42606
	cmp	r3, #0	@ D.42606,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r4, r5, #217088	@ tmp292, pstChan,
	ldr	r2, [r4, #384]	@ D.42607, pstChan_10->s32FindStartCodeCnt
	cmp	r2, #199	@ D.42607,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	lr, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_17(D), *pSegBufVirAddr_17(D)
	cmp	lr, #0	@ *pSegBufVirAddr_17(D),
	bne	.L228	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 1B],
	bne	.L228	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B]
	cmp	lr, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 2B],
	beq	.L193	@,
.L228:
	ldr	r6, [r4, #396]	@ D.42607, pstChan_10->s32CurrentStartCode
	mov	lr, #0	@ tmp291,
	ldr	r7, [r4, #392]	@ D.42607, pstChan_10->s32LastOneStartCode
	mov	r0, lr	@ D.42606, tmp291
	mov	r8, lr	@ D.42607, D.42606
	mov	r9, lr	@ u8Data, D.42606
	add	r2, r2, #1	@ D.42607, D.42607,
	str	lr, [r4, #396]	@ tmp291, pstChan_10->s32CurrentStartCode
	str	r2, [r4, #384]	@ D.42607, pstChan_10->s32FindStartCodeCnt
	str	r6, [r4, #392]	@ D.42607, pstChan_10->s32LastOneStartCode
	str	r7, [r4, #388]	@ D.42607, pstChan_10->s32LastTwoStartCode
.L194:
	cmp	r3, #0	@ D.42606,
	beq	.L230	@,
.L195:
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.42607, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.42607, pstChan_10->s32Mpeg2Score
.L196:
	cmp	r0, #0	@ D.42606,
	beq	.L197	@,
	rsb	r3, r6, r8	@ D.42607, D.42607, D.42607
	cmp	r3, #1	@ D.42607,
	beq	.L231	@,
.L198:
	cmp	r6, r8	@ D.42607, D.42607
	cmpeq	r7, r6	@, D.42607, D.42607
	beq	.L199	@,
.L197:
	cmp	r2, #199	@ D.42607,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	lr, [r4, #376]	@ D.42607, pstChan_10->s32H264Score
	mov	r6, r1	@ InstID, InstID
	ldr	r3, [r4, #380]	@ D.42607, pstChan_10->s32Mpeg2Score
	rsb	r2, r3, lr	@ D.42607, D.42607, D.42607
	cmp	r2, #49	@ D.42607,
	movle	ip, #0	@, tmp270
	andgt	ip, ip, #1	@,, tmp270, D.42606
	cmp	ip, #0	@ tmp270,
	bne	.L232	@,
.L201:
	rsb	r3, lr, r3	@ D.42607, D.42607, D.42607
	cmp	r3, #49	@ D.42607,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r5, #880]	@ pstChan_10->eVidStd, pstChan_10->eVidStd
	cmp	r2, #0	@ pstChan_10->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L233+4	@ tmp278,
	ldr	r3, [r3]	@ D.42609, g_event_report
	cmp	r3, #0	@ D.42609,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r0, r6	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.42609
.L230:
	add	r9, r9, #73	@ tmp226, u8Data,
	uxtb	r9, r9	@ tmp227, tmp226
	cmp	r9, #3	@ tmp227,
	bhi	.L196	@,
	b	.L195	@
.L232:
	ldr	r2, .L233+4	@ tmp271,
	ldr	ip, [r2]	@ D.42609, g_event_report
	cmp	ip, #0	@ D.42609,
	beq	.L201	@,
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r6	@, InstID
	blx	ip	@ D.42609
	ldr	r3, [r4, #380]	@ D.42607, pstChan_10->s32Mpeg2Score
	ldr	lr, [r4, #376]	@ D.42607, pstChan_10->s32H264Score
	b	.L201	@
.L193:
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_17(D) + 3B]
	add	r2, r2, #1	@ D.42607, D.42607,
	ldr	r6, [r4, #396]	@ D.42607, pstChan_10->s32CurrentStartCode
	and	r8, r9, #31	@ D.42607, u8Data,
	ands	r0, r9, #31	@ tmp181, u8Data,
	sub	lr, r8, #30	@ tmp208, D.42607,
	sub	r10, r9, #1	@ tmp189, u8Data,
	movne	r0, #1	@ tmp181,
	cmp	r8, #19	@ D.42607,
	cmpne	lr, #1	@, tmp208,
	uxtb	r10, r10	@ tmp191, tmp189
	sub	r7, r8, #1	@ D.42611, D.42607,
	add	r3, r9, #79	@ tmp185, u8Data,
	movls	lr, #1	@ tmp212,
	movhi	lr, #0	@ tmp212,
	cmp	r7, #12	@ D.42611,
	orrls	lr, lr, #1	@,, tmp219, tmp212
	cmp	r10, #183	@ tmp191,
	uxtb	r3, r3	@ tmp187, tmp185
	ldr	r7, [r4, #392]	@ D.42607, pstChan_10->s32LastOneStartCode
	movls	r10, #0	@ tmp192,
	movhi	r10, #1	@ tmp192,
	cmp	r2, #2	@ D.42607,
	movle	r0, #0	@, D.42606
	andgt	r0, r0, #1	@,, D.42606, tmp181
	cmp	r3, #4	@ tmp187,
	movhi	r3, r10	@, D.42606, tmp192
	orrls	r3, r10, #1	@,, D.42606, tmp192
	cmp	lr, #0	@ tmp219,
	str	r2, [r4, #384]	@ D.42607, pstChan_10->s32FindStartCodeCnt
	str	r8, [r4, #396]	@ D.42607, pstChan_10->s32CurrentStartCode
	ldrne	lr, [r4, #376]	@ pstChan_10->s32H264Score, pstChan_10->s32H264Score
	str	r6, [r4, #392]	@ D.42607, pstChan_10->s32LastOneStartCode
	addne	lr, lr, #1	@ D.42607, pstChan_10->s32H264Score,
	str	r7, [r4, #388]	@ D.42607, pstChan_10->s32LastTwoStartCode
	strne	lr, [r4, #376]	@ D.42607, pstChan_10->s32H264Score
	b	.L194	@
.L231:
	rsb	r3, r7, r6	@ D.42607, D.42607, D.42607
	cmp	r3, #1	@ D.42607,
	bne	.L198	@,
.L199:
	cmp	r8, #1	@ D.42607,
	cmpne	r8, #20	@, D.42607,
	beq	.L197	@,
	ldr	r3, [r4, #376]	@ D.42607, pstChan_10->s32H264Score
	cmp	r3, #0	@ D.42607,
	subgt	r3, r3, #1	@ D.42607, D.42607,
	strgt	r3, [r4, #376]	@ D.42607, pstChan_10->s32H264Score
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.42607, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.42607, pstChan_10->s32Mpeg2Score
	b	.L197	@
.L229:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L234:
	.align	2
.L233:
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
	beq	.L237	@,
	add	r4, r0, #90112	@ tmp153, pStreamSegArray,
	movw	r5, #36409	@ tmp158,
	movt	r5, 14563	@ tmp158,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.42616, pStreamSegArray_5(D)->Tail,
	smull	r6, r7, r3, r5	@ tmp157, D.42616, tmp158
	mov	ip, r3, asr #31	@ tmp160, D.42616,
	rsb	ip, ip, r7, asr #8	@ tmp156, tmp160,,
	mov	r6, ip, asl #10	@ tmp163, tmp156,
	add	ip, r6, ip, lsl #7	@ tmp164, tmp163, tmp156,
	rsb	r3, ip, r3	@ D.42616, tmp164, D.42616
	cmp	r3, lr	@ D.42616, pStreamSegArray_5(D)->Head
	beq	.L238	@,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r6]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r7, [r4, #2060]	@ D.42616, pStreamSegArray_5(D)->Tail
	mov	r1, r6	@, pStreamSeg
	mov	r2, #80	@,
	mov	r3, r7, asl #6	@ tmp174, D.42616,
	add	r7, r3, r7, lsl #4	@ tmp175, tmp174, D.42616,
	add	r0, r7, #8	@ tmp176, tmp175,
	add	r7, r9, r7	@ tmp196, pStreamSegArray, tmp175
	add	r0, r9, r0	@, pStreamSegArray, tmp176
	bl	memcpy	@
	ldr	r3, [r4, #2060]	@ D.42616, pStreamSegArray_5(D)->Tail
	mov	lr, #1	@ tmp190,
	mov	r0, r8	@ D.42614, tmp151
	add	ip, r3, lr	@ D.42616, D.42616,
	mov	r2, r3, asl #6	@ tmp186, D.42616,
	smull	r10, fp, ip, r5	@ tmp201, D.42616, tmp158
	add	r2, r2, r3, lsl #4	@ tmp187, tmp186, D.42616,
	add	r2, r9, r2	@ tmp188, pStreamSegArray, tmp187
	mov	r1, ip, asr #31	@ tmp204, D.42616,
	strb	lr, [r2, #12]	@ tmp190, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r3, [r7, #24]	@ D.42616, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	rsb	r2, r1, fp, asr #8	@ tmp205, tmp204,,
	ldr	lr, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	ldr	r1, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	mov	r3, r2, asl #10	@ tmp208, tmp205,
	add	r3, r3, r2, lsl #7	@ tmp209, tmp208, tmp205,
	ldr	r2, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	rsb	r3, r3, ip	@ D.42616, tmp209, D.42616
	str	r3, [r4, #2060]	@ D.42616, pStreamSegArray_5(D)->Tail
	ldr	r3, [r6, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r2, #1	@ D.42616, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, r3, ip	@ D.42618, pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2084]	@ D.42618, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, lr, r3	@ D.42618, pStreamSegArray_5(D)->SegTotalSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2088]	@ D.42618, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.42616, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r1, r3	@ D.42618, pStreamSegArray_5(D)->SegFreshSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2092]	@ D.42618, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L238:
	mvn	r0, #3	@ D.42614,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L237:
	mvn	r0, #0	@ D.42614,
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
	beq	.L247	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp205, pStreamSegArray,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.42624, pStreamSegArray_7(D)->Tail
	cmp	lr, r3	@ D.42624, i
	beq	.L249	@,
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp146, tmp203, tmp204
	add	r2, r0, r2	@ tmp147, pStreamSegArray, tmp146
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState, pStreamSegArray_7(D)->StreamSeg[i_13].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState,
	movwne	r6, #36409	@ tmp206,
	movtne	r6, 14563	@ tmp206,
	bne	.L244	@,
	b	.L242	@
.L255:
	add	r2, r0, r2	@ tmp154, pStreamSegArray, tmp153
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState, pStreamSegArray_7(D)->StreamSeg[i_17].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState,
	beq	.L242	@,
.L244:
	add	ip, r3, #1	@ D.42624, i,
	smull	r2, r3, ip, r6	@ tmp162, D.42624, tmp206
	mov	r2, ip, asr #31	@ tmp165, D.42624,
	rsb	r3, r2, r3, asr #8	@ i, tmp165,,
	mov	r2, r3, asl #10	@ tmp168, i,
	add	r3, r2, r3, lsl #7	@ tmp169, tmp168, i,
	rsb	r3, r3, ip	@ i, tmp169, D.42624
	cmp	lr, r3	@ D.42624, i
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp153, tmp203, tmp204
	bne	.L255	@,
.L249:
	mvn	r0, #2	@ D.42625,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L242:
	add	r4, ip, r4	@ tmp160, tmp203, tmp204
	add	r3, r4, #8	@ tmp161, tmp160,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp161
	beq	.L249	@,
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
	rsb	r2, r1, r2	@ D.42628, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_36].LenInByte, pStreamSegArray_7(D)->SegFreshSize
	sub	r3, r3, #1	@ D.42624, pStreamSegArray_7(D)->SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.42624, D.42628
	str	r2, [r5, #2092]	@ D.42624, pStreamSegArray_7(D)->SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.42624, D.42624
	str	r3, [r5, #2096]	@ D.42624, pStreamSegArray_7(D)->SegFreshNum
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42625,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L247:
	mvn	r0, #0	@ D.42625,
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
	beq	.L276	@,
	movw	r3, #64382	@ tmp147,
	sub	r2, r1, #1152	@ D.42638, StreamID,
	movt	r3, 65535	@ tmp147,
	cmp	r2, r3	@ D.42638, tmp147
	mov	r4, r1	@ StreamID, StreamID
	bls	.L276	@,
	cmn	r1, #1	@ StreamID,
	add	r6, r5, #90112	@ tmp252, pStreamSegArray,
	beq	.L291	@,
	ldr	r3, [r6, #2056]	@ i, pStreamSegArray_15(D)->Head
	ldr	ip, [r6, #2060]	@ D.42638, pStreamSegArray_15(D)->Tail
	cmp	r3, ip	@ i, D.42638
	beq	.L260	@,
	cmp	r1, r3	@ StreamID, i
	movwne	lr, #36409	@ tmp256,
	movtne	lr, 14563	@ tmp256,
	bne	.L267	@,
	b	.L265	@
.L287:
	cmp	r4, r3	@ StreamID, i
	beq	.L265	@,
.L267:
	add	r2, r3, #1	@ D.42638, i,
	umull	r0, r1, r2, lr	@ tmp195, D.42638, tmp256
	mov	r3, r1, lsr #8	@ i,,
	mov	r1, r3, asl #10	@ tmp199, i,
	add	r3, r1, r3, lsl #7	@ tmp200, tmp199, i,
	rsb	r3, r3, r2	@ i, tmp200, D.42638
	cmp	r3, ip	@ i, D.42638
	bne	.L287	@,
.L260:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #2	@ D.42637,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L265:
	mov	r2, r3, asl #6	@ tmp185, i,
	add	r3, r2, r3, lsl #4	@ tmp186, tmp185, i,
	add	r2, r5, r3	@ tmp187, pStreamSegArray, tmp186
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_15(D)->StreamSeg[i_76].SegState, pStreamSegArray_15(D)->StreamSeg[i_76].SegState
	cmp	r2, #2	@ pStreamSegArray_15(D)->StreamSeg[i_76].SegState,
	addeq	r3, r3, #8	@ tmp194, tmp186,
	addeq	r7, r5, r3	@ pSeg, pStreamSegArray, tmp194
	bne	.L260	@,
.L262:
	cmp	r7, #0	@ pSeg,
	beq	.L260	@,
	mov	r3, #0	@ tmp201,
	strb	r3, [r7, #4]	@ tmp201, pSeg_6->SegState
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r6, #2056]	@ pStreamSegArray_15(D)->Head, pStreamSegArray_15(D)->Head
	cmp	r3, r4	@ pStreamSegArray_15(D)->Head, StreamID
	beq	.L292	@,
.L269:
	ldr	r2, [r7, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.42637,
	ldr	r3, [r6, #2088]	@ pStreamSegArray_15(D)->SegTotalSize, pStreamSegArray_15(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.42638, pSeg_6->LenInByte, pStreamSegArray_15(D)->SegTotalSize
	bic	r3, r3, r3, asr #31	@ D.42639, D.42638
	str	r3, [r6, #2088]	@ D.42639, pStreamSegArray_15(D)->SegTotalSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L291:
	ldr	r9, [r6, #2056]	@ D.42639, pStreamSegArray_15(D)->Head
	ldr	r3, [r6, #2060]	@ pStreamSegArray_15(D)->Tail, pStreamSegArray_15(D)->Tail
	cmp	r9, r3	@ D.42639, pStreamSegArray_15(D)->Tail
	beq	.L260	@,
	mov	r3, r9, asl #6	@ tmp251, D.42639,
	mov	r4, r9	@ StreamID, D.42639
	add	r9, r3, r9, lsl #4	@ tmp156, tmp251, D.42639,
	bl	vfmw_dprint_nothing	@
	add	r7, r9, #8	@ tmp157, tmp156,
	add	r9, r5, r9	@ tmp162, pStreamSegArray, tmp156
	add	r7, r5, r7	@ pSeg, pStreamSegArray, tmp157
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	cmp	r3, #0	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte,
	movne	r8, #0	@ i,
	beq	.L264	@,
.L263:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r9, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte
	add	r8, r8, #1	@ i, i,
	cmp	r3, r8	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_15(D)].StreamSeg[_19].LenInByte, i
	movhi	r3, #1	@ tmp178,
	movls	r3, #0	@ tmp178,
	cmp	r8, #15	@ i,
	movhi	r3, #0	@ tmp178,
	cmp	r3, #0	@ tmp178,
	bne	.L263	@,
.L264:
	bl	vfmw_dprint_nothing	@
	b	.L262	@
.L292:
	movw	r8, #36409	@ tmp253,
	movt	r8, 14563	@ tmp253,
	b	.L272	@
.L270:
	ldr	r2, [r6, #2060]	@ D.42639, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.42639, StreamID
	beq	.L273	@,
	ldrsb	r2, [r3, #12]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState, pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState
	cmp	r2, #0	@ pStreamSegArray_15(D)->StreamSeg[StreamID_5].SegState,
	bne	.L293	@,
.L277:
	add	r3, r4, #1	@ D.42638, StreamID,
	umull	r0, r1, r3, r8	@ tmp233, D.42638, tmp253
	mov	r4, r1, lsr #8	@ StreamID,,
	mov	r1, r4, asl #10	@ tmp237, StreamID,
	add	r4, r1, r4, lsl #7	@ tmp238, tmp237, StreamID,
	rsb	r4, r4, r3	@ StreamID, tmp238, D.42638
.L272:
	mov	r3, r4, asl #6	@ tmp217, StreamID,
	cmp	r4, #1152	@ StreamID,
	add	r3, r3, r4, lsl #4	@ tmp218, tmp217, StreamID,
	add	r3, r5, r3	@ tmp219, pStreamSegArray, tmp218
	bcc	.L270	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r6, #2060]	@ D.42639, pStreamSegArray_15(D)->Tail
	cmp	r2, r4	@ D.42639, StreamID
	bne	.L277	@,
.L273:
	ldr	r3, [r6, #2084]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufWriteAddr
	str	r2, [r6, #2056]	@ D.42639, pStreamSegArray_15(D)->Head
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->SegBufWriteAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L269	@
.L293:
	str	r4, [r6, #2056]	@ StreamID, pStreamSegArray_15(D)->Head
	ldr	r3, [r3, #16]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr, pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr
	str	r3, [r6, #2080]	@ pStreamSegArray_15(D)->StreamSeg[StreamID_71].PhyAddr, pStreamSegArray_15(D)->SegBufReadAddr
	b	.L269	@
.L276:
	mvn	r0, #0	@ D.42637,
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
	movne	r0, #0	@ D.42643,
	mvneq	r0, #0	@ D.42643,
	ldrne	r3, [r3, #2088]	@ D.42644, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ D.42644, *pStreamSize_6(D)
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
	add	r3, r3, #1152	@ D.42647, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.42647, pSegStreamArray_2(D)->Head, D.42647
	smull	r0, r1, r3, r2	@ tmp127, D.42647, tmp128
	mov	r2, r3, asr #31	@ tmp130, D.42647,
	rsb	r2, r2, r1, asr #8	@ D.42647, tmp130,,
	mov	r0, r2, asl #10	@ tmp133, D.42647,
	add	r0, r0, r2, lsl #7	@ tmp134, tmp133, D.42647,
	rsb	r0, r0, r3	@, tmp134, D.42647
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
	ldrne	r3, [r0, #2096]	@ D.42651, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ D.42651, *pFreshNum_5(D)
	ldrne	r3, [r0, #2092]	@ D.42651, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ D.42651, *pFreshSize_8(D)
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
	ldr	r3, .L307	@ tmp114,
	ldr	r0, [r3, #296]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L306	@,
	ldr	r2, [r3, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #296]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L306:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L308:
	.align	2
.L307:
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
	ldr	r3, .L310	@ tmp113,
	ldr	r0, [r3, #296]	@, s_eScdDrvSleepStage
	bx	lr	@
.L311:
	.align	2
.L310:
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
	ldr	r3, .L317	@ tmp111,
	ldr	r2, [r3, #296]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #296]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L318:
	.align	2
.L317:
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
	ldr	r3, .L323	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #8]	@ D.42664, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.42664,
	beq	.L320	@,
	blx	r3	@ D.42664
.L321:
	ldr	r3, .L323+4	@ tmp112,
	mov	r2, #0	@ tmp113,
	str	r2, [r3, #296]	@ tmp113, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L320:
	bl	vfmw_dprint_nothing	@
	b	.L321	@
.L324:
	.align	2
.L323:
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
	cmp	r0, #3	@ SmID,
	bhi	.L327	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r0, #58	@ tmp118, SmID,
	ldr	r4, .L330	@ tmp117,
	movw	r1, #49056	@,
	movt	r1, 2	@,
	mvn	r5, #0	@,
	add	r4, r4, r0, lsl #2	@ tmp119, tmp117, tmp118,
	ldr	r0, [r4, #16]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r3, [r4, #16]	@ tmp126, s_SmIIS.pSmInstArray
	mov	r0, #0	@ D.42667,
	mvn	r4, #0	@ tmp130,
	add	r3, r3, #179200	@ tmp128, tmp126,
	add	r3, r3, #896	@ tmp128, tmp128,
	strd	r4, [r3, #-8]	@ tmp130, tmp128,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L327:
	mvn	r0, #0	@ D.42667,
	bx	lr	@
.L331:
	.align	2
.L330:
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
	ldr	lr, .L347	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L347+4	@ tmp179,
	movt	ip, 4115	@ tmp141,
	mov	r5, r0	@ MemAddr, MemAddr
	mov	r8, r1	@ MemSize, MemSize
	ldr	r2, [lr, #8]	@ D.42673, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r2, #0	@ D.42673,
	beq	.L333	@,
	blx	r2	@ D.42673
.L334:
	ldr	r3, [r4, #280]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L347+4	@ tmp143,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L338	@,
	bl	ResetSCD	@
	mov	r1, #284	@,
	add	r0, r4, #12	@, tmp143,
	mov	r7, #0	@ tmp148,
	bl	__memzero	@
	add	r3, r5, #3	@ D.42674, MemAddr,
	bic	r3, r3, #3	@ D.42674, D.42674,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.42674
	str	r3, [r4, #20]	@ D.42674, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.42674
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #296]	@ tmp148, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.42676, Offset,
	mov	r2, #12288	@ tmp155,
	add	r3, r5, r3	@ D.42674, MemAddr, D.42676
	str	r2, [r4, #28]	@ tmp155, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.42674, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.42674, Offset, MemAddr
	add	r5, r5, #26112	@ D.42676, D.42674,
	add	r5, r5, #127	@ D.42676, D.42676,
	bic	r5, r5, #127	@ D.42676, D.42676,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.42674
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp160,
	str	r5, [r4, #4]	@ D.42676, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp160, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.42676
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.42675,
	str	r0, [r4, #300]	@ D.42675, g_hex_base_vir_addr
	beq	.L346	@,
	add	r6, r6, #44032	@ D.42676, Offset,
	mov	r3, #17920	@ tmp168,
	cmp	r8, r6	@ MemSize, D.42676
	str	r10, [r4, #80]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #84]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp168, g_hex_len
	blt	.L338	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L338	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, #0	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L338	@,
	mov	r3, #1	@ tmp177,
	mov	r0, r7	@ D.42672, tmp148
	str	r3, [r4, #280]	@ tmp177, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L333:
	bl	vfmw_dprint_nothing	@
	b	.L334	@
.L338:
	mvn	r0, #6	@ D.42672,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L346:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42672,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L348:
	.align	2
.L347:
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
	ldr	r3, .L358	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #248]	@ D.42681, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42681,
	beq	.L350	@,
	ldr	r2, [r3, #64]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L350	@,
	add	r3, r3, #163840	@ tmp121, D.42681,
	ldr	r2, [r3, #2412]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2412]	@ tmp125, _5->Mode
.L350:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L359:
	.align	2
.L358:
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
	ldr	r2, .L370	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #248]	@ D.42696, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42696,
	beq	.L363	@,
	add	r3, r3, #163840	@ tmp121, D.42696,
	ldr	r1, [r3, #2412]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L363	@,
	ldr	r2, [r2, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2412]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L363	@,
	mvn	r0, #6	@ D.42694,
	bx	lr	@
.L363:
	mov	r0, #0	@ D.42694,
	bx	lr	@
.L371:
	.align	2
.L370:
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
	ldr	r0, .L374	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L375:
	.align	2
.L374:
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
	bhi	.L383	@,
	ldr	r3, .L393	@ tmp134,
	add	r0, r3, r0, lsl #2	@ tmp136, tmp134, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L392	@,
	add	ip, r0, #163840	@ tmp189, pSmInstArray,
	add	r3, r0, #176128	@ tmp145, pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmn	r0, #168	@ pSmInstArray,
	ldr	r2, [ip, #2412]	@ pSmInstArray_6->Mode, pSmInstArray_6->Mode
	add	r0, r0, #73728	@ tmp190, pSmInstArray,
	strb	r2, [r1]	@ pSmInstArray_6->Mode, pSmInstInfo_7(D)->InstMode
	ldr	r3, [r3, #3988]	@ D.42703, pSmInstArray_6->numReadSegFail
	str	r3, [r1, #20]	@ D.42703, pSmInstInfo_7(D)->numReadSegFail
	beq	.L379	@,
	ldr	r3, [r0, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail
	ldr	r2, [r0, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head
	subs	r3, r3, r2	@ D.42703, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].Head
	addmi	r3, r3, #1024	@ D.42703, D.42703,
	strmi	r3, [r1, #4]	@ D.42703, MEM[(HI_S32 *)pSmInstInfo_7(D) + 4B]
	strpl	r3, [r1, #4]	@ D.42703, MEM[(HI_S32 *)pSmInstInfo_7(D) + 4B]
.L381:
	ldr	r3, [r0, #188]	@ D.42703, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].RawTotalSize
	str	r3, [r1, #12]	@ D.42703, MEM[(HI_S32 *)pSmInstInfo_7(D) + 12B]
	ldr	r2, [r0, #180]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset
	rsb	r3, r2, r3	@ D.42703, MEM[(struct RAW_ARRAY_S *)pSmInstArray_6 + 168B].FirstPacketOffset, D.42703
	str	r3, [r1, #12]	@ D.42703, MEM[(HI_S32 *)pSmInstInfo_7(D) + 12B]
.L379:
	ldr	r3, [ip, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail
	movw	r4, #36409	@ tmp167,
	ldr	r2, [ip, #2248]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head
	movt	r4, 14563	@ tmp167,
	add	r3, r3, #1152	@ D.42703, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Tail,
	adds	r0, r0, #192	@ D.42706, tmp190,
	rsb	r3, r2, r3	@ D.42703, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].Head, D.42703
	movne	r0, #0	@ D.42701,
	smull	r4, r5, r3, r4	@ tmp166, D.42703, tmp167
	mov	r2, r3, asr #31	@ tmp169, D.42703,
	rsb	r2, r2, r5, asr #8	@ tmp170, tmp169,,
	mov	lr, r2, asl #10	@ tmp173, tmp170,
	add	r2, lr, r2, lsl #7	@ tmp174, tmp173, tmp170,
	rsb	r3, r2, r3	@ D.42703, tmp174, D.42703
	str	r3, [r1, #8]	@ D.42703, pSmInstInfo_7(D)->SegNum
	ldrne	r3, [ip, #2280]	@ D.42703, MEM[(struct SEG_ARRAY_S *)pSmInstArray_6 + 73920B].SegTotalSize
	strne	r3, [r1, #16]	@ D.42703, MEM[(HI_S32 *)pSmInstInfo_7(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L392:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L383	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_7(D)->InstMode
	mvn	r0, #0	@ D.42701,
	bx	lr	@
.L383:
	mvn	r0, #0	@ D.42701,
	bx	lr	@
.L394:
	.align	2
.L393:
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
	ldr	r3, .L400	@ tmp122,
	ldr	ip, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	add	r0, r3, r0, lsl #2	@ tmp124, tmp122, SmID,
	cmp	ip, #0	@ pRawPacket_6(D)->PhyAddr,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	beq	.L396	@,
	ldr	r3, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r3, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L396	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
.L396:
	mvn	r0, #0	@,
	bx	lr	@
.L401:
	.align	2
.L400:
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
	ldr	r3, .L431	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp203, tmp201, SmID,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L419	@,
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
	bne	.L419	@,
	ldr	r6, [r10, #172]	@ D.42724, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Tail
	ldr	r3, [r10, #168]	@ D.42724, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	cmp	r6, r3	@ D.42724, D.42724
	beq	.L406	@,
	mov	r9, r3, asl #3	@ tmp446, index,
	mov	r2, r3, asl #6	@ tmp447, index,
	add	lr, r9, r2	@ tmp224, tmp446, tmp447
	mov	r4, #1	@ rawnum,
	add	lr, r5, lr	@ tmp225, pSmInstArray, tmp224
	mov	fp, r9	@ tmp442, tmp446
	mov	ip, r2	@ tmp444, tmp447
	ldr	r7, [lr, #176]	@ TotalSrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	b	.L405	@
.L407:
	add	r4, r4, #1	@ rawnum, rawnum,
	ldr	r8, [r8, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	cmp	r4, #1024	@ rawnum,
	add	r7, r7, r8	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	movls	lr, #0	@ tmp237,
	movhi	lr, #1	@ tmp237,
	cmp	r3, r6	@ index, D.42724
	orreq	lr, lr, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L406	@,
.L405:
	add	lr, fp, ip	@ tmp244, tmp442, tmp444
	add	r3, r3, #1	@ D.42726, index,
	add	lr, r5, lr	@ tmp245, pSmInstArray, tmp244
	ubfx	r3, r3, #0, #10	@ index, D.42726,,
	ldrb	lr, [lr, #220]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	mov	fp, r3, asl #3	@ tmp442, index,
	mov	ip, r3, asl #6	@ tmp444, index,
	cmp	lr, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag,
	add	r8, fp, ip	@ tmp230, tmp442, tmp444
	add	r8, r5, r8	@ tmp231, pSmInstArray, tmp230
	bne	.L407	@,
	str	r0, [sp, #20]	@ SmID, %sfp
	mov	r8, lr	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	ldr	r0, [sp, #8]	@, %sfp
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	str	r2, [sp]	@ tmp447, %sfp
	bl	ResetStreamSegArray	@
	add	r0, r5, #163840	@ tmp251, pSmInstArray,
	ldr	r3, [r0, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize
	sub	r3, r3, #262144	@ D.42724, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize,
	cmp	r3, r7	@ D.42724, TotalSrcLength
	ldr	r2, [sp]	@ tmp447, %sfp
	blt	.L428	@,
	ldr	r1, [r5, #56]	@ D.42721, pSmInstArray_20->Config.VidStd
	ldr	r0, [r0, #2264]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufPhyAddr
	sub	r3, r1, #10	@ D.42721, D.42721,
	ldr	fp, [r10, #192]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].pSegBufVirAddr
	bics	r3, r3, #2	@ tmp479, D.42721,
	bne	.L409	@,
	ldr	r3, .L431+4	@ tmp262,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r3, #1	@ D.42724, g_VdmCharacter,
	streqb	r3, [fp]	@ D.42724, *TmpVirAddr_46
	addeq	fp, fp, #1	@ TmpVirAddr, TmpVirAddr,
	ldreq	r1, [r5, #56]	@ D.42721, pSmInstArray_20->Config.VidStd
.L409:
	add	r3, r9, r2	@ tmp270, tmp446, tmp447
	cmp	r1, #12	@ D.42721,
	add	r3, r5, r3	@ tmp271, pSmInstArray, tmp270
	ldr	r10, [r10, #168]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	ldr	r1, [r3, #172]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].VirAddr
	ldr	r3, [r3, #176]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	str	r3, [sp]	@ SrcLength, %sfp
	beq	.L429	@,
.L410:
	str	r0, [r6, #8]	@ TmpPhyAddr, pStreamSeg_26(D)->PhyAddr
	str	r2, [sp, #16]	@ tmp447, %sfp
	str	r1, [sp, #4]	@ SrcVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ rawnum,
	mov	r3, #1	@ tmp369,
	ldr	r2, [sp, #16]	@ tmp447, %sfp
	str	r0, [r6]	@ D.42728, pStreamSeg_26(D)->VirAddr
	rsb	r0, r0, fp	@ D.42724, D.42728, TmpVirAddr
	add	r9, r9, r2	@ tmp354, tmp446, tmp447
	str	r0, [r6, #12]	@ D.42724, pStreamSeg_26(D)->LenInByte
	add	r9, r5, r9	@ tmp355, pSmInstArray, tmp354
	ldrd	r0, [r9, #184]	@ tmp492, tmp355,
	strd	r0, [r6, #24]	@ tmp492, pStreamSeg,
	ldrd	r0, [r9, #184]	@ tmp493, tmp355,
	strd	r0, [r6, #32]	@ tmp493, pStreamSeg,
	ldrd	r0, [r9, #200]	@ tmp494, tmp355,
	strb	r3, [r6, #5]	@ tmp369, pStreamSeg_26(D)->IsLastSeg
	strd	r0, [r6, #40]	@ tmp494, pStreamSeg,
	ldr	r1, [sp, #4]	@ SrcVirAddr, %sfp
	beq	.L417	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	fp, #0	@, TmpVirAddr,
	beq	.L406	@,
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
	b	.L415	@
.L416:
	cmp	fp, #0	@ TmpVirAddr,
	cmpne	lr, #0	@, SrcVirAddr,
	beq	.L406	@,
.L415:
	mov	r1, lr	@, SrcVirAddr
	mov	r2, r4	@, SrcLength
	mov	r0, fp	@, TmpVirAddr
	str	r3, [sp]	@ tmp445, %sfp
	bl	memcpy	@
	add	r10, r10, #1	@ D.42726, index,
	ldr	r1, [r6, #12]	@ pStreamSeg_26(D)->LenInByte, pStreamSeg_26(D)->LenInByte
	ubfx	r10, r10, #0, #10	@ index, D.42726,,
	add	fp, fp, r4	@ TmpVirAddr, TmpVirAddr, tmp2
	add	r5, r5, #1	@ i, i,
	add	r4, r1, r4	@ D.42726, pStreamSeg_26(D)->LenInByte, SrcLength
	ldr	r3, [sp]	@ tmp445, %sfp
	ldr	r1, [sp, #4]	@ rawnum, %sfp
	add	r7, r7, r3	@ tmp392, tmp443, tmp445
	mov	r3, r10, asl #6	@ tmp445, index,
	add	r7, r8, r7	@ tmp393, pSmInstArray, tmp392
	cmp	r5, r1	@ i, rawnum
	ldrb	r0, [r7, #221]	@ zero_extendqisi2	@ D.42725, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_158].is_stream_end_flag
	mov	r7, r10, asl #3	@ tmp443, index,
	str	r4, [r6, #12]	@ D.42726, pStreamSeg_26(D)->LenInByte
	add	r2, r7, r3	@ tmp401, tmp443, tmp445
	add	r2, r8, r2	@ tmp402, pSmInstArray, tmp401
	strb	r0, [r6, #6]	@ D.42725, pStreamSeg_26(D)->IsStreamEnd
	ldrd	r0, [r9, #208]	@ tmp496, tmp449,
	ldr	lr, [r2, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].VirAddr
	ldr	r4, [r2, #176]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_122].Length
	strd	r0, [r6, #48]	@ tmp496, pStreamSeg,
	ldr	r2, [r9, #224]	@ D.42726, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispEnableFlag
	str	r2, [r6, #56]	@ D.42726, pStreamSeg_26(D)->DispEnableFlag
	ldr	r2, [r9, #228]	@ D.42726, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispFrameDistance
	str	r2, [r6, #60]	@ D.42726, pStreamSeg_26(D)->DispFrameDistance
	ldr	r2, [r9, #232]	@ D.42726, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ D.42726, pStreamSeg_26(D)->DistanceBeforeFirstFrame
	ldr	r2, [r9, #236]	@ D.42726, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].GopNum
	str	r2, [r6, #68]	@ D.42726, pStreamSeg_26(D)->GopNum
	bne	.L416	@,
	ldr	r7, [sp, #16]	@ TotalSrcLength, %sfp
.L417:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.42722,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L406:
	mvn	r0, #3	@ D.42722,
.L403:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L429:
	ldr	r3, .L431+4	@ tmp283,
	ldr	ip, [sp]	@ SrcLength, %sfp
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	cmp	ip, #0	@ SrcLength,
	moveq	r3, #0	@, tmp290
	andne	r3, r3, #1	@,, tmp290, g_VdmCharacter
	cmp	r3, #0	@ tmp290,
	beq	.L410	@,
	cmp	ip, #2	@ SrcLength,
	bgt	.L430	@,
	cmp	r4, #1	@ rawnum,
	add	r10, r10, #1	@ D.42726, index,
	ubfx	r10, r10, #0, #10	@ index, D.42726,,
	bls	.L406	@,
	mov	r8, r10, asl #6	@ tmp445, index,
	add	r3, r8, r10, lsl #3	@ tmp294, tmp445, index,
	add	r3, r5, r3	@ tmp295, pSmInstArray, tmp294
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	ldr	ip, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].VirAddr
	ldr	r3, [sp]	@ SrcLength, %sfp
	add	r1, r3, r1	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_63].Length
	cmp	r1, #2	@ SrcLength,
	ble	.L412	@,
	add	r3, r10, #1020	@ D.42726, index,
	sub	r1, r1, #3	@ SrcLength, SrcLength,
	add	r3, r3, #3	@ D.42726, D.42726,
	str	r1, [sp]	@ SrcLength, %sfp
	ubfx	r3, r3, #0, #10	@ D.42726, D.42726,,
	sub	r4, r4, #1	@ rawnum, rawnum,
	mov	r1, r3, asl #6	@ tmp309, D.42726,
	add	r3, r1, r3, lsl #3	@ tmp310, tmp309, D.42726,
	add	r3, r5, r3	@ tmp311, pSmInstArray, tmp310
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length
	rsb	r1, r1, #3	@ D.42724, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_85].Length,
	add	r1, ip, r1	@ SrcVirAddr, SrcVirAddr, D.42724
	b	.L410	@
.L428:
	bl	vfmw_dprint_nothing	@
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@ D.42722
	beq	.L403	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r8	@ D.42722, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	b	.L403	@
.L430:
	sub	r3, ip, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@ SrcVirAddr, SrcVirAddr,
	str	r3, [sp]	@ SrcLength, %sfp
	b	.L410	@
.L419:
	mvn	r0, #0	@ D.42722,
	b	.L403	@
.L412:
	cmp	r4, #2	@ rawnum,
	add	r10, r10, #1	@ D.42726, index,
	ubfx	r10, r10, #0, #10	@ index, D.42726,,
	bls	.L406	@,
	mov	r8, r10, asl #6	@ tmp445, index,
	add	r3, r8, r10, lsl #3	@ tmp318, tmp445, index,
	add	r3, r5, r3	@ tmp319, pSmInstArray, tmp318
	ldr	ip, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	ldr	r3, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].VirAddr
	add	ip, r1, ip	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_68].Length
	cmp	ip, #2	@ SrcLength,
	str	r3, [sp, #4]	@ SrcVirAddr, %sfp
	ble	.L406	@,
	add	r1, r10, #1020	@ D.42726, index,
	sub	r4, r4, #2	@ rawnum, rawnum,
	mov	r3, r1	@ D.42726, D.42726
	add	r1, r1, #3	@ D.42726, D.42726,
	ubfx	lr, r1, #0, #10	@ D.42726, D.42726,,
	add	r3, r3, #2	@ D.42726, D.42726,
	ubfx	r8, r3, #0, #10	@ D.42726, D.42726,,
	sub	r1, ip, #3	@ SrcLength, SrcLength,
	mov	r3, lr, asl #6	@ tmp333, D.42726,
	str	r1, [sp]	@ SrcLength, %sfp
	add	r3, r3, lr, lsl #3	@ tmp334, tmp333, D.42726,
	mov	r1, r8, asl #6	@ tmp344, D.42726,
	add	r1, r1, r8, lsl #3	@ tmp345, tmp344, D.42726,
	add	r3, r5, r3	@ tmp335, pSmInstArray, tmp334
	add	r1, r5, r1	@ tmp346, pSmInstArray, tmp345
	ldr	r3, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length
	ldr	r1, [r1, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length
	rsb	r3, r3, #3	@ D.42724, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_73].Length,
	rsb	r1, r1, r3	@ D.42724, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_77].Length, D.42724
	ldr	r3, [sp, #4]	@ SrcVirAddr, %sfp
	add	r1, r3, r1	@ SrcVirAddr, SrcVirAddr, D.42724
	b	.L410	@
.L432:
	.align	2
.L431:
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
	ldr	r3, .L449	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r3, r0, lsl #2	@ tmp153, tmp151, SmID,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r6, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L444	@,
	add	r3, r6, #73728	@ tmp155, pSmInstArray,
	add	r5, r6, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r3, #192	@ tmp155,
	cmnne	r6, #168	@, pSmInstArray,
	add	r1, r3, #192	@ pStreamSegArray, tmp155,
	beq	.L444	@,
	ldr	r2, [r3, #168]	@ D.42737, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	ldr	r3, [r3, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	cmp	r3, r2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, D.42737
	beq	.L442	@,
	mov	r8, r2, asl #3	@ tmp232, D.42737,
	mov	r4, r2, asl #6	@ tmp233, D.42737,
	mov	r7, r0	@ SmID, SmID
	mov	r0, r1	@, pStreamSegArray
	bl	ResetStreamSegArray	@
	add	ip, r8, r4	@ tmp171, tmp232, tmp233
	add	ip, r6, ip	@ tmp172, pSmInstArray, tmp171
	ldr	r1, [ip, #172]	@ pu32tmp, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].VirAddr
	ldr	lr, [r1]	@ D.42738, *pu32tmp_14
	ldr	r3, [r1, #4]	@ D.42738, MEM[(HI_U32 *)pu32tmp_14 + 4B]
	sub	r2, lr, #32	@ D.42739, D.42738,
	cmp	r2, #1888	@ D.42739,
	bhi	.L436	@,
	sub	r2, r3, #32	@ D.42739, D.42738,
	cmp	r2, #1056	@ D.42739,
	bls	.L447	@,
.L436:
	bl	vfmw_dprint_nothing	@
	add	r2, r8, r4	@ tmp201, tmp232, tmp233
	add	r2, r6, r2	@ tmp202, pSmInstArray, tmp201
	mov	r0, r5	@, pRawPacketArray
	ldr	r1, [r2, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L448	@,
.L446:
	mov	r0, #0	@ D.42735,
.L434:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L447:
	ldr	r0, [ip, #176]	@ D.42737, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r2, #51712	@ tmp183,
	movt	r2, 47	@ tmp183,
	sub	ip, r0, #1552	@ D.42739, D.42737,
	cmp	ip, r2	@ D.42739, tmp183
	bhi	.L436	@,
	mul	r2, r3, lr	@ D.42737, D.42738, D.42738
	add	ip, r6, #163840	@ tmp194, pSmInstArray,
	ldr	ip, [ip, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize
	sub	ip, ip, #262144	@ D.42737, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize,
	add	r2, r2, r2, lsl #1	@ D.42737, D.42737, D.42737,
	add	r2, r2, r2, lsr #31	@ tmp189, D.42737, D.42737,
	mov	r2, r2, asr #1	@ tmp190, tmp189,
	cmp	r2, ip	@ tmp190, D.42737
	bgt	.L436	@,
	add	r2, r2, #16	@ D.42737, tmp190,
	cmp	r0, r2	@ D.42737, D.42737
	blt	.L436	@,
	ldr	ip, [r1, #8]	@ D.42738, MEM[(HI_U32 *)pu32tmp_14 + 8B]
	movw	r2, #1916	@ tmp206,
	ldr	r10, [r1, #12]	@ D.42738, MEM[(HI_U32 *)pu32tmp_14 + 12B]
	sub	r0, ip, #4	@ D.42739, D.42738,
	cmp	r0, r2	@ D.42739, tmp206
	bhi	.L436	@,
	sub	r0, r10, #4	@ D.42739, D.42738,
	movw	r2, #1084	@ tmp208,
	cmp	r0, r2	@ D.42739, tmp208
	bhi	.L436	@,
	add	r2, r8, r4	@ tmp220, tmp232, tmp233
	add	r1, r1, #16	@, pu32tmp,
	add	r6, r6, r2	@ tmp221, pSmInstArray, tmp220
	mov	r0, r7	@, SmID
	mov	r2, lr	@, D.42738
	ldrd	r8, [r6, #184]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts, tmp221,
	str	r10, [sp, #8]	@ D.42738,
	str	ip, [sp, #4]	@ D.42738,
	strd	r8, [sp, #16]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts,,
	str	lr, [sp]	@ D.42738,
	bl	DNR_PutYuv	@
	subs	r4, r0, #0	@ Ret,
	bne	.L442	@,
	ldr	r1, [r6, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r0, r5	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, r4	@ D.42735, Ret
	b	.L434	@
.L448:
	bl	vfmw_dprint_nothing	@
	b	.L446	@
.L444:
	mvn	r0, #0	@ D.42735,
	b	.L434	@
.L442:
	mvn	r0, #3	@ D.42735,
	b	.L434	@
.L450:
	.align	2
.L449:
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
	ldr	r3, .L468	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp139, tmp137, SmID,
	ldr	r4, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L457	@,
	ldr	r3, [r4, #56]	@ D.42747, pSmInstArray_9->Config.VidStd
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r7, r0	@ SmID, SmID
	sub	ip, r3, #4	@ D.42744, D.42747,
	sub	r2, r3, #8	@ D.42744, D.42747,
	cmp	r2, #6	@ D.42744,
	cmphi	ip, #1	@, D.42744,
	bls	.L453	@,
	cmp	r3, #1	@ D.42747,
	beq	.L466	@,
.L454:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r6	@, pStreamSeg
	add	r0, r0, #192	@,,
	bl	GetStreamSeg	@
	cmp	r0, #0	@ ret
	bne	.L455	@,
	ldr	r5, .L468+4	@ tmp160,
	ldr	r3, [r5]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	beq	.L456	@,
	ldr	r3, .L468+8	@ tmp162,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r7, r3	@ SmID, save_seg_chan_num
	beq	.L467	@,
.L456:
	add	r4, r4, #176128	@ tmp172, pSmInstArray,
	mov	r3, #0	@ tmp173,
	mov	r0, r3	@ D.42745, tmp173
	str	r3, [r4, #3988]	@ tmp173, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L466:
	ldr	r3, [r4, #72]	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L454	@,
.L453:
	mov	r1, r6	@, pStreamSeg
	mov	r0, r7	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L454	@,
	bl	vfmw_dprint_nothing	@
	mvn	r0, #6	@ ret,
.L455:
	add	r4, r4, #176128	@ tmp175, pSmInstArray,
	ldr	r3, [r4, #3988]	@ pSmInstArray_9->numReadSegFail, pSmInstArray_9->numReadSegFail
	add	r3, r3, #1	@ D.42748, pSmInstArray_9->numReadSegFail,
	str	r3, [r4, #3988]	@ D.42748, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L467:
	ldr	r0, .L468+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r5]	@, vfmw_save_seg_file
	ldr	r1, [r6, #12]	@, pStreamSeg_10(D)->LenInByte
	ldr	r0, [r6]	@, pStreamSeg_10(D)->VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L468+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L456	@
.L457:
	mvn	r0, #0	@ D.42745,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L469:
	.align	2
.L468:
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
	ldr	r3, .L472	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r0, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L471	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L471:
	mvn	r0, #0	@,
	bx	lr	@
.L473:
	.align	2
.L472:
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
	ldr	r4, .L487	@ tmp138,
	add	r3, r4, r6, lsl #2	@ tmp123, tmp138, SmID,
	ldr	r3, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrsb	r3, [r3, #3]	@ pSmInstArray_10->InsertNewSegFlag, pSmInstArray_10->InsertNewSegFlag
	mov	r5, r0	@ CurTime,
	cmp	r3, #1	@ pSmInstArray_10->InsertNewSegFlag,
	beq	.L477	@,
.L479:
	mov	r0, #0	@ D.42763,
.L478:
	ldr	r3, [r4, #304]	@ D.42762, LastEventTime
	ldr	r2, .L487	@ tmp128,
	cmp	r5, r3	@ CurTime, D.42762
	movls	r3, #1	@ D.42763,
	strls	r5, [r2, #304]	@ CurTime, LastEventTime
	bls	.L481	@,
	rsb	r3, r3, r5	@ Period, D.42762, CurTime
	cmp	r3, #1	@ Period,
	movls	r3, #0	@ D.42763,
	movhi	r3, #1	@ D.42763,
.L481:
	tst	r3, r0	@ D.42763, D.42763
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, .L487+4	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #304]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L477:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L479	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	clz	r0, r0	@ D.42763,
	mov	r0, r0, lsr #5	@ D.42763, D.42763,
	b	.L478	@
.L488:
	.align	2
.L487:
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
	ldr	r3, .L496	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r4, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L494	@,
	mov	r5, r1	@ FirstCalc, FirstCalc
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r4, r4, #176128	@ tmp123, pSmInstArray,
	mov	r2, r0	@ CurTime,
	beq	.L491	@,
	mov	r3, #0	@ tmp124,
	str	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	mov	r0, r3	@ D.42766, tmp124
	str	r3, [r4, #3952]	@ tmp124, pSmInstArray_6->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L491:
	ldr	r3, [r4, #3956]	@ D.42767, pSmInstArray_6->LastBlockTime
	cmp	r0, r3	@ CurTime, D.42767
	strls	r5, [r4, #3952]	@ FirstCalc, pSmInstArray_6->BlockTimeInMs
	rsbhi	r0, r3, r0	@ D.42767, D.42767, CurTime
	strls	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	strhi	r0, [r4, #3952]	@ D.42767, pSmInstArray_6->BlockTimeInMs
	movls	r0, r5	@ D.42766, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L494:
	mov	r0, r4	@ D.42766, pSmInstArray
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L497:
	.align	2
.L496:
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
	ldr	r2, .L501	@ tmp120,
	sub	ip, r1, #1	@ D.42771, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.42771,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.42770,
	streq	r1, [r2, #2412]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L502:
	.align	2
.L501:
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
	beq	.L510	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r0, #12]	@ pSegFilter_6(D)->ModeFlag, pSegFilter_6(D)->ModeFlag
	mul	r3, r3, r2	@ D.42782, UpMsgStepNum, SegNum
	cmp	ip, #1	@ pSegFilter_6(D)->ModeFlag,
	ldrb	ip, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	bfceq	ip, #0, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,,
	orrne	ip, ip, #1	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,
	strb	ip, [r1, #72]	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	mov	ip, #0	@ D.42779,
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrb	lr, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3, asl #2]	@ *_15, *_15
	mov	r3, r3, asl #2	@ D.42782, D.42782,
	add	r3, r3, #8	@ D.42786, D.42782,
	mov	r2, r2, lsr #31	@ D.42783, *_15,
	bfi	lr, r2, #1, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, D.42783,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp162, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3]	@ *_25, *_25
	mov	r2, r2, asr #16	@ D.42780, *_25,
	bfi	lr, r2, #2, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, D.42780,,
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
	mov	r0, ip	@, D.42779
	and	r3, r3, #7	@ tmp174, *_39,
	bfi	r2, r3, #7, #4	@ tmp175, tmp174,,
	strh	r2, [r1, #72]	@ movhi	@ tmp175,
	ldr	pc, [sp], #4	@
.L510:
	mvn	ip, #0	@ D.42779,
	mov	r0, ip	@, D.42779
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
	mov	r6, #0	@ tmp244,
	str	r6, [r2]	@ tmp244, *pExtraSrcBack_17(D)
	str	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r7, r1	@ pTransFormSeg, pTransFormSeg
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #8]	@ pSegStreamFilter_15(D)->ProtocolType, pSegStreamFilter_15(D)->ProtocolType
	cmp	r3, #2	@ pSegStreamFilter_15(D)->ProtocolType,
	beq	.L514	@,
	cmp	r8, r6	@ SegNum,
	ldrgt	r3, [sp, #48]	@ tmp343, UpMsgStepNum
	movgt	r9, r6	@ i, ivtmp.408
	movgt	r5, r3, asl #2	@ D.42808, tmp343,
	ble	.L518	@,
.L517:
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	mov	r1, r7	@ D.42811, pTransFormSeg
	ldr	r2, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r9, r9, #1	@ i, i,
	ldr	r3, [r3, r6]	@ *_185, *_185
	and	r2, r2, #-2147483648	@ D.42808, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r3, r3, #-2147483648	@ D.42808, *_185,
	orr	r3, r3, r2	@ D.42808, D.42808, D.42808
	str	r3, [r1, r6]!	@ D.42808, MEM[base: pTransFormSeg_92(D), index: ivtmp.408_218, offset: 0B]
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r3, r3, r6	@ tmp255, pSegStreamFilter_15(D)->pScdUpMsg, ivtmp.408
	add	r6, r6, r5	@ ivtmp.408, ivtmp.408, D.42808
	ldr	r3, [r3, #4]	@ D.42809, *_199
	str	r3, [r1, #4]	@ D.42809, MEM[base: _213, offset: 4B]
	bl	vfmw_dprint_nothing	@
	cmp	r9, r8	@ i, SegNum
	bne	.L517	@,
.L518:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r0, #0	@ tmp246,
	str	r0, [r4, #12]	@ tmp246, pSegStreamFilter_15(D)->ModeFlag
	str	r0, [r4, #16]	@ tmp246, pSegStreamFilter_15(D)->LastH263Num
	str	r8, [r3]	@ SegNum, *pSegNum_176(D)
.L550:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L514:
	ldr	r0, [r4, #20]	@, pSegStreamFilter_15(D)->SegBufPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L520	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_23 + 1B]
	ldrb	r1, [r0]	@ zero_extendqisi2	@ D.42809, *pTmpVirAddr_23
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_23 + 3B]
	ldrb	r5, [r0, #2]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_23 + 2B]
	mov	r2, r2, asl #16	@ D.42809, D.42809,
	orr	r2, r2, r1, asl #24	@ D.42809, D.42809, D.42809,
	ldr	r0, [r4, #28]	@, pSegStreamFilter_15(D)->SegBufRollAddr
	orr	r3, r2, r3	@ D.42809, D.42809, D.42809
	orr	r5, r3, r5, asl #8	@ D.42809, D.42809, D.42809,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L520	@,
	cmp	r8, #0	@ SegNum,
	mov	r2, r5, lsr #24	@ D.42808, D.42809,
	mov	r3, r5, lsr #16	@ D.42808, D.42809,
	strb	r5, [r0, #3]	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_41 + 3B]
	strb	r2, [r0]	@ D.42808, *pTmpVirAddr_41
	mov	r5, r5, lsr #8	@ D.42808, D.42809,
	strb	r3, [r0, #1]	@ D.42808, MEM[(HI_U8 *)pTmpVirAddr_41 + 1B]
	strb	r5, [r0, #2]	@ D.42808, MEM[(HI_U8 *)pTmpVirAddr_41 + 2B]
	ble	.L521	@,
	ldr	r2, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	ldr	r5, [r2]	@ *_215, *_215
	and	r3, r3, #-2147483648	@ D.42808, pSegStreamFilter_15(D)->SegBufPhyAddr,
	bic	r5, r5, #-2147483648	@ D.42808, *_215,
	orrs	r5, r5, r3	@ TmpPhyAddr, D.42808, D.42808
	beq	.L520	@,
	ldr	r3, [sp, #48]	@ tmp344, UpMsgStepNum
	add	fp, r7, #4	@ ivtmp.422, ivtmp.420,
	mov	r9, #4	@ ivtmp.421,
	mov	r10, #1	@ ivtmp.417,
	mov	r6, r3, asl #2	@ D.42808, tmp344,
	b	.L522	@
.L553:
	mov	r3, #1	@ tmp305,
	str	r3, [r4, #12]	@ tmp305, pSegStreamFilter_15(D)->ModeFlag
	mov	r3, #0	@ tmp306,
	str	r3, [r4, #16]	@ tmp306, pSegStreamFilter_15(D)->LastH263Num
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.42809,* ivtmp.421
	str	r3, [r7, #4]	@ D.42809,
.L524:
	cmp	r10, r8	@ ivtmp.417, SegNum
	beq	.L552	@,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	add	r10, r10, #1	@ ivtmp.417, ivtmp.417,
	ldr	r5, [r4, #20]	@ pSegStreamFilter_15(D)->SegBufPhyAddr, pSegStreamFilter_15(D)->SegBufPhyAddr
	add	r7, r7, r6	@ ivtmp.420, ivtmp.420, D.42808
	add	r3, r3, r6	@ tmp281, pSegStreamFilter_15(D)->pScdUpMsg, D.42808
	add	fp, fp, r6	@ ivtmp.422, ivtmp.422, D.42808
	add	r3, r3, r9	@ tmp282, tmp281, ivtmp.421
	and	r2, r5, #-2147483648	@ D.42808, pSegStreamFilter_15(D)->SegBufPhyAddr,
	add	r9, r9, r6	@ ivtmp.421, ivtmp.421, D.42808
	ldr	r5, [r3, #-4]	@ *_58, *_58
	bic	r5, r5, #-2147483648	@ D.42808, *_58,
	orrs	r5, r5, r2	@ TmpPhyAddr, D.42808, D.42808
	beq	.L520	@,
.L522:
	mov	r0, r5	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L520	@,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_68 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.42809, *pTmpVirAddr_68
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_68 + 3B]
	mov	r1, r1, asl #16	@ D.42809, D.42809,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.42809, MEM[(HI_U8 *)pTmpVirAddr_68 + 2B]
	orr	r3, r1, r3, asl #24	@ D.42809, D.42809, D.42809,
	orr	r3, r3, r2	@ D.42809, D.42809, D.42809
	movw	r2, #438	@ tmp345,
	orr	r3, r3, r0, asl #8	@ Data32, D.42809, D.42809,
	cmp	r3, r2	@ Data32, tmp345
	cmpne	r3, #288	@, Data32,
	moveq	r2, #1	@ tmp304,
	movne	r2, #0	@ tmp304,
	beq	.L553	@,
	bic	r3, r3, #1020	@ D.42808, Data32,
	bic	r3, r3, #3	@ D.42808, D.42808,
	cmp	r3, #32768	@ D.42808,
	beq	.L554	@,
.L525:
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.42809,* ivtmp.421
	str	r3, [r7, #4]	@ D.42809,
	b	.L524	@
.L554:
	ldr	r3, [r4, #12]	@ pSegStreamFilter_15(D)->ModeFlag, pSegStreamFilter_15(D)->ModeFlag
	cmp	r3, #1	@ pSegStreamFilter_15(D)->ModeFlag,
	beq	.L555	@,
.L528:
	mov	r3, #2	@ tmp317,
	str	r3, [r4, #12]	@ tmp317, pSegStreamFilter_15(D)->ModeFlag
	str	r5, [fp, #-4]	@ TmpPhyAddr,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_15(D)->pScdUpMsg, pSegStreamFilter_15(D)->pScdUpMsg
	ldr	r3, [r3, r9]	@ D.42809,* ivtmp.421
	str	r3, [r7, #4]	@ D.42809,
	b	.L524	@
.L520:
	mvn	r0, #6	@ D.42810,
	b	.L550	@
.L555:
	ldr	r3, [r4, #16]	@ pSegStreamFilter_15(D)->LastH263Num, pSegStreamFilter_15(D)->LastH263Num
	add	r3, r3, #1	@ D.42809, pSegStreamFilter_15(D)->LastH263Num,
	str	r3, [r4, #16]	@ D.42809, pSegStreamFilter_15(D)->LastH263Num
	cmp	r3, #12	@ D.42809,
	ble	.L525	@,
	ldr	r3, .L556	@ tmp346,
	ldr	r3, [r3]	@ D.42815, g_event_report
	cmp	r3, #0	@ D.42815,
	beq	.L528	@,
	ldr	r0, .L556+4	@ tmp347,
	mov	r1, #102	@,
	ldr	r0, [r0, #284]	@, s_SmIIS.ThisInstID
	blx	r3	@ D.42815
	b	.L528	@
.L552:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	cmp	r10, #0	@ ivtmp.417,
	movgt	r4, #0	@ i,
	str	r10, [r3]	@ ivtmp.417, *pSegNum_176(D)
	ble	.L532	@,
.L531:
	add	r4, r4, #1	@ i, i,
	bl	vfmw_dprint_nothing	@
	cmp	r4, r10	@ i, ivtmp.417
	bne	.L531	@,
.L532:
	mov	r0, #0	@ D.42810,
	b	.L550	@
.L521:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r0, r6	@ D.42810, tmp244
	str	r6, [r3]	@ tmp244, *pSegNum_176(D)
	b	.L550	@
.L557:
	.align	2
.L556:
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
	beq	.L560	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L562	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L562	@,
	ldr	r3, [r0, #12]	@ pSegPacket_2(D)->LenInByte, pSegPacket_2(D)->LenInByte
	cmp	r3, r1	@ pSegPacket_2(D)->LenInByte, SegFreeBufLen
	mvnhi	r0, #6	@ D.42819,
	movls	r0, #0	@ D.42819,
	bx	lr	@
.L562:
	mvn	r0, #6	@ D.42819,
	bx	lr	@
.L560:
	mvn	r0, #0	@ D.42819,
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
	ldrd	r0, [r4, #24]	@ D.42825, pSegPacket,
	ldrd	r2, [r5]	@ *pLastPts_25(D), *pLastPts_25(D)
	cmp	r3, r1	@ *pLastPts_25(D), D.42825
	cmpeq	r2, r0	@ *pLastPts_25(D), D.42825
	beq	.L568	@,
	strd	r0, [r5]	@ D.42825, *pLastPts_25(D)
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L568:
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
	bhi	.L571	@,
	ldr	r3, .L576	@ tmp117,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp117, InstID,
	ldr	r3, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L572	@,
	add	r2, r3, #163840	@ tmp122, pSmInstArray,
	ldr	r0, [r2, #2412]	@ D.42828, pSmInstArray_5->Mode
	cmp	r0, #0	@ D.42828,
	ldrne	r0, [r3, #84]	@ pSmInstArray_5->Config.DisContinueRawPacketFlag, pSmInstArray_5->Config.DisContinueRawPacketFlag
	subne	r0, r0, #1	@ D.42828, pSmInstArray_5->Config.DisContinueRawPacketFlag,
	clzne	r0, r0	@ D.42828, D.42828
	movne	r0, r0, lsr #5	@ D.42828, D.42828,
	bx	lr	@
.L571:
	mov	r0, #0	@ D.42828,
	bx	lr	@
.L572:
	mov	r0, r3	@ D.42828, pSmInstArray
	bx	lr	@
.L577:
	.align	2
.L576:
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
	bhi	.L582	@,
	ldr	r3, .L586	@ tmp120,
	add	r0, r3, r0, lsl #2	@ tmp122, tmp120, InstID,
	ldr	r2, [r0, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp131, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp131, tmp131,
	orrs	r3, r3, r1, lsr #31	@, tmp137, tmp131, Flag,
	bne	.L585	@,
	add	r3, r2, #163840	@ tmp133, pSmInstArray,
	mov	r0, #1	@ D.42834,
	ldr	r3, [r3, #2412]	@ pSmInstArray_6->Mode, pSmInstArray_6->Mode
	cmp	r3, #0	@ pSmInstArray_6->Mode,
	strne	r1, [r2, #84]	@ Flag, pSmInstArray_6->Config.DisContinueRawPacketFlag
	streq	r3, [r2, #84]	@ pSmInstArray_6->Mode, pSmInstArray_6->Config.DisContinueRawPacketFlag
	bx	lr	@
.L582:
	mov	r0, #0	@ D.42834,
	bx	lr	@
.L585:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42834,
	ldmfd	sp!, {r4, pc}	@
.L587:
	.align	2
.L586:
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
	cmp	r0, #3	@ InstID,
	bls	.L600	@,
	mov	r0, #0	@ D.42840,
	bx	lr	@
.L600:
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L593	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.42843, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.42843,
	movlt	r0, #1	@ D.42840,
	blt	.L590	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	bgt	.L593	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.42840,
	movle	r0, #1	@ D.42840,
.L590:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L593:
	mov	r0, #0	@ D.42840,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	add	r7, r0, #58	@ tmp159, InstID,
	ldr	r5, .L624	@ tmp158,
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
	beq	.L623	@,
	mov	r0, r6	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r6, r0, #0	@ pStreamIntf,
	beq	.L607	@,
	add	r0, sp, #4	@ tmp161,,
	mov	r2, #12	@,
	mov	r1, r6	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r6, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L605	@,
	ldr	r0, .L624+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r9	@, pRawPacket
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r6, r0	@ ret,
	ldr	r0, .L624+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ret,
	beq	.L606	@,
.L605:
	add	r5, r5, r7, lsl #2	@ tmp155, tmp158, tmp159,
	ldr	r3, [r5, #16]	@ tmp157, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp157,
	beq	.L607	@,
.L623:
	mvn	r0, #6	@ D.42847,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L606:
	ldr	r3, [r8, #16]	@ tmp152, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp152,
	beq	.L607	@,
	add	r4, r4, #73728	@ tmp141, pSmInstArray,
	ldr	r2, [r9, #8]	@ pRawPacket_19(D)->Length, pRawPacket_19(D)->Length
	mov	r0, r6	@ D.42847, ret
	ldr	r3, [r4, #188]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.42849, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_19(D)->Length
	str	r3, [r4, #188]	@ D.42849, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L607:
	bl	vfmw_dprint_nothing	@
	b	.L623	@
.L625:
	.align	2
.L624:
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
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #58	@ tmp357, InstID,
	ldr	r7, .L709	@ tmp359,
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r6, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r7, r10, lsl #2	@ tmp196, tmp359, tmp357,
	add	r0, sp, #8	@,,
	ldr	r4, [r3, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L626	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_17->Config.VidStd,
	beq	.L626	@,
	ldr	r3, [r4, #84]	@ D.42857, pSmInstArray_17->Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.42857,
	beq	.L626	@,
	cmp	r3, #2	@ D.42857,
	beq	.L699	@,
.L628:
	add	fp, r4, #73728	@ D.42864, pSmInstArray,
	mvn	r8, #0	@ tmp365,
	add	fp, fp, #192	@ D.42864, D.42864,
	mov	r9, #0	@,
.L640:
	ldr	r3, [r4, #92]	@ pSmInstArray_17->Config.ScdLowBufEnable, pSmInstArray_17->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_17->Config.ScdLowBufEnable,
	beq	.L645	@,
	cmp	fp, #0	@ D.42864,
	beq	.L700	@,
.L644:
	mov	r0, r6	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	beq	.L626	@,
.L645:
	cmp	r6, #3	@ InstID,
	bhi	.L697	@,
	add	r3, r7, r10, lsl #2	@ tmp268, tmp359, tmp357,
	ldr	r3, [r3, #16]	@ D.42866, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42866,
	beq	.L697	@,
	add	r2, r3, #73728	@ tmp271, D.42866,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_163 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_163 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_163 + 168B].History, MEM[(struct RAW_ARRAY_S *)_163 + 168B].History
	add	r3, r3, #1	@ D.42857, MEM[(struct RAW_ARRAY_S *)_163 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp275, D.42857,
	mov	r2, r2, lsr #22	@ tmp276, tmp275,
	add	r3, r3, r2	@ tmp277, D.42857, tmp276
	ubfx	r3, r3, #0, #10	@ tmp278, tmp277,,
	rsb	r3, r2, r3	@ D.42857, tmp276, tmp278
	cmp	r3, r1	@ D.42857, MEM[(struct RAW_ARRAY_S *)_163 + 168B].History
	beq	.L697	@,
	add	r1, sp, #8	@,,
	mov	r0, r6	@, InstID
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L626	@,
	ldr	r3, [r4, #80]	@ D.42858, pSmInstArray_17->Config.LastRawDisContinueCount
	cmn	r3, #1	@ D.42858,
	beq	.L647	@,
	ldr	r2, [sp, #56]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	r3, r2	@ D.42858, RawPacket.discontinue_count
	beq	.L649	@,
	ldr	r5, [r4, #56]	@ pSmInstArray_17->Config.VidStd, pSmInstArray_17->Config.VidStd
	bic	r5, r5, #2	@ D.42856, pSmInstArray_17->Config.VidStd,
	cmp	r5, #1	@ D.42856,
	beq	.L701	@,
.L649:
	add	r5, r4, #176128	@ tmp295, pSmInstArray,
	ldr	r2, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.42857, pSmInstArray_17->TotalRawSize, RawPacket.Length
	str	r3, [r5, #3976]	@ D.42857, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #3980]	@ D.42858, pSmInstArray_17->LastStatTime
	cmp	r1, #0	@ D.42858,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L651	@,
	rsb	r1, r1, r0	@ TimePeriod, D.42858, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L651	@,
	str	r0, [sp, #4]	@ ThisTime, %sfp
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r2, #1000	@ tmp316,
	mul	r0, r2, r0	@ D.42858, tmp316,
	ldr	r3, [sp, #4]	@ ThisTime, %sfp
	str	r3, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	mov	r3, #0	@ tmp320,
	str	r3, [r5, #3976]	@ tmp320, pSmInstArray_17->TotalRawSize
	mov	r0, r0, lsr #10	@ D.42858, D.42858,
	str	r0, [r5, #3984]	@ D.42858, pSmInstArray_17->BitRate
.L651:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r2, [sp, #24]	@ RawPacket.Pts,,
	cmp	r3, r9	@ RawPacket.Pts,
	cmpeq	r2, r8	@ RawPacket.Pts, tmp365
	beq	.L702	@,
.L652:
	add	r1, sp, #8	@,,
	mov	r0, r6	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L697	@,
	mov	r3, #1	@ tmp327,
	strb	r3, [r4, #4]	@ tmp327, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L703	@,
.L654:
	ldr	r3, .L709+4	@ tmp339,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r6, r3	@ InstID, save_str_chan_num
	bne	.L640	@,
	ldr	r5, .L709+8	@ tmp358,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L640	@,
	ldr	r3, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L709+12	@,
	str	r3, [sp, #4]	@ eStd, %sfp
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [sp, #4]	@ eStd, %sfp
	sub	r2, r3, #4	@ D.42858, eStd,
	cmp	r2, #1	@ D.42858,
	bls	.L657	@,
	cmp	r3, #17	@ eStd,
	bne	.L704	@,
.L657:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, sp, #16	@,,
	bl	klib_fwrite	@
.L658:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldr	r1, [sp, #16]	@, RawPacket.Length
	ldr	r0, [sp, #12]	@, RawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L709+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L640	@
.L701:
	add	r1, sp, #8	@,,
	mov	r2, #72	@,
	add	r0, r4, #96	@, pSmInstArray,
	bl	memcpy	@
	str	r5, [r4, #84]	@ D.42856, pSmInstArray_17->Config.DisContinueRawPacketFlag
.L697:
	bl	vfmw_dprint_nothing	@
.L626:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L647:
	ldr	r3, [sp, #56]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r3, [r4, #80]	@ RawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L649	@
.L703:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, r6, lsl #2	@ tmp330, tmp359, InstID,
	ldr	r1, .L709+16	@ tmp334,
	ldr	r3, [r2, #308]	@ tmp333, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.42858, tmp333, ThisTime
	cmp	r3, r1	@ D.42858, g_TraceBsPeriod
	strhi	r0, [r2, #308]	@ ThisTime, last_rec_pos_time
	b	.L654	@
.L702:
	mvn	r2, #0	@ tmp325,
	mvn	r3, #0	@,
	strd	r2, [sp, #24]	@ tmp325,,
	b	.L652	@
.L700:
	bl	vfmw_dprint_nothing	@
	b	.L644	@
.L704:
	sub	r2, r3, #8	@ D.42858, eStd,
	cmp	r2, #6	@ D.42858,
	bls	.L657	@,
	cmp	r3, #1	@ eStd,
	bne	.L658	@,
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L657	@,
	b	.L658	@
.L699:
	add	r5, r4, #176128	@ tmp201, pSmInstArray,
	ldr	r2, [r4, #104]	@ pSmInstArray_17->Config.DisContinueRawPacket.Length, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r3, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	add	r3, r3, r2	@ D.42857, pSmInstArray_17->TotalRawSize, pSmInstArray_17->Config.DisContinueRawPacket.Length
	str	r3, [r5, #3976]	@ D.42857, pSmInstArray_17->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, #3980]	@ D.42858, pSmInstArray_17->LastStatTime
	cmp	r3, #0	@ D.42858,
	mov	r8, r0	@ ThisTime,
	streq	r0, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	beq	.L630	@,
	rsb	r1, r3, r0	@ TimePeriod, D.42858, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L630	@,
	ldr	r0, [r5, #3976]	@ pSmInstArray_17->TotalRawSize, pSmInstArray_17->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_17->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp222,
	mov	r2, #0	@ tmp226,
	str	r8, [r5, #3980]	@ ThisTime, pSmInstArray_17->LastStatTime
	str	r2, [r5, #3976]	@ tmp226, pSmInstArray_17->TotalRawSize
	mul	r0, r3, r0	@ D.42858, tmp222,
	mov	r3, r0, lsr #10	@ D.42858, D.42858,
	str	r3, [r5, #3984]	@ D.42858, pSmInstArray_17->BitRate
.L630:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldrd	r2, [r4, #112]	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, pSmInstArray,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp229,
	cmp	r3, r1	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts,
	cmpeq	r2, r0	@ pSmInstArray_17->Config.DisContinueRawPacket.Pts, tmp229
	beq	.L705	@,
.L631:
	add	r1, r4, #96	@, pSmInstArray,
	mov	r0, r6	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L697	@,
	mov	r3, #1	@ tmp233,
	strb	r3, [r4, #4]	@ tmp233, pSmInstArray_17->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L706	@,
.L635:
	ldr	r3, .L709+4	@ tmp245,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r6, r3	@ InstID, save_str_chan_num
	beq	.L707	@,
.L637:
	ldr	r3, [r4, #144]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count
	mov	r2, #0	@ tmp262,
	str	r2, [r4, #84]	@ tmp262, pSmInstArray_17->Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ pSmInstArray_17->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_17->Config.LastRawDisContinueCount
	b	.L628	@
.L705:
	mvn	r2, #0	@ tmp231,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp231, pSmInstArray,
	b	.L631	@
.L706:
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, r6, lsl #2	@ tmp236, tmp359, InstID,
	ldr	r1, .L709+16	@ tmp240,
	ldr	r3, [r2, #308]	@ tmp239, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.42858, tmp239, ThisTime
	cmp	r3, r1	@ D.42858, g_TraceBsPeriod
	strhi	r0, [r2, #308]	@ ThisTime, last_rec_pos_time
	b	.L635	@
.L707:
	ldr	r5, .L709+8	@ tmp358,
	ldr	r3, [r5]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r3, #0	@ vfmw_save_str_file,
	beq	.L637	@,
	ldr	r8, [r4, #56]	@ eStd, pSmInstArray_17->Config.VidStd
	ldr	r0, .L709+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r3, r8, #4	@ D.42858, eStd,
	cmp	r3, #1	@ D.42858,
	bls	.L638	@,
	cmp	r8, #17	@ eStd,
	beq	.L638	@,
	sub	r3, r8, #8	@ D.42858, eStd,
	cmp	r3, #6	@ D.42858,
	bls	.L638	@,
	cmp	r8, #1	@ eStd,
	beq	.L708	@,
.L639:
	ldr	r2, [r5]	@, vfmw_save_str_file
	ldr	r1, [r4, #104]	@, pSmInstArray_17->Config.DisContinueRawPacket.Length
	ldr	r0, [r4, #100]	@, pSmInstArray_17->Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L709+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L637	@
.L708:
	ldr	r3, [r4, #72]	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ pSmInstArray_17->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L639	@,
.L638:
	ldr	r2, [r5]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, r4, #104	@, pSmInstArray,
	bl	klib_fwrite	@
	b	.L639	@
.L710:
	.align	2
.L709:
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
	beq	.L717	@,
	add	r0, sp, #4	@ tmp152,,
	mov	r2, #12	@,
	mov	r1, r4	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	beq	.L718	@,
	add	r5, r5, #58	@ tmp149, InstID,
	ldr	r6, .L726	@ tmp150,
	add	r3, r6, r5, lsl #2	@ tmp133, tmp150, tmp149,
	ldr	r3, [r3, #16]	@ tmp135, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #92]	@ _16->Config.ScdLowBufEnable, _16->Config.ScdLowBufEnable
	cmp	r3, #0	@ _16->Config.ScdLowBufEnable,
	bne	.L725	@,
	ldr	r0, .L726+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L726+4	@,
	bl	OSAL_SpinLockIRQ	@
.L716:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L714:
	add	r5, r6, r5, lsl #2	@ tmp145, tmp150, tmp149,
	ldr	r3, [r5, #16]	@ tmp147, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp147,
	beq	.L717	@,
	mov	r0, r4	@ D.42873, ret
.L713:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L725:
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L716	@
.L718:
	ldr	r6, .L726	@ tmp150,
	add	r5, r5, #58	@ tmp149, InstID,
	mvn	r4, #6	@ ret,
	b	.L714	@
.L717:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #6	@ D.42873,
	b	.L713	@
.L727:
	.align	2
.L726:
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0	@ SmID, SmID
	bhi	.L744	@,
	ldr	r3, .L746	@ tmp129,
	add	r3, r3, r0, lsl #2	@ tmp131, tmp129, SmID,
	ldr	r9, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r9, #0	@ pSmInstArray,
	beq	.L740	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L745	@,
.L731:
	adds	r8, r9, #168	@ tmp156, pSmInstArray,
	beq	.L740	@,
	add	r9, r9, #73728	@ tmp157, pSmInstArray,
	ldr	r6, [r9, #168]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].Head
	ldr	r4, [r9, #176]	@ D.42884, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	cmp	r6, r4	@ RawHead, D.42884
	addlt	r6, r6, #1024	@ D.42886, RawHead,
	rsb	r6, r4, r6	@ DelNum, D.42884, D.42886
	cmp	r6, #0	@ DelNum,
	beq	.L740	@,
	mov	r5, #0	@ i,
.L735:
	bl	vfmw_dprint_nothing	@
	mov	r1, r4, asl #6	@ tmp145, j,
	add	r1, r1, r4, lsl #3	@ tmp146, tmp145, j,
	add	r5, r5, #1	@ i, i,
	add	r1, r8, r1	@, tmp156, tmp146
	mov	r0, r7	@, SmID
	bl	ReleaseRawStreamData	@
	cmp	r5, r6	@ i, DelNum
	add	r4, r4, #1	@ D.42888, j,
	ubfx	r4, r4, #0, #10	@ j, D.42888,,
	bne	.L735	@,
	ldr	r4, [r9, #176]	@ D.42884, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	add	r4, r5, r4	@ D.42886, i, D.42884
	cmp	r4, #1024	@ D.42886,
	strlt	r4, [r9, #176]	@ D.42886, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	subge	r4, r4, #1024	@ D.42886, D.42886,
	strge	r4, [r9, #176]	@ D.42886, MEM[(struct RAW_ARRAY_S *)pSmInstArray_11 + 168B].History
	movlt	r0, #0	@ D.42884,
	movge	r0, #0	@ D.42884,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L745:
	add	r3, r9, #163840	@ tmp134, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_11->Mode, pSmInstArray_11->Mode
	cmp	r3, #0	@ pSmInstArray_11->Mode,
	bne	.L731	@,
.L740:
	mvn	r0, #0	@ D.42884,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L744:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42884,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L747:
	.align	2
.L746:
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
	ldr	r3, .L858	@ tmp241,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp243, tmp241, ChanID,
	.pad #60
	sub	sp, sp, #60	@,,
	ldr	r10, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r10, #0	@ pSmInstArray,
	beq	.L751	@,
	add	fp, r10, #73728	@ tmp690, pSmInstArray,
	adds	r7, fp, #192	@ pStreamSegArray, tmp690,
	beq	.L751	@,
	ldrd	r2, [r1]	@ pts, *pArgs_35(D)
	add	r5, r10, #163840	@ tmp691, pSmInstArray,
	ldrd	r8, [r1, #16]	@ RawNum, pArgs,
	ldr	r4, [r5, #2248]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	strd	r2, [sp]	@ pts, %sfp
	ldrd	r2, [r1, #8]	@ gap, pArgs,
	ldr	ip, [r5, #2252]	@ D.42895, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
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
.L753:
	mov	r6, r4, asl #4	@ tmp688, i,
	mov	r8, r4, asl #6	@ tmp689, i,
	cmp	r4, ip	@ i, D.42895
	add	r3, r6, r8	@ tmp325, tmp688, tmp689
	mov	r1, r4	@, i
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp326, tmp690, tmp325
	beq	.L842	@,
	ldrsb	r2, [r3, #204]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState
	cmp	r2, #1	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState,
	bne	.L757	@,
	ldrd	r2, [r3, #232]	@ D.42896, tmp326,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp765,
	cmp	r3, r1	@ D.42896,
	cmpeq	r2, r0	@ D.42896, tmp765
	addeq	r1, r4, #1	@ D.42900, i,
	beq	.L832	@,
	ldrd	r0, [sp]	@ pts, %sfp
	add	lr, r4, #1	@ D.42900, i,
	cmp	r1, r3	@ pts, D.42896
	mov	r10, lr, asr #31	@ tmp353, D.42900,
	cmpeq	r0, r2	@ pts, D.42896
	smull	r0, r1, lr, r9	@ tmp350, D.42900, tmp703
	bls	.L760	@,
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	rsb	r4, r10, r1, asr #8	@ i, tmp353,,
	mov	r3, r4, asl #10	@ tmp356, i,
	add	r4, r3, r4, lsl #7	@ tmp357, tmp356, i,
	rsb	r4, r4, lr	@ i, tmp357, D.42900
	b	.L753	@
.L757:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r5, #2252]	@ D.42895, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	add	r1, r4, #1	@ D.42900, i,
.L832:
	smull	r2, r3, r1, r9	@ tmp505, D.42900, tmp703
	mov	r4, r1, asr #31	@ tmp508, D.42900,
	rsb	r4, r4, r3, asr #8	@ i, tmp508,,
	mov	r3, r4, asl #10	@ tmp511, i,
	add	r4, r3, r4, lsl #7	@ tmp512, tmp511, i,
	rsb	r4, r4, r1	@ i, tmp512, D.42900
	b	.L753	@
.L760:
	beq	.L843	@,
	bcs	.L753	@,
	ldr	r0, [r5, #2256]	@ D.42895, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp771,
	mov	r3, r0, asl #6	@ tmp426, D.42895,
	add	r3, r3, r0, lsl #4	@ tmp427, tmp426, D.42895,
	add	r3, fp, r3	@ tmp428, tmp690, tmp427
	ldrd	r2, [r3, #232]	@ D.42901, tmp428,
	cmp	r3, r9	@ D.42901,
	cmpeq	r2, r8	@ D.42901, tmp771
	streq	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r0, r4	@ D.42895, i
	beq	.L765	@,
	ldrd	r8, [sp]	@ pts, %sfp
	cmp	r9, r3	@ pts, D.42901
	cmpeq	r8, r2	@ pts, D.42901
	bhi	.L844	@,
.L765:
	ldr	r6, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r0, r6	@ D.42895, j
	beq	.L766	@,
	movw	r4, #36409	@ tmp702,
	mov	r8, #2	@ tmp701,
	movt	r4, 14563	@ tmp702,
.L767:
	mov	r3, r6, asl #6	@ tmp448, j,
	mov	r1, r6	@, j
	add	r3, r3, r6, lsl #4	@ tmp449, tmp448, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp450, tmp690, tmp449
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte
	strb	r8, [r3, #204]	@ tmp701, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].SegState
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.42899, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_286].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.42900, D.42899
	str	r2, [r5, #2284]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.42900, D.42900
	str	r3, [r5, #2288]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r2, r6, #1	@ D.42900, j,
	ldr	ip, [r5, #2256]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	smull	r0, r1, r2, r4	@ tmp484, D.42900, tmp702
	mov	r6, r2, asr #31	@ tmp487, D.42900,
	rsb	r6, r6, r1, asr #8	@ j, tmp487,,
	mov	r3, r6, asl #10	@ tmp490, j,
	add	r6, r3, r6, lsl #7	@ tmp491, tmp490, j,
	rsb	r6, r6, r2	@ j, tmp491, D.42900
	cmp	ip, r6	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, j
	bne	.L767	@,
.L766:
	mov	r3, r6, asl #6	@ tmp501, j,
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	add	r6, r3, r6, lsl #4	@ tmp502, tmp501, j,
	mov	r0, #0	@ D.42895,
	add	fp, fp, r6	@ tmp503, tmp690, tmp502
	ldrd	r2, [fp, #232]	@ D.42901, tmp503,
	strd	r2, [r1]	@ D.42901, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L842:
	ldr	r8, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	ldr	r10, [sp, #28]	@ pSmInstArray, %sfp
	cmp	r8, r4	@ j, i
	beq	.L755	@,
	movw	r4, #36409	@ tmp698,
	mov	r6, #2	@ tmp697,
	movt	r4, 14563	@ tmp698,
.L756:
	mov	r3, r8, asl #6	@ tmp271, j,
	mov	r1, r8	@, j
	add	r3, r3, r8, lsl #4	@ tmp272, tmp271, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp273, tmp690, tmp272
	strb	r6, [r3, #204]	@ tmp697, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.42899, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.42900, D.42899
	str	r2, [r5, #2284]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.42900, D.42900
	str	r3, [r5, #2288]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r8, #1	@ D.42900, j,
	ldr	r0, [r5, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	smull	r2, r3, r1, r4	@ tmp307, D.42900, tmp698
	mov	r8, r1, asr #31	@ tmp310, D.42900,
	rsb	r8, r8, r3, asr #8	@ j, tmp310,,
	mov	r3, r8, asl #10	@ tmp313, j,
	add	r8, r3, r8, lsl #7	@ tmp314, tmp313, j,
	rsb	r8, r8, r1	@ j, tmp314, D.42900
	cmp	r0, r8	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, j
	bne	.L756	@,
.L755:
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	adds	r3, r10, #168	@ pRawPacketArray, pSmInstArray,
	str	r3, [sp, #36]	@ pRawPacketArray, %sfp
	beq	.L751	@,
	ldr	r9, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r8, [fp, #172]	@ D.42900, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	cmp	r9, r8	@ i, D.42900
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	addgt	r3, r8, #1024	@ D.42900, D.42900,
	rsble	r3, r9, r8	@ D.42895, i, D.42900
	rsbgt	r3, r9, r3	@ D.42895, i, D.42900
	cmp	r9, r8	@ i, D.42900
	str	r3, [sp, #48]	@ D.42895, %sfp
	beq	.L833	@,
	str	r5, [sp, #52]	@ tmp691, %sfp
	mvn	r6, #0	@ tmp696,
	mvn	r7, #0	@,
	mov	ip, r9	@ i, i
	str	r9, [sp, #28]	@ i, %sfp
	ldrd	r4, [sp]	@ pts, %sfp
	b	.L772	@
.L847:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r9, lsr #22	@ tmp544, tmp543,
	add	r3, lr, ip	@ tmp545, D.42900, tmp544
	ubfx	r3, r3, #0, #10	@ tmp546, tmp545,,
	rsb	ip, ip, r3	@ i, tmp544, tmp546
.L777:
	cmp	r8, ip	@ D.42900, i
	beq	.L845	@,
.L772:
	mov	r3, ip, asl #6	@ tmp531, i,
	mvn	r0, #0	@ tmp535,
	add	r3, r3, ip, lsl #3	@ tmp532, tmp531, i,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp533, pSmInstArray, tmp532
	ldrd	r2, [r3, #184]	@ D.42901, tmp533,
	cmp	r3, r7	@ D.42901,
	cmpeq	r2, r6	@ D.42901, tmp696
	beq	.L846	@,
	cmp	r5, r3	@ pts, D.42901
	add	lr, ip, #1	@ D.42900, i,
	cmpeq	r4, r2	@ pts, D.42901
	mov	r9, lr, asr #31	@ tmp543, D.42900,
	bhi	.L847	@,
	beq	.L848	@,
	bcs	.L777	@,
	ldr	lr, [fp, #176]	@ D.42900, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r9, [sp, #28]	@ i, %sfp
	strd	r2, [sp, #16]	@ D.42901,,
	mov	r4, lr, asl #6	@ tmp575, D.42900,
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	add	r4, r4, lr, lsl #3	@ tmp576, tmp575, D.42900,
	add	r4, r10, r4	@ tmp577, pSmInstArray, tmp576
	ldrd	r6, [r4, #184]	@ D.42901, tmp577,
	cmp	r7, r1	@ D.42901,
	cmpeq	r6, r0	@ D.42901, tmp535
	beq	.L849	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r7	@ pts, D.42901
	cmpeq	r0, r6	@ pts, D.42901
	bls	.L785	@,
	subs	r0, r0, r6	@ D.42901, D.42901, D.42901
	ldrd	r2, [sp, #40]	@ gap,,
	sbc	r1, r1, r7	@ D.42901, D.42901, D.42901
	cmp	r3, r1	@ gap, D.42901
	cmpeq	r2, r0	@ gap, D.42901
	bcc	.L850	@,
.L785:
	cmp	r9, lr	@ i, D.42900
	addgt	lr, lr, #1024	@ D.42900, D.42900,
	rsb	r1, r9, lr	@ DelNum, i, D.42900
	cmp	r1, #0	@ DelNum,
	beq	.L788	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp595,
	movne	r4, #0	@ tmp595,
	beq	.L788	@,
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.42901, *pArgs_35(D)
.L841:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, r4	@, tmp595
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.42895, tmp595
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L846:
	add	r3, ip, #1	@ D.42900, i,
	mov	ip, r3, asr #31	@ tmp536, D.42900,
	mov	ip, ip, lsr #22	@ tmp537, tmp536,
	add	r3, r3, ip	@ tmp538, D.42900, tmp537
	ubfx	r3, r3, #0, #10	@ tmp539, tmp538,,
	rsb	ip, ip, r3	@ i, tmp537, tmp539
	cmp	r8, ip	@ D.42900, i
	bne	.L772	@,
.L845:
	ldr	r9, [sp, #28]	@ i, %sfp
	cmp	r9, r8	@ i, D.42900
	addgt	r8, r8, #1024	@ D.42900, D.42900,
.L833:
	rsb	r1, r9, r8	@ DelNum, i, D.42900
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	cmp	r1, #0	@ DelNum,
	bne	.L851	@,
.L775:
	ldr	r2, [sp, #48]	@ RawNumInVfmw, %sfp
	ldrd	r0, [sp, #16]	@ RawNum,,
	mov	r3, r2, asr #31	@ RawNumInVfmw, RawNumInVfmw,
	cmp	r1, r3	@ RawNum, RawNumInVfmw
	cmpeq	r0, r2	@ RawNum, RawNumInVfmw
	bls	.L852	@,
	ldrd	r0, [sp, #16]	@ RawNumToSeek,,
	subs	r0, r0, r2	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	sbc	r1, r1, r3	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	mov	r2, r0	@ RawNumToSeek, RawNumToSeek
	movw	r0, #1023	@ tmp609,
	mov	r3, r1	@ RawNumToSeek, RawNumToSeek
	and	r0, r0, r2	@ D.42901, tmp609, RawNumToSeek
	mov	r1, #0	@,
	and	r1, r1, r3	@ D.42901,, RawNumToSeek
	orrs	r1, r0, r1	@ tmp759, D.42901
	mov	r2, r2, lsr #10	@ D.42901, RawNumToSeek,
	orrne	r2, r2, r3, asl #22	@ D.42901, D.42901, RawNumToSeek,
	orreq	r3, r2, r3, asl #22	@ SeekTime, D.42901, RawNumToSeek,
	addne	r3, r2, #1	@ SeekTime, D.42901,
	add	r3, r3, #1	@ D.42900, SeekTime,
	str	r3, [sp, #32]	@ D.42900, %sfp
	cmp	r3, #0	@ D.42900,
	ble	.L813	@,
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
.L814:
	ldr	r3, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	lr, [fp, #172]	@ D.42895, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	mov	ip, r3	@ i, i
	str	r3, [sp, #16]	@ i, %sfp
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L794:
	mov	r3, ip, asl #6	@ tmp630, i,
	cmp	ip, lr	@ i, D.42895
	add	r3, r3, ip, lsl #3	@ tmp631, tmp630, i,
	mvn	r0, #0	@ tmp634,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp632, pSmInstArray, tmp631
	beq	.L853	@,
	ldrd	r6, [r3, #184]	@ D.42901, tmp632,
	add	r3, ip, #1	@ D.42900, i,
	cmp	r7, r5	@ D.42901,
	cmpeq	r6, r4	@ D.42901, tmp693
	beq	.L854	@,
	cmp	r9, r7	@ pts, D.42901
	mov	r2, r3, asr #31	@ tmp642, D.42900,
	cmpeq	r8, r6	@ pts, D.42901
	bls	.L802	@,
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r2, lsr #22	@ tmp643, tmp642,
	add	r3, r3, ip	@ tmp644, D.42900, tmp643
	ubfx	r3, r3, #0, #10	@ tmp645, tmp644,,
	rsb	ip, ip, r3	@ i, tmp643, tmp645
	b	.L794	@
.L802:
	beq	.L855	@,
	bcs	.L794	@,
	ldr	lr, [fp, #176]	@ D.42895, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r2, r6	@ D.42901, D.42901
	ldr	r8, [sp, #16]	@ i, %sfp
	mov	r3, r7	@ D.42901, D.42901
	mov	r4, lr, asl #6	@ tmp662, D.42895,
	add	r4, r4, lr, lsl #3	@ tmp663, tmp662, D.42895,
	add	r4, r10, r4	@ tmp664, pSmInstArray, tmp663
	ldrd	r4, [r4, #184]	@ D.42901, tmp664,
	cmp	r5, r1	@ D.42901,
	cmpeq	r4, r0	@ D.42901, tmp634
	beq	.L856	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r5	@ pts, D.42901
	cmpeq	r0, r4	@ pts, D.42901
	bls	.L808	@,
	subs	r0, r0, r4	@ D.42901, D.42901, D.42901
	ldrd	r6, [sp, #40]	@ gap,,
	sbc	r1, r1, r5	@ D.42901, D.42901, D.42901
	cmp	r7, r1	@ gap, D.42901
	cmpeq	r6, r0	@ gap, D.42901
	strcc	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	movcc	r4, r2	@ D.42901, D.42901
	movcc	r5, r3	@ D.42901, D.42901
	movcc	lr, ip	@ D.42895, i
.L808:
	cmp	lr, r8	@ D.42895, i
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	addlt	lr, lr, #1024	@ D.42900, D.42895,
	rsb	r1, r8, lr	@ DelNum, i, D.42900
	cmp	r1, #0	@ DelNum,
	strd	r4, [r3]	@ D.42901, *pArgs_35(D)
	bne	.L811	@,
.L840:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, r1	@ D.42895, DelNum
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L830:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L854:
	mov	ip, r3, asr #31	@ tmp635, D.42900,
	mov	ip, ip, lsr #22	@ tmp636, tmp635,
	add	r3, r3, ip	@ tmp637, D.42900, tmp636
	ubfx	r3, r3, #0, #10	@ tmp638, tmp637,,
	rsb	ip, ip, r3	@ i, tmp636, tmp638
	b	.L794	@
.L853:
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r3, ip	@ i, i
	addgt	ip, ip, #1024	@ D.42900, i,
	ldrgt	r3, [sp, #16]	@ i, %sfp
	rsb	r1, r3, ip	@ DelNum, i, D.42900
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r1, #0	@ DelNum,
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bne	.L857	@,
.L799:
	ldr	r3, [sp, #28]	@ j, %sfp
	ldr	r2, [sp, #32]	@ D.42900, %sfp
	add	r3, r3, #1	@ j, j,
	str	r3, [sp, #28]	@ j, %sfp
	cmp	r3, r2	@ j, D.42900
	beq	.L813	@,
	ldr	r6, [sp, #12]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r0, r6	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r6	@, ChanID
	bl	FillRawData	@
	b	.L814	@
.L855:
	ldr	r8, [sp, #16]	@ i, %sfp
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	cmp	r8, ip	@ i, i
	ldrd	r2, [sp]	@ pts, %sfp
	addgt	ip, ip, #1024	@ D.42900, i,
	rsb	r1, r8, ip	@ DelNum, i, D.42900
	cmp	r1, #0	@ DelNum,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	beq	.L840	@,
.L811:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.42895,
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L857:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L799	@
.L848:
	ldr	r9, [sp, #28]	@ i, %sfp
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	cmp	ip, r9	@ i, i
	addlt	ip, ip, #1024	@ D.42900, i,
	rsb	r1, r9, ip	@ DelNum, i, D.42900
	cmp	r1, #0	@ DelNum,
	beq	.L782	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp558,
	movne	r4, #0	@ tmp558,
	beq	.L782	@,
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	b	.L841	@
.L851:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L775	@
.L843:
	ldr	r10, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r4, r10	@ i, j
	beq	.L762	@,
	movw	r9, #36409	@ tmp700,
	movt	r9, 14563	@ tmp700,
.L763:
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
	rsb	r2, ip, r2	@ D.42899, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.42900, D.42899
	str	r2, [r5, #2284]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.42900, D.42900
	str	r3, [r5, #2288]	@ D.42900, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r10, #1	@ D.42900, j,
	smull	r2, r3, r1, r9	@ tmp402, D.42900, tmp700
	mov	r10, r1, asr #31	@ tmp405, D.42900,
	rsb	r10, r10, r3, asr #8	@ j, tmp405,,
	mov	r3, r10, asl #10	@ tmp408, j,
	add	r10, r3, r10, lsl #7	@ tmp409, tmp408, j,
	rsb	r10, r10, r1	@ j, tmp409, D.42900
	cmp	r4, r10	@ i, j
	bne	.L763	@,
	add	r6, r6, r8	@ tmp415, tmp688, tmp689
	add	fp, fp, r6	@ tmp416, tmp690, tmp415
	ldrd	r2, [fp, #232]	@ D.42896, tmp416,
.L762:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	mov	r0, #0	@ D.42895,
	strd	r2, [r1]	@ D.42896, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L782:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r1]	@ pts, *pArgs_35(D)
.L839:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, #0	@ D.42895,
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	str	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L788:
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.42901, *pArgs_35(D)
	b	.L839	@
.L856:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r4, r6	@ D.42901, D.42901
	mov	r5, r7	@ D.42901, D.42901
	mov	lr, ip	@ D.42895, i
	b	.L808	@
.L844:
	subs	r8, r8, r2	@ D.42901, D.42901, D.42901
	sbc	r9, r9, r3	@ D.42901, D.42901, D.42901
	mov	r2, r8	@ D.42901, D.42901
	mov	r3, r9	@ D.42901, D.42901
	ldrd	r8, [sp, #40]	@ gap,,
	cmp	r9, r3	@ gap, D.42901
	cmpeq	r8, r2	@ gap, D.42901
	strcc	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	movcc	r0, r4	@ D.42895, i
	b	.L765	@
.L850:
	ldrd	r6, [sp, #16]	@ D.42901,,
	mov	lr, ip	@ D.42900, i
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	b	.L785	@
.L849:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r6, r2	@ D.42901, D.42901
	mov	r7, r3	@ D.42901, D.42901
	mov	lr, ip	@ D.42900, i
	b	.L785	@
.L813:
	mvn	r0, #1	@ D.42895,
	b	.L830	@
.L751:
	mvn	r0, #0	@ D.42895,
	b	.L830	@
.L852:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.42895,
	b	.L830	@
.L859:
	.align	2
.L858:
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
	ldrsb	r3, [r4, #1]	@ D.42908, pSmCtrlReg_6(D)->SliceCheckFlag
	ldr	r1, [r4, #36]	@ pSmCtrlReg_6(D)->ScdProtocol, pSmCtrlReg_6(D)->ScdProtocol
	ldr	r2, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.42908, D.42908,
	and	r1, r1, #15	@ D.42908, pSmCtrlReg_6(D)->ScdProtocol,
	and	r3, r3, #16	@ D.42908, D.42908,
	orr	r1, r1, r2, asl #8	@ D.42908, D.42908, pSmCtrlReg_6(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.42908, D.42908
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r2	@ PushRawNum, PushRawNum
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r5, #0	@ PushRawNum,
	ldmlefd	sp!, {r4, r5, r6, pc}	@
	mov	r4, #0	@ i,
.L872:
	bl	vfmw_dprint_nothing	@
	add	r4, r4, #1	@ i, i,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	cmp	r4, r5	@ i, PushRawNum
	bne	.L872	@,
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
	beq	.L887	@,
	add	r3, r6, #73728	@ tmp182, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp182,,
	cmp	r1, r2	@ pRawStreamArray_17(D)->Head, pRawStreamArray_17(D)->Tail
	beq	.L888	@,
	ldr	r9, [r3, #12]	@ FirstRawOffset, pRawStreamArray_17(D)->FirstPacketOffset
	mov	fp, r9	@ D.42925, FirstRawOffset
.L877:
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
	add	r9, r2, r9	@ D.42920, RawPacket.PhyAddr, FirstRawOffset
	add	r3, r3, fp	@ D.42921, RawPacket.VirAddr, D.42925
	str	r4, [sp, #8]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [sp]	@ D.42920, RawPacket.PhyAddr
	str	r3, [sp, #4]	@ D.42921, RawPacket.VirAddr
	bgt	.L878	@,
	mov	fp, r10	@ PushRawNum, j
	mov	lr, r4	@ D.42919, RawShowTotalLen
	b	.L881	@
.L899:
	ldr	lr, [sp, #8]	@ D.42919, RawPacket.Length
	movw	r2, #1023	@ tmp256,
	add	r4, r4, lr	@ RawShowTotalLen, RawShowTotalLen, D.42919
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	movlt	r3, #0	@ tmp216,
	movge	r3, #1	@ tmp216,
	cmp	fp, r2	@ PushRawNum, tmp256
	movgt	r3, #0	@ tmp216,
	cmp	r3, #0	@ tmp216,
	beq	.L880	@,
.L881:
	cmp	lr, #0	@ D.42919,
	mov	r3, r10, asl #2	@ D.42923, j,
	add	r2, r5, r3	@ tmp200, pDownMsgVirAddr, D.42923
	mov	r1, sp	@,
	mov	r0, r6	@, pRawStreamArray
	add	r3, r3, #12	@ D.42923, D.42923,
	ble	.L879	@,
	ldr	ip, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	ldr	r9, [sp, #112]	@ tmp251, DownMsgPhyAddr
	add	lr, lr, ip	@ D.42920, D.42919, RawPacket.PhyAddr
	str	ip, [r5, r10, asl #2]	@ RawPacket.PhyAddr, *_43
	add	r10, r10, #3	@ j, j,
	add	r3, r3, r9	@ D.42923, D.42923, tmp251
	sub	lr, lr, #1	@ D.42920, D.42920,
	mov	r9, #0	@ tmp252,
	str	r3, [r2, #8]	@ D.42923, *_56
	str	r9, [sp, #8]	@ tmp252, RawPacket.Length
	str	lr, [r2, #4]	@ D.42920, *_49
.L879:
	str	r4, [r7, #4]	@ RawShowTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L899	@,
.L880:
	ldr	r3, [sp, #116]	@ tmp253, LowdlyFlag
	cmp	r3, #0	@ tmp253,
	bne	.L882	@,
	ldr	r3, [sp, #8]	@ D.42919, RawPacket.Length
	cmp	r3, #0	@ D.42919,
	bne	.L886	@,
.L882:
	cmp	fp, #0	@ PushRawNum,
	beq	.L885	@,
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
	mov	r0, r4	@ D.42919, tmp236
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L878:
	ldr	r3, [sp, #116]	@ tmp255, LowdlyFlag
	cmp	r3, #0	@ tmp255,
	bne	.L885	@,
	cmp	r4, #0	@ RawShowTotalLen,
	beq	.L885	@,
	ldr	r10, [sp, #116]	@ j, LowdlyFlag
	mov	r3, r4	@ D.42919, RawShowTotalLen
	mov	fp, r10	@ PushRawNum, j
.L886:
	ldr	r2, [r7, #4]	@ D.42920, pSmPushRaw_33(D)->PushRawTotalLen
	sub	r1, r8, #16	@ D.42920, SegStreamSize,
	cmp	r2, r1	@ D.42920, D.42920
	bge	.L882	@,
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	cmplt	fp, #1024	@, PushRawNum,
	bge	.L882	@,
	rsb	r2, r2, r8	@ D.42920, D.42920, SegStreamSize
	cmp	r2, r3	@ D.42920, D.42919
	bgt	.L882	@,
	mov	r3, r10, asl #2	@ D.42923, j,
	ldr	ip, [sp]	@ D.42920, RawPacket.PhyAddr
	add	r0, r5, r3	@ tmp226, pDownMsgVirAddr, D.42923
	ldr	lr, [sp, #112]	@ tmp254, DownMsgPhyAddr
	add	r1, r2, ip	@ D.42920, D.42920, D.42920
	add	r3, r3, #12	@ D.42923, D.42923,
	str	ip, [r5, r10, asl #2]	@ D.42920, *_84
	add	r3, r3, lr	@ D.42923, D.42923, tmp254
	sub	r1, r1, #1	@ D.42920, D.42920,
	stmib	r0, {r1, r3}	@ tmp226,,
	ldr	r3, [r7, #4]	@ pSmPushRaw_33(D)->PushRawTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	mov	r1, #0	@ tmp234,
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	add	r10, r10, #3	@ j, j,
	add	r2, r3, r2	@ D.42920, pSmPushRaw_33(D)->PushRawTotalLen, D.42920
	str	r1, [sp, #8]	@ tmp234, RawPacket.Length
	str	r2, [r7, #4]	@ D.42920, pSmPushRaw_33(D)->PushRawTotalLen
	b	.L882	@
.L888:
	mov	fp, #0	@ D.42925,
	mov	r9, fp	@ FirstRawOffset, D.42925
	b	.L877	@
.L887:
	mov	fp, r6	@ D.42925, pRawStreamArray
	mov	r9, r6	@ FirstRawOffset, pRawStreamArray
	b	.L877	@
.L885:
	mvn	r0, #5	@ D.42919,
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
	bne	.L901	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L901:
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
	movne	r8, #0	@ D.42939,
	moveq	r8, #1	@ D.42939,
	cmn	r0, #168	@ pScdInstance,
	str	r2, [sp, #12]	@ pRawStreamArray, %sfp
	ldr	r2, [r0, #88]	@ D.42937, pScdInstance_9(D)->Config.ScdLowdlyEnable
	movne	r7, #0	@ D.42939,
	moveq	r7, #1	@ D.42939,
	orrs	r3, r7, r8	@ tmp180, D.42939, D.42939
	ldr	r9, [r0, #56]	@ StdType, pScdInstance_9(D)->Config.VidStd
	str	r2, [sp, #16]	@ D.42937, %sfp
	bne	.L906	@,
	add	r6, r0, #165888	@ __p, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r6, r6, #248	@ __p, __p,
	mov	r1, #12	@,
	str	r3, [sp, #24]	@ tmp180, SegStreamSize
	mov	r0, r6	@, __p
	str	r3, [sp, #28]	@ tmp180, FreeSegBufAddr
	bl	__memzero	@
	cmp	r7, #0	@ D.42939,
	bne	.L906	@,
	ldr	r3, [r5, #168]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r7, [r5, #172]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail
	subs	r7, r7, r3	@ StreamNum, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	addmi	r7, r7, #1024	@ StreamNum, StreamNum,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #188]	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].RawTotalSize
	ldr	r3, [r5, #180]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset
	rsb	r5, r3, r2	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, RawStreamSize
	movs	fp, r5, asr #31	@ D.42938, RawStreamSize,
	beq	.L926	@,
.L922:
	mov	r0, fp	@, D.42938
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L906:
	mvn	fp, #0	@ D.42938,
	mov	r0, fp	@, D.42938
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L926:
	bl	vfmw_dprint_nothing	@
	cmp	r5, #3	@ RawStreamSize,
	cmpgt	r7, #0	@, StreamNum,
	ble	.L918	@,
	add	r3, r4, #163840	@ tmp296, pScdInstance,
	movw	r0, #36409	@ tmp211,
	movt	r0, 14563	@ tmp211,
	str	r3, [sp, #20]	@ tmp296, %sfp
	ldr	r2, [r3, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail
	ldr	r7, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head
	add	r2, r2, #1152	@ D.42937, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail,
	rsb	r2, r7, r2	@ D.42937, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, D.42937
	smull	r0, r1, r2, r0	@ tmp210, D.42937, tmp211
	mov	r7, r2, asr #31	@ tmp213, D.42937,
	rsb	r1, r7, r1, asr #8	@ tmp209, tmp213,,
	mov	r7, r1, asl #10	@ tmp216, tmp209,
	add	r7, r7, r1, lsl #7	@ tmp217, tmp216, tmp209,
	rsb	r7, r7, r2	@ D.42937, tmp217, D.42937
	bl	vfmw_dprint_nothing	@
	rsb	r7, r7, #1152	@ StreamNum, D.42937,
	cmp	r7, #288	@ StreamNum,
	ldr	r3, [sp, #20]	@ tmp296, %sfp
	ble	.L909	@,
	mov	r0, r10	@, pStreamSegArray
	add	r2, sp, #24	@,,
	add	r1, sp, #28	@,,
	str	r3, [sp, #20]	@ tmp296, %sfp
	bl	GetFreeSegBuf	@
	ldr	r2, [sp, #28]	@ FreeSegBufAddr, FreeSegBufAddr
	ldr	r1, [sp, #24]	@ SegStreamSize, SegStreamSize
	add	r2, r2, #3	@ D.42940, FreeSegBufAddr,
	bic	r2, r2, #3	@ D.42940, D.42940,
	sub	r1, r1, #79	@ D.42937, SegStreamSize,
	str	r2, [sp, #28]	@ D.42940, FreeSegBufAddr
	str	r1, [sp, #24]	@ D.42937, SegStreamSize
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #20]	@ tmp296, %sfp
	ldr	r2, [sp, #24]	@ D.42937, SegStreamSize
	ldr	r0, [r3, #2268]	@ SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufSize
	cmp	r2, r0, asr #3	@ D.42937, SegBufSize,
	ble	.L909	@,
	cmp	r8, #0	@ D.42939,
	add	r8, r4, #176128	@ tmp298, pScdInstance,
	str	r7, [r3, #2336]	@ StreamNum, pScdInstance_9(D)->BufAddrCfg.UpMsgNum
	sub	r1, r9, #6	@ D.42939, StdType,
	ldr	ip, [r8, #3996]	@ pScdInstance_9(D)->UpMsgStepNum, pScdInstance_9(D)->UpMsgStepNum
	movne	r0, fp	@ D.42937, D.42938
	ldreq	lr, [r3, #2264]	@ D.42937, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufPhyAddr
	movne	lr, fp	@ D.42937, D.42938
	ldr	r10, [r3, #2312]	@ D.42937, pScdInstance_9(D)->BufAddrCfg.DownMsgPhyAddr
	clz	r1, r1	@ D.42939, D.42939
	mul	r7, ip, r7	@ D.42940, pScdInstance_9(D)->UpMsgStepNum, StreamNum
	ldr	ip, [sp, #16]	@ D.42937, %sfp
	addeq	r0, r0, lr	@ D.42937, SegBufSize, D.42937
	str	lr, [sp, #56]	@ D.42937, ScdCtrlReg.BufferFirst
	str	r0, [sp, #60]	@ D.42937, ScdCtrlReg.BufferLast
	cmp	r9, #1	@ StdType,
	cmpne	r9, #15	@, StdType,
	ldr	r0, [r3, #2316]	@ D.42941, pScdInstance_9(D)->BufAddrCfg.pDownMsgVirAddr
	mov	r1, r1, lsr #5	@ D.42939, D.42939,
	ldr	lr, [r3, #2324]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr
	str	ip, [sp, #136]	@ D.42937, ScdCtrlReg.ScdLowdlyEnable
	ldr	ip, [sp, #28]	@ FreeSegBufAddr, FreeSegBufAddr
	str	r7, [sp, #52]	@ D.42940, ScdCtrlReg.UpLen
	mov	r7, r7, asl #2	@ D.42940, D.42940,
	str	r10, [sp, #36]	@ D.42937, ScdCtrlReg.DownMsgPhyAddr
	str	r7, [r3, #2332]	@ D.42940, pScdInstance_9(D)->BufAddrCfg.UpMsgSize
	mov	r3, #1	@ tmp243,
	str	r0, [sp, #40]	@ D.42941, ScdCtrlReg.pDownMsgVirAddr
	str	lr, [sp, #44]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, ScdCtrlReg.UpMsgPhyAddr
	str	ip, [sp, #64]	@ FreeSegBufAddr, ScdCtrlReg.BufferIni
	str	r1, [sp, #140]	@ D.42939, ScdCtrlReg.reg_avs_flag
	strb	r3, [sp, #34]	@ tmp243, ScdCtrlReg.ScdStart
	strb	r3, [sp, #32]	@ tmp243, ScdCtrlReg.ScdIntMask
	beq	.L920	@,
	cmp	r1, #0	@ D.42939,
	beq	.L927	@,
.L925:
	strb	r3, [sp, #33]	@ tmp269, ScdCtrlReg.SliceCheckFlag
	mov	r1, r6	@, __p
	str	r0, [sp]	@ D.42941,
	add	r0, sp, #32	@,,
	str	r10, [sp, #4]	@ D.42937,
	mov	r7, #1	@ tmp271,
	ldr	r3, [sp, #12]	@, %sfp
	str	r9, [sp, #68]	@ D.42937, ScdCtrlReg.ScdProtocol
	str	r7, [sp, #72]	@ tmp271, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	movne	fp, r6	@ D.42938, Ret
	bne	.L922	@,
	ldr	r3, [sp, #24]	@ D.42937, SegStreamSize
	strb	r7, [r4, #5]	@ tmp271, pScdInstance_9(D)->IsWaitSCD
	cmp	r3, r5	@ D.42937, RawStreamSize
	str	r5, [r8, #3968]	@ RawStreamSize, pScdInstance_9(D)->PrevCfgRawSize
	str	r3, [r8, #3972]	@ D.42937, pScdInstance_9(D)->PrevCfgSegSize
	movlt	r2, #0	@ tmp300,
	movge	r2, #1	@ tmp300,
	strb	r6, [r4, #4]	@ Ret, pScdInstance_9(D)->FillNewRawFlag
	strb	r2, [r4, #2]	@ tmp300, pScdInstance_9(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r8, #3992]	@, pScdInstance_9(D)->LastSCDStartTime
	strb	r6, [r4, #3]	@ Ret, pScdInstance_9(D)->InsertNewSegFlag
	b	.L922	@
.L920:
	mov	r9, #0	@ D.42937,
.L911:
	mov	r3, #0	@ tmp269,
	b	.L925	@
.L927:
	sub	r1, r9, #2	@ D.42940, D.42937,
	cmp	r1, r3	@ D.42940,
	bls	.L925	@,
	b	.L911	@
.L909:
	mvn	fp, #5	@ D.42938,
	b	.L922	@
.L918:
	mvn	fp, #4	@ D.42938,
	b	.L922	@
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
	ldr	r7, .L974	@ tmp283,
	ldr	r4, [r7, #296]	@ D.42954, s_eScdDrvSleepStage
	cmp	r4, #0	@ D.42954,
	beq	.L929	@,
	cmp	r4, #1	@ D.42954,
	beq	.L930	@,
.L946:
	mvn	r0, #2	@ D.42953,
.L931:
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L929:
	ldr	fp, [r7, #284]	@ NextInstId, s_SmIIS.ThisInstID
	mov	r9, r4	@ SegBufTotalSize, FreshSize
	mov	r8, r4	@ tmp284, FreshSize
	mov	r10, #4	@ D.42960,
	str	r0, [sp, #8]	@ pNextInstId, %sfp
	str	r4, [sp, #4]	@ FreshSize, %sfp
.L945:
	add	r3, fp, #1	@ D.42955, NextInstId,
	add	r1, sp, #16	@,,
	mov	fp, r3, asr #31	@ tmp168, D.42955,
	mov	fp, fp, lsr #30	@ tmp169, tmp168,
	add	r3, r3, fp	@ tmp170, D.42955, tmp169
	and	r3, r3, #3	@ tmp171, tmp170,
	rsb	fp, fp, r3	@ NextInstId, tmp169, tmp171
	add	r5, fp, #58	@ tmp282, NextInstId,
	mov	r0, fp	@, NextInstId
	add	r3, r7, r5, lsl #2	@ tmp175, tmp283, tmp282,
	ldr	r6, [r3, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp, #16]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L932	@,
	ldr	r3, [r6, #56]	@ D.42957, pSmInstArray_22->Config.VidStd
	sub	r2, r3, #8	@ D.42958, D.42957,
	cmp	r3, #5	@ D.42957,
	cmpne	r2, #1	@, D.42958,
	bls	.L932	@,
	cmp	r3, #1	@ D.42957,
	beq	.L971	@,
	cmp	r3, #4	@ D.42957,
	cmpne	r3, #18	@, D.42957,
	sub	r1, r3, #10	@ D.42958, D.42957,
	moveq	r2, #1	@ tmp192,
	movne	r2, #0	@ tmp192,
	cmp	r1, #4	@ D.42958,
	orrls	r2, r2, #1	@,, tmp199, tmp192
	cmp	r2, #0	@ tmp199,
	bne	.L932	@,
	cmp	r3, #17	@ D.42957,
	bne	.L934	@,
	mov	r0, fp	@, NextInstId
	bl	SM_CopyYuvToDnr	@
	cmp	r0, #0	@,
	beq	.L932	@,
	bl	vfmw_dprint_nothing	@
.L932:
	subs	r10, r10, #1	@ D.42960, D.42960,
	bne	.L945	@,
	b	.L946	@
.L930:
	mov	r3, #2	@ tmp166,
	mvn	r0, #2	@ D.42953,
	str	r3, [r7, #296]	@ tmp166, s_eScdDrvSleepStage
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L971:
	ldr	r3, [r6, #72]	@ pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_22->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L932	@,
.L934:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, #176128	@ tmp201, pSmInstArray,
	ldr	r3, [r2, #3992]	@ pSmInstArray_22->LastSCDStartTime, pSmInstArray_22->LastSCDStartTime
	subs	r3, r0, r3	@ WaitTime, D.42958, pSmInstArray_22->LastSCDStartTime
	strmi	r0, [r2, #3992]	@ D.42958, pSmInstArray_22->LastSCDStartTime
	bmi	.L936	@,
	ldrsb	r2, [r6, #2]	@ pSmInstArray_22->LastCfgAllRawFlag, pSmInstArray_22->LastCfgAllRawFlag
	cmp	r2, #1	@ pSmInstArray_22->LastCfgAllRawFlag,
	beq	.L972	@,
.L936:
	ldrsb	r3, [r6]	@ pSmInstArray_22->SegFullFlag, pSmInstArray_22->SegFullFlag
	cmp	r3, #1	@ pSmInstArray_22->SegFullFlag,
	strneb	r8, [r6, #1]	@ tmp284, pSmInstArray_22->IsCounting
	beq	.L973	@,
.L940:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp297,
	streqb	r3, [r6]	@ tmp297, pSmInstArray_22->SegFullFlag
	beq	.L932	@,
	cmp	r0, #0	@ Ret,
	strb	r8, [r6]	@ tmp284, pSmInstArray_22->SegFullFlag
	bne	.L932	@,
	ldr	r3, [sp, #8]	@ pNextInstId, %sfp
	add	r5, r7, r5, lsl #2	@ tmp265, tmp283, tmp282,
	mov	r0, #1	@,
	str	fp, [r3]	@ NextInstId, *pNextInstId_64(D)
	ldr	r2, [r5, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r2, #0	@ pSmInstArray,
	addne	r2, r2, #163840	@ tmp268, pSmInstArray,
	movne	r1, #1	@ tmp269,
	strne	r1, [r2, #2412]	@ tmp269, pSmInstArray_45->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L970	@,
	bl	OSAL_GetTimeInMs	@
	add	r3, r7, fp, lsl #2	@ tmp271, tmp283, NextInstId,
	ldr	r1, .L974+4	@ tmp275,
	ldr	r2, [r3, #324]	@ tmp274, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r2, r2, r0	@ D.42958, tmp274, D.42958
	cmp	r2, r1	@ D.42958, g_TraceBsPeriod
	strhi	r0, [r3, #324]	@ D.42958, last_rec_pos_time
.L970:
	mov	r0, #0	@ D.42953,
	b	.L931	@
.L972:
	ldrsb	r2, [r6, #4]	@ pSmInstArray_22->FillNewRawFlag, pSmInstArray_22->FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	r2, #0	@, pSmInstArray_22->FillNewRawFlag,
	beq	.L932	@,
	b	.L936	@
.L973:
	add	r3, r6, #73728	@ D.42959, pSmInstArray,
	add	r3, r3, #192	@ D.42959, D.42959,
	cmp	r3, #0	@ D.42959,
	addne	r2, r6, #163840	@ tmp219, pSmInstArray,
	ldrne	r1, [r2, #2288]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegFreshNum
	ldrne	r4, [r2, #2284]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegFreshSize
	ldrne	r9, [r2, #2268]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_22 + 73920B].SegBufSize
	ldrsb	r2, [r6, #1]	@ pSmInstArray_22->IsCounting, pSmInstArray_22->IsCounting
	strne	r1, [sp, #4]	@ FreshNum, %sfp
	cmp	r2, #0	@ pSmInstArray_22->IsCounting,
	bne	.L939	@,
	add	r3, r9, r9, lsr #31	@ tmp231, SegBufTotalSize, SegBufTotalSize,
	ldr	r2, [sp, #4]	@ FreshNum, %sfp
	cmp	r4, r3, asr #1	@ FreshSize, tmp231,
	movlt	r3, #1	@ tmp234,
	movge	r3, #0	@ tmp234,
	cmp	r2, #127	@ FreshNum,
	movgt	r3, #0	@, tmp239
	andle	r3, r3, #1	@,, tmp239, tmp234
	cmp	r3, #0	@ tmp239,
	beq	.L940	@,
	mov	r3, #1	@ tmp295,
	mov	r0, fp	@, NextInstId
	strb	r3, [r6, #1]	@ tmp295, pSmInstArray_22->IsCounting
	mov	r1, r3	@, tmp295
	bl	CalcInstBlockTime	@
	b	.L940	@
.L939:
	mov	r1, #0	@,
	mov	r0, fp	@, NextInstId
	str	r3, [sp, #12]	@ D.42959, %sfp
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L940	@,
	cmp	r9, #0	@ SegBufTotalSize,
	add	r2, r9, #3	@ tmp246, SegBufTotalSize,
	ldr	r1, [sp, #4]	@ FreshNum, %sfp
	movge	r2, r9	@ SegBufTotalSize, SegBufTotalSize
	cmp	r4, r2, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r2, #1	@ tmp249,
	movge	r2, #0	@ tmp249,
	cmp	r1, #63	@ FreshNum,
	movgt	r2, #0	@, tmp252
	andle	r2, r2, #1	@,, tmp252, tmp249
	cmp	r2, #0	@ tmp252,
	beq	.L940	@,
	bl	vfmw_dprint_nothing	@
	mvn	r1, #0	@,
	ldr	r3, [sp, #12]	@ D.42959, %sfp
	mov	r0, r3	@, D.42959
	bl	ReleaseStreamSeg	@
	strb	r8, [r6, #1]	@ tmp284, pSmInstArray_22->IsCounting
	strb	r8, [r6]	@ tmp284, pSmInstArray_22->SegFullFlag
	b	.L940	@
.L975:
	.align	2
.L974:
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
	ldr	r4, .L991	@ tmp146,
	mov	r0, r3	@ D.42964, tmp123
	str	r3, [sp, #4]	@ tmp123, NextInstID
	b	.L978	@
.L977:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.42964, NextInstID,
	str	r0, [sp, #4]	@ D.42964, NextInstID
	cmp	r0, #3	@ D.42964,
	bgt	.L989	@,
.L978:
	add	r3, r4, r0, lsl #2	@ tmp126, tmp146, D.42964,
	ldr	r3, [r3, #248]	@ D.42963, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.42963,
	add	r2, r3, #163840	@ tmp129, D.42963,
	beq	.L977	@,
	ldr	r3, [r2, #2412]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L977	@,
	bl	FillRawData	@
	b	.L977	@
.L989:
	ldr	r3, [r4, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L991	@ tmp132,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L979	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L990	@,
.L976:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L979:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #292]	@ D.42965, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.42965
	strcc	r0, [r4, #292]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L976	@,
	rsb	r0, r3, r0	@ DelayTime, D.42965, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L976	@,
	bl	vfmw_dprint_nothing	@
	bl	ResetSCD	@
	ldr	r0, [r4, #284]	@ D.42965, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp144,
	str	r3, [r4, #288]	@ tmp144, s_SmIIS.SCDState
	cmp	r0, #3	@ D.42965,
	bhi	.L976	@,
	bl	DeleteLastSendRaw.part.0	@
	b	.L976	@
.L990:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp138,
	str	r2, [r4, #288]	@ tmp138, s_SmIIS.SCDState
	str	r3, [r4, #284]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #292]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L992:
	.align	2
.L991:
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
	and	r3, r0, #1	@ D.42970,,
	movw	r0, #51268	@,
	str	r3, [r4]	@ D.42970, pSmStateReg_5(D)->Scdover
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.42970,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #4]	@ D.42970, pSmStateReg_5(D)->ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.42971,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.42971, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.42970,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.42970, pSmStateReg_5(D)->ScdNum
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
	mvneq	r0, #6	@ D.42982,
	beq	.L1008	@,
	add	r1, r9, #90112	@ tmp166, pStreamSegArray,
	movw	r6, #36409	@ tmp175,
	movt	r6, 14563	@ tmp175,
	subs	ip, r5, #1	@ i, Seg_num,
	ldr	r3, [r1, #2060]	@ pStreamSegArray_12(D)->Tail, pStreamSegArray_12(D)->Tail
	ldr	r8, [r1, #2056]	@ pStreamSegArray_12(D)->Head, pStreamSegArray_12(D)->Head
	add	r3, r3, #1152	@ D.42984, pStreamSegArray_12(D)->Tail,
	rsb	r3, r8, r3	@ D.42984, pStreamSegArray_12(D)->Head, D.42984
	smull	r6, r7, r3, r6	@ tmp174, D.42984, tmp175
	mov	r2, r3, asr #31	@ tmp177, D.42984,
	rsb	r2, r2, r7, asr #8	@ tmp173, tmp177,,
	mov	r8, r2, asl #10	@ tmp180, tmp173,
	add	r8, r8, r2, lsl #7	@ tmp181, tmp180, tmp173,
	rsb	r8, r8, r3	@ D.42984, tmp181, D.42984
	rsb	r8, r8, #1152	@ SegNum, D.42984,
	bmi	.L1006	@,
	add	r3, r10, #176128	@ tmp188, pScdInstance,
	ldr	r7, [r10, #20]	@ D.42982, pScdInstance_16(D)->SegFilter.ModeFlag
	mov	r0, #0	@ tmp191,
	ldr	r6, [r9]	@ D.42987, pStreamSegArray_12(D)->pSegBufVirAddr
	ldr	r2, [r3, #3996]	@ pScdInstance_16(D)->UpMsgStepNum, pScdInstance_16(D)->UpMsgStepNum
	sub	r5, r7, #1	@ D.42981, D.42982,
	clz	r5, r5	@ D.42981, D.42981
	ldr	lr, [r1, #2072]	@ D.42985, pStreamSegArray_12(D)->SegBufPhyAddr
	movt	r0, 46593	@ tmp191,
	mov	r9, #0	@ count,
	mov	r2, r2, asl #2	@ D.42985, pScdInstance_16(D)->UpMsgStepNum,
	mov	r5, r5, lsr #5	@ D.42981, D.42981,
	mla	r1, r2, ip, r4	@ ivtmp.484, D.42985, i, pUsedSeg
	b	.L1003	@
.L1013:
	cmp	r7, #2	@ D.42982,
	beq	.L1012	@,
.L1002:
	cmn	r4, #1	@ i,
	beq	.L1010	@,
	mov	ip, r4	@ i, i
.L1003:
	ldr	r3, [r1]	@ *_22, *_22
	sub	r4, ip, #1	@ i, i,
	rsb	r1, r2, r1	@ ivtmp.484, D.42985, ivtmp.484
	rsb	r3, lr, r3	@ D.42985, D.42985, *_22
	ldr	r3, [r6, r3]	@ start_code, MEM[(HI_U32 *)VirAddr_29]
	cmp	r3, r0	@ start_code, tmp191
	movne	r10, #0	@, tmp160
	andeq	r10, r5, #1	@,, tmp160, D.42981
	cmp	r10, #0	@ tmp160,
	beq	.L1013	@,
.L1000:
	add	r9, r9, #1	@ count, count,
	cmp	r9, #0	@ count,
	ble	.L1002	@,
	cmp	r8, ip	@ SegNum, i
	bcc	.L1002	@,
.L1010:
	mov	r0, ip	@ D.42982, i
.L1008:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1012:
	ubfx	r3, r3, #16, #8	@ D.42985, start_code,,
	sub	r3, r3, #128	@ D.42985, D.42985,
	cmp	r3, #3	@ D.42985,
	bhi	.L1002	@,
	b	.L1000	@
.L1006:
	mov	r0, r5	@ D.42982, Seg_num
	b	.L1008	@
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
	beq	.L1118	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #163840	@ tmp574, pScdInstance,
	.pad #268
	sub	sp, sp, #268	@,,
	ldr	r3, [fp, #2304]	@ pScdInstance_25(D)->SmPushRaw.PushRawOver, pScdInstance_25(D)->SmPushRaw.PushRawOver
	cmp	r3, #3	@ pScdInstance_25(D)->SmPushRaw.PushRawOver,
	moveq	r3, #2	@ tmp301,
	mvneq	r0, #6	@ D.43000,
	streq	r3, [fp, #2304]	@ tmp301, pScdInstance_25(D)->SmPushRaw.PushRawOver
	beq	.L1093	@,
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
	beq	.L1018	@,
	add	r3, r10, #73728	@ tmp573, pScdInstance,
	ldr	r2, [sp, #92]	@ D.43002, SmStateReg.ScdNum
	str	r3, [sp, #24]	@ tmp573, %sfp
	adds	r3, r3, #192	@ pStreamSegArray, tmp573,
	str	r3, [sp, #20]	@ pStreamSegArray, %sfp
	str	r2, [sp, #48]	@ D.43002, %sfp
	str	r2, [sp, #64]	@ D.43002, ScdSegNum
	beq	.L1119	@,
	ldr	r3, [fp, #2264]	@ SegBufAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r5, [fp, #2268]	@ SegBufLength, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufSize
	str	r3, [sp, #8]	@ SegBufAddr, %sfp
.L1055:
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r0, r0, #15	@ D.43002,,
	str	r0, [r10, #16]	@ D.43002, pScdInstance_25(D)->SegFilter.ProtocolType
	ldr	r3, [fp, #2328]	@ pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr
	ldr	r0, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	str	r3, [r10, #12]	@ pScdInstance_25(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_25(D)->SegFilter.pScdUpMsg
	str	r0, [r10, #28]	@ SegBufAddr, pScdInstance_25(D)->SegFilter.SegBufPhyAddr
	ldr	r3, [fp, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r6, [sp, #64]	@ ScdSegNum, ScdSegNum
	ldr	r1, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsb	r3, r3, r0	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, SegBufAddr
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	cmp	r6, #1152	@ ScdSegNum,
	movw	r0, #51212	@,
	str	r5, [r10, #32]	@ SegBufLength, pScdInstance_25(D)->SegFilter.SegBufSize
	add	r3, r2, r3	@ D.43004, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.43002
	str	r1, [r10, #36]	@ SmStateReg.ScdRollAddr, pScdInstance_25(D)->SegFilter.SegBufRollAddr
	str	r3, [r10, #8]	@ D.43004, pScdInstance_25(D)->SegFilter.pSegBufVirAddr
	movt	r0, 4115	@,
	movge	r6, #1152	@ D.43006,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.43006,
	bhi	.L1120	@,
	ldr	r0, [sp, #64]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ D.43000,
.L1021:
	add	r3, r10, #165888	@ D.43008, pScdInstance,
	ldr	r1, [sp, #28]	@ UpMsgStepNum, %sfp
	str	r0, [r10, #40]	@ D.43000, pScdInstance_25(D)->SegFilter.SegNum
	mov	r2, r3	@ D.43008, D.43008
	add	r3, r10, #8	@ D.43007, pScdInstance,
	add	r2, r2, #368	@ D.43008, D.43008,
	str	r3, [sp, #40]	@ D.43007, %sfp
	str	r2, [sp, #12]	@ D.43008, %sfp
	mov	r0, r3	@, D.43007
	str	r1, [sp]	@ UpMsgStepNum,
	add	r3, sp, #64	@,,
	mov	r1, r2	@, D.43008
	add	r2, sp, #76	@,,
	bl	ScdReturnSegFilter	@
	subs	r6, r0, #0	@ Ret,
	bne	.L1018	@,
	ldr	r5, [sp, #64]	@ D.43002, ScdSegNum
	add	r3, r10, #168	@ pRawStreamArray, pScdInstance,
	str	r3, [sp, #32]	@ pRawStreamArray, %sfp
	cmp	r5, #1	@ D.43002,
	ble	.L1121	@,
	movw	r0, #51212	@,
	strb	r6, [r10]	@ Ret, pScdInstance_25(D)->SegFullFlag
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.43002,
	bcs	.L1027	@,
	ldr	r3, [sp, #64]	@ ScdSegNum, ScdSegNum
	sub	r3, r3, #1	@ D.43000, ScdSegNum,
	str	r3, [sp, #44]	@ D.43000, %sfp
	str	r3, [sp, #64]	@ D.43000, ScdSegNum
.L1028:
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1122	@,
.L1030:
	movw	r3, #36409	@ tmp578,
	add	r2, r10, #179200	@ D.43010, pScdInstance,
	movt	r3, 14563	@ tmp578,
	str	r3, [sp, #56]	@ tmp578, %sfp
	add	r3, r2, #888	@ D.43010, D.43010,
	str	r3, [sp, #36]	@ D.43010, %sfp
	ldr	r3, [fp, #2252]	@ LastSegTail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	mov	r8, #0	@ ivtmp.495,
	mov	r7, r8	@ i, ivtmp.495
	ldr	r6, [sp, #12]	@ ivtmp.493, %sfp
	ldr	r1, [sp, #44]	@ D.43000, %sfp
	str	r3, [sp, #52]	@ LastSegTail, %sfp
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	str	fp, [sp, #16]	@ tmp574, %sfp
	mov	r9, r3, asl #2	@ D.43006, UpMsgStepNum,
	b	.L1031	@
.L1126:
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	bne	.L1123	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1124	@,
.L1040:
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	add	r2, sp, #68	@,,
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	str	r4, [sp, #116]	@ SegPacketLen, SegPacket.LenInByte
	rsb	r5, r3, r5	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	ldr	r3, [sp, #24]	@ tmp573, %sfp
	ldr	r3, [r3, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	add	r5, r3, r5	@ D.43004, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.43002
	mov	r3, #1	@ tmp418,
	str	r5, [sp, #104]	@ D.43004, SegPacket.VirAddr
	strb	r3, [sp, #109]	@ tmp418, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #112]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.43002, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	beq	.L1105	@,
	ldr	r3, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1105	@,
	ldr	r3, [sp, #116]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, D.43002
	bhi	.L1105	@,
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
	bne	.L1108	@,
.L1099:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #64]	@ D.43000, ScdSegNum
.L1039:
	add	r6, r6, r9	@ ivtmp.493, ivtmp.493, D.43006
	add	r8, r8, r9	@ ivtmp.495, ivtmp.495, D.43006
	mov	r7, fp	@ i, i
.L1031:
	cmp	r7, r1	@ i, D.43000
	bge	.L1125	@,
	ldr	r3, [sp, #12]	@ D.43008, %sfp
	add	fp, r7, #1	@ i, i,
	ldr	r5, [r6]	@ CurrSegPhyAddr, MEM[base: _353, offset: 0B]
	add	r2, r3, r9	@ D.43008, D.43008, D.43006
	ldr	r3, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	ldr	ip, [r2, r8]	@ NextSegPhyAddr, MEM[base: _354, index: ivtmp.495_321, offset: 0B]
	mov	r3, r3, lsr #31	@ D.43006, MEM[base: _353, offset: 4B],
	strb	r3, [sp, #111]	@ D.43006, SegPacket.DspCheckPicOverFlag
	ldr	r3, [sp, #8]	@ SegBufAddr, %sfp
	cmp	ip, r3	@ NextSegPhyAddr, SegBufAddr
	rsbne	r4, r5, ip	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	ldreq	r4, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsbeq	r4, r5, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r4, #3	@ SegPacketLen,
	bgt	.L1126	@,
	sub	r3, r4, #1	@ D.43011, SegPacketLen,
	cmp	r3, #2	@ D.43011,
	bhi	.L1042	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	bne	.L1039	@,
	mov	r0, ip	@, NextSegPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L1018	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.43002, MEM[(HI_U8 *)pTmpVirAddr_253 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.43002, *pTmpVirAddr_253
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.43002, MEM[(HI_U8 *)pTmpVirAddr_253 + 2B]
	mov	r2, r2, asl #16	@ D.43002, D.43002,
	orr	r3, r2, r3, asl #24	@ D.43002, D.43002, D.43002,
	orr	r3, r3, r1, asl #8	@ D.43006, D.43002, D.43002,
	cmp	r3, #256	@ D.43006,
	beq	.L1111	@,
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
	rsb	r3, r3, r5	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	str	r5, [sp, #192]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	add	r3, ip, r3	@ D.43004, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.43002
	str	r4, [sp, #196]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	ip, #1	@ tmp449,
	str	r3, [sp, #184]	@ D.43004, LastSegPacket.VirAddr
	strb	ip, [sp, #189]	@ tmp449, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r1, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	bic	r1, r1, #-2147483648	@, MEM[base: _353, offset: 4B],
	add	r3, sp, #184	@ tmp628,,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	bl	GetSegPts	@
	ldr	r1, [sp, #64]	@ D.43000, ScdSegNum
	b	.L1039	@
.L1121:
	ldr	r3, [r4, #3972]	@ pScdInstance_25(D)->PrevCfgSegSize, pScdInstance_25(D)->PrevCfgSegSize
	ldr	r2, [r4, #3968]	@ pScdInstance_25(D)->PrevCfgRawSize, pScdInstance_25(D)->PrevCfgRawSize
	cmp	r2, r3	@ pScdInstance_25(D)->PrevCfgRawSize, pScdInstance_25(D)->PrevCfgSegSize
	strleb	r6, [r10]	@ Ret, pScdInstance_25(D)->SegFullFlag
	movgt	r3, #1	@ tmp359,
	strgtb	r3, [r10]	@ tmp359, pScdInstance_25(D)->SegFullFlag
	cmp	r5, #0	@ D.43002,
	beq	.L1127	@,
	cmp	r5, #1	@ D.43002,
	movne	r1, #0	@ SrcEaten,
	beq	.L1128	@,
.L1026:
	ldr	r0, [sp, #32]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L1054	@,
.L1018:
	mvn	r0, #6	@ D.43000,
.L1093:
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1042:
	cmp	r4, #0	@ SegPacketLen,
	bge	.L1039	@,
	ldr	r3, [r10, #16]	@ pScdInstance_25(D)->SegFilter.ProtocolType, pScdInstance_25(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_25(D)->SegFilter.ProtocolType,
	beq	.L1129	@,
.L1044:
	ldr	r3, [sp, #16]	@ tmp574, %sfp
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	ldr	r0, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r3, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r1, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	rsb	r0, r0, r5	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	rsb	r4, r3, ip	@ D.43006, SegBufAddr, NextSegPhyAddr
	ldr	r3, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	r0, r1, r0	@ D.43004, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.43002
	add	r2, sp, #68	@,,
	str	r0, [sp, #104]	@ D.43004, SegPacket.VirAddr
	rsb	r3, r5, r3	@ D.43002, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	add	r3, r3, r4	@ D.43006, D.43002, D.43006
	str	r3, [sp, #116]	@ D.43006, SegPacket.LenInByte
	mov	r3, #0	@ tmp470,
	strb	r3, [sp, #109]	@ tmp470, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	lr, [sp, #116]	@ D.43006, SegPacket.LenInByte
	cmp	lr, #3	@ D.43006,
	bls	.L1111	@,
	ldr	r2, [sp, #16]	@ tmp574, %sfp
	ldr	ip, [sp, #112]	@ D.43002, SegPacket.PhyAddr
	ldr	r3, [r2, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	cmp	ip, #0	@ D.43002,
	ldr	r2, [r2, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head
	add	r3, r3, #1152	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail,
	rsb	r3, r2, r3	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Head, D.43002
	ldr	r2, [sp, #56]	@ tmp578, %sfp
	smull	r0, r1, r3, r2	@ tmp500, D.43002, tmp578
	mov	r2, r3, asr #31	@ tmp503, D.43002,
	ldr	r0, [sp, #68]	@ D.43002, SegFreeBufLen
	rsb	r2, r2, r1, asr #8	@ tmp499, tmp503,,
	mov	r1, r2, asl #10	@ tmp506, tmp499,
	add	r2, r1, r2, lsl #7	@ tmp507, tmp506, tmp499,
	rsb	r3, r2, r3	@ D.43002, tmp507, D.43002
	rsb	r1, r3, #1152	@ StreamNum, D.43002,
	beq	.L1046	@,
	ldr	r3, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L1046	@,
	cmp	lr, r0	@ D.43006, D.43002
	bhi	.L1046	@,
	cmp	r1, #1	@ StreamNum,
	ble	.L1108	@,
	ldr	r1, [r6, #4]	@ MEM[base: _353, offset: 4B], MEM[base: _353, offset: 4B]
	add	r3, sp, #104	@ tmp636,,
	ldr	lr, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #36]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _353, offset: 4B],
	ldr	r0, [sp, #32]	@, %sfp
	rsb	ip, ip, lr	@ D.43002, D.43002, SmStateReg.ScdRollAddr
	str	ip, [sp, #116]	@ D.43002, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r5, [sp, #16]	@ tmp574, %sfp
	add	r1, sp, #104	@ tmp638,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r5, #2408]	@, pScdInstance_25(D)->InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1108	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr
	ldr	r2, [sp, #24]	@ tmp573, %sfp
	add	r1, sp, #104	@ tmp641,,
	ldr	lr, [sp, #8]	@ SegBufAddr, %sfp
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, lr	@ D.43002, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].SegBufPhyAddr, SegBufAddr
	str	lr, [sp, #112]	@ SegBufAddr, SegPacket.PhyAddr
	add	r3, r2, r3	@ D.43004, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].pSegBufVirAddr, D.43002
	ldr	r2, [r5, #2408]	@, pScdInstance_25(D)->InstID
	str	r3, [sp, #104]	@ D.43004, SegPacket.VirAddr
	mov	r3, #1	@ tmp521,
	str	r4, [sp, #116]	@ D.43006, SegPacket.LenInByte
	strb	r3, [sp, #109]	@ tmp521, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L1108	@,
	bl	vfmw_dprint_nothing	@
.L1111:
	ldr	r1, [sp, #64]	@ D.43000, ScdSegNum
	b	.L1039	@
.L1105:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
.L1058:
	bl	vfmw_dprint_nothing	@
	mov	r4, #1	@ ScdErrFlag,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L1038:
	ldr	r3, [fp, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail
	ldr	r2, [sp, #52]	@ LastSegTail, %sfp
	cmp	r3, r2	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_25(D) + 73920B].Tail, LastSegTail
	movne	r3, #1	@ tmp542,
	moveq	r3, #0	@ tmp544,
	cmp	r7, #0	@ i,
	strb	r3, [r10, #3]	@ tmp544, pScdInstance_25(D)->InsertNewSegFlag
	ble	.L1051	@,
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mul	r7, r3, r7	@ D.43006, UpMsgStepNum, i
	ldr	r3, [sp, #12]	@ D.43008, %sfp
	add	r7, r7, #1	@ tmp547, D.43006,
	ldr	r1, [r3, r7, asl #2]	@ *_292, *_292
	bic	r1, r1, #-2147483648	@, *_292,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L1018	@,
.L1052:
	cmp	r4, #1	@ ScdErrFlag,
	beq	.L1018	@,
.L1054:
	mov	r0, #0	@ D.43000,
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1123:
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #68	@,,
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	add	r4, r3, r4	@ D.43006, LastSegPacket.LenInByte, SegPacketLen
	str	r4, [sp, #196]	@ D.43006, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.43002, SegFreeBufLen
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L1105	@,
	ldr	r3, [sp, #184]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r3, #0	@ LastSegPacket.VirAddr,
	beq	.L1105	@,
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r3, r2	@ LastSegPacket.LenInByte, D.43002
	bhi	.L1105	@,
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
	beq	.L1099	@,
.L1108:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
.L1047:
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ ScdErrFlag,
	b	.L1038	@
.L1124:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp622,,
	ldr	r0, [sp, #40]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L1040	@
.L1051:
	ldr	r3, [sp, #44]	@ tmp556, %sfp
	ldr	r2, [sp, #48]	@ D.43002, %sfp
	clz	r3, r3	@ tmp556, tmp556
	cmp	r2, #1152	@ D.43002,
	mov	r3, r3, lsr #5	@ tmp556, tmp556,
	movls	r3, #0	@ tmp556,
	cmp	r3, #0	@ tmp556,
	beq	.L1052	@,
	bl	vfmw_dprint_nothing	@
	mov	r1, #1	@,
	ldr	r0, [sp, #32]	@, %sfp
	bl	DeleteRawPacket	@
	b	.L1052	@
.L1127:
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten,
	movle	r1, r5	@ SrcEaten, D.43002
	b	.L1026	@
.L1046:
	cmp	r1, #1	@ StreamNum,
	ldr	fp, [sp, #16]	@ tmp574, %sfp
	bgt	.L1058	@,
	b	.L1047	@
.L1120:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L1021	@
.L1119:
	ldr	r3, [sp, #20]	@ pStreamSegArray, %sfp
	mov	r5, r3	@ SegBufLength, pStreamSegArray
	str	r3, [sp, #8]	@ pStreamSegArray, %sfp
	b	.L1055	@
.L1125:
	ldr	fp, [sp, #16]	@ tmp574, %sfp
	mov	r4, #0	@ ScdErrFlag,
	b	.L1038	@
.L1027:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	rsb	r0, r3, r0	@, UpMsgStepNum,
	mov	r1, r3	@, UpMsgStepNum
	bl	__aeabi_uidiv	@
	subs	r3, r0, #1	@ D.43000,,
	str	r3, [sp, #44]	@ D.43000, %sfp
	strpl	r3, [sp, #64]	@ D.43000, ScdSegNum
	strmi	r6, [sp, #44]	@ Ret, %sfp
	strmi	r6, [sp, #64]	@ Ret, ScdSegNum
	b	.L1028	@
.L1129:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp629,,
	ldr	r0, [sp, #40]	@, %sfp
	str	ip, [sp, #60]	@ NextSegPhyAddr, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #60]	@ NextSegPhyAddr, %sfp
	b	.L1044	@
.L1118:
	mvn	r0, #6	@ D.43000,
	bx	lr	@
.L1122:
	ldr	r3, [sp, #44]	@, %sfp
	mov	r0, r10	@, pScdInstance
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	bl	GetNextVop	@
	str	r0, [sp, #44]	@ D.43000, %sfp
	str	r0, [sp, #64]	@ D.43000, ScdSegNum
	b	.L1030	@
.L1128:
	ldr	r3, [fp, #2268]	@ pScdInstance_25(D)->StreamSegArray.SegBufSize, pScdInstance_25(D)->StreamSegArray.SegBufSize
	ldr	r1, [fp, #2420]	@ SrcEaten, pScdInstance_25(D)->TransFormSeg
	ldr	r2, [fp, #2300]	@ pScdInstance_25(D)->SmPushRaw.PushRawTotalLen, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	add	r3, r3, r3, lsl #1	@ D.43002, pScdInstance_25(D)->StreamSegArray.SegBufSize, pScdInstance_25(D)->StreamSegArray.SegBufSize,
	cmp	r3, #0	@ D.43002,
	add	r0, r3, #3	@ tmp375, D.43002,
	rsb	r2, r1, r2	@ D.43002, SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	movlt	r3, r0	@ D.43002, tmp375
	cmp	r2, r3, asr #2	@ D.43002, D.43002,
	ble	.L1026	@,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [fp, #2300]	@ SrcEaten, pScdInstance_25(D)->SmPushRaw.PushRawTotalLen
	b	.L1026	@
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
	ldr	r0, .L1145	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1141	@,
	ldr	r4, .L1145+4	@ tmp188,
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
	bne	.L1133	@,
	ldr	r5, [r4, #284]	@ D.43019, s_SmIIS.ThisInstID
.L1134:
	add	r3, r4, r5, lsl #2	@ tmp156, tmp188, D.43019,
	ldr	r1, [r4, #280]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r2, .L1145+4	@ tmp154,
	ldr	r0, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1142	@,
	ldr	r3, [r2, #288]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1143	@,
.L1137:
	mov	r0, r5	@, D.43019
	mov	r3, #0	@ tmp186,
	str	r3, [r4, #340]	@ tmp186, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L1141:
	ldr	r0, .L1145	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1133:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #284]	@ D.43019, s_SmIIS.ThisInstID
	ldr	r3, .L1145+8	@ tmp149,
	add	r2, r4, r5, lsl #2	@ tmp145, tmp188, D.43019,
	ldr	r1, [r3]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r3, [r2, #344]	@ tmp148, last_rec_pos_time
	rsb	r3, r3, r0	@ D.43017, tmp148, CurTimeInMs
	cmp	r3, r1	@ D.43017, g_TraceBsPeriod
	strhi	r0, [r2, #344]	@ CurTimeInMs, last_rec_pos_time
	b	.L1134	@
.L1142:
	ldr	r0, .L1145	@,
	mov	r3, #0	@ tmp168,
	str	r3, [r2, #340]	@ tmp168, s_SCDInISR
	str	r3, [r2, #288]	@ tmp168, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1143:
	add	r3, r0, #163840	@ tmp175, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_27->Mode, pSmInstArray_27->Mode
	cmp	r3, #1	@ pSmInstArray_27->Mode,
	beq	.L1144	@,
.L1138:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp178,
	str	r3, [r4, #288]	@ tmp178, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r6, .L1145+4	@ tmp177,
	cmp	r0, #0	@,
	bne	.L1137	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp183,
	str	r2, [r6, #288]	@ tmp183, s_SmIIS.SCDState
	str	r3, [r6, #284]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #292]	@, s_SmIIS.LastProcessTime
	b	.L1137	@
.L1144:
	bl	ProcessScdReturn	@
	b	.L1138	@
.L1146:
	.align	2
.L1145:
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
	bhi	.L1151	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L1158	@,
	sub	r0, r0, #13	@ tmp129, eCapLevel,
	cmp	r0, #10	@ tmp129,
	ldrls	pc, [pc, r0, asl #2]	@ tmp129
	b	.L1152	@
.L1153:
	.word	.L1156
	.word	.L1156
	.word	.L1156
	.word	.L1156
	.word	.L1156
	.word	.L1154
	.word	.L1154
	.word	.L1154
	.word	.L1154
	.word	.L1154
	.word	.L1154
.L1154:
	mov	r0, #20971520	@ D.43025,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1156:
	mov	r0, #4194304	@ D.43025,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1152:
	mov	r0, #3145728	@ D.43025,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1158:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L1151	@,
	mul	r3, r0, r5	@ D.43027, ChanHeight, ChanWidth
	mov	r0, #57344	@ tmp128,
	movt	r0, 31	@ tmp128,
	cmp	r3, r0	@ D.43027, tmp128
	movle	r0, #3145728	@ D.43025,
	movgt	r0, #20971520	@ D.43025,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1151:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43025,
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
	clz	r3, r1	@ tmp158, pSmCfg
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, r3, lsr #5	@ tmp158, tmp158,
	cmp	r0, #3	@ SmID,
	orrhi	r3, r3, #1	@,, tmp161, tmp158
	cmp	r3, #0	@ tmp161,
	bne	.L1179	@,
	ldr	r7, .L1181	@ tmp239,
	add	r3, r7, r0, lsl #2	@ tmp164, tmp239, SmID,
	ldr	r6, [r3, #248]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L1165	@,
	ldr	r3, [r1, #12]	@ D.43034, pSmCfg_11(D)->BufPhyAddr
	mov	r5, r1	@ pSmCfg, pSmCfg
	ldr	r2, [r6, #60]	@ pSmInstArray_16->Config.BufPhyAddr, pSmInstArray_16->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_16->Config.BufPhyAddr, D.43034
	addeq	r4, r6, #48	@ D.43041, pSmInstArray,
	beq	.L1164	@,
	cmp	r3, #0	@ D.43034,
	beq	.L1165	@,
	ldr	r3, [r1]	@ pSmCfg_11(D)->pBufVirAddr, pSmCfg_11(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_11(D)->pBufVirAddr,
	beq	.L1165	@,
	ldr	ip, [r7, #32]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r4, r6, #163840	@ tmp238, pSmInstArray,
	ldr	r9, [r7, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r3, #1152	@ tmp194,
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
	str	r3, [r4, #2336]	@ tmp194, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].UpMsgNum
	ldr	r2, [r5, #12]	@ D.43034, pSmCfg_11(D)->BufPhyAddr
	ldr	r3, [r5, #8]	@ pSmCfg_11(D)->VidStd, pSmCfg_11(D)->VidStd
	add	r1, r2, #3	@ D.43034, D.43034,
	ldr	lr, [r5]	@ D.43035, pSmCfg_11(D)->pBufVirAddr
	cmp	r3, #6	@ pSmCfg_11(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.43034,
	rsb	r8, r2, r1	@ ByteOffsetInWord, D.43034, TmpPhyAddr
	movne	ip, #131072	@ D.43031,
	moveq	ip, #1048576	@ D.43031,
	mov	r9, ip	@ s32ScdBlankSegLen, D.43031
	add	r1, r1, ip	@ D.43034, TmpPhyAddr, s32ScdBlankSegLen
	add	ip, ip, r8	@ D.43031, D.43031, ByteOffsetInWord
	str	r1, [r4, #2400]	@ D.43034, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufPhyAddr
	add	ip, lr, ip	@ D.43035, D.43035, D.43031
	str	ip, [r4, #2308]	@ D.43035, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r5, #16]	@ pSmCfg_11(D)->BufSize, pSmCfg_11(D)->BufSize
	rsb	r2, r8, r1	@ D.43034, ByteOffsetInWord, pSmCfg_11(D)->BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.43034
	blt	.L1180	@,
	rsb	r3, r9, r2	@ D.43034, s32ScdBlankSegLen, D.43034
	sub	r3, r3, #1024	@ D.43034, D.43034,
	str	r3, [r4, #2404]	@ D.43034, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufSize
	cmp	r3, #262144	@ D.43034,
	blt	.L1165	@,
.L1169:
	add	r0, r6, #73728	@, pSmInstArray,
	ldr	r2, [r4, #2308]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].pSegBufVirAddr
	ldr	r1, [r4, #2400]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufPhyAddr
	add	r0, r0, #192	@,,
	bl	ConfigStreamSegArray	@
	add	r4, r6, #48	@ D.43041, pSmInstArray,
	ldr	r3, [r5, #20]	@ pSmCfg_11(D)->RegPhyBaseAddr, pSmCfg_11(D)->RegPhyBaseAddr
	mov	r2, #120	@,
	mov	r0, r4	@, D.43041
	mov	r1, r5	@, pSmCfg
	str	r3, [r7]	@ pSmCfg_11(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L1164:
	add	r6, r6, #176128	@ tmp231, pSmInstArray,
	mov	r0, r4	@, D.43041
	mov	r2, #120	@,
	mov	r1, r5	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp232,
	str	r3, [r6, #3996]	@ tmp232, pSmInstArray_16->UpMsgStepNum
	ldr	r3, [r5, #8]	@ pSmCfg_11(D)->VidStd, pSmCfg_11(D)->VidStd
	cmp	r3, #2	@ pSmCfg_11(D)->VidStd,
	moveq	r3, #3	@ tmp236,
	moveq	r0, #0	@ D.43030,
	streq	r3, [r6, #3996]	@ tmp236, pSmInstArray_16->UpMsgStepNum
	movne	r0, #0	@ D.43030,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1180:
	rsb	r3, r9, r0	@ D.43034, s32ScdBlankSegLen, SmMaxSegBufSize
	sub	r3, r3, #1024	@ D.43034, D.43034,
	str	r3, [r4, #2404]	@ D.43034, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_16 + 166148B].SegBufSize
	b	.L1169	@
.L1165:
	mvn	r0, #0	@ D.43030,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1179:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43030,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1182:
	.align	2
.L1181:
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
	cmp	r0, #3	@ SmID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0	@ SmID, SmID
	.pad #132
	sub	sp, sp, #132	@,,
	bhi	.L1191	@,
	ldr	r3, .L1196	@ tmp131,
	add	r3, r3, r0, lsl #2	@ tmp133, tmp131, SmID,
	ldr	r4, [r3, #248]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L1194	@,
	ldr	r3, [r4, #84]	@ MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag
	sub	r3, r3, #1	@ D.43051, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ D.43051,
	bls	.L1195	@,
.L1186:
	mvn	r3, #0	@ tmp139,
	mov	r2, #0	@ tmp138,
	str	r3, [r4, #80]	@ tmp139, MEM[(struct SM_INSTANCE_S *)__p_8].Config.LastRawDisContinueCount
	add	r1, r4, #48	@, __p,
	str	r2, [r4, #84]	@ tmp138, MEM[(struct SM_INSTANCE_S *)__p_8].Config.DisContinueRawPacketFlag
	add	r0, sp, #8	@,,
	mov	r2, #120	@,
	add	r6, r4, #163840	@ tmp178, __p,
	bl	memcpy	@
	mov	r0, r5	@, SmID
	ldr	r7, [r6, #2412]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
	bl	SM_Stop	@
	adds	r0, r4, #168	@ D.43055, __p,
	beq	.L1187	@,
	add	r2, r4, #73728	@ tmp149, __p,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail
	ldr	r1, [r2, #168]	@ MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_8 + 168B].Head
	addmi	r1, r1, #1024	@ RawNum, RawNum,
.L1190:
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, r5	@, SmID
	mvn	r9, #0	@,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #49056	@,
	mov	r0, r4	@, __p
	movt	r1, 2	@,
	ldrb	r8, [r6, #2408]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_8].InstID
	bl	__memzero	@
	add	r3, r4, #179200	@ tmp162, __p,
	add	r4, r4, #176128	@ tmp166, __p,
	add	r3, r3, #896	@ tmp162, tmp162,
	mov	r2, #2	@ tmp167,
	sxtb	r8, r8	@ s8TmpInstID, s8TmpInstID
	mov	r0, r5	@, SmID
	str	r8, [r6, #2408]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_8].InstID
	mvn	r8, #0	@ tmp164,
	strd	r8, [r3, #-8]	@ tmp164, tmp162,
	sub	r7, r7, #1	@ D.43051, TmpMode,
	str	r2, [r4, #3996]	@ tmp167, MEM[(struct SM_INSTANCE_S *)__p_8].UpMsgStepNum
	add	r1, sp, #8	@,,
	bl	SM_Config	@
	cmp	r7, #1	@ D.43051,
	movls	r0, #0	@ D.43050,
	movls	r3, #1	@ tmp172,
	movhi	r0, #0	@ tmp175,
	strls	r3, [r6, #2412]	@ tmp172, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
	strhi	r0, [r6, #2412]	@ tmp175, MEM[(struct SM_INSTANCE_S *)__p_8].Mode
.L1192:
	add	sp, sp, #132	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1187:
	str	r0, [sp, #4]	@ D.43055, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #4]	@ D.43055, %sfp
	mov	r1, r0	@ D.43056, D.43055
	b	.L1190	@
.L1195:
	add	r1, r4, #96	@, __p,
	bl	ReleaseRawStreamData	@
	b	.L1186	@
.L1191:
	mvn	r0, #0	@ D.43050,
	b	.L1192	@
.L1194:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43050,
	b	.L1192	@
.L1197:
	.align	2
.L1196:
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
	.type	LastEventTime.39473, %object
	.size	LastEventTime.39473, 4
LastEventTime.39473:
	.space	4
	.type	last_rec_pos_time.39678, %object
	.size	last_rec_pos_time.39678, 16
last_rec_pos_time.39678:
	.space	16
	.type	last_rec_pos_time.39760, %object
	.size	last_rec_pos_time.39760, 16
last_rec_pos_time.39760:
	.space	16
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.39774, %object
	.size	last_rec_pos_time.39774, 16
last_rec_pos_time.39774:
	.space	16
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
