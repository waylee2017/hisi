	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dnr_hal_v200.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -Iarch/arm/include/generated -Iinclude
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV310
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_BPD_H_SUPPORT
@ -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(dnr_hal_v200)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_hal_v200.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_hal_v200.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_hal_v200.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks
@ -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
@ -fpromote-loop-indices -freg-struct-return -fregmove -frename-registers
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce -ftree-ccp
@ -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	DNRHAL_V200_ClearIntState
	.type	DNRHAL_V200_ClearIntState, %function
DNRHAL_V200_ClearIntState:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp135,
	movt	r2, #:upper16:.LANCHOR0	@ tmp135,
	movw	ip, #:lower16:g_DnrHwMem	@ tmp139,
	movt	ip, #:upper16:g_DnrHwMem	@ tmp139,
	ldr	r3, [r2, #64]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r1, [r3, #0]	@ tmp137,* g_Dnr_v200_OffReg.dnr_int_clr
	orr	r0, r1, #1	@ tmp143, tmp137,
	str	r0, [r3, #0]	@ tmp143,* g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r1, [r2, #64]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r1, #0]	@ D.32229,* g_Dnr_v200_OffReg.dnr_int_clr
	str	r2, [r3, #52]	@ D.32229,
	bx	lr	@
	.fnend
	.size	DNRHAL_V200_ClearIntState, .-DNRHAL_V200_ClearIntState
	.align	2
	.global	DNRHAL_V200_MaskInt
	.type	DNRHAL_V200_MaskInt, %function
DNRHAL_V200_MaskInt:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp135,
	movt	r2, #:upper16:.LANCHOR0	@ tmp135,
	movw	ip, #:lower16:g_DnrHwMem	@ tmp139,
	movt	ip, #:upper16:g_DnrHwMem	@ tmp139,
	ldr	r3, [r2, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r1, [r3, #0]	@ tmp137,* g_Dnr_v200_OffReg.dnr_int_mask
	orr	r0, r1, #1	@ tmp143, tmp137,
	str	r0, [r3, #0]	@ tmp143,* g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r1, [r2, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r1, #0]	@ D.32240,* g_Dnr_v200_OffReg.dnr_int_mask
	str	r2, [r3, #56]	@ D.32240,
	bx	lr	@
	.fnend
	.size	DNRHAL_V200_MaskInt, .-DNRHAL_V200_MaskInt
	.align	2
	.global	DNRHAL_V200_EnableInt
	.type	DNRHAL_V200_EnableInt, %function
DNRHAL_V200_EnableInt:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp135,
	movt	r2, #:upper16:.LANCHOR0	@ tmp135,
	movw	ip, #:lower16:g_DnrHwMem	@ tmp138,
	movt	ip, #:upper16:g_DnrHwMem	@ tmp138,
	ldr	r3, [r2, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r0, [r3, #0]	@ tmp137,* g_Dnr_v200_OffReg.dnr_int_mask
	bfc	r0, #0, #1	@ tmp137,,
	str	r0, [r3, #0]	@ tmp137,* g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r1, [r2, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r1, #0]	@ D.32251,* g_Dnr_v200_OffReg.dnr_int_mask
	str	r2, [r3, #56]	@ D.32251,
	bx	lr	@
	.fnend
	.size	DNRHAL_V200_EnableInt, .-DNRHAL_V200_EnableInt
	.align	2
	.global	DNRHAL_V200_CfgDnrReg
	.type	DNRHAL_V200_CfgDnrReg, %function
DNRHAL_V200_CfgDnrReg:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp185,
	movt	r2, #:upper16:.LANCHOR0	@ tmp185,
	movw	ip, #:lower16:g_DnrHwMem	@ tmp189,
	movt	ip, #:upper16:g_DnrHwMem	@ tmp189,
	ldr	r3, [r2, #64]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r1, [r3, #0]	@ tmp187,* g_Dnr_v200_OffReg.dnr_int_clr
	orr	r0, r1, #1	@ tmp293, tmp187,
	str	r0, [r3, #0]	@ tmp293,* g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r1, [r2, #64]	@ g_Dnr_v200_OffReg.dnr_int_clr, g_Dnr_v200_OffReg.dnr_int_clr
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32585,* g_Dnr_v200_OffReg.dnr_int_clr
	str	r0, [r3, #52]	@ D.32585,
	ldr	r1, [r2, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32261,* g_Dnr_v200_OffReg.dnr_int_mask
	str	r0, [r3, #56]	@ D.32261,
	ldr	r1, [r2, #4]	@ g_Dnr_v200_OffReg.dnr_basic_cfg0, g_Dnr_v200_OffReg.dnr_basic_cfg0
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32267,* g_Dnr_v200_OffReg.dnr_basic_cfg0
	str	r0, [r3, #4]	@ D.32267,
	ldr	r1, [r2, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32273,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	str	r0, [r3, #8]	@ D.32273,
	ldr	r1, [r2, #12]	@ g_Dnr_v200_OffReg.dnr_basic_cfg2, g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32279,* g_Dnr_v200_OffReg.dnr_basic_cfg2
	str	r0, [r3, #60]	@ D.32279,
	ldr	r1, [r2, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32285,* g_Dnr_v200_OffReg.dnr_basic_cfg
	str	r0, [r3, #12]	@ D.32285,
	ldr	r1, [r2, #20]	@ g_Dnr_v200_OffReg.dnr_dnr_thr, g_Dnr_v200_OffReg.dnr_dnr_thr
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32291,* g_Dnr_v200_OffReg.dnr_dnr_thr
	str	r0, [r3, #16]	@ D.32291,
	ldr	r1, [r2, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32297,* g_Dnr_v200_OffReg.dnr_db_thr
	str	r0, [r3, #20]	@ D.32297,
	ldr	r1, [r2, #28]	@ g_Dnr_v200_OffReg.dnr_ystaddr_1d, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32303,* g_Dnr_v200_OffReg.dnr_ystaddr_1d
	str	r0, [r3, #24]	@ D.32303,
	ldr	r1, [r2, #56]	@ g_Dnr_v200_OffReg.dnr_ystride_1d, g_Dnr_v200_OffReg.dnr_ystride_1d
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32309,* g_Dnr_v200_OffReg.dnr_ystride_1d
	str	r0, [r3, #28]	@ D.32309,
	ldr	r1, [r2, #32]	@ g_Dnr_v200_OffReg.dnr_uvoffset_1d, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32315,* g_Dnr_v200_OffReg.dnr_uvoffset_1d
	str	r0, [r3, #32]	@ D.32315,
	ldr	r1, [r2, #36]	@ g_Dnr_v200_OffReg.dnr_ystaddr_2d, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32320,* g_Dnr_v200_OffReg.dnr_ystaddr_2d
	str	r0, [r3, #36]	@ D.32320,
	ldr	r1, [r2, #60]	@ g_Dnr_v200_OffReg.dnr_ystride_2d, g_Dnr_v200_OffReg.dnr_ystride_2d
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32326,* g_Dnr_v200_OffReg.dnr_ystride_2d
	str	r0, [r3, #40]	@ D.32326,
	ldr	r1, [r2, #72]	@ g_Dnr_v200_OffReg.dnr_offline_th, g_Dnr_v200_OffReg.dnr_offline_th
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32332,* g_Dnr_v200_OffReg.dnr_offline_th
	str	r0, [r3, #64]	@ D.32332,
	ldr	r1, [r2, #76]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32338,* g_Dnr_v200_OffReg.dnr_emar_id
	str	r0, [r3, #84]	@ D.32338,
	ldr	r1, [r2, #80]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32344,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	str	r0, [r3, #88]	@ D.32344,
	ldr	r1, [r2, #84]	@ g_Dnr_v200_OffReg.dnr_sed_to, g_Dnr_v200_OffReg.dnr_sed_to
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32350,* g_Dnr_v200_OffReg.dnr_sed_to
	str	r0, [r3, #92]	@ D.32350,
	ldr	r1, [r2, #88]	@ g_Dnr_v200_OffReg.dnr_prc_to, g_Dnr_v200_OffReg.dnr_prc_to
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32356,* g_Dnr_v200_OffReg.dnr_prc_to
	str	r0, [r3, #96]	@ D.32356,
	ldr	r1, [r2, #92]	@ g_Dnr_v200_OffReg.dnr_dr_to, g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32362,* g_Dnr_v200_OffReg.dnr_dr_to
	str	r0, [r3, #100]	@ D.32362,
	ldr	r1, [r2, #96]	@ g_Dnr_v200_OffReg.dnr_do_to, g_Dnr_v200_OffReg.dnr_do_to
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32368,* g_Dnr_v200_OffReg.dnr_do_to
	str	r0, [r3, #104]	@ D.32368,
	ldr	r1, [r2, #100]	@ g_Dnr_v200_OffReg.dnr_tf_to, g_Dnr_v200_OffReg.dnr_tf_to
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32374,* g_Dnr_v200_OffReg.dnr_tf_to
	str	r0, [r3, #108]	@ D.32374,
	ldr	r1, [r2, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32380,* g_Dnr_v200_OffReg.dnr_thr_1
	str	r0, [r3, #112]	@ D.32380,
	ldr	r1, [r2, #108]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32386,* g_Dnr_v200_OffReg.dnr_thr_2
	str	r0, [r3, #116]	@ D.32386,
	ldr	r1, [r2, #112]	@ g_Dnr_v200_OffReg.dnr_vcmp_cfg0, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32392,* g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	str	r0, [r3, #128]	@ D.32392,
	ldr	r1, [r2, #116]	@ g_Dnr_v200_OffReg.dnr_use_pic_qp, g_Dnr_v200_OffReg.dnr_use_pic_qp
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r0, [r1, #0]	@ D.32398,* g_Dnr_v200_OffReg.dnr_use_pic_qp
	str	r0, [r3, #72]	@ D.32398,
	ldr	r1, [r2, #120]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	ldr	r3, [ip, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r2, [r1, #0]	@ D.32404,* g_Dnr_v200_OffReg.dnr_dx_scale
	str	r2, [r3, #76]	@ D.32404,
	bx	lr	@
	.fnend
	.size	DNRHAL_V200_CfgDnrReg, .-DNRHAL_V200_CfgDnrReg
	.align	2
	.global	DNRHAL_V200_AdaptiveSetDnr
	.type	DNRHAL_V200_AdaptiveSetDnr, %function
DNRHAL_V200_AdaptiveSetDnr:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r2, [r0, #16]	@ <variable>.video_standard, <variable>.video_standard
	ldr	r3, [r0, #48]	@ Qp, <variable>.QP_Y
	sub	r2, r2, #2	@ tmp137, <variable>.video_standard,
	cmp	r2, #1	@ tmp137,
	bhi	.L10	@,
	cmp	r3, #1	@ Qp,
	bhi	.L22	@,
.L12:
	mov	r2, #0	@ Thr_Idx,
.L17:
	movw	r3, #:lower16:.LANCHOR0	@ tmp236,
	movt	r3, #:upper16:.LANCHOR0	@ tmp236,
	mov	ip, #68	@ movhi	@,
	ldr	r4, [r3, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	strh	ip, [r4, #2]	@ movhi	@, <variable>.Thr_leastblkdiff
	ldr	r1, [r0, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r1, #40	@ <variable>.pic_height_in_mb,
	bgt	.L18	@,
	ldr	r5, [r0, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r5, #50	@ <variable>.pic_width_in_mb,
	ble	.L23	@,
.L18:
	add	r5, r2, r2, asl #2	@, tmp193, Thr_Idx, Thr_Idx,
	movw	r4, #:lower16:.LANCHOR1	@ tmp189,
	movt	r4, #:upper16:.LANCHOR1	@ tmp189,
	ldr	ip, [r3, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	add	r1, r4, r5, asl #2	@, tmp195, tmp189, tmp193,
	ldr	r5, [r1, #120]	@ tmp197, ThrTblHd
	ldr	r4, [r1, #124]	@ tmp210, ThrTblHd
	ldr	r0, [r1, #132]	@ tmp222, ThrTblHd
	strb	r5, [ip, #1]	@ tmp197, <variable>.Db_alpha_scale
	ldr	ip, [r3, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r2, [r1, #136]	@ tmp234, ThrTblHd
	strb	r4, [ip, #0]	@ tmp210, <variable>.Db_beta_scale
	ldr	r1, [r3, #120]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r0, [r1, #1]	@ tmp222, <variable>.Dx_alpha_scale
	ldr	r3, [r3, #120]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r2, [r3, #0]	@ tmp234, <variable>.Dx_beta_scale
.L20:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L10:
	cmp	r3, #3	@ Qp,
	bls	.L12	@,
	cmp	r3, #7	@ Qp,
	bls	.L13	@,
	cmp	r3, #15	@ Qp,
	bls	.L14	@,
	cmp	r3, #31	@ Qp,
	bhi	.L24	@,
.L15:
	mov	r2, #3	@ Thr_Idx,
	b	.L17	@
.L22:
	cmp	r3, #2	@ Qp,
	beq	.L13	@,
	cmp	r3, #3	@ Qp,
	beq	.L14	@,
	cmp	r3, #255	@ Qp,
	bls	.L15	@,
	mov	r2, #5	@ Thr_Idx,
	b	.L17	@
.L13:
	mov	r2, #1	@ Thr_Idx,
	b	.L17	@
.L23:
	add	r4, r2, r2, asl #2	@, tmp149, Thr_Idx, Thr_Idx,
	movw	r1, #:lower16:.LANCHOR1	@ tmp146,
	movt	r1, #:upper16:.LANCHOR1	@ tmp146,
	ldr	r5, [r3, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	add	ip, r4, #1	@ tmp160, tmp149,
	add	r0, r1, r4, asl #2	@, tmp151, tmp146, tmp149,
	ldr	r2, [r1, r4, asl #2]	@ tmp152, ThrTblSd
	ldr	r4, [r1, ip, asl #2]	@ tmp161, ThrTblSd
	ldr	ip, [r0, #12]	@ tmp173, ThrTblSd
	strb	r2, [r5, #1]	@ tmp152, <variable>.Db_alpha_scale
	ldr	r1, [r3, #24]	@ g_Dnr_v200_OffReg.dnr_db_thr, g_Dnr_v200_OffReg.dnr_db_thr
	ldr	r2, [r0, #16]	@ tmp185, ThrTblSd
	strb	r4, [r1, #0]	@ tmp161, <variable>.Db_beta_scale
	ldr	r0, [r3, #120]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	ip, [r0, #1]	@ tmp173, <variable>.Dx_alpha_scale
	ldr	r3, [r3, #120]	@ g_Dnr_v200_OffReg.dnr_dx_scale, g_Dnr_v200_OffReg.dnr_dx_scale
	strb	r2, [r3, #0]	@ tmp185, <variable>.Dx_beta_scale
	b	.L20	@
.L14:
	mov	r2, #2	@ Thr_Idx,
	b	.L17	@
.L24:
	cmp	r3, #63	@ Qp,
	movls	r2, #4	@ Thr_Idx,
	movhi	r2, #5	@ Thr_Idx,
	b	.L17	@
	.fnend
	.size	DNRHAL_V200_AdaptiveSetDnr, .-DNRHAL_V200_AdaptiveSetDnr
	.align	2
	.global	DNRHAL_V200_MakeDnrReg
	.type	DNRHAL_V200_MakeDnrReg, %function
DNRHAL_V200_MakeDnrReg:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp421,
	movt	r4, #:upper16:.LANCHOR0	@ tmp421,
	ldrb	r1, [r0, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	mov	r5, r0	@ pDnrOffCfg, pDnrOffCfg
	ldr	r7, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r6, [r7, #0]	@ tmp138,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	bfi	r6, r1, #4, #2	@ tmp138, <variable>.pic_structure,,
	str	r6, [r7, #0]	@ tmp138,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r3, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r0, [r0, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	sub	r2, r0, #1	@ tmp146, <variable>.pic_width_in_mb,
	strb	r2, [r3, #3]	@ tmp146, <variable>.pic_width_in_mb
	ldr	ip, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	lr, [r5, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	sub	r7, lr, #1	@ tmp152, <variable>.pic_height_in_mb,
	strb	r7, [ip, #2]	@ tmp152, <variable>.pic_height_in_mb
	ldr	r6, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r1, [r6, #0]	@ tmp156,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	orr	r0, r1, #3072	@ tmp422, tmp156,
	str	r0, [r6, #0]	@ tmp422,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r3, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r2, [r3, #0]	@ tmp160,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	bfc	r2, #8, #1	@ tmp160,,
	str	r2, [r3, #0]	@ tmp160,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	ip, [r4, #8]	@ temp.637, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	lr, [r5, #16]	@ <variable>.video_standard, <variable>.video_standard
	ldr	r7, [ip, #0]	@ tmp163,* temp.637
	cmp	lr, #2	@ <variable>.video_standard,
	movne	lr, #3	@, iftmp.435,
	bfi	r7, lr, #0, #4	@ tmp163, iftmp.435,,
	str	r7, [ip, #0]	@ tmp163,* temp.637
	ldr	r0, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r1, [r5, #4]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	ldr	r2, [r0, #0]	@ tmp169,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	cmp	r1, #1	@ <variable>.chroma_format_idc,
	movne	r6, #0	@, tmp168
	moveq	r6, #1	@, tmp168
	bfi	r2, r6, #6, #1	@ tmp169, tmp168,,
	str	r2, [r0, #0]	@ tmp169,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	ip, [r4, #12]	@ g_Dnr_v200_OffReg.dnr_basic_cfg2, g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r3, [r5, #24]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	ldr	r7, [ip, #0]	@ tmp176,* g_Dnr_v200_OffReg.dnr_basic_cfg2
	sub	lr, r3, #1	@ tmp175, <variable>.pic_width_in_mb,
	bfi	r7, lr, #0, #10	@ tmp176, tmp175,,
	str	r7, [ip, #0]	@ tmp176,* g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r0, [r4, #12]	@ g_Dnr_v200_OffReg.dnr_basic_cfg2, g_Dnr_v200_OffReg.dnr_basic_cfg2
	mov	r7, #36	@ tmp188,
	ldr	r1, [r5, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	r2, [r0, #0]	@ tmp182,* g_Dnr_v200_OffReg.dnr_basic_cfg2
	sub	r6, r1, #1	@ tmp181, <variable>.pic_height_in_mb,
	bfi	r2, r6, #16, #10	@ tmp182, tmp181,,
	str	r2, [r0, #0]	@ tmp182,* g_Dnr_v200_OffReg.dnr_basic_cfg2
	ldr	r3, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	lr, [r3, #0]	@ tmp185,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfc	lr, #20, #1	@ tmp185,,
	str	lr, [r3, #0]	@ tmp185,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	strb	r7, [ip, #3]	@ tmp188, <variable>.qp_adjusted_dr
	ldr	r6, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #1]	@ zero_extendqisi2	@ <variable>.db_en, <variable>.db_en
	ldr	r0, [r6, #0]	@ tmp192,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	r0, r1, #1, #1	@ tmp192, <variable>.db_en,,
	str	r0, [r6, #0]	@ tmp192,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r3, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.dr_en, <variable>.dr_en
	ldr	lr, [r3, #0]	@ tmp198,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	lr, r2, #2, #1	@ tmp198, <variable>.dr_en,,
	str	lr, [r3, #0]	@ tmp198,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r7, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r7, #0]	@ tmp204,* g_Dnr_v200_OffReg.dnr_basic_cfg
	orr	r6, ip, #1024	@ tmp423, tmp204,
	str	r6, [r7, #0]	@ tmp423,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r0, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r1, [r0, #0]	@ tmp208,* g_Dnr_v200_OffReg.dnr_basic_cfg
	orr	r2, r1, #512	@ tmp424, tmp208,
	str	r2, [r0, #0]	@ tmp424,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r3, [r5, #16]	@ <variable>.video_standard, <variable>.video_standard
	cmp	r3, #1	@ <variable>.video_standard,
	bne	.L28	@,
	ldr	r0, [r4, #8]	@ g_Dnr_v200_OffReg.dnr_basic_cfg1, g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldrb	r6, [r5, #9]	@ zero_extendqisi2	@ <variable>.vc1_profile, <variable>.vc1_profile
	ldr	r2, [r0, #0]	@ tmp213,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	bfi	r2, r6, #10, #2	@ tmp213, <variable>.vc1_profile,,
	str	r2, [r0, #0]	@ tmp213,* g_Dnr_v200_OffReg.dnr_basic_cfg1
	ldr	r1, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	lr, [r1, #0]	@ tmp219,* g_Dnr_v200_OffReg.dnr_basic_cfg
	orr	ip, lr, #1048576	@ tmp425, tmp219,
	str	ip, [r1, #0]	@ tmp425,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r3, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r7, [r5, #68]	@ <variable>.Rangedfrm, <variable>.Rangedfrm
	ldr	r6, [r3, #0]	@ tmp224,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	r6, r7, #19, #1	@ tmp224, <variable>.Rangedfrm,,
	str	r6, [r3, #0]	@ tmp224,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r2, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r0, [r5, #8]	@ zero_extendqisi2	@ <variable>.Range_mapuv, <variable>.Range_mapuv
	ldr	lr, [r2, #0]	@ tmp227,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	lr, r0, #14, #3	@ tmp227, <variable>.Range_mapuv,,
	str	lr, [r2, #0]	@ tmp227,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r1, [r5, #7]	@ zero_extendqisi2	@ <variable>.Range_mapuv_flag, <variable>.Range_mapuv_flag
	ldr	r7, [ip, #0]	@ tmp233,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	r7, r1, #18, #1	@ tmp233, <variable>.Range_mapuv_flag,,
	str	r7, [ip, #0]	@ tmp233,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r3, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r6, [r5, #6]	@ zero_extendqisi2	@ <variable>.Range_mapy, <variable>.Range_mapy
	ldr	r0, [r3, #0]	@ tmp239,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	r0, r6, #11, #3	@ tmp239, <variable>.Range_mapy,,
	str	r0, [r3, #0]	@ tmp239,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	lr, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r2, [r5, #5]	@ zero_extendqisi2	@ <variable>.Range_mapy_flag, <variable>.Range_mapy_flag
	ldr	ip, [lr, #0]	@ tmp245,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	ip, r2, #17, #1	@ tmp245, <variable>.Range_mapy_flag,,
	str	ip, [lr, #0]	@ tmp245,* g_Dnr_v200_OffReg.dnr_basic_cfg
.L28:
	ldr	r0, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	mov	r3, #4	@ tmp293,
	mov	r1, #63	@ tmp300,
	mov	r2, #8	@ tmp313,
	mov	r6, #3	@ tmp332,
	ldr	ip, [r0, #0]	@ tmp251,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfc	ip, #8, #1	@ tmp251,,
	str	ip, [r0, #0]	@ tmp251,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	mov	r0, r5	@, pDnrOffCfg
	ldr	r7, [ip, #0]	@ tmp254,* g_Dnr_v200_OffReg.dnr_basic_cfg
	orr	lr, r7, #128	@ tmp426, tmp254,
	str	lr, [ip, #0]	@ tmp426,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	r7, [ip, #0]	@ tmp258,* g_Dnr_v200_OffReg.dnr_basic_cfg
	orr	lr, r7, #64	@ tmp427, tmp258,
	str	lr, [ip, #0]	@ tmp427,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r7, [r5, #11]	@ zero_extendqisi2	@ <variable>.s32MirrorEn, <variable>.s32MirrorEn
	ldr	lr, [ip, #0]	@ tmp262,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	lr, r7, #4, #1	@ tmp262, <variable>.s32MirrorEn,,
	str	lr, [ip, #0]	@ tmp262,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldr	ip, [r4, #16]	@ g_Dnr_v200_OffReg.dnr_basic_cfg, g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrb	r7, [r5, #12]	@ zero_extendqisi2	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	ldr	lr, [ip, #0]	@ tmp268,* g_Dnr_v200_OffReg.dnr_basic_cfg
	bfi	lr, r7, #3, #1	@ tmp268, <variable>.s32VcmpEn,,
	str	lr, [ip, #0]	@ tmp268,* g_Dnr_v200_OffReg.dnr_basic_cfg
	ldrh	lr, [r5, #76]	@, <variable>.s32VcmpWmStartLine
	ldr	r7, [r4, #112]	@ g_Dnr_v200_OffReg.dnr_vcmp_cfg0, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	strh	lr, [r7, #0]	@ movhi	@, <variable>.vcmp_wm_start_line
	ldrh	ip, [r5, #80]	@, <variable>.s32VcmpWmEndLine
	ldr	r7, [r4, #112]	@ g_Dnr_v200_OffReg.dnr_vcmp_cfg0, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	strh	ip, [r7, #2]	@ movhi	@, <variable>.vcmp_wm_end_line
	ldr	lr, [r5, #48]	@ <variable>.QP_Y, <variable>.QP_Y
	ldr	ip, [r4, #116]	@ g_Dnr_v200_OffReg.dnr_use_pic_qp, g_Dnr_v200_OffReg.dnr_use_pic_qp
	strb	lr, [ip, #0]	@ <variable>.QP_Y, <variable>.QP_Y
	ldr	r7, [r5, #52]	@ <variable>.QP_U, <variable>.QP_U
	ldr	ip, [r4, #116]	@ g_Dnr_v200_OffReg.dnr_use_pic_qp, g_Dnr_v200_OffReg.dnr_use_pic_qp
	strb	r7, [ip, #1]	@ <variable>.QP_U, <variable>.QP_U
	ldr	lr, [r5, #56]	@ <variable>.QP_V, <variable>.QP_V
	ldr	r7, [r4, #116]	@ g_Dnr_v200_OffReg.dnr_use_pic_qp, g_Dnr_v200_OffReg.dnr_use_pic_qp
	strb	lr, [r7, #2]	@ <variable>.QP_V, <variable>.QP_V
	ldr	r7, [r4, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	ldr	ip, [r7, #0]	@ tmp292,* g_Dnr_v200_OffReg.dnr_thr_1
	bfi	ip, r3, #0, #4	@ tmp292, tmp293,,
	str	ip, [r7, #0]	@ tmp292,* g_Dnr_v200_OffReg.dnr_thr_1
	ldr	ip, [r4, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	mov	r7, #1	@ tmp297,
	ldr	lr, [ip, #0]	@ tmp296,* g_Dnr_v200_OffReg.dnr_thr_1
	bfi	lr, r7, #4, #4	@ tmp296, tmp297,,
	str	lr, [ip, #0]	@ tmp296,* g_Dnr_v200_OffReg.dnr_thr_1
	ldr	ip, [r4, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	strb	r1, [ip, #2]	@ tmp300, <variable>.DbThrMaxDiffHor
	mov	ip, #64	@ tmp308,
	ldr	lr, [r4, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	strb	r1, [lr, #3]	@ tmp300, <variable>.DbThrMaxDiffVert
	ldr	lr, [r4, #108]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	strb	ip, [lr, #0]	@ tmp308, <variable>.DrThrPeak8x8Zone
	mov	ip, #40	@ tmp316,
	ldr	lr, [r4, #108]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	ldr	r1, [lr, #0]	@ tmp312,* g_Dnr_v200_OffReg.dnr_thr_2
	bfi	r1, r2, #8, #5	@ tmp312, tmp313,,
	str	r1, [lr, #0]	@ tmp312,* g_Dnr_v200_OffReg.dnr_thr_2
	ldr	r1, [r4, #108]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	mov	lr, #16	@ tmp321,
	strb	ip, [r1, #2]	@ tmp316, <variable>.DrThrEdgeGrad
	ldr	r1, [r4, #108]	@ g_Dnr_v200_OffReg.dnr_thr_2, g_Dnr_v200_OffReg.dnr_thr_2
	ldr	ip, [r1, #0]	@ tmp320,* g_Dnr_v200_OffReg.dnr_thr_2
	bfi	ip, lr, #24, #5	@ tmp320, tmp321,,
	str	ip, [r1, #0]	@ tmp320,* g_Dnr_v200_OffReg.dnr_thr_2
	ldr	ip, [r4, #20]	@ g_Dnr_v200_OffReg.dnr_dnr_thr, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r2, [ip, #1]	@ tmp313, <variable>.thr_dr_smooth
	ldr	lr, [r4, #20]	@ g_Dnr_v200_OffReg.dnr_dnr_thr, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r3, [lr, #2]	@ tmp293, <variable>.thr_db_smooth
	ldr	r1, [r4, #20]	@ g_Dnr_v200_OffReg.dnr_dnr_thr, g_Dnr_v200_OffReg.dnr_dnr_thr
	strb	r6, [r1, #3]	@ tmp332, <variable>.detail_qp_thr
	ldr	r3, [r4, #104]	@ g_Dnr_v200_OffReg.dnr_thr_1, g_Dnr_v200_OffReg.dnr_thr_1
	ldrb	r2, [r5, #3]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	ldr	lr, [r3, #0]	@ tmp339,* g_Dnr_v200_OffReg.dnr_thr_1
	rsbs	ip, r2, #1	@ tmp338, <variable>.pic_structure
	movcc	ip, #0	@ tmp338
	bfi	lr, ip, #8, #1	@ tmp339, tmp338,,
	str	lr, [r3, #0]	@ tmp339,* g_Dnr_v200_OffReg.dnr_thr_1
	bl	DNRHAL_V200_AdaptiveSetDnr	@
	ldr	r2, [r4, #28]	@ g_Dnr_v200_OffReg.dnr_ystaddr_1d, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	ldr	r1, [r5, #32]	@ <variable>.dnr_ystaddr_1d, <variable>.dnr_ystaddr_1d
	mov	r0, #7	@ tmp373,
	mov	r3, #0	@ tmp417,
	bic	ip, r1, #15	@ tmp344, <variable>.dnr_ystaddr_1d,
	str	ip, [r2, #0]	@ tmp344, <variable>.ystaddr_1d
	ldr	r1, [r5, #28]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	ldr	ip, [r5, #64]	@ <variable>.dnr_stride_1d, <variable>.dnr_stride_1d
	add	r2, r1, r7	@ tmp349, <variable>.pic_height_in_mb,
	ldr	r1, [r4, #32]	@ g_Dnr_v200_OffReg.dnr_uvoffset_1d, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	add	r2, r2, r2, lsr #31	@, tmp353, tmp349, tmp349,
	mov	ip, ip, asl r7	@ tmp347, <variable>.dnr_stride_1d,
	mov	r2, r2, asr r7	@ tmp354, tmp353,
	mul	r2, r2, ip	@ tmp355, tmp354, tmp347
	str	r2, [r1, #0]	@ tmp355, <variable>.uvoffset_1d
	ldr	r1, [r5, #64]	@ <variable>.dnr_stride_1d, <variable>.dnr_stride_1d
	ldr	r2, [r4, #56]	@ g_Dnr_v200_OffReg.dnr_ystride_1d, g_Dnr_v200_OffReg.dnr_ystride_1d
	str	r1, [r2, #0]	@ <variable>.dnr_stride_1d, <variable>.ystride_1d
	ldr	r2, [r4, #36]	@ g_Dnr_v200_OffReg.dnr_ystaddr_2d, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	ldr	ip, [r5, #36]	@ <variable>.dnr_ystaddr_2d, <variable>.dnr_ystaddr_2d
	bic	r1, ip, #15	@ tmp362, <variable>.dnr_ystaddr_2d,
	str	r1, [r2, #0]	@ tmp362,* g_Dnr_v200_OffReg.dnr_ystaddr_2d
	ldr	ip, [r4, #60]	@ g_Dnr_v200_OffReg.dnr_ystride_2d, g_Dnr_v200_OffReg.dnr_ystride_2d
	mov	r1, #500	@ movhi	@,
	ldrh	r5, [r5, #60]	@, <variable>.ddr_stride
	strh	r5, [ip, #0]	@ movhi	@, <variable>.ystride_2d
	ldr	r2, [r4, #72]	@ g_Dnr_v200_OffReg.dnr_offline_th, g_Dnr_v200_OffReg.dnr_offline_th
	strh	r1, [r2, #0]	@ movhi	@, <variable>.dnr_offline_th
	ldr	ip, [r4, #76]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r1, [ip, #0]	@ tmp372,* g_Dnr_v200_OffReg.dnr_emar_id
	bfi	r1, r0, #0, #4	@ tmp372, tmp373,,
	str	r1, [ip, #0]	@ tmp372,* g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r2, [r4, #76]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	ip, [r2, #0]	@ tmp376,* g_Dnr_v200_OffReg.dnr_emar_id
	bfi	ip, r6, #8, #4	@ tmp376, tmp332,,
	str	ip, [r2, #0]	@ tmp376,* g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r1, [r4, #76]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	ip, [r1, #0]	@ tmp380,* g_Dnr_v200_OffReg.dnr_emar_id
	bfi	ip, r0, #12, #4	@ tmp380, tmp373,,
	str	ip, [r1, #0]	@ tmp380,* g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r2, [r4, #76]	@ g_Dnr_v200_OffReg.dnr_emar_id, g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r0, [r2, #0]	@ tmp384,* g_Dnr_v200_OffReg.dnr_emar_id
	bfc	r0, #16, #2	@ tmp384,,
	str	r0, [r2, #0]	@ tmp384,* g_Dnr_v200_OffReg.dnr_emar_id
	ldr	r1, [r4, #80]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	ip, [r1, #0]	@ tmp387,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	bfc	ip, #0, #5	@ tmp387,,
	str	ip, [r1, #0]	@ tmp387,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r2, [r4, #80]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r0, [r2, #0]	@ tmp390,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	bfc	r0, #5, #5	@ tmp390,,
	str	r0, [r2, #0]	@ tmp390,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r1, [r4, #80]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	ip, [r1, #0]	@ tmp393,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	bfc	ip, #10, #5	@ tmp393,,
	str	ip, [r1, #0]	@ tmp393,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r2, [r4, #80]	@ g_Dnr_v200_OffReg.dnr_rpt_cnt, g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r0, [r2, #0]	@ tmp396,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	bfc	r0, #15, #5	@ tmp396,,
	str	r0, [r2, #0]	@ tmp396,* g_Dnr_v200_OffReg.dnr_rpt_cnt
	ldr	r1, [r4, #84]	@ g_Dnr_v200_OffReg.dnr_sed_to, g_Dnr_v200_OffReg.dnr_sed_to
	ldr	ip, [r1, #0]	@ tmp399,* g_Dnr_v200_OffReg.dnr_sed_to
	bfc	ip, #0, #10	@ tmp399,,
	str	ip, [r1, #0]	@ tmp399,* g_Dnr_v200_OffReg.dnr_sed_to
	ldr	r2, [r4, #88]	@ g_Dnr_v200_OffReg.dnr_prc_to, g_Dnr_v200_OffReg.dnr_prc_to
	ldr	r0, [r2, #0]	@ tmp402,* g_Dnr_v200_OffReg.dnr_prc_to
	bfc	r0, #0, #10	@ tmp402,,
	str	r0, [r2, #0]	@ tmp402,* g_Dnr_v200_OffReg.dnr_prc_to
	ldr	r1, [r4, #92]	@ g_Dnr_v200_OffReg.dnr_dr_to, g_Dnr_v200_OffReg.dnr_dr_to
	ldr	ip, [r1, #0]	@ tmp405,* g_Dnr_v200_OffReg.dnr_dr_to
	bfc	ip, #0, #10	@ tmp405,,
	str	ip, [r1, #0]	@ tmp405,* g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r2, [r4, #92]	@ g_Dnr_v200_OffReg.dnr_dr_to, g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r0, [r2, #0]	@ tmp408,* g_Dnr_v200_OffReg.dnr_dr_to
	bfc	r0, #10, #10	@ tmp408,,
	str	r0, [r2, #0]	@ tmp408,* g_Dnr_v200_OffReg.dnr_dr_to
	ldr	r1, [r4, #96]	@ g_Dnr_v200_OffReg.dnr_do_to, g_Dnr_v200_OffReg.dnr_do_to
	ldr	ip, [r1, #0]	@ tmp411,* g_Dnr_v200_OffReg.dnr_do_to
	bfc	ip, #0, #10	@ tmp411,,
	str	ip, [r1, #0]	@ tmp411,* g_Dnr_v200_OffReg.dnr_do_to
	ldr	r2, [r4, #100]	@ g_Dnr_v200_OffReg.dnr_tf_to, g_Dnr_v200_OffReg.dnr_tf_to
	ldr	r0, [r2, #0]	@ tmp414,* g_Dnr_v200_OffReg.dnr_tf_to
	bfc	r0, #0, #10	@ tmp414,,
	str	r0, [r2, #0]	@ tmp414,* g_Dnr_v200_OffReg.dnr_tf_to
	ldr	r1, [r4, #48]	@ g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld, g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld
	str	r3, [r1, #0]	@ tmp417,* g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld
	ldr	ip, [r4, #52]	@ g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld, g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld
	str	r3, [ip, #0]	@ tmp417,* g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	DNRHAL_V200_MakeDnrReg, .-DNRHAL_V200_MakeDnrReg
	.align	2
	.global	DNRHAL_V200_CfgReg
	.type	DNRHAL_V200_CfgReg, %function
DNRHAL_V200_CfgReg:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	DNRHAL_V200_MakeDnrReg	@
	ldmfd	sp!, {r4, lr}	@
	b	DNRHAL_V200_CfgDnrReg	@
	.fnend
	.size	DNRHAL_V200_CfgReg, .-DNRHAL_V200_CfgReg
	.align	2
	.global	DNRHAL_V200_Reset
	.type	DNRHAL_V200_Reset, %function
DNRHAL_V200_Reset:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r0, #:lower16:270487664	@,
	movt	r0, #:upper16:270487664	@,
	bl	MEM_Phy2Vir	@
	mov	r4, r0	@ D.32188,
	movw	r0, #:lower16:272957440	@,
	movt	r0, #:upper16:272957440	@,
	bl	MEM_Phy2Vir	@
	cmp	r4, #0	@ D.32188,
	cmpne	r0, #0	@, D.32189,
	movne	r7, #0	@, tmp157
	moveq	r7, #1	@, tmp157
	beq	.L42	@,
	movw	r5, #:lower16:g_DnrHwMem	@ tmp159,
	movw	r1, #:lower16:.LANCHOR0	@ tmp161,
	movt	r5, #:upper16:g_DnrHwMem	@ tmp159,
	movt	r1, #:upper16:.LANCHOR0	@ tmp161,
	mov	r0, #28	@,
	ldr	r6, [r1, #68]	@ g_Dnr_v200_OffReg.dnr_int_mask, g_Dnr_v200_OffReg.dnr_int_mask
	movw	r1, #:lower16:.LC1	@,
	ldr	lr, [r5, #0]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	movt	r1, #:upper16:.LC1	@,
	ldr	r2, [r6, #0]	@ tmp163,* g_Dnr_v200_OffReg.dnr_int_mask
	ldr	ip, [lr, #56]	@ D.32201,
	bfi	r2, ip, #0, #1	@ tmp163, D.32201,,
	str	r2, [r6, #0]	@ tmp163,* g_Dnr_v200_OffReg.dnr_int_mask
	bl	dprint_vfmw	@
	ldr	r6, [r4, #0]	@ reg,* D.32188
	movw	r1, #10000	@ tmp170,
	orr	r0, r6, #2	@ D.32206, reg,
	str	r0, [r4, #0]	@ D.32206,* D.32188
	ldr	r3, [r5, #0]	@ pretmp.720, g_DnrHwMem.pDnrRegVirAddr
	add	r3, r3, #4	@ pretmp.721, pretmp.720,
	b	.L35	@
.L43:
	ldr	r2, [r3, #0]	@ dat,* pretmp.721
	add	r7, r7, #1	@ i, i,
	tst	r2, #65536	@ dat,
	beq	.L34	@,
	add	r7, r7, #1	@ i, i,
	cmp	r7, r1	@ i, tmp170
	beq	.L36	@,
.L35:
	ldr	r0, [r3, #0]	@ dat,* pretmp.721
	tst	r0, #65536	@ dat,
	bne	.L43	@,
.L34:
	movw	r3, #8999	@ tmp168,
	cmp	r7, r3	@ i, tmp168
	bgt	.L36	@,
	bic	r6, r6, #2	@ D.32215, reg,
	str	r6, [r4, #0]	@ D.32215,* D.32188
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L42:
	mov	r2, r0	@, D.32189
	mov	r3, r4	@, D.32188
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L36:
	movw	r1, #:lower16:.LC2	@,
	mov	r0, #28	@,
	movt	r1, #:upper16:.LC2	@,
	bic	r6, r6, #2	@ D.32215, reg,
	bl	dprint_vfmw	@
	str	r6, [r4, #0]	@ D.32215,* D.32188
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DNRHAL_V200_Reset, .-DNRHAL_V200_Reset
	.align	2
	.global	DNRHAL_V200_Start
	.type	DNRHAL_V200_Start, %function
DNRHAL_V200_Start:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_DnrHwMem	@ tmp138,
	movt	r3, #:upper16:g_DnrHwMem	@ tmp138,
	mov	r2, #0	@ tmp139,
	mov	lr, #1	@ tmp141,
	mov	r0, #28	@,
	ldr	ip, [r3, #0]	@ D.32168, g_DnrHwMem.pDnrRegVirAddr
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	r2, [ip, #0]	@ tmp139,* D.32168
	ldr	ip, [r3, #0]	@ temp.765, g_DnrHwMem.pDnrRegVirAddr
	str	lr, [ip, #0]	@ tmp141,* temp.765
	ldr	lr, [r3, #0]	@ temp.767, g_DnrHwMem.pDnrRegVirAddr
	str	r2, [lr, #0]	@ tmp139,* temp.767
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_HwMem	@ tmp145,
	movt	ip, #:upper16:g_HwMem	@ tmp145,
	movw	r1, #:lower16:.LANCHOR0	@ tmp147,
	movt	r1, #:upper16:.LANCHOR0	@ tmp147,
	ldr	r0, [ip, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r1, #124]	@ g_Dnr_v200_OffReg.dnr_version_id, g_Dnr_v200_OffReg.dnr_version_id
	ldr	r2, [r0, #44]	@ D.32175,
	str	r2, [r3, #0]	@ D.32175, <variable>.dnr_version_id
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	DNRHAL_V200_Start, .-DNRHAL_V200_Start
	.align	2
	.global	DNRHAL_V200_Init
	.type	DNRHAL_V200_Init, %function
DNRHAL_V200_Init:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp134,
	movt	r4, #:upper16:.LANCHOR0	@ tmp134,
	mov	r1, #2048	@,
	add	r5, r4, #128	@ tmp135, tmp134,
	mov	r0, r5	@, tmp135
	bl	__memzero	@
	mov	r3, r4	@ tmp218, tmp134
	add	r2, r4, #132	@ tmp142, tmp134,
	movw	r0, #:lower16:272957440	@,
	str	r2, [r4, #4]	@ tmp142, g_Dnr_v200_OffReg.dnr_basic_cfg0
	movt	r0, #:upper16:272957440	@,
	add	r2, r4, #144	@ tmp154, tmp134,
	str	r2, [r4, #40]	@ tmp154, g_Dnr_v200_OffReg.dnr_dblk_ystaddr_1d
	add	r2, r4, #156	@ tmp166, tmp134,
	str	r2, [r4, #60]	@ tmp166, g_Dnr_v200_OffReg.dnr_ystride_2d
	add	r2, r4, #168	@ tmp178, tmp134,
	str	r2, [r4, #92]	@ tmp178, g_Dnr_v200_OffReg.dnr_dr_to
	add	r2, r4, #184	@ tmp190, tmp134,
	str	r2, [r4, #68]	@ tmp190, g_Dnr_v200_OffReg.dnr_int_mask
	add	r2, r4, #232	@ tmp202, tmp134,
	str	r2, [r4, #88]	@ tmp202, g_Dnr_v200_OffReg.dnr_prc_to
	add	r2, r4, #244	@ tmp214, tmp134,
	str	r2, [r3], #248	@ tmp214, g_Dnr_v200_OffReg.dnr_start
	str	r5, [r4, #16]	@ tmp135, g_Dnr_v200_OffReg.dnr_basic_cfg
	add	r1, r4, #136	@ tmp146, tmp134,
	add	ip, r4, #140	@ tmp150, tmp134,
	str	r1, [r4, #8]	@ tmp146, g_Dnr_v200_OffReg.dnr_basic_cfg1
	str	ip, [r4, #44]	@ tmp150, g_Dnr_v200_OffReg.dnr_dblk_uvoffset_1d
	add	r1, r4, #148	@ tmp158, tmp134,
	add	ip, r4, #152	@ tmp162, tmp134,
	str	r1, [r4, #12]	@ tmp158, g_Dnr_v200_OffReg.dnr_basic_cfg2
	str	ip, [r4, #24]	@ tmp162, g_Dnr_v200_OffReg.dnr_db_thr
	add	r1, r4, #160	@ tmp170, tmp134,
	add	ip, r4, #164	@ tmp174, tmp134,
	str	r1, [r4, #20]	@ tmp170, g_Dnr_v200_OffReg.dnr_dnr_thr
	str	ip, [r4, #96]	@ tmp174, g_Dnr_v200_OffReg.dnr_do_to
	add	r1, r4, #172	@ tmp182, tmp134,
	add	ip, r4, #180	@ tmp186, tmp134,
	str	r1, [r4, #76]	@ tmp182, g_Dnr_v200_OffReg.dnr_emar_id
	str	ip, [r4, #64]	@ tmp186, g_Dnr_v200_OffReg.dnr_int_clr
	add	r1, r4, #188	@ tmp194, tmp134,
	add	ip, r4, #228	@ tmp198, tmp134,
	str	r1, [r4, #112]	@ tmp194, g_Dnr_v200_OffReg.dnr_vcmp_cfg0
	str	ip, [r4, #72]	@ tmp198, g_Dnr_v200_OffReg.dnr_offline_th
	add	r1, r4, #236	@ tmp206, tmp134,
	add	ip, r4, #240	@ tmp210, tmp134,
	str	r1, [r4, #80]	@ tmp206, g_Dnr_v200_OffReg.dnr_rpt_cnt
	str	ip, [r4, #84]	@ tmp210, g_Dnr_v200_OffReg.dnr_sed_to
	add	r1, r4, #252	@ tmp222, tmp134,
	str	r3, [r4, #100]	@ tmp218, g_Dnr_v200_OffReg.dnr_tf_to
	add	ip, r4, #260	@ tmp230, tmp134,
	str	r1, [r4, #32]	@ tmp222, g_Dnr_v200_OffReg.dnr_uvoffset_1d
	add	r3, r4, #264	@ tmp234, tmp134,
	str	ip, [r4, #28]	@ tmp230, g_Dnr_v200_OffReg.dnr_ystaddr_1d
	add	r2, r4, #268	@ tmp238, tmp134,
	str	r3, [r4, #48]	@ tmp234, g_Dnr_v200_OffReg.dnr_ystaddr_1d_down_fld
	add	ip, r4, #272	@ tmp242, tmp134,
	add	r3, r4, #284	@ tmp250, tmp134,
	str	r2, [r4, #36]	@ tmp238, g_Dnr_v200_OffReg.dnr_ystaddr_2d
	add	r1, r4, #280	@ tmp246, tmp134,
	str	ip, [r4, #56]	@ tmp242, g_Dnr_v200_OffReg.dnr_ystride_1d
	str	r1, [r4, #116]	@ tmp246, g_Dnr_v200_OffReg.dnr_use_pic_qp
	add	ip, r4, #288	@ tmp254, tmp134,
	str	r3, [r4, #120]	@ tmp250, g_Dnr_v200_OffReg.dnr_dx_scale
	add	r1, r4, #292	@ tmp258, tmp134,
	add	r2, r4, #296	@ tmp262, tmp134,
	add	r5, r5, #128	@ tmp226, tmp135,
	str	ip, [r4, #124]	@ tmp254, g_Dnr_v200_OffReg.dnr_version_id
	str	r5, [r4, #52]	@ tmp226, g_Dnr_v200_OffReg.dnr_uvoffset_1d_down_fld
	str	r2, [r4, #108]	@ tmp262, g_Dnr_v200_OffReg.dnr_thr_2
	str	r1, [r4, #104]	@ tmp258, g_Dnr_v200_OffReg.dnr_thr_1
	bl	MEM_Phy2Vir	@
	movw	r3, #:lower16:g_DnrHwMem	@ tmp264,
	movt	r3, #:upper16:g_DnrHwMem	@ tmp264,
	str	r0, [r3, #0]	@, g_DnrHwMem.pDnrRegVirAddr
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	DNRHAL_V200_Init, .-DNRHAL_V200_Init
	.global	g_Dnr_v200_OffReg
	.global	g_Dnr_v200_Reg
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	ThrTblSd.32441, %object
	.size	ThrTblSd.32441, 120
ThrTblSd.32441:
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
	.type	ThrTblHd.32442, %object
	.size	ThrTblHd.32442, 120
ThrTblHd.32442:
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_ResetDnr: map dnr register fail, vir(reg,res"
	.ascii	"et_reg) = (%p,%p)\012\000"
	.space	2
.LC1:
	.ascii	"*****************reset dnr!!!!******************\012"
	.ascii	"\000"
	.space	2
.LC2:
	.ascii	"Reset Dnr Err______________________________________"
	.ascii	"_-\012\000"
	.space	1
.LC3:
	.ascii	"------------------   start dnr!!!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_Dnr_v200_OffReg, %object
	.size	g_Dnr_v200_OffReg, 128
g_Dnr_v200_OffReg:
	.space	128
	.type	g_Dnr_v200_Reg, %object
	.size	g_Dnr_v200_Reg, 2048
g_Dnr_v200_Reg:
	.space	2048
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
