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
	.file	"dnr_hal_v200.c"
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
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(dnr_hal_v200)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_hal_v200.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_hal_v200.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_hal_v200.o
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
	.global	DNRHAL_V200_Init
	.type	DNRHAL_V200_Init, %function
DNRHAL_V200_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #2048	@,
	ldr	r4, .L3	@ tmp111,
	mov	r0, r4	@, tmp111
	bl	__memzero	@
	mov	r0, #0	@,
	movt	r0, 4165	@,
	add	r3, r4, #4	@ tmp116, tmp111,
	add	r2, r4, #8	@ tmp119, tmp111,
	str	r3, [r4, #2052]	@ tmp116, g_Dnr_v200_OffReg.dnr_basic_cfg0
	str	r2, [r4, #2056]	@ tmp119, g_Dnr_v200_OffReg.dnr_basic_cfg1
	add	r3, r4, #12	@ tmp122, tmp111,
	add	r2, r4, #16	@ tmp125, tmp111,
	str	r3, [r4, #2092]	@ tmp122, g_Dnr_v200_OffReg.dnr_dblk_uvoffset_1d
	str	r2, [r4, #2088]	@ tmp125, g_Dnr_v200_OffReg.dnr_dblk_ystaddr_1d
	add	r3, r4, #20	@ tmp128, tmp111,
	add	r2, r4, #24	@ tmp131, tmp111,
	str	r3, [r4, #2060]	@ tmp128, g_Dnr_v200_OffReg.dnr_basic_cfg2
	str	r2, [r4, #2072]	@ tmp131, g_Dnr_v200_OffReg.dnr_db_thr
	add	r3, r4, #28	@ tmp134, tmp111,
	add	r2, r4, #32	@ tmp137, tmp111,
	str	r3, [r4, #2108]	@ tmp134, g_Dnr_v200_OffReg.dnr_ystride_2d
	str	r2, [r4, #2068]	@ tmp137, g_Dnr_v200_OffReg.dnr_dnr_thr
	add	r3, r4, #36	@ tmp140, tmp111,
	add	r2, r4, #40	@ tmp143, tmp111,
	str	r3, [r4, #2144]	@ tmp140, g_Dnr_v200_OffReg.dnr_do_to
	str	r2, [r4, #2140]	@ tmp143, g_Dnr_v200_OffReg.dnr_dr_to
	add	r3, r4, #44	@ tmp146, tmp111,
	add	r2, r4, #52	@ tmp149, tmp111,
	str	r3, [r4, #2124]	@ tmp146, g_Dnr_v200_OffReg.dnr_emar_id
	str	r2, [r4, #2112]	@ tmp149, g_Dnr_v200_OffReg.dnr_int_clr
	add	r3, r4, #56	@ tmp152, tmp111,
	add	r2, r4, #60	@ tmp155, tmp111,
	str	r3, [r4, #2116]	@ tmp152, g_Dnr_v200_OffReg.dnr_int_mask
	str	r2, [r4, #2160]	@ tmp155, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	add	r3, r4, #100	@ tmp158, tmp111,
	add	r2, r4, #104	@ tmp161, tmp111,
	str	r3, [r4, #2120]	@ tmp158, g_Dnr_v200_OffReg.dnr_offline_th
	str	r2, [r4, #2136]	@ tmp161, g_Dnr_v200_OffReg.dnr_prc_to
	add	r3, r4, #108	@ tmp164, tmp111,
	add	r2, r4, #112	@ tmp167, tmp111,
	str	r3, [r4, #2128]	@ tmp164, g_Dnr_v200_OffReg.dnr_rpt_cnt
	str	r2, [r4, #2132]	@ tmp167, g_Dnr_v200_OffReg.dnr_sed_to
	add	r3, r4, #116	@ tmp170, tmp111,
	add	r2, r4, #120	@ tmp173, tmp111,
	str	r3, [r4, #2048]	@ tmp170, g_Dnr_v200_OffReg.dnr_start
	str	r2, [r4, #2148]	@ tmp173, g_Dnr_v200_OffReg.dnr_tf_to
	add	r3, r4, #124	@ tmp176, tmp111,
	add	r2, r4, #128	@ tmp179, tmp111,
	str	r3, [r4, #2080]	@ tmp176, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	str	r2, [r4, #2100]	@ tmp179, g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld
	add	r3, r4, #132	@ tmp182, tmp111,
	add	r2, r4, #136	@ tmp185, tmp111,
	str	r3, [r4, #2076]	@ tmp182, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	str	r2, [r4, #2096]	@ tmp185, g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld
	add	r3, r4, #140	@ tmp188, tmp111,
	add	r2, r4, #144	@ tmp191, tmp111,
	str	r3, [r4, #2084]	@ tmp188, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	str	r2, [r4, #2104]	@ tmp191, g_Dnr_v200_OffReg.dnr_ystride_1d
	add	r3, r4, #152	@ tmp194, tmp111,
	add	r2, r4, #156	@ tmp197, tmp111,
	str	r3, [r4, #2164]	@ tmp194, g_Dnr_v200_OffReg.dnr_use_pic_qp
	str	r2, [r4, #2168]	@ tmp197, g_Dnr_v200_OffReg.dnr_dx_scale
	add	r3, r4, #160	@ tmp200, tmp111,
	add	r2, r4, #164	@ tmp203, tmp111,
	str	r3, [r4, #2172]	@ tmp200, g_Dnr_v200_OffReg.dnr_version_id
	str	r4, [r4, #2064]	@ tmp111, g_Dnr_v200_OffReg.dnr_basic_cfg
	add	r3, r4, #168	@ tmp206, tmp111,
	str	r2, [r4, #2152]	@ tmp203, g_Dnr_v200_OffReg.dnr_thr_1
	str	r3, [r4, #2156]	@ tmp206, g_Dnr_v200_OffReg.dnr_thr_2
	bl	MEM_Phy2Vir	@
	ldr	r3, .L3+4	@ tmp208,
	str	r0, [r3]	@, g_DnrHwMem.pDnrRegVirAddr
	ldmfd	sp!, {r4, pc}	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	g_DnrHwMem
	.fnend
	.size	DNRHAL_V200_Init, .-DNRHAL_V200_Init
	.align	2
	.global	DNRHAL_V200_Start
	.type	DNRHAL_V200_Start, %function
DNRHAL_V200_Start:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7	@ tmp120,
	mov	r2, #0	@ tmp121,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@ tmp123,
	ldr	r1, [r3]	@ D.34838, g_DnrHwMem.pDnrRegVirAddr
	str	r2, [r1]	@ tmp121, MEM[(volatile HI_S32 *)_2]
	ldr	r1, [r3]	@ D.34838, g_DnrHwMem.pDnrRegVirAddr
	str	r0, [r1]	@ tmp123, MEM[(volatile HI_S32 *)_4]
	ldr	r3, [r3]	@ D.34838, g_DnrHwMem.pDnrRegVirAddr
	str	r2, [r3]	@ tmp121, MEM[(volatile HI_S32 *)_6]
	bl	vfmw_dprint_nothing	@
	ldr	r2, .L7+4	@ tmp127,
	ldr	r3, .L7+8	@ tmp126,
	ldr	r2, [r2]	@ g_HwMem[0].pVdmRegVirAddr, g_HwMem[0].pVdmRegVirAddr
	ldr	r3, [r3, #2172]	@ D.34839, g_Dnr_v200_OffReg.dnr_version_id
	ldr	r2, [r2, #44]	@ D.34840, *_13
	str	r2, [r3]	@ D.34840, _9->dnr_version_id
	ldmfd	sp!, {r4, pc}	@
.L8:
	.align	2
.L7:
	.word	g_DnrHwMem
	.word	g_HwMem
	.word	.LANCHOR0
	.fnend
	.size	DNRHAL_V200_Start, .-DNRHAL_V200_Start
	.align	2
	.global	DNRHAL_V200_Reset
	.type	DNRHAL_V200_Reset, %function
DNRHAL_V200_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r0, #20592	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movt	r0, 4127	@,
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ pDnrResetVirAddr,
	mov	r0, #0	@,
	movt	r0, 4165	@,
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ pDnrResetVirAddr,
	cmpne	r0, #0	@,,
	beq	.L21	@,
	ldr	r6, .L23	@ tmp147,
	ldr	r3, .L23+4	@ tmp146,
	ldr	r1, [r6]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r3, #2116]	@ D.34853, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r1, [r1, #56]	@ D.34855, *_17
	ldrb	r2, [r3]	@ zero_extendqisi2	@, _13->int_dnr_mask
	bfi	r2, r1, #0, #1	@ _13->int_dnr_mask, D.34855,,
	strb	r2, [r3]	@ _13->int_dnr_mask, _13->int_dnr_mask
	bl	vfmw_dprint_nothing	@
	ldr	r5, [r4]	@ reg, *pDnrResetVirAddr_6
	orr	r3, r5, #2	@ D.34855, reg,
	str	r3, [r4]	@ D.34855, MEM[(volatile HI_S32 *)pDnrResetVirAddr_6]
	ldr	r3, [r6]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	add	r1, r3, #4	@ D.34856, g_DnrHwMem.pDnrRegVirAddr,
	ldr	r3, [r3, #4]	@ dat, *_41
	tst	r3, #65536	@ dat,
	beq	.L11	@,
	mov	r3, #1	@ i,
	movw	ip, #10000	@ tmp158,
	b	.L13	@
.L22:
	add	r3, r3, #1	@ i, i,
	cmp	r3, ip	@ i, tmp158
	beq	.L14	@,
.L13:
	ldr	r2, [r1]	@ dat, *_41
	tst	r2, #65536	@ dat,
	bne	.L22	@,
	movw	r2, #8999	@ tmp157,
	cmp	r3, r2	@ i, tmp157
	bgt	.L14	@,
.L11:
	bic	r5, r5, #2	@ D.34855, reg,
	str	r5, [r4]	@ D.34855, MEM[(volatile HI_S32 *)pDnrResetVirAddr_6]
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L21:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L14:
	bl	vfmw_dprint_nothing	@
	b	.L11	@
.L24:
	.align	2
.L23:
	.word	g_DnrHwMem
	.word	.LANCHOR0
	.fnend
	.size	DNRHAL_V200_Reset, .-DNRHAL_V200_Reset
	.align	2
	.global	DNRHAL_V200_ClearIntState
	.type	DNRHAL_V200_ClearIntState, %function
DNRHAL_V200_ClearIntState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L26	@ tmp118,
	ldr	r0, .L26+4	@ tmp123,
	ldr	r1, [r2, #2112]	@ D.34862, g_Dnr_v200_OffReg.dnr_int_clr
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _2->int_dnr_clr, _2->int_dnr_clr
	orr	r3, r3, #1	@ tmp121, _2->int_dnr_clr,
	strb	r3, [r1]	@ tmp121, _2->int_dnr_clr
	ldr	r2, [r2, #2112]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r3, [r0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r2]	@ D.34864, MEM[(HI_U32 *)_8]
	str	r2, [r3, #52]	@ D.34864, *_7
	bx	lr	@
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	g_DnrHwMem
	.fnend
	.size	DNRHAL_V200_ClearIntState, .-DNRHAL_V200_ClearIntState
	.align	2
	.global	DNRHAL_V200_MaskInt
	.type	DNRHAL_V200_MaskInt, %function
DNRHAL_V200_MaskInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L29	@ tmp118,
	ldr	r0, .L29+4	@ tmp123,
	ldr	r1, [r2, #2116]	@ D.34869, g_Dnr_v200_OffReg.dnr_int_mask
	ldrb	r3, [r1]	@ zero_extendqisi2	@ _2->int_dnr_mask, _2->int_dnr_mask
	orr	r3, r3, #1	@ tmp121, _2->int_dnr_mask,
	strb	r3, [r1]	@ tmp121, _2->int_dnr_mask
	ldr	r2, [r2, #2116]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r3, [r0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r2]	@ D.34871, MEM[(HI_U32 *)_8]
	str	r2, [r3, #56]	@ D.34871, *_7
	bx	lr	@
.L30:
	.align	2
.L29:
	.word	.LANCHOR0
	.word	g_DnrHwMem
	.fnend
	.size	DNRHAL_V200_MaskInt, .-DNRHAL_V200_MaskInt
	.align	2
	.global	DNRHAL_V200_EnableInt
	.type	DNRHAL_V200_EnableInt, %function
DNRHAL_V200_EnableInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L32	@ tmp118,
	ldr	r0, .L32+4	@ tmp121,
	ldr	r2, [r3, #2116]	@ D.34876, g_Dnr_v200_OffReg.dnr_int_mask
	ldrb	r1, [r2]	@ zero_extendqisi2	@, _2->int_dnr_mask
	bfc	r1, #0, #1	@ _2->int_dnr_mask,,
	strb	r1, [r2]	@ _2->int_dnr_mask, _2->int_dnr_mask
	ldr	r2, [r3, #2116]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r3, [r0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r2]	@ D.34878, MEM[(HI_U32 *)_8]
	str	r2, [r3, #56]	@ D.34878, *_7
	bx	lr	@
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	g_DnrHwMem
	.fnend
	.size	DNRHAL_V200_EnableInt, .-DNRHAL_V200_EnableInt
	.align	2
	.global	DNRHAL_V200_CfgDnrReg
	.type	DNRHAL_V200_CfgDnrReg, %function
DNRHAL_V200_CfgDnrReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L35	@ tmp293,
	ldr	r2, .L35+4	@ tmp298,
	ldr	r0, [r3, #2112]	@ D.34912, g_Dnr_v200_OffReg.dnr_int_clr
	ldrb	r1, [r0]	@ zero_extendqisi2	@ _203->int_dnr_clr, _203->int_dnr_clr
	orr	r1, r1, #1	@ tmp296, _203->int_dnr_clr,
	strb	r1, [r0]	@ tmp296, _203->int_dnr_clr
	ldr	r0, [r3, #2112]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_208]
	str	r0, [r1, #52]	@ D.34884, *_207
	ldr	r0, [r3, #2116]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_7]
	str	r0, [r1, #56]	@ D.34884, *_6
	ldr	r0, [r3, #2052]	@ g_Dnr_v200_OffReg.dnr_basic_cfg0, g_Dnr_v200_OffReg.dnr_basic_cfg0
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_15]
	str	r0, [r1, #4]	@ D.34884, *_14
	ldr	r0, [r3, #2056]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_23]
	str	r0, [r1, #8]	@ D.34884, *_22
	ldr	r0, [r3, #2060]	@ g_Dnr_v200_OffReg.dnr_basic_cfg2, g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_31]
	str	r0, [r1, #60]	@ D.34884, *_30
	ldr	r0, [r3, #2064]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_39]
	str	r0, [r1, #12]	@ D.34884, *_38
	ldr	r0, [r3, #2068]	@ g_Dnr_v200_OffReg.dnr_dnr_thr, g_Dnr_v200_OffReg.dnr_dnr_thr
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_47]
	str	r0, [r1, #16]	@ D.34884, *_46
	ldr	r0, [r3, #2072]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_55]
	str	r0, [r1, #20]	@ D.34884, *_54
	ldr	r0, [r3, #2076]	@ g_Dnr_v200_OffReg.dnr_ystaddr_1d, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_63]
	str	r0, [r1, #24]	@ D.34884, *_62
	ldr	r0, [r3, #2104]	@ g_Dnr_v200_OffReg.dnr_ystride_1d, g_Dnr_v200_OffReg.dnr_ystride_1d
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_71]
	str	r0, [r1, #28]	@ D.34884, *_70
	ldr	r0, [r3, #2080]	@ g_Dnr_v200_OffReg.dnr_uvoffset_1d, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_79]
	str	r0, [r1, #32]	@ D.34884, *_78
	ldr	r0, [r3, #2084]	@ g_Dnr_v200_OffReg.dnr_ystaddr_2d, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, *_87
	str	r0, [r1, #36]	@ D.34884, *_86
	ldr	r0, [r3, #2108]	@ g_Dnr_v200_OffReg.dnr_ystride_2d, g_Dnr_v200_OffReg.dnr_ystride_2d
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_95]
	str	r0, [r1, #40]	@ D.34884, *_94
	ldr	r0, [r3, #2120]	@ g_Dnr_v200_OffReg.dnr_offline_th, g_Dnr_v200_OffReg.dnr_offline_th
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_103]
	str	r0, [r1, #64]	@ D.34884, *_102
	ldr	r0, [r3, #2124]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_111]
	str	r0, [r1, #84]	@ D.34884, *_110
	ldr	r0, [r3, #2128]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_119]
	str	r0, [r1, #88]	@ D.34884, *_118
	ldr	r0, [r3, #2132]	@ g_Dnr_v200_OffReg.dnr_sed_to, g_Dnr_v200_OffReg.dnr_sed_to
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_127]
	str	r0, [r1, #92]	@ D.34884, *_126
	ldr	r0, [r3, #2136]	@ g_Dnr_v200_OffReg.dnr_prc_to, g_Dnr_v200_OffReg.dnr_prc_to
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_135]
	str	r0, [r1, #96]	@ D.34884, *_134
	ldr	r0, [r3, #2140]	@ g_Dnr_v200_OffReg.dnr_dr_to, g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_143]
	str	r0, [r1, #100]	@ D.34884, *_142
	ldr	r0, [r3, #2144]	@ g_Dnr_v200_OffReg.dnr_do_to, g_Dnr_v200_OffReg.dnr_do_to
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_151]
	str	r0, [r1, #104]	@ D.34884, *_150
	ldr	r0, [r3, #2148]	@ g_Dnr_v200_OffReg.dnr_tf_to, g_Dnr_v200_OffReg.dnr_tf_to
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_159]
	str	r0, [r1, #108]	@ D.34884, *_158
	ldr	r0, [r3, #2152]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_167]
	str	r0, [r1, #112]	@ D.34884, *_166
	ldr	r0, [r3, #2156]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_175]
	str	r0, [r1, #116]	@ D.34884, *_174
	ldr	r0, [r3, #2160]	@ g_Dnr_v200_OffReg.dnr_vcmp_cfg0, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_183]
	str	r0, [r1, #128]	@ D.34884, *_182
	ldr	r1, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r3, #2164]	@ g_Dnr_v200_OffReg.dnr_use_pic_qp, g_Dnr_v200_OffReg.dnr_use_pic_qp
	ldr	r0, [r0]	@ D.34884, MEM[(HI_U32 *)_191]
	str	r0, [r1, #72]	@ D.34884, *_190
	ldr	r1, [r3, #2168]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	ldr	r3, [r2]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r1]	@ D.34884, MEM[(HI_U32 *)_199]
	str	r2, [r3, #76]	@ D.34884, *_198
	bx	lr	@
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.word	g_DnrHwMem
	.fnend
	.size	DNRHAL_V200_CfgDnrReg, .-DNRHAL_V200_CfgDnrReg
	.align	2
	.global	DNRHAL_V200_AdaptiveSetDnr
	.type	DNRHAL_V200_AdaptiveSetDnr, %function
DNRHAL_V200_AdaptiveSetDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r0, #16]	@ D.34916, pDnrOffCfg_3(D)->video_standard
	ldr	r2, [r0, #48]	@ Qp, pDnrOffCfg_3(D)->QP_Y
	sub	r3, r3, #2	@ tmp143, D.34916,
	cmp	r3, #1	@ tmp143,
	bhi	.L38	@,
	cmp	r2, #1	@ Qp,
	bhi	.L53	@,
.L47:
	mov	ip, #0	@ Thr_Idx,
.L40:
	ldr	r3, .L55	@ tmp228,
	mov	r1, #68	@ tmp146,
	ldr	r2, [r3, #2072]	@ D.34917, g_Dnr_v200_OffReg.dnr_db_thr
	strh	r1, [r2, #2]	@ movhi	@ tmp146, _8->Thr_leastblkdiff
	ldr	r2, [r0, #28]	@ pDnrOffCfg_3(D)->pic_height_in_mb, pDnrOffCfg_3(D)->pic_height_in_mb
	cmp	r2, #40	@ pDnrOffCfg_3(D)->pic_height_in_mb,
	bgt	.L41	@,
	ldr	r2, [r0, #24]	@ pDnrOffCfg_3(D)->pic_width_in_mb, pDnrOffCfg_3(D)->pic_width_in_mb
	cmp	r2, #50	@ pDnrOffCfg_3(D)->pic_width_in_mb,
	ble	.L54	@,
.L41:
	mov	r2, ip, asl #4	@ tmp192, Thr_Idx,
	ldr	r1, .L55+4	@ tmp189,
	add	r2, r2, ip, lsl #2	@ tmp193, tmp192, Thr_Idx,
	ldr	lr, [r3, #2072]	@ D.34917, g_Dnr_v200_OffReg.dnr_db_thr
	add	r2, r1, r2	@ tmp194, tmp189, tmp193
	ldr	r1, [r2, #120]	@ tmp196, ThrTblHd
	ldr	ip, [r2, #124]	@ tmp206, ThrTblHd
	ldr	r0, [r2, #132]	@ tmp216, ThrTblHd
	strb	r1, [lr, #1]	@ tmp196, _28->Db_alpha_scale
	ldr	r1, [r3, #2072]	@ D.34917, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r2, [r2, #136]	@ tmp226, ThrTblHd
	strb	ip, [r1]	@ tmp206, _32->Db_beta_scale
	ldr	r1, [r3, #2168]	@ D.34920, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r0, [r1, #1]	@ tmp216,
	ldr	r3, [r3, #2168]	@ D.34920, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r2, [r3]	@ tmp226,* D.34920
	ldr	pc, [sp], #4	@
.L38:
	cmp	r2, #3	@ Qp,
	bls	.L47	@,
	cmp	r2, #7	@ Qp,
	bls	.L48	@,
	cmp	r2, #15	@ Qp,
	bls	.L49	@,
	cmp	r2, #31	@ Qp,
	movls	ip, #3	@ Thr_Idx,
	bls	.L40	@,
	cmp	r2, #63	@ Qp,
	movhi	ip, #5	@ Thr_Idx,
	movls	ip, #4	@ Thr_Idx,
	b	.L40	@
.L53:
	cmp	r2, #2	@ Qp,
	bls	.L48	@,
	cmp	r2, #3	@ Qp,
	bls	.L49	@,
	cmp	r2, #255	@ Qp,
	movhi	ip, #5	@ Thr_Idx,
	movls	ip, #3	@ Thr_Idx,
	b	.L40	@
.L48:
	mov	ip, #1	@ Thr_Idx,
	b	.L40	@
.L54:
	ldr	r0, .L55+4	@ tmp150,
	mov	r2, ip, asl #4	@ tmp153, Thr_Idx,
	add	r2, r2, ip, lsl #2	@ tmp154, tmp153, Thr_Idx,
	ldr	ip, [r3, #2072]	@ D.34917, g_Dnr_v200_OffReg.dnr_db_thr
	add	r1, r0, r2	@ tmp155, tmp150, tmp154
	ldr	r2, [r0, r2]	@ tmp156, ThrTblSd
	ldr	lr, [r1, #4]	@ tmp166, ThrTblSd
	ldr	r0, [r1, #12]	@ tmp176, ThrTblSd
	strb	r2, [ip, #1]	@ tmp156, _12->Db_alpha_scale
	ldr	ip, [r3, #2072]	@ D.34917, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r2, [r1, #16]	@ tmp186, ThrTblSd
	strb	lr, [ip]	@ tmp166, _16->Db_beta_scale
	ldr	r1, [r3, #2168]	@ D.34920, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r0, [r1, #1]	@ tmp176,
	ldr	r3, [r3, #2168]	@ D.34920, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r2, [r3]	@ tmp186,* D.34920
	ldr	pc, [sp], #4	@
.L49:
	mov	ip, #2	@ Thr_Idx,
	b	.L40	@
.L56:
	.align	2
.L55:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.fnend
	.size	DNRHAL_V200_AdaptiveSetDnr, .-DNRHAL_V200_AdaptiveSetDnr
	.align	2
	.global	DNRHAL_V200_MakeDnrReg
	.type	DNRHAL_V200_MakeDnrReg, %function
DNRHAL_V200_MakeDnrReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ pDnrOffCfg, pDnrOffCfg
	ldr	r4, .L62	@ tmp538,
	mov	r2, #36	@ tmp305,
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->pic_structure, pDnrOffCfg_5(D)->pic_structure
	ldr	r3, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r1, [r3]	@ zero_extendqisi2	@, _4->pic_structure
	bfi	r1, r0, #4, #2	@ _4->pic_structure, pDnrOffCfg_5(D)->pic_structure,,
	strb	r1, [r3]	@ _4->pic_structure, _4->pic_structure
	ldr	r1, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r3, [r5, #24]	@ pDnrOffCfg_5(D)->pic_width_in_mb, pDnrOffCfg_5(D)->pic_width_in_mb
	sub	r3, r3, #1	@ tmp263, pDnrOffCfg_5(D)->pic_width_in_mb,
	strb	r3, [r1, #3]	@ tmp263, _9->pic_width_in_mb
	ldr	r1, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r3, [r5, #28]	@ pDnrOffCfg_5(D)->pic_height_in_mb, pDnrOffCfg_5(D)->pic_height_in_mb
	sub	r3, r3, #1	@ tmp268, pDnrOffCfg_5(D)->pic_height_in_mb,
	strb	r3, [r1, #2]	@ tmp268, _14->pic_height_in_mb
	ldr	r1, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ _19->Vc1_profile, _19->Vc1_profile
	orr	r3, r3, #12	@ tmp273, _19->Vc1_profile,
	strb	r3, [r1, #1]	@ tmp273, _19->Vc1_profile
	ldr	r3, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r1, [r3, #1]	@ zero_extendqisi2	@, _21->on_line_flag
	bfc	r1, #0, #1	@ _21->on_line_flag,,
	strb	r1, [r3, #1]	@ _21->on_line_flag, _21->on_line_flag
	ldr	r3, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r0, [r5, #16]	@ pDnrOffCfg_5(D)->video_standard, pDnrOffCfg_5(D)->video_standard
	ldrb	r1, [r3]	@ zero_extendqisi2	@, _23->video_standard
	cmp	r0, #2	@ pDnrOffCfg_5(D)->video_standard,
	moveq	r0, #2	@ D.34923,
	movne	r0, #3	@ D.34923,
	bfi	r1, r0, #0, #4	@ _23->video_standard, D.34923,,
	strb	r1, [r3]	@ _23->video_standard, _23->video_standard
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->chroma_format_idc, pDnrOffCfg_5(D)->chroma_format_idc
	ldr	r1, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	sub	r3, r3, #1	@ tmp285, pDnrOffCfg_5(D)->chroma_format_idc,
	clz	r3, r3	@ tmp285, tmp285
	ldrb	r0, [r1]	@ zero_extendqisi2	@, _26->chroma_format
	mov	r3, r3, lsr #5	@ tmp285, tmp285,
	bfi	r0, r3, #6, #1	@ _26->chroma_format, tmp285,,
	strb	r0, [r1]	@ _26->chroma_format, _26->chroma_format
	ldr	r1, [r4, #2060]	@ D.34930, g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r3, [r5, #24]	@ pDnrOffCfg_5(D)->pic_width_in_mb, pDnrOffCfg_5(D)->pic_width_in_mb
	ldrh	r0, [r1]	@, _30->pic_width_in_mb
	sub	r3, r3, #1	@ tmp292, pDnrOffCfg_5(D)->pic_width_in_mb,
	bfi	r0, r3, #0, #10	@ _30->pic_width_in_mb, tmp292,,
	strh	r0, [r1]	@ movhi	@ _30->pic_width_in_mb, _30->pic_width_in_mb
	ldr	r1, [r4, #2060]	@ D.34930, g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r3, [r5, #28]	@ pDnrOffCfg_5(D)->pic_height_in_mb, pDnrOffCfg_5(D)->pic_height_in_mb
	ldrh	r0, [r1, #2]	@, _36->pic_height_in_mb
	sub	r3, r3, #1	@ tmp298, pDnrOffCfg_5(D)->pic_height_in_mb,
	bfi	r0, r3, #0, #10	@ _36->pic_height_in_mb, tmp298,,
	strh	r0, [r1, #2]	@ movhi	@ _36->pic_height_in_mb, _36->pic_height_in_mb
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@, _42->range_en_offline
	bfc	r1, #4, #1	@ _42->range_en_offline,,
	strb	r1, [r3, #2]	@ _42->range_en_offline, _42->range_en_offline
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	strb	r2, [r3, #3]	@ tmp305, _44->qp_adjusted_dr
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->db_en, pDnrOffCfg_5(D)->db_en
	ldrb	r2, [r3]	@ zero_extendqisi2	@, _46->db_en
	bfi	r2, r1, #1, #1	@ _46->db_en, pDnrOffCfg_5(D)->db_en,,
	strb	r2, [r3]	@ _46->db_en, _46->db_en
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->dr_en, pDnrOffCfg_5(D)->dr_en
	ldrb	r2, [r3]	@ zero_extendqisi2	@, _51->dr_en
	bfi	r2, r1, #2, #1	@ _51->dr_en, pDnrOffCfg_5(D)->dr_en,,
	strb	r2, [r3]	@ _51->dr_en, _51->dr_en
	ldr	r2, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _56->db_hor_flt_en, _56->db_hor_flt_en
	orr	r3, r3, #4	@ tmp326, _56->db_hor_flt_en,
	strb	r3, [r2, #1]	@ tmp326, _56->db_hor_flt_en
	ldr	r2, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r3, [r2, #1]	@ zero_extendqisi2	@ _58->db_vert_flt_en, _58->db_vert_flt_en
	orr	r3, r3, #2	@ tmp331, _58->db_vert_flt_en,
	strb	r3, [r2, #1]	@ tmp331, _58->db_vert_flt_en
	ldr	r3, [r5, #16]	@ pDnrOffCfg_5(D)->video_standard, pDnrOffCfg_5(D)->video_standard
	cmp	r3, #1	@ pDnrOffCfg_5(D)->video_standard,
	bne	.L59	@,
	ldr	r3, [r4, #2056]	@ D.34924, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r1, [r5, #9]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->vc1_profile, pDnrOffCfg_5(D)->vc1_profile
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, _61->Vc1_profile
	bfi	r2, r1, #2, #2	@ _61->Vc1_profile, pDnrOffCfg_5(D)->vc1_profile,,
	strb	r2, [r3, #1]	@ _61->Vc1_profile, _61->Vc1_profile
	ldr	r2, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r3, [r2, #2]	@ zero_extendqisi2	@ _65->range_en_offline, _65->range_en_offline
	orr	r3, r3, #16	@ tmp345, _65->range_en_offline,
	strb	r3, [r2, #2]	@ tmp345, _65->range_en_offline
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r1, [r5, #68]	@ pDnrOffCfg_5(D)->Rangedfrm, pDnrOffCfg_5(D)->Rangedfrm
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@, _67->Rangedfrm
	bfi	r2, r1, #3, #1	@ _67->Rangedfrm, pDnrOffCfg_5(D)->Rangedfrm,,
	strb	r2, [r3, #2]	@ _67->Rangedfrm, _67->Rangedfrm
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #8]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->Range_mapuv, pDnrOffCfg_5(D)->Range_mapuv
	ldr	r2, [r3]	@ tmp354,* D.34933
	bfi	r2, r1, #14, #3	@ tmp354, pDnrOffCfg_5(D)->Range_mapuv,,
	str	r2, [r3]	@ tmp354,* D.34933
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->Range_mapuv_flag, pDnrOffCfg_5(D)->Range_mapuv_flag
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@, _76->Range_mapuv_flag
	bfi	r2, r1, #2, #1	@ _76->Range_mapuv_flag, pDnrOffCfg_5(D)->Range_mapuv_flag,,
	strb	r2, [r3, #2]	@ _76->Range_mapuv_flag, _76->Range_mapuv_flag
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #6]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->Range_mapy, pDnrOffCfg_5(D)->Range_mapy
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, _80->Range_mapy
	bfi	r2, r1, #3, #3	@ _80->Range_mapy, pDnrOffCfg_5(D)->Range_mapy,,
	strb	r2, [r3, #1]	@ _80->Range_mapy, _80->Range_mapy
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #5]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->Range_mapy_flag, pDnrOffCfg_5(D)->Range_mapy_flag
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@, _84->Range_mapy_flag
	bfi	r2, r1, #1, #1	@ _84->Range_mapy_flag, pDnrOffCfg_5(D)->Range_mapy_flag,,
	strb	r2, [r3, #2]	@ _84->Range_mapy_flag, _84->Range_mapy_flag
.L59:
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	mov	r8, #64	@ tmp439,
	mov	r2, #4	@ tmp427,
	mov	r9, #1	@ tmp431,
	mov	ip, #63	@ tmp433,
	mov	r1, #8	@ tmp444,
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@, _88->db_use_weak_flt
	mov	r7, #40	@ tmp446,
	mov	lr, #16	@ tmp451,
	mov	r6, #3	@ tmp459,
	bfc	r0, #0, #1	@ _88->db_use_weak_flt,,
	strb	r0, [r3, #1]	@ _88->db_use_weak_flt, _88->db_use_weak_flt
	ldr	r10, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	mov	r0, r5	@, pDnrOffCfg
	ldrb	r3, [r10]	@ zero_extendqisi2	@ _90->Module_clock_gating_en, _90->Module_clock_gating_en
	orr	r3, r3, #128	@ tmp388, _90->Module_clock_gating_en,
	strb	r3, [r10]	@ tmp388, _90->Module_clock_gating_en
	ldr	r10, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r3, [r10]	@ zero_extendqisi2	@ _92->Memory_clock_gating_en, _92->Memory_clock_gating_en
	orr	r3, r3, r8	@ tmp393, _92->Memory_clock_gating_en,
	strb	r3, [r10]	@ tmp393, _92->Memory_clock_gating_en
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	fp, [r5, #11]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->s32MirrorEn, pDnrOffCfg_5(D)->s32MirrorEn
	ldrb	r10, [r3]	@ zero_extendqisi2	@, _94->mirror_en
	bfi	r10, fp, #4, #1	@ _94->mirror_en, pDnrOffCfg_5(D)->s32MirrorEn,,
	strb	r10, [r3]	@ _94->mirror_en, _94->mirror_en
	ldr	r3, [r4, #2064]	@ D.34933, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	fp, [r5, #12]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->s32VcmpEn, pDnrOffCfg_5(D)->s32VcmpEn
	ldrb	r10, [r3]	@ zero_extendqisi2	@, _99->vcmp_en
	bfi	r10, fp, #3, #1	@ _99->vcmp_en, pDnrOffCfg_5(D)->s32VcmpEn,,
	strb	r10, [r3]	@ _99->vcmp_en, _99->vcmp_en
	ldr	r3, [r4, #2160]	@ D.34937, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	ldr	r10, [r5, #76]	@ pDnrOffCfg_5(D)->s32VcmpWmStartLine, pDnrOffCfg_5(D)->s32VcmpWmStartLine
	strh	r10, [r3]	@ movhi	@ pDnrOffCfg_5(D)->s32VcmpWmStartLine, _104->vcmp_wm_start_line
	ldr	r3, [r4, #2160]	@ D.34937, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	ldr	r10, [r5, #80]	@ pDnrOffCfg_5(D)->s32VcmpWmEndLine, pDnrOffCfg_5(D)->s32VcmpWmEndLine
	strh	r10, [r3, #2]	@ movhi	@ pDnrOffCfg_5(D)->s32VcmpWmEndLine, _108->vcmp_wm_end_line
	ldr	r3, [r4, #2164]	@ D.34938, g_Dnr_v200_OffReg.dnr_use_pic_qp
	ldr	r10, [r5, #48]	@ pDnrOffCfg_5(D)->QP_Y, pDnrOffCfg_5(D)->QP_Y
	strb	r10, [r3]	@ pDnrOffCfg_5(D)->QP_Y, _112->QP_Y
	ldr	r3, [r4, #2164]	@ D.34938, g_Dnr_v200_OffReg.dnr_use_pic_qp
	ldr	r10, [r5, #52]	@ pDnrOffCfg_5(D)->QP_U, pDnrOffCfg_5(D)->QP_U
	strb	r10, [r3, #1]	@ pDnrOffCfg_5(D)->QP_U, _116->QP_U
	ldr	r3, [r4, #2164]	@ D.34938, g_Dnr_v200_OffReg.dnr_use_pic_qp
	ldr	r10, [r5, #56]	@ pDnrOffCfg_5(D)->QP_V, pDnrOffCfg_5(D)->QP_V
	strb	r10, [r3, #2]	@ pDnrOffCfg_5(D)->QP_V, _120->QP_V
	ldr	r3, [r4, #2152]	@ D.34939, g_Dnr_v200_OffReg.dnr_thr_1
	ldrb	r10, [r3]	@ zero_extendqisi2	@, _124->DnrThrInterlaceCnt
	bfi	r10, r2, #0, #4	@ _124->DnrThrInterlaceCnt, tmp427,,
	strb	r10, [r3]	@ _124->DnrThrInterlaceCnt, _124->DnrThrInterlaceCnt
	ldr	r3, [r4, #2152]	@ D.34939, g_Dnr_v200_OffReg.dnr_thr_1
	ldrb	r10, [r3]	@ zero_extendqisi2	@, _126->DnrThrIntlColCnt
	bfi	r10, r9, #4, #4	@ _126->DnrThrIntlColCnt, tmp431,,
	strb	r10, [r3]	@ _126->DnrThrIntlColCnt, _126->DnrThrIntlColCnt
	ldr	r3, [r4, #2152]	@ D.34939, g_Dnr_v200_OffReg.dnr_thr_1
	strb	ip, [r3, #2]	@ tmp433, _128->DbThrMaxDiffHor
	ldr	r3, [r4, #2152]	@ D.34939, g_Dnr_v200_OffReg.dnr_thr_1
	strb	ip, [r3, #3]	@ tmp433, _130->DbThrMaxDiffVert
	ldr	r3, [r4, #2156]	@ D.34940, g_Dnr_v200_OffReg.dnr_thr_2
	strb	r8, [r3]	@ tmp439, _132->DrThrPeak8x8Zone
	ldr	r3, [r4, #2156]	@ D.34940, g_Dnr_v200_OffReg.dnr_thr_2
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@, _134->DrThrFlat3x3Zone
	bfi	ip, r1, #0, #5	@ _134->DrThrFlat3x3Zone, tmp444,,
	strb	ip, [r3, #1]	@ _134->DrThrFlat3x3Zone, _134->DrThrFlat3x3Zone
	ldr	r3, [r4, #2156]	@ D.34940, g_Dnr_v200_OffReg.dnr_thr_2
	strb	r7, [r3, #2]	@ tmp446, _136->DrThrEdgeGrad
	ldr	r3, [r4, #2156]	@ D.34940, g_Dnr_v200_OffReg.dnr_thr_2
	ldrb	ip, [r3, #3]	@ zero_extendqisi2	@, _138->DrThrMaxSimilarPixDiff
	bfi	ip, lr, #0, #5	@ _138->DrThrMaxSimilarPixDiff, tmp451,,
	strb	ip, [r3, #3]	@ _138->DrThrMaxSimilarPixDiff, _138->DrThrMaxSimilarPixDiff
	ldr	r3, [r4, #2068]	@ D.34941, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r1, [r3, #1]	@ tmp444, _140->thr_dr_smooth
	ldr	r3, [r4, #2068]	@ D.34941, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r2, [r3, #2]	@ tmp427, _142->thr_db_smooth
	ldr	r3, [r4, #2068]	@ D.34941, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r6, [r3, #3]	@ tmp459, _144->detail_qp_thr
	ldr	r2, [r4, #2152]	@ D.34939, g_Dnr_v200_OffReg.dnr_thr_1
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ pDnrOffCfg_5(D)->pic_structure, pDnrOffCfg_5(D)->pic_structure
	clz	r3, r3	@ tmp464, pDnrOffCfg_5(D)->pic_structure
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@, _146->DnrIntlEn
	mov	r3, r3, lsr #5	@ tmp464, tmp464,
	bfi	r1, r3, #0, #1	@ _146->DnrIntlEn, tmp464,,
	strb	r1, [r2, #1]	@ _146->DnrIntlEn, _146->DnrIntlEn
	bl	DNRHAL_V200_AdaptiveSetDnr	@
	ldr	r2, [r4, #2076]	@ D.34942, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	ldr	r3, [r5, #32]	@ pDnrOffCfg_5(D)->dnr_ystaddr_1d, pDnrOffCfg_5(D)->dnr_ystaddr_1d
	mov	ip, #500	@ tmp490,
	mov	r0, #7	@ tmp494,
	mov	r1, #0	@ tmp535,
	bic	r3, r3, #15	@ D.34943, pDnrOffCfg_5(D)->dnr_ystaddr_1d,
	str	r3, [r2]	@ D.34943, _151->ystaddr_1d
	ldr	r3, [r5, #28]	@ pDnrOffCfg_5(D)->pic_height_in_mb, pDnrOffCfg_5(D)->pic_height_in_mb
	ldr	r2, [r5, #64]	@ pDnrOffCfg_5(D)->dnr_stride_1d, pDnrOffCfg_5(D)->dnr_stride_1d
	add	r3, r3, r9	@ D.34927, pDnrOffCfg_5(D)->pic_height_in_mb,
	ldr	lr, [r4, #2080]	@ D.34944, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	add	r3, r3, r3, lsr #31	@ tmp476, D.34927, D.34927,
	mov	r3, r3, asr r9	@ D.34927, tmp476,
	mul	r3, r2, r3	@ D.34927, pDnrOffCfg_5(D)->dnr_stride_1d, D.34927
	mov	r3, r3, asl r9	@ D.34927, D.34927,
	str	r3, [lr]	@ D.34927, _156->uvoffset_1d
	ldr	r3, [r4, #2104]	@ D.34945, g_Dnr_v200_OffReg.dnr_ystride_1d
	ldr	r2, [r5, #64]	@ pDnrOffCfg_5(D)->dnr_stride_1d, pDnrOffCfg_5(D)->dnr_stride_1d
	str	r2, [r3]	@ pDnrOffCfg_5(D)->dnr_stride_1d, _165->ystride_1d
	ldr	r2, [r4, #2084]	@ D.34946, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	ldr	r3, [r5, #36]	@ pDnrOffCfg_5(D)->dnr_ystaddr_2d, pDnrOffCfg_5(D)->dnr_ystaddr_2d
	bic	r3, r3, #15	@ D.34943, pDnrOffCfg_5(D)->dnr_ystaddr_2d,
	str	r3, [r2]	@ D.34943, *_169
	ldr	r2, [r5, #60]	@ pDnrOffCfg_5(D)->ddr_stride, pDnrOffCfg_5(D)->ddr_stride
	ldr	r3, [r4, #2108]	@ D.34947, g_Dnr_v200_OffReg.dnr_ystride_2d
	strh	r2, [r3]	@ movhi	@ pDnrOffCfg_5(D)->ddr_stride, _174->ystride_2d
	ldr	r3, [r4, #2120]	@ D.34948, g_Dnr_v200_OffReg.dnr_offline_th
	strh	ip, [r3]	@ movhi	@ tmp490, _178->dnr_offline_th
	ldr	r3, [r4, #2124]	@ D.34949, g_Dnr_v200_OffReg.dnr_emar_id
	ldrb	r2, [r3]	@ zero_extendqisi2	@, _180->emar_id
	bfi	r2, r0, #0, #4	@ _180->emar_id, tmp494,,
	strb	r2, [r3]	@ _180->emar_id, _180->emar_id
	ldr	r3, [r4, #2124]	@ D.34949, g_Dnr_v200_OffReg.dnr_emar_id
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, _182->wr_outstanding
	bfi	r2, r6, #0, #4	@ _182->wr_outstanding, tmp459,,
	strb	r2, [r3, #1]	@ _182->wr_outstanding, _182->wr_outstanding
	ldr	r3, [r4, #2124]	@ D.34949, g_Dnr_v200_OffReg.dnr_emar_id
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, _184->rd_outstanding
	bfi	r2, r0, #4, #4	@ _184->rd_outstanding, tmp494,,
	strb	r2, [r3, #1]	@ _184->rd_outstanding, _184->rd_outstanding
	ldr	r3, [r4, #2124]	@ D.34949, g_Dnr_v200_OffReg.dnr_emar_id
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@, _186->ram_type
	bfc	r2, #0, #2	@ _186->ram_type,,
	strb	r2, [r3, #2]	@ _186->ram_type, _186->ram_type
	ldr	r3, [r4, #2128]	@ D.34950, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldrb	r2, [r3]	@ zero_extendqisi2	@, _188->max_cnt_dblk_rd
	bfc	r2, #0, #5	@ _188->max_cnt_dblk_rd,,
	strb	r2, [r3]	@ _188->max_cnt_dblk_rd, _188->max_cnt_dblk_rd
	ldr	r3, [r4, #2128]	@ D.34950, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldrh	r2, [r3]	@,* D.34950
	bfc	r2, #5, #5	@ tmp510,,
	strh	r2, [r3]	@ movhi	@ tmp510,* D.34950
	ldr	r3, [r4, #2128]	@ D.34950, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@, _192->max_cnt_prc
	bfc	r2, #2, #5	@ _192->max_cnt_prc,,
	strb	r2, [r3, #1]	@ _192->max_cnt_prc, _192->max_cnt_prc
	ldr	r3, [r4, #2128]	@ D.34950, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r2, [r3]	@ tmp516,* D.34950
	bfc	r2, #15, #5	@ tmp516,,
	str	r2, [r3]	@ tmp516,* D.34950
	ldr	r3, [r4, #2132]	@ D.34951, g_Dnr_v200_OffReg.dnr_sed_to
	ldrh	r2, [r3]	@, _196->sed_top_read_to
	bfc	r2, #0, #10	@ _196->sed_top_read_to,,
	strh	r2, [r3]	@ movhi	@ _196->sed_top_read_to, _196->sed_top_read_to
	ldr	r3, [r4, #2136]	@ D.34952, g_Dnr_v200_OffReg.dnr_prc_to
	ldrh	r2, [r3]	@, _198->prc_read_to
	bfc	r2, #0, #10	@ _198->prc_read_to,,
	strh	r2, [r3]	@ movhi	@ _198->prc_read_to, _198->prc_read_to
	ldr	r3, [r4, #2140]	@ D.34953, g_Dnr_v200_OffReg.dnr_dr_to
	ldrh	r2, [r3]	@, _200->dr_read_to
	bfc	r2, #0, #10	@ _200->dr_read_to,,
	strh	r2, [r3]	@ movhi	@ _200->dr_read_to, _200->dr_read_to
	ldr	r3, [r4, #2140]	@ D.34953, g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r2, [r3]	@ tmp527,* D.34953
	bfc	r2, #10, #10	@ tmp527,,
	str	r2, [r3]	@ tmp527,* D.34953
	ldr	r3, [r4, #2144]	@ D.34954, g_Dnr_v200_OffReg.dnr_do_to
	ldrh	r2, [r3]	@, _204->do_top_write_to
	bfc	r2, #0, #10	@ _204->do_top_write_to,,
	strh	r2, [r3]	@ movhi	@ _204->do_top_write_to, _204->do_top_write_to
	ldr	r3, [r4, #2148]	@ D.34955, g_Dnr_v200_OffReg.dnr_tf_to
	ldrh	r2, [r3]	@, _206->tf_read_to
	bfc	r2, #0, #10	@ _206->tf_read_to,,
	strh	r2, [r3]	@ movhi	@ _206->tf_read_to, _206->tf_read_to
	ldr	r3, [r4, #2096]	@ D.34946, g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld
	str	r1, [r3]	@ tmp535, *_208
	ldr	r3, [r4, #2100]	@ D.34946, g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld
	str	r1, [r3]	@ tmp535, *_210
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.fnend
	.size	DNRHAL_V200_MakeDnrReg, .-DNRHAL_V200_MakeDnrReg
	.align	2
	.global	DNRHAL_V200_CfgReg
	.type	DNRHAL_V200_CfgReg, %function
DNRHAL_V200_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	DNRHAL_V200_MakeDnrReg	@
	ldmfd	sp!, {r4, lr}	@
	b	DNRHAL_V200_CfgDnrReg	@
	.fnend
	.size	DNRHAL_V200_CfgReg, .-DNRHAL_V200_CfgReg
	.global	g_Dnr_v200_Reg
	.global	g_Dnr_v200_OffReg
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	ThrTblSd.34449, %object
	.size	ThrTblSd.34449, 120
ThrTblSd.34449:
	.word	20
	.word	24
	.word	2
	.word	28
	.word	28
	.word	12
	.word	16
	.word	4
	.word	18
	.word	14
	.word	10
	.word	12
	.word	8
	.word	12
	.word	10
	.word	8
	.word	8
	.word	14
	.word	6
	.word	6
	.word	8
	.word	8
	.word	14
	.word	6
	.word	6
	.word	8
	.word	8
	.word	14
	.word	6
	.word	6
	.type	ThrTblHd.34450, %object
	.size	ThrTblHd.34450, 120
ThrTblHd.34450:
	.word	28
	.word	30
	.word	2
	.word	32
	.word	32
	.word	20
	.word	22
	.word	4
	.word	24
	.word	20
	.word	14
	.word	18
	.word	8
	.word	18
	.word	14
	.word	10
	.word	12
	.word	14
	.word	10
	.word	8
	.word	10
	.word	12
	.word	14
	.word	10
	.word	8
	.word	10
	.word	12
	.word	14
	.word	10
	.word	8
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_Dnr_v200_Reg, %object
	.size	g_Dnr_v200_Reg, 2048
g_Dnr_v200_Reg:
	.space	2048
	.type	g_Dnr_v200_OffReg, %object
	.size	g_Dnr_v200_OffReg, 128
g_Dnr_v200_OffReg:
	.space	128
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
