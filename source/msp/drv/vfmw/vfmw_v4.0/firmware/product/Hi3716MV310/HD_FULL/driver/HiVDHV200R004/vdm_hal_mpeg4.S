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
	.file	"vdm_hal_mpeg4.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_MPEG4_SUPPORT -DVFMW_AVS_SUPPORT
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_REAL8_SUPPORT
@ -DVFMW_REAL9_SUPPORT -DVFMW_VP6_SUPPORT -DVFMW_VP8_SUPPORT
@ -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_H263_SUPPORT
@ -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT
@ -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4 -DVFMW_DPRINT_SUPPORT
@ -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE -DREPAIR_ENABLE
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg4.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.o
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
	.global	MP4HAL_V200R004_Log2bin
	.type	MP4HAL_V200R004_Log2bin, %function
MP4HAL_V200R004_Log2bin:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ value
	bxeq	lr	@
	mov	r3, #0	@ n,
.L4:
	add	r3, r3, #1	@ tmp142, n,
	movs	r0, r0, lsr #1	@ value, value,
	uxth	r3, r3	@ n, tmp142
	bne	.L4	@,
	sxth	r0, r3	@ prephitmp.494, n
	bx	lr	@
	.fnend
	.size	MP4HAL_V200R004_Log2bin, .-MP4HAL_V200R004_Log2bin
	.align	2
	.global	MP4HAL_V200R004_WriteSlicMsg
	.type	MP4HAL_V200R004_WriteSlicMsg, %function
MP4HAL_V200R004_WriteSlicMsg:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:g_HwMem	@ tmp247,
	movt	r4, #:upper16:g_HwMem	@ tmp247,
	movw	ip, #1140	@ tmp250,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r5, r0	@ pMp4DecParam, pMp4DecParam
	mla	r8, ip, r1, r4	@ tmp251, tmp250, VdhId, tmp247
	movw	r1, #14572	@ tmp246,
	str	r2, [sp, #16]	@ StreamBaseAddr, %sfp
	mov	r4, #0	@ tmp245,
	ldr	r2, [r0, r1]	@, <variable>.SlcNum
	str	r4, [sp, #36]	@ tmp245, D32
	str	r2, [sp, #8]	@, %sfp
	ldr	r0, [r8, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r3, r0, #256	@, <variable>.MsgSlotAddr,
	str	r3, [sp, #24]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	r8, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L55	@,
	ldr	lr, [r5, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	lr, #0	@ <variable>.mb_start_num,
	streq	lr, [sp, #28]	@ <variable>.mb_start_num, %sfp
	bne	.L56	@,
.L12:
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, #0	@,
	ble	.L15	@,
	ldr	r6, [sp, #28]	@, %sfp
	mov	r4, #0	@ i,
	ldr	r2, [r5, #260]	@ prephitmp.652, <variable>.mb_start_num
	ldr	r7, [r5, #232]	@ prephitmp.541, <variable>.mb_start_num
	mov	r1, r6, asl #2	@,,
	add	r6, sp, #36	@ tmp573,,
	str	r1, [sp, #20]	@, %sfp
	b	.L34	@
.L16:
	ldr	r3, [sp, #8]	@, %sfp
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@, i
	ble	.L15	@,
.L57:
	sub	ip, r4, #1	@ tmp562, i,
	rsb	r2, r4, r4, asl #3	@, tmp558, i, i,
	rsb	r1, ip, ip, asl #3	@, tmp566, tmp562, tmp562,
	add	r7, r5, r2, asl #2	@, tmp560, pMp4DecParam, tmp558,
	add	r0, r5, r1, asl #2	@, tmp568, pMp4DecParam, tmp566,
	ldr	r2, [r7, #260]	@ prephitmp.652, <variable>.mb_start_num
	ldr	r7, [r0, #260]	@ prephitmp.541, <variable>.mb_start_num
.L34:
	cmp	r4, #0	@ i,
	movle	r3, #0	@,
	movgt	r3, #1	@,
	cmp	r7, r2	@ prephitmp.541, prephitmp.652
	movcc	r3, #0	@,,
	cmp	r3, #0	@ tmp333,
	mov	r7, r3	@ tmp333,
	bne	.L16	@,
	mov	r9, r4, asl #3	@, i,
	ldr	sl, [sp, #20]	@, %sfp
	rsb	fp, r4, r9	@ tmp338, i,
	mov	r0, #4	@,
	str	r9, [sp, #12]	@, %sfp
	add	r9, r4, sl	@ D.31747, i,
	mla	sl, fp, r0, r5	@ tmp340, tmp338,, pMp4DecParam
	str	r3, [sp, #36]	@ tmp333, D32
	ldr	r3, [r6, #0]	@ tmp359,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	mov	fp, r9, asl #5	@ D.31748, D.31747,
	ldrb	r2, [sl, #242]	@ zero_extendqisi2	@, <variable>.bit_offset
	ldr	ip, [sl, #252]	@ temp.591, <variable>.phy_address
	str	r2, [sp, #4]	@, %sfp
	and	r2, ip, #15	@ tmp342, temp.591,
	ldr	lr, [sl, #244]	@, <variable>.bit_len
	bfi	r3, lr, #0, #24	@ tmp359,,,
	ldr	lr, [sp, #4]	@, %sfp
	add	r2, lr, r2, asl #3	@, bit_offset_0.598,, tmp342,
	bfi	r3, r2, #24, #7	@ tmp361, bit_offset_0.598,,
	str	r3, [r6, #0]	@ tmp361,
	str	r3, [r8, r9, asl #5]	@ D32.603,* SlcDnMsgVirAddr
	ldr	r2, [sp, #36]	@, D32
	str	ip, [sp, #0]	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #0]	@,
	mov	r1, r9, asl #3	@ tmp369, D.31747,
	ldr	r2, [sp, #16]	@, %sfp
	bic	r0, r3, #15	@ tmp366, temp.591,
	mov	r3, r7	@ tmp368, tmp333
	rsb	ip, r2, r0	@ tmp367,, tmp366
	add	r2, r1, #1	@ tmp370, tmp369,
	bfi	r3, ip, #0, #24	@ tmp368, tmp367,,
	str	r3, [r6, #0]	@ tmp368,
	str	r3, [r8, r2, asl #2]	@ D32.610,* SlcDnMsgVirAddr
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@, D32
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	str	r7, [sp, #36]	@ tmp333, D32
	ldr	r3, [sl, #256]	@, <variable>.phy_address
	mov	lr, r9, asl #2	@ tmp402, D.31747,
	add	lr, lr, #1	@ tmp403, tmp402,
	mov	r9, r9, asl #1	@ tmp478, D.31747,
	add	r9, r9, #1	@ tmp479, tmp478,
	str	r3, [sp, #4]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	ldr	r1, [sl, #248]	@ <variable>.bit_len, <variable>.bit_len
	and	ip, r0, #15	@ tmp382,,
	ldrb	r2, [sl, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	ldr	r3, [r6, #0]	@ tmp399,
	mov	r0, #4	@,
	add	r2, r2, ip, asl #3	@, bit_offset_1.620, <variable>.bit_offset, tmp382,
	bfi	r3, r1, #0, #24	@ tmp399, <variable>.bit_len,,
	movw	r1, #:lower16:.LC3	@,
	bfi	r3, r2, #24, #7	@ tmp401, bit_offset_1.620,,
	str	r3, [r6, #0]	@ tmp401,
	str	r3, [r8, lr, asl #3]	@ D32.625,* SlcDnMsgVirAddr
	movt	r1, #:upper16:.LC3	@,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	str	r7, [sp, #36]	@ tmp333, D32
	ldr	r7, [sl, #256]	@ <variable>.phy_address, <variable>.phy_address
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	cmp	r7, #0	@ <variable>.phy_address,
	ldrne	r3, [sp, #4]	@, %sfp
	ldrne	lr, [sp, #16]	@, %sfp
	bicne	r7, r3, #15	@ tmp416,,
	ldr	r3, [r6, #0]	@ tmp418,
	rsbne	r7, lr, r7	@ iftmp.478,, tmp416
	add	lr, fp, #12	@ tmp419, D.31748,
	bicne	r7, r7, #-16777216	@ iftmp.478, iftmp.478,
	bfi	r3, r7, #0, #24	@ tmp418, iftmp.478,,
	str	r3, [r6, #0]	@ tmp418,
	str	r3, [r8, lr]	@ D32.632,
	add	r7, r4, #1	@ i.659, i,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [sp, #12]	@, %sfp
	mov	r0, #0	@,
	str	r0, [sp, #36]	@, D32
	rsb	sl, r4, r2	@ tmp426, i,
	mov	r2, r0	@ tmp430,
	mov	r0, #4	@,
	mov	r1, sl, asl #2	@, tmp426,
	str	r1, [sp, #4]	@, %sfp
	add	sl, r1, r5	@ tmp428,, pMp4DecParam
	movw	r1, #:lower16:.LC5	@,
	add	lr, sl, #232	@ tmp429, tmp428,
	movt	r1, #:upper16:.LC5	@,
	ldrb	r3, [lr, #9]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	bfi	r2, r3, #0, #5	@ tmp430, <variable>.vop_quant,,
	str	r2, [r6, #0]	@ tmp430,
	ldrb	ip, [lr, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	bfi	r2, ip, #5, #2	@ tmp441, <variable>.vop_coding_type,,
	str	r2, [r6, #0]	@ tmp441,
	ldrb	r3, [lr, #7]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bfi	r2, r3, #7, #3	@ tmp452, <variable>.intra_dc_vlc_thr,,
	str	r2, [r6, #0]	@ tmp452,
	ldrb	ip, [lr, #5]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r2, ip, #10, #3	@ tmp463, <variable>.vop_fcode_forward,,
	str	r2, [r6, #0]	@ tmp463,
	ldrb	r3, [lr, #6]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r2, r3, #13, #3	@ tmp474, <variable>.vop_fcode_backward,,
	str	r2, [r6, #0]	@ tmp474,
	str	r2, [r8, r9, asl #4]	@ D32.647,* SlcDnMsgVirAddr
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	mov	r0, #0	@,
	add	r2, fp, #20	@ tmp494, D.31748,
	str	r0, [sp, #36]	@, D32
	ldr	r1, [sl, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	ip, r0	@ tmp492,
	mov	r0, #4	@,
	bfi	ip, r1, #0, #20	@ tmp492, <variable>.mb_start_num,,
	str	ip, [r6, #0]	@ tmp492,
	str	ip, [r8, r2]	@ D32.654,
	movw	r1, #:lower16:.LC6	@,
	ldr	r2, [sp, #36]	@, D32
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	movw	lr, #14572	@,
	ldr	r3, [r5, lr]	@ SliceNum, <variable>.SlcNum
	cmp	r3, r7	@ SliceNum, i.659
	movle	r2, r7	@ i, i.659
	movle	r0, #0	@ slice_end_mbn,
	ble	.L20	@,
	rsb	r1, r7, r7, asl #3	@, tmp508, i.659, i.659,
	ldr	ip, [sl, #260]	@ D.31814, <variable>.mb_start_num
	add	r2, r5, r1, asl #2	@, tmp510, pMp4DecParam, tmp508,
	ldr	r1, [r2, #260]	@ D.31811, <variable>.mb_start_num
	cmp	ip, r1	@ D.31814, D.31811
	movcc	r2, r7	@ i, i.659
	bcc	.L22	@,
	ldr	lr, [sp, #4]	@, %sfp
	mvn	r1, r7	@ tmp588, i.659
	add	r2, r1, r3	@ tmp587, tmp588, SliceNum
	add	r0, lr, #232	@ tmp516,,
	tst	r2, #1	@ tmp587,
	add	lr, r5, r0	@ tmp517, pMp4DecParam, tmp516
	mov	r2, r7	@ i, i.659
	add	r0, lr, #4	@ ivtmp.566, tmp517,
	beq	.L23	@,
	ldr	r1, [r0, #80]	@ D.31811, <variable>.mb_start_num
	add	r2, r7, #1	@ i, i.659,
	add	r0, lr, #32	@ ivtmp.566, tmp517,
	cmp	ip, r1	@ D.31814, D.31811
	bcs	.L23	@,
	b	.L22	@
.L24:
	ldr	r1, [r0, #80]	@ D.31811, <variable>.mb_start_num
	add	r0, r0, #56	@ ivtmp.566, ivtmp.566,
	cmp	ip, r1	@ D.31814, D.31811
	bcc	.L22	@,
	ldr	r1, [lr, #80]	@ D.31811, <variable>.mb_start_num
	add	r2, r2, #1	@ i, i,
	cmp	ip, r1	@ D.31814, D.31811
	bcc	.L22	@,
.L23:
	add	r2, r2, #1	@ i, i,
	add	lr, r0, #28	@ tmp591, ivtmp.566,
	cmp	r3, r2	@ SliceNum, i
	bgt	.L24	@,
	mov	r0, #0	@ slice_end_mbn,
.L20:
	cmp	r3, r2	@ SliceNum, i
	ldreqh	r0, [r5, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldreqh	r2, [r5, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	muleq	r0, r0, r2	@ tmp520, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	subeq	r0, r0, #1	@ slice_end_mbn, tmp520,
	cmp	r3, r7	@ SliceNum, i.659
	ble	.L26	@,
	ldr	ip, [sp, #12]	@, %sfp
	rsb	r1, r7, r7, asl #3	@, tmp531, i.659, i.659,
	rsb	r4, r4, ip	@ tmp524, i,
	add	r2, r5, r1, asl #2	@, tmp533, pMp4DecParam, tmp531,
	mov	ip, r4, asl #2	@ tmp525, tmp524,
	ldr	r4, [r2, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	add	lr, ip, r5	@ tmp526, tmp525, pMp4DecParam
	ldr	r1, [lr, #260]	@ D.31836, <variable>.mb_start_num
	cmp	r1, r4	@ D.31836, <variable>.mb_start_num
	bcc	.L27	@,
	mvn	r2, r7	@ tmp583, i.659
	add	lr, r2, r3	@ tmp582, tmp583, SliceNum
	add	ip, ip, #232	@ tmp542, tmp525,
	tst	lr, #1	@ tmp582,
	add	ip, r5, ip	@ tmp543, pMp4DecParam, tmp542
	add	r2, ip, #4	@ ivtmp.559, tmp543,
	beq	.L29	@,
	ldr	r4, [r2, #80]	@ temp.669, <variable>.mb_start_num
	add	r7, r7, #1	@ i.659, i.659,
	add	r2, ip, #32	@ ivtmp.559, tmp543,
	cmp	r1, r4	@ D.31836, temp.669
	bcs	.L29	@,
	b	.L27	@
.L31:
	ldr	lr, [r2, #80]	@ temp.669, <variable>.mb_start_num
	add	r2, r2, #56	@ ivtmp.559, ivtmp.559,
	cmp	r1, lr	@ D.31836, temp.669
	bcc	.L27	@,
	ldr	lr, [ip, #80]	@ temp.669, <variable>.mb_start_num
	add	r7, r7, #1	@ i.659, i.659,
	cmp	r1, lr	@ D.31836, temp.669
	bcc	.L27	@,
.L29:
	add	r7, r7, #1	@ i.659, i.659,
	add	ip, r2, #28	@ tmp586, ivtmp.559,
	cmp	r3, r7	@ SliceNum, i.659
	bgt	.L31	@,
.L26:
	mov	r4, #0	@ NextSlcParaAddr,
.L30:
	add	ip, fp, #24	@ tmp547, D.31748,
	cmp	r3, r7	@ SliceNum, i.659
	mov	r1, #0	@ tmp546,
	add	fp, fp, #28	@ tmp552, D.31748,
	bfi	r1, r0, #0, #20	@ tmp546, slice_end_mbn,,
	str	r1, [r6, #0]	@ tmp546,
	str	r1, [r8, ip]	@ D32.661,
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@, D32
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	moveq	r4, #0	@ prephitmp.651,
	bl	dprint_vfmw	@
	str	r4, [r6, #0]	@ prephitmp.651, <variable>.next_slice_para_addr
	str	r4, [r8, fp]	@ D32.666,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC8	@,
	ldr	r2, [sp, #36]	@, D32
	movt	r1, #:upper16:.LC8	@,
	sub	r4, r7, #1	@ i, i.659,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #8]	@, %sfp
	add	r4, r4, #1	@ i, i,
	cmp	r3, r4	@, i
	bgt	.L57	@,
.L15:
	mov	r0, #0	@ D.31637,
.L10:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L27:
	ldr	r4, [sp, #28]	@, %sfp
	ldr	r2, [sp, #24]	@, %sfp
	add	r1, r7, r4	@ tmp536, i.659,
	add	r4, r2, r1, asl #5	@, NextSlcParaAddr,, tmp536,
	b	.L30	@
.L22:
	sub	r0, r1, #1	@ slice_end_mbn, D.31811,
	b	.L20	@
.L56:
	ldr	r6, [r5, #252]	@ D.31644, <variable>.phy_address
	mov	lr, #0	@ tmp262,
	ldrb	r3, [r5, #242]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r0, #4	@,
	and	ip, r6, #15	@ tmp258, D.31644,
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	add	r2, r3, ip, asl #3	@, bit_offset_0, <variable>.bit_offset, tmp258,
	bfi	lr, r2, #24, #7	@ tmp262, bit_offset_0,,
	str	lr, [sp, #36]	@ tmp262,
	str	lr, [r8, #0]	@ tmp262,* SlcDnMsgVirAddr
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	ldr	r3, [sp, #16]	@, %sfp
	bic	r1, r6, #15	@ tmp267, D.31644,
	mov	r6, r4	@ tmp269, tmp245
	rsb	r0, r3, r1	@ tmp268,, tmp267
	movw	r1, #:lower16:.LC2	@,
	bfi	r6, r0, #0, #24	@ tmp269, tmp268,,
	str	r6, [sp, #36]	@ tmp269,
	str	r6, [r8, #4]	@ tmp269,
	movt	r1, #:upper16:.LC2	@,
	ldr	r2, [sp, #36]	@, D32
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldr	r6, [r5, #256]	@ D.31670, <variable>.phy_address
	ldrb	r2, [r5, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r3, #0	@ tmp277,
	and	ip, r6, #15	@ tmp273, D.31670,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	add	r2, r2, ip, asl #3	@, bit_offset_1, <variable>.bit_offset, tmp273,
	bfi	r3, r2, #24, #7	@ tmp277, bit_offset_1,,
	str	r3, [sp, #36]	@ tmp277,
	str	r3, [r8, #8]	@ tmp277,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	ldr	r2, [r5, #256]	@ <variable>.phy_address, <variable>.phy_address
	str	r4, [sp, #36]	@ tmp245, D32
	mov	r0, #4	@,
	cmp	r2, #0	@ <variable>.phy_address,
	ldr	r4, [sp, #36]	@ tmp284,
	bicne	r2, r6, #15	@ tmp282, D.31670,
	movw	r1, #:lower16:.LC4	@,
	ldrne	lr, [sp, #16]	@, %sfp
	movt	r1, #:upper16:.LC4	@,
	mov	ip, #1	@,
	rsbne	r2, lr, r2	@ iftmp.471,, tmp282
	bicne	r2, r2, #-16777216	@ iftmp.471, iftmp.471,
	bfi	r4, r2, #0, #24	@ tmp284, iftmp.471,,
	str	r4, [sp, #36]	@ tmp284,
	str	r4, [r8, #12]	@ tmp284,
	mov	r4, #0	@ tmp287,
	ldr	r2, [sp, #36]	@, D32
	str	ip, [sp, #28]	@, %sfp
	bl	dprint_vfmw	@
	ldrb	r3, [r5, #241]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	mov	r0, #4	@,
	ldrb	r1, [r5, #240]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	ldrb	lr, [r5, #239]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r3, r3, #31	@ tmp292, <variable>.vop_quant,
	ldrb	ip, [r5, #237]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r3, r1, #5, #2	@ tmp292, <variable>.vop_coding_type,,
	ldrb	r2, [r5, #238]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r3, lr, #7, #3	@ tmp296, <variable>.intra_dc_vlc_thr,,
	bfi	r3, ip, #10, #3	@ tmp300, <variable>.vop_fcode_forward,,
	movw	r1, #:lower16:.LC5	@,
	bfi	r3, r2, #13, #3	@ tmp304, <variable>.vop_fcode_backward,,
	str	r3, [sp, #36]	@ tmp304,
	str	r3, [r8, #16]	@ tmp304,
	movt	r1, #:upper16:.LC5	@,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	mov	ip, r4	@ tmp312, tmp287
	bfi	ip, r4, #0, #20	@ tmp312, tmp287,,
	str	ip, [sp, #36]	@ tmp312,
	str	ip, [r8, #20]	@ tmp312,
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@, D32
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	ldr	r1, [r5, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	r0, #4	@,
	sub	r2, r1, #1	@ tmp317, <variable>.mb_start_num,
	movw	r1, #:lower16:.LC7	@,
	bfi	r4, r2, #0, #20	@ tmp319, tmp317,,
	str	r4, [sp, #36]	@ tmp319,
	str	r4, [r8, #24]	@ tmp319,
	movt	r1, #:upper16:.LC7	@,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	ldr	r0, [sp, #24]	@, %sfp
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	add	r3, r0, #32	@ tmp324,,
	str	r3, [sp, #36]	@ tmp324, <variable>.next_slice_para_addr
	str	r3, [r8, #28]	@ tmp324,
	mov	r0, #4	@,
	ldr	r2, [sp, #36]	@, D32
	bl	dprint_vfmw	@
	b	.L12	@
.L55:
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #733	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31637,
	b	.L10	@
	.fnend
	.size	MP4HAL_V200R004_WriteSlicMsg, .-MP4HAL_V200R004_WriteSlicMsg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V200R004_CfgDnMsg
	.type	MP4HAL_V200R004_CfgDnMsg, %function
MP4HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrh	r9, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	r3, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r7, r1	@ VdhId, VdhId
	mul	r3, r9, r3	@ MbCnt, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	cmp	r3, #0	@ MbCnt,
	moveq	r9, r3	@ prephitmp.895, MbCnt
	beq	.L60	@,
	mov	r9, #0	@ n,
.L61:
	add	r9, r9, #1	@ tmp320, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r9, r9	@ n, tmp320
	bne	.L61	@,
	sxth	r9, r9	@ prephitmp.895, n
.L60:
	movw	r6, #:lower16:g_HwMem	@ tmp869,
	movt	r6, #:upper16:g_HwMem	@ tmp869,
	movw	r0, #1140	@ tmp324,
	mla	r1, r0, r7, r6	@ tmp325, tmp324, VdhId, tmp869
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pMsgBlock,
	beq	.L82	@,
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r2, #1	@ <variable>.IsShortHeader,
	beq	.L83	@,
	mov	sl, #0	@ tmp350,
	mov	r8, r5	@ pReg.963, pMsgBlock
	str	sl, [r8], #4	@ tmp350,
	mov	r2, sl	@, tmp350
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	and	r9, r9, #15	@ tmp409, prephitmp.895,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	ldrb	fp, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	mov	r0, #4	@,
	and	r2, r1, #31	@ tmp353, <variable>.VopQuant,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r3, fp, asl #31	@ tmp356, <variable>.PicQuantType,
	movw	fp, #14620	@ tmp368,
	orr	r2, r3, r2, asl #26	@, Dat.962, tmp356, tmp353,
	str	r2, [r5, #4]	@ Dat.962,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.930, <variable>.PicCodingType
	movw	ip, #14616	@ tmp363,
	movw	r2, #14624	@ tmp372,
	cmp	r3, #2	@ prephitmp.930,
	ldr	r0, [r4, ip]	@ <variable>.sprite_enable, <variable>.sprite_enable
	streqb	sl, [r4, #12]	@ tmp350, <variable>.vop_rounding_type
	moveq	r1, sl	@ prephitmp.928, tmp350
	ldrb	sl, [r4, #15]	@ zero_extendqisi2	@ <variable>.Interlaced, <variable>.Interlaced
	ldr	ip, [r4, fp]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	and	lr, r0, #3	@ tmp364, <variable>.sprite_enable,
	ldr	fp, [r4, r2]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	and	r2, sl, #1	@ tmp362, <variable>.Interlaced,
	ldrb	sl, [r4, #14]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	orr	r0, r2, lr, asl #26	@, tmp367, tmp362, tmp364,
	and	fp, fp, #3	@ tmp373, <variable>.sprite_warping_accuracy,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.alternate_vertical_scan, <variable>.alternate_vertical_scan
	orr	ip, r0, ip, asl #30	@, tmp371, tmp367, <variable>.sprite_warping_points,
	and	r2, sl, #1	@ tmp378, <variable>.top_field_first,
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ <variable>.resync_marker_disable, <variable>.resync_marker_disable
	orr	ip, ip, fp, asl #28	@, tmp376, tmp371, tmp373,
	ldrb	sl, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	and	lr, lr, #1	@ tmp382, <variable>.alternate_vertical_scan,
	orr	r2, ip, r2, asl #1	@, tmp380, tmp376, tmp378,
	ldrb	ip, [r4, #9]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	sl, sl, #1	@ tmp386, <variable>.QuarterSample,
	orr	r2, r2, lr, asl #2	@, tmp384, tmp380, tmp382,
	mov	r0, r0, asl #7	@ tmp390, <variable>.resync_marker_disable,
	ldrb	lr, [r4, #7]	@ zero_extendqisi2	@ <variable>.FwdFcode, <variable>.FwdFcode
	orr	sl, r2, sl, asl #4	@, tmp388, tmp384, tmp386,
	and	r0, r0, #255	@ tmp391, tmp390,
	ldrb	r2, [r4, #8]	@ zero_extendqisi2	@ <variable>.BwdFcode, <variable>.BwdFcode
	and	ip, ip, #7	@ tmp394, <variable>.intra_dc_vlc_thr,
	orr	sl, sl, r0	@ tmp392, tmp388, tmp391
	and	lr, lr, #7	@ tmp398, <variable>.FwdFcode,
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ <variable>.BitsOfVopTimeIncr, <variable>.BitsOfVopTimeIncr
	orr	ip, sl, ip, asl #8	@, tmp396, tmp392, tmp394,
	ldrneb	r1, [r4, #12]	@ zero_extendqisi2	@ pretmp.927, <variable>.vop_rounding_type
	and	sl, r2, #7	@ tmp402, <variable>.BwdFcode,
	orr	ip, ip, lr, asl #11	@, tmp400, tmp396, tmp398,
	and	r0, r0, #31	@ tmp406, <variable>.BitsOfVopTimeIncr,
	orr	lr, ip, sl, asl #14	@, tmp404, tmp400, tmp402,
	and	sl, r3, #3	@ tmp413, prephitmp.930,
	orr	ip, lr, r0, asl #17	@, tmp408, tmp404, tmp406,
	mov	r0, #4	@,
	orr	r2, ip, r9, asl #22	@, tmp411, tmp408, tmp409,
	andne	r1, r1, #1	@ tmp358, pretmp.927,
	movne	r1, r1, asl #3	@ prephitmp.928, tmp358,
	orr	lr, r2, r1	@ tmp412, tmp411, prephitmp.928
	movw	r1, #:lower16:.LC12	@,
	orr	r2, lr, sl, asl #5	@, Dat.973, tmp412, tmp413,
	movt	r1, #:upper16:.LC12	@,
	str	r2, [r8, #4]	@ Dat.973,
	add	r8, r8, r0	@ pReg.974, pReg.963,
	bl	dprint_vfmw	@
	ldrb	r9, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r9, #2	@ <variable>.PicCodingType,
	beq	.L84	@,
.L65:
	ldrh	r8, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mov	r0, #4	@,
	ldrh	sl, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC14	@,
	sub	ip, r8, #1	@ tmp428, <variable>.PicWidthInMb,
	movt	r1, #:upper16:.LC14	@,
	sub	r9, sl, #1	@ tmp425, <variable>.PicHeightInMb,
	uxth	lr, ip	@ tmp429, tmp428
	orr	r2, lr, r9, asl #16	@, Dat.986, tmp429, tmp425,
	str	r2, [r5, #16]	@ Dat.986,
	bl	dprint_vfmw	@
	movw	r1, #14608	@ tmp432,
	ldr	r2, [r4, r1]	@ <variable>.image_height, <variable>.image_height
	movw	r0, #14612	@ tmp435,
	ldr	r3, [r4, r0]	@ <variable>.image_width, <variable>.image_width
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC15	@,
	orr	r2, r3, r2, asl #16	@, Dat.990, <variable>.image_width, <variable>.image_height,
	str	r2, [r5, #20]	@ Dat.990,
	bl	dprint_vfmw	@
	ldrb	r8, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r8, #3	@ <variable>.PicCodingType,
	beq	.L85	@,
.L68:
	mov	r8, #0	@ tmp494,
	mov	r0, #4	@,
	mov	r2, r8	@, tmp494
	str	r8, [r5, #32]	@ tmp494,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, tmp494
	str	r8, [r5, #36]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, tmp494
	str	r8, [r5, #40]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	bl	dprint_vfmw	@
	mov	r2, r8	@, tmp494
	str	r8, [r5, #44]	@ tmp494,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	movw	r1, #14588	@ tmp502,
	ldr	r9, [r4, r1]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	bic	r2, r9, #15	@ Dat.1045, <variable>.DispFramePhyAddr,
	str	r2, [r5, #48]	@ Dat.1045,
	bl	dprint_vfmw	@
	ldr	ip, [r4, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC23	@,
	bic	r2, ip, #15	@ Dat.1049, <variable>.FwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC23	@,
	str	r2, [r5, #52]	@ Dat.1049,
	add	r9, r5, #72	@ pReg.1070, pMsgBlock,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #220]	@ <variable>.BwdRefPicPhyAddr, <variable>.BwdRefPicPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC24	@,
	bic	r2, r2, #15	@ Dat.1053, <variable>.BwdRefPicPhyAddr,
	movt	r1, #:upper16:.LC24	@,
	str	r2, [r5, #56]	@ Dat.1053,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC25	@,
	bic	r2, r3, #15	@ Dat.1057, <variable>.CurPmvPhyAddr,
	movt	r1, #:upper16:.LC25	@,
	str	r2, [r5, #60]	@ Dat.1057,
	bl	dprint_vfmw	@
	ldr	sl, [r4, #228]	@ <variable>.BwdPmvPhyAddr, <variable>.BwdPmvPhyAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC26	@,
	bic	r2, sl, #15	@ Dat.1061, <variable>.BwdPmvPhyAddr,
	movt	r1, #:upper16:.LC26	@,
	str	r2, [r5, #64]	@ Dat.1061,
	bl	dprint_vfmw	@
	movw	r0, #1140	@ tmp516,
	mla	sl, r0, r7, r6	@ tmp517, tmp516, VdhId, tmp869
	movw	r1, #:lower16:.LC27	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC27	@,
	ldr	ip, [sl, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r2, ip, #15	@ Dat.1065, <variable>.SedTopAddr,
	str	r2, [r5, #68]	@ Dat.1065,
	bl	dprint_vfmw	@
	ldr	r2, [sl, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC28	@,
	bic	r2, r2, #15	@ Dat.1069, <variable>.PmvTopAddr,
	movt	r1, #:upper16:.LC28	@,
	str	r2, [r5, #72]	@ Dat.1069,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	strb	r8, [r4, #157]	@ tmp494, <variable>.FF_BUG_QPEL_FILED
	cmp	r3, #3	@ <variable>.PicCodingType,
	beq	.L86	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r2, r1	@ prephitmp.897, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
.L77:
	ldrb	r3, [r4, #156]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA2, <variable>.FF_BUG_QPEL_CHROMA2
	and	ip, r1, #1	@ tmp544, <variable>.FF_BUG_EDGE_EXTEND,
	ldrb	r0, [r4, #155]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA, <variable>.FF_BUG_QPEL_CHROMA
	and	lr, r2, #1	@ tmp551, prephitmp.897,
	and	r3, r3, #1	@ tmp541, <variable>.FF_BUG_QPEL_CHROMA2,
	mov	r1, ip, asl #2	@ tmp545, tmp544,
	and	ip, r0, #1	@ tmp548, <variable>.FF_BUG_QPEL_CHROMA,
	mov	r0, #4	@,
	orr	r3, r1, r3, asl #1	@, tmp546, tmp545, tmp541,
	movw	r1, #:lower16:.LC29	@,
	orr	r3, r3, ip	@ tmp549, tmp546, tmp548
	movt	r1, #:upper16:.LC29	@,
	orr	r8, r3, r8	@ tmp550, tmp549, prephitmp.899
	orr	r2, r8, lr, asl #3	@, Dat.1074, tmp550, tmp551,
	str	r2, [r9, #4]	@ Dat.1074,
	bl	dprint_vfmw	@
	movw	r1, #14628	@ tmp554,
	ldr	r3, [r4, r1]	@ D.31518, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r2, r3	@, D.31518
	str	r3, [r5, #80]	@ D.31518,
	bl	dprint_vfmw	@
	movw	r2, #14632	@ tmp556,
	ldr	ip, [r4, r2]	@ D.31520, <variable>.dU
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	mov	r2, ip	@, D.31520
	str	ip, [r5, #84]	@ D.31520,
	bl	dprint_vfmw	@
	movw	r0, #14636	@ tmp558,
	ldr	r3, [r4, r0]	@ D.31522, <variable>.dV
	movw	r1, #:lower16:.LC32	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC32	@,
	mov	r2, r3	@, D.31522
	str	r3, [r5, #88]	@ D.31522,
	bl	dprint_vfmw	@
	movw	r1, #14640	@ tmp560,
	ldr	ip, [r4, r1]	@ D.31524, <variable>.dV
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	mov	r2, ip	@, D.31524
	str	ip, [r5, #92]	@ D.31524,
	bl	dprint_vfmw	@
	movw	r2, #14644	@ tmp562,
	ldr	r3, [r4, r2]	@ temp.1091, <variable>.Uo
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	mov	r2, r3	@, temp.1091
	str	r3, [r5, #96]	@ temp.1091,
	bl	dprint_vfmw	@
	movw	r0, #14648	@ tmp564,
	ldr	ip, [r4, r0]	@ temp.1095, <variable>.Vo
	movw	r1, #:lower16:.LC35	@,
	mov	r0, #4	@,
	movt	r1, #:upper16:.LC35	@,
	mov	r2, ip	@, temp.1095
	str	ip, [r5, #100]	@ temp.1095,
	bl	dprint_vfmw	@
	movw	r1, #14652	@ tmp566,
	ldr	r3, [r4, r1]	@ D.31528, <variable>.Uco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	mov	r2, r3	@, D.31528
	str	r3, [r5, #104]	@ D.31528,
	bl	dprint_vfmw	@
	mov	ip, #14656	@ tmp568,
	ldr	r2, [r4, ip]	@ D.31530, <variable>.Vco
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC37	@,
	movt	r1, #:upper16:.LC37	@,
	str	r2, [r5, #108]	@ D.31530,
	bl	dprint_vfmw	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r2, #2	@ <variable>.IsShortHeader,
	beq	.L87	@,
.L78:
	movw	r1, #1140	@ tmp863,
	mov	r0, #4	@,
	mla	r6, r1, r7, r6	@ tmp864, tmp863, VdhId, tmp869
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r2, r2, #256	@ D.31538, <variable>.MsgSlotAddr,
	str	r2, [r5, #252]	@ D.31538,
	bl	dprint_vfmw	@
	mov	r0, #0	@ D.31310,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L83:
	mov	r8, #4	@ tmp331,
	mov	sl, r5	@ pReg.950, pMsgBlock
	str	r8, [sl], #4	@ tmp331,
	mov	r2, r8	@, tmp331
	mov	r0, r8	@, tmp331
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #4]	@ zero_extendqisi2	@ <variable>.GobMbNum, <variable>.GobMbNum
	ldrb	r1, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	mov	r0, r8	@, tmp331
	ldrb	r3, [r4, #5]	@ zero_extendqisi2	@ <variable>.VopGobNum, <variable>.VopGobNum
	and	r2, ip, #127	@ tmp337, <variable>.GobMbNum,
	and	ip, r1, #31	@ tmp334, <variable>.VopQuant,
	movw	r1, #:lower16:.LC11	@,
	sub	r3, r3, #1	@ tmp341, <variable>.VopGobNum,
	mov	r2, r2, asl #5	@ tmp338, tmp337,
	orr	r2, r2, ip, asl #26	@, tmp339, tmp338, tmp334,
	and	ip, r3, #31	@ tmp342, tmp341,
	orr	r2, r2, ip	@ Dat.949, tmp339, tmp342
	movt	r1, #:upper16:.LC11	@,
	str	r2, [r5, #4]	@ Dat.949,
	bl	dprint_vfmw	@
	ldrb	r1, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	and	ip, r9, #15	@ tmp344, prephitmp.895,
	mov	r0, r8	@, tmp331
	and	r3, r1, #3	@ tmp347, <variable>.PicCodingType,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r8, r3, asl #5	@ tmp348, tmp347,
	orr	r2, r8, ip, asl #22	@, Dat.952, tmp348, tmp344,
	str	r2, [sl, #4]	@ Dat.952,
	bl	dprint_vfmw	@
	b	.L65	@
.L87:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	cmp	r2, #0	@ <variable>.PicQuantType,
	beq	.L78	@,
	ldrb	ip, [r4, #56]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #24	@,
	ldrb	r8, [r4, #40]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	ldrb	r3, [r4, #24]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	movw	r1, #:lower16:.LC38	@,
	mov	lr, ip, asl #16	@ tmp575, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #72]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, lr, r8, asl #8	@, tmp576, tmp575, <variable>.IntraQuantTab,
	movt	r1, #:upper16:.LC38	@,
	orr	r3, lr, r3	@ tmp578, tmp576, <variable>.IntraQuantTab
	orr	r3, r3, ip, asl r2	@, temp.1164, tmp578, <variable>.IntraQuantTab,
	str	r3, [r5, #112]	@ temp.1164,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #64]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #48]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #32]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp584, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp585, tmp584, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp587, tmp585, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1182, tmp587, <variable>.IntraQuantTab,
	str	r3, [r5, #116]	@ temp.1182,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #57]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #41]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #25]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp593, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #73]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp594, tmp593, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp596, tmp594, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1200, tmp596, <variable>.IntraQuantTab,
	str	r3, [r5, #120]	@ temp.1200,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #65]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #49]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #33]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp602, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp603, tmp602, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp605, tmp603, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1218, tmp605, <variable>.IntraQuantTab,
	str	r3, [r5, #124]	@ temp.1218,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #58]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #42]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #26]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp611, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #74]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp612, tmp611, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp614, tmp612, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1236, tmp614, <variable>.IntraQuantTab,
	str	r3, [r5, #128]	@ temp.1236,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #50]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #34]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp620, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp621, tmp620, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp623, tmp621, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1254, tmp623, <variable>.IntraQuantTab,
	str	r3, [r5, #132]	@ temp.1254,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #59]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #43]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #27]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp629, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #75]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp630, tmp629, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp632, tmp630, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1272, tmp632, <variable>.IntraQuantTab,
	str	r3, [r5, #136]	@ temp.1272,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #67]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #51]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp638, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp639, tmp638, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp641, tmp639, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1290, tmp641, <variable>.IntraQuantTab,
	str	r3, [r5, #140]	@ temp.1290,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #60]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #44]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #28]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp647, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #76]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp648, tmp647, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp650, tmp648, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1308, tmp650, <variable>.IntraQuantTab,
	str	r3, [r5, #144]	@ temp.1308,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #68]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #52]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #36]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp656, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp657, tmp656, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp659, tmp657, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1326, tmp659, <variable>.IntraQuantTab,
	str	r3, [r5, #148]	@ temp.1326,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #61]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #45]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #29]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp665, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #77]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp666, tmp665, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp668, tmp666, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1344, tmp668, <variable>.IntraQuantTab,
	str	r3, [r5, #152]	@ temp.1344,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #69]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #53]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #37]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp674, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp675, tmp674, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp677, tmp675, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1362, tmp677, <variable>.IntraQuantTab,
	str	r3, [r5, #156]	@ temp.1362,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #62]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #46]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #30]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp683, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #78]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp684, tmp683, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp686, tmp684, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1380, tmp686, <variable>.IntraQuantTab,
	str	r3, [r5, #160]	@ temp.1380,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #70]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #54]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #38]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp692, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp693, tmp692, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp695, tmp693, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1398, tmp695, <variable>.IntraQuantTab,
	str	r3, [r5, #164]	@ temp.1398,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #63]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #47]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #31]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp701, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #79]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp702, tmp701, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp704, tmp702, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1130, tmp704, <variable>.IntraQuantTab,
	str	r3, [r5, #168]	@ temp.1130,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #71]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	lr, [r4, #55]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp710, <variable>.IntraQuantTab,
	ldrb	ip, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp711, tmp710, <variable>.IntraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp713, tmp711, <variable>.IntraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, D.31863, tmp713, <variable>.IntraQuantTab,
	str	r3, [r5, #172]	@ D.31863,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #120]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #104]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #88]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp719, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #136]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp720, tmp719, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp722, tmp720, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1416, tmp722, <variable>.NonintraQuantTab,
	str	r3, [r5, #176]	@ temp.1416,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #128]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #112]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #24	@,
	ldrb	r3, [r4, #96]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp728, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #144]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp729, tmp728, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp731, tmp729, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl r2	@, temp.1434, tmp731, <variable>.NonintraQuantTab,
	str	r3, [r5, #180]	@ temp.1434,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #121]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #105]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #89]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp737, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #137]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp738, tmp737, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp740, tmp738, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1452, tmp740, <variable>.NonintraQuantTab,
	str	r3, [r5, #184]	@ temp.1452,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #129]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #113]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #32	@,
	ldrb	r3, [r4, #97]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp746, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #145]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp747, tmp746, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp749, tmp747, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1470, tmp749, <variable>.NonintraQuantTab,
	str	r3, [r5, #188]	@ temp.1470,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #122]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #106]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #90]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp755, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #138]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp756, tmp755, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp758, tmp756, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1488, tmp758, <variable>.NonintraQuantTab,
	str	r3, [r5, #192]	@ temp.1488,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #130]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #114]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #40	@,
	ldrb	r3, [r4, #98]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp764, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #146]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp765, tmp764, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp767, tmp765, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1506, tmp767, <variable>.NonintraQuantTab,
	str	r3, [r5, #196]	@ temp.1506,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #123]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #107]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #91]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp773, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #139]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp774, tmp773, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp776, tmp774, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1524, tmp776, <variable>.NonintraQuantTab,
	str	r3, [r5, #200]	@ temp.1524,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #131]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #115]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #48	@,
	ldrb	r3, [r4, #99]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp782, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #147]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp783, tmp782, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp785, tmp783, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1542, tmp785, <variable>.NonintraQuantTab,
	str	r3, [r5, #204]	@ temp.1542,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #124]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #108]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #92]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp791, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #140]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp792, tmp791, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp794, tmp792, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1560, tmp794, <variable>.NonintraQuantTab,
	str	r3, [r5, #208]	@ temp.1560,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #132]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #116]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #56	@,
	ldrb	r3, [r4, #100]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp800, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #148]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp801, tmp800, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp803, tmp801, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1578, tmp803, <variable>.NonintraQuantTab,
	str	r3, [r5, #212]	@ temp.1578,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #125]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #109]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #93]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp809, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #141]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp810, tmp809, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp812, tmp810, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1596, tmp812, <variable>.NonintraQuantTab,
	str	r3, [r5, #216]	@ temp.1596,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #133]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #117]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #64	@,
	ldrb	r3, [r4, #101]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp818, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #149]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp819, tmp818, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp821, tmp819, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1614, tmp821, <variable>.NonintraQuantTab,
	str	r3, [r5, #220]	@ temp.1614,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #126]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #110]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #94]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp827, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #142]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp828, tmp827, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp830, tmp828, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1632, tmp830, <variable>.NonintraQuantTab,
	str	r3, [r5, #224]	@ temp.1632,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #134]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #118]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #72	@,
	ldrb	r3, [r4, #102]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp836, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #150]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp837, tmp836, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp839, tmp837, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1650, tmp839, <variable>.NonintraQuantTab,
	str	r3, [r5, #228]	@ temp.1650,
	bl	dprint_vfmw	@
	ldrb	ip, [r4, #127]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #111]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r2, #80	@,
	ldrb	r3, [r4, #95]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	mov	r0, #4	@,
	mov	r1, ip, asl #16	@ tmp845, <variable>.NonintraQuantTab,
	ldrb	ip, [r4, #143]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	lr, r1, lr, asl #8	@, tmp846, tmp845, <variable>.NonintraQuantTab,
	movw	r1, #:lower16:.LC38	@,
	orr	r3, lr, r3	@ tmp848, tmp846, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	orr	r3, r3, ip, asl #24	@, temp.1148, tmp848, <variable>.NonintraQuantTab,
	str	r3, [r5, #232]	@ temp.1148,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #135]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	r0, [r4, #119]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	movw	r1, #:lower16:.LC38	@,
	ldrb	ip, [r4, #151]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	movt	r1, #:upper16:.LC38	@,
	mov	r2, r3, asl #16	@ tmp854, <variable>.NonintraQuantTab,
	ldrb	r3, [r4, #103]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r2, r2, r0, asl #8	@, tmp855, tmp854, <variable>.NonintraQuantTab,
	mov	r0, #4	@,
	orr	r3, r2, r3	@ tmp857, tmp855, <variable>.NonintraQuantTab
	mov	r2, #80	@,
	orr	r3, r3, ip, asl #24	@, D.31907, tmp857, <variable>.NonintraQuantTab,
	str	r3, [r5, #236]	@ D.31907,
	bl	dprint_vfmw	@
	b	.L78	@
.L86:
	movw	r0, #14620	@ tmp532,
	ldr	lr, [r4, r0]	@ prephitmp.924, <variable>.sprite_warping_points
	cmp	lr, #1	@ prephitmp.924,
	streqb	lr, [r4, #152]	@ prephitmp.924, <variable>.FF_BUG_EDGE_FIND_POINT
	beq	.L81	@,
	bls	.L81	@,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	strb	r1, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
	mov	r2, r1	@ prephitmp.897, <variable>.FF_BUG_EDGE_EXTEND
	b	.L77	@
.L85:
	movw	r2, #14620	@ tmp439,
	ldr	r3, [r4, r2]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	cmp	r3, #1	@ <variable>.sprite_warping_points,
	bne	.L68	@,
	ldrb	r8, [r4, #154]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r8, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L88	@,
	movw	ip, #14644	@ tmp464,
	ldrb	r8, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r0, [r4, ip]	@ <variable>.Uo, <variable>.Uo
	mov	r1, r0, asl r8	@ D.31448, <variable>.Uo,
	cmp	r1, #0	@ D.31448,
	ble	.L70	@,
	movw	r9, #14624	@ tmp467,
	ldr	sl, [r4, r9]	@ D.31451, <variable>.sprite_warping_accuracy
	mov	r3, r3, asl sl	@ tmp468, <variable>.sprite_warping_points,
	add	lr, r1, r3, asr #1	@, tmp471, D.31448, tmp468,
	mov	r2, lr, asr sl	@ Dat, tmp471,
.L71:
	str	r2, [r5, #24]	@ Dat,
	movw	sl, #14648	@ tmp479,
	mov	r0, #4	@,
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r8, #1	@ tmp490,
	bl	dprint_vfmw	@
	ldr	ip, [r4, sl]	@ <variable>.Vo, <variable>.Vo
	ldrb	r1, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r2, #14624	@ tmp482,
	ldr	sl, [r4, r2]	@ temp.1026, <variable>.sprite_warping_accuracy
	mov	r9, ip, asl r1	@ D.31460, <variable>.Vo,
	movw	r1, #:lower16:.LC17	@,
	mov	r0, r8, asl sl	@ tmp489, tmp490,
	cmp	r9, #0	@ D.31460,
	suble	r9, r9, #1	@ tmp488, D.31460,
	movt	r1, #:upper16:.LC17	@,
	add	r3, r9, r0, asr #1	@, tmp492, tmp488, tmp489,
	mov	r0, #4	@,
	mov	r2, r3, asr sl	@ Dat.948, tmp492,
	str	r2, [r5, #28]	@ Dat.948,
	bl	dprint_vfmw	@
	b	.L68	@
.L84:
	ldr	sl, [r4, #204]	@ <variable>.Trb, <variable>.Trb
	movw	r1, #:lower16:.LC13	@,
	ldr	ip, [r4, #208]	@ <variable>.Trd, <variable>.Trd
	movt	r1, #:upper16:.LC13	@,
	mov	r0, #4	@,
	mov	r9, sl, asl #17	@ tmp420, <variable>.Trb,
	mov	lr, ip, asl #17	@ tmp421, <variable>.Trd,
	orr	r2, lr, r9, lsr #16	@, Dat.979, tmp421, tmp420,
	str	r2, [r8, #4]	@ Dat.979,
	bl	dprint_vfmw	@
	b	.L65	@
.L81:
	ldrb	r3, [r4, #157]	@ zero_extendqisi2	@ pretmp.1121, <variable>.FF_BUG_QPEL_FILED
	ldrb	r2, [r4, #152]	@ zero_extendqisi2	@ prephitmp.897, <variable>.FF_BUG_EDGE_FIND_POINT
	and	r8, r3, #1	@ tmp536, pretmp.1121,
	ldrb	r1, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r8, r8, asl #4	@ prephitmp.899, tmp536,
	b	.L77	@
.L70:
	movw	ip, #14624	@ tmp472,
	sub	r1, r1, #1	@ tmp473, D.31448,
	ldr	r2, [r4, ip]	@ temp.1014, <variable>.sprite_warping_accuracy
	mov	r8, r3, asl r2	@ tmp474, <variable>.sprite_warping_points,
	add	r0, r1, r8, asr #1	@, tmp477, tmp473, tmp474,
	mov	r2, r0, asr r2	@ Dat, tmp477,
	b	.L71	@
.L88:
	movw	sl, #14624	@ tmp443,
	ldrb	r9, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r1, [r4, sl]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	movw	r2, #14644	@ tmp442,
	ldr	r0, [r4, r2]	@, <variable>.Uo
	rsb	lr, r9, r1	@ tmp445, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r8, asl lr	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	mov	r2, r0	@, tmp451
	str	r0, [r5, #24]	@ tmp451,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	ldrb	r3, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r9, [r4, sl]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	movw	ip, #14648	@ tmp453,
	ldr	r0, [r4, ip]	@, <variable>.Vo
	rsb	r1, r3, r9	@ tmp456, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r8, asl r1	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	mov	r2, r0	@, tmp462
	str	r0, [r5, #28]	@ tmp462,
	mov	r0, #4	@,
	bl	dprint_vfmw	@
	b	.L68	@
.L82:
	movw	r1, #:lower16:.LC9	@,
	movw	r2, #358	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31310,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	MP4HAL_V200R004_CfgDnMsg, .-MP4HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP4HAL_V200R004_CfgReg
	.type	MP4HAL_V200R004_CfgReg, %function
MP4HAL_V200R004_CfgReg:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r6, r1, #0	@ VdhId, VdhId
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	bgt	.L121	@,
	movw	r3, #14572	@ tmp179,
	ldr	ip, [r0, r3]	@ D.31096, <variable>.SlcNum
	cmp	ip, #0	@ D.31096,
	beq	.L92	@,
	ldr	r3, [r0, #252]	@ temp.1736, <variable>.phy_address
	sub	r1, ip, #1	@ tmp380, D.31096,
	and	r1, r1, #1	@ tmp382, tmp380,
	mvn	r7, #0	@ stream_base_addr.1739,
	cmp	r3, #0	@ temp.1736,
	beq	.L107	@,
	ldr	r0, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	bne	.L122	@,
.L107:
	ldr	r3, [r4, #256]	@ D.31940, <variable>.phy_address
	cmp	r3, #0	@ D.31940,
	beq	.L109	@,
	ldr	lr, [r4, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	bne	.L123	@,
.L109:
	mov	r3, #1	@ i,
	cmp	ip, r3	@ D.31096, i
	bls	.L106	@,
	cmp	r1, #0	@ tmp382,
	beq	.L93	@,
	add	r0, r4, #28	@ tmp414, pMp4DecParam,
	ldr	r1, [r0, #252]	@ temp.1736, <variable>.phy_address
	cmp	r1, #0	@ temp.1736,
	beq	.L110	@,
	ldr	lr, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	bne	.L124	@,
.L110:
	rsb	r0, r3, #8	@ tmp420, i,
	add	r0, r4, r0, asl #2	@, tmp422, pMp4DecParam, tmp420,
	ldr	r1, [r0, #256]	@ D.31940, <variable>.phy_address
	cmp	r1, #0	@ D.31940,
	beq	.L116	@,
	ldr	lr, [r0, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	bne	.L125	@,
.L116:
	add	r3, r3, #1	@ i, tmp383,
	cmp	ip, r3	@ D.31096, i
	bls	.L106	@,
.L93:
	mov	r1, r3, asl #3	@ tmp394, i,
	rsb	r0, r3, r1	@ tmp395, i, tmp394
	add	r0, r4, r0, asl #2	@, tmp397, pMp4DecParam, tmp395,
	ldr	lr, [r0, #252]	@ temp.1736, <variable>.phy_address
	cmp	lr, #0	@ temp.1736,
	beq	.L96	@,
	ldr	r0, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L96	@,
	bic	lr, lr, #15	@ tmp204, temp.1736,
	cmp	r7, lr	@ stream_base_addr.1739, tmp204
	movcs	r7, lr	@ stream_base_addr.1739, tmp204
.L96:
	rsb	r1, r3, r1	@ tmp208, i, tmp394
	add	r1, r4, r1, asl #2	@, tmp210, pMp4DecParam, tmp208,
	ldr	r0, [r1, #256]	@ D.31940, <variable>.phy_address
	cmp	r0, #0	@ D.31940,
	beq	.L94	@,
	ldr	lr, [r1, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L94	@,
	bic	r0, r0, #15	@ tmp188, D.31940,
	cmp	r7, r0	@ stream_base_addr.1739, tmp188
	movcs	r7, r0	@ stream_base_addr.1739, tmp188
.L94:
	add	r3, r3, #1	@ tmp383, i,
	mov	r1, r3, asl #3	@ tmp387, tmp383,
	rsb	lr, r3, r1	@ tmp388, tmp383, tmp387
	add	r0, r4, lr, asl #2	@, tmp390, pMp4DecParam, tmp388,
	ldr	lr, [r0, #252]	@ temp.1736, <variable>.phy_address
	cmp	lr, #0	@ temp.1736,
	beq	.L114	@,
	ldr	r0, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	beq	.L114	@,
	bic	lr, lr, #15	@ tmp430, temp.1736,
	cmp	r7, lr	@ stream_base_addr.1739, tmp430
	movcs	r7, lr	@ stream_base_addr.1739, tmp430
.L114:
	rsb	r1, r3, r1	@ tmp431, tmp383, tmp387
	add	r1, r4, r1, asl #2	@, tmp433, pMp4DecParam, tmp431,
	ldr	r0, [r1, #256]	@ D.31940, <variable>.phy_address
	cmp	r0, #0	@ D.31940,
	beq	.L116	@,
	ldr	lr, [r1, #248]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L116	@,
	bic	r0, r0, #15	@ tmp438, D.31940,
	add	r3, r3, #1	@ i, tmp383,
	cmp	r7, r0	@ stream_base_addr.1739, tmp438
	movcs	r7, r0	@ stream_base_addr.1739, tmp438
	cmp	ip, r3	@ D.31096, i
	bhi	.L93	@,
.L106:
	cmn	r7, #1	@ stream_base_addr.1739,
	beq	.L92	@,
	str	r7, [r2, #0]	@ stream_base_addr.1739,* pBaseAddr
	movw	r8, #1140	@ tmp222,
	ldrh	r1, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r5, #:lower16:g_HwMem	@ tmp378,
	ldrh	r9, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r5, #:upper16:g_HwMem	@ tmp378,
	mul	r8, r8, r6	@ tmp221, tmp222, VdhId
	mov	r0, #3	@,
	mul	lr, r9, r1	@ tmp215, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	add	r9, r8, r5	@ tmp223, tmp221, tmp378
	sub	ip, lr, #1	@ tmp216, tmp215,
	ldr	lr, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	r2, ip, #-16777216	@ tmp217, tmp216,
	bic	r3, r2, #15728640	@ tmp217, tmp217,
	orr	sl, r3, #1107296256	@ D32.1686, tmp217,
	orr	r2, sl, #4194304	@ D32.1686, D32.1686,
	str	r2, [lr, #8]	@ D32.1686,
	bl	dprint_vfmw	@
	movw	r1, #14600	@ tmp226,
	ldr	ip, [r4, r1]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	r0, #14660	@ tmp232,
	ldr	r2, [r4, r0]	@ <variable>.Compress_en, <variable>.Compress_en
	movw	r1, #:lower16:.LC42	@,
	ldr	sl, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	movt	r1, #:upper16:.LC42	@,
	mov	r3, ip, lsr #6	@ tmp227, <variable>.VahbStride,
	and	r2, r2, #1	@ tmp233, <variable>.Compress_en,
	mov	r0, #3	@,
	mov	ip, r3, asl #4	@ tmp229, tmp227,
	orr	r3, ip, #536870914	@ tmp230, tmp229,
	orr	ip, r3, #114688	@ tmp230, tmp230,
	orr	r2, ip, r2, asl #30	@, D32.1687, tmp230, tmp233,
	str	r2, [sl, #12]	@ D32.1687,
	bl	dprint_vfmw	@
	ldr	ip, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r9, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC43	@,
	bic	r2, r3, #15	@ D32.1690, <variable>.MsgSlotAddr,
	str	r2, [ip, #16]	@ D32.1690,
	bl	dprint_vfmw	@
	ldr	sl, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [r9, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	bic	r2, r2, #15	@ D32.1693, <variable>.MsgSlotAddr,
	str	r2, [sl, #20]	@ D32.1693,
	bl	dprint_vfmw	@
	ldr	r9, [r8, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r7	@, stream_base_addr.1739
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	str	r7, [r9, #24]	@ stream_base_addr.1739,
	bl	dprint_vfmw	@
	ldrh	r7, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r7, #120	@ <variable>.PicWidthInMb,
	movls	r7, #65536	@ D32,
	movhi	r7, #0	@ D32,
	cmp	r6, #0	@ VdhId,
	bne	.L101	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	cmp	r7, #0	@ D32,
	mov	r1, r0	@ D.31140,
	biceq	r1, r0, #65536	@ datTmp, D.31140,
	movw	r0, #:lower16:s_RegPhyBaseAddr	@ tmp276,
	movt	r0, #:upper16:s_RegPhyBaseAddr	@ tmp276,
	orrne	r1, r1, #65536	@ datTmp, D.31140,
	ldr	r7, [r0, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	add	r0, r7, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L101:
	movw	r9, #1140	@ tmp281,
	movw	r3, #:lower16:3148803	@ tmp284,
	mul	r6, r9, r6	@ tmp280, tmp281, VdhId
	movt	r3, #:upper16:3148803	@ tmp284,
	movw	r8, #14600	@ tmp328,
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	mov	r7, #0	@ tmp351,
	add	r9, r6, r5	@ tmp282, tmp280, tmp378
	ldr	sl, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sl, #60]	@ tmp284,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #64]	@ tmp284,
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #68]	@ tmp284,
	ldr	lr, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [lr, #72]	@ tmp284,
	ldr	sl, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [sl, #76]	@ tmp284,
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [ip, #80]	@ tmp284,
	ldr	r2, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r3, [r2, #84]	@ tmp284,
	ldr	sl, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	lr, [r4, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	r2, lr, #15	@ D32.1715, <variable>.CurPicPhyAddr,
	str	r2, [sl, #96]	@ D32.1715,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r8]	@ D32.1720, <variable>.VahbStride
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	ldrh	sl, [r4, #166]	@ height_in_mb, <variable>.PicHeightInMb
	movw	r1, #:lower16:.LC47	@,
	mov	r2, r3	@, D32.1720
	movt	r1, #:upper16:.LC47	@,
	str	r3, [ip, #100]	@ D32.1720,
	bl	dprint_vfmw	@
	ldr	r2, [r4, r8]	@ <variable>.VahbStride, <variable>.VahbStride
	add	ip, sl, #1	@ tmp338, height_in_mb,
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC48	@,
	mov	ip, ip, lsr #1	@ tmp339, tmp338,
	mov	r2, r2, asl #1	@ tmp336, <variable>.VahbStride,
	movt	r1, #:upper16:.LC48	@,
	mul	r2, ip, r2	@ D32.1724, tmp339, tmp336
	str	r2, [r3, #104]	@ D32.1724,
	bl	dprint_vfmw	@
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, r7	@, tmp351
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	str	r7, [ip, #108]	@ tmp351,
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r3, #152]	@ tmp351,
	bl	dprint_vfmw	@
	ldr	r3, [r9, #1120]	@ D32.1731, <variable>.DnrMbInfoAddr
	ldr	ip, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, #3	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	mov	r2, r3	@, D32.1731
	str	r3, [ip, #144]	@ D32.1731,
	bl	dprint_vfmw	@
	ldr	r3, [r6, r5]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r2, #0	@ tmp376,
	mov	r0, r7	@ D.31094, tmp351
	str	r2, [r3, #32]	@ tmp376,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L125:
	bic	r1, r1, #15	@ tmp427, D.31940,
	cmp	r7, r1	@ stream_base_addr.1739, tmp427
	movcs	r7, r1	@ stream_base_addr.1739, tmp427
	b	.L116	@
.L124:
	bic	r1, r1, #15	@ tmp419, temp.1736,
	cmp	r7, r1	@ stream_base_addr.1739, tmp419
	movcs	r7, r1	@ stream_base_addr.1739, tmp419
	b	.L110	@
.L123:
	bic	r0, r3, #15	@ tmp410, D.31940,
	cmp	r7, r0	@ stream_base_addr.1739, tmp410
	movcs	r7, r0	@ stream_base_addr.1739, tmp410
	b	.L109	@
.L122:
	bic	r3, r3, #15	@ tmp402, temp.1736,
	cmp	r7, r3	@ stream_base_addr.1739, tmp402
	movcs	r7, r3	@ stream_base_addr.1739, tmp402
	b	.L107	@
.L121:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC0	@,
	mov	r2, #156	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31094,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L92:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC40	@,
	mvn	r2, #0	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31094,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	MP4HAL_V200R004_CfgReg, .-MP4HAL_V200R004_CfgReg
	.align	2
	.global	MP4HAL_V200R004_StartDec
	.type	MP4HAL_V200R004_StartDec, %function
MP4HAL_V200R004_StartDec:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldrh	r3, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, #0	@ tmp140,
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r5, r1	@ VdhId, VdhId
	str	r6, [sp, #4]	@ tmp140, StreamBaseAddr
	bhi	.L134	@,
	ldrh	r2, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	r2, #512	@ <variable>.PicHeightInMb,
	bhi	.L135	@,
	add	r2, sp, #4	@,,
	bl	MP4HAL_V200R004_CfgReg	@
	subs	r7, r0, #0	@ ret,
	bne	.L136	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	bl	MP4HAL_V200R004_CfgDnMsg	@
	subs	r6, r0, #0	@ ret.1764,
	bne	.L137	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	ldr	r2, [sp, #4]	@, StreamBaseAddr
	bl	MP4HAL_V200R004_WriteSlicMsg	@
	cmp	r0, #0	@ ret.1765
	bne	.L138	@,
.L128:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L135:
	mov	r0, r6	@, tmp140
	movw	r1, #:lower16:.LC51	@,
	mov	r2, #88	@,
	movt	r1, #:upper16:.LC51	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31036,
	b	.L128	@
.L136:
	mov	r0, r6	@, tmp140
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31036,
	b	.L128	@
.L137:
	mov	r0, r7	@, ret
	movw	r1, #:lower16:.LC54	@,
	movt	r1, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31036,
	b	.L128	@
.L134:
	mov	r0, r6	@, tmp140
	movw	r1, #:lower16:.LC51	@,
	mov	r2, #87	@,
	movt	r1, #:upper16:.LC51	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31036,
	b	.L128	@
.L138:
	mov	r0, r6	@, ret.1764
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31036,
	b	.L128	@
	.fnend
	.size	MP4HAL_V200R004_StartDec, .-MP4HAL_V200R004_StartDec
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line: %d\012\000"
	.space	2
.LC1:
	.ascii	"D0 = %#x \012\000"
	.space	1
.LC2:
	.ascii	"D1 = %#x \012\000"
	.space	1
.LC3:
	.ascii	"D2 = %#x \012\000"
	.space	1
.LC4:
	.ascii	"D3 = %#x \012\000"
	.space	1
.LC5:
	.ascii	"D4 = %#x \012\000"
	.space	1
.LC6:
	.ascii	"D5 = %#x \012\000"
	.space	1
.LC7:
	.ascii	"D6 = %#x \012\000"
	.space	1
.LC8:
	.ascii	"D7 = %#x \012\000"
	.space	1
.LC9:
	.ascii	"line: %d ,pMsgBlock = NULL is not expected value!\012"
	.ascii	"\000"
	.space	1
.LC10:
	.ascii	"D0=0x%x\012\000"
	.space	3
.LC11:
	.ascii	"D1=0x%x\012\000"
	.space	3
.LC12:
	.ascii	"D2=0x%x\012\000"
	.space	3
.LC13:
	.ascii	"D3=0x%x\012\000"
	.space	3
.LC14:
	.ascii	"D4=0x%x\012\000"
	.space	3
.LC15:
	.ascii	"D5=0x%x\012\000"
	.space	3
.LC16:
	.ascii	"D6=0x%x\012\000"
	.space	3
.LC17:
	.ascii	"D7=0x%x\012\000"
	.space	3
.LC18:
	.ascii	"D8=0x%x\012\000"
	.space	3
.LC19:
	.ascii	"D9=0x%x\012\000"
	.space	3
.LC20:
	.ascii	"D10=0x%x\012\000"
	.space	2
.LC21:
	.ascii	"D11=0x%x\012\000"
	.space	2
.LC22:
	.ascii	"D12= 0x%x\012\000"
	.space	1
.LC23:
	.ascii	"D13= 0x%x\012\000"
	.space	1
.LC24:
	.ascii	"D14= 0x%x\012\000"
	.space	1
.LC25:
	.ascii	"D15= 0x%x\012\000"
	.space	1
.LC26:
	.ascii	"D16= 0x%x\012\000"
	.space	1
.LC27:
	.ascii	"D17= 0x%x\012\000"
	.space	1
.LC28:
	.ascii	"D18= 0x%x\012\000"
	.space	1
.LC29:
	.ascii	"D19= 0x%x\012\000"
	.space	1
.LC30:
	.ascii	"D20= 0x%x\012\000"
	.space	1
.LC31:
	.ascii	"D21= 0x%x\012\000"
	.space	1
.LC32:
	.ascii	"D22= 0x%x\012\000"
	.space	1
.LC33:
	.ascii	"D23= 0x%x\012\000"
	.space	1
.LC34:
	.ascii	"D24= 0x%x\012\000"
	.space	1
.LC35:
	.ascii	"D25= 0x%x\012\000"
	.space	1
.LC36:
	.ascii	"D26= 0x%x\012\000"
	.space	1
.LC37:
	.ascii	"D27= 0x%x\012\000"
	.space	1
.LC38:
	.ascii	"D%d= 0x%x\012\000"
	.space	1
.LC39:
	.ascii	"D63= 0x%x\012\000"
	.space	1
.LC40:
	.ascii	"stream_base_addr = %#x\012\000"
.LC41:
	.ascii	"BASIC_V200R004_CFG0=0x%x\012\000"
	.space	2
.LC42:
	.ascii	"BASIC_V200R004_CFG1=0x%x\012\000"
	.space	2
.LC43:
	.ascii	"AVM_V200R004_ADDR=0x%x\012\000"
.LC44:
	.ascii	"VAM_V200R004_ADDR=0x%x\012\000"
.LC45:
	.ascii	"STREAM_V200R004_BASE_ADDR=0x%x\012\000"
.LC46:
	.ascii	"YSTADDR_V200R003_1D=0x%x\012\000"
	.space	2
.LC47:
	.ascii	"YSTRIDE_V200R003_1D=0x%x\012\000"
	.space	2
.LC48:
	.ascii	"UVOFFSET_V200R003_1D=0x%x\012\000"
	.space	1
.LC49:
	.ascii	"PRCMEM2_1D_CNT=0x%x\012\000"
	.space	3
.LC50:
	.ascii	"DNR_MBINFO_STADDR=0x%x\012\000"
.LC51:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC52:
	.ascii	"picture width out of range\000"
	.space	1
.LC53:
	.ascii	"MP4HAL_V200R003_CfgReg failed!\012\000"
.LC54:
	.ascii	"MP4HAL_V200R003_CfgDnMsg failed!\012\000"
	.space	2
.LC55:
	.ascii	"MP4HAL_V200R003_WriteSlicMsg failed!\012\000"
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
