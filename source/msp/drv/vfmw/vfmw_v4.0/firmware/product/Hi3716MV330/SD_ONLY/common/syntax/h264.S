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
	.file	"h264.c"
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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(h264)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.h264.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/h264.o
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
	.global	GetMinPOC
	.type	GetMinPOC, %function
GetMinPOC:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #26628	@ tmp173,
	mvn	r3, #-2147483648	@ tmp172,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	mov	r4, #0	@ tmp171,
	str	r4, [r2, #0]	@ tmp171,* pos
	mov	r4, #26624	@ tmp174,
	str	r3, [r1, #0]	@ tmp172,* poc
	ldr	r3, [r0, r4]	@ prephitmp.878, <variable>.DPB.size
	ldr	r4, [r0, ip]	@ prephitmp.860, <variable>.DPB.used_size
	cmp	r4, r3	@ prephitmp.860, prephitmp.878
	strhi	r3, [r0, ip]	@ prephitmp.878, <variable>.DPB.used_size
	movls	r3, r4	@ prephitmp.878, prephitmp.860
	cmp	r3, #0	@ prephitmp.878,
	beq	.L7	@,
	add	r5, r0, #26368	@ ivtmp.874, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.874, ivtmp.874,
	movw	r7, #26628	@ tmp181,
.L6:
	ldr	r4, [ip, #0]	@ D.32648, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.874, ivtmp.874,
	ldr	r6, [r1, #0]	@ tmp177,* poc
	ldr	r5, [r4, #524]	@ D.32649, <variable>.poc
	cmp	r6, r5	@ tmp177, D.32649
	ble	.L5	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.32649,* poc
	strne	r3, [r2, #0]	@ i,* pos
.L5:
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	r4, r3	@ <variable>.DPB.used_size, i
	bhi	.L6	@,
.L7:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	GetMinPOC, .-GetMinPOC
	.align	2
	.global	GetMaxPOC
	.type	GetMaxPOC, %function
GetMaxPOC:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	mov	r4, #26624	@ tmp143,
	movw	r6, #26432	@ tmp148,
	movw	r7, #26628	@ tmp144,
	mov	ip, #0	@ tmp142,
	str	ip, [r2, #0]	@ tmp142,* pos
	ldr	r3, [r0, r4]	@ D.32665, <variable>.DPB.size
	ldr	ip, [r0, r6]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r4, r3	@ <variable>.DPB.used_size, D.32665
	strhi	r3, [r0, r7]	@ D.32665, <variable>.DPB.used_size
	ldr	r6, [ip, #524]	@ prephitmp.894, <variable>.poc
	movw	r7, #26628	@ tmp149,
	str	r6, [r1, #0]	@ prephitmp.894,* poc
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L15	@,
	add	r5, r0, #26368	@ ivtmp.910, pH264Ctx,
	mov	r3, #0	@ i,
	add	ip, r5, #64	@ ivtmp.910, ivtmp.910,
	b	.L14	@
.L16:
	ldr	r6, [r1, #0]	@ prephitmp.894,* poc
.L14:
	ldr	r4, [ip, #0]	@ D.32672, <variable>.DPB.fs
	add	ip, ip, #4	@ ivtmp.910, ivtmp.910,
	ldr	r5, [r4, #524]	@ D.32673, <variable>.poc
	cmp	r5, r6	@ D.32673, prephitmp.894
	ble	.L13	@,
	ldrb	r4, [r4, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r4, #0	@ <variable>.is_in_dpb,
	strne	r5, [r1, #0]	@ D.32673,* poc
	strne	r3, [r2, #0]	@ i,* pos
.L13:
	ldr	r4, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r3, r3, #1	@ i, i,
	cmp	r4, r3	@ <variable>.DPB.used_size, i
	bhi	.L16	@,
.L15:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	GetMaxPOC, .-GetMaxPOC
	.align	2
	.global	FrameStoreRefFlg
	.type	FrameStoreRefFlg, %function
FrameStoreRefFlg:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r0, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	subs	r0, r0, #0	@, <variable>.is_reference,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	FrameStoreRefFlg, .-FrameStoreRefFlg
	.align	2
	.global	ShortTermRefFlg
	.type	ShortTermRefFlg, %function
ShortTermRefFlg:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.32687, <variable>.is_reference
	cmp	r3, #3	@ D.32687,
	beq	.L27	@,
	tst	r3, #1	@ D.32687,
	bne	.L22	@,
.L23:
	ands	r3, r3, #2	@ tmp145, D.32687,
	moveq	r0, r3	@ D.32694, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #65536	@ tmp146,
	movne	r0, #0	@, D.32694
	moveq	r0, #1	@, D.32694
	bx	lr	@
.L27:
	ldr	ip, [r0, #400]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #65536	@ tmp138,
	beq	.L21	@,
.L22:
	ldr	ip, [r0, #436]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #65536	@ tmp142,
	bne	.L23	@,
.L21:
	mov	r0, #1	@ D.32694,
	bx	lr	@
	.fnend
	.size	ShortTermRefFlg, .-ShortTermRefFlg
	.align	2
	.global	LongTermRefFlg
	.type	LongTermRefFlg, %function
LongTermRefFlg:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ D.32714, <variable>.is_reference
	cmp	r3, #3	@ D.32714,
	beq	.L36	@,
	tst	r3, #1	@ D.32714,
	bne	.L31	@,
.L32:
	ands	r3, r3, #2	@ tmp145, D.32714,
	moveq	r0, r3	@ D.32721, tmp145
	bxeq	lr	@
	ldr	r1, [r0, #472]	@ tmp148,
	bic	r2, r1, #-16777216	@ tmp146, tmp148,
	bic	r0, r2, #255	@ tmp146, tmp146,
	cmp	r0, #256	@ tmp146,
	movne	r0, #0	@, D.32721
	moveq	r0, #1	@, D.32721
	bx	lr	@
.L36:
	ldr	ip, [r0, #400]	@ tmp140,
	bic	r1, ip, #-16777216	@ tmp138, tmp140,
	bic	r2, r1, #255	@ tmp138, tmp138,
	cmp	r2, #256	@ tmp138,
	beq	.L30	@,
.L31:
	ldr	ip, [r0, #436]	@ tmp144,
	bic	r1, ip, #-16777216	@ tmp142, tmp144,
	bic	r2, r1, #255	@ tmp142, tmp142,
	cmp	r2, #256	@ tmp142,
	bne	.L32	@,
.L30:
	mov	r0, #1	@ D.32721,
	bx	lr	@
	.fnend
	.size	LongTermRefFlg, .-LongTermRefFlg
	.align	2
	.global	UpdateLTReflist
	.type	UpdateLTReflist, %function
UpdateLTReflist:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	sl, #26628	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L39	@,
	add	r4, r0, #26368	@ ivtmp.1021, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1021, ivtmp.1021,
	mov	r5, r7	@ i, j
.L41:
	ldr	r6, [r4, #0]	@ D.32750, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1021, ivtmp.1021,
	mov	r0, r6	@, D.32750
	bl	LongTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #48	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.32750, <variable>.DPB.fs_ltref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L41	@,
.L39:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26636	@ tmp148,
	ldr	r0, [r8, r3]	@ D.32756, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, r0	@ j, D.32756
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #48	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.32756
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.32756
	add	r8, r8, r1, asl #2	@, ivtmp.1017, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L43	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ltref
	cmp	r2, r0	@ j, D.32756
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L43:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1017
	cmp	r2, r0	@ j, D.32756
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ltref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ltref
	add	r8, ip, #4	@ ivtmp.1017, tmp160,
	bcc	.L43	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	UpdateLTReflist, .-UpdateLTReflist
	.align	2
	.global	UpdateReflist
	.type	UpdateReflist, %function
UpdateReflist:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	sl, #26628	@ tmp141,
	ldr	r7, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	cmp	r7, #0	@ <variable>.DPB.used_size,
	beq	.L54	@,
	add	r4, r0, #26368	@ ivtmp.1059, pH264Ctx,
	mov	r7, #0	@ j,
	add	r4, r4, #64	@ ivtmp.1059, ivtmp.1059,
	mov	r5, r7	@ i, j
.L56:
	ldr	r6, [r4, #0]	@ D.32769, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1059, ivtmp.1059,
	mov	r0, r6	@, D.32769
	bl	ShortTermRefFlg	@
	add	r2, r7, #6592	@ tmp144, j,
	add	r1, r2, #32	@ tmp144, tmp144,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@,
	strne	r6, [r8, r1, asl #2]	@ D.32769, <variable>.DPB.fs_ref
	addne	r7, r7, #1	@ j, j,
	cmp	r3, r5	@ <variable>.DPB.used_size, i
	bhi	.L56	@,
.L54:
	mov	r3, #26624	@ tmp149,
	movw	ip, #26632	@ tmp148,
	ldr	r0, [r8, r3]	@ D.32775, <variable>.DPB.size
	str	r7, [r8, ip]	@ j, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, r0	@ j, D.32775
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r3, r7, #6592	@ tmp150, j,
	add	r2, r7, #1	@ j, j,
	add	r1, r3, #32	@ tmp150, tmp150,
	cmp	r2, r0	@ j, D.32775
	mvn	ip, r7	@ tmp157, j
	add	r7, ip, r0	@ tmp156, tmp157, D.32775
	add	r8, r8, r1, asl #2	@, ivtmp.1055, pH264Ctx, tmp150,
	and	r7, r7, #1	@ tmp158, tmp156,
	mov	r1, #0	@ tmp154,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r7, #0	@ tmp158,
	beq	.L58	@,
	add	r2, r2, #1	@ j, j,
	str	r1, [r8], #4	@ tmp154, <variable>.DPB.fs_ref
	cmp	r2, r0	@ j, D.32775
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L58:
	add	r2, r2, #2	@ j, j,
	mov	ip, r8	@ tmp160, ivtmp.1055
	cmp	r2, r0	@ j, D.32775
	str	r1, [ip], #4	@ tmp154, <variable>.DPB.fs_ref
	str	r1, [r8, #4]	@ tmp154, <variable>.DPB.fs_ref
	add	r8, ip, #4	@ ivtmp.1055, tmp160,
	bcc	.L58	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	UpdateReflist, .-UpdateReflist
	.align	2
	.global	GetPicNumX
	.type	GetPicNumX, %function
GetPicNumX:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	mvn	r1, r1	@ tmp141, difference_of_pic_nums_minus1
	ldr	r0, [r0, #416]	@ CurrPicNum, <variable>.frame_num
	cmp	r3, #0	@ <variable>.structure,
	movne	r0, r0, asl #1	@ tmp138, <variable>.frame_num,
	addne	r0, r0, #1	@ CurrPicNum, tmp138,
	add	r0, r0, r1	@, CurrPicNum, tmp141
	bx	lr	@
	.fnend
	.size	GetPicNumX, .-GetPicNumX
	.align	2
	.global	MarkPicLTRef
	.type	MarkPicLTRef, %function
MarkPicLTRef:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldrb	r3, [r3, #3]	@ zero_extendqisi2	@ D.33014, <variable>.structure
	cmp	r3, #0	@ D.33014,
	beq	.L72	@,
	movw	ip, #26632	@ tmp155,
	ldr	r8, [r0, ip]	@ D.33030, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.33030,
	beq	.L82	@,
	add	r5, r0, #26368	@ ivtmp.1123, pH264Ctx,
	sub	r6, r8, #1	@ tmp280, D.33030,
	and	r7, r6, #1	@ tmp282, tmp280,
	mov	r4, #0	@ i.1141,
	ldr	ip, [r5, #128]!	@ temp.1133, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33032, <variable>.is_reference
	tst	r6, #1	@ D.33032,
	beq	.L92	@,
	ldr	sl, [ip, #436]	@ tmp311,
	bic	sl, sl, #-16777216	@ tmp312, tmp311,
	bic	sl, sl, #255	@ tmp312, tmp312,
	cmp	sl, #65536	@ tmp312,
	beq	.L111	@,
.L92:
	tst	r6, #2	@ D.33032,
	beq	.L93	@,
	ldr	r6, [ip, #472]	@ tmp306,
	bic	r6, r6, #-16777216	@ tmp307, tmp306,
	bic	r6, r6, #255	@ tmp307, tmp307,
	cmp	r6, #65536	@ tmp307,
	beq	.L112	@,
.L93:
	mov	r4, #1	@ i.1141,
	cmp	r8, r4	@ D.33030, i.1141
	add	r5, r5, #4	@ ivtmp.1123, ivtmp.1123,
	bls	.L82	@,
	cmp	r7, #0	@ tmp282,
	beq	.L81	@,
	ldr	ip, [r5, #0]	@ temp.1133, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33032, <variable>.is_reference
	tst	r6, #1	@ D.33032,
	beq	.L95	@,
	ldr	r7, [ip, #436]	@ tmp324,
	bic	r7, r7, #-16777216	@ tmp325, tmp324,
	bic	r7, r7, #255	@ tmp325, tmp325,
	cmp	r7, #65536	@ tmp325,
	beq	.L113	@,
.L95:
	tst	r6, #2	@ D.33032,
	beq	.L96	@,
	ldr	r6, [ip, #472]	@ tmp319,
	bic	r6, r6, #-16777216	@ tmp320, tmp319,
	bic	r6, r6, #255	@ tmp320, tmp320,
	cmp	r6, #65536	@ tmp320,
	beq	.L114	@,
.L96:
	add	r4, r4, #1	@ i.1141, i.1141,
	add	r5, r5, #4	@ ivtmp.1123, ivtmp.1123,
	cmp	r8, r4	@ D.33030, i.1141
	bhi	.L81	@,
.L82:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L72:
	movw	ip, #26632	@ tmp156,
	ldr	r7, [r0, ip]	@ temp.1142, <variable>.DPB.ref_frames_in_buffer
	cmp	r7, #0	@ temp.1142,
	beq	.L82	@,
	add	r4, r0, #26368	@ ivtmp.1118, pH264Ctx,
	sub	r5, r7, #1	@ tmp275, temp.1142,
	and	r6, r5, #1	@ tmp277, tmp275,
	ldr	ip, [r4, #128]!	@ D.33018, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L115	@,
.L85:
	mov	r3, #1	@ i,
	cmp	r3, r7	@ i, temp.1142
	add	r4, r4, #4	@ ivtmp.1118, ivtmp.1118,
	bcs	.L82	@,
	cmp	r6, #0	@ tmp277,
	beq	.L76	@,
	ldr	ip, [r4, #0]	@ D.33018, <variable>.DPB.fs_ref
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	beq	.L116	@,
.L87:
	add	r3, r3, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.1118, ivtmp.1118,
	cmp	r3, r7	@ i, temp.1142
	bcc	.L76	@,
	b	.L82	@
.L75:
	ldr	ip, [r4, #4]	@ D.33018, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	beq	.L117	@,
.L90:
	add	r3, r5, #1	@ i, tmp279,
	add	r4, r6, #4	@ ivtmp.1118, tmp278,
	cmp	r3, r7	@ i, temp.1142
	bcs	.L82	@,
.L76:
	ldr	ip, [r4, #0]	@ D.33018, <variable>.DPB.fs_ref
	add	r6, r4, #4	@ tmp278, ivtmp.1118,
	ldrb	r5, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r5, #3	@ <variable>.is_reference,
	bne	.L75	@,
	ldr	r5, [ip, #400]	@ tmp161,
	bic	r5, r5, #-16777216	@ tmp159, tmp161,
	bic	r5, r5, #255	@ tmp159, tmp159,
	cmp	r5, #65536	@ tmp159,
	bne	.L75	@,
	ldr	r5, [ip, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	beq	.L108	@,
	ldr	ip, [r4, #4]	@ D.33018, <variable>.DPB.fs_ref
	add	r3, r3, #1	@ i, i,
	mov	r5, r3	@ tmp279, i
	ldrb	r4, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L90	@,
.L117:
	ldr	r4, [ip, #400]	@ tmp302,
	bic	r4, r4, #-16777216	@ tmp303, tmp302,
	bic	r4, r4, #255	@ tmp303, tmp303,
	cmp	r4, #65536	@ tmp303,
	bne	.L90	@,
	ldr	r4, [ip, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L90	@,
	b	.L108	@
.L77:
	tst	r6, #2	@ D.33032,
	beq	.L79	@,
	ldr	r6, [ip, #472]	@ tmp239,
	bic	r6, r6, #-16777216	@ tmp237, tmp239,
	bic	r6, r6, #255	@ tmp237, tmp237,
	cmp	r6, #65536	@ tmp237,
	beq	.L118	@,
.L79:
	ldr	ip, [r5, #4]	@ temp.1133, <variable>.DPB.fs_ref
	add	r4, r4, #1	@ i.1141, i.1141,
	add	r5, r5, #4	@ tmp284, ivtmp.1123,
	mov	sl, r4	@ tmp283, i.1141
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33032, <variable>.is_reference
	tst	r6, #1	@ D.33032,
	beq	.L99	@,
	ldr	r7, [ip, #436]	@ tmp335,
	bic	r7, r7, #-16777216	@ tmp336, tmp335,
	bic	r7, r7, #255	@ tmp336, tmp336,
	cmp	r7, #65536	@ tmp336,
	beq	.L119	@,
.L99:
	tst	r6, #2	@ D.33032,
	beq	.L100	@,
	ldr	r6, [ip, #472]	@ tmp330,
	bic	r6, r6, #-16777216	@ tmp331, tmp330,
	bic	r6, r6, #255	@ tmp331, tmp331,
	cmp	r6, #65536	@ tmp331,
	beq	.L120	@,
.L100:
	add	r4, sl, #1	@ i.1141, tmp283,
	add	r5, r5, #4	@ ivtmp.1123, tmp284,
	cmp	r8, r4	@ D.33030, i.1141
	bls	.L82	@,
.L81:
	ldr	ip, [r5, #0]	@ temp.1133, <variable>.DPB.fs_ref
	ldrb	r6, [ip, #2]	@ zero_extendqisi2	@ D.33032, <variable>.is_reference
	tst	r6, #1	@ D.33032,
	beq	.L77	@,
	ldr	r7, [ip, #436]	@ tmp200,
	bic	r7, r7, #-16777216	@ tmp198, tmp200,
	bic	r7, r7, #255	@ tmp198, tmp198,
	cmp	r7, #65536	@ tmp198,
	bne	.L77	@,
	ldr	r7, [ip, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L77	@,
	ldrb	r6, [ip, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L78	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L79	@,
.L78:
	add	r4, r4, #6592	@ tmp204, i.1141,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp204, tmp204,
	cmp	r3, #1	@ D.33014,
	movne	r2, #0	@, tmp209
	moveq	r2, #1	@, tmp209
	add	ip, r2, r1, asl #1	@, tmp210, tmp209, long_term_frame_idx,
	mov	r1, #1	@ tmp214,
	ldr	r3, [r0, r4, asl #2]	@ tmp206, <variable>.DPB.fs_ref
	str	ip, [r3, #444]	@ tmp210, <variable>.top_field.long_term_pic_num
	mov	ip, #0	@ tmp219,
	ldr	r2, [r0, r4, asl #2]	@ tmp213, <variable>.DPB.fs_ref
	strb	r1, [r2, #437]	@ tmp214, <variable>.top_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp218, <variable>.DPB.fs_ref
	strb	ip, [r3, #438]	@ tmp219, <variable>.top_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1138, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.33053, <variable>.frame.structure
	cmp	r2, #3	@ D.33053,
	cmpne	r2, #0	@, D.33053,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ D.33059, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, D.33059
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	ip, [r0, r4, asl #2]	@ temp.1140, <variable>.DPB.fs_ref
	ldreqb	r0, [ip, #438]	@ zero_extendqisi2	@ <variable>.top_field.is_short_term, <variable>.top_field.is_short_term
	streqb	r0, [ip, #402]	@ <variable>.top_field.is_short_term, <variable>.frame.is_short_term
	b	.L82	@
.L119:
	ldr	r7, [ip, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L99	@,
	ldrb	r6, [ip, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L78	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L100	@,
	b	.L78	@
.L118:
	ldr	r6, [ip, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L79	@,
	ldrb	r6, [ip, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L80	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L79	@,
	b	.L80	@
.L120:
	ldr	r6, [ip, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L100	@,
	ldrb	r6, [ip, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L80	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L100	@,
.L80:
	add	r4, r4, #6592	@ tmp243, i.1141,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r4, r4, #32	@ tmp243, tmp243,
	cmp	r3, #2	@ D.33014,
	movne	ip, #0	@, tmp248
	moveq	ip, #1	@, tmp248
	add	r1, ip, r1, asl #1	@, tmp249, tmp248, long_term_frame_idx,
	mov	ip, #1	@ tmp253,
	ldr	r3, [r0, r4, asl #2]	@ tmp245, <variable>.DPB.fs_ref
	str	r1, [r3, #480]	@ tmp249, <variable>.bottom_field.long_term_pic_num
	mov	r1, #0	@ tmp258,
	ldr	r2, [r0, r4, asl #2]	@ tmp252, <variable>.DPB.fs_ref
	strb	ip, [r2, #473]	@ tmp253, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, r4, asl #2]	@ tmp257, <variable>.DPB.fs_ref
	strb	r1, [r3, #474]	@ tmp258, <variable>.bottom_field.is_short_term
	ldr	r3, [r0, r4, asl #2]	@ temp.1149, <variable>.DPB.fs_ref
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ D.33079, <variable>.frame.structure
	cmp	r2, #3	@ D.33079,
	cmpne	r2, #0	@, D.33079,
	bne	.L82	@,
	ldrb	r1, [r3, #437]	@ zero_extendqisi2	@ temp.1150, <variable>.top_field.is_long_term
	ldrb	r2, [r3, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r2, r1	@ <variable>.bottom_field.is_long_term, temp.1150
	streqb	r2, [r3, #401]	@ <variable>.bottom_field.is_long_term, <variable>.frame.is_long_term
	ldreq	r2, [r0, r4, asl #2]	@ temp.1152, <variable>.DPB.fs_ref
	ldreqb	r0, [r2, #474]	@ zero_extendqisi2	@ <variable>.bottom_field.is_short_term, <variable>.bottom_field.is_short_term
	streqb	r0, [r2, #402]	@ <variable>.bottom_field.is_short_term, <variable>.frame.is_short_term
	b	.L82	@
.L111:
	ldr	sl, [ip, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	sl, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L92	@,
	ldrb	r6, [ip, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L78	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L93	@,
	b	.L78	@
.L113:
	ldr	r7, [ip, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r7, r2	@ <variable>.top_field.pic_num, picNumX
	bne	.L95	@,
	ldrb	r6, [ip, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #1	@ <variable>.bottom_field.is_long_term,
	bne	.L78	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L96	@,
	b	.L78	@
.L112:
	ldr	r6, [ip, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L93	@,
	ldrb	r6, [ip, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L80	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L93	@,
	b	.L80	@
.L114:
	ldr	r6, [ip, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r6, r2	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L96	@,
	ldrb	r6, [ip, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #1	@ <variable>.top_field.is_long_term,
	bne	.L80	@,
	ldr	r6, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L96	@,
	b	.L80	@
.L115:
	ldr	r5, [ip, #400]	@ tmp295,
	bic	r5, r5, #-16777216	@ tmp296, tmp295,
	bic	r5, r5, #255	@ tmp296, tmp296,
	cmp	r5, #65536	@ tmp296,
	bne	.L85	@,
	ldr	r5, [ip, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L85	@,
.L108:
	add	r4, r3, #6592	@ tmp163, i,
	str	r1, [ip, #520]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	add	r3, r4, #32	@ tmp163, tmp163,
	mov	ip, #1	@ tmp169,
	mov	r2, #0	@ tmp184,
	ldr	r4, [r0, r3, asl #2]	@ tmp165, <variable>.DPB.fs_ref
	str	r1, [r4, #408]	@ long_term_frame_idx, <variable>.frame.long_term_pic_num
	ldr	r1, [r0, r3, asl #2]	@ tmp168, <variable>.DPB.fs_ref
	strb	ip, [r1, #401]	@ tmp169, <variable>.frame.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp173, <variable>.DPB.fs_ref
	strb	ip, [r1, #437]	@ tmp169, <variable>.top_field.is_long_term
	ldr	r1, [r0, r3, asl #2]	@ tmp178, <variable>.DPB.fs_ref
	strb	ip, [r1, #473]	@ tmp169, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, r3, asl #2]	@ tmp183, <variable>.DPB.fs_ref
	strb	r2, [ip, #402]	@ tmp184, <variable>.frame.is_short_term
	ldr	r1, [r0, r3, asl #2]	@ tmp188, <variable>.DPB.fs_ref
	strb	r2, [r1, #438]	@ tmp184, <variable>.top_field.is_short_term
	ldr	r3, [r0, r3, asl #2]	@ tmp193, <variable>.DPB.fs_ref
	strb	r2, [r3, #474]	@ tmp184, <variable>.bottom_field.is_short_term
	b	.L82	@
.L116:
	ldr	r5, [ip, #400]	@ tmp299,
	bic	r5, r5, #-16777216	@ tmp300, tmp299,
	bic	r5, r5, #255	@ tmp300, tmp300,
	cmp	r5, #65536	@ tmp300,
	bne	.L87	@,
	ldr	r5, [ip, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r5, r2	@ <variable>.frame.pic_num, picNumX
	bne	.L87	@,
	b	.L108	@
	.fnend
	.size	MarkPicLTRef, .-MarkPicLTRef
	.align	2
	.global	SetFrmRepeatCount
	.type	SetFrmRepeatCount, %function
SetFrmRepeatCount:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r2, ip, #2032	@ tmp138, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r2, #15	@ tmp138, tmp138,
	cmp	r3, #4096	@ tmp138,
	bcc	.L122	@,
	movw	r3, #52864	@ tmp144,
	movw	r2, #52860	@ tmp142,
	ldr	r4, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	ip, #26624	@ tmp147,
	ldr	r2, [r0, r2]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	ip, [r0, ip]	@ <variable>.DPB.size, <variable>.DPB.size
	add	ip, ip, r4, lsr #1	@, D.33501, <variable>.DPB.size, <variable>.PicOutCounter,
	mov	r2, r2, lsr #1	@ D.33497, <variable>.NewPicCounter,
	add	r4, ip, #1	@ tmp149, D.33501,
	cmp	r2, r4	@ D.33497, tmp149
	bcc	.L122	@,
	mvn	ip, ip	@ tmp150, D.33501
	add	r2, ip, r2	@ tmp151, tmp150, D.33497
	cmp	r2, #1	@ tmp151,
	movhi	r2, #2	@ tmp152,
	movls	r2, #1	@ tmp157,
	strhi	r2, [r1, #84]	@ tmp152, <variable>.u32RepeatCnt
	strls	r2, [r1, #84]	@ tmp157, <variable>.u32RepeatCnt
	ldrhi	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	ldrls	r2, [r0, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	addhi	r2, r2, #4	@ tmp156, <variable>.PicOutCounter,
	addls	r2, r2, #2	@ tmp161, <variable>.PicOutCounter,
	str	r2, [r0, r3]	@ tmp161, <variable>.PicOutCounter
	b	.L126	@
.L122:
	mov	r0, #0	@ tmp163,
	str	r0, [r1, #84]	@ tmp163, <variable>.u32RepeatCnt
.L126:
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	SetFrmRepeatCount, .-SetFrmRepeatCount
	.align	2
	.global	SplitFrmToFlds
	.type	SplitFrmToFlds, %function
SplitFrmToFlds:
	.fnstart
.LFB1634:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldrb	ip, [r0, #402]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldrb	r4, [r0, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	mov	r5, #1	@ tmp138,
	ldr	r1, [r0, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	r2, [r0, #424]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	ldr	r3, [r0, #404]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	strb	r5, [r0, #436]	@ tmp138, <variable>.top_field.structure
	mov	r5, #2	@ tmp147,
	strb	r4, [r0, #473]	@ <variable>.frame.is_long_term, <variable>.bottom_field.is_long_term
	str	r3, [r0, #476]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	ip, [r0, #474]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	r5, [r0, #472]	@ tmp147, <variable>.bottom_field.structure
	str	r1, [r0, #492]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	r2, [r0, #496]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r4, [r0, #437]	@ <variable>.frame.is_long_term, <variable>.top_field.is_long_term
	strb	ip, [r0, #438]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	r1, [r0, #456]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	r2, [r0, #460]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r3, [r0, #440]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldmfd	sp!, {r4, r5}
	bx	lr
	.fnend
	.size	SplitFrmToFlds, .-SplitFrmToFlds
	.align	2
	.global	CombineFldsToFrm
	.type	CombineFldsToFrm, %function
CombineFldsToFrm:
	.fnstart
.LFB1635:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	ldr	r3, [r0, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	r4, [sp, #-4]!	@,
	.save {r4}
	cmp	r1, r3	@ <variable>.bottom_field.poc, <variable>.top_field.poc
	movlt	r3, r1	@ D.33610, <variable>.bottom_field.poc
	movge	r3, r3	@ D.33610, <variable>.top_field.poc
	ldr	r4, [r0, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r0, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldrb	r1, [r0, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	ldr	ip, [r0, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	add	r2, r4, r2	@ tmp144, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	cmp	r1, #0	@ <variable>.bottom_field.is_long_term,
	mov	r4, #3	@ tmp142,
	mov	r2, r2, lsr #1	@ D.33615, tmp144,
	str	r3, [r0, #524]	@ D.33610, <variable>.poc
	strb	r4, [r0, #400]	@ tmp142, <variable>.frame.structure
	str	ip, [r0, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	str	r3, [r0, #416]	@ D.33610, <variable>.frame.poc
	str	r2, [r0, #420]	@ D.33615, <variable>.frame.err_level
	beq	.L131	@,
	ldrb	ip, [r0, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	subs	r1, ip, #0	@ prephitmp.1230, <variable>.top_field.is_long_term,
	movne	r1, #1	@ prephitmp.1230
.L131:
	ldr	r3, [r0, #472]	@ tmp154,
	strb	r1, [r0, #401]	@ prephitmp.1230, <variable>.frame.is_long_term
	bic	ip, r3, #-16777216	@ tmp152, tmp154,
	bic	r3, ip, #255	@ tmp152, tmp152,
	cmp	r3, #0	@ tmp152,
	beq	.L132	@,
	ldr	ip, [r0, #436]	@ tmp157,
	bic	r3, ip, #-16777216	@ tmp155, tmp157,
	bic	ip, r3, #255	@ tmp155, tmp155,
	cmp	ip, #0	@ tmp155,
	bne	.L135	@,
.L132:
	mov	r1, #0	@ prephitmp.1219,
.L133:
	ldr	ip, [r0, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r0, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	str	r2, [r0, #544]	@ D.33615, <variable>.err_level
	cmp	ip, r3	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	movcs	r3, ip	@ D.33639, <variable>.bottom_field.pic_type
	strb	r1, [r0, #402]	@ prephitmp.1219, <variable>.frame.is_short_term
	str	r3, [r0, #540]	@ D.33639, <variable>.pic_type
	str	r3, [r0, #424]	@ D.33639, <variable>.frame.pic_type
	ldmfd	sp!, {r4}
	bx	lr
.L135:
	rsbs	r1, r1, #1	@ prephitmp.1219, prephitmp.1230
	movcc	r1, #0	@ prephitmp.1219
	b	.L133	@
	.fnend
	.size	CombineFldsToFrm, .-CombineFldsToFrm
	.align	2
	.global	GetShortTermPicPoint
	.type	GetShortTermPicPoint, %function
GetShortTermPicPoint:
	.fnstart
.LFB1650:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #20681	@ tmp144,
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L138	@,
	movw	r2, #20682	@ tmp146,
	ldrb	r3, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@ structure,
	moveq	r3, #1	@ structure,
.L138:
	movw	ip, #26632	@ tmp148,
	ldr	r5, [r0, ip]	@ D.34606, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ D.34606,
	beq	.L140	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1257, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.34606,
	add	r0, r0, #128	@ ivtmp.1257, ivtmp.1257,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L148	@,
	ldr	r2, [r0, #0]	@ D.34571, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L150	@,
	ldr	ip, [r2, #400]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #65536	@ tmp186,
	bne	.L150	@,
	ldr	ip, [r2, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	ip, r1	@ <variable>.frame.pic_num, picNum
	beq	.L167	@,
.L150:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.34606, i
	add	r0, r0, #4	@ ivtmp.1257, ivtmp.1257,
	bls	.L140	@,
	cmp	r4, #0	@ tmp168,
	beq	.L145	@,
	cmp	r3, #0	@ structure,
	beq	.L168	@,
	ldr	r2, [r0, #0]	@ temp.1260, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.34584, <variable>.is_reference
	tst	r4, #1	@ D.34584,
	beq	.L153	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #65536	@ tmp195,
	beq	.L172	@,
.L153:
	tst	r4, #2	@ D.34584,
	beq	.L154	@,
	ldr	r4, [r2, #472]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #65536	@ tmp192,
	bne	.L154	@,
	ldr	r4, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L165	@,
.L154:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1257, ivtmp.1257,
	cmp	r5, ip	@ D.34606, i
	bhi	.L145	@,
.L140:
	mov	r0, #0	@ D.34582,
.L143:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L148:
	ldr	r2, [r0, #0]	@ temp.1260, <variable>.DPB.fs_ref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.34584, <variable>.is_reference
	tst	ip, #1	@ D.34584,
	beq	.L149	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #65536	@ tmp182,
	beq	.L173	@,
.L149:
	tst	ip, #2	@ D.34584,
	beq	.L150	@,
	ldr	ip, [r2, #472]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #65536	@ tmp179,
	bne	.L150	@,
	ldr	ip, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L150	@,
.L165:
	add	r0, r2, #472	@ D.34582, temp.1260,
	b	.L143	@
.L174:
	ldr	r2, [r0, #0]	@ D.34571, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L142	@,
	ldr	r4, [r2, #400]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #65536	@ tmp151,
	bne	.L142	@,
	ldr	r4, [r2, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	beq	.L167	@,
.L142:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1257,
	bne	.L157	@,
.L176:
	ldr	r2, [r0, #4]	@ D.34571, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L159	@,
	ldr	r0, [r2, #400]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #65536	@ tmp212,
	bne	.L159	@,
	ldr	r0, [r2, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, r1	@ <variable>.frame.pic_num, picNum
	beq	.L167	@,
.L159:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1257, tmp170,
	cmp	r5, ip	@ D.34606, i
	bls	.L140	@,
.L145:
	cmp	r3, #0	@ structure,
	beq	.L174	@,
	ldr	r2, [r0, #0]	@ temp.1260, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.34584, <variable>.is_reference
	tst	r4, #1	@ D.34584,
	beq	.L144	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #65536	@ tmp156,
	beq	.L175	@,
.L144:
	tst	r4, #2	@ D.34584,
	beq	.L142	@,
	ldr	r4, [r2, #472]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #65536	@ tmp161,
	bne	.L142	@,
	ldr	r4, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r4, r1	@ <variable>.bottom_field.pic_num, picNum
	beq	.L165	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1257,
	beq	.L176	@,
.L157:
	ldr	r2, [r0, #4]	@ temp.1260, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.34584, <variable>.is_reference
	tst	r0, #1	@ D.34584,
	beq	.L158	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #65536	@ tmp208,
	beq	.L177	@,
.L158:
	tst	r0, #2	@ D.34584,
	beq	.L159	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #65536	@ tmp205,
	bne	.L159	@,
	ldr	r0, [r2, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r0, r1	@ <variable>.bottom_field.pic_num, picNum
	bne	.L159	@,
	add	r0, r2, #472	@ D.34582, temp.1260,
	b	.L143	@
.L175:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L144	@,
	add	r0, r2, #436	@ D.34582, temp.1260,
	b	.L143	@
.L177:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L158	@,
	add	r0, r2, #436	@ D.34582, temp.1260,
	b	.L143	@
.L168:
	ldr	r2, [r0, #0]	@ D.34571, <variable>.DPB.fs_ref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L154	@,
	ldr	r4, [r2, #400]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #65536	@ tmp199,
	bne	.L154	@,
	ldr	r4, [r2, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, r1	@ <variable>.frame.pic_num, picNum
	bne	.L154	@,
.L167:
	add	r0, r2, #400	@ D.34582, D.34571,
	b	.L143	@
.L173:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L149	@,
	add	r0, r2, #436	@ D.34582, temp.1260,
	b	.L143	@
.L172:
	ldr	r6, [r2, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r6, r1	@ <variable>.top_field.pic_num, picNum
	bne	.L153	@,
	add	r0, r2, #436	@ D.34582, temp.1260,
	b	.L143	@
	.fnend
	.size	GetShortTermPicPoint, .-GetShortTermPicPoint
	.align	2
	.global	GetLongTermPicPoint
	.type	GetLongTermPicPoint, %function
GetLongTermPicPoint:
	.fnstart
.LFB1651:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #20681	@ tmp144,
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L180	@,
	movw	r2, #20682	@ tmp146,
	ldrb	r3, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@ structure,
	moveq	r3, #1	@ structure,
.L180:
	movw	ip, #26636	@ tmp148,
	ldr	r5, [r0, ip]	@ D.34664, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, #0	@ D.34664,
	beq	.L182	@,
	cmp	r3, #0	@ structure,
	add	r0, r0, #26368	@ ivtmp.1288, pH264Ctx,
	sub	r2, r5, #1	@ tmp166, D.34664,
	add	r0, r0, #192	@ ivtmp.1288, ivtmp.1288,
	and	r4, r2, #1	@ tmp168, tmp166,
	bne	.L190	@,
	ldr	r2, [r0, #0]	@ D.34629, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L192	@,
	ldr	ip, [r2, #400]	@ tmp185,
	bic	ip, ip, #-16777216	@ tmp186, tmp185,
	bic	ip, ip, #255	@ tmp186, tmp186,
	cmp	ip, #256	@ tmp186,
	bne	.L192	@,
	ldr	ip, [r2, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L209	@,
.L192:
	mov	ip, #1	@ i,
	cmp	r5, ip	@ D.34664, i
	add	r0, r0, #4	@ ivtmp.1288, ivtmp.1288,
	bls	.L182	@,
	cmp	r4, #0	@ tmp168,
	beq	.L187	@,
	cmp	r3, #0	@ structure,
	beq	.L210	@,
	ldr	r2, [r0, #0]	@ temp.1291, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.34642, <variable>.is_reference
	tst	r4, #1	@ D.34642,
	beq	.L195	@,
	ldr	r6, [r2, #436]	@ tmp194,
	bic	r6, r6, #-16777216	@ tmp195, tmp194,
	bic	r6, r6, #255	@ tmp195, tmp195,
	cmp	r6, #256	@ tmp195,
	beq	.L214	@,
.L195:
	tst	r4, #2	@ D.34642,
	beq	.L196	@,
	ldr	r4, [r2, #472]	@ tmp191,
	bic	r4, r4, #-16777216	@ tmp192, tmp191,
	bic	r4, r4, #255	@ tmp192, tmp192,
	cmp	r4, #256	@ tmp192,
	bne	.L196	@,
	ldr	r4, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L207	@,
.L196:
	add	ip, ip, #1	@ i, i,
	add	r0, r0, #4	@ ivtmp.1288, ivtmp.1288,
	cmp	r5, ip	@ D.34664, i
	bhi	.L187	@,
.L182:
	mov	r0, #0	@ D.34640,
.L185:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L190:
	ldr	r2, [r0, #0]	@ temp.1291, <variable>.DPB.fs_ltref
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ D.34642, <variable>.is_reference
	tst	ip, #1	@ D.34642,
	beq	.L191	@,
	ldr	r6, [r2, #436]	@ tmp181,
	bic	r6, r6, #-16777216	@ tmp182, tmp181,
	bic	r6, r6, #255	@ tmp182, tmp182,
	cmp	r6, #256	@ tmp182,
	beq	.L215	@,
.L191:
	tst	ip, #2	@ D.34642,
	beq	.L192	@,
	ldr	ip, [r2, #472]	@ tmp178,
	bic	ip, ip, #-16777216	@ tmp179, tmp178,
	bic	ip, ip, #255	@ tmp179, tmp179,
	cmp	ip, #256	@ tmp179,
	bne	.L192	@,
	ldr	ip, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	ip, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L192	@,
.L207:
	add	r0, r2, #472	@ D.34640, temp.1291,
	b	.L185	@
.L216:
	ldr	r2, [r0, #0]	@ D.34629, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L184	@,
	ldr	r4, [r2, #400]	@ tmp153,
	bic	r4, r4, #-16777216	@ tmp151, tmp153,
	bic	r4, r4, #255	@ tmp151, tmp151,
	cmp	r4, #256	@ tmp151,
	bne	.L184	@,
	ldr	r4, [r2, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L209	@,
.L184:
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1288,
	bne	.L199	@,
.L218:
	ldr	r2, [r0, #4]	@ D.34629, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L201	@,
	ldr	r0, [r2, #400]	@ tmp211,
	bic	r0, r0, #-16777216	@ tmp212, tmp211,
	bic	r0, r0, #255	@ tmp212, tmp212,
	cmp	r0, #256	@ tmp212,
	bne	.L201	@,
	ldr	r0, [r2, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r0, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	beq	.L209	@,
.L201:
	add	ip, ip, #1	@ i, tmp169,
	add	r0, r4, #4	@ ivtmp.1288, tmp170,
	cmp	r5, ip	@ D.34664, i
	bls	.L182	@,
.L187:
	cmp	r3, #0	@ structure,
	beq	.L216	@,
	ldr	r2, [r0, #0]	@ temp.1291, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ D.34642, <variable>.is_reference
	tst	r4, #1	@ D.34642,
	beq	.L186	@,
	ldr	r6, [r2, #436]	@ tmp158,
	bic	r6, r6, #-16777216	@ tmp156, tmp158,
	bic	r6, r6, #255	@ tmp156, tmp156,
	cmp	r6, #256	@ tmp156,
	beq	.L217	@,
.L186:
	tst	r4, #2	@ D.34642,
	beq	.L184	@,
	ldr	r4, [r2, #472]	@ tmp163,
	bic	r4, r4, #-16777216	@ tmp161, tmp163,
	bic	r4, r4, #255	@ tmp161, tmp161,
	cmp	r4, #256	@ tmp161,
	bne	.L184	@,
	ldr	r4, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r4, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	beq	.L207	@,
	cmp	r3, #0	@ structure,
	add	ip, ip, #1	@ tmp169, i,
	add	r4, r0, #4	@ tmp170, ivtmp.1288,
	beq	.L218	@,
.L199:
	ldr	r2, [r0, #4]	@ temp.1291, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ D.34642, <variable>.is_reference
	tst	r0, #1	@ D.34642,
	beq	.L200	@,
	ldr	r6, [r2, #436]	@ tmp207,
	bic	r6, r6, #-16777216	@ tmp208, tmp207,
	bic	r6, r6, #255	@ tmp208, tmp208,
	cmp	r6, #256	@ tmp208,
	beq	.L219	@,
.L200:
	tst	r0, #2	@ D.34642,
	beq	.L201	@,
	ldr	r0, [r2, #472]	@ tmp204,
	bic	r0, r0, #-16777216	@ tmp205, tmp204,
	bic	r0, r0, #255	@ tmp205, tmp205,
	cmp	r0, #256	@ tmp205,
	bne	.L201	@,
	ldr	r0, [r2, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r0, r1	@ <variable>.bottom_field.long_term_pic_num, LongtermPicNum
	bne	.L201	@,
	add	r0, r2, #472	@ D.34640, temp.1291,
	b	.L185	@
.L217:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L186	@,
	add	r0, r2, #436	@ D.34640, temp.1291,
	b	.L185	@
.L219:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L200	@,
	add	r0, r2, #436	@ D.34640, temp.1291,
	b	.L185	@
.L210:
	ldr	r2, [r0, #0]	@ D.34629, <variable>.DPB.fs_ltref
	ldrb	r4, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L196	@,
	ldr	r4, [r2, #400]	@ tmp198,
	bic	r4, r4, #-16777216	@ tmp199, tmp198,
	bic	r4, r4, #255	@ tmp199, tmp199,
	cmp	r4, #256	@ tmp199,
	bne	.L196	@,
	ldr	r4, [r2, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r1	@ <variable>.frame.long_term_pic_num, LongtermPicNum
	bne	.L196	@,
.L209:
	add	r0, r2, #400	@ D.34640, D.34629,
	b	.L185	@
.L215:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L191	@,
	add	r0, r2, #436	@ D.34640, temp.1291,
	b	.L185	@
.L214:
	ldr	r6, [r2, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r1	@ <variable>.top_field.long_term_pic_num, LongtermPicNum
	bne	.L195	@,
	add	r0, r2, #436	@ D.34640, temp.1291,
	b	.L185	@
	.fnend
	.size	GetLongTermPicPoint, .-GetLongTermPicPoint
	.align	2
	.global	ReorderSTList
	.type	ReorderSTList, %function
ReorderSTList:
	.fnstart
.LFB1652:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [sp, #24]	@ refIdxLX, refIdxLX
	mov	r5, r1	@ RefPicListX, RefPicListX
	mov	r1, r3	@, picNumLX
	mov	r6, r3	@ picNumLX, picNumLX
	mov	r7, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	bl	GetShortTermPicPoint	@
	ldr	r3, [r4, #0]	@ D.34690,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.34690
	ble	.L221	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1338, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1336, RefPicListX, ivtmp.1333,
.L222:
	ldr	r3, [r2], #-4	@ tmp155,
	mov	ip, r7	@ cIdx.1340, ivtmp.1333
	sub	r7, r7, #1	@ ivtmp.1333, ivtmp.1333,
	str	r3, [r1], #-4	@ tmp155,
	ldr	r3, [r4, #0]	@ D.34690,* refIdxLX
	cmp	r3, ip	@ D.34690, cIdx.1340
	blt	.L222	@,
.L221:
	add	r1, r3, #1	@ cIdx.1339, D.34690,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1339
	str	r1, [r4, #0]	@ cIdx.1339,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1329, RefPicListX, cIdx.1339,
	rsb	r0, r1, r8	@ tmp159, cIdx.1339, cIdx
	and	ip, r0, #1	@ tmp160, tmp159,
	mov	r3, r1	@ nIdx, cIdx.1339
	ldr	r0, [r2, #0]	@ D.34695,* ivtmp.1329
	cmp	r0, #0	@ D.34695,
	beq	.L230	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L243	@,
.L231:
	add	r3, r1, #1	@ nIdx, cIdx.1339,
	str	r0, [r5, r1, asl #2]	@ D.34695,* RefPicListX
.L230:
	add	r1, r1, #1	@ cIdx.1339, cIdx.1339,
	add	r2, r2, #4	@ ivtmp.1329, ivtmp.1329,
	cmp	r8, r1	@ cIdx, cIdx.1339
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L246:
	cmp	ip, #0	@ tmp160,
	beq	.L226	@,
	ldr	r0, [r2, #0]	@ D.34695,* ivtmp.1329
	cmp	r0, #0	@ D.34695,
	beq	.L233	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	beq	.L244	@,
.L234:
	str	r0, [r5, r3, asl #2]	@ D.34695,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L233:
	add	r1, r1, #1	@ cIdx.1339, cIdx.1339,
	add	r2, r2, #4	@ ivtmp.1329, ivtmp.1329,
	cmp	r8, r1	@ cIdx, cIdx.1339
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	ldr	r0, [r2, #0]	@ D.34695,* ivtmp.1329
	add	r1, r1, #1	@ tmp161, cIdx.1339,
	add	ip, r2, #4	@ tmp162, ivtmp.1329,
	cmp	r0, #0	@ D.34695,
	beq	.L224	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L225	@,
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	beq	.L224	@,
.L225:
	str	r0, [r5, r3, asl #2]	@ D.34695,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L224:
	ldr	r2, [r2, #4]	@ D.34695,
	cmp	r2, #0	@ D.34695,
	beq	.L237	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	bne	.L238	@,
	ldr	lr, [r2, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	lr, r6	@ <variable>.pic_num, picNumLX
	beq	.L237	@,
.L238:
	str	r2, [r5, r3, asl #2]	@ D.34695,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L237:
	add	r1, r1, #1	@ cIdx.1339, tmp161,
	add	r2, ip, #4	@ ivtmp.1329, tmp162,
	cmp	r8, r1	@ cIdx, cIdx.1339
	bge	.L226	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L243:
	ldr	r4, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	r4, r6	@ <variable>.pic_num, picNumLX
	bne	.L231	@,
	add	r1, r1, #1	@ cIdx.1339, cIdx.1339,
	add	r2, r2, #4	@ ivtmp.1329, ivtmp.1329,
	cmp	r8, r1	@ cIdx, cIdx.1339
	bge	.L246	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L244:
	ldr	ip, [r0, #12]	@ <variable>.pic_num, <variable>.pic_num
	cmp	ip, r6	@ <variable>.pic_num, picNumLX
	bne	.L234	@,
	b	.L233	@
	.fnend
	.size	ReorderSTList, .-ReorderSTList
	.align	2
	.global	ReorderLTList
	.type	ReorderLTList, %function
ReorderLTList:
	.fnstart
.LFB1653:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r4, [sp, #24]	@ refIdxLX, refIdxLX
	mov	r5, r1	@ RefPicListX, RefPicListX
	mov	r1, r3	@, LongTermPicNum
	mov	r6, r3	@ LongTermPicNum, LongTermPicNum
	mov	r7, r2	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	bl	GetLongTermPicPoint	@
	ldr	r3, [r4, #0]	@ D.34732,* refIdxLX
	add	r8, r7, #1	@ cIdx, num_ref_idx_lX_active_minus1,
	cmp	r8, r3	@ cIdx, D.34732
	ble	.L248	@,
	add	r1, r5, r8, asl #2	@, ivtmp.1386, RefPicListX, cIdx,
	add	r2, r5, r7, asl #2	@, ivtmp.1384, RefPicListX, ivtmp.1381,
.L249:
	ldr	r3, [r2], #-4	@ tmp151,
	mov	ip, r7	@ cIdx.1388, ivtmp.1381
	sub	r7, r7, #1	@ ivtmp.1381, ivtmp.1381,
	str	r3, [r1], #-4	@ tmp151,
	ldr	r3, [r4, #0]	@ D.34732,* refIdxLX
	cmp	r3, ip	@ D.34732, cIdx.1388
	blt	.L249	@,
.L248:
	add	r1, r3, #1	@ cIdx.1387, D.34732,
	str	r0, [r5, r3, asl #2]	@ picLX,* RefPicListX
	cmp	r8, r1	@ cIdx, cIdx.1387
	str	r1, [r4, #0]	@ cIdx.1387,* refIdxLX
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r2, r5, r1, asl #2	@, ivtmp.1377, RefPicListX, cIdx.1387,
	rsb	r0, r1, r8	@ tmp155, cIdx.1387, cIdx
	and	ip, r0, #1	@ tmp156, tmp155,
	mov	r3, r1	@ nIdx, cIdx.1387
	ldr	r0, [r2, #0]	@ D.34737,* ivtmp.1377
	cmp	r0, #0	@ D.34737,
	beq	.L257	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	bne	.L270	@,
.L258:
	add	r3, r1, #1	@ nIdx, cIdx.1387,
	str	r0, [r5, r1, asl #2]	@ D.34737,* RefPicListX
.L257:
	add	r1, r1, #1	@ cIdx.1387, cIdx.1387,
	add	r2, r2, #4	@ ivtmp.1377, ivtmp.1377,
	cmp	r8, r1	@ cIdx, cIdx.1387
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L273:
	cmp	ip, #0	@ tmp156,
	beq	.L253	@,
	ldr	r0, [r2, #0]	@ D.34737,* ivtmp.1377
	cmp	r0, #0	@ D.34737,
	beq	.L260	@,
	ldrb	lr, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #0	@ <variable>.is_long_term,
	bne	.L271	@,
.L261:
	str	r0, [r5, r3, asl #2]	@ D.34737,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L260:
	add	r1, r1, #1	@ cIdx.1387, cIdx.1387,
	add	r2, r2, #4	@ ivtmp.1377, ivtmp.1377,
	cmp	r8, r1	@ cIdx, cIdx.1387
	ldmltfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L253:
	ldr	r0, [r2, #0]	@ D.34737,* ivtmp.1377
	add	r1, r1, #1	@ tmp157, cIdx.1387,
	add	ip, r2, #4	@ tmp158, ivtmp.1377,
	cmp	r0, #0	@ D.34737,
	beq	.L251	@,
	ldrb	r4, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r4, #0	@ <variable>.is_long_term,
	beq	.L252	@,
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L251	@,
.L252:
	str	r0, [r5, r3, asl #2]	@ D.34737,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L251:
	ldr	r2, [r2, #4]	@ D.34737,
	cmp	r2, #0	@ D.34737,
	beq	.L264	@,
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r0, #0	@ <variable>.is_long_term,
	beq	.L265	@,
	ldr	lr, [r2, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	lr, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	beq	.L264	@,
.L265:
	str	r2, [r5, r3, asl #2]	@ D.34737,* RefPicListX
	add	r3, r3, #1	@ nIdx, nIdx,
.L264:
	add	r1, r1, #1	@ cIdx.1387, tmp157,
	add	r2, ip, #4	@ ivtmp.1377, tmp158,
	cmp	r8, r1	@ cIdx, cIdx.1387
	bge	.L253	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L270:
	ldr	r4, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	r4, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L258	@,
	add	r1, r1, #1	@ cIdx.1387, cIdx.1387,
	add	r2, r2, #4	@ ivtmp.1377, ivtmp.1377,
	cmp	r8, r1	@ cIdx, cIdx.1387
	bge	.L273	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L271:
	ldr	ip, [r0, #8]	@ <variable>.long_term_pic_num, <variable>.long_term_pic_num
	cmp	ip, r6	@ <variable>.long_term_pic_num, LongTermPicNum
	bne	.L261	@,
	b	.L260	@
	.fnend
	.size	ReorderLTList, .-ReorderLTList
	.align	2
	.global	ReorderRefPiclist
	.type	ReorderRefPiclist, %function
ReorderRefPiclist:
	.fnstart
.LFB1654:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20681	@ tmp152,
	.pad #28
	sub	sp, sp, #28	@,,
	ldrb	r2, [r5, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	mov	r6, r3	@ num_ref_idx_lX_active_minus1, num_ref_idx_lX_active_minus1
	mov	r8, r1	@ list, list
	mov	r3, #0	@ tmp151,
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [sp, #20]	@ tmp151, refIdxLX
	ldr	r9, [sp, #64]	@ reordering_of_pic_nums_idc, reordering_of_pic_nums_idc
	beq	.L275	@,
	movw	r1, #20692	@ tmp155,
	movw	ip, #13584	@ tmp157,
	ldr	r3, [r5, r1]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r0, #2208	@ tmp159,
	ldr	fp, [r5, ip]	@ <variable>.PPS, <variable>.PPS
	movw	r1, #20700	@ tmp171,
	movw	r2, #13580	@ tmp163,
	ldr	r2, [r5, r2]	@ <variable>.SPS, <variable>.SPS
	mla	ip, r0, r3, fp	@ tmp160, tmp159, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	fp, [r5, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	mov	r0, fp, asl #1	@ tmp172, <variable>.CurrSlice.frame_num,
	mov	fp, #4000	@ tmp165,
	add	r1, r0, #1	@, tmp172,
	str	r1, [sp, #8]	@, %sfp
	ldr	r0, [ip, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r3, fp, r0, r2	@ tmp166, tmp165, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	fp, #2	@ tmp169,
	ldr	ip, [r3, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r1, ip, #4	@ tmp167, <variable>.log2_max_frame_num_minus4,
	mov	fp, fp, asl r1	@ maxPicNum, tmp169,
.L285:
	adds	r3, r6, #2	@, num_ref_idx_lX_active_minus1,
	str	r3, [sp, #12]	@, %sfp
	beq	.L286	@,
	ldr	r3, [r9, #0]	@ D.34799,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.34799,
	beq	.L286	@,
	tst	r6, #1	@ num_ref_idx_lX_active_minus1,
	mov	r2, #0	@ D.34797,
	ldr	r7, [sp, #8]	@ picNumLXPred, %sfp
	mov	r4, r2	@ i, D.34797
	add	sl, sp, #20	@ tmp198,,
	bne	.L277	@,
	cmp	r3, #1	@ D.34799,
	bls	.L300	@,
	ldr	r4, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	ldr	r3, [r4, #0]	@ tmp206,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L301:
	mov	r2, #4	@ D.34797,
	mov	r4, #1	@ i,
	ldr	r3, [r9, r2]	@ D.34799,* D.34797
	cmp	r3, #3	@ D.34799,
	bne	.L277	@,
.L286:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L278:
	ldr	r1, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	ldr	r3, [r1, r2]	@ tmp179,* D.34797
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L283:
	ldr	r3, [sp, #12]	@, %sfp
	add	r4, r4, #1	@ tmp202, i,
	cmp	r3, r4	@, tmp202
	bls	.L286	@,
	ldr	r3, [r9, r4, asl #2]	@ D.34799,* reordering_of_pic_nums_idc
	cmp	r3, #3	@ D.34799,
	beq	.L286	@,
	cmp	r3, #1	@ D.34799,
	bls	.L305	@,
	ldr	lr, [sp, #72]	@, long_term_pic_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	ldr	r3, [lr, r4, asl #2]	@ tmp213,
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderLTList	@
.L306:
	add	r4, r4, #1	@ i, tmp202,
	ldr	r3, [r9, r4, asl #2]	@ D.34799,* reordering_of_pic_nums_idc
	mov	r2, r4, asl #2	@ D.34797, i,
	cmp	r3, #3	@ D.34799,
	beq	.L286	@,
.L277:
	cmp	r3, #1	@ D.34799,
	bhi	.L278	@,
	cmp	r3, #0	@ D.34799,
	bne	.L279	@,
	ldr	r0, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	lr, [r0, r2]	@ tmp175,* D.34797
	mvn	r3, lr	@ tmp174, tmp175
	adds	r7, r3, r7	@ picNumLXNoWrap, tmp174, picNumLXPred
	addmi	r7, r7, fp	@ picNumLXNoWrap, picNumLXNoWrap, maxPicNum
.L280:
	ldr	r2, [sp, #8]	@, %sfp
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	str	sl, [sp, #0]	@ tmp198,
	cmp	r2, r7	@, picNumLXNoWrap
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	rsblt	r3, fp, r7	@ picNumLX, maxPicNum, picNumLXNoWrap
	movge	r3, r7	@ picNumLX, picNumLXNoWrap
	bl	ReorderSTList	@
	b	.L283	@
.L305:
	cmp	r3, #0	@ D.34799,
	bne	.L294	@,
	ldr	r2, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	ip, [r2, r4, asl #2]	@ tmp218,
	mvn	r1, ip	@ tmp219, tmp218
	adds	r7, r1, r7	@ picNumLXNoWrap, tmp219, picNumLXPred
	addmi	r7, r7, fp	@ picNumLXNoWrap, picNumLXNoWrap, maxPicNum
.L296:
	ldr	r3, [sp, #8]	@, %sfp
	cmp	r3, r7	@, picNumLXNoWrap
	rsblt	r3, fp, r7	@ picNumLX, maxPicNum, picNumLXNoWrap
	movge	r3, r7	@ picNumLX, picNumLXNoWrap
.L309:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderSTList	@
	b	.L306	@
.L279:
	ldr	ip, [sp, #68]	@, abs_diff_pic_num_minus1
	add	r7, r7, #1	@ tmp176, picNumLXPred,
	ldr	r3, [ip, r2]	@ tmp177,* D.34797
	add	r7, r7, r3	@ picNumLXNoWrap, tmp176, tmp177
	cmp	fp, r7	@ maxPicNum, picNumLXNoWrap
	rsble	r7, fp, r7	@ picNumLXNoWrap, maxPicNum, picNumLXNoWrap
	b	.L280	@
.L294:
	ldr	r0, [sp, #68]	@, abs_diff_pic_num_minus1
	add	r7, r7, #1	@ tmp216, picNumLXPred,
	ldr	r3, [r0, r4, asl #2]	@ tmp217,
	add	r7, r7, r3	@ picNumLXNoWrap, tmp216, tmp217
	cmp	fp, r7	@ maxPicNum, picNumLXNoWrap
	rsble	r7, fp, r7	@ picNumLXNoWrap, maxPicNum, picNumLXNoWrap
	b	.L296	@
.L275:
	movw	fp, #20692	@ tmp182,
	movw	ip, #13584	@ tmp184,
	ldr	r3, [r5, fp]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r0, #2208	@ tmp186,
	ldr	r1, [r5, ip]	@ <variable>.PPS, <variable>.PPS
	movw	fp, #20700	@ tmp197,
	movw	r2, #13580	@ tmp190,
	ldr	r2, [r5, r2]	@ <variable>.SPS, <variable>.SPS
	mla	ip, r0, r3, r1	@ tmp187, tmp186, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r0, [r5, fp]	@, <variable>.CurrSlice.frame_num
	mov	r1, #4000	@ tmp192,
	str	r0, [sp, #8]	@, %sfp
	ldr	fp, [ip, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r3, r1, fp, r2	@ tmp193, tmp192, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	fp, #1	@ tmp196,
	ldr	ip, [r3, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r0, ip, #4	@ tmp194, <variable>.log2_max_frame_num_minus4,
	mov	fp, fp, asl r0	@ maxPicNum, tmp196,
	b	.L285	@
.L300:
	cmp	r3, #0	@ D.34799,
	bne	.L288	@,
	ldr	r3, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r4, [r3, #0]	@ tmp211,
	mvn	r2, r4	@ tmp212, tmp211
	adds	r7, r2, ip	@ picNumLXNoWrap, tmp212,
	addmi	r7, r7, fp	@ picNumLXNoWrap, picNumLXNoWrap, maxPicNum
.L290:
	ldr	lr, [sp, #8]	@, %sfp
	cmp	lr, r7	@, picNumLXNoWrap
	rsblt	r3, fp, r7	@ picNumLX, maxPicNum, picNumLXNoWrap
	movge	r3, r7	@ picNumLX, picNumLXNoWrap
.L304:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, list
	mov	r2, r6	@, num_ref_idx_lX_active_minus1
	str	sl, [sp, #0]	@ tmp198,
	bl	ReorderSTList	@
	b	.L301	@
.L288:
	ldr	r1, [sp, #68]	@, abs_diff_pic_num_minus1
	ldr	r0, [sp, #8]	@, %sfp
	ldr	r3, [r1, #0]	@ tmp210,
	add	r7, r0, #1	@ tmp209,,
	add	r7, r7, r3	@ picNumLXNoWrap, tmp209, tmp210
	cmp	fp, r7	@ maxPicNum, picNumLXNoWrap
	rsble	r7, fp, r7	@ picNumLXNoWrap, maxPicNum, picNumLXNoWrap
	b	.L290	@
	.fnend
	.size	ReorderRefPiclist, .-ReorderRefPiclist
	.align	2
	.global	ReorderListX
	.type	ReorderListX, %function
ReorderListX:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #20680	@ tmp134,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldrb	r3, [r0, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L316	@,
	movw	ip, #19888	@ tmp136,
	ldrb	r2, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l0, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l0,
	bne	.L317	@,
.L314:
	movw	r3, #20680	@ tmp154,
	mov	r0, #20736	@ tmp151,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #20724	@ tmp150,
	ldr	r2, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	add	r0, r2, #1	@ tmp153, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	str	r0, [r4, ip]	@ tmp153, <variable>.CurrSlice.listXsize
	bne	.L316	@,
	movw	r2, #19889	@ tmp156,
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l1, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	ip, #0	@ <variable>.CurrReorder.ref_pic_list_reordering_flag_l1,
	bne	.L318	@,
.L315:
	movw	r1, #20740	@ tmp172,
	movw	r3, #20728	@ tmp171,
	ldr	ip, [r4, r1]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r2, ip, #1	@ tmp174, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	str	r2, [r4, r3]	@ tmp174, <variable>.CurrSlice.listXsize
.L316:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, pc}
.L317:
	add	r1, r0, #26880	@, pH264Ctx,
	add	r2, r0, #20480	@, pH264Ctx,
	mov	r3, #20736	@ tmp142,
	add	r5, r0, #19712	@ tmp144, pH264Ctx,
	ldr	r3, [r0, r3]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	lr, r0, #19968	@ tmp146, pH264Ctx,
	add	ip, r0, #20224	@ tmp148, pH264Ctx,
	add	r1, r1, #156	@,,
	add	r2, r2, #244	@,,
	add	r5, r5, #180	@ tmp144, tmp144,
	add	lr, lr, #188	@ tmp146, tmp146,
	stmia	sp, {r5, lr}	@ phole stm
	add	lr, ip, #196	@ tmp148, tmp148,
	str	lr, [sp, #8]	@ tmp148,
	bl	ReorderRefPiclist	@
	b	.L314	@
.L318:
	add	r5, r4, #20480	@ tmp162, pH264Ctx,
	movw	r0, #20740	@ tmp163,
	add	r1, r4, #27136	@, pH264Ctx,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r2, r5, #248	@, tmp162,
	add	lr, r4, #19968	@ tmp165, pH264Ctx,
	add	ip, r4, #20224	@ tmp167, pH264Ctx,
	add	r1, r1, #32	@,,
	mov	r0, r4	@, pH264Ctx
	add	lr, lr, #56	@ tmp165, tmp165,
	add	r5, r5, #68	@ tmp169, tmp162,
	str	lr, [sp, #0]	@ tmp165,
	str	r5, [sp, #8]	@ tmp169,
	add	lr, ip, #64	@ tmp167, tmp167,
	str	lr, [sp, #4]	@ tmp167,
	bl	ReorderRefPiclist	@
	b	.L315	@
	.fnend
	.size	ReorderListX, .-ReorderListX
	.align	2
	.global	IsSTRefFlg
	.type	IsSTRefFlg, %function
IsSTRefFlg:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp138,* s
	bic	r1, r2, #-16777216	@ tmp136, tmp138,
	bic	r0, r1, #255	@ tmp136, tmp136,
	cmp	r0, #65536	@ tmp136,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	IsSTRefFlg, .-IsSTRefFlg
	.align	2
	.global	IsLTRefFlg
	.type	IsLTRefFlg, %function
IsLTRefFlg:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp138,* s
	bic	r1, r2, #-16777216	@ tmp136, tmp138,
	bic	r0, r1, #255	@ tmp136, tmp136,
	cmp	r0, #256	@ tmp136,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	IsLTRefFlg, .-IsLTRefFlg
	.align	2
	.global	compare_pic_by_pic_num_desc
	.type	compare_pic_by_pic_num_desc, %function
compare_pic_by_pic_num_desc:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #12]	@ D.34875, <variable>.pic_num
	ldr	r3, [r1, #12]	@ D.34878, <variable>.pic_num
	cmp	r2, r3	@ D.34875, D.34878
	movlt	r0, #1	@ D.34881,
	bxlt	lr	@
	movle	r0, #0	@ D.34881,
	mvngt	r0, #0	@ D.34881,
	bx	lr	@
	.fnend
	.size	compare_pic_by_pic_num_desc, .-compare_pic_by_pic_num_desc
	.align	2
	.global	compare_pic_by_lt_pic_num_asc
	.type	compare_pic_by_lt_pic_num_asc, %function
compare_pic_by_lt_pic_num_asc:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #8]	@ D.34890, <variable>.long_term_pic_num
	ldr	r3, [r1, #8]	@ D.34893, <variable>.long_term_pic_num
	cmp	r2, r3	@ D.34890, D.34893
	mvnlt	r0, #0	@ D.34896,
	bxlt	lr	@
	movle	r0, #0	@, D.34896
	movgt	r0, #1	@, D.34896
	bx	lr	@
	.fnend
	.size	compare_pic_by_lt_pic_num_asc, .-compare_pic_by_lt_pic_num_asc
	.align	2
	.global	compare_fs_by_frame_num_desc
	.type	compare_fs_by_frame_num_desc, %function
compare_fs_by_frame_num_desc:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #516]	@ D.34905, <variable>.frame_num_wrap
	ldr	r3, [r1, #516]	@ D.34908, <variable>.frame_num_wrap
	cmp	r2, r3	@ D.34905, D.34908
	movlt	r0, #1	@ D.34911,
	bxlt	lr	@
	movle	r0, #0	@ D.34911,
	mvngt	r0, #0	@ D.34911,
	bx	lr	@
	.fnend
	.size	compare_fs_by_frame_num_desc, .-compare_fs_by_frame_num_desc
	.align	2
	.global	compare_fs_by_lt_pic_idx_asc
	.type	compare_fs_by_lt_pic_idx_asc, %function
compare_fs_by_lt_pic_idx_asc:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #520]	@ D.34920, <variable>.long_term_frame_idx
	ldr	r3, [r1, #520]	@ D.34923, <variable>.long_term_frame_idx
	cmp	r2, r3	@ D.34920, D.34923
	mvncc	r0, #0	@ D.34926,
	bxcc	lr	@
	movls	r0, #0	@, D.34926
	movhi	r0, #1	@, D.34926
	bx	lr	@
	.fnend
	.size	compare_fs_by_lt_pic_idx_asc, .-compare_fs_by_lt_pic_idx_asc
	.align	2
	.global	compare_pic_by_poc_asc
	.type	compare_pic_by_poc_asc, %function
compare_pic_by_poc_asc:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.34935, <variable>.poc
	ldr	r3, [r1, #16]	@ D.34938, <variable>.poc
	cmp	r2, r3	@ D.34935, D.34938
	mvnlt	r0, #0	@ D.34941,
	bxlt	lr	@
	movle	r0, #0	@, D.34941
	movgt	r0, #1	@, D.34941
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_asc, .-compare_pic_by_poc_asc
	.align	2
	.global	compare_pic_by_poc_desc
	.type	compare_pic_by_poc_desc, %function
compare_pic_by_poc_desc:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #16]	@ D.34950, <variable>.poc
	ldr	r3, [r1, #16]	@ D.34953, <variable>.poc
	cmp	r2, r3	@ D.34950, D.34953
	movlt	r0, #1	@ D.34956,
	bxlt	lr	@
	movle	r0, #0	@ D.34956,
	mvngt	r0, #0	@ D.34956,
	bx	lr	@
	.fnend
	.size	compare_pic_by_poc_desc, .-compare_pic_by_poc_desc
	.align	2
	.global	compare_fs_by_poc_asc
	.type	compare_fs_by_poc_asc, %function
compare_fs_by_poc_asc:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #524]	@ D.34965, <variable>.poc
	ldr	r3, [r1, #524]	@ D.34968, <variable>.poc
	cmp	r2, r3	@ D.34965, D.34968
	mvnlt	r0, #0	@ D.34971,
	bxlt	lr	@
	movle	r0, #0	@, D.34971
	movgt	r0, #1	@, D.34971
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_asc, .-compare_fs_by_poc_asc
	.align	2
	.global	compare_fs_by_poc_desc
	.type	compare_fs_by_poc_desc, %function
compare_fs_by_poc_desc:
	.fnstart
.LFB1665:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp139,* arg1
	ldr	r1, [r1, #0]	@ tmp140,* arg2
	ldr	r2, [ip, #524]	@ D.34980, <variable>.poc
	ldr	r3, [r1, #524]	@ D.34983, <variable>.poc
	cmp	r2, r3	@ D.34980, D.34983
	movlt	r0, #1	@ D.34986,
	bxlt	lr	@
	movle	r0, #0	@ D.34986,
	mvngt	r0, #0	@ D.34986,
	bx	lr	@
	.fnend
	.size	compare_fs_by_poc_desc, .-compare_fs_by_poc_desc
	.align	2
	.global	GenPiclistfromFrmlist
	.type	GenPiclistfromFrmlist, %function
GenPiclistfromFrmlist:
	.fnstart
.LFB1666:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	cmp	r2, #31	@ list_idx,
	movcc	r4, r2	@ list_idx.1822, list_idx
	movcs	r4, #31	@ list_idx.1822,
	movw	ip, #:lower16:IsSTRefFlg	@ tmp218,
	ldr	r2, [sp, #60]	@ long_term, long_term
	movt	ip, #:upper16:IsSTRefFlg	@ tmp218,
	movw	r5, #:lower16:IsLTRefFlg	@ tmp217,
	movt	r5, #:upper16:IsLTRefFlg	@ tmp217,
	cmp	r2, #0	@ long_term,
	mov	r6, r1	@ fs_list, fs_list
	str	r3, [sp, #12]	@ list, %sfp
	moveq	r5, ip	@ is_ref, tmp218
	cmp	r0, #1	@ currStrcture,
	ldr	r9, [sp, #56]	@ list_size, list_size
	moveq	r8, #0	@ bot_idx,
	moveq	sl, r8	@ top_idx.1805, bot_idx
	beq	.L415	@,
	cmp	r0, #2	@ currStrcture,
	moveq	r8, #0	@ bot_idx.1800,
	moveq	sl, r8	@ top_idx, bot_idx.1800
	bne	.L370	@,
.L420:
	cmp	sl, r4	@ top_idx, list_idx.1822
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	r8, r4	@ bot_idx.1800, list_idx.1822
	movcs	r3, #0	@, temp.1794
	movcc	r3, #1	@, temp.1794
	orrs	r2, r3, r0	@, temp.1794,
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ temp.1794,
	beq	.L375	@,
	ldr	r0, [r6, r8, asl #2]	@ temp.1796,* fs_list
	mvn	r7, r8	@ tmp235, bot_idx.1800
	add	fp, r7, r4	@ tmp234, tmp235, list_idx.1822
	add	r7, r6, r8, asl #2	@, ivtmp.1781, fs_list, bot_idx.1800,
	and	fp, fp, #1	@ tmp236, tmp234,
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L430	@,
.L404:
	add	r8, r8, #1	@ bot_idx.1800, bot_idx.1800,
	add	r7, r7, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	r8, r4	@ bot_idx.1800, list_idx.1822
	bcs	.L375	@,
	cmp	fp, #0	@ tmp236,
	beq	.L374	@,
	ldr	r0, [r7, #0]	@ temp.1796,* ivtmp.1781
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L431	@,
.L406:
	add	r8, r8, #1	@ bot_idx.1800, bot_idx.1800,
	add	r7, r7, #4	@ ivtmp.1781, ivtmp.1781,
	cmp	r8, r4	@ bot_idx.1800, list_idx.1822
	bcc	.L374	@,
	b	.L375	@
.L372:
	add	r7, r7, #4	@ ivtmp.1781, ivtmp.1781,
	add	r8, r8, #1	@ bot_idx.1800, bot_idx.1800,
	ldr	r0, [r7, #0]	@ temp.1796,* ivtmp.1781
	mov	r3, r8	@ tmp237, bot_idx.1800
	mov	fp, r7	@ tmp238, ivtmp.1781
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L432	@,
.L409:
	add	r8, r3, #1	@ bot_idx.1800, tmp237,
	add	r7, fp, #4	@ ivtmp.1781, tmp238,
	cmp	r8, r4	@ bot_idx.1800, list_idx.1822
	bcs	.L375	@,
.L374:
	ldr	r0, [r7, #0]	@ temp.1796,* ivtmp.1781
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	beq	.L372	@,
	add	r0, r0, #472	@, temp.1796,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L372	@,
.L428:
	ldr	r1, [r9, #0]	@ tmp194,* list_size
	add	r8, r8, #1	@ bot_idx.1800, bot_idx.1800,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp195,* ivtmp.1781
	add	r2, ip, #472	@ tmp196, tmp195,
	str	r2, [r0, r1, asl #2]	@ tmp196,
	ldr	r3, [r9, #0]	@ tmp197,* list_size
	add	lr, r3, #1	@ tmp198, tmp197,
	str	lr, [r9, #0]	@ tmp198,* list_size
.L375:
	ldr	r3, [sp, #8]	@, %sfp
	cmp	r3, #0	@,
	beq	.L420	@,
	ldr	r0, [r6, sl, asl #2]	@ temp.1810,* fs_list
	mvn	r7, sl	@ tmp230, top_idx
	add	fp, r7, r4	@ tmp229, tmp230, list_idx.1822
	add	r7, r6, sl, asl #2	@, ivtmp.1776, fs_list, top_idx,
	and	fp, fp, #1	@ tmp231, tmp229,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L433	@,
.L397:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	cmp	sl, r4	@ top_idx, list_idx.1822
	bcs	.L420	@,
	cmp	fp, #0	@ tmp231,
	beq	.L377	@,
	ldr	r0, [r7, #0]	@ temp.1810,* ivtmp.1776
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L434	@,
.L399:
	add	sl, sl, #1	@ top_idx, top_idx,
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	cmp	sl, r4	@ top_idx, list_idx.1822
	bcc	.L377	@,
	b	.L420	@
.L376:
	add	r7, r7, #4	@ ivtmp.1776, ivtmp.1776,
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r0, [r7, #0]	@ temp.1810,* ivtmp.1776
	mov	r3, sl	@ tmp232, top_idx
	mov	fp, r7	@ tmp233, ivtmp.1776
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L435	@,
.L402:
	add	sl, r3, #1	@ top_idx, tmp232,
	add	r7, fp, #4	@ ivtmp.1776, tmp233,
	cmp	sl, r4	@ top_idx, list_idx.1822
	bcs	.L420	@,
.L377:
	ldr	r0, [r7, #0]	@ temp.1810,* ivtmp.1776
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	beq	.L376	@,
	add	r0, r0, #436	@, temp.1810,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L376	@,
.L427:
	ldr	r3, [r9, #0]	@ tmp203,* list_size
	add	sl, sl, #1	@ top_idx, top_idx,
	ldr	r1, [sp, #12]	@, %sfp
	ldr	ip, [r7, #0]	@ tmp204,* ivtmp.1776
	add	r2, ip, #436	@ tmp205, tmp204,
	str	r2, [r1, r3, asl #2]	@ tmp205,
	ldr	r0, [r9, #0]	@ tmp206,* list_size
	add	lr, r0, #1	@ tmp207, tmp206,
	str	lr, [r9, #0]	@ tmp207,* list_size
	b	.L420	@
.L442:
	add	r0, r0, #436	@, D.35028,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L364	@,
.L426:
	ldr	r3, [r9, #0]	@ tmp169,* list_size
	add	sl, sl, #1	@ top_idx.1805, top_idx.1805,
	ldr	lr, [sp, #12]	@, %sfp
	ldr	r2, [r7, #0]	@ tmp170,* ivtmp.1771
	add	ip, r2, #436	@ tmp171, tmp170,
	str	ip, [lr, r3, asl #2]	@ tmp171,
	ldr	r1, [r9, #0]	@ tmp172,* list_size
	add	r0, r1, #1	@ tmp173, tmp172,
	str	r0, [r9, #0]	@ tmp173,* list_size
.L367:
	ldr	r0, [sp, #8]	@, %sfp
	cmp	r0, #0	@,
	beq	.L415	@,
	ldr	r0, [r6, r8, asl #2]	@ D.35045,* fs_list
	mvn	r7, r8	@ tmp220, bot_idx
	add	fp, r7, r4	@ tmp219, tmp220, list_idx.1822
	add	r7, r6, r8, asl #2	@, ivtmp.1766, fs_list, bot_idx,
	and	fp, fp, #1	@ tmp221, tmp219,
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #2	@ <variable>.is_used,
	bne	.L436	@,
.L383:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1766, ivtmp.1766,
	cmp	r8, r4	@ bot_idx, list_idx.1822
	bcs	.L415	@,
	cmp	fp, #0	@ tmp221,
	beq	.L369	@,
	ldr	r0, [r7, #0]	@ D.35045,* ivtmp.1766
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	bne	.L437	@,
.L385:
	add	r8, r8, #1	@ bot_idx, bot_idx,
	add	r7, r7, #4	@ ivtmp.1766, ivtmp.1766,
	cmp	r8, r4	@ bot_idx, list_idx.1822
	bcc	.L369	@,
	b	.L415	@
.L368:
	add	r7, r7, #4	@ ivtmp.1766, ivtmp.1766,
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [r7, #0]	@ D.35045,* ivtmp.1766
	mov	r3, r8	@ tmp222, bot_idx
	mov	fp, r7	@ tmp223, ivtmp.1766
	ldrb	r2, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r2, #2	@ <variable>.is_used,
	bne	.L438	@,
.L388:
	add	r8, r3, #1	@ bot_idx, tmp222,
	add	r7, fp, #4	@ ivtmp.1766, tmp223,
	cmp	r8, r4	@ bot_idx, list_idx.1822
	bcs	.L415	@,
.L369:
	ldr	r0, [r7, #0]	@ D.35045,* ivtmp.1766
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #2	@ <variable>.is_used,
	beq	.L368	@,
	add	r0, r0, #472	@, D.35045,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L368	@,
.L425:
	ldr	ip, [r9, #0]	@ tmp178,* list_size
	add	r8, r8, #1	@ bot_idx, bot_idx,
	ldr	r0, [sp, #12]	@, %sfp
	ldr	r3, [r7, #0]	@ tmp179,* ivtmp.1766
	add	r1, r3, #472	@ tmp180, tmp179,
	str	r1, [r0, ip, asl #2]	@ tmp180,
	ldr	r2, [r9, #0]	@ tmp181,* list_size
	add	lr, r2, #1	@ tmp182, tmp181,
	str	lr, [r9, #0]	@ tmp182,* list_size
.L415:
	cmp	r8, r4	@ bot_idx, list_idx.1822
	movcs	r0, #0	@,
	movcc	r0, #1	@,
	cmp	sl, r4	@ top_idx.1805, list_idx.1822
	movcs	r3, #0	@, D.35055
	movcc	r3, #1	@, D.35055
	orrs	r2, r0, r3	@,, D.35055
	str	r0, [sp, #8]	@, %sfp
	beq	.L370	@,
	cmp	r3, #0	@ D.35055,
	beq	.L367	@,
	ldr	r0, [r6, sl, asl #2]	@ D.35028,* fs_list
	mvn	r7, sl	@ tmp225, top_idx.1805
	add	fp, r7, r4	@ tmp224, tmp225, list_idx.1822
	add	r7, r6, sl, asl #2	@, ivtmp.1771, fs_list, top_idx.1805,
	and	fp, fp, #1	@ tmp226, tmp224,
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L439	@,
.L390:
	add	sl, sl, #1	@ top_idx.1805, top_idx.1805,
	add	r7, r7, #4	@ ivtmp.1771, ivtmp.1771,
	cmp	sl, r4	@ top_idx.1805, list_idx.1822
	bcs	.L367	@,
	cmp	fp, #0	@ tmp226,
	beq	.L366	@,
	ldr	r0, [r7, #0]	@ D.35028,* ivtmp.1771
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	ip, #1	@ <variable>.is_used,
	bne	.L440	@,
.L392:
	add	sl, sl, #1	@ top_idx.1805, top_idx.1805,
	add	r7, r7, #4	@ ivtmp.1771, ivtmp.1771,
	cmp	sl, r4	@ top_idx.1805, list_idx.1822
	bcc	.L366	@,
	b	.L367	@
.L364:
	add	r7, r7, #4	@ ivtmp.1771, ivtmp.1771,
	add	sl, sl, #1	@ top_idx.1805, top_idx.1805,
	ldr	r0, [r7, #0]	@ D.35028,* ivtmp.1771
	mov	r3, sl	@ tmp228, top_idx.1805
	mov	fp, r7	@ tmp227, ivtmp.1771
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	bne	.L441	@,
.L395:
	add	sl, r3, #1	@ top_idx.1805, tmp228,
	add	r7, fp, #4	@ ivtmp.1771, tmp227,
	cmp	sl, r4	@ top_idx.1805, list_idx.1822
	bcs	.L367	@,
.L366:
	ldr	r0, [r7, #0]	@ D.35028,* ivtmp.1771
	ldrb	r3, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r3, #1	@ <variable>.is_used,
	bne	.L442	@,
	add	r7, r7, #4	@ ivtmp.1771, ivtmp.1771,
	add	sl, sl, #1	@ top_idx.1805, top_idx.1805,
	ldr	r0, [r7, #0]	@ D.35028,* ivtmp.1771
	mov	r3, sl	@ tmp228, top_idx.1805
	mov	fp, r7	@ tmp227, ivtmp.1771
	ldrb	r1, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	tst	r1, #1	@ <variable>.is_used,
	beq	.L395	@,
.L441:
	add	r0, r0, #436	@, D.35028,
	str	sl, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L395	@,
	b	.L426	@
.L370:
	mov	r0, #0	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L432:
	add	r0, r0, #472	@, temp.1796,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L409	@,
	b	.L428	@
.L435:
	add	r0, r0, #436	@, temp.1810,
	str	sl, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L402	@,
	b	.L427	@
.L438:
	add	r0, r0, #472	@, D.35045,
	str	r8, [sp, #4]	@ tmp3,
	blx	r5	@ is_ref
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@,
	beq	.L388	@,
	b	.L425	@
.L430:
	add	r0, r0, #472	@, temp.1796,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L404	@,
	b	.L428	@
.L433:
	add	r0, r0, #436	@, temp.1810,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L397	@,
	b	.L427	@
.L431:
	add	r0, r0, #472	@, temp.1796,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L406	@,
	b	.L428	@
.L434:
	add	r0, r0, #436	@, temp.1810,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L399	@,
	b	.L427	@
.L436:
	add	r0, r0, #472	@, D.35045,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L383	@,
	b	.L425	@
.L439:
	add	r0, r0, #436	@, D.35028,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L390	@,
	b	.L426	@
.L440:
	add	r0, r0, #436	@, D.35028,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L392	@,
	b	.L426	@
.L437:
	add	r0, r0, #472	@, D.35045,
	blx	r5	@ is_ref
	cmp	r0, #0	@,
	beq	.L385	@,
	b	.L425	@
	.fnend
	.size	GenPiclistfromFrmlist, .-GenPiclistfromFrmlist
	.align	2
	.global	DumpList
	.type	DumpList, %function
DumpList:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	DumpList, .-DumpList
	.align	2
	.global	FindNearestPOCPicId
	.type	FindNearestPOCPicId, %function
FindNearestPOCPicId:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #26628	@ tmp144,
	mov	r1, r0	@ pH264Ctx, pH264Ctx
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldr	r6, [r0, r3]	@ D.35318, <variable>.DPB.used_size
	cmp	r6, #0	@ D.35318,
	mvneq	r0, #0	@ nearest_pic_id,
	beq	.L447	@,
	movw	r4, #26432	@ tmp147,
	cmp	r6, #1	@ D.35318,
	ldr	ip, [r1, r4]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp145,
	ldr	r4, [r1, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r0, #0	@ nearest_pic_id,
	ldr	r2, [ip, #524]	@ nearest_poc, <variable>.poc
	bls	.L447	@,
	add	r0, r1, #26368	@ tmp151, pH264Ctx,
	sub	r6, r6, #1	@ tmp149, D.35318,
	add	r5, r0, #68	@ tmp151, tmp151,
	rsb	r2, r2, r4	@ tmp148, nearest_poc, curr_poc
	mov	r6, r6, asl #2	@ D.41710, tmp149,
	cmp	r2, #0	@ tmp148,
	ldr	ip, [r5, #0]	@ D.35325, <variable>.DPB.fs
	sub	r3, r6, #4	@ tmp158, D.41710,
	ubfx	r5, r3, #2, #1	@ tmp159, tmp158,,
	rsblt	r2, r2, #0	@ nearest_poc_diff, tmp148
	mov	r0, #0	@ nearest_pic_id,
	ldr	r3, [ip, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp153, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp153,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp153
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	blt	.L463	@,
.L453:
	mov	r3, #4	@ ivtmp.1881,
	cmp	r3, r6	@ ivtmp.1881, D.41710
	beq	.L447	@,
	cmp	r5, #0	@ tmp159,
	beq	.L450	@,
	add	ip, r1, r3	@ tmp177, pH264Ctx, ivtmp.1881
	add	r3, r3, #4	@ ivtmp.1881, ivtmp.1881,
	add	r5, ip, #26368	@ tmp179, tmp177,
	add	ip, r5, #68	@ tmp179, tmp179,
	ldr	r5, [ip, #0]	@ D.35325, <variable>.DPB.fs
	ldr	ip, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	ip, ip, r4	@ tmp182, <variable>.poc, curr_poc
	cmp	ip, #0	@ tmp182,
	rsblt	ip, ip, #0	@ new_poc_diff, tmp182
	cmp	ip, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, ip	@ nearest_poc_diff, new_poc_diff
	cmp	r3, r6	@ ivtmp.1881, D.41710
	beq	.L447	@,
.L450:
	add	r5, r1, r3	@ tmp162, pH264Ctx, ivtmp.1881
	add	ip, r3, #4	@ tmp160, ivtmp.1881,
	add	r3, r5, #26368	@ tmp163, tmp162,
	add	r7, r1, ip	@ tmp170, pH264Ctx, tmp160
	add	r7, r7, #26368	@ tmp171, tmp170,
	ldr	r5, [r3, #68]	@ D.35325, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp167, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp167,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp167
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
	ldr	r5, [r7, #68]	@ D.35325, <variable>.DPB.fs
	ldr	r3, [r5, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r3, r4	@ tmp175, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp175,
	rsblt	r3, r3, #0	@ new_poc_diff, tmp175
	cmp	r3, r2	@ new_poc_diff, nearest_poc_diff
	ldrlt	r0, [r5, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movlt	r2, r3	@ nearest_poc_diff, new_poc_diff
.L458:
	add	r3, ip, #4	@ ivtmp.1881, tmp160,
	cmp	r3, r6	@ ivtmp.1881, D.41710
	bne	.L450	@,
.L447:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L463:
	ldr	r0, [ip, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	mov	r2, r3	@ nearest_poc_diff, new_poc_diff
	b	.L453	@
	.fnend
	.size	FindNearestPOCPicId, .-FindNearestPOCPicId
	.align	2
	.global	FindMinRefIdx
	.type	FindMinRefIdx, %function
FindMinRefIdx:
	.fnstart
.LFB1670:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	mov	r9, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20680	@ tmp154,
	ldrb	r3, [r9, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L477	@,
	movw	r1, #49707	@ tmp156,
	ldrb	r0, [r9, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	bne	.L506	@,
	add	r6, r9, #26880	@ ivtmp.1932, pH264Ctx,
	movw	ip, #20724	@ tmp160,
	mov	sl, ip	@ tmp179, tmp160
	mov	fp, r6	@ tmp180, ivtmp.1932
	add	r8, fp, #156	@ ivtmp.1924, tmp180,
	ldr	fp, [r9, ip]	@ D.35363, <variable>.CurrSlice.listXsize
	add	r6, r6, #28	@ ivtmp.1932, ivtmp.1932,
.L468:
	cmp	fp, #0	@ D.35363,
	beq	.L472	@,
	ldr	r2, [r8, #0]	@ tmp206, <variable>.pListX
	mov	r1, #32	@ minrefidx,
	ldr	r7, [r9, sl]	@ temp.1950, <variable>.CurrSlice.listXsize
	ldr	r3, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	ip, r7, #1	@ tmp189, temp.1950,
	and	ip, ip, #1	@ tmp191, tmp189,
	ldr	r2, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r2, r0	@ <variable>.apc_idc, i
	beq	.L507	@,
.L480:
	mov	r2, #1	@ j,
	cmp	r7, r2	@ temp.1950, j
	add	r3, r8, #4	@ ivtmp.1924, ivtmp.1924,
	bls	.L500	@,
	cmp	ip, #0	@ tmp191,
	beq	.L470	@,
	ldr	ip, [r8, #4]	@ tmp227, <variable>.pListX
	ldr	ip, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [ip, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	ip, r0	@ <variable>.apc_idc, i
	beq	.L508	@,
.L482:
	add	r2, r2, #1	@ j, j,
	add	r3, r3, #4	@ ivtmp.1924, ivtmp.1924,
	cmp	r7, r2	@ temp.1950, j
	bhi	.L470	@,
	b	.L500	@
.L469:
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	beq	.L509	@,
.L485:
	add	r2, ip, #1	@ j, tmp192,
	add	r3, r4, #4	@ ivtmp.1924, tmp193,
	cmp	r7, r2	@ temp.1950, j
	bls	.L500	@,
.L470:
	ldr	r5, [r3, #0]	@ tmp162, <variable>.pListX
	add	ip, r2, #1	@ tmp192, j,
	add	r4, r3, #4	@ tmp193, ivtmp.1924,
	ldr	r5, [r5, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r5, [r5, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r5, r0	@ <variable>.apc_idc, i
	bne	.L469	@,
	ldr	r3, [r3, #4]	@ tmp201, <variable>.pListX
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	cmp	r3, r0	@ <variable>.apc_idc, i
	bne	.L485	@,
.L509:
	add	r2, ip, #1	@ j, tmp192,
	cmp	r1, ip	@ minrefidx, tmp192
	movcs	r1, ip	@ minrefidx, tmp192
	cmp	r7, r2	@ temp.1950, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1924, tmp193,
	bhi	.L470	@,
.L500:
	cmp	r1, #31	@ minrefidx,
	bls	.L471	@,
.L472:
	mov	r1, #0	@,
	str	r1, [r6, #0]	@, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@, <variable>.APC.RefIdx
.L471:
	add	r0, r0, #1	@ i, i,
	add	r6, r6, #8	@ ivtmp.1932, ivtmp.1932,
	cmp	r0, #16	@ i,
	bne	.L468	@,
.L477:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L506:
	add	r8, r9, #26880	@ ivtmp.1946, pH264Ctx,
	movw	r2, #20724	@ tmp158,
	ldr	fp, [r9, r2]	@ temp.1952, <variable>.CurrSlice.listXsize
	mov	ip, #0	@ i.1957,
	mov	sl, r8	@ tmp185, ivtmp.1946
	add	r8, r8, #28	@ ivtmp.1946, ivtmp.1946,
	add	sl, sl, #156	@ ivtmp.1938, tmp185,
.L467:
	cmp	fp, #0	@ temp.1952,
	beq	.L476	@,
	ldr	r3, [sl, #0]	@ temp.1953, <variable>.pListX
	movw	r2, #20724	@,
	ldr	r7, [r9, r2]	@ temp.1951, <variable>.CurrSlice.listXsize
	mov	r6, #32	@ minrefidx.1949,
	ldr	r0, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	sub	r1, r7, #1	@ tmp194, temp.1951,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	and	r1, r1, #1	@ tmp196, tmp194,
	ldr	r3, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp225, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp226, tmp225
	cmp	r3, ip	@ tmp226, i.1957
	beq	.L510	@,
.L487:
	mov	r2, #1	@ j.1956,
	cmp	r7, r2	@ temp.1951, j.1956
	add	r3, sl, #4	@ ivtmp.1938, ivtmp.1938,
	bls	.L501	@,
	cmp	r1, #0	@ tmp196,
	beq	.L474	@,
	ldr	r1, [sl, #4]	@ temp.1953, <variable>.pListX
	ldr	r4, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r1, [r4, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r1, r1, asl r2	@ tmp235, <variable>.apc_idc,
	cmp	r0, #2	@ <variable>.structure,
	orreq	r1, r1, #1	@,, tmp236, tmp235
	cmp	r1, ip	@ tmp236, i.1957
	beq	.L511	@,
.L489:
	add	r2, r2, #1	@ j.1956, j.1956,
	add	r3, r3, #4	@ ivtmp.1938, ivtmp.1938,
	cmp	r7, r2	@ temp.1951, j.1956
	bhi	.L474	@,
	b	.L501	@
.L473:
	ldr	r3, [r3, #4]	@ temp.1953, <variable>.pListX
	ldr	r1, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r3, [r1, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r3, r3, asl #1	@ tmp216, <variable>.apc_idc,
	cmp	r2, #2	@ <variable>.structure,
	orreq	r3, r3, #1	@,, tmp217, tmp216
	cmp	r3, ip	@ tmp217, i.1957
	beq	.L512	@,
	add	r2, r0, #1	@ j.1956, tmp197,
	add	r3, r4, #4	@ ivtmp.1938, tmp198,
	cmp	r7, r2	@ temp.1951, j.1956
	bls	.L501	@,
.L474:
	ldr	r1, [r3, #0]	@ temp.1953, <variable>.pListX
	add	r0, r2, #1	@ tmp197, j.1956,
	add	r4, r3, #4	@ tmp198, ivtmp.1938,
	ldr	r5, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	ldr	r5, [r5, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	mov	r5, r5, asl #1	@ tmp173, <variable>.apc_idc,
	cmp	r1, #2	@ <variable>.structure,
	movne	r1, r5	@, tmp175, tmp173
	orreq	r1, r5, #1	@,, tmp175, tmp173
	cmp	r1, ip	@ tmp175, i.1957
	bne	.L473	@,
	cmp	r6, r2	@ minrefidx.1949, j.1956
	movcs	r6, r2	@ minrefidx.1949, j.1956
	str	r6, [r8, #0]	@ minrefidx.1949, <variable>.APC.RefIdx
	b	.L473	@
.L512:
	add	r2, r0, #1	@ j.1956, tmp197,
	cmp	r6, r0	@ minrefidx.1949, tmp197
	movcs	r6, r0	@ minrefidx.1949, tmp197
	cmp	r7, r2	@ temp.1951, j.1956
	str	r6, [r8, #0]	@ minrefidx.1949, <variable>.APC.RefIdx
	add	r3, r4, #4	@ ivtmp.1938, tmp198,
	bhi	.L474	@,
.L501:
	cmp	r6, #31	@ minrefidx.1949,
	bls	.L475	@,
.L476:
	mov	r0, #0	@,
	str	r0, [r8, #0]	@, <variable>.APC.RefIdx
.L475:
	add	ip, ip, #1	@ i.1957, i.1957,
	add	r8, r8, #4	@ ivtmp.1946, ivtmp.1946,
	cmp	ip, #32	@ i.1957,
	bne	.L467	@,
	b	.L477	@
.L510:
	mov	r6, #0	@ minrefidx.1949,
	str	r6, [r8, #0]	@ minrefidx.1949, <variable>.APC.RefIdx
	b	.L487	@
.L511:
	cmp	r6, r2	@ minrefidx.1949, j.1956
	movcs	r6, r2	@ minrefidx.1949, j.1956
	str	r6, [r8, #0]	@ minrefidx.1949, <variable>.APC.RefIdx
	b	.L489	@
.L507:
	mov	r1, #0	@ minrefidx,
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L480	@
.L508:
	cmp	r1, r2	@ minrefidx, j
	movcs	r1, r2	@ minrefidx, j
	str	r1, [r6, #0]	@ minrefidx, <variable>.APC.RefIdx
	str	r1, [r6, #4]	@ minrefidx, <variable>.APC.RefIdx
	b	.L482	@
	.fnend
	.size	FindMinRefIdx, .-FindMinRefIdx
	.align	2
	.global	wait_vo
	.type	wait_vo, %function
wait_vo:
	.fnstart
.LFB1674:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	wait_vo, .-wait_vo
	.align	2
	.global	GetReRangeFlag
	.type	GetReRangeFlag, %function
GetReRangeFlag:
	.fnstart
.LFB1675:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #13584	@ tmp150,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #20692	@ tmp148,
	ldr	r7, [r4, r3]	@ <variable>.PPS, <variable>.PPS
	mov	r5, #2208	@ tmp152,
	ldr	r6, [r4, r0]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	ip, #13580	@ tmp146,
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	movw	r2, #13560	@ tmp158,
	ldr	r2, [r4, r2]	@ oldw, <variable>.CurWidthInMb
	.pad #8
	sub	sp, sp, #8	@,,
	mla	r0, r5, r6, r7	@ tmp153, tmp152, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	mov	r5, #4000	@ tmp156,
	mov	r6, r1	@ p_dpb_changed, p_dpb_changed
	movw	r1, #13564	@ tmp159,
	ldr	r7, [r4, r1]	@ oldh, <variable>.CurHeightInMb
	ldr	ip, [r0, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, ip, r3	@ pSPS, tmp156, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r3, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r0, r1, #2	@ tmp162, <variable>.frame_mbs_only_flag,
	ldr	ip, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mla	r0, r3, r0, r0	@ newh, <variable>.pic_height_in_map_units_minus1, tmp162, tmp162
	add	ip, ip, #1	@ neww, <variable>.pic_width_in_mbs_minus1,
	cmp	ip, r2	@ neww, oldw
	cmpeq	r0, r7	@, newh, oldh
	moveq	r3, #0	@, tmp171
	movne	r3, #1	@, tmp171
	bne	.L516	@,
	mov	r8, #26624	@ tmp172,
	ldr	r1, [r5, #3980]	@ prephitmp.1994, <variable>.dpb_size_plus1
	ldr	r8, [r4, r8]	@ <variable>.DPB.size, <variable>.DPB.size
	add	r8, r8, #1	@ tmp173, <variable>.DPB.size,
	cmp	r1, r8	@ prephitmp.1994, tmp173
	bls	.L520	@,
.L516:
	movw	r1, #:lower16:g_event_report	@ tmp175,
	movt	r1, #:upper16:g_event_report	@ tmp175,
	ldr	r3, [r1, #0]	@ g_event_report.610, g_event_report
	cmp	r3, #0	@ g_event_report.610,
	beq	.L521	@,
	movw	lr, #52840	@ tmp184,
	mov	r1, r2, asl #4	@ tmp177, oldw,
	mov	ip, ip, asl #4	@ tmp181, neww,
	strh	r1, [sp, #0]	@ movhi	@ tmp177, para
	mov	r2, r0, asl #4	@ tmp183, newh,
	strh	ip, [sp, #4]	@ movhi	@ tmp181, para
	strh	r2, [sp, #6]	@ movhi	@ tmp183, para
	mov	r1, #2	@,
	mov	r7, r7, asl #4	@ tmp179, oldh,
	mov	r2, sp	@,
	strh	r7, [sp, #2]	@ movhi	@ tmp179, para
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	blx	r3	@ g_event_report.610
	ldr	r1, [r5, #3980]	@ prephitmp.1994, <variable>.dpb_size_plus1
	mov	r3, #1	@ prephitmp.2006,
.L520:
	mov	r0, r3	@ ReRangeFlg, prephitmp.2006
.L517:
	movw	r2, #14332	@ tmp187,
	ldr	ip, [r5, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r5, [r4, r2]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r2, #17568	@ tmp192,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r5, ip	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	orrne	r3, r3, #1	@,, dpb_changed, prephitmp.2006
	cmp	r2, r1	@ <variable>.CurrSPS.dpb_size_plus1, prephitmp.1994
	moveq	ip, r3	@, tmp196, dpb_changed
	orrne	ip, r3, #1	@,, tmp196, dpb_changed
	str	ip, [r6, #0]	@ tmp196,* p_dpb_changed
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L521:
	mov	r3, #1	@ prephitmp.2006,
	ldr	r1, [r5, #3980]	@ prephitmp.1994, <variable>.dpb_size_plus1
	mov	r0, r3	@ ReRangeFlg, prephitmp.2006
	b	.L517	@
	.fnend
	.size	GetReRangeFlag, .-GetReRangeFlag
	.global	__aeabi_uidiv
	.global	__aeabi_uidivmod
	.align	2
	.global	DecPOC
	.type	DecPOC, %function
DecPOC:
	.fnstart
.LFB1676:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #20692	@ tmp174,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	ip, [r0, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	r0, #13584	@ tmp176,
	ldr	r1, [r4, r0]	@ <variable>.PPS, <variable>.PPS
	mov	r5, #2208	@ tmp178,
	movw	r3, #13580	@ tmp172,
	movw	r2, #20683	@ tmp169,
	ldr	r3, [r4, r3]	@ <variable>.SPS, <variable>.SPS
	mla	r0, r5, ip, r1	@ tmp179, tmp178, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	mov	r5, #4000	@ tmp182,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	mov	r2, #1	@ tmp186,
	cmp	r1, #5	@ <variable>.CurrSlice.nal_unit_type,
	movne	r1, #0	@, tmp171
	moveq	r1, #1	@, tmp171
	ldr	ip, [r0, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r5, r5, ip, r3	@ sps, tmp182, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r3, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r0, [r5, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r3, r2	@ <variable>.pic_order_cnt_type,
	ldr	ip, [r5, #2912]	@ D.35576, <variable>.log2_max_pic_order_cnt_lsb_minus4
	add	r0, r0, #4	@ tmp184, <variable>.log2_max_frame_num_minus4,
	mov	r0, r2, asl r0	@ MaxFrameNum, tmp186,
	beq	.L525	@,
	bcs	.L577	@,
	cmp	r1, #0	@ tmp171,
	add	ip, ip, #4	@ tmp188, D.35576,
	mov	r2, r2, asl ip	@ MaxPicOrderCntLsb, tmp186,
	bne	.L578	@,
	movw	r3, #19820	@ tmp194,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	ip, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L529	@,
	movw	r1, #19804	@ tmp197,
	movw	r5, #19808	@ tmp196,
	ldr	ip, [r4, r1]	@ prephitmp.2044, <variable>.CurrPOC.PrevPicOrderCntMsb
	ldr	r1, [r4, r5]	@ prephitmp.2042, <variable>.CurrPOC.PrevPicOrderCntLsb
	mov	r5, ip	@ prephitmp.2046, prephitmp.2044
.L530:
	movw	r3, #19796	@ tmp208,
	ldr	r0, [r4, r3]	@ D.35599, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r0, r1	@ D.35599, prephitmp.2042
	bcs	.L532	@,
	rsb	r3, r0, r1	@ tmp209, D.35599, prephitmp.2042
	cmp	r3, r2, lsr #1	@ tmp209, MaxPicOrderCntLsb,
	addcs	r3, r5, r2	@ D.35608, prephitmp.2046, MaxPicOrderCntLsb
	movwcs	r2, #19812	@ tmp212,
	strcs	r3, [r4, r2]	@ D.35608, <variable>.CurrPOC.PicOrderCntMsb
	bcs	.L535	@,
.L532:
	movw	r3, #19804	@ tmp213,
	ldr	r3, [r4, r3]	@ prephitmp.2112, <variable>.CurrPOC.PrevPicOrderCntMsb
.L534:
	cmp	r1, r0	@ prephitmp.2042, D.35599
	bcs	.L536	@,
	rsb	r1, r1, r0	@ tmp214, prephitmp.2042, D.35599
	cmp	r1, r2, lsr #1	@ tmp214, MaxPicOrderCntLsb,
	bhi	.L579	@,
.L536:
	movw	r0, #19812	@ tmp217,
	str	ip, [r4, r0]	@ prephitmp.2044, <variable>.CurrPOC.PicOrderCntMsb
.L535:
	movw	r1, #20681	@ tmp218,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L537	@,
	movw	r2, #19796	@ tmp220,
	movw	r0, #19800	@ tmp223,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r4, r0]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19828	@ tmp222,
	add	r2, r3, ip	@ D.35622, prephitmp.2112, <variable>.CurrPOC.pic_order_cnt_lsb
	str	r2, [r4, r0]	@ D.35622, <variable>.CurrPOC.toppoc
	add	ip, r2, r1	@ D.35624, D.35622, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r0, #19836	@ tmp226,
	cmp	ip, r2	@ D.35624, D.35622
	movlt	r3, ip	@ prephitmp.2037, D.35624
	movge	r3, r2	@ prephitmp.2037, D.35622
	movw	r2, #19832	@ tmp225,
	str	ip, [r4, r2]	@ D.35624, <variable>.CurrPOC.bottompoc
	movw	r2, #19840	@ tmp227,
	str	r3, [r4, r0]	@ prephitmp.2037,
	str	r3, [r4, r2]	@ prephitmp.2037, <variable>.CurrPOC.ThisPOC
.L538:
	movw	ip, #19836	@ tmp238,
	movw	r1, #19860	@ tmp239,
	movw	r2, #19856	@ tmp240,
	ldr	r1, [r4, r1]	@ D.35634, <variable>.CurrPOC.frame_num
	str	r3, [r4, ip]	@ prephitmp.2037, <variable>.CurrPOC.framepoc
	movw	ip, #20712	@ tmp243,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	ldr	r3, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r1, r0	@ D.35634, <variable>.CurrPOC.PreviousFrameNum
	strne	r1, [r4, r2]	@ D.35634, <variable>.CurrPOC.PreviousFrameNum
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r2, #19796	@ tmp246,
	movw	r1, #19812	@ tmp249,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	movw	ip, #19808	@ tmp245,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.PicOrderCntMsb, <variable>.CurrPOC.PicOrderCntMsb
	movw	r3, #19804	@ tmp248,
	str	r0, [r4, ip]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r2, [r4, r3]	@ <variable>.CurrPOC.PicOrderCntMsb,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L577:
	cmp	r3, #2	@ <variable>.pic_order_cnt_type,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	cmp	r1, #0	@ tmp171,
	bne	.L580	@,
	movw	ip, #19820	@ tmp355,
	ldr	r3, [r4, ip]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r3, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	bne	.L561	@,
	movw	r2, #19856	@ tmp358,
	movw	ip, #19860	@ tmp359,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	movw	r3, #19868	@ tmp357,
	ldr	r2, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r3, [r4, r3]	@ prephitmp.2032, <variable>.CurrPOC.PrevFrameNumOffset
	cmp	r1, r2	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.frame_num
	addhi	r3, r3, r0	@ prephitmp.2032, prephitmp.2032, MaxFrameNum
	movwhi	r2, #19864	@ tmp366,
	strhi	r3, [r4, r2]	@ prephitmp.2032, <variable>.CurrPOC.FrameNumOffset
	bls	.L563	@,
.L564:
	movw	r2, #19860	@ tmp368,
	movw	r1, #20712	@ tmp371,
	ldr	ip, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	r2, #20681	@ tmp376,
	ldr	r0, [r4, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r1, #19852	@ tmp370,
	add	r3, r3, ip	@ temp.2102, prephitmp.2032, <variable>.CurrPOC.frame_num
	ldrb	ip, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.nal_ref_idc,
	str	r3, [r4, r1]	@ temp.2102, <variable>.CurrPOC.AbsFrameNum
	mov	r3, r3, asl #1	@ tmp373, temp.2102,
	movw	r0, #19840	@ tmp375,
	subeq	r3, r3, #1	@ prephitmp.2104, tmp373,
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r3, [r4, r0]	@ prephitmp.2104, <variable>.CurrPOC.ThisPOC
	bne	.L567	@,
	movw	r2, #19836	@ tmp378,
	movw	r0, #19828	@ tmp380,
	movw	ip, #19832	@ tmp379,
	str	r3, [r4, r2]	@ prephitmp.2104, <variable>.CurrPOC.framepoc
	str	r3, [r4, r0]	@ prephitmp.2104, <variable>.CurrPOC.toppoc
	str	r3, [r4, ip]	@ prephitmp.2104,
.L560:
	movw	r2, #19860	@ tmp388,
	movw	r0, #19864	@ tmp391,
	ldr	r1, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19856	@ tmp387,
	ldr	r2, [r4, r0]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19868	@ tmp390,
	str	r1, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r3]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L525:
	cmp	r1, #0	@ tmp171,
	movwne	r3, #19864	@ tmp251,
	movne	r2, #0	@ tmp252,
	strne	r2, [r4, r3]	@ tmp252, <variable>.CurrPOC.FrameNumOffset
	bne	.L542	@,
	movw	r3, #19820	@ tmp253,
	ldr	r7, [r4, r3]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r7, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L543	@,
	movw	ip, #19868	@ tmp255,
	movw	r0, #19856	@ tmp257,
	mov	r3, r1	@ prephitmp.2036, tmp171
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
.L544:
	movw	r2, #19864	@ tmp268,
	str	r3, [r4, r2]	@ prephitmp.2036, <variable>.CurrPOC.FrameNumOffset
.L542:
	ldr	ip, [r5, #2924]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movw	r0, #20712	@ tmp278,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	ip, #0	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle,
	movwne	ip, #19860	@ tmp271,
	movweq	r2, #19852	@ tmp276,
	ldrne	r2, [r4, ip]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movwne	ip, #19864	@ tmp272,
	ldrne	ip, [r4, ip]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	streq	ip, [r4, r2]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.CurrPOC.AbsFrameNum
	addne	r2, r2, ip	@ tmp275, <variable>.CurrPOC.frame_num, <variable>.CurrPOC.FrameNumOffset
	movwne	ip, #19852	@ tmp270,
	strne	r2, [r4, ip]	@ tmp275, <variable>.CurrPOC.AbsFrameNum
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	beq	.L581	@,
.L548:
	movw	ip, #19884	@ tmp283,
	mov	r3, #0	@ tmp284,
	str	r3, [r4, ip]	@ tmp284, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ temp.2107, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r3	@ temp.2107,
	ble	.L549	@,
	add	r0, r5, #2928	@ ivtmp.2066, sps,
	mov	r2, r3	@ i, prephitmp.2033
.L550:
	ldr	r7, [r0], #4	@ tmp285, <variable>.offset_for_ref_frame
	add	r2, r2, #1	@ i, i,
	add	r3, r3, r7	@ prephitmp.2033, prephitmp.2033, tmp285
	str	r3, [r4, ip]	@ prephitmp.2033, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	ldr	r1, [r5, #2924]	@ temp.2107, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	cmp	r1, r2	@ temp.2107, i
	bgt	.L550	@,
.L549:
	movw	r3, #19852	@ tmp287,
	ldr	r7, [r4, r3]	@ temp.2081, <variable>.CurrPOC.AbsFrameNum
	cmp	r7, #0	@ temp.2081,
	movweq	r3, #19880	@ tmp307,
	moveq	r6, r7	@ prephitmp.2085, temp.2081
	streq	r7, [r4, r3]	@ temp.2081, <variable>.CurrPOC.ExpectedPicOrderCnt
	beq	.L552	@,
	sub	r7, r7, #1	@ tmp288, temp.2081,
	mov	r0, r7	@, tmp288
	bl	__aeabi_uidiv	@
	movw	ip, #19876	@ tmp292,
	mov	r6, r0	@ tmp291,
	mov	r0, r7	@, tmp288
	str	r6, [r4, ip]	@ tmp291, <variable>.CurrPOC.PicOrderCntCycleCnt
	ldr	r1, [r5, #2924]	@, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bl	__aeabi_uidivmod	@
	movw	r2, #19884	@ tmp302,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle
	movw	ip, #19880	@ tmp304,
	movw	r2, #19872	@ tmp301,
	mul	r6, r0, r6	@ prephitmp.2085, <variable>.CurrPOC.ExpectedDeltaPerPicOrderCntCycle, tmp291
	str	r6, [r4, ip]	@ prephitmp.2085, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ D.35675,
	str	r1, [r4, r2]	@ D.35675, <variable>.CurrPOC.FrameNumInPicOrderCntCycle
	blt	.L552	@,
	add	r2, r5, #2928	@ ivtmp.2061, sps,
	cmp	r1, #1	@ D.35675,
	and	r7, r1, #1	@ tmp399, D.35675,
	mov	r0, #1	@ i.2087,
	ldr	lr, [r2], #4	@ tmp305, <variable>.offset_for_ref_frame
	add	r6, r6, lr	@ prephitmp.2085, prephitmp.2085, tmp305
	str	r6, [r4, ip]	@ prephitmp.2085, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L552	@,
	cmp	r7, #0	@ tmp399,
	beq	.L553	@,
	ldr	lr, [r2], #4	@ tmp411, <variable>.offset_for_ref_frame
	mov	r0, #2	@ i.2087,
	cmp	r1, r0	@ D.35675, i.2087
	add	r6, r6, lr	@ prephitmp.2085, prephitmp.2085, tmp411
	str	r6, [r4, ip]	@ prephitmp.2085, <variable>.CurrPOC.ExpectedPicOrderCnt
	blt	.L552	@,
.L553:
	mov	r3, r2	@ tmp401, ivtmp.2061
	add	r0, r0, #2	@ i.2087, i.2087,
	ldr	r7, [r3], #4	@ tmp404, <variable>.offset_for_ref_frame
	cmp	r1, r0	@ D.35675, i.2087
	add	r6, r6, r7	@ prephitmp.2085, prephitmp.2085, tmp404
	str	r6, [r4, ip]	@ prephitmp.2085, <variable>.CurrPOC.ExpectedPicOrderCnt
	ldr	r7, [r2, #4]	@ tmp409, <variable>.offset_for_ref_frame
	add	r2, r3, #4	@ ivtmp.2061, tmp401,
	add	r6, r6, r7	@ prephitmp.2085, prephitmp.2085, tmp409
	str	r6, [r4, ip]	@ prephitmp.2085, <variable>.CurrPOC.ExpectedPicOrderCnt
	bge	.L553	@,
.L552:
	movw	r3, #20712	@ tmp309,
	movw	r0, #20681	@ tmp314,
	ldr	ip, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	ip, #0	@ <variable>.CurrSlice.nal_ref_idc,
	ldreq	ip, [r5, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	movwne	ip, #19880	@ tmp311,
	ldrne	r6, [r4, ip]	@ prephitmp.2089, <variable>.CurrPOC.ExpectedPicOrderCnt
	addeq	r6, r6, ip	@ prephitmp.2089, prephitmp.2085, <variable>.offset_for_non_ref_pic
	movweq	ip, #19880	@ tmp313,
	streq	r6, [r4, ip]	@ prephitmp.2089, <variable>.CurrPOC.ExpectedPicOrderCnt
	cmp	r1, #0	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L582	@,
	movw	ip, #20682	@ tmp326,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r0, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movwne	r2, #19844	@ tmp332,
	ldrne	r0, [r5, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movweq	r0, #19844	@ tmp328,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	ldreq	r0, [r4, r0]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r0, r2, r0	@ tmp333, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r2, #19840	@ tmp337,
	addeq	r6, r6, r0	@ prephitmp.2094, prephitmp.2089, <variable>.CurrPOC.delta_pic_order_cnt
	addne	r6, r0, r6	@ prephitmp.2094, tmp333, prephitmp.2089
	movweq	r0, #19828	@ tmp330,
	movwne	r0, #19832	@ tmp336,
	str	r6, [r4, r0]	@ prephitmp.2094,
	str	r6, [r4, r2]	@ prephitmp.2094, <variable>.CurrPOC.ThisPOC
.L557:
	movw	r2, #19860	@ tmp340,
	movw	r1, #19864	@ tmp343,
	ldr	r0, [r4, r2]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	movw	ip, #19836	@ tmp338,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset, <variable>.CurrPOC.FrameNumOffset
	movw	r3, #19856	@ tmp339,
	movw	r1, #19868	@ tmp342,
	str	r6, [r4, ip]	@ prephitmp.2094, <variable>.CurrPOC.framepoc
	str	r0, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	str	r2, [r4, r1]	@ <variable>.CurrPOC.FrameNumOffset,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L582:
	movw	r3, #19844	@ tmp316,
	movw	r1, #19848	@ tmp319,
	ldr	ip, [r4, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r0, #19828	@ tmp318,
	ldr	r2, [r4, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	add	r6, r6, ip	@ D.35689, prephitmp.2089, <variable>.CurrPOC.delta_pic_order_cnt
	str	r6, [r4, r0]	@ D.35689, <variable>.CurrPOC.toppoc
	ldr	r1, [r5, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movw	ip, #19832	@ tmp323,
	add	r3, r2, r1	@ tmp320, <variable>.CurrPOC.delta_pic_order_cnt, <variable>.offset_for_top_to_bottom_field
	movw	r1, #19836	@ tmp324,
	add	r0, r3, r6	@ D.35693, tmp320, D.35689
	movw	r2, #19840	@ tmp325,
	cmp	r0, r6	@ D.35693, D.35689
	movlt	r6, r0	@ prephitmp.2094, D.35693
	movge	r6, r6	@ prephitmp.2094, D.35689
	str	r0, [r4, ip]	@ D.35693, <variable>.CurrPOC.bottompoc
	str	r6, [r4, r1]	@ prephitmp.2094,
	str	r6, [r4, r2]	@ prephitmp.2094, <variable>.CurrPOC.ThisPOC
	b	.L557	@
.L581:
	movw	r1, #19852	@ tmp280,
	ldr	r2, [r4, r1]	@ D.35660, <variable>.CurrPOC.AbsFrameNum
	cmp	r2, #0	@ D.35660,
	subne	r2, r2, #1	@ tmp282, D.35660,
	strne	r2, [r4, r1]	@ tmp282, <variable>.CurrPOC.AbsFrameNum
	b	.L548	@
.L580:
	movw	r0, #19840	@ tmp353,
	mov	r3, #0	@ tmp346,
	movw	r2, #19864	@ tmp345,
	str	r3, [r4, r0]	@ tmp346, <variable>.CurrPOC.ThisPOC
	movw	r1, #19832	@ tmp347,
	movw	ip, #19828	@ tmp349,
	movw	r0, #19836	@ tmp351,
	str	r3, [r4, r2]	@ tmp346, <variable>.CurrPOC.FrameNumOffset
	str	r3, [r4, r1]	@ tmp346, <variable>.CurrPOC.bottompoc
	str	r3, [r4, ip]	@ tmp346,
	str	r3, [r4, r0]	@ tmp346,
	b	.L560	@
.L578:
	movw	r0, #19808	@ tmp192,
	movw	r1, #19804	@ tmp190,
	mov	r3, #0	@ tmp191,
	str	r3, [r4, r0]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r3, [r4, r1]	@ tmp191, <variable>.CurrPOC.PrevPicOrderCntMsb
.L528:
	movw	ip, #19796	@ tmp393,
	movw	r1, #19804	@ tmp394,
	mov	r3, #0	@ prephitmp.2112,
	ldr	r0, [r4, ip]	@ D.35599, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	ip, [r4, r1]	@ prephitmp.2044, <variable>.CurrPOC.PrevPicOrderCntMsb
	mov	r1, r3	@ prephitmp.2042, prephitmp.2112
	b	.L534	@
.L537:
	movw	r1, #20682	@ tmp228,
	movw	r0, #19796	@ tmp230,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movw	r1, #19840	@ tmp237,
	ldr	ip, [r4, r0]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmp	r2, #0	@ <variable>.CurrSlice.bottom_field_flag,
	add	r3, r3, ip	@ prephitmp.2037, prephitmp.2112, <variable>.CurrPOC.pic_order_cnt_lsb
	movweq	ip, #19828	@ tmp232,
	movwne	ip, #19832	@ tmp236,
	str	r3, [r4, ip]	@ prephitmp.2037,
	str	r3, [r4, r1]	@ prephitmp.2037, <variable>.CurrPOC.ThisPOC
	b	.L538	@
.L529:
	movw	r0, #19824	@ tmp198,
	ldr	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.last_pic_bottom_field
	cmp	r3, #0	@ <variable>.CurrPOC.last_pic_bottom_field,
	beq	.L531	@,
	movw	r3, #19808	@ tmp202,
	movw	ip, #19804	@ tmp200,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntLsb
	str	r1, [r4, ip]	@ tmp171, <variable>.CurrPOC.PrevPicOrderCntMsb
	b	.L528	@
.L561:
	movw	r3, #19856	@ tmp362,
	movw	r0, #19868	@ tmp364,
	str	r1, [r4, r3]	@ tmp171, <variable>.CurrPOC.PreviousFrameNum
	mov	r3, r1	@ prephitmp.2032, tmp171
	str	r1, [r4, r0]	@ tmp171, <variable>.CurrPOC.PrevFrameNumOffset
.L563:
	movw	r1, #19864	@ tmp367,
	str	r3, [r4, r1]	@ prephitmp.2032, <variable>.CurrPOC.FrameNumOffset
	b	.L564	@
.L567:
	movw	r0, #20682	@ tmp381,
	movw	r1, #19836	@ tmp385,
	ldrb	ip, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	ip, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movweq	ip, #19828	@ tmp384,
	movwne	ip, #19832	@ tmp386,
	str	r3, [r4, ip]	@ prephitmp.2104,
	str	r3, [r4, r1]	@ prephitmp.2104,
	b	.L560	@
.L543:
	movw	r3, #19860	@ tmp259,
	movw	r7, #19856	@ tmp260,
	ldr	r2, [r4, r3]	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.frame_num
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PreviousFrameNum, <variable>.CurrPOC.PreviousFrameNum
	cmp	r2, r1	@ <variable>.CurrPOC.frame_num, <variable>.CurrPOC.PreviousFrameNum
	bcs	.L545	@,
	movw	r7, #19868	@ tmp264,
	movw	ip, #19864	@ tmp263,
	ldr	r1, [r4, r7]	@ <variable>.CurrPOC.PrevFrameNumOffset, <variable>.CurrPOC.PrevFrameNumOffset
	add	r0, r0, r1	@ tmp266, MaxFrameNum, <variable>.CurrPOC.PrevFrameNumOffset
	str	r0, [r4, ip]	@ tmp266, <variable>.CurrPOC.FrameNumOffset
	b	.L542	@
.L579:
	rsb	r3, r2, r3	@ D.35615, MaxPicOrderCntLsb, prephitmp.2112
	movw	r2, #19812	@ tmp216,
	str	r3, [r4, r2]	@ D.35615, <variable>.CurrPOC.PicOrderCntMsb
	b	.L535	@
.L531:
	movw	r1, #19828	@ tmp206,
	movw	r0, #19804	@ tmp204,
	ldr	r1, [r4, r1]	@ prephitmp.2042, <variable>.CurrPOC.toppoc
	mov	r5, r3	@ prephitmp.2046, <variable>.CurrPOC.last_pic_bottom_field
	str	r3, [r4, r0]	@ <variable>.CurrPOC.last_pic_bottom_field, <variable>.CurrPOC.PrevPicOrderCntMsb
	movw	r0, #19808	@ tmp207,
	mov	ip, r3	@ prephitmp.2044, prephitmp.2046
	str	r1, [r4, r0]	@ prephitmp.2042, <variable>.CurrPOC.PrevPicOrderCntLsb
	b	.L530	@
.L545:
	movw	r2, #19868	@ tmp267,
	ldr	r3, [r4, r2]	@ prephitmp.2036, <variable>.CurrPOC.PrevFrameNumOffset
	b	.L544	@
	.fnend
	.size	DecPOC, .-DecPOC
	.align	2
	.global	CalcPicNum
	.type	CalcPicNum, %function
CalcPicNum:
	.fnstart
.LFB1677:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #20692	@ tmp158,
	movw	r2, #13584	@ tmp160,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl}	@,
	.save {r4, r5, r6, r7, r8, sl}
	ldr	r6, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r4, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	ip, #2208	@ tmp162,
	movw	r1, #13580	@ tmp166,
	movw	r2, #49707	@ tmp173,
	ldr	r1, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	mla	r3, ip, r4, r6	@ tmp163, tmp162, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	mov	ip, #4000	@ tmp168,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.35753, <variable>.CurrPic.structure
	cmp	r2, #0	@ D.35753,
	ldr	r6, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r3, #1	@ tmp172,
	mla	r4, ip, r6, r1	@ tmp169, tmp168, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r1, [r4, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	add	r6, r1, #4	@ tmp170, <variable>.log2_max_frame_num_minus4,
	mov	r6, r3, asl r6	@ MaxFrameNum, tmp172,
	beq	.L584	@,
	movw	r7, #26632	@ tmp176,
	cmp	r2, #2	@ D.35753,
	movne	r4, #0	@, add_bottom
	moveq	r4, #1	@, add_bottom
	ldr	ip, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r2, #1	@ D.35753,
	movne	r5, #0	@, add_top
	moveq	r5, #1	@, add_top
	cmp	ip, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L586	@,
	add	r8, r0, #26368	@ ivtmp.2181, pH264Ctx,
	mov	r2, #0	@ i,
	add	r3, r8, #128	@ ivtmp.2181, ivtmp.2181,
	movw	r8, #50120	@ tmp245,
.L599:
	ldr	r1, [r3, #0]	@ temp.2189, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L595	@,
	ldr	ip, [r1, #512]	@ temp.2191, <variable>.frame_num
	ldr	sl, [r0, r8]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, sl	@ temp.2191, <variable>.CurrPic.frame_num
	rsbhi	ip, r6, ip	@ tmp205, MaxFrameNum, temp.2191
	str	ip, [r1, #516]	@ temp.2191, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ prephitmp.2148, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2152, <variable>.is_reference
	tst	ip, #1	@ prephitmp.2152,
	beq	.L598	@,
	ldr	sl, [r1, #436]	@ tmp209,
	bic	sl, sl, #-16777216	@ tmp207, tmp209,
	bic	sl, sl, #255	@ tmp207, tmp207,
	cmp	sl, #65536	@ tmp207,
	ldreq	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	ip, r5, ip, asl #1	@, tmp212, add_top, <variable>.frame_num_wrap,
	streq	ip, [r1, #448]	@ tmp212, <variable>.top_field.pic_num
	ldreq	r1, [r3, #0]	@ prephitmp.2148, <variable>.DPB.fs_ref
	ldreqb	ip, [r1, #2]	@ zero_extendqisi2	@ prephitmp.2152, <variable>.is_reference
.L598:
	tst	ip, #2	@ prephitmp.2152,
	beq	.L595	@,
	ldr	ip, [r1, #472]	@ tmp216,
	bic	ip, ip, #-16777216	@ tmp214, tmp216,
	bic	ip, ip, #255	@ tmp214, tmp214,
	cmp	ip, #65536	@ tmp214,
	ldreq	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	addeq	ip, r4, ip, asl #1	@, tmp219, add_bottom, <variable>.frame_num_wrap,
	streq	ip, [r1, #484]	@ tmp219, <variable>.bottom_field.pic_num
.L595:
	ldr	r1, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.2181, ivtmp.2181,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L599	@,
.L586:
	movw	r6, #26636	@ tmp222,
	ldr	r2, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L603	@,
	add	r3, r0, #26368	@ ivtmp.2176, pH264Ctx,
	mov	r2, #0	@ i.2193,
	add	r3, r3, #192	@ ivtmp.2176, ivtmp.2176,
.L602:
	ldr	ip, [r3, #0]	@ prephitmp.2141, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2193, i.2193,
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ temp.2203, <variable>.is_reference
	cmp	r1, #0	@ temp.2203,
	beq	.L600	@,
	tst	r1, #1	@ prephitmp.2145,
	beq	.L601	@,
	ldr	r7, [ip, #436]	@ tmp228,
	bic	r7, r7, #-16777216	@ tmp226, tmp228,
	bic	r7, r7, #255	@ tmp226, tmp226,
	cmp	r7, #256	@ tmp226,
	ldreq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r5, r1, asl #1	@, tmp231, add_top, <variable>.long_term_frame_idx,
	streq	r1, [ip, #444]	@ tmp231, <variable>.top_field.long_term_pic_num
	ldreq	ip, [r3, #0]	@ prephitmp.2141, <variable>.DPB.fs_ltref
	ldreqb	r1, [ip, #2]	@ zero_extendqisi2	@ prephitmp.2145, <variable>.is_reference
.L601:
	tst	r1, #2	@ prephitmp.2145,
	beq	.L600	@,
	ldr	r1, [ip, #472]	@ tmp235,
	bic	r1, r1, #-16777216	@ tmp233, tmp235,
	bic	r1, r1, #255	@ tmp233, tmp233,
	cmp	r1, #256	@ tmp233,
	ldreq	r1, [ip, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	addeq	r1, r4, r1, asl #1	@, tmp238, add_bottom, <variable>.long_term_frame_idx,
	streq	r1, [ip, #480]	@ tmp238, <variable>.bottom_field.long_term_pic_num
.L600:
	ldr	ip, [r0, r6]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.2176, ivtmp.2176,
	cmp	ip, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2193
	bhi	.L602	@,
.L603:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl}
	bx	lr
.L584:
	movw	r4, #26632	@ tmp178,
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L587	@,
	add	r5, r0, #26368	@ ivtmp.2171, pH264Ctx,
	add	r3, r5, #128	@ ivtmp.2171, ivtmp.2171,
	movw	r5, #50120	@ tmp242,
	b	.L591	@
.L588:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r2, r2, #1	@ i.2186, i.2186,
	add	r3, r3, #4	@ ivtmp.2171, ivtmp.2171,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2186
	bls	.L587	@,
.L591:
	ldr	r1, [r3, #0]	@ D.35757, <variable>.DPB.fs_ref
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L588	@,
	ldr	ip, [r1, #400]	@ tmp184,
	bic	ip, ip, #-16777216	@ tmp182, tmp184,
	bic	ip, ip, #255	@ tmp182, tmp182,
	cmp	ip, #65536	@ tmp182,
	bne	.L588	@,
	ldr	ip, [r1, #512]	@ D.35765, <variable>.frame_num
	add	r2, r2, #1	@ i.2186, i.2186,
	ldr	r7, [r0, r5]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	cmp	ip, r7	@ D.35765, <variable>.CurrPic.frame_num
	rsb	r7, r6, ip	@ tmp187, MaxFrameNum, D.35765
	strls	ip, [r1, #516]	@ D.35765, <variable>.frame_num_wrap
	strhi	r7, [r1, #516]	@ tmp187, <variable>.frame_num_wrap
	ldr	r1, [r3, #0]	@ temp.2185, <variable>.DPB.fs_ref
	add	r3, r3, #4	@ ivtmp.2171, ivtmp.2171,
	ldr	ip, [r1, #516]	@ <variable>.frame_num_wrap, <variable>.frame_num_wrap
	str	ip, [r1, #412]	@ <variable>.frame_num_wrap, <variable>.frame.pic_num
	ldr	r1, [r0, r4]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.2186
	bhi	.L591	@,
.L587:
	movw	r4, #26636	@ tmp191,
	ldr	r2, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r2, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	beq	.L603	@,
	add	r3, r0, #26368	@ ivtmp.2166, pH264Ctx,
	mov	r2, #0	@ i.2187,
	add	r3, r3, #192	@ ivtmp.2166, ivtmp.2166,
	b	.L594	@
.L593:
	ldr	r1, [r0, r4]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ltref_frames_in_buffer, i.2187
	bls	.L603	@,
.L594:
	ldr	r1, [r3, #0]	@ D.35775, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ i.2187, i.2187,
	add	r3, r3, #4	@ ivtmp.2166, ivtmp.2166,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L593	@,
	ldr	ip, [r1, #400]	@ tmp197,
	bic	ip, ip, #-16777216	@ tmp195, tmp197,
	bic	ip, ip, #255	@ tmp195, tmp195,
	cmp	ip, #256	@ tmp195,
	ldreq	ip, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #408]	@ <variable>.long_term_frame_idx, <variable>.frame.long_term_pic_num
	b	.L593	@
	.fnend
	.size	CalcPicNum, .-CalcPicNum
	.align	2
	.global	IsOutDPB
	.type	IsOutDPB, %function
IsOutDPB:
	.fnstart
.LFB1678:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pFrameStore
	str	r4, [sp, #-4]!	@,
	.save {r4}
	beq	.L609	@,
	movw	r3, #26628	@ tmp141,
	ldr	r4, [r0, r3]	@ D.35851, <variable>.DPB.used_size
	cmp	r4, #0	@ D.35851,
	beq	.L609	@,
	movw	ip, #26432	@ tmp142,
	ldr	r2, [r0, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r2, r1	@ <variable>.DPB.fs, pFrameStore
	beq	.L610	@,
	tst	r4, #1	@ D.35851,
	add	r3, r0, #26368	@ tmp144, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.2235, tmp144,
	mov	r0, #0	@ i,
	bne	.L611	@,
	ldr	ip, [r2, #0]	@ D.35848, <variable>.DPB.fs
	mov	r0, #1	@ i,
	add	r2, r3, #72	@ ivtmp.2235, tmp144,
	cmp	ip, r1	@ D.35848, pFrameStore
	bne	.L611	@,
.L610:
	mov	r0, #0	@ D.35846,
	b	.L613	@
.L612:
	ldr	ip, [r3], #4	@ D.35848, <variable>.DPB.fs
	cmp	ip, r1	@ D.35848, pFrameStore
	beq	.L610	@,
	ldr	ip, [r2, #4]	@ D.35848, <variable>.DPB.fs
	add	r2, r3, #4	@ ivtmp.2235, tmp150,
	cmp	ip, r1	@ D.35848, pFrameStore
	beq	.L610	@,
.L611:
	add	r0, r0, #1	@ tmp149, i,
	mov	r3, r2	@ tmp150, ivtmp.2235
	cmp	r0, r4	@ tmp149, D.35851
	add	r0, r0, #1	@ i, tmp149,
	bcc	.L612	@,
.L609:
	mov	r0, #1	@ D.35846,
.L613:
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	IsOutDPB, .-IsOutDPB
	.align	2
	.global	UpdatePicQpInf
	.type	UpdatePicQpInf, %function
UpdatePicQpInf:
	.fnstart
.LFB1683:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r1, #28]	@ <variable>.MaxQp, <variable>.MaxQp
	ldr	r3, [r1, #32]	@ <variable>.MinQp, <variable>.MinQp
	cmp	r2, r0	@ <variable>.MaxQp, SlcQp
	strge	r2, [r1, #28]	@, <variable>.MaxQp, <variable>.MaxQp
	strlt	r0, [r1, #28]	@, SlcQp, <variable>.MaxQp
	cmp	r3, r0	@ <variable>.MinQp, SlcQp
	strle	r3, [r1, #32]	@, <variable>.MinQp, <variable>.MinQp
	strgt	r0, [r1, #32]	@, SlcQp, <variable>.MinQp
	bx	lr	@
	.fnend
	.size	UpdatePicQpInf, .-UpdatePicQpInf
	.align	2
	.global	H264_GetPicStreamSize
	.type	H264_GetPicStreamSize, %function
H264_GetPicStreamSize:
	.fnstart
.LFB1686:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #52492	@ tmp138,
	ldr	r3, [r0, r3]	@ pH264SliceParam, <variable>.DecPicPara.pFirstSlice
	cmp	r3, #0	@ pH264SliceParam,
	moveq	r0, r3	@ TotalSize, pH264SliceParam
	bxeq	lr	@
	mov	r0, #0	@ TotalSize,
.L625:
	ldr	r2, [r3, #12]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r3, #8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r3, [r3, #4056]	@ pH264SliceParam, <variable>.pNextSlice
	add	ip, r1, r2	@ tmp139, <variable>.valid_bitlen, <variable>.valid_bitlen
	add	r2, ip, #7	@ tmp142, tmp139,
	cmp	r3, #0	@ pH264SliceParam,
	add	r0, r0, r2, lsr #3	@, TotalSize, TotalSize, tmp142,
	bne	.L625	@,
	bx	lr	@
	.fnend
	.size	H264_GetPicStreamSize, .-H264_GetPicStreamSize
	.align	2
	.global	PPSSPSCheck
	.type	PPSSPSCheck, %function
PPSSPSCheck:
	.fnstart
.LFB1688:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #13584	@ tmp137,
	movw	r2, #20692	@ tmp138,
	ldr	ip, [r0, r3]	@ <variable>.PPS, <variable>.PPS
	mov	r1, #2208	@ tmp141,
	ldr	r3, [r0, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mla	r3, r1, r3, ip	@ pPPS, tmp141, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L632	@,
.L629:
	mvn	r0, #0	@ D.36922,
	bx	lr	@
.L632:
	movw	ip, #13580	@ tmp146,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r0, ip]	@ <variable>.SPS, <variable>.SPS
	mov	r1, #4000	@ tmp148,
	mla	ip, r1, r3, r2	@ tmp149, tmp148, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [ip, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.36922,
	bxne	lr	@
	b	.L629	@
	.fnend
	.size	PPSSPSCheck, .-PPSSPSCheck
	.align	2
	.global	PPSSPSCheckTmpId
	.type	PPSSPSCheckTmpId, %function
PPSSPSCheckTmpId:
	.fnstart
.LFB1689:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #13584	@ tmp139,
	mov	ip, #2208	@ tmp141,
	ldr	r3, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	mla	r3, ip, r1, r3	@ pPPS, tmp141, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r2, [r3, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L637	@,
.L634:
	mvn	r0, #0	@ D.36940,
	bx	lr	@
.L637:
	movw	r2, #13572	@ tmp144,
	ldr	r3, [r3, #28]	@ D.36941, <variable>.seq_parameter_set_id
	ldr	ip, [r0, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, ip, #1	@ tmp145, <variable>.MaxSpsNum,
	cmp	r3, r1	@ D.36941, tmp145
	bhi	.L634	@,
	movw	ip, #13580	@ tmp148,
	mov	r1, #4000	@ tmp150,
	ldr	r2, [r0, ip]	@ <variable>.SPS, <variable>.SPS
	mla	ip, r1, r3, r2	@ tmp151, tmp150, D.36941, <variable>.SPS
	ldrb	r3, [ip, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r3, #0	@ <variable>.is_valid,
	movne	r0, #0	@ D.36940,
	bxne	lr	@
	b	.L634	@
	.fnend
	.size	PPSSPSCheckTmpId, .-PPSSPSCheckTmpId
	.align	2
	.global	IsNewPic
	.type	IsNewPic, %function
IsNewPic:
	.fnstart
.LFB1690:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	movw	ip, #22332	@ tmp150,
	movw	r4, #22336	@ tmp156,
	movw	r3, #14332	@ tmp151,
	movw	r2, #20692	@ tmp157,
	ldr	r5, [r0, ip]	@ <variable>.PrevSlice.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	ldr	r3, [r0, r3]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	movw	r1, #22344	@ tmp162,
	ldr	ip, [r0, r4]	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.PrevSlice.pic_parameter_set_id
	movw	r4, #20700	@ tmp163,
	ldr	r2, [r0, r2]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r1, [r0, r1]	@ <variable>.PrevSlice.frame_num, <variable>.PrevSlice.frame_num
	cmp	ip, r2	@ <variable>.PrevSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	cmpeq	r5, r3	@, <variable>.PrevSlice.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r2, #22328	@ tmp168,
	movw	ip, #20681	@ tmp169,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.36965, <variable>.PrevSlice.field_pic_flag
	moveq	r3, #0	@, result.2360
	movne	r3, #1	@, result.2360
	ldrb	ip, [r0, ip]	@ zero_extendqisi2	@ D.36966, <variable>.CurrSlice.field_pic_flag
	cmp	r1, r4	@ <variable>.PrevSlice.frame_num, <variable>.CurrSlice.frame_num
	moveq	r1, r3	@, result.2361, result.2360
	orrne	r1, r3, #1	@,, result.2361, result.2360
	cmp	r2, ip	@ D.36965, D.36966
	orrne	r1, r1, #1	@,, result, result.2361
	cmp	r2, #0	@ D.36965,
	beq	.L639	@,
	cmp	ip, #0	@ D.36966,
	bne	.L647	@,
.L639:
	movw	r3, #22340	@ tmp178,
	movw	ip, #20712	@ tmp179,
	ldr	r2, [r0, r3]	@ D.36979, <variable>.PrevSlice.nal_ref_idc
	ldr	r3, [r0, ip]	@ D.36980, <variable>.CurrSlice.nal_ref_idc
	cmp	r2, r3	@ D.36979, D.36980
	moveq	r3, #0	@ prephitmp.2348,
	beq	.L641	@,
	cmp	r2, #0	@ D.36979,
	moveq	r3, #1	@ prephitmp.2348,
	bne	.L648	@,
.L641:
	movw	r2, #20683	@ tmp183,
	movw	ip, #22330	@ tmp182,
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ D.36985, <variable>.CurrSlice.nal_unit_type
	ldrb	ip, [r0, ip]	@ zero_extendqisi2	@ D.36984, <variable>.PrevSlice.nal_unit_type
	cmp	ip, r2	@ D.36984, D.36985
	orrne	r1, r1, #1	@,, result.2362, result
	cmp	r2, #5	@ D.36985,
	orr	r3, r1, r3	@ result.2359, result.2362, prephitmp.2348
	beq	.L649	@,
.L643:
	movw	r1, #16496	@ tmp192,
	ldr	r2, [r0, r1]	@ D.36994, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ D.36994,
	bne	.L644	@,
	movw	ip, #22356	@ tmp193,
	movw	r1, #22352	@ tmp199,
	ldr	r4, [r0, ip]	@ <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #19800	@ tmp194,
	ldr	ip, [r0, r1]	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r1, #19796	@ tmp200,
	ldr	r2, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	ldr	r1, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb,
	cmp	ip, r1	@ <variable>.PrevSlice.pic_oder_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	cmpeq	r4, r2	@, <variable>.PrevSlice.delta_pic_oder_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	moveq	r2, #0	@, result.2363
	movne	r2, #1	@, result.2363
	orr	r3, r3, r2	@ result.2359, result.2359, result.2363
.L645:
	movw	r1, #20732	@ tmp218,
	ldr	r0, [r0, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r0, #0	@ <variable>.CurrSlice.first_mb_in_slice,
	movne	r0, r3	@,, result.2359
	orreq	r0, r3, #1	@,,, result.2359
	ldmfd	sp!, {r4, r5}
	bx	lr
.L644:
	cmp	r2, #1	@ D.36994,
	bne	.L645	@,
	movw	ip, #22364	@ tmp205,
	movw	r1, #22360	@ tmp211,
	ldr	r4, [r0, ip]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r2, #19848	@ tmp206,
	ldr	ip, [r0, r1]	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	movw	r1, #19844	@ tmp212,
	ldr	r1, [r0, r1]	@ <variable>.CurrPOC.delta_pic_order_cnt,
	ldr	r2, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	cmp	ip, r1	@ <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	cmpeq	r4, r2	@, <variable>.PrevSlice.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	moveq	r1, #0	@, result.2364
	movne	r1, #1	@, result.2364
	orr	r3, r3, r1	@ result.2359, result.2359, result.2364
	b	.L645	@
.L648:
	rsbs	r3, r3, #1	@ prephitmp.2348, D.36980
	movcc	r3, #0	@ prephitmp.2348
	b	.L641	@
.L647:
	movw	r3, #22329	@ tmp172,
	movw	ip, #20682	@ tmp173,
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ <variable>.PrevSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	ldrb	r3, [r0, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r2, r3	@ <variable>.PrevSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	orrne	r1, r1, #1	@,, result, result
	b	.L639	@
.L649:
	cmp	ip, #5	@ D.36984,
	bne	.L643	@,
	movw	ip, #22348	@ tmp186,
	movw	r2, #20720	@ tmp187,
	ldr	r1, [r0, ip]	@ <variable>.PrevSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	ip, [r0, r2]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	cmp	r1, ip	@ <variable>.PrevSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	orrne	r3, r3, #1	@,, result.2359, result.2359
	b	.L643	@
	.fnend
	.size	IsNewPic, .-IsNewPic
	.align	2
	.global	ExitSlice
	.type	ExitSlice, %function
ExitSlice:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	movw	ip, #13584	@ tmp140,
	movw	r4, #20692	@ tmp137,
	ldr	r3, [r0, ip]	@ <variable>.PPS, <variable>.PPS
	ldr	r1, [r0, r4]	@ D.37592, <variable>.CurrSlice.pic_parameter_set_id
	movw	r6, #13580	@ tmp138,
	mov	r2, #2208	@ tmp142,
	ldr	ip, [r0, r6]	@ <variable>.SPS, <variable>.SPS
	movw	r5, #20681	@ tmp158,
	movw	r4, #20732	@ tmp152,
	mla	r6, r2, r1, r3	@ tmp143, tmp142, D.37592, <variable>.PPS
	ldrb	r3, [r0, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r5, [r0, r4]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r4, #20700	@ tmp155,
	ldr	r4, [r0, r4]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	ldr	r2, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movw	r6, #22336	@ tmp148,
	str	r1, [r0, r6]	@ D.37592, <variable>.PrevSlice.pic_parameter_set_id
	mov	r1, #4000	@ tmp146,
	mla	r2, r1, r2, ip	@ sps, tmp146, <variable>.seq_parameter_set_id, <variable>.SPS
	movw	r1, #22368	@ tmp151,
	ldr	ip, [r2, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r5, [r0, r1]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	movw	r1, #22344	@ tmp154,
	str	r4, [r0, r1]	@ <variable>.CurrSlice.frame_num, <variable>.PrevSlice.frame_num
	movw	r1, #22332	@ tmp149,
	str	ip, [r0, r1]	@ <variable>.seq_parameter_set_id, <variable>.PrevSlice.seq_parameter_set_id
	movw	ip, #22328	@ tmp157,
	strb	r3, [r0, ip]	@ <variable>.CurrSlice.field_pic_flag, <variable>.PrevSlice.field_pic_flag
	movwne	r3, #20682	@ tmp164,
	ldrneb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	movwne	r3, #22329	@ tmp163,
	movw	r1, #20712	@ tmp168,
	ldr	r1, [r0, r1]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	strneb	ip, [r0, r3]	@ <variable>.CurrSlice.bottom_field_flag, <variable>.PrevSlice.bottom_field_flag
	movw	r3, #20683	@ tmp171,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	ip, #22330	@ tmp170,
	cmp	r3, #5	@ <variable>.CurrSlice.nal_unit_type,
	strb	r3, [r0, ip]	@ <variable>.CurrSlice.nal_unit_type, <variable>.PrevSlice.nal_unit_type
	movw	r3, #22340	@ tmp167,
	str	r1, [r0, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevSlice.nal_ref_idc
	movweq	r3, #20720	@ tmp177,
	ldreq	r1, [r0, r3]	@ <variable>.CurrSlice.idr_pic_id, <variable>.CurrSlice.idr_pic_id
	movweq	r3, #22348	@ tmp176,
	streq	r1, [r0, r3]	@ <variable>.CurrSlice.idr_pic_id, <variable>.PrevSlice.idr_pic_id
	ldr	r3, [r2, #2908]	@ prephitmp.2380, <variable>.pic_order_cnt_type
	cmp	r3, #0	@ prephitmp.2380,
	bne	.L653	@,
	movw	r1, #19796	@ tmp180,
	movw	r3, #19800	@ tmp183,
	ldr	ip, [r0, r1]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	movw	r3, #22352	@ tmp179,
	str	ip, [r0, r3]	@ <variable>.CurrPOC.pic_order_cnt_lsb, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r3, #22356	@ tmp182,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt_bottom, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	ldr	r3, [r2, #2908]	@ prephitmp.2380, <variable>.pic_order_cnt_type
.L653:
	cmp	r3, #1	@ prephitmp.2380,
	bne	.L654	@,
	movw	r2, #19844	@ tmp186,
	movw	ip, #19848	@ tmp189,
	ldr	r1, [r0, r2]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	r3, #22360	@ tmp185,
	ldr	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.CurrPOC.delta_pic_order_cnt
	movw	ip, #22364	@ tmp188,
	str	r1, [r0, r3]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
	str	r2, [r0, ip]	@ <variable>.CurrPOC.delta_pic_order_cnt, <variable>.PrevSlice.delta_pic_order_cnt
.L654:
	movw	r3, #52796	@ tmp191,
	ldr	ip, [r0, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	add	r1, ip, #1	@ tmp194, <variable>.TotalSlice,
	str	r1, [r0, r3]	@ tmp194, <variable>.TotalSlice
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	ExitSlice, .-ExitSlice
	.align	2
	.global	PicTypeStatistic
	.type	PicTypeStatistic, %function
PicTypeStatistic:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #20680	@ tmp134,
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L659	@,
	bcs	.L664	@,
	movw	r1, #50148	@ tmp140,
	ldr	r2, [r0, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #2	@ <variable>.CurrPic.pic_type,
	movne	r2, #1	@ tmp143,
	strne	r2, [r0, r1]	@ tmp143, <variable>.CurrPic.pic_type
	movw	r1, #50152	@ tmp150,
	mov	r2, #0	@ tmp151,
	str	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	bx	lr	@
.L664:
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	bxne	lr	@
	movw	r3, #20683	@ tmp146,
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	ip, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	ip, #50152	@ tmp148,
	moveq	r2, #1	@ tmp149,
	streq	r2, [r0, ip]	@ tmp149, <variable>.CurrPic.is_idr_pic
	movwne	r1, #50152	@ tmp150,
	movne	r2, #0	@ tmp151,
	strne	r2, [r0, r1]	@ tmp151, <variable>.CurrPic.is_idr_pic
	bx	lr	@
.L659:
	movw	r3, #50148	@ tmp136,
	movw	r1, #50152	@ tmp138,
	mov	ip, #2	@ tmp137,
	mov	r2, #0	@ tmp139,
	str	ip, [r0, r3]	@ tmp137, <variable>.CurrPic.pic_type
	str	r2, [r0, r1]	@ tmp139, <variable>.CurrPic.is_idr_pic
	bx	lr	@
	.fnend
	.size	PicTypeStatistic, .-PicTypeStatistic
	.align	2
	.global	CalcStreamBits
	.type	CalcStreamBits, %function
CalcStreamBits:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #17588	@ tmp165,
	ldrb	r3, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	cmp	r3, #0	@ <variable>.CurrPPS.entropy_coding_mode_flag,
	beq	.L666	@,
	ldr	r3, [r0, #368]	@ temp.2459, <variable>.pCurrNal
	ldr	ip, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, ip, #7	@ tmp167, <variable>.nal_bitoffset,
	bic	ip, r2, #7	@ tmp169, tmp167,
	str	ip, [r3, #64]	@ tmp169, <variable>.nal_bitoffset
	ldr	r3, [r0, #368]	@ temp.2460, <variable>.pCurrNal
	ldr	r2, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	sub	ip, r2, #1	@ tmp171, <variable>.nal_trail_zero_bit_num,
	str	ip, [r3, #72]	@ tmp171, <variable>.nal_trail_zero_bit_num
.L666:
	ldr	r3, [r0, #368]	@ temp.2495, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2496, <variable>.nal_used_segment
	cmp	r2, #0	@ temp.2496,
	moveq	r1, r2	@ code_len_byte, temp.2496
	moveq	r6, r2	@ temp.2496, temp.2496
	beq	.L668	@,
	mov	r6, r2, asl #3	@ temp.2496, temp.2496,
	mov	ip, #28	@ ivtmp.2457,
	rsb	r5, r2, r6	@ tmp174, temp.2496, temp.2496
	ldr	r1, [r3, #12]	@ code_len_byte, <variable>.bitstream_length
	add	r4, r3, ip	@ ivtmp.2458, temp.2495,
	mov	r5, r5, asl #2	@ D.42304, tmp174,
	cmp	ip, r5	@ ivtmp.2457, D.42304
	sub	r7, r5, #28	@ tmp405, D.42304,
	ubfx	r7, r7, #2, #1	@ tmp409, tmp405,,
	beq	.L668	@,
	cmp	r7, #0	@ tmp409,
	beq	.L669	@,
	ldr	r7, [r4, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	ip, #56	@ ivtmp.2457,
	cmp	ip, r5	@ ivtmp.2457, D.42304
	add	r4, r3, ip	@ ivtmp.2458, temp.2495,
	add	r1, r1, r7	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	beq	.L668	@,
.L669:
	ldr	r8, [r4, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	ip, ip, #56	@ ivtmp.2457, ivtmp.2457,
	ldr	r7, [r4, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	ip, r5	@ ivtmp.2457, D.42304
	add	r1, r1, r8	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	add	r4, r4, #56	@ ivtmp.2458, ivtmp.2458,
	add	r1, r1, r7	@ code_len_byte, code_len_byte, <variable>.bitstream_length
	bne	.L669	@,
.L668:
	rsb	r2, r2, r6	@ tmp180, temp.2496, temp.2496
	ldr	ip, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r3, r3, r2, asl #2	@, tmp182, temp.2495, tmp180,
	and	r2, ip, #7	@ tmp185, <variable>.nal_bitoffset,
	str	r2, [r3, #24]	@ tmp185, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2463, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2465, <variable>.nal_used_segment
	ldr	ip, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r2, r2, asl #3	@, tmp189, temp.2465, temp.2465,
	add	r3, r3, r2, asl #2	@, tmp191, temp.2463, tmp189,
	ldr	r2, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	add	r2, r2, ip, lsr #3	@, tmp202, <variable>.stream_phy_addr, <variable>.nal_bitoffset,
	rsb	ip, r1, r2	@ tmp204, code_len_byte, tmp202
	str	ip, [r3, #28]	@ tmp204, <variable>.bytespos
	ldr	r3, [r0, #368]	@ temp.2466, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2468, <variable>.nal_used_segment
	ldr	ip, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	rsb	r2, r2, r2, asl #3	@, tmp208, temp.2468, temp.2468,
	add	r3, r3, r2, asl #2	@, tmp210, temp.2466, tmp208,
	ldr	r2, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r2	@ tmp219, code_len_byte, <variable>.bitstream_length
	rsb	r2, ip, r1, asl #3	@, tmp223, <variable>.nal_bitoffset, tmp219,
	str	r2, [r3, #20]	@ tmp223, <variable>.valid_bitlen
	b	.L694	@
.L696:
	rsb	ip, r2, r1	@ tmp236, temp.2477, tmp397
	add	r1, r3, ip, asl #2	@, tmp238, D.37660, tmp236,
	ldr	r2, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	ip, r2, #8	@ tmp248, <variable>.bitsoffset,
	str	ip, [r1, #24]	@ tmp248, <variable>.bitsoffset
	ldr	r2, [r0, #368]	@ temp.2471, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ temp.2473, <variable>.nal_used_segment
	rsb	r1, r3, r3, asl #3	@, tmp252, temp.2473, temp.2473,
	add	ip, r2, r1, asl #2	@, tmp254, temp.2471, tmp252,
	add	r3, ip, #24	@ tmp255, tmp254,
	ldr	r2, [r3, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	r1, r2, #1	@ tmp264, <variable>.bytespos,
	str	r1, [r3, #4]	@ tmp264, <variable>.bytespos
.L694:
	ldr	r3, [r0, #368]	@ D.37660, <variable>.pCurrNal
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ temp.2477, <variable>.nal_used_segment
	mov	r1, r2, asl #3	@ tmp397, temp.2477,
	rsb	ip, r2, r1	@ tmp227, temp.2477, tmp397
	add	ip, r3, ip, asl #2	@, tmp229, D.37660, tmp227,
	ldr	ip, [ip, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	ip, #3	@ <variable>.bytespos,
	bne	.L696	@,
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	sub	ip, r1, #1	@ tmp274, <variable>.nal_segment,
	cmp	ip, #1	@ tmp274,
	bls	.L697	@,
.L679:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L697:
	add	r2, r2, #1	@ i.2461, temp.2477,
	cmp	r1, r2	@ temp.2475, i.2461
	bls	.L673	@,
	mov	r4, #0	@ tmp402,
.L681:
	rsb	r1, r2, r2, asl #3	@, tmp279, i.2461, i.2461,
	mov	r1, r1, asl #2	@ tmp280, tmp279,
	add	ip, r1, r3	@ tmp281, tmp280, D.37660
	str	r4, [ip, #24]	@ tmp402, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2478, <variable>.pCurrNal
	add	r3, r1, r3	@ tmp289, tmp280, temp.2478
	ldr	ip, [r3, #16]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	str	ip, [r3, #28]	@ <variable>.stream_phy_addr, <variable>.bytespos
	ldr	r3, [r0, #368]	@ temp.2479, <variable>.pCurrNal
	add	r3, r1, r3	@ tmp304, tmp280, temp.2479
	ldr	ip, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	mov	ip, ip, asl #3	@ tmp314, <variable>.bitstream_length,
	str	ip, [r3, #20]	@ tmp314, <variable>.valid_bitlen
	b	.L695	@
.L698:
	add	r3, r1, r3	@ tmp329, tmp401, D.37660
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	ip, ip, #8	@ tmp339, <variable>.bitsoffset,
	str	ip, [r3, #24]	@ tmp339, <variable>.bitsoffset
	ldr	ip, [r0, #368]	@ temp.2482, <variable>.pCurrNal
	add	r3, r1, ip	@ tmp345, tmp401, temp.2482
	add	r3, r3, #24	@ tmp346, tmp345,
	ldr	ip, [r3, #4]	@ <variable>.bytespos, <variable>.bytespos
	sub	ip, ip, #1	@ tmp355, <variable>.bytespos,
	str	ip, [r3, #4]	@ tmp355, <variable>.bytespos
.L695:
	ldr	r3, [r0, #368]	@ D.37660, <variable>.pCurrNal
	add	ip, r1, r3	@ tmp320, tmp280, D.37660
	ldr	ip, [ip, #28]	@ <variable>.bytespos, <variable>.bytespos
	tst	ip, #3	@ <variable>.bytespos,
	bne	.L698	@,
	ldr	r1, [r3, #68]	@ temp.2475, <variable>.nal_segment
	add	r2, r2, #1	@ i.2461, i.2461,
	cmp	r1, r2	@ temp.2475, i.2461
	bhi	.L681	@,
.L673:
	sub	r2, r1, #1	@ temp.2484, temp.2475,
	ldr	ip, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	rsb	r1, r2, r2, asl #3	@, tmp368, temp.2484, temp.2484,
	add	r2, r3, r1, asl #2	@, tmp370, D.37660, tmp368,
	add	r3, r2, #16	@ tmp371, tmp370,
	ldr	r1, [r3, #4]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	rsb	r2, ip, r1	@ tmp381, <variable>.nal_trail_zero_bit_num, <variable>.valid_bitlen
	str	r2, [r3, #4]	@ tmp381, <variable>.valid_bitlen
	ldr	r2, [r0, #368]	@ temp.2486, <variable>.pCurrNal
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ i, <variable>.nal_used_segment
	ldr	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bls	.L679	@,
	mov	r5, #50176	@ tmp399,
.L680:
	rsb	ip, r3, r3, asl #3	@, tmp386, i, i,
	ldr	r4, [r0, r5]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	add	r3, r3, #1	@ i, i,
	add	ip, r2, ip, asl #2	@, tmp388, temp.2486, tmp386,
	ldr	ip, [ip, #28]	@ temp.2489, <variable>.bytespos
	cmp	ip, r4	@ temp.2489, <variable>.CurrPic.stream_base_addr
	strcc	ip, [r0, r5]	@ temp.2489, <variable>.CurrPic.stream_base_addr
	ldrcc	r1, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r3	@ <variable>.nal_segment, i
	bhi	.L680	@,
	b	.L679	@
	.fnend
	.size	CalcStreamBits, .-CalcStreamBits
	.align	2
	.global	PPSEqual
	.type	PPSEqual, %function
PPSEqual:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pPPS1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L719	@,
.L700:
	mvn	r0, #0	@ ret,
.L707:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L719:
	cmp	r1, #0	@ pPPS2,
	beq	.L700	@,
	ldr	r6, [r0, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r3, [r1, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	r5, [r0, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r1, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	r4, [r1, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	r6, r3	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	cmpeq	r5, r2	@, <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldrb	ip, [r0, #0]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	ldrb	r6, [r0, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	ldrb	r5, [r1, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r3, #0	@, equal.2579
	moveq	r3, #1	@, equal.2579
	cmp	ip, r4	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	movne	ip, #0	@, equal.2580
	andeq	ip, r3, #1	@,, equal.2580, equal.2579
	ldr	r4, [r1, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	ldr	r3, [r0, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	cmp	r6, r5	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	movne	r2, #0	@, equal.2581
	andeq	r2, ip, #1	@,, equal.2581, equal.2580
	ldr	r6, [r0, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r5, [r1, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	cmp	r3, r4	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movne	r3, #0	@, equal.2582
	andeq	r3, r2, #1	@,, equal.2582, equal.2581
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r6, r5	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	movne	ip, #0	@, equal.2583
	andeq	ip, r3, #1	@,, equal.2583, equal.2582
	ldr	r6, [r0, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	ldr	r5, [r1, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, r4	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	movne	r2, #0	@, equal.2584
	andeq	r2, ip, #1	@,, equal.2584, equal.2583
	ldr	r4, [r1, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	ldr	ip, [r0, #48]	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	cmp	r6, r5	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	movne	r3, #0	@, equal.2585
	andeq	r3, r2, #1	@,, equal.2585, equal.2584
	ldr	r6, [r0, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	ldr	r5, [r1, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	cmp	ip, r4	@ <variable>.pic_init_qp_minus26, <variable>.pic_init_qp_minus26
	movne	ip, #0	@, equal.2586
	andeq	ip, r3, #1	@,, equal.2586, equal.2585
	ldrb	r4, [r1, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	ldrb	r3, [r0, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	r6, r5	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movne	r2, #0	@, equal.2587
	andeq	r2, ip, #1	@,, equal.2587, equal.2586
	ldrb	r6, [r0, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	ldrb	r5, [r1, #4]	@ zero_extendqisi2	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	cmp	r3, r4	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	movne	r3, #0	@, equal.2588
	andeq	r3, r2, #1	@,, equal.2588, equal.2587
	ldr	r2, [r0, #60]	@ D.38148, <variable>.transform_8x8_mode_flag
	ldr	r4, [r1, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	cmp	r6, r5	@ <variable>.constrained_intra_pred_flag, <variable>.constrained_intra_pred_flag
	movne	ip, #0	@, equal.2589
	andeq	ip, r3, #1	@,, equal.2589, equal.2588
	ldrb	r3, [r0, #18]	@ zero_extendqisi2	@ D.38151, <variable>.pic_scaling_matrix_present_flag
	ldrb	r6, [r1, #18]	@ zero_extendqisi2	@ <variable>.pic_scaling_matrix_present_flag, <variable>.pic_scaling_matrix_present_flag
	cmp	r2, r4	@ D.38148, <variable>.transform_8x8_mode_flag
	movne	ip, #0	@, equal.2590
	andeq	ip, ip, #1	@,, equal.2590, equal.2589
	cmp	r6, r3	@ <variable>.pic_scaling_matrix_present_flag, D.38151
	movne	r6, #0	@, equal
	andeq	r6, ip, #1	@,, equal, equal.2590
	cmp	r3, #0	@ D.38151,
	beq	.L701	@,
	mov	r2, r2, asl #1	@ tmp260, D.38148,
	adds	ip, r2, #6	@, tmp260,
	str	ip, [sp, #4]	@, %sfp
	beq	.L701	@,
	mov	r9, r0	@ ivtmp.2546, pPPS1
	mov	fp, r1	@ ivtmp.2548, pPPS2
	mov	r8, #0	@ i,
	str	r0, [sp, #0]	@ pPPS1, %sfp
	mov	sl, r1	@ pPPS2, pPPS2
	b	.L705	@
.L717:
	cmp	r8, #5	@ i,
	bhi	.L703	@,
	ldr	r0, [r9, #72]	@ tmp268, <variable>.ScalingList4x4
	add	r8, r8, #1	@ i, i,
	ldr	ip, [fp, #72]	@ tmp269, <variable>.ScalingList4x4
	ldr	r5, [r9, #68]	@ tmp272, <variable>.ScalingList4x4
	ldr	r2, [fp, #68]	@ tmp273, <variable>.ScalingList4x4
	ldr	r3, [r9, #76]	@ tmp276, <variable>.ScalingList4x4
	cmp	r0, ip	@ tmp268, tmp269
	cmpeq	r5, r2	@, tmp272, tmp273
	ldr	r4, [fp, #76]	@ tmp277, <variable>.ScalingList4x4
	ldr	r7, [r9, #80]	@ tmp280, <variable>.ScalingList4x4
	ldr	r5, [fp, #80]	@ tmp281, <variable>.ScalingList4x4
	movne	r1, #0	@, equal.2595
	moveq	r1, #1	@, equal.2595
	ldr	r0, [r9, #84]	@ tmp284, <variable>.ScalingList4x4
	cmp	r3, r4	@ tmp276, tmp277
	movne	ip, #0	@, equal.2599
	andeq	ip, r1, #1	@,, equal.2599, equal.2595
	ldr	r2, [fp, #84]	@ tmp285, <variable>.ScalingList4x4
	cmp	r7, r5	@ tmp280, tmp281
	movne	r5, #0	@, equal.2603
	andeq	r5, ip, #1	@,, equal.2603, equal.2599
	ldr	r3, [fp, #88]	@ tmp289, <variable>.ScalingList4x4
	ldr	ip, [r9, #88]	@ tmp288, <variable>.ScalingList4x4
	cmp	r0, r2	@ tmp284, tmp285
	movne	r1, #0	@, equal.2607
	andeq	r1, r5, #1	@,, equal.2607, equal.2603
	ldr	r7, [r9, #92]	@ tmp292, <variable>.ScalingList4x4
	ldr	r2, [fp, #92]	@ tmp293, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp288, tmp289
	movne	r0, #0	@, equal.2611
	andeq	r0, r1, #1	@,, equal.2611, equal.2607
	ldr	r3, [fp, #96]	@ tmp297, <variable>.ScalingList4x4
	ldr	r1, [r9, #96]	@ tmp296, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp292, tmp293
	movne	ip, #0	@, equal.2615
	andeq	ip, r0, #1	@,, equal.2615, equal.2611
	ldr	r7, [r9, #100]	@ tmp300, <variable>.ScalingList4x4
	ldr	r2, [fp, #100]	@ tmp301, <variable>.ScalingList4x4
	cmp	r1, r3	@ tmp296, tmp297
	movne	r1, #0	@, equal.2619
	andeq	r1, ip, #1	@,, equal.2619, equal.2615
	ldr	r3, [fp, #104]	@ tmp305, <variable>.ScalingList4x4
	ldr	ip, [r9, #104]	@ tmp304, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp300, tmp301
	movne	r0, #0	@, equal.2623
	andeq	r0, r1, #1	@,, equal.2623, equal.2619
	ldr	r1, [r9, #108]	@ tmp308, <variable>.ScalingList4x4
	ldr	r7, [fp, #108]	@ tmp309, <variable>.ScalingList4x4
	cmp	ip, r3	@ tmp304, tmp305
	movne	ip, #0	@, equal.2627
	andeq	ip, r0, #1	@,, equal.2627, equal.2623
	ldr	r3, [fp, #112]	@ tmp313, <variable>.ScalingList4x4
	ldr	r0, [r9, #112]	@ tmp312, <variable>.ScalingList4x4
	cmp	r1, r7	@ tmp308, tmp309
	movne	r2, #0	@, equal.2631
	andeq	r2, ip, #1	@,, equal.2631, equal.2627
	ldr	ip, [r9, #116]	@ tmp316, <variable>.ScalingList4x4
	ldr	r7, [fp, #116]	@ tmp317, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp312, tmp313
	movne	r0, #0	@, equal.2635
	andeq	r0, r2, #1	@,, equal.2635, equal.2631
	ldr	r3, [fp, #120]	@ tmp321, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp316, tmp317
	movne	r1, #0	@, equal.2639
	andeq	r1, r0, #1	@,, equal.2639, equal.2635
	ldr	r7, [sp, #0]	@, %sfp
	ldr	r2, [r9, #120]	@ tmp320, <variable>.ScalingList4x4
	ldr	ip, [fp, #124]	@ tmp331, <variable>.ScalingList4x4
	cmp	r2, r3	@ tmp320, tmp321
	movne	r2, #0	@, equal.2643
	andeq	r2, r1, #1	@,, equal.2643, equal.2639
	ldr	r0, [r7, r8, asl #6]	@ tmp326, <variable>.ScalingList4x4
	ldr	r3, [sl, r8, asl #6]	@ tmp327, <variable>.ScalingList4x4
	and	r6, r6, r2	@ equal.2647, equal, equal.2643
	ldr	r1, [r9, #124]	@ tmp330, <variable>.ScalingList4x4
	cmp	r0, r3	@ tmp326, tmp327
	movne	r3, #0	@, equal.2651
	andeq	r3, r6, #1	@,, equal.2651, equal.2647
	cmp	r1, ip	@ tmp330, tmp331
	movne	r6, #0	@, equal
	andeq	r6, r3, #1	@,, equal, equal.2651
.L702:
	ldr	ip, [sp, #4]	@, %sfp
	add	r9, r9, #64	@ ivtmp.2546, ivtmp.2546,
	add	fp, fp, #64	@ ivtmp.2548, ivtmp.2548,
	cmp	ip, r8	@, i
	bls	.L720	@,
.L705:
	ldr	r2, [sp, #0]	@, %sfp
	add	ip, sl, r8	@ tmp262, pPPS2, i
	add	r3, r2, r8	@ tmp261,, i
	ldrb	r1, [ip, #5]	@ zero_extendqisi2	@ D.38157, <variable>.pic_scaling_list_present_flag
	ldrb	r0, [r3, #5]	@ zero_extendqisi2	@ D.38157, <variable>.pic_scaling_list_present_flag
	cmp	r0, r1	@ D.38157, D.38157
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r0, #0	@ D.38157,
	bne	.L717	@,
	add	r8, r8, #1	@ i, i,
	b	.L702	@
.L720:
	ldr	r0, [sp, #0]	@ pPPS1, %sfp
	mov	r1, sl	@ pPPS2, pPPS2
.L701:
	ldr	r2, [r0, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	ldr	r0, [r1, #56]	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	cmp	r2, r0	@ <variable>.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movne	r6, #0	@, tmp345
	andeq	r6, r6, #1	@,, tmp345, equal
	cmp	r6, #0	@ tmp345,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
	b	.L707	@
.L703:
	mov	r4, r8, asl #8	@ tmp333, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #1088	@ tmp334, tmp333,
	add	r2, r0, r1	@ ivtmp.2533,, tmp334
	add	r3, sl, r1	@ ivtmp.2536, pPPS2, tmp334
	ldr	r5, [sl, r1]	@ tmp339, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2533, ivtmp.2533,
	ldr	r4, [r7, r1]	@ tmp338, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2536, ivtmp.2536,
	ldr	r7, [r2, #4]	@ tmp367, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp368, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp338, tmp339
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp367, tmp368
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L704:
	mov	r2, r0	@ tmp352, ivtmp.2533
	mov	r3, r1	@ tmp353, ivtmp.2536
	ldr	r7, [r2], #4	@ tmp357, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp358, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp364, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2533, tmp352,
	ldr	r2, [r1, #4]	@ tmp365, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp357, tmp358
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2536, tmp353,
	cmp	r4, r2	@ tmp364, tmp365
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L704	@,
	add	r8, r8, #1	@ i, i,
	b	.L702	@
	.fnend
	.size	PPSEqual, .-PPSEqual
	.align	2
	.global	SPSEqual
	.type	SPSEqual, %function
SPSEqual:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ pSPS1
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp}
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L752	@,
.L722:
	mvn	r0, #0	@ ret,
.L735:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L752:
	cmp	r1, #0	@ pSPS2,
	beq	.L722	@,
	ldr	r6, [r0, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldr	r4, [r1, #736]	@ <variable>.profile_idc, <variable>.profile_idc
	ldrb	r7, [r0, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r5, [r0, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	cmp	r6, r4	@ <variable>.profile_idc, <variable>.profile_idc
	cmpeq	r7, r3	@, <variable>.constrained_set0_flag, <variable>.constrained_set0_flag
	ldrb	r2, [r1, #1]	@ zero_extendqisi2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	ldrb	r4, [r0, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	ldrb	r7, [r1, #2]	@ zero_extendqisi2	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	ip, #0	@, equal.2748
	moveq	ip, #1	@, equal.2748
	ldr	r6, [r1, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r5, r2	@ <variable>.constrained_set1_flag, <variable>.constrained_set1_flag
	movne	r2, #0	@, equal.2749
	andeq	r2, ip, #1	@,, equal.2749, equal.2748
	ldr	r5, [r0, #740]	@ <variable>.level_idc, <variable>.level_idc
	cmp	r4, r7	@ <variable>.constrained_set2_flag, <variable>.constrained_set2_flag
	movne	r3, #0	@, equal.2750
	andeq	r3, r2, #1	@,, equal.2750, equal.2749
	ldr	r4, [r0, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r7, [r1, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	r5, r6	@ <variable>.level_idc, <variable>.level_idc
	movne	ip, #0	@, equal.2751
	andeq	ip, r3, #1	@,, equal.2751, equal.2750
	ldrb	r3, [r0, #25]	@ zero_extendqisi2	@ D.38393, <variable>.seq_scaling_matrix_present_flag
	ldrb	r6, [r1, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r4, r7	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	movne	r2, #0	@, equal.2752
	andeq	r2, ip, #1	@,, equal.2752, equal.2751
	cmp	r6, r3	@ <variable>.seq_scaling_matrix_present_flag, D.38393
	movne	r6, #0	@, equal
	andeq	r6, r2, #1	@,, equal, equal.2752
	cmp	r3, #0	@ D.38393,
	beq	.L723	@,
	mov	r9, r0	@ ivtmp.2712, pSPS1
	mov	fp, r1	@ ivtmp.2714, pSPS2
	mov	r8, #0	@ i,
	str	r0, [sp, #0]	@ pSPS1, %sfp
	mov	sl, r1	@ pSPS2, pSPS2
	b	.L727	@
.L754:
	mov	r3, r8, asl #6	@ tmp283, i,
	ldr	r4, [r9, #768]	@ tmp227, <variable>.ScalingList4x4
	ldr	r7, [fp, #768]	@ tmp228, <variable>.ScalingList4x4
	add	r2, r3, sl	@, tmp283, pSPS2
	str	r2, [sp, #4]	@, %sfp
	add	r3, r3, r1	@ tmp284, tmp283,
	ldr	r0, [r9, #764]	@ tmp231, <variable>.ScalingList4x4
	ldr	r1, [fp, #764]	@ tmp232, <variable>.ScalingList4x4
	ldr	r5, [fp, #772]	@ tmp236, <variable>.ScalingList4x4
	cmp	r4, r7	@ tmp227, tmp228
	cmpeq	r0, r1	@, tmp231, tmp232
	ldr	r2, [r9, #772]	@ tmp235, <variable>.ScalingList4x4
	ldr	r4, [r9, #776]	@ tmp239, <variable>.ScalingList4x4
	ldr	r7, [fp, #776]	@ tmp240, <variable>.ScalingList4x4
	movne	ip, #0	@, equal.2769
	moveq	ip, #1	@, equal.2769
	ldr	r1, [fp, #780]	@ tmp244, <variable>.ScalingList4x4
	cmp	r2, r5	@ tmp235, tmp236
	movne	r2, #0	@, equal.2773
	andeq	r2, ip, #1	@,, equal.2773, equal.2769
	ldr	r5, [r9, #780]	@ tmp243, <variable>.ScalingList4x4
	cmp	r4, r7	@ tmp239, tmp240
	movne	r0, #0	@, equal.2777
	andeq	r0, r2, #1	@,, equal.2777, equal.2773
	ldr	r7, [r9, #784]	@ tmp247, <variable>.ScalingList4x4
	ldr	r2, [fp, #784]	@ tmp248, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp243, tmp244
	movne	ip, #0	@, equal.2781
	andeq	ip, r0, #1	@,, equal.2781, equal.2777
	ldr	r5, [r9, #788]	@ tmp251, <variable>.ScalingList4x4
	ldr	r1, [fp, #788]	@ tmp252, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp247, tmp248
	movne	r4, #0	@, equal.2785
	andeq	r4, ip, #1	@,, equal.2785, equal.2781
	ldr	r7, [r9, #792]	@ tmp255, <variable>.ScalingList4x4
	ldr	r2, [fp, #792]	@ tmp256, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp251, tmp252
	movne	r0, #0	@, equal.2789
	andeq	r0, r4, #1	@,, equal.2789, equal.2785
	ldr	r5, [r9, #796]	@ tmp259, <variable>.ScalingList4x4
	ldr	r1, [fp, #796]	@ tmp260, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp255, tmp256
	movne	ip, #0	@, equal.2793
	andeq	ip, r0, #1	@,, equal.2793, equal.2789
	ldr	r7, [r9, #800]	@ tmp263, <variable>.ScalingList4x4
	ldr	r2, [fp, #800]	@ tmp264, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp259, tmp260
	movne	r4, #0	@, equal.2797
	andeq	r4, ip, #1	@,, equal.2797, equal.2793
	ldr	r5, [r9, #804]	@ tmp267, <variable>.ScalingList4x4
	ldr	r1, [fp, #804]	@ tmp268, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp263, tmp264
	movne	r0, #0	@, equal.2801
	andeq	r0, r4, #1	@,, equal.2801, equal.2797
	ldr	r7, [r9, #808]	@ tmp271, <variable>.ScalingList4x4
	ldr	r2, [fp, #808]	@ tmp272, <variable>.ScalingList4x4
	cmp	r5, r1	@ tmp267, tmp268
	movne	ip, #0	@, equal.2805
	andeq	ip, r0, #1	@,, equal.2805, equal.2801
	ldr	r0, [r9, #812]	@ tmp275, <variable>.ScalingList4x4
	ldr	r5, [fp, #812]	@ tmp276, <variable>.ScalingList4x4
	cmp	r7, r2	@ tmp271, tmp272
	movne	r4, #0	@, equal.2809
	andeq	r4, ip, #1	@,, equal.2809, equal.2805
	ldr	r7, [fp, #816]	@ tmp280, <variable>.ScalingList4x4
	cmp	r0, r5	@ tmp275, tmp276
	movne	r1, #0	@, equal.2813
	andeq	r1, r4, #1	@,, equal.2813, equal.2809
	ldr	r5, [sp, #4]	@, %sfp
	ldr	ip, [r9, #816]	@ tmp279, <variable>.ScalingList4x4
	ldr	r0, [r3, #760]	@ tmp291, <variable>.ScalingList4x4
	cmp	ip, r7	@ tmp279, tmp280
	movne	r2, #0	@, equal.2817
	andeq	r2, r1, #1	@,, equal.2817, equal.2813
	ldr	r4, [r5, #760]	@ tmp292, <variable>.ScalingList4x4
	and	r6, r6, r2	@ equal.2821, equal, equal.2817
	ldr	r1, [r9, #820]	@ tmp295, <variable>.ScalingList4x4
	ldr	r7, [fp, #820]	@ tmp296, <variable>.ScalingList4x4
	cmp	r0, r4	@ tmp291, tmp292
	movne	r3, #0	@, equal.2825
	andeq	r3, r6, #1	@,, equal.2825, equal.2821
	cmp	r1, r7	@ tmp295, tmp296
	movne	r6, #0	@, equal
	andeq	r6, r3, #1	@,, equal, equal.2825
.L724:
	add	r8, r8, #1	@ i, i,
	add	r9, r9, #64	@ ivtmp.2712, ivtmp.2712,
	cmp	r8, #8	@ i,
	add	fp, fp, #64	@ ivtmp.2714, ivtmp.2714,
	beq	.L753	@,
.L727:
	ldr	r1, [sp, #0]	@, %sfp
	add	r5, sl, r8	@ tmp221, pSPS2, i
	add	ip, r1, r8	@ tmp220,, i
	ldrb	r2, [r5, #4]	@ zero_extendqisi2	@ D.38399, <variable>.seq_scaling_list_present_flag
	ldrb	r0, [ip, #4]	@ zero_extendqisi2	@ D.38399, <variable>.seq_scaling_list_present_flag
	cmp	r0, r2	@ D.38399, D.38399
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r0, #0	@ D.38399,
	beq	.L724	@,
	cmp	r8, #5	@ i,
	bls	.L754	@,
	mov	r4, r8, asl #8	@ tmp298, i,
	ldr	r0, [sp, #0]	@, %sfp
	ldr	r7, [sp, #0]	@, %sfp
	sub	r1, r4, #392	@ tmp299, tmp298,
	add	r2, r0, r1	@ ivtmp.2696,, tmp299
	add	r3, sl, r1	@ ivtmp.2699, pSPS2, tmp299
	ldr	r5, [sl, r1]	@ tmp306, <variable>.ScalingList8x8
	add	r0, r2, #8	@ ivtmp.2696, ivtmp.2696,
	ldr	r4, [r7, r1]	@ tmp305, <variable>.ScalingList8x8
	add	r1, r3, #8	@ ivtmp.2699, ivtmp.2699,
	ldr	r7, [r2, #4]	@ tmp434, <variable>.ScalingList8x8
	mov	ip, #2	@ j,
	ldr	r3, [r3, #4]	@ tmp435, <variable>.ScalingList8x8
	cmp	r4, r5	@ tmp305, tmp306
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	r7, r3	@ tmp434, tmp435
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
.L726:
	mov	r2, r0	@ tmp400, ivtmp.2696
	mov	r3, r1	@ tmp401, ivtmp.2699
	ldr	r7, [r2], #4	@ tmp406, <variable>.ScalingList8x8
	add	ip, ip, #2	@ j, j,
	ldr	r5, [r3], #4	@ tmp407, <variable>.ScalingList8x8
	ldr	r4, [r0, #4]	@ tmp413, <variable>.ScalingList8x8
	add	r0, r2, #4	@ ivtmp.2696, tmp400,
	ldr	r2, [r1, #4]	@ tmp414, <variable>.ScalingList8x8
	cmp	r7, r5	@ tmp406, tmp407
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	add	r1, r3, #4	@ ivtmp.2699, tmp401,
	cmp	r4, r2	@ tmp413, tmp414
	movne	r6, #0	@, equal
	andeq	r6, r6, #1	@,, equal, equal
	cmp	ip, #64	@ j,
	bne	.L726	@,
	b	.L724	@
.L753:
	ldr	r0, [sp, #0]	@ pSPS1, %sfp
	mov	r1, sl	@ pSPS2, pSPS2
.L723:
	ldr	r3, [r0, #2908]	@ D.38418, <variable>.pic_order_cnt_type
	ldr	r4, [r1, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	ldr	r5, [r0, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	ldr	r7, [r1, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	cmp	r3, r4	@ D.38418, <variable>.pic_order_cnt_type
	cmpeq	r5, r7	@, <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movne	ip, #0	@, equal.2753
	moveq	ip, #1	@, equal.2753
	cmp	r3, #0	@ D.38418,
	and	r6, ip, r6	@ equal.2744, equal.2753, equal
	bne	.L755	@,
	ldr	r2, [r0, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	ldr	r3, [r1, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	cmp	r2, r3	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	movne	r6, #0	@, equal.2744
	andeq	r6, r6, #1	@,, equal.2744, equal.2744
.L728:
	ldrb	r3, [r1, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r5, [r0, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r2, [r1, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	ldrb	r7, [r0, #17]	@ zero_extendqisi2	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	ip, [r1, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	cmp	r7, r3	@ <variable>.gaps_in_frame_num_value_allowed_flag, <variable>.gaps_in_frame_num_value_allowed_flag
	cmpeq	r5, r2	@, <variable>.num_ref_frames, <variable>.num_ref_frames
	ldr	r4, [r0, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldr	r5, [r0, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r2, [r1, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r3, #0	@, equal.2757
	moveq	r3, #1	@, equal.2757
	cmp	r4, ip	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movne	r4, #0	@, equal.2758
	andeq	r4, r3, #1	@,, equal.2758, equal.2757
	ldrb	r3, [r0, #18]	@ zero_extendqisi2	@ D.38451, <variable>.frame_mbs_only_flag
	ldrb	ip, [r1, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r5, r2	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	movne	r2, #0	@, equal.2759
	andeq	r2, r4, #1	@,, equal.2759, equal.2758
	cmp	ip, r3	@ <variable>.frame_mbs_only_flag, D.38451
	movne	r2, #0	@, equal.2760
	andeq	r2, r2, #1	@,, equal.2760, equal.2759
	cmp	r3, #0	@ D.38451,
	and	r6, r2, r6	@ equal.2745, equal.2760, equal.2744
	bne	.L732	@,
	ldrb	r4, [r0, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	ldrb	ip, [r1, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	cmp	r4, ip	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	movne	r6, #0	@, equal.2745
	andeq	r6, r6, #1	@,, equal.2745, equal.2745
.L732:
	ldrb	r3, [r0, #21]	@ zero_extendqisi2	@ D.38462, <variable>.frame_cropping_flag
	ldrb	r2, [r0, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldrb	r4, [r1, #21]	@ zero_extendqisi2	@ <variable>.frame_cropping_flag, <variable>.frame_cropping_flag
	ldrb	ip, [r1, #20]	@ zero_extendqisi2	@ <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	cmp	r4, r3	@ <variable>.frame_cropping_flag, D.38462
	cmpeq	r2, ip	@, <variable>.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	movne	r2, #0	@, equal.2761
	moveq	r2, #1	@, equal.2761
	cmp	r3, #0	@ D.38462,
	and	r3, r2, r6	@ equal.2746, equal.2761, equal.2745
	beq	.L733	@,
	ldr	r5, [r1, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r4, [r0, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r2, [r1, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	r7, [r0, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	ldr	r6, [r0, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	cmp	r7, r5	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	cmpeq	r4, r2	@, <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	ldr	ip, [r1, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r4, [r0, #3976]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	ldr	r2, [r1, #3976]	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r5, #0	@, equal.2762
	moveq	r5, #1	@, equal.2762
	cmp	r6, ip	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	movne	ip, #0	@, equal.2763
	andeq	ip, r5, #1	@,, equal.2763, equal.2762
	cmp	r4, r2	@ <variable>.frame_crop_bottom_offset, <variable>.frame_crop_bottom_offset
	movne	r2, #0	@, equal.2764
	andeq	r2, ip, #1	@,, equal.2764, equal.2763
	and	r3, r3, r2	@ equal.2746, equal.2746, equal.2764
.L733:
	ldrb	r0, [r0, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	ldrb	ip, [r1, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	r0, ip	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	movne	r3, #0	@, tmp390
	andeq	r3, r3, #1	@,, tmp390, equal.2746
	cmp	r3, #0	@ tmp390,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
	b	.L735	@
.L755:
	cmp	r3, #1	@ D.38418,
	bne	.L728	@,
	ldr	r5, [r0, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldr	r7, [r1, #2916]	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	ldrb	r8, [r1, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldrb	r2, [r0, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r4, [r0, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	cmp	r5, r7	@ <variable>.offset_for_non_ref_pic, <variable>.offset_for_non_ref_pic
	cmpeq	r2, r8	@, <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	ldr	r3, [r1, #2920]	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	ldr	r8, [r0, #2924]	@ D.38433, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	ldr	r7, [r1, #2924]	@ <variable>.num_ref_frames_in_pic_order_cnt_cycle, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	ip, #0	@, equal.2754
	moveq	ip, #1	@, equal.2754
	cmp	r4, r3	@ <variable>.offset_for_top_to_bottom_field, <variable>.offset_for_top_to_bottom_field
	movne	r5, #0	@, equal.2755
	andeq	r5, ip, #1	@,, equal.2755, equal.2754
	cmp	r8, r7	@ D.38433, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	movne	r5, #0	@, equal.2756
	andeq	r5, r5, #1	@,, equal.2756, equal.2755
	cmp	r8, #0	@ D.38433,
	and	r6, r6, r5	@ equal.2744, equal.2744, equal.2756
	beq	.L728	@,
	ldr	r4, [r0, #2928]	@ tmp337, <variable>.offset_for_ref_frame
	mov	r8, r8, asl #2	@ D.42545, D.38433,
	ldr	ip, [r1, #2928]	@ tmp338, <variable>.offset_for_ref_frame
	mov	r3, #4	@ ivtmp.2687,
	sub	r2, r8, #4	@ tmp395, D.42545,
	cmp	r4, ip	@ tmp337, tmp338
	movne	r6, #0	@, equal.2744
	andeq	r6, r6, #1	@,, equal.2744, equal.2744
	cmp	r3, r8	@ ivtmp.2687, D.42545
	ubfx	r2, r2, #2, #1	@ tmp396, tmp395,,
	beq	.L728	@,
	cmp	r2, #0	@ tmp396,
	beq	.L731	@,
	ldr	r2, [r0, #2932]	@ tmp431, <variable>.offset_for_ref_frame
	mov	r3, #8	@ ivtmp.2687,
	ldr	r7, [r1, #2932]	@ tmp432, <variable>.offset_for_ref_frame
	cmp	r2, r7	@ tmp431, tmp432
	movne	r6, #0	@, equal.2744
	andeq	r6, r6, #1	@,, equal.2744, equal.2744
	cmp	r3, r8	@ ivtmp.2687, D.42545
	beq	.L728	@,
.L731:
	add	r2, r3, #4	@ tmp397, ivtmp.2687,
	add	r4, r0, r3	@ tmp417, pSPS1, ivtmp.2687
	add	r3, r1, r3	@ tmp418, pSPS2, ivtmp.2687
	add	ip, r0, r2	@ tmp424, pSPS1, tmp397
	add	r7, r1, r2	@ tmp425, pSPS2, tmp397
	ldr	r5, [r4, #2928]	@ tmp419, <variable>.offset_for_ref_frame
	ldr	r4, [r3, #2928]	@ tmp420, <variable>.offset_for_ref_frame
	add	r3, r2, #4	@ ivtmp.2687, tmp397,
	ldr	ip, [ip, #2928]	@ tmp426, <variable>.offset_for_ref_frame
	ldr	r2, [r7, #2928]	@ tmp427, <variable>.offset_for_ref_frame
	cmp	r5, r4	@ tmp419, tmp420
	movne	r6, #0	@, equal.2744
	andeq	r6, r6, #1	@,, equal.2744, equal.2744
	cmp	ip, r2	@ tmp426, tmp427
	movne	r6, #0	@, equal.2744
	andeq	r6, r6, #1	@,, equal.2744, equal.2744
	cmp	r3, r8	@ ivtmp.2687, D.42545
	bne	.L731	@,
	b	.L728	@
	.fnend
	.size	SPSEqual, .-SPSEqual
	.global	__aeabi_idiv
	.align	2
	.global	H264GetDar
	.type	H264GetDar, %function
H264GetDar:
	.fnstart
.LFB1707:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ar_idc
	mov	ip, r1	@ sar_width, sar_width
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r3	@ img_width, img_width
	beq	.L757	@,
	subs	r3, r0, #255	@ D.38501, ar_idc,
	movne	r3, #1	@ D.38501
	cmp	r0, #255	@ ar_idc,
	cmpne	r0, #16	@, ar_idc,
	bgt	.L757	@,
	cmp	r1, #0	@ sar_width,
	cmpne	r2, #0	@, sar_height,
	beq	.L774	@,
.L758:
	cmp	r0, #1	@ ar_idc,
	moveq	r0, #5	@ final_dar,
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	cmp	r3, #0	@ D.38501,
	movwne	r3, #:lower16:.LANCHOR0	@ tmp162,
	movtne	r3, #:upper16:.LANCHOR0	@ tmp162,
	addne	r2, r3, r0, asl #3	@, tmp165, tmp162, ar_idc,
	ldrne	ip, [r3, r0, asl #3]	@ sar_width, SarTable
	ldrne	r2, [r2, #4]	@ sar_height, SarTable
	mov	r0, ip, asl #10	@, sar_width,
	mov	r1, r2	@, sar_height
	bl	__aeabi_idiv	@
	ldr	r1, [sp, #16]	@, img_height
	mov	r5, r0	@ tmp170,
	mov	r0, r4, asl #10	@, img_width,
	bl	__aeabi_idiv	@
	mul	r5, r0, r5	@ tmp176,, tmp170
	add	r2, r5, #1020	@ tmp178, tmp176,
	cmp	r5, #0	@ tmp176,
	add	ip, r2, #3	@ tmp178, tmp178,
	movlt	r5, ip	@ tmp177, tmp178
	mov	r5, r5, asr #10	@ dar, tmp177,
	sub	r1, r5, #2400	@ iftmp.723, dar,
	sub	r3, r5, #2256	@ iftmp.2852, dar,
	sub	r2, r1, #6	@ iftmp.723, iftmp.723,
	sub	r3, r3, #7	@ iftmp.2852, iftmp.2852,
	cmp	r2, #0	@ iftmp.723,
	rsblt	r2, r5, #2400	@ tmp182, dar,
	addlt	r2, r2, #6	@ iftmp.723, tmp182,
	cmp	r3, #0	@ iftmp.2852,
	rsblt	r1, r5, #2256	@ tmp184, dar,
	addlt	r1, r1, #7	@ iftmp.724, tmp184,
	movge	r1, r3	@ iftmp.724, iftmp.2852
	cmp	r2, r1	@ iftmp.723, iftmp.724
	movlt	r0, #4	@ final_dar,
	ldmltfd	sp!, {r3, r4, r5, pc}	@
	cmp	r3, #0	@ iftmp.2852,
	sub	lr, r5, #1808	@ iftmp.2853, dar,
	rsblt	r3, r5, #2256	@ tmp185, dar,
	sub	r2, lr, #12	@ iftmp.2853, iftmp.2853,
	addlt	r3, r3, #7	@ iftmp.2852, tmp185,
	cmp	r2, #0	@ iftmp.2853,
	rsblt	r1, r5, #1808	@ tmp187, dar,
	addlt	r1, r1, #12	@ iftmp.726, tmp187,
	movge	r1, r2	@ iftmp.726, iftmp.2853
	cmp	r3, r1	@ iftmp.2852, iftmp.726
	movlt	r0, #3	@ final_dar,
	ldmltfd	sp!, {r3, r4, r5, pc}	@
	cmp	r2, #0	@ iftmp.2853,
	sub	r0, r5, #1360	@ iftmp.728, dar,
	sub	r0, r0, #5	@ iftmp.728, iftmp.728,
	rsblt	r2, r5, #1808	@ tmp188, dar,
	addlt	r2, r2, #12	@ iftmp.2853, tmp188,
	cmp	r0, #0	@ iftmp.728,
	rsblt	r0, r5, #1360	@ tmp190, dar,
	addlt	r0, r0, #5	@ iftmp.728, tmp190,
	cmp	r0, r2	@ iftmp.728, iftmp.2853
	movgt	r0, #2	@ final_dar,
	movle	r0, #1	@ final_dar,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L774:
	cmp	r0, #255	@ ar_idc,
	bne	.L758	@,
.L757:
	mov	r0, #0	@ final_dar,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	H264GetDar, .-H264GetDar
	.align	2
	.global	PassBytes
	.type	PassBytes, %function
PassBytes:
	.fnstart
.LFB1710:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	ldr	r3, [r0, #368]	@ D.38992, <variable>.pCurrNal
	cmp	r3, #0	@ D.38992,
	cmpne	r1, #0	@, len,
	bne	.L782	@,
.L776:
	mvn	r0, #0	@ D.38998,
.L778:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L782:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ D.38999, <variable>.nal_used_segment
	rsb	ip, r2, r2, asl #3	@, tmp155, D.38999, D.38999,
	add	ip, r3, ip, asl #2	@, tmp157, D.38992, tmp155,
	ldr	ip, [ip, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	ip, #0	@ <variable>.streamBuffer,
	beq	.L776	@,
	ldr	ip, [r3, #68]	@ D.39006, <variable>.nal_segment
	cmp	ip, #2	@ D.39006,
	bhi	.L776	@,
	cmp	r2, #1	@ D.38999,
	bhi	.L776	@,
	cmp	ip, r2	@ D.39006, segment_idx
	bls	.L776	@,
	mov	r4, r1, asl #3	@ len.2885, len,
	mov	r6, #28	@ tmp188,
.L780:
	mla	r3, r6, r2, r3	@ tmp163, tmp188, segment_idx, D.38992
	add	r2, r2, #1	@ segment_idx, segment_idx,
	add	r5, r3, #24	@ tmp164, tmp163,
	ldr	r1, [r3, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	ip, [r3, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	mov	r1, r1, asl #3	@ D.39014, <variable>.bitstream_length,
	add	ip, r4, ip	@ D.39012, len.2885, <variable>.bitsoffset
	cmp	ip, r1	@ D.39012, D.39014
	rsb	r4, r1, ip	@ len.2885, D.39014, D.39012
	bls	.L783	@,
	str	r1, [r3, #24]	@ D.39014, <variable>.bitsoffset
	ldr	r3, [r0, #368]	@ temp.2886, <variable>.pCurrNal
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	ip, r1, #1	@ tmp184, <variable>.nal_used_segment,
	strb	ip, [r3, #0]	@ tmp184, <variable>.nal_used_segment
	ldr	r3, [r0, #368]	@ D.38992, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r2	@ <variable>.nal_segment, segment_idx
	bhi	.L780	@,
	mov	r0, #0	@ D.38998,
	b	.L778	@
.L783:
	str	ip, [r5, #0]	@ D.39012, <variable>.bitsoffset
	mov	r0, #1	@ D.38998,
	b	.L778	@
	.fnend
	.size	PassBytes, .-PassBytes
	.align	2
	.global	GetBytes
	.type	GetBytes, %function
GetBytes:
	.fnstart
.LFB1711:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pdes
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}	@,
	.save {r4, r5, r6, r7, r8, r9, sl}
	bne	.L792	@,
.L785:
	mvn	r2, #0	@ len,
.L787:
	mov	r0, r2	@, len
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L792:
	ldr	r0, [r0, #368]	@ D.39036, <variable>.pCurrNal
	cmp	r0, #0	@ D.39036,
	cmpne	r2, #0	@, len,
	movgt	ip, #0	@, tmp157
	movle	ip, #1	@, tmp157
	ble	.L785	@,
	ldrb	r4, [r0, #0]	@ zero_extendqisi2	@ D.39041, <variable>.nal_used_segment
	rsb	r5, r4, r4, asl #3	@, tmp161, D.39041, D.39041,
	add	r5, r0, r5, asl #2	@, tmp163, D.39036, tmp161,
	ldr	r5, [r5, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r5, #0	@ <variable>.streamBuffer,
	beq	.L785	@,
	ldr	r5, [r0, #68]	@ D.39048, <variable>.nal_segment
	cmp	r5, #2	@ D.39048,
	bhi	.L785	@,
	cmp	r4, #1	@ D.39041,
	bhi	.L785	@,
	cmp	r5, r4	@ D.39048, segment_idx
	bls	.L785	@,
	mov	r6, #28	@ tmp207,
.L790:
	mul	r7, r6, r4	@ tmp167, tmp207, segment_idx
	mov	r5, #0	@ ivtmp.2916,
	add	r0, r7, r0	@ tmp169, tmp167, D.39036
	ldr	r9, [r0, #24]	@, <variable>.bitsoffset
	mov	r8, r7	@ tmp206, tmp167
	ldr	sl, [r0, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r7, r9, #7	@ tmp176,,
	ldr	r0, [r0, #8]	@ D.39053, <variable>.streamBuffer
	add	sl, r0, sl	@ end_byte, D.39053, <variable>.bitstream_length
	add	r0, r0, r7, lsr #3	@, byte_pos, D.39053, tmp176,
.L786:
	add	r9, r5, r0	@ D.42792, ivtmp.2916, byte_pos
	add	r7, r5, r1	@ D.42790, ivtmp.2916, pdes
	cmp	sl, r9	@ end_byte, D.42792
	bls	.L793	@,
	ldrb	r9, [r0, r5]	@ zero_extendqisi2	@ tmp185,* ivtmp.2916
	add	ip, ip, #1	@ cnt, cnt,
	cmp	ip, r2	@ cnt, len
	strb	r9, [r1, r5]	@ tmp185,* ivtmp.2916
	add	r5, r5, #1	@ ivtmp.2916, ivtmp.2916,
	ldr	r7, [r3, #368]	@ temp.2934, <variable>.pCurrNal
	add	r7, r8, r7	@ tmp190, tmp206, temp.2934
	ldr	r9, [r7, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r9, r9, #8	@ tmp198, <variable>.bitsoffset,
	str	r9, [r7, #24]	@ tmp198, <variable>.bitsoffset
	bcc	.L786	@,
	b	.L787	@
.L793:
	ldr	r1, [r3, #368]	@ temp.2936, <variable>.pCurrNal
	add	r4, r4, #1	@ segment_idx, segment_idx,
	ldrb	r0, [r1, #0]	@ zero_extendqisi2	@ <variable>.nal_used_segment, <variable>.nal_used_segment
	add	r0, r0, #1	@ tmp201, <variable>.nal_used_segment,
	strb	r0, [r1, #0]	@ tmp201, <variable>.nal_used_segment
	ldr	r0, [r3, #368]	@ D.39036, <variable>.pCurrNal
	ldr	r1, [r0, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, r4	@ <variable>.nal_segment, segment_idx
	movhi	r1, r7	@ pdes, D.42790
	bhi	.L790	@
.L789:
	mov	r2, ip	@ len, cnt
	b	.L787	@
	.fnend
	.size	GetBytes, .-GetBytes
	.align	2
	.global	InitOldSlice
	.type	InitOldSlice, %function
InitOldSlice:
	.fnstart
.LFB1715:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #13576	@ tmp135,
	movw	r3, #22336	@ tmp134,
	ldr	r2, [r0, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	ip, #22364	@ tmp156,
	movw	r1, #22328	@ tmp139,
	str	r2, [r0, r3]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	mov	r3, #0	@ tmp140,
	str	r3, [r0, ip]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	movw	ip, #22344	@ tmp137,
	movw	r2, #:lower16:88888	@ tmp160,
	movt	r2, #:upper16:88888	@ tmp160,
	str	r2, [r0, ip]	@ tmp160, <variable>.PrevSlice.frame_num
	movw	r2, #22329	@ tmp142,
	movw	ip, #22340	@ tmp145,
	strb	r3, [r0, r1]	@ tmp140, <variable>.PrevSlice.field_pic_flag
	mov	r1, #2	@ tmp143,
	strb	r1, [r0, r2]	@ tmp143, <variable>.PrevSlice.bottom_field_flag
	movw	r2, #22330	@ tmp147,
	mov	r1, #7	@ tmp146,
	str	r1, [r0, ip]	@ tmp146, <variable>.PrevSlice.nal_ref_idc
	mov	ip, #32	@ tmp148,
	movw	r1, #22352	@ tmp150,
	strb	ip, [r0, r2]	@ tmp148, <variable>.PrevSlice.nal_unit_type
	movw	r2, #22356	@ tmp152,
	mov	ip, #3	@ tmp151,
	str	ip, [r0, r1]	@ tmp151, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r1, #0	@ tmp153,
	movw	ip, #22368	@ tmp158,
	str	r1, [r0, r2]	@ tmp153, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #22360	@ tmp154,
	mov	r1, #262144	@ tmp159,
	str	r3, [r0, r2]	@ tmp140, <variable>.PrevSlice.delta_pic_order_cnt
	str	r1, [r0, ip]	@ tmp159, <variable>.PrevSlice.first_mb_in_slice
	bx	lr	@
	.fnend
	.size	InitOldSlice, .-InitOldSlice
	.align	2
	.global	FindNaluArraySlot
	.type	FindNaluArraySlot, %function
FindNaluArraySlot:
	.fnstart
.LFB1722:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r2, r0, #96	@ ivtmp.2994, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L798	@,
	b	.L797	@
.L807:
	ldrb	ip, [r2, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r2, r2, #192	@ ivtmp.2994, ivtmp.2994,
	cmp	ip, #0	@ <variable>.is_valid,
	beq	.L797	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L799	@,
.L798:
	ldrb	r1, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L807	@,
.L797:
	cmp	r3, #136	@ Pos,
	bhi	.L799	@,
	add	r1, r3, r3, asl #1	@, tmp155, Pos, Pos,
	mov	r2, #1	@ tmp159,
	add	r0, r0, r1, asl #5	@, tmp157, pH264Ctx, tmp155,
	strb	r2, [r0, #377]	@ tmp159, <variable>.is_valid
	mov	r0, r3	@, D.39910
	bx	lr	@
.L799:
	mvn	r3, #0	@ D.39910,
	mov	r0, r3	@, D.39910
	bx	lr	@
	.fnend
	.size	FindNaluArraySlot, .-FindNaluArraySlot
	.align	2
	.global	HaveSliceToDec
	.type	HaveSliceToDec, %function
HaveSliceToDec:
	.fnstart
.LFB1724:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #52764	@ tmp136,
	ldr	r3, [r0, r1]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	r3, #0	@ <variable>.SliceParaNum,
	mvneq	r0, #0	@,,
	movne	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	HaveSliceToDec, .-HaveSliceToDec
	.align	2
	.global	IsRefListWrong
	.type	IsRefListWrong, %function
IsRefListWrong:
	.fnstart
.LFB1725:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r8, #20724	@ tmp143,
	ldr	r3, [r0, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L813	@,
	add	r5, r0, #26880	@ ivtmp.3056, pH264Ctx,
	mov	r6, #0	@ i.3060,
	add	r5, r5, #156	@ ivtmp.3056, ivtmp.3056,
	movw	r7, #52840	@ tmp167,
	b	.L815	@
.L822:
	ldr	ip, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	ip, #0	@ <variable>.pstDecodeFs,
	beq	.L814	@,
	ldr	r3, [r4, r8]	@ D.39984, <variable>.CurrSlice.listXsize
	cmp	r3, r6	@ D.39984, i.3060
	bls	.L821	@,
.L815:
	ldr	r1, [r5, #0]	@ tmp148, <variable>.pListX
	add	r6, r6, #1	@ i.3060, i.3060,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3056, ivtmp.3056,
	ldr	r2, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	bne	.L822	@,
.L814:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L813:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L821:
	cmp	r3, #0	@ D.39984,
	beq	.L813	@,
	movw	r8, #20728	@ tmp153,
	ldr	r0, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L813	@,
	add	r6, r4, #27136	@ ivtmp.3051, pH264Ctx,
	movw	r7, #52840	@ tmp165,
	add	r5, r6, #32	@ ivtmp.3051, ivtmp.3051,
	mov	r6, #0	@ i,
	b	.L816	@
.L823:
	ldr	r2, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r2, #0	@ <variable>.pstDecodeFs,
	beq	.L814	@,
	ldr	r1, [r4, r8]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r6	@ <variable>.CurrSlice.listXsize, i
	bls	.L813	@,
.L816:
	ldr	r3, [r5, #0]	@ tmp158, <variable>.pListX
	add	r6, r6, #1	@ i, i,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	add	r5, r5, #4	@ ivtmp.3051, ivtmp.3051,
	ldr	lr, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3063
	bne	.L823	@,
	b	.L814	@
	.fnend
	.size	IsRefListWrong, .-IsRefListWrong
	.align	2
	.global	WriteSliceMsg
	.type	WriteSliceMsg, %function
WriteSliceMsg:
	.fnstart
.LFB1684:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #52764	@ tmp196,
	movw	r1, #4060	@ tmp200,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r2, [r0, r3]	@, <variable>.SliceParaNum
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r4, #13568	@ tmp201,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	str	r2, [sp, #8]	@, %sfp
	ldr	ip, [sp, #8]	@, %sfp
	ldr	r0, [r0, r4]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	add	r2, ip, #1	@ D.36543,,
	str	r2, [r5, r3]	@ D.36543, <variable>.SliceParaNum
	sub	r7, r0, #1	@ tmp202, <variable>.MaxSliceNum,
	movw	r0, #52760	@ tmp198,
	cmp	ip, r7	@, tmp202
	mul	r4, r1, ip	@ tmp199, tmp200,
	ldr	ip, [r5, r0]	@ D.36544, <variable>.DecSlicePara
	movcs	r3, #0	@ tmp207,
	mlacc	r2, r1, r2, ip	@ tmp206, tmp200, D.36543, D.36544
	add	r7, ip, r4	@ pCurrSlicePara, D.36544, tmp199
	strcs	r3, [r7, #4056]	@ tmp207, <variable>.pNextSlice
	strcc	r2, [r7, #4056]	@ tmp206, <variable>.pNextSlice
	ldr	r1, [r5, #368]	@ D.36555, <variable>.pCurrNal
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ i.3267, <variable>.nal_used_segment
	ldr	r0, [r1, #68]	@ i.3413, <variable>.nal_segment
	cmp	r3, #1	@ i.3267,
	cmpls	r3, r0	@, i.3267, i.3413
	bcs	.L827	@,
	add	r6, r3, #4	@ tmp215, i.3267,
	add	r2, r7, r6, asl #2	@, ivtmp.3259, pCurrSlicePara, tmp215,
.L828:
	rsb	r0, r3, r3, asl #3	@, tmp220, i.3267, i.3267,
	add	r3, r3, #1	@ i.3267, i.3267,
	mov	r6, r0, asl #2	@ tmp221, tmp220,
	add	r1, r6, r1	@ tmp222, tmp221, D.36555
	ldr	r1, [r1, #24]	@ <variable>.bitsoffset, <variable>.bitsoffset
	str	r1, [r2, #0]	@ <variable>.bitsoffset, <variable>.bitsoffset
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r1, r6, r1	@ tmp231, tmp221, <variable>.pCurrNal
	ldr	r1, [r1, #20]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	str	r1, [r2, #-8]	@ <variable>.valid_bitlen, <variable>.valid_bitlen
	ldr	r1, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r0, r6, r1	@ tmp240, tmp221, <variable>.pCurrNal
	cmp	r3, #1	@ i.3267,
	movhi	r6, #0	@, tmp249
	movls	r6, #1	@, tmp249
	ldr	r1, [r0, #28]	@ <variable>.bytespos, <variable>.bytespos
	str	r1, [r2, #8]	@ <variable>.bytespos, <variable>.bytespos
	add	r2, r2, #4	@ ivtmp.3259, ivtmp.3259,
	ldr	r1, [r5, #368]	@ D.36555, <variable>.pCurrNal
	ldr	r0, [r1, #68]	@ i.3413, <variable>.nal_segment
	cmp	r0, r3	@ i.3413, i.3267
	movls	r6, #0	@, tmp249,
	cmp	r6, #0	@ tmp249,
	bne	.L828	@,
.L827:
	cmp	r0, #1	@ i.3413,
	bhi	.L829	@,
	add	r3, r0, #4	@ tmp250, i.3413,
	add	r1, r7, #24	@ D.43136, pCurrSlicePara,
	mov	r2, #0	@ tmp589,
	add	r0, r7, r3, asl #2	@, ivtmp.3252, pCurrSlicePara, tmp250,
	add	r3, r0, #4	@ ivtmp.3252, ivtmp.3252,
	rsb	r6, r0, r1	@ tmp602, ivtmp.3252, D.43136
	cmp	r3, r1	@ ivtmp.3252, D.43136
	sub	r6, r6, #4	@ tmp603, tmp602,
	ubfx	r6, r6, #2, #1	@ tmp604, tmp603,,
	str	r2, [r0, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
	beq	.L829	@,
	cmp	r6, #0	@ tmp604,
	beq	.L830	@,
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	add	r3, r3, #4	@ ivtmp.3252, ivtmp.3252,
	cmp	r3, r1	@ ivtmp.3252, D.43136
	beq	.L829	@,
.L830:
	add	r0, r3, #4	@ tmp605, ivtmp.3252,
	str	r2, [r3, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r3, #8]	@ tmp589, <variable>.bytespos
	str	r2, [r3, #4]	@ tmp589, <variable>.bitsoffset
	str	r2, [r3, #0]	@ tmp589, <variable>.bitsoffset
	add	r3, r0, #4	@ ivtmp.3252, tmp605,
	cmp	r3, r1	@ ivtmp.3252, D.43136
	str	r2, [r0, #-8]	@ tmp589, <variable>.valid_bitlen
	str	r2, [r0, #8]	@ tmp589, <variable>.bytespos
	bne	.L830	@,
.L829:
	movw	r0, #49713	@ tmp255,
	ldr	r2, [sp, #8]	@, %sfp
	ldrb	r3, [r5, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	movw	r1, #17636	@ tmp258,
	movw	r0, #22292	@ tmp259,
	cmp	r2, #0	@,
	strb	r3, [r7, #1]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r5, r0]	@ <variable>.CurrSlice.slice_qp_delta, <variable>.CurrSlice.slice_qp_delta
	ldr	r2, [r5, r1]	@ <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrPPS.pic_init_qp_minus26
	add	r1, r2, r3	@ tmp260, <variable>.CurrPPS.pic_init_qp_minus26, <variable>.CurrSlice.slice_qp_delta
	add	r3, r1, #26	@ D.36569, tmp260,
	str	r3, [r7, #32]	@ D.36569, <variable>.SliceQPy
	bne	.L831	@,
	movw	r2, #50112	@ tmp264,
	ldr	r0, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [r0, #428]	@ D.36569, <variable>.frame.MaxQp
	ldr	r3, [r5, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r1, [r7, #32]	@ <variable>.SliceQPy, <variable>.SliceQPy
	str	r1, [r3, #432]	@ <variable>.SliceQPy, <variable>.frame.MinQp
.L832:
	movw	r3, #22288	@ tmp273,
	movw	r1, #20740	@ tmp275,
	ldr	r2, [r5, r3]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.CurrSlice.cabac_init_idc
	movw	r3, #20680	@ tmp279,
	str	r2, [r7, #36]	@ <variable>.CurrSlice.cabac_init_idc, <variable>.cabac_init_idc
	mov	r2, #20736	@ tmp277,
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	str	r0, [r7, #40]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	ldr	r1, [r5, r2]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r2, #20732	@ tmp282,
	str	r1, [r7, #44]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	r1, #20686	@ tmp284,
	ldrb	r0, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	strb	r0, [ip, r4]	@ <variable>.CurrSlice.slice_type, <variable>.slice_type
	ldr	ip, [r5, r2]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	movw	r2, #13608	@ tmp287,
	str	ip, [r7, #48]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.first_mb_in_slice
	ldrb	r0, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	movw	r1, #20724	@ tmp290,
	strb	r0, [r7, #2]	@ <variable>.CurrSlice.direct_spatial_mv_pred_flag, <variable>.direct_spatial_mv_pred_flag
	ldrb	ip, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.CurrSPS.direct_8x8_inference_flag
	movw	r2, #20728	@ tmp292,
	strb	ip, [r7, #3]	@ <variable>.CurrSPS.direct_8x8_inference_flag, <variable>.direct_8x8_inference_flag
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	r0, [r7, #52]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldr	ip, [r5, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	str	ip, [r7, #56]	@ <variable>.CurrSlice.listXsize, <variable>.listXsize
	ldrb	r3, [r5, r3]	@ zero_extendqisi2	@ temp.3274, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ temp.3274,
	beq	.L914	@,
	cmp	r3, #0	@ temp.3274,
	movweq	r3, #17590	@ tmp298,
	movne	r3, #0	@ tmp301,
	ldreqb	r3, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrPPS.weighted_pred_flag, <variable>.CurrPPS.weighted_pred_flag
	strb	r3, [r7, #4]	@ tmp301, <variable>.weight_flag
.L834:
	movw	r2, #17640	@ tmp303,
	movw	r0, #17644	@ tmp305,
	ldr	r1, [r5, r2]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.CurrPPS.chroma_qp_index_offset
	movw	r3, #22300	@ tmp307,
	str	r1, [r7, #60]	@ <variable>.CurrPPS.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	movw	r1, #22304	@ tmp309,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.CurrPPS.second_chroma_qp_index_offset
	str	ip, [r7, #64]	@ <variable>.CurrPPS.second_chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	movw	ip, #22296	@ tmp311,
	ldr	r2, [r5, r3]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r2, [r7, #68]	@ <variable>.CurrSlice.slice_alpha_c0_offset_div2, <variable>.slice_alpha_c0_offset_div2
	movw	r2, #20680	@ tmp313,
	ldr	r0, [r5, r1]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.CurrSlice.slice_beta_offset_div2
	str	r0, [r7, #72]	@ <variable>.CurrSlice.slice_beta_offset_div2, <variable>.slice_beta_offset_div2
	ldr	r3, [r5, ip]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r3, [r7, #76]	@ <variable>.CurrSlice.disable_deblocking_filter_idc, <variable>.disable_deblocking_filter_idc
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L836	@,
	movw	r3, #20724	@ tmp315,
	ldr	r4, [r5, r3]	@ temp.3431, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3431,
	beq	.L837	@,
	movw	r1, #27036	@ tmp317,
	ldr	r0, [r5, r1]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r0, #4]	@ temp.3408, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L838	@,
	tst	r4, #1	@ temp.3431,
	add	r3, r5, #26880	@ tmp325, pH264Ctx,
	add	r1, r3, #160	@ ivtmp.3246, tmp325,
	mov	r0, #0	@ i.3277,
	bne	.L840	@,
	ldr	ip, [r1, #0]	@ tmp624, <variable>.pListX
	add	r1, r3, #164	@ ivtmp.3246, tmp325,
	mov	r0, #1	@ i.3277,
	ldr	r3, [ip, #4]	@ temp.3408, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	bne	.L840	@,
.L838:
	movw	lr, #52840	@ tmp321,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L880	@,
	ldr	r2, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldr	r4, [r2, #4]	@, <variable>.PhyFsID
	str	r4, [sp, #4]	@, %sfp
	b	.L842	@
.L843:
	ldr	r3, [r2], #4	@ tmp319, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3408, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L838	@,
	ldr	r3, [r1, #4]	@ tmp626, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3246, tmp600,
	ldr	r3, [r3, #4]	@ temp.3408, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L838	@,
.L840:
	add	ip, r0, #1	@ tmp599, i.3277,
	mov	r2, r1	@ tmp600, ivtmp.3246
	cmp	ip, r4	@ tmp599, temp.3431
	add	r0, ip, #1	@ i.3277, tmp599,
	bcc	.L843	@,
.L837:
	mov	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
.L842:
	movw	r1, #20728	@ tmp326,
	ldr	r4, [r5, r1]	@ temp.3280, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3280,
	beq	.L844	@,
	movw	ip, #27168	@ tmp328,
	ldr	r3, [r5, ip]	@ <variable>.pListX, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3409, <variable>.frame_store
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r2, #0	@ <variable>.non_existing,
	beq	.L845	@,
	tst	r4, #1	@ temp.3280,
	add	r3, r5, #27136	@ tmp336, pH264Ctx,
	add	r1, r3, #36	@ ivtmp.3241, tmp336,
	mov	r0, #0	@ i.3284,
	bne	.L847	@,
	ldr	r2, [r1, #0]	@ tmp620, <variable>.pListX
	add	r1, r3, #40	@ ivtmp.3241, tmp336,
	mov	r0, #1	@ i.3284,
	ldr	r3, [r2, #4]	@ temp.3409, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	bne	.L847	@,
	b	.L845	@
.L849:
	ldr	r3, [r2], #4	@ tmp330, <variable>.pListX
	ldr	r3, [r3, #4]	@ temp.3409, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L845	@,
	ldr	r3, [r1, #4]	@ tmp622, <variable>.pListX
	add	r1, r2, #4	@ ivtmp.3241, tmp594,
	ldr	r3, [r3, #4]	@ temp.3409, <variable>.frame_store
	ldrb	ip, [r3, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	ip, #0	@ <variable>.non_existing,
	beq	.L845	@,
.L847:
	add	ip, r0, #1	@ tmp595, i.3284,
	mov	r2, r1	@ tmp594, ivtmp.3241
	cmp	r4, ip	@ temp.3280, tmp595
	add	r0, ip, #1	@ i.3284, tmp595,
	bhi	.L849	@,
.L844:
	movw	r2, #49707	@ tmp337,
	mov	r0, #0	@,
	str	r0, [sp, #12]	@, %sfp
	ldrb	r8, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	beq	.L850	@,
.L917:
	movw	r9, #20724	@ tmp339,
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r3, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L852	@,
	add	r4, r5, #26880	@ ivtmp.3221, pH264Ctx,
	mov	r6, r7	@ ivtmp.3226, pCurrSlicePara
	add	r4, r4, #156	@ ivtmp.3221, ivtmp.3221,
	mov	r8, #0	@ i.3373,
	movw	sl, #52840	@ tmp586,
	b	.L868	@
.L866:
	strb	r3, [r6, #1630]	@ temp.3367, <variable>.btm_structure
	add	r8, r8, #1	@ i.3373, i.3373,
	ldr	ip, [r4, #0]	@ tmp471, <variable>.pListX
	ldrb	r0, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #1631]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	r1, [r4, #0]	@ tmp474, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3221, ivtmp.3221,
	ldr	lr, [r1, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #1656]	@ <variable>.poc, <variable>.btm_poc
	add	r6, r6, #36	@ ivtmp.3226, ivtmp.3226,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3373
	bls	.L852	@,
.L868:
	ldr	r1, [r4, #0]	@ tmp435, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r3, [r4, #0]	@ tmp438, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	ip, [r6, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r1, [r4, #0]	@ tmp441, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r2, [r6, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	ip, [r4, #0]	@ tmp445, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0, %sfp
	beq	.L864	@,
	cmp	r0, #0	@ pstLogicFs.3344,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0, <variable>.PhyFsID
.L864:
	str	r0, [r6, #1640]	@ ExistImgIdc_0, <variable>.img_idc
	ldr	r1, [r4, #0]	@ tmp449, <variable>.pListX
	ldr	lr, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [lr, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r3, [r6, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r2, [r4, #0]	@ tmp452, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [ip, #524]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r1, [r4, #0]	@ tmp455, <variable>.pListX
	ldrb	lr, [r1, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #1624]	@ <variable>.structure, <variable>.list_structure
	ldr	r3, [r4, #0]	@ tmp458, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	ip, [r2, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	ip, [r6, #1626]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp462, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3367, <variable>.structure
	cmp	r3, #1	@ temp.3367,
	bne	.L866	@,
	strb	r3, [r6, #1628]	@ temp.3367, <variable>.top_structure
	add	r8, r8, #1	@ i.3373, i.3373,
	ldr	r3, [r4, #0]	@ tmp465, <variable>.pListX
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r2, [r6, #1629]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	ip, [r4, #0]	@ tmp468, <variable>.pListX
	add	r4, r4, #4	@ ivtmp.3221, ivtmp.3221,
	ldr	r0, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #1652]	@ <variable>.poc, <variable>.top_poc
	add	r6, r6, #36	@ ivtmp.3226, ivtmp.3226,
	ldr	r2, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r2, r8	@ <variable>.CurrSlice.listXsize, i.3373
	bhi	.L868	@,
.L852:
	movw	r1, #20680	@ tmp478,
	ldrb	r3, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L915	@,
.L858:
	mov	r3, #0	@ ivtmp.3159,
.L875:
	add	r0, r5, r3	@ tmp530, pH264Ctx, ivtmp.3159
	add	r2, r3, #4	@ tmp590, ivtmp.3159,
	add	ip, r0, #26880	@ tmp532, tmp530,
	add	r1, r5, r2	@ tmp616, pH264Ctx, tmp590
	add	r0, r7, r3	@ tmp529, pCurrSlicePara, ivtmp.3159
	add	r1, r1, #26880	@ tmp617, tmp616,
	ldr	ip, [ip, #28]	@ tmp533, <variable>.APC.RefIdx
	add	r3, r2, #4	@ ivtmp.3159, tmp590,
	cmp	r3, #128	@ ivtmp.3159,
	add	r2, r7, r2	@ tmp615, pCurrSlicePara, tmp590
	str	ip, [r0, #3928]	@ tmp533, <variable>.Apc2RefIdx
	ldr	r1, [r1, #28]	@ tmp619, <variable>.APC.RefIdx
	str	r1, [r2, #3928]	@ tmp619, <variable>.Apc2RefIdx
	bne	.L875	@,
	movw	r2, #17590	@ tmp534,
	movw	r0, #17632	@ tmp537,
	ldrb	r1, [r5, r2]	@ zero_extendqisi2	@ temp.3418, <variable>.CurrPPS.weighted_pred_flag
	movw	ip, #51652	@ tmp535,
	ldr	r2, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	movw	r3, #51656	@ tmp536,
	cmp	r1, #0	@ temp.3418,
	str	r1, [r5, ip]	@ temp.3418, <variable>.DecPicPara.weighted_pred_flag
	str	r2, [r5, r3]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.DecPicPara.weighted_bipred_idc
	beq	.L876	@,
	movw	ip, #20680	@ tmp539,
	ldrb	r3, [r5, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L876	@,
.L877:
	movw	r0, #20744	@ tmp545,
	movw	ip, #20748	@ tmp547,
	ldr	r4, [r5, r0]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.CurrSlice.luma_log2_weight_denom
	add	r1, r5, #20736	@ ivtmp.3138, pH264Ctx,
	add	r3, r1, #16	@ ivtmp.3138, ivtmp.3138,
	mov	r0, r7	@ ivtmp.3430, pCurrSlicePara
	mov	r2, r7	@ ivtmp.3142, ivtmp.3430
	mov	r1, #0	@ i,
	str	r4, [r7, #80]	@ <variable>.CurrSlice.luma_log2_weight_denom, <variable>.luma_log2_weight_denom
	mov	r4, #20736	@ tmp574,
	ldr	ip, [r5, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	str	ip, [r7, #84]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.chroma_log2_weight_denom
.L878:
	ldr	ip, [r3, #0]	@ tmp550, <variable>.CurrSlice.wp_weight_l0_y
	add	r1, r1, #1	@ i, i,
	str	ip, [r2, #88]	@ tmp550, <variable>.wp_weight_l0_y
	ldr	ip, [r3, #128]	@ tmp551, <variable>.CurrSlice.wp_weight_l0_u
	str	ip, [r2, #216]	@ tmp551, <variable>.wp_weight_l0_u
	ldr	ip, [r3, #256]	@ tmp552, <variable>.CurrSlice.wp_weight_l0_v
	str	ip, [r2, #344]	@ tmp552, <variable>.wp_weight_l0_v
	ldr	ip, [r3, #768]	@ tmp553, <variable>.CurrSlice.wp_offset_l0_y
	str	ip, [r2, #856]	@ tmp553, <variable>.wp_offset_l0_y
	ldr	ip, [r3, #896]	@ tmp554, <variable>.CurrSlice.wp_offset_l0_u
	str	ip, [r2, #984]	@ tmp554, <variable>.wp_offset_l0_u
	ldr	ip, [r3, #1024]	@ tmp555, <variable>.CurrSlice.wp_offset_l0_v
	add	r3, r3, #4	@ ivtmp.3138, ivtmp.3138,
	str	ip, [r2, #1112]	@ tmp555, <variable>.wp_offset_l0_v
	add	r2, r2, #4	@ ivtmp.3142, ivtmp.3142,
	ldr	ip, [r5, r4]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	ip, r1	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcs	.L878	@,
	movw	r3, #20680	@ tmp558,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L916	@,
.L836:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r0, #0	@ tmp572,
	ldr	ip, [r5, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	add	r3, r1, #12672	@ tmp569,,
	add	r2, r3, #4	@ tmp569, tmp569,
	str	ip, [r5, r2, asl #2]	@ <variable>.pCurrNal, <variable>.pSliceNal
	str	r0, [r5, #368]	@ tmp572, <variable>.pCurrNal
.L880:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L831:
	movw	r1, #50112	@ tmp268,
	ldr	r2, [r5, r1]	@ temp.3272, <variable>.CurrPic.frame_store
	ldr	r0, [r2, #428]	@ <variable>.frame.MaxQp, <variable>.frame.MaxQp
	ldr	r1, [r2, #432]	@ <variable>.frame.MinQp, <variable>.frame.MinQp
	cmp	r0, r3	@ <variable>.frame.MaxQp, D.36569
	strge	r0, [r2, #428]	@, <variable>.frame.MaxQp, <variable>.frame.MaxQp
	strlt	r3, [r2, #428]	@, D.36569, <variable>.frame.MaxQp
	cmp	r1, r3	@ <variable>.frame.MinQp, D.36569
	strle	r1, [r2, #432]	@, <variable>.frame.MinQp, <variable>.frame.MinQp
	strgt	r3, [r2, #432]	@, D.36569, <variable>.frame.MinQp
	b	.L832	@
.L845:
	movw	lr, #52840	@ tmp332,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs.3281
	beq	.L880	@,
	ldr	r1, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movw	r2, #49707	@ tmp337,
	ldr	r8, [r1, #4]	@, <variable>.PhyFsID
	str	r8, [sp, #12]	@, %sfp
	ldrb	r8, [r5, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r8, #0	@ <variable>.CurrPic.structure,
	bne	.L917	@,
.L850:
	movw	fp, #20724	@ tmp341,
	ldr	r1, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L853	@,
	add	r9, r5, #26880	@ ivtmp.3183, pH264Ctx,
	mov	r4, r7	@ ivtmp.3188, pCurrSlicePara
	add	r6, r9, #156	@ ivtmp.3183, ivtmp.3183,
	mov	sl, r8	@ tmp581, i.3275
	movw	r9, #52840	@ tmp579,
.L857:
	ldr	ip, [r6, #0]	@ tmp346, <variable>.pListX
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r6, #0]	@ tmp349, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r4, #1636]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r6, #0]	@ tmp352, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r3, [r4, #1625]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r6, #0]	@ tmp356, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #4]	@ ExistImgIdc_0.3266, %sfp
	beq	.L855	@,
	cmp	r0, #0	@ pstLogicFs.3289,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_0.3266, <variable>.PhyFsID
.L855:
	str	r0, [r4, #1640]	@ ExistImgIdc_0.3266, <variable>.img_idc
	add	r8, r8, #1	@ i.3275, i.3275,
	ldr	r2, [r6, #0]	@ tmp360, <variable>.pListX
	ldr	r0, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	ip, [r4, #1644]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	lr, [r6, #0]	@ tmp363, <variable>.pListX
	ldr	r1, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r1, #524]	@ <variable>.poc, <variable>.poc
	str	r3, [r4, #1632]	@ <variable>.poc, <variable>.poc
	ldr	r2, [r6, #0]	@ tmp366, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r4, #1627]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	ip, [r6, #0]	@ tmp369, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r4, #1626]	@ <variable>.structure, <variable>.frame_structure
	ldr	r1, [r6, #0]	@ tmp372, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r2, [r4, #1648]	@ <variable>.frame.poc, <variable>.frame_poc
	ldr	r0, [r6, #0]	@ tmp375, <variable>.pListX
	ldr	ip, [r0, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [ip, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	lr, [r4, #1652]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	r1, [r6], #4	@ tmp378, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	sl, [r4, #1624]	@ tmp581, <variable>.list_structure
	str	r2, [r4, #1656]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3188, ivtmp.3188,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3275
	bhi	.L857	@,
.L853:
	movw	r1, #20680	@ tmp385,
	ldrb	r3, [r5, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L858	@,
	movw	fp, #20728	@ tmp387,
	ldr	ip, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	ip, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L858	@,
	add	r6, r5, #27136	@ ivtmp.3165, pH264Ctx,
	add	sl, r7, #1632	@ ivtmp.3172, pCurrSlicePara,
	mov	r8, #0	@ i.3338,
	add	r6, r6, #32	@ ivtmp.3165, ivtmp.3165,
	add	r4, sl, #8	@ ivtmp.3172, ivtmp.3172,
	movw	r9, #52840	@ tmp575,
	mov	sl, r8	@ tmp577, i.3338
.L862:
	ldr	r2, [r6, #0]	@ tmp393, <variable>.pListX
	ldr	r0, [r5, r9]	@, <variable>.ChanID
	ldr	lr, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	ip, [r6, #0]	@ tmp396, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r1, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r3, [r4, #1148]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r2, [r6, #0]	@ tmp399, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r1, [ip, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r1, [r4, #1137]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r6, #0]	@ tmp403, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r2, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #12]	@ ExistImgIdc_1, %sfp
	beq	.L860	@,
	cmp	r0, #0	@ pstLogicFs.3316,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1, <variable>.PhyFsID
.L860:
	str	r0, [r4, #0]	@ ExistImgIdc_1, <variable>.img_idc
	add	r8, r8, #1	@ i.3338, i.3338,
	ldr	r3, [r6, #0]	@ tmp407, <variable>.pListX
	ldr	r0, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r0, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r2, [r4, #1156]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	lr, [r6, #0]	@ tmp410, <variable>.pListX
	ldr	ip, [lr, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [ip, #524]	@ <variable>.poc, <variable>.poc
	str	r1, [r4, #1144]	@ <variable>.poc, <variable>.poc
	ldr	r3, [r6, #0]	@ tmp413, <variable>.pListX
	ldrb	r0, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r4, #1139]	@ <variable>.is_long_term, <variable>.frame_is_long_term
	ldr	r2, [r6, #0]	@ tmp416, <variable>.pListX
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r4, #1138]	@ <variable>.structure, <variable>.frame_structure
	ldr	ip, [r6, #0]	@ tmp419, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	str	r3, [r4, #1160]	@ <variable>.frame.poc, <variable>.frame_poc
	ldr	r0, [r6, #0]	@ tmp422, <variable>.pListX
	ldr	r2, [r0, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	lr, [r2, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	str	lr, [r4, #1164]	@ <variable>.top_field.poc, <variable>.top_poc
	ldr	ip, [r6], #4	@ tmp425, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r1, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	strb	sl, [r4, #1136]	@ tmp577, <variable>.list_structure
	str	r3, [r4, #1168]	@ <variable>.bottom_field.poc, <variable>.btm_poc
	add	r4, r4, #36	@ ivtmp.3172, ivtmp.3172,
	ldr	r0, [r5, fp]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, r8	@ <variable>.CurrSlice.listXsize, i.3338
	bhi	.L862	@,
	b	.L858	@
.L876:
	movw	r0, #17632	@ tmp541,
	ldr	r1, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	cmp	r1, #1	@ <variable>.CurrPPS.weighted_bipred_idc,
	bne	.L836	@,
	movw	r3, #20680	@ tmp543,
	ldrb	r2, [r5, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L836	@,
	b	.L877	@
.L914:
	movw	r0, #17632	@ tmp295,
	ldr	ip, [r5, r0]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.CurrPPS.weighted_bipred_idc
	strb	ip, [r7, #4]	@ <variable>.CurrPPS.weighted_bipred_idc, <variable>.weight_flag
	b	.L834	@
.L915:
	movw	r9, #20728	@ tmp480,
	ldr	r0, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L858	@,
	add	sl, r5, #27136	@ ivtmp.3201, pH264Ctx,
	add	r8, r7, #2800	@ ivtmp.3210, pCurrSlicePara,
	add	r4, sl, #32	@ ivtmp.3201, ivtmp.3201,
	add	r6, r8, #4	@ ivtmp.3210, ivtmp.3210,
	movw	sl, #52840	@ tmp583,
	mov	r8, #0	@ i.3369,
	b	.L874	@
.L872:
	strb	r3, [r6, #-22]	@ temp.3407, <variable>.btm_structure
	ldr	r2, [r4, #0]	@ tmp522, <variable>.pListX
	ldrb	r0, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r6, #-21]	@ <variable>.is_long_term, <variable>.btm_is_long_term
	ldr	ip, [r4, #0]	@ tmp525, <variable>.pListX
	ldr	lr, [ip, #16]	@ <variable>.poc, <variable>.poc
	str	lr, [r6, #4]	@ <variable>.poc, <variable>.btm_poc
.L873:
	ldr	r3, [r5, r9]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	add	r8, r8, #1	@ i.3369, i.3369,
	add	r4, r4, #4	@ ivtmp.3201, ivtmp.3201,
	add	r6, r6, #36	@ ivtmp.3210, ivtmp.3210,
	cmp	r3, r8	@ <variable>.CurrSlice.listXsize, i.3369
	bls	.L858	@,
.L874:
	ldr	ip, [r4, #0]	@ tmp486, <variable>.pListX
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	ldr	r1, [r4, #0]	@ tmp489, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r2, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	r2, [r6, #-16]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	ip, [r4, #0]	@ tmp492, <variable>.pListX
	ldr	r1, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	strb	r3, [r6, #-27]	@ <variable>.is_used, <variable>.is_used
	ldr	r2, [r4, #0]	@ tmp496, <variable>.pListX
	ldr	ip, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #1	@ <variable>.non_existing,
	ldreq	r0, [sp, #12]	@ ExistImgIdc_1.3263, %sfp
	beq	.L870	@,
	cmp	r0, #0	@ pstLogicFs.3384,
	ldrne	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	ldrne	r0, [r3, #4]	@ ExistImgIdc_1.3263, <variable>.PhyFsID
.L870:
	str	r0, [r6, #-12]	@ ExistImgIdc_1.3263, <variable>.img_idc
	ldr	ip, [r4, #0]	@ tmp500, <variable>.pListX
	ldr	lr, [ip, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r1, [lr, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	str	r1, [r6, #-8]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	r3, [r4, #0]	@ tmp503, <variable>.pListX
	ldr	r2, [r3, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r2, #524]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #-20]	@ <variable>.poc, <variable>.poc
	ldr	ip, [r4, #0]	@ tmp506, <variable>.pListX
	ldrb	lr, [ip, #0]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	strb	lr, [r6, #-28]	@ <variable>.structure, <variable>.list_structure
	ldr	r1, [r4, #0]	@ tmp509, <variable>.pListX
	ldr	r3, [r1, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrb	r2, [r3, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r2, [r6, #-26]	@ <variable>.frame.structure, <variable>.frame_structure
	ldr	r0, [r4, #0]	@ tmp513, <variable>.pListX
	ldrb	r3, [r0, #0]	@ zero_extendqisi2	@ temp.3407, <variable>.structure
	cmp	r3, #1	@ temp.3407,
	bne	.L872	@,
	strb	r3, [r6, #-24]	@ temp.3407, <variable>.top_structure
	ldr	r1, [r4, #0]	@ tmp516, <variable>.pListX
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r3, [r6, #-23]	@ <variable>.is_long_term, <variable>.top_is_long_term
	ldr	r2, [r4, #0]	@ tmp519, <variable>.pListX
	ldr	r0, [r2, #16]	@ <variable>.poc, <variable>.poc
	str	r0, [r6, #0]	@ <variable>.poc, <variable>.top_poc
	b	.L873	@
.L916:
	add	r1, r5, #20992	@ ivtmp.3121, pH264Ctx,
	mov	r2, #0	@ i.3270,
	add	r3, r1, #144	@ ivtmp.3121, ivtmp.3121,
	movw	ip, #20740	@ tmp573,
.L879:
	ldr	r1, [r3, #0]	@ tmp561, <variable>.CurrSlice.wp_weight_l1_y
	add	r2, r2, #1	@ i.3270, i.3270,
	str	r1, [r0, #472]	@ tmp561, <variable>.wp_weight_l1_y
	ldr	r1, [r3, #128]	@ tmp562, <variable>.CurrSlice.wp_weight_l1_u
	str	r1, [r0, #600]	@ tmp562, <variable>.wp_weight_l1_u
	ldr	r1, [r3, #256]	@ tmp563, <variable>.CurrSlice.wp_weight_l1_v
	str	r1, [r0, #728]	@ tmp563, <variable>.wp_weight_l1_v
	ldr	r1, [r3, #768]	@ tmp564, <variable>.CurrSlice.wp_offset_l1_y
	str	r1, [r0, #1240]	@ tmp564, <variable>.wp_offset_l1_y
	ldr	r1, [r3, #896]	@ tmp565, <variable>.CurrSlice.wp_offset_l1_u
	str	r1, [r0, #1368]	@ tmp565, <variable>.wp_offset_l1_u
	ldr	r1, [r3, #1024]	@ tmp566, <variable>.CurrSlice.wp_offset_l1_v
	add	r3, r3, #4	@ ivtmp.3121, ivtmp.3121,
	str	r1, [r0, #1496]	@ tmp566, <variable>.wp_offset_l1_v
	add	r0, r0, #4	@ ivtmp.3430, ivtmp.3430,
	ldr	r1, [r5, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r1, r2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.3270
	bcs	.L879	@,
	b	.L836	@
	.fnend
	.size	WriteSliceMsg, .-WriteSliceMsg
	.align	2
	.global	GetAPC
	.type	GetAPC, %function
GetAPC:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	subs	r5, r1, #0	@ pFrameStore, pFrameStore
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bne	.L941	@,
.L919:
	mvn	r0, #0	@ D.33661,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L941:
	cmp	r2, #1	@ structure,
	beq	.L921	@,
	cmp	r2, #2	@ structure,
	beq	.L942	@,
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	ldr	r8, [r5, #488]	@ bottompoc, <variable>.bottom_field.poc
.L923:
	movw	r3, #26900	@ tmp147,
	ldr	r0, [r4, r3]	@ D.33682, <variable>.APC.size
	cmp	r0, #0	@ D.33682,
	beq	.L919	@,
	movw	r1, #26644	@ tmp148,
	ldr	r6, [r4, r1]	@ <variable>.APC.is_used, <variable>.APC.is_used
	cmp	r6, #0	@ <variable>.APC.is_used,
	beq	.L925	@,
	tst	r0, #1	@ D.33682,
	add	r3, r4, #26624	@ tmp183, pH264Ctx,
	add	r2, r3, #24	@ ivtmp.3463, tmp183,
	mov	r6, #0	@ i,
	bne	.L926	@,
	ldr	r1, [r2, #0]	@ D.33663, <variable>.APC.is_used
	mov	r6, #1	@ i,
	add	r2, r3, #28	@ ivtmp.3463, tmp183,
	cmp	r1, #0	@ D.33663,
	bne	.L926	@,
	b	.L925	@
.L938:
	ldr	ip, [r2, #4]	@ D.33663, <variable>.APC.is_used
	add	r6, r6, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.3463, tmp189,
	cmp	ip, #0	@ D.33663,
	beq	.L925	@,
.L926:
	add	r6, r6, #1	@ i, i,
	mov	r3, r2	@ tmp189, ivtmp.3463
	cmp	r6, r0	@ i, D.33682
	bcs	.L919	@,
	ldr	ip, [r3], #4	@ D.33663, <variable>.APC.is_used
	cmp	ip, #0	@ D.33663,
	bne	.L938	@,
.L925:
	movw	r2, #52840	@ tmp150,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L919	@,
	ldr	lr, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	lr, #0	@ <variable>.pstDecodeFs,
	beq	.L919	@,
	add	r2, r6, #6656	@ tmp155, i,
	movw	r9, #26904	@ tmp181,
	add	sl, r4, r2, asl #2	@, tmp158, pH264Ctx, tmp155,
	ldr	r2, [r4, r9]	@ D.33678, <variable>.APC.used_size
	mov	r9, #1	@ tmp160,
	str	r9, [sl, #20]	@ tmp160, <variable>.APC.is_used
	cmp	r2, #15	@ D.33678,
	ldr	r3, [r0, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	addls	r2, r2, #1	@ iftmp.495, D.33678,
	movhi	r2, #16	@ iftmp.495,
	mov	lr, sl	@ tmp173, tmp165
	ldr	r0, [r3, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	movw	r3, #26904	@ tmp182,
	str	r7, [sl, #148]	@ toppoc, <variable>.APC.poc
	str	r8, [sl, #212]	@ bottompoc, <variable>.APC.poc
	str	r0, [sl, #84]	@ <variable>.PhyFsID, <variable>.APC.idc
	mov	r0, #0	@ D.33661,
	str	r2, [r4, r3]	@ iftmp.495, <variable>.APC.used_size
	str	r6, [r5, #552]	@ i, <variable>.apc_idc
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L942:
	ldr	r7, [r5, #488]	@ toppoc, <variable>.bottom_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L923	@
.L921:
	ldr	r7, [r5, #452]	@ toppoc, <variable>.top_field.poc
	mov	r8, r7	@ bottompoc, toppoc
	b	.L923	@
	.fnend
	.size	GetAPC, .-GetAPC
	.align	2
	.global	ExchangePts
	.type	ExchangePts, %function
ExchangePts:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrd	r2, [r1, #16]	@ <variable>.fs_image.PTS, pFrameStore,
	mov	fp, r1	@ pFrameStore, pFrameStore
	mov	r8, r0	@ pH264Ctx, pH264Ctx
	mvn	r1, #0	@,
	mvn	r0, #0	@ tmp145,
	cmp	r3, r1	@ <variable>.fs_image.PTS, tmp145
	cmpeq	r2, r0	@ <variable>.fs_image.PTS, tmp145
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L949	@,
	movw	sl, #26628	@ tmp146,
	ldr	r3, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L949	@,
	add	r4, r8, #26368	@ ivtmp.3495, pH264Ctx,
	mvn	r6, #1	@ MinPts.3501,
	add	r4, r4, #64	@ ivtmp.3495, ivtmp.3495,
	mvn	r7, #0	@ MinPts.3501,
	mov	r5, #0	@ i,
	movw	r9, #52840	@ tmp167,
	mvn	r1, #0	@,
	str	r1, [sp, #4]	@, %sfp
.L948:
	ldr	r3, [r4, #0]	@ D.33318, <variable>.DPB.fs
	cmp	r3, #0	@ D.33318,
	beq	.L945	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r8, r9]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L945	@,
	ldrsb	r2, [r0, #1]	@ D.33326, <variable>.s32DispState
	cmp	r2, #3	@ D.33326,
	cmpne	r2, #0	@, D.33326,
	beq	.L945	@,
	ldr	r3, [r4, #0]	@ tmp161, <variable>.DPB.fs
	ldrd	r2, [r3, #16]	@ MinPts, tmp161,
	cmp	r3, r7	@ MinPts, MinPts.3501
	cmpeq	r2, r6	@ MinPts, MinPts.3501
	strcc	r5, [sp, #4]	@ i, %sfp
	bcc	.L946	@,
.L945:
	mov	r2, r6	@ MinPts, MinPts.3501
	mov	r3, r7	@ MinPts, MinPts.3501
.L946:
	ldr	r0, [r8, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	r5, r5, #1	@ i, i,
	mov	r6, r2	@ MinPts.3501, MinPts
	mov	r7, r3	@ MinPts.3501, MinPts
	cmp	r5, r0	@ i, <variable>.DPB.used_size
	add	r4, r4, #4	@ ivtmp.3495, ivtmp.3495,
	bcc	.L948	@,
	ldr	r4, [sp, #4]	@, %sfp
	cmn	r4, #1	@,
	beq	.L949	@,
	ldrd	r0, [fp, #16]	@ temp.3499, pFrameStore,
	cmp	r3, r1	@ MinPts, temp.3499
	cmpeq	r2, r0	@ MinPts, temp.3499
	bcs	.L949	@,
	add	ip, r4, #6592	@ tmp164,,
	add	ip, ip, #16	@ tmp164, tmp164,
	ldr	ip, [r8, ip, asl #2]	@ tmp166, <variable>.DPB.fs
	strd	r0, [ip, #16]	@ temp.3499, tmp166,
	strd	r2, [fp, #16]	@ MinPts, pFrameStore,
.L949:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	ExchangePts, .-ExchangePts
	.align	2
	.global	CheckFrameStore
	.type	CheckFrameStore, %function
CheckFrameStore:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #51332	@ tmp140,
	mov	r5, r1	@ pFrameStore, pFrameStore
	ldr	r3, [r4, r0]	@ <variable>.IDRFound, <variable>.IDRFound
	cmp	r3, #0	@ <variable>.IDRFound,
	bne	.L951	@,
	ldr	r1, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r1, #1	@ <variable>.eFoState,
	beq	.L952	@,
	movw	ip, #52768	@ tmp143,
	ldr	r2, [r4, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r2, #0	@ <variable>.OldDecMode,
	beq	.L964	@,
.L952:
	movw	r1, #51332	@ tmp147,
	mov	lr, #1	@ tmp148,
	str	lr, [r4, r1]	@ tmp148, <variable>.IDRFound
.L951:
	movw	r2, #52840	@ tmp149,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L954	@,
	ldrsb	ip, [r0, #1]	@ D.33264, <variable>.s32DispState
	cmp	ip, #3	@ D.33264,
	cmpne	ip, #0	@, D.33264,
	beq	.L954	@,
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ D.33277, <variable>.is_used
	cmp	r3, #0	@ D.33277,
	bne	.L965	@,
.L953:
	mvn	r0, #0	@ D.33258,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L954:
	ldr	r3, [r5, #528]	@ <variable>.eFoState, <variable>.eFoState
	mvn	r0, #2	@ D.33258,
	cmp	r3, #1	@ <variable>.eFoState,
	moveq	r3, #2	@ tmp162,
	streq	r3, [r5, #528]	@ tmp162, <variable>.eFoState
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L964:
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	bne	.L952	@,
	b	.L953	@
.L965:
	ldrb	lr, [r5, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	lr, #1	@ <variable>.non_existing,
	beq	.L953	@,
	ldr	lr, [r5, #0]	@ tmp166,* pFrameStore
	movw	r2, #:lower16:50332416	@ tmp167,
	movt	r2, #:upper16:50332416	@ tmp167,
	bic	ip, lr, #16711680	@ tmp164, tmp166,
	bic	r1, ip, #255	@ tmp164, tmp164,
	cmp	r1, r2	@ tmp164, tmp167
	beq	.L953	@,
	cmp	r3, #1	@ D.33277,
	beq	.L966	@,
	cmp	r3, #2	@ D.33277,
	beq	.L967	@,
.L959:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #188]	@ <variable>.stDispImg.error_level, <variable>.stDispImg.error_level
	ldr	ip, [lr, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r2, ip	@ <variable>.stDispImg.error_level, <variable>.s32OutErrThr
	movls	r0, #0	@ D.33258,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L953	@
.L967:
	ldrb	r1, [r5, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	tst	r1, #2	@ <variable>.mode_skip_flag,
	bne	.L953	@,
	b	.L959	@
.L966:
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	tst	r3, #1	@ <variable>.mode_skip_flag,
	beq	.L959	@,
	b	.L953	@
	.fnend
	.size	CheckFrameStore, .-CheckFrameStore
	.align	2
	.global	H264DEC_RecycleImage
	.type	H264DEC_RecycleImage, %function
H264DEC_RecycleImage:
	.fnstart
.LFB1728:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r5, #52840	@ tmp143,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, r5]	@, <variable>.ChanID
	mov	r7, r1	@ PicID.834, PicID
	bl	FSP_GetLogicFs	@
	subs	r6, r0, #0	@ pstLogicFs,
	bne	.L976	@,
.L969:
	mvn	r0, #0	@ D.40241,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L976:
	ldrsb	r3, [r6, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r3, #0	@ <variable>.s32DispState,
	beq	.L969	@,
	ldr	r1, [r6, #200]	@ D.40243, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ D.40243,
	beq	.L970	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp148,
	str	r0, [r6, #200]	@ tmp148, <variable>.stDispImg.p_usrdat
.L970:
	ldr	r1, [r6, #204]	@ temp.3560, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3560,
	beq	.L971	@,
	movw	r2, #52840	@ tmp149,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp151,
	str	r1, [r6, #204]	@ tmp151, <variable>.stDispImg.p_usrdat
.L971:
	ldr	r1, [r6, #208]	@ temp.3562, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3562,
	beq	.L972	@,
	movw	lr, #52840	@ tmp152,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp154,
	str	ip, [r6, #208]	@ tmp154, <variable>.stDispImg.p_usrdat
.L972:
	ldr	r1, [r6, #212]	@ temp.3556, <variable>.stDispImg.p_usrdat
	cmp	r1, #0	@ temp.3556,
	beq	.L973	@,
	movw	r2, #52840	@ tmp155,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp157,
	str	r3, [r6, #212]	@ tmp157, <variable>.stDispImg.p_usrdat
.L973:
	movw	ip, #52840	@ tmp158,
	mov	r1, r7	@, PicID.834
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	mov	r0, #0	@ D.40241,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	H264DEC_RecycleImage, .-H264DEC_RecycleImage
	.align	2
	.global	u_1
	.type	u_1, %function
u_1:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r1, #1	@,
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ D.32523, <variable>.pCurrNal
	ldr	r1, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r2, r1, #1	@ tmp141, <variable>.nal_bitoffset,
	str	r2, [r3, #64]	@ tmp141, <variable>.nal_bitoffset
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	u_1, .-u_1
	.align	2
	.global	u_v
	.type	u_v, %function
u_v:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r0, r0, #13504	@, pH264Ctx,
	mov	r5, r1	@ LenInBits, LenInBits
	add	r0, r0, #24	@,,
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ D.32512, <variable>.pCurrNal
	ldr	r2, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r5, r2, r5	@ tmp142, <variable>.nal_bitoffset, LenInBits
	str	r5, [r3, #64]	@ tmp142, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	u_v, .-u_v
	.align	2
	.global	H264_DecPicTimingSEI
	.type	H264_DecPicTimingSEI, %function
H264_DecPicTimingSEI:
	.fnstart
.LFB1713:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #13580	@ tmp150,
	movw	ip, #14332	@ tmp151,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r4, [r0, r3]	@ pSPS, <variable>.SPS
	mov	r1, #4000	@ tmp154,
	ldr	r0, [r0, ip]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	mla	r3, r1, r0, r4	@ pSPS.3640, tmp154, <variable>.CurrSPS.seq_parameter_set_id, pSPS
	ldrb	r2, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	movne	r4, r3	@ pSPS, pSPS.3640
	beq	.L1005	@,
.L987:
	ldrb	ip, [r4, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	beq	.L989	@,
	ldrb	r3, [r4, #35]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag, <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.nal_hrd_parameters_present_flag,
	beq	.L1006	@,
	ldr	lr, [r4, #388]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r6, [r4, #392]	@ <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, lr, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.nal_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r6, #1	@ dpb_output_len, <variable>.vui_seq_parameters.nal_hrd_parameters.dpb_output_delay_length_minus1,
.L992:
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC0	@,
	movt	r2, #:upper16:.LC0	@,
	bl	u_v	@
	movw	r3, #26424	@ tmp166,
	mov	r1, r6	@, dpb_output_len
	movw	r2, #:lower16:.LC1	@,
	movt	r2, #:upper16:.LC1	@,
	str	r0, [r5, r3]	@, <variable>.PicTimingSEI.cpb_removal_delay
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26428	@ tmp168,
	str	r0, [r5, ip]	@, <variable>.PicTimingSEI.dpb_output_delay
.L989:
	ldrb	r3, [r4, #39]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.pic_struct_present_flag, <variable>.vui_seq_parameters.pic_struct_present_flag
	cmp	r3, #0	@ <variable>.vui_seq_parameters.pic_struct_present_flag,
	beq	.L994	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC2	@,
	movt	r2, #:upper16:.LC2	@,
	bl	u_v	@
	movw	r2, #26420	@ tmp171,
	mov	r3, #0	@ D.39139,
	strb	r0, [r5, r2]	@, <variable>.PicTimingSEI.pic_struct
.L994:
	mov	r0, r3	@, D.39139
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1006:
	ldrb	r2, [r4, #38]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag, <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vui_seq_parameters.vcl_hrd_parameters_present_flag,
	beq	.L989	@,
	ldr	r1, [r4, #700]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	ldr	r0, [r4, #704]	@ <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1
	add	r1, r1, #1	@ cpb_removal_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.cpb_removal_delay_length_minus1,
	add	r6, r0, #1	@ dpb_output_len, <variable>.vui_seq_parameters.vcl_hrd_parameters.dpb_output_delay_length_minus1,
	b	.L992	@
.L1005:
	movw	r2, #13572	@ tmp156,
	ldr	ip, [r5, r2]	@ D.39136, <variable>.MaxSpsNum
	cmp	ip, #0	@ D.39136,
	ble	.L983	@,
	ldrb	r2, [r4, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L984	@,
	tst	ip, #1	@ D.39136,
	add	r3, r4, #4000	@ ivtmp.3636, pSPS,
	bne	.L986	@,
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.39133, <variable>.is_valid
	mov	r4, r3	@ pSPS, ivtmp.3636
	mov	r2, #1	@ i,
	add	r3, r3, #4000	@ ivtmp.3636, ivtmp.3636,
	cmp	r0, #0	@ D.39133,
	beq	.L986	@,
	b	.L984	@
.L988:
	ldrb	r0, [r3, #23]	@ zero_extendqisi2	@ D.39133, <variable>.is_valid
	cmp	r0, #0	@ D.39133,
	bne	.L984	@,
	ldrb	r0, [r3, #4023]	@ zero_extendqisi2	@ D.39133, <variable>.is_valid
	mov	r4, r1	@ pSPS, tmp177
	add	r3, r3, #8000	@ ivtmp.3636, ivtmp.3636,
	cmp	r0, #0	@ D.39133,
	bne	.L984	@,
.L986:
	add	r1, r2, #1	@ tmp178, i,
	mov	r4, r3	@ pSPS, ivtmp.3636
	cmp	ip, r1	@ D.39136, tmp178
	add	r2, r1, #1	@ i, tmp178,
	add	r1, r3, #4000	@ tmp177, ivtmp.3636,
	bgt	.L988	@,
.L983:
	mvn	r3, #0	@ D.39139,
	b	.L994	@
.L984:
	cmp	r4, #0	@ pSPS,
	bne	.L987	@,
	mvn	r3, #0	@ D.39139,
	b	.L994	@
	.fnend
	.size	H264_DecPicTimingSEI, .-H264_DecPicTimingSEI
	.align	2
	.global	GetBackPicFromVOQueue
	.type	GetBackPicFromVOQueue, %function
GetBackPicFromVOQueue:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #52840	@ tmp146,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	beq	.L1025	@,
.L1008:
	movw	sl, #51316	@ tmp149,
	ldr	r0, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	cmp	r0, #0	@ <variable>.TotalFsNum,
	beq	.L1009	@,
	add	r4, r6, #27136	@ ivtmp.3676, pH264Ctx,
	mov	r7, #0	@ i,
	add	r4, r4, #169	@ ivtmp.3676, ivtmp.3676,
	mov	r5, r7	@ tmp174, i
	movw	r8, #52840	@ tmp175,
.L1014:
	ldr	r1, [r4, #199]	@ D.35481, <variable>.fs_image.p_usrdat
	add	r7, r7, #1	@ i, i,
	strb	r5, [r4, #0]	@ tmp174, <variable>.is_used
	cmp	r1, #0	@ D.35481,
	strb	r5, [r4, #1]	@ tmp174, <variable>.is_reference
	beq	.L1010	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #199]	@ tmp174, <variable>.fs_image.p_usrdat
.L1010:
	ldr	r1, [r4, #203]	@ temp.3689, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3689,
	beq	.L1011	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #203]	@ tmp174, <variable>.fs_image.p_usrdat
.L1011:
	ldr	r1, [r4, #207]	@ temp.3691, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3691,
	beq	.L1012	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #207]	@ tmp174, <variable>.fs_image.p_usrdat
.L1012:
	ldr	r1, [r4, #211]	@ temp.3684, <variable>.fs_image.p_usrdat
	cmp	r1, #0	@ temp.3684,
	beq	.L1013	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, #211]	@ tmp174, <variable>.fs_image.p_usrdat
.L1013:
	ldr	r1, [r6, sl]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	add	r4, r4, #560	@ ivtmp.3676, ivtmp.3676,
	cmp	r1, r7	@ <variable>.TotalFsNum, i
	bhi	.L1014	@,
.L1009:
	movw	r2, #51320	@ tmp170,
	ldr	ip, [r6, r2]	@ D.35485, <variable>.TotalPmvNum
	cmp	ip, #0	@ D.35485,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r6, r6, #51200	@ tmp171, pH264Ctx,
	mov	r2, #1	@ i.3686,
	add	r3, r6, #48	@ ivtmp.3671, tmp171,
	cmp	r2, ip	@ i.3686, D.35485
	sub	lr, ip, #1	@ tmp177, D.35485,
	mov	r0, #0	@ tmp173,
	add	r1, r6, #52	@ ivtmp.3671, tmp171,
	str	r0, [r3, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	and	r3, lr, r2	@ tmp179, tmp177,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	cmp	r3, #0	@ tmp179,
	beq	.L1016	@,
	mov	r2, #2	@ i.3686,
	cmp	r2, ip	@ i.3686, D.35485
	str	r0, [r1, #0]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, r6, #56	@ ivtmp.3671, tmp171,
	ldmcsfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1016:
	add	r2, r2, #2	@ i.3686, i.3686,
	mov	lr, r1	@ tmp181, ivtmp.3671
	cmp	r2, ip	@ i.3686, D.35485
	str	r0, [lr], #4	@ tmp173, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp173, <variable>.PmvStoreUsedFlag
	add	r1, lr, #4	@ ivtmp.3671, tmp181,
	bcc	.L1016	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1025:
	add	r0, r6, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	b	.L1008	@
	.fnend
	.size	GetBackPicFromVOQueue, .-GetBackPicFromVOQueue
	.align	2
	.global	ReleaseNAL
	.type	ReleaseNAL, %function
ReleaseNAL:
	.fnstart
.LFB1647:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r1, #0	@ pNalu, pNalu
	mov	r6, r0	@ ChanID, ChanID
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r4, #8]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r5, #0	@ tmp135,
	strb	r5, [r4, #1]	@ tmp135, <variable>.is_valid
	cmp	r3, r5	@ <variable>.streamBuffer,
	strb	r5, [r4, #3]	@ tmp135, <variable>.nal_integ
	beq	.L1028	@,
	ldr	r1, [r4, #32]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	str	r5, [r4, #12]	@ tmp135, <variable>.bitstream_length
	str	r5, [r4, #8]	@ tmp135, <variable>.streamBuffer
	str	r5, [r4, #24]	@ tmp135, <variable>.bitsoffset
.L1028:
	ldr	r0, [r4, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	cmp	r0, #0	@ <variable>.streamBuffer,
	beq	.L1029	@,
	ldr	r1, [r4, #60]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r1, #0	@ tmp146,
	str	r1, [r4, #40]	@ tmp146, <variable>.bitstream_length
	str	r1, [r4, #36]	@ tmp146, <variable>.streamBuffer
	str	r1, [r4, #52]	@ tmp146, <variable>.bitsoffset
.L1029:
	mov	r2, #0	@ tmp149,
	str	r2, [r4, #68]	@ tmp149, <variable>.nal_segment
	strb	r2, [r4, #0]	@ tmp149, <variable>.nal_used_segment
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ReleaseNAL, .-ReleaseNAL
	.align	2
	.global	ClearAllSlice
	.type	ClearAllSlice, %function
ClearAllSlice:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	add	r4, r0, #50688	@ ivtmp.3754, pH264Ctx,
	add	sl, r0, #51200	@ D.43647, pH264Ctx,
	add	r4, r4, #16	@ ivtmp.3754, ivtmp.3754,
	add	sl, sl, #48	@ D.43647, D.43647,
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #52840	@ tmp148,
	mov	r7, #0	@ tmp149,
.L1033:
	ldr	r1, [r4, #0]	@ D.32565, <variable>.pSliceNal
	add	r5, r4, #4	@ tmp150, ivtmp.3754,
	cmp	r1, #0	@ D.32565,
	beq	.L1032	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #0]	@ tmp149, <variable>.pSliceNal
.L1032:
	ldr	r1, [r4, #4]	@ D.32565, <variable>.pSliceNal
	cmp	r1, #0	@ D.32565,
	beq	.L1036	@,
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	str	r7, [r4, #4]	@ tmp149, <variable>.pSliceNal
.L1036:
	add	r4, r5, #4	@ ivtmp.3754, tmp150,
	cmp	r4, sl	@ ivtmp.3754, D.43647
	bne	.L1033	@,
	movw	r1, #52764	@ tmp143,
	movw	r3, #52824	@ tmp145,
	mov	r0, #0	@ tmp144,
	str	r0, [r6, r1]	@ tmp144, <variable>.SliceParaNum
	str	r0, [r6, r3]	@ tmp144, <variable>.MaxBytesReceived
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	ClearAllSlice, .-ClearAllSlice
	.align	2
	.global	H264_ClearCurrPic
	.type	H264_ClearCurrPic, %function
H264_ClearCurrPic:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearAllSlice	@
	movw	r1, #13576	@ tmp136,
	movw	ip, #22328	@ tmp140,
	ldr	r0, [r4, r1]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	mov	r3, #0	@ tmp141,
	movw	r2, #22336	@ tmp135,
	strb	r3, [r4, ip]	@ tmp141, <variable>.PrevSlice.field_pic_flag
	movw	ip, #22344	@ tmp138,
	movw	r1, #22360	@ tmp155,
	str	r0, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	r2, #:lower16:88888	@ tmp162,
	movt	r2, #:upper16:88888	@ tmp162,
	str	r2, [r4, ip]	@ tmp162, <variable>.PrevSlice.frame_num
	movw	r2, #22329	@ tmp143,
	str	r3, [r4, r1]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	movw	ip, #22340	@ tmp146,
	mov	r1, #2	@ tmp144,
	strb	r1, [r4, r2]	@ tmp144, <variable>.PrevSlice.bottom_field_flag
	movw	r2, #22330	@ tmp148,
	mov	r1, #7	@ tmp147,
	str	r1, [r4, ip]	@ tmp147, <variable>.PrevSlice.nal_ref_idc
	mov	ip, #32	@ tmp149,
	movw	r1, #22352	@ tmp151,
	strb	ip, [r4, r2]	@ tmp149, <variable>.PrevSlice.nal_unit_type
	movw	r2, #22356	@ tmp153,
	mov	ip, #3	@ tmp152,
	str	ip, [r4, r1]	@ tmp152, <variable>.PrevSlice.pic_oder_cnt_lsb
	mvn	r1, #0	@ tmp154,
	movw	ip, #22368	@ tmp159,
	str	r1, [r4, r2]	@ tmp154, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	movw	r2, #22364	@ tmp157,
	mov	r1, #262144	@ tmp160,
	mov	r0, r3	@, tmp141
	str	r1, [r4, ip]	@ tmp160, <variable>.PrevSlice.first_mb_in_slice
	str	r3, [r4, r2]	@ tmp141, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	H264_ClearCurrPic, .-H264_ClearCurrPic
	.align	2
	.global	ClearAllNal
	.type	ClearAllNal, %function
ClearAllNal:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldrb	r3, [r0, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r7, #52840	@ tmp147,
	cmp	r3, #1	@ <variable>.is_valid,
	beq	.L1054	@,
.L1047:
	mov	r3, #1	@ i,
	add	r2, r6, #96	@ ivtmp.3812, pH264Ctx,
	b	.L1044	@
.L1043:
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	beq	.L1055	@,
.L1049:
	add	r3, r5, #1	@ i, tmp148,
	add	r2, r4, #96	@ ivtmp.3812, tmp149,
	cmp	r3, #137	@ i,
	beq	.L1056	@,
.L1044:
	add	r4, r2, #96	@ tmp149, ivtmp.3812,
	ldrb	r2, [r2, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r5, r3, #1	@ tmp148, i,
	cmp	r2, #1	@ <variable>.is_valid,
	bne	.L1043	@,
	add	ip, r3, r3, asl #1	@, tmp142, i, i,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	r1, r6, ip, asl #5	@, tmp144, pH264Ctx, tmp142,
	add	r1, r1, #376	@, tmp144,
	bl	ReleaseNAL	@
	ldrb	r0, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r0, #1	@ <variable>.is_valid,
	bne	.L1049	@,
.L1055:
	add	r3, r5, r5, asl #1	@, tmp166, tmp148, tmp148,
	ldr	r0, [r6, r7]	@, <variable>.ChanID
	add	lr, r6, r3, asl #5	@, tmp168, pH264Ctx, tmp166,
	add	r1, lr, #376	@, tmp168,
	bl	ReleaseNAL	@
	add	r3, r5, #1	@ i, tmp148,
	cmp	r3, #137	@ i,
	add	r2, r4, #96	@ ivtmp.3812, tmp149,
	bne	.L1044	@,
.L1056:
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1054:
	ldr	r0, [r0, r7]	@, <variable>.ChanID
	add	r1, r6, #376	@, pH264Ctx,
	bl	ReleaseNAL	@
	b	.L1047	@
	.fnend
	.size	ClearAllNal, .-ClearAllNal
	.align	2
	.global	ClearCurrNal
	.type	ClearCurrNal, %function
ClearCurrNal:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r0, #368]	@ D.32530, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ D.32530,
	beq	.L1058	@,
	movw	r2, #52840	@ tmp136,
	ldr	r0, [r0, r2]	@, <variable>.ChanID
	bl	ReleaseNAL	@
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #368]	@ tmp138, <variable>.pCurrNal
.L1058:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearCurrNal, .-ClearCurrNal
	.align	2
	.global	ClearCurrSlice
	.type	ClearCurrSlice, %function
ClearCurrSlice:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ClearCurrNal	@
	movw	r3, #52796	@ tmp135,
	mov	r0, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.TotalSlice, <variable>.TotalSlice
	add	r2, r1, #1	@ tmp138, <variable>.TotalSlice,
	str	r2, [r4, r3]	@ tmp138, <variable>.TotalSlice
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearCurrSlice, .-ClearCurrSlice
	.align	2
	.global	RepairList
	.type	RepairList, %function
RepairList:
	.fnstart
.LFB1649:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #20680	@ tmp157,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r2, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L1065	@,
	movcc	r8, #1	@ i_list_cnt,
	bcs	.L1101	@,
.L1068:
	add	r6, r3, #20480	@ ivtmp.3908, pH264Ctx,
	add	r7, r3, #26880	@ ivtmp.3911, pH264Ctx,
	mov	r9, #0	@ pRepairPic.3919,
	add	r6, r6, #244	@ ivtmp.3908, ivtmp.3908,
	add	r7, r7, #156	@ ivtmp.3911, ivtmp.3911,
	mov	r5, r9	@ i_list, pRepairPic.3919
	mov	fp, #1	@ tmp193,
	movw	sl, #50112	@ tmp194,
.L1082:
	ldr	r4, [r6, #0]	@ temp.3914, <variable>.CurrSlice.listXsize
	cmp	r4, #0	@ temp.3914,
	beq	.L1069	@,
	ldr	r1, [r7, #0]	@ pRepairPic.3920, <variable>.pListX
	cmp	r1, #0	@ pRepairPic.3920,
	movne	ip, r1	@ pRepairPic, pRepairPic.3920
	bne	.L1071	@,
	add	ip, r5, r5, asl #5	@, tmp161, i_list, i_list,
	tst	r4, #1	@ temp.3914,
	mov	r0, r1	@ i, pRepairPic.3920
	add	r2, r3, ip, asl #2	@, tmp165, pH264Ctx, tmp161,
	add	ip, r2, #26880	@ ivtmp.3905, tmp165,
	add	r2, ip, #156	@ ivtmp.3905, ivtmp.3905,
	bne	.L1072	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	mov	r0, #1	@ i,
	cmp	ip, #0	@ pRepairPic,
	beq	.L1072	@,
	b	.L1071	@
.L1074:
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1071	@,
	ldr	ip, [r2, #4]!	@ pRepairPic, <variable>.pListX
	cmp	ip, #0	@ pRepairPic,
	bne	.L1071	@,
.L1072:
	add	r0, r0, #1	@ tmp204, i,
	cmp	r4, r0	@ temp.3914, tmp204
	add	r0, r0, #1	@ i, tmp204,
	bhi	.L1074	@,
	mov	ip, r9	@ pRepairPic, pRepairPic.3919
	mov	r2, #1	@ prephitmp.3875,
.L1073:
	cmp	ip, #0	@ pRepairPic,
	orreq	r2, r2, #1	@,, tmp170, prephitmp.3875
	cmp	r2, #0	@ tmp170,
	beq	.L1075	@,
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1099	@,
	ldr	r0, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	ip, r0, #400	@ pRepairPic, <variable>.CurrPic.frame_store,
.L1075:
	add	r2, r5, r5, asl #5	@, tmp177, i_list, i_list,
	tst	r4, #1	@ temp.3914,
	mov	r0, #0	@ i.3915,
	add	r2, r3, r2, asl #2	@, tmp181, pH264Ctx, tmp177,
	add	r2, r2, #26880	@ ivtmp.3893, tmp181,
	add	r2, r2, #160	@ ivtmp.3893, ivtmp.3893,
	bne	.L1079	@,
	cmp	r1, #0	@ pRepairPic.3920,
	mov	r0, #1	@ i.3915,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.3914, i.3915
	add	r2, r2, #4	@ ivtmp.3893, ivtmp.3893,
	ldrhi	r1, [r2, #-4]	@ pRepairPic.3920, <variable>.pListX
	bhi	.L1079	@,
	b	.L1078	@
.L1088:
	mov	r2, r1	@ ivtmp.3893, tmp200
	add	r0, r0, #1	@ i.3915, tmp199,
	ldr	r1, [r2], #4	@ pRepairPic.3920, <variable>.pListX
.L1079:
	add	r0, r0, #1	@ tmp199, i.3915,
	cmp	r1, #0	@ pRepairPic.3920,
	streq	ip, [r2, #-4]	@ pRepairPic, <variable>.pListX
	cmp	r4, r0	@ temp.3914, tmp199
	add	r1, r2, #4	@ tmp200, ivtmp.3893,
	bls	.L1078	@,
	ldr	r2, [r1, #-4]	@ pRepairPic.3920, <variable>.pListX
	cmp	r2, #0	@ pRepairPic.3920,
	streq	ip, [r1, #-4]	@ pRepairPic, <variable>.pListX
	b	.L1088	@
.L1069:
	ldr	ip, [r3, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1099	@,
	ldr	r2, [r3, sl]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r9	@ pRepairPic, pRepairPic.3919
	str	fp, [r6, #0]	@ tmp193, <variable>.CurrSlice.listXsize
	add	r0, r2, #400	@ tmp187, <variable>.CurrPic.frame_store,
	str	r0, [r7, #0]	@ tmp187, <variable>.pListX
.L1078:
	add	r5, r5, #1	@ i_list, i_list,
	add	r6, r6, #4	@ ivtmp.3908, ivtmp.3908,
	cmp	r5, r8	@ i_list, i_list_cnt
	add	r7, r7, #132	@ ivtmp.3911, ivtmp.3911,
	bcs	.L1066	@,
	mov	r9, ip	@ pRepairPic.3919, pRepairPic
	b	.L1082	@
.L1071:
	mov	r2, #0	@ prephitmp.3875,
	b	.L1073	@
.L1101:
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L1066	@,
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.34524,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1066:
	mov	r0, #0	@ D.34524,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1099:
	mov	r0, r3	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.34524,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1065:
	mov	r8, #2	@ i_list_cnt,
	b	.L1068	@
	.fnend
	.size	RepairList, .-RepairList
	.align	2
	.global	CombinePacket
	.type	CombinePacket, %function
CombinePacket:
	.fnstart
.LFB1720:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r1, [r0, #368]	@ D.39823, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r1, #12]	@ D.39824, <variable>.bitstream_length
	cmp	r3, #4096	@ D.39824,
	ldmcsfd	sp!, {r3, r4, r5, pc}	@
	ldr	lr, [r1, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	mov	r2, r3	@, D.39824
	ldr	r1, [r1, #8]	@, <variable>.streamBuffer
	mov	r5, #0	@ tmp152,
	rsb	r0, r3, lr	@, D.39824, <variable>.streamBuffer
	bl	memcpy	@
	ldr	r3, [r4, #368]	@ temp.3946, <variable>.pCurrNal
	ldr	ip, [r3, #60]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r1, [r3, #32]	@ StreamId, <variable>.StreamID
	str	ip, [r3, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r2, #24]	@ tmp152, <variable>.bitsoffset
	ldr	ip, [r4, #368]	@ temp.3948, <variable>.pCurrNal
	ldr	r3, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r0, [ip, #36]	@ <variable>.streamBuffer, <variable>.streamBuffer
	rsb	r2, r3, r0	@ tmp156, <variable>.bitstream_length, <variable>.streamBuffer
	str	r2, [ip, #8]	@ tmp156, <variable>.streamBuffer
	ldr	ip, [r4, #368]	@ temp.3953, <variable>.pCurrNal
	ldr	r3, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r0, [ip, #44]	@ <variable>.stream_phy_addr, <variable>.stream_phy_addr
	rsb	r2, r3, r0	@ tmp159, <variable>.bitstream_length, <variable>.stream_phy_addr
	str	r2, [ip, #16]	@ tmp159, <variable>.stream_phy_addr
	ldr	ip, [r4, #368]	@ temp.3955, <variable>.pCurrNal
	ldr	r0, [ip, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r3, [ip, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r2, r0, r3	@ tmp162, <variable>.bitstream_length, <variable>.bitstream_length
	str	r2, [ip, #12]	@ tmp162, <variable>.bitstream_length
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #52840	@ tmp165,
	mov	ip, #1	@ tmp164,
	str	ip, [r3, #68]	@ tmp164, <variable>.nal_segment
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r1, #36]	@ tmp152, <variable>.streamBuffer
	ldr	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r0, #52]	@ tmp152, <variable>.bitsoffset
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r5, [r3, #40]	@ tmp152, <variable>.bitstream_length
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	CombinePacket, .-CombinePacket
	.align	2
	.global	FindZeroBitsInSeg
	.type	FindZeroBitsInSeg, %function
FindZeroBitsInSeg:
	.fnstart
.LFB1718:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ands	r3, r1, #63	@ tmp154, len,
	add	r2, r1, #63	@ tmp157, len,
	mov	fp, r1	@ len, len
	movne	r3, #1	@, tmp154,
	cmp	r1, #0	@ len,
	mov	sl, r0	@ ptr, ptr
	movge	r2, r1	@ len, len
	add	r8, r3, r2, asr #6	@, nRound, tmp154, len,
	cmp	r8, #0	@ nRound,
	movle	r4, #0	@ zero_byte,
	ble	.L1107	@,
	movw	r5, #:lower16:.LANCHOR1	@ tmp192,
	movt	r5, #:upper16:.LANCHOR1	@ tmp192,
	mov	r7, r1	@ ivtmp.4011, len
	mov	r4, #0	@ zero_byte,
	mov	r9, r5	@ tmp193, tmp192
.L1111:
	cmp	r7, #64	@ ivtmp.4011,
	movcc	r6, r7	@ ThisRoundSize, ivtmp.4011
	movcs	r6, #64	@ ThisRoundSize,
	movw	r0, #:lower16:.LANCHOR1	@,
	rsb	ip, r6, r7	@ tmp160, ThisRoundSize, ivtmp.4011
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r2, r6	@, ThisRoundSize
	sub	r6, r6, #1	@ tmp167, ThisRoundSize,
	add	r1, sl, ip	@, ptr, tmp160
	bl	memcpy	@
	ldrb	r1, [r5, r6]	@ zero_extendqisi2	@ tmp168,
	add	r3, r5, r6	@ pLastByte, tmp192, tmp167
	cmp	r1, #0	@ tmp168,
	bne	.L1107	@,
	cmp	r3, r9	@ pLastByte, tmp193
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1108	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp171,
	rsb	r2, r3, r5	@ tmp195, pLastByte, tmp192
	cmp	r1, #0	@ tmp171,
	mvn	lr, r2	@ tmp194, tmp195
	and	r2, lr, #1	@ tmp196, tmp194,
	bne	.L1107	@,
	sub	r3, r3, #1	@ ivtmp.4002, pLastByte,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4002, tmp192
	beq	.L1108	@,
	cmp	r2, #0	@ tmp196,
	beq	.L1109	@,
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2	@ tmp203,
	cmp	r1, #0	@ tmp203,
	bne	.L1107	@,
	sub	r3, r3, #1	@ ivtmp.4002, ivtmp.4002,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	r3, r5	@ ivtmp.4002, tmp192
	bne	.L1109	@,
	b	.L1108	@
.L1110:
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2	@ tmp201,
	add	r4, r4, #1	@ zero_byte, zero_byte,
	cmp	ip, #0	@ tmp201,
	bne	.L1107	@,
	cmp	r3, r5	@ ivtmp.4002, tmp192
	add	r4, r4, #1	@ zero_byte, zero_byte,
	beq	.L1108	@,
.L1109:
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2	@ tmp202,
	sub	r2, r3, #1	@ tmp198, ivtmp.4002,
	sub	r3, r2, #1	@ ivtmp.4002, tmp198,
	cmp	lr, #0	@ tmp202,
	beq	.L1110	@,
.L1107:
	cmp	r4, fp	@ zero_byte, len
	bge	.L1129	@,
.L1112:
	sub	r2, fp, #1	@ tmp173, len,
	rsb	r3, r4, r2	@ tmp172, zero_byte, tmp173
	ldrb	r3, [sl, r3]	@ zero_extendqisi2	@ Byte,
	tst	r3, #1	@ Byte,
	bne	.L1129	@,
	mov	r3, r3, lsr #1	@ Byte.4015, Byte,
	tst	r3, #1	@ Byte.4015,
	movne	r0, #1	@ zero_bit,
	bne	.L1113	@,
	mov	r3, r3, lsr #1	@ Byte.4018, Byte.4015,
	tst	r3, #1	@ Byte.4018,
	movne	r0, #2	@ zero_bit,
	bne	.L1113	@,
	mov	r3, r3, lsr #1	@ Byte.4021, Byte.4018,
	tst	r3, #1	@ Byte.4021,
	movne	r0, #3	@ zero_bit,
	bne	.L1113	@,
	mov	r3, r3, lsr #1	@ Byte.4024, Byte.4021,
	tst	r3, #1	@ Byte.4024,
	movne	r0, #4	@ zero_bit,
	bne	.L1113	@,
	mov	r3, r3, lsr #1	@ Byte.4027, Byte.4024,
	tst	r3, #1	@ Byte.4027,
	movne	r0, #5	@ zero_bit,
	bne	.L1113	@,
	mov	r3, r3, lsr #1	@ Byte.4030, Byte.4027,
	tst	r3, #1	@ Byte.4030,
	movne	r0, #6	@ zero_bit,
	bne	.L1113	@,
	movs	r3, r3, lsr #1	@, Byte.4030,
	movne	r0, #7	@, zero_bit,
	moveq	r0, #8	@, zero_bit,
.L1113:
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1108:
	sub	r8, r8, #1	@ r, r,
	sub	r7, r7, #64	@ ivtmp.4011, ivtmp.4011,
	cmp	r8, #0	@ r,
	bgt	.L1111	@,
	cmp	r4, fp	@ zero_byte, len
	blt	.L1112	@,
.L1129:
	mov	r0, #0	@ zero_bit,
	add	r0, r0, r4, asl #3	@,, zero_bit, zero_byte,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	.fnend
	.size	FindZeroBitsInSeg, .-FindZeroBitsInSeg
	.align	2
	.global	FindTrailZeros
	.type	FindTrailZeros, %function
FindTrailZeros:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #368]	@ prephitmp.4058, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r2, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r2, #1	@ <variable>.nal_segment,
	bls	.L1131	@,
	ldr	r1, [r3, #40]	@, <variable>.bitstream_length
	ldr	r0, [r3, #36]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4058, <variable>.pCurrNal
	ldr	r1, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r1, asl #3	@ zero_bit, <variable>.bitstream_length,
	bcs	.L1136	@,
	cmn	r0, #1	@ zero_bit,
	beq	.L1131	@,
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4073, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	ldmlsfd	sp!, {r4, pc}	@
.L1137:
	ldr	ip, [r3, #40]	@ <variable>.bitstream_length, <variable>.bitstream_length
	ldr	r2, [r3, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	cmp	r2, ip, asl #3	@ <variable>.nal_trail_zero_bit_num, <variable>.bitstream_length,
	ldmccfd	sp!, {r4, pc}	@
	movw	lr, #52840	@ tmp156,
	ldr	r1, [r3, #60]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp160,
	mov	r0, #1	@ tmp162,
	str	r3, [r2, #36]	@ tmp160, <variable>.streamBuffer
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r0, [ip, #68]	@ tmp162, <variable>.nal_segment
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r3, [r1, #72]	@ tmp160, <variable>.nal_trail_zero_bit_num
	ldmfd	sp!, {r4, pc}	@
.L1136:
	movw	lr, #52840	@ tmp142,
	ldr	r1, [r3, #60]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r2, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	ip, #0	@ tmp146,
	mov	r0, #1	@ tmp148,
	str	ip, [r2, #36]	@ tmp146, <variable>.streamBuffer
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r0, [r3, #68]	@ tmp148, <variable>.nal_segment
	ldr	r3, [r4, #368]	@ prephitmp.4058, <variable>.pCurrNal
.L1131:
	ldr	r1, [r3, #12]	@, <variable>.bitstream_length
	ldr	r0, [r3, #8]	@, <variable>.streamBuffer
	bl	FindZeroBitsInSeg	@
	ldr	r3, [r4, #368]	@ prephitmp.4058, <variable>.pCurrNal
	add	r0, r0, #1	@ tmp151, zero_bit,
	str	r0, [r3, #72]	@ tmp151, <variable>.nal_trail_zero_bit_num
	ldr	r3, [r4, #368]	@ temp.4073, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L1137	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	FindTrailZeros, .-FindTrailZeros
	.align	2
	.global	H264_IsNewPicNal
	.type	H264_IsNewPicNal, %function
H264_IsNewPicNal:
	.fnstart
.LFB1716:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ tmp140,
	mov	r4, r0	@ pNewPicDetector, pNewPicDetector
	add	r1, r1, #3	@ pu8.4105, pu8,
	and	r0, r2, #31	@ tmp141, tmp140,
	sub	r3, r0, #1	@ tmp142, tmp141,
	cmp	r3, #7	@ tmp142,
	ldrls	pc, [pc, r3, asl #2]	@ tmp142
	b	.L1139	@
.L1142:
	.word	.L1140
	.word	.L1139
	.word	.L1139
	.word	.L1139
	.word	.L1140
	.word	.L1139
	.word	.L1141
	.word	.L1141
.L1141:
	ldr	r0, [r4, #0]	@ tmp157,* pNewPicDetector
	mov	r3, #1	@ tmp158,
	str	r3, [r4, #0]	@ tmp158,* pNewPicDetector
	cmp	r0, #0	@ tmp157,
	mvnne	r0, #0	@, ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1140:
	ldr	r5, [r4, #0]	@ tmp143,* pNewPicDetector
	cmp	r5, #0	@ tmp143,
	beq	.L1149	@,
.L1144:
	mvn	r0, #0	@ ret,
.L1145:
	mov	r1, #0	@ tmp156,
	str	r1, [r4, #0]	@ tmp156,* pNewPicDetector
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1139:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1149:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ tmp146,
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ tmp144,
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ tmp151,
	ldrb	lr, [r1, #4]	@ zero_extendqisi2	@ tmp149,
	mov	r3, r2, asl #16	@ tmp147, tmp146,
	orr	r1, r3, r0, asl #8	@, tmp148, tmp147, tmp144,
	orr	r6, r1, lr	@ tmp150, tmp148, tmp149
	orr	r6, r6, ip, asl #24	@, tmpbits, tmp150, tmp151,
	mov	r0, r6	@, tmpbits
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	bhi	.L1144	@,
	mov	ip, r0, asl #1	@ tmp153, zeros,
	rsb	r0, ip, #31	@ tmp154, tmp153,
	mov	r6, r6, lsr r0	@ tmp155, tmpbits,
	cmp	r6, #1	@ tmp155,
	moveq	r0, r5	@ ret, tmp143
	bne	.L1144	@,
	b	.L1145	@
	.fnend
	.size	H264_IsNewPicNal, .-H264_IsNewPicNal
	.align	2
	.global	WritePicMsg
	.type	WritePicMsg, %function
WritePicMsg:
	.fnstart
.LFB1682:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	fp, #49728	@ tmp161,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrd	r0, [r0, fp]	@, pH264Ctx, tmp161
	.pad #36
	sub	sp, sp, #36	@,,
	movw	r5, #52760	@ tmp164,
	movw	sl, #49892	@ tmp167,
	movw	r8, #50128	@ tmp170,
	movw	r7, #49707	@ tmp173,
	movw	r6, #13607	@ tmp177,
	movw	lr, #50164	@ tmp180,
	movw	r9, #50168	@ tmp183,
	movw	r3, #17588	@ tmp197,
	strd	r0, [sp, #8]	@,,
	ldr	fp, [r4, r5]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	movw	ip, #13606	@ tmp190,
	ldr	r5, [r4, sl]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.CurrPic.fs_image.image_stride
	movw	r2, #17648	@ tmp194,
	ldr	sl, [r4, r8]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	ldrb	r8, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	ldrb	r7, [r4, r6]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	ldr	r6, [r4, lr]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	ldr	lr, [r4, r9]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.CurrPic.frame_height_in_mb
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.entropy_coding_mode_flag
	movw	r3, #17592	@ tmp204,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	mov	ip, #14336	@ tmp200,
	ldr	r1, [r4, r2]	@ <variable>.CurrPPS.transform_8x8_mode_flag, <variable>.CurrPPS.transform_8x8_mode_flag
	str	r9, [sp, #4]	@, %sfp
	ldr	r2, [r4, ip]	@, <variable>.CurrSPS.chroma_format_idc
	movw	ip, #19840	@ tmp207,
	str	r2, [sp, #0]	@, %sfp
	ldrb	r9, [r4, r3]	@ zero_extendqisi2	@, <variable>.CurrPPS.constrained_intra_pred_flag
	movw	r3, #19828	@ tmp210,
	str	r9, [sp, #16]	@, %sfp
	ldr	r2, [r4, ip]	@, <variable>.CurrPOC.ThisPOC
	movw	ip, #19832	@ tmp213,
	str	r2, [sp, #20]	@, %sfp
	ldr	r9, [r4, r3]	@, <variable>.CurrPOC.toppoc
	movw	r3, #17544	@ tmp186,
	str	r9, [sp, #24]	@, %sfp
	movw	r9, #51376	@ tmp160,
	ldr	r2, [r4, ip]	@, <variable>.CurrPOC.bottompoc
	str	r2, [sp, #28]	@, %sfp
	ldr	ip, [r4, r3]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrd	r2, [sp, #8]	@,,
	add	ip, ip, #1	@ tmp188, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	strd	r2, [r4, r9]	@, pH264Ctx, tmp160
	movw	r9, #52492	@ tmp163,
	str	fp, [r4, r9]	@ <variable>.DecSlicePara, <variable>.DecPicPara.pFirstSlice
	movw	fp, #52280	@ tmp166,
	movw	r9, #52764	@ tmp158,
	str	r5, [r4, fp]	@ <variable>.CurrPic.fs_image.image_stride, <variable>.DecPicPara.imgstride
	mov	fp, #0	@ tmp159,
	str	fp, [r4, r9]	@ tmp159, <variable>.SliceParaNum
	movw	r9, #51384	@ tmp169,
	movw	r2, #51369	@ tmp199,
	str	sl, [r4, r9]	@ <variable>.CurrPic.nal_ref_idc, <variable>.DecPicPara.nal_ref_idc
	movw	sl, #51368	@ tmp172,
	strb	r8, [r4, sl]	@ <variable>.CurrPic.structure, <variable>.DecPicPara.pic_structure
	movw	r8, #51400	@ tmp176,
	str	r7, [r4, r8]	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.DecPicPara.mb_adaptive_frame_field_flag
	movw	r7, #51388	@ tmp179,
	str	r6, [r4, r7]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.DecPicPara.pic_height_in_mb
	movw	r6, #51392	@ tmp182,
	str	lr, [r4, r6]	@ <variable>.CurrPic.frame_height_in_mb, <variable>.DecPicPara.frame_height_in_mb
	movw	r6, #51371	@ tmp189,
	strb	r0, [r4, r6]	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.DecPicPara.frame_mbs_only_flag
	movw	lr, #51396	@ tmp185,
	movw	r0, #51404	@ tmp193,
	str	ip, [r4, lr]	@ tmp188, <variable>.DecPicPara.pic_width_in_mb
	str	r1, [r4, r0]	@ <variable>.CurrPPS.transform_8x8_mode_flag, <variable>.DecPicPara.transform_8x8_mode_flag
	movw	ip, #51408	@ tmp196,
	ldr	lr, [sp, #4]	@, %sfp
	movw	r1, #51412	@ tmp203,
	movw	r3, #51416	@ tmp206,
	movw	r5, #52840	@ tmp215,
	str	lr, [r4, ip]	@, <variable>.DecPicPara.entropy_coding_mode_flag
	movw	ip, #51420	@ tmp209,
	ldr	r6, [sp, #0]	@, %sfp
	strb	r6, [r4, r2]	@, <variable>.DecPicPara.chroma_format_idc
	movw	r2, #51424	@ tmp212,
	ldr	r0, [sp, #16]	@, %sfp
	str	r0, [r4, r1]	@, <variable>.DecPicPara.constrained_intra_pred_flag
	movw	r0, #50112	@ tmp218,
	ldr	lr, [sp, #20]	@, %sfp
	str	lr, [r4, r3]	@, <variable>.DecPicPara.ThisPoc
	ldr	r6, [sp, #24]	@, %sfp
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	str	r6, [r4, ip]	@, <variable>.DecPicPara.TopPoc
	ldr	r1, [sp, #28]	@, %sfp
	str	r1, [r4, r2]	@, <variable>.DecPicPara.BottomPoc
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	subs	r6, r0, #0	@ pstLogicFs,
	bne	.L1189	@,
.L1151:
	mvn	r0, #0	@ D.36440,
.L1166:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1189:
	ldr	r1, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	cmp	r1, fp	@ <variable>.pstDecodeFs,
	beq	.L1151	@,
	ldr	r0, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	r0, fp	@ <variable>.pstDispOutFs,
	beq	.L1151	@,
	add	r8, r4, #51968	@ tmp225, pH264Ctx,
	add	lr, r4, #51712	@, pH264Ctx,
	add	fp, r4, #51456	@ tmp336, pH264Ctx,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r3, lr, #220	@,,
	add	r1, r8, #220	@, tmp225,
	add	r2, fp, #220	@, tmp336,
	add	r7, r4, #52224	@ tmp236, pH264Ctx,
	bl	FSP_GetDecFsAddrTab	@
	ldr	sl, [r6, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	movw	r3, #51660	@ tmp230,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r2, r8, #224	@, tmp225,
	add	r1, r7, #48	@, tmp236,
	ldr	ip, [sl, #4]	@ <variable>.PhyFsID, <variable>.PhyFsID
	movw	r5, #50180	@ tmp240,
	movw	sl, #51668	@ tmp239,
	str	ip, [r4, r3]	@ <variable>.PhyFsID, <variable>.DecPicPara.CurrPicImgIdc
	bl	FSP_GetPmvAddrTab	@
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.pmv_address_idc, <variable>.CurrPic.pmv_address_idc
	movw	r3, #52276	@ tmp242,
	movw	r1, #51664	@ tmp244,
	movw	ip, #26900	@ tmp251,
	str	r8, [r4, sl]	@ <variable>.CurrPic.pmv_address_idc, <variable>.DecPicPara.CurrPicPmvIdc
	ldr	r2, [r6, #424]	@ <variable>.HalfPmvOffset, <variable>.HalfPmvOffset
	ldr	r8, [r4, ip]	@ <variable>.APC.size, <variable>.APC.size
	movw	ip, #52484	@ tmp250,
	str	r2, [r4, r3]	@ <variable>.HalfPmvOffset, <variable>.DecPicPara.half_pmvblk_offset
	cmp	r8, #0	@ <variable>.APC.size,
	ldr	r0, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	movw	r3, #51672	@ tmp247,
	ldr	r5, [r0, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	r5, [r4, r1]	@ <variable>.PhyAddr, <variable>.DecPicPara.CurrPicImg2DAddr
	ldr	sl, [r6, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	ldr	r2, [sl, #32]	@ <variable>.ChromOffset, <variable>.ChromOffset
	str	r8, [r4, ip]	@ <variable>.APC.size, <variable>.DecPicPara.ApcSize
	str	r2, [r4, r3]	@ <variable>.ChromOffset, <variable>.DecPicPara.uv_offset
	beq	.L1152	@,
	add	r5, r4, #26624	@ tmp254, pH264Ctx,
	mov	ip, #1	@ i,
	cmp	ip, r8	@ i, <variable>.APC.size
	mov	r1, r7	@ ivtmp.4203, tmp236
	mov	r0, r5	@ ivtmp.4200, tmp254
	sub	r9, r8, #1	@ tmp352, <variable>.APC.size,
	ldr	sl, [r0, #84]!	@ tmp256, <variable>.APC.idc
	and	r9, r9, ip	@ tmp354, tmp352,
	add	r2, r5, #88	@ ivtmp.4200, tmp254,
	add	r3, r7, #72	@ ivtmp.4203, tmp236,
	ldr	r6, [r0, #128]	@ tmp258, <variable>.APC.poc
	ldr	r0, [r0, #64]	@ tmp257, <variable>.APC.poc
	str	sl, [r1, #68]!	@ tmp256, <variable>.DecPicPara.Apc2Idc
	str	r6, [r1, #128]	@ tmp258, <variable>.DecPicPara.Apc2Poc
	str	r0, [r1, #64]	@ tmp257, <variable>.DecPicPara.Apc2Poc
	bcs	.L1152	@,
	cmp	r9, #0	@ tmp354,
	beq	.L1188	@,
	ldr	r6, [r2, #128]	@ tmp431, <variable>.APC.poc
	mov	ip, #2	@ i,
	ldr	r0, [r2, #0]	@ tmp429, <variable>.APC.idc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	sl, [r2, #64]	@ tmp430, <variable>.APC.poc
	add	r2, r5, #92	@ ivtmp.4200, tmp254,
	str	r6, [r3, #128]	@ tmp431, <variable>.DecPicPara.Apc2Poc
	str	r0, [r3, #0]	@ tmp429, <variable>.DecPicPara.Apc2Idc
	str	sl, [r3, #64]	@ tmp430, <variable>.DecPicPara.Apc2Poc
	add	r3, r7, #76	@ ivtmp.4203, tmp236,
	bcs	.L1152	@,
.L1188:
	mov	r9, r4	@ pH264Ctx, pH264Ctx
.L1153:
	add	sl, r2, #4	@ tmp356, ivtmp.4200,
	ldr	r1, [r2, #4]	@ tmp367, <variable>.APC.idc
	ldr	r5, [r2, #0]	@ tmp361, <variable>.APC.idc
	add	ip, ip, #2	@ i, i,
	ldr	r7, [r2, #64]	@ tmp362, <variable>.APC.poc
	add	lr, r3, #4	@ tmp357, ivtmp.4203,
	ldr	r6, [r2, #128]	@ tmp363, <variable>.APC.poc
	cmp	ip, r8	@ i, <variable>.APC.size
	ldr	r4, [sl, #64]	@ tmp368, <variable>.APC.poc
	add	r2, sl, #4	@ ivtmp.4200, tmp356,
	ldr	r0, [sl, #128]	@ tmp369, <variable>.APC.poc
	str	r7, [r3, #64]	@ tmp362, <variable>.DecPicPara.Apc2Poc
	str	r6, [r3, #128]	@ tmp363, <variable>.DecPicPara.Apc2Poc
	str	r1, [r3, #4]	@ tmp367, <variable>.DecPicPara.Apc2Idc
	str	r5, [r3, #0]	@ tmp361, <variable>.DecPicPara.Apc2Idc
	add	r3, lr, #4	@ ivtmp.4203, tmp357,
	str	r4, [lr, #64]	@ tmp368, <variable>.DecPicPara.Apc2Poc
	str	r0, [lr, #128]	@ tmp369, <variable>.DecPicPara.Apc2Poc
	bcc	.L1153	@,
	mov	r4, r9	@ pH264Ctx, pH264Ctx
.L1152:
	movw	r3, #13613	@ tmp259,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag, <variable>.CurrSPS.seq_scaling_matrix_present_flag
	cmp	r2, #0	@ <variable>.CurrSPS.seq_scaling_matrix_present_flag,
	bne	.L1154	@,
	movw	ip, #17606	@ tmp261,
	ldrb	r3, [r4, ip]	@ zero_extendqisi2	@ prephitmp.4125, <variable>.CurrPPS.pic_scaling_matrix_present_flag
	cmp	r3, #0	@ prephitmp.4125,
	bne	.L1155	@,
	add	r0, r4, #51200	@ ivtmp.4163, pH264Ctx,
	movw	r1, #:lower16:.LANCHOR2	@ tmp335,
	add	r0, r0, #228	@ ivtmp.4163, ivtmp.4163,
	movt	r1, #:upper16:.LANCHOR2	@ tmp335,
.L1156:
	and	r5, r3, #3	@ tmp264, i.4213,
	add	r3, r3, #1	@ tmp342, i.4213,
	and	r2, r3, #3	@ tmp372, tmp342,
	mov	lr, r0	@ tmp343, ivtmp.4163
	ldr	r5, [r1, r5, asl #2]	@ tmp265, quant_org
	add	r3, r3, #1	@ i.4213, tmp342,
	cmp	r3, #24	@ i.4213,
	str	r5, [lr], #4	@ tmp265, <variable>.DecPicPara.Qmatrix
	ldr	sl, [r1, r2, asl #2]	@ tmp373, quant_org
	str	sl, [r0, #4]	@ tmp373, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4163, tmp343,
	bne	.L1156	@,
	add	fp, fp, #68	@ ivtmp.4155, tmp336,
	mov	r3, #0	@ i.4214,
.L1157:
	and	ip, r3, #15	@ tmp268, i.4214,
	add	r3, r3, #1	@ tmp340, i.4214,
	and	r0, r3, #15	@ tmp376, tmp340,
	mov	lr, fp	@ tmp341, ivtmp.4155
	add	r2, r1, ip, asl #2	@, tmp271, tmp335, tmp268,
	add	r3, r3, #1	@ i.4214, tmp340,
	add	r0, r1, r0, asl #2	@, tmp378, tmp335, tmp376,
	cmp	r3, #32	@ i.4214,
	ldr	sl, [r2, #16]	@ tmp273, quant8_org
	str	sl, [lr], #4	@ tmp273, <variable>.DecPicPara.Qmatrix
	ldr	ip, [r0, #16]	@ tmp380, quant8_org
	str	ip, [fp, #4]	@ tmp380, <variable>.DecPicPara.Qmatrix
	add	fp, lr, #4	@ ivtmp.4155, tmp341,
	bne	.L1157	@,
.L1158:
	movw	sl, #26900	@ tmp323,
	ldr	ip, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	cmp	ip, #0	@ <variable>.APC.size,
	beq	.L1164	@,
	add	r6, r4, #26624	@ ivtmp.4145, pH264Ctx,
	add	r7, r4, #52480	@ ivtmp.4148, pH264Ctx,
	add	r6, r6, #84	@ ivtmp.4145, ivtmp.4145,
	add	r5, r7, #144	@ ivtmp.4148, ivtmp.4148,
	movw	r8, #52840	@ tmp337,
	mov	r7, #0	@ i.4229,
.L1165:
	ldr	r2, [r6, #0]	@, <variable>.APC.idc
	mov	r1, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r7, r7, #1	@ i.4229, i.4229,
	bl	FSP_GetStoreType	@
	ldr	r3, [r4, sl]	@ <variable>.APC.size, <variable>.APC.size
	ldr	r2, [r6], #4	@ tmp331, <variable>.APC.idc
	str	r2, [r5, #64]	@ tmp331, <variable>.DecPicPara.RefPicFsId
	subs	r1, r0, #0	@ tmp330,,
	movne	r1, #1	@ tmp330
	cmp	r3, r7	@ <variable>.APC.size, i.4229
	str	r1, [r5, #0]	@ tmp330, <variable>.DecPicPara.RefPicType
	add	r5, r5, #4	@ ivtmp.4148, ivtmp.4148,
	bhi	.L1165	@,
.L1164:
	mov	r0, #0	@ D.36440,
	b	.L1166	@
.L1154:
	movw	r1, #17606	@ tmp274,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.4125, <variable>.CurrPPS.pic_scaling_matrix_present_flag
.L1155:
	cmp	r3, #1	@ prephitmp.4125,
	addne	r0, r4, #51200	@ ivtmp.4195, pH264Ctx,
	movne	r3, #0	@ i.4221,
	addne	r0, r0, #228	@ ivtmp.4195, ivtmp.4195,
	beq	.L1190	@,
.L1162:
	add	sl, r3, #1	@ tmp350, i.4221,
	add	r1, r3, #4064	@ tmp304, i.4221,
	add	r3, sl, #4064	@ tmp412, tmp350,
	add	r5, r1, #2	@ tmp304, tmp304,
	add	r2, r3, #2	@ tmp412, tmp412,
	add	r3, sl, #1	@ i.4221, tmp350,
	add	lr, r4, r5, asl #2	@, tmp308, pH264Ctx, tmp304,
	cmp	r3, #24	@ i.4221,
	add	r5, r4, r2, asl #2	@, tmp414, pH264Ctx, tmp412,
	mov	sl, r0	@ tmp351, ivtmp.4195
	ldr	ip, [lr, #4]	@ tmp310, <variable>.CurrSPS.qmatrix4x4
	ldr	r1, [r5, #4]	@ tmp416, <variable>.CurrSPS.qmatrix4x4
	str	ip, [sl], #4	@ tmp310, <variable>.DecPicPara.Qmatrix
	str	r1, [r0, #4]	@ tmp416, <variable>.DecPicPara.Qmatrix
	add	r0, sl, #4	@ ivtmp.4195, tmp351,
	bne	.L1162	@,
	add	fp, fp, #68	@ ivtmp.4187, tmp336,
	mov	r3, #0	@ i.4224,
.L1163:
	add	r0, r3, #1	@ tmp349, i.4224,
	add	r2, r3, #4080	@ tmp316, i.4224,
	add	r3, r0, #4080	@ tmp424, tmp349,
	add	r1, r2, #10	@ tmp316, tmp316,
	add	lr, r3, #10	@ tmp424, tmp424,
	add	r3, r0, #1	@ i.4224, tmp349,
	add	sl, r4, r1, asl #2	@, tmp320, pH264Ctx, tmp316,
	cmp	r3, #32	@ i.4224,
	add	ip, r4, lr, asl #2	@, tmp426, pH264Ctx, tmp424,
	mov	lr, fp	@ tmp348, ivtmp.4187
	ldr	r0, [sl, #4]	@ tmp322, <variable>.CurrSPS.qmatrix8x8
	ldr	r2, [ip, #4]	@ tmp428, <variable>.CurrSPS.qmatrix8x8
	str	r0, [lr], #4	@ tmp322, <variable>.DecPicPara.Qmatrix
	str	r2, [fp, #4]	@ tmp428, <variable>.DecPicPara.Qmatrix
	add	fp, lr, #4	@ ivtmp.4187, tmp348,
	bne	.L1163	@,
	b	.L1158	@
.L1190:
	add	r5, r4, #51200	@ ivtmp.4179, pH264Ctx,
	mov	r3, #0	@ i.4216,
	add	r0, r5, #228	@ ivtmp.4179, ivtmp.4179,
.L1160:
	add	r5, r3, #1	@ tmp346, i.4216,
	add	sl, r3, #4864	@ tmp280, i.4216,
	add	r3, r5, #4864	@ tmp388, tmp346,
	add	r1, sl, #28	@ tmp280, tmp280,
	add	lr, r3, #28	@ tmp388, tmp388,
	add	r3, r5, #1	@ i.4216, tmp346,
	add	ip, r4, r1, asl #2	@, tmp284, pH264Ctx, tmp280,
	cmp	r3, #24	@ i.4216,
	add	r5, r4, lr, asl #2	@, tmp390, pH264Ctx, tmp388,
	mov	lr, r0	@ tmp347, ivtmp.4179
	ldr	r2, [ip, #4]	@ tmp286, <variable>.CurrPPS.qmatrix4x4
	ldr	sl, [r5, #4]	@ tmp392, <variable>.CurrPPS.qmatrix4x4
	str	r2, [lr], #4	@ tmp286, <variable>.DecPicPara.Qmatrix
	str	sl, [r0, #4]	@ tmp392, <variable>.DecPicPara.Qmatrix
	add	r0, lr, #4	@ ivtmp.4179, tmp347,
	bne	.L1160	@,
	add	fp, fp, #68	@ ivtmp.4171, tmp336,
	mov	r3, #0	@ i.4218,
.L1161:
	add	r0, r3, #1	@ tmp344, i.4218,
	add	r2, r3, #4864	@ tmp292, i.4218,
	add	r3, r0, #4864	@ tmp400, tmp344,
	add	lr, r2, #52	@ tmp292, tmp292,
	add	sl, r3, #52	@ tmp400, tmp400,
	add	r3, r0, #1	@ i.4218, tmp344,
	add	r1, r4, lr, asl #2	@, tmp296, pH264Ctx, tmp292,
	cmp	r3, #32	@ i.4218,
	add	ip, r4, sl, asl #2	@, tmp402, pH264Ctx, tmp400,
	mov	r2, fp	@ tmp345, ivtmp.4171
	ldr	r0, [r1, #4]	@ tmp298, <variable>.CurrPPS.qmatrix8x8
	ldr	lr, [ip, #4]	@ tmp404, <variable>.CurrPPS.qmatrix8x8
	str	r0, [r2], #4	@ tmp298, <variable>.DecPicPara.Qmatrix
	str	lr, [fp, #4]	@ tmp404, <variable>.DecPicPara.Qmatrix
	add	fp, r2, #4	@ ivtmp.4171, tmp345,
	bne	.L1161	@,
	b	.L1158	@
	.fnend
	.size	WritePicMsg, .-WritePicMsg
	.align	2
	.global	InitListX
	.type	InitListX, %function
InitListX:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #20680	@ tmp219,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r2, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	.pad #212
	sub	sp, sp, #212	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L1192	@,
	movw	r0, #49707	@ tmp221,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r5, #0	@ <variable>.CurrPic.structure,
	beq	.L1193	@,
	movw	lr, #26632	@ tmp223,
	ldr	r5, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1195	@,
	add	r7, r4, #26368	@ ivtmp.4310, pH264Ctx,
	mov	r5, r2	@ list0idx.4380, <variable>.CurrSlice.slice_type
	add	r3, r7, #128	@ ivtmp.4310, ivtmp.4310,
.L1206:
	ldr	r6, [r3, #0]	@ temp.4386, <variable>.DPB.fs_ref
	add	r1, sp, #208	@,,
	add	ip, r1, r5, asl #2	@, tmp263,, list0idx.4380,
	add	r2, r2, #1	@ i.4388, i.4388,
	add	r3, r3, #4	@ ivtmp.4310, ivtmp.4310,
	ldrb	r0, [r6, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	strne	r6, [ip, #-64]	@ temp.4386, fs_list0
	ldr	r8, [r4, lr]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	addne	r5, r5, #1	@ list0idx.4380, list0idx.4380,
	cmp	r8, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4388
	bhi	.L1206	@,
.L1195:
	add	r8, sp, #144	@ tmp267,,
	mov	r1, r5	@, list0idx.4380
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_frame_num_desc	@,
	mov	r0, r8	@, tmp267
	movt	r3, #:upper16:compare_fs_by_frame_num_desc	@,
	bl	qsort	@
	movw	r7, #49707	@ tmp273,
	add	r2, r4, #26880	@ D.35172, pH264Ctx,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	add	r7, r2, #156	@ D.35172, D.35172,
	movw	r3, #20724	@ tmp269,
	mov	r6, #0	@ tmp270,
	mov	r1, r8	@, tmp267
	str	r6, [r4, r3]	@ tmp270, <variable>.CurrSlice.listXsize
	mov	r2, r5	@, list0idx.4380
	mov	r3, r7	@, D.35172
	add	r5, r4, #20480	@ D.35173, pH264Ctx,
	add	r8, r5, #244	@ D.35173, D.35173,
	str	r6, [sp, #4]	@ tmp270,
	str	r8, [sp, #0]	@ D.35173,
	bl	GenPiclistfromFrmlist	@
	movw	r0, #26636	@ tmp277,
	ldr	r5, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r5, r6	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r6, sp, #16	@ tmp521,,
	beq	.L1208	@,
	mov	r3, r6	@ ivtmp.4304, tmp270
	add	r6, sp, #16	@ tmp521,,
	mov	r5, r3	@ listltidx, ivtmp.4304
.L1209:
	add	r2, r4, r3	@ tmp280, pH264Ctx, ivtmp.4304
	ldr	r1, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	ip, r2, #26368	@ tmp282, tmp280,
	add	r5, r5, #1	@ listltidx, listltidx,
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, listltidx
	ldr	lr, [ip, #192]	@ tmp283, <variable>.DPB.fs_ltref
	str	lr, [r6, r3]	@ tmp283, fs_listlt
	add	r3, r3, #4	@ ivtmp.4304, ivtmp.4304,
	bhi	.L1209	@,
.L1208:
	mov	r0, r6	@, tmp521
	mov	r1, r5	@, listltidx
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	bl	qsort	@
	movw	r3, #49707	@ tmp288,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r6	@, tmp521
	mov	r2, r5	@, listltidx
	mov	r3, r7	@, D.35172
	mov	ip, #1	@ tmp291,
	stmia	sp, {r8, ip}	@ phole stm
	bl	GenPiclistfromFrmlist	@
.L1204:
	movw	lr, #20724	@ tmp294,
	mov	r2, #0	@ tmp293,
	ldr	r1, [r4, lr]	@ list0idx.4379, <variable>.CurrSlice.listXsize
	movw	r0, #20728	@ tmp292,
	str	r2, [r4, r0]	@ tmp293, <variable>.CurrSlice.listXsize
	cmp	r1, r2	@ list0idx.4379,
	bne	.L1210	@,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [ip, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r1, #2	@ <variable>.s32DecOrderOutput,
	bne	.L1371	@,
	movw	r3, #49707	@ tmp297,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ temp.4395, <variable>.CurrPic.structure
	cmp	r3, r2	@ temp.4395,
	beq	.L1376	@,
	movw	r2, #50112	@ tmp303,
	cmp	r3, #1	@ temp.4395,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r3, #27036	@ tmp306,
	addeq	ip, ip, #436	@ tmp305, <variable>.CurrPic.frame_store,
	addne	ip, ip, #472	@ tmp309, <variable>.CurrPic.frame_store,
	str	ip, [r4, r3]	@ tmp309, <variable>.pListX
.L1213:
	movw	r0, #20724	@ tmp310,
	mov	r1, #1	@ tmp311,
	str	r1, [r4, r0]	@ tmp311, <variable>.CurrSlice.listXsize
.L1210:
	mov	r0, #20736	@ tmp479,
	movw	ip, #20740	@ tmp483,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	movw	r0, #20728	@ tmp485,
	ldr	r2, [r4, ip]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r3, r3, #1	@ tmp480, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	ldr	ip, [r4, r0]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r1, r3	@ list0idx.4379, tmp480
	movcc	r3, r1	@ i.4404, list0idx.4379
	add	r2, r2, #1	@ prephitmp.4257, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r2, ip	@ prephitmp.4257, <variable>.CurrSlice.listXsize
	movcs	r2, ip	@ prephitmp.4257, <variable>.CurrSlice.listXsize
	cmp	r3, #32	@ i.4404,
	movw	r1, #20724	@ tmp482,
	str	r3, [r4, r1]	@ i.4404, <variable>.CurrSlice.listXsize
	str	r2, [r4, r0]	@ prephitmp.4257, <variable>.CurrSlice.listXsize
	bls	.L1255	@,
	b	.L1256	@
.L1192:
	movw	sl, #49707	@ tmp312,
	ldrb	r7, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r7, #0	@ <variable>.CurrPic.structure,
	beq	.L1216	@,
	movw	ip, #26632	@ tmp314,
	ldr	r5, [r0, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L1218	@,
	add	fp, r0, #26368	@ ivtmp.4376, pH264Ctx,
	mov	r5, #0	@ list0idx.4383,
	add	r3, fp, #128	@ ivtmp.4376, ivtmp.4376,
	mov	r2, r5	@ i.4423, list0idx.4383
	movw	r7, #50132	@ tmp531,
.L1239:
	ldr	r1, [r3, #0]	@ temp.4422, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4423, i.4423,
	add	r3, r3, #4	@ ivtmp.4376, ivtmp.4376,
	ldrb	sl, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	sl, #0	@ <variable>.is_used,
	beq	.L1238	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, r7]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r6, r0, r5, asl #2	@, tmp406,, list0idx.4383,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strge	r1, [r6, #-64]	@ temp.4422, fs_list0
	addge	r5, r5, #1	@ list0idx.4383, list0idx.4383,
.L1238:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4423
	bhi	.L1239	@,
.L1218:
	add	r7, sp, #144	@ tmp520,,
	mov	r1, r5	@, list0idx.4383
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_desc	@,
	mov	r0, r7	@, tmp520
	movt	r3, #:upper16:compare_fs_by_poc_desc	@,
	bl	qsort	@
	movw	ip, #26632	@ tmp412,
	ldr	r9, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r9, #0	@ <variable>.DPB.ref_frames_in_buffer,
	moveq	r6, r5	@ list0idx.4384, list0idx.4383
	beq	.L1241	@,
	add	r2, r4, #26368	@ ivtmp.4371, pH264Ctx,
	mov	r6, r5	@ list0idx.4384, list0idx.4383
	add	r3, r2, #128	@ ivtmp.4371, ivtmp.4371,
	movw	sl, #50132	@ tmp529,
	mov	r2, #0	@ i.4429,
.L1243:
	ldr	r1, [r3, #0]	@ temp.4425, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.4429, i.4429,
	add	r3, r3, #4	@ ivtmp.4371, ivtmp.4371,
	ldrb	fp, [r1, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	fp, #0	@ <variable>.is_used,
	beq	.L1242	@,
	ldr	r9, [r1, #524]	@ <variable>.poc, <variable>.poc
	add	r0, sp, #208	@,,
	ldr	lr, [r4, sl]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	add	r8, r0, r6, asl #2	@, tmp421,, list0idx.4384,
	cmp	lr, r9	@ <variable>.CurrPic.thispoc, <variable>.poc
	strlt	r1, [r8, #-64]	@ temp.4425, fs_list0
	addlt	r6, r6, #1	@ list0idx.4384, list0idx.4384,
.L1242:
	ldr	r1, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.4429
	bhi	.L1243	@,
	rsb	r9, r5, r6	@ prephitmp.4455, list0idx.4383, list0idx.4384
.L1241:
	mov	sl, r5, asl #2	@ tmp516, list0idx.4383,
	mov	r1, r9	@, prephitmp.4455
	add	r0, r7, sl	@, tmp520, tmp516
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_poc_asc	@,
	movt	r3, #:upper16:compare_fs_by_poc_asc	@,
	bl	qsort	@
	cmp	r5, #0	@ list0idx.4383,
	addeq	r8, sp, #80	@ tmp519,,
	beq	.L1244	@,
	ldr	r2, [r7, #0]	@ tmp431, fs_list0
	add	r8, sp, #80	@ tmp519,,
	add	r9, r8, r9, asl #2	@, ivtmp.4368, tmp519, prephitmp.4455,
	cmp	sl, #4	@ tmp516,
	sub	ip, sl, #4	@ tmp592, tmp516,
	mov	r3, #4	@ ivtmp.4366,
	str	r2, [r9], #4	@ tmp431, fs_list1
	ubfx	r2, ip, #2, #1	@ tmp593, tmp592,,
	beq	.L1244	@,
	cmp	r2, #0	@ tmp593,
	beq	.L1245	@,
	ldr	lr, [r7, #4]	@ tmp841, fs_list0
	mov	r3, #8	@ ivtmp.4366,
	cmp	sl, r3	@ tmp516, ivtmp.4366
	str	lr, [r9], #4	@ tmp841, fs_list1
	beq	.L1244	@,
.L1245:
	add	r1, r3, #4	@ tmp594, ivtmp.4366,
	ldr	r0, [r7, r3]	@ tmp659, fs_list0
	add	r3, r1, #4	@ ivtmp.4366, tmp594,
	mov	fp, r9	@ tmp595, ivtmp.4368
	ldr	lr, [r7, r1]	@ tmp662, fs_list0
	cmp	sl, r3	@ tmp516, ivtmp.4366
	str	r0, [fp], #4	@ tmp659, fs_list1
	str	lr, [r9, #4]	@ tmp662, fs_list1
	add	r9, fp, #4	@ ivtmp.4368, tmp595,
	bne	.L1245	@,
.L1244:
	cmp	r6, r5	@ list0idx.4384, list0idx.4383
	bls	.L1246	@,
	add	sl, r7, sl	@ ivtmp.4358, tmp520, tmp516
	add	lr, r7, r6, asl #2	@, D.44315, tmp520, list0idx.4384,
	rsb	r9, sl, lr	@ tmp585, ivtmp.4358, D.44315
	mov	r2, #4	@ ivtmp.4359,
	ldr	r5, [sl], #4	@ tmp437, fs_list0
	sub	r3, r9, #4	@ tmp586, tmp585,
	ubfx	r1, r3, #2, #1	@ tmp587, tmp586,,
	cmp	sl, lr	@ ivtmp.4358, D.44315
	str	r5, [r8, #0]	@ tmp437, fs_list1
	beq	.L1246	@,
	cmp	r1, #0	@ tmp587,
	beq	.L1247	@,
	ldr	fp, [sl], #4	@ tmp840, fs_list0
	mov	r2, #8	@ ivtmp.4359,
	cmp	sl, lr	@ ivtmp.4358, D.44315
	str	fp, [r8, #4]	@ tmp840, fs_list1
	beq	.L1246	@,
.L1247:
	mov	r1, sl	@ tmp588, ivtmp.4358
	ldr	r0, [sl, #4]	@ tmp668, fs_list0
	ldr	ip, [r1], #4	@ tmp665, fs_list0
	add	fp, r2, #4	@ tmp589, ivtmp.4359,
	add	sl, r1, #4	@ ivtmp.4358, tmp588,
	cmp	sl, lr	@ ivtmp.4358, D.44315
	str	ip, [r8, r2]	@ tmp665, fs_list1
	str	r0, [r8, fp]	@ tmp668, fs_list1
	add	r2, fp, #4	@ ivtmp.4359, tmp589,
	bne	.L1247	@,
.L1246:
	add	fp, r4, #26880	@ tmp669, pH264Ctx,
	movw	r9, #49707	@ tmp444,
	add	sl, fp, #156	@ ivtmp.4315, tmp669,
	mov	r1, r7	@, tmp520
	movw	r2, #20724	@ tmp438,
	movw	r7, #20728	@ tmp440,
	add	fp, fp, #288	@ D.35237, tmp669,
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r5, #0	@ tmp439,
	mov	r3, sl	@, ivtmp.4315
	str	r5, [r4, r2]	@ tmp439, <variable>.CurrSlice.listXsize
	mov	r2, r6	@, list0idx.4384
	str	r5, [r4, r7]	@ tmp439, <variable>.CurrSlice.listXsize
	add	r7, r4, #20480	@ tmp443, pH264Ctx,
	add	lr, r7, #244	@, tmp443,
	str	r5, [sp, #4]	@ tmp439,
	str	lr, [sp, #12]	@, %sfp
	str	lr, [sp, #0]	@,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r1, r8	@, tmp519
	mov	r2, r6	@, list0idx.4384
	mov	r3, fp	@, D.35237
	add	r9, r7, #248	@ D.35238, tmp443,
	str	r5, [sp, #4]	@ tmp439,
	str	r9, [sp, #0]	@ D.35238,
	bl	GenPiclistfromFrmlist	@
	movw	r1, #26636	@ tmp453,
	ldr	r6, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, r5	@ <variable>.DPB.ltref_frames_in_buffer,
	addeq	r7, sp, #16	@ tmp670,,
	beq	.L1249	@,
	add	r7, sp, #16	@ tmp670,,
	mov	r6, r5	@ listltidx.4420, ivtmp.4351
.L1250:
	add	ip, r4, r5	@ tmp456, pH264Ctx, ivtmp.4351
	ldr	r0, [r4, r1]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	add	r3, ip, #26368	@ tmp458, tmp456,
	add	r6, r6, #1	@ listltidx.4420, listltidx.4420,
	cmp	r0, r6	@ <variable>.DPB.ltref_frames_in_buffer, listltidx.4420
	ldr	r8, [r3, #192]	@ tmp459, <variable>.DPB.fs_ltref
	str	r8, [r7, r5]	@ tmp459, fs_listlt
	add	r5, r5, #4	@ ivtmp.4351, ivtmp.4351,
	bhi	.L1250	@,
.L1249:
	mov	r1, r6	@, listltidx.4420
	mov	r0, r7	@, tmp670
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_fs_by_lt_pic_idx_asc	@,
	movt	r3, #:upper16:compare_fs_by_lt_pic_idx_asc	@,
	movw	r5, #49707	@ tmp464,
	bl	qsort	@
	ldr	lr, [sp, #12]	@, %sfp
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4420
	mov	r1, r7	@, tmp670
	mov	r3, sl	@, ivtmp.4315
	str	lr, [sp, #0]	@,
	mov	r8, #1	@ tmp467,
	str	r8, [sp, #4]	@ tmp467,
	bl	GenPiclistfromFrmlist	@
	ldrb	r0, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r2, r6	@, listltidx.4420
	mov	r1, r7	@, tmp670
	mov	r3, fp	@, D.35237
	movw	r6, #20724	@ tmp472,
	str	r9, [sp, #0]	@ D.35238,
	str	r8, [sp, #4]	@ tmp467,
	bl	GenPiclistfromFrmlist	@
	movw	r2, #20728	@ tmp473,
	ldr	r1, [r4, r6]	@ list0idx.4379, <variable>.CurrSlice.listXsize
	ldr	r6, [r4, r2]	@ list0idx.4382, <variable>.CurrSlice.listXsize
	cmp	r6, r1	@ list0idx.4382, list0idx.4379
	beq	.L1377	@,
.L1251:
	cmp	r1, #0	@ list0idx.4379,
	bne	.L1210	@,
	movw	r2, #20728	@ tmp477,
	ldr	r0, [r4, r2]	@ <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
	cmp	r0, #0	@ <variable>.CurrSlice.listXsize,
	beq	.L1371	@,
	movw	r5, #20740	@ tmp506,
	mov	r3, r1	@ i.4404, list0idx.4379
	ldr	ip, [r4, r5]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	movw	r5, #20724	@ tmp503,
	str	r1, [r4, r5]	@ list0idx.4379, <variable>.CurrSlice.listXsize
	add	r1, ip, #1	@ tmp507, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r1, r0	@ tmp507, <variable>.CurrSlice.listXsize
	strls	r1, [r4, r2]	@, tmp507, <variable>.CurrSlice.listXsize
	strhi	r0, [r4, r2]	@, <variable>.CurrSlice.listXsize, <variable>.CurrSlice.listXsize
.L1255:
	add	r0, r3, #6720	@ tmp512, i.4404,
	add	r1, r3, #1	@ i.4404, i.4404,
	add	ip, r0, #38	@ tmp512, tmp512,
	cmp	r1, #32	@ i.4404,
	mov	r0, #0	@ tmp523,
	and	r3, r3, #1	@ tmp539, i.4404,
	add	r2, r4, ip, asl #2	@, tmp515, pH264Ctx, tmp512,
	add	r2, r2, #4	@ ivtmp.4289, tmp515,
	str	r0, [r2], #4	@ tmp523, <variable>.pListX
	bhi	.L1364	@,
	cmp	r3, #0	@ tmp539,
	beq	.L1257	@,
	add	r1, r1, #1	@ i.4404, i.4404,
	str	r0, [r2], #4	@ tmp523, <variable>.pListX
	cmp	r1, #32	@ i.4404,
	bhi	.L1364	@,
.L1257:
	add	r1, r1, #2	@ i.4404, i.4404,
	mov	r3, r2	@ tmp541, ivtmp.4289
	cmp	r1, #32	@ i.4404,
	str	r0, [r3], #4	@ tmp523, <variable>.pListX
	str	r0, [r2, #4]	@ tmp523, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.4289, tmp541,
	bls	.L1257	@,
.L1364:
	movw	r1, #20728	@ tmp489,
	ldr	r2, [r4, r1]	@ prephitmp.4257, <variable>.CurrSlice.listXsize
.L1256:
	cmp	r2, #32	@ prephitmp.4257,
	bhi	.L1258	@,
	add	r1, r2, #6720	@ tmp490, prephitmp.4257,
	add	r0, r4, #27136	@ D.44213, pH264Ctx,
	add	r3, r1, #38	@ tmp490, tmp490,
	add	r0, r0, #32	@ D.44213, D.44213,
	mov	r1, #0	@ tmp522,
	add	r4, r4, r3, asl #2	@, tmp493, pH264Ctx, tmp490,
	add	r4, r4, #4	@ ivtmp.4285, tmp493,
	add	r3, r4, #4	@ ivtmp.4285, ivtmp.4285,
	rsb	ip, r4, r0	@ tmp534, ivtmp.4285, D.44213
	cmp	r3, r0	@ ivtmp.4285, D.44213
	sub	r2, ip, #4	@ tmp535, tmp534,
	ubfx	r2, r2, #2, #1	@ tmp536, tmp535,,
	str	r1, [r4, #132]	@ tmp522, <variable>.pListX
	beq	.L1258	@,
	cmp	r2, #0	@ tmp536,
	beq	.L1259	@,
	str	r1, [r3, #132]	@ tmp522, <variable>.pListX
	add	r3, r3, #4	@ ivtmp.4285, ivtmp.4285,
	cmp	r3, r0	@ ivtmp.4285, D.44213
	beq	.L1258	@,
.L1259:
	add	r2, r3, #4	@ tmp537, ivtmp.4285,
	str	r1, [r3, #132]	@ tmp522, <variable>.pListX
	add	r3, r2, #4	@ ivtmp.4285, tmp537,
	cmp	r3, r0	@ ivtmp.4285, D.44213
	str	r1, [r2, #132]	@ tmp522, <variable>.pListX
	bne	.L1259	@,
.L1258:
	mov	r0, #0	@ D.35192,
.L1215:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1216:
	movw	r6, #26632	@ tmp316,
	ldr	lr, [r0, r6]	@ temp.4457, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4457,
	moveq	r7, lr	@ list0idx.4381, temp.4457
	beq	.L1220	@,
	add	r3, r0, #26368	@ ivtmp.4345, pH264Ctx,
	sub	r5, lr, #1	@ tmp579, temp.4457,
	and	r0, r5, #1	@ tmp581, tmp579,
	movw	r5, #50136	@ tmp527,
	ldr	r2, [r3, #128]!	@ temp.4399, <variable>.DPB.fs_ref
	ldrb	r8, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r8, #3	@ <variable>.is_reference,
	beq	.L1378	@,
.L1325:
	mov	r2, #1	@ i.4402,
	cmp	r2, lr	@ i.4402, temp.4457
	add	r3, r3, #4	@ ivtmp.4345, ivtmp.4345,
	bcs	.L1220	@,
	cmp	r0, #0	@ tmp581,
	beq	.L1222	@,
	ldr	r1, [r3, #0]	@ temp.4399, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1379	@,
.L1327:
	add	r2, r2, #1	@ i.4402, i.4402,
	add	r3, r3, #4	@ ivtmp.4345, ivtmp.4345,
	cmp	r2, lr	@ i.4402, temp.4457
	bcc	.L1222	@,
.L1220:
	add	lr, r4, #26880	@ ivtmp.4315, pH264Ctx,
	mov	r1, r7	@, list0idx.4381
	add	sl, lr, #156	@ ivtmp.4315, ivtmp.4315,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_desc	@,
	movt	r3, #:upper16:compare_pic_by_poc_desc	@,
	mov	r0, sl	@, ivtmp.4315
	bl	qsort	@
	movw	r3, #26632	@ tmp331,
	ldr	r8, [r4, r3]	@ temp.4456, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ temp.4456,
	moveq	r5, r7	@ list0idx, list0idx.4381
	beq	.L1224	@,
	add	r3, r4, #26368	@ ivtmp.4340, pH264Ctx,
	sub	r2, r8, #1	@ tmp574, temp.4456,
	and	r0, r2, #1	@ tmp576, tmp574,
	mov	r5, r7	@ list0idx, list0idx.4381
	ldr	r2, [r3, #128]!	@ temp.4405, <variable>.DPB.fs_ref
	movw	lr, #50136	@ tmp526,
	ldrb	ip, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1380	@,
.L1318:
	mov	r2, #1	@ i.4410,
	cmp	r2, r8	@ i.4410, temp.4456
	add	r3, r3, #4	@ ivtmp.4340, ivtmp.4340,
	bcs	.L1370	@,
	cmp	r0, #0	@ tmp576,
	beq	.L1226	@,
	ldr	r1, [r3, #0]	@ temp.4405, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1381	@,
.L1320:
	add	r2, r2, #1	@ i.4410, i.4410,
	add	r3, r3, #4	@ ivtmp.4340, ivtmp.4340,
	cmp	r2, r8	@ i.4410, temp.4456
	bcc	.L1226	@,
.L1370:
	rsb	r8, r7, r5	@ prephitmp.4259, list0idx.4381, list0idx
.L1224:
	mov	r6, r7, asl #2	@ D.35206, list0idx.4381,
	mov	r1, r8	@, prephitmp.4259
	add	r0, sl, r6	@, ivtmp.4315, D.35206
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_poc_asc	@,
	movt	r3, #:upper16:compare_pic_by_poc_asc	@,
	bl	qsort	@
	cmp	r7, #0	@ list0idx.4381,
	beq	.L1227	@,
	add	r8, r8, #6720	@ tmp346, prephitmp.4259,
	add	r1, r4, #26880	@ tmp351, pH264Ctx,
	add	r3, r1, #156	@ tmp351, tmp351,
	add	r8, r8, #38	@ tmp346, tmp346,
	cmp	r6, #4	@ D.35206,
	sub	r2, r6, #4	@ tmp570, D.35206,
	add	ip, r4, r8, asl #2	@, tmp349, pH264Ctx, tmp346,
	ldr	r0, [r3, #0]	@ tmp353, <variable>.pListX
	add	lr, ip, #4	@ ivtmp.4337, tmp349,
	mov	r3, #4	@ ivtmp.4334,
	ubfx	ip, r2, #2, #1	@ tmp571, tmp570,,
	add	r2, lr, #4	@ ivtmp.4337, ivtmp.4337,
	str	r0, [lr, #132]	@ tmp353, <variable>.pListX
	beq	.L1227	@,
	cmp	ip, #0	@ tmp571,
	beq	.L1228	@,
	add	ip, r4, #26880	@ tmp780, pH264Ctx,
	mov	r3, #8	@ ivtmp.4334,
	add	lr, ip, #160	@ tmp780, tmp780,
	cmp	r6, r3	@ D.35206, ivtmp.4334
	ldr	r1, [lr, #0]	@ tmp781, <variable>.pListX
	str	r1, [r2, #132]	@ tmp781, <variable>.pListX
	add	r2, r2, #4	@ ivtmp.4337, ivtmp.4337,
	beq	.L1227	@,
.L1228:
	add	r0, r4, r3	@ tmp630, pH264Ctx, ivtmp.4334
	add	r3, r3, #4	@ tmp572, ivtmp.4334,
	add	r1, r0, #26880	@ tmp631, tmp630,
	add	lr, r4, r3	@ tmp636, pH264Ctx, tmp572
	add	r0, lr, #26880	@ tmp637, tmp636,
	add	r3, r3, #4	@ ivtmp.4334, tmp572,
	ldr	ip, [r1, #156]	@ tmp633, <variable>.pListX
	add	lr, r2, #4	@ tmp573, ivtmp.4337,
	cmp	r6, r3	@ D.35206, ivtmp.4334
	str	ip, [r2, #132]	@ tmp633, <variable>.pListX
	add	r2, lr, #4	@ ivtmp.4337, tmp573,
	ldr	r0, [r0, #156]	@ tmp639, <variable>.pListX
	str	r0, [lr, #132]	@ tmp639, <variable>.pListX
	bne	.L1228	@,
.L1227:
	cmp	r5, r7	@ list0idx, list0idx.4381
	bls	.L1229	@,
	add	lr, r7, #6720	@ tmp354, list0idx.4381,
	rsb	r6, r7, r5	@ tmp361, list0idx.4381, list0idx
	add	r3, lr, #38	@ tmp354, tmp354,
	add	r0, r4, #27136	@ tmp363, pH264Ctx,
	mov	r6, r6, asl #2	@ D.44272, tmp361,
	add	r2, r0, #32	@ tmp363, tmp363,
	add	r1, r4, r3, asl #2	@, tmp357, pH264Ctx, tmp354,
	mov	r3, #4	@ ivtmp.4328,
	add	r1, r1, r3	@ ivtmp.4327, tmp357,
	cmp	r3, r6	@ ivtmp.4328, D.44272
	sub	ip, r6, #4	@ tmp564, D.44272,
	ldr	lr, [r1], #4	@ tmp365, <variable>.pListX
	ubfx	ip, ip, #2, #1	@ tmp565, tmp564,,
	str	lr, [r2, #0]	@ tmp365, <variable>.pListX
	beq	.L1229	@,
	cmp	ip, #0	@ tmp565,
	beq	.L1230	@,
	add	r3, r4, #27136	@ tmp776, pH264Ctx,
	ldr	r0, [r1], #4	@ tmp777, <variable>.pListX
	add	r2, r3, #36	@ tmp776, tmp776,
	mov	r3, #8	@ ivtmp.4328,
	cmp	r3, r6	@ ivtmp.4328, D.44272
	str	r0, [r2, #0]	@ tmp777, <variable>.pListX
	beq	.L1229	@,
.L1230:
	mov	r2, r1	@ tmp566, ivtmp.4327
	add	ip, r4, r3	@ tmp642, pH264Ctx, ivtmp.4328
	ldr	lr, [r2], #4	@ tmp645, <variable>.pListX
	add	ip, ip, #27136	@ tmp643, tmp642,
	add	r0, r3, #4	@ tmp567, ivtmp.4328,
	add	r3, r0, #4	@ ivtmp.4328, tmp567,
	add	r0, r4, r0	@ tmp648, pH264Ctx, tmp567
	str	lr, [ip, #32]	@ tmp645, <variable>.pListX
	add	r0, r0, #27136	@ tmp649, tmp648,
	ldr	ip, [r1, #4]	@ tmp651, <variable>.pListX
	cmp	r3, r6	@ ivtmp.4328, D.44272
	add	r1, r2, #4	@ ivtmp.4327, tmp566,
	str	ip, [r0, #32]	@ tmp651, <variable>.pListX
	bne	.L1230	@,
.L1229:
	movw	lr, #26636	@ tmp368,
	movw	r2, #20728	@ tmp366,
	ldr	r1, [r4, lr]	@ temp.4454, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp367,
	str	r5, [r4, r2]	@ list0idx, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ temp.4454,
	str	r5, [r4, r3]	@ list0idx, <variable>.CurrSlice.listXsize
	moveq	r6, r5	@ list0idx.4382, list0idx
	beq	.L1232	@,
	tst	r1, #1	@ temp.4454,
	add	r6, r4, #26368	@ ivtmp.4321, pH264Ctx,
	add	r3, r6, #192	@ ivtmp.4321, ivtmp.4321,
	mov	r2, #0	@ i.4417,
	bne	.L1236	@,
	ldr	r2, [r3, #0]	@ temp.4413, <variable>.DPB.fs_ltref
	ldrb	lr, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	lr, #3	@ <variable>.is_used,
	beq	.L1382	@,
.L1368:
	add	r3, r3, #4	@ ivtmp.4321, ivtmp.4321,
	mov	r2, #1	@ i.4417,
.L1236:
	ldr	r0, [r3, #0]	@ temp.4413, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	beq	.L1383	@,
.L1233:
	add	r2, r2, #1	@ tmp560, i.4417,
	mov	r6, r5	@ list0idx.4382, list0idx
	cmp	r2, r1	@ tmp560, temp.4454
	add	r0, r3, #4	@ tmp561, ivtmp.4321,
	bcs	.L1235	@,
.L1397:
	ldr	r3, [r3, #4]	@ temp.4413, <variable>.DPB.fs_ltref
	ldrb	r5, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #3	@ <variable>.is_used,
	beq	.L1384	@,
.L1307:
	mov	r5, r6	@ list0idx.4382, list0idx.4382
.L1369:
	add	r3, r0, #4	@ ivtmp.4321, tmp561,
	add	r2, r2, #1	@ i.4417, tmp560,
	ldr	r0, [r3, #0]	@ temp.4413, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #3	@ <variable>.is_used,
	bne	.L1233	@,
	b	.L1383	@
.L1193:
	movw	r1, #26632	@ tmp225,
	ldr	lr, [r4, r1]	@ temp.4411, <variable>.DPB.ref_frames_in_buffer
	cmp	lr, #0	@ temp.4411,
	moveq	r5, lr	@ list0idx.4439, temp.4411
	beq	.L1197	@,
	add	r3, r4, #26368	@ ivtmp.4298, pH264Ctx,
	sub	r2, lr, #1	@ tmp547, temp.4411,
	and	r0, r2, #1	@ tmp549, tmp547,
	ldr	r2, [r3, #128]!	@ D.35142, <variable>.DPB.fs_ref
	ldrb	r6, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1385	@,
.L1293:
	mov	r2, #1	@ i,
	cmp	r2, lr	@ i, temp.4411
	add	r3, r3, #4	@ ivtmp.4298, ivtmp.4298,
	bcs	.L1197	@,
	cmp	r0, #0	@ tmp549,
	beq	.L1199	@,
	ldr	r1, [r3, #0]	@ D.35142, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1386	@,
.L1295:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4298, ivtmp.4298,
	cmp	r2, lr	@ i, temp.4411
	bcc	.L1199	@,
.L1197:
	add	lr, r4, #26880	@ D.35153, pH264Ctx,
	mov	r1, r5	@, list0idx.4439
	add	r6, lr, #156	@ D.35153, D.35153,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_pic_num_desc	@,
	movt	r3, #:upper16:compare_pic_by_pic_num_desc	@,
	mov	r0, r6	@, D.35153
	bl	qsort	@
	movw	r0, #26636	@ tmp241,
	ldr	r1, [r4, r0]	@ D.35163, <variable>.DPB.ltref_frames_in_buffer
	movw	r3, #20724	@ tmp240,
	str	r5, [r4, r3]	@ list0idx.4439, <variable>.CurrSlice.listXsize
	cmp	r1, #0	@ D.35163,
	moveq	r0, r5	@ list0idx.4451, list0idx.4439
	beq	.L1201	@,
	add	r3, r4, #26368	@ ivtmp.4293, pH264Ctx,
	sub	r2, r1, #1	@ tmp542, D.35163,
	and	ip, r2, #1	@ tmp544, tmp542,
	ldr	r2, [r3, #192]!	@ D.35154, <variable>.DPB.fs_ltref
	ldrb	r0, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1387	@,
.L1286:
	mov	r2, #1	@ i.4385,
	cmp	r2, r1	@ i.4385, D.35163
	add	r3, r3, #4	@ ivtmp.4293, ivtmp.4293,
	bcs	.L1365	@,
	cmp	ip, #0	@ tmp544,
	beq	.L1203	@,
	ldr	r0, [r3, #0]	@ D.35154, <variable>.DPB.fs_ltref
	ldrb	ip, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1388	@,
.L1288:
	add	r2, r2, #1	@ i.4385, i.4385,
	add	r3, r3, #4	@ ivtmp.4293, ivtmp.4293,
	cmp	r2, r1	@ i.4385, D.35163
	bcc	.L1203	@,
.L1365:
	movw	ip, #20724	@ tmp254,
	ldr	r0, [r4, ip]	@ list0idx.4451, <variable>.CurrSlice.listXsize
	rsb	r1, r0, r5	@ prephitmp.4267, list0idx.4451, list0idx.4439
.L1201:
	add	r0, r6, r0, asl #2	@,, D.35153, list0idx.4451,
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	movw	r1, #20724	@ tmp258,
	str	r5, [r4, r1]	@ list0idx.4439, <variable>.CurrSlice.listXsize
	b	.L1204	@
.L1390:
	add	sl, r7, #6720	@ tmp322, list0idx.4381,
	ldr	r3, [r3, #4]	@ temp.4399, <variable>.DPB.fs_ref
	add	ip, sl, #38	@ tmp322, tmp322,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp328, temp.4399,
	add	sl, r4, ip, asl #2	@, tmp326, pH264Ctx, tmp322,
	cmp	r8, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strge	r1, [sl, #4]	@ tmp328, <variable>.pListX
	addge	r7, r7, #1	@ list0idx.4381, list0idx.4381,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1389	@,
.L1330:
	add	r2, r2, #1	@ i.4402, tmp582,
	add	r3, r0, #4	@ ivtmp.4345, tmp583,
	cmp	r2, lr	@ i.4402, temp.4457
	bcs	.L1220	@,
.L1222:
	ldr	r1, [r3, #0]	@ temp.4399, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp582, i.4402,
	add	r0, r3, #4	@ tmp583, ivtmp.4345,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1390	@,
	ldr	r3, [r3, #4]	@ temp.4399, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1330	@,
.L1389:
	add	ip, r7, #6720	@ tmp835, list0idx.4381,
	add	sl, r3, #400	@ tmp839, temp.4399,
	add	r6, ip, #38	@ tmp835, tmp835,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r6, asl #2	@, tmp837, pH264Ctx, tmp835,
	cmp	r8, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r7, r7, #1	@ list0idx.4381, list0idx.4381,
	strge	sl, [r1, #4]	@ tmp839, <variable>.pListX
	b	.L1330	@
.L1392:
	ldr	r6, [r1, #400]	@ tmp230,
	bic	ip, r6, #-16777216	@ tmp228, tmp230,
	bic	r6, ip, #255	@ tmp228, tmp228,
	cmp	r6, #65536	@ tmp228,
	bne	.L1198	@,
	add	ip, r5, #6720	@ tmp231, list0idx.4439,
	add	r5, r5, #1	@ list0idx.4439, list0idx.4439,
	add	r6, ip, #38	@ tmp231, tmp231,
	add	r1, r1, #400	@ tmp237, D.35142,
	add	ip, r4, r6, asl #2	@, tmp235, pH264Ctx, tmp231,
	str	r1, [ip, #4]	@ tmp237, <variable>.pListX
.L1198:
	ldr	r3, [r3, #4]	@ D.35142, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1391	@,
.L1298:
	add	r2, r2, #1	@ i, tmp550,
	add	r3, r0, #4	@ ivtmp.4298, tmp551,
	cmp	r2, lr	@ i, temp.4411
	bcs	.L1197	@,
.L1199:
	ldr	r1, [r3, #0]	@ D.35142, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp550, i,
	add	r0, r3, #4	@ tmp551, ivtmp.4298,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	beq	.L1392	@,
	ldr	r3, [r3, #4]	@ D.35142, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1298	@,
.L1391:
	ldr	ip, [r3, #400]	@ tmp736,
	bic	r6, ip, #-16777216	@ tmp737, tmp736,
	bic	r1, r6, #255	@ tmp737, tmp737,
	cmp	r1, #65536	@ tmp737,
	bne	.L1298	@,
	add	ip, r5, #6720	@ tmp739, list0idx.4439,
	add	r3, r3, #400	@ tmp743, D.35142,
	add	r6, ip, #38	@ tmp739, tmp739,
	add	r5, r5, #1	@ list0idx.4439, list0idx.4439,
	add	r1, r4, r6, asl #2	@, tmp741, pH264Ctx, tmp739,
	str	r3, [r1, #4]	@ tmp743, <variable>.pListX
	b	.L1298	@
.L1394:
	add	r9, r5, #6720	@ tmp337, list0idx,
	ldr	r3, [r3, #4]	@ temp.4405, <variable>.DPB.fs_ref
	add	ip, r9, #38	@ tmp337, tmp337,
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r9, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r1, #400	@ tmp343, temp.4405,
	add	ip, r4, ip, asl #2	@, tmp341, pH264Ctx, tmp337,
	cmp	r9, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	strlt	r1, [ip, #4]	@ tmp343, <variable>.pListX
	addlt	r5, r5, #1	@ list0idx, list0idx,
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	beq	.L1393	@,
.L1323:
	add	r2, r2, #1	@ i.4410, tmp577,
	add	r3, r0, #4	@ ivtmp.4340, tmp578,
	cmp	r2, r8	@ i.4410, temp.4456
	bcs	.L1370	@,
.L1226:
	ldr	r1, [r3, #0]	@ temp.4405, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp577, i.4410,
	add	r0, r3, #4	@ tmp578, ivtmp.4340,
	ldrb	r6, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #3	@ <variable>.is_reference,
	beq	.L1394	@,
	ldr	r3, [r3, #4]	@ temp.4405, <variable>.DPB.fs_ref
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #3	@ <variable>.is_reference,
	bne	.L1323	@,
.L1393:
	add	ip, r5, #6720	@ tmp806, list0idx,
	add	r6, r3, #400	@ tmp810, temp.4405,
	add	r1, ip, #38	@ tmp806, tmp806,
	ldr	r3, [r3, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	add	r1, r4, r1, asl #2	@, tmp808, pH264Ctx, tmp806,
	cmp	ip, r3	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r5, r5, #1	@ list0idx, list0idx,
	strlt	r6, [r1, #4]	@ tmp810, <variable>.pListX
	b	.L1323	@
.L1396:
	ldr	lr, [r0, #400]	@ tmp246,
	bic	lr, lr, #-16777216	@ tmp244, tmp246,
	bic	lr, lr, #255	@ tmp244, tmp244,
	cmp	lr, #256	@ tmp244,
	bne	.L1202	@,
	add	lr, r5, #6720	@ tmp247, list0idx.4439,
	add	r5, r5, #1	@ list0idx.4439, list0idx.4439,
	add	lr, lr, #38	@ tmp247, tmp247,
	add	r0, r0, #400	@ tmp253, D.35154,
	add	lr, r4, lr, asl #2	@, tmp251, pH264Ctx, tmp247,
	str	r0, [lr, #4]	@ tmp253, <variable>.pListX
.L1202:
	ldr	r3, [r3, #4]	@ D.35154, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	beq	.L1395	@,
.L1291:
	add	r2, r2, #1	@ i.4385, tmp545,
	add	r3, ip, #4	@ ivtmp.4293, tmp546,
	cmp	r2, r1	@ i.4385, D.35163
	bcs	.L1365	@,
.L1203:
	ldr	r0, [r3, #0]	@ D.35154, <variable>.DPB.fs_ltref
	add	r2, r2, #1	@ tmp545, i.4385,
	add	ip, r3, #4	@ tmp546, ivtmp.4293,
	ldrb	lr, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #3	@ <variable>.is_reference,
	beq	.L1396	@,
	ldr	r3, [r3, #4]	@ D.35154, <variable>.DPB.fs_ltref
	ldrb	r0, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1291	@,
.L1395:
	ldr	r0, [r3, #400]	@ tmp710,
	bic	lr, r0, #-16777216	@ tmp711, tmp710,
	bic	r0, lr, #255	@ tmp711, tmp711,
	cmp	r0, #256	@ tmp711,
	bne	.L1291	@,
	add	lr, r5, #6720	@ tmp713, list0idx.4439,
	add	r3, r3, #400	@ tmp717, D.35154,
	add	r0, lr, #38	@ tmp713, tmp713,
	add	r5, r5, #1	@ list0idx.4439, list0idx.4439,
	add	lr, r4, r0, asl #2	@, tmp715, pH264Ctx, tmp713,
	str	r3, [lr, #4]	@ tmp717, <variable>.pListX
	b	.L1291	@
.L1383:
	ldrb	lr, [r0, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	lr, #1	@ <variable>.frame.is_long_term,
	bne	.L1233	@,
	add	ip, r5, #6720	@ tmp372, list0idx,
	add	r6, r5, #6784	@ tmp379, list0idx,
	add	lr, ip, #38	@ tmp372, tmp372,
	add	ip, r6, #7	@ tmp379, tmp379,
	add	r2, r2, #1	@ tmp560, i.4417,
	add	r6, r5, #1	@ list0idx.4382, list0idx,
	add	lr, r4, lr, asl #2	@, tmp376, pH264Ctx, tmp372,
	add	r5, r4, ip, asl #2	@, tmp383, pH264Ctx, tmp379,
	cmp	r2, r1	@ tmp560, temp.4454
	add	r0, r0, #400	@ tmp378, temp.4413,
	str	r0, [lr, #4]	@ tmp378, <variable>.pListX
	str	r0, [r5, #4]	@ tmp378, <variable>.pListX
	add	r0, r3, #4	@ tmp561, ivtmp.4321,
	bcc	.L1397	@,
.L1235:
	movw	r1, #20724	@ tmp387,
	ldr	r5, [r4, r1]	@ list0idx, <variable>.CurrSlice.listXsize
	rsb	r1, r5, r6	@ prephitmp.4263, list0idx, list0idx.4382
.L1232:
	add	r0, sl, r5, asl #2	@,, ivtmp.4315, list0idx,
	mov	r2, #4	@,
	movw	r5, #20724	@ tmp391,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	bl	qsort	@
	ldr	ip, [r4, r5]	@ D.35164, <variable>.CurrSlice.listXsize
	mov	r2, #4	@,
	movw	r3, #:lower16:compare_pic_by_lt_pic_num_asc	@,
	add	r0, ip, #33	@ tmp392, D.35164,
	rsb	r1, ip, r6	@, D.35164, list0idx.4382
	movt	r3, #:upper16:compare_pic_by_lt_pic_num_asc	@,
	mla	r0, r0, r2, sl	@, tmp392,, ivtmp.4315
	bl	qsort	@
	movw	r3, #20728	@ tmp397,
	mov	r1, r6	@ list0idx.4379, list0idx.4382
	str	r6, [r4, r3]	@ list0idx.4382, <variable>.CurrSlice.listXsize
	str	r6, [r4, r5]	@ list0idx.4382, <variable>.CurrSlice.listXsize
.L1237:
	cmp	r6, #1	@ list0idx.4382,
	bls	.L1251	@,
	ldr	ip, [sl, #0]	@ tmp475, <variable>.pListX
	sub	r0, r6, #1	@ tmp552, list0idx.4382,
	ldr	r3, [sl, #132]	@ tmp476, <variable>.pListX
	and	r0, r0, #1	@ tmp554, tmp552,
	cmp	ip, r3	@ tmp475, tmp476
	bne	.L1210	@,
	mov	r3, #1	@ j,
	cmp	r3, r6	@ j, list0idx.4382
	add	sl, sl, #4	@ ivtmp.4315, ivtmp.4315,
	bcs	.L1366	@,
	cmp	r0, #0	@ tmp554,
	beq	.L1252	@,
	ldr	r2, [sl, #0]	@ tmp744, <variable>.pListX
	ldr	r0, [sl, #132]	@ tmp745, <variable>.pListX
	cmp	r2, r0	@ tmp744, tmp745
	bne	.L1210	@,
	mov	r3, #2	@ j,
	cmp	r3, r6	@ j, list0idx.4382
	add	sl, sl, #4	@ ivtmp.4315, ivtmp.4315,
	bcc	.L1252	@,
	b	.L1366	@
.L1398:
	ldr	r0, [sl, #4]	@ tmp677, <variable>.pListX
	add	sl, r2, #4	@ ivtmp.4315, tmp556,
	ldr	r2, [r2, #132]	@ tmp678, <variable>.pListX
	cmp	r0, r2	@ tmp677, tmp678
	bne	.L1210	@,
	cmp	r3, r6	@ j, list0idx.4382
	bcs	.L1366	@,
.L1252:
	ldr	ip, [sl, #0]	@ tmp672, <variable>.pListX
	add	r3, r3, #1	@ tmp555, j,
	ldr	r0, [sl, #132]	@ tmp673, <variable>.pListX
	add	r2, sl, #4	@ tmp556, ivtmp.4315,
	add	r3, r3, #1	@ j, tmp555,
	cmp	ip, r0	@ tmp672, tmp673
	beq	.L1398	@,
	b	.L1210	@
.L1384:
	ldrb	r5, [r3, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r5, #1	@ <variable>.frame.is_long_term,
	bne	.L1307	@,
	add	ip, r6, #6720	@ tmp764, list0idx.4382,
	add	r5, r6, #6784	@ tmp770, list0idx.4382,
	add	lr, ip, #38	@ tmp764, tmp764,
	add	ip, r5, #7	@ tmp770, tmp770,
	add	r3, r3, #400	@ tmp768, temp.4413,
	add	r5, r6, #1	@ list0idx.4382, list0idx.4382,
	add	lr, r4, lr, asl #2	@, tmp766, pH264Ctx, tmp764,
	add	ip, r4, ip, asl #2	@, tmp772, pH264Ctx, tmp770,
	str	r3, [lr, #4]	@ tmp768, <variable>.pListX
	str	r3, [ip, #4]	@ tmp768, <variable>.pListX
	b	.L1369	@
.L1376:
	movw	r1, #50112	@ tmp299,
	movw	r0, #27036	@ tmp298,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	add	r2, lr, #400	@ tmp301, <variable>.CurrPic.frame_store,
	str	r2, [r4, r0]	@ tmp301, <variable>.pListX
	b	.L1213	@
.L1378:
	ldr	sl, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	r8, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	r8, sl	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	sl, r4, #26880	@ tmp818, pH264Ctx,
	addge	r2, r2, #400	@ tmp819, temp.4399,
	addge	sl, sl, #156	@ tmp818, tmp818,
	movge	r7, #1	@ list0idx.4381,
	strge	r2, [sl, #0]	@ tmp819, <variable>.pListX
	b	.L1325	@
.L1385:
	ldr	ip, [r2, #400]	@ tmp718,
	bic	r1, ip, #-16777216	@ tmp719, tmp718,
	bic	r6, r1, #255	@ tmp719, tmp719,
	cmp	r6, #65536	@ tmp719,
	addeq	r6, r4, #26880	@ tmp724, pH264Ctx,
	addeq	r2, r2, #400	@ tmp725, D.35142,
	addeq	r6, r6, #156	@ tmp724, tmp724,
	moveq	r5, #1	@ list0idx.4439,
	streq	r2, [r6, #0]	@ tmp725, <variable>.pListX
	b	.L1293	@
.L1387:
	ldr	lr, [r2, #400]	@ tmp692,
	bic	r0, lr, #-16777216	@ tmp693, tmp692,
	bic	lr, r0, #255	@ tmp693, tmp693,
	cmp	lr, #256	@ tmp693,
	addeq	lr, r5, #6720	@ tmp694, list0idx.4439,
	addeq	r2, r2, #400	@ tmp699, D.35154,
	addeq	r5, r5, #1	@ list0idx.4439, list0idx.4439,
	addeq	lr, r4, lr, asl #2	@, tmp697, pH264Ctx, tmp694,
	streq	r2, [lr, #156]	@ tmp699, <variable>.pListX
	b	.L1286	@
.L1382:
	ldrb	r6, [r2, #401]	@ zero_extendqisi2	@ <variable>.frame.is_long_term, <variable>.frame.is_long_term
	cmp	r6, #1	@ <variable>.frame.is_long_term,
	bne	.L1368	@,
	add	r6, r5, #6720	@ tmp750, list0idx,
	add	lr, r5, #6784	@ tmp756, list0idx,
	add	r2, r2, #400	@ tmp755, temp.4413,
	add	r5, r5, #1	@ list0idx.4382, list0idx,
	add	ip, r4, r6, asl #2	@, tmp753, pH264Ctx, tmp750,
	add	r0, r4, lr, asl #2	@, tmp759, pH264Ctx, tmp756,
	str	r2, [ip, #156]	@ tmp755, <variable>.pListX
	str	r2, [r0, #32]	@ tmp755, <variable>.pListX
	b	.L1368	@
.L1380:
	ldr	r1, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	ldr	r6, [r2, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	cmp	r1, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	bge	.L1318	@,
	add	r1, r7, #6720	@ tmp786, list0idx.4381,
	add	r2, r2, #400	@ tmp790, temp.4405,
	add	r6, r1, #38	@ tmp786, tmp786,
	add	r5, r7, #1	@ list0idx, list0idx.4381,
	add	ip, r4, r6, asl #2	@, tmp788, pH264Ctx, tmp786,
	str	r2, [ip, #4]	@ tmp790, <variable>.pListX
	b	.L1318	@
.L1381:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addlt	r6, r5, #6720	@ tmp796, list0idx,
	addlt	r1, r1, #400	@ tmp801, temp.4405,
	addlt	r5, r5, r2	@ list0idx, list0idx,
	addlt	r6, r4, r6, asl #2	@, tmp799, pH264Ctx, tmp796,
	strlt	r1, [r6, #156]	@ tmp801, <variable>.pListX
	b	.L1320	@
.L1388:
	ldr	lr, [r0, #400]	@ tmp702,
	bic	ip, lr, #-16777216	@ tmp703, tmp702,
	bic	lr, ip, #255	@ tmp703, tmp703,
	cmp	lr, #256	@ tmp703,
	addeq	lr, r5, #6720	@ tmp704, list0idx.4439,
	addeq	r0, r0, #400	@ tmp709, D.35154,
	addeq	r5, r5, r2	@ list0idx.4439, list0idx.4439,
	addeq	lr, r4, lr, asl #2	@, tmp707, pH264Ctx, tmp704,
	streq	r0, [lr, #156]	@ tmp709, <variable>.pListX
	b	.L1288	@
.L1386:
	ldr	r0, [r1, #400]	@ tmp728,
	bic	ip, r0, #-16777216	@ tmp729, tmp728,
	bic	r6, ip, #255	@ tmp729, tmp729,
	cmp	r6, #65536	@ tmp729,
	addeq	r6, r5, #6720	@ tmp730, list0idx.4439,
	addeq	r1, r1, #400	@ tmp735, D.35142,
	addeq	r5, r5, r2	@ list0idx.4439, list0idx.4439,
	addeq	r6, r4, r6, asl #2	@, tmp733, pH264Ctx, tmp730,
	streq	r1, [r6, #156]	@ tmp735, <variable>.pListX
	b	.L1295	@
.L1379:
	ldr	r6, [r1, #416]	@ <variable>.frame.poc, <variable>.frame.poc
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.framepoc, <variable>.CurrPic.framepoc
	cmp	ip, r6	@ <variable>.CurrPic.framepoc, <variable>.frame.poc
	addge	r6, r7, #6720	@ tmp825, list0idx.4381,
	addge	r1, r1, #400	@ tmp830, temp.4399,
	addge	r7, r7, r2	@ list0idx.4381, list0idx.4381,
	addge	r6, r4, r6, asl #2	@, tmp828, pH264Ctx, tmp825,
	strge	r1, [r6, #156]	@ tmp830, <variable>.pListX
	b	.L1327	@
.L1366:
	movw	r3, #27168	@ tmp497,
	movw	r2, #27172	@ tmp499,
	ldr	ip, [r4, r3]	@ tmp_s, <variable>.pListX
	movw	r1, #20724	@ tmp502,
	ldr	r0, [r4, r2]	@ <variable>.pListX, <variable>.pListX
	ldr	r1, [r4, r1]	@ list0idx.4379, <variable>.CurrSlice.listXsize
	str	ip, [r4, r2]	@ tmp_s, <variable>.pListX
	str	r0, [r4, r3]	@ <variable>.pListX, <variable>.pListX
	b	.L1251	@
.L1371:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.35192,
	b	.L1215	@
.L1377:
	mov	r1, r6	@ list0idx.4379, list0idx.4382
	b	.L1237	@
	.fnend
	.size	InitListX, .-InitListX
	.align	2
	.global	DecList
	.type	DecList, %function
DecList:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #26628	@ tmp149,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, r3]	@ D.40468, <variable>.DPB.used_size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r6, #0	@ D.40468,
	mvneq	r5, #0	@ nearest_pic_id,
	beq	.L1402	@,
	movw	r1, #26432	@ tmp152,
	cmp	r6, #1	@ D.40468,
	ldr	r0, [r0, r1]	@ <variable>.DPB.fs, <variable>.DPB.fs
	movw	r2, #50132	@ tmp150,
	ldr	ip, [r4, r2]	@ curr_poc, <variable>.CurrPic.thispoc
	movls	r5, #0	@ nearest_pic_id,
	ldr	r1, [r0, #524]	@ nearest_poc, <variable>.poc
	bls	.L1402	@,
	sub	r6, r6, #1	@ tmp154, D.40468,
	rsb	r1, r1, ip	@ tmp153, nearest_poc, curr_poc
	cmp	r1, #0	@ tmp153,
	mov	r5, #0	@ nearest_pic_id,
	mov	r6, r6, asl #2	@ D.44459, tmp154,
	rsblt	r1, r1, #0	@ nearest_poc_diff, tmp153
	tst	r6, #4	@ D.44459,
	mov	r3, r5	@ ivtmp.4497, nearest_pic_id
	bne	.L1405	@,
	add	r2, r4, #26368	@ tmp189, pH264Ctx,
	add	r3, r2, #68	@ tmp189, tmp189,
	ldr	r2, [r3, #0]	@ D.40465, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ <variable>.poc, <variable>.poc
	rsb	r3, r0, ip	@ tmp192, <variable>.poc, curr_poc
	cmp	r3, #0	@ tmp192,
	rsblt	r3, r3, #0	@ nearest_poc_diff.4500, tmp192
	cmp	r3, r1	@ nearest_poc_diff.4500, nearest_poc_diff
	ldrlt	r5, [r2, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r3, r1	@ nearest_poc_diff.4500, nearest_poc_diff
	mov	r1, r3	@ nearest_poc_diff, nearest_poc_diff.4500
	mov	r3, #4	@ ivtmp.4497,
.L1405:
	add	r0, r4, r3	@ tmp155, pH264Ctx, ivtmp.4497
	add	r3, r3, #4	@ tmp177, ivtmp.4497,
	add	r2, r0, #26368	@ tmp157, tmp155,
	ldr	r0, [r2, #68]	@ D.40465, <variable>.DPB.fs
	ldr	r2, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r2, r2, ip	@ tmp158, <variable>.poc, curr_poc
	cmp	r2, #0	@ tmp158,
	rsblt	r2, r2, #0	@ nearest_poc_diff.4500, tmp158
	cmp	r2, r1	@ nearest_poc_diff.4500, nearest_poc_diff
	movge	r2, r1	@ nearest_poc_diff.4500, nearest_poc_diff
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	cmp	r3, r6	@ tmp177, D.44459
	add	r0, r4, r3	@ tmp180, pH264Ctx, tmp177
	add	r1, r0, #26368	@ tmp181, tmp180,
	beq	.L1402	@,
	ldr	r0, [r1, #68]	@ D.40465, <variable>.DPB.fs
	ldr	r1, [r0, #524]	@ <variable>.poc, <variable>.poc
	rsb	r1, r1, ip	@ tmp185, <variable>.poc, curr_poc
	cmp	r1, #0	@ tmp185,
	rsblt	r1, r1, #0	@ nearest_poc_diff.4500, tmp185
	cmp	r1, r2	@ nearest_poc_diff.4500, nearest_poc_diff.4500
	ldrlt	r5, [r0, #184]	@ nearest_pic_id, <variable>.fs_image.image_id
	movge	r1, r2	@ nearest_poc_diff.4500, nearest_poc_diff.4500
.L1422:
	add	r3, r3, #4	@ ivtmp.4497, tmp177,
	b	.L1405	@
.L1402:
	movw	r0, #20680	@ tmp163,
	movw	r2, #22312	@ tmp160,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	movw	ip, #22308	@ tmp161,
	str	r5, [r4, r2]	@ nearest_pic_id, <variable>.CurrSlice.picid_nearpoc
	mvn	r5, #0	@ tmp162,
	cmp	r3, #2	@ <variable>.CurrSlice.slice_type,
	str	r5, [r4, ip]	@ tmp162, <variable>.CurrSlice.picid_refidx0
	bne	.L1406	@,
	movw	ip, #20724	@ tmp165,
	movw	r1, #20728	@ tmp167,
	mov	r0, #0	@ tmp166,
	str	r0, [r4, ip]	@ tmp166, <variable>.CurrSlice.listXsize
	str	r0, [r4, r1]	@ tmp166, <variable>.CurrSlice.listXsize
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1406:
	mov	r0, r4	@, pH264Ctx
	bl	InitListX	@
	cmp	r0, #0	@,
	beq	.L1423	@,
.L1408:
	mvn	r0, #0	@ D.35384,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1423:
	mov	r0, r4	@, pH264Ctx
	bl	DumpList	@
	mov	r0, r4	@, pH264Ctx
	bl	ReorderListX	@
	mov	r0, r4	@, pH264Ctx
	bl	RepairList	@
	cmp	r0, #0	@,
	bne	.L1408	@,
	mov	r0, r4	@, pH264Ctx
	bl	FindMinRefIdx	@
	movw	r0, #27036	@ tmp169,
	ldr	r2, [r4, r0]	@ D.35392, <variable>.pListX
	movw	r3, #22308	@ tmp171,
	mov	r0, r4	@, pH264Ctx
	cmp	r2, #0	@ D.35392,
	ldrne	r2, [r2, #4]	@ <variable>.frame_store, <variable>.frame_store
	ldrne	r5, [r2, #184]	@ iftmp.604, <variable>.fs_image.image_id
	str	r5, [r4, r3]	@ iftmp.604, <variable>.CurrSlice.picid_refidx0
	bl	DumpList	@
	mov	r0, #0	@ D.35384,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DecList, .-DecList
	.align	2
	.global	H264_ArrangeVahbMem
	.type	H264_ArrangeVahbMem, %function
H264_ArrangeVahbMem:
	.fnstart
.LFB1648:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r5, r1	@ ImgWidth, ImgWidth
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r1, #36	@,
	mov	r0, sp	@,
	mov	r7, r2	@ ImgHeight, ImgHeight
	bl	__memzero	@
	ldr	r0, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	ip, #0	@ tmp151,
	mov	r1, #5	@ tmp164,
	mov	r6, sp	@ tmp182,
	ldr	r3, [r0, #20]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	strb	ip, [sp, #1]	@ tmp151, FspInstCfg.s32TfEnable
	strb	ip, [sp, #2]	@ tmp151, FspInstCfg.s32RprEnable
	str	r5, [sp, #28]	@ ImgWidth, FspInstCfg.s32DispFsWidth
	strb	r3, [sp, #0]	@ <variable>.s32DnrDispOutEnable, FspInstCfg.s32DispLoopEnable
	mov	r3, #0	@ tmp169,
	str	r5, [sp, #12]	@ ImgWidth, FspInstCfg.s32DecFsWidth
	str	r5, [sp, #20]	@ ImgWidth, FspInstCfg.s32TfFsWidth
	mov	r5, #0	@ tmp162,
	str	r7, [sp, #32]	@ ImgHeight, FspInstCfg.s32DispFsHeight
	str	r7, [sp, #16]	@ ImgHeight, FspInstCfg.s32DecFsHeight
	str	r7, [sp, #24]	@ ImgHeight, FspInstCfg.s32TfFsHeight
	ldr	r7, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r7, #24	@ <variable>.eCapLevel,
	movw	r7, #52840	@ tmp173,
	movne	ip, #26624	@ tmp157,
	ldrne	ip, [r4, ip]	@ <variable>.DPB.size, <variable>.DPB.size
	strb	r5, [sp, #6]	@ tmp162, FspInstCfg.s32ExpectedTfFsNum
	mov	r5, #1	@ tmp171,
	addne	ip, ip, #1	@ tmp160, <variable>.DPB.size,
	strb	r1, [sp, #7]	@ tmp164, FspInstCfg.s32ExpectedDispFsNum
	mov	r1, sp	@,
	uxtbne	ip, ip	@ iftmp.554, tmp160
	strb	ip, [sp, #5]	@ iftmp.554, FspInstCfg.s32ExpectedDecFsNum
	ldr	r2, [r0, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	cmp	r2, #24	@ <variable>.eCapLevel,
	strb	r3, [sp, #4]	@ tmp169, FspInstCfg.s32UserDec
	strb	r5, [sp, #3]	@ tmp171, FspInstCfg.s8SubLevelEnable
	ldrneb	r2, [sp, #64]	@ zero_extendqisi2	@ iftmp.555, PmvBlkNum
	moveq	r2, #1	@ iftmp.555,
	strb	r2, [sp, #8]	@ iftmp.555, FspInstCfg.s32ExpectedPmvNum
	bl	FSP_ConfigInstance	@
	cmp	r0, #0	@,
	beq	.L1432	@,
.L1429:
	mvn	r0, #19	@ D.34498,
.L1430:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L1432:
	ldr	lr, [r4, #0]	@ temp.4528, <variable>.pstExtraData
	add	r3, sp, #36	@,,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r2, [lr, #28]	@, <variable>.s32SyntaxMemSize
	ldr	r1, [lr, #24]	@, <variable>.s32SyntaxMemAddr
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	moveq	r0, r5	@ D.34498, tmp171
	beq	.L1430	@,
	b	.L1429	@
	.fnend
	.size	H264_ArrangeVahbMem, .-H264_ArrangeVahbMem
	.align	2
	.global	GetImagePara
	.type	GetImagePara, %function
GetImagePara:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	r3, #20692	@ tmp161,
	movw	r4, #13584	@ tmp163,
	ldr	r2, [r0, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	lr, [r0, r4]	@ <variable>.PPS, <variable>.PPS
	mov	r4, r1	@ pFrameStore, pFrameStore
	ldr	ip, [r1, #148]	@ prephitmp.4569, <variable>.fs_image.format
	mov	r1, #2208	@ tmp165,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #13580	@ tmp159,
	mla	r3, r1, r2, lr	@ tmp166, tmp165, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	bic	r1, ip, #768	@ prephitmp.4569, prephitmp.4569,
	movw	r2, #51340	@ tmp173,
	ldr	ip, [r5, r0]	@ <variable>.SPS, <variable>.SPS
	bic	r1, r1, #3	@ prephitmp.4569, prephitmp.4569,
	ldrb	r0, [r4, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	mov	lr, #4000	@ tmp169,
	ldr	r3, [r3, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	str	r1, [r4, #148]	@ prephitmp.4569, <variable>.fs_image.format
	ldr	r2, [r5, r2]	@ <variable>.frame_rate, <variable>.frame_rate
	mla	r3, lr, r3, ip	@ sps, tmp169, <variable>.seq_parameter_set_id, <variable>.SPS
	mov	r2, r2, asl #10	@ tmp175, <variable>.frame_rate,
	str	r2, [r4, #176]	@ tmp175, <variable>.fs_image.frame_rate
	cmp	r0, #3	@ <variable>.is_used,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.is_used
	b	.L1434	@
.L1438:
	.word	.L1435
	.word	.L1436
	.word	.L1437
	.word	.L1435
.L1435:
	ldrb	r6, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r6, #0	@ <variable>.frame.structure,
	bne	.L1439	@,
	ldr	r6, [r4, #536]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	mov	lr, #3072	@ prephitmp.4547,
	ldr	r7, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	cmp	r6, #0	@ <variable>.MbaffFrameFlag,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	moveq	r6, #512	@ prephitmp.4582,
	movne	r6, #768	@ prephitmp.4582,
	str	r7, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1441:
	ldr	r7, [r4, #452]	@ D.33404, <variable>.top_field.poc
	ldr	r2, [r4, #488]	@ D.33405, <variable>.bottom_field.poc
	cmp	r7, r2	@ D.33404, D.33405
	beq	.L1468	@,
	movgt	r7, #0	@, top_field_first
	movle	r7, #1	@, top_field_first
.L1452:
	movw	r2, #26420	@ tmp191,
	ldrb	r2, [r5, r2]	@ zero_extendqisi2	@ D.33419, <variable>.PicTimingSEI.pic_struct
	cmp	r2, #3	@ D.33419,
	moveq	r7, #4096	@ prephitmp.4551,
	beq	.L1454	@,
	cmp	r2, #4	@ D.33419,
	movne	r7, r7, asl #12	@ prephitmp.4551, top_field_first,
	moveq	r7, #0	@ prephitmp.4551,
.L1454:
	orr	r2, r6, lr	@ tmp192, prephitmp.4582, prephitmp.4547
	bic	lr, r1, #12288	@ tmp193, prephitmp.4569,
	orr	r1, r2, lr	@ tmp194, tmp192, tmp193
	and	r2, ip, #3	@ tmp195, pic_type,
	orr	lr, r1, r2	@ tmp196, tmp194, tmp195
	orr	ip, lr, r7	@ tmp197, tmp196, prephitmp.4551
	str	ip, [r4, #148]	@ tmp197, <variable>.fs_image.format
.L1434:
	ldrb	lr, [r3, #18]	@ zero_extendqisi2	@ D.33444, <variable>.frame_mbs_only_flag
	mov	r2, #1	@ tmp209,
	str	lr, [r4, #352]	@ D.33444, <variable>.fs_image.optm_inf.IsProgressiveFrm
	str	lr, [r4, #348]	@ D.33444, <variable>.fs_image.optm_inf.IsProgressiveSeq
	ldrb	ip, [r3, #22]	@ zero_extendqisi2	@ <variable>.vui_parameters_present_flag, <variable>.vui_parameters_present_flag
	cmp	ip, #0	@ <variable>.vui_parameters_present_flag,
	ldrne	ip, [r3, #68]	@ iftmp.477, <variable>.vui_seq_parameters.matrix_coefficients
	str	r2, [r4, #356]	@ tmp209, <variable>.fs_image.optm_inf.RealFrmRate
	str	ip, [r4, #360]	@ iftmp.477, <variable>.fs_image.optm_inf.MatrixCoef
	ldr	r1, [r5, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r3, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1458	@,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	cmp	r3, #0	@ <variable>.frame.structure,
	beq	.L1469	@,
.L1458:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r4	@, pFrameStore
	bl	ExchangePts	@
	movw	r3, #26384	@ tmp216,
	ldrsb	r0, [r5, r3]	@ <variable>.FramePackSEI.frame_packing_dec_ok, <variable>.FramePackSEI.frame_packing_dec_ok
	cmp	r0, #0	@ <variable>.FramePackSEI.frame_packing_dec_ok,
	beq	.L1459	@,
	movw	r1, #26400	@ tmp218,
	ldr	r3, [r5, r1]	@ D.33463, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	r3, #3	@ D.33463,
	moveq	r3, #1	@ tmp219,
	streq	r3, [r4, #288]	@ tmp219, <variable>.fs_image.eFramePackingType
	beq	.L1459	@,
	cmp	r3, #4	@ D.33463,
	moveq	r3, #2	@ tmp220,
	streq	r3, [r4, #288]	@ tmp220, <variable>.fs_image.eFramePackingType
	beq	.L1459	@,
	cmp	r3, #5	@ D.33463,
	moveq	r3, #3	@ tmp221,
	movne	r3, #0	@ tmp222,
	str	r3, [r4, #288]	@ tmp222, <variable>.fs_image.eFramePackingType
.L1459:
	movw	r2, #52840	@ tmp223,
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pstLogicFsImage,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	add	r1, r4, #8	@, pFrameStore,
	mov	r2, #392	@,
	bl	memcpy	@
	mov	r1, #0	@ tmp231,
	str	r1, [r5, #300]	@ tmp231, <variable>.ImageDnr.video_standard
	mov	r0, #1	@ tmp234,
	ldrb	r3, [r4, #400]	@ zero_extendqisi2	@ <variable>.frame.structure, <variable>.frame.structure
	strb	r0, [r5, #295]	@ tmp234, <variable>.ImageDnr.use_pic_qp_en
	cmp	r3, #0	@ <variable>.frame.structure,
	movne	r3, #4	@, iftmp.479,
	strb	r3, [r5, #288]	@ iftmp.479, <variable>.ImageDnr.pic_structure
	ldr	ip, [r4, #428]	@ D.33483, <variable>.frame.MaxQp
	strb	r0, [r5, #293]	@ tmp234, <variable>.ImageDnr.chroma_format_idc
	str	ip, [r5, #308]	@ D.33483, <variable>.ImageDnr.QP_U
	str	ip, [r5, #304]	@ D.33483, <variable>.ImageDnr.QP_Y
	str	ip, [r5, #312]	@ D.33483, <variable>.ImageDnr.QP_V
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L1469:
	cmp	r0, #3	@ <variable>.is_used,
	ldreq	r3, [r4, #148]	@ <variable>.fs_image.format, <variable>.fs_image.format
	biceq	r3, r3, #768	@ tmp215, <variable>.fs_image.format,
	streq	r3, [r4, #148]	@ tmp215, <variable>.fs_image.format
	b	.L1458	@
.L1437:
	ldr	ip, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	lr, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	r2, ip, #3	@ tmp198, <variable>.pic_type,
	orr	r1, r1, r2	@ tmp200, prephitmp.4569, tmp198
	orr	ip, r1, #2816	@ tmp201, tmp200,
	str	lr, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	ip, [r4, #148]	@ tmp201, <variable>.fs_image.format
	b	.L1434	@
.L1436:
	ldr	lr, [r4, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldr	r2, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	and	ip, lr, #3	@ tmp203, <variable>.pic_type,
	orr	lr, r1, ip	@ tmp205, prephitmp.4569, tmp203
	orr	r1, lr, #1792	@ tmp206, tmp205,
	str	r2, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
	str	r1, [r4, #148]	@ tmp206, <variable>.fs_image.format
	b	.L1434	@
.L1439:
	movw	sl, #52836	@ tmp180,
	ldr	r8, [r4, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	ldr	r2, [r5, sl]	@ D.33388, <variable>.out_error_thr
	cmp	r8, r2	@ <variable>.top_field.err_level, D.33388
	bhi	.L1470	@,
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.33388, <variable>.bottom_field.err_level
	bcc	.L1445	@,
.L1443:
	ldr	r6, [r4, #544]	@ <variable>.err_level, <variable>.err_level
	mov	lr, #3	@ valid_field,
	ldr	ip, [r4, #540]	@ pic_type, <variable>.pic_type
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	str	r6, [r4, #188]	@ <variable>.err_level, <variable>.fs_image.error_level
.L1446:
	ldrb	r6, [r4, #3]	@ zero_extendqisi2	@ D.33396, <variable>.mode_skip_flag
	cmp	r6, #1	@ D.33396,
	streq	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	moveq	lr, #2	@ valid_field,
	beq	.L1448	@,
	cmp	r6, #2	@ D.33396,
	streq	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	moveq	ip, r7	@ pic_type, pic_type
	moveq	lr, #1	@ valid_field,
.L1448:
	mov	lr, lr, asl #10	@ prephitmp.4547, valid_field,
	mov	r6, #768	@ prephitmp.4582,
	str	r7, [r4, #140]	@ pic_type, <variable>.fs_image.top_fld_type
	str	r2, [r4, #144]	@ <variable>.bottom_field.pic_type, <variable>.fs_image.bottom_fld_type
	b	.L1441	@
.L1445:
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	lr, #1	@ valid_field,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	str	r8, [r4, #188]	@ <variable>.top_field.err_level, <variable>.fs_image.error_level
	mov	ip, r7	@ pic_type, pic_type
	b	.L1446	@
.L1468:
	ldr	r2, [r4, #152]	@ <variable>.fs_image.image_width, <variable>.fs_image.image_width
	cmp	r2, #720	@ <variable>.fs_image.image_width,
	movne	r7, #1	@ top_field_first,
	bne	.L1452	@,
	ldr	r7, [r4, #156]	@ <variable>.fs_image.image_height, <variable>.fs_image.image_height
	subs	r7, r7, #480	@ top_field_first, <variable>.fs_image.image_height,
	movne	r7, #1	@ top_field_first
	b	.L1452	@
.L1470:
	ldr	sl, [r4, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	cmp	r2, sl	@ D.33388, <variable>.bottom_field.err_level
	bcc	.L1443	@,
	ldr	r2, [r4, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	mov	lr, #2	@ valid_field,
	str	sl, [r4, #188]	@ <variable>.bottom_field.err_level, <variable>.fs_image.error_level
	ldr	r7, [r4, #460]	@ pic_type, <variable>.top_field.pic_type
	mov	ip, r2	@ pic_type, <variable>.bottom_field.pic_type
	b	.L1446	@
	.fnend
	.size	GetImagePara, .-GetImagePara
	.align	2
	.global	RemoveFrameStoreOutDPB
	.type	RemoveFrameStoreOutDPB, %function
RemoveFrameStoreOutDPB:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r7, r1, #6592	@ tmp202, pos,
	add	r5, r7, #16	@ tmp201, tmp202,
	mov	r6, r1	@ pos, pos
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r3, [r0, r5, asl #2]	@ D.33176, <variable>.DPB.fs
	cmp	r3, #0	@ D.33176,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r3, [r3, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	movw	r1, #26904	@ tmp152,
	ldr	r2, [r0, r1]	@ D.33181, <variable>.APC.used_size
	movw	r1, #26904	@ tmp153,
	add	lr, r3, #6656	@ tmp144, <variable>.apc_idc,
	ldr	r3, [r4, r5, asl #2]	@ tmp158, <variable>.DPB.fs
	add	ip, lr, #4	@ tmp144, tmp144,
	cmp	r2, #0	@ D.33181,
	subne	r2, r2, #1	@ iftmp.466, D.33181,
	str	r2, [r4, r1]	@ iftmp.466, <variable>.APC.used_size
	add	r8, r0, ip, asl #2	@, tmp149, pH264Ctx, tmp144,
	mov	r0, #0	@ tmp151,
	str	r0, [r8, #4]	@ tmp151, <variable>.APC.is_used
	movw	r8, #52840	@ tmp154,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogic
	beq	.L1475	@,
	ldrsb	r2, [r0, #1]	@ <variable>.s32DispState, <variable>.s32DispState
	cmp	r2, #3	@ <variable>.s32DispState,
	beq	.L1476	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp165, <variable>.DPB.fs
	mov	r2, #0	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L1476:
	ldr	lr, [r4, r5, asl #2]	@ tmp171, <variable>.DPB.fs
	movw	r3, #52840	@ tmp167,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
.L1475:
	ldr	r3, [r4, r5, asl #2]	@ tmp175, <variable>.DPB.fs
	mov	ip, #0	@ tmp176,
	movw	r1, #26628	@ tmp188,
	strb	ip, [r3, #1]	@ tmp176, <variable>.is_used
	ldr	lr, [r4, r5, asl #2]	@ tmp180, <variable>.DPB.fs
	strb	ip, [lr, #4]	@ tmp176, <variable>.is_in_dpb
	ldr	r2, [r4, r5, asl #2]	@ tmp185, <variable>.DPB.fs
	strb	ip, [r2, #2]	@ tmp176, <variable>.is_reference
	ldr	r0, [r4, r1]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r0, #1	@ D.33197, <variable>.DPB.used_size,
	cmp	r6, ip	@ pos, D.33197
	bcs	.L1477	@,
	add	r7, r7, #17	@ tmp190, tmp202,
	add	r1, r6, #1	@ i, pos,
	cmp	r1, ip	@ i, D.33197
	mvn	r2, r6	@ tmp204, pos
	add	r7, r4, r7, asl #2	@, ivtmp.4617, pH264Ctx, tmp190,
	add	r6, r2, ip	@ tmp203, tmp204, D.33197
	and	r6, r6, #1	@ tmp205, tmp203,
	add	r2, r7, #4	@ ivtmp.4617, ivtmp.4617,
	ldr	r0, [r7, #0]	@ tmp193, <variable>.DPB.fs
	str	r0, [r7, #-4]	@ tmp193, <variable>.DPB.fs
	bcs	.L1477	@,
	cmp	r6, #0	@ tmp205,
	beq	.L1478	@,
	ldr	lr, [r2, #0]	@ tmp214, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	cmp	r1, ip	@ i, D.33197
	str	lr, [r2, #-4]	@ tmp214, <variable>.DPB.fs
	add	r2, r2, #4	@ ivtmp.4617, ivtmp.4617,
	bcs	.L1477	@,
.L1478:
	ldr	r0, [r2, #0]	@ tmp211, <variable>.DPB.fs
	add	r1, r1, #2	@ i, i,
	ldr	r3, [r2, #4]	@ tmp213, <variable>.DPB.fs
	cmp	r1, ip	@ i, D.33197
	mov	lr, r2	@ tmp207, ivtmp.4617
	str	r0, [r2, #-4]	@ tmp211, <variable>.DPB.fs
	str	r3, [lr], #4	@ tmp213, <variable>.DPB.fs
	add	r2, lr, #4	@ ivtmp.4617, tmp207,
	bcc	.L1478	@,
.L1477:
	movw	lr, #26628	@ tmp197,
	add	r0, ip, #6592	@ tmp194, D.33197,
	ldr	r2, [r4, lr]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	add	ip, r0, #16	@ tmp194, tmp194,
	mov	r3, #0	@ tmp196,
	sub	r1, r2, #1	@ tmp200, <variable>.DPB.used_size,
	str	r3, [r4, ip, asl #2]	@ tmp196, <variable>.DPB.fs
	str	r1, [r4, lr]	@ tmp200, <variable>.DPB.used_size
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	RemoveFrameStoreOutDPB, .-RemoveFrameStoreOutDPB
	.align	2
	.global	RemoveUnUsedFrameStore
	.type	RemoveUnUsedFrameStore, %function
RemoveUnUsedFrameStore:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r0, #0	@ pH264Ctx, pH264Ctx
	.pad #12
	sub	sp, sp, #12	@,,
	mvneq	r0, #0	@ D.33211,
	beq	.L1488	@,
	movw	r3, #26628	@ tmp144,
	ldr	sl, [r4, r3]	@ k, <variable>.DPB.used_size
	cmp	sl, #0	@ k,
	beq	.L1489	@,
	movw	r6, #6608	@ tmp185,
	sub	r1, sl, #1	@ tmp190, k,
	ldr	r7, [r4, r6, asl #2]	@ tmp149, <variable>.DPB.fs
	movw	r8, #52840	@ tmp187,
	and	r2, r1, #1	@, tmp190,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	str	r2, [sp, #4]	@, %sfp
	mov	r5, #0	@ j,
	ldr	r1, [r7, #508]	@, <variable>.logic_fs_id
	mvn	fp, #0	@ tmp188,
	bl	FSP_GetLogicFs	@
	mov	r9, r5	@ tmp189, j
	cmp	r0, #0	@ pstLogicFs
	beq	.L1527	@,
	ldrsh	r7, [r0, #0]	@ tmp213,* pstLogicFs
	cmp	r7, #0	@ tmp213,
	bne	.L1499	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	ldrb	lr, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	lr, #0	@ <variable>.is_reference,
	bne	.L1500	@,
	ldrsb	r2, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r2, #0	@ <variable>.s32IsRef,
	beq	.L1500	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	mov	r2, r5	@, tmp189
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
.L1500:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	r1, [r4, r6, asl #2]	@ tmp217, <variable>.DPB.fs
	strb	r9, [r1, #2]	@ tmp189, <variable>.is_reference
.L1527:
	ldr	ip, [r4, r6, asl #2]	@ temp.4663, <variable>.DPB.fs
	ldr	r3, [ip, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp221
	moveq	r0, #1	@, tmp221
	strb	r0, [ip, #4]	@ tmp221, <variable>.is_in_dpb
.L1499:
	ldr	r3, [r4, r6, asl #2]	@ temp.4667, <variable>.DPB.fs
	ldrb	r7, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r7, #0	@ <variable>.is_reference,
	beq	.L1518	@,
.L1501:
	mov	r5, #1	@ j,
.L1519:
	mov	r7, #1	@ i,
	cmp	sl, r7	@ k, i
	bls	.L1489	@,
	ldr	r6, [sp, #4]	@, %sfp
	cmp	r6, #0	@,
	beq	.L1495	@,
	add	r1, r5, #6592	@ tmp232, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r1, #16	@ tmp232, tmp232,
	ldr	ip, [r4, r6, asl #2]	@ tmp233, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1534	@,
	ldrsh	lr, [r0, #0]	@ tmp239,* pstLogicFs
	cmp	lr, #0	@ tmp239,
	beq	.L1535	@,
.L1510:
	ldr	r3, [r4, r6, asl #2]	@ temp.4667, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1512	@,
.L1525:
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1512	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1512	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	add	r7, r7, #1	@ i, tmp193,
	bl	RemoveFrameStoreOutDPB	@
	cmp	sl, r7	@ k, i
	bls	.L1489	@,
.L1495:
	add	r6, r5, #6592	@ tmp197, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r6, #16	@ tmp197, tmp197,
	ldr	ip, [r4, r6, asl #2]	@ tmp198, <variable>.DPB.fs
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1490	@,
	ldrsh	lr, [r0, #0]	@ tmp151,* pstLogicFs
	cmp	lr, #0	@ tmp151,
	bne	.L1491	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1492	@,
	ldrsb	r1, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	r1, #0	@ <variable>.s32IsRef,
	bne	.L1536	@,
.L1492:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp164, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp189, <variable>.is_reference
	ldr	r3, [r4, r6, asl #2]	@ temp.4663, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, #1	@ <variable>.eFoState,
	movne	r0, #0	@, tmp170
	moveq	r0, #1	@, tmp170
	strb	r0, [r3, #4]	@ tmp170, <variable>.is_in_dpb
.L1491:
	ldr	r3, [r4, r6, asl #2]	@ temp.4667, <variable>.DPB.fs
	ldrb	r6, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r6, #0	@ <variable>.is_reference,
	bne	.L1493	@,
	ldrb	r2, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	bne	.L1493	@,
	ldr	ip, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	ip, #1	@ <variable>.eFoState,
	beq	.L1493	@,
	strb	r2, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, j
	bl	RemoveFrameStoreOutDPB	@
	b	.L1494	@
.L1493:
	add	r5, r5, #1	@ j, j,
.L1494:
	add	r2, r5, #6592	@ tmp206, j,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	add	r6, r2, #16	@ tmp206, tmp206,
	add	r7, r7, #1	@ tmp193, i,
	ldr	r3, [r4, r6, asl #2]	@ tmp207, <variable>.DPB.fs
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetLogicFs	@
	cmp	r0, #0	@ pstLogicFs
	beq	.L1528	@,
	ldrsh	r2, [r0, #0]	@ tmp258,* pstLogicFs
	cmp	r2, #0	@ tmp258,
	bne	.L1510	@,
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1511	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L1537	@,
.L1511:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	ip, [r4, r6, asl #2]	@ tmp262, <variable>.DPB.fs
	strb	r9, [ip, #2]	@ tmp189, <variable>.is_reference
.L1528:
	ldr	r0, [r4, r6, asl #2]	@ temp.4663, <variable>.DPB.fs
	ldr	r3, [r0, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r3, #1	@ <variable>.eFoState,
	movne	r1, #0	@, tmp266
	moveq	r1, #1	@, tmp266
	strb	r1, [r0, #4]	@ tmp266, <variable>.is_in_dpb
	ldr	r3, [r4, r6, asl #2]	@ temp.4667, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	beq	.L1525	@,
.L1512:
	add	r7, r7, #1	@ i, tmp193,
	add	r5, r5, #1	@ j, j,
	cmp	sl, r7	@ k, i
	bhi	.L1495	@,
.L1489:
	mov	r0, #0	@ D.33211,
.L1488:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1490:
	ldr	r1, [r4, r6, asl #2]	@ temp.4664, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	lr, #0	@, tmp175
	moveq	lr, #1	@, tmp175
	strb	lr, [r1, #4]	@ tmp175, <variable>.is_in_dpb
	b	.L1491	@
.L1518:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r1, #0	@ <variable>.is_in_dpb,
	bne	.L1501	@,
	ldr	lr, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	lr, #1	@ <variable>.eFoState,
	beq	.L1501	@,
	strb	r1, [r3, #1]	@ <variable>.is_in_dpb, <variable>.is_used
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	b	.L1519	@
.L1535:
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1505	@,
	ldrsb	lr, [r0, #0]	@ <variable>.s32IsRef, <variable>.s32IsRef
	cmp	lr, #0	@ <variable>.s32IsRef,
	bne	.L1538	@,
.L1505:
	str	fp, [r3, #508]	@ tmp188, <variable>.logic_fs_id
	ldr	r3, [r4, r6, asl #2]	@ tmp243, <variable>.DPB.fs
	strb	r9, [r3, #2]	@ tmp189, <variable>.is_reference
	ldr	r1, [r4, r6, asl #2]	@ temp.4663, <variable>.DPB.fs
	ldr	r0, [r1, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r0, #1	@ <variable>.eFoState,
	movne	ip, #0	@, tmp247
	moveq	ip, #1	@, tmp247
	strb	ip, [r1, #4]	@ tmp247, <variable>.is_in_dpb
	b	.L1510	@
.L1536:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	b	.L1492	@
.L1537:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	b	.L1511	@
.L1534:
	ldr	r3, [r4, r6, asl #2]	@ temp.4664, <variable>.DPB.fs
	ldr	r2, [r3, #528]	@ <variable>.eFoState, <variable>.eFoState
	cmp	r2, r7	@ <variable>.eFoState,
	movne	r0, #0	@, tmp238
	moveq	r0, #1	@, tmp238
	strb	r0, [r3, #4]	@ tmp238, <variable>.is_in_dpb
	b	.L1510	@
.L1538:
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FSP_SetRef	@
	ldr	r3, [r4, r6, asl #2]	@ prephitmp.4647, <variable>.DPB.fs
	b	.L1505	@
	.fnend
	.size	RemoveUnUsedFrameStore, .-RemoveUnUsedFrameStore
	.align	2
	.global	UnMarkFrameStoreRef
	.type	UnMarkFrameStoreRef, %function
UnMarkFrameStoreRef:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ prephitmp.4685, <variable>.is_used
	tst	r3, #1	@ prephitmp.4685,
	beq	.L1540	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp142,
	strb	r2, [r1, #438]	@ tmp142, <variable>.top_field.is_short_term
	and	ip, ip, #2	@ tmp140, <variable>.is_reference,
	strb	r2, [r1, #437]	@ tmp142, <variable>.top_field.is_long_term
	strb	ip, [r1, #2]	@ tmp140, <variable>.is_reference
.L1540:
	tst	r3, #2	@ prephitmp.4685,
	beq	.L1541	@,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	mov	r2, #0	@ tmp151,
	strb	r2, [r1, #474]	@ tmp151, <variable>.bottom_field.is_short_term
	and	ip, ip, #1	@ tmp149, <variable>.is_reference,
	strb	r2, [r1, #473]	@ tmp151, <variable>.bottom_field.is_long_term
	strb	ip, [r1, #2]	@ tmp149, <variable>.is_reference
.L1541:
	cmp	r3, #3	@ prephitmp.4685,
	mov	r2, #0	@ tmp161,
	moveq	r3, #0	@ tmp155,
	streqb	r3, [r1, #2]	@ tmp155, <variable>.is_reference
	streqb	r3, [r1, #402]	@ tmp155, <variable>.frame.is_short_term
	streqb	r3, [r1, #401]	@ tmp155, <variable>.frame.is_long_term
	movw	r3, #52840	@ tmp163,
	strb	r2, [r1, #2]	@ tmp161, <variable>.is_reference
	ldr	r1, [r1, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r0, r3]	@, <variable>.ChanID
	b	FSP_SetRef	@
	.fnend
	.size	UnMarkFrameStoreRef, .-UnMarkFrameStoreRef
	.align	2
	.global	SimpleSlideDPB
	.type	SimpleSlideDPB, %function
SimpleSlideDPB:
	.fnstart
.LFB1645:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #26628	@ tmp134,
	mov	r1, #26624	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r2, [r0, ip]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	ldr	r3, [r0, r1]	@ <variable>.DPB.size, <variable>.DPB.size
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r2, r3	@ <variable>.DPB.used_size, <variable>.DPB.size
	bcs	.L1548	@,
.L1545:
	movw	r3, #50128	@ tmp143,
	mov	r1, #0	@ tmp141,
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r0, #49708	@ tmp140,
	strb	r1, [r4, r0]	@ tmp141, <variable>.CurrPic.is_long_term
	cmp	r2, r1	@ <variable>.CurrPic.nal_ref_idc,
	movwne	r2, #49709	@ tmp145,
	movne	r0, #1	@ tmp146,
	strneb	r0, [r4, r2]	@ tmp146, <variable>.CurrPic.is_short_term
	ldmfd	sp!, {r4, pc}	@
.L1548:
	movw	lr, #26432	@ tmp138,
	ldr	r1, [r0, lr]	@, <variable>.DPB.fs
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	RemoveFrameStoreOutDPB	@
	b	.L1545	@
	.fnend
	.size	SimpleSlideDPB, .-SimpleSlideDPB
	.align	2
	.global	SlidingWinMark
	.type	SlidingWinMark, %function
SlidingWinMark:
	.fnstart
.LFB1641:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #17540	@ tmp140,
	movw	r2, #26636	@ tmp141,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	ip, #26632	@ tmp139,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r0, r3]	@ <variable>.CurrSPS.num_ref_frames, <variable>.CurrSPS.num_ref_frames
	ldr	r0, [r0, r2]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	ldr	r2, [r4, ip]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	rsb	r3, r0, r1	@ tmp142, <variable>.DPB.ltref_frames_in_buffer, <variable>.CurrSPS.num_ref_frames
	cmp	r2, r3	@ <variable>.DPB.ref_frames_in_buffer, tmp142
	ldmnefd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	movw	r0, #26628	@ tmp146,
	ldr	sl, [r4, r0]	@ D.34056, <variable>.DPB.used_size
	cmp	sl, #0	@ D.34056,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	add	r6, r4, #26368	@ ivtmp.4750, pH264Ctx,
	sub	r8, sl, #1	@ tmp149, D.34056,
	and	r8, r8, #1	@ tmp151, tmp149,
	ldr	r5, [r6, #64]!	@ D.34049, <variable>.DPB.fs
	ldrb	r1, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1566	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.34056, i
	add	r6, r6, #4	@ ivtmp.4750, ivtmp.4750,
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1570:
	cmp	r8, #0	@ tmp151,
	beq	.L1552	@,
	ldr	r5, [r6, #0]	@ D.34049, <variable>.DPB.fs
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L1567	@,
.L1557:
	add	r7, r7, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.4750, ivtmp.4750,
	cmp	sl, r7	@ D.34056, i
	bhi	.L1552	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1551:
	ldr	r5, [r6, #4]	@ D.34049, <variable>.DPB.fs
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	bne	.L1568	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4750, tmp153,
	cmp	sl, r7	@ D.34056, i
	bls	.L1569	@,
.L1552:
	ldr	r5, [r6, #0]	@ D.34049, <variable>.DPB.fs
	add	r7, r7, #1	@ tmp152, i,
	add	r8, r6, #4	@ tmp153, ivtmp.4750,
	ldrb	ip, [r5, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #0	@ <variable>.is_reference,
	beq	.L1551	@,
	mov	r0, r5	@, D.34049
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1551	@,
.L1565:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, D.34049
	bl	UnMarkFrameStoreRef	@
	mov	r0, r4	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	UpdateReflist	@
.L1568:
	mov	r0, r5	@, D.34049
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1565	@,
	add	r7, r7, #1	@ i, tmp152,
	add	r6, r8, #4	@ ivtmp.4750, tmp153,
	cmp	sl, r7	@ D.34056, i
	bhi	.L1552	@,
.L1569:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1566:
	mov	r0, r5	@, D.34049
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	bne	.L1565	@,
	mov	r7, #1	@ i,
	cmp	sl, r7	@ D.34056, i
	add	r6, r6, #4	@ ivtmp.4750, ivtmp.4750,
	bhi	.L1570	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L1567:
	mov	r0, r5	@, D.34049
	bl	ShortTermRefFlg	@
	cmp	r0, #0	@,
	beq	.L1557	@,
	b	.L1565	@
	.fnend
	.size	SlidingWinMark, .-SlidingWinMark
	.align	2
	.global	UnMarkAllSTRef
	.type	UnMarkAllSTRef, %function
UnMarkAllSTRef:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r7, #26632	@ tmp136,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.ref_frames_in_buffer,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	add	r6, r0, #26368	@ ivtmp.4779, pH264Ctx,
	mov	r4, #0	@ i,
	add	r6, r6, #128	@ ivtmp.4779, ivtmp.4779,
.L1573:
	mov	r0, r5	@, pH264Ctx
	ldr	r1, [r6], #4	@, <variable>.DPB.fs_ref
	bl	UnMarkFrameStoreRef	@
	ldr	r0, [r5, r7]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r4, r4, #1	@ i, i,
	cmp	r0, r4	@ <variable>.DPB.ref_frames_in_buffer, i
	bhi	.L1573	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	UnMarkAllSTRef, .-UnMarkAllSTRef
	.align	2
	.global	UpdateMaxLTFrmIdx
	.type	UpdateMaxLTFrmIdx, %function
UpdateMaxLTFrmIdx:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r7, #26636	@ tmp139,
	ldr	r3, [r0, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	movw	r8, #26640	@ tmp138,
	mov	r2, r1	@ max_long_term_frame_idx_plus1, max_long_term_frame_idx_plus1
	cmp	r3, #0	@ <variable>.DPB.ltref_frames_in_buffer,
	str	r1, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r4, r0, #26368	@ ivtmp.4813, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #192	@ ivtmp.4813, ivtmp.4813,
	b	.L1579	@
.L1578:
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	ldmlsfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1581:
	ldr	r2, [r6, r8]	@ max_long_term_frame_idx_plus1, <variable>.DPB.max_long_term_pic_idx
.L1579:
	ldr	r1, [r4, #0]	@ D.33139, <variable>.DPB.fs_ltref
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4813, ivtmp.4813,
	ldr	r0, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r0, r2	@ <variable>.long_term_frame_idx, max_long_term_frame_idx_plus1
	bcc	.L1578	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	cmp	r1, r5	@ <variable>.DPB.ltref_frames_in_buffer, i
	bhi	.L1581	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	UpdateMaxLTFrmIdx, .-UpdateMaxLTFrmIdx
	.align	2
	.global	UnMarkLTRef
	.type	UnMarkLTRef, %function
UnMarkLTRef:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r3, #0	@ <variable>.structure,
	beq	.L1583	@,
	movw	r1, #26636	@ tmp153,
	ldr	r7, [r0, r1]	@ D.32955, <variable>.DPB.ltref_frames_in_buffer
	cmp	r7, #0	@ D.32955,
	beq	.L1593	@,
	add	r4, r0, #26368	@ ivtmp.4858, pH264Ctx,
	sub	r5, r7, #1	@ tmp238, D.32955,
	and	r6, r5, #1	@ tmp240, tmp238,
	mov	ip, #0	@ i,
	ldr	r1, [r4, #192]!	@ temp.4862, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4863, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4863,
	beq	.L1603	@,
	ldr	r8, [r1, #436]	@ tmp261,
	bic	r8, r8, #-16777216	@ tmp262, tmp261,
	bic	r8, r8, #255	@ tmp262, tmp262,
	cmp	r8, #256	@ tmp262,
	beq	.L1626	@,
.L1603:
	tst	r3, #2	@ temp.4863,
	beq	.L1604	@,
	ldr	r3, [r1, #472]	@ tmp265,
	bic	r3, r3, #-16777216	@ tmp266, tmp265,
	bic	r3, r3, #255	@ tmp266, tmp266,
	cmp	r3, #256	@ tmp266,
	beq	.L1627	@,
.L1604:
	mov	ip, #1	@ i,
	cmp	r7, ip	@ D.32955, i
	add	r4, r4, #4	@ ivtmp.4858, ivtmp.4858,
	bls	.L1593	@,
	cmp	r6, #0	@ tmp240,
	beq	.L1592	@,
	ldr	r1, [r4, #0]	@ temp.4862, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4863, <variable>.is_reference
	ands	r5, r3, ip	@ tmp232, temp.4863,
	beq	.L1606	@,
	ldr	r6, [r1, #436]	@ tmp268,
	bic	r6, r6, #-16777216	@ tmp269, tmp268,
	bic	r6, r6, #255	@ tmp269, tmp269,
	cmp	r6, #256	@ tmp269,
	beq	.L1628	@,
.L1606:
	tst	r3, #2	@ temp.4863,
	beq	.L1607	@,
	ldr	r3, [r1, #472]	@ tmp272,
	bic	r3, r3, #-16777216	@ tmp273, tmp272,
	bic	r3, r3, #255	@ tmp273, tmp273,
	cmp	r3, #256	@ tmp273,
	beq	.L1629	@,
.L1607:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.4858, ivtmp.4858,
	cmp	r7, ip	@ D.32955, i
	bhi	.L1592	@,
.L1593:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1583:
	movw	ip, #26636	@ tmp154,
	ldr	r6, [r0, ip]	@ temp.4864, <variable>.DPB.ltref_frames_in_buffer
	cmp	r6, #0	@ temp.4864,
	beq	.L1593	@,
	add	r3, r0, #26368	@ ivtmp.4853, pH264Ctx,
	sub	r1, r6, #1	@ tmp233, temp.4864,
	and	r4, r1, #1	@ tmp235, tmp233,
	ldr	r1, [r3, #192]!	@ D.32944, <variable>.DPB.fs_ltref
	ldr	ip, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	ip, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1630	@,
.L1596:
	mov	ip, #1	@ i.4861,
	cmp	ip, r6	@ i.4861, temp.4864
	add	r3, r3, #4	@ ivtmp.4853, ivtmp.4853,
	bcs	.L1593	@,
	cmp	r4, #0	@ tmp235,
	beq	.L1587	@,
	ldr	r1, [r3, #0]	@ D.32944, <variable>.DPB.fs_ltref
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1631	@,
.L1598:
	add	ip, ip, #1	@ i.4861, i.4861,
	add	r3, r3, #4	@ ivtmp.4853, ivtmp.4853,
	cmp	ip, r6	@ i.4861, temp.4864
	bcc	.L1587	@,
	b	.L1593	@
.L1586:
	ldr	r1, [r3, #4]	@ D.32944, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	beq	.L1632	@,
.L1601:
	add	ip, ip, #1	@ i.4861, tmp236,
	add	r3, r5, #4	@ ivtmp.4853, tmp237,
	cmp	ip, r6	@ i.4861, temp.4864
	bcs	.L1593	@,
.L1587:
	ldr	r1, [r3, #0]	@ D.32944, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ tmp236, i.4861,
	add	r5, r3, #4	@ tmp237, ivtmp.4853,
	ldr	r4, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r4, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1586	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1586	@,
	ldr	r4, [r1, #400]	@ tmp160,
	bic	r4, r4, #-16777216	@ tmp158, tmp160,
	bic	r4, r4, #255	@ tmp158, tmp158,
	cmp	r4, #256	@ tmp158,
	beq	.L1619	@,
	ldr	r1, [r3, #4]	@ D.32944, <variable>.DPB.fs_ltref
	ldr	r3, [r1, #408]	@ <variable>.frame.long_term_pic_num, <variable>.frame.long_term_pic_num
	cmp	r3, r2	@ <variable>.frame.long_term_pic_num, long_term_pic_num
	bne	.L1601	@,
.L1632:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #3	@ <variable>.is_reference,
	bne	.L1601	@,
	ldr	r3, [r1, #400]	@ tmp259,
	bic	r3, r3, #-16777216	@ tmp260, tmp259,
	bic	r3, r3, #255	@ tmp260, tmp260,
	cmp	r3, #256	@ tmp260,
	bne	.L1601	@,
	b	.L1619	@
.L1637:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	beq	.L1620	@,
.L1588:
	tst	r3, #2	@ temp.4863,
	beq	.L1590	@,
	ldr	r3, [r1, #472]	@ tmp200,
	bic	r3, r3, #-16777216	@ tmp198, tmp200,
	bic	r3, r3, #255	@ tmp198, tmp198,
	cmp	r3, #256	@ tmp198,
	beq	.L1633	@,
.L1590:
	ldr	r1, [r4, #4]	@ temp.4862, <variable>.DPB.fs_ltref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp242, ivtmp.4858,
	mov	r8, ip	@ tmp241, i
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4863, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4863,
	beq	.L1610	@,
	ldr	r6, [r1, #436]	@ tmp275,
	bic	r6, r6, #-16777216	@ tmp276, tmp275,
	bic	r6, r6, #255	@ tmp276, tmp276,
	cmp	r6, #256	@ tmp276,
	beq	.L1634	@,
.L1610:
	tst	r3, #2	@ temp.4863,
	beq	.L1611	@,
	ldr	r3, [r1, #472]	@ tmp279,
	bic	r3, r3, #-16777216	@ tmp280, tmp279,
	bic	r3, r3, #255	@ tmp280, tmp280,
	cmp	r3, #256	@ tmp280,
	beq	.L1635	@,
.L1611:
	add	ip, r8, #1	@ i, tmp241,
	add	r4, r4, #4	@ ivtmp.4858, tmp242,
	cmp	r7, ip	@ D.32955, i
	bls	.L1593	@,
.L1592:
	ldr	r1, [r4, #0]	@ temp.4862, <variable>.DPB.fs_ltref
	ldrb	r3, [r1, #2]	@ zero_extendqisi2	@ temp.4863, <variable>.is_reference
	ands	r5, r3, #1	@ tmp232, temp.4863,
	beq	.L1588	@,
	ldr	r6, [r1, #436]	@ tmp165,
	bic	r6, r6, #-16777216	@ tmp163, tmp165,
	bic	r6, r6, #255	@ tmp163, tmp163,
	cmp	r6, #256	@ tmp163,
	bne	.L1588	@,
	b	.L1637	@
.L1633:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1590	@,
.L1621:
	add	r2, ip, #6592	@ tmp204, i,
	strb	r5, [r1, #2]	@ tmp232, <variable>.is_reference
	add	ip, r2, #48	@ tmp204, tmp204,
	mov	r2, #0	@ tmp207,
	ldr	r3, [r0, ip, asl #2]	@ tmp206, <variable>.DPB.fs_ltref
	strb	r2, [r3, #473]	@ tmp207, <variable>.bottom_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4840, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.32990, <variable>.frame.structure
	cmp	r1, #3	@ D.32990,
	cmpne	r1, r2	@, D.32990,
	beq	.L1624	@,
.L1591:
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	ldreq	r1, [r3, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	addeq	r3, r1, #12800	@ tmp228, <variable>.pmv_address_idc,
	addeq	ip, r3, #12	@ tmp228, tmp228,
	streq	r2, [r0, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	b	.L1593	@
.L1634:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1610	@,
.L1620:
	add	ip, ip, #6592	@ tmp169, i,
	and	r2, r3, #2	@ tmp167, temp.4863,
	add	ip, ip, #48	@ tmp169, tmp169,
	strb	r2, [r1, #2]	@ tmp167, <variable>.is_reference
	mov	r2, #0	@ tmp172,
	ldr	r3, [r0, ip, asl #2]	@ tmp171, <variable>.DPB.fs_ltref
	strb	r2, [r3, #437]	@ tmp172, <variable>.top_field.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4865, <variable>.DPB.fs_ltref
	ldrb	r1, [r3, #400]	@ zero_extendqisi2	@ D.32970, <variable>.frame.structure
	cmp	r1, #3	@ D.32970,
	cmpne	r1, r2	@, D.32970,
	bne	.L1591	@,
.L1624:
	strb	r2, [r3, #402]	@ tmp207, <variable>.frame.is_short_term
	ldr	r1, [r0, ip, asl #2]	@ tmp222, <variable>.DPB.fs_ltref
	strb	r2, [r1, #401]	@ tmp207, <variable>.frame.is_long_term
	ldr	r3, [r0, ip, asl #2]	@ prephitmp.4840, <variable>.DPB.fs_ltref
	b	.L1591	@
.L1635:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1611	@,
	b	.L1621	@
.L1626:
	ldr	r8, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r8, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1603	@,
	b	.L1620	@
.L1627:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1604	@,
	b	.L1621	@
.L1628:
	ldr	r6, [r1, #444]	@ <variable>.top_field.long_term_pic_num, <variable>.top_field.long_term_pic_num
	cmp	r6, r2	@ <variable>.top_field.long_term_pic_num, long_term_pic_num
	bne	.L1606	@,
	b	.L1620	@
.L1629:
	ldr	r3, [r1, #480]	@ <variable>.bottom_field.long_term_pic_num, <variable>.bottom_field.long_term_pic_num
	cmp	r3, r2	@ <variable>.bottom_field.long_term_pic_num, long_term_pic_num
	bne	.L1607	@,
	b	.L1621	@
.L1630:
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	ip, #3	@ <variable>.is_reference,
	bne	.L1596	@,
	ldr	ip, [r1, #400]	@ tmp252,
	bic	ip, ip, #-16777216	@ tmp253, tmp252,
	bic	ip, ip, #255	@ tmp253, tmp253,
	cmp	ip, #256	@ tmp253,
	bne	.L1596	@,
.L1619:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1631:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1598	@,
	ldr	r4, [r1, #400]	@ tmp256,
	bic	r4, r4, #-16777216	@ tmp257, tmp256,
	bic	r4, r4, #255	@ tmp257, tmp257,
	cmp	r4, #256	@ tmp257,
	bne	.L1598	@,
	b	.L1619	@
	.fnend
	.size	UnMarkLTRef, .-UnMarkLTRef
	.align	2
	.global	UnMarkLTFldByFrmIdx
	.type	UnMarkLTFldByFrmIdx, %function
UnMarkLTFldByFrmIdx:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #26636	@ tmp141,
	ldr	ip, [r0, ip]	@ D.32852, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	cmp	ip, #0	@ D.32852,
	beq	.L1645	@,
	add	r5, r0, #26368	@ ivtmp.4901, pH264Ctx,
	sub	r4, ip, #1	@ tmp146, D.32852,
	and	r7, r4, #1	@ tmp148, tmp146,
	ldr	r4, [r5, #192]!	@ D.32836, <variable>.DPB.fs_ltref
	ldr	r6, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1672	@,
.L1647:
	mov	r6, #1	@ i,
	cmp	r6, ip	@ i, D.32852
	add	r5, r5, #4	@ ivtmp.4901, ivtmp.4901,
	bcs	.L1645	@,
	cmp	r7, #0	@ tmp148,
	beq	.L1644	@,
	ldr	r4, [r5, #0]	@ D.32836, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1673	@,
.L1654:
	add	r6, r6, #1	@ i, tmp149,
	add	r5, r5, #4	@ ivtmp.4901, tmp150,
	cmp	r6, ip	@ i, D.32852
	bcs	.L1645	@,
.L1644:
	ldr	r4, [r5, #0]	@ D.32836, <variable>.DPB.fs_ltref
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1674	@,
.L1640:
	ldr	r4, [r5, #4]	@ D.32836, <variable>.DPB.fs_ltref
	add	r6, r6, #1	@ tmp149, i,
	add	r5, r5, #4	@ tmp150, ivtmp.4901,
	ldr	r7, [r4, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r7, r3	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1654	@,
	cmp	r2, #1	@ structure,
	beq	.L1662	@,
.L1671:
	cmp	r2, #2	@ structure,
	bne	.L1654	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1643	@,
.L1665:
	cmp	r4, r1	@ D.32836, pFS
	beq	.L1654	@,
.L1643:
	mov	r1, r4	@, D.32836
	ldmfd	sp!, {r4, r5, r6, r7}
	b	UnMarkFrameStoreRef	@
.L1673:
	cmp	r2, r6	@ structure,
	bne	.L1671	@,
.L1662:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1665	@,
	b	.L1643	@
.L1674:
	cmp	r2, #1	@ structure,
	beq	.L1675	@,
	cmp	r2, #2	@ structure,
	bne	.L1640	@,
	ldrb	r7, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r7, #0	@ <variable>.top_field.is_long_term,
	beq	.L1643	@,
.L1667:
	cmp	r4, r1	@ D.32836, pFS
	beq	.L1640	@,
	b	.L1643	@
.L1675:
	ldrb	r7, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r7, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1667	@,
	b	.L1643	@
.L1645:
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L1672:
	cmp	r2, #1	@ structure,
	beq	.L1660	@,
	cmp	r2, #2	@ structure,
	bne	.L1647	@,
	ldrb	r6, [r4, #437]	@ zero_extendqisi2	@ <variable>.top_field.is_long_term, <variable>.top_field.is_long_term
	cmp	r6, #0	@ <variable>.top_field.is_long_term,
	beq	.L1643	@,
.L1664:
	cmp	r4, r1	@ D.32836, pFS
	beq	.L1647	@,
	b	.L1643	@
.L1660:
	ldrb	r6, [r4, #473]	@ zero_extendqisi2	@ <variable>.bottom_field.is_long_term, <variable>.bottom_field.is_long_term
	cmp	r6, #0	@ <variable>.bottom_field.is_long_term,
	bne	.L1664	@,
	b	.L1643	@
	.fnend
	.size	UnMarkLTFldByFrmIdx, .-UnMarkLTFldByFrmIdx
	.align	2
	.global	UnMarkLTFrmByFrmIdx
	.type	UnMarkLTFrmByFrmIdx, %function
UnMarkLTFrmByFrmIdx:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #26636	@ tmp139,
	ldr	r2, [r0, r3]	@ D.32824, <variable>.DPB.ltref_frames_in_buffer
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	cmp	r2, #0	@ D.32824,
	beq	.L1682	@,
	movw	r3, #26560	@ tmp140,
	ldr	r3, [r0, r3]	@ D.32820, <variable>.DPB.fs_ltref
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1678	@,
	tst	r2, #1	@ D.32824,
	add	ip, r0, #26368	@ tmp143, pH264Ctx,
	add	r4, ip, #196	@ ivtmp.4930, tmp143,
	mov	r5, #0	@ i,
	bne	.L1680	@,
	ldr	r3, [r4, #0]	@ D.32820, <variable>.DPB.fs_ltref
	add	r4, ip, #200	@ ivtmp.4930, tmp143,
	mov	r5, #1	@ i,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	bne	.L1680	@,
.L1678:
	mov	r1, r3	@, D.32820
	ldmfd	sp!, {r4, r5, r6}
	b	UnMarkFrameStoreRef	@
.L1681:
	ldr	r3, [ip], #4	@ D.32820, <variable>.DPB.fs_ltref
	ldr	r6, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	r6, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1678	@,
	ldr	r3, [r4, #4]	@ D.32820, <variable>.DPB.fs_ltref
	add	r4, ip, #4	@ ivtmp.4930, tmp148,
	ldr	ip, [r3, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	cmp	ip, r1	@ <variable>.long_term_frame_idx, long_term_frame_idx
	beq	.L1678	@,
.L1680:
	add	r3, r5, #1	@ tmp147, i,
	mov	ip, r4	@ tmp148, ivtmp.4930
	cmp	r2, r3	@ D.32824, tmp147
	add	r5, r3, #1	@ i, tmp147,
	bhi	.L1681	@,
.L1682:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.fnend
	.size	UnMarkLTFrmByFrmIdx, .-UnMarkLTFrmByFrmIdx
	.align	2
	.global	MarkCurrPicLT
	.type	MarkCurrPicLT, %function
MarkCurrPicLT:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r2	@ long_term_frame_idx, long_term_frame_idx
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.33160, <variable>.structure
	mov	r4, r1	@ pCurrPic, pCurrPic
	cmp	r2, #0	@ D.33160,
	beq	.L1696	@,
	mov	r3, r5	@, long_term_frame_idx
	ldr	r1, [r1, #408]	@, <variable>.frame_store
	bl	UnMarkLTFldByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #420]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1696:
	mov	r1, r5	@, long_term_frame_idx
	bl	UnMarkLTFrmByFrmIdx	@
	mov	r0, #1	@ tmp138,
	mov	r3, #0	@ tmp140,
	str	r5, [r4, #420]	@ long_term_frame_idx, <variable>.long_term_frame_idx
	strb	r0, [r4, #4]	@ tmp138, <variable>.is_long_term
	strb	r3, [r4, #5]	@ tmp140, <variable>.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	MarkCurrPicLT, .-MarkCurrPicLT
	.align	2
	.global	MarkSTToLTRef
	.type	MarkSTToLTRef, %function
MarkSTToLTRef:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pCurrPic, pCurrPic
	ldrb	r1, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	mov	r7, r3	@ long_term_frame_idx, long_term_frame_idx
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r1, #0	@ <variable>.structure,
	bne	.L1698	@,
	ldr	r3, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	mov	r1, r7	@, long_term_frame_idx
	mvn	r4, r2	@ tmp144, difference_of_pic_nums_minus1
	add	r4, r4, r3	@ picNumX, tmp144, <variable>.frame_num
	bl	UnMarkLTFrmByFrmIdx	@
.L1699:
	mov	r0, r6	@, pH264Ctx
	mov	r1, r7	@, long_term_frame_idx
	mov	r2, r4	@, picNumX
	mov	r3, r5	@, pCurrPic
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MarkPicLTRef	@
.L1698:
	movw	ip, #26632	@ tmp150,
	ldr	r0, [r5, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r8, [r6, ip]	@ D.33129, <variable>.DPB.ref_frames_in_buffer
	cmp	r8, #0	@ D.33129,
	rsb	r4, r2, r0, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1699	@,
	add	r3, r6, #26368	@ ivtmp.4988, pH264Ctx,
	sub	r2, r8, #1	@ tmp162, D.33129,
	and	r0, r2, #1	@ tmp164, tmp162,
	ldr	r1, [r3, #128]!	@ D.33105, <variable>.DPB.fs_ref
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ D.33107, <variable>.is_reference
	tst	r2, #1	@ D.33107,
	beq	.L1705	@,
	ldr	ip, [r1, #436]	@ tmp175,
	bic	ip, ip, #-16777216	@ tmp176, tmp175,
	bic	ip, ip, #255	@ tmp176, tmp176,
	cmp	ip, #65536	@ tmp176,
	beq	.L1727	@,
.L1705:
	tst	r2, #2	@ D.33107,
	beq	.L1706	@,
	ldr	r2, [r1, #472]	@ tmp179,
	bic	ip, r2, #-16777216	@ tmp180, tmp179,
	bic	r2, ip, #255	@ tmp180, tmp180,
	cmp	r2, #65536	@ tmp180,
	beq	.L1728	@,
.L1706:
	mov	r2, #1	@ i,
	cmp	r2, r8	@ i, D.33129
	add	r3, r3, #4	@ ivtmp.4988, ivtmp.4988,
	bcs	.L1699	@,
	cmp	r0, #0	@ tmp164,
	beq	.L1702	@,
	ldr	r1, [r3, #0]	@ D.33105, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33107, <variable>.is_reference
	tst	r0, #1	@ D.33107,
	bne	.L1717	@,
.L1712:
	tst	r0, #2	@ D.33107,
	beq	.L1713	@,
	ldr	r0, [r1, #472]	@ tmp195,
	bic	ip, r0, #-16777216	@ tmp196, tmp195,
	bic	r0, ip, #255	@ tmp196, tmp196,
	cmp	r0, #65536	@ tmp196,
	beq	.L1729	@,
.L1713:
	add	r2, r2, #1	@ i, tmp165,
	add	r3, r3, #4	@ ivtmp.4988, tmp166,
	cmp	r2, r8	@ i, D.33129
	bcs	.L1699	@,
.L1702:
	ldr	r1, [r3, #0]	@ D.33105, <variable>.DPB.fs_ref
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33107, <variable>.is_reference
	tst	r0, #1	@ D.33107,
	beq	.L1700	@,
	ldr	ip, [r1, #436]	@ tmp155,
	bic	ip, ip, #-16777216	@ tmp153, tmp155,
	bic	ip, ip, #255	@ tmp153, tmp153,
	cmp	ip, #65536	@ tmp153,
	beq	.L1730	@,
.L1700:
	tst	r0, #2	@ D.33107,
	beq	.L1701	@,
	ldr	r0, [r1, #472]	@ tmp160,
	bic	ip, r0, #-16777216	@ tmp158, tmp160,
	bic	r0, ip, #255	@ tmp158, tmp158,
	cmp	r0, #65536	@ tmp158,
	beq	.L1731	@,
.L1701:
	ldr	r1, [r3, #4]	@ D.33105, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ tmp165, i,
	add	r3, r3, #4	@ tmp166, ivtmp.4988,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.33107, <variable>.is_reference
	tst	r0, #1	@ D.33107,
	beq	.L1712	@,
.L1717:
	ldr	ip, [r1, #436]	@ tmp191,
	bic	ip, ip, #-16777216	@ tmp192, tmp191,
	bic	ip, ip, #255	@ tmp192, tmp192,
	cmp	ip, #65536	@ tmp192,
	bne	.L1712	@,
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1712	@,
.L1718:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #1	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1699	@
.L1729:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1713	@,
.L1719:
	mov	r0, r6	@, pH264Ctx
	mov	r2, #2	@,
	mov	r3, r7	@, long_term_frame_idx
	bl	UnMarkLTFldByFrmIdx	@
	b	.L1699	@
.L1730:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1700	@,
	b	.L1718	@
.L1731:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1701	@,
	b	.L1719	@
.L1727:
	ldr	ip, [r1, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	ip, r4	@ <variable>.top_field.pic_num, picNumX
	bne	.L1705	@,
	b	.L1718	@
.L1728:
	ldr	ip, [r1, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	ip, r4	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1706	@,
	b	.L1719	@
	.fnend
	.size	MarkSTToLTRef, .-MarkSTToLTRef
	.align	2
	.global	UnMarkSTRef
	.type	UnMarkSTRef, %function
UnMarkSTRef:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	mov	r3, r0	@ pH264Ctx, pH264Ctx
	ldrb	r0, [r1, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r0, #0	@ <variable>.structure,
	bne	.L1733	@,
	movw	ip, #26632	@ tmp158,
	ldr	r1, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, ip]	@ temp.5053, <variable>.DPB.ref_frames_in_buffer
	mvn	r2, r2	@ tmp156, difference_of_pic_nums_minus1
	add	ip, r2, r1	@ picNumX.5054, tmp156, <variable>.frame_num
	cmp	r6, #0	@ temp.5053,
	beq	.L1744	@,
	add	r2, r3, #26368	@ ivtmp.5027, pH264Ctx,
	sub	r1, r6, #1	@ tmp256, temp.5053,
	and	r4, r1, #1	@ tmp258, tmp256,
	ldr	r1, [r2, #128]!	@ D.32872, <variable>.DPB.fs_ref
	ldr	r0, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r0, ip	@ <variable>.frame.pic_num, picNumX.5054
	beq	.L1776	@,
.L1747:
	mov	r0, #1	@ i.5035,
	cmp	r0, r6	@ i.5035, temp.5053
	add	r2, r2, #4	@ ivtmp.5027, ivtmp.5027,
	bcs	.L1744	@,
	cmp	r4, #0	@ tmp258,
	beq	.L1738	@,
	ldr	r1, [r2, #0]	@ D.32872, <variable>.DPB.fs_ref
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5054
	beq	.L1777	@,
.L1749:
	add	r0, r0, #1	@ i.5035, i.5035,
	add	r2, r2, #4	@ ivtmp.5027, ivtmp.5027,
	cmp	r0, r6	@ i.5035, temp.5053
	bcc	.L1738	@,
	b	.L1744	@
.L1737:
	ldr	r1, [r2, #4]	@ D.32872, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5054
	beq	.L1778	@,
.L1752:
	add	r0, r0, #1	@ i.5035, tmp259,
	add	r2, r5, #4	@ ivtmp.5027, tmp260,
	cmp	r0, r6	@ i.5035, temp.5053
	bcs	.L1744	@,
.L1738:
	ldr	r1, [r2, #0]	@ D.32872, <variable>.DPB.fs_ref
	add	r0, r0, #1	@ tmp259, i.5035,
	add	r5, r2, #4	@ tmp260, ivtmp.5027,
	ldr	r4, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r4, ip	@ <variable>.frame.pic_num, picNumX.5054
	bne	.L1737	@,
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1737	@,
	ldr	r4, [r1, #400]	@ tmp169,
	bic	r4, r4, #-16777216	@ tmp167, tmp169,
	bic	r4, r4, #255	@ tmp167, tmp167,
	cmp	r4, #65536	@ tmp167,
	beq	.L1770	@,
	ldr	r1, [r2, #4]	@ D.32872, <variable>.DPB.fs_ref
	ldr	r2, [r1, #412]	@ <variable>.frame.pic_num, <variable>.frame.pic_num
	cmp	r2, ip	@ <variable>.frame.pic_num, picNumX.5054
	bne	.L1752	@,
.L1778:
	ldrb	r2, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #3	@ <variable>.is_reference,
	bne	.L1752	@,
	ldr	r2, [r1, #400]	@ tmp284,
	bic	r2, r2, #-16777216	@ tmp285, tmp284,
	bic	r2, r2, #255	@ tmp285, tmp285,
	cmp	r2, #65536	@ tmp285,
	beq	.L1770	@,
	add	r0, r0, #1	@ i.5035, tmp259,
	add	r2, r5, #4	@ ivtmp.5027, tmp260,
	cmp	r0, r6	@ i.5035, temp.5053
	bcc	.L1738	@,
.L1744:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L1733:
	movw	r0, #26632	@ tmp163,
	ldr	r7, [r1, #416]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r6, [r3, r0]	@ D.32883, <variable>.DPB.ref_frames_in_buffer
	cmp	r6, #0	@ D.32883,
	rsb	r7, r2, r7, asl #1	@, picNumX, difference_of_pic_nums_minus1, <variable>.frame_num,
	beq	.L1744	@,
	add	r4, r3, #26368	@ ivtmp.5032, pH264Ctx,
	sub	ip, r6, #1	@ tmp261, D.32883,
	and	r5, ip, #1	@ tmp263, tmp261,
	mov	ip, #0	@ i,
	ldr	r0, [r4, #128]!	@ temp.5036, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5037, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5037,
	beq	.L1754	@,
	ldr	r8, [r0, #436]	@ tmp286,
	bic	r8, r8, #-16777216	@ tmp287, tmp286,
	bic	r8, r8, #255	@ tmp287, tmp287,
	cmp	r8, #65536	@ tmp287,
	beq	.L1779	@,
.L1754:
	tst	r1, #2	@ temp.5037,
	beq	.L1755	@,
	ldr	r1, [r0, #472]	@ tmp290,
	bic	r1, r1, #-16777216	@ tmp291, tmp290,
	bic	r1, r1, #255	@ tmp291, tmp291,
	cmp	r1, #65536	@ tmp291,
	beq	.L1780	@,
.L1755:
	mov	ip, #1	@ i,
	cmp	r6, ip	@ D.32883, i
	add	r4, r4, #4	@ ivtmp.5032, ivtmp.5032,
	bls	.L1744	@,
	cmp	r5, #0	@ tmp263,
	beq	.L1743	@,
	ldr	r0, [r4, #0]	@ temp.5036, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5037, <variable>.is_reference
	ands	r2, r1, ip	@ tmp254, temp.5037,
	beq	.L1757	@,
	ldr	r5, [r0, #436]	@ tmp293,
	bic	r5, r5, #-16777216	@ tmp294, tmp293,
	bic	r5, r5, #255	@ tmp294, tmp294,
	cmp	r5, #65536	@ tmp294,
	beq	.L1781	@,
.L1757:
	tst	r1, #2	@ temp.5037,
	beq	.L1758	@,
	ldr	r1, [r0, #472]	@ tmp297,
	bic	r1, r1, #-16777216	@ tmp298, tmp297,
	bic	r1, r1, #255	@ tmp298, tmp298,
	cmp	r1, #65536	@ tmp298,
	beq	.L1782	@,
.L1758:
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5032, ivtmp.5032,
	cmp	r6, ip	@ D.32883, i
	bls	.L1744	@,
	ldr	r0, [r4, #0]	@ temp.5036, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5037, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5037,
	bne	.L1783	@,
.L1739:
	tst	r1, #2	@ temp.5037,
	beq	.L1741	@,
	ldr	r1, [r0, #472]	@ tmp215,
	bic	r1, r1, #-16777216	@ tmp213, tmp215,
	bic	r1, r1, #255	@ tmp213, tmp213,
	cmp	r1, #65536	@ tmp213,
	beq	.L1784	@,
.L1741:
	ldr	r0, [r4, #4]	@ temp.5036, <variable>.DPB.fs_ref
	add	ip, ip, #1	@ i, i,
	add	r4, r4, #4	@ tmp265, ivtmp.5032,
	mov	r8, ip	@ tmp264, i
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5037, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5037,
	beq	.L1761	@,
	ldr	r5, [r0, #436]	@ tmp300,
	bic	r5, r5, #-16777216	@ tmp301, tmp300,
	bic	r5, r5, #255	@ tmp301, tmp301,
	cmp	r5, #65536	@ tmp301,
	beq	.L1785	@,
.L1761:
	tst	r1, #2	@ temp.5037,
	beq	.L1762	@,
	ldr	r1, [r0, #472]	@ tmp304,
	bic	r1, r1, #-16777216	@ tmp305, tmp304,
	bic	r1, r1, #255	@ tmp305, tmp305,
	cmp	r1, #65536	@ tmp305,
	beq	.L1786	@,
.L1762:
	add	ip, r8, #1	@ i, tmp264,
	add	r4, r4, #4	@ ivtmp.5032, tmp265,
	cmp	r6, ip	@ D.32883, i
	bls	.L1744	@,
.L1743:
	ldr	r0, [r4, #0]	@ temp.5036, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ temp.5037, <variable>.is_reference
	ands	r2, r1, #1	@ tmp254, temp.5037,
	beq	.L1739	@,
.L1783:
	ldr	r5, [r0, #436]	@ tmp174,
	bic	r5, r5, #-16777216	@ tmp172, tmp174,
	bic	r5, r5, #255	@ tmp172, tmp172,
	cmp	r5, #65536	@ tmp172,
	bne	.L1739	@,
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1739	@,
.L1771:
	add	r2, ip, #6592	@ tmp255, i,
	and	r1, r1, #2	@ tmp176, temp.5037,
	add	r2, r2, #32	@ tmp255, tmp255,
	strb	r1, [r0, #2]	@ tmp176, <variable>.is_reference
	mov	r1, #0	@ tmp181,
	ldr	r0, [r3, r2, asl #2]	@ tmp180, <variable>.DPB.fs_ref
	strb	r1, [r0, #438]	@ tmp181, <variable>.top_field.is_short_term
	ldr	r0, [r3, r2, asl #2]	@ prephitmp.5038, <variable>.DPB.fs_ref
	ldrb	ip, [r0, #400]	@ zero_extendqisi2	@ D.32898, <variable>.frame.structure
	cmp	ip, #3	@ D.32898,
	cmpne	ip, r1	@, D.32898,
	streqb	r1, [r0, #402]	@ tmp181, <variable>.frame.is_short_term
	ldreq	r0, [r3, r2, asl #2]	@ tmp196, <variable>.DPB.fs_ref
	streqb	r1, [r0, #401]	@ tmp181, <variable>.frame.is_long_term
	ldreq	r0, [r3, r2, asl #2]	@ prephitmp.5038, <variable>.DPB.fs_ref
	ldrb	r1, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1744	@,
	ldr	ip, [r0, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r2, asl #2]	@ tmp210, <variable>.DPB.fs_ref
.L1773:
	add	ip, ip, #12800	@ tmp243, <variable>.pmv_address_idc,
	movw	r0, #52840	@ tmp247,
	add	ip, ip, #12	@ tmp243, tmp243,
	mov	r2, r1	@, <variable>.is_reference
	ldr	r0, [r3, r0]	@, <variable>.ChanID
	str	r1, [r3, ip, asl #2]	@ <variable>.is_reference, <variable>.PmvStoreUsedFlag
	ldr	r1, [r4, #508]	@, <variable>.logic_fs_id
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	FSP_SetRef	@
.L1784:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1741	@,
.L1772:
	add	r4, ip, #6592	@ tmp274, i,
	strb	r2, [r0, #2]	@ tmp254, <variable>.is_reference
	add	r4, r4, #32	@ tmp274, tmp274,
	mov	ip, #0	@ tmp222,
	ldr	r2, [r3, r4, asl #2]	@ tmp221, <variable>.DPB.fs_ref
	strb	ip, [r2, #474]	@ tmp222, <variable>.bottom_field.is_short_term
	ldr	r2, [r3, r4, asl #2]	@ prephitmp.5014, <variable>.DPB.fs_ref
	ldrb	r0, [r2, #400]	@ zero_extendqisi2	@ D.32920, <variable>.frame.structure
	cmp	r0, #3	@ D.32920,
	cmpne	r0, ip	@, D.32920,
	streqb	ip, [r2, #402]	@ tmp222, <variable>.frame.is_short_term
	ldreq	r2, [r3, r4, asl #2]	@ tmp237, <variable>.DPB.fs_ref
	streqb	ip, [r2, #401]	@ tmp222, <variable>.frame.is_long_term
	ldreq	r2, [r3, r4, asl #2]	@ prephitmp.5014, <variable>.DPB.fs_ref
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r1, #0	@ <variable>.is_reference,
	bne	.L1744	@,
	ldr	ip, [r2, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r4, [r3, r4, asl #2]	@ tmp251, <variable>.DPB.fs_ref
	b	.L1773	@
.L1785:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1761	@,
	b	.L1771	@
.L1786:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1762	@,
	b	.L1772	@
.L1779:
	ldr	r8, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r8, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1754	@,
	b	.L1771	@
.L1780:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1755	@,
	b	.L1772	@
.L1781:
	ldr	r5, [r0, #448]	@ <variable>.top_field.pic_num, <variable>.top_field.pic_num
	cmp	r5, r7	@ <variable>.top_field.pic_num, picNumX
	bne	.L1757	@,
	b	.L1771	@
.L1782:
	ldr	r1, [r0, #484]	@ <variable>.bottom_field.pic_num, <variable>.bottom_field.pic_num
	cmp	r1, r7	@ <variable>.bottom_field.pic_num, picNumX
	bne	.L1758	@,
	b	.L1772	@
.L1776:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #3	@ <variable>.is_reference,
	bne	.L1747	@,
	ldr	r0, [r1, #400]	@ tmp277,
	bic	r0, r0, #-16777216	@ tmp278, tmp277,
	bic	r0, r0, #255	@ tmp278, tmp278,
	cmp	r0, #65536	@ tmp278,
	bne	.L1747	@,
.L1770:
	mov	r0, r3	@, pH264Ctx
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	b	UnMarkFrameStoreRef	@
.L1777:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r4, #3	@ <variable>.is_reference,
	bne	.L1749	@,
	ldr	r4, [r1, #400]	@ tmp281,
	bic	r4, r4, #-16777216	@ tmp282, tmp281,
	bic	r4, r4, #255	@ tmp282, tmp282,
	cmp	r4, #65536	@ tmp282,
	bne	.L1749	@,
	b	.L1770	@
	.fnend
	.size	UnMarkSTRef, .-UnMarkSTRef
	.align	2
	.global	ClearAll
	.type	ClearAll, %function
ClearAll:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r4, r1	@ flag, flag
	bl	H264_ClearCurrPic	@
	mov	r0, r5	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r5	@, pH264Ctx
	bl	InitDPB	@
	cmp	r4, #0	@ flag,
	beq	.L1788	@,
	movw	r3, #52840	@ tmp157,
	add	r1, r5, #8	@, pH264Ctx,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FSP_ClearNotInVoQueue	@
.L1789:
	add	r7, r5, #27392	@ tmp163, pH264Ctx,
	mov	fp, #0	@ ivtmp.5103,
	add	r9, r7, #116	@ ivtmp.5125, tmp163,
	add	sl, r7, #112	@ ivtmp.5122, tmp163,
	add	r8, r7, #124	@ ivtmp.5123, tmp163,
	add	r7, r7, #120	@ ivtmp.5124, tmp163,
	mov	r6, fp	@ i, ivtmp.5103
	mov	r4, fp	@ tmp323, ivtmp.5103
.L1794:
	mov	r1, #560	@,
	add	r2, r5, fp	@ D.45112, pH264Ctx, ivtmp.5103
	mul	lr, r1, r6	@ tmp206,, i
	ldr	r1, [sl, #0]	@ temp.5133, <variable>.fs_image.p_usrdat
	add	r3, r2, #27136	@ tmp168, D.45112,
	add	ip, r2, #27392	@ tmp205, D.45112,
	cmp	r1, #0	@ temp.5133,
	add	fp, fp, #560	@ ivtmp.5103, ivtmp.5103,
	add	r0, lr, #27136	@ tmp208, tmp206,
	add	lr, r2, #27648	@ tmp180, D.45112,
	add	r0, r0, #168	@ tmp208, tmp208,
	str	r6, [ip, #96]	@ i, <variable>.fs_image.image_id
	add	r0, r5, r0	@ D.32611, pH264Ctx, tmp208
	mov	ip, #2	@,
	mov	r2, #1	@,
	strb	r4, [r3, #172]	@ tmp323, <variable>.is_in_dpb
	strb	ip, [lr, #128]	@, <variable>.bottom_field.structure
	add	r6, r6, #1	@ i, i,
	mvn	ip, #0	@,
	strb	r4, [r3, #168]	@ tmp323, <variable>.non_existing
	strb	r4, [r3, #169]	@ tmp323, <variable>.is_used
	strb	r4, [r3, #170]	@ tmp323, <variable>.is_reference
	mov	r3, #17	@,
	str	ip, [lr, #172]	@, <variable>.frame_num_wrap
	mov	ip, #16	@,
	str	r2, [lr, #188]	@, <variable>.is_displayed
	mov	r2, #1	@,
	str	r0, [lr, #60]	@ D.32611, <variable>.frame.frame_store
	str	r4, [lr, #176]	@ tmp323, <variable>.long_term_frame_idx
	str	r4, [lr, #168]	@ tmp323, <variable>.frame_num
	str	r4, [lr, #180]	@ tmp323, <variable>.poc
	str	r3, [lr, #204]	@, <variable>.pmv_address_idc
	str	ip, [lr, #208]	@, <variable>.apc_idc
	str	r0, [lr, #132]	@ D.32611, <variable>.bottom_field.frame_store
	str	r0, [lr, #96]	@ D.32611, <variable>.top_field.frame_store
	strb	r4, [lr, #56]	@ tmp323, <variable>.frame.structure
	strb	r2, [lr, #92]	@, <variable>.top_field.structure
	beq	.L1790	@,
	movw	r3, #52840	@,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [sl, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1790:
	ldr	r1, [r9, #0]	@ temp.5135, <variable>.fs_image.p_usrdat
	add	sl, sl, #560	@ ivtmp.5122, ivtmp.5122,
	cmp	r1, #0	@ temp.5135,
	beq	.L1791	@,
	movw	ip, #52840	@,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r9, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1791:
	ldr	r1, [r7, #0]	@ temp.5137, <variable>.fs_image.p_usrdat
	add	r9, r9, #560	@ ivtmp.5125, ivtmp.5125,
	cmp	r1, #0	@ temp.5137,
	beq	.L1792	@,
	movw	r2, #52840	@,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r7, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1792:
	ldr	r1, [r8, #0]	@ D.32615, <variable>.fs_image.p_usrdat
	add	r7, r7, #560	@ ivtmp.5124, ivtmp.5124,
	cmp	r1, #0	@ D.32615,
	beq	.L1793	@,
	movw	lr, #52840	@,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r4, [r8, #0]	@ tmp323, <variable>.fs_image.p_usrdat
.L1793:
	cmp	r6, #40	@ i,
	add	r8, r8, #560	@ ivtmp.5123, ivtmp.5123,
	bne	.L1794	@,
	movw	r4, #49912	@ tmp240,
	ldr	r1, [r5, r4]	@ temp.5139, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5139,
	beq	.L1795	@,
	movw	r3, #52840	@ tmp241,
	mov	r7, #0	@ tmp244,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp244, <variable>.CurrPic.fs_image.p_usrdat
.L1795:
	movw	r4, #49916	@ tmp245,
	ldr	r1, [r5, r4]	@ temp.5141, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5141,
	beq	.L1796	@,
	movw	ip, #52840	@ tmp246,
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp249,
	str	r0, [r5, r4]	@ tmp249, <variable>.CurrPic.fs_image.p_usrdat
.L1796:
	mov	r4, #49920	@ tmp250,
	ldr	r1, [r5, r4]	@ temp.5143, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.5143,
	beq	.L1797	@,
	movw	r2, #52840	@ tmp251,
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp254,
	str	r1, [r5, r4]	@ tmp254, <variable>.CurrPic.fs_image.p_usrdat
.L1797:
	movw	r4, #49924	@ tmp255,
	ldr	r1, [r5, r4]	@ D.32618, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.32618,
	beq	.L1798	@,
	movw	lr, #52840	@ tmp256,
	mov	r7, #0	@ tmp259,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r7, [r5, r4]	@ tmp259, <variable>.CurrPic.fs_image.p_usrdat
.L1798:
	movw	r7, #51344	@ tmp260,
	ldr	r4, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	cmp	r4, #0	@ <variable>.TotalUsrDatNum,
	beq	.L1799	@,
	add	r8, r5, #51200	@ ivtmp.5094, pH264Ctx,
	mov	r6, #0	@ i.5132,
	add	r4, r8, #148	@ ivtmp.5094, ivtmp.5094,
	movw	sl, #52840	@ tmp320,
	mov	r8, r6	@ tmp321, i.5132
.L1801:
	ldr	r1, [r4, #0]	@ D.32621, <variable>.pUsrDatArray
	add	r6, r6, #1	@ i.5132, i.5132,
	cmp	r1, #0	@ D.32621,
	beq	.L1800	@,
	ldr	r0, [r5, sl]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r8, [r4, #0]	@ tmp321, <variable>.pUsrDatArray
.L1800:
	ldr	r3, [r5, r7]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r4, r4, #4	@ ivtmp.5094, ivtmp.5094,
	cmp	r3, r6	@ <variable>.TotalUsrDatNum, i.5132
	bhi	.L1801	@,
.L1799:
	movw	lr, #51344	@ tmp268,
	mov	r4, #0	@ tmp269,
	movw	r3, #51324	@ tmp272,
	str	r4, [r5, lr]	@ tmp269, <variable>.TotalUsrDatNum
	movw	r2, #52764	@ tmp274,
	movw	ip, #52824	@ tmp276,
	movw	lr, #52772	@ tmp278,
	str	r4, [r5, r3]	@ tmp269, <variable>.AllowStartDec
	str	r4, [r5, r2]	@ tmp269, <variable>.SliceParaNum
	movw	r3, #51332	@ tmp280,
	str	r4, [r5, ip]	@ tmp269, <variable>.MaxBytesReceived
	movw	r2, #52848	@ tmp282,
	str	r4, [r5, lr]	@ tmp269, <variable>.IModeOutFlag
	movw	ip, #51336	@ tmp284,
	movw	lr, #26380	@ tmp287,
	str	r4, [r5, r3]	@ tmp269, <variable>.IDRFound
	str	r4, [r5, r2]	@ tmp269, <variable>.FirstFrameDisplayed
	movw	r3, #24376	@ tmp289,
	str	r4, [r5, ip]	@ tmp269, <variable>.PPicFound
	movw	r2, #22372	@ tmp292,
	str	r4, [r5, lr]	@ tmp269, <variable>.CurrMarkIdx
	movw	ip, #24377	@ tmp295,
	movw	lr, #22373	@ tmp298,
	add	r0, r5, #20480	@, pH264Ctx,
	movw	r1, #52816	@ tmp270,
	add	r0, r0, #200	@,,
	str	r4, [r5, r1]	@ tmp269, <variable>.IDRPicOfCurrPic
	mov	r1, #1648	@,
	strb	r4, [r5, r3]	@ tmp269, <variable>.is_valid
	strb	r4, [r5, ip]	@ tmp269, <variable>.no_output_of_prior_pics_flag
	strb	r4, [r5, r2]	@ tmp269, <variable>.is_valid
	strb	r4, [r5, lr]	@ tmp269, <variable>.no_output_of_prior_pics_flag
	str	r4, [r5, #368]	@ tmp269, <variable>.pCurrNal
	bl	__memzero	@
	movw	r3, #49704	@ tmp309,
	movw	r1, #20680	@ tmp303,
	strb	r4, [r5, r3]	@ tmp269, <variable>.CurrPic.state
	movw	r0, #50668	@ tmp317,
	movw	r2, #50664	@ tmp312,
	mov	ip, #2	@ tmp304,
	movw	r3, #20685	@ tmp306,
	strb	ip, [r5, r1]	@ tmp304, <variable>.CurrSlice.slice_type
	movw	r1, #50672	@ tmp315,
	str	r4, [r5, r0]	@ tmp269, <variable>.PrevPic.nal_ref_idc
	mov	ip, #256	@ tmp316,
	strb	r4, [r5, r2]	@ tmp269, <variable>.PrevPic.structure
	mov	r0, r4	@, tmp269
	mov	r2, #1	@ tmp307,
	str	ip, [r5, r1]	@ tmp316, <variable>.PrevPic.frame_num
	strb	r2, [r5, r3]	@ tmp307, <variable>.CurrSlice.new_pic_flag
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L1788:
	add	r0, r5, #8	@, pH264Ctx,
	bl	ResetVoQueue	@
	movw	r1, #52840	@ tmp161,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	FSP_EmptyInstance	@
	b	.L1789	@
	.fnend
	.size	ClearAll, .-ClearAll
	.align	2
	.global	H264DEC_GetImageBuffer
	.type	H264DEC_GetImageBuffer, %function
H264DEC_GetImageBuffer:
	.fnstart
.LFB1730:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #51316	@ tmp145,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldr	r3, [r0, r3]	@ D.40286, <variable>.TotalFsNum
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ D.40286,
	beq	.L1806	@,
	add	r6, r0, #27136	@ ivtmp.5176, pH264Ctx,
	add	r7, r0, #26368	@ ivtmp.5171, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5176, ivtmp.5176,
	add	r7, r7, #68	@ ivtmp.5171, ivtmp.5171,
	mov	r5, #0	@ i,
	mov	r8, #560	@ tmp173,
	movw	sl, #26628	@ tmp174,
	movw	r9, #26432	@ tmp175,
.L1813:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1807	@,
	mul	r2, r8, r5	@ tmp148, tmp173, i
	add	r1, r2, #27136	@ tmp150, tmp148,
	add	ip, r1, #168	@ tmp150, tmp150,
	adds	ip, r4, ip	@ D.40296, pH264Ctx, tmp150
	beq	.L1808	@,
	ldr	lr, [r4, sl]	@ D.40497, <variable>.DPB.used_size
	cmp	lr, #0	@ D.40497,
	beq	.L1808	@,
	ldr	r1, [r4, r9]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	ip, r1	@ D.40296, <variable>.DPB.fs
	beq	.L1807	@,
	tst	lr, #1	@ D.40497,
	mov	r1, r7	@ ivtmp.5171, ivtmp.5171
	bne	.L1809	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.40497
	bcs	.L1808	@,
	mov	r1, r7	@ ivtmp.5171, ivtmp.5171
	ldr	r2, [r1], #4	@ D.40498, <variable>.DPB.fs
	cmp	ip, r2	@ D.40296, D.40498
	bne	.L1809	@,
	b	.L1807	@
.L1810:
	ldr	fp, [r2], #4	@ D.40498, <variable>.DPB.fs
	cmp	ip, fp	@ D.40296, D.40498
	beq	.L1807	@,
	ldr	fp, [r1, #4]	@ D.40498, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5171, tmp182,
	cmp	ip, fp	@ D.40296, D.40498
	beq	.L1807	@,
.L1809:
	add	r0, r0, #1	@ tmp183, i,
	mov	r2, r1	@ tmp182, ivtmp.5171
	cmp	r0, lr	@ tmp183, D.40497
	add	r0, r0, #1	@ i, tmp183,
	bcc	.L1810	@,
.L1808:
	movw	r5, #52840	@ tmp156,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ ret,
	beq	.L1806	@,
	cmn	r0, #1	@ ret,
	beq	.L1821	@,
.L1811:
	mov	r0, #0	@ D.40289,
.L1812:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1807:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #560	@ ivtmp.5176, ivtmp.5176,
	cmp	r3, r5	@ D.40286, i
	bhi	.L1813	@,
	add	r0, r4, #8	@, pH264Ctx,
	add	r1, sp, #4	@,,
	mov	r2, sp	@,
	bl	GetQueueImgNum	@
	movw	r1, #51316	@ tmp166,
	ldr	r2, [r4, r1]	@ <variable>.TotalFsNum, <variable>.TotalFsNum
	movw	r3, #26628	@ tmp169,
	ldr	r0, [r4, r3]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	sub	ip, r2, #2	@ tmp167, <variable>.TotalFsNum,
	ldmia	sp, {r1, r2}	@ phole ldm
	rsb	r3, r0, ip	@ tmp170, <variable>.DPB.used_size, tmp167
	add	ip, r1, r2	@ tmp163, NewImgNum, ReadImgNum
	cmp	ip, r3	@ tmp163, tmp170
	bge	.L1811	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.40289,
	b	.L1812	@
.L1806:
	mov	r0, #1	@ D.40289,
	b	.L1812	@
.L1821:
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	add	r1, r4, #8	@, pH264Ctx,
	bl	FSP_ClearNotInVoQueue	@
	mov	r0, #0	@ D.40289,
	b	.L1812	@
	.fnend
	.size	H264DEC_GetImageBuffer, .-H264DEC_GetImageBuffer
	.align	2
	.global	H264DEC_Init
	.type	H264DEC_Init, %function
H264DEC_Init:
	.fnstart
.LFB1726:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r6, [r0, #352]	@ D.40034, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, r1	@ pstExtraData, pstExtraData
	movw	r1, #52896	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pH264Ctx,
	str	r6, [r4, #352]	@ D.40034, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	mov	r0, #0	@ tmp149,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	str	r0, [r4, #364]	@ tmp149, <variable>.StartMode
	str	r0, [r4, #360]	@ tmp149, <variable>.pH264DecParam
	ldr	r3, [r5, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r3, #25	@ <variable>.eCapLevel,
	beq	.L1832	@,
	movw	ip, #13572	@ tmp158,
	movw	r1, #13576	@ tmp160,
	mov	r6, #13568	@ tmp162,
	mov	r7, #32	@ tmp159,
	mov	r2, #256	@ tmp161,
	mov	r0, #136	@ tmp163,
	str	r7, [r4, ip]	@ tmp159, <variable>.MaxSpsNum
	str	r2, [r4, r1]	@ tmp161, <variable>.MaxPpsNum
	str	r0, [r4, r6]	@ tmp163, <variable>.MaxSliceNum
.L1824:
	ldr	r0, [r5, #504]	@, <variable>.s32ContextMemAddr
	movw	r6, #13584	@ tmp172,
	bl	MEM_Phy2Vir	@
	movw	r2, #13572	@ tmp168,
	ldr	r1, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	mov	ip, #4000	@ tmp171,
	ldr	r7, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r3, #13576	@ tmp173,
	ldr	r3, [r4, r3]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	mul	r1, ip, r1	@ tmp169, tmp171, <variable>.MaxSpsNum
	ldr	r2, [r7, #500]	@ <variable>.s32BasicCtxSize, <variable>.s32BasicCtxSize
	mov	r7, #2208	@ tmp176,
	add	r2, r0, r2	@ D.40055,, <variable>.s32BasicCtxSize
	movw	r0, #13580	@ tmp167,
	str	r2, [r4, r0]	@ D.40055, <variable>.SPS
	add	r0, r2, r1	@ prephitmp.5210, D.40055, tmp169
	cmp	r2, #0	@ D.40055,
	str	r0, [r4, r6]	@ prephitmp.5210, <variable>.PPS
	mla	ip, r7, r3, r0	@ D.40067, tmp176, <variable>.MaxPpsNum, prephitmp.5210
	movw	r7, #52760	@ tmp177,
	str	ip, [r4, r7]	@ D.40067, <variable>.DecSlicePara
	bne	.L1833	@,
.L1825:
	mvn	r0, #19	@ D.40073,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1832:
	ldr	lr, [r5, #580]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.stChanOption.s32MaxSpsNum
	movw	r3, #13572	@ tmp152,
	movw	ip, #13576	@ tmp154,
	mov	r1, #13568	@ tmp156,
	str	lr, [r4, r3]	@ <variable>.stChanOption.s32MaxSpsNum, <variable>.MaxSpsNum
	ldr	r7, [r5, #584]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.stChanOption.s32MaxPpsNum
	str	r7, [r4, ip]	@ <variable>.stChanOption.s32MaxPpsNum, <variable>.MaxPpsNum
	ldr	r2, [r5, #576]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.stChanOption.s32MaxSliceNum
	str	r2, [r4, r1]	@ <variable>.stChanOption.s32MaxSliceNum, <variable>.MaxSliceNum
	b	.L1824	@
.L1833:
	cmp	r0, #0	@ prephitmp.5210,
	beq	.L1825	@,
	cmp	ip, #0	@ D.40067,
	beq	.L1825	@,
	ldr	lr, [r5, #524]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	cmp	lr, #0	@ <variable>.s32KeepSPSPPS,
	bne	.L1827	@,
	cmp	r1, #0	@ tmp169,
	bne	.L1834	@,
.L1828:
	movw	r5, #13576	@ tmp184,
	mov	r6, #2208	@ tmp185,
	ldr	r3, [r4, r5]	@ prephitmp.5208, <variable>.MaxPpsNum
	mul	r1, r6, r3	@ __n, tmp185, prephitmp.5208
	cmp	r1, #0	@ __n,
	bne	.L1835	@,
.L1827:
	mov	r5, #13568	@ tmp192,
	movw	r6, #4060	@ tmp194,
	ldr	r1, [r4, r5]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	movw	r2, #13572	@ tmp189,
	ldr	ip, [r4, r2]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	movw	r0, #14332	@ tmp188,
	movw	lr, #17612	@ tmp187,
	movw	r5, #52760	@ tmp191,
	mul	r1, r6, r1	@ __n, tmp194, <variable>.MaxSliceNum
	str	ip, [r4, r0]	@ <variable>.MaxSpsNum, <variable>.CurrSPS.seq_parameter_set_id
	str	r3, [r4, lr]	@ prephitmp.5208, <variable>.CurrPPS.pic_parameter_set_id
	ldr	r0, [r4, r5]	@ __p, <variable>.DecSlicePara
	cmp	r1, #0	@ __n,
	bne	.L1836	@,
.L1829:
	movw	r1, #52828	@ tmp196,
	movw	lr, #52768	@ tmp195,
	ldr	r6, [r4, r1]	@ <variable>.advanced_cfg, <variable>.advanced_cfg
	movw	r3, #51316	@ tmp214,
	movw	r5, #52784	@ tmp198,
	mov	ip, #40	@ tmp215,
	movw	r2, #51320	@ tmp216,
	str	ip, [r4, r3]	@ tmp215, <variable>.TotalFsNum
	str	r6, [r4, lr]	@ <variable>.advanced_cfg, <variable>.OldDecMode
	movw	ip, #52796	@ tmp204,
	movw	lr, #51340	@ tmp238,
	mov	r6, #0	@ tmp199,
	mov	r1, #17	@ tmp217,
	str	r6, [r4, r5]	@ tmp199, <variable>.TotalNal
	str	r1, [r4, r2]	@ tmp217, <variable>.TotalPmvNum
	mov	r5, #25	@ tmp239,
	str	r6, [r4, ip]	@ tmp199, <variable>.TotalSlice
	movw	r3, #52800	@ tmp206,
	str	r5, [r4, lr]	@ tmp239, <variable>.frame_rate
	movw	r2, #52804	@ tmp208,
	movw	r1, #52808	@ tmp210,
	movw	lr, #52812	@ tmp212,
	movw	ip, #52776	@ tmp218,
	movw	r0, #52788	@ tmp200,
	str	r6, [r4, r3]	@ tmp199, <variable>.SeqCnt
	movw	r3, #51344	@ tmp220,
	str	r6, [r4, r2]	@ tmp199, <variable>.TotalPicNum
	movw	r2, #51348	@ tmp222,
	str	r6, [r4, r1]	@ tmp199, <variable>.TotalFrameNum
	movw	r1, #51352	@ tmp224,
	str	r6, [r4, lr]	@ tmp199, <variable>.TotalFieldNum
	movw	lr, #51356	@ tmp226,
	str	r6, [r4, ip]	@ tmp199, <variable>.MutexHold
	movw	ip, #51360	@ tmp228,
	str	r6, [r4, r2]	@ tmp199, <variable>.pUsrDatArray
	movw	r2, #51332	@ tmp232,
	str	r6, [r4, r1]	@ tmp199, <variable>.pUsrDatArray
	movw	r1, #52848	@ tmp234,
	str	r6, [r4, lr]	@ tmp199, <variable>.pUsrDatArray
	movw	lr, #51336	@ tmp236,
	str	r6, [r4, r0]	@ tmp199, <variable>.TotalSPS
	movw	r0, #52792	@ tmp202,
	str	r6, [r4, r3]	@ tmp199, <variable>.TotalUsrDatNum
	movw	r3, #51324	@ tmp230,
	str	r6, [r4, ip]	@ tmp199, <variable>.pUsrDatArray
	movw	ip, #52892	@ tmp240,
	str	r6, [r4, r0]	@ tmp199, <variable>.TotalPPS
	mov	r5, #1	@ tmp241,
	str	r6, [r4, r3]	@ tmp199, <variable>.AllowStartDec
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, r2]	@ tmp199, <variable>.IDRFound
	str	r6, [r4, r1]	@ tmp199, <variable>.FirstFrameDisplayed
	str	r6, [r4, lr]	@ tmp199, <variable>.PPicFound
	str	r5, [r4, ip]	@ tmp241, <variable>.DSD_NeedClearQue
	bl	VCTRL_GetChanIDByCtx	@
	movw	r3, #52840	@ tmp242,
	cmn	r0, #1	@ D.40097,
	str	r0, [r4, r3]	@ D.40097, <variable>.ChanID
	beq	.L1825	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp199
	bl	ClearAll	@
	mov	r0, r5	@ D.40073, tmp241
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1836:
	bl	__memzero	@
	b	.L1829	@
.L1835:
	bl	__memzero	@
	ldr	r3, [r4, r5]	@ prephitmp.5208, <variable>.MaxPpsNum
	b	.L1827	@
.L1834:
	mov	r0, r2	@, D.40055
	bl	__memzero	@
	ldr	r0, [r4, r6]	@ prephitmp.5210, <variable>.PPS
	b	.L1828	@
	.fnend
	.size	H264DEC_Init, .-H264DEC_Init
	.align	2
	.global	AllocFrameStore
	.type	AllocFrameStore, %function
AllocFrameStore:
	.fnstart
.LFB1679:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #20681	@ tmp160,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	str	r1, [sp, #4]	@ IsDecGap, %sfp
	beq	.L1879	@,
	movw	r0, #20682	@ tmp162,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.bottom_field_flag, <variable>.CurrSlice.bottom_field_flag
	cmp	r3, #0	@ <variable>.CurrSlice.bottom_field_flag,
	movne	r3, #2	@,
	moveq	r3, #1	@,
.L1879:
	movw	r2, #52768	@ tmp164,
	str	r3, [sp, #0]	@, %sfp
	ldr	r1, [r4, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r1, #2	@ <variable>.OldDecMode,
	beq	.L1845	@,
	ldr	r3, [sp, #0]	@, %sfp
	movw	ip, #49705	@ tmp169,
	mov	r5, #0	@ tmp170,
	strb	r5, [r4, ip]	@ tmp170, <variable>.CurrPic.field_pair_flag
	cmp	r3, #2	@,
	beq	.L1884	@,
	ldr	r2, [sp, #0]	@, %sfp
	cmp	r2, #1	@,
	beq	.L1885	@,
.L1845:
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
.L1880:
	strb	r2, [r4, r3]	@ tmp209, <variable>.CurrPic.field_pair_flag
.L1842:
	movw	r3, #51316	@ tmp214,
	mov	r5, #0	@ tmp212,
	ldr	r7, [r4, r3]	@ D.35930, <variable>.TotalFsNum
	movw	lr, #49704	@ tmp211,
	strb	r5, [r4, lr]	@ tmp212, <variable>.CurrPic.state
	cmp	r7, r5	@ D.35930,
	beq	.L1852	@,
	add	r6, r4, #27136	@ ivtmp.5268, pH264Ctx,
	add	r8, r4, #26368	@ ivtmp.5263, pH264Ctx,
	add	r6, r6, #169	@ ivtmp.5268, ivtmp.5268,
	add	r8, r8, #68	@ ivtmp.5263, ivtmp.5263,
	mov	sl, #560	@ tmp364,
	movw	r9, #26628	@ tmp365,
	movw	fp, #26432	@ tmp366,
.L1858:
	ldrb	r0, [r6, #0]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r0, #0	@ <variable>.is_used,
	bne	.L1853	@,
	mul	r1, sl, r5	@ tmp217, tmp364, i
	add	r2, r1, #27136	@ tmp219, tmp217,
	add	ip, r2, #168	@ tmp219, tmp219,
	adds	r3, r4, ip	@ D.35926, pH264Ctx, tmp219
	beq	.L1854	@,
	ldr	lr, [r4, r9]	@ D.40504, <variable>.DPB.used_size
	cmp	lr, #0	@ D.40504,
	beq	.L1854	@,
	ldr	ip, [r4, fp]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r3, ip	@ D.35926, <variable>.DPB.fs
	beq	.L1853	@,
	tst	lr, #1	@ D.40504,
	mov	r1, r8	@ ivtmp.5263, ivtmp.5263
	bne	.L1855	@,
	mov	r0, #1	@ i,
	cmp	r0, lr	@ i, D.40504
	bcs	.L1854	@,
	mov	r1, r8	@ ivtmp.5263, ivtmp.5263
	ldr	ip, [r1], #4	@ D.40505, <variable>.DPB.fs
	cmp	r3, ip	@ D.35926, D.40505
	bne	.L1855	@,
	b	.L1853	@
.L1856:
	ldr	ip, [r2], #4	@ D.40505, <variable>.DPB.fs
	cmp	r3, ip	@ D.35926, D.40505
	beq	.L1853	@,
	ldr	ip, [r1, #4]	@ D.40505, <variable>.DPB.fs
	add	r1, r2, #4	@ ivtmp.5263, tmp373,
	cmp	r3, ip	@ D.35926, D.40505
	beq	.L1853	@,
.L1855:
	add	r0, r0, #1	@ tmp374, i,
	mov	r2, r1	@ tmp373, ivtmp.5263
	cmp	r0, lr	@ tmp374, D.40504
	add	r0, r0, #1	@ i, tmp374,
	bcc	.L1856	@,
.L1854:
	mov	r7, #560	@ tmp235,
	add	sl, r4, #49664	@ tmp363, pH264Ctx,
	mla	r2, r7, r5, r4	@ tmp236, tmp235, i, pH264Ctx
	add	r7, sl, #56	@ tmp363, tmp363,
	movw	r6, #50112	@ tmp228,
	movw	sl, #49704	@ tmp225,
	movw	r9, #50156	@ tmp230,
	mov	r5, #0	@ tmp229,
	add	r8, r2, #27136	@, tmp236,
	str	r3, [r4, r6]	@ D.35926, <variable>.CurrPic.frame_store
	add	r1, r8, #176	@,,
	mov	lr, #101	@ tmp231,
	mov	r8, #1	@ tmp226,
	mov	r2, #392	@,
	strb	r8, [r4, sl]	@ tmp226, <variable>.CurrPic.state
	mov	r0, r7	@, tmp363
	str	r5, [r3, #544]	@ tmp229, <variable>.err_level
	str	lr, [r4, r9]	@ tmp231, <variable>.CurrPic.err_level
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r0, #49900	@ tmp242,
	str	r5, [r4, r0]	@ tmp229, <variable>.CurrPic.fs_image.error_level
	strb	r5, [ip, #3]	@ tmp229, <variable>.mode_skip_flag
	ldr	r1, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r1, #532]	@ tmp229, <variable>.is_displayed
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r5, [r2, #2]	@ tmp229, <variable>.is_reference
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ tmp226, <variable>.is_in_dpb
	ldr	r9, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r9, #528]	@ tmp229, <variable>.eFoState
	ldrb	r9, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	cmp	r9, r8	@ <variable>.CurrPic.state,
	bne	.L1852	@,
	ldr	r3, [sp, #4]	@, %sfp
	movw	r5, #52840	@ tmp264,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	rsbs	r1, r3, #1	@,
	movcc	r1, #0	@
	bl	FSP_NewLogicFs	@
	mov	r8, r0	@ LogicFsID,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, r8	@, LogicFsID
	bl	FSP_GetLogicFs	@
	subs	r3, r0, #0	@ tmp278, pstLFs,
	movne	r3, #1	@ tmp278
	cmp	r8, #0	@ LogicFsID,
	mov	r5, r0	@ pstLFs,
	movlt	r3, #0	@, tmp278,
	cmp	r3, #0	@ tmp278,
	beq	.L1860	@,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r6, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	r6, #25	@ <variable>.eCapLevel,
	beq	.L1886	@,
.L1861:
	movw	r6, #50112	@ tmp292,
	add	r1, r5, #8	@, pstLFs,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #392	@,
	add	r0, lr, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r7	@, tmp363
	mov	r2, #392	@,
	add	r1, ip, #8	@, <variable>.CurrPic.frame_store,
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	ip, r8	@ prephitmp.5246, LogicFsID
	str	r8, [r3, #508]	@ LogicFsID, <variable>.logic_fs_id
	ldrsb	r1, [r5, #4]	@ <variable>.PmvIdc, <variable>.PmvIdc
	movw	r5, #50180	@ tmp311,
	str	r1, [r4, r5]	@ <variable>.PmvIdc, <variable>.CurrPic.pmv_address_idc
.L1862:
	movw	r5, #20681	@ tmp323,
	ldr	r1, [sp, #0]	@, %sfp
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r2, #50112	@ tmp322,
	ldr	r5, [r4, r2]	@ temp.5287, <variable>.CurrPic.frame_store
	movw	r0, #49707	@ tmp320,
	cmp	r3, #0	@ <variable>.CurrSlice.field_pic_flag,
	uxtb	r2, r1	@ D.35981,
	movw	r1, #49705	@ tmp326,
	strb	r2, [r4, r0]	@ D.35981, <variable>.CurrPic.structure
	movne	r3, #3	@, iftmp.622,
	strb	r3, [r5, #400]	@ iftmp.622, <variable>.frame.structure
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r0, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L1887	@,
	ldr	r1, [sp, #0]	@, %sfp
	movw	r0, #20700	@ tmp347,
	movw	r3, #20712	@ tmp350,
	ldr	r5, [r4, r0]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	r3, #52856	@ tmp353,
	cmp	r1, #0	@,
	ldr	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r3, #50664	@ tmp344,
	strb	r2, [r4, r3]	@ D.35981, <variable>.PrevPic.structure
	movw	r3, #50672	@ tmp346,
	str	r5, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r3, #50668	@ tmp349,
	str	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r3, #50680	@ tmp352,
	str	r1, [r4, r3]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r3, #50684	@ tmp355,
	str	ip, [r4, r3]	@ prephitmp.5246, <variable>.PrevPic.image_id
	movne	r0, #0	@ D.35935,
	ldreq	r0, [sp, #0]	@ D.35935, %sfp
	movne	r3, #50688	@ tmp356,
	moveq	r3, #50688	@ tmp359,
	movne	r2, #1	@ tmp357,
	strneb	r2, [r4, r3]	@ tmp357, <variable>.PrevPic.FrameStoreFlag
	streqb	r0, [r4, r3]	@ D.35935, <variable>.PrevPic.FrameStoreFlag
.L1859:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1853:
	add	r5, r5, #1	@ i, i,
	add	r6, r6, #560	@ ivtmp.5268, ivtmp.5268,
	cmp	r7, r5	@ D.35930, i
	bhi	.L1858	@,
.L1852:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.35935,
	b	.L1859	@
.L1884:
	movw	r1, #50664	@ tmp172,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r0, #1	@ <variable>.PrevPic.structure,
	beq	.L1844	@,
	mov	r2, #0	@ tmp209,
	movw	r3, #49705	@ tmp208,
	b	.L1880	@
.L1885:
	movw	ip, #50664	@ tmp174,
	ldrb	r5, [r4, ip]	@ zero_extendqisi2	@ <variable>.PrevPic.structure, <variable>.PrevPic.structure
	cmp	r5, #2	@ <variable>.PrevPic.structure,
	bne	.L1845	@,
.L1844:
	movw	r0, #52768	@ tmp176,
	ldr	r3, [r4, r0]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #2	@ <variable>.OldDecMode,
	beq	.L1846	@,
	movw	ip, #50672	@ tmp178,
	movw	r5, #20700	@ tmp179,
	ldr	r1, [r4, ip]	@ <variable>.PrevPic.frame_num, <variable>.PrevPic.frame_num
	ldr	r2, [r4, r5]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	cmp	r1, r2	@ <variable>.PrevPic.frame_num, <variable>.CurrSlice.frame_num
	bne	.L1842	@,
.L1846:
	movw	r0, #20712	@ tmp182,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L1847	@,
	movw	r2, #50668	@ tmp184,
	ldr	r1, [r4, r2]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.PrevPic.nal_ref_idc,
	bne	.L1842	@,
.L1848:
	movw	r5, #52856	@ tmp188,
	sub	r2, r5, #4	@ tmp189, tmp189,
	ldr	r1, [r4, r5]	@ <variable>.PicCounter, <variable>.PicCounter
	ldr	r0, [r4, r2]	@ <variable>.PrevStorePicCounter, <variable>.PrevStorePicCounter
	rsb	r3, r0, r1	@ tmp190, <variable>.PrevStorePicCounter, <variable>.PicCounter
	cmp	r3, #2	@ tmp190,
	bhi	.L1842	@,
	movw	ip, #50112	@ tmp196,
	movw	r3, #49705	@ tmp193,
	ldr	r2, [r4, ip]	@ D.35903, <variable>.CurrPic.frame_store
	mov	r1, #1	@ tmp194,
	strb	r1, [r4, r3]	@ tmp194, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ D.35903,
	beq	.L1880	@,
	ldr	r0, [sp, #0]	@, %sfp
	cmp	r0, #2	@,
	beq	.L1888	@,
	ldr	r1, [sp, #0]	@, %sfp
	cmp	r1, #1	@,
	beq	.L1889	@,
.L1851:
	mov	ip, #0	@ prephitmp.5246,
	b	.L1862	@
.L1887:
	movw	r1, #20700	@ tmp332,
	movw	r3, #20712	@ tmp335,
	ldr	r5, [r4, r1]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	r2, #52856	@ tmp338,
	ldr	r0, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r3, #0	@ tmp329,
	ldr	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	movw	r2, #50672	@ tmp331,
	str	r5, [r4, r2]	@ <variable>.CurrSlice.frame_num, <variable>.PrevPic.frame_num
	movw	r2, #50668	@ tmp334,
	str	r0, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	movw	r2, #50680	@ tmp337,
	str	r1, [r4, r2]	@ <variable>.PicCounter, <variable>.PrevPic.pic_counter
	movw	r2, #50684	@ tmp340,
	str	ip, [r4, r2]	@ prephitmp.5246, <variable>.PrevPic.image_id
	mov	r1, #50688	@ tmp341,
	movw	ip, #50664	@ tmp328,
	mov	r0, r3	@ D.35935, tmp329
	strb	r3, [r4, r1]	@ tmp329, <variable>.PrevPic.FrameStoreFlag
	strb	r3, [r4, ip]	@ tmp329, <variable>.PrevPic.structure
	b	.L1859	@
.L1886:
	ldr	r6, [r0, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	movw	r0, #13564	@ tmp281,
	ldr	r3, [r4, r0]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	movw	r2, #13560	@ tmp284,
	ldr	ip, [r4, r2]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	r0, [r5, #112]	@ <variable>.stDispImg.luma_phy_addr, <variable>.stDispImg.luma_phy_addr
	mov	r1, r3, asl #4	@ HeightAligh, <variable>.CurHeightInMb,
	str	r1, [r5, #156]	@ HeightAligh, <variable>.stDispImg.image_height
	mov	lr, ip, asl #4	@ tmp286, <variable>.CurWidthInMb,
	str	lr, [r5, #152]	@ tmp286, <variable>.stDispImg.image_width
	mul	r6, r6, r1	@ ChromOffset, <variable>.stDispImg.image_stride, HeightAligh
	add	r0, r6, r0	@ D.35956, ChromOffset, <variable>.stDispImg.luma_phy_addr
	str	r0, [r5, #116]	@ D.35956, <variable>.stDispImg.chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #128]	@ <variable>.stDispImg.luma_2d_phy_addr, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r1, [r5, #96]	@ <variable>.stDispImg.top_luma_phy_addr, <variable>.stDispImg.top_luma_phy_addr
	add	ip, r6, r3	@ D.35970, ChromOffset, <variable>.stDispImg.luma_2d_phy_addr
	ldr	r2, [r5, #180]	@ <variable>.stDispImg.image_stride, <variable>.stDispImg.image_stride
	add	r6, r6, r1	@ D.35963, ChromOffset, <variable>.stDispImg.top_luma_phy_addr
	str	ip, [r5, #132]	@ D.35970, <variable>.stDispImg.chrom_2d_phy_addr
	add	r2, r6, r2	@ tmp290, D.35963, <variable>.stDispImg.image_stride
	str	r6, [r5, #100]	@ D.35963, <variable>.stDispImg.top_chrom_phy_addr
	str	r2, [r5, #108]	@ tmp290, <variable>.stDispImg.btm_chrom_phy_addr
	str	r0, [r5, #44]	@, <variable>.stDispImg.chrom_vir_addr
	mov	r0, ip	@, D.35970
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #60]	@, <variable>.stDispImg.chrom_2d_vir_addr
	b	.L1861	@
.L1847:
	movw	ip, #50668	@ tmp186,
	ldr	r5, [r4, ip]	@ <variable>.PrevPic.nal_ref_idc, <variable>.PrevPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.PrevPic.nal_ref_idc,
	beq	.L1842	@,
	b	.L1848	@
.L1889:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r5, #2	@ <variable>.is_used,
	beq	.L1851	@,
.L1881:
	mov	r7, #0	@ tmp203,
	strb	r7, [r4, r3]	@ tmp203, <variable>.CurrPic.field_pair_flag
	b	.L1842	@
.L1860:
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r0, r4	@, pH264Ctx
	strb	r3, [r4, sl]	@ tmp278, <variable>.CurrPic.state
	mov	r1, r9	@, <variable>.CurrPic.state
	strb	r3, [r2, #4]	@ tmp278, <variable>.is_in_dpb
	bl	ClearAll	@
	mvn	r0, #0	@ D.35935,
	b	.L1859	@
.L1888:
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r2, r1	@ <variable>.is_used,
	bne	.L1881	@,
	mov	ip, #0	@ prephitmp.5246,
	b	.L1862	@
	.fnend
	.size	AllocFrameStore, .-AllocFrameStore
	.align	2
	.global	OutputFrmToVO
	.type	OutputFrmToVO, %function
OutputFrmToVO:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pH264Ctx,
	cmpne	r1, #0	@, pFrameStore,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movne	r3, #0	@, tmp153
	moveq	r3, #1	@, tmp153
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ pFrameStore, pFrameStore
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r2	@ is_last_frame, is_last_frame
	beq	.L1906	@,
	ldr	r1, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ <variable>.s32DecOrderOutput,
	ble	.L1893	@,
	movw	r2, #52768	@ tmp156,
	ldr	ip, [r0, r2]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	ip, #2	@ <variable>.OldDecMode,
	beq	.L1893	@,
	movw	ip, #50696	@ tmp158,
	ldr	r1, [r0, ip]	@ D.33534, <variable>.pDirectOutBuf
	cmp	r1, #0	@ D.33534,
	strneb	r3, [r1, #1]	@ tmp153, <variable>.is_used
	movne	r0, #1	@ D.33526,
	strne	r3, [r4, ip]	@ tmp153, <variable>.pDirectOutBuf
	bne	.L1892	@,
.L1894:
	mov	r0, #1	@ D.33526,
	b	.L1892	@
.L1893:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmn	r0, #3	@,
	beq	.L1894	@,
	movw	r8, #50696	@ tmp163,
	ldr	r1, [r4, r8]	@ temp.5327, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5327,
	beq	.L1895	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r8]	@, <variable>.pDirectOutBuf
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret.5329
	beq	.L1907	@,
	cmn	r0, #3	@ ret.5329,
	beq	.L1900	@,
	ldr	lr, [r4, r8]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [lr, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L1900:
	movw	r3, #50696	@ tmp210,
	mov	r0, #0	@ tmp211,
	ldr	r1, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [r1, #1]	@ tmp211, <variable>.is_used
	ldr	ip, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, r5	@ <variable>.pDirectOutBuf, pFrameStore
	streq	r0, [r4, r3]	@ tmp211, <variable>.pDirectOutBuf
	beq	.L1892	@,
	str	r0, [r4, r3]	@ tmp211, <variable>.pDirectOutBuf
.L1895:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	GetImagePara	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, pFrameStore
	bl	CheckFrameStore	@
	cmp	r0, #0	@ ret.5344
	beq	.L1908	@,
	cmn	r0, #3	@ ret.5344,
	beq	.L1894	@,
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r5, #184]	@, <variable>.fs_image.image_id
	bl	H264DEC_RecycleImage	@
.L1906:
	mov	r0, #2	@ D.33526,
.L1892:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1908:
	movw	r7, #52840	@ tmp219,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pstLogicFsImage.5348,
	beq	.L1897	@,
	cmp	r6, #1	@ is_last_frame,
	streq	r6, [r7, #224]	@ is_last_frame, <variable>.last_frame
	movw	r6, #52840	@ tmp226,
	mov	r1, #0	@,
	ldr	r0, [r4, r6]	@ <variable>.ChanID, <variable>.ChanID
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r7, [sp, #0]	@ pstLogicFsImage.5348,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L1909	@,
	mov	r1, r7	@, pstLogicFsImage.5348
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r2, #52872	@ tmp230,
	movw	r3, #52864	@ tmp234,
	ldr	ip, [r4, r2]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	r1, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	mov	r0, #0	@ D.33526,
	add	ip, ip, #1	@ tmp233, <variable>.numOutputFrame,
	str	ip, [r4, r2]	@ tmp233, <variable>.numOutputFrame
	add	r2, r1, #2	@ tmp237, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp237, <variable>.PicOutCounter
	b	.L1892	@
.L1907:
	ldr	lr, [r4, r8]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #52840	@ tmp166,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r3, [r4, r8]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r7, r0, #0	@ pstLogicFsImage,
	beq	.L1897	@,
	ldr	r0, [r4, r8]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r8, #52840	@ tmp186,
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	cmp	r6, #1	@ is_last_frame,
	cmpeq	r0, r5	@, <variable>.pDirectOutBuf, pFrameStore
	add	r3, r4, #8	@, pH264Ctx,
	moveq	r0, #1	@ tmp185,
	streq	r0, [r7, #224]	@ tmp185, <variable>.last_frame
	ldr	r0, [r4, r8]	@ <variable>.ChanID, <variable>.ChanID
	str	r7, [sp, #0]	@ pstLogicFsImage,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L1910	@,
	mov	r1, r7	@, pstLogicFsImage
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r1, #52872	@ tmp198,
	movw	r3, #52864	@ tmp202,
	ldr	r2, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	ldr	ip, [r4, r3]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	add	r0, r2, #1	@ tmp201, <variable>.numOutputFrame,
	str	r0, [r4, r1]	@ tmp201, <variable>.numOutputFrame
	add	r2, ip, #2	@ tmp205, <variable>.PicOutCounter,
	str	r2, [r4, r3]	@ tmp205, <variable>.PicOutCounter
	b	.L1900	@
.L1897:
	mvn	r0, #0	@ D.33526,
	b	.L1892	@
.L1909:
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	mov	r2, #0	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.33526,
	b	.L1892	@
.L1910:
	movw	r5, #50696	@ tmp190,
	mov	r6, #0	@ tmp191,
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp191
	strb	r6, [r1, #1]	@ tmp191, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	str	r6, [r4, r5]	@ tmp191, <variable>.pDirectOutBuf
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	ClearAll	@
	mvn	r0, #0	@ D.33526,
	b	.L1892	@
	.fnend
	.size	OutputFrmToVO, .-OutputFrmToVO
	.align	2
	.global	InitDPB
	.type	InitDPB, %function
InitDPB:
	.fnstart
.LFB1672:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ pH264Ctx, pH264Ctx
	beq	.L1912	@,
	bl	ClearAllSlice	@
	movw	r3, #26432	@ tmp190,
	ldr	r3, [r4, r3]	@ temp.5418, <variable>.DPB.fs
	cmp	r3, #0	@ temp.5418,
	beq	.L1913	@,
	movw	r2, #52840	@ tmp191,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1913:
	movw	r0, #26496	@ tmp194,
	ldr	r3, [r4, r0]	@ temp.5417, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5417,
	beq	.L1914	@,
	movw	r5, #52840	@ tmp195,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1914:
	movw	r1, #26560	@ tmp198,
	ldr	r3, [r4, r1]	@ temp.5420, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5420,
	beq	.L1915	@,
	movw	r6, #52840	@ tmp199,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1915:
	movw	r5, #26436	@ tmp208,
	mov	lr, #0	@ tmp203,
	ldr	r2, [r4, r5]	@ temp.5423, <variable>.DPB.fs
	movw	r0, #26432	@ tmp206,
	movw	r3, #26560	@ tmp202,
	movw	ip, #26496	@ tmp204,
	cmp	r2, lr	@ temp.5423,
	str	lr, [r4, r0]	@ tmp203, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp203, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp203, <variable>.DPB.fs_ref
	beq	.L1916	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp209,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1916:
	movw	r1, #26500	@ tmp212,
	ldr	r3, [r4, r1]	@ temp.5426, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5426,
	beq	.L1917	@,
	movw	r6, #52840	@ tmp213,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1917:
	movw	ip, #26564	@ tmp216,
	ldr	r3, [r4, ip]	@ temp.5429, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5429,
	beq	.L1918	@,
	movw	lr, #52840	@ tmp217,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1918:
	movw	r6, #26440	@ tmp226,
	mov	r3, #0	@ tmp221,
	ldr	r2, [r4, r6]	@ temp.5432, <variable>.DPB.fs
	movw	r1, #26436	@ tmp224,
	movw	r5, #26564	@ tmp220,
	movw	r0, #26500	@ tmp222,
	cmp	r2, r3	@ temp.5432,
	str	r3, [r4, r1]	@ tmp221, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp221, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp221, <variable>.DPB.fs_ref
	beq	.L1919	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp227,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1919:
	movw	ip, #26504	@ tmp230,
	ldr	r3, [r4, ip]	@ temp.5435, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5435,
	beq	.L1920	@,
	movw	lr, #52840	@ tmp231,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1920:
	movw	r0, #26568	@ tmp234,
	ldr	r3, [r4, r0]	@ temp.5438, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5438,
	beq	.L1921	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp235,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1921:
	movw	lr, #26444	@ tmp244,
	mov	r6, #0	@ tmp239,
	ldr	r2, [r4, lr]	@ temp.5441, <variable>.DPB.fs
	movw	ip, #26440	@ tmp242,
	movw	r1, #26568	@ tmp238,
	movw	r5, #26504	@ tmp240,
	cmp	r2, r6	@ temp.5441,
	str	r6, [r4, ip]	@ tmp239, <variable>.DPB.fs
	str	r6, [r4, r1]	@ tmp239, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp239, <variable>.DPB.fs_ref
	beq	.L1922	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp245,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1922:
	movw	r0, #26508	@ tmp248,
	ldr	r3, [r4, r0]	@ temp.5444, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5444,
	beq	.L1923	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp249,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1923:
	movw	r5, #26572	@ tmp252,
	ldr	r3, [r4, r5]	@ temp.5447, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5447,
	beq	.L1924	@,
	movw	r6, #52840	@ tmp253,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1924:
	movw	r3, #26448	@ tmp262,
	mov	ip, #0	@ tmp257,
	ldr	r2, [r4, r3]	@ temp.5450, <variable>.DPB.fs
	movw	r0, #26444	@ tmp260,
	movw	lr, #26572	@ tmp256,
	movw	r1, #26508	@ tmp258,
	cmp	r2, ip	@ temp.5450,
	str	ip, [r4, r0]	@ tmp257, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp257, <variable>.DPB.fs_ltref
	str	ip, [r4, r1]	@ tmp257, <variable>.DPB.fs_ref
	beq	.L1925	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp263,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1925:
	movw	r5, #26512	@ tmp266,
	ldr	r3, [r4, r5]	@ temp.5453, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5453,
	beq	.L1926	@,
	movw	r6, #52840	@ tmp267,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1926:
	movw	r1, #26576	@ tmp270,
	ldr	r3, [r4, r1]	@ temp.5456, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5456,
	beq	.L1927	@,
	movw	ip, #52840	@ tmp271,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1927:
	movw	r6, #26452	@ tmp280,
	mov	r0, #0	@ tmp275,
	ldr	r2, [r4, r6]	@ temp.5459, <variable>.DPB.fs
	movw	r5, #26448	@ tmp278,
	movw	r3, #26576	@ tmp274,
	movw	lr, #26512	@ tmp276,
	cmp	r2, r0	@ temp.5459,
	str	r0, [r4, r5]	@ tmp275, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp275, <variable>.DPB.fs_ltref
	str	r0, [r4, lr]	@ tmp275, <variable>.DPB.fs_ref
	beq	.L1928	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp281,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1928:
	movw	r1, #26516	@ tmp284,
	ldr	r3, [r4, r1]	@ temp.5462, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5462,
	beq	.L1929	@,
	movw	ip, #52840	@ tmp285,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1929:
	movw	lr, #26580	@ tmp288,
	ldr	r3, [r4, lr]	@ temp.5465, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5465,
	beq	.L1930	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp289,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1930:
	movw	ip, #26456	@ tmp298,
	mov	r5, #0	@ tmp293,
	ldr	r2, [r4, ip]	@ temp.5468, <variable>.DPB.fs
	movw	r1, #26452	@ tmp296,
	movw	r6, #26580	@ tmp292,
	movw	r0, #26516	@ tmp294,
	cmp	r2, r5	@ temp.5468,
	str	r5, [r4, r1]	@ tmp293, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp293, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp293, <variable>.DPB.fs_ref
	beq	.L1931	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp299,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1931:
	movw	lr, #26520	@ tmp302,
	ldr	r3, [r4, lr]	@ temp.5471, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5471,
	beq	.L1932	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp303,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1932:
	movw	r0, #26584	@ tmp306,
	ldr	r3, [r4, r0]	@ temp.5474, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5474,
	beq	.L1933	@,
	movw	r5, #52840	@ tmp307,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1933:
	movw	r3, #26460	@ tmp316,
	mov	ip, #0	@ tmp311,
	ldr	r2, [r4, r3]	@ temp.5477, <variable>.DPB.fs
	movw	lr, #26456	@ tmp314,
	movw	r1, #26584	@ tmp310,
	movw	r6, #26520	@ tmp312,
	cmp	r2, ip	@ temp.5477,
	str	ip, [r4, lr]	@ tmp311, <variable>.DPB.fs
	str	ip, [r4, r1]	@ tmp311, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp311, <variable>.DPB.fs_ref
	beq	.L1934	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp317,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1934:
	movw	r0, #26524	@ tmp320,
	ldr	r3, [r4, r0]	@ temp.5480, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5480,
	beq	.L1935	@,
	movw	r5, #52840	@ tmp321,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1935:
	movw	r6, #26588	@ tmp324,
	ldr	r3, [r4, r6]	@ temp.5483, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5483,
	beq	.L1936	@,
	movw	ip, #52840	@ tmp325,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1936:
	movw	r5, #26464	@ tmp334,
	mov	lr, #0	@ tmp329,
	ldr	r2, [r4, r5]	@ temp.5486, <variable>.DPB.fs
	movw	r0, #26460	@ tmp332,
	movw	r3, #26588	@ tmp328,
	movw	r1, #26524	@ tmp330,
	cmp	r2, lr	@ temp.5486,
	str	lr, [r4, r0]	@ tmp329, <variable>.DPB.fs
	str	lr, [r4, r3]	@ tmp329, <variable>.DPB.fs_ltref
	str	lr, [r4, r1]	@ tmp329, <variable>.DPB.fs_ref
	beq	.L1937	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp335,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1937:
	movw	r6, #26528	@ tmp338,
	ldr	r3, [r4, r6]	@ temp.5489, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5489,
	beq	.L1938	@,
	movw	ip, #52840	@ tmp339,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1938:
	movw	r1, #26592	@ tmp342,
	ldr	r3, [r4, r1]	@ temp.5492, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5492,
	beq	.L1939	@,
	movw	lr, #52840	@ tmp343,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1939:
	movw	ip, #26468	@ tmp352,
	mov	r3, #0	@ tmp347,
	ldr	r2, [r4, ip]	@ temp.5495, <variable>.DPB.fs
	movw	r6, #26464	@ tmp350,
	movw	r5, #26592	@ tmp346,
	movw	r0, #26528	@ tmp348,
	cmp	r2, r3	@ temp.5495,
	str	r3, [r4, r6]	@ tmp347, <variable>.DPB.fs
	str	r3, [r4, r5]	@ tmp347, <variable>.DPB.fs_ltref
	str	r3, [r4, r0]	@ tmp347, <variable>.DPB.fs_ref
	beq	.L1940	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp353,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1940:
	movw	r1, #26532	@ tmp356,
	ldr	r3, [r4, r1]	@ temp.5498, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5498,
	beq	.L1941	@,
	movw	lr, #52840	@ tmp357,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1941:
	movw	r0, #26596	@ tmp360,
	ldr	r3, [r4, r0]	@ temp.5501, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5501,
	beq	.L1942	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp361,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1942:
	movw	lr, #26472	@ tmp370,
	mov	r6, #0	@ tmp365,
	ldr	r2, [r4, lr]	@ temp.5504, <variable>.DPB.fs
	movw	r1, #26468	@ tmp368,
	movw	ip, #26596	@ tmp364,
	movw	r5, #26532	@ tmp366,
	cmp	r2, r6	@ temp.5504,
	str	r6, [r4, r1]	@ tmp365, <variable>.DPB.fs
	str	r6, [r4, ip]	@ tmp365, <variable>.DPB.fs_ltref
	str	r6, [r4, r5]	@ tmp365, <variable>.DPB.fs_ref
	beq	.L1943	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp371,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1943:
	movw	r0, #26536	@ tmp374,
	ldr	r3, [r4, r0]	@ temp.5507, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5507,
	beq	.L1944	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp375,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1944:
	movw	r5, #26600	@ tmp378,
	ldr	r3, [r4, r5]	@ temp.5510, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5510,
	beq	.L1945	@,
	movw	r6, #52840	@ tmp379,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1945:
	movw	r3, #26476	@ tmp388,
	mov	lr, #0	@ tmp383,
	ldr	r2, [r4, r3]	@ temp.5513, <variable>.DPB.fs
	movw	r0, #26472	@ tmp386,
	movw	r1, #26600	@ tmp382,
	movw	ip, #26536	@ tmp384,
	cmp	r2, lr	@ temp.5513,
	str	lr, [r4, r0]	@ tmp383, <variable>.DPB.fs
	str	lr, [r4, r1]	@ tmp383, <variable>.DPB.fs_ltref
	str	lr, [r4, ip]	@ tmp383, <variable>.DPB.fs_ref
	beq	.L1946	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp389,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1946:
	movw	r5, #26540	@ tmp392,
	ldr	r3, [r4, r5]	@ temp.5516, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5516,
	beq	.L1947	@,
	movw	r6, #52840	@ tmp393,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1947:
	movw	ip, #26604	@ tmp396,
	ldr	r3, [r4, ip]	@ temp.5519, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5519,
	beq	.L1948	@,
	movw	lr, #52840	@ tmp397,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1948:
	movw	r6, #26480	@ tmp406,
	mov	r0, #0	@ tmp401,
	ldr	r2, [r4, r6]	@ temp.5522, <variable>.DPB.fs
	movw	r5, #26476	@ tmp404,
	movw	r3, #26604	@ tmp400,
	movw	r1, #26540	@ tmp402,
	cmp	r2, r0	@ temp.5522,
	str	r0, [r4, r5]	@ tmp401, <variable>.DPB.fs
	str	r0, [r4, r3]	@ tmp401, <variable>.DPB.fs_ltref
	str	r0, [r4, r1]	@ tmp401, <variable>.DPB.fs_ref
	beq	.L1949	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp407,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1949:
	movw	ip, #26544	@ tmp410,
	ldr	r3, [r4, ip]	@ temp.5525, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5525,
	beq	.L1950	@,
	movw	lr, #52840	@ tmp411,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1950:
	movw	r1, #26608	@ tmp414,
	ldr	r3, [r4, r1]	@ temp.5528, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5528,
	beq	.L1951	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp415,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1951:
	movw	lr, #26484	@ tmp424,
	mov	r5, #0	@ tmp419,
	ldr	r2, [r4, lr]	@ temp.5531, <variable>.DPB.fs
	movw	ip, #26480	@ tmp422,
	movw	r6, #26608	@ tmp418,
	movw	r0, #26544	@ tmp420,
	cmp	r2, r5	@ temp.5531,
	str	r5, [r4, ip]	@ tmp419, <variable>.DPB.fs
	str	r5, [r4, r6]	@ tmp419, <variable>.DPB.fs_ltref
	str	r5, [r4, r0]	@ tmp419, <variable>.DPB.fs_ref
	beq	.L1952	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp425,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1952:
	movw	r1, #26548	@ tmp428,
	ldr	r3, [r4, r1]	@ temp.5534, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5534,
	beq	.L1953	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp429,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1953:
	movw	r0, #26612	@ tmp432,
	ldr	r3, [r4, r0]	@ temp.5537, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5537,
	beq	.L1954	@,
	movw	r5, #52840	@ tmp433,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1954:
	movw	r3, #26488	@ tmp442,
	mov	ip, #0	@ tmp437,
	ldr	r2, [r4, r3]	@ temp.5540, <variable>.DPB.fs
	movw	r1, #26484	@ tmp440,
	movw	lr, #26612	@ tmp436,
	movw	r6, #26548	@ tmp438,
	cmp	r2, ip	@ temp.5540,
	str	ip, [r4, r1]	@ tmp437, <variable>.DPB.fs
	str	ip, [r4, lr]	@ tmp437, <variable>.DPB.fs_ltref
	str	ip, [r4, r6]	@ tmp437, <variable>.DPB.fs_ref
	beq	.L1955	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp443,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1955:
	movw	r0, #26552	@ tmp446,
	ldr	r3, [r4, r0]	@ temp.5543, <variable>.DPB.fs_ref
	cmp	r3, #0	@ temp.5543,
	beq	.L1956	@,
	movw	r5, #52840	@ tmp447,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1956:
	movw	r6, #26616	@ tmp450,
	ldr	r3, [r4, r6]	@ temp.5546, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ temp.5546,
	beq	.L1957	@,
	movw	ip, #52840	@ tmp451,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1957:
	movw	r5, #26492	@ tmp460,
	mov	r3, #0	@ tmp455,
	ldr	r2, [r4, r5]	@ D.35423, <variable>.DPB.fs
	movw	r0, #26488	@ tmp458,
	movw	r1, #26616	@ tmp454,
	movw	lr, #26552	@ tmp456,
	cmp	r2, r3	@ D.35423,
	str	r3, [r4, r0]	@ tmp455, <variable>.DPB.fs
	str	r3, [r4, r1]	@ tmp455, <variable>.DPB.fs_ltref
	str	r3, [r4, lr]	@ tmp455, <variable>.DPB.fs_ref
	beq	.L1958	@,
	ldr	r1, [r2, #508]	@, <variable>.logic_fs_id
	movw	r2, #52840	@ tmp461,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1958:
	movw	r6, #26556	@ tmp464,
	ldr	r3, [r4, r6]	@ D.35428, <variable>.DPB.fs_ref
	cmp	r3, #0	@ D.35428,
	beq	.L1959	@,
	movw	ip, #52840	@ tmp465,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1959:
	movw	lr, #26620	@ tmp468,
	ldr	r3, [r4, lr]	@ D.35432, <variable>.DPB.fs_ltref
	cmp	r3, #0	@ D.35432,
	beq	.L1960	@,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	movw	r3, #52840	@ tmp469,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1960:
	movw	r5, #50696	@ tmp490,
	movw	r3, #17568	@ tmp479,
	ldr	r1, [r4, r5]	@ D.35438, <variable>.pDirectOutBuf
	mov	ip, #26624	@ tmp478,
	ldr	lr, [r4, r3]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	movw	r6, #26620	@ tmp472,
	movw	r0, #26556	@ tmp474,
	cmp	r1, #0	@ D.35438,
	sub	r2, lr, #1	@ tmp481, <variable>.CurrSPS.dpb_size_plus1,
	movw	r3, #26492	@ tmp476,
	str	r2, [r4, ip]	@ tmp481, <variable>.DPB.size
	movw	lr, #26628	@ tmp482,
	mov	r2, #0	@ tmp473,
	movw	ip, #26632	@ tmp484,
	str	r2, [r4, r6]	@ tmp473, <variable>.DPB.fs_ltref
	movw	r6, #26636	@ tmp486,
	str	r2, [r4, r0]	@ tmp473, <variable>.DPB.fs_ref
	movw	r0, #26640	@ tmp488,
	str	r2, [r4, r3]	@ tmp473, <variable>.DPB.fs
	str	r2, [r4, lr]	@ tmp473, <variable>.DPB.used_size
	str	r2, [r4, ip]	@ tmp473, <variable>.DPB.ref_frames_in_buffer
	str	r2, [r4, r6]	@ tmp473, <variable>.DPB.ltref_frames_in_buffer
	str	r2, [r4, r0]	@ tmp473, <variable>.DPB.max_long_term_pic_idx
	beq	.L1961	@,
	movw	r6, #52768	@ tmp491,
	ldr	r0, [r4, r6]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r0, #2	@ <variable>.OldDecMode,
	beq	.L1975	@,
.L1962:
	movw	r5, #50112	@ tmp495,
	ldr	r3, [r4, r5]	@ D.35449, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.35449,
	beq	.L1963	@,
	movw	r2, #52840	@ tmp496,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
.L1963:
	movw	lr, #50696	@ tmp499,
	mov	ip, #0	@ tmp500,
	str	ip, [r4, lr]	@ tmp500, <variable>.pDirectOutBuf
.L1961:
	add	lr, r4, #26624	@, pH264Ctx,
	mov	r1, #392	@,
	add	r0, lr, #20	@,,
	mov	r5, #26624	@ tmp504,
	bl	__memzero	@
	ldr	r1, [r4, r5]	@ <variable>.DPB.size, <variable>.DPB.size
	movw	r6, #26900	@ tmp503,
	movw	r2, #26904	@ tmp506,
	movw	ip, #51248	@ tmp508,
	mov	r3, #0	@ tmp507,
	str	r1, [r4, r6]	@ <variable>.DPB.size, <variable>.APC.size
	movw	r6, #51252	@ tmp510,
	movw	r1, #51256	@ tmp512,
	str	r3, [r4, ip]	@ tmp507, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r2]	@ tmp507, <variable>.APC.used_size
	movw	r2, #51260	@ tmp514,
	str	r3, [r4, r6]	@ tmp507, <variable>.PmvStoreUsedFlag
	add	r0, r4, #20480	@ ivtmp.5407, pH264Ctx,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r1, #51264	@ tmp516,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51268	@ tmp518,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r1, #51272	@ tmp520,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51276	@ tmp522,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r1, #51280	@ tmp524,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51284	@ tmp526,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r1, #51288	@ tmp528,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51292	@ tmp530,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r1, #51296	@ tmp532,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	add	r0, r0, #244	@ ivtmp.5407, ivtmp.5407,
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51300	@ tmp534,
	movw	r1, #51304	@ tmp536,
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	mov	r5, r3	@ i, tmp507
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
	movw	r2, #51308	@ tmp538,
	movw	r1, #51312	@ tmp540,
	mov	ip, r3	@ j, i
	mov	r6, r3	@ tmp555, i
	str	r3, [r4, r2]	@ tmp507, <variable>.PmvStoreUsedFlag
	str	r3, [r4, r1]	@ tmp507, <variable>.PmvStoreUsedFlag
.L1964:
	add	r2, r5, r5, asl #5	@, tmp547, i, i,
	mov	r1, #1	@ j,
	mov	lr, r2, asl #2	@ tmp548, tmp547,
	add	r3, lr, #26880	@ tmp549, tmp548,
	add	r2, r3, #152	@ tmp549, tmp549,
	add	lr, r4, r2	@ tmp551, pH264Ctx, tmp549
	add	r2, lr, #8	@ ivtmp.5399, tmp551,
	str	ip, [lr, #4]	@ j, <variable>.pListX
.L1965:
	add	r1, r1, #2	@ j, j,
	mov	r3, r2	@ tmp559, ivtmp.5399
	cmp	r1, #33	@ j,
	str	ip, [r3], #4	@ j, <variable>.pListX
	str	ip, [r2, #4]	@ j, <variable>.pListX
	add	r2, r3, #4	@ ivtmp.5399, tmp559,
	bne	.L1965	@,
	add	r5, r5, #1	@ i, i,
	str	r6, [r0], #4	@ tmp555, <variable>.CurrSlice.listXsize
	cmp	r5, #2	@ i,
	bne	.L1964	@,
	mov	r0, r6	@ D.35421, tmp555
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1912:
	mvn	r0, #0	@ D.35421,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1975:
	mov	r0, r4	@, pH264Ctx
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, #0	@ <variable>.pDirectOutBuf,
	bne	.L1962	@,
	b	.L1961	@
	.fnend
	.size	InitDPB, .-InitDPB
	.align	2
	.global	H264DEC_GetRemainImg
	.type	H264DEC_GetRemainImg, %function
H264DEC_GetRemainImg:
	.fnstart
.LFB1640:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r7, #26628	@ tmp148,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	.pad #4
	sub	sp, sp, #4	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L1977	@,
	add	r5, r0, #26368	@ ivtmp.5581, pH264Ctx,
	mov	r6, #0	@ i,
	add	r5, r5, #64	@ ivtmp.5581, ivtmp.5581,
	b	.L1979	@
.L1978:
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bls	.L1977	@,
.L1979:
	ldr	r1, [r5, #0]	@ D.34016, <variable>.DPB.fs
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #4	@ ivtmp.5581, ivtmp.5581,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L1978	@,
	mov	r0, r4	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r4, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r6	@ <variable>.DPB.used_size, i
	bhi	.L1979	@,
.L1977:
	mov	r0, r4	@, pH264Ctx
	add	r7, r4, #26368	@ ivtmp.5576, pH264Ctx,
	bl	RemoveUnUsedFrameStore	@
	add	r7, r7, #64	@ ivtmp.5576, ivtmp.5576,
	movw	r8, #26628	@ tmp175,
	mov	sl, #26624	@ tmp176,
	mov	r9, #0	@ pos,
	mov	fp, r0	@ ret,
.L1999:
	ldr	r3, [r4, r8]	@ temp.5584, <variable>.DPB.used_size
	cmp	r3, #0	@ temp.5584,
	beq	.L2004	@,
.L1987:
	ldr	ip, [r4, sl]	@ D.40516, <variable>.DPB.size
	cmp	r3, ip	@ temp.5584, D.40516
	movls	ip, r3	@ D.40516, temp.5584
	bls	.L1982	@,
	cmp	ip, #0	@ D.40516,
	str	ip, [r4, r8]	@ D.40516, <variable>.DPB.used_size
	moveq	r5, ip	@ pos, D.40516
	beq	.L1983	@,
.L1982:
	tst	ip, #1	@ D.40516,
	mov	r5, #0	@ pos,
	mov	r2, r7	@ ivtmp.5576, ivtmp.5576
	mov	r0, r5	@ pos.5588, pos
	mvn	r1, #-2147483648	@ min_poc.5590,
	bne	.L1989	@,
	ldr	r3, [r7, #0]	@ D.40513, <variable>.DPB.fs
	ldr	r1, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L1993	@,
	ldrb	r3, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r3, #0	@ <variable>.is_in_dpb,
	beq	.L1993	@,
	mov	r0, #1	@ pos.5588,
	cmp	ip, r0	@ D.40516, pos.5588
	add	r2, r7, #4	@ ivtmp.5576, ivtmp.5576,
	bls	.L1983	@,
.L1989:
	ldr	lr, [r2, #0]	@ D.40513, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5590
	bge	.L1984	@,
.L2005:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r5, r0	@ pos, pos.5588
	beq	.L1984	@,
	add	r0, r0, #1	@ tmp186, pos.5588,
	add	lr, r2, #4	@ tmp187, ivtmp.5576,
	cmp	ip, r0	@ D.40516, tmp186
	bls	.L1983	@,
.L1986:
	ldr	r2, [r2, #4]	@ D.40513, <variable>.DPB.fs
	ldr	r1, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L1996	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L1996	@,
	mov	r5, r0	@ pos, tmp186
.L2003:
	add	r2, lr, #4	@ ivtmp.5576, tmp187,
	add	r0, r0, #1	@ pos.5588, tmp186,
	ldr	lr, [r2, #0]	@ D.40513, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.5590
	blt	.L2005	@,
.L1984:
	add	r0, r0, #1	@ tmp186, pos.5588,
	mov	r3, r1	@ min_poc, min_poc.5590
	cmp	ip, r0	@ D.40516, tmp186
	add	lr, r2, #4	@ tmp187, ivtmp.5576,
	bhi	.L1986	@,
.L1983:
	add	r6, r5, #6592	@ tmp157, pos,
	mov	r0, r4	@, pH264Ctx
	add	r6, r6, #16	@ tmp157, tmp157,
	ldr	fp, [r4, r6, asl #2]	@ tmp159, <variable>.DPB.fs
	strb	r9, [fp, #4]	@ pos, <variable>.is_in_dpb
	ldr	r2, [r4, r8]	@, <variable>.DPB.used_size
	ldr	r1, [r4, r6, asl #2]	@, <variable>.DPB.fs
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r6, asl #2]	@ tmp169, <variable>.DPB.fs
	ldrb	r2, [ip, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r2, #0	@ <variable>.is_reference,
	mov	fp, r0	@ ret,
	bne	.L1999	@,
	mov	r1, r5	@, pos
	mov	r0, r4	@, pH264Ctx
	bl	RemoveFrameStoreOutDPB	@
	ldr	r3, [r4, r8]	@ temp.5584, <variable>.DPB.used_size
	cmp	r3, #0	@ temp.5584,
	bne	.L1987	@,
.L2004:
	cmp	fp, #0	@ ret,
	bne	.L2006	@,
	mov	r0, fp	@, ret
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1993:
	mov	r0, #1	@ pos.5588,
	cmp	ip, r0	@ D.40516, pos.5588
	mvn	r1, #-2147483648	@ min_poc,
	add	r2, r7, #4	@ ivtmp.5576, ivtmp.5576,
	bhi	.L1989	@,
	b	.L1983	@
.L1996:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2003	@
.L2006:
	add	r0, r4, #8	@, pH264Ctx,
	add	sp, sp, #4	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	GetVoLastImageID	@
	.fnend
	.size	H264DEC_GetRemainImg, .-H264DEC_GetRemainImg
	.align	2
	.global	DirectOutput
	.type	DirectOutput, %function
DirectOutput:
	.fnstart
.LFB1638:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #49707	@ tmp190,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldrb	r3, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #1	@ <variable>.CurrPic.structure,
	beq	.L2010	@,
	bcc	.L2009	@,
	cmp	r3, #2	@ <variable>.CurrPic.structure,
	movne	r6, #0	@ ret,
	beq	.L2054	@,
.L2012:
	mov	r0, r6	@, ret
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L2009:
	movw	r6, #50112	@ tmp193,
	movw	r5, #50696	@ tmp196,
	ldr	r1, [r0, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp194,
	strb	r2, [r1, #400]	@ tmp194, <variable>.frame.structure
	ldr	r1, [r0, r5]	@ temp.5644, <variable>.pDirectOutBuf
	cmp	r1, r2	@ temp.5644,
	beq	.L2013	@,
	bl	OutputFrmToVO	@
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, #0	@ <variable>.pDirectOutBuf,
	beq	.L2014	@,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r2, #52840	@ tmp199,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [r5, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2014:
	movw	r7, #50696	@ tmp204,
	mov	r6, #0	@ tmp205,
	str	r6, [r4, r7]	@ tmp205, <variable>.pDirectOutBuf
.L2013:
	movw	r7, #50112	@ tmp206,
	movw	r5, #50696	@ tmp207,
	ldr	r8, [r4, r7]	@ temp.5647, <variable>.CurrPic.frame_store
	mov	r6, #0	@ tmp229,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	str	r8, [r4, r5]	@ temp.5647, <variable>.pDirectOutBuf
	str	r8, [r8, #404]	@ temp.5647, <variable>.frame.frame_store
	movw	r8, #52840	@ tmp263,
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	ip, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [lr, #440]	@ <variable>.CurrPic.frame_store, <variable>.top_field.frame_store
	movw	lr, #49706	@ tmp220,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r3, #476]	@ <variable>.CurrPic.frame_store, <variable>.bottom_field.frame_store
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	lr, #3	@ tmp225,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r3, #1]	@ tmp225, <variable>.is_used
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [ip, #2]	@ tmp229, <variable>.is_reference
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r0, #4]	@ tmp229, <variable>.is_in_dpb
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r6, [r3, #532]	@ tmp229, <variable>.is_displayed
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r2, #50156	@ tmp246,
	ldr	ip, [r4, r2]	@ D.33870, <variable>.CurrPic.err_level
	movw	r3, #50148	@ tmp253,
	ldr	r1, [r4, r5]	@ temp.5659, <variable>.pDirectOutBuf
	mov	r2, r6	@, tmp229
	str	ip, [r1, #544]	@ D.33870, <variable>.err_level
	str	ip, [r1, #420]	@ D.33870, <variable>.frame.err_level
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r6, [r0, #400]	@ tmp229, <variable>.frame.structure
	movw	r0, #49713	@ tmp257,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r1, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r1, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	ip, #49711	@ tmp260,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.CurrPic.MbaffFrameFlag
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r3, #536]	@ <variable>.CurrPic.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r0, [r4, r5]	@ temp.5663, <variable>.pDirectOutBuf
	cmp	r1, #1	@ <variable>.CurrPic.mode_skip_flag,
	movne	r1, r6	@ iftmp.509, tmp2
	moveq	r1, #3	@ iftmp.509,
	strb	r1, [r0, #3]	@ iftmp.509, <variable>.mode_skip_flag
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r2, r6	@, tmp229
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	ip, #0	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2045	@,
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
.L2045:
	movw	r2, #50696	@ tmp661,
	mov	r0, #0	@ tmp662,
	str	r0, [r4, r2]	@ tmp662, <variable>.pDirectOutBuf
	b	.L2012	@
.L2010:
	movw	r5, #50112	@ tmp280,
	movw	r7, #49705	@ tmp283,
	ldr	r2, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r6, #3	@ tmp281,
	strb	r6, [r2, #400]	@ tmp281, <variable>.frame.structure
	ldrb	r2, [r0, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2018	@,
	movw	r7, #50696	@ tmp285,
	ldr	r1, [r0, r7]	@ temp.5672, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5672,
	beq	.L2019	@,
	bl	OutputFrmToVO	@
	mov	r6, r0	@ ret,
	ldr	r0, [r4, r5]	@ temp.5673, <variable>.CurrPic.frame_store
	str	r0, [r4, r7]	@ temp.5673, <variable>.pDirectOutBuf
	str	r0, [r0, #440]	@ temp.5673, <variable>.top_field.frame_store
.L2020:
	movw	r5, #50696	@ tmp293,
	movw	r7, #49706	@ tmp294,
	ldrb	r0, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #1	@ tmp299,
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp303,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	strb	r0, [ip, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp299, <variable>.is_used
	movw	lr, #50148	@ tmp314,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp303, <variable>.is_in_dpb
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #532]	@ tmp303, <variable>.is_displayed
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r0, #2]	@ tmp303, <variable>.is_reference
	ldr	ip, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r3, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #536]	@ tmp303, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r3, #50156	@ tmp328,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r1, [r2, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	movw	r2, #49711	@ tmp337,
	ldr	ip, [r4, r5]	@ temp.5688, <variable>.pDirectOutBuf
	ldr	r0, [ip, #456]	@ D.33891, <variable>.top_field.err_level
	str	r0, [ip, #544]	@ D.33891, <variable>.err_level
	str	r0, [ip, #420]	@ D.33891, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #436]	@ tmp299, <variable>.top_field.structure
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r1, r8	@ <variable>.CurrPic.mode_skip_flag,
	movne	r2, #0	@, tmp339
	moveq	r2, #1	@, tmp339
	b	.L2053	@
.L2054:
	movw	r5, #50112	@ tmp473,
	movw	r8, #49705	@ tmp476,
	ldr	ip, [r0, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	lr, #3	@ tmp474,
	strb	lr, [ip, #400]	@ tmp474, <variable>.frame.structure
	ldrb	r2, [r0, r8]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r2, #0	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2055	@,
	movw	sl, #50696	@ tmp550,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5735, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5735,
	ldreq	lr, [r0, r5]	@ temp.5762, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5762, <variable>.pDirectOutBuf
	streq	lr, [lr, #476]	@ temp.5762, <variable>.bottom_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5735, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5735,
	ldrd	r8, [lr, #24]	@, prephitmp.5735,
	ldr	r5, [lr, #16]	@ OtherFieldPts.5763, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts.5763, <variable>.fs_image.PTS
	strd	r8, [sp, #8]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5735,
	strd	r8, [sp]	@, %sfp
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag.5766, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance.5767, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame.5768, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum.5769, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	r3, r4, #49664	@ tmp568, pH264Ctx,
	movw	r2, #49728	@ tmp562,
	add	r1, r3, #64	@ tmp568, tmp568,
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r2, r5, r6	@ tmp560, OtherFieldPts.5763, OtherFieldPts.5763
	ldr	ip, [r1, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r3, r0, ip	@ tmp564, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r0, #50696	@ tmp577,
	cmn	r3, #1	@ tmp564,
	movne	r1, #0	@, tmp573
	moveq	r1, #1	@, tmp573
	cmn	r2, #1	@ tmp560,
	movw	r3, #49736	@ tmp578,
	moveq	r1, #0	@, tmp573,
	cmp	r1, #0	@ tmp573,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp578, pH264Ctx
	movwne	r1, #50696	@ tmp575,
	ldrne	r1, [r4, r1]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r1, #16]	@ OtherFieldPts.5763, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp581,
	strne	r6, [r1, #20]	@ OtherFieldPts.5763, <variable>.fs_image.PTS
	ldr	r6, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #8]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp582,
	strd	r2, [r6, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp]	@, %sfp
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp582, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp]	@ <variable>.CurrPic.fs_image.DispTime, %sfp
.L2040:
	movw	lr, #50696	@ tmp585,
	movw	r6, #49788	@ tmp586,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	r2, #49792	@ tmp591,
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp596,
	ldr	r5, [r4, r6]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp601,
	ldr	r3, [r4, r2]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r0, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	r5, sl	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.5766
	strls	r5, [ip, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [ip, #76]	@, OtherFieldDispEnableFlag.5766, <variable>.fs_image.DispEnableFlag
	ldr	r6, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	r1, #50148	@ tmp614,
	cmp	r3, r8	@ <variable>.CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance.5767
	strls	r3, [r6, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r8, [r6, #80]	@, OtherFieldDispFrameDistance.5767, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, r7	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.5768
	strls	r0, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r7, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame.5768, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	ip, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum.5769
	strls	r5, [ip, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [ip, #88]	@, OtherFieldGopNum.5769, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5793, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp606,
	moveq	r5, r3	@ iftmp.519, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.519, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp608,
	strb	r5, [r6, #0]	@ iftmp.519, <variable>.non_existing
	ldr	r2, [r4, r3]	@ temp.5795, <variable>.pDirectOutBuf
	ldrb	r7, [r2, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	lr, r7, #2	@ tmp611, <variable>.is_used,
	strb	lr, [r2, #1]	@ tmp611, <variable>.is_used
	ldr	r0, [r4, r3]	@ temp.5798, <variable>.pDirectOutBuf
	mov	r7, #2	@ tmp620,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	movw	r1, #50156	@ tmp628,
	mov	lr, #3	@ tmp624,
	ldr	r6, [r0, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, ip	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r0, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	ip, [r0, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #472]	@ tmp620, <variable>.bottom_field.structure
	ldr	r2, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	lr, [r2, #400]	@ tmp624, <variable>.frame.structure
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	ip, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	ldr	r2, [r4, r3]	@ temp.5805, <variable>.pDirectOutBuf
	ldr	r6, [r2, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [r2, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp631, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp639,
	mov	lr, r7, lsr #1	@ tmp634, tmp631,
	str	lr, [r2, #420]	@ tmp634, <variable>.frame.err_level
	ldr	r1, [r4, r3]	@ temp.5810, <variable>.pDirectOutBuf
	ldr	r0, [r1, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r0, [r1, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	ip, [r4, r3]	@ temp.5812, <variable>.pDirectOutBuf
	ldr	r6, [ip, #476]	@ <variable>.bottom_field.frame_store, <variable>.bottom_field.frame_store
	str	r6, [ip, #404]	@ <variable>.bottom_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	beq	.L2056	@,
.L2043:
	ldr	r3, [r4, r3]	@ temp.5643, <variable>.pDirectOutBuf
	ldrb	r2, [r3, #3]	@ zero_extendqisi2	@ iftmp.520, <variable>.mode_skip_flag
.L2044:
	movw	r5, #50696	@ tmp650,
	strb	r2, [r3, #3]	@ iftmp.520, <variable>.mode_skip_flag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r7, #52840	@ tmp647,
	mov	r2, #0	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, r4	@, pH264Ctx
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	mov	r2, #0	@,
	bl	OutputFrmToVO	@
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r3, #0	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2045	@,
	movw	r1, #50112	@ tmp659,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	movw	r2, #50696	@ tmp661,
	mov	r0, #0	@ tmp662,
	str	r0, [r4, r2]	@ tmp662, <variable>.pDirectOutBuf
	b	.L2012	@
.L2055:
	movw	r7, #50696	@ tmp478,
	ldr	r1, [r0, r7]	@ temp.5731, <variable>.pDirectOutBuf
	cmp	r1, #0	@ temp.5731,
	beq	.L2032	@,
	bl	OutputFrmToVO	@
	ldr	r1, [r4, r5]	@ temp.5732, <variable>.CurrPic.frame_store
	str	r1, [r4, r7]	@ temp.5732, <variable>.pDirectOutBuf
	str	r1, [r1, #476]	@ temp.5732, <variable>.bottom_field.frame_store
	mov	r6, r0	@ ret,
.L2033:
	movw	r5, #50696	@ tmp486,
	movw	r7, #49706	@ tmp487,
	ldrb	ip, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	mov	r8, #2	@ tmp492,
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	mov	r7, #0	@ tmp496,
	add	r1, r4, #49664	@, pH264Ctx,
	mov	r2, #392	@,
	add	r1, r1, #56	@,,
	strb	ip, [r0, #0]	@ <variable>.CurrPic.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [lr, #1]	@ tmp492, <variable>.is_used
	movw	lr, #50148	@ tmp507,
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r3, #4]	@ tmp496, <variable>.is_in_dpb
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [r0, #532]	@ tmp496, <variable>.is_displayed
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [ip, #2]	@ tmp496, <variable>.is_reference
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [r3, #540]	@ <variable>.CurrPic.pic_type, <variable>.pic_type
	ldr	ip, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r7, [ip, #536]	@ tmp496, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, <variable>.pDirectOutBuf,
	bl	memcpy	@
	movw	r3, #50156	@ tmp521,
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r0, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r2, [r0, #492]	@ <variable>.CurrPic.err_level, <variable>.bottom_field.err_level
	movw	r0, #49711	@ tmp529,
	ldr	r1, [r4, r5]	@ temp.5748, <variable>.pDirectOutBuf
	ldr	ip, [r1, #492]	@ temp.5749, <variable>.bottom_field.err_level
	str	ip, [r1, #544]	@ temp.5749, <variable>.err_level
	str	ip, [r1, #420]	@ temp.5749, <variable>.frame.err_level
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r8, [r3, #472]	@ tmp492, <variable>.bottom_field.structure
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	ldr	r3, [r4, r5]	@ temp.5751, <variable>.pDirectOutBuf
	cmp	r2, #1	@ <variable>.CurrPic.mode_skip_flag,
	moveq	r2, r8	@ iftmp.517,
	movne	r2, r7	@ iftmp.517,
.L2053:
	strb	r2, [r3, #3]	@ iftmp.517, <variable>.mode_skip_flag
	movw	r2, #52772	@ tmp532,
	ldr	r8, [r4, r2]	@ <variable>.IModeOutFlag, <variable>.IModeOutFlag
	cmp	r8, #1	@ <variable>.IModeOutFlag,
	bne	.L2012	@,
	ldr	r6, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	sl, #52840	@ tmp534,
	mov	r2, r7	@, tmp496
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, r4	@, pH264Ctx
	mov	r2, r7	@, tmp496
	ldr	r1, [r4, r5]	@, <variable>.pDirectOutBuf
	bl	OutputFrmToVO	@
	ldr	r3, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r3, r7	@ <variable>.pDirectOutBuf,
	mov	r6, r0	@ ret,
	beq	.L2045	@,
	movw	ip, #50112	@ tmp546,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, r8	@, <variable>.IModeOutFlag
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	b	.L2045	@
.L2018:
	movw	sl, #50696	@ tmp359,
	add	r9, r0, #49664	@, pH264Ctx,
	ldr	lr, [r0, sl]	@ prephitmp.5621, <variable>.pDirectOutBuf
	add	r1, r9, #56	@,,
	mov	r2, #392	@,
	cmp	lr, #0	@ prephitmp.5621,
	ldreq	lr, [r0, r5]	@ temp.5700, <variable>.CurrPic.frame_store
	streq	lr, [r0, sl]	@ temp.5700, <variable>.pDirectOutBuf
	streq	lr, [lr, #440]	@ temp.5700, <variable>.top_field.frame_store
	ldreq	lr, [r0, sl]	@ prephitmp.5621, <variable>.pDirectOutBuf
	add	r0, lr, #8	@, prephitmp.5621,
	ldrd	r8, [lr, #24]	@, prephitmp.5621,
	ldr	r5, [lr, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r6, [lr, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	r8, [sp, #8]	@,,
	ldrd	r8, [lr, #32]	@, prephitmp.5621,
	strd	r8, [sp]	@, %sfp
	ldr	sl, [lr, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r8, [lr, #80]	@ OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	r7, [lr, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r9, [lr, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	bl	memcpy	@
	add	ip, r4, #49664	@ tmp377, pH264Ctx,
	movw	r2, #49728	@ tmp371,
	add	r3, ip, #64	@ tmp377, tmp377,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	r2, r5, r6	@ tmp369, OtherFieldPts, OtherFieldPts
	ldr	r0, [r3, #4]	@ <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	and	ip, r1, r0	@ tmp373, <variable>.CurrPic.fs_image.PTS, <variable>.CurrPic.fs_image.PTS
	movw	r0, #50696	@ tmp386,
	cmn	ip, #1	@ tmp373,
	movne	r3, #0	@, tmp382
	moveq	r3, #1	@, tmp382
	cmn	r2, #1	@ tmp369,
	moveq	r3, #0	@, tmp382,
	cmp	r3, #0	@ tmp382,
	movwne	r3, #50696	@ tmp384,
	ldrne	r3, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strne	r5, [r3, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r5, #50696	@ tmp390,
	strne	r6, [r3, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	movw	r3, #49736	@ tmp387,
	ldrd	r2, [r3, r4]	@ <variable>.CurrPic.fs_image.Usertag, tmp387, pH264Ctx
	ldr	r6, [r4, r0]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrd	r0, [sp, #8]	@,,
	cmp	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	cmpeq	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r2, r0	@ <variable>.CurrPic.fs_image.Usertag,
	movhi	r3, r1	@ <variable>.CurrPic.fs_image.Usertag,
	movw	r1, #49744	@ tmp391,
	strd	r2, [r6, #24]	@ <variable>.CurrPic.fs_image.Usertag, <variable>.pDirectOutBuf,
	ldrd	r2, [sp]	@, %sfp
	ldrd	r0, [r1, r4]	@ <variable>.CurrPic.fs_image.DispTime, tmp391, pH264Ctx
	cmp	r1, r3	@ <variable>.CurrPic.fs_image.DispTime,
	cmpeq	r0, r2	@ <variable>.CurrPic.fs_image.DispTime,
	ldr	r2, [r4, r5]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldrhid	r0, [sp]	@ <variable>.CurrPic.fs_image.DispTime, %sfp
.L2025:
	movw	lr, #50696	@ tmp394,
	movw	r3, #49788	@ tmp395,
	strd	r0, [r2, #32]	@ <variable>.CurrPic.fs_image.DispTime, <variable>.pDirectOutBuf,
	movw	r6, #49792	@ tmp400,
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	movw	r0, #49796	@ tmp405,
	ldr	r5, [r4, r3]	@ <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r1, #49800	@ tmp410,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	ldr	r6, [r4, r0]	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	cmp	r5, sl	@ <variable>.CurrPic.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	r5, [r2, #76]	@, <variable>.CurrPic.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r2, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r3, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.fs_image.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	r1, #50148	@ tmp423,
	cmp	ip, r8	@ <variable>.CurrPic.fs_image.DispFrameDistance, OtherFieldDispFrameDistance
	strls	ip, [r3, #80]	@, <variable>.CurrPic.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r8, [r3, #80]	@, OtherFieldDispFrameDistance, <variable>.fs_image.DispFrameDistance
	ldr	r2, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r6, r7	@ <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	strls	r6, [r2, #84]	@, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	r7, [r2, #84]	@, OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r0, [r4, lr]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r5, r9	@ <variable>.CurrPic.fs_image.GopNum, OtherFieldGopNum
	strls	r5, [r0, #88]	@, <variable>.CurrPic.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	r9, [r0, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldr	r6, [r4, lr]	@ temp.5708, <variable>.pDirectOutBuf
	ldrb	r3, [r6, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r3, #0	@ <variable>.non_existing,
	movwne	r3, #49706	@ tmp415,
	moveq	r5, r3	@ iftmp.513, <variable>.non_existing
	ldrneb	r5, [r4, r3]	@ zero_extendqisi2	@ iftmp.513, <variable>.CurrPic.non_existing
	movw	r3, #50696	@ tmp417,
	strb	r5, [r6, #0]	@ iftmp.513, <variable>.non_existing
	ldr	lr, [r4, r3]	@ temp.5709, <variable>.pDirectOutBuf
	ldrb	r7, [lr, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	ip, r7, #1	@ tmp420, <variable>.is_used,
	strb	ip, [lr, #1]	@ tmp420, <variable>.is_used
	ldr	r2, [r4, r3]	@ temp.5711, <variable>.pDirectOutBuf
	mov	r7, #1	@ tmp429,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	mov	ip, #3	@ tmp433,
	ldr	r6, [r2, #540]	@ <variable>.pic_type, <variable>.pic_type
	cmp	r6, r0	@ <variable>.pic_type, <variable>.CurrPic.pic_type
	strcs	r6, [r2, #540]	@, <variable>.pic_type, <variable>.pic_type
	strcc	r0, [r2, #540]	@, <variable>.CurrPic.pic_type, <variable>.pic_type
	movw	r2, #50156	@ tmp437,
	ldr	r5, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	r7, [r5, #436]	@ tmp429, <variable>.top_field.structure
	ldr	lr, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	strb	ip, [lr, #400]	@ tmp433, <variable>.frame.structure
	ldr	r0, [r4, r2]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	ldr	r1, [r4, r3]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	str	r0, [r1, #456]	@ <variable>.CurrPic.err_level, <variable>.top_field.err_level
	ldr	lr, [r4, r3]	@ temp.5716, <variable>.pDirectOutBuf
	ldr	r6, [lr, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	r5, [lr, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r7, r6, r5	@ tmp440, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	movw	r5, #49711	@ tmp448,
	mov	ip, r7, lsr #1	@ tmp443, tmp440,
	str	ip, [lr, #420]	@ tmp443, <variable>.frame.err_level
	ldr	r2, [r4, r3]	@ temp.5718, <variable>.pDirectOutBuf
	ldr	r1, [r2, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	str	r1, [r2, #544]	@ <variable>.frame.err_level, <variable>.err_level
	ldr	r0, [r4, r3]	@ temp.5719, <variable>.pDirectOutBuf
	ldr	r6, [r0, #440]	@ <variable>.top_field.frame_store, <variable>.top_field.frame_store
	str	r6, [r0, #404]	@ <variable>.top_field.frame_store, <variable>.frame.frame_store
	ldrb	r7, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrPic.mode_skip_flag, <variable>.CurrPic.mode_skip_flag
	cmp	r7, #1	@ <variable>.CurrPic.mode_skip_flag,
	bne	.L2043	@,
	ldr	r3, [r4, r3]	@ D.33859, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #1	@ iftmp.514, <variable>.mode_skip_flag,
	b	.L2044	@
.L2019:
	ldr	ip, [r0, r5]	@ temp.5675, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5672
	str	ip, [r0, r7]	@ temp.5675, <variable>.pDirectOutBuf
	str	ip, [ip, #440]	@ temp.5675, <variable>.top_field.frame_store
	b	.L2020	@
.L2032:
	ldr	r2, [r0, r5]	@ temp.5734, <variable>.CurrPic.frame_store
	mov	r6, r1	@ ret, temp.5731
	str	r2, [r0, r7]	@ temp.5734, <variable>.pDirectOutBuf
	str	r2, [r2, #476]	@ temp.5734, <variable>.bottom_field.frame_store
	b	.L2033	@
.L2056:
	ldr	r3, [r4, r3]	@ temp.5643, <variable>.pDirectOutBuf
	ldrb	r7, [r3, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	orr	r2, r7, #2	@ iftmp.520, <variable>.mode_skip_flag,
	b	.L2044	@
	.fnend
	.size	DirectOutput, .-DirectOutput
	.align	2
	.global	OutputFrmFromDPB
	.type	OutputFrmFromDPB, %function
OutputFrmFromDPB:
	.fnstart
.LFB1633:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r1, #6592	@ tmp137, pos,
	add	r4, r4, #16	@ tmp137, tmp137,
	mov	r6, r1	@ pos, pos
	mov	r7, #0	@ tmp140,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r0, r4, asl #2]	@ tmp139, <variable>.DPB.fs
	mov	r2, r7	@, tmp140
	strb	r7, [r1, #4]	@ tmp140, <variable>.is_in_dpb
	ldr	r1, [r0, r4, asl #2]	@, <variable>.DPB.fs
	bl	OutputFrmToVO	@
	mov	r7, r0	@ ret,
	ldr	r0, [r5, r4, asl #2]	@ tmp147, <variable>.DPB.fs
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r3, #0	@ <variable>.is_reference,
	bne	.L2058	@,
	mov	r0, r5	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	RemoveFrameStoreOutDPB	@
.L2058:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	OutputFrmFromDPB, .-OutputFrmFromDPB
	.align	2
	.global	FlushDPB
	.type	FlushDPB, %function
FlushDPB:
	.fnstart
.LFB1639:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r7, #26628	@ tmp148,
	ldr	r3, [r0, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	cmp	r3, #0	@ <variable>.DPB.used_size,
	beq	.L2061	@,
	add	r4, r0, #26368	@ ivtmp.5880, pH264Ctx,
	mov	r5, #0	@ i,
	add	r4, r4, #64	@ ivtmp.5880, ivtmp.5880,
	b	.L2063	@
.L2062:
	ldr	r1, [r6, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r5	@ <variable>.DPB.used_size, i
	bls	.L2061	@,
.L2063:
	ldr	r1, [r4, #0]	@ D.33989, <variable>.DPB.fs
	add	r5, r5, #1	@ i, i,
	add	r4, r4, #4	@ ivtmp.5880, ivtmp.5880,
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	cmp	r0, #0	@ <variable>.is_reference,
	beq	.L2062	@,
	mov	r0, r6	@, pH264Ctx
	bl	UnMarkFrameStoreRef	@
	ldr	r1, [r6, r7]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, r5	@ <variable>.DPB.used_size, i
	bhi	.L2063	@,
.L2061:
	add	r2, r6, #26368	@ ivtmp.5875, pH264Ctx,
	mov	r0, r6	@, pH264Ctx
	movw	r5, #26628	@ tmp160,
	add	r4, r2, #64	@ ivtmp.5875, ivtmp.5875,
	bl	RemoveUnUsedFrameStore	@
	ldr	r0, [r6, r5]	@ D.40534, <variable>.DPB.used_size
	mov	r7, #26624	@ tmp161,
	cmp	r0, #0	@ D.40534,
	beq	.L2086	@,
.L2072:
	ldr	r8, [r6, r7]	@ temp.5884, <variable>.DPB.size
	cmp	r0, r8	@ D.40534, temp.5884
	movls	r8, r0	@ temp.5884, D.40534
	bls	.L2066	@,
	cmp	r8, #0	@ temp.5884,
	str	r8, [r6, r5]	@ temp.5884, <variable>.DPB.used_size
	moveq	r1, r8	@ pos, temp.5884
	beq	.L2067	@,
.L2066:
	tst	r8, #1	@ temp.5884,
	mov	r1, #0	@ pos,
	mov	r2, r4	@ ivtmp.5875, ivtmp.5875
	mvn	r0, #-2147483648	@ min_poc,
	mov	ip, r1	@ pos.5883, pos
	bne	.L2073	@,
	ldr	r2, [r4, #0]	@ D.40531, <variable>.DPB.fs
	ldr	r3, [r2, #524]	@ min_poc.5886, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5886
	ble	.L2077	@,
	ldrb	ip, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L2077	@,
	mov	ip, #1	@ pos.5883,
	cmp	ip, r8	@ pos.5883, temp.5884
	add	r2, r4, #4	@ ivtmp.5875, ivtmp.5875,
	movcc	r0, r3	@ min_poc, min_poc.5886
	bcs	.L2067	@,
.L2073:
	ldr	lr, [r2, #0]	@ D.40531, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc.5886, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5886
	ble	.L2068	@,
.L2087:
	ldrb	lr, [lr, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	lr, #0	@ <variable>.is_in_dpb,
	movne	r1, ip	@ pos, pos.5883
	beq	.L2068	@,
	add	ip, ip, #1	@ tmp171, pos.5883,
	add	lr, r2, #4	@ tmp172, ivtmp.5875,
	cmp	ip, r8	@ tmp171, temp.5884
	bcs	.L2067	@,
.L2070:
	ldr	r2, [r2, #4]	@ D.40531, <variable>.DPB.fs
	ldr	r0, [r2, #524]	@ min_poc.5886, <variable>.poc
	cmp	r3, r0	@ min_poc.5886, min_poc.5886
	ble	.L2080	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2080	@,
	mov	r1, ip	@ pos, tmp171
.L2085:
	add	r2, lr, #4	@ ivtmp.5875, tmp172,
	add	ip, ip, #1	@ pos.5883, tmp171,
	ldr	lr, [r2, #0]	@ D.40531, <variable>.DPB.fs
	ldr	r3, [lr, #524]	@ min_poc.5886, <variable>.poc
	cmp	r0, r3	@ min_poc, min_poc.5886
	bgt	.L2087	@,
.L2068:
	add	ip, ip, #1	@ tmp171, pos.5883,
	mov	r3, r0	@ min_poc.5886, min_poc
	cmp	ip, r8	@ tmp171, temp.5884
	add	lr, r2, #4	@ tmp172, ivtmp.5875,
	bcc	.L2070	@,
.L2067:
	mov	r0, r6	@, pH264Ctx
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@ ret,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r6, r5]	@ D.40534, <variable>.DPB.used_size
	cmp	r0, #0	@ D.40534,
	bne	.L2072	@,
.L2086:
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L2077:
	mov	ip, #1	@ pos.5883,
	cmp	ip, r8	@ pos.5883, temp.5884
	mvn	r3, #-2147483648	@ min_poc.5886,
	add	r2, r4, #4	@ ivtmp.5875, ivtmp.5875,
	movcc	r0, r3	@ min_poc, min_poc.5886
	bcc	.L2073	@,
	b	.L2067	@
.L2080:
	mov	r0, r3	@ min_poc.5886, min_poc.5886
	b	.L2085	@
	.fnend
	.size	FlushDPB, .-FlushDPB
	.align	2
	.global	IDRMemMarking
	.type	IDRMemMarking, %function
IDRMemMarking:
	.fnstart
.LFB1643:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #50116	@ tmp148,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r1, [r0, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r6, r0	@ pH264Ctx, pH264Ctx
	ldrb	r3, [r1, #1]	@ zero_extendqisi2	@ <variable>.no_output_of_prior_pics_flag, <variable>.no_output_of_prior_pics_flag
	cmp	r3, #0	@ <variable>.no_output_of_prior_pics_flag,
	beq	.L2089	@,
	movw	sl, #26628	@ tmp150,
	ldr	r0, [r0, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r0, #0	@ <variable>.DPB.used_size,
	beq	.L2090	@,
	add	r4, r6, #26368	@ ivtmp.5927, pH264Ctx,
	mov	r7, #0	@ i.5942,
	add	r4, r4, #128	@ ivtmp.5927, ivtmp.5927,
	mov	r5, r7	@ tmp230, i.5942
	movw	r8, #52840	@ tmp231,
	mov	r9, #1	@ tmp232,
.L2092:
	ldr	r1, [r4, #-64]	@ D.34132, <variable>.DPB.fs
	mov	r2, #0	@,
	add	r7, r7, #1	@ i.5942, i.5942,
	strb	r5, [r1, #401]	@ tmp230, <variable>.frame.is_long_term
	strb	r5, [r1, #402]	@ tmp230, <variable>.frame.is_short_term
	ldr	ip, [r4, #-64]	@ temp.5929, <variable>.DPB.fs
	strb	r5, [ip, #437]	@ tmp230, <variable>.top_field.is_long_term
	strb	r5, [ip, #438]	@ tmp230, <variable>.top_field.is_short_term
	ldr	r0, [r4, #-64]	@ temp.5930, <variable>.DPB.fs
	strb	r5, [r0, #473]	@ tmp230, <variable>.bottom_field.is_long_term
	strb	r5, [r0, #474]	@ tmp230, <variable>.bottom_field.is_short_term
	ldr	r3, [r4, #-64]	@ tmp165, <variable>.DPB.fs
	strb	r5, [r3, #2]	@ tmp230, <variable>.is_reference
	ldr	lr, [r4, #-64]	@ tmp170, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	ldr	r1, [r4, #-64]	@ tmp172, <variable>.DPB.fs
	strb	r5, [r1, #1]	@ tmp230, <variable>.is_used
	ldr	ip, [r4, #-64]	@ tmp175, <variable>.DPB.fs
	strb	r5, [ip, #4]	@ tmp230, <variable>.is_in_dpb
	ldr	r0, [r4, #-64]	@ tmp178, <variable>.DPB.fs
	str	r9, [r0, #532]	@ tmp232, <variable>.is_displayed
	ldr	ip, [r4, #-64]	@ temp.5936, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r3, [ip, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	add	r2, r3, #6656	@ tmp180, <variable>.apc_idc,
	add	r1, r2, #4	@ tmp180, tmp180,
	add	r3, r6, r1, asl #2	@, tmp185, pH264Ctx, tmp180,
	str	r5, [r3, #4]	@ tmp230, <variable>.APC.is_used
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetDisplay	@
	mov	r2, r5	@, tmp230
	cmp	r0, #3	@,
	beq	.L2091	@,
	ldr	lr, [r4, #-64]	@ tmp193, <variable>.DPB.fs
	ldr	r0, [r6, r8]	@, <variable>.ChanID
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2091:
	ldr	r2, [r6, sl]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	str	r5, [r4, #-64]	@ tmp230, <variable>.DPB.fs
	cmp	r2, r7	@ <variable>.DPB.used_size, i.5942
	str	r5, [r4, #0]	@ tmp230, <variable>.DPB.fs_ref
	str	r5, [r4, #64]	@ tmp230, <variable>.DPB.fs_ltref
	add	r4, r4, #4	@ ivtmp.5927, ivtmp.5927,
	bhi	.L2092	@,
.L2090:
	movw	r0, #51320	@ tmp202,
	movw	r3, #26628	@ tmp200,
	ldr	ip, [r6, r0]	@ D.34143, <variable>.TotalPmvNum
	mov	r0, #0	@ tmp201,
	str	r0, [r6, r3]	@ tmp201, <variable>.DPB.used_size
	cmp	ip, r0	@ D.34143,
	beq	.L2093	@,
	add	r3, r6, #51200	@ tmp203, pH264Ctx,
	mov	r2, #1	@ i,
	add	lr, r3, #48	@ ivtmp.5919, tmp203,
	cmp	r2, ip	@ i, D.34143
	sub	r1, ip, #1	@ tmp234, D.34143,
	str	r0, [lr, #0]	@ tmp229, <variable>.PmvStoreUsedFlag
	and	lr, r1, r2	@ tmp236, tmp234,
	add	r1, r3, #52	@ ivtmp.5919, tmp203,
	bcs	.L2093	@,
	cmp	lr, #0	@ tmp236,
	beq	.L2094	@,
	mov	r2, #2	@ i,
	cmp	r2, ip	@ i, D.34143
	str	r0, [r1, #0]	@ tmp229, <variable>.PmvStoreUsedFlag
	add	r1, r3, #56	@ ivtmp.5919, tmp203,
	bcs	.L2093	@,
.L2094:
	add	r2, r2, #2	@ i, i,
	mov	r3, r1	@ tmp238, ivtmp.5919
	cmp	r2, ip	@ i, D.34143
	str	r0, [r3], #4	@ tmp229, <variable>.PmvStoreUsedFlag
	str	r0, [r1, #4]	@ tmp229, <variable>.PmvStoreUsedFlag
	add	r1, r3, #4	@ ivtmp.5919, tmp238,
	bcc	.L2094	@,
.L2093:
	mov	r0, r6	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r6	@, pH264Ctx
	bl	UpdateLTReflist	@
	movw	r1, #50116	@ tmp208,
	ldr	r0, [r6, r1]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r3, [r0, #2]	@ zero_extendqisi2	@ <variable>.long_term_reference_flag, <variable>.long_term_reference_flag
	cmp	r3, #0	@ <variable>.long_term_reference_flag,
	bne	.L2105	@,
	movw	r1, #26640	@ tmp220,
	movw	r2, #49709	@ tmp225,
	movw	lr, #49708	@ tmp222,
	mov	ip, #1	@ tmp226,
	mov	r0, r3	@ D.34151, <variable>.long_term_reference_flag
	str	r3, [r6, r1]	@ <variable>.long_term_reference_flag, <variable>.DPB.max_long_term_pic_idx
	strb	ip, [r6, r2]	@ tmp226, <variable>.CurrPic.is_short_term
	strb	r3, [r6, lr]	@ <variable>.long_term_reference_flag, <variable>.CurrPic.is_long_term
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2089:
	movw	r2, #49705	@ tmp205,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	ip, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2093	@,
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.34151,
	beq	.L2093	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2105:
	movw	r1, #50124	@ tmp212,
	movw	r2, #49709	@ tmp217,
	movw	ip, #49708	@ tmp214,
	movw	lr, #26640	@ tmp210,
	mov	r0, #0	@ tmp213,
	mov	r3, #1	@ tmp211,
	str	r0, [r6, r1]	@ tmp213, <variable>.CurrPic.long_term_frame_idx
	strb	r0, [r6, r2]	@ tmp213, <variable>.CurrPic.is_short_term
	strb	r3, [r6, ip]	@ tmp211, <variable>.CurrPic.is_long_term
	str	r3, [r6, lr]	@ tmp211, <variable>.DPB.max_long_term_pic_idx
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
	.fnend
	.size	IDRMemMarking, .-IDRMemMarking
	.align	2
	.global	AdaptiveMemMark
	.type	AdaptiveMemMark, %function
AdaptiveMemMark:
	.fnstart
.LFB1642:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #50116	@ tmp153,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r4, [r0, r3]	@ ivtmp.5976, <variable>.CurrPic.pMarkPara
	add	r7, r0, #49664	@ D.34085, pH264Ctx,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	add	r7, r7, #40	@ D.34085, D.34085,
	add	r6, r4, #2000	@ D.46050, ivtmp.5976,
	movw	r8, #19820	@ tmp211,
	mov	sl, #1	@ tmp212,
.L2116:
	ldr	r0, [r4, #4]	@ <variable>.memory_management_control_operation, <variable>.memory_management_control_operation
	cmp	r0, #6	@ <variable>.memory_management_control_operation,
	ldrls	pc, [pc, r0, asl #2]	@ <variable>.memory_management_control_operation
	b	.L2107	@
.L2115:
	.word	.L2108
	.word	.L2109
	.word	.L2110
	.word	.L2111
	.word	.L2112
	.word	.L2113
	.word	.L2114
.L2114:
	ldr	r2, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34085
	bl	MarkCurrPicLT	@
.L2107:
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	cmp	r4, r6	@ ivtmp.5976, D.46050
	bne	.L2116	@,
.L2108:
	movw	r2, #19820	@ tmp163,
	ldr	r1, [r5, r2]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	cmp	r1, #1	@ <variable>.CurrPOC.last_has_mmco_5,
	beq	.L2125	@,
.L2117:
	mov	r0, #0	@ D.34115,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2113:
	mov	r0, r5	@, pH264Ctx
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	bl	UnMarkAllSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r5	@, pH264Ctx
	mov	r1, #0	@,
	bl	UpdateMaxLTFrmIdx	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.5976, D.46050
	str	sl, [r5, r8]	@ tmp212, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2116	@,
	b	.L2108	@
.L2112:
	ldr	r1, [r4, #20]	@, <variable>.max_long_term_frame_idx_plus1
	mov	r0, r5	@, pH264Ctx
	bl	UpdateMaxLTFrmIdx	@
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.5976, D.46050
	bne	.L2116	@,
	b	.L2108	@
.L2111:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r1, r7	@, D.34085
	ldr	r3, [r4, #16]	@, <variable>.long_term_frame_idx
	mov	r0, r5	@, pH264Ctx
	bl	MarkSTToLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.5976, D.46050
	bne	.L2116	@,
	b	.L2108	@
.L2110:
	ldr	r2, [r4, #12]	@, <variable>.long_term_pic_num
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34085
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	bl	UnMarkLTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateLTReflist	@
	cmp	r4, r6	@ ivtmp.5976, D.46050
	bne	.L2116	@,
	b	.L2108	@
.L2109:
	ldr	r2, [r4, #8]	@, <variable>.difference_of_pic_nums_minus1
	mov	r0, r5	@, pH264Ctx
	mov	r1, r7	@, D.34085
	add	r4, r4, #20	@ ivtmp.5976, ivtmp.5976,
	bl	UnMarkSTRef	@
	mov	r0, r5	@, pH264Ctx
	bl	UpdateReflist	@
	cmp	r4, r6	@ ivtmp.5976, D.46050
	bne	.L2116	@,
	b	.L2108	@
.L2125:
	movw	lr, #49707	@ tmp167,
	movw	ip, #50120	@ tmp165,
	ldrb	r2, [r5, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	mov	r3, #0	@ tmp166,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPic.frame_num
	cmp	r2, #1	@ <variable>.CurrPic.structure,
	beq	.L2120	@,
	bcs	.L2126	@,
	movw	r3, #50132	@ tmp186,
	movw	r4, #50144	@ tmp190,
	movw	r7, #50140	@ tmp185,
	movw	r0, #19828	@ tmp197,
	movw	sl, #19840	@ tmp198,
	ldr	ip, [r5, r3]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	ldr	r1, [r5, sl]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	r2, #19832	@ tmp202,
	ldr	r6, [r5, r4]	@ <variable>.CurrPic.bottompoc, <variable>.CurrPic.bottompoc
	ldr	r9, [r5, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	ldr	r8, [r5, r7]	@ <variable>.CurrPic.toppoc, <variable>.CurrPic.toppoc
	rsb	r6, ip, r6	@ D.34104, <variable>.CurrPic.thispoc, <variable>.CurrPic.bottompoc
	str	r6, [r5, r4]	@ D.34104, <variable>.CurrPic.bottompoc
	sub	r4, r4, #8	@ tmp195, tmp195,
	rsb	r8, ip, r8	@ D.34103, <variable>.CurrPic.thispoc, <variable>.CurrPic.toppoc
	rsb	ip, r1, r9	@ D.34108, <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.toppoc
	ldr	r9, [r5, r2]	@, <variable>.CurrPOC.bottompoc
	cmp	r6, r8	@ D.34104, D.34103
	movlt	lr, r6	@ D.34105, D.34104
	movge	lr, r8	@ D.34105, D.34103
	str	ip, [r5, r0]	@ D.34108, <variable>.CurrPOC.toppoc
	rsb	r1, r1, r9	@ D.34109, <variable>.CurrPOC.ThisPOC,
	str	lr, [r5, r3]	@ D.34105, <variable>.CurrPic.thispoc
	cmp	r1, ip	@ D.34109, D.34108
	movlt	r3, r1	@ D.34110, D.34109
	movge	r3, ip	@ D.34110, D.34108
	add	ip, r2, #4	@ tmp207, tmp207,
	str	r3, [r5, sl]	@ D.34110, <variable>.CurrPOC.ThisPOC
	str	r8, [r5, r7]	@ D.34103, <variable>.CurrPic.toppoc
	str	lr, [r5, r4]	@ D.34105, <variable>.CurrPic.framepoc
	str	r1, [r5, r2]	@ D.34109, <variable>.CurrPOC.bottompoc
	str	r3, [r5, ip]	@ D.34110,
.L2118:
	mov	r0, r5	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ D.34115,
	beq	.L2117	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L2126:
	cmp	r2, #2	@ <variable>.CurrPic.structure,
	bne	.L2118	@,
	movw	r1, #50144	@ tmp177,
	sub	r0, r1, #12	@ tmp179, tmp179,
	movw	r2, #19840	@ tmp183,
	movw	lr, #19832	@ tmp181,
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.bottompoc
	str	r3, [r5, r0]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, lr]	@ tmp166,
	b	.L2118	@
.L2120:
	movw	r2, #50140	@ tmp169,
	sub	r1, r2, #8	@ tmp171, tmp171,
	movw	ip, #19840	@ tmp175,
	movw	r0, #19828	@ tmp173,
	str	r3, [r5, ip]	@ tmp166, <variable>.CurrPOC.ThisPOC
	str	r3, [r5, r2]	@ tmp166, <variable>.CurrPic.toppoc
	str	r3, [r5, r1]	@ tmp166, <variable>.CurrPic.thispoc
	str	r3, [r5, r0]	@ tmp166,
	b	.L2118	@
	.fnend
	.size	AdaptiveMemMark, .-AdaptiveMemMark
	.align	2
	.global	Marking
	.type	Marking, %function
Marking:
	.fnstart
.LFB1644:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r2, #49707	@ tmp143,
	movw	r3, #49710	@ tmp146,
	ldrb	ip, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	ldrb	r1, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	ip, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp145
	moveq	r2, #1	@, tmp145
	movw	r0, #19824	@ tmp142,
	cmp	r1, #5	@ <variable>.CurrPic.nal_unit_type,
	movw	r3, #19820	@ tmp140,
	str	r2, [r4, r0]	@ tmp145, <variable>.CurrPOC.last_pic_bottom_field
	mov	r2, #0	@ tmp141,
	str	r2, [r4, r3]	@ tmp141, <variable>.CurrPOC.last_has_mmco_5
	beq	.L2128	@,
	movw	r1, #50148	@ tmp148,
	ldr	r0, [r4, r1]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, r2	@ <variable>.CurrPic.pic_type,
	bne	.L2129	@,
	ldr	r3, [r4, #0]	@ D.34169, <variable>.pstExtraData
	ldr	ip, [r3, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	ip, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2140	@,
.L2129:
	movw	r3, #50116	@ tmp158,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r2, [r0, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r2, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L2139	@,
	movw	ip, #50128	@ tmp161,
	ldr	r1, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2141	@,
.L2134:
	mov	r0, #0	@ D.34182,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2140:
	ldr	r2, [r3, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r2, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2129	@,
	ldr	r0, [r3, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2129	@,
	ldr	ip, [r3, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r1, ip, #1020	@ tmp153, <variable>.s32FastForwardBackwardSpeed,
	add	r3, r1, #3	@ tmp153, tmp153,
	cmp	r3, #2048	@ tmp153,
	bcc	.L2129	@,
.L2128:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	bne	.L2130	@,
.L2131:
	movw	r2, #49710	@ tmp163,
	ldrb	lr, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	lr, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2135	@,
.L2139:
	movw	r3, #50128	@ tmp165,
	ldr	r0, [r4, r3]	@ prephitmp.6000, <variable>.CurrPic.nal_ref_idc
	cmp	r0, #0	@ prephitmp.6000,
	beq	.L2134	@,
	movw	r2, #50116	@ tmp167,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	ldrb	r1, [ip, #3]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	bne	.L2136	@,
	movw	r0, #49705	@ tmp169,
	ldrb	r5, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r5, #0	@ <variable>.CurrPic.field_pair_flag,
	bne	.L2136	@,
	mov	r0, r4	@, pH264Ctx
	bl	SlidingWinMark	@
	movw	r3, #49708	@ tmp171,
	strb	r5, [r4, r3]	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.is_long_term
.L2135:
	movw	r1, #50128	@ tmp174,
	ldr	lr, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	lr, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2134	@,
.L2136:
	movw	r0, #49708	@ tmp177,
	movw	r3, #49709	@ tmp176,
	ldrb	r2, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	mov	r0, #0	@ D.34182,
	cmp	r2, r0	@ <variable>.CurrPic.is_long_term,
	movne	ip, #0	@, tmp179
	moveq	ip, #1	@, tmp179
	strb	ip, [r4, r3]	@ tmp179, <variable>.CurrPic.is_short_term
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L2141:
	mov	r0, r4	@, pH264Ctx
	bl	AdaptiveMemMark	@
	cmp	r0, #0	@,
	beq	.L2131	@,
.L2130:
	mvn	r0, #0	@ D.34182,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	Marking, .-Marking
	.align	2
	.global	ClearDPB
	.type	ClearDPB, %function
ClearDPB:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	FlushDPB	@
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	mov	r3, #0	@ tmp136,
	movw	r0, #52848	@ tmp137,
	movw	r2, #51332	@ tmp135,
	str	r3, [r4, r0]	@ tmp136, <variable>.FirstFrameDisplayed
	mov	r0, r3	@, tmp136
	str	r3, [r4, r2]	@ tmp136, <variable>.IDRFound
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ClearDPB, .-ClearDPB
	.align	2
	.global	ReceivePacket
	.type	ReceivePacket, %function
ReceivePacket:
	.fnstart
.LFB1721:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r8, r9, lr}	@,
	.save {r4, r5, r6, r8, r9, lr}
	ldr	r3, [r0, #368]	@ D.39844, <variable>.pCurrNal
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r1	@ pPacket, pPacket
	cmp	r3, #0	@ D.39844,
	beq	.L2145	@,
	ldrb	r2, [r1, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	cmp	r2, #1	@ <variable>.last_pack_in_nal,
	beq	.L2167	@,
.L2146:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r4, #368]	@ D.39844, <variable>.pCurrNal
	cmp	r3, #0	@ D.39844,
	ldrneb	r2, [r6, #0]	@ zero_extendqisi2	@ prephitmp.6054, <variable>.last_pack_in_nal
	beq	.L2145	@,
.L2147:
	strb	r2, [r3, #3]	@ prephitmp.6054, <variable>.nal_integ
	ldr	r3, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2156	@,
	ldr	r2, [r6, #4]	@ temp.6092, <variable>.p_stream
	cmp	r2, #0	@ temp.6092,
	beq	.L2156	@,
	ldr	r1, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	r1, #0	@ <variable>.strm_phy_addr,
	bne	.L2159	@,
.L2156:
	ldr	r3, [r4, #368]	@ prephitmp.6056, <variable>.pCurrNal
.L2158:
	movw	r5, #52840	@ tmp269,
	mov	lr, #1	@ tmp267,
	strb	lr, [r3, #3]	@ tmp267, <variable>.nal_integ
	ldr	r1, [r6, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp272,
	movt	r0, #:upper16:g_event_report	@ tmp272,
	ldr	r3, [r0, #0]	@ g_event_report.6112, g_event_report
	cmp	r3, #0	@ g_event_report.6112,
	beq	.L2153	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6112
.L2153:
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrb	r2, [ip, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r2, #0	@ <variable>.nal_integ,
	movne	r0, #0	@, ret,
	mvneq	r0, #0	@, ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2167:
	ldr	r1, [r3, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r1, #1	@ <variable>.nal_segment,
	bhi	.L2146	@,
	ldrb	r0, [r3, #3]	@ zero_extendqisi2	@ <variable>.nal_integ, <variable>.nal_integ
	cmp	r0, #1	@ <variable>.nal_integ,
	bne	.L2147	@,
	b	.L2146	@
.L2159:
	ldr	r3, [r4, #368]	@ prephitmp.6056, <variable>.pCurrNal
	ldr	r1, [r3, #68]	@ temp.6094, <variable>.nal_segment
	cmp	r1, #1	@ temp.6094,
	bhi	.L2158	@,
	rsb	r1, r1, r1, asl #3	@, tmp225, temp.6094, temp.6094,
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, r1, asl #2	@, tmp227, prephitmp.6056, tmp225,
	str	r2, [r3, #8]	@ temp.6092, <variable>.streamBuffer
	ldr	lr, [r4, #368]	@ temp.6096, <variable>.pCurrNal
	ldr	r1, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	ldr	ip, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, ip, ip, asl #3	@, tmp233, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, r2, asl #2	@, tmp235, temp.6096, tmp233,
	str	r1, [r3, #12]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	lr, [r4, #368]	@ temp.6100, <variable>.pCurrNal
	ldr	r1, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	ldr	ip, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, ip, ip, asl #3	@, tmp242, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, r2, asl #2	@, tmp244, temp.6100, tmp242,
	str	r1, [r3, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	mov	r1, #0	@ tmp255,
	ldr	lr, [r4, #368]	@ temp.6103, <variable>.pCurrNal
	ldr	ip, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, ip, ip, asl #3	@, tmp251, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, r2, asl #2	@, tmp253, temp.6103, tmp251,
	str	r1, [r3, #24]	@ tmp255, <variable>.bitsoffset
	ldr	lr, [r4, #368]	@ temp.6105, <variable>.pCurrNal
	ldr	r1, [r6, #16]	@ <variable>.StreamID, <variable>.StreamID
	ldr	ip, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	rsb	r2, ip, ip, asl #3	@, tmp260, <variable>.nal_segment, <variable>.nal_segment,
	add	r3, lr, r2, asl #2	@, tmp262, temp.6105, tmp260,
	str	r1, [r3, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	lr, [r4, #368]	@ temp.6108, <variable>.pCurrNal
	ldr	ip, [lr, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	add	r2, ip, #1	@ tmp266, <variable>.nal_segment,
	str	r2, [lr, #68]	@ tmp266, <variable>.nal_segment
	bl	CombinePacket	@
	b	.L2153	@
.L2145:
	ldr	r3, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	cmp	r3, #0	@ <variable>.stream_len,
	ble	.L2149	@,
	ldr	r2, [r6, #4]	@ <variable>.p_stream, <variable>.p_stream
	cmp	r2, #0	@ <variable>.p_stream,
	beq	.L2149	@,
	ldr	ip, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	cmp	ip, #0	@ <variable>.strm_phy_addr,
	beq	.L2149	@,
	ldrb	r2, [r4, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	mov	r3, #0	@ Pos,
	cmp	r2, r3	@ <variable>.is_valid,
	addne	r1, r4, #96	@ ivtmp.6075, pH264Ctx,
	movne	r3, #1	@ Pos,
	bne	.L2151	@,
	b	.L2150	@
.L2168:
	ldrb	r2, [r1, #473]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	add	r3, r3, #1	@ Pos, Pos,
	add	r1, r1, #192	@ ivtmp.6075, ivtmp.6075,
	cmp	r2, #0	@ <variable>.is_valid,
	beq	.L2150	@,
	add	r3, r3, #1	@ Pos, Pos,
	cmp	r3, #137	@ Pos,
	beq	.L2152	@,
.L2151:
	ldrb	r2, [r1, #377]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r2, #0	@ <variable>.is_valid,
	bne	.L2168	@,
.L2150:
	cmp	r3, #136	@ Pos,
	bhi	.L2152	@,
	add	r8, r3, r3, asl #1	@, tmp168, Pos, Pos,
	mov	ip, #1	@ tmp172,
	mov	r9, r8, asl #5	@ tmp169, tmp168,
	add	r8, r9, r4	@ tmp170, tmp169, pH264Ctx
	add	r0, r9, #376	@ tmp178, tmp169,
	add	r1, r4, r0	@ tmp179, pH264Ctx, tmp178
	strb	ip, [r8, #377]	@ tmp172, <variable>.is_valid
	str	r1, [r4, #368]	@ tmp179, <variable>.pCurrNal
	ldr	r3, [r6, #4]	@ <variable>.p_stream, <variable>.p_stream
	str	r3, [r8, #384]	@ <variable>.p_stream, <variable>.streamBuffer
	ldr	r9, [r6, #12]	@ <variable>.stream_len, <variable>.stream_len
	str	r9, [r8, #388]	@ <variable>.stream_len, <variable>.bitstream_length
	ldr	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r1, [r6, #8]	@ <variable>.strm_phy_addr, <variable>.strm_phy_addr
	str	r1, [r0, #16]	@ <variable>.strm_phy_addr, <variable>.stream_phy_addr
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r2, [r3, #24]	@ <variable>.is_valid, <variable>.bitsoffset
	ldr	r9, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r8, [r6, #16]	@ <variable>.StreamID, <variable>.StreamID
	str	r8, [r9, #32]	@ <variable>.StreamID, <variable>.StreamID
	ldr	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldrd	r8, [r6, #24]	@ <variable>.pts, pPacket,
	strd	r8, [r0, #88]	@ <variable>.pts, <variable>.pCurrNal,
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	ip, [r1, #68]	@ tmp172, <variable>.nal_segment
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r2, [r3, #0]	@ <variable>.is_valid, <variable>.nal_used_segment
	ldrb	r1, [r6, #0]	@ zero_extendqisi2	@ <variable>.last_pack_in_nal, <variable>.last_pack_in_nal
	ldr	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	strb	r1, [r0, #3]	@ <variable>.last_pack_in_nal, <variable>.nal_integ
	b	.L2153	@
.L2152:
	mov	r0, r4	@, pH264Ctx
	bl	ClearAllNal	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	movw	r2, #:lower16:g_event_report	@ tmp212,
	movt	r2, #:upper16:g_event_report	@ tmp212,
	ldr	r3, [r2, #0]	@ g_event_report.813, g_event_report
	cmp	r3, #0	@ g_event_report.813,
	bne	.L2169	@,
.L2154:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2149:
	movw	r5, #52840	@ tmp214,
	ldr	r1, [r6, #16]	@, <variable>.StreamID
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	ip, #:lower16:g_event_report	@ tmp217,
	movt	ip, #:upper16:g_event_report	@ tmp217,
	ldr	r3, [ip, #0]	@ g_event_report.6089, g_event_report
	cmp	r3, #0	@ g_event_report.6089,
	beq	.L2154	@,
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.6089
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
.L2169:
	movw	lr, #52840	@ tmp213,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.813
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r8, r9, pc}	@
	.fnend
	.size	ReceivePacket, .-ReceivePacket
	.align	2
	.global	DecVDM
	.type	DecVDM, %function
DecVDM:
	.fnstart
.LFB1685:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r0, #49707	@ tmp147,
	.pad #12
	sub	sp, sp, #12	@,,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r3, #0	@ <variable>.CurrPic.structure,
	beq	.L2171	@,
	movw	r2, #49705	@ tmp149,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r1, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2171	@,
.L2172:
	movw	r2, #52828	@ tmp162,
	movw	r1, #52768	@ tmp163,
	ldr	r3, [r4, r2]	@ IPBDecMode, <variable>.advanced_cfg
	ldr	r2, [r4, r1]	@ D.36748, <variable>.OldDecMode
	cmp	r3, #2	@ IPBDecMode,
	cmpne	r2, r3	@, D.36748, IPBDecMode
	beq	.L2173	@,
	sub	ip, r2, #2	@ tmp171, D.36748,
	cmp	ip, #1	@ tmp171,
	bls	.L2206	@,
.L2173:
	movw	r1, #52768	@ tmp180,
	sub	r0, r3, #1	@ tmp181, IPBDecMode,
	str	r3, [r4, r1]	@ IPBDecMode, <variable>.OldDecMode
	cmp	r0, #4	@ tmp181,
	ldrls	pc, [pc, r0, asl #2]	@ tmp181
	b	.L2175	@
.L2180:
	.word	.L2176
	.word	.L2177
	.word	.L2178
	.word	.L2175
	.word	.L2179
.L2179:
	movw	ip, #50148	@ tmp202,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r2, #0	@ <variable>.CurrPic.pic_type,
	beq	.L2182	@,
	movw	r1, #49707	@ tmp204,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	beq	.L2183	@,
	movw	r2, #50676	@ tmp206,
	ldr	r3, [r4, r2]	@ <variable>.PrevPic.pic_type, <variable>.PrevPic.pic_type
	cmp	r3, #0	@ <variable>.PrevPic.pic_type,
	bne	.L2183	@,
.L2182:
	ldr	r2, [r4, #0]	@ temp.6172, <variable>.pstExtraData
	ldr	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	cmp	r3, #0	@ <variable>.s32firstIdecodedflag,
	bne	.L2183	@,
	movw	r0, #52764	@ tmp210,
	ldr	ip, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #0	@ <variable>.SliceParaNum,
	beq	.L2175	@,
	movw	r0, #52760	@ tmp213,
	ldr	ip, [r4, r0]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	r1, [ip, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r1, #0	@ <variable>.first_mb_in_slice,
	bne	.L2207	@,
.L2175:
	movw	r3, #52844	@ tmp223,
	ldr	r1, [r4, r3]	@ <variable>.PrevPicIsIDR, <variable>.PrevPicIsIDR
	cmp	r1, #1	@ <variable>.PrevPicIsIDR,
	beq	.L2208	@,
.L2184:
	movw	r1, #50152	@ tmp231,
	movw	r3, #52844	@ tmp230,
	ldr	r2, [r4, r1]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
.L2185:
	movw	r0, #52764	@ tmp233,
	ldr	ip, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #0	@ <variable>.SliceParaNum,
	beq	.L2205	@,
	movw	r1, #52768	@ tmp235,
	ldr	r3, [r4, r1]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	r3, #4	@ <variable>.OldDecMode,
	beq	.L2187	@,
	movw	ip, #50148	@ tmp237,
	ldr	r3, [r4, ip]	@ prephitmp.6136, <variable>.CurrPic.pic_type
.L2188:
	cmp	r3, #2	@ prephitmp.6136,
	beq	.L2209	@,
	cmp	r3, #1	@ prephitmp.6136,
	movweq	r2, #51336	@ tmp258,
	streq	r3, [r4, r2]	@ prephitmp.6136, <variable>.PPicFound
.L2191:
	movw	ip, #52804	@ tmp272,
	movw	r1, #50172	@ tmp261,
	ldr	r0, [r4, ip]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	mov	r2, #50176	@ tmp267,
	ldr	ip, [r4, r1]	@ <variable>.CurrPic.pic_mbs, <variable>.CurrPic.pic_mbs
	movw	r3, #52764	@ tmp270,
	ldr	r1, [r4, r2]	@ <variable>.CurrPic.stream_base_addr, <variable>.CurrPic.stream_base_addr
	cmp	r0, #0	@ <variable>.TotalPicNum,
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	movw	r3, #52288	@ tmp260,
	str	ip, [r4, r3]	@ <variable>.CurrPic.pic_mbs, <variable>.DecPicPara.mbtodec
	movw	r3, #52284	@ tmp266,
	str	r1, [r4, r3]	@ <variable>.CurrPic.stream_base_addr, <variable>.DecPicPara.stream_base_addr
	movw	ip, #52488	@ tmp269,
	movw	r3, #51370	@ tmp263,
	str	r2, [r4, ip]	@ <variable>.SliceParaNum, <variable>.DecPicPara.SliceParaNum
	mov	r2, #1	@ tmp264,
	strb	r2, [r4, r3]	@ tmp264, <variable>.DecPicPara.NewPicFlag
	beq	.L2174	@,
	movw	r3, #50148	@ tmp274,
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r0, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2193	@,
	movw	r5, #:lower16:g_event_report	@ tmp276,
	movt	r5, #:upper16:g_event_report	@ tmp276,
	ldr	r2, [r5, #0]	@ g_event_report, g_event_report
	cmp	r2, #0	@ g_event_report,
	beq	.L2202	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_GetPicStreamSize	@
	add	r2, sp, #8	@ tmp281,,
	ldr	ip, [r5, #0]	@ g_event_report, g_event_report
	mov	r1, #20	@,
	str	r0, [r2, #-4]!	@, para
	movw	r0, #52840	@ tmp279,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	blx	ip	@ g_event_report
.L2202:
	ldr	r2, [r4, #0]	@ temp.6172, <variable>.pstExtraData
.L2194:
	add	r0, r4, #51200	@ D.36840, pH264Ctx,
	add	r3, r0, #168	@ D.36840, D.36840,
	str	r3, [r4, #360]	@ D.36840, <variable>.pH264DecParam
	ldr	r1, [r2, #708]	@ D.36841, <variable>.stDisParams.s32Mode
	cmp	r1, #1	@ D.36841,
	beq	.L2210	@,
	cmp	r1, #2	@ D.36841,
	beq	.L2211	@,
.L2196:
	ldr	r2, [r2, #512]	@ <variable>.s32Compress_en, <variable>.s32Compress_en
	movw	r1, #52752	@ tmp303,
	mov	r0, #0	@ D.36762,
	str	r2, [r4, r1]	@ <variable>.s32Compress_en, <variable>.DecPicPara.Compress_en
.L2174:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L2171:
	movw	r3, #52868	@ tmp151,
	ldr	r2, [r4, #0]	@ D.36742, <variable>.pstExtraData
	ldr	r0, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	movw	r1, #52872	@ tmp154,
	ldr	ip, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r0, r0, #1	@ D.36744, <variable>.numTotalFrame,
	cmp	r0, ip	@ D.36744, <variable>.numOutputFrame
	movlt	r0, ip	@ D.36746, <variable>.numOutputFrame
	str	r0, [r4, r3]	@ D.36746, <variable>.numTotalFrame
	str	r0, [r2, #440]	@ D.36746, <variable>.stChanState.total_frame_num
	ldr	r0, [r4, r3]	@ <variable>.numTotalFrame, <variable>.numTotalFrame
	ldr	r3, [r4, r1]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	rsb	ip, r3, r0	@ tmp161, <variable>.numOutputFrame, <variable>.numTotalFrame
	str	ip, [r2, #444]	@ tmp161, <variable>.stChanState.error_frame_num
	b	.L2172	@
.L2206:
	cmp	r3, #4	@ IPBDecMode,
	cmpne	r3, #1	@, IPBDecMode,
	strls	r3, [r4, r1]	@ IPBDecMode, <variable>.OldDecMode
	bhi	.L2173	@,
.L2178:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
.L2193:
	movw	r3, #26628	@ tmp283,
	ldr	r1, [r4, r3]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	cmp	r1, #0	@ <variable>.DPB.used_size,
	bne	.L2202	@,
	ldr	r2, [r4, #0]	@ temp.6172, <variable>.pstExtraData
	ldr	ip, [r2, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2194	@,
.L2205:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
.L2208:
	movw	r0, #50148	@ tmp225,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	ip, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2184	@,
	movw	r2, #50152	@ tmp228,
	ldr	r2, [r4, r2]	@ <variable>.CurrPic.is_idr_pic, <variable>.CurrPic.is_idr_pic
	str	r2, [r4, r3]	@ <variable>.CurrPic.is_idr_pic, <variable>.PrevPicIsIDR
	b	.L2185	@
.L2209:
	movw	ip, #51336	@ tmp247,
	ldr	r1, [r4, ip]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r1, #2	@ <variable>.PPicFound,
	bne	.L2191	@,
	ldr	r0, [r4, #0]	@ temp.6172, <variable>.pstExtraData
	ldr	r5, [r0, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r5, #0	@ <variable>.s32DecOrderOutput,
	bne	.L2191	@,
	movw	r3, #:lower16:g_allow_B_before_P	@ tmp251,
	movt	r3, #:upper16:g_allow_B_before_P	@ tmp251,
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ g_allow_B_before_P, g_allow_B_before_P
	cmp	r2, #1	@ g_allow_B_before_P,
	beq	.L2191	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	movw	r0, #50112	@ tmp256,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #52840	@ tmp253,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r2, r5	@, <variable>.s32DecOrderOutput
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
.L2187:
	movw	r0, #50148	@ tmp238,
	ldr	r3, [r4, r0]	@ prephitmp.6136, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ prephitmp.6136,
	bne	.L2188	@,
	movw	r3, #51336	@ tmp239,
	ldr	r2, [r4, r3]	@ <variable>.PPicFound, <variable>.PPicFound
	cmp	r2, #0	@ <variable>.PPicFound,
	moveq	r2, #2	@ tmp242,
	movne	r2, #1	@ tmp245,
	str	r2, [r4, r3]	@ tmp245, <variable>.PPicFound
	b	.L2191	@
.L2177:
	movw	r2, #50148	@ tmp182,
	ldr	r3, [r4, r2]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #0	@ <variable>.CurrPic.pic_type,
	bne	.L2183	@,
	movw	r0, #52764	@ tmp187,
	ldr	ip, [r4, r0]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #0	@ <variable>.SliceParaNum,
	beq	.L2175	@,
	movw	r2, #52760	@ tmp190,
	ldr	r3, [r4, r2]	@ <variable>.DecSlicePara, <variable>.DecSlicePara
	ldr	r1, [r3, #48]	@ <variable>.first_mb_in_slice, <variable>.first_mb_in_slice
	cmp	r1, #0	@ <variable>.first_mb_in_slice,
	beq	.L2175	@,
.L2183:
	movw	r3, #49711	@ tmp220,
	mov	r2, #1	@ tmp221,
	mov	r0, r4	@, pH264Ctx
	strb	r2, [r4, r3]	@ tmp221, <variable>.CurrPic.mode_skip_flag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
.L2176:
	movw	r0, #50148	@ tmp195,
	ldr	ip, [r4, r0]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	ip, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2175	@,
	movw	r3, #50128	@ tmp197,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2175	@,
	b	.L2183	@
.L2210:
	cmp	r3, #0	@ D.36840,
	beq	.L2196	@,
	movw	r3, #50148	@ tmp288,
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r1, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2196	@,
	movw	r0, #50112	@ tmp293,
	movw	ip, #52840	@ tmp291,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp290,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp290, <variable>.pH264DecParam
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	b	.L2205	@
.L2211:
	ldr	r1, [r2, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	cmp	r1, #0	@ <variable>.stDisParams.s32DisNums,
	ble	.L2196	@,
	cmp	r3, #0	@ D.36840,
	beq	.L2196	@,
	movw	ip, #50148	@ tmp295,
	ldr	r3, [r4, ip]	@ <variable>.CurrPic.pic_type, <variable>.CurrPic.pic_type
	cmp	r3, #2	@ <variable>.CurrPic.pic_type,
	bne	.L2196	@,
	movw	r0, #50112	@ tmp300,
	movw	ip, #52840	@ tmp298,
	ldr	lr, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #0	@ tmp297,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	str	r2, [r4, #360]	@ tmp297, <variable>.pH264DecParam
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
	ldr	r1, [r4, #0]	@ temp.6181, <variable>.pstExtraData
	mov	r0, r4	@, pH264Ctx
	ldr	r3, [r1, #712]	@ <variable>.stDisParams.s32DisNums, <variable>.stDisParams.s32DisNums
	sub	r2, r3, #1	@ tmp302, <variable>.stDisParams.s32DisNums,
	str	r2, [r1, #712]	@ tmp302, <variable>.stDisParams.s32DisNums
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
.L2207:
	movw	lr, #49711	@ tmp215,
	mov	r0, r4	@, pH264Ctx
	strb	r3, [r4, lr]	@ <variable>.s32firstIdecodedflag, <variable>.CurrPic.mode_skip_flag
	str	r3, [r2, #732]	@ <variable>.s32firstIdecodedflag, <variable>.s32firstIdecodedflag
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.36762,
	b	.L2174	@
	.fnend
	.size	DecVDM, .-DecVDM
	.align	2
	.global	InsertFrmInDPB
	.type	InsertFrmInDPB, %function
InsertFrmInDPB:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	r3, [r2, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r6, r2	@ pCurrPic, pCurrPic
	cmp	r3, #1	@ <variable>.structure,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	beq	.L2215	@,
	bcc	.L2214	@,
	cmp	r3, #2	@ <variable>.structure,
	beq	.L2261	@,
	mov	r1, #1	@,
	bl	ClearAll	@
	mov	r0, #0	@ D.33742,
.L2222:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2214:
	ldr	r0, [r2, #408]	@ D.33704, <variable>.frame_store
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	mov	ip, #3	@ tmp210,
	str	r0, [r4, r5, asl #2]	@ D.33704, <variable>.DPB.fs
	ldrb	r2, [r2, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	r2, [r0, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	lr, [r4, r5, asl #2]	@ tmp209, <variable>.DPB.fs
	strb	ip, [lr, #1]	@ tmp210, <variable>.is_used
	ldr	sl, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r8, [r4, r5, asl #2]	@ tmp214, <variable>.DPB.fs
	ldrb	r7, [sl, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	r7, [r8, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r1, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r4, r5, asl #2]	@ tmp220, <variable>.DPB.fs
	ldr	r0, [r1, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r0, [r3, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r2, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	ldr	r3, [r4, r5, asl #2]	@ temp.6228, <variable>.DPB.fs
	cmp	r2, #0	@ <variable>.is_long_term,
	beq	.L2262	@,
.L2217:
	mov	r2, #3	@ iftmp.497,
.L2218:
	strb	r2, [r3, #2]	@ iftmp.497, <variable>.is_reference
	add	r1, r6, #16	@, pCurrPic,
	ldr	r8, [r4, r5, asl #2]	@ tmp230, <variable>.DPB.fs
	mov	r2, #392	@,
	ldr	lr, [r6, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	str	lr, [r8, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r8, #0	@ tmp254,
	ldr	r0, [r4, r5, asl #2]	@ tmp234, <variable>.DPB.fs
	add	r0, r0, #8	@, tmp234,
	bl	memcpy	@
	ldr	r3, [r4, r5, asl #2]	@ temp.6231, <variable>.DPB.fs
	ldr	ip, [r6, #452]	@ D.33720, <variable>.err_level
	mov	r2, r8	@, tmp254
	mov	r0, r4	@, pH264Ctx
	str	ip, [r3, #544]	@ D.33720, <variable>.err_level
	str	ip, [r3, #420]	@ D.33720, <variable>.frame.err_level
	ldr	r1, [r4, r5, asl #2]	@ temp.6232, <variable>.DPB.fs
	ldr	r7, [r6, #408]	@ temp.6233, <variable>.frame_store
	str	r7, [r1, #404]	@ temp.6233, <variable>.frame.frame_store
	str	r7, [r1, #476]	@ temp.6233, <variable>.bottom_field.frame_store
	str	r7, [r1, #440]	@ temp.6233, <variable>.top_field.frame_store
	ldr	sl, [r4, r5, asl #2]	@ tmp245, <variable>.DPB.fs
	ldr	ip, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	str	ip, [sl, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	ldr	r3, [r4, r5, asl #2]	@ tmp249, <variable>.DPB.fs
	ldr	r1, [r6, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	r1, [r3, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r7, [r4, r5, asl #2]	@ tmp253, <variable>.DPB.fs
	strb	r8, [r7, #400]	@ tmp254, <variable>.frame.structure
	ldr	sl, [r4, r5, asl #2]	@ tmp258, <variable>.DPB.fs
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [sl, #401]	@ <variable>.is_long_term, <variable>.frame.is_long_term
	ldr	r3, [r4, r5, asl #2]	@ tmp263, <variable>.DPB.fs
	ldrb	r1, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	r1, [r3, #402]	@ <variable>.is_short_term, <variable>.frame.is_short_term
	ldr	r8, [r4, r5, asl #2]	@ temp.6241, <variable>.DPB.fs
	ldr	r7, [r6, #444]	@ D.33726, <variable>.pic_type
	str	r7, [r8, #540]	@ D.33726, <variable>.pic_type
	str	r7, [r8, #424]	@ D.33726, <variable>.frame.pic_type
	ldr	sl, [r4, r5, asl #2]	@ tmp270, <variable>.DPB.fs
	ldrb	ip, [r6, #9]	@ zero_extendqisi2	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	str	ip, [sl, #536]	@ <variable>.MbaffFrameFlag, <variable>.MbaffFrameFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp274, <variable>.DPB.fs
	ldr	r1, [r6, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	r1, [r3, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r8, [r4, r5, asl #2]	@ tmp278, <variable>.DPB.fs
	ldr	r7, [r6, #432]	@ <variable>.framepoc, <variable>.framepoc
	str	r7, [r8, #416]	@ <variable>.framepoc, <variable>.frame.poc
	ldr	sl, [r4, r5, asl #2]	@ tmp282, <variable>.DPB.fs
	ldr	ip, [r6, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	ip, [sl, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	mov	sl, #1	@ tmp297,
	ldr	r3, [r4, r5, asl #2]	@ tmp286, <variable>.DPB.fs
	ldr	r1, [r6, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r1, [r3, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldrb	r7, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	r8, [r4, r5, asl #2]	@ temp.6247, <variable>.DPB.fs
	cmp	r7, #1	@ <variable>.mode_skip_flag,
	moveq	r7, #3	@ iftmp.499,
	movne	r7, r2	@ iftmp.499,
	strb	r7, [r8, #3]	@ iftmp.499, <variable>.mode_skip_flag
	ldr	r3, [r4, r5, asl #2]	@ temp.6248, <variable>.DPB.fs
	ldr	r1, [r3, #404]	@ <variable>.frame.frame_store, <variable>.frame.frame_store
	ldrb	r8, [r3, #401]	@ zero_extendqisi2	@ D.40549, <variable>.frame.is_long_term
	ldrb	r7, [r3, #402]	@ zero_extendqisi2	@ <variable>.frame.is_short_term, <variable>.frame.is_short_term
	ldr	lr, [r3, #420]	@ <variable>.frame.err_level, <variable>.frame.err_level
	ldr	ip, [r3, #424]	@ <variable>.frame.pic_type, <variable>.frame.pic_type
	strb	sl, [r3, #436]	@ tmp297, <variable>.top_field.structure
	mov	sl, #2	@ tmp305,
	strb	r8, [r3, #473]	@ D.40549, <variable>.bottom_field.is_long_term
	str	r1, [r3, #476]	@ <variable>.frame.frame_store, <variable>.bottom_field.frame_store
	strb	r7, [r3, #474]	@ <variable>.frame.is_short_term, <variable>.bottom_field.is_short_term
	strb	sl, [r3, #472]	@ tmp305, <variable>.bottom_field.structure
	str	lr, [r3, #492]	@ <variable>.frame.err_level, <variable>.bottom_field.err_level
	str	ip, [r3, #496]	@ <variable>.frame.pic_type, <variable>.bottom_field.pic_type
	strb	r8, [r3, #437]	@ D.40549, <variable>.top_field.is_long_term
	strb	r7, [r3, #438]	@ <variable>.frame.is_short_term, <variable>.top_field.is_short_term
	str	lr, [r3, #456]	@ <variable>.frame.err_level, <variable>.top_field.err_level
	str	ip, [r3, #460]	@ <variable>.frame.pic_type, <variable>.top_field.pic_type
	str	r1, [r3, #440]	@ <variable>.frame.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r6, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	bne	.L2258	@,
.L2221:
	ldr	lr, [r4, r5, asl #2]	@ tmp789, <variable>.DPB.fs
	movw	r2, #52840	@ tmp785,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #1	@,
	ldr	r1, [lr, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetRef	@
	mov	r0, #0	@ D.33742,
	b	.L2222	@
.L2215:
	ldr	r0, [r2, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	ip, #3	@ tmp312,
	strb	ip, [r0, #400]	@ tmp312, <variable>.frame.structure
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r2, #0	@ <variable>.field_pair_flag,
	addeq	r5, r1, #6592	@ tmp797, pos,
	addeq	r5, r5, #16	@ tmp797, tmp797,
	beq	.L2223	@,
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	ldr	r2, [r4, r5, asl #2]	@ temp.6251, <variable>.DPB.fs
	cmp	r2, #0	@ temp.6251,
	beq	.L2223	@,
	strb	r3, [r2, #436]	@ <variable>.structure, <variable>.top_field.structure
	ldr	r8, [r4, r5, asl #2]	@ tmp420, <variable>.DPB.fs
	ldr	r7, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r7, [r8, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	sl, [r4, r5, asl #2]	@ tmp424, <variable>.DPB.fs
	ldrb	fp, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	fp, [sl, #437]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r9, [r4, r5, asl #2]	@ tmp429, <variable>.DPB.fs
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	lr, [r9, #438]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r1, [r4, r5, asl #2]	@ tmp434, <variable>.DPB.fs
	ldr	r2, [r6, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	r2, [r1, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	r3, [r4, r5, asl #2]	@ tmp438, <variable>.DPB.fs
	ldr	r0, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r0, [r3, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	ip, [r4, r5, asl #2]	@ tmp442, <variable>.DPB.fs
	ldr	r8, [r6, #452]	@ <variable>.err_level, <variable>.err_level
	str	r8, [ip, #456]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	fp, [r4, r5, asl #2]	@ temp.6264, <variable>.DPB.fs
	ldr	r7, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r7, sl	@ D.33759, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ D.33759, <variable>.err_level
	str	r9, [fp, #420]	@ D.33759, <variable>.frame.err_level
	ldr	lr, [r4, r5, asl #2]	@ temp.6265, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r6, #2]	@ zero_extendqisi2	@ iftmp.502, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.502, <variable>.non_existing
	add	r1, r6, #16	@, pCurrPic,
	ldr	r3, [r4, r5, asl #2]	@ temp.6266, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #1	@ tmp456, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp456, <variable>.is_used
	ldr	r8, [r4, r5, asl #2]	@ D.33705, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r7, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r7, r7, #1	@ iftmp.503, <variable>.mode_skip_flag,
	strb	r7, [r8, #3]	@ iftmp.503, <variable>.mode_skip_flag
	ldr	r9, [r4, r5, asl #2]	@ temp.6268, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6268,
	ldrd	sl, [r9, #24]	@, temp.6268,
	ldr	r8, [r9, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldr	r7, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6268,
	strd	sl, [sp, #24]	@,,
	ldr	fp, [r9, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	sl, [r9, #76]	@ OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	str	fp, [sp, #4]	@, %sfp
	ldr	lr, [r9, #84]	@ OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	fp, [r9, #88]	@ OtherFieldGopNum, <variable>.fs_image.GopNum
	str	lr, [sp, #12]	@,
	bl	memcpy	@
	ldr	r1, [r6, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r0, r7, r8	@ tmp474, OtherFieldPts, OtherFieldPts
	ldr	r3, [r6, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r1, r3	@ tmp477, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r2, #1	@ tmp477,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r0, #1	@ tmp474,
	ldrd	r2, [r6, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp483,
	mov	r9, ip	@ tmp483,
	ldr	ip, [sp, #12]	@,
	ldrne	r9, [r4, r5, asl #2]	@ tmp486, <variable>.DPB.fs
	strne	r8, [r9, #20]	@ OtherFieldPts, <variable>.fs_image.PTS
	strne	r7, [r9, #16]	@ OtherFieldPts, <variable>.fs_image.PTS
	ldrd	r8, [sp, #16]	@,,
	ldr	r1, [r4, r5, asl #2]	@ tmp489, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r6, #40]	@, pCurrPic,
	strd	r8, [sp, #16]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp489,
	ldrd	r0, [sp, #24]	@,,
	ldr	r3, [r4, r5, asl #2]	@ tmp493, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [sp, #16]	@,,
.L2233:
	ldrd	r8, [sp, #16]	@,,
	ldr	r2, [r6, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r6, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp493,
	ldr	r3, [r4, r5, asl #2]	@ tmp497, <variable>.DPB.fs
	ldr	r1, [r6, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag
	strls	r2, [r3, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r3, #76]	@, OtherFieldDispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r0, [r4, r5, asl #2]	@ tmp502, <variable>.DPB.fs
	ldr	r2, [r6, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, r9	@ <variable>.fs_image.DispFrameDistance,
	strls	lr, [r0, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r9, [r0, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp507, <variable>.DPB.fs
	cmp	r1, ip	@ <variable>.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame
	strls	r1, [r3, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	ip, [r3, #84]	@, OtherFieldDistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r0, [r4, r5, asl #2]	@ tmp512, <variable>.DPB.fs
	cmp	r2, fp	@ <variable>.fs_image.GopNum, OtherFieldGopNum
	strls	r2, [r0, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	fp, [r0, #88]	@, OtherFieldGopNum, <variable>.fs_image.GopNum
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	beq	.L2234	@,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2234	@,
.L2235:
	ldr	r3, [r4, r5, asl #2]	@ temp.6282, <variable>.DPB.fs
	ldr	r1, [r3, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r0, [r3, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, r0	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #540]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	r0, [r3, #540]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	ip, [r4, r5, asl #2]	@ tmp535, <variable>.DPB.fs
	ldr	lr, [r6, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [ip, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r5, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r5, asl #2]	@ temp.6286, <variable>.DPB.fs
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r2, #452]	@ <variable>.top_field.poc, <variable>.top_field.poc
	add	r0, r3, #6656	@ tmp542, <variable>.apc_idc,
	add	r1, r0, #36	@ tmp542, tmp542,
	add	r3, r4, r1, asl #2	@, tmp547, pH264Ctx, tmp542,
	str	ip, [r3, #4]	@ <variable>.top_field.poc, <variable>.APC.poc
	b	.L2221	@
.L2261:
	ldr	ip, [r2, #408]	@ <variable>.frame_store, <variable>.frame_store
	mov	lr, #3	@ tmp551,
	strb	lr, [ip, #400]	@ tmp551, <variable>.frame.structure
	ldrb	r2, [r2, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r2, #0	@ <variable>.field_pair_flag,
	addeq	r5, r1, #6592	@ tmp797, pos,
	addeq	r5, r5, #16	@ tmp797, tmp797,
	beq	.L2236	@,
	add	r5, r1, #6592	@ tmp797, pos,
	add	r5, r5, #16	@ tmp797, tmp797,
	ldr	r2, [r0, r5, asl #2]	@ temp.6333, <variable>.DPB.fs
	cmp	r2, #0	@ temp.6333,
	beq	.L2236	@,
	strb	r3, [r2, #472]	@ <variable>.structure, <variable>.bottom_field.structure
	ldr	r8, [r0, r5, asl #2]	@ tmp655, <variable>.DPB.fs
	ldr	r7, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r7, [r8, #476]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	sl, [r0, r5, asl #2]	@ tmp659, <variable>.DPB.fs
	ldrb	fp, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	fp, [sl, #473]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r9, [r0, r5, asl #2]	@ tmp664, <variable>.DPB.fs
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	lr, [r9, #474]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	r1, [r0, r5, asl #2]	@ tmp669, <variable>.DPB.fs
	ldr	r2, [r6, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r2, [r1, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	r3, [r0, r5, asl #2]	@ tmp673, <variable>.DPB.fs
	ldr	r0, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r0, [r3, #496]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	ip, [r4, r5, asl #2]	@ tmp677, <variable>.DPB.fs
	ldr	r8, [r6, #452]	@ <variable>.err_level, <variable>.err_level
	str	r8, [ip, #492]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	fp, [r4, r5, asl #2]	@ temp.6346, <variable>.DPB.fs
	ldr	r7, [fp, #492]	@ <variable>.bottom_field.err_level, <variable>.bottom_field.err_level
	ldr	sl, [fp, #456]	@ <variable>.top_field.err_level, <variable>.top_field.err_level
	add	r9, r7, sl	@ temp.6349, <variable>.bottom_field.err_level, <variable>.top_field.err_level
	str	r9, [fp, #544]	@ temp.6349, <variable>.err_level
	str	r9, [fp, #420]	@ temp.6349, <variable>.frame.err_level
	ldr	lr, [r4, r5, asl #2]	@ temp.6350, <variable>.DPB.fs
	ldrb	r1, [lr, #0]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	cmp	r1, #0	@ <variable>.non_existing,
	ldrneb	r1, [r6, #2]	@ zero_extendqisi2	@ iftmp.506, <variable>.non_existing
	strb	r1, [lr, #0]	@ iftmp.506, <variable>.non_existing
	add	r1, r6, #16	@, pCurrPic,
	ldr	r3, [r4, r5, asl #2]	@ temp.6352, <variable>.DPB.fs
	ldrb	r2, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	orr	r0, r2, #2	@ tmp691, <variable>.is_used,
	strb	r0, [r3, #1]	@ tmp691, <variable>.is_used
	ldr	r8, [r4, r5, asl #2]	@ temp.6222, <variable>.DPB.fs
	mov	r2, #392	@,
	ldrb	ip, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldrb	r7, [r8, #3]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	cmp	ip, #1	@ <variable>.mode_skip_flag,
	orreq	r7, r7, #2	@ iftmp.507, <variable>.mode_skip_flag,
	strb	r7, [r8, #3]	@ iftmp.507, <variable>.mode_skip_flag
	ldr	r9, [r4, r5, asl #2]	@ temp.6356, <variable>.DPB.fs
	add	r0, r9, #8	@, temp.6356,
	ldrd	sl, [r9, #24]	@, temp.6356,
	ldr	r8, [r9, #20]	@ OtherFieldPts.6357, <variable>.fs_image.PTS
	ldr	r7, [r9, #16]	@ OtherFieldPts.6357, <variable>.fs_image.PTS
	strd	sl, [sp, #16]	@,,
	ldrd	sl, [r9, #32]	@, temp.6356,
	strd	sl, [sp, #24]	@,,
	ldr	fp, [r9, #80]	@, <variable>.fs_image.DispFrameDistance
	ldr	sl, [r9, #76]	@ OtherFieldDispEnableFlag.6360, <variable>.fs_image.DispEnableFlag
	str	fp, [sp, #4]	@, %sfp
	ldr	lr, [r9, #84]	@ OtherFieldDistanceBeforeFirstFrame.6362, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	fp, [r9, #88]	@ OtherFieldGopNum.6363, <variable>.fs_image.GopNum
	str	lr, [sp, #12]	@,
	bl	memcpy	@
	ldr	r1, [r6, #24]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r0, r7, r8	@ tmp709, OtherFieldPts.6357, OtherFieldPts.6357
	ldr	r3, [r6, #28]	@ <variable>.fs_image.PTS, <variable>.fs_image.PTS
	and	r2, r1, r3	@ tmp712, <variable>.fs_image.PTS, <variable>.fs_image.PTS
	cmn	r2, #1	@ tmp712,
	movne	ip, #0	@,
	moveq	ip, #1	@,
	cmn	r0, #1	@ tmp709,
	ldrd	r2, [r6, #32]	@ <variable>.fs_image.Usertag, pCurrPic,
	moveq	ip, #0	@,,
	cmp	ip, #0	@ tmp718,
	mov	r9, ip	@ tmp718,
	ldr	ip, [sp, #12]	@,
	ldrne	r9, [r4, r5, asl #2]	@ tmp721, <variable>.DPB.fs
	strne	r8, [r9, #20]	@ OtherFieldPts.6357, <variable>.fs_image.PTS
	strne	r7, [r9, #16]	@ OtherFieldPts.6357, <variable>.fs_image.PTS
	ldrd	r8, [sp, #16]	@,,
	ldr	r1, [r4, r5, asl #2]	@ tmp724, <variable>.DPB.fs
	cmp	r3, r9	@ <variable>.fs_image.Usertag,
	cmpeq	r2, r8	@ <variable>.fs_image.Usertag,
	movhi	r3, r9	@ <variable>.fs_image.Usertag,
	movhi	r2, r8	@ <variable>.fs_image.Usertag,
	ldrd	r8, [r6, #40]	@, pCurrPic,
	strd	r8, [sp, #16]	@,,
	strd	r2, [r1, #24]	@ <variable>.fs_image.Usertag, tmp724,
	ldrd	r0, [sp, #24]	@,,
	ldr	r3, [r4, r5, asl #2]	@ tmp728, <variable>.DPB.fs
	cmp	r9, r1	@,
	cmpeq	r8, r0	@,
	strhid	r0, [sp, #16]	@,,
.L2248:
	ldrd	r8, [sp, #16]	@,,
	ldr	r2, [r6, #84]	@ <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	ldr	lr, [r6, #88]	@ <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strd	r8, [r3, #32]	@, tmp728,
	ldr	r3, [r4, r5, asl #2]	@ tmp732, <variable>.DPB.fs
	ldr	r1, [r6, #92]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	cmp	r2, sl	@ <variable>.fs_image.DispEnableFlag, OtherFieldDispEnableFlag.6360
	strls	r2, [r3, #76]	@, <variable>.fs_image.DispEnableFlag, <variable>.fs_image.DispEnableFlag
	strhi	sl, [r3, #76]	@, OtherFieldDispEnableFlag.6360, <variable>.fs_image.DispEnableFlag
	ldr	r9, [sp, #4]	@, %sfp
	ldr	r0, [r4, r5, asl #2]	@ tmp737, <variable>.DPB.fs
	ldr	r2, [r6, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	cmp	lr, r9	@ <variable>.fs_image.DispFrameDistance,
	strls	lr, [r0, #80]	@, <variable>.fs_image.DispFrameDistance, <variable>.fs_image.DispFrameDistance
	strhi	r9, [r0, #80]	@,, <variable>.fs_image.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp742, <variable>.DPB.fs
	cmp	r1, ip	@ <variable>.fs_image.DistanceBeforeFirstFrame, OtherFieldDistanceBeforeFirstFrame.6362
	strls	r1, [r3, #84]	@, <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.fs_image.DistanceBeforeFirstFrame
	strhi	ip, [r3, #84]	@, OtherFieldDistanceBeforeFirstFrame.6362, <variable>.fs_image.DistanceBeforeFirstFrame
	ldr	r0, [r4, r5, asl #2]	@ tmp747, <variable>.DPB.fs
	cmp	r2, fp	@ <variable>.fs_image.GopNum, OtherFieldGopNum.6363
	strls	r2, [r0, #88]	@, <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strhi	fp, [r0, #88]	@, OtherFieldGopNum.6363, <variable>.fs_image.GopNum
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	ip, #1	@ <variable>.is_long_term,
	beq	.L2249	@,
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	ip, #1	@ <variable>.is_short_term,
	beq	.L2249	@,
.L2250:
	ldr	r3, [r4, r5, asl #2]	@ temp.6394, <variable>.DPB.fs
	ldr	r1, [r3, #496]	@ <variable>.bottom_field.pic_type, <variable>.bottom_field.pic_type
	ldr	r0, [r3, #460]	@ <variable>.top_field.pic_type, <variable>.top_field.pic_type
	cmp	r1, r0	@ <variable>.bottom_field.pic_type, <variable>.top_field.pic_type
	strcs	r1, [r3, #540]	@, <variable>.bottom_field.pic_type, <variable>.pic_type
	strcc	r0, [r3, #540]	@, <variable>.top_field.pic_type, <variable>.pic_type
	ldr	ip, [r4, r5, asl #2]	@ tmp770, <variable>.DPB.fs
	ldr	lr, [r6, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	lr, [ip, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r0, [r4, r5, asl #2]	@, <variable>.DPB.fs
	bl	CombineFldsToFrm	@
	ldr	r2, [r4, r5, asl #2]	@ temp.6401, <variable>.DPB.fs
	ldr	r3, [r2, #552]	@ <variable>.apc_idc, <variable>.apc_idc
	ldr	ip, [r2, #488]	@ <variable>.bottom_field.poc, <variable>.bottom_field.poc
	add	r0, r3, #6656	@ tmp777, <variable>.apc_idc,
	add	r1, r0, #52	@ tmp777, tmp777,
	add	r3, r4, r1, asl #2	@, tmp782, pH264Ctx, tmp777,
	str	ip, [r3, #4]	@ <variable>.bottom_field.poc, <variable>.APC.poc
	b	.L2221	@
.L2236:
	ldr	r3, [r6, #408]	@ temp.6403, <variable>.frame_store
	mov	r0, #2	@ tmp558,
	str	r3, [r4, r5, asl #2]	@ temp.6403, <variable>.DPB.fs
	strb	r0, [r3, #472]	@ tmp558, <variable>.bottom_field.structure
	ldr	lr, [r4, r5, asl #2]	@ tmp562, <variable>.DPB.fs
	ldr	r2, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r2, [lr, #476]	@ <variable>.frame_store, <variable>.bottom_field.frame_store
	ldr	r1, [r4, r5, asl #2]	@ tmp566, <variable>.DPB.fs
	ldrb	ip, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	ip, [r1, #473]	@ <variable>.is_long_term, <variable>.bottom_field.is_long_term
	ldr	r3, [r4, r5, asl #2]	@ tmp571, <variable>.DPB.fs
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	lr, [r3, #474]	@ <variable>.is_short_term, <variable>.bottom_field.is_short_term
	ldr	r2, [r4, r5, asl #2]	@ tmp576, <variable>.DPB.fs
	ldr	r1, [r6, #440]	@ <variable>.bottompoc, <variable>.bottompoc
	str	r1, [r2, #488]	@ <variable>.bottompoc, <variable>.bottom_field.poc
	ldr	ip, [r4, r5, asl #2]	@ tmp580, <variable>.DPB.fs
	ldr	lr, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	lr, [ip, #496]	@ <variable>.pic_type, <variable>.bottom_field.pic_type
	ldr	r3, [r4, r5, asl #2]	@ tmp584, <variable>.DPB.fs
	ldr	r2, [r6, #452]	@ <variable>.err_level, <variable>.err_level
	str	r2, [r3, #492]	@ <variable>.err_level, <variable>.bottom_field.err_level
	ldr	r1, [r4, r5, asl #2]	@ temp.6416, <variable>.DPB.fs
	ldr	ip, [r1, #456]	@ temp.6417, <variable>.top_field.err_level
	str	ip, [r1, #544]	@ temp.6417, <variable>.err_level
	str	ip, [r1, #420]	@ temp.6417, <variable>.frame.err_level
	ldr	lr, [r4, r5, asl #2]	@ tmp590, <variable>.DPB.fs
	ldrb	r2, [r6, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	r2, [lr, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r3, [r4, r5, asl #2]	@ tmp595, <variable>.DPB.fs
	strb	r0, [r3, #1]	@ tmp558, <variable>.is_used
	ldr	r1, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	ip, [r4, r5, asl #2]	@ tmp600, <variable>.DPB.fs
	ldrb	lr, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	lr, [ip, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r2, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r4, r5, asl #2]	@ tmp606, <variable>.DPB.fs
	ldr	r0, [r2, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	r0, [r3, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, #1	@ <variable>.is_long_term,
	beq	.L2238	@,
	ldrb	r0, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r0, #1	@ <variable>.is_short_term,
	beq	.L2238	@,
.L2239:
	ldr	r3, [r4, r5, asl #2]	@ tmp623, <variable>.DPB.fs
	mov	r0, #0	@ tmp624,
	add	r1, r6, #16	@, pCurrPic,
	mov	r2, #392	@,
	str	r0, [r3, #536]	@ tmp624, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5, asl #2]	@ tmp627, <variable>.DPB.fs
	add	r0, lr, #8	@, tmp627,
	bl	memcpy	@
	ldr	r1, [r4, r5, asl #2]	@ tmp634, <variable>.DPB.fs
	ldr	ip, [r6, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #2	@,
	mov	r0, r4	@, pH264Ctx
	str	ip, [r1, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r5, asl #2]	@ tmp638, <variable>.DPB.fs
	ldr	r1, [r6, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	r1, [r3, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	ip, [r4, r5, asl #2]	@ tmp642, <variable>.DPB.fs
	ldr	r1, [r6, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	r1, [ip, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r5, asl #2]	@ temp.6441, <variable>.DPB.fs
	ldr	ip, [r6, #444]	@ temp.6442, <variable>.pic_type
	str	ip, [r3, #540]	@ temp.6442, <variable>.pic_type
	str	ip, [r3, #496]	@ temp.6442, <variable>.bottom_field.pic_type
	ldrb	r1, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	r3, [r4, r5, asl #2]	@ temp.6443, <variable>.DPB.fs
	cmp	r1, #1	@ <variable>.mode_skip_flag,
	moveq	r1, r2	@ iftmp.504,
	movne	r1, #0	@ iftmp.504,
.L2260:
	strb	r1, [r3, #3]	@ iftmp.504, <variable>.mode_skip_flag
	ldr	r1, [r6, #408]	@, <variable>.frame_store
	bl	GetAPC	@
	cmp	r0, #0	@,
	beq	.L2221	@,
.L2258:
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.33742,
	b	.L2222	@
.L2223:
	ldr	r3, [r6, #408]	@ temp.6287, <variable>.frame_store
	mov	lr, #1	@ tmp319,
	str	r3, [r4, r5, asl #2]	@ temp.6287, <variable>.DPB.fs
	strb	lr, [r3, #436]	@ tmp319, <variable>.top_field.structure
	ldr	ip, [r4, r5, asl #2]	@ tmp323, <variable>.DPB.fs
	ldr	r2, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	str	r2, [ip, #440]	@ <variable>.frame_store, <variable>.top_field.frame_store
	ldr	r1, [r4, r5, asl #2]	@ tmp327, <variable>.DPB.fs
	ldrb	r0, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	strb	r0, [r1, #437]	@ <variable>.is_long_term, <variable>.top_field.is_long_term
	ldr	r3, [r4, r5, asl #2]	@ tmp332, <variable>.DPB.fs
	ldrb	ip, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	strb	ip, [r3, #438]	@ <variable>.is_short_term, <variable>.top_field.is_short_term
	ldr	r2, [r4, r5, asl #2]	@ tmp337, <variable>.DPB.fs
	ldr	r1, [r6, #436]	@ <variable>.toppoc, <variable>.toppoc
	str	r1, [r2, #452]	@ <variable>.toppoc, <variable>.top_field.poc
	ldr	r0, [r4, r5, asl #2]	@ tmp341, <variable>.DPB.fs
	ldr	ip, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	ip, [r0, #460]	@ <variable>.pic_type, <variable>.top_field.pic_type
	ldr	r3, [r4, r5, asl #2]	@ tmp345, <variable>.DPB.fs
	ldr	r2, [r6, #452]	@ <variable>.err_level, <variable>.err_level
	str	r2, [r3, #456]	@ <variable>.err_level, <variable>.top_field.err_level
	ldr	r1, [r4, r5, asl #2]	@ temp.6300, <variable>.DPB.fs
	ldr	r0, [r1, #456]	@ temp.6301, <variable>.top_field.err_level
	str	r0, [r1, #544]	@ temp.6301, <variable>.err_level
	str	r0, [r1, #420]	@ temp.6301, <variable>.frame.err_level
	ldr	ip, [r4, r5, asl #2]	@ tmp351, <variable>.DPB.fs
	ldrb	r2, [r6, #2]	@ zero_extendqisi2	@ <variable>.non_existing, <variable>.non_existing
	strb	r2, [ip, #0]	@ <variable>.non_existing, <variable>.non_existing
	ldr	r3, [r4, r5, asl #2]	@ tmp356, <variable>.DPB.fs
	strb	lr, [r3, #1]	@ tmp319, <variable>.is_used
	ldr	r1, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r0, [r4, r5, asl #2]	@ tmp361, <variable>.DPB.fs
	ldrb	ip, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	strb	ip, [r0, #4]	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	ldr	r2, [r6, #408]	@ <variable>.frame_store, <variable>.frame_store
	ldr	r3, [r4, r5, asl #2]	@ tmp367, <variable>.DPB.fs
	ldr	lr, [r2, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	str	lr, [r3, #532]	@ <variable>.is_displayed, <variable>.is_displayed
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, #1	@ <variable>.is_long_term,
	beq	.L2225	@,
	ldrb	lr, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	lr, #1	@ <variable>.is_short_term,
	beq	.L2225	@,
.L2226:
	ldr	r3, [r4, r5, asl #2]	@ tmp384, <variable>.DPB.fs
	mov	r0, #0	@ tmp385,
	add	r1, r6, #16	@, pCurrPic,
	mov	r2, #392	@,
	str	r0, [r3, #536]	@ tmp385, <variable>.MbaffFrameFlag
	ldr	lr, [r4, r5, asl #2]	@ tmp388, <variable>.DPB.fs
	add	r0, lr, #8	@, tmp388,
	bl	memcpy	@
	ldr	ip, [r4, r5, asl #2]	@ tmp395, <variable>.DPB.fs
	ldr	r1, [r6, #476]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	str	r1, [ip, #548]	@ <variable>.pmv_address_idc, <variable>.pmv_address_idc
	ldr	r3, [r4, r5, asl #2]	@ tmp399, <variable>.DPB.fs
	ldr	ip, [r6, #416]	@ <variable>.frame_num, <variable>.frame_num
	str	ip, [r3, #512]	@ <variable>.frame_num, <variable>.frame_num
	ldr	r1, [r4, r5, asl #2]	@ tmp403, <variable>.DPB.fs
	ldr	ip, [r6, #428]	@ <variable>.thispoc, <variable>.thispoc
	str	ip, [r1, #524]	@ <variable>.thispoc, <variable>.poc
	ldr	r3, [r4, r5, asl #2]	@ tmp407, <variable>.DPB.fs
	ldr	r1, [r6, #444]	@ <variable>.pic_type, <variable>.pic_type
	str	r1, [r3, #540]	@ <variable>.pic_type, <variable>.pic_type
	ldrb	ip, [r6, #7]	@ zero_extendqisi2	@ <variable>.mode_skip_flag, <variable>.mode_skip_flag
	ldr	r3, [r4, r5, asl #2]	@ tmp411, <variable>.DPB.fs
	cmp	ip, r2	@ <variable>.mode_skip_flag,
	movne	r1, #0	@, tmp413
	moveq	r1, #1	@, tmp413
	b	.L2260	@
.L2262:
	ldrb	r2, [r6, #5]	@ zero_extendqisi2	@ <variable>.is_short_term, <variable>.is_short_term
	cmp	r2, #0	@ <variable>.is_short_term,
	beq	.L2218	@,
	b	.L2217	@
.L2238:
	ldr	r2, [r4, r5, asl #2]	@ tmp613, <variable>.DPB.fs
	mov	ip, #2	@ tmp614,
	strb	ip, [r2, #2]	@ tmp614, <variable>.is_reference
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, #1	@ <variable>.is_long_term,
	ldreq	r1, [r4, r5, asl #2]	@ tmp619, <variable>.DPB.fs
	ldreq	ip, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	ip, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2239	@
.L2225:
	ldr	r2, [r4, r5, asl #2]	@ tmp374, <variable>.DPB.fs
	mov	r0, #1	@ tmp375,
	strb	r0, [r2, #2]	@ tmp375, <variable>.is_reference
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	r1, r0	@ <variable>.is_long_term,
	ldreq	r1, [r4, r5, asl #2]	@ tmp380, <variable>.DPB.fs
	ldreq	r0, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r0, [r1, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2226	@
.L2249:
	ldr	r0, [r4, r5, asl #2]	@ temp.6389, <variable>.DPB.fs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #2	@ tmp756, <variable>.is_reference,
	strb	r1, [r0, #2]	@ tmp756, <variable>.is_reference
	ldrb	lr, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r5, asl #2]	@ tmp761, <variable>.DPB.fs
	ldreq	r1, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2250	@
.L2234:
	ldr	r0, [r4, r5, asl #2]	@ temp.6278, <variable>.DPB.fs
	ldrb	r2, [r0, #2]	@ zero_extendqisi2	@ <variable>.is_reference, <variable>.is_reference
	orr	r1, r2, #1	@ tmp521, <variable>.is_reference,
	strb	r1, [r0, #2]	@ tmp521, <variable>.is_reference
	ldrb	lr, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_long_term, <variable>.is_long_term
	cmp	lr, #1	@ <variable>.is_long_term,
	ldreq	lr, [r4, r5, asl #2]	@ tmp526, <variable>.DPB.fs
	ldreq	r1, [r6, #420]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	streq	r1, [lr, #520]	@ <variable>.long_term_frame_idx, <variable>.long_term_frame_idx
	b	.L2235	@
	.fnend
	.size	InsertFrmInDPB, .-InsertFrmInDPB
	.align	2
	.global	StorePicInDPB
	.type	StorePicInDPB, %function
StorePicInDPB:
	.fnstart
.LFB1646:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #49707	@ tmp180,
	movw	r3, #49704	@ tmp183,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldrb	ip, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	ldrb	lr, [r0, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r5, #19824	@ tmp179,
	movw	r3, #19820	@ tmp177,
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	lr, #2	@ <variable>.CurrPic.structure,
	movne	r2, #0	@, tmp182
	moveq	r2, #1	@, tmp182
	cmp	ip, #0	@ <variable>.CurrPic.state,
	str	r2, [r0, r5]	@ tmp182, <variable>.CurrPOC.last_pic_bottom_field
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r5, #0	@ tmp178,
	str	r5, [r0, r3]	@ tmp178, <variable>.CurrPOC.last_has_mmco_5
	bne	.L2344	@,
.L2264:
	movw	r5, #50112	@ tmp383,
	movw	lr, #52840	@ tmp380,
	ldr	ip, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	ldr	r2, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r3, #0	@ tmp387,
	mvn	r0, #0	@ ret,
	strb	r3, [r2, #4]	@ tmp387, <variable>.is_in_dpb
	ldr	r1, [r4, r5]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [r1, #1]	@ tmp387, <variable>.is_used
.L2317:
	movw	r3, #49704	@ tmp393,
	mov	r1, #0	@ tmp394,
	strb	r1, [r4, r3]	@ tmp394, <variable>.CurrPic.state
.L2288:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2344:
	movw	ip, #52768	@ tmp188,
	movw	r2, #52856	@ tmp186,
	ldr	r3, [r0, ip]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movw	lr, #52852	@ tmp185,
	ldr	ip, [r0, r2]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r3, #2	@ <variable>.OldDecMode,
	str	ip, [r0, lr]	@ <variable>.PicCounter, <variable>.PrevStorePicCounter
	beq	.L2345	@,
	ldr	r0, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r0, #12]	@ prephitmp.6479, <variable>.s32DecOrderOutput
	cmp	r2, #0	@ prephitmp.6479,
	ble	.L2346	@,
.L2267:
	movw	r0, #49706	@ tmp202,
	ldrb	lr, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	lr, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2269	@,
	movw	r6, #49707	@ tmp205,
	movw	lr, #50112	@ tmp204,
	ldrb	r1, [r4, r6]	@ zero_extendqisi2	@ temp.6512, <variable>.CurrPic.structure
	ldr	r6, [r4, lr]	@ pFrameStore, <variable>.CurrPic.frame_store
	sub	r3, r1, #1	@ tmp206, temp.6512,
	uxtb	ip, r3	@ tmp207, tmp206
	cmp	ip, #1	@ tmp207,
	movhi	r0, #0	@, one_fld_flg
	movls	r0, #1	@, one_fld_flg
	cmp	r1, #0	@ temp.6512,
	bne	.L2347	@,
.L2270:
	cmp	r0, #0	@ one_fld_flg,
	beq	.L2271	@,
	movw	r3, #52848	@ tmp216,
	ldr	ip, [r4, r3]	@ temp.6513, <variable>.FirstFrameDisplayed
	cmp	ip, #0	@ temp.6513,
	bne	.L2272	@,
	add	lr, r4, #49664	@, pH264Ctx,
	add	r0, r4, #50176	@, pH264Ctx,
	add	r1, lr, #40	@,,
	mov	r2, #1	@ tmp218,
	add	r0, r0, #8	@,,
	str	r2, [r4, r3]	@ tmp218, <variable>.FirstFrameDisplayed
	mov	r2, #480	@,
	bl	memcpy	@
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r2, [r1, #12]	@ prephitmp.6479, <variable>.s32DecOrderOutput
.L2269:
	cmp	r2, #2	@ prephitmp.6479,
	beq	.L2348	@,
.L2268:
	movw	r3, #50128	@ tmp296,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	ip, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2286	@,
	movw	r2, #52832	@ tmp298,
	movw	lr, #50156	@ tmp299,
	ldr	r1, [r4, r2]	@ <variable>.ref_error_thr, <variable>.ref_error_thr
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.err_level, <variable>.CurrPic.err_level
	cmp	r1, r0	@ <variable>.ref_error_thr, <variable>.CurrPic.err_level
	bcs	.L2290	@,
	movw	ip, #49706	@ tmp302,
	ldrb	r2, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.non_existing, <variable>.CurrPic.non_existing
	cmp	r2, #0	@ <variable>.CurrPic.non_existing,
	bne	.L2290	@,
	movw	r5, #:lower16:g_event_report	@ tmp304,
	movt	r5, #:upper16:g_event_report	@ tmp304,
	ldr	r3, [r5, #0]	@ g_event_report.6533, g_event_report
	cmp	r3, #0	@ g_event_report.6533,
	beq	.L2291	@,
	movw	r1, #52840	@ tmp305,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mov	r1, #104	@,
	blx	r3	@ g_event_report.6533
.L2291:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	b	.L2264	@
.L2290:
	mov	r0, r4	@, pH264Ctx
	bl	Marking	@
	cmp	r0, #0	@,
	bne	.L2264	@,
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	RemoveUnUsedFrameStore	@
.L2286:
	movw	r0, #49705	@ tmp307,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrPic.field_pair_flag, <variable>.CurrPic.field_pair_flag
	cmp	r3, #1	@ <variable>.CurrPic.field_pair_flag,
	beq	.L2349	@,
.L2292:
	movw	r1, #50128	@ tmp318,
	ldr	r5, [r4, r1]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r5, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2299	@,
	mov	r3, #26624	@ tmp320,
	ldr	r5, [r4, r3]	@ pre_used_size.6567, <variable>.DPB.size
.L2301:
	add	r9, r4, #26368	@ ivtmp.6503, pH264Ctx,
	mvn	lr, #0	@ pre_used_size,
	add	r7, r9, #64	@ ivtmp.6503, ivtmp.6503,
	mov	fp, lr	@ pre_pos, pre_used_size
	movw	r8, #26628	@ tmp402,
	movw	sl, #50128	@ tmp408,
	movw	r9, #50132	@ tmp409,
.L2300:
	ldr	r1, [r4, r8]	@ pre_used_size.6540, <variable>.DPB.used_size
	cmp	r1, r5	@ pre_used_size.6540, pre_used_size.6567
	bcc	.L2350	@,
	movls	r5, r1	@ pre_used_size.6567, pre_used_size.6540
	strhi	r5, [r4, r8]	@ pre_used_size.6567, <variable>.DPB.used_size
	cmp	r5, #0	@ pre_used_size.6567,
	moveq	r6, r5	@ pos, pre_used_size.6567
	mvneq	r3, #-2147483648	@ min_poc,
	beq	.L2307	@,
	tst	r5, #1	@ pre_used_size.6567,
	mov	r6, #0	@ pos,
	mov	r2, r7	@ ivtmp.6503, ivtmp.6503
	mov	r0, r6	@ pos.6562, pos
	mvn	r1, #-2147483648	@ min_poc.6566,
	bne	.L2308	@,
	ldr	r3, [r7, #0]	@ D.40556, <variable>.DPB.fs
	ldr	r1, [r3, #524]	@ min_poc, <variable>.poc
	cmn	r1, #-2147483647	@ min_poc,
	bge	.L2322	@,
	ldrb	r0, [r3, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r0, #0	@ <variable>.is_in_dpb,
	beq	.L2322	@,
	add	r2, r7, #4	@ ivtmp.6503, ivtmp.6503,
	mov	r0, #1	@ pos.6562,
.L2308:
	ldr	ip, [r2, #0]	@ D.40556, <variable>.DPB.fs
	ldr	r3, [ip, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.6566
	bge	.L2305	@,
.L2351:
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ pos, pos.6562
	beq	.L2305	@,
	add	r0, r0, #1	@ tmp415, pos.6562,
	add	ip, r2, #4	@ tmp414, ivtmp.6503,
	cmp	r0, r5	@ tmp415, pre_used_size.6567
	beq	.L2307	@,
.L2352:
	ldr	r2, [r2, #4]	@ D.40556, <variable>.DPB.fs
	ldr	r1, [r2, #524]	@ min_poc, <variable>.poc
	cmp	r1, r3	@ min_poc, min_poc
	bge	.L2324	@,
	ldrb	r2, [r2, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r2, #0	@ <variable>.is_in_dpb,
	beq	.L2324	@,
	mov	r6, r0	@ pos, tmp415
.L2338:
	add	r2, ip, #4	@ ivtmp.6503, tmp414,
	add	r0, r0, #1	@ pos.6562, tmp415,
	ldr	ip, [r2, #0]	@ D.40556, <variable>.DPB.fs
	ldr	r3, [ip, #524]	@ min_poc, <variable>.poc
	cmp	r3, r1	@ min_poc, min_poc.6566
	blt	.L2351	@,
.L2305:
	add	r0, r0, #1	@ tmp415, pos.6562,
	mov	r3, r1	@ min_poc, min_poc.6566
	cmp	r0, r5	@ tmp415, pre_used_size.6567
	add	ip, r2, #4	@ tmp414, ivtmp.6503,
	bne	.L2352	@,
.L2307:
	ldr	r1, [r4, sl]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r1, #0	@ <variable>.CurrPic.nal_ref_idc,
	bne	.L2309	@,
	ldr	r2, [r4, r9]	@ <variable>.CurrPic.thispoc, <variable>.CurrPic.thispoc
	cmp	r2, r3	@ <variable>.CurrPic.thispoc, min_poc
	blt	.L2353	@,
.L2309:
	cmp	lr, r5	@ pre_used_size, pre_used_size.6567
	bne	.L2311	@,
	cmp	fp, r6	@ pre_pos, pos
	beq	.L2264	@,
.L2311:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pos
	bl	OutputFrmFromDPB	@
	cmn	r0, #1	@,
	beq	.L2264	@,
	mov	fp, #26624	@,
	mov	lr, r5	@ pre_used_size, pre_used_size.6567
	ldr	r5, [r4, fp]	@ pre_used_size.6567, <variable>.DPB.size
	mov	fp, r6	@ pre_pos, pos
	b	.L2300	@
.L2322:
	mvn	r1, #-2147483648	@ min_poc,
	mov	r0, #1	@ pos.6562,
	add	r2, r7, #4	@ ivtmp.6503, ivtmp.6503,
	b	.L2308	@
.L2347:
	ldrb	r3, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r3, #0	@ <variable>.is_used,
	moveq	ip, r0	@, tmp215, one_fld_flg
	orrne	ip, r0, #1	@,, tmp215, one_fld_flg
	cmp	ip, #0	@ tmp215,
	beq	.L2269	@,
	b	.L2270	@
.L2345:
	bl	DirectOutput	@
	movw	r3, #51320	@ tmp191,
	movw	r2, #50180	@ tmp190,
	ldr	r1, [r4, r3]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	r3, [r4, r2]	@ D.34254, <variable>.CurrPic.pmv_address_idc
	cmp	r3, r1	@ D.34254, <variable>.TotalPmvNum
	addne	lr, r3, #12800	@ tmp193, D.34254,
	strne	r1, [r4, r2]	@ <variable>.TotalPmvNum, <variable>.CurrPic.pmv_address_idc
	addne	r1, lr, #12	@ tmp193, tmp193,
	strne	r5, [r4, r1, asl #2]	@ tmp178, <variable>.PmvStoreUsedFlag
.L2266:
	cmn	r0, #1	@ ret,
	bne	.L2317	@,
	b	.L2264	@
.L2349:
	movw	ip, #50112	@ tmp309,
	movw	r2, #50696	@ tmp310,
	ldr	r0, [r4, ip]	@ D.34373, <variable>.CurrPic.frame_store
	ldr	lr, [r4, r2]	@ <variable>.pDirectOutBuf, <variable>.pDirectOutBuf
	cmp	r0, lr	@ D.34373, <variable>.pDirectOutBuf
	beq	.L2354	@,
.L2293:
	movw	r3, #26628	@ tmp312,
	ldr	lr, [r4, r3]	@ temp.6564, <variable>.DPB.used_size
	cmp	lr, #0	@ temp.6564,
	beq	.L2292	@,
	movw	ip, #26432	@ tmp313,
	ldr	r2, [r4, ip]	@ <variable>.DPB.fs, <variable>.DPB.fs
	cmp	r0, r2	@ D.34373, <variable>.DPB.fs
	moveq	r1, #0	@ i,
	beq	.L2296	@,
	tst	lr, #1	@ temp.6564,
	add	r3, r4, #26368	@ tmp317, pH264Ctx,
	add	r2, r3, #68	@ ivtmp.6508, tmp317,
	mov	r1, #0	@ i,
	bne	.L2297	@,
	ldr	ip, [r2, #0]	@ D.34383, <variable>.DPB.fs
	mov	r1, #1	@ i,
	add	r2, r3, #72	@ ivtmp.6508, tmp317,
	cmp	r0, ip	@ D.34373, D.34383
	bne	.L2297	@,
	b	.L2296	@
.L2298:
	ldr	ip, [r3], #4	@ D.34383, <variable>.DPB.fs
	cmp	r0, ip	@ D.34373, D.34383
	beq	.L2296	@,
	ldr	ip, [r2, #4]	@ D.34383, <variable>.DPB.fs
	add	r1, r1, #1	@ i, i,
	add	r2, r3, #4	@ ivtmp.6508, tmp420,
	cmp	r0, ip	@ D.34373, D.34383
	beq	.L2296	@,
.L2297:
	add	r1, r1, #1	@ i, i,
	mov	r3, r2	@ tmp420, ivtmp.6508
	cmp	r1, lr	@ i, temp.6564
	bcc	.L2298	@,
	b	.L2292	@
.L2272:
	cmp	ip, #1	@ temp.6513,
	beq	.L2273	@,
.L2271:
	cmp	r1, #0	@ temp.6512,
	beq	.L2274	@,
	ldrb	ip, [r6, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	ip, #0	@ <variable>.is_used,
	beq	.L2269	@,
.L2274:
	cmp	r0, #0	@ one_fld_flg,
	bne	.L2355	@,
.L2275:
	add	r3, r4, #49664	@ pOutPic, pH264Ctx,
	add	r7, r3, #40	@ pOutPic, pOutPic,
.L2276:
	ldrb	r1, [r7, #3]	@ zero_extendqisi2	@ <variable>.structure, <variable>.structure
	cmp	r1, #0	@ <variable>.structure,
	bne	.L2356	@,
.L2277:
	ldr	r8, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	str	r8, [r6, #544]	@ <variable>.err_level, <variable>.err_level
.L2278:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pOutFrameStore
	movw	r8, #52840	@ tmp240,
	bl	GetImagePara	@
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L2264	@,
	ldrd	sl, [r7, #24]	@, pOutPic,
	ldrd	r0, [r7, #40]	@, pOutPic,
	ldr	r3, [r7, #96]	@ <variable>.fs_image.GopNum, <variable>.fs_image.GopNum
	strd	sl, [r5, #8]	@, pImg,
	strd	r0, [r5, #24]	@, pImg,
	ldrd	sl, [r7, #32]	@, pOutPic,
	add	r1, r7, #84
	ldmia	r1, {r1, r2, lr}	@ phole ldm
	strd	sl, [r5, #16]	@, pImg,
	str	r1, [r5, #68]	@ <variable>.fs_image.DispEnableFlag, <variable>.DispEnableFlag
	str	r2, [r5, #72]	@ <variable>.fs_image.DispFrameDistance, <variable>.DispFrameDistance
	str	lr, [r5, #76]	@ <variable>.fs_image.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r3, [r5, #80]	@ <variable>.fs_image.GopNum, <variable>.GopNum
	ldr	r1, [r6, #544]	@ D.34309, <variable>.err_level
	cmp	r1, #0	@ D.34309,
	str	r1, [r5, #180]	@ D.34309, <variable>.error_level
	beq	.L2279	@,
	ldr	r0, [r5, #140]	@ <variable>.format, <variable>.format
	ands	r2, r0, #3	@ tmp250, <variable>.format,
	bne	.L2280	@,
	movw	ip, #:lower16:g_event_report	@ tmp252,
	movt	ip, #:upper16:g_event_report	@ tmp252,
	ldr	r3, [ip, #0]	@ g_event_report.538, g_event_report
	cmp	r3, #0	@ g_event_report.538,
	beq	.L2280	@,
	mov	r1, #111	@,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	blx	r3	@ g_event_report.538
	ldr	r1, [r5, #180]	@ D.34309, <variable>.error_level
	cmp	r1, #0	@ D.34309,
	beq	.L2279	@,
.L2280:
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [lr, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	cmp	r3, r1	@ <variable>.s32OutErrThr, D.34309
	bcs	.L2279	@,
	movw	r5, #52840	@ tmp277,
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r5]	@, <variable>.ChanID
	mov	r2, #0	@,
	bl	FSP_SetDisplay	@
	b	.L2264	@
.L2279:
	movw	r7, #52840	@ tmp256,
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_SetDisplay	@
	ldr	r0, [r4, r7]	@ <variable>.ChanID, <variable>.ChanID
	mov	r1, #0	@,
	mov	r2, r4	@, pH264Ctx
	add	r3, r4, #8	@, pH264Ctx,
	str	r5, [sp, #0]	@ pImg,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@ D.34326,
	beq	.L2282	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r2, #0	@,
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_SetDisplay	@
.L2283:
	mov	r1, r5	@, pImg
	mov	r0, r4	@, pH264Ctx
	bl	SetFrmRepeatCount	@
	movw	r3, #52848	@ tmp275,
	ldr	r1, [r4, r3]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	movw	r0, #52864	@ tmp271,
	ldr	ip, [r4, r0]	@ <variable>.PicOutCounter, <variable>.PicOutCounter
	cmp	r1, #2	@ <variable>.FirstFrameDisplayed,
	mov	r1, #2	@ tmp282,
	add	r2, ip, #2	@ tmp274, <variable>.PicOutCounter,
	str	r2, [r4, r0]	@ tmp274, <variable>.PicOutCounter
	movne	r0, #1	@ tmp280,
	strne	r0, [r6, #528]	@ tmp280, <variable>.eFoState
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	movw	r0, #52848	@ tmp281,
	str	r1, [r4, r0]	@ tmp282, <variable>.FirstFrameDisplayed
	ldr	r2, [lr, #12]	@ prephitmp.6479, <variable>.s32DecOrderOutput
	b	.L2269	@
.L2324:
	mov	r1, r3	@ min_poc, min_poc
	b	.L2338	@
.L2346:
	movw	r3, #52848	@ tmp200,
	ldr	ip, [r4, r3]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	ip, #2	@ <variable>.FirstFrameDisplayed,
	bne	.L2267	@,
	b	.L2268	@
.L2348:
	movw	ip, #50128	@ tmp284,
	ldr	r2, [r4, ip]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r2, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2286	@,
	movw	r3, #49710	@ tmp286,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.nal_unit_type, <variable>.CurrPic.nal_unit_type
	cmp	r1, #5	@ <variable>.CurrPic.nal_unit_type,
	beq	.L2357	@,
.L2287:
	mov	r0, r4	@, pH264Ctx
	movw	r5, #26628	@ tmp288,
	bl	SimpleSlideDPB	@
	add	r0, r4, #49664	@, pH264Ctx,
	add	r2, r0, #40	@,,
	ldr	r1, [r4, r5]	@, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmp	r0, #0	@,
	bne	.L2264	@,
	ldr	r2, [r4, r5]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	mov	r0, r4	@, pH264Ctx
	add	lr, r2, #1	@ tmp295, <variable>.DPB.used_size,
	str	lr, [r4, r5]	@ tmp295, <variable>.DPB.used_size
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, #0	@ ret,
	b	.L2317	@
.L2299:
	movw	r3, #26632	@ tmp323,
	movw	r0, #26636	@ tmp322,
	ldr	r2, [r4, r0]	@ <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ltref_frames_in_buffer
	mov	ip, #26624	@ tmp321,
	ldr	lr, [r4, r3]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	ldr	r5, [r4, ip]	@ pre_used_size.6567, <variable>.DPB.size
	add	r3, r2, lr	@ tmp324, <variable>.DPB.ltref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r5, r3	@ pre_used_size.6567, tmp324
	bhi	.L2301	@,
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	b	.L2264	@
.L2356:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2	@ <variable>.field_pair_flag, <variable>.field_pair_flag
	cmp	r3, #1	@ <variable>.field_pair_flag,
	bne	.L2277	@,
	ldr	r2, [r6, #544]	@ <variable>.err_level, <variable>.err_level
	add	ip, r3, #2	@ tmp234, tmp234,
	strb	ip, [r6, #1]	@ tmp234, <variable>.is_used
	ldr	r0, [r7, #452]	@ <variable>.err_level, <variable>.err_level
	add	lr, r2, r0	@ tmp238, <variable>.err_level, <variable>.err_level
	str	lr, [r6, #544]	@ tmp238, <variable>.err_level
	b	.L2278	@
.L2282:
	movw	ip, #52872	@ tmp265,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r3, [r4, ip]	@ <variable>.numOutputFrame, <variable>.numOutputFrame
	add	r1, r3, #1	@ tmp268, <variable>.numOutputFrame,
	str	r1, [r4, ip]	@ tmp268, <variable>.numOutputFrame
	str	r0, [r2, #732]	@ D.34326, <variable>.s32firstIdecodedflag
	b	.L2283	@
.L2355:
	movw	r8, #52848	@ tmp227,
	ldr	r7, [r4, r8]	@ <variable>.FirstFrameDisplayed, <variable>.FirstFrameDisplayed
	cmp	r7, #1	@ <variable>.FirstFrameDisplayed,
	bne	.L2275	@,
.L2273:
	add	r6, r4, #50176	@ pOutPic, pH264Ctx,
	movw	r5, #50592	@ tmp230,
	add	r7, r6, #8	@ pOutPic, pOutPic,
	ldr	r6, [r4, r5]	@ pOutFrameStore, <variable>.LastPic.frame_store
	b	.L2276	@
.L2296:
	add	r0, r4, #49664	@, pH264Ctx,
	add	r2, r0, #40	@,,
	mov	r0, r4	@, pH264Ctx
	bl	InsertFrmInDPB	@
	cmn	r0, #1	@,
	beq	.L2264	@,
.L2343:
	mov	r0, r4	@, pH264Ctx
	bl	UpdateReflist	@
	mov	r0, r4	@, pH264Ctx
	bl	UpdateLTReflist	@
	mov	r0, #0	@ ret,
	b	.L2317	@
.L2350:
	movw	lr, #50128	@ tmp343,
	ldr	r2, [r4, lr]	@ <variable>.CurrPic.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	cmp	r2, #0	@ <variable>.CurrPic.nal_ref_idc,
	beq	.L2313	@,
	movw	r3, #49708	@ tmp345,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrPic.is_long_term, <variable>.CurrPic.is_long_term
	cmp	r2, #0	@ <variable>.CurrPic.is_long_term,
	bne	.L2313	@,
	movw	r5, #26632	@ tmp347,
	ldr	r0, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	cmp	r0, #0	@ <variable>.DPB.ref_frames_in_buffer,
	beq	.L2313	@,
	add	r7, r4, #26368	@ ivtmp.6498, pH264Ctx,
	movw	lr, #50120	@ tmp398,
	add	r3, r7, #128	@ ivtmp.6498, ivtmp.6498,
	mov	r6, r2	@ tmp399, i.6552
	movw	r7, #51320	@ tmp400,
	b	.L2316	@
.L2314:
	ldr	r1, [r4, r5]	@ <variable>.DPB.ref_frames_in_buffer, <variable>.DPB.ref_frames_in_buffer
	add	r3, r3, #4	@ ivtmp.6498, ivtmp.6498,
	cmp	r1, r2	@ <variable>.DPB.ref_frames_in_buffer, i.6552
	bls	.L2358	@,
.L2316:
	ldr	r1, [r3, #0]	@ D.34422, <variable>.DPB.fs_ref
	add	r2, r2, #1	@ i.6552, i.6552,
	ldr	r0, [r4, lr]	@ <variable>.CurrPic.frame_num, <variable>.CurrPic.frame_num
	ldr	ip, [r1, #512]	@ <variable>.frame_num, <variable>.frame_num
	cmp	ip, r0	@ <variable>.frame_num, <variable>.CurrPic.frame_num
	bne	.L2314	@,
	strb	r6, [r1, #2]	@ tmp399, <variable>.is_reference
	ldr	r1, [r3, #0]	@ tmp397, <variable>.DPB.fs_ref
	ldrb	r8, [r1, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	r8, #1	@ <variable>.is_in_dpb,
	streq	r8, [r1, #532]	@ <variable>.is_in_dpb, <variable>.is_displayed
	ldreq	r1, [r3, #0]	@ tmp357, <variable>.DPB.fs_ref
	streqb	r6, [r1, #4]	@ tmp399, <variable>.is_in_dpb
	ldreq	r1, [r3, #0]	@ tmp397, <variable>.DPB.fs_ref
	ldr	ip, [r4, r7]	@ <variable>.TotalPmvNum, <variable>.TotalPmvNum
	ldr	r8, [r1, #548]	@ D.34430, <variable>.pmv_address_idc
	add	r0, r8, #12800	@ tmp362, D.34430,
	cmp	r8, ip	@ D.34430, <variable>.TotalPmvNum
	add	r0, r0, #12	@ tmp362, tmp362,
	strne	r6, [r4, r0, asl #2]	@ tmp399, <variable>.PmvStoreUsedFlag
	strne	ip, [r1, #548]	@ <variable>.TotalPmvNum, <variable>.pmv_address_idc
	b	.L2314	@
.L2358:
	movw	r2, #26628	@ tmp370,
	ldr	r1, [r4, r2]	@ pre_used_size.6540, <variable>.DPB.used_size
.L2313:
	add	lr, r4, #49664	@, pH264Ctx,
	mov	r0, r4	@, pH264Ctx
	add	r2, lr, #40	@,,
	bl	InsertFrmInDPB	@
	movw	r3, #26628	@ tmp374,
	ldr	r2, [r4, r3]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	ip, #50692	@ tmp373,
	str	r2, [r4, ip]	@ <variable>.DPB.used_size, <variable>.PrevPic.Dpb_pos
	cmp	r0, #0	@,
	bne	.L2264	@,
	add	r0, r2, #1	@ tmp379, <variable>.DPB.used_size,
	str	r0, [r4, r3]	@ tmp379, <variable>.DPB.used_size
	b	.L2343	@
.L2353:
	movw	r3, #52768	@ tmp334,
	ldr	lr, [r4, r3]	@ <variable>.OldDecMode, <variable>.OldDecMode
	cmp	lr, #2	@ <variable>.OldDecMode,
	beq	.L2359	@,
.L2310:
	mov	r0, r4	@, pH264Ctx
	bl	DirectOutput	@
	b	.L2266	@
.L2354:
	cmp	r0, #0	@ D.34373,
	bne	.L2310	@,
	b	.L2293	@
.L2359:
	movw	ip, #49707	@ tmp336,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	movwne	r0, #50112	@ tmp339,
	ldrne	r2, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	addne	r0, r0, #588	@ tmp338, tmp338,
	strne	r2, [r4, r0]	@ <variable>.CurrPic.frame_store, <variable>.pLastFieldBuf
	b	.L2310	@
.L2357:
	mov	r0, r4	@, pH264Ctx
	bl	IDRMemMarking	@
	cmp	r0, #0	@,
	mvnne	r0, #0	@ ret,
	beq	.L2287	@,
	b	.L2288	@
	.fnend
	.size	StorePicInDPB, .-StorePicInDPB
	.align	2
	.global	H264DEC_VDMPostProc
	.type	H264DEC_VDMPostProc, %function
H264DEC_VDMPostProc:
	.fnstart
.LFB1729:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, #364]	@ <variable>.StartMode, <variable>.StartMode
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r6, r3	@ pLumaInfo, pLumaInfo
	cmp	r5, #0	@ <variable>.StartMode,
	bne	.L2361	@,
	movw	r3, #50156	@ tmp142,
	str	r1, [r0, r3]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, pLumaInfo
	bl	StorePicInDPB	@
	cmp	r0, #1	@,
	bls	.L2362	@,
	movw	r6, #50112	@ tmp146,
	movw	r1, #52840	@ tmp143,
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	mov	r2, #1	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [ip, #508]	@, <variable>.logic_fs_id
	bl	FSP_ClearLogicFs	@
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	str	r5, [r4, r6]	@ <variable>.StartMode, <variable>.CurrPic.frame_store
	mvn	r0, #0	@ D.40265,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2361:
	movw	lr, #50156	@ tmp152,
	str	r1, [r0, lr]	@ ErrRatio, <variable>.CurrPic.err_level
	bl	ClearAllSlice	@
	mov	r1, r6	@, pLumaInfo
	mov	r0, r4	@, pH264Ctx
	bl	StorePicInDPB	@
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	movw	r0, #13576	@ tmp156,
	ldr	ip, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	movw	r2, #22336	@ tmp155,
	movw	r1, #51324	@ tmp153,
	mov	r3, #0	@ tmp154,
	str	r3, [r4, r1]	@ tmp154, <variable>.AllowStartDec
	movw	r1, #22344	@ tmp158,
	str	ip, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.PrevSlice.pic_parameter_set_id
	movw	ip, #22328	@ tmp160,
	strb	r3, [r4, ip]	@ tmp154, <variable>.PrevSlice.field_pic_flag
	movw	r2, #:lower16:88888	@ tmp159,
	movw	ip, #22329	@ tmp163,
	movt	r2, #:upper16:88888	@ tmp159,
	str	r2, [r4, r1]	@ tmp159, <variable>.PrevSlice.frame_num
	movw	r2, #22340	@ tmp166,
	mov	r1, #2	@ tmp164,
	strb	r1, [r4, ip]	@ tmp164, <variable>.PrevSlice.bottom_field_flag
	mov	ip, #7	@ tmp167,
	movw	r1, #22330	@ tmp168,
	str	ip, [r4, r2]	@ tmp167, <variable>.PrevSlice.nal_ref_idc
	movw	r2, #22352	@ tmp171,
	mov	ip, #32	@ tmp169,
	strb	ip, [r4, r1]	@ tmp169, <variable>.PrevSlice.nal_unit_type
	mov	r1, #3	@ tmp172,
	movw	ip, #22356	@ tmp173,
	str	r1, [r4, r2]	@ tmp172, <variable>.PrevSlice.pic_oder_cnt_lsb
	movw	r2, #22368	@ tmp179,
	mvn	r1, #0	@ tmp174,
	str	r1, [r4, ip]	@ tmp174, <variable>.PrevSlice.delta_pic_oder_cnt_bottom
	mov	ip, #262144	@ tmp180,
	movw	r1, #22360	@ tmp175,
	str	ip, [r4, r2]	@ tmp180, <variable>.PrevSlice.first_mb_in_slice
	movw	ip, #22364	@ tmp177,
	str	r3, [r4, r1]	@ tmp154, <variable>.PrevSlice.delta_pic_order_cnt
	mov	r0, r3	@ D.40265, tmp154
	str	r3, [r4, ip]	@ tmp154, <variable>.PrevSlice.delta_pic_order_cnt
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2362:
	movw	lr, #51324	@ tmp150,
	mov	r2, #1	@ tmp151,
	mov	r0, r5	@ D.40265, <variable>.StartMode
	str	r2, [r4, lr]	@ tmp151, <variable>.AllowStartDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	H264DEC_VDMPostProc, .-H264DEC_VDMPostProc
	.global	__aeabi_idivmod
	.align	2
	.global	DecGap
	.type	DecGap, %function
DecGap:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	sl, #26380	@ tmp156,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r0, [r0, sl]	@ D.36015, <variable>.CurrMarkIdx
	movw	r8, #2004	@ tmp159,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	r7, #13605	@ tmp162,
	movw	ip, #26628	@ tmp171,
	mul	fp, r8, r0	@ tmp158, tmp159, D.36015
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	ldr	r0, [r4, ip]	@ <variable>.DPB.used_size, <variable>.DPB.used_size
	movw	r8, #20700	@ tmp151,
	cmp	sl, #1	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	movw	ip, #16492	@ tmp152,
	add	r9, fp, r4	@ tmp160, tmp158, pH264Ctx
	movw	fp, #50116	@ tmp164,
	add	r6, r9, #22272	@ tmp161, tmp160,
	movw	r9, #19844	@ tmp154,
	add	r3, r6, #96	@ tmp161, tmp161,
	moveq	sl, #2	@ nal_ref_idc,
	mov	r1, r6	@ tmp170, tmp161
	add	r7, r1, #100	@ tmp170, tmp170,
	ldrb	r2, [r3, #7]	@ zero_extendqisi2	@, <variable>.adaptive_ref_pic_marking_mode_flag
	movw	r6, #19848	@ tmp155,
	movw	r3, #20696	@ tmp153,
	movne	sl, #0	@ nal_ref_idc,
	cmp	r0, #0	@ <variable>.DPB.used_size,
	str	r2, [sp, #12]	@, %sfp
	ldr	r1, [r4, r9]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r7, [r4, fp]	@ tmp170, <variable>.CurrPic.pMarkPara
	ldr	r3, [r4, r3]	@ D.36011, <variable>.CurrSlice.prev_frame_num
	ldr	r7, [r4, r8]	@ D.36007, <variable>.CurrSlice.frame_num
	ldr	r8, [r4, ip]	@ D.36008, <variable>.CurrSPS.log2_max_frame_num_minus4
	str	r1, [sp, #8]	@, %sfp
	ldr	r2, [r4, r6]	@, <variable>.CurrPOC.delta_pic_order_cnt
	str	r2, [sp, #4]	@, %sfp
	beq	.L2369	@,
	mov	r5, #1	@ tmp174,
	add	lr, r8, #4	@ tmp173, D.36008,
	mov	r8, r5, asl lr	@ MaxFrameNum, tmp174,
	add	r0, r3, r5	@, D.36011,
	mov	r1, r8	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r7, r1	@ D.36007, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	mov	r1, #0	@ tmp182,
	str	r1, [r4, r9]	@ tmp182, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r6]	@ tmp182, <variable>.CurrPOC.delta_pic_order_cnt
	ble	.L2370	@,
	movw	r6, #50112	@ tmp256,
	movw	r9, #16496	@ tmp261,
	b	.L2376	@
.L2372:
	movw	ip, #49708	@ tmp235,
	mov	r1, #0	@ tmp236,
	mov	r0, r4	@, pH264Ctx
	strb	r1, [r4, ip]	@ tmp236, <variable>.CurrPic.is_long_term
	bl	StorePicInDPB	@
	mov	r1, r8	@, MaxFrameNum
	cmp	r0, #0	@,
	add	r0, r5, #1	@, UnusedShortTermFrameNum,
	bne	.L2379	@,
	movw	r3, #20696	@ tmp243,
	str	r5, [r4, r3]	@ UnusedShortTermFrameNum, <variable>.CurrSlice.prev_frame_num
	bl	__aeabi_idivmod	@
	cmp	r7, r1	@ D.36007, UnusedShortTermFrameNum
	mov	r5, r1	@ UnusedShortTermFrameNum,
	ble	.L2370	@,
.L2376:
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	AllocFrameStore	@
	mov	r3, #1	@ tmp191,
	cmp	r0, #0	@ ret
	bne	.L2379	@,
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	movw	r1, #49710	@,
	strb	r3, [r4, r1]	@ tmp191, <variable>.CurrPic.nal_unit_type
	movw	ip, #50120	@,
	movw	r1, #50128	@,
	str	r5, [lr, #512]	@ UnusedShortTermFrameNum, <variable>.frame_num
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r5, [r4, ip]	@ UnusedShortTermFrameNum, <variable>.CurrPic.frame_num
	str	r5, [r2, #412]	@ UnusedShortTermFrameNum, <variable>.frame.pic_num
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	sl, [r4, r1]	@ nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	r1, #49706	@,
	str	r0, [lr, #408]	@ ret, <variable>.frame.long_term_pic_num
	ldr	ip, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r3, [ip, #532]	@ tmp191, <variable>.is_displayed
	ldr	r2, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r0, [r2, #4]	@ ret, <variable>.is_in_dpb
	ldr	lr, [r4, r6]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r3, [lr, #0]	@ tmp191, <variable>.non_existing
	ldr	ip, [r4, fp]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	strb	r3, [r4, r1]	@ tmp191, <variable>.CurrPic.non_existing
	strb	r0, [ip, #3]	@ ret, <variable>.adaptive_ref_pic_marking_mode_flag
	ldr	r2, [r4, r9]	@ <variable>.CurrSPS.pic_order_cnt_type, <variable>.CurrSPS.pic_order_cnt_type
	cmp	r2, #0	@ <variable>.CurrSPS.pic_order_cnt_type,
	beq	.L2372	@,
	movw	lr, #19860	@,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, lr]	@ UnusedShortTermFrameNum, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	movw	r1, #19836	@ tmp227,
	ldr	ip, [r4, r1]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	movw	r0, #19828	@ tmp230,
	ldr	r1, [r4, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	movw	r3, #19840	@ tmp224,
	movw	r2, #19832	@ tmp233,
	movw	r0, #50136	@ tmp226,
	ldr	r3, [r4, r3]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	ldr	r2, [r4, r2]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	str	ip, [r4, r0]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r0, #50140	@ tmp229,
	str	r1, [r4, r0]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	ip, #50144	@ tmp232,
	movw	r0, #50132	@,
	str	r2, [r4, ip]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	str	r3, [r4, r0]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	b	.L2372	@
.L2379:
	ldr	r0, [sp, #8]	@, %sfp
	movw	r1, #50116	@ tmp241,
	ldr	r3, [r4, r1]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	movw	r2, #19844	@ tmp238,
	str	r0, [r4, r2]	@, <variable>.CurrPOC.delta_pic_order_cnt
	mvn	r0, #0	@ D.36028,
.L2378:
	ldr	r1, [sp, #4]	@, %sfp
	movw	lr, #19848	@ tmp250,
	str	r1, [r4, lr]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r2, [sp, #12]	@, %sfp
	strb	r2, [r3, #3]	@, <variable>.adaptive_ref_pic_marking_mode_flag
.L2369:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2370:
	ldr	lr, [sp, #8]	@, %sfp
	movw	r0, #50116	@ tmp252,
	movw	ip, #19844	@ tmp249,
	ldr	r3, [r4, r0]	@ <variable>.CurrPic.pMarkPara, <variable>.CurrPic.pMarkPara
	mov	r0, #0	@ D.36028,
	str	lr, [r4, ip]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L2378	@
	.fnend
	.size	DecGap, .-DecGap
	.align	2
	.global	InitPic
	.type	InitPic, %function
InitPic:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r2, #13584	@ tmp194,
	movw	r6, #20692	@ tmp195,
	ldr	ip, [r0, r2]	@ <variable>.PPS, <variable>.PPS
	ldr	r8, [r0, r6]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r5, #2208	@ tmp198,
	movw	lr, #49704	@ tmp205,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r1, #13580	@ tmp200,
	ldrb	r0, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrPic.state, <variable>.CurrPic.state
	mla	r5, r5, r8, ip	@ pPPS, tmp198, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	r3, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	cmp	r0, #0	@ <variable>.CurrPic.state,
	mov	r6, #4000	@ tmp203,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r2, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r6, r6, r2, r3	@ pSPS, tmp203, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L2381	@,
	movw	r7, #50112	@ tmp207,
	ldr	r3, [r4, r7]	@ D.36088, <variable>.CurrPic.frame_store
	cmp	r3, #0	@ D.36088,
	beq	.L2382	@,
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ <variable>.is_used, <variable>.is_used
	cmp	r8, #0	@ <variable>.is_used,
	beq	.L2456	@,
.L2382:
	movw	r8, #49704	@ tmp220,
	mov	r1, #0	@ tmp221,
	strb	r1, [r4, r8]	@ tmp221, <variable>.CurrPic.state
.L2381:
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #12	@,,
	bl	GetReRangeFlag	@
	ldr	r3, [r6, #744]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mov	r8, r0	@ D.36097,
	movw	r0, #14332	@ tmp224,
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.CurrSPS.seq_parameter_set_id
	cmp	r2, r3	@ <variable>.CurrSPS.seq_parameter_set_id, <variable>.seq_parameter_set_id
	beq	.L2457	@,
.L2383:
	add	ip, r4, #13568	@, pH264Ctx,
	mov	r1, #0	@ tmp228,
	add	r0, ip, #20	@,,
	strb	r1, [r6, #24]	@ tmp228, <variable>.is_refreshed
	mov	r2, #4000	@,
	mov	r1, r6	@, pSPS
	bl	memmove	@
.L2384:
	ldr	r2, [sp, #12]	@ dpb_changed, dpb_changed
	cmp	r2, #0	@ dpb_changed,
	beq	.L2385	@,
	ldr	r3, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	beq	.L2458	@,
.L2386:
	movw	ip, #52800	@ tmp269,
	cmp	r8, #0	@ D.36097,
	ldr	r2, [r4, ip]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	lr, r2, #1	@ tmp272, <variable>.SeqCnt,
	str	lr, [r4, ip]	@ tmp272, <variable>.SeqCnt
	beq	.L2392	@,
	ldr	r7, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r7, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L2459	@,
.L2393:
	mov	r0, r4	@, pH264Ctx
	bl	GetBackPicFromVOQueue	@
.L2394:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	subs	r7, r0, #0	@ ret.6724,
	bne	.L2388	@,
	cmp	r8, #0	@ D.36097,
	beq	.L2385	@,
	movw	r2, #17548	@ tmp282,
	movw	sl, #13606	@ tmp286,
	ldr	r1, [r4, r2]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r8, #17544	@ tmp279,
	ldrb	lr, [r4, sl]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r3, #17568	@ tmp277,
	add	ip, r1, #1	@ tmp283, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldr	r0, [r4, r8]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	rsb	sl, lr, #2	@ tmp288, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	lr, [r4, r3]	@ D.36139, <variable>.CurrSPS.dpb_size_plus1
	mov	r2, ip, asl #4	@ tmp285, tmp283,
	add	r8, r0, #1	@ tmp280, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	add	ip, r4, #51200	@, pH264Ctx,
	movw	r1, #51320	@ tmp278,
	mul	sl, sl, r2	@ ImageHeight.6735, tmp288, tmp285
	mov	r8, r8, asl #4	@ ImageWidth.6727, tmp280,
	str	lr, [r4, r1]	@ D.36139, <variable>.TotalPmvNum
	add	r3, ip, #116	@,,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, ImageWidth.6727
	str	lr, [sp, #0]	@ D.36139,
	mov	r2, sl	@, ImageHeight.6735
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	bne	.L2460	@,
	movw	r1, #13560	@ tmp295,
	movw	r3, #13564	@ tmp297,
	mov	r8, r8, lsr #4	@ tmp296, ImageWidth.6727,
	mov	lr, sl, lsr #4	@ tmp298, ImageHeight.6735,
	str	r8, [r4, r1]	@ tmp296, <variable>.CurWidthInMb
	str	lr, [r4, r3]	@ tmp298, <variable>.CurHeightInMb
.L2385:
	movw	r2, #17612	@ tmp299,
	ldr	ip, [r5, #24]	@ <variable>.pic_parameter_set_id, <variable>.pic_parameter_set_id
	ldr	sl, [r4, r2]	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.CurrPPS.pic_parameter_set_id
	cmp	sl, ip	@ <variable>.CurrPPS.pic_parameter_set_id, <variable>.pic_parameter_set_id
	beq	.L2461	@,
.L2396:
	add	lr, r4, #17408	@, pH264Ctx,
	mov	r3, #0	@ tmp303,
	mov	r1, r5	@, pPPS
	add	r0, lr, #180	@,,
	strb	r3, [r5, #20]	@ tmp303, <variable>.is_refreshed
	mov	r2, #2208	@,
	bl	memmove	@
.L2397:
	movw	sl, #19820	@ tmp308,
	movw	ip, #16492	@ tmp307,
	ldr	r2, [r4, sl]	@ <variable>.CurrPOC.last_has_mmco_5, <variable>.CurrPOC.last_has_mmco_5
	movw	r1, #52768	@ tmp314,
	ldr	sl, [r4, ip]	@ D.36193, <variable>.CurrSPS.log2_max_frame_num_minus4
	cmp	r2, #0	@ <variable>.CurrPOC.last_has_mmco_5,
	ldr	r5, [r4, r1]	@ <variable>.OldDecMode, <variable>.OldDecMode
	movwne	ip, #50672	@ tmp312,
	movne	r2, #0	@ tmp311,
	strne	r2, [r4, ip]	@ tmp311, <variable>.PrevPic.frame_num
	movwne	ip, #20696	@ tmp310,
	strne	r2, [r4, ip]	@ tmp311, <variable>.CurrSlice.prev_frame_num
	cmp	r5, #2	@ <variable>.OldDecMode,
	beq	.L2448	@,
	ldr	r8, [r4, #0]	@ temp.6741, <variable>.pstExtraData
	ldr	r0, [r8, #12]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, #2	@ <variable>.s32DecOrderOutput,
	beq	.L2448	@,
	movw	r7, #20700	@ tmp319,
	movw	r3, #20696	@ tmp320,
	ldr	r5, [r4, r7]	@ prephitmp.6660, <variable>.CurrSlice.frame_num
	ldr	r7, [r4, r3]	@ prephitmp.6742, <variable>.CurrSlice.prev_frame_num
	cmp	r5, r7	@ prephitmp.6660, prephitmp.6742
	beq	.L2400	@,
	mov	lr, #1	@ tmp322,
	add	r1, sl, #4	@ tmp321, D.36193,
	mov	sl, lr, asl r1	@ MaxFrameNum, tmp322,
	add	r0, r7, lr	@, prephitmp.6742,
	mov	r1, sl	@, MaxFrameNum
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ prephitmp.6660,
	beq	.L2400	@,
	ldr	ip, [r8, #516]	@ <variable>.s32MoreGapEnable, <variable>.s32MoreGapEnable
	cmp	ip, #0	@ <variable>.s32MoreGapEnable,
	beq	.L2462	@,
.L2402:
	movw	r3, #13605	@ tmp351,
	ldrb	r0, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag, <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag
	cmp	r0, #0	@ <variable>.CurrSPS.gaps_in_frame_num_value_allowed_flag,
	bne	.L2411	@,
	ldr	lr, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r5, [lr, #520]	@ D.36260, <variable>.s32FastForwardBackwardSpeed
	cmp	r5, #0	@ D.36260,
	cmpne	r5, #1024	@, D.36260,
	bne	.L2448	@,
	movw	r7, #20696	@ tmp363,
	mov	r1, sl	@, MaxFrameNum
	ldr	ip, [r4, r7]	@ <variable>.CurrSlice.prev_frame_num, <variable>.CurrSlice.prev_frame_num
	movw	r7, #20700	@ tmp362,
	ldr	r5, [r4, r7]	@ prephitmp.6660, <variable>.CurrSlice.frame_num
	add	r0, ip, #1	@, <variable>.CurrSlice.prev_frame_num,
	bl	__aeabi_uidivmod	@
	cmp	r5, r1	@ prephitmp.6660,
	bcs	.L2413	@,
	movw	r2, #20680	@ tmp372,
	ldrb	r1, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	beq	.L2400	@,
.L2449:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mov	r0, r4	@, pH264Ctx
	bl	ClearDPB	@
	mvn	r0, #0	@ D.36121,
.L2391:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2461:
	ldrb	r0, [r5, #20]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	r0, #0	@ <variable>.is_refreshed,
	beq	.L2397	@,
	b	.L2396	@
.L2462:
	ldr	r2, [r8, #540]	@ <variable>.stPvrInfo.u32BFrmRefFlag, <variable>.stPvrInfo.u32BFrmRefFlag
	cmp	r2, #1	@ <variable>.stPvrInfo.u32BFrmRefFlag,
	beq	.L2463	@,
.L2403:
	cmp	r5, r7	@ prephitmp.6660, prephitmp.6742
	bhi	.L2464	@,
	movw	lr, #17568	@ tmp344,
	rsb	r7, r7, r5	@ tmp345, prephitmp.6742, prephitmp.6660
	ldr	r3, [r4, lr]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	add	r7, r7, sl	@ tmp346, tmp345, MaxFrameNum
	cmp	r3, r7	@ <variable>.CurrSPS.dpb_size_plus1, tmp346
	bcs	.L2402	@,
.L2453:
	movw	ip, #20680	@ tmp348,
	ldrb	r1, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L2449	@,
	cmp	r5, #0	@ prephitmp.6660,
	movw	r2, #20696	@ tmp350,
	subeq	r5, sl, #1	@ iftmp.637, MaxFrameNum,
	subne	r5, r5, #1	@ iftmp.637, prephitmp.6660,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r2]	@ iftmp.637, <variable>.CurrSlice.prev_frame_num
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2402	@,
.L2388:
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
.L2458:
	ldr	lr, [r3, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	bne	.L2386	@,
	movw	r3, #52800	@ tmp235,
	cmp	r8, #0	@ D.36097,
	ldr	r1, [r4, r3]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	ip, r1, #1	@ tmp238, <variable>.SeqCnt,
	str	ip, [r4, r3]	@ tmp238, <variable>.SeqCnt
	bne	.L2465	@,
.L2387:
	mov	r0, r4	@, pH264Ctx
	bl	InitDPB	@
	cmp	r0, #0	@,
	bne	.L2388	@,
	movw	r7, #17548	@ tmp242,
	movw	r2, #17544	@ tmp239,
	ldr	r3, [r4, r7]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	movw	r1, #13606	@ tmp246,
	ldr	ip, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	cmp	r8, #0	@ D.36097,
	add	lr, r3, #1	@ tmp243, <variable>.CurrSPS.pic_height_in_map_units_minus1,
	ldrb	r0, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	add	r7, ip, #1	@ tmp240, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	mov	r2, lr, asl #4	@ tmp245, tmp243,
	rsb	r8, r0, #2	@ tmp248, <variable>.CurrSPS.frame_mbs_only_flag,
	mov	r7, r7, asl #4	@ ImageWidth, tmp240,
	mul	r8, r8, r2	@ ImageHeight, tmp248, tmp245
	beq	.L2389	@,
	movw	lr, #13560	@ tmp249,
	ldr	r0, [r4, lr]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	cmp	r0, #0	@ <variable>.CurWidthInMb,
	beq	.L2466	@,
.L2389:
	movw	r1, #13560	@ tmp265,
	movw	r0, #13564	@ tmp267,
	mov	r7, r7, lsr #4	@ tmp266, ImageWidth,
	mov	r8, r8, lsr #4	@ tmp268, ImageHeight,
	str	r7, [r4, r1]	@ tmp266, <variable>.CurWidthInMb
	str	r8, [r4, r0]	@ tmp268, <variable>.CurHeightInMb
	b	.L2385	@
.L2457:
	ldrb	lr, [r6, #24]	@ zero_extendqisi2	@ <variable>.is_refreshed, <variable>.is_refreshed
	cmp	lr, #0	@ <variable>.is_refreshed,
	beq	.L2384	@,
	b	.L2383	@
.L2411:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	bne	.L2388	@,
.L2448:
	movw	r0, #20700	@ tmp375,
	ldr	r5, [r4, r0]	@ prephitmp.6660, <variable>.CurrSlice.frame_num
.L2400:
	movw	ip, #20712	@ tmp376,
	movw	r3, #19860	@ tmp380,
	ldr	lr, [r4, ip]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	mov	r0, r4	@, pH264Ctx
	cmp	lr, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movwne	lr, #20696	@ tmp378,
	strne	r5, [r4, lr]	@ prephitmp.6660, <variable>.CurrSlice.prev_frame_num
	movwne	lr, #20700	@ tmp379,
	ldrne	r5, [r4, lr]	@ prephitmp.6660, <variable>.CurrSlice.frame_num
	str	r5, [r4, r3]	@ prephitmp.6660, <variable>.CurrPOC.frame_num
	bl	DecPOC	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #0	@,
	bl	AllocFrameStore	@
	cmp	r0, #0	@ ret.6754
	bne	.L2388	@,
	movw	r2, #20681	@ tmp420,
	movw	r3, #20700	@ tmp392,
	ldrb	r8, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r5, #20712	@ tmp395,
	ldr	sl, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movw	lr, #19840	@ tmp398,
	movw	fp, #19836	@ tmp401,
	cmp	r8, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r1, #20683	@ tmp388,
	ldr	r8, [r4, r5]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	ip, #19828	@ tmp404,
	ldr	r5, [r4, lr]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPOC.ThisPOC
	movw	r7, #19832	@ tmp407,
	ldr	lr, [r4, fp]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPOC.framepoc
	ldrb	r9, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r1, #50132	@ tmp397,
	ldr	fp, [r4, ip]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPOC.toppoc
	movw	r3, #49710	@ tmp387,
	ldr	ip, [r4, r7]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPOC.bottompoc
	movw	r7, #50120	@ tmp391,
	str	sl, [r4, r7]	@ <variable>.CurrSlice.frame_num, <variable>.CurrPic.frame_num
	movw	r7, #50136	@ tmp400,
	str	r5, [r4, r1]	@ <variable>.CurrPOC.ThisPOC, <variable>.CurrPic.thispoc
	movw	sl, #50144	@ tmp406,
	str	lr, [r4, r7]	@ <variable>.CurrPOC.framepoc, <variable>.CurrPic.framepoc
	movw	r5, #50140	@ tmp403,
	movw	r7, #13606	@ tmp425,
	strb	r9, [r4, r3]	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrPic.nal_unit_type
	str	fp, [r4, r5]	@ <variable>.CurrPOC.toppoc, <variable>.CurrPic.toppoc
	movw	r3, #50128	@ tmp394,
	str	ip, [r4, sl]	@ <variable>.CurrPOC.bottompoc, <variable>.CurrPic.bottompoc
	movw	lr, #49708	@ tmp415,
	ldrb	sl, [r4, r7]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r1, #49704	@ tmp384,
	movw	r5, #17548	@ tmp428,
	mov	r9, #1	@ tmp385,
	str	r8, [r4, r3]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrPic.nal_ref_idc
	movw	ip, #49706	@ tmp409,
	strb	r0, [r4, lr]	@ ret.6754, <variable>.CurrPic.is_long_term
	movw	r3, #49711	@ tmp381,
	strb	r9, [r4, r1]	@ tmp385, <variable>.CurrPic.state
	movw	r1, #49709	@ tmp412,
	ldr	lr, [r4, r5]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	mov	fp, #50176	@ tmp418,
	strb	r0, [r4, r1]	@ ret.6754, <variable>.CurrPic.is_short_term
	moveq	r1, r9	@ prephitmp.6665, tmp385
	strb	r0, [r4, r3]	@ ret.6754, <variable>.CurrPic.mode_skip_flag
	movne	r1, #2	@ prephitmp.6665,
	strb	r0, [r4, ip]	@ ret.6754, <variable>.CurrPic.non_existing
	rsb	r0, sl, #2	@ tmp427, <variable>.CurrSPS.frame_mbs_only_flag,
	strneb	r9, [r4, r2]	@ tmp385, <variable>.CurrSlice.field_pic_flag
	mvn	r8, #0	@ tmp419,
	mla	r9, lr, r0, r0	@ tmp431, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp427, tmp427
	str	r8, [r4, fp]	@ tmp419, <variable>.CurrPic.stream_base_addr
	movw	r8, #17544	@ tmp444,
	movw	fp, #20681	@ tmp453,
	movw	r5, #49712	@ tmp449,
	movw	sl, #50164	@ tmp435,
	mov	r0, r9	@, tmp431
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, r8]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	ldrb	ip, [r4, fp]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r1, #17588	@ tmp450,
	add	fp, r3, #1	@ temp.6772, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	ldrb	r7, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPPS.entropy_coding_mode_flag
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	movw	r2, #50168	@ tmp436,
	str	r9, [r4, r2]	@ tmp431, <variable>.CurrPic.frame_height_in_mb
	movw	r8, #50172	@ tmp447,
	movw	r9, #50160	@ tmp446,
	strb	r7, [r4, r5]	@ <variable>.CurrPPS.entropy_coding_mode_flag, <variable>.CurrPic.entropy_coding_mode_flag
	str	fp, [r4, r9]	@ temp.6772, <variable>.CurrPic.pic_width_in_mb
	mul	r1, fp, r0	@ tmp448, temp.6772, tmp434
	str	r0, [r4, sl]	@ tmp434, <variable>.CurrPic.pic_height_in_mb
	str	r1, [r4, r8]	@ tmp448, <variable>.CurrPic.pic_mbs
	movne	r1, #0	@ prephitmp.6666,
	bne	.L2418	@,
	movw	r2, #13607	@ tmp455,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrSPS.mb_adaptive_frame_field_flag, <variable>.CurrSPS.mb_adaptive_frame_field_flag
	subs	r1, r0, #0	@ prephitmp.6666, <variable>.CurrSPS.mb_adaptive_frame_field_flag,
	movne	r1, #1	@ prephitmp.6666
.L2418:
	movw	r9, #20712	@ tmp460,
	movw	ip, #26380	@ tmp466,
	ldr	r3, [r4, r9]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	movw	lr, #49713	@ tmp458,
	ldr	r2, [r4, ip]	@ <variable>.CurrMarkIdx, <variable>.CurrMarkIdx
	movw	fp, #50116	@ tmp465,
	strb	r1, [r4, lr]	@ prephitmp.6666, <variable>.CurrPic.MbaffFrameFlag
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	movw	r1, #2004	@ tmp469,
	ldr	ip, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mla	r0, r1, r2, r4	@ tmp472, tmp469, <variable>.CurrMarkIdx, pH264Ctx
	movwne	r3, #20700	@ tmp463,
	ldrne	lr, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.frame_num
	movwne	r3, #20696	@ tmp462,
	movw	r7, #49728	@ tmp474,
	movw	r9, #49736	@ tmp477,
	add	r8, r0, #22272	@ tmp473, tmp472,
	movw	r2, #49788	@ tmp483,
	strne	lr, [r4, r3]	@ <variable>.CurrSlice.frame_num, <variable>.CurrSlice.prev_frame_num
	add	r5, r8, #100	@ tmp473, tmp473,
	str	r5, [r4, fp]	@ tmp473, <variable>.CurrPic.pMarkPara
	movw	lr, #49744	@ tmp480,
	ldrd	sl, [ip, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r5, r4, #49664	@ tmp636, pH264Ctx,
	strd	sl, [r4, r7]	@ <variable>.pts, pH264Ctx, tmp474
	movw	fp, #49864	@ tmp501,
	ldrd	r0, [ip, #72]	@ <variable>.Usertag, <variable>.pstExtraData,
	movw	r7, #49868	@ tmp506,
	movw	sl, #49860	@ tmp517,
	strd	r0, [r4, r9]	@ <variable>.Usertag, pH264Ctx, tmp477
	add	r0, r5, #56	@, tmp636,
	ldrd	r8, [ip, #88]	@, <variable>.pstExtraData,
	strd	r8, [r4, lr]	@, pH264Ctx, tmp480
	movw	lr, #49792	@ tmp486,
	ldr	r3, [ip, #104]	@ <variable>.DispEnableFlag, <variable>.DispEnableFlag
	mvn	r9, #0	@,
	mvn	r8, #0	@,
	str	r3, [r4, r2]	@ <variable>.DispEnableFlag, <variable>.CurrPic.fs_image.DispEnableFlag
	movw	r2, #49796	@ tmp489,
	ldr	r1, [ip, #108]	@ <variable>.DispFrameDistance, <variable>.DispFrameDistance
	str	r1, [r4, lr]	@ <variable>.DispFrameDistance, <variable>.CurrPic.fs_image.DispFrameDistance
	movw	lr, #49800	@ tmp492,
	ldr	r3, [ip, #112]	@ <variable>.DistanceBeforeFirstFrame, <variable>.DistanceBeforeFirstFrame
	str	r3, [r4, r2]	@ <variable>.DistanceBeforeFirstFrame, <variable>.CurrPic.fs_image.DistanceBeforeFirstFrame
	movw	r2, #49932	@ tmp495,
	ldr	r1, [ip, #128]	@ <variable>.GopNum, <variable>.GopNum
	str	r1, [r4, lr]	@ <variable>.GopNum, <variable>.CurrPic.fs_image.GopNum
	movw	lr, #49936	@ tmp497,
	ldr	r3, [r6, #752]	@ <variable>.bit_depth_luma_minus8, <variable>.bit_depth_luma_minus8
	str	r3, [r4, r2]	@ <variable>.bit_depth_luma_minus8, <variable>.CurrPic.fs_image.bit_depth_luma_minus8
	movw	r3, #13606	@ tmp507,
	ldr	r1, [r6, #756]	@ <variable>.bit_depth_chroma_minus8, <variable>.bit_depth_chroma_minus8
	movw	r2, #17548	@ tmp510,
	str	r1, [r4, lr]	@ <variable>.bit_depth_chroma_minus8, <variable>.CurrPic.fs_image.bit_depth_chroma_minus8
	mov	r1, #14336	@ tmp520,
	strd	r8, [ip, #56]	@, <variable>.pstExtraData,
	movw	ip, #13644	@ tmp526,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSPS.frame_mbs_only_flag, <variable>.CurrSPS.frame_mbs_only_flag
	movw	r9, #49848	@,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.pic_height_in_map_units_minus1, <variable>.CurrSPS.pic_height_in_map_units_minus1
	rsb	r3, lr, #2	@ tmp509, <variable>.CurrSPS.frame_mbs_only_flag,
	ldr	lr, [r4, ip]	@ <variable>.CurrSPS.vui_seq_parameters.video_format, <variable>.CurrSPS.vui_seq_parameters.video_format
	ldr	ip, [r4, r1]	@ <variable>.CurrSPS.chroma_format_idc, <variable>.CurrSPS.chroma_format_idc
	movw	r1, #13640	@ tmp515,
	mla	r3, r2, r3, r3	@ tmp513, <variable>.CurrSPS.pic_height_in_map_units_minus1, tmp509, tmp509
	movw	r2, #17544	@ tmp502,
	ldr	r2, [r4, r2]	@ <variable>.CurrSPS.pic_width_in_mbs_minus1, <variable>.CurrSPS.pic_width_in_mbs_minus1
	subs	ip, ip, #1	@ tmp524, <variable>.CurrSPS.chroma_format_idc,
	movne	ip, #1	@ tmp524
	ldr	r1, [r4, r1]	@ <variable>.CurrSPS.vui_seq_parameters.aspect_ratio, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio
	mov	lr, lr, asl #5	@ tmp527, <variable>.CurrSPS.vui_seq_parameters.video_format,
	and	lr, lr, #255	@ tmp529, tmp527,
	add	r2, r2, #1	@ tmp503, <variable>.CurrSPS.pic_width_in_mbs_minus1,
	and	r1, r1, #7	@ dar, <variable>.CurrSPS.vui_seq_parameters.aspect_ratio,
	orr	ip, lr, ip, asl #2	@, tmp530, tmp529, tmp524,
	mov	r2, r2, asl #4	@ tmp505, tmp503,
	mov	r3, r3, asl #4	@ tmp514, tmp513,
	orr	lr, ip, r1, asl #14	@, tmp532, tmp530, dar,
	str	r2, [r4, fp]	@ tmp505, <variable>.CurrPic.fs_image.image_width
	str	r3, [r4, r7]	@ tmp514, <variable>.CurrPic.fs_image.image_height
	str	lr, [r4, sl]	@ tmp532, <variable>.CurrPic.fs_image.format
	bl	SetAspectRatio	@
	movw	r1, #49707	@ tmp539,
	movw	r3, #50112	@ tmp542,
	ldrb	r2, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	r0, #52800	@ tmp536,
	ldr	r1, [r4, r3]	@ temp.6794, <variable>.CurrPic.frame_store
	ldr	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.SeqCnt
	subs	r2, r2, #0	@ tmp541, <variable>.CurrPic.structure,
	movne	r2, #1	@ tmp541
	cmp	r1, #0	@ temp.6794,
	movw	r0, #49904	@ tmp535,
	str	r2, [r4, r9]	@ tmp541, <variable>.CurrPic.fs_image.is_fld_save
	str	ip, [r4, r0]	@ <variable>.SeqCnt, <variable>.CurrPic.fs_image.seq_cnt
	beq	.L2388	@,
	ldr	r0, [r4, sl]	@ <variable>.CurrPic.fs_image.format, <variable>.CurrPic.fs_image.format
	movw	ip, #49784	@ tmp551,
	movw	sl, #49780	@ tmp555,
	ldr	lr, [r4, ip]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.CurrPic.fs_image.u32AspectHeight
	ldr	ip, [r4, sl]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.CurrPic.fs_image.u32AspectWidth
	str	r0, [r1, #148]	@ <variable>.CurrPic.fs_image.format, <variable>.fs_image.format
	ldr	sl, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r0, [r4, fp]	@ <variable>.CurrPic.fs_image.image_width, <variable>.CurrPic.fs_image.image_width
	ldr	r1, [r4, r7]	@ <variable>.CurrPic.fs_image.image_height, <variable>.CurrPic.fs_image.image_height
	movw	r7, #52840	@ tmp577,
	str	r2, [sl, #136]	@ tmp541, <variable>.fs_image.is_fld_save
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	lr, [r2, #72]	@ <variable>.CurrPic.fs_image.u32AspectHeight, <variable>.fs_image.u32AspectHeight
	ldr	lr, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	ip, [lr, #68]	@ <variable>.CurrPic.fs_image.u32AspectWidth, <variable>.fs_image.u32AspectWidth
	movw	lr, #49880	@ tmp567,
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [ip, #152]	@ <variable>.CurrPic.fs_image.image_width, <variable>.fs_image.image_width
	ldr	r2, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r1, [r2, #156]	@ <variable>.CurrPic.fs_image.image_height, <variable>.fs_image.image_height
	ldr	r0, [r6, #3992]	@ D.36349, <variable>.disp_center_x
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r0, [r1, #168]	@ D.36349, <variable>.fs_image.disp_center_x
	movw	r1, #49884	@ tmp570,
	str	r0, [r4, lr]	@ D.36349, <variable>.CurrPic.fs_image.disp_center_x
	ldr	ip, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r2, [r6, #3996]	@ D.36351, <variable>.disp_center_y
	str	r2, [ip, #172]	@ D.36351, <variable>.fs_image.disp_center_y
	movw	ip, #49872	@ tmp573,
	str	r2, [r4, r1]	@ D.36351, <variable>.CurrPic.fs_image.disp_center_y
	ldr	r0, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	lr, [r6, #3984]	@ D.36353, <variable>.disp_width
	str	lr, [r0, #160]	@ D.36353, <variable>.fs_image.disp_width
	movw	r0, #49876	@ tmp576,
	str	lr, [r4, ip]	@ D.36353, <variable>.CurrPic.fs_image.disp_width
	ldr	r1, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	ldr	r2, [r6, #3988]	@ D.36355, <variable>.disp_height
	str	r2, [r1, #164]	@ D.36355, <variable>.fs_image.disp_height
	ldr	r6, [r4, r3]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	str	r2, [r4, r0]	@ D.36355, <variable>.CurrPic.fs_image.disp_height
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	ldr	r1, [r6, #508]	@, <variable>.logic_fs_id
	bl	FSP_GetDispPhyFs	@
	subs	r2, r0, #0	@ pstDecFs,
	beq	.L2420	@,
	ldr	r3, [r4, r9]	@ <variable>.CurrPic.fs_image.is_fld_save, <variable>.CurrPic.fs_image.is_fld_save
	mov	r1, #0	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	subs	r3, r3, r1	@, <variable>.CurrPic.fs_image.is_fld_save,
	movne	r3, #1	@
	ldr	r2, [r2, #4]	@, <variable>.PhyFsID
	bl	FSP_SetStoreType	@
.L2420:
	movw	r1, #51344	@ tmp589,
	add	r2, r4, #49920	@ D.46813, pH264Ctx,
	ldr	r9, [r4, r1]	@ prephitmp.6810, <variable>.TotalUsrDatNum
	add	r6, r4, #51200	@ ivtmp.6703, pH264Ctx,
	add	r5, r5, #248	@ ivtmp.6712, tmp636,
	add	r2, r2, #8	@ D.46813, D.46813,
	add	r0, r6, #152	@ ivtmp.6703, ivtmp.6703,
	mov	lr, #0	@ tmp641,
	movw	r6, #51348	@ tmp639,
.L2425:
	ldr	ip, [r5, #0]	@ tmp592, <variable>.CurrPic.fs_image.p_usrdat
	cmp	ip, #0	@ tmp592,
	ldrne	r9, [r4, r1]	@ prephitmp.6810, <variable>.TotalUsrDatNum
	beq	.L2467	@,
.L2422:
	add	r5, r5, #4	@ ivtmp.6712, ivtmp.6712,
	cmp	r5, r2	@ ivtmp.6712, D.46813
	bne	.L2425	@,
	cmp	r9, #0	@ prephitmp.6810,
	beq	.L2432	@,
	ble	.L2432	@,
	add	r8, r9, #12800	@ tmp620, prephitmp.6810,
	sub	sl, r9, #1	@ tmp644, prephitmp.6810,
	add	r2, r8, #36	@ tmp620, tmp620,
	and	r9, sl, #1	@ tmp645, tmp644,
	mov	r6, sl	@ uidxpic, tmp644
	movw	r8, #52840	@ tmp637,
	add	r5, r4, r2, asl #2	@, tmp623, pH264Ctx, tmp620,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	mov	r7, #0	@ tmp638,
	mov	sl, r5	@ ivtmp.6700, tmp623
	ldr	r1, [sl], #4	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, r7	@ uidxpic,
	str	r7, [sl, #-4]	@ tmp638, <variable>.pUsrDatArray
	ble	.L2432	@,
	cmp	r9, #0	@ tmp645,
	beq	.L2433	@,
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ uidxpic, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp638, <variable>.pUsrDatArray
	ble	.L2432	@,
.L2433:
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	sub	r6, r6, #1	@ tmp646, uidxpic,
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	sub	r6, r6, #1	@ uidxpic, tmp646,
	bl	FreeUsdByDec	@
	str	r7, [r5, #-4]!	@ tmp638, <variable>.pUsrDatArray
	ldr	r0, [r4, r8]	@, <variable>.ChanID
	ldr	r1, [r5, #-4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	cmp	r6, #0	@ uidxpic,
	str	r7, [r5, #-4]!	@ tmp638, <variable>.pUsrDatArray
	bgt	.L2433	@,
.L2432:
	movw	r5, #49912	@ tmp610,
	movw	ip, #49916	@ tmp613,
	ldr	r3, [r4, r5]	@ D.36364, <variable>.CurrPic.fs_image.p_usrdat
	mov	lr, #49920	@ tmp616,
	movw	r5, #49924	@ tmp619,
	cmp	r3, #0	@ D.36364,
	movwne	r2, #50112	@ tmp612,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r3, [r2, #200]	@ D.36364, <variable>.fs_image.p_usrdat
	ldr	r0, [r4, ip]	@ temp.6815, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r0, #0	@ temp.6815,
	movwne	r2, #50112	@ tmp615,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r0, [r2, #204]	@ temp.6815, <variable>.fs_image.p_usrdat
	ldr	r1, [r4, lr]	@ temp.6817, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.6817,
	movwne	r2, #50112	@ tmp618,
	ldrne	r2, [r4, r2]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r1, [r2, #208]	@ temp.6817, <variable>.fs_image.p_usrdat
	ldr	r3, [r4, r5]	@ temp.6813, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r3, #0	@ temp.6813,
	movwne	lr, #50112	@ tmp629,
	ldrne	r1, [r4, lr]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strne	r3, [r1, #212]	@ temp.6813, <variable>.fs_image.p_usrdat
.L2431:
	movw	r3, #51344	@ tmp630,
	movw	ip, #50148	@ tmp632,
	mov	r5, #0	@ tmp631,
	mov	r0, r4	@, pH264Ctx
	str	r5, [r4, r3]	@ tmp631, <variable>.TotalUsrDatNum
	str	r5, [r4, ip]	@ tmp631, <variable>.CurrPic.pic_type
	bl	CalcPicNum	@
	mov	r0, r5	@ D.36121, tmp631
	b	.L2391	@
.L2464:
	movw	r0, #17568	@ tmp338,
	rsb	r7, r7, r5	@ tmp339, prephitmp.6742, prephitmp.6660
	ldr	r2, [r4, r0]	@ <variable>.CurrSPS.dpb_size_plus1, <variable>.CurrSPS.dpb_size_plus1
	cmp	r2, r7	@ <variable>.CurrSPS.dpb_size_plus1, tmp339
	bcs	.L2402	@,
	b	.L2453	@
.L2456:
	movw	ip, #52840	@ tmp209,
	ldr	r1, [r3, #508]	@, <variable>.logic_fs_id
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #1	@,
	bl	FSP_ClearLogicFs	@
	ldr	r0, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r0, #1]	@ <variable>.is_used, <variable>.is_used
	ldr	r3, [r4, r7]	@ <variable>.CurrPic.frame_store, <variable>.CurrPic.frame_store
	strb	r8, [r3, #4]	@ <variable>.is_used, <variable>.is_in_dpb
	b	.L2382	@
.L2392:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2394	@,
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
.L2463:
	ldr	r0, [r8, #536]	@ <variable>.stPvrInfo.u32IDRFlag, <variable>.stPvrInfo.u32IDRFlag
	cmp	r0, #0	@ <variable>.stPvrInfo.u32IDRFlag,
	bne	.L2403	@,
	ldr	r3, [r8, #544]	@ <variable>.stPvrInfo.u32ContinuousFlag, <variable>.stPvrInfo.u32ContinuousFlag
	cmp	r3, #0	@ <variable>.stPvrInfo.u32ContinuousFlag,
	bne	.L2403	@,
	ldr	ip, [r8, #520]	@ <variable>.s32FastForwardBackwardSpeed, <variable>.s32FastForwardBackwardSpeed
	add	r1, ip, #1020	@ tmp334, <variable>.s32FastForwardBackwardSpeed,
	add	lr, r1, #3	@ tmp334, tmp334,
	cmp	lr, #2048	@ tmp334,
	bcs	.L2402	@,
	b	.L2403	@
.L2459:
	movw	r0, #52892	@ tmp275,
	ldr	r3, [r4, r0]	@ <variable>.DSD_NeedClearQue, <variable>.DSD_NeedClearQue
	cmp	r3, #1	@ <variable>.DSD_NeedClearQue,
	bne	.L2394	@,
	b	.L2393	@
.L2465:
	mov	r0, r4	@, pH264Ctx
	bl	FlushDPB	@
	cmp	r0, #0	@,
	beq	.L2387	@,
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
.L2413:
	mov	r0, r4	@, pH264Ctx
	bl	DecGap	@
	cmp	r0, #0	@,
	ldreq	r5, [r4, r7]	@ prephitmp.6660, <variable>.CurrSlice.frame_num
	beq	.L2400	@,
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
.L2467:
	cmp	r9, #0	@ prephitmp.6810,
	beq	.L2422	@,
	ldr	r7, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r9, [r4, r6]	@ <variable>.pUsrDatArray, <variable>.pUsrDatArray
	subs	r7, r7, #1	@ D.36374, <variable>.TotalUsrDatNum,
	str	r9, [r5, #0]	@ <variable>.pUsrDatArray, <variable>.CurrPic.fs_image.p_usrdat
	beq	.L2423	@,
	ldr	r8, [r0, #0]	@ tmp599, <variable>.pUsrDatArray
	mov	ip, #1	@ uidxsei,
	cmp	r7, ip	@ D.36374, uidxsei
	sub	r3, r7, #1	@ tmp648, D.36374,
	and	sl, r3, ip	@ tmp650, tmp648,
	add	r3, r0, #4	@ ivtmp.6703, ivtmp.6703,
	str	r8, [r0, #-4]	@ tmp599, <variable>.pUsrDatArray
	bls	.L2423	@,
	cmp	sl, #0	@ tmp650,
	beq	.L2424	@,
	ldr	r8, [r0, #4]	@ tmp675, <variable>.pUsrDatArray
	mov	ip, #2	@ uidxsei,
	cmp	r7, ip	@ D.36374, uidxsei
	str	r8, [r3, #-4]	@ tmp675, <variable>.pUsrDatArray
	add	r3, r3, #4	@ ivtmp.6703, ivtmp.6703,
	bls	.L2423	@,
.L2424:
	ldr	sl, [r3, #0]	@ tmp656, <variable>.pUsrDatArray
	add	ip, ip, #2	@ uidxsei, uidxsei,
	ldr	r9, [r3, #4]	@ tmp658, <variable>.pUsrDatArray
	cmp	r7, ip	@ D.36374, uidxsei
	mov	r8, r3	@ tmp651, ivtmp.6703
	str	sl, [r3, #-4]	@ tmp656, <variable>.pUsrDatArray
	str	r9, [r8], #4	@ tmp658, <variable>.pUsrDatArray
	add	r3, r8, #4	@ ivtmp.6703, tmp651,
	bhi	.L2424	@,
.L2423:
	add	r7, r7, #12800	@ tmp600, D.36374,
	ldr	r3, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	ip, r7, #36	@ tmp600, tmp600,
	sub	r9, r3, #1	@ prephitmp.6810, <variable>.TotalUsrDatNum,
	str	r9, [r4, r1]	@ prephitmp.6810, <variable>.TotalUsrDatNum
	add	r7, r4, ip, asl #2	@, tmp604, pH264Ctx, tmp600,
	str	lr, [r7, #4]	@ tmp641, <variable>.pUsrDatArray
	b	.L2422	@
.L2460:
	movw	r0, #13560	@ tmp291,
	movw	ip, #13564	@ tmp293,
	str	r7, [r4, r0]	@ ret.6724, <variable>.CurWidthInMb
	mov	r1, r7	@, ret.6724
	mov	r0, r4	@, pH264Ctx
	str	r7, [r4, ip]	@ ret.6724, <variable>.CurHeightInMb
	bl	ClearAll	@
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
.L2466:
	movw	r1, #17568	@ tmp251,
	ldr	r3, [r4, #0]	@ temp.6718, <variable>.pstExtraData
	ldr	ip, [r4, r1]	@ prephitmp.6679, <variable>.CurrSPS.dpb_size_plus1
	movw	r0, #51320	@ tmp252,
	str	ip, [r4, r0]	@ prephitmp.6679, <variable>.TotalPmvNum
	ldr	r1, [r3, #568]	@ prephitmp.6675, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r1	@ ImageWidth, prephitmp.6675
	bhi	.L2388	@,
	ldr	r2, [r3, #572]	@ prephitmp.6719, <variable>.stChanOption.s32MaxHeight
	cmp	r8, r2	@ ImageHeight, prephitmp.6719
	bhi	.L2388	@,
	mov	sl, #26624	@ tmp253,
	ldr	r9, [r3, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	sl, [r4, sl]	@ <variable>.DPB.size, <variable>.DPB.size
	cmp	r9, sl	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.DPB.size
	bcc	.L2388	@,
	ldr	lr, [r3, #596]	@ <variable>.stChanOption.s32SupportBFrame, <variable>.stChanOption.s32SupportBFrame
	cmp	lr, #0	@ <variable>.stChanOption.s32SupportBFrame,
	moveq	ip, #1	@ tmp258,
	streq	ip, [r4, r0]	@ tmp258, <variable>.TotalPmvNum
	ldreq	r2, [r3, #572]	@ prephitmp.6719, <variable>.stChanOption.s32MaxHeight
	mov	r0, r4	@, pH264Ctx
	ldreq	r1, [r3, #568]	@ prephitmp.6675, <variable>.stChanOption.s32MaxWidth
	add	r3, r4, #51200	@, pH264Ctx,
	add	r3, r3, #116	@,,
	str	ip, [sp, #0]	@ prephitmp.6679,
	bl	H264_ArrangeVahbMem	@
	cmp	r0, #1	@,
	beq	.L2389	@,
	movw	r2, #13560	@ tmp261,
	add	ip, r2, #4	@ tmp263, tmp263,
	mov	r1, #0	@ tmp262,
	mov	r0, r4	@, pH264Ctx
	str	r1, [r4, r2]	@ tmp262, <variable>.CurWidthInMb
	str	r1, [r4, ip]	@ tmp262, <variable>.CurHeightInMb
	bl	ClearAll	@
	mvn	r0, #0	@ D.36121,
	b	.L2391	@
	.fnend
	.size	InitPic, .-InitPic
	.align	2
	.global	se_v
	.type	se_v, %function
se_v:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r0, #13504	@ D.32467, pH264Ctx,
	add	r4, r4, #24	@ D.32467, D.32467,
	mov	r1, #32	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r4	@, D.32467
	bl	BsShow	@
	mov	r7, r0	@ D.32468,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r6, r0	@ zeros,
	bhi	.L2469	@,
	mov	r6, r0, asl #1	@ tmp148, zeros,
	mov	r0, r4	@, D.32467
	add	r6, r6, #1	@ NumBits, tmp148,
	rsb	r3, r6, #32	@ tmp149, NumBits,
	mov	r7, r7, lsr r3	@ D.32475, D.32468,
	mov	r1, r6	@, NumBits
	tst	r7, #1	@ D.32475,
	mov	r7, r7, lsr #1	@ tmp, D.32475,
	rsbne	r7, r7, #0	@ INFO, tmp
	bl	BsSkip	@
.L2472:
	ldr	ip, [r5, #368]	@ D.32499, <variable>.pCurrNal
	mov	r0, r7	@, INFO
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r6, lr, r6	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2469:
	cmp	r0, #31	@ zeros,
	bls	.L2476	@,
	ldr	ip, [r5, #368]	@ D.32499, <variable>.pCurrNal
	movw	r1, #52780	@ tmp153,
	mov	r2, #1	@ tmp154,
	str	r2, [r5, r1]	@ tmp154, <variable>.SeErrFlg
	mvn	r7, #-2147483648	@ INFO,
	mov	r6, #32	@ NumBits,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, r7	@, INFO
	add	r6, lr, r6	@ tmp156, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp156, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2476:
	mov	r1, r6	@, zeros
	mov	r0, r4	@, D.32467
	bl	BsSkip	@
	mov	r1, r6	@, zeros
	mov	r0, r4	@, D.32467
	bl	BsGet	@
	mov	r1, #1	@,
	mov	r7, r0	@ INFO,
	mov	r0, r4	@, D.32467
	bl	BsGet	@
	tst	r0, #1	@,
	mov	r0, r6, asl #1	@ tmp152, zeros,
	rsbne	r7, r7, #0	@ INFO, INFO
	add	r6, r0, #1	@ NumBits, tmp152,
	b	.L2472	@
	.fnend
	.size	se_v, .-se_v
	.align	2
	.global	Scaling_List
	.type	Scaling_List, %function
Scaling_List:
	.fnstart
.LFB1701:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r3, #0	@ sizeOfScalingList, sizeOfScalingList
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r1	@ scalingList_Org, scalingList_Org
	mov	r7, r2	@ scalingList, scalingList
	str	r0, [sp, #0]	@ pH264Ctx, %sfp
	ble	.L2484	@,
	ldr	fp, .L2514	@ tmp175,
	cmp	r4, #16	@ sizeOfScalingList,
	sub	r0, r4, #1	@ tmp180, sizeOfScalingList,
	mov	r9, #255	@ tmp179,
	and	r3, r0, #1	@, tmp180,
	str	r3, [sp, #4]	@, %sfp
	ldrneb	r6, [fp, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	beq	.L2511	@,
.L2499:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	se_v	@
	ldr	ip, [sp, #48]	@, UseDefaultScalingMatrix
	add	r0, r0, #264	@ tmp196,,
	mov	r2, r0, asr #31	@ tmp197, tmp196,
	mov	sl, r2, lsr #24	@ tmp198, tmp197,
	and	r2, r6, #252	@ tmp205, scanj,
	add	r1, r0, sl	@ tmp199, tmp196, tmp198
	add	r2, r7, r2	@ D.37863, scalingList, tmp205
	and	r3, r1, #255	@ tmp200, tmp199,
	cmp	r3, sl	@ tmp200, tmp198
	cmpeq	r6, #0	@, scanj,
	movne	r1, #0	@, tmp203
	moveq	r1, #1	@, tmp203
	subs	r3, r3, sl	@ nextScale, tmp200, tmp198
	and	sl, r6, #3	@ tmp207, scanj,
	str	r1, [ip, #0]	@ tmp203,
	moveq	r8, #8	@ tmpscale,
	movne	r8, r3	@ tmpscale, nextScale
	mov	r1, sl, asl #3	@ D.37865, tmp207,
	str	r8, [r5, r6, asl #2]	@ tmpscale,* scalingList_Org
	ldr	r0, [r2, #0]	@ tmp214,* D.37863
	and	ip, r8, #255	@ tmp209, tmpscale,
	mov	r6, #1	@ j,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, r0, r9, asl r1	@ tmp215, tmp214, tmp179,
	mov	sl, r8	@ lastScale, tmpscale
	orr	r1, r0, ip, asl r1	@, tmp216, tmp215, tmp209,
	str	r1, [r2, #0]	@ tmp216,* D.37863
	ble	.L2484	@,
	ldr	r2, [sp, #4]	@, %sfp
	cmp	r2, #0	@,
	beq	.L2510	@,
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2514+4	@,
	ldrneb	sl, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	sl, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2504	@,
.L2490:
	mov	r3, #0	@ nextScale,
.L2505:
	and	r2, sl, #252	@ tmp232, scanj,
	and	r1, sl, #3	@ tmp234, scanj,
	add	r2, r7, r2	@ D.37863, scalingList, tmp232
	str	r8, [r5, sl, asl #2]	@ tmpscale,* scalingList_Org
	mov	r1, r1, asl #3	@ D.37865, tmp234,
	add	r6, r6, #1	@ j, j,
	ldr	lr, [r2, #0]	@ tmp241,* D.37863
	and	ip, r8, #255	@ tmp236, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	mov	sl, r8	@ lastScale, tmpscale
	bic	r0, lr, r9, asl r1	@ tmp242, tmp241, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp243, tmp242, tmp236,
	str	lr, [r2, #0]	@ tmp243,* D.37863
	ble	.L2484	@,
.L2510:
	mov	r8, r5	@ scalingList_Org, scalingList_Org
.L2483:
	cmp	r4, #16	@ sizeOfScalingList,
	ldreq	r2, .L2514+4	@,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	ldreqb	r5, [r2, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	cmp	r3, #0	@ nextScale,
	bne	.L2512	@,
.L2481:
	mov	r3, #0	@ nextScale,
.L2482:
	and	ip, r5, #3	@ tmp165, scanj,
	mov	lr, r5, lsr #2	@ tmp163, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	cmp	r4, #16	@ sizeOfScalingList,
	ldr	r2, [r7, lr, asl #2]	@ tmp172,* scalingList
	mov	r1, ip, asl #3	@ D.37865, tmp165,
	and	r0, sl, #255	@ tmp166, tmpscale,
	add	r6, r6, #1	@ tmp183, j,
	bic	ip, r2, r9, asl r1	@ tmp171, tmp172, tmp179,
	orr	r2, ip, r0, asl r1	@, tmp173, tmp171, tmp166,
	ldrneb	r5, [fp, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN8
	str	r2, [r7, lr, asl #2]	@ tmp173,* scalingList
	beq	.L2513	@,
.L2506:
	cmp	r3, #0	@ nextScale,
	bne	.L2507	@,
.L2494:
	mov	r3, #0	@ nextScale,
.L2508:
	mov	r2, r5, lsr #2	@ tmp258, scanj,
	and	r1, r5, #3	@ tmp261, scanj,
	str	sl, [r8, r5, asl #2]	@ tmpscale,* scalingList_Org
	add	r6, r6, #1	@ j, tmp183,
	ldr	lr, [r7, r2, asl #2]	@ tmp268,* scalingList
	mov	r1, r1, asl #3	@ D.37865, tmp261,
	and	ip, sl, #255	@ tmp263, tmpscale,
	cmp	r4, r6	@ sizeOfScalingList, j
	bic	r0, lr, r9, asl r1	@ tmp269, tmp268, tmp179,
	orr	lr, r0, ip, asl r1	@, tmp270, tmp269, tmp263,
	str	lr, [r7, r2, asl #2]	@ tmp270,* scalingList
	bgt	.L2483	@,
.L2484:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2507:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	se_v	@
	add	r3, sl, #256	@ tmp249, tmpscale,
	add	ip, r3, r0	@ tmp250, tmp249,
	mov	r1, ip, asr #31	@ tmp251, tmp250,
	mov	r2, r1, lsr #24	@ tmp252, tmp251,
	ldr	r1, [sp, #48]	@, UseDefaultScalingMatrix
	add	r0, ip, r2	@ tmp253, tmp250, tmp252
	and	r3, r0, #255	@ tmp254, tmp253,
	cmp	r3, r2	@ tmp254, tmp252
	cmpeq	r5, #0	@, scanj,
	movne	ip, #0	@, tmp257
	moveq	ip, #1	@, tmp257
	subs	r3, r3, r2	@ nextScale, tmp254, tmp252
	str	ip, [r1, #0]	@ tmp257,
	beq	.L2494	@,
	mov	sl, r3	@ tmpscale, nextScale
	b	.L2508	@
.L2512:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	se_v	@
	add	ip, sl, #256	@ tmp151, lastScale,
	add	r1, ip, r0	@ tmp152, tmp151,
	mov	r2, r1, asr #31	@ tmp153, tmp152,
	mov	r0, r2, lsr #24	@ tmp154, tmp153,
	ldr	r2, [sp, #48]	@, UseDefaultScalingMatrix
	add	r3, r1, r0	@ tmp155, tmp152, tmp154
	and	ip, r3, #255	@ tmp156, tmp155,
	cmp	ip, r0	@ tmp156, tmp154
	cmpeq	r5, #0	@, scanj,
	movne	r1, #0	@, tmp162
	moveq	r1, #1	@, tmp162
	subs	r3, ip, r0	@ nextScale, tmp156, tmp154
	str	r1, [r2, #0]	@ tmp162,
	movne	sl, r3	@ tmpscale, nextScale
	bne	.L2482	@,
	b	.L2481	@
.L2513:
	ldr	r0, .L2514+4	@,
	ldrb	r5, [r0, r6]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2506	@
.L2504:
	ldr	r0, [sp, #0]	@, %sfp
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	se_v	@
	add	r3, r8, #256	@ tmp222, tmpscale,
	add	r1, r3, r0	@ tmp223, tmp222,
	mov	r2, r1, asr #31	@ tmp224, tmp223,
	mov	r0, r2, lsr #24	@ tmp225, tmp224,
	add	ip, r1, r0	@ tmp226, tmp223, tmp225
	ldr	r1, [sp, #48]	@, UseDefaultScalingMatrix
	and	r3, ip, #255	@ tmp227, tmp226,
	cmp	r3, r0	@ tmp227, tmp225
	cmpeq	sl, #0	@, scanj,
	movne	ip, #0	@, tmp230
	moveq	ip, #1	@, tmp230
	subs	r3, r3, r0	@ nextScale, tmp227, tmp225
	str	ip, [r1, #0]	@ tmp230,
	beq	.L2490	@,
	mov	r8, r3	@ tmpscale, nextScale
	b	.L2505	@
.L2511:
	ldr	sl, .L2514+4	@,
	ldrb	r6, [sl, #0]	@ zero_extendqisi2	@ scanj, g_ZZ_SCAN
	b	.L2499	@
.L2515:
	.align	2
.L2514:
	.word	.LANCHOR0+152
	.word	.LANCHOR0+136
	.fnend
	.size	Scaling_List, .-Scaling_List
	.align	2
	.global	ue_v
	.type	ue_v, %function
ue_v:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	add	r4, r0, #13504	@ D.32434, pH264Ctx,
	add	r4, r4, #24	@ D.32434, D.32434,
	mov	r1, #32	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	mov	r0, r4	@, D.32434
	bl	BsShow	@
	mov	r7, r0	@ D.32435,
	bl	ZerosMS_32	@
	cmp	r0, #15	@ zeros,
	mov	r6, r0	@ zeros,
	bls	.L2521	@,
	cmp	r0, #31	@ zeros,
	bls	.L2522	@,
	ldr	ip, [r5, #368]	@ D.32453, <variable>.pCurrNal
	movw	r1, #52780	@ tmp150,
	mov	r2, #1	@ tmp151,
	str	r2, [r5, r1]	@ tmp151, <variable>.SeErrFlg
	mvn	r7, #0	@ INFO,
	mov	r6, #32	@ NumBits,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, r7	@, INFO
	add	r6, lr, r6	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2521:
	mov	r6, r0, asl #1	@ tmp146, zeros,
	mov	r0, r4	@, D.32434
	add	r6, r6, #1	@ NumBits, tmp146,
	rsb	r3, r6, #32	@ tmp147, NumBits,
	mov	r1, r6	@, NumBits
	mov	r7, r7, lsr r3	@ tmp148, D.32435,
	bl	BsSkip	@
	ldr	ip, [r5, #368]	@ D.32453, <variable>.pCurrNal
	sub	r7, r7, #1	@ INFO, tmp148,
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	mov	r0, r7	@, INFO
	add	r6, lr, r6	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L2522:
	add	r7, r0, #1	@ D.32449, zeros,
	mov	r1, r0	@, zeros
	mov	r0, r4	@, D.32434
	bl	BsSkip	@
	mov	r1, r7	@, D.32449
	mov	r0, r4	@, D.32434
	bl	BsShow	@
	mov	r1, r7	@, D.32449
	sub	r7, r0, #1	@ INFO,,
	mov	r0, r4	@, D.32434
	bl	BsSkip	@
	ldr	ip, [r5, #368]	@ D.32453, <variable>.pCurrNal
	mov	r0, r6, asl #1	@ tmp149, zeros,
	add	r6, r0, #1	@ NumBits, tmp149,
	mov	r0, r7	@, INFO
	ldr	lr, [ip, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r6, lr, r6	@ tmp153, <variable>.nal_bitoffset, NumBits
	str	r6, [ip, #64]	@ tmp153, <variable>.nal_bitoffset
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	ue_v, .-ue_v
	.align	2
	.global	H264_DecFramePackingSEI
	.type	H264_DecFramePackingSEI, %function
H264_DecFramePackingSEI:
	.fnstart
.LFB1712:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r1, #:lower16:.LC4	@,
	movt	r1, #:upper16:.LC4	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	ip, #26408	@ tmp156,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC5	@,
	movt	r2, #:upper16:.LC5	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_id
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26385	@ tmp158,
	uxtb	r0, r0	@ D.39072,
	strb	r0, [r4, r3]	@ D.39072, <variable>.FramePackSEI.frame_packing_arrangement_cancel_flag
	cmp	r0, #0	@ D.39072,
	beq	.L2527	@,
.L2524:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC21	@,
	movt	r2, #:upper16:.LC21	@,
	bl	u_v	@
	movw	r3, #26384	@ tmp208,
	movw	r1, #26386	@ tmp206,
	mov	r2, #1	@ tmp209,
	strb	r2, [r4, r3]	@ tmp209, <variable>.FramePackSEI.frame_packing_dec_ok
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame_packing_arrangement_extension_flag
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2527:
	mov	r1, #7	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC6	@,
	movt	r2, #:upper16:.LC6	@,
	bl	u_v	@
	movw	r6, #26400	@ tmp161,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC7	@,
	movt	r2, #:upper16:.LC7	@,
	movw	r5, #26387	@ tmp163,
	str	r0, [r4, r6]	@, <variable>.FramePackSEI.frame_packing_arrangement_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #6	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	strb	r0, [r4, r5]	@, <variable>.FramePackSEI.quincunx_sampling_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26404	@ tmp166,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC9	@,
	movt	r2, #:upper16:.LC9	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.content_interpretation_type
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26388	@ tmp168,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC10	@,
	movt	r2, #:upper16:.LC10	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.spatial_flipping_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26389	@ tmp171,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC11	@,
	movt	r2, #:upper16:.LC11	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_flipped_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26390	@ tmp174,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC12	@,
	movt	r2, #:upper16:.LC12	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.field_views_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26391	@ tmp177,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC13	@,
	movt	r2, #:upper16:.LC13	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.current_frame_is_frame0_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26392	@ tmp180,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC14	@,
	movt	r2, #:upper16:.LC14	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_self_contained_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	ldrsb	r2, [r4, r5]	@ <variable>.FramePackSEI.quincunx_sampling_flag, <variable>.FramePackSEI.quincunx_sampling_flag
	movw	r1, #26393	@ tmp183,
	cmp	r2, #0	@ <variable>.FramePackSEI.quincunx_sampling_flag,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_self_contained_flag
	bne	.L2525	@,
	ldr	lr, [r4, r6]	@ <variable>.FramePackSEI.frame_packing_arrangement_type, <variable>.FramePackSEI.frame_packing_arrangement_type
	cmp	lr, #5	@ <variable>.FramePackSEI.frame_packing_arrangement_type,
	beq	.L2525	@,
	mov	r1, #1	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC15	@,
	movt	r2, #:upper16:.LC15	@,
	bl	u_v	@
	movw	r3, #26394	@ tmp190,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC16	@,
	movt	r2, #:upper16:.LC16	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame0_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	ip, #26395	@ tmp193,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC17	@,
	movt	r2, #:upper16:.LC17	@,
	strb	r0, [r4, ip]	@, <variable>.FramePackSEI.frame0_grid_position_y
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r3, #26396	@ tmp196,
	mov	r1, #1	@,
	movw	r2, #:lower16:.LC18	@,
	movt	r2, #:upper16:.LC18	@,
	strb	r0, [r4, r3]	@, <variable>.FramePackSEI.frame1_grid_position_x
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	movw	r1, #26397	@ tmp199,
	strb	r0, [r4, r1]	@, <variable>.FramePackSEI.frame1_grid_position_y
.L2525:
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC19	@,
	movt	r2, #:upper16:.LC19	@,
	bl	u_v	@
	movw	ip, #26412	@ tmp202,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	r0, [r4, ip]	@, <variable>.FramePackSEI.frame_packing_arrangement_reserved_byte
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	movw	r2, #26416	@ tmp204,
	str	r0, [r4, r2]	@, <variable>.FramePackSEI.frame_packing_arrangement_repetition_period
	b	.L2524	@
	.fnend
	.size	H264_DecFramePackingSEI, .-H264_DecFramePackingSEI
	.align	2
	.global	H264_DecSEI
	.type	H264_DecSEI, %function
H264_DecSEI:
	.fnstart
.LFB1714:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	r8, r0, #13504	@ D.39314, pH264Ctx,
	ldr	r2, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	.pad #44
	sub	sp, sp, #44	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	add	r5, sp, #40	@ tmp901,,
	mov	r0, #0	@ tmp224,
	add	r8, r8, #24	@ D.39314, D.39314,
	mov	sl, r0	@ payloadType, tmp224
	movw	r7, #13552	@ tmp992,
	movw	r6, #13544	@ tmp993,
	strb	r0, [r5, #-1]!	@ tmp224, byte_tmp
	mov	r3, #32	@ tmp227,
	str	r3, [r2, #24]	@ tmp227, <variable>.bitsoffset
.L2532:
	mov	r1, r5	@, tmp901
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r9, [r4, r7]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r6]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r9, #8	@ tmp231, <variable>.BS.TotalPos,
	ldrb	r9, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.758, byte_tmp
	cmp	ip, r1, asl #3	@ tmp231, <variable>.BS.BsLen,
	mov	fp, r0	@ ret,
	ble	.L2999	@,
.L2531:
	mvn	r0, #0	@ D.39318,
.L2596:
	add	sp, sp, #44	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L2999:
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret,
	add	sl, sl, r9	@ payloadType, payloadType, byte_tmp.758
	ble	.L2531	@,
	ldrb	fp, [sp, #39]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	fp, #255	@ byte_tmp,
	beq	.L2532	@,
	mov	r7, #0	@,
	movw	r6, #:lower16:g_event_report	@,
	str	r7, [sp, #20]	@, %sfp
	movt	r6, #:upper16:g_event_report	@,
	movw	r7, #13544	@ tmp984,
	str	r6, [sp, #16]	@, %sfp
	mov	r9, r5	@ tmp901, tmp901
	movw	r6, #13552	@ tmp983,
.L2683:
	mov	r5, #0	@ payloadSize,
.L2536:
	mov	r1, r9	@, tmp901
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldrb	r3, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7080, byte_tmp
	add	r2, r1, #8	@ tmp239, <variable>.BS.TotalPos,
	add	r5, r5, r3	@ payloadSize, payloadSize, byte_tmp.7080
	mov	fp, r0	@ ret.7079,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	cmp	r2, r0, asl #3	@ tmp239, <variable>.BS.BsLen,
	ble	.L3000	@,
.L2535:
	mov	r3, #1	@ prephitmp.6979,
	b	.L2537	@
.L3000:
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7079,
	ble	.L2535	@,
	ldrb	lr, [sp, #39]	@ zero_extendqisi2	@ byte_tmp, byte_tmp
	cmp	lr, #255	@ byte_tmp,
	beq	.L2536	@,
	mov	r3, #0	@ prephitmp.6979,
.L2537:
	cmp	r5, #409600	@ payloadSize,
	orrgt	r3, r3, #1	@,, tmp249, prephitmp.6979
	cmp	r3, #0	@ tmp249,
	bne	.L2531	@,
	cmp	sl, #45	@ payloadType,
	ldrls	pc, [pc, sl, asl #2]	@ payloadType
	b	.L2538	@
.L2562:
	.word	.L2539
	.word	.L2540
	.word	.L2541
	.word	.L2542
	.word	.L2543
	.word	.L2544
	.word	.L2545
	.word	.L2546
	.word	.L2547
	.word	.L2548
	.word	.L2549
	.word	.L2550
	.word	.L2551
	.word	.L2552
	.word	.L2553
	.word	.L2554
	.word	.L2555
	.word	.L2556
	.word	.L2557
	.word	.L2558
	.word	.L2559
	.word	.L2560
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2538
	.word	.L2561
.L2543:
	mov	sl, #1	@,
	str	sl, [sp, #20]	@, %sfp
.L2544:
	movw	fp, #51344	@ tmp328,
	ldr	sl, [r4, fp]	@ prephitmp.6987, <variable>.TotalUsrDatNum
	cmp	sl, #3	@ prephitmp.6987,
	bhi	.L3001	@,
.L2583:
	movw	lr, #52840	@ tmp355,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	GetUsd	@
	movw	r1, #51344	@ tmp365,
	ldr	r3, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r2, sl, #12800	@ tmp357, prephitmp.6987,
	add	sl, r2, #36	@ tmp357, tmp357,
	add	ip, r3, #12800	@ tmp363, <variable>.TotalUsrDatNum,
	add	r1, ip, #36	@ tmp363, tmp363,
	add	sl, r4, sl, asl #2	@, tmp361, pH264Ctx, tmp357,
	add	r2, r4, r1, asl #2	@, tmp369, pH264Ctx, tmp363,
	str	r0, [sl, #4]	@, <variable>.pUsrDatArray
	ldr	r1, [r2, #4]	@ prephitmp.6993, <variable>.pUsrDatArray
	cmp	r1, #0	@ prephitmp.6993,
	beq	.L2531	@,
	ldr	ip, [r4, #368]	@ temp.7115, <variable>.pCurrNal
	cmp	r5, #1024	@ payloadSize,
	movlt	fp, r5	@ D.39379, payloadSize
	movge	fp, #1024	@ D.39379,
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ segment_idx, <variable>.nal_used_segment
	ldr	r2, [ip, #68]	@ D.39333, <variable>.nal_segment
	cmp	r3, r2	@ segment_idx, D.39333
	movcs	r0, #0	@ prephitmp.6989,
	movcs	r3, r0	@ lenth_not_parse, prephitmp.6989
	bcs	.L2585	@,
	rsb	sl, r3, r3, asl #3	@, tmp373, segment_idx, segment_idx,
	add	r0, r3, #1	@ segment_idx, segment_idx,
	mvn	r3, r3	@ tmp1024, segment_idx
	cmp	r0, r2	@ segment_idx, D.39333
	add	lr, ip, sl, asl #2	@, tmp375, temp.7115, tmp373,
	add	sl, r3, r2	@ tmp1023, tmp1024, D.39333
	add	lr, lr, #8	@ tmp376, tmp375,
	and	ip, sl, #1	@, tmp1023,
	str	ip, [sp, #24]	@, %sfp
	add	ip, lr, #32	@ ivtmp.7036, tmp376,
	ldr	sl, [lr, #16]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r3, sl, #7	@ tmp377, <variable>.bitsoffset,
	ldr	sl, [lr, #4]	@, <variable>.bitstream_length
	sub	r3, sl, r3, lsr #3	@ lenth_not_parse,, tmp377,
	beq	.L2852	@,
	ldr	sl, [sp, #24]	@, %sfp
	cmp	sl, #0	@,
	beq	.L2931	@,
	ldr	ip, [ip, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	add	r0, r0, #1	@ segment_idx, segment_idx,
	ldr	sl, [lr, #32]	@ <variable>.bitstream_length, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, D.39333
	add	ip, ip, #7	@, <variable>.bitsoffset,
	str	ip, [sp, #24]	@, %sfp
	add	ip, lr, #60	@ ivtmp.7036, tmp376,
	ldr	lr, [sp, #24]	@, %sfp
	sub	sl, sl, lr, lsr #3	@ tmp1227, <variable>.bitstream_length,,
	add	r3, r3, sl	@ lenth_not_parse, lenth_not_parse, tmp1227
	beq	.L2852	@,
.L2931:
	str	r1, [sp, #4]	@ prephitmp.6993, %sfp
.L2586:
	ldr	r1, [ip, #12]	@, <variable>.bitsoffset
	mov	lr, ip	@ tmp1027, ivtmp.7036
	ldr	sl, [lr], #28	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r0, r0, #2	@ segment_idx, segment_idx,
	add	r1, r1, #7	@,,
	str	r1, [sp, #24]	@, %sfp
	ldr	r1, [ip, #28]	@, <variable>.bitstream_length
	cmp	r0, r2	@ segment_idx, D.39333
	add	ip, ip, #56	@ ivtmp.7036, ivtmp.7036,
	str	r1, [sp, #28]	@, %sfp
	ldr	r1, [sp, #24]	@, %sfp
	ldr	lr, [lr, #12]	@ <variable>.bitsoffset, <variable>.bitsoffset
	sub	sl, sl, r1, lsr #3	@ tmp1107, <variable>.bitstream_length,,
	add	lr, lr, #7	@ tmp1112, <variable>.bitsoffset,
	add	r1, r3, sl	@ lenth_not_parse, lenth_not_parse, tmp1107
	ldr	sl, [sp, #28]	@, %sfp
	sub	lr, sl, lr, lsr #3	@ tmp1115,, tmp1112,
	add	r3, r1, lr	@ lenth_not_parse, lenth_not_parse, tmp1115
	bne	.L2586	@,
	ldr	r1, [sp, #4]	@ prephitmp.6993, %sfp
.L2852:
	mov	r0, r3	@ prephitmp.6989, lenth_not_parse
.L2585:
	ldr	ip, [sp, #20]	@, %sfp
	cmp	fp, r0	@ D.39379, prephitmp.6989
	movle	r3, fp	@ lenth_not_parse, D.39379
	str	r3, [sp, #24]	@ lenth_not_parse, %sfp
	sxtb	r2, ip	@ registered_flag,
	cmp	r2, #1	@ registered_flag,
	movne	sl, #0	@ prephitmp.6994,
	movne	ip, sl	@ used_byte, prephitmp.6994
	beq	.L3002	@,
.L2593:
	ldr	r3, [sp, #24]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	str	ip, [sp, #12]	@,
	rsb	r2, sl, r3	@, prephitmp.6994,
	bl	GetBytes	@
	ldr	ip, [sp, #12]	@,
	subs	sl, r0, #0	@ ret.7137,
	ble	.L3003	@,
	rsb	r0, ip, fp	@ tmp496, used_byte, D.39379
	cmp	sl, r0	@ ret.7137, tmp496
	bge	.L2597	@,
	movw	lr, #51344	@ tmp499,
	sub	fp, sl, #1	@ tmp1015, ret.7137,
	ldr	r5, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	and	fp, fp, #1	@ tmp1017, tmp1015,
	add	r0, r5, #12800	@ tmp497, <variable>.TotalUsrDatNum,
	add	ip, r0, #36	@ tmp497, tmp497,
	add	r3, r4, ip, asl #2	@, tmp504, pH264Ctx, tmp497,
	ldr	r1, [r3, #4]	@ tmp501, <variable>.pUsrDatArray
	str	sl, [r1, #1048]	@ ret.7137, <variable>.data_size
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r5, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r2, #8	@ tmp507, <variable>.BS.TotalPos,
	cmp	lr, r5, asl #3	@ tmp507, <variable>.BS.BsLen,
	bgt	.L2598	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.7149,
	cmp	sl, r5	@ ret.7137, i.7149
	ble	.L2598	@,
	cmp	fp, #0	@ tmp1017,
	beq	.L2599	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r5, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r1, #8	@ tmp1207, <variable>.BS.TotalPos,
	cmp	ip, r5, asl #3	@ tmp1207, <variable>.BS.BsLen,
	bgt	.L2598	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #2	@ i.7149,
	cmp	sl, r5	@ ret.7137, i.7149
	bgt	.L2599	@,
	b	.L2598	@
.L3004:
	bl	BsSkip	@
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r0, r8	@, D.39314
	add	r3, r1, #8	@ tmp1126, <variable>.BS.TotalPos,
	mov	r1, #8	@,
	cmp	r3, r2, asl #3	@ tmp1126, <variable>.BS.BsLen,
	bgt	.L2598	@,
	bl	BsSkip	@
	cmp	sl, r5	@ ret.7137, i.7149
	ble	.L2598	@,
.L2599:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	mov	r1, #8	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r5, r5, #1	@ tmp1018, i.7149,
	add	r3, ip, r1	@ tmp1118, <variable>.BS.TotalPos,
	mov	r0, r8	@, D.39314
	add	r5, r5, #1	@ i.7149, tmp1018,
	cmp	r3, r2, asl #3	@ tmp1118, <variable>.BS.BsLen,
	ble	.L3004	@,
.L2598:
	movw	r2, #51344	@ tmp536,
	ldr	r1, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r0, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r5, #1056	@ tmp543,
	add	sl, r0, #12800	@ tmp534, <variable>.TotalUsrDatNum,
	ldrd	r0, [r1, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r3, sl, #36	@ tmp534, tmp534,
	add	ip, r4, r3, asl #2	@, tmp541, pH264Ctx, tmp534,
	ldr	lr, [ip, #4]	@ tmp538, <variable>.pUsrDatArray
	strd	r0, [lr, r5]	@ <variable>.pts, tmp538, tmp543
	movw	r1, #52800	@ tmp565,
	ldr	sl, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, sl, #12800	@ tmp546, <variable>.TotalUsrDatNum,
	mov	sl, #8	@ tmp555,
	add	ip, r3, #36	@ tmp546, tmp546,
	add	lr, r4, ip, asl #2	@, tmp553, pH264Ctx, tmp546,
	ldr	r5, [lr, #4]	@ tmp550, <variable>.pUsrDatArray
	str	sl, [r5, #1036]	@ tmp555, <variable>.from
	ldr	r3, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	sl, [r4, r1]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	ip, r3, #12800	@ tmp556, <variable>.TotalUsrDatNum,
	add	lr, ip, #36	@ tmp556, tmp556,
	add	r5, r4, lr, asl #2	@, tmp563, pH264Ctx, tmp556,
	ldr	r3, [r5, #4]	@ tmp560, <variable>.pUsrDatArray
	str	sl, [r3, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	sl, [sp, #16]	@, %sfp
	ldr	r3, [sl, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	beq	.L2603	@,
	ldr	ip, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
.L2995:
	add	r5, ip, #12800	@ tmp569, <variable>.TotalUsrDatNum,
	add	r2, sp, #40	@ tmp581,,
	add	ip, r5, #36	@ tmp569, tmp569,
	movw	r0, #52840	@ tmp579,
	ldr	r0, [r4, r0]	@, <variable>.ChanID
	mov	r1, #6	@,
	add	lr, r4, ip, asl #2	@, tmp575, pH264Ctx, tmp569,
	ldr	r5, [lr, #4]	@ tmp577, <variable>.pUsrDatArray
	str	r5, [r2, #-8]!	@ tmp577,
	blx	r3	@ g_event_report
.L2603:
	movw	r2, #51344	@ tmp583,
	ldr	r1, [r4, r2]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r1, #1	@ prephitmp.6981, <variable>.TotalUsrDatNum,
	str	r3, [r4, r2]	@ prephitmp.6981, <variable>.TotalUsrDatNum
	b	.L2566	@
.L2546:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp595, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp595, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7184,
	bne	.L2607	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7184,
	cmp	r5, sl	@ payloadSize, i.7184
	bgt	.L2962	@,
	b	.L2877	@
.L2607:
	add	fp, sl, #1	@ tmp1035, i.7184,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7184, tmp1035,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1035
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp602, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp602, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2962:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1248, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1248, <variable>.BS.BsLen,
	ble	.L2607	@,
.L2877:
	movw	r0, #51344	@ tmp872,
	ldr	r3, [r4, r0]	@ prephitmp.6981, <variable>.TotalUsrDatNum
.L2566:
	cmp	r3, #3	@ prephitmp.6981,
	bhi	.L3005	@,
	mov	sl, #0	@ payloadType,
.L2681:
	mov	r1, r9	@, tmp901
	mov	r2, #1	@,
	mov	r0, r4	@, pH264Ctx
	bl	GetBytes	@
	ldr	r5, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r5, #8	@ tmp895, <variable>.BS.TotalPos,
	ldrb	r5, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7291, byte_tmp
	cmp	r2, r1, asl #3	@ tmp895, <variable>.BS.BsLen,
	mov	fp, r0	@ ret.7289,
	ble	.L3006	@,
.L2680:
	mov	r0, #0	@ D.39318,
	b	.L2596	@
.L2547:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp611, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp611, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7190,
	bne	.L2611	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7190,
	cmp	r5, sl	@ payloadSize, i.7190
	bgt	.L2964	@,
	b	.L2877	@
.L2611:
	add	fp, sl, #1	@ tmp1039, i.7190,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7190, tmp1039,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1039
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp618, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp618, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2964:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1260, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1260, <variable>.BS.BsLen,
	ble	.L2611	@,
	b	.L2877	@
.L2548:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp627, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp627, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7196,
	bne	.L2615	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7196,
	cmp	r5, sl	@ payloadSize, i.7196
	bgt	.L2966	@,
	b	.L2877	@
.L2615:
	add	fp, sl, #1	@ tmp1043, i.7196,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7196, tmp1043,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1043
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp634, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp634, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2966:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1272, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1272, <variable>.BS.BsLen,
	ble	.L2615	@,
	b	.L2877	@
.L2549:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp643, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp643, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7202,
	bne	.L2619	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7202,
	cmp	r5, sl	@ payloadSize, i.7202
	bgt	.L2968	@,
	b	.L2877	@
.L2619:
	add	fp, sl, #1	@ tmp1047, i.7202,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7202, tmp1047,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1047
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp650, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp650, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2968:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1284, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1284, <variable>.BS.BsLen,
	ble	.L2619	@,
	b	.L2877	@
.L2550:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp659, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp659, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7208,
	bne	.L2623	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7208,
	cmp	r5, sl	@ payloadSize, i.7208
	bgt	.L2970	@,
	b	.L2877	@
.L2623:
	add	fp, sl, #1	@ tmp1051, i.7208,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7208, tmp1051,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1051
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp666, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp666, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2970:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1296, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1296, <variable>.BS.BsLen,
	ble	.L2623	@,
	b	.L2877	@
.L2551:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp675, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp675, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7214,
	bne	.L2627	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7214,
	cmp	r5, sl	@ payloadSize, i.7214
	bgt	.L2972	@,
	b	.L2877	@
.L2627:
	add	fp, sl, #1	@ tmp1055, i.7214,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7214, tmp1055,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1055
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp682, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp682, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2972:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1308, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1308, <variable>.BS.BsLen,
	ble	.L2627	@,
	b	.L2877	@
.L2552:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp691, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp691, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7220,
	bne	.L2631	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7220,
	cmp	r5, sl	@ payloadSize, i.7220
	bgt	.L2974	@,
	b	.L2877	@
.L2631:
	add	fp, sl, #1	@ tmp1059, i.7220,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7220, tmp1059,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1059
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp698, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp698, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2974:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1320, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1320, <variable>.BS.BsLen,
	ble	.L2631	@,
	b	.L2877	@
.L2553:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp707, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp707, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7226,
	bne	.L2635	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7226,
	cmp	r5, sl	@ payloadSize, i.7226
	bgt	.L2976	@,
	b	.L2877	@
.L2635:
	add	fp, sl, #1	@ tmp1063, i.7226,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7226, tmp1063,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1063
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp714, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp714, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2976:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1332, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1332, <variable>.BS.BsLen,
	ble	.L2635	@,
	b	.L2877	@
.L2554:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp723, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp723, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7232,
	bne	.L2639	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7232,
	cmp	r5, sl	@ payloadSize, i.7232
	bgt	.L2978	@,
	b	.L2877	@
.L2639:
	add	fp, sl, #1	@ tmp1067, i.7232,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7232, tmp1067,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1067
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp730, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp730, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2978:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1344, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1344, <variable>.BS.BsLen,
	ble	.L2639	@,
	b	.L2877	@
.L2555:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp739, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp739, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7238,
	bne	.L2643	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7238,
	cmp	r5, sl	@ payloadSize, i.7238
	bgt	.L2980	@,
	b	.L2877	@
.L2643:
	add	fp, sl, #1	@ tmp1071, i.7238,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7238, tmp1071,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1071
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp746, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp746, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2980:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1356, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1356, <variable>.BS.BsLen,
	ble	.L2643	@,
	b	.L2877	@
.L2556:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp755, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp755, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7244,
	bne	.L2647	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7244,
	cmp	r5, sl	@ payloadSize, i.7244
	bgt	.L2982	@,
	b	.L2877	@
.L2647:
	add	fp, sl, #1	@ tmp1075, i.7244,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7244, tmp1075,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1075
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp762, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp762, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2982:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1368, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1368, <variable>.BS.BsLen,
	ble	.L2647	@,
	b	.L2877	@
.L2557:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp771, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp771, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7250,
	bne	.L2651	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7250,
	cmp	r5, sl	@ payloadSize, i.7250
	bgt	.L2984	@,
	b	.L2877	@
.L2651:
	add	fp, sl, #1	@ tmp1079, i.7250,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7250, tmp1079,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1079
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp778, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp778, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2984:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1380, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1380, <variable>.BS.BsLen,
	ble	.L2651	@,
	b	.L2877	@
.L2558:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp787, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp787, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7256,
	bne	.L2655	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7256,
	cmp	r5, sl	@ payloadSize, i.7256
	bgt	.L2986	@,
	b	.L2877	@
.L2655:
	add	fp, sl, #1	@ tmp1083, i.7256,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7256, tmp1083,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1083
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp794, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp794, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2986:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1392, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1392, <variable>.BS.BsLen,
	ble	.L2655	@,
	b	.L2877	@
.L2559:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp803, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp803, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7263,
	bne	.L2659	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7263,
	cmp	r5, sl	@ payloadSize, i.7263
	bgt	.L2988	@,
	b	.L2877	@
.L2659:
	add	fp, sl, #1	@ tmp1087, i.7263,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7263, tmp1087,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1087
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp810, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp810, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2988:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1404, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1404, <variable>.BS.BsLen,
	ble	.L2659	@,
	b	.L2877	@
.L2560:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r1, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r1, #8	@ tmp819, <variable>.BS.TotalPos,
	cmp	r2, r0, asl #3	@ tmp819, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7269,
	bne	.L2663	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7269,
	cmp	r5, sl	@ payloadSize, i.7269
	bgt	.L2990	@,
	b	.L2877	@
.L2663:
	add	fp, sl, #1	@ tmp1091, i.7269,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7269, tmp1091,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp1091
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp826, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp826, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2990:
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp1416, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1416, <variable>.BS.BsLen,
	ble	.L2663	@,
	b	.L2877	@
.L2561:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	ldr	sl, [r4, r6]	@ bitpos.7270, <variable>.BS.TotalPos
	bl	H264_DecFramePackingSEI	@
	ldr	r3, [r4, r6]	@ prephitmp.6983, <variable>.BS.TotalPos
	mov	r2, r5, asl #3	@ temp.7272, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7271, bitpos.7270, prephitmp.6983
	cmp	sl, r2	@ bitpos.7271, temp.7272
	bge	.L2665	@,
	rsb	sl, sl, r2	@, bitpos.7271, temp.7272
	str	sl, [sp, #28]	@, %sfp
	cmp	sl, #0	@,
	add	r2, sl, #7	@ tmp836,,
	movge	r2, sl	@ temp.7373,
	mov	r0, r2, asr #3	@, temp.7373,
	str	r0, [sp, #24]	@, %sfp
	cmp	r0, #0	@,
	ble	.L2998	@,
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp842, prephitmp.6983,
	mov	r2, ip, asl #3	@ prephitmp.6985, <variable>.BS.BsLen,
	cmp	lr, r2	@ tmp842, prephitmp.6985
	bgt	.L2667	@,
	ldr	fp, [sp, #24]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7275,
	bne	.L2668	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r0, [sp, #24]	@, %sfp
	mov	fp, #1	@ i.7275,
	cmp	fp, r0	@ i.7275,
	blt	.L2992	@,
	b	.L2916	@
.L2668:
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	bl	BsSkip	@
	ldr	r3, [sp, #24]	@, %sfp
	add	sl, fp, #1	@ tmp1095, i.7275,
	mov	r0, r8	@, D.39314
	cmp	sl, r3	@ tmp1095,
	add	fp, sl, #1	@ i.7275, tmp1095,
	mov	r1, #8	@,
	bge	.L2916	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.6983, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.6985, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp846, prephitmp.6983,
	cmp	lr, r2	@ tmp846, prephitmp.6985
	bgt	.L2667	@,
	bl	BsSkip	@
.L2992:
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.6983, <variable>.BS.TotalPos
	mov	r2, r2, asl #3	@ prephitmp.6985, <variable>.BS.BsLen,
	add	r1, r3, #8	@ tmp1427, prephitmp.6983,
	cmp	r1, r2	@ tmp1427, prephitmp.6985
	ble	.L2668	@,
.L2667:
	ldr	ip, [sp, #28]	@, %sfp
	mov	r1, ip, asr #31	@ tmp850,,
	mov	r1, r1, lsr #29	@ tmp851, tmp850,
	add	r0, ip, r1	@ tmp852,, tmp851
	and	lr, r0, #7	@ tmp853, tmp852,
	rsb	r1, r1, lr	@ tmp854, tmp851, tmp853
	add	ip, r3, r1	@ tmp855, prephitmp.6983, tmp854
	cmp	ip, r2	@ tmp855, prephitmp.6985
	bgt	.L2665	@,
	mov	r0, r8	@, D.39314
	bl	BsSkip	@
.L2665:
	mov	r1, r5	@, payloadSize
	mov	r0, r4	@, pH264Ctx
	movw	r5, #51344	@ tmp856,
	bl	PassBytes	@
	ldr	r3, [r4, r5]	@ prephitmp.6981, <variable>.TotalUsrDatNum
	b	.L2566	@
.L2538:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, lr, #8	@ tmp859, <variable>.BS.TotalPos,
	cmp	r3, r2, asl #3	@ tmp859, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7286,
	bne	.L2672	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7286,
	cmp	r5, sl	@ payloadSize, i.7286
	bgt	.L2994	@,
	b	.L2877	@
.L2672:
	add	fp, sl, #1	@ tmp998, i.7286,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7286, tmp998,
	bl	BsSkip	@
	cmp	r5, fp	@ payloadSize, tmp998
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2877	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r2, r3, #8	@ tmp866, <variable>.BS.TotalPos,
	cmp	r2, ip, asl #3	@ tmp866, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2994:
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1157, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1157, <variable>.BS.BsLen,
	ble	.L2672	@,
	b	.L2877	@
.L2541:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r2, #8	@ tmp301, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp301, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7104,
	bne	.L2577	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7104,
	cmp	sl, r5	@ i.7104, payloadSize
	blt	.L2954	@,
	b	.L2877	@
.L2577:
	add	fp, sl, #1	@ tmp1010, i.7104,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7104, tmp1010,
	bl	BsSkip	@
	cmp	fp, r5	@ tmp1010, payloadSize
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bge	.L2877	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp305, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp305, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2954:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1189, <variable>.BS.TotalPos,
	cmp	r1, ip, asl #3	@ tmp1189, <variable>.BS.BsLen,
	ble	.L2577	@,
	b	.L2877	@
.L2542:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r2, #8	@ tmp317, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp317, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i.7110,
	bne	.L2581	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i.7110,
	cmp	sl, r5	@ i.7110, payloadSize
	blt	.L2956	@,
	b	.L2877	@
.L2581:
	add	fp, sl, #1	@ tmp1014, i.7110,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i.7110, tmp1014,
	bl	BsSkip	@
	cmp	fp, r5	@ tmp1014, payloadSize
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bge	.L2877	@,
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp321, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp321, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2956:
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r0, #8	@ tmp1201, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp1201, <variable>.BS.BsLen,
	ble	.L2581	@,
	b	.L2877	@
.L2545:
	cmp	r5, #0	@ payloadSize,
	ble	.L2665	@,
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r3, r0, #8	@ tmp254, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp254, <variable>.BS.BsLen,
	bgt	.L2665	@,
	tst	r5, #1	@ payloadSize,
	mov	fp, #0	@ i.7116,
	bne	.L2564	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	fp, #1	@ i.7116,
	cmp	r5, fp	@ payloadSize, i.7116
	bgt	.L2960	@,
	b	.L2665	@
.L2564:
	add	sl, fp, #1	@ tmp1031, i.7116,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	fp, sl, #1	@ i.7116, tmp1031,
	bl	BsSkip	@
	cmp	r5, sl	@ payloadSize, tmp1031
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2665	@,
	ldr	ip, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, ip, #8	@ tmp587, <variable>.BS.TotalPos,
	cmp	r3, lr, asl #3	@ tmp587, <variable>.BS.BsLen,
	bgt	.L2665	@,
	bl	BsSkip	@
.L2960:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1236, <variable>.BS.TotalPos,
	cmp	r1, r0, asl #3	@ tmp1236, <variable>.BS.BsLen,
	ble	.L2564	@,
	b	.L2665	@
.L2539:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	bl	PassBytes	@
	cmp	r5, #0	@ payloadSize,
	ble	.L2877	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	lr, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, lr, #8	@ tmp261, <variable>.BS.TotalPos,
	cmp	r1, r2, asl #3	@ tmp261, <variable>.BS.BsLen,
	bgt	.L2877	@,
	tst	r5, #1	@ payloadSize,
	mov	sl, #0	@ i,
	bne	.L2568	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	sl, #1	@ i,
	cmp	sl, r5	@ i, payloadSize
	blt	.L2950	@,
	b	.L2877	@
.L2568:
	add	fp, sl, #1	@ tmp1002, i,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	sl, fp, #1	@ i, tmp1002,
	bl	BsSkip	@
	cmp	fp, r5	@ tmp1002, payloadSize
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bge	.L2877	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r3, r2, #8	@ tmp265, <variable>.BS.TotalPos,
	cmp	r3, ip, asl #3	@ tmp265, <variable>.BS.BsLen,
	bgt	.L2877	@,
	bl	BsSkip	@
.L2950:
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	r1, r2, #8	@ tmp1169, <variable>.BS.TotalPos,
	cmp	r1, ip, asl #3	@ tmp1169, <variable>.BS.BsLen,
	ble	.L2568	@,
	b	.L2877	@
.L2540:
	mov	r0, r4	@, pH264Ctx
	mov	r1, r5	@, payloadSize
	ldr	sl, [r4, r6]	@ bitpos, <variable>.BS.TotalPos
	bl	H264_DecPicTimingSEI	@
	ldr	r3, [r4, r6]	@ prephitmp.6998, <variable>.BS.TotalPos
	mov	r2, r5, asl #3	@ D.39345, payloadSize,
	rsb	sl, sl, r3	@ bitpos.7091, bitpos, prephitmp.6998
	cmp	sl, r2	@ bitpos.7091, D.39345
	bge	.L2665	@,
	rsb	lr, sl, r2	@, bitpos.7091, D.39345
	str	lr, [sp, #28]	@, %sfp
	ldr	sl, [sp, #28]	@, %sfp
	add	r1, lr, #7	@ tmp275,,
	cmp	sl, #0	@,
	movge	r1, sl	@ D.39349,
	mov	r0, r1, asr #3	@, D.39349,
	str	r0, [sp, #24]	@, %sfp
	cmp	r0, #0	@,
	ble	.L2998	@,
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r3, #8	@ tmp281, prephitmp.6998,
	mov	r2, r2, asl #3	@ prephitmp.7000, <variable>.BS.BsLen,
	cmp	ip, r2	@ tmp281, prephitmp.7000
	bgt	.L2667	@,
	ldr	fp, [sp, #24]	@, %sfp
	tst	fp, #1	@,
	mov	fp, #0	@ i.7094,
	bne	.L2573	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	ldr	r3, [sp, #24]	@, %sfp
	mov	fp, #1	@ i.7094,
	cmp	fp, r3	@ i.7094,
	blt	.L2952	@,
	b	.L2916	@
.L2573:
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	bl	BsSkip	@
	ldr	r3, [sp, #24]	@, %sfp
	add	sl, fp, #1	@ tmp1006, i.7094,
	mov	r0, r8	@, D.39314
	cmp	sl, r3	@ tmp1006,
	add	fp, sl, #1	@ i.7094, tmp1006,
	mov	r1, #8	@,
	bge	.L2916	@,
	ldr	ip, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.6998, <variable>.BS.TotalPos
	mov	r2, ip, asl #3	@ prephitmp.7000, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp285, prephitmp.6998,
	cmp	lr, r2	@ tmp285, prephitmp.7000
	bgt	.L2667	@,
	bl	BsSkip	@
.L2952:
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.6998, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.7000, <variable>.BS.BsLen,
	add	lr, r3, #8	@ tmp1180, prephitmp.6998,
	cmp	lr, r2	@ tmp1180, prephitmp.7000
	ble	.L2573	@,
	b	.L2667	@
.L3006:
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	cmp	fp, #0	@ ret.7289,
	add	sl, sl, r5	@ payloadType, payloadType, byte_tmp.7291
	ble	.L2680	@,
	ldrb	r3, [sp, #39]	@ zero_extendqisi2	@ byte_tmp.7290, byte_tmp
	cmp	r3, #255	@ byte_tmp.7290,
	beq	.L2681	@,
	cmp	r3, #128	@ byte_tmp.7290,
	bne	.L2683	@,
	mov	r0, #0	@ D.39318,
	b	.L2596	@
.L2597:
	movw	sl, #51344	@ tmp514,
	cmp	fp, r5	@ D.39379, payloadSize
	ldr	r3, [r4, sl]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	rsb	sl, ip, r5	@ D.39430, used_byte, payloadSize
	add	r2, r3, #12800	@ tmp512, <variable>.TotalUsrDatNum,
	add	ip, r2, #36	@ tmp512, tmp512,
	add	lr, r4, ip, asl #2	@, tmp519, pH264Ctx, tmp512,
	ldr	r0, [lr, #4]	@ tmp516, <variable>.pUsrDatArray
	str	sl, [r0, #1048]	@ D.39430, <variable>.data_size
	bcc	.L3007	@,
.L2600:
	cmp	sl, #0	@ D.39430,
	ble	.L2598	@,
	ldr	r5, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r0, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	add	r1, r0, #8	@ tmp526, <variable>.BS.TotalPos,
	cmp	r1, r5, asl #3	@ tmp526, <variable>.BS.BsLen,
	bgt	.L2598	@,
	tst	sl, #1	@ D.39430,
	mov	r5, #0	@ i.7157,
	bne	.L2601	@,
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	bl	BsSkip	@
	mov	r5, #1	@ i.7157,
	cmp	sl, r5	@ D.39430, i.7157
	bgt	.L2958	@,
	b	.L2598	@
.L2601:
	add	fp, r5, #1	@ tmp1022, i.7157,
	mov	r1, #8	@,
	mov	r0, r8	@, D.39314
	add	r5, fp, #1	@ i.7157, tmp1022,
	bl	BsSkip	@
	cmp	sl, fp	@ D.39430, tmp1022
	mov	r0, r8	@, D.39314
	mov	r1, #8	@,
	ble	.L2598	@,
	ldr	r2, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	lr, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	ip, r2, #8	@ tmp529, <variable>.BS.TotalPos,
	cmp	ip, lr, asl #3	@ tmp529, <variable>.BS.BsLen,
	bgt	.L2598	@,
	bl	BsSkip	@
.L2958:
	ldr	r3, [r4, r6]	@ <variable>.BS.TotalPos, <variable>.BS.TotalPos
	ldr	r2, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	add	lr, r3, #8	@ tmp1219, <variable>.BS.TotalPos,
	cmp	lr, r2, asl #3	@ tmp1219, <variable>.BS.BsLen,
	ble	.L2601	@,
	b	.L2598	@
.L3001:
	movw	ip, #51348	@ tmp331,
	movw	r3, #52840	@,
	ldr	r1, [r4, ip]	@, <variable>.pUsrDatArray
	movw	sl, #52840	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	str	ip, [sp, #12]	@,
	bl	FreeUsdByDec	@
	movw	r2, #51352	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	ldr	r1, [r4, r2]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	movw	lr, #51356	@,
	ldr	r0, [r4, sl]	@, <variable>.ChanID
	mov	sl, #0	@ prephitmp.6987,
	ldr	r1, [r4, lr]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	movw	r1, #52840	@,
	movw	r3, #51360	@,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r4, r3]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	ip, [sp, #12]	@,
	movw	r2, #51352	@,
	movw	r1, #51356	@,
	movw	r0, #51360	@,
	str	sl, [r4, fp]	@ prephitmp.6987, <variable>.TotalUsrDatNum
	str	sl, [r4, ip]	@ prephitmp.6987, <variable>.pUsrDatArray
	str	sl, [r4, r2]	@ prephitmp.6987, <variable>.pUsrDatArray
	str	sl, [r4, r1]	@ prephitmp.6987, <variable>.pUsrDatArray
	str	sl, [r4, r0]	@ prephitmp.6987, <variable>.pUsrDatArray
	b	.L2583	@
.L3002:
	movw	lr, #51344	@ tmp387,
	strb	r2, [r1, #1064]	@ registered_flag, <variable>.IsRegistered
	ldr	ip, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC22	@,
	add	sl, ip, #12800	@ tmp385, <variable>.TotalUsrDatNum,
	movt	r2, #:upper16:.LC22	@,
	add	r3, sl, #36	@ tmp385, tmp385,
	add	ip, r4, r3, asl #2	@, tmp391, pH264Ctx, tmp385,
	ldr	sl, [ip, #4]	@ D.39376, <variable>.pUsrDatArray
	str	lr, [sp, #12]	@,
	bl	u_v	@
	strb	r0, [sl, #1065]	@, <variable>.itu_t_t35_country_code
	ldr	r1, [sp, #12]	@,
	ldr	sl, [r4, r1]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, sl, #12800	@ tmp395, <variable>.TotalUsrDatNum,
	add	ip, r3, #36	@ tmp395, tmp395,
	add	r2, r4, ip, asl #2	@, tmp401, pH264Ctx, tmp395,
	ldr	r3, [r2, #4]	@ temp.7120, <variable>.pUsrDatArray
	ldrb	r0, [r3, #1065]	@ zero_extendqisi2	@ <variable>.itu_t_t35_country_code, <variable>.itu_t_t35_country_code
	cmp	r0, #255	@ <variable>.itu_t_t35_country_code,
	beq	.L2590	@,
	mov	sl, #3	@ prephitmp.6994,
	mov	r0, #0	@,
	mov	ip, sl	@ used_byte, prephitmp.6994
	strb	r0, [r3, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
.L2591:
	movw	r0, #51344	@,
	mov	r1, #16	@,
	ldr	lr, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	movw	r2, #:lower16:.LC24	@,
	mov	r0, r4	@, pH264Ctx
	movt	r2, #:upper16:.LC24	@,
	add	r3, lr, #12800	@ tmp408, <variable>.TotalUsrDatNum,
	add	lr, r3, #36	@ tmp408, tmp408,
	add	r3, r4, lr, asl #2	@, tmp414, pH264Ctx, tmp408,
	ldr	lr, [r3, #4]	@, <variable>.pUsrDatArray
	str	ip, [sp, #12]	@,
	str	lr, [sp, #28]	@, %sfp
	bl	u_v	@
	ldr	ip, [sp, #28]	@, %sfp
	movw	r3, #1068	@ tmp417,
	mov	r1, sl	@, prephitmp.6994
	strh	r0, [ip, r3]	@ movhi	@, <variable>.itu_t_t35_provider_code
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	ldr	r1, [sp, #24]	@, %sfp
	ldr	ip, [sp, #12]	@,
	cmp	r1, sl	@, prephitmp.6994
	beq	.L2592	@,
	movw	lr, #51344	@,
	ldr	r0, [r4, lr]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r0, #12800	@ tmp418, <variable>.TotalUsrDatNum,
	add	r1, r3, #36	@ tmp418, tmp418,
	add	r2, r4, r1, asl #2	@, tmp424, pH264Ctx, tmp418,
	ldr	r1, [r2, #4]	@ prephitmp.6993, <variable>.pUsrDatArray
	b	.L2593	@
.L3005:
	movw	r5, #51348	@ tmp873,
	ldr	r1, [r4, r5]	@ D.39519, <variable>.pUsrDatArray
	cmp	r1, #0	@ D.39519,
	beq	.L2675	@,
	movw	lr, #52840	@ tmp874,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp877,
	str	r1, [r4, r5]	@ tmp877, <variable>.pUsrDatArray
.L2675:
	movw	r5, #51352	@ tmp878,
	ldr	r1, [r4, r5]	@ temp.7135, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7135,
	beq	.L2676	@,
	movw	r2, #52840	@ tmp879,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp882,
	str	ip, [r4, r5]	@ tmp882, <variable>.pUsrDatArray
.L2676:
	movw	r5, #51356	@ tmp883,
	ldr	r1, [r4, r5]	@ temp.7303, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7303,
	beq	.L2677	@,
	movw	lr, #52840	@ tmp884,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r3, #0	@ tmp887,
	str	r3, [r4, r5]	@ tmp887, <variable>.pUsrDatArray
.L2677:
	movw	r5, #51360	@ tmp888,
	ldr	r1, [r4, r5]	@ temp.7287, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.7287,
	beq	.L2531	@,
	movw	ip, #52840	@ tmp889,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp892,
	str	r0, [r4, r5]	@ tmp892, <variable>.pUsrDatArray
	mvn	r0, #0	@ D.39318,
	b	.L2596	@
.L2916:
	ldr	r0, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	ldr	r3, [r4, r6]	@ prephitmp.6983, <variable>.BS.TotalPos
	mov	r2, r0, asl #3	@ prephitmp.6985, <variable>.BS.BsLen,
	b	.L2667	@
.L3007:
	rsb	r1, fp, r5	@, D.39379, payloadSize
	mov	r0, r4	@, pH264Ctx
	bl	PassBytes	@
	b	.L2600	@
.L2592:
	movw	r0, #51344	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r4, r0]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r1, lr, #12800	@ tmp426, <variable>.TotalUsrDatNum,
	mov	lr, #1056	@ tmp435,
	add	r5, r1, #36	@ tmp426, tmp426,
	ldrd	r0, [r2, #56]	@ <variable>.pts, <variable>.pstExtraData,
	add	r3, r4, r5, asl #2	@, tmp433, pH264Ctx, tmp426,
	ldr	r5, [r3, #4]	@ tmp430, <variable>.pUsrDatArray
	strd	r0, [r5, lr]	@ <variable>.pts, tmp430, tmp435
	movw	r5, #51344	@,
	ldr	r2, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	add	r3, r2, #12800	@ tmp438, <variable>.TotalUsrDatNum,
	add	lr, r3, #36	@ tmp438, tmp438,
	add	r2, r4, lr, asl #2	@, tmp445, pH264Ctx, tmp438,
	mov	lr, #8	@ tmp447,
	ldr	r3, [r2, #4]	@ tmp442, <variable>.pUsrDatArray
	movw	r2, #52800	@ tmp457,
	str	lr, [r3, #1036]	@ tmp447, <variable>.from
	ldr	r3, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	lr, [r4, r2]	@ <variable>.SeqCnt, <variable>.SeqCnt
	add	r3, r3, #12800	@ tmp448, <variable>.TotalUsrDatNum,
	add	r3, r3, #36	@ tmp448, tmp448,
	add	r3, r4, r3, asl #2	@, tmp455, pH264Ctx, tmp448,
	ldr	r3, [r3, #4]	@ tmp452, <variable>.pUsrDatArray
	str	lr, [r3, #1040]	@ <variable>.SeqCnt, <variable>.seq_cnt
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r3, [r2, #0]	@ g_event_report, g_event_report
	cmp	r3, #0	@ g_event_report,
	ldrne	ip, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	bne	.L2995	@,
	b	.L2603	@
.L2590:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC23	@,
	movt	r2, #:upper16:.LC23	@,
	str	r3, [sp, #12]	@,
	bl	u_v	@
	ldr	r2, [sp, #12]	@,
	mov	sl, #4	@ prephitmp.6994,
	mov	ip, sl	@ used_byte, prephitmp.6994
	strb	r0, [r2, #1066]	@, <variable>.itu_t_t35_country_code_extension_byte
	b	.L2591	@
.L2998:
	ldr	r1, [r4, r7]	@ <variable>.BS.BsLen, <variable>.BS.BsLen
	mov	r2, r1, asl #3	@ prephitmp.6985, <variable>.BS.BsLen,
	b	.L2667	@
.L3003:
	movw	r5, #51344	@ tmp482,
	movw	ip, #52840	@ tmp478,
	ldr	r3, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	add	r1, r3, #12800	@ tmp479, <variable>.TotalUsrDatNum,
	add	r2, r1, #36	@ tmp479, tmp479,
	add	lr, r4, r2, asl #2	@, tmp485, pH264Ctx, tmp479,
	ldr	r1, [lr, #4]	@, <variable>.pUsrDatArray
	bl	FreeUsdByDec	@
	ldr	ip, [r4, r5]	@ <variable>.TotalUsrDatNum, <variable>.TotalUsrDatNum
	mvn	r0, #0	@ D.39318,
	add	r3, ip, #12800	@ tmp487, <variable>.TotalUsrDatNum,
	mov	ip, #0	@ tmp495,
	add	r1, r3, #36	@ tmp487, tmp487,
	add	r2, r4, r1, asl #2	@, tmp493, pH264Ctx, tmp487,
	str	ip, [r2, #4]	@ tmp495, <variable>.pUsrDatArray
	b	.L2596	@
	.fnend
	.size	H264_DecSEI, .-H264_DecSEI
	.align	2
	.global	vui_parameters
	.type	vui_parameters, %function
vui_parameters:
	.fnstart
.LFB1705:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r1	@ pVUI, pVUI
	movw	r1, #:lower16:.LC25	@,
	movt	r1, #:upper16:.LC25	@,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.38197,
	strb	r0, [r4, #0]	@ D.38197, <variable>.aspect_ratio_info_present_flag
	cmp	r0, #0	@ D.38197,
	streqb	r0, [r4, #15]	@ D.38197, <variable>.aspect_ratio_idc
	bne	.L3029	@,
.L3010:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC29	@,
	movt	r1, #:upper16:.LC29	@,
	bl	u_1	@
	uxtb	r2, r0	@ D.38212,
	strb	r2, [r4, #1]	@ D.38212, <variable>.overscan_info_present_flag
	cmp	r2, #0	@ D.38212,
	bne	.L3030	@,
.L3011:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.38219,
	strb	r3, [r4, #3]	@ D.38219, <variable>.video_signal_type_present_flag
	cmp	r3, #0	@ D.38219,
	moveq	r3, #5	@ tmp229,
	streq	r3, [r4, #28]	@ tmp229, <variable>.video_format
	bne	.L3031	@,
.L3013:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38240,
	strb	r0, [r4, #6]	@ D.38240, <variable>.chroma_location_info_present_flag
	cmp	r0, #0	@ D.38240,
	bne	.L3032	@,
.L3014:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	bl	u_1	@
	uxtb	r1, r0	@ D.38247,
	strb	r1, [r4, #8]	@ D.38247, <variable>.timing_info_present_flag
	cmp	r1, #0	@ D.38247,
	bne	.L3033	@,
.L3015:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC45	@,
	movt	r1, #:upper16:.LC45	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38267,
	strb	r0, [r4, #7]	@ D.38267, <variable>.nal_hrd_parameters_present_flag
	cmp	r0, #0	@ D.38267,
	bne	.L3034	@,
.L3016:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	u_1	@
	uxtb	ip, r0	@ D.38296,
	strb	ip, [r4, #10]	@ D.38296, <variable>.vcl_hrd_parameters_present_flag
	cmp	ip, #0	@ D.38296,
	bne	.L3035	@,
.L3019:
	ldrb	lr, [r4, #7]	@ zero_extendqisi2	@ <variable>.nal_hrd_parameters_present_flag, <variable>.nal_hrd_parameters_present_flag
	cmp	lr, #0	@ <variable>.nal_hrd_parameters_present_flag,
	bne	.L3021	@,
	ldrb	r2, [r4, #10]	@ zero_extendqisi2	@ <variable>.vcl_hrd_parameters_present_flag, <variable>.vcl_hrd_parameters_present_flag
	cmp	r2, #0	@ <variable>.vcl_hrd_parameters_present_flag,
	bne	.L3021	@,
.L3022:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC58	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC59	@,
	strb	r0, [r4, #11]	@, <variable>.pic_struct_present_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.38330,
	strb	ip, [r4, #12]	@ D.38330, <variable>.bitstream_restriction_flag
	cmp	ip, #0	@ D.38330,
	bne	.L3036	@,
	movw	lr, #52780	@ tmp302,
	ldr	r1, [r5, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3017	@,
.L3024:
	mov	r0, #0	@ D.38281,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3021:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC57	@,
	movt	r1, #:upper16:.LC57	@,
	bl	u_1	@
	strb	r0, [r4, #14]	@, <variable>.low_delay_hrd_flag
	b	.L3022	@
.L3036:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC60	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC61	@,
	strb	r0, [r4, #13]	@, <variable>.motion_vectors_over_pic_boundaries_flag
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC62	@,
	str	r0, [r4, #684]	@, <variable>.max_bytes_per_pic_denom
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC63	@,
	str	r0, [r4, #688]	@, <variable>.max_bits_per_mb_denom
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC64	@,
	str	r0, [r4, #696]	@, <variable>.log2_max_mv_length_horizontal
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC65	@,
	movt	r1, #:upper16:.LC65	@,
	str	r0, [r4, #692]	@, <variable>.log2_max_mv_length_vertical
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC66	@,
	movt	r1, #:upper16:.LC66	@,
	str	r0, [r4, #700]	@, <variable>.num_reorder_frames
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #704]	@, <variable>.max_dec_frame_buffering
	movw	r0, #52780	@ tmp300,
	ldr	r3, [r5, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3024	@,
.L3017:
	mvn	r0, #0	@ D.38281,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3033:
	mov	r1, #32	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC42	@,
	movt	r2, #:upper16:.LC42	@,
	bl	u_v	@
	mov	r1, #32	@,
	movw	r2, #:lower16:.LC43	@,
	movt	r2, #:upper16:.LC43	@,
	str	r0, [r4, #52]	@, <variable>.num_units_in_tick
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC44	@,
	str	r0, [r4, #56]	@, <variable>.time_scale
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	r2, r0	@ D.38256,
	strb	r2, [r4, #9]	@ D.38256, <variable>.fixed_frame_rate_flag
	cmp	r2, #1	@ D.38256,
	bne	.L3015	@,
	ldr	r1, [r4, #52]	@ D.38260, <variable>.num_units_in_tick
	cmp	r1, #0	@ D.38260,
	beq	.L3015	@,
	ldr	r0, [r4, #56]	@, <variable>.time_scale
	bl	__aeabi_uidiv	@
	movw	r3, #51340	@ tmp240,
	mov	ip, r0, lsr #1	@ tmp245,,
	str	ip, [r5, r3]	@ tmp245, <variable>.frame_rate
	b	.L3015	@
.L3032:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC39	@,
	movt	r1, #:upper16:.LC39	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC40	@,
	movt	r1, #:upper16:.LC40	@,
	str	r0, [r4, #44]	@, <variable>.chroma_sample_loc_type_top_field
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	str	r0, [r4, #48]	@, <variable>.chroma_sample_loc_type_bottom_field
	b	.L3014	@
.L3031:
	mov	r1, #3	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC32	@,
	movt	r2, #:upper16:.LC32	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC33	@,
	movt	r1, #:upper16:.LC33	@,
	str	r0, [r4, #28]	@, <variable>.video_format
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	strb	r0, [r4, #4]	@, <variable>.video_full_range_flag
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	uxtb	ip, r0	@ D.38228,
	strb	ip, [r4, #5]	@ D.38228, <variable>.colour_description_present_flag
	cmp	ip, #0	@ D.38228,
	beq	.L3013	@,
	mov	r1, #8	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC35	@,
	movt	r2, #:upper16:.LC35	@,
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC36	@,
	movt	r2, #:upper16:.LC36	@,
	str	r0, [r4, #32]	@, <variable>.colour_primaries
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	movw	r2, #:lower16:.LC37	@,
	movt	r2, #:upper16:.LC37	@,
	str	r0, [r4, #36]	@, <variable>.transfer_characteristics
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r4, #40]	@, <variable>.matrix_coefficients
	b	.L3013	@
.L3030:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	u_1	@
	strb	r0, [r4, #2]	@, <variable>.overscan_appropriate_flag
	b	.L3011	@
.L3029:
	mov	r1, #8	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC26	@,
	movt	r2, #:upper16:.LC26	@,
	bl	u_v	@
	uxtb	r1, r0	@ D.38202,
	strb	r1, [r4, #15]	@ D.38202, <variable>.aspect_ratio_idc
	cmp	r1, #255	@ D.38202,
	bne	.L3010	@,
	mov	r1, #16	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC27	@,
	movt	r2, #:upper16:.LC27	@,
	bl	u_v	@
	mov	r1, #16	@,
	movw	r2, #:lower16:.LC28	@,
	movt	r2, #:upper16:.LC28	@,
	str	r0, [r4, #16]	@, <variable>.sar_width
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r4, #20]	@, <variable>.sar_height
	b	.L3010	@
.L3034:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	str	r0, [r4, #96]	@, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	strb	r0, [r4, #92]	@, <variable>.nal_hrd_parameters.bit_rate_scale
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r1, [r4, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	cmp	r1, #31	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r4, #93]	@, <variable>.nal_hrd_parameters.cpb_size_scale
	bhi	.L3017	@,
	movw	lr, #52780	@ tmp254,
	ldr	r8, [r5, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	bne	.L3017	@,
	mov	r6, r4	@ ivtmp.7425, pVUI
	mov	r7, r4	@ ivtmp.7415, pVUI
.L3018:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	str	r0, [r6, #100]	@, <variable>.nal_hrd_parameters.bit_rate_value_minus1
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	str	r0, [r6, #228]	@, <variable>.nal_hrd_parameters.cpb_size_value_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r2, [r4, #96]	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, <variable>.nal_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7425, ivtmp.7425,
	cmp	r2, r8	@ <variable>.nal_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #60]	@, <variable>.nal_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7415, ivtmp.7415,
	bcs	.L3018	@,
	mov	r1, #5	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	str	r0, [r4, #356]	@, <variable>.nal_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	str	r0, [r4, #360]	@, <variable>.nal_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	str	r0, [r4, #364]	@, <variable>.nal_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r4, #368]	@, <variable>.nal_hrd_parameters.time_offset_length
	b	.L3016	@
.L3035:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC46	@,
	movt	r1, #:upper16:.LC46	@,
	bl	ue_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC47	@,
	movt	r2, #:upper16:.LC47	@,
	str	r0, [r4, #408]	@, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC48	@,
	movt	r2, #:upper16:.LC48	@,
	strb	r0, [r4, #404]	@, <variable>.vcl_hrd_parameters.bit_rate_scale
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	ldr	r3, [r4, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	cmp	r3, #31	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1,
	strb	r0, [r4, #405]	@, <variable>.vcl_hrd_parameters.cpb_size_scale
	bhi	.L3017	@,
	movw	r0, #52780	@ tmp273,
	ldr	r8, [r5, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r8, #0	@ <variable>.SeErrFlg,
	bne	.L3017	@,
	mov	r6, r4	@ ivtmp.7407, pVUI
	mov	r7, r4	@ ivtmp.7420, pVUI
.L3020:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	add	r8, r8, #1	@ SchedSelIdx, SchedSelIdx,
	bl	ue_v	@
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	str	r0, [r6, #412]	@, <variable>.vcl_hrd_parameters.bit_rate_value_minus1
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	str	r0, [r6, #540]	@, <variable>.vcl_hrd_parameters.cpb_size_value_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r4, #408]	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, <variable>.vcl_hrd_parameters.cpb_cnt_minus1
	add	r6, r6, #4	@ ivtmp.7407, ivtmp.7407,
	cmp	r1, r8	@ <variable>.vcl_hrd_parameters.cpb_cnt_minus1, SchedSelIdx
	strb	r0, [r7, #372]	@, <variable>.vcl_hrd_parameters.cbr_flag
	add	r7, r7, #1	@ ivtmp.7420, ivtmp.7420,
	bcs	.L3020	@,
	mov	r1, #5	@,
	mov	r0, r5	@, pH264Ctx
	movw	r2, #:lower16:.LC52	@,
	movt	r2, #:upper16:.LC52	@,
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC53	@,
	movt	r2, #:upper16:.LC53	@,
	str	r0, [r4, #668]	@, <variable>.vcl_hrd_parameters.initial_cpb_removal_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC54	@,
	movt	r2, #:upper16:.LC54	@,
	str	r0, [r4, #672]	@, <variable>.vcl_hrd_parameters.cpb_removal_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	mov	r1, #5	@,
	movw	r2, #:lower16:.LC55	@,
	movt	r2, #:upper16:.LC55	@,
	str	r0, [r4, #676]	@, <variable>.vcl_hrd_parameters.dpb_output_delay_length_minus1
	mov	r0, r5	@, pH264Ctx
	bl	u_v	@
	str	r0, [r4, #680]	@, <variable>.vcl_hrd_parameters.time_offset_length
	b	.L3019	@
	.fnend
	.size	vui_parameters, .-vui_parameters
	.align	2
	.global	ProcessSPS
	.type	ProcessSPS, %function
ProcessSPS:
	.fnstart
.LFB1708:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r4, r1, #0	@ pSPS, pSPS
	.pad #52
	sub	sp, sp, #52	@,,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	beq	.L3038	@,
	ldr	r3, [r4, #736]	@ D.38611, <variable>.profile_idc
	cmp	r3, #100	@ D.38611,
	cmpne	r3, #110	@, D.38611,
	movne	r2, #0	@, tmp222
	moveq	r2, #1	@, tmp222
	beq	.L3039	@,
	cmp	r3, #122	@ D.38611,
	beq	.L3039	@,
	cmp	r3, #144	@ D.38611,
	strneb	r2, [r4, #25]	@ tmp222, <variable>.seq_scaling_matrix_present_flag
	movne	r3, #1	@ tmp281,
	strne	r3, [r4, #748]	@ tmp281, <variable>.chroma_format_idc
	beq	.L3039	@,
.L3041:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC73	@,
	movt	r1, #:upper16:.LC73	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.38710,
	str	r0, [r4, #2904]	@ D.38710, <variable>.log2_max_frame_num_minus4
	bls	.L3096	@,
.L3038:
	mvn	r0, #0	@ D.38607,
.L3087:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3039:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC67	@,
	movt	r1, #:upper16:.LC67	@,
	bl	ue_v	@
	cmp	r0, #1	@ D.38618,
	str	r0, [r4, #748]	@ D.38618, <variable>.chroma_format_idc
	bhi	.L3038	@,
	movw	r6, #52780	@ tmp224,
	ldr	r3, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC68	@,
	movt	r1, #:upper16:.LC68	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC69	@,
	movt	r1, #:upper16:.LC69	@,
	str	r0, [r4, #752]	@, <variable>.bit_depth_luma_minus8
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	str	r0, [r4, #756]	@, <variable>.bit_depth_chroma_minus8
	mov	r0, r5	@, pH264Ctx
	bl	u_1	@
	cmp	r0, #0	@,
	bne	.L3038	@,
	ldr	r6, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r6, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC71	@,
	movt	r1, #:upper16:.LC71	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38641,
	strb	r0, [r4, #25]	@ D.38641, <variable>.seq_scaling_matrix_present_flag
	cmp	r0, #1	@ D.38641,
	bne	.L3041	@,
	add	r8, r4, #2672	@ ivtmp.7502, pSPS,
	add	r7, sp, #8	@ ivtmp.7497,,
	add	r8, r8, #8	@ ivtmp.7502, ivtmp.7502,
	add	fp, r4, #760	@ ivtmp.7507, pSPS,
	mov	sl, r8	@ ivtmp.7551, ivtmp.7502
	mov	r9, r8	@ ivtmp.7514, ivtmp.7502
.L3049:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	add	r1, r4, r6	@ tmp235, pSPS, i.7511
	mov	r2, #16	@,
	str	r0, [r7, #0]	@ D.38646, q4x4defaultflag
	mov	ip, r0	@ D.38646,
	strb	ip, [r1, #4]	@ D.38646, <variable>.seq_scaling_list_present_flag
	mov	r0, r8	@, ivtmp.7502
	ldr	r3, [r7, #0]	@ tmp237, q4x4defaultflag
	cmp	r3, #1	@ tmp237,
	beq	.L3097	@,
	rsbs	r1, r6, #1	@ D.38669, i.7511
	movcc	r1, #0	@ D.38669
	cmp	r6, #0	@ i.7511,
	cmpne	r6, #3	@, i.7511,
	bne	.L3046	@,
	ldr	r3, .L3106	@,
	cmp	r1, #0	@ D.38669,
	ldr	ip, .L3106+4	@,
	movne	ip, r3	@,
	mov	r1, ip	@,
	bl	memcpy	@
.L3043:
	add	r6, r6, #1	@ i.7511, i.7511,
	add	r7, r7, #4	@ ivtmp.7497, ivtmp.7497,
	cmp	r6, #6	@ i.7511,
	add	r9, r9, #16	@ ivtmp.7514, ivtmp.7514,
	add	r8, r8, #16	@ ivtmp.7502, ivtmp.7502,
	add	sl, sl, #16	@ ivtmp.7551, ivtmp.7551,
	add	fp, fp, #64	@ ivtmp.7507, ivtmp.7507,
	bne	.L3049	@,
	add	r6, r4, #2768	@ ivtmp.7487, pSPS,
	add	r7, r4, #1136	@ ivtmp.7490, pSPS,
	add	r6, r6, #8	@ ivtmp.7487, ivtmp.7487,
	add	r8, r7, #8	@ ivtmp.7490, ivtmp.7490,
	add	r7, sp, #40	@ ivtmp.7482,,
	mov	r9, r4	@ ivtmp.7486, pSPS
	mov	fp, r6	@ ivtmp.7549, ivtmp.7487
	mov	sl, #0	@ i.7516,
.L3056:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	mov	r2, #64	@,
	mov	r1, r0	@ D.38682,
	str	r1, [r7, #0]	@ D.38682, q8x8defaultflag
	strb	r1, [r9, #10]	@ D.38682, <variable>.seq_scaling_list_present_flag
	mov	r0, fp	@, ivtmp.7549
	ldr	r3, [r7, #0]	@ tmp267, q8x8defaultflag
	cmp	r3, #1	@ tmp267,
	beq	.L3098	@,
	ldr	lr, .L3106+8	@,
	cmp	sl, #0	@ i.7516,
	ldr	r1, .L3106+12	@,
	movne	r1, lr	@,
	bl	memcpy	@
.L3051:
	add	sl, sl, #1	@ i.7516, i.7516,
	add	r7, r7, #4	@ ivtmp.7482, ivtmp.7482,
	cmp	sl, #2	@ i.7516,
	add	r9, r9, #1	@ ivtmp.7486, ivtmp.7486,
	add	r6, r6, #64	@ ivtmp.7487, ivtmp.7487,
	add	fp, fp, #64	@ ivtmp.7549, ivtmp.7549,
	add	r8, r8, #256	@ ivtmp.7490, ivtmp.7490,
	bne	.L3056	@,
	b	.L3041	@
.L3096:
	movw	r6, #52780	@ tmp285,
	ldr	ip, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.38715,
	str	r0, [r4, #2908]	@ D.38715, <variable>.pic_order_cnt_type
	bhi	.L3038	@,
	ldr	r3, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	cmp	r0, #0	@ D.38715,
	beq	.L3099	@,
	cmp	r0, #1	@ D.38715,
	beq	.L3100	@,
.L3058:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC81	@,
	movt	r1, #:upper16:.LC81	@,
	movw	r6, #52780	@ tmp312,
	bl	ue_v	@
	str	r0, [r4, #3952]	@, <variable>.num_ref_frames
	ldr	r0, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC82	@,
	movt	r1, #:upper16:.LC82	@,
	bl	u_1	@
	strb	r0, [r4, #17]	@, <variable>.gaps_in_frame_num_value_allowed_flag
	ldr	r2, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC83	@,
	movt	r1, #:upper16:.LC83	@,
	movw	r7, #509	@ tmp320,
	bl	ue_v	@
	sub	ip, r0, #1	@ tmp319, D.38757,
	str	r0, [r4, #3956]	@ D.38757, <variable>.pic_width_in_mbs_minus1
	cmp	ip, r7	@ tmp319, tmp320
	bhi	.L3038	@,
	ldr	r3, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC84	@,
	movt	r1, #:upper16:.LC84	@,
	bl	ue_v	@
	str	r0, [r4, #3960]	@, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC85	@,
	movt	r1, #:upper16:.LC85	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38767,
	strb	r0, [r4, #18]	@ D.38767, <variable>.frame_mbs_only_flag
	ldr	r2, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	cmp	r0, #0	@ D.38767,
	bne	.L3061	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC86	@,
	movt	r1, #:upper16:.LC86	@,
	bl	u_1	@
	ldr	r2, [r4, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r3, r2, #1	@ prephitmp.7448, <variable>.pic_height_in_map_units_minus1,
	cmp	r3, #255	@ prephitmp.7448,
	strb	r0, [r4, #19]	@, <variable>.mb_adaptive_frame_field_flag
	bhi	.L3038	@,
	ldr	r8, [r4, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	add	r8, r8, #1	@ prephitmp.7531, <variable>.pic_width_in_mbs_minus1,
	cmp	r8, #3	@ prephitmp.7531,
	bls	.L3038	@,
	cmp	r3, #1	@ prephitmp.7448,
	bls	.L3038	@,
	mov	sl, #2	@ temp,
.L3089:
	mul	r3, sl, r3	@ tmp334, temp, prephitmp.7448
	mov	r8, r8, asl #4	@ PicWidthInSmp, prephitmp.7531,
	mov	lr, #3	@ tmp337,
	mov	r6, r3, asl #4	@ PicHeightInSmp, tmp334,
	mul	ip, r8, r6	@ tmp335, PicWidthInSmp, PicHeightInSmp
	mov	r0, ip, lsr #1	@ tmp336, tmp335,
	mul	r1, lr, r0	@ pic_size, tmp337, tmp336
	cmp	r1, #100663296	@ pic_size,
	bhi	.L3038	@,
	ldr	lr, [r4, #740]	@ <variable>.level_idc, <variable>.level_idc
	sub	r2, lr, #10	@ tmp339, <variable>.level_idc,
	cmp	r2, #31	@ tmp339,
	ldrls	pc, [pc, r2, asl #2]	@ tmp339
	b	.L3038	@
.L3070:
	.word	.L3062
	.word	.L3063
	.word	.L3064
	.word	.L3064
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3064
	.word	.L3065
	.word	.L3066
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3066
	.word	.L3067
	.word	.L3068
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3038
	.word	.L3069
	.word	.L3069
.L3068:
	mov	r0, #7864320	@ size,
.L3071:
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3952]	@ D.38803, <variable>.num_ref_frames
	cmp	r0, #16	@,
	movcc	r7, r0	@ size.7509,
	movcs	r7, #16	@ size.7509,
	cmp	r3, r7	@ D.38803, size.7509
	bhi	.L3072	@,
	movw	r1, #52780	@ tmp343,
	ldr	r9, [r5, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r9, #0	@ <variable>.SeErrFlg,
	beq	.L3074	@,
.L3073:
	cmp	r7, r3	@ size.7509, D.38803
	movcc	r7, r3	@ size.7509, D.38803
.L3093:
	str	r7, [r4, #3952]	@ size.7509, <variable>.num_ref_frames
.L3074:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC87	@,
	movt	r1, #:upper16:.LC87	@,
	movw	r9, #52780	@ tmp347,
	bl	u_1	@
	strb	r0, [r4, #20]	@, <variable>.direct_8x8_inference_flag
	ldr	r0, [r5, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC88	@,
	movt	r1, #:upper16:.LC88	@,
	bl	u_1	@
	uxtb	r0, r0	@ D.38813,
	strb	r0, [r4, #21]	@ D.38813, <variable>.frame_cropping_flag
	ldr	ip, [r5, r9]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	cmp	r0, #0	@ D.38813,
	bne	.L3101	@,
.L3075:
	mov	r3, r8, lsr #1	@ tmp379, PicWidthInSmp,
	mov	r0, r6, lsr #1	@ tmp380, PicHeightInSmp,
	str	r8, [r4, #3984]	@ PicWidthInSmp, <variable>.disp_width
	str	r3, [r4, #3992]	@ tmp379, <variable>.disp_center_x
	str	r0, [r4, #3996]	@ tmp380, <variable>.disp_center_y
	str	r6, [r4, #3988]	@ PicHeightInSmp, <variable>.disp_height
.L3077:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC93	@,
	movt	r1, #:upper16:.LC93	@,
	bl	u_1	@
	movw	r2, #52780	@ tmp383,
	uxtb	r3, r0	@ D.38851,
	strb	r3, [r4, #22]	@ D.38851, <variable>.vui_parameters_present_flag
	ldr	r2, [r5, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	cmp	r3, #0	@ D.38851,
	add	sl, r2, #2	@ tmp385, tmp385,
	str	sl, [r4, #68]	@ tmp385, <variable>.vui_seq_parameters.matrix_coefficients
	bne	.L3102	@,
	ldr	sl, [r4, #3952]	@ temp.7545, <variable>.num_ref_frames
	mov	r0, r3	@ prephitmp.7452, D.38851
	mov	ip, #5	@ tmp391,
	strb	r3, [r4, #43]	@ D.38851, <variable>.vui_seq_parameters.aspect_ratio_idc
	str	ip, [r4, #56]	@ tmp391, <variable>.vui_seq_parameters.video_format
.L3080:
	str	r6, [sp, #0]	@ PicHeightInSmp,
	mov	r3, r8	@, PicWidthInSmp
	ldr	r1, [r4, #44]	@, <variable>.vui_seq_parameters.sar_width
	ldr	r2, [r4, #48]	@, <variable>.vui_seq_parameters.sar_height
	bl	H264GetDar	@
	cmp	sl, #0	@ temp.7545,
	str	r0, [r4, #52]	@, <variable>.vui_seq_parameters.aspect_ratio
	beq	.L3084	@,
	cmp	r7, sl	@ size.7509, temp.7545
	movcs	r7, sl	@ size.7509, temp.7545
.L3084:
	ldr	r1, [r5, #0]	@ D.38883, <variable>.pstExtraData
	cmp	r7, #16	@ size.7509,
	movcs	r7, #16	@ size.7510,
	ldr	lr, [r1, #32]	@ <variable>.eCapLevel, <variable>.eCapLevel
	cmp	lr, #25	@ <variable>.eCapLevel,
	beq	.L3103	@,
.L3085:
	cmp	r6, #1920	@ PicHeightInSmp,
	bcc	.L3088	@,
	cmp	r7, #6	@ size.7510,
	movcs	r7, #6	@ size.7510,
.L3088:
	add	r7, r7, #1	@ tmp411, size.7510,
	mov	r0, #0	@ D.38607,
	str	r7, [r4, #3980]	@ tmp411, <variable>.dpb_size_plus1
	b	.L3087	@
.L3103:
	ldr	r0, [r1, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r0, #0	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3085	@,
	ldr	r3, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r2, [r1, #568]	@ MaxWidth, <variable>.stChanOption.s32MaxWidth
	cmp	r7, r3	@ size.7510, <variable>.stChanOption.s32MaxRefFrameNum
	ldr	r0, [r1, #572]	@ MaxHeight, <variable>.stChanOption.s32MaxHeight
	bhi	.L3104	@,
	cmp	r2, r8	@ MaxWidth, PicWidthInSmp
	cmpcs	r0, r6	@, MaxHeight, PicHeightInSmp
	bcs	.L3085	@,
	movw	r1, #:lower16:g_event_report	@ tmp407,
	movt	r1, #:upper16:g_event_report	@ tmp407,
	ldr	r3, [r1, #0]	@ g_event_report.7547, g_event_report
	cmp	r3, #0	@ g_event_report.7547,
	beq	.L3038	@,
	strh	r0, [sp, #38]	@ movhi	@ MaxHeight, para
	movw	r0, #52840	@ tmp408,
	strh	r2, [sp, #36]	@ movhi	@ MaxWidth, para
	mov	r1, #107	@,
	strh	r8, [sp, #32]	@ movhi	@ PicWidthInSmp, para
	add	r2, sp, #32	@,,
	strh	r6, [sp, #34]	@ movhi	@ PicHeightInSmp, para
	ldr	r0, [r5, r0]	@, <variable>.ChanID
	blx	r3	@ g_event_report.7547
	mvn	r0, #0	@ D.38607,
	b	.L3087	@
.L3102:
	mov	r0, r5	@, pH264Ctx
	add	r1, r4, #28	@, pSPS,
	bl	vui_parameters	@
	cmp	r0, #0	@,
	bne	.L3095	@,
	ldrb	r1, [r4, #40]	@ zero_extendqisi2	@ <variable>.vui_seq_parameters.bitstream_restriction_flag, <variable>.vui_seq_parameters.bitstream_restriction_flag
	cmp	r1, #0	@ <variable>.vui_seq_parameters.bitstream_restriction_flag,
	beq	.L3095	@,
	ldr	r3, [r4, #732]	@ D.38864, <variable>.vui_seq_parameters.max_dec_frame_buffering
	cmp	r7, r3	@ size.7509, D.38864
	bcc	.L3095	@,
	cmp	r3, #0	@ D.38864,
	bne	.L3083	@,
.L3095:
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ prephitmp.7452, <variable>.vui_seq_parameters.aspect_ratio_idc
	ldr	sl, [r4, #3952]	@ temp.7545, <variable>.num_ref_frames
	b	.L3080	@
.L3083:
	ldr	sl, [r4, #3952]	@ temp.7545, <variable>.num_ref_frames
	ldrb	r0, [r4, #43]	@ zero_extendqisi2	@ prephitmp.7452, <variable>.vui_seq_parameters.aspect_ratio_idc
	cmp	r3, sl	@ D.38864, temp.7545
	movcs	r7, r3	@ size.7509, D.38864
	movcc	r7, sl	@ size.7509, temp.7545
	b	.L3080	@
.L3069:
	mov	r0, #12582912	@ size,
	b	.L3071	@
.L3067:
	movw	r0, #:lower16:6912000	@ size,
	movt	r0, #:upper16:6912000	@ size,
	b	.L3071	@
.L3064:
	movw	r0, #:lower16:912384	@ size,
	movt	r0, #:upper16:912384	@ size,
	b	.L3071	@
.L3063:
	movw	r0, #:lower16:345600	@ size,
	movt	r0, #:upper16:345600	@ size,
	b	.L3071	@
.L3062:
	movw	r0, #:lower16:152064	@ size,
	movt	r0, #:upper16:152064	@ size,
	b	.L3071	@
.L3061:
	ldr	r3, [r4, #3960]	@ temp.7532, <variable>.pic_height_in_map_units_minus1
	strb	r2, [r4, #19]	@ <variable>.SeErrFlg, <variable>.mb_adaptive_frame_field_flag
	sub	r2, r3, #1	@ tmp415, temp.7532,
	cmp	r2, r7	@ tmp415, tmp320
	bhi	.L3038	@,
	ldr	r6, [r4, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	mov	sl, #1	@ temp,
	add	r3, r3, #1	@ prephitmp.7448, temp.7532,
	add	r8, r6, sl	@ prephitmp.7531, <variable>.pic_width_in_mbs_minus1,
	b	.L3089	@
.L3100:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC76	@,
	movt	r1, #:upper16:.LC76	@,
	bl	u_1	@
	strb	r0, [r4, #16]	@, <variable>.delta_pic_order_always_zero_flag
	ldr	r0, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC77	@,
	movt	r1, #:upper16:.LC77	@,
	bl	se_v	@
	str	r0, [r4, #2916]	@, <variable>.offset_for_non_ref_pic
	ldr	r2, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	se_v	@
	str	r0, [r4, #2920]	@, <variable>.offset_for_top_to_bottom_field
	ldr	ip, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC79	@,
	movt	r1, #:upper16:.LC79	@,
	bl	ue_v	@
	cmp	r0, #255	@ prephitmp.7454,
	mov	r3, r0	@ prephitmp.7454,
	str	r0, [r4, #2924]	@ prephitmp.7454, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	bhi	.L3038	@,
	movw	r8, #52780	@ tmp304,
	ldr	r6, [r5, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r6, #0	@ <variable>.SeErrFlg,
	addeq	r7, r4, #2928	@ ivtmp.7471, pSPS,
	bne	.L3038	@,
.L3059:
	cmp	r6, r3	@ i, prephitmp.7454
	movw	r1, #:lower16:.LC80	@,
	mov	r0, r5	@, pH264Ctx
	movt	r1, #:upper16:.LC80	@,
	add	r6, r6, #1	@ i, i,
	bcs	.L3105	@,
	bl	se_v	@
	str	r0, [r7], #4	@, <variable>.offset_for_ref_frame
	ldr	r3, [r5, r8]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	ldr	r3, [r4, #2924]	@ prephitmp.7454, <variable>.num_ref_frames_in_pic_order_cnt_cycle
	b	.L3059	@
.L3099:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC75	@,
	movt	r1, #:upper16:.LC75	@,
	bl	ue_v	@
	cmp	r0, #12	@ D.38722,
	str	r0, [r4, #2912]	@ D.38722, <variable>.log2_max_pic_order_cnt_lsb_minus4
	bhi	.L3038	@,
	ldr	r1, [r5, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	b	.L3058	@
.L3105:
	movw	r1, #52780	@ tmp309,
	ldr	lr, [r5, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3038	@,
	b	.L3058	@
.L3046:
	mov	r0, sl	@, ivtmp.7551
	sub	r1, sl, #16	@, ivtmp.7551,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3043	@
.L3097:
	mov	r2, r9	@, ivtmp.7514
	mov	r1, fp	@, ivtmp.7507
	mov	r0, r5	@, pH264Ctx
	add	r3, r3, #15	@,,
	str	r7, [sp, #0]	@ ivtmp.7497,
	bl	Scaling_List	@
	ldr	r2, [r7, #0]	@ tmp238, q4x4defaultflag
	cmp	r2, #1	@ tmp238,
	bne	.L3043	@,
	ldr	lr, .L3106+4	@,
	cmp	r6, #2	@ i.7511,
	ldr	r1, .L3106	@,
	mov	r0, r9	@, ivtmp.7514
	mov	r2, #16	@,
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3043	@
.L3066:
	movw	r0, #:lower16:3110400	@ size,
	movt	r0, #:upper16:3110400	@ size,
	b	.L3071	@
.L3065:
	movw	r0, #:lower16:1824768	@ size,
	movt	r0, #:upper16:1824768	@ size,
	b	.L3071	@
.L3072:
	cmp	r3, #16	@ D.38803,
	bls	.L3073	@,
	b	.L3093	@
.L3101:
	mov	r0, r5	@, pH264Ctx
	movw	r1, #:lower16:.LC89	@,
	movt	r1, #:upper16:.LC89	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC90	@,
	movt	r1, #:upper16:.LC90	@,
	str	r0, [r4, #3964]	@, <variable>.frame_crop_left_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC91	@,
	str	r0, [r4, #3968]	@, <variable>.frame_crop_right_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	str	r0, [r4, #3972]	@, <variable>.frame_crop_top_offset
	mov	r0, r5	@, pH264Ctx
	bl	ue_v	@
	ldr	ip, [r4, #3972]	@ <variable>.frame_crop_top_offset, <variable>.frame_crop_top_offset
	ldr	r1, [r4, #3964]	@ <variable>.frame_crop_left_offset, <variable>.frame_crop_left_offset
	mov	r3, sl, asl #1	@ tmp364, temp,
	ldr	r2, [r4, #3968]	@ <variable>.frame_crop_right_offset, <variable>.frame_crop_right_offset
	mov	ip, ip, asl #1	@ tmp361, <variable>.frame_crop_top_offset,
	mov	r1, r1, asl #1	@ D.38823, <variable>.frame_crop_left_offset,
	mul	sl, sl, ip	@ D.38828, temp, tmp361
	rsb	ip, r1, r8	@ tmp358, D.38823, PicWidthInSmp
	sub	r2, ip, r2, asl #1	@ D.38826, tmp358, <variable>.frame_crop_right_offset,
	rsb	ip, sl, r6	@ tmp363, D.38828, PicHeightInSmp
	mls	r3, r0, r3, ip	@ D.38832, D.38822, tmp364, tmp363
	str	r0, [r4, #3976]	@ D.38822, <variable>.frame_crop_bottom_offset
	cmp	r2, #0	@ D.38826,
	cmpgt	r3, #0	@, D.38832,
	ble	.L3075	@,
	add	lr, r1, r2, lsr #1	@, tmp376, D.38823, D.38826,
	add	sl, sl, r3, lsr #1	@, tmp378, D.38828, D.38832,
	str	lr, [r4, #3992]	@ tmp376, <variable>.disp_center_x
	str	sl, [r4, #3996]	@ tmp378, <variable>.disp_center_y
	str	r2, [r4, #3984]	@ D.38826, <variable>.disp_width
	str	r3, [r4, #3988]	@ D.38832, <variable>.disp_height
	b	.L3077	@
.L3104:
	movw	r2, #:lower16:g_event_report	@ tmp395,
	movt	r2, #:upper16:g_event_report	@ tmp395,
	ldr	r3, [r2, #0]	@ g_event_report.741, g_event_report
	cmp	r3, #0	@ g_event_report.741,
	beq	.L3038	@,
	str	r7, [sp, #32]	@ size.7510, para
	movw	lr, #52840	@ tmp398,
	ldr	ip, [r1, #588]	@ <variable>.stChanOption.s32MaxRefFrameNum, <variable>.stChanOption.s32MaxRefFrameNum
	add	r2, sp, #32	@,,
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	mov	r1, #106	@,
	str	ip, [sp, #36]	@ <variable>.stChanOption.s32MaxRefFrameNum, para
	blx	r3	@ g_event_report.741
	mvn	r0, #0	@ D.38607,
	b	.L3087	@
.L3098:
	mov	r0, r5	@, pH264Ctx
	mov	r1, r8	@, ivtmp.7490
	mov	r2, r6	@, ivtmp.7487
	add	r3, r3, #63	@,,
	str	r7, [sp, #0]	@ ivtmp.7482,
	bl	Scaling_List	@
	ldr	r0, [r7, #0]	@ tmp268, q8x8defaultflag
	cmp	r0, #1	@ tmp268,
	bne	.L3051	@,
	ldr	r2, .L3106+8	@,
	cmp	sl, #0	@ i.7516,
	ldr	r1, .L3106+12	@,
	mov	r0, r6	@, ivtmp.7487
	movne	r1, r2	@,
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3051	@
.L3107:
	.align	2
.L3106:
	.word	.LANCHOR2+96
	.word	.LANCHOR2+80
	.word	.LANCHOR2+112
	.word	.LANCHOR2+368
	.fnend
	.size	ProcessSPS, .-ProcessSPS
	.align	2
	.global	H264_DecSPS
	.type	H264_DecSPS, %function
H264_DecSPS:
	.fnstart
.LFB1709:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r1, #8	@,
	.pad #20
	sub	sp, sp, #20	@,,
	movw	r2, #:lower16:.LC94	@,
	movt	r2, #:upper16:.LC94	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_v	@
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	mov	r5, r0	@ D.38936,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC96	@,
	movt	r1, #:upper16:.LC96	@,
	mov	r8, r0	@ constrained_set0_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC97	@,
	movt	r1, #:upper16:.LC97	@,
	mov	r7, r0	@ constrained_set1_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	mov	r6, r0	@ constrained_set2_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r1, #4	@,
	movw	r2, #:lower16:.LC99	@,
	movt	r2, #:upper16:.LC99	@,
	mov	fp, r0	@ constrained_set3_flag,
	mov	r0, r4	@, pH264Ctx
	bl	u_v	@
	mov	r1, #8	@,
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC100	@,
	movt	r2, #:upper16:.LC100	@,
	bl	u_v	@
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	mov	sl, r0	@ D.38941,
	mov	r0, r4	@, pH264Ctx
	bl	ue_v	@
	mov	r3, r0	@ seq_parameter_set_id,
	movw	r0, #52780	@ tmp159,
	ldr	r2, [r4, r0]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3109	@,
	movw	ip, #13572	@ tmp161,
	ldr	r2, [r4, ip]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	r1, r2, #1	@ tmp162, <variable>.MaxSpsNum,
	cmp	r3, r1	@ seq_parameter_set_id, tmp162
	bhi	.L3121	@,
	cmp	r5, #100	@ profile_idc,
	mov	r2, r5	@ profile_idc, D.38936
	beq	.L3113	@,
	bhi	.L3114	@,
	cmp	r5, #77	@ profile_idc,
	beq	.L3113	@,
	cmp	r5, #88	@ profile_idc,
	beq	.L3113	@,
	cmp	r5, #66	@ profile_idc,
	movne	r2, #100	@ profile_idc,
.L3113:
	cmp	sl, #9	@ D.38941,
	movls	ip, #41	@ level_idc,
	bhi	.L3122	@,
.L3116:
	mov	r9, #4000	@ tmp169,
	movw	sl, #13580	@ tmp170,
	mul	r5, r9, r3	@ D.38964, tmp169, seq_parameter_set_id
	ldr	r1, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, r1	@ D.38965, D.38964, <variable>.SPS
	ldrb	r0, [r1, #23]	@ zero_extendqisi2	@, <variable>.is_valid
	cmp	r0, #0	@,
	str	r0, [sp, #4]	@, %sfp
	bne	.L3123	@,
	str	r2, [r1, #736]	@ profile_idc, <variable>.profile_idc
	mov	r0, r4	@, pH264Ctx
	ldr	r2, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	mov	r9, #1	@ tmp207,
	strb	r8, [r2, r5]	@ constrained_set0_flag, <variable>.constrained_set0_flag
	ldr	r1, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	lr, r1, r5	@ tmp208, <variable>.SPS, D.38964
	strb	r7, [lr, #1]	@ constrained_set1_flag, <variable>.constrained_set1_flag
	ldr	r2, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r1, r2, r5	@ tmp214, <variable>.SPS, D.38964
	strb	r6, [r1, #2]	@ constrained_set2_flag, <variable>.constrained_set2_flag
	ldr	lr, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r2, lr, r5	@ tmp220, <variable>.SPS, D.38964
	strb	fp, [r2, #3]	@, <variable>.constrained_set3_flag
	ldr	r1, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	lr, r1, r5	@ tmp226, <variable>.SPS, D.38964
	str	ip, [lr, #740]	@ level_idc, <variable>.level_idc
	ldr	r2, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	ip, r2, r5	@ tmp231, <variable>.SPS, D.38964
	str	r3, [ip, #744]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r1, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r1, r5, r1	@, D.38964, <variable>.SPS
	bl	ProcessSPS	@
	cmp	r0, #0	@ D.38981
	bne	.L3124	@,
	ldr	ip, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r3, ip, r5	@ tmp253, <variable>.SPS, D.38964
	strb	r9, [r3, #24]	@ tmp207, <variable>.is_refreshed
	ldr	r2, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r5, r2, r5	@ tmp260, <variable>.SPS, D.38964
	strb	r9, [r5, #23]	@ tmp207, <variable>.is_valid
.L3111:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3122:
	cmp	sl, #41	@ D.38941,
	movcc	ip, sl	@ level_idc, D.38941
	movcs	ip, #41	@ level_idc,
	b	.L3116	@
.L3109:
	mvn	r0, #0	@ D.38946,
	b	.L3111	@
.L3114:
	cmp	r5, #122	@ profile_idc,
	beq	.L3113	@,
	cmp	r5, #144	@ profile_idc,
	beq	.L3113	@,
	cmp	r5, #110	@ profile_idc,
	movne	r2, #100	@ profile_idc,
	b	.L3113	@
.L3123:
	movw	r1, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LANCHOR1	@,
	str	r1, [sp, #4]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	ldr	lr, [sp, #4]	@, %sfp
	add	r1, r1, #68	@,,
	strb	r6, [lr, #70]	@ constrained_set2_flag, sps_tmp.constrained_set2_flag
	str	r2, [lr, #804]	@ profile_idc, sps_tmp.profile_idc
	strb	r8, [lr, #68]	@ constrained_set0_flag, sps_tmp.constrained_set0_flag
	strb	r7, [lr, #69]	@ constrained_set1_flag, sps_tmp.constrained_set1_flag
	strb	fp, [lr, #71]	@, sps_tmp.constrained_set3_flag
	str	ip, [lr, #808]	@ level_idc, sps_tmp.level_idc
	str	r3, [lr, #812]	@ seq_parameter_set_id, sps_tmp.seq_parameter_set_id
	bl	ProcessSPS	@
	subs	r6, r0, #0	@ D.38973,
	bne	.L3109	@,
	ldr	ip, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	ldr	r2, [sp, #4]	@, %sfp
	add	r1, r5, ip	@, D.38964, <variable>.SPS
	add	r0, r2, #68	@,,
	bl	SPSEqual	@
	cmp	r0, #0	@ D.38976
	beq	.L3111	@,
	ldr	r0, [sp, #4]	@, %sfp
	mov	lr, #1	@ tmp192,
	mov	r2, r9	@, tmp169
	add	r1, r0, #68	@,,
	strb	lr, [r0, #91]	@ tmp192, sps_tmp.is_valid
	strb	lr, [r0, #92]	@ tmp192, sps_tmp.is_refreshed
	ldr	r3, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	add	r0, r5, r3	@, D.38964, <variable>.SPS
	bl	memmove	@
	mov	r0, r6	@ D.38946, D.38973
	b	.L3111	@
.L3124:
	ldr	r1, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	mvn	r0, #0	@ D.38946,
	add	lr, r1, r5	@ tmp239, <variable>.SPS, D.38964
	strb	r9, [lr, #24]	@ tmp207, <variable>.is_refreshed
	ldr	ip, [r4, sl]	@ <variable>.SPS, <variable>.SPS
	ldr	r3, [sp, #4]	@, %sfp
	add	r5, ip, r5	@ tmp246, <variable>.SPS, D.38964
	strb	r3, [r5, #23]	@, <variable>.is_valid
	b	.L3111	@
.L3121:
	movw	lr, #:lower16:g_event_report	@ tmp164,
	movt	lr, #:upper16:g_event_report	@ tmp164,
	ldr	ip, [lr, #0]	@ g_event_report.749, g_event_report
	cmp	ip, #0	@ g_event_report.749,
	beq	.L3109	@,
	str	r3, [sp, #8]	@ seq_parameter_set_id, para
	movw	r3, #52840	@ tmp167,
	str	r2, [sp, #12]	@ <variable>.MaxSpsNum, para
	mov	r1, #109	@,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	add	r2, sp, #8	@,,
	blx	ip	@ g_event_report.749
	mvn	r0, #0	@ D.38946,
	b	.L3111	@
	.fnend
	.size	H264_DecSPS, .-H264_DecSPS
	.align	2
	.global	ProcessPPS
	.type	ProcessPPS, %function
ProcessPPS:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r5, r1	@ pPPS, pPPS
	.pad #52
	sub	sp, sp, #52	@,,
	movw	r1, #:lower16:.LC102	@,
	movt	r1, #:upper16:.LC102	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	u_1	@
	movw	r6, #52780	@ tmp186,
	strb	r0, [r5, #0]	@, <variable>.entropy_coding_mode_flag
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3154	@,
.L3126:
	mvn	r0, #0	@ D.37943,
.L3129:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L3154:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC103	@,
	movt	r1, #:upper16:.LC103	@,
	bl	u_1	@
	strb	r0, [r5, #1]	@, <variable>.pic_order_present_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC104	@,
	bl	ue_v	@
	cmp	r0, #0	@ D.37948,
	str	r0, [r5, #32]	@ D.37948, <variable>.num_slice_groups_minus1
	bne	.L3127	@,
	ldr	r1, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3128	@,
.L3127:
	movw	r2, #:lower16:g_event_report	@ tmp195,
	movt	r2, #:upper16:g_event_report	@ tmp195,
	ldr	r3, [r2, #0]	@ g_event_report.708, g_event_report
	cmp	r3, #0	@ g_event_report.708,
	beq	.L3126	@,
	movw	ip, #52840	@ tmp196,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.708
	mvn	r0, #0	@ D.37943,
	b	.L3129	@
.L3128:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC105	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.37957,
	str	r0, [r5, #36]	@ D.37957, <variable>.num_ref_idx_l0_active_minus1
	bhi	.L3126	@,
	ldr	lr, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC106	@,
	bl	ue_v	@
	cmp	r0, #31	@ D.37962,
	str	r0, [r5, #40]	@ D.37962, <variable>.num_ref_idx_l1_active_minus1
	bhi	.L3126	@,
	ldr	r3, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	u_1	@
	strb	r0, [r5, #2]	@, <variable>.weighted_pred_flag
	ldr	r0, [r4, r6]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, #2	@,
	movw	r2, #:lower16:.LC108	@,
	movt	r2, #:upper16:.LC108	@,
	bl	u_v	@
	cmp	r0, #2	@ D.37971,
	str	r0, [r5, #44]	@ D.37971, <variable>.weighted_bipred_idc
	bhi	.L3126	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	mov	r8, #0	@ tmp218,
	bl	se_v	@
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	str	r0, [r5, #48]	@, <variable>.pic_init_qp_minus26
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC112	@,
	movt	r1, #:upper16:.LC112	@,
	str	r0, [r5, #52]	@, <variable>.chroma_qp_index_offset
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC113	@,
	movt	r1, #:upper16:.LC113	@,
	strb	r0, [r5, #3]	@, <variable>.deblocking_filter_control_present_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	strb	r0, [r5, #4]	@, <variable>.constrained_intra_pred_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	ldr	r1, [r5, #52]	@ <variable>.chroma_qp_index_offset, <variable>.chroma_qp_index_offset
	add	r3, r4, #13504	@, pH264Ctx,
	str	r8, [r5, #60]	@ tmp218, <variable>.transform_8x8_mode_flag
	strb	r8, [r5, #18]	@ tmp218, <variable>.pic_scaling_matrix_present_flag
	str	r1, [r5, #56]	@ <variable>.chroma_qp_index_offset, <variable>.second_chroma_qp_index_offset
	strb	r0, [r5, #17]	@, <variable>.redundant_pic_cnt_present_flag
	add	r0, r3, #24	@,,
	bl	BsResidBits	@
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	r2, [ip, #72]	@ <variable>.nal_trail_zero_bit_num, <variable>.nal_trail_zero_bit_num
	add	r1, r2, #3	@ tmp224, <variable>.nal_trail_zero_bit_num,
	cmp	r0, r1	@, tmp224
	bcs	.L3155	@,
.L3130:
	mov	r0, #0	@ D.37943,
	b	.L3129	@
.L3155:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	u_1	@
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	str	r0, [r5, #60]	@, <variable>.transform_8x8_mode_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	uxtb	r0, r0	@ D.37997,
	strb	r0, [r5, #18]	@ D.37997, <variable>.pic_scaling_matrix_present_flag
	cmp	r0, #1	@ D.37997,
	beq	.L3156	@,
.L3131:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	se_v	@
	add	ip, r0, #12	@ tmp307, D.38083,
	str	r0, [r5, #56]	@ D.38083, <variable>.second_chroma_qp_index_offset
	cmp	ip, #24	@ tmp307,
	bhi	.L3126	@,
	movw	r3, #52780	@ tmp308,
	ldr	r0, [r4, r3]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	beq	.L3130	@,
	b	.L3126	@
.L3156:
	add	r9, r5, #1984	@ ivtmp.7665, pPPS,
	add	r7, sp, #16	@ ivtmp.7660,,
	add	r6, r5, #64	@, pPPS,
	str	r6, [sp, #12]	@, %sfp
	mov	sl, r9	@ ivtmp.7691, ivtmp.7665
	mov	fp, r9	@ ivtmp.7679, ivtmp.7665
	mov	r6, r8	@ i, ivtmp.7666
.L3140:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC72	@,
	movt	r1, #:upper16:.LC72	@,
	bl	u_1	@
	add	ip, r5, r6	@ tmp230, pPPS, i
	mov	r2, #16	@,
	mov	r3, r0	@ D.38002,
	str	r0, [r7, #0]	@ D.38002, q4x4defaultflag
	strb	r3, [ip, #5]	@ D.38002, <variable>.pic_scaling_list_present_flag
	add	r0, r8, r9	@, ivtmp.7666, ivtmp.7665
	ldr	r3, [r7, #0]	@ tmp232, q4x4defaultflag
	cmp	r3, #1	@ tmp232,
	beq	.L3157	@,
	rsbs	ip, r6, #1	@ D.38025, i
	movcc	ip, #0	@ D.38025
	cmp	r6, #0	@ i,
	cmpne	r6, #3	@, i,
	bne	.L3136	@,
	movw	lr, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ D.38033,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3158	@,
	ldr	r3, .L3161	@,
	cmp	ip, #0	@ D.38025,
	ldr	r1, .L3161+4	@,
	movne	r1, r3	@,
	bl	memcpy	@
.L3133:
	add	r6, r6, #1	@ i, i,
	ldr	r1, [sp, #12]	@, %sfp
	cmp	r6, #6	@ i,
	add	r7, r7, #4	@ ivtmp.7660, ivtmp.7660,
	add	r0, r1, #64	@,,
	add	fp, fp, #16	@ ivtmp.7679, ivtmp.7679,
	add	r8, r8, #16	@ ivtmp.7666, ivtmp.7666,
	add	sl, sl, #16	@ ivtmp.7691, ivtmp.7691,
	str	r0, [sp, #12]	@, %sfp
	bne	.L3140	@,
	add	r8, r5, #2080	@, pPPS,
	mov	r6, #0	@ ivtmp.7645,
	add	r9, r5, #448	@ ivtmp.7648, pPPS,
	add	r7, sp, #40	@ ivtmp.7650,,
	str	r8, [sp, #12]	@, %sfp
	mov	sl, r8	@ ivtmp.7644,
	mov	fp, r5	@ ivtmp.7654, pPPS
	mov	r8, r6	@ i.7686, ivtmp.7645
.L3150:
	ldr	lr, [r5, #60]	@ <variable>.transform_8x8_mode_flag, <variable>.transform_8x8_mode_flag
	mov	r3, #0	@ prephitmp.7626,
	cmp	lr, #1	@ <variable>.transform_8x8_mode_flag,
	movne	lr, #0	@,
	strne	lr, [r7, #0]	@, q8x8defaultflag
	bne	.L3142	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC117	@,
	movt	r1, #:upper16:.LC117	@,
	bl	u_1	@
	uxtb	r3, r0	@ prephitmp.7626, D.38051
	str	r0, [r7, #0]	@ D.38051, q8x8defaultflag
.L3142:
	ldr	r2, [sp, #12]	@, %sfp
	strb	r3, [fp, #11]	@ prephitmp.7626, <variable>.pic_scaling_list_present_flag
	ldr	ip, [r7, #0]	@ tmp277, q8x8defaultflag
	add	r0, r2, r6	@,, ivtmp.7645
	mov	r2, #64	@,
	cmp	ip, #1	@ tmp277,
	beq	.L3159	@,
	movw	ip, #13580	@,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r3, [r4, ip]	@ <variable>.SPS, <variable>.SPS
	mov	lr, #4000	@,
	mla	r3, lr, r1, r3	@ temp.7684,, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r1, [r3, #25]	@ zero_extendqisi2	@ <variable>.seq_scaling_matrix_present_flag, <variable>.seq_scaling_matrix_present_flag
	cmp	r1, #1	@ <variable>.seq_scaling_matrix_present_flag,
	beq	.L3160	@,
	ldr	lr, .L3161+8	@,
	cmp	r8, #0	@ i.7686,
	ldr	r1, .L3161+12	@,
	movne	r1, lr	@,
	bl	memcpy	@
.L3144:
	add	r8, r8, #1	@ i.7686, i.7686,
	add	sl, sl, #64	@ ivtmp.7644, ivtmp.7644,
	cmp	r8, #2	@ i.7686,
	add	r6, r6, #64	@ ivtmp.7645, ivtmp.7645,
	add	r9, r9, #256	@ ivtmp.7648, ivtmp.7648,
	add	r7, r7, #4	@ ivtmp.7650, ivtmp.7650,
	add	fp, fp, #1	@ ivtmp.7654, ivtmp.7654,
	bne	.L3150	@,
	b	.L3131	@
.L3157:
	mov	r2, fp	@, ivtmp.7679
	ldr	r1, [sp, #12]	@, %sfp
	mov	r0, r4	@, pH264Ctx
	add	r3, r3, #15	@,,
	str	r7, [sp, #0]	@ ivtmp.7660,
	bl	Scaling_List	@
	ldr	r2, [r7, #0]	@ tmp233, q4x4defaultflag
	cmp	r2, #1	@ tmp233,
	bne	.L3133	@,
	ldr	lr, .L3161+4	@,
	cmp	r6, #2	@ i,
	ldr	r1, .L3161	@,
	mov	r0, fp	@, ivtmp.7679
	mov	r2, #16	@,
	movhi	r1, lr	@,
	bl	memcpy	@
	b	.L3133	@
.L3158:
	add	r2, r3, #2672	@ tmp254, D.38033,
	add	r0, r8, r9	@, ivtmp.7666, ivtmp.7665
	add	ip, r2, #8	@ tmp254, tmp254,
	mov	r2, #16	@,
	add	r1, ip, r8	@, tmp254, ivtmp.7666
	bl	memcpy	@
	b	.L3133	@
.L3136:
	mov	r0, sl	@, ivtmp.7691
	sub	r1, sl, #16	@, ivtmp.7691,
	mov	r2, #16	@,
	bl	memcpy	@
	b	.L3133	@
.L3160:
	ldr	r2, [sp, #12]	@, %sfp
	add	r1, r3, #2768	@ tmp292, temp.7684,
	add	r3, r1, #8	@ tmp292, tmp292,
	add	r0, r2, r6	@,, ivtmp.7645
	add	r1, r3, r6	@, tmp292, ivtmp.7645
	mov	r2, #64	@,
	bl	memcpy	@
	b	.L3144	@
.L3159:
	mov	r3, r2	@,
	mov	r1, r9	@, ivtmp.7648
	mov	r2, sl	@, ivtmp.7644
	mov	r0, r4	@, pH264Ctx
	str	r7, [sp, #0]	@ ivtmp.7650,
	bl	Scaling_List	@
	ldr	r3, [r7, #0]	@ tmp278, q8x8defaultflag
	cmp	r3, #1	@ tmp278,
	bne	.L3144	@,
	ldr	r0, .L3161+8	@,
	cmp	r8, #0	@ i.7686,
	ldr	r1, .L3161+12	@,
	mov	r2, #64	@,
	movne	r1, r0	@,
	mov	r0, sl	@, ivtmp.7644
	bl	memcpy	@
	b	.L3144	@
.L3162:
	.align	2
.L3161:
	.word	.LANCHOR2+96
	.word	.LANCHOR2+80
	.word	.LANCHOR2+112
	.word	.LANCHOR2+368
	.fnend
	.size	ProcessPPS, .-ProcessPPS
	.align	2
	.global	H264_DecPPS
	.type	H264_DecPPS, %function
H264_DecPPS:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r1, #:lower16:.LC119	@,
	.pad #12
	sub	sp, sp, #12	@,,
	movt	r1, #:upper16:.LC119	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	mov	r7, r0	@ pic_parameter_set_id,
	movw	r0, #13576	@ tmp145,
	ldr	r2, [r4, r0]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r2, #1	@ tmp146, <variable>.MaxPpsNum,
	cmp	r7, r3	@ pic_parameter_set_id, tmp146
	bls	.L3164	@,
	movw	r1, #:lower16:g_event_report	@ tmp148,
	movt	r1, #:upper16:g_event_report	@ tmp148,
	ldr	r3, [r1, #0]	@ g_event_report.706, g_event_report
	cmp	r3, #0	@ g_event_report.706,
	bne	.L3171	@,
.L3165:
	mvn	r0, #0	@ D.37894,
.L3166:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L3164:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	bl	ue_v	@
	movw	r1, #13572	@ tmp155,
	mov	r3, r0	@ seq_parameter_set_id,
	ldr	r0, [r4, r1]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, r0, #1	@ tmp156, <variable>.MaxSpsNum,
	cmp	r3, ip	@ seq_parameter_set_id, tmp156
	bhi	.L3165	@,
	movw	r1, #13580	@ tmp159,
	mov	r0, #4000	@ tmp161,
	ldr	ip, [r4, r1]	@ <variable>.SPS, <variable>.SPS
	mla	r2, r0, r3, ip	@ tmp162, tmp161, seq_parameter_set_id, <variable>.SPS
	ldrb	lr, [r2, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	lr, #0	@ <variable>.is_valid,
	beq	.L3165	@,
	mov	sl, #2208	@ tmp164,
	movw	r6, #13584	@ tmp165,
	mul	r5, sl, r7	@ D.37908, tmp164, pic_parameter_set_id
	ldr	r8, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	add	r2, r5, r8	@ D.37909, D.37908, <variable>.PPS
	ldrb	r8, [r2, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r8, #0	@ <variable>.is_valid,
	bne	.L3172	@,
	str	r7, [r2, #24]	@ pic_parameter_set_id, <variable>.pic_parameter_set_id
	mov	r0, r4	@, pH264Ctx
	ldr	ip, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	add	lr, ip, r5	@ tmp195, <variable>.PPS, D.37908
	str	r3, [lr, #28]	@ seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r1, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	add	r1, r5, r1	@, D.37908, <variable>.PPS
	bl	ProcessPPS	@
	cmp	r0, #0	@ D.37921
	bne	.L3173	@,
	ldr	r1, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	mov	ip, #1	@ tmp219,
	add	r2, r1, r5	@ tmp217, <variable>.PPS, D.37908
	strb	ip, [r2, #20]	@ tmp219, <variable>.is_refreshed
	ldr	r3, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	add	r5, r3, r5	@ tmp224, <variable>.PPS, D.37908
	strb	ip, [r5, #19]	@ tmp219, <variable>.is_valid
	b	.L3166	@
.L3171:
	str	r2, [sp, #4]	@ <variable>.MaxPpsNum, para
	movw	r2, #52840	@ tmp151,
	str	r7, [sp, #0]	@ pic_parameter_set_id, para
	mov	r1, #110	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.706
	mvn	r0, #0	@ D.37894,
	b	.L3166	@
.L3173:
	ldr	lr, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	mov	r2, #1	@ tmp205,
	mvn	r0, #0	@ D.37894,
	add	r1, lr, r5	@ tmp203, <variable>.PPS, D.37908
	strb	r2, [r1, #20]	@ tmp205, <variable>.is_refreshed
	ldr	r3, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	add	r5, r3, r5	@ tmp210, <variable>.PPS, D.37908
	strb	r8, [r5, #19]	@ <variable>.is_valid, <variable>.is_valid
	b	.L3166	@
.L3172:
	movw	r8, #:lower16:.LANCHOR1	@ tmp168,
	movt	r8, #:upper16:.LANCHOR1	@ tmp168,
	mov	lr, #4096	@ tmp170,
	mov	r0, r4	@, pH264Ctx
	str	r7, [r8, #4092]	@ pic_parameter_set_id, pps_tmp.pic_parameter_set_id
	ldr	r1, .L3174	@,
	str	r3, [r8, lr]	@ seq_parameter_set_id, pps_tmp.seq_parameter_set_id
	bl	ProcessPPS	@
	subs	r7, r0, #0	@ D.37913,
	bne	.L3165	@,
	ldr	r3, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	ldr	r0, .L3174	@,
	add	r1, r5, r3	@, D.37908, <variable>.PPS
	bl	PPSEqual	@
	cmp	r0, #0	@ D.37916
	beq	.L3166	@,
	mov	r2, #1	@ tmp181,
	strb	r2, [r8, #4087]	@ tmp181, pps_tmp.is_valid
	strb	r2, [r8, #4088]	@ tmp181, pps_tmp.is_refreshed
	mov	r2, sl	@, tmp164
	ldr	ip, [r4, r6]	@ <variable>.PPS, <variable>.PPS
	ldr	r1, .L3174	@,
	add	r0, r5, ip	@, D.37908, <variable>.PPS
	bl	memmove	@
	mov	r0, r7	@ D.37894, D.37913
	b	.L3166	@
.L3175:
	.align	2
.L3174:
	.word	.LANCHOR1+4068
	.fnend
	.size	H264_DecPPS, .-H264_DecPPS
	.align	2
	.global	ProcessSliceHeaderFirstPart
	.type	ProcessSliceHeaderFirstPart, %function
ProcessSliceHeaderFirstPart:
	.fnstart
.LFB1695:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r2, #13576	@ tmp162,
	ldr	r1, [r4, r2]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	sub	r3, r1, #1	@ tmp163, <variable>.MaxPpsNum,
	cmp	r0, r3	@ tmp_pic_parameter_set_id, tmp163
	bls	.L3204	@,
.L3177:
	mvn	r0, #0	@ D.37350,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3204:
	movw	lr, #52780	@ tmp165,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3177	@,
	movw	r2, #13584	@ tmp168,
	mov	r6, #2208	@ tmp167,
	ldr	r1, [r4, r2]	@ <variable>.PPS, <variable>.PPS
	mla	r6, r6, r0, r1	@ pPPS, tmp167, tmp_pic_parameter_set_id, <variable>.PPS
	ldrb	r3, [r6, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r3, #0	@ <variable>.is_valid,
	beq	.L3177	@,
	movw	r3, #13572	@ tmp171,
	ldr	r1, [r6, #28]	@ D.40577, <variable>.seq_parameter_set_id
	ldr	lr, [r4, r3]	@ <variable>.MaxSpsNum, <variable>.MaxSpsNum
	sub	ip, lr, #1	@ tmp172, <variable>.MaxSpsNum,
	cmp	r1, ip	@ D.40577, tmp172
	bhi	.L3177	@,
	movw	lr, #13580	@ tmp175,
	mov	r2, #4000	@ tmp177,
	ldr	r3, [r4, lr]	@ <variable>.SPS, <variable>.SPS
	mla	ip, r2, r1, r3	@ tmp178, tmp177, D.40577, <variable>.SPS
	ldrb	r1, [ip, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	beq	.L3177	@,
	movw	r1, #20683	@ tmp277,
	movw	ip, #20692	@ tmp269,
	ldrb	lr, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	str	r0, [r4, ip]	@ tmp_pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	ldr	r5, [r6, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	cmp	lr, #5	@ <variable>.CurrSlice.nal_unit_type,
	mla	r5, r2, r5, r3	@ pSPS, tmp177, <variable>.seq_parameter_set_id, <variable>.SPS
	beq	.L3198	@,
	ldr	r0, [r5, #3952]	@ <variable>.num_ref_frames, <variable>.num_ref_frames
	cmp	r0, #0	@ <variable>.num_ref_frames,
	bne	.L3179	@,
.L3198:
	movw	r3, #20680	@ tmp181,
	ldrb	r2, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r2, #2	@ <variable>.CurrSlice.slice_type,
	bne	.L3177	@,
.L3179:
	ldr	lr, [r5, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC122	@,
	movt	r2, #:upper16:.LC122	@,
	add	r1, lr, #4	@, <variable>.log2_max_frame_num_minus4,
	bl	u_v	@
	movw	r2, #52780	@ tmp187,
	ldr	r1, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	ip, #20700	@ tmp186,
	cmp	r1, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, ip]	@ D.37370, <variable>.CurrSlice.frame_num
	bne	.L3177	@,
	movw	r8, #20683	@ tmp189,
	mov	r3, #0	@ tmp193,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	movw	r8, #20682	@ tmp195,
	strb	r3, [r4, r8]	@ tmp193, <variable>.CurrSlice.bottom_field_flag
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	r7, #20696	@ tmp191,
	streq	r0, [r4, r7]	@ D.37370, <variable>.CurrSlice.prev_frame_num
	movw	r7, #20681	@ tmp192,
	strb	r3, [r4, r7]	@ tmp193, <variable>.CurrSlice.field_pic_flag
	ldrb	r0, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	cmp	r0, r3	@ <variable>.frame_mbs_only_flag,
	beq	.L3205	@,
	ldr	r2, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldr	ip, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	add	r0, r2, #1	@ tmp279, <variable>.pic_width_in_mbs_minus1,
	add	lr, ip, #1	@ tmp281, <variable>.pic_height_in_map_units_minus1,
	mul	r2, lr, r0	@ D.37395, tmp281, tmp279
.L3200:
	mov	r1, #1	@ iftmp.677,
.L3185:
	cmp	r3, #0	@ prephitmp.7776,
	mul	r2, r1, r2	@ pic_size, iftmp.677, D.37395
	movne	r3, #0	@ prephitmp.7748,
	bne	.L3187	@,
	ldrb	r0, [r5, #19]	@ zero_extendqisi2	@ <variable>.mb_adaptive_frame_field_flag, <variable>.mb_adaptive_frame_field_flag
	subs	r3, r0, #0	@ prephitmp.7748, <variable>.mb_adaptive_frame_field_flag,
	movne	r3, #1	@ prephitmp.7748
.L3187:
	movw	r1, #20681	@ tmp216,
	movw	lr, #20684	@ tmp214,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	strb	r3, [r4, lr]	@ prephitmp.7748, <variable>.CurrSlice.MbaffFrameFlag
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	beq	.L3188	@,
	cmp	r3, #1	@ prephitmp.7748,
	beq	.L3188	@,
	movw	lr, #20732	@ tmp221,
	ldr	ip, [r4, lr]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r2, ip	@ pic_size, <variable>.CurrSlice.first_mb_in_slice
	bls	.L3177	@,
.L3190:
	movw	r8, #20683	@ tmp223,
	ldrb	r7, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r7, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3191	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC125	@,
	movt	r1, #:upper16:.LC125	@,
	bl	ue_v	@
	movw	r2, #20720	@ tmp226,
	str	r0, [r4, r2]	@, <variable>.CurrSlice.idr_pic_id
.L3191:
	movw	r8, #19796	@ tmp227,
	movw	r7, #19800	@ tmp229,
	mov	r3, #0	@ tmp228,
	str	r3, [r4, r7]	@ tmp228, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	str	r3, [r4, r8]	@ tmp228, <variable>.CurrPOC.pic_order_cnt_lsb
	ldr	r1, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r1, #0	@ <variable>.pic_order_cnt_type,
	beq	.L3206	@,
.L3192:
	movw	r8, #19844	@ tmp241,
	movw	r7, #19848	@ tmp243,
	mov	r1, #0	@ tmp242,
	str	r1, [r4, r7]	@ tmp242, <variable>.CurrPOC.delta_pic_order_cnt
	str	r1, [r4, r8]	@ tmp242, <variable>.CurrPOC.delta_pic_order_cnt
	ldr	r2, [r5, #2908]	@ <variable>.pic_order_cnt_type, <variable>.pic_order_cnt_type
	cmp	r2, #1	@ <variable>.pic_order_cnt_type,
	beq	.L3207	@,
.L3193:
	movw	r5, #52780	@ tmp254,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3177	@,
	ldrb	r2, [r6, #17]	@ zero_extendqisi2	@ <variable>.redundant_pic_cnt_present_flag, <variable>.redundant_pic_cnt_present_flag
	cmp	r2, #0	@ <variable>.redundant_pic_cnt_present_flag,
	beq	.L3194	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC130	@,
	bl	ue_v	@
	cmp	r0, #0	@,
	bne	.L3195	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	bne	.L3195	@,
.L3194:
	mov	r0, r4	@, pH264Ctx
	bl	IsNewPic	@
	movw	r2, #20685	@ tmp262,
	uxtb	r0, r0	@ D.37464,
	strb	r0, [r4, r2]	@ D.37464, <variable>.CurrSlice.new_pic_flag
	cmp	r0, #0	@ D.37464,
	beq	.L3208	@,
.L3197:
	mov	r0, #0	@ D.37350,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3188:
	movw	r0, #20732	@ tmp219,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	r3, r2, lsr #1	@ <variable>.CurrSlice.first_mb_in_slice, pic_size,
	bcs	.L3177	@,
	b	.L3190	@
.L3205:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC123	@,
	bl	u_1	@
	uxtb	r3, r0	@ D.37385,
	strb	r3, [r4, r7]	@ D.37385, <variable>.CurrSlice.field_pic_flag
	cmp	r3, #0	@ D.37385,
	bne	.L3209	@,
.L3183:
	ldr	r2, [r5, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	ldr	r1, [r5, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	ldrb	lr, [r5, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	add	ip, r2, #1	@ tmp206, <variable>.pic_height_in_map_units_minus1,
	add	r1, r1, #1	@ tmp208, <variable>.pic_width_in_mbs_minus1,
	cmp	lr, #0	@ <variable>.frame_mbs_only_flag,
	mul	r2, r1, ip	@ D.37395, tmp208, tmp206
	moveq	r1, #2	@ iftmp.677,
	beq	.L3185	@,
	movw	r3, #20681	@ tmp211,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.7776, <variable>.CurrSlice.field_pic_flag
	b	.L3200	@
.L3207:
	ldrb	r3, [r5, #16]	@ zero_extendqisi2	@ <variable>.delta_pic_order_always_zero_flag, <variable>.delta_pic_order_always_zero_flag
	cmp	r3, #0	@ <variable>.delta_pic_order_always_zero_flag,
	bne	.L3193	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC128	@,
	movt	r1, #:upper16:.LC128	@,
	bl	se_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.delta_pic_order_cnt
	ldrb	r5, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r5, #1	@ <variable>.pic_order_present_flag,
	bne	.L3193	@,
	movw	ip, #20681	@ tmp250,
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3193	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt
	b	.L3193	@
.L3206:
	ldr	ip, [r5, #2912]	@ <variable>.log2_max_pic_order_cnt_lsb_minus4, <variable>.log2_max_pic_order_cnt_lsb_minus4
	mov	r0, r4	@, pH264Ctx
	movw	r2, #:lower16:.LC126	@,
	movt	r2, #:upper16:.LC126	@,
	add	r1, ip, #4	@, <variable>.log2_max_pic_order_cnt_lsb_minus4,
	bl	u_v	@
	str	r0, [r4, r8]	@, <variable>.CurrPOC.pic_order_cnt_lsb
	ldrb	r0, [r6, #1]	@ zero_extendqisi2	@ <variable>.pic_order_present_flag, <variable>.pic_order_present_flag
	cmp	r0, #0	@ <variable>.pic_order_present_flag,
	beq	.L3192	@,
	movw	r8, #20681	@ tmp237,
	ldrb	lr, [r4, r8]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	lr, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3192	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	se_v	@
	str	r0, [r4, r7]	@, <variable>.CurrPOC.delta_pic_order_cnt_bottom
	b	.L3192	@
.L3195:
	movw	r3, #:lower16:g_event_report	@ tmp260,
	movt	r3, #:upper16:g_event_report	@ tmp260,
	ldr	r3, [r3, #0]	@ g_event_report.680, g_event_report
	cmp	r3, #0	@ g_event_report.680,
	beq	.L3177	@,
	movw	ip, #52840	@ tmp261,
	mov	r1, #102	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.680
	mvn	r0, #0	@ D.37350,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3208:
	movw	r3, #22368	@ tmp265,
	movw	ip, #20732	@ tmp264,
	ldr	r1, [r4, r3]	@ <variable>.PrevSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	ldr	lr, [r4, ip]	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.CurrSlice.first_mb_in_slice
	cmp	lr, r1	@ <variable>.CurrSlice.first_mb_in_slice, <variable>.PrevSlice.first_mb_in_slice
	bhi	.L3197	@,
	b	.L3177	@
.L3209:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC124	@,
	bl	u_1	@
	ldrb	r3, [r4, r7]	@ zero_extendqisi2	@ prephitmp.7776, <variable>.CurrSlice.field_pic_flag
	strb	r0, [r4, r8]	@, <variable>.CurrSlice.bottom_field_flag
	b	.L3183	@
	.fnend
	.size	ProcessSliceHeaderFirstPart, .-ProcessSliceHeaderFirstPart
	.align	2
	.global	DecMMCO
	.type	DecMMCO, %function
DecMMCO:
	.fnstart
.LFB1693:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r6, r1, #0	@ save, save
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movweq	r7, #52780	@ tmp294,
	beq	.L3212	@,
	mov	r5, #0	@ MMCONum,
	movw	r9, #26380	@ tmp281,
	movw	sl, #2004	@ tmp283,
	movw	fp, #52780	@ tmp288,
	b	.L3213	@
.L3215:
	cmp	r3, #2	@ prephitmp.7793,
	beq	.L3238	@,
.L3216:
	cmp	r3, #3	@ prephitmp.7793,
	cmpne	r3, #6	@, prephitmp.7793,
	beq	.L3239	@,
.L3217:
	cmp	r3, #4	@ prephitmp.7793,
	beq	.L3240	@,
.L3218:
	cmp	r3, #6	@ prephitmp.7793,
	bhi	.L3214	@,
	ldr	lr, [r4, fp]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3214	@,
	cmp	r3, #0	@ prephitmp.7793,
	beq	.L3220	@,
	add	r5, r5, #1	@ MMCONum, MMCONum,
	cmp	r5, #100	@ MMCONum,
	beq	.L3214	@,
.L3213:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	ldr	r8, [r4, r9]	@ D.37215, <variable>.CurrMarkIdx
	bl	ue_v	@
	mov	r7, r5, asl #2	@ tmp280, MMCONum,
	add	ip, r7, r5	@ tmp152, tmp280, MMCONum
	mul	r2, sl, r8	@ tmp154, tmp283, D.37215
	add	r1, r2, ip, asl #2	@, tmp156, tmp154, tmp152,
	mov	r3, r0	@ prephitmp.7793,
	cmp	r0, #1	@ prephitmp.7793,
	cmpne	r0, #3	@, prephitmp.7793,
	add	r0, r1, r4	@ tmp157, tmp156, pH264Ctx
	add	r6, r0, #22272	@ tmp158, tmp157,
	add	r6, r6, #96	@ tmp158, tmp158,
	str	r3, [r6, #8]	@ prephitmp.7793, <variable>.memory_management_control_operation
	bne	.L3215	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	ldr	r3, [r6, #8]	@ prephitmp.7793, <variable>.memory_management_control_operation
	cmp	r3, #2	@ prephitmp.7793,
	str	r0, [r6, #12]	@, <variable>.difference_of_pic_nums_minus1
	bne	.L3216	@,
.L3238:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC133	@,
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp193, tmp283, D.37215
	add	r1, r7, r5	@ tmp191, tmp280, MMCONum
	add	ip, r3, r1, asl #2	@, tmp195, tmp193, tmp191,
	add	r2, ip, r4	@ tmp196, tmp195, pH264Ctx
	add	r1, r2, #22272	@ tmp207, tmp196,
	add	r3, r1, #96	@ tmp207, tmp207,
	add	r1, r1, #104	@ tmp197, tmp197,
	ldr	r3, [r3, #8]	@ prephitmp.7793, <variable>.memory_management_control_operation
	cmp	r3, #3	@ prephitmp.7793,
	cmpne	r3, #6	@, prephitmp.7793,
	str	r0, [r1, #8]	@, <variable>.long_term_pic_num
	bne	.L3217	@,
.L3239:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC134	@,
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	mul	r3, sl, r8	@ tmp221, tmp283, D.37215
	add	r1, r7, r5	@ tmp219, tmp280, MMCONum
	add	ip, r3, r1, asl #2	@, tmp223, tmp221, tmp219,
	add	r2, ip, r4	@ tmp224, tmp223, pH264Ctx
	add	r3, r2, #22272	@ tmp235, tmp224,
	add	ip, r3, #96	@ tmp235, tmp235,
	add	r2, r3, #104	@ tmp225, tmp225,
	ldr	r3, [ip, #8]	@ prephitmp.7793, <variable>.memory_management_control_operation
	cmp	r3, #4	@ prephitmp.7793,
	str	r0, [r2, #12]	@, <variable>.long_term_frame_idx
	bne	.L3218	@,
.L3240:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	mul	r8, sl, r8	@ tmp242, tmp283, D.37215
	add	r1, r7, r5	@ tmp240, tmp280, MMCONum
	add	ip, r8, r1, asl #2	@, tmp244, tmp242, tmp240,
	add	r2, ip, r4	@ tmp245, tmp244, pH264Ctx
	add	r3, r2, #22272	@ tmp256, tmp245,
	add	r2, r3, #112	@ tmp246, tmp246,
	add	ip, r3, #96	@ tmp256, tmp256,
	ldr	r3, [ip, #8]	@ prephitmp.7793, <variable>.memory_management_control_operation
	str	r0, [r2, #8]	@, <variable>.max_long_term_frame_idx_plus1
	b	.L3218	@
.L3212:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.37257
	moveq	r8, #1	@, D.37257
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3241	@,
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3242	@,
.L3222:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp273, D.37257
	cmp	r8, #0	@ tmp273,
	bne	.L3243	@,
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3244	@,
.L3224:
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3214	@,
.L3225:
	ldr	r0, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3214	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3220	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	add	r6, r6, #1	@ tmp295, MMCONum.7817,
	bl	ue_v	@
	cmp	r0, #3	@ memory_management_control_operation,
	movne	r8, #0	@, D.37257
	moveq	r8, #1	@, D.37257
	cmp	r0, #3	@ memory_management_control_operation,
	cmpne	r0, #1	@, memory_management_control_operation,
	mov	r5, r0	@ memory_management_control_operation,
	beq	.L3245	@,
	cmp	r5, #2	@ memory_management_control_operation,
	beq	.L3246	@,
.L3230:
	cmp	r5, #6	@ memory_management_control_operation,
	orreq	r8, r8, #1	@,, tmp308, D.37257
	cmp	r8, #0	@ tmp308,
	bne	.L3247	@,
	cmp	r5, #4	@ memory_management_control_operation,
	beq	.L3236	@,
.L3248:
	cmp	r5, #6	@ memory_management_control_operation,
	bhi	.L3214	@,
.L3237:
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	bne	.L3214	@,
	cmp	r5, #0	@ memory_management_control_operation,
	beq	.L3220	@,
	add	r6, r6, #1	@ MMCONum.7817, tmp295,
	cmp	r6, #100	@ MMCONum.7817,
	bne	.L3212	@,
.L3214:
	mvn	r0, #0	@ D.37214,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3220:
	mov	r0, #0	@ D.37214,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3243:
	movw	r1, #:lower16:.LC134	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	cmp	r5, #4	@ memory_management_control_operation,
	bne	.L3224	@,
.L3244:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	b	.L3225	@
.L3241:
	movw	r1, #:lower16:.LC132	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	cmp	r5, #2	@ memory_management_control_operation,
	bne	.L3222	@,
.L3242:
	movw	r1, #:lower16:.LC133	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	b	.L3222	@
.L3247:
	movw	r1, #:lower16:.LC134	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC134	@,
	bl	ue_v	@
	cmp	r5, #4	@ memory_management_control_operation,
	bne	.L3248	@,
.L3236:
	movw	r1, #:lower16:.LC135	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC135	@,
	bl	ue_v	@
	b	.L3237	@
.L3245:
	movw	r1, #:lower16:.LC132	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC132	@,
	bl	ue_v	@
	cmp	r5, #2	@ memory_management_control_operation,
	bne	.L3230	@,
.L3246:
	movw	r1, #:lower16:.LC133	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC133	@,
	bl	ue_v	@
	b	.L3230	@
	.fnend
	.size	DecMMCO, .-DecMMCO
	.align	2
	.global	dec_ref_pic_marking
	.type	dec_ref_pic_marking, %function
dec_ref_pic_marking:
	.fnstart
.LFB1694:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #20685	@ tmp150,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r8, [r0, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	r3, #26380	@ tmp149,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	cmp	r8, #0	@ <variable>.CurrSlice.new_pic_flag,
	ldr	r5, [r0, r3]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	bne	.L3250	@,
	movw	ip, #2004	@ tmp158,
	mov	r7, r5	@ tmpMarkIdx.7841, tmpMarkIdx
	mla	r2, ip, r5, r0	@ tmp159, tmp158, tmpMarkIdx, pH264Ctx
	add	r6, r2, #22272	@ tmp160, tmp159,
	add	r6, r6, #96	@ tmp160, tmp160,
	ldrb	r1, [r6, #4]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r1, #0	@ <variable>.is_valid,
	bne	.L3253	@,
	movw	lr, #20683	@ tmp162,
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3262	@,
.L3254:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	bl	u_1	@
	movw	r2, #2004	@ tmp181,
	mla	ip, r2, r7, r4	@ tmp182, tmp181, tmpMarkIdx.7841, pH264Ctx
	add	r6, ip, #22272	@ tmp183, tmp182,
	add	r6, r6, #96	@ tmp183, tmp183,
	uxtb	r1, r0	@ D.37306,
	strb	r1, [r6, #7]	@ D.37306, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r1, #0	@ D.37306,
	bne	.L3263	@,
.L3256:
	mov	r3, #0	@ D.37313,
	mov	r0, r3	@, D.37313
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3250:
	movw	lr, #20683	@ tmp162,
	rsbs	r7, r5, #1	@ tmpMarkIdx.7841, tmpMarkIdx
	movcc	r7, #0	@ tmpMarkIdx.7841
	str	r7, [r0, r3]	@ tmpMarkIdx.7841, <variable>.CurrMarkIdx
	ldrb	r0, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r0, #5	@ <variable>.CurrSlice.nal_unit_type,
	bne	.L3254	@,
.L3262:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	bl	u_1	@
	movw	r3, #2004	@ tmp167,
	mla	r2, r3, r7, r4	@ tmp168, tmp167, tmpMarkIdx.7841, pH264Ctx
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	add	r7, r2, #22272	@ tmp169, tmp168,
	add	r7, r7, #96	@ tmp169, tmp169,
	strb	r0, [r7, #5]	@, <variable>.no_output_of_prior_pics_flag
	mov	r0, r4	@, pH264Ctx
	bl	u_1	@
	mov	r3, #0	@ D.37313,
	strb	r0, [r7, #6]	@, <variable>.long_term_reference_flag
	mov	r0, r3	@, D.37313
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3253:
	movw	lr, #20683	@ tmp200,
	ldrb	r5, [r0, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	cmp	r5, #5	@ <variable>.CurrSlice.nal_unit_type,
	beq	.L3264	@,
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	ldrb	r5, [r6, #7]	@ zero_extendqisi2	@ D.37327, <variable>.adaptive_ref_pic_marking_mode_flag
	bl	u_1	@
	cmp	r5, r0	@ D.37327,
	beq	.L3265	@,
.L3259:
	mvn	r3, #0	@ D.37313,
.L3266:
	mov	r0, r3	@, D.37313
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3263:
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	DecMMCO	@
	cmn	r0, #1	@ D.37310,
	moveq	r2, #0	@ tmp190,
	movne	r3, #1	@ tmp198,
	streqb	r2, [r6, #4]	@ tmp190, <variable>.is_valid
	moveq	r3, r0	@ D.37313, D.37310
	movweq	r2, #26380	@ tmp192,
	strneb	r3, [r6, #4]	@ tmp198, <variable>.is_valid
	movne	r3, #0	@ D.37313,
	streq	r5, [r4, r2]	@ tmpMarkIdx, <variable>.CurrMarkIdx
	mov	r0, r3	@, D.37313
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L3264:
	movw	r1, #:lower16:.LC136	@,
	movt	r1, #:upper16:.LC136	@,
	ldrb	r5, [r6, #5]	@ zero_extendqisi2	@ D.37317, <variable>.no_output_of_prior_pics_flag
	bl	u_1	@
	cmp	r5, r0	@ D.37317,
	bne	.L3259	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC137	@,
	ldrb	r4, [r6, #6]	@ zero_extendqisi2	@ D.37322, <variable>.long_term_reference_flag
	bl	u_1	@
	cmp	r4, r0	@ D.37322,
	beq	.L3256	@,
	mvn	r3, #0	@ D.37313,
	b	.L3266	@
.L3265:
	ldrb	r0, [r6, #7]	@ zero_extendqisi2	@ <variable>.adaptive_ref_pic_marking_mode_flag, <variable>.adaptive_ref_pic_marking_mode_flag
	cmp	r0, #0	@ <variable>.adaptive_ref_pic_marking_mode_flag,
	beq	.L3256	@,
	mov	r0, r4	@, pH264Ctx
	mov	r1, r8	@, <variable>.CurrSlice.new_pic_flag
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	DecMMCO	@
	.fnend
	.size	dec_ref_pic_marking, .-dec_ref_pic_marking
	.align	2
	.global	pred_weight_table
	.type	pred_weight_table, %function
pred_weight_table:
	.fnstart
.LFB1692:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	lr, #13584	@ tmp162,
	movw	r6, #20692	@ tmp163,
	ldr	r5, [r0, lr]	@ <variable>.PPS, <variable>.PPS
	ldr	ip, [r0, r6]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	r8, #2208	@ tmp166,
	movw	r1, #13580	@ tmp168,
	mov	r7, #4000	@ tmp171,
	ldr	sl, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	movw	r1, #:lower16:.LC139	@,
	mla	r8, r8, ip, r5	@ pPPS, tmp166, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	movt	r1, #:upper16:.LC139	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	movw	r6, #20744	@ tmp174,
	mov	r5, #1	@ tmp175,
	ldr	r2, [r8, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r7, r7, r2, sl	@ pSPS, tmp171, <variable>.seq_parameter_set_id, <variable>.SPS
	bl	ue_v	@
	str	r0, [r4, r6]	@ prephitmp.7859, <variable>.CurrSlice.luma_log2_weight_denom
	mov	sl, r5, asl r0	@ y_default_weight, tmp175,
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	moveq	r5, r3	@ uv_default_weight, <variable>.chroma_format_idc
	bne	.L3289	@,
.L3269:
	cmp	r0, #7	@ prephitmp.7859,
	bls	.L3290	@,
.L3270:
	mvn	r0, #0	@ D.37144,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
.L3289:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC140	@,
	movt	r1, #:upper16:.LC140	@,
	bl	ue_v	@
	movw	r2, #20748	@ tmp178,
	mov	r3, r0	@ D.37136,
	ldr	r0, [r4, r6]	@ prephitmp.7859, <variable>.CurrSlice.luma_log2_weight_denom
	mov	r5, r5, asl r3	@ uv_default_weight, tmp175,
	str	r3, [r4, r2]	@ D.37136, <variable>.CurrSlice.chroma_log2_weight_denom
	b	.L3269	@
.L3290:
	movw	ip, #20748	@ tmp181,
	ldr	r0, [r4, ip]	@ <variable>.CurrSlice.chroma_log2_weight_denom, <variable>.CurrSlice.chroma_log2_weight_denom
	cmp	r0, #7	@ <variable>.CurrSlice.chroma_log2_weight_denom,
	bhi	.L3270	@,
	movw	r1, #52780	@ tmp183,
	ldr	r9, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r9, #0	@ <variable>.SeErrFlg,
	bne	.L3270	@,
	add	fp, r4, #20736	@ ivtmp.7888, pH264Ctx,
	add	r6, fp, #16	@ ivtmp.7888, ivtmp.7888,
	mov	fp, #20736	@ tmp244,
	b	.L3276	@
.L3272:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3291	@,
	str	r3, [r6, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_v
	str	r3, [r6, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_u
	str	r3, [r6, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l0_u
	str	r3, [r6, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l0_v
.L3275:
	ldr	lr, [r4, fp]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r9, r9, #1	@ i, i,
	add	r6, r6, #4	@ ivtmp.7888, ivtmp.7888,
	cmp	lr, r9	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, i
	bcc	.L3292	@,
.L3276:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37145
	streq	r0, [r6, #768]	@ D.37145, <variable>.CurrSlice.wp_offset_l0_y
	streq	sl, [r6, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l0_y
	beq	.L3272	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC142	@,
	movt	r1, #:upper16:.LC142	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	str	r0, [r6, #0]	@, <variable>.CurrSlice.wp_weight_l0_y
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	str	r0, [r6, #768]	@, <variable>.CurrSlice.wp_offset_l0_y
	b	.L3272	@
.L3291:
	movw	r1, #:lower16:.LC144	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC144	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37154
	bne	.L3293	@,
	str	r0, [r6, #1024]	@ D.37154, <variable>.CurrSlice.wp_offset_l0_v
	str	r5, [r6, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_u
	str	r0, [r6, #896]	@ D.37154, <variable>.CurrSlice.wp_offset_l0_u
	str	r5, [r6, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l0_v
	b	.L3275	@
.L3293:
	movw	r1, #:lower16:.LC145	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC145	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	str	r0, [r6, #128]	@, <variable>.CurrSlice.wp_weight_l0_u
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC145	@,
	movt	r1, #:upper16:.LC145	@,
	str	r0, [r6, #896]	@, <variable>.CurrSlice.wp_offset_l0_u
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC146	@,
	movt	r1, #:upper16:.LC146	@,
	str	r0, [r6, #256]	@, <variable>.CurrSlice.wp_weight_l0_v
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	str	r0, [r6, #1024]	@, <variable>.CurrSlice.wp_offset_l0_v
	b	.L3275	@
.L3292:
	ldr	r2, [r8, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	r2, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3294	@,
.L3277:
	movw	r1, #52780	@ tmp225,
	ldr	r0, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}	@
	b	.L3270	@
.L3294:
	movw	r0, #20680	@ tmp205,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3277	@,
	add	r9, r4, #20992	@ ivtmp.7878, pH264Ctx,
	mov	r8, #0	@ i.7892,
	add	r6, r9, #144	@ ivtmp.7878, ivtmp.7878,
	movw	r9, #20740	@ tmp237,
	b	.L3284	@
.L3280:
	ldr	r3, [r7, #748]	@ <variable>.chroma_format_idc, <variable>.chroma_format_idc
	cmp	r3, #0	@ <variable>.chroma_format_idc,
	bne	.L3295	@,
	str	r3, [r6, #1024]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_v
	str	r3, [r6, #128]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_u
	str	r3, [r6, #896]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_offset_l1_u
	str	r3, [r6, #256]	@ <variable>.chroma_format_idc, <variable>.CurrSlice.wp_weight_l1_v
.L3283:
	ldr	ip, [r4, r9]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r8, r8, #1	@ i.7892, i.7892,
	add	r6, r6, #4	@ ivtmp.7878, ivtmp.7878,
	cmp	ip, r8	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, i.7892
	bcc	.L3277	@,
.L3284:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC147	@,
	movt	r1, #:upper16:.LC147	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37170
	streq	r0, [r6, #768]	@ D.37170, <variable>.CurrSlice.wp_offset_l1_y
	streq	sl, [r6, #0]	@ y_default_weight, <variable>.CurrSlice.wp_weight_l1_y
	beq	.L3280	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC148	@,
	movt	r1, #:upper16:.LC148	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC149	@,
	movt	r1, #:upper16:.LC149	@,
	str	r0, [r6, #0]	@, <variable>.CurrSlice.wp_weight_l1_y
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	str	r0, [r6, #768]	@, <variable>.CurrSlice.wp_offset_l1_y
	b	.L3280	@
.L3295:
	movw	r1, #:lower16:.LC150	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC150	@,
	bl	u_1	@
	cmp	r0, #0	@ D.37178
	bne	.L3296	@,
	str	r0, [r6, #1024]	@ D.37178, <variable>.CurrSlice.wp_offset_l1_v
	str	r5, [r6, #128]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_u
	str	r0, [r6, #896]	@ D.37178, <variable>.CurrSlice.wp_offset_l1_u
	str	r5, [r6, #256]	@ uv_default_weight, <variable>.CurrSlice.wp_weight_l1_v
	b	.L3283	@
.L3296:
	movw	r1, #:lower16:.LC151	@,
	mov	r0, r4	@, pH264Ctx
	movt	r1, #:upper16:.LC151	@,
	bl	se_v	@
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	str	r0, [r6, #128]	@, <variable>.CurrSlice.wp_weight_l1_u
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC151	@,
	movt	r1, #:upper16:.LC151	@,
	str	r0, [r6, #896]	@, <variable>.CurrSlice.wp_offset_l1_u
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	movw	r1, #:lower16:.LC152	@,
	movt	r1, #:upper16:.LC152	@,
	str	r0, [r6, #256]	@, <variable>.CurrSlice.wp_weight_l1_v
	mov	r0, r4	@, pH264Ctx
	bl	se_v	@
	str	r0, [r6, #1024]	@, <variable>.CurrSlice.wp_offset_l1_v
	b	.L3283	@
	.fnend
	.size	pred_weight_table, .-pred_weight_table
	.align	2
	.global	ref_pic_list_reordering
	.type	ref_pic_list_reordering, %function
ref_pic_list_reordering:
	.fnstart
.LFB1691:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	movw	ip, #20692	@ tmp157,
	movw	r5, #13584	@ tmp159,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldr	r1, [r0, ip]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	mov	sl, #2208	@ tmp161,
	ldr	r0, [r0, r5]	@ <variable>.PPS, <variable>.PPS
	movw	r3, #20681	@ tmp173,
	movw	r2, #13580	@ tmp155,
	ldrb	ip, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	ldr	r2, [r4, r2]	@ <variable>.SPS, <variable>.SPS
	mov	r3, #0	@ tmp168,
	mla	r5, sl, r1, r0	@ tmp162, tmp161, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	cmp	ip, #0	@ <variable>.CurrSlice.field_pic_flag,
	mov	ip, #4000	@ tmp165,
	movw	r0, #19889	@ tmp170,
	movw	sl, #19888	@ tmp167,
	ldr	r1, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	strb	r3, [r4, sl]	@ tmp168, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	mov	sl, #1	@ tmp180,
	strb	r3, [r4, r0]	@ tmp168, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	mla	r5, ip, r1, r2	@ pSPS, tmp165, <variable>.seq_parameter_set_id, <variable>.SPS
	ldr	r0, [r5, #2904]	@ <variable>.log2_max_frame_num_minus4, <variable>.log2_max_frame_num_minus4
	movw	r5, #20680	@ tmp181,
	ldrb	r3, [r4, r5]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	addne	r0, r0, #5	@ tmp175, <variable>.log2_max_frame_num_minus4,
	addeq	r0, r0, #4	@ tmp178, <variable>.log2_max_frame_num_minus4,
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	mov	sl, sl, asl r0	@ MaxPicNum, tmp180,
	bls	.L3322	@,
.L3300:
	movw	r1, #52780	@ tmp228,
	ldr	r3, [r4, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3311	@,
.L3304:
	mvn	r0, #0	@ D.37059,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3311:
	mov	r0, #0	@ D.37059,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3322:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC153	@,
	movt	r1, #:upper16:.LC153	@,
	bl	u_1	@
	movw	r3, #19888	@ tmp184,
	uxtb	r2, r0	@ D.37048,
	strb	r2, [r4, r3]	@ D.37048, <variable>.CurrReorder.ref_pic_list_reordering_flag_l0
	cmp	r2, #0	@ D.37048,
	ldreqb	r3, [r4, r5]	@ zero_extendqisi2	@ prephitmp.7909, <variable>.CurrSlice.slice_type
	beq	.L3302	@,
	mov	r8, #20736	@ tmp187,
	ldr	r6, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmn	r6, #2	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	beq	.L3303	@,
	add	r7, r4, #19712	@ ivtmp.7931, pH264Ctx,
	mov	r6, #0	@ i.7937,
	add	r5, r7, #180	@ ivtmp.7931, ivtmp.7931,
	movw	r7, #52780	@ tmp239,
	b	.L3309	@
.L3325:
	ldr	lr, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3304	@,
	cmp	r3, #3	@ D.37053,
	beq	.L3323	@,
	cmp	r3, #2	@ D.37053,
	add	r6, r6, #1	@ i.7937, i.7937,
	bne	.L3324	@,
	bl	ue_v	@
	str	r0, [r5, #528]	@, <variable>.CurrReorder.long_term_pic_idx_l0
.L3308:
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r5, r5, #4	@ ivtmp.7931, ivtmp.7931,
	add	r3, ip, #2	@ prephitmp.7911, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
	cmp	r3, r6	@ prephitmp.7911, i.7937
	bls	.L3306	@,
.L3309:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC154	@,
	movt	r1, #:upper16:.LC154	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC156	@,
	movt	r1, #:upper16:.LC156	@,
	mov	r3, r0	@ D.37053,
	cmp	r3, #3	@ D.37053,
	mov	r0, r4	@, pH264Ctx
	str	r3, [r5, #0]	@ D.37053, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	bls	.L3325	@,
	b	.L3304	@
.L3323:
	mov	r0, #20736	@ tmp193,
	ldr	r1, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	add	r3, r1, #2	@ prephitmp.7911, <variable>.CurrSlice.num_ref_idx_l0_active_minus1,
.L3306:
	cmp	r6, r3	@ i.7937, prephitmp.7911
	beq	.L3310	@,
.L3320:
	movw	r1, #20680	@ tmp209,
	ldrb	r3, [r4, r1]	@ zero_extendqisi2	@ prephitmp.7909, <variable>.CurrSlice.slice_type
.L3302:
	cmp	r3, #1	@ prephitmp.7909,
	bne	.L3300	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC157	@,
	movt	r1, #:upper16:.LC157	@,
	bl	u_1	@
	movw	r3, #19889	@ tmp211,
	uxtb	r0, r0	@ D.37081,
	strb	r0, [r4, r3]	@ D.37081, <variable>.CurrReorder.ref_pic_list_reordering_flag_l1
	cmp	r0, #0	@ D.37081,
	beq	.L3300	@,
	movw	r8, #20740	@ tmp213,
	ldr	ip, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmn	ip, #2	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	beq	.L3300	@,
	add	r5, r4, #19968	@ ivtmp.7924, pH264Ctx,
	movw	r7, #52780	@ tmp234,
	add	r6, r5, #56	@ ivtmp.7924, ivtmp.7924,
	mov	r5, #0	@ i,
	b	.L3315	@
.L3328:
	ldr	r2, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3304	@,
	cmp	r3, #3	@ D.37085,
	beq	.L3311	@,
	cmp	r3, #2	@ D.37085,
	bne	.L3326	@,
	bl	ue_v	@
	str	r0, [r6, #524]	@, <variable>.CurrReorder.long_term_pic_idx_l1
.L3313:
	ldr	r1, [r4, r8]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	add	r6, r6, #4	@ ivtmp.7924, ivtmp.7924,
	add	r3, r1, #2	@ D.37103, <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	cmp	r3, r5	@ D.37103, i
	beq	.L3327	@,
.L3314:
	add	r5, r5, #1	@ i, i,
	cmp	r3, r5	@ D.37103, i
	bls	.L3300	@,
.L3315:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC158	@,
	movt	r1, #:upper16:.LC158	@,
	bl	ue_v	@
	movw	r1, #:lower16:.LC160	@,
	movt	r1, #:upper16:.LC160	@,
	mov	r3, r0	@ D.37085,
	cmp	r3, #3	@ D.37085,
	mov	r0, r4	@, pH264Ctx
	str	r3, [r6, #0]	@ D.37085, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	bls	.L3328	@,
	mvn	r0, #0	@ D.37059,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3327:
	add	r2, r5, #4992	@ tmp225, i,
	add	ip, r2, #14	@ tmp225, tmp225,
	ldr	r0, [r4, ip, asl #2]	@ tmp227, <variable>.CurrReorder.reordering_of_pic_nums_idc_l1
	cmp	r0, #3	@ tmp227,
	beq	.L3314	@,
	b	.L3304	@
.L3326:
	movw	r1, #:lower16:.LC159	@,
	movt	r1, #:upper16:.LC159	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.37093
	str	r0, [r6, #264]	@ D.37093, <variable>.CurrReorder.abs_diff_pic_num_minus1_l1
	bls	.L3304	@,
	ldr	lr, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	beq	.L3313	@,
	b	.L3304	@
.L3324:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC155	@,
	movt	r1, #:upper16:.LC155	@,
	bl	ue_v	@
	cmp	sl, r0	@ MaxPicNum, D.37063
	str	r0, [r5, #264]	@ D.37063, <variable>.CurrReorder.abs_diff_pic_num_minus1_l0
	bls	.L3304	@,
	ldr	r3, [r4, r7]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3308	@,
	b	.L3304	@
.L3303:
	mov	r6, #0	@ i.7937,
.L3310:
	add	lr, r6, #4928	@ tmp202, i.7937,
	add	r6, lr, #44	@ tmp202, tmp202,
	add	r6, r4, r6, asl #2	@, tmp206, pH264Ctx, tmp202,
	ldr	r2, [r6, #4]	@ tmp208, <variable>.CurrReorder.reordering_of_pic_nums_idc_l0
	cmp	r2, #3	@ tmp208,
	bne	.L3304	@,
	b	.L3320	@
	.fnend
	.size	ref_pic_list_reordering, .-ref_pic_list_reordering
	.align	2
	.global	ProcessSliceHeaderSecondPart
	.type	ProcessSliceHeaderSecondPart, %function
ProcessSliceHeaderSecondPart:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #13576	@ tmp152,
	movw	r3, #20692	@ tmp151,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r1, [r0, ip]	@ <variable>.MaxPpsNum, <variable>.MaxPpsNum
	ldr	r3, [r0, r3]	@ D.37481, <variable>.CurrSlice.pic_parameter_set_id
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	sub	r2, r1, #1	@ tmp153, <variable>.MaxPpsNum,
	cmp	r2, r3	@ tmp153, D.37481
	bcs	.L3354	@,
.L3330:
	mvn	r0, #0	@ D.37484,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3354:
	movw	r1, #52780	@ tmp155,
	ldr	r2, [r0, r1]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r2, #0	@ <variable>.SeErrFlg,
	bne	.L3330	@,
	mov	r7, #2208	@ tmp159,
	movw	r5, #13584	@ tmp157,
	mul	r7, r7, r3	@ tmp158, tmp159, D.37481
	ldr	r8, [r0, r5]	@ <variable>.PPS, <variable>.PPS
	add	r5, r7, r8	@ pPPS, tmp158, <variable>.PPS
	ldrb	r3, [r5, #19]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	r3, #0	@ <variable>.is_valid,
	beq	.L3330	@,
	movw	r1, #13580	@ tmp164,
	ldr	ip, [r5, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	ldr	r2, [r0, r1]	@ <variable>.SPS, <variable>.SPS
	mov	r1, #4000	@ tmp166,
	mla	r3, r1, ip, r2	@ tmp167, tmp166, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	ip, [r3, #23]	@ zero_extendqisi2	@ <variable>.is_valid, <variable>.is_valid
	cmp	ip, #0	@ <variable>.is_valid,
	beq	.L3330	@,
	movw	sl, #20680	@ tmp255,
	ldrb	r9, [r0, sl]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r9, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L3355	@,
.L3348:
	ldr	r0, [r5, #36]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.num_ref_idx_l0_active_minus1
	movw	r9, #20680	@ tmp176,
	mov	r6, #20736	@ tmp172,
	ldrb	r3, [r4, r9]	@ zero_extendqisi2	@ prephitmp.7958, <variable>.CurrSlice.slice_type
	movw	sl, #20740	@ tmp174,
	str	r0, [r4, r6]	@ <variable>.num_ref_idx_l0_active_minus1, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.7958,
	ldr	r2, [r5, #40]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.num_ref_idx_l1_active_minus1
	str	r2, [r4, sl]	@ <variable>.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bhi	.L3332	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC162	@,
	movt	r1, #:upper16:.LC162	@,
	bl	u_1	@
	cmp	r0, #0	@,
	ldreq	r3, [r4, r6]	@ prephitmp.7960, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3356	@,
.L3334:
	movw	lr, #20681	@ tmp186,
	ldrb	r2, [r4, lr]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r2, #0	@ <variable>.CurrSlice.field_pic_flag,
	bne	.L3335	@,
	cmp	r3, #15	@ prephitmp.7960,
	bhi	.L3330	@,
	movw	r0, #20740	@ tmp188,
	ldr	r3, [r4, r0]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	r3, #15	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3337	@,
.L3353:
	movw	r0, #20680	@ tmp197,
	ldrb	r3, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r3, #1	@ <variable>.CurrSlice.slice_type,
	beq	.L3330	@,
.L3337:
	movw	lr, #52780	@ tmp199,
	ldr	ip, [r4, lr]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3330	@,
	movw	r3, #20680	@ tmp201,
	ldrb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.7958, <variable>.CurrSlice.slice_type
.L3332:
	cmp	r3, #2	@ prephitmp.7958,
	mov	r0, r4	@, pH264Ctx
	movweq	r3, #20680	@ tmp204,
	moveq	r2, #20736	@ tmp202,
	ldreqb	r3, [r4, r3]	@ zero_extendqisi2	@ prephitmp.7958, <variable>.CurrSlice.slice_type
	moveq	r1, #32	@ tmp203,
	streq	r1, [r4, r2]	@ tmp203, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	cmp	r3, #1	@ prephitmp.7958,
	movwne	r3, #20740	@ tmp205,
	movne	r2, #32	@ tmp206,
	strne	r2, [r4, r3]	@ tmp206, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	bl	ref_pic_list_reordering	@
	cmp	r0, #0	@,
	bne	.L3330	@,
	ldrb	r2, [r5, #2]	@ zero_extendqisi2	@ <variable>.weighted_pred_flag, <variable>.weighted_pred_flag
	cmp	r2, #0	@ <variable>.weighted_pred_flag,
	beq	.L3340	@,
	movw	r0, #20680	@ tmp208,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #0	@ <variable>.CurrSlice.slice_type,
	bne	.L3340	@,
.L3341:
	movw	r0, #20748	@ tmp218,
	sub	lr, r0, #61	@ tmp213, tmp213,
	add	r2, lr, #57	@ tmp216, tmp216,
	mov	ip, #0	@ tmp217,
	mov	r1, #1	@ tmp214,
	str	ip, [r4, r0]	@ tmp217, <variable>.CurrSlice.chroma_log2_weight_denom
	strb	r1, [r4, lr]	@ tmp214, <variable>.CurrSlice.apply_weights_flag
	mov	r0, r4	@, pH264Ctx
	str	ip, [r4, r2]	@ tmp217, <variable>.CurrSlice.luma_log2_weight_denom
	bl	pred_weight_table	@
	cmp	r0, #0	@,
	bne	.L3330	@,
.L3349:
	movw	r2, #20712	@ tmp220,
	ldr	r3, [r4, r2]	@ <variable>.CurrSlice.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	cmp	r3, #0	@ <variable>.CurrSlice.nal_ref_idc,
	bne	.L3357	@,
.L3343:
	movw	r6, #22288	@ tmp222,
	mov	lr, #0	@ tmp223,
	str	lr, [r4, r6]	@ tmp223, <variable>.CurrSlice.cabac_init_idc
	ldrb	ip, [r7, r8]	@ zero_extendqisi2	@ <variable>.entropy_coding_mode_flag, <variable>.entropy_coding_mode_flag
	cmp	ip, #0	@ <variable>.entropy_coding_mode_flag,
	beq	.L3344	@,
	movw	r0, #20680	@ tmp225,
	ldrb	r1, [r4, r0]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	r1, #1	@ <variable>.CurrSlice.slice_type,
	bls	.L3358	@,
.L3344:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC166	@,
	movt	r1, #:upper16:.LC166	@,
	movw	r8, #22296	@ tmp233,
	bl	se_v	@
	movw	r7, #22300	@ tmp235,
	movw	r6, #22304	@ tmp237,
	movw	r1, #22292	@ tmp232,
	mov	r3, #0	@ tmp234,
	str	r3, [r4, r6]	@ tmp234, <variable>.CurrSlice.slice_beta_offset_div2
	str	r3, [r4, r8]	@ tmp234, <variable>.CurrSlice.disable_deblocking_filter_idc
	str	r3, [r4, r7]	@ tmp234, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	str	r0, [r4, r1]	@, <variable>.CurrSlice.slice_qp_delta
	ldrb	ip, [r5, #3]	@ zero_extendqisi2	@ <variable>.deblocking_filter_control_present_flag, <variable>.deblocking_filter_control_present_flag
	cmp	ip, #0	@ <variable>.deblocking_filter_control_present_flag,
	bne	.L3359	@,
.L3345:
	mov	r0, #0	@ D.37484,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}	@
.L3335:
	cmp	r3, #31	@ prephitmp.7960,
	bhi	.L3330	@,
	movw	lr, #20740	@ tmp195,
	ldr	ip, [r4, lr]	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	cmp	ip, #31	@ <variable>.CurrSlice.num_ref_idx_l1_active_minus1,
	bls	.L3337	@,
	b	.L3353	@
.L3356:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	bl	ue_v	@
	ldrb	ip, [r4, r9]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	ip, #1	@ <variable>.CurrSlice.slice_type,
	mov	r3, r0	@ prephitmp.7960,
	str	r0, [r4, r6]	@ prephitmp.7960, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	bne	.L3334	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC164	@,
	movt	r1, #:upper16:.LC164	@,
	bl	ue_v	@
	ldr	r3, [r4, r6]	@ prephitmp.7960, <variable>.CurrSlice.num_ref_idx_l0_active_minus1
	str	r0, [r4, sl]	@, <variable>.CurrSlice.num_ref_idx_l1_active_minus1
	b	.L3334	@
.L3340:
	ldr	ip, [r5, #44]	@ <variable>.weighted_bipred_idc, <variable>.weighted_bipred_idc
	cmp	ip, #1	@ <variable>.weighted_bipred_idc,
	beq	.L3360	@,
.L3342:
	movw	r0, #20748	@ tmp262,
	sub	r2, r0, #61	@ tmp257, tmp257,
	add	lr, r2, #57	@ tmp260, tmp260,
	mov	r3, #0	@ tmp258,
	str	r3, [r4, r0]	@ tmp258, <variable>.CurrSlice.chroma_log2_weight_denom
	strb	r3, [r4, r2]	@ tmp258, <variable>.CurrSlice.apply_weights_flag
	str	r3, [r4, lr]	@ tmp258, <variable>.CurrSlice.luma_log2_weight_denom
	b	.L3349	@
.L3355:
	movw	r1, #:lower16:.LC161	@,
	movt	r1, #:upper16:.LC161	@,
	bl	u_1	@
	movw	r6, #20686	@ tmp170,
	strb	r0, [r4, r6]	@, <variable>.CurrSlice.direct_spatial_mv_pred_flag
	b	.L3348	@
.L3359:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC167	@,
	movt	r1, #:upper16:.LC167	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.37565,
	str	r0, [r4, r8]	@ D.37565, <variable>.CurrSlice.disable_deblocking_filter_idc
	bhi	.L3330	@,
	movw	r5, #52780	@ tmp242,
	ldr	lr, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	lr, #0	@ <variable>.SeErrFlg,
	bne	.L3330	@,
	cmp	r0, #1	@ D.37565,
	beq	.L3345	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC168	@,
	movt	r1, #:upper16:.LC168	@,
	bl	se_v	@
	add	r2, r0, #6	@ tmp246, D.37572,
	str	r0, [r4, r7]	@ D.37572, <variable>.CurrSlice.slice_alpha_c0_offset_div2
	cmp	r2, #12	@ tmp246,
	bhi	.L3330	@,
	ldr	r0, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r0, #0	@ <variable>.SeErrFlg,
	bne	.L3330	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	se_v	@
	add	ip, r0, #6	@ tmp251, D.37579,
	str	r0, [r4, r6]	@ D.37579, <variable>.CurrSlice.slice_beta_offset_div2
	cmp	ip, #12	@ tmp251,
	bhi	.L3330	@,
	ldr	r1, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r1, #0	@ <variable>.SeErrFlg,
	beq	.L3345	@,
	b	.L3330	@
.L3357:
	mov	r0, r4	@, pH264Ctx
	bl	dec_ref_pic_marking	@
	cmp	r0, #0	@,
	beq	.L3343	@,
	b	.L3330	@
.L3358:
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC165	@,
	movt	r1, #:upper16:.LC165	@,
	bl	ue_v	@
	cmp	r0, #2	@ D.37556,
	str	r0, [r4, r6]	@ D.37556, <variable>.CurrSlice.cabac_init_idc
	bhi	.L3330	@,
	movw	r2, #52780	@ tmp229,
	ldr	r3, [r4, r2]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	r3, #0	@ <variable>.SeErrFlg,
	beq	.L3344	@,
	b	.L3330	@
.L3360:
	movw	r3, #20680	@ tmp211,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.slice_type, <variable>.CurrSlice.slice_type
	cmp	lr, #1	@ <variable>.CurrSlice.slice_type,
	bne	.L3342	@,
	b	.L3341	@
	.fnend
	.size	ProcessSliceHeaderSecondPart, .-ProcessSliceHeaderSecondPart
	.align	2
	.global	H264_DecSlice
	.type	H264_DecSlice, %function
H264_DecSlice:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	ip, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	lr, #20683	@ tmp162,
	movw	r3, #20712	@ tmp166,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r0, lr]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r0, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3365	@,
	mov	r0, r4	@, pH264Ctx
	bl	ProcessSliceHeaderSecondPart	@
	cmp	r0, #0	@,
	bne	.L3365	@,
	movw	r0, #52764	@ tmp173,
	ldr	r6, [r4, r0]	@ temp.8031, <variable>.SliceParaNum
	cmp	r6, #0	@ temp.8031,
	moveq	r8, r6	@ Size, temp.8031
	beq	.L3367	@,
	add	r3, r4, #50688	@ tmp179, pH264Ctx,
	mov	r6, r6, asl #2	@ D.48197, temp.8031,
	add	r8, r3, #16	@ tmp179, tmp179,
	sub	r0, r6, #4	@ tmp235, D.48197,
	ubfx	r0, r0, #2, #1	@ tmp236, tmp235,,
	ldr	r1, [r8, #0]	@ D.37739, <variable>.pSliceNal
	ldr	r2, [r1, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r2, #0	@ Addr0,
	ldrne	lr, [r1, #12]	@ Size0, <variable>.bitstream_length
	beq	.L3444	@,
.L3417:
	ldr	r3, [r1, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r3, #0	@ Addr1,
	ldrne	r1, [r1, #40]	@ Size1, <variable>.bitstream_length
	moveq	r1, r3	@ Size1, Addr1
	cmp	r3, #0	@ Addr1,
	add	r8, lr, r1	@ Size, Size0, Size1
	movne	r2, r3	@ PrevNalAddr, Addr1
	movne	lr, r1	@ PrevNalSize, Size1
	mov	r3, #4	@ ivtmp.8015,
	cmp	r3, r6	@ ivtmp.8015, D.48197
	beq	.L3367	@,
	cmp	r0, #0	@ tmp236,
	beq	.L3379	@,
	add	r1, r4, r3	@ tmp265, pH264Ctx, ivtmp.8015
	add	r0, r1, #50688	@ tmp267, tmp265,
	add	ip, r0, #16	@ tmp267, tmp267,
	ldr	r0, [ip, #0]	@ D.37739, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r5, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r5, ip	@ Size0, Addr0
	cmp	r1, #0	@ Addr1,
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	moveq	r0, r1	@ Size1, Addr1
	cmp	r2, #0	@ PrevNalAddr,
	addeq	r8, r5, r8	@ D.37759, Size0, Size
	addeq	r8, r8, r0	@ Size, D.37759, Size1
	bne	.L3445	@,
.L3427:
	cmp	r1, #0	@ Addr1,
	moveq	r2, ip	@ PrevNalAddr, Addr0
	moveq	lr, r5	@ PrevNalSize, Size0
	movne	r2, r1	@ PrevNalAddr, Addr1
	movne	lr, r0	@ PrevNalSize, Size1
	b	.L3440	@
.L3410:
	rsb	r7, r7, r0	@ tmp286, PrevNalSize, Addr0
	rsb	ip, ip, r7	@ tmp287, PrevNalAddr, tmp286
	add	ip, ip, r5	@ Size0.8017, tmp287, Size0
.L3438:
	add	r1, lr, r8	@ Size.8022, Size1, Size
	add	r8, r1, ip	@ Size, Size.8022, Size0.8017
.L3436:
	cmp	r2, #0	@ Addr1,
	moveq	r2, r0	@ PrevNalAddr, Addr0
	moveq	lr, r5	@ PrevNalSize, Size0
.L3440:
	add	r3, r3, #4	@ ivtmp.8015, tmp237,
	cmp	r3, r6	@ ivtmp.8015, D.48197
	beq	.L3367	@,
.L3379:
	add	r1, r4, r3	@ tmp240, pH264Ctx, ivtmp.8015
	add	ip, r1, #50688	@ tmp241, tmp240,
	ldr	r0, [ip, #16]	@ D.37739, <variable>.pSliceNal
	ldr	ip, [r0, #8]	@ Addr0, <variable>.streamBuffer
	ldr	r1, [r0, #36]	@ Addr1, <variable>.streamBuffer
	cmp	ip, #0	@ Addr0,
	ldrne	r7, [r0, #12]	@ Size0, <variable>.bitstream_length
	moveq	r7, ip	@ Size0, Addr0
	cmp	r1, #0	@ Addr1,
	moveq	r0, r1	@ Size1, Addr1
	ldrne	r0, [r0, #40]	@ Size1, <variable>.bitstream_length
	cmp	r2, #0	@ PrevNalAddr,
	addeq	r8, r7, r8	@ D.37759, Size0, Size
	addeq	r8, r8, r0	@ Size, D.37759, Size1
	beq	.L3376	@,
	cmp	r2, ip	@ PrevNalAddr, Addr0
	rsbcc	r2, r2, ip	@ tmp182, PrevNalAddr, Addr0
	rsbcc	lr, lr, r2	@ tmp183, PrevNalSize, tmp182
	add	r2, r0, r8	@ Size.8022, Size1, Size
	addcc	lr, lr, r7	@ Size0.8017, tmp183, Size0
	movcs	lr, r7	@ Size0.8017, Size0
	add	r8, r2, lr	@ Size, Size.8022, Size0.8017
.L3376:
	cmp	r1, #0	@ Addr1,
	add	r3, r3, #4	@ tmp237, ivtmp.8015,
	movne	ip, r1	@ PrevNalAddr, Addr1
	add	r1, r4, r3	@ tmp251, pH264Ctx, tmp237
	movne	r7, r0	@ PrevNalSize, Size1
	add	r0, r1, #50688	@ tmp252, tmp251,
	ldr	r1, [r0, #16]	@ D.37739, <variable>.pSliceNal
	ldr	r0, [r1, #8]	@ Addr0, <variable>.streamBuffer
	cmp	r0, #0	@ Addr0,
	ldrne	r5, [r1, #12]	@ Size0, <variable>.bitstream_length
	moveq	r5, r0	@ Size0, Addr0
.L3432:
	ldr	r2, [r1, #36]	@ Addr1, <variable>.streamBuffer
	cmp	r2, #0	@ Addr1,
	ldrne	lr, [r1, #40]	@ Size1, <variable>.bitstream_length
	moveq	lr, r2	@ Size1, Addr1
	cmp	ip, #0	@ PrevNalAddr,
	addeq	r8, r5, r8	@ D.37759, Size0, Size
	addeq	r8, r8, lr	@ Size, D.37759, Size1
	beq	.L3436	@,
	cmp	ip, r0	@ PrevNalAddr, Addr0
	bcc	.L3410	@,
	mov	ip, r5	@ Size0.8017, Size0
	b	.L3438	@
.L3367:
	movw	r1, #50164	@ tmp185,
	movw	r2, #50160	@ tmp186,
	ldr	r3, [r4, r1]	@ <variable>.CurrPic.pic_height_in_mb, <variable>.CurrPic.pic_height_in_mb
	movw	lr, #1620	@ tmp189,
	ldr	ip, [r4, r2]	@ <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_width_in_mb
	movw	r0, #52824	@ tmp184,
	str	r8, [r4, r0]	@ Size, <variable>.MaxBytesReceived
	mul	r3, ip, r3	@ TotalMbs, <variable>.CurrPic.pic_width_in_mb, <variable>.CurrPic.pic_height_in_mb
	cmp	r3, lr	@ TotalMbs, tmp189
	movgt	r3, r3, asl #7	@ MaxStreamThr, TotalMbs,
	ble	.L3446	@,
.L3381:
	movw	r0, #52764	@ tmp195,
	mov	ip, #13568	@ tmp196,
	ldr	r1, [r4, r0]	@ D.37768, <variable>.SliceParaNum
	ldr	r2, [r4, ip]	@ <variable>.MaxSliceNum, <variable>.MaxSliceNum
	cmp	r1, r2	@ D.37768, <variable>.MaxSliceNum
	bcs	.L3383	@,
	cmp	r8, r3	@ Size, MaxStreamThr
	bhi	.L3384	@,
	movw	r3, #20685	@ tmp203,
	ldrb	r1, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	cmp	r1, #0	@ <variable>.CurrSlice.new_pic_flag,
	beq	.L3386	@,
	movw	r3, #20683	@ tmp205,
	movw	r1, #52820	@ tmp210,
	ldrb	lr, [r4, r3]	@ zero_extendqisi2	@ <variable>.CurrSlice.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	mov	ip, #0	@ tmp211,
	str	ip, [r4, r1]	@ tmp211, <variable>.SliceNumInPic
	cmp	lr, #5	@ <variable>.CurrSlice.nal_unit_type,
	movweq	lr, #52804	@ tmp208,
	ldreq	r2, [r4, lr]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	movweq	lr, #52816	@ tmp207,
	streq	r2, [r4, lr]	@ <variable>.TotalPicNum, <variable>.IDRPicOfCurrPic
	movw	r2, #49707	@ tmp216,
	ldrb	r0, [r4, r2]	@ zero_extendqisi2	@ <variable>.CurrPic.structure, <variable>.CurrPic.structure
	movw	lr, #52804	@ tmp212,
	ldr	r3, [r4, lr]	@ <variable>.TotalPicNum, <variable>.TotalPicNum
	cmp	r0, #0	@ <variable>.CurrPic.structure,
	add	r2, r3, #1	@ tmp215, <variable>.TotalPicNum,
	str	r2, [r4, lr]	@ tmp215, <variable>.TotalPicNum
	movweq	lr, #52808	@ tmp218,
	movwne	lr, #52812	@ tmp222,
	ldr	r0, [r4, lr]	@ <variable>.TotalFieldNum,
	add	ip, r0, #1	@ tmp225, <variable>.TotalFieldNum,
	mov	r0, r4	@, pH264Ctx
	str	ip, [r4, lr]	@ tmp225,
	bl	InitPic	@
	cmp	r0, #0	@,
	beq	.L3447	@,
.L3390:
	mvn	r0, #0	@ D.37732,
.L3364:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L3446:
	add	r3, r3, r3, asl #1	@, tmp192, TotalMbs, TotalMbs,
	movw	lr, #32769	@ tmp194,
	mov	r3, r3, asl #8	@ tmp193, tmp192,
	cmp	r3, lr	@ tmp193, tmp194
	movgt	r3, r3, asr #1	@ MaxStreamThr, tmp193,
	movle	r3, #16384	@ MaxStreamThr,
	b	.L3381	@
.L3444:
	mov	lr, r2	@ Size0, Addr0
	b	.L3417	@
.L3445:
	cmp	r2, ip	@ PrevNalAddr, Addr0
	bcs	.L3448	@,
	rsb	lr, lr, ip	@ tmp277, PrevNalSize, Addr0
	rsb	r2, r2, lr	@ tmp278, PrevNalAddr, tmp277
	add	r2, r2, r5	@ Size0.8017, tmp278, Size0
.L3429:
	add	r8, r0, r8	@ Size.8022, Size1, Size
	add	r8, r8, r2	@ Size, Size.8022, Size0.8017
	b	.L3427	@
.L3447:
	mov	r0, r4	@, pH264Ctx
	bl	WritePicMsg	@
.L3386:
	mov	r0, r4	@, pH264Ctx
	bl	PicTypeStatistic	@
	mov	r0, r4	@, pH264Ctx
	bl	DecList	@
	cmp	r0, #0	@,
	bne	.L3390	@,
	mov	r0, r4	@, pH264Ctx
	bl	IsRefListWrong	@
	subs	r5, r0, #0	@ ret.8026,
	bne	.L3441	@,
	mov	r0, r4	@, pH264Ctx
	bl	CalcStreamBits	@
	mov	r0, r4	@, pH264Ctx
	bl	WriteSliceMsg	@
	mov	r0, r4	@, pH264Ctx
	bl	ExitSlice	@
	movw	r3, #52820	@ tmp228,
	ldr	r2, [r4, r3]	@ <variable>.SliceNumInPic, <variable>.SliceNumInPic
	movw	r1, #51324	@ tmp226,
	mov	ip, #1	@ tmp227,
	mov	r0, r5	@ D.37732, ret.8026
	str	ip, [r4, r1]	@ tmp227, <variable>.AllowStartDec
	add	r1, r2, ip	@ tmp231, <variable>.SliceNumInPic,
	str	r1, [r4, r3]	@ tmp231, <variable>.SliceNumInPic
	b	.L3364	@
.L3448:
	mov	r2, r5	@ Size0.8017, Size0
	b	.L3429	@
.L3365:
	movw	r2, #:lower16:g_event_report	@ tmp174,
	movt	r2, #:upper16:g_event_report	@ tmp174,
	ldr	r3, [r2, #0]	@ g_event_report.8020, g_event_report
	cmp	r3, #0	@ g_event_report.8020,
	beq	.L3441	@,
	add	lr, sp, #8	@ tmp177,,
	movw	r1, #52840	@ tmp176,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	mvn	ip, #0	@ tmp175,
	mov	r2, sp	@,
	str	ip, [lr, #-8]!	@ tmp175,
	add	r1, ip, #101	@,,
	blx	r3	@ g_event_report.8020
.L3441:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	mvn	r0, #0	@ D.37732,
	b	.L3364	@
.L3383:
	movw	lr, #:lower16:g_event_report	@ tmp198,
	movt	lr, #:upper16:g_event_report	@ tmp198,
	ldr	r3, [lr, #0]	@ g_event_report.8027, g_event_report
	cmp	r3, #0	@ g_event_report.8027,
	beq	.L3384	@,
	str	r2, [sp, #4]	@ <variable>.MaxSliceNum, para
	movw	r2, #52840	@ tmp201,
	str	r1, [sp, #0]	@ D.37768, para
	mov	r1, #108	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, sp	@,
	blx	r3	@ g_event_report.8027
.L3384:
	mov	r0, r4	@, pH264Ctx
	bl	H264_ClearCurrPic	@
	mvn	r0, #0	@ D.37732,
	b	.L3364	@
	.fnend
	.size	H264_DecSlice, .-H264_DecSlice
	.align	2
	.global	SliceCheck
	.type	SliceCheck, %function
SliceCheck:
	.fnstart
.LFB1687:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	bl	ue_v	@
	movw	r5, #52780	@ tmp140,
	ldr	r3, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	movw	r2, #20732	@ tmp139,
	cmp	r3, #0	@ <variable>.SeErrFlg,
	str	r0, [r4, r2]	@ D.36894, <variable>.CurrSlice.first_mb_in_slice
	beq	.L3456	@,
.L3450:
	mvn	r0, #0	@ D.36898,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L3456:
	cmp	r0, #262144	@ D.36894,
	bcs	.L3450	@,
	movw	r1, #13560	@ tmp144,
	movw	r3, #13564	@ tmp143,
	ldr	r2, [r4, r1]	@ <variable>.CurWidthInMb, <variable>.CurWidthInMb
	ldr	lr, [r4, r3]	@ <variable>.CurHeightInMb, <variable>.CurHeightInMb
	mul	ip, r2, lr	@ tmp145, <variable>.CurWidthInMb, <variable>.CurHeightInMb
	sub	r1, ip, #1	@ tmp148, tmp145,
	cmp	r0, r1	@ D.36894, tmp148
	bhi	.L3450	@,
	mov	r0, r4	@, pH264Ctx
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	bl	ue_v	@
	ldr	ip, [r4, r5]	@ <variable>.SeErrFlg, <variable>.SeErrFlg
	cmp	ip, #0	@ <variable>.SeErrFlg,
	bne	.L3450	@,
	cmp	r0, #9	@ SliceType,
	bhi	.L3450	@,
	mov	r2, #1	@ tmp153,
	mov	r3, r2, asl r0	@ tmp152, tmp153,
	ands	r1, r3, #660	@ tmp154, tmp152,
	bne	.L3453	@,
	movw	r0, #:lower16:297	@ tmp155,
	movt	r0, #:upper16:297	@ tmp155,
	and	r0, r3, r0	@ tmp155, tmp152, tmp155
	cmp	r0, #0	@ tmp155,
	bne	.L3451	@,
	tst	r3, #66	@ tmp152,
	movwne	r3, #20680	@ tmp164,
	strneb	r2, [r4, r3]	@ tmp153, <variable>.CurrSlice.slice_type
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	b	.L3450	@
.L3453:
	movw	lr, #20680	@ tmp158,
	mov	r0, ip	@ D.36898, <variable>.SeErrFlg
	mov	ip, #2	@ tmp159,
	strb	ip, [r4, lr]	@ tmp159, <variable>.CurrSlice.slice_type
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L3451:
	movw	r2, #20680	@ tmp161,
	mov	r0, r1	@ D.36898, tmp154
	strb	r1, [r4, r2]	@ tmp154, <variable>.CurrSlice.slice_type
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	SliceCheck, .-SliceCheck
	.align	2
	.global	InquireSliceProperty
	.type	InquireSliceProperty, %function
InquireSliceProperty:
	.fnstart
.LFB1723:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, sl, lr}
	mov	r6, r2	@ IsSizeChanged, IsSizeChanged
	mov	r2, #0	@ tmp147,
	str	r2, [r6, #0]	@ tmp147,* IsSizeChanged
	str	r2, [r1, #0]	@ tmp147,* IsNewPic
	mov	r4, r1	@ IsNewPic, IsNewPic
	ldr	ip, [r0, #368]	@ D.39924, <variable>.pCurrNal
	movw	lr, #20683	@ tmp149,
	movw	r3, #20712	@ tmp152,
	mov	r5, r0	@ pH264Ctx, pH264Ctx
	ldrb	r1, [ip, #2]	@ zero_extendqisi2	@ <variable>.nal_unit_type, <variable>.nal_unit_type
	strb	r1, [r0, lr]	@ <variable>.nal_unit_type, <variable>.CurrSlice.nal_unit_type
	ldr	r2, [ip, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r2, [r0, r3]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	cmp	r0, #0	@,
	beq	.L3465	@,
.L3458:
	mvn	r0, #0	@ D.39930,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
.L3465:
	mov	r0, r5	@, pH264Ctx
	bl	ProcessSliceHeaderFirstPart	@
	cmp	r0, #0	@,
	bne	.L3458	@,
	movw	r7, #20685	@ tmp154,
	movw	r3, #20692	@ tmp159,
	ldrb	sl, [r5, r7]	@ zero_extendqisi2	@ <variable>.CurrSlice.new_pic_flag, <variable>.CurrSlice.new_pic_flag
	movw	lr, #13584	@ tmp161,
	mov	ip, #2208	@ tmp163,
	movw	r8, #13580	@ tmp157,
	cmp	sl, #1	@ <variable>.CurrSlice.new_pic_flag,
	movne	r2, #0	@, tmp156
	moveq	r2, #1	@, tmp156
	str	r2, [r4, #0]	@ tmp156,* IsNewPic
	ldr	r7, [r5, r3]	@ <variable>.CurrSlice.pic_parameter_set_id, <variable>.CurrSlice.pic_parameter_set_id
	movw	sl, #13564	@ tmp170,
	ldr	r1, [r5, lr]	@ <variable>.PPS, <variable>.PPS
	mov	lr, #4000	@ tmp167,
	ldr	r2, [r5, r8]	@ <variable>.SPS, <variable>.SPS
	movw	r0, #13560	@ tmp169,
	ldr	r0, [r5, r0]	@ oldw, <variable>.CurWidthInMb
	mla	r4, ip, r7, r1	@ tmp164, tmp163, <variable>.CurrSlice.pic_parameter_set_id, <variable>.PPS
	ldr	ip, [r5, sl]	@ oldh, <variable>.CurHeightInMb
	mov	r7, r0, asl #4	@ tmp179, oldw,
	mov	sl, ip, asl #4	@ tmp177, oldh,
	ldr	r3, [r4, #28]	@ <variable>.seq_parameter_set_id, <variable>.seq_parameter_set_id
	mla	r3, lr, r3, r2	@ pSPS, tmp167, <variable>.seq_parameter_set_id, <variable>.SPS
	ldrb	r8, [r3, #18]	@ zero_extendqisi2	@ <variable>.frame_mbs_only_flag, <variable>.frame_mbs_only_flag
	ldr	r4, [r3, #3960]	@ <variable>.pic_height_in_map_units_minus1, <variable>.pic_height_in_map_units_minus1
	rsb	r2, r8, #2	@ tmp173, <variable>.frame_mbs_only_flag,
	ldr	r1, [r3, #3956]	@ <variable>.pic_width_in_mbs_minus1, <variable>.pic_width_in_mbs_minus1
	movw	r8, #52880	@ tmp176,
	mla	lr, r4, r2, r2	@ newh, <variable>.pic_height_in_map_units_minus1, tmp173, tmp173
	add	r1, r1, #1	@ neww, <variable>.pic_width_in_mbs_minus1,
	movw	r4, #52876	@ tmp178,
	str	sl, [r5, r8]	@ tmp177, <variable>.DSD_OldHeight
	str	r7, [r5, r4]	@ tmp179, <variable>.DSD_OldWidth
	movw	r4, #52884	@ tmp180,
	cmp	r0, r1	@ oldw, neww
	cmpeq	ip, lr	@, oldh, newh
	movw	r0, #52888	@ tmp182,
	mov	r7, r1, asl #4	@ tmp181, neww,
	str	r7, [r5, r4]	@ tmp181, <variable>.DSD_NewWidth
	mov	r2, lr, asl #4	@ tmp183, newh,
	str	r2, [r5, r0]	@ tmp183, <variable>.DSD_NewHeight
	ldreq	r2, [r6, #0]	@ cstore.8068,* IsSizeChanged
	mov	lr, #26624	@ tmp191,
	movne	r2, #1	@ cstore.8068,
	str	r2, [r6, #0]	@ cstore.8068,* IsSizeChanged
	ldr	r1, [r5, lr]	@ <variable>.DPB.size, <variable>.DPB.size
	ldr	ip, [r3, #3980]	@ <variable>.dpb_size_plus1, <variable>.dpb_size_plus1
	add	r0, r1, #1	@ tmp192, <variable>.DPB.size,
	cmp	ip, r0	@ <variable>.dpb_size_plus1, tmp192
	movhi	r0, #1	@ tmp195,
	strhi	r0, [r6, #0]	@ tmp195,* IsSizeChanged
	mov	r0, #0	@ D.39930,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, sl, pc}	@
	.fnend
	.size	InquireSliceProperty, .-InquireSliceProperty
	.align	2
	.global	H264_DecOneNal
	.type	H264_DecOneNal, %function
H264_DecOneNal:
	.fnstart
.LFB1717:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r2, [r0, #368]	@ temp.8118, <variable>.pCurrNal
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	mov	r7, r1	@ NalMode, NalMode
	ldr	r3, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r3, #0	@ <variable>.nal_segment,
	beq	.L3467	@,
	movw	ip, #52824	@ tmp184,
	mov	r3, #0	@ i,
	ldr	r1, [r0, ip]	@ prephitmp.8098, <variable>.MaxBytesReceived
.L3468:
	rsb	lr, r3, r3, asl #3	@, tmp188, i, i,
	add	r3, r3, #1	@ i, i,
	add	r6, r2, lr, asl #2	@, tmp190, temp.8118, tmp188,
	ldr	r5, [r6, #12]	@ <variable>.bitstream_length, <variable>.bitstream_length
	add	r1, r1, r5	@ prephitmp.8098, prephitmp.8098, <variable>.bitstream_length
	str	r1, [r4, ip]	@ prephitmp.8098, <variable>.MaxBytesReceived
	ldr	r0, [r2, #68]	@ <variable>.nal_segment, <variable>.nal_segment
	cmp	r0, r3	@ <variable>.nal_segment, i
	bhi	.L3468	@,
.L3467:
	add	r0, r4, #13504	@ D.39626, pH264Ctx,
	mov	r6, #0	@ tmp195,
	add	r5, r0, #24	@ D.39626, D.39626,
	strb	r6, [r2, #0]	@ tmp195, <variable>.nal_used_segment
	mov	r1, #32	@,
	mov	r0, r5	@, D.39626
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	movw	r2, #52784	@ tmp212,
	and	lr, r0, #31	@ tmp200, nal_header,
	strb	lr, [r3, #2]	@ tmp200, <variable>.nal_unit_type
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ubfx	ip, r0, #5, #2	@ tmp204, nal_header,,
	ubfx	r1, r0, #7, #1	@ tmp207, nal_header,,
	str	ip, [r3, #76]	@ tmp204, <variable>.nal_ref_idc
	ldr	ip, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	str	r1, [ip, #80]	@ tmp207, <variable>.forbidden_bit
	movw	ip, #52780	@ tmp210,
	ldr	r3, [r4, #368]	@ temp.8116, <variable>.pCurrNal
	ldr	lr, [r3, #64]	@ <variable>.nal_bitoffset, <variable>.nal_bitoffset
	add	r1, lr, #32	@ tmp209, <variable>.nal_bitoffset,
	str	r1, [r3, #64]	@ tmp209, <variable>.nal_bitoffset
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	ldr	lr, [r4, r2]	@ <variable>.TotalNal, <variable>.TotalNal
	str	r6, [r4, ip]	@ tmp195, <variable>.SeErrFlg
	add	r1, lr, #1	@ tmp215, <variable>.TotalNal,
	str	r1, [r4, r2]	@ tmp215, <variable>.TotalNal
	ldrb	r1, [r3, #2]	@ zero_extendqisi2	@ D.39640, <variable>.nal_unit_type
	sub	r2, r1, #1	@ tmp217, D.39640,
	cmp	r2, #29	@ tmp217,
	ldrls	pc, [pc, r2, asl #2]	@ tmp217
	b	.L3469	@
.L3481:
	.word	.L3470
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3470
	.word	.L3471
	.word	.L3472
	.word	.L3473
	.word	.L3479
	.word	.L3479
	.word	.L3476
	.word	.L3479
	.word	.L3479
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3479
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3469
	.word	.L3480
.L3476:
	mov	r1, #32	@,
	mov	r0, r5	@, D.39626
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.39685,
	mov	r0, r5	@, D.39626
	bl	BsGet	@
	movw	r2, #:lower16:1128615492	@ tmp285,
	movw	r3, #:lower16:1213419593	@ tmp288,
	movt	r2, #:upper16:1128615492	@ tmp285,
	movt	r3, #:upper16:1213419593	@ tmp288,
	cmp	r0, r2	@, tmp285
	cmpeq	r6, r3	@, D.39685, tmp288
	bne	.L3479	@,
	movw	r5, #:lower16:g_event_report	@ tmp343,
	movt	r5, #:upper16:g_event_report	@ tmp343,
	movw	ip, #13556	@ tmp293,
	mov	r6, #1	@ tmp294,
	strb	r6, [r4, ip]	@ tmp294, <variable>.IsStreamEndFlag
	ldr	r3, [r5, #0]	@ g_event_report.8141, g_event_report
	cmp	r3, #0	@ g_event_report.8141,
	beq	.L3497	@,
	movw	lr, #52840	@ tmp297,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8141
.L3497:
	mov	r6, #0	@ tmp299,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp299, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3513	@,
.L3479:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	mov	r0, #0	@ D.39650,
.L3484:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L3480:
	cmp	r7, #0	@ NalMode,
	beq	.L3516	@,
.L3498:
	mov	r1, #32	@,
	mov	r0, r5	@, D.39626
	bl	BsGet	@
	mov	r1, #32	@,
	mov	r6, r0	@ D.39701,
	mov	r0, r5	@, D.39626
	bl	BsGet	@
	ldr	r3, .L3518	@ tmp316,
	and	r5, r6, #65280	@ tmp306, D.39701,
	mov	r1, r6, asl #24	@ tmp304, D.39701,
	orr	r1, r1, r6, lsr #24	@, tmp305, tmp304, D.39701,
	and	r6, r6, #16711680	@ tmp302, D.39701,
	orr	r1, r1, r5, asl #8	@, D.39709, tmp305, tmp306,
	orr	r6, r1, r6, lsr #8	@, tmp320, D.39709, tmp302,
	and	ip, r0, #65280	@ tmp312, D.39702,
	mov	r2, r0, asl #24	@ tmp310, D.39702,
	orr	r2, r2, r0, lsr #24	@, tmp311, tmp310, D.39702,
	and	r0, r0, #16711680	@ tmp308, D.39702,
	orr	ip, r2, ip, asl #8	@, D.39717, tmp311, tmp312,
	ldmib	r3, {r2, r3}	@ phole ldm
	orr	r0, ip, r0, lsr #8	@, tmp314, D.39717, tmp308,
	cmp	r0, r3	@ tmp314, tmp318
	cmpeq	r6, r2	@, tmp320, tmp324
	bne	.L3485	@,
	movw	r5, #:lower16:g_event_report	@ tmp345,
	movt	r5, #:upper16:g_event_report	@ tmp345,
	ldr	r3, [r5, #0]	@ g_event_report.8150, g_event_report
	cmp	r3, #0	@ g_event_report.8150,
	beq	.L3499	@,
	movw	lr, #52840	@ tmp330,
	mov	r1, #112	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8150
.L3499:
	mov	r6, #0	@ tmp332,
	mov	r0, r4	@, pH264Ctx
	str	r6, [r4, #364]	@ tmp332, <variable>.StartMode
	bl	DecVDM	@
	cmp	r0, r6	@,
	bne	.L3513	@,
.L3485:
	mov	r0, #0	@ D.39650,
	b	.L3484	@
.L3469:
	cmp	r0, #256	@ nal_header,
	movweq	r5, #:lower16:g_event_report	@ tmp346,
	movteq	r5, #:upper16:g_event_report	@ tmp346,
	beq	.L3500	@,
	movw	r5, #:lower16:g_event_report	@ tmp346,
	movt	r5, #:upper16:g_event_report	@ tmp346,
	ldr	r3, [r5, #0]	@ g_event_report.8155, g_event_report
	cmp	r3, #0	@ g_event_report.8155,
	beq	.L3500	@,
	movw	r2, #52840	@ tmp336,
	mov	r1, #102	@,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8155
.L3500:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	ldr	r3, [r5, #0]	@ g_event_report.8157, g_event_report
	cmp	r3, #0	@ g_event_report.8157,
	beq	.L3485	@,
.L3507:
	movw	lr, #52840	@ tmp339,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8157
	mov	r0, #0	@ D.39650,
	b	.L3484	@
.L3470:
	movw	ip, #20683	@ tmp218,
	movw	r2, #20712	@ tmp220,
	strb	r1, [r4, ip]	@ D.39640, <variable>.CurrSlice.nal_unit_type
	mov	r0, r4	@, pH264Ctx
	ldr	r5, [r3, #76]	@ <variable>.nal_ref_idc, <variable>.nal_ref_idc
	str	r5, [r4, r2]	@ <variable>.nal_ref_idc, <variable>.CurrSlice.nal_ref_idc
	bl	SliceCheck	@
	subs	r5, r0, #0	@ ret,
	bne	.L3517	@,
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSlice	@
	cmp	r0, #0	@,
	beq	.L3485	@,
	movw	r6, #51348	@ tmp225,
	ldr	r1, [r4, r6]	@ temp.8140, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8140,
	beq	.L3486	@,
	movw	r3, #52840	@ tmp226,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r5, [r4, r6]	@ ret, <variable>.pUsrDatArray
.L3486:
	movw	r5, #49912	@ tmp229,
	ldr	r1, [r4, r5]	@ temp.8159, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8159,
	beq	.L3487	@,
	movw	r2, #52840	@ tmp230,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp232,
	str	r0, [r4, r5]	@ tmp232, <variable>.CurrPic.fs_image.p_usrdat
.L3487:
	movw	r5, #51352	@ tmp233,
	ldr	r1, [r4, r5]	@ temp.8161, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8161,
	beq	.L3488	@,
	movw	lr, #52840	@ tmp234,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp236,
	str	ip, [r4, r5]	@ tmp236, <variable>.pUsrDatArray
.L3488:
	movw	r5, #49916	@ tmp237,
	ldr	r1, [r4, r5]	@ temp.8163, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8163,
	beq	.L3489	@,
	movw	r3, #52840	@ tmp238,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp240,
	str	r1, [r4, r5]	@ tmp240, <variable>.CurrPic.fs_image.p_usrdat
.L3489:
	movw	r5, #51356	@ tmp241,
	ldr	r1, [r4, r5]	@ temp.8165, <variable>.pUsrDatArray
	cmp	r1, #0	@ temp.8165,
	beq	.L3490	@,
	movw	r2, #52840	@ tmp242,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp244,
	str	r0, [r4, r5]	@ tmp244, <variable>.pUsrDatArray
.L3490:
	mov	r5, #49920	@ tmp245,
	ldr	r1, [r4, r5]	@ temp.8167, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ temp.8167,
	beq	.L3491	@,
	movw	lr, #52840	@ tmp246,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	ip, #0	@ tmp248,
	str	ip, [r4, r5]	@ tmp248, <variable>.CurrPic.fs_image.p_usrdat
.L3491:
	movw	r5, #51360	@ tmp249,
	ldr	r1, [r4, r5]	@ D.39654, <variable>.pUsrDatArray
	cmp	r1, #0	@ D.39654,
	beq	.L3492	@,
	movw	r3, #52840	@ tmp250,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r1, #0	@ tmp252,
	str	r1, [r4, r5]	@ tmp252, <variable>.pUsrDatArray
.L3492:
	movw	r5, #49924	@ tmp253,
	ldr	r1, [r4, r5]	@ D.39657, <variable>.CurrPic.fs_image.p_usrdat
	cmp	r1, #0	@ D.39657,
	beq	.L3493	@,
	movw	r2, #52840	@ tmp254,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	mov	r0, #0	@ tmp256,
	str	r0, [r4, r5]	@ tmp256, <variable>.CurrPic.fs_image.p_usrdat
.L3493:
	movw	ip, #:lower16:g_event_report	@ tmp259,
	movt	ip, #:upper16:g_event_report	@ tmp259,
	movw	lr, #51344	@ tmp257,
	mov	r2, #0	@ tmp258,
	str	r2, [r4, lr]	@ tmp258, <variable>.TotalUsrDatNum
	ldr	r3, [ip, #0]	@ g_event_report.8125, g_event_report
	cmp	r3, r2	@ g_event_report.8125,
	bne	.L3508	@,
.L3509:
	mvn	r0, #0	@ D.39650,
	b	.L3484	@
.L3472:
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSPS	@
	mov	r6, r0	@ ret.8132,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8132,
	bne	.L3515	@,
	movw	lr, #52788	@ tmp277,
	mov	r0, r6	@ D.39650, ret.8132
	ldr	r1, [r4, lr]	@ <variable>.TotalSPS,
	add	ip, r1, #1	@ tmp280, <variable>.TotalSPS,
	str	ip, [r4, lr]	@ tmp280,
	b	.L3484	@
.L3471:
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecSEI	@
	mov	r5, r0	@ ret.8137,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r5, #0	@ ret.8137,
	beq	.L3485	@,
	movw	r0, #:lower16:g_event_report	@ tmp281,
	movt	r0, #:upper16:g_event_report	@ tmp281,
	ldr	r3, [r0, #0]	@ g_event_report.8138, g_event_report
	cmp	r3, #0	@ g_event_report.8138,
	bne	.L3507	@,
	b	.L3485	@
.L3473:
	mov	r0, r4	@, pH264Ctx
	bl	H264_DecPPS	@
	mov	r6, r0	@ ret.8127,
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	cmp	r6, #0	@ ret.8127,
	bne	.L3515	@,
	movw	r3, #52792	@ tmp267,
	mov	r0, r6	@ D.39650, ret.8127
	ldr	r2, [r4, r3]	@ <variable>.TotalPPS,
	add	r1, r2, #1	@ tmp270, <variable>.TotalPPS,
	str	r1, [r4, r3]	@ tmp270,
	b	.L3484	@
.L3513:
	ldr	r3, [r5, #0]	@ g_event_report.8153, g_event_report
	cmp	r3, r6	@ g_event_report.8153,
	beq	.L3509	@,
	mov	r2, r6	@, tmp332
.L3508:
	movw	ip, #52840	@ tmp334,
	mov	r1, #113	@,
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8153
	mvn	r0, #0	@ D.39650,
	b	.L3484	@
.L3516:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	b	.L3498	@
.L3515:
	movw	r5, #:lower16:g_event_report	@ tmp271,
	movt	r5, #:upper16:g_event_report	@ tmp271,
	ldr	r3, [r5, #0]	@ g_event_report.8133, g_event_report
	cmp	r3, #0	@ g_event_report.8133,
	beq	.L3509	@,
	add	r2, sp, #8	@ tmp274,,
	movw	r7, #52840	@ tmp273,
	mvn	r6, #0	@ tmp272,
	mov	r1, #100	@,
	str	r6, [r2, #-4]!	@ tmp272,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	blx	r3	@ g_event_report.8133
	ldr	r3, [r5, #0]	@ g_event_report.8135, g_event_report
	cmp	r3, #0	@ g_event_report.8135,
	beq	.L3509	@,
	ldr	r0, [r4, r7]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.8135
	mov	r0, r6	@ D.39650, tmp272
	b	.L3484	@
.L3517:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrSlice	@
	movw	r1, #:lower16:g_event_report	@ tmp223,
	movt	r1, #:upper16:g_event_report	@ tmp223,
	ldr	r3, [r1, #0]	@ g_event_report.799, g_event_report
	cmp	r3, #0	@ g_event_report.799,
	beq	.L3509	@,
	movw	lr, #52840	@ tmp224,
	mov	r1, #113	@,
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	mov	r2, #0	@,
	blx	r3	@ g_event_report.799
	mvn	r0, #0	@ D.39650,
	b	.L3484	@
.L3519:
	.align	2
.L3518:
	.word	.LANCHOR2+432
	.fnend
	.size	H264_DecOneNal, .-H264_DecOneNal
	.align	2
	.global	H264DEC_DecodePacket
	.type	H264DEC_DecodePacket, %function
H264DEC_DecodePacket:
	.fnstart
.LFB1727:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pPacket,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	r4, r0	@ pH264Ctx, pH264Ctx
	.pad #28
	sub	sp, sp, #28	@,,
	beq	.L3521	@,
	ldr	r3, [r0, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	mov	r5, #0	@ tmp158,
	str	r5, [sp, #12]	@ tmp158, NewNum
	movw	ip, #52828	@ tmp161,
	str	r5, [sp, #16]	@ tmp158, ReadNum
	movw	r6, #51328	@ tmp172,
	str	r5, [sp, #20]	@ tmp158, RefNum
	ldr	r7, [r3, #8]	@ <variable>.s32DecMode, <variable>.s32DecMode
	ldr	r2, [r0, r6]	@ <variable>.HaveNalNotDecoded, <variable>.HaveNalNotDecoded
	str	r7, [r0, ip]	@ <variable>.s32DecMode, <variable>.advanced_cfg
	cmp	r2, #1	@ <variable>.HaveNalNotDecoded,
	ldr	ip, [r3, #0]	@ <variable>.s32RefErrThr, <variable>.s32RefErrThr
	movw	r2, #52832	@ tmp164,
	str	ip, [r0, r2]	@ <variable>.s32RefErrThr, <variable>.ref_error_thr
	movw	ip, #52780	@ tmp170,
	ldr	r2, [r3, #4]	@ <variable>.s32OutErrThr, <variable>.s32OutErrThr
	movw	r3, #52836	@ tmp167,
	str	r5, [r0, ip]	@ tmp158, <variable>.SeErrFlg
	str	r2, [r0, r3]	@ <variable>.s32OutErrThr, <variable>.out_error_thr
	beq	.L3522	@,
	bl	ReceivePacket	@
	str	r5, [r4, r6]	@ tmp158, <variable>.HaveNalNotDecoded
	cmp	r0, r5	@,
	ldreq	r0, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	beq	.L3523	@,
.L3524:
	mov	r0, #0	@ D.40119,
.L3534:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L3522:
	ldr	r0, [r0, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r0, #0	@ <variable>.pCurrNal,
	strne	r5, [r4, r6]	@ tmp158, <variable>.HaveNalNotDecoded
	beq	.L3561	@,
.L3523:
	mov	r6, #0	@ tmp178,
	add	r5, r4, #13504	@ D.40139, pH264Ctx,
	str	r6, [r0, #64]	@ tmp178, <variable>.nal_bitoffset
	add	r5, r5, #24	@ D.40139, D.40139,
	ldr	lr, [r4, #368]	@ temp.8204, <variable>.pCurrNal
	mov	r0, r5	@, D.40139
	ldr	r2, [lr, #12]	@, <variable>.bitstream_length
	ldr	r1, [lr, #8]	@, <variable>.streamBuffer
	bl	BsInit	@
	mov	r1, #32	@,
	mov	r0, r5	@, D.40139
	bl	BsGet	@
	ldr	r3, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	uxtb	ip, r0	@ nal_header,
	and	r2, ip, #31	@ nal_unit_type, nal_header,
	strb	r2, [r3, #2]	@ nal_unit_type, <variable>.nal_unit_type
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	cmp	r2, #1	@ nal_unit_type,
	cmpne	r2, #5	@, nal_unit_type,
	ubfx	r0, ip, #5, #2	@ tmp187, nal_header,,
	str	r0, [r1, #76]	@ tmp187, <variable>.nal_ref_idc
	bne	.L3527	@,
	mov	r0, r4	@, pH264Ctx
	add	r1, sp, #8	@,,
	add	r2, sp, #4	@,,
	bl	InquireSliceProperty	@
	cmp	r0, r6	@,
	bne	.L3528	@,
	ldr	r1, [sp, #8]	@ IsNewPic, IsNewPic
	movw	ip, #52856	@ tmp197,
	ldr	r0, [r4, ip]	@ <variable>.PicCounter, <variable>.PicCounter
	cmp	r1, #1	@ IsNewPic,
	addeq	r0, r0, #1	@, tmp203, <variable>.PicCounter
	str	r0, [r4, ip]	@ tmp203, <variable>.PicCounter
	beq	.L3562	@,
.L3529:
	ldr	r6, [sp, #4]	@ IsSizeChanged, IsSizeChanged
	cmp	r6, #1	@ IsSizeChanged,
	bne	.L3527	@,
	ldr	r2, [r4, #0]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	r1, [r2, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3563	@,
.L3535:
	mov	r0, r4	@, pH264Ctx
	movw	r6, #52840	@ tmp245,
	bl	FlushDPB	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	FSP_GetFspType	@
	cmp	r0, #0	@,
	bne	.L3527	@,
	add	r1, sp, #20	@,,
	add	r3, sp, #12	@,,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	add	r2, sp, #16	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r4, #0]	@ temp.8216, <variable>.pstExtraData
	ldr	r1, [r3, #692]	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L3564	@,
.L3542:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3527	@,
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	ldr	lr, [sp, #12]	@ NewNum, NewNum
	add	r2, lr, ip	@ tmp260, NewNum, ReadNum
	cmp	r2, #0	@ tmp260,
	ble	.L3527	@,
	movw	r0, #52892	@ tmp265,
	movw	r1, #51328	@ tmp263,
	str	r3, [r4, r0]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.DSD_NeedClearQue
	mvn	r0, #1	@ D.40119,
	str	r3, [r4, r1]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.HaveNalNotDecoded
	b	.L3534	@
.L3527:
	mov	r0, r4	@, pH264Ctx
	mov	r6, #0	@ tmp277,
	bl	FindTrailZeros	@
	ldr	r1, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r0, r5	@, D.40139
	str	r6, [r1, #64]	@ tmp277, <variable>.nal_bitoffset
	ldr	r3, [r4, #368]	@ temp.8223, <variable>.pCurrNal
	ldr	r1, [r3, #8]	@, <variable>.streamBuffer
	ldr	r2, [r3, #12]	@, <variable>.bitstream_length
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, r6	@, tmp277
	bl	H264_DecOneNal	@
	cmp	r0, r6	@,
	beq	.L3524	@,
.L3521:
	mvn	r0, #0	@ D.40119,
	b	.L3534	@
.L3562:
	movw	r1, #20681	@ tmp205,
	movw	r0, #52860	@ tmp207,
	ldrb	ip, [r4, r1]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	movw	r3, #52764	@ tmp216,
	ldr	lr, [r4, r0]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldr	r2, [r4, r3]	@ <variable>.SliceParaNum, <variable>.SliceParaNum
	cmp	ip, #1	@ <variable>.CurrSlice.field_pic_flag,
	addeq	lr, lr, #1	@ tmp210, <variable>.NewPicCounter,
	addne	lr, lr, #2	@ tmp214, <variable>.NewPicCounter,
	cmp	r2, #0	@ <variable>.SliceParaNum,
	str	lr, [r4, r0]	@ tmp214, <variable>.NewPicCounter
	beq	.L3529	@,
	ldr	lr, [r4, #368]	@ <variable>.pCurrNal, <variable>.pCurrNal
	mov	r3, #0	@ tmp219,
	mov	r2, #12	@,
	mov	r0, r5	@, D.40139
	ldr	r1, .L3565	@,
	str	r3, [lr, #64]	@ tmp219, <variable>.nal_bitoffset
	bl	BsInit	@
	mov	r0, r4	@, pH264Ctx
	mov	r1, #1	@,
	bl	H264_DecOneNal	@
	movw	r3, #52860	@ tmp224,
	movw	ip, #20681	@ tmp222,
	ldr	r2, [r4, r3]	@ <variable>.NewPicCounter, <variable>.NewPicCounter
	ldrb	r0, [r4, ip]	@ zero_extendqisi2	@ <variable>.CurrSlice.field_pic_flag, <variable>.CurrSlice.field_pic_flag
	cmp	r0, #1	@ <variable>.CurrSlice.field_pic_flag,
	subeq	r2, r2, #1	@ tmp227, <variable>.NewPicCounter,
	subne	r2, r2, #2	@ tmp231, <variable>.NewPicCounter,
	str	r2, [r4, r3]	@ tmp231,
	b	.L3560	@
.L3563:
	movw	r3, #26628	@ tmp237,
	ldr	lr, [r4, r3]	@ D.40611, <variable>.DPB.used_size
	cmp	lr, #0	@ D.40611,
	beq	.L3535	@,
	mov	r0, #26624	@ tmp238,
	ldr	r2, [r4, r0]	@ temp.8228, <variable>.DPB.size
	cmp	lr, r2	@ D.40611, temp.8228
	bls	.L3536	@,
	movw	ip, #26432	@ tmp240,
	cmp	r2, #0	@ temp.8228,
	ldr	r0, [r4, ip]	@ prephitmp.8185, <variable>.DPB.fs
	str	r2, [r4, r3]	@ temp.8228, <variable>.DPB.used_size
	movne	lr, r2	@ D.40611, temp.8228
	ldr	r1, [r0, #524]	@ s32MaxPoc.8230, <variable>.poc
	beq	.L3537	@,
.L3538:
	tst	lr, #1	@ D.40611,
	add	r2, r4, #26368	@ ivtmp.8198, pH264Ctx,
	mov	r0, #0	@ u32Pos.8229,
	add	r3, r2, #68	@ ivtmp.8198, ivtmp.8198,
	mov	r6, r0	@ u32Pos, u32Pos.8229
	bne	.L3545	@,
	mov	r0, #1	@ u32Pos.8229,
	cmp	r0, lr	@ u32Pos.8229, D.40611
	bcs	.L3556	@,
	ldr	ip, [r3, #0]	@ D.40606, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8230
	ble	.L3549	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3549	@,
	mov	r6, r0	@ u32Pos, u32Pos.8229
.L3558:
	add	r3, r3, #4	@ ivtmp.8198, ivtmp.8198,
	mov	r1, r2	@ s32MaxPoc.8230, s32MaxPoc
.L3545:
	add	r0, r0, #1	@ tmp294, u32Pos.8229,
	cmp	r0, lr	@ tmp294, D.40611
	bcs	.L3556	@,
	ldr	ip, [r3, #0]	@ D.40606, <variable>.DPB.fs
	ldr	r2, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r2, r1	@ s32MaxPoc, s32MaxPoc.8230
	ble	.L3539	@,
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	movne	r6, r0	@ u32Pos, tmp294
	beq	.L3539	@,
	ldr	ip, [r3, #4]	@ D.40606, <variable>.DPB.fs
	add	r0, r0, #1	@ u32Pos.8229, tmp294,
	add	r3, r3, #4	@ tmp293, ivtmp.8198,
	ldr	r1, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r1, r2	@ s32MaxPoc, s32MaxPoc
	ble	.L3552	@,
.L3555:
	ldrb	ip, [ip, #4]	@ zero_extendqisi2	@ <variable>.is_in_dpb, <variable>.is_in_dpb
	cmp	ip, #0	@ <variable>.is_in_dpb,
	beq	.L3552	@,
	mov	r6, r0	@ u32Pos, u32Pos.8229
	add	r3, r3, #4	@ ivtmp.8198, tmp293,
	b	.L3545	@
.L3561:
	str	r0, [r4, r6]	@ <variable>.pCurrNal, <variable>.HaveNalNotDecoded
	b	.L3534	@
.L3564:
	movw	ip, #52876	@ tmp253,
	ldr	r2, [r3, #720]	@ <variable>.s32DSDThrWidth, <variable>.s32DSDThrWidth
	ldr	r0, [r4, ip]	@ <variable>.DSD_OldWidth, <variable>.DSD_OldWidth
	cmp	r0, r2	@ <variable>.DSD_OldWidth, <variable>.s32DSDThrWidth
	bgt	.L3543	@,
	movw	r1, #52880	@ tmp256,
	ldr	r0, [r3, #724]	@ <variable>.s32DSDThrHeight, <variable>.s32DSDThrHeight
	ldr	lr, [r4, r1]	@ <variable>.DSD_OldHeight, <variable>.DSD_OldHeight
	cmp	lr, r0	@ <variable>.DSD_OldHeight, <variable>.s32DSDThrHeight
	ble	.L3542	@,
.L3543:
	ldr	r3, [r3, #608]	@ <variable>.stChanOption.s32ReRangeEn, <variable>.stChanOption.s32ReRangeEn
	cmp	r3, #1	@ <variable>.stChanOption.s32ReRangeEn,
	bne	.L3527	@,
	ldr	r2, [sp, #12]	@ NewNum, NewNum
	cmp	r2, #0	@ NewNum,
	bgt	.L3544	@,
	ldr	ip, [sp, #16]	@ ReadNum, ReadNum
	cmp	ip, #4	@ ReadNum,
	ble	.L3527	@,
.L3544:
	movw	r1, #52892	@ tmp270,
	mov	lr, #0	@ tmp271,
	str	lr, [r4, r1]	@ tmp271,
.L3560:
	movw	r3, #51328	@ tmp272,
	mov	r0, #1	@ tmp273,
	str	r0, [r4, r3]	@ tmp273, <variable>.HaveNalNotDecoded
	mvn	r0, #1	@ D.40119,
	b	.L3534	@
.L3539:
	ldr	ip, [r3, #4]	@ D.40606, <variable>.DPB.fs
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8230
	add	r0, r0, #1	@ u32Pos.8229, tmp294,
	add	r3, r3, #4	@ tmp293, ivtmp.8198,
	ldr	r1, [ip, #524]	@ s32MaxPoc, <variable>.poc
	cmp	r1, r2	@ s32MaxPoc, s32MaxPoc
	bgt	.L3555	@,
.L3552:
	mov	r1, r2	@ s32MaxPoc, s32MaxPoc
	add	r3, r3, #4	@ ivtmp.8198, tmp293,
	b	.L3545	@
.L3556:
	add	r3, r6, #6592	@ tmp242, u32Pos,
	add	lr, r3, #16	@ tmp242, tmp242,
	ldr	r0, [r4, lr, asl #2]	@ prephitmp.8185, <variable>.DPB.fs
.L3537:
	mov	r6, #1	@ tmp244,
	str	r6, [r0, #384]	@ tmp244, <variable>.fs_image.u32IsLastFrame
	b	.L3535	@
.L3549:
	mov	r2, r1	@ s32MaxPoc, s32MaxPoc.8230
	b	.L3558	@
.L3536:
	movw	r0, #26432	@ tmp286,
	ldr	r6, [r4, r0]	@ <variable>.DPB.fs, <variable>.DPB.fs
	ldr	r1, [r6, #524]	@ s32MaxPoc.8230, <variable>.poc
	b	.L3538	@
.L3528:
	mov	r0, r4	@, pH264Ctx
	bl	ClearCurrNal	@
	movw	r2, #:lower16:g_event_report	@ tmp274,
	movt	r2, #:upper16:g_event_report	@ tmp274,
	ldr	r3, [r2, #0]	@ g_event_report.832, g_event_report
	cmp	r3, #0	@ g_event_report.832,
	beq	.L3521	@,
	movw	ip, #52840	@ tmp275,
	mov	r2, r6	@, tmp178
	ldr	r0, [r4, ip]	@, <variable>.ChanID
	mov	r1, #113	@,
	blx	r3	@ g_event_report.832
	mvn	r0, #0	@ D.40119,
	b	.L3534	@
.L3566:
	.align	2
.L3565:
	.word	.LANCHOR2+432
	.fnend
	.size	H264DEC_DecodePacket, .-H264DEC_DecodePacket
	.global	g_NalTypeEOPIC
	.global	g_AspecRatioIdc
	.global	g_ZZ_SCAN
	.global	g_ZZ_SCAN8
	.global	quant_intra_default
	.global	quant_inter_default
	.global	quant8_intra_default
	.global	quant8_inter_default
	.global	quant_org
	.global	quant8_org
	.global	TmpBuf
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	SarTable.38493, %object
	.size	SarTable.38493, 136
SarTable.38493:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.word	4
	.word	3
	.word	3
	.word	2
	.word	2
	.word	1
	.type	g_ZZ_SCAN, %object
	.size	g_ZZ_SCAN, 16
g_ZZ_SCAN:
	.byte	0
	.byte	1
	.byte	4
	.byte	8
	.byte	5
	.byte	2
	.byte	3
	.byte	6
	.byte	9
	.byte	12
	.byte	13
	.byte	10
	.byte	7
	.byte	11
	.byte	14
	.byte	15
	.type	g_ZZ_SCAN8, %object
	.size	g_ZZ_SCAN8, 64
g_ZZ_SCAN8:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	quant_org, %object
	.size	quant_org, 16
quant_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant8_org, %object
	.size	quant8_org, 64
quant8_org:
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.word	269488144
	.type	quant_inter_default, %object
	.size	quant_inter_default, 16
quant_inter_default:
	.word	403967498
	.word	454562830
	.word	505092116
	.word	572398360
	.type	quant_intra_default, %object
	.size	quant_intra_default, 16
quant_intra_default:
	.word	471076102
	.word	538711053
	.word	622861332
	.word	707076124
	.type	quant8_inter_default, %object
	.size	quant8_inter_default, 256
quant8_inter_default:
	.word	286199049
	.word	404100371
	.word	319884557
	.word	421008917
	.word	353571087
	.word	454629398
	.word	370479889
	.word	471537944
	.word	404100371
	.word	505158425
	.word	421008917
	.word	538844187
	.word	454629398
	.word	555752988
	.word	471537944
	.word	589373470
	.space	192
	.type	quant8_intra_default, %object
	.size	quant8_intra_default, 64
quant8_intra_default:
	.word	269289990
	.word	454629138
	.word	303041290
	.word	488315159
	.word	387059725
	.word	522001177
	.word	420942352
	.word	555687195
	.word	454629138
	.word	606150429
	.word	488315159
	.word	639901983
	.word	522001177
	.word	673588257
	.word	555687195
	.word	707274276
	.type	g_NalTypeEOPIC, %object
	.size	g_NalTypeEOPIC, 12
g_NalTypeEOPIC:
	.byte	0
	.byte	0
	.byte	1
	.byte	30
	.byte	72
	.byte	83
	.byte	80
	.byte	73
	.byte	67
	.byte	69
	.byte	78
	.byte	68
	.type	g_AspecRatioIdc, %object
	.size	g_AspecRatioIdc, 112
g_AspecRatioIdc:
	.word	1
	.word	1
	.word	1
	.word	1
	.word	12
	.word	11
	.word	10
	.word	11
	.word	16
	.word	11
	.word	40
	.word	33
	.word	24
	.word	11
	.word	20
	.word	11
	.word	32
	.word	11
	.word	80
	.word	33
	.word	18
	.word	11
	.word	15
	.word	11
	.word	64
	.word	33
	.word	160
	.word	99
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"SEI: cpb_removal_delay\000"
	.space	1
.LC1:
	.ascii	"SEI: dpb_output_delay\000"
	.space	2
.LC2:
	.ascii	"pic_struct\000"
	.space	1
.LC3:
	.ascii	"   : delta_sl   \000"
	.space	3
.LC4:
	.ascii	"SEI: frame_packing_arrangement_id\000"
	.space	2
.LC5:
	.ascii	"SEI: frame_packing_arrangement_cancel_flag\000"
	.space	1
.LC6:
	.ascii	"SEI: frame_packing_arrangement_type\000"
.LC7:
	.ascii	"SEI: quincunx_sampling_flag\000"
.LC8:
	.ascii	"SEI: content_interpretation_type\000"
	.space	3
.LC9:
	.ascii	"SEI: spatial_flipping_flag\000"
	.space	1
.LC10:
	.ascii	"SEI: frame0_flipped_flag\000"
	.space	3
.LC11:
	.ascii	"SEI: field_views_flag\000"
	.space	2
.LC12:
	.ascii	"SEI: current_frame_is_frame0_flag\000"
	.space	2
.LC13:
	.ascii	"SEI: frame0_self_contained_flag\000"
.LC14:
	.ascii	"SEI: frame1_self_contained_flag\000"
.LC15:
	.ascii	"SEI: frame0_grid_position_x\000"
.LC16:
	.ascii	"SEI: frame0_grid_position_y\000"
.LC17:
	.ascii	"SEI: frame1_grid_position_x\000"
.LC18:
	.ascii	"SEI: frame1_grid_position_y\000"
.LC19:
	.ascii	"SEI: frame_packing_arrangement_reserved_byte\000"
	.space	3
.LC20:
	.ascii	"SEI: frame_packing_arrangement_repetition_period\000"
	.space	3
.LC21:
	.ascii	"SEI: frame_packing_arrangement_extension_flag\000"
	.space	2
.LC22:
	.ascii	"SEI: itu_t_t35_country_code\000"
.LC23:
	.ascii	"SEI: itu_t_t35_country_code_extension_byte\000"
	.space	1
.LC24:
	.ascii	"SEI: itu_t_t35_provider_code\000"
	.space	3
.LC25:
	.ascii	"VUI: aspect_ratio_info_present_flag\000"
.LC26:
	.ascii	"VUI: aspect_ratio_idc\000"
	.space	2
.LC27:
	.ascii	"VUI: sar_width\000"
	.space	1
.LC28:
	.ascii	"VUI: sar_height\000"
.LC29:
	.ascii	"VUI: overscan_info_present_flag\000"
.LC30:
	.ascii	"VUI: overscan_appropriate_flag\000"
	.space	1
.LC31:
	.ascii	"VUI: video_signal_type_present_flag\000"
.LC32:
	.ascii	"VUI: video_format\000"
	.space	2
.LC33:
	.ascii	"VUI: video_full_range_flag\000"
	.space	1
.LC34:
	.ascii	"VUI: color_description_present_flag\000"
.LC35:
	.ascii	"VUI: colour_primaries\000"
	.space	2
.LC36:
	.ascii	"VUI: transfer_characteristics\000"
	.space	2
.LC37:
	.ascii	"VUI: matrix_coefficients\000"
	.space	3
.LC38:
	.ascii	"VUI: chroma_loc_info_present_flag\000"
	.space	2
.LC39:
	.ascii	"VUI: chroma_sample_loc_type_top_field\000"
	.space	2
.LC40:
	.ascii	"VUI: chroma_sample_loc_type_bottom_field\000"
	.space	3
.LC41:
	.ascii	"VUI: timing_info_present_flag\000"
	.space	2
.LC42:
	.ascii	"VUI: num_units_in_tick\000"
	.space	1
.LC43:
	.ascii	"VUI: time_scale\000"
.LC44:
	.ascii	"VUI: fixed_frame_rate_flag\000"
	.space	1
.LC45:
	.ascii	"VUI: nal_hrd_parameters_present_flag\000"
	.space	3
.LC46:
	.ascii	"VUI: cpb_cnt_minus1\000"
.LC47:
	.ascii	"VUI: bit_rate_scale\000"
.LC48:
	.ascii	"VUI: cpb_size_scale\000"
.LC49:
	.ascii	"VUI: bit_rate_value_minus1\000"
	.space	1
.LC50:
	.ascii	"VUI: cpb_size_value_minus1\000"
	.space	1
.LC51:
	.ascii	"VUI: cbr_flag\000"
	.space	2
.LC52:
	.ascii	"VUI: initial_cpb_removal_delay_length_minus1\000"
	.space	3
.LC53:
	.ascii	"VUI: cpb_removal_delay_length_minus1\000"
	.space	3
.LC54:
	.ascii	"VUI: dpb_output_delay_length_minus1\000"
.LC55:
	.ascii	"VUI: time_offset_length\000"
.LC56:
	.ascii	"VUI: vcl_hrd_parameters_present_flag\000"
	.space	3
.LC57:
	.ascii	"VUI: low_delay_hrd_flag\000"
.LC58:
	.ascii	"VUI: pic_struct_present_flag\000"
	.space	3
.LC59:
	.ascii	"VUI: bitstream_restriction_flag\000"
.LC60:
	.ascii	"VUI: motion_vectors_over_pic_boundaries_flag\000"
	.space	3
.LC61:
	.ascii	"VUI: max_bytes_per_pic_denom\000"
	.space	3
.LC62:
	.ascii	"VUI: max_bits_per_mb_denom\000"
	.space	1
.LC63:
	.ascii	"VUI: log2_max_mv_length_horizontal\000"
	.space	1
.LC64:
	.ascii	"VUI: log2_max_mv_length_vertical\000"
	.space	3
.LC65:
	.ascii	"VUI: num_reorder_frames\000"
.LC66:
	.ascii	"VUI: max_dec_frame_buffering\000"
	.space	3
.LC67:
	.ascii	"SPS: chroma_format_idc\000"
	.space	1
.LC68:
	.ascii	"SPS: bit_depth_luma_minus8\000"
	.space	1
.LC69:
	.ascii	"SPS: bit_depth_chroma_minus8\000"
	.space	3
.LC70:
	.ascii	"SPS: qpprime_y_zero_trans_bypass_flag\000"
	.space	2
.LC71:
	.ascii	"SPS: seq_scaling_matrix_present_flag\000"
	.space	3
.LC72:
	.ascii	"SPS: seq_scaling_list_present_flag\000"
	.space	1
.LC73:
	.ascii	"SPS: log2_max_frame_num_minus4\000"
	.space	1
.LC74:
	.ascii	"SPS: pic_order_cnt_type\000"
.LC75:
	.ascii	"SPS: log2_max_pic_order_cnt_lsb_minus4\000"
	.space	1
.LC76:
	.ascii	"SPS: delta_pic_order_always_zero_flag\000"
	.space	2
.LC77:
	.ascii	"SPS: offset_for_non_ref_pic\000"
.LC78:
	.ascii	"SPS: offset_for_top_to_bottom_field\000"
.LC79:
	.ascii	"SPS: num_ref_frames_in_pic_order_cnt_cycle\000"
	.space	1
.LC80:
	.ascii	"SPS: offset_for_ref_frame[i]\000"
	.space	3
.LC81:
	.ascii	"SPS: num_ref_frames\000"
.LC82:
	.ascii	"SPS: gaps_in_frame_num_value_allowed_flag\000"
	.space	2
.LC83:
	.ascii	"SPS: pic_width_in_mbs_minus1\000"
	.space	3
.LC84:
	.ascii	"SPS: pic_height_in_map_units_minus1\000"
.LC85:
	.ascii	"SPS: frame_mbs_only_flag\000"
	.space	3
.LC86:
	.ascii	"SPS: mb_adaptive_frame_field_flag\000"
	.space	2
.LC87:
	.ascii	"SPS: direct_8x8_inference_flag\000"
	.space	1
.LC88:
	.ascii	"SPS: frame_cropping_flag\000"
	.space	3
.LC89:
	.ascii	"SPS: frame_cropping_rect_left_offset\000"
	.space	3
.LC90:
	.ascii	"SPS: frame_cropping_rect_right_offset\000"
	.space	2
.LC91:
	.ascii	"SPS: frame_cropping_rect_top_offset\000"
.LC92:
	.ascii	"SPS: frame_cropping_rect_bottom_offset\000"
	.space	1
.LC93:
	.ascii	"SPS: vui_parameters_present_flag\000"
	.space	3
.LC94:
	.ascii	"SPS: profile_idc\000"
	.space	3
.LC95:
	.ascii	"SPS: constrained_set0_flag\000"
	.space	1
.LC96:
	.ascii	"SPS: constrained_set1_flag\000"
	.space	1
.LC97:
	.ascii	"SPS: constrained_set2_flag\000"
	.space	1
.LC98:
	.ascii	"SPS: constrained_set3_flag\000"
	.space	1
.LC99:
	.ascii	"SPS: reserved_zero_4bits\000"
	.space	3
.LC100:
	.ascii	"SPS: level_idc\000"
	.space	1
.LC101:
	.ascii	"SPS: seq_parameter_set_id\000"
	.space	2
.LC102:
	.ascii	"PPS: entropy_coding_mode_flag\000"
	.space	2
.LC103:
	.ascii	"PPS: pic_order_present_flag\000"
.LC104:
	.ascii	"PPS: num_slice_groups_minus1\000"
	.space	3
.LC105:
	.ascii	"PPS: num_ref_idx_l0_active_minus1\000"
	.space	2
.LC106:
	.ascii	"PPS: num_ref_idx_l1_active_minus1\000"
	.space	2
.LC107:
	.ascii	"PPS: weighted prediction flag\000"
	.space	2
.LC108:
	.ascii	"PPS: weighted_bipred_idc\000"
	.space	3
.LC109:
	.ascii	"PPS: pic_init_qp_minus26\000"
	.space	3
.LC110:
	.ascii	"PPS: pic_init_qs_minus26\000"
	.space	3
.LC111:
	.ascii	"PPS: chroma_qp_index_offset\000"
.LC112:
	.ascii	"PPS: deblocking_filter_control_present_flag\000"
.LC113:
	.ascii	"PPS: constrained_intra_pred_flag\000"
	.space	3
.LC114:
	.ascii	"PPS: redundant_pic_cnt_present_flag\000"
.LC115:
	.ascii	"PPS: transform_8x8_mode_flag\000"
	.space	3
.LC116:
	.ascii	"PPS: pic_scaling_matrix_present_flag\000"
	.space	3
.LC117:
	.ascii	"PPS: pic_scaling_list_present_flag\000"
	.space	1
.LC118:
	.ascii	"PPS: second_chroma_qp_index_offset\000"
	.space	1
.LC119:
	.ascii	"PPS: pic_parameter_set_id\000"
	.space	2
.LC120:
	.ascii	"PPS: seq_parameter_set_id\000"
	.space	2
.LC121:
	.ascii	"SH: pic_parameter_set_id\000"
	.space	3
.LC122:
	.ascii	"SH: frame_num\000"
	.space	2
.LC123:
	.ascii	"SH: field_pic_flag\000"
	.space	1
.LC124:
	.ascii	"SH: bottom_field_flag\000"
	.space	2
.LC125:
	.ascii	"SH: idr_pic_id\000"
	.space	1
.LC126:
	.ascii	"SH: pic_order_cnt_lsb\000"
	.space	2
.LC127:
	.ascii	"SH: delta_pic_order_cnt_bottom\000"
	.space	1
.LC128:
	.ascii	"SH: delta_pic_order_cnt[0]\000"
	.space	1
.LC129:
	.ascii	"SH: delta_pic_order_cnt[1]\000"
	.space	1
.LC130:
	.ascii	"SH: redundant_pic_cnt\000"
	.space	2
.LC131:
	.ascii	"SH: memory_management_control_operation\000"
.LC132:
	.ascii	"SH: difference_of_pic_nums_minus1\000"
	.space	2
.LC133:
	.ascii	"SH: long_term_pic_num\000"
	.space	2
.LC134:
	.ascii	"SH: long_term_frame_idx\000"
.LC135:
	.ascii	"SH: max_long_term_frame_idx_plus1\000"
	.space	2
.LC136:
	.ascii	"SH: no_output_of_prior_pics_flag\000"
	.space	3
.LC137:
	.ascii	"SH: long_term_reference_flag\000"
	.space	3
.LC138:
	.ascii	"SH: adaptive_ref_pic_marking_mode_flag\000"
	.space	1
.LC139:
	.ascii	"SH: luma_log2_weight_denom\000"
	.space	1
.LC140:
	.ascii	"SH: chroma_log2_weight_denom\000"
	.space	3
.LC141:
	.ascii	"SH: luma_weight_flag_l0\000"
.LC142:
	.ascii	"SH: luma_weight_l0\000"
	.space	1
.LC143:
	.ascii	"SH: luma_offset_l0\000"
	.space	1
.LC144:
	.ascii	"SH: chroma_weight_flag_l0\000"
	.space	2
.LC145:
	.ascii	"SH: chroma_weight_l0\000"
	.space	3
.LC146:
	.ascii	"SH: chroma_offset_l0\000"
	.space	3
.LC147:
	.ascii	"SH: luma_weight_flag_l1\000"
.LC148:
	.ascii	"SH: luma_weight_l1\000"
	.space	1
.LC149:
	.ascii	"SH: luma_offset_l1\000"
	.space	1
.LC150:
	.ascii	"SH: chroma_weight_flag_l1\000"
	.space	2
.LC151:
	.ascii	"SH: chroma_weight_l1\000"
	.space	3
.LC152:
	.ascii	"SH: chroma_offset_l1\000"
	.space	3
.LC153:
	.ascii	"SH: ref_pic_list_reordering_flag_l0\000"
.LC154:
	.ascii	"SH: reordering_of_pic_nums_idc_l0\000"
	.space	2
.LC155:
	.ascii	"SH: abs_diff_pic_num_minus1_l0\000"
	.space	1
.LC156:
	.ascii	"SH: long_term_pic_idx_l0\000"
	.space	3
.LC157:
	.ascii	"SH: ref_pic_list_reordering_flag_l1\000"
.LC158:
	.ascii	"SH: reordering_of_pic_nums_idc_l1\000"
	.space	2
.LC159:
	.ascii	"SH: abs_diff_pic_num_minus1_l1\000"
	.space	1
.LC160:
	.ascii	"SH: long_term_pic_idx_l1\000"
	.space	3
.LC161:
	.ascii	"SH: direct_spatial_mv_pred_flag\000"
.LC162:
	.ascii	"SH: num_ref_idx_override_flag\000"
	.space	2
.LC163:
	.ascii	"SH: num_ref_idx_l0_active_minus1\000"
	.space	3
.LC164:
	.ascii	"SH: num_ref_idx_l1_active_minus1\000"
	.space	3
.LC165:
	.ascii	"SH: cabac_init_idc\000"
	.space	1
.LC166:
	.ascii	"SH: slice_qp_delta\000"
	.space	1
.LC167:
	.ascii	"SH: disable_deblocking_filter_idc\000"
	.space	2
.LC168:
	.ascii	"SH: slice_alpha_c0_offset_div2\000"
	.space	1
.LC169:
	.ascii	"SH: slice_beta_offset_div2\000"
	.space	1
.LC170:
	.ascii	"SH: first_mb_in_slice\000"
	.space	2
.LC171:
	.ascii	"SH: slice_type\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	TmpBuf, %object
	.size	TmpBuf, 68
TmpBuf:
	.space	68
	.type	sps_tmp.38918, %object
	.size	sps_tmp.38918, 4000
sps_tmp.38918:
	.space	4000
	.type	pps_tmp.37877, %object
	.size	pps_tmp.37877, 2208
pps_tmp.37877:
	.space	2208
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
