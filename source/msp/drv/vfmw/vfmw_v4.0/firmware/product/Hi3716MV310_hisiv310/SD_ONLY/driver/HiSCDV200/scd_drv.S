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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
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
	ldmeqfd	sp!, {r4, pc}	@
	mov	r2, #5120	@,
	ldr	r1, .L5	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L6:
	.align	2
.L5:
	.word	g_CabacMN
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
	ldr	r7, .L26	@ tmp211,
	mov	r5, r0	@ eVidStd, eVidStd
	mov	r3, #49152	@ tmp164,
	mov	r0, #20	@,
	movt	r3, 4115	@ tmp164,
	mov	r4, #0	@ tmp162,
	str	r3, [r7]	@ tmp164, s_RegPhyBaseAddr
	str	r4, [sp, #20]	@ tmp162, dataInt
	bl	OSAL_KMALLOC	@
	subs	r6, r0, #0	@ data,
	beq	.L7	@,
	mov	r3, sp	@ tmp219,
	bic	r3, r3, #8128	@ tmp212, tmp219,
	str	r3, [sp, #4]	@ tmp212, %sfp
	bic	r3, r3, #63	@ D.35646, tmp212,
	cmp	r5, #6	@ eVidStd,
	ldr	r2, [r3, #8]	@ fs, _76->addr_limit
	str	r4, [r3, #8]	@ tmp162, _79->addr_limit
	str	r2, [sp, #8]	@ fs, %sfp
	beq	.L24	@,
	cmp	r5, #0	@ eVidStd,
	movne	r9, r4	@ fp, tmp162
	beq	.L25	@,
.L12:
	ldr	r3, [sp, #4]	@ tmp212, %sfp
	add	r8, sp, #32	@ tmp210,,
	mov	r2, #0	@ tmp179,
	mov	r4, #10	@ ivtmp.239,
	bic	r3, r3, #63	@ D.35646, tmp212,
	mov	r5, r2	@ calbakBaseaddr, tmp179
	str	r2, [r3, #8]	@ tmp179, _93->addr_limit
	mov	r2, #0	@ tmp180,
	mov	r3, #0	@,
	strd	r2, [r8, #-8]!	@ tmp180, pos
	b	.L13	@
.L15:
	strd	r10, [sp, #24]	@ ivtmp.239,,
	bl	sscanf	@
	cmp	r0, #0	@,
	ble	.L23	@,
	ldr	r0, [r7, #4]	@ g_hex_base_addr, g_hex_base_addr
	ldr	r1, [sp, #20]	@, dataInt
	add	r0, r5, r0	@, calbakBaseaddr, g_hex_base_addr
	add	r5, r5, #4	@ calbakBaseaddr, calbakBaseaddr,
	bl	MEM_WritePhyWord	@
.L13:
	mov	r3, r8	@, tmp210
	mov	r2, #10	@,
	mov	r1, r6	@, data
	mov	r0, r9	@, fp
	bl	vfs_read	@
	mov	r10, r4	@ ivtmp.239, ivtmp.239
	mov	fp, r4, asr #31	@ ivtmp.239, ivtmp.239,
	add	r2, sp, #20	@ tmp223,,
	ldr	r1, .L26+4	@,
	add	r4, r4, #10	@ ivtmp.239, ivtmp.239,
	subs	r3, r0, #0	@ D.35647,
	mov	r0, r6	@, data
	bne	.L15	@,
	mov	r1, r3	@, D.35647
	mov	r0, r9	@, fp
	str	r3, [sp, #12]	@ D.35647, %sfp
	bl	filp_close	@
	ldr	r3, [sp, #4]	@ tmp212, %sfp
	ldr	r1, [r7, #8]	@ g_hex_len, g_hex_len
	bic	r10, r3, #63	@ D.35646, tmp212,
	ldr	r3, [sp, #8]	@ fs, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r1, lsr #2	@, g_hex_len,
	str	r3, [r10, #8]	@ fs, _95->addr_limit
	add	r0, r0, #264	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldmia	r7, {r0, r1}	@ tmp211,,
	add	r0, r0, #268	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r3, [sp, #12]	@ D.35647, %sfp
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r3	@, D.35647
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r7]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #256	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L16:
	movw	r0, #49412	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L16	@,
.L23:
	mov	r0, r6	@, data
	bl	OSAL_KFREE	@
.L7:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L25:
	movw	r2, #438	@,
	mov	r1, r5	@, eVidStd
	ldr	r0, .L26+8	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L12	@,
	mov	r1, r5	@, eVidStd
	movw	r2, #438	@,
	ldr	r0, .L26+12	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
.L11:
	cmn	r9, #4096	@ fp,
	bhi	.L23	@,
	b	.L12	@
.L24:
	movw	r2, #438	@,
	mov	r1, r4	@, tmp162
	ldr	r0, .L26+16	@,
	bl	filp_open	@
	cmn	r0, #4096	@ fp,
	mov	r9, r0	@ fp,
	bls	.L12	@,
	mov	r1, r4	@, tmp162
	movw	r2, #438	@,
	ldr	r0, .L26+20	@,
	bl	filp_open	@
	mov	r9, r0	@ fp,
	b	.L11	@
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
	ldr	r3, [r3, #128]	@ D.35661, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35661,
	beq	.L30	@,
	add	r3, r3, #168	@ D.35662, D.35661,
	subs	r0, r0, r3	@ D.35659, pRawArray, D.35662
	mvnne	r0, #0	@ D.35659,
	bx	lr	@
.L30:
	mvn	r0, #0	@ D.35659,
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, .L41	@ tmp130,
	ldr	ip, [r3]	@ D.35675, g_pstRegCrg
	ldr	lr, [ip, #120]	@ u32TmpValue, _7->PERI_CRG30.u32
	orr	lr, lr, #32	@ u32TmpValue, u32TmpValue,
	str	lr, [ip, #120]	@ u32TmpValue, _7->PERI_CRG30.u32
	ldr	r3, [ip, #372]	@ u32TmpValue_93, _7->PERI_CRG93.u32
	tst	r3, #2	@ u32TmpValue_93,
	bne	.L35	@,
	movw	r3, #9999	@ D.35673,
	b	.L36	@
.L40:
	subs	r3, r3, #1	@ D.35673, D.35673,
	beq	.L35	@,
.L36:
	ldr	r2, [ip, #372]	@ u32TmpValue_93, _7->PERI_CRG93.u32
	tst	r2, #2	@ u32TmpValue_93,
	beq	.L40	@,
.L35:
	ldr	r3, .L41+4	@ tmp137,
	and	r1, r0, #1	@, D.35674,
	bfc	lr, #5, #1	@ u32TmpValue,,
	str	lr, [ip, #120]	@ u32TmpValue, _7->PERI_CRG30.u32
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	bl	MEM_WritePhyWord	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
.L42:
	.align	2
.L41:
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
	ldr	r3, .L44	@ tmp113,
	mov	r1, #1	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L45:
	.align	2
.L44:
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
	ldr	r3, .L47	@ tmp113,
	mov	r1, #0	@,
	ldr	r0, [r3]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r0, #2064	@, s_RegPhyBaseAddr,
	add	r0, r0, #12	@,,
	b	MEM_WritePhyWord	@
.L48:
	.align	2
.L47:
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
	beq	.L53	@,
	add	r4, r0, #73728	@ tmp133, pRawStreamArray,
	ldmib	r4, {ip, lr}	@ tmp133,,
	add	r3, ip, #1	@ D.35692, D.35692,
	mov	r2, r3, asr #31	@ tmp136, D.35692,
	mov	r2, r2, lsr #22	@ tmp137, tmp136,
	add	r3, r3, r2	@ tmp138, D.35692, tmp137
	ubfx	r3, r3, #0, #10	@ tmp139, tmp138,,
	rsb	r3, r2, r3	@ D.35692, tmp137, tmp139
	cmp	r3, lr	@ D.35692, pRawStreamArray_3(D)->History
	beq	.L54	@,
	mov	r3, ip, asl #6	@ tmp146, D.35692,
	mov	r2, #72	@,
	add	ip, r3, ip, lsl #3	@ tmp147, tmp146, D.35692,
	add	r0, r0, ip	@, pRawStreamArray, tmp147
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	mov	r0, r5	@ D.35690, tmp131
	add	r3, r3, #1	@ D.35692, pRawStreamArray_3(D)->Tail,
	mov	r2, r3, asr #31	@ tmp159, D.35692,
	mov	r2, r2, lsr #22	@ tmp160, tmp159,
	add	r3, r3, r2	@ tmp161, D.35692, tmp160
	ubfx	r3, r3, #0, #10	@ tmp162, tmp161,,
	rsb	r3, r2, r3	@ D.35692, tmp160, tmp162
	str	r3, [r4, #4]	@ D.35692, pRawStreamArray_3(D)->Tail
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L53:
	mvn	r0, #0	@ D.35690,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L54:
	mvn	r0, #3	@ D.35690,
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
	bne	.L59	@,
	ldr	r3, .L61	@ tmp118,
	ldr	r3, [r3, #128]	@ D.35700, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35700,
	beq	.L59	@,
	add	r2, r3, #73728	@ tmp120, D.35700,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail
	ldr	r1, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_4 + 168B].History, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	add	r3, r3, #1	@ D.35701, MEM[(struct RAW_ARRAY_S *)_4 + 168B].Tail,
	mov	r2, r3, asr #31	@ tmp124, D.35701,
	mov	r2, r2, lsr #22	@ tmp125, tmp124,
	add	r3, r3, r2	@ tmp126, D.35701, tmp125
	ubfx	r3, r3, #0, #10	@ tmp127, tmp126,,
	rsb	r3, r2, r3	@ D.35701, tmp125, tmp127
	cmp	r3, r1	@ D.35701, MEM[(struct RAW_ARRAY_S *)_4 + 168B].History
	mvneq	r0, #3	@ D.35699,
	movne	r0, #0	@ D.35699,
	bx	lr	@
.L59:
	mvn	r0, #3	@ D.35699,
	bx	lr	@
.L62:
	.align	2
.L61:
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
	beq	.L65	@,
	add	ip, r0, #73728	@ tmp128, pRawStreamArray,
	mov	r3, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [ip]	@ D.35706, pRawStreamArray_3(D)->Head
	ldr	r0, [ip, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	r2, r0	@ D.35706, pRawStreamArray_3(D)->Tail
	beq	.L66	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r2, asl #6	@ tmp136, D.35706,
	add	r1, r1, r2, lsl #3	@ tmp137, tmp136, D.35706,
	str	r2, [ip, #16]	@ D.35706, pRawStreamArray_3(D)->CurShowIndex
	add	r1, r3, r1	@, pRawStreamArray, tmp137
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.35704, tmp126
	ldmfd	sp!, {r4, pc}	@
.L65:
	mvn	r0, #0	@ D.35704,
	ldmfd	sp!, {r4, pc}	@
.L66:
	mvn	r0, #2	@ D.35704,
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
	beq	.L70	@,
	add	lr, r0, #73728	@ tmp130, pRawStreamArray,
	mov	ip, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r2, [lr, #16]	@ pRawStreamArray_3(D)->CurShowIndex, pRawStreamArray_3(D)->CurShowIndex
	ldr	r0, [lr, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	add	r2, r2, #1	@ D.35715, pRawStreamArray_3(D)->CurShowIndex,
	mov	r3, r2, asr #31	@ tmp133, D.35715,
	mov	r3, r3, lsr #22	@ tmp134, tmp133,
	add	r2, r2, r3	@ tmp135, D.35715, tmp134
	ubfx	r2, r2, #0, #10	@ tmp136, tmp135,,
	rsb	r3, r3, r2	@ tmp137, tmp134, tmp136
	cmp	r0, r3	@ pRawStreamArray_3(D)->Tail, tmp137
	beq	.L71	@,
	mov	r0, r1	@ pRawPacket, pRawPacket
	mov	r1, r3, asl #6	@ tmp145, tmp137,
	add	r1, r1, r3, lsl #3	@ tmp146, tmp145, tmp137,
	str	r3, [lr, #16]	@ tmp137, pRawStreamArray_3(D)->CurShowIndex
	add	r1, ip, r1	@, pRawStreamArray, tmp146
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.35713, tmp128
	ldmfd	sp!, {r4, pc}	@
.L70:
	mvn	r0, #0	@ D.35713,
	ldmfd	sp!, {r4, pc}	@
.L71:
	mvn	r0, #2	@ D.35713,
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
	beq	.L75	@,
	add	r3, r0, #73728	@ tmp120, pRawStreamArray,
	ldmia	r3, {r2, ip}	@ tmp120,,
	cmp	r2, ip	@ D.35723, pRawStreamArray_3(D)->Tail
	beq	.L76	@,
	mov	ip, r2, asl #6	@ tmp129, D.35723,
	add	r2, ip, r2, lsl #3	@ tmp130, tmp129, D.35723,
	add	r0, r0, r2	@ tmp131, pRawStreamArray, tmp130
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	lr, [r3, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r2, [r0, #8]	@ pRawStreamArray_3(D)->RawPacket[_5].Length, pRawStreamArray_3(D)->RawPacket[_5].Length
	add	r1, r1, lr	@ TargetOffset, Offset, pRawStreamArray_3(D)->FirstPacketOffset
	cmp	r1, r2	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_5].Length
	bge	.L77	@,
	str	r1, [r3, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, #0	@ D.35722,
	ldr	pc, [sp], #4	@
.L77:
	mvn	r0, #0	@ D.35722,
	ldr	pc, [sp], #4	@
.L76:
	mvn	r0, #2	@ D.35722,
	bx	lr	@
.L75:
	mvn	r0, #0	@ D.35722,
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
	beq	.L82	@,
	add	r3, r0, #73728	@ tmp128, pRawStreamArray,
	ldr	ip, [r3]	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Head
	ldr	r0, [r3, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	cmp	ip, r0	@ pRawStreamArray_3(D)->Head, pRawStreamArray_3(D)->Tail
	beq	.L83	@,
	ldr	r3, [r3, #12]	@ D.35728, pRawStreamArray_3(D)->FirstPacketOffset
	mov	r0, r2	@ D.35726, tmp126
	str	r3, [r1]	@ D.35728, *pOffset_5(D)
	bx	lr	@
.L82:
	mvn	r0, #0	@ D.35726,
	bx	lr	@
.L83:
	mvn	r0, #2	@ D.35726,
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
	beq	.L97	@,
	ldr	ip, .L106	@ tmp189,
	ldr	r3, [ip, #128]	@ D.35737, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35737,
	beq	.L97	@,
	add	r3, r3, #168	@ D.35738, D.35737,
	subs	r2, r0, r3	@ D.35734, pRawStreamArray, D.35738
	mvnne	r2, #0	@ D.35734,
	cmp	r2, #0	@ D.35734,
	blt	.L97	@,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	add	r5, r0, #73728	@ tmp191, pRawStreamArray,
	ldr	r3, [r5, #4]	@ D.35734, pRawStreamArray_9(D)->Tail
	ldr	lr, [r5]	@ D.35734, pRawStreamArray_9(D)->Head
	cmp	lr, r3	@ D.35734, D.35734
	addgt	r3, r3, #1024	@ D.35734, D.35734,
	rsb	r3, lr, r3	@ PacketNum, D.35734, D.35734
	cmp	r3, r1	@ PacketNum, DelNum
	bcc	.L98	@,
	cmp	r1, #0	@ DelNum,
	mov	r3, lr	@ j, D.35734
	beq	.L88	@,
	add	r2, r2, #28	@ tmp158, D.35734,
	mov	lr, #0	@ i,
	add	r2, ip, r2, lsl #2	@ tmp159, tmp189, tmp158,
	ldr	r4, [r2, #16]	@ D.35737, s_SmIIS.pSmInstArray
	add	r4, r4, #73728	@ tmp190, D.35737,
	ldr	ip, [r4, #188]	@ D.35734, _58->RawPacketArray.RawTotalSize
.L89:
	mov	r2, r3, asl #6	@ tmp165, j,
	add	lr, lr, #1	@ i, i,
	add	r2, r2, r3, lsl #3	@ tmp166, tmp165, j,
	cmp	lr, r1	@ i, DelNum
	add	r2, r0, r2	@ tmp167, pRawStreamArray, tmp166
	add	r3, r3, #1	@ D.35736, j,
	ubfx	r3, r3, #0, #10	@ j, D.35736,,
	ldr	r2, [r2, #8]	@ pRawStreamArray_9(D)->RawPacket[j_44].Length, pRawStreamArray_9(D)->RawPacket[j_44].Length
	rsb	ip, r2, ip	@ D.35734, pRawStreamArray_9(D)->RawPacket[j_44].Length, D.35734
	bic	ip, ip, ip, asr #31	@ D.35734, D.35734
	str	ip, [r4, #188]	@ D.35734, _58->RawPacketArray.RawTotalSize
	bne	.L89	@,
	ldr	r3, [r5]	@ pRawStreamArray_9(D)->Head, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ tmp174,
	str	r0, [r5, #12]	@ tmp174, pRawStreamArray_9(D)->FirstPacketOffset
	add	lr, lr, r3	@ D.35734, i, pRawStreamArray_9(D)->Head
	str	lr, [r5]	@ D.35734, pRawStreamArray_9(D)->Head
	cmp	lr, #1024	@ D.35734,
	subge	lr, lr, #1024	@ D.35734, D.35734,
	strge	lr, [r5]	@ D.35734, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, pc}	@
.L97:
	mvn	r0, #0	@ D.35733,
	bx	lr	@
.L88:
	cmp	lr, #1024	@ D.35734,
	str	lr, [r5]	@ D.35734, pRawStreamArray_9(D)->Head
	mov	r0, #0	@ D.35733,
	subge	lr, lr, #1024	@ D.35734, D.35734,
	strge	lr, [r5]	@ D.35734, pRawStreamArray_9(D)->Head
	ldmfd	sp!, {r4, r5, pc}	@
.L98:
	mvn	r0, #0	@ D.35733,
	ldmfd	sp!, {r4, r5, pc}	@
.L107:
	.align	2
.L106:
	.word	.LANCHOR0
	.fnend
	.size	DeleteRawPacket, .-DeleteRawPacket
	.align	2
	.type	DeleteLastSendRaw.part.1, %function
DeleteLastSendRaw.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L115	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	bxeq	lr	@
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
	.align	2
.L115:
	.word	.LANCHOR0
	.fnend
	.size	DeleteLastSendRaw.part.1, .-DeleteLastSendRaw.part.1
	.align	2
	.global	GetRawNumOffsert
	.type	GetRawNumOffsert, %function
GetRawNumOffsert:
	.fnstart
	@ args = 32, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	ip, r0	@ D.35750, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, ip, lsr #5	@ D.35750, D.35750,
	.pad #20
	sub	sp, sp, #20	@,,
	orrs	lr, ip, r1, lsr #31	@, tmp352, D.35750, Len,
	add	r8, sp, #72	@,,
	str	r2, [sp, #8]	@ pNum, %sfp
	str	r3, [sp, #12]	@ pOffset, %sfp
	ldr	r7, [sp, #56]	@ pPts, pPts
	ldmia	r8, {r8, r9, r10, fp}	@,,,,
	bne	.L125	@,
	cmp	r3, #0	@ pOffset,
	cmpne	r2, #0	@, pNum,
	moveq	r6, #1	@ tmp181,
	movne	r6, #0	@ tmp181,
	beq	.L125	@,
	add	r3, r0, #73728	@ tmp339, pRawStreamArray,
	cmp	ip, #0	@ D.35750,
	str	r3, [sp, #4]	@ tmp339, %sfp
	ldr	r2, [r3]	@ Index, pRawStreamArray_9(D)->Head
	mov	r5, r3	@ tmp339, tmp339
	ldr	r4, [r3, #12]	@ pRawStreamArray_9(D)->FirstPacketOffset, pRawStreamArray_9(D)->FirstPacketOffset
	mov	ip, r2, asl #6	@ tmp336, Index,
	mov	r3, r2, asl #3	@ tmp335, Index,
	add	lr, r3, ip	@ tmp187, tmp335, tmp336
	add	lr, r0, lr	@ tmp188, pRawStreamArray, tmp187
	ldr	lr, [lr, #8]	@ pRawStreamArray_9(D)->RawPacket[Index_19].Length, pRawStreamArray_9(D)->RawPacket[Index_19].Length
	rsb	lr, r4, lr	@ TotalLen, pRawStreamArray_9(D)->FirstPacketOffset, pRawStreamArray_9(D)->RawPacket[Index_19].Length
	bne	.L119	@,
	ldr	r6, [r5, #4]	@ pRawStreamArray_9(D)->Tail, pRawStreamArray_9(D)->Tail
	subs	r6, r6, r2	@ RawNum, pRawStreamArray_9(D)->Tail, Index
	addmi	r6, r6, #1024	@ RawNum, RawNum,
.L119:
	add	r3, r3, ip	@ tmp200, tmp335, tmp336
	add	r6, r2, r6	@ RawNum, Index, RawNum
	add	r3, r0, r3	@ tmp201, pRawStreamArray, tmp200
	ldr	r2, [sp, #60]	@ tmp359, pUsertag
	ldr	ip, [sp, #68]	@ tmp361, pDispEnableFlag
	ldrd	r4, [r3, #16]	@ D.35752, tmp201,
	strd	r4, [r7]	@ D.35752, *pPts_25(D)
	ldrd	r4, [r3, #32]	@ D.35752, tmp201,
	strd	r4, [r2]	@ D.35752, *pUsertag_28(D)
	ldrd	r4, [r3, #16]	@ D.35752, tmp201,
	ldr	r2, [sp, #64]	@ tmp360, pDisptime
	strd	r4, [fp]	@ D.35752, *pRawPts_31(D)
	ldrd	r4, [r3, #40]	@ D.35752, tmp201,
	strd	r4, [r2]	@ D.35752, *pDisptime_34(D)
	ldr	r2, [r3, #56]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_19].DispEnableFlag
	str	r2, [ip]	@ D.35753, *pDispEnableFlag_37(D)
	ldr	r2, [r3, #60]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_19].DispFrameDistance
	str	r2, [r8]	@ D.35753, *pDispFrameDistance_40(D)
	ldr	r2, [r3, #64]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_19].DistanceBeforeFirstFrame
	str	r2, [r9]	@ D.35753, *pDistanceBeforeFirstFrame_43(D)
	ldr	r3, [r3, #68]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_19].GopNum
	str	r3, [r10]	@ D.35753, *pGopNum_46(D)
	ldr	r3, [sp, #4]	@ tmp339, %sfp
	ldr	ip, [r3]	@ i, pRawStreamArray_9(D)->Head
	cmp	r1, lr	@ Len, TotalLen
	cmpge	r6, ip	@, RawNum, i
	strgt	r8, [sp, #72]	@ pDispFrameDistance, pDispFrameDistance
	strgt	r9, [sp, #76]	@ pDistanceBeforeFirstFrame, pDistanceBeforeFirstFrame
	bgt	.L122	@,
	b	.L123	@
.L121:
	strd	r4, [r7]	@ D.35749, *pPts_25(D)
	cmp	r1, lr	@ Len, TotalLen
	cmpge	r6, ip	@, RawNum, i
	ldrd	r4, [r2, #32]	@ D.35752, tmp278,
	ldr	r3, [sp, #60]	@ tmp366, pUsertag
	strd	r4, [r3]	@ D.35752, *pUsertag_28(D)
	ldrd	r4, [r2, #16]	@ D.35752, tmp278,
	ldr	r3, [sp, #64]	@ tmp367, pDisptime
	strd	r4, [fp]	@ D.35752, *pRawPts_31(D)
	ldrd	r4, [r2, #40]	@ D.35752, tmp278,
	strd	r4, [r3]	@ D.35752, *pDisptime_34(D)
	ldr	r4, [sp, #68]	@ tmp368, pDispEnableFlag
	ldr	r3, [r2, #56]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_50].DispEnableFlag
	str	r3, [r4]	@ D.35753, *pDispEnableFlag_37(D)
	ldr	r4, [sp, #72]	@ tmp378, pDispFrameDistance
	ldr	r3, [r2, #60]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_50].DispFrameDistance
	str	r3, [r4]	@ D.35753, *pDispFrameDistance_40(D)
	ldr	r4, [sp, #76]	@ tmp377, pDistanceBeforeFirstFrame
	ldr	r3, [r2, #64]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_50].DistanceBeforeFirstFrame
	str	r3, [r4]	@ D.35753, *pDistanceBeforeFirstFrame_43(D)
	ldr	r3, [r2, #68]	@ D.35753, pRawStreamArray_9(D)->RawPacket[Index_50].GopNum
	str	r3, [r10]	@ D.35753, *pGopNum_46(D)
	ble	.L130	@,
.L122:
	add	ip, ip, #1	@ i, i,
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp365,
	mov	r3, ip, asr #31	@ tmp255, i,
	mov	r2, r3, lsr #22	@ tmp256, tmp255,
	add	r3, ip, r2	@ tmp257, i, tmp256
	ubfx	r3, r3, #0, #10	@ tmp258, tmp257,,
	rsb	r3, r2, r3	@ Index, tmp256, tmp258
	mov	r4, r3, asl #3	@ tmp337, Index,
	mov	r3, r3, asl #6	@ tmp338, Index,
	add	r2, r4, r3	@ tmp277, tmp337, tmp338
	add	r2, r0, r2	@ tmp278, pRawStreamArray, tmp277
	ldrd	r4, [r2, #16]	@ D.35749, tmp264,
	ldr	r3, [r2, #8]	@ pRawStreamArray_9(D)->RawPacket[Index_50].Length, pRawStreamArray_9(D)->RawPacket[Index_50].Length
	cmp	r5, r9	@ D.35749,
	cmpeq	r4, r8	@ D.35749, tmp365
	add	lr, lr, r3	@ TotalLen, TotalLen, pRawStreamArray_9(D)->RawPacket[Index_50].Length
	ldreqd	r4, [r7]	@ D.35749, *pPts_25(D)
	b	.L121	@
.L130:
	ldr	r3, [sp, #4]	@ tmp339, %sfp
	ldr	r3, [r3]	@ D.35751, pRawStreamArray_9(D)->Head
	cmp	r3, ip	@ D.35751, i
	beq	.L123	@,
	rsb	ip, r3, ip	@ D.35751, D.35751, i
	ldr	r3, [sp, #8]	@ pNum, %sfp
	ldr	r2, [r2, #8]	@ pRawStreamArray_9(D)->RawPacket[Index_101].Length, pRawStreamArray_9(D)->RawPacket[Index_101].Length
	mov	r0, #0	@ D.35748,
	str	ip, [r3]	@ D.35751, *pNum_14(D)
	rsb	lr, r2, lr	@ TotalLen, pRawStreamArray_9(D)->RawPacket[Index_101].Length, TotalLen
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	rsb	lr, lr, r1	@ D.35751, TotalLen, Len
	str	lr, [r3]	@ D.35751, *pOffset_16(D)
.L118:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L123:
	ldr	r3, [sp, #8]	@ pNum, %sfp
	mov	r0, #0	@ tmp254,
	str	r0, [r3]	@ tmp254, *pNum_14(D)
	ldr	r3, [sp, #12]	@ pOffset, %sfp
	str	r1, [r3]	@ Len, *pOffset_16(D)
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L125:
	mvn	r0, #0	@ D.35748,
	b	.L118	@
	.fnend
	.size	GetRawNumOffsert, .-GetRawNumOffsert
	.align	2
	.global	DeleteRawLen
	.type	DeleteRawLen, %function
DeleteRawLen:
	.fnstart
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r0	@ D.35757, pRawStreamArray
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, r3, lsr #5	@ D.35757, D.35757,
	orrs	ip, r3, r1, lsr #31	@, tmp137, D.35757, DelLen,
	.pad #88
	sub	sp, sp, #88	@,,
	bne	.L137	@,
	cmp	r3, #0	@ D.35757,
	str	ip, [sp, #32]	@ tmp137, DelNum
	str	ip, [sp, #36]	@ tmp137, RawPacketOffSet
	bne	.L137	@,
	add	r5, r0, #73728	@ tmp141, pRawStreamArray,
	mov	lr, r0	@ pRawStreamArray, pRawStreamArray
	ldr	r3, [r5, #20]	@ TotallLen, pRawStreamArray_3(D)->RawTotalSize
	ldr	ip, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsb	r3, ip, r3	@ TotallLen, pRawStreamArray_3(D)->FirstPacketOffset, TotallLen
	movs	r6, r3, asr #31	@ D.35756, TotallLen,
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
	ldr	r3, [r5]	@ D.35758, pRawStreamArray_3(D)->Head
	ldr	r1, [r5, #4]	@ pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Tail
	ldr	r2, [sp, #36]	@ D.35758, RawPacketOffSet
	cmp	r3, r1	@ D.35758, pRawStreamArray_3(D)->Tail
	mvneq	r6, #2	@ D.35756,
	beq	.L133	@,
	mov	lr, r3, asl #6	@ tmp167, D.35758,
	ldr	r1, [r5, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	add	lr, lr, r3, lsl #3	@ tmp168, tmp167, D.35758,
	add	lr, r4, lr	@ tmp169, pRawStreamArray, tmp168
	add	r2, r2, r1	@ TargetOffset, D.35758, pRawStreamArray_3(D)->FirstPacketOffset
	ldr	r3, [lr, #8]	@ pRawStreamArray_3(D)->RawPacket[_11].Length, pRawStreamArray_3(D)->RawPacket[_11].Length
	cmp	r2, r3	@ TargetOffset, pRawStreamArray_3(D)->RawPacket[_11].Length
	strlt	r2, [r5, #12]	@ TargetOffset, pRawStreamArray_3(D)->FirstPacketOffset
	bge	.L137	@,
.L133:
	mov	r0, r6	@, D.35756
	add	sp, sp, #88	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L137:
	mvn	r6, #0	@ D.35756,
	mov	r0, r6	@, D.35756
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
	b	DeleteLastSendRaw.part.1	@
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
	ldrne	r3, [r0, #20]	@ D.35765, pRawStreamArray_3(D)->RawTotalSize
	strne	r3, [r1]	@ D.35765, *pStreamSize_6(D)
	ldrne	r0, [r0, #12]	@ pRawStreamArray_3(D)->FirstPacketOffset, pRawStreamArray_3(D)->FirstPacketOffset
	rsbne	r0, r0, r3	@ D.35765, pRawStreamArray_3(D)->FirstPacketOffset, D.35765
	strne	r0, [r1]	@ D.35765, *pStreamSize_6(D)
	movne	r0, r0, asr #31	@ D.35764, D.35765,
	mvneq	r0, #0	@ D.35764,
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
	beq	.L147	@,
	add	r0, r0, #73728	@ tmp119, pRawStreamArray,
	ldmia	r0, {r2, r3}	@ tmp119,,
	subs	r3, r3, r2	@ D.35770, pRawStreamArray_3(D)->Tail, pRawStreamArray_3(D)->Head
	strpl	r3, [r1]	@ D.35770, *pStreamNum_8(D)
	addmi	r3, r3, #1024	@ D.35770, D.35770,
	strmi	r3, [r1]	@ D.35770, *pStreamNum_8(D)
	movpl	r0, #0	@ D.35769,
	movmi	r0, #0	@ D.35769,
	bx	lr	@
.L147:
	mvn	r0, #0	@ D.35769,
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
	beq	.L150	@,
	cmp	r3, #262144	@ BufSize,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movcs	r4, #0	@ tmp134,
	movcc	r4, #1	@ tmp134,
	cmp	r2, #0	@ pBufVirAddr,
	orreq	r4, r4, #1	@,, tmp138, tmp134
	cmp	r4, #0	@ tmp138,
	bne	.L151	@,
	mov	r5, r1	@ BufPhyAddr, BufPhyAddr
	movw	r1, #26680	@,
	movt	r1, 1	@,
	mov	r8, r0	@ pStreamSegArray, pStreamSegArray
	mov	r6, r3	@ BufSize, BufSize
	mov	r7, r2	@ pBufVirAddr, pBufVirAddr
	bl	__memzero	@
	add	r3, r8, #90112	@ tmp141, pStreamSegArray,
	mov	r0, r4	@ D.35773, tmp138
	str	r5, [r3, #2072]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufPhyAddr
	str	r7, [r8]	@ pBufVirAddr, pStreamSegArray_3(D)->pSegBufVirAddr
	str	r5, [r3, #2080]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufReadAddr
	str	r5, [r3, #2084]	@ BufPhyAddr, pStreamSegArray_3(D)->SegBufWriteAddr
	str	r6, [r3, #2076]	@ BufSize, pStreamSegArray_3(D)->SegBufSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L151:
	mvn	r0, #0	@ D.35773,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L150:
	mvn	r0, #0	@ D.35773,
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
	ldr	r2, [r0, #2072]	@ D.35778, pStreamSegArray_2(D)->SegBufPhyAddr
	str	r3, [r0, #2056]	@ tmp116, pStreamSegArray_2(D)->Head
	str	r3, [r0, #2060]	@ tmp116, pStreamSegArray_2(D)->Tail
	str	r2, [r0, #2080]	@ D.35778, pStreamSegArray_2(D)->SegBufReadAddr
	str	r2, [r0, #2084]	@ D.35778, pStreamSegArray_2(D)->SegBufWriteAddr
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
	ldr	ip, [r0, #2084]	@ D.35794, pStreamSegArray_1(D)->SegBufWriteAddr
	str	ip, [r1]	@ D.35794, *pAddr_3(D)
	str	r3, [r2]	@ tmp136, *pLength_7(D)
	ldr	r1, [r0, #2084]	@ D.35794, pStreamSegArray_1(D)->SegBufWriteAddr
	ldr	r3, [r0, #2080]	@ D.35794, pStreamSegArray_1(D)->SegBufReadAddr
	cmp	r1, r3	@ D.35794, D.35794
	bgt	.L169	@,
	ldrge	r0, [r0, #2076]	@ D.35794, pStreamSegArray_1(D)->SegBufSize
	rsblt	r3, r1, r3	@ D.35794, D.35794, D.35794
	ldrlt	r0, [r0, #2076]	@ D.35794, pStreamSegArray_1(D)->SegBufSize
	sublt	r3, r3, #1	@ Len, D.35794,
	subge	r3, r0, #1	@ Len, D.35794,
.L166:
	cmp	r3, r0	@ Len, D.35794
	strle	r3, [r2]	@ Len, *pLength_7(D)
	bx	lr	@
.L169:
	ldr	r0, [r0, #2076]	@ D.35794, pStreamSegArray_1(D)->SegBufSize
	rsb	r3, r1, r3	@ D.35794, D.35794, D.35794
	sub	r1, r0, #1	@ D.35794, D.35794,
	add	r3, r1, r3	@ Len, D.35794, D.35794
	b	.L166	@
	.fnend
	.size	GetFreeSegBuf, .-GetFreeSegBuf
	.align	2
	.global	CheckStream
	.type	CheckStream, %function
CheckStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L219	@ tmp168,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r3, r1, asl #2]	@ pstChan, s_pstVfmwChan
	cmp	r5, #0	@ pstChan,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, [r5, #880]	@ D.35797, pstChan_10->eVidStd
	sub	ip, r3, #3	@ D.35798, D.35797,
	clz	ip, ip	@ D.35798, D.35798
	mov	ip, ip, lsr #5	@ D.35798, D.35798,
	cmp	r3, #0	@ D.35797,
	movne	r3, ip	@, D.35798, D.35798
	orreq	r3, ip, #1	@,, D.35798, D.35798
	cmp	r3, #0	@ D.35798,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	add	r4, r5, #217088	@ tmp292, pstChan,
	ldr	r2, [r4, #384]	@ D.35799, pstChan_10->s32FindStartCodeCnt
	cmp	r2, #199	@ D.35799,
	ldmgtfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	lr, [r0]	@ zero_extendqisi2	@ *pSegBufVirAddr_16(D), *pSegBufVirAddr_16(D)
	cmp	lr, #0	@ *pSegBufVirAddr_16(D),
	bne	.L215	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 1B], MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 1B],
	bne	.L215	@,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 2B], MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 2B]
	cmp	lr, #1	@ MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 2B],
	beq	.L177	@,
.L215:
	ldr	r6, [r4, #396]	@ D.35799, pstChan_10->s32CurrentStartCode
	mov	lr, #0	@ tmp291,
	ldr	r7, [r4, #392]	@ D.35799, pstChan_10->s32LastOneStartCode
	mov	r0, lr	@ D.35798, tmp291
	mov	r8, lr	@ D.35799, D.35798
	mov	r9, lr	@ u8Data, D.35798
	add	r2, r2, #1	@ D.35799, D.35799,
	str	lr, [r4, #396]	@ tmp291, pstChan_10->s32CurrentStartCode
	str	r2, [r4, #384]	@ D.35799, pstChan_10->s32FindStartCodeCnt
	str	r6, [r4, #392]	@ D.35799, pstChan_10->s32LastOneStartCode
	str	r7, [r4, #388]	@ D.35799, pstChan_10->s32LastTwoStartCode
.L178:
	cmp	r3, #0	@ D.35798,
	beq	.L216	@,
.L179:
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.35799, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.35799, pstChan_10->s32Mpeg2Score
.L180:
	cmp	r0, #0	@ D.35798,
	beq	.L181	@,
	rsb	r3, r6, r8	@ D.35799, D.35799, D.35799
	cmp	r3, #1	@ D.35799,
	beq	.L217	@,
.L182:
	cmp	r6, r8	@ D.35799, D.35799
	cmpeq	r7, r6	@, D.35799, D.35799
	beq	.L183	@,
.L181:
	cmp	r2, #199	@ D.35799,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	lr, [r4, #376]	@ D.35799, pstChan_10->s32H264Score
	mov	r6, r1	@ InstID, InstID
	ldr	r3, [r4, #380]	@ D.35799, pstChan_10->s32Mpeg2Score
	rsb	r2, r3, lr	@ D.35799, D.35799, D.35799
	cmp	r2, #49	@ D.35799,
	movle	ip, #0	@, tmp270
	andgt	ip, ip, #1	@,, tmp270, D.35798
	cmp	ip, #0	@ tmp270,
	bne	.L218	@,
.L185:
	rsb	r3, lr, r3	@ D.35799, D.35799, D.35799
	cmp	r3, #49	@ D.35799,
	ldmlefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r2, [r5, #880]	@ pstChan_10->eVidStd, pstChan_10->eVidStd
	cmp	r2, #0	@ pstChan_10->eVidStd,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldr	r3, .L219+4	@ tmp278,
	ldr	r3, [r3]	@ D.35801, g_event_report
	cmp	r3, #0	@ D.35801,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r0, r6	@, InstID
	mov	r1, #118	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	bx	r3	@ D.35801
.L216:
	add	r9, r9, #73	@ tmp226, u8Data,
	uxtb	r9, r9	@ tmp227, tmp226
	cmp	r9, #3	@ tmp227,
	bhi	.L180	@,
	b	.L179	@
.L218:
	ldr	r2, .L219+4	@ tmp271,
	ldr	ip, [r2]	@ D.35801, g_event_report
	cmp	ip, #0	@ D.35801,
	beq	.L185	@,
	mov	r2, #0	@,
	mov	r1, #118	@,
	mov	r0, r6	@, InstID
	blx	ip	@ D.35801
	ldr	r3, [r4, #380]	@ D.35799, pstChan_10->s32Mpeg2Score
	ldr	lr, [r4, #376]	@ D.35799, pstChan_10->s32H264Score
	b	.L185	@
.L177:
	ldrb	r9, [r0, #3]	@ zero_extendqisi2	@ u8Data, MEM[(HI_U8 *)pSegBufVirAddr_16(D) + 3B]
	add	r2, r2, #1	@ D.35799, D.35799,
	ldr	r6, [r4, #396]	@ D.35799, pstChan_10->s32CurrentStartCode
	and	r8, r9, #31	@ D.35799, u8Data,
	ands	r0, r9, #31	@ tmp181, u8Data,
	sub	lr, r8, #30	@ tmp208, D.35799,
	sub	r10, r9, #1	@ tmp189, u8Data,
	movne	r0, #1	@ tmp181,
	cmp	r8, #19	@ D.35799,
	cmpne	lr, #1	@, tmp208,
	uxtb	r10, r10	@ tmp191, tmp189
	sub	r7, r8, #1	@ D.35803, D.35799,
	add	r3, r9, #79	@ tmp185, u8Data,
	movls	lr, #1	@ tmp212,
	movhi	lr, #0	@ tmp212,
	cmp	r7, #12	@ D.35803,
	orrls	lr, lr, #1	@,, tmp219, tmp212
	cmp	r10, #183	@ tmp191,
	uxtb	r3, r3	@ tmp187, tmp185
	ldr	r7, [r4, #392]	@ D.35799, pstChan_10->s32LastOneStartCode
	movls	r10, #0	@ tmp192,
	movhi	r10, #1	@ tmp192,
	cmp	r2, #2	@ D.35799,
	movle	r0, #0	@, D.35798
	andgt	r0, r0, #1	@,, D.35798, tmp181
	cmp	r3, #4	@ tmp187,
	movhi	r3, r10	@, D.35798, tmp192
	orrls	r3, r10, #1	@,, D.35798, tmp192
	cmp	lr, #0	@ tmp219,
	str	r2, [r4, #384]	@ D.35799, pstChan_10->s32FindStartCodeCnt
	str	r8, [r4, #396]	@ D.35799, pstChan_10->s32CurrentStartCode
	ldrne	lr, [r4, #376]	@ pstChan_10->s32H264Score, pstChan_10->s32H264Score
	str	r6, [r4, #392]	@ D.35799, pstChan_10->s32LastOneStartCode
	addne	lr, lr, #1	@ D.35799, pstChan_10->s32H264Score,
	str	r7, [r4, #388]	@ D.35799, pstChan_10->s32LastTwoStartCode
	strne	lr, [r4, #376]	@ D.35799, pstChan_10->s32H264Score
	b	.L178	@
.L217:
	rsb	r3, r7, r6	@ D.35799, D.35799, D.35799
	cmp	r3, #1	@ D.35799,
	bne	.L182	@,
.L183:
	cmp	r8, #1	@ D.35799,
	cmpne	r8, #20	@, D.35799,
	beq	.L181	@,
	ldr	r3, [r4, #376]	@ D.35799, pstChan_10->s32H264Score
	cmp	r3, #0	@ D.35799,
	subgt	r3, r3, #1	@ D.35799, D.35799,
	strgt	r3, [r4, #376]	@ D.35799, pstChan_10->s32H264Score
	ldr	r3, [r4, #380]	@ pstChan_10->s32Mpeg2Score, pstChan_10->s32Mpeg2Score
	add	r3, r3, #1	@ D.35799, pstChan_10->s32Mpeg2Score,
	str	r3, [r4, #380]	@ D.35799, pstChan_10->s32Mpeg2Score
	b	.L181	@
.L220:
	.align	2
.L219:
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
	beq	.L223	@,
	add	r4, r0, #90112	@ tmp153, pStreamSegArray,
	movw	r5, #36409	@ tmp158,
	movt	r5, 14563	@ tmp158,
	ldr	r3, [r4, #2060]	@ pStreamSegArray_5(D)->Tail, pStreamSegArray_5(D)->Tail
	ldr	lr, [r4, #2056]	@ pStreamSegArray_5(D)->Head, pStreamSegArray_5(D)->Head
	add	r3, r3, #1	@ D.35808, pStreamSegArray_5(D)->Tail,
	smull	r6, r7, r3, r5	@ tmp157, D.35808, tmp158
	mov	ip, r3, asr #31	@ tmp160, D.35808,
	rsb	ip, ip, r7, asr #8	@ tmp156, tmp160,,
	mov	r6, ip, asl #10	@ tmp163, tmp156,
	add	ip, r6, ip, lsl #7	@ tmp164, tmp163, tmp156,
	rsb	r3, ip, r3	@ D.35808, tmp164, D.35808
	cmp	r3, lr	@ D.35808, pStreamSegArray_5(D)->Head
	beq	.L224	@,
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	mov	r9, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@ InstID, InstID
	ldr	r0, [r6]	@, pStreamSeg_7(D)->VirAddr
	bl	CheckStream	@
	ldr	r7, [r4, #2060]	@ D.35808, pStreamSegArray_5(D)->Tail
	mov	r1, r6	@, pStreamSeg
	mov	r2, #80	@,
	mov	r3, r7, asl #6	@ tmp174, D.35808,
	add	r7, r3, r7, lsl #4	@ tmp175, tmp174, D.35808,
	add	r0, r7, #8	@ tmp176, tmp175,
	add	r7, r9, r7	@ tmp196, pStreamSegArray, tmp175
	add	r0, r9, r0	@, pStreamSegArray, tmp176
	bl	memcpy	@
	ldr	r3, [r4, #2060]	@ D.35808, pStreamSegArray_5(D)->Tail
	mov	lr, #1	@ tmp190,
	mov	r0, r8	@ D.35806, tmp151
	add	ip, r3, lr	@ D.35808, D.35808,
	mov	r2, r3, asl #6	@ tmp186, D.35808,
	smull	r10, fp, ip, r5	@ tmp201, D.35808, tmp158
	add	r2, r2, r3, lsl #4	@ tmp187, tmp186, D.35808,
	add	r2, r9, r2	@ tmp188, pStreamSegArray, tmp187
	mov	r1, ip, asr #31	@ tmp204, D.35808,
	strb	lr, [r2, #12]	@ tmp190, pStreamSegArray_5(D)->StreamSeg[_21].SegState
	str	r3, [r7, #24]	@ D.35808, MEM[(struct STREAM_SEG_S *)pStreamSegArray_5(D)].StreamSeg[_18].StreamID
	rsb	r2, r1, fp, asr #8	@ tmp205, tmp204,,
	ldr	lr, [r4, #2088]	@ pStreamSegArray_5(D)->SegTotalSize, pStreamSegArray_5(D)->SegTotalSize
	ldr	r1, [r4, #2092]	@ pStreamSegArray_5(D)->SegFreshSize, pStreamSegArray_5(D)->SegFreshSize
	mov	r3, r2, asl #10	@ tmp208, tmp205,
	add	r3, r3, r2, lsl #7	@ tmp209, tmp208, tmp205,
	ldr	r2, [r4, #2096]	@ pStreamSegArray_5(D)->SegFreshNum, pStreamSegArray_5(D)->SegFreshNum
	rsb	r3, r3, ip	@ D.35808, tmp209, D.35808
	str	r3, [r4, #2060]	@ D.35808, pStreamSegArray_5(D)->Tail
	ldr	r3, [r6, #8]	@ pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->PhyAddr
	add	r2, r2, #1	@ D.35808, pStreamSegArray_5(D)->SegFreshNum,
	ldr	ip, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, r3, ip	@ D.35810, pStreamSeg_7(D)->PhyAddr, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2084]	@ D.35810, pStreamSegArray_5(D)->SegBufWriteAddr
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	add	r3, lr, r3	@ D.35810, pStreamSegArray_5(D)->SegTotalSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2088]	@ D.35810, pStreamSegArray_5(D)->SegTotalSize
	ldr	r3, [r6, #12]	@ pStreamSeg_7(D)->LenInByte, pStreamSeg_7(D)->LenInByte
	str	r2, [r4, #2096]	@ D.35808, pStreamSegArray_5(D)->SegFreshNum
	add	r3, r1, r3	@ D.35810, pStreamSegArray_5(D)->SegFreshSize, pStreamSeg_7(D)->LenInByte
	str	r3, [r4, #2092]	@ D.35810, pStreamSegArray_5(D)->SegFreshSize
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L224:
	mvn	r0, #3	@ D.35806,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L223:
	mvn	r0, #0	@ D.35806,
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
	beq	.L233	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #90112	@ tmp205, pStreamSegArray,
	ldr	r3, [r5, #2056]	@ i, pStreamSegArray_7(D)->Head
	ldr	lr, [r5, #2060]	@ D.35816, pStreamSegArray_7(D)->Tail
	cmp	lr, r3	@ D.35816, i
	beq	.L235	@,
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp146, tmp203, tmp204
	add	r2, r0, r2	@ tmp147, pStreamSegArray, tmp146
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState, pStreamSegArray_7(D)->StreamSeg[i_13].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_13].SegState,
	movwne	r6, #36409	@ tmp206,
	movtne	r6, 14563	@ tmp206,
	bne	.L230	@,
	b	.L228	@
.L241:
	add	r2, r0, r2	@ tmp154, pStreamSegArray, tmp153
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState, pStreamSegArray_7(D)->StreamSeg[i_17].SegState
	cmp	r2, #1	@ pStreamSegArray_7(D)->StreamSeg[i_17].SegState,
	beq	.L228	@,
.L230:
	add	ip, r3, #1	@ D.35816, i,
	smull	r2, r3, ip, r6	@ tmp162, D.35816, tmp206
	mov	r2, ip, asr #31	@ tmp165, D.35816,
	rsb	r3, r2, r3, asr #8	@ i, tmp165,,
	mov	r2, r3, asl #10	@ tmp168, i,
	add	r3, r2, r3, lsl #7	@ tmp169, tmp168, i,
	rsb	r3, r3, ip	@ i, tmp169, D.35816
	cmp	lr, r3	@ D.35816, i
	mov	ip, r3, asl #4	@ tmp203, i,
	mov	r4, r3, asl #6	@ tmp204, i,
	add	r2, ip, r4	@ tmp153, tmp203, tmp204
	bne	.L241	@,
.L235:
	mvn	r0, #2	@ D.35817,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L228:
	add	r4, ip, r4	@ tmp160, tmp203, tmp204
	add	r3, r4, #8	@ tmp161, tmp160,
	adds	r2, r0, r3	@ pSeg, pStreamSegArray, tmp161
	beq	.L235	@,
	mov	r3, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ pStreamSegArray, pStreamSegArray
	mov	r1, r2	@, pSeg
	mov	r0, r3	@, pStreamSeg
	mov	r2, #80	@,
	bl	memcpy	@
	add	ip, r6, r4	@ tmp178, pStreamSegArray, tmp160
	mov	r3, #2	@ tmp180,
	mov	r0, #0	@ D.35817,
	strb	r3, [ip, #12]	@ tmp180, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_35].SegState
	ldr	r1, [ip, #20]	@ MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_35].LenInByte, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_35].LenInByte
	ldr	r2, [r5, #2092]	@ pStreamSegArray_7(D)->SegFreshSize, pStreamSegArray_7(D)->SegFreshSize
	ldr	r3, [r5, #2096]	@ pStreamSegArray_7(D)->SegFreshNum, pStreamSegArray_7(D)->SegFreshNum
	rsb	r2, r1, r2	@ D.35820, MEM[(struct STREAM_SEG_S *)pStreamSegArray_7(D)].StreamSeg[i_35].LenInByte, pStreamSegArray_7(D)->SegFreshSize
	sub	r3, r3, #1	@ D.35816, pStreamSegArray_7(D)->SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.35816, D.35820
	str	r2, [r5, #2092]	@ D.35816, pStreamSegArray_7(D)->SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.35816, D.35816
	str	r3, [r5, #2096]	@ D.35816, pStreamSegArray_7(D)->SegFreshNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L233:
	mvn	r0, #0	@ D.35817,
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
	cmp	r0, #0	@ pStreamSegArray
	beq	.L257	@,
	movw	r3, #64382	@ tmp141,
	sub	r2, r1, #1152	@ D.35829, StreamID,
	movt	r3, 65535	@ tmp141,
	cmp	r2, r3	@ D.35829, tmp141
	bls	.L257	@,
	cmn	r1, #1	@ StreamID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	lr, r0, #90112	@ tmp226, pStreamSegArray,
	beq	.L271	@,
	ldr	r3, [lr, #2056]	@ i, pStreamSegArray_11(D)->Head
	ldr	r6, [lr, #2060]	@ D.35829, pStreamSegArray_11(D)->Tail
	cmp	r3, r6	@ i, D.35829
	beq	.L262	@,
	cmp	r1, r3	@ StreamID, i
	movwne	r7, #36409	@ tmp228,
	movtne	r7, 14563	@ tmp228,
	bne	.L249	@,
	b	.L247	@
.L268:
	cmp	r1, r3	@ StreamID, i
	beq	.L247	@,
.L249:
	add	r2, r3, #1	@ D.35829, i,
	umull	r4, r5, r2, r7	@ tmp174, D.35829, tmp228
	mov	r3, r5, lsr #8	@ i,,
	mov	ip, r3, asl #10	@ tmp178, i,
	add	r3, ip, r3, lsl #7	@ tmp179, tmp178, i,
	rsb	r3, r3, r2	@ i, tmp179, D.35829
	cmp	r3, r6	@ i, D.35829
	bne	.L268	@,
.L262:
	mvn	r0, #2	@ D.35828,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L247:
	mov	r2, r3, asl #6	@ tmp164, i,
	add	r3, r2, r3, lsl #4	@ tmp165, tmp164, i,
	add	r2, r0, r3	@ tmp166, pStreamSegArray, tmp165
	ldrsb	r2, [r2, #12]	@ pStreamSegArray_11(D)->StreamSeg[i_67].SegState, pStreamSegArray_11(D)->StreamSeg[i_67].SegState
	cmp	r2, #2	@ pStreamSegArray_11(D)->StreamSeg[i_67].SegState,
	addeq	r3, r3, #8	@ tmp173, tmp165,
	addeq	ip, r0, r3	@ pSeg, pStreamSegArray, tmp173
	bne	.L262	@,
.L246:
	cmp	ip, #0	@ pSeg,
	beq	.L262	@,
	mov	r3, #0	@ tmp180,
	strb	r3, [ip, #4]	@ tmp180, pSeg_6->SegState
	ldr	r3, [lr, #2056]	@ i, pStreamSegArray_11(D)->Head
	cmp	r3, r1	@ i, StreamID
	beq	.L272	@,
.L251:
	ldr	r2, [ip, #12]	@ pSeg_6->LenInByte, pSeg_6->LenInByte
	mov	r0, #0	@ D.35828,
	ldr	r3, [lr, #2088]	@ pStreamSegArray_11(D)->SegTotalSize, pStreamSegArray_11(D)->SegTotalSize
	rsb	r3, r2, r3	@ D.35829, pSeg_6->LenInByte, pStreamSegArray_11(D)->SegTotalSize
	bic	r3, r3, r3, asr #31	@ D.35830, D.35829
	str	r3, [lr, #2088]	@ D.35830, pStreamSegArray_11(D)->SegTotalSize
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L271:
	ldr	ip, [lr, #2056]	@ D.35830, pStreamSegArray_11(D)->Head
	ldr	r3, [lr, #2060]	@ pStreamSegArray_11(D)->Tail, pStreamSegArray_11(D)->Tail
	cmp	ip, r3	@ D.35830, pStreamSegArray_11(D)->Tail
	beq	.L262	@,
	mov	r3, ip, asl #6	@ tmp149, D.35830,
	mov	r1, ip	@ StreamID, D.35830
	add	ip, r3, ip, lsl #4	@ tmp150, tmp149, D.35830,
	add	ip, ip, #8	@ tmp151, tmp150,
	add	ip, r0, ip	@ pSeg, pStreamSegArray, tmp151
	b	.L246	@
.L272:
	ldr	r6, [lr, #2060]	@ D.35830, pStreamSegArray_11(D)->Tail
	cmp	r1, r6	@ StreamID, D.35830
	movwne	r7, #36409	@ tmp227,
	movtne	r7, 14563	@ tmp227,
	beq	.L254	@,
.L255:
	add	r1, r3, #1	@ D.35829, i,
	mov	r2, r3, asl #6	@ tmp195, i,
	cmp	r3, #1152	@ i,
	add	r2, r2, r3, lsl #4	@ tmp196, tmp195, i,
	umull	r4, r5, r1, r7	@ tmp211, D.35829, tmp227
	add	r2, r0, r2	@ tmp197, pStreamSegArray, tmp196
	bcs	.L253	@,
	ldrsb	r8, [r2, #12]	@ pStreamSegArray_11(D)->StreamSeg[i_69].SegState, pStreamSegArray_11(D)->StreamSeg[i_69].SegState
	cmp	r8, #0	@ pStreamSegArray_11(D)->StreamSeg[i_69].SegState,
	bne	.L273	@,
.L253:
	mov	r3, r5, lsr #8	@ i,,
	mov	r2, r3, asl #10	@ tmp215, i,
	add	r3, r2, r3, lsl #7	@ tmp216, tmp215, i,
	rsb	r3, r3, r1	@ i, tmp216, D.35829
	cmp	r3, r6	@ i, D.35830
	bne	.L255	@,
.L254:
	ldr	r3, [lr, #2084]	@ pStreamSegArray_11(D)->SegBufWriteAddr, pStreamSegArray_11(D)->SegBufWriteAddr
	str	r6, [lr, #2056]	@ D.35830, pStreamSegArray_11(D)->Head
	str	r3, [lr, #2080]	@ pStreamSegArray_11(D)->SegBufWriteAddr, pStreamSegArray_11(D)->SegBufReadAddr
	b	.L251	@
.L273:
	str	r3, [lr, #2056]	@ i, pStreamSegArray_11(D)->Head
	ldr	r3, [r2, #16]	@ pStreamSegArray_11(D)->StreamSeg[i_62].PhyAddr, pStreamSegArray_11(D)->StreamSeg[i_62].PhyAddr
	str	r3, [lr, #2080]	@ pStreamSegArray_11(D)->StreamSeg[i_62].PhyAddr, pStreamSegArray_11(D)->SegBufReadAddr
	b	.L251	@
.L257:
	mvn	r0, #0	@ D.35828,
	bx	lr	@
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
	movne	r0, #0	@ D.35834,
	mvneq	r0, #0	@ D.35834,
	ldrne	r3, [r3, #2088]	@ D.35835, pSegStreamArray_3(D)->SegTotalSize
	strne	r3, [r1]	@ D.35835, *pStreamSize_6(D)
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
	add	r3, r3, #1152	@ D.35838, pSegStreamArray_2(D)->Tail,
	rsb	r3, r0, r3	@ D.35838, pSegStreamArray_2(D)->Head, D.35838
	smull	r0, r1, r3, r2	@ tmp127, D.35838, tmp128
	mov	r2, r3, asr #31	@ tmp130, D.35838,
	rsb	r2, r2, r1, asr #8	@ D.35838, tmp130,,
	mov	r0, r2, asl #10	@ tmp133, D.35838,
	add	r0, r0, r2, lsl #7	@ tmp134, tmp133, D.35838,
	rsb	r0, r0, r3	@, tmp134, D.35838
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
	ldrne	r3, [r0, #2096]	@ D.35842, pSegStreamArray_2(D)->SegFreshNum
	strne	r3, [r1]	@ D.35842, *pFreshNum_5(D)
	ldrne	r3, [r0, #2092]	@ D.35842, pSegStreamArray_2(D)->SegFreshSize
	strne	r3, [r2]	@ D.35842, *pFreshSize_8(D)
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
	ldr	r3, .L287	@ tmp114,
	ldr	r0, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r0, #0	@ s_eScdDrvSleepStage,
	bne	.L286	@,
	ldr	r2, [r3, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r2, #0	@ s_SmIIS.SCDState,
	moveq	r0, r2	@ ret, s_SmIIS.SCDState
	movne	r2, #1	@ tmp121,
	moveq	r2, #2	@ tmp119,
	str	r2, [r3, #152]	@ tmp121, s_eScdDrvSleepStage
	bx	lr	@
.L286:
	mvn	r0, #0	@ ret,
	bx	lr	@
.L288:
	.align	2
.L287:
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
	ldr	r3, .L290	@ tmp113,
	ldr	r0, [r3, #152]	@, s_eScdDrvSleepStage
	bx	lr	@
.L291:
	.align	2
.L290:
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
	ldr	r3, .L297	@ tmp111,
	ldr	r2, [r3, #152]	@ s_eScdDrvSleepStage, s_eScdDrvSleepStage
	cmp	r2, #2	@ s_eScdDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #152]	@ tmp114, s_eScdDrvSleepStage
	bx	lr	@
.L298:
	.align	2
.L297:
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
	ldr	r3, .L306	@ tmp111,
	ldr	r3, [r3, #8]	@ D.35855, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	cmp	r3, #0	@ D.35855,
	beq	.L305	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	blx	r3	@ D.35855
	mov	r2, #0	@ tmp113,
	ldr	r3, .L306+4	@ tmp112,
	str	r2, [r3, #152]	@ tmp113, s_eScdDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L305:
	ldr	r3, .L306+4	@ tmp112,
	mov	r2, #0	@ tmp113,
	str	r2, [r3, #152]	@ tmp113, s_eScdDrvSleepStage
	bx	lr	@
.L307:
	.align	2
.L306:
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
	bne	.L310	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #49056	@,
	ldr	r5, .L313	@ tmp116,
	mov	r4, r0	@ SmID, SmID
	movt	r1, 2	@,
	ldr	r0, [r5, #128]	@, s_SmIIS.pSmInstArray
	bl	__memzero	@
	ldr	r3, [r5, #128]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	mov	r0, r4	@ D.35858, SmID
	mvn	r5, #0	@,
	add	r3, r3, #179200	@ tmp121, s_SmIIS.pSmInstArray,
	mvn	r4, #0	@ tmp123,
	add	r3, r3, #896	@ tmp121, tmp121,
	strd	r4, [r3, #-8]	@ tmp123, tmp121,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L310:
	mvn	r0, #0	@ D.35858,
	bx	lr	@
.L314:
	.align	2
.L313:
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
	ldr	lr, .L331	@ tmp142,
	mov	ip, #49152	@ tmp141,
	ldr	r4, .L331+4	@ tmp179,
	movt	ip, 4115	@ tmp141,
	mov	r5, r0	@ MemAddr, MemAddr
	mov	r8, r1	@ MemSize, MemSize
	ldr	r2, [lr, #8]	@ D.35863, g_vdm_hal_fun_ptr.pfun_SCDDRV_OpenHardware
	mov	r9, r3	@ ResetRegAddr, ResetRegAddr
	str	ip, [r4]	@ tmp141, s_RegPhyBaseAddr
	cmp	r2, #0	@ D.35863,
	beq	.L316	@,
	blx	r2	@ D.35863
.L316:
	ldr	r3, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r4, .L331+4	@ tmp143,
	cmp	r3, #1	@ s_SmIIS.IsScdDrvOpen,
	beq	.L319	@,
	bl	ResetSCD	@
	mov	r1, #140	@,
	add	r0, r4, #12	@, tmp143,
	mov	r7, #0	@ tmp148,
	bl	__memzero	@
	add	r3, r5, #3	@ D.35864, MemAddr,
	bic	r3, r3, #3	@ D.35864, D.35864,
	str	r5, [r4, #12]	@ MemAddr, s_SmIIS.ScdDrvMem.HwMemAddr
	rsb	r6, r5, r3	@ Offset, MemAddr, D.35864
	str	r3, [r4, #20]	@ D.35864, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r0, r3	@, D.35864
	str	r8, [r4, #16]	@ MemSize, s_SmIIS.ScdDrvMem.HwMemSize
	str	r7, [r4, #152]	@ tmp148, s_eScdDrvSleepStage
	bl	MEM_Phy2Vir	@
	add	r3, r6, #12288	@ D.35866, Offset,
	mov	r2, #12288	@ tmp155,
	add	r3, r5, r3	@ D.35864, MemAddr, D.35866
	str	r2, [r4, #28]	@ tmp155, s_SmIIS.ScdDrvMem.DownMsgMemSize
	str	r3, [r4, #32]	@ D.35864, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, r5	@ D.35864, Offset, MemAddr
	add	r5, r5, #26112	@ D.35866, D.35864,
	add	r5, r5, #127	@ D.35866, D.35866,
	bic	r5, r5, #127	@ D.35866, D.35866,
	str	r0, [r4, #24]	@, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	mov	r0, r3	@, D.35864
	bl	MEM_Phy2Vir	@
	mov	r3, #13824	@ tmp160,
	str	r5, [r4, #4]	@ D.35866, g_hex_base_addr
	str	r3, [r4, #40]	@ tmp160, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	r0, [r4, #36]	@, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	mov	r0, r5	@, D.35866
	bl	MEM_Phy2Vir	@
	cmp	r0, r7	@ D.35865,
	str	r0, [r4, #156]	@ D.35865, g_hex_base_vir_addr
	beq	.L320	@,
	add	r6, r6, #44032	@ D.35866, Offset,
	mov	r3, #17920	@ tmp168,
	cmp	r8, r6	@ MemSize, D.35866
	str	r10, [r4, #80]	@ RegAddr, s_SmIIS.ScdDrvMem.ScdRegAddr
	str	r9, [r4, #84]	@ ResetRegAddr, s_SmIIS.ScdDrvMem.ScdResetRegAddr
	str	r3, [r4, #8]	@ tmp168, g_hex_len
	blt	.L319	@,
	ldr	r3, [r4, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	cmp	r3, r7	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr,
	beq	.L319	@,
	ldr	r3, [r4, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	cmp	r3, r7	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr,
	beq	.L319	@,
	mov	r3, #1	@ tmp177,
	mov	r0, r7	@ D.35862, tmp148
	str	r3, [r4, #136]	@ tmp177, s_SmIIS.IsScdDrvOpen
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L319:
	mvn	r0, #6	@ D.35862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L320:
	mvn	r0, #0	@ D.35862,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L332:
	.align	2
.L331:
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
	ldr	r3, .L342	@ tmp115,
	add	r0, r3, r4, lsl #2	@ tmp117, tmp115, SmID,
	ldr	r3, [r0, #128]	@ D.35871, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35871,
	beq	.L334	@,
	ldr	r2, [r3, #64]	@ _5->Config.BufSize, _5->Config.BufSize
	cmp	r2, #0	@ _5->Config.BufSize,
	beq	.L334	@,
	add	r3, r3, #163840	@ tmp121, D.35871,
	ldr	r2, [r3, #2412]	@ _5->Mode, _5->Mode
	cmp	r2, #0	@ _5->Mode,
	moveq	r2, #1	@ tmp125,
	streq	r2, [r3, #2412]	@ tmp125, _5->Mode
.L334:
	add	r0, sp, #4	@ tmp129,,
	bl	OSAL_UnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L343:
	.align	2
.L342:
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
	ldr	r2, .L354	@ tmp116,
	add	r0, r2, r0, lsl #2	@ tmp118, tmp116, SmID,
	ldr	r3, [r0, #128]	@ D.35886, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.35886,
	beq	.L347	@,
	add	r3, r3, #163840	@ tmp121, D.35886,
	ldr	r1, [r3, #2412]	@ _6->Mode, _6->Mode
	cmp	r1, #0	@ _6->Mode,
	beq	.L347	@,
	ldr	r2, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	mov	r1, #0	@ tmp125,
	str	r1, [r3, #2412]	@ tmp125, _6->Mode
	cmp	r2, r1	@ s_SmIIS.SCDState,
	beq	.L347	@,
	mvn	r0, #6	@ D.35884,
	bx	lr	@
.L347:
	mov	r0, #0	@ D.35884,
	bx	lr	@
.L355:
	.align	2
.L354:
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
	ldr	r0, .L358	@,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L359:
	.align	2
.L358:
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
	bne	.L367	@,
	ldr	r3, .L377	@ tmp133,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L376	@,
	add	ip, r0, #163840	@ tmp186, pSmInstArray,
	add	r3, r0, #176128	@ tmp141, pSmInstArray,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	cmn	r0, #168	@ pSmInstArray,
	ldr	r2, [ip, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	add	r0, r0, #73728	@ tmp185, pSmInstArray,
	strb	r2, [r1]	@ pSmInstArray_5->Mode, pSmInstInfo_6(D)->InstMode
	ldr	r3, [r3, #3988]	@ D.35892, pSmInstArray_5->numReadSegFail
	str	r3, [r1, #20]	@ D.35892, pSmInstInfo_6(D)->numReadSegFail
	beq	.L363	@,
	ldr	r3, [r0, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	ldr	r2, [r0, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	subs	r3, r3, r2	@ D.35892, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	addmi	r3, r3, #1024	@ D.35892, D.35892,
	strmi	r3, [r1, #4]	@ D.35892, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
	strpl	r3, [r1, #4]	@ D.35892, MEM[(HI_S32 *)pSmInstInfo_6(D) + 4B]
.L365:
	ldr	r3, [r0, #188]	@ D.35892, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].RawTotalSize
	str	r3, [r1, #12]	@ D.35892, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
	ldr	r2, [r0, #180]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset
	rsb	r3, r2, r3	@ D.35892, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].FirstPacketOffset, D.35892
	str	r3, [r1, #12]	@ D.35892, MEM[(HI_S32 *)pSmInstInfo_6(D) + 12B]
.L363:
	ldr	r3, [ip, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail
	movw	r4, #36409	@ tmp163,
	ldr	r2, [ip, #2248]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head
	movt	r4, 14563	@ tmp163,
	add	r3, r3, #1152	@ D.35892, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Tail,
	adds	r0, r0, #192	@ D.35895, tmp185,
	rsb	r3, r2, r3	@ D.35892, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].Head, D.35892
	movne	r0, #0	@ D.35891,
	smull	r4, r5, r3, r4	@ tmp162, D.35892, tmp163
	mov	r2, r3, asr #31	@ tmp165, D.35892,
	rsb	r2, r2, r5, asr #8	@ tmp166, tmp165,,
	mov	lr, r2, asl #10	@ tmp169, tmp166,
	add	r2, lr, r2, lsl #7	@ tmp170, tmp169, tmp166,
	rsb	r3, r2, r3	@ D.35892, tmp170, D.35892
	str	r3, [r1, #8]	@ D.35892, pSmInstInfo_6(D)->SegNum
	ldrne	r3, [ip, #2280]	@ D.35892, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegTotalSize
	strne	r3, [r1, #16]	@ D.35892, MEM[(HI_S32 *)pSmInstInfo_6(D) + 16B]
	ldmfd	sp!, {r4, r5, pc}	@
.L376:
	cmp	r1, #0	@ pSmInstInfo,
	beq	.L367	@,
	strb	r0, [r1]	@ pSmInstArray, pSmInstInfo_6(D)->InstMode
	mvn	r0, #0	@ D.35891,
	bx	lr	@
.L367:
	mvn	r0, #0	@ D.35891,
	bx	lr	@
.L378:
	.align	2
.L377:
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
	ldr	r3, .L384	@ tmp122,
	ldr	ip, [r1]	@ pRawPacket_6(D)->PhyAddr, pRawPacket_6(D)->PhyAddr
	add	r0, r3, r0, lsl #2	@ tmp124, tmp122, SmID,
	cmp	ip, #0	@ pRawPacket_6(D)->PhyAddr,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	beq	.L380	@,
	ldr	r3, [r1, #4]	@ pRawPacket_6(D)->VirAddr, pRawPacket_6(D)->VirAddr
	cmp	r3, #0	@ pRawPacket_6(D)->VirAddr,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L380	@,
	add	r0, r0, #168	@, pSmInstArray,
	b	InsertRawPacket	@
.L380:
	mvn	r0, #0	@,
	bx	lr	@
.L385:
	.align	2
.L384:
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
	ldr	r3, .L412	@ tmp201,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp203, tmp201, SmID,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r5, #0	@ pSmInstArray,
	beq	.L403	@,
	add	r10, r5, #73728	@ tmp447, pSmInstArray,
	add	r3, r5, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r10, #192	@ tmp447,
	cmnne	r5, #168	@, pSmInstArray,
	str	r3, [sp, #12]	@ pRawPacketArray, %sfp
	add	r2, r10, #192	@ pStreamSegArray, tmp447,
	str	r2, [sp, #8]	@ pStreamSegArray, %sfp
	moveq	r3, #1	@ tmp210,
	movne	r3, #0	@ tmp210,
	cmp	r1, #0	@ pStreamSeg,
	orreq	r3, r3, #1	@,, tmp216, tmp210
	cmp	r3, #0	@ tmp216,
	bne	.L403	@,
	ldr	r6, [r10, #172]	@ D.35913, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Tail
	ldr	r3, [r10, #168]	@ D.35913, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	cmp	r6, r3	@ D.35913, D.35913
	beq	.L390	@,
	mov	r9, r3, asl #3	@ tmp445, index,
	mov	r2, r3, asl #6	@ tmp446, index,
	add	lr, r9, r2	@ tmp224, tmp445, tmp446
	mov	r4, #1	@ rawnum,
	add	lr, r5, lr	@ tmp225, pSmInstArray, tmp224
	mov	fp, r9	@ tmp441, tmp445
	mov	ip, r2	@ tmp443, tmp446
	ldr	r7, [lr, #176]	@ TotalSrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	b	.L389	@
.L391:
	add	r4, r4, #1	@ rawnum, rawnum,
	ldr	r8, [r8, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	cmp	r4, #1024	@ rawnum,
	add	r7, r7, r8	@ TotalSrcLength, TotalSrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_34].Length
	movls	lr, #0	@ tmp237,
	movhi	lr, #1	@ tmp237,
	cmp	r3, r6	@ index, D.35913
	orreq	lr, lr, #1	@,, tmp240, tmp237
	cmp	lr, #0	@ tmp240,
	bne	.L390	@,
.L389:
	add	lr, fp, ip	@ tmp244, tmp441, tmp443
	add	r3, r3, #1	@ D.35915, index,
	add	lr, r5, lr	@ tmp245, pSmInstArray, tmp244
	ubfx	r3, r3, #0, #10	@ index, D.35915,,
	ldrb	lr, [lr, #220]	@ zero_extendqisi2	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag
	mov	fp, r3, asl #3	@ tmp441, index,
	mov	ip, r3, asl #6	@ tmp443, index,
	cmp	lr, #0	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_8].is_not_last_packet_flag,
	add	r8, fp, ip	@ tmp230, tmp441, tmp443
	add	r8, r5, r8	@ tmp231, pSmInstArray, tmp230
	bne	.L391	@,
	str	r0, [sp, #20]	@ SmID, %sfp
	mov	r6, r1	@ pStreamSeg, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	str	r2, [sp]	@ tmp446, %sfp
	bl	ResetStreamSegArray	@
	add	r0, r5, #163840	@ tmp251, pSmInstArray,
	ldr	r2, [sp]	@ tmp446, %sfp
	ldr	r3, [r0, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize
	sub	r3, r3, #262144	@ D.35913, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufSize,
	cmp	r3, r7	@ D.35913, TotalSrcLength
	blt	.L409	@,
	ldr	r1, [r5, #56]	@ D.35910, pSmInstArray_20->Config.VidStd
	ldr	r0, [r0, #2264]	@ TmpPhyAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].SegBufPhyAddr
	sub	r3, r1, #10	@ D.35910, D.35910,
	ldr	fp, [r10, #192]	@ TmpVirAddr, MEM[(struct SEG_ARRAY_S *)pSmInstArray_20 + 73920B].pSegBufVirAddr
	bics	r3, r3, #2	@ tmp479, D.35910,
	bne	.L393	@,
	ldr	r3, .L412+4	@ tmp262,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r3, #1	@ D.35913, g_VdmCharacter,
	streqb	r3, [fp]	@ D.35913, *TmpVirAddr_43
	addeq	fp, fp, #1	@ TmpVirAddr, TmpVirAddr,
	ldreq	r1, [r5, #56]	@ D.35910, pSmInstArray_20->Config.VidStd
.L393:
	add	r3, r9, r2	@ tmp270, tmp445, tmp446
	cmp	r1, #12	@ D.35910,
	add	r3, r5, r3	@ tmp271, pSmInstArray, tmp270
	ldr	r10, [r10, #168]	@ index, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].Head
	ldr	r1, [r3, #172]	@ SrcVirAddr, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].VirAddr
	ldr	r3, [r3, #176]	@ SrcLength, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].Length
	str	r3, [sp]	@ SrcLength, %sfp
	beq	.L410	@,
.L394:
	str	r0, [r6, #8]	@ TmpPhyAddr, pStreamSeg_26(D)->PhyAddr
	str	r2, [sp, #16]	@ tmp446, %sfp
	str	r1, [sp, #4]	@ SrcVirAddr, %sfp
	bl	MEM_Phy2Vir	@
	ldr	r2, [sp, #16]	@ tmp446, %sfp
	cmp	r4, #0	@ rawnum,
	mov	r3, #1	@ tmp369,
	add	r9, r9, r2	@ tmp354, tmp445, tmp446
	add	r9, r5, r9	@ tmp355, pSmInstArray, tmp354
	str	r0, [r6]	@ D.35917, pStreamSeg_26(D)->VirAddr
	rsb	r0, r0, fp	@ D.35913, D.35917, TmpVirAddr
	str	r0, [r6, #12]	@ D.35913, pStreamSeg_26(D)->LenInByte
	ldrd	r0, [r9, #184]	@ tmp492, tmp355,
	strd	r0, [r6, #24]	@ tmp492, pStreamSeg,
	ldrd	r0, [r9, #184]	@ tmp493, tmp355,
	strd	r0, [r6, #32]	@ tmp493, pStreamSeg,
	ldrd	r0, [r9, #200]	@ tmp494, tmp355,
	strb	r3, [r6, #5]	@ tmp369, pStreamSeg_26(D)->IsLastSeg
	strd	r0, [r6, #40]	@ tmp494, pStreamSeg,
	ldr	r1, [sp, #4]	@ SrcVirAddr, %sfp
	beq	.L401	@,
	cmp	r1, #0	@ SrcVirAddr,
	cmpne	fp, #0	@, TmpVirAddr,
	beq	.L390	@,
	mov	r8, r10, asl #6	@ tmp444, index,
	mov	ip, r10, asl #3	@ tmp442, index,
	mov	r3, #0	@ i,
	str	r7, [sp, #16]	@ TotalSrcLength, %sfp
	mov	r2, r8	@ tmp444, tmp444
	str	r4, [sp, #4]	@ rawnum, %sfp
	mov	r8, r5	@ pSmInstArray, pSmInstArray
	mov	lr, r1	@ SrcVirAddr, SrcVirAddr
	mov	r5, r3	@ i, i
	ldr	r4, [sp]	@ SrcLength, %sfp
	mov	r7, ip	@ tmp442, tmp442
	mov	r3, r2	@ tmp444, tmp444
	b	.L399	@
.L400:
	cmp	fp, #0	@ TmpVirAddr,
	cmpne	lr, #0	@, SrcVirAddr,
	beq	.L390	@,
.L399:
	mov	r1, lr	@, SrcVirAddr
	mov	r2, r4	@, SrcLength
	mov	r0, fp	@, TmpVirAddr
	str	r3, [sp]	@ tmp444, %sfp
	bl	memcpy	@
	ldr	r3, [sp]	@ tmp444, %sfp
	ldr	r1, [r6, #12]	@ pStreamSeg_26(D)->LenInByte, pStreamSeg_26(D)->LenInByte
	add	r10, r10, #1	@ D.35915, index,
	add	r7, r7, r3	@ tmp392, tmp442, tmp444
	ubfx	r10, r10, #0, #10	@ index, D.35915,,
	add	r7, r8, r7	@ tmp393, pSmInstArray, tmp392
	add	fp, fp, r4	@ TmpVirAddr, TmpVirAddr, tmp2
	add	r4, r1, r4	@ D.35915, pStreamSeg_26(D)->LenInByte, SrcLength
	ldr	r1, [sp, #4]	@ rawnum, %sfp
	ldrb	r0, [r7, #221]	@ zero_extendqisi2	@ D.35914, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_155].is_stream_end_flag
	add	r5, r5, #1	@ i, i,
	mov	r7, r10, asl #3	@ tmp442, index,
	mov	r3, r10, asl #6	@ tmp444, index,
	str	r4, [r6, #12]	@ D.35915, pStreamSeg_26(D)->LenInByte
	add	r2, r7, r3	@ tmp401, tmp442, tmp444
	strb	r0, [r6, #6]	@ D.35914, pStreamSeg_26(D)->IsStreamEnd
	cmp	r5, r1	@ i, rawnum
	ldrd	r0, [r9, #208]	@ tmp496, tmp449,
	add	r2, r8, r2	@ tmp402, pSmInstArray, tmp401
	ldr	lr, [r2, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_119].VirAddr
	ldr	r4, [r2, #176]	@ SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_119].Length
	strd	r0, [r6, #48]	@ tmp496, pStreamSeg,
	ldr	r2, [r9, #224]	@ D.35915, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispEnableFlag
	str	r2, [r6, #56]	@ D.35915, pStreamSeg_26(D)->DispEnableFlag
	ldr	r2, [r9, #228]	@ D.35915, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DispFrameDistance
	str	r2, [r6, #60]	@ D.35915, pStreamSeg_26(D)->DispFrameDistance
	ldr	r2, [r9, #232]	@ D.35915, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].DistanceBeforeFirstFrame
	str	r2, [r6, #64]	@ D.35915, pStreamSeg_26(D)->DistanceBeforeFirstFrame
	ldr	r2, [r9, #236]	@ D.35915, MEM[(struct STREAM_DATA_S *)pSmInstArray_20 + 168B].RawPacket[_28].GopNum
	str	r2, [r6, #68]	@ D.35915, pStreamSeg_26(D)->GopNum
	bne	.L400	@,
	ldr	r7, [sp, #16]	@ TotalSrcLength, %sfp
.L401:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r6	@, pStreamSeg
	ldr	r0, [sp, #8]	@, %sfp
	bl	InsertStreamSeg	@
.L409:
	mov	r1, r7	@, TotalSrcLength
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.35911,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L390:
	mvn	r0, #3	@ D.35911,
.L387:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L410:
	ldr	r3, .L412+4	@ tmp283,
	ldr	ip, [sp]	@ SrcLength, %sfp
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	cmp	ip, #0	@ SrcLength,
	moveq	r3, #0	@, tmp290
	andne	r3, r3, #1	@,, tmp290, g_VdmCharacter
	cmp	r3, #0	@ tmp290,
	beq	.L394	@,
	cmp	ip, #2	@ SrcLength,
	bgt	.L411	@,
	cmp	r4, #1	@ rawnum,
	add	r10, r10, #1	@ D.35915, index,
	ubfx	r10, r10, #0, #10	@ index, D.35915,,
	bls	.L390	@,
	mov	r8, r10, asl #6	@ tmp444, index,
	add	r3, r8, r10, lsl #3	@ tmp294, tmp444, index,
	add	r3, r5, r3	@ tmp295, pSmInstArray, tmp294
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_60].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_60].Length
	ldr	ip, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_60].VirAddr
	ldr	r3, [sp]	@ SrcLength, %sfp
	add	r1, r3, r1	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_60].Length
	cmp	r1, #2	@ SrcLength,
	ble	.L396	@,
	add	r3, r10, #1020	@ D.35915, index,
	sub	r1, r1, #3	@ SrcLength, SrcLength,
	add	r3, r3, #3	@ D.35915, D.35915,
	str	r1, [sp]	@ SrcLength, %sfp
	ubfx	r3, r3, #0, #10	@ D.35915, D.35915,,
	sub	r4, r4, #1	@ rawnum, rawnum,
	mov	r1, r3, asl #6	@ tmp309, D.35915,
	add	r3, r1, r3, lsl #3	@ tmp310, tmp309, D.35915,
	add	r3, r5, r3	@ tmp311, pSmInstArray, tmp310
	ldr	r1, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_82].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_82].Length
	rsb	r1, r1, #3	@ D.35913, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_82].Length,
	add	r1, ip, r1	@ SrcVirAddr, SrcVirAddr, D.35913
	b	.L394	@
.L411:
	sub	r3, ip, #3	@ SrcLength, SrcLength,
	add	r1, r1, #3	@ SrcVirAddr, SrcVirAddr,
	str	r3, [sp]	@ SrcLength, %sfp
	b	.L394	@
.L403:
	mvn	r0, #0	@ D.35911,
	b	.L387	@
.L396:
	cmp	r4, #2	@ rawnum,
	add	r10, r10, #1	@ D.35915, index,
	ubfx	r10, r10, #0, #10	@ index, D.35915,,
	bls	.L390	@,
	mov	r8, r10, asl #6	@ tmp444, index,
	add	r3, r8, r10, lsl #3	@ tmp318, tmp444, index,
	add	r3, r5, r3	@ tmp319, pSmInstArray, tmp318
	ldr	ip, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_65].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_65].Length
	ldr	r3, [r3, #172]	@ SrcVirAddr, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_65].VirAddr
	add	ip, r1, ip	@ SrcLength, SrcLength, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[index_65].Length
	cmp	ip, #2	@ SrcLength,
	str	r3, [sp, #4]	@ SrcVirAddr, %sfp
	ble	.L390	@,
	add	r1, r10, #1020	@ D.35915, index,
	sub	r4, r4, #2	@ rawnum, rawnum,
	mov	r3, r1	@ D.35915, D.35915
	add	r1, r1, #3	@ D.35915, D.35915,
	ubfx	lr, r1, #0, #10	@ D.35915, D.35915,,
	add	r3, r3, #2	@ D.35915, D.35915,
	ubfx	r8, r3, #0, #10	@ D.35915, D.35915,,
	sub	r1, ip, #3	@ SrcLength, SrcLength,
	mov	r3, lr, asl #6	@ tmp333, D.35915,
	str	r1, [sp]	@ SrcLength, %sfp
	add	r3, r3, lr, lsl #3	@ tmp334, tmp333, D.35915,
	mov	r1, r8, asl #6	@ tmp344, D.35915,
	add	r1, r1, r8, lsl #3	@ tmp345, tmp344, D.35915,
	add	r3, r5, r3	@ tmp335, pSmInstArray, tmp334
	add	r1, r5, r1	@ tmp346, pSmInstArray, tmp345
	ldr	r3, [r3, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_70].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_70].Length
	ldr	r1, [r1, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_74].Length, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_74].Length
	rsb	r3, r3, #3	@ D.35913, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_70].Length,
	rsb	r1, r1, r3	@ D.35913, MEM[(struct RAW_ARRAY_S *)pSmInstArray_20 + 168B].RawPacket[_74].Length, D.35913
	ldr	r3, [sp, #4]	@ SrcVirAddr, %sfp
	add	r1, r3, r1	@ SrcVirAddr, SrcVirAddr, D.35913
	b	.L394	@
.L413:
	.align	2
.L412:
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
	ldr	r3, .L427	@ tmp147,
	mov	r2, r0	@ SmID, SmID
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r3, r3, r0, lsl #2	@ tmp149, tmp147, SmID,
	.pad #24
	sub	sp, sp, #24	@,,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L425	@,
	add	r3, r4, #73728	@ tmp151, pSmInstArray,
	add	r7, r4, #168	@ pRawPacketArray, pSmInstArray,
	cmn	r3, #192	@ tmp151,
	cmnne	r4, #168	@, pSmInstArray,
	add	r0, r3, #192	@ pStreamSegArray, tmp151,
	beq	.L425	@,
	ldr	r5, [r3, #168]	@ D.35926, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Head
	ldr	r3, [r3, #172]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail
	cmp	r3, r5	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_5 + 168B].Tail, D.35926
	beq	.L423	@,
	mov	r8, r5, asl #3	@ tmp226, D.35926,
	mov	r5, r5, asl #6	@ tmp227, D.35926,
	mov	r6, r2	@ SmID, SmID
	bl	ResetStreamSegArray	@
	add	ip, r8, r5	@ tmp167, tmp226, tmp227
	add	ip, r4, ip	@ tmp168, pSmInstArray, tmp167
	ldr	r0, [ip, #172]	@ pu32tmp, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].VirAddr
	ldr	lr, [r0]	@ D.35927, *pu32tmp_14
	ldr	r3, [r0, #4]	@ D.35927, MEM[(HI_U32 *)pu32tmp_14 + 4B]
	sub	r2, lr, #32	@ D.35928, D.35927,
	cmp	r2, #1888	@ D.35928,
	ldrhi	r1, [ip, #176]	@ D.35926, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	bhi	.L421	@,
	sub	r2, r3, #32	@ D.35928, D.35927,
	ldr	r1, [ip, #176]	@ D.35926, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	cmp	r2, #1056	@ D.35928,
	bhi	.L421	@,
	mov	r2, #51712	@ tmp191,
	sub	ip, r1, #1552	@ D.35928, D.35926,
	movt	r2, 47	@ tmp191,
	cmp	ip, r2	@ D.35928, tmp191
	bhi	.L421	@,
	mul	r2, r3, lr	@ D.35926, D.35927, D.35927
	add	ip, r4, #163840	@ tmp202, pSmInstArray,
	ldr	ip, [ip, #2268]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize
	sub	ip, ip, #262144	@ D.35926, MEM[(struct SEG_ARRAY_S *)pSmInstArray_5 + 73920B].SegBufSize,
	add	r2, r2, r2, lsl #1	@ D.35926, D.35926, D.35926,
	add	r2, r2, r2, lsr #31	@ tmp197, D.35926, D.35926,
	mov	r2, r2, asr #1	@ tmp198, tmp197,
	cmp	r2, ip	@ tmp198, D.35926
	bgt	.L421	@,
	add	r2, r2, #16	@ D.35926, tmp198,
	cmp	r1, r2	@ D.35926, D.35926
	blt	.L421	@,
	ldr	ip, [r0, #8]	@ D.35927, MEM[(HI_U32 *)pu32tmp_14 + 8B]
	movw	r2, #1916	@ tmp207,
	ldr	r10, [r0, #12]	@ D.35927, MEM[(HI_U32 *)pu32tmp_14 + 12B]
	sub	r9, ip, #4	@ D.35928, D.35927,
	cmp	r9, r2	@ D.35928, tmp207
	bhi	.L421	@,
	sub	r9, r10, #4	@ D.35928, D.35927,
	movw	r2, #1084	@ tmp209,
	cmp	r9, r2	@ D.35928, tmp209
	bhi	.L421	@,
	add	r5, r8, r5	@ tmp214, tmp226, tmp227
	add	r1, r0, #16	@, pu32tmp,
	add	r4, r4, r5	@ tmp215, pSmInstArray, tmp214
	mov	r0, r6	@, SmID
	mov	r2, lr	@, D.35927
	ldrd	r8, [r4, #184]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts, tmp215,
	str	r10, [sp, #8]	@ D.35927,
	str	ip, [sp, #4]	@ D.35927,
	strd	r8, [sp, #16]	@ MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Pts,,
	str	lr, [sp]	@ D.35927,
	bl	DNR_PutYuv	@
	subs	r5, r0, #0	@ Ret,
	bne	.L423	@,
	ldr	r1, [r4, #176]	@, MEM[(struct STREAM_DATA_S *)pSmInstArray_5 + 168B].RawPacket[_12].Length
	mov	r0, r7	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, r5	@ D.35924, Ret
	b	.L415	@
.L421:
	mov	r0, r7	@, pRawPacketArray
	bl	DeleteRawLen	@
	mov	r0, #0	@ D.35924,
.L415:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L425:
	mvn	r0, #0	@ D.35924,
	b	.L415	@
.L423:
	mvn	r0, #3	@ D.35924,
	b	.L415	@
.L428:
	.align	2
.L427:
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
	ldr	r3, .L445	@ tmp137,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r3, r3, r0, lsl #2	@ tmp139, tmp137, SmID,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ pStreamSeg,
	cmpne	r4, #0	@, pSmInstArray,
	beq	.L437	@,
	ldr	r3, [r4, #56]	@ D.35936, pSmInstArray_9->Config.VidStd
	mov	r5, r1	@ pStreamSeg, pStreamSeg
	mov	r6, r0	@ SmID, SmID
	sub	r1, r3, #4	@ D.35933, D.35936,
	sub	r2, r3, #8	@ D.35933, D.35936,
	cmp	r2, #6	@ D.35933,
	cmphi	r1, #1	@, D.35933,
	bls	.L431	@,
	cmp	r3, #1	@ D.35936,
	beq	.L432	@,
.L435:
	add	r0, r4, #73728	@, pSmInstArray,
	mov	r1, r5	@, pStreamSeg
	add	r0, r0, #192	@,,
	bl	GetStreamSeg	@
	cmp	r0, #0	@ ret
	bne	.L434	@,
	ldr	r7, .L445+4	@ tmp160,
	ldr	r3, [r7]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r3, #0	@ vfmw_save_seg_file,
	beq	.L436	@,
	ldr	r3, .L445+8	@ tmp162,
	ldr	r3, [r3]	@ save_seg_chan_num, save_seg_chan_num
	cmp	r6, r3	@ SmID, save_seg_chan_num
	beq	.L444	@,
.L436:
	add	r4, r4, #176128	@ tmp178, pSmInstArray,
	mov	r3, #0	@ tmp179,
	mov	r0, r3	@ D.35934, tmp179
	str	r3, [r4, #3988]	@ tmp179, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L432:
	ldr	r3, [r4, #72]	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_9->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L435	@,
.L431:
	mov	r1, r5	@, pStreamSeg
	mov	r0, r6	@, SmID
	bl	SM_CopyRawToSeg	@
	cmp	r0, #0	@,
	beq	.L435	@,
	mvn	r0, #6	@ ret,
.L434:
	add	r4, r4, #176128	@ tmp172, pSmInstArray,
	ldr	r3, [r4, #3988]	@ pSmInstArray_9->numReadSegFail, pSmInstArray_9->numReadSegFail
	add	r3, r3, #1	@ D.35937, pSmInstArray_9->numReadSegFail,
	str	r3, [r4, #3988]	@ D.35937, pSmInstArray_9->numReadSegFail
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L444:
	ldr	r0, .L445+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r7]	@, vfmw_save_seg_file
	ldr	r1, [r5, #12]	@, pStreamSeg_10(D)->LenInByte
	ldr	r0, [r5]	@, pStreamSeg_10(D)->VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L445+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L436	@
.L437:
	mvn	r0, #0	@ D.35934,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L446:
	.align	2
.L445:
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
	ldr	r3, .L449	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r0, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r0, #0	@ pSmInstArray,
	beq	.L448	@,
	add	r0, r0, #73728	@, pSmInstArray,
	add	r0, r0, #192	@,,
	b	ReleaseStreamSeg	@
.L448:
	mvn	r0, #0	@,
	bx	lr	@
.L450:
	.align	2
.L449:
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
	ldr	r4, .L464	@ tmp138,
	add	r3, r4, r6, lsl #2	@ tmp123, tmp138, SmID,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldrsb	r3, [r3, #3]	@ pSmInstArray_10->InsertNewSegFlag, pSmInstArray_10->InsertNewSegFlag
	mov	r5, r0	@ CurTime,
	cmp	r3, #1	@ pSmInstArray_10->InsertNewSegFlag,
	beq	.L454	@,
.L456:
	mov	r0, #0	@ D.35952,
.L455:
	ldr	r3, [r4, #160]	@ D.35951, LastEventTime
	ldr	r2, .L464	@ tmp128,
	cmp	r5, r3	@ CurTime, D.35951
	movls	r3, #1	@ D.35952,
	strls	r5, [r2, #160]	@ CurTime, LastEventTime
	bls	.L458	@,
	rsb	r3, r3, r5	@ Period, D.35951, CurTime
	cmp	r3, #1	@ Period,
	movls	r3, #0	@ D.35952,
	movhi	r3, #1	@ D.35952,
.L458:
	tst	r3, r0	@ D.35952, D.35952
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, .L464+4	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #160]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L454:
	mov	r0, r6	@, SmID
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	bne	.L456	@,
	mov	r0, r6	@, SmID
	bl	VCTRL_IsChanSegEnough	@
	clz	r0, r0	@ D.35952,
	mov	r0, r0, lsr #5	@ D.35952, D.35952,
	b	.L455	@
.L465:
	.align	2
.L464:
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
	ldr	r3, .L473	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r0, r3, r0, lsl #2	@ tmp120, tmp118, SmID,
	ldr	r4, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ pSmInstArray,
	beq	.L471	@,
	mov	r5, r1	@ FirstCalc, FirstCalc
	bl	OSAL_GetTimeInMs	@
	cmp	r5, #0	@ FirstCalc,
	add	r4, r4, #176128	@ tmp123, pSmInstArray,
	mov	r2, r0	@ CurTime,
	beq	.L468	@,
	mov	r3, #0	@ tmp124,
	str	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	mov	r0, r3	@ D.35955, tmp124
	str	r3, [r4, #3952]	@ tmp124, pSmInstArray_6->BlockTimeInMs
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L468:
	ldr	r3, [r4, #3956]	@ D.35956, pSmInstArray_6->LastBlockTime
	cmp	r0, r3	@ CurTime, D.35956
	strls	r5, [r4, #3952]	@ FirstCalc, pSmInstArray_6->BlockTimeInMs
	rsbhi	r0, r3, r0	@ D.35956, D.35956, CurTime
	strls	r2, [r4, #3956]	@ CurTime, pSmInstArray_6->LastBlockTime
	strhi	r0, [r4, #3952]	@ D.35956, pSmInstArray_6->BlockTimeInMs
	movls	r0, r5	@ D.35955, FirstCalc
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L471:
	mov	r0, r4	@ D.35955, pSmInstArray
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L474:
	.align	2
.L473:
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
	ldr	r2, .L478	@ tmp120,
	sub	ip, r1, #1	@ D.35960, Mode,
	add	r0, r2, r0, lsl #2	@ tmp122, tmp120, SmID,
	ldr	r2, [r0, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp128, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp128, tmp128,
	cmp	ip, #1	@ D.35960,
	movls	r0, r3	@, tmp131, tmp128
	orrhi	r0, r3, #1	@,, tmp131, tmp128
	cmp	r0, #0	@ tmp131,
	addeq	r2, r2, #163840	@ tmp133, pSmInstArray,
	mvnne	r0, #0	@ D.35959,
	streq	r1, [r2, #2412]	@ Mode, pSmInstArray_5->Mode
	bx	lr	@
.L479:
	.align	2
.L478:
	.word	.LANCHOR0
	.fnend
	.size	SetInstMode, .-SetInstMode
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
	mov	r7, r2	@ pRawStreamArray, pRawStreamArray
	mov	r6, r0	@ pSmPushRaw, pSmPushRaw
	mov	r8, r1	@ SegStreamSize, SegStreamSize
	mov	r0, sp	@,
	mov	r2, #72	@,
	mov	r1, #0	@,
	mov	r5, r3	@ pDownMsgVirAddr, pDownMsgVirAddr
	bl	memset	@
	cmp	r7, #0	@ pRawStreamArray,
	beq	.L491	@,
	add	r3, r7, #73728	@ tmp182, pRawStreamArray,
	ldmia	r3, {r1, r2}	@ tmp182,,
	cmp	r1, r2	@ pRawStreamArray_17(D)->Head, pRawStreamArray_17(D)->Tail
	beq	.L492	@,
	ldr	r9, [r3, #12]	@ FirstRawOffset, pRawStreamArray_17(D)->FirstPacketOffset
	mov	fp, r9	@ D.35972, FirstRawOffset
.L481:
	mov	r1, sp	@,
	mov	r0, r7	@, pRawStreamArray
	bl	ShowFirstRawPacket	@
	ldr	r4, [sp, #8]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	mov	r10, #0	@ tmp195,
	rsb	r4, r9, r4	@ RawShowTotalLen, FirstRawOffset, RawPacket.Length
	ldr	r3, [sp, #4]	@ RawPacket.VirAddr, RawPacket.VirAddr
	cmp	r4, r8	@ RawShowTotalLen, SegStreamSize
	add	r9, r2, r9	@ D.35967, RawPacket.PhyAddr, FirstRawOffset
	add	r3, r3, fp	@ D.35968, RawPacket.VirAddr, D.35972
	str	r10, [r5]	@ tmp195, *pDownMsgVirAddr_29(D)
	str	r10, [r5, #4]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 4B]
	str	r10, [r5, #8]	@ tmp195, MEM[(HI_S32 *)pDownMsgVirAddr_29(D) + 8B]
	str	r4, [sp, #8]	@ RawShowTotalLen, RawPacket.Length
	str	r9, [sp]	@ D.35967, RawPacket.PhyAddr
	str	r3, [sp, #4]	@ D.35968, RawPacket.VirAddr
	str	r10, [r6, #4]	@ tmp195, pSmPushRaw_33(D)->PushRawTotalLen
	bgt	.L482	@,
	mov	fp, r10	@ PushRawNum, j
	mov	lr, r4	@ D.35966, RawShowTotalLen
	b	.L485	@
.L503:
	ldr	lr, [sp, #8]	@ D.35966, RawPacket.Length
	movw	r2, #1023	@ tmp255,
	add	r4, r4, lr	@ RawShowTotalLen, RawShowTotalLen, D.35966
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	movlt	r3, #0	@ tmp216,
	movge	r3, #1	@ tmp216,
	cmp	fp, r2	@ PushRawNum, tmp255
	movgt	r3, #0	@ tmp216,
	cmp	r3, #0	@ tmp216,
	beq	.L484	@,
.L485:
	cmp	lr, #0	@ D.35966,
	mov	r3, r10, asl #2	@ D.35970, j,
	add	r2, r5, r3	@ tmp200, pDownMsgVirAddr, D.35970
	mov	r1, sp	@,
	mov	r0, r7	@, pRawStreamArray
	add	r3, r3, #12	@ D.35970, D.35970,
	ble	.L483	@,
	ldr	ip, [sp]	@ RawPacket.PhyAddr, RawPacket.PhyAddr
	ldr	r9, [sp, #112]	@ tmp250, DownMsgPhyAddr
	add	lr, lr, ip	@ D.35967, D.35966, RawPacket.PhyAddr
	str	ip, [r5, r10, asl #2]	@ RawPacket.PhyAddr, *_43
	add	r10, r10, #3	@ j, j,
	add	r3, r3, r9	@ D.35970, D.35970, tmp250
	sub	lr, lr, #1	@ D.35967, D.35967,
	mov	r9, #0	@ tmp251,
	str	r3, [r2, #8]	@ D.35970, *_56
	str	r9, [sp, #8]	@ tmp251, RawPacket.Length
	str	lr, [r2, #4]	@ D.35967, *_49
.L483:
	str	r4, [r6, #4]	@ RawShowTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	bl	ShowNextRawPacket	@
	cmp	r0, #0	@,
	beq	.L503	@,
.L484:
	ldr	r3, [sp, #116]	@ tmp252, LowdlyFlag
	cmp	r3, #0	@ tmp252,
	bne	.L486	@,
	ldr	r3, [sp, #8]	@ D.35966, RawPacket.Length
	cmp	r3, #0	@ D.35966,
	bne	.L490	@,
.L486:
	cmp	fp, #0	@ PushRawNum,
	beq	.L489	@,
	mov	r3, #0	@ tmp235,
	sub	r10, r10, #-1073741823	@ tmp234, j,
	mov	r0, r3	@ D.35966, tmp235
	mov	r2, #1	@ tmp236,
	str	r3, [r5, r10, asl #2]	@ tmp235, *_111
	str	fp, [r6]	@ PushRawNum, pSmPushRaw_33(D)->PushRawNum
	str	r2, [r6, #8]	@ tmp236, pSmPushRaw_33(D)->PushRawOver
.L501:
	add	sp, sp, #76	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L482:
	ldr	r3, [sp, #116]	@ tmp254, LowdlyFlag
	cmp	r3, #0	@ tmp254,
	bne	.L489	@,
	cmp	r4, #0	@ RawShowTotalLen,
	beq	.L489	@,
	ldr	r10, [sp, #116]	@ j, LowdlyFlag
	mov	r3, r4	@ D.35966, RawShowTotalLen
	mov	fp, r10	@ PushRawNum, j
.L490:
	ldr	r2, [r6, #4]	@ D.35967, pSmPushRaw_33(D)->PushRawTotalLen
	sub	r1, r8, #16	@ D.35967, SegStreamSize,
	cmp	r2, r1	@ D.35967, D.35967
	bge	.L486	@,
	cmp	r8, r4	@ SegStreamSize, RawShowTotalLen
	cmplt	fp, #1024	@, PushRawNum,
	bge	.L486	@,
	rsb	r2, r2, r8	@ D.35967, D.35967, SegStreamSize
	cmp	r3, r2	@ D.35966, D.35967
	blt	.L486	@,
	mov	r3, r10, asl #2	@ D.35970, j,
	ldr	ip, [sp]	@ D.35967, RawPacket.PhyAddr
	add	r0, r5, r3	@ tmp226, pDownMsgVirAddr, D.35970
	ldr	lr, [sp, #112]	@ tmp253, DownMsgPhyAddr
	add	r1, r2, ip	@ D.35967, D.35967, D.35967
	add	r3, r3, #12	@ D.35970, D.35970,
	str	ip, [r5, r10, asl #2]	@ D.35967, *_84
	add	r3, r3, lr	@ D.35970, D.35970, tmp253
	sub	r1, r1, #1	@ D.35967, D.35967,
	stmib	r0, {r1, r3}	@ tmp226,,
	ldr	r3, [r6, #4]	@ pSmPushRaw_33(D)->PushRawTotalLen, pSmPushRaw_33(D)->PushRawTotalLen
	add	fp, fp, #1	@ PushRawNum, PushRawNum,
	add	r10, r10, #3	@ j, j,
	add	r2, r3, r2	@ D.35967, pSmPushRaw_33(D)->PushRawTotalLen, D.35967
	str	r2, [r6, #4]	@ D.35967, pSmPushRaw_33(D)->PushRawTotalLen
	b	.L486	@
.L492:
	mov	fp, #0	@ D.35972,
	mov	r9, fp	@ FirstRawOffset, D.35972
	b	.L481	@
.L491:
	mov	fp, r7	@ D.35972, pRawStreamArray
	mov	r9, r7	@ FirstRawOffset, pRawStreamArray
	b	.L481	@
.L489:
	mvn	r0, #5	@ D.35966,
	b	.L501	@
	.fnend
	.size	WriteScdMsg, .-WriteScdMsg
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
	and	r3, r0, #1	@ D.35978,,
	movw	r0, #51268	@,
	str	r3, [r4]	@ D.35978, pSmStateReg_5(D)->Scdover
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	and	r3, r0, #1	@ D.35978,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #4]	@ D.35978, pSmStateReg_5(D)->ScdInt
	bl	MEM_ReadPhyWord	@
	mov	r3, r0, lsr #22	@ D.35979,,
	mov	r0, r5	@, tmp127
	str	r3, [r4, #8]	@ D.35979, pSmStateReg_5(D)->ShortScdNum
	bl	MEM_ReadPhyWord	@
	ubfx	r3, r0, #0, #22	@ D.35978,,,
	movw	r0, #51280	@,
	str	r3, [r4, #12]	@ D.35978, pSmStateReg_5(D)->ScdNum
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #16]	@, pSmStateReg_5(D)->ScdRollAddr
	movw	r0, #51284	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	str	r0, [r4, #20]	@, pSmStateReg_5(D)->SrcEaten
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ReadScdStateReg, .-ReadScdStateReg
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
	beq	.L513	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r0, #12]	@ pSegFilter_6(D)->ModeFlag, pSegFilter_6(D)->ModeFlag
	mul	r3, r3, r2	@ D.35989, UpMsgStepNum, SegNum
	cmp	ip, #1	@ pSegFilter_6(D)->ModeFlag,
	ldrb	ip, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	bfceq	ip, #0, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,,
	orrne	ip, ip, #1	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag,
	strb	ip, [r1, #72]	@ tmp151, ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShStreamFlag
	mov	ip, #0	@ D.35986,
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	ldrb	lr, [r1, #72]	@ zero_extendqisi2	@, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3, asl #2]	@ *_15, *_15
	mov	r3, r3, asl #2	@ D.35989, D.35989,
	add	r3, r3, #8	@ D.35993, D.35989,
	mov	r2, r2, lsr #31	@ D.35990, *_15,
	bfi	lr, r2, #1, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, D.35990,,
	strb	lr, [r1, #72]	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r0, #4]	@ pSegFilter_6(D)->pScdUpMsg, pSegFilter_6(D)->pScdUpMsg
	uxtb	lr, lr	@ tmp162, ParseUpMsgInfo_4(D)->stMp4UpMsg.SliceFlag
	ldr	r2, [r2, r3]	@ *_25, *_25
	mov	r2, r2, asr #16	@ D.35987, *_25,
	bfi	lr, r2, #2, #1	@ ParseUpMsgInfo_4(D)->stMp4UpMsg.IsShortHeader, D.35987,,
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
	mov	r0, ip	@, D.35986
	and	r3, r3, #7	@ tmp174, *_39,
	bfi	r2, r3, #7, #4	@ tmp175, tmp174,,
	strh	r2, [r1, #72]	@ movhi	@ tmp175,
	ldr	pc, [sp], #4	@
.L513:
	mvn	ip, #0	@ D.35986,
	mov	r0, ip	@, D.35986
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
	mov	r5, #0	@ tmp274,
	ldr	r8, [r0, #32]	@ SegNum, pSegStreamFilter_13(D)->SegNum
	.pad #12
	sub	sp, sp, #12	@,,
	str	r5, [r2]	@ tmp274, *pExtraSrcBack_15(D)
	ldr	r2, [r0, #8]	@ pSegStreamFilter_13(D)->ProtocolType, pSegStreamFilter_13(D)->ProtocolType
	cmp	r2, #2	@ pSegStreamFilter_13(D)->ProtocolType,
	beq	.L517	@,
	cmp	r8, r5	@ SegNum,
	ble	.L521	@,
	ldr	r2, [sp, #48]	@ tmp374, UpMsgStepNum
	mov	lr, r5	@ ivtmp.377, tmp274
	mov	r4, r5	@ i, ivtmp.377
	mov	r5, #4	@ ivtmp.379,
	mov	r7, r2, asl #2	@ D.36013, tmp374,
.L520:
	ldr	r2, [r0, #4]	@ pSegStreamFilter_13(D)->pScdUpMsg, pSegStreamFilter_13(D)->pScdUpMsg
	add	r4, r4, #1	@ i, i,
	ldr	ip, [r0, #20]	@ pSegStreamFilter_13(D)->SegBufPhyAddr, pSegStreamFilter_13(D)->SegBufPhyAddr
	cmp	r4, r8	@ i, SegNum
	ldr	r2, [r2, lr]	@ *_180, *_180
	and	ip, ip, #-2147483648	@ D.36013, pSegStreamFilter_13(D)->SegBufPhyAddr,
	bic	r2, r2, #-2147483648	@ D.36013, *_180,
	orr	r2, r2, ip	@ D.36013, D.36013, D.36013
	str	r2, [r1, lr]	@ D.36013, MEM[base: pTransFormSeg_89(D), index: ivtmp.377_232, offset: 0B]
	ldr	r2, [r0, #4]	@ pSegStreamFilter_13(D)->pScdUpMsg, pSegStreamFilter_13(D)->pScdUpMsg
	add	lr, lr, r7	@ ivtmp.377, ivtmp.377, D.36013
	ldr	r2, [r2, r5]	@ D.36016, *_194
	str	r2, [r1, r5]	@ D.36016, MEM[base: pTransFormSeg_89(D), index: ivtmp.379_211, offset: 0B]
	add	r5, r5, r7	@ ivtmp.379, ivtmp.379, D.36013
	bne	.L520	@,
.L521:
	mov	r2, #0	@ tmp276,
	str	r2, [r0, #12]	@ tmp276, pSegStreamFilter_13(D)->ModeFlag
	str	r2, [r0, #16]	@ tmp276, pSegStreamFilter_13(D)->LastH263Num
	mov	r0, r2	@ D.36014, tmp276
	str	r8, [r3]	@ SegNum, *pSegNum_173(D)
.L519:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L517:
	mov	r4, r0	@ pSegStreamFilter, pSegStreamFilter
	ldr	r0, [r0, #20]	@, pSegStreamFilter_13(D)->SegBufPhyAddr
	str	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r6, r1	@ pTransFormSeg, pTransFormSeg
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L523	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_20 + 1B]
	ldrb	r1, [r0]	@ zero_extendqisi2	@ D.36016, *pTmpVirAddr_20
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_20 + 3B]
	ldrb	r7, [r0, #2]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_20 + 2B]
	mov	r2, r2, asl #16	@ D.36016, D.36016,
	orr	r2, r2, r1, asl #24	@ D.36016, D.36016, D.36016,
	ldr	r0, [r4, #28]	@, pSegStreamFilter_13(D)->SegBufRollAddr
	orr	r3, r2, r3	@ D.36016, D.36016, D.36016
	orr	r7, r3, r7, asl #8	@ D.36016, D.36016, D.36016,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L523	@,
	cmp	r8, #0	@ SegNum,
	mov	r2, r7, lsr #24	@ D.36013, D.36016,
	mov	r3, r7, lsr #16	@ D.36013, D.36016,
	strb	r7, [r0, #3]	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_38 + 3B]
	strb	r2, [r0]	@ D.36013, *pTmpVirAddr_38
	mov	r7, r7, lsr #8	@ D.36013, D.36016,
	strb	r3, [r0, #1]	@ D.36013, MEM[(HI_U8 *)pTmpVirAddr_38 + 1B]
	strb	r7, [r0, #2]	@ D.36013, MEM[(HI_U8 *)pTmpVirAddr_38 + 2B]
	ble	.L533	@,
	ldr	r2, [r4, #4]	@ pSegStreamFilter_13(D)->pScdUpMsg, pSegStreamFilter_13(D)->pScdUpMsg
	ldr	r3, [r4, #20]	@ pSegStreamFilter_13(D)->SegBufPhyAddr, pSegStreamFilter_13(D)->SegBufPhyAddr
	ldr	r7, [r2]	@ *_207, *_207
	and	r3, r3, #-2147483648	@ D.36013, pSegStreamFilter_13(D)->SegBufPhyAddr,
	bic	r7, r7, #-2147483648	@ D.36013, *_207,
	orrs	r7, r7, r3	@ TmpPhyAddr, D.36013, D.36013
	beq	.L523	@,
	ldr	r3, [sp, #48]	@ tmp375, UpMsgStepNum
	add	fp, r6, #4	@ ivtmp.389, ivtmp.387,
	mov	r10, #4	@ ivtmp.388,
	mov	r9, #1	@ ivtmp.384,
	mov	r5, r3, asl #2	@ D.36013, tmp375,
	b	.L525	@
.L551:
	mov	r3, #1	@ tmp333,
	str	r3, [r4, #12]	@ tmp333, pSegStreamFilter_13(D)->ModeFlag
	mov	r3, #0	@ tmp334,
	str	r3, [r4, #16]	@ tmp334, pSegStreamFilter_13(D)->LastH263Num
.L528:
	str	r7, [fp, #-4]	@ TmpPhyAddr,
	cmp	r9, r8	@ ivtmp.384, SegNum
	ldr	r3, [r4, #4]	@ pSegStreamFilter_13(D)->pScdUpMsg, pSegStreamFilter_13(D)->pScdUpMsg
	mov	lr, r9	@ j, ivtmp.384
	ldr	r3, [r3, r10]	@ D.36016,* ivtmp.388
	str	r3, [r6, #4]	@ D.36016,
	beq	.L524	@,
	ldr	r3, [r4, #4]	@ pSegStreamFilter_13(D)->pScdUpMsg, pSegStreamFilter_13(D)->pScdUpMsg
	add	r9, r9, #1	@ ivtmp.384, ivtmp.384,
	ldr	r7, [r4, #20]	@ pSegStreamFilter_13(D)->SegBufPhyAddr, pSegStreamFilter_13(D)->SegBufPhyAddr
	add	r6, r6, r5	@ ivtmp.387, ivtmp.387, D.36013
	add	r3, r3, r5	@ tmp309, pSegStreamFilter_13(D)->pScdUpMsg, D.36013
	add	fp, fp, r5	@ ivtmp.389, ivtmp.389, D.36013
	add	r3, r3, r10	@ tmp310, tmp309, ivtmp.388
	and	r2, r7, #-2147483648	@ D.36013, pSegStreamFilter_13(D)->SegBufPhyAddr,
	add	r10, r10, r5	@ ivtmp.388, ivtmp.388, D.36013
	ldr	r7, [r3, #-4]	@ *_55, *_55
	bic	r7, r7, #-2147483648	@ D.36013, *_55,
	orrs	r7, r7, r2	@ TmpPhyAddr, D.36013, D.36013
	beq	.L523	@,
.L525:
	mov	r0, r7	@, TmpPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L523	@,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_65 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36016, *pTmpVirAddr_65
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_65 + 3B]
	mov	r1, r1, asl #16	@ D.36016, D.36016,
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ D.36016, MEM[(HI_U8 *)pTmpVirAddr_65 + 2B]
	orr	r3, r1, r3, asl #24	@ D.36016, D.36016, D.36016,
	orr	r3, r3, r2	@ D.36016, D.36016, D.36016
	movw	r2, #438	@ tmp376,
	orr	r3, r3, r0, asl #8	@ Data32, D.36016, D.36016,
	cmp	r3, r2	@ Data32, tmp376
	cmpne	r3, #288	@, Data32,
	moveq	r2, #1	@ tmp332,
	movne	r2, #0	@ tmp332,
	beq	.L551	@,
	bic	r3, r3, #1020	@ D.36013, Data32,
	bic	r3, r3, #3	@ D.36013, D.36013,
	cmp	r3, #32768	@ D.36013,
	bne	.L528	@,
	ldr	r3, [r4, #12]	@ pSegStreamFilter_13(D)->ModeFlag, pSegStreamFilter_13(D)->ModeFlag
	cmp	r3, #1	@ pSegStreamFilter_13(D)->ModeFlag,
	beq	.L552	@,
.L531:
	mov	r3, #2	@ tmp345,
	str	r3, [r4, #12]	@ tmp345, pSegStreamFilter_13(D)->ModeFlag
	b	.L528	@
.L523:
	mvn	r0, #6	@ D.36014,
	b	.L519	@
.L552:
	ldr	r3, [r4, #16]	@ pSegStreamFilter_13(D)->LastH263Num, pSegStreamFilter_13(D)->LastH263Num
	add	r3, r3, #1	@ D.36016, pSegStreamFilter_13(D)->LastH263Num,
	str	r3, [r4, #16]	@ D.36016, pSegStreamFilter_13(D)->LastH263Num
	cmp	r3, #12	@ D.36016,
	ble	.L528	@,
	ldr	r3, .L553	@ tmp377,
	ldr	r3, [r3]	@ D.36020, g_event_report
	cmp	r3, #0	@ D.36020,
	beq	.L531	@,
	ldr	r0, .L553+4	@ tmp378,
	mov	r1, #102	@,
	ldr	r0, [r0, #140]	@, s_SmIIS.ThisInstID
	blx	r3	@ D.36020
	b	.L531	@
.L533:
	mov	lr, r5	@ j, tmp274
.L524:
	ldr	r3, [sp, #4]	@ pSegNum, %sfp
	mov	r0, #0	@ D.36014,
	str	lr, [r3]	@ j, *pSegNum_173(D)
	b	.L519	@
.L554:
	.align	2
.L553:
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
	beq	.L557	@,
	ldr	r3, [r0, #8]	@ pSegPacket_2(D)->PhyAddr, pSegPacket_2(D)->PhyAddr
	cmp	r3, #0	@ pSegPacket_2(D)->PhyAddr,
	beq	.L559	@,
	ldr	r3, [r0]	@ pSegPacket_2(D)->VirAddr, pSegPacket_2(D)->VirAddr
	cmp	r3, #0	@ pSegPacket_2(D)->VirAddr,
	beq	.L559	@,
	ldr	r3, [r0, #12]	@ pSegPacket_2(D)->LenInByte, pSegPacket_2(D)->LenInByte
	cmp	r3, r1	@ pSegPacket_2(D)->LenInByte, SegFreeBufLen
	mvnhi	r0, #6	@ D.36024,
	movls	r0, #0	@ D.36024,
	bx	lr	@
.L559:
	mvn	r0, #6	@ D.36024,
	bx	lr	@
.L557:
	mvn	r0, #0	@ D.36024,
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
	ldrd	r0, [r4, #24]	@ D.36030, pSegPacket,
	ldrd	r2, [r5]	@ *pLastPts_25(D), *pLastPts_25(D)
	cmp	r3, r1	@ *pLastPts_25(D), D.36030
	cmpeq	r2, r0	@ *pLastPts_25(D), D.36030
	beq	.L565	@,
	strd	r0, [r5]	@ D.36030, *pLastPts_25(D)
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L565:
	strd	r6, [r4, #24]	@ tmp126, pSegPacket,
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
	.fnend
	.size	GetSegPts, .-GetSegPts
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
	mvneq	r0, #6	@ D.36041,
	beq	.L577	@,
	add	r1, r9, #90112	@ tmp166, pStreamSegArray,
	movw	r6, #36409	@ tmp175,
	movt	r6, 14563	@ tmp175,
	subs	ip, r5, #1	@ i, Seg_num,
	ldr	r3, [r1, #2060]	@ pStreamSegArray_12(D)->Tail, pStreamSegArray_12(D)->Tail
	ldr	r8, [r1, #2056]	@ pStreamSegArray_12(D)->Head, pStreamSegArray_12(D)->Head
	add	r3, r3, #1152	@ D.36043, pStreamSegArray_12(D)->Tail,
	rsb	r3, r8, r3	@ D.36043, pStreamSegArray_12(D)->Head, D.36043
	smull	r6, r7, r3, r6	@ tmp174, D.36043, tmp175
	mov	r2, r3, asr #31	@ tmp177, D.36043,
	rsb	r2, r2, r7, asr #8	@ tmp173, tmp177,,
	mov	r8, r2, asl #10	@ tmp180, tmp173,
	add	r8, r8, r2, lsl #7	@ tmp181, tmp180, tmp173,
	rsb	r8, r8, r3	@ D.36043, tmp181, D.36043
	rsb	r8, r8, #1152	@ SegNum, D.36043,
	bmi	.L575	@,
	add	r3, r10, #176128	@ tmp188, pScdInstance,
	ldr	r7, [r10, #20]	@ D.36041, pScdInstance_16(D)->SegFilter.ModeFlag
	mov	r0, #0	@ tmp191,
	ldr	r6, [r9]	@ D.36046, pStreamSegArray_12(D)->pSegBufVirAddr
	ldr	r2, [r3, #3996]	@ pScdInstance_16(D)->UpMsgStepNum, pScdInstance_16(D)->UpMsgStepNum
	sub	r5, r7, #1	@ D.36040, D.36041,
	clz	r5, r5	@ D.36040, D.36040
	ldr	lr, [r1, #2072]	@ D.36044, pStreamSegArray_12(D)->SegBufPhyAddr
	movt	r0, 46593	@ tmp191,
	mov	r9, #0	@ count,
	mov	r2, r2, asl #2	@ D.36044, pScdInstance_16(D)->UpMsgStepNum,
	mov	r5, r5, lsr #5	@ D.36040, D.36040,
	mla	r1, r2, ip, r4	@ ivtmp.400, D.36044, i, pUsedSeg
	b	.L572	@
.L582:
	cmp	r7, #2	@ D.36041,
	beq	.L581	@,
.L571:
	cmn	r4, #1	@ i,
	beq	.L579	@,
	mov	ip, r4	@ i, i
.L572:
	ldr	r3, [r1]	@ *_22, *_22
	sub	r4, ip, #1	@ i, i,
	rsb	r1, r2, r1	@ ivtmp.400, D.36044, ivtmp.400
	rsb	r3, lr, r3	@ D.36044, D.36044, *_22
	ldr	r3, [r6, r3]	@ start_code, MEM[(HI_U32 *)VirAddr_29]
	cmp	r3, r0	@ start_code, tmp191
	movne	r10, #0	@, tmp160
	andeq	r10, r5, #1	@,, tmp160, D.36040
	cmp	r10, #0	@ tmp160,
	beq	.L582	@,
.L569:
	add	r9, r9, #1	@ count, count,
	cmp	r9, #0	@ count,
	ble	.L571	@,
	cmp	r8, ip	@ SegNum, i
	bcc	.L571	@,
.L579:
	mov	r0, ip	@ D.36041, i
.L577:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L581:
	ubfx	r3, r3, #16, #8	@ D.36044, start_code,,
	sub	r3, r3, #128	@ D.36044, D.36044,
	cmp	r3, #3	@ D.36044,
	bhi	.L571	@,
	b	.L569	@
.L575:
	mov	r0, r5	@ D.36041, Seg_num
	b	.L577	@
	.fnend
	.size	GetNextVop, .-GetNextVop
	.global	__aeabi_uidiv
	.align	2
	.global	ProcessScdReturn
	.type	ProcessScdReturn, %function
ProcessScdReturn:
	.fnstart
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrsb	r3, [r0, #5]	@ pScdInstance_24(D)->IsWaitSCD, pScdInstance_24(D)->IsWaitSCD
	cmp	r3, #0	@ pScdInstance_24(D)->IsWaitSCD,
	beq	.L677	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r0, #163840	@ tmp595, pScdInstance,
	.pad #268
	sub	sp, sp, #268	@,,
	str	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r3, [r3, #2304]	@ pScdInstance_24(D)->SmPushRaw.PushRawOver, pScdInstance_24(D)->SmPushRaw.PushRawOver
	cmp	r3, #3	@ pScdInstance_24(D)->SmPushRaw.PushRawOver,
	beq	.L678	@,
	mov	fp, r0	@ pScdInstance, pScdInstance
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	add	r4, fp, #176128	@ tmp597, pScdInstance,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #8]	@ tmp595, %sfp
	mov	r3, #2	@ tmp305,
	add	r0, sp, #104	@ tmp616,,
	mov	r1, #80	@,
	str	r3, [r2, #2304]	@ tmp305, MEM[(struct SM_PUSHRAW_S *)pScdInstance_24(D) + 166136B].PushRawOver
	bl	__memzero	@
	add	r0, sp, #184	@ tmp618,,
	mov	r1, #80	@,
	bl	__memzero	@
	add	r0, sp, #80	@ tmp619,,
	mov	r1, #24	@,
	bl	__memzero	@
	ldr	r3, [r4, #3996]	@ UpMsgStepNum, pScdInstance_24(D)->UpMsgStepNum
	add	r0, sp, #80	@ tmp620,,
	str	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	mov	r3, #0	@ tmp309,
	str	r3, [sp, #68]	@ tmp309, SegFreeBufLen
	str	r3, [sp, #72]	@ tmp309, TmpAddr
	bl	ReadScdStateReg	@
	ldr	r3, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r3, #0	@ SmStateReg.ScdRollAddr,
	beq	.L587	@,
	add	r3, fp, #73728	@ tmp594, pScdInstance,
	ldr	r2, [sp, #92]	@ D.36061, SmStateReg.ScdNum
	str	r3, [sp, #24]	@ tmp594, %sfp
	adds	r3, r3, #192	@ pStreamSegArray, tmp594,
	str	r3, [sp, #20]	@ pStreamSegArray, %sfp
	str	r2, [sp, #52]	@ D.36061, %sfp
	str	r2, [sp, #64]	@ D.36061, ScdSegNum
	beq	.L679	@,
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r2, [r3, #2264]	@ SegBufAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	ldr	r5, [r3, #2268]	@ SegBufLength, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufSize
	str	r2, [sp, #12]	@ SegBufAddr, %sfp
.L629:
	movw	r0, #51232	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #8]	@ tmp595, %sfp
	ldr	r6, [sp, #64]	@ ScdSegNum, ScdSegNum
	ldr	r1, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	cmp	r6, #1152	@ ScdSegNum,
	movge	r6, #1152	@ D.36066,
	and	r0, r0, #15	@ D.36061,,
	str	r0, [fp, #16]	@ D.36061, pScdInstance_24(D)->SegFilter.ProtocolType
	ldr	r0, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r3, [r2, #2328]	@ pScdInstance_24(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_24(D)->BufAddrCfg.pUpMsgVirAddr
	str	r0, [fp, #28]	@ SegBufAddr, pScdInstance_24(D)->SegFilter.SegBufPhyAddr
	str	r3, [fp, #12]	@ pScdInstance_24(D)->BufAddrCfg.pUpMsgVirAddr, pScdInstance_24(D)->SegFilter.pScdUpMsg
	ldr	r3, [r2, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	ldr	r2, [sp, #24]	@ tmp594, %sfp
	rsb	r3, r3, r0	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, SegBufAddr
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr
	str	r1, [fp, #36]	@ SmStateReg.ScdRollAddr, pScdInstance_24(D)->SegFilter.SegBufRollAddr
	add	r3, r2, r3	@ D.36063, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, D.36061
	str	r5, [fp, #32]	@ SegBufLength, pScdInstance_24(D)->SegFilter.SegBufSize
	str	r3, [fp, #8]	@ D.36063, pScdInstance_24(D)->SegFilter.pSegBufVirAddr
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r6, r0	@ D.36066,
	bhi	.L680	@,
	ldr	r0, [sp, #64]	@ ScdSegNum, ScdSegNum
	cmp	r0, #1152	@ ScdSegNum,
	movge	r0, #1152	@ D.36059,
.L590:
	add	r3, fp, #165888	@ D.36068, pScdInstance,
	ldr	r1, [sp, #28]	@ UpMsgStepNum, %sfp
	str	r0, [fp, #40]	@ D.36059, pScdInstance_24(D)->SegFilter.SegNum
	mov	r2, r3	@ D.36068, D.36068
	add	r3, fp, #8	@ D.36067, pScdInstance,
	add	r2, r2, #368	@ D.36068, D.36068,
	str	r3, [sp, #40]	@ D.36067, %sfp
	str	r2, [sp, #16]	@ D.36068, %sfp
	mov	r0, r3	@, D.36067
	str	r1, [sp]	@ UpMsgStepNum,
	add	r3, sp, #64	@,,
	mov	r1, r2	@, D.36068
	add	r2, sp, #76	@,,
	bl	ScdReturnSegFilter	@
	subs	r6, r0, #0	@ Ret,
	bne	.L587	@,
	ldr	r5, [sp, #64]	@ D.36061, ScdSegNum
	add	r3, fp, #168	@ pRawStreamArray, pScdInstance,
	str	r3, [sp, #32]	@ pRawStreamArray, %sfp
	cmp	r5, #1	@ D.36061,
	ble	.L681	@,
	movw	r0, #51212	@,
	strb	r6, [fp]	@ Ret, pScdInstance_24(D)->SegFullFlag
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	cmp	r5, r0	@ D.36061,
	bcs	.L596	@,
	ldr	r3, [sp, #64]	@ ScdSegNum, ScdSegNum
	sub	r3, r3, #1	@ D.36059, ScdSegNum,
	str	r3, [sp, #44]	@ D.36059, %sfp
	str	r3, [sp, #64]	@ D.36059, ScdSegNum
.L597:
	ldr	r3, [fp, #16]	@ pScdInstance_24(D)->SegFilter.ProtocolType, pScdInstance_24(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_24(D)->SegFilter.ProtocolType,
	beq	.L682	@,
.L599:
	movw	r3, #36409	@ tmp599,
	add	r2, fp, #179200	@ D.36070, pScdInstance,
	movt	r3, 14563	@ tmp599,
	str	r3, [sp, #60]	@ tmp599, %sfp
	add	r3, r2, #888	@ D.36070, D.36070,
	str	r3, [sp, #36]	@ D.36070, %sfp
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	mov	r8, #0	@ ivtmp.411,
	mov	r7, r8	@ i, ivtmp.411
	ldr	r6, [sp, #16]	@ ivtmp.409, %sfp
	ldr	r1, [sp, #44]	@ D.36059, %sfp
	ldr	r3, [r3, #2252]	@ LastSegTail, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
	str	r3, [sp, #56]	@ LastSegTail, %sfp
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	mov	r9, r3, asl #2	@ D.36066, UpMsgStepNum,
	b	.L600	@
.L685:
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	bne	.L683	@,
	ldr	r3, [fp, #16]	@ pScdInstance_24(D)->SegFilter.ProtocolType, pScdInstance_24(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_24(D)->SegFilter.ProtocolType,
	beq	.L684	@,
.L609:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	add	r2, sp, #68	@,,
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	str	r4, [sp, #116]	@ SegPacketLen, SegPacket.LenInByte
	rsb	r5, r3, r5	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	ldr	r3, [sp, #24]	@ tmp594, %sfp
	ldr	r3, [r3, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr
	add	r5, r3, r5	@ D.36063, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, D.36061
	mov	r3, #1	@ tmp419,
	str	r5, [sp, #104]	@ D.36063, SegPacket.VirAddr
	strb	r3, [sp, #109]	@ tmp419, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #112]	@ SegPacket.PhyAddr, SegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.36061, SegFreeBufLen
	cmp	r3, #0	@ SegPacket.PhyAddr,
	beq	.L611	@,
	ldr	r3, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r3, #0	@ SegPacket.VirAddr,
	beq	.L611	@,
	ldr	r3, [sp, #116]	@ SegPacket.LenInByte, SegPacket.LenInByte
	cmp	r3, r2	@ SegPacket.LenInByte, D.36061
	bhi	.L611	@,
	ldr	r1, [r6, #4]	@ MEM[base: _352, offset: 4B], MEM[base: _352, offset: 4B]
	add	r3, sp, #104	@ tmp702,,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _352, offset: 4B],
	bl	GetSegPts	@
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	add	r1, sp, #104	@ tmp704,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_24(D)->InstID
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	bne	.L670	@,
.L669:
	ldr	r1, [sp, #64]	@ D.36059, ScdSegNum
.L614:
	add	r6, r6, r9	@ ivtmp.409, ivtmp.409, D.36066
	add	r8, r8, r9	@ ivtmp.411, ivtmp.411, D.36066
	mov	r7, r10	@ i, i
.L600:
	cmp	r7, r1	@ i, D.36059
	bge	.L670	@,
	ldr	r3, [sp, #16]	@ D.36068, %sfp
	add	r10, r7, #1	@ i, i,
	ldr	r5, [r6]	@ CurrSegPhyAddr, MEM[base: _352, offset: 0B]
	add	r2, r3, r9	@ D.36068, D.36068, D.36066
	ldr	r3, [r6, #4]	@ MEM[base: _352, offset: 4B], MEM[base: _352, offset: 4B]
	ldr	ip, [r2, r8]	@ NextSegPhyAddr, MEM[base: _353, index: ivtmp.411_119, offset: 0B]
	mov	r3, r3, lsr #31	@ D.36066, MEM[base: _352, offset: 4B],
	strb	r3, [sp, #111]	@ D.36066, SegPacket.DspCheckPicOverFlag
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	cmp	ip, r3	@ NextSegPhyAddr, SegBufAddr
	rsbne	r4, r5, ip	@ SegPacketLen, CurrSegPhyAddr, NextSegPhyAddr
	ldreq	r4, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	rsbeq	r4, r5, r4	@ SegPacketLen, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	cmp	r4, #3	@ SegPacketLen,
	bgt	.L685	@,
	sub	r3, r4, #1	@ D.36071, SegPacketLen,
	cmp	r3, #2	@ D.36071,
	bhi	.L613	@,
	ldr	r3, [fp, #16]	@ pScdInstance_24(D)->SegFilter.ProtocolType, pScdInstance_24(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_24(D)->SegFilter.ProtocolType,
	bne	.L614	@,
	mov	r0, ip	@, NextSegPhyAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pTmpVirAddr
	beq	.L587	@,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ D.36061, MEM[(HI_U8 *)pTmpVirAddr_229 + 1B]
	ldrb	r3, [r0]	@ zero_extendqisi2	@ D.36061, *pTmpVirAddr_229
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ D.36061, MEM[(HI_U8 *)pTmpVirAddr_229 + 2B]
	mov	r2, r2, asl #16	@ D.36061, D.36061,
	orr	r3, r2, r3, asl #24	@ D.36061, D.36061, D.36061,
	orr	r3, r3, r1, asl #8	@ D.36066, D.36061, D.36061,
	cmp	r3, #256	@ D.36066,
	beq	.L669	@,
	mov	r2, r7	@, i
	ldr	r3, [sp, #28]	@, %sfp
	add	r1, sp, #184	@ tmp662,,
	ldr	r0, [sp, #40]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r2, [sp, #24]	@ tmp594, %sfp
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r3, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	ldr	ip, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr
	add	r2, sp, #68	@,,
	rsb	r3, r3, r5	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	str	r5, [sp, #192]	@ CurrSegPhyAddr, LastSegPacket.PhyAddr
	add	r3, ip, r3	@ D.36063, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, D.36061
	str	r4, [sp, #196]	@ SegPacketLen, LastSegPacket.LenInByte
	mov	ip, #1	@ tmp454,
	str	r3, [sp, #184]	@ D.36063, LastSegPacket.VirAddr
	strb	ip, [sp, #189]	@ tmp454, LastSegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	r1, [r6, #4]	@ MEM[base: _352, offset: 4B], MEM[base: _352, offset: 4B]
	add	r3, sp, #184	@ tmp665,,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _352, offset: 4B],
	bl	GetSegPts	@
	b	.L669	@
.L681:
	ldr	r3, [r4, #3972]	@ pScdInstance_24(D)->PrevCfgSegSize, pScdInstance_24(D)->PrevCfgSegSize
	ldr	r2, [r4, #3968]	@ pScdInstance_24(D)->PrevCfgRawSize, pScdInstance_24(D)->PrevCfgRawSize
	cmp	r2, r3	@ pScdInstance_24(D)->PrevCfgRawSize, pScdInstance_24(D)->PrevCfgSegSize
	strleb	r6, [fp]	@ Ret, pScdInstance_24(D)->SegFullFlag
	movgt	r3, #1	@ tmp359,
	strgtb	r3, [fp]	@ tmp359, pScdInstance_24(D)->SegFullFlag
	cmp	r5, #0	@ D.36061,
	beq	.L686	@,
	cmp	r5, #1	@ D.36061,
	movne	r1, #0	@ SrcEaten,
	beq	.L687	@,
.L595:
	ldr	r0, [sp, #32]	@, %sfp
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	beq	.L628	@,
.L587:
	mvn	r0, #6	@ D.36059,
.L661:
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L611:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	mov	r4, #1	@ ScdErrFlag,
	ldr	r0, [r3, #2252]	@ D.36059, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
.L606:
	ldr	r3, [sp, #56]	@ LastSegTail, %sfp
	cmp	r3, r0	@ LastSegTail, D.36059
	movne	r3, #1	@ tmp553,
	moveq	r3, #0	@ tmp555,
	cmp	r7, #0	@ i,
	strb	r3, [fp, #3]	@ tmp555, pScdInstance_24(D)->InsertNewSegFlag
	ble	.L625	@,
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	ldr	r0, [sp, #32]	@, %sfp
	mul	r7, r3, r7	@ D.36066, UpMsgStepNum, i
	ldr	r3, [sp, #16]	@ D.36068, %sfp
	add	r7, r7, #1	@ tmp558, D.36066,
	ldr	r1, [r3, r7, asl #2]	@ *_268, *_268
	bic	r1, r1, #-2147483648	@, *_268,
	bl	DeleteRawLen	@
	cmp	r0, #0	@,
	bne	.L587	@,
.L626:
	cmp	r4, #1	@ ScdErrFlag,
	beq	.L587	@,
.L628:
	mov	r0, #0	@ D.36059,
	add	sp, sp, #268	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L613:
	cmp	r4, #0	@ SegPacketLen,
	bge	.L614	@,
	ldr	r3, [fp, #16]	@ pScdInstance_24(D)->SegFilter.ProtocolType, pScdInstance_24(D)->SegFilter.ProtocolType
	cmp	r3, #2	@ pScdInstance_24(D)->SegFilter.ProtocolType,
	beq	.L688	@,
.L616:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	add	r2, sp, #68	@,,
	ldr	r0, [sp, #24]	@ tmp594, %sfp
	str	r5, [sp, #112]	@ CurrSegPhyAddr, SegPacket.PhyAddr
	ldr	r1, [r3, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	ldr	r3, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r0, [r0, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, ip	@ D.36066, SegBufAddr, NextSegPhyAddr
	str	r3, [sp, #48]	@ D.36066, %sfp
	rsb	ip, r1, r5	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, CurrSegPhyAddr
	add	r1, sp, #72	@,,
	mov	lr, r3	@ D.36066, D.36066
	ldr	r3, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	add	ip, r0, ip	@ D.36063, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, D.36061
	ldr	r0, [sp, #20]	@, %sfp
	rsb	r3, r5, r3	@ D.36061, CurrSegPhyAddr, SmStateReg.ScdRollAddr
	str	ip, [sp, #104]	@ D.36063, SegPacket.VirAddr
	add	r3, r3, lr	@ D.36066, D.36061, D.36066
	mov	r5, #0	@ tmp475,
	str	r3, [sp, #116]	@ D.36066, SegPacket.LenInByte
	strb	r5, [sp, #109]	@ tmp475, SegPacket.IsLastSeg
	bl	GetFreeSegBuf	@
	ldr	ip, [sp, #116]	@ D.36066, SegPacket.LenInByte
	cmp	ip, #3	@ D.36066,
	bls	.L669	@,
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r4, [sp, #112]	@ D.36061, SegPacket.PhyAddr
	ldr	lr, [r3, #2252]	@ D.36059, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
	cmp	r4, #0	@ D.36061,
	ldr	r3, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Head
	add	r2, lr, #1152	@ D.36061, D.36059,
	rsb	r3, r3, r2	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Head, D.36061
	ldr	r2, [sp, #60]	@ tmp599, %sfp
	smull	r0, r1, r3, r2	@ tmp504, D.36061, tmp599
	mov	r2, r3, asr #31	@ tmp507, D.36061,
	ldr	r0, [sp, #68]	@ D.36061, SegFreeBufLen
	rsb	r2, r2, r1, asr #8	@ tmp503, tmp507,,
	mov	r1, r2, asl #10	@ tmp510, tmp503,
	add	r2, r1, r2, lsl #7	@ tmp511, tmp510, tmp503,
	rsb	r3, r2, r3	@ D.36061, tmp511, D.36061
	rsb	r3, r3, #1152	@ StreamNum, D.36061,
	bne	.L689	@,
.L618:
	cmp	r3, #1	@ StreamNum,
	mov	r0, lr	@ D.36059, D.36059
	movle	r3, #0	@ D.36065,
	movgt	r3, #1	@ D.36065,
.L619:
	mov	r4, r3	@ ScdErrFlag, D.36065
	b	.L606	@
.L683:
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	add	r2, sp, #68	@,,
	add	r1, sp, #72	@,,
	ldr	r0, [sp, #20]	@, %sfp
	add	r4, r3, r4	@ D.36066, LastSegPacket.LenInByte, SegPacketLen
	str	r4, [sp, #196]	@ D.36066, LastSegPacket.LenInByte
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #192]	@ LastSegPacket.PhyAddr, LastSegPacket.PhyAddr
	ldr	r2, [sp, #68]	@ D.36061, SegFreeBufLen
	cmp	r3, #0	@ LastSegPacket.PhyAddr,
	beq	.L611	@,
	ldr	r3, [sp, #184]	@ LastSegPacket.VirAddr, LastSegPacket.VirAddr
	cmp	r3, #0	@ LastSegPacket.VirAddr,
	beq	.L611	@,
	ldr	r3, [sp, #196]	@ LastSegPacket.LenInByte, LastSegPacket.LenInByte
	cmp	r3, r2	@ LastSegPacket.LenInByte, D.36061
	bhi	.L611	@,
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	add	r1, sp, #184	@ tmp699,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_24(D)->InstID
	bl	InsertStreamSeg	@
	mov	r1, #80	@,
	mov	r4, r0	@ Ret,
	add	r0, sp, #184	@ tmp700,,
	bl	__memzero	@
	cmp	r4, #0	@ Ret,
	beq	.L669	@,
.L670:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	mov	r4, #0	@ ScdErrFlag,
	ldr	r0, [r3, #2252]	@ D.36059, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
	b	.L606	@
.L684:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp658,,
	ldr	r0, [sp, #40]	@, %sfp
	bl	ScdParseUpMsgInfo	@
	b	.L609	@
.L625:
	ldr	r3, [sp, #44]	@ tmp567, %sfp
	ldr	r2, [sp, #52]	@ D.36061, %sfp
	clz	r3, r3	@ tmp567, tmp567
	cmp	r2, #1152	@ D.36061,
	mov	r3, r3, lsr #5	@ tmp567, tmp567,
	movls	r3, #0	@ tmp567,
	cmp	r3, #0	@ tmp567,
	beq	.L626	@,
	ldr	r0, [sp, #32]	@, %sfp
	mov	r1, #1	@,
	bl	DeleteRawPacket	@
	b	.L626	@
.L686:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r1, [r3, #2300]	@ SrcEaten, pScdInstance_24(D)->SmPushRaw.PushRawTotalLen
	cmp	r1, #3	@ SrcEaten,
	subgt	r1, r1, #3	@ SrcEaten, SrcEaten,
	movle	r1, r5	@ SrcEaten, D.36061
	b	.L595	@
.L689:
	ldr	r2, [sp, #104]	@ SegPacket.VirAddr, SegPacket.VirAddr
	cmp	r2, #0	@ SegPacket.VirAddr,
	beq	.L618	@,
	cmp	ip, r0	@ D.36066, D.36061
	bhi	.L618	@,
	cmp	r3, #1	@ StreamNum,
	ble	.L635	@,
	ldr	r1, [r6, #4]	@ MEM[base: _352, offset: 4B], MEM[base: _352, offset: 4B]
	add	r3, sp, #104	@ tmp675,,
	ldr	ip, [sp, #96]	@ SmStateReg.ScdRollAddr, SmStateReg.ScdRollAddr
	ldr	r2, [sp, #36]	@, %sfp
	bic	r1, r1, #-2147483648	@, MEM[base: _352, offset: 4B],
	ldr	r0, [sp, #32]	@, %sfp
	rsb	r4, r4, ip	@ D.36061, D.36061, SmStateReg.ScdRollAddr
	str	r4, [sp, #116]	@ D.36061, SegPacket.LenInByte
	bl	GetSegPts	@
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	add	r1, sp, #104	@ tmp677,,
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [r3, #2408]	@, pScdInstance_24(D)->InstID
	bl	InsertStreamSeg	@
	subs	r4, r0, #0	@ Ret,
	bne	.L690	@,
	ldr	ip, [sp, #8]	@ tmp595, %sfp
	add	r1, sp, #104	@ tmp680,,
	ldr	lr, [sp, #12]	@ SegBufAddr, %sfp
	ldr	r2, [sp, #24]	@ tmp594, %sfp
	ldr	r3, [ip, #2264]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr
	str	lr, [sp, #112]	@ SegBufAddr, SegPacket.PhyAddr
	ldr	r2, [r2, #192]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr
	rsb	r3, r3, lr	@ D.36061, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].SegBufPhyAddr, SegBufAddr
	ldr	lr, [sp, #48]	@ D.36066, %sfp
	add	r3, r2, r3	@ D.36063, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].pSegBufVirAddr, D.36061
	ldr	r0, [sp, #20]	@, %sfp
	ldr	r2, [ip, #2408]	@, pScdInstance_24(D)->InstID
	str	r3, [sp, #104]	@ D.36063, SegPacket.VirAddr
	mov	r3, #1	@ tmp529,
	str	lr, [sp, #116]	@ D.36066, SegPacket.LenInByte
	strb	r3, [sp, #109]	@ tmp529, SegPacket.IsLastSeg
	bl	InsertStreamSeg	@
	cmp	r0, #0	@,
	beq	.L669	@,
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	ldr	r0, [r3, #2252]	@ D.36059, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
	b	.L606	@
.L680:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r1, [sp, #28]	@, %sfp
	bl	__aeabi_uidiv	@
	b	.L590	@
.L679:
	ldr	r3, [sp, #20]	@ pStreamSegArray, %sfp
	mov	r5, r3	@ SegBufLength, pStreamSegArray
	str	r3, [sp, #12]	@ pStreamSegArray, %sfp
	b	.L629	@
.L596:
	movw	r0, #51212	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	ldr	r3, [sp, #28]	@ UpMsgStepNum, %sfp
	mov	r1, r3	@, UpMsgStepNum
	rsb	r0, r3, r0	@, UpMsgStepNum,
	bl	__aeabi_uidiv	@
	subs	r3, r0, #1	@ D.36059,,
	str	r3, [sp, #44]	@ D.36059, %sfp
	strpl	r3, [sp, #64]	@ D.36059, ScdSegNum
	strmi	r6, [sp, #44]	@ Ret, %sfp
	strmi	r6, [sp, #64]	@ Ret, ScdSegNum
	b	.L597	@
.L688:
	ldr	r3, [sp, #28]	@, %sfp
	mov	r2, r7	@, i
	add	r1, sp, #104	@ tmp666,,
	ldr	r0, [sp, #40]	@, %sfp
	str	ip, [sp, #48]	@ NextSegPhyAddr, %sfp
	bl	ScdParseUpMsgInfo	@
	ldr	ip, [sp, #48]	@ NextSegPhyAddr, %sfp
	b	.L616	@
.L677:
	mvn	r0, #6	@ D.36059,
	bx	lr	@
.L682:
	ldr	r3, [sp, #44]	@, %sfp
	mov	r0, fp	@, pScdInstance
	ldr	r2, [sp, #20]	@, %sfp
	ldr	r1, [sp, #16]	@, %sfp
	bl	GetNextVop	@
	str	r0, [sp, #44]	@ D.36059, %sfp
	str	r0, [sp, #64]	@ D.36059, ScdSegNum
	b	.L599	@
.L678:
	ldr	r2, [sp, #8]	@ tmp595, %sfp
	mov	r3, #2	@ tmp301,
	mvn	r0, #6	@ D.36059,
	str	r3, [r2, #2304]	@ tmp301, pScdInstance_24(D)->SmPushRaw.PushRawOver
	b	.L661	@
.L687:
	ldr	r2, [sp, #8]	@ tmp595, %sfp
	ldr	r3, [r2, #2268]	@ pScdInstance_24(D)->StreamSegArray.SegBufSize, pScdInstance_24(D)->StreamSegArray.SegBufSize
	ldr	r1, [r2, #2420]	@ SrcEaten, pScdInstance_24(D)->TransFormSeg
	ldr	r2, [r2, #2300]	@ SrcEaten, pScdInstance_24(D)->SmPushRaw.PushRawTotalLen
	add	r3, r3, r3, lsl #1	@ D.36061, pScdInstance_24(D)->StreamSegArray.SegBufSize, pScdInstance_24(D)->StreamSegArray.SegBufSize,
	cmp	r3, #0	@ D.36061,
	add	ip, r3, #3	@ tmp377, D.36061,
	rsb	r0, r1, r2	@ D.36061, SrcEaten, SrcEaten
	movlt	r3, ip	@ D.36061, tmp377
	cmp	r0, r3, asr #2	@ D.36061, D.36061,
	movgt	r1, r2	@ SrcEaten, SrcEaten
	b	.L595	@
.L690:
	ldr	r3, [sp, #8]	@ tmp595, %sfp
	mov	r4, r5	@ ScdErrFlag, tmp475
	ldr	r0, [r3, #2252]	@ D.36059, MEM[(struct SEG_ARRAY_S *)pScdInstance_24(D) + 73920B].Tail
	b	.L606	@
.L635:
	mov	r0, lr	@ D.36059, D.36059
	mov	r3, r5	@ D.36065, tmp475
	b	.L619	@
	.fnend
	.size	ProcessScdReturn, .-ProcessScdReturn
	.align	2
	.global	SM_GetInstanceRawDiscontinue
	.type	SM_GetInstanceRawDiscontinue, %function
SM_GetInstanceRawDiscontinue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ InstID,
	bne	.L693	@,
	ldr	r3, .L698	@ tmp116,
	ldr	r3, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	beq	.L694	@,
	add	r2, r3, #163840	@ tmp118, pSmInstArray,
	ldr	r0, [r2, #2412]	@ D.36075, pSmInstArray_4->Mode
	cmp	r0, #0	@ D.36075,
	ldrne	r0, [r3, #84]	@ pSmInstArray_4->Config.DisContinueRawPacketFlag, pSmInstArray_4->Config.DisContinueRawPacketFlag
	subne	r0, r0, #1	@ D.36075, pSmInstArray_4->Config.DisContinueRawPacketFlag,
	clzne	r0, r0	@ D.36075, D.36075
	movne	r0, r0, lsr #5	@ D.36075, D.36075,
	bx	lr	@
.L693:
	mov	r0, #0	@ D.36075,
	bx	lr	@
.L694:
	mov	r0, r3	@ D.36075, pSmInstArray
	bx	lr	@
.L699:
	.align	2
.L698:
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
	@ link register save eliminated.
	cmp	r0, #0	@ InstID
	bne	.L703	@,
	ldr	r3, .L705	@ tmp119,
	ldr	r2, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	clz	r3, r2	@ tmp123, pSmInstArray
	mov	r3, r3, lsr #5	@ tmp123, tmp123,
	orrs	r3, r3, r1, lsr #31	@, tmp133, tmp123, Flag,
	bxne	lr	@
	add	r3, r2, #163840	@ tmp129, pSmInstArray,
	mov	r0, #1	@ D.36080,
	ldr	r3, [r3, #2412]	@ pSmInstArray_5->Mode, pSmInstArray_5->Mode
	cmp	r3, #0	@ pSmInstArray_5->Mode,
	strne	r1, [r2, #84]	@ Flag, pSmInstArray_5->Config.DisContinueRawPacketFlag
	streq	r3, [r2, #84]	@ pSmInstArray_5->Mode, pSmInstArray_5->Config.DisContinueRawPacketFlag
	bx	lr	@
.L703:
	mov	r0, #0	@ D.36080,
	bx	lr	@
.L706:
	.align	2
.L705:
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
	beq	.L719	@,
	mov	r0, #0	@ D.36085,
	bx	lr	@
.L719:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r4, r3	@ InstID, InstID
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	moveq	r0, #0	@ D.36085,
	beq	.L709	@,
	ldr	r3, [sp, #12]	@ stInstInfo.TotalRawSize, stInstInfo.TotalRawSize
	ldr	r2, [sp, #16]	@ stInstInfo.TotalSegSize, stInstInfo.TotalSegSize
	add	r3, r3, r2	@ D.36087, stInstInfo.TotalRawSize, stInstInfo.TotalSegSize
	cmp	r3, #102400	@ D.36087,
	movlt	r0, #1	@ D.36085,
	blt	.L709	@,
	ldr	r3, [sp, #8]	@ stInstInfo.SegNum, stInstInfo.SegNum
	cmp	r3, #9	@ stInstInfo.SegNum,
	movgt	r0, r4	@ D.36085, InstID
	bgt	.L709	@,
	ldr	r0, [sp, #4]	@ stInstInfo.RawNum, stInstInfo.RawNum
	cmp	r0, #1	@ stInstInfo.RawNum,
	movgt	r0, #0	@ D.36085,
	movle	r0, #1	@ D.36085,
.L709:
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	add	r4, r0, #28	@ tmp125, InstID,
	ldr	r3, .L737	@ tmp124,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r0	@ InstID, InstID
	mov	r7, r1	@ pRawPacket, pRawPacket
	add	r4, r3, r4, lsl #2	@ tmp126, tmp124, tmp125,
	mov	r1, #12	@,
	add	r0, sp, #4	@ tmp152,,
	ldr	r5, [r4, #16]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r5, #0	@ pSmInstArray,
	beq	.L726	@,
	mov	r0, r6	@, InstID
	bl	VCTRL_GetStreamInterface	@
	subs	r6, r0, #0	@ pStreamIntf,
	beq	.L726	@,
	add	r0, sp, #4	@ tmp153,,
	mov	r2, #12	@,
	mov	r1, r6	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r6, #4]	@ pStreamIntf_12->read_stream, pStreamIntf_12->read_stream
	cmp	r3, #0	@ pStreamIntf_12->read_stream,
	beq	.L726	@,
	ldr	r0, .L737+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [sp, #8]	@ StreamIntf.read_stream, StreamIntf.read_stream
	mov	r1, r7	@, pRawPacket
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.read_stream
	mov	r6, r0	@ ret,
	ldr	r0, .L737+4	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ret,
	bne	.L726	@,
	ldr	r3, [r4, #16]	@ tmp151, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp151,
	beq	.L726	@,
	add	r5, r5, #73728	@ tmp140, pSmInstArray,
	ldr	r2, [r7, #8]	@ pRawPacket_18(D)->Length, pRawPacket_18(D)->Length
	mov	r0, r6	@ D.36091, ret
	ldr	r3, [r5, #188]	@ pSmInstArray_9->RawPacketArray.RawTotalSize, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	r3, r3, r2	@ D.36093, pSmInstArray_9->RawPacketArray.RawTotalSize, pRawPacket_18(D)->Length
	str	r3, [r5, #188]	@ D.36093, pSmInstArray_9->RawPacketArray.RawTotalSize
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L726:
	mvn	r0, #6	@ D.36091,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L738:
	.align	2
.L737:
	.word	.LANCHOR0
	.word	g_TaskLock
	.fnend
	.size	ReadRawStreamData, .-ReadRawStreamData
	.align	2
	.global	FillRawData
	.type	FillRawData, %function
FillRawData:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	ldr	r10, .L818	@ tmp346,
	mov	r5, r0	@ InstID, InstID
	mov	r1, #72	@,
	add	r3, r10, r0, lsl #2	@ tmp194, tmp346, InstID,
	add	r0, sp, #8	@,,
	ldr	r4, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	__memzero	@
	cmp	r4, #0	@ pSmInstArray,
	beq	.L739	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_15->Config.VidStd, pSmInstArray_15->Config.VidStd
	cmp	r3, #18	@ pSmInstArray_15->Config.VidStd,
	beq	.L739	@,
	ldr	r3, [r4, #84]	@ D.36101, pSmInstArray_15->Config.DisContinueRawPacketFlag
	cmp	r3, #1	@ D.36101,
	beq	.L739	@,
	cmp	r3, #2	@ D.36101,
	beq	.L808	@,
.L741:
	mvn	r6, #0	@ tmp351,
	mov	r7, #0	@,
.L751:
	ldr	r3, [r4, #92]	@ pSmInstArray_15->Config.ScdLowBufEnable, pSmInstArray_15->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_15->Config.ScdLowBufEnable,
	bne	.L752	@,
.L754:
	cmp	r5, #0	@ InstID,
	beq	.L809	@,
.L739:
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L809:
	ldr	r3, [r10, #128]	@ D.36108, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36108,
	beq	.L739	@,
	add	r2, r3, #73728	@ tmp264, D.36108,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)_78 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)_78 + 168B].Tail
	ldr	r2, [r2, #176]	@ MEM[(struct RAW_ARRAY_S *)_78 + 168B].History, MEM[(struct RAW_ARRAY_S *)_78 + 168B].History
	add	r3, r3, #1	@ D.36101, MEM[(struct RAW_ARRAY_S *)_78 + 168B].Tail,
	mov	r1, r3, asr #31	@ tmp268, D.36101,
	mov	r1, r1, lsr #22	@ tmp269, tmp268,
	add	r3, r3, r1	@ tmp270, D.36101, tmp269
	ubfx	r3, r3, #0, #10	@ tmp271, tmp270,,
	rsb	r3, r1, r3	@ D.36101, tmp269, tmp271
	cmp	r3, r2	@ D.36101, MEM[(struct RAW_ARRAY_S *)_78 + 168B].History
	beq	.L739	@,
	add	r1, sp, #8	@,,
	mov	r0, r5	@, InstID
	bl	ReadRawStreamData	@
	cmp	r0, #0	@,
	bne	.L739	@,
	ldr	r3, [r4, #80]	@ D.36102, pSmInstArray_15->Config.LastRawDisContinueCount
	cmn	r3, #1	@ D.36102,
	beq	.L756	@,
	ldr	r2, [sp, #56]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	cmp	r3, r2	@ D.36102, RawPacket.discontinue_count
	beq	.L758	@,
	ldr	r3, [r4, #56]	@ pSmInstArray_15->Config.VidStd, pSmInstArray_15->Config.VidStd
	bic	r3, r3, #2	@ D.36100, pSmInstArray_15->Config.VidStd,
	cmp	r3, #1	@ D.36100,
	beq	.L810	@,
.L758:
	add	r8, r4, #176128	@ tmp288, pSmInstArray,
	ldr	r1, [sp, #16]	@ RawPacket.Length, RawPacket.Length
	ldr	r2, [r8, #3976]	@ pSmInstArray_15->TotalRawSize, pSmInstArray_15->TotalRawSize
	add	r2, r2, r1	@ D.36101, pSmInstArray_15->TotalRawSize, RawPacket.Length
	str	r2, [r8, #3976]	@ D.36101, pSmInstArray_15->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r8, #3980]	@ D.36102, pSmInstArray_15->LastStatTime
	cmp	r1, #0	@ D.36102,
	mov	r9, r0	@ ThisTime,
	streq	r0, [r8, #3980]	@ ThisTime, pSmInstArray_15->LastStatTime
	beq	.L761	@,
	rsb	r1, r1, r0	@ TimePeriod, D.36102, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L761	@,
	ldr	r0, [r8, #3976]	@ pSmInstArray_15->TotalRawSize, pSmInstArray_15->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_15->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r1, #1000	@ tmp309,
	mov	r2, #0	@ tmp313,
	str	r9, [r8, #3980]	@ ThisTime, pSmInstArray_15->LastStatTime
	str	r2, [r8, #3976]	@ tmp313, pSmInstArray_15->TotalRawSize
	mul	r0, r1, r0	@ D.36102, tmp309,
	mov	r0, r0, lsr #10	@ D.36102, D.36102,
	str	r0, [r8, #3984]	@ D.36102, pSmInstArray_15->BitRate
.L761:
	ldrd	r2, [sp, #24]	@ RawPacket.Pts,,
	cmp	r3, r7	@ RawPacket.Pts,
	cmpeq	r2, r6	@ RawPacket.Pts, tmp351
	beq	.L811	@,
.L762:
	add	r1, sp, #8	@,,
	mov	r0, #0	@,
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L739	@,
	mov	r3, #1	@ tmp320,
	strb	r3, [r4, #4]	@ tmp320, pSmInstArray_15->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L812	@,
.L764:
	ldr	r3, .L818+4	@ tmp328,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r3, #0	@ save_str_chan_num,
	bne	.L751	@,
	ldr	fp, .L818+8	@ tmp348,
	ldr	r2, [fp]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r2, #0	@ vfmw_save_str_file,
	beq	.L751	@,
	ldr	r8, [r4, #56]	@ eStd, pSmInstArray_15->Config.VidStd
	ldr	r0, .L818+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r1, r8, #4	@ D.36102, eStd,
	cmp	r1, #1	@ D.36102,
	bls	.L767	@,
	cmp	r8, #17	@ eStd,
	bne	.L813	@,
.L767:
	ldr	r2, [fp]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, sp, #16	@,,
	bl	klib_fwrite	@
.L768:
	ldr	r2, [fp]	@, vfmw_save_str_file
	ldr	r1, [sp, #16]	@, RawPacket.Length
	ldr	r0, [sp, #12]	@, RawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L818+12	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #92]	@ pSmInstArray_15->Config.ScdLowBufEnable, pSmInstArray_15->Config.ScdLowBufEnable
	cmp	r3, #0	@ pSmInstArray_15->Config.ScdLowBufEnable,
	beq	.L754	@,
.L752:
	mov	r0, r5	@, InstID
	bl	VCTRL_IsChanSegEnough	@
	cmp	r0, #1	@,
	bne	.L754	@,
	b	.L739	@
.L756:
	ldr	r3, [sp, #56]	@ RawPacket.discontinue_count, RawPacket.discontinue_count
	str	r3, [r4, #80]	@ RawPacket.discontinue_count, pSmInstArray_15->Config.LastRawDisContinueCount
	b	.L758	@
.L812:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L818+16	@ tmp325,
	ldr	r3, [r10, #164]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36102, last_rec_pos_time, ThisTime
	cmp	r3, r2	@ D.36102, g_TraceBsPeriod
	ldrhi	r3, .L818	@ tmp358,
	strhi	r0, [r3, #164]	@ ThisTime, last_rec_pos_time
	b	.L764	@
.L811:
	mvn	r2, #0	@ tmp357,
	mvn	r3, #0	@,
	strd	r2, [sp, #24]	@ tmp357,,
	b	.L762	@
.L813:
	sub	r1, r8, #8	@ D.36102, eStd,
	cmp	r1, #6	@ D.36102,
	bls	.L767	@,
	cmp	r8, #1	@ eStd,
	bne	.L768	@,
	ldr	r2, [r4, #72]	@ pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L767	@,
	b	.L768	@
.L808:
	add	r6, r4, #176128	@ tmp199, pSmInstArray,
	ldr	r2, [r4, #104]	@ pSmInstArray_15->Config.DisContinueRawPacket.Length, pSmInstArray_15->Config.DisContinueRawPacket.Length
	ldr	r3, [r6, #3976]	@ pSmInstArray_15->TotalRawSize, pSmInstArray_15->TotalRawSize
	add	r3, r3, r2	@ D.36101, pSmInstArray_15->TotalRawSize, pSmInstArray_15->Config.DisContinueRawPacket.Length
	str	r3, [r6, #3976]	@ D.36101, pSmInstArray_15->TotalRawSize
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r6, #3980]	@ D.36102, pSmInstArray_15->LastStatTime
	cmp	r3, #0	@ D.36102,
	mov	r7, r0	@ ThisTime,
	streq	r0, [r6, #3980]	@ ThisTime, pSmInstArray_15->LastStatTime
	beq	.L743	@,
	rsb	r1, r3, r0	@ TimePeriod, D.36102, ThisTime
	cmp	r1, #2000	@ TimePeriod,
	bls	.L743	@,
	ldr	r0, [r6, #3976]	@ pSmInstArray_15->TotalRawSize, pSmInstArray_15->TotalRawSize
	mov	r0, r0, asl #3	@, pSmInstArray_15->TotalRawSize,
	bl	__aeabi_uidiv	@
	mov	r3, #1000	@ tmp220,
	mov	r2, #0	@ tmp224,
	str	r7, [r6, #3980]	@ ThisTime, pSmInstArray_15->LastStatTime
	str	r2, [r6, #3976]	@ tmp224, pSmInstArray_15->TotalRawSize
	mul	r0, r3, r0	@ D.36102, tmp220,
	mov	r3, r0, lsr #10	@ D.36102, D.36102,
	str	r3, [r6, #3984]	@ D.36102, pSmInstArray_15->BitRate
.L743:
	ldrd	r2, [r4, #112]	@ pSmInstArray_15->Config.DisContinueRawPacket.Pts, pSmInstArray,
	mov	r1, #0	@,
	mvn	r0, #0	@ tmp227,
	cmp	r3, r1	@ pSmInstArray_15->Config.DisContinueRawPacket.Pts,
	cmpeq	r2, r0	@ pSmInstArray_15->Config.DisContinueRawPacket.Pts, tmp227
	beq	.L814	@,
.L744:
	add	r1, r4, #96	@, pSmInstArray,
	mov	r0, r5	@, InstID
	bl	SM_PushRaw	@
	cmp	r0, #0	@,
	bne	.L739	@,
	mov	r3, #1	@ tmp231,
	strb	r3, [r4, #4]	@ tmp231, pSmInstArray_15->FillNewRawFlag
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L815	@,
.L746:
	ldr	r3, .L818+4	@ tmp243,
	ldr	r3, [r3]	@ save_str_chan_num, save_str_chan_num
	cmp	r5, r3	@ InstID, save_str_chan_num
	beq	.L816	@,
.L748:
	ldr	r3, [r4, #144]	@ pSmInstArray_15->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_15->Config.DisContinueRawPacket.discontinue_count
	mov	r2, #0	@ tmp260,
	str	r2, [r4, #84]	@ tmp260, pSmInstArray_15->Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ pSmInstArray_15->Config.DisContinueRawPacket.discontinue_count, pSmInstArray_15->Config.LastRawDisContinueCount
	b	.L741	@
.L810:
	add	r1, sp, #8	@,,
	mov	r2, #72	@,
	add	r0, r4, #96	@, pSmInstArray,
	str	r3, [sp, #4]	@ D.36100, %sfp
	bl	memcpy	@
	ldr	r3, [sp, #4]	@ D.36100, %sfp
	str	r3, [r4, #84]	@ D.36100, pSmInstArray_15->Config.DisContinueRawPacketFlag
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L814:
	mvn	r2, #0	@ tmp229,
	mvn	r3, #0	@,
	strd	r2, [r4, #112]	@ tmp229, pSmInstArray,
	b	.L744	@
.L815:
	bl	OSAL_GetTimeInMs	@
	add	r2, r10, r5, lsl #2	@ tmp234, tmp346, InstID,
	ldr	r1, .L818+16	@ tmp238,
	ldr	r3, [r2, #164]	@ tmp237, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36102, tmp237, ThisTime
	cmp	r3, r1	@ D.36102, g_TraceBsPeriod
	strhi	r0, [r2, #164]	@ ThisTime, last_rec_pos_time
	b	.L746	@
.L816:
	ldr	fp, .L818+8	@ tmp348,
	ldr	r2, [fp]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r2, #0	@ vfmw_save_str_file,
	beq	.L748	@,
	ldr	r6, [r4, #56]	@ eStd, pSmInstArray_15->Config.VidStd
	ldr	r0, .L818+12	@,
	bl	OSAL_SpinUnLockIRQ	@
	sub	r2, r6, #4	@ D.36102, eStd,
	cmp	r2, #1	@ D.36102,
	bls	.L749	@,
	cmp	r6, #17	@ eStd,
	beq	.L749	@,
	sub	r2, r6, #8	@ D.36102, eStd,
	cmp	r2, #6	@ D.36102,
	bls	.L749	@,
	cmp	r6, #1	@ eStd,
	beq	.L817	@,
.L750:
	ldr	r2, [fp]	@, vfmw_save_str_file
	ldr	r1, [r4, #104]	@, pSmInstArray_15->Config.DisContinueRawPacket.Length
	ldr	r0, [r4, #100]	@, pSmInstArray_15->Config.DisContinueRawPacket.VirAddr
	bl	klib_fwrite	@
	ldr	r0, .L818+12	@,
	bl	OSAL_SpinLockIRQ	@
	b	.L748	@
.L817:
	ldr	r2, [r4, #72]	@ pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ pSmInstArray_15->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L750	@,
.L749:
	ldr	r2, [fp]	@, vfmw_save_str_file
	mov	r1, #4	@,
	add	r0, r4, #104	@, pSmInstArray,
	bl	klib_fwrite	@
	b	.L750	@
.L819:
	.align	2
.L818:
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
	beq	.L826	@,
	add	r0, sp, #4	@ tmp152,,
	mov	r2, #12	@,
	mov	r1, r4	@, pStreamIntf
	bl	memcpy	@
	ldr	r3, [r4, #8]	@ pStreamIntf_11->release_stream, pStreamIntf_11->release_stream
	cmp	r3, #0	@ pStreamIntf_11->release_stream,
	beq	.L827	@,
	add	r5, r5, #28	@ tmp150, InstID,
	ldr	r6, .L835	@ tmp149,
	add	r3, r6, r5, lsl #2	@ tmp133, tmp149, tmp150,
	ldr	r3, [r3, #16]	@ tmp135, s_SmIIS.pSmInstArray
	ldr	r3, [r3, #92]	@ _15->Config.ScdLowBufEnable, _15->Config.ScdLowBufEnable
	cmp	r3, #0	@ _15->Config.ScdLowBufEnable,
	bne	.L834	@,
	ldr	r0, .L835+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	ldr	r0, .L835+4	@,
	bl	OSAL_SpinLockIRQ	@
.L825:
	cmp	r4, #0	@ ret,
	mvnne	r4, #6	@ ret,
.L823:
	add	r5, r6, r5, lsl #2	@ tmp145, tmp149, tmp150,
	ldr	r3, [r5, #16]	@ tmp147, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ tmp147,
	beq	.L826	@,
	mov	r0, r4	@ D.36115, ret
.L822:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L834:
	mov	r1, r7	@, pRawPacket
	ldr	r3, [sp, #12]	@ StreamIntf.release_stream, StreamIntf.release_stream
	ldr	r0, [sp, #4]	@, StreamIntf.stream_provider_inst_id
	blx	r3	@ StreamIntf.release_stream
	mov	r4, r0	@ ret,
	b	.L825	@
.L827:
	ldr	r6, .L835	@ tmp149,
	add	r5, r5, #28	@ tmp150, InstID,
	mvn	r4, #6	@ ret,
	b	.L823	@
.L826:
	mvn	r0, #6	@ D.36115,
	b	.L822	@
.L836:
	.align	2
.L835:
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
	bne	.L845	@,
	ldr	r3, .L854	@ tmp128,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r7, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r7, #0	@ pSmInstArray,
	beq	.L849	@,
	cmp	r1, #0	@ ResetFlag,
	beq	.L853	@,
.L839:
	adds	r6, r7, #168	@ tmp152, pSmInstArray,
	beq	.L849	@,
	add	r7, r7, #73728	@ tmp153, pSmInstArray,
	ldr	r5, [r7, #168]	@ RawHead, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 168B].Head
	ldr	r4, [r7, #176]	@ D.36126, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 168B].History
	cmp	r5, r4	@ RawHead, D.36126
	addlt	r5, r5, #1024	@ D.36127, RawHead,
	rsb	r5, r4, r5	@ DelNum, D.36126, D.36127
	cmp	r5, #0	@ DelNum,
	beq	.L849	@,
	mov	r8, #0	@ i,
.L843:
	mov	r1, r4, asl #6	@ tmp141, j,
	add	r8, r8, #1	@ i, i,
	add	r1, r1, r4, lsl #3	@ tmp142, tmp141, j,
	mov	r0, #0	@,
	add	r1, r6, r1	@, tmp152, tmp142
	add	r4, r4, #1	@ D.36129, j,
	bl	ReleaseRawStreamData	@
	cmp	r8, r5	@ i, DelNum
	ubfx	r4, r4, #0, #10	@ j, D.36129,,
	bne	.L843	@,
	ldr	r4, [r7, #176]	@ D.36126, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 168B].History
	add	r4, r8, r4	@ D.36127, i, D.36126
	cmp	r4, #1024	@ D.36127,
	strlt	r4, [r7, #176]	@ D.36127, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 168B].History
	subge	r4, r4, #1024	@ D.36127, D.36127,
	strge	r4, [r7, #176]	@ D.36127, MEM[(struct RAW_ARRAY_S *)pSmInstArray_9 + 168B].History
	movlt	r0, #0	@ D.36126,
	movge	r0, #0	@ D.36126,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L853:
	add	r3, r7, #163840	@ tmp130, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_9->Mode, pSmInstArray_9->Mode
	cmp	r3, #0	@ pSmInstArray_9->Mode,
	bne	.L839	@,
.L849:
	mvn	r0, #0	@ D.36126,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L845:
	mvn	r0, #0	@ D.36126,
	bx	lr	@
.L855:
	.align	2
.L854:
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
	ldr	r3, .L965	@ tmp241,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r3, r0, lsl #2	@ tmp243, tmp241, ChanID,
	.pad #60
	sub	sp, sp, #60	@,,
	ldr	r10, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r10, #0	@ pSmInstArray,
	beq	.L859	@,
	add	fp, r10, #73728	@ tmp690, pSmInstArray,
	adds	r7, fp, #192	@ pStreamSegArray, tmp690,
	beq	.L859	@,
	ldrd	r2, [r1]	@ pts, *pArgs_35(D)
	add	r5, r10, #163840	@ tmp691, pSmInstArray,
	ldrd	r8, [r1, #16]	@ RawNum, pArgs,
	ldr	r4, [r5, #2248]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	strd	r2, [sp]	@ pts, %sfp
	ldrd	r2, [r1, #8]	@ gap, pArgs,
	ldr	ip, [r5, #2252]	@ D.36136, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
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
.L861:
	mov	r6, r4, asl #4	@ tmp688, i,
	mov	r8, r4, asl #6	@ tmp689, i,
	cmp	r4, ip	@ i, D.36136
	add	r3, r6, r8	@ tmp325, tmp688, tmp689
	mov	r1, r4	@, i
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp326, tmp690, tmp325
	beq	.L950	@,
	ldrsb	r2, [r3, #204]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState
	cmp	r2, #1	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].StreamSeg[i_1].SegState,
	bne	.L865	@,
	ldrd	r2, [r3, #232]	@ D.36137, tmp326,
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp765,
	cmp	r3, r1	@ D.36137,
	cmpeq	r2, r0	@ D.36137, tmp765
	addeq	r1, r4, #1	@ D.36141, i,
	beq	.L940	@,
	ldrd	r0, [sp]	@ pts, %sfp
	add	lr, r4, #1	@ D.36141, i,
	cmp	r1, r3	@ pts, D.36137
	mov	r10, lr, asr #31	@ tmp353, D.36141,
	cmpeq	r0, r2	@ pts, D.36137
	smull	r0, r1, lr, r9	@ tmp350, D.36141, tmp703
	bls	.L868	@,
	str	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	rsb	r4, r10, r1, asr #8	@ i, tmp353,,
	mov	r3, r4, asl #10	@ tmp356, i,
	add	r4, r3, r4, lsl #7	@ tmp357, tmp356, i,
	rsb	r4, r4, lr	@ i, tmp357, D.36141
	b	.L861	@
.L865:
	bl	ReleaseStreamSeg	@
	ldr	ip, [r5, #2252]	@ D.36136, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	add	r1, r4, #1	@ D.36141, i,
.L940:
	smull	r2, r3, r1, r9	@ tmp505, D.36141, tmp703
	mov	r4, r1, asr #31	@ tmp508, D.36141,
	rsb	r4, r4, r3, asr #8	@ i, tmp508,,
	mov	r3, r4, asl #10	@ tmp511, i,
	add	r4, r3, r4, lsl #7	@ tmp512, tmp511, i,
	rsb	r4, r4, r1	@ i, tmp512, D.36141
	b	.L861	@
.L868:
	beq	.L951	@,
	bcs	.L861	@,
	ldr	r0, [r5, #2256]	@ D.36136, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp771,
	mov	r3, r0, asl #6	@ tmp426, D.36136,
	add	r3, r3, r0, lsl #4	@ tmp427, tmp426, D.36136,
	add	r3, fp, r3	@ tmp428, tmp690, tmp427
	ldrd	r2, [r3, #232]	@ D.36142, tmp428,
	cmp	r3, r9	@ D.36142,
	cmpeq	r2, r8	@ D.36142, tmp771
	streq	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	moveq	r0, r4	@ D.36136, i
	beq	.L873	@,
	ldrd	r8, [sp]	@ pts, %sfp
	cmp	r9, r3	@ pts, D.36142
	cmpeq	r8, r2	@ pts, D.36142
	bhi	.L952	@,
.L873:
	ldr	r6, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r0, r6	@ D.36136, j
	beq	.L874	@,
	movw	r4, #36409	@ tmp702,
	mov	r8, #2	@ tmp701,
	movt	r4, 14563	@ tmp702,
.L875:
	mov	r3, r6, asl #6	@ tmp448, j,
	mov	r1, r6	@, j
	add	r3, r3, r6, lsl #4	@ tmp449, tmp448, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp450, tmp690, tmp449
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte
	strb	r8, [r3, #204]	@ tmp701, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].SegState
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36140, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_285].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36141, D.36140
	str	r2, [r5, #2284]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36141, D.36141
	str	r3, [r5, #2288]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r2, r6, #1	@ D.36141, j,
	ldr	ip, [r5, #2256]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	smull	r0, r1, r2, r4	@ tmp484, D.36141, tmp702
	mov	r6, r2, asr #31	@ tmp487, D.36141,
	rsb	r6, r6, r1, asr #8	@ j, tmp487,,
	mov	r3, r6, asl #10	@ tmp490, j,
	add	r6, r3, r6, lsl #7	@ tmp491, tmp490, j,
	rsb	r6, r6, r2	@ j, tmp491, D.36141
	cmp	ip, r6	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History, j
	bne	.L875	@,
.L874:
	mov	r3, r6, asl #6	@ tmp501, j,
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	add	r6, r3, r6, lsl #4	@ tmp502, tmp501, j,
	mov	r0, #0	@ D.36136,
	add	fp, fp, r6	@ tmp503, tmp690, tmp502
	ldrd	r2, [fp, #232]	@ D.36142, tmp503,
	strd	r2, [r1]	@ D.36142, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L950:
	ldr	r8, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	ldr	r10, [sp, #28]	@ pSmInstArray, %sfp
	cmp	r8, r4	@ j, i
	beq	.L863	@,
	movw	r4, #36409	@ tmp698,
	mov	r6, #2	@ tmp697,
	movt	r4, 14563	@ tmp698,
.L864:
	mov	r3, r8, asl #6	@ tmp271, j,
	mov	r1, r8	@, j
	add	r3, r3, r8, lsl #4	@ tmp272, tmp271, j,
	mov	r0, r7	@, pStreamSegArray
	add	r3, fp, r3	@ tmp273, tmp690, tmp272
	strb	r6, [r3, #204]	@ tmp697, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_283].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_283].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_283].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36140, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_283].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36141, D.36140
	str	r2, [r5, #2284]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36141, D.36141
	str	r3, [r5, #2288]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r8, #1	@ D.36141, j,
	ldr	r0, [r5, #2252]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail
	smull	r2, r3, r1, r4	@ tmp307, D.36141, tmp698
	mov	r8, r1, asr #31	@ tmp310, D.36141,
	rsb	r8, r8, r3, asr #8	@ j, tmp310,,
	mov	r3, r8, asl #10	@ tmp313, j,
	add	r8, r3, r8, lsl #7	@ tmp314, tmp313, j,
	rsb	r8, r8, r1	@ j, tmp314, D.36141
	cmp	r0, r8	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Tail, j
	bne	.L864	@,
.L863:
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	adds	r3, r10, #168	@ pRawPacketArray, pSmInstArray,
	str	r3, [sp, #36]	@ pRawPacketArray, %sfp
	beq	.L859	@,
	ldr	r9, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r8, [fp, #172]	@ D.36141, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	cmp	r9, r8	@ i, D.36141
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	addgt	r3, r8, #1024	@ D.36141, D.36141,
	rsble	r3, r9, r8	@ D.36136, i, D.36141
	rsbgt	r3, r9, r3	@ D.36136, i, D.36141
	cmp	r9, r8	@ i, D.36141
	str	r3, [sp, #48]	@ D.36136, %sfp
	beq	.L941	@,
	str	r5, [sp, #52]	@ tmp691, %sfp
	mvn	r6, #0	@ tmp696,
	mvn	r7, #0	@,
	mov	ip, r9	@ i, i
	str	r9, [sp, #28]	@ i, %sfp
	ldrd	r4, [sp]	@ pts, %sfp
	b	.L880	@
.L955:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r9, lsr #22	@ tmp544, tmp543,
	add	r3, lr, ip	@ tmp545, D.36141, tmp544
	ubfx	r3, r3, #0, #10	@ tmp546, tmp545,,
	rsb	ip, ip, r3	@ i, tmp544, tmp546
.L885:
	cmp	r8, ip	@ D.36141, i
	beq	.L953	@,
.L880:
	mov	r3, ip, asl #6	@ tmp531, i,
	mvn	r0, #0	@ tmp535,
	add	r3, r3, ip, lsl #3	@ tmp532, tmp531, i,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp533, pSmInstArray, tmp532
	ldrd	r2, [r3, #184]	@ D.36142, tmp533,
	cmp	r3, r7	@ D.36142,
	cmpeq	r2, r6	@ D.36142, tmp696
	beq	.L954	@,
	cmp	r5, r3	@ pts, D.36142
	add	lr, ip, #1	@ D.36141, i,
	cmpeq	r4, r2	@ pts, D.36142
	mov	r9, lr, asr #31	@ tmp543, D.36141,
	bhi	.L955	@,
	beq	.L956	@,
	bcs	.L885	@,
	ldr	lr, [fp, #176]	@ D.36141, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r9, [sp, #28]	@ i, %sfp
	strd	r2, [sp, #16]	@ D.36142,,
	mov	r4, lr, asl #6	@ tmp575, D.36141,
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	add	r4, r4, lr, lsl #3	@ tmp576, tmp575, D.36141,
	add	r4, r10, r4	@ tmp577, pSmInstArray, tmp576
	ldrd	r6, [r4, #184]	@ D.36142, tmp577,
	cmp	r7, r1	@ D.36142,
	cmpeq	r6, r0	@ D.36142, tmp535
	beq	.L957	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r7	@ pts, D.36142
	cmpeq	r0, r6	@ pts, D.36142
	bls	.L893	@,
	subs	r0, r0, r6	@ D.36142, D.36142, D.36142
	ldrd	r2, [sp, #40]	@ gap,,
	sbc	r1, r1, r7	@ D.36142, D.36142, D.36142
	cmp	r3, r1	@ gap, D.36142
	cmpeq	r2, r0	@ gap, D.36142
	bcc	.L958	@,
.L893:
	cmp	r9, lr	@ i, D.36141
	addgt	lr, lr, #1024	@ D.36141, D.36141,
	rsb	r1, r9, lr	@ DelNum, i, D.36141
	cmp	r1, #0	@ DelNum,
	beq	.L896	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp595,
	movne	r4, #0	@ tmp595,
	beq	.L896	@,
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.36142, *pArgs_35(D)
.L949:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	mov	r1, r4	@, tmp595
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@ D.36136, tmp595
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L954:
	add	r3, ip, #1	@ D.36141, i,
	mov	ip, r3, asr #31	@ tmp536, D.36141,
	mov	ip, ip, lsr #22	@ tmp537, tmp536,
	add	r3, r3, ip	@ tmp538, D.36141, tmp537
	ubfx	r3, r3, #0, #10	@ tmp539, tmp538,,
	rsb	ip, ip, r3	@ i, tmp537, tmp539
	cmp	r8, ip	@ D.36141, i
	bne	.L880	@,
.L953:
	ldr	r9, [sp, #28]	@ i, %sfp
	cmp	r9, r8	@ i, D.36141
	addgt	r8, r8, #1024	@ D.36141, D.36141,
.L941:
	rsb	r1, r9, r8	@ DelNum, i, D.36141
	str	r9, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	cmp	r1, #0	@ DelNum,
	bne	.L959	@,
.L883:
	ldr	r2, [sp, #48]	@ RawNumInVfmw, %sfp
	ldrd	r0, [sp, #16]	@ RawNum,,
	mov	r3, r2, asr #31	@ RawNumInVfmw, RawNumInVfmw,
	cmp	r1, r3	@ RawNum, RawNumInVfmw
	cmpeq	r0, r2	@ RawNum, RawNumInVfmw
	bls	.L902	@,
	ldrd	r0, [sp, #16]	@ RawNumToSeek,,
	subs	r0, r0, r2	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	sbc	r1, r1, r3	@ RawNumToSeek, RawNumToSeek, RawNumInVfmw
	mov	r2, r0	@ RawNumToSeek, RawNumToSeek
	movw	r0, #1023	@ tmp609,
	mov	r3, r1	@ RawNumToSeek, RawNumToSeek
	and	r0, r0, r2	@ D.36142, tmp609, RawNumToSeek
	mov	r1, #0	@,
	and	r1, r1, r3	@ D.36142,, RawNumToSeek
	orrs	r1, r0, r1	@ tmp759, D.36142
	mov	r2, r2, lsr #10	@ D.36142, RawNumToSeek,
	orrne	r2, r2, r3, asl #22	@ D.36142, D.36142, RawNumToSeek,
	orreq	r3, r2, r3, asl #22	@ SeekTime, D.36142, RawNumToSeek,
	addne	r3, r2, #1	@ SeekTime, D.36142,
	add	r3, r3, #1	@ D.36141, SeekTime,
	str	r3, [sp, #32]	@ D.36141, %sfp
	cmp	r3, #0	@ D.36141,
	ble	.L902	@,
	ldr	r4, [sp, #12]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r9, #0	@ j,
	mvn	r5, #0	@,
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	FillRawData	@
	str	r9, [sp, #28]	@ j, %sfp
	ldrd	r8, [sp]	@ pts, %sfp
	mvn	r4, #0	@ tmp693,
.L922:
	ldr	r3, [fp, #168]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	lr, [fp, #172]	@ D.36136, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Tail
	mov	ip, r3	@ i, i
	str	r3, [sp, #16]	@ i, %sfp
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L903:
	mov	r3, ip, asl #6	@ tmp630, i,
	cmp	ip, lr	@ i, D.36136
	add	r3, r3, ip, lsl #3	@ tmp631, tmp630, i,
	mvn	r0, #0	@ tmp634,
	mvn	r1, #0	@,
	add	r3, r10, r3	@ tmp632, pSmInstArray, tmp631
	beq	.L960	@,
	ldrd	r6, [r3, #184]	@ D.36142, tmp632,
	add	r3, ip, #1	@ D.36141, i,
	cmp	r7, r5	@ D.36142,
	cmpeq	r6, r4	@ D.36142, tmp693
	beq	.L961	@,
	cmp	r9, r7	@ pts, D.36142
	mov	r2, r3, asr #31	@ tmp642, D.36141,
	cmpeq	r8, r6	@ pts, D.36142
	bls	.L911	@,
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	ip, r2, lsr #22	@ tmp643, tmp642,
	add	r3, r3, ip	@ tmp644, D.36141, tmp643
	ubfx	r3, r3, #0, #10	@ tmp645, tmp644,,
	rsb	ip, ip, r3	@ i, tmp643, tmp645
	b	.L903	@
.L911:
	beq	.L962	@,
	bcs	.L903	@,
	ldr	lr, [fp, #176]	@ D.36136, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r2, r6	@ D.36142, D.36142
	ldr	r8, [sp, #16]	@ i, %sfp
	mov	r3, r7	@ D.36142, D.36142
	mov	r4, lr, asl #6	@ tmp662, D.36136,
	add	r4, r4, lr, lsl #3	@ tmp663, tmp662, D.36136,
	add	r4, r10, r4	@ tmp664, pSmInstArray, tmp663
	ldrd	r4, [r4, #184]	@ D.36142, tmp664,
	cmp	r5, r1	@ D.36142,
	cmpeq	r4, r0	@ D.36142, tmp634
	beq	.L963	@,
	ldrd	r0, [sp]	@ pts, %sfp
	cmp	r1, r5	@ pts, D.36142
	cmpeq	r0, r4	@ pts, D.36142
	bls	.L917	@,
	subs	r0, r0, r4	@ D.36142, D.36142, D.36142
	ldrd	r6, [sp, #40]	@ gap,,
	sbc	r1, r1, r5	@ D.36142, D.36142, D.36142
	cmp	r7, r1	@ gap, D.36142
	cmpeq	r6, r0	@ gap, D.36142
	strcc	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	movcc	r4, r2	@ D.36142, D.36142
	movcc	r5, r3	@ D.36142, D.36142
	movcc	lr, ip	@ D.36136, i
.L917:
	cmp	lr, r8	@ D.36136, i
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	addlt	lr, lr, #1024	@ D.36141, D.36136,
	rsb	r1, r8, lr	@ DelNum, i, D.36141
	cmp	r1, #0	@ DelNum,
	strd	r4, [r3]	@ D.36142, *pArgs_35(D)
	bne	.L920	@,
.L948:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, r1	@ D.36136, DelNum
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
.L938:
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L961:
	mov	ip, r3, asr #31	@ tmp635, D.36141,
	mov	ip, ip, lsr #22	@ tmp636, tmp635,
	add	r3, r3, ip	@ tmp637, D.36141, tmp636
	ubfx	r3, r3, #0, #10	@ tmp638, tmp637,,
	rsb	ip, ip, r3	@ i, tmp636, tmp638
	b	.L903	@
.L960:
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r3, ip	@ i, i
	addgt	ip, ip, #1024	@ D.36141, i,
	ldrgt	r3, [sp, #16]	@ i, %sfp
	rsb	r1, r3, ip	@ DelNum, i, D.36141
	ldr	r3, [sp, #16]	@ i, %sfp
	cmp	r1, #0	@ DelNum,
	str	r3, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bne	.L964	@,
.L908:
	ldr	r3, [sp, #28]	@ j, %sfp
	ldr	r2, [sp, #32]	@ D.36141, %sfp
	add	r3, r3, #1	@ j, j,
	str	r3, [sp, #28]	@ j, %sfp
	cmp	r3, r2	@ j, D.36141
	beq	.L902	@,
	ldr	r6, [sp, #12]	@ ChanID, %sfp
	mov	r1, #0	@,
	mov	r0, r6	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r6	@, ChanID
	bl	FillRawData	@
	b	.L922	@
.L962:
	ldr	r8, [sp, #16]	@ i, %sfp
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	cmp	r8, ip	@ i, i
	ldrd	r2, [sp]	@ pts, %sfp
	addgt	ip, ip, #1024	@ D.36141, i,
	rsb	r1, r8, ip	@ DelNum, i, D.36141
	cmp	r1, #0	@ DelNum,
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	beq	.L948	@,
.L920:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	ldr	r0, [sp, #36]	@, %sfp
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	bl	DeleteRawPacket	@
	ldr	r0, [sp, #12]	@, %sfp
	mov	r1, #0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r0, #0	@ D.36136,
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L964:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L908	@
.L956:
	ldr	r9, [sp, #28]	@ i, %sfp
	ldr	r5, [sp, #52]	@ tmp691, %sfp
	cmp	ip, r9	@ i, i
	addlt	ip, ip, #1024	@ D.36141, i,
	rsb	r1, r9, ip	@ DelNum, i, D.36141
	cmp	r1, #0	@ DelNum,
	beq	.L890	@,
	ldr	r4, [r5, #2296]	@ pSmInstArray_33->SmPushRaw.PushRawNum, pSmInstArray_33->SmPushRaw.PushRawNum
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	cmp	r1, r4	@ DelNum, pSmInstArray_33->SmPushRaw.PushRawNum
	cmple	r3, #1	@, PushRawOver,
	moveq	r4, #1	@ tmp558,
	movne	r4, #0	@ tmp558,
	beq	.L890	@,
	ldr	r0, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r0]	@ pts, *pArgs_35(D)
	b	.L949	@
.L951:
	ldr	r10, [r5, #2248]	@ j, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].Head
	cmp	r4, r10	@ i, j
	beq	.L870	@,
	movw	r9, #36409	@ tmp700,
	movt	r9, 14563	@ tmp700,
.L871:
	mov	r3, r10, asl #6	@ tmp366, j,
	mov	r2, #2	@ tmp769,
	add	r3, r3, r10, lsl #4	@ tmp367, tmp366, j,
	mov	r1, r10	@, j
	add	r3, fp, r3	@ tmp368, tmp690, tmp367
	mov	r0, r7	@, pStreamSegArray
	strb	r2, [r3, #204]	@ tmp769, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].SegState
	ldr	ip, [r3, #212]	@ MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte
	ldr	r2, [r5, #2284]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	ldr	r3, [r5, #2288]	@ MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	rsb	r2, ip, r2	@ D.36140, MEM[(struct STREAM_SEG_S *)pSmInstArray_33 + 73920B].StreamSeg[j_284].LenInByte, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	sub	r3, r3, #1	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum,
	bic	r2, r2, r2, asr #31	@ D.36141, D.36140
	str	r2, [r5, #2284]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshSize
	bic	r3, r3, r3, asr #31	@ D.36141, D.36141
	str	r3, [r5, #2288]	@ D.36141, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].SegFreshNum
	bl	ReleaseStreamSeg	@
	add	r1, r10, #1	@ D.36141, j,
	smull	r2, r3, r1, r9	@ tmp402, D.36141, tmp700
	mov	r10, r1, asr #31	@ tmp405, D.36141,
	rsb	r10, r10, r3, asr #8	@ j, tmp405,,
	mov	r3, r10, asl #10	@ tmp408, j,
	add	r10, r3, r10, lsl #7	@ tmp409, tmp408, j,
	rsb	r10, r10, r1	@ j, tmp409, D.36141
	cmp	r4, r10	@ i, j
	bne	.L871	@,
	add	r6, r6, r8	@ tmp415, tmp688, tmp689
	add	fp, fp, r6	@ tmp416, tmp690, tmp415
	ldrd	r2, [fp, #232]	@ D.36137, tmp416,
.L870:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	mov	r0, #0	@ D.36136,
	strd	r2, [r1]	@ D.36137, *pArgs_35(D)
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L959:
	ldr	r0, [sp, #36]	@, %sfp
	bl	DeleteRawPacket	@
	mov	r1, #0	@,
	ldr	r0, [sp, #12]	@, %sfp
	bl	DeleteRawPacketInBuffer	@
	b	.L883	@
.L890:
	ldr	r1, [sp, #24]	@ pArgs, %sfp
	ldrd	r2, [sp]	@ pts, %sfp
	strd	r2, [r1]	@ pts, *pArgs_35(D)
.L947:
	ldr	r3, [fp, #168]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head
	mov	r0, #0	@ D.36136,
	str	r3, [fp, #176]	@ MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].Head, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	ldr	r3, [sp, #32]	@ PushRawOver, %sfp
	str	r3, [r5, #2304]	@ PushRawOver, pSmInstArray_33->SmPushRaw.PushRawOver
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L896:
	ldr	r3, [sp, #24]	@ pArgs, %sfp
	strd	r6, [r3]	@ D.36142, *pArgs_35(D)
	b	.L947	@
.L963:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r4, r6	@ D.36142, D.36142
	mov	r5, r7	@ D.36142, D.36142
	mov	lr, ip	@ D.36136, i
	b	.L917	@
.L952:
	subs	r8, r8, r2	@ D.36142, D.36142, D.36142
	sbc	r9, r9, r3	@ D.36142, D.36142, D.36142
	mov	r2, r8	@ D.36142, D.36142
	mov	r3, r9	@ D.36142, D.36142
	ldrd	r8, [sp, #40]	@ gap,,
	cmp	r9, r3	@ gap, D.36142
	cmpeq	r8, r2	@ gap, D.36142
	strcc	r4, [r5, #2256]	@ i, MEM[(struct SEG_ARRAY_S *)pSmInstArray_33 + 73920B].History
	movcc	r0, r4	@ D.36136, i
	b	.L873	@
.L958:
	ldrd	r6, [sp, #16]	@ D.36142,,
	mov	lr, ip	@ D.36141, i
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	b	.L893	@
.L957:
	str	ip, [fp, #176]	@ i, MEM[(struct RAW_ARRAY_S *)pSmInstArray_33 + 168B].History
	mov	r6, r2	@ D.36142, D.36142
	mov	r7, r3	@ D.36142, D.36142
	mov	lr, ip	@ D.36141, i
	b	.L893	@
.L902:
	mvn	r0, #1	@ D.36136,
	b	.L938	@
.L859:
	mvn	r0, #0	@ D.36136,
	b	.L938	@
.L966:
	.align	2
.L965:
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
	ldmfd	sp!, {r4, lr}	@
	b	MEM_ReadPhyWord	@
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
	ldr	r5, .L975	@ tmp217,
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
	ldrsb	r3, [r4, #1]	@ D.36149, pSmCtrlReg_6(D)->SliceCheckFlag
	ldr	r1, [r4, #36]	@ pSmCtrlReg_6(D)->ScdProtocol, pSmCtrlReg_6(D)->ScdProtocol
	ldr	r2, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	ldr	r0, [r5]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r3, r3, asl #4	@ D.36149, D.36149,
	and	r1, r1, #15	@ D.36149, pSmCtrlReg_6(D)->ScdProtocol,
	and	r3, r3, #16	@ D.36149, D.36149,
	orr	r1, r1, r2, asl #8	@ D.36149, D.36149, pSmCtrlReg_6(D)->ScdLowdlyEnable,
	add	r0, r0, #2080	@, s_RegPhyBaseAddr,
	orr	r1, r1, r3	@, D.36149, D.36149
	bl	MEM_WritePhyWord	@
	ldr	r3, [r4, #104]	@ pSmCtrlReg_6(D)->ScdLowdlyEnable, pSmCtrlReg_6(D)->ScdLowdlyEnable
	cmp	r3, #0	@ pSmCtrlReg_6(D)->ScdLowdlyEnable,
	beq	.L970	@,
	ldr	r1, [r4, #108]	@, pSmCtrlReg_6(D)->reg_avs_flag
	ldr	r0, [r5]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
.L970:
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
.L976:
	.align	2
.L975:
	.word	.LANCHOR0
	.fnend
	.size	WriteScdVtrlReg, .-WriteScdVtrlReg
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
	bne	.L978	@,
	mov	r0, r4	@, pSmCtrlReg
	bl	WriteScdVtrlReg	@
.L978:
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
	add	r6, r0, #73728	@ tmp292, pScdInstance,
	cmn	r6, #192	@ tmp292,
	.pad #148
	sub	sp, sp, #148	@,,
	add	r2, r0, #168	@ pRawStreamArray, pScdInstance,
	add	r10, r6, #192	@ pStreamSegArray, tmp292,
	movne	r8, #0	@ D.36161,
	moveq	r8, #1	@ D.36161,
	cmn	r0, #168	@ pScdInstance,
	str	r2, [sp, #12]	@ pRawStreamArray, %sfp
	ldr	r2, [r0, #88]	@ D.36162, pScdInstance_9(D)->Config.ScdLowdlyEnable
	movne	r5, #0	@ D.36161,
	moveq	r5, #1	@ D.36161,
	orrs	r3, r5, r8	@ tmp178, D.36161, D.36161
	ldr	r9, [r0, #56]	@ StdType, pScdInstance_9(D)->Config.VidStd
	str	r2, [sp, #16]	@ D.36162, %sfp
	bne	.L983	@,
	add	r7, r0, #165888	@ __p, pScdInstance,
	mov	r4, r0	@ pScdInstance, pScdInstance
	add	r7, r7, #248	@ __p, __p,
	mov	r1, #12	@,
	str	r3, [sp, #24]	@ tmp178, SegStreamSize
	mov	r0, r7	@, __p
	str	r3, [sp, #28]	@ tmp178, FreeSegBufAddr
	bl	__memzero	@
	cmp	r5, #0	@ D.36161,
	bne	.L983	@,
	ldr	r2, [r6, #168]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r3, [r6, #172]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail
	ldr	r5, [r6, #188]	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].RawTotalSize
	subs	r3, r3, r2	@ StreamNum, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Tail, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].Head
	ldr	r2, [r6, #180]	@ MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset
	addmi	r3, r3, #1024	@ StreamNum, StreamNum,
	rsb	r5, r2, r5	@ RawStreamSize, MEM[(struct RAW_ARRAY_S *)pScdInstance_9(D) + 168B].FirstPacketOffset, RawStreamSize
	movs	fp, r5, asr #31	@ D.36160, RawStreamSize,
	bne	.L999	@,
	cmp	r5, #3	@ RawStreamSize,
	cmpgt	r3, #0	@, StreamNum,
	ble	.L995	@,
	add	r3, r4, #163840	@ tmp291, pScdInstance,
	movw	r0, #36409	@ tmp209,
	movt	r0, 14563	@ tmp209,
	ldr	r2, [r3, #2252]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail
	ldr	r6, [r3, #2248]	@ MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head
	add	r2, r2, #1152	@ D.36162, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Tail,
	rsb	r2, r6, r2	@ D.36162, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].Head, D.36162
	smull	r0, r1, r2, r0	@ tmp208, D.36162, tmp209
	mov	r6, r2, asr #31	@ tmp211, D.36162,
	rsb	r1, r6, r1, asr #8	@ tmp207, tmp211,,
	mov	r6, r1, asl #10	@ tmp214, tmp207,
	add	r6, r6, r1, lsl #7	@ tmp215, tmp214, tmp207,
	rsb	r6, r6, r2	@ D.36162, tmp215, D.36162
	rsb	r6, r6, #1152	@ StreamNum, D.36162,
	cmp	r6, #288	@ StreamNum,
	ble	.L986	@,
	mov	r0, r10	@, pStreamSegArray
	add	r2, sp, #24	@,,
	add	r1, sp, #28	@,,
	str	r3, [sp, #20]	@ tmp291, %sfp
	bl	GetFreeSegBuf	@
	ldr	r3, [sp, #20]	@ tmp291, %sfp
	ldr	r2, [sp, #24]	@ SegStreamSize, SegStreamSize
	ldr	r1, [sp, #28]	@ FreeSegBufAddr, FreeSegBufAddr
	ldr	r10, [r3, #2268]	@ SegBufSize, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufSize
	sub	r2, r2, #79	@ D.36162, SegStreamSize,
	add	r1, r1, #3	@ D.36163, FreeSegBufAddr,
	str	r2, [sp, #24]	@ D.36162, SegStreamSize
	bic	r1, r1, #3	@ D.36163, D.36163,
	str	r1, [sp, #28]	@ D.36163, FreeSegBufAddr
	cmp	r2, r10, asr #3	@ D.36162, SegBufSize,
	ble	.L986	@,
	cmp	r8, #0	@ D.36161,
	add	r8, r4, #176128	@ tmp293, pScdInstance,
	str	r6, [r3, #2336]	@ StreamNum, pScdInstance_9(D)->BufAddrCfg.UpMsgNum
	sub	ip, r9, #6	@ D.36161, StdType,
	ldreq	lr, [r3, #2264]	@ D.36162, MEM[(struct SEG_ARRAY_S *)pScdInstance_9(D) + 73920B].SegBufPhyAddr
	movne	lr, fp	@ D.36162, D.36160
	movne	r10, fp	@ D.36162, D.36160
	ldr	r0, [r3, #2312]	@ D.36162, pScdInstance_9(D)->BufAddrCfg.DownMsgPhyAddr
	addeq	r10, r10, lr	@ D.36162, SegBufSize, D.36162
	str	r1, [sp, #64]	@ D.36163, ScdCtrlReg.BufferIni
	str	lr, [sp, #56]	@ D.36162, ScdCtrlReg.BufferFirst
	clz	ip, ip	@ D.36161, D.36161
	ldr	lr, [r8, #3996]	@ tmp299, pScdInstance_9(D)->UpMsgStepNum
	cmp	r9, #1	@ StdType,
	cmpne	r9, #15	@, StdType,
	ldr	r1, [r3, #2324]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr
	mov	ip, ip, lsr #5	@ D.36161, D.36161,
	str	r10, [sp, #60]	@ D.36162, ScdCtrlReg.BufferLast
	mul	r6, lr, r6	@ D.36163, tmp299, StreamNum
	ldr	r10, [sp, #16]	@ D.36162, %sfp
	ldr	lr, [r3, #2316]	@ D.36164, pScdInstance_9(D)->BufAddrCfg.pDownMsgVirAddr
	str	r0, [sp, #36]	@ D.36162, ScdCtrlReg.DownMsgPhyAddr
	str	r10, [sp, #136]	@ D.36162, ScdCtrlReg.ScdLowdlyEnable
	str	lr, [sp, #40]	@ D.36164, ScdCtrlReg.pDownMsgVirAddr
	str	r6, [sp, #52]	@ D.36163, ScdCtrlReg.UpLen
	mov	r6, r6, asl #2	@ D.36163, D.36163,
	str	r1, [sp, #44]	@ pScdInstance_9(D)->BufAddrCfg.UpMsgPhyAddr, ScdCtrlReg.UpMsgPhyAddr
	str	r6, [r3, #2332]	@ D.36163, pScdInstance_9(D)->BufAddrCfg.UpMsgSize
	mov	r3, #1	@ tmp239,
	str	ip, [sp, #140]	@ D.36161, ScdCtrlReg.reg_avs_flag
	strb	r3, [sp, #34]	@ tmp239, ScdCtrlReg.ScdStart
	strb	r3, [sp, #32]	@ tmp239, ScdCtrlReg.ScdIntMask
	beq	.L997	@,
	cmp	ip, #0	@ D.36161,
	beq	.L1003	@,
.L1002:
	strb	r3, [sp, #33]	@ tmp264, ScdCtrlReg.SliceCheckFlag
	mov	r1, r7	@, __p
	str	r0, [sp, #4]	@ D.36162,
	add	r0, sp, #32	@,,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r7, #1	@ tmp266,
	str	lr, [sp]	@ D.36164,
	str	r9, [sp, #68]	@ D.36162, ScdCtrlReg.ScdProtocol
	str	r7, [sp, #72]	@ tmp266, ScdCtrlReg.ScdIniClr
	bl	ScdDriver	@
	subs	r6, r0, #0	@ Ret,
	movne	fp, r6	@ D.36160, Ret
	bne	.L999	@,
	ldr	r3, [sp, #24]	@ D.36162, SegStreamSize
	strb	r7, [r4, #5]	@ tmp266, pScdInstance_9(D)->IsWaitSCD
	cmp	r3, r5	@ D.36162, RawStreamSize
	str	r5, [r8, #3968]	@ RawStreamSize, pScdInstance_9(D)->PrevCfgRawSize
	str	r3, [r8, #3972]	@ D.36162, pScdInstance_9(D)->PrevCfgSegSize
	movlt	r2, #0	@ tmp295,
	movge	r2, #1	@ tmp295,
	strb	r6, [r4, #4]	@ Ret, pScdInstance_9(D)->FillNewRawFlag
	strb	r2, [r4, #2]	@ tmp295, pScdInstance_9(D)->LastCfgAllRawFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r8, #3992]	@, pScdInstance_9(D)->LastSCDStartTime
	strb	r6, [r4, #3]	@ Ret, pScdInstance_9(D)->InsertNewSegFlag
.L999:
	mov	r0, fp	@, D.36160
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L997:
	mov	r9, #0	@ D.36162,
.L988:
	mov	r3, #0	@ tmp264,
	b	.L1002	@
.L983:
	mvn	fp, #0	@ D.36160,
	mov	r0, fp	@, D.36160
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1003:
	sub	r1, r9, #2	@ D.36163, D.36162,
	cmp	r1, r3	@ D.36163,
	bls	.L1002	@,
	b	.L988	@
.L995:
	mvn	fp, #4	@ D.36160,
	b	.L999	@
.L986:
	mvn	fp, #5	@ D.36160,
	b	.L999	@
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
	ldr	r4, .L1047	@ tmp264,
	ldr	r3, [r4, #152]	@ D.36172, s_eScdDrvSleepStage
	cmp	r3, #0	@ D.36172,
	beq	.L1005	@,
	cmp	r3, #1	@ D.36172,
	moveq	r3, #2	@ tmp163,
	mvneq	r0, #2	@ D.36170,
	streq	r3, [r4, #152]	@ tmp163, s_eScdDrvSleepStage
	beq	.L1040	@,
.L1021:
	mvn	r0, #2	@ D.36170,
.L1040:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1005:
	mov	r5, r0	@ pNextInstId, pNextInstId
	mov	r1, sp	@,
	mov	r0, r3	@, D.36172
	ldr	r6, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	bl	SM_GetInfo	@
	ldrsb	r3, [sp]	@ stInstInfo.InstMode, stInstInfo.InstMode
	cmp	r3, #0	@ stInstInfo.InstMode,
	beq	.L1021	@,
	ldr	r3, [r6, #56]	@ D.36174, pSmInstArray_18->Config.VidStd
	sub	r2, r3, #8	@ D.36175, D.36174,
	cmp	r3, #5	@ D.36174,
	cmpne	r2, #1	@, D.36175,
	bls	.L1021	@,
	cmp	r3, #1	@ D.36174,
	beq	.L1043	@,
	cmp	r3, #4	@ D.36174,
	cmpne	r3, #18	@, D.36174,
	sub	r0, r3, #10	@ D.36175, D.36174,
	moveq	r2, #1	@ tmp180,
	movne	r2, #0	@ tmp180,
	cmp	r0, #4	@ D.36175,
	movhi	r0, r2	@, tmp187, tmp180
	orrls	r0, r2, #1	@,, tmp187, tmp180
	cmp	r0, #0	@ tmp187,
	bne	.L1021	@,
	cmp	r3, #17	@ D.36174,
	beq	.L1044	@,
.L1009:
	bl	OSAL_GetTimeInMs	@
	add	r2, r6, #176128	@ tmp189, pSmInstArray,
	ldr	r3, [r2, #3992]	@ pSmInstArray_18->LastSCDStartTime, pSmInstArray_18->LastSCDStartTime
	subs	r3, r0, r3	@ WaitTime, D.36175, pSmInstArray_18->LastSCDStartTime
	strmi	r0, [r2, #3992]	@ D.36175, pSmInstArray_18->LastSCDStartTime
	bmi	.L1012	@,
	ldrsb	r2, [r6, #2]	@ pSmInstArray_18->LastCfgAllRawFlag, pSmInstArray_18->LastCfgAllRawFlag
	cmp	r2, #1	@ pSmInstArray_18->LastCfgAllRawFlag,
	beq	.L1045	@,
.L1012:
	ldrsb	r1, [r6]	@ pSmInstArray_18->SegFullFlag, pSmInstArray_18->SegFullFlag
	cmp	r1, #1	@ pSmInstArray_18->SegFullFlag,
	movne	r3, #0	@ tmp245,
	strneb	r3, [r6, #1]	@ tmp245, pSmInstArray_18->IsCounting
	beq	.L1046	@,
.L1016:
	mov	r0, r6	@, pSmInstArray
	bl	CutStreamWithSCD	@
	cmn	r0, #6	@ Ret,
	moveq	r3, #1	@ tmp247,
	streqb	r3, [r6]	@ tmp247, pSmInstArray_18->SegFullFlag
	beq	.L1021	@,
	cmp	r0, #0	@ Ret,
	mov	r3, #0	@ tmp249,
	strb	r3, [r6]	@ tmp249, pSmInstArray_18->SegFullFlag
	bne	.L1021	@,
	str	r0, [r5]	@ Ret, *pNextInstId_57(D)
	mov	r0, #1	@,
	ldr	r3, [r4, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ pSmInstArray,
	addne	r3, r3, #163840	@ tmp254, pSmInstArray,
	movne	r2, #1	@ tmp255,
	strne	r2, [r3, #2412]	@ tmp255, pSmInstArray_39->Mode
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L1042	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L1047+4	@ tmp259,
	ldr	r3, [r4, #168]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, .L1047	@ tmp256,
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.36175, last_rec_pos_time, D.36175
	cmp	r3, r1	@ D.36175, g_TraceBsPeriod
	strhi	r0, [r2, #168]	@ D.36175, last_rec_pos_time
.L1042:
	mov	r0, #0	@ D.36170,
	b	.L1040	@
.L1044:
	bl	SM_CopyYuvToDnr	@
	b	.L1021	@
.L1043:
	ldr	r3, [r6, #72]	@ pSmInstArray_18->Config.StdExt.Vc1Ext.IsAdvProfile, pSmInstArray_18->Config.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #0	@ pSmInstArray_18->Config.StdExt.Vc1Ext.IsAdvProfile,
	beq	.L1021	@,
	b	.L1009	@
.L1045:
	ldrsb	r2, [r6, #4]	@ pSmInstArray_18->FillNewRawFlag, pSmInstArray_18->FillNewRawFlag
	cmp	r3, #199	@ WaitTime,
	cmple	r2, #0	@, pSmInstArray_18->FillNewRawFlag,
	beq	.L1021	@,
	b	.L1012	@
.L1046:
	add	r7, r6, #73728	@ D.36177, pSmInstArray,
	add	r7, r7, #192	@ D.36177, D.36177,
	cmp	r7, #0	@ D.36177,
	beq	.L1014	@,
	ldrsb	r0, [r6, #1]	@ pSmInstArray_18->IsCounting, pSmInstArray_18->IsCounting
	add	r3, r6, #163840	@ tmp207, pSmInstArray,
	cmp	r0, #0	@ pSmInstArray_18->IsCounting,
	ldr	r10, [r3, #2288]	@ FreshNum, MEM[(struct SEG_ARRAY_S *)pSmInstArray_18 + 73920B].SegFreshNum
	ldr	r9, [r3, #2284]	@ FreshSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_18 + 73920B].SegFreshSize
	ldr	r8, [r3, #2268]	@ SegBufTotalSize, MEM[(struct SEG_ARRAY_S *)pSmInstArray_18 + 73920B].SegBufSize
	bne	.L1015	@,
	add	r8, r8, r8, lsr #31	@ tmp219, SegBufTotalSize, SegBufTotalSize,
	cmp	r9, r8, asr #1	@ FreshSize, tmp219,
	movlt	r3, #1	@ tmp222,
	movge	r3, #0	@ tmp222,
	cmp	r10, #127	@ FreshNum,
	movgt	r10, #0	@, tmp227
	andle	r10, r3, #1	@,, tmp227, tmp222
	cmp	r10, #0	@ tmp227,
	beq	.L1016	@,
	strb	r1, [r6, #1]	@ pSmInstArray_18->SegFullFlag, pSmInstArray_18->IsCounting
	bl	CalcInstBlockTime	@
	b	.L1016	@
.L1014:
	ldrsb	r3, [r6, #1]	@ pSmInstArray_18->IsCounting, pSmInstArray_18->IsCounting
	cmp	r3, #0	@ pSmInstArray_18->IsCounting,
	movne	r10, r7	@ FreshNum, D.36177
	movne	r8, r7	@ SegBufTotalSize, D.36177
	movne	r9, r7	@ FreshSize, D.36177
	beq	.L1016	@,
.L1015:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	CalcInstBlockTime	@
	cmp	r0, #1000	@,
	ble	.L1016	@,
	add	r3, r8, #3	@ tmp234, SegBufTotalSize,
	cmp	r8, #0	@ SegBufTotalSize,
	movlt	r8, r3	@ SegBufTotalSize, tmp234
	cmp	r9, r8, asr #2	@ FreshSize, SegBufTotalSize,
	movlt	r3, #1	@ tmp237,
	movge	r3, #0	@ tmp237,
	cmp	r10, #63	@ FreshNum,
	movgt	r10, #0	@, tmp240
	andle	r10, r3, #1	@,, tmp240, tmp237
	cmp	r10, #0	@ tmp240,
	beq	.L1016	@,
	mov	r0, r7	@, D.36177
	mvn	r1, #0	@,
	bl	ReleaseStreamSeg	@
	mov	r3, #0	@ tmp241,
	strb	r3, [r6, #1]	@ tmp241, pSmInstArray_18->IsCounting
	strb	r3, [r6]	@ tmp241, pSmInstArray_18->SegFullFlag
	b	.L1016	@
.L1048:
	.align	2
.L1047:
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
	ldr	r4, .L1064	@ tmp146,
	mov	r0, r3	@ D.36181, tmp122
	str	r3, [sp, #4]	@ tmp122, NextInstID
	b	.L1051	@
.L1050:
	ldr	r0, [sp, #4]	@ NextInstID, NextInstID
	add	r0, r0, #1	@ D.36181, NextInstID,
	str	r0, [sp, #4]	@ D.36181, NextInstID
	cmp	r0, #0	@ D.36181,
	bgt	.L1062	@,
.L1051:
	add	r3, r4, r0, lsl #2	@ tmp125, tmp146, D.36181,
	ldr	r3, [r3, #128]	@ D.36180, s_SmIIS.pSmInstArray
	cmp	r3, #0	@ D.36180,
	add	r2, r3, #163840	@ tmp128, D.36180,
	beq	.L1050	@,
	ldr	r3, [r2, #2412]	@ _9->Mode, _9->Mode
	cmp	r3, #1	@ _9->Mode,
	bne	.L1050	@,
	bl	FillRawData	@
	b	.L1050	@
.L1062:
	ldr	r3, [r4, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	ldr	r4, .L1064	@ tmp131,
	cmp	r3, #0	@ s_SmIIS.SCDState,
	bne	.L1052	@,
	add	r0, sp, #4	@,,
	bl	SM_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L1063	@,
.L1049:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1052:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #148]	@ D.36182, s_SmIIS.LastProcessTime
	cmp	r0, r3	@ CurTime, D.36182
	strcc	r0, [r4, #148]	@ CurTime, s_SmIIS.LastProcessTime
	bcc	.L1049	@,
	rsb	r0, r3, r0	@ DelayTime, D.36182, CurTime
	cmp	r0, #2000	@ DelayTime,
	bls	.L1049	@,
	bl	ResetSCD	@
	ldr	r0, [r4, #140]	@ s_SmIIS.ThisInstID, s_SmIIS.ThisInstID
	mov	r3, #0	@ tmp143,
	str	r3, [r4, #144]	@ tmp143, s_SmIIS.SCDState
	cmp	r0, r3	@ s_SmIIS.ThisInstID,
	bne	.L1049	@,
	bl	DeleteLastSendRaw.part.1	@
	b	.L1049	@
.L1063:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp137,
	str	r2, [r4, #144]	@ tmp137, s_SmIIS.SCDState
	str	r3, [r4, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #148]	@, s_SmIIS.LastProcessTime
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L1065:
	.align	2
.L1064:
	.word	.LANCHOR0
	.fnend
	.size	SM_Wakeup, .-SM_Wakeup
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
	ldr	r0, .L1081	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r0, #51264	@,
	movt	r0, 4115	@,
	bl	MEM_ReadPhyWord	@
	tst	r0, #1	@,
	beq	.L1077	@,
	ldr	r4, .L1081+4	@ tmp188,
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
	bne	.L1069	@,
	ldr	r5, [r4, #140]	@ D.36188, s_SmIIS.ThisInstID
.L1070:
	add	r3, r4, r5, lsl #2	@ tmp156, tmp188, D.36188,
	ldr	r1, [r4, #136]	@ s_SmIIS.IsScdDrvOpen, s_SmIIS.IsScdDrvOpen
	ldr	r2, .L1081+4	@ tmp154,
	ldr	r0, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r1, #0	@ s_SmIIS.IsScdDrvOpen,
	cmpne	r0, #0	@, pSmInstArray,
	beq	.L1078	@,
	ldr	r3, [r2, #144]	@ s_SmIIS.SCDState, s_SmIIS.SCDState
	cmp	r3, #1	@ s_SmIIS.SCDState,
	beq	.L1079	@,
.L1073:
	mov	r0, r5	@, D.36188
	mov	r3, #0	@ tmp186,
	str	r3, [r4, #172]	@ tmp186, s_SCDInISR
	bl	SM_GiveThreadEvent	@
.L1077:
	ldr	r0, .L1081	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1069:
	bl	OSAL_GetTimeInMs	@
	ldr	r5, [r4, #140]	@ D.36188, s_SmIIS.ThisInstID
	ldr	r3, .L1081+8	@ tmp149,
	add	r2, r4, r5, lsl #2	@ tmp145, tmp188, D.36188,
	ldr	r1, [r3]	@ g_TraceBsPeriod, g_TraceBsPeriod
	ldr	r3, [r2, #176]	@ tmp148, last_rec_pos_time
	rsb	r3, r3, r0	@ D.36186, tmp148, CurTimeInMs
	cmp	r3, r1	@ D.36186, g_TraceBsPeriod
	strhi	r0, [r2, #176]	@ CurTimeInMs, last_rec_pos_time
	b	.L1070	@
.L1078:
	ldr	r0, .L1081	@,
	mov	r3, #0	@ tmp168,
	str	r3, [r2, #172]	@ tmp168, s_SCDInISR
	str	r3, [r2, #144]	@ tmp168, s_SmIIS.SCDState
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1079:
	add	r3, r0, #163840	@ tmp175, pSmInstArray,
	ldr	r3, [r3, #2412]	@ pSmInstArray_27->Mode, pSmInstArray_27->Mode
	cmp	r3, #1	@ pSmInstArray_27->Mode,
	beq	.L1080	@,
.L1074:
	add	r0, sp, #4	@,,
	mov	r3, #0	@ tmp178,
	str	r3, [r4, #144]	@ tmp178, s_SmIIS.SCDState
	bl	SM_DoNextInstance	@
	ldr	r6, .L1081+4	@ tmp177,
	cmp	r0, #0	@,
	bne	.L1073	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp183,
	str	r2, [r6, #144]	@ tmp183, s_SmIIS.SCDState
	str	r3, [r6, #140]	@ NextInstID, s_SmIIS.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #148]	@, s_SmIIS.LastProcessTime
	b	.L1073	@
.L1080:
	bl	ProcessScdReturn	@
	b	.L1074	@
.L1082:
	.align	2
.L1081:
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	g_TraceBsPeriod
	.fnend
	.size	SM_SCDIntServeProc, .-SM_SCDIntServeProc
	.align	2
	.global	PrintDownMsg
	.type	PrintDownMsg, %function
PrintDownMsg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	PrintDownMsg, .-PrintDownMsg
	.align	2
	.global	PrintScdStateReg
	.type	PrintScdStateReg, %function
PrintScdStateReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	PrintScdStateReg, .-PrintScdStateReg
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
	bhi	.L1089	@,
	cmp	r0, #25	@ eCapLevel,
	beq	.L1096	@,
	sub	r0, r0, #13	@ tmp129, eCapLevel,
	cmp	r0, #10	@ tmp129,
	ldrls	pc, [pc, r0, asl #2]	@ tmp129
	b	.L1090	@
.L1091:
	.word	.L1094
	.word	.L1094
	.word	.L1094
	.word	.L1094
	.word	.L1094
	.word	.L1092
	.word	.L1092
	.word	.L1092
	.word	.L1092
	.word	.L1092
	.word	.L1092
.L1092:
	mov	r0, #20971520	@ D.36198,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1094:
	mov	r0, #4194304	@ D.36198,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1090:
	mov	r0, #3145728	@ D.36198,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1096:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanWidth	@
	mov	r5, r0	@ ChanWidth,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetChanHeight	@
	cmn	r0, #1	@ ChanHeight,
	cmnne	r5, #1	@, ChanWidth,
	beq	.L1089	@,
	mul	r3, r0, r5	@ D.36200, ChanHeight, ChanWidth
	mov	r0, #57344	@ tmp128,
	movt	r0, 31	@ tmp128,
	cmp	r3, r0	@ D.36200, tmp128
	movle	r0, #3145728	@ D.36198,
	movgt	r0, #20971520	@ D.36198,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1089:
	mvn	r0, #0	@ D.36198,
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
	mov	r3, r3, lsr #5	@ tmp157, tmp157,
	cmp	r0, #0	@ SmID,
	orrne	r3, r3, #1	@,, tmp160, tmp157
	cmp	r3, #0	@ tmp160,
	bne	.L1121	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r7, .L1123	@ tmp238,
	add	r3, r7, r0, lsl #2	@ tmp163, tmp238, SmID,
	ldr	r6, [r3, #128]	@ pSmInstArray, s_SmIIS.pSmInstArray
	cmp	r6, #0	@ pSmInstArray,
	beq	.L1100	@,
	ldr	r3, [r1, #12]	@ D.36206, pSmCfg_10(D)->BufPhyAddr
	mov	r4, r1	@ pSmCfg, pSmCfg
	ldr	r2, [r6, #60]	@ pSmInstArray_14->Config.BufPhyAddr, pSmInstArray_14->Config.BufPhyAddr
	cmp	r2, r3	@ pSmInstArray_14->Config.BufPhyAddr, D.36206
	addeq	r5, r6, #48	@ D.36213, pSmInstArray,
	beq	.L1102	@,
	cmp	r3, #0	@ D.36206,
	beq	.L1100	@,
	ldr	r3, [r1]	@ pSmCfg_10(D)->pBufVirAddr, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #0	@ pSmCfg_10(D)->pBufVirAddr,
	beq	.L1100	@,
	ldr	ip, [r7, #32]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, s_SmIIS.ScdDrvMem.UpMsgMemAddr
	add	r5, r6, #163840	@ tmp237, pSmInstArray,
	ldr	r9, [r7, #20]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, s_SmIIS.ScdDrvMem.DownMsgMemAddr
	mov	r3, #1152	@ tmp193,
	ldr	r8, [r7, #24]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr
	ldr	lr, [r7, #28]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, s_SmIIS.ScdDrvMem.DownMsgMemSize
	ldr	r1, [r7, #36]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr
	ldr	r2, [r7, #40]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, s_SmIIS.ScdDrvMem.UpMsgMemSize
	str	ip, [r5, #2324]	@ s_SmIIS.ScdDrvMem.UpMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].UpMsgPhyAddr
	str	r9, [r5, #2312]	@ s_SmIIS.ScdDrvMem.DownMsgMemAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].DownMsgPhyAddr
	str	r8, [r5, #2316]	@ s_SmIIS.ScdDrvMem.pDownMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].pDownMsgVirAddr
	str	r1, [r5, #2328]	@ s_SmIIS.ScdDrvMem.pUpMsgMemVirAddr, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].pUpMsgVirAddr
	str	lr, [r5, #2320]	@ s_SmIIS.ScdDrvMem.DownMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].DownMsgSize
	str	r2, [r5, #2332]	@ s_SmIIS.ScdDrvMem.UpMsgMemSize, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].UpMsgSize
	str	r3, [r5, #2336]	@ tmp193, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].UpMsgNum
	ldr	r2, [r4, #12]	@ D.36206, pSmCfg_10(D)->BufPhyAddr
	ldr	r3, [r4, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	add	r1, r2, #3	@ D.36206, D.36206,
	ldr	lr, [r4]	@ D.36207, pSmCfg_10(D)->pBufVirAddr
	cmp	r3, #6	@ pSmCfg_10(D)->VidStd,
	bic	r1, r1, #3	@ TmpPhyAddr, D.36206,
	rsb	r9, r2, r1	@ ByteOffsetInWord, D.36206, TmpPhyAddr
	movne	ip, #131072	@ D.36204,
	moveq	ip, #1048576	@ D.36204,
	mov	r8, ip	@ s32ScdBlankSegLen, D.36204
	add	r1, r1, ip	@ D.36206, TmpPhyAddr, s32ScdBlankSegLen
	add	ip, ip, r9	@ D.36204, D.36204, ByteOffsetInWord
	str	r1, [r5, #2400]	@ D.36206, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].SegBufPhyAddr
	add	ip, lr, ip	@ D.36207, D.36207, D.36204
	str	ip, [r5, #2308]	@ D.36207, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].pSegBufVirAddr
	bl	SetMaxSegSize	@
	ldr	r1, [r4, #16]	@ pSmCfg_10(D)->BufSize, pSmCfg_10(D)->BufSize
	rsb	r2, r9, r1	@ D.36206, ByteOffsetInWord, pSmCfg_10(D)->BufSize
	cmn	r0, #1	@,
	moveq	r0, #2097152	@ SmMaxSegBufSize,
	cmp	r0, r2	@ SmMaxSegBufSize, D.36206
	blt	.L1122	@,
	rsb	r3, r8, r2	@ D.36206, s32ScdBlankSegLen, D.36206
	sub	r3, r3, #1024	@ D.36206, D.36206,
	str	r3, [r5, #2404]	@ D.36206, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].SegBufSize
	cmp	r3, #262144	@ D.36206,
	blt	.L1100	@,
.L1106:
	add	r0, r6, #73728	@, pSmInstArray,
	ldr	r2, [r5, #2308]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].pSegBufVirAddr
	ldr	r1, [r5, #2400]	@, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].SegBufPhyAddr
	add	r0, r0, #192	@,,
	bl	ConfigStreamSegArray	@
	add	r5, r6, #48	@ D.36213, pSmInstArray,
	ldr	r3, [r4, #20]	@ pSmCfg_10(D)->RegPhyBaseAddr, pSmCfg_10(D)->RegPhyBaseAddr
	mov	r2, #120	@,
	mov	r0, r5	@, D.36213
	mov	r1, r4	@, pSmCfg
	str	r3, [r7]	@ pSmCfg_10(D)->RegPhyBaseAddr, s_RegPhyBaseAddr
	bl	memcpy	@
.L1102:
	add	r6, r6, #176128	@ tmp230, pSmInstArray,
	mov	r0, r5	@, D.36213
	mov	r2, #120	@,
	mov	r1, r4	@, pSmCfg
	bl	memcpy	@
	mov	r3, #2	@ tmp231,
	str	r3, [r6, #3996]	@ tmp231, pSmInstArray_14->UpMsgStepNum
	ldr	r3, [r4, #8]	@ pSmCfg_10(D)->VidStd, pSmCfg_10(D)->VidStd
	cmp	r3, #2	@ pSmCfg_10(D)->VidStd,
	moveq	r3, #3	@ tmp235,
	moveq	r0, #0	@ D.36203,
	streq	r3, [r6, #3996]	@ tmp235, pSmInstArray_14->UpMsgStepNum
	movne	r0, #0	@ D.36203,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1122:
	rsb	r3, r8, r0	@ D.36206, s32ScdBlankSegLen, SmMaxSegBufSize
	sub	r3, r3, #1024	@ D.36206, D.36206,
	str	r3, [r5, #2404]	@ D.36206, MEM[(struct SM_BUFFERCFG_S *)pSmInstArray_14 + 166148B].SegBufSize
	b	.L1106	@
.L1100:
	mvn	r0, #0	@ D.36203,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1121:
	mvn	r0, #0	@ D.36203,
	bx	lr	@
.L1124:
	.align	2
.L1123:
	.word	.LANCHOR0
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
	bne	.L1131	@,
	ldr	r3, .L1136	@ tmp131,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #124
	sub	sp, sp, #124	@,,
	ldr	r4, [r3, #128]	@ __p, s_SmIIS.pSmInstArray
	cmp	r4, #0	@ __p,
	beq	.L1132	@,
	ldr	r3, [r4, #84]	@ MEM[(struct SM_INSTANCE_S *)__p_6].Config.DisContinueRawPacketFlag, MEM[(struct SM_INSTANCE_S *)__p_6].Config.DisContinueRawPacketFlag
	sub	r3, r3, #1	@ D.36224, MEM[(struct SM_INSTANCE_S *)__p_6].Config.DisContinueRawPacketFlag,
	cmp	r3, #1	@ D.36224,
	bls	.L1135	@,
.L1127:
	mov	r6, #0	@ tmp135,
	mvn	r3, #0	@ tmp136,
	add	r1, r4, #48	@, __p,
	str	r6, [r4, #84]	@ tmp135, MEM[(struct SM_INSTANCE_S *)__p_6].Config.DisContinueRawPacketFlag
	str	r3, [r4, #80]	@ tmp136, MEM[(struct SM_INSTANCE_S *)__p_6].Config.LastRawDisContinueCount
	mov	r2, #120	@,
	mov	r0, sp	@,
	add	r5, r4, #163840	@ tmp174, __p,
	bl	memcpy	@
	mov	r0, r6	@, tmp135
	ldr	r6, [r5, #2412]	@ TmpMode, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
	bl	SM_Stop	@
	adds	r0, r4, #168	@ D.36227, __p,
	moveq	r1, r0	@ D.36228, D.36227
	beq	.L1128	@,
	add	r2, r4, #73728	@ tmp146, __p,
	ldr	r3, [r2, #172]	@ MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Tail
	ldr	r1, [r2, #168]	@ MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Head, MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Head
	subs	r1, r3, r1	@ RawNum, MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Tail, MEM[(struct RAW_ARRAY_S *)__p_6 + 168B].Head
	addmi	r1, r1, #1024	@ D.36228, RawNum,
.L1128:
	bl	DeleteRawPacket	@
	mov	r1, #1	@,
	mov	r0, #0	@,
	mvn	r8, #0	@ tmp161,
	bl	DeleteRawPacketInBuffer	@
	movw	r1, #49056	@,
	mov	r0, r4	@, __p
	movt	r1, 2	@,
	ldrb	r7, [r5, #2408]	@ zero_extendqisi2	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_6].InstID
	bl	__memzero	@
	add	r3, r4, #179200	@ tmp159, __p,
	add	r4, r4, #176128	@ tmp163, __p,
	add	r3, r3, #896	@ tmp159, tmp159,
	mov	r2, #2	@ tmp164,
	mov	r1, sp	@,
	sxtb	r7, r7	@ s8TmpInstID, s8TmpInstID
	mvn	r9, #0	@,
	str	r7, [r5, #2408]	@ s8TmpInstID, MEM[(struct SM_INSTANCE_S *)__p_6].InstID
	mov	r0, #0	@,
	strd	r8, [r3, #-8]	@ tmp161, tmp159,
	str	r2, [r4, #3996]	@ tmp164, MEM[(struct SM_INSTANCE_S *)__p_6].UpMsgStepNum
	sub	r6, r6, #1	@ D.36224, TmpMode,
	bl	SM_Config	@
	cmp	r6, #1	@ D.36224,
	movls	r0, #0	@ D.36222,
	movls	r3, #1	@ tmp169,
	movhi	r0, #0	@ tmp172,
	strls	r3, [r5, #2412]	@ tmp169, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
	strhi	r0, [r5, #2412]	@ tmp172, MEM[(struct SM_INSTANCE_S *)__p_6].Mode
.L1126:
	add	sp, sp, #124	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1135:
	add	r1, r4, #96	@, __p,
	bl	ReleaseRawStreamData	@
	b	.L1127	@
.L1131:
	mvn	r0, #0	@ D.36222,
	bx	lr	@
.L1132:
	mvn	r0, #0	@ D.36222,
	b	.L1126	@
.L1137:
	.align	2
.L1136:
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
	.type	LastEventTime.32698, %object
	.size	LastEventTime.32698, 4
LastEventTime.32698:
	.space	4
	.type	last_rec_pos_time.32903, %object
	.size	last_rec_pos_time.32903, 4
last_rec_pos_time.32903:
	.space	4
	.type	last_rec_pos_time.32985, %object
	.size	last_rec_pos_time.32985, 4
last_rec_pos_time.32985:
	.space	4
	.type	s_SCDInISR, %object
	.size	s_SCDInISR, 4
s_SCDInISR:
	.space	4
	.type	last_rec_pos_time.32999, %object
	.size	last_rec_pos_time.32999, 4
last_rec_pos_time.32999:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
