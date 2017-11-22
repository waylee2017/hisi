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
	.file	"vdm_hal_h264.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DHi3716MV330
@ -DENV_ARMLINUX_KERNEL -DOFF_LINE_DNR_ENABLE -DSCD_MP4_SLICE_ENABLE
@ -DSUPPORT_JPEG_444 -DVFMW_EXTRA_TYPE_DEFINE -DPRODUCT_STB
@ -D__VFMW_REGISTER_ISR__ -DVFMW_VDH_V200R004_SUPPORT -DVFMW_H264_SUPPORT
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_h264.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_h264.o
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
	.global	Get_V200R004_VirAddr
	.type	Get_V200R004_VirAddr, %function
Get_V200R004_VirAddr:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r1, r0, asl #2	@,, pbase_vir_addr, Dn,
	bx	lr	@
	.fnend
	.size	Get_V200R004_VirAddr, .-Get_V200R004_VirAddr
	.align	2
	.global	Write_V200R004_Qmatrix
	.type	Write_V200R004_Qmatrix, %function
Write_V200R004_Qmatrix:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ size
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	beq	.L6	@,
	ldr	ip, [r0, #0]	@ tmp168,* qmatrix
	cmp	r1, #1	@ size,
	sub	r2, r1, #1	@ tmp169, size,
	mov	r4, #1	@ i,
	and	r5, r2, r4	@ tmp171, tmp169,
	mov	r2, #4	@ ivtmp.567,
	str	ip, [r3, #0]	@ tmp168,* vir_addr
	bls	.L6	@,
	cmp	r5, #0	@ tmp171,
	beq	.L5	@,
	ldr	ip, [r0, #4]	@ tmp180,
	mov	r4, #2	@ i,
	cmp	r1, r4	@ size, i
	mov	r2, #8	@ ivtmp.567,
	str	ip, [r3, #4]	@ tmp180,
	bls	.L6	@,
.L5:
	ldr	r5, [r0, r2]	@ tmp176,* ivtmp.567
	add	ip, r2, #4	@ tmp173, ivtmp.567,
	add	r4, r4, #2	@ i, i,
	cmp	r1, r4	@ size, i
	str	r5, [r3, r2]	@ tmp176,* ivtmp.567
	add	r2, ip, #4	@ ivtmp.567, tmp173,
	ldr	r5, [r0, ip]	@ tmp179,
	str	r5, [r3, ip]	@ tmp179,
	bhi	.L5	@,
.L6:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	Write_V200R004_Qmatrix, .-Write_V200R004_Qmatrix
	.align	2
	.global	H264HAL_SetSliceMsgStreamAddrInfo
	.type	H264HAL_SetSliceMsgStreamAddrInfo, %function
H264HAL_SetSliceMsgStreamAddrInfo:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r3, [r1, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r2, #0]	@ <variable>.valid_bitlen,* pSLOT
	streq	r3, [r2, #4]	@ <variable>.valid_bitlen,
	streq	r3, [r2, #8]	@ <variable>.valid_bitlen,
	beq	.L16	@,
	ldr	r3, [r1, #24]	@ temp.623, <variable>.bytespos
	ldr	ip, [r1, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	bic	r4, r3, #15	@ tmp167, temp.623,
	ldr	r5, [r0, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	add	r3, ip, r3, asl #3	@, tmp165, <variable>.bitsoffset, temp.623,
	and	ip, r3, #127	@ tmp.632, tmp165,
	str	ip, [r2, #4]	@ tmp.632,
	ldr	ip, [r1, #8]	@ tmp.636, <variable>.valid_bitlen
	bic	r3, r5, #15	@ stream_base_addr.622, <variable>.stream_base_addr,
	rsb	r3, r3, r4	@ tmp.639, stream_base_addr.622, tmp167
	str	ip, [r2, #8]	@ tmp.636,
	str	r3, [r2, #0]	@ tmp.639,* pSLOT
.L16:
	ldr	r3, [r1, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r2, #12]	@ <variable>.valid_bitlen,
	streq	r3, [r2, #16]	@ <variable>.valid_bitlen,
	streq	r3, [r2, #20]	@ <variable>.valid_bitlen,
	beq	.L19	@,
	ldr	r3, [r1, #28]	@ D.33665, <variable>.bytespos
	ldr	r4, [r1, #20]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	ip, [r0, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r0, r3, #15	@ tmp174, D.33665,
	add	r3, r4, r3, asl #3	@, tmp172, <variable>.bitsoffset, D.33665,
	and	r3, r3, #127	@ tmp.432, tmp172,
	str	r3, [r2, #16]	@ tmp.432,
	ldr	r1, [r1, #12]	@ tmp.605, <variable>.valid_bitlen
	bic	r3, ip, #15	@ stream_base_addr, <variable>.stream_base_addr,
	rsb	ip, r3, r0	@ tmp.607, stream_base_addr, tmp174
	str	r1, [r2, #20]	@ tmp.605,
	str	ip, [r2, #12]	@ tmp.607,
.L19:
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	H264HAL_SetSliceMsgStreamAddrInfo, .-H264HAL_SetSliceMsgStreamAddrInfo
	.align	2
	.global	H264HAL_SetSliceMsgMvAddrInfo
	.type	H264HAL_SetSliceMsgMvAddrInfo, %function
H264HAL_SetSliceMsgMvAddrInfo:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r1, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, ip, asl #2]	@ tmp144, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp144,
	movne	r3, #0	@ prephitmp.679,
	movne	r1, r3	@ prephitmp.654, prephitmp.679
	beq	.L29	@,
.L22:
	str	r1, [r2, #32]	@ prephitmp.654,
	str	r3, [r2, #36]	@ prephitmp.679,
	bx	lr	@
.L29:
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	r3, #0	@ <variable>.pic_structure,
	beq	.L30	@,
	ldr	r3, [r1, #2776]	@ tmp156,
	bic	ip, r3, #-16777216	@ tmp154, tmp156,
	bic	r3, ip, #255	@ tmp154, tmp154,
	cmp	r3, #768	@ tmp154,
	beq	.L28	@,
	ldrb	ip, [r1, #2776]	@ zero_extendqisi2	@ <variable>.list_structure, <variable>.list_structure
	cmp	ip, #1	@ <variable>.list_structure,
	beq	.L28	@,
	ldr	ip, [r1, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.679,
	ldr	r1, [r0, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	add	ip, ip, #206	@ tmp164, <variable>.pmv_address_idc,
	ldr	r0, [r0, ip, asl #2]	@ tmp167, <variable>.PmvPhyAddr
	add	ip, r0, r1	@ tmp166, tmp167, <variable>.half_pmvblk_offset
	bic	r1, ip, #15	@ prephitmp.654, tmp166,
	str	r1, [r2, #32]	@ prephitmp.654,
	str	r3, [r2, #36]	@ prephitmp.679,
	bx	lr	@
.L30:
	ldrb	ip, [r1, #2778]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldr	r1, [r1, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	cmp	ip, #3	@ <variable>.frame_structure,
	addeq	r1, r1, #206	@ tmp150, <variable>.pmv_address_idc,
	addne	r1, r1, #206	@ tmp147, <variable>.pmv_address_idc,
	ldreq	r3, [r0, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	ldreq	r1, [r0, r1, asl #2]	@ temp.666, <variable>.PmvPhyAddr
	ldrne	r1, [r0, r1, asl #2]	@ tmp149, <variable>.PmvPhyAddr
	addeq	r3, r1, r3	@ tmp152, temp.666, <variable>.half_pmvblk_offset
	biceq	r1, r1, #15	@ prephitmp.654, temp.666,
	bicne	r1, r1, #15	@ prephitmp.654, tmp149,
	biceq	r3, r3, #15	@ prephitmp.679, tmp152,
	str	r1, [r2, #32]	@ prephitmp.654,
	str	r3, [r2, #36]	@ prephitmp.679,
	bx	lr	@
.L28:
	ldr	r1, [r1, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.679,
	add	ip, r1, #206	@ tmp161, <variable>.pmv_address_idc,
	ldr	r1, [r0, ip, asl #2]	@ tmp163, <variable>.PmvPhyAddr
	bic	r1, r1, #15	@ prephitmp.654, tmp163,
	b	.L22	@
	.fnend
	.size	H264HAL_SetSliceMsgMvAddrInfo, .-H264HAL_SetSliceMsgMvAddrInfo
	.global	__aeabi_idiv
	.align	2
	.global	H264HAL_SetSliceMsgEndMbInSlice
	.type	H264HAL_SetSliceMsgEndMbInSlice, %function
H264HAL_SetSliceMsgEndMbInSlice:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	ip, [r1, #4056]	@ <variable>.pNextSlice, <variable>.pNextSlice
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	ip, #0	@ <variable>.pNextSlice,
	beq	.L36	@,
.L33:
	str	r3, [r2, #176]	@ tmp,
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
.L36:
	ldr	r0, [r0, #920]	@ D.33739, <variable>.mbtodec
	ldrb	r1, [r1, #1]	@ zero_extendqisi2	@ D.33734, <variable>.MbaffFrameFlag
	cmp	r0, #262144	@ D.33739,
	str	r2, [sp, #4]	@,
	addgt	r1, r1, #1	@, D.33734,
	suble	r0, r0, #1	@, D.33739,
	movwgt	r0, #:lower16:262143	@,
	addle	r1, r1, #1	@, D.33734,
	movtgt	r0, #:upper16:262143	@,
	bl	__aeabi_idiv	@
	ldr	r2, [sp, #4]	@,
	mov	r3, r0	@ tmp,
	b	.L33	@
	.fnend
	.size	H264HAL_SetSliceMsgEndMbInSlice, .-H264HAL_SetSliceMsgEndMbInSlice
	.align	2
	.global	H264HAL_WriteSliceMsgRefPicField
	.type	H264HAL_WriteSliceMsgRefPicField, %function
H264HAL_WriteSliceMsgRefPicField:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	add	r7, r3, #12	@ tmp305, list,
	.pad #24
	sub	sp, sp, #24	@,,
	add	r7, r1, r7, asl #2	@, tmp200, pSlcPara, tmp305,
	ldr	ip, [r7, #4]	@ tmp202, <variable>.listXsize
	cmp	ip, #0	@ tmp202,
	beq	.L65	@,
	mov	r8, r3, asl #3	@ tmp204, list,
	add	sl, r3, #3	@ tmp203, list,
	add	r6, r8, r3	@ tmp207, tmp204, list
	mov	ip, #0	@ i,
	add	r7, r7, #4	@ tmp310, tmp200,
	mov	sl, sl, asl #2	@ Dn_num, tmp203,
	add	r5, r1, r6, asl #7	@, tmp213, pSlcPara, tmp207,
	add	r8, r8, #20	@ Dn_0, tmp204,
	add	r3, r5, #1632	@ ivtmp.750, tmp213,
	movw	r1, #:lower16:.LANCHOR0	@,
	add	r3, r3, #12	@ ivtmp.750, ivtmp.750,
	movt	r1, #:upper16:.LANCHOR0	@,
	mov	r5, ip	@ tmp1, i
	str	r1, [sp, #20]	@, %sfp
	mov	r6, ip	@ tmp, i
	b	.L64	@
.L39:
	cmp	r1, #2	@ D.33768,
	andne	r1, ip, #3	@ prephitmp.777, i,
	andne	r4, ip, #7	@ prephitmp.734, i,
	beq	.L67	@,
.L50:
	cmp	r4, #7	@ prephitmp.734,
	streq	r6, [r2, sl, asl #2]	@ tmp,* pSLOT
	addeq	sl, sl, #1	@ Dn_num, Dn_num,
	add	ip, ip, #1	@ i, i,
	moveq	r6, #0	@ tmp,
	cmp	r1, #3	@ prephitmp.777,
	streq	r5, [r2, r8, asl #2]	@ tmp1,* pSLOT
	addeq	r8, r8, #1	@ Dn_0, Dn_0,
	ldr	r1, [r7, #0]	@ D.33869, <variable>.listXsize
	moveq	r5, #0	@ tmp1,
	add	r3, r3, #36	@ ivtmp.750, ivtmp.750,
	cmp	r1, ip	@ D.33869, i
	bls	.L68	@,
.L64:
	ldrb	r1, [r3, #-20]	@ zero_extendqisi2	@ D.33768, <variable>.list_structure
	cmp	r1, #1	@ D.33768,
	bne	.L39	@,
	ldrb	r4, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r4, #3	@ <variable>.is_used,
	beq	.L40	@,
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.33780, <variable>.top_structure
	and	r4, ip, #7	@ prephitmp.734, i,
	ldrb	r9, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.33780,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #12]	@, %sfp
	cmp	r9, #1	@ <variable>.top_is_long_term,
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@ iftmp.442,
	movne	r9, #0	@ iftmp.442,
	add	r1, fp, r1, asl #1	@, tmp219,, D.33780,
	mov	fp, r4, asl #2	@, prephitmp.734,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #20]	@, %sfp
	add	r1, fp, r1, asl #2	@, tmp223,, tmp219,
	ldr	fp, [sp, #12]	@, %sfp
	orr	r9, fp, r9	@ tmp216,, iftmp.442
	ldr	fp, [r1, #12]	@ tmp226, g_ListStructField
	and	r1, fp, #3	@ tmp225, tmp226,
	ldr	fp, [sp, #16]	@, %sfp
	orr	r9, r9, r1	@ tmp227, tmp216, tmp225
	orr	r6, r6, r9, asl fp	@, tmp, tmp, tmp227,
.L45:
	ldr	r9, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, ip, #3	@ prephitmp.777, i,
	add	fp, r1, r1, asl #2	@, tmp252, prephitmp.777, prephitmp.777,
	mov	r9, r9, asl #1	@ tmp247, <variable>.apc_idc,
	and	r9, r9, #31	@ tmp249, tmp247,
	orr	r5, r5, r9, asl fp	@, tmp1, tmp1, tmp249,
	b	.L50	@
.L67:
	ldrb	r4, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r4, #3	@ <variable>.is_used,
	beq	.L52	@,
	ldrb	r1, [r3, #-14]	@ zero_extendqisi2	@ D.33830, <variable>.btm_structure
	and	r4, ip, #7	@ prephitmp.734, i,
	ldrb	r9, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.33830,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #12]	@, %sfp
	cmp	r9, #1	@ <variable>.btm_is_long_term,
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@ iftmp.446,
	movne	r9, #0	@ iftmp.446,
	add	r1, fp, r1, asl #1	@, tmp259,, D.33830,
	mov	fp, r4, asl #2	@, prephitmp.734,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [sp, #20]	@, %sfp
	add	r1, fp, r1, asl #2	@, tmp263,, tmp259,
	ldr	fp, [sp, #12]	@, %sfp
	orr	r9, fp, r9	@ tmp256,, iftmp.446
	ldr	fp, [r1, #12]	@ tmp266, g_ListStructField
	ldr	r1, [sp, #16]	@, %sfp
	and	fp, fp, #3	@ tmp265, tmp266,
	orr	r9, r9, fp	@ tmp267, tmp256, tmp265
	orr	r6, r6, r9, asl r1	@, tmp, tmp, tmp267,
.L57:
	ldr	r9, [r3, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	and	r1, ip, #3	@ prephitmp.777, i,
	add	fp, r1, r1, asl #2	@, tmp293, prephitmp.777, prephitmp.777,
	mov	r9, r9, asl #1	@ tmp287, <variable>.apc_idc,
	and	r9, r9, #30	@ tmp289, tmp287,
	orr	r9, r9, #1	@ tmp290, tmp289,
	orr	r5, r5, r9, asl fp	@, tmp1, tmp1, tmp290,
	b	.L50	@
.L40:
	ldrb	r9, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	and	r4, ip, #7	@ prephitmp.734, i,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	r9, #1	@ <variable>.top_is_long_term,
	mov	fp, r4, asl #2	@, prephitmp.734,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@,
	movne	r9, #0	@,
	add	r1, fp, r1, asl #1	@,,, <variable>.frame_structure,
	ldrb	fp, [r3, #-16]	@ zero_extendqisi2	@ <variable>.top_structure, <variable>.top_structure
	str	r9, [sp, #4]	@, %sfp
	ldr	r9, [sp, #20]	@, %sfp
	cmp	fp, #1	@ <variable>.top_structure,
	add	r1, r9, r1, asl #2	@,,,,
	str	r1, [sp, #12]	@, %sfp
	ldr	r1, [sp, #12]	@, %sfp
	moveq	fp, #4	@ iftmp.445,
	ldr	r9, [sp, #4]	@, %sfp
	movne	fp, #0	@ iftmp.445,
	orr	fp, fp, r9	@ tmp232, iftmp.445,
	ldr	r9, [r1, #12]	@ tmp243, g_ListStructField
	and	r9, r9, #3	@ tmp242, tmp243,
	orr	r1, fp, r9	@ tmp244, tmp232, tmp242
	ldr	r9, [sp, #16]	@, %sfp
	orr	r6, r6, r1, asl r9	@, tmp, tmp, tmp244,
	b	.L45	@
.L52:
	ldrb	r9, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	and	r4, ip, #7	@ prephitmp.734, i,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	r9, #1	@ <variable>.btm_is_long_term,
	mov	fp, r4, asl #2	@, prephitmp.734,
	str	fp, [sp, #16]	@, %sfp
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@,
	movne	r9, #0	@,
	add	r1, fp, r1, asl #1	@,,, <variable>.frame_structure,
	ldrb	fp, [r3, #-14]	@ zero_extendqisi2	@ <variable>.btm_structure, <variable>.btm_structure
	str	r9, [sp, #4]	@, %sfp
	ldr	r9, [sp, #20]	@, %sfp
	cmp	fp, #1	@ <variable>.btm_structure,
	add	r1, r9, r1, asl #2	@,,,,
	str	r1, [sp, #12]	@, %sfp
	ldr	r1, [sp, #4]	@, %sfp
	moveq	fp, #4	@ iftmp.449,
	movne	fp, #0	@ iftmp.449,
	orr	r9, fp, r1	@ tmp272, iftmp.449,
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r1, [fp, #12]	@ tmp283, g_ListStructField
	and	fp, r1, #3	@ tmp282, tmp283,
	ldr	r1, [sp, #16]	@, %sfp
	orr	r9, r9, fp	@ tmp284, tmp272, tmp282
	orr	r6, r6, r9, asl r1	@, tmp, tmp, tmp284,
	b	.L57	@
.L68:
	tst	r1, #7	@ D.33869,
	strne	r6, [r2, sl, asl #2]	@ tmp,* pSLOT
	strne	r5, [r2, r8, asl #2]	@ tmp1,* pSLOT
.L65:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	H264HAL_WriteSliceMsgRefPicField, .-H264HAL_WriteSliceMsgRefPicField
	.align	2
	.global	H264HAL_SetSliceMsgRefPicFrame
	.type	H264HAL_SetSliceMsgRefPicFrame, %function
H264HAL_SetSliceMsgRefPicFrame:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	ip, r3, #12	@ tmp206, list,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	add	ip, r1, ip, asl #2	@, tmp159, pSlcPara, tmp206,
	.pad #16
	sub	sp, sp, #16	@,,
	str	r2, [sp, #12]	@ pSLOT, %sfp
	ldr	r2, [ip, #4]	@ tmp161, <variable>.listXsize
	cmp	r2, #0	@ tmp161,
	beq	.L76	@,
	mov	r6, r3, asl #3	@ tmp163, list,
	add	r8, r3, #3	@ tmp162, list,
	add	r7, r6, r3	@ tmp166, tmp163, list
	add	r4, r6, #20	@, tmp163,
	mov	r3, r8, asl #2	@, tmp162,
	str	r3, [sp, #8]	@, %sfp
	add	r5, r1, r7, asl #7	@, tmp172, pSlcPara, tmp166,
	mov	r3, #0	@ i,
	add	r1, r5, #1632	@ ivtmp.836, tmp172,
	add	r9, ip, #4	@, tmp159,
	movw	fp, #:lower16:.LANCHOR0	@ tmp205,
	str	r4, [sp, #4]	@, %sfp
	str	r9, [sp, #0]	@, %sfp
	movt	fp, #:upper16:.LANCHOR0	@ tmp205,
	add	r2, r1, #12	@ ivtmp.836, ivtmp.836,
	mov	r4, r3	@ tmp1, i
	mov	r5, r3	@ tmp, i
	b	.L75	@
.L73:
	cmp	r1, #3	@ D.33909,
	beq	.L78	@,
.L74:
	ldr	ip, [sp, #0]	@, %sfp
	ldr	r1, [ip, #0]	@ D.33924, <variable>.listXsize
	cmp	r1, r3	@ D.33924, i
	bls	.L79	@,
.L75:
	ldrb	r7, [r2, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	ip, r3, #7	@ D.33902, i,
	ldr	r6, [r0, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r3, #3	@ D.33909, i,
	ldr	sl, [r2, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r3, r3, #1	@ i, i,
	add	r9, r6, r7, asl #1	@, tmp177, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	r7, [r2, #-17]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	mov	r6, ip, asl #2	@ tmp186, D.33902,
	add	r8, r1, r1, asl #2	@, tmp193, D.33909, D.33909,
	cmp	r7, #1	@ <variable>.frame_is_long_term,
	add	r9, fp, r9, asl #2	@, tmp181, tmp205, tmp177,
	mov	sl, sl, asl #1	@ tmp188, <variable>.apc_idc,
	add	r2, r2, #36	@ ivtmp.836, ivtmp.836,
	moveq	r7, #8	@ iftmp.453,
	movne	r7, #0	@ iftmp.453,
	cmp	ip, #7	@ D.33902,
	ldr	ip, [r9, #44]	@ tmp184, g_ListStructFrame
	and	sl, sl, #31	@ tmp190, tmp188,
	and	ip, ip, #3	@ tmp183, tmp184,
	orr	ip, r7, ip	@ tmp185, iftmp.453, tmp183
	orr	r4, r4, sl, asl r8	@, tmp1, tmp1, tmp190,
	orr	r5, r5, ip, asl r6	@, tmp, tmp, tmp185,
	bne	.L73	@,
	ldr	r6, [sp, #8]	@, %sfp
	cmp	r1, #3	@ D.33909,
	ldr	ip, [sp, #12]	@, %sfp
	str	r5, [ip, r6, asl #2]	@ tmp,
	add	r6, r6, #1	@,,
	mov	r5, #0	@ tmp,
	str	r6, [sp, #8]	@, %sfp
	bne	.L74	@,
.L78:
	ldr	r1, [sp, #4]	@, %sfp
	ldr	r6, [sp, #12]	@, %sfp
	str	r4, [r6, r1, asl #2]	@ tmp1,
	add	r4, r1, #1	@,,
	ldr	ip, [sp, #0]	@, %sfp
	str	r4, [sp, #4]	@, %sfp
	mov	r4, #0	@ tmp1,
	ldr	r1, [ip, #0]	@ D.33924, <variable>.listXsize
	cmp	r1, r3	@ D.33924, i
	bhi	.L75	@,
.L79:
	tst	r1, #7	@ D.33924,
	ldrne	r1, [sp, #8]	@, %sfp
	ldrne	r2, [sp, #12]	@, %sfp
	strne	r5, [r2, r1, asl #2]	@ tmp,
	ldrne	r3, [sp, #4]	@, %sfp
	strne	r4, [r2, r3, asl #2]	@ tmp1,
.L76:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.fnend
	.size	H264HAL_SetSliceMsgRefPicFrame, .-H264HAL_SetSliceMsgRefPicFrame
	.align	2
	.global	H264HAL_SetSliceMsgRefPicInfo
	.type	H264HAL_SetSliceMsgRefPicInfo, %function
H264HAL_SetSliceMsgRefPicInfo:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	mov	r5, r0	@ pParam, pParam
	mov	r4, r1	@ pSlcPara, pSlcPara
	cmp	r3, #0	@ <variable>.pic_structure,
	mov	r6, r2	@ pSLOT, pSLOT
	bne	.L81	@,
	bl	H264HAL_SetSliceMsgRefPicFrame	@
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r0, #:lower16:.LANCHOR0	@ tmp137,
	movt	r0, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r0, r2, asl #2]	@ tmp139, g_SliceTypeForPMV
	cmp	r3, #2	@ tmp139,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r5	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r6	@, pSLOT
	mov	r3, #1	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264HAL_SetSliceMsgRefPicFrame	@
.L81:
	mov	r3, #0	@,
	bl	H264HAL_WriteSliceMsgRefPicField	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	ip, #:lower16:.LANCHOR0	@ tmp140,
	movt	ip, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r1, [ip, r3, asl #2]	@ tmp142, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp142,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r5	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r6	@, pSLOT
	mov	r3, #1	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264HAL_WriteSliceMsgRefPicField	@
	.fnend
	.size	H264HAL_SetSliceMsgRefPicInfo, .-H264HAL_SetSliceMsgRefPicInfo
	.align	2
	.global	H264HAL_SetSliceMsgAPCInfo
	.type	H264HAL_SetSliceMsgAPCInfo, %function
H264HAL_SetSliceMsgAPCInfo:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r1, #3920	@ tmp148, pSlcPara,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldr	r0, [r3, #12]	@ tmp150, <variable>.Apc2RefIdx
	ldr	r4, [r1, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r3, r3, #16	@ ivtmp.902, tmp148,
	and	r5, r0, #31	@ tmp149, tmp150,
	mov	r8, #36	@ Dn_num,
	and	r1, r4, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	r4, #1	@ i,
	orr	r5, r1, r5, asl #5	@, tmp, tmp, tmp149,
.L85:
	add	r0, r4, #1	@ tmp158, i,
	add	r6, r3, #4	@ tmp157, ivtmp.902,
	add	r4, r0, #1	@ i, tmp158,
	and	r1, r0, #3	@ D.33958, tmp158,
	and	ip, r4, #3	@ D.33958, i,
	cmp	r0, #32	@ tmp158,
	add	r7, r1, r1, asl #2	@, tmp167, D.33958, D.33958,
	add	r0, ip, ip, asl #2	@, tmp175, D.33958, D.33958,
	beq	.L94	@,
	ldr	sl, [r3, #0]	@ tmp164, <variable>.Apc2RefIdx
	cmp	r1, #3	@ D.33958,
	and	r1, sl, #31	@ tmp165, tmp164,
	orr	r5, r5, r1, asl r7	@, tmp, tmp, tmp165,
	streq	r5, [r2, r8, asl #2]	@ tmp,* pSLOT
	ldr	r1, [r3, #4]	@ tmp172, <variable>.Apc2RefIdx
	moveq	r5, #0	@ tmp,
	addeq	r8, r8, #1	@ Dn_num, Dn_num,
	cmp	ip, #3	@ D.33958,
	and	r7, r1, #31	@ tmp173, tmp172,
	orr	r5, r5, r7, asl r0	@, tmp, tmp, tmp173,
	addne	r3, r6, #4	@ ivtmp.902, tmp157,
	bne	.L85	@
.L95:
	str	r5, [r2, r8, asl #2]	@ tmp,* pSLOT
	add	r3, r6, #4	@ ivtmp.902, tmp157,
	add	r8, r8, #1	@ Dn_num, Dn_num,
	mov	r5, #0	@ tmp,
	b	.L85	@
.L94:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
	.fnend
	.size	H264HAL_SetSliceMsgAPCInfo, .-H264HAL_SetSliceMsgAPCInfo
	.align	2
	.global	H264HAL_FindNextSlicePara
	.type	H264HAL_FindNextSlicePara, %function
H264HAL_FindNextSlicePara:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, r1	@ currIdx, SliceParaNum
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSlicePara, pSlicePara
	ldr	ip, [r0, #48]	@ first_mb_in_slice, <variable>.first_mb_in_slice
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	bge	.L97	@,
	ldr	r4, [r0, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ pSlicePara,
	beq	.L98	@,
	ldr	r0, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r0	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcc	.L97	@,
	mvn	r0, r2	@ tmp144, currIdx
	add	r0, r0, r1	@ tmp143, tmp144, SliceParaNum
	tst	r0, #1	@ tmp143,
	bne	.L111	@,
.L108:
	add	r0, r2, #1	@ tmp146, currIdx,
	str	r0, [r3, #0]	@ tmp146,* nextIdx
	cmp	r1, r0	@ SliceParaNum, tmp146
	add	r2, r0, #1	@ currIdx, tmp146,
	ble	.L97	@,
	ldr	r4, [r4, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ pSlicePara,
	beq	.L98	@,
	ldr	r0, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r0	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcc	.L97	@,
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	ldr	r4, [r4, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ pSlicePara,
	beq	.L98	@,
.L113:
	ldr	r0, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r0	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcs	.L108	@,
.L97:
	mov	r0, r4	@, pSlicePara
	ldmfd	sp!, {r4, pc}	@
.L111:
	add	r2, r2, #1	@ currIdx, currIdx,
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	ldr	r4, [r4, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r4, #0	@ pSlicePara,
	bne	.L113	@,
.L98:
	mov	r2, #1020	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pSlicePara
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_FindNextSlicePara, .-H264HAL_FindNextSlicePara
	.align	2
	.global	H264HAL_V200R004_CfgVdmReg
	.type	H264HAL_V200R004_CfgVdmReg, %function
H264HAL_V200R004_CfgVdmReg:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	lr, [r0, #920]	@ D.34146, <variable>.mbtodec
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp210,
	cmp	lr, #262144	@ D.34146,
	add	r7, sp, #8	@ D32.472,,
	suble	lr, lr, #1	@ iftmp.473, D.34146,
	movw	r6, #1144	@ tmp224,
	bicle	lr, lr, #-16777216	@ iftmp.473, iftmp.473,
	str	r3, [r7, #-4]!	@ tmp210, D32
	ldr	r5, [r7, #0]	@ tmp212,* D32.472
	movwgt	lr, #:lower16:262143	@ iftmp.473,
	bicle	lr, lr, #15728640	@ iftmp.473, iftmp.473,
	movtgt	lr, #:upper16:262143	@ iftmp.473,
	mul	r6, r6, r2	@ tmp223, tmp224, VdhId
	bfi	r5, lr, #0, #20	@ tmp212, iftmp.473,,
	mov	r4, r0	@ pParam, pParam
	orr	r0, r5, #1073741824	@ tmp215, tmp212,
	mov	r8, r1	@ pHwMem, pHwMem
	bic	r1, r0, #-2147483648	@ tmp216, tmp215,
	bic	ip, r1, #4194304	@ tmp217, tmp216,
	movw	r5, #:lower16:g_HwMem	@ tmp222,
	bfc	ip, #23, #1	@ tmp217,,
	movt	r5, #:upper16:g_HwMem	@ tmp222,
	orr	lr, ip, #16777216	@ tmp220, tmp217,
	mov	r0, #3	@,
	bfc	lr, #25, #1	@ tmp220,,
	str	lr, [r7, #0]	@ tmp220,* D32.472
	str	lr, [r4, #1136]	@ D32, <variable>.basic_cfg0
	movw	r1, #:lower16:.LC1	@,
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC1	@,
	mov	r7, #0	@ tmp229,
	str	lr, [r3, #8]	@ D32,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r4, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	movw	ip, #:lower16:16368	@ tmp234,
	movt	ip, #:upper16:16368	@ tmp234,
	mov	r0, r2, lsr #2	@ tmp233, <variable>.imgstride,
	ldr	r2, [r4, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	and	r3, r0, ip	@ tmp234, tmp233, tmp234
	mov	ip, #1	@ tmp240,
	bfi	r3, r1, #14, #1	@ tmp234, <variable>.NewPicFlag,,
	mov	r0, #3	@,
	bic	r3, r3, #32768	@ tmp239, tmp234,
	movw	r1, #:lower16:.LC2	@,
	bfi	r3, ip, #16, #12	@ tmp239, tmp240,,
	movt	r1, #:upper16:.LC2	@,
	bic	ip, r3, #805306368	@ tmp241, tmp239,
	orr	r3, ip, #536870912	@ tmp245, tmp241,
	bfi	r3, r2, #30, #1	@ tmp245, <variable>.Compress_en,,
	bfi	r3, r7, #31, #1	@ tmp246, tmp229,,
	str	r3, [r4, #1140]	@ tmp246, <variable>.basic_cfg1
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ tmp246,
	str	r3, [r2, #12]	@ tmp246,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC3	@,
	bic	r3, ip, #15	@ tmp258, <variable>.MsgSlotAddr,
	str	r3, [r4, #1144]	@ tmp258, <variable>.avm_addr
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC3	@,
	str	r3, [sp, #4]	@ tmp258, <variable>.av_msg_addr
	str	r3, [r2, #16]	@ tmp258,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC4	@,
	bic	r3, ip, #15	@ tmp270, <variable>.MsgSlotAddr,
	str	r3, [r4, #1148]	@ tmp270, <variable>.vam_addr
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC4	@,
	str	r3, [sp, #4]	@ tmp270, <variable>.va_msg_addr
	str	r3, [r2, #20]	@ tmp270,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC5	@,
	bic	r3, ip, #15	@ tmp282, <variable>.stream_base_addr,
	str	r3, [r4, #1152]	@ tmp282, <variable>.stream_base_addr_reg_tmp
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC5	@,
	str	r3, [sp, #4]	@ tmp282, <variable>.stream_base_addr
	str	r3, [r2, #24]	@ tmp282,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	movw	ip, #:lower16:3148803	@ tmp291,
	movt	ip, #:upper16:3148803	@ tmp291,
	str	ip, [r4, #1160]	@ tmp291, <variable>.sed_to
	str	ip, [r4, #1164]	@ tmp291, <variable>.itrans_to
	mov	r0, #3	@,
	str	ip, [r4, #1168]	@ tmp291, <variable>.pmv_to
	movw	r1, #:lower16:.LC6	@,
	str	ip, [r4, #1172]	@ tmp291, <variable>.prc_to
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r4, #1176]	@ tmp291, <variable>.rcn_to
	str	ip, [r4, #1180]	@ tmp291, <variable>.dblk_to
	str	ip, [r4, #1184]	@ tmp291, <variable>.ppfd_to
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #4]	@ tmp291, D32
	str	ip, [r2, #60]	@ tmp291,
	ldr	ip, [sp, #4]	@ D32.1011, D32
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #64]	@ D32.1011,
	ldr	ip, [sp, #4]	@ D32.1014, D32
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #68]	@ D32.1014,
	ldr	r2, [sp, #4]	@ D32.1017, D32
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #72]	@ D32.1017,
	ldr	r2, [sp, #4]	@ D32.1020, D32
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [ip, #76]	@ D32.1020,
	ldr	ip, [sp, #4]	@ D32.1023, D32
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r3, #80]	@ D32.1023,
	ldr	ip, [sp, #4]	@ D32.1026, D32
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r2, #84]	@ D32.1026,
	ldr	r3, [r4, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	str	r7, [sp, #4]	@ tmp229, D32
	add	r2, r4, r3, asl #2	@, tmp340, pParam, <variable>.CurrPicImgIdc,
	ldr	ip, [r2, #308]	@ tmp342, <variable>.ImgPhyAddr
	bic	r3, ip, #15	@ tmp343, tmp342,
	str	r3, [r4, #1188]	@ tmp343, <variable>.ystaddr_1d
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ tmp343, <variable>.ystaddr_1d
	str	r3, [r2, #96]	@ tmp343,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r4, #912]	@ <variable>.imgstride, <variable>.imgstride
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	str	ip, [r4, #1192]	@ <variable>.imgstride, <variable>.ystride_1d
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [sp, #4]	@ <variable>.imgstride, <variable>.ystride_1d
	str	ip, [r2, #100]	@ <variable>.imgstride,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r4, #304]	@ D.34220, <variable>.uv_offset
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	str	r3, [r4, #1196]	@ D.34220, <variable>.uvoffset_1d
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ D.34220, D32
	str	r3, [ip, #104]	@ D.34220,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	str	r7, [r4, #1200]	@ tmp229, <variable>.prcnum_1d_cnt
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	str	r7, [r2, #108]	@ tmp229,
	ldr	ip, [r8, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	r3, ip, #15	@ tmp381, <variable>.PpfdBufAddr,
	str	r3, [r4, #1212]	@ tmp381, <variable>.ppfd_buf_addr
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sp, #4]	@ tmp381, <variable>.ppfd_buf_addr
	str	r3, [r2, #128]	@ tmp381,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	ip, [r8, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r7, [sp, #4]	@ tmp229, D32
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	strh	ip, [sp, #4]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	ldr	r3, [sp, #4]	@ D32, D32
	str	r3, [r4, #1216]	@ D32, <variable>.ppfd_buf_len
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #132]	@ D32,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r1, [r4, #1260]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	ip, [r4, #1256]	@ <variable>.RefPicType, <variable>.RefPicType
	mov	r0, #3	@,
	ldr	r2, [r4, #1264]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r3, r1, r0	@ tmp403, <variable>.RefPicType,
	ldr	r1, [r4, #1268]	@ <variable>.RefPicType, <variable>.RefPicType
	and	lr, ip, r0	@ D32.1068, <variable>.RefPicType,
	and	ip, r2, r0	@ tmp406, <variable>.RefPicType,
	ldr	r2, [r4, #1272]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, lr, r3, asl #2	@, temp.1073, D32.1068, tmp403,
	and	r1, r1, r0	@ tmp409, <variable>.RefPicType,
	ldr	lr, [r4, #1276]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r3, ip, asl #4	@, temp.1079, temp.1073, tmp406,
	and	r2, r2, r0	@ tmp412, <variable>.RefPicType,
	ldr	ip, [r4, #1280]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r3, r1, asl #6	@, temp.1085, temp.1079, tmp409,
	and	lr, lr, r0	@ tmp415, <variable>.RefPicType,
	ldr	r3, [r4, #1284]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r2, r1, r2, asl #8	@, temp.1091, temp.1085, tmp412,
	and	ip, ip, r0	@ tmp418, <variable>.RefPicType,
	ldr	r1, [r4, #1288]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r2, r2, lr, asl #10	@, temp.1097, temp.1091, tmp415,
	and	r3, r3, r0	@ tmp421, <variable>.RefPicType,
	ldr	lr, [r4, #1292]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	ip, r2, ip, asl #12	@, temp.1103, temp.1097, tmp418,
	and	r1, r1, r0	@ tmp424, <variable>.RefPicType,
	ldr	r2, [r4, #1296]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, ip, r3, asl #14	@, temp.1109, temp.1103, tmp421,
	and	lr, lr, r0	@ tmp427, <variable>.RefPicType,
	ldr	ip, [r4, #1300]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r3, r1, asl #16	@, temp.1115, temp.1109, tmp424,
	and	r2, r2, r0	@ tmp430, <variable>.RefPicType,
	ldr	r1, [r4, #1304]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	lr, r3, lr, asl #18	@, temp.1121, temp.1115, tmp427,
	and	ip, ip, r0	@ tmp433, <variable>.RefPicType,
	ldr	r3, [r4, #1308]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r2, lr, r2, asl #20	@, temp.1127, temp.1121, tmp430,
	and	r1, r1, r0	@ tmp436, <variable>.RefPicType,
	ldr	lr, [r4, #1312]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r2, r2, ip, asl #22	@, temp.1133, temp.1127, tmp433,
	and	r3, r3, r0	@ tmp439, <variable>.RefPicType,
	ldr	ip, [r4, #1316]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r2, r1, asl #24	@, temp.1139, temp.1133, tmp436,
	and	lr, lr, r0	@ tmp442, <variable>.RefPicType,
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	orr	r3, r1, r3, asl #26	@, temp.1145, temp.1139, tmp439,
	movw	r1, #:lower16:.LC11	@,
	orr	r3, r3, lr, asl #28	@, temp.1151, temp.1145, tmp442,
	movt	r1, #:upper16:.LC11	@,
	orr	lr, r3, ip, asl #30	@, D.34245, temp.1151, <variable>.RefPicType,
	str	lr, [sp, #4]	@ D.34245, D32
	str	lr, [r2, #148]	@ D.34245,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [sp, #4]	@ tmp229, D32
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #3	@,
	movt	r1, #:upper16:.LC12	@,
	str	r7, [r3, #152]	@ tmp229,
	ldr	r2, [sp, #4]	@, D32
	bl	dprint_vfmw	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
	.fnend
	.size	H264HAL_V200R004_CfgVdmReg, .-H264HAL_V200R004_CfgVdmReg
	.align	2
	.global	H264HAL_CheckParaValid
	.type	H264HAL_CheckParaValid, %function
H264HAL_CheckParaValid:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ pParam, pParam
	beq	.L125	@,
	ldr	r2, [r3, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r2, #512	@ <variable>.pic_width_in_mb,
	bhi	.L126	@,
	ldr	r0, [r3, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #512	@ <variable>.pic_height_in_mb,
	bhi	.L127	@,
	ldr	r0, [r3, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r0, #0	@ <variable>.pFirstSlice,
	movne	r0, #0	@ D.34104,
	ldmnefd	sp!, {r3, pc}	@
	movw	r2, #753	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r3, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC13	@,
	movt	r3, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34104,
	ldmfd	sp!, {r3, pc}	@
.L126:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #751	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34104,
	ldmfd	sp!, {r3, pc}	@
.L127:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC13	@,
	mov	r2, #752	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC15	@,
	movt	r3, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34104,
	ldmfd	sp!, {r3, pc}	@
.L125:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #750	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC14	@,
	movt	r3, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34104,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_CheckParaValid, .-H264HAL_CheckParaValid
	.align	2
	.global	H264HAL_SetSliceMsgWPInfo
	.type	H264HAL_SetSliceMsgWPInfo, %function
H264HAL_SetSliceMsgWPInfo:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #284]	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	mov	r4, r1	@ pSlcPara, pSlcPara
	mov	r7, r2	@ pSLOT_BASE, pSLOT_BASE
	cmp	r3, #0	@ <variable>.weighted_pred_flag,
	beq	.L129	@,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r6, #:lower16:.LANCHOR0	@ tmp233,
	movt	r6, #:upper16:.LANCHOR0	@ tmp233,
	ldr	r1, [r6, r2, asl #2]	@ tmp167, g_SliceTypeForPMV
	cmp	r1, #1	@ tmp167,
	beq	.L130	@,
.L129:
	ldr	ip, [r0, #288]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r6, #:lower16:.LANCHOR0	@ tmp233,
	movt	r6, #:upper16:.LANCHOR0	@ tmp233,
	ldr	r0, [r6, r3, asl #2]	@ tmp171, g_SliceTypeForPMV
	cmp	r0, #2	@ tmp171,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L130:
	add	r2, r7, #256	@ ivtmp.1253, pSLOT_BASE,
	mov	r5, r4	@ ivtmp.1251, pSlcPara
	mov	r3, r4	@ ivtmp.1286, pSlcPara
	mov	r0, #0	@ i.1265,
.L132:
	ldr	r1, [r3, #88]	@ tmp173, <variable>.wp_weight_l0_y
	add	r0, r0, #1	@ i.1265, i.1265,
	ldrb	lr, [r3, #856]	@ zero_extendqisi2	@ tmp176, <variable>.wp_offset_l0_y
	ldr	ip, [r4, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r1, r1, asl #23	@ tmp172, tmp173,
	mov	lr, lr, asl #12	@ tmp178, tmp176,
	and	ip, ip, #7	@ tmp180, <variable>.luma_log2_weight_denom,
	mov	r1, r1, lsr #23	@ tmp172, tmp172,
	orr	r1, lr, r1, asl #3	@, tmp179, tmp178, tmp172,
	orr	lr, r1, ip	@ tmp.467, tmp179, tmp180
	str	lr, [r2, #0]	@ tmp.467,* ivtmp.1253
	ldr	r1, [r3, #216]	@ tmp183, <variable>.wp_weight_l0_u
	ldrb	lr, [r3, #984]	@ zero_extendqisi2	@ tmp186, <variable>.wp_offset_l0_u
	ldr	ip, [r4, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r1, r1, asl #23	@ tmp182, tmp183,
	mov	lr, lr, asl #12	@ tmp188, tmp186,
	and	ip, ip, #7	@ tmp190, <variable>.chroma_log2_weight_denom,
	mov	r1, r1, lsr #23	@ tmp182, tmp182,
	orr	r1, lr, r1, asl #3	@, tmp189, tmp188, tmp182,
	orr	lr, r1, ip	@ tmp1.469, tmp189, tmp190
	str	lr, [r2, #256]	@ tmp1.469,
	ldr	r1, [r3, #344]	@ tmp196, <variable>.wp_weight_l0_v
	ldrb	ip, [r3, #1112]	@ zero_extendqisi2	@ tmp192, <variable>.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.1286, ivtmp.1286,
	mov	lr, r1, asl #23	@ tmp195, tmp196,
	mov	r1, lr, lsr #23	@ tmp195, tmp195,
	orr	lr, r1, ip, asl #9	@, D.34053, tmp195, tmp192,
	str	lr, [r2, #512]	@ D.34053,
	ldr	r1, [r4, #44]	@ D.34057, <variable>.num_ref_idx_l0_active_minus1
	add	r2, r2, #4	@ ivtmp.1253, ivtmp.1253,
	cmp	r1, r0	@ D.34057, i.1265
	bcs	.L132	@,
	mov	r3, #1	@ i,
	cmp	r3, r1	@ i, D.34057
	and	r2, r1, r3	@ tmp247, D.34057,
	bhi	.L173	@,
	cmp	r2, #0	@ tmp247,
	beq	.L133	@,
	mov	r3, #2	@ i,
	cmp	r3, r1	@ i, D.34057
	bhi	.L173	@,
.L133:
	add	r3, r3, #2	@ i, i,
	cmp	r3, r1	@ i, D.34057
	bls	.L133	@,
.L173:
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r2, [r6, r0, asl #2]	@ tmp200, g_SliceTypeForPMV
	cmp	r2, #2	@ tmp200,
	beq	.L177	@,
.L134:
	ldr	r2, [r4, #84]	@, <variable>.chroma_log2_weight_denom
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #44]	@ temp.1276, <variable>.num_ref_idx_l0_active_minus1
	mov	r3, #1	@ i.1271,
	cmp	r3, r2	@ i.1271, temp.1276
	and	r1, r2, r3	@ tmp241, temp.1276,
	bhi	.L174	@,
	cmp	r1, #0	@ tmp241,
	beq	.L136	@,
	mov	r3, #2	@ i.1271,
	cmp	r3, r2	@ i.1271, temp.1276
	bhi	.L174	@,
.L136:
	add	r3, r3, #2	@ i.1271, i.1271,
	cmp	r3, r2	@ i.1271, temp.1276
	bls	.L136	@,
.L174:
	ldrb	r2, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r1, [r6, r2, asl #2]	@ tmp205, g_SliceTypeForPMV
	cmp	r1, #2	@ tmp205,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r2, [r4, #40]	@ D.34060, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.1275,
	cmp	r3, r2	@ i.1275, D.34060
	and	r0, r2, r3	@ tmp238, D.34060,
	bhi	.L175	@,
	cmp	r0, #0	@ tmp238,
	beq	.L137	@,
	cmp	r1, r2	@ i.1275, D.34060
	mov	r3, r1	@ i.1275, tmp205
	bhi	.L175	@,
.L137:
	add	r3, r3, #2	@ i.1275, i.1275,
	cmp	r3, r2	@ i.1275, D.34060
	bls	.L137	@,
.L175:
	mov	r3, #1	@ i.1264,
	cmp	r3, r2	@ i.1264, D.34060
	and	r1, r2, r3	@ tmp235, D.34060,
	bhi	.L176	@,
	cmp	r1, #0	@ tmp235,
	beq	.L138	@,
	mov	r3, #2	@ i.1264,
	cmp	r3, r2	@ i.1264, D.34060
	bhi	.L176	@,
.L138:
	add	r3, r3, #2	@ i.1264, i.1264,
	cmp	r3, r2	@ i.1264, D.34060
	bls	.L138	@,
.L176:
	add	r7, r7, #384	@ ivtmp.1229, pSLOT_BASE,
	mov	r2, #0	@ i.1285,
.L139:
	ldr	r3, [r5, #472]	@ tmp207, <variable>.wp_weight_l1_y
	add	r2, r2, #1	@ i.1285, i.1285,
	ldrb	lr, [r5, #1240]	@ zero_extendqisi2	@ tmp210, <variable>.wp_offset_l1_y
	ldr	r1, [r4, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	ip, r3, asl #23	@ tmp206, tmp207,
	mov	r0, lr, asl #12	@ tmp212, tmp210,
	and	lr, r1, #7	@ tmp214, <variable>.luma_log2_weight_denom,
	mov	r3, ip, lsr #23	@ tmp206, tmp206,
	orr	ip, r0, r3, asl #3	@, tmp213, tmp212, tmp206,
	orr	r0, ip, lr	@ tmp.1281, tmp213, tmp214
	str	r0, [r7, #0]	@ tmp.1281,* ivtmp.1229
	ldr	r3, [r5, #600]	@ tmp217, <variable>.wp_weight_l1_u
	ldrb	r1, [r5, #1368]	@ zero_extendqisi2	@ tmp220, <variable>.wp_offset_l1_u
	ldr	lr, [r4, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	ip, r3, asl #23	@ tmp216, tmp217,
	mov	r0, r1, asl #12	@ tmp222, tmp220,
	and	r1, lr, #7	@ tmp224, <variable>.chroma_log2_weight_denom,
	mov	r3, ip, lsr #23	@ tmp216, tmp216,
	orr	lr, r0, r3, asl #3	@, tmp223, tmp222, tmp216,
	orr	ip, lr, r1	@ tmp1.1287, tmp223, tmp224
	str	ip, [r7, #256]	@ tmp1.1287,
	ldr	r3, [r5, #728]	@ tmp230, <variable>.wp_weight_l1_v
	ldrb	r1, [r5, #1496]	@ zero_extendqisi2	@ tmp226, <variable>.wp_offset_l1_v
	add	r5, r5, #4	@ ivtmp.1251, ivtmp.1251,
	mov	r0, r3, asl #23	@ tmp229, tmp230,
	mov	lr, r0, lsr #23	@ tmp229, tmp229,
	orr	ip, lr, r1, asl #9	@, D.34095, tmp229, tmp226,
	str	ip, [r7, #512]	@ D.34095,
	ldr	r3, [r4, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	add	r7, r7, #4	@ ivtmp.1229, ivtmp.1229,
	cmp	r3, r2	@ <variable>.num_ref_idx_l1_active_minus1, i.1285
	bcs	.L139	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L177:
	ldr	r1, [r4, #40]	@ temp.1288, <variable>.num_ref_idx_l1_active_minus1
	mov	r3, #1	@ i.1269,
	cmp	r3, r1	@ i.1269, temp.1288
	and	r0, r1, r3	@ tmp244, temp.1288,
	bhi	.L134	@,
	cmp	r0, #0	@ tmp244,
	beq	.L135	@,
	cmp	r2, r1	@ i.1269, temp.1288
	mov	r3, r2	@ i.1269, tmp200
	bhi	.L134	@,
.L135:
	add	r3, r3, #2	@ i.1269, i.1269,
	cmp	r3, r1	@ i.1269, temp.1288
	bls	.L135	@,
	b	.L134	@
	.fnend
	.size	H264HAL_SetSliceMsgWPInfo, .-H264HAL_SetSliceMsgWPInfo
	.align	2
	.global	H264HAL_V200R004_SetSliceMsg
	.type	H264HAL_V200R004_SetSliceMsg, %function
H264HAL_V200R004_SetSliceMsg:
	.fnstart
.LFB1615:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r6, r0	@ pParam, pParam
	mov	r0, r3	@, CurrMsgSlotPhy
	mov	r4, r2	@ pSlcPara, pSlcPara
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSLOT_BASE,
	beq	.L194	@,
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	bl	H264HAL_SetSliceMsgStreamAddrInfo	@
	ldr	r2, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	ip, [r4, #36]	@ <variable>.cabac_init_idc, <variable>.cabac_init_idc
	movw	r3, #:lower16:g_not_direct_8x8_inference_flag	@ tmp176,
	ldr	r0, [r4, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	bic	r1, r2, #-16777216	@ tmp167, <variable>.first_mb_in_slice,
	bic	r2, r1, #15728640	@ tmp167, tmp167,
	movt	r3, #:upper16:g_not_direct_8x8_inference_flag	@ tmp176,
	and	r1, ip, #3	@ tmp173, <variable>.cabac_init_idc,
	orr	ip, r2, r0, asl #26	@, tmp172, tmp167, <variable>.SliceQPy,
	orr	r2, ip, r1, asl #24	@, tmp.497, tmp172, tmp173,
	str	r2, [r5, #24]	@ tmp.497,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r3, #0	@ g_not_direct_8x8_inference_flag,
	ldrneb	r3, [r4, #3]	@ zero_extendqisi2	@ prephitmp.1303, <variable>.direct_8x8_inference_flag
	bne	.L182	@,
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ prephitmp.1303, <variable>.direct_8x8_inference_flag
	cmp	r3, #0	@ prephitmp.1303,
	bne	.L182	@,
	ldr	r1, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	movw	r0, #1620	@ tmp181,
	ldr	ip, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mul	lr, ip, r1	@ tmp178, <variable>.pic_width_in_mb, <variable>.frame_height_in_mb
	cmp	lr, r0	@ tmp178, tmp181
	bls	.L182	@,
.L183:
	mvn	r0, #0	@ D.34409,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L182:
	ldr	r1, [r4, #56]	@ <variable>.listXsize, <variable>.listXsize
	movw	r7, #:lower16:.LANCHOR0	@ tmp195,
	ldr	r8, [r4, #52]	@ <variable>.listXsize, <variable>.listXsize
	movt	r7, #:upper16:.LANCHOR0	@ tmp195,
	ldr	ip, [r4, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	mov	r0, r6	@, pParam
	ldr	r2, [r4, #44]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	mov	lr, r1, asl #8	@ tmp184, <variable>.listXsize,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	and	ip, ip, #31	@ tmp187, <variable>.num_ref_idx_l1_active_minus1,
	orr	lr, lr, r8, asl #2	@, tmp186, tmp184, <variable>.listXsize,
	and	r2, r2, #31	@ tmp191, <variable>.num_ref_idx_l0_active_minus1,
	orr	ip, lr, ip, asl #21	@, tmp190, tmp186, tmp187,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ <variable>.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	ldr	r8, [r7, r1, asl #2]	@ tmp198, g_SliceTypeForPMV
	orr	ip, ip, r2, asl #16	@, tmp194, tmp190, tmp191,
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	orr	ip, ip, r8	@ tmp197, tmp194, tmp198
	orr	ip, ip, lr, asl #15	@, tmp201, tmp197, <variable>.direct_spatial_mv_pred_flag,
	orr	r3, ip, r3, asl #14	@, tmp.1325, tmp201, prephitmp.1303,
	str	r3, [r5, #28]	@ tmp.1325,
	bl	H264HAL_SetSliceMsgMvAddrInfo	@
	ldr	r0, [r4, #60]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.weight_flag, <variable>.weight_flag
	mov	r1, r4	@, pSlcPara
	and	r2, r0, #31	@ tmp205, <variable>.chroma_qp_index_offset,
	ldr	r8, [r4, #64]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r3, [sp, #44]	@, last_mb_in_slice
	mov	r0, r6	@, pParam
	mov	r2, r2, asl #5	@ tmp207, tmp205,
	and	lr, r8, #31	@ tmp209, <variable>.second_chroma_qp_index_offset,
	orr	r8, r2, ip, asl #16	@, tmp208, tmp207, <variable>.weight_flag,
	mov	r2, r5	@, pSLOT_BASE
	orr	ip, r8, lr	@ D.34468, tmp208, tmp209
	str	ip, [r5, #40]	@ D.34468,
	ldr	r8, [r4, #68]	@ <variable>.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	ldr	lr, [r4, #72]	@ <variable>.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	and	ip, r8, #15	@ tmp214, <variable>.slice_alpha_c0_offset_div2,
	ldr	r8, [r4, #76]	@ <variable>.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	and	lr, lr, #15	@ tmp211, <variable>.slice_beta_offset_div2,
	mov	ip, ip, asl #16	@ tmp216, tmp214,
	orr	ip, ip, lr, asl #8	@, tmp217, tmp216, tmp211,
	orr	r8, ip, r8	@ tmp.1327, tmp217, <variable>.disable_deblocking_filter_idc
	str	r8, [r5, #44]	@ tmp.1327,
	bl	H264HAL_SetSliceMsgEndMbInSlice	@
	cmn	r0, #1	@,
	beq	.L183	@,
	ldr	r2, [sp, #36]	@ NextSlcMsgSlotPhy, NextSlcMsgSlotPhy
	bic	r0, r2, #15	@ tmp.1329, NextSlcMsgSlotPhy,
	str	r0, [r5, #252]	@ tmp.1329,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r0, [r7, r3, asl #2]	@ tmp221, g_SliceTypeForPMV
	cmp	r0, #0	@ tmp221,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	sl, r4, #3920	@ tmp223, pSlcPara,
	mov	r2, r5	@, pSLOT_BASE
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	bl	H264HAL_SetSliceMsgRefPicInfo	@
	ldr	lr, [sl, #12]	@ tmp225, <variable>.Apc2RefIdx
	ldr	ip, [r4, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r2, sl, #16	@ ivtmp.1321, tmp223,
	and	r7, lr, #31	@ tmp224, tmp225,
	mov	sl, #36	@ Dn_num,
	and	r8, ip, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	ip, #1	@ i,
	orr	lr, r8, r7, asl #5	@, tmp, tmp, tmp224,
.L185:
	add	r3, ip, #1	@ tmp234, i,
	add	r7, r2, #4	@ tmp233, ivtmp.1321,
	add	ip, r3, #1	@ i, tmp234,
	and	r0, r3, #3	@ D.34648, tmp234,
	and	r1, ip, #3	@ D.34648, i,
	cmp	r3, #32	@ tmp234,
	add	r8, r0, r0, asl #2	@, tmp243, D.34648, D.34648,
	add	r3, r1, r1, asl #2	@, tmp251, D.34648, D.34648,
	beq	.L195	@,
	ldr	r9, [r2, #0]	@ tmp240, <variable>.Apc2RefIdx
	cmp	r0, #3	@ D.34648,
	and	r0, r9, #31	@ tmp241, tmp240,
	orr	lr, lr, r0, asl r8	@, tmp, tmp, tmp241,
	streq	lr, [r5, sl, asl #2]	@ tmp,* pSLOT_BASE
	ldr	r0, [r2, #4]	@ tmp248, <variable>.Apc2RefIdx
	moveq	lr, #0	@ tmp,
	addeq	sl, sl, #1	@ Dn_num, Dn_num,
	cmp	r1, #3	@ D.34648,
	and	r1, r0, #31	@ tmp249, tmp248,
	orr	lr, lr, r1, asl r3	@, tmp, tmp, tmp249,
	addne	r2, r7, #4	@ ivtmp.1321, tmp233,
	bne	.L185	@
.L196:
	str	lr, [r5, sl, asl #2]	@ tmp,* pSLOT_BASE
	add	r2, r7, #4	@ ivtmp.1321, tmp233,
	add	sl, sl, #1	@ Dn_num, Dn_num,
	mov	lr, #0	@ tmp,
	b	.L185	@
.L195:
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	bl	H264HAL_SetSliceMsgWPInfo	@
	mov	r0, #0	@ D.34409,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L194:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #1188	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34409,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	H264HAL_V200R004_SetSliceMsg, .-H264HAL_V200R004_SetSliceMsg
	.align	2
	.global	H264HAL_V200R004_SetPicMsg
	.type	H264HAL_V200R004_SetPicMsg, %function
H264HAL_V200R004_SetPicMsg:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pParam, pParam
	mov	r0, r2	@, PicMsgSlotPhy
	mov	r5, r1	@ pHwMem, pHwMem
	mov	r6, r3	@ FstSlcMsgSlotPhy, FstSlcMsgSlotPhy
	bl	MEM_Phy2Vir	@
	subs	r2, r0, #0	@ D.34295,
	beq	.L236	@,
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp220,
	ldr	lr, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp220,
	ldr	r0, [r4, #36]	@ D.34305, <variable>.transform_8x8_mode_flag
	bic	r6, r6, #15	@ tmp.1487, FstSlcMsgSlotPhy,
	ldr	r7, [r4, #40]	@ D.34308, <variable>.entropy_coding_mode_flag
	add	r1, lr, ip, asl #1	@, tmp223, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	ldr	ip, [r4, #44]	@ D.34311, <variable>.constrained_intra_pred_flag
	add	lr, r3, r1, asl #2	@, tmp227, tmp220, tmp223,
	mov	r0, r0, asl #28	@ tmp209, D.34305,
	ldr	r1, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	orr	r0, r0, r7, asl #27	@, tmp210, tmp209, D.34308,
	ldr	r7, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	orr	r0, r0, ip, asl #26	@, tmp212, tmp210, D.34311,
	ldr	ip, [lr, #76]	@ tmp230, g_StructTrans
	sub	r1, r1, #1	@ tmp213, <variable>.pic_width_in_mb,
	ldr	lr, [r4, #16]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	sub	r7, r7, #1	@ tmp216, <variable>.pic_height_in_mb,
	orr	r0, r0, r1	@ tmp215, tmp212, tmp213
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	lr, #0	@ <variable>.nal_ref_idc,
	orr	r3, r0, r7, asl #16	@, tmp219, tmp215, tmp216,
	orr	r0, r3, ip, asl #14	@, tmp231, tmp219, tmp230,
	movne	lr, #-2147483648	@, iftmp.488,
	cmp	r1, #1	@ <variable>.chroma_format_idc,
	orr	r3, r0, lr	@ tmp232, tmp231, iftmp.488
	moveq	r1, #33554432	@ iftmp.489,
	movne	r1, #0	@ iftmp.489,
	orr	lr, r3, r1	@ tmp.491, tmp232, iftmp.489
	str	lr, [r2, #0]	@ tmp.491,* D.34295
	ldr	r0, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	bic	r3, r0, #15	@ tmp.1470, <variable>.CurrPicImg2DAddr,
	str	r3, [r2, #4]	@ tmp.1470,
	ldr	lr, [r4, #48]	@ D.34337, <variable>.ThisPoc
	str	lr, [r2, #8]	@ D.34337,
	ldr	r0, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r0, #0	@ <variable>.mb_adaptive_frame_field_flag,
	streq	r0, [r2, #12]	@ <variable>.mb_adaptive_frame_field_flag,
	ldrne	r0, [r4, #52]	@ D.34341, <variable>.TopPoc
	strne	r0, [r2, #12]	@ D.34341,
	ldrne	r0, [r4, #56]	@ D.34343, <variable>.BottomPoc
	str	r0, [r2, #16]	@ <variable>.mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	lr, r3, #15	@ tmp.1477, <variable>.SedTopAddr,
	str	lr, [r2, #20]	@ tmp.1477,
	ldr	r0, [r5, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r0, #15	@ tmp.1479, <variable>.PmvTopAddr,
	str	r3, [r2, #24]	@ tmp.1479,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	lr, #2	@ <variable>.pic_structure,
	ldreq	r1, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldrne	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	addeq	r1, r1, #206	@ tmp243, <variable>.CurrPicPmvIdc,
	ldreq	lr, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	addne	lr, lr, #206	@ tmp240, <variable>.CurrPicPmvIdc,
	ldreq	r1, [r4, r1, asl #2]	@ tmp246, <variable>.PmvPhyAddr
	ldrne	lr, [r4, lr, asl #2]	@ tmp242, <variable>.PmvPhyAddr
	addeq	lr, r1, lr	@ tmp245, tmp246, <variable>.half_pmvblk_offset
	bic	r0, lr, #15	@ tmp, tmp245,
	str	r0, [r2, #28]	@ tmp,
	ldr	r3, [r5, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r3, r3, #15	@ tmp.1485, <variable>.RcnTopAddr,
	str	r3, [r2, #32]	@ tmp.1485,
	str	r6, [r2, #36]	@ tmp.1487,
	ldr	r0, [r4, #1116]	@ i.1476, <variable>.ApcSize
	cmp	r0, #0	@ i.1476,
	addne	ip, r2, #40	@ ivtmp.1466, D.34295,
	movne	r1, r4	@ ivtmp.1465, pParam
	movne	r3, #0	@ i.1490,
	beq	.L211	@,
.L210:
	ldr	r0, [r1, #924]	@ tmp252, <variable>.Apc2Idc
	add	r3, r3, #1	@ i.1490, i.1490,
	add	r1, r1, #4	@ ivtmp.1465, ivtmp.1465,
	add	lr, r4, r0, asl #2	@, tmp255, pParam, tmp252,
	ldr	r0, [lr, #308]	@ tmp257, <variable>.ImgPhyAddr
	bic	lr, r0, #15	@ tmp.1489, tmp257,
	str	lr, [ip], #4	@ tmp.1489,
	ldr	r0, [r4, #1116]	@ i.1476, <variable>.ApcSize
	cmp	r0, r3	@ i.1476, i.1490
	bhi	.L210	@,
	cmp	r0, #15	@ i.1476,
	bhi	.L212	@,
.L211:
	ldr	r1, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r3, r0, #10	@ tmp249, i.1476,
	add	ip, r0, #1	@ i.1476, i.1476,
	rsb	r0, r0, #15	@ tmp283, i.1476,
	add	r3, r2, r3, asl #2	@, ivtmp.1459, D.34295, tmp249,
	cmp	ip, #15	@ i.1476,
	add	lr, r4, r1, asl #2	@, tmp262, pParam, <variable>.Apc2Idc,
	and	r0, r0, #1	@ tmp284, tmp283,
	ldr	r1, [lr, #308]	@ tmp264, <variable>.ImgPhyAddr
	bic	r1, r1, #15	@ tmp.1492, tmp264,
	str	r1, [r3], #4	@ tmp.1492,
	bhi	.L212	@,
	cmp	r0, #0	@ tmp284,
	beq	.L209	@,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	ip, ip, #1	@ i.1476, i.1476,
	cmp	ip, #15	@ i.1476,
	add	r1, r4, lr, asl #2	@, tmp320, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp322, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1492, tmp322,
	str	r1, [r3], #4	@ tmp.1492,
	bhi	.L212	@,
.L209:
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	mov	r1, r3	@ tmp286, ivtmp.1459
	add	ip, ip, #2	@ i.1476, i.1476,
	cmp	ip, #15	@ i.1476,
	add	r0, r4, lr, asl #2	@, tmp292, pParam, <variable>.Apc2Idc,
	ldr	lr, [r0, #308]	@ tmp294, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1492, tmp294,
	str	r0, [r1], #4	@ tmp.1492,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r0, r4, lr, asl #2	@, tmp301, pParam, <variable>.Apc2Idc,
	ldr	lr, [r0, #308]	@ tmp303, <variable>.ImgPhyAddr
	bic	r0, lr, #15	@ tmp.1492, tmp303,
	str	r0, [r3, #4]	@ tmp.1492,
	add	r3, r1, #4	@ ivtmp.1459, tmp286,
	bls	.L209	@,
.L212:
	ldr	ip, [r5, #1076]	@ <variable>.H264MnAddr, <variable>.H264MnAddr
	bic	r3, ip, #15	@ tmp.1495, <variable>.H264MnAddr,
	str	r3, [r2, #104]	@ tmp.1495,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, #0	@ i,
	addne	r1, r2, #108	@ ivtmp.1451, D.34295,
	movne	r3, r4	@ ivtmp.1450, pParam
	movne	r0, #0	@ i.1472,
	beq	.L216	@,
.L215:
	ldr	lr, [r3, #988]	@ tmp.1497, <variable>.Apc2Poc
	add	r0, r0, #1	@ i.1472, i.1472,
	str	lr, [r1, #0]	@ tmp.1497,* ivtmp.1451
	ldr	ip, [r3, #1052]	@ tmp.1499, <variable>.Apc2Poc
	add	r3, r3, #4	@ ivtmp.1450, ivtmp.1450,
	str	ip, [r1, #4]	@ tmp.1499,
	add	r1, r1, #8	@ ivtmp.1451, ivtmp.1451,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, r0	@ i, i.1472
	bhi	.L215	@,
	cmp	ip, #15	@ i,
	bhi	.L217	@,
.L216:
	add	r1, ip, #14	@ tmp268, i,
	add	r3, r2, ip, asl #3	@, tmp267, D.34295, i,
	add	r7, ip, #1	@ i, i,
	add	r0, r3, #108	@ ivtmp.1442, tmp267,
	add	r1, r2, r1, asl #3	@, ivtmp.1445, D.34295, tmp268,
	cmp	r7, #15	@ i,
	rsb	lr, ip, #15	@ tmp278, i,
	mov	r3, #0	@ tmp275,
	and	ip, lr, #1	@ tmp279, tmp278,
	str	r3, [r0], #8	@ tmp275,
	str	r3, [r1], #8	@ tmp275,
	bhi	.L217	@,
	cmp	ip, #0	@ tmp279,
	beq	.L214	@,
	add	r7, r7, #1	@ i, i,
	str	r3, [r0], #8	@ tmp275,
	cmp	r7, #15	@ i,
	str	r3, [r1], #8	@ tmp275,
	bhi	.L217	@,
.L214:
	add	r7, r7, #2	@ i, i,
	mov	r6, r0	@ tmp281, ivtmp.1442
	cmp	r7, #15	@ i,
	mov	ip, r1	@ tmp282, ivtmp.1445
	str	r3, [r6], #8	@ tmp275,
	str	r3, [ip], #8	@ tmp275,
	str	r3, [r0, #8]	@ tmp275,
	add	r0, r6, #8	@ ivtmp.1442, tmp281,
	str	r3, [r1, #8]	@ tmp275,
	add	r1, ip, #8	@ ivtmp.1445, tmp282,
	bls	.L214	@,
.L217:
	ldr	r1, [r5, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	add	ip, r2, #224	@ D.35610, ivtmp.1438,
	mov	r3, r2	@ ivtmp.1438, D.34295
	bic	r0, r1, #15	@ tmp.1502, <variable>.DblkTopAddr,
	str	r0, [r2, #236]	@ tmp.1502,
.L218:
	ldr	r0, [r4, #60]	@ tmp273, <variable>.Qmatrix
	add	r1, r4, #4	@ tmp276, ivtmp.1436,
	add	r2, r3, #4	@ tmp277, ivtmp.1438,
	add	r4, r1, #4	@ ivtmp.1436, tmp276,
	str	r0, [r3, #256]	@ tmp273,
	add	r3, r2, #4	@ ivtmp.1438, tmp277,
	ldr	lr, [r1, #60]	@ tmp315, <variable>.Qmatrix
	cmp	r3, ip	@ ivtmp.1438, D.35610
	str	lr, [r2, #256]	@ tmp315,
	bne	.L218	@,
	mov	r0, #0	@ D.34299,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L236:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #1039	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC19	@,
	movt	r3, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34299,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	H264HAL_V200R004_SetPicMsg, .-H264HAL_V200R004_SetPicMsg
	.align	2
	.global	H264HAL_GetVdmRegVirAddr
	.type	H264HAL_GetVdmRegVirAddr, %function
H264HAL_GetVdmRegVirAddr:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1	@ VdhId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pHwMem, pHwMem
	bls	.L243	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34124,
	ldmfd	sp!, {r4, pc}	@
.L243:
	ldr	r3, [r0, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L244	@,
.L241:
	mov	r0, #0	@ D.34124,
	ldmfd	sp!, {r4, pc}	@
.L244:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.34128,
	str	r0, [r4, #0]	@ D.34128, <variable>.pVdmRegVirAddr
	bne	.L241	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34124,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264HAL_GetVdmRegVirAddr, .-H264HAL_GetVdmRegVirAddr
	.align	2
	.global	H264HAL_V200R004_CutSliceChain
	.type	H264HAL_V200R004_CutSliceChain, %function
H264HAL_V200R004_CutSliceChain:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ D.33626,
	beq	.L249	@,
	mov	r0, #0	@ tmp140,
	str	r0, [r3, #252]	@ tmp140,
	ldmfd	sp!, {r3, pc}	@
.L249:
	movw	r1, #:lower16:.LC13	@,
	movw	r2, #313	@,
	movt	r1, #:upper16:.LC13	@,
	movw	r3, #:lower16:.LC18	@,
	movt	r3, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33630,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_V200R004_CutSliceChain, .-H264HAL_V200R004_CutSliceChain
	.align	2
	.global	H264HAL_V200R004_StartDec
	.type	H264HAL_V200R004_StartDec, %function
H264HAL_V200R004_StartDec:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r5, r1	@ VdhId, VdhId
	mov	r4, r0	@ pParam, pParam
	bl	H264HAL_CheckParaValid	@
	cmn	r0, #1	@,
	bne	.L267	@,
.L251:
	mvn	r0, #0	@ D.34516,
.L255:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L267:
	movw	r8, #1144	@ tmp166,
	movw	r7, #:lower16:g_HwMem	@ tmp167,
	mul	r8, r8, r5	@ tmp165, tmp166, VdhId
	movt	r7, #:upper16:g_HwMem	@ tmp167,
	mov	r1, r5	@, VdhId
	add	r9, r7, r8	@ pHwMem, tmp167, tmp165
	mov	r0, r9	@, pHwMem
	bl	H264HAL_GetVdmRegVirAddr	@
	cmn	r0, #1	@,
	beq	.L251	@,
	movw	sl, #:lower16:.LANCHOR1	@ tmp168,
	movt	sl, #:upper16:.LANCHOR1	@ tmp168,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC22	@,
	ldr	r2, [sl, #0]	@ StartCnt, StartCnt
	movt	r1, #:upper16:.LC22	@,
	mvn	r6, #0	@ tmp177,
	add	r2, r2, #1	@ StartCnt.503, StartCnt,
	str	r2, [sl, #0]	@ StartCnt.503, StartCnt
	bl	dprint_vfmw	@
	mov	r2, r5	@, VdhId
	mov	r0, r4	@, pParam
	mov	r1, r9	@, pHwMem
	bl	H264HAL_V200R004_CfgVdmReg	@
	ldr	r3, [r7, r8]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r4	@, pParam
	mov	r1, r9	@, pHwMem
	str	r6, [r3, #32]	@ tmp177,
	ldr	r2, [r9, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [r9, #48]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_SetPicMsg	@
	ldr	fp, [r4, #1124]	@ pSlicePara, <variable>.pFirstSlice
	ldr	r5, [fp, #48]	@ D.34530, <variable>.first_mb_in_slice
	cmp	r5, #0	@ D.34530,
	moveq	ip, r5	@ AddSlice0Flag, D.34530
	bne	.L268	@,
.L253:
	mov	r6, #0	@ pre_first_mb_in_slice,
	mov	sl, r4	@ pParam, pParam
	mov	r5, r6	@ i, pre_first_mb_in_slice
	add	r2, ip, #5	@, AddSlice0Flag,
	str	r2, [sp, #28]	@, %sfp
.L256:
	ldr	r1, [sl, #1120]	@ temp.1586, <variable>.SliceParaNum
	cmp	r5, r1	@ i, temp.1586
	blt	.L269	@,
	cmp	r1, #0	@ temp.1586,
	ble	.L262	@,
	add	r0, r1, ip	@ tmp228, temp.1586, AddSlice0Flag
	add	r9, r9, r0, asl #2	@, tmp232, pHwMem, tmp228,
	ldr	r0, [r9, #44]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_CutSliceChain	@
	mov	r0, #0	@ D.34516,
	b	.L255	@
.L269:
	ldr	r4, [sp, #28]	@, %sfp
	add	r2, r5, ip	@ tmp237, i, AddSlice0Flag
	add	r3, r5, r4	@, i,
	str	r3, [sp, #24]	@, %sfp
	add	r7, r9, r2, asl #2	@, tmp242, pHwMem, tmp237,
	ldr	r4, [fp, #48]	@ temp.1584, <variable>.first_mb_in_slice
	add	r8, r9, r3, asl #2	@, tmp247, pHwMem,,
	add	r2, r7, #44	@ tmp243, tmp242,
	add	r3, r8, #28	@ tmp248, tmp247,
.L257:
	cmp	r4, r6	@ temp.1584, pre_first_mb_in_slice
	movhi	r7, #0	@, tmp211
	movls	r7, #1	@, tmp211
	cmp	r5, #0	@ i,
	ldr	r8, [r2, #0]	@ prev_slcmsg_phy.1585, <variable>.MsgSlotAddr
	movle	r7, #0	@, tmp211,
	cmp	r7, #0	@ tmp211,
	ldr	r7, [r3, #0]	@ cur_slcmsg_phy.1583, <variable>.MsgSlotAddr
	bne	.L257	@,
	add	r2, r5, #1	@, i,
	mov	r0, fp	@, tmp_pSlicePara.1588
	add	r3, sp, #44	@,,
	str	ip, [sp, #20]	@,
	bl	H264HAL_FindNextSlicePara	@
	ldr	ip, [sp, #20]	@,
	cmp	r0, #0	@
	str	r0, [sp, #32]	@, %sfp
	beq	.L251	@,
	ldr	r5, [sp, #44]	@ i, j
	ldr	r3, [sl, #1120]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r3, r5	@ <variable>.SliceParaNum, i
	beq	.L258	@,
	ldr	lr, [sp, #24]	@, %sfp
	cmp	lr, #140	@,
	beq	.L258	@,
	ldr	r2, [sp, #28]	@, %sfp
	ldr	r1, [sp, #32]	@, %sfp
	add	r6, r5, r2	@ tmp220, i,
	ldr	r0, [r1, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	add	r3, r9, r6, asl #2	@, tmp224, pHwMem, tmp220,
	sub	lr, r0, #1	@, <variable>.first_mb_in_slice,
	str	lr, [sp, #24]	@, %sfp
	ldr	lr, [r3, #28]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
.L260:
	str	lr, [sp, #4]	@ next_slcmsg_phy,
	mov	r2, fp	@, tmp_pSlicePara.1588
	ldr	lr, [sp, #24]	@, %sfp
	mov	r3, r7	@, cur_slcmsg_phy.1583
	mov	r0, sl	@, pParam
	mov	r1, r9	@, pHwMem
	str	ip, [sp, #20]	@,
	mov	r6, r4	@ pre_first_mb_in_slice, temp.1584
	str	r8, [sp, #0]	@ prev_slcmsg_phy.1585,
	str	lr, [sp, #12]	@,
	str	r4, [sp, #8]	@ pre_first_mb_in_slice,
	bl	H264HAL_V200R004_SetSliceMsg	@
	ldr	ip, [sp, #20]	@,
	cmp	r0, #0	@,
	bne	.L270	@,
	ldr	fp, [sp, #32]	@ tmp_pSlicePara.1588, %sfp
	b	.L256	@
.L268:
	ldr	r1, [fp, #12]	@, <variable>.valid_bitlen
	mov	ip, #0	@ tmp180,
	ldr	sl, [fp, #8]	@ D.34534, <variable>.valid_bitlen
	mov	r7, #1	@ tmp181,
	str	ip, [fp, #48]	@ tmp180, <variable>.first_mb_in_slice
	mov	r0, r4	@, pParam
	str	r7, [fp, #8]	@ tmp181, <variable>.valid_bitlen
	mov	r2, fp	@, pSlicePara
	str	r1, [sp, #36]	@, %sfp
	mov	r1, r9	@, pHwMem
	ldr	lr, [fp, #16]	@, <variable>.bitsoffset
	str	ip, [fp, #12]	@ tmp180, <variable>.valid_bitlen
	str	lr, [sp, #32]	@, %sfp
	sub	lr, r5, #1	@ tmp191, D.34530,
	ldr	r3, [fp, #20]	@, <variable>.bitsoffset
	str	ip, [fp, #16]	@ tmp180, <variable>.bitsoffset
	str	r3, [sp, #24]	@, %sfp
	ldr	r8, [fp, #24]	@, <variable>.bytespos
	str	ip, [fp, #20]	@ tmp180, <variable>.bitsoffset
	str	r8, [sp, #28]	@, %sfp
	ldr	r8, [fp, #28]	@ D.34544, <variable>.bytespos
	str	ip, [fp, #24]	@ tmp180, <variable>.bytespos
	str	ip, [fp, #28]	@ tmp180, <variable>.bytespos
	ldr	r3, [r9, #48]	@, <variable>.MsgSlotAddr
	str	ip, [sp, #8]	@ tmp180,
	ldr	ip, [r9, #44]	@, <variable>.MsgSlotAddr
	str	ip, [sp, #0]	@,
	ldr	ip, [r9, #52]	@, <variable>.MsgSlotAddr
	str	lr, [sp, #12]	@ tmp191,
	str	ip, [sp, #4]	@,
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L271	@,
	str	r8, [fp, #28]	@ D.34544, <variable>.bytespos
	mov	ip, r7	@ AddSlice0Flag, tmp181
	str	r5, [fp, #48]	@ D.34530, <variable>.first_mb_in_slice
	str	sl, [fp, #8]	@ D.34534, <variable>.valid_bitlen
	ldr	sl, [sp, #36]	@, %sfp
	str	sl, [fp, #12]	@, <variable>.valid_bitlen
	ldr	r6, [sp, #32]	@, %sfp
	str	r6, [fp, #16]	@, <variable>.bitsoffset
	ldr	r5, [sp, #24]	@, %sfp
	str	r5, [fp, #20]	@, <variable>.bitsoffset
	ldr	r0, [sp, #28]	@, %sfp
	str	r0, [fp, #24]	@, <variable>.bytespos
	ldr	fp, [r4, #1124]	@ pSlicePara, <variable>.pFirstSlice
	b	.L253	@
.L258:
	ldr	r6, [sl, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	lr, #0	@ next_slcmsg_phy,
	ldr	r2, [sl, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	lr, [fp, #4056]	@ next_slcmsg_phy, <variable>.pNextSlice
	ldr	r5, [sl, #1120]	@ i, <variable>.SliceParaNum
	mul	r0, r2, r6	@ tmp215, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	sub	r1, r0, #1	@, tmp215,
	str	r1, [sp, #24]	@, %sfp
	b	.L260	@
.L262:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34516,
	b	.L255	@
.L270:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #1407	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34516,
	b	.L255	@
.L271:
	mov	r0, r7	@, tmp181
	movw	r1, #:lower16:.LC23	@,
	movw	r2, #1352	@,
	movt	r1, #:upper16:.LC23	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.34516, tmp177
	b	.L255	@
	.fnend
	.size	H264HAL_V200R004_StartDec, .-H264HAL_V200R004_StartDec
	.align	2
	.global	Write_V200R004_CabacTab
	.type	Write_V200R004_CabacTab, %function
Write_V200R004_CabacTab:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L275	@,
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
.L275:
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC25	@,
	mov	r2, #250	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	Write_V200R004_CabacTab, .-Write_V200R004_CabacTab
	.align	2
	.global	H264HAL_V200R004_InitHal
	.type	H264HAL_V200R004_InitHal, %function
H264HAL_V200R004_InitHal:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r0, [r0, #1076]	@, <variable>.H264MnAddr
	bl	Write_V200R004_CabacTab	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_V200R004_InitHal, .-H264HAL_V200R004_InitHal
	.global	g_CabacMN
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	g_SliceTypeForPMV, %object
	.size	g_SliceTypeForPMV, 12
g_SliceTypeForPMV:
	.word	1
	.word	2
	.word	0
	.type	g_ListStructField, %object
	.size	g_ListStructField, 32
g_ListStructField:
	.word	0
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.word	2
	.type	g_ListStructFrame, %object
	.size	g_ListStructFrame, 32
g_ListStructFrame:
	.word	0
	.word	1
	.word	3
	.word	3
	.word	3
	.word	3
	.word	2
	.word	2
	.type	g_StructTrans, %object
	.size	g_StructTrans, 32
g_StructTrans:
	.word	0
	.word	3
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	g_CabacMN, %object
	.size	g_CabacMN, 5120
g_CabacMN:
	.word	388044546
	.word	352326208
	.word	153820416
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	721207
	.word	4522025
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	521477919
	.word	422707200
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	388044546
	.word	352326208
	.word	153820416
	.word	3013710
	.word	-44040151
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	203950899
	.word	238747648
	.word	0
	.word	0
	.word	87683918
	.word	-180289218
	.word	17367089
	.word	-613020375
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	21230414
	.word	-180289218
	.word	440602714
	.word	157864575
	.word	-328728576
	.word	0
	.word	0
	.word	0
	.word	204602441
	.word	288553558
	.word	-278922691
	.word	154007875
	.word	-78971830
	.word	-78579384
	.word	20578304
	.word	0
	.word	-45745583
	.word	-178256329
	.word	121895766
	.word	39321658
	.word	-45287842
	.word	87426117
	.word	-45023144
	.word	0
	.word	370745856
	.word	268442146
	.word	320219136
	.word	219088691
	.word	38797353
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	421532977
	.word	355860480
	.word	0
	.word	0
	.word	37878343
	.word	-212925132
	.word	-32963543
	.word	-478802647
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-62064057
	.word	-212925132
	.word	956442916
	.word	440783743
	.word	-245039104
	.word	0
	.word	0
	.word	0
	.word	154336582
	.word	171312709
	.word	-212205516
	.word	137101122
	.word	-11730618
	.word	-27854008
	.word	3997696
	.word	0
	.word	-28968110
	.word	-161480133
	.word	38534487
	.word	-43777736
	.word	-45417899
	.word	3931473
	.word	-111740065
	.word	0
	.word	487594240
	.word	234886184
	.word	336207104
	.word	119732056
	.word	-327221207
	.word	4128831
	.word	4128768
	.word	0
	.word	351339062
	.word	55239807
	.word	-378996171
	.word	-13236429
	.word	354489138
	.word	289210368
	.word	0
	.word	0
	.word	437320789
	.word	-395967175
	.word	-164364994
	.word	-446493399
	.word	54458195
	.word	72745057
	.word	-112721920
	.word	0
	.word	-28640171
	.word	-395967175
	.word	905979178
	.word	207741055
	.word	-361431040
	.word	0
	.word	0
	.word	0
	.word	104460105
	.word	238680669
	.word	-229049812
	.word	70714167
	.word	-61866421
	.word	-194905806
	.word	20709376
	.word	0
	.word	-178654873
	.word	-344714439
	.word	339346516
	.word	106955071
	.word	-78253206
	.word	88016459
	.word	-44368027
	.word	0
	.word	-276827290
	.word	5437770
	.word	-345250433
	.word	-511711105
	.word	-295705217
	.word	-344792449
	.word	0
	.word	0
	.word	-277089165
	.word	-260377229
	.word	-45614550
	.word	-80544458
	.word	-29491142
	.word	20971080
	.word	-11864229
	.word	0
	.word	-111282857
	.word	-45221049
	.word	-62915516
	.word	-195757762
	.word	-113178563
	.word	87621186
	.word	20971581
	.word	-28442624
	.word	402657033
	.word	135859474
	.word	252251411
	.word	170200082
	.word	102568993
	.word	253625389
	.word	20578366
	.word	121438208
	.word	-94504364
	.word	-129040318
	.word	-12124098
	.word	-29557189
	.word	-78906050
	.word	-63244478
	.word	-11599801
	.word	54788096
	.word	252053011
	.word	118492174
	.word	302845195
	.word	219090704
	.word	202837271
	.word	252972570
	.word	237769000
	.word	288292864
	.word	-197132732
	.word	-246090904
	.word	-79430885
	.word	-47710676
	.word	3076160
	.word	-129698226
	.word	-95553962
	.word	0
	.word	20055860
	.word	170065964
	.word	187040045
	.word	3015980
	.word	521208115
	.word	120724499
	.word	270601790
	.word	0
	.word	203819821
	.word	254217002
	.word	220991533
	.word	204016177
	.word	505549354
	.word	171381043
	.word	288227417
	.word	0
	.word	170719550
	.word	254021160
	.word	270208029
	.word	19665956
	.word	304088362
	.word	19925566
	.word	288229696
	.word	0
	.word	403772693
	.word	420880155
	.word	371004195
	.word	238160441
	.word	121634381
	.word	-61670050
	.word	155579501
	.word	0
	.word	-45680547
	.word	-161815937
	.word	-195235529
	.word	-163775938
	.word	-62786487
	.word	-129173168
	.word	-145166482
	.word	0
	.word	-210964124
	.word	-211422373
	.word	-195103144
	.word	-262867370
	.word	-111938729
	.word	-312606394
	.word	4782922
	.word	305856512
	.word	451745519
	.word	451878631
	.word	485237225
	.word	635773417
	.word	686040815
	.word	569714929
	.word	704259585
	.word	688979968
	.word	-194448031
	.word	-262080168
	.word	-128583339
	.word	-145362088
	.word	71499085
	.word	-45286836
	.word	171638604
	.word	-11337728
	.word	618472670
	.word	551953890
	.word	752886510
	.word	586230001
	.word	569975803
	.word	553657858
	.word	554506019
	.word	221904896
	.word	-11863455
	.word	-111416193
	.word	-178131884
	.word	-179307959
	.word	-62196906
	.word	-211749535
	.word	-311099392
	.word	0
	.word	-127471260
	.word	6225920
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	519707395
	.word	437649408
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-110890401
	.word	39780352
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	503126528
	.word	371064832
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-63374510
	.word	-112399747
	.word	-129041631
	.word	-63898059
	.word	-46206137
	.word	-162532266
	.word	-212143519
	.word	0
	.word	-62193080
	.word	-179569337
	.word	254735173
	.word	4063297
	.word	354808136
	.word	154734646
	.word	4066376
	.word	0
	.word	636494844
	.word	653797117
	.word	620963333
	.word	704652048
	.word	655756848
	.word	455415100
	.word	205783649
	.word	0
	.word	5045066
	.word	4650315
	.word	21233729
	.word	-230096066
	.word	71237444
	.word	-213185737
	.word	88083526
	.word	0
	.word	536421361
	.word	587014659
	.word	620700165
	.word	537600773
	.word	571221771
	.word	505225754
	.word	489100098
	.word	0
	.word	0
	.word	0
	.word	-45351145
	.word	19005739
	.word	3604023
	.word	3998016
	.word	4519772
	.word	0
	.word	-277287824
	.word	-294455979
	.word	-245566887
	.word	-431492783
	.word	-229638076
	.word	-230234056
	.word	-381360078
	.word	-179699712
	.word	401808115
	.word	686895602
	.word	738405638
	.word	740434230
	.word	324141056
	.word	0
	.word	0
	.word	0
	.word	-227871903
	.word	-245697446
	.word	-296159671
	.word	-145755562
	.word	-162924986
	.word	-163185854
	.word	-146736326
	.word	37421056
	.word	368449781
	.word	486022399
	.word	486743305
	.word	588520740
	.word	239271936
	.word	0
	.word	0
	.word	0
	.word	-444668830
	.word	-412751549
	.word	-464327586
	.word	-262935954
	.word	-346296730
	.word	-211950721
	.word	0
	.word	0
	.word	-111346855
	.word	-111086740
	.word	-95617492
	.word	2949172
	.word	-46072261
	.word	-62456757
	.word	-128782490
	.word	0
	.word	-27919794
	.word	-11798195
	.word	37094706
	.word	-45874894
	.word	103480401
	.word	20970566
	.word	4391481
	.word	-28573696
	.word	186384936
	.word	53215281
	.word	3015212
	.word	36896815
	.word	69665342
	.word	103678006
	.word	53871162
	.word	71237632
	.word	-211095446
	.word	-162010254
	.word	-294718878
	.word	-361829526
	.word	-295179413
	.word	-378739088
	.word	-161418145
	.word	-77922304
	.word	235604750
	.word	151720459
	.word	352917502
	.word	552673521
	.word	585836521
	.word	719268321
	.word	786704116
	.word	354222080
	.word	-47251647
	.word	-12978339
	.word	-145947880
	.word	2752560
	.word	3668539
	.word	-112724909
	.word	-178789769
	.word	0
	.word	186844224
	.word	20777763
	.word	303631384
	.word	220007716
	.word	-161613495
	.word	-28766930
	.word	154270052
	.word	0
	.word	104007225
	.word	120915508
	.word	104270637
	.word	237242421
	.word	-11401417
	.word	-45215954
	.word	371195732
	.word	0
	.word	-144840098
	.word	-78247613
	.word	-61802923
	.word	-12187844
	.word	154797373
	.word	204607282
	.word	305205558
	.word	0
	.word	770192851
	.word	820396501
	.word	736962550
	.word	503910938
	.word	337313849
	.word	-229442741
	.word	-312353411
	.word	0
	.word	-45418660
	.word	-128456322
	.word	20643101
	.word	-14417626
	.word	36436535
	.word	3801152
	.word	-45418918
	.word	0
	.word	154468917
	.word	87424573
	.word	3670072
	.word	-213910724
	.word	-12712903
	.word	-96140231
	.word	237438003
	.word	222560256
	.word	419897081
	.word	469965828
	.word	536879871
	.word	503717382
	.word	537468691
	.word	437983774
	.word	622074914
	.word	289800192
	.word	170460974
	.word	-13433039
	.word	137627945
	.word	103744055
	.word	220793388
	.word	103941429
	.word	221316159
	.word	104857600
	.word	452992000
	.word	536615686
	.word	570957322
	.word	404103443
	.word	371202591
	.word	355015212
	.word	388960321
	.word	239534080
	.word	87426620
	.word	104531525
	.word	4652061
	.word	85919530
	.word	20708922
	.word	-45548207
	.word	-178192384
	.word	0
	.word	54526269
	.word	155123712
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	21169467
	.word	155385856
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28967365
	.word	105250816
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	138151487
	.word	289472512
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-13631420
	.word	-62523304
	.word	3803141
	.word	168693266
	.word	219873832
	.word	3865926
	.word	-95422379
	.word	0
	.word	120721447
	.word	86770740
	.word	187759420
	.word	-12910533
	.word	371262764
	.word	237764430
	.word	3934533
	.word	0
	.word	270406176
	.word	304289309
	.word	404690726
	.word	304813097
	.word	188680507
	.word	155254622
	.word	-27658388
	.word	0
	.word	170658079
	.word	204145461
	.word	237111846
	.word	-46920408
	.word	287311660
	.word	119934258
	.word	171514411
	.word	0
	.word	353900308
	.word	437721888
	.word	471276568
	.word	388503584
	.word	471668522
	.word	322508341
	.word	373099350
	.word	0
	.word	0
	.word	0
	.word	-96274141
	.word	-114624467
	.word	-80677832
	.word	-96666818
	.word	-129828788
	.word	0
	.word	-61867705
	.word	-79300794
	.word	-129829308
	.word	-313920443
	.word	-263786173
	.word	-331420346
	.word	-264050111
	.word	-331415552
	.word	167647991
	.word	569845753
	.word	704523523
	.word	822684955
	.word	607846400
	.word	0
	.word	0
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	368255474
	.word	670641918
	.word	855784454
	.word	1024538402
	.word	708706304
	.word	0
	.word	0
	.word	0
	.word	-645927333
	.word	-278862255
	.word	-580720538
	.word	-379460233
	.word	-396104850
	.word	-295248769
	.word	0
	.word	0
	.word	5307225
	.word	-111215524
	.word	-378474169
	.word	-113442763
	.word	-79497907
	.word	-145688748
	.word	-162013569
	.word	0
	.word	-211291301
	.word	-145100196
	.word	-129174441
	.word	-378607511
	.word	-162599824
	.word	-278678913
	.word	-1166029185
	.word	-763428864
	.word	70060572
	.word	169812469
	.word	886379023
	.word	469771242
	.word	652681728
	.word	669917428
	.word	1721892864
	.word	955318272
	.word	-344004228
	.word	-328276354
	.word	-411242647
	.word	-444996235
	.word	-278469003
	.word	-445325446
	.word	-161484188
	.word	-127991808
	.word	335155962
	.word	234887924
	.word	535831015
	.word	568993252
	.word	669133538
	.word	802565596
	.word	836643311
	.word	537460736
	.word	2555969
	.word	-246096513
	.word	-345637593
	.word	-80348867
	.word	-179572403
	.word	-279189653
	.word	-412097414
	.word	0
	.word	-62719154
	.word	-62392248
	.word	37486391
	.word	-112788917
	.word	-128328073
	.word	-45408236
	.word	504812671
	.word	0
	.word	570170634
	.word	637219811
	.word	670512350
	.word	1170621377
	.word	754655239
	.word	937631745
	.word	6948
	.word	0
	.word	-277879694
	.word	-94765488
	.word	-61671595
	.word	-128843960
	.word	88080707
	.word	154665029
	.word	21301061
	.word	0
	.word	1169768385
	.word	1119899062
	.word	920204509
	.word	703996928
	.word	687808014
	.word	471471909
	.word	204933953
	.word	0
	.word	-28707736
	.word	-144973441
	.word	-179505620
	.word	-164301255
	.word	-147132344
	.word	-112853947
	.word	-78973098
	.word	0
	.word	3603261
	.word	3866428
	.word	-46270397
	.word	-413863350
	.word	-79624908
	.word	37290045
	.word	-146410170
	.word	305594368
	.word	568795874
	.word	618931940
	.word	652550894
	.word	602940146
	.word	553133562
	.word	587210250
	.word	470948377
	.word	489226240
	.word	-112854461
	.word	-263324096
	.word	37616195
	.word	-46136775
	.word	-46006974
	.word	4065587
	.word	-12386745
	.word	-28639232
	.word	635381724
	.word	685450978
	.word	786377442
	.word	686305763
	.word	653535478
	.word	654126843
	.word	521411870
	.word	422313984
	.word	53937976
	.word	121047101
	.word	37943074
	.word	18877215
	.word	87359031
	.word	-29163447
	.word	-128385024
	.word	0
	.word	-62455750
	.word	121438208
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4915784
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-12126392
	.word	238813184
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	204475185
	.word	439156736
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-46858172
	.word	-112527528
	.word	53741316
	.word	168300808
	.word	269681445
	.word	-12715191
	.word	-12125106
	.word	0
	.word	153686553
	.word	153093419
	.word	154075180
	.word	3342894
	.word	321322050
	.word	254151722
	.word	153223257
	.word	0
	.word	237179423
	.word	287511838
	.word	288166954
	.word	304945946
	.word	271976258
	.word	272108361
	.word	172226164
	.word	0
	.word	270860335
	.word	304286501
	.word	204016169
	.word	36703273
	.word	220790843
	.word	53613352
	.word	54661682
	.word	0
	.word	370546454
	.word	454369556
	.word	438050328
	.word	455217706
	.word	421990962
	.word	205919542
	.word	239536979
	.word	0
	.word	0
	.word	0
	.word	-79233000
	.word	-14352854
	.word	-30083271
	.word	-96469951
	.word	-62654126
	.word	0
	.word	-78251439
	.word	-162662063
	.word	-279908791
	.word	-62196141
	.word	-146278589
	.word	-12715966
	.word	-230555589
	.word	37421056
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-44958388
	.word	-112657842
	.word	-196545980
	.word	-45680052
	.word	-79496386
	.word	3800125
	.word	-147062474
	.word	37355520
	.word	301342963
	.word	720843259
	.word	889208835
	.word	1141522971
	.word	792264704
	.word	0
	.word	0
	.word	0
	.word	-595595429
	.word	-228595884
	.word	-413731751
	.word	-279191169
	.word	-229839257
	.word	-212149377
	.word	0
	.word	0
	.word	189793612
	.word	39060814
	.word	-395056558
	.word	-146931659
	.word	3928661
	.word	-212208802
	.word	-178461825
	.word	0
	.word	-61410216
	.word	-78447288
	.word	-62654392
	.word	-262539451
	.word	-12909246
	.word	70908999
	.word	-28900806
	.word	-11927552
	.word	69664810
	.word	119671581
	.word	136250917
	.word	120193832
	.word	136383787
	.word	220464175
	.word	53936698
	.word	104595456
	.word	-360716417
	.word	-411507329
	.word	-311236235
	.word	-411638155
	.word	-395189130
	.word	-512173188
	.word	-161549978
	.word	-161284096
	.word	301142263
	.word	301210603
	.word	635578840
	.word	718745809
	.word	669003480
	.word	885862103
	.word	886647789
	.word	537591808
	.word	-97057731
	.word	-229385345
	.word	-345705927
	.word	-196872889
	.word	-162665643
	.word	-262608536
	.word	-245179521
	.word	0
	.word	-64159931
	.word	4127027
	.word	-63964630
	.word	-47580619
	.word	139261774
	.word	-179107532
	.word	4455258
	.word	0
	.word	137104172
	.word	237635376
	.word	70779956
	.word	220530993
	.word	322570800
	.word	204275781
	.word	337709119
	.word	0
	.word	-211104129
	.word	-77852359
	.word	-78187682
	.word	-195297715
	.word	4718409
	.word	71366993
	.word	88084281
	.word	0
	.word	1036597458
	.word	1053708733
	.word	770450430
	.word	470753793
	.word	654384657
	.word	338039341
	.word	255197263
	.word	0
	.word	-78645912
	.word	-178527617
	.word	-162334672
	.word	-130156478
	.word	-112790965
	.word	-162531501
	.word	-195236244
	.word	0
	.word	21229896
	.word	-78907312
	.word	-346821824
	.word	-216012992
	.word	-480376501
	.word	289405002
	.word	-81527269
	.word	224067584
	.word	602808807
	.word	486348810
	.word	452993778
	.word	886319080
	.word	319889177
	.word	605886497
	.word	571416084
	.word	373882880
	.word	21168196
	.word	-163380924
	.word	5046848
	.word	4520782
	.word	121046331
	.word	37817910
	.word	254543164
	.word	38141952
	.word	619718130
	.word	636428289
	.word	571415823
	.word	404300310
	.word	521151250
	.word	521937193
	.word	605821743
	.word	356384768
	.word	4324943
	.word	4783196
	.word	-61871547
	.word	-263455174
	.word	20640590
	.word	-145490863
	.word	-211615744
	.word	0
	.word	54655301
	.word	139264000
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	337777439
	.word	455868416
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-28512682
	.word	205914112
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	304026394
	.word	605552640
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	-96992444
	.word	-129502366
	.word	-212731354
	.word	-213976518
	.word	-29626295
	.word	-162729130
	.word	-145492393
	.word	0
	.word	-163445954
	.word	-45814703
	.word	1966343
	.word	-48764086
	.word	272820604
	.word	287649006
	.word	853469823
	.word	0
	.word	319819556
	.word	254022940
	.word	420814356
	.word	520887056
	.word	405405789
	.word	238554937
	.word	438757503
	.word	0
	.word	88142918
	.word	188155192
	.word	4522561
	.word	-95812298
	.word	121043532
	.word	-179110323
	.word	-28501718
	.word	0
	.word	404167440
	.word	404627229
	.word	371791402
	.word	272371508
	.word	238814030
	.word	-260369099
	.word	372775229
	.word	0
	.word	0
	.word	0
	.word	-146278107
	.word	-131271375
	.word	-164039621
	.word	-130025661
	.word	-96143793
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.word	-45156278
	.word	-146213304
	.word	-297012153
	.word	-180356282
	.word	-280235448
	.word	-263981003
	.word	-230951116
	.word	-180092928
	.word	167649014
	.word	536617471
	.word	554114828
	.word	622272294
	.word	339738624
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line %d pSlicePara is NULL!\012\000"
	.space	3
.LC1:
	.ascii	"BASIC_V200R003_CFG0 = 0x%x\012\000"
.LC2:
	.ascii	"BASIC_V200R004_CFG1 = 0x%x\012\000"
.LC3:
	.ascii	"AVM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC4:
	.ascii	"VAM_V200R004_ADDR = 0x%x\012\000"
	.space	2
.LC5:
	.ascii	"STREAM_V200R003_BASE_ADDR = 0x%x\012\000"
	.space	2
.LC6:
	.ascii	"YSTADDR_V200R004_1D = 0x%x\012\000"
.LC7:
	.ascii	"YSTRIDE_V200R004_1D = 0x%x\012\000"
.LC8:
	.ascii	"UVOFFSET_V200R004_1D = 0x%x\012\000"
	.space	3
.LC9:
	.ascii	"PPFD_V200R004_BUF_ADDR = 0x%x\012\000"
	.space	1
.LC10:
	.ascii	"PPFD_V200R004_BUF_LEN = 0x%x\012\000"
	.space	2
.LC11:
	.ascii	"REF_V200R004_PIC_TYPE = 0x%x\012\000"
	.space	2
.LC12:
	.ascii	"FF_V200R004_APT_EN = 0x%x\012\000"
	.space	1
.LC13:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC14:
	.ascii	"point of picture para null\012\000"
.LC15:
	.ascii	"picture width out of range\012\000"
.LC16:
	.ascii	"point of fst slice para null\012\000"
	.space	2
.LC17:
	.ascii	"chroma_lg = %d\012\000"
.LC18:
	.ascii	"can not map slice msg virtual address!\012\000"
.LC19:
	.ascii	"can not map down msg virtual address!\012\000"
	.space	1
.LC20:
	.ascii	"VdhId is wrong! H264HAL_V200R003_StartDec\012\000"
	.space	1
.LC21:
	.ascii	"vdm register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC22:
	.ascii	"\012\012***********************H264HAL_V200R003_Sta"
	.ascii	"rtDec is Now %d***********************\012\000"
	.space	3
.LC23:
	.ascii	"line %d Set slice msg not wrong!\012\000"
	.space	2
.LC24:
	.ascii	"!!! no slice to dec, add up msg report.\000"
.LC25:
	.ascii	"line: %d, p = NULL is not expected value!\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	StartCnt.34507, %object
	.size	StartCnt.34507, 4
StartCnt.34507:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
