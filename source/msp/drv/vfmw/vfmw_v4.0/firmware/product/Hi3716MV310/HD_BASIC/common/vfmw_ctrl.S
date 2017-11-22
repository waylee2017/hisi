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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	ldr	r0, [r3, r0, asl #2]	@ D.34733, s_pstVfmwChan
	cmp	r0, #0	@ D.34733,
	addne	r0, r0, #104	@ D.34736, D.34733,
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
	ldr	r0, [r3, r0, asl #2]	@ D.34754, s_pstVfmwChan
	cmp	r0, #0	@ D.34754,
	addne	r0, r0, #128	@ D.34757, D.34754,
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}	@,
	.save {r4, r5, r6, r7, r8, r9, sl}
	ldr	ip, [r3, r0, asl #2]	@ temp.924, s_pstVfmwChan
	movw	r4, #:lower16:181770	@ tmp176,
	movt	r4, #:upper16:181770	@ tmp176,
	ldrsb	r5, [ip, r4]	@ D.34824, <variable>.FspInst.s32DecFsNum
	cmp	r5, #0	@ D.34824,
	movle	r7, #0	@ prephitmp.903,
	ble	.L11	@,
	movw	r4, #:lower16:209558	@ tmp181,
	movt	r4, #:upper16:209558	@ tmp181,
	add	r7, ip, r4	@ tmp181, temp.924, tmp181
	mov	r8, #52	@ tmp179,
	mul	r8, r8, r5	@ D.39517, tmp179, D.34824
	ldrsb	r5, [r7, #0]	@ <variable>.DispState, <variable>.DispState
	mov	r7, #0	@ s32DecodedFrameNum,
	cmp	r5, #3	@ <variable>.DispState,
	sub	r4, r8, #52	@ tmp202, D.39517,
	ubfx	r5, r4, #2, #1	@ tmp215, tmp202,,
	beq	.L31	@,
.L19:
	mov	r4, #52	@ ivtmp.918,
	cmp	r4, r8	@ ivtmp.918, D.39517
	beq	.L11	@,
	cmp	r5, #0	@ tmp215,
	beq	.L13	@,
	movw	r5, #:lower16:209610	@ tmp229,
	movt	r5, #:upper16:209610	@ tmp229,
	add	r5, ip, r5	@ tmp229, temp.924, tmp229
	add	r4, r4, #52	@ ivtmp.918, ivtmp.918,
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.918, D.39517
	bne	.L13	@,
	b	.L11	@
.L24:
	add	r4, r6, #52	@ ivtmp.918, tmp216,
	cmp	r4, r8	@ ivtmp.918, D.39517
	beq	.L11	@,
.L13:
	movw	r5, #:lower16:209558	@ tmp220,
	movt	r5, #:upper16:209558	@ tmp220,
	add	r6, r4, #52	@ tmp216, ivtmp.918,
	add	r9, ip, r4	@ tmp218, temp.924, ivtmp.918
	add	sl, ip, r6	@ tmp223, temp.924, tmp216
	mov	r4, r5	@ tmp225, tmp220
	add	r5, r9, r5	@ tmp220, tmp218, tmp220
	add	r4, sl, r4	@ tmp225, tmp223, tmp225
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	r4, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, #3	@ <variable>.DispState,
	bne	.L24	@,
	add	r4, r6, #52	@ ivtmp.918, tmp216,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.918, D.39517
	bne	.L13	@,
.L11:
	str	r7, [r1, #88]	@ prephitmp.903, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:181770	@ tmp186,
	ldr	r4, [r3, r0, asl #2]	@ tmp185, s_pstVfmwChan
	movt	ip, #:upper16:181770	@ tmp186,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ temp.921, <variable>.FspInst.s32DecFsNum
	cmp	ip, #0	@ temp.921,
	moveq	ip, #4	@ iftmp.483,
	mvnne	r4, r2	@ tmp187, RefNum
	sxtabne	ip, r4, ip	@ iftmp.483, tmp187, temp.921
	str	ip, [r1, #96]	@ iftmp.483, <variable>.total_disp_frame_num
	ldr	r3, [r3, r0, asl #2]	@ tmp190, s_pstVfmwChan
	movw	ip, #:lower16:181770	@ tmp191,
	movt	ip, #:upper16:181770	@ tmp191,
	ldrsb	r3, [r3, ip]	@ temp.923, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.923,
	ble	.L17	@,
	add	r2, r2, #1	@ tmp194, RefNum,
	cmp	r3, r2	@ temp.923, tmp194
	movle	r3, #0	@ tmp195,
	strle	r3, [r1, #96]	@ tmp195, <variable>.total_disp_frame_num
.L17:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
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
	ldr	r0, [r3, r0, asl #2]	@ D.34881, s_pstVfmwChan
	cmp	r0, #0	@ D.34881,
	addne	r0, r0, #116	@ D.34884, D.34881,
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
	movw	r3, #:lower16:499120	@ tmp136,
	movt	r3, #:upper16:499120	@ tmp136,
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
	ldr	r3, [r3, r0, asl #2]	@ D.35944, s_pstVfmwChan
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
	moveq	r0, #0	@ D.35997,
	bxeq	lr	@
.L39:
	mvn	r0, #0	@ D.35997,
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
	ldr	r4, [r2, r0, asl #2]	@ D.36003, s_pstVfmwChan
	mov	r5, r1	@ pstCfg, pstCfg
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bne	.L48	@,
.L43:
	mvn	r0, #0	@ D.36020,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L48:
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@,
	bne	.L43	@,
	ldr	r3, [r4, #32]	@ D.36010, <variable>.stChanCfg.eVidStd
	cmp	r3, #1	@ D.36010,
	beq	.L49	@,
	sub	r3, r3, #10	@ tmp146, D.36010,
	cmp	r3, #2	@ tmp146,
	bhi	.L45	@,
	ldr	r2, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, r0	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L43	@,
.L45:
	mov	r0, #0	@ D.36020,
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
.LFB1730:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r2, [r1, r0, asl #2]	@ D.36868, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #6	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L57	@
.L56:
	.word	.L52
	.word	.L57
	.word	.L53
	.word	.L54
	.word	.L57
	.word	.L57
	.word	.L55
.L55:
	movw	r3, #:lower16:217524	@ tmp143,
	movt	r3, #:upper16:217524	@ tmp143,
	mov	r1, #0	@ tmp144,
	str	r1, [r2, r3]	@ tmp144, <variable>.stSynCtx.unSyntax.stAvsCtx.pAvsDecParam
.L57:
	bx	lr	@
.L54:
	movw	r3, #:lower16:217524	@ tmp139,
	movt	r3, #:upper16:217524	@ tmp139,
	mov	r1, #0	@ tmp140,
	str	r1, [r2, r3]	@ tmp140,
	bx	lr	@
.L53:
	movw	ip, #:lower16:218556	@ tmp141,
	movt	ip, #:upper16:218556	@ tmp141,
	mov	r0, #0	@ tmp142,
	str	r0, [r2, ip]	@ tmp142,
	bx	lr	@
.L52:
	movw	ip, #:lower16:217880	@ tmp137,
	movt	ip, #:upper16:217880	@ tmp137,
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
.LFB1737:
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
.LFB1738:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L64	@,
.L61:
	mvn	r0, #0	@ D.37016,
	bx	lr	@
.L64:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.37015, s_pstVfmwChan
	cmp	r3, #0	@ D.37015,
	beq	.L61	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L61	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L61	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L61	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bxne	lr	@
	b	.L61	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
.LFB1747:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [ip, #100]	@ D.37320, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.37320,
	mvneq	r0, #0	@ iftmp.601,
	beq	.L67	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.37320
.L67:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.601
	str	r4, [r5, #0]	@ tmp140,* pChanPmvSize
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #0]	@ D.37911, s_pstVfmwChan
	cmp	r3, #0	@ D.37911,
	beq	.L70	@,
	add	r2, r3, #217088	@ tmp138, D.37911,
	add	r1, r2, #432	@ tmp138, tmp138,
	cmp	r1, r0	@ tmp138, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L70:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.37927, s_pstVfmwChan
	cmp	r3, #0	@ D.37927,
	beq	.L74	@,
	ldr	r2, [r3, #176]	@ D.37930, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37930
	bge	.L75	@,
.L77:
	ldr	r2, [r3, #192]	@ D.37938, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.37938
	blt	.L74	@,
	ldr	r1, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r2, r2, r1	@ tmp140, D.37938, <variable>.stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, tmp140
	blt	.L76	@,
.L74:
	mvn	r0, #0	@ i,
	bx	lr	@
.L75:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	ip, r2, r1	@ tmp142, D.37930, <variable>.stChanMem_vdh.Length
	cmp	r0, ip	@ PhyAddr, tmp142
	bge	.L77	@,
.L76:
	mov	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.38129, s_pstVfmwChan
	cmp	r0, #0	@ D.38129,
	beq	.L81	@,
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L81	@
.L87:
	.word	.L86
	.word	.L81
	.word	.L83
	.word	.L84
	.word	.L81
	.word	.L81
	.word	.L85
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L81
	.word	.L86
.L86:
	add	r3, r0, #217088	@ pstVoQue, D.38129,
	add	r0, r3, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L81:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L85:
	add	ip, r0, #233472	@ pstVoQue, D.38129,
	add	r0, ip, #136	@ pstVoQue, pstVoQue,
	bx	lr	@
.L83:
	add	r2, r0, #239616	@ pstVoQue, D.38129,
	add	r0, r2, #512	@ pstVoQue, pstVoQue,
	bx	lr	@
.L84:
	add	r0, r0, #290816	@ pstVoQue, D.38129,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
.LFB1764:
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
.LFB1777:
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
.LFB1787:
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
.LFB1809:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r1, #:lower16:s_SmIIS	@ tmp134,
	movt	r1, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #1	@ tmp142,
	add	r0, r1, ip, asl #2	@, tmp139, tmp134, tmp136,
	ldr	r3, [r0, #116]	@ tmp141, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp142, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_OpenScdLowdly, .-VfmwProc_OpenScdLowdly
	.align	2
	.type	VfmwProc_CloseScdLowdly, %function
VfmwProc_CloseScdLowdly:
	.fnstart
.LFB1810:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r1, #:lower16:s_SmIIS	@ tmp134,
	movt	r1, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #0	@ tmp142,
	add	r0, r1, ip, asl #2	@, tmp139, tmp134, tmp136,
	ldr	r3, [r0, #116]	@ tmp141, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp142, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
	.align	2
	.global	VfmwProcGetHandler
	.type	VfmwProcGetHandler, %function
VfmwProcGetHandler:
	.fnstart
.LFB1811:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ cmd, cmd
	movweq	r0, #:lower16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	movteq	r0, #:upper16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	bxeq	lr	@
	movw	r3, #:lower16:.LANCHOR1	@ ivtmp.1328,
	movt	r3, #:upper16:.LANCHOR1	@ ivtmp.1328,
	b	.L104	@
.L105:
	ldr	r2, [r3, #8]!	@ D.38903, <variable>.CmdName
	cmp	r2, r1	@ D.38903, cmd
	beq	.L107	@,
.L104:
	ldr	r0, [r3, #12]	@ pTargetHandler, <variable>.pHandler
	cmp	r0, #0	@ pTargetHandler,
	bne	.L105	@,
	bx	lr	@
.L107:
	bx	lr	@
	.fnend
	.size	VfmwProcGetHandler, .-VfmwProcGetHandler
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1816:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, #4]	@ g_event_report.794, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.794,
	beq	.L110	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.794
.L110:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
.LFB1817:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #1	@ tmp139,
	str	r2, [r3, #8]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
.LFB1818:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #0	@ tmp139,
	str	r2, [r3, #8]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
.LFB1819:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r0, [r3, #8]	@, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1823:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L118	@
.L126:
	.word	.L119
	.word	.L120
	.word	.L121
	.word	.L122
	.word	.L123
	.word	.L124
	.word	.L125
.L125:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L118:
	mov	r3, r1	@, enFmt
	movw	r2, #8330	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L119:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L120:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L121:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L122:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L123:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L124:
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
.LFB1814:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L140	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp138,
	movt	r0, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r0, #0]	@ D.38939, s_pstVfmwChan
	cmp	r3, #0	@ D.38939,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
.L140:
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
.LFB1813:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L146	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, #0]	@ D.38928, s_pstVfmwChan
	cmp	r3, #0	@ D.38928,
	mvneq	r0, #0	@ D.38926,
	ldrne	r0, [r3, #676]	@ D.38926, <variable>.s32LastFrameIdPlus2
	ldmfd	sp!, {r3, pc}	@
.L146:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #7997	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38926,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1812:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_args
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mvneq	r0, #1	@ D.38915,
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #0	@ opt,
	movweq	r3, #:lower16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	movteq	r3, #:upper16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	beq	.L152	@,
	movw	r2, #:lower16:.LANCHOR1	@ ivtmp.1516,
	movt	r2, #:upper16:.LANCHOR1	@ ivtmp.1516,
	b	.L153	@
.L154:
	ldr	ip, [r2, #8]!	@ D.39265, <variable>.CmdName
	cmp	r0, ip	@ opt, D.39265
	beq	.L152	@,
.L153:
	ldr	r3, [r2, #12]	@ pCommandHandler, <variable>.pHandler
	cmp	r3, #0	@ pCommandHandler,
	bne	.L154	@,
	mov	r2, r0	@, opt
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.38915,
	ldmfd	sp!, {r3, pc}	@
.L152:
	mov	r0, r1	@, p_args
	blx	r3	@ pCommandHandler
	mov	r0, #1	@ D.38915,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
.LFB1808:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ tmp134,* p_args
	cmp	r3, #0	@ tmp134,
	bne	.L161	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, tmp134
	movw	r1, #:lower16:.LC6	@,
	ldr	ip, [r0, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r1, #:upper16:.LC6	@,
	mov	r0, #32	@,
	str	r3, [ip, #1420]	@ tmp134, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L161:
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
.LFB1807:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp134,* p_args
	cmp	r2, #0	@ tmp134,
	bne	.L165	@,
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	mov	ip, #1	@ tmp138,
	movw	r1, #:lower16:.LC6	@,
	ldr	r3, [r0, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r1, #:upper16:.LC6	@,
	mov	r0, #32	@,
	str	ip, [r3, #1420]	@ tmp138, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L165:
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
.LFB1806:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.776,* p_args
	movw	r3, #:lower16:g_NoStreamReportPeriod	@ tmp135,
	movt	r3, #:upper16:g_NoStreamReportPeriod	@ tmp135,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r2, ip	@, dat.776
	str	ip, [r3, #0]	@ dat.776, g_NoStreamReportPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
.LFB1805:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.774,* p_args
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp135,
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r2, ip	@, dat.774
	str	ip, [r3, #0]	@ dat.774, g_TraceImgPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
.LFB1804:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.772,* p_args
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp135,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r2, ip	@, dat.772
	str	ip, [r3, #0]	@ dat.772, g_TraceFramePeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
.LFB1803:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.770,* p_args
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp135,
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r2, ip	@, dat.770
	str	ip, [r3, #0]	@ dat.770, g_TraceBsPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
.LFB1802:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.768,* p_args
	movw	r3, #:lower16:g_TraceCtrl	@ tmp135,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp135,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, ip	@, dat.768
	str	ip, [r3, #0]	@ dat.768, g_TraceCtrl
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
.LFB1801:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.766,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, ip	@, dat.766
	str	ip, [r3, #12]	@ dat.766, g_StopDec
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
.LFB1800:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.764,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, ip	@, dat.764
	str	ip, [r3, #16]	@ dat.764, g_DnrSleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
.LFB1799:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.762,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, ip	@, dat.762
	str	ip, [r3, #20]	@ dat.762, g_SleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
.LFB1785:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L183	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	b	dprint_vfmw	@
.L183:
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC16	@,
	str	r3, [ip, #24]	@ dat, g_CurProcChan
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
.LFB1784:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L188	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC18	@,
	b	dprint_vfmw	@
.L188:
	movw	ip, #:lower16:.LANCHOR0	@ tmp135,
	movt	ip, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC17	@,
	str	r3, [ip, #28]	@ dat, g_ResetCreateNewSave
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
.LFB1783:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L192	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC20	@,
	b	dprint_vfmw	@
.L192:
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
.LFB1782:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
	ldr	r6, .L198	@ tmp140,
	.pad #20
	sub	sp, sp, #20	@,,
	and	r7, ip, #15	@ iftmp.707, dat,
	ubfx	lr, ip, #8, #4	@ iftmp.713, dat,,
	cmp	r7, #2	@ iftmp.707,
	ubfx	ip, ip, #4, #4	@ iftmp.710, dat,,
	ldmia	r6, {r0, r1, r2}	@ tmp140,,,
	movhi	r7, #0	@ iftmp.707,
	cmp	ip, #2	@ iftmp.710,
	add	r3, sp, #4	@ tmp139,,
	movw	r6, #:lower16:g_DCEnable	@ tmp145,
	movt	r6, #:upper16:g_DCEnable	@ tmp145,
	movhi	ip, #0	@ iftmp.710,
	cmp	lr, #2	@ iftmp.713,
	movw	r4, #:lower16:g_DREnable	@ tmp171,
	movw	r5, #:lower16:g_DBEnable	@ tmp172,
	movt	r4, #:upper16:g_DREnable	@ tmp171,
	movt	r5, #:upper16:g_DBEnable	@ tmp172,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
	movhi	lr, #0	@ iftmp.713,
	mov	r0, #32	@,
	str	lr, [r6, #0]	@ iftmp.713, g_DCEnable
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [r5, #0]	@ iftmp.710, g_DBEnable
	str	r7, [r4, #0]	@ iftmp.707, g_DREnable
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
.L199:
	.align	2
.L198:
	.word	.LANCHOR1+280
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1770:
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
	str	r0, [r4, #32]	@ new_extra_ref, extra_ref
	bhi	.L204	@,
.L201:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.658, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.658, tmp145
	strge	r0, [r4, #32]	@, iftmp.658, extra_ref
	strlt	r6, [r4, #32]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #36]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L205	@,
.L202:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1866, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1866, tmp155
	strge	r5, [r4, #36]	@, iftmp.1866, extra_disp
	strlt	r3, [r4, #36]	@, tmp155, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L204:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #32]	@ new_extra_ref, extra_ref
	b	.L201	@
.L205:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #36]	@ new_extra_disp, extra_disp
	b	.L202	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1769:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L211	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, #0]	@ D.38254, s_pstVfmwChan
	cmp	r3, #0	@ D.38254,
	moveq	r0, #33	@ D.38252,
	ldrne	r0, [r3, #24]	@ D.38252, <variable>.eChanCapLevel
	ldmfd	sp!, {r3, pc}	@
.L211:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6967	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38252,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1768:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L217	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.38243, s_pstVfmwChan
	cmp	r3, #0	@ D.38243,
	beq	.L218	@,
	ldr	r0, [r3, #1460]	@ D.38241, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r3, pc}	@
.L217:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6959	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38241,
	ldmfd	sp!, {r3, pc}	@
.L218:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6960	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38241,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1767:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L224	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.38232, s_pstVfmwChan
	cmp	r3, #0	@ D.38232,
	beq	.L225	@,
	ldr	r0, [r3, #1456]	@ D.38230, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r3, pc}	@
.L224:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6951	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38230,
	ldmfd	sp!, {r3, pc}	@
.L225:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6952	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38230,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1755:
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
	beq	.L233	@,
	cmp	r4, r6	@ Threshould, StreamAmount
	blt	.L230	@,
.L232:
	mov	r4, r5	@ NextMode, CurMode
.L229:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L230:
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L229	@
.L233:
	cmp	r7, r6	@ tmp141, StreamAmount
	ble	.L232	@,
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L229	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1750:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #18	@ D.39269, eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r3, #7	@ D.39269,
	.pad #476
	sub	sp, sp, #476	@,,
	mov	r9, r0, asl #3	@ tmp315, eCapLevel,
	rsb	r5, r0, r9	@ tmp169, eCapLevel, tmp315
	movw	r4, #:lower16:CapItem	@ tmp314,
	str	r2, [sp, #40]	@ ScdMemSize, %sfp
	movt	r4, #:upper16:CapItem	@ tmp314,
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	addls	r3, r2, r3, asl #2	@, tmp200, tmp197, D.39269,
	mov	r7, r0	@ eCapLevel, eCapLevel
	add	r0, r4, r5, asl #2	@, tmp171, tmp314, tmp169,
	movw	r5, #:lower16:.LANCHOR0	@ tmp316,
	ldrls	r3, [r3, #292]	@ MinDnrFspNum, CSWTCH.806
	movt	r5, #:upper16:.LANCHOR0	@ tmp316,
	ldr	r8, [r0, #12]	@ TempMinFrame, CapItem
	movhi	r3, #6	@ MinDnrFspNum,
	ldr	r6, [r5, #32]	@ extra_ref, extra_ref
	rsb	r3, r3, r8	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	str	r1, [sp, #36]	@ VdmMemSize, %sfp
	cmp	r3, #15	@ s32MaxRefFrameNum,
	bic	r6, r6, r6, asr #31	@ extra_ref_tmp, extra_ref
	ldr	ip, [r0, #8]	@ TempPmv, CapItem
	str	r6, [r5, #32]	@ extra_ref_tmp, extra_ref
	movgt	r6, #0	@ extra_ref_tmp,
	ldr	sl, [r0, #16]	@ TempMiddleFrame, CapItem
	ldr	fp, [r0, #20]	@ TempFluentFrame, CapItem
	bgt	.L238	@,
	add	r1, r3, r6	@ D.37463, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r1, #16	@ D.37463,
	addgt	r6, r6, #16	@ D.37466, extra_ref_tmp,
	rsbgt	r6, r1, r6	@ extra_ref_tmp, D.37463, D.37466
.L238:
	add	r3, r6, ip	@ TempPmv.1988, extra_ref_tmp, TempPmv
	ldr	r2, [r5, #36]	@, extra_disp
	cmp	r3, #0	@ TempPmv.1988,
	str	r2, [sp, #44]	@, %sfp
	ble	.L254	@,
	cmp	r3, #17	@ TempPmv.1988,
	movge	r3, #17	@ TempPmv.1988,
	str	r3, [sp, #48]	@ TempPmv.1988, %sfp
.L240:
	cmp	r7, #23	@ eCapLevel,
	bhi	.L241	@,
	ldr	ip, [sp, #44]	@, %sfp
	add	r1, r6, ip	@ D.37469, extra_ref_tmp,
	add	r3, r1, r8	@ TempMinFrame.1985, D.37469, TempMinFrame
	add	r2, r1, sl	@ TempMiddleFrame.1986, D.37469, TempMiddleFrame
	cmp	r3, #0	@ TempMinFrame.1985,
	cmpgt	r2, #0	@, TempMiddleFrame.1986,
	ble	.L242	@,
	add	lr, r1, fp	@ TempFluentFrame.1987, D.37469, TempFluentFrame
	cmp	lr, #0	@ TempFluentFrame.1987,
	strgt	lr, [sp, #52]	@ TempFluentFrame.1987, %sfp
	strgt	r2, [sp, #44]	@ TempMiddleFrame.1986, %sfp
	movgt	r8, r3	@ nMinFrame, TempMinFrame.1985
	ble	.L242	@,
.L244:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	ldr	ip, [r5, #36]	@ D.37489, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37489,
	beq	.L247	@,
.L255:
	rsb	r7, r7, r9	@ tmp221, eCapLevel, tmp315
	ldr	sl, [sp, #48]	@, %sfp
	str	r8, [sp, #4]	@ nMinFrame,
	add	r8, r7, #1	@ tmp229, tmp221,
	mov	r9, #0	@ tmp231,
	mov	fp, #64	@ tmp235,
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
	add	r4, r4, r7, asl #2	@, tmp223, tmp314, tmp221,
	blx	ip	@ D.37489
	subs	r3, r0, #0	@ ret,
	bne	.L247	@,
	ldr	lr, [sp, #36]	@, %sfp
	ldr	r0, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	ip, r0, #16	@ tmp238, MemArrange.TotalMemUsed,
	str	ip, [lr, #0]	@ tmp238,
	ldr	r0, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp247, CapItem
	add	r1, r2, #32768	@ tmp248, tmp247,
	str	r1, [r0, #0]	@ tmp248,
	ldr	ip, [r5, #36]	@ temp.1990, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1990,
	beq	.L249	@,
	ldr	lr, [r6, r8, asl #2]	@ tmp262, CapItem
	mov	r0, #1	@,
	ldr	r2, [sp, #44]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [sp, #48]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r6, r7, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp262
	str	sl, [sp, #12]	@ tmp232,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.1990
	subs	lr, r0, #0	@ ret.1993,
	bne	.L249	@,
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r1, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r1, #16	@ tmp270, MemArrange.TotalMemUsed,
	str	r3, [r2, #4]	@ tmp270,
	ldr	r1, [sp, #40]	@, %sfp
	ldr	r0, [r4, #24]	@ tmp279, CapItem
	add	ip, r0, #32768	@ tmp280, tmp279,
	str	ip, [r1, #4]	@ tmp280,
	ldr	ip, [r5, #36]	@ temp.1999, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1999,
	beq	.L251	@,
	ldr	r5, [sp, #48]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp294, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r6, r7, asl #2]	@ tmp288, CapItem
	str	r5, [sp, #0]	@,
	ldr	r5, [sp, #52]	@, %sfp
	str	lr, [sp, #8]	@ ret.1993,
	str	sl, [sp, #12]	@ tmp232,
	str	r5, [sp, #4]	@,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.1999
	cmp	r0, #0	@ ret.2002
	bne	.L251	@,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	lr, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, lr, #16	@ tmp302, MemArrange.TotalMemUsed,
	str	r3, [r1, #8]	@ tmp302,
	ldr	lr, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp311, CapItem
	add	ip, r2, #32768	@ tmp312, tmp311,
	str	ip, [lr, #8]	@ tmp312,
.L246:
	add	sp, sp, #476	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L241:
	cmp	r7, #32	@ eCapLevel,
	strls	fp, [sp, #52]	@ TempFluentFrame, %sfp
	strls	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	bls	.L244	@,
	mov	r2, r7	@, eCapLevel
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37487,
	b	.L246	@
.L242:
	ldr	ip, [r5, #36]	@ extra_disp.1989, extra_disp
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	mov	r3, r6	@, extra_ref_tmp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC33	@,
	mov	r2, r8	@, TempMinFrame
	movt	r1, #:upper16:.LC33	@,
	str	ip, [sp, #24]	@ extra_disp.1989,
	str	ip, [sp, #0]	@ extra_disp.1989,
	str	ip, [sp, #12]	@ extra_disp.1989,
	str	fp, [sp, #52]	@ TempFluentFrame, %sfp
	str	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	str	sl, [sp, #4]	@ TempMiddleFrame,
	str	r6, [sp, #8]	@ extra_ref_tmp,
	str	fp, [sp, #16]	@ TempFluentFrame,
	str	r6, [sp, #20]	@ extra_ref_tmp,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #36]	@ D.37489, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37489,
	bne	.L255	@,
.L247:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5837	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37487,
	b	.L246	@
.L254:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC32	@,
	mov	r3, r6	@, extra_ref_tmp
	movt	r1, #:upper16:.LC32	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [sp, #48]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L240	@
.L249:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5855	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37487,
	b	.L246	@
.L251:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5873	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37487,
	b	.L246	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
.LFB1746:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r0, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L257	@,
	ldr	r1, [r0, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r1, #31	@ <variable>.s32MaxWidth,
	ble	.L257	@,
	ldr	r2, [r0, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r2, #31	@ <variable>.s32MaxHeight,
	ble	.L257	@,
	ldr	ip, [r0, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L257	@,
	ldr	r3, [r0, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	beq	.L261	@,
.L258:
	mov	r0, #0	@ D.37312,
	ldmfd	sp!, {r3, pc}	@
.L261:
	ldr	r1, [r0, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L257	@,
	ldr	r2, [r0, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L257	@,
	ldr	ip, [r0, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L258	@,
.L257:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37312,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
.LFB1748:
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
	bne	.L271	@,
	ldr	r0, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r0, #0	@ <variable>.s32SupportBFrame,
	beq	.L272	@,
	ldr	r6, [r4, #32]	@ prephitmp.2045, <variable>.s32MaxRefFrameNum
	add	r0, r6, #1	@ PmvNum.2056, prephitmp.2045,
	cmp	r0, #17	@ PmvNum.2056,
	movlt	r8, r0	@ PmvNum, PmvNum.2056
	movge	r8, #17	@ PmvNum,
.L266:
	ldr	r1, [r4, #12]	@, <variable>.s32MaxWidth
	add	r3, sp, #444	@,,
	ldr	r2, [r4, #16]	@, <variable>.s32MaxHeight
	ldr	r7, [r4, #60]	@ D.37348, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r2, [sp, #444]	@ ChanPmvSize, ChanPmvSize
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	str	r2, [r5, #12]	@ ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r1, #36]	@ D.37354, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.37354,
	beq	.L267	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp155,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp156,
	str	lr, [sp, #8]	@ tmp155,
	add	r0, sp, #28	@ tmp158,,
	str	r1, [sp, #12]	@ tmp156,
	mov	lr, #64	@ tmp159,
	str	r0, [sp, #16]	@ tmp158,
	add	r6, r6, r7	@ tmp154, prephitmp.2045, D.37348
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp154,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp159,
	blx	ip	@ D.37354
	cmp	r0, #0	@ ret
	bne	.L267	@,
	ldr	r1, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r2, r1, #16	@ tmp164, MemArrange.TotalMemUsed,
	str	r2, [r5, #0]	@ tmp164, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	ip, r3, #32768	@ tmp166, <variable>.s32SCDBufSize,
	str	ip, [r5, #4]	@ tmp166, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	beq	.L273	@,
	ldr	r3, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	mov	lr, #4000	@ tmp174,
	ldr	ip, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	ldr	r2, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	mul	r1, lr, r3	@ tmp172, tmp174, <variable>.s32MaxSpsNum
	movw	lr, #4060	@ tmp171,
	mla	r3, lr, ip, r1	@ tmp175, tmp171, <variable>.s32MaxSliceNum, tmp172
	mov	r1, #2208	@ tmp180,
	add	lr, r3, #495616	@ tmp176, tmp175,
	add	r3, lr, #3504	@ tmp176, tmp176,
	mla	ip, r1, r2, r3	@ tmp181, tmp180, <variable>.s32MaxPpsNum, tmp176
	str	ip, [r5, #8]	@ tmp181, <variable>.ChanCtxDetailMem
.L264:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L272:
	ldr	r6, [r4, #32]	@ prephitmp.2045, <variable>.s32MaxRefFrameNum
	mov	r8, #1	@ PmvNum,
	add	r0, r6, r8	@ PmvNum.2056, prephitmp.2045,
	b	.L266	@
.L267:
	movw	r1, #:lower16:.LC37	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, .L274	@,
	movw	r3, #5638	@,
	bl	dprint_vfmw	@
.L271:
	mvn	r0, #0	@ D.37342,
	b	.L264	@
.L273:
	movw	lr, #:lower16:499120	@ tmp168,
	mov	r0, r3	@ D.37342, <variable>.s32SupportH264
	movt	lr, #:upper16:499120	@ tmp168,
	str	lr, [r5, #8]	@ tmp168, <variable>.ChanCtxDetailMem
	b	.L264	@
.L275:
	.align	2
.L274:
	.word	.LANCHOR1+324
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
.LFB1745:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #64]	@ D.37280, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.37280,
	beq	.L277	@,
	ldr	r0, [r1, #68]	@ D.37282, <variable>.s32SlotHeight
	cmp	r0, #0	@ D.37282,
	beq	.L277	@,
	mul	ip, r0, r3	@ tmp141, D.37282, D.37280
	ldr	r1, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r3, #0	@ tmp146,
	str	r3, [r2, #12]	@ tmp146, <variable>.PmvDetailMem
	mov	r0, r3	@ D.37284, tmp146
	str	r3, [r2, #4]	@ tmp146, <variable>.ScdDetailMem
	movw	r3, #:lower16:499120	@ tmp147,
	movt	r3, #:upper16:499120	@ tmp147,
	str	r3, [r2, #8]	@ tmp147, <variable>.ChanCtxDetailMem
	mov	r3, ip, asl #1	@ tmp142, tmp141,
	mla	r3, r1, r3, r3	@ tmp145, <variable>.s32DisplayFrameNum, tmp142, tmp142
	str	r3, [r2, #0]	@ tmp145, <variable>.VdhDetailMem
	ldmfd	sp!, {r3, pc}	@
.L277:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37284,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1749:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L282	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r8, [r1, #32]	@ D.37396, <variable>.s32MaxRefFrameNum
	ldr	r5, [ip, #32]	@ extra_ref.606, extra_ref
	ldr	r4, [r1, #60]	@ D.37399, <variable>.s32DisplayFrameNum
	ldr	ip, [ip, #36]	@ extra_disp.607, extra_disp
	add	r7, r5, r8	@ TempRefNum, extra_ref.606, D.37396
	cmp	r7, #16	@ TempRefNum,
	movge	r7, #16	@ TempRefNum,
	add	r6, ip, r4	@ TempDispNum, extra_disp.607, D.37399
	orrs	sl, r7, r6	@, TempRefNum, TempDispNum
	bmi	.L289	@,
	rsbs	r3, r3, #1	@ tmp164, flag
	movcc	r3, #0	@ tmp164
	cmp	r0, #25	@ eCapLevel,
	str	r7, [r1, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp164,
	cmp	r3, #0	@ tmp164,
	str	r6, [r1, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L290	@,
.L282:
	ldr	r3, [r1, #4]	@ D.37414, <variable>.Purpose
	cmp	r3, #2	@ D.37414,
	bhi	.L291	@,
	beq	.L292	@,
	cmp	r3, #1	@ D.37414,
	beq	.L293	@,
.L284:
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L292:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onFramePath	@
.L293:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onDecode	@
.L290:
	movw	r1, #:lower16:.LC40	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	b	.L284	@
.L291:
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	b	.L284	@
.L289:
	mov	r2, r8	@, D.37396
	mov	r3, r5	@, extra_ref.606
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	stmia	sp, {r4, ip}	@ phole stm
	bl	dprint_vfmw	@
	b	.L284	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1734:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ ChanID, ChanID
	bne	.L300	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r2, [r2, #0]	@ D.36945, s_pstVfmwChan
	ldr	ip, [r2, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	ip, #1	@ <variable>.s32IsOpen,
	bne	.L301	@,
	cmp	r1, #0	@ pArgs,
	beq	.L302	@,
	ldr	r1, [r1, #0]	@ tmp146,* pArgs
	mov	r0, r3	@ D.36943, ChanID
	str	r1, [r2, #1408]	@ tmp146, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L301:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4983	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36943,
	ldmfd	sp!, {r3, pc}	@
.L300:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4982	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36943,
	ldmfd	sp!, {r3, pc}	@
.L302:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4984	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36943,
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ ChanId, ChanId
	bne	.L309	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp141,
	movt	r2, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r2, [r2, #0]	@ D.36795, s_pstVfmwChan
	cmp	r2, #0	@ D.36795,
	beq	.L310	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L311	@,
.L307:
	mvn	r0, #0	@ D.36793,
	ldmfd	sp!, {r3, pc}	@
.L310:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4434	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36793,
	ldmfd	sp!, {r3, pc}	@
.L311:
	ldr	r0, [r2, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r0, #1	@ <variable>.s32OneChanMem,
	bne	.L307	@,
	add	r0, r2, #156
	ldmia	r0, {r0, r2, ip}	@ phole ldm
	cmp	r0, #0	@ D.36807,
	str	r0, [r1, #4]	@ D.36807, <variable>.VirAddr
	str	ip, [r1, #12]	@ <variable>.stChanMem.Length, <variable>.Length
	movne	r0, r3	@ D.36793, ChanId
	str	r2, [r1, #8]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp!, {r3, pc}	@
	b	.L307	@
.L309:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4433	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36793,
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
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	subs	r3, r0, #0	@ ChanId, ChanId
	bne	.L313	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r2, #0]	@ D.36706, s_pstVfmwChan
	cmp	r2, #0	@ D.36706,
	beq	.L313	@,
	ldr	r1, [r2, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	beq	.L316	@,
	movw	r1, #:lower16:.LC46	@,
	movw	r2, #4248	@,
	movt	r1, #:upper16:.LC46	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.36708,
	ldmfd	sp!, {r3, pc}	@
.L313:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movw	r2, #4241	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.36708,
	ldmfd	sp!, {r3, pc}	@
.L316:
	ldr	r0, [r2, #880]	@ D.36708, <variable>.eVidStd
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
	ldr	ip, [r2, #0]	@ g_chipID.520, g_chipID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.36055, s_pstVfmwChan
	cmp	ip, #16	@ g_chipID.520,
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r0, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L327	@,
.L319:
	mov	r2, ip	@, g_chipID.520
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L324:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L327:
	mov	r2, #1	@ tmp146,
	movw	r3, #:lower16:102368	@ tmp147,
	mov	r2, r2, asl ip	@ tmp145, tmp146,
	movt	r3, #:upper16:102368	@ tmp147,
	and	r3, r2, r3	@ tmp147, tmp145, tmp147
	cmp	r3, #0	@ tmp147,
	beq	.L328	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp156,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp156,
	ldr	r2, [r3, #0]	@ g_ChipMaxWidth.2200, g_ChipMaxWidth
	cmp	r0, r2	@ ChanMaxWidth, g_ChipMaxWidth.2200
	ble	.L329	@,
	ldr	r3, [r1, #0]	@ D.36069, <variable>.eVidStd
	cmp	r3, #13	@ D.36069,
	cmpne	r3, #0	@, D.36069,
	beq	.L323	@,
.L333:
	cmp	r3, #15	@ D.36069,
	beq	.L323	@,
	cmp	r3, #18	@ D.36069,
	bne	.L330	@,
.L323:
	mov	r0, #0	@ ret,
	b	.L324	@
.L328:
	tst	r2, #31	@ tmp145,
	beq	.L319	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp150,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp150,
	ldr	r3, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L331	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L323	@,
.L332:
	mov	r2, ip	@, g_chipID.520
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L324	@
.L331:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp152,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp152,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L323	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L323	@,
	b	.L332	@
.L329:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp157,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp157,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L323	@,
	ldr	r3, [r1, #0]	@ D.36069, <variable>.eVidStd
	cmp	r3, #13	@ D.36069,
	cmpne	r3, #0	@, D.36069,
	bne	.L333	@,
	b	.L323	@
.L330:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp167,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp167,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	str	ip, [sp, #0]	@ g_chipID.520,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L324	@
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp164,
	movt	r4, #:upper16:.LANCHOR0	@ tmp164,
	mov	r2, #0	@ tmp147,
	mov	r5, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.35913, s_pstVfmwChan
	ldr	ip, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	str	r2, [r3, #1624]	@ tmp147, <variable>.eDecCore
	ldr	r0, [r4, r0, asl #2]	@ prephitmp.2219, s_pstVfmwChan
	ldr	r2, [r0, #1624]	@ prephitmp.2221, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.2221, eOldDecCore
	beq	.L335	@,
	sub	ip, ip, #1	@ tmp149, eOldDecCore,
	cmp	ip, #4	@ tmp149,
	bhi	.L336	@,
	ldr	r3, [r4, #44]	@ D.35922, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.35922,
	beq	.L336	@,
	add	r0, r0, #217088	@, prephitmp.2219,
	str	r1, [sp, #4]	@,
	add	r0, r0, #432	@,,
	blx	r3	@ D.35922
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.2219, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	ldr	r2, [r0, #1624]	@ prephitmp.2221, <variable>.eDecCore
.L336:
	sub	r2, r2, #1	@ tmp154, prephitmp.2221,
	cmp	r2, #4	@ tmp154,
	bhi	.L335	@,
	ldr	r3, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:217532	@ tmp155,
	movt	lr, #:upper16:217532	@ tmp155,
	movw	r2, #:lower16:.LANCHOR0	@ tmp157,
	movt	r2, #:upper16:.LANCHOR0	@ tmp157,
	str	r3, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #40]	@ D.35934, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.35934,
	beq	.L337	@,
	ldr	ip, [r2, r5, asl #2]	@ temp.2232, s_pstVfmwChan
	add	r0, ip, #217088	@, temp.2232,
	add	r0, r0, #432	@,,
	ldr	r2, [ip, #880]	@, <variable>.eVidStd
	blx	r3	@ D.35934
	cmp	r0, #0	@,
	bne	.L337	@,
.L335:
	mov	r0, #0	@ D.35938,
.L338:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L337:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35938,
	b	.L338	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp274,
	movt	r4, #:upper16:.LANCHOR0	@ tmp274,
	ldr	fp, [sp, #564]	@, ChanMemDetail.ChanMemCtx.VirAddr
	mov	r5, r0	@ ChanID, ChanID
	ldr	sl, [sp, #568]	@, ChanMemDetail.ChanMemCtx.Length
	movw	r0, #:lower16:217488	@ tmp171,
	str	r1, [sp, #68]	@ eCapLevel, %sfp
	movt	r0, #:upper16:217488	@ tmp171,
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
	ldr	fp, [r4, r5, asl #2]	@ tmp166, s_pstVfmwChan
	str	r9, [fp, #220]	@ ChanMemFlag$SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	ldr	sl, [r4, r5, asl #2]	@ tmp168, s_pstVfmwChan
	str	r8, [sl, #224]	@ ChanMemFlag$SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	ldr	r8, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	str	r1, [r8, r0]	@ ChanMemFlag$SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	ldr	r1, [r3, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r1, #3	@ <variable>.MemAllocMode,
	ldrne	r1, [r4, r5, asl #2]	@ prephitmp.2284, s_pstVfmwChan
	beq	.L352	@,
.L342:
	mov	r8, #0	@ tmp194,
	str	r8, [r1, #148]	@ tmp194, <variable>.s32OneChanMem
.L343:
	ldr	sl, [r4, r5, asl #2]	@ tmp196, s_pstVfmwChan
	movw	r8, #:lower16:217500	@ tmp215,
	movt	r8, #:upper16:217500	@ tmp215,
	movw	r0, #:lower16:217496	@ tmp218,
	movt	r0, #:upper16:217496	@ tmp218,
	movw	r1, #:lower16:217504	@ tmp221,
	str	r6, [sl, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movt	r1, #:upper16:217504	@ tmp221,
	ldr	fp, [r4, r5, asl #2]	@ tmp198, s_pstVfmwChan
	add	r9, r4, r5, asl #2	@, tmp225, tmp274, ChanID,
	movw	sl, #:lower16:.LANCHOR0	@ tmp195,
	movt	sl, #:upper16:.LANCHOR0	@ tmp195,
	str	r2, [fp, #172]	@ ChanMemDetail$ChanMemVdh$VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp200, s_pstVfmwChan
	str	r7, [r2, #180]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.stChanMem_vdh.Length
	ldr	fp, [sp, #40]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp202, s_pstVfmwChan
	str	fp, [r2, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp204, s_pstVfmwChan
	str	ip, [r2, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp206, s_pstVfmwChan
	str	fp, [r2, #196]	@, <variable>.stChanMem_scd.Length
	ldr	fp, [sp, #64]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp208, s_pstVfmwChan
	str	fp, [r2, #208]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	fp, [sp, #60]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp210, s_pstVfmwChan
	str	fp, [r2, #204]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	fp, [sp, #56]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp212, s_pstVfmwChan
	str	fp, [r2, #212]	@, <variable>.stChanMem_ctx.Length
	ldr	fp, [sp, #52]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp214, s_pstVfmwChan
	str	fp, [r2, r8]	@, <variable>.stChanMem_pmv.PhyAddr
	ldr	r8, [sp, #48]	@, %sfp
	ldr	fp, [r4, r5, asl #2]	@ tmp217, s_pstVfmwChan
	str	r8, [fp, r0]	@, <variable>.stChanMem_pmv.VirAddr
	ldr	fp, [sp, #44]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp220, s_pstVfmwChan
	str	fp, [r2, r1]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, r5, asl #2]	@ tmp228, s_pstVfmwChan
	str	ip, [r9, #68]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r6, [r1, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32SdecMemAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp230, s_pstVfmwChan
	str	r7, [r2, #252]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.s32SdecMemSize
	ldr	r2, [r4, r5, asl #2]	@ temp.2315, s_pstVfmwChan
	ldr	ip, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L344	@,
	ldr	ip, [sp, #68]	@, %sfp
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp233,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp233,
	str	r6, [r2, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32OffLineDnrMemAddr
	cmp	ip, #24	@,
	ldr	ip, [lr, #36]	@ D.35604, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	moveq	r0, #1	@ DnrImgNum,
	ldrne	r0, [r3, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.35604,
	beq	.L347	@,
	ldr	lr, [r3, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mov	r1, #0	@ tmp236,
	ldr	r2, [r3, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	str	r0, [sp, #4]	@ DnrImgNum,
	mvn	r0, #0	@ tmp238,
	str	r1, [sp, #8]	@ tmp236,
	mov	r3, lr	@, <variable>.s32MaxHeight
	str	r0, [sp, #12]	@ tmp238,
	add	lr, sp, #72	@ tmp240,,
	mov	r0, #64	@ tmp241,
	str	r1, [sp, #0]	@ tmp236,
	str	r0, [sp, #20]	@ tmp241,
	mov	r1, r7	@, ChanMemDetail$ChanMemVdh$Length
	str	lr, [sp, #16]	@ tmp240,
	mov	r0, r6	@, ChanMemDetail$ChanMemVdh$PhyAddr
	blx	ip	@ D.35604
	cmp	r0, #0	@,
	bne	.L347	@,
	ldr	r3, [r4, r5, asl #2]	@ tmp244, s_pstVfmwChan
	ldr	r2, [sp, #76]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
.L350:
	ldr	r2, [r4, r5, asl #2]	@ temp.2318, s_pstVfmwChan
	sub	r7, r7, #16	@ tmp254, ChanMemDetail$ChanMemVdh$Length,
	mov	r3, #0	@ tmp259,
	mov	r0, r3	@ D.35610, tmp259
	ldr	ip, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	r6, ip, r6	@ tmp252, <variable>.s32OffLineDNRMemSize, ChanMemDetail$ChanMemVdh$PhyAddr
	str	r6, [r2, #228]	@ tmp252, <variable>.s32VdmChanMemAddr
	ldr	ip, [r4, r5, asl #2]	@ temp.2319, s_pstVfmwChan
	ldr	r1, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	rsb	r7, r1, r7	@ tmp256, <variable>.s32OffLineDNRMemSize, tmp254
	str	r7, [ip, #232]	@ tmp256, <variable>.s32VdmChanMemSize
	ldr	r2, [r4, r5, asl #2]	@ tmp258, s_pstVfmwChan
	str	r3, [r2, #260]	@ tmp259, <variable>.s32BpdChanMemAddr
	ldr	r1, [r4, r5, asl #2]	@ tmp261, s_pstVfmwChan
	str	r3, [r1, #264]	@ tmp259, <variable>.s32BpdChanMemSize
	ldr	ip, [r4, r5, asl #2]	@ tmp264, s_pstVfmwChan
	str	r3, [ip, #268]	@ tmp259, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp267, s_pstVfmwChan
	str	r3, [r2, #272]	@ tmp259, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@ tmp270, s_pstVfmwChan
	str	ip, [r1, #244]	@, <variable>.s32ScdChanMemAddr
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r3, [r4, r5, asl #2]	@ tmp272, s_pstVfmwChan
	str	r2, [r3, #256]	@, <variable>.s32ScdChanMemSize
.L349:
	add	sp, sp, #492	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L352:
	ldr	r1, [r4, r5, asl #2]	@ prephitmp.2284, s_pstVfmwChan
	ldr	r8, [r1, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r8, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L342	@,
	ldr	r0, [r1, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r0, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L342	@,
	ldr	r9, [r1, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r9, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L342	@,
	ldr	fp, [sp, #40]	@, %sfp
	ldr	r9, [sp, #36]	@, %sfp
	ldr	sl, [sp, #28]	@, %sfp
	add	r0, fp, r9	@ tmp179,,
	cmp	sl, #1	@,
	cmpeq	r6, r0	@, ChanMemDetail$ChanMemVdh$PhyAddr, tmp179
	bne	.L342	@,
	str	fp, [r1, #160]	@, <variable>.stChanMem.PhyAddr
	add	r0, r7, r9	@ tmp189, ChanMemDetail$ChanMemVdh$Length,
	ldr	r9, [r4, r5, asl #2]	@ tmp186, s_pstVfmwChan
	str	ip, [r9, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem.VirAddr
	ldr	r1, [r4, r5, asl #2]	@ tmp188, s_pstVfmwChan
	str	r0, [r1, #164]	@ tmp189, <variable>.stChanMem.Length
	ldr	fp, [r4, r5, asl #2]	@ tmp191, s_pstVfmwChan
	str	r8, [fp, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L343	@
.L344:
	mov	r1, #0	@ tmp246,
	str	r1, [r2, #236]	@ tmp246, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [sl, r5, asl #2]	@ tmp248, s_pstVfmwChan
	str	r1, [ip, #240]	@ tmp246, <variable>.s32OffLineDNRMemSize
	b	.L350	@
.L347:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35610,
	b	.L349	@
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
	beq	.L361	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp139,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp139,
	streq	r1, [r3, #216]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L362	@,
	mov	r3, r0	@, eType
	ldr	r2, .L363	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34604,
	ldmfd	sp!, {r3, pc}	@
.L362:
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r0, #0	@ D.34604,
	str	r1, [r3, #220]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
.L361:
	mov	r0, r1	@, event_report
	movw	r2, #715	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34604,
	ldmfd	sp!, {r3, pc}	@
.L364:
	.align	2
.L363:
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L376	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [ip, #0]	@ D.34573, s_pstVfmwChan
	cmp	r3, #0	@ D.34573,
	beq	.L377	@,
	ldr	r3, [r3, #20]	@ eType, <variable>.eAdapterType
	cmp	r3, #0	@ eType,
	bne	.L378	@,
	ldr	r3, [ip, #216]	@ D.34576, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.34576,
	beq	.L379	@,
.L373:
	blx	r3	@ D.34582
	ldmfd	sp!, {r3, pc}	@
.L378:
	cmp	r3, #1	@ eType,
	beq	.L380	@,
	ldr	r2, .L381	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L380:
	ldr	r3, [ip, #220]	@ D.34582, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.34582,
	bne	.L373	@,
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L379:
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L376:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #676	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC54	@,
	movt	r3, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L377:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #677	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L382:
	.align	2
.L381:
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
	beq	.L393	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L394	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L395	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L396	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L397	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L398	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L399	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L400	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.34306,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L385:
	mov	r0, r5	@, D.34306
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L393:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC58	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L398:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC63	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L397:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC62	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L396:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC61	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L395:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC60	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L394:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC59	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L399:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC64	@,
	mvn	r5, #0	@ D.34306,
	bl	dprint_vfmw	@
	b	.L385	@
.L401:
	.align	2
.L400:
	.word	.LANCHOR0+40
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1815:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp169,
	movt	r5, #:upper16:.LANCHOR0	@ tmp169,
	mov	r6, r0	@ ChanId, ChanId
	movw	r1, #:lower16:217512	@ tmp140,
	movt	r1, #:upper16:217512	@ tmp140,
	ldr	r0, [r5, r0, asl #2]	@ D.38974, s_pstVfmwChan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r1]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #6	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L403	@
.L408:
	.word	.L404
	.word	.L403
	.word	.L405
	.word	.L406
	.word	.L403
	.word	.L403
	.word	.L407
.L407:
	add	ip, r0, #217088	@, D.38974,
	add	r0, ip, #432	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L409:
	add	r3, r4, #1	@ tmp150, ret,
	cmp	r3, #1	@ tmp150,
	bhi	.L410	@,
.L417:
	ldr	r3, [r5, #4]	@ g_event_report.791, g_event_report
	cmp	r3, #0	@ g_event_report.791,
	beq	.L412	@,
	add	r2, sp, #8	@ tmp153,,
	mov	lr, #1	@ tmp152,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	lr, [r2, #-4]!	@ tmp152, para
	blx	r3	@ g_event_report.791
.L412:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L406:
	add	r0, r0, #217088	@, D.38974,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	r3, r4, #1	@ tmp150, ret,
	cmp	r3, #1	@ tmp150,
	bls	.L417	@,
.L410:
	movw	r1, #:lower16:g_chipID	@ tmp154,
	movt	r1, #:upper16:g_chipID	@ tmp154,
	ldr	r3, [r1, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L412	@,
	mov	r0, #1	@ tmp157,
	mov	r3, r0, asl r3	@ tmp156, tmp157,
	tst	r3, #3904	@ tmp156,
	beq	.L418	@,
	ldr	r3, [r5, #4]	@ g_event_report.2426, g_event_report
	cmp	r3, #0	@ g_event_report.2426,
	beq	.L415	@,
	add	r2, sp, #8	@ tmp165,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2426
.L415:
	movw	r1, #:lower16:.LC66	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC66	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L412	@
.L405:
	add	r2, r0, #217088	@, D.38974,
	add	r0, r2, #432	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L409	@
.L404:
	add	r4, r0, #217088	@, D.38974,
	add	r0, r4, #432	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L409	@
.L403:
	mvn	r4, #0	@ ret,
	b	.L409	@
.L418:
	movw	ip, #:lower16:98367	@ tmp160,
	movt	ip, #:upper16:98367	@ tmp160,
	and	r2, r3, ip	@ tmp160, tmp156, tmp160
	cmp	r2, #0	@ tmp160,
	beq	.L412	@,
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	movw	r1, #:lower16:.LC65	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC65	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L412	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.type	VfmwProc_SaveYUV, %function
VfmwProc_SaveYUV:
	.fnstart
.LFB1790:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp137,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp137,
	bne	.L423	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r5, [r4, #224]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r5, #0	@ vfmw_save_yuv_file,
	beq	.L424	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #224]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	str	r6, [r4, #224]	@ tmp137, vfmw_save_yuv_file
.L423:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L424:
	ldr	lr, [r4, #228]	@ save_file_cnt.742, save_file_cnt
	add	r6, sp, #12	@ str.738,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC67	@,
	mov	r0, r6	@, str.738
	movt	r2, #:upper16:.LC67	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.742,
	str	lr, [sp, #0]	@ save_file_cnt.742,
	str	ip, [r4, #228]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.738
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_yuv_file
	bl	klib_fopen	@
	str	r5, [r4, #232]	@ vfmw_save_yuv_file, save_yuv_chan_num
	cmp	r0, #0	@ vfmw_save_yuv_file.744,
	str	r0, [r4, #224]	@ vfmw_save_yuv_file.744, vfmw_save_yuv_file
	beq	.L422	@,
	mov	r2, r6	@, str.738
	mov	r3, r5	@, vfmw_save_yuv_file
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L423	@
.L422:
	mov	r2, r6	@, str.738
	movw	r1, #:lower16:.LC69	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	b	.L423	@
	.fnend
	.size	VfmwProc_SaveYUV, .-VfmwProc_SaveYUV
	.align	2
	.type	VfmwProc_SaveSeg, %function
VfmwProc_SaveSeg:
	.fnstart
.LFB1789:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp137,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp137,
	bne	.L429	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r5, [r4, #236]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r5, #0	@ vfmw_save_seg_file,
	beq	.L430	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #236]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	str	r6, [r4, #236]	@ tmp137, vfmw_save_seg_file
.L429:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L430:
	ldr	lr, [r4, #240]	@ save_file_cnt.733, save_file_cnt
	add	r6, sp, #12	@ str.729,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC71	@,
	mov	r0, r6	@, str.729
	movt	r2, #:upper16:.LC71	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.733,
	str	lr, [sp, #0]	@ save_file_cnt.733,
	str	ip, [r4, #240]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.729
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_seg_file
	bl	klib_fopen	@
	str	r5, [r4, #244]	@ vfmw_save_seg_file, save_seg_chan_num
	cmp	r0, #0	@ vfmw_save_seg_file.735,
	str	r0, [r4, #236]	@ vfmw_save_seg_file.735, vfmw_save_seg_file
	beq	.L428	@,
	mov	r2, r6	@, str.729
	mov	r3, r5	@, vfmw_save_seg_file
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	b	.L429	@
.L428:
	mov	r2, r6	@, str.729
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L429	@
	.fnend
	.size	VfmwProc_SaveSeg, .-VfmwProc_SaveSeg
	.align	2
	.type	VfmwProc_Savestream, %function
VfmwProc_Savestream:
	.fnstart
.LFB1788:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp137,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp137,
	bne	.L435	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r5, [r4, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r5, #0	@ vfmw_save_str_file,
	beq	.L436	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #248]	@, vfmw_save_str_file
	bl	klib_fclose	@
	str	r6, [r4, #248]	@ tmp137, vfmw_save_str_file
.L435:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L436:
	ldr	lr, [r4, #252]	@ save_file_cnt.724, save_file_cnt
	add	r6, sp, #12	@ str.720,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC75	@,
	mov	r0, r6	@, str.720
	movt	r2, #:upper16:.LC75	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.724,
	str	lr, [sp, #0]	@ save_file_cnt.724,
	str	ip, [r4, #252]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.720
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_str_file
	bl	klib_fopen	@
	str	r5, [r4, #256]	@ vfmw_save_str_file, save_str_chan_num
	cmp	r0, #0	@ vfmw_save_str_file.726,
	str	r0, [r4, #248]	@ vfmw_save_str_file.726, vfmw_save_str_file
	beq	.L434	@,
	mov	r2, r6	@, str.720
	mov	r3, r5	@, vfmw_save_str_file
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	b	.L435	@
.L434:
	mov	r2, r6	@, str.720
	movw	r1, #:lower16:.LC77	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	b	.L435	@
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VfmwProc_Save1DYUV, %function
VfmwProc_Save1DYUV:
	.fnstart
.LFB1792:
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
	beq	.L444	@,
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
	beq	.L440	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	ldr	ip, [r3, #96]	@ D.38750, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.38750,
	beq	.L441	@,
	mov	r1, #1	@ tmp147,
	mov	r2, r7	@, D.38738
	str	r1, [sp, #0]	@ tmp147,
	mov	r3, r8	@, D.38740
	mov	r1, r4	@, ptr
	blx	ip	@ D.38750
.L442:
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC82	@,
	mov	r2, r5	@, tmp153
	movt	r1, #:upper16:.LC82	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L439:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L441:
	mov	r0, ip	@, D.38750
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7639	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L442	@
.L444:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L439	@
.L440:
	mov	r2, r5	@, tmp153
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L439	@
	.fnend
	.size	VfmwProc_Save1DYUV, .-VfmwProc_Save1DYUV
	.align	2
	.type	VfmwProc_SaveOneYUV, %function
VfmwProc_SaveOneYUV:
	.fnstart
.LFB1791:
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
	beq	.L450	@,
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
	beq	.L448	@,
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
.L447:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L448:
	mov	r2, r5	@, tmp139
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L447	@
.L450:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L447	@
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
	.align	2
	.type	VfmwProc_SetDNRCfg, %function
VfmwProc_SetDNRCfg:
	.fnstart
.LFB1786:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r2, [r0, #0]	@ dat,* p_args
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, r2, lsr #27	@ D.38604, dat,
	cmp	r0, #1	@ D.38604,
	bls	.L452	@,
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
.L454:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {pc}
.L452:
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
	beq	.L454	@,
	movw	r1, #:lower16:.LC86	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	b	.L454	@
	.fnend
	.size	VfmwProc_SetDNRCfg, .-VfmwProc_SetDNRCfg
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1773:
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
	beq	.L466	@,
	mul	r4, r9, r6	@ D.38348, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.38348, D.38348,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L457	@,
	cmp	r6, #0	@ Height,
	ble	.L458	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.38348
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L458	@,
	cmp	fp, #0	@ tmp187,
	beq	.L459	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.38348
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L458	@,
.L459:
	mov	r1, r4	@, D.38348
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.38348
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L459	@,
.L458:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	fp, r6, asr #1	@ D.38363, tmp165,
	cmp	fp, #0	@ D.38363,
	ble	.L460	@,
	add	r2, r4, #3	@ tmp169, D.38348,
	cmp	r4, #0	@ D.38348,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp172, Width, Width,
	movlt	r4, r2	@ D.38348, tmp169
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.38348,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.2594, tmp172,
	mov	r9, #0	@ y.2627,
.L461:
	cmp	r6, #0	@ pretmp.2594,
	ble	.L464	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.2594
	sub	ip, r6, #1	@ tmp180, pretmp.2594,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.2610,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L479	@,
	cmp	ip, #0	@ tmp182,
	beq	.L462	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.2594
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.2610
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.2610
	mov	r0, #3	@ ivtmp.2610,
	beq	.L479	@,
.L462:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.2610,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.2610
	add	r0, ip, #1	@ ivtmp.2610, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.2594
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L462	@,
.L479:
	add	r5, r5, r6	@ pU, pU, pretmp.2594
	add	lr, lr, r6	@ pV, pV, pretmp.2594
.L464:
	add	r9, r9, #1	@ y.2627, y.2627,
	cmp	r9, fp	@ y.2627, D.38363
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L461	@
.L460:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L457:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L466	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L466:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1772:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.38305, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.38305,
	beq	.L491	@,
	mov	r0, #0	@,
	blx	r3	@ D.38305
.L487:
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #28]	@ D.38310, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.38310,
	beq	.L488	@,
	blx	r0	@ D.38310
	ldmfd	sp!, {r4, pc}	@
.L488:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7035	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L491:
	mov	r0, r3	@, D.38305
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7027	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L487	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1771:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.38288, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.38288,
	beq	.L498	@,
	mov	r0, #0	@,
	blx	r3	@ D.38288
.L494:
	bl	SCDDRV_MaskInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #24]	@ D.38293, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.38293,
	beq	.L495	@,
	blx	r0	@ D.38293
	ldmfd	sp!, {r4, pc}	@
.L495:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7013	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L498:
	mov	r0, r3	@, D.38288
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7005	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L494	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
.LFB1766:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L523	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp148,
	movt	r4, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r3, [r4, #0]	@ D.38210, s_pstVfmwChan
	cmp	r3, #0	@ D.38210,
	beq	.L524	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L525	@,
	cmp	r1, #0	@ pImage,
	beq	.L526	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #0]	@ temp.2719, s_pstVfmwChan
	cmp	r3, #0	@ temp.2719,
	movweq	r2, #6929	@,
	beq	.L522	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L527	@,
	add	r0, r4, #260	@, tmp148,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #0]	@ D.41303, s_pstVfmwChan
	movw	r1, #:lower16:181770	@ tmp169,
	movt	r1, #:upper16:181770	@ tmp169,
	add	r5, r2, #216064	@ pDSDFrame, D.41303,
	ldrsb	r7, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r5, r5, #360	@ pDSDFrame, pDSDFrame,
	cmp	r7, #0	@ s32AllDecFrameNum,
	ble	.L507	@,
	ldr	ip, [r5], #16	@ <variable>.eFrameState, <variable>.eFrameState
	sub	r4, r7, #1	@ tmp184, s32AllDecFrameNum,
	and	r4, r4, #1	@ tmp186, tmp184,
	cmp	ip, #1	@ <variable>.eFrameState,
	beq	.L528	@,
.L512:
	mov	r6, #1	@ i,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	add	r5, r5, #16	@ ivtmp.2700, ivtmp.2700,
	ble	.L507	@,
	cmp	r4, #0	@ tmp186,
	beq	.L509	@,
	ldr	r0, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r0, r6	@ <variable>.eFrameState,
	beq	.L529	@,
.L514:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #16	@ ivtmp.2700, ivtmp.2700,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L509	@,
	b	.L507	@
.L508:
	ldr	r3, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r3, #1	@ <variable>.eFrameState,
	beq	.L530	@,
.L517:
	add	r6, r6, #1	@ i, tmp187,
	add	r5, r4, #16	@ ivtmp.2700, tmp188,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	ble	.L507	@,
.L509:
	ldr	lr, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	mov	r4, r5	@ tmp188, ivtmp.2700
	add	r6, r6, #1	@ tmp187, i,
	cmp	lr, #1	@ <variable>.eFrameState,
	bne	.L508	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	mov	r0, #0	@,
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	ldr	r3, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r3, #1	@ <variable>.eFrameState,
	bne	.L517	@,
.L530:
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	add	r6, r6, #1	@ i, tmp187,
	bl	DNR_FsIsInImgQue	@
	add	r5, r4, #16	@ ivtmp.2700, tmp188,
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L509	@,
.L507:
	ldr	r0, .L531	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L528:
	mov	r0, r6	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L512	@
.L529:
	mov	r0, #0	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L514	@
.L527:
	movw	r2, #6936	@,
.L522:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L525:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6923	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC90	@,
	movt	r3, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L523:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6921	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC88	@,
	movt	r3, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L526:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6924	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC91	@,
	movt	r3, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L524:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6922	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC89	@,
	movt	r3, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L532:
	.align	2
.L531:
	.word	.LANCHOR0+260
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1763:
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
	beq	.L540	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.2745, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.38149, <variable>.eVidStd
	cmp	r3, #0	@ D.38149,
	beq	.L541	@,
	cmp	r3, #15	@ D.38149,
	movne	r3, #2	@ tmp148,
	strne	r3, [r6, #0]	@ tmp148,* pRefImgNum
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:.LC93	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC93	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L541:
	movw	r1, #:lower16:244144	@ tmp145,
	movt	r1, #:upper16:244144	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L540:
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
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	beq	.L555	@,
.L543:
	mov	r5, #0	@ pDecParam,
.L550:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L555:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r3, #0]	@ D.39314, s_pstVfmwChan
	cmp	r4, #0	@ D.39314,
	beq	.L543	@,
	ldr	r0, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L543	@,
	ldr	r1, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L543	@,
	ldr	r5, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r5, #6	@ <variable>.eVidStd,
	ldrls	pc, [pc, r5, asl #2]	@ <variable>.eVidStd
	b	.L543	@
.L552:
	.word	.L545
	.word	.L543
	.word	.L548
	.word	.L549
	.word	.L543
	.word	.L543
	.word	.L549
.L549:
	movw	r3, #:lower16:217524	@ tmp144,
	movt	r3, #:upper16:217524	@ tmp144,
	ldr	r5, [r4, r3]	@ pDecParam,
.L546:
	cmp	r5, #0	@ pDecParam,
	beq	.L550	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L548:
	movw	ip, #:lower16:218556	@ tmp143,
	movt	ip, #:upper16:218556	@ tmp143,
	ldr	r5, [r4, ip]	@ pDecParam,
	b	.L546	@
.L545:
	movw	r2, #:lower16:217880	@ tmp141,
	movt	r2, #:upper16:217880	@ tmp141,
	ldr	r5, [r4, r2]	@ pDecParam,
	b	.L546	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r3, r0, asl #2]	@ tmp139, s_pstVfmwChan
	ldr	r2, [r2, #880]	@ D.38012, <variable>.eVidStd
	sub	r1, r2, #10	@ tmp140, D.38012,
	cmp	r1, #2	@ tmp140,
	bhi	.L557	@,
	ldr	r3, [r3, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L559	@,
.L558:
	cmp	r2, #18	@ D.38012,
	bne	.L563	@,
.L559:
	mov	r0, #0	@ D.38026,
	ldmfd	sp!, {r3, pc}	@
.L557:
	cmp	r2, #14	@ D.38012,
	beq	.L559	@,
	cmp	r2, #4	@ D.38012,
	bne	.L558	@,
	mov	r0, #0	@ D.38026,
	ldmfd	sp!, {r3, pc}	@
.L563:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r0, #1	@ D.38026,
	ldmnefd	sp!, {r3, pc}	@
	b	.L559	@
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1724:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r5, r0, #0	@ ChanId, ChanId
	bne	.L565	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, #0]	@ D.36756, s_pstVfmwChan
	cmp	r3, #0	@ D.36756,
	beq	.L565	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L568	@,
	ldr	r6, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r6, #1	@ <variable>.s32IsRun,
	beq	.L569	@,
.L568:
	mov	r2, #0	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ D.36758,
.L567:
	mov	r0, r2	@, D.36758
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L565:
	mov	r3, r5	@, ChanId
	movw	r2, #4375	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC94	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r2, #0	@ D.36758,
	mov	r0, r2	@, D.36758
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L569:
	bl	VCTRL_GetDecParam	@
	subs	r7, r0, #0	@ pDecParam,
	beq	.L575	@,
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, r5	@ D.36758, ChanId
	str	r5, [r0, #680]	@ ChanId, <variable>.s32CountNoDecparamFlag
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r3, #684]	@ ChanId, <variable>.u32NoDecparamStartTime
	b	.L567	@
.L575:
	ldr	r3, [r4, #0]	@ temp.2815, s_pstVfmwChan
	ldr	r5, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r5, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L576	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #0]	@ temp.2819, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.36779, <variable>.u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.36779
	bls	.L572	@,
	rsb	r2, r2, r0	@ tmp160, D.36779, tmp
	cmp	r2, #40	@ tmp160,
	movls	r2, r7	@ D.36758, pDecParam
	bls	.L567	@,
.L572:
	str	r7, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r2, r6	@ D.36758, <variable>.s32IsRun
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r7, [r1, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L567	@
.L576:
	str	r6, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, #0]	@ temp.2816, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r2, r5	@ D.36758, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L567	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp275,
	movt	r4, #:upper16:.LANCHOR0	@ tmp275,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pSegMan, pSegMan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r4, r0, asl #2]	@ prephitmp.2836, s_pstVfmwChan
	ldr	r1, [r0, #32]	@ D.37955, <variable>.stChanCfg.eVidStd
	sub	r3, r1, #2	@ tmp152, D.37955,
	cmp	r1, #6	@ D.37955,
	cmpne	r3, #1	@, tmp152,
	bls	.L587	@,
	ldrd	r2, [r6, #32]	@ D.37988, pSegMan,
	mvn	r8, #0	@ tmp248,
	mvn	r9, #0	@,
	cmp	r3, r9	@ D.37988, tmp248
	cmpeq	r2, r8	@ D.37988, tmp248
	movne	r8, #944	@ tmp249,
	strned	r2, [r0, r8]	@ D.37988, prephitmp.2836, tmp249
	ldrne	r0, [r4, r5, asl #2]	@ prephitmp.2836, s_pstVfmwChan
.L585:
	ldrd	r8, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r2, #960	@ tmp251,
	mov	lr, #976	@ tmp255,
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	strd	r8, [r0, r2]	@ <variable>.CurrSeg.Usertag, prephitmp.2836, tmp251
	mov	r0, #29	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp254, s_pstVfmwChan
	ldrd	r8, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r8, [ip, lr]	@ <variable>.CurrSeg.DispTime, tmp254, tmp255
	ldr	lr, [r4, r5, asl #2]	@ tmp258, s_pstVfmwChan
	ldr	r3, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r3, [lr, #992]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp261, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #996]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp264, s_pstVfmwChan
	ldr	lr, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	lr, [r3, #1000]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, r5, asl #2]	@ tmp267, s_pstVfmwChan
	ldr	ip, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	ip, [lr, #1016]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	mov	lr, #944	@ tmp271,
	ldr	r3, [r4, r5, asl #2]	@ temp.2851, s_pstVfmwChan
	ldrd	r4, [r3, r2]	@ <variable>.stSynExtraData.Usertag, temp.2851, tmp251
	add	r2, r3, lr	@, temp.2851, tmp271
	ldrd	r2, [r2]	@ <variable>.stSynExtraData.pts,
	strd	r4, [sp]	@ <variable>.stSynExtraData.Usertag,
	bl	dprint_vfmw	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L587:
	add	r0, r0, #1264	@, prephitmp.2836,
	add	r2, r6, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L588	@,
.L579:
	ldr	r3, [r4, r5, asl #2]	@ temp.2853, s_pstVfmwChan
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L583	@,
.L582:
	ldrd	r0, [r6, #32]	@ temp.2878, pSegMan,
	mvn	r8, #0	@ tmp222,
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2878, tmp222
	cmpeq	r0, r8	@ temp.2878, tmp222
	movne	ip, #952	@ tmp223,
	strned	r0, [r3, ip]	@ temp.2878, temp.2853, tmp223
.L584:
	ldr	ip, [r4, r5, asl #2]	@ tmp225, s_pstVfmwChan
	mov	r2, #968	@ tmp226,
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r3, #984	@ tmp230,
	strd	r0, [ip, r2]	@ <variable>.CurrSeg.Usertag, tmp225, tmp226
	ldr	r2, [r4, r5, asl #2]	@ tmp229, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r2, r3]	@ <variable>.CurrSeg.DispTime, tmp229, tmp230
	ldr	ip, [r4, r5, asl #2]	@ tmp233, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp236, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r4, r5, asl #2]	@ tmp239, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, r5, asl #2]	@ tmp242, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldr	r3, [r4, r5, asl #2]	@ temp.2853, s_pstVfmwChan
.L583:
	mov	r0, #960	@ tmp246,
	add	r2, r3, r0	@, temp.2853, tmp246
	movw	r1, #:lower16:.LC97	@,
	mov	r0, #29	@,
	ldrd	r2, [r2]	@,
	movt	r1, #:upper16:.LC97	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	dprint_vfmw	@
.L588:
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2852, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r2, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L589	@,
	mov	r9, #952	@ tmp169,
	mvn	r8, #0	@ tmp170,
	ldrd	r0, [r3, r9]	@ temp.2854, prephitmp.2852, tmp169
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2854, tmp170
	cmpeq	r0, r8	@ temp.2854, tmp170
	movne	sl, #944	@ tmp171,
	strned	r0, [r3, sl]	@ temp.2854, prephitmp.2852, tmp171
	ldrne	r3, [r4, r5, asl #2]	@ prephitmp.2852, s_pstVfmwChan
.L581:
	mov	r9, #952	@ tmp173,
	mvn	r0, #0	@ tmp174,
	mvn	r1, #0	@,
	strd	r0, [r3, r9]	@ tmp174, prephitmp.2852, tmp173
	ldr	ip, [r4, r5, asl #2]	@ temp.2855, s_pstVfmwChan
	mov	r8, #968	@ tmp177,
	mov	lr, #960	@ tmp176,
	mov	sl, #984	@ tmp181,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC96	@,
	ldrd	r2, [ip, r8]	@, temp.2855, tmp177
	movt	r1, #:upper16:.LC96	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp175,
	movt	r7, #:upper16:.LANCHOR0	@ tmp175,
	strd	r2, [ip, lr]	@, temp.2855, tmp176
	mov	lr, #976	@ tmp180,
	ldr	ip, [r4, r5, asl #2]	@ temp.2856, s_pstVfmwChan
	ldrd	r2, [ip, sl]	@, temp.2856, tmp181
	strd	r2, [ip, lr]	@, temp.2856, tmp180
	ldr	lr, [r4, r5, asl #2]	@ temp.2857, s_pstVfmwChan
	ldr	ip, [lr, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	ip, [lr, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ temp.2858, s_pstVfmwChan
	ldr	r2, [r3, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	r2, [r3, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	lr, [r4, r5, asl #2]	@ temp.2859, s_pstVfmwChan
	ldr	ip, [lr, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	ip, [lr, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	mov	lr, #944	@ tmp194,
	ldr	r3, [r4, r5, asl #2]	@ temp.2860, s_pstVfmwChan
	ldr	r2, [r3, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	r2, [r3, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	ip, [r4, r5, asl #2]	@ tmp193, s_pstVfmwChan
	add	r2, ip, lr	@, tmp193, tmp194
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5, asl #2]	@ temp.2853, s_pstVfmwChan
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L582	@,
	ldrd	r0, [r6, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	strd	r0, [r3, r9]	@ <variable>.CurrSeg.Pts, temp.2853, tmp173
	ldr	r2, [r7, r5, asl #2]	@ tmp201, s_pstVfmwChan
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	strd	r0, [r2, r8]	@ <variable>.CurrSeg.Usertag, tmp201, tmp177
	ldr	r3, [r7, r5, asl #2]	@ tmp205, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r3, sl]	@ <variable>.CurrSeg.DispTime, tmp205, tmp181
	ldr	ip, [r7, r5, asl #2]	@ tmp209, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r7, r5, asl #2]	@ tmp212, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r7, r5, asl #2]	@ tmp215, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r7, r5, asl #2]	@ tmp218, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	b	.L579	@
.L589:
	mov	r8, #952	@ tmp166,
	mov	r7, #944	@ tmp165,
	ldrd	r0, [r3, r8]	@ <variable>.stSynExtraData.NextPts, prephitmp.2852, tmp166
	strd	r0, [r3, r7]	@ <variable>.stSynExtraData.NextPts, prephitmp.2852, tmp165
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2852, s_pstVfmwChan
	b	.L581	@
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
	mov	r1, #12	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #4]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1754:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L593	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	ldr	r3, [r3, #32]	@ D.37765, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.37765,
	beq	.L594	@,
	mov	r0, #0	@,
	blx	r3	@ D.37765
.L595:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L593:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.2941, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.2939, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.2941,
	ldr	r6, [r4, #20]	@ VirAddr.2940, <variable>.stScdCmnMem.VirAddr
	bne	.L602	@,
.L596:
	mov	r0, r7	@, PhyAddr.2939
	mov	r1, r6	@, VirAddr.2940
	mov	r2, r5	@, Length.2941
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.2948, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.2946, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2948,
	ldr	r6, [r4, #36]	@ VirAddr.2947, <variable>.VirAddr
	bne	.L603	@,
.L597:
	mov	r0, r7	@, PhyAddr.2946
	mov	r1, r6	@, VirAddr.2947
	mov	r2, r5	@, Length.2948
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.2953, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.2951, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.2953,
	ldr	r6, [r4, #68]	@ VirAddr.2952, <variable>.stBpdReg.VirAddr
	bne	.L604	@,
.L598:
	mov	r0, r7	@, PhyAddr.2951
	mov	r1, r6	@, VirAddr.2952
	mov	r2, r5	@, Length.2953
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.2958, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.2956, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2958,
	ldr	r6, [r4, #52]	@ VirAddr.2957, <variable>.VirAddr
	bne	.L605	@,
.L599:
	mov	r0, r7	@, PhyAddr.2956
	mov	r1, r6	@, VirAddr.2957
	mov	r2, r5	@, Length.2958
	bl	MEM_DelMemRecord	@
	ldr	r6, [r4, #92]	@ Length.2963, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.2961, <variable>.stSystemReg.PhyAddr
	cmp	r6, #0	@ Length.2963,
	ldr	r7, [r4, #84]	@ VirAddr.2962, <variable>.stSystemReg.VirAddr
	beq	.L600	@,
	mov	r0, r5	@, PhyAddr.2961
	mov	r1, r7	@, VirAddr.2962
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L600:
	mov	r1, r7	@, VirAddr.2962
	mov	r2, r6	@, Length.2963
	mov	r0, r5	@, PhyAddr.2961
	bl	MEM_DelMemRecord	@
	mov	r0, #70	@,
	ldr	r2, .L606	@,
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	osal_free_irq	@
	mov	r0, #73	@,
	ldr	r2, .L606	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	osal_free_irq	@
	mov	r0, #93	@,
	ldr	r2, .L606	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L605:
	mov	r0, r7	@, PhyAddr.2956
	mov	r1, r6	@, VirAddr.2957
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L599	@
.L604:
	mov	r0, r7	@, PhyAddr.2951
	mov	r1, r6	@, VirAddr.2952
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L598	@
.L603:
	mov	r0, r7	@, PhyAddr.2946
	mov	r1, r6	@, VirAddr.2947
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L597	@
.L602:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L596	@
.L594:
	mov	r0, r3	@, D.37765
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #6131	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L595	@
.L607:
	.align	2
.L606:
	.word	.LANCHOR0+272
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1753:
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
	bne	.L609	@,
	add	r6, r4, #64	@ pstMem, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269746176	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269746176	@,
	mov	r2, r6	@, pstMem
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L633	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp163,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp163,
	ldr	r3, [r5, #16]	@ D.37643, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.37643,
	beq	.L633	@,
	blx	r3	@ D.37643
	cmp	r0, #0	@,
	bne	.L633	@,
	add	r7, r4, #48	@ pstMem.2989, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r7	@, pstMem.2989
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L631	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r7	@, pstMem.2989
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.37669,
	bne	.L631	@,
	add	r8, sp, #12	@ tmp175,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.37669
	mov	r0, r8	@, tmp175
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.41615, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.41615,
	beq	.L619	@,
	blx	r3	@ D.41615
	subs	r2, r0, #0	@ Size,
	ble	.L619	@,
	mov	r0, r8	@, tmp175
	mov	r1, r6	@, D.37669
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.37669,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L631	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.41608, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.41608,
	beq	.L631	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.41608
	subs	r5, r0, #0	@ D.41607,
	bne	.L631	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ pstMem.2996, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.41607
	mov	r3, r6	@, pstMem.2996
	str	r5, [sp, #0]	@ D.41607,
	mov	r2, r0	@ D.37686,
	movw	r0, #:lower16:.LC103	@,
	movt	r0, #:upper16:.LC103	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L633	@,
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
	bne	.L633	@,
	ldr	r5, .L636	@ tmp198,
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	movw	r3, #:lower16:.LC99	@,
	movt	r3, #:upper16:.LC99	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L633	@,
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	movw	r3, #:lower16:.LC100	@,
	movt	r3, #:upper16:.LC100	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.37715,
	bne	.L633	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	movw	r3, #:lower16:.LC101	@,
	movt	r3, #:upper16:.LC101	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.37724
	bne	.L635	@,
.L612:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L635:
	bl	DNR_Close	@
	mov	r0, r7	@ D.37637, D.37715
	b	.L612	@
.L633:
	mov	r0, r6	@, pstMem.2996
.L634:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37637,
	b	.L612	@
.L609:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.37637,
	b	.L612	@
.L619:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L631:
	mov	r0, r7	@, pstMem.2989
	b	.L634	@
.L637:
	.align	2
.L636:
	.word	.LANCHOR0+272
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1735:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L644	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r2, #0]	@ D.36961, s_pstVfmwChan
	ldr	r3, [ip, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L645	@,
	cmp	r1, #0	@ pArgs,
	beq	.L646	@,
	mov	r5, r1	@ pArgs, pArgs
	add	ip, ip, #1424	@ tmp146, D.36961,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldr	r0, [r5, #0]	@ tmp149,* pArgs
	str	r0, [ip, #0]	@ tmp149, <variable>.stSynExtraData.stPvrInfo
.L640:
	mov	r0, r4	@, D.36959
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L645:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4995	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	mvn	r4, #0	@ D.36959,
	bl	dprint_vfmw	@
	b	.L640	@
.L644:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4994	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.36959,
	b	.L640	@
.L646:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4996	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r3, #:upper16:.LC43	@,
	mvn	r4, #0	@ D.36959,
	bl	dprint_vfmw	@
	b	.L640	@
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L653	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L654	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, #0]	@ D.35901, s_pstVfmwChan
	cmp	r3, #0	@ D.35901,
	beq	.L655	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.35901,
	bl	memcpy	@
	mov	r0, r4	@ D.35897, ChanID
	ldmfd	sp!, {r4, pc}	@
.L653:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2874	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35897,
	ldmfd	sp!, {r4, pc}	@
.L655:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35897,
	ldmfd	sp!, {r4, pc}	@
.L654:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2875	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC104	@,
	movt	r3, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35897,
	ldmfd	sp!, {r4, pc}	@
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
	subs	ip, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L663	@,
	cmp	r1, #0	@ pArgs,
	beq	.L664	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, #0]	@ D.34788, s_pstVfmwChan
	cmp	r2, #0	@ D.34788,
	beq	.L665	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	r2, r2, #1584	@ tmp146, D.34788,
	add	r2, r2, #12	@ tmp146, tmp146,
	stmia	r2, {r0, r1}	@ tmp146,,
	ldr	r3, [r3, #0]	@ temp.3079, s_pstVfmwChan
	ldr	r0, [r3, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp151, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, ip	@ D.34784, ChanID
	cmp	r2, #1	@ tmp151,
	strhi	ip, [r3, #1596]	@ ChanID, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r3, pc}	@
.L663:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1228	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34784,
	ldmfd	sp!, {r3, pc}	@
.L665:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1230	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34784,
	ldmfd	sp!, {r3, pc}	@
.L664:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1229	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC105	@,
	movt	r3, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34784,
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
	beq	.L671	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.34746, s_pstVfmwChan
	cmp	r3, #0	@ D.34746,
	beq	.L672	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp143, D.34746,
	mov	ip, #0	@ D.34744,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L668:
	mov	r0, ip	@, D.34744
	ldmfd	sp!, {r3, pc}	@
.L672:
	mov	r0, r3	@, D.34746
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1176	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.34744,
	b	.L668	@
.L671:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1175	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.34744,
	b	.L668	@
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
	beq	.L678	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.34725, s_pstVfmwChan
	cmp	r3, #0	@ D.34725,
	beq	.L679	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp143, D.34725,
	mov	ip, #0	@ D.34723,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L675:
	mov	r0, ip	@, D.34723
	ldmfd	sp!, {r3, pc}	@
.L679:
	mov	r0, r3	@, D.34725
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1151	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.34723,
	b	.L675	@
.L678:
	mov	r0, r1	@, pstStreamIntf
	movw	r2, #1150	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.34723,
	b	.L675	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1742:
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
	ldr	r3, [r5, r0, asl #2]	@ D.37189, s_pstVfmwChan
	cmp	r3, #0	@ D.37189,
	beq	.L690	@,
	ldr	r8, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L691	@,
	ldr	r3, [r3, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L692	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.37202,
	bne	.L693	@,
	mov	r1, r0	@, D.37202
	mov	r0, r6	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L694	@,
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
	beq	.L695	@,
	ldr	r2, [r4, #408]	@ D.37217, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.37217,
	beq	.L688	@,
	ldr	r3, [r4, #412]	@ D.37219, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.37219,
	beq	.L688	@,
	ldr	ip, [r4, #416]	@ D.37221, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.37221,
	beq	.L688	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC113	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC113	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.37193,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r5, r6, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r1, [r2, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L682:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L693:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L691:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L692:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L688:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L694:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L690:
	mov	r0, r3	@, D.37189
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5331	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
.L695:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC112	@,
	movw	r2, #5367	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37193,
	b	.L682	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1741:
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
	beq	.L720	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L699	@,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.37089,
.L698:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L699:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.37094,
	beq	.L721	@,
.L700:
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L722	@,
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
	ldr	lr, [r7, #28]	@ temp.3245, <variable>.s32LumaPhyAddr
	str	lr, [r4, #88]	@ temp.3245, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.3245
	str	lr, [r4, #120]	@ temp.3245, <variable>.luma_2d_phy_addr
	str	lr, [r4, #104]	@ temp.3245, <variable>.luma_phy_addr
	ldr	r8, [r7, #36]	@ temp.3246, <variable>.s32CbPhyAddr
	str	r8, [r4, #108]	@ temp.3246, <variable>.chrom_phy_addr
	str	r8, [r4, #92]	@ temp.3246, <variable>.top_chrom_phy_addr
	str	r8, [r4, #124]	@ temp.3246, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.37112, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.37112, <variable>.luma_2d_vir_addr
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
	ldr	r0, [r7, #20]	@ temp.3251, <variable>.s32YWidth
	str	r0, [r4, #152]	@ temp.3251, <variable>.disp_width
	mov	r1, r0, lsr fp	@ tmp192, temp.3251,
	ldr	r3, [r7, #24]	@ temp.3253, <variable>.s32YHeight
	str	r1, [r4, #160]	@ tmp192, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.3253, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp193, temp.3253,
	str	ip, [r4, #164]	@ tmp193, <variable>.disp_center_y
	ldr	r0, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #140]	@ tmp198, <variable>.format
	str	r6, [r4, #168]	@ tmp179, <variable>.frame_rate
	str	r0, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #180]	@ tmp179, <variable>.error_level
	str	fp, [r4, #208]	@ tmp178, <variable>.chroma_idc
	str	r6, [r4, #256]	@ tmp179, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp179, <variable>.line_num_vir_addr
	beq	.L702	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L714	@,
	b	.L704	@
.L724:
	ldr	r2, [r4, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L723	@,
.L706:
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r6, r6, #1	@ y, y,
	ldr	r2, [r4, #172]	@ D.37171, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	bge	.L704	@,
.L726:
	add	r8, r8, r2	@ pDst, pDst, D.37171
.L714:
	ldr	r3, [r7, #0]	@ D.37133, <variable>.enFmt
	cmp	r3, #0	@ D.37133,
	beq	.L724	@,
	cmp	r3, #1	@ D.37133,
	beq	.L706	@,
	cmp	r3, #3	@ D.37133,
	beq	.L725	@,
	cmp	r3, #2	@ D.37133,
	bne	.L710	@,
	mov	r1, sl	@, pSrc
	ldr	r2, [r4, #144]	@, <variable>.image_width
	mov	r0, r8	@, pDst
	add	r6, r6, #1	@ y, y,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	sl, sl, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	ldr	r2, [r4, #172]	@ D.37171, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	blt	.L726	@,
.L704:
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
	ldr	r2, [r3, r9, asl #2]	@ D.37174, s_pstVfmwChan
	add	ip, r2, #217088	@, D.37174,
	add	r2, ip, #432	@, tmp2,
	add	r3, ip, #440	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.37089,
	beq	.L698	@,
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
.L719:
	mvn	r0, #0	@ D.37089,
	b	.L698	@
.L723:
	mov	r1, #128	@,
	mov	r0, r8	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L706	@
.L725:
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L708	@,
	mov	r0, #0	@ x.3269,
	mov	r2, sl	@ ivtmp.3226, pSrc
	mov	r3, r0	@ x, x.3269
.L709:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp204,* ivtmp.3226
	mov	lr, r0	@ tmp207, x.3269
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, r8]!	@ tmp204,
	mov	r0, r3	@ x.3269, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp209,
	add	r2, r2, #4	@ ivtmp.3226, ivtmp.3226,
	strb	ip, [lr, #1]	@ tmp209,
	ldr	r1, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L709	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L708:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L706	@
.L710:
	cmp	r3, #4	@ D.37133,
	bne	.L719	@,
	ldr	r0, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L712	@,
	mov	r0, #0	@ x.593,
	mov	r2, sl	@ ivtmp.3232, pSrc
	mov	r3, r0	@ x.3265, x.593
.L713:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp220,* ivtmp.3232
	mov	r1, r8	@ tmp223, pDst
	add	r3, r3, #2	@ x.3265, x.3265,
	strb	lr, [r1, r0]!	@ tmp220,
	mov	r0, r3	@ x.593, x.3265
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp225,
	add	r2, r2, #4	@ ivtmp.3232, ivtmp.3232,
	strb	ip, [r1, #1]	@ tmp225,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.3265, <variable>.image_width
	bcc	.L713	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L712:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L706	@
.L721:
	ldr	r1, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L700	@,
	ldr	r2, [r7, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37089,
	b	.L698	@
.L720:
	ldr	r2, [r7, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.37089, PicBufID
	b	.L698	@
.L722:
	add	r0, r0, #22	@,,
	movw	r1, #:lower16:.LC117	@,
	movw	r2, #5171	@,
	movt	r1, #:upper16:.LC117	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37089,
	b	.L698	@
.L702:
	mov	r0, fp	@, tmp178
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37089,
	b	.L698	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1743:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	lr, [r3, r0, asl #2]	@ D.37234, s_pstVfmwChan
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	cmp	lr, #0	@ D.37234,
	beq	.L734	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L735	@,
	ldr	r2, [lr, #880]	@ D.37241, <variable>.eVidStd
	cmp	r2, #18	@ D.37241,
	bne	.L736	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #824	@ tmp146, D.37234,
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
	cmp	r0, #0	@ D.37246
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37238,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L736:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37238,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L735:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #5421	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC119	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37238,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L734:
	mov	r0, lr	@, D.37234
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5420	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37238,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1740:
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
	beq	.L738	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L738:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1739:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.37034, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.37034, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #0]	@ D.39347, s_pstVfmwChan
	cmp	r3, #0	@ D.39347,
	beq	.L741	@,
	add	r1, r3, #217088	@ tmp141, D.39347,
	add	r0, r1, #432	@ tmp141, tmp141,
	cmp	r4, r0	@ pCtx, tmp141
	beq	.L744	@,
.L741:
	mvn	ip, #0	@ tmp145,
	mov	r0, #0	@,
	str	ip, [r4, #360]	@ tmp145, <variable>.ChanID
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.37047,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L744:
	mov	r2, #0	@ tmp143,
	mov	r0, #1	@ D.37047,
	str	r2, [r4, #360]	@ tmp143, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1744:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r1, [r3, r0, asl #2]	@ D.37261, s_pstVfmwChan
	cmp	r1, #0	@ D.37261,
	beq	.L755	@,
	ldr	r0, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.eVidStd
	b	.L754	@
.L753:
	.word	.L748
	.word	.L754
	.word	.L749
	.word	.L750
	.word	.L754
	.word	.L754
	.word	.L751
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L754
	.word	.L752
.L754:
	bx	lr	@
.L748:
	add	r3, r1, #217088	@, D.37261,
	add	r1, r1, #888	@, D.37261,
	add	r0, r3, #432	@,,
	b	H264DEC_Init	@
.L749:
	add	ip, r1, #217088	@, D.37261,
	add	r1, r1, #888	@, D.37261,
	add	r0, ip, #432	@,,
	b	MPEG4DEC_Init	@
.L750:
	add	r2, r1, #217088	@, D.37261,
	add	r1, r1, #888	@, D.37261,
	add	r0, r2, #432	@,,
	b	MPEG2DEC_Init	@
.L751:
	add	r0, r1, #217088	@, D.37261,
	add	r1, r1, #888	@, D.37261,
	add	r0, r0, #432	@,,
	b	AVSDEC_Init	@
.L752:
	add	r2, r1, #217088	@, D.37261,
	add	r1, r1, #888	@, D.37261,
	add	r0, r2, #432	@,,
	b	USERDEC_Init	@
.L755:
	mov	r0, r1	@, D.37261
	movw	r3, #:lower16:.LC27	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r2, #5448	@,
	b	dprint_vfmw	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1733:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L768	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #0]	@ D.36922, s_pstVfmwChan
	cmp	r3, #0	@ D.36922,
	beq	.L769	@,
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L770	@,
	ldr	r0, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r0, #6	@ <variable>.eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.eVidStd
	b	.L761	@
.L766:
	.word	.L762
	.word	.L761
	.word	.L763
	.word	.L764
	.word	.L761
	.word	.L761
	.word	.L765
.L765:
	add	r0, r3, #217088	@, D.36922,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L761:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L762:
	add	r1, r3, #217088	@, D.36922,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L763:
	add	r2, r3, #217088	@, D.36922,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L764:
	add	ip, r3, #217088	@, D.36922,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L770:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4878	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L768:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L769:
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
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L796	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp201,
	movt	r4, #:upper16:.LANCHOR0	@ tmp201,
	ldr	r3, [r4, #0]	@ D.38042, s_pstVfmwChan
	cmp	r3, #0	@ D.38042,
	beq	.L797	@,
	ldr	r8, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r8, #1	@ <variable>.s32IsRun,
	bne	.L798	@,
	ldr	r6, [r3, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r6, #0	@ <variable>.s32StopSyntax,
	bne	.L799	@,
	str	r6, [r3, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:g_TraceBsPeriod	@ tmp163,
	movt	r1, #:upper16:g_TraceBsPeriod	@ tmp163,
	ldr	r3, [r1, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r5, r0	@ currtime,
	ldr	r0, [r4, #276]	@ last_rec_pos_time, last_rec_pos_time
	rsb	r2, r0, r5	@ tmp161, last_rec_pos_time, currtime
	mov	r0, #0	@,
	cmp	r2, r3	@ tmp161, g_TraceBsPeriod
	strhi	r5, [r4, #276]	@ currtime, last_rec_pos_time
	movls	r8, r6	@ rec_pos_print_flag, <variable>.s32StopSyntax
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.38059,
	mov	r6, r0	@ D.38059,
	beq	.L800	@,
	mov	r0, #0	@,
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L801	@,
	ldr	r7, [r4, #0]	@ temp.3430, s_pstVfmwChan
	ldrb	r6, [r7, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r6, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	beq	.L791	@,
.L793:
	add	r6, r7, #1024	@ pSegMan, temp.3430,
.L783:
	mov	r5, #1072	@ tmp187,
	mov	r3, #1056	@ tmp185,
	ldrd	r8, [r7, r5]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.3430, tmp187
	mov	r0, #29	@,
	ldrd	r2, [r3, r7]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, tmp185, temp.3430
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp189,
	strd	r8, [sp]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r6	@, pSegMan
	mov	r0, #0	@,
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	ip, [r4, #0]	@ temp.3432, s_pstVfmwChan
	mov	r0, r6	@, pSegMan
	movt	r5, #:upper16:.LANCHOR0	@ tmp189,
	add	r2, ip, #217088	@, temp.3432,
	add	r2, r2, #432	@,,
	ldr	r1, [ip, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L802	@,
.L787:
	mov	r0, #0	@ D.38040,
.L773:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L791:
	ldr	sl, [r7, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	sl, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L793	@,
	add	r6, r7, #1024	@ pSegMan, temp.3430,
	mov	r0, sl	@, <variable>.stSynExtraData.s32DSDWaitFlag
	add	r1, r6, #8	@, pSegMan,
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L783	@,
	cmp	r8, #1	@ rec_pos_print_flag,
	beq	.L803	@,
.L784:
	movw	r3, #:lower16:g_NoStreamReportPeriod	@ tmp177,
	movt	r3, #:upper16:g_NoStreamReportPeriod	@ tmp177,
	ldr	r0, [r4, #280]	@ last_rec_pos_report_time, last_rec_pos_report_time
	movw	r2, #:lower16:.LANCHOR0	@ tmp174,
	ldr	lr, [r3, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	movt	r2, #:upper16:.LANCHOR0	@ tmp174,
	rsb	ip, r0, r5	@ tmp175, last_rec_pos_report_time, currtime
	cmp	ip, lr	@ tmp175, g_NoStreamReportPeriod
	bls	.L785	@,
	ldr	r3, [r2, #4]	@ g_event_report.641, g_event_report
	cmp	r3, #0	@ g_event_report.641,
	beq	.L786	@,
	mov	r0, #0	@,
	mov	r1, #117	@,
	mov	r2, r0	@,
	blx	r3	@ g_event_report.641
.L786:
	str	r5, [r4, #280]	@ currtime, last_rec_pos_report_time
.L785:
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp183,
	mvn	r0, #3	@ D.38040,
	str	r2, [r1, #672]	@ tmp183, <variable>.s32NoStreamFlag
	b	.L773	@
.L802:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp196,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp196,
	ldr	r1, [r5, #284]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.3433,
	rsb	r0, r1, r0	@ tmp194, last_rec_pos_decparam_time, currtime.3433
	cmp	r0, ip	@ tmp194, g_TraceFramePeriod
	bls	.L787	@,
	mov	r0, #0	@,
	str	r3, [r5, #284]	@ currtime.3433, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.38040,
	b	.L773	@
.L801:
	cmp	r8, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.38040,
	bne	.L773	@
.L782:
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC127	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.38040,
	b	.L773	@
.L798:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6597	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38040,
	b	.L773	@
.L799:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6598	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC125	@,
	movt	r3, #:upper16:.LC125	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38040,
	b	.L773	@
.L800:
	cmp	r8, #1	@ rec_pos_print_flag,
	movne	r0, r6	@ D.38040, D.38059
	bne	.L773	@
.L780:
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC126	@,
	mov	r2, #0	@,
	movt	r1, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@ D.38040, D.38059
	b	.L773	@
.L796:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6595	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38040,
	b	.L773	@
.L803:
	mov	r2, sl	@, <variable>.stSynExtraData.s32DSDWaitFlag
	movw	r1, #:lower16:.LC128	@,
	mov	r0, #23	@,
	movt	r1, #:upper16:.LC128	@,
	bl	dprint_vfmw	@
	b	.L784	@
.L797:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6596	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38040,
	b	.L773	@
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1756:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp178,
	movt	r4, #:upper16:.LANCHOR0	@ tmp178,
	.pad #28
	sub	sp, sp, #28	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp180,
	movt	r6, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r2, [r4, #0]	@ D.37861, s_pstVfmwChan
	mov	r8, sp	@ tmp183,
	mvn	r3, #0	@ ret,
	mov	r5, #1	@ tmp181,
	cmp	r2, #0	@ D.37861,
	mov	r7, #0	@ prephitmp.3448,
	ldrne	r2, [r2, #12]	@ prephitmp.3448, <variable>.s32Priority
	str	r2, [r4, #288]	@ prephitmp.3448, ChanPriTab
.L827:
	cmp	r2, #0	@ prephitmp.3448,
	ldr	r2, [r4, #0]	@ D.37872, s_pstVfmwChan
	ble	.L807	@,
	cmp	r2, #0	@ D.37872,
	bne	.L831	@,
.L807:
	mov	r1, #0	@ tmp174,
	mov	r0, r3	@, ret
	str	r1, [r4, #116]	@ tmp174, s_VfmwCTrl.s32ThisChanIDPlus1
	str	r1, [r4, #288]	@ tmp174, ChanPriTab
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L831:
	str	r5, [r4, #116]	@ tmp181, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r1, [r2, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L807	@,
	str	r7, [r6, #288]	@ prephitmp.3448, ChanPriTab
	ldr	r3, [r2, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L809	@,
	ldr	r0, [r2, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	r0, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L832	@,
.L809:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	beq	.L833	@,
.L828:
	ldr	r2, [r4, #288]	@ prephitmp.3448, ChanPriTab
	b	.L827	@
.L832:
	mov	r0, r7	@, prephitmp.3448
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L834	@,
.L810:
	ldr	sl, [r4, #0]	@ temp.3468, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	ip, [r4, #0]	@ temp.3470, s_pstVfmwChan
	ldr	r2, [ip, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r2, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [ip, #892]	@ prephitmp.3448, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	ip, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r2, [ip, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	ip, [r6, #0]	@ temp.3473, s_pstVfmwChan
	strne	r7, [ip, #888]	@ prephitmp.3448, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r2, [ip, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L809	@
.L833:
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	moveq	sl, #2	@ i,
	bne	.L828	@,
.L814:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	bne	.L828	@,
	bl	DecChanSyntax	@
	add	sl, sl, #1	@ tmp187, i,
	subs	r3, r0, #0	@ ret,
	bne	.L828	@,
	add	sl, sl, #1	@ i, tmp187,
	cmp	sl, #200	@ i,
	bne	.L814	@,
	ldr	r2, [r4, #288]	@ prephitmp.3448, ChanPriTab
	b	.L827	@
.L834:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L810	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1736:
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
	beq	.L838	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L838	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L839	@,
	ldr	r1, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L839	@,
.L838:
	mvn	r0, #0	@ ret,
.L837:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L839:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L838	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L837	@,
	b	.L838	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1731:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp198,
	movt	r4, #:upper16:.LANCHOR0	@ tmp198,
	mov	r5, r0	@ ChanId, ChanId
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r4, r0, asl #2]	@ D.36883, s_pstVfmwChan
	cmp	r0, #0	@ D.36883,
	beq	.L858	@,
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #6	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L854	@
.L849:
	.word	.L845
	.word	.L854
	.word	.L846
	.word	.L847
	.word	.L854
	.word	.L854
	.word	.L848
.L848:
	add	r6, r0, #217088	@, D.36883,
	add	r0, r6, #432	@,,
	movw	r6, #:lower16:234644	@ tmp188,
	bl	AVSDEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3533, s_pstVfmwChan
	movt	r6, #:upper16:234644	@ tmp188,
.L857:
	ldrb	r0, [r2, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	movw	r4, #:lower16:.LANCHOR0	@ tmp187,
	movt	r4, #:upper16:.LANCHOR0	@ tmp187,
	cmp	r0, #1	@ <variable>.stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	beq	.L859	@,
.L853:
	movw	lr, #:lower16:217524	@ tmp196,
	movt	lr, #:upper16:217524	@ tmp196,
	mov	ip, #0	@ tmp197,
	str	ip, [r2, lr]	@ tmp197,
.L854:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L845:
	add	r6, r0, #217088	@, D.36883,
	mov	r3, r2	@, pLumaInfo
	add	r0, r6, #432	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp147,
	str	r6, [sp, #0]	@ tmp147,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3534, s_pstVfmwChan
	movw	r4, #:lower16:231076	@ tmp149,
	movt	r4, #:upper16:231076	@ tmp149,
	movw	r7, #:lower16:.LANCHOR0	@ tmp148,
	movt	r7, #:upper16:.LANCHOR0	@ tmp148,
	ldrb	r0, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L860	@,
.L850:
	movw	lr, #:lower16:217880	@ tmp157,
	movt	lr, #:upper16:217880	@ tmp157,
	mov	ip, #0	@ tmp158,
	str	ip, [r2, lr]	@ tmp158,
	b	.L854	@
.L846:
	add	r0, r0, #217088	@, D.36883,
	movw	r6, #:lower16:.LANCHOR0	@ tmp174,
	add	r0, r0, #432	@,,
	movt	r6, #:upper16:.LANCHOR0	@ tmp174,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3532, s_pstVfmwChan
	movw	r4, #:lower16:240516	@ tmp175,
	movt	r4, #:upper16:240516	@ tmp175,
	ldrb	r3, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L861	@,
.L852:
	movw	r3, #:lower16:218556	@ tmp183,
	movt	r3, #:upper16:218556	@ tmp183,
	mov	lr, #0	@ tmp184,
	str	lr, [r2, r3]	@ tmp184,
	b	.L854	@
.L847:
	add	r2, r0, #217088	@, D.36883,
	movw	r6, #:lower16:291233	@ tmp162,
	add	r0, r2, #432	@,,
	movt	r6, #:upper16:291233	@ tmp162,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3517, s_pstVfmwChan
	b	.L857	@
.L859:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, r5, asl #2]	@ tmp191, s_pstVfmwChan
	mov	r2, #0	@ tmp193,
	strb	r2, [r1, r6]	@ tmp193,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3533, s_pstVfmwChan
	b	.L853	@
.L858:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movw	r2, #4639	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
.L861:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	ip, [r6, r5, asl #2]	@ tmp178, s_pstVfmwChan
	mov	r1, #0	@ tmp180,
	strb	r1, [ip, r4]	@ tmp180, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.3532, s_pstVfmwChan
	b	.L852	@
.L860:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r7, r5, asl #2]	@ tmp152, s_pstVfmwChan
	strb	r6, [r1, r4]	@ tmp147, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r7, r5, asl #2]	@ prephitmp.3534, s_pstVfmwChan
	b	.L850	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1732:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanId, ChanId
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r2	@ pLumaInfo, pLumaInfo
	bne	.L868	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, #0]	@ D.36896, s_pstVfmwChan
	cmp	r3, #0	@ D.36896,
	beq	.L869	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L865	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC124	@,
	movw	r2, #4758	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L865:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, ChanId
	mov	r1, r6	@, ErrRatio
	mov	r2, r5	@, pLumaInfo
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L868:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC44	@,
	mov	r0, #0	@,
	movw	r2, #4756	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L869:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	bne	.L882	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r4, #0]	@ D.36677, s_pstVfmwChan
	cmp	r3, #0	@ D.36677,
	beq	.L883	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L884	@,
	cmp	r1, #0	@ pImage,
	beq	.L885	@,
	mov	r2, r6	@, ChanID
	ldr	r3, [r1, #176]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #0]	@ temp.3586, s_pstVfmwChan
	cmp	r0, #0	@ temp.3586,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4180	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L881	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L886	@,
	add	r0, r0, #217088	@, temp.3586,
	mov	r1, r5	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L872:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L886:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	mov	r0, r6	@, ChanID
	movw	r2, #4187	@,
.L881:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L872	@
.L884:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4172	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L872	@
.L882:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4170	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L872	@
.L885:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4173	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC130	@,
	movt	r3, #:upper16:.LC130	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L872	@
.L883:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4171	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L872	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC133	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC133	@,
	bl	dprint_vfmw	@
	cmp	r4, #0	@ ChanID,
	bne	.L898	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp165,
	movt	r6, #:upper16:.LANCHOR0	@ tmp165,
	ldr	r0, [r6, #0]	@ D.36648, s_pstVfmwChan
	cmp	r0, #0	@ D.36648,
	beq	.L899	@,
	ldr	r3, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L900	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, #0]	@ temp.3614, s_pstVfmwChan
	cmp	r0, #0	@ temp.3614,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4086	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L897	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L901	@,
	add	r4, r0, #217088	@, temp.3614,
	mov	r1, r5	@, pImage
	add	r0, r4, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:233604	@ tmp161,
	movt	ip, #:upper16:233604	@ tmp161,
	ldrb	r0, [r2, ip]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r0, [r5, #336]	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.optm_inf.bAvsPlus
.L889:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L900:
	mov	r0, r4	@, ChanID
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4079	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L889	@
.L901:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	mov	r0, r4	@, ChanID
	movw	r2, #4093	@,
.L897:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L889	@
.L898:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4075	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L889	@
.L899:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4076	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L889	@
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
	beq	.L907	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.36581,
	ldmfd	sp!, {r3, pc}	@
.L907:
	mov	r0, r3	@, tmp138
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3843	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36581,
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
	bne	.L919	@,
	ldr	r3, [sp, #8]	@ D.36489, stCfgInfo.eVidStd
	cmp	r3, #0	@ D.36489,
	movne	r1, r6	@ prephitmp.3655, ret
	movne	r2, r6	@ ScdLowdlyEnable, ret
	beq	.L920	@,
.L912:
	movw	r4, #:lower16:.LANCHOR0	@ tmp146,
	movt	r4, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [r4, #292]	@ eDSPState, g_DSPState
	cmp	ip, #0	@ eDSPState,
	bne	.L921	@,
	cmp	r3, #6	@ D.36489,
	movne	r2, #0	@, temp.3666
	moveq	r2, #1	@, temp.3666
	tst	r1, #1	@ prephitmp.3655,
	bne	.L922	@,
	cmp	r2, #0	@ temp.3666,
	bne	.L923	@,
.L910:
	mov	r0, r6	@, ret
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L920:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	r1, #0	@, prephitmp.3655
	moveq	r1, #1	@, prephitmp.3655
	b	.L912	@
.L923:
	add	r5, r4, r5, asl #2	@, tmp172, tmp146, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp174,
	str	r0, [r5, #292]	@ tmp174, g_DSPState
	b	.L910	@
.L922:
	add	r5, r4, r5, asl #2	@, tmp163, tmp146, ChanID,
	mov	r0, r3	@, D.36489
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp165,
	str	r3, [r5, #292]	@ tmp165, g_DSPState
	b	.L910	@
.L921:
	cmp	ip, #2	@ eDSPState,
	movne	r1, #0	@, tmp151
	andeq	r1, r1, #1	@,, tmp151, prephitmp.3655
	cmp	r1, #0	@ tmp151,
	bne	.L914	@,
	cmp	ip, #1	@ eDSPState,
	cmpeq	r3, #6	@, D.36489,
	bne	.L910	@,
.L914:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	str	ip, [sp, #0]	@ eDSPState,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L910	@
.L919:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC134	@,
	movw	r2, #3699	@,
	movt	r1, #:upper16:.LC134	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L910	@
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
	ldr	r3, [r3, r0, asl #2]	@ D.36450, s_pstVfmwChan
	cmp	r3, #0	@ D.36450,
	beq	.L929	@,
	ldr	r2, [r3, #880]	@ D.36455, <variable>.eVidStd
	cmp	r2, #4	@ D.36455,
	cmpne	r2, #14	@, D.36455,
	bne	.L930	@,
.L927:
	mvn	r0, #0	@ D.36454,
	ldmfd	sp!, {r3, pc}	@
.L930:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L927	@
.L929:
	mov	r0, r3	@, D.36450
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3659	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36454,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bne	.L938	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #0]	@ D.35881, s_pstVfmwChan
	cmp	r3, #0	@ D.35881,
	beq	.L939	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L935	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2825	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r3, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35879,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L935:
	str	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r1, [r3, #8]	@ ChanID, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r5, r0, #0	@ s32Ret,
	mvnne	r0, #0	@ D.35879,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r1, r5	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r5	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r5	@ D.35879, s32Ret
	str	r5, [r1, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L938:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2823	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35879,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L939:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2824	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	movt	r3, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35879,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
.LFB1795:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L953	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp173,
	movt	r4, #:upper16:.LANCHOR0	@ tmp173,
	ldr	r3, [r4, #0]	@ D.35812, s_pstVfmwChan
	cmp	r3, #0	@ D.35812,
	beq	.L954	@,
	ldr	r5, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r5, #1	@ <variable>.s32IsOpen,
	bne	.L955	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L956	@,
	bl	SM_Start	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ prephitmp.3754, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L948	@,
	str	r5, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	ip, [r4, #0]	@ D.35825, s_pstVfmwChan
	ldr	r0, .L957	@,
	cmp	ip, #0	@ D.35825,
	streq	ip, [r4, #296]	@ D.35825, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp162,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp166,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp162,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp166,
	strne	r1, [r4, #296]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, #0]	@ prephitmp.3754, s_pstVfmwChan
.L948:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L951	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L951:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L955:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2698	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L953:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2696	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L956:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2699	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L954:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2697	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35810,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L958:
	.align	2
.L957:
	.word	.LANCHOR0+296
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
.LFB1797:
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
	ldr	r3, [r5, r0, asl #2]	@ D.36599, s_pstVfmwChan
	cmp	r3, #0	@ D.36599,
	beq	.L974	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	mov	r6, #0	@ tmp145,
	add	r0, r4, r4, asl #1	@, tmp153, ChanID, ChanID,
	add	r3, r5, #300	@ tmp150, tmp205,
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
	movw	r1, #:lower16:217472	@ tmp178,
	movt	r1, #:upper16:217472	@ tmp178,
	strd	r8, [r2, r3]	@ tmp165, tmp163, tmp164
	movw	r2, #:lower16:217464	@ tmp182,
	ldr	ip, [r5, r4, asl #2]	@ tmp167, s_pstVfmwChan
	movt	r2, #:upper16:217464	@ tmp182,
	movw	r3, #:lower16:217468	@ tmp186,
	movt	r3, #:upper16:217468	@ tmp186,
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
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.3809, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp145, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.3809, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L965	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L966:
	mov	r0, r4	@, ChanID
	movw	r6, #:lower16:.LANCHOR0	@ tmp193,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r5, #28]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movt	r6, #:upper16:.LANCHOR0	@ tmp193,
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L975	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L976	@,
.L971:
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L977	@,
.L972:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36603,
.L963:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L975:
	ldr	ip, [r6, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	lr, #0	@ tmp195,
	str	lr, [sp, #4]	@ tmp195, data
	cmp	ip, lr	@ vfmw_save_str_file,
	addeq	r8, sp, #4	@ prephitmp.3811,,
	beq	.L969	@,
	add	r8, sp, #4	@ prephitmp.3811,,
	mov	r0, #512	@,
	mov	r1, r8	@, prephitmp.3811
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r6, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	beq	.L969	@,
.L970:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L971	@,
.L976:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L972	@,
.L977:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L972	@
.L965:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L966	@
.L969:
	mov	r1, r8	@, prephitmp.3811
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L970	@
.L974:
	mov	r0, r3	@, D.36599
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #3856	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36603,
	b	.L963	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
.LFB1796:
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
.LFB1798:
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
	mov	r3, r0	@ ret.3882,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	mov	r3, r0	@ ret.3883,
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
	ldr	r3, [r5, r0, asl #2]	@ D.36530, s_pstVfmwChan
	cmp	r3, #0	@ D.36530,
	beq	.L995	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L996	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r6, #0	@ tmp148,
	add	r0, r4, r4, asl #1	@, tmp156, ChanID, ChanID,
	add	ip, r5, #300	@ tmp153, tmp196,
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
	ldr	r3, [r5, r4, asl #2]	@ temp.3913, s_pstVfmwChan
	add	r1, r3, #217088	@, temp.3913,
	ldr	r0, [r3, #880]	@, <variable>.eVidStd
	add	r1, r1, #432	@,,
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
	beq	.L986	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L987:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L997	@,
.L988:
	ldr	lr, [r5, #28]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movw	r5, #:lower16:.LANCHOR0	@ tmp187,
	movt	r5, #:upper16:.LANCHOR0	@ tmp187,
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L989	@,
	ldr	r3, [r5, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r0, #0	@ tmp189,
	str	r0, [sp, #4]	@ tmp189, data
	cmp	r3, r0	@ vfmw_save_str_file,
	addeq	r6, sp, #4	@ prephitmp.3899,,
	beq	.L991	@,
	add	r6, sp, #4	@ prephitmp.3899,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.3899
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r5, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L991	@,
.L992:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
.L989:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L998	@,
.L993:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36534,
.L984:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L997:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L988	@
.L998:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L993	@
.L986:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L987	@
.L996:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC144	@,
	movw	r2, #3757	@,
	movt	r1, #:upper16:.LC144	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36534,
	b	.L984	@
.L991:
	mov	r1, r6	@, prephitmp.3899
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L992	@
.L995:
	mov	r0, r3	@, D.36530
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3753	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36534,
	b	.L984	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bne	.L1010	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp189,
	movt	r4, #:upper16:.LANCHOR0	@ tmp189,
	ldr	r3, [r4, #0]	@ D.35847, s_pstVfmwChan
	cmp	r3, #0	@ D.35847,
	beq	.L1011	@,
	ldr	r5, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r5, #1	@ <variable>.s32IsOpen,
	bne	.L1012	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1013	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, #0]	@ temp.3951, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, ip, #168	@ tmp158, s_pstVfmwChan,
	stmia	ip, {r0, r1, r2, r3}	@ tmp158,,,,
	ldr	ip, [r4, #0]	@ temp.3953, s_pstVfmwChan
	ldr	r2, [ip, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [ip, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [ip, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r4, #0]	@ prephitmp.3937, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1005	@,
	str	r5, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	lr, [r4, #0]	@ D.35864, s_pstVfmwChan
	ldr	r0, .L1014	@,
	cmp	lr, #0	@ D.35864,
	streq	lr, [r4, #324]	@ D.35864, PrioArray
	ldrne	r1, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp178,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp182,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp178,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp182,
	strne	r1, [r4, #324]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, #0]	@ prephitmp.3937, s_pstVfmwChan
.L1005:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1008	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L1008:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35845,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1012:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2759	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35845,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1010:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2757	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35845,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1013:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2760	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35845,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1011:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2758	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35845,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1015:
	.align	2
.L1014:
	.word	.LANCHOR0+324
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
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
	beq	.L1029	@,
.L1017:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L1030	@,
.L1018:
	ldr	r2, [r4, #44]	@ D.34985, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.34985,
	bne	.L1031	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L1032	@,
.L1020:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1033	@,
.L1021:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L1034	@,
.L1022:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L1023:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L1024	@,
.L1028:
	ldr	r0, [r4, #100]	@ prephitmp.3974, <variable>.stChanMem_pmv.PhyAddr
.L1025:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1033:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L1021	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.35003, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #68]	@ D.35003, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L1021	@
.L1030:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L1018	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L1018	@
.L1024:
	ldr	r0, [r4, #100]	@ D.35019, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.35019,
	beq	.L1025	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1028	@
.L1034:
	ldr	r0, [r4, #56]	@ D.35011, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.35011,
	beq	.L1022	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1023	@
.L1031:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1020	@,
.L1032:
	ldr	r0, [r4, #40]	@ temp.3989, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.3989,
	beq	.L1020	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1021	@
.L1029:
	ldr	r0, [r1, #24]	@ D.34971, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.34971,
	beq	.L1017	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1018	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
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
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp211,
	movt	r4, #:upper16:.LANCHOR0	@ tmp211,
	mov	r6, r0	@ ChanID, ChanID
	.pad #140
	sub	sp, sp, #140	@,,
	add	r0, r4, #328	@, tmp211,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ChanID,
	bne	.L1048	@,
	ldr	r5, [r4, #0]	@ D.35769, s_pstVfmwChan
	cmp	r5, #0	@ D.35769,
	beq	.L1049	@,
	ldr	r3, [r5, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1050	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp158,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp160,
	movt	ip, #:upper16:g_FrameRate	@ tmp158,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp160,
	mov	r1, #30	@ tmp159,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, #0]	@ tmp159, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, #0]	@ tmp159, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r6, r0, #0	@ ret,
	bne	.L1051	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	movw	r6, #:lower16:s_DnrChan	@ tmp168,
	bl	OSAL_SpinLockIRQ	@
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r6, #:upper16:s_DnrChan	@ tmp168,
	movw	r7, #:lower16:76692	@ tmp169,
	movt	r7, #:upper16:76692	@ tmp169,
	ldr	r0, [r8, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	str	r0, [r6, r7]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.s32DnrEnable
	ldr	r3, [r5, #880]	@ D.35782, <variable>.eVidStd
	cmp	r3, #4	@ D.35782,
	beq	.L1043	@,
	sub	r9, r3, #10	@ tmp173, D.35782,
	cmp	r9, #2	@ tmp173,
	bhi	.L1044	@,
	ldr	sl, [r4, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	sl, #1	@ g_VdmCharacter,
	beq	.L1043	@,
.L1045:
	mov	r0, #0	@,
	add	r6, sp, #28	@ tmp186,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #0]	@ temp.4053, s_pstVfmwChan
	add	r0, sp, #60	@,,
	add	lr, sp, #108	@,,
	add	fp, r3, #184	@, temp.4053,
	add	r5, r3, #104	@, temp.4053,
	ldr	r7, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movw	r1, #:lower16:217488	@ tmp184,
	str	fp, [sp, #16]	@, %sfp
	movt	r1, #:upper16:217488	@ tmp184,
	str	r5, [sp, #20]	@, %sfp
	add	r5, sp, #120	@,,
	str	r7, [sp, #100]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r2, r3, #152	@ tmp187, temp.4053,
	str	r0, [sp, #12]	@, %sfp
	add	r8, r3, #200	@ tmp189, temp.4053,
	ldr	r7, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r9, r3, #168	@ tmp191, temp.4053,
	str	lr, [sp, #8]	@, %sfp
	add	ip, r3, #217088	@ tmp198, temp.4053,
	str	r5, [sp, #4]	@, %sfp
	add	sl, sp, #76	@ tmp188,,
	str	r7, [sp, #92]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	fp, sp, #44	@ tmp190,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #404	@ tmp198, tmp198,
	movw	lr, #:lower16:s_pFspInst	@ tmp201,
	movt	lr, #:upper16:s_pFspInst	@ tmp201,
	mov	r5, #0	@ tmp200,
	movw	r7, #:lower16:s_SmIIS	@ tmp199,
	str	r0, [sp, #96]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	movt	r7, #:upper16:s_SmIIS	@ tmp199,
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #104]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp187,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp186,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp189,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp188,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp191,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp190,,,,
	ldr	r8, [sp, #16]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #12]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r8, [sp, #8]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	r8, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp198,,,,
	str	r5, [lr, #0]	@ tmp200, s_pFspInst
	ldr	lr, [sp, #4]	@, %sfp
	str	r5, [r7, #116]	@ tmp200, s_SmIIS.pSmInstArray
	str	r5, [r4, #0]	@ tmp200, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r5	@, tmp200
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, tmp200
	bl	VDMDRV_ResetVDH	@
	mov	r0, r5	@, tmp200
	bl	DNR_CloseChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1052	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, tmp200
	mov	r1, r6	@, tmp186
	bl	VCTRL_FreeChanResource	@
	mov	r0, r5	@ D.35767, tmp200
.L1039:
	add	sp, sp, #140	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1044:
	cmp	r3, #14	@ D.35782,
	bne	.L1045	@,
.L1043:
	ldr	r3, [r4, #44]	@ D.35789, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.35789,
	beq	.L1045	@,
	add	fp, r5, #217088	@, D.35769,
	add	r0, fp, #432	@,,
	blx	r3	@ D.35789
	b	.L1045	@
.L1050:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC137	@,
	mov	r0, r6	@, ChanID
	movw	r2, #2619	@,
.L1047:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r4, #328	@, tmp211,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.35767,
	b	.L1039	@
.L1051:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r4, #328	@, tmp211,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.35767,
	b	.L1039	@
.L1048:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movw	r2, #2599	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC2	@,
	b	.L1047	@
.L1049:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	mov	r0, r5	@, D.35769
	movw	r2, #2607	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC136	@,
	b	.L1047	@
.L1053:
	.align	2
.L1052:
	.word	.LANCHOR0+328
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
	str	r2, [r3, #292]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #508
	sub	sp, sp, #508	@,,
	add	sl, sp, #472	@ tmp599,,
	mov	r8, r0	@ eCapLevel, eCapLevel
	mov	r7, r1	@ pChanOption, pChanOption
	add	r0, sp, #232	@,,
	mov	r1, #64	@,
	mov	r6, r2	@ flag, flag
	mov	r9, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, sl	@, tmp599
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r0, r6, #1	@ tmp195, flag
	movcc	r0, #0	@ tmp195
	cmp	r8, #25	@ eCapLevel,
	movw	r4, #:lower16:.LANCHOR0	@ tmp594,
	movt	r4, #:upper16:.LANCHOR0	@ tmp594,
	moveq	r0, #0	@, tmp195,
	cmp	r0, #0	@ tmp195,
	str	r7, [r4, #336]	@ pChanOption, pOption
	bne	.L1135	@,
	ldr	r3, [r7, #4]	@ D.39394, <variable>.Purpose
	cmp	r3, #2	@ D.39394,
	bhi	.L1136	@,
	beq	.L1137	@,
	cmp	r3, #1	@ D.39394,
	beq	.L1138	@,
.L1062:
	ldr	r5, [r7, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r6	@, flag
	mov	r0, r8	@, eCapLevel
	mov	r1, r7	@, pChanOption
	cmp	r5, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r5, #0	@ tmp211,
	strne	r5, [r7, #136]	@ tmp211, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r5, sp, #456	@ tmp212,,
	mov	r2, r5	@, tmp212
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.35669,
	bne	.L1139	@,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp212,,,,
	ldr	ip, [r7, #8]	@ D.42754, <variable>.MemAllocMode
	add	r5, sp, #440	@ tmp598,,
	cmp	ip, #1	@ D.42754,
	stmia	r5, {r0, r1, r2, r3}	@ tmp598,,,,
	beq	.L1140	@,
	cmp	ip, #2	@ D.42754,
	beq	.L1141	@,
	cmp	ip, #3	@ D.42754,
	beq	.L1142	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
.L1058:
	add	sp, sp, #508	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1139:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC146	@,
	mov	r2, #2400	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1135:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1136:
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1137:
	ldr	r3, [r7, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r3, #0	@ <variable>.s32SlotWidth,
	beq	.L1061	@,
	ldr	r0, [r7, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r0, #0	@ <variable>.s32SlotHeight,
	bne	.L1062	@,
.L1061:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1138:
	ldr	r1, [r7, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r1, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L1063	@,
	ldr	r2, [r7, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r2, #31	@ <variable>.s32MaxWidth,
	ble	.L1063	@,
	ldr	ip, [r7, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	ip, #31	@ <variable>.s32MaxHeight,
	ble	.L1063	@,
	ldr	lr, [r7, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	lr, #262144	@ <variable>.s32SCDBufSize,
	blt	.L1063	@,
	ldr	r3, [r7, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	bne	.L1062	@,
	ldr	r0, [r7, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r0, #0	@ <variable>.s32MaxSliceNum,
	ble	.L1063	@,
	ldr	r1, [r7, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r1, #0	@ <variable>.s32MaxSpsNum,
	ble	.L1063	@,
	ldr	r2, [r7, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r2, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L1062	@,
.L1063:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1142:
	ldmia	r5, {r0, r1, r2, r3}	@ tmp598,,,,
	add	fp, sp, #408	@ tmp596,,
	add	r6, sp, #424	@ tmp597,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp596,,,,
	ldr	lr, [sp, #416]	@, DetailMemSize.ChanCtxDetailMem
	mov	r0, r6	@, tmp597
	mov	r1, #16	@,
	str	lr, [sp, #104]	@, %sfp
	bl	__memzero	@
	ldr	ip, [r7, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L1079	@,
	ldr	r1, [r7, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L1080	@,
.L1079:
	ldr	r2, [sp, #104]	@, %sfp
	movw	r0, #:lower16:.LC150	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC150	@,
	mov	r3, r6	@, tmp597
	mov	ip, #1	@,
	str	ip, [sp, #0]	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1143	@,
	ldr	r1, [sp, #428]	@, MemRecord.VirAddr
	ldr	r2, [sp, #436]	@, MemRecord.Length
	ldr	r0, [sp, #432]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #432]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #428]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@,
	ldr	r3, [sp, #436]	@ MemRecord.Length, MemRecord.Length
	str	r1, [sp, #264]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	str	r2, [sp, #268]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	str	r3, [sp, #272]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	str	r0, [sp, #480]	@, ChanMemFlag.SelfAllocChanMem_ctx
.L1082:
	ldmia	r5, {r0, r1, r2, r3}	@ tmp598,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp597,,,,
	ldr	lr, [sp, #424]	@, DetailMemSize.VdhDetailMem
	mov	r0, fp	@, tmp596
	mov	r1, #16	@,
	str	lr, [sp, #104]	@, %sfp
	bl	__memzero	@
	ldr	r2, [r7, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L1122	@,
	ldr	r0, [r7, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	bne	.L1084	@,
.L1122:
	mov	ip, #0	@ tmp296,
	ldr	r2, [sp, #104]	@, %sfp
	mov	r1, ip	@, tmp296
	movw	r0, #:lower16:.LC152	@,
	mov	r3, fp	@, tmp596
	movt	r0, #:upper16:.LC152	@,
	str	ip, [sp, #0]	@ tmp296,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1144	@,
	ldr	r1, [sp, #412]	@, MemRecord.VirAddr
	ldr	r0, [sp, #416]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #420]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #416]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r0, [sp, #412]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r1, #1	@ tmp303,
	ldr	r3, [sp, #420]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #232]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r0, [sp, #236]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #240]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r1, [sp, #472]	@ tmp303, ChanMemFlag.SelfAllocChanMem_vdh
.L1087:
	ldmia	r5, {r0, r1, r2, r3}	@ tmp598,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp596,,,,
	ldr	ip, [sp, #412]	@, DetailMemSize.ScdDetailMem
	mov	r0, r6	@, tmp597
	mov	r1, #16	@,
	str	ip, [sp, #108]	@, %sfp
	bl	__memzero	@
	ldr	r3, [r7, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L1124	@,
	ldr	r2, [r7, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	bne	.L1090	@,
.L1124:
	ldr	r1, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #2	@ <variable>.Purpose,
	beq	.L1091	@,
	mov	ip, #0	@ tmp315,
	ldr	r2, [sp, #108]	@, %sfp
	mov	r1, ip	@, tmp315
	movw	r0, #:lower16:.LC154	@,
	mov	r3, r6	@, tmp597
	movt	r0, #:upper16:.LC154	@,
	str	ip, [sp, #0]	@ tmp315,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1145	@,
	ldr	r1, [sp, #428]	@, MemRecord.VirAddr
	ldr	r2, [sp, #436]	@, MemRecord.Length
	ldr	r0, [sp, #432]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #432]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #428]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp323,
	ldr	r2, [sp, #436]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #248]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r1, [sp, #252]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r2, [sp, #256]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r3, [sp, #476]	@ tmp323, ChanMemFlag.SelfAllocChanMem_scd
.L1095:
	ldmia	r5, {r0, r1, r2, r3}	@ tmp598,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp597,,,,
	mov	r1, #16	@,
	mov	r0, fp	@, tmp596
	ldr	r6, [sp, #436]	@ DetailMemSize$PmvDetailMem, DetailMemSize.PmvDetailMem
	bl	__memzero	@
	ldr	r1, [r7, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L1126	@,
	ldr	r3, [r7, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	bne	.L1101	@,
.L1126:
	ldr	r2, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r2, #2	@ <variable>.Purpose,
	beq	.L1102	@,
	mov	lr, #0	@ tmp339,
	mov	r2, r6	@, DetailMemSize$PmvDetailMem
	mov	r1, lr	@, tmp339
	mov	r3, fp	@, tmp596
	movw	r0, #:lower16:.LC159	@,
	movt	r0, #:upper16:.LC159	@,
	str	lr, [sp, #0]	@ tmp339,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1146	@,
	ldr	r2, [sp, #420]	@, MemRecord.Length
	mov	r6, #1	@ tmp348,
	ldr	r0, [sp, #416]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #412]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #416]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [sp, #412]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r5, [sp, #420]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #280]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	r3, [sp, #284]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	str	r5, [sp, #288]	@ MemRecord.Length, ChanMemDetail.ChanMemPmv.Length
	str	r6, [sp, #484]	@ tmp348, ChanMemFlag.SelfAllocChanMem_pmv
.L1072:
	movw	r5, #:lower16:.LANCHOR0	@ tmp585,
	movt	r5, #:upper16:.LANCHOR0	@ tmp585,
	add	r0, r5, #328	@, tmp585,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r6, #0	@ s_pstVfmwChan,
	beq	.L1128	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC167	@,
	mov	r2, r0	@,
	movt	r1, #:upper16:.LC167	@,
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #328	@, tmp585,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1084:
	add	r3, r7, #72	@ tmp305, pChanOption,
	add	lr, sp, #328	@ tmp304,,
	add	ip, sp, #232	@ tmp306,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp305,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp304,,,,
	ldr	lr, [sp, #104]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@ tmp306,,,,
	ldr	r3, [sp, #240]	@ prephitmp.4124, ChanMemDetail.ChanMemVdh.Length
	cmp	r3, lr	@ prephitmp.4124,
	blt	.L1147	@,
	mov	r2, r3	@, prephitmp.4124
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1087	@
.L1080:
	add	r3, r7, #104	@ tmp286, pChanOption,
	add	lr, sp, #344	@ tmp285,,
	add	ip, sp, #264	@ tmp287,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp286,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp285,,,,
	ldr	lr, [sp, #104]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@ tmp287,,,,
	ldr	r2, [sp, #272]	@ D.42833, ChanMemDetail.ChanMemCtx.Length
	cmp	r2, lr	@ D.42833,
	blt	.L1148	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1082	@
.L1128:
	ldr	lr, [sp, #268]	@ D.35685, ChanMemDetail.ChanMemCtx.VirAddr
	movw	r3, #:lower16:g_FrameRate	@ tmp362,
	ldr	ip, [r5, #340]	@ g_ChanTick, g_ChanTick
	movt	r3, #:upper16:g_FrameRate	@ tmp362,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp364,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp364,
	mov	r0, lr	@, D.35685
	add	fp, ip, #1	@ tmp369, g_ChanTick,
	str	lr, [r5, #0]	@ D.35685, s_pstVfmwChan
	mov	ip, #30	@ tmp363,
	str	fp, [r5, #340]	@ tmp369, g_ChanTick
	movw	r1, #:lower16:291240	@,
	str	ip, [r2, #0]	@ tmp363, g_LastFrameRate
	movt	r1, #:upper16:291240	@,
	str	ip, [r3, #0]	@ tmp363, g_FrameRate
	bl	__memzero	@
	ldr	fp, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r7	@, pChanOption
	mov	r2, #152	@,
	add	r3, fp, #1440	@, s_pstVfmwChan,
	movw	fp, #:lower16:217508	@,
	add	r0, r3, #4	@,,
	movt	fp, #:upper16:217508	@,
	bl	memcpy	@
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:499120	@ tmp382,
	movt	ip, #:upper16:499120	@ tmp382,
	movw	r3, #:lower16:181760	@ tmp395,
	movt	r3, #:upper16:181760	@ tmp395,
	str	ip, [r0, #1388]	@ tmp382, <variable>.stSynExtraData.s32BasicCtxSize
	movw	lr, #:lower16:217512	@ tmp406,
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	lr, #:upper16:217512	@ tmp406,
	movw	ip, #:lower16:s_SmIIS	@ tmp409,
	movw	r0, #:lower16:167880	@ tmp411,
	movt	ip, #:upper16:s_SmIIS	@ tmp409,
	movt	r0, #:upper16:167880	@ tmp411,
	str	r8, [r1, #24]	@ eCapLevel, <variable>.eChanCapLevel
	movw	r1, #:lower16:s_pFspInst	@ tmp414,
	ldr	r2, [r5, #0]	@, s_pstVfmwChan
	movt	r1, #:upper16:s_pFspInst	@ tmp414,
	str	fp, [sp, #112]	@, %sfp
	movw	fp, #:lower16:s_DnrChan	@,
	movt	fp, #:upper16:s_DnrChan	@,
	str	r8, [r2, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	fp, [sp, #104]	@, %sfp
	movw	fp, #:lower16:76692	@,
	movt	fp, #:upper16:76692	@,
	str	fp, [sp, #108]	@, %sfp
	str	r6, [r2, #1404]	@ s_pstVfmwChan, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	fp, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [fp, #0]	@ s_pstVfmwChan, <variable>.s32ChanID
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	strb	r6, [r2, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	r2, [r7, #0]	@, <variable>.eAdapterType
	ldr	fp, [r5, #0]	@, s_pstVfmwChan
	str	r2, [fp, #20]	@, <variable>.eAdapterType
	mov	fp, #19	@,
	ldr	r2, [r5, #0]	@, s_pstVfmwChan
	str	fp, [r2, #880]	@, <variable>.eVidStd
	ldr	r2, [r5, #0]	@, s_pstVfmwChan
	str	fp, [r2, lr]	@, <variable>.stSynCtx.eVidStd
	ldr	r2, [r5, #0]	@ temp.4150, s_pstVfmwChan
	add	fp, r2, #1632	@ tmp410, temp.4150,
	str	fp, [ip, #116]	@ tmp410, s_SmIIS.pSmInstArray
	str	r6, [r2, r0]	@ s_pstVfmwChan, <variable>.SmInstArray.InstID
	ldr	fp, [r5, #0]	@ temp.4151, s_pstVfmwChan
	add	ip, fp, #181248	@ tmp416, temp.4151,
	add	lr, ip, #512	@ tmp416, tmp416,
	str	lr, [r1, #0]	@ tmp416, s_pFspInst
	strb	r6, [fp, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	r0, [sp, #112]	@, %sfp
	ldr	r3, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r5, #340]	@ g_ChanTick, g_ChanTick
	str	r2, [r3, r0]	@ g_ChanTick, <variable>.u32ChanTick
	ldr	ip, [sp, #104]	@, %sfp
	ldr	lr, [sp, #108]	@, %sfp
	ldr	fp, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r6, [ip, lr]	@ <variable>.s32DnrEnable, <variable>.s32DnrEnable
	str	r6, [fp, #1604]	@ <variable>.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r7, #140]	@ D.35701, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r3, #0	@ D.35701,
	bne	.L1113	@,
	ldr	r1, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [r1, #1608]	@ D.35701, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [r6, #1612]	@ D.35701, <variable>.stSynExtraData.s32DSDThrHeight
.L1114:
	mov	r3, #0	@ s32i,
	mov	ip, #-2147483648	@ tmp603,
	mov	r5, r3	@ tmp602, s32i
.L1115:
	ldr	r6, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r3, asl #4	@ tmp457, s32i,
	add	r1, r3, #13504	@ tmp470, s32i,
	add	r3, r3, #1	@ tmp604, s32i,
	add	lr, r0, r6	@ tmp458, tmp457, s_pstVfmwChan
	add	r1, r1, #23	@ tmp470, tmp470,
	add	fp, lr, #216064	@ tmp459, tmp458,
	mov	lr, r3, asl #4	@ tmp609, tmp604,
	add	r6, fp, #360	@ tmp459, tmp459,
	add	r2, r3, #13504	@ tmp619, tmp604,
	add	r2, r2, #23	@ tmp619, tmp619,
	add	r3, r3, #1	@ s32i, tmp604,
	str	r5, [r6, #0]	@ tmp602, <variable>.eFrameState
	cmp	r3, #64	@ s32i,
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp606,
	movt	r6, #:upper16:.LANCHOR0	@ tmp606,
	add	r0, r0, fp	@ tmp465, tmp457, s_pstVfmwChan
	add	fp, r0, #216064	@ tmp466, tmp465,
	add	r0, fp, #360	@ tmp466, tmp466,
	str	ip, [r0, #4]	@ tmp603, <variable>.s32FrameAddr
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [fp, r1, asl #4]	@ tmp602, <variable>.s32FrameSize
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, r0, r1, asl #4	@, tmp479, s_pstVfmwChan, tmp470,
	str	r5, [fp, #4]	@ tmp602, <variable>.s32UsingCount
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, lr, r0	@ tmp610, tmp609, s_pstVfmwChan
	add	fp, r1, #216064	@ tmp611, tmp610,
	add	r0, fp, #360	@ tmp611, tmp611,
	str	r5, [r0, #0]	@ tmp602, <variable>.eFrameState
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, lr, r1	@ tmp614, tmp609, s_pstVfmwChan
	add	r0, fp, #216064	@ tmp615, tmp614,
	add	r1, r0, #360	@ tmp615, tmp615,
	str	ip, [r1, #4]	@ tmp603, <variable>.s32FrameAddr
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [fp, r2, asl #4]	@ tmp602, <variable>.s32FrameSize
	ldr	lr, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r0, lr, r2, asl #4	@, tmp622, s_pstVfmwChan, tmp619,
	str	r5, [r0, #4]	@ tmp602, <variable>.s32UsingCount
	bne	.L1115	@,
	ldr	r2, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #16	@,
	add	r3, r2, #217088	@, s_pstVfmwChan,
	add	r0, r3, #360	@,,
	bl	__memzero	@
	ldr	ip, [r6, #0]	@ temp.4165, s_pstVfmwChan
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	ldr	lr, [ip, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r2, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r3, [ip, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	str	lr, [sp, #0]	@ <variable>.stSynExtraData.s32DSDThrHeight,
	ldr	fp, [ip, #1588]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	str	fp, [sp, #4]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	bl	dprint_vfmw	@
	mov	r0, r5	@, tmp602
	bl	VCTRL_ResetChan	@
	add	ip, sp, #232	@ tmp493,,
	add	r0, sp, #64	@,,
	str	r0, [sp, #104]	@, %sfp
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp624,,,,
	mov	lr, sp	@ tmp492,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp492,,,,
	mov	fp, lr	@ tmp626, tmp492
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp625,,,,
	mov	lr, ip	@ tmp627, tmp625
	stmia	fp!, {r0, r1, r2, r3}	@ tmp626,,,,
	mov	ip, fp	@ tmp628, tmp626
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp627,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp628,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp627,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp628,,,,
	ldr	fp, [sp, #104]	@, %sfp
	ldmia	sl, {r0, r1, r2, r3}	@ tmp599,,,,
	stmia	fp, {r0, r1, r2, r3}	@,,,,
	mov	r1, r8	@, eCapLevel
	mov	r2, r9	@, OneChanMemFlag
	mov	r0, r5	@, tmp602
	mov	r3, r7	@, pChanOption
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L1116	@,
	ldr	r1, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r1, #140]	@ tmp602, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1149	@,
	ldr	r3, [r6, #0]	@ temp.4167, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1118	@,
	ldr	lr, [r3, #236]	@ D.35726, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.35726
	str	lr, [sp, #488]	@ D.35726, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [sp, #492]	@, DnrMem.VirAddr
	mov	r0, r5	@, tmp602
	ldr	ip, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #496]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1119	@,
	mov	r0, r5	@, tmp602
	ldr	r3, [r7, #16]	@, <variable>.s32MaxHeight
	add	r1, sp, #488	@,,
	ldr	r2, [r7, #12]	@, <variable>.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1150	@,
.L1119:
	mov	r0, #0	@,
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1151	@,
.L1118:
	mov	r0, #0	@,
	bl	SM_ClearInst	@
	ldr	r2, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:293288	@,
	movt	ip, #:upper16:293288	@,
	mov	r0, #0	@,
	ldr	r3, [r2, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r1, r3, ip	@, <variable>.stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp518,
	mov	r0, #0	@,
	str	r2, [r1, #4]	@ tmp518, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1158	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ ChanID,
	b	.L1058	@
.L1113:
	rsb	r1, r3, r3, asl #3	@, tmp441, D.35701, D.35701,
	movw	lr, #:lower16:CapItem	@ tmp438,
	movt	lr, #:upper16:CapItem	@ tmp438,
	ldr	r6, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	ip, [lr, r1, asl #2]	@ tmp444, CapItem
	str	ip, [r6, #1608]	@ tmp444, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	fp, [r7, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r0, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	rsb	r2, fp, fp, asl #3	@, tmp451, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r3, r2, #1	@ tmp452, tmp451,
	ldr	r5, [lr, r3, asl #2]	@ tmp453, CapItem
	str	r5, [r0, #1612]	@ tmp453, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L1114	@
.L1150:
	movw	r1, #:lower16:.LC165	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC165	@,
	bl	dprint_vfmw	@
.L1116:
	mov	r0, #0	@,
	add	r6, sp, #204	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r1, #:lower16:217488	@ tmp532,
	movt	r1, #:upper16:217488	@ tmp532,
	add	r0, r3, #104	@, s_pstVfmwChan,
	add	r2, r3, #152	@ tmp538, s_pstVfmwChan,
	ldr	fp, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r7, r3, #200	@ tmp543, s_pstVfmwChan,
	str	r0, [sp, #104]	@, %sfp
	add	r8, r3, #168	@ tmp548, s_pstVfmwChan,
	add	r9, r3, #184	@ tmp553, s_pstVfmwChan,
	add	ip, r3, #217088	@ tmp564, s_pstVfmwChan,
	str	fp, [sp, #196]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r5, sp, #124	@ tmp536,,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	lr, sp, #172	@ tmp541,,
	str	r6, [sp, #92]	@, %sfp
	add	r6, sp, #216	@,,
	str	r6, [sp, #88]	@, %sfp
	add	sl, sp, #140	@ tmp546,,
	str	r0, [sp, #188]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	fp, sp, #156	@ tmp551,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #404	@ tmp564, tmp564,
	mov	r6, #0	@ tmp566,
	str	r0, [sp, #192]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #200]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp538,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp536,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp543,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp541,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp548,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp546,,,,
	ldr	lr, [sp, #104]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp553,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp551,,,,
	ldr	fp, [sp, #92]	@, %sfp
	ldmia	lr, {r0, r1, r2}	@,,,
	stmia	fp, {r0, r1, r2}	@,,,
	ldr	fp, [sp, #88]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp564,,,,
	str	r6, [r4, #0]	@ tmp566, s_pstVfmwChan
	stmia	fp, {r0, r1, r2, r3}	@,,,,
	mov	r0, r6	@, tmp566
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1158	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, tmp566
	mov	r1, r5	@, tmp536
	bl	VCTRL_FreeChanResource	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1141:
	ldr	r5, [sp, #448]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	add	fp, sp, #408	@ tmp240,,
	ldr	ip, [sp, #440]	@, DetailMemSize.VdhDetailMem
	mov	r1, #16	@,
	ldr	r2, [sp, #444]	@, DetailMemSize.ScdDetailMem
	mov	r0, fp	@, tmp240
	str	ip, [sp, #108]	@, %sfp
	str	r2, [sp, #104]	@, %sfp
	bl	__memzero	@
	mov	r1, r6	@, D.35669
	mov	r2, r5	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC150	@,
	mov	r3, fp	@, tmp240
	movt	r0, #:upper16:.LC150	@,
	mov	r5, #1	@ tmp243,
	str	r5, [sp, #0]	@ tmp243,
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.42817,
	bne	.L1152	@,
	ldr	r1, [sp, #412]	@, MemRecord.VirAddr
	ldr	r2, [sp, #420]	@, MemRecord.Length
	ldr	r0, [sp, #416]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #416]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r6	@, D.42817
	ldr	r2, [sp, #108]	@, %sfp
	movw	r0, #:lower16:.LC152	@,
	mov	r3, fp	@, tmp240
	str	ip, [sp, #264]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	movt	r0, #:upper16:.LC152	@,
	ldr	ip, [sp, #412]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r6, [sp, #0]	@ D.42817,
	str	r5, [sp, #480]	@ tmp243, ChanMemFlag.SelfAllocChanMem_ctx
	str	ip, [sp, #268]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	ip, [sp, #420]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #272]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r6, r0, #0	@ D.42810,
	bne	.L1153	@,
	ldr	r1, [sp, #412]	@, MemRecord.VirAddr
	ldr	r2, [sp, #420]	@, MemRecord.Length
	ldr	r0, [sp, #416]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #416]	@ temp.4195, MemRecord.PhyAddr
	ldr	r3, [sp, #412]	@ temp.4196, MemRecord.VirAddr
	cmp	r0, #2	@ <variable>.Purpose,
	ldr	r1, [sp, #420]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #232]	@ temp.4195, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #236]	@ temp.4196, ChanMemDetail.ChanMemVdh.VirAddr
	str	r1, [sp, #240]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r5, [sp, #472]	@ tmp243, ChanMemFlag.SelfAllocChanMem_vdh
	beq	.L1076	@,
	mov	r1, r6	@, D.42810
	ldr	r2, [sp, #104]	@, %sfp
	mov	r3, fp	@, tmp240
	movw	r0, #:lower16:.LC154	@,
	movt	r0, #:upper16:.LC154	@,
	str	r6, [sp, #0]	@ D.42810,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1154	@,
	ldr	r2, [sp, #420]	@, MemRecord.Length
	ldr	r0, [sp, #416]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #412]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #416]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r6, [sp, #412]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #420]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #248]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r6, [sp, #252]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r3, [sp, #256]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r5, [sp, #476]	@ tmp243, ChanMemFlag.SelfAllocChanMem_scd
	b	.L1072	@
.L1140:
	add	lr, r7, #72	@ tmp217, pChanOption,
	add	r0, sp, #232	@,,
	str	r0, [sp, #84]	@, %sfp
	add	r5, sp, #248	@,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp217,,,,
	add	r6, r7, #104	@, pChanOption,
	str	r5, [sp, #100]	@, %sfp
	add	ip, sp, #392	@ tmp216,,
	str	r6, [sp, #104]	@, %sfp
	add	fp, r7, #88	@ tmp221, pChanOption,
	ldr	r5, [sp, #448]	@, DetailMemSize.ChanCtxDetailMem
	add	lr, sp, #376	@ tmp220,,
	ldr	r6, [sp, #444]	@, DetailMemSize.ScdDetailMem
	str	r5, [sp, #116]	@, %sfp
	add	r5, sp, #360	@ tmp224,,
	str	r6, [sp, #112]	@, %sfp
	add	r6, sp, #264	@ tmp226,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp216,,,,
	ldr	r3, [sp, #440]	@, DetailMemSize.VdhDetailMem
	str	r3, [sp, #108]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp216,,,,
	ldr	ip, [sp, #84]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	ldmia	fp, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp220,,,,
	ldr	fp, [sp, #100]	@, %sfp
	ldr	lr, [sp, #104]	@, %sfp
	stmia	fp, {r0, r1, r2, r3}	@,,,,
	ldmia	lr, {r0, r1, r2, r3}	@,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp224,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp226,,,,
	ldr	ip, [sp, #268]	@ ChanMemDetail.ChanMemCtx.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	cmp	ip, #0	@ ChanMemDetail.ChanMemCtx.VirAddr,
	beq	.L1066	@,
	ldr	r2, [sp, #272]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	ldr	r1, [sp, #116]	@, %sfp
	cmp	r1, r2	@, ChanMemDetail.ChanMemCtx.Length
	bgt	.L1066	@,
	ldr	ip, [sp, #252]	@ ChanMemDetail.ChanMemScd.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	cmp	ip, #0	@ ChanMemDetail.ChanMemScd.VirAddr,
	beq	.L1068	@,
	ldr	r3, [sp, #256]	@ ChanMemDetail.ChanMemScd.Length, ChanMemDetail.ChanMemScd.Length
	ldr	lr, [sp, #112]	@, %sfp
	cmp	lr, r3	@, ChanMemDetail.ChanMemScd.Length
	ble	.L1069	@,
.L1068:
	ldr	r0, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	beq	.L1155	@,
.L1069:
	ldr	r1, [sp, #236]	@ D.42771, ChanMemDetail.ChanMemVdh.VirAddr
	cmp	r1, #0	@ D.42771,
	beq	.L1070	@,
	ldr	r2, [sp, #240]	@ D.42770, ChanMemDetail.ChanMemVdh.Length
	ldr	r0, [sp, #108]	@, %sfp
	cmp	r0, r2	@, D.42770
	bgt	.L1070	@,
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r6, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r6, #2	@ <variable>.Purpose,
	beq	.L1072	@,
	add	r0, sp, #248
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	b	.L1072	@
.L1143:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC156	@,
	movw	r2, #1930	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1149:
	movw	r1, #:lower16:.LC164	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC164	@,
	bl	dprint_vfmw	@
	b	.L1116	@
.L1151:
	movw	r1, #:lower16:.LC166	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC166	@,
	bl	dprint_vfmw	@
	b	.L1116	@
.L1148:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC157	@,
	movw	r2, #1946	@,
	movt	r1, #:upper16:.LC157	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1076:
	str	r2, [sp, #248]	@ temp.4195, ChanMemDetail.ChanMemScd.PhyAddr
	str	r3, [sp, #252]	@ temp.4196, ChanMemDetail.ChanMemScd.VirAddr
	str	r6, [sp, #256]	@ D.42810, ChanMemDetail.ChanMemScd.Length
	b	.L1072	@
.L1146:
	ldr	r0, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1104	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1104:
	ldr	r1, [sp, #472]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1105	@,
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #232
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1105:
	ldr	ip, [sp, #476]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	ip, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1106	@,
	ldr	r0, [sp, #248]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #252]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #248
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1106:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC160	@,
	movw	r2, #2136	@,
	movt	r1, #:upper16:.LC160	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1102:
	ldr	r0, [sp, #232]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r1, #0	@ tmp351,
	ldr	lr, [sp, #236]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r1, [sp, #288]	@ tmp351, ChanMemDetail.ChanMemPmv.Length
	str	r0, [sp, #280]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	lr, [sp, #284]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	b	.L1072	@
.L1090:
	ldr	ip, [r7, #4]	@, <variable>.Purpose
	add	r3, r7, #88	@ tmp328, pChanOption,
	add	r2, sp, #248	@,,
	str	r2, [sp, #80]	@, %sfp
	add	lr, sp, #312	@ tmp327,,
	cmp	ip, #2	@,
	str	ip, [sp, #104]	@, %sfp
	ldmia	r3, {r0, r1, r2, r3}	@ tmp328,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp327,,,,
	ldr	ip, [sp, #80]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	beq	.L1095	@,
	ldr	r1, [sp, #252]	@ D.42890, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r1, #0	@ D.42890,
	beq	.L1096	@,
	ldr	r2, [sp, #256]	@ prephitmp.4237, ChanMemDetail.ChanMemScd.Length
	ldr	r0, [sp, #108]	@, %sfp
	cmp	r2, r0	@ prephitmp.4237,
	bge	.L1097	@,
.L1096:
	ldr	lr, [sp, #104]	@, %sfp
	cmp	lr, #1	@,
	ldrne	r2, [sp, #256]	@ prephitmp.4237, ChanMemDetail.ChanMemScd.Length
	beq	.L1156	@,
.L1097:
	ldr	r0, [sp, #248]	@, ChanMemDetail.ChanMemScd.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1095	@
.L1156:
	ldr	r1, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1099	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1099:
	ldr	ip, [sp, #472]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	ip, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1100	@,
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #232
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1100:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #2084	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1153:
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r5	@, tmp243
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1876	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1154:
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	add	r0, sp, #232
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r5	@, tmp243
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #1896	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1152:
	mov	r0, r5	@, tmp243
	movw	r1, #:lower16:.LC151	@,
	movw	r2, #1860	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1066:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC147	@,
	movw	r2, #1812	@,
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1155:
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #1819	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1147:
	ldr	r5, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r5, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1089	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r3, [sp, #240]	@ prephitmp.4124, ChanMemDetail.ChanMemVdh.Length
.L1089:
	ldr	r5, [sp, #104]	@, %sfp
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC158	@,
	movw	r2, #2002	@,
	movt	r1, #:upper16:.LC158	@,
	str	r5, [sp, #0]	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1070:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC149	@,
	movw	r2, #1827	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1145:
	ldr	r0, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1093	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1093:
	ldr	lr, [sp, #472]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	lr, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1094	@,
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #232
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1094:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #2045	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1091:
	ldr	lr, [sp, #232]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp326,
	ldr	r0, [sp, #236]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #256]	@ tmp326, ChanMemDetail.ChanMemScd.Length
	str	lr, [sp, #248]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r0, [sp, #252]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	b	.L1095	@
.L1144:
	ldr	r2, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r2, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1086	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1086:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1979	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1101:
	add	r3, r7, #120	@ tmp353, pChanOption,
	ldr	r5, [r7, #4]	@ temp.4263, <variable>.Purpose
	add	lr, sp, #296	@ tmp352,,
	add	ip, sp, #280	@ tmp354,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp353,,,,
	cmp	r5, #2	@ temp.4263,
	stmia	lr, {r0, r1, r2, r3}	@ tmp352,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp354,,,,
	beq	.L1072	@,
	ldr	r1, [sp, #284]	@ D.42928, ChanMemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.42928,
	beq	.L1107	@,
	ldr	r2, [sp, #288]	@ prephitmp.4264, ChanMemDetail.ChanMemPmv.Length
	cmp	r6, r2	@ DetailMemSize$PmvDetailMem, prephitmp.4264
	ble	.L1108	@,
.L1107:
	cmp	r5, #1	@ temp.4263,
	ldrne	r2, [sp, #288]	@ prephitmp.4264, ChanMemDetail.ChanMemPmv.Length
	beq	.L1157	@,
.L1108:
	ldr	r0, [sp, #280]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1072	@
.L1157:
	ldr	r2, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r2, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1110	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1110:
	ldr	r0, [sp, #472]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1111	@,
	ldr	r0, [sp, #232]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #236]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #232
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1111:
	ldr	r1, [sp, #476]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1112	@,
	ldr	r0, [sp, #248]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #252]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #248
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1112:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC161	@,
	movw	r2, #2181	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ChanID,
	b	.L1058	@
.L1159:
	.align	2
.L1158:
	.word	.LANCHOR0+328
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
	bhi	.L1173	@,
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
	sub	r0, r4, #18	@ D.39402, eCapLevel,
	cmp	r0, #7	@ D.39402,
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
	addls	r0, lr, r0, asl #2	@, tmp170, tmp167, D.39402,
	ldr	ip, [r3, ip, asl #2]	@ tmp163, CapItem
	ldr	r1, [r3, r1, asl #2]	@ tmp157, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #392]	@ MinDispFspNum, CSWTCH.841
	rsb	r0, r4, r2	@ tmp176, eCapLevel, tmp231
	str	ip, [sp, #24]	@ tmp163, stChanOption.s32MaxHeight
	add	ip, r3, r0, asl #2	@, tmp178, tmp233, tmp176,
	rsb	r0, r4, r2	@ tmp189, eCapLevel, tmp231
	str	r1, [sp, #20]	@ tmp157, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp164,
	str	r1, [sp, #28]	@ tmp164, stChanOption.s32MaxSliceNum
	mov	r2, #1	@ tmp182,
	ldr	r1, [ip, #12]	@ D.35084, CapItem
	add	ip, r3, r0, asl #2	@, tmp191, tmp233, tmp189,
	str	lr, [sp, #68]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.35084
	ldr	r3, [ip, #24]	@ tmp193, CapItem
	rsblt	r1, lr, r1	@ tmp181, MinDispFspNum, D.35084
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
	bne	.L1174	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1169	@,
	ldr	sl, [r8, #8]	@ D.35098, <variable>.Length
	cmp	sl, #0	@ D.35098,
	beq	.L1169	@,
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L1170	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L1170	@,
	ldr	r0, [sp, #204]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #192]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r2, r0	@ tmp203, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r3	@ D.35098, tmp203
	blt	.L1170	@,
	ldr	r8, [sp, #196]	@ D.35111, ScdChanMemSize
	add	r9, sp, #96	@ tmp215,,
	str	lr, [sp, #160]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	add	fp, sp, #80	@ tmp217,,
	str	ip, [sp, #164]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, lr, r8	@ tmp210, <variable>.PhyAddr, D.35111
	str	r8, [sp, #168]	@ D.35111, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp212, <variable>.VirAddr, D.35111
	ldmia	r7, {r0, r1, r2, r3}	@ tmp232,,,,
	str	lr, [sp, #176]	@ tmp210, vdh_MemRecord.PhyAddr
	str	ip, [sp, #180]	@ tmp212, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp214, D.35111, D.35098
	str	sl, [sp, #184]	@ tmp214, vdh_MemRecord.Length
	mov	lr, #3	@ tmp206,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #16]	@ tmp206, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp215,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp235,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp217,,,,
	b	.L1171	@
.L1169:
	mov	ip, #0	@ OneChanMemFlag,
.L1171:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp234
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.35065,
.L1162:
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1173:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC168	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC168	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35065,
	b	.L1162	@
.L1170:
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
	mvn	r0, #0	@ D.35065,
	b	.L1162	@
.L1174:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35065,
	b	.L1162	@
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
	ble	.L1191	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp168
	moveq	sl, #1	@, tmp168
	beq	.L1192	@,
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
	subs	r6, r0, #0	@ D.34930,
	bne	.L1179	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r7	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r8, r0, #0	@ Ret,
	bne	.L1193	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #344	@, tmp153,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r4, #345]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.34940, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.34940,
	movge	r0, #16	@ D.34940,
	str	r0, [r5, #820]	@ D.34940, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.34940,
	ble	.L1194	@,
	ldr	r2, [r4, #3680]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #752	@, pstChan,
	mov	r1, #64	@,
	str	r2, [r5, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r6, [r5, #820]	@ D.34939, <variable>.s32UsrdecFrameNum
	cmp	r6, #0	@ D.34939,
	ble	.L1182	@,
	ldr	ip, [r4, #364]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, r6	@ i, D.34939
	sub	lr, r6, #1	@ tmp203, D.34939,
	and	r0, lr, r2	@ tmp205, tmp203,
	add	r1, r5, #4	@ ivtmp.4352, pstChan,
	str	ip, [r5, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, r4, #396	@ ivtmp.4349, tmp153,
	bge	.L1182	@,
	cmp	r0, #0	@ tmp205,
	beq	.L1183	@,
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r6	@ i, D.34939
	add	r3, r4, #448	@ ivtmp.4349, tmp153,
	str	r0, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.4352, ivtmp.4352,
	bge	.L1182	@,
.L1183:
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp208, ivtmp.4352,
	cmp	r2, r6	@ i, D.34939
	str	lr, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r0, #4	@ ivtmp.4352, tmp208,
	ldr	ip, [r3, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #104	@ ivtmp.4349, ivtmp.4349,
	str	ip, [r0, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1183	@,
.L1182:
	mov	r0, #0	@ D.34918,
.L1177:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1192:
	mov	r0, r1	@, tmp160
	movw	r1, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC174	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34918,
	b	.L1177	@
.L1179:
	mov	r0, sl	@, tmp168
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34918,
	b	.L1177	@
.L1193:
	mov	r0, r6	@, D.34930
	movw	r1, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC175	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34918,
	b	.L1177	@
.L1194:
	mov	r0, r8	@, Ret
	movw	r1, #:lower16:.LC176	@,
	ldr	r2, .L1195	@,
	movt	r1, #:upper16:.LC176	@,
	movw	r3, #1403	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34918,
	b	.L1177	@
.L1191:
	mov	r2, r6	@, MaxWidth
	mov	r3, r8	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34918,
	b	.L1177	@
.L1196:
	.align	2
.L1195:
	.word	.LANCHOR1+424
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1713:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r8, r0, #0	@ ChanID, ChanID
	mov	r3, #0	@ tmp162,
	.pad #180
	sub	sp, sp, #180	@,,
	mov	r5, r1	@ pstCfg, pstCfg
	str	r3, [r1, #44]	@ tmp162, <variable>.s32VcmpEn
	bne	.L1225	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp339,
	movt	r4, #:upper16:.LANCHOR0	@ tmp339,
	ldr	r3, [r4, #0]	@ D.36347, s_pstVfmwChan
	cmp	r3, #0	@ D.36347,
	beq	.L1226	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1227	@,
	bl	VCTRL_CheckChanWH	@
	subs	r7, r0, #0	@ D.36353,
	bne	.L1228	@,
	ldr	r3, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ble	.L1229	@,
.L1203:
	mvn	r0, #0	@ D.36345,
.L1199:
	add	sp, sp, #180	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1229:
	mov	r1, r5	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r8, r0, #0	@ D.36363,
	beq	.L1230	@,
	ldr	r8, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	sl, sp, #16	@ tmp187,,
	add	r0, r8, #32	@, s_pstVfmwChan,
	add	r8, r5, #4	@ tmp340, pstCfg,
	bl	memcpy	@
	ldr	ip, [r5, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	fp, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #120	@,
	mov	r0, sl	@, tmp187
	add	r9, sp, #172	@ tmp203,,
	str	ip, [fp, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	fp, [r4, #0]	@ temp.4398, s_pstVfmwChan
	ldr	r0, [fp, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r0, [sp, #28]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [fp, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r5, #68]	@, <variable>.s32LowdBufEnable
	ldr	r2, [r5, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	add	lr, sp, #40	@ tmp200,,
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:269729792	@ tmp197,
	ldr	fp, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movt	r3, #:upper16:269729792	@ tmp197,
	str	r1, [sp, #12]	@, %sfp
	str	r0, [sp, #16]	@, ScdInstCfg.pBufVirAddr
	ldmia	r8, {r0, r1}	@ tmp340,,
	ldr	ip, [ip, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	r2, [sp, #20]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	ldr	r2, [sp, #12]	@, %sfp
	stmia	lr, {r0, r1}	@ tmp200,,
	mov	r1, sl	@, tmp187
	mov	r0, r7	@, D.36353
	str	ip, [sp, #32]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r3, [sp, #36]	@ tmp197, ScdInstCfg.RegPhyBaseAddr
	str	r2, [sp, #60]	@, ScdInstCfg.ScdLowBufEnable
	str	fp, [sp, #24]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	r7, [sp, #56]	@ D.36353, ScdInstCfg.ScdLowdlyEnable
	bl	SM_Config	@
	mov	r0, r9	@, tmp203
	mov	r1, r6	@, <variable>.s32IsOpen
	bl	__memzero	@
	ldr	r0, [r5, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r0, #0	@ <variable>.s32LowdBufEnable,
	bne	.L1231	@,
.L1205:
	ldr	r1, [r4, #0]	@ temp.4405, s_pstVfmwChan
	mov	ip, #0	@ tmp244,
	movw	r2, #:lower16:217512	@ tmp263,
	movt	r2, #:upper16:217512	@ tmp263,
	movw	r6, #:lower16:.LANCHOR0	@ tmp208,
	movt	r6, #:upper16:.LANCHOR0	@ tmp208,
	ldr	r0, [r1, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r0, [r1, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r4, #0]	@ temp.4406, s_pstVfmwChan
	ldr	lr, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	lr, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r1, [r4, #0]	@ temp.4407, s_pstVfmwChan
	ldr	r0, [r1, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r0, [r1, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r4, #0]	@ temp.4408, s_pstVfmwChan
	ldr	lr, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	lr, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r1, [r4, #0]	@ temp.4409, s_pstVfmwChan
	ldr	r0, [r1, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r0, [r1, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r4, #0]	@ temp.4410, s_pstVfmwChan
	ldr	lr, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	lr, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r1, [r4, #0]	@ temp.4411, s_pstVfmwChan
	ldr	r0, [r1, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r0, [r1, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r4, #0]	@ temp.4412, s_pstVfmwChan
	ldr	lr, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	lr, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r0, [r1, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	lr, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r0, [r1, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	lr, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r0, [r1, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r5, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	lr, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #1616]	@ tmp244, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	movne	lr, #0	@, tmp248
	moveq	lr, #1	@, tmp248
	str	lr, [r3, #1416]	@ tmp248, <variable>.stSynExtraData.s32SupportAllP
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r5, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r0, [r1, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldmia	r8, {r0, r1}	@ tmp340,,
	add	lr, r3, #1264	@ tmp253, s_pstVfmwChan,
	add	r3, lr, #12	@ tmp253, tmp253,
	stmia	r3, {r0, r1}	@ tmp253,,
	ldr	r1, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	str	ip, [r1, #908]	@ tmp244, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r4, #0]	@ prephitmp.4379, s_pstVfmwChan
	ldr	r3, [r0, r2]	@ prephitmp.4381, <variable>.stSynCtx.eVidStd
	ldr	lr, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, lr	@ prephitmp.4381, <variable>.eVidStd
	beq	.L1206	@,
	mov	r0, ip	@, tmp244
	bl	VCTRL_ResetChan	@
	ldr	ip, [r5, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r6, #0]	@ prephitmp.4379, s_pstVfmwChan
	cmp	ip, #18	@ <variable>.eVidStd,
	bne	.L1223	@,
	ldr	r2, [r0, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	lr, [r0, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	r2, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, #0	@,
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1210	@,
	ldr	r0, [r4, #0]	@ prephitmp.4379, s_pstVfmwChan
.L1223:
	ldr	r3, [r0, #880]	@ prephitmp.4381, <variable>.eVidStd
.L1206:
	movw	ip, #:lower16:217512	@ tmp272,
	movt	ip, #:upper16:217512	@ tmp272,
	movw	r6, #:lower16:.LANCHOR0	@ tmp273,
	movt	r6, #:upper16:.LANCHOR0	@ tmp273,
	str	r3, [r0, ip]	@ prephitmp.4381, <variable>.stSynCtx.eVidStd
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r1, [r0, #248]	@ temp.4427, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.4427
	str	r1, [sp, #156]	@ temp.4427, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #156	@,,
	str	r0, [sp, #160]	@, stMem.VirAddr
	mov	r0, #0	@,
	ldr	r7, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r7, [sp, #164]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r7, r0, #0	@ D.36425,
	bne	.L1203	@,
	add	r8, sp, #140	@ tmp338,,
	mov	r1, #16	@,
	mov	r0, r8	@, tmp338
	bl	__memzero	@
	ldr	r3, [r5, #0]	@ D.39435, <variable>.eVidStd
	sub	r2, r3, #10	@ tmp280, D.39435,
	cmp	r2, #2	@ tmp280,
	strhib	r7, [sp, #140]	@ D.36425, DnrChanCfgArgs.s32MirrorEn
	bhi	.L1213	@,
	ldr	lr, [r6, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1224	@,
	cmp	r3, #12	@ D.39435,
	beq	.L1224	@,
	ldr	r2, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	ip, r2, #1	@ tmp292, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, ip, #1	@ tmp295, tmp292,
	strb	r0, [sp, #140]	@ tmp295, DnrChanCfgArgs.s32MirrorEn
.L1213:
	ldrsb	lr, [sp, #140]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	r3, #1	@ tmp308,
	ldr	ip, [r5, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	lr, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #141]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp302,
	streqb	ip, [sp, #141]	@ tmp302, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r4, #0]	@ D.39418, s_pstVfmwChan
	ldr	r0, [r5, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r5, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r5, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #148]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #142]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #144]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r3, [sp, #152]	@ tmp308, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1216	@,
	mov	r1, r8	@, tmp338
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1203	@,
.L1217:
	ldr	ip, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:181760	@ tmp329,
	movw	r2, #:lower16:s_SmIIS	@ tmp332,
	movt	r3, #:upper16:181760	@ tmp329,
	movt	r2, #:upper16:s_SmIIS	@ tmp332,
	mov	lr, #0	@ tmp330,
	strb	lr, [ip, r3]	@ tmp330, <variable>.FspInst.s32InstID
	movw	r1, #:lower16:166248	@ tmp334,
	ldr	r0, [r2, #116]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	movt	r1, #:upper16:166248	@ tmp334,
	movw	r2, #:lower16:.LANCHOR0	@ tmp327,
	movt	r2, #:upper16:.LANCHOR0	@ tmp327,
	str	lr, [r0, r1]	@ tmp330, <variable>.InstID
	ldr	r3, [r4, #0]	@ D.36439, s_pstVfmwChan
	cmp	r3, lr	@ D.36439,
	beq	.L1232	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:g_ChanCtx	@ tmp321,
	movt	r1, #:upper16:g_ChanCtx	@ tmp321,
	str	ip, [r2, #3684]	@ <variable>.s32Priority, PrioArray
	ldr	r3, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r3, [r1, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L1218:
	ldr	r0, .L1233	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.36345,
	b	.L1199	@
.L1228:
	mov	r0, r8	@, ChanID
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36345,
	b	.L1199	@
.L1230:
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	mov	r0, r8	@ D.36345, D.36363
	b	.L1199	@
.L1227:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3475	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC178	@,
	movt	r3, #:upper16:.LC178	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36345,
	b	.L1199	@
.L1231:
	mov	r0, r7	@, D.36353
	mov	r1, r9	@, tmp203
	strb	r6, [sp, #172]	@ <variable>.s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1205	@
.L1210:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC181	@,
	movt	r1, #:upper16:.LC181	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36345,
	b	.L1199	@
.L1225:
	mov	r0, r3	@, tmp162
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3473	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36345,
	b	.L1199	@
.L1226:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3474	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36345,
	b	.L1199	@
.L1224:
	ldr	r1, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r1, #1	@ tmp290, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #140]	@ tmp290, DnrChanCfgArgs.s32MirrorEn
	b	.L1213	@
.L1216:
	ldmia	r8, {r0, r1, r2, r3}	@ tmp338,,,,
	add	lr, ip, #217088	@ tmp313, D.39418,
	add	ip, lr, #360	@ tmp313, tmp313,
	stmia	ip, {r0, r1, r2, r3}	@ tmp313,,,,
	b	.L1217	@
.L1232:
	movw	r0, #:lower16:g_ChanCtx	@ tmp317,
	movt	r0, #:upper16:g_ChanCtx	@ tmp317,
	str	r3, [r2, #3684]	@ D.36439, PrioArray
	str	r3, [r0, #0]	@ D.36439, g_ChanCtx.PriorByChanId
	b	.L1218	@
.L1234:
	.align	2
.L1233:
	.word	.LANCHOR0+3684
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.type	VfmwProc_SetDropStreamThread, %function
VfmwProc_SetDropStreamThread:
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
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC182	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC182	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1237	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1237:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDropStreamThread, .-VfmwProc_SetDropStreamThread
	.align	2
	.type	VfmwProc_SetDecMode, %function
VfmwProc_SetDecMode:
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
	and	r5, r4, #3	@ Mode, dat,
	movw	r1, #:lower16:.LC183	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC183	@,
	mov	r3, r5	@, Mode
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1240	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1240:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecMode, .-VfmwProc_SetDecMode
	.align	2
	.type	VfmwProc_SetDecOrderOutput, %function
VfmwProc_SetDecOrderOutput:
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
	and	r5, r4, #3	@ DecOrderOutput, dat,
	movw	r1, #:lower16:.LC184	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC184	@,
	mov	r3, r5	@, DecOrderOutput
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1243	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1243:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecOrderOutput, .-VfmwProc_SetDecOrderOutput
	.align	2
	.type	VfmwProc_SetErrorThread, %function
VfmwProc_SetErrorThread:
	.fnstart
.LFB1778:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC185	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC185	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1246	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1246:
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
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r3, #0	@ tmp137,
	mov	r4, r1	@ pstChanState, pstChanState
	str	r3, [sp, #28]	@ tmp137, NewNum
	str	r3, [sp, #32]	@ tmp137, ReadNum
	str	r3, [sp, #36]	@ tmp137, RefNum
	bne	.L1258	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1259	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp178,
	movt	r5, #:upper16:.LANCHOR0	@ tmp178,
	ldr	r1, [r5, #0]	@ D.34855, s_pstVfmwChan
	cmp	r1, #0	@ D.34855,
	beq	.L1260	@,
	add	r1, r1, #1280	@, D.34855,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r2, sp, #32	@,,
	add	r3, sp, #28	@,,
	mov	r0, r6	@, ChanID
	add	r1, sp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5, #0]	@ temp.4576, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1261	@,
.L1254:
	mov	r0, #0	@,
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispStateWithDNR	@
.L1256:
	ldr	lr, [sp, #32]	@ ReadNum, ReadNum
	add	r1, sp, #4	@,,
	ldr	r2, [sp, #28]	@ NewNum, NewNum
	mov	r0, #0	@,
	add	ip, r2, lr	@ tmp161, NewNum, ReadNum
	str	ip, [r4, #52]	@ tmp161, <variable>.decoded_1d_frame_num
	ldr	r3, [r5, #320]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	r3, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [r5, #308]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #12]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	ldr	r0, [sp, #20]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	movw	r3, #:lower16:233384	@ tmp173,
	ldr	ip, [sp, #24]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movt	r3, #:upper16:233384	@ tmp173,
	str	r2, [r4, #60]	@ ScdInstInfo.SegNum, <variable>.buffered_stream_num
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, <variable>.buffered_stream_size
	cmp	ip, #10	@ ScdInstInfo.numReadSegFail,
	movle	r1, #0	@, tmp170
	movgt	r1, #1	@, tmp170
	str	r1, [r4, #84]	@ tmp170, <variable>.stream_not_enough
	ldr	r2, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp175,
	and	r0, ip, #1	@ tmp177, tmp175,
	str	r0, [r4, #92]	@ tmp177, <variable>.mpeg4_shorthead
.L1257:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L1258:
	mov	r0, r3	@, tmp137
	mov	r2, r6	@, ChanID
	movw	r1, #:lower16:.LC186	@,
	movt	r1, #:upper16:.LC186	@,
	bl	dprint_vfmw	@
	b	.L1257	@
.L1261:
	ldr	r3, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L1254	@,
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pstChanState
	ldr	r2, [sp, #36]	@, RefNum
	bl	VCTRL_GetDispState	@
	b	.L1256	@
.L1260:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1293	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC188	@,
	movt	r3, #:upper16:.LC188	@,
	bl	dprint_vfmw	@
	b	.L1257	@
.L1259:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1292	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC187	@,
	movt	r3, #:upper16:.LC187	@,
	bl	dprint_vfmw	@
	b	.L1257	@
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1268	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, #0]	@ D.34769, s_pstVfmwChan
	cmp	r3, #0	@ D.34769,
	beq	.L1269	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1270	@,
	add	r0, r3, #74752	@, D.34769,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L1270:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC189	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r2, #1216	@,
	movt	r3, #:upper16:.LC189	@,
	bl	dprint_vfmw	@
.L1264:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L1268:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1214	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L1264	@
.L1269:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1215	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	b	.L1264	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r3, [r4, #72]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.34704,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1274	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1274:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r1, #3	@ tmp141,
	str	r1, [r4, #104]	@ tmp141, s_VfmwCTrl.eTaskCommand
	b	.L1276	@
.L1281:
	bl	msleep	@
	ldr	ip, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	ip, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1275	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1275	@,
.L1276:
	ldr	r2, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp156, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp156,
	cmp	r2, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1281	@,
.L1275:
	mov	r1, #4	@,
	ldr	r0, .L1282	@,
	mov	r5, #0	@ tmp145,
	str	r5, [r4, #104]	@ tmp145, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1282+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.34704, tmp145
	str	r5, [r4, #72]	@ tmp145, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1283:
	.align	2
.L1282:
	.word	.LANCHOR0+292
	.word	.LANCHOR0+120
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
	ldr	r3, [r4, #72]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #104]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1289	@
.L1287:
	bl	msleep	@
	ldr	r1, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1294	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1296	@,
.L1289:
	ldr	r3, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1287	@,
.L1294:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #104]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1296:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #104]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	ldr	r3, [r4, #72]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #104]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1302	@
.L1300:
	bl	msleep	@
	ldr	r2, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1307	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1309	@,
.L1302:
	ldr	r1, [r4, #100]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1300	@,
.L1307:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #104]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1309:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #104]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp291,
	movt	r4, #:upper16:.LANCHOR0	@ tmp291,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ event_report, event_report
	ldr	r7, [r4, #72]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r7, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1335	@,
.L1311:
	mvn	r0, #0	@ D.34627,
.L1333:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1335:
	movw	r6, #:lower16:saved_command_line	@ tmp290,
	movt	r6, #:upper16:saved_command_line	@ tmp290,
	add	r1, r4, #3680	@, tmp291,
	mov	r2, #1024	@,
	add	r0, r1, #8	@,,
	ldr	r1, [r6, #0]	@, saved_command_line
	str	r7, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3680	@, tmp291,
	movw	r1, #:lower16:.LC190	@,
	add	r0, r0, #8	@,,
	movt	r1, #:upper16:.LC190	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp173,
	str	r0, [sp, #4]	@ tmp173, p
	beq	.L1312	@,
	add	r8, sp, #4	@ p.671,,
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	mov	r0, r8	@, p.671
	bl	strsep	@
	subs	r3, r0, #0	@ D.43602,
	beq	.L1317	@,
	mov	r0, r8	@, p.671
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1336	@,
	mov	r1, r7	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #32]	@ prephitmp.4755, extra_ref
.L1316:
	add	r7, r0, #4992	@ tmp184, prephitmp.4755,
	movw	r2, #10000	@ tmp186,
	add	r3, r7, #8	@ tmp184, tmp184,
	cmp	r3, r2	@ tmp184, tmp186
	bhi	.L1318	@,
	movw	lr, #5000	@ tmp187,
	movw	ip, #:lower16:-5000	@ tmp188,
	cmp	r0, lr	@ prephitmp.4755, tmp187
	movge	r0, lr	@ pretmp.4752, tmp187
	movt	ip, #:upper16:-5000	@ tmp188,
	cmp	r0, ip	@ pretmp.4752, tmp188
	movge	r3, r0	@ prephitmp.4754, pretmp.4752
	movlt	r3, ip	@ prephitmp.4754, tmp188
.L1317:
	str	r3, [r4, #32]	@ prephitmp.4754, extra_ref
.L1315:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1339	@,
	mov	r7, #0	@ tmp194,
	str	r7, [sp, #4]	@ tmp194, p
	bl	strlcpy	@
	ldr	r0, .L1339	@,
	movw	r1, #:lower16:.LC195	@,
	movt	r1, #:upper16:.LC195	@,
	bl	strstr	@
	cmp	r0, r7	@ tmp198,
	str	r0, [sp, #4]	@ tmp198, p
	beq	.L1319	@,
	add	r8, sp, #4	@ p.682,,
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	mov	r0, r8	@, p.682
	bl	strsep	@
	subs	r3, r0, #0	@ D.43622,
	beq	.L1324	@,
	mov	r0, r8	@, p.682
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	strsep	@
	cmp	r0, r7	@,
	beq	.L1337	@,
	mov	r1, r7	@, tmp194
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #36]	@ prephitmp.4750, extra_disp
.L1323:
	add	lr, r0, #4992	@ tmp209, prephitmp.4750,
	movw	r7, #10000	@ tmp211,
	add	ip, lr, #8	@ tmp209, tmp209,
	cmp	ip, r7	@ tmp209, tmp211
	bhi	.L1325	@,
	movw	r3, #5000	@ tmp212,
	movw	r2, #:lower16:-5000	@ tmp213,
	cmp	r0, r3	@ prephitmp.4750, tmp212
	movge	r0, r3	@ pretmp.4737, tmp212
	movt	r2, #:upper16:-5000	@ tmp213,
	cmp	r0, r2	@ pretmp.4737, tmp213
	movge	r3, r0	@ prephitmp.4726, pretmp.4737
	movlt	r3, r2	@ prephitmp.4726, tmp213
.L1324:
	str	r3, [r4, #36]	@ prephitmp.4726, extra_disp
.L1322:
	movw	r4, #:lower16:.LANCHOR3	@ tmp292,
	movt	r4, #:upper16:.LANCHOR3	@ tmp292,
	mov	lr, #0	@ tmp219,
	str	lr, [sp, #4]	@ tmp219, p
	ldr	r7, [r4, #-3472]	@ extra_cmd.688, extra_cmd
	cmp	r7, lr	@ extra_cmd.688,
	beq	.L1326	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp225,
	movt	r3, #:upper16:.LANCHOR2	@ tmp225,
	ubfx	r0, r7, #2, #1	@ tmp233, extra_cmd.688,,
	and	r2, r7, #1	@ tmp223, extra_cmd.688,
	strb	r0, [r4, #-3467]	@ tmp233, g_not_allow_H264FullPictureRepair_flag
	ubfx	r7, r7, #1, #1	@ tmp228, extra_cmd.688,,
	strb	r2, [r4, #-3468]	@ tmp223, g_allow_B_before_P
	strb	r7, [r3, #64]	@ tmp228, g_not_direct_8x8_inference_flag
.L1327:
	movw	r4, #:lower16:.LANCHOR0	@ tmp261,
	movt	r4, #:upper16:.LANCHOR0	@ tmp261,
	add	r0, r4, #72	@, tmp261,
	mov	r1, #152	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp261
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #340	@, tmp261,
	mov	r1, #4	@,
	bl	__memzero	@
	cmp	r5, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp267,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp267,
	streq	r3, [r4, #4]	@ tmp267, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp268,
	movt	r4, #:upper16:.LANCHOR0	@ tmp268,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #292	@, tmp268,
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #120	@, tmp268,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1311	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1339+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #108	@, tmp268,
	movw	r1, #:lower16:.LC198	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC198	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.34654,
	bne	.L1332	@,
	add	r0, r4, #108	@, tmp268,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp285,
	mov	r0, r5	@ D.34627, D.34654
	str	r3, [r4, #72]	@ tmp285, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1333	@
.L1326:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1339	@,
	bl	strlcpy	@
	ldr	r0, .L1339	@,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp238,
	str	r0, [sp, #4]	@ tmp238, p
	beq	.L1327	@,
	add	r6, sp, #4	@ p.697,,
	movw	r1, #:lower16:.LC191	@,
	movt	r1, #:upper16:.LC191	@,
	mov	r0, r6	@, p.697
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3472]	@ prephitmp.4724, extra_cmd
	beq	.L1329	@,
	mov	r0, r6	@, p.697
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1338	@,
	mov	r1, r7	@, extra_cmd.688
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3472]	@ prephitmp.4724, extra_cmd
.L1329:
	movw	ip, #:lower16:.LANCHOR2	@ tmp251,
	movt	ip, #:upper16:.LANCHOR2	@ tmp251,
	ubfx	lr, r0, #2, #1	@ tmp259, prephitmp.4724,,
	and	r1, r0, #1	@ tmp249, prephitmp.4724,
	strb	lr, [r4, #-3467]	@ tmp259, g_not_allow_H264FullPictureRepair_flag
	strb	r1, [r4, #-3468]	@ tmp249, g_allow_B_before_P
	ubfx	r4, r0, #1, #1	@ tmp254, prephitmp.4724,,
	strb	r4, [ip, #64]	@ tmp254, g_not_direct_8x8_inference_flag
	b	.L1327	@
.L1319:
	ldr	r0, [r4, #36]	@ prephitmp.4750, extra_disp
	b	.L1323	@
.L1312:
	ldr	r0, [r4, #32]	@ prephitmp.4755, extra_ref
	b	.L1316	@
.L1318:
	mov	r2, r0	@, prephitmp.4755
	movw	r1, #:lower16:.LC194	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC194	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #32]	@ pretmp.4751, extra_ref
	movw	r3, #5000	@ tmp191,
	movw	r0, #:lower16:-5000	@ tmp192,
	cmp	r1, r3	@ pretmp.4751, tmp191
	movlt	r2, r1	@ prephitmp.4754, pretmp.4751
	movge	r2, r3	@ prephitmp.4754, tmp191
	movt	r0, #:upper16:-5000	@ tmp192,
	cmp	r2, r0	@ prephitmp.4754, tmp192
	movge	r3, r2	@ prephitmp.4754, prephitmp.4754
	movlt	r3, r0	@ prephitmp.4754, tmp192
	b	.L1317	@
.L1325:
	mov	r2, r0	@, prephitmp.4750
	movw	r1, #:lower16:.LC196	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC196	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #36]	@ pretmp.4725, extra_disp
	movw	r0, #:lower16:-5000	@ tmp217,
	movw	ip, #5000	@ tmp216,
	movt	r0, #:upper16:-5000	@ tmp217,
	cmp	r1, ip	@ pretmp.4725, tmp216
	movlt	r7, r1	@ prephitmp.4726, pretmp.4725
	movge	r7, ip	@ prephitmp.4726, tmp216
	cmp	r7, r0	@ prephitmp.4726, tmp217
	movge	r3, r7	@ prephitmp.4726, prephitmp.4726
	movlt	r3, r0	@ prephitmp.4726, tmp217
	b	.L1324	@
.L1336:
	movw	r1, #:lower16:.LC193	@,
	ldr	r2, .L1339+8	@,
	movt	r1, #:upper16:.LC193	@,
	movw	r3, #7132	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1315	@
.L1337:
	movw	r1, #:lower16:.LC193	@,
	ldr	r2, .L1339+12	@,
	movt	r1, #:upper16:.LC193	@,
	movw	r3, #7173	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1322	@
.L1338:
	movw	r1, #:lower16:.LC193	@,
	ldr	r2, .L1339+16	@,
	movt	r1, #:upper16:.LC193	@,
	movw	r3, #7223	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1327	@
.L1332:
	add	r0, r4, #120	@, tmp268,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.34627,
	b	.L1333	@
.L1340:
	.align	2
.L1339:
	.word	.LANCHOR0+3688
	.word	.LANCHOR3-3464
	.word	.LANCHOR1+456
	.word	.LANCHOR1+476
	.word	.LANCHOR1+496
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
	ldr	r3, [r4, #-3452]	@ LastEventTime.468, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.468
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3452]	@ CurTime, LastEventTime
	bhi	.L1346	@,
.L1343:
	ldr	r0, .L1347	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3452]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1346:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.468, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1343	@
.L1348:
	.align	2
.L1347:
	.word	.LANCHOR3-3464
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
	ldr	r0, [r4, #20]	@ g_SleepTime.463, g_SleepTime
	str	r3, [r4, #112]	@ tmp139, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.463,
	ble	.L1358	@,
	bl	msleep	@
.L1358:
	ldr	r0, .L1367	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r4, #12]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp144,
	str	r2, [r4, #112]	@ tmp144, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1366	@,
.L1360:
	mov	ip, #102	@ tmp148,
	str	ip, [r4, #112]	@ tmp148, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp149,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp149,
	ldr	r0, [r1, #28]	@ D.34512, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.34512,
	beq	.L1361	@,
	blx	r0	@ D.34512
.L1362:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	ldr	r3, [lr, #56]	@ D.34517, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.34517,
	beq	.L1363	@,
	mov	r0, #0	@,
	blx	r3	@ D.34517
.L1364:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1367	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1367+4	@,
	mov	r3, #105	@ tmp156,
	str	r3, [r4, #112]	@ tmp156, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1363:
	mov	r0, r3	@, D.34517
	movw	r1, #:lower16:.LC81	@,
	mov	r2, #556	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1364	@
.L1366:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1360	@
.L1361:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #549	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L1362	@
.L1368:
	.align	2
.L1367:
	.word	.LANCHOR0+328
	.word	.LANCHOR3-3464
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
.L1370:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC199	@,
	movt	r1, #:upper16:.LC199	@,
	mov	r2, #0	@ tmp152,
	str	r2, [r4, #112]	@ tmp152, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ temp.4921, s_VfmwCTrl.eTaskCommand
	mov	r6, #2	@ tmp154,
	str	r5, [r4, #112]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, r6	@ temp.4921,
	str	r6, [r4, #100]	@ tmp154, s_VfmwCTrl.eTaskState
	bne	.L1377	@,
	b	.L1371	@
.L1374:
	str	r6, [r4, #112]	@ tmp213, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC200	@,
	movt	r1, #:upper16:.LC200	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ D.34460, s_VfmwCTrl.eTaskCommand
	str	r5, [r4, #112]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.34460,
	beq	.L1371	@,
.L1377:
	cmp	r3, #3	@ D.34460,
	beq	.L1372	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1374	@,
	rsbs	ip, r7, #1	@ tmp164, time2
	movcc	ip, #0	@ tmp164
	rsb	lr, r7, r0	@ tmp159, time2, time1
	cmp	lr, sl	@ tmp159, tmp218
	orrhi	ip, ip, #1	@,, tmp167, tmp164
	cmp	ip, #0	@ tmp167,
	beq	.L1374	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r7, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.34479, reg_val,
	strne	r1, [r8, #92]	@ D.34479,
	ldr	r2, [r8, #96]	@ reg_val.4913,
	cmp	r2, #3	@ reg_val.4913,
	cmpne	r2, #0	@, reg_val.4913,
	bic	r3, r2, #7	@ temp.4917, reg_val.4913,
	strne	r3, [r8, #96]	@ temp.4917,
	movne	r7, r0	@ time2, time1
	b	.L1374	@
.L1371:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	mov	lr, #4	@ tmp192,
	str	lr, [r4, #112]	@ tmp192, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r5, [r4, #100]	@ tmp217, s_VfmwCTrl.eTaskState
.L1378:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC202	@,
	movt	r1, #:upper16:.LC202	@,
	str	r9, [r4, #112]	@ tmp224, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #104]	@ temp.4918, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.4918,
	beq	.L1370	@,
	cmp	r3, #3	@ temp.4918,
	mov	r0, #10	@,
	beq	.L1372	@,
	bl	msleep	@
	b	.L1378	@
.L1372:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	mov	r3, #6	@ tmp200,
	str	r3, [r4, #112]	@ tmp200, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp203,
	str	r0, [r4, #100]	@ tmp203, s_VfmwCTrl.eTaskState
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
	subs	r4, r0, #0	@ D.34417,
	bne	.L1384	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1389	@,
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
.L1389:
	bl	SCDDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	mov	r2, r0	@ D.34426,
	mov	r0, r4	@, D.34417
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1384:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC204	@,
	movt	r1, #:upper16:.LC204	@,
	mov	r2, r0	@ D.34421,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
.LFB1794:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC206	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC206	@,
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
	b	.L1397	@
.L1396:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1393	@,
.L1427:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp174
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	cmp	r7, #200	@ WaitTime,
	bhi	.L1436	@,
.L1425:
	add	r5, r5, #1	@ i, tmp179,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1393	@,
.L1397:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1393	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r7, r4, r0	@ WaitTime, EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime, CurTime, tmp174
	cmp	r7, #200	@ WaitTime,
	bls	.L1396	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC207	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC207	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1427	@,
.L1393:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, #4]	@ D.34372, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.34372,
	beq	.L1398	@,
	mov	r0, #0	@,
	blx	r3	@ D.34372
.L1399:
	bl	SCDDRV_PrepareSleep	@
	mov	r6, #0	@ i.5013,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r7, r0	@ tmp169, BeginTime
	b	.L1404	@
.L1403:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp178, i.5013,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1400	@,
.L1428:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5011
	addhi	sl, r0, r7	@ WaitTime.5009, CurTime.5011, tmp169
	rsbls	sl, r5, r0	@ WaitTime.5009, BeginTime, CurTime.5011
	cmp	sl, #200	@ WaitTime.5009,
	bhi	.L1437	@,
.L1422:
	add	r6, r6, #1	@ i.5013, tmp178,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5013,
	beq	.L1400	@,
.L1404:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1400	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5011
	rsbls	sl, r5, r0	@ WaitTime.5009, BeginTime, CurTime.5011
	addhi	sl, r0, r7	@ WaitTime.5009, CurTime.5011, tmp169
	cmp	sl, #200	@ WaitTime.5009,
	bls	.L1403	@,
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime.5009
	movw	r1, #:lower16:.LC208	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC208	@,
	add	r6, r6, #1	@ tmp178, i.5013,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1428	@,
.L1400:
	ldr	r0, [r8, #12]	@ D.34388, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.34388,
	beq	.L1405	@,
	blx	r0	@ D.34388
.L1406:
	bl	DNRDRV_PrepareSleep	@
	mov	r6, #0	@ i.5018,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime.5015,
	mvn	r7, r0	@ tmp165, BeginTime.5015
	b	.L1411	@
.L1410:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp177, i.5018,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1407	@,
.L1429:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5015, CurTime.5016
	addhi	r8, r0, r7	@ WaitTime.5010, CurTime.5016, tmp165
	rsbls	r8, r5, r0	@ WaitTime.5010, BeginTime.5015, CurTime.5016
	cmp	r8, #200	@ WaitTime.5010,
	bhi	.L1438	@,
.L1419:
	add	r6, r6, #1	@ i.5018, tmp177,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5018,
	beq	.L1407	@,
.L1411:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1407	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5015, CurTime.5016
	rsbls	r8, r5, r0	@ WaitTime.5010, BeginTime.5015, CurTime.5016
	addhi	r8, r0, r7	@ WaitTime.5010, CurTime.5016, tmp165
	cmp	r8, #200	@ WaitTime.5010,
	bls	.L1410	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.5010
	movw	r1, #:lower16:.LC209	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC209	@,
	add	r6, r6, #1	@ tmp177, i.5018,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1429	@,
.L1407:
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	cmp	r4, r0	@ EntrTime, CurTime.5019
	rsbls	r2, r4, r0	@ iftmp.459, EntrTime, CurTime.5019
	mvnhi	r4, r4	@ tmp162, EntrTime
	addhi	r2, r0, r4	@ iftmp.459, CurTime.5019, tmp162
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L1436:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime
	movw	r1, #:lower16:.LC207	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC207	@,
	bl	dprint_vfmw	@
	b	.L1425	@
.L1437:
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime.5009
	movw	r1, #:lower16:.LC208	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC208	@,
	bl	dprint_vfmw	@
	b	.L1422	@
.L1438:
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime.5010
	movw	r1, #:lower16:.LC209	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC209	@,
	bl	dprint_vfmw	@
	b	.L1419	@
.L1398:
	mov	r0, r3	@, D.34372
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1399	@
.L1405:
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #309	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1406	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
.LFB1793:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC206	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC206	@,
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
	ldr	r0, .L1443	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L1444:
	.align	2
.L1443:
	.word	.LANCHOR0+40
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
	.type	C.705.38541, %object
	.size	C.705.38541, 12
C.705.38541:
	.word	.LC211
	.word	.LC212
	.word	.LC213
	.type	CSWTCH.806, %object
	.size	CSWTCH.806, 32
CSWTCH.806:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.37338, %object
	.size	__func__.37338, 26
__func__.37338:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.34600, %object
	.size	__func__.34600, 18
__func__.34600:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.34567, %object
	.size	__func__.34567, 18
__func__.34567:
	.ascii	"VCTRL_EventReport\000"
	.space	2
	.type	CSWTCH.841, %object
	.size	CSWTCH.841, 32
CSWTCH.841:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.34901, %object
	.size	__func__.34901, 29
__func__.34901:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.38374, %object
	.size	__func__.38374, 18
__func__.38374:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.38410, %object
	.size	__func__.38410, 19
__func__.38410:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.38446, %object
	.size	__func__.38446, 16
__func__.38446:
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
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC182:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC183:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC184:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC185:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC186:
	.ascii	"ChanID %d is out of range!\012\000"
.LC187:
	.ascii	"pstChanState = NULL\000"
.LC188:
	.ascii	"s_pstVfmwChan = NULL\000"
	.space	3
.LC189:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC190:
	.ascii	"extra_ref=\000"
	.space	1
.LC191:
	.ascii	"=\000"
	.space	2
.LC192:
	.ascii	" \000"
	.space	2
.LC193:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC194:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC195:
	.ascii	"extra_disp=\000"
.LC196:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC197:
	.ascii	"extra_cmd=\000"
	.space	1
.LC198:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC199:
	.ascii	"Thread running...\012\000"
	.space	1
.LC200:
	.ascii	"thread running...\012\000"
	.space	1
.LC201:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC202:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC203:
	.ascii	"Thread killed!\012\000"
.LC204:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC205:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC206:
	.ascii	"proc cmd need no param:%p\012\000"
	.space	1
.LC207:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC208:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC209:
	.ascii	"wait dnr overtime(%d), force it sleep!\012\000"
.LC210:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC211:
	.ascii	"auto\000"
	.space	3
.LC212:
	.ascii	"force on\000"
	.space	3
.LC213:
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
	.size	s_pstVfmwChan, 4
s_pstVfmwChan:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 4
g_EsBufValidFlag:
	.space	4
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
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.38688, %object
	.size	save_file_cnt.38688, 4
save_file_cnt.38688:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.38662, %object
	.size	save_file_cnt.38662, 4
save_file_cnt.38662:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.38636, %object
	.size	save_file_cnt.38636, 4
save_file_cnt.38636:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	last_rec_pos_time.38032, %object
	.size	last_rec_pos_time.38032, 4
last_rec_pos_time.38032:
	.space	4
	.type	last_rec_pos_report_time.38033, %object
	.size	last_rec_pos_report_time.38033, 4
last_rec_pos_report_time.38033:
	.space	4
	.type	last_rec_pos_decparam_time.38034, %object
	.size	last_rec_pos_decparam_time.38034, 4
last_rec_pos_decparam_time.38034:
	.space	4
	.type	ChanPriTab.37840, %object
	.size	ChanPriTab.37840, 4
ChanPriTab.37840:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 4
g_DSPState:
	.space	4
	.type	PrioArray.35803, %object
	.size	PrioArray.35803, 4
PrioArray.35803:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 24
g_VfmwChanStat:
	.space	24
	.type	PrioArray.35838, %object
	.size	PrioArray.35838, 4
PrioArray.35838:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 4
g_ChanTick:
	.space	4
	.type	FspInstInfo.34894, %object
	.size	FspInstInfo.34894, 3340
FspInstInfo.34894:
	.space	3340
	.type	PrioArray.36323, %object
	.size	PrioArray.36323, 4
PrioArray.36323:
	.space	4
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
	.type	LastEventTime.34546, %object
	.size	LastEventTime.34546, 4
LastEventTime.34546:
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
