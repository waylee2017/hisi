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
	.file	"vfmw_ctrl.c"
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
@ -DVFMW_VC1_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_VP6_SUPPORT
@ -DVFMW_VP8_SUPPORT -DVFMW_DIVX3_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_H263_SUPPORT -DVFMW_JPEG_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=4 -DCFG_MAX_CHAN_NUM=4
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o
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
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36050, s_pstVfmwChan
	cmp	r0, #0	@ D.36050,
	addne	r0, r0, #104	@ D.36053, D.36050,
	bx	lr	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
	.fnstart
.LFB1675:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36071, s_pstVfmwChan
	cmp	r0, #0	@ D.36071,
	addne	r0, r0, #128	@ D.36074, D.36071,
	bx	lr	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetDispState
	.type	VCTRL_GetDispState, %function
VCTRL_GetDispState:
	.fnstart
.LFB1679:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldr	ip, [r3, r0, asl #2]	@ temp.968, s_pstVfmwChan
	movw	r4, #:lower16:176090	@ tmp176,
	movt	r4, #:upper16:176090	@ tmp176,
	ldrsb	r5, [ip, r4]	@ D.36143, <variable>.FspInst.s32DecFsNum
	cmp	r5, #0	@ D.36143,
	movle	r7, #0	@ prephitmp.947,
	ble	.L11	@,
	add	r7, ip, #203776	@ tmp181, temp.968,
	mov	r8, #52	@ tmp179,
	add	r4, r7, #102	@ tmp181, tmp181,
	mov	r7, #0	@ s32DecodedFrameNum,
	mul	r8, r8, r5	@ D.41048, tmp179, D.36143
	ldrsb	r5, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	sub	r4, r8, #52	@ tmp202, D.41048,
	ubfx	r5, r4, #2, #1	@ tmp215, tmp202,,
	beq	.L31	@,
.L19:
	mov	r4, #52	@ ivtmp.962,
	cmp	r4, r8	@ ivtmp.962, D.41048
	beq	.L11	@,
	cmp	r5, #0	@ tmp215,
	beq	.L13	@,
	add	r5, ip, #203776	@ tmp229, temp.968,
	add	r4, r4, #52	@ ivtmp.962, ivtmp.962,
	add	r5, r5, #154	@ tmp229, tmp229,
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.962, D.41048
	bne	.L13	@,
	b	.L11	@
.L24:
	add	r4, r6, #52	@ ivtmp.962, tmp216,
	cmp	r4, r8	@ ivtmp.962, D.41048
	beq	.L11	@,
.L13:
	add	r6, r4, #52	@ tmp216, ivtmp.962,
	add	r4, ip, r4	@ tmp218, temp.968, ivtmp.962
	add	r4, r4, #203776	@ tmp220, tmp218,
	add	r5, ip, r6	@ tmp223, temp.968, tmp216
	add	r4, r4, #102	@ tmp220, tmp220,
	add	r5, r5, #203776	@ tmp225, tmp223,
	add	r5, r5, #102	@ tmp225, tmp225,
	ldrsb	r4, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #3	@ <variable>.DispState,
	ldrsb	r4, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, #3	@ <variable>.DispState,
	bne	.L24	@,
	add	r4, r6, #52	@ ivtmp.962, tmp216,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.962, D.41048
	bne	.L13	@,
.L11:
	str	r7, [r1, #88]	@ prephitmp.947, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:176090	@ tmp186,
	ldr	r4, [r3, r0, asl #2]	@ tmp185, s_pstVfmwChan
	movt	ip, #:upper16:176090	@ tmp186,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ temp.965, <variable>.FspInst.s32DecFsNum
	cmp	ip, #0	@ temp.965,
	moveq	ip, #4	@ iftmp.486,
	mvnne	r4, r2	@ tmp187, RefNum
	sxtabne	ip, r4, ip	@ iftmp.486, tmp187, temp.965
	str	ip, [r1, #96]	@ iftmp.486, <variable>.total_disp_frame_num
	ldr	r3, [r3, r0, asl #2]	@ tmp190, s_pstVfmwChan
	movw	ip, #:lower16:176090	@ tmp191,
	movt	ip, #:upper16:176090	@ tmp191,
	ldrsb	r3, [r3, ip]	@ temp.967, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.967,
	ble	.L17	@,
	add	r2, r2, #1	@ tmp194, RefNum,
	cmp	r3, r2	@ temp.967, tmp194
	movle	r3, #0	@ tmp195,
	strle	r3, [r1, #96]	@ tmp195, <variable>.total_disp_frame_num
.L17:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L31:
	mov	r7, #1	@ s32DecodedFrameNum,
	b	.L19	@
	.fnend
	.size	VCTRL_GetDispState, .-VCTRL_GetDispState
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36201, s_pstVfmwChan
	cmp	r0, #0	@ D.36201,
	addne	r0, r0, #116	@ D.36204, D.36201,
	bx	lr	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
.LFB1685:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:533448	@ tmp136,
	movt	r3, #:upper16:533448	@ tmp136,
	str	r3, [r1, #0]	@ tmp136,* s32ChanCtxSize
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_CheckCommonParameter
	.type	VCTRL_CheckCommonParameter, %function
VCTRL_CheckCommonParameter:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.37296, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r0, r2	@ <variable>.stChanCfg.eVidStd, <variable>.eVidStd
	bne	.L39	@,
	ldr	ip, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r0, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L39	@,
	ldr	ip, [r3, #44]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r2	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L39	@,
	ldr	r0, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	ip, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	r0, ip	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L39	@,
	ldr	r0, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r0, r2	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L39	@,
	ldr	ip, [r3, #60]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r0, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L39	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r2	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L39	@,
	ldr	r0, [r3, #64]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	ip, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	r0, ip	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L39	@,
	ldr	r0, [r3, #76]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, r2	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L39	@,
	ldr	ip, [r3, #88]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L39	@,
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r2	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L39	@,
	ldr	r0, [r3, #80]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	ip, [r1, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r0, ip	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L39	@,
	ldr	r2, [r3, #92]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r3, [r1, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r2, r3	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	moveq	r0, #0	@ D.37349,
	bxeq	lr	@
.L39:
	mvn	r0, #0	@ D.37349,
	bx	lr	@
	.fnend
	.size	VCTRL_CheckCommonParameter, .-VCTRL_CheckCommonParameter
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
.LFB1705:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r4, [r2, r0, asl #2]	@ D.37355, s_pstVfmwChan
	mov	r5, r1	@ pstCfg, pstCfg
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bne	.L48	@,
.L43:
	mvn	r0, #0	@ D.37372,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L48:
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@,
	bne	.L43	@,
	ldr	r3, [r4, #32]	@ D.37362, <variable>.stChanCfg.eVidStd
	cmp	r3, #1	@ D.37362,
	beq	.L49	@,
	sub	r3, r3, #10	@ tmp146, D.37362,
	cmp	r3, #2	@ tmp146,
	bhi	.L45	@,
	ldr	r2, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, r0	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L43	@,
.L45:
	mov	r0, #0	@ D.37372,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L49:
	ldr	r0, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r1, [r5, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r1	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L43	@,
	ldr	ip, [r4, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	lr, [r5, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, lr	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L45	@,
	b	.L43	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_ClearDecparam
	.type	VCTRL_ClearDecparam, %function
VCTRL_ClearDecparam:
	.fnstart
.LFB1731:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r2, [r1, r0, asl #2]	@ D.38267, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L61	@
.L60:
	.word	.L52
	.word	.L58
	.word	.L54
	.word	.L58
	.word	.L61
	.word	.L58
	.word	.L58
	.word	.L61
	.word	.L61
	.word	.L61
	.word	.L58
	.word	.L58
	.word	.L58
	.word	.L59
.L58:
	movw	ip, #:lower16:211844	@ tmp149,
	movt	ip, #:upper16:211844	@ tmp149,
	mov	r0, #0	@ tmp150,
	str	r0, [r2, ip]	@ tmp150,
	bx	lr	@
.L59:
	movw	r3, #:lower16:211844	@ tmp151,
	movt	r3, #:upper16:211844	@ tmp151,
	mov	r1, #0	@ tmp152,
	str	r1, [r2, r3]	@ tmp152, <variable>.stSynCtx.unSyntax.stVp8Ctx.pVp8DecParam
.L61:
	bx	lr	@
.L54:
	movw	r3, #:lower16:212876	@ tmp141,
	movt	r3, #:upper16:212876	@ tmp141,
	mov	r1, #0	@ tmp142,
	str	r1, [r2, r3]	@ tmp142,
	bx	lr	@
.L52:
	movw	ip, #:lower16:212200	@ tmp137,
	movt	ip, #:upper16:212200	@ tmp137,
	mov	r0, #0	@ tmp138,
	str	r0, [r2, ip]	@ tmp138,
	bx	lr	@
	.fnend
	.size	VCTRL_ClearDecparam, .-VCTRL_ClearDecparam
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
.LFB1738:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
	subs	r0, r0, #1	@, <variable>.s32NoStreamFlag,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
.LFB1739:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bls	.L68	@,
.L65:
	mvn	r0, #0	@ D.38453,
	bx	lr	@
.L68:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.38452, s_pstVfmwChan
	cmp	r3, #0	@ D.38452,
	beq	.L65	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L65	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L65	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L65	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	movne	r0, #0	@ D.38453,
	bxne	lr	@
	b	.L65	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
.LFB1748:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [ip, #100]	@ D.38787, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.38787,
	mvneq	r0, #0	@ iftmp.632,
	beq	.L71	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.38787
.L71:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.632
	str	r4, [r5, #0]	@ tmp140,* pChanPmvSize
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r3, #0]	@ temp.1194, s_pstVfmwChan
	cmp	r2, #0	@ temp.1194,
	beq	.L74	@,
	add	r1, r2, #210944	@ tmp141, temp.1194,
	add	r2, r1, #896	@ tmp141, tmp141,
	cmp	r2, r0	@ tmp141, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L74:
	ldr	r2, [r3, #4]	@ temp.1196, s_pstVfmwChan
	cmp	r2, #0	@ temp.1196,
	beq	.L76	@,
	add	r2, r2, #210944	@ tmp144, temp.1196,
	add	ip, r2, #896	@ tmp144, tmp144,
	cmp	ip, r0	@ tmp144, pCtx
	moveq	r0, #1	@ i,
	bxeq	lr	@
.L76:
	ldr	r2, [r3, #8]	@ temp.1198, s_pstVfmwChan
	cmp	r2, #0	@ temp.1198,
	beq	.L77	@,
	add	ip, r2, #210944	@ tmp147, temp.1198,
	add	r1, ip, #896	@ tmp147, tmp147,
	cmp	r1, r0	@ tmp147, pCtx
	moveq	r0, #2	@ i,
	bxeq	lr	@
.L77:
	ldr	r3, [r3, #12]	@ D.39390, s_pstVfmwChan
	cmp	r3, #0	@ D.39390,
	beq	.L78	@,
	add	r2, r3, #210944	@ tmp150, D.39390,
	add	r3, r2, #896	@ tmp150, tmp150,
	cmp	r3, r0	@ tmp150, pCtx
	moveq	r0, #3	@ i,
	bxeq	lr	@
.L78:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp169,
	movt	r3, #:upper16:.LANCHOR0	@ tmp169,
	ldr	r2, [r3, #0]	@ temp.1224, s_pstVfmwChan
	cmp	r2, #0	@ temp.1224,
	beq	.L81	@,
	ldr	r1, [r2, #176]	@ temp.1226, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1226
	bge	.L82	@,
.L84:
	ldr	r1, [r2, #192]	@ temp.1225, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1225
	blt	.L81	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp149, temp.1225, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp149
	blt	.L94	@,
.L81:
	ldr	r2, [r3, #4]	@ temp.1231, s_pstVfmwChan
	cmp	r2, #0	@ temp.1231,
	beq	.L85	@,
	ldr	r1, [r2, #176]	@ temp.1232, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1232
	bge	.L86	@,
.L87:
	ldr	r1, [r2, #192]	@ temp.1233, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1233
	blt	.L85	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp154, temp.1233, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp154
	blt	.L96	@,
.L85:
	ldr	r2, [r3, #8]	@ temp.1238, s_pstVfmwChan
	cmp	r2, #0	@ temp.1238,
	beq	.L88	@,
	ldr	r1, [r2, #176]	@ temp.1239, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1239
	bge	.L89	@,
.L90:
	ldr	r1, [r2, #192]	@ temp.1240, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1240
	blt	.L88	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp159, temp.1240, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp159
	blt	.L97	@,
.L88:
	ldr	r3, [r3, #12]	@ D.39406, s_pstVfmwChan
	cmp	r3, #0	@ D.39406,
	beq	.L91	@,
	ldr	r2, [r3, #176]	@ D.39409, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.39409, PhyAddr
	ble	.L98	@,
.L92:
	ldr	r2, [r3, #192]	@ D.39417, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.39417
	blt	.L91	@,
	ldr	r3, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp166, D.39417, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp166
	blt	.L95	@,
.L91:
	mvn	r0, #0	@ i,
	bx	lr	@
.L82:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp151, temp.1226, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp151
	bge	.L84	@,
.L94:
	mov	r0, #0	@ i,
	bx	lr	@
.L86:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp156, temp.1232, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp156
	bge	.L87	@,
.L96:
	mov	r0, #1	@ i,
	bx	lr	@
.L89:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp161, temp.1239, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp161
	bge	.L90	@,
.L97:
	mov	r0, #2	@ i,
	bx	lr	@
.L98:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp164, D.39409, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp164
	bge	.L92	@,
.L95:
	mov	r0, #3	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1763:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp154,
	movt	r3, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r2, [r3, r0, asl #2]	@ D.39622, s_pstVfmwChan
	cmp	r2, #0	@ D.39622,
	beq	.L100	@,
	ldr	r1, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L100	@
.L111:
	.word	.L110
	.word	.L102
	.word	.L103
	.word	.L104
	.word	.L105
	.word	.L106
	.word	.L107
	.word	.L100
	.word	.L100
	.word	.L100
	.word	.L108
	.word	.L108
	.word	.L108
	.word	.L109
	.word	.L105
	.word	.L100
	.word	.L100
	.word	.L100
	.word	.L110
.L110:
	add	r0, r2, #210944	@ pstVoQue, D.39622,
	add	r0, r0, #904	@ pstVoQue, pstVoQue,
	bx	lr	@
.L100:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L108:
	ldr	r3, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r0, r2, #224256	@ pstVoQue, D.39622,
	addne	r0, r0, #232	@ pstVoQue, pstVoQue,
	bxne	lr	@
.L105:
	add	ip, r2, #231424	@ pstVoQue, D.39622,
	add	r0, ip, #904	@ pstVoQue, pstVoQue,
	bx	lr	@
.L106:
	add	r1, r2, #237568	@ pstVoQue, D.39622,
	add	r0, r1, #912	@ pstVoQue, pstVoQue,
	bx	lr	@
.L103:
	add	r3, r2, #233472	@ pstVoQue, D.39622,
	add	r0, r3, #976	@ pstVoQue, pstVoQue,
	bx	lr	@
.L104:
	add	r0, r2, #282624	@ pstVoQue, D.39622,
	add	r0, r0, #2560	@ pstVoQue, pstVoQue,
	bx	lr	@
.L107:
	add	ip, r2, #227328	@ pstVoQue, D.39622,
	add	r0, ip, #600	@ pstVoQue, pstVoQue,
	bx	lr	@
.L109:
	add	r1, r2, #219136	@ pstVoQue, D.39622,
	add	r0, r1, #872	@ pstVoQue, pstVoQue,
	bx	lr	@
.L102:
	movw	r0, #:lower16:325208	@ pstVoQue,
	movt	r0, #:upper16:325208	@ pstVoQue,
	add	r0, r2, r0	@ pstVoQue, D.39622, pstVoQue
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
.LFB1765:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.type	VfmwProc_SetPrintLevel, %function
VfmwProc_SetPrintLevel:
	.fnstart
.LFB1778:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_PrintEnable	@ tmp134,
	movt	r3, #:upper16:g_PrintEnable	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_PrintEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_SetPrintLevel, .-VfmwProc_SetPrintLevel
	.align	2
	.type	VfmwProc_PrintTracer, %function
VfmwProc_PrintTracer:
	.fnstart
.LFB1788:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	VfmwProc_PrintTracer, .-VfmwProc_PrintTracer
	.align	2
	.type	VfmwProc_OpenScdLowdly, %function
VfmwProc_OpenScdLowdly:
	.fnstart
.LFB1810:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r0, #:lower16:s_SmIIS	@ tmp134,
	movt	r0, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #1	@ tmp138,
	add	r1, ip, #26	@ tmp135, tmp136,
	ldr	r3, [r0, r1, asl #2]	@ tmp137, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp138, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_OpenScdLowdly, .-VfmwProc_OpenScdLowdly
	.align	2
	.type	VfmwProc_CloseScdLowdly, %function
VfmwProc_CloseScdLowdly:
	.fnstart
.LFB1811:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r0, #:lower16:s_SmIIS	@ tmp134,
	movt	r0, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #0	@ tmp138,
	add	r1, ip, #26	@ tmp135, tmp136,
	ldr	r3, [r0, r1, asl #2]	@ tmp137, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp138, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
	.align	2
	.global	VfmwProcGetHandler
	.type	VfmwProcGetHandler, %function
VfmwProcGetHandler:
	.fnstart
.LFB1812:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ cmd, cmd
	movweq	r0, #:lower16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	movteq	r0, #:upper16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	bxeq	lr	@
	movw	r3, #:lower16:.LANCHOR1	@ ivtmp.1409,
	movt	r3, #:upper16:.LANCHOR1	@ ivtmp.1409,
	b	.L129	@
.L130:
	ldr	r2, [r3, #8]!	@ D.40407, <variable>.CmdName
	cmp	r2, r1	@ D.40407, cmd
	beq	.L132	@,
.L129:
	ldr	r0, [r3, #12]	@ pTargetHandler, <variable>.pHandler
	cmp	r0, #0	@ pTargetHandler,
	bne	.L130	@,
	bx	lr	@
.L132:
	bx	lr	@
	.fnend
	.size	VfmwProcGetHandler, .-VfmwProcGetHandler
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1817:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, #20]	@ g_event_report.838, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.838,
	beq	.L135	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.838
.L135:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
.LFB1818:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #1	@ tmp139,
	str	r2, [r3, #24]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
.LFB1819:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #0	@ tmp139,
	str	r2, [r3, #24]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
.LFB1820:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r0, [r3, #24]	@, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1824:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L143	@
.L151:
	.word	.L144
	.word	.L145
	.word	.L146
	.word	.L147
	.word	.L148
	.word	.L149
	.word	.L150
.L150:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L143:
	mov	r3, r1	@, enFmt
	movw	r2, #8330	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L144:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L145:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L146:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L147:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L148:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L149:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB1815:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bhi	.L165	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.40445, s_pstVfmwChan
	cmp	r3, #0	@ D.40445,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
.L165:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC2	@,
	mov	r0, #0	@,
	movw	r2, #8009	@,
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB1814:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L171	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.40433, s_pstVfmwChan
	cmp	r3, #0	@ D.40433,
	mvneq	r0, #0	@ D.40431,
	ldrne	r0, [r3, #676]	@ D.40431, <variable>.s32LastFrameIdPlus2
	ldmfd	sp!, {r3, pc}	@
.L171:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #7997	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40431,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1813:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_args
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mvneq	r0, #1	@ D.40419,
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #0	@ opt,
	movweq	r3, #:lower16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	movteq	r3, #:upper16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	beq	.L177	@,
	movw	r2, #:lower16:.LANCHOR1	@ ivtmp.1597,
	movt	r2, #:upper16:.LANCHOR1	@ ivtmp.1597,
	b	.L178	@
.L179:
	ldr	ip, [r2, #8]!	@ D.40789, <variable>.CmdName
	cmp	r0, ip	@ opt, D.40789
	beq	.L177	@,
.L178:
	ldr	r3, [r2, #12]	@ pCommandHandler, <variable>.pHandler
	cmp	r3, #0	@ pCommandHandler,
	bne	.L179	@,
	mov	r2, r0	@, opt
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.40419,
	ldmfd	sp!, {r3, pc}	@
.L177:
	mov	r0, r1	@, p_args
	blx	r3	@ pCommandHandler
	mov	r0, #1	@ D.40419,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
.LFB1809:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #3	@ dat,
	bhi	.L186	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	mov	ip, #0	@ tmp138,
	ldr	r3, [r1, r3, asl #2]	@ tmp137, s_pstVfmwChan
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r3, #1420]	@ tmp138, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L186:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_CloseModuleLowly, .-VfmwProc_CloseModuleLowly
	.align	2
	.type	VfmwProc_OpenModuleLowly, %function
VfmwProc_OpenModuleLowly:
	.fnstart
.LFB1808:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #3	@ dat,
	bhi	.L190	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	mov	ip, #1	@ tmp138,
	ldr	r3, [r1, r3, asl #2]	@ tmp137, s_pstVfmwChan
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r3, #1420]	@ tmp138, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L190:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_OpenModuleLowly, .-VfmwProc_OpenModuleLowly
	.align	2
	.type	VfmwProc_SetNoStreamReportPeriod, %function
VfmwProc_SetNoStreamReportPeriod:
	.fnstart
.LFB1807:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.814,* p_args
	movw	r3, #:lower16:g_NoStreamReportPeriod	@ tmp135,
	movt	r3, #:upper16:g_NoStreamReportPeriod	@ tmp135,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r2, ip	@, dat.814
	str	ip, [r3, #0]	@ dat.814, g_NoStreamReportPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
.LFB1806:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.812,* p_args
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp135,
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r2, ip	@, dat.812
	str	ip, [r3, #0]	@ dat.812, g_TraceImgPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
.LFB1805:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.810,* p_args
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp135,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r2, ip	@, dat.810
	str	ip, [r3, #0]	@ dat.810, g_TraceFramePeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
.LFB1804:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.808,* p_args
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp135,
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r2, ip	@, dat.808
	str	ip, [r3, #0]	@ dat.808, g_TraceBsPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
.LFB1803:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.806,* p_args
	movw	r3, #:lower16:g_TraceCtrl	@ tmp135,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp135,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, ip	@, dat.806
	str	ip, [r3, #0]	@ dat.806, g_TraceCtrl
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
.LFB1802:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.804,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, ip	@, dat.804
	str	ip, [r3, #40]	@ dat.804, g_StopDec
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
.LFB1801:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.802,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, ip	@, dat.802
	str	ip, [r3, #44]	@ dat.802, g_DnrSleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
.LFB1800:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.800,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, ip	@, dat.800
	str	ip, [r3, #48]	@ dat.800, g_SleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
.LFB1786:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #4	@ dat,
	bhi	.L210	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC16	@,
	str	r3, [ip, #52]	@ dat, g_CurProcChan
	b	dprint_vfmw	@
.L210:
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
.LFB1785:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L214	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC18	@,
	b	dprint_vfmw	@
.L214:
	movw	ip, #:lower16:.LANCHOR0	@ tmp135,
	movt	ip, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC17	@,
	str	r3, [ip, #56]	@ dat, g_ResetCreateNewSave
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
.LFB1784:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L218	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC20	@,
	b	dprint_vfmw	@
.L218:
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp135,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp135,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC19	@,
	str	r3, [ip, #0]	@ dat, USE_FF_APT_EN
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetUSE_FF_APT_EN, .-VfmwProc_SetUSE_FF_APT_EN
	.align	2
	.type	VfmwProc_SetDNR, %function
VfmwProc_SetDNR:
	.fnstart
.LFB1783:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
	ldr	r6, .L224	@ tmp140,
	.pad #20
	sub	sp, sp, #20	@,,
	and	r7, ip, #15	@ iftmp.745, dat,
	ubfx	lr, ip, #8, #4	@ iftmp.751, dat,,
	cmp	r7, #2	@ iftmp.745,
	ubfx	ip, ip, #4, #4	@ iftmp.748, dat,,
	ldmia	r6, {r0, r1, r2}	@ tmp140,,,
	movhi	r7, #0	@ iftmp.745,
	cmp	ip, #2	@ iftmp.748,
	add	r3, sp, #4	@ tmp139,,
	movw	r6, #:lower16:g_DCEnable	@ tmp145,
	movt	r6, #:upper16:g_DCEnable	@ tmp145,
	movhi	ip, #0	@ iftmp.748,
	cmp	lr, #2	@ iftmp.751,
	movw	r4, #:lower16:g_DREnable	@ tmp171,
	movw	r5, #:lower16:g_DBEnable	@ tmp172,
	movt	r4, #:upper16:g_DREnable	@ tmp171,
	movt	r5, #:upper16:g_DBEnable	@ tmp172,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
	movhi	lr, #0	@ iftmp.751,
	mov	r0, #32	@,
	str	lr, [r6, #0]	@ iftmp.751, g_DCEnable
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [r5, #0]	@ iftmp.748, g_DBEnable
	str	r7, [r4, #0]	@ iftmp.745, g_DREnable
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ g_DCEnable, g_DCEnable
	add	r2, sp, #16	@,,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r3, r2, ip, asl #2	@, tmp152,, g_DCEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ g_DBEnable, g_DBEnable
	add	r2, sp, #16	@,,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	add	r3, r2, ip, asl #2	@, tmp160,, g_DBEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	ip, [r4, #0]	@ g_DREnable, g_DREnable
	add	r2, sp, #16	@,,
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC24	@,
	add	r3, r2, ip, asl #2	@, tmp168,, g_DREnable,
	ldr	r2, [r3, #-12]	@, opt
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
.L225:
	.align	2
.L224:
	.word	.LANCHOR1+280
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1771:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #4992	@ tmp138, new_extra_ref,
	add	r3, r4, #8	@ tmp138, tmp138,
	movw	r2, #10000	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	cmp	r3, r2	@ tmp138, tmp140
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	mov	r5, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r4, #60]	@ new_extra_ref, extra_ref
	bhi	.L230	@,
.L227:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.696, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.696, tmp145
	strge	r0, [r4, #60]	@, iftmp.696, extra_ref
	strlt	r6, [r4, #60]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #64]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L231	@,
.L228:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1947, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1947, tmp155
	strge	r5, [r4, #64]	@, iftmp.1947, extra_disp
	strlt	r3, [r4, #64]	@, tmp155, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L230:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #60]	@ new_extra_ref, extra_ref
	b	.L227	@
.L231:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #64]	@ new_extra_disp, extra_disp
	b	.L228	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1770:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L237	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.39758, s_pstVfmwChan
	cmp	r3, #0	@ D.39758,
	moveq	r0, #33	@ D.39756,
	ldrne	r0, [r3, #24]	@ D.39756, <variable>.eChanCapLevel
	ldmfd	sp!, {r3, pc}	@
.L237:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6967	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39756,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1769:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L243	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.39746, s_pstVfmwChan
	cmp	r0, #0	@ D.39746,
	beq	.L244	@,
	ldr	r0, [r0, #1460]	@ D.39744, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r3, pc}	@
.L243:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6959	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39744,
	ldmfd	sp!, {r3, pc}	@
.L244:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6960	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39744,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1768:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L250	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.39734, s_pstVfmwChan
	cmp	r0, #0	@ D.39734,
	beq	.L251	@,
	ldr	r0, [r0, #1456]	@ D.39732, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r3, pc}	@
.L250:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6951	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39732,
	ldmfd	sp!, {r3, pc}	@
.L251:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6952	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39732,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1756:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	ip, r2, asl #1	@ tmp143, Threshould,
	movw	r6, #:lower16:1431655766	@ tmp146,
	movt	r6, #:upper16:1431655766	@ tmp146,
	mov	r4, r2	@ Threshould, Threshould
	add	r7, r2, #7	@ tmp140, Threshould,
	smull	r2, r3, r6, ip	@, tmp145, tmp146, tmp143
	cmp	r4, #0	@ Threshould,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ CurMode, CurMode
	movge	r7, r4	@ Threshould, Threshould
	mov	r6, r1	@ StreamAmount, StreamAmount
	mov	r7, r7, asr #3	@ tmp141, Threshould,
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r2, r7	@, tmp141
	sub	r3, r3, ip, asr #31	@, tmp145, tmp143,
	stmia	sp, {r4, r6}	@ phole stm
	bl	dprint_vfmw	@
	cmp	r5, #3	@ CurMode,
	beq	.L259	@,
	cmp	r4, r6	@ Threshould, StreamAmount
	blt	.L256	@,
.L258:
	mov	r4, r5	@ NextMode, CurMode
.L255:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L256:
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L255	@
.L259:
	cmp	r7, r6	@ tmp141, StreamAmount
	ble	.L258	@,
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L255	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1751:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #18	@ D.40793, eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r3, #7	@ D.40793,
	.pad #476
	sub	sp, sp, #476	@,,
	mov	r9, r0, asl #3	@ tmp318, eCapLevel,
	rsb	r5, r0, r9	@ tmp169, eCapLevel, tmp318
	movw	r4, #:lower16:CapItem	@ tmp317,
	str	r2, [sp, #40]	@ ScdMemSize, %sfp
	movt	r4, #:upper16:CapItem	@ tmp317,
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	addls	r3, r2, r3, asl #2	@, tmp200, tmp197, D.40793,
	mov	r7, r0	@ eCapLevel, eCapLevel
	add	r0, r4, r5, asl #2	@, tmp171, tmp317, tmp169,
	movw	r5, #:lower16:.LANCHOR0	@ tmp319,
	ldrls	r3, [r3, #292]	@ MinDnrFspNum, CSWTCH.850
	movt	r5, #:upper16:.LANCHOR0	@ tmp319,
	ldr	r8, [r0, #12]	@ TempMinFrame, CapItem
	movhi	r3, #6	@ MinDnrFspNum,
	ldr	r6, [r5, #60]	@ extra_ref, extra_ref
	rsb	r3, r3, r8	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	str	r1, [sp, #36]	@ VdmMemSize, %sfp
	cmp	r3, #15	@ s32MaxRefFrameNum,
	bic	r6, r6, r6, asr #31	@ extra_ref_tmp, extra_ref
	ldr	ip, [r0, #8]	@ TempPmv, CapItem
	str	r6, [r5, #60]	@ extra_ref_tmp, extra_ref
	movgt	r6, #0	@ extra_ref_tmp,
	ldr	sl, [r0, #16]	@ TempMiddleFrame, CapItem
	ldr	fp, [r0, #20]	@ TempFluentFrame, CapItem
	bgt	.L264	@,
	add	r1, r3, r6	@ D.38933, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r1, #16	@ D.38933,
	addgt	r6, r6, #16	@ D.38936, extra_ref_tmp,
	rsbgt	r6, r1, r6	@ extra_ref_tmp, D.38933, D.38936
.L264:
	add	r3, r6, ip	@ TempPmv.2069, extra_ref_tmp, TempPmv
	ldr	r2, [r5, #64]	@, extra_disp
	cmp	r3, #0	@ TempPmv.2069,
	str	r2, [sp, #44]	@, %sfp
	ble	.L280	@,
	cmp	r3, #17	@ TempPmv.2069,
	movge	r3, #17	@ TempPmv.2069,
	str	r3, [sp, #48]	@ TempPmv.2069, %sfp
.L266:
	cmp	r7, #23	@ eCapLevel,
	bhi	.L267	@,
	ldr	ip, [sp, #44]	@, %sfp
	add	r1, r6, ip	@ D.38939, extra_ref_tmp,
	add	r3, r1, r8	@ TempMinFrame.2066, D.38939, TempMinFrame
	add	r2, r1, sl	@ TempMiddleFrame.2067, D.38939, TempMiddleFrame
	cmp	r3, #0	@ TempMinFrame.2066,
	cmpgt	r2, #0	@, TempMiddleFrame.2067,
	ble	.L268	@,
	add	lr, r1, fp	@ TempFluentFrame.2068, D.38939, TempFluentFrame
	cmp	lr, #0	@ TempFluentFrame.2068,
	strgt	lr, [sp, #52]	@ TempFluentFrame.2068, %sfp
	strgt	r2, [sp, #44]	@ TempMiddleFrame.2067, %sfp
	movgt	r8, r3	@ nMinFrame, TempMinFrame.2066
	ble	.L268	@,
.L270:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	ldr	ip, [r5, #36]	@ D.38959, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38959,
	beq	.L273	@,
.L281:
	rsb	r7, r7, r9	@ tmp221, eCapLevel, tmp318
	ldr	sl, [sp, #48]	@, %sfp
	str	r8, [sp, #4]	@ nMinFrame,
	add	r8, r7, #1	@ tmp229, tmp221,
	mov	r9, #0	@ tmp231,
	mov	fp, #16	@ tmp235,
	str	sl, [sp, #0]	@,
	mov	r0, #1	@,
	ldr	r3, [r4, r8, asl #2]	@ tmp230, CapItem
	mvn	sl, #0	@ tmp232,
	ldr	r2, [r4, r7, asl #2]	@ tmp224, CapItem
	mvn	r1, #-2147483648	@,
	str	r9, [sp, #8]	@ tmp231,
	add	r9, sp, #56	@ tmp234,,
	str	sl, [sp, #12]	@ tmp232,
	movw	r6, #:lower16:CapItem	@ tmp218,
	str	r9, [sp, #16]	@ tmp234,
	movt	r6, #:upper16:CapItem	@ tmp218,
	str	fp, [sp, #20]	@ tmp235,
	add	r4, r4, r7, asl #2	@, tmp223, tmp317, tmp221,
	blx	ip	@ D.38959
	subs	r3, r0, #0	@ ret,
	bne	.L273	@,
	ldr	r1, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [sp, #36]	@, %sfp
	add	r0, r1, #47104	@ tmp238, MemArrange.TotalMemUsed,
	add	ip, r0, #16	@ tmp238, tmp238,
	str	ip, [lr, #0]	@ tmp238,
	ldr	r0, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp248, CapItem
	add	r1, r2, #32768	@ tmp249, tmp248,
	str	r1, [r0, #0]	@ tmp249,
	ldr	ip, [r5, #36]	@ temp.2071, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2071,
	beq	.L275	@,
	ldr	lr, [r6, r8, asl #2]	@ tmp263, CapItem
	mov	r0, #1	@,
	ldr	r2, [sp, #44]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [sp, #48]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r6, r7, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp263
	str	sl, [sp, #12]	@ tmp232,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.2071
	subs	lr, r0, #0	@ ret.2074,
	bne	.L275	@,
	ldr	r0, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@, %sfp
	add	ip, r0, #47104	@ tmp271, MemArrange.TotalMemUsed,
	add	r3, ip, #16	@ tmp271, tmp271,
	str	r3, [r2, #4]	@ tmp271,
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [r4, #24]	@ tmp281, CapItem
	add	r0, r1, #32768	@ tmp282, tmp281,
	str	r0, [ip, #4]	@ tmp282,
	ldr	ip, [r5, #36]	@ temp.2079, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2079,
	beq	.L277	@,
	ldr	r5, [sp, #48]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp296, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r6, r7, asl #2]	@ tmp290, CapItem
	str	r5, [sp, #0]	@,
	ldr	r5, [sp, #52]	@, %sfp
	str	lr, [sp, #8]	@ ret.2074,
	str	sl, [sp, #12]	@ tmp232,
	str	r5, [sp, #4]	@,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.2079
	cmp	r0, #0	@ ret.2082
	bne	.L277	@,
	ldr	r1, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	ip, [sp, #36]	@, %sfp
	add	lr, r1, #47104	@ tmp304, MemArrange.TotalMemUsed,
	add	r3, lr, #16	@ tmp304, tmp304,
	str	r3, [ip, #8]	@ tmp304,
	ldr	lr, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp314, CapItem
	add	r1, r2, #32768	@ tmp315, tmp314,
	str	r1, [lr, #8]	@ tmp315,
.L272:
	add	sp, sp, #476	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L267:
	cmp	r7, #32	@ eCapLevel,
	strls	fp, [sp, #52]	@ TempFluentFrame, %sfp
	strls	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	bls	.L270	@,
	mov	r2, r7	@, eCapLevel
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38957,
	b	.L272	@
.L268:
	ldr	ip, [r5, #64]	@ extra_disp.2070, extra_disp
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	mov	r3, r6	@, extra_ref_tmp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC33	@,
	mov	r2, r8	@, TempMinFrame
	movt	r1, #:upper16:.LC33	@,
	str	ip, [sp, #24]	@ extra_disp.2070,
	str	ip, [sp, #0]	@ extra_disp.2070,
	str	ip, [sp, #12]	@ extra_disp.2070,
	str	fp, [sp, #52]	@ TempFluentFrame, %sfp
	str	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	str	sl, [sp, #4]	@ TempMiddleFrame,
	str	r6, [sp, #8]	@ extra_ref_tmp,
	str	fp, [sp, #16]	@ TempFluentFrame,
	str	r6, [sp, #20]	@ extra_ref_tmp,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #36]	@ D.38959, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38959,
	bne	.L281	@,
.L273:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5837	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38957,
	b	.L272	@
.L280:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC32	@,
	mov	r3, r6	@, extra_ref_tmp
	movt	r1, #:upper16:.LC32	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [sp, #48]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L266	@
.L275:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5855	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38957,
	b	.L272	@
.L277:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5873	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38957,
	b	.L272	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
.LFB1747:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r0, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L283	@,
	ldr	r1, [r0, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r1, #31	@ <variable>.s32MaxWidth,
	ble	.L283	@,
	ldr	r2, [r0, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r2, #31	@ <variable>.s32MaxHeight,
	ble	.L283	@,
	ldr	ip, [r0, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L283	@,
	ldr	r3, [r0, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	beq	.L287	@,
.L284:
	mov	r0, #0	@ D.38779,
	ldmfd	sp!, {r3, pc}	@
.L287:
	ldr	r1, [r0, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L283	@,
	ldr	r2, [r0, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L283	@,
	ldr	ip, [r0, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L284	@,
.L283:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38779,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
.LFB1749:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #448
	sub	sp, sp, #448	@,,
	mov	r0, r1	@, pChanOption
	mov	r3, #0	@ tmp145,
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	str	r3, [sp, #444]	@ tmp145, ChanPmvSize
	bl	VCTRL_VarifyOption_onDecode	@
	cmp	r0, #0	@,
	bne	.L297	@,
	ldr	r0, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r0, #0	@ <variable>.s32SupportBFrame,
	beq	.L298	@,
	ldr	r6, [r4, #32]	@ prephitmp.2124, <variable>.s32MaxRefFrameNum
	add	r0, r6, #1	@ PmvNum.2135, prephitmp.2124,
	cmp	r0, #17	@ PmvNum.2135,
	movlt	r8, r0	@ PmvNum, PmvNum.2135
	movge	r8, #17	@ PmvNum,
.L292:
	ldr	r1, [r4, #12]	@, <variable>.s32MaxWidth
	add	r3, sp, #444	@,,
	ldr	r2, [r4, #16]	@, <variable>.s32MaxHeight
	ldr	r7, [r4, #60]	@ D.38815, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r2, [sp, #444]	@ ChanPmvSize, ChanPmvSize
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	str	r2, [r5, #12]	@ ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r1, #36]	@ D.38821, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.38821,
	beq	.L293	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp155,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp156,
	str	lr, [sp, #8]	@ tmp155,
	add	r0, sp, #28	@ tmp158,,
	str	r1, [sp, #12]	@ tmp156,
	mov	lr, #16	@ tmp159,
	str	r0, [sp, #16]	@ tmp158,
	add	r6, r6, r7	@ tmp154, prephitmp.2124, D.38815
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp154,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp159,
	blx	ip	@ D.38821
	cmp	r0, #0	@ ret
	bne	.L293	@,
	ldr	lr, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, lr, #47104	@ tmp164, MemArrange.TotalMemUsed,
	add	r2, r1, #16	@ tmp164, tmp164,
	str	r2, [r5, #0]	@ tmp164, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	ip, r3, #32768	@ tmp167, <variable>.s32SCDBufSize,
	str	ip, [r5, #4]	@ tmp167, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	beq	.L299	@,
	ldr	r3, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	mov	lr, #4000	@ tmp175,
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	ldr	r2, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	mul	r1, lr, r3	@ tmp173, tmp175, <variable>.s32MaxSpsNum
	movw	lr, #4060	@ tmp172,
	mla	r3, lr, ip, r1	@ tmp176, tmp172, <variable>.s32MaxSliceNum, tmp173
	mov	r1, #2208	@ tmp181,
	add	ip, r3, #532480	@ tmp177, tmp176,
	add	lr, ip, #968	@ tmp177, tmp177,
	mla	r3, r1, r2, lr	@ tmp182, tmp181, <variable>.s32MaxPpsNum, tmp177
	str	r3, [r5, #8]	@ tmp182, <variable>.ChanCtxDetailMem
.L290:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L298:
	ldr	r6, [r4, #32]	@ prephitmp.2124, <variable>.s32MaxRefFrameNum
	mov	r8, #1	@ PmvNum,
	add	r0, r6, r8	@ PmvNum.2135, prephitmp.2124,
	b	.L292	@
.L293:
	movw	r1, #:lower16:.LC37	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, .L300	@,
	movw	r3, #5638	@,
	bl	dprint_vfmw	@
.L297:
	mvn	r0, #0	@ D.38809,
	b	.L290	@
.L299:
	movw	ip, #:lower16:533448	@ tmp169,
	mov	r0, r3	@ D.38809, <variable>.s32SupportH264
	movt	ip, #:upper16:533448	@ tmp169,
	str	ip, [r5, #8]	@ tmp169, <variable>.ChanCtxDetailMem
	b	.L290	@
.L301:
	.align	2
.L300:
	.word	.LANCHOR1+324
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
.LFB1746:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #64]	@ D.38747, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38747,
	beq	.L303	@,
	ldr	r0, [r1, #68]	@ D.38749, <variable>.s32SlotHeight
	cmp	r0, #0	@ D.38749,
	beq	.L303	@,
	mul	ip, r0, r3	@ tmp141, D.38749, D.38747
	ldr	r1, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r3, #0	@ tmp146,
	str	r3, [r2, #12]	@ tmp146, <variable>.PmvDetailMem
	mov	r0, r3	@ D.38751, tmp146
	str	r3, [r2, #4]	@ tmp146, <variable>.ScdDetailMem
	movw	r3, #:lower16:533448	@ tmp147,
	movt	r3, #:upper16:533448	@ tmp147,
	str	r3, [r2, #8]	@ tmp147, <variable>.ChanCtxDetailMem
	mov	r3, ip, asl #1	@ tmp142, tmp141,
	mla	r3, r1, r3, r3	@ tmp145, <variable>.s32DisplayFrameNum, tmp142, tmp142
	str	r3, [r2, #0]	@ tmp145, <variable>.VdhDetailMem
	ldmfd	sp!, {r3, pc}	@
.L303:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38751,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1750:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L308	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r8, [r1, #32]	@ D.38866, <variable>.s32MaxRefFrameNum
	ldr	r5, [ip, #60]	@ extra_ref.637, extra_ref
	ldr	r4, [r1, #60]	@ D.38869, <variable>.s32DisplayFrameNum
	ldr	ip, [ip, #64]	@ extra_disp.638, extra_disp
	add	r7, r5, r8	@ TempRefNum, extra_ref.637, D.38866
	cmp	r7, #16	@ TempRefNum,
	movge	r7, #16	@ TempRefNum,
	add	r6, ip, r4	@ TempDispNum, extra_disp.638, D.38869
	orrs	sl, r7, r6	@, TempRefNum, TempDispNum
	bmi	.L315	@,
	rsbs	r3, r3, #1	@ tmp164, flag
	movcc	r3, #0	@ tmp164
	cmp	r0, #25	@ eCapLevel,
	str	r7, [r1, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp164,
	cmp	r3, #0	@ tmp164,
	str	r6, [r1, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L316	@,
.L308:
	ldr	r3, [r1, #4]	@ D.38884, <variable>.Purpose
	cmp	r3, #2	@ D.38884,
	bhi	.L317	@,
	beq	.L318	@,
	cmp	r3, #1	@ D.38884,
	beq	.L319	@,
.L310:
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L318:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onFramePath	@
.L319:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onDecode	@
.L316:
	movw	r1, #:lower16:.LC40	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	b	.L310	@
.L317:
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	b	.L310	@
.L315:
	mov	r2, r8	@, D.38866
	mov	r3, r5	@, extra_ref.637
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	stmia	sp, {r4, ip}	@ phole stm
	bl	dprint_vfmw	@
	b	.L310	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1735:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L326	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38380, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L327	@,
	cmp	r1, #0	@ pArgs,
	beq	.L328	@,
	ldr	ip, [r1, #0]	@ tmp146,* pArgs
	mov	r0, #0	@ D.38378,
	str	ip, [r3, #1408]	@ tmp146, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L327:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4983	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38378,
	ldmfd	sp!, {r3, pc}	@
.L326:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4982	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38378,
	ldmfd	sp!, {r3, pc}	@
.L328:
	mov	r0, r1	@, pArgs
	movw	r2, #4984	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38378,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1725:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L335	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.38178, s_pstVfmwChan
	cmp	r0, #0	@ D.38178,
	beq	.L336	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L337	@,
.L333:
	mvn	r0, #0	@ D.38176,
	ldmfd	sp!, {r3, pc}	@
.L336:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4434	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38176,
	ldmfd	sp!, {r3, pc}	@
.L337:
	ldr	r2, [r0, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L333	@,
	ldr	r3, [r0, #156]	@ D.38190, <variable>.stChanMem.VirAddr
	ldr	ip, [r0, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	ldr	r2, [r0, #160]	@ <variable>.stChanMem.PhyAddr, <variable>.stChanMem.PhyAddr
	cmp	r3, #0	@ D.38190,
	str	r3, [r1, #4]	@ D.38190, <variable>.VirAddr
	str	ip, [r1, #12]	@ <variable>.stChanMem.Length, <variable>.Length
	movne	r0, #0	@ D.38176,
	str	r2, [r1, #8]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp!, {r3, pc}	@
	b	.L333	@
.L335:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4433	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38176,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
.LFB1721:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L339	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.38080, s_pstVfmwChan
	cmp	r3, #0	@ D.38080,
	beq	.L339	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L342	@,
	mov	r3, r0	@, ChanId
	movw	r1, #:lower16:.LC46	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r2, #4248	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38082,
	ldmfd	sp!, {r3, pc}	@
.L339:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movw	r2, #4241	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38082,
	ldmfd	sp!, {r3, pc}	@
.L342:
	ldr	r0, [r3, #880]	@ D.38082, <variable>.eVidStd
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:g_chipID	@ tmp144,
	movt	r2, #:upper16:g_chipID	@ tmp144,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp143,
	movt	r4, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r2, #0]	@ g_chipID.530, g_chipID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.37407, s_pstVfmwChan
	cmp	ip, #16	@ g_chipID.530,
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r0, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L353	@,
.L345:
	mov	r2, ip	@, g_chipID.530
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L350:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L353:
	mov	r2, #1	@ tmp146,
	movw	r3, #:lower16:102368	@ tmp147,
	mov	r2, r2, asl ip	@ tmp145, tmp146,
	movt	r3, #:upper16:102368	@ tmp147,
	and	r3, r2, r3	@ tmp147, tmp145, tmp147
	cmp	r3, #0	@ tmp147,
	beq	.L354	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp156,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp156,
	ldr	r2, [r3, #0]	@ g_ChipMaxWidth.2279, g_ChipMaxWidth
	cmp	r0, r2	@ ChanMaxWidth, g_ChipMaxWidth.2279
	ble	.L355	@,
	ldr	r3, [r1, #0]	@ D.37421, <variable>.eVidStd
	cmp	r3, #13	@ D.37421,
	cmpne	r3, #0	@, D.37421,
	beq	.L349	@,
.L359:
	cmp	r3, #15	@ D.37421,
	beq	.L349	@,
	cmp	r3, #18	@ D.37421,
	bne	.L356	@,
.L349:
	mov	r0, #0	@ ret,
	b	.L350	@
.L354:
	tst	r2, #31	@ tmp145,
	beq	.L345	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp150,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp150,
	ldr	r3, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L357	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L349	@,
.L358:
	mov	r2, ip	@, g_chipID.530
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L350	@
.L357:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp152,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp152,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L349	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L349	@,
	b	.L358	@
.L355:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp157,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp157,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L349	@,
	ldr	r3, [r1, #0]	@ D.37421, <variable>.eVidStd
	cmp	r3, #13	@ D.37421,
	cmpne	r3, #0	@, D.37421,
	bne	.L359	@,
	b	.L349	@
.L356:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp167,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp167,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	str	ip, [sp, #0]	@ g_chipID.530,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L350	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp183,
	movt	r4, #:upper16:.LANCHOR0	@ tmp183,
	mov	r5, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.37254, s_pstVfmwChan
	ldr	r0, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	sub	r2, r0, #4	@ tmp148, <variable>.eVidStd,
	cmp	r2, #10	@ tmp148,
	ldrls	pc, [pc, r2, asl #2]	@ tmp148
	b	.L361	@
.L367:
	.word	.L362
	.word	.L361
	.word	.L361
	.word	.L361
	.word	.L361
	.word	.L361
	.word	.L363
	.word	.L364
	.word	.L365
	.word	.L361
	.word	.L366
.L363:
	ldr	r0, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	moveq	r0, #3	@ tmp154,
	streq	r0, [r3, #1624]	@ tmp154, <variable>.eDecCore
	beq	.L368	@,
.L361:
	mov	r0, #0	@ tmp166,
	str	r0, [r3, #1624]	@ tmp166, <variable>.eDecCore
.L368:
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.2298, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp167,
	movt	r6, #:upper16:.LANCHOR0	@ tmp167,
	ldr	r2, [r0, #1624]	@ prephitmp.2300, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.2300, eOldDecCore
	beq	.L372	@,
	sub	ip, ip, #1	@ tmp168, eOldDecCore,
	cmp	ip, #4	@ tmp168,
	bhi	.L373	@,
	ldr	r3, [r6, #72]	@ D.37274, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37274,
	beq	.L373	@,
	add	lr, r0, #210944	@, prephitmp.2298,
	str	r1, [sp, #4]	@,
	add	r0, lr, #896	@,,
	blx	r3	@ D.37274
	ldr	r0, [r6, r5, asl #2]	@ prephitmp.2298, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	ldr	r2, [r0, #1624]	@ prephitmp.2300, <variable>.eDecCore
.L373:
	sub	r3, r2, #1	@ tmp173, prephitmp.2300,
	cmp	r3, #4	@ tmp173,
	bhi	.L372	@,
	ldr	ip, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:211852	@ tmp174,
	movt	lr, #:upper16:211852	@ tmp174,
	movw	r2, #:lower16:.LANCHOR0	@ tmp176,
	movt	r2, #:upper16:.LANCHOR0	@ tmp176,
	str	ip, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #68]	@ D.37286, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.37286,
	beq	.L374	@,
	ldr	r2, [r2, r5, asl #2]	@ temp.2315, s_pstVfmwChan
	add	r0, r2, #210944	@, temp.2315,
	add	r0, r0, #896	@,,
	ldr	r2, [r2, #880]	@, <variable>.eVidStd
	blx	r3	@ D.37286
	cmp	r0, #0	@,
	bne	.L374	@,
.L372:
	mov	r0, #0	@ D.37290,
.L375:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L366:
	mov	r2, #2	@ tmp150,
	str	r2, [r3, #1624]	@ tmp150, <variable>.eDecCore
	b	.L368	@
.L362:
	mov	r6, #1	@ tmp149,
	str	r6, [r3, #1624]	@ tmp149, <variable>.eDecCore
	b	.L368	@
.L364:
	ldr	r6, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	moveq	r6, #4	@ tmp159,
	streq	r6, [r3, #1624]	@ tmp159, <variable>.eDecCore
	beq	.L368	@,
	b	.L361	@
.L365:
	ldr	r2, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	moveq	r2, #5	@ tmp164,
	streq	r2, [r3, #1624]	@ tmp164, <variable>.eDecCore
	beq	.L368	@,
	b	.L361	@
.L374:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37290,
	b	.L375	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.type	VCTRL_ConfigMemInfo, %function
VCTRL_ConfigMemInfo:
	.fnstart
.LFB1695:
	@ args = 80, pretend = 0, frame = 464
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #492
	sub	sp, sp, #492	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp294,
	movt	r4, #:upper16:.LANCHOR0	@ tmp294,
	ldr	fp, [sp, #564]	@, ChanMemDetail.ChanMemCtx.VirAddr
	mov	r5, r0	@ ChanID, ChanID
	ldr	sl, [sp, #568]	@, ChanMemDetail.ChanMemCtx.Length
	movw	r0, #:lower16:211808	@ tmp175,
	str	r1, [sp, #68]	@ eCapLevel, %sfp
	movt	r0, #:upper16:211808	@ tmp175,
	ldr	r1, [sp, #560]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r7, [sp, #544]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r6, [sp, #552]	@, ChanMemDetail.ChanMemScd.Length
	ldr	r9, [sp, #576]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	ldr	r8, [sp, #580]	@, ChanMemDetail.ChanMemPmv.VirAddr
	str	r1, [sp, #64]	@, %sfp
	str	fp, [sp, #60]	@, %sfp
	ldr	r1, [sp, #584]	@, ChanMemDetail.ChanMemPmv.Length
	str	sl, [sp, #56]	@, %sfp
	ldr	fp, [sp, #592]	@, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	sl, [r4, r5, asl #2]	@, s_pstVfmwChan
	str	r7, [sp, #40]	@, %sfp
	str	r6, [sp, #36]	@, %sfp
	str	r2, [sp, #28]	@ OneChanMemFlag, %sfp
	str	r9, [sp, #52]	@, %sfp
	str	r8, [sp, #48]	@, %sfp
	str	r1, [sp, #44]	@, %sfp
	ldr	r8, [sp, #600]	@ ChanMemFlag$SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	ldr	r1, [sp, #604]	@ ChanMemFlag$SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	ip, [sp, #548]	@ ChanMemDetail$ChanMemScd$VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	ldr	r6, [sp, #528]	@ ChanMemDetail$ChanMemVdh$PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r7, [sp, #536]	@ ChanMemDetail$ChanMemVdh$Length, ChanMemDetail.ChanMemVdh.Length
	ldr	r2, [sp, #532]	@ ChanMemDetail$ChanMemVdh$VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	ldr	r9, [sp, #596]	@ ChanMemFlag$SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	str	fp, [sl, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	ldr	fp, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	str	r9, [fp, #220]	@ ChanMemFlag$SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	ldr	sl, [r4, r5, asl #2]	@ tmp172, s_pstVfmwChan
	str	r8, [sl, #224]	@ ChanMemFlag$SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	ldr	r8, [r4, r5, asl #2]	@ tmp174, s_pstVfmwChan
	str	r1, [r8, r0]	@ ChanMemFlag$SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	ldr	r1, [r3, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r1, #3	@ <variable>.MemAllocMode,
	ldrne	r1, [r4, r5, asl #2]	@ prephitmp.2368, s_pstVfmwChan
	beq	.L389	@,
.L379:
	mov	r8, #0	@ tmp198,
	str	r8, [r1, #148]	@ tmp198, <variable>.s32OneChanMem
.L380:
	ldr	sl, [r4, r5, asl #2]	@ tmp200, s_pstVfmwChan
	movw	r8, #:lower16:211820	@ tmp219,
	movt	r8, #:upper16:211820	@ tmp219,
	movw	r0, #:lower16:211816	@ tmp222,
	movt	r0, #:upper16:211816	@ tmp222,
	movw	r1, #:lower16:211824	@ tmp225,
	str	r6, [sl, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movt	r1, #:upper16:211824	@ tmp225,
	ldr	fp, [r4, r5, asl #2]	@ tmp202, s_pstVfmwChan
	add	r9, r4, r5, asl #2	@, tmp229, tmp294, ChanID,
	movw	sl, #:lower16:.LANCHOR0	@ tmp199,
	movt	sl, #:upper16:.LANCHOR0	@ tmp199,
	str	r2, [fp, #172]	@ ChanMemDetail$ChanMemVdh$VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp204, s_pstVfmwChan
	str	r7, [r2, #180]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.stChanMem_vdh.Length
	ldr	fp, [sp, #40]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp206, s_pstVfmwChan
	str	fp, [r2, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp208, s_pstVfmwChan
	str	ip, [r2, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp210, s_pstVfmwChan
	str	fp, [r2, #196]	@, <variable>.stChanMem_scd.Length
	ldr	fp, [sp, #64]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp212, s_pstVfmwChan
	str	fp, [r2, #208]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	fp, [sp, #60]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp214, s_pstVfmwChan
	str	fp, [r2, #204]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	fp, [sp, #56]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp216, s_pstVfmwChan
	str	fp, [r2, #212]	@, <variable>.stChanMem_ctx.Length
	ldr	fp, [sp, #52]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp218, s_pstVfmwChan
	str	fp, [r2, r8]	@, <variable>.stChanMem_pmv.PhyAddr
	ldr	r8, [sp, #48]	@, %sfp
	ldr	fp, [r4, r5, asl #2]	@ tmp221, s_pstVfmwChan
	str	r8, [fp, r0]	@, <variable>.stChanMem_pmv.VirAddr
	ldr	fp, [sp, #44]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp224, s_pstVfmwChan
	str	fp, [r2, r1]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, r5, asl #2]	@ tmp232, s_pstVfmwChan
	str	ip, [r9, #96]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r6, [r1, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32SdecMemAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp234, s_pstVfmwChan
	str	r7, [r2, #252]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.s32SdecMemSize
	ldr	r2, [r4, r5, asl #2]	@ temp.2399, s_pstVfmwChan
	ldr	ip, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L381	@,
	ldr	ip, [sp, #68]	@, %sfp
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp237,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp237,
	str	r6, [r2, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32OffLineDnrMemAddr
	cmp	ip, #24	@,
	ldr	ip, [lr, #36]	@ D.36924, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	moveq	r0, #1	@ DnrImgNum,
	ldrne	r0, [r3, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.36924,
	beq	.L384	@,
	ldr	lr, [r3, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mov	r1, #0	@ tmp240,
	ldr	r2, [r3, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	str	r0, [sp, #4]	@ DnrImgNum,
	mvn	r0, #0	@ tmp242,
	str	r1, [sp, #8]	@ tmp240,
	mov	r3, lr	@, <variable>.s32MaxHeight
	str	r0, [sp, #12]	@ tmp242,
	add	lr, sp, #72	@ tmp244,,
	mov	r0, #16	@ tmp245,
	str	r1, [sp, #0]	@ tmp240,
	str	r0, [sp, #20]	@ tmp245,
	mov	r1, r7	@, ChanMemDetail$ChanMemVdh$Length
	str	lr, [sp, #16]	@ tmp244,
	mov	r0, r6	@, ChanMemDetail$ChanMemVdh$PhyAddr
	blx	ip	@ D.36924
	cmp	r0, #0	@,
	bne	.L384	@,
	ldr	r3, [r4, r5, asl #2]	@ tmp248, s_pstVfmwChan
	ldr	r2, [sp, #76]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
.L387:
	ldr	ip, [r4, r5, asl #2]	@ temp.2402, s_pstVfmwChan
	sub	r7, r7, #16	@ tmp258, ChanMemDetail$ChanMemVdh$Length,
	mov	r0, #0	@ D.36930,
	ldr	r3, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	r6, r3, r6	@ tmp256, <variable>.s32OffLineDNRMemSize, ChanMemDetail$ChanMemVdh$PhyAddr
	str	r6, [ip, #228]	@ tmp256, <variable>.s32VdmChanMemAddr
	ldr	r1, [r4, r5, asl #2]	@ temp.2403, s_pstVfmwChan
	ldr	r2, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	rsb	r7, r2, r7	@ tmp260, <variable>.s32OffLineDNRMemSize, tmp258
	str	r7, [r1, #232]	@ tmp260, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, r5, asl #2]	@ temp.2405, s_pstVfmwChan
	ldr	r3, [ip, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r1, r3, #14336	@ tmp264, <variable>.s32VdmChanMemSize,
	str	r1, [ip, #232]	@ tmp264, <variable>.s32VdmChanMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.2406, s_pstVfmwChan
	ldr	r2, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	ip, r2, #32768	@ tmp268, <variable>.s32VdmChanMemSize,
	str	ip, [r3, #232]	@ tmp268, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, r5, asl #2]	@ temp.2408, s_pstVfmwChan
	ldr	r1, [ip, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [ip, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	r3, r1, r2	@ tmp270, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r1, r3, #15	@ tmp273, tmp270,
	bic	r2, r1, #15	@ tmp274, tmp273,
	str	r2, [ip, #260]	@ tmp274, <variable>.s32BpdChanMemAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp276, s_pstVfmwChan
	mov	r1, #14336	@ tmp277,
	str	r1, [r3, #264]	@ tmp277, <variable>.s32BpdChanMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.2411, s_pstVfmwChan
	ldr	ip, [r3, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	ldr	r1, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r2, ip, r2	@ tmp279, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	ip, r2, #15	@ tmp282, tmp279,
	add	r2, ip, r1	@ tmp283, tmp282, <variable>.s32BpdChanMemSize
	bic	ip, r2, #15	@ tmp285, tmp283,
	str	ip, [r3, #268]	@ tmp285, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp287, s_pstVfmwChan
	mov	r2, #32768	@ tmp288,
	str	r2, [r3, #272]	@ tmp288, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@ tmp290, s_pstVfmwChan
	str	ip, [r1, #244]	@, <variable>.s32ScdChanMemAddr
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r3, [r4, r5, asl #2]	@ tmp292, s_pstVfmwChan
	str	r2, [r3, #256]	@, <variable>.s32ScdChanMemSize
.L386:
	add	sp, sp, #492	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L389:
	ldr	r1, [r4, r5, asl #2]	@ prephitmp.2368, s_pstVfmwChan
	ldr	r8, [r1, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r8, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L379	@,
	ldr	r0, [r1, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r0, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L379	@,
	ldr	r9, [r1, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r9, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L379	@,
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r9, [sp, #40]	@, %sfp
	ldr	sl, [sp, #28]	@, %sfp
	add	r0, fp, r9	@ tmp183,,
	cmp	sl, #1	@,
	cmpeq	r0, r6	@, tmp183, ChanMemDetail$ChanMemVdh$PhyAddr
	bne	.L379	@,
	str	r9, [r1, #160]	@, <variable>.stChanMem.PhyAddr
	add	r9, fp, r7	@ tmp193,, ChanMemDetail$ChanMemVdh$Length
	ldr	r0, [r4, r5, asl #2]	@ tmp190, s_pstVfmwChan
	str	ip, [r0, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem.VirAddr
	ldr	r1, [r4, r5, asl #2]	@ tmp192, s_pstVfmwChan
	str	r9, [r1, #164]	@ tmp193, <variable>.stChanMem.Length
	ldr	fp, [r4, r5, asl #2]	@ tmp195, s_pstVfmwChan
	str	r8, [fp, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L380	@
.L381:
	mov	r1, #0	@ tmp250,
	str	r1, [r2, #236]	@ tmp250, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [sl, r5, asl #2]	@ tmp252, s_pstVfmwChan
	str	r1, [ip, #240]	@ tmp250, <variable>.s32OffLineDNRMemSize
	b	.L387	@
.L384:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36930,
	b	.L386	@
	.fnend
	.size	VCTRL_ConfigMemInfo, .-VCTRL_ConfigMemInfo
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ event_report
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L398	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp139,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp139,
	streq	r1, [r3, #256]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L399	@,
	mov	r3, r0	@, eType
	ldr	r2, .L400	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35921,
	ldmfd	sp!, {r3, pc}	@
.L399:
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r0, #0	@ D.35921,
	str	r1, [r3, #260]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
.L398:
	mov	r0, r1	@, event_report
	movw	r2, #715	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35921,
	ldmfd	sp!, {r3, pc}	@
.L401:
	.align	2
.L400:
	.word	.LANCHOR1+352
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L413	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [ip, r0, asl #2]	@ D.35890, s_pstVfmwChan
	cmp	r3, #0	@ D.35890,
	beq	.L414	@,
	ldr	r3, [r3, #20]	@ eType, <variable>.eAdapterType
	cmp	r3, #0	@ eType,
	bne	.L415	@,
	ldr	r3, [ip, #256]	@ D.35893, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.35893,
	beq	.L416	@,
.L410:
	blx	r3	@ D.35899
	ldmfd	sp!, {r3, pc}	@
.L415:
	cmp	r3, #1	@ eType,
	beq	.L417	@,
	ldr	r2, .L418	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L417:
	ldr	r3, [ip, #260]	@ D.35899, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.35899,
	bne	.L410	@,
	mov	r0, r3	@, D.35899
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L416:
	mov	r0, r3	@, D.35893
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L413:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #676	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC54	@,
	movt	r3, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L414:
	mov	r0, r3	@, D.35890
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #677	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L419:
	.align	2
.L418:
	.word	.LANCHOR1+372
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	beq	.L430	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L431	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L432	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L433	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L434	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L435	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L436	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L437	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.35622,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L422:
	mov	r0, r5	@, D.35622
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L430:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC58	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L435:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC63	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L434:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC62	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L433:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC61	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L432:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC60	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L431:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC59	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L436:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC64	@,
	mvn	r5, #0	@ D.35622,
	bl	dprint_vfmw	@
	b	.L422	@
.L438:
	.align	2
.L437:
	.word	.LANCHOR0+68
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1816:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp177,
	movt	r5, #:upper16:.LANCHOR0	@ tmp177,
	mov	r6, r0	@ ChanId, ChanId
	movw	r1, #:lower16:211832	@ tmp140,
	movt	r1, #:upper16:211832	@ tmp140,
	ldr	r0, [r5, r0, asl #2]	@ D.40486, s_pstVfmwChan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r1]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #13	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L440	@
.L449:
	.word	.L441
	.word	.L442
	.word	.L443
	.word	.L444
	.word	.L440
	.word	.L445
	.word	.L446
	.word	.L440
	.word	.L440
	.word	.L440
	.word	.L447
	.word	.L447
	.word	.L447
	.word	.L448
.L448:
	add	r0, r0, #210944	@, D.40486,
	add	r0, r0, #896	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L450:
	add	r2, r4, #1	@ tmp158, ret,
	cmp	r2, #1	@ tmp158,
	bhi	.L451	@,
.L458:
	ldr	r3, [r5, #20]	@ g_event_report.835, g_event_report
	cmp	r3, #0	@ g_event_report.835,
	beq	.L453	@,
	add	r2, sp, #8	@ tmp161,,
	mov	ip, #1	@ tmp160,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp160, para
	blx	r3	@ g_event_report.835
.L453:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L440:
	mvn	r4, #0	@ ret,
	add	r2, r4, #1	@ tmp158, ret,
	cmp	r2, #1	@ tmp158,
	bls	.L458	@,
.L451:
	movw	r3, #:lower16:g_chipID	@ tmp162,
	movt	r3, #:upper16:g_chipID	@ tmp162,
	ldr	r3, [r3, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L453	@,
	mov	r1, #1	@ tmp165,
	mov	r3, r1, asl r3	@ tmp164, tmp165,
	tst	r3, #3904	@ tmp164,
	bne	.L455	@,
	movw	r2, #:lower16:98367	@ tmp168,
	movt	r2, #:upper16:98367	@ tmp168,
	and	r0, r3, r2	@ tmp168, tmp164, tmp168
	cmp	r0, #0	@ tmp168,
	beq	.L453	@,
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	movw	r1, #:lower16:.LC65	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC65	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L453	@
.L441:
	add	r4, r0, #210944	@, D.40486,
	add	r0, r4, #896	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L442:
	add	r3, r0, #210944	@, D.40486,
	add	r0, r3, #896	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L443:
	add	r2, r0, #210944	@, D.40486,
	add	r0, r2, #896	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L444:
	add	r0, r0, #210944	@, D.40486,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L445:
	add	lr, r0, #210944	@, D.40486,
	add	r0, lr, #896	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L446:
	add	ip, r0, #210944	@, D.40486,
	add	r0, ip, #896	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L447:
	add	r1, r0, #210944	@, D.40486,
	add	r0, r1, #896	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L450	@
.L455:
	ldr	r3, [r5, #20]	@ g_event_report.2517, g_event_report
	cmp	r3, #0	@ g_event_report.2517,
	beq	.L456	@,
	add	r2, sp, #8	@ tmp173,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2517
.L456:
	movw	r1, #:lower16:.LC66	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC66	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L453	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.type	VfmwProc_SaveYUV, %function
VfmwProc_SaveYUV:
	.fnstart
.LFB1791:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L463	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #264]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r6, #0	@ vfmw_save_yuv_file,
	beq	.L464	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #264]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #264]	@ tmp155, vfmw_save_yuv_file
.L463:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L464:
	ldr	lr, [r4, #268]	@ save_file_cnt.780, save_file_cnt
	add	r7, sp, #12	@ str.776,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC67	@,
	mov	r0, r7	@, str.776
	movt	r2, #:upper16:.LC67	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.780,
	str	lr, [sp, #0]	@ save_file_cnt.780,
	str	ip, [r4, #268]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.776
	mov	r2, r6	@, vfmw_save_yuv_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #272]	@ dat, save_yuv_chan_num
	cmp	r0, #0	@ vfmw_save_yuv_file.782,
	str	r0, [r4, #264]	@ vfmw_save_yuv_file.782, vfmw_save_yuv_file
	beq	.L462	@,
	mov	r2, r7	@, str.776
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L463	@
.L462:
	mov	r2, r7	@, str.776
	movw	r1, #:lower16:.LC69	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	b	.L463	@
	.fnend
	.size	VfmwProc_SaveYUV, .-VfmwProc_SaveYUV
	.align	2
	.type	VfmwProc_SaveSeg, %function
VfmwProc_SaveSeg:
	.fnstart
.LFB1790:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L469	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #276]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r6, #0	@ vfmw_save_seg_file,
	beq	.L470	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #276]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #276]	@ tmp155, vfmw_save_seg_file
.L469:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L470:
	ldr	lr, [r4, #280]	@ save_file_cnt.771, save_file_cnt
	add	r7, sp, #12	@ str.767,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC71	@,
	mov	r0, r7	@, str.767
	movt	r2, #:upper16:.LC71	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.771,
	str	lr, [sp, #0]	@ save_file_cnt.771,
	str	ip, [r4, #280]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.767
	mov	r2, r6	@, vfmw_save_seg_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #284]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ vfmw_save_seg_file.773,
	str	r0, [r4, #276]	@ vfmw_save_seg_file.773, vfmw_save_seg_file
	beq	.L468	@,
	mov	r2, r7	@, str.767
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	b	.L469	@
.L468:
	mov	r2, r7	@, str.767
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L469	@
	.fnend
	.size	VfmwProc_SaveSeg, .-VfmwProc_SaveSeg
	.align	2
	.type	VfmwProc_Savestream, %function
VfmwProc_Savestream:
	.fnstart
.LFB1789:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L475	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r6, #0	@ vfmw_save_str_file,
	beq	.L476	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #288]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #288]	@ tmp155, vfmw_save_str_file
.L475:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L476:
	ldr	lr, [r4, #292]	@ save_file_cnt.762, save_file_cnt
	add	r7, sp, #12	@ str.758,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC75	@,
	mov	r0, r7	@, str.758
	movt	r2, #:upper16:.LC75	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.762,
	str	lr, [sp, #0]	@ save_file_cnt.762,
	str	ip, [r4, #292]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.758
	mov	r2, r6	@, vfmw_save_str_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #296]	@ dat, save_str_chan_num
	cmp	r0, #0	@ vfmw_save_str_file.764,
	str	r0, [r4, #288]	@ vfmw_save_str_file.764, vfmw_save_str_file
	beq	.L474	@,
	mov	r2, r7	@, str.758
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	b	.L475	@
.L474:
	mov	r2, r7	@, str.758
	movw	r1, #:lower16:.LC77	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	b	.L475	@
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VfmwProc_Save1DYUV, %function
VfmwProc_Save1DYUV:
	.fnstart
.LFB1793:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, ip, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	.pad #64
	sub	sp, sp, #64	@,,
	ldmib	r0, {r7, r8}	@ phole ldm
	beq	.L484	@,
	add	r5, sp, #12	@ tmp153,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC80	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC80	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp153
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp153
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L480	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	ldr	ip, [r3, #96]	@ D.40254, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.40254,
	beq	.L481	@,
	mov	r1, #1	@ tmp147,
	mov	r2, r7	@, D.40242
	str	r1, [sp, #0]	@ tmp147,
	mov	r3, r8	@, D.40244
	mov	r1, r4	@, ptr
	blx	ip	@ D.40254
.L482:
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC82	@,
	mov	r2, r5	@, tmp153
	movt	r1, #:upper16:.LC82	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L479:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L481:
	mov	r0, ip	@, D.40254
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7639	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L482	@
.L484:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L479	@
.L480:
	mov	r2, r5	@, tmp153
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L479	@
	.fnend
	.size	VfmwProc_Save1DYUV, .-VfmwProc_Save1DYUV
	.align	2
	.type	VfmwProc_SaveOneYUV, %function
VfmwProc_SaveOneYUV:
	.fnstart
.LFB1792:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, ip, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	.pad #64
	sub	sp, sp, #64	@,,
	beq	.L490	@,
	add	r5, sp, #12	@ tmp139,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC84	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC84	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp139
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp139
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L488	@,
	mov	r2, r6	@, fp
	mov	r1, #3145728	@,
	mov	r0, r4	@, ptr
	bl	klib_fwrite	@
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC85	@,
	mov	r2, r5	@, tmp139
	movt	r1, #:upper16:.LC85	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L487:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L488:
	mov	r2, r5	@, tmp139
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L487	@
.L490:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L487	@
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
	.align	2
	.type	VfmwProc_SetDNRCfg, %function
VfmwProc_SetDNRCfg:
	.fnstart
.LFB1787:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r2, [r0, #0]	@ dat,* p_args
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, r2, lsr #27	@ D.40108, dat,
	cmp	r0, #4	@ D.40108,
	bhi	.L495	@,
	mov	r3, r2, asl #20	@ tmp153, dat,
	mov	r1, sp	@,
	ubfx	ip, r2, #26, #1	@ tmp140, dat,,
	strb	ip, [sp, #0]	@ tmp140, DnrChanCfgArgs.s32MirrorEn
	mov	lr, r3, lsr #20	@ tmp153, tmp153,
	ubfx	ip, r2, #25, #1	@ tmp144, dat,,
	ubfx	r3, r2, #24, #1	@ tmp148, dat,,
	str	lr, [sp, #8]	@ tmp153, DnrChanCfgArgs.s32VcmpWmEndLine
	ubfx	r2, r2, #12, #12	@ tmp151, dat,,
	strb	ip, [sp, #1]	@ tmp144, DnrChanCfgArgs.s32VcmpEn
	strb	r3, [sp, #2]	@ tmp148, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #4]	@ tmp151, DnrChanCfgArgs.s32VcmpWmStartLine
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L496	@,
.L494:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {pc}
.L496:
	movw	r1, #:lower16:.LC86	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	b	.L494	@
.L495:
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L494	@
	.fnend
	.size	VfmwProc_SetDNRCfg, .-VfmwProc_SetDNRCfg
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1774:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r3	@ Height, Height
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, r2, asl #1	@ tmp158, Width,
	mov	r9, r2	@ Width, Width
	mov	r2, #0	@,
	str	r1, [sp, #12]	@ ChromOfst, %sfp
	mul	r1, r6, r3	@, Height, tmp158
	ldr	sl, [sp, #56]	@ Stride, Stride
	ldr	r8, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r7, r0, #0	@ pFrameStore,
	beq	.L508	@,
	mul	r4, r9, r6	@ D.39852, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.39852, D.39852,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L499	@,
	cmp	r6, #0	@ Height,
	ble	.L500	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39852
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L500	@,
	cmp	fp, #0	@ tmp187,
	beq	.L501	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39852
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L500	@,
.L501:
	mov	r1, r4	@, D.39852
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.39852
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L501	@,
.L500:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	fp, r6, asr #1	@ D.39867, tmp165,
	cmp	fp, #0	@ D.39867,
	ble	.L502	@,
	add	r2, r4, #3	@ tmp169, D.39852,
	cmp	r4, #0	@ D.39852,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp172, Width, Width,
	movlt	r4, r2	@ D.39852, tmp169
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.39852,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.2685, tmp172,
	mov	r9, #0	@ y.2718,
.L503:
	cmp	r6, #0	@ pretmp.2685,
	ble	.L506	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.2685
	sub	ip, r6, #1	@ tmp180, pretmp.2685,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.2701,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L521	@,
	cmp	ip, #0	@ tmp182,
	beq	.L504	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.2685
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.2701
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.2701
	mov	r0, #3	@ ivtmp.2701,
	beq	.L521	@,
.L504:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.2701,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.2701
	add	r0, ip, #1	@ ivtmp.2701, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.2685
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L504	@,
.L521:
	add	r5, r5, r6	@ pU, pU, pretmp.2685
	add	lr, lr, r6	@ pV, pV, pretmp.2685
.L506:
	add	r9, r9, #1	@ y.2718, y.2718,
	cmp	r9, fp	@ y.2718, D.39867
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L503	@
.L502:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L499:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L508	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L508:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1773:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.39809, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.39809,
	beq	.L533	@,
	mov	r0, #0	@,
	blx	r3	@ D.39809
.L529:
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #28]	@ D.39814, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.39814,
	beq	.L530	@,
	blx	r0	@ D.39814
	ldmfd	sp!, {r4, pc}	@
.L530:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7035	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L533:
	mov	r0, r3	@, D.39809
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7027	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L529	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1772:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.39792, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.39792,
	beq	.L540	@,
	mov	r0, #0	@,
	blx	r3	@ D.39792
.L536:
	bl	SCDDRV_MaskInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #24]	@ D.39797, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.39797,
	beq	.L537	@,
	blx	r0	@ D.39797
	ldmfd	sp!, {r4, pc}	@
.L537:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7013	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L540:
	mov	r0, r3	@, D.39792
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7005	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L536	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
.LFB1767:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r0	@ ChanID, ChanID
	bhi	.L565	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp148,
	movt	r4, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r3, [r4, r0, asl #2]	@ D.39711, s_pstVfmwChan
	cmp	r3, #0	@ D.39711,
	beq	.L566	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L567	@,
	cmp	r1, #0	@ pImage,
	beq	.L568	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r8, asl #2]	@ temp.2810, s_pstVfmwChan
	cmp	r3, #0	@ temp.2810,
	movweq	r2, #6929	@,
	beq	.L564	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L569	@,
	add	r0, r4, #300	@, tmp148,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, r8, asl #2]	@ D.42881, s_pstVfmwChan
	movw	r1, #:lower16:176090	@ tmp169,
	movt	r1, #:upper16:176090	@ tmp169,
	add	r5, r2, #209920	@ pDSDFrame, D.42881,
	ldrsb	r7, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r5, r5, #824	@ pDSDFrame, pDSDFrame,
	cmp	r7, #0	@ s32AllDecFrameNum,
	ble	.L549	@,
	ldr	r6, [r5], #16	@ <variable>.eFrameState, <variable>.eFrameState
	sub	r4, r7, #1	@ tmp183, s32AllDecFrameNum,
	and	r4, r4, #1	@ tmp185, tmp183,
	cmp	r6, #1	@ <variable>.eFrameState,
	beq	.L570	@,
.L554:
	mov	r6, #1	@ i,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	add	r5, r5, #16	@ ivtmp.2791, ivtmp.2791,
	ble	.L549	@,
	cmp	r4, #0	@ tmp185,
	beq	.L551	@,
	ldr	r3, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r3, r6	@ <variable>.eFrameState,
	beq	.L571	@,
.L556:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #16	@ ivtmp.2791, ivtmp.2791,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L551	@,
	b	.L549	@
.L550:
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #1	@ <variable>.eFrameState,
	beq	.L572	@,
.L559:
	add	r6, r6, #1	@ i, tmp186,
	add	r5, r4, #16	@ ivtmp.2791, tmp187,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	ble	.L549	@,
.L551:
	ldr	ip, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	mov	r4, r5	@ tmp187, ivtmp.2791
	add	r6, r6, #1	@ tmp186, i,
	cmp	ip, #1	@ <variable>.eFrameState,
	bne	.L550	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	mov	r0, r8	@, ChanID
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	lr, #1	@ <variable>.eFrameState,
	bne	.L559	@,
.L572:
	mov	r0, r8	@, ChanID
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	add	r6, r6, #1	@ i, tmp186,
	bl	DNR_FsIsInImgQue	@
	add	r5, r4, #16	@ ivtmp.2791, tmp187,
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L551	@,
.L549:
	ldr	r0, .L573	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L570:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L554	@
.L571:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L556	@
.L569:
	movw	r2, #6936	@,
.L564:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L567:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6923	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC90	@,
	movt	r3, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L565:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6921	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC88	@,
	movt	r3, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L568:
	mov	r0, r1	@, pImage
	movw	r2, #6924	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L566:
	mov	r0, r3	@, D.39711
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6922	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC89	@,
	movt	r3, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L574:
	.align	2
.L573:
	.word	.LANCHOR0+300
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1764:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r7, r2	@ pReadImgNum, pReadImgNum
	ldr	ip, [r4, r0, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r8, r3	@ pNewImgNum, pNewImgNum
	cmp	ip, #0	@ tmp141,
	beq	.L582	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.2836, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.39648, <variable>.eVidStd
	cmp	r3, #0	@ D.39648,
	beq	.L583	@,
	cmp	r3, #15	@ D.39648,
	movne	r3, #2	@ tmp148,
	strne	r3, [r6, #0]	@ tmp148,* pRefImgNum
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:.LC93	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC93	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L583:
	movw	r1, #:lower16:238464	@ tmp145,
	movt	r1, #:upper16:238464	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L582:
	mov	r0, ip	@, tmp141
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movw	r2, #6816	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
.LFB1723:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bls	.L601	@,
.L585:
	mov	r5, #0	@ pDecParam,
.L596:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L601:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r3, r0, asl #2]	@ D.40838, s_pstVfmwChan
	cmp	r4, #0	@ D.40838,
	beq	.L585	@,
	ldr	r0, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L585	@,
	ldr	r1, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L585	@,
	ldr	r5, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r5, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r5, asl #2]	@ <variable>.eVidStd
	b	.L585	@
.L598:
	.word	.L587
	.word	.L595
	.word	.L590
	.word	.L595
	.word	.L585
	.word	.L595
	.word	.L595
	.word	.L585
	.word	.L585
	.word	.L585
	.word	.L595
	.word	.L595
	.word	.L595
	.word	.L595
.L595:
	movw	r3, #:lower16:211844	@ tmp148,
	movt	r3, #:upper16:211844	@ tmp148,
	ldr	r5, [r4, r3]	@ pDecParam,
.L588:
	cmp	r5, #0	@ pDecParam,
	beq	.L596	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L587:
	movw	r2, #:lower16:212200	@ tmp141,
	movt	r2, #:upper16:212200	@ tmp141,
	ldr	r5, [r4, r2]	@ pDecParam,
	b	.L588	@
.L590:
	movw	ip, #:lower16:212876	@ tmp143,
	movt	ip, #:upper16:212876	@ tmp143,
	ldr	r5, [r4, ip]	@ pDecParam,
	b	.L588	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r3, r0, asl #2]	@ tmp139, s_pstVfmwChan
	ldr	r2, [r2, #880]	@ D.39496, <variable>.eVidStd
	sub	r1, r2, #10	@ tmp140, D.39496,
	cmp	r1, #2	@ tmp140,
	bhi	.L603	@,
	ldr	r3, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L605	@,
.L604:
	cmp	r2, #18	@ D.39496,
	bne	.L609	@,
.L605:
	mov	r0, #0	@ D.39510,
	ldmfd	sp!, {r3, pc}	@
.L603:
	cmp	r2, #14	@ D.39496,
	beq	.L605	@,
	cmp	r2, #4	@ D.39496,
	bne	.L604	@,
	mov	r0, #0	@ D.39510,
	ldmfd	sp!, {r3, pc}	@
.L609:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r0, #1	@ D.39510,
	ldmnefd	sp!, {r3, pc}	@
	b	.L605	@
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1724:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	mov	r2, r0	@ ChanId, ChanId
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bhi	.L611	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, r0, asl #2]	@ D.38138, s_pstVfmwChan
	cmp	r3, #0	@ D.38138,
	beq	.L611	@,
	ldr	r1, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L614	@,
	ldr	r5, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	beq	.L615	@,
.L614:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.38140,
.L613:
	mov	r0, r3	@, D.38140
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L611:
	mov	r3, r2	@, ChanId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC94	@,
	movw	r2, #4375	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.38140,
	b	.L613	@
.L615:
	str	r0, [sp, #4]	@ tmp2,
	bl	VCTRL_GetDecParam	@
	ldr	r2, [sp, #4]	@,
	subs	r6, r0, #0	@ pDecParam,
	beq	.L621	@,
	ldr	r0, [r4, r2, asl #2]	@ tmp154, s_pstVfmwChan
	mov	ip, #0	@ tmp155,
	mov	r3, ip	@ D.38140, tmp155
	str	ip, [r0, #680]	@ tmp155, <variable>.s32CountNoDecparamFlag
	ldr	r2, [r4, r2, asl #2]	@ tmp157, s_pstVfmwChan
	str	ip, [r2, #684]	@ tmp155, <variable>.u32NoDecparamStartTime
	b	.L613	@
.L621:
	ldr	r3, [r4, r2, asl #2]	@ temp.2906, s_pstVfmwChan
	ldr	r7, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r7, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L622	@,
	str	r2, [sp, #4]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sp, #4]	@,
	ldr	r3, [r4, r2, asl #2]	@ temp.2910, s_pstVfmwChan
	ldr	r1, [r3, #684]	@ D.38161, <variable>.u32NoDecparamStartTime
	cmp	r0, r1	@ tmp, D.38161
	bls	.L618	@,
	rsb	lr, r1, r0	@ tmp160, D.38161, tmp
	cmp	lr, #40	@ tmp160,
	movls	r3, r6	@ D.38140, pDecParam
	bls	.L613	@,
.L618:
	str	r6, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r5	@ D.38140, <variable>.s32IsRun
	ldr	r1, [r4, r2, asl #2]	@ tmp167, s_pstVfmwChan
	str	r6, [r1, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L613	@
.L622:
	str	r5, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r2, asl #2]	@ temp.2907, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r7	@ D.38140, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L613	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp285,
	movt	r4, #:upper16:.LANCHOR0	@ tmp285,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pSegMan, pSegMan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r4, r0, asl #2]	@ prephitmp.2933, s_pstVfmwChan
	ldr	r1, [r0, #32]	@ D.39431, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.39431,
	beq	.L635	@,
	sub	lr, r1, #2	@ tmp162, D.39431,
	cmp	r1, #6	@ D.39431,
	cmpne	lr, #1	@, tmp162,
	bls	.L626	@,
.L625:
	ldrd	r2, [r6, #32]	@ D.39472, pSegMan,
	mvn	r8, #0	@ tmp258,
	mvn	r9, #0	@,
	cmp	r3, r9	@ D.39472, tmp258
	cmpeq	r2, r8	@ D.39472, tmp258
	movne	r9, #944	@ tmp259,
	strned	r2, [r0, r9]	@ D.39472, prephitmp.2933, tmp259
	ldrne	r0, [r4, r5, asl #2]	@ prephitmp.2933, s_pstVfmwChan
.L633:
	ldrd	r8, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r2, #960	@ tmp261,
	mov	lr, #976	@ tmp265,
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	strd	r8, [r0, r2]	@ <variable>.CurrSeg.Usertag, prephitmp.2933, tmp261
	mov	r0, #29	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp264, s_pstVfmwChan
	ldrd	r8, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r8, [ip, lr]	@ <variable>.CurrSeg.DispTime, tmp264, tmp265
	ldr	lr, [r4, r5, asl #2]	@ tmp268, s_pstVfmwChan
	ldr	r3, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r3, [lr, #992]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp271, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #996]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp274, s_pstVfmwChan
	ldr	lr, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	lr, [r3, #1000]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, r5, asl #2]	@ tmp277, s_pstVfmwChan
	ldr	ip, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	ip, [lr, #1016]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	mov	lr, #944	@ tmp281,
	ldr	r3, [r4, r5, asl #2]	@ temp.2951, s_pstVfmwChan
	ldrd	r4, [r3, r2]	@ <variable>.stSynExtraData.Usertag, temp.2951, tmp261
	add	r2, r3, lr	@, temp.2951, tmp281
	ldrd	r2, [r2]	@ <variable>.stSynExtraData.pts,
	strd	r4, [sp]	@ <variable>.stSynExtraData.Usertag,
	bl	dprint_vfmw	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L635:
	movw	ip, #:lower16:211840	@ tmp154,
	movt	ip, #:upper16:211840	@ tmp154,
	ldr	r2, [r0, ip]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r3, [r2, #388]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L625	@,
.L626:
	add	r0, r0, #1264	@, prephitmp.2933,
	add	r2, r6, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L636	@,
.L627:
	ldr	r3, [r4, r5, asl #2]	@ temp.2954, s_pstVfmwChan
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L631	@,
.L630:
	ldrd	r0, [r6, #32]	@ temp.2978, pSegMan,
	mvn	r8, #0	@ tmp232,
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2978, tmp232
	cmpeq	r0, r8	@ temp.2978, tmp232
	movne	ip, #952	@ tmp233,
	strned	r0, [r3, ip]	@ temp.2978, temp.2954, tmp233
.L632:
	ldr	ip, [r4, r5, asl #2]	@ tmp235, s_pstVfmwChan
	mov	r2, #968	@ tmp236,
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r3, #984	@ tmp240,
	strd	r0, [ip, r2]	@ <variable>.CurrSeg.Usertag, tmp235, tmp236
	ldr	r2, [r4, r5, asl #2]	@ tmp239, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r2, r3]	@ <variable>.CurrSeg.DispTime, tmp239, tmp240
	ldr	ip, [r4, r5, asl #2]	@ tmp243, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp246, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r4, r5, asl #2]	@ tmp249, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, r5, asl #2]	@ tmp252, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldr	r3, [r4, r5, asl #2]	@ temp.2954, s_pstVfmwChan
.L631:
	mov	r0, #960	@ tmp256,
	add	r2, r3, r0	@, temp.2954, tmp256
	movw	r1, #:lower16:.LC97	@,
	mov	r0, #29	@,
	ldrd	r2, [r2]	@,
	movt	r1, #:upper16:.LC97	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	dprint_vfmw	@
.L636:
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2929, s_pstVfmwChan
	movw	r2, #:lower16:.LANCHOR0	@ tmp173,
	movt	r2, #:upper16:.LANCHOR0	@ tmp173,
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L637	@,
	mov	r1, #952	@ tmp179,
	mvn	r8, #0	@ tmp180,
	ldrd	r0, [r1, r3]	@ temp.2953, tmp179, prephitmp.2929
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2953, tmp180
	cmpeq	r0, r8	@ temp.2953, tmp180
	movne	r8, #944	@ tmp181,
	strned	r0, [r3, r8]	@ temp.2953, prephitmp.2929, tmp181
	ldrne	r3, [r2, r5, asl #2]	@ prephitmp.2929, s_pstVfmwChan
.L629:
	mov	r9, #952	@ tmp183,
	mvn	r0, #0	@ tmp184,
	mvn	r1, #0	@,
	strd	r0, [r3, r9]	@ tmp184, prephitmp.2929, tmp183
	ldr	ip, [r4, r5, asl #2]	@ temp.2955, s_pstVfmwChan
	mov	r8, #968	@ tmp187,
	mov	lr, #960	@ tmp186,
	mov	sl, #984	@ tmp191,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC96	@,
	ldrd	r2, [ip, r8]	@, temp.2955, tmp187
	movt	r1, #:upper16:.LC96	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp185,
	movt	r7, #:upper16:.LANCHOR0	@ tmp185,
	strd	r2, [ip, lr]	@, temp.2955, tmp186
	mov	lr, #976	@ tmp190,
	ldr	ip, [r4, r5, asl #2]	@ temp.2956, s_pstVfmwChan
	ldrd	r2, [ip, sl]	@, temp.2956, tmp191
	strd	r2, [ip, lr]	@, temp.2956, tmp190
	ldr	r3, [r4, r5, asl #2]	@ temp.2957, s_pstVfmwChan
	ldr	ip, [r3, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	ip, [r3, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r2, [r4, r5, asl #2]	@ temp.2958, s_pstVfmwChan
	ldr	lr, [r2, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	lr, [r2, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ temp.2959, s_pstVfmwChan
	ldr	ip, [r3, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	ip, [r3, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	mov	r3, #944	@ tmp204,
	ldr	r2, [r4, r5, asl #2]	@ temp.2960, s_pstVfmwChan
	ldr	lr, [r2, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	lr, [r2, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	ip, [r4, r5, asl #2]	@ tmp203, s_pstVfmwChan
	add	r2, ip, r3	@, tmp203, tmp204
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5, asl #2]	@ temp.2954, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r2, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L630	@,
	ldrd	r0, [r6, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	strd	r0, [r3, r9]	@ <variable>.CurrSeg.Pts, temp.2954, tmp183
	ldr	r2, [r7, r5, asl #2]	@ tmp211, s_pstVfmwChan
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	strd	r0, [r2, r8]	@ <variable>.CurrSeg.Usertag, tmp211, tmp187
	ldr	r3, [r7, r5, asl #2]	@ tmp215, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r3, sl]	@ <variable>.CurrSeg.DispTime, tmp215, tmp191
	ldr	ip, [r7, r5, asl #2]	@ tmp219, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r7, r5, asl #2]	@ tmp222, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r7, r5, asl #2]	@ tmp225, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r7, r5, asl #2]	@ tmp228, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	b	.L627	@
.L637:
	mov	sl, #952	@ tmp176,
	mov	r7, #944	@ tmp175,
	ldrd	r8, [r3, sl]	@ <variable>.stSynExtraData.NextPts, prephitmp.2929, tmp176
	strd	r8, [r3, r7]	@ <variable>.stSynExtraData.NextPts, prephitmp.2929, tmp175
	ldr	r3, [r2, r5, asl #2]	@ prephitmp.2929, s_pstVfmwChan
	b	.L629	@
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:g_ChanCtx	@ tmp133,
	movt	r4, #:upper16:g_ChanCtx	@ tmp133,
	mov	r1, #48	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #28]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #16]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #20]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #24]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1755:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L641	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	ldr	r3, [r3, #32]	@ D.39244, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.39244,
	beq	.L642	@,
	mov	r0, #0	@,
	blx	r3	@ D.39244
.L643:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L641:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.3046, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.3044, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.3046,
	ldr	r6, [r4, #20]	@ VirAddr.3045, <variable>.stScdCmnMem.VirAddr
	bne	.L650	@,
.L644:
	mov	r0, r7	@, PhyAddr.3044
	mov	r1, r6	@, VirAddr.3045
	mov	r2, r5	@, Length.3046
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.3053, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.3051, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3053,
	ldr	r6, [r4, #36]	@ VirAddr.3052, <variable>.VirAddr
	bne	.L651	@,
.L645:
	mov	r0, r7	@, PhyAddr.3051
	mov	r1, r6	@, VirAddr.3052
	mov	r2, r5	@, Length.3053
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.3058, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.3056, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.3058,
	ldr	r6, [r4, #68]	@ VirAddr.3057, <variable>.stBpdReg.VirAddr
	bne	.L652	@,
.L646:
	mov	r0, r7	@, PhyAddr.3056
	mov	r1, r6	@, VirAddr.3057
	mov	r2, r5	@, Length.3058
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.3063, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.3061, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3063,
	ldr	r6, [r4, #52]	@ VirAddr.3062, <variable>.VirAddr
	bne	.L653	@,
.L647:
	mov	r0, r7	@, PhyAddr.3061
	mov	r1, r6	@, VirAddr.3062
	mov	r2, r5	@, Length.3063
	bl	MEM_DelMemRecord	@
	ldr	r6, [r4, #92]	@ Length.3068, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.3066, <variable>.stSystemReg.PhyAddr
	cmp	r6, #0	@ Length.3068,
	ldr	r7, [r4, #84]	@ VirAddr.3067, <variable>.stSystemReg.VirAddr
	beq	.L648	@,
	mov	r0, r5	@, PhyAddr.3066
	mov	r1, r7	@, VirAddr.3067
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L648:
	mov	r1, r7	@, VirAddr.3067
	mov	r2, r6	@, Length.3068
	mov	r0, r5	@, PhyAddr.3066
	bl	MEM_DelMemRecord	@
	mov	r0, #70	@,
	ldr	r2, .L654	@,
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	osal_free_irq	@
	mov	r0, #73	@,
	ldr	r2, .L654	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	osal_free_irq	@
	mov	r0, #93	@,
	ldr	r2, .L654	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L653:
	mov	r0, r7	@, PhyAddr.3061
	mov	r1, r6	@, VirAddr.3062
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L647	@
.L652:
	mov	r0, r7	@, PhyAddr.3056
	mov	r1, r6	@, VirAddr.3057
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L646	@
.L651:
	mov	r0, r7	@, PhyAddr.3051
	mov	r1, r6	@, VirAddr.3052
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L645	@
.L650:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L644	@
.L642:
	mov	r0, r3	@, D.39244
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #6131	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L643	@
.L655:
	.align	2
.L654:
	.word	.LANCHOR0+308
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1754:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #4096	@,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	.pad #32
	sub	sp, sp, #32	@,,
	movw	r0, #:lower16:269680640	@,
	add	r2, r4, #32	@, pstDrvMem,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L657	@,
	add	r6, r4, #64	@ pstMem, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269733888	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269733888	@,
	mov	r2, r6	@, pstMem
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L681	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp163,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp163,
	ldr	r3, [r5, #16]	@ D.39122, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.39122,
	beq	.L681	@,
	blx	r3	@ D.39122
	cmp	r0, #0	@,
	bne	.L681	@,
	add	r7, r4, #48	@ pstMem.3094, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r7	@, pstMem.3094
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L679	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r7	@, pstMem.3094
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.39148,
	bne	.L679	@,
	add	r8, sp, #12	@ tmp175,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.39148
	mov	r0, r8	@, tmp175
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.43208, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.43208,
	beq	.L667	@,
	blx	r3	@ D.43208
	subs	r2, r0, #0	@ Size,
	ble	.L667	@,
	mov	r0, r8	@, tmp175
	mov	r1, r6	@, D.39148
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.39148,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L679	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.43201, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.43201,
	beq	.L679	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.43201
	subs	r5, r0, #0	@ D.43200,
	bne	.L679	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ pstMem.3101, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.43200
	mov	r3, r6	@, pstMem.3101
	str	r5, [sp, #0]	@ D.43200,
	mov	r2, r0	@ D.39165,
	movw	r0, #:lower16:.LC103	@,
	movt	r0, #:upper16:.LC103	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L681	@,
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stScdCmnMem.Length
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stScdCmnMem.Length
	movw	r2, #:lower16:269729792	@,
	movw	r3, #:lower16:270487672	@,
	movt	r2, #:upper16:269729792	@,
	movt	r3, #:upper16:270487672	@,
	bl	SM_OpenSCDDrv	@
	cmp	r0, #0	@,
	bne	.L681	@,
	ldr	r5, .L684	@ tmp198,
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	movw	r3, #:lower16:.LC99	@,
	movt	r3, #:upper16:.LC99	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L681	@,
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	movw	r3, #:lower16:.LC100	@,
	movt	r3, #:upper16:.LC100	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.39194,
	bne	.L681	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	movw	r3, #:lower16:.LC101	@,
	movt	r3, #:upper16:.LC101	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.39203
	bne	.L683	@,
.L660:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L683:
	bl	DNR_Close	@
	mov	r0, r7	@ D.39116, D.39194
	b	.L660	@
.L681:
	mov	r0, r6	@, pstMem.3101
.L682:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39116,
	b	.L660	@
.L657:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39116,
	b	.L660	@
.L667:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L679:
	mov	r0, r7	@, pstMem.3094
	b	.L682	@
.L685:
	.align	2
.L684:
	.word	.LANCHOR0+308
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1736:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L692	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r2, r0, asl #2]	@ D.38397, s_pstVfmwChan
	ldr	r3, [ip, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L693	@,
	cmp	r1, #0	@ pArgs,
	beq	.L694	@,
	mov	r5, r1	@ pArgs, pArgs
	add	ip, ip, #1424	@ tmp146, D.38397,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	mov	r4, #0	@ D.38395,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldr	r0, [r5, #0]	@ tmp149,* pArgs
	str	r0, [ip, #0]	@ tmp149, <variable>.stSynExtraData.stPvrInfo
.L688:
	mov	r0, r4	@, D.38395
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L693:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4995	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38395,
	b	.L688	@
.L692:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4994	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38395,
	b	.L688	@
.L694:
	mov	r0, r1	@, pArgs
	movw	r2, #4996	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38395,
	b	.L688	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L701	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L702	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.37237, s_pstVfmwChan
	cmp	r3, #0	@ D.37237,
	beq	.L703	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.37237,
	bl	memcpy	@
	mov	r0, #0	@ D.37233,
	ldmfd	sp!, {r3, pc}	@
.L701:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2874	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37233,
	ldmfd	sp!, {r3, pc}	@
.L703:
	mov	r0, r3	@, D.37237
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37233,
	ldmfd	sp!, {r3, pc}	@
.L702:
	mov	r0, r1	@, pstCfg
	movw	r2, #2875	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37233,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
.LFB1677:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	ip, r0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L711	@,
	cmp	r1, #0	@ pArgs,
	beq	.L712	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, r0, asl #2]	@ D.36107, s_pstVfmwChan
	cmp	r2, #0	@ D.36107,
	beq	.L713	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	r2, r2, #1584	@ tmp146, D.36107,
	add	r2, r2, #12	@ tmp146, tmp146,
	stmia	r2, {r0, r1}	@ tmp146,,
	ldr	r3, [r3, ip, asl #2]	@ temp.3184, s_pstVfmwChan
	ldr	r0, [r3, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp151, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.36103,
	cmp	r2, #1	@ tmp151,
	strhi	r0, [r3, #1596]	@ tmp153, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r3, pc}	@
.L711:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1228	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36103,
	ldmfd	sp!, {r3, pc}	@
.L713:
	mov	r0, r2	@, D.36107
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1230	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36103,
	ldmfd	sp!, {r3, pc}	@
.L712:
	mov	r0, r1	@, pArgs
	movw	r2, #1229	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36103,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
.LFB1674:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstFrameIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L719	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36063, s_pstVfmwChan
	cmp	r3, #0	@ D.36063,
	beq	.L720	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp143, D.36063,
	mov	ip, #0	@ D.36061,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L716:
	mov	r0, ip	@, D.36061
	ldmfd	sp!, {r3, pc}	@
.L720:
	mov	r0, r3	@, D.36063
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1176	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36061,
	b	.L716	@
.L719:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1175	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36061,
	b	.L716	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
.LFB1672:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstStreamIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L726	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36042, s_pstVfmwChan
	cmp	r3, #0	@ D.36042,
	beq	.L727	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp143, D.36042,
	mov	ip, #0	@ D.36040,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L723:
	mov	r0, ip	@, D.36040
	ldmfd	sp!, {r3, pc}	@
.L727:
	mov	r0, r3	@, D.36042
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1151	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36040,
	b	.L723	@
.L726:
	mov	r0, r1	@, pstStreamIntf
	movw	r2, #1150	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36040,
	b	.L723	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1743:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ ChanID, ChanID
	mov	r7, r1	@ pMem, pMem
	ldr	r3, [r5, r0, asl #2]	@ D.38626, s_pstVfmwChan
	cmp	r3, #0	@ D.38626,
	beq	.L738	@,
	ldr	r8, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L739	@,
	ldr	r3, [r3, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L740	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.38639,
	bne	.L741	@,
	mov	r1, r0	@, D.38639
	mov	r0, r6	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L742	@,
	mov	r1, sl	@, id
	mov	r0, r6	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, sl	@, id
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	mov	r4, r0	@ pLf,
	mov	r0, r8	@, <variable>.eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L743	@,
	ldr	r2, [r4, #408]	@ D.38654, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.38654,
	beq	.L736	@,
	ldr	r3, [r4, #412]	@ D.38656, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.38656,
	beq	.L736	@,
	ldr	ip, [r4, #416]	@ D.38658, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.38658,
	beq	.L736	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC113	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC113	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.38630,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r5, r6, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r1, [r2, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L730:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L741:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L739:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L740:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L736:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L742:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L738:
	mov	r0, r3	@, D.38626
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5331	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
.L743:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC112	@,
	movw	r2, #5367	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38630,
	b	.L730	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1742:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r9, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r5, r0	@ PicBufID,
	beq	.L768	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L747	@,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.38526,
.L746:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L747:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.38531,
	beq	.L769	@,
.L748:
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L770	@,
	str	r5, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	r6, #0	@ tmp179,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	fp, #1	@ tmp178,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	fp, [r4, #68]	@ tmp178, <variable>.DispEnableFlag
	str	r6, [r4, #72]	@ tmp179, <variable>.DispFrameDistance
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	str	r6, [r4, #76]	@ tmp179, <variable>.DistanceBeforeFirstFrame
	str	r6, [r4, #80]	@ tmp179, <variable>.GopNum
	ldr	lr, [r7, #28]	@ temp.3350, <variable>.s32LumaPhyAddr
	str	lr, [r4, #88]	@ temp.3350, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.3350
	str	lr, [r4, #120]	@ temp.3350, <variable>.luma_2d_phy_addr
	str	lr, [r4, #104]	@ temp.3350, <variable>.luma_phy_addr
	ldr	r8, [r7, #36]	@ temp.3351, <variable>.s32CbPhyAddr
	str	r8, [r4, #108]	@ temp.3351, <variable>.chrom_phy_addr
	str	r8, [r4, #92]	@ temp.3351, <variable>.top_chrom_phy_addr
	str	r8, [r4, #124]	@ temp.3351, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.38549, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.38549, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #52]	@ pDst, <variable>.chrom_2d_vir_addr
	mov	r8, r0	@ pDst,
	str	r0, [r4, #36]	@ pDst, <variable>.chrom_vir_addr
	cmp	r0, r6	@ pDst,
	ldr	r3, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp185, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #96]	@ tmp185, <variable>.btm_luma_phy_addr
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r6, [r4, #128]	@ tmp179, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp188, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #100]	@ tmp188, <variable>.btm_chrom_phy_addr
	ldr	ip, [r7, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #144]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #148]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp198,
	ldr	r0, [r7, #20]	@ temp.3356, <variable>.s32YWidth
	str	r0, [r4, #152]	@ temp.3356, <variable>.disp_width
	mov	r1, r0, lsr fp	@ tmp192, temp.3356,
	ldr	r3, [r7, #24]	@ temp.3358, <variable>.s32YHeight
	str	r1, [r4, #160]	@ tmp192, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.3358, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp193, temp.3358,
	str	ip, [r4, #164]	@ tmp193, <variable>.disp_center_y
	ldr	r0, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #140]	@ tmp198, <variable>.format
	str	r6, [r4, #168]	@ tmp179, <variable>.frame_rate
	str	r0, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #180]	@ tmp179, <variable>.error_level
	str	fp, [r4, #208]	@ tmp178, <variable>.chroma_idc
	str	r6, [r4, #256]	@ tmp179, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp179, <variable>.line_num_vir_addr
	beq	.L750	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L762	@,
	b	.L752	@
.L772:
	ldr	r2, [r4, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L771	@,
.L754:
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r6, r6, #1	@ y, y,
	ldr	r2, [r4, #172]	@ D.38608, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	bge	.L752	@,
.L774:
	add	r8, r8, r2	@ pDst, pDst, D.38608
.L762:
	ldr	r3, [r7, #0]	@ D.38570, <variable>.enFmt
	cmp	r3, #0	@ D.38570,
	beq	.L772	@,
	cmp	r3, #1	@ D.38570,
	beq	.L754	@,
	cmp	r3, #3	@ D.38570,
	beq	.L773	@,
	cmp	r3, #2	@ D.38570,
	bne	.L758	@,
	mov	r1, sl	@, pSrc
	ldr	r2, [r4, #144]	@, <variable>.image_width
	mov	r0, r8	@, pDst
	add	r6, r6, #1	@ y, y,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	sl, sl, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	ldr	r2, [r4, #172]	@ D.38608, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	blt	.L774	@,
.L752:
	mov	r6, #18	@ tmp235,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #1	@,
	str	r6, [r4, #300]	@ tmp235, <variable>.ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp236,
	movt	r3, #:upper16:.LANCHOR0	@ tmp236,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, r6	@, tmp235
	mov	r0, r9	@, ChanID
	ldr	r2, [r3, r9, asl #2]	@ D.38611, s_pstVfmwChan
	add	ip, r2, #210944	@, D.38611,
	add	r2, ip, #896	@, tmp2,
	add	r3, ip, #904	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.38526,
	beq	.L746	@,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r6, #0	@ tmp242,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #196]	@, <variable>.p_usrdat
	str	r6, [r4, #192]	@ tmp242, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r4, #196]	@ tmp242, <variable>.p_usrdat
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, r6	@, tmp242
	bl	FSP_SetDisplay	@
.L767:
	mvn	r0, #0	@ D.38526,
	b	.L746	@
.L771:
	mov	r1, #128	@,
	mov	r0, r8	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L754	@
.L773:
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L756	@,
	mov	r0, #0	@ x.3374,
	mov	r2, sl	@ ivtmp.3331, pSrc
	mov	r3, r0	@ x, x.3374
.L757:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp204,* ivtmp.3331
	mov	lr, r0	@ tmp207, x.3374
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, r8]!	@ tmp204,
	mov	r0, r3	@ x.3374, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp209,
	add	r2, r2, #4	@ ivtmp.3331, ivtmp.3331,
	strb	ip, [lr, #1]	@ tmp209,
	ldr	r1, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L757	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L756:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L754	@
.L758:
	cmp	r3, #4	@ D.38570,
	bne	.L767	@,
	ldr	r0, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L760	@,
	mov	r0, #0	@ x.621,
	mov	r2, sl	@ ivtmp.3337, pSrc
	mov	r3, r0	@ x.3370, x.621
.L761:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp220,* ivtmp.3337
	mov	r1, r8	@ tmp223, pDst
	add	r3, r3, #2	@ x.3370, x.3370,
	strb	lr, [r1, r0]!	@ tmp220,
	mov	r0, r3	@ x.621, x.3370
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp225,
	add	r2, r2, #4	@ ivtmp.3337, ivtmp.3337,
	strb	ip, [r1, #1]	@ tmp225,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.3370, <variable>.image_width
	bcc	.L761	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L760:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L754	@
.L769:
	ldr	r1, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L748	@,
	ldr	r2, [r7, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38526,
	b	.L746	@
.L768:
	ldr	r2, [r7, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.38526, PicBufID
	b	.L746	@
.L770:
	add	r0, r0, #22	@,,
	movw	r1, #:lower16:.LC117	@,
	movw	r2, #5171	@,
	movt	r1, #:upper16:.LC117	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38526,
	b	.L746	@
.L750:
	mov	r0, fp	@, tmp178
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38526,
	b	.L746	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1744:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	lr, [r3, r0, asl #2]	@ D.38671, s_pstVfmwChan
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	cmp	lr, #0	@ D.38671,
	beq	.L782	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L783	@,
	ldr	r2, [lr, #880]	@ D.38678, <variable>.eVidStd
	cmp	r2, #18	@ D.38678,
	bne	.L784	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #824	@ tmp146, D.38671,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r5, lr	@ tmp147, tmp146
	stmia	r5!, {r0, r1, r2, r3}	@ tmp147,,,,
	mov	lr, r5	@ tmp152, tmp147
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4, {r0, r1}	@ pUsrdecFrame,,
	stmia	lr, {r0, r1}	@ tmp154,,
	mov	r0, r6	@, ChanID
	mov	r1, ip	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.38683
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38675,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L784:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38675,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L783:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #5421	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC119	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38675,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L782:
	mov	r0, lr	@, D.38671
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5420	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38675,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1741:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L786	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L786:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1740:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.38471, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.38471, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ temp.3454, s_pstVfmwChan
	cmp	r2, #0	@ temp.3454,
	beq	.L789	@,
	add	r0, r2, #210944	@ tmp145, temp.3454,
	add	r2, r0, #896	@ tmp145, tmp145,
	cmp	r4, r2	@ pCtx, tmp145
	moveq	r3, #0	@ i,
	beq	.L790	@,
.L789:
	ldr	r2, [r3, #4]	@ temp.3456, s_pstVfmwChan
	cmp	r2, #0	@ temp.3456,
	beq	.L791	@,
	add	ip, r2, #210944	@ tmp148, temp.3456,
	add	r1, ip, #896	@ tmp148, tmp148,
	cmp	r4, r1	@ pCtx, tmp148
	moveq	r3, #1	@ i,
	beq	.L790	@,
.L791:
	ldr	r2, [r3, #8]	@ temp.3458, s_pstVfmwChan
	cmp	r2, #0	@ temp.3458,
	beq	.L792	@,
	add	r2, r2, #210944	@ tmp151, temp.3458,
	add	lr, r2, #896	@ tmp151, tmp151,
	cmp	r4, lr	@ pCtx, tmp151
	moveq	r3, #2	@ i,
	beq	.L790	@,
.L792:
	ldr	r3, [r3, #12]	@ D.40872, s_pstVfmwChan
	cmp	r3, #0	@ D.40872,
	beq	.L793	@,
	add	r0, r3, #210944	@ tmp154, D.40872,
	add	r3, r0, #896	@ tmp154, tmp154,
	cmp	r4, r3	@ pCtx, tmp154
	beq	.L794	@,
.L793:
	mvn	r1, #0	@ tmp156,
	mov	r0, #0	@,
	str	r1, [r4, #360]	@ tmp156, <variable>.ChanID
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.38484,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L794:
	mov	r3, #3	@ i,
.L790:
	mov	r0, #1	@ D.38484,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1745:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp181,
	movt	r3, #:upper16:.LANCHOR0	@ tmp181,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r3, r0, asl #2]	@ D.38706, s_pstVfmwChan
	cmp	r1, #0	@ D.38706,
	beq	.L815	@,
	ldr	r2, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L812	@
.L810:
	.word	.L800
	.word	.L801
	.word	.L802
	.word	.L803
	.word	.L804
	.word	.L805
	.word	.L806
	.word	.L812
	.word	.L812
	.word	.L812
	.word	.L807
	.word	.L807
	.word	.L807
	.word	.L808
	.word	.L804
	.word	.L812
	.word	.L812
	.word	.L812
	.word	.L809
.L812:
	ldmfd	sp!, {r4, pc}	@
.L807:
	ldr	ip, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	movw	r3, #:lower16:.LANCHOR0	@ tmp161,
	movt	r3, #:upper16:.LANCHOR0	@ tmp161,
	tst	ip, #1	@ g_VdmCharacter,
	bne	.L816	@,
.L804:
	ldr	r3, [r3, #76]	@ temp.3490, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ temp.3490,
	ldmeqfd	sp!, {r4, pc}	@
	add	lr, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, lr, #896	@,,
	blx	r3	@ temp.3490
	ldmfd	sp!, {r4, pc}	@
.L800:
	add	ip, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, ip, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_Init	@
.L801:
	add	r3, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r3, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_Init	@
.L802:
	add	r3, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r3, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_Init	@
.L803:
	add	r0, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_Init	@
.L806:
	add	r2, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r2, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_Init	@
.L805:
	add	r0, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_Init	@
.L808:
	add	r0, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_Init	@
.L809:
	add	r3, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r3, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	USERDEC_Init	@
.L816:
	add	r2, r1, #210944	@, D.38706,
	add	r1, r1, #888	@, D.38706,
	add	r0, r2, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_Init	@
.L815:
	mov	r0, r1	@, D.38706
	movw	r3, #:lower16:.LC27	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r2, #5448	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1734:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L834	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp166,
	movt	r3, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r0, [r3, r0, asl #2]	@ D.38342, s_pstVfmwChan
	cmp	r0, #0	@ D.38342,
	beq	.L835	@,
	ldr	r2, [r0, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L836	@,
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #14	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L822	@
.L832:
	.word	.L823
	.word	.L824
	.word	.L825
	.word	.L826
	.word	.L827
	.word	.L828
	.word	.L829
	.word	.L822
	.word	.L822
	.word	.L822
	.word	.L830
	.word	.L830
	.word	.L830
	.word	.L831
	.word	.L827
.L830:
	ldr	r3, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L837	@,
.L827:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L828:
	add	r1, r0, #210944	@, D.38342,
	add	r0, r1, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_GetImageBuffer	@
.L829:
	add	r2, r0, #210944	@, D.38342,
	add	r0, r2, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L831:
	add	r2, r0, #210944	@, D.38342,
	add	r0, r2, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_GetImageBuffer	@
.L822:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L823:
	add	r0, r0, #210944	@, D.38342,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L824:
	add	r0, r0, #210944	@, D.38342,
	add	r0, r0, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_GetImageBuffer	@
.L825:
	add	ip, r0, #210944	@, D.38342,
	add	r0, ip, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L826:
	add	r3, r0, #210944	@, D.38342,
	add	r0, r3, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L837:
	add	ip, r0, #210944	@, D.38342,
	add	r0, ip, #896	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_GetImageBuffer	@
.L836:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4878	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L834:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L835:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4877	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	bhi	.L863	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp224,
	movt	r5, #:upper16:.LANCHOR0	@ tmp224,
	ldr	r0, [r5, r0, asl #2]	@ D.39527, s_pstVfmwChan
	cmp	r0, #0	@ D.39527,
	beq	.L864	@,
	ldr	sl, [r0, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	sl, #1	@ <variable>.s32IsRun,
	bne	.L865	@,
	ldr	r7, [r0, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r7, #0	@ <variable>.s32StopSyntax,
	bne	.L866	@,
	str	r7, [r0, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r8, r4, asl #2	@ tmp225, ChanID,
	bl	OSAL_GetTimeInMs	@
	add	r2, r8, r5	@ tmp163, tmp225, tmp224
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp167,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp167,
	ldr	r3, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r6, r0	@ currtime,
	ldr	r0, [r2, #312]	@ tmp166, last_rec_pos_time
	rsb	r1, r0, r6	@ tmp165, tmp166, currtime
	mov	r0, r4	@, ChanID
	cmp	r1, r3	@ tmp165, g_TraceBsPeriod
	strhi	r6, [r2, #312]	@ currtime, last_rec_pos_time
	movls	sl, r7	@ rec_pos_print_flag, <variable>.s32StopSyntax
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.39544,
	mov	r7, r0	@ D.39544,
	beq	.L867	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L868	@,
	ldr	r9, [r5, r4, asl #2]	@ temp.3550, s_pstVfmwChan
	ldrb	r7, [r9, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r7, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	beq	.L858	@,
.L860:
	add	r7, r9, #1024	@ pSegMan, temp.3550,
.L850:
	mov	r6, #1072	@ tmp203,
	mov	r3, #1056	@ tmp201,
	ldrd	sl, [r9, r6]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.3550, tmp203
	mov	r0, #29	@,
	ldrd	r2, [r3, r9]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, tmp201, temp.3550
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp205,
	strd	sl, [sp]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r7	@, pSegMan
	mov	r0, r4	@, ChanID
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r5, r4, asl #2]	@ temp.3552, s_pstVfmwChan
	mov	r0, r7	@, pSegMan
	movt	r6, #:upper16:.LANCHOR0	@ tmp205,
	add	ip, r3, #210944	@, temp.3552,
	add	r2, ip, #896	@,,
	ldr	r1, [r3, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L869	@,
.L854:
	mov	r0, #0	@ D.39525,
.L840:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L858:
	ldr	lr, [r9, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L860	@,
	add	r7, r9, #1024	@ pSegMan, temp.3550,
	mov	r0, r4	@, ChanID
	add	r1, r7, #8	@, pSegMan,
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L850	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L870	@,
.L851:
	add	lr, r8, r5	@ tmp185, tmp225, tmp224
	movw	ip, #:lower16:g_NoStreamReportPeriod	@ tmp189,
	movt	ip, #:upper16:g_NoStreamReportPeriod	@ tmp189,
	movw	r2, #:lower16:.LANCHOR0	@ tmp182,
	ldr	r0, [lr, #328]	@ tmp188, last_rec_pos_report_time
	movt	r2, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r3, [ip, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r1, r0, r6	@ tmp187, tmp188, currtime
	cmp	r1, r3	@ tmp187, g_NoStreamReportPeriod
	bls	.L852	@,
	ldr	r3, [r2, #20]	@ g_event_report.673, g_event_report
	cmp	r3, #0	@ g_event_report.673,
	beq	.L853	@,
	mov	r0, r4	@, ChanID
	mov	r1, #117	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.673
.L853:
	add	r8, r8, r5	@ tmp195, tmp225, tmp224
	str	r6, [r8, #328]	@ currtime, last_rec_pos_report_time
.L852:
	ldr	r1, [r5, r4, asl #2]	@ tmp198, s_pstVfmwChan
	mov	r2, #1	@ tmp199,
	mvn	r0, #3	@ D.39525,
	str	r2, [r1, #672]	@ tmp199, <variable>.s32NoStreamFlag
	b	.L840	@
.L869:
	bl	OSAL_GetTimeInMs	@
	add	r6, r8, r6	@ tmp212, tmp225, tmp205
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp216,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp216,
	ldr	r1, [r6, #344]	@ tmp215, last_rec_pos_decparam_time
	ldr	r2, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.3553,
	rsb	r0, r1, r0	@ tmp214, tmp215, currtime.3553
	cmp	r0, r2	@ tmp214, g_TraceFramePeriod
	bls	.L854	@,
	mov	r0, r4	@, ChanID
	str	r3, [r6, #344]	@ currtime.3553, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.39525,
	b	.L840	@
.L868:
	cmp	sl, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.39525,
	bne	.L840	@
.L849:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.39525,
	b	.L840	@
.L865:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6597	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39525,
	b	.L840	@
.L866:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6598	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC125	@,
	movt	r3, #:upper16:.LC125	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39525,
	b	.L840	@
.L867:
	cmp	sl, #1	@ rec_pos_print_flag,
	movne	r0, r7	@ D.39525, D.39544
	bne	.L840	@
.L847:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.39525, D.39544
	b	.L840	@
.L863:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6595	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39525,
	b	.L840	@
.L870:
	movw	r1, #:lower16:.LC128	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC128	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L851	@
.L864:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6596	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39525,
	b	.L840	@
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp203,
	movt	r4, #:upper16:.LANCHOR0	@ tmp203,
	movw	r8, #:lower16:.LANCHOR0	@ tmp158,
	movt	r8, #:upper16:.LANCHOR0	@ tmp158,
	movw	r6, #:lower16:.LANCHOR0	@ tmp163,
	ldr	ip, [r4, #0]	@ D.39340, s_pstVfmwChan
	movt	r6, #:upper16:.LANCHOR0	@ tmp163,
	ldr	r7, [r4, #4]	@ temp.3602, s_pstVfmwChan
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	ip, #0	@ D.39340,
	ldr	r0, [r4, #8]	@ temp.3604, s_pstVfmwChan
	ldr	r2, [r4, #12]	@ temp.3589, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ temp.3602,
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	str	ip, [r4, #360]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r7, [r7, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.3604,
	str	r7, [r8, #364]	@ <variable>.s32Priority, ChanPriTab
	mov	r8, sp	@ tmp210,
	ldrne	r0, [r0, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.3589,
	mov	r7, #0	@ MaxPriChan,
	str	r0, [r6, #368]	@ <variable>.s32Priority, ChanPriTab
	movw	r6, #:lower16:.LANCHOR0	@ tmp209,
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r6, #:upper16:.LANCHOR0	@ tmp209,
	mvn	r0, #0	@ ret,
	str	r2, [r3, #372]	@ temp.3589, ChanPriTab
.L895:
	ldr	r3, [r4, #360]	@ MaxPri, ChanPriTab
	ldr	ip, [r4, #364]	@ MaxPri.3598, ChanPriTab
	ldr	r2, [r4, #368]	@ MaxPri.3599, ChanPriTab
	cmp	r3, ip	@ MaxPri, MaxPri.3598
	movlt	r3, ip	@ MaxPri, MaxPri.3598
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	ldr	ip, [r4, #372]	@ MaxPri.3600, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri.3599
	movlt	r3, r2	@ MaxPri, MaxPri.3599
	movlt	r5, #2	@ MaxPriChan,
	cmp	r3, ip	@ MaxPri, MaxPri.3600
	addge	r1, r5, #1	@ prephitmp.3570, MaxPriChan,
	movlt	r5, #3	@ MaxPriChan,
	movlt	r3, ip	@ MaxPri, MaxPri.3600
	movlt	r1, #4	@ prephitmp.3570,
	add	r2, r4, r5, asl #2	@, tmp180, tmp203, MaxPriChan,
	cmp	r3, #0	@ MaxPri,
	movw	r3, #:lower16:.LANCHOR0	@ tmp177,
	str	r7, [r2, #360]	@ MaxPriChan, ChanPriTab
	movt	r3, #:upper16:.LANCHOR0	@ tmp177,
	ble	.L885	@,
	ldr	r3, [r6, r5, asl #2]	@ D.39351, s_pstVfmwChan
	cmp	r3, #0	@ D.39351,
	beq	.L895	@,
	str	r1, [r6, #156]	@ prephitmp.3570, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L895	@,
	ldr	r1, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r1, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L887	@,
	ldr	sl, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	sl, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L899	@,
.L887:
	mov	sl, #0	@ i,
.L890:
	mov	r0, r5	@, MaxPriChan
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	bne	.L895	@,
	add	sl, sl, #1	@ i, i,
	cmp	sl, #200	@ i,
	beq	.L895	@,
	b	.L890	@
.L885:
	str	r7, [r3, #156]	@ MaxPriChan, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L899:
	mov	r0, r5	@, MaxPriChan
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L900	@,
.L888:
	ldr	sl, [r4, r5, asl #2]	@ temp.3590, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, r5, asl #2]	@ temp.3592, s_pstVfmwChan
	ldr	r0, [r3, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ MaxPriChan, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	r3, [r6, r5, asl #2]	@ tmp195, s_pstVfmwChan
	streq	r0, [r3, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r3, [r6, r5, asl #2]	@ temp.3596, s_pstVfmwChan
	strne	r7, [r3, #888]	@ MaxPriChan, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r0, [r3, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L887	@
.L900:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L888	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1737:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ tmp140, s_pstVfmwChan
	cmp	r3, #0	@ tmp140,
	beq	.L904	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L904	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L905	@,
	ldr	r1, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L905	@,
.L904:
	mvn	r0, #0	@ ret,
.L903:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L905:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L904	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L903	@,
	b	.L904	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1732:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp233,
	movt	r4, #:upper16:.LANCHOR0	@ tmp233,
	mov	r5, r0	@ ChanId, ChanId
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, [r4, r0, asl #2]	@ D.38289, s_pstVfmwChan
	cmp	r0, #0	@ D.38289,
	beq	.L932	@,
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L925	@
.L919:
	.word	.L911
	.word	.L912
	.word	.L913
	.word	.L914
	.word	.L925
	.word	.L915
	.word	.L916
	.word	.L925
	.word	.L925
	.word	.L925
	.word	.L917
	.word	.L917
	.word	.L917
	.word	.L918
.L918:
	add	r0, r0, #210944	@, D.38289,
	add	r0, r0, #896	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp230, s_pstVfmwChan
.L926:
	movw	r3, #:lower16:211844	@ tmp231,
	movt	r3, #:upper16:211844	@ tmp231,
	mov	lr, #0	@ tmp232,
	str	lr, [r2, r3]	@ tmp232,
.L925:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L911:
	add	r6, r0, #210944	@, D.38289,
	mov	r3, r2	@, pLumaInfo
	add	r0, r6, #896	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp149,
	str	r6, [sp, #0]	@ tmp149,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3678, s_pstVfmwChan
	movw	r4, #:lower16:225396	@ tmp151,
	movt	r4, #:upper16:225396	@ tmp151,
	movw	r7, #:lower16:.LANCHOR0	@ tmp150,
	movt	r7, #:upper16:.LANCHOR0	@ tmp150,
	ldrb	r0, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L933	@,
.L920:
	movw	lr, #:lower16:212200	@ tmp159,
	movt	lr, #:upper16:212200	@ tmp159,
	mov	ip, #0	@ tmp160,
	str	ip, [r2, lr]	@ tmp160,
	b	.L925	@
.L912:
	add	r2, r0, #210944	@, D.38289,
	movw	r6, #:lower16:290119	@ tmp211,
	add	r0, r2, #896	@,,
	movt	r6, #:upper16:290119	@ tmp211,
	bl	VC1DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3673, s_pstVfmwChan
.L930:
	ldrb	r1, [r2, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r4, #:lower16:.LANCHOR0	@ tmp210,
	movt	r4, #:upper16:.LANCHOR0	@ tmp210,
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	bne	.L926	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp214, s_pstVfmwChan
	mov	r0, #0	@ tmp216,
	strb	r0, [r3, r6]	@ tmp216,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3673, s_pstVfmwChan
	b	.L926	@
.L913:
	add	r0, r0, #210944	@, D.38289,
	movw	r6, #:lower16:.LANCHOR0	@ tmp176,
	add	r0, r0, #896	@,,
	movt	r6, #:upper16:.LANCHOR0	@ tmp176,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3676, s_pstVfmwChan
	movw	r4, #:lower16:234836	@ tmp177,
	movt	r4, #:upper16:234836	@ tmp177,
	ldrb	r3, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L934	@,
.L922:
	movw	r3, #:lower16:212876	@ tmp185,
	movt	r3, #:upper16:212876	@ tmp185,
	mov	lr, #0	@ tmp186,
	str	lr, [r2, r3]	@ tmp186,
	b	.L925	@
.L914:
	add	r2, r0, #210944	@, D.38289,
	movw	r6, #:lower16:285553	@ tmp164,
	add	r0, r2, #896	@,,
	movt	r6, #:upper16:285553	@ tmp164,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3652, s_pstVfmwChan
	b	.L930	@
.L915:
	mov	r0, #0	@,
	str	r1, [sp, #12]	@,
	bl	VDMDRV_GetSwitchRounding	@
	ldr	ip, [r4, r5, asl #2]	@ tmp203, s_pstVfmwChan
	ldr	r1, [sp, #12]	@,
	mov	r2, r0	@ D.38293,
	add	r0, ip, #210944	@, tmp203,
	add	r0, r0, #896	@,,
	bl	DIVX3DEC_VDMPostProc	@
.L927:
	ldr	r2, [r4, r5, asl #2]	@ tmp224, s_pstVfmwChan
	movw	r1, #:lower16:211844	@ tmp225,
	movt	r1, #:upper16:211844	@ tmp225,
	mov	ip, #0	@ tmp226,
	str	ip, [r2, r1]	@ tmp226,
	b	.L925	@
.L916:
	add	r6, r0, #210944	@, D.38289,
	add	r0, r6, #896	@,,
	movw	r6, #:lower16:228964	@ tmp190,
	bl	AVSDEC_VDMPostProc	@
	movt	r6, #:upper16:228964	@ tmp190,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3677, s_pstVfmwChan
	b	.L930	@
.L917:
	add	lr, r0, #210944	@, D.38289,
	add	r0, lr, #896	@,,
	bl	VP6DEC_VDMPostProc	@
	b	.L927	@
.L932:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movw	r2, #4639	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
.L934:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	ip, [r6, r5, asl #2]	@ tmp180, s_pstVfmwChan
	mov	r1, #0	@ tmp182,
	strb	r1, [ip, r4]	@ tmp182, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.3676, s_pstVfmwChan
	b	.L922	@
.L933:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r7, r5, asl #2]	@ tmp154, s_pstVfmwChan
	strb	r6, [r1, r4]	@ tmp149, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r7, r5, asl #2]	@ prephitmp.3678, s_pstVfmwChan
	b	.L920	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1733:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanId, ChanId
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r2	@ pLumaInfo, pLumaInfo
	bhi	.L941	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38307, s_pstVfmwChan
	cmp	r3, #0	@ D.38307,
	beq	.L942	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L938	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC124	@,
	mov	r0, #0	@,
	movw	r2, #4758	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L938:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, ChanId
	mov	r1, r6	@, ErrRatio
	mov	r2, r5	@, pLumaInfo
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L941:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC44	@,
	mov	r0, #0	@,
	movw	r2, #4756	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L942:
	mov	r0, r3	@, D.38307
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC123	@,
	movw	r2, #4757	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1720:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L955	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r0, [r4, r0, asl #2]	@ D.38050, s_pstVfmwChan
	cmp	r0, #0	@ D.38050,
	beq	.L956	@,
	ldr	r3, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L957	@,
	cmp	r1, #0	@ pImage,
	beq	.L958	@,
	mov	r2, r5	@, ChanID
	ldr	r3, [r1, #176]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, r5, asl #2]	@ temp.3730, s_pstVfmwChan
	cmp	r0, #0	@ temp.3730,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4180	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L954	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L959	@,
	add	r0, r0, #210944	@, temp.3730,
	mov	r1, r6	@, pImage
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L945:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L959:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	movw	r2, #4187	@,
	mov	r0, #0	@,
.L954:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L945	@
.L957:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4172	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L945	@
.L955:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4170	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L945	@
.L958:
	mov	r0, r1	@, pImage
	movw	r2, #4173	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC130	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L945	@
.L956:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4171	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L945	@
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC133	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC133	@,
	bl	dprint_vfmw	@
	cmp	r4, #3	@ ChanID,
	bhi	.L971	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp165,
	movt	r6, #:upper16:.LANCHOR0	@ tmp165,
	ldr	r0, [r6, r4, asl #2]	@ D.38020, s_pstVfmwChan
	cmp	r0, #0	@ D.38020,
	beq	.L972	@,
	ldr	r3, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L973	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, r4, asl #2]	@ temp.3758, s_pstVfmwChan
	cmp	r0, #0	@ temp.3758,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4086	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L970	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L974	@,
	add	r7, r0, #210944	@, temp.3758,
	mov	r1, r5	@, pImage
	add	r0, r7, #888	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r6, r4, asl #2]	@ tmp160, s_pstVfmwChan
	movw	ip, #:lower16:227924	@ tmp161,
	movt	ip, #:upper16:227924	@ tmp161,
	ldrb	r0, [r2, ip]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r0, [r5, #336]	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.optm_inf.bAvsPlus
.L962:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L973:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4079	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L962	@
.L974:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	movw	r2, #4093	@,
	mov	r0, #0	@,
.L970:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r7, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L962	@
.L971:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4075	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L962	@
.L972:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4076	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r7, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L962	@
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
.LFB1717:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L980	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.37952,
	ldmfd	sp!, {r3, pc}	@
.L980:
	mov	r0, r3	@, tmp138
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3843	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37952,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
.LFB1715:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	add	r4, sp, #8	@ tmp141,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, r4	@, tmp141
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, tmp141
	bl	VCTRL_GetChanCfg	@
	subs	r6, r0, #0	@ ret,
	bne	.L993	@,
	ldr	r3, [sp, #8]	@ D.37860, stCfgInfo.eVidStd
	cmp	r3, #0	@ D.37860,
	movne	r1, r6	@ prephitmp.3799, ret
	movne	r2, r6	@ ScdLowdlyEnable, ret
	beq	.L994	@,
.L985:
	movw	r4, #:lower16:.LANCHOR0	@ tmp146,
	movt	r4, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [r4, #376]	@ prephitmp.3800, g_DSPState
	cmp	ip, #0	@ prephitmp.3800,
	bne	.L986	@,
	ldr	ip, [r4, #380]	@ prephitmp.3800, g_DSPState
	cmp	ip, #0	@ prephitmp.3800,
	bne	.L986	@,
	ldr	ip, [r4, #384]	@ prephitmp.3800, g_DSPState
	cmp	ip, #0	@ prephitmp.3800,
	bne	.L986	@,
	ldr	ip, [r4, #388]	@ prephitmp.3800, g_DSPState
	cmp	ip, #0	@ prephitmp.3800,
	bne	.L986	@,
	cmp	r3, #6	@ D.37860,
	movne	r2, #0	@, temp.3811
	moveq	r2, #1	@, temp.3811
	tst	r1, #1	@ prephitmp.3799,
	bne	.L995	@,
	cmp	r2, #0	@ temp.3811,
	bne	.L996	@,
.L983:
	mov	r0, r6	@, ret
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L994:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	r1, #0	@, prephitmp.3799
	moveq	r1, #1	@, prephitmp.3799
	b	.L985	@
.L996:
	add	r5, r4, r5, asl #2	@, tmp175, tmp146, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp177,
	str	r0, [r5, #376]	@ tmp177, g_DSPState
	b	.L983	@
.L995:
	add	r4, r4, r5, asl #2	@, tmp166, tmp146, ChanID,
	mov	r0, r3	@, D.37860
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp168,
	str	r3, [r4, #376]	@ tmp168, g_DSPState
	b	.L983	@
.L986:
	cmp	ip, #2	@ prephitmp.3800,
	movne	r1, #0	@, tmp154
	andeq	r1, r1, #1	@,, tmp154, prephitmp.3799
	cmp	r1, #0	@ tmp154,
	bne	.L988	@,
	cmp	ip, #1	@ prephitmp.3800,
	cmpeq	r3, #6	@, D.37860,
	bne	.L983	@,
.L988:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	str	ip, [sp, #0]	@ prephitmp.3800,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L983	@
.L993:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC134	@,
	movw	r2, #3699	@,
	movt	r1, #:upper16:.LC134	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L983	@
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
.LFB1714:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.37821, s_pstVfmwChan
	cmp	r3, #0	@ D.37821,
	beq	.L1002	@,
	ldr	r2, [r3, #880]	@ D.37826, <variable>.eVidStd
	cmp	r2, #4	@ D.37826,
	cmpne	r2, #14	@, D.37826,
	bne	.L1003	@,
.L1000:
	mvn	r0, #0	@ D.37825,
	ldmfd	sp!, {r3, pc}	@
.L1003:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L1000	@
.L1002:
	mov	r0, r3	@, D.37821
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3659	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37825,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
.LFB1684:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r1, #64]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	mov	r4, r1	@ pstChan, pstChan
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	beq	.L1017	@,
.L1005:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L1018	@,
.L1006:
	ldr	r2, [r4, #44]	@ D.36305, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.36305,
	bne	.L1019	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L1020	@,
.L1008:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1021	@,
.L1009:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L1022	@,
.L1010:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L1011:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L1012	@,
.L1016:
	ldr	r0, [r4, #100]	@ prephitmp.3849, <variable>.stChanMem_pmv.PhyAddr
.L1013:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1021:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L1009	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.36323, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #96]	@ D.36323, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L1009	@
.L1018:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L1006	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L1006	@
.L1012:
	ldr	r0, [r4, #100]	@ D.36339, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.36339,
	beq	.L1013	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1016	@
.L1022:
	ldr	r0, [r4, #56]	@ D.36331, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36331,
	beq	.L1010	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1011	@
.L1019:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1008	@,
.L1020:
	ldr	r0, [r4, #40]	@ temp.3864, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.3864,
	beq	.L1008	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1009	@
.L1017:
	ldr	r0, [r1, #24]	@ D.36291, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36291,
	beq	.L1005	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1006	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1030	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, r0, asl #2]	@ D.37216, s_pstVfmwChan
	cmp	r3, #0	@ D.37216,
	beq	.L1031	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L1027	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2825	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r3, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37214,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1027:
	str	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r2, #0	@ tmp149,
	ldr	r3, [r4, r0, asl #2]	@ tmp148, s_pstVfmwChan
	str	r2, [r3, #8]	@ tmp149, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r6, r0, #0	@ s32Ret,
	mvnne	r0, #0	@ D.37214,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r6	@, s32Ret
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, ChanID
	bl	DNR_StopChan	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r1, [r4, r5, asl #2]	@ tmp151, s_pstVfmwChan
	mov	r0, r6	@ D.37214, s32Ret
	str	r6, [r1, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1030:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2823	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37214,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1031:
	mov	r0, r3	@, D.37216
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2824	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	movt	r3, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37214,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
.LFB1796:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStopChan, .-VfmwProc_TestStopChan
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1051	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp204,
	movt	r4, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r3, [r4, r0, asl #2]	@ D.37145, s_pstVfmwChan
	cmp	r3, #0	@ D.37145,
	beq	.L1052	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1053	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1054	@,
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp154, s_pstVfmwChan
	mov	r0, #0	@ tmp158,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp157, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp158, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3943, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1040	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	ldr	ip, [r4, #0]	@ temp.3962, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	ldr	lr, [r4, #4]	@ temp.3965, s_pstVfmwChan
	cmp	ip, #0	@ temp.3962,
	streq	ip, [r4, #392]	@ temp.3962, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp203,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp203,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp203,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp203,
	strne	r1, [r4, #392]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp180,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.3965,
	streq	lr, [r2, #396]	@ temp.3965, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp180,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.3968, s_pstVfmwChan
	strne	r0, [r2, #396]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp189,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.3968,
	streq	ip, [r1, #400]	@ temp.3968, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp189,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ D.37158, s_pstVfmwChan
	strne	r0, [r1, #400]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ D.37158,
	streq	lr, [r3, #12]	@ D.37158, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #404]	@ D.37158, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #404]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1055	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3943, s_pstVfmwChan
.L1040:
	ldr	r3, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1049	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L1049:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37143,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1053:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2698	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37143,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1051:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2696	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37143,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1054:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2699	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37143,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1052:
	mov	r0, r3	@, D.37145
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2697	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37143,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1056:
	.align	2
.L1055:
	.word	.LANCHOR0+392
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
.LFB1798:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStartChan, .-VfmwProc_TestStartChan
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1718:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp205,
	movt	r5, #:upper16:.LANCHOR0	@ tmp205,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.37970, s_pstVfmwChan
	cmp	r3, #0	@ D.37970,
	beq	.L1072	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	mov	r6, #0	@ tmp145,
	add	r0, r4, r4, asl #1	@, tmp153, ChanID, ChanID,
	add	r3, r5, #408	@ tmp150, tmp205,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp145, <variable>.s32CountNoDecparamFlag
	add	r0, r3, r0, asl #3	@,, tmp150, tmp153,
	ldr	ip, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	str	r6, [ip, #684]	@ tmp145, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r9, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r6, [r9, #1412]	@ tmp145, <variable>.stSynExtraData.s32KeepSPSPPS
	mvn	r9, #0	@,
	bl	InitSyntaxCtx	@
	ldr	r8, [r5, r4, asl #2]	@ tmp161, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r8, #1024	@, tmp161,
	mvn	r8, #0	@ tmp165,
	bl	__memzero	@
	ldr	r2, [r5, r4, asl #2]	@ tmp163, s_pstVfmwChan
	mov	r3, #944	@ tmp164,
	mov	r0, #952	@ tmp168,
	movw	r1, #:lower16:211792	@ tmp178,
	movt	r1, #:upper16:211792	@ tmp178,
	strd	r8, [r2, r3]	@ tmp165, tmp163, tmp164
	movw	r2, #:lower16:211784	@ tmp182,
	ldr	ip, [r5, r4, asl #2]	@ tmp167, s_pstVfmwChan
	movt	r2, #:upper16:211784	@ tmp182,
	movw	r3, #:lower16:211788	@ tmp186,
	movt	r3, #:upper16:211788	@ tmp186,
	strd	r8, [ip, r0]	@ tmp165, tmp167, tmp168
	ldr	r0, [r5, r4, asl #2]	@ tmp171, s_pstVfmwChan
	str	r6, [r0, #1272]	@ tmp145, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	ip, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	str	r6, [ip, #1620]	@ tmp145, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp177, s_pstVfmwChan
	str	r6, [r0, r1]	@ tmp145, <variable>.s32FindStartCodeCnt
	ldr	ip, [r5, r4, asl #2]	@ tmp181, s_pstVfmwChan
	str	r6, [ip, r2]	@ tmp145, <variable>.s32H264Score
	ldr	r1, [r5, r4, asl #2]	@ tmp185, s_pstVfmwChan
	str	r6, [r1, r3]	@ tmp145, <variable>.s32Mpeg2Score
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.4009, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp145, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.4009, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1063	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1064:
	mov	r0, r4	@, ChanID
	movw	r6, #:lower16:.LANCHOR0	@ tmp193,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r5, #56]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movt	r6, #:upper16:.LANCHOR0	@ tmp193,
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L1073	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1074	@,
.L1069:
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1075	@,
.L1070:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37974,
.L1061:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L1073:
	ldr	ip, [r6, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	lr, #0	@ tmp195,
	str	lr, [sp, #4]	@ tmp195, data
	cmp	ip, lr	@ vfmw_save_str_file,
	addeq	r8, sp, #4	@ prephitmp.4011,,
	beq	.L1067	@,
	add	r8, sp, #4	@ prephitmp.4011,,
	mov	r0, #512	@,
	mov	r1, r8	@, prephitmp.4011
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r6, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	beq	.L1067	@,
.L1068:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1069	@,
.L1074:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1070	@,
.L1075:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1070	@
.L1063:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1064	@
.L1067:
	mov	r1, r8	@, prephitmp.4011
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1068	@
.L1072:
	mov	r0, r3	@, D.37970
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #3856	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37974,
	b	.L1061	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
.LFB1797:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.type	VfmwProc_TestRestartChan, %function
VfmwProc_TestRestartChan:
	.fnstart
.LFB1799:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	mov	r3, r0	@ ret.4082,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	mov	r3, r0	@ ret.4083,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestRestartChan, .-VfmwProc_TestRestartChan
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1716:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp196,
	movt	r5, #:upper16:.LANCHOR0	@ tmp196,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r7, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.37901, s_pstVfmwChan
	cmp	r3, #0	@ D.37901,
	beq	.L1093	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L1094	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r6, #0	@ tmp148,
	add	r0, r4, r4, asl #1	@, tmp156, ChanID, ChanID,
	add	ip, r5, #408	@ tmp153, tmp196,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp148, <variable>.s32CountNoDecparamFlag
	add	r0, ip, r0, asl #3	@,, tmp153, tmp156,
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	str	r6, [r3, #684]	@ tmp148, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	ip, [r7, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	ldr	r2, [r5, r4, asl #2]	@ tmp160, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	ip, [r2, #1412]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4113, s_pstVfmwChan
	add	r1, r3, #210944	@, temp.4113,
	ldr	r0, [r3, #880]	@, <variable>.eVidStd
	add	r1, r1, #896	@,,
	bl	ReleaseCurPic	@
	ldr	r2, [r5, r4, asl #2]	@ tmp168, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r2, #1024	@, tmp168,
	bl	__memzero	@
	ldr	ip, [r5, r4, asl #2]	@ tmp170, s_pstVfmwChan
	mov	r0, #944	@ tmp171,
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp172,
	mov	r1, #952	@ tmp175,
	strd	r2, [ip, r0]	@ tmp172, tmp170, tmp171
	ldr	r0, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	strd	r2, [r0, r1]	@ tmp172, tmp174, tmp175
	ldr	ip, [r5, r4, asl #2]	@ tmp178, s_pstVfmwChan
	str	r6, [ip, #1272]	@ tmp148, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	r1, [r5, r4, asl #2]	@ tmp181, s_pstVfmwChan
	str	r6, [r1, #1620]	@ tmp148, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp184, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1084	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1085:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L1095	@,
.L1086:
	ldr	lr, [r5, #56]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movw	r5, #:lower16:.LANCHOR0	@ tmp187,
	movt	r5, #:upper16:.LANCHOR0	@ tmp187,
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L1087	@,
	ldr	r3, [r5, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r0, #0	@ tmp189,
	str	r0, [sp, #4]	@ tmp189, data
	cmp	r3, r0	@ vfmw_save_str_file,
	addeq	r6, sp, #4	@ prephitmp.4099,,
	beq	.L1089	@,
	add	r6, sp, #4	@ prephitmp.4099,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.4099
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r5, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L1089	@,
.L1090:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
.L1087:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L1096	@,
.L1091:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37905,
.L1082:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1095:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1086	@
.L1096:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1091	@
.L1084:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1085	@
.L1094:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC144	@,
	movw	r2, #3757	@,
	movt	r1, #:upper16:.LC144	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37905,
	b	.L1082	@
.L1089:
	mov	r1, r6	@, prephitmp.4099
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1090	@
.L1093:
	mov	r0, r3	@, D.37901
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3753	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37905,
	b	.L1082	@
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bhi	.L1114	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp219,
	movt	r4, #:upper16:.LANCHOR0	@ tmp219,
	ldr	r3, [r4, r0, asl #2]	@ D.37181, s_pstVfmwChan
	cmp	r3, #0	@ D.37181,
	beq	.L1115	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1116	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1117	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, r5, asl #2]	@ temp.4153, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, r5, asl #2]	@ tmp162, s_pstVfmwChan
	add	ip, ip, #168	@ tmp161, tmp162,
	stmia	ip, {r0, r1, r2, r3}	@ tmp161,,,,
	ldr	r3, [r4, r5, asl #2]	@ temp.4155, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r5	@, ChanID
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	mov	r0, #0	@ tmp174,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp173, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp174, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4137, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1103	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp187,
	ldr	ip, [r4, #0]	@ D.37198, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp187,
	ldr	lr, [r4, #4]	@ temp.4165, s_pstVfmwChan
	cmp	ip, #0	@ D.37198,
	streq	ip, [r4, #504]	@ D.37198, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp220,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp220,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp220,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp220,
	strne	r1, [r4, #504]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp196,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.4165,
	streq	lr, [r2, #508]	@ temp.4165, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp196,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.4168, s_pstVfmwChan
	strne	r0, [r2, #508]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp205,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.4168,
	streq	ip, [r1, #512]	@ temp.4168, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp205,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ temp.4161, s_pstVfmwChan
	strne	r0, [r1, #512]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.4161,
	streq	lr, [r3, #12]	@ temp.4161, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #516]	@ temp.4161, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #516]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1118	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4137, s_pstVfmwChan
.L1103:
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1112	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L1112:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37179,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1116:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2759	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37179,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1114:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2757	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37179,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1117:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2760	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37179,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1115:
	mov	r0, r3	@, D.37181
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2758	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37179,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1119:
	.align	2
.L1118:
	.word	.LANCHOR0+504
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1683:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	DNR_DisableChan	@
	mov	r0, r4	@, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp216,
	movt	r5, #:upper16:.LANCHOR0	@ tmp216,
	mov	r4, r0	@ ChanID, ChanID
	.pad #148
	sub	sp, sp, #148	@,,
	add	r0, r5, #520	@, tmp216,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #3	@ ChanID,
	bhi	.L1133	@,
	ldr	r6, [r5, r4, asl #2]	@ D.37101, s_pstVfmwChan
	cmp	r6, #0	@ D.37101,
	beq	.L1134	@,
	ldr	r3, [r6, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1135	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp158,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp160,
	movt	ip, #:upper16:g_FrameRate	@ tmp158,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp160,
	mov	r1, #30	@ tmp159,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, r4, asl #2]	@ tmp159, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, r4, asl #2]	@ tmp159, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@,
	bne	.L1136	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	movw	fp, #:lower16:s_DnrChan	@ tmp168,
	bl	OSAL_SpinLockIRQ	@
	movt	fp, #:upper16:s_DnrChan	@ tmp168,
	movw	r3, #:lower16:76696	@ tmp171,
	movt	r3, #:upper16:76696	@ tmp171,
	ldr	sl, [r5, r4, asl #2]	@ tmp175, s_pstVfmwChan
	mla	r9, r3, r4, fp	@ tmp172, tmp171, ChanID, tmp168
	ldr	r0, [sl, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	add	r8, r9, #75776	@ tmp173, tmp172,
	add	r7, r8, #912	@ tmp173, tmp173,
	str	r0, [r7, #4]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.s32DnrEnable
	ldr	r3, [r6, #880]	@ D.37114, <variable>.eVidStd
	cmp	r3, #4	@ D.37114,
	beq	.L1128	@,
	sub	lr, r3, #10	@ tmp177, D.37114,
	cmp	lr, #2	@ tmp177,
	bhi	.L1129	@,
	ldr	r1, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L1128	@,
.L1130:
	mov	r0, r4	@, ChanID
	add	r6, sp, #68	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4220, s_pstVfmwChan
	add	lr, sp, #52	@,,
	movw	r1, #:lower16:211808	@ tmp188,
	add	ip, r3, #184	@, temp.4220,
	add	r7, r3, #104	@, temp.4220,
	ldr	r0, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movt	r1, #:upper16:211808	@ tmp188,
	str	lr, [sp, #12]	@, %sfp
	add	lr, sp, #116	@,,
	str	ip, [sp, #20]	@, %sfp
	add	r2, r3, #152	@ tmp191, temp.4220,
	str	r7, [sp, #24]	@, %sfp
	add	r7, sp, #128	@,,
	str	r6, [sp, #8]	@, %sfp
	add	r6, r4, #26	@, ChanID,
	str	r0, [sp, #108]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	sl, r3, #200	@ tmp193, temp.4220,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	fp, r3, #168	@ tmp195, temp.4220,
	str	lr, [sp, #4]	@, %sfp
	add	ip, r3, #210944	@ tmp202, temp.4220,
	str	r7, [sp, #0]	@, %sfp
	add	r8, sp, #36	@ tmp190,,
	str	r0, [sp, #100]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	r9, sp, #84	@ tmp192,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #868	@ tmp202, tmp202,
	str	r6, [sp, #28]	@, %sfp
	movw	lr, #:lower16:s_pFspInst	@ tmp206,
	movt	lr, #:upper16:s_pFspInst	@ tmp206,
	mov	r6, #0	@ tmp205,
	str	r0, [sp, #104]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	movw	r7, #:lower16:s_SmIIS	@ tmp203,
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	movt	r7, #:upper16:s_SmIIS	@ tmp203,
	str	r0, [sp, #112]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp191,,,,
	stmia	r8, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp193,,,,
	ldr	sl, [sp, #12]	@, %sfp
	stmia	r9, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	fp, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	sl, {r0, r1, r2, r3}	@,,,,
	ldr	sl, [sp, #20]	@, %sfp
	ldmia	sl, {r0, r1, r2, r3}	@,,,,
	ldr	sl, [sp, #8]	@, %sfp
	stmia	sl, {r0, r1, r2, r3}	@,,,,
	ldr	sl, [sp, #24]	@, %sfp
	ldmia	sl, {r0, r1, r2}	@,,,
	ldr	sl, [sp, #4]	@, %sfp
	stmia	sl, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp202,,,,
	ldr	ip, [sp, #28]	@, %sfp
	str	r6, [lr, r4, asl #2]	@ tmp205, s_pFspInst
	ldr	lr, [sp, #0]	@, %sfp
	str	r6, [r7, ip, asl #2]	@ tmp205, s_SmIIS.pSmInstArray
	str	r6, [r5, r4, asl #2]	@ tmp205, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, ChanID
	bl	DNR_CloseChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1137	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r8	@, tmp190
	bl	VCTRL_FreeChanResource	@
	mov	r0, r6	@ D.37099, tmp205
.L1124:
	add	sp, sp, #148	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1129:
	cmp	r3, #14	@ D.37114,
	bne	.L1130	@,
.L1128:
	ldr	r3, [r5, #72]	@ D.37121, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37121,
	beq	.L1130	@,
	add	ip, r6, #210944	@, D.37101,
	add	r0, ip, #896	@,,
	blx	r3	@ D.37121
	b	.L1130	@
.L1135:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC137	@,
	movw	r2, #2619	@,
	mov	r0, #0	@,
.L1132:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #520	@, tmp216,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37099,
	b	.L1124	@
.L1136:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r5, #520	@, tmp216,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37099,
	b	.L1124	@
.L1133:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movw	r2, #2599	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC2	@,
	b	.L1132	@
.L1134:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	mov	r0, r6	@, D.37101
	movw	r2, #2607	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC136	@,
	b	.L1132	@
.L1138:
	.align	2
.L1137:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r4, asl #2	@, tmp139, tmp136, ChanID,
	mov	r2, #0	@ tmp141,
	str	r2, [r3, #376]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #516
	sub	sp, sp, #516	@,,
	add	sl, sp, #480	@ tmp611,,
	mov	r8, r0	@ eCapLevel, eCapLevel
	mov	r7, r1	@ pChanOption, pChanOption
	add	r0, sp, #240	@,,
	mov	r1, #64	@,
	mov	r6, r2	@ flag, flag
	str	r3, [sp, #108]	@ OneChanMemFlag, %sfp
	bl	__memzero	@
	mov	r0, sl	@, tmp611
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r0, r6, #1	@ tmp196, flag
	movcc	r0, #0	@ tmp196
	cmp	r8, #25	@ eCapLevel,
	movw	r5, #:lower16:.LANCHOR0	@ tmp615,
	movt	r5, #:upper16:.LANCHOR0	@ tmp615,
	moveq	r0, #0	@, tmp196,
	cmp	r0, #0	@ tmp196,
	str	r7, [r5, #528]	@ pChanOption, pOption
	bne	.L1225	@,
	ldr	r3, [r7, #4]	@ D.40925, <variable>.Purpose
	cmp	r3, #2	@ D.40925,
	bhi	.L1226	@,
	beq	.L1227	@,
	cmp	r3, #1	@ D.40925,
	beq	.L1228	@,
.L1147:
	ldr	r4, [r7, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r6	@, flag
	mov	r0, r8	@, eCapLevel
	mov	r1, r7	@, pChanOption
	cmp	r4, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r4, #0	@ tmp212,
	strne	r4, [r7, #136]	@ tmp212, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r4, sp, #464	@ tmp213,,
	mov	r2, r4	@, tmp213
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.37000,
	bne	.L1229	@,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp213,,,,
	ldr	ip, [r7, #8]	@ D.44408, <variable>.MemAllocMode
	add	r4, sp, #448	@ tmp618,,
	cmp	ip, #1	@ D.44408,
	stmia	r4, {r0, r1, r2, r3}	@ tmp618,,,,
	beq	.L1230	@,
	cmp	ip, #2	@ D.44408,
	beq	.L1231	@,
	cmp	ip, #3	@ D.44408,
	beq	.L1232	@,
	movw	r1, #:lower16:.LC162	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC162	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
.L1143:
	mov	r0, r4	@, ChanID
	add	sp, sp, #516	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1229:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC146	@,
	mov	r2, #2400	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1225:
	movw	r1, #:lower16:.LC145	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC145	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1226:
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1227:
	ldr	r3, [r7, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r3, #0	@ <variable>.s32SlotWidth,
	beq	.L1146	@,
	ldr	r0, [r7, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r0, #0	@ <variable>.s32SlotHeight,
	bne	.L1147	@,
.L1146:
	movw	r1, #:lower16:.LC38	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC38	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1228:
	ldr	r1, [r7, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r1, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L1148	@,
	ldr	r2, [r7, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r2, #31	@ <variable>.s32MaxWidth,
	ble	.L1148	@,
	ldr	r4, [r7, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r4, #31	@ <variable>.s32MaxHeight,
	ble	.L1148	@,
	ldr	ip, [r7, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L1148	@,
	ldr	lr, [r7, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	lr, #1	@ <variable>.s32SupportH264,
	bne	.L1147	@,
	ldr	r3, [r7, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r3, #0	@ <variable>.s32MaxSliceNum,
	ble	.L1148	@,
	ldr	r0, [r7, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r0, #0	@ <variable>.s32MaxSpsNum,
	ble	.L1148	@,
	ldr	r1, [r7, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r1, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L1147	@,
.L1148:
	movw	r1, #:lower16:.LC36	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC36	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1232:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp618,,,,
	add	r9, sp, #416	@ tmp616,,
	add	r6, sp, #432	@ tmp617,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp616,,,,
	mov	r0, r6	@, tmp617
	mov	r1, #16	@,
	ldr	fp, [sp, #424]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	bl	__memzero	@
	ldr	ip, [r7, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L1164	@,
	ldr	lr, [r7, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L1165	@,
.L1164:
	mov	r2, fp	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC150	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC150	@,
	mov	r3, r6	@, tmp617
	mov	fp, #1	@ tmp276,
	str	fp, [sp, #0]	@ tmp276,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1233	@,
	ldr	r1, [sp, #436]	@, MemRecord.VirAddr
	ldr	r0, [sp, #440]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #444]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [sp, #440]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #436]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r0, [sp, #444]	@ MemRecord.Length, MemRecord.Length
	str	r3, [sp, #272]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	str	r1, [sp, #276]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	str	r0, [sp, #280]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	str	fp, [sp, #488]	@ tmp276, ChanMemFlag.SelfAllocChanMem_ctx
.L1167:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp618,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp617,,,,
	mov	r0, r9	@, tmp616
	mov	r1, #16	@,
	ldr	fp, [sp, #432]	@ DetailMemSize$VdhDetailMem, DetailMemSize.VdhDetailMem
	bl	__memzero	@
	ldr	r2, [r7, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L1211	@,
	ldr	r2, [r7, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	bne	.L1169	@,
.L1211:
	mov	ip, #0	@ tmp297,
	mov	r2, fp	@, DetailMemSize$VdhDetailMem
	mov	r1, ip	@, tmp297
	movw	r0, #:lower16:.LC152	@,
	mov	r3, r9	@, tmp616
	movt	r0, #:upper16:.LC152	@,
	str	ip, [sp, #0]	@ tmp297,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1234	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@ tmp304,
	ldr	r1, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #240]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #244]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r1, [sp, #248]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r0, [sp, #480]	@ tmp304, ChanMemFlag.SelfAllocChanMem_vdh
.L1172:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp618,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp616,,,,
	ldr	lr, [sp, #420]	@, DetailMemSize.ScdDetailMem
	mov	r0, r6	@, tmp617
	mov	r1, #16	@,
	str	lr, [sp, #112]	@, %sfp
	bl	__memzero	@
	ldr	r3, [r7, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L1213	@,
	ldr	r0, [r7, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	bne	.L1175	@,
.L1213:
	ldr	r1, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #2	@ <variable>.Purpose,
	beq	.L1176	@,
	mov	ip, #0	@ tmp316,
	ldr	r2, [sp, #112]	@, %sfp
	mov	r1, ip	@, tmp316
	movw	r0, #:lower16:.LC154	@,
	mov	r3, r6	@, tmp617
	movt	r0, #:upper16:.LC154	@,
	str	ip, [sp, #0]	@ tmp316,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1235	@,
	ldr	r1, [sp, #436]	@, MemRecord.VirAddr
	ldr	r0, [sp, #440]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #444]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #440]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #436]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp324,
	ldr	r0, [sp, #444]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #256]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r1, [sp, #260]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r0, [sp, #264]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r3, [sp, #484]	@ tmp324, ChanMemFlag.SelfAllocChanMem_scd
.L1180:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp618,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp617,,,,
	mov	r1, #16	@,
	mov	r0, r9	@, tmp616
	ldr	r6, [sp, #444]	@ DetailMemSize$PmvDetailMem, DetailMemSize.PmvDetailMem
	bl	__memzero	@
	ldr	r1, [r7, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L1215	@,
	ldr	r2, [r7, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	bne	.L1186	@,
.L1215:
	ldr	ip, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	ip, #2	@ <variable>.Purpose,
	beq	.L1187	@,
	mov	lr, #0	@ tmp340,
	mov	r2, r6	@, DetailMemSize$PmvDetailMem
	mov	r1, lr	@, tmp340
	mov	r3, r9	@, tmp616
	movw	r0, #:lower16:.LC159	@,
	movt	r0, #:upper16:.LC159	@,
	str	lr, [sp, #0]	@ tmp340,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1236	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	mov	r6, #1	@ tmp349,
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r1, sp, #420
	ldmia	r1, {r1, r2, r9}	@ phole ldm
	str	r2, [sp, #288]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	r1, [sp, #292]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	str	r9, [sp, #296]	@ MemRecord.Length, ChanMemDetail.ChanMemPmv.Length
	str	r6, [sp, #492]	@ tmp349, ChanMemFlag.SelfAllocChanMem_pmv
.L1157:
	movw	r6, #:lower16:.LANCHOR0	@ tmp604,
	movt	r6, #:upper16:.LANCHOR0	@ tmp604,
	add	r0, r6, #520	@, tmp604,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r9, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r9, #0	@ s_pstVfmwChan,
	beq	.L1224	@,
	ldr	r2, [r6, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r9, #1	@ prephitmp.4290,
	moveq	r4, r9	@ ChanID, prephitmp.4290
	beq	.L1199	@,
	ldr	ip, [r6, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	moveq	r9, #2	@ prephitmp.4290,
	moveq	r4, r9	@ ChanID, prephitmp.4290
	beq	.L1199	@,
	ldr	lr, [r6, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1237	@,
	mov	r2, #4	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC167	@,
	movt	r1, #:upper16:.LC167	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_EnableAllInt	@
	add	r0, r6, #520	@, tmp604,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1143	@
.L1169:
	add	r3, r7, #72	@ tmp306, pChanOption,
	add	lr, sp, #336	@ tmp305,,
	add	ip, sp, #240	@ tmp307,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp306,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp305,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp307,,,,
	ldr	r3, [sp, #248]	@ prephitmp.4292, ChanMemDetail.ChanMemVdh.Length
	cmp	fp, r3	@ DetailMemSize$VdhDetailMem, prephitmp.4292
	bgt	.L1238	@,
	mov	r2, r3	@, prephitmp.4292
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1172	@
.L1165:
	add	r3, r7, #104	@ tmp287, pChanOption,
	add	lr, sp, #352	@ tmp286,,
	add	ip, sp, #272	@ tmp288,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp287,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp286,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp288,,,,
	ldr	r2, [sp, #280]	@ D.44487, ChanMemDetail.ChanMemCtx.Length
	cmp	r2, fp	@ D.44487, DetailMemSize$ChanCtxDetailMem
	blt	.L1239	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1167	@
.L1237:
	mov	r9, #3	@ prephitmp.4290,
.L1224:
	mov	r4, r9	@ ChanID, prephitmp.4290
.L1199:
	add	fp, r5, r4, asl #2	@, tmp376, tmp615, ChanID,
	ldr	ip, [sp, #276]	@ D.37016, ChanMemDetail.ChanMemCtx.VirAddr
	movw	r3, #:lower16:g_FrameRate	@ tmp369,
	movw	r6, #:lower16:g_LastFrameRate	@ tmp371,
	ldr	lr, [fp, #532]	@ tmp383, g_ChanTick
	movt	r3, #:upper16:g_FrameRate	@ tmp369,
	movt	r6, #:upper16:g_LastFrameRate	@ tmp371,
	mov	r0, ip	@, D.37016
	add	r2, lr, #1	@ tmp384, tmp383,
	movw	r1, #:lower16:325568	@,
	mov	lr, #30	@ tmp370,
	str	r2, [fp, #532]	@ tmp384, g_ChanTick
	str	lr, [r6, r4, asl #2]	@ tmp370, g_LastFrameRate
	movt	r1, #:upper16:325568	@,
	str	lr, [r3, r4, asl #2]	@ tmp370, g_FrameRate
	movw	r6, #:lower16:.LANCHOR0	@ tmp373,
	str	ip, [r5, r4, asl #2]	@ D.37016, s_pstVfmwChan
	bl	__memzero	@
	ldr	r0, [r5, r4, asl #2]	@ tmp390, s_pstVfmwChan
	mov	r1, r7	@, pChanOption
	mov	r2, #152	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp373,
	add	r3, r0, #1440	@, tmp390,
	add	r0, r3, #4	@,,
	bl	memcpy	@
	ldr	ip, [r5, r4, asl #2]	@ tmp396, s_pstVfmwChan
	movw	r2, #:lower16:533448	@ tmp397,
	movt	r2, #:upper16:533448	@ tmp397,
	movw	lr, #:lower16:76696	@ tmp446,
	movt	lr, #:upper16:76696	@ tmp446,
	str	r2, [ip, #1388]	@ tmp397, <variable>.stSynExtraData.s32BasicCtxSize
	movw	r2, #:lower16:s_DnrChan	@ tmp443,
	ldr	r1, [r5, r4, asl #2]	@ tmp399, s_pstVfmwChan
	movt	r2, #:upper16:s_DnrChan	@ tmp443,
	movw	r0, #:lower16:s_SmIIS	@,
	movt	r0, #:upper16:s_SmIIS	@,
	mla	lr, lr, r4, r2	@ tmp447, tmp446, ChanID, tmp443
	str	r8, [r1, #24]	@ eCapLevel, <variable>.eChanCapLevel
	str	r0, [sp, #120]	@, %sfp
	add	r1, r4, #26	@, ChanID,
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	mov	r2, #0	@ tmp404,
	str	r1, [sp, #124]	@, %sfp
	add	lr, lr, #75776	@, tmp447,
	movw	r3, #:lower16:176080	@ tmp409,
	movt	r3, #:upper16:176080	@ tmp409,
	str	r8, [r0, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	movw	r0, #:lower16:s_pFspInst	@,
	movt	r0, #:upper16:s_pFspInst	@,
	str	r0, [sp, #112]	@, %sfp
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	movw	ip, #:lower16:211832	@ tmp419,
	movt	ip, #:upper16:211832	@ tmp419,
	movw	r1, #:lower16:167700	@ tmp425,
	movt	r1, #:upper16:167700	@ tmp425,
	str	r2, [r0, #1404]	@ tmp404, <variable>.stSynExtraData.s32MoreGapEnable
	add	r0, lr, #912	@,,
	ldr	lr, [r5, r4, asl #2]	@, s_pstVfmwChan
	movw	r2, #:lower16:211828	@ tmp434,
	str	r0, [sp, #116]	@, %sfp
	movt	r2, #:upper16:211828	@ tmp434,
	str	r4, [lr, #0]	@ ChanID, <variable>.s32ChanID
	ldr	r0, [r5, r4, asl #2]	@ tmp408, s_pstVfmwChan
	strb	r9, [r0, r3]	@ prephitmp.4290, <variable>.FspInst.s32InstID
	ldr	r0, [r7, #0]	@, <variable>.eAdapterType
	ldr	lr, [r5, r4, asl #2]	@ tmp412, s_pstVfmwChan
	str	r0, [lr, #20]	@, <variable>.eAdapterType
	mov	r0, #19	@,
	ldr	lr, [r5, r4, asl #2]	@ tmp415, s_pstVfmwChan
	str	r0, [lr, #880]	@, <variable>.eVidStd
	ldr	lr, [r5, r4, asl #2]	@ tmp418, s_pstVfmwChan
	str	r0, [lr, ip]	@, <variable>.stSynCtx.eVidStd
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	ldr	lr, [sp, #120]	@, %sfp
	add	ip, r0, #1632	@ tmp424,,
	ldr	r0, [sp, #124]	@, %sfp
	str	ip, [lr, r0, asl #2]	@ tmp424, s_SmIIS.pSmInstArray
	ldr	lr, [r5, r4, asl #2]	@, s_pstVfmwChan
	str	r4, [lr, r1]	@ ChanID, <variable>.SmInstArray.InstID
	ldr	ip, [sp, #112]	@, %sfp
	ldr	lr, [r5, r4, asl #2]	@ temp.4319, s_pstVfmwChan
	add	r1, lr, #175104	@ tmp429, temp.4319,
	add	r0, r1, #976	@ tmp429, tmp429,
	str	r0, [ip, r4, asl #2]	@ tmp429, s_pFspInst
	strb	r9, [lr, r3]	@ prephitmp.4290, <variable>.FspInst.s32InstID
	ldr	r0, [fp, #532]	@ tmp440, g_ChanTick
	ldr	r1, [r5, r4, asl #2]	@ tmp433, s_pstVfmwChan
	str	r0, [r1, r2]	@ tmp440, <variable>.u32ChanTick
	ldr	r3, [sp, #116]	@, %sfp
	ldr	r9, [r5, r4, asl #2]	@ tmp442, s_pstVfmwChan
	ldr	fp, [r3, #4]	@ <variable>.s32DnrEnable, <variable>.s32DnrEnable
	str	fp, [r9, #1604]	@ <variable>.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r7, #140]	@ D.37032, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r3, #0	@ D.37032,
	bne	.L1202	@,
	ldr	fp, [r6, r4, asl #2]	@ tmp451, s_pstVfmwChan
	str	r3, [fp, #1608]	@ D.37032, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r9, [r6, r4, asl #2]	@ tmp454, s_pstVfmwChan
	str	r3, [r9, #1612]	@ D.37032, <variable>.stSynExtraData.s32DSDThrHeight
.L1203:
	mov	r2, #0	@ s32i,
	mov	r9, #-2147483648	@ tmp622,
	mov	r3, r2	@ tmp621, s32i
.L1204:
	ldr	r6, [r5, r4, asl #2]	@ tmp475, s_pstVfmwChan
	mov	lr, r2, asl #4	@ tmp477, s32i,
	add	r0, r2, #13120	@ tmp490, s32i,
	add	r2, r2, #1	@ tmp623, s32i,
	add	ip, lr, r6	@ tmp478, tmp477, tmp475
	add	r0, r0, #52	@ tmp490, tmp490,
	add	fp, ip, #209920	@ tmp479, tmp478,
	mov	ip, r2, asl #4	@ tmp628, tmp623,
	add	r6, fp, #824	@ tmp479, tmp479,
	add	r1, r2, #13120	@ tmp638, tmp623,
	add	r1, r1, #52	@ tmp638, tmp638,
	add	r2, r2, #1	@ s32i, tmp623,
	str	r3, [r6, #0]	@ tmp621, <variable>.eFrameState
	cmp	r2, #64	@ s32i,
	ldr	fp, [r5, r4, asl #2]	@ tmp482, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp625,
	movt	r6, #:upper16:.LANCHOR0	@ tmp625,
	add	lr, lr, fp	@ tmp485, tmp477, tmp482
	add	fp, lr, #209920	@ tmp486, tmp485,
	add	lr, fp, #824	@ tmp486, tmp486,
	str	r9, [lr, #4]	@ tmp622, <variable>.s32FrameAddr
	ldr	fp, [r5, r4, asl #2]	@ tmp489, s_pstVfmwChan
	str	r3, [fp, r0, asl #4]	@ tmp621, <variable>.s32FrameSize
	ldr	lr, [r5, r4, asl #2]	@ tmp494, s_pstVfmwChan
	add	fp, lr, r0, asl #4	@, tmp499, tmp494, tmp490,
	str	r3, [fp, #4]	@ tmp621, <variable>.s32UsingCount
	ldr	lr, [r5, r4, asl #2]	@ tmp626, s_pstVfmwChan
	add	r0, ip, lr	@ tmp629, tmp628, tmp626
	add	fp, r0, #209920	@ tmp630, tmp629,
	add	lr, fp, #824	@ tmp630, tmp630,
	str	r3, [lr, #0]	@ tmp621, <variable>.eFrameState
	ldr	r0, [r5, r4, asl #2]	@ tmp632, s_pstVfmwChan
	add	ip, ip, r0	@ tmp633, tmp628, tmp632
	add	fp, ip, #209920	@ tmp634, tmp633,
	add	lr, fp, #824	@ tmp634, tmp634,
	str	r9, [lr, #4]	@ tmp622, <variable>.s32FrameAddr
	ldr	ip, [r5, r4, asl #2]	@ tmp636, s_pstVfmwChan
	str	r3, [ip, r1, asl #4]	@ tmp621, <variable>.s32FrameSize
	ldr	r0, [r5, r4, asl #2]	@ tmp639, s_pstVfmwChan
	add	r1, r0, r1, asl #4	@, tmp641, tmp639, tmp638,
	str	r3, [r1, #4]	@ tmp621, <variable>.s32UsingCount
	bne	.L1204	@,
	ldr	r2, [r6, r4, asl #2]	@ tmp505, s_pstVfmwChan
	mov	r1, #16	@,
	add	r3, r2, #210944	@, tmp505,
	add	r0, r3, #824	@,,
	bl	__memzero	@
	ldr	fp, [r6, r4, asl #2]	@ temp.4333, s_pstVfmwChan
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	ldr	ip, [fp, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r2, [fp, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r3, [fp, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	str	ip, [sp, #0]	@ <variable>.stSynExtraData.s32DSDThrHeight,
	ldr	r9, [fp, #1588]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	add	fp, sp, #64	@ tmp515,,
	str	r9, [sp, #4]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	add	ip, sp, #240	@ tmp513,,
	mov	lr, sp	@ tmp512,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp643,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp512,,,,
	mov	r9, lr	@ tmp645, tmp512
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp644,,,,
	mov	lr, ip	@ tmp646, tmp644
	stmia	r9!, {r0, r1, r2, r3}	@ tmp645,,,,
	mov	ip, r9	@ tmp647, tmp645
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp646,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp647,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp646,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp647,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp611,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp515,,,,
	mov	r1, r8	@, eCapLevel
	ldr	r2, [sp, #108]	@, %sfp
	mov	r0, r4	@, ChanID
	mov	r3, r7	@, pChanOption
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L1205	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp518, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r4, [r1, #140]	@ ChanID, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1240	@,
	ldr	r3, [r6, r4, asl #2]	@ temp.4335, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1207	@,
	ldr	lr, [r3, #236]	@ D.37057, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.37057
	str	lr, [sp, #496]	@ D.37057, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, r4, asl #2]	@ tmp523, s_pstVfmwChan
	str	r0, [sp, #500]	@, DnrMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	ip, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #504]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1208	@,
	ldr	r3, [r7, #16]	@, <variable>.s32MaxHeight
	mov	r0, r4	@, ChanID
	add	r1, sp, #496	@,,
	ldr	r2, [r7, #12]	@, <variable>.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1241	@,
.L1208:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1242	@,
.L1207:
	mov	r0, r4	@, ChanID
	bl	SM_ClearInst	@
	ldr	r3, [r5, r4, asl #2]	@ tmp531, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	ip, r2, #323584	@, <variable>.stChanMem_ctx.VirAddr,
	add	r1, ip, #4032	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r1, [r5, r4, asl #2]	@ tmp536, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	mov	r2, #1	@ tmp537,
	str	r2, [r1, #4]	@ tmp537, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1249	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1143	@
.L1202:
	rsb	fp, r3, r3, asl #3	@, tmp461, D.37032, D.37032,
	movw	r3, #:lower16:CapItem	@ tmp458,
	movt	r3, #:upper16:CapItem	@ tmp458,
	ldr	r9, [r6, r4, asl #2]	@ tmp457, s_pstVfmwChan
	ldr	lr, [r3, fp, asl #2]	@ tmp464, CapItem
	str	lr, [r9, #1608]	@ tmp464, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r2, [r7, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r1, [r6, r4, asl #2]	@ tmp466, s_pstVfmwChan
	rsb	ip, r2, r2, asl #3	@, tmp471, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r6, ip, #1	@ tmp472, tmp471,
	ldr	r0, [r3, r6, asl #2]	@ tmp473, CapItem
	str	r0, [r1, #1612]	@ tmp473, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L1203	@
.L1241:
	movw	r1, #:lower16:.LC165	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC165	@,
	bl	dprint_vfmw	@
.L1205:
	mov	r0, r4	@, ChanID
	add	r6, sp, #132	@ tmp555,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ tmp541, s_pstVfmwChan
	movw	r1, #:lower16:211808	@ tmp551,
	movt	r1, #:upper16:211808	@ tmp551,
	add	fp, r3, #104	@, tmp541,
	add	r2, r3, #152	@ tmp557, tmp541,
	ldr	r0, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r7, r3, #200	@ tmp562, tmp541,
	str	fp, [sp, #108]	@, %sfp
	add	r8, r3, #168	@ tmp567, tmp541,
	add	r9, r3, #184	@ tmp572, tmp541,
	add	ip, r3, #210944	@ tmp583, tmp541,
	str	r0, [sp, #204]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #212	@,,
	str	r0, [sp, #96]	@, %sfp
	add	r0, sp, #224	@,,
	str	r0, [sp, #92]	@, %sfp
	add	lr, sp, #180	@ tmp560,,
	ldr	r0, [r3, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	add	sl, sp, #148	@ tmp565,,
	add	fp, sp, #164	@ tmp570,,
	add	ip, ip, #868	@ tmp583, tmp583,
	str	r0, [sp, #196]	@, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r0, [sp, #200]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #208]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp557,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp555,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp562,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp560,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp567,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp565,,,,
	ldr	lr, [sp, #92]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp572,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp570,,,,
	ldr	fp, [sp, #108]	@, %sfp
	ldmia	fp, {r0, r1, r2}	@,,,
	ldr	fp, [sp, #96]	@, %sfp
	stmia	fp, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp583,,,,
	mov	ip, #0	@ tmp585,
	str	ip, [r5, r4, asl #2]	@ tmp585, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1249	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp555
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_FreeChanResource	@
	b	.L1143	@
.L1231:
	ldr	r9, [sp, #456]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	add	r4, sp, #416	@ tmp241,,
	ldr	r2, [sp, #452]	@, DetailMemSize.ScdDetailMem
	mov	r1, #16	@,
	mov	r0, r4	@, tmp241
	ldr	fp, [sp, #448]	@ DetailMemSize$VdhDetailMem, DetailMemSize.VdhDetailMem
	str	r2, [sp, #112]	@, %sfp
	bl	__memzero	@
	mov	r1, r6	@, D.37000
	mov	r2, r9	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC150	@,
	mov	r3, r4	@, tmp241
	movt	r0, #:upper16:.LC150	@,
	mov	r6, #1	@ tmp244,
	str	r6, [sp, #0]	@ tmp244,
	bl	MEM_AllocMemBlock	@
	subs	r9, r0, #0	@ D.44471,
	bne	.L1243	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r9	@, D.44471
	mov	r2, fp	@, DetailMemSize$VdhDetailMem
	movw	r0, #:lower16:.LC152	@,
	mov	r3, r4	@, tmp241
	str	ip, [sp, #272]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	movt	r0, #:upper16:.LC152	@,
	ldr	ip, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r9, [sp, #0]	@ D.44471,
	str	r6, [sp, #488]	@ tmp244, ChanMemFlag.SelfAllocChanMem_ctx
	str	ip, [sp, #276]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	ip, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #280]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r9, r0, #0	@ D.44464,
	bne	.L1244	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #424]	@ temp.4363, MemRecord.PhyAddr
	ldr	r3, [sp, #420]	@ temp.4364, MemRecord.VirAddr
	cmp	r1, #2	@ <variable>.Purpose,
	ldr	r0, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #240]	@ temp.4363, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #244]	@ temp.4364, ChanMemDetail.ChanMemVdh.VirAddr
	str	r0, [sp, #248]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r6, [sp, #480]	@ tmp244, ChanMemFlag.SelfAllocChanMem_vdh
	beq	.L1161	@,
	mov	r1, r9	@, D.44464
	ldr	r2, [sp, #112]	@, %sfp
	mov	r3, r4	@, tmp241
	movw	r0, #:lower16:.LC154	@,
	movt	r0, #:upper16:.LC154	@,
	str	r9, [sp, #0]	@ D.44464,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1245	@,
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r9, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #256]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r9, [sp, #260]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r3, [sp, #264]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r6, [sp, #484]	@ tmp244, ChanMemFlag.SelfAllocChanMem_scd
	b	.L1157	@
.L1230:
	add	lr, r7, #72	@ tmp218, pChanOption,
	add	r4, sp, #256	@,,
	add	fp, r7, #104	@, pChanOption,
	add	ip, sp, #400	@ tmp217,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp218,,,,
	str	r4, [sp, #84]	@, %sfp
	str	fp, [sp, #112]	@, %sfp
	add	r6, sp, #240	@ tmp219,,
	ldr	r4, [sp, #456]	@, DetailMemSize.ChanCtxDetailMem
	add	r9, r7, #88	@ tmp222, pChanOption,
	ldr	fp, [sp, #452]	@, DetailMemSize.ScdDetailMem
	add	lr, sp, #384	@ tmp221,,
	str	r4, [sp, #124]	@, %sfp
	add	r4, sp, #368	@ tmp225,,
	str	fp, [sp, #120]	@, %sfp
	add	fp, sp, #272	@ tmp227,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp217,,,,
	ldr	r3, [sp, #448]	@, DetailMemSize.VdhDetailMem
	str	r3, [sp, #116]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp217,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp219,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp222,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp221,,,,
	ldr	lr, [sp, #84]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldr	ip, [sp, #112]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp225,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp227,,,,
	ldr	r2, [sp, #276]	@ ChanMemDetail.ChanMemCtx.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	cmp	r2, #0	@ ChanMemDetail.ChanMemCtx.VirAddr,
	beq	.L1151	@,
	ldr	r1, [sp, #280]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	ldr	r0, [sp, #124]	@, %sfp
	cmp	r0, r1	@, ChanMemDetail.ChanMemCtx.Length
	bgt	.L1151	@,
	ldr	r2, [sp, #260]	@ ChanMemDetail.ChanMemScd.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r2, #0	@ ChanMemDetail.ChanMemScd.VirAddr,
	beq	.L1153	@,
	ldr	r3, [sp, #264]	@ ChanMemDetail.ChanMemScd.Length, ChanMemDetail.ChanMemScd.Length
	ldr	ip, [sp, #120]	@, %sfp
	cmp	ip, r3	@, ChanMemDetail.ChanMemScd.Length
	ble	.L1154	@,
.L1153:
	ldr	r0, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	beq	.L1246	@,
.L1154:
	ldr	r1, [sp, #244]	@ D.44425, ChanMemDetail.ChanMemVdh.VirAddr
	cmp	r1, #0	@ D.44425,
	beq	.L1155	@,
	ldr	r2, [sp, #248]	@ D.44424, ChanMemDetail.ChanMemVdh.Length
	ldr	lr, [sp, #116]	@, %sfp
	cmp	lr, r2	@, D.44424
	bgt	.L1155	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r6, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r6, #2	@ <variable>.Purpose,
	beq	.L1157	@,
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	b	.L1157	@
.L1233:
	mov	r0, fp	@, tmp276
	movw	r1, #:lower16:.LC156	@,
	movw	r2, #1930	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1242:
	movw	r1, #:lower16:.LC166	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC166	@,
	bl	dprint_vfmw	@
	b	.L1205	@
.L1240:
	movw	r1, #:lower16:.LC164	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC164	@,
	bl	dprint_vfmw	@
	b	.L1205	@
.L1239:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC157	@,
	movw	r2, #1946	@,
	movt	r1, #:upper16:.LC157	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1161:
	str	r2, [sp, #256]	@ temp.4363, ChanMemDetail.ChanMemScd.PhyAddr
	str	r3, [sp, #260]	@ temp.4364, ChanMemDetail.ChanMemScd.VirAddr
	str	r9, [sp, #264]	@ D.44464, ChanMemDetail.ChanMemScd.Length
	b	.L1157	@
.L1235:
	ldr	r2, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r2, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1178	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1178:
	ldr	lr, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	lr, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1179	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1179:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #2045	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1176:
	ldr	lr, [sp, #240]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp327,
	ldr	r2, [sp, #244]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #264]	@ tmp327, ChanMemDetail.ChanMemScd.Length
	str	lr, [sp, #256]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r2, [sp, #260]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	b	.L1180	@
.L1151:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC147	@,
	movw	r2, #1812	@,
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1245:
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #1896	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1244:
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1876	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1243:
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC151	@,
	movw	r2, #1860	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1175:
	add	r3, r7, #88	@ tmp329, pChanOption,
	ldr	fp, [r7, #4]	@ temp.4404, <variable>.Purpose
	add	lr, sp, #320	@ tmp328,,
	add	ip, sp, #256	@ tmp330,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp329,,,,
	cmp	fp, #2	@ temp.4404,
	stmia	lr, {r0, r1, r2, r3}	@ tmp328,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp330,,,,
	beq	.L1180	@,
	ldr	r1, [sp, #260]	@ D.44544, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r1, #0	@ D.44544,
	beq	.L1181	@,
	ldr	r2, [sp, #264]	@ prephitmp.4405, ChanMemDetail.ChanMemScd.Length
	ldr	r0, [sp, #112]	@, %sfp
	cmp	r0, r2	@, prephitmp.4405
	ble	.L1182	@,
.L1181:
	cmp	fp, #1	@ temp.4404,
	ldrne	r2, [sp, #264]	@ prephitmp.4405, ChanMemDetail.ChanMemScd.Length
	beq	.L1247	@,
.L1182:
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1180	@
.L1247:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1184	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1184:
	ldr	r1, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1185	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1185:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #2084	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1236:
	ldr	r3, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r3, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1189	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1189:
	ldr	r0, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1190	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1190:
	ldr	r4, [sp, #484]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1191	@,
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #260]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1191:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC160	@,
	movw	r2, #2136	@,
	movt	r1, #:upper16:.LC160	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1187:
	ldr	lr, [sp, #240]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp352,
	ldr	ip, [sp, #244]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #296]	@ tmp352, ChanMemDetail.ChanMemPmv.Length
	str	lr, [sp, #288]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	ip, [sp, #292]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	b	.L1157	@
.L1238:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1174	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r3, [sp, #248]	@ prephitmp.4292, ChanMemDetail.ChanMemVdh.Length
.L1174:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC158	@,
	movw	r2, #2002	@,
	movt	r1, #:upper16:.LC158	@,
	str	fp, [sp, #0]	@ DetailMemSize$VdhDetailMem,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1155:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC149	@,
	movw	r2, #1827	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1234:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1171	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1171:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1979	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1246:
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #1819	@,
	movt	r1, #:upper16:.LC148	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1143	@
.L1186:
	add	r3, r7, #120	@ tmp354, pChanOption,
	ldr	r4, [r7, #4]	@ temp.4431, <variable>.Purpose
	add	lr, sp, #304	@ tmp353,,
	add	ip, sp, #288	@ tmp355,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp354,,,,
	cmp	r4, #2	@ temp.4431,
	stmia	lr, {r0, r1, r2, r3}	@ tmp353,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp355,,,,
	beq	.L1157	@,
	ldr	r1, [sp, #292]	@ D.44582, ChanMemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.44582,
	beq	.L1192	@,
	ldr	r2, [sp, #296]	@ prephitmp.4432, ChanMemDetail.ChanMemPmv.Length
	cmp	r2, r6	@ prephitmp.4432, DetailMemSize$PmvDetailMem
	bge	.L1193	@,
.L1192:
	cmp	r4, #1	@ temp.4431,
	ldrne	r2, [sp, #296]	@ prephitmp.4432, ChanMemDetail.ChanMemPmv.Length
	beq	.L1248	@,
.L1193:
	ldr	r0, [sp, #288]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1157	@
.L1248:
	ldr	r0, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1195	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1195:
	ldr	r4, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1196	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1196:
	ldr	r1, [sp, #484]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1197	@,
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #260]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1197:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC161	@,
	movw	r2, #2181	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1143	@
.L1250:
	.align	2
.L1249:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1686:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #24	@ eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ eCapLevel, eCapLevel
	.pad #220
	sub	sp, sp, #220	@,,
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L1264	@,
	add	r6, sp, #8	@ tmp234,,
	add	r5, sp, #176	@ tmp235,,
	mov	r1, #152	@,
	add	r7, sp, #160	@ tmp232,,
	mov	r0, r6	@, tmp234
	bl	__memzero	@
	mov	r0, r5	@, tmp235
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp232
	mov	r1, #16	@,
	bl	__memzero	@
	sub	r0, r4, #18	@ D.40933, eCapLevel,
	cmp	r0, #7	@ D.40933,
	mov	r2, r4, asl #3	@ tmp231, eCapLevel,
	rsb	r1, r4, r2	@ tmp154, eCapLevel, tmp231
	mov	lr, #1	@ tmp149,
	add	ip, r1, #1	@ tmp162, tmp154,
	str	lr, [sp, #12]	@ tmp149, stChanOption.Purpose
	movw	r3, #:lower16:CapItem	@ tmp233,
	mov	lr, #2	@ tmp150,
	movt	r3, #:upper16:CapItem	@ tmp233,
	str	lr, [sp, #16]	@ tmp150, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp165,
	str	lr, [sp, #32]	@ tmp165, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp166,
	str	lr, [sp, #36]	@ tmp166, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp167,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp167,
	addls	r0, lr, r0, asl #2	@, tmp170, tmp167, D.40933,
	ldr	ip, [r3, ip, asl #2]	@ tmp163, CapItem
	ldr	r1, [r3, r1, asl #2]	@ tmp157, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #392]	@ MinDispFspNum, CSWTCH.885
	rsb	r0, r4, r2	@ tmp176, eCapLevel, tmp231
	str	ip, [sp, #24]	@ tmp163, stChanOption.s32MaxHeight
	add	ip, r3, r0, asl #2	@, tmp178, tmp233, tmp176,
	rsb	r0, r4, r2	@ tmp189, eCapLevel, tmp231
	str	r1, [sp, #20]	@ tmp157, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp164,
	str	r1, [sp, #28]	@ tmp164, stChanOption.s32MaxSliceNum
	mov	r2, #1	@ tmp182,
	ldr	r1, [ip, #12]	@ D.36404, CapItem
	add	ip, r3, r0, asl #2	@, tmp191, tmp233, tmp189,
	str	lr, [sp, #68]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.36404
	ldr	r3, [ip, #24]	@ tmp193, CapItem
	rsblt	r1, lr, r1	@ tmp181, MinDispFspNum, D.36404
	str	r2, [sp, #48]	@ tmp182, stChanOption.s32SupportBFrame
	movge	r1, #1	@ tmp180,
	str	r2, [sp, #52]	@ tmp182, stChanOption.s32SupportH264
	cmp	r4, #24	@ eCapLevel,
	str	r1, [sp, #40]	@ tmp181, stChanOption.s32MaxRefFrameNum
	streq	r2, [sp, #68]	@ tmp182, stChanOption.s32DisplayFrameNum
	mov	r1, #0	@ tmp194,
	str	r2, [sp, #60]	@ tmp182, stChanOption.s32ReRangeEn
	add	r2, sp, #192	@,,
	streq	r1, [sp, #40]	@ tmp194, stChanOption.s32MaxRefFrameNum
	str	r1, [sp, #72]	@ tmp194, stChanOption.s32SlotWidth
	str	r1, [sp, #76]	@ tmp194, stChanOption.s32SlotHeight
	add	r1, sp, #204	@,,
	str	r3, [sp, #64]	@ tmp193, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1265	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1260	@,
	ldr	sl, [r8, #8]	@ D.36418, <variable>.Length
	cmp	sl, #0	@ D.36418,
	beq	.L1260	@,
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L1261	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L1261	@,
	ldr	r0, [sp, #204]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #192]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r2, r0	@ tmp203, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r3	@ D.36418, tmp203
	blt	.L1261	@,
	ldr	r8, [sp, #196]	@ D.36431, ScdChanMemSize
	add	r9, sp, #96	@ tmp215,,
	str	lr, [sp, #160]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	add	fp, sp, #80	@ tmp217,,
	str	ip, [sp, #164]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, lr, r8	@ tmp210, <variable>.PhyAddr, D.36431
	str	r8, [sp, #168]	@ D.36431, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp212, <variable>.VirAddr, D.36431
	ldmia	r7, {r0, r1, r2, r3}	@ tmp232,,,,
	str	lr, [sp, #176]	@ tmp210, vdh_MemRecord.PhyAddr
	str	ip, [sp, #180]	@ tmp212, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp214, D.36431, D.36418
	str	sl, [sp, #184]	@ tmp214, vdh_MemRecord.Length
	mov	lr, #3	@ tmp206,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #16]	@ tmp206, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp215,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp235,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp217,,,,
	b	.L1262	@
.L1260:
	mov	ip, #0	@ OneChanMemFlag,
.L1262:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp234
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.36385,
.L1253:
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1264:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC168	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC168	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36385,
	b	.L1253	@
.L1261:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #1	@,
	ldr	r3, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #204]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #192]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	add	r2, r2, r3	@, ScdChanMemSize, VdmChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36385,
	b	.L1253	@
.L1265:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36385,
	b	.L1253	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
.LFB1682:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r2, #31	@, MaxHeight,
	.pad #52
	sub	sp, sp, #52	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r6, r1	@ MaxWidth, MaxWidth
	mov	r8, r2	@ MaxHeight, MaxHeight
	movgt	r1, #0	@, tmp160
	movle	r1, #1	@, tmp160
	mov	r7, r0	@ ChanID, ChanID
	mov	r9, r3	@ MemAddr, MemAddr
	ldr	r2, [sp, #88]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L1282	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp168
	moveq	sl, #1	@, tmp168
	beq	.L1283	@,
	add	fp, sp, #8	@ tmp170,,
	mov	r1, #36	@,
	str	r2, [sp, #4]	@,
	mov	r0, fp	@, tmp170
	bl	__memzero	@
	mov	r1, fp	@, tmp170
	mov	r0, r7	@, ChanID
	str	r6, [sp, #36]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r6, [sp, #20]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	mov	r3, #1	@,
	str	r8, [sp, #40]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	sl, [sp, #8]	@ tmp168, FspInstCfg.s32DispLoopEnable
	strb	sl, [sp, #10]	@ tmp168, FspInstCfg.s32RprEnable
	str	r8, [sp, #24]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	sl, [sp, #13]	@ tmp168, FspInstCfg.s32ExpectedDecFsNum
	strb	sl, [sp, #15]	@ tmp168, FspInstCfg.s32ExpectedDispFsNum
	strb	sl, [sp, #16]	@ tmp168, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [sp, #12]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [sp, #4]	@,
	subs	r6, r0, #0	@ D.36250,
	bne	.L1270	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r7	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r8, r0, #0	@ Ret,
	bne	.L1284	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #548	@, tmp153,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r4, #549]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.36260, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.36260,
	movge	r0, #16	@ D.36260,
	str	r0, [r5, #820]	@ D.36260, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.36260,
	ble	.L1285	@,
	ldr	r2, [r4, #3884]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #752	@, pstChan,
	mov	r1, #64	@,
	str	r2, [r5, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r6, [r5, #820]	@ D.36259, <variable>.s32UsrdecFrameNum
	cmp	r6, #0	@ D.36259,
	ble	.L1273	@,
	ldr	ip, [r4, #568]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, r6	@ i, D.36259
	sub	lr, r6, #1	@ tmp203, D.36259,
	and	r0, lr, r2	@ tmp205, tmp203,
	add	r1, r5, #4	@ ivtmp.4523, pstChan,
	str	ip, [r5, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, r4, #600	@ ivtmp.4520, tmp153,
	bge	.L1273	@,
	cmp	r0, #0	@ tmp205,
	beq	.L1274	@,
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r6	@ i, D.36259
	add	r3, r4, #652	@ ivtmp.4520, tmp153,
	str	r0, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.4523, ivtmp.4523,
	bge	.L1273	@,
.L1274:
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp208, ivtmp.4523,
	cmp	r2, r6	@ i, D.36259
	str	lr, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r0, #4	@ ivtmp.4523, tmp208,
	ldr	ip, [r3, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #104	@ ivtmp.4520, ivtmp.4520,
	str	ip, [r0, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1274	@,
.L1273:
	mov	r0, #0	@ D.36238,
.L1268:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1283:
	mov	r0, r1	@, tmp160
	movw	r1, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC174	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36238,
	b	.L1268	@
.L1270:
	mov	r0, sl	@, tmp168
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36238,
	b	.L1268	@
.L1284:
	mov	r0, r6	@, D.36250
	movw	r1, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC175	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36238,
	b	.L1268	@
.L1285:
	mov	r0, r8	@, Ret
	movw	r1, #:lower16:.LC176	@,
	ldr	r2, .L1286	@,
	movt	r1, #:upper16:.LC176	@,
	movw	r3, #1403	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36238,
	b	.L1268	@
.L1282:
	mov	r2, r6	@, MaxWidth
	mov	r3, r8	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36238,
	b	.L1268	@
.L1287:
	.align	2
.L1286:
	.word	.LANCHOR1+424
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1713:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, #0	@ tmp203,
	.pad #92
	sub	sp, sp, #92	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pstCfg, pstCfg
	str	r7, [r1, #44]	@ tmp203, <variable>.s32VcmpEn
	bhi	.L1349	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp580,
	movt	r5, #:upper16:.LANCHOR0	@ tmp580,
	ldr	r3, [r5, r0, asl #2]	@ D.37700, s_pstVfmwChan
	cmp	r3, #0	@ D.37700,
	beq	.L1350	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1351	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@,
	bne	.L1352	@,
	ldr	r8, [r6, #0]	@ D.37710, <variable>.eVidStd
	cmp	r8, #18	@ D.37710,
	ble	.L1353	@,
.L1294:
	mvn	r0, #0	@ D.37698,
.L1290:
	add	sp, sp, #92	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1353:
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r7, r0, #0	@ D.37716,
	beq	.L1354	@,
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.4621, s_pstVfmwChan
	cmp	r8, #4	@ D.37710,
	cmpne	r8, #14	@, D.37710,
	movne	r8, #0	@, tmp224
	moveq	r8, #1	@, tmp224
	ldr	r1, [r7, #32]	@ D.37725, <variable>.stChanCfg.eVidStd
	cmp	r1, #4	@ D.37725,
	cmpne	r1, #14	@, D.37725,
	movne	r0, #0	@, tmp219
	moveq	r0, #1	@, tmp219
	cmp	r0, r8	@ tmp219, tmp224
	bne	.L1355	@,
.L1296:
	add	r0, r7, #32	@, prephitmp.4621,
	mov	r2, #72	@,
	mov	r1, r6	@, pstCfg
	add	r7, sp, #12	@ tmp391,,
	bl	memcpy	@
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	r9, [r5, r4, asl #2]	@ tmp386, s_pstVfmwChan
	mov	r1, #40	@,
	mov	r0, r7	@, tmp391
	add	r8, r6, #4	@ tmp579, pstCfg,
	add	sl, sp, #84	@ tmp410,,
	str	ip, [r9, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r5, r4, asl #2]	@ tmp389, s_pstVfmwChan
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	r9, [r5, r4, asl #2]	@ tmp393, s_pstVfmwChan
	ldr	fp, [r9, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	fp, [sp, #24]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [r9, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	lr, [r5, r4, asl #2]	@ tmp399, s_pstVfmwChan
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	add	r2, sp, #36	@ tmp407,,
	ldr	r9, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movw	r3, #:lower16:269729792	@ tmp404,
	ldr	fp, [r6, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	movt	r3, #:upper16:269729792	@ tmp404,
	str	r0, [sp, #12]	@, ScdInstCfg.pBufVirAddr
	ldmia	r8, {r0, r1}	@ tmp579,,
	ldr	lr, [lr, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	ip, [sp, #16]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	stmia	r2, {r0, r1}	@ tmp407,,
	mov	r1, r7	@, tmp391
	mov	r0, r4	@, ChanID
	str	lr, [sp, #28]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r3, [sp, #32]	@ tmp404, ScdInstCfg.RegPhyBaseAddr
	mov	lr, #0	@ tmp406,
	str	r9, [sp, #20]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	lr, [sp, #44]	@ tmp406, ScdInstCfg.ScdLowdlyEnable
	str	fp, [sp, #48]	@ <variable>.s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	bl	SM_Config	@
	mov	r0, sl	@, tmp410
	mov	r1, #1	@,
	bl	__memzero	@
	ldr	r7, [r6, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r7, #0	@ <variable>.s32LowdBufEnable,
	bne	.L1356	@,
.L1319:
	ldr	r0, [r5, r4, asl #2]	@ temp.4589, s_pstVfmwChan
	mov	r2, #0	@ tmp451,
	movw	lr, #:lower16:211832	@ tmp470,
	movt	lr, #:upper16:211832	@ tmp470,
	movw	r7, #:lower16:.LANCHOR0	@ tmp415,
	movt	r7, #:upper16:.LANCHOR0	@ tmp415,
	ldr	r1, [r0, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r1, [r0, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.4590, s_pstVfmwChan
	ldr	ip, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	ip, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.4591, s_pstVfmwChan
	ldr	r1, [r0, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r1, [r0, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.4592, s_pstVfmwChan
	ldr	ip, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	ip, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.4593, s_pstVfmwChan
	ldr	r1, [r0, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r1, [r0, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.4594, s_pstVfmwChan
	ldr	ip, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	ip, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r0, [r5, r4, asl #2]	@ temp.4595, s_pstVfmwChan
	ldr	r1, [r0, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r1, [r0, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r5, r4, asl #2]	@ temp.4596, s_pstVfmwChan
	ldr	ip, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	ip, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r0, [r5, r4, asl #2]	@ tmp432, s_pstVfmwChan
	ldr	r1, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r1, [r0, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r5, r4, asl #2]	@ tmp435, s_pstVfmwChan
	ldr	ip, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	ip, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r0, [r5, r4, asl #2]	@ tmp438, s_pstVfmwChan
	ldr	r1, [r6, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r1, [r0, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r5, r4, asl #2]	@ tmp441, s_pstVfmwChan
	ldr	ip, [r6, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	ip, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r0, [r5, r4, asl #2]	@ tmp444, s_pstVfmwChan
	ldr	r1, [r6, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r1, [r0, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, r4, asl #2]	@ tmp447, s_pstVfmwChan
	ldr	ip, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	ip, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r0, [r5, r4, asl #2]	@ tmp450, s_pstVfmwChan
	str	r2, [r0, #1616]	@ tmp451, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r5, r4, asl #2]	@ tmp453, s_pstVfmwChan
	ldr	r1, [r6, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r1, #1	@ <variable>.s32SupportAllP,
	movne	ip, #0	@, tmp455
	moveq	ip, #1	@, tmp455
	str	ip, [r3, #1416]	@ tmp455, <variable>.stSynExtraData.s32SupportAllP
	ldr	r0, [r5, r4, asl #2]	@ tmp457, s_pstVfmwChan
	ldr	r1, [r6, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r1, [r0, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r5, r4, asl #2]	@ tmp461, s_pstVfmwChan
	ldmia	r8, {r0, r1}	@ tmp579,,
	add	ip, r3, #1264	@ tmp460, tmp461,
	add	r3, ip, #12	@ tmp460, tmp460,
	stmia	r3, {r0, r1}	@ tmp460,,
	ldr	r0, [r5, r4, asl #2]	@ tmp467, s_pstVfmwChan
	str	r2, [r0, #908]	@ tmp451, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.4561, s_pstVfmwChan
	ldr	r3, [r0, lr]	@ prephitmp.4563, <variable>.stSynCtx.eVidStd
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, r1	@ prephitmp.4563, <variable>.eVidStd
	beq	.L1320	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r7, r4, asl #2]	@ prephitmp.4561, s_pstVfmwChan
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L1343	@,
	ldr	ip, [r0, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	lr, [r0, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	ip, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, r4	@, ChanID
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1324	@,
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.4561, s_pstVfmwChan
.L1343:
	ldr	r3, [r0, #880]	@ prephitmp.4563, <variable>.eVidStd
.L1320:
	movw	r2, #:lower16:211832	@ tmp479,
	movt	r2, #:upper16:211832	@ tmp479,
	movw	r7, #:lower16:.LANCHOR0	@ tmp480,
	movt	r7, #:upper16:.LANCHOR0	@ tmp480,
	str	r3, [r0, r2]	@ prephitmp.4563, <variable>.stSynCtx.eVidStd
	ldr	r0, [r5, r4, asl #2]	@ tmp481, s_pstVfmwChan
	ldr	r1, [r0, #248]	@ temp.4611, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.4611
	str	r1, [sp, #68]	@ temp.4611, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r4, asl #2]	@ tmp483, s_pstVfmwChan
	add	r1, sp, #68	@,,
	str	r0, [sp, #72]	@, stMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	r8, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r8, [sp, #76]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r8, r0, #0	@ D.37796,
	bne	.L1294	@,
	add	sl, sp, #52	@ tmp578,,
	mov	r1, #16	@,
	mov	r0, sl	@, tmp578
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ D.40966, <variable>.eVidStd
	sub	ip, r3, #10	@ tmp487, D.40966,
	cmp	ip, #2	@ tmp487,
	strhib	r8, [sp, #52]	@ D.37796, DnrChanCfgArgs.s32MirrorEn
	bhi	.L1327	@,
	ldr	lr, [r7, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1344	@,
	cmp	r3, #12	@ D.40966,
	beq	.L1344	@,
	ldr	ip, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	r2, ip, #1	@ tmp499, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, r2, #1	@ tmp502, tmp499,
	strb	r0, [sp, #52]	@ tmp502, DnrChanCfgArgs.s32MirrorEn
.L1327:
	ldrsb	lr, [sp, #52]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	r3, #1	@ tmp515,
	ldr	ip, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	lr, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #53]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp509,
	streqb	ip, [sp, #53]	@ tmp509, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r5, r4, asl #2]	@ D.40949, s_pstVfmwChan
	ldr	r0, [r6, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r6, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r6, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #60]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #54]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #56]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r3, [sp, #64]	@ tmp515, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1330	@,
	mov	r1, sl	@, tmp578
	mov	r0, r4	@, ChanID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1294	@,
.L1331:
	ldr	lr, [r5, r4, asl #2]	@ tmp537, s_pstVfmwChan
	add	r2, r4, #26	@ tmp541, ChanID,
	movw	r3, #:lower16:176080	@ tmp538,
	movw	ip, #:lower16:s_SmIIS	@ tmp540,
	movt	r3, #:upper16:176080	@ tmp538,
	movt	ip, #:upper16:s_SmIIS	@ tmp540,
	movw	r1, #:lower16:.LANCHOR0	@ tmp536,
	movt	r1, #:upper16:.LANCHOR0	@ tmp536,
	strb	r4, [lr, r3]	@ ChanID, <variable>.FspInst.s32InstID
	movw	r3, #:lower16:166068	@ tmp543,
	ldr	r0, [ip, r2, asl #2]	@ tmp542, s_SmIIS.pSmInstArray
	movt	r3, #:upper16:166068	@ tmp543,
	movw	ip, #:lower16:.LANCHOR0	@ tmp555,
	movt	ip, #:upper16:.LANCHOR0	@ tmp555,
	str	r4, [r0, r3]	@ ChanID, <variable>.InstID
	ldr	r2, [r5, #0]	@ temp.4698, s_pstVfmwChan
	ldr	r0, [r5, #4]	@ temp.4622, s_pstVfmwChan
	cmp	r2, #0	@ temp.4698,
	streq	r2, [r1, #3888]	@ temp.4698, PrioArray
	ldrne	lr, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp582,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp582,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp582,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp582,
	strne	lr, [r1, #3888]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp566,
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.4622,
	streq	r0, [ip, #3892]	@ temp.4622, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp566,
	str	r2, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	lr, [r0, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r2, [r5, #8]	@ temp.4709, s_pstVfmwChan
	strne	lr, [ip, #3892]	@ <variable>.s32Priority, PrioArray
	ldrne	r0, [r0, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.4709,
	streq	r2, [r1, #3896]	@ temp.4709, PrioArray
	str	r0, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	lr, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	lr, [r1, #3896]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp577,
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r1, #:upper16:.LANCHOR0	@ tmp577,
	str	r2, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldr	r2, [r5, #12]	@ D.37810, s_pstVfmwChan
	cmp	r2, #0	@ D.37810,
	beq	.L1357	@,
	ldr	ip, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [r1, #3900]	@ <variable>.s32Priority, PrioArray
	ldr	r0, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r0, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L1332:
	ldr	r0, .L1368	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37698,
	b	.L1290	@
.L1352:
	mov	r0, r7	@, tmp203
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1354:
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.37698, D.37716
	b	.L1290	@
.L1351:
	mov	r0, r7	@, tmp203
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3475	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC178	@,
	movt	r3, #:upper16:.LC178	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1356:
	mov	r1, sl	@, tmp410
	mov	r0, r4	@, ChanID
	mov	r7, #1	@ tmp412,
	strb	r7, [sp, #84]	@ tmp412, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1319	@
.L1324:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC187	@,
	movt	r1, #:upper16:.LC187	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1349:
	mov	r0, r7	@, tmp203
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3473	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1355:
	ldr	r2, [r7, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #0	@ <variable>.s32OneChanMem,
	bne	.L1297	@,
	add	r0, r5, #520	@, tmp580,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	sl, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	ldr	r9, [r6, #0]	@ D.44952, <variable>.eVidStd
	cmp	sl, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1358	@,
.L1298:
	ldr	r0, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	cmp	r9, #4	@ D.44952,
	cmpne	r9, #14	@, D.44952,
	movne	r9, #0	@, tmp242
	moveq	r9, #1	@, tmp242
	bne	.L1299	@,
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	mov	r9, #1	@ tmp245,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #196]	@ temp.4639, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp245, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.4639,
	mov	sl, r0	@ pVir_vdh,
	bne	.L1359	@,
.L1300:
	mov	r8, #0	@ pVir_scd,
.L1301:
	ldr	r0, .L1368+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ tmp258, s_pstVfmwChan
	cmp	r0, #0	@ tmp258,
	beq	.L1360	@,
	cmp	sl, #0	@ pVir_vdh,
	beq	.L1303	@,
	ldr	r9, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	rsbs	ip, r8, #1	@, pVir_scd
	movcc	ip, #0	@
	cmp	r9, #0	@ <variable>.stChanMem_scd.Length,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp270,
	mov	r9, ip	@ tmp270,
	bne	.L1303	@,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.44993,
	ldrne	r3, [r7, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movne	r0, r9	@, tmp270
	bne	.L1346	@,
	str	sl, [r7, #172]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, sl	@, pVir_vdh
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.44990,
	bne	.L1361	@,
	ldr	r2, [r7, #196]	@ temp.4659, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.4659,
	bne	.L1362	@,
.L1307:
	ldr	r0, [r6, #0]	@ D.44935, <variable>.eVidStd
	cmp	r0, #4	@ D.44935,
	cmpne	r0, #14	@, D.44935,
	movne	r7, #0	@, tmp354
	moveq	r7, #1	@, tmp354
	bne	.L1317	@,
	ldr	r2, [r5, r4, asl #2]	@ tmp356, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	add	r1, sp, #68	@,,
	ldr	ip, [r2, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	str	ip, [sp, #68]	@ <variable>.s32SdecMemAddr, stMem.PhyAddr
	ldr	lr, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	lr, [sp, #72]	@ <variable>.s32SdecMemSize, stMem.VirAddr
	ldr	r3, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r3, [sp, #76]	@ <variable>.s32SdecMemSize, stMem.Length
	ldr	ip, [r2, #1460]	@ <variable>.stSynExtraData.stChanOption.s32MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	mov	r3, ip, asl #1	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight,
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1363	@,
.L1318:
	ldr	r7, [r5, r4, asl #2]	@ prephitmp.4621, s_pstVfmwChan
	b	.L1296	@
.L1359:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	strb	r9, [r7, #184]	@ tmp245, <variable>.stChanMem_scd.IsCached
	mov	r8, r0	@ pVir_scd,
	b	.L1301	@
.L1297:
	add	r0, r5, #520	@, tmp580,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r6, #0]	@ D.44944, <variable>.eVidStd
	cmp	r3, #4	@ D.44944,
	cmpne	r3, #14	@, D.44944,
	bne	.L1309	@,
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	sl, r0	@ pVir,
.L1310:
	movw	r8, #:lower16:.LANCHOR0	@ tmp303,
	movt	r8, #:upper16:.LANCHOR0	@ tmp303,
	add	r0, r8, #520	@, tmp303,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4627, s_pstVfmwChan
	cmp	r3, #0	@ temp.4627,
	beq	.L1364	@,
	cmp	sl, #0	@ pVir,
	beq	.L1365	@,
	ldr	r2, [r3, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r3, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r3, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	subs	r9, r0, #0	@ D.45021,
	ldrne	r2, [r8, r4, asl #2]	@ D.45025, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L1348	@,
	ldr	fp, [r8, r4, asl #2]	@ temp.4674, s_pstVfmwChan
	ldr	r2, [fp, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [fp, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [fp, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.45016,
	ldrne	r2, [r8, r4, asl #2]	@ temp.4676, s_pstVfmwChan
	movne	r0, r9	@, D.45021
	bne	.L1347	@,
	str	sl, [r7, #156]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, sl	@, pVir
	ldr	lr, [r8, r4, asl #2]	@ tmp325, s_pstVfmwChan
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r2, [r7, #164]	@, <variable>.stChanMem.Length
	str	sl, [lr, #188]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	lr, [r8, r4, asl #2]	@ temp.4684, s_pstVfmwChan
	ldr	r3, [lr, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, sl, r3	@ tmp328, pVir, <variable>.stChanMem_scd.Length
	str	ip, [lr, #172]	@ tmp328, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.45009,
	bne	.L1366	@,
	ldr	r7, [r8, r4, asl #2]	@ temp.4690, s_pstVfmwChan
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r7, r0, #0	@ D.45008,
	bne	.L1367	@,
	ldr	r3, [r8, r4, asl #2]	@ temp.4700, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1307	@,
	ldr	r2, [r8, r4, asl #2]	@ temp.4705, s_pstVfmwChan
	mov	r0, r7	@, D.45008
.L1347:
	ldr	lr, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r2, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r2, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1350:
	mov	r0, r3	@, D.37700
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3474	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1317:
	ldr	r0, [r5, r4, asl #2]	@ tmp371, s_pstVfmwChan
	ldr	r1, [r0, #236]	@ D.44923, <variable>.s32OffLineDnrMemAddr
	mov	r0, r1	@, D.44923
	str	r1, [sp, #68]	@ D.44923, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r5, r4, asl #2]	@ tmp373, s_pstVfmwChan
	add	r1, sp, #68	@,,
	str	r0, [sp, #72]	@, stMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	r3, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #76]	@ <variable>.s32OffLineDNRMemSize, stMem.Length
	ldr	r3, [r2, #1460]	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L1318	@,
	mov	r0, r7	@, tmp354
	movw	r1, #:lower16:.LC186	@,
	movt	r1, #:upper16:.LC186	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1299:
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #196]	@ temp.4644, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp242, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.4644,
	mov	sl, r0	@ pVir_vdh,
	beq	.L1300	@,
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	strb	r9, [r7, #184]	@ tmp242, <variable>.stChanMem_scd.IsCached
	mov	r8, r0	@ pVir_scd,
	b	.L1301	@
.L1309:
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	sl, r0	@ pVir,
	b	.L1310	@
.L1358:
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	b	.L1298	@
.L1362:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	subs	r9, r0, #0	@ D.44987,
	ldrne	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movne	r0, sl	@, D.44990
	bne	.L1345	@,
	str	r8, [r7, #188]	@ pVir_scd, <variable>.stChanMem_scd.VirAddr
	mov	r1, r8	@, pVir_scd
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1307	@,
	ldr	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	mov	r0, r9	@, D.44987
.L1345:
	str	r3, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	movw	r1, #:lower16:.LC183	@,
	ldr	r3, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	movt	r1, #:upper16:.LC183	@,
	ldr	r2, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1344:
	ldr	r1, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r1, #1	@ tmp497, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #52]	@ tmp497, DnrChanCfgArgs.s32MirrorEn
	b	.L1327	@
.L1330:
	ldmia	sl, {r0, r1, r2, r3}	@ tmp578,,,,
	add	lr, ip, #210944	@ tmp520, D.40949,
	add	ip, lr, #824	@ tmp520, tmp520,
	stmia	ip, {r0, r1, r2, r3}	@ tmp520,,,,
	b	.L1331	@
.L1360:
	movw	r1, #:lower16:.LC181	@,
	ldr	r2, .L1368+8	@,
	movt	r1, #:upper16:.LC181	@,
	movw	r3, #3361	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1364:
	mov	r0, r3	@, temp.4627
	movw	r1, #:lower16:.LC181	@,
	ldr	r2, .L1368+8	@,
	movt	r1, #:upper16:.LC181	@,
	movw	r3, #3399	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1303:
	mov	r2, r4	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC182	@,
	movt	r1, #:upper16:.LC182	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1357:
	str	r2, [r3, #12]	@ D.37810, g_ChanCtx.PriorByChanId
	str	r2, [r1, #3900]	@ D.37810, PrioArray
	b	.L1332	@
.L1367:
	ldr	r2, [r8, r4, asl #2]	@ temp.4695, s_pstVfmwChan
	mov	r0, sl	@, D.45009
.L1348:
	ldr	ip, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r2, #188]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r2, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1361:
	ldr	r3, [r7, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	mov	r0, fp	@, D.44993
.L1346:
	str	r3, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	movw	r1, #:lower16:.LC183	@,
	ldr	r3, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	movt	r1, #:upper16:.LC183	@,
	ldr	r2, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1366:
	ldr	r2, [r7, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	mov	r0, fp	@, D.45016
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem.Length,
	ldr	r3, [r7, #156]	@, <variable>.stChanMem.VirAddr
	ldr	r2, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1365:
	mov	r0, sl	@, pVir
	mov	r2, r4	@, ChanID
	movw	r1, #:lower16:.LC184	@,
	movt	r1, #:upper16:.LC184	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1363:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37698,
	b	.L1290	@
.L1369:
	.align	2
.L1368:
	.word	.LANCHOR0+3888
	.word	.LANCHOR0+520
	.word	.LANCHOR1+456
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.type	VfmwProc_SetDropStreamThread, %function
VfmwProc_SetDropStreamThread:
	.fnstart
.LFB1782:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC188	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC188	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1372	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1372:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDropStreamThread, .-VfmwProc_SetDropStreamThread
	.align	2
	.type	VfmwProc_SetDecMode, %function
VfmwProc_SetDecMode:
	.fnstart
.LFB1781:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	and	r5, r4, #3	@ Mode, dat,
	movw	r1, #:lower16:.LC189	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC189	@,
	mov	r3, r5	@, Mode
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1375	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1375:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecMode, .-VfmwProc_SetDecMode
	.align	2
	.type	VfmwProc_SetDecOrderOutput, %function
VfmwProc_SetDecOrderOutput:
	.fnstart
.LFB1780:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	and	r5, r4, #3	@ DecOrderOutput, dat,
	movw	r1, #:lower16:.LC190	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC190	@,
	mov	r3, r5	@, DecOrderOutput
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1378	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1378:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecOrderOutput, .-VfmwProc_SetDecOrderOutput
	.align	2
	.type	VfmwProc_SetErrorThread, %function
VfmwProc_SetErrorThread:
	.fnstart
.LFB1779:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC191	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC191	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1381	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1381:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetErrorThread, .-VfmwProc_SetErrorThread
	.align	2
	.global	VCTRL_GetDispStateWithDNR
	.type	VCTRL_GetDispStateWithDNR, %function
VCTRL_GetDispStateWithDNR:
	.fnstart
.LFB1678:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r1, sp	@,
	bl	DNR_GetState	@
	ldr	r1, [sp, #68]	@ DnrChanState.total_frame_num, DnrChanState.total_frame_num
	ldr	r2, [sp, #72]	@ DnrChanState.new_frame_num, DnrChanState.new_frame_num
	ldr	r0, [sp, #76]	@ DnrChanState.read_out_frame_num, DnrChanState.read_out_frame_num
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, <variable>.total_disp_frame_num
	add	r3, r2, r0	@ tmp138, DnrChanState.new_frame_num, DnrChanState.read_out_frame_num
	str	r3, [r4, #88]	@ tmp138, <variable>.wait_disp_frame_num
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, pc}
	.fnend
	.size	VCTRL_GetDispStateWithDNR, .-VCTRL_GetDispStateWithDNR
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #3	@ ChanID,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r0, #0	@ tmp137,
	str	r0, [sp, #28]	@ tmp137, NewNum
	str	r0, [sp, #32]	@ tmp137, ReadNum
	str	r0, [sp, #36]	@ tmp137, RefNum
	bhi	.L1393	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1394	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp193,
	movt	r6, #:upper16:.LANCHOR0	@ tmp193,
	ldr	r0, [r6, r5, asl #2]	@ D.36175, s_pstVfmwChan
	cmp	r0, #0	@ D.36175,
	beq	.L1395	@,
	add	r1, r0, #1280	@, D.36175,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r2, sp, #32	@,,
	add	r3, sp, #28	@,,
	mov	r0, r5	@, ChanID
	add	r1, sp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6, r5, asl #2]	@ temp.4853, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1396	@,
.L1389:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispStateWithDNR	@
.L1391:
	add	r3, r5, r5, asl #1	@, tmp166, ChanID, ChanID,
	ldr	lr, [sp, #32]	@ ReadNum, ReadNum
	ldr	ip, [sp, #28]	@ NewNum, NewNum
	mov	r0, r5	@, ChanID
	add	r2, r6, r3, asl #3	@, tmp168, tmp193, tmp166,
	add	r1, ip, lr	@ tmp161, NewNum, ReadNum
	str	r1, [r4, #52]	@ tmp161, <variable>.decoded_1d_frame_num
	ldr	ip, [r2, #428]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	add	r1, sp, #4	@,,
	str	ip, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [r2, #416]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #12]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	ldr	r0, [sp, #20]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	movw	r3, #:lower16:227704	@ tmp188,
	ldr	ip, [sp, #24]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movt	r3, #:upper16:227704	@ tmp188,
	str	r2, [r4, #60]	@ ScdInstInfo.SegNum, <variable>.buffered_stream_num
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, <variable>.buffered_stream_size
	cmp	ip, #10	@ ScdInstInfo.numReadSegFail,
	movle	r1, #0	@, tmp185
	movgt	r1, #1	@, tmp185
	str	r1, [r4, #84]	@ tmp185, <variable>.stream_not_enough
	ldr	r2, [r6, r5, asl #2]	@ tmp187, s_pstVfmwChan
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp190,
	and	r0, ip, #1	@ tmp192, tmp190,
	str	r0, [r4, #92]	@ tmp192, <variable>.mpeg4_shorthead
.L1392:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L1393:
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	dprint_vfmw	@
	b	.L1392	@
.L1396:
	ldr	r3, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L1389	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pstChanState
	ldr	r2, [sp, #36]	@, RefNum
	bl	VCTRL_GetDispState	@
	b	.L1391	@
.L1395:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1293	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC194	@,
	movt	r3, #:upper16:.LC194	@,
	bl	dprint_vfmw	@
	b	.L1392	@
.L1394:
	mov	r0, r1	@, pstChanState
	movw	r2, #1292	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC193	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC193	@,
	bl	dprint_vfmw	@
	b	.L1392	@
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
	.fnstart
.LFB1676:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1403	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r0, [r3, r0, asl #2]	@ D.36087, s_pstVfmwChan
	cmp	r0, #0	@ D.36087,
	beq	.L1404	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1405	@,
	add	r0, r0, #74752	@, D.36087,
	add	r0, r0, #680	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L1405:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC195	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r2, #1216	@,
	movt	r3, #:upper16:.LC195	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1399:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L1403:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1214	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L1399	@
.L1404:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1215	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	b	.L1399	@
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36021,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1409	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1409:
	ldr	r1, [r4, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1410	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChan	@
.L1410:
	ldr	r2, [r4, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1411	@,
	mov	r0, #2	@,
	bl	VCTRL_DestroyChan	@
.L1411:
	ldr	r5, [r4, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r5, #0	@ s_pstVfmwChan,
	beq	.L1412	@,
	mov	r0, #3	@,
	bl	VCTRL_DestroyChan	@
.L1412:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	ip, #3	@ tmp147,
	str	ip, [r4, #144]	@ tmp147, s_VfmwCTrl.eTaskCommand
	b	.L1414	@
.L1419:
	bl	msleep	@
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1413	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1413	@,
.L1414:
	ldr	lr, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r3, r5, #1	@ tmp162, i,
	mov	r0, #10	@,
	add	r5, r3, #1	@ i, tmp162,
	cmp	lr, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1419	@,
.L1413:
	mov	r1, #16	@,
	ldr	r0, .L1420	@,
	mov	r5, #0	@ tmp151,
	str	r5, [r4, #144]	@ tmp151, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1420+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.36021, tmp151
	str	r5, [r4, #112]	@ tmp151, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1421:
	.align	2
.L1420:
	.word	.LANCHOR0+376
	.word	.LANCHOR0+160
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
.LFB1670:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #144]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1427	@
.L1425:
	bl	msleep	@
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1432	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1434	@,
.L1427:
	ldr	r3, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1425	@,
.L1432:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1434:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #144]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1440	@
.L1438:
	bl	msleep	@
	ldr	r2, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1445	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1447	@,
.L1440:
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1438	@,
.L1445:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1447:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp290,
	movt	r4, #:upper16:.LANCHOR0	@ tmp290,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ event_report, event_report
	ldr	r7, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r7, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1473	@,
.L1449:
	mvn	r0, #0	@ D.35944,
.L1471:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1473:
	movw	r6, #:lower16:saved_command_line	@ tmp289,
	movt	r6, #:upper16:saved_command_line	@ tmp289,
	mov	r2, #1024	@,
	add	r0, r4, #3904	@, tmp290,
	ldr	r1, [r6, #0]	@, saved_command_line
	str	r7, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3904	@, tmp290,
	movw	r1, #:lower16:.LC196	@,
	movt	r1, #:upper16:.LC196	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp172,
	str	r0, [sp, #4]	@ tmp172, p
	beq	.L1450	@,
	add	r8, sp, #4	@ p.709,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r8	@, p.709
	bl	strsep	@
	subs	r3, r0, #0	@ D.45492,
	beq	.L1455	@,
	mov	r0, r8	@, p.709
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1474	@,
	mov	r1, r7	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #60]	@ prephitmp.5037, extra_ref
.L1454:
	add	r1, r0, #4992	@ tmp183, prephitmp.5037,
	movw	r2, #10000	@ tmp185,
	add	r3, r1, #8	@ tmp183, tmp183,
	cmp	r3, r2	@ tmp183, tmp185
	bhi	.L1456	@,
	movw	ip, #5000	@ tmp186,
	movw	r7, #:lower16:-5000	@ tmp187,
	cmp	r0, ip	@ prephitmp.5037, tmp186
	movge	r0, ip	@ pretmp.5034, tmp186
	movt	r7, #:upper16:-5000	@ tmp187,
	cmp	r0, r7	@ pretmp.5034, tmp187
	movge	r3, r0	@ prephitmp.5036, pretmp.5034
	movlt	r3, r7	@ prephitmp.5036, tmp187
.L1455:
	str	r3, [r4, #60]	@ prephitmp.5036, extra_ref
.L1453:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1477	@,
	mov	r7, #0	@ tmp193,
	str	r7, [sp, #4]	@ tmp193, p
	bl	strlcpy	@
	ldr	r0, .L1477	@,
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	bl	strstr	@
	cmp	r0, r7	@ tmp197,
	str	r0, [sp, #4]	@ tmp197, p
	beq	.L1457	@,
	add	r8, sp, #4	@ p.720,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r8	@, p.720
	bl	strsep	@
	subs	r3, r0, #0	@ D.45512,
	beq	.L1462	@,
	mov	r0, r8	@, p.720
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, r7	@,
	beq	.L1475	@,
	mov	r1, r7	@, tmp193
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #64]	@ prephitmp.5032, extra_disp
.L1461:
	add	ip, r0, #4992	@ tmp208, prephitmp.5032,
	movw	lr, #10000	@ tmp210,
	add	r7, ip, #8	@ tmp208, tmp208,
	cmp	r7, lr	@ tmp208, tmp210
	bhi	.L1463	@,
	movw	r3, #5000	@ tmp211,
	movw	r2, #:lower16:-5000	@ tmp212,
	cmp	r0, r3	@ prephitmp.5032, tmp211
	movge	r0, r3	@ pretmp.5019, tmp211
	movt	r2, #:upper16:-5000	@ tmp212,
	cmp	r0, r2	@ pretmp.5019, tmp212
	movge	r3, r0	@ prephitmp.5008, pretmp.5019
	movlt	r3, r2	@ prephitmp.5008, tmp212
.L1462:
	str	r3, [r4, #64]	@ prephitmp.5008, extra_disp
.L1460:
	movw	r4, #:lower16:.LANCHOR3	@ tmp291,
	movt	r4, #:upper16:.LANCHOR3	@ tmp291,
	mov	lr, #0	@ tmp218,
	str	lr, [sp, #4]	@ tmp218, p
	ldr	r7, [r4, #-3256]	@ extra_cmd.726, extra_cmd
	cmp	r7, lr	@ extra_cmd.726,
	beq	.L1464	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp224,
	movt	r3, #:upper16:.LANCHOR2	@ tmp224,
	ubfx	r0, r7, #2, #1	@ tmp232, extra_cmd.726,,
	and	r2, r7, #1	@ tmp222, extra_cmd.726,
	strb	r0, [r4, #-3251]	@ tmp232, g_not_allow_H264FullPictureRepair_flag
	ubfx	r7, r7, #1, #1	@ tmp227, extra_cmd.726,,
	strb	r2, [r4, #-3252]	@ tmp222, g_allow_B_before_P
	strb	r7, [r3, #64]	@ tmp227, g_not_direct_8x8_inference_flag
.L1465:
	movw	r4, #:lower16:.LANCHOR0	@ tmp260,
	movt	r4, #:upper16:.LANCHOR0	@ tmp260,
	add	r0, r4, #112	@, tmp260,
	mov	r1, #152	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp260
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #532	@, tmp260,
	mov	r1, #16	@,
	bl	__memzero	@
	cmp	r5, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp266,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp266,
	streq	r3, [r4, #20]	@ tmp266, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp267,
	movt	r4, #:upper16:.LANCHOR0	@ tmp267,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #376	@, tmp267,
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #160	@, tmp267,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1449	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1477+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #148	@, tmp267,
	movw	r1, #:lower16:.LC204	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC204	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.35971,
	bne	.L1470	@,
	add	r0, r4, #148	@, tmp267,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp284,
	mov	r0, r5	@ D.35944, D.35971
	str	r3, [r4, #112]	@ tmp284, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1471	@
.L1464:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1477	@,
	bl	strlcpy	@
	ldr	r0, .L1477	@,
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp237,
	str	r0, [sp, #4]	@ tmp237, p
	beq	.L1465	@,
	add	r6, sp, #4	@ p.735,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r6	@, p.735
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3256]	@ prephitmp.5006, extra_cmd
	beq	.L1467	@,
	mov	r0, r6	@, p.735
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1476	@,
	mov	r1, r7	@, extra_cmd.726
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3256]	@ prephitmp.5006, extra_cmd
.L1467:
	movw	ip, #:lower16:.LANCHOR2	@ tmp250,
	movt	ip, #:upper16:.LANCHOR2	@ tmp250,
	ubfx	lr, r0, #2, #1	@ tmp258, prephitmp.5006,,
	and	r1, r0, #1	@ tmp248, prephitmp.5006,
	strb	lr, [r4, #-3251]	@ tmp258, g_not_allow_H264FullPictureRepair_flag
	strb	r1, [r4, #-3252]	@ tmp248, g_allow_B_before_P
	ubfx	r4, r0, #1, #1	@ tmp253, prephitmp.5006,,
	strb	r4, [ip, #64]	@ tmp253, g_not_direct_8x8_inference_flag
	b	.L1465	@
.L1457:
	ldr	r0, [r4, #64]	@ prephitmp.5032, extra_disp
	b	.L1461	@
.L1450:
	ldr	r0, [r4, #60]	@ prephitmp.5037, extra_ref
	b	.L1454	@
.L1456:
	mov	r2, r0	@, prephitmp.5037
	movw	r1, #:lower16:.LC200	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC200	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #60]	@ pretmp.5033, extra_ref
	movw	r3, #5000	@ tmp190,
	movw	r0, #:lower16:-5000	@ tmp191,
	cmp	r1, r3	@ pretmp.5033, tmp190
	movlt	r2, r1	@ prephitmp.5036, pretmp.5033
	movge	r2, r3	@ prephitmp.5036, tmp190
	movt	r0, #:upper16:-5000	@ tmp191,
	cmp	r2, r0	@ prephitmp.5036, tmp191
	movge	r3, r2	@ prephitmp.5036, prephitmp.5036
	movlt	r3, r0	@ prephitmp.5036, tmp191
	b	.L1455	@
.L1463:
	mov	r2, r0	@, prephitmp.5032
	movw	r1, #:lower16:.LC202	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC202	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #64]	@ pretmp.5007, extra_disp
	movw	r0, #:lower16:-5000	@ tmp216,
	movw	ip, #5000	@ tmp215,
	movt	r0, #:upper16:-5000	@ tmp216,
	cmp	r1, ip	@ pretmp.5007, tmp215
	movlt	r7, r1	@ prephitmp.5008, pretmp.5007
	movge	r7, ip	@ prephitmp.5008, tmp215
	cmp	r7, r0	@ prephitmp.5008, tmp216
	movge	r3, r7	@ prephitmp.5008, prephitmp.5008
	movlt	r3, r0	@ prephitmp.5008, tmp216
	b	.L1462	@
.L1474:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1477+8	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7132	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1453	@
.L1475:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1477+12	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7173	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1460	@
.L1476:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1477+16	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7223	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1465	@
.L1470:
	add	r0, r4, #160	@, tmp267,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.35944,
	b	.L1471	@
.L1478:
	.align	2
.L1477:
	.word	.LANCHOR0+3904
	.word	.LANCHOR3-3248
	.word	.LANCHOR1+476
	.word	.LANCHOR1+496
	.word	.LANCHOR1+516
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
.LFB1665:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR3	@ tmp143,
	movt	r4, #:upper16:.LANCHOR3	@ tmp143,
	ldr	r3, [r4, #-3236]	@ LastEventTime.468, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.468
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3236]	@ CurTime, LastEventTime
	bhi	.L1484	@,
.L1481:
	ldr	r0, .L1485	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3236]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1484:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.468, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1481	@
.L1486:
	.align	2
.L1485:
	.word	.LANCHOR3-3248
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Dnr_Isr
	.type	VCTRL_Dnr_Isr, %function
VCTRL_Dnr_Isr:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	DNR_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Dnr_Isr, .-VCTRL_Dnr_Isr
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #1	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #0	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp161,
	movt	r4, #:upper16:.LANCHOR0	@ tmp161,
	mov	r3, #100	@ tmp139,
	ldr	r0, [r4, #48]	@ g_SleepTime.463, g_SleepTime
	str	r3, [r4, #152]	@ tmp139, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.463,
	ble	.L1496	@,
	bl	msleep	@
.L1496:
	ldr	r0, .L1505	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r4, #40]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp144,
	str	r2, [r4, #152]	@ tmp144, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1504	@,
.L1498:
	mov	ip, #102	@ tmp148,
	str	ip, [r4, #152]	@ tmp148, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp149,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp149,
	ldr	r0, [r1, #28]	@ D.35828, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.35828,
	beq	.L1499	@,
	blx	r0	@ D.35828
.L1500:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	ldr	r3, [lr, #56]	@ D.35833, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.35833,
	beq	.L1501	@,
	mov	r0, #0	@,
	blx	r3	@ D.35833
.L1502:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #2	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #3	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1505	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1505+4	@,
	mov	r3, #105	@ tmp156,
	str	r3, [r4, #152]	@ tmp156, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1501:
	mov	r0, r3	@, D.35833
	movw	r1, #:lower16:.LC81	@,
	mov	r2, #556	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1502	@
.L1504:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1498	@
.L1499:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #549	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L1500	@
.L1506:
	.align	2
.L1505:
	.word	.LANCHOR0+520
	.word	.LANCHOR3-3248
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r0, sp, #4	@,,
	mov	r3, #4	@ tmp148,
	mov	r1, sp	@,
	mov	r7, #0	@ tmp147,
	str	r3, [sp, #0]	@ tmp148, enChipVersion
	movw	r4, #:lower16:.LANCHOR0	@ tmp206,
	str	r7, [sp, #4]	@ tmp147, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	movw	sl, #:lower16:599999	@ tmp218,
	movw	r8, #:lower16:-31444992	@ tmp219,
	movt	r4, #:upper16:.LANCHOR0	@ tmp206,
	movt	sl, #:upper16:599999	@ tmp218,
	movt	r8, #:upper16:-31444992	@ tmp219,
	mov	r5, #1	@ tmp217,
	mov	r9, #5	@ tmp224,
.L1508:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	mov	r2, #0	@ tmp152,
	str	r2, [r4, #152]	@ tmp152, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.5205, s_VfmwCTrl.eTaskCommand
	mov	r6, #2	@ tmp154,
	str	r5, [r4, #152]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, r6	@ temp.5205,
	str	r6, [r4, #140]	@ tmp154, s_VfmwCTrl.eTaskState
	bne	.L1515	@,
	b	.L1509	@
.L1512:
	str	r6, [r4, #152]	@ tmp213, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ D.35776, s_VfmwCTrl.eTaskCommand
	str	r5, [r4, #152]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.35776,
	beq	.L1509	@,
.L1515:
	cmp	r3, #3	@ D.35776,
	beq	.L1510	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1512	@,
	rsbs	ip, r7, #1	@ tmp164, time2
	movcc	ip, #0	@ tmp164
	rsb	lr, r7, r0	@ tmp159, time2, time1
	cmp	lr, sl	@ tmp159, tmp218
	orrhi	ip, ip, #1	@,, tmp167, tmp164
	cmp	ip, #0	@ tmp167,
	beq	.L1512	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r7, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.35795, reg_val,
	strne	r1, [r8, #92]	@ D.35795,
	ldr	r2, [r8, #96]	@ reg_val.5197,
	cmp	r2, #3	@ reg_val.5197,
	cmpne	r2, #0	@, reg_val.5197,
	bic	r3, r2, #7	@ temp.5201, reg_val.5197,
	strne	r3, [r8, #96]	@ temp.5201,
	movne	r7, r0	@ time2, time1
	b	.L1512	@
.L1509:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	mov	lr, #4	@ tmp192,
	str	lr, [r4, #152]	@ tmp192, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r5, [r4, #140]	@ tmp217, s_VfmwCTrl.eTaskState
.L1516:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	str	r9, [r4, #152]	@ tmp224, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.5202, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.5202,
	beq	.L1508	@,
	cmp	r3, #3	@ temp.5202,
	mov	r0, #10	@,
	beq	.L1510	@,
	bl	msleep	@
	b	.L1516	@
.L1510:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC209	@,
	movt	r1, #:upper16:.LC209	@,
	mov	r3, #6	@ tmp200,
	str	r3, [r4, #152]	@ tmp200, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp203,
	str	r0, [r4, #140]	@ tmp203, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SCDDRV_ExitSleep	@
	bl	DNRDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	subs	r4, r0, #0	@ D.35733,
	bne	.L1522	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1527	@,
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
.L1527:
	bl	SCDDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC211	@,
	mov	r2, r0	@ D.35742,
	mov	r0, r4	@, D.35733
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1522:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	mov	r2, r0	@ D.35737,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
.LFB1795:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC212	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC212	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
	.fnend
	.size	VfmwProc_TestResume, .-VfmwProc_TestResume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i,
	mvn	r6, r4	@ tmp174, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1535	@
.L1534:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1531	@,
.L1565:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime.5294, CurTime, tmp174
	rsbls	r7, r4, r0	@ WaitTime.5294, EntrTime, CurTime
	cmp	r7, #200	@ WaitTime.5294,
	bhi	.L1574	@,
.L1563:
	add	r5, r5, #1	@ i, tmp179,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1531	@,
.L1535:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1531	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r7, r4, r0	@ WaitTime.5294, EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime.5294, CurTime, tmp174
	cmp	r7, #200	@ WaitTime.5294,
	bls	.L1534	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime.5294
	movw	r1, #:lower16:.LC213	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC213	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1565	@,
.L1531:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, #4]	@ D.35688, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.35688,
	beq	.L1536	@,
	mov	r0, #0	@,
	blx	r3	@ D.35688
.L1537:
	bl	SCDDRV_PrepareSleep	@
	mov	r6, #0	@ i.5297,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r7, r0	@ tmp169, BeginTime
	b	.L1542	@
.L1541:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp178, i.5297,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1538	@,
.L1566:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5295
	addhi	sl, r0, r7	@ WaitTime, CurTime.5295, tmp169
	rsbls	sl, r5, r0	@ WaitTime, BeginTime, CurTime.5295
	cmp	sl, #200	@ WaitTime,
	bhi	.L1575	@,
.L1560:
	add	r6, r6, #1	@ i.5297, tmp178,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5297,
	beq	.L1538	@,
.L1542:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1538	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5295
	rsbls	sl, r5, r0	@ WaitTime, BeginTime, CurTime.5295
	addhi	sl, r0, r7	@ WaitTime, CurTime.5295, tmp169
	cmp	sl, #200	@ WaitTime,
	bls	.L1541	@,
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime
	movw	r1, #:lower16:.LC214	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC214	@,
	add	r6, r6, #1	@ tmp178, i.5297,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1566	@,
.L1538:
	ldr	r0, [r8, #12]	@ D.35704, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.35704,
	beq	.L1543	@,
	blx	r0	@ D.35704
.L1544:
	bl	DNRDRV_PrepareSleep	@
	mov	r6, #0	@ i.5302,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime.5299,
	mvn	r7, r0	@ tmp165, BeginTime.5299
	b	.L1549	@
.L1548:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp177, i.5302,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1545	@,
.L1567:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5299, CurTime.5300
	addhi	r8, r0, r7	@ WaitTime.5293, CurTime.5300, tmp165
	rsbls	r8, r5, r0	@ WaitTime.5293, BeginTime.5299, CurTime.5300
	cmp	r8, #200	@ WaitTime.5293,
	bhi	.L1576	@,
.L1557:
	add	r6, r6, #1	@ i.5302, tmp177,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5302,
	beq	.L1545	@,
.L1549:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1545	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5299, CurTime.5300
	rsbls	r8, r5, r0	@ WaitTime.5293, BeginTime.5299, CurTime.5300
	addhi	r8, r0, r7	@ WaitTime.5293, CurTime.5300, tmp165
	cmp	r8, #200	@ WaitTime.5293,
	bls	.L1548	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.5293
	movw	r1, #:lower16:.LC215	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC215	@,
	add	r6, r6, #1	@ tmp177, i.5302,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1567	@,
.L1545:
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	cmp	r4, r0	@ EntrTime, CurTime.5303
	rsbls	r2, r4, r0	@ iftmp.459, EntrTime, CurTime.5303
	mvnhi	r4, r4	@ tmp162, EntrTime
	addhi	r2, r0, r4	@ iftmp.459, CurTime.5303, tmp162
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L1574:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime.5294
	movw	r1, #:lower16:.LC213	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC213	@,
	bl	dprint_vfmw	@
	b	.L1563	@
.L1575:
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime
	movw	r1, #:lower16:.LC214	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC214	@,
	bl	dprint_vfmw	@
	b	.L1560	@
.L1576:
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.5293
	movw	r1, #:lower16:.LC215	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	b	.L1557	@
.L1536:
	mov	r0, r3	@, D.35688
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1537	@
.L1543:
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #309	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1544	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
.LFB1794:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC212	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC212	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Suspend	@
	.fnend
	.size	VfmwProc_TestSuspend, .-VfmwProc_TestSuspend
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	ldr	r0, .L1581	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L1582:
	.align	2
.L1581:
	.word	.LANCHOR0+68
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.global	g_DSPState
	.global	g_scd_vir
	.global	g_ChanTick
	.global	g_SdecFunc
	.global	s_pstVfmwChan
	.global	extra_ref
	.global	extra_disp
	.global	extra_cmd
	.global	g_allow_B_before_P
	.global	g_not_direct_8x8_inference_flag
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_DbgMemPhy
	.global	g_pDbgMemVir
	.global	vfmw_save_str_file
	.global	save_str_chan_num
	.global	vfmw_save_seg_file
	.global	save_seg_chan_num
	.global	vfmw_save_yuv_file
	.global	save_yuv_chan_num
	.global	g_ResetCreateNewSave
	.global	g_CurProcChan
	.global	g_VdmCharacter
	.global	g_SleepTime
	.global	g_DnrSleepTime
	.global	g_StopDec
	.global	g_VdecIrqHandle
	.global	g_DnrIrqHandle
	.global	g_event_report
	.global	g_VfmwChanStat
	.global	g_VfmwGlobalStat
	.global	g_eVdmVersion
	.global	AcceleratorCharacter
	.global	g_TaskLock
	.global	g_DSDLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	g_ProcCommandTable, %object
	.size	g_ProcCommandTable, 280
g_ProcCommandTable:
@ CmdName:
	.word	0
@ pHandler:
	.word	VfmwProc_SetPrintLevel
@ CmdName:
	.word	2
@ pHandler:
	.word	VfmwProc_SetErrorThread
@ CmdName:
	.word	4
@ pHandler:
	.word	VfmwProc_SetDecOrderOutput
@ CmdName:
	.word	5
@ pHandler:
	.word	VfmwProc_SetDecMode
@ CmdName:
	.word	7
@ pHandler:
	.word	VfmwProc_SetDropStreamThread
@ CmdName:
	.word	10
@ pHandler:
	.word	VfmwProc_SetDNR
@ CmdName:
	.word	11
@ pHandler:
	.word	VfmwProc_SetUSE_FF_APT_EN
@ CmdName:
	.word	12
@ pHandler:
	.word	VfmwProc_SetSaveFileAfterReset
@ CmdName:
	.word	13
@ pHandler:
	.word	VfmwProc_SetCurProcChan
@ CmdName:
	.word	14
@ pHandler:
	.word	VfmwProc_SetDNRCfg
@ CmdName:
	.word	256
@ pHandler:
	.word	VfmwProc_PrintTracer
@ CmdName:
	.word	512
@ pHandler:
	.word	VfmwProc_Savestream
@ CmdName:
	.word	513
@ pHandler:
	.word	VfmwProc_SaveSeg
@ CmdName:
	.word	514
@ pHandler:
	.word	VfmwProc_SaveYUV
@ CmdName:
	.word	515
@ pHandler:
	.word	VfmwProc_SaveOneYUV
@ CmdName:
	.word	516
@ pHandler:
	.word	VfmwProc_Save1DYUV
@ CmdName:
	.word	768
@ pHandler:
	.word	VfmwProc_TestSuspend
@ CmdName:
	.word	769
@ pHandler:
	.word	VfmwProc_TestResume
@ CmdName:
	.word	896
@ pHandler:
	.word	VfmwProc_TestStopChan
@ CmdName:
	.word	897
@ pHandler:
	.word	VfmwProc_TestResetChan
@ CmdName:
	.word	898
@ pHandler:
	.word	VfmwProc_TestStartChan
@ CmdName:
	.word	899
@ pHandler:
	.word	VfmwProc_TestRestartChan
@ CmdName:
	.word	1024
@ pHandler:
	.word	VfmwProc_TestTimeSequence
@ CmdName:
	.word	1025
@ pHandler:
	.word	VfmwProc_SetDnrSleepTime
@ CmdName:
	.word	1026
@ pHandler:
	.word	VfmwProc_TestStopDec
@ CmdName:
	.word	1280
@ pHandler:
	.word	VfmwProc_SetTraceCtrl
@ CmdName:
	.word	1281
@ pHandler:
	.word	VfmwProc_SetTraceBSPeriod
@ CmdName:
	.word	1282
@ pHandler:
	.word	VfmwProc_SetTraceFramePeriod
@ CmdName:
	.word	1283
@ pHandler:
	.word	VfmwProc_SetTraceImgPeriod
@ CmdName:
	.word	1284
@ pHandler:
	.word	VfmwProc_SetNoStreamReportPeriod
@ CmdName:
	.word	1536
@ pHandler:
	.word	VfmwProc_OpenModuleLowly
@ CmdName:
	.word	1537
@ pHandler:
	.word	VfmwProc_CloseModuleLowly
@ CmdName:
	.word	1539
@ pHandler:
	.word	VfmwProc_OpenScdLowdly
@ CmdName:
	.word	1540
@ pHandler:
	.word	VfmwProc_CloseScdLowdly
@ CmdName:
	.word	65535
@ pHandler:
	.word	0
	.type	C.743.40045, %object
	.size	C.743.40045, 12
C.743.40045:
	.word	.LC217
	.word	.LC218
	.word	.LC219
	.type	CSWTCH.850, %object
	.size	CSWTCH.850, 32
CSWTCH.850:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.38805, %object
	.size	__func__.38805, 26
__func__.38805:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.35917, %object
	.size	__func__.35917, 18
__func__.35917:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.35883, %object
	.size	__func__.35883, 18
__func__.35883:
	.ascii	"VCTRL_EventReport\000"
	.space	2
	.type	CSWTCH.885, %object
	.size	CSWTCH.885, 32
CSWTCH.885:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.36221, %object
	.size	__func__.36221, 29
__func__.36221:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.37604, %object
	.size	__func__.37604, 19
__func__.37604:
	.ascii	"VCTRL_RemapVirAddr\000"
	.space	1
	.type	__func__.39878, %object
	.size	__func__.39878, 18
__func__.39878:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.39914, %object
	.size	__func__.39914, 19
__func__.39914:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.39950, %object
	.size	__func__.39950, 16
__func__.39950:
	.ascii	"GetExtraCtrlCmd\000"
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 10
__param_str_extra_cmd:
	.ascii	"extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 11
__param_str_extra_disp:
	.ascii	"extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 10
__param_str_extra_ref:
	.ascii	"extra_ref\000"
	.section	.modinfo,"a",%progbits
	.type	__UNIQUE_ID_extra_cmdtype2, %object
	.size	__UNIQUE_ID_extra_cmdtype2, 23
__UNIQUE_ID_extra_cmdtype2:
	.ascii	"parmtype=extra_cmd:int\000"
	.type	__UNIQUE_ID_extra_disptype1, %object
	.size	__UNIQUE_ID_extra_disptype1, 24
__UNIQUE_ID_extra_disptype1:
	.ascii	"parmtype=extra_disp:int\000"
	.type	__UNIQUE_ID_extra_reftype0, %object
	.size	__UNIQUE_ID_extra_reftype0, 23
__UNIQUE_ID_extra_reftype0:
	.ascii	"parmtype=extra_ref:int\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	s_VfmwSavePath, %object
	.size	s_VfmwSavePath, 64
s_VfmwSavePath:
	.byte	47
	.byte	109
	.byte	110
	.byte	116
	.byte	0
	.space	59
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line %d can not know YuvFormat = %d\012\000"
	.space	3
.LC1:
	.ascii	"vfmw_ctrl.c,L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"ChanID out of range\000"
.LC3:
	.ascii	"vdm_ctrl.c,L%d: %s\012\000"
.LC4:
	.ascii	"Command \"%d\" not registerd!\012\000"
	.space	3
.LC5:
	.ascii	"The channel number is to Large.\012\000"
	.space	3
.LC6:
	.ascii	"------ s_pstVfmwChan[%d]->stSynExtraData.s32ModuleL"
	.ascii	"owlyEnable = 1 ------\012\000"
	.space	2
.LC7:
	.ascii	"------ g_NoStreamReportPeriod = %x ------\012\000"
	.space	1
.LC8:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC9:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC10:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC11:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC12:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC13:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC14:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC15:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC16:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC17:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC18:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC19:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC20:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC21:
	.ascii	"manually set postprocess options:\012\000"
	.space	1
.LC22:
	.ascii	"De-counter(DC)     %s\012\000"
	.space	1
.LC23:
	.ascii	"De-blocking(DB)    %s\012\000"
	.space	1
.LC24:
	.ascii	"De-ringing(DR)     %s\012\000"
	.space	1
.LC25:
	.ascii	"SetVdecExtra ERROR: extra_ref = %d is out of [ -500"
	.ascii	"0, 5000 ]!\012\000"
	.space	1
.LC26:
	.ascii	"SetVdecExtra ERROR: extra_disp = %d is out of [ -50"
	.ascii	"00, 5000 ]!\012\000"
.LC27:
	.ascii	"Chan inactive\000"
	.space	2
.LC28:
	.ascii	"(safe,warn,danger) :amount = %d,%d,%d,%d\012\000"
	.space	2
.LC29:
	.ascii	"strm_ctrl: I->IPB\012\000"
	.space	1
.LC30:
	.ascii	"strm_ctrl: IPB->I\012\000"
	.space	1
.LC31:
	.ascii	"(CurrMode,NextMode) = %d,%d\012\000"
	.space	3
.LC32:
	.ascii	"ERROR: (nPmv(%d) + extra_ref(%d)) <= 0\012\000"
.LC33:
	.ascii	"ERROR: TempMinFrame(%d + %d + %d), TempMiddleFrame("
	.ascii	"%d + %d + %d), TempFluentFrame(%d + %d + %d)\012\000"
	.space	3
.LC34:
	.ascii	"ERROR: eCapLevel %d invalid\012\000"
	.space	3
.LC35:
	.ascii	"VCTRL_GetChanMemSize L%d: arrange return failure\012"
	.ascii	"\000"
	.space	2
.LC36:
	.ascii	"CAP_LEVEL_USER_DEFINE_WITH_OPTION option is illegal"
	.ascii	".\012\000"
	.space	2
.LC37:
	.ascii	"%s %d: arrange return failure\012\000"
	.space	1
.LC38:
	.ascii	"s32SlotWidth or s32SlotHeight is 0.\012\000"
	.space	3
.LC39:
	.ascii	"ERROR: s32MaxRefFrameNum(%d), extra_ref(%d), s32Dis"
	.ascii	"playFrameNum(%d), extra_disp(%d)\012\000"
	.space	3
.LC40:
	.ascii	"VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_BY_OPTION is desig"
	.ascii	"ned for CAP_LEVEL_USER_DEFINE_WITH_OPTION, please c"
	.ascii	"hange channel's capability or use VDEC_CID_GET_CHAN"
	.ascii	"_MEMSIZE.\012\000"
.LC41:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION the purpose of cre"
	.ascii	"ating the channel is not clear.\012\000"
.LC42:
	.ascii	"can NOT start a not-opened Chan\000"
.LC43:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC44:
	.ascii	"ChanId out of range\000"
.LC45:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range\012\000"
	.space	1
.LC46:
	.ascii	"vfmw_ctrl.c, line %d: Chan %d is not open or not ru"
	.ascii	"nning\012\000"
	.space	2
.LC47:
	.ascii	"Chip(id: %d) not support beyond 2032x2032 when Std "
	.ascii	"!= USER.\012\000"
	.space	3
.LC48:
	.ascii	"Chip(id: %d) not support beyond %dx%d when Std != H"
	.ascii	"264/VP8/MVC/USER.\012\000"
	.space	2
.LC49:
	.ascii	"Unknow Chip ID: %d\012\000"
.LC50:
	.ascii	"create soft-decoder fail!\012\000"
	.space	1
.LC51:
	.ascii	"CreateChanWidthOption: arrange mem for dnr failed\012"
	.ascii	"\000"
	.space	1
.LC52:
	.ascii	"event_report null!\000"
	.space	1
.LC53:
	.ascii	"%s Unkown Adapter Type: %d\012\000"
.LC54:
	.ascii	"InstID out of range\000"
.LC55:
	.ascii	"s_VfmwCTrl.event_report_vdec = NULL\012\000"
	.space	3
.LC56:
	.ascii	"s_VfmwCTrl.event_report_omxvdec = NULL\012\000"
.LC57:
	.ascii	"register soft decoder fail: '%s' can not be NULL\012"
	.ascii	"\000"
	.space	2
.LC58:
	.ascii	"pfun_iMediaSoftDEC_Create\000"
	.space	2
.LC59:
	.ascii	"pfun_iMediaSoftDEC_Destroy\000"
	.space	1
.LC60:
	.ascii	"pfun_iMediaSoftDEC_Init\000"
.LC61:
	.ascii	"pfun_iMediaSoftDEC_Decode\000"
	.space	2
.LC62:
	.ascii	"pfun_iMediaSoftDEC_RecycleImage\000"
.LC63:
	.ascii	"pfun_iMediaSoftDEC_GetRemainImg\000"
.LC64:
	.ascii	"pfun_iMediaSoftDEC_GetImageBuffer\000"
	.space	2
.LC65:
	.ascii	"Last frame already output, vdhQ ID: %d\012\000"
.LC66:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC67:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC68:
	.ascii	"OK create file '%s' for channel %d yuv save\012\000"
	.space	3
.LC69:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC70:
	.ascii	">>>> close yuv saving >>>>\012\000"
.LC71:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC72:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC73:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC74:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC75:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC76:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC77:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC78:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC79:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC80:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC81:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC82:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC83:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC84:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC85:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC86:
	.ascii	"DNR_ConfigChan ERROR\012\000"
	.space	2
.LC87:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC88:
	.ascii	"VCTRL_ReleaseImage ChanID out of range\000"
	.space	1
.LC89:
	.ascii	"VCTRL_ReleaseImage Chan inactive\000"
	.space	3
.LC90:
	.ascii	"VCTRL_ReleaseImage This channel is not opened\000"
	.space	2
.LC91:
	.ascii	"VCTRL_ReleaseImage pImage is NULL\000"
	.space	2
.LC92:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC93:
	.ascii	">>>>>line %d cannot support mvc\012\000"
	.space	3
.LC94:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC95:
	.ascii	"Chan %d is not open or not running\012\000"
.LC96:
	.ascii	"pic_pts: %lld\012\000"
	.space	1
.LC97:
	.ascii	"pic_usertag: %lld\012\000"
	.space	1
.LC98:
	.ascii	"pic_pts: %lld pic_usertag = %lld\012\000"
	.space	2
.LC99:
	.ascii	"vdec_vdh\000"
	.space	3
.LC100:
	.ascii	"vdec_scd\000"
	.space	3
.LC101:
	.ascii	"vdec_dnr\000"
	.space	3
.LC102:
	.ascii	"VFMW_Hal_%d\000"
.LC103:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC104:
	.ascii	"pstCfg is null\000"
	.space	1
.LC105:
	.ascii	"pArgs is null\000"
	.space	2
.LC106:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC107:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC108:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC109:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC110:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC111:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC112:
	.ascii	"line: %d, pLf is NULL!\012\000"
.LC113:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC114:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC115:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC116:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
.LC117:
	.ascii	"line: %d, pLogic is Null!\012\000"
	.space	1
.LC118:
	.ascii	"pDst is NULL !!!!!!\012\000"
	.space	3
.LC119:
	.ascii	"pUsrdecFrame == NULL\000"
	.space	3
.LC120:
	.ascii	"VCTRL_PutUsrdecFrame: VidStd is %d\012\000"
.LC121:
	.ascii	"VCTRL_PutUsrdecFrame return err\012\000"
	.space	3
.LC122:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC123:
	.ascii	"This channel is not opened\000"
	.space	1
.LC124:
	.ascii	"This channel is not running\000"
.LC125:
	.ascii	"Syntax is stopped from This channel\000"
.LC126:
	.ascii	"[%d] vdm busy\012\000"
	.space	1
.LC127:
	.ascii	"[%d] no frame\012\000"
	.space	1
.LC128:
	.ascii	"[%d] no stream\012\000"
.LC129:
	.ascii	"seg_pts: %lld, seg_usertag = %lld\012\000"
	.space	1
.LC130:
	.ascii	"pImage is NULL\000"
	.space	1
.LC131:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC132:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC133:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC134:
	.ascii	"vfmw_ctrl.c,L%d: VCTRL_GetChanCfg error\012\000"
	.space	3
.LC135:
	.ascii	"WARNNING: ScdLowdlyEnable = %d, VidStd = %d, eDSPSt"
	.ascii	"ate = %d AVS(+) and LOWDLY  cannot supported in the"
	.ascii	" same time!!!\012\000"
	.space	3
.LC136:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC137:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC138:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC139:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC140:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC141:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC142:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC143:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC144:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.space	2
.LC145:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC146:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC147:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC148:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC149:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC150:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC151:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	"\012\000"
	.space	3
.LC152:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC153:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC154:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC155:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC156:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC157:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC158:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC159:
	.ascii	"VFMW_Chan_Pmv\000"
	.space	2
.LC160:
	.ascii	"L: %d : can NOT alloc buffer for channel PMV\012\000"
	.space	2
.LC161:
	.ascii	"L: %d : can NOT alloc buffer for PMV\012\000"
	.space	2
.LC162:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC163:
	.ascii	"Dynamic Switch DNR Enable: %d, Threshold: %d x %d, "
	.ascii	"Dnr Num: %d\012\000"
.LC164:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC165:
	.ascii	"can NOT enable DNR instance\012\000"
	.space	3
.LC166:
	.ascii	"can NOT start DNR instance\012\000"
.LC167:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC168:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC169:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC170:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC171:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC172:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC173:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC174:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC175:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC176:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC177:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC178:
	.ascii	"can NOT config a not-opened Chan\000"
	.space	3
.LC179:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC180:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC181:
	.ascii	"%s %d: s_pstVfmwChan has been destroyed!!\012\000"
	.space	1
.LC182:
	.ascii	"====== Fatal Error0: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC183:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC184:
	.ascii	"====== Fatal Error1: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC185:
	.ascii	"can NOT enable DNR instancen(as soft dec)\012\000"
	.space	1
.LC186:
	.ascii	"can NOT enable DNR instancen\012\000"
	.space	2
.LC187:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC188:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC189:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC190:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC191:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC192:
	.ascii	"ChanID %d is out of range!\012\000"
.LC193:
	.ascii	"pstChanState = NULL\000"
.LC194:
	.ascii	"s_pstVfmwChan = NULL\000"
	.space	3
.LC195:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC196:
	.ascii	"extra_ref=\000"
	.space	1
.LC197:
	.ascii	"=\000"
	.space	2
.LC198:
	.ascii	" \000"
	.space	2
.LC199:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC200:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC201:
	.ascii	"extra_disp=\000"
.LC202:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC203:
	.ascii	"extra_cmd=\000"
	.space	1
.LC204:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC205:
	.ascii	"Thread running...\012\000"
	.space	1
.LC206:
	.ascii	"thread running...\012\000"
	.space	1
.LC207:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC208:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC209:
	.ascii	"Thread killed!\012\000"
.LC210:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC211:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC212:
	.ascii	"proc cmd need no param:%p\012\000"
	.space	1
.LC213:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC214:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC215:
	.ascii	"wait dnr overtime(%d), force it sleep!\012\000"
.LC216:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC217:
	.ascii	"auto\000"
	.space	3
.LC218:
	.ascii	"force on\000"
	.space	3
.LC219:
	.ascii	"force off\000"
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 16
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 16
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 16
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_ref
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 16
s_pstVfmwChan:
	.space	16
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 16
g_EsBufValidFlag:
	.space	16
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	g_scd_vir, %object
	.size	g_scd_vir, 16
g_scd_vir:
	.space	16
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.40192, %object
	.size	save_file_cnt.40192, 4
save_file_cnt.40192:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.40166, %object
	.size	save_file_cnt.40166, 4
save_file_cnt.40166:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.40140, %object
	.size	save_file_cnt.40140, 4
save_file_cnt.40140:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	last_rec_pos_time.39516, %object
	.size	last_rec_pos_time.39516, 16
last_rec_pos_time.39516:
	.space	16
	.type	last_rec_pos_report_time.39517, %object
	.size	last_rec_pos_report_time.39517, 16
last_rec_pos_report_time.39517:
	.space	16
	.type	last_rec_pos_decparam_time.39518, %object
	.size	last_rec_pos_decparam_time.39518, 16
last_rec_pos_decparam_time.39518:
	.space	16
	.type	ChanPriTab.39319, %object
	.size	ChanPriTab.39319, 16
ChanPriTab.39319:
	.space	16
	.type	g_DSPState, %object
	.size	g_DSPState, 16
g_DSPState:
	.space	16
	.type	PrioArray.37135, %object
	.size	PrioArray.37135, 16
PrioArray.37135:
	.space	16
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 96
g_VfmwChanStat:
	.space	96
	.type	PrioArray.37171, %object
	.size	PrioArray.37171, 16
PrioArray.37171:
	.space	16
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 16
g_ChanTick:
	.space	16
	.type	FspInstInfo.36214, %object
	.size	FspInstInfo.36214, 3340
FspInstInfo.36214:
	.space	3340
	.type	PrioArray.37675, %object
	.size	PrioArray.37675, 16
PrioArray.37675:
	.space	16
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.space	2
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	LastEventTime.35862, %object
	.size	LastEventTime.35862, 4
LastEventTime.35862:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 48
g_VfmwGlobalStat:
	.space	48
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 8
g_ActivateLock:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
