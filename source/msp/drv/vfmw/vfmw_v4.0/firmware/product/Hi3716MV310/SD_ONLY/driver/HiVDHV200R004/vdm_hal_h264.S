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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	mov	r2, #4	@ ivtmp.569,
	str	ip, [r3, #0]	@ tmp168,* vir_addr
	bls	.L6	@,
	cmp	r5, #0	@ tmp171,
	beq	.L5	@,
	ldr	ip, [r0, #4]	@ tmp180,
	mov	r4, #2	@ i,
	cmp	r1, r4	@ size, i
	mov	r2, #8	@ ivtmp.569,
	str	ip, [r3, #4]	@ tmp180,
	bls	.L6	@,
.L5:
	ldr	r5, [r0, r2]	@ tmp176,* ivtmp.569
	add	ip, r2, #4	@ tmp173, ivtmp.569,
	add	r4, r4, #2	@ i, i,
	cmp	r1, r4	@ size, i
	str	r5, [r3, r2]	@ tmp176,* ivtmp.569
	add	r2, ip, #4	@ ivtmp.569, tmp173,
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
	ldr	r3, [r1, #24]	@ temp.625, <variable>.bytespos
	ldr	ip, [r1, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	bic	r4, r3, #15	@ tmp167, temp.625,
	ldr	r5, [r0, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	add	r3, ip, r3, asl #3	@, tmp165, <variable>.bitsoffset, temp.625,
	and	ip, r3, #127	@ tmp.634, tmp165,
	str	ip, [r2, #4]	@ tmp.634,
	ldr	ip, [r1, #8]	@ tmp.638, <variable>.valid_bitlen
	bic	r3, r5, #15	@ stream_base_addr.624, <variable>.stream_base_addr,
	rsb	r3, r3, r4	@ tmp.641, stream_base_addr.624, tmp167
	str	ip, [r2, #8]	@ tmp.638,
	str	r3, [r2, #0]	@ tmp.641,* pSLOT
.L16:
	ldr	r3, [r1, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	cmp	r3, #0	@ <variable>.valid_bitlen,
	streq	r3, [r2, #12]	@ <variable>.valid_bitlen,
	streq	r3, [r2, #16]	@ <variable>.valid_bitlen,
	streq	r3, [r2, #20]	@ <variable>.valid_bitlen,
	beq	.L19	@,
	ldr	r3, [r1, #28]	@ D.33097, <variable>.bytespos
	ldr	r4, [r1, #20]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	ip, [r0, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r0, r3, #15	@ tmp174, D.33097,
	add	r3, r4, r3, asl #3	@, tmp172, <variable>.bitsoffset, D.33097,
	and	r3, r3, #127	@ tmp.432, tmp172,
	str	r3, [r2, #16]	@ tmp.432,
	ldr	r1, [r1, #12]	@ tmp.607, <variable>.valid_bitlen
	bic	r3, ip, #15	@ stream_base_addr, <variable>.stream_base_addr,
	rsb	ip, r3, r0	@ tmp.609, stream_base_addr, tmp174
	str	r1, [r2, #20]	@ tmp.607,
	str	ip, [r2, #12]	@ tmp.609,
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
	movne	r3, #0	@ prephitmp.681,
	movne	r1, r3	@ prephitmp.656, prephitmp.681
	beq	.L29	@,
.L22:
	str	r1, [r2, #32]	@ prephitmp.656,
	str	r3, [r2, #36]	@ prephitmp.681,
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
	mov	r3, #0	@ prephitmp.681,
	ldr	r1, [r0, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	add	ip, ip, #206	@ tmp164, <variable>.pmv_address_idc,
	ldr	r0, [r0, ip, asl #2]	@ tmp167, <variable>.PmvPhyAddr
	add	ip, r0, r1	@ tmp166, tmp167, <variable>.half_pmvblk_offset
	bic	r1, ip, #15	@ prephitmp.656, tmp166,
	str	r1, [r2, #32]	@ prephitmp.656,
	str	r3, [r2, #36]	@ prephitmp.681,
	bx	lr	@
.L30:
	ldrb	ip, [r1, #2778]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	ldr	r1, [r1, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	cmp	ip, #3	@ <variable>.frame_structure,
	addeq	r1, r1, #206	@ tmp150, <variable>.pmv_address_idc,
	addne	r1, r1, #206	@ tmp147, <variable>.pmv_address_idc,
	ldreq	r3, [r0, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	ldreq	r1, [r0, r1, asl #2]	@ temp.668, <variable>.PmvPhyAddr
	ldrne	r1, [r0, r1, asl #2]	@ tmp149, <variable>.PmvPhyAddr
	addeq	r3, r1, r3	@ tmp152, temp.668, <variable>.half_pmvblk_offset
	biceq	r1, r1, #15	@ prephitmp.656, temp.668,
	bicne	r1, r1, #15	@ prephitmp.656, tmp149,
	biceq	r3, r3, #15	@ prephitmp.681, tmp152,
	str	r1, [r2, #32]	@ prephitmp.656,
	str	r3, [r2, #36]	@ prephitmp.681,
	bx	lr	@
.L28:
	ldr	r1, [r1, #2788]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r3, #0	@ prephitmp.681,
	add	ip, r1, #206	@ tmp161, <variable>.pmv_address_idc,
	ldr	r1, [r0, ip, asl #2]	@ tmp163, <variable>.PmvPhyAddr
	bic	r1, r1, #15	@ prephitmp.656, tmp163,
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
	ldr	r0, [r0, #920]	@ D.33171, <variable>.mbtodec
	ldrb	r1, [r1, #1]	@ zero_extendqisi2	@ D.33166, <variable>.MbaffFrameFlag
	cmp	r0, #262144	@ D.33171,
	str	r2, [sp, #4]	@,
	addgt	r1, r1, #1	@, D.33166,
	suble	r0, r0, #1	@, D.33171,
	movwgt	r0, #:lower16:262143	@,
	addle	r1, r1, #1	@, D.33166,
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
	add	r3, r5, #1632	@ ivtmp.752, tmp213,
	movw	r1, #:lower16:.LANCHOR0	@,
	add	r3, r3, #12	@ ivtmp.752, ivtmp.752,
	movt	r1, #:upper16:.LANCHOR0	@,
	mov	r5, ip	@ tmp1, i
	str	r1, [sp, #20]	@, %sfp
	mov	r6, ip	@ tmp, i
	b	.L64	@
.L39:
	cmp	r1, #2	@ D.33200,
	andne	r1, ip, #3	@ prephitmp.779, i,
	andne	r4, ip, #7	@ prephitmp.736, i,
	beq	.L67	@,
.L50:
	cmp	r4, #7	@ prephitmp.736,
	streq	r6, [r2, sl, asl #2]	@ tmp,* pSLOT
	addeq	sl, sl, #1	@ Dn_num, Dn_num,
	add	ip, ip, #1	@ i, i,
	moveq	r6, #0	@ tmp,
	cmp	r1, #3	@ prephitmp.779,
	streq	r5, [r2, r8, asl #2]	@ tmp1,* pSLOT
	addeq	r8, r8, #1	@ Dn_0, Dn_0,
	ldr	r1, [r7, #0]	@ D.33301, <variable>.listXsize
	moveq	r5, #0	@ tmp1,
	add	r3, r3, #36	@ ivtmp.752, ivtmp.752,
	cmp	r1, ip	@ D.33301, i
	bls	.L68	@,
.L64:
	ldrb	r1, [r3, #-20]	@ zero_extendqisi2	@ D.33200, <variable>.list_structure
	cmp	r1, #1	@ D.33200,
	bne	.L39	@,
	ldrb	r4, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r4, #3	@ <variable>.is_used,
	beq	.L40	@,
	ldrb	r1, [r3, #-16]	@ zero_extendqisi2	@ D.33212, <variable>.top_structure
	and	r4, ip, #7	@ prephitmp.736, i,
	ldrb	r9, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	cmp	r1, #1	@ D.33212,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #12]	@, %sfp
	cmp	r9, #1	@ <variable>.top_is_long_term,
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@ iftmp.442,
	movne	r9, #0	@ iftmp.442,
	add	r1, fp, r1, asl #1	@, tmp219,, D.33212,
	mov	fp, r4, asl #2	@, prephitmp.736,
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
	and	r1, ip, #3	@ prephitmp.779, i,
	add	fp, r1, r1, asl #2	@, tmp252, prephitmp.779, prephitmp.779,
	mov	r9, r9, asl #1	@ tmp247, <variable>.apc_idc,
	and	r9, r9, #31	@ tmp249, tmp247,
	orr	r5, r5, r9, asl fp	@, tmp1, tmp1, tmp249,
	b	.L50	@
.L67:
	ldrb	r4, [r3, #-19]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r4, #3	@ <variable>.is_used,
	beq	.L52	@,
	ldrb	r1, [r3, #-14]	@ zero_extendqisi2	@ D.33262, <variable>.btm_structure
	and	r4, ip, #7	@ prephitmp.736, i,
	ldrb	r9, [r3, #-13]	@ zero_extendqisi2	@ <variable>.btm_is_long_term, <variable>.btm_is_long_term
	cmp	r1, #1	@ D.33262,
	moveq	fp, #4	@,
	movne	fp, #0	@,
	str	fp, [sp, #12]	@, %sfp
	cmp	r9, #1	@ <variable>.btm_is_long_term,
	ldr	fp, [r0, #32]	@, <variable>.mb_adaptive_frame_field_flag
	moveq	r9, #8	@ iftmp.446,
	movne	r9, #0	@ iftmp.446,
	add	r1, fp, r1, asl #1	@, tmp259,, D.33262,
	mov	fp, r4, asl #2	@, prephitmp.736,
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
	and	r1, ip, #3	@ prephitmp.779, i,
	add	fp, r1, r1, asl #2	@, tmp293, prephitmp.779, prephitmp.779,
	mov	r9, r9, asl #1	@ tmp287, <variable>.apc_idc,
	and	r9, r9, #30	@ tmp289, tmp287,
	orr	r9, r9, #1	@ tmp290, tmp289,
	orr	r5, r5, r9, asl fp	@, tmp1, tmp1, tmp290,
	b	.L50	@
.L40:
	ldrb	r9, [r3, #-15]	@ zero_extendqisi2	@ <variable>.top_is_long_term, <variable>.top_is_long_term
	and	r4, ip, #7	@ prephitmp.736, i,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	r9, #1	@ <variable>.top_is_long_term,
	mov	fp, r4, asl #2	@, prephitmp.736,
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
	and	r4, ip, #7	@ prephitmp.736, i,
	ldrb	r1, [r3, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	cmp	r9, #1	@ <variable>.btm_is_long_term,
	mov	fp, r4, asl #2	@, prephitmp.736,
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
	tst	r1, #7	@ D.33301,
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
	add	r1, r5, #1632	@ ivtmp.838, tmp172,
	add	r9, ip, #4	@, tmp159,
	movw	fp, #:lower16:.LANCHOR0	@ tmp205,
	str	r4, [sp, #4]	@, %sfp
	str	r9, [sp, #0]	@, %sfp
	movt	fp, #:upper16:.LANCHOR0	@ tmp205,
	add	r2, r1, #12	@ ivtmp.838, ivtmp.838,
	mov	r4, r3	@ tmp1, i
	mov	r5, r3	@ tmp, i
	b	.L75	@
.L73:
	cmp	r1, #3	@ D.33341,
	beq	.L78	@,
.L74:
	ldr	ip, [sp, #0]	@, %sfp
	ldr	r1, [ip, #0]	@ D.33356, <variable>.listXsize
	cmp	r1, r3	@ D.33356, i
	bls	.L79	@,
.L75:
	ldrb	r7, [r2, #-18]	@ zero_extendqisi2	@ <variable>.frame_structure, <variable>.frame_structure
	and	ip, r3, #7	@ D.33334, i,
	ldr	r6, [r0, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	and	r1, r3, #3	@ D.33341, i,
	ldr	sl, [r2, #0]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r3, r3, #1	@ i, i,
	add	r9, r6, r7, asl #1	@, tmp177, <variable>.mb_adaptive_frame_field_flag, <variable>.frame_structure,
	ldrb	r7, [r2, #-17]	@ zero_extendqisi2	@ <variable>.frame_is_long_term, <variable>.frame_is_long_term
	mov	r6, ip, asl #2	@ tmp186, D.33334,
	add	r8, r1, r1, asl #2	@, tmp193, D.33341, D.33341,
	cmp	r7, #1	@ <variable>.frame_is_long_term,
	add	r9, fp, r9, asl #2	@, tmp181, tmp205, tmp177,
	mov	sl, sl, asl #1	@ tmp188, <variable>.apc_idc,
	add	r2, r2, #36	@ ivtmp.838, ivtmp.838,
	moveq	r7, #8	@ iftmp.453,
	movne	r7, #0	@ iftmp.453,
	cmp	ip, #7	@ D.33334,
	ldr	ip, [r9, #44]	@ tmp184, g_ListStructFrame
	and	sl, sl, #31	@ tmp190, tmp188,
	and	ip, ip, #3	@ tmp183, tmp184,
	orr	ip, r7, ip	@ tmp185, iftmp.453, tmp183
	orr	r4, r4, sl, asl r8	@, tmp1, tmp1, tmp190,
	orr	r5, r5, ip, asl r6	@, tmp, tmp, tmp185,
	bne	.L73	@,
	ldr	r6, [sp, #8]	@, %sfp
	cmp	r1, #3	@ D.33341,
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
	ldr	r1, [ip, #0]	@ D.33356, <variable>.listXsize
	cmp	r1, r3	@ D.33356, i
	bhi	.L75	@,
.L79:
	tst	r1, #7	@ D.33356,
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
	add	r3, r3, #16	@ ivtmp.904, tmp148,
	and	r5, r0, #31	@ tmp149, tmp150,
	mov	r8, #36	@ Dn_num,
	and	r1, r4, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	r4, #1	@ i,
	orr	r5, r1, r5, asl #5	@, tmp, tmp, tmp149,
.L85:
	add	r0, r4, #1	@ tmp158, i,
	add	r6, r3, #4	@ tmp157, ivtmp.904,
	add	r4, r0, #1	@ i, tmp158,
	and	r1, r0, #3	@ D.33390, tmp158,
	and	ip, r4, #3	@ D.33390, i,
	cmp	r0, #32	@ tmp158,
	add	r7, r1, r1, asl #2	@, tmp167, D.33390, D.33390,
	add	r0, ip, ip, asl #2	@, tmp175, D.33390, D.33390,
	beq	.L94	@,
	ldr	sl, [r3, #0]	@ tmp164, <variable>.Apc2RefIdx
	cmp	r1, #3	@ D.33390,
	and	r1, sl, #31	@ tmp165, tmp164,
	orr	r5, r5, r1, asl r7	@, tmp, tmp, tmp165,
	streq	r5, [r2, r8, asl #2]	@ tmp,* pSLOT
	ldr	r1, [r3, #4]	@ tmp172, <variable>.Apc2RefIdx
	moveq	r5, #0	@ tmp,
	addeq	r8, r8, #1	@ Dn_num, Dn_num,
	cmp	ip, #3	@ D.33390,
	and	r7, r1, #31	@ tmp173, tmp172,
	orr	r5, r5, r7, asl r0	@, tmp, tmp, tmp173,
	addne	r3, r6, #4	@ ivtmp.904, tmp157,
	bne	.L85	@
.L95:
	str	r5, [r2, r8, asl #2]	@ tmp,* pSLOT
	add	r3, r6, #4	@ ivtmp.904, tmp157,
	add	r8, r8, #1	@ Dn_num, Dn_num,
	mov	r5, #0	@ tmp,
	b	.L85	@
.L94:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
	.fnend
	.size	H264HAL_SetSliceMsgAPCInfo, .-H264HAL_SetSliceMsgAPCInfo
	.align	2
	.global	H264HAL_SetSliceMsgWPInfo
	.type	H264HAL_SetSliceMsgWPInfo, %function
H264HAL_SetSliceMsgWPInfo:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	r3, [r0, #284]	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r3, #0	@ <variable>.weighted_pred_flag,
	beq	.L97	@,
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r6, #:lower16:.LANCHOR0	@ tmp225,
	movt	r6, #:upper16:.LANCHOR0	@ tmp225,
	ldr	ip, [r6, r3, asl #2]	@ tmp164, g_SliceTypeForPMV
	cmp	ip, #1	@ tmp164,
	beq	.L98	@,
.L97:
	ldr	ip, [r0, #288]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	beq	.L137	@,
.L106:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L137:
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	movw	r6, #:lower16:.LANCHOR0	@ tmp225,
	movt	r6, #:upper16:.LANCHOR0	@ tmp225,
	ldr	r0, [r6, r3, asl #2]	@ tmp168, g_SliceTypeForPMV
	cmp	r0, #2	@ tmp168,
	bne	.L106	@,
.L98:
	add	r0, r2, #256	@ ivtmp.980, pSLOT_BASE,
	mov	r4, r1	@ ivtmp.978, pSlcPara
	mov	r3, r1	@ ivtmp.1007, pSlcPara
	mov	r5, #0	@ i.992,
.L100:
	ldr	ip, [r3, #88]	@ tmp170, <variable>.wp_weight_l0_y
	add	r5, r5, #1	@ i.992, i.992,
	ldrb	r8, [r3, #856]	@ zero_extendqisi2	@ tmp173, <variable>.wp_offset_l0_y
	ldr	r7, [r1, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	ip, ip, asl #23	@ tmp169, tmp170,
	mov	r8, r8, asl #12	@ tmp175, tmp173,
	and	r7, r7, #7	@ tmp177, <variable>.luma_log2_weight_denom,
	mov	ip, ip, lsr #23	@ tmp169, tmp169,
	orr	ip, r8, ip, asl #3	@, tmp176, tmp175, tmp169,
	orr	r8, ip, r7	@ tmp.467, tmp176, tmp177
	str	r8, [r0, #0]	@ tmp.467,* ivtmp.980
	ldr	ip, [r3, #216]	@ tmp180, <variable>.wp_weight_l0_u
	ldrb	r8, [r3, #984]	@ zero_extendqisi2	@ tmp183, <variable>.wp_offset_l0_u
	ldr	r7, [r1, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	ip, ip, asl #23	@ tmp179, tmp180,
	mov	r8, r8, asl #12	@ tmp185, tmp183,
	and	r7, r7, #7	@ tmp187, <variable>.chroma_log2_weight_denom,
	mov	ip, ip, lsr #23	@ tmp179, tmp179,
	orr	ip, r8, ip, asl #3	@, tmp186, tmp185, tmp179,
	orr	ip, ip, r7	@ tmp1.469, tmp186, tmp187
	str	ip, [r0, #256]	@ tmp1.469,
	ldr	ip, [r3, #344]	@ tmp193, <variable>.wp_weight_l0_v
	ldrb	r7, [r3, #1112]	@ zero_extendqisi2	@ tmp189, <variable>.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.1007, ivtmp.1007,
	mov	ip, ip, asl #23	@ tmp192, tmp193,
	mov	ip, ip, lsr #23	@ tmp192, tmp192,
	orr	ip, ip, r7, asl #9	@, D.33485, tmp192, tmp189,
	str	ip, [r0, #512]	@ D.33485,
	ldr	ip, [r1, #44]	@ D.33489, <variable>.num_ref_idx_l0_active_minus1
	add	r0, r0, #4	@ ivtmp.980, ivtmp.980,
	cmp	ip, r5	@ D.33489, i.992
	bcs	.L100	@,
	mov	r3, #1	@ i.993,
	cmp	r3, ip	@ i.993, D.33489
	and	r0, ip, r3	@ tmp236, D.33489,
	bhi	.L133	@,
	cmp	r0, #0	@ tmp236,
	beq	.L101	@,
	mov	r3, #2	@ i.993,
	cmp	r3, ip	@ i.993, D.33489
	bhi	.L133	@,
.L101:
	add	r3, r3, #2	@ i.993, i.993,
	cmp	r3, ip	@ i.993, D.33489
	bls	.L101	@,
.L133:
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	ip, [r6, r0, asl #2]	@ tmp197, g_SliceTypeForPMV
	cmp	ip, #2	@ tmp197,
	bne	.L106	@,
	ldr	r3, [r1, #40]	@ D.33492, <variable>.num_ref_idx_l1_active_minus1
	mov	r0, #1	@ i.991,
	cmp	r0, r3	@ i.991, D.33492
	and	r5, r3, r0	@ tmp233, D.33492,
	bhi	.L134	@,
	cmp	r5, #0	@ tmp233,
	beq	.L102	@,
	cmp	ip, r3	@ i.991, D.33492
	mov	r0, ip	@ i.991, tmp197
	bhi	.L134	@,
.L102:
	add	r0, r0, #2	@ i.991, i.991,
	cmp	r0, r3	@ i.991, D.33492
	bls	.L102	@,
.L134:
	cmp	r3, #1	@ D.33492,
	and	ip, r3, #1	@ tmp230, D.33492,
	mov	r0, #1	@ i.998,
	bcc	.L135	@,
	cmp	ip, #0	@ tmp230,
	beq	.L103	@,
	mov	r0, #2	@ i.998,
	cmp	r3, r0	@ D.33492, i.998
	bcc	.L135	@,
.L103:
	add	r0, r0, #2	@ i.998, i.998,
	cmp	r3, r0	@ D.33492, i.998
	bcs	.L103	@,
.L135:
	cmp	r3, #1	@ D.33492,
	and	ip, r3, #1	@ tmp227, D.33492,
	mov	r0, #1	@ i.997,
	bcc	.L136	@,
	cmp	ip, #0	@ tmp227,
	beq	.L104	@,
	mov	r0, #2	@ i.997,
	cmp	r3, r0	@ D.33492, i.997
	bcc	.L136	@,
.L104:
	add	r0, r0, #2	@ i.997, i.997,
	cmp	r3, r0	@ D.33492, i.997
	bcs	.L104	@,
.L136:
	add	r2, r2, #384	@ ivtmp.958, pSLOT_BASE,
	mov	r0, #0	@ i,
.L105:
	ldr	r3, [r4, #472]	@ tmp199, <variable>.wp_weight_l1_y
	add	r0, r0, #1	@ i, i,
	ldrb	r5, [r4, #1240]	@ zero_extendqisi2	@ tmp202, <variable>.wp_offset_l1_y
	ldr	ip, [r1, #80]	@ <variable>.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r3, r3, asl #23	@ tmp198, tmp199,
	mov	r5, r5, asl #12	@ tmp204, tmp202,
	and	ip, ip, #7	@ tmp206, <variable>.luma_log2_weight_denom,
	mov	r3, r3, lsr #23	@ tmp198, tmp198,
	orr	r3, r5, r3, asl #3	@, tmp205, tmp204, tmp198,
	orr	r5, r3, ip	@ tmp.1003, tmp205, tmp206
	str	r5, [r2, #0]	@ tmp.1003,* ivtmp.958
	ldr	r3, [r4, #600]	@ tmp209, <variable>.wp_weight_l1_u
	ldrb	r5, [r4, #1368]	@ zero_extendqisi2	@ tmp212, <variable>.wp_offset_l1_u
	ldr	ip, [r1, #84]	@ <variable>.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
	mov	r3, r3, asl #23	@ tmp208, tmp209,
	mov	r5, r5, asl #12	@ tmp214, tmp212,
	and	ip, ip, #7	@ tmp216, <variable>.chroma_log2_weight_denom,
	mov	r3, r3, lsr #23	@ tmp208, tmp208,
	orr	r3, r5, r3, asl #3	@, tmp215, tmp214, tmp208,
	orr	r3, r3, ip	@ tmp1.1008, tmp215, tmp216
	str	r3, [r2, #256]	@ tmp1.1008,
	ldr	r3, [r4, #728]	@ tmp222, <variable>.wp_weight_l1_v
	ldrb	ip, [r4, #1496]	@ zero_extendqisi2	@ tmp218, <variable>.wp_offset_l1_v
	add	r4, r4, #4	@ ivtmp.978, ivtmp.978,
	mov	r3, r3, asl #23	@ tmp221, tmp222,
	mov	r3, r3, lsr #23	@ tmp221, tmp221,
	orr	r3, r3, ip, asl #9	@, D.33526, tmp221, tmp218,
	str	r3, [r2, #512]	@ D.33526,
	ldr	r3, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	add	r2, r2, #4	@ ivtmp.958, ivtmp.958,
	cmp	r3, r0	@ <variable>.num_ref_idx_l1_active_minus1, i
	bcs	.L105	@,
	b	.L106	@
	.fnend
	.size	H264HAL_SetSliceMsgWPInfo, .-H264HAL_SetSliceMsgWPInfo
	.align	2
	.global	H264HAL_CheckParaValid
	.type	H264HAL_CheckParaValid, %function
H264HAL_CheckParaValid:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pParam
	bne	.L142	@,
.L139:
	mvn	r0, #0	@ D.33534,
	bx	lr	@
.L142:
	ldr	r3, [r0, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bhi	.L139	@,
	ldr	r1, [r0, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r1, #512	@ <variable>.pic_height_in_mb,
	bhi	.L139	@,
	ldr	r2, [r0, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r2, #0	@ <variable>.pFirstSlice,
	movne	r0, #0	@ D.33534,
	bxne	lr	@
	b	.L139	@
	.fnend
	.size	H264HAL_CheckParaValid, .-H264HAL_CheckParaValid
	.align	2
	.global	H264HAL_FindNextSlicePara
	.type	H264HAL_FindNextSlicePara, %function
H264HAL_FindNextSlicePara:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, r1	@ currIdx, SliceParaNum
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r4, [r0, #48]	@ first_mb_in_slice, <variable>.first_mb_in_slice
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	bge	.L144	@,
	ldr	r0, [r0, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r0, #0	@ pSlicePara,
	beq	.L144	@,
	ldr	ip, [r0, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r4, ip	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcc	.L144	@,
	mvn	ip, r2	@ tmp143, currIdx
	add	ip, ip, r1	@ tmp142, tmp143, SliceParaNum
	tst	ip, #1	@ tmp142,
	bne	.L154	@,
.L151:
	add	ip, r2, #1	@ tmp145, currIdx,
	str	ip, [r3, #0]	@ tmp145,* nextIdx
	cmp	r1, ip	@ SliceParaNum, tmp145
	add	r2, ip, #1	@ currIdx, tmp145,
	ble	.L144	@,
	ldr	r0, [r0, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r0, #0	@ pSlicePara,
	beq	.L144	@,
	ldr	ip, [r0, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r4, ip	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcc	.L144	@,
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	ldr	r0, [r0, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r0, #0	@ pSlicePara,
	beq	.L144	@,
.L156:
	ldr	ip, [r0, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r4, ip	@ first_mb_in_slice, <variable>.first_mb_in_slice
	bcs	.L151	@,
.L144:
	ldmfd	sp!, {r4}
	bx	lr
.L154:
	add	r2, r2, #1	@ currIdx, currIdx,
	str	r2, [r3, #0]	@ currIdx,* nextIdx
	ldr	r0, [r0, #4056]	@ pSlicePara, <variable>.pNextSlice
	cmp	r0, #0	@ pSlicePara,
	bne	.L156	@,
	b	.L144	@
	.fnend
	.size	H264HAL_FindNextSlicePara, .-H264HAL_FindNextSlicePara
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
	beq	.L158	@,
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	bl	H264HAL_SetSliceMsgStreamAddrInfo	@
	ldr	r2, [r4, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	ldr	ip, [r4, #36]	@ <variable>.cabac_init_idc, <variable>.cabac_init_idc
	movw	r3, #:lower16:g_not_direct_8x8_inference_flag	@ tmp174,
	ldr	r0, [r4, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	bic	r1, r2, #-16777216	@ tmp165, <variable>.first_mb_in_slice,
	bic	r2, r1, #15728640	@ tmp165, tmp165,
	movt	r3, #:upper16:g_not_direct_8x8_inference_flag	@ tmp174,
	and	r1, ip, #3	@ tmp171, <variable>.cabac_init_idc,
	orr	ip, r2, r0, asl #26	@, tmp170, tmp165, <variable>.SliceQPy,
	orr	r2, ip, r1, asl #24	@, tmp.499, tmp170, tmp171,
	str	r2, [r5, #24]	@ tmp.499,
	ldrb	r3, [r3, #0]	@ zero_extendqisi2	@ g_not_direct_8x8_inference_flag, g_not_direct_8x8_inference_flag
	cmp	r3, #0	@ g_not_direct_8x8_inference_flag,
	ldrneb	r3, [r4, #3]	@ zero_extendqisi2	@ prephitmp.1073, <variable>.direct_8x8_inference_flag
	bne	.L160	@,
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ prephitmp.1073, <variable>.direct_8x8_inference_flag
	cmp	r3, #0	@ prephitmp.1073,
	beq	.L172	@,
.L160:
	ldr	r1, [r4, #56]	@ <variable>.listXsize, <variable>.listXsize
	movw	r7, #:lower16:.LANCHOR0	@ tmp193,
	ldr	r8, [r4, #52]	@ <variable>.listXsize, <variable>.listXsize
	movt	r7, #:upper16:.LANCHOR0	@ tmp193,
	ldr	ip, [r4, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	mov	r0, r6	@, pParam
	ldr	r2, [r4, #44]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	mov	lr, r1, asl #8	@ tmp182, <variable>.listXsize,
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	and	ip, ip, #31	@ tmp185, <variable>.num_ref_idx_l1_active_minus1,
	orr	lr, lr, r8, asl #2	@, tmp184, tmp182, <variable>.listXsize,
	and	r2, r2, #31	@ tmp189, <variable>.num_ref_idx_l0_active_minus1,
	orr	ip, lr, ip, asl #21	@, tmp188, tmp184, tmp185,
	ldrb	lr, [r4, #2]	@ zero_extendqisi2	@ <variable>.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	ldr	r8, [r7, r1, asl #2]	@ tmp196, g_SliceTypeForPMV
	orr	ip, ip, r2, asl #16	@, tmp192, tmp188, tmp189,
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	orr	ip, ip, r8	@ tmp195, tmp192, tmp196
	orr	ip, ip, lr, asl #15	@, tmp199, tmp195, <variable>.direct_spatial_mv_pred_flag,
	orr	r3, ip, r3, asl #14	@, tmp.1095, tmp199, prephitmp.1073,
	str	r3, [r5, #28]	@ tmp.1095,
	bl	H264HAL_SetSliceMsgMvAddrInfo	@
	ldr	r0, [r4, #60]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.weight_flag, <variable>.weight_flag
	mov	r1, r4	@, pSlcPara
	and	r2, r0, #31	@ tmp203, <variable>.chroma_qp_index_offset,
	ldr	r8, [r4, #64]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r3, [sp, #44]	@, last_mb_in_slice
	mov	r0, r6	@, pParam
	mov	r2, r2, asl #5	@ tmp205, tmp203,
	and	lr, r8, #31	@ tmp207, <variable>.second_chroma_qp_index_offset,
	orr	r8, r2, ip, asl #16	@, tmp206, tmp205, <variable>.weight_flag,
	mov	r2, r5	@, pSLOT_BASE
	orr	ip, r8, lr	@ D.33897, tmp206, tmp207
	str	ip, [r5, #40]	@ D.33897,
	ldr	r8, [r4, #68]	@ <variable>.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	ldr	lr, [r4, #72]	@ <variable>.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	and	ip, r8, #15	@ tmp212, <variable>.slice_alpha_c0_offset_div2,
	ldr	r8, [r4, #76]	@ <variable>.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	and	lr, lr, #15	@ tmp209, <variable>.slice_beta_offset_div2,
	mov	ip, ip, asl #16	@ tmp214, tmp212,
	orr	ip, ip, lr, asl #8	@, tmp215, tmp214, tmp209,
	orr	r8, ip, r8	@ tmp.1097, tmp215, <variable>.disable_deblocking_filter_idc
	str	r8, [r5, #44]	@ tmp.1097,
	bl	H264HAL_SetSliceMsgEndMbInSlice	@
	cmn	r0, #1	@,
	beq	.L158	@,
	ldr	r2, [sp, #36]	@ NextSlcMsgSlotPhy, NextSlcMsgSlotPhy
	bic	r0, r2, #15	@ tmp.1099, NextSlcMsgSlotPhy,
	str	r0, [r5, #252]	@ tmp.1099,
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.slice_type, <variable>.slice_type
	ldr	r0, [r7, r3, asl #2]	@ tmp219, g_SliceTypeForPMV
	cmp	r0, #0	@ tmp219,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	sl, r4, #3920	@ tmp221, pSlcPara,
	mov	r2, r5	@, pSLOT_BASE
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	bl	H264HAL_SetSliceMsgRefPicInfo	@
	ldr	lr, [sl, #12]	@ tmp223, <variable>.Apc2RefIdx
	ldr	ip, [r4, #3928]	@ <variable>.Apc2RefIdx, <variable>.Apc2RefIdx
	add	r2, sl, #16	@ ivtmp.1091, tmp221,
	and	r7, lr, #31	@ tmp222, tmp223,
	mov	sl, #36	@ Dn_num,
	and	r8, ip, #31	@ tmp, <variable>.Apc2RefIdx,
	mov	ip, #1	@ i,
	orr	lr, r8, r7, asl #5	@, tmp, tmp, tmp222,
.L163:
	add	r3, ip, #1	@ tmp232, i,
	add	r7, r2, #4	@ tmp231, ivtmp.1091,
	add	ip, r3, #1	@ i, tmp232,
	and	r0, r3, #3	@ D.34074, tmp232,
	and	r1, ip, #3	@ D.34074, i,
	cmp	r3, #32	@ tmp232,
	add	r8, r0, r0, asl #2	@, tmp241, D.34074, D.34074,
	add	r3, r1, r1, asl #2	@, tmp249, D.34074, D.34074,
	beq	.L173	@,
	ldr	r9, [r2, #0]	@ tmp238, <variable>.Apc2RefIdx
	cmp	r0, #3	@ D.34074,
	and	r0, r9, #31	@ tmp239, tmp238,
	orr	lr, lr, r0, asl r8	@, tmp, tmp, tmp239,
	streq	lr, [r5, sl, asl #2]	@ tmp,* pSLOT_BASE
	ldr	r0, [r2, #4]	@ tmp246, <variable>.Apc2RefIdx
	moveq	lr, #0	@ tmp,
	addeq	sl, sl, #1	@ Dn_num, Dn_num,
	cmp	r1, #3	@ D.34074,
	and	r1, r0, #31	@ tmp247, tmp246,
	orr	lr, lr, r1, asl r3	@, tmp, tmp, tmp247,
	beq	.L174	@,
	add	r2, r7, #4	@ ivtmp.1091, tmp231,
	b	.L163	@
.L172:
	ldr	r1, [r6, #24]	@ <variable>.frame_height_in_mb, <variable>.frame_height_in_mb
	movw	r0, #1620	@ tmp179,
	ldr	ip, [r6, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	mul	lr, ip, r1	@ tmp176, <variable>.pic_width_in_mb, <variable>.frame_height_in_mb
	cmp	lr, r0	@ tmp176, tmp179
	bls	.L160	@,
.L158:
	mvn	r0, #0	@ D.33838,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L174:
	str	lr, [r5, sl, asl #2]	@ tmp,* pSLOT_BASE
	add	r2, r7, #4	@ ivtmp.1091, tmp231,
	add	sl, sl, #1	@ Dn_num, Dn_num,
	mov	lr, #0	@ tmp,
	b	.L163	@
.L173:
	mov	r0, r6	@, pParam
	mov	r1, r4	@, pSlcPara
	mov	r2, r5	@, pSLOT_BASE
	bl	H264HAL_SetSliceMsgWPInfo	@
	mov	r0, #0	@ D.33838,
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
	cmp	r0, #0	@ D.33726
	mvneq	r0, #0	@ D.33729,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldrb	ip, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	movw	r3, #:lower16:.LANCHOR0	@ tmp217,
	ldr	lr, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movt	r3, #:upper16:.LANCHOR0	@ tmp217,
	ldr	r1, [r4, #36]	@ D.33735, <variable>.transform_8x8_mode_flag
	bic	r6, r6, #15	@ tmp.1257, FstSlcMsgSlotPhy,
	ldr	r7, [r4, #40]	@ D.33738, <variable>.entropy_coding_mode_flag
	add	r2, lr, ip, asl #1	@, tmp220, <variable>.mb_adaptive_frame_field_flag, <variable>.pic_structure,
	ldr	ip, [r4, #44]	@ D.33741, <variable>.constrained_intra_pred_flag
	add	lr, r3, r2, asl #2	@, tmp224, tmp217, tmp220,
	mov	r1, r1, asl #28	@ tmp206, D.33735,
	ldr	r2, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	orr	r1, r1, r7, asl #27	@, tmp207, tmp206, D.33738,
	ldr	r7, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	orr	r1, r1, ip, asl #26	@, tmp209, tmp207, D.33741,
	ldr	ip, [lr, #76]	@ tmp227, g_StructTrans
	sub	r2, r2, #1	@ tmp210, <variable>.pic_width_in_mb,
	ldr	lr, [r4, #16]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	sub	r7, r7, #1	@ tmp213, <variable>.pic_height_in_mb,
	orr	r1, r1, r2	@ tmp212, tmp209, tmp210
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	lr, #0	@ <variable>.nal_ref_idc,
	orr	r3, r1, r7, asl #16	@, tmp216, tmp212, tmp213,
	orr	r1, r3, ip, asl #14	@, tmp228, tmp216, tmp227,
	movne	lr, #-2147483648	@, iftmp.490,
	cmp	r2, #1	@ <variable>.chroma_format_idc,
	orr	r3, r1, lr	@ tmp229, tmp228, iftmp.490
	moveq	r2, #33554432	@ iftmp.491,
	movne	r2, #0	@ iftmp.491,
	orr	lr, r3, r2	@ tmp.493, tmp229, iftmp.491
	str	lr, [r0, #0]	@ tmp.493,* D.33726
	ldr	r1, [r4, #296]	@ <variable>.CurrPicImg2DAddr, <variable>.CurrPicImg2DAddr
	bic	r3, r1, #15	@ tmp.1240, <variable>.CurrPicImg2DAddr,
	str	r3, [r0, #4]	@ tmp.1240,
	ldr	lr, [r4, #48]	@ D.33767, <variable>.ThisPoc
	str	lr, [r0, #8]	@ D.33767,
	ldr	r1, [r4, #32]	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r1, #0	@ <variable>.mb_adaptive_frame_field_flag,
	streq	r1, [r0, #12]	@ <variable>.mb_adaptive_frame_field_flag,
	ldrne	r1, [r4, #52]	@ D.33771, <variable>.TopPoc
	strne	r1, [r0, #12]	@ D.33771,
	ldrne	r1, [r4, #56]	@ D.33773, <variable>.BottomPoc
	str	r1, [r0, #16]	@ <variable>.mb_adaptive_frame_field_flag,
	ldr	r3, [r5, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	lr, r3, #15	@ tmp.1247, <variable>.SedTopAddr,
	str	lr, [r0, #20]	@ tmp.1247,
	ldr	r1, [r5, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r3, r1, #15	@ tmp.1249, <variable>.PmvTopAddr,
	str	r3, [r0, #24]	@ tmp.1249,
	ldrb	lr, [r4, #0]	@ zero_extendqisi2	@ <variable>.pic_structure, <variable>.pic_structure
	cmp	lr, #2	@ <variable>.pic_structure,
	ldreq	r2, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	ldrne	lr, [r4, #300]	@ <variable>.CurrPicPmvIdc, <variable>.CurrPicPmvIdc
	addeq	r2, r2, #206	@ tmp240, <variable>.CurrPicPmvIdc,
	ldreq	lr, [r4, #908]	@ <variable>.half_pmvblk_offset, <variable>.half_pmvblk_offset
	addne	lr, lr, #206	@ tmp237, <variable>.CurrPicPmvIdc,
	ldreq	r2, [r4, r2, asl #2]	@ tmp243, <variable>.PmvPhyAddr
	ldrne	lr, [r4, lr, asl #2]	@ tmp239, <variable>.PmvPhyAddr
	addeq	lr, r2, lr	@ tmp242, tmp243, <variable>.half_pmvblk_offset
	bic	r1, lr, #15	@ tmp, tmp242,
	str	r1, [r0, #28]	@ tmp,
	ldr	r3, [r5, #1088]	@ <variable>.RcnTopAddr, <variable>.RcnTopAddr
	bic	r3, r3, #15	@ tmp.1255, <variable>.RcnTopAddr,
	str	r3, [r0, #32]	@ tmp.1255,
	str	r6, [r0, #36]	@ tmp.1257,
	ldr	r1, [r4, #1116]	@ i.1246, <variable>.ApcSize
	cmp	r1, #0	@ i.1246,
	addne	ip, r0, #40	@ ivtmp.1236, D.33726,
	movne	r2, r4	@ ivtmp.1235, pParam
	movne	r3, #0	@ i.1260,
	beq	.L189	@,
.L188:
	ldr	r1, [r2, #924]	@ tmp249, <variable>.Apc2Idc
	add	r3, r3, #1	@ i.1260, i.1260,
	add	r2, r2, #4	@ ivtmp.1235, ivtmp.1235,
	add	lr, r4, r1, asl #2	@, tmp252, pParam, tmp249,
	ldr	r1, [lr, #308]	@ tmp254, <variable>.ImgPhyAddr
	bic	lr, r1, #15	@ tmp.1259, tmp254,
	str	lr, [ip], #4	@ tmp.1259,
	ldr	r1, [r4, #1116]	@ i.1246, <variable>.ApcSize
	cmp	r1, r3	@ i.1246, i.1260
	bhi	.L188	@,
	cmp	r1, #15	@ i.1246,
	bhi	.L190	@,
.L189:
	ldr	r2, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r3, r1, #10	@ tmp246, i.1246,
	add	ip, r1, #1	@ i.1246, i.1246,
	rsb	r1, r1, #15	@ tmp280, i.1246,
	add	r3, r0, r3, asl #2	@, ivtmp.1229, D.33726, tmp246,
	cmp	ip, #15	@ i.1246,
	add	lr, r4, r2, asl #2	@, tmp259, pParam, <variable>.Apc2Idc,
	and	r1, r1, #1	@ tmp281, tmp280,
	ldr	r2, [lr, #308]	@ tmp261, <variable>.ImgPhyAddr
	bic	r2, r2, #15	@ tmp.1262, tmp261,
	str	r2, [r3], #4	@ tmp.1262,
	bhi	.L190	@,
	cmp	r1, #0	@ tmp281,
	beq	.L187	@,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	ip, ip, #1	@ i.1246, i.1246,
	cmp	ip, #15	@ i.1246,
	add	r2, r4, lr, asl #2	@, tmp317, pParam, <variable>.Apc2Idc,
	ldr	lr, [r2, #308]	@ tmp319, <variable>.ImgPhyAddr
	bic	r2, lr, #15	@ tmp.1262, tmp319,
	str	r2, [r3], #4	@ tmp.1262,
	bhi	.L190	@,
.L187:
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	mov	r2, r3	@ tmp283, ivtmp.1229
	add	ip, ip, #2	@ i.1246, i.1246,
	cmp	ip, #15	@ i.1246,
	add	r1, r4, lr, asl #2	@, tmp289, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp291, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1262, tmp291,
	str	r1, [r2], #4	@ tmp.1262,
	ldr	lr, [r4, #924]	@ <variable>.Apc2Idc, <variable>.Apc2Idc
	add	r1, r4, lr, asl #2	@, tmp298, pParam, <variable>.Apc2Idc,
	ldr	lr, [r1, #308]	@ tmp300, <variable>.ImgPhyAddr
	bic	r1, lr, #15	@ tmp.1262, tmp300,
	str	r1, [r3, #4]	@ tmp.1262,
	add	r3, r2, #4	@ ivtmp.1229, tmp283,
	bls	.L187	@,
.L190:
	ldr	ip, [r5, #1076]	@ <variable>.H264MnAddr, <variable>.H264MnAddr
	bic	r3, ip, #15	@ tmp.1265, <variable>.H264MnAddr,
	str	r3, [r0, #104]	@ tmp.1265,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, #0	@ i,
	addne	r2, r0, #108	@ ivtmp.1221, D.33726,
	movne	r3, r4	@ ivtmp.1220, pParam
	movne	r1, #0	@ i.1242,
	beq	.L194	@,
.L193:
	ldr	lr, [r3, #988]	@ tmp.1267, <variable>.Apc2Poc
	add	r1, r1, #1	@ i.1242, i.1242,
	str	lr, [r2, #0]	@ tmp.1267,* ivtmp.1221
	ldr	ip, [r3, #1052]	@ tmp.1269, <variable>.Apc2Poc
	add	r3, r3, #4	@ ivtmp.1220, ivtmp.1220,
	str	ip, [r2, #4]	@ tmp.1269,
	add	r2, r2, #8	@ ivtmp.1221, ivtmp.1221,
	ldr	ip, [r4, #1116]	@ i, <variable>.ApcSize
	cmp	ip, r1	@ i, i.1242
	bhi	.L193	@,
	cmp	ip, #15	@ i,
	bhi	.L195	@,
.L194:
	add	r2, ip, #14	@ tmp265, i,
	add	r3, r0, ip, asl #3	@, tmp264, D.33726, i,
	add	r7, ip, #1	@ i, i,
	add	r1, r3, #108	@ ivtmp.1212, tmp264,
	add	r2, r0, r2, asl #3	@, ivtmp.1215, D.33726, tmp265,
	cmp	r7, #15	@ i,
	rsb	lr, ip, #15	@ tmp275, i,
	mov	r3, #0	@ tmp272,
	and	ip, lr, #1	@ tmp276, tmp275,
	str	r3, [r1], #8	@ tmp272,
	str	r3, [r2], #8	@ tmp272,
	bhi	.L195	@,
	cmp	ip, #0	@ tmp276,
	beq	.L192	@,
	add	r7, r7, #1	@ i, i,
	str	r3, [r1], #8	@ tmp272,
	cmp	r7, #15	@ i,
	str	r3, [r2], #8	@ tmp272,
	bhi	.L195	@,
.L192:
	add	r7, r7, #2	@ i, i,
	mov	r6, r1	@ tmp278, ivtmp.1212
	cmp	r7, #15	@ i,
	mov	ip, r2	@ tmp279, ivtmp.1215
	str	r3, [r6], #8	@ tmp272,
	str	r3, [ip], #8	@ tmp272,
	str	r3, [r1, #8]	@ tmp272,
	add	r1, r6, #8	@ ivtmp.1212, tmp278,
	str	r3, [r2, #8]	@ tmp272,
	add	r2, ip, #8	@ ivtmp.1215, tmp279,
	bls	.L192	@,
.L195:
	ldr	r2, [r5, #1096]	@ <variable>.DblkTopAddr, <variable>.DblkTopAddr
	add	ip, r0, #224	@ D.34820, ivtmp.1208,
	mov	r3, r0	@ ivtmp.1208, D.33726
	bic	r1, r2, #15	@ tmp.1272, <variable>.DblkTopAddr,
	str	r1, [r0, #236]	@ tmp.1272,
.L196:
	ldr	r2, [r4, #60]	@ tmp270, <variable>.Qmatrix
	add	r1, r4, #4	@ tmp273, ivtmp.1206,
	add	lr, r3, #4	@ tmp274, ivtmp.1208,
	add	r4, r1, #4	@ ivtmp.1206, tmp273,
	str	r2, [r3, #256]	@ tmp270,
	add	r3, lr, #4	@ ivtmp.1208, tmp274,
	ldr	r0, [r1, #60]	@ tmp312, <variable>.Qmatrix
	cmp	r3, ip	@ ivtmp.1208, D.34820
	str	r0, [lr, #256]	@ tmp312,
	bne	.L196	@,
	mov	r0, #0	@ D.33729,
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
	bls	.L220	@,
.L215:
	mvn	r0, #0	@ D.33553,
	ldmfd	sp!, {r4, pc}	@
.L220:
	ldr	r3, [r0, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L221	@,
.L217:
	mov	r0, #0	@ D.33553,
	ldmfd	sp!, {r4, pc}	@
.L221:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ D.33557,
	str	r0, [r4, #0]	@ D.33557, <variable>.pVdmRegVirAddr
	bne	.L217	@,
	b	.L215	@
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
	subs	r3, r0, #0	@ D.33059,
	movne	r0, #0	@ tmp138,
	mvneq	r0, #0	@ D.33062,
	strne	r0, [r3, #252]	@ tmp138,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	H264HAL_V200R004_CutSliceChain, .-H264HAL_V200R004_CutSliceChain
	.align	2
	.global	H264HAL_V200R004_CfgVdmReg
	.type	H264HAL_V200R004_CfgVdmReg, %function
H264HAL_V200R004_CfgVdmReg:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pParam, pParam
	ldr	r0, [r0, #920]	@ D.33578, <variable>.mbtodec
	.pad #12
	sub	sp, sp, #12	@,,
	add	r3, sp, #8	@ D32.472,,
	mov	r7, r2	@ VdhId, VdhId
	cmp	r0, #262144	@ D.33578,
	movw	r2, #1140	@ tmp226,
	suble	r0, r0, #1	@ iftmp.473, D.33578,
	mov	r5, r1	@ pHwMem, pHwMem
	mul	r2, r2, r7	@ tmp225, tmp226, VdhId
	bicle	r0, r0, #-16777216	@ iftmp.473, iftmp.473,
	mov	r1, #0	@ tmp212,
	str	r1, [r3, #-4]!	@ tmp212, D32
	ldr	r6, [r3, #0]	@ tmp214,* D32.472
	movwgt	r0, #:lower16:262143	@ iftmp.473,
	bicle	r0, r0, #15728640	@ iftmp.473, iftmp.473,
	movtgt	r0, #:upper16:262143	@ iftmp.473,
	bfi	r6, r0, #0, #20	@ tmp214, iftmp.473,,
	bic	ip, r6, #-1023410176	@ tmp222, tmp214,
	movw	r6, #:lower16:g_HwMem	@ tmp458,
	movt	r6, #:upper16:g_HwMem	@ tmp458,
	bic	r3, ip, #12582912	@ tmp222, tmp222,
	orr	r1, r3, #1090519040	@ D32, tmp222,
	str	r1, [r4, #1136]	@ D32, <variable>.basic_cfg0
	ldr	r0, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movw	r3, #:lower16:16368	@ tmp234,
	movt	r3, #:upper16:16368	@ tmp234,
	str	r1, [r0, #8]	@ D32,
	ldr	ip, [r4, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldrb	r0, [r4, #2]	@ zero_extendqisi2	@ <variable>.NewPicFlag, <variable>.NewPicFlag
	ldr	r1, [r4, #1384]	@ <variable>.Compress_en, <variable>.Compress_en
	mov	ip, ip, lsr #2	@ tmp233, <variable>.imgstride,
	and	r3, ip, r3	@ tmp234, tmp233, tmp234
	bfi	r3, r0, #14, #1	@ tmp234, <variable>.NewPicFlag,,
	mov	r0, #1	@ tmp240,
	bic	ip, r3, #32768	@ tmp239, tmp234,
	bfi	ip, r0, #16, #12	@ tmp239, tmp240,,
	bic	r3, ip, #805306368	@ tmp241, tmp239,
	orr	ip, r3, #536870912	@ tmp245, tmp241,
	bfi	ip, r1, #30, #1	@ tmp245, <variable>.Compress_en,,
	orr	r1, ip, #-2147483648	@ tmp246, tmp245,
	str	r1, [r4, #1140]	@ tmp246, <variable>.basic_cfg1
	ldr	r0, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #12]	@ tmp246,
	ldr	r3, [r5, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r3, #15	@ tmp257, <variable>.MsgSlotAddr,
	str	ip, [r4, #1144]	@ tmp257, <variable>.avm_addr
	ldr	r1, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #16]	@ tmp257,
	ldr	r0, [r5, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r3, r0, #15	@ tmp267, <variable>.MsgSlotAddr,
	str	r3, [r4, #1148]	@ tmp267, <variable>.vam_addr
	ldr	ip, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #20]	@ tmp267,
	ldr	r1, [r4, #916]	@ <variable>.stream_base_addr, <variable>.stream_base_addr
	bic	r0, r1, #15	@ tmp277, <variable>.stream_base_addr,
	str	r0, [r4, #1152]	@ tmp277, <variable>.stream_base_addr_reg_tmp
	ldr	r2, [r2, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r2, #24]	@ tmp277,
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #120	@ <variable>.pic_width_in_mb,
	movhi	r3, #0	@ tmp229,
	movls	r3, #65536	@ tmp286,
	cmp	r7, #0	@ VdhId,
	str	r3, [sp, #4]	@ tmp286, D32
	bne	.L231	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	ldr	r2, [sp, #4]	@ D32, D32
	cmp	r2, #0	@ D32,
	biceq	r1, r0, #65536	@ datTmp, datTmp.1378,
	orrne	r1, r0, #65536	@ datTmp, datTmp.1378,
	movw	r0, #:lower16:s_RegPhyBaseAddr	@ tmp289,
	movt	r0, #:upper16:s_RegPhyBaseAddr	@ tmp289,
	ldr	ip, [r0, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, ip, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L231:
	movw	r2, #1140	@ tmp302,
	movw	r0, #:lower16:3148803	@ tmp292,
	mul	r7, r2, r7	@ tmp301, tmp302, VdhId
	movt	r0, #:upper16:3148803	@ tmp292,
	str	r0, [r4, #1160]	@ tmp292, <variable>.sed_to
	mov	r2, #0	@ tmp335,
	str	r0, [r4, #1164]	@ tmp292, <variable>.itrans_to
	str	r0, [r4, #1168]	@ tmp292, <variable>.pmv_to
	str	r0, [r4, #1172]	@ tmp292, <variable>.prc_to
	str	r0, [r4, #1176]	@ tmp292, <variable>.rcn_to
	str	r0, [r4, #1180]	@ tmp292, <variable>.dblk_to
	str	r0, [r4, #1184]	@ tmp292, <variable>.ppfd_to
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [sp, #4]	@ tmp292, D32
	str	r0, [ip, #60]	@ tmp292,
	ldr	r1, [sp, #4]	@ D32.1397, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #64]	@ D32.1397,
	ldr	ip, [sp, #4]	@ D32.1400, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #68]	@ D32.1400,
	ldr	r1, [sp, #4]	@ D32.1403, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #72]	@ D32.1403,
	ldr	ip, [sp, #4]	@ D32.1406, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #76]	@ D32.1406,
	ldr	r1, [sp, #4]	@ D32.1409, D32
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r3, #80]	@ D32.1409,
	ldr	ip, [sp, #4]	@ D32.1412, D32
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r0, #84]	@ D32.1412,
	ldr	r1, [r4, #292]	@ <variable>.CurrPicImgIdc, <variable>.CurrPicImgIdc
	str	r2, [sp, #4]	@ tmp335, D32
	add	r3, r4, r1, asl #2	@, tmp341, pParam, <variable>.CurrPicImgIdc,
	ldr	r0, [r3, #308]	@ tmp343, <variable>.ImgPhyAddr
	bic	ip, r0, #15	@ tmp344, tmp343,
	str	ip, [r4, #1188]	@ tmp344, <variable>.ystaddr_1d
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #96]	@ tmp344,
	ldr	r1, [r4, #912]	@ <variable>.imgstride, <variable>.imgstride
	ldr	r3, [r4, #24]	@ height_in_mb, <variable>.frame_height_in_mb
	str	r1, [r4, #1192]	@ <variable>.imgstride, <variable>.ystride_1d
	add	r0, r3, #1	@ tmp364, height_in_mb,
	ldr	ip, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r0, lsr #1	@ tmp365, tmp364,
	str	r1, [ip, #100]	@ <variable>.imgstride,
	ldr	r3, [r4, #912]	@ <variable>.imgstride, <variable>.imgstride
	mov	ip, r3, asl #1	@ tmp362, <variable>.imgstride,
	mul	r1, r0, ip	@ tmp366, tmp365, tmp362
	str	r1, [r4, #1196]	@ tmp366, <variable>.uvoffset_1d
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #104]	@ tmp366,
	str	r2, [r4, #1200]	@ tmp335, <variable>.prcnum_1d_cnt
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #108]	@ tmp335,
	ldr	ip, [r5, #1100]	@ <variable>.PpfdBufAddr, <variable>.PpfdBufAddr
	bic	r1, ip, #15	@ tmp383, <variable>.PpfdBufAddr,
	str	r1, [r4, #1212]	@ tmp383, <variable>.ppfd_buf_addr
	ldr	r0, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r1, [r0, #128]	@ tmp383,
	ldr	r3, [r5, #1104]	@ <variable>.PpfdBufLen, <variable>.PpfdBufLen
	str	r2, [sp, #4]	@ tmp335, D32
	strh	r3, [sp, #4]	@ movhi	@ <variable>.PpfdBufLen, <variable>.ppfd_buf_len
	ldr	ip, [sp, #4]	@ D32, D32
	str	ip, [r4, #1216]	@ D32, <variable>.ppfd_buf_len
	ldr	r1, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	ip, [r1, #132]	@ D32,
	ldr	r5, [r4, #1260]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r0, [r4, #1256]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r3, [r4, #1264]	@ <variable>.RefPicType, <variable>.RefPicType
	and	r1, r5, #3	@ tmp401, <variable>.RefPicType,
	ldr	r5, [r4, #1268]	@ <variable>.RefPicType, <variable>.RefPicType
	and	ip, r0, #3	@ D32.1450, <variable>.RefPicType,
	and	r0, r3, #3	@ tmp404, <variable>.RefPicType,
	ldr	r3, [r4, #1272]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, ip, r1, asl #2	@, temp.1455, D32.1450, tmp401,
	and	r5, r5, #3	@ tmp407, <variable>.RefPicType,
	ldr	ip, [r4, #1276]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r1, r0, asl #4	@, temp.1461, temp.1455, tmp404,
	and	r3, r3, #3	@ tmp410, <variable>.RefPicType,
	ldr	r0, [r4, #1280]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r5, r1, r5, asl #6	@, temp.1467, temp.1461, tmp407,
	and	ip, ip, #3	@ tmp413, <variable>.RefPicType,
	ldr	r1, [r4, #1284]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r5, r3, asl #8	@, temp.1473, temp.1467, tmp410,
	and	r0, r0, #3	@ tmp416, <variable>.RefPicType,
	ldr	r5, [r4, #1288]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r3, ip, asl #10	@, temp.1479, temp.1473, tmp413,
	and	r1, r1, #3	@ tmp419, <variable>.RefPicType,
	ldr	ip, [r4, #1292]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r0, r3, r0, asl #12	@, temp.1485, temp.1479, tmp416,
	and	r5, r5, #3	@ tmp422, <variable>.RefPicType,
	ldr	r3, [r4, #1296]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r0, r1, asl #14	@, temp.1491, temp.1485, tmp419,
	and	ip, ip, #3	@ tmp425, <variable>.RefPicType,
	ldr	r0, [r4, #1300]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r1, r1, r5, asl #16	@, temp.1497, temp.1491, tmp422,
	and	r3, r3, #3	@ tmp428, <variable>.RefPicType,
	ldr	r5, [r4, #1304]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	ip, r1, ip, asl #18	@, temp.1503, temp.1497, tmp425,
	and	r0, r0, #3	@ tmp431, <variable>.RefPicType,
	ldr	r1, [r4, #1308]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, ip, r3, asl #20	@, temp.1509, temp.1503, tmp428,
	and	r5, r5, #3	@ tmp434, <variable>.RefPicType,
	ldr	ip, [r4, #1312]	@ <variable>.RefPicType, <variable>.RefPicType
	orr	r3, r3, r0, asl #22	@, temp.1515, temp.1509, tmp431,
	and	r1, r1, #3	@ tmp437, <variable>.RefPicType,
	orr	r5, r3, r5, asl #24	@, temp.1521, temp.1515, tmp434,
	ldr	r0, [r4, #1316]	@ <variable>.RefPicType, <variable>.RefPicType
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	and	ip, ip, #3	@ tmp440, <variable>.RefPicType,
	orr	r1, r5, r1, asl #26	@, temp.1527, temp.1521, tmp437,
	orr	r1, r1, ip, asl #28	@, temp.1533, temp.1527, tmp440,
	orr	r1, r1, r0, asl #30	@, D.33680, temp.1533, <variable>.RefPicType,
	str	r1, [r3, #148]	@ D.33680,
	ldr	r3, [r7, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r2, [r3, #152]	@ tmp335,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	H264HAL_V200R004_CfgVdmReg, .-H264HAL_V200R004_CfgVdmReg
	.align	2
	.global	H264HAL_V200R004_StartDec
	.type	H264HAL_V200R004_StartDec, %function
H264HAL_V200R004_StartDec:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ pParam, pParam
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r7, r1	@ VdhId, VdhId
	beq	.L237	@,
	ldr	r3, [r4, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	cmp	r3, #512	@ <variable>.pic_width_in_mb,
	bls	.L270	@,
.L237:
	mvn	r0, #0	@ D.33945,
.L251:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L270:
	ldr	r0, [r4, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	cmp	r0, #512	@ <variable>.pic_height_in_mb,
	bhi	.L237	@,
	ldr	r2, [r4, #1124]	@ <variable>.pFirstSlice, <variable>.pFirstSlice
	cmp	r2, #0	@ <variable>.pFirstSlice,
	beq	.L237	@,
	movw	r8, #1140	@ tmp231,
	movw	r5, #:lower16:g_HwMem	@ tmp232,
	mul	r6, r8, r1	@ tmp230, tmp231, VdhId
	movt	r5, #:upper16:g_HwMem	@ tmp232,
	add	r8, r5, r6	@ pHwMem, tmp232, tmp230
	mov	r0, r8	@, pHwMem
	bl	H264HAL_GetVdmRegVirAddr	@
	cmn	r0, #1	@,
	beq	.L237	@,
	movw	lr, #:lower16:.LANCHOR1	@ tmp168,
	movt	lr, #:upper16:.LANCHOR1	@ tmp168,
	mov	r2, r7	@, VdhId
	mov	r0, r4	@, pParam
	ldr	r3, [lr, #0]	@ StartCnt, StartCnt
	mov	r1, r8	@, pHwMem
	add	ip, r3, #1	@ tmp171, StartCnt,
	str	ip, [lr, #0]	@ tmp171, StartCnt
	bl	H264HAL_V200R004_CfgVdmReg	@
	ldr	r7, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r4	@, pParam
	mvn	r5, #0	@ tmp177,
	mov	r1, r8	@, pHwMem
	str	r5, [r7, #32]	@ tmp177,
	ldr	r2, [r8, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [r8, #48]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_SetPicMsg	@
	ldr	r5, [r4, #1124]	@ pSlicePara, <variable>.pFirstSlice
	ldr	r6, [r5, #48]	@ D.33958, <variable>.first_mb_in_slice
	cmp	r6, #0	@ D.33958,
	moveq	fp, r6	@ AddSlice0Flag, D.33958
	bne	.L271	@,
.L240:
	mov	r6, #0	@ pre_first_mb_in_slice,
	mov	r2, r5	@ tmp_pSlicePara.1575, pSlicePara
	mov	r7, r4	@ pParam, pParam
	mov	r5, r6	@ i, pre_first_mb_in_slice
	add	ip, fp, #5	@, AddSlice0Flag,
	str	ip, [sp, #28]	@, %sfp
.L241:
	ldr	r0, [r7, #1120]	@ D.34000, <variable>.SliceParaNum
	cmp	r0, r5	@ D.34000, i
	ble	.L265	@,
	ldr	ip, [sp, #28]	@, %sfp
	add	r1, r5, fp	@ tmp234, i, AddSlice0Flag
	add	r9, r5, ip	@ D.33993, i,
	add	sl, r8, r1, asl #2	@, tmp238, pHwMem, tmp234,
	ldr	ip, [r2, #48]	@ temp.1572, <variable>.first_mb_in_slice
	add	sl, sl, #44	@ tmp239, tmp238,
	add	r4, r8, r9, asl #2	@, tmp243, pHwMem, D.33993,
	add	r1, r4, #28	@ tmp244, tmp243,
.L242:
	cmp	ip, r6	@ temp.1572, pre_first_mb_in_slice
	movhi	r3, #0	@, tmp208
	movls	r3, #1	@, tmp208
	cmp	r5, #0	@ i,
	ldr	r4, [sl, #0]	@ prev_slcmsg_phy.1573, <variable>.MsgSlotAddr
	movle	r3, #0	@, tmp208,
	cmp	r3, #0	@ tmp208,
	ldr	r3, [r1, #0]	@ cur_slcmsg_phy.1571, <variable>.MsgSlotAddr
	bne	.L242	@,
	add	r5, r5, #1	@ j, i,
	cmp	r5, r0	@ j, D.34000
	movge	sl, r2	@ tmp_pSlicePara, tmp_pSlicePara.1575
	bge	.L244	@,
	ldr	sl, [r2, #4056]	@ pSlicePara.1569, <variable>.pNextSlice
	cmp	sl, #0	@ pSlicePara.1569,
	beq	.L237	@,
	ldr	r1, [sl, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r1, ip	@ <variable>.first_mb_in_slice, temp.1572
	bhi	.L253	@,
	mvn	r1, r5	@ tmp249, j
	add	r1, r1, r0	@ tmp248, tmp249, D.34000
	tst	r1, #1	@ tmp248,
	bne	.L263	@,
	b	.L260	@
.L272:
	ldr	r1, [sl, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r1	@ temp.1572, <variable>.first_mb_in_slice
	bcc	.L253	@,
.L260:
	add	r5, r5, #1	@ j, j,
	cmp	r0, r5	@ D.34000, j
	ble	.L244	@,
	ldr	sl, [sl, #4056]	@ pSlicePara.1569, <variable>.pNextSlice
	cmp	sl, #0	@ pSlicePara.1569,
	beq	.L237	@,
	ldr	r1, [sl, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	ip, r1	@ temp.1572, <variable>.first_mb_in_slice
	bcc	.L253	@,
.L263:
	ldr	sl, [sl, #4056]	@ pSlicePara.1569, <variable>.pNextSlice
	add	r5, r5, #1	@ j, j,
	cmp	sl, #0	@ pSlicePara.1569,
	bne	.L272	@,
	b	.L237	@
.L271:
	ldr	r1, [r5, #8]	@, <variable>.valid_bitlen
	mov	ip, #0	@ tmp180,
	str	ip, [r5, #48]	@ tmp180, <variable>.first_mb_in_slice
	mov	fp, #1	@ tmp181,
	mov	r0, r4	@, pParam
	mov	r2, r5	@, pSlicePara
	str	r1, [sp, #20]	@, %sfp
	mov	r1, r8	@, pHwMem
	ldr	lr, [r5, #16]	@, <variable>.bitsoffset
	str	fp, [r5, #8]	@ tmp181, <variable>.valid_bitlen
	ldr	r9, [r5, #12]	@ D.33964, <variable>.valid_bitlen
	str	ip, [r5, #12]	@ tmp180, <variable>.valid_bitlen
	str	lr, [sp, #36]	@, %sfp
	sub	lr, r6, #1	@ tmp190, D.33958,
	ldr	r3, [r5, #20]	@, <variable>.bitsoffset
	str	ip, [r5, #16]	@ tmp180, <variable>.bitsoffset
	str	r3, [sp, #32]	@, %sfp
	ldr	r7, [r5, #24]	@, <variable>.bytespos
	str	ip, [r5, #20]	@ tmp180, <variable>.bitsoffset
	str	r7, [sp, #28]	@, %sfp
	str	ip, [r5, #24]	@ tmp180, <variable>.bytespos
	ldr	r7, [r5, #28]	@ D.33972, <variable>.bytespos
	str	ip, [r5, #28]	@ tmp180, <variable>.bytespos
	ldr	sl, [r8, #44]	@, <variable>.MsgSlotAddr
	ldr	r3, [r8, #48]	@, <variable>.MsgSlotAddr
	str	sl, [sp, #0]	@,
	ldr	sl, [r8, #52]	@, <variable>.MsgSlotAddr
	stmib	sp, {sl, ip, lr}	@ phole stm
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L237	@,
	str	r7, [r5, #28]	@ D.33972, <variable>.bytespos
	str	r6, [r5, #48]	@ D.33958, <variable>.first_mb_in_slice
	ldr	r2, [sp, #20]	@, %sfp
	str	r9, [r5, #12]	@ D.33964, <variable>.valid_bitlen
	str	r2, [r5, #8]	@, <variable>.valid_bitlen
	ldr	r0, [sp, #36]	@, %sfp
	str	r0, [r5, #16]	@, <variable>.bitsoffset
	ldr	sl, [sp, #32]	@, %sfp
	str	sl, [r5, #20]	@, <variable>.bitsoffset
	ldr	r6, [sp, #28]	@, %sfp
	str	r6, [r5, #24]	@, <variable>.bytespos
	ldr	r5, [r4, #1124]	@ pSlicePara, <variable>.pFirstSlice
	b	.L240	@
.L244:
	cmp	sl, #0	@ tmp_pSlicePara,
	beq	.L237	@,
.L253:
	cmp	r5, r0	@ j, D.34000
	beq	.L248	@,
	cmp	r9, #140	@ D.33993,
	beq	.L248	@,
	ldr	r6, [sp, #28]	@, %sfp
	ldr	lr, [sl, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	add	r9, r5, r6	@ tmp216, j,
	add	r1, r8, r9, asl #2	@, tmp220, pHwMem, tmp216,
	sub	r9, lr, #1	@ last_mb_in_slice, <variable>.first_mb_in_slice,
	ldr	lr, [r1, #28]	@ next_slcmsg_phy, <variable>.MsgSlotAddr
.L250:
	mov	r0, r7	@, pParam
	mov	r1, r8	@, pHwMem
	str	r4, [sp, #0]	@ prev_slcmsg_phy.1573,
	mov	r6, ip	@ pre_first_mb_in_slice, temp.1572
	str	lr, [sp, #4]	@ next_slcmsg_phy,
	str	r9, [sp, #12]	@ last_mb_in_slice,
	str	ip, [sp, #8]	@ pre_first_mb_in_slice,
	bl	H264HAL_V200R004_SetSliceMsg	@
	cmp	r0, #0	@,
	bne	.L237	@,
	mov	r2, sl	@ tmp_pSlicePara.1575, tmp_pSlicePara
	b	.L241	@
.L265:
	cmp	r0, #0	@ D.34000,
	ble	.L237	@,
	add	r2, fp, r0	@ tmp222, AddSlice0Flag, D.34000
	add	r8, r8, r2, asl #2	@, tmp226, pHwMem, tmp222,
	ldr	r0, [r8, #44]	@, <variable>.MsgSlotAddr
	bl	H264HAL_V200R004_CutSliceChain	@
	mov	r0, #0	@ D.33945,
	b	.L251	@
.L248:
	ldr	r0, [r7, #20]	@ <variable>.pic_height_in_mb, <variable>.pic_height_in_mb
	mov	lr, #0	@ next_slcmsg_phy,
	ldr	r6, [r7, #28]	@ <variable>.pic_width_in_mb, <variable>.pic_width_in_mb
	str	lr, [r2, #4056]	@ next_slcmsg_phy, <variable>.pNextSlice
	ldr	r5, [r7, #1120]	@ i, <variable>.SliceParaNum
	mul	r9, r6, r0	@ tmp211, <variable>.pic_width_in_mb, <variable>.pic_height_in_mb
	sub	r9, r9, #1	@ last_mb_in_slice, tmp211,
	b	.L250	@
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
	ldmeqfd	sp!, {r4, pc}	@
	movw	r1, #:lower16:.LANCHOR2	@,
	mov	r2, #5120	@,
	movt	r1, #:upper16:.LANCHOR2	@,
	ldmfd	sp!, {r4, lr}	@
	b	memcpy	@
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
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	StartCnt.33936, %object
	.size	StartCnt.33936, 4
StartCnt.33936:
	.space	4
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
