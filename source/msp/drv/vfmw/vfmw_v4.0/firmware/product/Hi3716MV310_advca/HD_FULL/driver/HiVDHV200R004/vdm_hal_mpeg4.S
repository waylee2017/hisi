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
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/common/drv/include
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca/osal/linux_kernel
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/home/f00136911/v1r4/615/work/source/kernel/linux-3.18.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix
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
@ -DCHIP_TYPE_hi3716mv310 -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050
@ -DHI_LOG_SUPPORT=0 -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT
@ -DHI_ADVCA_SUPPORT -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal_mpeg4)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.vdm_hal_mpeg4.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal_mpeg4.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fno-pic -fverbose-asm
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
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
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
.LFB1913:
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
	sxth	r0, r3	@ prephitmp.552, n
	bx	lr	@
	.fnend
	.size	MP4HAL_V200R004_Log2bin, .-MP4HAL_V200R004_Log2bin
	.align	2
	.global	MP4HAL_V200R004_WriteSlicMsg
	.type	MP4HAL_V200R004_WriteSlicMsg, %function
MP4HAL_V200R004_WriteSlicMsg:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:g_HwMem	@ tmp239,
	movt	r5, #:upper16:g_HwMem	@ tmp239,
	movw	r6, #1140	@ tmp242,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mla	sl, r6, r1, r5	@ tmp243, tmp242, VdhId, tmp239
	str	r2, [sp, #16]	@ StreamBaseAddr, %sfp
	movw	r2, #14572	@ tmp238,
	mov	r6, #0	@ tmp237,
	ldr	r5, [r0, r2]	@ D.34341, <variable>.SlcNum
	str	r6, [sp, #36]	@ tmp237, D32
	ldr	r0, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r3, r0, #256	@, <variable>.MsgSlotAddr,
	str	r3, [sp, #20]	@, %sfp
	mov	r0, r3	@,
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ SlcDnMsgVirAddr,
	beq	.L33	@,
	ldr	r1, [r4, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r1, #0	@ <variable>.mb_start_num,
	streq	r1, [sp, #24]	@ <variable>.mb_start_num, %sfp
	bne	.L34	@,
.L12:
	cmp	r5, #0	@ D.34341,
	ble	.L15	@,
	ldr	r7, [sp, #24]	@, %sfp
	mov	r6, #0	@ i,
	ldr	r2, [r4, #260]	@ prephitmp.599, <variable>.mb_start_num
	ldr	r8, [r4, #232]	@ prephitmp.691, <variable>.mb_start_num
	mov	r0, r7, asl #2	@,,
	add	r7, sp, #36	@ tmp524,,
	str	r0, [sp, #28]	@, %sfp
	b	.L24	@
.L16:
	add	r6, r6, #1	@ i, i,
	cmp	r5, r6	@ D.34341, i
	ble	.L15	@,
.L36:
	sub	r1, r6, #1	@ tmp513, i,
	rsb	r2, r6, r6, asl #3	@, tmp509, i, i,
	rsb	r3, r1, r1, asl #3	@, tmp517, tmp513, tmp513,
	add	r8, r4, r2, asl #2	@, tmp511, pMp4DecParam, tmp509,
	add	r0, r4, r3, asl #2	@, tmp519, pMp4DecParam, tmp517,
	ldr	r2, [r8, #260]	@ prephitmp.599, <variable>.mb_start_num
	ldr	r8, [r0, #260]	@ prephitmp.691, <variable>.mb_start_num
.L24:
	cmp	r6, #0	@ i,
	movle	lr, #0	@,
	movgt	lr, #1	@,
	cmp	r2, r8	@ prephitmp.599, prephitmp.691
	movhi	lr, #0	@,,
	cmp	lr, #0	@ tmp310,
	mov	r8, lr	@ tmp310,
	bne	.L16	@,
	mov	fp, r6, asl #3	@, i,
	ldr	r3, [sp, #28]	@, %sfp
	rsb	r9, r6, fp	@ tmp315, i,
	str	fp, [sp, #12]	@, %sfp
	add	fp, r6, r3	@ D.34457, i,
	str	lr, [sp, #36]	@ tmp310, D32
	add	r9, r4, r9, asl #2	@, tmp317, pMp4DecParam, tmp315,
	ldr	r2, [r7, #0]	@ tmp336,
	mov	lr, fp, asl #5	@, D.34457,
	str	lr, [sp, #8]	@, %sfp
	ldr	lr, [r9, #252]	@ temp.635, <variable>.phy_address
	ldr	ip, [r9, #244]	@ <variable>.bit_len, <variable>.bit_len
	ldrb	r1, [r9, #242]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	and	r0, lr, #15	@ tmp319, temp.635,
	bfi	r2, ip, #0, #24	@ tmp336, <variable>.bit_len,,
	add	r3, r1, r0, asl #3	@, bit_offset_0.643, <variable>.bit_offset, tmp319,
	bfi	r2, r3, #24, #7	@ tmp338, bit_offset_0.643,,
	str	r2, [r7, #0]	@ tmp338,
	str	r2, [sl, fp, asl #5]	@ D32.648,* SlcDnMsgVirAddr
	str	lr, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #4]	@,
	mov	r0, fp, asl #3	@ tmp344, D.34457,
	ldr	r1, [sp, #16]	@, %sfp
	bic	ip, r2, #15	@ tmp341, temp.635,
	mov	r2, r8	@ tmp343, tmp310
	rsb	r3, r1, ip	@ tmp342,, tmp341
	add	r1, r0, #1	@ tmp345, tmp344,
	bfi	r2, r3, #0, #24	@ tmp343, tmp342,,
	str	r2, [r7, #0]	@ tmp343,
	str	r2, [sl, r1, asl #2]	@ D32.654,* SlcDnMsgVirAddr
	bl	vfmw_dprint_nothing	@
	str	r8, [sp, #36]	@ tmp310, D32
	ldr	r3, [r9, #256]	@ temp.655, <variable>.phy_address
	mov	ip, fp, asl #2	@ tmp375, D.34457,
	ldrb	r1, [r9, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	add	ip, ip, #1	@ tmp376, tmp375,
	ldr	lr, [r9, #248]	@ <variable>.bit_len, <variable>.bit_len
	and	r0, r3, #15	@ tmp355, temp.655,
	ldr	r2, [r7, #0]	@ tmp372,
	mov	fp, fp, asl #1	@ tmp450, D.34457,
	add	fp, fp, #1	@ tmp451, tmp450,
	bfi	r2, lr, #0, #24	@ tmp372, <variable>.bit_len,,
	add	lr, r1, r0, asl #3	@, bit_offset_1.663, <variable>.bit_offset, tmp355,
	bfi	r2, lr, #24, #7	@ tmp374, bit_offset_1.663,,
	str	r2, [r7, #0]	@ tmp374,
	str	r2, [sl, ip, asl #3]	@ D32.668,* SlcDnMsgVirAddr
	str	r3, [sp, #4]	@,
	bl	vfmw_dprint_nothing	@
	str	r8, [sp, #36]	@ tmp310, D32
	ldr	r3, [r9, #256]	@ <variable>.phy_address, <variable>.phy_address
	ldr	r9, [sp, #4]	@,
	cmp	r3, #0	@ <variable>.phy_address,
	bicne	r9, r9, #15	@ tmp388, temp.655,
	ldrne	r3, [r7, #0]	@ tmp390,
	ldrne	r1, [sp, #16]	@, %sfp
	ldreq	r9, [r7, #0]	@ tmp392,
	bfieq	r9, r3, #0, #24	@ tmp392, <variable>.phy_address,,
	streq	r9, [r7, #0]	@ tmp392,
	rsbne	r9, r1, r9	@ tmp389,, tmp388
	bfine	r3, r9, #0, #24	@ tmp390, tmp389,,
	strne	r3, [r7, #0]	@ tmp390,
	ldr	r8, [sp, #8]	@, %sfp
	ldr	r0, [sp, #36]	@ D32.676, D32
	add	ip, r8, #12	@ tmp393,,
	add	r8, r6, #1	@ j, i,
	str	r0, [sl, ip]	@ D32.676,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [sp, #12]	@, %sfp
	mov	r3, #0	@,
	str	r3, [sp, #36]	@, D32
	rsb	r9, r6, r2	@ tmp398, i,
	mov	r2, r3	@ tmp402,
	mov	r6, r9, asl #2	@ tmp399, tmp398,
	add	r9, r6, r4	@ tmp400, tmp399, pMp4DecParam
	add	r3, r9, #232	@ tmp401, tmp400,
	ldrb	r1, [r3, #9]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	bfi	r2, r1, #0, #5	@ tmp402, <variable>.vop_quant,,
	str	r2, [r7, #0]	@ tmp402,
	ldrb	ip, [r3, #8]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	bfi	r2, ip, #5, #2	@ tmp413, <variable>.vop_coding_type,,
	str	r2, [r7, #0]	@ tmp413,
	ldrb	r0, [r3, #7]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	bfi	r2, r0, #7, #3	@ tmp424, <variable>.intra_dc_vlc_thr,,
	str	r2, [r7, #0]	@ tmp424,
	ldrb	r1, [r3, #5]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	r2, r1, #10, #3	@ tmp435, <variable>.vop_fcode_forward,,
	str	r2, [r7, #0]	@ tmp435,
	ldrb	ip, [r3, #6]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	r2, ip, #13, #3	@ tmp446, <variable>.vop_fcode_backward,,
	str	r2, [r7, #0]	@ tmp446,
	str	r2, [sl, fp, asl #4]	@ D32.689,* SlcDnMsgVirAddr
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, #0	@,
	str	r0, [sp, #36]	@, D32
	add	r2, r1, #20	@ tmp464,,
	ldr	r3, [r9, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	mov	ip, #0	@ tmp462,
	bfi	ip, r3, #0, #20	@ tmp462, <variable>.mb_start_num,,
	str	ip, [r7, #0]	@ tmp462,
	str	ip, [sl, r2]	@ D32.693,
	bl	vfmw_dprint_nothing	@
	cmp	r5, r8	@ D.34341, j
	ble	.L19	@,
	rsb	ip, r8, r8, asl #3	@, tmp475, j, j,
	ldr	r2, [r9, #260]	@ temp.702, <variable>.mb_start_num
	add	r0, r4, ip, asl #2	@, tmp477, pMp4DecParam, tmp475,
	ldr	r1, [r0, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	cmp	r1, r2	@ <variable>.mb_start_num, temp.702
	bhi	.L19	@,
	mvn	r9, r8	@ tmp527, j
	add	lr, r9, r5	@ tmp526, tmp527, D.34341
	add	r6, r6, #232	@ tmp484, tmp399,
	tst	lr, #1	@ tmp526,
	add	r6, r4, r6	@ tmp485, pMp4DecParam, tmp484
	add	r3, r6, #4	@ ivtmp.617, tmp485,
	beq	.L20	@,
	ldr	r9, [r3, #80]	@ temp.694, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	add	r3, r6, #32	@ ivtmp.617, tmp485,
	cmp	r9, r2	@ temp.694, temp.702
	bls	.L20	@,
	b	.L19	@
.L21:
	ldr	r0, [r3, #80]	@ temp.694, <variable>.mb_start_num
	add	r3, r3, #56	@ ivtmp.617, ivtmp.617,
	cmp	r0, r2	@ temp.694, temp.702
	bhi	.L19	@,
	ldr	ip, [r1, #80]	@ temp.694, <variable>.mb_start_num
	add	r8, r8, #1	@ j, j,
	cmp	ip, r2	@ temp.694, temp.702
	bhi	.L19	@,
.L20:
	add	r8, r8, #1	@ j, j,
	add	r1, r3, #28	@ tmp529, ivtmp.617,
	cmp	r5, r8	@ D.34341, j
	bgt	.L21	@,
.L19:
	cmp	r8, r5	@ j, D.34341
	beq	.L35	@,
	rsb	r9, r8, r8, asl #3	@, tmp492, j, j,
	ldr	r2, [sp, #24]	@, %sfp
	ldr	r0, [sp, #20]	@, %sfp
	add	r6, r4, r9, asl #2	@, tmp494, pMp4DecParam, tmp492,
	add	lr, r8, r2	@ tmp497, j,
	ldr	ip, [r6, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	add	r9, r0, lr, asl #5	@, prephitmp.597,, tmp497,
	sub	r2, ip, #1	@ slice_end_mbn, <variable>.mb_start_num,
.L23:
	ldr	r6, [sp, #8]	@, %sfp
	mov	lr, #0	@ tmp501,
	bfi	lr, r2, #0, #20	@ tmp501, slice_end_mbn,,
	str	lr, [r7, #0]	@ tmp501,
	add	ip, r6, #24	@ tmp502,,
	sub	r6, r8, #1	@ i, j,
	add	r6, r6, #1	@ i, i,
	str	lr, [sl, ip]	@ D32.700,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [sp, #8]	@, %sfp
	str	r9, [r7, #0]	@ prephitmp.597, <variable>.next_slice_para_addr
	add	r3, r1, #28	@ tmp505,,
	str	r9, [sl, r3]	@ D32.704,
	bl	vfmw_dprint_nothing	@
	cmp	r5, r6	@ D.34341, i
	bgt	.L36	@,
.L15:
	mov	r0, #0	@ D.34349,
.L10:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L35:
	ldrh	r3, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r9, #0	@ prephitmp.597,
	ldrh	r1, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	mul	r2, r1, r3	@ tmp488, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	sub	r2, r2, #1	@ slice_end_mbn, tmp488,
	b	.L23	@
.L34:
	ldr	r7, [r4, #252]	@ D.34356, <variable>.phy_address
	mov	lr, #0	@ tmp252,
	ldrb	r3, [r4, #242]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	and	r1, r7, #15	@ tmp248, D.34356,
	add	ip, r3, r1, asl #3	@, bit_offset_0, <variable>.bit_offset, tmp248,
	bfi	lr, ip, #24, #7	@ tmp252, bit_offset_0,,
	str	lr, [sp, #36]	@ tmp252,
	str	lr, [sl, #0]	@ tmp252,* SlcDnMsgVirAddr
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sp, #16]	@, %sfp
	bic	r2, r7, #15	@ tmp255, D.34356,
	mov	r7, r6	@ tmp257, tmp237
	rsb	r3, r0, r2	@ tmp256,, tmp255
	bfi	r7, r3, #0, #24	@ tmp257, tmp256,,
	str	r7, [sp, #36]	@ tmp257,
	str	r7, [sl, #4]	@ tmp257,
	bl	vfmw_dprint_nothing	@
	ldr	r7, [r4, #256]	@ D.34382, <variable>.phy_address
	ldrb	ip, [r4, #243]	@ zero_extendqisi2	@ <variable>.bit_offset, <variable>.bit_offset
	mov	r3, #0	@ tmp263,
	and	r1, r7, #15	@ tmp259, D.34382,
	add	r2, ip, r1, asl #3	@, bit_offset_1, <variable>.bit_offset, tmp259,
	bfi	r3, r2, #24, #7	@ tmp263, bit_offset_1,,
	str	r3, [sp, #36]	@ tmp263,
	str	r3, [sl, #8]	@ tmp263,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #256]	@ <variable>.phy_address, <variable>.phy_address
	cmp	r0, #0	@ <variable>.phy_address,
	bicne	r0, r7, #15	@ tmp267, D.34382,
	streq	r0, [sp, #36]	@ <variable>.phy_address,
	ldrne	r1, [sp, #16]	@, %sfp
	rsbne	r0, r1, r0	@ tmp268,, tmp267
	mov	r1, #1	@,
	bfine	r6, r0, #0, #24	@ tmp269, tmp268,,
	strne	r6, [sp, #36]	@ tmp269,
	ldr	ip, [sp, #36]	@ D32.625, D32
	mov	r6, #0	@ tmp272,
	str	r1, [sp, #24]	@, %sfp
	str	ip, [sl, #12]	@ D32.625,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #241]	@ zero_extendqisi2	@ <variable>.vop_quant, <variable>.vop_quant
	ldrb	r2, [r4, #240]	@ zero_extendqisi2	@ <variable>.vop_coding_type, <variable>.vop_coding_type
	ldrb	r0, [r4, #239]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	ip, r3, #31	@ tmp277, <variable>.vop_quant,
	ldrb	r1, [r4, #237]	@ zero_extendqisi2	@ <variable>.vop_fcode_forward, <variable>.vop_fcode_forward
	bfi	ip, r2, #5, #2	@ tmp277, <variable>.vop_coding_type,,
	bfi	ip, r0, #7, #3	@ tmp281, <variable>.intra_dc_vlc_thr,,
	ldrb	r2, [r4, #238]	@ zero_extendqisi2	@ <variable>.vop_fcode_backward, <variable>.vop_fcode_backward
	bfi	ip, r1, #10, #3	@ tmp285, <variable>.vop_fcode_forward,,
	bfi	ip, r2, #13, #3	@ tmp289, <variable>.vop_fcode_backward,,
	str	ip, [sp, #36]	@ tmp289,
	str	ip, [sl, #16]	@ tmp289,
	bl	vfmw_dprint_nothing	@
	mov	r1, r6	@ tmp295, tmp272
	bfi	r1, r6, #0, #20	@ tmp295, tmp272,,
	str	r1, [sp, #36]	@ tmp295,
	str	r1, [sl, #20]	@ tmp295,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #260]	@ <variable>.mb_start_num, <variable>.mb_start_num
	sub	r0, r2, #1	@ tmp298, <variable>.mb_start_num,
	bfi	r6, r0, #0, #20	@ tmp300, tmp298,,
	str	r6, [sp, #36]	@ tmp300,
	str	r6, [sl, #24]	@ tmp300,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #20]	@, %sfp
	add	ip, r3, #32	@ tmp303,,
	str	ip, [sp, #36]	@ tmp303, <variable>.next_slice_para_addr
	str	ip, [sl, #28]	@ tmp303,
	bl	vfmw_dprint_nothing	@
	b	.L12	@
.L33:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34349,
	b	.L10	@
	.fnend
	.size	MP4HAL_V200R004_WriteSlicMsg, .-MP4HAL_V200R004_WriteSlicMsg
	.global	__aeabi_idiv
	.align	2
	.global	MP4HAL_V200R004_CfgDnMsg
	.type	MP4HAL_V200R004_CfgDnMsg, %function
MP4HAL_V200R004_CfgDnMsg:
	.fnstart
.LFB1916:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrh	r8, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	ldrh	r3, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r7, r1	@ VdhId, VdhId
	mul	r3, r8, r3	@ MbCnt, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	cmp	r3, #0	@ MbCnt,
	moveq	r8, r3	@ prephitmp.844, MbCnt
	beq	.L39	@,
	mov	r8, #0	@ n,
.L40:
	add	r8, r8, #1	@ tmp332, n,
	movs	r3, r3, lsr #1	@ MbCnt, MbCnt,
	uxth	r8, r8	@ n, tmp332
	bne	.L40	@,
	sxth	r8, r8	@ prephitmp.844, n
.L39:
	movw	r6, #:lower16:g_HwMem	@ tmp845,
	movt	r6, #:upper16:g_HwMem	@ tmp845,
	movw	r0, #1140	@ tmp336,
	mla	r1, r0, r7, r6	@ tmp337, tmp336, VdhId, tmp845
	ldr	r0, [r1, #44]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ D.34094,
	beq	.L61	@,
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r2, #1	@ <variable>.IsShortHeader,
	beq	.L62	@,
	mov	sl, r5	@ pReg.890, D.34094
	mov	r9, #0	@ tmp357,
	str	r9, [sl], #4	@ tmp357,
	bl	vfmw_dprint_nothing	@
	ldrb	fp, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	ldrb	r1, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	and	r2, fp, #31	@ tmp359, <variable>.VopQuant,
	movw	fp, #14620	@ tmp373,
	mov	r0, r1, asl #31	@ tmp362, <variable>.PicQuantType,
	orr	r3, r0, r2, asl #26	@, Dat.892, tmp362, tmp359,
	str	r3, [r5, #4]	@ Dat.892,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ prephitmp.860, <variable>.PicCodingType
	movw	ip, #14616	@ tmp368,
	movw	r1, #14624	@ tmp377,
	cmp	r3, #2	@ prephitmp.860,
	ldr	r0, [r4, ip]	@ <variable>.sprite_enable, <variable>.sprite_enable
	streqb	r9, [r4, #12]	@ tmp357, <variable>.vop_rounding_type
	moveq	r2, r9	@ prephitmp.858, tmp357
	ldrb	r9, [r4, #15]	@ zero_extendqisi2	@ <variable>.Interlaced, <variable>.Interlaced
	ldr	ip, [r4, fp]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	and	lr, r0, #3	@ tmp369, <variable>.sprite_enable,
	ldr	fp, [r4, r1]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	and	r1, r9, #1	@ tmp367, <variable>.Interlaced,
	ldrb	r9, [r4, #14]	@ zero_extendqisi2	@ <variable>.top_field_first, <variable>.top_field_first
	orr	r0, r1, lr, asl #26	@, tmp372, tmp367, tmp369,
	and	fp, fp, #3	@ tmp378, <variable>.sprite_warping_accuracy,
	ldrb	lr, [r4, #13]	@ zero_extendqisi2	@ <variable>.alternate_vertical_scan, <variable>.alternate_vertical_scan
	orr	ip, r0, ip, asl #30	@, tmp376, tmp372, <variable>.sprite_warping_points,
	and	r1, r9, #1	@ tmp383, <variable>.top_field_first,
	ldrb	r0, [r4, #10]	@ zero_extendqisi2	@ <variable>.resync_marker_disable, <variable>.resync_marker_disable
	orr	ip, ip, fp, asl #28	@, tmp381, tmp376, tmp378,
	ldrb	r9, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	and	lr, lr, #1	@ tmp387, <variable>.alternate_vertical_scan,
	orr	r1, ip, r1, asl #1	@, tmp385, tmp381, tmp383,
	ldrb	ip, [r4, #9]	@ zero_extendqisi2	@ <variable>.intra_dc_vlc_thr, <variable>.intra_dc_vlc_thr
	and	r9, r9, #1	@ tmp391, <variable>.QuarterSample,
	orr	r1, r1, lr, asl #2	@, tmp389, tmp385, tmp387,
	mov	r0, r0, asl #7	@ tmp395, <variable>.resync_marker_disable,
	ldrb	lr, [r4, #7]	@ zero_extendqisi2	@ <variable>.FwdFcode, <variable>.FwdFcode
	orr	r9, r1, r9, asl #4	@, tmp393, tmp389, tmp391,
	and	r0, r0, #255	@ tmp396, tmp395,
	ldrb	r1, [r4, #8]	@ zero_extendqisi2	@ <variable>.BwdFcode, <variable>.BwdFcode
	and	ip, ip, #7	@ tmp399, <variable>.intra_dc_vlc_thr,
	orr	r9, r9, r0	@ tmp397, tmp393, tmp396
	and	lr, lr, #7	@ tmp403, <variable>.FwdFcode,
	ldrb	r0, [r4, #6]	@ zero_extendqisi2	@ <variable>.BitsOfVopTimeIncr, <variable>.BitsOfVopTimeIncr
	orr	ip, r9, ip, asl #8	@, tmp401, tmp397, tmp399,
	ldrneb	r2, [r4, #12]	@ zero_extendqisi2	@ pretmp.857, <variable>.vop_rounding_type
	and	r9, r1, #7	@ tmp407, <variable>.BwdFcode,
	orr	ip, ip, lr, asl #11	@, tmp405, tmp401, tmp403,
	and	r0, r0, #31	@ tmp411, <variable>.BitsOfVopTimeIncr,
	orr	lr, ip, r9, asl #14	@, tmp409, tmp405, tmp407,
	and	r9, r8, #15	@ tmp414, prephitmp.844,
	orr	r1, lr, r0, asl #17	@, tmp413, tmp409, tmp411,
	and	ip, r3, #3	@ tmp418, prephitmp.860,
	orr	lr, r1, r9, asl #22	@, tmp416, tmp413, tmp414,
	add	r9, sl, #4	@ pReg.900, pReg.890,
	andne	r2, r2, #1	@ tmp363, pretmp.857,
	movne	r2, r2, asl #3	@ prephitmp.858, tmp363,
	orr	r1, lr, r2	@ tmp417, tmp416, prephitmp.858
	orr	r0, r1, ip, asl #5	@, Dat.902, tmp417, tmp418,
	str	r0, [sl, #4]	@ Dat.902,
	bl	vfmw_dprint_nothing	@
	ldrb	r8, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r8, #2	@ <variable>.PicCodingType,
	beq	.L63	@,
.L44:
	ldrh	r1, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movw	sl, #14608	@ tmp434,
	ldrh	r0, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r8, #14612	@ tmp437,
	sub	r3, r1, #1	@ tmp431, <variable>.PicWidthInMb,
	sub	r9, r0, #1	@ tmp428, <variable>.PicHeightInMb,
	uxth	ip, r3	@ tmp432, tmp431
	orr	lr, ip, r9, asl #16	@, Dat.913, tmp432, tmp428,
	str	lr, [r5, #16]	@ Dat.913,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, sl]	@ <variable>.image_height, <variable>.image_height
	ldr	r1, [r4, r8]	@ <variable>.image_width, <variable>.image_width
	orr	r0, r1, r2, asl #16	@, Dat.917, <variable>.image_width, <variable>.image_height,
	str	r0, [r5, #20]	@ Dat.917,
	bl	vfmw_dprint_nothing	@
	ldrb	r9, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	cmp	r9, #3	@ <variable>.PicCodingType,
	beq	.L64	@,
.L47:
	mov	r8, #0	@ tmp491,
	str	r8, [r5, #32]	@ tmp491,
	bl	vfmw_dprint_nothing	@
	str	r8, [r5, #36]	@ tmp491,
	bl	vfmw_dprint_nothing	@
	str	r8, [r5, #40]	@ tmp491,
	bl	vfmw_dprint_nothing	@
	movw	r9, #14588	@ tmp495,
	str	r8, [r5, #44]	@ tmp491,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r9]	@ <variable>.DispFramePhyAddr, <variable>.DispFramePhyAddr
	add	r9, r5, #72	@ pReg.991, D.34094,
	bic	r0, r2, #15	@ Dat.969, <variable>.DispFramePhyAddr,
	str	r0, [r5, #48]	@ Dat.969,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #216]	@ <variable>.FwdRefPicPhyAddr, <variable>.FwdRefPicPhyAddr
	bic	r3, r1, #15	@ Dat.973, <variable>.FwdRefPicPhyAddr,
	str	r3, [r5, #52]	@ Dat.973,
	bl	vfmw_dprint_nothing	@
	ldr	sl, [r4, #220]	@ <variable>.BwdRefPicPhyAddr, <variable>.BwdRefPicPhyAddr
	bic	ip, sl, #15	@ Dat.977, <variable>.BwdRefPicPhyAddr,
	movw	sl, #1140	@ tmp504,
	str	ip, [r5, #56]	@ Dat.977,
	bl	vfmw_dprint_nothing	@
	mla	sl, sl, r7, r6	@ tmp505, tmp504, VdhId, tmp845
	ldr	r2, [r4, #224]	@ <variable>.CurPmvPhyAddr, <variable>.CurPmvPhyAddr
	bic	r0, r2, #15	@ Dat.981, <variable>.CurPmvPhyAddr,
	str	r0, [r5, #60]	@ Dat.981,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #228]	@ <variable>.BwdPmvPhyAddr, <variable>.BwdPmvPhyAddr
	bic	r3, r1, #15	@ Dat.985, <variable>.BwdPmvPhyAddr,
	str	r3, [r5, #64]	@ Dat.985,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [sl, #1080]	@ <variable>.SedTopAddr, <variable>.SedTopAddr
	bic	r2, ip, #15	@ Dat.989, <variable>.SedTopAddr,
	str	r2, [r5, #68]	@ Dat.989,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sl, #1084]	@ <variable>.PmvTopAddr, <variable>.PmvTopAddr
	bic	r1, r0, #15	@ Dat.993, <variable>.PmvTopAddr,
	str	r1, [r5, #72]	@ Dat.993,
	bl	vfmw_dprint_nothing	@
	ldrb	r3, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	strb	r8, [r4, #157]	@ tmp491, <variable>.FF_BUG_QPEL_FILED
	cmp	r3, #3	@ <variable>.PicCodingType,
	beq	.L65	@,
	ldrb	r3, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r2, r3	@ prephitmp.846, <variable>.FF_BUG_EDGE_EXTEND
	strb	r3, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
.L56:
	ldrb	r1, [r4, #156]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA2, <variable>.FF_BUG_QPEL_CHROMA2
	and	r3, r3, #1	@ tmp530, <variable>.FF_BUG_EDGE_EXTEND,
	ldrb	ip, [r4, #155]	@ zero_extendqisi2	@ <variable>.FF_BUG_QPEL_CHROMA, <variable>.FF_BUG_QPEL_CHROMA
	and	r2, r2, #1	@ tmp537, prephitmp.846,
	and	r0, r1, #1	@ tmp527, <variable>.FF_BUG_QPEL_CHROMA2,
	mov	lr, r3, asl #2	@ tmp531, tmp530,
	and	r1, ip, #1	@ tmp534, <variable>.FF_BUG_QPEL_CHROMA,
	orr	r3, lr, r0, asl #1	@, tmp532, tmp531, tmp527,
	orr	ip, r3, r1	@ tmp535, tmp532, tmp534
	orr	lr, ip, r8	@ tmp536, tmp535, prephitmp.848
	orr	r8, lr, r2, asl #3	@, Dat.1000, tmp536, tmp537,
	str	r8, [r9, #4]	@ Dat.1000,
	bl	vfmw_dprint_nothing	@
	movw	r0, #14628	@ tmp539,
	ldr	r1, [r4, r0]	@ D.34287, <variable>.dU
	str	r1, [r5, #80]	@ D.34287,
	bl	vfmw_dprint_nothing	@
	movw	r3, #14632	@ tmp540,
	ldr	ip, [r4, r3]	@ D.34288, <variable>.dU
	str	ip, [r5, #84]	@ D.34288,
	bl	vfmw_dprint_nothing	@
	movw	r2, #14636	@ tmp541,
	ldr	r0, [r4, r2]	@ D.34289, <variable>.dV
	str	r0, [r5, #88]	@ D.34289,
	bl	vfmw_dprint_nothing	@
	movw	r1, #14640	@ tmp542,
	ldr	r3, [r4, r1]	@ D.34290, <variable>.dV
	str	r3, [r5, #92]	@ D.34290,
	bl	vfmw_dprint_nothing	@
	movw	ip, #14644	@ tmp543,
	ldr	r2, [r4, ip]	@ temp.1010, <variable>.Uo
	str	r2, [r5, #96]	@ temp.1010,
	bl	vfmw_dprint_nothing	@
	movw	r0, #14648	@ tmp544,
	ldr	r1, [r4, r0]	@ temp.1013, <variable>.Vo
	str	r1, [r5, #100]	@ temp.1013,
	bl	vfmw_dprint_nothing	@
	movw	r3, #14652	@ tmp545,
	ldr	ip, [r4, r3]	@ D.34291, <variable>.Uco
	str	ip, [r5, #104]	@ D.34291,
	bl	vfmw_dprint_nothing	@
	mov	r2, #14656	@ tmp546,
	ldr	r0, [r4, r2]	@ D.34292, <variable>.Vco
	str	r0, [r5, #108]	@ D.34292,
	bl	vfmw_dprint_nothing	@
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.IsShortHeader, <variable>.IsShortHeader
	cmp	r1, #2	@ <variable>.IsShortHeader,
	beq	.L66	@,
.L57:
	movw	ip, #1140	@ tmp840,
	mla	r6, ip, r7, r6	@ tmp841, tmp840, VdhId, tmp845
	ldr	r2, [r6, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	add	r3, r2, #256	@ D.34314, <variable>.MsgSlotAddr,
	str	r3, [r5, #252]	@ D.34314,
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.34097,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L62:
	mov	sl, r5	@ pReg.878, D.34094
	mov	lr, #4	@ tmp341,
	str	lr, [sl], #4	@ tmp341,
	bl	vfmw_dprint_nothing	@
	ldrb	r2, [r4, #4]	@ zero_extendqisi2	@ <variable>.GobMbNum, <variable>.GobMbNum
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ <variable>.VopQuant, <variable>.VopQuant
	ldrb	r9, [r4, #5]	@ zero_extendqisi2	@ <variable>.VopGobNum, <variable>.VopGobNum
	and	ip, r2, #127	@ tmp346, <variable>.GobMbNum,
	and	r1, r3, #31	@ tmp343, <variable>.VopQuant,
	mov	r0, ip, asl #5	@ tmp347, tmp346,
	sub	r3, r9, #1	@ tmp350, <variable>.VopGobNum,
	orr	r2, r0, r1, asl #26	@, tmp348, tmp347, tmp343,
	and	ip, r3, #31	@ tmp351, tmp350,
	orr	r9, r2, ip	@ Dat.511, tmp348, tmp351
	str	r9, [r5, #4]	@ Dat.511,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #0]	@ zero_extendqisi2	@ <variable>.PicCodingType, <variable>.PicCodingType
	and	ip, r8, #15	@ tmp352, prephitmp.844,
	and	r1, r0, #3	@ tmp355, <variable>.PicCodingType,
	mov	r3, r1, asl #5	@ tmp356, tmp355,
	orr	r9, r3, ip, asl #22	@, Dat.883, tmp356, tmp352,
	str	r9, [sl, #4]	@ Dat.883,
	bl	vfmw_dprint_nothing	@
	b	.L44	@
.L66:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2	@ <variable>.PicQuantType, <variable>.PicQuantType
	cmp	r2, #0	@ <variable>.PicQuantType,
	beq	.L57	@,
	ldrb	r0, [r4, #88]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	lr, [r4, #24]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #89]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	r2, [r4, #25]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	orr	ip, lr, r0, asl #8	@, tmp552, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	r3, ip, r1, asl #24	@, tmp555, tmp552, <variable>.NonintraQuantTab,
	orr	lr, r3, r2, asl #16	@, temp.1085, tmp555, <variable>.IntraQuantTab,
	str	lr, [r5, #112]	@ temp.1085,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #90]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #26]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #27]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #91]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp561, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp564, tmp561, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1170, tmp564, <variable>.NonintraQuantTab,
	str	r3, [r5, #116]	@ temp.1170,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #92]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #28]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #29]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #93]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp570, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp573, tmp570, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1186, tmp573, <variable>.NonintraQuantTab,
	str	r3, [r5, #120]	@ temp.1186,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #94]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #30]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #31]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #95]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp579, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp582, tmp579, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1202, tmp582, <variable>.NonintraQuantTab,
	str	r3, [r5, #124]	@ temp.1202,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #96]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #32]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #33]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #97]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp588, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp591, tmp588, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1218, tmp591, <variable>.NonintraQuantTab,
	str	r3, [r5, #128]	@ temp.1218,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #98]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #34]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #35]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #99]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp597, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp600, tmp597, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1234, tmp600, <variable>.NonintraQuantTab,
	str	r3, [r5, #132]	@ temp.1234,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #100]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #36]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #37]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #101]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp606, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp609, tmp606, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1250, tmp609, <variable>.NonintraQuantTab,
	str	r3, [r5, #136]	@ temp.1250,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #102]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #38]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #39]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #103]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp615, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp618, tmp615, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1266, tmp618, <variable>.NonintraQuantTab,
	str	r3, [r5, #140]	@ temp.1266,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #104]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #40]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #41]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #105]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp624, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp627, tmp624, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1282, tmp627, <variable>.NonintraQuantTab,
	str	r3, [r5, #144]	@ temp.1282,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #106]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #42]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #43]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #107]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp633, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp636, tmp633, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1298, tmp636, <variable>.NonintraQuantTab,
	str	r3, [r5, #148]	@ temp.1298,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #108]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #44]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #45]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #109]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp642, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp645, tmp642, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1314, tmp645, <variable>.NonintraQuantTab,
	str	r3, [r5, #152]	@ temp.1314,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #110]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #46]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #47]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #111]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp651, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp654, tmp651, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1330, tmp654, <variable>.NonintraQuantTab,
	str	r3, [r5, #156]	@ temp.1330,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #112]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #48]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #49]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #113]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp660, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp663, tmp660, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1346, tmp663, <variable>.NonintraQuantTab,
	str	r3, [r5, #160]	@ temp.1346,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #114]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #50]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #51]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #115]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp669, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp672, tmp669, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1362, tmp672, <variable>.NonintraQuantTab,
	str	r3, [r5, #164]	@ temp.1362,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #116]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #52]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #53]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #117]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp678, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp681, tmp678, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1378, tmp681, <variable>.NonintraQuantTab,
	str	r3, [r5, #168]	@ temp.1378,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #118]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #54]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #55]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #119]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp687, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp690, tmp687, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1394, tmp690, <variable>.NonintraQuantTab,
	str	r3, [r5, #172]	@ temp.1394,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #120]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #56]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #57]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #121]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp696, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp699, tmp696, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1410, tmp699, <variable>.NonintraQuantTab,
	str	r3, [r5, #176]	@ temp.1410,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #122]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #58]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #59]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #123]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp705, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp708, tmp705, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1426, tmp708, <variable>.NonintraQuantTab,
	str	r3, [r5, #180]	@ temp.1426,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #124]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #60]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #61]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #125]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp714, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp717, tmp714, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1442, tmp717, <variable>.NonintraQuantTab,
	str	r3, [r5, #184]	@ temp.1442,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #126]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #62]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #63]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #127]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp723, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp726, tmp723, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1458, tmp726, <variable>.NonintraQuantTab,
	str	r3, [r5, #188]	@ temp.1458,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #128]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #64]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #65]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #129]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp732, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp735, tmp732, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1474, tmp735, <variable>.NonintraQuantTab,
	str	r3, [r5, #192]	@ temp.1474,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #130]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #66]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #67]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #131]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp741, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp744, tmp741, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1490, tmp744, <variable>.NonintraQuantTab,
	str	r3, [r5, #196]	@ temp.1490,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #132]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #68]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #69]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #133]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp750, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp753, tmp750, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1506, tmp753, <variable>.NonintraQuantTab,
	str	r3, [r5, #200]	@ temp.1506,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #134]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #70]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #71]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #135]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp759, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp762, tmp759, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1522, tmp762, <variable>.NonintraQuantTab,
	str	r3, [r5, #204]	@ temp.1522,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #136]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #72]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #73]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #137]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp768, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp771, tmp768, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1047, tmp771, <variable>.NonintraQuantTab,
	str	r3, [r5, #208]	@ temp.1047,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #138]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #74]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #75]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #139]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp777, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp780, tmp777, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1064, tmp780, <variable>.NonintraQuantTab,
	str	r3, [r5, #212]	@ temp.1064,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #140]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #76]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #77]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #141]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp786, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp789, tmp786, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1082, tmp789, <variable>.NonintraQuantTab,
	str	r3, [r5, #216]	@ temp.1082,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #142]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #78]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #79]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #143]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp795, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp798, tmp795, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1103, tmp798, <variable>.NonintraQuantTab,
	str	r3, [r5, #220]	@ temp.1103,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #144]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #80]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #81]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #145]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp804, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp807, tmp804, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1123, tmp807, <variable>.NonintraQuantTab,
	str	r3, [r5, #224]	@ temp.1123,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #146]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #82]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #83]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #147]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp813, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp816, tmp813, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1144, tmp816, <variable>.NonintraQuantTab,
	str	r3, [r5, #228]	@ temp.1144,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #148]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #84]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #85]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #149]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp822, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp825, tmp822, <variable>.IntraQuantTab,
	orr	r3, ip, r2, asl #24	@, temp.1160, tmp825, <variable>.NonintraQuantTab,
	str	r3, [r5, #232]	@ temp.1160,
	bl	vfmw_dprint_nothing	@
	ldrb	r0, [r4, #150]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	ldrb	ip, [r4, #86]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r1, [r4, #87]	@ zero_extendqisi2	@ <variable>.IntraQuantTab, <variable>.IntraQuantTab
	ldrb	r2, [r4, #151]	@ zero_extendqisi2	@ <variable>.NonintraQuantTab, <variable>.NonintraQuantTab
	orr	r3, ip, r0, asl #8	@, tmp831, <variable>.IntraQuantTab, <variable>.NonintraQuantTab,
	orr	ip, r3, r1, asl #16	@, tmp834, tmp831, <variable>.IntraQuantTab,
	orr	r0, ip, r2, asl #24	@, D.34313, tmp834, <variable>.NonintraQuantTab,
	str	r0, [r5, #236]	@ D.34313,
	bl	vfmw_dprint_nothing	@
	b	.L57	@
.L65:
	movw	ip, #14620	@ tmp518,
	ldr	lr, [r4, ip]	@ prephitmp.854, <variable>.sprite_warping_points
	cmp	lr, #1	@ prephitmp.854,
	streqb	lr, [r4, #152]	@ prephitmp.854, <variable>.FF_BUG_EDGE_FIND_POINT
	beq	.L60	@,
	bls	.L60	@,
	ldrb	r3, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	strb	r3, [r4, #152]	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_FIND_POINT
	mov	r2, r3	@ prephitmp.846, <variable>.FF_BUG_EDGE_EXTEND
	b	.L56	@
.L64:
	movw	r2, #14620	@ tmp440,
	ldr	r3, [r4, r2]	@ <variable>.sprite_warping_points, <variable>.sprite_warping_points
	cmp	r3, #1	@ <variable>.sprite_warping_points,
	bne	.L47	@,
	ldrb	r8, [r4, #154]	@ zero_extendqisi2	@ <variable>.FF_BUG_DIVX500B413, <variable>.FF_BUG_DIVX500B413
	cmp	r8, #1	@ <variable>.FF_BUG_DIVX500B413,
	beq	.L67	@,
	movw	r9, #14644	@ tmp463,
	ldrb	r8, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r0, [r4, r9]	@ <variable>.Uo, <variable>.Uo
	mov	r2, r0, asl r8	@ D.34229, <variable>.Uo,
	cmp	r2, #0	@ D.34229,
	ble	.L49	@,
	movw	r1, #14624	@ tmp466,
	ldr	sl, [r4, r1]	@ D.34232, <variable>.sprite_warping_accuracy
	mov	r3, r3, asl sl	@ tmp467, <variable>.sprite_warping_points,
	add	lr, r2, r3, asr #1	@, tmp470, D.34229, tmp467,
	mov	r1, lr, asr sl	@ Dat, tmp470,
.L50:
	str	r1, [r5, #24]	@ Dat,
	bl	vfmw_dprint_nothing	@
	movw	ip, #14648	@ tmp477,
	ldr	sl, [r4, ip]	@ <variable>.Vo, <variable>.Vo
	movw	r2, #14624	@ tmp480,
	ldrb	r9, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	mov	r0, #1	@ tmp488,
	ldr	ip, [r4, r2]	@ temp.948, <variable>.sprite_warping_accuracy
	mov	r8, sl, asl r9	@ D.34241, <variable>.Vo,
	cmp	r8, #0	@ D.34241,
	mov	r1, r0, asl ip	@ tmp487, tmp488,
	suble	r8, r8, #1	@ tmp486, D.34241,
	add	r3, r8, r1, asr #1	@, tmp490, tmp486, tmp487,
	mov	sl, r3, asr ip	@ Dat.876, tmp490,
	str	sl, [r5, #28]	@ Dat.876,
	bl	vfmw_dprint_nothing	@
	b	.L47	@
.L63:
	ldr	r3, [r4, #204]	@ <variable>.Trb, <variable>.Trb
	ldr	ip, [r4, #208]	@ <variable>.Trd, <variable>.Trd
	mov	lr, r3, asl #17	@ tmp424, <variable>.Trb,
	mov	sl, ip, asl #17	@ tmp425, <variable>.Trd,
	orr	r8, sl, lr, lsr #16	@, Dat.907, tmp425, tmp424,
	str	r8, [r9, #4]	@ Dat.907,
	bl	vfmw_dprint_nothing	@
	b	.L44	@
.L60:
	ldrb	r3, [r4, #157]	@ zero_extendqisi2	@ pretmp.1036, <variable>.FF_BUG_QPEL_FILED
	ldrb	r2, [r4, #152]	@ zero_extendqisi2	@ prephitmp.846, <variable>.FF_BUG_EDGE_FIND_POINT
	and	r8, r3, #1	@ tmp522, pretmp.1036,
	ldrb	r3, [r4, #153]	@ zero_extendqisi2	@ <variable>.FF_BUG_EDGE_EXTEND, <variable>.FF_BUG_EDGE_EXTEND
	mov	r8, r8, asl #4	@ prephitmp.848, tmp522,
	b	.L56	@
.L49:
	movw	r9, #14624	@ tmp471,
	sub	r2, r2, #1	@ tmp472, D.34229,
	ldr	ip, [r4, r9]	@ temp.937, <variable>.sprite_warping_accuracy
	mov	r0, r3, asl ip	@ tmp473, <variable>.sprite_warping_points,
	add	r8, r2, r0, asr #1	@, tmp476, tmp472, tmp473,
	mov	r1, r8, asr ip	@ Dat, tmp476,
	b	.L50	@
.L67:
	movw	sl, #14624	@ tmp444,
	ldrb	ip, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	ldr	r1, [r4, sl]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	movw	r2, #14644	@ tmp443,
	ldr	r0, [r4, r2]	@, <variable>.Uo
	rsb	lr, ip, r1	@ tmp446, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r8, asl lr	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	str	r0, [r5, #24]	@ tmp452,
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r4, sl]	@ <variable>.sprite_warping_accuracy, <variable>.sprite_warping_accuracy
	ldrb	r9, [r4, #11]	@ zero_extendqisi2	@ <variable>.QuarterSample, <variable>.QuarterSample
	movw	r3, #14648	@ tmp453,
	ldr	r0, [r4, r3]	@, <variable>.Vo
	rsb	sl, r9, ip	@ tmp456, <variable>.QuarterSample, <variable>.sprite_warping_accuracy
	mov	r1, r8, asl sl	@, <variable>.FF_BUG_DIVX500B413,
	bl	__aeabi_idiv	@
	str	r0, [r5, #28]	@ tmp462,
	bl	vfmw_dprint_nothing	@
	b	.L47	@
.L61:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.34097,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	MP4HAL_V200R004_CfgDnMsg, .-MP4HAL_V200R004_CfgDnMsg
	.align	2
	.global	MP4HAL_V200R004_CfgReg
	.type	MP4HAL_V200R004_CfgReg, %function
MP4HAL_V200R004_CfgReg:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #14572	@ tmp182,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r3, [r0, r3]	@ D.33983, <variable>.SlcNum
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r5, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.33983,
	beq	.L87	@,
	ldr	r1, [r0, #252]	@ temp.1616, <variable>.phy_address
	sub	ip, r3, #1	@ tmp347, D.33983,
	and	ip, ip, #1	@ tmp349, tmp347,
	mvn	r7, #0	@ stream_base_addr,
	cmp	r1, #0	@ temp.1616,
	beq	.L90	@,
	ldr	r0, [r0, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	r0, #0	@ <variable>.bit_len,
	bne	.L111	@,
.L90:
	ldr	r1, [r4, #256]	@ D.33976, <variable>.phy_address
	cmp	r1, #0	@ D.33976,
	beq	.L92	@,
	ldr	r0, [r4, #248]	@ tmp361, <variable>.bit_len
	cmp	r0, #0	@ tmp361,
	bne	.L112	@,
.L92:
	mov	r0, #1	@ i,
	cmp	r0, r3	@ i, D.33983
	add	r1, r4, #28	@ ivtmp.1558, pMp4DecParam,
	beq	.L89	@,
	cmp	ip, #0	@ tmp349,
	beq	.L70	@,
	ldr	ip, [r1, #252]	@ temp.1616, <variable>.phy_address
	cmp	ip, #0	@ temp.1616,
	beq	.L97	@,
	b	.L102	@
.L70:
	ldr	ip, [r1, #252]	@ temp.1616, <variable>.phy_address
	cmp	ip, #0	@ temp.1616,
	beq	.L73	@,
	ldr	lr, [r1, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L73	@,
	bic	ip, ip, #15	@ tmp186, temp.1616,
	cmp	r7, ip	@ stream_base_addr, tmp186
	movcs	r7, ip	@ stream_base_addr, tmp186
.L73:
	ldr	ip, [r1, #256]	@ D.33976, <variable>.phy_address
	cmp	ip, #0	@ D.33976,
	beq	.L71	@,
	ldr	lr, [r1, #248]	@ tmp183, <variable>.bit_len
	cmp	lr, #0	@ tmp183,
	beq	.L71	@,
	bic	ip, ip, #15	@ tmp184, D.33976,
	cmp	r7, ip	@ stream_base_addr, tmp184
	movcs	r7, ip	@ stream_base_addr, tmp184
.L71:
	add	r1, r1, #28	@ tmp351, ivtmp.1558,
	add	r0, r0, #1	@ tmp350, i,
	ldr	ip, [r1, #252]	@ temp.1616, <variable>.phy_address
	cmp	ip, #0	@ temp.1616,
	beq	.L97	@,
.L102:
	ldr	lr, [r1, #244]	@ <variable>.bit_len, <variable>.bit_len
	cmp	lr, #0	@ <variable>.bit_len,
	beq	.L97	@,
	bic	ip, ip, #15	@ tmp370, temp.1616,
	cmp	r7, ip	@ stream_base_addr, tmp370
	movcs	r7, ip	@ stream_base_addr, tmp370
.L97:
	ldr	ip, [r1, #256]	@ D.33976, <variable>.phy_address
	cmp	ip, #0	@ D.33976,
	beq	.L99	@,
	ldr	lr, [r1, #248]	@ tmp372, <variable>.bit_len
	cmp	lr, #0	@ tmp372,
	beq	.L99	@,
	bic	ip, ip, #15	@ tmp373, D.33976,
	cmp	r7, ip	@ stream_base_addr, tmp373
	movcs	r7, ip	@ stream_base_addr, tmp373
.L99:
	add	r0, r0, #1	@ i, tmp350,
	add	r1, r1, #28	@ ivtmp.1558, tmp351,
	cmp	r0, r3	@ i, D.33983
	bne	.L70	@,
.L89:
	cmn	r7, #1	@ stream_base_addr,
	beq	.L87	@,
	str	r7, [r2, #0]	@ stream_base_addr,* pBaseAddr
	movw	r8, #1140	@ tmp196,
	ldrh	sl, [r4, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	movw	r6, #:lower16:g_HwMem	@ tmp346,
	ldrh	r0, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	movt	r6, #:upper16:g_HwMem	@ tmp346,
	mul	r8, r8, r5	@ tmp195, tmp196, VdhId
	mul	lr, r0, sl	@ tmp189, <variable>.PicWidthInMb, <variable>.PicHeightInMb
	add	sl, r8, r6	@ tmp197, tmp195, tmp346
	sub	r2, lr, #1	@ tmp190, tmp189,
	ldr	lr, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	bic	ip, r2, #-16777216	@ tmp191, tmp190,
	bic	r3, ip, #15728640	@ tmp191, tmp191,
	orr	r1, r3, #1107296256	@ D32.1563, tmp191,
	orr	r0, r1, #4194304	@ D32.1563, D32.1563,
	str	r0, [lr, #8]	@ D32.1563,
	bl	vfmw_dprint_nothing	@
	movw	r2, #14600	@ tmp199,
	ldr	r3, [r4, r2]	@ <variable>.VahbStride, <variable>.VahbStride
	movw	ip, #14660	@ tmp205,
	ldr	r1, [r4, ip]	@ <variable>.Compress_en, <variable>.Compress_en
	ldr	ip, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r0, r3, lsr #6	@ tmp200, <variable>.VahbStride,
	and	r1, r1, #1	@ tmp206, <variable>.Compress_en,
	mov	r3, r0, asl #4	@ tmp202, tmp200,
	orr	r2, r3, #536870914	@ tmp203, tmp202,
	orr	r0, r2, #114688	@ tmp203, tmp203,
	orr	r3, r0, r1, asl #30	@, D32.1564, tmp203, tmp206,
	str	r3, [ip, #12]	@ D32.1564,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r2, [sl, #44]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	ip, r2, #15	@ D32.1567, <variable>.MsgSlotAddr,
	str	ip, [r0, #16]	@ D32.1567,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [sl, #28]	@ <variable>.MsgSlotAddr, <variable>.MsgSlotAddr
	bic	r2, r3, #15	@ D32.1570, <variable>.MsgSlotAddr,
	str	r2, [r1, #20]	@ D32.1570,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r8, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r0, #24]	@ stream_base_addr,
	bl	vfmw_dprint_nothing	@
	ldrh	r7, [r4, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	cmp	r7, #120	@ <variable>.PicWidthInMb,
	movls	r7, #65536	@ D32,
	movhi	r7, #0	@ D32,
	cmp	r5, #0	@ VdhId,
	bne	.L113	@,
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r9, #:lower16:s_RegPhyBaseAddr	@ tmp245,
	movt	r9, #:upper16:s_RegPhyBaseAddr	@ tmp245,
	cmp	r7, #0	@ D32,
	ldr	r7, [r9, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, r0	@ D.34021,
	biceq	r1, r0, #65536	@ datTmp, D.34021,
	orrne	r1, r1, #65536	@ datTmp, D.34021,
	add	r0, r7, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L84:
	movw	sl, #1140	@ tmp254,
	movw	r0, #:lower16:3148803	@ tmp257,
	mul	r5, sl, r5	@ tmp253, tmp254, VdhId
	movt	r0, #:upper16:3148803	@ tmp257,
	movw	r8, #14600	@ tmp300,
	mov	r7, #0	@ tmp321,
	add	sl, r5, r6	@ tmp255, tmp253, tmp346
	ldr	r1, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r1, #60]	@ tmp257,
	ldr	r3, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r3, #64]	@ tmp257,
	ldr	r9, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r9, #68]	@ tmp257,
	ldr	lr, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [lr, #72]	@ tmp257,
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [ip, #76]	@ tmp257,
	ldr	r2, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r2, #80]	@ tmp257,
	ldr	r1, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [r1, #84]	@ tmp257,
	ldr	r9, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldr	r3, [r4, #212]	@ <variable>.CurPicPhyAddr, <variable>.CurPicPhyAddr
	bic	lr, r3, #15	@ D32.1594, <variable>.CurPicPhyAddr,
	str	lr, [r9, #96]	@ D32.1594,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r8]	@ D32.1599, <variable>.VahbStride
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	ldrh	r9, [r4, #166]	@ height_in_mb, <variable>.PicHeightInMb
	str	r0, [ip, #100]	@ D32.1599,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, r8]	@ <variable>.VahbStride, <variable>.VahbStride
	add	r1, r9, #1	@ tmp309, height_in_mb,
	ldr	r0, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	ip, r2, asl #1	@ tmp307, <variable>.VahbStride,
	mov	r3, r1, lsr #1	@ tmp310, tmp309,
	mul	r2, r3, ip	@ D32.1603, tmp310, tmp307
	str	r2, [r0, #104]	@ D32.1603,
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r1, #108]	@ tmp321,
	ldr	r3, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r3, #152]	@ tmp321,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [sl, #1120]	@ D32.1610, <variable>.DnrMbInfoAddr
	ldr	ip, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r0, [ip, #144]	@ D32.1610,
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, r6]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mvn	r1, #0	@ tmp344,
	mov	r0, r7	@ D.33986, tmp321
	str	r1, [r2, #32]	@ tmp344,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L113:
	cmp	r5, #1	@ VdhId,
	beq	.L114	@,
	cmp	r5, #0	@ VdhId,
	ble	.L84	@,
	b	.L87	@
.L112:
	bic	r1, r1, #15	@ tmp362, D.33976,
	cmp	r7, r1	@ stream_base_addr, tmp362
	movcs	r7, r1	@ stream_base_addr, tmp362
	b	.L92	@
.L111:
	bic	lr, r1, #15	@ tmp359, temp.1616,
	cmp	r7, lr	@ stream_base_addr, tmp359
	movcs	r7, lr	@ stream_base_addr, tmp359
	b	.L90	@
.L114:
	movw	r0, #:lower16:269729796	@,
	movt	r0, #:upper16:269729796	@,
	bl	MEM_ReadPhyWord	@
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp249,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp249,
	cmp	r7, #0	@ D32,
	ldr	ip, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	mov	r1, r0	@ D.34028,
	biceq	r1, r0, #65536	@ datTmp.1562, D.34028,
	orrne	r1, r1, #65536	@ datTmp.1562, D.34028,
	add	r0, ip, #4	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
.L87:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33986,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	MP4HAL_V200R004_CfgReg, .-MP4HAL_V200R004_CfgReg
	.align	2
	.global	MP4HAL_V200R004_StartDec
	.type	MP4HAL_V200R004_StartDec, %function
MP4HAL_V200R004_StartDec:
	.fnstart
.LFB1914:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldrh	r3, [r0, #164]	@ <variable>.PicWidthInMb, <variable>.PicWidthInMb
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r2, #0	@ tmp140,
	cmp	r3, #512	@ <variable>.PicWidthInMb,
	mov	r4, r0	@ pMp4DecParam, pMp4DecParam
	mov	r5, r1	@ VdhId, VdhId
	str	r2, [sp, #4]	@ tmp140, StreamBaseAddr
	bhi	.L123	@,
	ldrh	ip, [r0, #166]	@ <variable>.PicHeightInMb, <variable>.PicHeightInMb
	cmp	ip, #512	@ <variable>.PicHeightInMb,
	bhi	.L123	@,
	add	r2, sp, #4	@,,
	bl	MP4HAL_V200R004_CfgReg	@
	cmp	r0, #0	@,
	bne	.L123	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	bl	MP4HAL_V200R004_CfgDnMsg	@
	cmp	r0, #0	@,
	bne	.L123	@,
	mov	r0, r4	@, pMp4DecParam
	mov	r1, r5	@, VdhId
	ldr	r2, [sp, #4]	@, StreamBaseAddr
	bl	MP4HAL_V200R004_WriteSlicMsg	@
	cmp	r0, #0	@ ret.1643
	bne	.L123	@,
.L117:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L123:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.33938,
	b	.L117	@
	.fnend
	.size	MP4HAL_V200R004_StartDec, .-MP4HAL_V200R004_StartDec
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
